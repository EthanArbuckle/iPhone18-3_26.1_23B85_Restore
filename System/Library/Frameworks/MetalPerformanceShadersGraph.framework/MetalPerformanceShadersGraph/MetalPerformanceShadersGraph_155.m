BOOL mlir::mps::PoolMaxGradientOp::verifyInvariantsImpl(mlir::mps::PoolMaxGradientOp *this)
{
  v68 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = (*this + 16 * ((*(*this + 44) >> 23) & 1));
  v4 = v3[16];
  if (v4)
  {
    v5 = v3[8];
    v6 = v3[9];
    v8 = v3[10];
    v7 = v3[11];
    v10 = v3[12];
    v9 = v3[13];
    v11 = v3[14];
    v12 = v3[15];
    v59[0] = v2;
    if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v4, "window_sizes", 0xC, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v59) & 1) == 0)
    {
      return 0;
    }

    v59[0] = *this;
    if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v12, "strides", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v59) & 1) == 0)
    {
      return 0;
    }

    v59[0] = *this;
    if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v6, "dilation_rates", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v59) & 1) == 0)
    {
      return 0;
    }

    v59[0] = *this;
    if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(v11, "padding_style", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v59) & 1) == 0)
    {
      return 0;
    }

    v59[0] = *this;
    if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps35(v8, "explicit_padding", 0x10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps35(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v59) & 1) == 0)
    {
      return 0;
    }

    v59[0] = *this;
    if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v5, "ceil_mode", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v59) & 1) == 0)
    {
      return 0;
    }

    v59[0] = *this;
    if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v7, "include_zero_pad", 0x10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v59) & 1) == 0)
    {
      return 0;
    }

    v59[0] = *this;
    if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps36(v10, "indices_mode", 0xC, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps36(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v59) & 1) == 0)
    {
      return 0;
    }

    v59[0] = *this;
    if ((mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps7(v9, "indices_result_type", 0x13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v59) & 1) == 0)
    {
      return 0;
    }

    v56 = 0;
    v13 = *(*this + 44);
    v14 = *(*this + 16 * ((v13 >> 23) & 1) + 136);
    if ((v13 & 0x800000) != 0)
    {
      v15 = *(*this + 72);
      if (v14)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v15 = 0;
      if (v14)
      {
LABEL_13:
        v16 = 0;
        v17 = v15 + 24;
        while (1)
        {
          v18 = *this;
          v19 = *(*v17 + 8);
          v56 = v16 + 1;
          if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v18, v19 & 0xFFFFFFFFFFFFFFF8, "operand", 7, v16) & 1) == 0)
          {
            return 0;
          }

          ++v16;
          v17 += 32;
          if (v14 == v16)
          {
            goto LABEL_39;
          }
        }
      }
    }

    LODWORD(v16) = 0;
LABEL_39:
    ODSOperands = mlir::mps::PoolMaxGradientOp::getODSOperands(this, 1u);
    v31 = v30;
    if (v30 >= 2)
    {
      v57[0] = "operand group starting at #";
      v58 = 259;
      mlir::OpState::emitOpError(this, v57, v59);
      mlir::InFlightDiagnostic::operator<<<unsigned int const&>(v59, &v56);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v32, " requires 0 or 1 element, but found ");
      v55 = v31;
LABEL_41:
      mlir::InFlightDiagnostic::operator<<<unsigned long>(v33, &v55);
      v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v34);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v59);
      return v20;
    }

    if (v30)
    {
      v35 = *(ODSOperands + 24);
      v36 = *this;
      v37 = *(v35 + 8);
      v56 = v16 + 1;
      if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v36, v37 & 0xFFFFFFFFFFFFFFF8, "operand", 7, v16) & 1) == 0)
      {
        return 0;
      }
    }

    v39 = mlir::mps::PoolMaxGradientOp::getODSOperands(this, 2u);
    v41 = v40;
    if (v40 >= 2)
    {
      goto LABEL_47;
    }

    if (v40)
    {
      v43 = *(v39 + 24);
      v44 = *this;
      v45 = *(v43 + 8);
      v46 = v56++;
      if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v44, v45 & 0xFFFFFFFFFFFFFFF8, "operand", 7, v46) & 1) == 0)
      {
        return 0;
      }
    }

    v47 = mlir::mps::PoolMaxGradientOp::getODSOperands(this, 3u);
    v41 = v48;
    if (v48 >= 2)
    {
LABEL_47:
      v57[0] = "operand group starting at #";
      v58 = 259;
      mlir::OpState::emitOpError(this, v57, v59);
      mlir::InFlightDiagnostic::operator<<<unsigned int const&>(v59, &v56);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v42, " requires 0 or 1 element, but found ");
      v55 = v41;
      goto LABEL_41;
    }

    if (v48)
    {
      v49 = *(v47 + 24);
      v50 = *this;
      v51 = *(v49 + 8);
      v52 = v56++;
      if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(v50, v51 & 0xFFFFFFFFFFFFFFF8, "operand", 7, v52) & 1) == 0)
      {
        return 0;
      }
    }

    if (*(*this + 36))
    {
      v53 = *this - 16;
    }

    else
    {
      v53 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v53, 0);
    return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
  }

  else
  {
    v57[0] = "requires attribute 'window_sizes'";
    v58 = 259;
    mlir::OpState::emitOpError(this, v57, v59);
    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v59);
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

      v21 = __p;
      if (__p)
      {
        v22 = v65;
        v23 = __p;
        if (v65 != __p)
        {
          do
          {
            v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
          }

          while (v22 != v21);
          v23 = __p;
        }

        v65 = v21;
        operator delete(v23);
      }

      v24 = v62;
      if (v62)
      {
        v25 = v63;
        v26 = v62;
        if (v63 != v62)
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
          v26 = v62;
        }

        v63 = v24;
        operator delete(v26);
      }

      if (v60 != &v61)
      {
        free(v60);
      }
    }
  }

  return v20;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::PoolMaxGradientOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.pooling_max_gradient", 24, a3, v10, a4, a5);
  *v11 = &unk_1F5B2A580;
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

uint64_t mlir::mps::detail::PoolMaxOpGenericAdaptorBase::PoolMaxOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1);
  *(a1 + 24) = *v3;
  v4 = *(v3 + 16);
  v5 = *(v3 + 32);
  v6 = *(v3 + 48);
  *(a1 + 88) = *(v3 + 64);
  *(a1 + 72) = v6;
  *(a1 + 56) = v5;
  *(a1 + 40) = v4;
  v7 = *(a2 + 44);
  if ((v7 & 0x7FFFFF) != 0)
  {
    mlir::ValueRange::ValueRange((a1 + 96), ((a2 + 64 + 16 * ((v7 >> 23) & 1) + ((v7 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v7 & 0x7FFFFF);
  }

  else
  {
    mlir::ValueRange::ValueRange((a1 + 96), 0, 0);
  }

  return a1;
}

uint64_t mlir::mps::PoolMaxOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v96 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v80 = v6;
  if (!v6)
  {
    a3(&v84, a4);
    if (v84)
    {
      LODWORD(v81) = 3;
      v82 = "expected DictionaryAttr to set properties";
      v83 = 41;
      v26 = &v81;
      v27 = v86;
      if (v87 >= v88)
      {
        if (v86 <= &v81 && v86 + 24 * v87 > &v81)
        {
          v73 = &v81 - v86;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v87 + 1, 24);
          v27 = v86;
          v26 = (v86 + v73);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v87 + 1, 24);
          v26 = &v81;
          v27 = v86;
        }
      }

      v28 = &v27[24 * v87];
      v29 = *v26;
      *(v28 + 2) = v26[2];
      *v28 = v29;
      ++v87;
      if (v84)
      {
        mlir::InFlightDiagnostic::report(&v84);
      }
    }

    if (v95 != 1)
    {
      return 0;
    }

    if (v94 != &v95)
    {
      free(v94);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v93;
      v32 = __p;
      if (v93 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v93 = v30;
      operator delete(v32);
    }

    v21 = v90;
    if (!v90)
    {
      goto LABEL_77;
    }

    v33 = v91;
    v23 = v90;
    if (v91 == v90)
    {
LABEL_76:
      v91 = v21;
      operator delete(v23);
LABEL_77:
      if (v86 != v89)
      {
        free(v86);
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

  v97.var0 = "ceil_mode";
  v97.var1 = 9;
  v8 = mlir::DictionaryAttr::get(&v80, v97);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v9 = v8;
      a3(&v84, a4);
      if (v84)
      {
        LODWORD(v81) = 3;
        v83 = 54;
        v10 = &v81;
        v11 = v86;
        if (v87 >= v88)
        {
          if (v86 <= &v81 && v86 + 24 * v87 > &v81)
          {
            v74 = &v81 - v86;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v87 + 1, 24);
            v11 = v86;
            v10 = (v86 + v74);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v87 + 1, 24);
            v10 = &v81;
            v11 = v86;
          }
        }

        v12 = &v11[24 * v87];
        v13 = *v10;
        *(v12 + 2) = v10[2];
        *v12 = v13;
        ++v87;
        if (v84)
        {
          v14 = &v81;
          mlir::DiagnosticArgument::DiagnosticArgument(&v81, v9);
          v15 = v86;
          if (v87 >= v88)
          {
            if (v86 <= &v81 && v86 + 24 * v87 > &v81)
            {
              v75 = &v81 - v86;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v87 + 1, 24);
              v15 = v86;
              v14 = (v86 + v75);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v87 + 1, 24);
              v14 = &v81;
              v15 = v86;
            }
          }

          v16 = &v15[24 * v87];
          v17 = *v14;
          *(v16 + 2) = v14[2];
          *v16 = v17;
          ++v87;
          if (v84)
          {
            mlir::InFlightDiagnostic::report(&v84);
          }
        }
      }

      if ((v95 & 1) == 0)
      {
        return 0;
      }

      if (v94 != &v95)
      {
        free(v94);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v93;
        v20 = __p;
        if (v93 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v93 = v18;
        operator delete(v20);
      }

      v21 = v90;
      if (!v90)
      {
        goto LABEL_77;
      }

      v22 = v91;
      v23 = v90;
      if (v91 == v90)
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

  v98.var0 = "dilation_rates";
  v98.var1 = 14;
  v36 = mlir::DictionaryAttr::get(&v80, v98);
  if (v36)
  {
    v37 = v36;
    if (mlir::DenseIntElementsAttr::classof(v36))
    {
      a1[1] = v37;
      goto LABEL_49;
    }

    a3(&v84, a4);
    if (v84)
    {
      LODWORD(v81) = 3;
      v83 = 59;
      v42 = &v81;
      v43 = v86;
      if (v87 >= v88)
      {
        if (v86 <= &v81 && v86 + 24 * v87 > &v81)
        {
          v76 = &v81 - v86;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v87 + 1, 24);
          v43 = v86;
          v42 = (v86 + v76);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v87 + 1, 24);
          v42 = &v81;
          v43 = v86;
        }
      }

      v44 = &v43[24 * v87];
      v45 = *v42;
      *(v44 + 2) = v42[2];
      *v44 = v45;
      ++v87;
      if (v84)
      {
        v46 = &v81;
        mlir::DiagnosticArgument::DiagnosticArgument(&v81, v37);
        v47 = v86;
        if (v87 >= v88)
        {
          if (v86 <= &v81 && v86 + 24 * v87 > &v81)
          {
            v78 = &v81 - v86;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v87 + 1, 24);
            v47 = v86;
            v46 = (v86 + v78);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v87 + 1, 24);
            v46 = &v81;
            v47 = v86;
          }
        }

        v48 = &v47[24 * v87];
        v49 = *v46;
        *(v48 + 2) = v46[2];
        *v48 = v49;
        ++v87;
        if (v84)
        {
          mlir::InFlightDiagnostic::report(&v84);
        }
      }
    }

    if ((v95 & 1) == 0)
    {
      return 0;
    }

    if (v94 != &v95)
    {
      free(v94);
    }

    v50 = __p;
    if (__p)
    {
      v51 = v93;
      v52 = __p;
      if (v93 != __p)
      {
        do
        {
          v51 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v51 - 1);
        }

        while (v51 != v50);
        v52 = __p;
      }

      v93 = v50;
      operator delete(v52);
    }

    v21 = v90;
    if (!v90)
    {
      goto LABEL_77;
    }

    v53 = v91;
    v23 = v90;
    if (v91 == v90)
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
    v23 = v90;
    goto LABEL_76;
  }

LABEL_49:
  v99.var0 = "explicit_padding";
  v99.var1 = 16;
  v38 = mlir::DictionaryAttr::get(&v80, v99);
  if (v38)
  {
    v39 = v38;
    if (!mlir::DenseIntElementsAttr::classof(v38))
    {
      a3(&v84, a4);
      if (v84)
      {
        LODWORD(v81) = 3;
        v83 = 61;
        v56 = &v81;
        v57 = v86;
        if (v87 >= v88)
        {
          if (v86 <= &v81 && v86 + 24 * v87 > &v81)
          {
            v77 = &v81 - v86;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v87 + 1, 24);
            v57 = v86;
            v56 = (v86 + v77);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v87 + 1, 24);
            v56 = &v81;
            v57 = v86;
          }
        }

        v58 = &v57[24 * v87];
        v59 = *v56;
        *(v58 + 2) = v56[2];
        *v58 = v59;
        ++v87;
        if (v84)
        {
          v60 = &v81;
          mlir::DiagnosticArgument::DiagnosticArgument(&v81, v39);
          v61 = v86;
          if (v87 >= v88)
          {
            if (v86 <= &v81 && v86 + 24 * v87 > &v81)
            {
              v79 = &v81 - v86;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v87 + 1, 24);
              v61 = v86;
              v60 = (v86 + v79);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v89, v87 + 1, 24);
              v60 = &v81;
              v61 = v86;
            }
          }

          v62 = &v61[24 * v87];
          v63 = *v60;
          *(v62 + 2) = v60[2];
          *v62 = v63;
          ++v87;
          if (v84)
          {
            mlir::InFlightDiagnostic::report(&v84);
          }
        }
      }

      if (v95 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v85);
      }

      return 0;
    }

    a1[2] = v39;
  }

  v100.var0 = "include_zero_pad";
  v100.var1 = 16;
  v40 = mlir::DictionaryAttr::get(&v80, v100);
  v81 = v40;
  if (!v40)
  {
LABEL_88:
    v101.var0 = "indices_mode";
    v101.var1 = 12;
    v64 = mlir::DictionaryAttr::get(&v80, v101);
    v81 = v64;
    if (v64)
    {
      if (*(*v64 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id)
      {
        a3(&v84, a4);
LABEL_91:
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v84, v65);
        goto LABEL_109;
      }

      a1[4] = v64;
    }

    v102.var0 = "indices_result_type";
    v102.var1 = 19;
    v66 = mlir::DictionaryAttr::get(&v80, v102);
    v81 = v66;
    if (v66)
    {
      if (*(*v66 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
      {
        a3(&v84, a4);
        goto LABEL_109;
      }

      a1[5] = v66;
    }

    v103.var0 = "padding_style";
    v103.var1 = 13;
    v67 = mlir::DictionaryAttr::get(&v80, v103);
    v81 = v67;
    if (v67)
    {
      if (*(*v67 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id)
      {
        a3(&v84, a4);
        goto LABEL_109;
      }

      a1[6] = v67;
    }

    v104.var0 = "strides";
    v104.var1 = 7;
    v68 = mlir::DictionaryAttr::get(&v80, v104);
    v81 = v68;
    if (v68)
    {
      v69 = v68;
      if (!mlir::DenseIntElementsAttr::classof(v68))
      {
        a3(&v84, a4);
        goto LABEL_109;
      }

      a1[7] = v69;
    }

    v105.var0 = "window_sizes";
    v105.var1 = 12;
    v70 = mlir::DictionaryAttr::get(&v80, v105);
    v81 = v70;
    if (v70)
    {
      v71 = v70;
      if (!mlir::DenseIntElementsAttr::classof(v70))
      {
        a3(&v84, a4);
        goto LABEL_91;
      }

      a1[8] = v71;
    }

    return 1;
  }

  if (*(*v40 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    a1[3] = v40;
    goto LABEL_88;
  }

  a3(&v84, a4);
LABEL_109:
  mlir::InFlightDiagnostic::operator<<<mlir::Attribute>(v41, &v81);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v84);
  return 0;
}

uint64_t mlir::mps::PoolMaxOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v72[6] = *MEMORY[0x1E69E9840];
  v69 = a1;
  v70 = v72;
  v71 = 0x300000000;
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

  NamedAttr = mlir::Builder::getNamedAttr(&v69, "ceil_mode", 9, *a2);
  v5 = v71;
  if (v71 >= HIDWORD(v71))
  {
    v51 = NamedAttr;
    v52 = v4;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, v72, v71 + 1, 16);
    v4 = v52;
    NamedAttr = v51;
    v5 = v71;
  }

  v6 = (v70 + 16 * v5);
  *v6 = NamedAttr;
  v6[1] = v4;
  v7 = v71 + 1;
  LODWORD(v71) = v71 + 1;
  v8 = a2[1];
  if (v8)
  {
LABEL_7:
    v9 = mlir::Builder::getNamedAttr(&v69, "dilation_rates", 14, v8);
    v11 = v71;
    if (v71 >= HIDWORD(v71))
    {
      v53 = v9;
      v54 = v10;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, v72, v71 + 1, 16);
      v10 = v54;
      v9 = v53;
      v11 = v71;
    }

    v12 = (v70 + 16 * v11);
    *v12 = v9;
    v12[1] = v10;
    v7 = v71 + 1;
    LODWORD(v71) = v71 + 1;
  }

