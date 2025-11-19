void mlir::cf::CondBranchOp::getSuccessorOperands(mlir::cf::CondBranchOp *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v25[3] = *MEMORY[0x1E69E9840];
  v5 = *this;
  v6 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  v8 = *(v6 + 64);
  v9 = *(v6 + 68);
  v7 = v6 + 64;
  if (a2)
  {
    v10 = *(v7 + 8);
    v11 = *(*(*(v5 + 48) + 96) + 8 * *(*(v5 + 48) + 104) - 8);
    Context = mlir::Attribute::getContext((v5 + 24));
    v13 = mlir::detail::DenseArrayAttrImpl<int>::get(Context, (*this + 16 * ((*(*this + 44) >> 23) & 1) + 64), 3);
    mlir::NamedAttribute::NamedAttribute(&v20, v11, v13);
    v21 = 2;
    v22 = v20;
    v14 = v9 + v8;
    v15 = v5;
    v16 = v10;
  }

  else
  {
    v17 = *(*(*(v5 + 48) + 96) + 8 * *(*(v5 + 48) + 104) - 8);
    v18 = mlir::Attribute::getContext((v5 + 24));
    v19 = mlir::detail::DenseArrayAttrImpl<int>::get(v18, (*this + 16 * ((*(*this + 44) >> 23) & 1) + 64), 3);
    mlir::NamedAttribute::NamedAttribute(&v20, v17, v19);
    v21 = 1;
    v22 = v20;
    v15 = v5;
    v14 = v8;
    v16 = v9;
  }

  mlir::MutableOperandRange::MutableOperandRange(&v23, v15, v14, v16, &v21, 1);
  mlir::SuccessorOperands::SuccessorOperands(a3, &v23);
  if (v24 != v25)
  {
    free(v24);
  }
}

void mlir::cf::SwitchOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v61[6] = *MEMORY[0x1E69E9840];
  v57 = a3;
  mlir::OperationState::addOperands(a2, &v57, 1uLL);
  mlir::OperationState::addOperands(a2, a4, a5);
  v18 = (a6 + 16 * a7);
  if (a7)
  {
    v56 = a5;
    a5 = a8;
    v19 = a6;
    do
    {
      v20 = *v19;
      v21 = v19[1];
      v19 += 2;
      mlir::OperationState::addOperands(a2, v20, v21);
    }

    while (v19 != v18);
    LODWORD(v22) = 0;
    v59 = v61;
    v60 = 0xC00000000;
    v23 = 16 * a7;
    v24 = (a6 + 8);
    do
    {
      v26 = *v24;
      v24 += 4;
      v25 = v26;
      if (v22 >= HIDWORD(v60))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v59, v61, v22 + 1, 4);
        LODWORD(v22) = v60;
      }

      *(v59 + v22) = v25;
      v22 = (v60 + 1);
      LODWORD(v60) = v60 + 1;
      v23 -= 16;
    }

    while (v23);
    a8 = a5;
    LODWORD(a5) = v56;
    DenseI32ArrayAttr = mlir::Builder::getDenseI32ArrayAttr(a1, v59, v22);
    v28 = *(a2 + 256);
    if (v28)
    {
LABEL_9:
      *v28 = DenseI32ArrayAttr;
      v29 = v59;
      if (v59 == v61)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v59 = v61;
    v60 = 0xC00000000;
    DenseI32ArrayAttr = mlir::Builder::getDenseI32ArrayAttr(a1, v61, 0);
    v28 = *(a2 + 256);
    if (v28)
    {
      goto LABEL_9;
    }
  }

  v32 = operator new(0x20uLL);
  v32[1] = 0;
  v32[2] = 0;
  *v32 = 0;
  *(v32 + 6) = 0;
  *(a2 + 256) = v32;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v58;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v58;
  {
    mlir::cf::SwitchOp::build();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  **(a2 + 256) = DenseI32ArrayAttr;
  v29 = v59;
  if (v59 != v61)
  {
LABEL_10:
    free(v29);
  }

LABEL_11:
  if (a7)
  {
    v30 = (a7 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v30 >= 8)
    {
      v33 = v30 + 1;
      v34 = v33 & 7;
      if ((v33 & 7) == 0)
      {
        v34 = 8;
      }

      v35 = v33 - v34;
      v31 = a6 + 16 * v35;
      v36 = (a6 + 72);
      v37 = 0uLL;
      v38 = 0uLL;
      do
      {
        v39 = v36 - 8;
        v40 = vld2q_f64(v39);
        v41 = v36 - 4;
        v42 = vld2q_f64(v41);
        v43 = v36 + 16;
        v45 = vld2q_f64(v36);
        v44 = v36 + 4;
        v46 = vld2q_f64(v44);
        v37 = vaddq_s32(v37, vuzp1q_s32(v40, v42));
        v38 = vaddq_s32(v38, vuzp1q_s32(v45, v46));
        v36 = v43;
        v35 -= 8;
      }

      while (v35);
      LODWORD(a7) = vaddvq_s32(vaddq_s32(v38, v37));
    }

    else
    {
      LODWORD(a7) = 0;
      v31 = a6;
    }

    do
    {
      LODWORD(a7) = a7 + *(v31 + 8);
      v31 += 16;
    }

    while (v31 != v18);
  }

  v47 = *(a2 + 256);
  if (!v47)
  {
    v48 = operator new(0x20uLL);
    v48[1] = 0;
    v48[2] = 0;
    *v48 = 0;
    *(v48 + 6) = 0;
    *(a2 + 256) = v48;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v59;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v59;
    {
      mlir::cf::SwitchOp::build();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v47 = *(a2 + 256);
  }

  v49 = a10;
  v50 = a11;
  v47[4] = 1;
  v47[5] = a5;
  v47[6] = a7;
  if (a8)
  {
    v51 = *(a2 + 256);
    if (!v51)
    {
      v52 = operator new(0x20uLL);
      v52[1] = 0;
      v52[2] = 0;
      *v52 = 0;
      *(v52 + 6) = 0;
      *(a2 + 256) = v52;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &v59;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &v59;
      {
        mlir::cf::SwitchOp::build();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v51 = *(a2 + 256);
      v50 = a11;
      v49 = a10;
    }

    *(v51 + 8) = a8;
  }

  v53 = *(a2 + 208);
  if (v53 >= *(a2 + 212))
  {
    v54 = v49;
    v55 = v50;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 200, a2 + 216, v53 + 1, 8);
    v49 = v54;
    v50 = v55;
    LODWORD(v53) = *(a2 + 208);
  }

  *(*(a2 + 200) + 8 * v53) = a9;
  ++*(a2 + 208);
  mlir::OperationState::addSuccessors(a2, v49, v50);
}

void mlir::cf::SwitchOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a8)
  {
    v15 = a8;
    v31 = a2;
    v32 = a1;
    v33 = a8;
    v30 = a3;
    v17 = mlir::VectorType::get(&v33, 1uLL, *(a3 + 8) & 0xFFFFFFFFFFFFFFF8, 0, 0);
    if (v17)
    {
      v18 = *v17;
      {
        v19 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        if (!v21)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v29 = v17;
        mlir::cf::SwitchOp::build();
        v17 = v29;
        v19 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        if (!v21)
        {
          goto LABEL_15;
        }
      }

      v22 = v20;
      v23 = v21;
      do
      {
        v24 = v23 >> 1;
        v25 = &v22[2 * (v23 >> 1)];
        v27 = *v25;
        v26 = v25 + 2;
        v23 += ~(v23 >> 1);
        if (v27 < v19)
        {
          v22 = v26;
        }

        else
        {
          v23 = v24;
        }
      }

      while (v23);
      if (v22 != &v20[2 * v21] && *v22 == v19)
      {
        v28 = v22[1];
        goto LABEL_16;
      }
    }

LABEL_15:
    v28 = 0;
LABEL_16:
    a8 = mlir::DenseElementsAttr::get(v17, v28, a7, v15);
    a3 = v30;
    a2 = v31;
    a1 = v32;
  }

  mlir::cf::SwitchOp::build(a1, a2, a3, a5, a6, a11, a12, a8, a4, a9, a10);
}

BOOL mlir::cf::SwitchOp::verify(Operation **this)
{
  v100 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v83 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9);
  v84 = v83 != 0;
  mlir::SuccessorRange::SuccessorRange(&Value, v2);
  mlir::SuccessorRange::SuccessorRange(&Value, *this);
  v3 = (v89 - 1);
  if (v83)
  {
    v4 = 0;
  }

  else
  {
    v4 = v89 == 1;
  }

  if (v4)
  {
    return 1;
  }

  v5 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  Value = mlir::ArrayAttr::getValue(&v83);
  v89 = v6;
  isSplat = mlir::ElementsAttr::isSplat(&Value);
  if (isSplat == v5)
  {
    if (!v84 || mlir::DenseElementsAttr::getNumElements(&v83) == v3)
    {
      return 1;
    }

    v82 = 257;
    mlir::OpState::emitOpError(this, v81, &Value);
    if (Value)
    {
      v85 = 3;
      v86 = "number of case values (";
      v87 = 23;
      v41 = &v85;
      v42 = v90;
      if (v91 >= v92)
      {
        if (v90 <= &v85 && v90 + 24 * v91 > &v85)
        {
          v74 = &v85 - v90;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v91 + 1, 24);
          v42 = v90;
          v41 = (v90 + v74);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v91 + 1, 24);
          v41 = &v85;
          v42 = v90;
        }
      }

      v43 = &v42[24 * v91];
      v44 = *v41;
      *(v43 + 2) = *(v41 + 2);
      *v43 = v44;
      ++v91;
    }

    NumElements = mlir::DenseElementsAttr::getNumElements(&v83);
    if (Value)
    {
      v85 = 2;
      v86 = NumElements;
      v46 = &v85;
      v47 = v90;
      if (v91 >= v92)
      {
        if (v90 <= &v85 && v90 + 24 * v91 > &v85)
        {
          v75 = &v85 - v90;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v91 + 1, 24);
          v47 = v90;
          v46 = (v90 + v75);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v91 + 1, 24);
          v46 = &v85;
          v47 = v90;
        }
      }

      v48 = &v47[24 * v91];
      v49 = *v46;
      *(v48 + 2) = *(v46 + 2);
      *v48 = v49;
      v50 = ++v91;
      if (Value)
      {
        v85 = 3;
        v86 = ") should match number of case destinations (";
        v87 = 44;
        v51 = &v85;
        v52 = v90;
        if (v50 >= v92)
        {
          if (v90 <= &v85 && v90 + 24 * v50 > &v85)
          {
            v77 = &v85 - v90;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v50 + 1, 24);
            v52 = v90;
            v51 = (v90 + v77);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v50 + 1, 24);
            v51 = &v85;
            v52 = v90;
          }
        }

        v53 = &v52[24 * v91];
        v54 = *v51;
        *(v53 + 2) = *(v51 + 2);
        *v53 = v54;
        v55 = ++v91;
        if (Value)
        {
          v85 = 5;
          v86 = v3;
          v56 = &v85;
          v57 = v90;
          if (v55 >= v92)
          {
            if (v90 <= &v85 && v90 + 24 * v55 > &v85)
            {
              v79 = &v85 - v90;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v55 + 1, 24);
              v57 = v90;
              v56 = (v90 + v79);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v55 + 1, 24);
              v56 = &v85;
              v57 = v90;
            }
          }

          v58 = &v57[24 * v91];
          v59 = *v56;
          *(v58 + 2) = *(v56 + 2);
          *v58 = v59;
          v60 = ++v91;
          if (Value)
          {
            v85 = 3;
            v86 = ")";
            v87 = 1;
            v61 = &v85;
            v62 = v90;
            if (v60 >= v92)
            {
              if (v90 <= &v85 && v90 + 24 * v60 > &v85)
              {
                v80 = &v85 - v90;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v60 + 1, 24);
                v62 = v90;
                v61 = (v90 + v80);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v60 + 1, 24);
                v61 = &v85;
                v62 = v90;
              }
            }

            v63 = &v62[24 * v91];
            v64 = *v61;
            *(v63 + 2) = *(v61 + 2);
            *v63 = v64;
            ++v91;
          }
        }
      }
    }

    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v99 == 1)
    {
      if (v98 != &v99)
      {
        free(v98);
      }

      v65 = __p;
      if (__p)
      {
        v66 = v97;
        v67 = __p;
        if (v97 != __p)
        {
          do
          {
            v66 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v66 - 1);
          }

          while (v66 != v65);
          v67 = __p;
        }

        v97 = v65;
        operator delete(v67);
      }

      v36 = v94;
      if (!v94)
      {
        goto LABEL_67;
      }

      v68 = v95;
      v38 = v94;
      if (v95 == v94)
      {
LABEL_66:
        v95 = v36;
        operator delete(v38);
LABEL_67:
        if (v90 != v93)
        {
          free(v90);
        }

        return v8;
      }

      do
      {
        v70 = *--v68;
        v69 = v70;
        *v68 = 0;
        if (v70)
        {
          operator delete[](v69);
        }
      }

      while (v68 != v36);
LABEL_65:
      v38 = v94;
      goto LABEL_66;
    }
  }

  else
  {
    v10 = isSplat;
    v82 = 257;
    mlir::OpState::emitOpError(this, v81, &Value);
    if (Value)
    {
      v85 = 3;
      v86 = "'flag' type (";
      v87 = 13;
      v11 = &v85;
      v12 = v90;
      if (v91 >= v92)
      {
        if (v90 <= &v85 && v90 + 24 * v91 > &v85)
        {
          v71 = &v85 - v90;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v91 + 1, 24);
          v12 = v90;
          v11 = (v90 + v71);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v91 + 1, 24);
          v11 = &v85;
          v12 = v90;
        }
      }

      v13 = &v12[24 * v91];
      v14 = *v11;
      *(v13 + 2) = *(v11 + 2);
      *v13 = v14;
      ++v91;
      if (Value)
      {
        v15 = &v85;
        mlir::DiagnosticArgument::DiagnosticArgument(&v85, v5);
        v16 = v90;
        if (v91 >= v92)
        {
          if (v90 <= &v85 && v90 + 24 * v91 > &v85)
          {
            v72 = &v85 - v90;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v91 + 1, 24);
            v16 = v90;
            v15 = (v90 + v72);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v91 + 1, 24);
            v15 = &v85;
            v16 = v90;
          }
        }

        v17 = &v16[24 * v91];
        v18 = *v15;
        *(v17 + 2) = *(v15 + 2);
        *v17 = v18;
        v19 = ++v91;
        if (Value)
        {
          v85 = 3;
          v86 = ") should match case value type (";
          v87 = 32;
          v20 = &v85;
          v21 = v90;
          if (v19 >= v92)
          {
            if (v90 <= &v85 && v90 + 24 * v19 > &v85)
            {
              v73 = &v85 - v90;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v19 + 1, 24);
              v21 = v90;
              v20 = (v90 + v73);
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
          if (Value)
          {
            v24 = &v85;
            mlir::DiagnosticArgument::DiagnosticArgument(&v85, v10);
            v25 = v90;
            if (v91 >= v92)
            {
              if (v90 <= &v85 && v90 + 24 * v91 > &v85)
              {
                v76 = &v85 - v90;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v91 + 1, 24);
                v25 = v90;
                v24 = (v90 + v76);
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
            v28 = ++v91;
            if (Value)
            {
              v85 = 3;
              v86 = ")";
              v87 = 1;
              v29 = &v85;
              v30 = v90;
              if (v28 >= v92)
              {
                if (v90 <= &v85 && v90 + 24 * v28 > &v85)
                {
                  v78 = &v85 - v90;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v28 + 1, 24);
                  v30 = v90;
                  v29 = (v90 + v78);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v90, v93, v28 + 1, 24);
                  v29 = &v85;
                  v30 = v90;
                }
              }

              v31 = &v30[24 * v91];
              v32 = *v29;
              *(v31 + 2) = *(v29 + 2);
              *v31 = v32;
              ++v91;
            }
          }
        }
      }
    }

    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v99 == 1)
    {
      if (v98 != &v99)
      {
        free(v98);
      }

      v33 = __p;
      if (__p)
      {
        v34 = v97;
        v35 = __p;
        if (v97 != __p)
        {
          do
          {
            v34 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v34 - 1);
          }

          while (v34 != v33);
          v35 = __p;
        }

        v97 = v33;
        operator delete(v35);
      }

      v36 = v94;
      if (!v94)
      {
        goto LABEL_67;
      }

      v37 = v95;
      v38 = v94;
      if (v95 == v94)
      {
        goto LABEL_66;
      }

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
      goto LABEL_65;
    }
  }

  return v8;
}

void mlir::cf::SwitchOp::getSuccessorOperands(mlir::Operation **this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v20[7] = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v6 = *this;
    v7 = *this + 16 * ((*(*this + 11) >> 23) & 1);
    v8 = *(v7 + 80);
    v9 = *(v7 + 84);
    v10 = *(*(*(*this + 6) + 96) + 8 * *(*(*this + 6) + 104) - 8);
    Context = mlir::Attribute::getContext((*this + 24));
    v13 = mlir::detail::DenseArrayAttrImpl<int>::get(Context, *this + 2 * ((*(*this + 11) >> 23) & 1) + 10, 3);
    mlir::NamedAttribute::NamedAttribute(&v14, v10, v13);
    v18 = 1;
    v19 = v14;
    mlir::MutableOperandRange::MutableOperandRange(&v15, v6, v8, v9, &v18, 1);
    mlir::SuccessorOperands::SuccessorOperands(a3, &v15);
    v5 = v16;
    if (v16 == v17)
    {
      return;
    }

    goto LABEL_5;
  }

  v4 = (a2 - 1);
  mlir::cf::SwitchOp::getCaseOperandsMutable(this, &v18);
  mlir::MutableOperandRangeRange::dereference(&v18, v20[5] + v4, &v15);
  if (*(&v19 + 1) != v20)
  {
    free(*(&v19 + 1));
  }

  mlir::SuccessorOperands::SuccessorOperands(a3, &v15);
  v5 = v16;
  if (v16 != v17)
  {
LABEL_5:
    free(v5);
  }
}

uint64_t *mlir::cf::SwitchOp::getSuccessorForOperands(Operation **a1, uint64_t *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *(*a1 + 11);
  v5 = *a1 + 16 * ((v4 >> 23) & 1) + 64;
  v21 = *(v5 + 8);
  v22 = v21 != 0;
  if (!v21)
  {
    v10 = v5 + ((v4 >> 21) & 0x7F8) + 7;
    return *((v10 & 0xFFFFFFFFFFFFFFF8) + 24);
  }

  mlir::SuccessorRange::SuccessorRange(v18, v3);
  v7 = *v18;
  mlir::SuccessorRange::SuccessorRange(v18, *a1);
  v8 = *a2;
  if (*a2)
  {
    v9 = *(*v8 + 136);
    if (v9 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v8 = 0;
    }

    v20 = v8;
    if (v9 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      mlir::DenseElementsAttr::getValues<llvm::APInt>(&v21, v18);
      v25 = *v18;
      v26 = *&v18[16];
      v27 = *&v18[32];
      *&v18[8] = *v18;
      *&v18[24] = v26;
      *v18 = 0;
      v11 = v19;
      if (v26 != v19)
      {
        v12 = 0;
        v13 = v7 + 32;
        do
        {
          mlir::DenseElementsAttr::IntElementIterator::operator*(&v18[8], &__p);
          v17 = v24;
          v16 = __p;
          mlir::IntegerAttr::getValue(&v20, &__p);
          if (v17 > 0x40)
          {
            v14 = llvm::APInt::equalSlowCase(&v16, &__p);
            if (v24 < 0x41)
            {
              goto LABEL_16;
            }
          }

          else
          {
            v14 = v16 == __p;
            if (v24 < 0x41)
            {
              goto LABEL_16;
            }
          }

          if (__p)
          {
            operator delete[](__p);
          }

LABEL_16:
          if (v14)
          {
            a2 = *(v13 + 32 * v12 + 24);
          }

          if (v17 >= 0x41 && v16)
          {
            operator delete[](v16);
          }

          if (v14)
          {
            return a2;
          }

          v12 = ++*v18;
          ++*&v18[24];
        }

        while (*&v18[24] != v11);
      }

      v10 = *a1 + 16 * ((*(*a1 + 11) >> 23) & 1) + ((*(*a1 + 11) >> 21) & 0x7F8) + 71;
      return *((v10 & 0xFFFFFFFFFFFFFFF8) + 24);
    }
  }

  return 0;
}

