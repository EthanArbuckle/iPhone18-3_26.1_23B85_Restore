uint64_t mlir::mps::TopKGradientOp::inferReturnTypes(mlir::Float32Type *a1, mlir::MLIRContext *a2, uint64_t a3, void *a4, unint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v68[2] = *MEMORY[0x1E69E9840];
  if (a7)
  {
    v13 = *a7;
  }

  else
  {
    v13 = 0;
  }

  v60 = a6;
  v61[0] = 0;
  v62 = 0;
  v63 = v13;
  v64 = a9;
  v65 = a10;
  if (a6)
  {
    v14 = a1;
    Context = mlir::Attribute::getContext(&v60);
    if (v62 == 1)
    {
      v62 = 0;
    }

    mlir::OperationName::OperationName(v61, "mps.top_k_grad", 14, Context);
    v62 = 1;
    a1 = v14;
  }

  v66 = a4;
  v67 = a5;
  if (!a5)
  {
    v43 = mlir::Float32Type::get(a1, a2);
    v40 = mlir::UnrankedTensorType::get(v43);
    v41 = *(a11 + 8);
    if (v41 < *(a11 + 12))
    {
      goto LABEL_24;
    }

    goto LABEL_28;
  }

  mlir::UnknownLoc::get(a1, a2);
  if (a5 <= 3 || (v57 = v66, v58 = 0, v16 = mlir::ValueRange::dereference_iterator(&v57, 0), v17 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v16 + 8) & 0xFFFFFFFFFFFFFFF8)), v55[0] = v17, v55[1] = v18, v57 = v66, v58 = 1, v57 = mlir::ValueRange::offset_base(&v57, 1), v58 = 0, v19 = mlir::ValueRange::dereference_iterator(&v57, 0), v20 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v19 + 8) & 0xFFFFFFFFFFFFFFF8)), v54[0] = v20, v54[1] = v21, v57 = v66, v58 = 2, v57 = mlir::ValueRange::offset_base(&v57, 2), v58 = 0, v22 = mlir::ValueRange::dereference_iterator(&v57, 0), v57 = 0, v58 = 0, v56 = &v57, v68[0] = v22, (DefiningOp = mlir::Value::getDefiningOp(v68)) == 0) || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v56, DefiningOp) & 1) == 0 || (SingleInt = mlir::getSingleIntValue<int>(v57, v58), !v17) || !v20 || (v25 = SingleInt, (SingleInt & 0x100000000) == 0) || !mlir::CallOpInterface::getArgOperands(v55) || !mlir::CallOpInterface::getArgOperands(v54) || (mlir::CallableOpInterface::getArgAttrsAttr(v55), !v26) || (mlir::CallableOpInterface::getArgAttrsAttr(v54), !v27) || (mlir::CallableOpInterface::getArgAttrsAttr(v55), v29 = v28, mlir::CallableOpInterface::getArgAttrsAttr(v54), v29 != v30))
  {
    v57 = v66;
    v58 = 0;
    v38 = mlir::ValueRange::dereference_iterator(&v57, 0);
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v38);
    v40 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
    v41 = *(a11 + 8);
    if (v41 < *(a11 + 12))
    {
LABEL_24:
      *(*a11 + 8 * v41) = v40;
      ++*(a11 + 8);
      return 1;
    }

LABEL_28:
    v44 = v40;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v41 + 1, 8);
    v40 = v44;
    LODWORD(v41) = *(a11 + 8);
    goto LABEL_24;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(v55);
  v32 = (v31 & (v25 >> 63)) + v25;
  if (v32 >= v31)
  {
    v57 = v66;
    v58 = 0;
    v47 = mlir::ValueRange::dereference_iterator(&v57, 0);
    v48 = mlir::getElementTypeOrSelf(v47);
    return mlir::mps::ResizeOp::inferReturnTypes(mlir::MLIRContext *,std::optional<mlir::Location>,mlir::ValueRange,mlir::DictionaryAttr,mlir::OpaqueProperties,mlir::RegionRange,llvm::SmallVectorImpl<mlir::Type> &)::$_0::operator()(a11, v48);
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v55);
  v34 = mlir::CallableOpInterface::getArgAttrsAttr(v55);
  llvm::SmallVector<long long,4u>::SmallVector<long long const*,void>(&v57, ArgAttrsAttr, (v34 + 8 * v35));
  mlir::CallableOpInterface::getArgAttrsAttr(v55);
  if (v36 >= 1)
  {
    for (i = 0; i < v45; ++i)
    {
      if (v32 != i && *(v57 + i) == 0x8000000000000000)
      {
        v46 = mlir::CallableOpInterface::getArgAttrsAttr(v54);
        *(v57 + i) = *(v46 + 8 * i);
      }

      mlir::CallableOpInterface::getArgAttrsAttr(v55);
    }
  }

  v49 = v57;
  v50 = v58;
  v68[0] = v66;
  v68[1] = 0;
  v51 = mlir::ValueRange::dereference_iterator(v68, 0);
  v52 = mlir::getElementTypeOrSelf(v51);
  v53 = mlir::RankedTensorType::get(v49, v50, v52, 0);
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v53);
  if (v57 != &v59)
  {
    free(v57);
  }

  return 1;
}

BOOL mlir::mps::TopKGradientOp::verify(mlir::mps::TopKGradientOp *this)
{
  v97 = *MEMORY[0x1E69E9840];
  v2 = (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = *v2;
  {
    v13 = v2;
    getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
    v2 = v13;
    v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v5 = *(v3 + 8);
    v6 = *(v3 + 16);
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_14:
    v14 = 0;
    goto LABEL_15;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_4:
  v7 = v5;
  v8 = v6;
  do
  {
    v9 = v8 >> 1;
    v10 = &v7[2 * (v8 >> 1)];
    v12 = *v10;
    v11 = v10 + 2;
    v8 += ~(v8 >> 1);
    if (v12 < v4)
    {
      v7 = v11;
    }

    else
    {
      v8 = v9;
    }
  }

  while (v8);
  if (v7 == &v5[2 * v6] || *v7 != v4)
  {
    goto LABEL_14;
  }

  v14 = v7[1];
LABEL_15:
  v84[0] = v2;
  v84[1] = v14;
  v15 = (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v15)
  {
    goto LABEL_29;
  }

  v16 = *v15;
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
    v26 = v15;
    getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
    v15 = v26;
    v17 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
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
    v34 = v20[1];
    v82 = v15;
    v83 = v34;
    if (!mlir::CallOpInterface::getArgOperands(v84))
    {
      return 1;
    }

    goto LABEL_30;
  }

LABEL_29:
  v82 = v15;
  v83 = 0;
  if (!mlir::CallOpInterface::getArgOperands(v84))
  {
    return 1;
  }

LABEL_30:
  if (!mlir::CallOpInterface::getArgOperands(&v82))
  {
    return 1;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(v84);
  v28 = v27;
  mlir::CallableOpInterface::getArgAttrsAttr(&v82);
  if (v28 != v29)
  {
    v70[0] = "failed: input and gradient tensors must have the same rank, but got {0} and {1}";
    v70[1] = 79;
    v70[2] = v74;
    v70[3] = 2;
    LOBYTE(v71) = 1;
    v72[0] = &unk_1F5B2E890;
    v72[1] = v84;
    v73[0] = &unk_1F5B2E890;
    v73[1] = &v82;
    v74[0] = v72;
    v74[1] = v73;
    v81 = 263;
    v80[0] = v70;
    mlir::OpState::emitOpError(this, v80, &v87);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v87);
    v36 = result;
    if (v87)
    {
      mlir::InFlightDiagnostic::report(&v87);
      result = v36;
    }

    if (v96 == 1)
    {
      if (v95 != &v96)
      {
        free(v95);
        result = v36;
      }

      v37 = __p;
      if (__p)
      {
        v38 = v94;
        v39 = __p;
        if (v94 != __p)
        {
          do
          {
            v38 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v38 - 1);
          }

          while (v38 != v37);
          v39 = __p;
        }

        v94 = v37;
        operator delete(v39);
        result = v36;
      }

      v40 = v91;
      if (v91)
      {
        v41 = v92;
        v42 = v91;
        if (v92 != v91)
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
          v42 = v91;
        }

        v92 = v40;
        operator delete(v42);
        result = v36;
      }

      v49 = v89;
      if (v89 != &v90)
      {
        goto LABEL_65;
      }
    }

    return result;
  }

  {
    return 0;
  }

  v85[0] = &v86;
  v85[1] = 0x100000000;
  v30 = *(*(*this + 72) + 88);
  mlir::CallableOpInterface::getArgAttrsAttr(v84);
  v32 = v31;
  v87 = 0;
  v88 = 0;
  v80[0] = &v87;
  v70[0] = v30;
  DefiningOp = mlir::Value::getDefiningOp(v70);
  if (DefiningOp && (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v80, DefiningOp) & 1) != 0)
  {
  }

  else
  {
    v45.var0.var0 = 0;
    mlir::emitOptionalError<char const(&)[66]>(0, v45, "axes is not a constant");
  }

  v46 = *(*(*this + 72) + 120);
  v87 = 0;
  v88 = 0;
  v80[0] = &v87;
  v70[0] = v46;
  v47 = mlir::Value::getDefiningOp(v70);
  if (v47)
  {
    if (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v80, v47))
    {
      SingleInt = mlir::getSingleIntValue<int>(v87, v88);
      v78 = SingleInt;
      v79 = BYTE4(SingleInt);
      if ((SingleInt & 0x100000000) != 0)
      {
        if (SingleInt <= 0)
        {
          v70[0] = "failed: k must positive";
          v71 = 259;
          v57 = v70;
        }

        else
        {
          v50 = SingleInt;
          v51 = 1;
          v77 = 1;
          mlir::CallableOpInterface::getArgAttrsAttr(v84);
          if (v52 >= 1)
          {
            v53 = *v85[0];
            v51 = *(mlir::CallableOpInterface::getArgAttrsAttr(v84) + 8 * v53);
            v77 = v51;
          }

          if (v51 != 0x8000000000000000 && v51 < v50)
          {
            v70[0] = "failed: k is larger than input minor dimension, ";
            v71 = 259;
            mlir::OpState::emitOpError(this, v70, &v87);
            mlir::InFlightDiagnostic::operator<<<int &>(&v87, &v78);
            mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v54, " > ");
            mlir::InFlightDiagnostic::operator<<<long long &>(v55, &v77);
            goto LABEL_80;
          }

          v58 = 1;
          v76 = 1;
          mlir::CallableOpInterface::getArgAttrsAttr(&v82);
          if (v59 >= 1)
          {
            v60 = *v85[0];
            v58 = *(mlir::CallableOpInterface::getArgAttrsAttr(&v82) + 8 * v60);
            v76 = v58;
          }

          if (v58 == 0x8000000000000000 || v58 == v78)
          {
            v75 = 0;
            mlir::CallableOpInterface::getArgAttrsAttr(v84);
            if (v62 < 1)
            {
LABEL_91:
              result = 1;
              v49 = v85[0];
              if (v85[0] != &v86)
              {
                goto LABEL_61;
              }

              return result;
            }

            v63 = 1;
            while (1)
            {
              v66 = v63 - 1;
              if (v63 - 1 != *v85[0] && *(mlir::CallableOpInterface::getArgAttrsAttr(v84) + 8 * v66) != 0x8000000000000000 && *(mlir::CallableOpInterface::getArgAttrsAttr(&v82) + 8 * v66) != 0x8000000000000000)
              {
                v67 = *(mlir::CallableOpInterface::getArgAttrsAttr(v84) + 8 * v66);
                if (v67 != *(mlir::CallableOpInterface::getArgAttrsAttr(&v82) + 8 * v66))
                {
                  break;
                }
              }

              v75 = v63;
              mlir::CallableOpInterface::getArgAttrsAttr(v84);
              if (v63++ >= v64)
              {
                goto LABEL_91;
              }
            }

            v69 = *(mlir::CallableOpInterface::getArgAttrsAttr(v84) + 8 * v66);
            v68 = *(mlir::CallableOpInterface::getArgAttrsAttr(&v82) + 8 * v66);
            llvm::formatv<long long &,long long,long long>("failed: input tensor and input gradient tensor shape do not match along dimension {0}, {1} != {2}", &v75, &v69, &v68, v70);
          }

          else
          {
            llvm::formatv<long long &,int &>("failed: input gradient dimension at axis dimension is not equal k: {0} != {1}", &v76, &v78, v70);
          }

          v81 = 263;
          v80[0] = v70;
          v57 = v80;
        }

        mlir::OpState::emitOpError(this, v57, &v87);
        v56 = &v87;
LABEL_80:
        v61 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v56);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v87);
        result = v61;
        v49 = v85[0];
        if (v85[0] != &v86)
        {
          goto LABEL_61;
        }

        return result;
      }
    }
  }

  result = 1;
  v49 = v85[0];
  if (v85[0] != &v86)
  {
LABEL_61:
    v36 = result;
LABEL_65:
    free(v49);
    return v36;
  }

  return result;
}

const char *llvm::formatv<long long &,int &>@<X0>(const char *__s@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = __s;
  if (__s)
  {
    __s = strlen(__s);
  }

  *a4 = v6;
  *(a4 + 8) = __s;
  *(a4 + 72) = a4 + 40;
  *(a4 + 16) = a4 + 72;
  *(a4 + 24) = 2;
  *(a4 + 32) = 1;
  *(a4 + 40) = &unk_1F5B17218;
  *(a4 + 48) = a2;
  *(a4 + 56) = &unk_1F5B17E80;
  *(a4 + 64) = a3;
  *(a4 + 80) = a4 + 56;
  return __s;
}

const char *llvm::formatv<long long &,long long,long long>@<X0>(const char *__s@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v6 = __s;
  v8 = *a3;
  v9 = *a4;
  if (__s)
  {
    __s = strlen(__s);
  }

  *a5 = v6;
  *(a5 + 8) = __s;
  *(a5 + 88) = a5 + 40;
  *(a5 + 16) = a5 + 88;
  *(a5 + 24) = 3;
  *(a5 + 32) = 1;
  *(a5 + 40) = &unk_1F5B17218;
  *(a5 + 48) = a2;
  *(a5 + 56) = &unk_1F5B17290;
  *(a5 + 64) = v8;
  *(a5 + 72) = &unk_1F5B17290;
  *(a5 + 80) = v9;
  *(a5 + 96) = a5 + 56;
  *(a5 + 104) = a5 + 72;
  return __s;
}

uint64_t mlir::mps::SliceOp::inferReturnTypes(mlir::Float32Type *a1, mlir::MLIRContext *a2, uint64_t a3, void *a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v66 = *MEMORY[0x1E69E9840];
  v59 = a6;
  v60[0] = 0;
  v61 = 0;
  v62 = a9;
  v63 = a10;
  if (a6)
  {
    v13 = a1;
    Context = mlir::Attribute::getContext(&v59);
    if (v61 == 1)
    {
      v61 = 0;
    }

    mlir::OperationName::OperationName(v60, "mps.slice", 9, Context);
    v61 = 1;
    a1 = v13;
  }

  v64 = a4;
  v65 = a5;
  if (!a5)
  {
    ElementTypeOrSelf = mlir::Float32Type::get(a1, a2);
LABEL_27:
    v43 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
    v44 = *(a11 + 8);
    if (v44 >= *(a11 + 12))
    {
      v52 = v43;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v44 + 1, 8);
      v43 = v52;
      LODWORD(v44) = *(a11 + 8);
    }

    *(*a11 + 8 * v44) = v43;
    ++*(a11 + 8);
    return 1;
  }

  mlir::UnknownLoc::get(a1, a2);
  if (a5 <= 3 || ((v56 = v64, v57 = 0, v15 = mlir::ValueRange::dereference_iterator(&v56, 0), v16 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v15 + 8) & 0xFFFFFFFFFFFFFFF8)), v53[0] = v16, v53[1] = v17, v56 = v64, v57 = 1, v56 = mlir::ValueRange::offset_base(&v56, 1), v57 = 0, v18 = mlir::ValueRange::dereference_iterator(&v56, 0), v56 = 0, v57 = 0, v54 = &v56, v55 = v18, (DefiningOp = mlir::Value::getDefiningOp(&v55)) == 0) || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v54, DefiningOp) ? (LODWORD(v23) = 0, v22 = 0, v21 = 0) : (SingleInt = mlir::getSingleIntValue<int>(v56, v57), v21 = SingleInt & 0xFFFFFF00, v22 = SingleInt, v23 = HIDWORD(SingleInt) & 1), (v56 = v64, v57 = 2, v56 = mlir::ValueRange::offset_base(&v56, 2), v57 = 0, v25 = mlir::ValueRange::dereference_iterator(&v56, 0), v56 = 0, v57 = 0, v54 = &v56, v55 = v25, (v26 = mlir::Value::getDefiningOp(&v55)) == 0) || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v54, v26) ? (LODWORD(v30) = 0, v29 = 0, v28 = 0) : (v27 = mlir::getSingleIntValue<int>(v56, v57), v28 = v27 & 0xFFFFFF00, v29 = v27, v30 = HIDWORD(v27) & 1), (v56 = v64, v57 = 3, v56 = mlir::ValueRange::offset_base(&v56, 3), v57 = 0, v31 = mlir::ValueRange::dereference_iterator(&v56, 0), v56 = 0, v57 = 0, v54 = &v56, v55 = v31, (v32 = mlir::Value::getDefiningOp(&v55)) == 0) || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v54, v32) & 1) == 0 || (v33 = mlir::getSingleIntValue<int>(v56, v57), ((v16 != 0) & v23 & v30) != 1) || (v33 & 0x100000000) == 0))
  {
    v56 = v64;
    v57 = 0;
    v42 = mlir::ValueRange::dereference_iterator(&v56, 0);
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v42);
    goto LABEL_27;
  }

  if (*(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v16);
  }

  else
  {
    v34 = v33;
    mlir::CallableOpInterface::getArgAttrsAttr(v53);
    v36 = (v35 & ((v21 | v22) >> 63)) + (v21 | v22);
    if (v36 >= v35 || (v34 & 0x80000000) != 0 || (v37 = v34, *(mlir::CallableOpInterface::getArgAttrsAttr(v53) + 8 * v36) != 0x8000000000000000) && (v38 = v34 + (v28 | v29) + (*(mlir::CallableOpInterface::getArgAttrsAttr(v53) + 8 * v36) & ((v28 | v29) >> 63)), v38 > *(mlir::CallableOpInterface::getArgAttrsAttr(v53) + 8 * v36)))
    {
      v56 = v64;
      v57 = 0;
      v39 = mlir::ValueRange::dereference_iterator(&v56, 0);
      v40 = mlir::getElementTypeOrSelf(v39);
      return mlir::mps::ResizeOp::inferReturnTypes(mlir::MLIRContext *,std::optional<mlir::Location>,mlir::ValueRange,mlir::DictionaryAttr,mlir::OpaqueProperties,mlir::RegionRange,llvm::SmallVectorImpl<mlir::Type> &)::$_0::operator()(a11, v40);
    }

    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v53);
    v46 = mlir::CallableOpInterface::getArgAttrsAttr(v53);
    llvm::SmallVector<long long,4u>::SmallVector<long long const*,void>(&v56, ArgAttrsAttr, (v46 + 8 * v47));
    v48 = v56;
    if (*(v56 + v36) != 0x8000000000000000)
    {
      *(v56 + v36) = v37;
    }

    v49 = v57;
    isSplat = mlir::ElementsAttr::isSplat(v53);
    v51 = mlir::RankedTensorType::get(v48, v49, isSplat, 0);
    llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v51);
    if (v56 != &v58)
    {
      free(v56);
    }
  }

  return 1;
}

BOOL mlir::mps::SliceOp::verify(mlir::mps::SliceOp *this)
{
  v69 = *MEMORY[0x1E69E9840];
  v2 = (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v2)
  {
    v3 = *v2;
    {
      v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v5 = *(v3 + 8);
      v6 = *(v3 + 16);
      if (!v6)
      {
        goto LABEL_14;
      }
    }

    else
    {
      getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
      v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v5 = *(v3 + 8);
      v6 = *(v3 + 16);
      if (!v6)
      {
        goto LABEL_14;
      }
    }

    v7 = v5;
    v8 = v6;
    do
    {
      v9 = v8 >> 1;
      v10 = &v7[2 * (v8 >> 1)];
      v12 = *v10;
      v11 = v10 + 2;
      v8 += ~(v8 >> 1);
      if (v12 < v4)
      {
        v7 = v11;
      }

      else
      {
        v8 = v9;
      }
    }

    while (v8);
    if (v7 != &v5[2 * v6] && *v7 == v4)
    {
      v27 = v7[1];
      v57 = v2;
      v58 = v27;
      if (!mlir::CallOpInterface::getArgOperands(&v57))
      {
        return 1;
      }

      goto LABEL_15;
    }
  }

LABEL_14:
  v57 = v2;
  v58 = 0;
  if (!mlir::CallOpInterface::getArgOperands(&v57))
  {
    return 1;
  }

LABEL_15:
  mlir::CallableOpInterface::getArgAttrsAttr(&v57);
  v14 = v13;
  v56 = v13;
  v15 = *(*(*this + 72) + 56);
  v59 = 0;
  v60 = 0;
  v53[0] = &v59;
  v40 = v15;
  DefiningOp = mlir::Value::getDefiningOp(&v40);
  if (!DefiningOp)
  {
    return 1;
  }

  if ((mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v53, DefiningOp) & 1) == 0)
  {
    return 1;
  }

  SingleInt = mlir::getSingleIntValue<int>(v59, v60);
  if ((SingleInt & 0x100000000) == 0)
  {
    return 1;
  }

  v18 = (v14 & (SingleInt >> 63)) + SingleInt;
  v55 = v18;
  if (v18 < 0 || v18 >= v14)
  {
    v40 = "failed: axis value {0} does not fit tensor rank ({1})";
    v41 = 53;
    v42 = &v49;
    v43 = 2;
    v44 = 1;
    v45 = &unk_1F5B17218;
    v46 = &v55;
    v47 = &unk_1F5B17218;
    v48 = &v56;
    v49 = &v45;
    v50 = &v47;
    v54 = 263;
    v53[0] = &v40;
    mlir::OpState::emitOpError(this, v53, &v59);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
    v26 = result;
    if (v59)
    {
      mlir::InFlightDiagnostic::report(&v59);
      result = v26;
    }

    if (v68 == 1)
    {
      if (v67 != &v68)
      {
        free(v67);
        result = v26;
      }

      v29 = __p;
      if (__p)
      {
        v30 = v66;
        v31 = __p;
        if (v66 != __p)
        {
          do
          {
            v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
          }

          while (v30 != v29);
          v31 = __p;
        }

        v66 = v29;
        operator delete(v31);
        result = v26;
      }

      v32 = v63;
      if (v63)
      {
        v33 = v64;
        v34 = v63;
        if (v64 != v63)
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
          v34 = v63;
        }

        v64 = v32;
        operator delete(v34);
        result = v26;
      }

      if (v61 != &v62)
      {
        free(v61);
        return v26;
      }
    }

    return result;
  }

  v19 = *(*(*this + 72) + 88);
  v59 = 0;
  v60 = 0;
  v53[0] = &v59;
  v40 = v19;
  v20 = mlir::Value::getDefiningOp(&v40);
  if (!v20)
  {
    return 1;
  }

  if ((mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v53, v20) & 1) == 0)
  {
    return 1;
  }

  v21 = mlir::getSingleIntValue<int>(v59, v60);
  if ((v21 & 0x100000000) == 0)
  {
    return 1;
  }

  v22 = v21;
  if (*(mlir::CallableOpInterface::getArgAttrsAttr(&v57) + 8 * v18) == 0x8000000000000000)
  {
    return 1;
  }

  v23 = (*(mlir::CallableOpInterface::getArgAttrsAttr(&v57) + 8 * v18) & (v22 >> 63)) + v22;
  v52 = v23;
  if (v23 >= 0 && v23 < *(mlir::CallableOpInterface::getArgAttrsAttr(&v57) + 8 * v18))
  {
    matched = mlir::matchConstantWithIntValue<int>(*(*(*this + 72) + 120));
    if ((matched & 0x100000000) != 0)
    {
      v51 = matched;
      if ((matched & 0x80000000) != 0 || (v25 = v52 + matched, v25 > *(mlir::CallableOpInterface::getArgAttrsAttr(&v57) + 8 * v18)))
      {
        v39 = *(mlir::CallableOpInterface::getArgAttrsAttr(&v57) + 8 * v18);
        llvm::formatv<long long &,long long,long long &>("failed: length value {0} does not fit within the dimension size ({1}) with start value ({2})", &v51, &v39, &v52, &v40);
        v54 = 263;
        v53[0] = &v40;
        mlir::OpState::emitOpError(this, v53, &v59);
        v26 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v59);
        return v26;
      }
    }

    return 1;
  }

  v37 = *(mlir::CallableOpInterface::getArgAttrsAttr(&v57) + 8 * v18);
  v40 = "failed: start value {0} does not fit dimension size ({1})";
  v41 = 57;
  v42 = &v49;
  v43 = 2;
  v44 = 1;
  v45 = &unk_1F5B17218;
  v46 = &v52;
  v47 = &unk_1F5B17290;
  v48 = v37;
  v49 = &v45;
  v50 = &v47;
  v54 = 263;
  v53[0] = &v40;
  mlir::OpState::emitOpError(this, v53, &v59);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
  if (v59)
  {
    v38 = result;
    mlir::InFlightDiagnostic::report(&v59);
    result = v38;
  }

  if (v68 == 1)
  {
    v26 = result;
    mlir::Diagnostic::~Diagnostic(&v60);
    return v26;
  }

  return result;
}

const char *llvm::formatv<long long &,long long,long long &>@<X0>(const char *__s@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = __s;
  v9 = *a3;
  if (__s)
  {
    __s = strlen(__s);
  }

  *a5 = v7;
  *(a5 + 8) = __s;
  *(a5 + 88) = a5 + 40;
  *(a5 + 16) = a5 + 88;
  *(a5 + 24) = 3;
  *(a5 + 32) = 1;
  *(a5 + 40) = &unk_1F5B17218;
  *(a5 + 48) = a2;
  *(a5 + 56) = &unk_1F5B17290;
  *(a5 + 64) = v9;
  *(a5 + 72) = &unk_1F5B17218;
  *(a5 + 80) = a4;
  *(a5 + 96) = a5 + 56;
  *(a5 + 104) = a5 + 72;
  return __s;
}