LABEL_10:
  v13 = a2[2];
  if (v13)
  {
    v14 = mlir::Builder::getNamedAttr(&v69, "explicit_padding", 16, v13);
    v16 = v71;
    if (v71 >= HIDWORD(v71))
    {
      v55 = v14;
      v56 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, v72, v71 + 1, 16);
      v15 = v56;
      v14 = v55;
      v16 = v71;
    }

    v17 = (v70 + 16 * v16);
    *v17 = v14;
    v17[1] = v15;
    v7 = v71 + 1;
    LODWORD(v71) = v71 + 1;
  }

  v18 = a2[3];
  if (v18)
  {
    v19 = mlir::Builder::getNamedAttr(&v69, "include_zero_pad", 16, v18);
    v21 = v71;
    if (v71 >= HIDWORD(v71))
    {
      v57 = v19;
      v58 = v20;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, v72, v71 + 1, 16);
      v20 = v58;
      v19 = v57;
      v21 = v71;
    }

    v22 = (v70 + 16 * v21);
    *v22 = v19;
    v22[1] = v20;
    v7 = v71 + 1;
    LODWORD(v71) = v71 + 1;
  }

  v23 = a2[4];
  if (v23)
  {
    v24 = mlir::Builder::getNamedAttr(&v69, "indices_mode", 12, v23);
    v26 = v71;
    if (v71 >= HIDWORD(v71))
    {
      v59 = v24;
      v60 = v25;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, v72, v71 + 1, 16);
      v25 = v60;
      v24 = v59;
      v26 = v71;
    }

    v27 = (v70 + 16 * v26);
    *v27 = v24;
    v27[1] = v25;
    v7 = v71 + 1;
    LODWORD(v71) = v71 + 1;
  }

  v28 = a2[5];
  if (v28)
  {
    v29 = mlir::Builder::getNamedAttr(&v69, "indices_result_type", 19, v28);
    v31 = v71;
    if (v71 >= HIDWORD(v71))
    {
      v61 = v29;
      v62 = v30;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, v72, v71 + 1, 16);
      v30 = v62;
      v29 = v61;
      v31 = v71;
    }

    v32 = (v70 + 16 * v31);
    *v32 = v29;
    v32[1] = v30;
    v7 = v71 + 1;
    LODWORD(v71) = v71 + 1;
  }

  v33 = a2[6];
  if (v33)
  {
    v34 = mlir::Builder::getNamedAttr(&v69, "padding_style", 13, v33);
    v36 = v71;
    if (v71 >= HIDWORD(v71))
    {
      v63 = v34;
      v64 = v35;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, v72, v71 + 1, 16);
      v35 = v64;
      v34 = v63;
      v36 = v71;
    }

    v37 = (v70 + 16 * v36);
    *v37 = v34;
    v37[1] = v35;
    v7 = v71 + 1;
    LODWORD(v71) = v71 + 1;
  }

  v38 = a2[7];
  if (v38)
  {
    v39 = mlir::Builder::getNamedAttr(&v69, "strides", 7, v38);
    v41 = v71;
    if (v71 >= HIDWORD(v71))
    {
      v65 = v39;
      v66 = v40;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, v72, v71 + 1, 16);
      v40 = v66;
      v39 = v65;
      v41 = v71;
    }

    v42 = (v70 + 16 * v41);
    *v42 = v39;
    v42[1] = v40;
    v7 = v71 + 1;
    LODWORD(v71) = v71 + 1;
  }

  v43 = a2[8];
  if (v43)
  {
    v44 = mlir::Builder::getNamedAttr(&v69, "window_sizes", 12, v43);
    v46 = v71;
    if (v71 >= HIDWORD(v71))
    {
      v67 = v44;
      v68 = v45;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, v72, v71 + 1, 16);
      v45 = v68;
      v44 = v67;
      v46 = v71;
    }

    v47 = (v70 + 16 * v46);
    *v47 = v44;
    v47[1] = v45;
    v7 = v71 + 1;
    LODWORD(v71) = v71 + 1;
  }

  v48 = v70;
  if (!v7)
  {
    DictionaryAttr = 0;
    if (v70 == v72)
    {
      return DictionaryAttr;
    }

    goto LABEL_40;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v69, v70, v7);
  v48 = v70;
  if (v70 != v72)
  {
LABEL_40:
    free(v48);
  }

  return DictionaryAttr;
}

unint64_t mlir::mps::PoolMaxOp::computePropertiesHash(void *a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = v1 ^ (v2 >> 47) ^ v2;
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  v6 = v4 ^ (v5 >> 47) ^ v5;
  v7 = HIDWORD(a1[2]);
  v8 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v7);
  v9 = v7 ^ (v8 >> 47) ^ v8;
  v10 = HIDWORD(a1[3]);
  v11 = 0x9DDFEA08EB382D69 * ((8 * a1[3] - 0xAE502812AA7333) ^ v10);
  v31 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 47));
  v12 = HIDWORD(a1[4]);
  v13 = 0x9DDFEA08EB382D69 * ((8 * a1[4] - 0xAE502812AA7333) ^ v12);
  v14 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) ^ ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) >> 47));
  v15 = HIDWORD(a1[5]);
  v16 = 0x9DDFEA08EB382D69 * ((8 * a1[5] - 0xAE502812AA7333) ^ v15);
  v29 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v15 ^ (v16 >> 47) ^ v16)) ^ ((0x9DDFEA08EB382D69 * (v15 ^ (v16 >> 47) ^ v16)) >> 47));
  v30 = v14;
  v17 = HIDWORD(a1[6]);
  v18 = 0x9DDFEA08EB382D69 * ((8 * a1[6] - 0xAE502812AA7333) ^ v17);
  v19 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v17 ^ (v18 >> 47) ^ v18)) ^ ((0x9DDFEA08EB382D69 * (v17 ^ (v18 >> 47) ^ v18)) >> 47));
  v20 = HIDWORD(a1[7]);
  v21 = 0x9DDFEA08EB382D69 * ((8 * a1[7] - 0xAE502812AA7333) ^ v20);
  v27 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v20 ^ (v21 >> 47) ^ v21)) ^ ((0x9DDFEA08EB382D69 * (v20 ^ (v21 >> 47) ^ v21)) >> 47));
  v28 = v19;
  v22 = HIDWORD(a1[8]);
  v23 = 0x9DDFEA08EB382D69 * ((8 * a1[8] - 0xAE502812AA7333) ^ v22);
  v26 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v22 ^ (v23 >> 47) ^ v23)) ^ ((0x9DDFEA08EB382D69 * (v22 ^ (v23 >> 47) ^ v23)) >> 47));
  memset(v35, 0, sizeof(v35));
  memset(v34, 0, sizeof(v34));
  v36 = 0;
  v37 = 0xFF51AFD7ED558CCDLL;
  v33[0] = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v3) ^ ((0x9DDFEA08EB382D69 * v3) >> 47));
  v33[1] = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v6) ^ ((0x9DDFEA08EB382D69 * v6) >> 47));
  v32 = 0;
  v24 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v33, &v32, v34, v35, 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v9) ^ ((0x9DDFEA08EB382D69 * v9) >> 47)));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(v33, v32, v24, v35, &v31, &v30, &v29, &v28, &v27, &v26);
}

uint64_t mlir::mps::PoolMaxOp::getInherentAttr(int a1, void *a2, void *__s1, uint64_t __n)
{
  if (__n <= 12)
  {
    switch(__n)
    {
      case 7:
        if (!memcmp(__s1, "strides", 7uLL))
        {
          return a2[7];
        }

        break;
      case 9:
        if (*__s1 == 0x646F6D5F6C696563 && *(__s1 + 8) == 101)
        {
          return *a2;
        }

        break;
      case 12:
        if (!memcmp(__s1, "indices_mode", 0xCuLL))
        {
          return a2[4];
        }

        if (!memcmp(__s1, "window_sizes", 0xCuLL))
        {
          return a2[8];
        }

        break;
    }

    return 0;
  }

  if (__n > 15)
  {
    if (__n == 16)
    {
      if (!memcmp(__s1, "explicit_padding", 0x10uLL))
      {
        return a2[2];
      }

      if (*__s1 == 0x5F6564756C636E69 && __s1[1] == 0x6461705F6F72657ALL)
      {
        return a2[3];
      }
    }

    else if (__n == 19 && !memcmp(__s1, "indices_result_type", 0x13uLL))
    {
      return a2[5];
    }

    return 0;
  }

  if (__n == 13)
  {
    if (!memcmp(__s1, "padding_style", 0xDuLL))
    {
      return a2[6];
    }

    return 0;
  }

  if (__n != 14 || memcmp(__s1, "dilation_rates", 0xEuLL))
  {
    return 0;
  }

  return a2[1];
}

uint64_t mlir::mps::PoolMaxOp::setInherentAttr(uint64_t result, void *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 <= 12)
  {
    switch(a3)
    {
      case 7:
        result = memcmp(__s1, "strides", 7uLL);
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

            v5[7] = v9;
          }

          else
          {
            v5[7] = 0;
          }
        }

        break;
      case 9:
        if (*__s1 == 0x646F6D5F6C696563 && *(__s1 + 8) == 101)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
            {
              v15 = a4;
            }

            else
            {
              v15 = 0;
            }

            *result = v15;
          }

          else
          {
            *result = 0;
          }
        }

        break;
      case 12:
        result = memcmp(__s1, "indices_mode", 0xCuLL);
        if (result)
        {
          result = memcmp(__s1, "window_sizes", 0xCuLL);
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

              v5[8] = v7;
            }

            else
            {
              v5[8] = 0;
            }
          }
        }

        else if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id)
          {
            v18 = a4;
          }

          else
          {
            v18 = 0;
          }

          v5[4] = v18;
        }

        else
        {
          v5[4] = 0;
        }

        break;
    }
  }

  else if (a3 > 15)
  {
    if (a3 == 16)
    {
      result = memcmp(__s1, "explicit_padding", 0x10uLL);
      if (result)
      {
        if (*__s1 == 0x5F6564756C636E69 && __s1[1] == 0x6461705F6F72657ALL)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
            {
              v13 = a4;
            }

            else
            {
              v13 = 0;
            }

            v5[3] = v13;
          }

          else
          {
            v5[3] = 0;
          }
        }
      }

      else if (a4)
      {
        result = mlir::DenseIntElementsAttr::classof(a4);
        if (result)
        {
          v16 = a4;
        }

        else
        {
          v16 = 0;
        }

        v5[2] = v16;
      }

      else
      {
        v5[2] = 0;
      }
    }

    else if (a3 == 19)
    {
      result = memcmp(__s1, "indices_result_type", 0x13uLL);
      if (!result)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
          {
            v8 = a4;
          }

          else
          {
            v8 = 0;
          }

          v5[5] = v8;
        }

        else
        {
          v5[5] = 0;
        }
      }
    }
  }

  else if (a3 == 13)
  {
    result = memcmp(__s1, "padding_style", 0xDuLL);
    if (!result)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id)
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
  }

  else if (a3 == 14)
  {
    result = memcmp(__s1, "dilation_rates", 0xEuLL);
    if (!result)
    {
      if (a4)
      {
        result = mlir::DenseIntElementsAttr::classof(a4);
        if (result)
        {
          v17 = a4;
        }

        else
        {
          v17 = 0;
        }

        v5[1] = v17;
      }

      else
      {
        v5[1] = 0;
      }
    }
  }

  return result;
}

void mlir::mps::PoolMaxOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "ceil_mode", 9, *a2);
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
    mlir::NamedAttrList::append(a3, "include_zero_pad", 16, v7);
  }

  v8 = a2[4];
  if (v8)
  {
    mlir::NamedAttrList::append(a3, "indices_mode", 12, v8);
  }

  v9 = a2[5];
  if (v9)
  {
    mlir::NamedAttrList::append(a3, "indices_result_type", 19, v9);
  }

  v10 = a2[6];
  if (v10)
  {
    mlir::NamedAttrList::append(a3, "padding_style", 13, v10);
  }

  v11 = a2[7];
  if (v11)
  {
    mlir::NamedAttrList::append(a3, "strides", 7, v11);
  }

  v12 = a2[8];
  if (v12)
  {

    mlir::NamedAttrList::append(a3, "window_sizes", 12, v12);
  }
}

BOOL mlir::mps::PoolMaxOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, *(a2 + 256)))
    {
      return 0;
    }
  }

  else
  {
    v5 = operator new(0x48uLL);
    *v5 = 0u;
    v5[1] = 0u;
    v5[2] = 0u;
    v5[3] = 0u;
    *(v5 + 8) = 0;
    *(a2 + 256) = v5;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolMaxOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolMaxOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v8;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolMaxOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolMaxOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v7;
    {
      mlir::mps::PoolMaxOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolMaxOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = *(a2 + 256);
    if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3))
    {
      return 0;
    }
  }

  if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 2) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3 + 3) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::PoolIndicesModeAttr>(a1, v3 + 4) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::TypeAttr>(a1, v3 + 5) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::PaddingStyleAttr>(a1, v3 + 6) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 7))
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 8);
  }

  return 0;
}

void mlir::mps::PoolMaxOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, char a9, char a10)
{
  v18 = mlir::IntegerType::get(*a1, 32, 1u);
  v19 = mlir::TypeAttr::get(v18);
  mlir::mps::PoolMaxOp::build(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, 0, v19);
}