uint64_t *mlir::cf::SwitchOp::getCanonicalizationPatterns(uint64_t *a1)
{
  mlir::PatternBenefit::PatternBenefit(&v13, 1);
  v2 = mlir::RewritePatternSet::add<mlir::cf::SwitchOp>(a1, simplifySwitchWithOnlyDefault, v13, 0, 0);
  mlir::PatternBenefit::PatternBenefit(&v12, 1);
  v3 = mlir::RewritePatternSet::add<mlir::cf::SwitchOp>(v2, dropSwitchCasesThatMatchDefault, v12, 0, 0);
  mlir::PatternBenefit::PatternBenefit(&v11, 1);
  v4 = mlir::RewritePatternSet::add<mlir::cf::SwitchOp>(v3, simplifyConstSwitchValue, v11, 0, 0);
  mlir::PatternBenefit::PatternBenefit(&v10, 1);
  v5 = mlir::RewritePatternSet::add<mlir::cf::SwitchOp>(v4, simplifyPassThroughSwitch, v10, 0, 0);
  mlir::PatternBenefit::PatternBenefit(&v9, 1);
  v6 = mlir::RewritePatternSet::add<mlir::cf::SwitchOp>(v5, simplifySwitchFromSwitchOnSameCondition, v9, 0, 0);
  mlir::PatternBenefit::PatternBenefit(&v8, 1);
  return mlir::RewritePatternSet::add<mlir::cf::SwitchOp>(v6, simplifySwitchFromDefaultSwitchOnSameCondition, v8, 0, 0);
}

uint64_t *mlir::RewritePatternSet::add<mlir::cf::SwitchOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "cf.switch", 9, a3, v10, a4, a5);
  *v11 = &unk_1F5AF4C18;
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

uint64_t simplifySwitchWithOnlyDefault(Operation *a1)
{
  mlir::SuccessorRange::SuccessorRange(v3, a1);
  mlir::SuccessorRange::SuccessorRange(v3, a1);
  if (v3[1] != 1)
  {
    return 0;
  }

  simplifySwitchWithOnlyDefault();
  return 1;
}

uint64_t dropSwitchCasesThatMatchDefault(uint64_t a1, uint64_t **a2)
{
  v80 = *MEMORY[0x1E69E9840];
  v75 = v77;
  v76 = 0x600000000;
  v72 = v74;
  v73 = 0x300000000;
  v69 = v71;
  v70 = 0x300000000;
  v4 = a1 + 64;
  v5 = *(a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1) + 8) != 0;
  v64 = *(a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1) + 8);
  v65 = v5;
  mlir::SuccessorRange::SuccessorRange(v62, a1);
  v6 = *v62;
  mlir::SuccessorRange::SuccessorRange(v62, a1);
  mlir::DenseElementsAttr::getValues<llvm::APInt>(&v64, v62);
  v68[0] = *v62;
  v68[2] = *&v62[32];
  *&v62[24] = *&v62[16];
  v68[1] = *&v62[24];
  *&v62[8] = *v62;
  *v62 = 0;
  v7 = v63;
  if (*&v62[24] == v63)
  {
    v8 = 0;
    v9 = v69;
    v10 = v70;
    if (!v70)
    {
      goto LABEL_48;
    }

    goto LABEL_42;
  }

  v58 = a2;
  v11 = 0;
  v12 = 0;
  v13 = v6 + 32;
  do
  {
    mlir::DenseElementsAttr::IntElementIterator::operator*(&v62[8], &v78);
    v61 = DWORD2(v78);
    v59 = v11;
    __p = v78;
    v14 = *(a1 + 44);
    v15 = v4 + 16 * ((v14 >> 23) & 1);
    if (*(v13 + 32 * v11 + 24) == *(((v15 + ((v14 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 24))
    {
      v16 = (v14 & 0x800000) != 0 ? *(a1 + 72) : 0;
      v17 = (*(v15 + 20) + *(v15 + 16));
      v18 = v16 + 32 * v17;
      v19 = (*(v15 + 24) + v17) - v17;
      v66 = v18;
      v67 = v19;
      mlir::OperandRange::split(&v66, *v15, &v78);
      v20 = mlir::OperandRangeRange::dereference(&v78, v79 + v11);
      v22 = *(a1 + 44);
      v23 = (v22 & 0x800000) != 0 ? *(a1 + 72) : 0;
      v24 = v4 + 16 * ((v22 >> 23) & 1);
      v25 = *(v24 + 16);
      if (v21 == (*(v24 + 20) + v25) - v25)
      {
        if (!v21)
        {
LABEL_16:
          v12 = 1;
          if (v61 < 0x41)
          {
            goto LABEL_5;
          }

          goto LABEL_29;
        }

        v26 = (v23 + 32 * v25 + 24);
        v27 = (v20 + 24);
        while (*v27 == *v26)
        {
          v26 += 4;
          v27 += 4;
          if (!--v21)
          {
            goto LABEL_16;
          }
        }
      }
    }

    v28 = *(v13 + 32 * v11 + 24);
    v29 = v76;
    if (v76 >= HIDWORD(v76))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v75, v77, v76 + 1, 8);
      v29 = v76;
    }

    v75[v29] = v28;
    LODWORD(v76) = v76 + 1;
    v30 = *(a1 + 44);
    v31 = v4 + 16 * ((v30 >> 23) & 1);
    v32 = *(v31 + 24);
    if ((v30 & 0x800000) != 0)
    {
      v33 = *(a1 + 72);
    }

    else
    {
      v33 = 0;
    }

    v34 = (*(v31 + 20) + *(v31 + 16));
    v66 = v33 + 32 * v34;
    v67 = (v32 + v34) - v34;
    mlir::OperandRange::split(&v66, *v31, &v78);
    v35 = mlir::OperandRangeRange::dereference(&v78, v79 + v59);
    mlir::ValueRange::ValueRange(&v78, v35, v36);
    v37 = v78;
    v38 = v73;
    if (v73 >= HIDWORD(v73))
    {
      v57 = v78;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v72, v74, v73 + 1, 16);
      v37 = v57;
      v38 = v73;
    }

    *(v72 + v38) = v37;
    LODWORD(v73) = v73 + 1;
    v39 = v69;
    p_p = &__p;
    if (v70 >= HIDWORD(v70))
    {
      if (v69 <= &__p && v69 + 16 * v70 > &__p)
      {
        v43 = &__p - v69;
        llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v69, v70 + 1);
        v39 = v69;
        p_p = (v69 + v43);
      }

      else
      {
        llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v69, v70 + 1);
        v39 = v69;
        p_p = &__p;
      }
    }

    v41 = v39 + 16 * v70;
    v42 = *(p_p + 2);
    *(v41 + 8) = v42;
    if (v42 > 0x40)
    {
      llvm::APInt::initSlowCase(v41, p_p);
      LODWORD(v70) = v70 + 1;
      if (v61 < 0x41)
      {
        goto LABEL_5;
      }
    }

    else
    {
      *v41 = *p_p;
      LODWORD(v70) = v70 + 1;
      if (v61 < 0x41)
      {
        goto LABEL_5;
      }
    }

LABEL_29:
    if (__p)
    {
      operator delete[](__p);
    }

LABEL_5:
    v11 = ++*v62;
    ++*&v62[24];
  }

  while (*&v62[24] != v7);
  if (v12)
  {
    v44 = *(a1 + 47);
    v45 = *(a1 + 72);
    *&v68[0] = *(v45 + 24);
    *&v78 = *(((a1 + 8 * v44 + 87) & 0xFFFFFFFFFFFFFFF8) + 24);
    v46 = *(a1 + 96);
    v47 = v45 + 32 * v46;
    v48 = (*(a1 + 100) + v46) - v46;
    *v62 = v47;
    *&v62[8] = v48;
    v49 = mlir::OpBuilder::create<mlir::cf::SwitchOp,mlir::detail::TypedValue<mlir::IntegerType>,mlir::Block *,mlir::OperandRange,llvm::SmallVector<llvm::APInt,3u> &,llvm::SmallVector<mlir::Block *,6u> &,llvm::SmallVector<mlir::ValueRange,3u> &>(v58 + 1, *(a1 + 24), v68, &v78, v62, &v69, &v75, &v72);
    ((*v58)[1])(v58, a1, v49);
    v8 = 1;
    v9 = v69;
    v10 = v70;
    if (!v70)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v8 = 0;
    v9 = v69;
    v10 = v70;
    if (!v70)
    {
      goto LABEL_48;
    }
  }

LABEL_42:
  v50 = 16 * v10;
  v51 = &v9[16 * v10 - 8];
  v52 = -v50;
  v53 = v51;
  do
  {
    v54 = *v53;
    v53 -= 4;
    if (v54 >= 0x41)
    {
      v55 = *(v51 - 8);
      if (v55)
      {
        operator delete[](v55);
      }
    }

    v51 = v53;
    v52 += 16;
  }

  while (v52);
  v9 = v69;
LABEL_48:
  if (v9 != v71)
  {
    free(v9);
  }

  if (v72 != v74)
  {
    free(v72);
  }

  if (v75 != v77)
  {
    free(v75);
  }

  return v8;
}

uint64_t simplifyConstSwitchValue(uint64_t a1, uint64_t a2)
{
  v14 = 1;
  v4 = *(*(a1 + 72) + 24);
  p_p = &__p;
  __p = 0;
  v15 = v4;
  result = mlir::Value::getDefiningOp(&v15);
  if (result)
  {
    v6 = result;
    v16 = &v17;
    v17 = 0;
    if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v16, result) && ((v7 = *(*(*(v6 - 8) & 0xFFFFFFFFFFFFFFF8) + 136), v7 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) ? (v8 = v7 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id) : (v8 = 1), !v8 ? (v9 = v7 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id) : (v9 = 1), !v9 ? (v10 = v7 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id) : (v10 = 1), v10))
    {
      result = mlir::detail::constant_int_value_binder::match(&p_p, v17);
      if (result)
      {
        foldSwitch(a1, a2, &__p);
        result = 1;
      }
    }

    else
    {
      result = 0;
    }
  }

  if (v14 >= 0x41)
  {
    if (__p)
    {
      v11 = result;
      operator delete[](__p);
      return v11;
    }
  }

  return result;
}

uint64_t simplifySwitchFromSwitchOnSameCondition(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  result = mlir::Block::getSinglePredecessor(v4);
  if (result)
  {
    Terminator = mlir::Block::getTerminator(result, v6);
    if (Terminator)
    {
      v8 = *(*(Terminator + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::cf::SwitchOp,void>::id;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      if (*(*(a1 + 72) + 24) != *(*(Terminator + 72) + 24) || *(((Terminator + ((*(Terminator + 44) >> 21) & 0x7F8) + 87) & 0xFFFFFFFFFFFFFFF8) + 24) == v4)
      {
        return 0;
      }

      else
      {
        v9 = Terminator;
        mlir::SuccessorRange::SuccessorRange(&v22, Terminator);
        v10 = v22;
        v11 = v9;
        mlir::SuccessorRange::SuccessorRange(&v22, v9);
        v12 = 0;
        v13 = *(&v22 + 1) - 1;
        if (*(&v22 + 1) == 1)
        {
          v15 = v11;
        }

        else
        {
          v14 = (v10 + 56);
          v15 = v11;
          while (*v14 != v4)
          {
            ++v12;
            v14 += 4;
            if (v13 == v12)
            {
              goto LABEL_18;
            }
          }
        }

        if (v12 == v13)
        {
LABEL_18:
          v16 = *(a1 + 44);
          v17 = a1 + 16 * ((v16 >> 23) & 1);
          *&v29 = *(((v17 + ((v16 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 24);
          v18 = *(v17 + 80);
          v19 = *(v17 + 84);
          if ((v16 & 0x800000) != 0)
          {
            v20 = *(a1 + 72);
          }

          else
          {
            v20 = 0;
          }

          *&v22 = v20 + 32 * v18;
          *(&v22 + 1) = (v19 + v18) - v18;
          v21 = mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *,mlir::OperandRange>((a2 + 8), *(a1 + 24), &v29, &v22);
          (*(*a2 + 8))(a2, a1, v21);
        }

        else
        {
          v27 = *(v15 + 2 * ((*(v15 + 11) >> 23) & 1) + 9);
          v28 = v27 != 0;
          mlir::DenseElementsAttr::getValues<llvm::APInt>(&v27, &v22);
          v29 = v22;
          v30 = v23 + v12;
          v31 = v24;
          mlir::DenseElementsAttr::IntElementIterator::operator*(&v29, &__p);
          foldSwitch(a1, a2, &__p);
          if (v26 >= 0x41 && __p)
          {
            operator delete[](__p);
          }
        }

        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t simplifySwitchFromDefaultSwitchOnSameCondition(uint64_t a1, uint64_t **a2)
{
  v88 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  SinglePredecessor = mlir::Block::getSinglePredecessor(v4);
  if (SinglePredecessor)
  {
    Terminator = mlir::Block::getTerminator(SinglePredecessor, v6);
    v8 = Terminator && *(*(Terminator + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::cf::SwitchOp,void>::id;
    if (v8 && *(*(a1 + 72) + 24) == *(*(Terminator + 72) + 24) && *(((Terminator + ((*(Terminator + 44) >> 21) & 0x7F8) + 87) & 0xFFFFFFFFFFFFFFF8) + 24) == v4)
    {
      v72[0] = 0;
      v72[1] = 0;
      v73 = 0;
      v10 = Terminator;
      mlir::SuccessorRange::SuccessorRange(v68, Terminator);
      v11 = *v68;
      mlir::SuccessorRange::SuccessorRange(v68, v10);
      v12 = *&v10[4 * ((v10[11] >> 23) & 1) + 18] != 0;
      v70 = *&v10[4 * ((v10[11] >> 23) & 1) + 18];
      v71 = v12;
      NumElements = mlir::DenseElementsAttr::getNumElements(&v70);
      if (NumElements >= 1)
      {
        v14 = NumElements;
        v15 = 0;
        v16 = (v11 + 56);
        do
        {
          if (v4 != *v16)
          {
            mlir::DenseElementsAttr::getValues<llvm::APInt>(&v70, v68);
            v84 = *v68;
            v85[0] = v15 + *&v68[16];
            v85[1] = *&v68[24];
            mlir::DenseElementsAttr::IntElementIterator::operator*(&v84, &v81);
            *&v84 = 0;
            if ((llvm::DenseMapBase<llvm::DenseMap<llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>,llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>::LookupBucketFor<llvm::APInt>(v72, &v81, &v84) & 1) == 0)
            {
              llvm::DenseMapBase<llvm::DenseMap<llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>,llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>::InsertIntoBucket<llvm::APInt,llvm::detail::DenseSetEmpty&>(v72, v84, &v81);
            }

            if (v82 >= 0x41 && v81)
            {
              operator delete[](v81);
            }
          }

          ++v15;
          v16 += 4;
        }

        while (v14 != v15);
      }

      *&v84 = v85;
      *(&v84 + 1) = 0x600000000;
      v81 = v83;
      v82 = 0x300000000;
      v78 = v80;
      v79 = 0x300000000;
      v66 = *(a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1) + 8);
      v67 = v66 != 0;
      mlir::SuccessorRange::SuccessorRange(v68, a1);
      v17 = *v68;
      mlir::SuccessorRange::SuccessorRange(v68, a1);
      mlir::DenseElementsAttr::getValues<llvm::APInt>(&v66, v68);
      v75 = *v68;
      v76 = *&v68[16];
      v77 = *&v68[32];
      *&v68[8] = *v68;
      *&v68[24] = v76;
      *v68 = 0;
      v18 = v69;
      if (v76 == v69)
      {
LABEL_60:
        v50 = v78;
        if (v79)
        {
          v51 = (v78 + 16 * v79 - 8);
          v52 = -16 * v79;
          v53 = v51;
          do
          {
            v54 = *v53;
            v53 -= 4;
            if (v54 >= 0x41)
            {
              v55 = *(v51 - 1);
              if (v55)
              {
                operator delete[](v55);
              }
            }

            v51 = v53;
            v52 += 16;
          }

          while (v52);
          v50 = v78;
        }

        if (v50 != v80)
        {
          free(v50);
        }

        if (v81 != v83)
        {
          free(v81);
        }

        if (v84 != v85)
        {
          free(v84);
        }

        v56 = v72[0];
        if (v73)
        {
          v57 = (v72[0] + 8);
          v58 = 16 * v73;
          do
          {
            if (*v57 >= 0x41u)
            {
              v59 = *(v57 - 1);
              if (v59)
              {
                operator delete[](v59);
              }
            }

            v57 += 4;
            v58 -= 16;
          }

          while (v58);
          v56 = v72[0];
          v60 = (16 * v73);
        }

        else
        {
          v60 = 0;
        }

        llvm::deallocate_buffer(v56, v60);
      }

      v19 = 0;
      v62 = 0;
      v20 = v17 + 32;
      while (1)
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(&v68[8], &v86);
        v65 = DWORD2(v86);
        v63 = v19;
        __p = v86;
        if (v73)
        {
          v21 = v72[0];
          DWORD2(v86) = 0;
          *&v86 = -1;
          v22 = v73 - 1;
          v23 = 1;
          v24 = llvm::DenseMapInfo<llvm::APInt,void>::getHashValue(&__p) & v22;
          v25 = v21 + 16 * v24;
          v26 = v65;
          if (v65 != *(v25 + 8))
          {
            goto LABEL_28;
          }

LABEL_24:
          if (v26 > 0x40)
          {
            if (!llvm::APInt::equalSlowCase(&__p, v25))
            {
              goto LABEL_28;
            }
          }

          else if (__p != *v25)
          {
LABEL_28:
            while (!llvm::DenseMapInfo<llvm::APInt,void>::isEqual(v25, &v86))
            {
              v27 = v24 + v23++;
              v24 = v27 & v22;
              v25 = v21 + 16 * (v27 & v22);
              v26 = v65;
              if (v65 == *(v25 + 8))
              {
                goto LABEL_24;
              }
            }

            v25 = 0;
          }

          if (DWORD2(v86) >= 0x41 && v86)
          {
            operator delete[](v86);
          }

          if (v25 && v25 != (v72[0] + 16 * v73))
          {
            v62 = 1;
            if (v65 >= 0x41)
            {
              goto LABEL_51;
            }

            goto LABEL_21;
          }

          v19 = v63;
        }

        v28 = *(v20 + 32 * v19 + 24);
        v29 = DWORD2(v84);
        if (DWORD2(v84) >= HIDWORD(v84))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v85, DWORD2(v84) + 1, 8);
          v29 = DWORD2(v84);
        }

        *(v84 + 8 * v29) = v28;
        ++DWORD2(v84);
        v30 = *(a1 + 44);
        v31 = a1 + 64 + 16 * ((v30 >> 23) & 1);
        v32 = *(v31 + 24);
        if ((v30 & 0x800000) != 0)
        {
          v33 = *(a1 + 72);
        }

        else
        {
          v33 = 0;
        }

        v34 = (*(v31 + 20) + *(v31 + 16));
        v74[0] = v33 + 32 * v34;
        v74[1] = (v32 + v34) - v34;
        mlir::OperandRange::split(v74, *v31, &v86);
        v35 = mlir::OperandRangeRange::dereference(&v86, v87 + v63);
        mlir::ValueRange::ValueRange(&v86, v35, v36);
        v37 = v86;
        v38 = v82;
        if (v82 >= HIDWORD(v82))
        {
          v61 = v86;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v83, v82 + 1, 16);
          v37 = v61;
          v38 = v82;
        }

        *&v81[16 * v38] = v37;
        LODWORD(v82) = v82 + 1;
        v39 = v78;
        p_p = &__p;
        if (v79 >= HIDWORD(v79))
        {
          if (v78 <= &__p && v78 + 16 * v79 > &__p)
          {
            v43 = &__p - v78;
            llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v78, v79 + 1);
            v39 = v78;
            p_p = (v78 + v43);
          }

          else
          {
            llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v78, v79 + 1);
            v39 = v78;
            p_p = &__p;
          }
        }

        v41 = v39 + 16 * v79;
        v42 = *(p_p + 2);
        *(v41 + 8) = v42;
        if (v42 > 0x40)
        {
          llvm::APInt::initSlowCase(v41, p_p);
          LODWORD(v79) = v79 + 1;
          if (v65 >= 0x41)
          {
LABEL_51:
            if (__p)
            {
              operator delete[](__p);
            }
          }
        }

        else
        {
          *v41 = *p_p;
          LODWORD(v79) = v79 + 1;
          if (v65 >= 0x41)
          {
            goto LABEL_51;
          }
        }

LABEL_21:
        v19 = ++*v68;
        if (++*&v68[24] == v18)
        {
          if (v62)
          {
            v44 = *(a1 + 47);
            v45 = *(a1 + 72);
            *&v75 = *(v45 + 24);
            *&v86 = *(((a1 + 8 * v44 + 87) & 0xFFFFFFFFFFFFFFF8) + 24);
            v46 = *(a1 + 96);
            v47 = v45 + 32 * v46;
            v48 = (*(a1 + 100) + v46) - v46;
            *v68 = v47;
            *&v68[8] = v48;
            v49 = mlir::OpBuilder::create<mlir::cf::SwitchOp,mlir::detail::TypedValue<mlir::IntegerType>,mlir::Block *,mlir::OperandRange,llvm::SmallVector<llvm::APInt,3u> &,llvm::SmallVector<mlir::Block *,6u> &,llvm::SmallVector<mlir::ValueRange,3u> &>(a2 + 1, *(a1 + 24), &v75, &v86, v68, &v78, &v84, &v81);
            ((*a2)[1])(a2, a1, v49);
          }

          goto LABEL_60;
        }
      }
    }
  }

  return 0;
}

uint64_t mlir::cf::AssertOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v56.var0 = "msg";
  v56.var1 = 3;
  v8 = mlir::DictionaryAttr::get(&v40, v56);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v44, a4);
  if (v44[0])
  {
    v41 = 3;
    v43 = 48;
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

uint64_t mlir::cf::AssertOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v13, "msg", 3, *a2);
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

uint64_t mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps1(uint64_t a1, void *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
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
        v28 = "' failed to satisfy constraint: string attribute";
        v29 = 48;
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

uint64_t mlir::cf::AssertOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, v3) & 1;
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::cf::detail::AssertOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::cf::detail::AssertOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::cf::detail::AssertOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::cf::detail::AssertOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::cf::AssertOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::cf::detail::AssertOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, *(a2 + 256)) & 1;
}

uint64_t mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(uint64_t a1, uint64_t *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (((*(*a1 + 48))(a1, &v36) & 1) == 0)
  {
    return 0;
  }

  v4 = v36;
  v5 = *(*v36 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
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

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::StringAttr]";
  v38 = 66;
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

BOOL mlir::cf::AssertOp::verifyInvariantsImpl(mlir::cf::AssertOp *this)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (v1)
  {
    v15[0] = *this;
    return (mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps1(v1, "msg", 3, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v15) & 1) != 0 && mlir::complex::__mlir_ods_local_type_constraint_ComplexOps5(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0);
  }

  else
  {
    v13 = "requires attribute 'msg'";
    v14 = 259;
    mlir::OpState::emitOpError(this, &v13, v15);
    v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
    if (v15[0])
    {
      mlir::InFlightDiagnostic::report(v15);
    }

    if (v23 == 1)
    {
      if (v22 != &v23)
      {
        free(v22);
      }

      v4 = __p;
      if (__p)
      {
        v5 = v21;
        v6 = __p;
        if (v21 != __p)
        {
          do
          {
            v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
          }

          while (v5 != v4);
          v6 = __p;
        }

        v21 = v4;
        operator delete(v6);
      }

      v7 = v18;
      if (v18)
      {
        v8 = v19;
        v9 = v18;
        if (v19 != v18)
        {
          do
          {
            v11 = *--v8;
            v10 = v11;
            *v8 = 0;
            if (v11)
            {
              operator delete[](v10);
            }
          }

          while (v8 != v7);
          v9 = v18;
        }

        v19 = v7;
        operator delete(v9);
      }

      if (v16 != &v17)
      {
        free(v16);
      }
    }
  }

  return v3;
}

uint64_t *mlir::RewritePatternSet::add<mlir::cf::AssertOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "cf.assert", 9, a3, v10, a4, a5);
  *v11 = &unk_1F5AF4CB8;
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

uint64_t mlir::cf::AssertOp::parse(uint64_t a1, void *a2)
{
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  v17 = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v18, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v4 = (*(*a1 + 32))(a1);
  v6 = mlir::NoneType::get(*v4, v5);
  if (!mlir::AsmParser::parseAttribute<mlir::StringAttr>(a1, &v17, v6))
  {
    return 0;
  }

  v7 = v17;
  if (v17)
  {
    v8 = a2[32];
    if (!v8)
    {
      v9 = operator new(8uLL);
      *v9 = 0;
      a2[32] = v9;
      a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::cf::detail::AssertOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::cf::detail::AssertOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      a2[35] = v15;
      a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::cf::detail::AssertOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::cf::detail::AssertOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      a2[37] = v15;
      {
        mlir::cf::AssertOp::readProperties();
      }

      a2[33] = mlir::detail::TypeIDResolver<mlir::cf::detail::AssertOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v8 = a2[32];
      v7 = v17;
    }

    *v8 = v7;
  }

  v16 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 14) & 1) == 0)
  {
    return 0;
  }

  v10 = a2[1];
  v15[0] = a1;
  v15[1] = &v16;
  v15[2] = a2;
  v11 = mlir::NamedAttrList::get((a2 + 14), **(v10 + 96));
  if (v11)
  {
    if ((mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps1(v11, "msg", 3, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::cf::AssertOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v15) & 1) == 0)
    {
      return 0;
    }
  }

  v12 = (*(*a1 + 32))(a1);
  IntegerType = mlir::Builder::getIntegerType(v12, 1);
  return (*(*a1 + 728))(a1, v18, IntegerType, a2 + 2) & 1;
}