uint64_t mlir::mps::anonymous namespace::verifyStridedSlice(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v142 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 8) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(*v8 + 136);
  v10 = v9 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  v11 = v10;
  if (!v10)
  {
    v8 = 0;
  }

  v118 = v8;
  v12 = *(*(*(a5 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
  v14 = v12 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v12 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  v15 = *(*(*(a6 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
  v17 = v15 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  v18 = *(*(*(a7 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
  v20 = v18 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v18 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  if (v11)
  {
    v21 = !v14;
  }

  else
  {
    v21 = 1;
  }

  v22 = v21 || !v17;
  if (v22 || !v20)
  {
    v127 = "cannot run strided slice a non-tensor type";
    v129[8] = 259;
    mlir::Operation::emitOpError(a1, &v127, &v130);
    v26 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v130);
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

      v27 = __p;
      if (__p)
      {
        v28 = v139;
        v29 = __p;
        if (v139 != __p)
        {
          do
          {
            v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
          }

          while (v28 != v27);
          v29 = __p;
        }

        v139 = v27;
        operator delete(v29);
      }

      v30 = v136;
      if (v136)
      {
        v31 = v137;
        v32 = v136;
        if (v137 != v136)
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
          v32 = v136;
        }

        v137 = v30;
        operator delete(v32);
      }

      v45 = v133;
      if (v133 != &v135)
      {
LABEL_77:
        free(v45);
      }
    }
  }

  else
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v12 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v15 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v18 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v42.var0 = "begin_mask";
      v42.var1 = 10;
      {
        return 0;
      }

      v143.var0 = "end_mask";
      v143.var1 = 8;
      {
        return 0;
      }

      v144.var0 = "shrink_axis_mask";
      v144.var1 = 16;
      {
        return 0;
      }

      v116 = 0;
      v117 = 0;
      v114 = 0;
      v115 = 0;
      v112 = 0;
      v113 = 0;
      v110 = 0;
      v111 = 0;
      v130 = &v116;
      if (mlir::matchPattern<mlir::detail::constant_op_binder<mlir::ElementsAttr>>(a5, &v130))
      {
        v127 = &v114;
        if (mlir::matchPattern<mlir::detail::constant_op_binder<mlir::ElementsAttr>>(a6, &v127))
        {
          v123 = &v112;
          if (mlir::matchPattern<mlir::detail::constant_op_binder<mlir::ElementsAttr>>(a7, &v123))
          {
            v127 = v129;
            v128 = 0x400000000;
            mlir::ArrayAttr::getValue(&v118);
            v109 = v43;
            if (a3)
            {
              v130 = &v110;
              if (mlir::matchPattern<mlir::detail::constant_op_binder<mlir::ElementsAttr>>(a3, &v130))
              {
                NumElements = mlir::ElementsAttr::getNumElements(v110, v111);
                v109 = NumElements;
                mlir::ElementsAttr::getValues<llvm::APInt>(&v110, &v130);
                LOWORD(v123) = v130;
                if (v130 == 1)
                {
                  v124 = v131;
                }

                else
                {
                  (*(*v131 + 16))(&v124);
                }

                v54 = v132;
                v125[0] = v132;
                LOWORD(v119) = v133;
                if (v133 == 1)
                {
                  v120 = v134;
                }

                else
                {
                  (*(*v134 + 16))(&v120);
                  v54 = v125[0];
                }

                v121[0] = v135;
                if (v54 != v135)
                {
                  do
                  {
                    mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v123, &v104);
                    if (v105 > 0x40)
                    {
                      v57 = *v104;
                    }

                    else if (v105)
                    {
                      v57 = (v104 << -v105) >> -v105;
                    }

                    else
                    {
                      v57 = 0;
                    }

                    if (v57 == -1)
                    {
                      v58 = 0x8000000000000000;
                    }

                    else
                    {
                      v58 = v57;
                    }

                    llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(&v127, v58);
                    if (v105 >= 0x41 && v104)
                    {
                      operator delete[](v104);
                    }

                    ++v125[0];
                  }

                  while (v125[0] != v121[0]);
                }

                if ((v119 & 1) == 0)
                {
                  v55 = v120;
                  v120 = 0;
                  if (v55)
                  {
                    (*(*v55 + 8))(v55);
                  }
                }

                if ((v123 & 1) == 0)
                {
                  v56 = v124;
                  v124 = 0;
                  if (v56)
                  {
                    (*(*v56 + 8))(v56);
                  }
                }

                mlir::detail::ElementsAttrRange<mlir::detail::ElementsAttrIterator<llvm::APInt>>::~ElementsAttrRange(&v130);
                goto LABEL_113;
              }
            }

            else
            {
              if (!a4)
              {
                NumElements = v43;
                goto LABEL_113;
              }

              v130 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(a4 + 8) & 0xFFFFFFFFFFFFFFF8));
              v131 = v47;
              if (v130 && mlir::CallOpInterface::getArgOperands(&v130))
              {
                ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v130);
                if (v49)
                {
                  v50 = ArgAttrsAttr;
                  v51 = 8 * v49;
                  do
                  {
                    v52 = *v50++;
                    llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(&v127, v52);
                    v51 -= 8;
                  }

                  while (v51);
                }

                mlir::CallableOpInterface::getArgAttrsAttr(&v130);
                NumElements = v53;
                v109 = v53;
LABEL_113:
                if (mlir::ElementsAttr::getNumElements(v116, v117) > NumElements || mlir::ElementsAttr::getNumElements(v114, v115) > NumElements || mlir::ElementsAttr::getNumElements(v112, v113) > NumElements)
                {
                  v123 = "Slice specification lengths: begin (";
                  v126 = 259;
                  mlir::Operation::emitOpError(a1, &v123, &v130);
                  v119 = mlir::ElementsAttr::getNumElements(v116, v117);
                  mlir::InFlightDiagnostic::operator<<<long long &>(&v130, &v119);
                  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v59, ") end (");
                  v61 = v60;
                  v104 = mlir::ElementsAttr::getNumElements(v114, v115);
                  mlir::InFlightDiagnostic::operator<<<long long &>(v61, &v104);
                  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v62, ") stride (");
                  v64 = v63;
                  v108 = mlir::ElementsAttr::getNumElements(v112, v113);
                  mlir::InFlightDiagnostic::operator<<<long long &>(v64, &v108);
                  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v65, ") must be lower or equal to input rank ");
                  mlir::InFlightDiagnostic::operator<<<long long &>(v66, &v109);
                  v26 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v67);
                  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v130);
                  goto LABEL_117;
                }

                v123 = v125;
                v124 = 0x400000000;
                mlir::getIntValues<long long>(v112, v113, &v123, 1);
                if (v124)
                {
                  v68 = v123;
                  v69 = 8 * v124;
                  while (*v68)
                  {
                    ++v68;
                    v69 -= 8;
                    if (!v69)
                    {
                      goto LABEL_123;
                    }
                  }

                  v119 = "stride cannot be 0";
                  v122 = 259;
                  mlir::Operation::emitOpError(a1, &v119, &v130);
                  v26 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v130);
                  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v130);
                  goto LABEL_150;
                }

LABEL_123:
                if (!(a3 | a4))
                {
                  v26 = 1;
LABEL_150:
                  if (v123 != v125)
                  {
                    free(v123);
                  }

LABEL_117:
                  v45 = v127;
                  if (v127 == v129)
                  {
                    return v26;
                  }

                  goto LABEL_77;
                }

                v119 = v121;
                v120 = 0x400000000;
                v145.var0 = "begin_mask";
                v145.var1 = 10;
                Attr = mlir::Operation::getAttr(a1, v145);
                v146.var0 = "end_mask";
                v146.var1 = 8;
                v72 = mlir::Operation::getAttr(a1, v146);
                v147.var0 = "shrink_axis_mask";
                v147.var1 = 16;
                v74 = mlir::Operation::getAttr(a1, v147);
                {
                  Value = mlir::ArrayAttr::getValue(&v118);
                  if (a4)
                  {
                  }

                  else
                  {
                  }

                  if (!a4)
                  {
                  }

                  v107 = v79;
                  v108 = v78;
                  v80 = v77;
                  if (v77 == v120)
                  {
                    if (!v120)
                    {
LABEL_142:
                      v26 = 1;
                      goto LABEL_148;
                    }

                    v81 = Value;
                    v82 = 0;
                    while (1)
                    {
                      v83 = *(v119 + v82);
                      v84 = *(Value + 8 * v82);
                      v85 = v84 == 0x8000000000000000 || v83 == 0x8000000000000000;
                      if (!v85 && v83 != v84)
                      {
                        break;
                      }

                      if (v77 == ++v82)
                      {
                        goto LABEL_142;
                      }
                    }

                    v103 = v82;
                    v106 = 257;
                    mlir::Operation::emitOpError(a1, &v104, &v130);
                    mlir::InFlightDiagnostic::operator<<<char const*&>(&v130, &v108);
                    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v93, "[");
                    mlir::InFlightDiagnostic::operator<<<unsigned long>(v94, &v103);
                    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v95, "] = ");
                    mlir::InFlightDiagnostic::operator<<<long long &>(v96, (v81 + 8 * v103));
                    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v97, " should match dimension size: ");
                    mlir::InFlightDiagnostic::operator<<<long long &>(v98, v119 + v103);
                    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v99, " deduced from ");
                    mlir::InFlightDiagnostic::operator<<<char const*&>(v100, &v107);
                  }

                  else
                  {
                    v106 = 257;
                    mlir::Operation::emitOpError(a1, &v104, &v130);
                    mlir::InFlightDiagnostic::operator<<<char const*&>(&v130, &v108);
                    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v87, " rank ");
                    v103 = v80;
                    mlir::InFlightDiagnostic::operator<<<unsigned long>(v88, &v103);
                    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v89, " is not consistent with rank deduced from ");
                    mlir::InFlightDiagnostic::operator<<<char const*&>(v90, &v107);
                    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v91, " ");
                    v102 = v120;
                    mlir::InFlightDiagnostic::operator<<<unsigned long>(v92, &v102);
                  }

                  v26 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v101);
                  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v130);
                }

                else
                {
                  v26 = 0;
                }

LABEL_148:
                if (v119 != v121)
                {
                  free(v119);
                }

                goto LABEL_150;
              }
            }

            v26 = 1;
            goto LABEL_117;
          }
        }
      }
    }

    return 1;
  }

  return v26;
}

uint64_t mlir::mps::StridedSliceOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, AttributeStorage *a3, uint64_t a4, unint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v78[4] = *MEMORY[0x1E69E9840];
  v75[0] = a4;
  v75[1] = a5;
  if (a7)
  {
    v16 = *a7;
    v17 = a7[1];
  }

  else
  {
    v16 = 0uLL;
    v17 = 0uLL;
  }

  v66 = a6;
  v67[0] = 0;
  v68 = 0;
  v69 = v16;
  v70 = v17;
  v71 = a9;
  v72 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v66);
    if (v68 == 1)
    {
      v68 = 0;
    }

    mlir::OperationName::OperationName(v67, "mps.strided_slice", 17, Context);
    v68 = 1;
  }

  v73 = a4;
  v74 = a5;
  if (a5 < 4)
  {
    goto LABEL_66;
  }

  v19.var0.var0 = mlir::UnknownLoc::get(this, a2);
  if (!mlir::mps::StridedSliceOpAdaptor::verify(&v66, v19))
  {
    goto LABEL_66;
  }

  v63 = v69;
  mlir::IntegerAttr::getValue(&v63, &v76);
  if (v77 > 0x40)
  {
    v20 = *v76;
    operator delete[](v76);
  }

  else
  {
    v20 = v76;
  }

  v63 = v70;
  mlir::IntegerAttr::getValue(&v63, &v76);
  if (v77 > 0x40)
  {
    v57 = *v76;
    operator delete[](v76);
  }

  else
  {
    v57 = v76;
  }

  v63 = *(&v70 + 1);
  mlir::IntegerAttr::getValue(&v63, &v76);
  if (v77 > 0x40)
  {
    v21 = *v76;
    operator delete[](v76);
  }

  else
  {
    v21 = v76;
  }

  v22 = *(&v69 + 1);
  v23 = mlir::ValueRange::dereference_iterator(v75, 0);
  v24 = mlir::ValueRange::dereference_iterator(v75, 1);
  v25 = mlir::ValueRange::dereference_iterator(v75, 2);
  v26 = mlir::ValueRange::dereference_iterator(v75, 3);
  v27 = (*(v23 + 8) & 0xFFFFFFFFFFFFFFF8);
  v28 = *(*v27 + 136);
  if (v28 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v28 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v27 = 0;
  }

  v65 = v27;
  v30 = *(*(*(v24 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
  v32 = v30 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  v33 = *(*(*(v25 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
  v35 = v33 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v33 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  v36 = *(*(*(v26 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
  v38 = v36 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v36 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  if (!v27 || !v32 || !v35 || !v38)
  {
    v43.var0.var0 = a3;
    if (mlir::emitOptionalError<char const(&)[39]>(a2, v43, "cannot run strided slice a non-tensor type"))
    {
      v44 = 0;
      goto LABEL_68;
    }

    goto LABEL_65;
  }

  if (*(*v27 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v33 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v36 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v27);
    goto LABEL_67;
  }

  v76 = v78;
  v77 = 0x400000000;
  v63 = 0;
  v64 = 0;
  v61 = 0;
  v62 = 0;
  v59 = 0;
  v60 = 0;
  v58 = &v63;
  v45 = v26;
  mlir::matchPattern<mlir::detail::constant_op_binder<mlir::ElementsAttr>>(v24, &v58);
  v58 = &v61;
  mlir::matchPattern<mlir::detail::constant_op_binder<mlir::ElementsAttr>>(v25, &v58);
  v58 = &v59;
  mlir::matchPattern<mlir::detail::constant_op_binder<mlir::ElementsAttr>>(v45, &v58);
  Value = mlir::ArrayAttr::getValue(&v65);
  v44 = 0;
  if (v48)
  {
    v49 = v76;
    v50 = v77;
    ElementType = mlir::TensorType::getElementType(&v65);
    v44 = mlir::RankedTensorType::get(v49, v50, ElementType, 0);
  }

  if (v76 != v78)
  {
    v52 = v44;
    free(v76);
    v44 = v52;
  }

  if (!v48)
  {
LABEL_65:
    v53 = mlir::ValueRange::dereference_iterator(v75, 0);
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v53);
    if (!ElementTypeOrSelf)
    {
LABEL_66:
      ElementTypeOrSelf = mlir::Float32Type::get(this, a2);
    }

LABEL_67:
    v44 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
  }

LABEL_68:
  v54 = *(a11 + 8);
  if (v54 >= *(a11 + 12))
  {
    v56 = v44;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v54 + 1, 8);
    v44 = v56;
    v54 = *(a11 + 8);
  }

  *(*a11 + 8 * v54) = v44;
  ++*(a11 + 8);
  return 1;
}

BOOL mlir::mps::StridedSliceOpAdaptor::verify(mlir::mps::StridedSliceOpAdaptor *this, Location a2)
{
  v45 = *MEMORY[0x1E69E9840];
  if (*(this + 3))
  {
    v3 = *(this + 5);
    if (v3)
    {
      v4 = *(this + 6);
      if (v4)
      {
        v33[0] = *(this + 3);
        Value = mlir::AffineMapAttr::getValue(v33);
        if (mlir::Type::isUnsignedInteger(&Value, 32))
        {
          v33[0] = v3;
          Value = mlir::AffineMapAttr::getValue(v33);
          if (mlir::Type::isUnsignedInteger(&Value, 32))
          {
            v33[0] = v4;
            Value = mlir::AffineMapAttr::getValue(v33);
            if (mlir::Type::isUnsignedInteger(&Value, 32))
            {
              return 1;
            }

            else
            {
              v33[0] = "'mps.strided_slice' op attribute 'shrink_axis_mask' failed to satisfy constraint: 32-bit unsigned integer attribute";
              v34 = 259;
              mlir::emitError(a2.var0.var0, v33, &Value);
              v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
              mlir::InFlightDiagnostic::~InFlightDiagnostic(&Value);
            }
          }

          else
          {
            v33[0] = "'mps.strided_slice' op attribute 'end_mask' failed to satisfy constraint: 32-bit unsigned integer attribute";
            v34 = 259;
            mlir::emitError(a2.var0.var0, v33, &Value);
            v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
            if (Value)
            {
              mlir::InFlightDiagnostic::report(&Value);
            }

            if (v44 == 1)
            {
              mlir::Diagnostic::~Diagnostic(&v36);
            }
          }

          return v5;
        }

        v33[0] = "'mps.strided_slice' op attribute 'begin_mask' failed to satisfy constraint: 32-bit unsigned integer attribute";
        v34 = 259;
        mlir::emitError(a2.var0.var0, v33, &Value);
        v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
        if (Value)
        {
          mlir::InFlightDiagnostic::report(&Value);
        }

        if (v44 == 1)
        {
          if (v43 != &v44)
          {
            free(v43);
          }

          v26 = __p;
          if (__p)
          {
            v27 = v42;
            v28 = __p;
            if (v42 != __p)
            {
              do
              {
                v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
              }

              while (v27 != v26);
              v28 = __p;
            }

            v42 = v26;
            operator delete(v28);
          }

          v9 = v39;
          if (!v39)
          {
            goto LABEL_74;
          }

          v29 = v40;
          v11 = v39;
          if (v40 == v39)
          {
LABEL_73:
            v40 = v9;
            operator delete(v11);
LABEL_74:
            if (v37 != &v38)
            {
              free(v37);
            }

            return v5;
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

          while (v29 != v9);
LABEL_72:
          v11 = v39;
          goto LABEL_73;
        }
      }

      else
      {
        v33[0] = "'mps.strided_slice' op requires attribute 'shrink_axis_mask'";
        v34 = 259;
        mlir::emitError(a2.var0.var0, v33, &Value);
        v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
        if (Value)
        {
          mlir::InFlightDiagnostic::report(&Value);
        }

        if (v44 == 1)
        {
          if (v43 != &v44)
          {
            free(v43);
          }

          v20 = __p;
          if (__p)
          {
            v21 = v42;
            v22 = __p;
            if (v42 != __p)
            {
              do
              {
                v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
              }

              while (v21 != v20);
              v22 = __p;
            }

            v42 = v20;
            operator delete(v22);
          }

          v9 = v39;
          if (!v39)
          {
            goto LABEL_74;
          }

          v23 = v40;
          v11 = v39;
          if (v40 == v39)
          {
            goto LABEL_73;
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

          while (v23 != v9);
          goto LABEL_72;
        }
      }
    }

    else
    {
      v33[0] = "'mps.strided_slice' op requires attribute 'end_mask'";
      v34 = 259;
      mlir::emitError(a2.var0.var0, v33, &Value);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
      if (Value)
      {
        mlir::InFlightDiagnostic::report(&Value);
      }

      if (v44 == 1)
      {
        if (v43 != &v44)
        {
          free(v43);
        }

        v14 = __p;
        if (__p)
        {
          v15 = v42;
          v16 = __p;
          if (v42 != __p)
          {
            do
            {
              v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
            }

            while (v15 != v14);
            v16 = __p;
          }

          v42 = v14;
          operator delete(v16);
        }

        v9 = v39;
        if (!v39)
        {
          goto LABEL_74;
        }

        v17 = v40;
        v11 = v39;
        if (v40 == v39)
        {
          goto LABEL_73;
        }

        do
        {
          v19 = *--v17;
          v18 = v19;
          *v17 = 0;
          if (v19)
          {
            operator delete[](v18);
          }
        }

        while (v17 != v9);
        goto LABEL_72;
      }
    }
  }

  else
  {
    v33[0] = "'mps.strided_slice' op requires attribute 'begin_mask'";
    v34 = 259;
    mlir::emitError(a2.var0.var0, v33, &Value);
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v44 == 1)
    {
      if (v43 != &v44)
      {
        free(v43);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v42;
        v8 = __p;
        if (v42 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v42 = v6;
        operator delete(v8);
      }

      v9 = v39;
      if (!v39)
      {
        goto LABEL_74;
      }

      v10 = v40;
      v11 = v39;
      if (v40 == v39)
      {
        goto LABEL_73;
      }

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
      goto LABEL_72;
    }
  }

  return v5;
}

uint64_t mlir::mps::StridedSliceGradientOp::inferReturnTypes(uint64_t a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v41[2] = *MEMORY[0x1E69E9840];
  v41[0] = a4;
  v41[1] = a5;
  if (a5 == 5)
  {
    v13 = mlir::ValueRange::dereference_iterator(v41, 0);
    v14 = *(*(*(v13 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    if (v14 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v14 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v16 = (*(v13 + 8) & 0xFFFFFFFFFFFFFFF8);
    }

    else
    {
      v16 = 0;
    }

    v37 = v16;
    if (!v16)
    {
      v24.var0.var0 = a3;
      return mlir::emitOptionalError<char const(&)[66]>(a2, v24, "cannot run strided slice grad a non-tensor type");
    }

    v38 = v40;
    v39 = 0x400000000;
    v17 = mlir::ValueRange::dereference_iterator(v41, 1);
    if ((mlir::matchConstantWithIntVector<long long>(v17, &v38) & 1) == 0)
    {
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v16);
      v26 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
LABEL_31:
      v33 = *(a11 + 8);
      if (v33 >= *(a11 + 12))
      {
        v36 = v26;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v33 + 1, 8);
        v26 = v36;
        LODWORD(v33) = *(a11 + 8);
      }

      *(*a11 + 8 * v33) = v26;
      ++*(a11 + 8);
      if (v38 != v40)
      {
        free(v38);
      }

      return 1;
    }

    v18 = v39;
    v19 = v38;
    if (!v39)
    {
      goto LABEL_30;
    }

    if (v39 <= 3)
    {
      v20 = 0;
LABEL_36:
      v34 = v18 - v20;
      v35 = &v19[v20];
      do
      {
        if (*v35 == -1)
        {
          *v35 = 0x8000000000000000;
        }

        ++v35;
        --v34;
      }

      while (v34);
LABEL_30:
      ElementType = mlir::TensorType::getElementType(&v37);
      v26 = mlir::RankedTensorType::get(v19, v18, ElementType, 0);
      goto LABEL_31;
    }

    v20 = v39 & 0xFFFFFFFC;
    v27 = (v38 + 16);
    v28.i64[0] = -1;
    v28.i64[1] = -1;
    v29 = v20;
    while (1)
    {
      v30 = vmovn_s64(vceqq_s64(v27[-1], v28));
      if (v30.i8[0])
      {
        v27[-1].i64[0] = 0x8000000000000000;
        if ((v30.i8[4] & 1) == 0)
        {
LABEL_22:
          v31 = vmovn_s64(vceqq_s64(*v27, v28));
          if ((v31.i8[0] & 1) == 0)
          {
            goto LABEL_23;
          }

          goto LABEL_27;
        }
      }

      else if ((v30.i8[4] & 1) == 0)
      {
        goto LABEL_22;
      }

      v27[-1].i64[1] = 0x8000000000000000;
      v31 = vmovn_s64(vceqq_s64(*v27, v28));
      if ((v31.i8[0] & 1) == 0)
      {
LABEL_23:
        if (v31.i8[4])
        {
          goto LABEL_28;
        }

        goto LABEL_19;
      }

LABEL_27:
      v27->i64[0] = 0x8000000000000000;
      if (v31.i8[4])
      {
LABEL_28:
        v27->i64[1] = 0x8000000000000000;
      }

LABEL_19:
      v27 += 2;
      v29 -= 4;
      if (!v29)
      {
        if (v20 == v18)
        {
          goto LABEL_30;
        }

        goto LABEL_36;
      }
    }
  }

  return mlir::emitOptionalError<char const(&)[66]>(a2, a3, "invalid number of operands");
}

uint64_t mlir::mps::CropOp::inferReturnTypes(mlir::Float32Type *a1, mlir::MLIRContext *a2, uint64_t a3, void *a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v79 = *MEMORY[0x1E69E9840];
  v72 = a6;
  v73[0] = 0;
  v74 = 0;
  v75 = a9;
  v76 = a10;
  if (a6)
  {
    v13 = a1;
    Context = mlir::Attribute::getContext(&v72);
    if (v74 == 1)
    {
      v74 = 0;
    }

    mlir::OperationName::OperationName(v73, "mps.crop", 8, Context);
    v74 = 1;
    a1 = v13;
  }

  v77 = a4;
  v78 = a5;
  if (!a5)
  {
    v26 = mlir::Float32Type::get(a1, a2);
    v23 = mlir::UnrankedTensorType::get(v26);
    v24 = *(a11 + 8);
    if (v24 < *(a11 + 12))
    {
      goto LABEL_12;
    }

    goto LABEL_16;
  }

  mlir::UnknownLoc::get(a1, a2);
  if (a5 <= 3 || (v69 = v77, v70 = 0, v15 = mlir::ValueRange::dereference_iterator(&v69, 0), v63[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v15 + 8) & 0xFFFFFFFFFFFFFFF8)), v63[1] = v16, !v63[0]))
  {
    v69 = v77;
    v70 = 0;
    v21 = mlir::ValueRange::dereference_iterator(&v69, 0);
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v21);
    v23 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
    v24 = *(a11 + 8);
    if (v24 < *(a11 + 12))
    {
LABEL_12:
      *(*a11 + 8 * v24) = v23;
LABEL_13:
      ++*(a11 + 8);
      return 1;
    }

LABEL_16:
    v27 = v23;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v24 + 1, 8);
    v23 = v27;
    LODWORD(v24) = *(a11 + 8);
    goto LABEL_12;
  }

  if ((mlir::CallOpInterface::getArgOperands(v63) & 1) == 0)
  {
    v28 = v63[0];
    v29 = *(a11 + 8);
    if (v29 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v29 + 1, 8);
      LODWORD(v29) = *(a11 + 8);
    }

    *(*a11 + 8 * v29) = v28;
    goto LABEL_13;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(v63);
  v18 = v17;
  v69 = v71;
  HIDWORD(v70) = 4;
  if (v17 < 5)
  {
    if (!v17)
    {
      goto LABEL_23;
    }

    v20 = 8 * v17;
    v19 = v71;
  }

  else
  {
    LODWORD(v70) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v69, v71, v17, 8);
    v19 = v69;
    v20 = 8 * v18;
  }

  memset_pattern16(v19, &unk_1E096FAD0, v20);
LABEL_23:
  LODWORD(v70) = v18;
  v66 = v77;
  v67 = 1;
  v66 = mlir::ValueRange::offset_base(&v66, 1);
  v67 = 0;
  v30 = mlir::ValueRange::dereference_iterator(&v66, 0);
  v66 = 0;
  v67 = 0;
  v64 = &v66;
  v65 = v30;
  DefiningOp = mlir::Value::getDefiningOp(&v65);
  if (DefiningOp && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v64, DefiningOp))
  {
    SingleInt = mlir::getSingleIntValue<int>(v66, v67);
    v33 = SingleInt & 0xFFFFFF00;
    v34 = SingleInt;
    v35 = HIDWORD(SingleInt) & 1;
  }

  else
  {
    LOBYTE(v35) = 0;
    v34 = 0;
    v33 = 0;
  }

  v66 = v77;
  v67 = 2;
  v66 = mlir::ValueRange::offset_base(&v66, 2);
  v67 = 0;
  v36 = mlir::ValueRange::dereference_iterator(&v66, 0);
  v66 = 0;
  v67 = 0;
  v64 = &v66;
  v65 = v36;
  v37 = mlir::Value::getDefiningOp(&v65);
  if (v37 && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v64, v37))
  {
    v38 = mlir::getSingleIntValue<int>(v66, v67);
    v61 = v38 & 0xFFFFFF00;
    v62 = v38;
    v39 = HIDWORD(v38) & 1;
  }

  else
  {
    LODWORD(v39) = 0;
    v61 = 0;
    v62 = 0;
  }

  v66 = v77;
  v67 = 3;
  v66 = mlir::ValueRange::offset_base(&v66, 3);
  v67 = 0;
  v40 = mlir::ValueRange::dereference_iterator(&v66, 0);
  v66 = 0;
  v67 = 0;
  v64 = &v66;
  v65 = v40;
  v41 = mlir::Value::getDefiningOp(&v65);
  if (v41 && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v64, v41))
  {
    v42 = mlir::getSingleIntValue<int>(v66, v67);
    v43 = v42 & 0xFFFFFF00;
    v44 = v42;
    v45 = HIDWORD(v42) & 1;
    if ((v35 & 1) == 0)
    {
LABEL_34:
      v46 = v69;
      goto LABEL_45;
    }
  }

  else
  {
    LODWORD(v45) = 0;
    v44 = 0;
    v43 = 0;
    if ((v35 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  v47 = (v18 & ((v33 | v34) >> 63)) + (v33 | v34);
  if (v47 < 0 || v18 <= v47)
  {
    goto LABEL_47;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v63);
  v49 = mlir::CallableOpInterface::getArgAttrsAttr(v63);
  llvm::SmallVector<long long,4u>::SmallVector<long long const*,void>(&v66, ArgAttrsAttr, (v49 + 8 * v50));
  llvm::SmallVectorImpl<unsigned long long>::operator=(&v69, &v66);
  if (v66 != &v68)
  {
    free(v66);
  }

  v51 = 0x8000000000000000;
  v46 = v69;
  if ((v39 & v45) == 1)
  {
    v52 = *(v69 + v47);
    if (v52 == 0x8000000000000000)
    {
      goto LABEL_45;
    }

    v53 = v52 - ((v61 | v62) + v44 + v43);
    if (v53 < 0 || (v51 = v53 & 0x7FFFFFFF, v52 < v51))
    {
LABEL_47:
      v66 = v77;
      v67 = 0;
      v58 = mlir::ValueRange::dereference_iterator(&v66, 0);
      v59 = mlir::getElementTypeOrSelf(v58);
      result = mlir::mps::ResizeOp::inferReturnTypes(mlir::MLIRContext *,std::optional<mlir::Location>,mlir::ValueRange,mlir::DictionaryAttr,mlir::OpaqueProperties,mlir::RegionRange,llvm::SmallVectorImpl<mlir::Type> &)::$_0::operator()(a11, v59);
      v57 = v69;
      if (v69 == v71)
      {
        return result;
      }

LABEL_48:
      v60 = result;
      free(v57);
      return v60;
    }
  }

  *(v69 + v47) = v51;
LABEL_45:
  v54 = v70;
  isSplat = mlir::ElementsAttr::isSplat(v63);
  v56 = mlir::RankedTensorType::get(v46, v54, isSplat, 0);
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v56);
  result = 1;
  v57 = v69;
  if (v69 != v71)
  {
    goto LABEL_48;
  }

  return result;
}

BOOL mlir::mps::CropOp::verify(mlir::mps::CropOp *this)
{
  v105 = *MEMORY[0x1E69E9840];
  LOBYTE(v93) = 0;
  v94 = 0;
  v2 = (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = *v2;
  {
    v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v5 = *(v3 + 8);
    v6 = *(v3 + 16);
    if (!v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
    v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v5 = *(v3 + 8);
    v6 = *(v3 + 16);
    if (!v6)
    {
      goto LABEL_14;
    }
  }

  v7 = v5;
  v8 = v6;
  do
  {
    v9 = v8 >> 1;
    v10 = &v7[2 * (v8 >> 1)];
    v12 = *v10;
    v11 = v10 + 2;
    v8 += ~(v8 >> 1);
    if (v12 < v4)
    {
      v7 = v11;
    }

    else
    {
      v8 = v9;
    }
  }

  while (v8);
  if (v7 != &v5[2 * v6] && *v7 == v4)
  {
    v13 = v7[1];
    goto LABEL_15;
  }

LABEL_14:
  v13 = 0;
LABEL_15:
  v92[0] = v2;
  v92[1] = v13;
  v14 = *(*(*this + 72) + 56);
  v95 = 0;
  v96 = 0;
  v87[0] = &v95;
  v73 = v14;
  DefiningOp = mlir::Value::getDefiningOp(&v73);
  if (DefiningOp && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v87, DefiningOp))
  {
    SingleInt = mlir::getSingleIntValue<int>(v95, v96);
    v17 = SingleInt & 0xFF00000000;
    v18 = SingleInt & 0xFFFFFF00;
    v19 = SingleInt;
  }

  else
  {
    v17 = 0;
    v19 = 0;
    v18 = 0;
  }

  v20 = v19 | v18;
  v91 = BYTE4(v17);
  v90 = v19 | v18 | v17;
  if (mlir::CallOpInterface::getArgOperands(v92) && (v17 & 0x100000000) != 0)
  {
    mlir::CallableOpInterface::getArgAttrsAttr(v92);
    v89 = v21;
    if (v18 >> 31)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22 + v20;
    if (v23 < 0 || v23 >= v21)
    {
      v73 = "failed: axis value {0} does not fit tensor rank ({1})";
      v74 = 53;
      v75 = &v82;
      v76 = 2;
      v77 = 1;
      v78 = &unk_1F5B17E80;
      v79 = &v90;
      v80 = &unk_1F5B17218;
      v81 = &v89;
      v82 = &v78;
      v83 = &v80;
      v88 = 263;
      v87[0] = &v73;
      mlir::OpState::emitOpError(this, v87, &v95);
      v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v95);
      if (v95)
      {
        mlir::InFlightDiagnostic::report(&v95);
      }

      if (v104 == 1)
      {
        if (v103 != &v104)
        {
          free(v103);
        }

        v43 = __p;
        if (__p)
        {
          v44 = v102;
          v45 = __p;
          if (v102 != __p)
          {
            do
            {
              v44 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v44 - 1);
            }

            while (v44 != v43);
            v45 = __p;
          }

          v102 = v43;
          operator delete(v45);
        }

        v32 = v99;
        if (!v99)
        {
          goto LABEL_149;
        }

        v46 = v100;
        v34 = v99;
        if (v100 == v99)
        {
          goto LABEL_148;
        }

        do
        {
          v48 = *--v46;
          v47 = v48;
          *v46 = 0;
          if (v48)
          {
            operator delete[](v47);
          }
        }

        while (v46 != v32);
        goto LABEL_147;
      }

      return v28;
    }

    if (*(mlir::CallableOpInterface::getArgAttrsAttr(v92) + 8 * v23) != 0x8000000000000000)
    {
      v93 = *(mlir::CallableOpInterface::getArgAttrsAttr(v92) + 8 * v23);
      v94 = 1;
    }
  }

  v24 = *(*(*this + 72) + 88);
  v95 = 0;
  v96 = 0;
  v87[0] = &v95;
  v73 = v24;
  v25 = mlir::Value::getDefiningOp(&v73);
  if (!v25 || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v87, v25) & 1) == 0)
  {
    v27 = 0;
    BYTE4(v89) = 0;
    LODWORD(v89) = 0;
    goto LABEL_48;
  }

  v26 = mlir::getSingleIntValue<int>(v95, v96);
  v27 = v26;
  LODWORD(v89) = v26;
  BYTE4(v89) = BYTE4(v26);
  if ((v26 & 0x100000000) == 0)
  {
LABEL_48:
    v35 = 1;
    goto LABEL_49;
  }

  v86 = v26;
  if ((v26 & 0x80000000) != 0)
  {
    v73 = "failed: amount_before value {0} must be positive";
    v74 = 48;
    v75 = &v80;
    v76 = 1;
    v77 = 1;
    v78 = &unk_1F5B17218;
    v79 = &v86;
    v80 = &v78;
    v88 = 263;
    v87[0] = &v73;
    mlir::OpState::emitOpError(this, v87, &v95);
    v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v95);
    if (v95)
    {
      mlir::InFlightDiagnostic::report(&v95);
    }

    if (v104 == 1)
    {
      if (v103 != &v104)
      {
        free(v103);
      }

      v53 = __p;
      if (__p)
      {
        v54 = v102;
        v55 = __p;
        if (v102 != __p)
        {
          do
          {
            v54 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v54 - 1);
          }

          while (v54 != v53);
          v55 = __p;
        }

        v102 = v53;
        operator delete(v55);
      }

      v32 = v99;
      if (!v99)
      {
        goto LABEL_149;
      }

      v56 = v100;
      v34 = v99;
      if (v100 == v99)
      {
        goto LABEL_148;
      }

      do
      {
        v58 = *--v56;
        v57 = v58;
        *v56 = 0;
        if (v58)
        {
          operator delete[](v57);
        }
      }

      while (v56 != v32);
      goto LABEL_147;
    }

    return v28;
  }

  if (v94 == 1 && v93 < v26)
  {
    v73 = "failed: amount_before value {0} does not fit dimension size ({1})";
    v74 = 65;
    v75 = &v82;
    v76 = 2;
    v77 = 1;
    v78 = &unk_1F5B17218;
    v79 = &v86;
    v80 = &unk_1F5B17218;
    v81 = &v93;
    v82 = &v78;
    v83 = &v80;
    v88 = 263;
    v87[0] = &v73;
    mlir::OpState::emitOpError(this, v87, &v95);
    v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v95);
    if (v95)
    {
      mlir::InFlightDiagnostic::report(&v95);
    }

    if (v104 == 1)
    {
      if (v103 != &v104)
      {
        free(v103);
      }

      v29 = __p;
      if (__p)
      {
        v30 = v102;
        v31 = __p;
        if (v102 != __p)
        {
          do
          {
            v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
          }

          while (v30 != v29);
          v31 = __p;
        }

        v102 = v29;
        operator delete(v31);
      }

      v32 = v99;
      if (!v99)
      {
        goto LABEL_149;
      }

      v33 = v100;
      v34 = v99;
      if (v100 == v99)
      {
LABEL_148:
        v100 = v32;
        operator delete(v34);
LABEL_149:
        if (v97 != &v98)
        {
          free(v97);
        }

        return v28;
      }

      do
      {
        v50 = *--v33;
        v49 = v50;
        *v33 = 0;
        if (v50)
        {
          operator delete[](v49);
        }
      }

      while (v33 != v32);
LABEL_147:
      v34 = v99;
      goto LABEL_148;
    }

    return v28;
  }

  v35 = 0;