void mlir::mps::PoolMaxOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, char a9, char a10, unsigned int a11, uint64_t a12)
{
  v70 = *MEMORY[0x1E69E9840];
  v61 = a3;
  mlir::OperationState::addOperands(a2, &v61, 1uLL);
  v19 = *(a2 + 256);
  if (v19)
  {
    *(v19 + 64) = a4;
    v20 = *(a2 + 256);
    if (v20)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v22 = operator new(0x48uLL);
    *v22 = 0u;
    v22[1] = 0u;
    v22[2] = 0u;
    v22[3] = 0u;
    *(v22 + 8) = 0;
    *(a2 + 256) = v22;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolMaxOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolMaxOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolMaxOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolMaxOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::PoolMaxOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolMaxOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    *(*(a2 + 256) + 64) = a4;
    v20 = *(a2 + 256);
    if (v20)
    {
LABEL_3:
      *(v20 + 56) = a5;
      v21 = *(a2 + 256);
      if (v21)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }
  }

  v23 = operator new(0x48uLL);
  *v23 = 0u;
  v23[1] = 0u;
  v23[2] = 0u;
  v23[3] = 0u;
  *(v23 + 8) = 0;
  *(a2 + 256) = v23;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolMaxOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolMaxOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &__src;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolMaxOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolMaxOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &__src;
  {
    mlir::mps::PoolMaxOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolMaxOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  *(*(a2 + 256) + 56) = a5;
  v21 = *(a2 + 256);
  if (!v21)
  {
LABEL_11:
    v24 = operator new(0x48uLL);
    *v24 = 0u;
    v24[1] = 0u;
    v24[2] = 0u;
    v24[3] = 0u;
    *(v24 + 8) = 0;
    *(a2 + 256) = v24;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolMaxOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolMaxOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolMaxOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolMaxOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::PoolMaxOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolMaxOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v21 = *(a2 + 256);
  }

LABEL_14:
  *(v21 + 8) = a6;
  v25 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  *&v67 = &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id;
  *(&v67 + 1) = v25;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail23PaddingStyleAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16PaddingStyleAttrEJNS2_12PaddingStyleEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v65 = &v67;
  v63 = a7;
  v27 = a7 ^ 0xFF51AFD7ED558CCDLL;
  v28 = 0x9DDFEA08EB382D69 * (((8 * a7) | 4) ^ v27);
  v62 = &v63;
  v68 = &v63;
  p_src = &__src;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v27 ^ (v28 >> 47) ^ v28)) >> 32) >> 15) ^ (-348639895 * (v27 ^ (v28 >> 47) ^ v28))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v62, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PaddingStyleAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PaddingStyleAttrStorage,mlir::mps::PaddingStyle>(llvm::function_ref<void ()(mlir::mps::detail::PaddingStyleAttrStorage *)>,mlir::TypeID,mlir::mps::PaddingStyle &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v68);
  v31 = *(a2 + 256);
  if (!v31)
  {
    v32 = operator new(0x48uLL);
    *v32 = 0u;
    v32[1] = 0u;
    v32[2] = 0u;
    v32[3] = 0u;
    *(v32 + 8) = 0;
    *(a2 + 256) = v32;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolMaxOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolMaxOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolMaxOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolMaxOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::PoolMaxOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolMaxOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v31 = *(a2 + 256);
  }

  *(v31 + 48) = ParametricStorageTypeImpl;
  if (a8)
  {
    v33 = *(a2 + 256);
    if (!v33)
    {
      v34 = operator new(0x48uLL);
      *v34 = 0u;
      v34[1] = 0u;
      v34[2] = 0u;
      v34[3] = 0u;
      *(v34 + 8) = 0;
      *(a2 + 256) = v34;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolMaxOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolMaxOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolMaxOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolMaxOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::mps::PoolMaxOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolMaxOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v33 = *(a2 + 256);
    }

    *(v33 + 16) = a8;
  }

  if (a9)
  {
    UnitAttr = mlir::Builder::getUnitAttr(a1, v29);
    v36 = *(a2 + 256);
    if (!v36)
    {
      v37 = operator new(0x48uLL);
      *v37 = 0u;
      v37[1] = 0u;
      v37[2] = 0u;
      v37[3] = 0u;
      *(v37 + 8) = 0;
      *(a2 + 256) = v37;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolMaxOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolMaxOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolMaxOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolMaxOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::mps::PoolMaxOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolMaxOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v36 = *(a2 + 256);
    }

    *v36 = UnitAttr;
  }

  if (a10)
  {
    v38 = mlir::Builder::getUnitAttr(a1, v29);
    v39 = *(a2 + 256);
    if (!v39)
    {
      v40 = operator new(0x48uLL);
      *v40 = 0u;
      v40[1] = 0u;
      v40[2] = 0u;
      v40[3] = 0u;
      *(v40 + 8) = 0;
      *(a2 + 256) = v40;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolMaxOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolMaxOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolMaxOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolMaxOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::mps::PoolMaxOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolMaxOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v39 = *(a2 + 256);
    }

    *(v39 + 24) = v38;
  }

  v41 = *a1;
  v42 = mlir::MLIRContext::getAttributeUniquer(*a1);
  *&v67 = &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id;
  *(&v67 + 1) = v41;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail26PoolIndicesModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_19PoolIndicesModeAttrEJNS2_15PoolIndicesModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v65 = &v67;
  v63 = a11;
  v43 = 0x9DDFEA08EB382D69 * (((8 * a11) | 4) ^ a11 ^ 0xFF51AFD7ED558CCDLL);
  v44 = 0x9DDFEA08EB382D69 * (a11 ^ 0xFF51AFD7ED558CCDLL ^ (v43 >> 47) ^ v43);
  v62 = &v63;
  v68 = &v63;
  p_src = &__src;
  v45 = mlir::StorageUniquer::getParametricStorageTypeImpl(v42, &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id, -348639895 * ((v44 >> 47) ^ v44), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PoolIndicesModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PoolIndicesModeAttrStorage,mlir::mps::PoolIndicesMode>(llvm::function_ref<void ()(mlir::mps::detail::PoolIndicesModeAttrStorage *)>,mlir::TypeID,mlir::mps::PoolIndicesMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v62, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PoolIndicesModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PoolIndicesModeAttrStorage,mlir::mps::PoolIndicesMode>(llvm::function_ref<void ()(mlir::mps::detail::PoolIndicesModeAttrStorage *)>,mlir::TypeID,mlir::mps::PoolIndicesMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v68);
  v46 = *(a2 + 256);
  if (!v46)
  {
    v47 = operator new(0x48uLL);
    *v47 = 0u;
    v47[1] = 0u;
    v47[2] = 0u;
    v47[3] = 0u;
    *(v47 + 8) = 0;
    *(a2 + 256) = v47;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolMaxOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolMaxOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolMaxOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolMaxOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::PoolMaxOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolMaxOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v46 = *(a2 + 256);
  }

  *(v46 + 32) = v45;
  if (a12)
  {
    v48 = *(a2 + 256);
    if (!v48)
    {
      v49 = operator new(0x48uLL);
      *v49 = 0u;
      v49[1] = 0u;
      v49[2] = 0u;
      v49[3] = 0u;
      *(v49 + 8) = 0;
      *(a2 + 256) = v49;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolMaxOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolMaxOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PoolMaxOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PoolMaxOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::mps::PoolMaxOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PoolMaxOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v48 = *(a2 + 256);
    }

    *(v48 + 40) = a12;
  }

  __src = v66;
  v65 = 0x200000000;
  v50 = *a1;
  mlir::ValueRange::ValueRange(&v68, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v53 = *(a2 + 256);
  mlir::ValueRange::ValueRange(&v67, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::PoolMaxOp::inferReturnTypes(v50, v54, v55, v68, p_src, Dictionary, v53, v56, v67, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v57 = __src;
  v58 = v65;
  v59 = *(a2 + 72);
  v60 = v59 + v65;
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
  if (__src != v66)
  {
    free(__src);
  }
}

BOOL mlir::mps::PoolMaxOp::verifyInvariantsImpl(mlir::mps::PoolMaxOp *this)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = (*this + 16 * ((*(*this + 44) >> 23) & 1));
  v4 = v3[16];
  if (v4)
  {
    v5 = v3[8];
    v6 = v3[9];
    v8 = v3[10];
    v7 = v3[11];
    v10 = v3[12];
    v9 = v3[13];
    v11 = v3[14];
    v12 = v3[15];
    v30[0] = v2;
    if (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v4, "window_sizes", 0xC, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v30) & 1) != 0 && (v30[0] = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v12, "strides", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v30)) && (v30[0] = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(v6, "dilation_rates", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v30)) && (v30[0] = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(v11, "padding_style", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v30)) && (v30[0] = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps35(v8, "explicit_padding", 0x10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps35(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v30)) && (v30[0] = *this, (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v5, "ceil_mode", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v30)) && (v30[0] = *this, (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v7, "include_zero_pad", 0x10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v30)) && (v30[0] = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps36(v10, "indices_mode", 0xC, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps36(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v30)) && (v30[0] = *this, (mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps7(v9, "indices_result_type", 0x13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v30)) && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) != 0 && (*(*this + 36) ? (v13 = *this - 16) : (v13 = 0), v14 = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0), (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(v14 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0)))
    {
      if (*(*this + 36))
      {
        v15 = *this - 16;
      }

      else
      {
        v15 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v15, 1);
      v17 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, 0);
      return mlir::mps::__mlir_ods_local_type_constraint_MPSOps25(*this, *(v17 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 1u) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v28 = "requires attribute 'window_sizes'";
    v29 = 259;
    mlir::OpState::emitOpError(this, &v28, v30);
    v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v30);
    if (v30[0])
    {
      mlir::InFlightDiagnostic::report(v30);
    }

    if (v38 == 1)
    {
      if (v37 != &v38)
      {
        free(v37);
      }

      v19 = __p;
      if (__p)
      {
        v20 = v36;
        v21 = __p;
        if (v36 != __p)
        {
          do
          {
            v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
          }

          while (v20 != v19);
          v21 = __p;
        }

        v36 = v19;
        operator delete(v21);
      }

      v22 = v33;
      if (v33)
      {
        v23 = v34;
        v24 = v33;
        if (v34 != v33)
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
          v24 = v33;
        }

        v34 = v22;
        operator delete(v24);
      }

      if (v31 != &v32)
      {
        free(v31);
      }
    }
  }

  return v18;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::PoolMaxOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.pooling_max", 15, a3, v10, a4, a5);
  *v11 = &unk_1F5B2A620;
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

uint64_t *mlir::RewritePatternSet::add<mlir::mps::PowerOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.power", 9, a3, v10, a4, a5);
  *v11 = &unk_1F5B2A6C0;
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

uint64_t mlir::mps::PruningGradientOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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
      v26 = &v71;
      v27 = v76;
      if (v77 >= v78)
      {
        if (v76 <= &v71 && v76 + 24 * v77 > &v71)
        {
          v63 = &v71 - v76;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
          v27 = v76;
          v26 = (v76 + v63);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
          v26 = &v71;
          v27 = v76;
        }
      }

      v28 = &v27[24 * v77];
      v29 = *v26;
      *(v28 + 2) = *(v26 + 2);
      *v28 = v29;
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

    v30 = __p;
    if (__p)
    {
      v31 = v83;
      v32 = __p;
      if (v83 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v83 = v30;
      operator delete(v32);
    }

    v21 = v80;
    if (!v80)
    {
      goto LABEL_70;
    }

    v33 = v81;
    v23 = v80;
    if (v81 == v80)
    {
LABEL_69:
      v81 = v21;
      operator delete(v23);
LABEL_70:
      if (v76 != v79)
      {
        free(v76);
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
    v23 = v80;
    goto LABEL_69;
  }

  v87.var0 = "pruning_metric";
  v87.var1 = 14;
  v8 = mlir::DictionaryAttr::get(&v70, v87);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id)
    {
      v9 = v8;
      a3(&v74, a4);
      if (v74)
      {
        v71 = 3;
        v73 = 59;
        v10 = &v71;
        v11 = v76;
        if (v77 >= v78)
        {
          if (v76 <= &v71 && v76 + 24 * v77 > &v71)
          {
            v64 = &v71 - v76;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
            v11 = v76;
            v10 = (v76 + v64);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
            v10 = &v71;
            v11 = v76;
          }
        }

        v12 = &v11[24 * v77];
        v13 = *v10;
        *(v12 + 2) = *(v10 + 2);
        *v12 = v13;
        ++v77;
        if (v74)
        {
          v14 = &v71;
          mlir::DiagnosticArgument::DiagnosticArgument(&v71, v9);
          v15 = v76;
          if (v77 >= v78)
          {
            if (v76 <= &v71 && v76 + 24 * v77 > &v71)
            {
              v65 = &v71 - v76;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
              v15 = v76;
              v14 = (v76 + v65);
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

      v18 = __p;
      if (__p)
      {
        v19 = v83;
        v20 = __p;
        if (v83 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v83 = v18;
        operator delete(v20);
      }

      v21 = v80;
      if (!v80)
      {
        goto LABEL_70;
      }

      v22 = v81;
      v23 = v80;
      if (v81 == v80)
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

  v88.var0 = "pruning_structure";
  v88.var1 = 17;
  v36 = mlir::DictionaryAttr::get(&v70, v88);
  if (v36)
  {
    if (*(*v36 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id)
    {
      v37 = v36;
      a3(&v74, a4);
      if (v74)
      {
        v71 = 3;
        v73 = 62;
        v38 = &v71;
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
          v42 = &v71;
          mlir::DiagnosticArgument::DiagnosticArgument(&v71, v37);
          v43 = v76;
          if (v77 >= v78)
          {
            if (v76 <= &v71 && v76 + 24 * v77 > &v71)
            {
              v67 = &v71 - v76;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
              v43 = v76;
              v42 = (v76 + v67);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
              v42 = &v71;
              v43 = v76;
            }
          }

          v44 = &v43[24 * v77];
          v45 = *v42;
          *(v44 + 2) = *(v42 + 2);
          *v44 = v45;
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

      v46 = __p;
      if (__p)
      {
        v47 = v83;
        v48 = __p;
        if (v83 != __p)
        {
          do
          {
            v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
          }

          while (v47 != v46);
          v48 = __p;
        }

        v83 = v46;
        operator delete(v48);
      }

      v21 = v80;
      if (!v80)
      {
        goto LABEL_70;
      }

      v49 = v81;
      v23 = v80;
      if (v81 == v80)
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

  v89.var0 = "sparsity";
  v89.var1 = 8;
  v53 = mlir::DictionaryAttr::get(&v70, v89);
  if (!v53)
  {
    return 1;
  }

  if (*(*v53 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    a1[2] = v53;
    return 1;
  }

  v54 = v53;
  a3(&v74, a4);
  if (v74)
  {
    v71 = 3;
    v73 = 53;
    v55 = &v71;
    v56 = v76;
    if (v77 >= v78)
    {
      if (v76 <= &v71 && v76 + 24 * v77 > &v71)
      {
        v68 = &v71 - v76;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v76, v79, v77 + 1, 24);
        v56 = v76;
        v55 = (v76 + v68);
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
      mlir::DiagnosticArgument::DiagnosticArgument(&v71, v54);
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

uint64_t mlir::mps::PruningGradientOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
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

  NamedAttr = mlir::Builder::getNamedAttr(&v27, "pruning_metric", 14, *a2);
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
    v9 = mlir::Builder::getNamedAttr(&v27, "pruning_structure", 17, v8);
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
    v14 = mlir::Builder::getNamedAttr(&v27, "sparsity", 8, v13);
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

uint64_t mlir::mps::PruningGradientOp::setInherentAttr(uint64_t result, char *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 8)
  {
    result = memcmp(__s1, "sparsity", 8uLL);
    if (!result)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
        {
          v8 = a4;
        }

        else
        {
          v8 = 0;
        }

        *(v5 + 16) = v8;
      }

      else
      {
        *(v5 + 16) = 0;
      }
    }
  }

  else if (a3 == 17)
  {
    result = memcmp(__s1, "pruning_structure", 0x11uLL);
    if (!result)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id)
        {
          v7 = a4;
        }

        else
        {
          v7 = 0;
        }

        *(v5 + 8) = v7;
      }

      else
      {
        *(v5 + 8) = 0;
      }
    }
  }

  else if (a3 == 14 && *__s1 == 0x5F676E696E757270 && *(__s1 + 6) == 0x63697274656D5F67)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id)
      {
        v9 = a4;
      }

      else
      {
        v9 = 0;
      }

      *result = v9;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

BOOL mlir::mps::PruningGradientOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps37(v8, "pruning_metric", 0xE, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps38(v9, "pruning_structure", 0x11, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(v10, "sparsity", 8, a3, a4) & 1) != 0)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t mlir::mps::__mlir_ods_local_attr_constraint_MPSOps37(uint64_t a1, void *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id)
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
        v28 = "' failed to satisfy constraint: pruning metrics";
        v29 = 47;
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

uint64_t mlir::mps::__mlir_ods_local_attr_constraint_MPSOps38(uint64_t a1, void *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id)
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
        v28 = "' failed to satisfy constraint: pruning structure";
        v29 = 49;
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

BOOL mlir::mps::PruningGradientOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::PruningMetricAttr>(a1, *(a2 + 256)))
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
    *(a2 + 256) = v5;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PruningGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PruningGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v8;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PruningGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PruningGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v7;
    {
      mlir::mps::PruningGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PruningGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = *(a2 + 256);
    if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::PruningMetricAttr>(a1, v3))
    {
      return 0;
    }
  }

  if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::PruningStructureAttr>(a1, v3 + 1))
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::FloatAttr>(a1, v3 + 2);
  }

  return 0;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::PruningMetricAttr>(uint64_t a1, uint64_t *a2)
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
  if (v5 != &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id)
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

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::PruningMetricAttr]";
  v38 = 78;
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

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::PruningStructureAttr>(uint64_t a1, uint64_t *a2)
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
  if (v5 != &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id)
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

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::PruningStructureAttr]";
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

void mlir::mps::PruningGradientOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7)
{
  v47 = *MEMORY[0x1E69E9840];
  v38 = a4;
  v39 = a3;
  mlir::OperationState::addOperands(a2, &v39, 1uLL);
  mlir::OperationState::addOperands(a2, &v38, 1uLL);
  v11 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  *&v45 = &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id;
  *(&v45 + 1) = v11;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail24PruningMetricAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17PruningMetricAttrEJNS2_13PruningMetricEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v43 = &v45;
  v40 = a5;
  v13 = a5 ^ 0xFF51AFD7ED558CCDLL;
  v14 = 0x9DDFEA08EB382D69 * (((8 * a5) | 4) ^ v13);
  v41[0] = &v40;
  *&v46 = &v40;
  *(&v46 + 1) = &__src;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v13 ^ (v14 >> 47) ^ v14)) >> 32) >> 15) ^ (-348639895 * (v13 ^ (v14 >> 47) ^ v14))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PruningMetricAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningMetricAttrStorage,mlir::mps::PruningMetric>(llvm::function_ref<void ()(mlir::mps::detail::PruningMetricAttrStorage *)>,mlir::TypeID,mlir::mps::PruningMetric &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, v41, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PruningMetricAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningMetricAttrStorage,mlir::mps::PruningMetric>(llvm::function_ref<void ()(mlir::mps::detail::PruningMetricAttrStorage *)>,mlir::TypeID,mlir::mps::PruningMetric &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v46);
  v16 = *(a2 + 256);
  if (!v16)
  {
    v17 = operator new(0x18uLL);
    v17[1] = 0;
    v17[2] = 0;
    *v17 = 0;
    *(a2 + 256) = v17;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PruningGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PruningGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PruningGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PruningGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::PruningGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PruningGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v16 = *(a2 + 256);
  }

  *v16 = ParametricStorageTypeImpl;
  v18 = *a1;
  v19 = mlir::MLIRContext::getAttributeUniquer(*a1);
  *&v45 = &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id;
  *(&v45 + 1) = v18;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail27PruningStructureAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20PruningStructureAttrEJNS2_16PruningStructureEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v43 = &v45;
  v40 = a6;
  v20 = a6 ^ 0xFF51AFD7ED558CCDLL;
  v21 = 0x9DDFEA08EB382D69 * (((8 * a6) | 4) ^ v20);
  v41[0] = &v40;
  *&v46 = &v40;
  *(&v46 + 1) = &__src;
  v23 = mlir::StorageUniquer::getParametricStorageTypeImpl(v19, &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v20 ^ (v21 >> 47) ^ v21)) >> 32) >> 15) ^ (-348639895 * (v20 ^ (v21 >> 47) ^ v21))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PruningStructureAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningStructureAttrStorage,mlir::mps::PruningStructure>(llvm::function_ref<void ()(mlir::mps::detail::PruningStructureAttrStorage *)>,mlir::TypeID,mlir::mps::PruningStructure &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, v41, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PruningStructureAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningStructureAttrStorage,mlir::mps::PruningStructure>(llvm::function_ref<void ()(mlir::mps::detail::PruningStructureAttrStorage *)>,mlir::TypeID,mlir::mps::PruningStructure &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v46);
  v24 = *(a2 + 256);
  if (!v24)
  {
    v25 = operator new(0x18uLL);
    v25[1] = 0;
    v25[2] = 0;
    *v25 = 0;
    *(a2 + 256) = v25;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PruningGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PruningGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PruningGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PruningGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::PruningGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PruningGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v24 = *(a2 + 256);
  }

  *(v24 + 8) = v23;
  F32Type = mlir::Builder::getF32Type(a1, v22);
  FloatAttr = mlir::Builder::getFloatAttr(a1, F32Type, a7);
  v28 = *(a2 + 256);
  if (!v28)
  {
    v29 = operator new(0x18uLL);
    v29[1] = 0;
    v29[2] = 0;
    *v29 = 0;
    *(a2 + 256) = v29;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PruningGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PruningGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PruningGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PruningGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::PruningGradientOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PruningGradientOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v28 = *(a2 + 256);
  }

  *(v28 + 16) = FloatAttr;
  __src = v44;
  v43 = 0x200000000;
  mlir::ValueRange::ValueRange(&v45, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(v41, *(a2 + 224), *(a2 + 232));
  v46 = v45;
  if (v43 != 1)
  {
    if (!v43)
    {
      if (HIDWORD(v43))
      {
        v31 = 0;
LABEL_18:
        bzero(__src + 8 * v31, 8 - 8 * v31);
        goto LABEL_19;
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v44, 1uLL, 8);
      v31 = v43;
      if (v43 != 1)
      {
        goto LABEL_18;
      }
    }

LABEL_19:
    LODWORD(v43) = 1;
  }

  v32 = mlir::ValueRange::dereference_iterator(&v46, 0);
  v33 = __src;
  *__src = *(v32 + 8) & 0xFFFFFFFFFFFFFFF8;
  v34 = v43;
  v35 = *(a2 + 72);
  v36 = v35 + v43;
  if (v36 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v36, 8);
    LODWORD(v35) = *(a2 + 72);
  }

  if (v34)
  {
    memcpy((*(a2 + 64) + 8 * v35), v33, 8 * v34);
    LODWORD(v35) = *(a2 + 72);
  }

  *(a2 + 72) = v35 + v34;
  if (__src != v44)
  {
    free(__src);
  }
}