void mlir::cf::AssertOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v15[4] = *MEMORY[0x1E69E9840];
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
  v6 = (*(*a2 + 16))(a2);
  v7 = v6[4];
  if (v6[3] == v7)
  {
    llvm::raw_ostream::write(v6, ",", 1uLL);
  }

  else
  {
    *v7 = 44;
    ++v6[4];
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

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  v13 = v15;
  v15[0] = "msg";
  v15[1] = 3;
  v14 = 0x200000001;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v11, v13, v14);
  if (v13 != v15)
  {
    free(v13);
  }
}

void mlir::cf::BranchOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = a2;
  v8 = *(a2 + 208);
  if (v8 >= *(a2 + 212))
  {
    v10 = a3;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 200, a2 + 216, v8 + 1, 8);
    a3 = v10;
    v7 = a2;
    LODWORD(v8) = *(a2 + 208);
  }

  *(*(v7 + 200) + 8 * v8) = a3;
  ++*(v7 + 208);

  mlir::OperationState::addOperands(v7, a4, a5);
}

uint64_t mlir::OperationState::addSuccessors(uint64_t this, mlir::Block *a2)
{
  v2 = *(this + 208);
  if (v2 >= *(this + 212))
  {
    v3 = this;
    v4 = a2;
    llvm::SmallVectorBase<unsigned int>::grow_pod(this + 200, this + 216, v2 + 1, 8);
    a2 = v4;
    this = v3;
    LODWORD(v2) = *(v3 + 208);
  }

  *(*(this + 200) + 8 * v2) = a2;
  ++*(this + 208);
  return this;
}

uint64_t *mlir::RewritePatternSet::add<mlir::cf::BranchOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "cf.br", 5, a3, v10, a4, a5);
  *v11 = &unk_1F5AF4D58;
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

uint64_t mlir::cf::BranchOp::parse(uint64_t a1, uint64_t a2)
{
  v12[16] = *MEMORY[0x1E69E9840];
  v11[0] = v12;
  v11[1] = 0x400000000;
  v9[0] = &v10;
  v9[1] = 0x100000000;
  if (((*(*a1 + 800))() & 1) == 0)
  {
LABEL_14:
    v6 = 0;
    v7 = v9[0];
    if (v9[0] == &v10)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if ((*(*a1 + 288))(a1))
  {
    v4 = (*(*a1 + 40))(a1);
    if (((*(*a1 + 720))(a1, v11, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, v9) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v4 = 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    goto LABEL_14;
  }

  v5 = *(a2 + 208);
  if (v5 >= *(a2 + 212))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 200, a2 + 216, v5 + 1, 8);
    LODWORD(v5) = *(a2 + 208);
  }

  *(*(a2 + 200) + 8 * v5) = 0;
  ++*(a2 + 208);
  v6 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, v11, v9, v4, a2 + 16) & 1;
  v7 = v9[0];
  if (v9[0] != &v10)
  {
LABEL_15:
    free(v7);
  }

LABEL_16:
  if (v11[0] != v12)
  {
    free(v11[0]);
  }

  return v6;
}

uint64_t mlir::cf::CondBranchOp::setPropertiesFromAttr(void *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v38 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v23 = v6;
  if (v6)
  {
    v39.var0 = "operandSegmentSizes";
    v39.var1 = 19;
    v8 = mlir::DictionaryAttr::get(&v23, v39);
    if (!v8)
    {
      v40.var0 = "operand_segment_sizes";
      v40.var1 = 21;
      v8 = mlir::DictionaryAttr::get(&v23, v40);
      if (!v8)
      {
        return 1;
      }
    }

    if (mlir::convertFromAttribute(a1, 3, v8, a3, a4))
    {
      return 1;
    }
  }

  else
  {
    a3(v27, a4);
    if (v27[0])
    {
      v24 = 3;
      v25 = "expected DictionaryAttr to set properties";
      v26 = 41;
      v10 = &v24;
      v11 = v28;
      if (v29 >= v30)
      {
        if (v28 <= &v24 && v28 + 24 * v29 > &v24)
        {
          v22 = &v24 - v28;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v28, v31, v29 + 1, 24);
          v11 = v28;
          v10 = (v28 + v22);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v28, v31, v29 + 1, 24);
          v10 = &v24;
          v11 = v28;
        }
      }

      v12 = &v11[24 * v29];
      v13 = *v10;
      *(v12 + 2) = *(v10 + 2);
      *v12 = v13;
      ++v29;
      if (v27[0])
      {
        mlir::InFlightDiagnostic::report(v27);
      }
    }

    if (v37 == 1)
    {
      if (v36 != &v37)
      {
        free(v36);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v35;
        v16 = __p;
        if (v35 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v35 = v14;
        operator delete(v16);
      }

      v17 = v32;
      if (v32)
      {
        v18 = v33;
        v19 = v32;
        if (v33 != v32)
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
          v19 = v32;
        }

        v33 = v17;
        operator delete(v19);
      }

      if (v28 != v31)
      {
        free(v28);
      }
    }
  }

  return 0;
}

uint64_t mlir::cf::CondBranchOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, void *a2)
{
  v17[6] = *MEMORY[0x1E69E9840];
  v14 = a1;
  v15 = v17;
  v16 = 0x300000000;
  v2 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, a2, 3);
  NamedAttr = mlir::Builder::getNamedAttr(&v14, "operandSegmentSizes", 19, v2);
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

    goto LABEL_8;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v14, v15, v8);
  v10 = v15;
  if (v15 != v17)
  {
LABEL_8:
    free(v10);
  }

  return DictionaryAttr;
}

uint64_t mlir::cf::CondBranchOp::setInherentAttr(uint64_t result, void *a2, uint64_t a3, void *a4)
{
  if (a3 == 19)
  {
    if (*a2 != 0x53646E617265706FLL || a2[1] != 0x6953746E656D6765 || *(a2 + 11) != 0x73657A6953746E65)
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

    v6 = *a2 == 0x5F646E617265706FLL && a2[1] == 0x5F746E656D676573;
    if (!v6 || *(a2 + 13) != 0x73657A69735F746ELL)
    {
      return result;
    }
  }

  v14[3] = v4;
  v14[4] = v5;
  if (a4)
  {
    v10 = result;
    result = mlir::detail::DenseArrayAttrImpl<int>::classof(a4);
    if (result)
    {
      v12 = a4;
    }

    else
    {
      v12 = 0;
    }

    v14[0] = v12;
    if (v12)
    {
      result = mlir::AffineBinaryOpExpr::getLHS(v14);
      if (result == 3)
      {
        result = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(v14);
        if (v13)
        {
          return memmove(v10, result, 4 * v13);
        }
      }
    }
  }

  return result;
}

BOOL mlir::cf::CondBranchOp::readProperties(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2[32];
  if (!v3)
  {
    v5 = operator new(0xCuLL);
    *v5 = 0;
    v5[2] = 0;
    a2[32] = v5;
    a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::cf::detail::CondBranchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::cf::detail::CondBranchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a2[35] = v17;
    a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::cf::detail::CondBranchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::cf::detail::CondBranchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a2[37] = v17;
    {
      mlir::cf::CondBranchOp::readProperties();
    }

    a2[33] = mlir::detail::TypeIDResolver<mlir::cf::detail::CondBranchOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = a2[32];
  }

  if ((*(*a1 + 40))(a1) <= 5)
  {
    v19 = 0;
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, &v19))
    {
      return 0;
    }

    if (mlir::AffineBinaryOpExpr::getLHS(&v19) >= 4)
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
      memmove(v3, v14, 4 * v15);
    }
  }

  return (*(*a1 + 40))(a1) < 6 || (mlir::DialectBytecodeReader::readSparseArray<int>(a1, v3, 3) & 1) != 0;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::cf::detail::CondBranchOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    v3 = operator new(0xCuLL);
    *v3 = 0;
    v3[2] = 0;
    a1[32] = v3;
    a1[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::cf::detail::CondBranchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::cf::detail::CondBranchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a1[35] = &v5;
    a1[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::cf::detail::CondBranchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::cf::detail::CondBranchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a1[37] = &v4;
    {
      mlir::cf::CondBranchOp::readProperties();
    }

    a1[33] = mlir::detail::TypeIDResolver<mlir::cf::detail::CondBranchOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    return a1[32];
  }

  return result;
}

void mlir::cf::CondBranchOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9)
{
  v20 = a3;
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  mlir::OperationState::addOperands(a2, a4, a5);
  mlir::OperationState::addOperands(a2, a6, a7);
  v15 = *(a2 + 256);
  if (!v15)
  {
    v16 = operator new(0xCuLL);
    *v16 = 0;
    v16[2] = 0;
    *(a2 + 256) = v16;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::cf::detail::CondBranchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::cf::detail::CondBranchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v22;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::cf::detail::CondBranchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::cf::detail::CondBranchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v21;
    {
      mlir::cf::CondBranchOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::cf::detail::CondBranchOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v15 = *(a2 + 256);
  }

  *v15 = 1;
  v15[1] = a5;
  v15[2] = a7;
  v17 = *(a2 + 208);
  if (v17 >= *(a2 + 212))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 200, a2 + 216, v17 + 1, 8);
    LODWORD(v17) = *(a2 + 208);
  }

  *(*(a2 + 200) + 8 * v17) = a8;
  v18 = *(a2 + 212);
  v19 = (*(a2 + 208) + 1);
  *(a2 + 208) = v19;
  if (v19 >= v18)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 200, a2 + 216, v19 + 1, 8);
    LODWORD(v19) = *(a2 + 208);
  }

  *(*(a2 + 200) + 8 * v19) = a9;
  ++*(a2 + 208);
}