LABEL_49:
  v36 = *(*(*this + 72) + 120);
  v95 = 0;
  v96 = 0;
  v87[0] = &v95;
  v73 = v36;
  v37 = mlir::Value::getDefiningOp(&v73);
  if (!v37 || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v87, v37) & 1) == 0)
  {
    BYTE4(v86) = 0;
    LODWORD(v86) = 0;
LABEL_69:
    v28 = 1;
    if ((v94 & 1) == 0)
    {
      return v28;
    }

    return 1;
  }

  v38 = mlir::getSingleIntValue<int>(v95, v96);
  LODWORD(v86) = v38;
  BYTE4(v86) = BYTE4(v38);
  if ((v38 & 0x100000000) == 0)
  {
    goto LABEL_69;
  }

  v85 = v38;
  if ((v38 & 0x80000000) != 0)
  {
    v73 = "failed: amount_after value {0} must be positive";
    v74 = 47;
    v75 = &v80;
    v76 = 1;
    v77 = 1;
    v78 = &unk_1F5B17218;
    v79 = &v85;
    v80 = &v78;
    v88 = 263;
    v87[0] = &v73;
    mlir::OpState::emitOpError(this, v87, &v95);
    v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v95);
    if (v95)
    {
      mlir::InFlightDiagnostic::report(&v95);
    }

    if (v104 == 1)
    {
      if (v103 != &v104)
      {
        free(v103);
      }

      v59 = __p;
      if (__p)
      {
        v60 = v102;
        v61 = __p;
        if (v102 != __p)
        {
          do
          {
            v60 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v60 - 1);
          }

          while (v60 != v59);
          v61 = __p;
        }

        v102 = v59;
        operator delete(v61);
      }

      v32 = v99;
      if (!v99)
      {
        goto LABEL_149;
      }

      v62 = v100;
      v34 = v99;
      if (v100 == v99)
      {
        goto LABEL_148;
      }

      do
      {
        v64 = *--v62;
        v63 = v64;
        *v62 = 0;
        if (v64)
        {
          operator delete[](v63);
        }
      }

      while (v62 != v32);
      goto LABEL_147;
    }

    return v28;
  }

  if (v94 != 1 || v93 >= v38)
  {
    if (v94 && (v35 & 1) == 0)
    {
      v28 = 1;
      v65 = v93 - (v27 + v38);
      if (v65 < 0 || v93 < v65)
      {
        v73 = "failed: amount_before value {0} and amount_after value {1} do not fit dimension size ({2})";
        v74 = 90;
        v75 = v84;
        v76 = 3;
        v77 = 1;
        v78 = &unk_1F5B17E80;
        v79 = &v89;
        v80 = &unk_1F5B17E80;
        v81 = &v86;
        v82 = &unk_1F5B17218;
        v83 = &v93;
        v84[0] = &v78;
        v84[1] = &v80;
        v84[2] = &v82;
        v88 = 263;
        v87[0] = &v73;
        mlir::OpState::emitOpError(this, v87, &v95);
        v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v95);
        if (v95)
        {
          mlir::InFlightDiagnostic::report(&v95);
        }

        if (v104 == 1)
        {
          if (v103 != &v104)
          {
            free(v103);
          }

          v66 = __p;
          if (__p)
          {
            v67 = v102;
            v68 = __p;
            if (v102 != __p)
            {
              do
              {
                v67 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v67 - 1);
              }

              while (v67 != v66);
              v68 = __p;
            }

            v102 = v66;
            operator delete(v68);
          }

          v32 = v99;
          if (!v99)
          {
            goto LABEL_149;
          }

          v69 = v100;
          v34 = v99;
          if (v100 == v99)
          {
            goto LABEL_148;
          }

          do
          {
            v71 = *--v69;
            v70 = v71;
            *v69 = 0;
            if (v71)
            {
              operator delete[](v70);
            }
          }

          while (v69 != v32);
          goto LABEL_147;
        }
      }

      return v28;
    }

    return 1;
  }

  v73 = "failed: amount_after value {0} does not fit dimension size ({1})";
  v74 = 64;
  v75 = &v82;
  v76 = 2;
  v77 = 1;
  v78 = &unk_1F5B17218;
  v79 = &v85;
  v80 = &unk_1F5B17218;
  v81 = &v93;
  v82 = &v78;
  v83 = &v80;
  v88 = 263;
  v87[0] = &v73;
  mlir::OpState::emitOpError(this, v87, &v95);
  v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v95);
  if (v95)
  {
    mlir::InFlightDiagnostic::report(&v95);
  }

  if (v104 == 1)
  {
    if (v103 != &v104)
    {
      free(v103);
    }

    v39 = __p;
    if (__p)
    {
      v40 = v102;
      v41 = __p;
      if (v102 != __p)
      {
        do
        {
          v40 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v40 - 1);
        }

        while (v40 != v39);
        v41 = __p;
      }

      v102 = v39;
      operator delete(v41);
    }

    v32 = v99;
    if (!v99)
    {
      goto LABEL_149;
    }

    v42 = v100;
    v34 = v99;
    if (v100 == v99)
    {
      goto LABEL_148;
    }

    do
    {
      v52 = *--v42;
      v51 = v52;
      *v42 = 0;
      if (v52)
      {
        operator delete[](v51);
      }
    }

    while (v42 != v32);
    goto LABEL_147;
  }

  return v28;
}

uint64_t mlir::mps::ReverseOp::verify(mlir::mps::ReverseOp *this)
{
  v2 = (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = *v2;
  {
    v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v5 = *(v3 + 8);
    v6 = *(v3 + 16);
    if (!v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
    v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v5 = *(v3 + 8);
    v6 = *(v3 + 16);
    if (!v6)
    {
      goto LABEL_14;
    }
  }

  v7 = v5;
  v8 = v6;
  do
  {
    v9 = v8 >> 1;
    v10 = &v7[2 * (v8 >> 1)];
    v12 = *v10;
    v11 = v10 + 2;
    v8 += ~(v8 >> 1);
    if (v12 < v4)
    {
      v7 = v11;
    }

    else
    {
      v8 = v9;
    }
  }

  while (v8);
  if (v7 == &v5[2 * v6] || *v7 != v4)
  {
LABEL_14:
    v26 = v2;
    v27 = 0;
    if (!mlir::CallOpInterface::getArgOperands(&v26))
    {
      return 1;
    }

    goto LABEL_15;
  }

  v20 = v7[1];
  v26 = v2;
  v27 = v20;
  if (!mlir::CallOpInterface::getArgOperands(&v26))
  {
    return 1;
  }

LABEL_15:
  if (*(*this + 68) != 1)
  {
    v13 = *(*(*this + 72) + 56);
    if (v13)
    {
      v24 = 0;
      v25 = 0;
      v23 = &v24;
      v21 = v13;
      DefiningOp = mlir::Value::getDefiningOp(&v21);
      if (DefiningOp)
      {
        if (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v23, DefiningOp))
        {
          v22[0] = 0;
          v22[1] = 0;
          v21 = v22;
          v15 = *this;
          v16 = v24;
          v17 = v25;
          mlir::CallableOpInterface::getArgAttrsAttr(&v26);
          std::__tree<unsigned long long>::destroy(&v21, v22[0]);
          if ((v15 & 1) == 0)
          {
            return 0;
          }
        }
      }
    }
  }

  return 1;
}

uint64_t mlir::matchPattern<mlir::detail::constant_op_binder<mlir::ElementsAttr>>(uint64_t a1, void **a2)
{
  v4 = a1;
  result = mlir::Value::getDefiningOp(&v4);
  if (result)
  {
    return mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(a2, result);
  }

  return result;
}

BOOL mlir::mps::anonymous namespace::validateUniqueAxes(mlir::mps::_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t **a5)
{
  v47[4] = *MEMORY[0x1E69E9840];
  v45 = v47;
  v46 = 0x400000000;
  v8 = 1;
  mlir::getIntValues<long long>(a2, a3, &v45, 1);
  if (v46)
  {
    v10 = v45;
    v11 = &v45[v46];
    v12 = a5 + 1;
    while (1)
    {
      v13 = *v10;
      v35 = 0;
      {
        break;
      }

      v14 = *v12;
      v15 = v35;
      v16 = a5 + 1;
      v17 = a5 + 1;
      if (*v12)
      {
        v18 = *v12;
        do
        {
          v19 = v18[4];
          if (v35 >= v19)
          {
            if (v19 >= v35)
            {
              v33 = "axis must be unique";
              v34 = 259;
              mlir::Operation::emitOpError(a1, &v33, v36);
              v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v36);
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

                v24 = __p;
                if (__p)
                {
                  v25 = v42;
                  v26 = __p;
                  if (v42 != __p)
                  {
                    do
                    {
                      v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
                    }

                    while (v25 != v24);
                    v26 = __p;
                  }

                  v42 = v24;
                  operator delete(v26);
                }

                v27 = v39;
                if (v39)
                {
                  v28 = v40;
                  v29 = v39;
                  if (v40 != v39)
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
                    v29 = v39;
                  }

                  v40 = v27;
                  operator delete(v29);
                }

                if (v37 != &v38)
                {
                  free(v37);
                }
              }

              goto LABEL_41;
            }

            ++v18;
          }

          v18 = *v18;
        }

        while (v18);
        while (1)
        {
          while (1)
          {
            v17 = v14;
            v20 = v14[4];
            if (v35 >= v20)
            {
              break;
            }

            v14 = *v17;
            v16 = v17;
            if (!*v17)
            {
              goto LABEL_15;
            }
          }

          if (v20 >= v35)
          {
            break;
          }

          v14 = v17[1];
          if (!v14)
          {
            v16 = v17 + 1;
            goto LABEL_15;
          }
        }
      }

      else
      {
LABEL_15:
        v21 = operator new(0x28uLL);
        v21[4] = v15;
        *v21 = 0;
        v21[1] = 0;
        v21[2] = v17;
        *v16 = v21;
        v22 = **a5;
        if (v22)
        {
          *a5 = v22;
        }

        std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(a5[1], v21);
        a5[2] = (a5[2] + 1);
      }

      if (++v10 == v11)
      {
        v8 = 1;
        v23 = v45;
        if (v45 != v47)
        {
          goto LABEL_42;
        }

        return v8;
      }
    }

    v8 = 0;
    v23 = v45;
    if (v45 != v47)
    {
      goto LABEL_42;
    }
  }

  else
  {
LABEL_41:
    v23 = v45;
    if (v45 != v47)
    {
LABEL_42:
      free(v23);
    }
  }

  return v8;
}

BOOL mlir::mps::SplitOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, AttributeStorage *a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v128[6] = *MEMORY[0x1E69E9840];
  v121 = a4;
  v122 = a5;
  if (a7)
  {
    v16 = *a7;
  }

  else
  {
    v16 = 0;
  }

  v113 = a6;
  v114[0] = 0;
  v115 = 0;
  v116 = v16;
  v117 = a9;
  v17 = a5;
  v118 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v113);
    if (v115 == 1)
    {
      v115 = 0;
    }

    mlir::OperationName::OperationName(v114, "mps.split", 9, Context);
    v115 = 1;
    v17 = v122;
  }

  v119 = a4;
  v120 = a5;
  if (v17 < 2 || (v19.var0.var0 = mlir::UnknownLoc::get(this, a2), !mlir::mps::SplitOpAdaptor::verify(&v113, v19)))
  {
    v29 = mlir::Float32Type::get(this, a2);
    v30 = mlir::UnrankedTensorType::get(v29);
    v31 = *(a11 + 8);
    if (v31 >= *(a11 + 12))
    {
      v95 = v30;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v31 + 1, 8);
      v30 = v95;
      LODWORD(v31) = *(a11 + 8);
    }

    *(*a11 + 8 * v31) = v30;
    goto LABEL_17;
  }

  v20 = mlir::ValueRange::dereference_iterator(&v121, 0);
  v21 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v20 + 8) & 0xFFFFFFFFFFFFFFF8));
  if (!v21)
  {
    v33 = mlir::ValueRange::dereference_iterator(&v121, 0);
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v33);
    if (!ElementTypeOrSelf)
    {
      ElementTypeOrSelf = mlir::Float32Type::get(this, v35);
    }

    v36 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
    v37 = *(a11 + 8);
    if (v37 >= *(a11 + 12))
    {
      v96 = v36;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v37 + 1, 8);
      v36 = v96;
      v37 = *(a11 + 8);
    }

    *(*a11 + 8 * v37) = v36;
LABEL_17:
    ++*(a11 + 8);
    return 1;
  }

  v23 = v21;
  v24 = v22;
  v25 = mlir::ValueRange::dereference_iterator(&v121, 1);
  v26 = v122;
  if (v122 == 3)
  {
    v97 = mlir::ValueRange::dereference_iterator(&v121, 2);
    v98 = v116;
    if (v116)
    {
LABEL_13:
      UInt = mlir::IntegerAttr::getUInt(&v98);
      v28 = 1;
      goto LABEL_26;
    }
  }

  else
  {
    v97 = 0;
    v98 = v116;
    if (v116)
    {
      goto LABEL_13;
    }
  }

  UInt = 0;
  v28 = 0;
LABEL_26:
  v112[0] = v23;
  v112[1] = v24;
  v110 = UInt;
  v111 = v28;
  v126 = v128;
  v127 = 0x600000000;
  LOBYTE(v108) = 0;
  v109 = 0;
  v38 = 0x8000000000000000;
  v107 = 0x8000000000000000;
  if (!mlir::CallOpInterface::getArgOperands(v112))
  {
    goto LABEL_46;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(v112);
  v40 = v39;
  if (mlir::mps::getAxis(a2, a3, v25, v39, &v108))
  {
    if (v109 == 1)
    {
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v112);
      v43 = v42;
      v44 = 0;
      v38 = ArgAttrsAttr[v108];
      v107 = v38;
      LODWORD(v127) = 0;
      v45 = (8 * v42) >> 3;
      if (v45 > HIDWORD(v127))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v128, v45, 8);
        v44 = v127;
      }

      if (v43)
      {
        memcpy(&v126[v44], ArgAttrsAttr, 8 * v43);
        v44 = v127;
      }

      LODWORD(v127) = v44 + v43;
      v46 = 1;
      v123 = v125;
      v124 = 0x600000000;
      if (v26 != 3)
      {
        goto LABEL_34;
      }