mlir::Float32Type *mlir::mps::PruningGradientOp::populateDefaultProperties(uint64_t a1, mlir::Float32Type **a2)
{
  v16 = *(a1 + 8);
  result = mlir::Attribute::getContext(&v16);
  v5 = result;
  v9 = result;
  if (*a2)
  {
    if (a2[1])
    {
      goto LABEL_3;
    }
  }

  else
  {
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(result);
    v10 = &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id;
    v11 = v5;
    v16 = _ZN4llvm12function_refIFvPN4mlir3mps6detail24PruningMetricAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17PruningMetricAttrEJNS2_13PruningMetricEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
    v17 = &v10;
    v15 = 0;
    v13 = &v16;
    v14 = &v15;
    v12 = &v15;
    result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id, 0x9B663A60, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PruningMetricAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningMetricAttrStorage,mlir::mps::PruningMetric>(llvm::function_ref<void ()(mlir::mps::detail::PruningMetricAttrStorage *)>,mlir::TypeID,mlir::mps::PruningMetric &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v14, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PruningMetricAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningMetricAttrStorage,mlir::mps::PruningMetric>(llvm::function_ref<void ()(mlir::mps::detail::PruningMetricAttrStorage *)>,mlir::TypeID,mlir::mps::PruningMetric &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
    *a2 = result;
    if (a2[1])
    {
LABEL_3:
      if (a2[2])
      {
        return result;
      }

LABEL_7:
      F32Type = mlir::Builder::getF32Type(&v9, v4);
      result = mlir::Builder::getFloatAttr(0.5, &v9, F32Type);
      a2[2] = result;
      return result;
    }
  }

  v7 = mlir::MLIRContext::getAttributeUniquer(v5);
  v10 = &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id;
  v11 = v5;
  v16 = _ZN4llvm12function_refIFvPN4mlir3mps6detail27PruningStructureAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20PruningStructureAttrEJNS2_16PruningStructureEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v17 = &v10;
  v15 = 1;
  v12 = &v15;
  v13 = &v16;
  v14 = &v15;
  result = mlir::StorageUniquer::getParametricStorageTypeImpl(v7, &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id, 0x17790227u, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PruningStructureAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningStructureAttrStorage,mlir::mps::PruningStructure>(llvm::function_ref<void ()(mlir::mps::detail::PruningStructureAttrStorage *)>,mlir::TypeID,mlir::mps::PruningStructure &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v14, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PruningStructureAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningStructureAttrStorage,mlir::mps::PruningStructure>(llvm::function_ref<void ()(mlir::mps::detail::PruningStructureAttrStorage *)>,mlir::TypeID,mlir::mps::PruningStructure &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
  a2[1] = result;
  if (!a2[2])
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t mlir::mps::PruningGradientOp::verifyInvariantsImpl(mlir::mps::PruningGradientOp *this)
{
  v2 = *this;
  v3 = (*this + 16 * ((*(*this + 44) >> 23) & 1));
  v4 = v3[8];
  v5 = v3[9];
  v6 = v3[10];
  v10 = v2;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps37(v4, "pruning_metric", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps37(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v10) & 1) == 0)
  {
    return 0;
  }

  v10 = *this;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps38(v5, "pruning_structure", 0x11, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps38(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v10) & 1) == 0)
  {
    return 0;
  }

  v10 = *this;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(v6, "sparsity", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v10) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 36))
  {
    v7 = *this - 16;
  }

  else
  {
    v7 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0);
  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::PruningGradientOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.prune_gradient", 18, a3, v10, a4, a5);
  *v11 = &unk_1F5B2A760;
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

BOOL mlir::mps::PruningOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::PruningMetricAttr>(a1, *(a2 + 256)))
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
    *(a2 + 256) = v5;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PruningOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PruningOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v8;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PruningOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PruningOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v7;
    {
      mlir::mps::PruningOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PruningOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = *(a2 + 256);
    if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::PruningMetricAttr>(a1, v3))
    {
      return 0;
    }
  }

  if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::PruningStructureAttr>(a1, v3 + 1))
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::FloatAttr>(a1, v3 + 2);
  }

  return 0;
}

void mlir::mps::PruningOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6)
{
  v45 = *MEMORY[0x1E69E9840];
  v37 = a3;
  mlir::OperationState::addOperands(a2, &v37, 1uLL);
  v10 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*a1);
  *&v43 = &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id;
  *(&v43 + 1) = v10;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail24PruningMetricAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17PruningMetricAttrEJNS2_13PruningMetricEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v41 = &v43;
  v38 = a4;
  v12 = a4 ^ 0xFF51AFD7ED558CCDLL;
  v13 = 0x9DDFEA08EB382D69 * (((8 * a4) | 4) ^ v12);
  v39[0] = &v38;
  *&v44 = &v38;
  *(&v44 + 1) = &__src;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) >> 32) >> 15) ^ (-348639895 * (v12 ^ (v13 >> 47) ^ v13))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PruningMetricAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningMetricAttrStorage,mlir::mps::PruningMetric>(llvm::function_ref<void ()(mlir::mps::detail::PruningMetricAttrStorage *)>,mlir::TypeID,mlir::mps::PruningMetric &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, v39, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PruningMetricAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningMetricAttrStorage,mlir::mps::PruningMetric>(llvm::function_ref<void ()(mlir::mps::detail::PruningMetricAttrStorage *)>,mlir::TypeID,mlir::mps::PruningMetric &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v44);
  v15 = *(a2 + 256);
  if (!v15)
  {
    v16 = operator new(0x18uLL);
    v16[1] = 0;
    v16[2] = 0;
    *v16 = 0;
    *(a2 + 256) = v16;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PruningOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PruningOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PruningOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PruningOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::PruningOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PruningOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v15 = *(a2 + 256);
  }

  *v15 = ParametricStorageTypeImpl;
  v17 = *a1;
  v18 = mlir::MLIRContext::getAttributeUniquer(*a1);
  *&v43 = &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id;
  *(&v43 + 1) = v17;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail27PruningStructureAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20PruningStructureAttrEJNS2_16PruningStructureEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v41 = &v43;
  v38 = a5;
  v19 = a5 ^ 0xFF51AFD7ED558CCDLL;
  v20 = 0x9DDFEA08EB382D69 * (((8 * a5) | 4) ^ v19);
  v39[0] = &v38;
  *&v44 = &v38;
  *(&v44 + 1) = &__src;
  v22 = mlir::StorageUniquer::getParametricStorageTypeImpl(v18, &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v19 ^ (v20 >> 47) ^ v20)) >> 32) >> 15) ^ (-348639895 * (v19 ^ (v20 >> 47) ^ v20))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::PruningStructureAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningStructureAttrStorage,mlir::mps::PruningStructure>(llvm::function_ref<void ()(mlir::mps::detail::PruningStructureAttrStorage *)>,mlir::TypeID,mlir::mps::PruningStructure &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, v39, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::PruningStructureAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::PruningStructureAttrStorage,mlir::mps::PruningStructure>(llvm::function_ref<void ()(mlir::mps::detail::PruningStructureAttrStorage *)>,mlir::TypeID,mlir::mps::PruningStructure &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v44);
  v23 = *(a2 + 256);
  if (!v23)
  {
    v24 = operator new(0x18uLL);
    v24[1] = 0;
    v24[2] = 0;
    *v24 = 0;
    *(a2 + 256) = v24;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PruningOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PruningOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PruningOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PruningOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::PruningOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PruningOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v23 = *(a2 + 256);
  }

  *(v23 + 8) = v22;
  F32Type = mlir::Builder::getF32Type(a1, v21);
  FloatAttr = mlir::Builder::getFloatAttr(a1, F32Type, a6);
  v27 = *(a2 + 256);
  if (!v27)
  {
    v28 = operator new(0x18uLL);
    v28[1] = 0;
    v28[2] = 0;
    *v28 = 0;
    *(a2 + 256) = v28;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PruningOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PruningOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::PruningOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::PruningOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::PruningOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::PruningOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v27 = *(a2 + 256);
  }

  *(v27 + 16) = FloatAttr;
  __src = v42;
  v41 = 0x200000000;
  mlir::ValueRange::ValueRange(&v43, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(v39, *(a2 + 224), *(a2 + 232));
  v44 = v43;
  if (v41 != 1)
  {
    if (!v41)
    {
      if (HIDWORD(v41))
      {
        v30 = 0;
LABEL_18:
        bzero(__src + 8 * v30, 8 - 8 * v30);
        goto LABEL_19;
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v42, 1uLL, 8);
      v30 = v41;
      if (v41 != 1)
      {
        goto LABEL_18;
      }
    }

LABEL_19:
    LODWORD(v41) = 1;
  }

  v31 = mlir::ValueRange::dereference_iterator(&v44, 0);
  v32 = __src;
  *__src = *(v31 + 8) & 0xFFFFFFFFFFFFFFF8;
  v33 = v41;
  v34 = *(a2 + 72);
  v35 = v34 + v41;
  if (v35 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v35, 8);
    LODWORD(v34) = *(a2 + 72);
  }

  if (v33)
  {
    memcpy((*(a2 + 64) + 8 * v34), v32, 8 * v33);
    LODWORD(v34) = *(a2 + 72);
  }

  *(a2 + 72) = v34 + v33;
  if (__src != v42)
  {
    free(__src);
  }
}

uint64_t mlir::mps::PruningOp::verifyInvariantsImpl(mlir::mps::PruningOp *this)
{
  v2 = *this;
  v3 = (*this + 16 * ((*(*this + 44) >> 23) & 1));
  v4 = v3[8];
  v5 = v3[9];
  v6 = v3[10];
  v10 = v2;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps37(v4, "pruning_metric", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps37(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v10) & 1) == 0)
  {
    return 0;
  }

  v10 = *this;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps38(v5, "pruning_structure", 0x11, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps38(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v10) & 1) == 0)
  {
    return 0;
  }

  v10 = *this;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(v6, "sparsity", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v10) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 36))
  {
    v7 = *this - 16;
  }

  else
  {
    v7 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0);
  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::PruningOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.prune", 9, a3, v10, a4, a5);
  *v11 = &unk_1F5B2A800;
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

uint64_t mlir::mps::QuantizeOp::readProperties(uint64_t a1, uint64_t a2)
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
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::QuantizeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::QuantizeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v8;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::QuantizeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::QuantizeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v7;
    {
      mlir::mps::QuantizeOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::QuantizeOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = *(a2 + 256);
    if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::IntegerAttr>(a1, v3))
    {
      return mlir::DialectBytecodeReader::readAttribute<mlir::TypeAttr>(a1, v3 + 1) & 1;
    }
  }

  return 0;
}