uint64_t mlir::cf::CondBranchOp::parse(uint64_t a1, void *a2)
{
  v26[16] = *MEMORY[0x1E69E9840];
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v13 = 0;
  v14 = 0;
  v24 = v26;
  v25 = 0x400000000;
  v22[0] = &v23;
  v22[1] = 0x100000000;
  v19 = v21;
  v20 = 0x400000000;
  v17[0] = &v18;
  v17[1] = 0x100000000;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v15, 1) & 1) == 0 || ((*(*a1 + 120))(a1) & 1) == 0 || ((*(*a1 + 800))(a1, &v14) & 1) == 0)
  {
    goto LABEL_24;
  }

  if ((*(*a1 + 288))(a1))
  {
    v4 = (*(*a1 + 40))(a1);
    if (((*(*a1 + 720))(a1, &v24, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, v22) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v4 = 0;
  }

  if ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 800))(a1, &v13))
  {
    if ((*(*a1 + 288))(a1))
    {
      v5 = (*(*a1 + 40))(a1);
      if (((*(*a1 + 720))(a1, &v19, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || (mlir::AsmParser::parseTypeList(a1, v17) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v5 = 0;
    }

    (*(*a1 + 40))(a1);
    if ((*(*a1 + 488))(a1, a2 + 14))
    {
      mlir::OperationState::addSuccessors(a2, v14);
      mlir::OperationState::addSuccessors(a2, v13);
      v6 = v25;
      v7 = v20;
      v8 = mlir::OperationState::getOrAddProperties<mlir::cf::detail::CondBranchOpGenericAdaptorBase::Properties>(a2);
      *v8 = 1;
      v8[1] = v6;
      v8[2] = v7;
      v9 = (*(*a1 + 32))(a1);
      IntegerType = mlir::Builder::getIntegerType(v9, 1);
      if ((*(*a1 + 728))(a1, v15, IntegerType, a2 + 2) & 1) != 0 && (mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v24, v22, v4, (a2 + 2)))
      {
        v11 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v19, v17, v5, (a2 + 2)) & 1;
        goto LABEL_25;
      }
    }
  }

LABEL_24:
  v11 = 0;
LABEL_25:
  if (v17[0] != &v18)
  {
    free(v17[0]);
  }

  if (v19 != v21)
  {
    free(v19);
  }

  if (v22[0] != &v23)
  {
    free(v22[0]);
  }

  if (v24 != v26)
  {
    free(v24);
  }

  return v11;
}

void mlir::cf::CondBranchOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v102 = *MEMORY[0x1E69E9840];
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
  v6 = (*(*a2 + 16))(a2);
  v7 = v6[4];
  if (v6[3] == v7)
  {
    llvm::raw_ostream::write(v6, ",", 1uLL);
  }

  else
  {
    *v7 = 44;
    ++v6[4];
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

  (*(*a2 + 176))(a2, *(((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 24));
  if (!*(*this + 4 * ((*(*this + 11) >> 23) & 1) + 17))
  {
    goto LABEL_34;
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = v10[4];
  if (v10[3] == v11)
  {
    llvm::raw_ostream::write(v10, "(", 1uLL);
    v12 = *this;
    v26 = *(*this + 11);
    v14 = *this + 16 * ((v26 >> 23) & 1);
    v15 = *(v14 + 68);
    if ((v26 & 0x800000) != 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    *v11 = 40;
    ++v10[4];
    v12 = *this;
    v13 = *(*this + 11);
    v14 = *this + 16 * ((v13 >> 23) & 1);
    v15 = *(v14 + 68);
    if ((v13 & 0x800000) != 0)
    {
LABEL_13:
      v16 = *(v12 + 9);
      goto LABEL_14;
    }
  }

  v16 = 0;
LABEL_14:
  v17 = *(v14 + 64);
  v18 = (*(*a2 + 16))(a2);
  if (v15)
  {
    v19 = v18;
    v20 = (v15 + v17);
    v21 = v16 + 32 * v17;
    (*(*a2 + 160))(a2, *(v21 + 24));
    if (v20 - v17 != 1)
    {
      v78 = ~v17 + v20;
      v79 = (v21 + 56);
      do
      {
        v81 = v19[4];
        if (v19[3] - v81 > 1uLL)
        {
          *v81 = 8236;
          v19[4] += 2;
        }

        else
        {
          llvm::raw_ostream::write(v19, ", ", 2uLL);
        }

        v80 = *v79;
        v79 += 4;
        (*(*a2 + 160))(a2, v80);
        --v78;
      }

      while (v78);
    }
  }

  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (v23 >= *(v22 + 3))
  {
    llvm::raw_ostream::write(v22, 32);
  }

  else
  {
    *(v22 + 4) = v23 + 1;
    *v23 = 32;
  }

  v24 = (*(*a2 + 16))(a2);
  v25 = v24[4];
  if (v24[3] == v25)
  {
    llvm::raw_ostream::write(v24, ":", 1uLL);
  }

  else
  {
    *v25 = 58;
    ++v24[4];
  }

  v27 = (*(*a2 + 16))(a2);
  v28 = *(v27 + 4);
  if (v28 >= *(v27 + 3))
  {
    llvm::raw_ostream::write(v27, 32);
  }

  else
  {
    *(v27 + 4) = v28 + 1;
    *v28 = 32;
  }

  v29 = *(*this + 11);
  v30 = *this + 16 * ((v29 >> 23) & 1);
  v31 = *(v30 + 64);
  v32 = *(v30 + 68);
  if ((v29 & 0x800000) != 0)
  {
    v33 = *(*this + 9);
  }

  else
  {
    v33 = 0;
  }

  AttrDictionary = v33 + 32 * v31;
  v97 = (v32 + v31) - v31;
  mlir::OperandRange::getTypes(&AttrDictionary, &v98);
  v34 = v99;
  v35 = v101;
  if (v99 != v101)
  {
    v36 = v98 + 32 * v99;
    (*(*a2 + 32))(a2, *(*(v36 + 3) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v34 + 1 != v35)
    {
      v86 = ~v34 + v35;
      v87 = (v36 + 56);
      do
      {
        v89 = (*(*a2 + 16))(a2);
        v90 = v89[4];
        if (v89[3] - v90 > 1uLL)
        {
          *v90 = 8236;
          v89[4] += 2;
        }

        else
        {
          llvm::raw_ostream::write(v89, ", ", 2uLL);
        }

        v88 = *v87;
        v87 += 4;
        (*(*a2 + 32))(a2, *(v88 + 8) & 0xFFFFFFFFFFFFFFF8);
        --v86;
      }

      while (v86);
    }
  }

  v37 = (*(*a2 + 16))(a2);
  v38 = v37[4];
  if (v37[3] == v38)
  {
    llvm::raw_ostream::write(v37, ")", 1uLL);
  }

  else
  {
    *v38 = 41;
    ++v37[4];
  }

LABEL_34:
  v39 = (*(*a2 + 16))(a2);
  v40 = v39[4];
  if (v39[3] == v40)
  {
    llvm::raw_ostream::write(v39, ",", 1uLL);
  }

  else
  {
    *v40 = 44;
    ++v39[4];
  }

  v41 = (*(*a2 + 16))(a2);
  v42 = *(v41 + 4);
  if (v42 >= *(v41 + 3))
  {
    llvm::raw_ostream::write(v41, 32);
  }

  else
  {
    *(v41 + 4) = v42 + 1;
    *v42 = 32;
  }

  (*(*a2 + 176))(a2, *(((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 56));
  if (!*(*this + 4 * ((*(*this + 11) >> 23) & 1) + 18))
  {
    goto LABEL_64;
  }

  v43 = (*(*a2 + 16))(a2);
  v44 = v43[4];
  if (v43[3] == v44)
  {
    llvm::raw_ostream::write(v43, "(", 1uLL);
    v45 = *this;
    v61 = *(*this + 11);
    v47 = (*this + 16 * ((v61 >> 23) & 1));
    v48 = v47[18];
    if ((v61 & 0x800000) != 0)
    {
      goto LABEL_43;
    }
  }

  else
  {
    *v44 = 40;
    ++v43[4];
    v45 = *this;
    v46 = *(*this + 11);
    v47 = (*this + 16 * ((v46 >> 23) & 1));
    v48 = v47[18];
    if ((v46 & 0x800000) != 0)
    {
LABEL_43:
      v49 = *(v45 + 9);
      goto LABEL_44;
    }
  }

  v49 = 0;
LABEL_44:
  v50 = v47[16];
  v51 = v47[17];
  v52 = (*(*a2 + 16))(a2);
  if (v48)
  {
    v53 = v52;
    v54 = (v51 + v50);
    v55 = (v48 + v54);
    v56 = v49 + 32 * v54;
    (*(*a2 + 160))(a2, *(v56 + 24));
    if (v55 - v54 != 1)
    {
      v82 = ~v54 + v55;
      v83 = (v56 + 56);
      do
      {
        v85 = v53[4];
        if (v53[3] - v85 > 1uLL)
        {
          *v85 = 8236;
          v53[4] += 2;
        }

        else
        {
          llvm::raw_ostream::write(v53, ", ", 2uLL);
        }

        v84 = *v83;
        v83 += 4;
        (*(*a2 + 160))(a2, v84);
        --v82;
      }

      while (v82);
    }
  }

  v57 = (*(*a2 + 16))(a2);
  v58 = *(v57 + 4);
  if (v58 >= *(v57 + 3))
  {
    llvm::raw_ostream::write(v57, 32);
  }

  else
  {
    *(v57 + 4) = v58 + 1;
    *v58 = 32;
  }

  v59 = (*(*a2 + 16))(a2);
  v60 = v59[4];
  if (v59[3] == v60)
  {
    llvm::raw_ostream::write(v59, ":", 1uLL);
  }

  else
  {
    *v60 = 58;
    ++v59[4];
  }

  v62 = (*(*a2 + 16))(a2);
  v63 = *(v62 + 4);
  if (v63 >= *(v62 + 3))
  {
    llvm::raw_ostream::write(v62, 32);
  }

  else
  {
    *(v62 + 4) = v63 + 1;
    *v63 = 32;
  }

  v64 = *(*this + 11);
  v65 = (*this + 16 * ((v64 >> 23) & 1));
  v66 = v65[16];
  v67 = v65[17];
  v68 = v65[18];
  if ((v64 & 0x800000) != 0)
  {
    v69 = *(*this + 9);
  }

  else
  {
    v69 = 0;
  }

  v70 = (v67 + v66);
  AttrDictionary = v69 + 32 * v70;
  v97 = (v68 + v70) - v70;
  mlir::OperandRange::getTypes(&AttrDictionary, &v98);
  v71 = v99;
  v72 = v101;
  if (v99 != v101)
  {
    v73 = v98 + 32 * v99;
    (*(*a2 + 32))(a2, *(*(v73 + 3) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v71 + 1 != v72)
    {
      v91 = ~v71 + v72;
      v92 = (v73 + 56);
      do
      {
        v94 = (*(*a2 + 16))(a2);
        v95 = v94[4];
        if (v94[3] - v95 > 1uLL)
        {
          *v95 = 8236;
          v94[4] += 2;
        }

        else
        {
          llvm::raw_ostream::write(v94, ", ", 2uLL);
        }

        v93 = *v92;
        v92 += 4;
        (*(*a2 + 32))(a2, *(v93 + 8) & 0xFFFFFFFFFFFFFFF8);
        --v91;
      }

      while (v91);
    }
  }

  v74 = (*(*a2 + 16))(a2);
  v75 = v74[4];
  if (v74[3] == v75)
  {
    llvm::raw_ostream::write(v74, ")", 1uLL);
  }

  else
  {
    *v75 = 41;
    ++v74[4];
  }

LABEL_64:
  v98 = &v100;
  v100 = "operandSegmentSizes";
  v101 = 19;
  v99 = 0x200000001;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v77, v98, v99);
  if (v98 != &v100)
  {
    free(v98);
  }
}

void mlir::cf::SwitchOp::getCaseOperandsMutable(mlir::Operation **this@<X0>, uint64_t a2@<X8>)
{
  v17[3] = *MEMORY[0x1E69E9840];
  v4 = *this;
  v5 = (*this + 16 * ((*(*this + 11) >> 23) & 1));
  v6 = v5[20];
  v7 = v5[21];
  v8 = v5[22];
  v9 = *(*(*(*this + 6) + 96) + 8 * *(*(*this + 6) + 104) - 8);
  Context = mlir::Attribute::getContext((*this + 24));
  v11 = mlir::detail::DenseArrayAttrImpl<int>::get(Context, *this + 2 * ((*(*this + 11) >> 23) & 1) + 10, 3);
  mlir::NamedAttribute::NamedAttribute(&v12, v9, v11);
  LODWORD(v13) = 2;
  v14 = v12;
  mlir::MutableOperandRange::MutableOperandRange(v15, v4, v7 + v6, v8, &v13, 1);
  *&v12 = mlir::Operation::getAttrDictionary(*this);
  mlir::DictionaryAttr::getNamed(&v12, **(*(*this + 6) + 96), &v13);
  mlir::MutableOperandRange::split(v15, v13, v14, a2);
  if (v16 != v17)
  {
    free(v16);
  }
}

BOOL mlir::cf::SwitchOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v74 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v59 = v6;
  if (!v6)
  {
    a3(v63, a4);
    if (v63[0])
    {
      v60 = 3;
      v61 = "expected DictionaryAttr to set properties";
      v62 = 41;
      v14 = &v60;
      v15 = v64;
      if (v65 >= v66)
      {
        if (v64 <= &v60 && v64 + 24 * v65 > &v60)
        {
          v54 = &v60 - v64;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
          v15 = v64;
          v14 = (v64 + v54);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
          v14 = &v60;
          v15 = v64;
        }
      }

      v16 = &v15[24 * v65];
      v17 = *v14;
      *(v16 + 2) = *(v14 + 2);
      *v16 = v17;
      ++v65;
      if (v63[0])
      {
        mlir::InFlightDiagnostic::report(v63);
      }
    }

    if (v73 != 1)
    {
      return 0;
    }

    if (v72 != &v73)
    {
      free(v72);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v71;
      v20 = __p;
      if (v71 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v71 = v18;
      operator delete(v20);
    }

    v21 = v68;
    if (!v68)
    {
      goto LABEL_75;
    }

    v22 = v69;
    v23 = v68;
    if (v69 == v68)
    {
LABEL_74:
      v69 = v21;
      operator delete(v23);
LABEL_75:
      if (v64 != v67)
      {
        free(v64);
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
LABEL_73:
    v23 = v68;
    goto LABEL_74;
  }

  v75.var0 = "case_operand_segments";
  v75.var1 = 21;
  v8 = mlir::DictionaryAttr::get(&v59, v75);
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = v8;
  if (!mlir::detail::DenseArrayAttrImpl<int>::classof(v8))
  {
    a3(v63, a4);
    if (v63[0])
    {
      v60 = 3;
      v62 = 66;
      v26 = &v60;
      v27 = v64;
      if (v65 >= v66)
      {
        if (v64 <= &v60 && v64 + 24 * v65 > &v60)
        {
          v55 = &v60 - v64;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
          v27 = v64;
          v26 = (v64 + v55);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
          v26 = &v60;
          v27 = v64;
        }
      }

      v28 = &v27[24 * v65];
      v29 = *v26;
      *(v28 + 2) = *(v26 + 2);
      *v28 = v29;
      ++v65;
      if (v63[0])
      {
        v30 = &v60;
        mlir::DiagnosticArgument::DiagnosticArgument(&v60, v9);
        v31 = v64;
        if (v65 >= v66)
        {
          if (v64 <= &v60 && v64 + 24 * v65 > &v60)
          {
            v57 = &v60 - v64;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
            v31 = v64;
            v30 = (v64 + v57);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
            v30 = &v60;
            v31 = v64;
          }
        }

        v32 = &v31[24 * v65];
        v33 = *v30;
        *(v32 + 2) = *(v30 + 2);
        *v32 = v33;
        ++v65;
        if (v63[0])
        {
          mlir::InFlightDiagnostic::report(v63);
        }
      }
    }

    if ((v73 & 1) == 0)
    {
      return 0;
    }

    if (v72 != &v73)
    {
      free(v72);
    }

    v34 = __p;
    if (__p)
    {
      v35 = v71;
      v36 = __p;
      if (v71 != __p)
      {
        do
        {
          v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
        }

        while (v35 != v34);
        v36 = __p;
      }

      v71 = v34;
      operator delete(v36);
    }

    v21 = v68;
    if (!v68)
    {
      goto LABEL_75;
    }

    v37 = v69;
    v23 = v68;
    if (v69 == v68)
    {
      goto LABEL_74;
    }

    do
    {
      v39 = *--v37;
      v38 = v39;
      *v37 = 0;
      if (v39)
      {
        operator delete[](v38);
      }
    }

    while (v37 != v21);
    goto LABEL_73;
  }

  *a1 = v9;
LABEL_8:
  v76.var0 = "case_values";
  v76.var1 = 11;
  v10 = mlir::DictionaryAttr::get(&v59, v76);
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = v10;
  if (!mlir::DenseIntElementsAttr::classof(v10))
  {
    a3(v63, a4);
    if (v63[0])
    {
      v60 = 3;
      v62 = 56;
      v40 = &v60;
      v41 = v64;
      if (v65 >= v66)
      {
        if (v64 <= &v60 && v64 + 24 * v65 > &v60)
        {
          v56 = &v60 - v64;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
          v41 = v64;
          v40 = (v64 + v56);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
          v40 = &v60;
          v41 = v64;
        }
      }

      v42 = &v41[24 * v65];
      v43 = *v40;
      *(v42 + 2) = *(v40 + 2);
      *v42 = v43;
      ++v65;
      if (v63[0])
      {
        v44 = &v60;
        mlir::DiagnosticArgument::DiagnosticArgument(&v60, v11);
        v45 = v64;
        if (v65 >= v66)
        {
          if (v64 <= &v60 && v64 + 24 * v65 > &v60)
          {
            v58 = &v60 - v64;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
            v45 = v64;
            v44 = (v64 + v58);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
            v44 = &v60;
            v45 = v64;
          }
        }

        v46 = &v45[24 * v65];
        v47 = *v44;
        *(v46 + 2) = *(v44 + 2);
        *v46 = v47;
        ++v65;
        if (v63[0])
        {
          mlir::InFlightDiagnostic::report(v63);
        }
      }
    }

    if ((v73 & 1) == 0)
    {
      return 0;
    }

    if (v72 != &v73)
    {
      free(v72);
    }

    v48 = __p;
    if (__p)
    {
      v49 = v71;
      v50 = __p;
      if (v71 != __p)
      {
        do
        {
          v49 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v49 - 1);
        }

        while (v49 != v48);
        v50 = __p;
      }

      v71 = v48;
      operator delete(v50);
    }

    v21 = v68;
    if (!v68)
    {
      goto LABEL_75;
    }

    v51 = v69;
    v23 = v68;
    if (v69 == v68)
    {
      goto LABEL_74;
    }

    do
    {
      v53 = *--v51;
      v52 = v53;
      *v51 = 0;
      if (v53)
      {
        operator delete[](v52);
      }
    }

    while (v51 != v21);
    goto LABEL_73;
  }

  a1[1] = v11;
LABEL_11:
  v77.var0 = "operandSegmentSizes";
  v77.var1 = 19;
  v12 = mlir::DictionaryAttr::get(&v59, v77);
  if (!v12)
  {
    v78.var0 = "operand_segment_sizes";
    v78.var1 = 21;
    v12 = mlir::DictionaryAttr::get(&v59, v78);
    if (!v12)
    {
      return 1;
    }
  }

  return (mlir::convertFromAttribute(a1 + 2, 3, v12, a3, a4) & 1) != 0;
}

uint64_t mlir::cf::SwitchOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v32[6] = *MEMORY[0x1E69E9840];
  v29 = a1;
  v30 = v32;
  v31 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v29, "case_operand_segments", 21, *a2);
    v6 = v31;
    if (v31 >= HIDWORD(v31))
    {
      v25 = NamedAttr;
      v26 = v5;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v32, v31 + 1, 16);
      v5 = v26;
      NamedAttr = v25;
      v6 = v31;
    }

    v7 = (v30 + 16 * v6);
    *v7 = NamedAttr;
    v7[1] = v5;
    LODWORD(v31) = v31 + 1;
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = mlir::Builder::getNamedAttr(&v29, "case_values", 11, v8);
    v11 = v31;
    if (v31 >= HIDWORD(v31))
    {
      v27 = v9;
      v28 = v10;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v32, v31 + 1, 16);
      v10 = v28;
      v9 = v27;
      v11 = v31;
    }

    v12 = (v30 + 16 * v11);
    *v12 = v9;
    v12[1] = v10;
    LODWORD(v31) = v31 + 1;
  }

  v13 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, a2 + 2, 3);
  v14 = mlir::Builder::getNamedAttr(&v29, "operandSegmentSizes", 19, v13);
  v16 = v31;
  if (v31 >= HIDWORD(v31))
  {
    v23 = v14;
    v24 = v15;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v32, v31 + 1, 16);
    v15 = v24;
    v14 = v23;
    v16 = v31;
  }

  v17 = (v30 + 16 * v16);
  *v17 = v14;
  v17[1] = v15;
  v18 = __CFADD__(v31, 1);
  v19 = (v31 + 1);
  LODWORD(v31) = v31 + 1;
  if (v18)
  {
    DictionaryAttr = 0;
    v21 = v30;
    if (v30 == v32)
    {
      return DictionaryAttr;
    }

    goto LABEL_16;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v29, v30, v19);
  v21 = v30;
  if (v30 != v32)
  {
LABEL_16:
    free(v21);
  }

  return DictionaryAttr;
}

uint64_t mlir::cf::SwitchOp::getInherentAttr(uint64_t *a1, void *a2, char *__s1, size_t __n)
{
  if (__n == 11)
  {
    if (!memcmp(__s1, "case_values", 0xBuLL))
    {
      return a2[1];
    }

    return 0;
  }

  if (__n == 19)
  {
    v7 = a1;
    if (!memcmp(__s1, "operandSegmentSizes", 0x13uLL))
    {
      return mlir::detail::DenseArrayAttrImpl<int>::get(v7, a2 + 2, 3);
    }

    return 0;
  }

  if (__n != 21)
  {
    return 0;
  }

  if (*__s1 != 0x65706F5F65736163 || *(__s1 + 1) != 0x6765735F646E6172 || *(__s1 + 13) != 0x73746E656D676573)
  {
    v7 = a1;
    if (!memcmp(__s1, "operand_segment_sizes", 0x15uLL))
    {
      return mlir::detail::DenseArrayAttrImpl<int>::get(v7, a2 + 2, 3);
    }

    return 0;
  }

  return *a2;
}

uint64_t mlir::cf::SwitchOp::setInherentAttr(uint64_t result, char *__s1, uint64_t a3, void *a4)
{
  v5 = result;
  if (a3 == 11)
  {
    result = memcmp(__s1, "case_values", 0xBuLL);
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

        v5[1] = v10;
      }

      else
      {
        v5[1] = 0;
      }
    }
  }

  else
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

      if (*__s1 == 0x65706F5F65736163 && *(__s1 + 1) == 0x6765735F646E6172 && *(__s1 + 13) == 0x73746E656D676573)
      {
        if (a4)
        {
          result = mlir::detail::DenseArrayAttrImpl<int>::classof(a4);
          if (result)
          {
            v11 = a4;
          }

          else
          {
            v11 = 0;
          }

          *v5 = v11;
        }

        else
        {
          *result = 0;
        }

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
      if (result)
      {
        v8 = a4;
      }

      else
      {
        v8 = 0;
      }

      v12 = v8;
      if (v8)
      {
        result = mlir::AffineBinaryOpExpr::getLHS(&v12);
        if (result == 3)
        {
          result = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v12);
          if (v9)
          {
            return memmove(v5 + 2, result, 4 * v9);
          }
        }
      }
    }
  }

  return result;
}

BOOL mlir::cf::SwitchOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps3(v8, "case_operand_segments", 0x15, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps2(v9, "case_values", 0xB, a3, a4) & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps3(void *a1, void *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v45 = *MEMORY[0x1E69E9840];
  if (!a1 || mlir::detail::DenseArrayAttrImpl<int>::classof(a1))
  {
    return 1;
  }

  a4(&v33, a5);
  if (v33)
  {
    LODWORD(v29) = 3;
    v30 = "attribute '";
    v31 = 11;
    v11 = &v29;
    v12 = v35;
    if (v36 >= v37)
    {
      if (v35 <= &v29 && v35 + 24 * v36 > &v29)
      {
        v27 = &v29 - v35;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v36 + 1, 24);
        v12 = v35;
        v11 = v35 + v27;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v36 + 1, 24);
        v11 = &v29;
        v12 = v35;
      }
    }

    v13 = &v12[24 * v36];
    v14 = *v11;
    *(v13 + 2) = *(v11 + 2);
    *v13 = v14;
    ++v36;
    if (v33)
    {
      v32 = 261;
      v29 = a2;
      v30 = a3;
      mlir::Diagnostic::operator<<(&v34, &v29);
      if (v33)
      {
        LODWORD(v29) = 3;
        v30 = "' failed to satisfy constraint: i32 dense array attribute";
        v31 = 57;
        v15 = &v29;
        v16 = v35;
        if (v36 >= v37)
        {
          if (v35 <= &v29 && v35 + 24 * v36 > &v29)
          {
            v28 = &v29 - v35;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v36 + 1, 24);
            v16 = v35;
            v15 = v35 + v28;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v36 + 1, 24);
            v15 = &v29;
            v16 = v35;
          }
        }

        v17 = &v16[24 * v36];
        v18 = *v15;
        *(v17 + 2) = *(v15 + 2);
        *v17 = v18;
        ++v36;
      }
    }
  }

  v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v33);
  if (v33)
  {
    mlir::InFlightDiagnostic::report(&v33);
  }

  if (v44 == 1)
  {
    if (v43 != &v44)
    {
      free(v43);
    }

    v19 = __p;
    if (__p)
    {
      v20 = v42;
      v21 = __p;
      if (v42 != __p)
      {
        do
        {
          v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v42 = v19;
      operator delete(v21);
    }

    v22 = v39;
    if (v39)
    {
      v23 = v40;
      v24 = v39;
      if (v40 != v39)
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
        v24 = v39;
      }

      v40 = v22;
      operator delete(v24);
    }

    if (v35 != v38)
    {
      free(v35);
    }
  }

  return v9;
}