LABEL_47:
      v99 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v97 + 8) & 0xFFFFFFFFFFFFFFF8));
      v100 = v52;
      if ((mlir::CallOpInterface::getArgOperands(&v99) & 1) == 0)
      {
        v54.var0.var0 = a3;
        goto LABEL_107;
      }

      if ((mlir::matchConstantWithIntVector<long long>(v97, &v123) & 1) == 0)
      {
        if ((v28 & 1) == 0)
        {
          UInt = *mlir::CallableOpInterface::getArgAttrsAttr(&v99);
          LOBYTE(v111) = 1;
          v110 = UInt;
          if (UInt == 0x8000000000000000)
          {
            v53.var0.var0 = a3;
            goto LABEL_107;
          }
        }

        v56 = v124;
        if (UInt != v124)
        {
          if (UInt >= v124)
          {
            if (UInt > HIDWORD(v124))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v123, v125, UInt, 8);
              v56 = v124;
            }

            if (UInt != v56)
            {
              bzero(&v123[8 * v56], 8 * (UInt - v56));
            }
          }

          LODWORD(v124) = UInt;
        }

        if (UInt)
        {
          v57 = v123;
          v58 = 8 * UInt;
LABEL_70:
          memset_pattern16(v57, &unk_1E096FAD0, v58);
        }
      }

LABEL_71:
      if (mlir::CallOpInterface::getArgOperands(v112))
      {
        if (v124)
        {
          v59 = v123;
          v60 = v108;
          do
          {
            v61 = v126;
            if (v46)
            {
              v126[v60] = *v59;
            }

            v62 = v127;
            isSplat = mlir::ElementsAttr::isSplat(v112);
            v64 = mlir::RankedTensorType::get(v61, v62, isSplat, 0);
            v65 = *(a11 + 8);
            if (v65 >= *(a11 + 12))
            {
              v66 = v64;
              llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v65 + 1, 8);
              v64 = v66;
              v65 = *(a11 + 8);
            }

            *(*a11 + 8 * v65) = v64;
            ++*(a11 + 8);
            v59 += 8;
          }

          while (v59 != &v123[8 * v124]);
        }

        goto LABEL_106;
      }

      v67 = mlir::ElementsAttr::isSplat(v112);
      v68 = mlir::UnrankedTensorType::get(v67);
      v69 = v68;
      v70 = v124;
      if (*(a11 + 12) < v124)
      {
        *(a11 + 8) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v70, 8);
        v71 = *a11;
        if (v70 >= 4)
        {
          v72 = v71 + (v70 & 0xFFFFFFFC);
          v73 = v70 & 3;
          v80 = vdupq_n_s64(v69);
          v81 = v71 + 1;
          v82 = v70 & 0xFFFFFFFC;
          do
          {
            v81[-1] = v80;
            *v81 = v80;
            v81 += 2;
            v82 -= 4;
          }

          while (v82);
          if ((v70 & 0xFFFFFFFC) == v70)
          {
            goto LABEL_93;
          }
        }

        else
        {
          v72 = *a11;
          v73 = v70;
        }

        do
        {
          *v72++ = v69;
          --v73;
        }

        while (v73);
LABEL_93:
        v76 = (a11 + 8);
        goto LABEL_105;
      }

      v74 = *a11;
      v76 = (a11 + 8);
      v75 = *(a11 + 8);
      if (v75 >= v124)
      {
        v77 = v124;
      }

      else
      {
        v77 = *(a11 + 8);
      }

      if (v77)
      {
        if (v77 < 4)
        {
          v78 = *a11;
          v79 = v77;
          do
          {
LABEL_97:
            *v78++ = v68;
            --v79;
          }

          while (v79);
          goto LABEL_98;
        }

        v78 = v74 + (v77 & 0xFFFFFFFC);
        v79 = v77 & 3;
        v83 = vdupq_n_s64(v68);
        v84 = v74 + 1;
        v85 = v77 & 0xFFFFFFFC;
        do
        {
          v84[-1] = v83;
          *v84 = v83;
          v84 += 2;
          v85 -= 4;
        }

        while (v85);
        if (v77 != (v77 & 0xFFFFFFFC))
        {
          goto LABEL_97;
        }
      }

LABEL_98:
      if (v75 < v70)
      {
        v86 = v70 - v75;
        v87 = (v74 + 8 * v75);
        if (v70 - v75 >= 4)
        {
          v88 = v87 + (v86 & 0xFFFFFFFFFFFFFFFCLL);
          v89 = v86 & 3;
          v90 = vdupq_n_s64(v68);
          v91 = v87 + 1;
          v92 = v86 & 0xFFFFFFFFFFFFFFFCLL;
          do
          {
            v91[-1] = v90;
            *v91 = v90;
            v91 += 2;
            v92 -= 4;
          }

          while (v92);
          if (v86 == (v86 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_105;
          }
        }

        else
        {
          v88 = v74 + v75;
          v89 = v70 - v75;
        }

        do
        {
          *v88++ = v68;
          --v89;
        }

        while (v89);
      }

LABEL_105:
      *v76 = v70;
LABEL_106:
      result = 1;
LABEL_107:
      if (v123 != v125)
      {
        v93 = result;
        free(v123);
        result = v93;
      }

      goto LABEL_109;
    }

    if (v40 < 1)
    {
      v46 = 0;
      v38 = 0x8000000000000000;
      v123 = v125;
      v124 = 0x600000000;
      if (v26 == 3)
      {
        goto LABEL_47;
      }

LABEL_34:
      if (!v28)
      {
        v49.var0.var0 = a3;
        goto LABEL_107;
      }

      if (v38 == 0x8000000000000000)
      {
        if (!UInt)
        {
          goto LABEL_71;
        }

        if (UInt < 7)
        {
          v47 = 0;
          v48 = v125;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v123, v125, UInt, 8);
          v47 = v124;
          v48 = v123;
        }

        if (UInt != v47)
        {
          bzero(&v48[8 * v47], 8 * (UInt - v47));
        }

        LODWORD(v124) = UInt;
        v58 = 8 * UInt;
        v57 = v48;
        goto LABEL_70;
      }

      {
        v99 = "infer split sizes from total size={0} and num_splits={1} failed.";
        v100 = 64;
        v101 = v106;
        v102 = 2;
        v103 = 1;
        v104[0] = &unk_1F5B17218;
        v104[1] = &v107;
        v105[0] = &unk_1F5B2E950;
        v105[1] = &v110;
        v106[0] = v104;
        v106[1] = v105;
        v55.var0.var0 = a3;
        result = mlir::emitOptionalError<llvm::formatv_object<std::tuple<llvm::support::detail::provider_format_adapter<long long &>,llvm::support::detail::provider_format_adapter<unsigned long long &>>>>(a2, v55, &v99);
        goto LABEL_107;
      }

      goto LABEL_71;
    }

    v50 = v127;
    v51 = v40 + 1;
    v38 = 0x8000000000000000;
    do
    {
      if (v50 >= HIDWORD(v127))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v128, v50 + 1, 8);
        v50 = v127;
      }

      v126[v50] = 0x8000000000000000;
      v50 = v127 + 1;
      LODWORD(v127) = v127 + 1;
      --v51;
    }

    while (v51 > 1);
LABEL_46:
    v46 = 0;
    v123 = v125;
    v124 = 0x600000000;
    if (v26 == 3)
    {
      goto LABEL_47;
    }

    goto LABEL_34;
  }

  result = 0;
LABEL_109:
  if (v126 != v128)
  {
    v94 = result;
    free(v126);
    return v94;
  }

  return result;
}

BOOL mlir::mps::SplitOpAdaptor::verify(mlir::mps::SplitOpAdaptor *this, Location a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!*(this + 3))
  {
    return 1;
  }

  v13[0] = *(this + 3);
  v15[0] = mlir::AffineMapAttr::getValue(v13);
  if (mlir::Type::isUnsignedInteger(v15, 32))
  {
    return 1;
  }

  v13[0] = "'mps.split' op attribute 'num_splits' failed to satisfy constraint: 32-bit unsigned integer attribute";
  v14 = 259;
  mlir::emitError(a2.var0.var0, v13, v15);
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

    v5 = __p;
    if (__p)
    {
      v6 = v21;
      v7 = __p;
      if (v21 != __p)
      {
        do
        {
          v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
        }

        while (v6 != v5);
        v7 = __p;
      }

      v21 = v5;
      operator delete(v7);
    }

    v8 = v18;
    if (v18)
    {
      v9 = v19;
      v10 = v18;
      if (v19 != v18)
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
        v10 = v18;
      }

      v19 = v8;
      operator delete(v10);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }

  return v3;
}

uint64_t mlir::mps::SplitOp::verify(mlir::mps::SplitOp *this)
{
  v1 = this;
  v149[6] = *MEMORY[0x1E69E9840];
  v2 = (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = *v2;
  {
    getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
    v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v5 = *(v3 + 8);
    v6 = *(v3 + 16);
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_14:
    v13 = 0;
    goto LABEL_15;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_4:
  v7 = v5;
  v8 = v6;
  do
  {
    v9 = v8 >> 1;
    v10 = &v7[2 * (v8 >> 1)];
    v12 = *v10;
    v11 = v10 + 2;
    v8 += ~(v8 >> 1);
    if (v12 < v4)
    {
      v7 = v11;
    }

    else
    {
      v8 = v9;
    }
  }

  while (v8);
  if (v7 == &v5[2 * v6] || *v7 != v4)
  {
    goto LABEL_14;
  }

  v13 = v7[1];
LABEL_15:
  v128[0] = v2;
  v128[1] = v13;
  v14 = *(*v1 + 36);
  if (v14)
  {
    v15 = *v1 - 16;
  }

  else
  {
    v15 = 0;
  }

  v16 = 0x8000000000000000;
  v127 = 0x8000000000000000;
  LOBYTE(v125) = 0;
  v126 = 0;
  if (!mlir::CallOpInterface::getArgOperands(v128))
  {
    v115 = 0;
    v117 = 0;
    v20 = *v1;
    if (*(*v1 + 68) != 2)
    {
      goto LABEL_22;
    }

LABEL_27:
    v22 = v149;
    v147 = v149;
    v148 = 0x600000000;
LABEL_28:
    v116 = 1;
    goto LABEL_29;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(v128);
  v16 = v17;
  if (!mlir::mps::getAxis(*(*v1 + 24), 1, *(*(*v1 + 72) + 56), v17, &v125))
  {
    return 0;
  }

  if (v126 != 1)
  {
    return 1;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v128);
  v115 = v19;
  v117 = ArgAttrsAttr;
  v127 = *(ArgAttrsAttr + 8 * v125);
  v20 = *v1;
  if (*(*v1 + 68) == 2)
  {
    goto LABEL_27;
  }

LABEL_22:
  v21 = *(*(v20 + 72) + 88);
  v22 = v149;
  v147 = v149;
  v148 = 0x600000000;
  if (!v21 || (mlir::matchConstantWithIntVector<long long>(v21, &v147) & 1) == 0)
  {
    goto LABEL_28;
  }

  if (v148 == v14)
  {
    v116 = 0;
LABEL_29:
    LOBYTE(v132) = 0;
    v134 = 0;
    v118[0] = *(*v1 + 16 * ((*(*v1 + 44) >> 23) & 1) + 64);
    if (v118[0])
    {
      mlir::IntegerAttr::getValue(v118, &__p);
      if (v136[0] >= 0x41)
      {
        p_p = __p;
      }

      else
      {
        p_p = &__p;
      }

      v24 = *p_p;
      if (v136[0] >= 0x41 && __p)
      {
        operator delete[](__p);
      }

      v123 = v24;
      v124 = 1;
      if (!v24)
      {
        v119 = 259;
        mlir::OpState::emitOpError(v1, v118, &__p);
        v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__p);
        if (__p)
        {
          mlir::InFlightDiagnostic::report(&__p);
        }

        if (v146 == 1)
        {
          if (v145 != &v146)
          {
            free(v145);
          }

          v54 = v143;
          if (v143)
          {
            v55 = v144;
            v56 = v143;
            if (v144 != v143)
            {
              do
              {
                v55 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v55 - 1);
              }

              while (v55 != v54);
              v56 = v143;
            }

            v144 = v54;
            operator delete(v56);
          }

          v57 = v141;
          if (v141)
          {
            v58 = v142;
            v59 = v141;
            if (v142 == v141)
            {
              goto LABEL_231;
            }

            do
            {
              v61 = *--v58;
              v60 = v61;
              *v58 = 0;
              if (v61)
              {
                operator delete[](v60);
              }
            }

            while (v58 != v57);
            goto LABEL_230;
          }

          goto LABEL_232;
        }

        goto LABEL_234;
      }

      if (v14 != v24)
      {
        v119 = 259;
        mlir::OpState::emitOpError(v1, v118, &__p);
        v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__p);
        if (__p)
        {
          mlir::InFlightDiagnostic::report(&__p);
        }

        if (v146 == 1)
        {
          if (v145 != &v146)
          {
            free(v145);
          }

          v62 = v143;
          if (v143)
          {
            v63 = v144;
            v64 = v143;
            if (v144 != v143)
            {
              do
              {
                v63 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v63 - 1);
              }

              while (v63 != v62);
              v64 = v143;
            }

            v144 = v62;
            operator delete(v64);
          }

          v57 = v141;
          if (v141)
          {
            v65 = v142;
            v59 = v141;
            if (v142 == v141)
            {
              goto LABEL_231;
            }

            do
            {
              v67 = *--v65;
              v66 = v67;
              *v65 = 0;
              if (v67)
              {
                operator delete[](v66);
              }
            }

            while (v65 != v57);
            goto LABEL_230;
          }

LABEL_232:
          if (v137 != v140)
          {
            free(v137);
          }
        }

LABEL_234:
        if (v134 == 1)
        {
          goto LABEL_235;
        }

        goto LABEL_238;
      }

      if (v127 != 0x8000000000000000)
      {
        v129 = v131;
        v130 = 0x600000000;
        if (v25)
        {
          std::optional<llvm::SmallVector<long long,6u>>::operator=[abi:nn200100]<llvm::SmallVector<long long,6u>&,void>(&v132, &v129);
        }

        else
        {
          if ((v124 & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:nn200100]();
            goto LABEL_249;
          }

          llvm::formatv<long long &,unsigned int &>("infer split sizes from total size={0} and num_splits={1} failed.", &v127, &v123, v118);
          v122 = 263;
          v120 = v118;
          mlir::OpState::emitOpError(v1, &v120, &__p);
          v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__p);
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&__p);
        }

        if (v129 != v131)
        {
          free(v129);
        }

        if ((v25 & 1) == 0)
        {
          goto LABEL_234;
        }
      }
    }

    else
    {
      v124 = 0;
      v123 = 0;
      if (!v14)
      {
        v26 = 0;
LABEL_131:
        v24 = 1;
        if (v127 != 0x8000000000000000 && v26 != v127)
        {
          v118[0] = "sum of result dimension lengths along split axis must equal input dimension length along split axis";
          v119 = 259;
          mlir::OpState::emitOpError(v1, v118, &__p);
          v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__p);
          if (__p)
          {
            mlir::InFlightDiagnostic::report(&__p);
          }

          if (v146 == 1)
          {
            mlir::Diagnostic::~Diagnostic(v136);
            if (v134 == 1)
            {
              goto LABEL_235;
            }

            goto LABEL_238;
          }
        }

        goto LABEL_234;
      }
    }

    v113 = v1;
    v114 = v149;
    v26 = 0;
    v27 = 0;
    v112 = 0;
    v111 = 0;
    v110 = v14 - 1;
    v28 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    while (1)
    {
      v29 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v15, v27) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!v29)
      {
        goto LABEL_58;
      }

      v30 = *v29;
      {
        v31 = v28[257];
        v32 = *(v30 + 8);
        v33 = *(v30 + 16);
        if (!v33)
        {
          goto LABEL_58;
        }
      }

      else
      {
        mlir::arith::ExtUIOp::fold();
        v31 = v28[257];
        v32 = *(v30 + 8);
        v33 = *(v30 + 16);
        if (!v33)
        {
          goto LABEL_58;
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
        v51 = v34[1];
        v120 = v29;
        v121 = v51;
        if (mlir::CallOpInterface::getArgOperands(&v120))
        {
          goto LABEL_59;
        }

LABEL_44:
        v26 = 0x8000000000000000;
        if (++v27 == v14)
        {
          goto LABEL_94;
        }
      }

      else
      {
LABEL_58:
        v120 = v29;
        v121 = 0;
        if (!mlir::CallOpInterface::getArgOperands(&v120))
        {
          goto LABEL_44;
        }

LABEL_59:
        if (v16 != 0x8000000000000000)
        {
          mlir::CallableOpInterface::getArgAttrsAttr(&v120);
          if (v40 != v16)
          {
            v118[0] = "invalid rank for result, expected rank ";
            v119 = 259;
            v24 = &__p;
            mlir::OpState::emitOpError(v113, v118, &__p);
            v22 = v149;
            if (!__p)
            {
              goto LABEL_157;
            }

            LODWORD(v129) = 2;
            v130 = v16;
            v76 = v138;
            v77 = &v129;
            v78 = v137;
            if (v138 < v139)
            {
              goto LABEL_156;
            }

            if (v137 > &v129 || v137 + 24 * v138 <= &v129)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v137, v140, v138 + 1, 24);
              v77 = &v129;
              v78 = v137;
              goto LABEL_247;
            }

LABEL_249:
            v109 = (&v129 - v78);
            llvm::SmallVectorBase<unsigned int>::grow_pod((v24 + 3), v140, v76 + 1, 24);
            v78 = v137;
            v77 = &v109[v137];
LABEL_247:
            v22 = v114;
LABEL_156:
            v79 = &v78[24 * v138];
            v80 = *v77;
            *(v79 + 2) = v77[2];
            *v79 = v80;
            ++v138;
LABEL_157:
            v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__p);
            if (__p)
            {
              mlir::InFlightDiagnostic::report(&__p);
            }

            if (v146 == 1)
            {
              if (v145 != &v146)
              {
                free(v145);
              }

              v81 = v143;
              if (v143)
              {
                v82 = v144;
                v83 = v143;
                if (v144 != v143)
                {
                  do
                  {
                    v82 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v82 - 1);
                  }

                  while (v82 != v81);
                  v83 = v143;
                }

                v144 = v81;
                operator delete(v83);
              }

              v57 = v141;
              if (v141)
              {
                v84 = v142;
                v59 = v141;
                if (v142 == v141)
                {
LABEL_231:
                  v142 = v57;
                  operator delete(v59);
                  goto LABEL_232;
                }

                do
                {
                  v86 = *--v84;
                  v85 = v86;
                  *v84 = 0;
                  if (v86)
                  {
                    operator delete[](v85);
                  }
                }

                while (v84 != v57);
LABEL_230:
                v59 = v141;
                goto LABEL_231;
              }

              goto LABEL_232;
            }

            goto LABEL_234;
          }
        }

        v41 = mlir::CallableOpInterface::getArgAttrsAttr(&v120);
        if (v126 == 1)
        {
          v43 = v41;
          v44 = v14;
          v45 = v16;
          v46 = v15;
          v47 = v28;
          v48 = v42;
          v49 = v125;
          v50 = *(v41 + 8 * v125);
          if (mlir::CallOpInterface::getArgOperands(v128) && ((mlir::verifyCompatibleShape(v43, v49, v117, v49) & 1) == 0 || (mlir::verifyCompatibleShape(&v43[v49 + 1], v48 - (v49 + 1), &v117[v49 + 1], v115 - (v49 + 1)) & 1) == 0))
          {
            v118[0] = "result shape must match input shape along non-axis dimensions";
            v119 = 259;
            mlir::OpState::emitOpError(v113, v118, &__p);
            v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__p);
            if (__p)
            {
              mlir::InFlightDiagnostic::report(&__p);
            }

            v22 = v149;
            if (v146 != 1)
            {
              goto LABEL_234;
            }

            if (v145 != &v146)
            {
              free(v145);
            }

            v87 = v143;
            if (v143)
            {
              v88 = v144;
              v89 = v143;
              if (v144 != v143)
              {
                do
                {
                  v88 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v88 - 1);
                }

                while (v88 != v87);
                v89 = v143;
              }

              v144 = v87;
              operator delete(v89);
            }

            v57 = v141;
            if (!v141)
            {
              goto LABEL_232;
            }

            v90 = v142;
            v59 = v141;
            if (v142 == v141)
            {
              goto LABEL_231;
            }

            do
            {
              v92 = *--v90;
              v91 = v92;
              *v90 = 0;
              if (v92)
              {
                operator delete[](v91);
              }
            }

            while (v90 != v57);
            goto LABEL_230;
          }

          if (v116)
          {
            v28 = v47;
            if (v124 != 1)
            {
              goto LABEL_74;
            }

            v15 = v46;
            if (v50 == 0x8000000000000000)
            {
              v50 = 0x8000000000000000;
              goto LABEL_75;
            }

            v16 = v45;
            if (v134 == 1)
            {
              v14 = v44;
              if (v50 != *(v132 + v27))
              {
                v118[0] = "inferred dimension size along axis must be compatible with result shape at axis";
                v119 = 259;
                mlir::OpState::emitOpError(v113, v118, &__p);
                v101 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__p);
                v24 = v101;
                if (__p)
                {
                  mlir::InFlightDiagnostic::report(&__p);
                }

                v22 = v149;
                if (v146 != 1)
                {
                  goto LABEL_234;
                }

                if (v145 != &v146)
                {
                  free(v145);
                }

                v102 = v143;
                if (v143)
                {
                  v103 = v144;
                  v104 = v143;
                  if (v144 != v143)
                  {
                    do
                    {
                      v103 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v103 - 1);
                    }

                    while (v103 != v102);
                    v104 = v143;
                  }

                  v144 = v102;
                  operator delete(v104);
                }

                v57 = v141;
                if (!v141)
                {
                  goto LABEL_232;
                }

                v105 = v142;
                v59 = v141;
                if (v142 == v141)
                {
                  goto LABEL_231;
                }

                do
                {
                  v107 = *--v105;
                  v106 = v107;
                  *v105 = 0;
                  if (v107)
                  {
                    operator delete[](v106);
                  }
                }

                while (v105 != v57);
                goto LABEL_230;
              }
            }

            else
            {
              v14 = v44;
              if (v27 >= v110)
              {
                if ((v111 & (v50 > v112)) == 1)
                {
                  v53 = "Dim length along axis in the last result tensor must be <= that in the first (N - 1) tensors. N: number of results";
                  goto LABEL_242;
                }
              }

              else
              {
                if ((v111 & (v50 != v112)) == 1)
                {
                  v53 = "Dim length along axis in the results (except the last one) must be same";
LABEL_242:
                  v118[0] = v53;
                  v119 = 259;
                  mlir::OpState::emitOpError(v113, v118, &__p);
                  v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__p);
                  mlir::InFlightDiagnostic::~InFlightDiagnostic(&__p);
                  v22 = v149;
                  if (v134 != 1)
                  {
                    goto LABEL_238;
                  }

                  goto LABEL_235;
                }

                v112 = v50;
                v111 = 1;
              }
            }
          }

          else
          {
            v28 = v47;
            if (v50 == 0x8000000000000000)
            {
              v50 = 0x8000000000000000;
LABEL_74:
              v15 = v46;
LABEL_75:
              v16 = v45;
              v14 = v44;
              goto LABEL_77;
            }

            v15 = v46;
            v16 = v45;
            v14 = v44;
            if (v50 != v147[v27])
            {
              v119 = 259;
              mlir::OpState::emitOpError(v113, v118, &__p);
              v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__p);
              if (__p)
              {
                mlir::InFlightDiagnostic::report(&__p);
              }

              v22 = v149;
              if (v146 != 1)
              {
                goto LABEL_234;
              }

              if (v145 != &v146)
              {
                free(v145);
              }

              v95 = v143;
              if (v143)
              {
                v96 = v144;
                v97 = v143;
                if (v144 != v143)
                {
                  do
                  {
                    v96 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v96 - 1);
                  }

                  while (v96 != v95);
                  v97 = v143;
                }

                v144 = v95;
                operator delete(v97);
              }

              v57 = v141;
              if (!v141)
              {
                goto LABEL_232;
              }

              v98 = v142;
              v59 = v141;
              if (v142 == v141)
              {
                goto LABEL_231;
              }

              do
              {
                v100 = *--v98;
                v99 = v100;
                *v98 = 0;
                if (v100)
                {
                  operator delete[](v99);
                }
              }

              while (v98 != v57);
              goto LABEL_230;
            }
          }
        }

        else
        {
          v50 = 0x8000000000000000;
        }

LABEL_77:
        if (v50 == 0x8000000000000000 || v26 == 0x8000000000000000)
        {
          v26 = 0x8000000000000000;
        }

        else
        {
          v26 += v50;
        }

        if (++v27 == v14)
        {
LABEL_94:
          v1 = v113;
          v22 = v149;
          if (v26 != 0x8000000000000000)
          {
            goto LABEL_131;
          }

          v24 = 1;
          if (v134 != 1)
          {
            goto LABEL_238;
          }

LABEL_235:
          v93 = v132;
          v94 = &v133;
LABEL_236:
          if (v93 != v94)
          {
            free(v93);
          }

          goto LABEL_238;
        }
      }
    }
  }

  v119 = 259;
  mlir::OpState::emitOpError(v1, v118, &__p);
  v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__p);
  if (__p)
  {
    mlir::InFlightDiagnostic::report(&__p);
  }

  if (v146 == 1)
  {
    if (v145 != &v146)
    {
      free(v145);
    }

    v68 = v143;
    if (v143)
    {
      v69 = v144;
      v70 = v143;
      if (v144 != v143)
      {
        do
        {
          v69 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v69 - 1);
        }

        while (v69 != v68);
        v70 = v143;
      }

      v144 = v68;
      operator delete(v70);
    }

    v71 = v141;
    if (v141)
    {
      v72 = v142;
      v73 = v141;
      if (v142 != v141)
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
        v73 = v141;
      }

      v142 = v71;
      operator delete(v73);
    }

    v93 = v137;
    v94 = v140;
    goto LABEL_236;
  }

LABEL_238:
  if (v147 != v22)
  {
    free(v147);
  }

  return v24;
}