void mlir::mps::QuantizeOp::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v33[2] = *MEMORY[0x1E69E9840];
  v27 = a4;
  v28 = a3;
  v26 = a5;
  mlir::OperationState::addOperands(a2, &v28, 1uLL);
  mlir::OperationState::addOperands(a2, &v27, 1uLL);
  mlir::OperationState::addOperands(a2, &v26, 1uLL);
  v11 = *(a2 + 256);
  if (!v11)
  {
    v12 = operator new(0x10uLL);
    *v12 = 0;
    v12[1] = 0;
    *(a2 + 256) = v12;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::QuantizeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::QuantizeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::QuantizeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::QuantizeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::QuantizeOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::QuantizeOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v11 = *(a2 + 256);
  }

  *(v11 + 8) = a6;
  if (a7)
  {
    v13 = *(a2 + 256);
    if (!v13)
    {
      v14 = operator new(0x10uLL);
      *v14 = 0;
      v14[1] = 0;
      *(a2 + 256) = v14;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::QuantizeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::QuantizeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::QuantizeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::QuantizeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::mps::QuantizeOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::QuantizeOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v13 = *(a2 + 256);
    }

    *v13 = a7;
  }

  __src = v33;
  v32 = 0x200000000;
  v15 = *a1;
  mlir::ValueRange::ValueRange(v30, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v18 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v29, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::QuantizeOp::inferReturnTypes(v15, v19, v20, v30[0], v30[1], Dictionary, v18, v21, v29[0], v29[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v22 = __src;
  v23 = v32;
  v24 = *(a2 + 72);
  v25 = v24 + v32;
  if (v25 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v25, 8);
    LODWORD(v24) = *(a2 + 72);
  }

  if (v23)
  {
    memcpy((*(a2 + 64) + 8 * v24), v22, 8 * v23);
    LODWORD(v24) = *(a2 + 72);
  }

  *(a2 + 72) = v24 + v23;
  if (__src != v33)
  {
    free(__src);
  }
}

{
  v34[2] = *MEMORY[0x1E69E9840];
  v28 = a4;
  v29 = a3;
  v27 = a5;
  mlir::OperationState::addOperands(a2, &v29, 1uLL);
  mlir::OperationState::addOperands(a2, &v28, 1uLL);
  mlir::OperationState::addOperands(a2, &v27, 1uLL);
  v11 = mlir::TypeAttr::get(a6);
  v12 = *(a2 + 256);
  if (!v12)
  {
    v13 = operator new(0x10uLL);
    *v13 = 0;
    v13[1] = 0;
    *(a2 + 256) = v13;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::QuantizeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::QuantizeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::QuantizeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::QuantizeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::QuantizeOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::QuantizeOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v12 = *(a2 + 256);
  }

  *(v12 + 8) = v11;
  if (a7)
  {
    v14 = *(a2 + 256);
    if (!v14)
    {
      v15 = operator new(0x10uLL);
      *v15 = 0;
      v15[1] = 0;
      *(a2 + 256) = v15;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::QuantizeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::QuantizeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &__src;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::QuantizeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::QuantizeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &__src;
      {
        mlir::mps::QuantizeOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::QuantizeOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v14 = *(a2 + 256);
    }

    *v14 = a7;
  }

  __src = v34;
  v33 = 0x200000000;
  v16 = *a1;
  mlir::ValueRange::ValueRange(v31, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v19 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v30, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::QuantizeOp::inferReturnTypes(v16, v20, v21, v31[0], v31[1], Dictionary, v19, v22, v30[0], v30[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v23 = __src;
  v24 = v33;
  v25 = *(a2 + 72);
  v26 = v25 + v33;
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
  if (__src != v34)
  {
    free(__src);
  }
}

BOOL mlir::mps::QuantizeOp::verifyInvariantsImpl(const char **this)
{
  v201 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = &(*this)[16 * ((*(*this + 11) >> 23) & 1)];
  v4 = *(v3 + 72);
  if (v4)
  {
    v5 = *(v3 + 64);
    v189 = v2;
    if ((mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps7(v4, "dtype", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v189) & 1) == 0)
    {
      return 0;
    }

    v189 = *this;
    if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps27(v5, "axis", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps27(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v189) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0)
    {
      return 0;
    }

    v6 = *this;
    v7 = (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
    v8 = *v7;
    if (*(*v7 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      goto LABEL_88;
    }

    {
      v9 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v10 = *(v8 + 8);
      v11 = *(v8 + 16);
      if (v11)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v27 = v8;
      mlir::arith::ExtUIOp::fold();
      v9 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v10 = *(v27 + 8);
      v11 = *(v27 + 16);
      if (v11)
      {
LABEL_8:
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
LABEL_36:
        if (v12 != &v10[2 * v11] && *v12 == v9)
        {
          v28 = v12[1];
          v189 = v7;
          v190 = v28;
          if (!mlir::CallOpInterface::getArgOperands(&v189))
          {
            goto LABEL_88;
          }
        }

        else
        {
          v189 = v7;
          v190 = 0;
          if (!mlir::CallOpInterface::getArgOperands(&v189))
          {
            goto LABEL_88;
          }
        }

        v29 = *v7;
        {
          v30 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v31 = *(v29 + 8);
          v32 = *(v29 + 16);
          if (v32)
          {
            goto LABEL_43;
          }
        }

        else
        {
          v178 = v29;
          mlir::arith::ExtUIOp::fold();
          v30 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v31 = *(v178 + 8);
          v32 = *(v178 + 16);
          if (v32)
          {
LABEL_43:
            v33 = v31;
            v34 = v32;
            do
            {
              v35 = v34 >> 1;
              v36 = &v33[2 * (v34 >> 1)];
              v38 = *v36;
              v37 = v36 + 2;
              v34 += ~(v34 >> 1);
              if (v38 < v30)
              {
                v33 = v37;
              }

              else
              {
                v34 = v35;
              }
            }

            while (v34);
LABEL_51:
            if (v33 != &v31[2 * v32] && *v33 == v30)
            {
              v39 = v33[1];
            }

            else
            {
              v39 = 0;
            }

            v180 = v7;
            v181 = v39;
            mlir::CallableOpInterface::getArgAttrsAttr(&v180);
            if (!v40)
            {
LABEL_71:
              v53 = *v7;
              {
                v54 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
                v55 = *(v53 + 8);
                v56 = *(v53 + 16);
                if (v56)
                {
                  goto LABEL_73;
                }
              }

              else
              {
                v63 = v53;
                mlir::arith::ExtUIOp::fold();
                v54 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
                v55 = *(v63 + 8);
                v56 = *(v63 + 16);
                if (v56)
                {
LABEL_73:
                  v57 = v55;
                  v58 = v56;
                  do
                  {
                    v59 = v58 >> 1;
                    v60 = &v57[2 * (v58 >> 1)];
                    v62 = *v60;
                    v61 = v60 + 2;
                    v58 += ~(v58 >> 1);
                    if (v62 < v54)
                    {
                      v57 = v61;
                    }

                    else
                    {
                      v58 = v59;
                    }
                  }

                  while (v58);
LABEL_81:
                  if (v57 != &v55[2 * v56] && *v57 == v54)
                  {
                    v64 = v57[1];
                  }

                  else
                  {
                    v64 = 0;
                  }

                  v183 = v7;
                  v184 = v64;
                  isSplat = mlir::ElementsAttr::isSplat(&v183);
                  if (mlir::Type::isF16(&isSplat) || mlir::Type::isF32(&isSplat) || mlir::Type::isBF16(&isSplat))
                  {
                    goto LABEL_118;
                  }

                  goto LABEL_88;
                }
              }

              v56 = 0;
              v57 = v55;
              goto LABEL_81;
            }

            v41 = *v7;
            {
              v42 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
              v43 = *(v41 + 8);
              v44 = *(v41 + 16);
              if (v44)
              {
                goto LABEL_58;
              }
            }

            else
            {
              v179 = v41;
              mlir::arith::ExtUIOp::fold();
              v42 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
              v43 = *(v179 + 8);
              v44 = *(v179 + 16);
              if (v44)
              {
LABEL_58:
                v45 = v43;
                v46 = v44;
                do
                {
                  v47 = v46 >> 1;
                  v48 = &v45[2 * (v46 >> 1)];
                  v50 = *v48;
                  v49 = v48 + 2;
                  v46 += ~(v46 >> 1);
                  if (v50 < v42)
                  {
                    v45 = v49;
                  }

                  else
                  {
                    v46 = v47;
                  }
                }

                while (v46);
LABEL_66:
                if (v45 != &v43[2 * v44] && *v45 == v42)
                {
                  v51 = v45[1];
                }

                else
                {
                  v51 = 0;
                }

                v186 = v7;
                v187 = v51;
                mlir::CallableOpInterface::getArgAttrsAttr(&v186);
                if (v52 == 1)
                {
                  goto LABEL_71;
                }

LABEL_88:
                v182 = 261;
                v180 = "operand";
                v181 = 7;
                mlir::Operation::emitOpError(v6, &v180, &v189);
                if (v189)
                {
                  LODWORD(v186) = 3;
                  v187 = " #";
                  v188 = 2;
                  v65 = &v186;
                  v66 = v191;
                  if (v192 >= v193)
                  {
                    if (v191 <= &v186 && v191 + 24 * v192 > &v186)
                    {
                      v115 = &v186 - v191;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v191, v194, v192 + 1, 24);
                      v66 = v191;
                      v65 = (v191 + v115);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v191, v194, v192 + 1, 24);
                      v65 = &v186;
                      v66 = v191;
                    }
                  }

                  v67 = &v66[24 * v192];
                  v68 = *v65;
                  *(v67 + 2) = v65[2];
                  *v67 = v68;
                  v69 = ++v192;
                  if (v189)
                  {
                    LODWORD(v186) = 5;
                    v187 = 1;
                    v70 = &v186;
                    v71 = v191;
                    if (v69 >= v193)
                    {
                      if (v191 <= &v186 && v191 + 24 * v69 > &v186)
                      {
                        v128 = &v186 - v191;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v191, v194, v69 + 1, 24);
                        v71 = v191;
                        v70 = (v191 + v128);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v191, v194, v69 + 1, 24);
                        v70 = &v186;
                        v71 = v191;
                      }
                    }

                    v72 = &v71[24 * v192];
                    v73 = *v70;
                    *(v72 + 2) = v70[2];
                    *v72 = v73;
                    v74 = ++v192;
                    if (v189)
                    {
                      LODWORD(v186) = 3;
                      v187 = " must be 0D/1D tensor of floating point values, but got ";
                      v188 = 56;
                      v75 = &v186;
                      v76 = v191;
                      if (v74 >= v193)
                      {
                        if (v191 <= &v186 && v191 + 24 * v74 > &v186)
                        {
                          v173 = &v186 - v191;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v191, v194, v74 + 1, 24);
                          v76 = v191;
                          v75 = (v191 + v173);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v191, v194, v74 + 1, 24);
                          v75 = &v186;
                          v76 = v191;
                        }
                      }

                      v77 = &v76[24 * v192];
                      v78 = *v75;
                      *(v77 + 2) = v75[2];
                      *v77 = v78;
                      ++v192;
                      if (v189)
                      {
                        v79 = &v186;
                        mlir::DiagnosticArgument::DiagnosticArgument(&v186, v7);
                        v80 = v191;
                        if (v192 >= v193)
                        {
                          if (v191 <= &v186 && v191 + 24 * v192 > &v186)
                          {
                            v175 = &v186 - v191;
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v191, v194, v192 + 1, 24);
                            v80 = v191;
                            v79 = (v191 + v175);
                          }

                          else
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v191, v194, v192 + 1, 24);
                            v79 = &v186;
                            v80 = v191;
                          }
                        }

                        v81 = &v80[24 * v192];
                        v82 = *v79;
                        *(v81 + 2) = v79[2];
                        *v81 = v82;
                        ++v192;
                      }
                    }
                  }
                }

                v83 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v189);
                if (v189)
                {
                  mlir::InFlightDiagnostic::report(&v189);
                }

                if (v200 == 1)
                {
                  if (v199 != &v200)
                  {
                    free(v199);
                  }

                  v84 = __p;
                  if (__p)
                  {
                    v85 = v198;
                    v86 = __p;
                    if (v198 != __p)
                    {
                      do
                      {
                        v85 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v85 - 1);
                      }

                      while (v85 != v84);
                      v86 = __p;
                    }

                    v198 = v84;
                    operator delete(v86);
                  }

                  v87 = v195;
                  if (v195)
                  {
                    v88 = v196;
                    v89 = v195;
                    if (v196 != v195)
                    {
                      do
                      {
                        v91 = *--v88;
                        v90 = v91;
                        *v88 = 0;
                        if (v91)
                        {
                          operator delete[](v90);
                        }
                      }

                      while (v88 != v87);
                      v89 = v195;
                    }

                    v196 = v87;
                    operator delete(v89);
                  }

                  if (v191 != v194)
                  {
                    free(v191);
                  }
                }

                if (!v83)
                {
                  return 0;
                }

LABEL_118:
                v92 = *this;
                v93 = (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
                v94 = *v93;
                if (*(*v93 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
                {
                  goto LABEL_204;
                }

                {
                  v95 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
                  v96 = *(v94 + 8);
                  v97 = *(v94 + 16);
                  if (v97)
                  {
                    goto LABEL_121;
                  }
                }

                else
                {
                  mlir::arith::ExtUIOp::fold();
                  v95 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
                  v96 = *(v94 + 8);
                  v97 = *(v94 + 16);
                  if (v97)
                  {
LABEL_121:
                    v98 = v96;
                    v99 = v97;
                    do
                    {
                      v100 = v99 >> 1;
                      v101 = &v98[2 * (v99 >> 1)];
                      v103 = *v101;
                      v102 = v101 + 2;
                      v99 += ~(v99 >> 1);
                      if (v103 < v95)
                      {
                        v98 = v102;
                      }

                      else
                      {
                        v99 = v100;
                      }
                    }

                    while (v99);
LABEL_141:
                    if (v98 != &v96[2 * v97] && *v98 == v95)
                    {
                      v104 = v98[1];
                    }

                    else
                    {
                      v104 = 0;
                    }

                    v189 = v93;
                    v190 = v104;
                    if (!mlir::CallOpInterface::getArgOperands(&v189))
                    {
                      goto LABEL_204;
                    }

                    v105 = *v93;
                    {
                      v106 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
                      v107 = *(v105 + 8);
                      v108 = *(v105 + 16);
                      if (v108)
                      {
                        goto LABEL_148;
                      }
                    }

                    else
                    {
                      mlir::arith::ExtUIOp::fold();
                      v106 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
                      v107 = *(v105 + 8);
                      v108 = *(v105 + 16);
                      if (v108)
                      {
LABEL_148:
                        v109 = v107;
                        v110 = v108;
                        do
                        {
                          v111 = v110 >> 1;
                          v112 = &v109[2 * (v110 >> 1)];
                          v114 = *v112;
                          v113 = v112 + 2;
                          v110 += ~(v110 >> 1);
                          if (v114 < v106)
                          {
                            v109 = v113;
                          }

                          else
                          {
                            v110 = v111;
                          }
                        }

                        while (v110);
LABEL_157:
                        if (v109 != &v107[2 * v108] && *v109 == v106)
                        {
                          v116 = v109[1];
                        }

                        else
                        {
                          v116 = 0;
                        }

                        v180 = v93;
                        v181 = v116;
                        mlir::CallableOpInterface::getArgAttrsAttr(&v180);
                        if (!v117)
                        {
LABEL_178:
                          v131 = *v93;
                          {
                            v132 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
                            v133 = *(v131 + 8);
                            v134 = *(v131 + 16);
                            if (v134)
                            {
                              goto LABEL_180;
                            }
                          }

                          else
                          {
                            mlir::arith::ExtUIOp::fold();
                            v132 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
                            v133 = *(v131 + 8);
                            v134 = *(v131 + 16);
                            if (v134)
                            {
LABEL_180:
                              v135 = v133;
                              v136 = v134;
                              do
                              {
                                v137 = v136 >> 1;
                                v138 = &v135[2 * (v136 >> 1)];
                                v140 = *v138;
                                v139 = v138 + 2;
                                v136 += ~(v136 >> 1);
                                if (v140 < v132)
                                {
                                  v135 = v139;
                                }

                                else
                                {
                                  v136 = v137;
                                }
                              }

                              while (v136);
LABEL_188:
                              if (v135 != &v133[2 * v134] && *v135 == v132)
                              {
                                v141 = v135[1];
                              }

                              else
                              {
                                v141 = 0;
                              }

                              v183 = v93;
                              v184 = v141;
                              isSplat = mlir::ElementsAttr::isSplat(&v183);
                              if (mlir::Type::isSignedInteger(&isSplat, 2) || mlir::Type::isSignedInteger(&isSplat, 4) || mlir::Type::isSignedInteger(&isSplat, 8) || mlir::Type::isSignedInteger(&isSplat, 16) || mlir::Type::isSignedInteger(&isSplat, 32) || mlir::Type::isUnsignedInteger(&isSplat, 1) || mlir::Type::isUnsignedInteger(&isSplat, 2) || mlir::Type::isUnsignedInteger(&isSplat, 4) || mlir::Type::isUnsignedInteger(&isSplat, 8) || mlir::Type::isUnsignedInteger(&isSplat, 16) || mlir::Type::isUnsignedInteger(&isSplat, 32) || *(*isSplat + 136) == &mlir::detail::TypeIDResolver<mlir::mps::NF4Type,void>::id)
                              {
LABEL_234:
                                if (*(*this + 9))
                                {
                                  v169 = (*this - 16);
                                }

                                else
                                {
                                  v169 = 0;
                                }

                                NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v169, 0);
                                return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
                              }

                              goto LABEL_204;
                            }
                          }

                          v134 = 0;
                          v135 = v133;
                          goto LABEL_188;
                        }

                        v118 = *v93;
                        {
                          v119 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
                          v120 = *(v118 + 8);
                          v121 = *(v118 + 16);
                          if (v121)
                          {
                            goto LABEL_164;
                          }
                        }

                        else
                        {
                          mlir::arith::ExtUIOp::fold();
                          v119 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
                          v120 = *(v118 + 8);
                          v121 = *(v118 + 16);
                          if (v121)
                          {
LABEL_164:
                            v122 = v120;
                            v123 = v121;
                            do
                            {
                              v124 = v123 >> 1;
                              v125 = &v122[2 * (v123 >> 1)];
                              v127 = *v125;
                              v126 = v125 + 2;
                              v123 += ~(v123 >> 1);
                              if (v127 < v119)
                              {
                                v122 = v126;
                              }

                              else
                              {
                                v123 = v124;
                              }
                            }

                            while (v123);
LABEL_173:
                            if (v122 != &v120[2 * v121] && *v122 == v119)
                            {
                              v129 = v122[1];
                            }

                            else
                            {
                              v129 = 0;
                            }

                            v186 = v93;
                            v187 = v129;
                            mlir::CallableOpInterface::getArgAttrsAttr(&v186);
                            if (v130 == 1)
                            {
                              goto LABEL_178;
                            }

LABEL_204:
                            v182 = 261;
                            v180 = "operand";
                            v181 = 7;
                            mlir::Operation::emitOpError(v92, &v180, &v189);
                            if (v189)
                            {
                              LODWORD(v186) = 3;
                              v187 = " #";
                              v188 = 2;
                              v142 = &v186;
                              v143 = v191;
                              if (v192 >= v193)
                              {
                                if (v191 <= &v186 && v191 + 24 * v192 > &v186)
                                {
                                  v172 = &v186 - v191;
                                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v191, v194, v192 + 1, 24);
                                  v143 = v191;
                                  v142 = (v191 + v172);
                                }

                                else
                                {
                                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v191, v194, v192 + 1, 24);
                                  v142 = &v186;
                                  v143 = v191;
                                }
                              }

                              v144 = &v143[24 * v192];
                              v145 = *v142;
                              *(v144 + 2) = v142[2];
                              *v144 = v145;
                              v146 = ++v192;
                              if (v189)
                              {
                                LODWORD(v186) = 5;
                                v187 = 2;
                                v147 = &v186;
                                v148 = v191;
                                if (v146 >= v193)
                                {
                                  if (v191 <= &v186 && v191 + 24 * v146 > &v186)
                                  {
                                    v174 = &v186 - v191;
                                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v191, v194, v146 + 1, 24);
                                    v148 = v191;
                                    v147 = (v191 + v174);
                                  }

                                  else
                                  {
                                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v191, v194, v146 + 1, 24);
                                    v147 = &v186;
                                    v148 = v191;
                                  }
                                }

                                v149 = &v148[24 * v192];
                                v150 = *v147;
                                *(v149 + 2) = v147[2];
                                *v149 = v150;
                                v151 = ++v192;
                                if (v189)
                                {
                                  LODWORD(v186) = 3;
                                  v187 = " must be 0D/1D tensor of quantized values, but got ";
                                  v188 = 51;
                                  v152 = &v186;
                                  v153 = v191;
                                  if (v151 >= v193)
                                  {
                                    if (v191 <= &v186 && v191 + 24 * v151 > &v186)
                                    {
                                      v176 = &v186 - v191;
                                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v191, v194, v151 + 1, 24);
                                      v153 = v191;
                                      v152 = (v191 + v176);
                                    }

                                    else
                                    {
                                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v191, v194, v151 + 1, 24);
                                      v152 = &v186;
                                      v153 = v191;
                                    }
                                  }

                                  v154 = &v153[24 * v192];
                                  v155 = *v152;
                                  *(v154 + 2) = v152[2];
                                  *v154 = v155;
                                  ++v192;
                                  if (v189)
                                  {
                                    v156 = &v186;
                                    mlir::DiagnosticArgument::DiagnosticArgument(&v186, v93);
                                    v157 = v191;
                                    if (v192 >= v193)
                                    {
                                      if (v191 <= &v186 && v191 + 24 * v192 > &v186)
                                      {
                                        v177 = &v186 - v191;
                                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v191, v194, v192 + 1, 24);
                                        v157 = v191;
                                        v156 = (v191 + v177);
                                      }

                                      else
                                      {
                                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v191, v194, v192 + 1, 24);
                                        v156 = &v186;
                                        v157 = v191;
                                      }
                                    }

                                    v158 = &v157[24 * v192];
                                    v159 = *v156;
                                    *(v158 + 2) = v156[2];
                                    *v158 = v159;
                                    ++v192;
                                  }
                                }
                              }
                            }

                            v160 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v189);
                            if (v189)
                            {
                              mlir::InFlightDiagnostic::report(&v189);
                            }

                            if (v200 == 1)
                            {
                              if (v199 != &v200)
                              {
                                free(v199);
                              }

                              v161 = __p;
                              if (__p)
                              {
                                v162 = v198;
                                v163 = __p;
                                if (v198 != __p)
                                {
                                  do
                                  {
                                    v162 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v162 - 1);
                                  }

                                  while (v162 != v161);
                                  v163 = __p;
                                }

                                v198 = v161;
                                operator delete(v163);
                              }

                              v164 = v195;
                              if (v195)
                              {
                                v165 = v196;
                                v166 = v195;
                                if (v196 != v195)
                                {
                                  do
                                  {
                                    v168 = *--v165;
                                    v167 = v168;
                                    *v165 = 0;
                                    if (v168)
                                    {
                                      operator delete[](v167);
                                    }
                                  }

                                  while (v165 != v164);
                                  v166 = v195;
                                }

                                v196 = v164;
                                operator delete(v166);
                              }

                              if (v191 != v194)
                              {
                                free(v191);
                              }
                            }

                            if (v160)
                            {
                              goto LABEL_234;
                            }

                            return 0;
                          }
                        }

                        v121 = 0;
                        v122 = v120;
                        goto LABEL_173;
                      }
                    }

                    v108 = 0;
                    v109 = v107;
                    goto LABEL_157;
                  }
                }

                v97 = 0;
                v98 = v96;
                goto LABEL_141;
              }
            }

            v44 = 0;
            v45 = v43;
            goto LABEL_66;
          }
        }

        v32 = 0;
        v33 = v31;
        goto LABEL_51;
      }
    }

    v11 = 0;
    v12 = v10;
    goto LABEL_36;
  }

  v180 = "requires attribute 'dtype'";
  v182 = 259;
  mlir::OpState::emitOpError(this, &v180, &v189);
  v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v189);
  if (v189)
  {
    mlir::InFlightDiagnostic::report(&v189);
  }

  if (v200 == 1)
  {
    if (v199 != &v200)
    {
      free(v199);
    }

    v19 = __p;
    if (__p)
    {
      v20 = v198;
      v21 = __p;
      if (v198 != __p)
      {
        do
        {
          v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v198 = v19;
      operator delete(v21);
    }

    v22 = v195;
    if (v195)
    {
      v23 = v196;
      v24 = v195;
      if (v196 != v195)
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
        v24 = v195;
      }

      v196 = v22;
      operator delete(v24);
    }

    if (v191 != v194)
    {
      free(v191);
    }
  }

  return v18;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::QuantizeOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.quantize", 12, a3, v10, a4, a5);
  *v11 = &unk_1F5B2A8A0;
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

uint64_t mlir::mps::RandomNormalOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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
      v26 = &v73;
      v27 = v78;
      if (v79 >= v80)
      {
        if (v78 <= &v73 && v78 + 24 * v79 > &v73)
        {
          v65 = &v73 - v78;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
          v27 = v78;
          v26 = (v78 + v65);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
          v26 = &v73;
          v27 = v78;
        }
      }

      v28 = &v27[24 * v79];
      v29 = *v26;
      *(v28 + 2) = v26[2];
      *v28 = v29;
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

    v30 = __p;
    if (__p)
    {
      v31 = v85;
      v32 = __p;
      if (v85 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v85 = v30;
      operator delete(v32);
    }

    v21 = v82;
    if (!v82)
    {
      goto LABEL_70;
    }

    v33 = v83;
    v23 = v82;
    if (v83 == v82)
    {
LABEL_69:
      v83 = v21;
      operator delete(v23);
LABEL_70:
      if (v78 != v81)
      {
        free(v78);
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
    v23 = v82;
    goto LABEL_69;
  }

  v89.var0 = "mean";
  v89.var1 = 4;
  v8 = mlir::DictionaryAttr::get(&v72, v89);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      v9 = v8;
      a3(&v76, a4);
      if (v76)
      {
        LODWORD(v73) = 3;
        v75 = 49;
        v10 = &v73;
        v11 = v78;
        if (v79 >= v80)
        {
          if (v78 <= &v73 && v78 + 24 * v79 > &v73)
          {
            v66 = &v73 - v78;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
            v11 = v78;
            v10 = (v78 + v66);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
            v10 = &v73;
            v11 = v78;
          }
        }

        v12 = &v11[24 * v79];
        v13 = *v10;
        *(v12 + 2) = v10[2];
        *v12 = v13;
        ++v79;
        if (v76)
        {
          v14 = &v73;
          mlir::DiagnosticArgument::DiagnosticArgument(&v73, v9);
          v15 = v78;
          if (v79 >= v80)
          {
            if (v78 <= &v73 && v78 + 24 * v79 > &v73)
            {
              v67 = &v73 - v78;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
              v15 = v78;
              v14 = (v78 + v67);
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

      v18 = __p;
      if (__p)
      {
        v19 = v85;
        v20 = __p;
        if (v85 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v85 = v18;
        operator delete(v20);
      }

      v21 = v82;
      if (!v82)
      {
        goto LABEL_70;
      }

      v22 = v83;
      v23 = v82;
      if (v83 == v82)
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

  v90.var0 = "result_element_type";
  v90.var1 = 19;
  v36 = mlir::DictionaryAttr::get(&v72, v90);
  if (v36)
  {
    if (*(*v36 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      v37 = v36;
      a3(&v76, a4);
      if (v76)
      {
        LODWORD(v73) = 3;
        v75 = 64;
        v38 = &v73;
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
          v42 = &v73;
          mlir::DiagnosticArgument::DiagnosticArgument(&v73, v37);
          v43 = v78;
          if (v79 >= v80)
          {
            if (v78 <= &v73 && v78 + 24 * v79 > &v73)
            {
              v69 = &v73 - v78;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
              v43 = v78;
              v42 = (v78 + v69);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
              v42 = &v73;
              v43 = v78;
            }
          }

          v44 = &v43[24 * v79];
          v45 = *v42;
          *(v44 + 2) = v42[2];
          *v44 = v45;
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

      v46 = __p;
      if (__p)
      {
        v47 = v85;
        v48 = __p;
        if (v85 != __p)
        {
          do
          {
            v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
          }

          while (v47 != v46);
          v48 = __p;
        }

        v85 = v46;
        operator delete(v48);
      }

      v21 = v82;
      if (!v82)
      {
        goto LABEL_70;
      }

      v49 = v83;
      v23 = v82;
      if (v83 == v82)
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

  v91.var0 = "sampling_method";
  v91.var1 = 15;
  v53 = mlir::DictionaryAttr::get(&v72, v91);
  if (v53)
  {
    if (*(*v53 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id)
    {
      v54 = v53;
      a3(&v76, a4);
      if (v76)
      {
        LODWORD(v73) = 3;
        v75 = 60;
        v55 = &v73;
        v56 = v78;
        if (v79 >= v80)
        {
          if (v78 <= &v73 && v78 + 24 * v79 > &v73)
          {
            v70 = &v73 - v78;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
            v56 = v78;
            v55 = (v78 + v70);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
            v55 = &v73;
            v56 = v78;
          }
        }

        v57 = &v56[24 * v79];
        v58 = *v55;
        *(v57 + 2) = v55[2];
        *v57 = v58;
        ++v79;
        if (v76)
        {
          v59 = &v73;
          mlir::DiagnosticArgument::DiagnosticArgument(&v73, v54);
          v60 = v78;
          if (v79 >= v80)
          {
            if (v78 <= &v73 && v78 + 24 * v79 > &v73)
            {
              v71 = &v73 - v78;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
              v60 = v78;
              v59 = (v78 + v71);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v81, v79 + 1, 24);
              v59 = &v73;
              v60 = v78;
            }
          }

          v61 = &v60[24 * v79];
          v62 = *v59;
          *(v61 + 2) = v59[2];
          *v61 = v62;
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

    a1[2] = v53;
  }

  v92.var0 = "std_dev";
  v92.var1 = 7;
  v63 = mlir::DictionaryAttr::get(&v72, v92);
  v73 = v63;
  if (!v63)
  {
    return 1;
  }

  if (*(*v63 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    a1[3] = v63;
    return 1;
  }

  a3(&v76, a4);
  mlir::InFlightDiagnostic::operator<<<mlir::Attribute>(v64, &v73);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v76);
  return 0;
}

uint64_t mlir::mps::RandomNormalOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
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

  NamedAttr = mlir::Builder::getNamedAttr(&v34, "mean", 4, *a2);
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
    v9 = mlir::Builder::getNamedAttr(&v34, "result_element_type", 19, v8);
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
    v14 = mlir::Builder::getNamedAttr(&v34, "sampling_method", 15, v13);
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
    v19 = mlir::Builder::getNamedAttr(&v34, "std_dev", 7, v18);
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

uint64_t mlir::mps::RandomNormalOp::getInherentAttr(int a1, void *a2, _DWORD *__s1, uint64_t __n)
{
  if (__n > 14)
  {
    if (__n == 15)
    {
      if (!memcmp(__s1, "sampling_method", 0xFuLL))
      {
        return a2[2];
      }
    }

    else if (__n == 19 && !memcmp(__s1, "result_element_type", 0x13uLL))
    {
      return a2[1];
    }

    return 0;
  }

  if (__n == 4)
  {
    if (*__s1 == 1851876717)
    {
      return *a2;
    }

    return 0;
  }

  if (__n != 7 || memcmp(__s1, "std_dev", 7uLL))
  {
    return 0;
  }

  return a2[3];
}

uint64_t mlir::mps::RandomNormalOp::setInherentAttr(uint64_t result, _DWORD *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 > 14)
  {
    if (a3 == 15)
    {
      result = memcmp(__s1, "sampling_method", 0xFuLL);
      if (!result)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id)
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

    else if (a3 == 19)
    {
      result = memcmp(__s1, "result_element_type", 0x13uLL);
      if (!result)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
          {
            v6 = a4;
          }

          else
          {
            v6 = 0;
          }

          v5[1] = v6;
        }

        else
        {
          v5[1] = 0;
        }
      }
    }
  }

  else if (a3 == 4)
  {
    if (*__s1 == 1851876717)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
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

  else if (a3 == 7)
  {
    result = memcmp(__s1, "std_dev", 7uLL);
    if (!result)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
        {
          v9 = a4;
        }

        else
        {
          v9 = 0;
        }

        v5[3] = v9;
      }

      else
      {
        v5[3] = 0;
      }
    }
  }

  return result;
}

BOOL mlir::mps::RandomNormalOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(v8, "mean", 4, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps7(v9, "result_element_type", 0x13, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps39(v10, "sampling_method", 0xF, a3, a4) & 1) != 0)
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(v11, "std_dev", 7, a3, a4) & 1) != 0)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t mlir::mps::__mlir_ods_local_attr_constraint_MPSOps39(uint64_t a1, void *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id)
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
        v28 = "' failed to satisfy constraint: valid NormalSamplingMethod";
        v29 = 58;
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

BOOL mlir::mps::RandomNormalOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::FloatAttr>(a1, *(a2 + 256)))
    {
      return 0;
    }
  }

  else
  {
    v5 = operator new(0x20uLL);
    *v5 = 0u;
    v5[1] = 0u;
    *(a2 + 256) = v5;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::RandomNormalOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::RandomNormalOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v8;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::RandomNormalOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::RandomNormalOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v7;
    {
      mlir::mps::RandomNormalOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::RandomNormalOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = *(a2 + 256);
    if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::FloatAttr>(a1, v3))
    {
      return 0;
    }
  }

  if ((mlir::DialectBytecodeReader::readAttribute<mlir::TypeAttr>(a1, v3 + 1) & 1) != 0 && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::NormalSamplingMethodAttr>(a1, v3 + 2))
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::FloatAttr>(a1, v3 + 3);
  }

  return 0;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::NormalSamplingMethodAttr>(uint64_t a1, uint64_t *a2)
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
  if (v5 != &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id)
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

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::NormalSamplingMethodAttr]";
  v38 = 85;
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

void mlir::mps::RandomNormalOp::build(mlir::Float32Type **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v56 = *MEMORY[0x1E69E9840];
  v45 = a4;
  v46 = a3;
  mlir::OperationState::addOperands(a2, &v46, 1uLL);
  mlir::OperationState::addOperands(a2, &v45, 1uLL);
  v15 = mlir::TypeAttr::get(a5);
  v16 = *(a2 + 256);
  if (!v16)
  {
    v17 = operator new(0x20uLL);
    *v17 = 0u;
    v17[1] = 0u;
    *(a2 + 256) = v17;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::RandomNormalOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::RandomNormalOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::RandomNormalOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::RandomNormalOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::RandomNormalOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::RandomNormalOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v16 = *(a2 + 256);
  }

  *(v16 + 8) = v15;
  F32Type = mlir::Builder::getF32Type(a1, v14);
  FloatAttr = mlir::Builder::getFloatAttr(a1, F32Type, a6);
  v21 = *(a2 + 256);
  if (!v21)
  {
    v22 = operator new(0x20uLL);
    *v22 = 0u;
    v22[1] = 0u;
    *(a2 + 256) = v22;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::RandomNormalOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::RandomNormalOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::RandomNormalOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::RandomNormalOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::RandomNormalOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::RandomNormalOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v21 = *(a2 + 256);
  }

  *v21 = FloatAttr;
  v23 = mlir::Builder::getF32Type(a1, v19);
  v24 = mlir::Builder::getFloatAttr(a1, v23, a7);
  v25 = *(a2 + 256);
  if (!v25)
  {
    v26 = operator new(0x20uLL);
    *v26 = 0u;
    v26[1] = 0u;
    *(a2 + 256) = v26;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::RandomNormalOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::RandomNormalOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::RandomNormalOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::RandomNormalOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::RandomNormalOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::RandomNormalOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v25 = *(a2 + 256);
  }

  *(v25 + 24) = v24;
  v27 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v27);
  v52 = &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id;
  v53 = v27;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail31NormalSamplingMethodAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_24NormalSamplingMethodAttrEJNS2_20NormalSamplingMethodEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v50 = &v52;
  v48 = a8;
  v29 = a8 ^ 0xFF51AFD7ED558CCDLL;
  v30 = 0x9DDFEA08EB382D69 * (((8 * a8) | 4) ^ v29);
  v47 = &v48;
  v54 = &v48;
  p_src = &__src;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v29 ^ (v30 >> 47) ^ v30)) >> 32) >> 15) ^ (-348639895 * (v29 ^ (v30 >> 47) ^ v30))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::NormalSamplingMethodAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::NormalSamplingMethodAttrStorage,mlir::mps::NormalSamplingMethod>(llvm::function_ref<void ()(mlir::mps::detail::NormalSamplingMethodAttrStorage *)>,mlir::TypeID,mlir::mps::NormalSamplingMethod &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v47, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::NormalSamplingMethodAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::NormalSamplingMethodAttrStorage,mlir::mps::NormalSamplingMethod>(llvm::function_ref<void ()(mlir::mps::detail::NormalSamplingMethodAttrStorage *)>,mlir::TypeID,mlir::mps::NormalSamplingMethod &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v54);
  v32 = *(a2 + 256);
  if (!v32)
  {
    v33 = operator new(0x20uLL);
    *v33 = 0u;
    v33[1] = 0u;
    *(a2 + 256) = v33;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::RandomNormalOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::RandomNormalOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::RandomNormalOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::RandomNormalOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::RandomNormalOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::RandomNormalOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v32 = *(a2 + 256);
  }

  *(v32 + 16) = ParametricStorageTypeImpl;
  __src = v51;
  v50 = 0x200000000;
  mlir::ValueRange::ValueRange(&v54, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v36 = *(a2 + 256);
  v37 = mlir::ValueRange::ValueRange(&v52, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::RandomNormalOp::inferReturnTypes(v37, v38, v39, v54, p_src, Dictionary, v36, v40, v52, v53, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v41 = __src;
  v42 = v50;
  v43 = *(a2 + 72);
  v44 = v43 + v50;
  if (v44 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v44, 8);
    LODWORD(v43) = *(a2 + 72);
  }

  if (v42)
  {
    memcpy((*(a2 + 64) + 8 * v43), v41, 8 * v42);
    LODWORD(v43) = *(a2 + 72);
  }

  *(a2 + 72) = v43 + v42;
  if (__src != v51)
  {
    free(__src);
  }
}

mlir::MLIRContext *mlir::mps::RandomNormalOp::populateDefaultProperties(uint64_t a1, mlir::MLIRContext **a2)
{
  v14[0] = *(a1 + 8);
  result = mlir::Attribute::getContext(v14);
  v9 = result;
  if (*a2)
  {
    if (a2[3])
    {
      goto LABEL_3;
    }
  }

  else
  {
    F32Type = mlir::Builder::getF32Type(&v9, v4);
    result = mlir::Builder::getFloatAttr(0.0, &v9, F32Type);
    *a2 = result;
    if (a2[3])
    {
LABEL_3:
      if (a2[2])
      {
        return result;
      }

LABEL_7:
      v7 = v9;
      AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v9);
      v10[0] = &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id;
      v10[1] = v7;
      v14[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail31NormalSamplingMethodAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_24NormalSamplingMethodAttrEJNS2_20NormalSamplingMethodEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
      v14[1] = v10;
      v13 = 0;
      v11[0] = &v13;
      v11[1] = v14;
      v12 = &v13;
      result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id, 0x9B663A60, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::NormalSamplingMethodAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::NormalSamplingMethodAttrStorage,mlir::mps::NormalSamplingMethod>(llvm::function_ref<void ()(mlir::mps::detail::NormalSamplingMethodAttrStorage *)>,mlir::TypeID,mlir::mps::NormalSamplingMethod &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v12, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::NormalSamplingMethodAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::NormalSamplingMethodAttrStorage,mlir::mps::NormalSamplingMethod>(llvm::function_ref<void ()(mlir::mps::detail::NormalSamplingMethodAttrStorage *)>,mlir::TypeID,mlir::mps::NormalSamplingMethod &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v11);
      a2[2] = result;
      return result;
    }
  }

  v6 = mlir::Builder::getF32Type(&v9, v4);
  result = mlir::Builder::getFloatAttr(1.0, &v9, v6);
  a2[3] = result;
  if (!a2[2])
  {
    goto LABEL_7;
  }

  return result;
}

BOOL mlir::mps::RandomNormalOp::verifyInvariantsImpl(mlir::mps::RandomNormalOp *this)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  v6 = *(v3 + 64);
  v4 = *(v3 + 72);
  v5 = v3 + 64;
  if (v4)
  {
    v7 = *(v5 + 16);
    v8 = *(v5 + 24);
    v23[0] = v2;
    if (mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps7(v4, "result_element_type", 0x13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v23) & 1) != 0 && (v23[0] = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(v6, "mean", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v23)) && (v23[0] = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(v8, "std_dev", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v23)) && (v23[0] = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps39(v7, "sampling_method", 0xF, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps39(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v23)) && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) != 0 && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
    {
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

    else
    {
      return 0;
    }
  }

  else
  {
    v21 = "requires attribute 'result_element_type'";
    v22 = 259;
    mlir::OpState::emitOpError(this, &v21, v23);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
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
  }

  return v11;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::RandomNormalOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.random_normal", 17, a3, v10, a4, a5);
  *v11 = &unk_1F5B2A940;
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

uint64_t mlir::mps::RandomTruncatedNormalOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v90 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v74 = v6;
  if (!v6)
  {
    a3(&v78, a4);
    if (v78)
    {
      LODWORD(v75) = 3;
      v76 = "expected DictionaryAttr to set properties";
      v77 = 41;
      v26 = &v75;
      v27 = v80;
      if (v81 >= v82)
      {
        if (v80 <= &v75 && v80 + 24 * v81 > &v75)
        {
          v67 = &v75 - v80;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
          v27 = v80;
          v26 = (v80 + v67);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
          v26 = &v75;
          v27 = v80;
        }
      }

      v28 = &v27[24 * v81];
      v29 = *v26;
      *(v28 + 2) = v26[2];
      *v28 = v29;
      ++v81;
      if (v78)
      {
        mlir::InFlightDiagnostic::report(&v78);
      }
    }

    if (v89 != 1)
    {
      return 0;
    }

    if (v88 != &v89)
    {
      free(v88);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v87;
      v32 = __p;
      if (v87 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v87 = v30;
      operator delete(v32);
    }

    v21 = v84;
    if (!v84)
    {
      goto LABEL_70;
    }

    v33 = v85;
    v23 = v84;
    if (v85 == v84)
    {
LABEL_69:
      v85 = v21;
      operator delete(v23);
LABEL_70:
      if (v80 != v83)
      {
        free(v80);
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
    v23 = v84;
    goto LABEL_69;
  }

  v91.var0 = "maximum";
  v91.var1 = 7;
  v8 = mlir::DictionaryAttr::get(&v74, v91);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      v9 = v8;
      a3(&v78, a4);
      if (v78)
      {
        LODWORD(v75) = 3;
        v77 = 52;
        v10 = &v75;
        v11 = v80;
        if (v81 >= v82)
        {
          if (v80 <= &v75 && v80 + 24 * v81 > &v75)
          {
            v68 = &v75 - v80;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
            v11 = v80;
            v10 = (v80 + v68);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
            v10 = &v75;
            v11 = v80;
          }
        }

        v12 = &v11[24 * v81];
        v13 = *v10;
        *(v12 + 2) = v10[2];
        *v12 = v13;
        ++v81;
        if (v78)
        {
          v14 = &v75;
          mlir::DiagnosticArgument::DiagnosticArgument(&v75, v9);
          v15 = v80;
          if (v81 >= v82)
          {
            if (v80 <= &v75 && v80 + 24 * v81 > &v75)
            {
              v69 = &v75 - v80;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
              v15 = v80;
              v14 = (v80 + v69);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
              v14 = &v75;
              v15 = v80;
            }
          }

          v16 = &v15[24 * v81];
          v17 = *v14;
          *(v16 + 2) = v14[2];
          *v16 = v17;
          ++v81;
          if (v78)
          {
            mlir::InFlightDiagnostic::report(&v78);
          }
        }
      }

      if ((v89 & 1) == 0)
      {
        return 0;
      }

      if (v88 != &v89)
      {
        free(v88);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v87;
        v20 = __p;
        if (v87 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v87 = v18;
        operator delete(v20);
      }

      v21 = v84;
      if (!v84)
      {
        goto LABEL_70;
      }

      v22 = v85;
      v23 = v84;
      if (v85 == v84)
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

  v92.var0 = "mean";
  v92.var1 = 4;
  v36 = mlir::DictionaryAttr::get(&v74, v92);
  if (v36)
  {
    if (*(*v36 + 136) != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      v37 = v36;
      a3(&v78, a4);
      if (v78)
      {
        LODWORD(v75) = 3;
        v77 = 49;
        v38 = &v75;
        v39 = v80;
        if (v81 >= v82)
        {
          if (v80 <= &v75 && v80 + 24 * v81 > &v75)
          {
            v70 = &v75 - v80;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
            v39 = v80;
            v38 = (v80 + v70);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
            v38 = &v75;
            v39 = v80;
          }
        }

        v40 = &v39[24 * v81];
        v41 = *v38;
        *(v40 + 2) = v38[2];
        *v40 = v41;
        ++v81;
        if (v78)
        {
          v42 = &v75;
          mlir::DiagnosticArgument::DiagnosticArgument(&v75, v37);
          v43 = v80;
          if (v81 >= v82)
          {
            if (v80 <= &v75 && v80 + 24 * v81 > &v75)
            {
              v71 = &v75 - v80;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
              v43 = v80;
              v42 = (v80 + v71);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
              v42 = &v75;
              v43 = v80;
            }
          }

          v44 = &v43[24 * v81];
          v45 = *v42;
          *(v44 + 2) = v42[2];
          *v44 = v45;
          ++v81;
          if (v78)
          {
            mlir::InFlightDiagnostic::report(&v78);
          }
        }
      }

      if ((v89 & 1) == 0)
      {
        return 0;
      }

      if (v88 != &v89)
      {
        free(v88);
      }

      v46 = __p;
      if (__p)
      {
        v47 = v87;
        v48 = __p;
        if (v87 != __p)
        {
          do
          {
            v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
          }

          while (v47 != v46);
          v48 = __p;
        }

        v87 = v46;
        operator delete(v48);
      }

      v21 = v84;
      if (!v84)
      {
        goto LABEL_70;
      }

      v49 = v85;
      v23 = v84;
      if (v85 == v84)
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

  v93.var0 = "minimum";
  v93.var1 = 7;
  v52 = mlir::DictionaryAttr::get(&v74, v93);
  if (v52)
  {
    if (*(*v52 + 136) != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      v53 = v52;
      a3(&v78, a4);
      if (v78)
      {
        LODWORD(v75) = 3;
        v77 = 52;
        v54 = &v75;
        v55 = v80;
        if (v81 >= v82)
        {
          if (v80 <= &v75 && v80 + 24 * v81 > &v75)
          {
            v72 = &v75 - v80;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
            v55 = v80;
            v54 = (v80 + v72);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
            v54 = &v75;
            v55 = v80;
          }
        }

        v56 = &v55[24 * v81];
        v57 = *v54;
        *(v56 + 2) = v54[2];
        *v56 = v57;
        ++v81;
        if (v78)
        {
          v58 = &v75;
          mlir::DiagnosticArgument::DiagnosticArgument(&v75, v53);
          v59 = v80;
          if (v81 >= v82)
          {
            if (v80 <= &v75 && v80 + 24 * v81 > &v75)
            {
              v73 = &v75 - v80;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
              v59 = v80;
              v58 = (v80 + v73);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v83, v81 + 1, 24);
              v58 = &v75;
              v59 = v80;
            }
          }

          v60 = &v59[24 * v81];
          v61 = *v58;
          *(v60 + 2) = v58[2];
          *v60 = v61;
          ++v81;
          if (v78)
          {
            mlir::InFlightDiagnostic::report(&v78);
          }
        }
      }

      if (v89 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v79);
      }

      return 0;
    }

    a1[2] = v52;
  }

  v94.var0 = "result_element_type";
  v94.var1 = 19;
  v62 = mlir::DictionaryAttr::get(&v74, v94);
  v75 = v62;
  if (!v62)
  {
LABEL_88:
    v95.var0 = "sampling_method";
    v95.var1 = 15;
    v64 = mlir::DictionaryAttr::get(&v74, v95);
    v75 = v64;
    if (v64)
    {
      if (*(*v64 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id)
      {
        a3(&v78, a4);
        goto LABEL_95;
      }

      a1[4] = v64;
    }

    v96.var0 = "std_dev";
    v96.var1 = 7;
    v65 = mlir::DictionaryAttr::get(&v74, v96);
    v75 = v65;
    if (v65)
    {
      if (*(*v65 + 136) != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
      {
        a3(&v78, a4);
        goto LABEL_95;
      }

      a1[5] = v65;
    }

    return 1;
  }

  if (*(*v62 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    a1[3] = v62;
    goto LABEL_88;
  }

  a3(&v78, a4);
LABEL_95:
  mlir::InFlightDiagnostic::operator<<<mlir::Attribute>(v63, &v75);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v78);
  return 0;
}

uint64_t mlir::mps::RandomTruncatedNormalOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
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

  NamedAttr = mlir::Builder::getNamedAttr(&v48, "maximum", 7, *a2);
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
    v9 = mlir::Builder::getNamedAttr(&v48, "mean", 4, v8);
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
    v14 = mlir::Builder::getNamedAttr(&v48, "minimum", 7, v13);
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
    v19 = mlir::Builder::getNamedAttr(&v48, "result_element_type", 19, v18);
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
    v24 = mlir::Builder::getNamedAttr(&v48, "sampling_method", 15, v23);
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
    v29 = mlir::Builder::getNamedAttr(&v48, "std_dev", 7, v28);
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

uint64_t mlir::mps::RandomTruncatedNormalOp::getInherentAttr(int a1, void *a2, char *__s1, uint64_t __n)
{
  if (__n > 14)
  {
    if (__n == 15)
    {
      if (!memcmp(__s1, "sampling_method", 0xFuLL))
      {
        return a2[4];
      }
    }

    else if (__n == 19 && !memcmp(__s1, "result_element_type", 0x13uLL))
    {
      return a2[3];
    }

    return 0;
  }

  if (__n == 4)
  {
    if (!memcmp(__s1, "mean", 4uLL))
    {
      return a2[1];
    }

    return 0;
  }

  if (__n != 7)
  {
    return 0;
  }

  if (*__s1 == 1769496941 && *(__s1 + 3) == 1836412265)
  {
    return *a2;
  }

  if (!memcmp(__s1, "minimum", 7uLL))
  {
    return a2[2];
  }

  if (memcmp(__s1, "std_dev", 7uLL))
  {
    return 0;
  }

  return a2[5];
}

uint64_t mlir::mps::RandomTruncatedNormalOp::setInherentAttr(uint64_t result, char *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 > 14)
  {
    if (a3 == 15)
    {
      result = memcmp(__s1, "sampling_method", 0xFuLL);
      if (!result)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id)
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

    else if (a3 == 19)
    {
      result = memcmp(__s1, "result_element_type", 0x13uLL);
      if (!result)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
          {
            v12 = a4;
          }

          else
          {
            v12 = 0;
          }

          v5[3] = v12;
        }

        else
        {
          v5[3] = 0;
        }
      }
    }
  }

  else if (a3 == 4)
  {
    result = memcmp(__s1, "mean", 4uLL);
    if (!result)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
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
  }

  else if (a3 == 7)
  {
    if (*__s1 == 1769496941 && *(__s1 + 3) == 1836412265)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
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

    else
    {
      result = memcmp(__s1, "minimum", 7uLL);
      if (result)
      {
        result = memcmp(__s1, "std_dev", 7uLL);
        if (!result)
        {
          if (a4)
          {
            if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
            {
              v8 = a4;
            }

            else
            {
              v8 = 0;
            }

            v5[5] = v8;
          }

          else
          {
            v5[5] = 0;
          }
        }
      }

      else if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
        {
          v13 = a4;
        }

        else
        {
          v13 = 0;
        }

        v5[2] = v13;
      }

      else
      {
        v5[2] = 0;
      }
    }
  }

  return result;
}

void mlir::mps::RandomTruncatedNormalOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "maximum", 7, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "mean", 4, v5);
  }

  v6 = a2[2];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "minimum", 7, v6);
  }

  v7 = a2[3];
  if (v7)
  {
    mlir::NamedAttrList::append(a3, "result_element_type", 19, v7);
  }

  v8 = a2[4];
  if (v8)
  {
    mlir::NamedAttrList::append(a3, "sampling_method", 15, v8);
  }

  v9 = a2[5];
  if (v9)
  {

    mlir::NamedAttrList::append(a3, "std_dev", 7, v9);
  }
}