uint64_t mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps2(uint64_t a1, void *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v45 = *MEMORY[0x1E69E9840];
  if (!a1 || mlir::DenseIntElementsAttr::classof(a1))
  {
    return 1;
  }

  a4(&v33, a5);
  if (v33)
  {
    LODWORD(v29) = 3;
    v30 = "attribute '";
    v31 = 11;
    v11 = &v29;
    v12 = v35;
    if (v36 >= v37)
    {
      if (v35 <= &v29 && v35 + 24 * v36 > &v29)
      {
        v27 = &v29 - v35;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v36 + 1, 24);
        v12 = v35;
        v11 = v35 + v27;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v36 + 1, 24);
        v11 = &v29;
        v12 = v35;
      }
    }

    v13 = &v12[24 * v36];
    v14 = *v11;
    *(v13 + 2) = *(v11 + 2);
    *v13 = v14;
    ++v36;
    if (v33)
    {
      v32 = 261;
      v29 = a2;
      v30 = a3;
      mlir::Diagnostic::operator<<(&v34, &v29);
      if (v33)
      {
        LODWORD(v29) = 3;
        v30 = "' failed to satisfy constraint: integer elements attribute";
        v31 = 58;
        v15 = &v29;
        v16 = v35;
        if (v36 >= v37)
        {
          if (v35 <= &v29 && v35 + 24 * v36 > &v29)
          {
            v28 = &v29 - v35;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v36 + 1, 24);
            v16 = v35;
            v15 = v35 + v28;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v38, v36 + 1, 24);
            v15 = &v29;
            v16 = v35;
          }
        }

        v17 = &v16[24 * v36];
        v18 = *v15;
        *(v17 + 2) = *(v15 + 2);
        *v17 = v18;
        ++v36;
      }
    }
  }

  v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v33);
  if (v33)
  {
    mlir::InFlightDiagnostic::report(&v33);
  }

  if (v44 == 1)
  {
    if (v43 != &v44)
    {
      free(v43);
    }

    v19 = __p;
    if (__p)
    {
      v20 = v42;
      v21 = __p;
      if (v42 != __p)
      {
        do
        {
          v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v42 = v19;
      operator delete(v21);
    }

    v22 = v39;
    if (v39)
    {
      v23 = v40;
      v24 = v39;
      if (v40 != v39)
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
        v24 = v39;
      }

      v40 = v22;
      operator delete(v24);
    }

    if (v35 != v38)
    {
      free(v35);
    }
  }

  return v9;
}

uint64_t mlir::cf::SwitchOp::readProperties(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2[32];
  if (v3)
  {
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, a2[32]))
    {
      return 0;
    }
  }

  else
  {
    v5 = operator new(0x20uLL);
    v5[1] = 0;
    v5[2] = 0;
    *v5 = 0;
    *(v5 + 6) = 0;
    a2[32] = v5;
    a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a2[35] = v9;
    a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a2[37] = v9;
    {
      mlir::cf::SwitchOp::build();
    }

    a2[33] = mlir::detail::TypeIDResolver<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = a2[32];
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, v3))
    {
      return 0;
    }
  }

  if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(a1, v3 + 1))
  {
    if ((*(*a1 + 40))(a1) <= 5)
    {
      v11 = 0;
      if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, &v11))
      {
        return 0;
      }

      if (mlir::AffineBinaryOpExpr::getLHS(&v11) >= 4)
      {
        v9[0] = "size mismatch for operand/result_segment_size";
        v10 = 259;
        (*(*a1 + 16))(&v12, a1, v9);
        if (v12)
        {
          mlir::InFlightDiagnostic::report(&v12);
        }

        if (v13[192] == 1)
        {
          mlir::Diagnostic::~Diagnostic(v13);
        }

        return 0;
      }

      v6 = mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v11);
      if (v7)
      {
        memmove(v3 + 2, v6, 4 * v7);
      }
    }

    if (*(*a1 + 40))(a1) < 6 || (mlir::DialectBytecodeReader::readSparseArray<int>(a1, v3 + 4, 3))
    {
      return 1;
    }
  }

  return 0;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    v3 = operator new(0x20uLL);
    v3[1] = 0;
    v3[2] = 0;
    *v3 = 0;
    *(v3 + 6) = 0;
    a1[32] = v3;
    a1[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a1[35] = &v5;
    a1[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a1[37] = &v4;
    {
      mlir::cf::SwitchOp::build();
    }

    a1[33] = mlir::detail::TypeIDResolver<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    return a1[32];
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::DenseIntElementsAttr>(uint64_t a1, uint64_t *a2)
{
  v54 = *MEMORY[0x1E69E9840];
  v37 = 0;
  if (((*(*a1 + 56))(a1, &v37) & 1) == 0)
  {
    return 0;
  }

  v4 = v37;
  if (!v37)
  {
    return 1;
  }

  v5 = mlir::DenseIntElementsAttr::classof(v37);
  v6 = v5 ? v4 : 0;
  *a2 = v6;
  if (v5)
  {
    return 1;
  }

  v36[16] = 257;
  (*(*a1 + 16))(&v42, a1, v36);
  if (v42)
  {
    LODWORD(v38) = 3;
    v39 = "expected ";
    v40 = 9;
    v8 = &v38;
    v9 = v44;
    if (v45 >= v46)
    {
      if (v44 <= &v38 && v44 + 24 * v45 > &v38)
      {
        v33 = &v38 - v44;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v45 + 1, 24);
        v9 = v44;
        v8 = (v44 + v33);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v45 + 1, 24);
        v8 = &v38;
        v9 = v44;
      }
    }

    v10 = &v9[24 * v45];
    v11 = *v8;
    *(v10 + 2) = v8[2];
    *v10 = v11;
    ++v45;
  }

  v38 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::DenseIntElementsAttr]";
  v39 = 76;
  v12 = llvm::StringRef::find(&v38, "DesiredTypeName = ", 0x12uLL, 0);
  if (v42)
  {
    if (v39 >= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v39;
    }

    v14 = 18;
    if (v39 - v13 < 0x12)
    {
      v14 = v39 - v13;
    }

    v15 = v39 - v13 - v14;
    if (v15 >= v15 - 1)
    {
      --v15;
    }

    v41 = 261;
    v38 += v13 + v14;
    v39 = v15;
    mlir::Diagnostic::operator<<(&v43, &v38);
    if (v42)
    {
      LODWORD(v38) = 3;
      v39 = ", but got: ";
      v40 = 11;
      v16 = &v38;
      v17 = v44;
      if (v45 >= v46)
      {
        if (v44 <= &v38 && v44 + 24 * v45 > &v38)
        {
          v34 = &v38 - v44;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v45 + 1, 24);
          v17 = v44;
          v16 = (v44 + v34);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v45 + 1, 24);
          v16 = &v38;
          v17 = v44;
        }
      }

      v18 = &v17[24 * v45];
      v19 = *v16;
      *(v18 + 2) = v16[2];
      *v18 = v19;
      ++v45;
      if (v42)
      {
        v20 = &v38;
        mlir::DiagnosticArgument::DiagnosticArgument(&v38, v37);
        v21 = v44;
        if (v45 >= v46)
        {
          if (v44 <= &v38 && v44 + 24 * v45 > &v38)
          {
            v35 = &v38 - v44;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v45 + 1, 24);
            v21 = v44;
            v20 = (v44 + v35);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v45 + 1, 24);
            v20 = &v38;
            v21 = v44;
          }
        }

        v22 = &v21[24 * v45];
        v23 = *v20;
        *(v22 + 2) = v20[2];
        *v22 = v23;
        ++v45;
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
  v24 = result;
  if (v42)
  {
    mlir::InFlightDiagnostic::report(&v42);
    result = v24;
  }

  if (v53 == 1)
  {
    if (v52 != &v53)
    {
      free(v52);
      result = v24;
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
      result = v24;
    }

    v28 = v48;
    if (v48)
    {
      v29 = v49;
      v30 = v48;
      if (v49 != v48)
      {
        do
        {
          v32 = *--v29;
          v31 = v32;
          *v29 = 0;
          if (v32)
          {
            operator delete[](v31);
          }
        }

        while (v29 != v28);
        v30 = v48;
      }

      v49 = v28;
      operator delete(v30);
      result = v24;
    }

    if (v44 != v47)
    {
      free(v44);
      return v24;
    }
  }

  return result;
}

uint64_t mlir::cf::SwitchOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  v6 = *(v4 + 64);
  v5 = v4 + 64;
  (*(*a2 + 16))(a2, v6);
  (*(*a2 + 24))(a2, *(v5 + 8));
  if ((*(*a2 + 104))(a2) <= 5)
  {
    Context = mlir::Attribute::getContext((*a1 + 24));
    v8 = mlir::detail::DenseArrayAttrImpl<int>::get(Context, (v5 + 16), 3);
    (*(*a2 + 16))(a2, v8);
  }

  result = (*(*a2 + 104))(a2);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a2, (v5 + 16), 3);
  }

  return result;
}

BOOL mlir::cf::SwitchOp::verifyInvariantsImpl(mlir::cf::SwitchOp *this)
{
  v75 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  v6 = *(v3 + 64);
  v4 = v3 + 64;
  v5 = v6;
  if (v6)
  {
    v7 = *(v4 + 8);
    v64[0] = v2;
    if (mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps2(v7, "case_values", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v64))
    {
      v64[0] = *this;
      if (mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps3(v5, "case_operand_segments", 0x15, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v64))
      {
        v8 = *this;
        v9 = *(*this + 44);
        v10 = (v9 >> 23) & 1;
        v11 = *(*this + 16 * v10 + 80);
        if ((v9 & 0x800000) != 0)
        {
          v12 = *(v8 + 72);
          if (v11)
          {
            goto LABEL_6;
          }
        }

        else
        {
          v12 = 0;
          if (v11)
          {
LABEL_6:
            for (i = 0; i != v11; ++i)
            {
              v14 = *(*(v12 + 32 * i + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
              if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
              {
                v15 = *this;
                v60 = 261;
                v59[0] = "operand";
                v59[1] = 7;
                mlir::Operation::emitOpError(v15, v59, v64);
                if (v64[0])
                {
                  v61 = 3;
                  v62 = " #";
                  v63 = 2;
                  v16 = v65;
                  if (v66 >= v67)
                  {
                    if (v65 <= &v61 && v65 + 24 * v66 > &v61)
                    {
                      v43 = &v61 - v65;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
                      v16 = v65;
                      v17 = (v65 + v43);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
                      v17 = &v61;
                      v16 = v65;
                    }
                  }

                  else
                  {
                    v17 = &v61;
                  }

                  v18 = &v16[24 * v66];
                  v19 = *v17;
                  *(v18 + 2) = *(v17 + 2);
                  *v18 = v19;
                  v20 = ++v66;
                  if (v64[0])
                  {
                    v61 = 5;
                    v62 = i;
                    v21 = v65;
                    if (v20 >= v67)
                    {
                      if (v65 <= &v61 && v65 + 24 * v20 > &v61)
                      {
                        v44 = &v61 - v65;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v20 + 1, 24);
                        v21 = v65;
                        v22 = (v65 + v44);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v20 + 1, 24);
                        v22 = &v61;
                        v21 = v65;
                      }
                    }

                    else
                    {
                      v22 = &v61;
                    }

                    v23 = &v21[24 * v66];
                    v24 = *v22;
                    *(v23 + 2) = *(v22 + 2);
                    *v23 = v24;
                    v25 = ++v66;
                    if (v64[0])
                    {
                      v61 = 3;
                      v62 = " must be integer, but got ";
                      v63 = 26;
                      v26 = v65;
                      if (v25 >= v67)
                      {
                        if (v65 <= &v61 && v65 + 24 * v25 > &v61)
                        {
                          v45 = &v61 - v65;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v25 + 1, 24);
                          v26 = v65;
                          v27 = (v65 + v45);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v25 + 1, 24);
                          v27 = &v61;
                          v26 = v65;
                        }
                      }

                      else
                      {
                        v27 = &v61;
                      }

                      v28 = &v26[24 * v66];
                      v29 = *v27;
                      *(v28 + 2) = *(v27 + 2);
                      *v28 = v29;
                      ++v66;
                      if (v64[0])
                      {
                        v30 = &v61;
                        mlir::DiagnosticArgument::DiagnosticArgument(&v61, v14);
                        v31 = v65;
                        if (v66 >= v67)
                        {
                          if (v65 <= &v61 && v65 + 24 * v66 > &v61)
                          {
                            v46 = &v61 - v65;
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
                            v31 = v65;
                            v30 = (v65 + v46);
                          }

                          else
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
                            v30 = &v61;
                            v31 = v65;
                          }
                        }

                        v32 = &v31[24 * v66];
                        v33 = *v30;
                        *(v32 + 2) = *(v30 + 2);
                        *v32 = v33;
                        ++v66;
                      }
                    }
                  }
                }

                v34 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v64);
                if (v64[0])
                {
                  mlir::InFlightDiagnostic::report(v64);
                }

                if (v74 == 1)
                {
                  if (v73 != &v74)
                  {
                    free(v73);
                  }

                  v35 = __p;
                  if (__p)
                  {
                    v36 = v72;
                    v37 = __p;
                    if (v72 != __p)
                    {
                      do
                      {
                        v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
                      }

                      while (v36 != v35);
                      v37 = __p;
                    }

                    v72 = v35;
                    operator delete(v37);
                  }

                  v38 = v69;
                  if (v69)
                  {
                    v39 = v70;
                    v40 = v69;
                    if (v70 != v69)
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
                      v40 = v69;
                    }

                    v70 = v38;
                    operator delete(v40);
                  }

                  if (v65 != v68)
                  {
                    free(v65);
                  }

                  if (!v34)
                  {
                    return 0;
                  }
                }

                else if (!v34)
                {
                  return 0;
                }
              }
            }

            v8 = *this;
            v10 = (*(*this + 44) >> 23) & 1;
          }
        }

        v56 = (v8 + 16 * v10);
        v57 = (v56[21] + v56[20]);
        return mlir::OpTrait::impl::verifyValueSizeAttr(v8, "case_operand_segments", 0x15uLL, "caseOperands", 0xC, ((v56[22] + v57) - v57)) & 1;
      }
    }

    return 0;
  }

  else
  {
    v59[0] = "requires attribute 'case_operand_segments'";
    v60 = 259;
    mlir::OpState::emitOpError(this, v59, v64);
    v47 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v64);
    if (v64[0])
    {
      mlir::InFlightDiagnostic::report(v64);
    }

    if (v74 == 1)
    {
      if (v73 != &v74)
      {
        free(v73);
      }

      v48 = __p;
      if (__p)
      {
        v49 = v72;
        v50 = __p;
        if (v72 != __p)
        {
          do
          {
            v49 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v49 - 1);
          }

          while (v49 != v48);
          v50 = __p;
        }

        v72 = v48;
        operator delete(v50);
      }

      v51 = v69;
      if (v69)
      {
        v52 = v70;
        v53 = v69;
        if (v70 != v69)
        {
          do
          {
            v55 = *--v52;
            v54 = v55;
            *v52 = 0;
            if (v55)
            {
              operator delete[](v54);
            }
          }

          while (v52 != v51);
          v53 = v69;
        }

        v70 = v51;
        operator delete(v53);
      }

      if (v65 != v68)
      {
        free(v65);
      }
    }
  }

  return v47;
}

uint64_t mlir::cf::SwitchOp::parse(void *a1, void *a2)
{
  v109 = *MEMORY[0x1E69E9840];
  memset(v73, 0, sizeof(v73));
  v74 = 0;
  v72[0] = v73;
  v72[1] = 1;
  v70[1] = 1;
  v71 = 0;
  v69 = 0;
  v70[0] = &v71;
  v97 = v99;
  v98 = 0x400000000;
  v95[0] = &v96;
  v95[1] = 0x100000000;
  v92 = v94;
  v93 = 0x200000000;
  v89 = v91;
  v90 = 0x400000000;
  v86 = v88;
  v87 = 0xC00000000;
  v83 = &v85;
  v84 = 0x100000000;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v73, 1) & 1) == 0)
  {
    goto LABEL_118;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_118;
  }

  v77 = 0;
  if (!mlir::AsmParser::parseType<mlir::IntegerType>(a1, &v77))
  {
    goto LABEL_118;
  }

  v71 = v77;
  if (((*(*a1 + 120))(a1) & 1) == 0 || ((*(*a1 + 312))(a1) & 1) == 0)
  {
    goto LABEL_118;
  }

  v65 = (*(*a1 + 40))(a1);
  v64 = (*(*a1 + 40))(a1);
  v80 = v82;
  v81 = 0x100000000;
  v77 = v79;
  v78 = 0x100000000;
  v108[8] = 257;
  v68 = a2;
  if (((*(*a1 + 400))(a1, "default", 7, &v106) & 1) == 0 || ((*(*a1 + 104))(a1) & 1) == 0 || ((*(*a1 + 800))(a1, &v69) & 1) == 0 || ((*(*a1 + 288))(a1) & 1) != 0 && (((*(*a1 + 720))(a1, &v97, 0, 0, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 584))(a1, v95) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0))
  {
    goto LABEL_94;
  }

  v106 = v108;
  v107 = 0x300000000;
  IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v71);
  if ((*(*a1 + 128))(a1))
  {
    v5 = 0xFFFFFFFFFFFFFFFFLL >> -IntOrFloatBitWidth;
    if (!IntOrFloatBitWidth)
    {
      v5 = 0;
    }

    v55 = v5;
    while (1)
    {
      v76 = 0;
      if ((mlir::AsmParser::parseInteger<long long>(a1, &v76) & 1) == 0)
      {
LABEL_69:
        v61 = 0;
        v21 = 0;
        goto LABEL_70;
      }

      v6 = v76;
      LODWORD(v101) = IntOrFloatBitWidth;
      if (IntOrFloatBitWidth > 0x40)
      {
        llvm::APInt::initSlowCase(&__p, v76, 0);
      }

      else
      {
        __p = (v76 & v55);
      }

      v7 = v106;
      if (v107 >= HIDWORD(v107))
      {
        if (v106 <= &__p && v106 + 16 * v107 > &__p)
        {
          v20 = &__p - v106;
          llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v106, v107 + 1);
          v7 = v106;
          p_p = &v20[v106];
        }

        else
        {
          llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v106, v107 + 1);
          p_p = &__p;
          v7 = v106;
        }
      }

      else
      {
        p_p = &__p;
      }

      v9 = v7 + 16 * v107;
      *(v9 + 8) = *(p_p + 2);
      *v9 = *p_p;
      *(p_p + 2) = 0;
      LODWORD(v107) = v107 + 1;
      if (v101 >= 0x41 && __p)
      {
        operator delete[](__p);
      }

      v75 = 0;
      v103 = v105;
      v104 = 0x100000000;
      __p = v102;
      v101 = 0x600000000;
      if (((*(*a1 + 104))(a1, v6) & 1) == 0 || ((*(*a1 + 800))(a1, &v75) & 1) == 0 || ((*(*a1 + 288))(a1) & 1) != 0 && (((*(*a1 + 720))(a1, &v103, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 584))(a1, &__p) & 1) == 0 || ((*(*a1 + 296))(a1) & 1) == 0))
      {
        if (__p != v102)
        {
          free(__p);
        }

        if (v103 != v105)
        {
          free(v103);
        }

        goto LABEL_69;
      }

      v10 = v75;
      v11 = v93;
      if (v93 >= HIDWORD(v93))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v94, v93 + 1, 8);
        v11 = v93;
      }

      *(v92 + v11) = v10;
      LODWORD(v93) = v93 + 1;
      if (v81 < HIDWORD(v81))
      {
        break;
      }

      llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,false>::growAndEmplaceBack<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>&>(&v80, &v103);
      a2 = v68;
      v15 = v78;
      if (v78 >= HIDWORD(v78))
      {
LABEL_60:
        llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Type,6u>,false>::growAndEmplaceBack<llvm::SmallVector<mlir::Type,6u>&>(&v77, &__p);
        v19 = __p;
        if (__p == v102)
        {
          goto LABEL_54;
        }

LABEL_53:
        free(v19);
        goto LABEL_54;
      }

LABEL_45:
      v16 = (v77 + 64 * v15);
      v17 = v16 + 2;
      *v16 = v16 + 2;
      v16[1] = 0x600000000;
      if (v16 != &__p)
      {
        v18 = v101;
        if (v101)
        {
          v57 = v101;
          if (v101 < 7uLL)
          {
            goto LABEL_50;
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod(v16, (v16 + 2), v101, 8);
          v18 = v101;
          if (v101)
          {
            v17 = *v16;
LABEL_50:
            memcpy(v17, __p, 8 * v18);
          }

          *(v16 + 2) = v57;
        }
      }

      LODWORD(v78) = v78 + 1;
      v19 = __p;
      if (__p != v102)
      {
        goto LABEL_53;
      }

LABEL_54:
      if (v103 != v105)
      {
        free(v103);
      }

      if (((*(*a1 + 128))(a1) & 1) == 0)
      {
        goto LABEL_63;
      }
    }

    v12 = (v80 + 48 * v81);
    v13 = v12 + 2;
    *v12 = (v12 + 2);
    v12[1] = 0x100000000;
    a2 = v68;
    if (v12 == &v103 || !v104)
    {
LABEL_44:
      LODWORD(v81) = v81 + 1;
      v15 = v78;
      if (v78 >= HIDWORD(v78))
      {
        goto LABEL_60;
      }

      goto LABEL_45;
    }

    v56 = v104;
    if (v104 < 2)
    {
      v14 = 32;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v12, (v12 + 2), v104, 32);
      if (!v104)
      {
LABEL_43:
        *(v12 + 2) = v56;
        goto LABEL_44;
      }

      v13 = *v12;
      v14 = 32 * v104;
    }

    memcpy(v13, v103, v14);
    goto LABEL_43;
  }