uint64_t mlir::mps::anonymous namespace::inferSplitSizes(uint64_t a1, int64_t a2, uint64_t a3)
{
  v29[6] = *MEMORY[0x1E69E9840];
  v6 = (a1 + a2 - 1) / a2;
  v7 = a1 / v6;
  v8 = a1 / v6;
  __src = v29;
  v28 = 6;
  if ((a1 / v6) >= 7)
  {
    v27 = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v29, v8, 8);
    v9 = __src;
    v10 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v11 = v7 & 3;
    v12 = vdupq_n_s64(v6);
    v13 = (__src + 16);
    v14 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v13[-1] = v12;
      *v13 = v12;
      v13 += 2;
      v14 -= 4;
    }

    while (v14);
    if (v7 != (v7 & 0xFFFFFFFFFFFFFFFCLL))
    {
      do
      {
        v9[v10++] = v6;
        --v11;
      }

      while (v11);
    }

    goto LABEL_24;
  }

  v9 = v29;
  if (!v8)
  {
    goto LABEL_24;
  }

  v15 = vdupq_n_s64(v7 - 1);
  v16 = v8 + 1;
  v17 = vmovn_s64(vcgeq_u64(v15, xmmword_1E09700F0));
  if (v17.i8[0])
  {
    v29[0] = (a1 + a2 - 1) / a2;
    v18 = v16 & 0xE;
    if ((v17.i8[4] & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_13:
    v29[1] = (a1 + a2 - 1) / a2;
    v9 = v29;
    if (v18 == 2)
    {
      goto LABEL_24;
    }

    goto LABEL_14;
  }

  v18 = v16 & 0xE;
  if (v17.i8[4])
  {
    goto LABEL_13;
  }

LABEL_10:
  v9 = v29;
  if (v18 == 2)
  {
    goto LABEL_24;
  }

LABEL_14:
  v19 = vmovn_s64(vcgtq_u64(v15, xmmword_1E0970220));
  if (v19.i8[0])
  {
    v29[2] = (a1 + a2 - 1) / a2;
    if ((v19.i8[4] & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v19.i8[4] & 1) == 0)
  {
LABEL_16:
    v9 = v29;
    if (v18 == 4)
    {
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  v29[3] = (a1 + a2 - 1) / a2;
  v9 = v29;
  if (v18 == 4)
  {
    goto LABEL_24;
  }

LABEL_20:
  v20 = vmovn_s64(vcgtq_u64(v15, xmmword_1E0970230));
  if (v20.i8[0])
  {
    v29[4] = (a1 + a2 - 1) / a2;
  }

  v9 = v29;
  if (v20.i8[4])
  {
    v29[5] = (a1 + a2 - 1) / a2;
    v9 = v29;
  }

LABEL_24:
  v27 = v8;
  v21 = a1 - v7 * v6;
  if (v21)
  {
    if (v28 <= v8)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v29, v8 + 1, 8);
      LODWORD(v8) = v27;
      v9 = __src;
    }

    v9[v8] = v21;
    LODWORD(v8) = ++v27;
  }

  if (v8 == a2)
  {
    if (&__src == a3)
    {
      goto LABEL_44;
    }

    v22 = *(a3 + 8);
    if (v22 >= v8)
    {
      if (v8)
      {
        memmove(*a3, __src, 8 * a2);
      }

      goto LABEL_43;
    }

    if (*(a3 + 12) >= v8)
    {
      if (v22)
      {
        memmove(*a3, __src, 8 * v22);
        goto LABEL_41;
      }
    }

    else
    {
      *(a3 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, a2, 8);
    }

    v22 = 0;
LABEL_41:
    if (v27 != v22)
    {
      memcpy((*a3 + 8 * v22), __src + 8 * v22, 8 * (v27 - v22));
    }

LABEL_43:
    *(a3 + 8) = v8;
LABEL_44:
    v23 = 1;
    v24 = __src;
    if (__src == v29)
    {
      return v23;
    }

    goto LABEL_34;
  }

  v23 = 0;
  v24 = __src;
  if (__src != v29)
  {
LABEL_34:
    free(v24);
  }

  return v23;
}

const char *llvm::formatv<long long &,unsigned int &>@<X0>(const char *__s@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = __s;
  if (__s)
  {
    __s = strlen(__s);
  }

  *a4 = v6;
  *(a4 + 8) = __s;
  *(a4 + 72) = a4 + 40;
  *(a4 + 16) = a4 + 72;
  *(a4 + 24) = 2;
  *(a4 + 32) = 1;
  *(a4 + 40) = &unk_1F5B17218;
  *(a4 + 48) = a2;
  *(a4 + 56) = &unk_1F5B01980;
  *(a4 + 64) = a3;
  *(a4 + 80) = a4 + 56;
  return __s;
}

uint64_t std::optional<llvm::SmallVector<long long,6u>>::operator=[abi:nn200100]<llvm::SmallVector<long long,6u>&,void>(uint64_t result, uint64_t a2)
{
  if (*(result + 64) != 1)
  {
    v7 = (result + 16);
    *result = result + 16;
    *(result + 8) = 0x600000000;
    if (result == a2)
    {
      goto LABEL_17;
    }

    v8 = *(a2 + 8);
    if (!v8)
    {
      goto LABEL_17;
    }

    if (v8 < 7)
    {
      v9 = result;
      v11 = *(a2 + 8);
    }

    else
    {
      v9 = result;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(result, result + 16, v8, 8);
      v11 = *(v10 + 8);
      if (!v11)
      {
LABEL_16:
        result = v9;
        *(v9 + 8) = v8;
LABEL_17:
        *(result + 64) = 1;
        return result;
      }

      a2 = v10;
      v7 = *v9;
    }

    memcpy(v7, *a2, 8 * v11);
    goto LABEL_16;
  }

  if (result != a2)
  {
    v2 = *(a2 + 8);
    v3 = *(result + 8);
    if (v3 >= v2)
    {
      if (v2)
      {
        v12 = result;
        memmove(*result, *a2, 8 * v2);
        result = v12;
        *(v12 + 8) = v2;
        return result;
      }

      goto LABEL_21;
    }

    if (*(result + 12) < v2)
    {
      *(result + 8) = 0;
      v4 = a2;
      v5 = result;
      llvm::SmallVectorBase<unsigned int>::grow_pod(result, result + 16, v2, 8);
      a2 = v4;
      result = v5;
      v3 = 0;
      v6 = *(v4 + 8);
      if (*(v4 + 8))
      {
        goto LABEL_23;
      }

LABEL_21:
      *(result + 8) = v2;
      return result;
    }

    if (v3)
    {
      v13 = result;
      v14 = a2;
      memmove(*result, *a2, 8 * v3);
      a2 = v14;
      result = v13;
      v6 = *(v14 + 8) - v3;
      if (!v6)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v3 = 0;
      v6 = *(a2 + 8);
      if (!*(a2 + 8))
      {
        goto LABEL_21;
      }
    }

LABEL_23:
    v15 = 8 * v3;
    v16 = result;
    memcpy((*result + v15), (*a2 + v15), 8 * v6);
    result = v16;
    *(v16 + 8) = v2;
  }

  return result;
}

uint64_t mlir::mps::SingleGateRNNOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v43 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    v16 = *a7;
    v42 = a7[1];
  }

  else
  {
    v16 = 0uLL;
    v42 = 0u;
  }

  v33 = a6;
  v34[0] = 0;
  v35 = 0;
  v36 = v16;
  v37 = v42;
  v38 = a9;
  v39 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v33);
    if (v35 == 1)
    {
      v35 = 0;
    }

    mlir::OperationName::OperationName(v34, "mps.singlegate_rnn", 18, Context);
    v35 = 1;
  }

  v40 = a4;
  v41 = a5;
  v18.var0.var0 = mlir::UnknownLoc::get(this, a2);
  if (!mlir::mps::SingleGateRNNOpAdaptor::verify(&v33, v18))
  {
    v22 = mlir::Float32Type::get(this, v19);
    v23 = mlir::UnrankedTensorType::get(v22);
    v24 = *(a11 + 8);
    v25 = (a11 + 8);
    if (v24 < *(a11 + 12))
    {
LABEL_14:
      v26 = *a11;
LABEL_22:
      v26[v24] = v23;
      ++*v25;
      return 1;
    }

LABEL_18:
    v29 = v23;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v24 + 1, 8);
    v23 = v29;
    LODWORD(v24) = *(a11 + 8);
    goto LABEL_14;
  }

  *&v42 = a4;
  *(&v42 + 1) = a5;
  if (a5)
  {
    v20 = *(mlir::ValueRange::dereference_iterator(&v42, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v21 = *(a11 + 8);
    if (v21 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v21 + 1, 8);
      LODWORD(v21) = *(a11 + 8);
    }

    *(*a11 + 8 * v21) = v20;
    ++*(a11 + 8);
  }

  else
  {
    v27.var0.var0 = a3;
    if (!mlir::emitOptionalError<char const(&)[66]>(a2, v27, "invalid number of operands"))
    {
      v30 = mlir::Float32Type::get(this, v28);
      v23 = mlir::UnrankedTensorType::get(v30);
      v24 = *(a11 + 8);
      v25 = (a11 + 8);
      if (v24 >= *(a11 + 12))
      {
        v32 = v23;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v24 + 1, 8);
        v23 = v32;
        LODWORD(v24) = *(a11 + 8);
      }

      v26 = *a11;
      goto LABEL_22;
    }
  }

  if (*(&v36 + 1))
  {
    v26 = *a11;
    v23 = **a11;
    v25 = (a11 + 8);
    v24 = *(a11 + 8);
    if (v24 < *(a11 + 12))
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  return 1;
}

BOOL mlir::mps::SingleGateRNNOpAdaptor::verify(mlir::mps::SingleGateRNNOpAdaptor *this, Location a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(this + 3))
  {
    return 1;
  }

  v12 = "'mps.singlegate_rnn' op requires attribute 'activation'";
  v13 = 259;
  mlir::emitError(a2.var0.var0, &v12, v14);
  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v14);
  if (v14[0])
  {
    mlir::InFlightDiagnostic::report(v14);
  }

  if (v22 == 1)
  {
    if (v21 != &v22)
    {
      free(v21);
    }

    v3 = __p;
    if (__p)
    {
      v4 = v20;
      v5 = __p;
      if (v20 != __p)
      {
        do
        {
          v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
        }

        while (v4 != v3);
        v5 = __p;
      }

      v20 = v3;
      operator delete(v5);
    }

    v6 = v17;
    if (v17)
    {
      v7 = v18;
      v8 = v17;
      if (v18 != v17)
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
        v8 = v17;
      }

      v18 = v6;
      operator delete(v8);
    }

    if (v15 != &v16)
    {
      free(v15);
    }
  }

  return v2;
}

BOOL mlir::mps::anonymous namespace::verifySingleGateRNN(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v125 = *MEMORY[0x1E69E9840];
  v109[0] = a2;
  v109[1] = a3;
  v108[0] = a4;
  v108[1] = a5;
  v107[0] = a6;
  v107[1] = a7;
  v106[0] = a11;
  v106[1] = a12;
  if (!a2)
  {
    return 1;
  }

  v12 = *(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || a4 == 0;
  if (v12 || *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    return 1;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v109);
  v16 = v15;
  v17 = mlir::CallableOpInterface::getArgAttrsAttr(v108);
  if (v16 == 3)
  {
    v103 = v18;
    if (v18 < 2)
    {
      v105 = 259;
      mlir::Operation::emitOpError(a1, v104, &v113);
      v19 = &v103;
LABEL_10:
      mlir::InFlightDiagnostic::operator<<<unsigned long>(&v113, v19);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v20, ", should be 2 or greater.");
      goto LABEL_11;
    }

    v34 = 0;
    v35 = ArgAttrsAttr[2];
    do
    {
      if (v34 < v18 - 2)
      {
        v36 = 1;
      }

      else
      {
        v36 = ArgAttrsAttr[2];
      }

      v37 = *(v17 + 8 * v34);
      if (v36 != 0x8000000000000000 && v37 != 0x8000000000000000 && v37 != v36)
      {
        v105 = 259;
        mlir::Operation::emitOpError(a1, v104, &v113);
        if (v113)
        {
          LODWORD(v110) = 3;
          v111 = "square matrix of size [";
          v112 = 23;
          v42 = &v110;
          v43 = v115;
          if (v116 >= v117)
          {
            if (v115 <= &v110 && v115 + 24 * v116 > &v110)
            {
              v96 = &v110 - v115;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v118, v116 + 1, 24);
              v43 = v115;
              v42 = (v115 + v96);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v118, v116 + 1, 24);
              v42 = &v110;
              v43 = v115;
            }
          }

          v44 = &v43[24 * v116];
          v45 = *v42;
          *(v44 + 2) = v42[2];
          *v44 = v45;
          v46 = ++v116;
          if (v113)
          {
            LODWORD(v110) = 2;
            v111 = v35;
            v47 = &v110;
            v48 = v115;
            if (v46 >= v117)
            {
              if (v115 <= &v110 && v115 + 24 * v46 > &v110)
              {
                v97 = &v110 - v115;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v118, v46 + 1, 24);
                v48 = v115;
                v47 = (v115 + v97);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v118, v46 + 1, 24);
                v47 = &v110;
                v48 = v115;
              }
            }

            v49 = &v48[24 * v116];
            v50 = *v47;
            *(v49 + 2) = v47[2];
            *v49 = v50;
            v51 = ++v116;
            if (v113)
            {
              LODWORD(v110) = 3;
              v111 = ", ";
              v112 = 2;
              v52 = &v110;
              v53 = v115;
              if (v51 >= v117)
              {
                if (v115 <= &v110 && v115 + 24 * v51 > &v110)
                {
                  v98 = &v110 - v115;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v118, v51 + 1, 24);
                  v53 = v115;
                  v52 = (v115 + v98);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v118, v51 + 1, 24);
                  v52 = &v110;
                  v53 = v115;
                }
              }

              v54 = &v53[24 * v116];
              v55 = *v52;
              *(v54 + 2) = v52[2];
              *v54 = v55;
              v56 = ++v116;
              if (v113)
              {
                LODWORD(v110) = 2;
                v111 = v35;
                v57 = &v110;
                v58 = v115;
                if (v56 >= v117)
                {
                  if (v115 <= &v110 && v115 + 24 * v56 > &v110)
                  {
                    v99 = &v110 - v115;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v118, v56 + 1, 24);
                    v58 = v115;
                    v57 = (v115 + v99);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v118, v56 + 1, 24);
                    v57 = &v110;
                    v58 = v115;
                  }
                }

                v59 = &v58[24 * v116];
                v60 = *v57;
                *(v59 + 2) = v57[2];
                *v59 = v60;
                v61 = ++v116;
                if (v113)
                {
                  LODWORD(v110) = 3;
                  v111 = "].";
                  v112 = 2;
                  v62 = &v110;
                  v63 = v115;
                  if (v61 >= v117)
                  {
                    if (v115 <= &v110 && v115 + 24 * v61 > &v110)
                    {
                      v100 = &v110 - v115;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v118, v61 + 1, 24);
                      v63 = v115;
                      v62 = (v115 + v100);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v118, v61 + 1, 24);
                      v62 = &v110;
                      v63 = v115;
                    }
                  }

                  v64 = &v63[24 * v116];
                  v65 = *v62;
                  *(v64 + 2) = v62[2];
                  *v64 = v65;
                  ++v116;
                }
              }
            }
          }
        }

        result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v113);
        v66 = result;
        if (v113)
        {
          mlir::InFlightDiagnostic::report(&v113);
          result = v66;
        }

        if (v124)
        {
          if (v123 != &v124)
          {
            free(v123);
            result = v66;
          }

          v67 = __p;
          if (__p)
          {
            v68 = v122;
            v69 = __p;
            if (v122 != __p)
            {
              do
              {
                v68 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v68 - 1);
              }

              while (v68 != v67);
              v69 = __p;
            }

            v122 = v67;
            operator delete(v69);
            result = v66;
          }

          v70 = v119;
          if (v119)
          {
            v71 = v120;
            v72 = v119;
            if (v120 != v119)
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
              v72 = v119;
            }

            v120 = v70;
            operator delete(v72);
            result = v66;
          }

          if (v115 != v118)
          {
            free(v115);
            return v66;
          }
        }

        return result;
      }

      ++v34;
    }

    while (v18 != v34);
    if (v107[0] && *(*v107[0] + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v40 = mlir::CallableOpInterface::getArgAttrsAttr(v107);
      v110 = v41;
      if (v41 <= 1)
      {
        v105 = 259;
        mlir::Operation::emitOpError(a1, v104, &v113);
        v19 = &v110;
        goto LABEL_10;
      }

      v75 = 0;
      while (1)
      {
        v76 = v75 >= v41 - 2 ? ArgAttrsAttr[v75 + 3 - v41] : 1;
        v101 = v76;
        if (v76 != 0x8000000000000000)
        {
          v77 = *(v40 + 8 * v75);
          if (v77 != 0x8000000000000000 && v77 != v76)
          {
            break;
          }
        }

        if (v41 == ++v75)
        {
          goto LABEL_81;
        }
      }

      v102 = v75;
      v105 = 259;
      v79 = v40;
      mlir::Operation::emitOpError(a1, v104, &v113);
      mlir::InFlightDiagnostic::operator<<<unsigned long>(&v113, &v102);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v80, "] = ");
      mlir::InFlightDiagnostic::operator<<<long long &>(v81, (v79 + 8 * v102));
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v82, ", expected ");
      mlir::InFlightDiagnostic::operator<<<long long &>(v83, &v101);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v84, ".");
LABEL_11:
      v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v113);
      return v22;
    }

LABEL_81:
    if (a9)
    {
      if (*(*a9 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        v85 = v109[0];
        ElementTypeOrSelf = mlir::getElementTypeOrSelf(v109[0]);
        if (!mlir::OpTrait::util::getBroadcastedType(v85, a9, ElementTypeOrSelf))
        {
          v93 = a1;
          v105 = 259;
          goto LABEL_100;
        }
      }
    }

    if (v106[0] && *(*v106[0] + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v87 = mlir::CallableOpInterface::getArgAttrsAttr(v106);
      if (v88 == 3 && (*v87 == 0x8000000000000000 || *ArgAttrsAttr == 0x8000000000000000 || *ArgAttrsAttr == *v87))
      {
        v89 = v87[1];
        if (v89 == 0x8000000000000000 || (v90 = ArgAttrsAttr[1], v90 == 0x8000000000000000) || v90 == v89)
        {
          v91 = v87[2];
          result = 1;
          if (v91 == 0x8000000000000000)
          {
            return result;
          }

          v92 = ArgAttrsAttr[2];
          if (v92 == 0x8000000000000000 || v92 == v91)
          {
            return result;
          }
        }
      }

      v105 = 259;
      v93 = a1;
LABEL_100:
      mlir::Operation::emitOpError(v93, v104, &v113);
      v21 = &v113;
      goto LABEL_11;
    }

    return 1;
  }

  v104[0] = "Invalid input tensor rank: ";
  v105 = 259;
  mlir::Operation::emitOpError(a1, v104, &v113);
  if (v113)
  {
    LODWORD(v110) = 5;
    v111 = v16;
    v23 = &v110;
    v24 = v115;
    if (v116 >= v117)
    {
      if (v115 <= &v110 && v115 + 24 * v116 > &v110)
      {
        v94 = &v110 - v115;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v118, v116 + 1, 24);
        v24 = v115;
        v23 = (v115 + v94);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v118, v116 + 1, 24);
        v23 = &v110;
        v24 = v115;
      }
    }

    v25 = &v24[24 * v116];
    v26 = *v23;
    *(v25 + 2) = v23[2];
    *v25 = v26;
    v27 = ++v116;
    if (v113)
    {
      LODWORD(v110) = 3;
      v111 = ", should be 3.";
      v112 = 14;
      v28 = &v110;
      v29 = v115;
      if (v27 >= v117)
      {
        if (v115 <= &v110 && v115 + 24 * v27 > &v110)
        {
          v95 = &v110 - v115;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v118, v27 + 1, 24);
          v29 = v115;
          v28 = (v115 + v95);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v115, v118, v27 + 1, 24);
          v28 = &v110;
          v29 = v115;
        }
      }

      v30 = &v29[24 * v116];
      v31 = *v28;
      *(v30 + 2) = v28[2];
      *v30 = v31;
      ++v116;
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v113);
  if (v113)
  {
    v33 = result;
    mlir::InFlightDiagnostic::report(&v113);
    result = v33;
  }

  if (v124 == 1)
  {
    v22 = result;
    mlir::Diagnostic::~Diagnostic(&v114);
    return v22;
  }

  return result;
}

uint64_t mlir::mps::SingleGateRNNGradientOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v48 = *MEMORY[0x1E69E9840];
  v45[0] = a4;
  v45[1] = a5;
  if (a7)
  {
    v16 = *a7;
    v46 = a7[1];
    v47 = *(a7 + 8);
  }

  else
  {
    v47 = 0;
    v16 = 0uLL;
    v46 = 0u;
  }

  v35 = a6;
  v36[0] = 0;
  v37 = 0;
  v38 = v16;
  v39 = v46;
  v40 = v47;
  v41 = a9;
  v42 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v35);
    if (v37 == 1)
    {
      v37 = 0;
    }

    mlir::OperationName::OperationName(v36, "mps.singlegate_rnn_gradient", 27, Context);
    v37 = 1;
  }

  v43 = a4;
  v44 = a5;
  v18.var0.var0 = mlir::UnknownLoc::get(this, a2);
  if (!mlir::mps::SingleGateRNNGradientOpAdaptor::verify(&v35, v18))
  {
    goto LABEL_23;
  }

  *&v46 = a4;
  *(&v46 + 1) = a5;
  if (a5)
  {
    v20 = *(mlir::ValueRange::dereference_iterator(&v46, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v21 = *(a11 + 8);
    if (v21 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v21 + 1, 8);
      LODWORD(v21) = *(a11 + 8);
    }

    *(*a11 + 8 * v21) = v20;
    ++*(a11 + 8);
    *&v46 = a4;
    *(&v46 + 1) = a5;
    if (a5 != 1)
    {
      v22 = *(mlir::ValueRange::dereference_iterator(&v46, 1) + 8) & 0xFFFFFFFFFFFFFFF8;
      v23 = *(a11 + 8);
      if (v23 >= *(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v23 + 1, 8);
        LODWORD(v23) = *(a11 + 8);
      }

      *(*a11 + 8 * v23) = v22;
      ++*(a11 + 8);
      goto LABEL_18;
    }
  }

  else
  {
    v24.var0.var0 = a3;
    if (!mlir::emitOptionalError<char const(&)[66]>(a2, v24, "invalid number of operands"))
    {
      goto LABEL_23;
    }
  }

  v25.var0.var0 = a3;
  if (!mlir::emitOptionalError<char const(&)[66]>(a2, v25, "invalid number of operands"))
  {
    goto LABEL_23;
  }

LABEL_18:
  if (*(&v38 + 1))
  {
    *&v46 = 0;
    v26 = mlir::ValueRange::dereference_iterator(v45, 0);
    v27.var0.var0 = a3;
    {
      v28 = v46;
      v29 = *(a11 + 8);
      if (v29 >= *(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v29 + 1, 8);
        LODWORD(v29) = *(a11 + 8);
      }

      *(*a11 + 8 * v29) = v28;
LABEL_26:
      ++*(a11 + 8);
      return 1;
    }

LABEL_23:
    v30 = mlir::Float32Type::get(this, v19);
    v31 = mlir::UnrankedTensorType::get(v30);
    v32 = *(a11 + 8);
    if (v32 >= *(a11 + 12))
    {
      v34 = v31;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v32 + 1, 8);
      v31 = v34;
      LODWORD(v32) = *(a11 + 8);
    }

    *(*a11 + 8 * v32) = v31;
    goto LABEL_26;
  }

  return 1;
}

BOOL mlir::mps::SingleGateRNNGradientOpAdaptor::verify(mlir::mps::SingleGateRNNGradientOpAdaptor *this, Location a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(this + 3))
  {
    return 1;
  }

  v12 = "'mps.singlegate_rnn_gradient' op requires attribute 'activation'";
  v13 = 259;
  mlir::emitError(a2.var0.var0, &v12, v14);
  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v14);
  if (v14[0])
  {
    mlir::InFlightDiagnostic::report(v14);
  }

  if (v22 == 1)
  {
    if (v21 != &v22)
    {
      free(v21);
    }

    v3 = __p;
    if (__p)
    {
      v4 = v20;
      v5 = __p;
      if (v20 != __p)
      {
        do
        {
          v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
        }

        while (v4 != v3);
        v5 = __p;
      }

      v20 = v3;
      operator delete(v5);
    }

    v6 = v17;
    if (v17)
    {
      v7 = v18;
      v8 = v17;
      if (v18 != v17)
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
        v8 = v17;
      }

      v18 = v6;
      operator delete(v8);
    }

    if (v15 != &v16)
    {
      free(v15);
    }
  }

  return v2;
}

BOOL mlir::mps::anonymous namespace::inferRNNHiddenStateType(mlir *a1, Location a2, uint64_t a3, uint64_t *a4)
{
  v22[4] = *MEMORY[0x1E69E9840];
  v4 = *(*a3 + 136);
  if (v4 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v6 = a3;
  }

  else
  {
    v6 = 0;
  }

  v19 = v6;
  if (v6)
  {
    if (*(*v6 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      *a4 = v6;
    }

    else
    {
      v20 = v22;
      v21 = 0x400000000;
      Value = mlir::ArrayAttr::getValue(&v19);
      v9 = v21;
      v11 = v10 - 1;
      if (v10 != 1)
      {
        v16 = (Value + 8);
        do
        {
          v18 = *v16++;
          v17 = v18;
          if (v9 >= HIDWORD(v21))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v20, v22, v9 + 1, 8);
            v9 = v21;
          }

          *(v20 + v9) = v17;
          v9 = v21 + 1;
          LODWORD(v21) = v21 + 1;
          --v11;
        }

        while (v11);
      }

      v12 = v20;
      v13 = v9;
      ElementType = mlir::TensorType::getElementType(&v19);
      *a4 = mlir::RankedTensorType::get(v12, v13, ElementType, 0);
      if (v20 != v22)
      {
        free(v20);
      }
    }

    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[66]>(a1, a2, "RNN non-tensor input type");
  }
}