BOOL mlir::mps::RandomTruncatedNormalOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(v8, "maximum", 7, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(v9, "mean", 4, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(v10, "minimum", 7, a3, a4) & 1) != 0)
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || (mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps7(v11, "result_element_type", 0x13, a3, a4) & 1) != 0)
        {
          v12 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 32));
          if (!v12 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps39(v12, "sampling_method", 0xF, a3, a4) & 1) != 0)
          {
            v13 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 40));
            if (!v13 || (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(v13, "std_dev", 7, a3, a4) & 1) != 0)
            {
              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL mlir::mps::RandomTruncatedNormalOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::FloatAttr>(a1, *(a2 + 256)))
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
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::RandomTruncatedNormalOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::RandomTruncatedNormalOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v8;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::RandomTruncatedNormalOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::RandomTruncatedNormalOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v7;
    {
      mlir::mps::RandomTruncatedNormalOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::RandomTruncatedNormalOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = *(a2 + 256);
    if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::FloatAttr>(a1, v3))
    {
      return 0;
    }
  }

  if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::FloatAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::FloatAttr>(a1, v3 + 2) && (mlir::DialectBytecodeReader::readAttribute<mlir::TypeAttr>(a1, v3 + 3) & 1) != 0 && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::NormalSamplingMethodAttr>(a1, v3 + 4))
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::FloatAttr>(a1, v3 + 5);
  }

  return 0;
}