LABEL_63:
  if (v107)
  {
    v103 = v107;
    v21 = 1;
    v22 = mlir::VectorType::get(&v103, 1uLL, v71, 0, 0);
    mlir::detail::Interface<mlir::ShapedType,mlir::Type,mlir::detail::ShapedTypeInterfaceTraits,mlir::Type,mlir::TypeTrait::TraitBase>::Interface<mlir::VectorType,(void *)0>(&__p, v22);
    v61 = mlir::DenseElementsAttr::get(__p, v101, v106, v107);
LABEL_70:
    v23 = v106;
    if (v107)
    {
      v66 = v21;
      v24 = 16 * v107 + v106 - 8;
      v25 = -16 * v107;
      v26 = v24;
      do
      {
        v27 = *v26;
        v26 -= 4;
        if (v27 >= 0x41)
        {
          v28 = *(v24 - 8);
          if (v28)
          {
            operator delete[](v28);
          }
        }

        v24 = v26;
        v25 += 16;
      }

      while (v25);
      v23 = v106;
      a2 = v68;
      v21 = v66;
    }

    else
    {
      a2 = v68;
    }
  }

  else
  {
    v61 = 0;
    v21 = 1;
    v23 = v106;
  }

  if (v23 != v108)
  {
    free(v23);
  }

  if ((v21 ^ 1))
  {
LABEL_94:
    v67 = 1;
LABEL_95:
    v37 = v77;
    if (v78)
    {
      v38 = (v77 + 64 * v78 - 64);
      v39 = -64 * v78;
      do
      {
        if (v38 + 2 != *v38)
        {
          free(*v38);
        }

        v38 -= 8;
        v39 += 64;
      }

      while (v39);
      v37 = v77;
    }

    goto LABEL_101;
  }

  v67 = v21 ^ 1;
  if (v61)
  {
    *(mlir::OperationState::getOrAddProperties<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties>(a2) + 8) = v61;
  }

  if (v81)
  {
    v29 = v80;
    v62 = v80 + 48 * v81;
    v58 = v4;
    do
    {
      v30 = *v29;
      v31 = *(v29 + 2);
      v32 = v90;
      v33 = v90 + v31;
      if (v33 > HIDWORD(v90))
      {
        v34 = *v29;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v91, v33, 32);
        v30 = v34;
        v4 = v58;
        v32 = v90;
      }

      if (v31)
      {
        memcpy(v89 + 32 * v32, v30, 32 * v31);
        v32 = v90;
      }

      LODWORD(v90) = v32 + v31;
      v35 = *(v29 + 2);
      v36 = v87;
      if (v87 >= HIDWORD(v87))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v86, v88, v87 + 1, 4);
        v36 = v87;
      }

      *(v86 + v36) = v35;
      LODWORD(v87) = v87 + 1;
      v29 += 48;
    }

    while (v29 != v62);
  }

  v37 = v77;
  if (v78)
  {
    v63 = (v77 + 64 * v78);
    v51 = v84;
    do
    {
      v52 = *v37;
      v53 = *(v37 + 2);
      v54 = v53 + v51;
      if (v54 > HIDWORD(v84))
      {
        __src = *v37;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, &v85, v54, 8);
        v52 = __src;
        v51 = v84;
      }

      if (v53)
      {
        memcpy(v83 + 8 * v51, v52, 8 * v53);
        v51 = v84;
      }

      v51 += v53;
      LODWORD(v84) = v51;
      v37 += 8;
    }

    while (v37 != v63);
    goto LABEL_95;
  }

LABEL_101:
  if (v37 != v79)
  {
    free(v37);
  }

  v40 = v80;
  if (v81)
  {
    v41 = (v80 + 48 * v81 - 48);
    v42 = -48 * v81;
    do
    {
      if (v41 + 2 != *v41)
      {
        free(*v41);
      }

      v41 -= 6;
      v42 += 48;
    }

    while (v42);
    v40 = v80;
  }

  if (v40 != v82)
  {
    free(v40);
  }

  if (v67 & 1) == 0 && ((*(*a1 + 328))(a1))
  {
    v106 = (*(*a1 + 40))(a1);
    if ((*(*a1 + 488))(a1, v68 + 14))
    {
      v43 = v68[1];
      v77 = a1;
      v78 = &v106;
      v79[0] = v68;
      if (mlir::cf::SwitchOp::verifyInherentAttrs(v43, (v68 + 14), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::cf::SwitchOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v77))
      {
        mlir::OperationState::addSuccessors(v68, v69);
        mlir::BlockRange::BlockRange(&v77, v92, v93);
        mlir::OperationState::addSuccessors(v68, v77, v78);
        v44 = v98;
        v45 = v90;
        v46 = mlir::OperationState::getOrAddProperties<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties>(v68);
        v46[4] = 1;
        v46[5] = v44;
        v46[6] = v45;
        v47 = (*(*a1 + 32))(a1);
        DenseI32ArrayAttr = mlir::Builder::getDenseI32ArrayAttr(v47, v86, v87);
        *mlir::OperationState::getOrAddProperties<mlir::cf::detail::SwitchOpGenericAdaptorBase::Properties>(v68) = DenseI32ArrayAttr;
        if (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v72, v70, v4, (v68 + 2)) & 1) != 0 && (mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v97, v95, v65, (v68 + 2)))
        {
          v49 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v89, &v83, v64, (v68 + 2)) & 1;
          goto LABEL_119;
        }
      }
    }
  }

LABEL_118:
  v49 = 0;
LABEL_119:
  if (v83 != &v85)
  {
    free(v83);
  }

  if (v86 != v88)
  {
    free(v86);
  }

  if (v89 != v91)
  {
    free(v89);
  }

  if (v92 != v94)
  {
    free(v92);
  }

  if (v95[0] != &v96)
  {
    free(v95[0]);
  }

  if (v97 != v99)
  {
    free(v97);
  }

  return v49;
}