BOOL mlir::mps::anonymous namespace::verifyLSTM(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v185 = *MEMORY[0x1E69E9840];
  v169[0] = a3;
  v169[1] = a4;
  v168[0] = a5;
  v168[1] = a6;
  v167[0] = a7;
  v167[1] = a8;
  v166[0] = a9;
  v166[1] = a10;
  v165[0] = a13;
  v165[1] = a14;
  v164[0] = a15;
  v164[1] = a16;
  v163[0] = a17;
  v163[1] = a18;
  v162[0] = a19;
  v162[1] = a20;
  if (!a3)
  {
    return 1;
  }

  result = 1;
  if (*(*a3 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || !a5 || *(*a5 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    return result;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v169);
  v25 = v24;
  v26 = mlir::CallableOpInterface::getArgAttrsAttr(v168);
  if (v25 != 3)
  {
    v160[0] = "Invalid input tensor rank: ";
    v161 = 259;
    mlir::Operation::emitOpError(a1, v160, &v173);
    if (v173)
    {
      LODWORD(v170) = 5;
      v171 = v25;
      v32 = &v170;
      v33 = v176;
      if (v177 >= HIDWORD(v177))
      {
        if (v176 <= &v170 && v176 + 24 * v177 > &v170)
        {
          v150 = &v170 - v176;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v176, v178, v177 + 1, 24);
          v33 = v176;
          v32 = (v176 + v150);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v176, v178, v177 + 1, 24);
          v32 = &v170;
          v33 = v176;
        }
      }

      v34 = &v33[24 * v177];
      v35 = *v32;
      *(v34 + 2) = v32[2];
      *v34 = v35;
      v36 = (v177 + 1);
      LODWORD(v177) = v177 + 1;
      if (v173)
      {
        LODWORD(v170) = 3;
        v171 = ", should be 3.";
        v172 = 14;
        v37 = &v170;
        v38 = v176;
        if (v36 >= HIDWORD(v177))
        {
          if (v176 <= &v170 && v176 + 24 * v36 > &v170)
          {
            v151 = &v170 - v176;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v176, v178, v36 + 1, 24);
            v38 = v176;
            v37 = (v176 + v151);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v176, v178, v36 + 1, 24);
            v37 = &v170;
            v38 = v176;
          }
        }

        v39 = &v38[24 * v177];
        v40 = *v37;
        *(v39 + 2) = v37[2];
        *v39 = v40;
        LODWORD(v177) = v177 + 1;
      }
    }

    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v173);
    if (v173)
    {
      v41 = result;
      mlir::InFlightDiagnostic::report(&v173);
      result = v41;
    }

    if (v184 == 1)
    {
      v42 = result;
      mlir::Diagnostic::~Diagnostic(&v174);
      return v42;
    }

    return result;
  }

  v159 = v27;
  if (v27 <= 1)
  {
    v161 = 259;
    mlir::Operation::emitOpError(a1, v160, &v173);
    v28 = &v159;
LABEL_8:
    mlir::InFlightDiagnostic::operator<<<unsigned long>(&v173, v28);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v29, ", should be 2 or greater.");
    goto LABEL_9;
  }

  v43 = *(ArgAttrsAttr + 16);
  v44 = v43;
  v45 = a2;
  if ((a2 & 1) == 0)
  {
    v44 = 0x8000000000000000;
    if (v43 != 0x8000000000000000)
    {
      v46 = v43 + 3;
      if (v43 >= 0)
      {
        v46 = *(ArgAttrsAttr + 16);
      }

      if ((v46 & 0xFFFFFFFFFFFFFFFCLL) != v43)
      {
        v160[0] = "Invalid input last dimension size: ";
        v161 = 259;
        mlir::Operation::emitOpError(a1, v160, &v173);
        mlir::InFlightDiagnostic::operator<<<long long &>(&v173, (ArgAttrsAttr + 16));
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v91, ", should be divisible by four.");
        goto LABEL_9;
      }

      v44 = v46 >> 2;
    }
  }

  v47 = 0;
  v48 = v27 - 2;
  do
  {
    if (v47 < v48)
    {
      v49 = 1;
    }

    else
    {
      v49 = v44;
    }

    v50 = 4 * v49;
    if (v49 == 0x8000000000000000)
    {
      v50 = 0x8000000000000000;
    }

    if (v27 == 2)
    {
      v49 = v50;
    }

    v51 = *(v26 + 8 * v47);
    if (v49 != 0x8000000000000000 && v51 != 0x8000000000000000 && v51 != v49)
    {
      v161 = 259;
      mlir::Operation::emitOpError(a1, v160, &v173);
      if (v173)
      {
        LODWORD(v170) = 3;
        v171 = "matrix of size [";
        v172 = 16;
        v58 = &v170;
        v59 = v176;
        if (v177 >= HIDWORD(v177))
        {
          if (v176 <= &v170 && v176 + 24 * v177 > &v170)
          {
            v152 = &v170 - v176;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v176, v178, v177 + 1, 24);
            v59 = v176;
            v58 = (v176 + v152);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v176, v178, v177 + 1, 24);
            v58 = &v170;
            v59 = v176;
          }
        }

        v60 = &v59[24 * v177];
        v61 = *v58;
        *(v60 + 2) = v58[2];
        *v60 = v61;
        v62 = (v177 + 1);
        LODWORD(v177) = v177 + 1;
        if (v173)
        {
          LODWORD(v170) = 2;
          v171 = (4 * v44);
          v63 = &v170;
          v64 = v176;
          if (v62 >= HIDWORD(v177))
          {
            if (v176 <= &v170 && v176 + 24 * v62 > &v170)
            {
              v153 = &v170 - v176;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v176, v178, v62 + 1, 24);
              v64 = v176;
              v63 = (v176 + v153);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v176, v178, v62 + 1, 24);
              v63 = &v170;
              v64 = v176;
            }
          }

          v65 = &v64[24 * v177];
          v66 = *v63;
          *(v65 + 2) = v63[2];
          *v65 = v66;
          v67 = (v177 + 1);
          LODWORD(v177) = v177 + 1;
          if (v173)
          {
            LODWORD(v170) = 3;
            v171 = ", ";
            v172 = 2;
            v68 = &v170;
            v69 = v176;
            if (v67 >= HIDWORD(v177))
            {
              if (v176 <= &v170 && v176 + 24 * v67 > &v170)
              {
                v154 = &v170 - v176;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v176, v178, v67 + 1, 24);
                v69 = v176;
                v68 = (v176 + v154);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v176, v178, v67 + 1, 24);
                v68 = &v170;
                v69 = v176;
              }
            }

            v70 = &v69[24 * v177];
            v71 = *v68;
            *(v70 + 2) = v68[2];
            *v70 = v71;
            v72 = (v177 + 1);
            LODWORD(v177) = v177 + 1;
            if (v173)
            {
              LODWORD(v170) = 2;
              v171 = v44;
              v73 = &v170;
              v74 = v176;
              if (v72 >= HIDWORD(v177))
              {
                if (v176 <= &v170 && v176 + 24 * v72 > &v170)
                {
                  v155 = &v170 - v176;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v176, v178, v72 + 1, 24);
                  v74 = v176;
                  v73 = (v176 + v155);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v176, v178, v72 + 1, 24);
                  v73 = &v170;
                  v74 = v176;
                }
              }

              v75 = &v74[24 * v177];
              v76 = *v73;
              *(v75 + 2) = v73[2];
              *v75 = v76;
              v77 = (v177 + 1);
              LODWORD(v177) = v177 + 1;
              if (v173)
              {
                LODWORD(v170) = 3;
                v171 = "].";
                v172 = 2;
                v78 = &v170;
                v79 = v176;
                if (v77 >= HIDWORD(v177))
                {
                  if (v176 <= &v170 && v176 + 24 * v77 > &v170)
                  {
                    v156 = &v170 - v176;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v176, v178, v77 + 1, 24);
                    v79 = v176;
                    v78 = (v176 + v156);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v176, v178, v77 + 1, 24);
                    v78 = &v170;
                    v79 = v176;
                  }
                }

                v80 = &v79[24 * v177];
                v81 = *v78;
                *(v80 + 2) = v78[2];
                *v80 = v81;
                LODWORD(v177) = v177 + 1;
              }
            }
          }
        }
      }

      result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v173);
      v82 = result;
      if (v173)
      {
        mlir::InFlightDiagnostic::report(&v173);
        result = v82;
      }

      if (v184)
      {
        if (v183 != &v184)
        {
          free(v183);
          result = v82;
        }

        v83 = __p;
        if (__p)
        {
          v84 = v182;
          v85 = __p;
          if (v182 != __p)
          {
            do
            {
              v84 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v84 - 1);
            }

            while (v84 != v83);
            v85 = __p;
          }

          v182 = v83;
          operator delete(v85);
          result = v82;
        }

        v86 = v179;
        if (v179)
        {
          v87 = v180;
          v88 = v179;
          if (v180 != v179)
          {
            do
            {
              v90 = *--v87;
              v89 = v90;
              *v87 = 0;
              if (v90)
              {
                operator delete[](v89);
              }
            }

            while (v87 != v86);
            v88 = v179;
          }

          v180 = v86;
          operator delete(v88);
          result = v82;
        }

        if (v176 != v178)
        {
          free(v176);
          return v82;
        }
      }

      return result;
    }

    ++v47;
    --v27;
  }

  while (v27);
  if (v167[0] && *(*v167[0] + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v54 = mlir::CallableOpInterface::getArgAttrsAttr(v167);
    v170 = v55;
    v56 = v55 - 1;
    if (v55 <= 1)
    {
LABEL_100:
      v160[0] = v57;
      v161 = 259;
      mlir::Operation::emitOpError(a1, v160, &v173);
      v28 = &v170;
      goto LABEL_8;
    }

    v92 = 0;
    v93 = a1;
    v45 = a2;
    do
    {
      if (v92 >= v55 - 2)
      {
        v94 = *(ArgAttrsAttr - 8 * v55 + 24 + 8 * v92);
        v157 = v94;
        if (v56 == v92 && (a2 & 1) == 0 && v94 != 0x8000000000000000)
        {
LABEL_86:
          v94 /= 4;
          v157 = v94;
        }
      }

      else
      {
        v157 = 1;
        v94 = 1;
        if (v56 == v92 && (a2 & 1) == 0)
        {
          goto LABEL_86;
        }
      }

      v95 = *(v54 + 8 * v92);
      if (v94 != 0x8000000000000000 && v95 != 0x8000000000000000 && v95 != v94)
      {
        v158 = v92;
        goto LABEL_176;
      }

      ++v92;
    }

    while (v55 != v92);
  }

  if (!v166[0] || *(*v166[0] + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
LABEL_119:
    if (a11 && *(*a11 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      if (v45)
      {
        v105 = v169[0];
        v106 = v169[0];
      }

      else
      {
        v173 = &v175;
        v174 = 0x400000000;
        v175 = *ArgAttrsAttr;
        LODWORD(v174) = 1;
        v176 = *(ArgAttrsAttr + 8);
        LODWORD(v174) = 2;
        v177 = *(ArgAttrsAttr + 16);
        LODWORD(v174) = 3;
        if (v177 != 0x8000000000000000)
        {
          v177 /= 4;
        }

        isSplat = mlir::ElementsAttr::isSplat(v169);
        v160[0] = mlir::RankedTensorType::get(&v175, 3, isSplat, 0);
        v106 = mlir::TensorType::operator mlir::ShapedType(v160);
        if (v173 != &v175)
        {
          free(v173);
        }

        v105 = v169[0];
      }

      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v105);
      if (!mlir::OpTrait::util::getBroadcastedType(v106, a11, ElementTypeOrSelf))
      {
        v161 = 259;
        v111 = a1;
        goto LABEL_175;
      }
    }

    if (v162[0] && *(*v162[0] + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v110 = mlir::CallableOpInterface::getArgAttrsAttr(v162);
      v111 = a1;
      if (v112 != 3 || *v110 != 0x8000000000000000 && *ArgAttrsAttr != 0x8000000000000000 && *ArgAttrsAttr != *v110)
      {
        goto LABEL_143;
      }

      v113 = v110[1];
      if (v113 != 0x8000000000000000)
      {
        v114 = *(ArgAttrsAttr + 8);
        if (v114 != 0x8000000000000000 && v114 != v113)
        {
          goto LABEL_143;
        }
      }

      v115 = *(ArgAttrsAttr + 16);
      if (v115 != 0x8000000000000000)
      {
        v115 *= 4;
      }

      v116 = v110[2];
      if (v116 != 0x8000000000000000 && v115 != 0x8000000000000000 && v115 != v116)
      {
LABEL_143:
LABEL_157:
        v160[0] = v117;
        v161 = 259;
LABEL_175:
        mlir::Operation::emitOpError(v111, v160, &v173);
        v30 = &v173;
        goto LABEL_9;
      }
    }

    if (v164[0] && *(*v164[0] + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      if ((v118 = mlir::CallableOpInterface::getArgAttrsAttr(v164), v111 = a1, v119 != 3) || *v118 != 0x8000000000000000 && *ArgAttrsAttr != 0x8000000000000000 && *ArgAttrsAttr != *v118 || (v120 = v118[1], v120 != 0x8000000000000000) && (v121 = *(ArgAttrsAttr + 8), v121 != 0x8000000000000000) && v121 != v120 || (v122 = v118[2], v122 != 0x8000000000000000) && (v123 = *(ArgAttrsAttr + 16), v123 != 0x8000000000000000) && v123 != v122)
      {
        goto LABEL_157;
      }
    }

    if (v165[0] && *(*v165[0] + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v124 = mlir::CallableOpInterface::getArgAttrsAttr(v165);
      if (v125 != 1)
      {
        v141 = v125;
        v161 = 259;
        mlir::Operation::emitOpError(a1, v160, &v173);
        v170 = v141;
        mlir::InFlightDiagnostic::operator<<<unsigned long>(&v173, &v170);
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v142, ", should be 1.");
        goto LABEL_9;
      }

      if (v44 == 0x8000000000000000)
      {
        v126 = 0x8000000000000000;
      }

      else
      {
        v126 = 4 * v44;
      }

      v170 = v126;
      if (v126 != 0x8000000000000000 && *v124 != 0x8000000000000000 && *v124 != v126)
      {
        v161 = 259;
        mlir::Operation::emitOpError(a1, v160, &v173);
        v127 = &v173;
        v128 = &v170;
        goto LABEL_178;
      }
    }

    if (v163[0] && *(*v163[0] + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v129 = mlir::CallableOpInterface::getArgAttrsAttr(v163);
      v170 = v130;
      if ((v130 & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        v131 = v129;
        v132 = 3 - v130;
        if (v130 == 2)
        {
          v134 = *(ArgAttrsAttr + 8 * v132);
          v157 = v134;
          v133 = *v129;
        }

        else
        {
          v133 = *v129;
          if (*v129 == 1)
          {
            v134 = 1;
          }

          else
          {
            v134 = *(ArgAttrsAttr + 8 * v132);
          }

          v157 = v134;
        }

        if (v134 == 0x8000000000000000 || v133 == 0x8000000000000000 || v133 == v134)
        {
          v145 = (ArgAttrsAttr - 8 * v130 + 32);
          v144 = 1;
          while (1)
          {
            v146 = v144 >= v130 - 2 ? *v145 : 1;
            v157 = v146;
            if (v146 != 0x8000000000000000)
            {
              v147 = v129[v144];
              if (v147 != 0x8000000000000000 && v147 != v146)
              {
                break;
              }
            }

            ++v144;
            ++v145;
            if (v130 == v144)
            {
              return 1;
            }
          }
        }

        else
        {
          v144 = 0;
        }

        v158 = v144;
        v161 = 259;
        mlir::Operation::emitOpError(a1, v160, &v173);
        mlir::InFlightDiagnostic::operator<<<unsigned long>(&v173, &v158);
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v149, "] = ");
        v138 = &v131[v158];
        goto LABEL_177;
      }

      v161 = 259;
      mlir::Operation::emitOpError(a1, v160, &v173);
      mlir::InFlightDiagnostic::operator<<<unsigned long>(&v173, &v170);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v143, ", should be 2 or 3.");
      goto LABEL_9;
    }

    return 1;
  }

  v54 = mlir::CallableOpInterface::getArgAttrsAttr(v166);
  v170 = v98;
  v99 = v98 - 1;
  if (v98 <= 1)
  {
    goto LABEL_100;
  }

  v100 = 0;
  v93 = a1;
  v45 = a2;
  while (1)
  {
    if (v100 >= v98 - 2)
    {
      v101 = *(ArgAttrsAttr - 8 * v98 + 24 + 8 * v100);
      v157 = v101;
      if (v99 != v100 || (a2 & 1) != 0 || v101 == 0x8000000000000000)
      {
        goto LABEL_110;
      }
    }

    else
    {
      v157 = 1;
      v101 = 1;
      if (v99 != v100 || (a2 & 1) != 0)
      {
        goto LABEL_110;
      }
    }

    v101 /= 4;
    v157 = v101;
LABEL_110:
    v102 = *(v54 + 8 * v100);
    v103 = v101 == 0x8000000000000000 || v102 == 0x8000000000000000;
    if (!v103 && v102 != v101)
    {
      break;
    }

    if (v98 == ++v100)
    {
      goto LABEL_119;
    }
  }

  v158 = v100;
LABEL_176:
  v160[0] = v107;
  v161 = 259;
  v135 = v54;
  mlir::Operation::emitOpError(v93, v160, &v173);
  mlir::InFlightDiagnostic::operator<<<unsigned long>(&v173, &v158);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v136, "] = ");
  v138 = (v135 + 8 * v158);
LABEL_177:
  mlir::InFlightDiagnostic::operator<<<long long &>(v137, v138);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v139, ", expected ");
  v128 = &v157;
LABEL_178:
  mlir::InFlightDiagnostic::operator<<<long long &>(v127, v128);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v140, ".");
LABEL_9:
  v31 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v30);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v173);
  return v31;
}

BOOL mlir::mps::LSTMOp::inferReturnTypes(mlir::Float32Type *a1, mlir::MLIRContext *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v60[2] = *MEMORY[0x1E69E9840];
  v60[0] = a4;
  v60[1] = a5;
  if (a7)
  {
    v15 = *a7;
    v16 = a7[1];
    v17 = a7[2];
    v18 = *(a7 + 6);
    *v47 = *(a7 + 56);
    *(&v47[1] + 4) = *(a7 + 68);
  }

  else
  {
    v18 = 0;
    v15 = 0uLL;
    memset(v47, 0, 28);
    v16 = 0uLL;
    v17 = 0uLL;
  }

  v48 = a6;
  v49[0] = 0;
  v50 = 0;
  v51 = v15;
  v52 = v16;
  v53 = v17;
  v54 = v18;
  v55[0] = *v47;
  *(v55 + 12) = *(&v47[1] + 4);
  v56 = a9;
  v57 = a10;
  if (a6)
  {
    v19 = a1;
    Context = mlir::Attribute::getContext(&v48);
    if (v50 == 1)
    {
      v50 = 0;
    }

    mlir::OperationName::OperationName(v49, "mps.lstm", 8, Context);
    v50 = 1;
    a1 = v19;
  }

  v58 = a4;
  v59 = a5;
  if (!a5)
  {
    v33 = mlir::Float32Type::get(a1, a2);
    v34 = mlir::UnrankedTensorType::get(v33);
    v35 = *(a11 + 8);
    if (v35 >= *(a11 + 12))
    {
      v45 = v34;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v35 + 1, 8);
      v34 = v45;
      LODWORD(v35) = *(a11 + 8);
    }

    *(*a11 + 8 * v35) = v34;
    goto LABEL_40;
  }

  mlir::UnknownLoc::get(a1, a2);
  v21 = *(mlir::ValueRange::dereference_iterator(v60, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (!v21 || ((v22 = *(*v21 + 136), v22 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id) ? (v23 = v22 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id) : (v23 = 1), !v23 ? (v24 = 0) : (v24 = v21), (v46 = v24) == 0))
  {
    v31.var0.var0 = a3;
    return mlir::emitOptionalError<char const(&)[66]>(a2, v31, "cannot handle a non-tensor input type");
  }

  if (*(*v24 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    Value = mlir::ArrayAttr::getValue(&v46);
    v47[0] = &v47[2];
    v47[1] = 0x400000000;
    if (v26)
    {
      LODWORD(v27) = 0;
      v28 = 8 * v26;
      do
      {
        v29 = *Value;
        if (v27 >= HIDWORD(v47[1]))
        {
          v30 = v27;
          v27 = Value;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v47, &v47[2], v30 + 1, 8);
          Value = v27;
          LODWORD(v27) = v47[1];
        }

        *(v47[0] + v27) = v29;
        v27 = ++LODWORD(v47[1]);
        ++Value;
        v28 -= 8;
      }

      while (v28);
      v36 = v47[0];
      v37 = (v47[0] + 8 * v27);
      v38 = *(v37 - 1);
      if (v38 == 0x8000000000000000)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v27 = 0;
      v36 = &v47[2];
      v37 = &v47[2];
      v38 = v47[1];
    }

    *(v37 - 1) = (v38 / 4);
LABEL_30:
    ElementType = mlir::TensorType::getElementType(&v46);
    v21 = mlir::RankedTensorType::get(v36, v27, ElementType, 0);
    if (v47[0] != &v47[2])
    {
      free(v47[0]);
    }
  }

  v40 = *(a11 + 8);
  if (v40 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v40 + 1, 8);
    LODWORD(v40) = *(a11 + 8);
  }

  *(*a11 + 8 * v40) = v21;
  v41 = *(a11 + 12);
  v42 = (*(a11 + 8) + 1);
  *(a11 + 8) = v42;
  if (v42 >= v41)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v42 + 1, 8);
    LODWORD(v42) = *(a11 + 8);
  }

  *(*a11 + 8 * v42) = v21;
  v43 = (*(a11 + 8) + 1);
  *(a11 + 8) = v43;
  if (!*(&v53 + 1))
  {
    return 1;
  }

  v44 = v46;
  if (v43 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v43 + 1, 8);
    LODWORD(v43) = *(a11 + 8);
  }

  *(*a11 + 8 * v43) = v44;
LABEL_40:
  ++*(a11 + 8);
  return 1;
}

void mlir::mps::LSTMOp::downgradeToVersion(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v23[0] = &unk_1F5B01218;
  v23[1] = 0x100000001;
  v24 = 0;
  v4 = *(a2 + 8);
  if (v4 && (v4 != 1 || *(a2 + 12)) || *(*(v3 + 16 * ((*(v3 + 44) >> 23) & 1) + 80) + 8) != 3)
  {
    v14 = *(v3 + 36);
    v15 = v3 - 16;
    if (!v14)
    {
      v15 = 0;
    }

    *a3 = v15;
    *(a3 + 8) = v14;
    *(a3 + 16) = 1;
  }

  else
  {
    v16[0] = "failed to downgrade: requested target version is {0}, but IOFZ gate layout is only supported from version {1}";
    v16[1] = 109;
    v16[2] = v20;
    v16[3] = 2;
    v17 = 1;
    v18[0] = &unk_1F5B171B8;
    v18[1] = a2;
    v19[0] = &unk_1F5B171E8;
    v19[1] = v23;
    v20[0] = v18;
    v20[1] = v19;
    v22 = 263;
    v21 = v16;
    mlir::OpState::emitOpError(a1, &v21, v25);
    *a3 = 0;
    *(a3 + 16) = 0;
    if (v25[0])
    {
      mlir::InFlightDiagnostic::report(v25);
    }

    if (v33 == 1)
    {
      if (v32 != &v33)
      {
        free(v32);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v31;
        v8 = __p;
        if (v31 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v31 = v6;
        operator delete(v8);
      }

      v9 = v28;
      if (v28)
      {
        v10 = v29;
        v11 = v28;
        if (v29 != v28)
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
          v11 = v28;
        }

        v29 = v9;
        operator delete(v11);
      }

      if (v26 != &v27)
      {
        free(v26);
      }
    }
  }
}

BOOL mlir::mps::LSTMGradientOp::inferReturnTypes(uint64_t a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v76 = *MEMORY[0x1E69E9840];
  *&v72 = a4;
  *(&v72 + 1) = a5;
  if (a5)
  {
    v14 = *(mlir::ValueRange::dereference_iterator(&v72, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (v14)
    {
      v15 = *(*v14 + 136);
      if (v15 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        v17 = v14;
      }

      else
      {
        v17 = 0;
      }

      v60 = v17;
      if (v17)
      {
        if (*(*v17 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
        {
          goto LABEL_26;
        }

        Value = mlir::ArrayAttr::getValue(&v60);
        *&v61 = v62;
        *(&v61 + 1) = 0x400000000;
        if (v19)
        {
          LODWORD(v20) = 0;
          v21 = 8 * v19;
          do
          {
            v22 = *Value;
            if (v20 >= HIDWORD(v61))
            {
              v23 = v20;
              v20 = Value;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v62, v23 + 1, 8);
              Value = v20;
              LODWORD(v20) = DWORD2(v61);
            }

            *(v61 + 8 * v20) = v22;
            v20 = ++DWORD2(v61);
            ++Value;
            v21 -= 8;
          }

          while (v21);
          v28 = v61;
          v29 = (v61 + 8 * v20);
          v30 = *(v29 - 1);
          if (v30 == 0x8000000000000000)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v20 = 0;
          v28 = v62;
          v29 = v62;
          v30 = *(&v61 + 1);
        }

        *(v29 - 1) = 4 * v30;
LABEL_24:
        ElementType = mlir::TensorType::getElementType(&v60);
        v14 = mlir::RankedTensorType::get(v28, v20, ElementType, 0);
        if (v61 != v62)
        {
          free(v61);
        }

LABEL_26:
        v32 = *(a11 + 8);
        if (v32 >= *(a11 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v32 + 1, 8);
          LODWORD(v32) = *(a11 + 8);
        }

        *(*a11 + 8 * v32) = v14;
        ++*(a11 + 8);
        v61 = v72;
        if (*(&v72 + 1) < 2uLL)
        {
          v35.var0.var0 = a3;
          if (!mlir::emitOptionalError<char const(&)[66]>(a2, v35, "invalid number of operands"))
          {
            return 0;
          }
        }

        else
        {
          v33 = *(mlir::ValueRange::dereference_iterator(&v61, 1) + 8) & 0xFFFFFFFFFFFFFFF8;
          v34 = *(a11 + 8);
          if (v34 >= *(a11 + 12))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v34 + 1, 8);
            LODWORD(v34) = *(a11 + 8);
          }

          *(*a11 + 8 * v34) = v33;
          ++*(a11 + 8);
        }

        v59 = 0;
        v36.var0.var0 = a3;
        {
          v37 = v59;
          v38 = *(a11 + 8);
          if (v38 >= *(a11 + 12))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v38 + 1, 8);
            LODWORD(v38) = *(a11 + 8);
          }

          *(*a11 + 8 * v38) = v37;
          v39 = *(a11 + 12);
          v40 = (*(a11 + 8) + 1);
          *(a11 + 8) = v40;
          v41 = v40 >= v39;
          v42 = a6;
          v43 = a7;
          if (v41)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v40 + 1, 8);
            v43 = a7;
            v42 = a6;
            *(*a11 + 8 * (*(a11 + 8))++) = v37;
            if (a7)
            {
              goto LABEL_38;
            }
          }

          else
          {
            *(*a11 + 8 * v40) = v37;
            ++*(a11 + 8);
            if (a7)
            {
LABEL_38:
              v44 = *v43;
              v45 = v43[1];
              v46 = v43[2];
              v47 = v43[4];
              v73 = v43[3];
              v74 = v47;
              v75 = *(v43 + 10);
              goto LABEL_43;
            }
          }

          v75 = 0;
          v44 = 0uLL;
          v73 = 0u;
          v74 = 0u;
          v45 = 0uLL;
          v46 = 0uLL;
LABEL_43:
          *&v61 = v42;
          BYTE8(v61) = 0;
          v62[0] = 0;
          v63 = v44;
          v64 = v45;
          v65 = v46;
          v48 = v72;
          v66 = v73;
          v67 = v74;
          v68 = v75;
          v69 = a9;
          v70 = a10;
          if (v42)
          {
            v58 = v72;
            Context = mlir::Attribute::getContext(&v61);
            if (v62[0] == 1)
            {
              v62[0] = 0;
            }

            mlir::OperationName::OperationName(&v61 + 8, "mps.lstm_gradient", 17, Context);
            v62[0] = 1;
            v48 = v58;
          }

          v71 = v48;
          v50 = vaddvq_s32(v66) + v67;
          v51 = HIDWORD(v67);
          v73.i64[0] = v48;
          v52 = v50 + DWORD1(v67) + DWORD2(v67);
          v73.i64[1] = v52;
          if (v52)
          {
            v53 = mlir::ValueRange::offset_base(&v73, (v50 + DWORD1(v67) + DWORD2(v67)));
            if (v73.i64[1] == v51 + v52)
            {
              return 1;
            }
          }

          else
          {
            v53 = v48;
            if (!HIDWORD(v67))
            {
              return 1;
            }
          }

          v73 = v53;
          v54 = mlir::ValueRange::dereference_iterator(&v73, 0);
          if (v54)
          {
            v55 = *(v54 + 8) & 0xFFFFFFFFFFFFFFF8;
            v56 = *(a11 + 8);
            if (v56 >= *(a11 + 12))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v56 + 1, 8);
              LODWORD(v56) = *(a11 + 8);
            }

            *(*a11 + 8 * v56) = v55;
            ++*(a11 + 8);
          }

          return 1;
        }

        return 0;
      }
    }

    else
    {
      v60 = 0;
    }

    v27.var0.var0 = a3;
    return mlir::emitOptionalError<char const(&)[66]>(a2, v27, "cannot handle a non-tensor input type");
  }

  return mlir::emitOptionalError<char const(&)[66]>(a2, a3, "invalid number of operands");
}