void mlir::mps::RandomTruncatedNormalOp::build(mlir::Float32Type **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10)
{
  v68 = *MEMORY[0x1E69E9840];
  v57 = a4;
  v58 = a3;
  mlir::OperationState::addOperands(a2, &v58, 1uLL);
  mlir::OperationState::addOperands(a2, &v57, 1uLL);
  v17 = mlir::TypeAttr::get(a5);
  v18 = *(a2 + 256);
  if (!v18)
  {
    v19 = operator new(0x30uLL);
    *v19 = 0u;
    v19[1] = 0u;
    v19[2] = 0u;
    *(a2 + 256) = v19;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::RandomTruncatedNormalOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::RandomTruncatedNormalOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::RandomTruncatedNormalOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::RandomTruncatedNormalOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::RandomTruncatedNormalOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::RandomTruncatedNormalOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v18 = *(a2 + 256);
  }

  *(v18 + 24) = v17;
  F32Type = mlir::Builder::getF32Type(a1, v16);
  FloatAttr = mlir::Builder::getFloatAttr(a1, F32Type, a6);
  v23 = *(a2 + 256);
  if (!v23)
  {
    v24 = operator new(0x30uLL);
    *v24 = 0u;
    v24[1] = 0u;
    v24[2] = 0u;
    *(a2 + 256) = v24;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::RandomTruncatedNormalOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::RandomTruncatedNormalOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::RandomTruncatedNormalOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::RandomTruncatedNormalOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::RandomTruncatedNormalOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::RandomTruncatedNormalOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v23 = *(a2 + 256);
  }

  *(v23 + 8) = FloatAttr;
  v25 = mlir::Builder::getF32Type(a1, v21);
  v27 = mlir::Builder::getFloatAttr(a1, v25, a7);
  v28 = *(a2 + 256);
  if (!v28)
  {
    v29 = operator new(0x30uLL);
    *v29 = 0u;
    v29[1] = 0u;
    v29[2] = 0u;
    *(a2 + 256) = v29;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::RandomTruncatedNormalOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::RandomTruncatedNormalOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::RandomTruncatedNormalOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::RandomTruncatedNormalOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::RandomTruncatedNormalOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::RandomTruncatedNormalOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v28 = *(a2 + 256);
  }

  *(v28 + 40) = v27;
  v30 = mlir::Builder::getF32Type(a1, v26);
  v32 = mlir::Builder::getFloatAttr(a1, v30, a8);
  v33 = *(a2 + 256);
  if (!v33)
  {
    v34 = operator new(0x30uLL);
    *v34 = 0u;
    v34[1] = 0u;
    v34[2] = 0u;
    *(a2 + 256) = v34;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::RandomTruncatedNormalOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::RandomTruncatedNormalOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::RandomTruncatedNormalOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::RandomTruncatedNormalOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::RandomTruncatedNormalOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::RandomTruncatedNormalOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v33 = *(a2 + 256);
  }

  *(v33 + 16) = v32;
  v35 = mlir::Builder::getF32Type(a1, v31);
  v36 = mlir::Builder::getFloatAttr(a1, v35, a9);
  v37 = *(a2 + 256);
  if (!v37)
  {
    v38 = operator new(0x30uLL);
    *v38 = 0u;
    v38[1] = 0u;
    v38[2] = 0u;
    *(a2 + 256) = v38;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::RandomTruncatedNormalOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::RandomTruncatedNormalOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::RandomTruncatedNormalOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::RandomTruncatedNormalOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::RandomTruncatedNormalOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::RandomTruncatedNormalOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v37 = *(a2 + 256);
  }

  *v37 = v36;
  v39 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v39);
  v64 = &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id;
  v65 = v39;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail31NormalSamplingMethodAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_24NormalSamplingMethodAttrEJNS2_20NormalSamplingMethodEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v62 = &v64;
  v60 = a10;
  v41 = 0x9DDFEA08EB382D69 * (((8 * a10) | 4) ^ a10 ^ 0xFF51AFD7ED558CCDLL);
  v42 = 0x9DDFEA08EB382D69 * (a10 ^ 0xFF51AFD7ED558CCDLL ^ (v41 >> 47) ^ v41);
  v59 = &v60;
  v66 = &v60;
  p_src = &__src;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id, -348639895 * ((v42 >> 47) ^ v42), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::NormalSamplingMethodAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::NormalSamplingMethodAttrStorage,mlir::mps::NormalSamplingMethod>(llvm::function_ref<void ()(mlir::mps::detail::NormalSamplingMethodAttrStorage *)>,mlir::TypeID,mlir::mps::NormalSamplingMethod &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v59, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::NormalSamplingMethodAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::NormalSamplingMethodAttrStorage,mlir::mps::NormalSamplingMethod>(llvm::function_ref<void ()(mlir::mps::detail::NormalSamplingMethodAttrStorage *)>,mlir::TypeID,mlir::mps::NormalSamplingMethod &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v66);
  v44 = *(a2 + 256);
  if (!v44)
  {
    v45 = operator new(0x30uLL);
    *v45 = 0u;
    v45[1] = 0u;
    v45[2] = 0u;
    *(a2 + 256) = v45;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::RandomTruncatedNormalOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::RandomTruncatedNormalOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::RandomTruncatedNormalOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::RandomTruncatedNormalOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::RandomTruncatedNormalOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::RandomTruncatedNormalOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v44 = *(a2 + 256);
  }

  *(v44 + 32) = ParametricStorageTypeImpl;
  __src = v63;
  v62 = 0x200000000;
  mlir::ValueRange::ValueRange(&v66, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v48 = *(a2 + 256);
  v49 = mlir::ValueRange::ValueRange(&v64, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::RandomTruncatedNormalOp::inferReturnTypes(v49, v50, v51, v66, p_src, Dictionary, v48, v52, v64, v65, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v53 = __src;
  v54 = v62;
  v55 = *(a2 + 72);
  v56 = v55 + v62;
  if (v56 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v56, 8);
    LODWORD(v55) = *(a2 + 72);
  }

  if (v54)
  {
    memcpy((*(a2 + 64) + 8 * v55), v53, 8 * v54);
    LODWORD(v55) = *(a2 + 72);
  }

  *(a2 + 72) = v55 + v54;
  if (__src != v63)
  {
    free(__src);
  }
}

mlir::MLIRContext *mlir::mps::RandomTruncatedNormalOp::populateDefaultProperties(uint64_t a1, mlir::MLIRContext **a2)
{
  v16[0] = *(a1 + 8);
  result = mlir::Attribute::getContext(v16);
  v11 = result;
  if (a2[1])
  {
    if (a2[5])
    {
      goto LABEL_3;
    }
  }

  else
  {
    F32Type = mlir::Builder::getF32Type(&v11, v4);
    result = mlir::Builder::getFloatAttr(0.0, &v11, F32Type);
    a2[1] = result;
    if (a2[5])
    {
LABEL_3:
      if (a2[2])
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  v6 = mlir::Builder::getF32Type(&v11, v4);
  result = mlir::Builder::getFloatAttr(1.0, &v11, v6);
  a2[5] = result;
  if (a2[2])
  {
LABEL_4:
    if (*a2)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  v7 = mlir::Builder::getF32Type(&v11, v4);
  result = mlir::Builder::getFloatAttr(-2.0, &v11, v7);
  a2[2] = result;
  if (*a2)
  {
LABEL_5:
    if (a2[4])
    {
      return result;
    }

LABEL_11:
    v9 = v11;
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v11);
    v12[0] = &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id;
    v12[1] = v9;
    v16[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail31NormalSamplingMethodAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_24NormalSamplingMethodAttrEJNS2_20NormalSamplingMethodEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
    v16[1] = v12;
    v15 = 0;
    v13[0] = &v15;
    v13[1] = v16;
    v14 = &v15;
    result = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id, 0x9B663A60, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::NormalSamplingMethodAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::NormalSamplingMethodAttrStorage,mlir::mps::NormalSamplingMethod>(llvm::function_ref<void ()(mlir::mps::detail::NormalSamplingMethodAttrStorage *)>,mlir::TypeID,mlir::mps::NormalSamplingMethod &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v14, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::NormalSamplingMethodAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::NormalSamplingMethodAttrStorage,mlir::mps::NormalSamplingMethod>(llvm::function_ref<void ()(mlir::mps::detail::NormalSamplingMethodAttrStorage *)>,mlir::TypeID,mlir::mps::NormalSamplingMethod &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v13);
    a2[4] = result;
    return result;
  }

LABEL_10:
  v8 = mlir::Builder::getF32Type(&v11, v4);
  result = mlir::Builder::getFloatAttr(2.0, &v11, v8);
  *a2 = result;
  if (!a2[4])
  {
    goto LABEL_11;
  }

  return result;
}

BOOL mlir::mps::RandomTruncatedNormalOp::verifyInvariantsImpl(mlir::mps::RandomTruncatedNormalOp *this)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  v6 = *(v3 + 64);
  v4 = (v3 + 64);
  v5 = v6;
  v7 = v4[3];
  if (v7)
  {
    v9 = v4[1];
    v8 = v4[2];
    v10 = v4[4];
    v11 = v4[5];
    v26[0] = v2;
    if (mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps7(v7, "result_element_type", 0x13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v26) & 1) != 0 && (v26[0] = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(v9, "mean", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v26)) && (v26[0] = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(v11, "std_dev", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v26)) && (v26[0] = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(v8, "minimum", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v26)) && (v26[0] = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(v5, "maximum", 7, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps21(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v26)) && (v26[0] = *this, (mlir::mps::__mlir_ods_local_attr_constraint_MPSOps39(v10, "sampling_method", 0xF, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps39(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v26)) && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) != 0 && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
    {
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

    else
    {
      return 0;
    }
  }

  else
  {
    v24 = "requires attribute 'result_element_type'";
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

uint64_t *mlir::RewritePatternSet::add<mlir::mps::RandomTruncatedNormalOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.random_truncated_normal", 27, a3, v10, a4, a5);
  *v11 = &unk_1F5B2A9E0;
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

uint64_t mlir::mps::RandomUniformOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v56.var0 = "result_element_type";
  v56.var1 = 19;
  v8 = mlir::DictionaryAttr::get(&v40, v56);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v44, a4);
  if (v44[0])
  {
    v41 = 3;
    v43 = 64;
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

uint64_t mlir::mps::RandomUniformOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v13, "result_element_type", 19, *a2);
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

uint64_t mlir::mps::RandomUniformOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::TypeAttr>(a1, v3) & 1;
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::RandomUniformOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::RandomUniformOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::RandomUniformOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::RandomUniformOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::mps::RandomUniformOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::RandomUniformOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readAttribute<mlir::TypeAttr>(a1, *(a2 + 256)) & 1;
}

void mlir::mps::RandomUniformOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31[2] = *MEMORY[0x1E69E9840];
  v25 = a4;
  v26 = a3;
  v23 = a6;
  v24 = a5;
  mlir::OperationState::addOperands(a2, &v26, 1uLL);
  mlir::OperationState::addOperands(a2, &v25, 1uLL);
  mlir::OperationState::addOperands(a2, &v24, 1uLL);
  mlir::OperationState::addOperands(a2, &v23, 1uLL);
  v9 = mlir::TypeAttr::get(a7);
  v10 = *(a2 + 256);
  if (!v10)
  {
    v11 = operator new(8uLL);
    *v11 = 0;
    *(a2 + 256) = v11;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::RandomUniformOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::RandomUniformOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::RandomUniformOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::RandomUniformOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::RandomUniformOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::RandomUniformOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v10 = *(a2 + 256);
  }

  *v10 = v9;
  __src = v31;
  v30 = 0x200000000;
  mlir::ValueRange::ValueRange(v28, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v14 = *(a2 + 256);
  v15 = mlir::ValueRange::ValueRange(v27, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::RandomUniformOp::inferReturnTypes(v15, v16, v17, v28[0], v28[1], Dictionary, v14, v18, v27[0], v27[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v19 = __src;
  v20 = v30;
  v21 = *(a2 + 72);
  v22 = v21 + v30;
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
  if (__src != v31)
  {
    free(__src);
  }
}

void mlir::mps::RandomUniformOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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
      v18 = operator new(8uLL);
      *v18 = 0;
      *(a2 + 256) = v18;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::RandomUniformOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::RandomUniformOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &v24;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::RandomUniformOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::RandomUniformOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &v23;
      {
        mlir::mps::RandomUniformOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::RandomUniformOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
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

BOOL mlir::mps::RandomUniformOp::verifyInvariantsImpl(mlir::mps::RandomUniformOp *this)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v18[0] = v2;
    if (mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps7(v3, "result_element_type", 0x13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v18) & 1) != 0 && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) != 0 && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) != 0 && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps44(*this, (*(*(*(*this + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) != 0 && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps44(*this, (*(*(*(*this + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u))
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
      return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v16 = "requires attribute 'result_element_type'";
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

uint64_t mlir::mps::__mlir_ods_local_type_constraint_MPSOps44(uint64_t a1, void *a2, void *a3, uint64_t a4, unsigned int a5)
{
  v143 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_2;
  }

  {
    v22 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v23 = *(v10 + 8);
    v24 = *(v10 + 16);
    if (!v24)
    {
      goto LABEL_105;
    }
  }

  else
  {
    v84 = v10;
    getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
    v22 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v23 = *(v84 + 8);
    v24 = *(v84 + 16);
    if (!v24)
    {
      goto LABEL_105;
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
  if (v25 == &v23[2 * v24] || *v25 != v22)
  {
LABEL_105:
    v130 = a2;
    v131 = 0;
    ArgOperands = mlir::CallOpInterface::getArgOperands(&v130);
    v10 = *a2;
    if (!ArgOperands)
    {
      goto LABEL_2;
    }

    goto LABEL_108;
  }

  v86 = v25[1];
  v130 = a2;
  v131 = v86;
  v87 = mlir::CallOpInterface::getArgOperands(&v130);
  v10 = *a2;
  if (!v87)
  {
    goto LABEL_2;
  }

LABEL_108:
  {
    v88 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v89 = *(v10 + 8);
    v90 = *(v10 + 16);
    if (!v90)
    {
      goto LABEL_131;
    }
  }

  else
  {
    v119 = v10;
    mlir::arith::ExtUIOp::fold();
    v88 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v89 = *(v119 + 8);
    v90 = *(v119 + 16);
    if (!v90)
    {
      goto LABEL_131;
    }
  }

  v91 = v89;
  v92 = v90;
  do
  {
    v93 = v92 >> 1;
    v94 = &v91[2 * (v92 >> 1)];
    v96 = *v94;
    v95 = v94 + 2;
    v92 += ~(v92 >> 1);
    if (v96 < v88)
    {
      v91 = v95;
    }

    else
    {
      v92 = v93;
    }
  }

  while (v92);
  if (v91 != &v89[2 * v90] && *v91 == v88)
  {
    v99 = v91[1];
    v120 = a2;
    v121 = v99;
    mlir::CallableOpInterface::getArgAttrsAttr(&v120);
    v10 = *a2;
    if (!v100)
    {
      goto LABEL_134;
    }

LABEL_2:
    v11 = *(v10 + 136);
    if (v11 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      goto LABEL_51;
    }

    goto LABEL_7;
  }

LABEL_131:
  v120 = a2;
  v121 = 0;
  mlir::CallableOpInterface::getArgAttrsAttr(&v120);
  v10 = *a2;
  if (v98)
  {
    goto LABEL_2;
  }

LABEL_134:
  {
    v101 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v102 = *(v10 + 8);
    v103 = *(v10 + 16);
    if (!v103)
    {
      goto LABEL_147;
    }
  }

  else
  {
    v111 = v10;
    mlir::arith::ExtUIOp::fold();
    v101 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v102 = *(v111 + 8);
    v103 = *(v111 + 16);
    if (!v103)
    {
      goto LABEL_147;
    }
  }

  v104 = v102;
  v105 = v103;
  do
  {
    v106 = v105 >> 1;
    v107 = &v104[2 * (v105 >> 1)];
    v109 = *v107;
    v108 = v107 + 2;
    v105 += ~(v105 >> 1);
    if (v109 < v101)
    {
      v104 = v108;
    }

    else
    {
      v105 = v106;
    }
  }

  while (v105);
  if (v104 != &v102[2 * v103] && *v104 == v101)
  {
    v112 = v104[1];
    goto LABEL_149;
  }

LABEL_147:
  v112 = 0;
LABEL_149:
  v127 = a2;
  v128 = v112;
  isSplat = mlir::ElementsAttr::isSplat(&v127);
  if (mlir::Type::isF16(&isSplat) || mlir::Type::isF32(&isSplat) || mlir::Type::isBF16(&isSplat) || mlir::Type::isSignedInteger(&isSplat, 32) || mlir::Type::isSignedInteger(&isSplat, 64))
  {
    return 1;
  }

  v10 = *a2;
  v114 = *(*a2 + 136);
  if (v114 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v114 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_51;
  }

LABEL_7:
  {
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v10 + 8);
    v15 = *(v10 + 16);
    if (!v15)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v31 = v10;
    mlir::arith::ExtUIOp::fold();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v31 + 8);
    v15 = *(v31 + 16);
    if (!v15)
    {
      goto LABEL_28;
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
    v32 = v16[1];
    goto LABEL_30;
  }

LABEL_28:
  v32 = 0;
LABEL_30:
  v125[0] = a2;
  v125[1] = v32;
  isSplat = mlir::ElementsAttr::isSplat(v125);
  if (!mlir::Type::isF16(&isSplat) && !mlir::Type::isF32(&isSplat) && !mlir::Type::isBF16(&isSplat) && !mlir::Type::isSignedInteger(&isSplat, 32) && !mlir::Type::isSignedInteger(&isSplat, 64))
  {
    goto LABEL_51;
  }

  v33 = *a2;
  {
    v34 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v35 = *(v33 + 8);
    v36 = *(v33 + 16);
    if (!v36)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v43 = v33;
    mlir::arith::ExtUIOp::fold();
    v34 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v35 = *(v43 + 8);
    v36 = *(v43 + 16);
    if (!v36)
    {
      goto LABEL_47;
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
    v44 = v37[1];
    goto LABEL_49;
  }

LABEL_47:
  v44 = 0;
LABEL_49:
  v124[0] = a2;
  v124[1] = v44;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v124);
  v142 = 1;
  if (v46 == 1 && *ArgAttrsAttr == v142)
  {
    return 1;
  }

LABEL_51:
  v47 = *a2;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    {
      v75 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v76 = *(v47 + 8);
      v77 = *(v47 + 16);
      if (!v77)
      {
        goto LABEL_120;
      }
    }

    else
    {
      mlir::arith::ExtUIOp::fold();
      v75 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v76 = *(v47 + 8);
      v77 = *(v47 + 16);
      if (!v77)
      {
        goto LABEL_120;
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
      v97 = v78[1];
      goto LABEL_122;
    }

LABEL_120:
    v97 = 0;
LABEL_122:
    v123[0] = a2;
    v123[1] = v97;
    isSplat = mlir::ElementsAttr::isSplat(v123);
    if (!mlir::Type::isF16(&isSplat) && !mlir::Type::isF32(&isSplat) && !mlir::Type::isBF16(&isSplat) && !mlir::Type::isSignedInteger(&isSplat, 32) && !mlir::Type::isSignedInteger(&isSplat, 64))
    {
      goto LABEL_52;
    }

    return 1;
  }

LABEL_52:
  v122 = 261;
  v120 = a3;
  v121 = a4;
  mlir::Operation::emitOpError(a1, &v120, &v130);
  if (v130)
  {
    LODWORD(v127) = 3;
    v128 = " #";
    v129 = 2;
    v48 = &v127;
    v49 = v132;
    if (v133 >= v134)
    {
      if (v132 <= &v127 && v132 + 24 * v133 > &v127)
      {
        v110 = &v127 - v132;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v135, v133 + 1, 24);
        v49 = v132;
        v48 = v132 + v110;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v135, v133 + 1, 24);
        v48 = &v127;
        v49 = v132;
      }
    }

    v50 = &v49[24 * v133];
    v51 = *v48;
    *(v50 + 2) = *(v48 + 2);
    *v50 = v51;
    v52 = ++v133;
    if (v130)
    {
      LODWORD(v127) = 5;
      v128 = a5;
      v53 = &v127;
      v54 = v132;
      if (v52 >= v134)
      {
        if (v132 <= &v127 && v132 + 24 * v52 > &v127)
        {
          v116 = &v127 - v132;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v135, v52 + 1, 24);
          v54 = v132;
          v53 = v132 + v116;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v135, v52 + 1, 24);
          v53 = &v127;
          v54 = v132;
        }
      }

      v55 = &v54[24 * v133];
      v56 = *v53;
      *(v55 + 2) = *(v53 + 2);
      *v55 = v56;
      v57 = ++v133;
      if (v130)
      {
        LODWORD(v127) = 3;
        v128 = " must be 0D tensor of floating point or 32/64-bit signed integer values or static-shape defined tensor with shape equal to [1] or unranked tensor of floating point or 32/64-bit signed integer values, but got ";
        v129 = 208;
        v58 = &v127;
        v59 = v132;
        if (v57 >= v134)
        {
          if (v132 <= &v127 && v132 + 24 * v57 > &v127)
          {
            v117 = &v127 - v132;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v135, v57 + 1, 24);
            v59 = v132;
            v58 = v132 + v117;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v135, v57 + 1, 24);
            v58 = &v127;
            v59 = v132;
          }
        }

        v60 = &v59[24 * v133];
        v61 = *v58;
        *(v60 + 2) = *(v58 + 2);
        *v60 = v61;
        ++v133;
        if (v130)
        {
          v62 = &v127;
          mlir::DiagnosticArgument::DiagnosticArgument(&v127, a2);
          v63 = v132;
          if (v133 >= v134)
          {
            if (v132 <= &v127 && v132 + 24 * v133 > &v127)
            {
              v118 = &v127 - v132;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v135, v133 + 1, 24);
              v63 = v132;
              v62 = v132 + v118;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v135, v133 + 1, 24);
              v62 = &v127;
              v63 = v132;
            }
          }

          v64 = &v63[24 * v133];
          v65 = *v62;
          *(v64 + 2) = *(v62 + 2);
          *v64 = v65;
          ++v133;
        }
      }
    }
  }

  v66 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v130);
  if (v130)
  {
    mlir::InFlightDiagnostic::report(&v130);
  }

  if (v141 == 1)
  {
    if (v140 != &v141)
    {
      free(v140);
    }

    v67 = __p;
    if (__p)
    {
      v68 = v139;
      v69 = __p;
      if (v139 != __p)
      {
        do
        {
          v68 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v68 - 1);
        }

        while (v68 != v67);
        v69 = __p;
      }

      v139 = v67;
      operator delete(v69);
    }

    v70 = v136;
    if (v136)
    {
      v71 = v137;
      v72 = v136;
      if (v137 != v136)
      {
        do
        {
          v74 = *--v71;
          v73 = v74;
          *v71 = 0;
          if (v74)
          {
            operator delete[](v73);
          }
        }

        while (v71 != v70);
        v72 = v136;
      }

      v137 = v70;
      operator delete(v72);
    }

    if (v132 != v135)
    {
      free(v132);
    }
  }

  return v66;
}