uint64_t collapseBranch(mlir::Block **a1, void *a2, uint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  if (*(*(v4 + 5) + 8) != (v4 + 32))
  {
    return 0;
  }

  Terminator = mlir::Block::getTerminator(v4, a2);
  if (!Terminator || *(*(Terminator + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::cf::BranchOp,void>::id)
  {
    return 0;
  }

  v10 = *(*a1 + 6);
  v11 = *(*a1 + 7);
  if (v10 != v11)
  {
    v12 = *(*a1 + 6);
    do
    {
      v13 = *v12;
      while (1)
      {
        v13 = *v13;
        if (!v13)
        {
          break;
        }

        if (v13[2] != Terminator)
        {
          return 0;
        }
      }

      ++v12;
    }

    while (v12 != v11);
  }

  v14 = *(Terminator + 44);
  v15 = *(((Terminator + 16 * ((v14 >> 23) & 1) + ((v14 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 24);
  if (v15 == *a1)
  {
    return 0;
  }

  if ((v14 & 0x800000) == 0)
  {
    if (v10 != v11)
    {
      goto LABEL_30;
    }

    v17 = 0;
    v16 = 0;
LABEL_33:
    *a1 = v15;
    mlir::ValueRange::ValueRange(&v24, v16, v17);
    goto LABEL_34;
  }

  v16 = *(Terminator + 72);
  v17 = *(Terminator + 68);
  if (v10 == v11)
  {
    goto LABEL_33;
  }

  if (v17)
  {
    v18 = (v16 + 24);
    do
    {
      v19 = *v18;
      if ((~*(*v18 + 8) & 7) != 0)
      {
        v20 = 0;
      }

      else
      {
        v20 = *v18;
      }

      if (v20 && *(v20 + 16) == *a1)
      {
        v19 = mlir::ValueRange::dereference_iterator(a2, *(v20 + 24));
      }

      v21 = *(a3 + 8);
      if (v21 >= *(a3 + 12))
      {
        v23 = v19;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, v21 + 1, 8);
        v19 = v23;
        v21 = *(a3 + 8);
      }

      *(*a3 + 8 * v21) = v19;
      v22 = *(a3 + 8) + 1;
      *(a3 + 8) = v22;
      v18 += 4;
      --v17;
    }

    while (v17);
    goto LABEL_31;
  }

LABEL_30:
  v22 = *(a3 + 8);
LABEL_31:
  *a1 = v15;
  mlir::ValueRange::ValueRange(&v24, *a3, v22);
LABEL_34:
  *a2 = v24;
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *&,mlir::ValueRange &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v27[11] = *MEMORY[0x1E69E9840];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::cf::BranchOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *&,mlir::ValueRange &>(v23, v22, v21);
  }

  mlir::OperationState::OperationState(v23, a2, v9);
  v11 = *a3;
  v12 = *a4;
  v13 = a4[1];
  v14 = v25;
  if (v25 >= v26)
  {
    v18 = *a4;
    v19 = v13;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 8);
    v13 = v19;
    v12 = v18;
    v14 = v25;
  }

  *(v24 + 8 * v14) = v11;
  ++v25;
  mlir::OperationState::addOperands(v23, v12, v13);
  v15 = mlir::OpBuilder::create(a1, v23);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::cf::BranchOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v23);
  return v16;
}

uint64_t **mlir::detail::Interface<mlir::ShapedType,mlir::Type,mlir::detail::ShapedTypeInterfaceTraits,mlir::Type,mlir::TypeTrait::TraitBase>::Interface<mlir::VectorType,(void *)0>(uint64_t **result, uint64_t *a2)
{
  *result = a2;
  if (!a2)
  {
    result[1] = 0;
    return result;
  }

  v2 = *a2;
  {
    v12 = v2;
    v13 = result;
    mlir::TensorType::operator mlir::ShapedType();
    result = v13;
    v3 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v4 = *(v12 + 8);
    v5 = *(v12 + 16);
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_15:
    result[1] = 0;
    return result;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  if (!v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  v6 = v4;
  v7 = v5;
  do
  {
    v8 = v7 >> 1;
    v9 = &v6[2 * (v7 >> 1)];
    v11 = *v9;
    v10 = v9 + 2;
    v7 += ~(v7 >> 1);
    if (v11 < v3)
    {
      v6 = v10;
    }

    else
    {
      v7 = v8;
    }
  }

  while (v7);
  if (v6 == &v4[2 * v5])
  {
    goto LABEL_15;
  }

  if (*v6 == v3)
  {
    result[1] = v6[1];
  }

  else
  {
    result[1] = 0;
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *,mlir::OperandRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::cf::BranchOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *&,mlir::ValueRange &>(v22, &v27, v21);
  }

  mlir::OperationState::OperationState(v22, a2, v9);
  v11 = *a3;
  mlir::ValueRange::ValueRange(&v27, *a4, *(a4 + 8));
  v12 = v27;
  v13 = v28;
  v14 = v24;
  if (v24 >= v25)
  {
    v18 = v27;
    v19 = v28;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, &v26, v24 + 1, 8);
    v13 = v19;
    v12 = v18;
    v14 = v24;
  }

  *(v23 + 8 * v14) = v11;
  ++v24;
  mlir::OperationState::addOperands(v22, v12, v13);
  v15 = mlir::OpBuilder::create(a1, v22);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::cf::BranchOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v22);
  return v16;
}

uint64_t mlir::OpBuilder::create<mlir::cf::SwitchOp,mlir::detail::TypedValue<mlir::IntegerType>,mlir::Block *,mlir::OperandRange,llvm::SmallVector<llvm::APInt,3u> &,llvm::SmallVector<mlir::Block *,6u> &,llvm::SmallVector<mlir::ValueRange,3u> &>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29[5] = *MEMORY[0x1E69E9840];
  v26 = a2;
  Context = mlir::Attribute::getContext(&v26);
  v17 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::cf::SwitchOp,void>::id, Context);
  if ((v18 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::cf::SwitchOp,mlir::detail::TypedValue<mlir::IntegerType>,mlir::Block *,mlir::OperandRange,llvm::SmallVector<llvm::APInt,3u> &,llvm::SmallVector<mlir::Block *,6u> &,llvm::SmallVector<mlir::ValueRange,3u> &>(v27, v29, v28);
  }

  mlir::OperationState::OperationState(v27, a2, v17);
  v19 = *a3;
  v20 = *a4;
  mlir::ValueRange::ValueRange(v29, *a5, *(a5 + 8));
  v21 = *a6;
  v22 = *(a6 + 8);
  mlir::BlockRange::BlockRange(v28, *a7, *(a7 + 8));
  mlir::cf::SwitchOp::build(a1, v27, v19, v20, v29[0], v29[1], v21, v22, v28[0], v28[1], *a8, *(a8 + 8));
  v23 = mlir::OpBuilder::create(a1, v27);
  if (*(*(v23 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::cf::SwitchOp,void>::id)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  mlir::OperationState::~OperationState(v27);
  return v24;
}

void foldSwitch(uint64_t a1, uint64_t a2, const void **a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a1 + 64;
  v7 = *(a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1) + 8) != 0;
  v31 = *(a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1) + 8);
  v32 = v7;
  mlir::DenseElementsAttr::getValues<llvm::APInt>(&v31, v29);
  v37[0] = *v29;
  v37[2] = *&v29[32];
  *&v29[24] = *&v29[16];
  v37[1] = *&v29[24];
  *&v29[8] = *v29;
  *v29 = 0;
  v8 = v30;
  if (*&v29[24] == v30)
  {
LABEL_2:
    v9 = *(a1 + 44);
    v10 = v6 + 16 * ((v9 >> 23) & 1);
    *&v37[0] = *(((v10 + ((v9 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
    v11 = *(v10 + 16);
    v12 = *(v10 + 20);
    if ((v9 & 0x800000) != 0)
    {
      v13 = *(a1 + 72);
    }

    else
    {
      v13 = 0;
    }

    *v29 = v13 + 32 * v11;
    *&v29[8] = (v12 + v11) - v11;
    v14 = mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *,mlir::OperandRange>((a2 + 8), *(a1 + 24), v37, v29);
    (*(*a2 + 8))(a2, a1, v14);
    return;
  }

  v15 = 0;
  while (1)
  {
    mlir::DenseElementsAttr::IntElementIterator::operator*(&v29[8], &v33);
    v28 = v34;
    v16 = v33;
    v26 = v15;
    __p = v33;
    if (v34 > 0x40)
    {
      break;
    }

    if (v33 == *a3)
    {
      goto LABEL_13;
    }

LABEL_8:
    v15 = ++*v29;
    if (++*&v29[24] == v8)
    {
      goto LABEL_2;
    }
  }

  if (!llvm::APInt::equalSlowCase(&__p, a3))
  {
    if (v16)
    {
      operator delete[](v16);
    }

    goto LABEL_8;
  }

LABEL_13:
  mlir::SuccessorRange::SuccessorRange(&v33, a1);
  v17 = v33;
  mlir::SuccessorRange::SuccessorRange(&v33, a1);
  v25 = v17[4 * v26 + 7];
  v18 = *(a1 + 44);
  v19 = v6 + 16 * ((v18 >> 23) & 1);
  v20 = *(v19 + 24);
  if ((v18 & 0x800000) != 0)
  {
    v21 = *(a1 + 72);
  }

  else
  {
    v21 = 0;
  }

  v22 = (*(v19 + 20) + *(v19 + 16));
  v36[0] = v21 + 32 * v22;
  v36[1] = (v20 + v22) - v22;
  mlir::OperandRange::split(v36, *v19, &v33);
  v33 = mlir::OperandRangeRange::dereference(&v33, v35 + v26);
  v34 = v23;
  v24 = mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *,mlir::OperandRange>((a2 + 8), *(a1 + 24), &v25, &v33);
  (*(*a2 + 8))(a2, a1, v24);
  if (v28 >= 0x41 && __p)
  {
    operator delete[](__p);
  }
}

uint64_t llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Value,6u>,false>::growAndEmplaceBack<>(uint64_t a1)
{
  v17 = 0;
  v2 = a1 + 16;
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 64, &v17);
  v4 = v3;
  v5 = &v3[8 * *(a1 + 8)];
  *v5 = v5 + 2;
  v5[1] = 0x600000000;
  v6 = *a1;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = v7 << 6;
    v9 = v3;
    do
    {
      *v9 = v9 + 2;
      v9[1] = 0x600000000;
      if (*(v6 + 8))
      {
        llvm::SmallVectorImpl<unsigned long long>::operator=(v9, v6);
      }

      v9 += 8;
      v6 += 64;
      v8 -= 64;
    }

    while (v8);
    v6 = *a1;
    v10 = *(a1 + 8);
    if (v10)
    {
      v11 = v10 << 6;
      v12 = (v11 + v6 - 64);
      v13 = -v11;
      do
      {
        if (v12 + 2 != *v12)
        {
          free(*v12);
        }

        v12 -= 8;
        v13 += 64;
      }

      while (v13);
      v6 = *a1;
    }
  }

  v14 = v17;
  if (v6 != v2)
  {
    free(v6);
  }

  *a1 = v4;
  v15 = (*(a1 + 8) + 1);
  *(a1 + 8) = v15;
  *(a1 + 12) = v14;
  return &v4[8 * v15 - 8];
}

uint64_t mlir::OpBuilder::create<mlir::cf::SwitchOp,mlir::detail::TypedValue<mlir::IntegerType>,mlir::Block *&,mlir::ValueRange &,mlir::DenseIntElementsAttr &,llvm::SmallVector<mlir::Block *,6u> &,llvm::SmallVector<mlir::ValueRange,3u> &>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, uint64_t a7, uint64_t a8)
{
  v30[5] = *MEMORY[0x1E69E9840];
  v27 = a2;
  Context = mlir::Attribute::getContext(&v27);
  v17 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::cf::SwitchOp,void>::id, Context);
  if ((v18 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::cf::SwitchOp,mlir::detail::TypedValue<mlir::IntegerType>,mlir::Block *,mlir::OperandRange,llvm::SmallVector<llvm::APInt,3u> &,llvm::SmallVector<mlir::Block *,6u> &,llvm::SmallVector<mlir::ValueRange,3u> &>(v29, v30, v28);
  }

  mlir::OperationState::OperationState(v29, a2, v17);
  v19 = *a3;
  v20 = *a4;
  v22 = *a5;
  v21 = a5[1];
  v23 = *a6;
  mlir::BlockRange::BlockRange(v30, *a7, *(a7 + 8));
  mlir::cf::SwitchOp::build(a1, v29, v19, v22, v21, *a8, *(a8 + 8), v23, v20, v30[0], v30[1]);
  v24 = mlir::OpBuilder::create(a1, v29);
  if (*(*(v24 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::cf::SwitchOp,void>::id)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  mlir::OperationState::~OperationState(v29);
  return v25;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>,llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>::LookupBucketFor<llvm::APInt>(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a1 + 4);
  if (!v4)
  {
    v14 = 0;
    *a3 = 0;
    return v14;
  }

  v6 = *a1;
  v19 = 0;
  v18 = -1;
  v17 = 0;
  __p = -2;
  v7 = 0;
  v8 = v4 - 1;
  v9 = 1;
  v10 = llvm::DenseMapInfo<llvm::APInt,void>::getHashValue(a2) & (v4 - 1);
  v11 = v6 + 16 * v10;
  v12 = *(a2 + 8);
  if (v12 != *(v11 + 8))
  {
    goto LABEL_7;
  }

LABEL_3:
  if (v12 > 0x40)
  {
    if (!llvm::APInt::equalSlowCase(a2, v11))
    {
      goto LABEL_7;
    }
  }

  else if (*a2 != *v11)
  {
LABEL_7:
    while (!llvm::DenseMapInfo<llvm::APInt,void>::isEqual(v11, &v18))
    {
      if (llvm::DenseMapInfo<llvm::APInt,void>::isEqual(v11, &__p) && v7 == 0)
      {
        v7 = v11;
      }

      v13 = v10 + v9++;
      v10 = v13 & v8;
      v11 = v6 + 16 * (v13 & v8);
      v12 = *(a2 + 8);
      if (v12 == *(v11 + 8))
      {
        goto LABEL_3;
      }
    }

    v14 = 0;
    if (v7)
    {
      v11 = v7;
    }

    *a3 = v11;
    if (v17 < 0x41)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v14 = 1;
  *a3 = v11;
  if (v17 >= 0x41)
  {
LABEL_13:
    if (__p)
    {
      operator delete[](__p);
    }
  }

LABEL_15:
  if (v19 >= 0x41 && v18)
  {
    operator delete[](v18);
  }

  return v14;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>,llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>::InsertIntoBucket<llvm::APInt,llvm::detail::DenseSetEmpty&>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v12 = a2;
  v4 = *(a1 + 2);
  v5 = *(a1 + 4);
  if (4 * v4 + 4 >= 3 * v5)
  {
    v8 = a3;
    v5 *= 2;
    goto LABEL_9;
  }

  if (v5 + ~v4 - *(a1 + 3) <= v5 >> 3)
  {
    v8 = a3;
LABEL_9:
    v9 = a1;
    llvm::DenseMapBase<llvm::DenseMap<llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>,llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>::grow(a1, v5);
    llvm::DenseMapBase<llvm::DenseMap<llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>,llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>::LookupBucketFor<llvm::APInt>(v9, v8, &v12);
    a1 = v9;
    a3 = v8;
    v10 = *(v9 + 2);
    v3 = v12;
    *(a1 + 2) = v10 + 1;
    v6 = *(v3 + 8);
    if (v6)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  *(a1 + 2) = v4 + 1;
  v6 = *(v3 + 8);
  if (v6)
  {
LABEL_4:
    --*(a1 + 3);
    if (v6 >= 0x41 && *v3)
    {
      v7 = a3;
      operator delete[](*v3);
      a3 = v7;
    }

    goto LABEL_12;
  }

LABEL_10:
  if (*v3 != -1)
  {
    --*(a1 + 3);
  }

LABEL_12:
  *v3 = *a3;
  *(v3 + 8) = *(a3 + 8);
  *(a3 + 8) = 0;
  return v3;
}

BOOL llvm::DenseMapInfo<llvm::APInt,void>::isEqual(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != *(a2 + 8))
  {
    return 0;
  }

  if (v2 > 0x40)
  {
    return llvm::APInt::equalSlowCase(a1, a2);
  }

  return *a1 == *a2;
}

char *llvm::DenseMapBase<llvm::DenseMap<llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>,llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(16 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v10 = (16 * v3);
    llvm::DenseMapBase<llvm::DenseMap<llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>,llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>::moveFromOldBuckets(a1, v4, &v10[v4]);

    llvm::deallocate_buffer(v4, v10);
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = (v11 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v12)
    {
      v13 = v12 + 1;
      v14 = (v12 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v15 = &result[16 * v14];
      v16 = result + 16;
      v17 = v14;
      do
      {
        *(v16 - 2) = 0;
        *(v16 + 2) = 0;
        *(v16 - 2) = -1;
        *v16 = -1;
        v16 += 32;
        v17 -= 2;
      }

      while (v17);
      if (v13 == v14)
      {
        return result;
      }
    }

    else
    {
      v15 = result;
    }

    v18 = &result[16 * v11];
    do
    {
      *(v15 + 2) = 0;
      *v15 = -1;
      v15 += 16;
    }

    while (v15 != v18);
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>,llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>::moveFromOldBuckets(uint64_t a1, llvm::APInt *this, llvm::APInt *a3)
{
  *(a1 + 8) = 0;
  v16 = 0;
  __p = -1;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = 16 * v6;
    do
    {
      while (1)
      {
        v9 = v16;
        *(v7 + 8) = v16;
        if (v9 > 0x40)
        {
          break;
        }

        *v7 = __p;
        v7 += 16;
        v8 -= 16;
        if (!v8)
        {
          goto LABEL_6;
        }
      }

      llvm::APInt::initSlowCase(v7, &__p);
      v7 += 16;
      v8 -= 16;
    }

    while (v8);
LABEL_6:
    if (v16 >= 0x41 && __p)
    {
      operator delete[](__p);
    }
  }

  v16 = 0;
  __p = -1;
  v14 = 0;
  v13 = -2;
  if (this == a3)
  {
    goto LABEL_31;
  }

  do
  {
    v10 = *(this + 2);
    if (v10 == v16)
    {
      if (v10 > 0x40)
      {
        if (llvm::APInt::equalSlowCase(this, &__p))
        {
          goto LABEL_23;
        }
      }

      else if (*this == __p)
      {
        goto LABEL_12;
      }
    }

    if (v10 != v14)
    {
      goto LABEL_25;
    }

    if (v10 <= 0x40)
    {
      if (*this == v13)
      {
        goto LABEL_12;
      }

LABEL_25:
      v12 = 0;
      llvm::DenseMapBase<llvm::DenseMap<llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>,llvm::APInt,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::APInt,void>,llvm::detail::DenseSetPair<llvm::APInt>>::LookupBucketFor<llvm::APInt>(a1, this, &v12);
      v11 = v12;
      if (*(v12 + 8) >= 0x41u && *v12)
      {
        operator delete[](*v12);
      }

      *v11 = *this;
      *(v11 + 8) = *(this + 2);
      *(this + 2) = 0;
      ++*(a1 + 8);
      goto LABEL_12;
    }

    if (!llvm::APInt::equalSlowCase(this, &v13))
    {
      goto LABEL_25;
    }

LABEL_23:
    if (*this)
    {
      operator delete[](*this);
    }

LABEL_12:
    this = (this + 16);
  }

  while (this != a3);
  if (v14 >= 0x41 && v13)
  {
    operator delete[](v13);
  }

LABEL_31:
  if (v16 >= 0x41)
  {
    if (__p)
    {
      operator delete[](__p);
    }
  }
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::cf::__mlir_ods_local_attr_constraint_ControlFlowOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

uint64_t mlir::AsmParser::parseInteger<long long>(uint64_t a1, uint64_t *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 40))(a1);
  v17[0] = a1;
  v5 = mlir::AsmParser::parseOptionalIntegerAndCheck<long long,mlir::OptionalParseResult mlir::AsmParser::parseOptionalInteger<long long>(long long &)::{lambda(llvm::APInt &)#1}>(a1, a2, v17);
  if ((v5 & 0x100) == 0)
  {
    v15 = "expected integer value";
    v16 = 259;
    (*(*a1 + 24))(v17, a1, v4, &v15);
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
    if (v17[0])
    {
      mlir::InFlightDiagnostic::report(v17);
    }

    if (v25 == 1)
    {
      if (v24 != &v25)
      {
        free(v24);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v23;
        v8 = __p;
        if (v23 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v23 = v6;
        operator delete(v8);
      }

      v9 = v20;
      if (v20)
      {
        v10 = v21;
        v11 = v20;
        if (v21 != v20)
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
          v11 = v20;
        }

        v21 = v9;
        operator delete(v11);
      }

      if (v18 != &v19)
      {
        free(v18);
      }
    }
  }

  return v5;
}

uint64_t mlir::AsmParser::parseOptionalIntegerAndCheck<long long,mlir::OptionalParseResult mlir::AsmParser::parseOptionalInteger<long long>(long long &)::{lambda(llvm::APInt &)#1}>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = (*(*a1 + 40))(a1);
  v29 = 1;
  v28 = 0;
  v7 = (*(**a3 + 376))();
  if ((v7 & (v7 >> 8) & 1) == 0)
  {
    v11 = BYTE1(v7);
    return v7 | (v11 << 8);
  }

  llvm::APInt::sextOrTrunc(&v28, 0x40u, &__p);
  v8 = v31;
  if (v31 >= 0x41)
  {
    v12 = v8 - llvm::APInt::countLeadingZerosSlowCase(&__p);
    v13 = __p;
    if (v12 <= 0x40)
    {
      *a2 = *__p;
    }

    else
    {
      v9 = -1;
      *a2 = -1;
      if (!v13)
      {
        v10 = v29;
        v31 = v29;
        if (v29 > 0x40)
        {
          goto LABEL_16;
        }

        goto LABEL_10;
      }
    }

    operator delete[](v13);
    v9 = *a2;
    v10 = v29;
    v31 = v29;
    if (v29 > 0x40)
    {
      goto LABEL_16;
    }

LABEL_10:
    if (v10)
    {
      v14 = 0xFFFFFFFFFFFFFFFFLL >> -v10;
    }

    else
    {
      v14 = 0;
    }

    __p = (v14 & v9);
LABEL_17:
    if (__p == v28)
    {
      goto LABEL_18;
    }

    goto LABEL_23;
  }

  v9 = __p;
  *a2 = __p;
  v10 = v29;
  v31 = v29;
  if (v29 <= 0x40)
  {
    goto LABEL_10;
  }

LABEL_16:
  llvm::APInt::initSlowCase(&__p, v9, 0);
  if (v31 <= 0x40)
  {
    goto LABEL_17;
  }

  v15 = llvm::APInt::equalSlowCase(&__p, &v28);
  if (__p)
  {
    operator delete[](__p);
  }

  if (v15)
  {
LABEL_18:
    LOBYTE(v7) = 1;
    v11 = 1;
    if (v29 < 0x41)
    {
      return v7 | (v11 << 8);
    }

    goto LABEL_44;
  }

LABEL_23:
  v26 = "integer value too large";
  v27 = 259;
  (*(*a1 + 24))(&__p, a1, v6, &v26);
  if (__p)
  {
    mlir::InFlightDiagnostic::report(&__p);
  }

  if (v39 == 1)
  {
    if (v38 != &v39)
    {
      free(v38);
    }

    v16 = v36;
    if (v36)
    {
      v17 = v37;
      v18 = v36;
      if (v37 != v36)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = v36;
      }

      v37 = v16;
      operator delete(v18);
    }

    v19 = v34;
    if (v34)
    {
      v20 = v35;
      v21 = v34;
      if (v35 != v34)
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
        v21 = v34;
      }

      v35 = v19;
      operator delete(v21);
    }

    if (v32 != &v33)
    {
      free(v32);
    }
  }

  LOBYTE(v7) = 0;
  v11 = 1;
  if (v29 >= 0x41)
  {
LABEL_44:
    if (v28)
    {
      v24 = v7;
      operator delete[](v28);
      LOBYTE(v7) = v24;
    }
  }

  return v7 | (v11 << 8);
}

uint64_t llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>,false>::growAndEmplaceBack<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,1u>&>(uint64_t a1, uint64_t a2)
{
  v23 = 0;
  v4 = a1 + 16;
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 48, &v23);
  v6 = v5;
  v7 = &v5[6 * *(a1 + 8)];
  v8 = v7 + 2;
  *v7 = v7 + 2;
  v7[1] = 0x100000000;
  v9 = *(a2 + 8);
  if (v7 != a2 && v9 != 0)
  {
    if (v9 < 2)
    {
      v12 = 32;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v7, (v7 + 2), *(a2 + 8), 32);
      v11 = *(a2 + 8);
      if (!v11)
      {
LABEL_10:
        *(v7 + 2) = v9;
        goto LABEL_11;
      }

      v8 = *v7;
      v12 = 32 * v11;
    }

    memcpy(v8, *a2, v12);
    goto LABEL_10;
  }

LABEL_11:
  v13 = *a1;
  v14 = *(a1 + 8);
  if (v14)
  {
    v15 = 48 * v14;
    v16 = v6;
    do
    {
      *v16 = v16 + 2;
      v16[1] = 0x100000000;
      if (*(v13 + 8))
      {
        llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand>::operator=(v16, v13);
      }

      v16 += 6;
      v13 += 48;
      v15 -= 48;
    }

    while (v15);
    v13 = *a1;
    v17 = *(a1 + 8);
    if (v17)
    {
      v18 = (v13 + 48 * v17 - 48);
      v19 = -48 * v17;
      do
      {
        if (v18 + 2 != *v18)
        {
          free(*v18);
        }

        v18 -= 6;
        v19 += 48;
      }

      while (v19);
      v13 = *a1;
    }
  }

  v20 = v23;
  if (v13 != v4)
  {
    free(v13);
  }

  *a1 = v6;
  v21 = *(a1 + 8) + 1;
  *(a1 + 8) = v21;
  *(a1 + 12) = v20;
  return &v6[6 * v21 - 6];
}

uint64_t llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand>::operator=(uint64_t result, const void **a2)
{
  if (result != a2)
  {
    v3 = a2 + 2;
    v2 = *a2;
    if (*a2 != a2 + 2)
    {
      if (*result != result + 16)
      {
        v4 = result;
        v5 = a2;
        free(*result);
        a2 = v5;
        result = v4;
        v2 = *v5;
      }

      *result = v2;
      v6 = a2 + 1;
      *(result + 8) = a2[1];
      *a2 = v3;
      *(a2 + 3) = 0;
      goto LABEL_17;
    }

    v6 = a2 + 1;
    v7 = *(a2 + 2);
    v8 = *(result + 8);
    if (v8 >= v7)
    {
      if (v7)
      {
        v12 = result;
        memmove(*result, *a2, 32 * v7 - 4);
        result = v12;
      }

      *(result + 8) = v7;
      goto LABEL_17;
    }

    if (*(result + 12) >= v7)
    {
      if (v8)
      {
        v10 = result;
        v13 = a2;
        memmove(*result, *a2, 32 * v8 - 4);
        a2 = v13;
        v11 = *v6 - v8;
        if (!v11)
        {
LABEL_16:
          result = v10;
          *(v10 + 8) = v7;
LABEL_17:
          *v6 = 0;
          return result;
        }
      }

      else
      {
        v10 = result;
        v8 = 0;
        v11 = *v6;
        if (!*v6)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      *(result + 8) = 0;
      v9 = a2;
      v10 = result;
      llvm::SmallVectorBase<unsigned int>::grow_pod(result, result + 16, v7, 32);
      a2 = v9;
      v8 = 0;
      v11 = *v6;
      if (!*v6)
      {
        goto LABEL_16;
      }
    }

    memcpy((*v10 + 32 * v8), *a2 + 32 * v8, 32 * v11);
    goto LABEL_16;
  }

  return result;
}

uint64_t llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Type,6u>,false>::growAndEmplaceBack<llvm::SmallVector<mlir::Type,6u>&>(uint64_t a1, uint64_t a2)
{
  v23 = 0;
  v4 = a1 + 16;
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 64, &v23);
  v6 = v5;
  v7 = &v5[8 * *(a1 + 8)];
  v8 = v7 + 2;
  *v7 = v7 + 2;
  v7[1] = 0x600000000;
  v9 = *(a2 + 8);
  if (v7 != a2 && v9 != 0)
  {
    if (v9 < 7)
    {
      v11 = *(a2 + 8);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v7, (v7 + 2), *(a2 + 8), 8);
      v11 = *(a2 + 8);
      if (!v11)
      {
LABEL_10:
        *(v7 + 2) = v9;
        goto LABEL_11;
      }

      v8 = *v7;
    }

    memcpy(v8, *a2, 8 * v11);
    goto LABEL_10;
  }

LABEL_11:
  v12 = *a1;
  v13 = *(a1 + 8);
  if (v13)
  {
    v14 = v13 << 6;
    v15 = v6;
    do
    {
      *v15 = v15 + 2;
      v15[1] = 0x600000000;
      if (*(v12 + 8))
      {
        llvm::SmallVectorImpl<llvm::SMLoc>::operator=(v15, v12);
      }

      v15 += 8;
      v12 += 64;
      v14 -= 64;
    }

    while (v14);
    v12 = *a1;
    v16 = *(a1 + 8);
    if (v16)
    {
      v17 = v16 << 6;
      v18 = (v17 + v12 - 64);
      v19 = -v17;
      do
      {
        if (v18 + 2 != *v18)
        {
          free(*v18);
        }

        v18 -= 8;
        v19 += 64;
      }

      while (v19);
      v12 = *a1;
    }
  }

  v20 = v23;
  if (v12 != v4)
  {
    free(v12);
  }

  *a1 = v6;
  v21 = (*(a1 + 8) + 1);
  *(a1 + 8) = v21;
  *(a1 + 12) = v20;
  return &v6[8 * v21 - 8];
}

uint64_t mlir::RegisteredOperationName::insert<mlir::cf::AssertOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::cf::AssertOp>,mlir::OpTrait::ZeroResults<mlir::cf::AssertOp>,mlir::OpTrait::ZeroSuccessors<mlir::cf::AssertOp>,mlir::OpTrait::OneOperand<mlir::cf::AssertOp>,mlir::OpTrait::OpInvariants<mlir::cf::AssertOp>,mlir::BytecodeOpInterface::Trait<mlir::cf::AssertOp>,mlir::MemoryEffectOpInterface::Trait<mlir::cf::AssertOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "cf.assert", 9, a1, &mlir::detail::TypeIDResolver<mlir::cf::AssertOp,void>::id, &v9);
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

  *v2 = &unk_1F5AF45B0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::cf::AssertOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::cf::BranchOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::cf::BranchOp>,mlir::OpTrait::ZeroResults<mlir::cf::BranchOp>,mlir::OpTrait::OneSuccessor<mlir::cf::BranchOp>,mlir::OpTrait::VariadicOperands<mlir::cf::BranchOp>,mlir::OpTrait::OpInvariants<mlir::cf::BranchOp>,mlir::BranchOpInterface::Trait<mlir::cf::BranchOp>,mlir::ConditionallySpeculatable::Trait<mlir::cf::BranchOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::cf::BranchOp>,mlir::MemoryEffectOpInterface::Trait<mlir::cf::BranchOp>,mlir::OpTrait::IsTerminator<mlir::cf::BranchOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "cf.br", 5, a1, &mlir::detail::TypeIDResolver<mlir::cf::BranchOp,void>::id, &v9);
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

  *v2 = &unk_1F5AF4690;
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

uint64_t mlir::RegisteredOperationName::insert<mlir::cf::CondBranchOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::cf::CondBranchOp>,mlir::OpTrait::ZeroResults<mlir::cf::CondBranchOp>,mlir::OpTrait::NSuccessors<2u>::Impl<mlir::cf::CondBranchOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::cf::CondBranchOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::cf::CondBranchOp>,mlir::OpTrait::OpInvariants<mlir::cf::CondBranchOp>,mlir::BytecodeOpInterface::Trait<mlir::cf::CondBranchOp>,mlir::BranchOpInterface::Trait<mlir::cf::CondBranchOp>,mlir::ConditionallySpeculatable::Trait<mlir::cf::CondBranchOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::cf::CondBranchOp>,mlir::MemoryEffectOpInterface::Trait<mlir::cf::CondBranchOp>,mlir::OpTrait::IsTerminator<mlir::cf::CondBranchOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "cf.cond_br", 10, a1, &mlir::detail::TypeIDResolver<mlir::cf::CondBranchOp,void>::id, &v9);
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

  *v2 = &unk_1F5AF4770;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::cf::CondBranchOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::cf::SwitchOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::cf::SwitchOp>,mlir::OpTrait::ZeroResults<mlir::cf::SwitchOp>,mlir::OpTrait::AtLeastNSuccessors<1u>::Impl<mlir::cf::SwitchOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::cf::SwitchOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::cf::SwitchOp>,mlir::OpTrait::OpInvariants<mlir::cf::SwitchOp>,mlir::BytecodeOpInterface::Trait<mlir::cf::SwitchOp>,mlir::BranchOpInterface::Trait<mlir::cf::SwitchOp>,mlir::ConditionallySpeculatable::Trait<mlir::cf::SwitchOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::cf::SwitchOp>,mlir::MemoryEffectOpInterface::Trait<mlir::cf::SwitchOp>,mlir::OpTrait::IsTerminator<mlir::cf::SwitchOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "cf.switch", 9, a1, &mlir::detail::TypeIDResolver<mlir::cf::SwitchOp,void>::id, &v9);
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

  *v2 = &unk_1F5AF4850;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::cf::SwitchOp::getAttributeNames(void)::attrNames, 3);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::AssertOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::cf::AssertOp>::~Model(void *__p)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::AssertOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
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

BOOL mlir::RegisteredOperationName::Model<mlir::cf::AssertOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
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

void mlir::RegisteredOperationName::Model<mlir::cf::AssertOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::AssertOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::AssertOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
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

unint64_t mlir::RegisteredOperationName::Model<mlir::cf::AssertOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  mlir::Attribute::getContext((a2 + 24));
  if (a4 == 3 && (*a3 == 29549 ? (v7 = *(a3 + 2) == 103) : (v7 = 0), v7))
  {
    return *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) & 0xFFFFFFFFFFFFFF00 | *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::AssertOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a3;
  v6 = *(a2 + 44);
  result = mlir::OpaqueAttr::getAttrData(&v12);
  if (v8 == 3 && *result == 29549 && *(result + 2) == 103)
  {
    v10 = a2 + 16 * ((v6 >> 23) & 1);
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
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

void mlir::RegisteredOperationName::Model<mlir::cf::AssertOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  mlir::Attribute::getContext((a2 + 24));
  v5 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v5)
  {

    mlir::NamedAttrList::append(a3, "msg", 3, v5);
  }
}