BOOL mlir::mps::anonymous namespace::verifyGRU(uint64_t a1, char a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v150 = *MEMORY[0x1E69E9840];
  v134[0] = a4;
  v134[1] = a5;
  v133[0] = a6;
  v133[1] = a7;
  v132[0] = a9;
  v132[1] = a10;
  v131[0] = a13;
  v131[1] = a14;
  v130[0] = a15;
  v130[1] = a16;
  if (!a4)
  {
    return 1;
  }

  result = 1;
  if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || !a6 || *(*a6 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    return result;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v134);
  v22 = v21;
  v23 = mlir::CallableOpInterface::getArgAttrsAttr(v133);
  if (v22 == 3)
  {
    v25 = v23;
    v127 = v24;
    v26 = a1;
    if (v24 <= 1)
    {
      v129 = 259;
      mlir::Operation::emitOpError(a1, v128, &v138);
      v27 = &v127;
      goto LABEL_8;
    }

    v41 = *(ArgAttrsAttr + 16);
    v42 = v41;
    v43 = a2;
    if ((a2 & 1) == 0)
    {
      v42 = 0x8000000000000000;
      if (v41 != 0x8000000000000000)
      {
        v42 = v41 / 3;
        if (3 * (v41 / 3) != v41)
        {
          v128[0] = "Invalid input last dimension size: ";
          v129 = 259;
          mlir::Operation::emitOpError(a1, v128, &v138);
          mlir::InFlightDiagnostic::operator<<<long long &>(&v138, (ArgAttrsAttr + 16));
          mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v87, ", should be divisible by three.");
          goto LABEL_9;
        }
      }
    }

    v44 = 0;
    v45 = v24 - 2;
    v46 = a3;
    do
    {
      if (v44 < v45)
      {
        v47 = 1;
      }

      else
      {
        v47 = v42;
      }

      if (v24 == 2)
      {
        v47 *= 3;
      }

      v48 = *(v25 + 8 * v44);
      if (v47 != 0x8000000000000000 && v48 != 0x8000000000000000 && v48 != v47)
      {
        v129 = 259;
        mlir::Operation::emitOpError(a1, v128, &v138);
        if (v138)
        {
          LODWORD(v135) = 3;
          v136 = "matrix of size [";
          v137 = 16;
          v54 = &v135;
          v55 = v141;
          if (v142 >= HIDWORD(v142))
          {
            if (v141 <= &v135 && v141 + 24 * v142 > &v135)
            {
              v120 = &v135 - v141;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v143, v142 + 1, 24);
              v55 = v141;
              v54 = (v141 + v120);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v143, v142 + 1, 24);
              v54 = &v135;
              v55 = v141;
            }
          }

          v56 = &v55[24 * v142];
          v57 = *v54;
          *(v56 + 2) = v54[2];
          *v56 = v57;
          v58 = (v142 + 1);
          LODWORD(v142) = v142 + 1;
          if (v138)
          {
            LODWORD(v135) = 2;
            v136 = 3 * v42;
            v59 = &v135;
            v60 = v141;
            if (v58 >= HIDWORD(v142))
            {
              if (v141 <= &v135 && v141 + 24 * v58 > &v135)
              {
                v121 = &v135 - v141;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v143, v58 + 1, 24);
                v60 = v141;
                v59 = (v141 + v121);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v143, v58 + 1, 24);
                v59 = &v135;
                v60 = v141;
              }
            }

            v61 = &v60[24 * v142];
            v62 = *v59;
            *(v61 + 2) = v59[2];
            *v61 = v62;
            v63 = (v142 + 1);
            LODWORD(v142) = v142 + 1;
            if (v138)
            {
              LODWORD(v135) = 3;
              v136 = ", ";
              v137 = 2;
              v64 = &v135;
              v65 = v141;
              if (v63 >= HIDWORD(v142))
              {
                if (v141 <= &v135 && v141 + 24 * v63 > &v135)
                {
                  v122 = &v135 - v141;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v143, v63 + 1, 24);
                  v65 = v141;
                  v64 = (v141 + v122);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v143, v63 + 1, 24);
                  v64 = &v135;
                  v65 = v141;
                }
              }

              v66 = &v65[24 * v142];
              v67 = *v64;
              *(v66 + 2) = v64[2];
              *v66 = v67;
              v68 = (v142 + 1);
              LODWORD(v142) = v142 + 1;
              if (v138)
              {
                LODWORD(v135) = 2;
                v136 = v42;
                v69 = &v135;
                v70 = v141;
                if (v68 >= HIDWORD(v142))
                {
                  if (v141 <= &v135 && v141 + 24 * v68 > &v135)
                  {
                    v123 = &v135 - v141;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v143, v68 + 1, 24);
                    v70 = v141;
                    v69 = (v141 + v123);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v143, v68 + 1, 24);
                    v69 = &v135;
                    v70 = v141;
                  }
                }

                v71 = &v70[24 * v142];
                v72 = *v69;
                *(v71 + 2) = v69[2];
                *v71 = v72;
                v73 = (v142 + 1);
                LODWORD(v142) = v142 + 1;
                if (v138)
                {
                  LODWORD(v135) = 3;
                  v136 = "].";
                  v137 = 2;
                  v74 = &v135;
                  v75 = v141;
                  if (v73 >= HIDWORD(v142))
                  {
                    if (v141 <= &v135 && v141 + 24 * v73 > &v135)
                    {
                      v124 = &v135 - v141;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v143, v73 + 1, 24);
                      v75 = v141;
                      v74 = (v141 + v124);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v143, v73 + 1, 24);
                      v74 = &v135;
                      v75 = v141;
                    }
                  }

                  v76 = &v75[24 * v142];
                  v77 = *v74;
                  *(v76 + 2) = v74[2];
                  *v76 = v77;
                  LODWORD(v142) = v142 + 1;
                }
              }
            }
          }
        }

        result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v138);
        v78 = result;
        if (v138)
        {
          mlir::InFlightDiagnostic::report(&v138);
          result = v78;
        }

        if (v149)
        {
          if (v148 != &v149)
          {
            free(v148);
            result = v78;
          }

          v79 = __p;
          if (__p)
          {
            v80 = v147;
            v81 = __p;
            if (v147 != __p)
            {
              do
              {
                v80 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v80 - 1);
              }

              while (v80 != v79);
              v81 = __p;
            }

            v147 = v79;
            operator delete(v81);
            result = v78;
          }

          v82 = v144;
          if (v144)
          {
            v83 = v145;
            v84 = v144;
            if (v145 != v144)
            {
              do
              {
                v86 = *--v83;
                v85 = v86;
                *v83 = 0;
                if (v86)
                {
                  operator delete[](v85);
                }
              }

              while (v83 != v82);
              v84 = v144;
            }

            v145 = v82;
            operator delete(v84);
            result = v78;
          }

          if (v141 != v143)
          {
            free(v141);
            return v78;
          }
        }

        return result;
      }

      ++v44;
      --v24;
    }

    while (v24);
    if (v132[0] && *(*v132[0] + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v51 = mlir::CallableOpInterface::getArgAttrsAttr(v132);
      v135 = v52;
      v53 = v52 - 1;
      if (v52 <= 1)
      {
        v129 = 259;
        mlir::Operation::emitOpError(a1, v128, &v138);
        v27 = &v135;
LABEL_8:
        mlir::InFlightDiagnostic::operator<<<unsigned long>(&v138, v27);
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v28, ", should be 2 or greater.");
LABEL_9:
        v30 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v29);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v138);
        return v30;
      }

      v88 = v51;
      v89 = 0;
      v26 = a1;
      v46 = a3;
      v43 = a2;
      do
      {
        if (v89 >= v52 - 2)
        {
          v90 = *(ArgAttrsAttr - 8 * v52 + 24 + 8 * v89);
          v125 = v90;
          if (v53 != v89 || (a2 & 1) != 0 || v90 == 0x8000000000000000)
          {
            goto LABEL_83;
          }
        }

        else
        {
          v125 = 1;
          v90 = 1;
          if (v53 != v89 || (a2 & 1) != 0)
          {
            goto LABEL_83;
          }
        }

        v90 /= 3;
        v125 = v90;
LABEL_83:
        v91 = *(v88 + 8 * v89);
        if (v90 != 0x8000000000000000 && v91 != 0x8000000000000000 && v91 != v90)
        {
          v126 = v89;
          v129 = 259;
          mlir::Operation::emitOpError(a1, v128, &v138);
          mlir::InFlightDiagnostic::operator<<<unsigned long>(&v138, &v126);
          mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v110, "] = ");
          mlir::InFlightDiagnostic::operator<<<long long &>(v111, (v88 + 8 * v126));
          mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v112, ", expected ");
          v114 = &v125;
          goto LABEL_133;
        }

        ++v89;
      }

      while (v52 != v89);
    }

    if (a11 && *(*a11 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      if (v43)
      {
        v94 = v134[0];
        v95 = v134[0];
      }

      else
      {
        v138 = &v140;
        v139 = 0x400000000;
        v140 = *ArgAttrsAttr;
        LODWORD(v139) = 1;
        v141 = *(ArgAttrsAttr + 8);
        LODWORD(v139) = 2;
        v142 = *(ArgAttrsAttr + 16);
        LODWORD(v139) = 3;
        if (v142 != 0x8000000000000000)
        {
          v142 /= 3;
        }

        isSplat = mlir::ElementsAttr::isSplat(v134);
        v128[0] = mlir::RankedTensorType::get(&v140, 3, isSplat, 0);
        v95 = mlir::TensorType::operator mlir::ShapedType(v128);
        if (v138 != &v140)
        {
          free(v138);
        }

        v94 = v134[0];
      }

      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v94);
      BroadcastedType = mlir::OpTrait::util::getBroadcastedType(v95, a11, ElementTypeOrSelf);
      v26 = a1;
      v46 = a3;
      if (!BroadcastedType)
      {
        goto LABEL_132;
      }
    }

    if (v131[0] && *(*v131[0] + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v99 = mlir::CallableOpInterface::getArgAttrsAttr(v131);
      v26 = a1;
      if (v100 != 3)
      {
        goto LABEL_118;
      }

      v46 = a3;
      v101 = 3;
      if (a3)
      {
        v101 = 4;
      }

      if (*v99 != 0x8000000000000000 && *ArgAttrsAttr != 0x8000000000000000 && *ArgAttrsAttr != *v99)
      {
        goto LABEL_118;
      }

      v102 = v99[1];
      if (v102 != 0x8000000000000000)
      {
        v103 = *(ArgAttrsAttr + 8);
        if (v103 != 0x8000000000000000 && v103 != v102)
        {
          goto LABEL_118;
        }
      }

      v104 = *(ArgAttrsAttr + 16);
      v105 = v104 * v101;
      if (v104 == 0x8000000000000000)
      {
        v105 = 0x8000000000000000;
      }

      v106 = v99[2];
      if (v106 != 0x8000000000000000 && v105 != 0x8000000000000000 && v105 != v106)
      {
LABEL_118:
LABEL_132:
        v128[0] = v107;
        v129 = 259;
        mlir::Operation::emitOpError(v26, v128, &v138);
        v29 = &v138;
        goto LABEL_9;
      }
    }

    if (v130[0] && (v46 & 1) == 0)
    {
      goto LABEL_132;
    }

    if (v130[0] && *(*v130[0] + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v108 = mlir::CallableOpInterface::getArgAttrsAttr(v130);
      if (v109 != 1)
      {
        v116 = v109;
        v129 = 259;
        mlir::Operation::emitOpError(a1, v128, &v138);
        v135 = v116;
        mlir::InFlightDiagnostic::operator<<<unsigned long>(&v138, &v135);
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v117, ", should be 1.");
        goto LABEL_9;
      }

      v135 = v42;
      if (v42 != 0x8000000000000000 && *v108 != 0x8000000000000000 && *v108 != v42)
      {
        v129 = 259;
        mlir::Operation::emitOpError(a1, v128, &v138);
        v113 = &v138;
        v114 = &v135;
LABEL_133:
        mlir::InFlightDiagnostic::operator<<<long long &>(v113, v114);
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v115, ".");
        goto LABEL_9;
      }
    }

    return 1;
  }

  v128[0] = "Invalid input tensor rank: ";
  v129 = 259;
  mlir::Operation::emitOpError(a1, v128, &v138);
  if (v138)
  {
    LODWORD(v135) = 5;
    v136 = v22;
    v31 = &v135;
    v32 = v141;
    if (v142 >= HIDWORD(v142))
    {
      if (v141 <= &v135 && v141 + 24 * v142 > &v135)
      {
        v118 = &v135 - v141;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v143, v142 + 1, 24);
        v32 = v141;
        v31 = (v141 + v118);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v143, v142 + 1, 24);
        v31 = &v135;
        v32 = v141;
      }
    }

    v33 = &v32[24 * v142];
    v34 = *v31;
    *(v33 + 2) = v31[2];
    *v33 = v34;
    v35 = (v142 + 1);
    LODWORD(v142) = v142 + 1;
    if (v138)
    {
      LODWORD(v135) = 3;
      v136 = ", should be 3.";
      v137 = 14;
      v36 = &v135;
      v37 = v141;
      if (v35 >= HIDWORD(v142))
      {
        if (v141 <= &v135 && v141 + 24 * v35 > &v135)
        {
          v119 = &v135 - v141;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v143, v35 + 1, 24);
          v37 = v141;
          v36 = (v141 + v119);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v141, v143, v35 + 1, 24);
          v36 = &v135;
          v37 = v141;
        }
      }

      v38 = &v37[24 * v142];
      v39 = *v36;
      *(v38 + 2) = v36[2];
      *v38 = v39;
      LODWORD(v142) = v142 + 1;
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v138);
  if (v138)
  {
    v40 = result;
    mlir::InFlightDiagnostic::report(&v138);
    result = v40;
  }

  if (v149 == 1)
  {
    v30 = result;
    mlir::Diagnostic::~Diagnostic(&v139);
    return v30;
  }

  return result;
}

BOOL mlir::mps::GRUOp::inferReturnTypes(mlir::Float32Type *a1, mlir::MLIRContext *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v65[2] = *MEMORY[0x1E69E9840];
  v65[0] = a4;
  v65[1] = a5;
  if (a7)
  {
    v15 = *a7;
    v16 = a7[1];
    v17 = a7[2];
    v18 = *(a7 + 6);
    *v50 = *(a7 + 56);
    v51[0] = *(a7 + 18);
  }

  else
  {
    v18 = 0;
    v51[0] = 0;
    v15 = 0uLL;
    *v50 = 0u;
    v16 = 0uLL;
    v17 = 0uLL;
  }

  v52 = a6;
  v53[0] = 0;
  v54 = 0;
  v55 = v15;
  v56 = v16;
  v57 = v17;
  v58 = v18;
  v59 = *v50;
  v60 = v51[0];
  v61 = a9;
  v62 = a10;
  if (a6)
  {
    v19 = a1;
    Context = mlir::Attribute::getContext(&v52);
    if (v54 == 1)
    {
      v54 = 0;
    }

    mlir::OperationName::OperationName(v53, "mps.gru", 7, Context);
    v54 = 1;
    a1 = v19;
  }

  v63 = a4;
  v64 = a5;
  if (!a5)
  {
    v35 = mlir::Float32Type::get(a1, a2);
    v36 = mlir::UnrankedTensorType::get(v35);
    v37 = *(a11 + 8);
    if (v37 >= *(a11 + 12))
    {
      v48 = v36;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v37 + 1, 8);
      v36 = v48;
      LODWORD(v37) = *(a11 + 8);
    }

    *(*a11 + 8 * v37) = v36;
    goto LABEL_41;
  }

  mlir::UnknownLoc::get(a1, a2);
  v21 = *(mlir::ValueRange::dereference_iterator(v65, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (!v21 || ((v22 = *(*v21 + 136), v22 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id) ? (v23 = v22 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id) : (v23 = 1), !v23 ? (v24 = 0) : (v24 = v21), (v49 = v24) == 0))
  {
    v33.var0.var0 = a3;
    return mlir::emitOptionalError<char const(&)[66]>(a2, v33, "cannot handle a non-tensor input type");
  }

  v25 = v21;
  if (*(*v24 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    Value = mlir::ArrayAttr::getValue(&v49);
    v27 = mlir::ArrayAttr::getValue(&v49);
    v29 = (v27 + 8 * v28);
    v50[0] = v51;
    v50[1] = 0x400000000;
    v30 = (v29 - Value) >> 3;
    if (v30 < 5)
    {
      v31 = 0;
      v32 = v51;
      if (v29 == Value)
      {
LABEL_27:
        v38 = v31 + ((v29 - Value) >> 3);
        LODWORD(v50[1]) = v31 + ((v29 - Value) >> 3);
        v39 = v38 - 1;
        v40 = v32[v38 - 1];
        if (v40 != 0x8000000000000000)
        {
          v32[v39] = v40 / 3;
        }

        ElementType = mlir::TensorType::getElementType(&v49);
        v25 = mlir::RankedTensorType::get(v32, v38, ElementType, 0);
        v42 = v50[0];
        if (v40 != 0x8000000000000000)
        {
          v43 = 3;
          if (*(&v56 + 1))
          {
            v43 = 4;
          }

          *(v50[0] + v39) *= v43;
        }

        v44 = LODWORD(v50[1]);
        v45 = mlir::TensorType::getElementType(&v49);
        v21 = mlir::RankedTensorType::get(v42, v44, v45, 0);
        if (v50[0] != v51)
        {
          free(v50[0]);
        }

        goto LABEL_35;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v50, v51, v30, 8);
      v31 = v50[1];
      v32 = v50[0];
      if (v29 == Value)
      {
        goto LABEL_27;
      }
    }

    memcpy(&v32[v31], Value, v29 - Value);
    v31 = v50[1];
    v32 = v50[0];
    goto LABEL_27;
  }

LABEL_35:
  v46 = *(a11 + 8);
  if (v46 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v46 + 1, 8);
    LODWORD(v46) = *(a11 + 8);
  }

  *(*a11 + 8 * v46) = v25;
  v47 = (*(a11 + 8) + 1);
  *(a11 + 8) = v47;
  if (!*(&v57 + 1))
  {
    return 1;
  }

  if (v47 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v47 + 1, 8);
    LODWORD(v47) = *(a11 + 8);
  }

  *(*a11 + 8 * v47) = v21;
LABEL_41:
  ++*(a11 + 8);
  return 1;
}

BOOL mlir::mps::GRUGradientOp::inferReturnTypes(uint64_t a1, mlir *a2, AttributeStorage *a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v67 = *MEMORY[0x1E69E9840];
  *&v65 = a4;
  *(&v65 + 1) = a5;
  if (a5)
  {
    v13 = *(mlir::ValueRange::dereference_iterator(&v65, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (v13)
    {
      v14 = *(*v13 + 136);
      if (v14 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || v14 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        v16 = v13;
      }

      else
      {
        v16 = 0;
      }

      v55 = v16;
      if (v16)
      {
        if (*(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
        {
          goto LABEL_25;
        }

        Value = mlir::ArrayAttr::getValue(&v55);
        v18 = mlir::ArrayAttr::getValue(&v55);
        v20 = (v18 + 8 * v19);
        *&v56 = v57;
        *(&v56 + 1) = 0x400000000;
        v21 = (v20 - Value) >> 3;
        if (v21 < 5)
        {
          v22 = 0;
          v23 = v57;
          if (v20 == Value)
          {
LABEL_21:
            v28 = v22 + ((v20 - Value) >> 3);
            DWORD2(v56) = v28;
            v29 = &v23[8 * v28];
            v30 = *(v29 - 1);
            if (v30 != 0x8000000000000000)
            {
              *(v29 - 1) = 3 * v30;
            }

            ElementType = mlir::TensorType::getElementType(&v55);
            v13 = mlir::RankedTensorType::get(v23, v28, ElementType, 0);
            if (v56 != v57)
            {
              free(v56);
            }

LABEL_25:
            v32 = *(a11 + 8);
            if (v32 >= *(a11 + 12))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v32 + 1, 8);
              LODWORD(v32) = *(a11 + 8);
            }

            *(*a11 + 8 * v32) = v13;
            ++*(a11 + 8);
            v56 = v65;
            if (*(&v65 + 1) < 2uLL)
            {
              v35.var0.var0 = a3;
              if (!mlir::emitOptionalError<char const(&)[66]>(a2, v35, "invalid number of operands"))
              {
                return 0;
              }
            }

            else
            {
              v33 = *(mlir::ValueRange::dereference_iterator(&v56, 1) + 8) & 0xFFFFFFFFFFFFFFF8;
              v34 = *(a11 + 8);
              if (v34 >= *(a11 + 12))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v34 + 1, 8);
                LODWORD(v34) = *(a11 + 8);
              }

              *(*a11 + 8 * v34) = v33;
              ++*(a11 + 8);
            }

            v54 = 0;
            v36.var0.var0 = a3;
            {
              v37 = v54;
              v38 = *(a11 + 8);
              if (v38 >= *(a11 + 12))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v38 + 1, 8);
                LODWORD(v38) = *(a11 + 8);
              }

              *(*a11 + 8 * v38) = v37;
              ++*(a11 + 8);
              if (a7)
              {
                v39 = *a7;
                v40 = a7[1];
                v41 = a7[2];
                v66[0] = a7[3];
                *(v66 + 12) = *(a7 + 60);
              }

              else
              {
                v39 = 0uLL;
                memset(v66, 0, 28);
                v40 = 0uLL;
                v41 = 0uLL;
              }

              v42 = v65;
              *&v56 = a6;
              BYTE8(v56) = 0;
              v57[0] = 0;
              v58 = v39;
              v59 = v40;
              v60 = v41;
              *v61 = v66[0];
              *&v61[12] = *(v66 + 12);
              v62 = a9;
              v63 = a10;
              if (a6)
              {
                v53 = v65;
                Context = mlir::Attribute::getContext(&v56);
                if (v57[0] == 1)
                {
                  v57[0] = 0;
                }

                mlir::OperationName::OperationName(&v56 + 8, "mps.gru_gradient", 16, Context);
                v57[0] = 1;
                v42 = v53;
              }

              v64 = v42;
              v44 = vaddvq_s32(*v61) + *&v61[16];
              v45 = *&v61[24];
              *&v66[0] = v42;
              v46 = v44 + *&v61[20];
              *(&v66[0] + 1) = (v44 + *&v61[20]);
              if (v44 + *&v61[20])
              {
                v47 = mlir::ValueRange::offset_base(v66, (v44 + *&v61[20]));
                if (*(&v66[0] + 1) == v45 + v46)
                {
                  return 1;
                }
              }

              else
              {
                v47 = v42;
                if (!*&v61[24])
                {
                  return 1;
                }
              }

              v66[0] = v47;
              v48 = mlir::ValueRange::dereference_iterator(v66, 0);
              if (v48)
              {
                v49 = *(v48 + 8) & 0xFFFFFFFFFFFFFFF8;
                v50 = *(a11 + 8);
                if (v50 >= *(a11 + 12))
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v50 + 1, 8);
                  LODWORD(v50) = *(a11 + 8);
                }

                *(*a11 + 8 * v50) = v49;
                ++*(a11 + 8);
              }

              return 1;
            }

            return 0;
          }
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v57, v21, 8);
          v22 = DWORD2(v56);
          v23 = v56;
          if (v20 == Value)
          {
            goto LABEL_21;
          }
        }

        memcpy(&v23[8 * v22], Value, v20 - Value);
        v22 = DWORD2(v56);
        v23 = v56;
        goto LABEL_21;
      }
    }

    else
    {
      v55 = 0;
    }

    v27.var0.var0 = a3;
    return mlir::emitOptionalError<char const(&)[66]>(a2, v27, "cannot handle a non-tensor input type");
  }

  return mlir::emitOptionalError<char const(&)[66]>(a2, a3, "invalid number of operands");
}