void mlir::RegisteredOperationName::Model<mlir::cf::AssertOp>::initProperties(uint64_t a1, uint64_t a2, void *a3, void *a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::AssertOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::cf::AssertOp::getPropertiesAsAttr(Context, v4);
}

unint64_t mlir::RegisteredOperationName::Model<mlir::cf::AssertOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = HIDWORD(*a2);
  v3 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v2);
  v4 = (0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) ^ ((0x9DDFEA08EB382D69 * (v2 ^ (v3 >> 47) ^ v3)) >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::cf::AssertOp>,mlir::OpTrait::ZeroResults<mlir::cf::AssertOp>,mlir::OpTrait::ZeroSuccessors<mlir::cf::AssertOp>,mlir::OpTrait::OneOperand<mlir::cf::AssertOp>,mlir::OpTrait::OpInvariants<mlir::cf::AssertOp>,mlir::BytecodeOpInterface::Trait<mlir::cf::AssertOp>,mlir::MemoryEffectOpInterface::Trait<mlir::cf::AssertOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(0x10uLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::cf::AssertOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::cf::AssertOp>::writeProperties;
  {
    v7 = v2;
    mlir::OpInterface<mlir::BytecodeOpInterface,mlir::detail::BytecodeOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v7;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc(8uLL);
  v5 = v4;
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::cf::AssertOp>::getEffects;
  {
    v8 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v5 = v8;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v6, v5);
}

uint64_t mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::cf::AssertOp>::getEffects(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  {
    mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::cf::AssertOp>::getEffects();
    v3 = a3;
  }

  v6 = &mlir::SideEffects::Effect::get<mlir::MemoryEffects::Write>(void)::instance;
  return llvm::SmallVectorImpl<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>>::emplace_back<mlir::MemoryEffects::Write *>(v3, &v6);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v35 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v35;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }
  }

  v29 = v1;
  v36 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v1 = v29;
  a1 = v36;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

LABEL_32:
  v30 = v1;
  v37 = a1;
  v24 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v2 = v24;
  v1 = v30;
  a1 = v37;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_33:
  v31 = v1;
  v38 = a1;
  v25 = v2;
  v20 = v3;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v3 = v20;
  v2 = v25;
  v1 = v31;
  a1 = v38;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

LABEL_35:
    v33 = v1;
    v40 = a1;
    v27 = v2;
    v18 = v4;
    v22 = v3;
    v15 = v5;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
    v5 = v15;
    v4 = v18;
    v3 = v22;
    v2 = v27;
    v1 = v33;
    a1 = v40;
    v6 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_36;
  }

LABEL_34:
  v32 = v1;
  v39 = a1;
  v26 = v2;
  v17 = v4;
  v21 = v3;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v4 = v17;
  v3 = v21;
  v2 = v26;
  v1 = v32;
  a1 = v39;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_35;
  }

LABEL_7:
  v6 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_36:
  v34 = v1;
  v41 = a1;
  v28 = v2;
  v19 = v4;
  v23 = v3;
  v14 = v6;
  v16 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v6 = v14;
  v5 = v16;
  v4 = v19;
  v3 = v23;
  v2 = v28;
  v1 = v34;
  a1 = v41;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::cf::AssertOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::cf::AssertOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyZeroResults(a1, v3) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || !mlir::OpTrait::impl::verifyOneOperand(a1, v5))
  {
    return 0;
  }

  v7 = a1;
  return mlir::cf::AssertOp::verifyInvariantsImpl(&v7);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::BranchOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::cf::BranchOp>::~Model(void *__p)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::BranchOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::cf::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::cf::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::cf::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::cf::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
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

BOOL mlir::RegisteredOperationName::Model<mlir::cf::BranchOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::cf::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::cf::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::cf::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::cf::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
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

void mlir::RegisteredOperationName::Model<mlir::cf::BranchOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::cf::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::cf::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::cf::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::cf::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::BranchOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::cf::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::BranchOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::cf::BranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::cf::BranchOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::BranchOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::cf::BranchOp>,mlir::OpTrait::ZeroResults<mlir::cf::BranchOp>,mlir::OpTrait::OneSuccessor<mlir::cf::BranchOp>,mlir::OpTrait::VariadicOperands<mlir::cf::BranchOp>,mlir::OpTrait::OpInvariants<mlir::cf::BranchOp>,mlir::BranchOpInterface::Trait<mlir::cf::BranchOp>,mlir::ConditionallySpeculatable::Trait<mlir::cf::BranchOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::cf::BranchOp>,mlir::MemoryEffectOpInterface::Trait<mlir::cf::BranchOp>,mlir::OpTrait::IsTerminator<mlir::cf::BranchOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(0x20uLL);
  v3 = v2;
  *v2 = mlir::detail::BranchOpInterfaceInterfaceTraits::Model<mlir::cf::BranchOp>::getSuccessorOperands;
  v2[1] = mlir::detail::BranchOpInterfaceInterfaceTraits::Model<mlir::cf::BranchOp>::getSuccessorBlockArgument;
  v2[2] = mlir::detail::BranchOpInterfaceInterfaceTraits::Model<mlir::cf::BranchOp>::getSuccessorForOperands;
  v2[3] = mlir::detail::BranchOpInterfaceInterfaceTraits::Model<mlir::cf::BranchOp>::areTypesCompatible;
  {
    v9 = v2;
    mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v9;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BranchOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc(8uLL);
  v5 = v4;
  *v4 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::cf::BranchOp>::getSpeculatability;
  {
    v10 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::cf::BranchOp>,mlir::OpTrait::ZeroResults<mlir::cf::BranchOp>,mlir::OpTrait::OneSuccessor<mlir::cf::BranchOp>,mlir::OpTrait::VariadicOperands<mlir::cf::BranchOp>,mlir::OpTrait::OpInvariants<mlir::cf::BranchOp>,mlir::BranchOpInterface::Trait<mlir::cf::BranchOp>,mlir::ConditionallySpeculatable::Trait<mlir::cf::BranchOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::cf::BranchOp>,mlir::MemoryEffectOpInterface::Trait<mlir::cf::BranchOp>,mlir::OpTrait::IsTerminator<mlir::cf::BranchOp>>();
    v5 = v10;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v5);
  v6 = malloc(8uLL);
  v7 = v6;
  *v6 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::cf::BranchOp>::getEffects;
  {
    v11 = v6;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v7 = v11;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v8, v7);
}

unint64_t mlir::detail::BranchOpInterfaceInterfaceTraits::Model<mlir::cf::BranchOp>::getSuccessorBlockArgument(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v19[3] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 40);
  if (!v3)
  {
    return 0;
  }

  v6 = a2 + 64;
  for (i = 24; ; i += 32)
  {
    if ((*(a2 + 46) & 0x80) != 0)
    {
      v8 = *(a2 + 68);
    }

    else
    {
      v8 = 0;
    }

    mlir::MutableOperandRange::MutableOperandRange(&v17, a2, 0, v8, 0, 0);
    mlir::SuccessorOperands::SuccessorOperands(v14, &v17);
    if (v18 != v19)
    {
      free(v18);
    }

    BranchSuccessorArgument = mlir::detail::getBranchSuccessorArgument(v14, a3, *(((v6 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + i));
    v11 = v10;
    if (v15 != &v16)
    {
      free(v15);
    }

    if (v11)
    {
      break;
    }

    if (!--v3)
    {
      v13 = 0;
      return BranchSuccessorArgument & 0xFFFFFFFFFFFFFF00 | v13;
    }
  }

  v13 = BranchSuccessorArgument;
  return BranchSuccessorArgument & 0xFFFFFFFFFFFFFF00 | v13;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v65 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v65;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_44;
    }
  }

  v56 = v1;
  v66 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v1 = v56;
  a1 = v66;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneSuccessor<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneSuccessor>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_45;
  }

LABEL_44:
  v57 = v1;
  v67 = a1;
  v48 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v2 = v48;
  v1 = v57;
  a1 = v67;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneSuccessor<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneSuccessor>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_46;
  }

LABEL_45:
  v58 = v1;
  v68 = a1;
  v41 = v3;
  v49 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v3 = v41;
  v2 = v49;
  v1 = v58;
  a1 = v68;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_47;
  }

LABEL_46:
  v59 = v1;
  v69 = a1;
  v42 = v3;
  v50 = v2;
  v35 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v4 = v35;
  v3 = v42;
  v2 = v50;
  v1 = v59;
  a1 = v69;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::BranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_48;
  }

LABEL_47:
  v60 = v1;
  v70 = a1;
  v43 = v3;
  v51 = v2;
  v30 = v5;
  v36 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v5 = v30;
  v4 = v36;
  v3 = v43;
  v2 = v51;
  v1 = v60;
  a1 = v70;
  v6 = mlir::detail::TypeIDResolver<mlir::BranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

    goto LABEL_49;
  }

LABEL_48:
  v61 = v1;
  v71 = a1;
  v44 = v3;
  v52 = v2;
  v31 = v5;
  v37 = v4;
  v26 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v6 = v26;
  v5 = v31;
  v4 = v37;
  v3 = v44;
  v2 = v52;
  v1 = v61;
  a1 = v71;
  v7 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_10;
    }

LABEL_50:
    v63 = v1;
    v73 = a1;
    v46 = v3;
    v54 = v2;
    v33 = v5;
    v39 = v4;
    v24 = v7;
    v28 = v6;
    v21 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v8 = v21;
    v7 = v24;
    v6 = v28;
    v5 = v33;
    v4 = v39;
    v3 = v46;
    v2 = v54;
    v1 = v63;
    a1 = v73;
    v9 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_51;
  }

LABEL_49:
  v62 = v1;
  v72 = a1;
  v45 = v3;
  v53 = v2;
  v32 = v5;
  v38 = v4;
  v23 = v7;
  v27 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v7 = v23;
  v6 = v27;
  v5 = v32;
  v4 = v38;
  v3 = v45;
  v2 = v53;
  v1 = v62;
  a1 = v72;
  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_50;
  }

LABEL_10:
  v9 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_51:
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
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
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::OpTrait::OneSuccessor<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneSuccessor>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::OneSuccessor<Empty>]";
  v6 = 84;
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

const char *llvm::getTypeName<mlir::BranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BranchOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::BranchOpInterface::Trait<Empty>]";
  v6 = 87;
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

uint64_t mlir::detail::BranchOpInterfaceTrait<mlir::cf::BranchOp>::verifyTrait(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  if (!v1)
  {
    return 1;
  }

  v3 = 0;
  while (1)
  {
    if ((*(a1 + 46) & 0x80) != 0)
    {
      v4 = *(a1 + 68);
    }

    else
    {
      v4 = 0;
    }

    mlir::MutableOperandRange::MutableOperandRange(&v10, a1, 0, v4, 0, 0);
    mlir::SuccessorOperands::SuccessorOperands(v7, &v10);
    if (v11 != v12)
    {
      free(v11);
    }

    v5 = mlir::detail::verifyBranchSuccessorOperands(a1, v3, v7);
    if (v8 != &v9)
    {
      free(v8);
    }

    if ((v5 & 1) == 0)
    {
      break;
    }

    if (v1 == ++v3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::CondBranchOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::cf::CondBranchOp>::~Model(void *__p)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::CondBranchOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
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

BOOL mlir::RegisteredOperationName::Model<mlir::cf::CondBranchOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
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

void mlir::RegisteredOperationName::Model<mlir::cf::CondBranchOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::CondBranchOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::CondBranchOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::cf::CondBranchOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::verifyRegionInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::CondBranchOp>::getInherentAttr(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  if (a4 == 19)
  {
    if (*a3 != 0x53646E617265706FLL || a3[1] != 0x6953746E656D6765 || *(a3 + 11) != 0x73657A6953746E65)
    {
      return 0;
    }
  }

  else
  {
    if (a4 != 21)
    {
      return 0;
    }

    v8 = *a3 == 0x5F646E617265706FLL && a3[1] == 0x5F746E656D676573;
    if (!v8 || *(a3 + 13) != 0x73657A69735F746ELL)
    {
      return 0;
    }
  }

  return mlir::detail::DenseArrayAttrImpl<int>::get(Context, (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64), 3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::CondBranchOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  AttrData = mlir::OpaqueAttr::getAttrData(&v9);
  return mlir::cf::CondBranchOp::setInherentAttr(v5 + 64, AttrData, v7, a4);
}

void mlir::RegisteredOperationName::Model<mlir::cf::CondBranchOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v6 = mlir::detail::DenseArrayAttrImpl<int>::get(Context, (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64), 3);

  mlir::NamedAttrList::append(a3, "operandSegmentSizes", 19, v6);
}

void mlir::RegisteredOperationName::Model<mlir::cf::CondBranchOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a4)
  {
    v4 = *a4;
    *(a3 + 8) = *(a4 + 2);
    *a3 = v4;
  }

  else
  {
    *(a3 + 8) = 0;
    *a3 = 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::cf::CondBranchOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::cf::CondBranchOp::getPropertiesAsAttr(Context, v4);
}

void mlir::RegisteredOperationName::Model<mlir::cf::CondBranchOp>::copyProperties(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  *(a2 + 8) = *(a3 + 2);
  *a2 = v3;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::cf::CondBranchOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = *(a2 + 4);
  v3 = __ROR8__(v2 + 12, 12);
  v4 = (((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (*a2 ^ 0xFF51AFD7ED558CCDLL ^ v3)) >> 47) ^ (0x9DDFEA08EB382D69 * (*a2 ^ 0xFF51AFD7ED558CCDLL ^ v3)))) ^ ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (*a2 ^ 0xFF51AFD7ED558CCDLL ^ v3)) >> 47) ^ (0x9DDFEA08EB382D69 * (*a2 ^ 0xFF51AFD7ED558CCDLL ^ v3)))) >> 47))) ^ v2) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * ((8 * ((-348639895 * ((-348639895 * (v3 ^ (((0x9DDFEA08EB382D69 * (*a2 ^ 0xFF51AFD7ED558CCDLL ^ v3)) >> 32) >> 15) ^ (-348639895 * (*a2 ^ 0xED558CCD ^ v3)))) ^ (((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (*a2 ^ 0xFF51AFD7ED558CCDLL ^ v3)) >> 47) ^ (0x9DDFEA08EB382D69 * (*a2 ^ 0xFF51AFD7ED558CCDLL ^ v3)))) >> 32) >> 15))) ^ v2) + 8) ^ v4);
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::cf::CondBranchOp>,mlir::OpTrait::ZeroResults<mlir::cf::CondBranchOp>,mlir::OpTrait::NSuccessors<2u>::Impl<mlir::cf::CondBranchOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::cf::CondBranchOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::cf::CondBranchOp>,mlir::OpTrait::OpInvariants<mlir::cf::CondBranchOp>,mlir::BytecodeOpInterface::Trait<mlir::cf::CondBranchOp>,mlir::BranchOpInterface::Trait<mlir::cf::CondBranchOp>,mlir::ConditionallySpeculatable::Trait<mlir::cf::CondBranchOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::cf::CondBranchOp>,mlir::MemoryEffectOpInterface::Trait<mlir::cf::CondBranchOp>,mlir::OpTrait::IsTerminator<mlir::cf::CondBranchOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(0x10uLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::cf::CondBranchOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::cf::CondBranchOp>::writeProperties;
  {
    v11 = v2;
    mlir::OpInterface<mlir::BytecodeOpInterface,mlir::detail::BytecodeOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v11;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc(0x20uLL);
  v5 = v4;
  *v4 = mlir::detail::BranchOpInterfaceInterfaceTraits::Model<mlir::cf::CondBranchOp>::getSuccessorOperands;
  v4[1] = mlir::detail::BranchOpInterfaceInterfaceTraits::Model<mlir::cf::CondBranchOp>::getSuccessorBlockArgument;
  v4[2] = mlir::detail::BranchOpInterfaceInterfaceTraits::Model<mlir::cf::CondBranchOp>::getSuccessorForOperands;
  v4[3] = mlir::detail::BranchOpInterfaceInterfaceTraits::Model<mlir::cf::CondBranchOp>::areTypesCompatible;
  {
    v12 = v4;
    mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor();
    v5 = v12;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BranchOpInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc(8uLL);
  v7 = v6;
  *v6 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::cf::CondBranchOp>::getSpeculatability;
  {
    v13 = v6;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::cf::BranchOp>,mlir::OpTrait::ZeroResults<mlir::cf::BranchOp>,mlir::OpTrait::OneSuccessor<mlir::cf::BranchOp>,mlir::OpTrait::VariadicOperands<mlir::cf::BranchOp>,mlir::OpTrait::OpInvariants<mlir::cf::BranchOp>,mlir::BranchOpInterface::Trait<mlir::cf::BranchOp>,mlir::ConditionallySpeculatable::Trait<mlir::cf::BranchOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::cf::BranchOp>,mlir::MemoryEffectOpInterface::Trait<mlir::cf::BranchOp>,mlir::OpTrait::IsTerminator<mlir::cf::BranchOp>>();
    v7 = v13;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v7);
  v8 = malloc(8uLL);
  v9 = v8;
  *v8 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::cf::CondBranchOp>::getEffects;
  {
    v14 = v8;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v9 = v14;
  }

  v10 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v10, v9);
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::cf::CondBranchOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  if ((*(*a3 + 104))(a3) <= 5)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    v7 = mlir::detail::DenseArrayAttrImpl<int>::get(Context, (v5 + 64), 3);
    (*(*a3 + 16))(a3, v7);
  }

  result = (*(*a3 + 104))(a3);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a3, (v5 + 64), 3);
  }

  return result;
}

unint64_t mlir::detail::BranchOpInterfaceInterfaceTraits::Model<mlir::cf::CondBranchOp>::getSuccessorBlockArgument(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v17[3] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 40);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  v7 = a2 + 64;
  for (i = 24; ; i += 32)
  {
    v14 = a2;
    mlir::cf::CondBranchOp::getSuccessorOperands(&v14, v6, v15);
    BranchSuccessorArgument = mlir::detail::getBranchSuccessorArgument(v15, a3, *(((v7 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + i));
    v11 = v10;
    if (v16 != v17)
    {
      free(v16);
    }

    if (v11)
    {
      break;
    }

    if (v3 == ++v6)
    {
      v12 = 0;
      return BranchSuccessorArgument & 0xFFFFFFFFFFFFFF00 | v12;
    }
  }

  v12 = BranchSuccessorArgument;
  return BranchSuccessorArgument & 0xFFFFFFFFFFFFFF00 | v12;
}

uint64_t mlir::detail::BranchOpInterfaceInterfaceTraits::Model<mlir::cf::CondBranchOp>::getSuccessorForOperands(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  if (!*a3)
  {
    return 0;
  }

  v4 = *(*v3 + 136);
  if (v4 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v3 = 0;
  }

  v12 = v3;
  if (v4 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return 0;
  }

  mlir::IntegerAttr::getValue(&v12, &__p);
  v7 = v11;
  if (v11 > 0x40)
  {
    if (llvm::APInt::countLeadingZerosSlowCase(&__p) == v7 - 1)
    {
      goto LABEL_9;
    }
  }

  else if (__p == 1)
  {
LABEL_9:
    v8 = 24;
    goto LABEL_12;
  }

  v8 = 56;
LABEL_12:
  result = *(((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + v8);
  if (v7 >= 0x41)
  {
    if (__p)
    {
      v9 = *(((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + v8);
      operator delete[](__p);
      return v9;
    }
  }

  return result;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v90 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v90;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_52;
    }
  }

  v79 = v1;
  v91 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v1 = v79;
  a1 = v91;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::NSuccessors<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NSuccessors<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_53;
  }

LABEL_52:
  v80 = v1;
  v92 = a1;
  v69 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v2 = v69;
  v1 = v80;
  a1 = v92;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::NSuccessors<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NSuccessors<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v3 = v60;
  v2 = v70;
  v1 = v81;
  a1 = v93;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<1u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v4 = v52;
  v3 = v61;
  v2 = v71;
  v1 = v82;
  a1 = v94;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v5 = v45;
  v4 = v53;
  v3 = v62;
  v2 = v72;
  v1 = v83;
  a1 = v95;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v6 = v39;
  v5 = v46;
  v4 = v54;
  v3 = v63;
  v2 = v73;
  v1 = v84;
  a1 = v96;
  v7 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::BranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v7 = v34;
  v6 = v40;
  v5 = v47;
  v4 = v55;
  v3 = v64;
  v2 = v74;
  v1 = v85;
  a1 = v97;
  v8 = mlir::detail::TypeIDResolver<mlir::BranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
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
    v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
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
    v11 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
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
  v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_60;
  }

LABEL_12:
  v11 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::OneSuccessor,mlir::OpTrait::VariadicOperands,mlir::OpTrait::OpInvariants,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
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
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}