uint64_t mlir::mps::ConcatOp::inferReturnTypes(mlir::Float32Type *a1, mlir::MLIRContext *a2, AttributeStorage *a3, char *a4, unint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v90 = *MEMORY[0x1E69E9840];
  v80 = a4;
  v81 = a5;
  if (a7)
  {
    v13 = *a7;
  }

  else
  {
    v13 = 0;
  }

  v72 = a6;
  v73[0] = 0;
  v74 = 0;
  v75 = v13;
  v76 = a9;
  v14 = a5;
  v77 = a10;
  if (a6)
  {
    v15 = a1;
    Context = mlir::Attribute::getContext(&v72);
    if (v74 == 1)
    {
      v74 = 0;
    }

    mlir::OperationName::OperationName(v73, "mps.concat", 10, Context);
    v74 = 1;
    v14 = v81;
    a1 = v15;
  }

  v78 = a4;
  v79 = a5;
  if (v14 <= 1)
  {
    v17 = mlir::Float32Type::get(a1, a2);
    v18 = mlir::UnrankedTensorType::get(v17);
    goto LABEL_68;
  }

  mlir::UnknownLoc::get(a1, a2);
  if (v81 < 2)
  {
    v19 = v80;
  }

  else
  {
    v19 = mlir::ValueRange::offset_base(&v80, v81 - 1);
  }

  v85 = v19;
  v86 = 0;
  v65 = mlir::ValueRange::dereference_iterator(&v85, 0);
  v88 = v80;
  v89 = v81 - 1;
  v20 = mlir::ValueRange::dereference_iterator(&v88, 0);
  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(v20 + 8) & 0xFFFFFFFFFFFFFFF8));
  v22 = ElementTypeOrSelf;
  LOBYTE(v70) = 0;
  v71 = 0;
  v85 = v87;
  v86 = 0x400000000;
  v23 = v89;
  v83 = v88;
  v84 = 0;
  if (!v89)
  {
LABEL_64:
    v18 = mlir::UnrankedTensorType::get(v22);
    v50 = 0;
    v51 = v85;
    if (v85 != v87)
    {
LABEL_65:
      free(v51);
    }

    goto LABEL_66;
  }

  v63 = ElementTypeOrSelf;
  v64 = 0;
  v24 = 0;
  v25 = 0;
  LOBYTE(v26) = 0;
  v27 = 0;
  LOBYTE(v28) = 1;
  while (1)
  {
    v29 = *(mlir::ValueRange::dereference_iterator(&v83, v24) + 8) & 0xFFFFFFFFFFFFFFF8;
    v30 = *(*v29 + 136);
    if (v30 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v30 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v29 = 0;
    }

    v69 = v29;
    if (!v29)
    {
      v54 = "cannot concat a non-tensor type";
      goto LABEL_73;
    }

    if (v26)
    {
      goto LABEL_40;
    }

    if (!mlir::TensorType::hasRank(&v69))
    {
      v26 = 0;
      if (!mlir::TensorType::hasRank(&v69))
      {
        goto LABEL_52;
      }

LABEL_43:
      Value = mlir::ArrayAttr::getValue(&v69);
      v68 = 1;
      if (v39)
      {
        v40 = Value;
      }

      else
      {
        v40 = &v68;
      }

      if (v39 <= 1)
      {
        v41 = 1;
      }

      else
      {
        v41 = v39;
      }

      if (v41 == v27)
      {
        v42 = 0;
        v43 = v85;
        do
        {
          v82[0] = v43[v42];
          v82[1] = v40[v42];
          v44 = mlir::mps::mergeDynamicDims(v82, 2);
          v43 = v85;
          *&v85[8 * v42++] = v44;
        }

        while (v27 != v42);
        goto LABEL_52;
      }

      v54 = "all inputs must have equal rank";
LABEL_73:
      v55.var0.var0 = a3;
      v56 = mlir::emitOptionalError<char const(&)[66]>(a2, v55, v54);
      goto LABEL_74;
    }

    mlir::ArrayAttr::getValue(&v69);
    if (v32 <= 1)
    {
      v27 = 1;
    }

    else
    {
      v27 = v32;
    }

    if (!mlir::mps::getAxis(a2, a3, v65, v27, &v70))
    {
      v56 = 0;
LABEL_74:
      v18 = 0;
      v50 = !v56;
      v51 = v85;
      if (v85 != v87)
      {
        goto LABEL_65;
      }

      goto LABEL_66;
    }

    if (v71 != 1)
    {
      break;
    }

    v33 = v86;
    if (v27 != v86)
    {
      if (v27 >= v86)
      {
        if (v27 > HIDWORD(v86))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v87, v27, 8);
          v33 = v86;
        }

        if (v27 != v33)
        {
          bzero(&v85[8 * v33], 8 * (v27 - v33));
        }
      }

      LODWORD(v86) = v27;
    }

    v34 = mlir::ArrayAttr::getValue(&v69);
    v35 = mlir::ArrayAttr::getValue(&v69);
    v37 = (v35 + 8 * v36);
    if (v37 != v34)
    {
      memmove(v85, v34, v37 - v34);
    }

    v64 = 1;
LABEL_40:
    v26 = 1;
    if (mlir::TensorType::hasRank(&v69))
    {
      goto LABEL_43;
    }

LABEL_52:
    if ((v28 & 1) == 0)
    {
      goto LABEL_16;
    }

    if (mlir::TensorType::hasRank(&v69))
    {
      mlir::ArrayAttr::getValue(&v69);
      if (v45 < 1)
      {
        v47 = 1;
      }

      else
      {
        v46 = mlir::ArrayAttr::getValue(&v69);
        v47 = *(v46 + 8 * v70);
        if (v47 == 0x8000000000000000)
        {
          goto LABEL_15;
        }
      }

      v25 += v47;
      v28 = 1;
      v24 = v84 + 1;
      v84 = v24;
      if (v24 == v23)
      {
LABEL_59:
        v22 = v63;
        if (!v26)
        {
          goto LABEL_64;
        }

        v48 = v85;
        if (v64)
        {
          v49 = 0x8000000000000000;
          if (v28)
          {
            v49 = v25;
          }

          *&v85[8 * v70] = v49;
        }

        goto LABEL_88;
      }
    }

    else
    {
LABEL_15:
      v25 = 0;
LABEL_16:
      v28 = 0;
      v24 = v84 + 1;
      v84 = v24;
      if (v24 == v23)
      {
        goto LABEL_59;
      }
    }
  }

  if (v27 > HIDWORD(v86))
  {
    LODWORD(v86) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v87, v27, 8);
    v57 = v85;
    v58 = v27;
    v59 = v85;
    goto LABEL_86;
  }

  v48 = v85;
  v60 = v86;
  if (v86)
  {
    if (v86 >= v27)
    {
      v61 = v27;
    }

    else
    {
      v61 = v86;
    }

    v62 = v85;
    memset_pattern16(v85, &unk_1E096FAD0, 8 * v61);
    v48 = v62;
  }

  v58 = v27 - v60;
  if (v27 > v60)
  {
    v59 = v48;
    v57 = &v48[v60];
LABEL_86:
    memset_pattern16(v57, &unk_1E096FAD0, 8 * v58);
    v48 = v59;
  }

  LODWORD(v86) = v27;
  v22 = v63;
LABEL_88:
  v18 = mlir::RankedTensorType::get(v48, v86, v22, 0);
  v50 = 0;
  v51 = v85;
  if (v85 != v87)
  {
    goto LABEL_65;
  }

LABEL_66:
  if (v50)
  {
    return 0;
  }

LABEL_68:
  v53 = *(a11 + 8);
  if (v53 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v53 + 1, 8);
    v53 = *(a11 + 8);
  }

  *(*a11 + 8 * v53) = v18;
  ++*(a11 + 8);
  return 1;
}

BOOL mlir::mps::ConcatOp::verify(mlir::mps::ConcatOp *this)
{
  v134 = *MEMORY[0x1E69E9840];
  if (*(*this + 36))
  {
    v2 = *this - 16;
  }

  else
  {
    v2 = 0;
  }

  v3 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v3)
  {
    v4 = *v3;
    {
      v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v6 = *(v4 + 8);
      v7 = *(v4 + 16);
      if (!v7)
      {
        goto LABEL_17;
      }
    }

    else
    {
      getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
      v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v6 = *(v4 + 8);
      v7 = *(v4 + 16);
      if (!v7)
      {
        goto LABEL_17;
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
      v73 = v8[1];
      v100 = v3;
      v101 = v73;
      if (!mlir::CallOpInterface::getArgOperands(&v100))
      {
        return 1;
      }

      goto LABEL_18;
    }
  }

LABEL_17:
  v100 = v3;
  v101 = 0;
  if (!mlir::CallOpInterface::getArgOperands(&v100))
  {
    return 1;
  }

LABEL_18:
  mlir::CallableOpInterface::getArgAttrsAttr(&v100);
  v15 = v14;
  LOBYTE(v98) = 0;
  v99 = 0;
  Axis = mlir::mps::getAxis(*(*this + 24), 1, *(*(*this + 72) + 32 * (*(*this + 68) - 1) + 24), v14, &v98);
  result = 0;
  if (!Axis)
  {
    return result;
  }

  if (v99 != 1)
  {
    return 1;
  }

  v18 = v98;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v100);
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(v100);
  LOBYTE(v96) = 0;
  v97 = 0;
  v20 = *this;
  if ((*(*this + 46) & 0x80) == 0)
  {
    v23 = 0;
    v22 = 0xFFFFFFFFLL;
    goto LABEL_23;
  }

  v21 = *(v20 + 68);
  v22 = (v21 - 1);
  if (v21 == 1)
  {
    return 1;
  }

  v23 = *(v20 + 72);
LABEL_23:
  v24 = 0;
  v25 = v18 + 1;
  v26 = ~v18;
  v88 = &ArgAttrsAttr[v25];
  v89 = v25;
  while (1)
  {
    v27 = (*(*(v23 + 32 * v24 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!v27)
    {
      goto LABEL_39;
    }

    v28 = *v27;
    {
      v29 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v30 = *(v28 + 8);
      v31 = *(v28 + 16);
      if (!v31)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v38 = v27;
      mlir::arith::ExtUIOp::fold();
      v27 = v38;
      v29 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v30 = *(v28 + 8);
      v31 = *(v28 + 16);
      if (!v31)
      {
        goto LABEL_39;
      }
    }

    v32 = v30;
    v33 = v31;
    do
    {
      v34 = v33 >> 1;
      v35 = &v32[2 * (v33 >> 1)];
      v37 = *v35;
      v36 = v35 + 2;
      v33 += ~(v33 >> 1);
      if (v37 < v29)
      {
        v32 = v36;
      }

      else
      {
        v33 = v34;
      }
    }

    while (v33);
    if (v32 != &v30[2 * v31] && *v32 == v29)
    {
      v47 = v32[1];
      v94 = v27;
      v95 = v47;
      if (mlir::getElementTypeOrSelf(v27) == ElementTypeOrSelf)
      {
        goto LABEL_62;
      }

      goto LABEL_40;
    }

LABEL_39:
    v94 = v27;
    v95 = 0;
    if (mlir::getElementTypeOrSelf(v27) == ElementTypeOrSelf)
    {
      goto LABEL_62;
    }

LABEL_40:
    v105[0] = "element type of operand and result differ";
    LOWORD(v107) = 259;
    mlir::OpState::emitOpError(this, v105, v125);
    if (v125[0])
    {
      mlir::InFlightDiagnostic::report(v125);
    }

    if (v133 == 1)
    {
      if (v132 != &v133)
      {
        free(v132);
      }

      v39 = __p;
      if (__p)
      {
        v40 = v131;
        v41 = __p;
        if (v131 != __p)
        {
          do
          {
            v40 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v40 - 1);
          }

          while (v40 != v39);
          v41 = __p;
        }

        v131 = v39;
        operator delete(v41);
      }

      v42 = v128;
      if (v128)
      {
        v43 = v129;
        v44 = v128;
        if (v129 != v128)
        {
          do
          {
            v46 = *--v43;
            v45 = v46;
            *v43 = 0;
            if (v46)
            {
              operator delete[](v45);
            }
          }

          while (v43 != v42);
          v44 = v128;
        }

        v129 = v42;
        operator delete(v44);
      }

      if (v126 != &v127)
      {
        free(v126);
      }
    }

LABEL_62:
    if ((mlir::CallOpInterface::getArgOperands(&v94) & 1) == 0)
    {
      goto LABEL_25;
    }

    v48 = mlir::CallableOpInterface::getArgAttrsAttr(&v94);
    v93 = 1;
    if (v49)
    {
      v50 = v48;
    }

    else
    {
      v50 = &v93;
    }

    if (v49 <= 1)
    {
      v51 = 1;
    }

    else
    {
      v51 = v49;
    }

    if (v51 != v15)
    {
      v105[0] = "all inputs must have equal rank";
      LOWORD(v107) = 259;
      mlir::OpState::emitOpError(this, v105, v116);
      if (v116[0])
      {
        mlir::InFlightDiagnostic::report(v116);
      }

      if (v124 == 1)
      {
        if (v123 != &v124)
        {
          free(v123);
        }

        v52 = v121;
        if (v121)
        {
          v53 = v122;
          v54 = v121;
          if (v122 != v121)
          {
            do
            {
              v53 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v53 - 1);
            }

            while (v53 != v52);
            v54 = v121;
          }

          v122 = v52;
          operator delete(v54);
        }

        v55 = v119;
        if (v119)
        {
          v56 = v120;
          v57 = v119;
          if (v120 != v119)
          {
            do
            {
              v59 = *--v56;
              v58 = v59;
              *v56 = 0;
              if (v59)
              {
                operator delete[](v58);
              }
            }

            while (v56 != v55);
            v57 = v119;
          }

          v120 = v55;
          operator delete(v57);
        }

        if (v117 != &v118)
        {
          free(v117);
        }
      }
    }

    v60 = v98;
    if ((mlir::verifyCompatibleShape(ArgAttrsAttr, v98, v50, v98) & 1) == 0 || (mlir::verifyCompatibleShape(v88, &v15[v26], &v50[v89], &v15[v26]) & 1) == 0)
    {
      break;
    }

    if (*(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64))
    {
      v61 = &v50[v60];
      if (v97 == 1)
      {
        if ((mlir::verifyCompatibleShape(v61, 1, &v96, 1) & 1) == 0)
        {
          v91[0] = "all input shapes must match along axis ";
          v92 = 259;
          mlir::OpState::emitOpError(this, v91, v105);
          if (v105[0])
          {
            v102 = 3;
            v103 = "dimension when interleaving";
            v104 = 27;
            v62 = &v102;
            v63 = v106;
            if (v107 >= v108)
            {
              if (v106 <= &v102 && v106 + 24 * v107 > &v102)
              {
                v87 = &v102 - v106;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v106, v109, v107 + 1, 24);
                v63 = v106;
                v62 = (v106 + v87);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v106, v109, v107 + 1, 24);
                v62 = &v102;
                v63 = v106;
              }
            }

            v64 = &v63[24 * v107];
            v65 = *v62;
            *(v64 + 2) = *(v62 + 2);
            *v64 = v65;
            ++v107;
          }

          result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v105);
          v66 = result;
          if (v105[0])
          {
            mlir::InFlightDiagnostic::report(v105);
            result = v66;
          }

          if (v115 == 1)
          {
            if (v114 != &v115)
            {
              free(v114);
              result = v66;
            }

            v67 = v112;
            if (v112)
            {
              v68 = v113;
              v69 = v112;
              if (v113 != v112)
              {
                do
                {
                  v68 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v68 - 1);
                }

                while (v68 != v67);
                v69 = v112;
              }

              v113 = v67;
              operator delete(v69);
              result = v66;
            }

            v70 = v110;
            if (!v110)
            {
              goto LABEL_138;
            }

            v71 = v111;
            v72 = v110;
            if (v111 == v110)
            {
              goto LABEL_137;
            }

            do
            {
              v85 = *--v71;
              v84 = v85;
              *v71 = 0;
              if (v85)
              {
                operator delete[](v84);
              }
            }

            while (v71 != v70);
            goto LABEL_136;
          }

          return result;
        }
      }

      else
      {
        v96 = *v61;
        v97 = 1;
      }
    }

LABEL_25:
    if (++v24 == v22)
    {
      return 1;
    }
  }

  v91[0] = "invalid input tensor shapes, all input shapes must ";
  v92 = 259;
  mlir::OpState::emitOpError(this, v91, v105);
  if (v105[0])
  {
    v102 = 3;
    v103 = "match except at axis";
    v104 = 20;
    v74 = &v102;
    v75 = v106;
    if (v107 >= v108)
    {
      if (v106 <= &v102 && v106 + 24 * v107 > &v102)
      {
        v86 = &v102 - v106;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v106, v109, v107 + 1, 24);
        v75 = v106;
        v74 = (v106 + v86);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v106, v109, v107 + 1, 24);
        v74 = &v102;
        v75 = v106;
      }
    }

    v76 = &v75[24 * v107];
    v77 = *v74;
    *(v76 + 2) = *(v74 + 2);
    *v76 = v77;
    ++v107;
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v105);
  v66 = result;
  if (v105[0])
  {
    mlir::InFlightDiagnostic::report(v105);
    result = v66;
  }

  if (v115 == 1)
  {
    if (v114 != &v115)
    {
      free(v114);
      result = v66;
    }

    v78 = v112;
    if (v112)
    {
      v79 = v113;
      v80 = v112;
      if (v113 != v112)
      {
        do
        {
          v79 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v79 - 1);
        }

        while (v79 != v78);
        v80 = v112;
      }

      v113 = v78;
      operator delete(v80);
      result = v66;
    }

    v70 = v110;
    if (!v110)
    {
      goto LABEL_138;
    }

    v81 = v111;
    v72 = v110;
    if (v111 == v110)
    {
LABEL_137:
      v111 = v70;
      operator delete(v72);
      result = v66;
LABEL_138:
      if (v106 != v109)
      {
        free(v106);
        return v66;
      }

      return result;
    }

    do
    {
      v83 = *--v81;
      v82 = v83;
      *v81 = 0;
      if (v83)
      {
        operator delete[](v82);
      }
    }

    while (v81 != v70);
LABEL_136:
    v72 = v110;
    goto LABEL_137;
  }

  return result;
}

uint64_t mlir::mps::ReshapeOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v40 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    v13 = *a7;
  }

  else
  {
    v13 = 0;
  }

  v30 = a6;
  v31[0] = 0;
  v32 = 0;
  v33 = v13;
  v34 = a9;
  v35 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v30);
    if (v32 == 1)
    {
      v32 = 0;
    }

    mlir::OperationName::OperationName(v31, "mps.reshape", 11, Context);
    v32 = 1;
  }

  v36 = a4;
  v37 = a5;
  v38 = a4;
  v39 = 0;
  v15 = mlir::ValueRange::dereference_iterator(&v38, 0);
  v16 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v15 + 8) & 0xFFFFFFFFFFFFFFF8));
  v28 = 0;
  v29 = 0;
  if (v16)
  {
    v18 = v17;
    v19 = v16;
    v38 = v36;
    v39 = 1;
    v38 = mlir::ValueRange::offset_base(&v38, 1);
    v39 = 0;
    v27 = &v28;
    v38 = mlir::ValueRange::dereference_iterator(&v38, 0);
    DefiningOp = mlir::Value::getDefiningOp(&v38);
    if (DefiningOp)
    {
      v21 = mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v27, DefiningOp);
      v16 = v19;
      if (v21)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v16 = v19;
    }
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(v16);
  v22 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
LABEL_14:
  v24 = *(a11 + 8);
  if (v24 >= *(a11 + 12))
  {
    v26 = v22;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v24 + 1, 8);
    v22 = v26;
    v24 = *(a11 + 8);
  }

  *(*a11 + 8 * v24) = v22;
  ++*(a11 + 8);
  return 1;
}

void *mlir::mps::anonymous namespace::inferReshapeReturnType(void *a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = a2;
  v7 = a1;
  v72[6] = *MEMORY[0x1E69E9840];
  v64 = a1;
  v65 = a2;
  v70 = v72;
  v71 = 0x600000000;
  v8 = 1;
  mlir::getIntValues<long long>(a3, a4, &v70, 1);
  v67 = v69;
  v68 = 0x600000000;
  if (v71)
  {
    v9 = 0;
    v10 = v70;
    v11 = v70 + 8 * v71;
    v8 = 1;
    do
    {
      while (1)
      {
        v13 = *v10;
        if (*v10 == -1 || v13 == 0x8000000000000000)
        {
          break;
        }

        if (v13)
        {
          v17 = 1;
        }

        else
        {
          v17 = a5 == 0;
        }

        if (!v17)
        {
          if (mlir::CallOpInterface::getArgOperands(&v64))
          {
            mlir::CallableOpInterface::getArgAttrsAttr(&v64);
            if (v9 < v18)
            {
              *v10 = *(mlir::CallableOpInterface::getArgAttrsAttr(&v64) + 8 * v9);
            }
          }
        }

        v12 = *v10;
        v10 += 8;
        v8 *= v12;
        ++v9;
        if (v10 == v11)
        {
          goto LABEL_20;
        }
      }

      v15 = v70;
      v16 = v68;
      if (v68 >= HIDWORD(v68))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, v69, v68 + 1, 8);
        v16 = v68;
      }

      *(v67 + v16) = &v15[8 * v9];
      LODWORD(v68) = v68 + 1;
      ++v9;
      v10 += 8;
    }

    while (v10 != v11);
LABEL_20:
    v7 = v64;
    v6 = v65;
  }

  v66[0] = v7;
  v66[1] = v6;
  if (mlir::CallOpInterface::getArgOperands(v66))
  {
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v66);
    if (v20)
    {
      v21 = 8 * v20;
      while (*ArgAttrsAttr)
      {
        ++ArgAttrsAttr;
        v21 -= 8;
        if (!v21)
        {
          goto LABEL_26;
        }
      }

LABEL_34:
      v29 = v68;
      if (!v68)
      {
        goto LABEL_43;
      }

      v30 = v67;
      v31 = (v68 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v31)
      {
        v32 = v31 + 1;
        v33 = (v31 + 1) & 0x3FFFFFFFFFFFFFFELL;
        v34 = v67 + 8 * v33;
        v35 = (v67 + 8);
        v36 = v33;
        do
        {
          v37 = *v35;
          **(v35 - 1) = 0;
          *v37 = 0;
          v35 += 2;
          v36 -= 2;
        }

        while (v36);
        if (v32 == v33)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v34 = v67;
      }

      v38 = &v30[8 * v29];
      do
      {
        v39 = *v34;
        v34 += 8;
        *v39 = 0;
      }

      while (v34 != v38);
      goto LABEL_43;
    }
  }

LABEL_26:
  if (!v8)
  {
    goto LABEL_34;
  }

  if (!mlir::CallOpInterface::getArgOperands(&v64))
  {
    goto LABEL_43;
  }

  v22 = mlir::CallableOpInterface::getArgAttrsAttr(&v64);
  if (v23)
  {
    v24 = 8 * v23;
    while (*v22 != 0x8000000000000000)
    {
      ++v22;
      v24 -= 8;
      if (!v24)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
LABEL_32:
    v25 = v68;
    v26 = mlir::CallableOpInterface::getArgAttrsAttr(&v64);
    NumElements = mlir::ShapedType::getNumElements(v26, v27);
    if (v25 == 1)
    {
      **v67 = NumElements / v8;
      goto LABEL_43;
    }

    if (NumElements == v8)
    {
      v53 = v68;
      if (v68)
      {
        v54 = v67;
        v55 = (v68 - 1) & 0x1FFFFFFFFFFFFFFFLL;
        if (v55)
        {
          v56 = v55 + 1;
          v57 = (v55 + 1) & 0x3FFFFFFFFFFFFFFELL;
          v58 = v67 + 8 * v57;
          v59 = (v67 + 8);
          v60 = v57;
          do
          {
            v61 = *v59;
            **(v59 - 1) = 1;
            *v61 = 1;
            v59 += 2;
            v60 -= 2;
          }

          while (v60);
          if (v56 == v57)
          {
            goto LABEL_43;
          }
        }

        else
        {
          v58 = v67;
        }

        v62 = &v54[8 * v53];
        do
        {
          v63 = *v58;
          v58 += 8;
          *v63 = 1;
        }

        while (v58 != v62);
      }
    }
  }

LABEL_43:
  v40 = v70;
  v41 = v71;
  if (!v71)
  {
    goto LABEL_57;
  }

  v42 = (v71 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  v43 = v70;
  if (v42 >= 3)
  {
    v44 = v42 + 1;
    v43 = v70 + 8 * (v44 & 0x3FFFFFFFFFFFFFFCLL);
    v45 = (v70 + 16);
    v46.i64[0] = -1;
    v46.i64[1] = -1;
    v47 = v44 & 0x3FFFFFFFFFFFFFFCLL;
    while (1)
    {
      v48 = vmovn_s64(vceqq_s64(v45[-1], v46));
      if (v48.i8[0])
      {
        v45[-1].i64[0] = 0x8000000000000000;
        if ((v48.i8[4] & 1) == 0)
        {
LABEL_49:
          v49 = vmovn_s64(vceqq_s64(*v45, v46));
          if ((v49.i8[0] & 1) == 0)
          {
            goto LABEL_50;
          }

          goto LABEL_54;
        }
      }

      else if ((v48.i8[4] & 1) == 0)
      {
        goto LABEL_49;
      }

      v45[-1].i64[1] = 0x8000000000000000;
      v49 = vmovn_s64(vceqq_s64(*v45, v46));
      if ((v49.i8[0] & 1) == 0)
      {
LABEL_50:
        if (v49.i8[4])
        {
          goto LABEL_55;
        }

        goto LABEL_46;
      }

LABEL_54:
      v45->i64[0] = 0x8000000000000000;
      if (v49.i8[4])
      {
LABEL_55:
        v45->i64[1] = 0x8000000000000000;
      }

LABEL_46:
      v45 += 2;
      v47 -= 4;
      if (!v47)
      {
        if (v44 == (v44 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_57;
        }

        goto LABEL_64;
      }
    }
  }

  do
  {
LABEL_64:
    if (*v43 == -1)
    {
      *v43 = 0x8000000000000000;
    }

    ++v43;
  }

  while (v43 != &v40[v41]);
LABEL_57:
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(v64);
  v66[0] = mlir::RankedTensorType::get(v40, v41, ElementTypeOrSelf, 0);
  v51 = mlir::TensorType::operator mlir::ShapedType(v66);
  if (v67 != v69)
  {
    free(v67);
  }

  if (v70 != v72)
  {
    free(v70);
  }

  return v51;
}