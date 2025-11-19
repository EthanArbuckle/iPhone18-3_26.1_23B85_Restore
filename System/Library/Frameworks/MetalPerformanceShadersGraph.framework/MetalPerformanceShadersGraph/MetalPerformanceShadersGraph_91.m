void mlir::tensor::ParallelInsertSliceOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t *a9, uint64_t a10, void *__src, uint64_t a12)
{
  v43[6] = *MEMORY[0x1E69E9840];
  v41 = v43;
  v42 = 0x600000000;
  v38 = v40;
  v39 = 0x600000000;
  v35 = v37;
  v36 = 0x600000000;
  v32 = v34;
  v33 = 0x600000000;
  v29 = v31;
  v30 = 0x600000000;
  v26 = v28;
  v27 = 0x600000000;
  mlir::dispatchIndexOpFoldResults(a5, a6, &v32, &v41);
  mlir::dispatchIndexOpFoldResults(a7, a8, &v29, &v38);
  mlir::dispatchIndexOpFoldResults(a9, a10, &v26, &v35);
  *(a2 + 192) = 0;
  v16 = *(a2 + 120);
  if (a12 + v16 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 112, a2 + 128, a12 + v16, 16);
    LODWORD(v16) = *(a2 + 120);
  }

  if (a12)
  {
    memcpy((*(a2 + 112) + 16 * v16), __src, 16 * a12);
    LODWORD(v16) = *(a2 + 120);
  }

  *(a2 + 120) = v16 + a12;
  mlir::ValueRange::ValueRange(v25, 0, 0);
  mlir::ValueRange::ValueRange(v24, v32, v33);
  mlir::ValueRange::ValueRange(v23, v29, v30);
  mlir::ValueRange::ValueRange(v22, v26, v27);
  DenseI64ArrayAttr = mlir::Builder::getDenseI64ArrayAttr(a1, v41, v42);
  v18 = mlir::Builder::getDenseI64ArrayAttr(a1, v38, v39);
  v19 = mlir::Builder::getDenseI64ArrayAttr(a1, v35, v36);
  mlir::tensor::ParallelInsertSliceOp::build(v19, a2, v25[0], v25[1], a3, a4, v24[0], v24[1], v23[0], v23[1], v22[0], v22[1], DenseI64ArrayAttr, v18, v19);
  if (v26 != v28)
  {
    free(v26);
  }

  if (v29 != v31)
  {
    free(v29);
  }

  if (v32 != v34)
  {
    free(v32);
  }

  if (v35 != v37)
  {
    free(v35);
  }

  if (v38 != v40)
  {
    free(v38);
  }

  if (v41 != v43)
  {
    free(v41);
  }
}

void mlir::tensor::ParallelInsertSliceOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v34 = a6;
  v35 = a5;
  mlir::OperationState::addOperands(a2, &v35, 1uLL);
  mlir::OperationState::addOperands(a2, &v34, 1uLL);
  mlir::OperationState::addOperands(a2, a7, a8);
  mlir::OperationState::addOperands(a2, a9, a10);
  mlir::OperationState::addOperands(a2, a11, a12);
  v20 = *(a2 + 256);
  if (!v20)
  {
    v21 = operator new(0x30uLL);
    *v21 = 0u;
    v21[1] = 0u;
    *(v21 + 28) = 0u;
    *(a2 + 256) = v21;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v36;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v36;
    {
      mlir::tensor::ParallelInsertSliceOp::build();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v20 = *(a2 + 256);
  }

  *(v20 + 24) = 0x100000001;
  *(v20 + 32) = a8;
  *(v20 + 36) = a10;
  *(v20 + 40) = a12;
  v22 = *(a2 + 256);
  if (v22)
  {
    v23 = a14;
    *v22 = a13;
    v24 = *(a2 + 256);
    if (v24)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v29 = operator new(0x30uLL);
    *v29 = 0u;
    v29[1] = 0u;
    *(v29 + 28) = 0u;
    *(a2 + 256) = v29;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v36;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v36;
    {
      mlir::tensor::ParallelInsertSliceOp::build();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v23 = a14;
    **(a2 + 256) = a13;
    v24 = *(a2 + 256);
    if (v24)
    {
LABEL_7:
      v25 = a15;
      *(v24 + 8) = v23;
      v26 = *(a2 + 256);
      if (v26)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }
  }

  v30 = operator new(0x30uLL);
  *v30 = 0u;
  v30[1] = 0u;
  *(v30 + 28) = 0u;
  *(a2 + 256) = v30;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v36;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v36;
  {
    mlir::tensor::ParallelInsertSliceOp::build();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  v25 = a15;
  *(*(a2 + 256) + 8) = v23;
  v26 = *(a2 + 256);
  if (v26)
  {
LABEL_8:
    *(v26 + 16) = v25;
    v27 = *(a2 + 72);
    v28 = a4 + v27;
    if (a4 + v27 <= *(a2 + 76))
    {
      goto LABEL_9;
    }

LABEL_20:
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v28, 8);
    v27 = *(a2 + 72);
    if (!a4)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

LABEL_17:
  v31 = operator new(0x30uLL);
  *v31 = 0u;
  v31[1] = 0u;
  *(v31 + 28) = 0u;
  *(a2 + 256) = v31;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v36;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v36;
  {
    mlir::tensor::ParallelInsertSliceOp::build();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  *(*(a2 + 256) + 16) = v25;
  v27 = *(a2 + 72);
  v28 = a4 + v27;
  if (a4 + v27 > *(a2 + 76))
  {
    goto LABEL_20;
  }

LABEL_9:
  if (!a4)
  {
    goto LABEL_24;
  }

LABEL_21:
  v32 = 0;
  v33 = *(a2 + 64) + 8 * v27;
  do
  {
    *(v33 + 8 * v32) = mlir::TypeRange::dereference_iterator(a3, v32);
    ++v32;
  }

  while (a4 != v32);
  LODWORD(v27) = *(a2 + 72);
LABEL_24:
  *(a2 + 72) = v27 + a4;
}

uint64_t mlir::tensor::ParallelInsertSliceOp::verify(mlir::Block ***this)
{
  v41 = *MEMORY[0x1E69E9840];
  ParentOp = (*this)[2];
  if (ParentOp)
  {
    ParentOp = mlir::Block::getParentOp(ParentOp);
  }

  if (mlir::OpInterface<mlir::ParallelCombiningOpInterface,mlir::detail::ParallelCombiningOpInterfaceInterfaceTraits>::getInterfaceFor(ParentOp))
  {
    v3 = (*this)[9];
    v4 = (*(*(v3 + 3) + 8) & 0xFFFFFFFFFFFFFFF8);
    v5 = (*(*(v3 + 4 * *(*this + 26) + 3) + 8) & 0xFFFFFFFFFFFFFFF8);
    v31 = (*this)[10];
    mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v31);
    v31 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 9];
    v6 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v31);
    v8 = v7;
    v31 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 10];
    mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v31);
    v29[0] = v4;
    v31 = v5;
    RHS = mlir::AffineBinaryOpExpr::getRHS(&v31);
    Values = mlir::SparseElementsAttr::getValues(&v31);
    v11 = mlir::RankedTensorType::get(v6, v8, RHS, Values);
    v31 = v11;
    v12 = mlir::TensorType::operator mlir::ShapedType(&v31);
    v14 = v13;
    v15 = mlir::TensorType::operator mlir::ShapedType(v29);
    isRankReducedType = mlir::isRankReducedType(v12, v14, v15);
    return produceSliceErrorMsg(isRankReducedType, *this, v11);
  }

  v29[0] = "expected ParallelCombiningOpInterface parent, got:";
  v30 = 259;
  mlir::OpState::emitError(this, v29, &v31);
  v18 = (*this)[2];
  if (!v18)
  {
    v19 = 0;
    if (!v31)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v19 = mlir::Block::getParentOp(v18);
  if (v31)
  {
LABEL_7:
    mlir::Diagnostic::operator<<(&v32, v19);
  }

LABEL_8:
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v31);
  v20 = result;
  if (v31)
  {
    mlir::InFlightDiagnostic::report(&v31);
    result = v20;
  }

  if (v40 == 1)
  {
    if (v39 != &v40)
    {
      free(v39);
      result = v20;
    }

    v21 = __p;
    if (__p)
    {
      v22 = v38;
      v23 = __p;
      if (v38 != __p)
      {
        do
        {
          v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
        }

        while (v22 != v21);
        v23 = __p;
      }

      v38 = v21;
      operator delete(v23);
      result = v20;
    }

    v24 = v35;
    if (v35)
    {
      v25 = v36;
      v26 = v35;
      if (v36 != v35)
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
        v26 = v35;
      }

      v36 = v24;
      operator delete(v26);
      result = v20;
    }

    if (v33 != &v34)
    {
      free(v33);
      return v20;
    }
  }

  return result;
}

void mlir::tensor::ParallelInsertSliceOp::getCanonicalizationPatterns(void *a1, uint64_t a2)
{
  v4 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v64, 1);
  mlir::Pattern::Pattern((v4 + 2), "tensor.parallel_insert_slice", 28, v64, a2, 0, 0);
  *v4 = &unk_1F5B0A498;
  if (*(v4 + 9))
  {
    v5 = v4[22];
    if (v5 <= v4[23])
    {
      goto LABEL_3;
    }

LABEL_14:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v4 + 20), (v4 + 24), v5, 16);
    v4[22] = v4[22];
    v7 = a1[2];
    v6 = a1[3];
    if (v7 < v6)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  v64 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::InsertSliceOpConstantArgumentFolder<mlir::tensor::ParallelInsertSliceOp>]";
  v65 = 145;
  v9 = llvm::StringRef::find(&v64, "DesiredTypeName = ", 0x12uLL, 0);
  if (v65 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v65;
  }

  v11 = &v64[v10];
  v12 = v65 - v10;
  if (v65 - v10 >= 0x12)
  {
    v13 = 18;
  }

  else
  {
    v13 = v65 - v10;
  }

  v14 = &v11[v13];
  v15 = v12 - v13;
  if (v15 >= v15 - 1)
  {
    --v15;
  }

  *(v4 + 8) = v14;
  *(v4 + 9) = v15;
  v5 = v4[22];
  if (v5 > v4[23])
  {
    goto LABEL_14;
  }

LABEL_3:
  v4[22] = v5;
  v7 = a1[2];
  v6 = a1[3];
  if (v7 < v6)
  {
LABEL_4:
    *v7 = v4;
    v8 = v7 + 8;
    goto LABEL_27;
  }

LABEL_15:
  v16 = a1[1];
  v17 = v7 - v16;
  v18 = (v7 - v16) >> 3;
  v19 = v18 + 1;
  if ((v18 + 1) >> 61)
  {
    goto LABEL_80;
  }

  v20 = v6 - v16;
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
      goto LABEL_81;
    }

    v22 = operator new(8 * v21);
  }

  else
  {
    v22 = 0;
  }

  v23 = &v22[8 * v18];
  *v23 = v4;
  v8 = v23 + 8;
  memcpy(v22, v16, v17);
  a1[1] = v22;
  a1[2] = v8;
  a1[3] = &v22[8 * v21];
  if (v16)
  {
    operator delete(v16);
  }

LABEL_27:
  a1[2] = v8;
  v24 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v64, 1);
  mlir::Pattern::Pattern((v24 + 2), "tensor.parallel_insert_slice", 28, v64, a2, 0, 0);
  *v24 = &unk_1F5B0A538;
  if (*(v24 + 9))
  {
    v25 = v24[22];
    if (v25 <= v24[23])
    {
      goto LABEL_29;
    }

LABEL_40:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v24 + 20), (v24 + 24), v25, 16);
    v24[22] = v24[22];
    v27 = a1[2];
    v26 = a1[3];
    if (v27 < v26)
    {
      goto LABEL_30;
    }

    goto LABEL_41;
  }

  v64 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::InsertSliceOpCastFolder<mlir::tensor::ParallelInsertSliceOp>]";
  v65 = 133;
  v29 = llvm::StringRef::find(&v64, "DesiredTypeName = ", 0x12uLL, 0);
  if (v65 >= v29)
  {
    v30 = v29;
  }

  else
  {
    v30 = v65;
  }

  v31 = &v64[v30];
  v32 = v65 - v30;
  if (v65 - v30 >= 0x12)
  {
    v33 = 18;
  }

  else
  {
    v33 = v65 - v30;
  }

  v34 = &v31[v33];
  v35 = v32 - v33;
  if (v35 >= v35 - 1)
  {
    --v35;
  }

  *(v24 + 8) = v34;
  *(v24 + 9) = v35;
  v25 = v24[22];
  if (v25 > v24[23])
  {
    goto LABEL_40;
  }

LABEL_29:
  v24[22] = v25;
  v27 = a1[2];
  v26 = a1[3];
  if (v27 < v26)
  {
LABEL_30:
    *v27 = v24;
    v28 = v27 + 8;
    goto LABEL_53;
  }

LABEL_41:
  v36 = a1[1];
  v37 = v27 - v36;
  v38 = (v27 - v36) >> 3;
  v39 = v38 + 1;
  if ((v38 + 1) >> 61)
  {
    goto LABEL_80;
  }

  v40 = v26 - v36;
  if (v40 >> 2 > v39)
  {
    v39 = v40 >> 2;
  }

  if (v40 >= 0x7FFFFFFFFFFFFFF8)
  {
    v41 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v41 = v39;
  }

  if (v41)
  {
    if (v41 >> 61)
    {
      goto LABEL_81;
    }

    v42 = operator new(8 * v41);
  }

  else
  {
    v42 = 0;
  }

  v43 = &v42[8 * v38];
  *v43 = v24;
  v28 = v43 + 8;
  memcpy(v42, v36, v37);
  a1[1] = v42;
  a1[2] = v28;
  a1[3] = &v42[8 * v41];
  if (v36)
  {
    operator delete(v36);
  }

LABEL_53:
  a1[2] = v28;
  v44 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v64, 1);
  mlir::Pattern::Pattern((v44 + 2), "tensor.parallel_insert_slice", 28, v64, a2, 0, 0);
  *v44 = &unk_1F5B0A5A8;
  if (*(v44 + 9))
  {
    v45 = v44[22];
    if (v45 <= v44[23])
    {
      goto LABEL_55;
    }

LABEL_66:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v44 + 20), (v44 + 24), v45, 16);
    v44[22] = v44[22];
    v47 = a1[2];
    v46 = a1[3];
    if (v47 < v46)
    {
      goto LABEL_56;
    }

    goto LABEL_67;
  }

  v64 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::InsertSliceOpSourceCastInserter<mlir::tensor::ParallelInsertSliceOp>]";
  v65 = 141;
  v49 = llvm::StringRef::find(&v64, "DesiredTypeName = ", 0x12uLL, 0);
  if (v65 >= v49)
  {
    v50 = v49;
  }

  else
  {
    v50 = v65;
  }

  v51 = &v64[v50];
  v52 = v65 - v50;
  if (v65 - v50 >= 0x12)
  {
    v53 = 18;
  }

  else
  {
    v53 = v65 - v50;
  }

  v54 = &v51[v53];
  v55 = v52 - v53;
  if (v55 >= v55 - 1)
  {
    --v55;
  }

  *(v44 + 8) = v54;
  *(v44 + 9) = v55;
  v45 = v44[22];
  if (v45 > v44[23])
  {
    goto LABEL_66;
  }

LABEL_55:
  v44[22] = v45;
  v47 = a1[2];
  v46 = a1[3];
  if (v47 < v46)
  {
LABEL_56:
    *v47 = v44;
    v48 = v47 + 8;
    goto LABEL_79;
  }

LABEL_67:
  v56 = a1[1];
  v57 = v47 - v56;
  v58 = (v47 - v56) >> 3;
  v59 = v58 + 1;
  if ((v58 + 1) >> 61)
  {
LABEL_80:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v60 = v46 - v56;
  if (v60 >> 2 > v59)
  {
    v59 = v60 >> 2;
  }

  if (v60 >= 0x7FFFFFFFFFFFFFF8)
  {
    v61 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v61 = v59;
  }

  if (v61)
  {
    if (!(v61 >> 61))
    {
      v62 = operator new(8 * v61);
      goto LABEL_77;
    }

LABEL_81:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v62 = 0;
LABEL_77:
  v63 = &v62[8 * v58];
  *v63 = v44;
  v48 = v63 + 8;
  memcpy(v62, v56, v57);
  a1[1] = v62;
  a1[2] = v48;
  a1[3] = &v62[8 * v61];
  if (v56)
  {
    operator delete(v56);
  }

LABEL_79:
  a1[2] = v48;
}

uint64_t mlir::tensor::ScatterOp::getAsmResultNames(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
{
  if (*(*a1 + 36))
  {
    v4 = *a1 - 16;
  }

  else
  {
    v4 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);

  return a2(a3, NextResultAtOffset, "scatter", 7);
}

BOOL mlir::tensor::ScatterOp::verify(mlir::tensor::ScatterOp *this)
{
  v81 = *MEMORY[0x1E69E9840];
  v70[0] = *(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(v70);
  v3 = v2;
  v70[0] = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  v4 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(v70);
  v6 = v5;
  v7 = *this;
  v70[0] = *(*(*(*this + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8;
  Value = mlir::ArrayAttr::getValue(v70);
  if ((verifyGatherOrScatterDims(v7, v4, v6, Value, v9, v3, "scatter", 7, "dest", 4) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72))
  {
    v10 = mlir::tensor::GatherOp::inferResultType(*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, *(*(*(*this + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8, v4, v6, 0);
    v11 = 1;
    v12 = mlir::tensor::GatherOp::inferResultType(*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, *(*(*(*this + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8, v4, v6, 1);
    v13 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (v13 != v10 && v13 != v12)
    {
      v15 = v12;
      v65[0] = "source type mismatch: expected ";
      v66 = 259;
      mlir::OpState::emitOpError(this, v65, v70);
      if (v70[0])
      {
        v16 = &v67;
        mlir::DiagnosticArgument::DiagnosticArgument(&v67, v10);
        v17 = v71;
        if (v72 >= v73)
        {
          if (v71 <= &v67 && v71 + 24 * v72 > &v67)
          {
            v59 = &v67 - v71;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v72 + 1, 24);
            v17 = v71;
            v16 = (v71 + v59);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v72 + 1, 24);
            v16 = &v67;
            v17 = v71;
          }
        }

        v18 = &v17[24 * v72];
        v19 = *v16;
        *(v18 + 2) = *(v16 + 2);
        *v18 = v19;
        v20 = ++v72;
        if (v70[0])
        {
          v67 = 3;
          v68 = " or its rank-reduced variant ";
          v69 = 29;
          v21 = &v67;
          v22 = v71;
          if (v20 >= v73)
          {
            if (v71 <= &v67 && v71 + 24 * v20 > &v67)
            {
              v60 = &v67 - v71;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v20 + 1, 24);
              v22 = v71;
              v21 = (v71 + v60);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v20 + 1, 24);
              v21 = &v67;
              v22 = v71;
            }
          }

          v23 = &v22[24 * v72];
          v24 = *v21;
          *(v23 + 2) = *(v21 + 2);
          *v23 = v24;
          ++v72;
          if (v70[0])
          {
            v25 = &v67;
            mlir::DiagnosticArgument::DiagnosticArgument(&v67, v15);
            v26 = v71;
            if (v72 >= v73)
            {
              if (v71 <= &v67 && v71 + 24 * v72 > &v67)
              {
                v61 = &v67 - v71;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v72 + 1, 24);
                v26 = v71;
                v25 = (v71 + v61);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v72 + 1, 24);
                v25 = &v67;
                v26 = v71;
              }
            }

            v27 = &v26[24 * v72];
            v28 = *v25;
            *(v27 + 2) = *(v25 + 2);
            *v27 = v28;
            v29 = ++v72;
            if (v70[0])
            {
              v67 = 3;
              v68 = " (got: ";
              v69 = 7;
              v30 = &v67;
              v31 = v71;
              if (v29 >= v73)
              {
                if (v71 <= &v67 && v71 + 24 * v29 > &v67)
                {
                  v62 = &v67 - v71;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v29 + 1, 24);
                  v31 = v71;
                  v30 = (v71 + v62);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v29 + 1, 24);
                  v30 = &v67;
                  v31 = v71;
                }
              }

              v32 = &v31[24 * v72];
              v33 = *v30;
              *(v32 + 2) = *(v30 + 2);
              *v32 = v33;
              ++v72;
              if (v70[0])
              {
                v34 = *(*(*(*this + 72) + 24) + 8);
                v35 = &v67;
                mlir::DiagnosticArgument::DiagnosticArgument(&v67, v34 & 0xFFFFFFFFFFFFFFF8);
                v36 = v71;
                if (v72 >= v73)
                {
                  if (v71 <= &v67 && v71 + 24 * v72 > &v67)
                  {
                    v63 = &v67 - v71;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v72 + 1, 24);
                    v36 = v71;
                    v35 = (v71 + v63);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v72 + 1, 24);
                    v35 = &v67;
                    v36 = v71;
                  }
                }

                v37 = &v36[24 * v72];
                v38 = *v35;
                *(v37 + 2) = *(v35 + 2);
                *v37 = v38;
                v39 = ++v72;
                if (v70[0])
                {
                  v67 = 3;
                  v68 = ")";
                  v69 = 1;
                  v40 = &v67;
                  v41 = v71;
                  if (v39 >= v73)
                  {
                    if (v71 <= &v67 && v71 + 24 * v39 > &v67)
                    {
                      v64 = &v67 - v71;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v39 + 1, 24);
                      v41 = v71;
                      v40 = (v71 + v64);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v74, v39 + 1, 24);
                      v40 = &v67;
                      v41 = v71;
                    }
                  }

                  v42 = &v41[24 * v72];
                  v43 = *v40;
                  *(v42 + 2) = *(v40 + 2);
                  *v42 = v43;
                  ++v72;
                }
              }
            }
          }
        }
      }

      v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v70);
      if (v70[0])
      {
        mlir::InFlightDiagnostic::report(v70);
      }

      if (v80 == 1)
      {
        if (v79 != &v80)
        {
          free(v79);
        }

        v44 = __p;
        if (__p)
        {
          v45 = v78;
          v46 = __p;
          if (v78 != __p)
          {
            do
            {
              v45 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v45 - 1);
            }

            while (v45 != v44);
            v46 = __p;
          }

          v78 = v44;
          operator delete(v46);
        }

        v47 = v75;
        if (!v75)
        {
          goto LABEL_56;
        }

        v48 = v76;
        v49 = v75;
        if (v76 == v75)
        {
LABEL_55:
          v76 = v47;
          operator delete(v49);
LABEL_56:
          if (v71 != v74)
          {
            free(v71);
          }

          return v11;
        }

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
LABEL_54:
        v49 = v75;
        goto LABEL_55;
      }
    }
  }

  else
  {
    v65[0] = "requires 'unique' attribute to be set";
    v66 = 259;
    mlir::OpState::emitOpError(this, v65, v70);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v70);
    if (v70[0])
    {
      mlir::InFlightDiagnostic::report(v70);
    }

    if (v80 == 1)
    {
      if (v79 != &v80)
      {
        free(v79);
      }

      v53 = __p;
      if (__p)
      {
        v54 = v78;
        v55 = __p;
        if (v78 != __p)
        {
          do
          {
            v54 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v54 - 1);
          }

          while (v54 != v53);
          v55 = __p;
        }

        v78 = v53;
        operator delete(v55);
      }

      v47 = v75;
      if (!v75)
      {
        goto LABEL_56;
      }

      v56 = v76;
      v49 = v75;
      if (v76 == v75)
      {
        goto LABEL_55;
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

      while (v56 != v47);
      goto LABEL_54;
    }
  }

  return v11;
}

uint64_t mlir::tensor::SplatOp::reifyResultShapes(uint64_t a1, mlir::IndexType **a2, uint64_t a3)
{
  v26[6] = *MEMORY[0x1E69E9840];
  v23 = *(*a1 - 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&v23);
  v24 = v26;
  v25 = 0x600000000;
  if (v6)
  {
    v7 = v6;
    if (v6 < 7)
    {
      v8 = 0;
      v9 = v6;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v26, v6, 8);
      v8 = v25;
      v9 = v7 - v25;
      if (v7 == v25)
      {
        goto LABEL_7;
      }
    }

    bzero(v24 + 8 * v8, 8 * v9);
LABEL_7:
    LODWORD(v25) = v7;
  }

  v10 = *(a3 + 8);
  if (!v10)
  {
    llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpFoldResult,6u>>::append(a3, 1 - v10, &v24);
LABEL_15:
    v14 = v24;
    if (v24 == v26)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v10 == 1)
  {
    goto LABEL_15;
  }

  v11 = v10 << 6;
  v12 = (v11 + *a3 - 64);
  v13 = 64 - v11;
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
  *(a3 + 8) = 1;
  v14 = v24;
  if (v24 != v26)
  {
LABEL_16:
    free(v14);
  }

LABEL_17:
  v24 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  mlir::ArrayAttr::getValue(&v24);
  if (v15 >= 1)
  {
    v16 = 0;
    for (i = 0; i < v20; ++i)
    {
      v24 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
      if (*(mlir::ArrayAttr::getValue(&v24) + 8 * i) == 0x8000000000000000)
      {
        v18 = *(*a1 + 72) + 32 * v16++;
        v19 = *(v18 + 56) | 4;
      }

      else
      {
        v24 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
        Value = mlir::ArrayAttr::getValue(&v24);
        v19 = mlir::Builder::getIndexAttr(a2, *(Value + 8 * i)) & 0xFFFFFFFFFFFFFFFBLL;
      }

      *(**a3 + 8 * i) = v19;
      v24 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
      mlir::ArrayAttr::getValue(&v24);
    }
  }

  return 1;
}

unint64_t mlir::tensor::SplatOp::fold(void *a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = **(a2 + 40);
  if (v2)
  {
    v3 = *(*v2 + 136);
    if (v3 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      v12 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::TensorType::hasRank(&v12))
      {
        Value = mlir::ArrayAttr::getValue(&v12);
        if (!v7)
        {
LABEL_12:
          v12 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
          v9 = mlir::TensorType::operator mlir::ShapedType(&v12);
          v13[0] = v2;
          return mlir::DenseElementsAttr::get(v9, v10, v13, 1uLL) & 0xFFFFFFFFFFFFFFFBLL;
        }

        v8 = 8 * v7;
        while (*Value != 0x8000000000000000)
        {
          ++Value;
          v8 -= 8;
          if (!v8)
          {
            goto LABEL_12;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t mlir::tensor::PackOp::getAsmResultNames(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
{
  if (*(*a1 + 36))
  {
    v4 = *a1 - 16;
  }

  else
  {
    v4 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);

  return a2(a3, NextResultAtOffset, "pack", 4);
}

void mlir::tensor::PackOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, char a10, void *a11, uint64_t a12)
{
  DenseI64ArrayAttr = a12;
  v29[6] = *MEMORY[0x1E69E9840];
  v27 = v29;
  v28 = 0x600000000;
  v24 = v26;
  v25 = 0x600000000;
  mlir::dispatchIndexOpFoldResults(a7, a8, &v24, &v27);
  v17 = *(a4 + 8);
  if (a12)
  {
    DenseI64ArrayAttr = mlir::Builder::getDenseI64ArrayAttr(a1, a11, a12);
  }

  v18 = mlir::Builder::getDenseI64ArrayAttr(a1, a5, a6);
  mlir::ValueRange::ValueRange(v23, v24, v25);
  v19 = mlir::Builder::getDenseI64ArrayAttr(a1, v27, v28);
  if ((a10 & 1) == 0)
  {
    a9 = 0;
  }

  mlir::tensor::PackOp::build(v19, a2, v17 & 0xFFFFFFFFFFFFFFF8, a3, a4, a9, DenseI64ArrayAttr, v18, v23[0], v23[1], v19);
  if (v24 != v26)
  {
    free(v24);
  }

  if (v27 != v29)
  {
    free(v27);
  }
}

void mlir::tensor::PackOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11)
{
  v28 = a5;
  v29 = a4;
  v27 = a6;
  mlir::OperationState::addOperands(a2, &v29, 1uLL);
  mlir::OperationState::addOperands(a2, &v28, 1uLL);
  if (a6)
  {
    mlir::OperationState::addOperands(a2, &v27, 1uLL);
  }

  mlir::OperationState::addOperands(a2, a9, a10);
  v16 = v27 != 0;
  v17 = *(a2 + 256);
  if (!v17)
  {
    v18 = operator new(0x28uLL);
    *v18 = 0u;
    v18[1] = 0u;
    *(v18 + 4) = 0;
    *(a2 + 256) = v18;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v30;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v30;
    {
      mlir::tensor::PackOp::build();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v17 = *(a2 + 256);
  }

  *(v17 + 24) = 0x100000001;
  *(v17 + 32) = v16;
  *(v17 + 36) = a10;
  if (a7)
  {
    v19 = *(a2 + 256);
    if (!v19)
    {
      v20 = operator new(0x28uLL);
      *v20 = 0u;
      v20[1] = 0u;
      *(v20 + 4) = 0;
      *(a2 + 256) = v20;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &v30;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &v30;
      {
        mlir::tensor::PackOp::build();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v19 = *(a2 + 256);
    }

    *(v19 + 8) = a7;
  }

  v21 = *(a2 + 256);
  if (v21)
  {
    v22 = a11;
    *v21 = a8;
    v23 = *(a2 + 256);
    if (v23)
    {
      goto LABEL_15;
    }

LABEL_21:
    v26 = operator new(0x28uLL);
    *v26 = 0u;
    v26[1] = 0u;
    *(v26 + 4) = 0;
    *(a2 + 256) = v26;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v30;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v30;
    {
      mlir::tensor::PackOp::build();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    *(*(a2 + 256) + 16) = v22;
    v24 = *(a2 + 72);
    if (v24 >= *(a2 + 76))
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v25 = operator new(0x28uLL);
  *v25 = 0u;
  v25[1] = 0u;
  *(v25 + 4) = 0;
  *(a2 + 256) = v25;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v30;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v30;
  {
    mlir::tensor::PackOp::build();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  v22 = a11;
  **(a2 + 256) = a8;
  v23 = *(a2 + 256);
  if (!v23)
  {
    goto LABEL_21;
  }

LABEL_15:
  *(v23 + 16) = v22;
  v24 = *(a2 + 72);
  if (v24 >= *(a2 + 76))
  {
LABEL_16:
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v24 + 1, 8);
    LODWORD(v24) = *(a2 + 72);
  }

LABEL_17:
  *(*(a2 + 64) + 8 * v24) = a3;
  ++*(a2 + 72);
}

uint64_t mlir::tensor::PackOp::reifyResultShapes(uint64_t *a1, mlir::IndexType **a2, uint64_t a3)
{
  v32[6] = *MEMORY[0x1E69E9840];
  v5 = *a1;
  __src = (*(*(*(*a1 + 72) + 32 * *(*a1 + 104) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  mlir::ArrayAttr::getValue(&__src);
  __src = v32;
  v31 = 0x600000000;
  if (v6)
  {
    v7 = v6;
    if (v6 < 7)
    {
      v8 = 0;
      v9 = v6;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v32, v6, 8);
      v8 = v31;
      v9 = v7 - v31;
      if (v7 == v31)
      {
        goto LABEL_7;
      }
    }

    bzero(__src + 8 * v8, 8 * v9);
LABEL_7:
    LODWORD(v31) = v7;
  }

  v10 = *(a3 + 8);
  if (!v10)
  {
    llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpFoldResult,6u>>::append(a3, 1 - v10, &__src);
LABEL_15:
    v14 = __src;
    if (__src == v32)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v10 == 1)
  {
    goto LABEL_15;
  }

  v11 = v10 << 6;
  v12 = (v11 + *a3 - 64);
  v13 = 64 - v11;
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
  *(a3 + 8) = 1;
  v14 = __src;
  if (__src != v32)
  {
LABEL_16:
    free(v14);
  }

LABEL_17:
  v15 = *(v5 + 24);
  v16 = *(*(v5 + 72) + 32 * *(v5 + 104) + 24);
  v29 = *(v16 + 8) & 0xFFFFFFFFFFFFFFF8;
  __src = v32;
  v31 = 0x600000000;
  mlir::ArrayAttr::getValue(&v29);
  if (v17 >= 1)
  {
    for (i = 0; i < v21; i = (i + 1))
    {
      MixedSize = mlir::tensor::getMixedSize(a2, v15, v16, i);
      v20 = v31;
      if (v31 >= HIDWORD(v31))
      {
        v22 = MixedSize;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v32, v31 + 1, 8);
        MixedSize = v22;
        v20 = v31;
      }

      *(__src + v20) = MixedSize;
      LODWORD(v31) = v31 + 1;
      mlir::ArrayAttr::getValue(&v29);
    }
  }

  v23 = *a3;
  v24 = __src;
  if (v23 != &__src)
  {
    if (__src != v32)
    {
      if (*v23 != v23 + 16)
      {
        free(*v23);
        v24 = __src;
      }

      *v23 = v24;
      *(v23 + 8) = v31;
      __src = v32;
      HIDWORD(v31) = 0;
      goto LABEL_39;
    }

    v25 = v31;
    v26 = *(v23 + 8);
    if (v26 >= v31)
    {
      if (v31)
      {
        memmove(*v23, __src, 8 * v31);
      }

      goto LABEL_38;
    }

    if (*(v23 + 12) >= v31)
    {
      if (v26)
      {
        memmove(*v23, __src, 8 * v26);
        v27 = v31 - v26;
        if (v31 == v26)
        {
LABEL_38:
          *(v23 + 8) = v25;
LABEL_39:
          LODWORD(v31) = 0;
          v24 = __src;
          goto LABEL_40;
        }
      }

      else
      {
        v26 = 0;
        v27 = v31;
        if (!v31)
        {
          goto LABEL_38;
        }
      }
    }

    else
    {
      *(v23 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v23, v23 + 16, v25, 8);
      v26 = 0;
      v27 = v31;
      if (!v31)
      {
        goto LABEL_38;
      }
    }

    memcpy((*v23 + 8 * v26), __src + 8 * v26, 8 * v27);
    goto LABEL_38;
  }

LABEL_40:
  if (v24 != v32)
  {
    free(v24);
  }

  return 1;
}

void mlir::tensor::PackOp::getMixedTiles(mlir::tensor::PackOp *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *this;
  Context = mlir::Attribute::getContext((*this + 24));
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  v13 = *(v3 + 16 * ((*(v3 + 44) >> 23) & 1) + 80);
  v4 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v13);
  if (v5)
  {
    v6 = v4;
    v7 = 0;
    v8 = 8 * v5;
    do
    {
      if (*v6 == 0x8000000000000000)
      {
        v9 = v7++;
        v10 = *(*(v3 + 72) + 32 * (*(v3 + 108) + *(v3 + 104) + *(v3 + 112)) + 32 * v9 + 24) | 4;
      }

      else
      {
        v10 = mlir::Builder::getI64IntegerAttr(&Context, *v6) & 0xFFFFFFFFFFFFFFFBLL;
      }

      v11 = *(a2 + 8);
      if (v11 >= *(a2 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v11 + 1, 8);
        v11 = *(a2 + 8);
      }

      *(*a2 + 8 * v11) = v10;
      ++*(a2 + 8);
      ++v6;
      v8 -= 8;
    }

    while (v8);
  }
}

void mlir::tensor::PackOp::getStaticTiles(mlir::tensor::PackOp *this@<X0>, void *a2@<X8>)
{
  v8[6] = *MEMORY[0x1E69E9840];
  v3 = *this;
  v7[0] = v8;
  v7[1] = 0x600000000;
  *a2 = a2 + 2;
  a2[1] = 0x600000000;
  mlir::tensor::PackOp::getMixedTiles(&v3, &v4);
  mlir::dispatchIndexOpFoldResults(v4, v5, v7, a2);
  if (v4 != &v6)
  {
    free(v4);
  }

  if (v7[0] != v8)
  {
    free(v7[0]);
  }
}

uint64_t mlir::tensor::PackOp::requirePaddingValue(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, const void *a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t *a9)
{
  v31[6] = *MEMORY[0x1E69E9840];
  if (a6 >= a2)
  {
    v15 = a2;
  }

  else
  {
    v15 = a6;
  }

  v29 = v31;
  v30 = 0x600000000;
  v16 = (8 * v15) >> 3;
  if (v16 < 7)
  {
    v17 = 0;
    v18 = 8 * v15;
    if (!v15)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v31, v16, 8);
  v17 = v30;
  v18 = 8 * v15;
  if (v15)
  {
LABEL_8:
    memcpy(v29 + 8 * v17, a5, v18);
    v17 = v30;
  }

LABEL_9:
  LODWORD(v30) = v17 + (v18 >> 3);
  if (a8)
  {
    mlir::invertPermutationVector(a7, a8, &v27);
    mlir::applyPermutationToVector<long long,6u>(&v29, v27);
    if (v27 != &v28)
    {
      free(v27);
    }
  }

  if (!a4)
  {
LABEL_22:
    v24 = 0;
    v25 = v29;
    if (v29 != v31)
    {
      goto LABEL_23;
    }

    return v24;
  }

  v20 = 8 * a4;
  while (1)
  {
    if (*(a1 + 8 * *a3) == 0x8000000000000000)
    {
      goto LABEL_15;
    }

    ConstantIntValue = mlir::getConstantIntValue(*a9);
    if ((v22 & 1) == 0)
    {
      break;
    }

    if (*(a1 + 8 * *a3) % ConstantIntValue)
    {
      goto LABEL_20;
    }

LABEL_15:
    ++a3;
    ++a9;
    v20 -= 8;
    if (!v20)
    {
      goto LABEL_22;
    }
  }

  v23 = *(v29 + *a3);
  if (v23 == 0x8000000000000000 || !(*(a1 + 8 * *a3) % v23))
  {
    goto LABEL_15;
  }

LABEL_20:
  v24 = 1;
  v25 = v29;
  if (v29 == v31)
  {
    return v24;
  }

LABEL_23:
  free(v25);
  return v24;
}

BOOL mlir::tensor::PackOp::verify(mlir::tensor::PackOp *this)
{
  v108 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v91 = *this;
  mlir::tensor::PackOp::getMixedTiles(&v91, &v104);
  if (v105)
  {
    v3 = v104;
    v4 = 8 * v105;
    while (!mlir::isConstantIntValue(*v3, 0))
    {
      ++v3;
      v4 -= 8;
      if (!v4)
      {
        goto LABEL_5;
      }
    }

    DenseI64ArrayAttr = "invalid zero tile factor";
    v90 = 259;
    mlir::Operation::emitError(v2, &DenseI64ArrayAttr, &v92);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v92);
    if (v92)
    {
      mlir::InFlightDiagnostic::report(&v92);
    }

    if (v103 == 1)
    {
      if (v102 != &v103)
      {
        free(v102);
      }

      v11 = __p;
      if (__p)
      {
        v12 = v101;
        v13 = __p;
        if (v101 != __p)
        {
          do
          {
            v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
          }

          while (v12 != v11);
          v13 = __p;
        }

        v101 = v11;
        operator delete(v13);
      }

      v14 = v98;
      if (!v98)
      {
        goto LABEL_54;
      }

      v15 = v99;
      v16 = v98;
      if (v99 == v98)
      {
        goto LABEL_53;
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
      goto LABEL_52;
    }

    goto LABEL_56;
  }

LABEL_5:
  v86 = *(*(*(v2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&v86);
  v6 = v5;
  v92 = *(v2 + 64 + 16 * ((*(v2 + 44) >> 23) & 1));
  v7 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v92);
  v9 = v8;
  v92 = *(v2 + 64 + 16 * ((*(v2 + 44) >> 23) & 1) + 8);
  if (!v92)
  {
    Context = mlir::Attribute::getContext((v2 + 24));
    DenseI64ArrayAttr = mlir::Builder::getDenseI64ArrayAttr(&Context, 0, 0);
    mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&DenseI64ArrayAttr);
    if (v9 > v6)
    {
      goto LABEL_35;
    }

LABEL_25:
    DenseI64ArrayAttr = 0;
    v88 = 0;
    LODWORD(v89) = 0;
    if (v9)
    {
      v19 = 8 * v9;
      v20 = 8 * v9;
      v21 = v7;
      do
      {
        v22 = *v21++;
        Context = v22;
        llvm::DenseMapBase<llvm::DenseMap<long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::try_emplace<llvm::detail::DenseSetEmpty&>(&DenseI64ArrayAttr, &Context, &v92);
        v20 -= 8;
      }

      while (v20);
      if (v9 == v88)
      {
        for (i = v7; (*i & 0x8000000000000000) == 0 && *i < v6; ++i)
        {
          v19 -= 8;
          if (!v19)
          {
            llvm::deallocate_buffer(DenseI64ArrayAttr, (8 * v89));
          }
        }
      }

      llvm::deallocate_buffer(DenseI64ArrayAttr, (8 * v89));
    }

    llvm::deallocate_buffer(0, 0);
  }

  mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v92);
  if (v9 <= v6)
  {
    goto LABEL_25;
  }

LABEL_35:
  DenseI64ArrayAttr = "invalid inner_dims_pos vector";
  v90 = 259;
  mlir::Operation::emitError(v2, &DenseI64ArrayAttr, &v92);
  v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v92);
  if (v92)
  {
    mlir::InFlightDiagnostic::report(&v92);
  }

  if (v103 == 1)
  {
    if (v102 != &v103)
    {
      free(v102);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v101;
      v26 = __p;
      if (v101 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v101 = v24;
      operator delete(v26);
    }

    v14 = v98;
    if (!v98)
    {
      goto LABEL_54;
    }

    v27 = v99;
    v16 = v98;
    if (v99 == v98)
    {
LABEL_53:
      v99 = v14;
      operator delete(v16);
LABEL_54:
      if (v94 != v97)
      {
        free(v94);
      }

      goto LABEL_56;
    }

    do
    {
      v29 = *--v27;
      v28 = v29;
      *v27 = 0;
      if (v29)
      {
        operator delete[](v28);
      }
    }

    while (v27 != v14);
LABEL_52:
    v16 = v98;
    goto LABEL_53;
  }

LABEL_56:
  if (v104 != &v106)
  {
    free(v104);
  }

  if (!v10)
  {
    return 0;
  }

  v30 = *this;
  v31 = *(*this + 44);
  v32 = (*this + 16 * ((v31 >> 23) & 1));
  v33 = v32[24];
  if ((v31 & 0x800000) != 0)
  {
    v34 = *(v30 + 72);
    if (!v33)
    {
      goto LABEL_88;
    }
  }

  else
  {
    v34 = 0;
    if (!v33)
    {
      goto LABEL_88;
    }
  }

  v35 = *(v34 + 32 * (v32[23] + v32[22]) + 24);
  if (v35)
  {
    v36 = *(v35 + 8) & 0xFFFFFFFFFFFFFFF8;
    v92 = (*(*(*(v30 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v36 != mlir::AffineBinaryOpExpr::getRHS(&v92))
    {
      v104 = "expected padding_value has ";
      v107 = 259;
      mlir::OpState::emitOpError(this, &v104, &v92);
      Context = (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      RHS = mlir::AffineBinaryOpExpr::getRHS(&Context);
      if (v92)
      {
        p_DenseI64ArrayAttr = &DenseI64ArrayAttr;
        mlir::DiagnosticArgument::DiagnosticArgument(&DenseI64ArrayAttr, RHS);
        v39 = v94;
        if (v95 >= v96)
        {
          if (v94 <= &DenseI64ArrayAttr && v94 + 24 * v95 > &DenseI64ArrayAttr)
          {
            v82 = &DenseI64ArrayAttr - v94;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v95 + 1, 24);
            v39 = v94;
            p_DenseI64ArrayAttr = (v94 + v82);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v95 + 1, 24);
            p_DenseI64ArrayAttr = &DenseI64ArrayAttr;
            v39 = v94;
          }
        }

        v40 = &v39[24 * v95];
        v41 = *p_DenseI64ArrayAttr;
        *(v40 + 2) = p_DenseI64ArrayAttr[2];
        *v40 = v41;
        v42 = ++v95;
        if (v92)
        {
          LODWORD(DenseI64ArrayAttr) = 3;
          v88 = " but got: ";
          v89 = 10;
          v43 = &DenseI64ArrayAttr;
          v44 = v94;
          if (v42 >= v96)
          {
            if (v94 <= &DenseI64ArrayAttr && v94 + 24 * v42 > &DenseI64ArrayAttr)
            {
              v83 = &DenseI64ArrayAttr - v94;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v42 + 1, 24);
              v44 = v94;
              v43 = (v94 + v83);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v42 + 1, 24);
              v43 = &DenseI64ArrayAttr;
              v44 = v94;
            }
          }

          v45 = &v44[24 * v95];
          v46 = *v43;
          *(v45 + 2) = v43[2];
          *v45 = v46;
          ++v95;
          if (v92)
          {
            v47 = &DenseI64ArrayAttr;
            mlir::DiagnosticArgument::DiagnosticArgument(&DenseI64ArrayAttr, *(v35 + 8) & 0xFFFFFFFFFFFFFFF8);
            v48 = v94;
            if (v95 >= v96)
            {
              if (v94 <= &DenseI64ArrayAttr && v94 + 24 * v95 > &DenseI64ArrayAttr)
              {
                v84 = &DenseI64ArrayAttr - v94;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v95 + 1, 24);
                v48 = v94;
                v47 = (v94 + v84);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v95 + 1, 24);
                v47 = &DenseI64ArrayAttr;
                v48 = v94;
              }
            }

            v49 = &v48[24 * v95];
            v50 = *v47;
            *(v49 + 2) = v47[2];
            *v49 = v50;
            ++v95;
          }
        }
      }

      v51 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v92);
      if (v92)
      {
        mlir::InFlightDiagnostic::report(&v92);
      }

      if (v103 == 1)
      {
        if (v102 != &v103)
        {
          free(v102);
        }

        v52 = __p;
        if (__p)
        {
          v53 = v101;
          v54 = __p;
          if (v101 != __p)
          {
            do
            {
              v53 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v53 - 1);
            }

            while (v53 != v52);
            v54 = __p;
          }

          v101 = v52;
          operator delete(v54);
        }

        v55 = v98;
        if (!v98)
        {
          goto LABEL_113;
        }

        v56 = v99;
        v57 = v98;
        if (v99 == v98)
        {
LABEL_112:
          v99 = v55;
          operator delete(v57);
LABEL_113:
          if (v94 != v97)
          {
            free(v94);
          }

          return v51;
        }

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
LABEL_111:
        v57 = v98;
        goto LABEL_112;
      }

      return v51;
    }

    return 1;
  }

LABEL_88:
  Context = (*(*(*(v30 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  Value = mlir::ArrayAttr::getValue(&Context);
  v62 = v61;
  v92 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  v63 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v92);
  v65 = v64;
  v91 = *(*(*(*this + 72) + 32 * *(*this + 104) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v66 = mlir::ArrayAttr::getValue(&v91);
  v68 = v67;
  v69 = *this;
  v92 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  if (v92)
  {
    v70 = &v92;
  }

  else
  {
    DenseI64ArrayAttr = mlir::Attribute::getContext((v69 + 24));
    v104 = mlir::Builder::getDenseI64ArrayAttr(&DenseI64ArrayAttr, 0, 0);
    v70 = &v104;
  }

  v71 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(v70);
  v73 = v72;
  mlir::tensor::PackOp::getMixedTiles(this, &v92);
  v74 = mlir::tensor::PackOp::requirePaddingValue(Value, v62, v63, v65, v66, v68, v71, v73, v92);
  if (v92 != &v93)
  {
    free(v92);
  }

  if (!v74)
  {
    return 1;
  }

  v104 = "invalid tile factor or output size provided. Only full tiles are supported when padding_value is not set";
  v107 = 259;
  mlir::OpState::emitOpError(this, &v104, &v92);
  v51 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v92);
  if (v92)
  {
    mlir::InFlightDiagnostic::report(&v92);
  }

  if (v103 == 1)
  {
    if (v102 != &v103)
    {
      free(v102);
    }

    v75 = __p;
    if (__p)
    {
      v76 = v101;
      v77 = __p;
      if (v101 != __p)
      {
        do
        {
          v76 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v76 - 1);
        }

        while (v76 != v75);
        v77 = __p;
      }

      v101 = v75;
      operator delete(v77);
    }

    v55 = v98;
    if (!v98)
    {
      goto LABEL_113;
    }

    v78 = v99;
    v57 = v98;
    if (v99 == v98)
    {
      goto LABEL_112;
    }

    do
    {
      v80 = *--v78;
      v79 = v80;
      *v78 = 0;
      if (v80)
      {
        operator delete[](v79);
      }
    }

    while (v78 != v55);
    goto LABEL_111;
  }

  return v51;
}

void getPackOpResultTypeShape(uint64_t a1, const void *a2, unint64_t a3, uint64_t *a4, uint64_t a5, const void *a6, unint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10)
{
  v43[6] = *MEMORY[0x1E69E9840];
  v16 = a1 + 16;
  *a1 = a1 + 16;
  *(a1 + 8) = 0x600000000;
  if (a3 >= 7)
  {
    v17 = a2;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, a3, 8);
    a2 = v17;
    v18 = *(a1 + 8);
    v19 = *a1;
LABEL_5:
    memcpy((v19 + 8 * v18), a2, 8 * a3);
    v20 = *(a1 + 8);
    goto LABEL_6;
  }

  if (a3)
  {
    v18 = 0;
    v19 = a1 + 16;
    goto LABEL_5;
  }

  v20 = 0;
LABEL_6:
  *(a1 + 8) = v20 + a3;
  __src = v40;
  v39 = 0x600000000;
  if (a7 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v40, a7, 8);
    v21 = v39;
    v22 = __src;
LABEL_10:
    memcpy(&v22[8 * v21], a6, 8 * a7);
    v23 = v39;
    v24 = __src;
    goto LABEL_11;
  }

  if (a7)
  {
    v21 = 0;
    v22 = v40;
    goto LABEL_10;
  }

  v23 = 0;
  v24 = v40;
LABEL_11:
  __dst = v43;
  v42 = 0x600000000;
  v25 = (v23 + a7);
  LODWORD(v39) = v25;
  if (v25)
  {
    if (v24 == v40)
    {
      v26 = v25;
      if (v25 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v43, v25, 8), v26 = v39, v24 = __src, v39))
      {
        memcpy(__dst, v24, 8 * v26);
        v24 = __src;
      }

      LODWORD(v42) = v25;
    }

    else
    {
      __dst = v24;
      v42 = __PAIR64__(HIDWORD(v39), v25);
      __src = v40;
      HIDWORD(v39) = 0;
      v24 = v40;
    }

    LODWORD(v39) = 0;
  }

  if (v24 != v40)
  {
    free(v24);
    LODWORD(v25) = v42;
  }

  v27 = __dst;
  if (v25)
  {
    v28 = *a1;
    v29 = 8 * v25;
    v30 = a4;
    v31 = __dst;
    do
    {
      v33 = *(v28 + 8 * *v31);
      if (v33 != 0x8000000000000000)
      {
        v34 = *v30;
        v32 = 0x8000000000000000;
        if (*v30 != 0x8000000000000000)
        {
          if (v33)
          {
            if ((v34 ^ v33) < 0)
            {
              v32 = v33 / v34;
            }

            else
            {
              if (v34 < 0)
              {
                v35 = v33 + 1;
              }

              else
              {
                v35 = v33 - 1;
              }

              v32 = v35 / v34 + 1;
            }
          }

          else
          {
            v32 = 0;
          }
        }

        *(v28 + 8 * *v31) = v32;
      }

      ++v31;
      ++v30;
      v29 -= 8;
    }

    while (v29);
  }

  if (v27 != v43)
  {
    free(v27);
  }

  if (a10)
  {
    mlir::applyPermutationToVector<long long,6u>(a1, a9);
  }

  v36 = *(a1 + 8);
  v37 = v36 + ((8 * a5) >> 3);
  if (v37 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, v16, v37, 8);
    LODWORD(v36) = *(a1 + 8);
  }

  if (a5)
  {
    memcpy((*a1 + 8 * v36), a4, 8 * a5);
    LODWORD(v36) = *(a1 + 8);
  }

  *(a1 + 8) = v36 + a5;
}

uint64_t mlir::tensor::PackOp::inferPackedType(uint64_t a1, uint64_t *a2, uint64_t a3, const void *a4, unint64_t a5, uint64_t *a6, uint64_t a7)
{
  v24[6] = *MEMORY[0x1E69E9840];
  v21 = a1;
  Value = mlir::ArrayAttr::getValue(&v21);
  getPackOpResultTypeShape(&v22, Value, v14, a2, a3, a4, a5, v15, a6, a7);
  v16 = v22;
  v17 = v23;
  RHS = mlir::AffineBinaryOpExpr::getRHS(&v21);
  result = mlir::RankedTensorType::get(v16, v17, RHS, 0);
  if (v22 != v24)
  {
    v20 = result;
    free(v22);
    return v20;
  }

  return result;
}

uint64_t areTilesAndTiledDimsAllConstant<mlir::tensor::PackOp>(uint64_t a1)
{
  v19[6] = *MEMORY[0x1E69E9840];
  v1 = (*(*(*(a1 + 72) + 32 * *(a1 + 104) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v16 = a1;
  v17 = v1;
  v15[0] = mlir::TensorType::operator mlir::ShapedType(&v17);
  v15[1] = v2;
  mlir::tensor::PackOp::getMixedTiles(&v16, &v17);
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v15);
  if (v4 <= v18)
  {
    v5 = 0;
  }

  else
  {
    v5 = 8 * (v4 - v18);
  }

  if (v4 >= v18)
  {
    v6 = v18;
  }

  else
  {
    v6 = v4;
  }

  v7 = v17;
  if (v6)
  {
    v8 = (v5 + ArgAttrsAttr);
    v9 = 8 * v18 - 8;
    v10 = 8 * v6 - 8;
    while (1)
    {
      mlir::getConstantIntValue(*v7);
      if ((v11 & 1) == 0)
      {
        v12 = 0;
LABEL_17:
        v7 = v17;
        if (v17 == v19)
        {
          return v12;
        }

        goto LABEL_18;
      }

      if (*v8 == 0x8000000000000000)
      {
        break;
      }

      v12 = 1;
      if (v10)
      {
        ++v8;
        ++v7;
        v13 = v9;
        v9 -= 8;
        v10 -= 8;
        if (v13)
        {
          continue;
        }
      }

      goto LABEL_17;
    }

    v12 = 0;
    v7 = v17;
    if (v17 != v19)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v12 = 1;
    if (v17 != v19)
    {
LABEL_18:
      free(v7);
    }
  }

  return v12;
}

uint64_t mlir::tensor::PackOp::canonicalize(uint64_t a1, void (***a2)(void, uint64_t, __int128 *, uint64_t))
{
  v118[4] = *MEMORY[0x1E69E9840];
  *&v114 = *(*(a1 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v114);
  if (DefiningOp && *(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::UnPackOp,void>::id)
  {
    v29 = *(a1 + 104);
    v30 = *(a1 + 72);
    if ((*(*(v30 + 32 * v29 + 24) + 8) ^ *(*(*(DefiningOp + 72) + 24) + 8)) > 7 || *(a1 + 112) && *(v30 + 32 * (v29 + *(a1 + 108)) + 24))
    {
      return 0;
    }

    v31 = DefiningOp;
    if (!hasSameInnerOuterAttribute(a1, DefiningOp) || !haveSameTiles(a1, v31))
    {
      return 0;
    }

    else
    {
      *&v114 = *(*(v31 + 72) + 24);
      v32 = 1;
      (**a2)(a2, a1, &v114, 1);
    }
  }

  else
  {
    v5 = a1 + 64;
    v6 = *(a1 + 44);
    v7 = (a1 + 64 + 16 * ((v6 >> 23) & 1));
    v8 = v7[8];
    if ((v6 & 0x800000) != 0)
    {
      v9 = *(a1 + 72);
      if (!v8)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v9 = 0;
      if (!v8)
      {
        goto LABEL_27;
      }
    }

    if (!*(v9 + 32 * (v7[7] + v7[6]) + 24))
    {
      goto LABEL_27;
    }

    __s1 = a1;
    v10 = *(a1 + 80);
    v104 = (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    *&v114 = v10;
    v11 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v114);
    if (v12)
    {
      v13 = v11;
      v14 = 8 * v12;
      while (1)
      {
        v15 = *v13;
        if (*(mlir::ArrayAttr::getValue(&v104) + 8 * v15) == 0x8000000000000000)
        {
          break;
        }

        v13 += 2;
        v14 -= 8;
        if (!v14)
        {
          goto LABEL_10;
        }
      }

LABEL_27:
      __s1 = v109;
      v108 = 0x600000000;
      v104 = v106;
      v105 = 0x600000000;
      *&v114 = *(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
      Value = mlir::ArrayAttr::getValue(&v114);
      v112 = (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      v38 = mlir::ArrayAttr::getValue(&v112);
      v39 = 0;
      v41 = (v38 + 8 * v40);
      LODWORD(v108) = 0;
      v42 = (v41 - Value) >> 3;
      if (v42 > HIDWORD(v108))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&__s1, v109, v42, 8);
        v39 = v108;
      }

      if (v41 != Value)
      {
        memcpy(__s1 + 8 * v39, Value, v41 - Value);
        v39 = v108;
      }

      LODWORD(v108) = v39 + ((v41 - Value) >> 3);
      *&v114 = *(*(*(a1 + 72) + 32 * *(a1 + 104) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
      v43 = mlir::ArrayAttr::getValue(&v114);
      v112 = (*(*(*(a1 + 72) + 32 * *(a1 + 104) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      v44 = mlir::ArrayAttr::getValue(&v112);
      v45 = 0;
      v47 = (v44 + 8 * v46);
      LODWORD(v105) = 0;
      v48 = (v47 - v43) >> 3;
      if (v48 > HIDWORD(v105))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v104, v106, v48, 8);
        v45 = v105;
      }

      if (v47 != v43)
      {
        memcpy(v104 + 8 * v45, v43, v47 - v43);
        v45 = v105;
      }

      LODWORD(v105) = v45 + ((v47 - v43) >> 3);
      LODWORD(v115) = 0;
      v114 = 0u;
      v116 = v118;
      v117 = 0x400000000;
      v112 = *(v5 + 16 * ((*(a1 + 44) >> 23) & 1));
      v49 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v112);
      v112 = *(v5 + 16 * ((*(a1 + 44) >> 23) & 1));
      v50 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v112);
      for (i = (v50 + 8 * v51); v49 != i; ++v49)
      {
        llvm::SetVector<long long,llvm::SmallVector<long long,4u>,llvm::DenseSet<long long,llvm::DenseMapInfo<long long,void>>,4u>::insert(&v114, v49);
      }

      v112 = v113 + 8;
      *&v113[0] = 0x600000000;
      __src[0] = *(v5 + 16 * ((*(a1 + 44) >> 23) & 1) + 8);
      if (__src[0])
      {
        mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(__src);
        if (!v53)
        {
          goto LABEL_49;
        }
      }

      else
      {
        Context = mlir::Attribute::getContext((a1 + 24));
        DenseI64ArrayAttr = mlir::Builder::getDenseI64ArrayAttr(&Context, 0, 0);
        mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&DenseI64ArrayAttr);
        if (!v54)
        {
          goto LABEL_49;
        }
      }

      __src[0] = *(v5 + 16 * ((*(a1 + 44) >> 23) & 1) + 8);
      if (__src[0])
      {
        p_DenseI64ArrayAttr = __src;
      }

      else
      {
        Context = mlir::Attribute::getContext((a1 + 24));
        DenseI64ArrayAttr = mlir::Builder::getDenseI64ArrayAttr(&Context, 0, 0);
        p_DenseI64ArrayAttr = &DenseI64ArrayAttr;
      }

      v56 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(p_DenseI64ArrayAttr);
      mlir::invertPermutationVector(v56, v57, __src);
      v58 = __src[0];
      if (__src[0] != v111)
      {
        if (v112 != v113 + 8)
        {
          free(v112);
          v58 = __src[0];
        }

        v112 = v58;
        *&v113[0] = __src[1];
        __src[0] = v111;
        __src[1] = 0;
        goto LABEL_49;
      }

      v75 = __src[1];
      v76 = LODWORD(v113[0]);
      if (LODWORD(v113[0]) >= LODWORD(__src[1]))
      {
        if (LODWORD(__src[1]))
        {
          memmove(v112, __src[0], 8 * LODWORD(__src[1]));
        }

        goto LABEL_111;
      }

      if (DWORD1(v113[0]) >= LODWORD(__src[1]))
      {
        if (LODWORD(v113[0]))
        {
          memmove(v112, __src[0], 8 * LODWORD(v113[0]));
          goto LABEL_109;
        }
      }

      else
      {
        LODWORD(v113[0]) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v112, v113 + 8, LODWORD(__src[1]), 8);
      }

      v76 = 0;
LABEL_109:
      if (LODWORD(__src[1]) != v76)
      {
        memcpy(&v112[8 * v76], __src[0] + 8 * v76, 8 * (LODWORD(__src[1]) - v76));
      }

LABEL_111:
      LODWORD(v113[0]) = v75;
      LODWORD(__src[1]) = 0;
      if (__src[0] != v111)
      {
        free(__src[0]);
      }

LABEL_49:
      __src[0] = (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      mlir::ArrayAttr::getValue(__src);
      if (v59 << 32)
      {
        v60 = v59;
        v61 = v113[0];
        v62 = v112;
        v63 = __s1;
        v64 = v104;
        if (DWORD2(v114))
        {
          v65 = v115;
          if (v115)
          {
            v66 = 0;
            v67 = v114;
            v68 = v115 - 1;
            while (1)
            {
              v69 = (37 * v66) & v68;
              v70 = *(v67 + 8 * v69);
              if (v66 != v70)
              {
                break;
              }

LABEL_55:
              if (v69 == v65)
              {
                goto LABEL_56;
              }

LABEL_53:
              if (++v66 == v59)
              {
                goto LABEL_66;
              }
            }

            v73 = 1;
            while (v70 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v74 = v69 + v73++;
              v69 = v74 & v68;
              v70 = *(v67 + 8 * v69);
              if (v66 == v70)
              {
                goto LABEL_55;
              }
            }

LABEL_56:
            v71 = v66;
            if (v61)
            {
              v71 = v62[v66];
            }

            v72 = v63[v66];
            if ((v72 == 0x8000000000000000) != (v64[v71] == 0x8000000000000000))
            {
              if (v72 == 0x8000000000000000)
              {
                v72 = v64[v71];
              }

              v63[v66] = v72;
              v64[v71] = v72;
            }

            goto LABEL_53;
          }

          if (LODWORD(v113[0]))
          {
            do
            {
              v85 = *v62++;
              v84 = v85;
              v86 = *v63;
              if ((*v63 == 0x8000000000000000) != (v64[v85] == 0x8000000000000000))
              {
                if (v86 == 0x8000000000000000)
                {
                  v86 = v64[v84];
                }

                *v63 = v86;
                v64[v84] = v86;
              }

              ++v63;
              --v60;
            }

            while (v60);
          }

          else
          {
            do
            {
              v98 = *v63;
              if ((*v63 == 0x8000000000000000) != (*v64 == 0x8000000000000000))
              {
                if (v98 == 0x8000000000000000)
                {
                  v98 = *v64;
                }

                *v63 = v98;
                *v64 = v98;
              }

              ++v64;
              ++v63;
              --v60;
            }

            while (v60);
          }
        }

        else if (v117)
        {
          v77 = 0;
          v78 = v116;
          v79 = 8 * v117;
          do
          {
            v80 = v79;
            v81 = v78;
            while (*v81 != v77)
            {
              ++v81;
              v80 -= 8;
              if (!v80)
              {
                goto LABEL_81;
              }
            }

            if (!v80)
            {
LABEL_81:
              v82 = v77;
              if (v61)
              {
                v82 = v62[v77];
              }

              v83 = v63[v77];
              if ((v83 == 0x8000000000000000) != (v64[v82] == 0x8000000000000000))
              {
                if (v83 == 0x8000000000000000)
                {
                  v83 = v64[v82];
                }

                v63[v77] = v83;
                v64[v82] = v83;
              }
            }

            ++v77;
          }

          while (v77 != v59);
        }

        else if (LODWORD(v113[0]))
        {
          do
          {
            v96 = *v62++;
            v95 = v96;
            v97 = *v63;
            if ((*v63 == 0x8000000000000000) != (v64[v96] == 0x8000000000000000))
            {
              if (v97 == 0x8000000000000000)
              {
                v97 = v64[v95];
              }

              *v63 = v97;
              v64[v95] = v97;
            }

            ++v63;
            --v60;
          }

          while (v60);
        }

        else
        {
          do
          {
            v99 = *v63;
            if ((*v63 == 0x8000000000000000) != (*v64 == 0x8000000000000000))
            {
              if (v99 == 0x8000000000000000)
              {
                v99 = *v64;
              }

              *v63 = v99;
              *v64 = v99;
            }

            ++v64;
            ++v63;
            --v60;
          }

          while (v60);
        }
      }

LABEL_66:
      if (v112 != v113 + 8)
      {
        free(v112);
      }

      if (v116 != v118)
      {
        free(v116);
      }

      llvm::deallocate_buffer(v114, (8 * v115));
    }

LABEL_10:
    *&v114 = *(v5 + 16 * ((*(a1 + 44) >> 23) & 1) + 16);
    v16 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v114);
    if (v17)
    {
      v18 = 8 * v17;
      while (*v16 != 0x8000000000000000)
      {
        ++v16;
        v18 -= 8;
        if (!v18)
        {
          goto LABEL_14;
        }
      }

      goto LABEL_27;
    }

LABEL_14:
    v101 = a2;
    v19 = mlir::ArrayAttr::getValue(&v104);
    v21 = v20;
    *&v114 = *(v5 + 16 * ((*(a1 + 44) >> 23) & 1));
    v22 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v114);
    v24 = v23;
    DenseI64ArrayAttr = *(*(*(a1 + 72) + 32 * *(a1 + 104) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    v25 = mlir::ArrayAttr::getValue(&DenseI64ArrayAttr);
    v27 = v26;
    *&v114 = *(v5 + 16 * ((*(a1 + 44) >> 23) & 1) + 8);
    if (v114)
    {
      v28 = &v114;
    }

    else
    {
      __src[0] = mlir::Attribute::getContext((a1 + 24));
      v112 = mlir::Builder::getDenseI64ArrayAttr(__src, 0, 0);
      v28 = &v112;
    }

    v33 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(v28);
    v35 = v34;
    mlir::tensor::PackOp::getMixedTiles(&__s1, &v114);
    v36 = mlir::tensor::PackOp::requirePaddingValue(v19, v21, v22, v24, v25, v27, v33, v35, v114);
    if (v114 != &v115)
    {
      free(v114);
    }

    if (v36)
    {
      goto LABEL_27;
    }

    ((*v101)[5])(v101, a1);
    v87 = (v5 + 16 * ((*(a1 + 44) >> 23) & 1));
    v88 = v87[6];
    v89 = v87[7];
    v90 = v87[8];
    v91 = *(*(*(a1 + 48) + 96) + 8 * *(*(a1 + 48) + 104) - 8);
    v92 = mlir::Attribute::getContext((a1 + 24));
    v93 = mlir::detail::DenseArrayAttrImpl<int>::get(v92, (v5 + 16 * ((*(a1 + 44) >> 23) & 1) + 24), 4);
    mlir::NamedAttribute::NamedAttribute(__src, v91, v93);
    LODWORD(v112) = 2;
    v113[0] = *__src;
    v94 = mlir::MutableOperandRange::MutableOperandRange(&v114, a1, v89 + v88, v90, &v112, 1);
    mlir::MutableOperandRange::clear(v94);
    if (v115 != &v117)
    {
      free(v115);
    }

    ((*v101)[6])(v101, a1);
    return 1;
  }

  return v32;
}

uint64_t hasSameInnerOuterAttribute(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 64;
  v28 = *(a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1));
  v5 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v28);
  v7 = v6;
  v8 = a2 + 64;
  v28 = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v9 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v28);
  if (v7 != v10)
  {
    return 0;
  }

  if (memcmp(v5, v9, 8 * v7))
  {
    return 0;
  }

  v28 = *(v4 + 16 * ((*(a1 + 44) >> 23) & 1) + 8);
  if (v28)
  {
    p_DenseI64ArrayAttr = &v28;
  }

  else
  {
    Context = mlir::Attribute::getContext((a1 + 24));
    DenseI64ArrayAttr = mlir::Builder::getDenseI64ArrayAttr(&Context, 0, 0);
    p_DenseI64ArrayAttr = &DenseI64ArrayAttr;
  }

  v13 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(p_DenseI64ArrayAttr);
  v15 = v14;
  v28 = *(v8 + 16 * ((*(a2 + 44) >> 23) & 1) + 8);
  if (v28)
  {
    v16 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v28);
    if (v15 != v17)
    {
      goto LABEL_14;
    }
  }

  else
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    DenseI64ArrayAttr = mlir::Builder::getDenseI64ArrayAttr(&Context, 0, 0);
    v16 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&DenseI64ArrayAttr);
    if (v15 != v18)
    {
      goto LABEL_14;
    }
  }

  if (!memcmp(v13, v16, 8 * v15))
  {
    return 1;
  }

LABEL_14:
  v28 = *(v4 + 16 * ((*(a1 + 44) >> 23) & 1) + 8);
  if (v28)
  {
    v19 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v28);
    result = mlir::isIdentityPermutation(v19, v20);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    Context = mlir::Attribute::getContext((a1 + 24));
    DenseI64ArrayAttr = mlir::Builder::getDenseI64ArrayAttr(&Context, 0, 0);
    v21 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&DenseI64ArrayAttr);
    result = mlir::isIdentityPermutation(v21, v22);
    if (!result)
    {
      return result;
    }
  }

  v28 = *(v8 + 16 * ((*(a2 + 44) >> 23) & 1) + 8);
  if (v28)
  {
    v23 = &v28;
  }

  else
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    DenseI64ArrayAttr = mlir::Builder::getDenseI64ArrayAttr(&Context, 0, 0);
    v23 = &DenseI64ArrayAttr;
  }

  v24 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(v23);
  return mlir::isIdentityPermutation(v24, v25);
}

uint64_t haveSameTiles(uint64_t a1, uint64_t a2)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a1;
  mlir::tensor::PackOp::getMixedTiles(&v10, &v14);
  mlir::tensor::UnPackOp::getMixedTiles(&v9, &v11);
  if (v15 != v12)
  {
    result = 0;
    goto LABEL_11;
  }

  if (v15)
  {
    v2 = 0;
    v3 = 8 * v15 - 8;
    do
    {
      result = mlir::isEqualConstantIntOrValue(*(v14 + v2), *(v11 + v2));
      if (result)
      {
        v5 = v3 == v2;
      }

      else
      {
        v5 = 1;
      }

      v2 += 8;
    }

    while (!v5);
LABEL_11:
    v6 = v11;
    if (v11 == v13)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  result = 1;
  v6 = v11;
  if (v11 != v13)
  {
LABEL_12:
    v7 = result;
    free(v6);
    result = v7;
  }

LABEL_13:
  if (v14 != v16)
  {
    v8 = result;
    free(v14);
    return v8;
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, void *a4)
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

uint64_t mlir::OpBuilder::create<mlir::tensor::PackOp,mlir::Value &,mlir::Value &,llvm::ArrayRef<long long>,llvm::SmallVector<mlir::OpFoldResult,6u>,mlir::Value,llvm::ArrayRef<long long>>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8)
{
  v25[38] = *MEMORY[0x1E69E9840];
  v22 = a2;
  Context = mlir::Attribute::getContext(&v22);
  v17 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::PackOp,void>::id, Context);
  if ((v18 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::PackOp,mlir::Value &,mlir::Value &,llvm::ArrayRef<long long>,llvm::SmallVector<mlir::OpFoldResult,6u>,mlir::Value,llvm::ArrayRef<long long>>(v25, v24, v23);
  }

  mlir::OperationState::OperationState(v25, a2, v17);
  mlir::tensor::PackOp::build(a1, v25, *a3, *a4, *a5, *(a5 + 8), *a6, *(a6 + 8), *a7, 1, *a8, *(a8 + 8));
  v19 = mlir::OpBuilder::create(a1, v25);
  if (*(*(v19 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::PackOp,void>::id)
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

unint64_t mlir::tensor::PackOp::fold(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 56))
  {
    v3 = *(a2 + 80);
    v4 = v3[*(a2 + 48) + *(a2 + 52)];
    v5 = v4 != 0;
    v6 = *v3;
    if (*v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = **(a2 + 80);
    if (v6)
    {
LABEL_3:
      if (mlir::DenseElementsAttr::classof(v6))
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }

      goto LABEL_8;
    }
  }

  v7 = 0;
LABEL_8:
  result = reshapeConstantSource(v7, (*(*(*(*a1 + 72) + 32 * *(*a1 + 104) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), v4, v5);
  if (result <= 7)
  {
    return 0;
  }

  return result;
}

uint64_t mlir::tensor::UnPackOp::getAsmResultNames(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
{
  if (*(*a1 + 36))
  {
    v4 = *a1 - 16;
  }

  else
  {
    v4 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);

  return a2(a3, NextResultAtOffset, "unpack", 6);
}

uint64_t mlir::tensor::UnPackOp::reifyResultShapes(uint64_t *a1, mlir::IndexType **a2, uint64_t a3)
{
  v32[6] = *MEMORY[0x1E69E9840];
  v5 = *a1;
  __src = (*(*(*(*a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  mlir::ArrayAttr::getValue(&__src);
  __src = v32;
  v31 = 0x600000000;
  if (v6)
  {
    v7 = v6;
    if (v6 < 7)
    {
      v8 = 0;
      v9 = v6;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v32, v6, 8);
      v8 = v31;
      v9 = v7 - v31;
      if (v7 == v31)
      {
        goto LABEL_7;
      }
    }

    bzero(__src + 8 * v8, 8 * v9);
LABEL_7:
    LODWORD(v31) = v7;
  }

  v10 = *(a3 + 8);
  if (!v10)
  {
    llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpFoldResult,6u>>::append(a3, 1 - v10, &__src);
LABEL_15:
    v14 = __src;
    if (__src == v32)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v10 == 1)
  {
    goto LABEL_15;
  }

  v11 = v10 << 6;
  v12 = (v11 + *a3 - 64);
  v13 = 64 - v11;
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
  *(a3 + 8) = 1;
  v14 = __src;
  if (__src != v32)
  {
LABEL_16:
    free(v14);
  }

LABEL_17:
  v15 = *(v5 + 24);
  v16 = *(*(v5 + 72) + 56);
  v29 = *(v16 + 8) & 0xFFFFFFFFFFFFFFF8;
  __src = v32;
  v31 = 0x600000000;
  mlir::ArrayAttr::getValue(&v29);
  if (v17 >= 1)
  {
    for (i = 0; i < v21; i = (i + 1))
    {
      MixedSize = mlir::tensor::getMixedSize(a2, v15, v16, i);
      v20 = v31;
      if (v31 >= HIDWORD(v31))
      {
        v22 = MixedSize;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v32, v31 + 1, 8);
        MixedSize = v22;
        v20 = v31;
      }

      *(__src + v20) = MixedSize;
      LODWORD(v31) = v31 + 1;
      mlir::ArrayAttr::getValue(&v29);
    }
  }

  v23 = *a3;
  v24 = __src;
  if (v23 != &__src)
  {
    if (__src != v32)
    {
      if (*v23 != v23 + 16)
      {
        free(*v23);
        v24 = __src;
      }

      *v23 = v24;
      *(v23 + 8) = v31;
      __src = v32;
      HIDWORD(v31) = 0;
      goto LABEL_39;
    }

    v25 = v31;
    v26 = *(v23 + 8);
    if (v26 >= v31)
    {
      if (v31)
      {
        memmove(*v23, __src, 8 * v31);
      }

      goto LABEL_38;
    }

    if (*(v23 + 12) >= v31)
    {
      if (v26)
      {
        memmove(*v23, __src, 8 * v26);
        v27 = v31 - v26;
        if (v31 == v26)
        {
LABEL_38:
          *(v23 + 8) = v25;
LABEL_39:
          LODWORD(v31) = 0;
          v24 = __src;
          goto LABEL_40;
        }
      }

      else
      {
        v26 = 0;
        v27 = v31;
        if (!v31)
        {
          goto LABEL_38;
        }
      }
    }

    else
    {
      *(v23 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v23, v23 + 16, v25, 8);
      v26 = 0;
      v27 = v31;
      if (!v31)
      {
        goto LABEL_38;
      }
    }

    memcpy((*v23 + 8 * v26), __src + 8 * v26, 8 * v27);
    goto LABEL_38;
  }

LABEL_40:
  if (v24 != v32)
  {
    free(v24);
  }

  return 1;
}

void mlir::tensor::UnPackOp::getMixedTiles(mlir::tensor::UnPackOp *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *this;
  Context = mlir::Attribute::getContext((*this + 24));
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  v13 = *(v3 + 16 * ((*(v3 + 44) >> 23) & 1) + 80);
  v4 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v13);
  if (v5)
  {
    v6 = v4;
    v7 = 0;
    v8 = 8 * v5;
    do
    {
      if (*v6 == 0x8000000000000000)
      {
        v9 = *(v3 + 72) + 32 * v7++;
        v10 = *(v9 + 88) | 4;
      }

      else
      {
        v10 = mlir::Builder::getI64IntegerAttr(&Context, *v6) & 0xFFFFFFFFFFFFFFFBLL;
      }

      v11 = *(a2 + 8);
      if (v11 >= *(a2 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v11 + 1, 8);
        v11 = *(a2 + 8);
      }

      *(*a2 + 8 * v11) = v10;
      ++*(a2 + 8);
      ++v6;
      v8 -= 8;
    }

    while (v8);
  }
}

void mlir::tensor::UnPackOp::getStaticTiles(mlir::tensor::UnPackOp *this@<X0>, void *a2@<X8>)
{
  v8[6] = *MEMORY[0x1E69E9840];
  v3 = *this;
  v7[0] = v8;
  v7[1] = 0x600000000;
  *a2 = a2 + 2;
  a2[1] = 0x600000000;
  mlir::tensor::UnPackOp::getMixedTiles(&v3, &v4);
  mlir::dispatchIndexOpFoldResults(v4, v5, v7, a2);
  if (v4 != &v6)
  {
    free(v4);
  }

  if (v7[0] != v8)
  {
    free(v7[0]);
  }
}

BOOL mlir::tensor::UnPackOp::verify(mlir::tensor::UnPackOp *this)
{
  v48[6] = *MEMORY[0x1E69E9840];
  v1 = *this;
  v36 = *this;
  mlir::tensor::UnPackOp::getMixedTiles(&v36, &v46);
  if (v47)
  {
    v2 = v46;
    v3 = 8 * v47;
    while (!mlir::isConstantIntValue(*v2, 0))
    {
      ++v2;
      v3 -= 8;
      if (!v3)
      {
        goto LABEL_5;
      }
    }

    DenseI64ArrayAttr = "invalid zero tile factor";
    v35 = 259;
    mlir::Operation::emitError(v1, &DenseI64ArrayAttr, v37);
    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v37);
    if (v37[0])
    {
      mlir::InFlightDiagnostic::report(v37);
    }

    if (v45 == 1)
    {
      if (v44 != &v45)
      {
        free(v44);
      }

      v10 = __p;
      if (__p)
      {
        v11 = v43;
        v12 = __p;
        if (v43 != __p)
        {
          do
          {
            v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
          }

          while (v11 != v10);
          v12 = __p;
        }

        v43 = v10;
        operator delete(v12);
      }

      v13 = v40;
      if (!v40)
      {
        goto LABEL_54;
      }

      v14 = v41;
      v15 = v40;
      if (v41 == v40)
      {
        goto LABEL_53;
      }

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
      goto LABEL_52;
    }

    goto LABEL_56;
  }

LABEL_5:
  v31 = *(*(*(v1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&v31);
  v5 = v4;
  v37[0] = *(v1 + 64 + 16 * ((*(v1 + 44) >> 23) & 1));
  v6 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(v37);
  v8 = v7;
  v37[0] = *(v1 + 64 + 16 * ((*(v1 + 44) >> 23) & 1) + 8);
  if (!v37[0])
  {
    v30[0] = mlir::Attribute::getContext((v1 + 24));
    DenseI64ArrayAttr = mlir::Builder::getDenseI64ArrayAttr(v30, 0, 0);
    mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&DenseI64ArrayAttr);
    if (v8 > v5)
    {
      goto LABEL_35;
    }

LABEL_25:
    DenseI64ArrayAttr = 0;
    v33 = 0;
    v34 = 0;
    if (v8)
    {
      v18 = 8 * v8;
      v19 = 8 * v8;
      v20 = v6;
      do
      {
        v21 = *v20++;
        v30[0] = v21;
        llvm::DenseMapBase<llvm::DenseMap<long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::try_emplace<llvm::detail::DenseSetEmpty&>(&DenseI64ArrayAttr, v30, v37);
        v19 -= 8;
      }

      while (v19);
      if (v8 == v33)
      {
        for (i = v6; (*i & 0x8000000000000000) == 0 && *i < v5; ++i)
        {
          v18 -= 8;
          if (!v18)
          {
            llvm::deallocate_buffer(DenseI64ArrayAttr, (8 * v34));
          }
        }
      }

      llvm::deallocate_buffer(DenseI64ArrayAttr, (8 * v34));
    }

    llvm::deallocate_buffer(0, 0);
  }

  mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(v37);
  if (v8 <= v5)
  {
    goto LABEL_25;
  }

LABEL_35:
  DenseI64ArrayAttr = "invalid inner_dims_pos vector";
  v35 = 259;
  mlir::Operation::emitError(v1, &DenseI64ArrayAttr, v37);
  v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v37);
  if (v37[0])
  {
    mlir::InFlightDiagnostic::report(v37);
  }

  if (v45 == 1)
  {
    if (v44 != &v45)
    {
      free(v44);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v43;
      v25 = __p;
      if (v43 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v43 = v23;
      operator delete(v25);
    }

    v13 = v40;
    if (!v40)
    {
      goto LABEL_54;
    }

    v26 = v41;
    v15 = v40;
    if (v41 == v40)
    {
LABEL_53:
      v41 = v13;
      operator delete(v15);
LABEL_54:
      if (v38 != &v39)
      {
        free(v38);
      }

      goto LABEL_56;
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

    while (v26 != v13);
LABEL_52:
    v15 = v40;
    goto LABEL_53;
  }

LABEL_56:
  if (v46 != v48)
  {
    free(v46);
  }

  return v9;
}

uint64_t areTilesAndTiledDimsAllConstant<mlir::tensor::UnPackOp>(uint64_t a1)
{
  v19[6] = *MEMORY[0x1E69E9840];
  v1 = (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v16 = a1;
  v17 = v1;
  v15[0] = mlir::TensorType::operator mlir::ShapedType(&v17);
  v15[1] = v2;
  mlir::tensor::UnPackOp::getMixedTiles(&v16, &v17);
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v15);
  if (v4 <= v18)
  {
    v5 = 0;
  }

  else
  {
    v5 = 8 * (v4 - v18);
  }

  if (v4 >= v18)
  {
    v6 = v18;
  }

  else
  {
    v6 = v4;
  }

  v7 = v17;
  if (v6)
  {
    v8 = (v5 + ArgAttrsAttr);
    v9 = 8 * v18 - 8;
    v10 = 8 * v6 - 8;
    while (1)
    {
      mlir::getConstantIntValue(*v7);
      if ((v11 & 1) == 0)
      {
        v12 = 0;
LABEL_17:
        v7 = v17;
        if (v17 == v19)
        {
          return v12;
        }

        goto LABEL_18;
      }

      if (*v8 == 0x8000000000000000)
      {
        break;
      }

      v12 = 1;
      if (v10)
      {
        ++v8;
        ++v7;
        v13 = v9;
        v9 -= 8;
        v10 -= 8;
        if (v13)
        {
          continue;
        }
      }

      goto LABEL_17;
    }

    v12 = 0;
    v7 = v17;
    if (v17 != v19)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v12 = 1;
    if (v17 != v19)
    {
LABEL_18:
      free(v7);
    }
  }

  return v12;
}

void mlir::tensor::UnPackOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t *a7, uint64_t a8, void *a9, uint64_t a10)
{
  DenseI64ArrayAttr = a10;
  v27[6] = *MEMORY[0x1E69E9840];
  v25 = v27;
  v26 = 0x600000000;
  v22 = v24;
  v23 = 0x600000000;
  mlir::dispatchIndexOpFoldResults(a7, a8, &v22, &v25);
  v17 = *(a4 + 8);
  if (a10)
  {
    DenseI64ArrayAttr = mlir::Builder::getDenseI64ArrayAttr(a1, a9, a10);
  }

  v18 = mlir::Builder::getDenseI64ArrayAttr(a1, a5, a6);
  mlir::ValueRange::ValueRange(v21, v22, v23);
  v19 = mlir::Builder::getDenseI64ArrayAttr(a1, v25, v26);
  mlir::tensor::UnPackOp::build(v19, a2, v17 & 0xFFFFFFFFFFFFFFF8, a3, a4, DenseI64ArrayAttr, v18, v20, v21[0], v21[1], v19);
  if (v22 != v24)
  {
    free(v22);
  }

  if (v25 != v27)
  {
    free(v25);
  }
}

void mlir::tensor::UnPackOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11)
{
  v23 = a5;
  v24 = a4;
  mlir::OperationState::addOperands(a2, &v24, 1uLL);
  mlir::OperationState::addOperands(a2, &v23, 1uLL);
  mlir::OperationState::addOperands(a2, a9, a10);
  if (a6)
  {
    v15 = *(a2 + 256);
    if (!v15)
    {
      v16 = operator new(0x18uLL);
      v16[1] = 0;
      v16[2] = 0;
      *v16 = 0;
      *(a2 + 256) = v16;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &v25;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &v25;
      {
        mlir::tensor::UnPackOp::build();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v15 = *(a2 + 256);
    }

    *(v15 + 8) = a6;
  }

  v17 = *(a2 + 256);
  if (v17)
  {
    v18 = a11;
    *v17 = a7;
    v19 = *(a2 + 256);
    if (v19)
    {
      goto LABEL_9;
    }

LABEL_15:
    v22 = operator new(0x18uLL);
    v22[1] = 0;
    v22[2] = 0;
    *v22 = 0;
    *(a2 + 256) = v22;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v25;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v25;
    {
      mlir::tensor::UnPackOp::build();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    *(*(a2 + 256) + 16) = v18;
    v20 = *(a2 + 72);
    if (v20 >= *(a2 + 76))
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v21 = operator new(0x18uLL);
  v21[1] = 0;
  v21[2] = 0;
  *v21 = 0;
  *(a2 + 256) = v21;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v25;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v25;
  {
    mlir::tensor::UnPackOp::build();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  v18 = a11;
  **(a2 + 256) = a7;
  v19 = *(a2 + 256);
  if (!v19)
  {
    goto LABEL_15;
  }

LABEL_9:
  *(v19 + 16) = v18;
  v20 = *(a2 + 72);
  if (v20 >= *(a2 + 76))
  {
LABEL_10:
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v20 + 1, 8);
    LODWORD(v20) = *(a2 + 72);
  }

LABEL_11:
  *(*(a2 + 64) + 8 * v20) = a3;
  ++*(a2 + 72);
}

uint64_t mlir::tensor::UnPackOp::canonicalize(uint64_t a1, uint64_t a2)
{
  v97[4] = *MEMORY[0x1E69E9840];
  *&v93 = *(*(a1 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v93);
  if (DefiningOp)
  {
    v5 = *(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::PackOp,void>::id ? DefiningOp : 0;
    if (v5)
    {
      v6 = *(v5 + 72);
      if ((*(*(*(a1 + 72) + 56) + 8) ^ *(*(v6 + 24) + 8)) > 7 || *(v5 + 112) && *(v6 + 32 * (*(v5 + 104) + *(v5 + 108)) + 24) || !hasSameInnerOuterAttribute(v5, a1) || !haveSameTiles(v5, a1))
      {
        return 0;
      }

      *&v93 = *(*(v5 + 72) + 24);
      v7 = 1;
      (**a2)(a2, a1, &v93, 1);
      return v7;
    }
  }

  *&v93 = *(*(a1 + 72) + 56);
  InterfaceFor = mlir::Value::getDefiningOp(&v93);
  v9 = InterfaceFor;
  if (InterfaceFor)
  {
    if (!mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor(InterfaceFor))
    {
      __dst = 0;
      v91 = 0;
LABEL_31:
      __s1 = v86;
      v85 = 0x600000000;
      v81 = v83;
      v82 = 0x600000000;
      *&v93 = *(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
      Value = mlir::ArrayAttr::getValue(&v93);
      __dst = (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      v23 = mlir::ArrayAttr::getValue(&__dst);
      v24 = 0;
      v26 = (v23 + 8 * v25);
      LODWORD(v85) = 0;
      v27 = (v26 - Value) >> 3;
      if (v27 > HIDWORD(v85))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&__s1, v86, v27, 8);
        v24 = v85;
      }

      if (v26 != Value)
      {
        memcpy(__s1 + 8 * v24, Value, v26 - Value);
        v24 = v85;
      }

      LODWORD(v85) = v24 + ((v26 - Value) >> 3);
      *&v93 = *(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
      v28 = mlir::ArrayAttr::getValue(&v93);
      __dst = (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
      v29 = mlir::ArrayAttr::getValue(&__dst);
      v30 = 0;
      v32 = (v29 + 8 * v31);
      LODWORD(v82) = 0;
      v33 = (v32 - v28) >> 3;
      if (v33 > HIDWORD(v82))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v83, v33, 8);
        v30 = v82;
      }

      if (v32 != v28)
      {
        memcpy(v81 + 8 * v30, v28, v32 - v28);
        v30 = v82;
      }

      LODWORD(v82) = v30 + ((v32 - v28) >> 3);
      LODWORD(v94) = 0;
      v93 = 0u;
      v95 = v97;
      v96 = 0x400000000;
      v34 = a1 + 64;
      __dst = *(a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1));
      v35 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&__dst);
      __dst = *(a1 + 64 + 16 * ((*(a1 + 44) >> 23) & 1));
      v36 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&__dst);
      for (i = (v36 + 8 * v37); v35 != i; ++v35)
      {
        llvm::SetVector<long long,llvm::SmallVector<long long,4u>,llvm::DenseSet<long long,llvm::DenseMapInfo<long long,void>>,4u>::insert(&v93, v35);
      }

      __dst = v92;
      v91 = 0x600000000;
      __src = *(v34 + 16 * ((*(a1 + 44) >> 23) & 1) + 8);
      if (__src)
      {
        mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&__src);
        if (!v39)
        {
          goto LABEL_53;
        }
      }

      else
      {
        Context = mlir::Attribute::getContext((a1 + 24));
        DenseI64ArrayAttr = mlir::Builder::getDenseI64ArrayAttr(&Context, 0, 0);
        mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&DenseI64ArrayAttr);
        if (!v40)
        {
          goto LABEL_53;
        }
      }

      __src = *(v34 + 16 * ((*(a1 + 44) >> 23) & 1) + 8);
      if (__src)
      {
        p_src = &__src;
      }

      else
      {
        Context = mlir::Attribute::getContext((a1 + 24));
        DenseI64ArrayAttr = mlir::Builder::getDenseI64ArrayAttr(&Context, 0, 0);
        p_src = &DenseI64ArrayAttr;
      }

      v42 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(p_src);
      mlir::invertPermutationVector(v42, v43, &__src);
      v44 = __src;
      if (__src != v89)
      {
        if (__dst != v92)
        {
          free(__dst);
          v44 = __src;
        }

        __dst = v44;
        v91 = v88;
        __src = v89;
        v88 = 0;
        goto LABEL_53;
      }

      v61 = v88;
      v62 = v91;
      if (v91 >= v88)
      {
        if (v88)
        {
          memmove(__dst, __src, 8 * v88);
        }

        goto LABEL_113;
      }

      if (HIDWORD(v91) >= v88)
      {
        if (v91)
        {
          memmove(__dst, __src, 8 * v91);
          goto LABEL_111;
        }
      }

      else
      {
        LODWORD(v91) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v92, v88, 8);
      }

      v62 = 0;
LABEL_111:
      if (v88 != v62)
      {
        memcpy(__dst + 8 * v62, __src + 8 * v62, 8 * (v88 - v62));
      }

LABEL_113:
      LODWORD(v91) = v61;
      LODWORD(v88) = 0;
      if (__src != v89)
      {
        free(__src);
      }

LABEL_53:
      __src = (*(*(*(a1 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
      mlir::ArrayAttr::getValue(&__src);
      if (v45 << 32)
      {
        v46 = v45;
        v47 = v91;
        v48 = __dst;
        v49 = __s1;
        v50 = v81;
        if (DWORD2(v93))
        {
          v51 = v94;
          if (v94)
          {
            v52 = 0;
            v53 = v93;
            v54 = v94 - 1;
            while (1)
            {
              v55 = (37 * v52) & v54;
              v56 = *(v53 + 8 * v55);
              if (v52 != v56)
              {
                break;
              }

LABEL_59:
              if (v55 == v51)
              {
                goto LABEL_60;
              }

LABEL_57:
              if (++v52 == v45)
              {
                goto LABEL_70;
              }
            }

            v59 = 1;
            while (v56 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v60 = v55 + v59++;
              v55 = v60 & v54;
              v56 = *(v53 + 8 * v55);
              if (v52 == v56)
              {
                goto LABEL_59;
              }
            }

LABEL_60:
            v57 = v52;
            if (v47)
            {
              v57 = v48[v52];
            }

            v58 = v49[v57];
            if ((v58 == 0x8000000000000000) != (v50[v52] == 0x8000000000000000))
            {
              if (v58 == 0x8000000000000000)
              {
                v58 = v50[v52];
              }

              v49[v57] = v58;
              v50[v52] = v58;
            }

            goto LABEL_57;
          }

          if (v91)
          {
            do
            {
              v72 = *v48++;
              v71 = v72;
              v73 = v49[v72];
              if ((v73 == 0x8000000000000000) != (*v50 == 0x8000000000000000))
              {
                if (v73 == 0x8000000000000000)
                {
                  v73 = *v50;
                }

                v49[v71] = v73;
                *v50 = v73;
              }

              ++v50;
              --v46;
            }

            while (v46);
          }

          else
          {
            do
            {
              v77 = *v49;
              if ((*v49 == 0x8000000000000000) != (*v50 == 0x8000000000000000))
              {
                if (v77 == 0x8000000000000000)
                {
                  v77 = *v50;
                }

                *v49 = v77;
                *v50 = v77;
              }

              ++v50;
              ++v49;
              --v46;
            }

            while (v46);
          }
        }

        else if (v96)
        {
          v63 = 0;
          v64 = v95;
          v65 = 8 * v96;
          do
          {
            v66 = v65;
            v67 = v64;
            while (*v67 != v63)
            {
              ++v67;
              v66 -= 8;
              if (!v66)
              {
                goto LABEL_85;
              }
            }

            if (!v66)
            {
LABEL_85:
              v68 = v63;
              if (v47)
              {
                v68 = v48[v63];
              }

              v69 = v49[v68];
              if ((v69 == 0x8000000000000000) != (v50[v63] == 0x8000000000000000))
              {
                if (v69 == 0x8000000000000000)
                {
                  v69 = v50[v63];
                }

                v49[v68] = v69;
                v50[v63] = v69;
              }
            }

            ++v63;
          }

          while (v63 != v45);
        }

        else if (v91)
        {
          do
          {
            v75 = *v48++;
            v74 = v75;
            v76 = v49[v75];
            if ((v76 == 0x8000000000000000) != (*v50 == 0x8000000000000000))
            {
              if (v76 == 0x8000000000000000)
              {
                v76 = *v50;
              }

              v49[v74] = v76;
              *v50 = v76;
            }

            ++v50;
            --v46;
          }

          while (v46);
        }

        else
        {
          do
          {
            v78 = *v49;
            if ((*v49 == 0x8000000000000000) != (*v50 == 0x8000000000000000))
            {
              if (v78 == 0x8000000000000000)
              {
                v78 = *v50;
              }

              *v49 = v78;
              *v50 = v78;
            }

            ++v50;
            ++v49;
            --v46;
          }

          while (v46);
        }
      }

LABEL_70:
      if (__dst != v92)
      {
        free(__dst);
      }

      if (v95 != v97)
      {
        free(v95);
      }

      llvm::deallocate_buffer(v93, (8 * v94));
    }

    InterfaceFor = mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor(v9);
  }

  __dst = v9;
  v91 = InterfaceFor;
  if (!v9)
  {
    goto LABEL_31;
  }

  v10 = *(*(a1 + 72) + 56);
  mlir::MapDynamicShapeOpInterface::mapDynamicShape(&v93, &__dst);
  v11 = mlir::MutableOperandRange::operator mlir::OperandRange(&v93);
  if (v94 != &v96)
  {
    free(v94);
  }

  v12 = *(v10 + 8) & 7;
  if (v10 && v12 == 6)
  {
    v12 = (*(v10 + 16) + 6);
  }

  v13 = *(v11 + 32 * v12 + 24);
  (*(*a2 + 40))(a2, a1);
  v14 = mlir::MutableOperandRange::MutableOperandRange(&v93, (*(a1 + 72) + 32));
  v15 = mlir::MutableOperandRange::operator mlir::OperandRange(v14);
  v17 = v16;
  if (v94 != &v96)
  {
    free(v94);
  }

  *&v93 = v15;
  *(&v93 + 1) = v17;
  v18 = (*(a1 + 72) + 32 * mlir::OperandRange::getBeginOperandIndex(&v93));
  v19 = v18[1];
  if (v19)
  {
    v20 = *v18;
    *v19 = *v18;
    if (v20)
    {
      *(v20 + 8) = v19;
    }
  }

  v18[3] = v13;
  v18[1] = v13;
  v21 = *v13;
  *v18 = *v13;
  if (v21)
  {
    *(v21 + 8) = v18;
  }

  *v13 = v18;
  (*(*a2 + 48))(a2, a1);
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::tensor::UnPackOp,mlir::Value &,mlir::Value &,llvm::ArrayRef<long long>,llvm::SmallVector<mlir::OpFoldResult,6u>,llvm::ArrayRef<long long>>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23[38] = *MEMORY[0x1E69E9840];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::UnPackOp,void>::id, Context);
  if ((v16 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::UnPackOp,mlir::Value &,mlir::Value &,llvm::ArrayRef<long long>,llvm::SmallVector<mlir::OpFoldResult,6u>,llvm::ArrayRef<long long>>(v23, v22, v21);
  }

  mlir::OperationState::OperationState(v23, a2, v15);
  mlir::tensor::UnPackOp::build(a1, v23, *a3, *a4, *a5, *(a5 + 8), *a6, *(a6 + 8), *a7, *(a7 + 8));
  v17 = mlir::OpBuilder::create(a1, v23);
  if (*(*(v17 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::UnPackOp,void>::id)
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

unint64_t mlir::tensor::UnPackOp::fold(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 64);
  v4 = *v3;
  if (*v3 && !mlir::DenseElementsAttr::classof(*v3))
  {
    v4 = 0;
  }

  if (*(*a1 + 36))
  {
    v5 = *a1 - 16;
  }

  else
  {
    v5 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  result = reshapeConstantSource(v4, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), 0, 0);
  if (result <= 7)
  {
    return 0;
  }

  return result;
}

uint64_t mlir::tensor::BitcastOp::verifyInvariantsImpl(mlir::tensor::BitcastOp *this)
{
  v2 = mlir::tensor::__mlir_ods_local_type_constraint_TensorOps1(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0);
  result = 0;
  if (v2)
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
    return mlir::tensor::__mlir_ods_local_type_constraint_TensorOps1(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
  }

  return result;
}

uint64_t mlir::tensor::__mlir_ods_local_type_constraint_TensorOps1(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned int a5)
{
  v68 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  v7 = *(*a2 + 136);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    {
      v9 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v10 = *(v6 + 8);
      v11 = *(v6 + 16);
      if (!v11)
      {
        goto LABEL_59;
      }
    }

    else
    {
      getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
      v9 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v10 = *(v6 + 8);
      v11 = *(v6 + 16);
      if (!v11)
      {
        goto LABEL_59;
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
      v46 = v12[1];
      goto LABEL_61;
    }

LABEL_59:
    v46 = 0;
LABEL_61:
    v57[0] = a2;
    v57[1] = v46;
    mlir::ElementsAttr::isSplat(v57);
    return 1;
  }

  v53 = 261;
  v52[0] = a3;
  v52[1] = a4;
  mlir::Operation::emitOpError(a1, v52, v57);
  if (v57[0])
  {
    v54 = 3;
    v55 = " #";
    v56 = 2;
    v19 = &v54;
    v20 = v58;
    if (v59 >= v60)
    {
      if (v58 <= &v54 && v58 + 24 * v59 > &v54)
      {
        v48 = &v54 - v58;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v59 + 1, 24);
        v20 = v58;
        v19 = (v58 + v48);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v59 + 1, 24);
        v19 = &v54;
        v20 = v58;
      }
    }

    v21 = &v20[24 * v59];
    v22 = *v19;
    *(v21 + 2) = *(v19 + 2);
    *v21 = v22;
    v23 = ++v59;
    if (v57[0])
    {
      v54 = 5;
      v55 = a5;
      v24 = &v54;
      v25 = v58;
      if (v23 >= v60)
      {
        if (v58 <= &v54 && v58 + 24 * v23 > &v54)
        {
          v49 = &v54 - v58;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v23 + 1, 24);
          v25 = v58;
          v24 = (v58 + v49);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v23 + 1, 24);
          v24 = &v54;
          v25 = v58;
        }
      }

      v26 = &v25[24 * v59];
      v27 = *v24;
      *(v26 + 2) = *(v24 + 2);
      *v26 = v27;
      v28 = ++v59;
      if (v57[0])
      {
        v54 = 3;
        v55 = " must be tensor of any type values, but got ";
        v56 = 44;
        v29 = &v54;
        v30 = v58;
        if (v28 >= v60)
        {
          if (v58 <= &v54 && v58 + 24 * v28 > &v54)
          {
            v50 = &v54 - v58;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v28 + 1, 24);
            v30 = v58;
            v29 = (v58 + v50);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v28 + 1, 24);
            v29 = &v54;
            v30 = v58;
          }
        }

        v31 = &v30[24 * v59];
        v32 = *v29;
        *(v31 + 2) = *(v29 + 2);
        *v31 = v32;
        ++v59;
        if (v57[0])
        {
          v33 = &v54;
          mlir::DiagnosticArgument::DiagnosticArgument(&v54, a2);
          v34 = v58;
          if (v59 >= v60)
          {
            if (v58 <= &v54 && v58 + 24 * v59 > &v54)
            {
              v51 = &v54 - v58;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v59 + 1, 24);
              v34 = v58;
              v33 = (v58 + v51);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v59 + 1, 24);
              v33 = &v54;
              v34 = v58;
            }
          }

          v35 = &v34[24 * v59];
          v36 = *v33;
          *(v35 + 2) = *(v33 + 2);
          *v35 = v36;
          ++v59;
        }
      }
    }
  }

  v37 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v57);
  if (v57[0])
  {
    mlir::InFlightDiagnostic::report(v57);
  }

  if (v67 == 1)
  {
    if (v66 != &v67)
    {
      free(v66);
    }

    v38 = __p;
    if (__p)
    {
      v39 = v65;
      v40 = __p;
      if (v65 != __p)
      {
        do
        {
          v39 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v39 - 1);
        }

        while (v39 != v38);
        v40 = __p;
      }

      v65 = v38;
      operator delete(v40);
    }

    v41 = v62;
    if (v62)
    {
      v42 = v63;
      v43 = v62;
      if (v63 != v62)
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
        v43 = v62;
      }

      v63 = v41;
      operator delete(v43);
    }

    if (v58 != v61)
    {
      free(v58);
    }
  }

  return v37;
}

uint64_t mlir::tensor::BitcastOp::parse(uint64_t a1, uint64_t a2)
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
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, v12))
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
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &v6))
  {
    return 0;
  }

  v12[0] = v6;
  mlir::OperationState::addTypes(a2, v12, 1);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v9, v7, v4, a2 + 16) & 1;
}

uint64_t mlir::tensor::CastOp::parse(uint64_t a1, uint64_t a2)
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
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, v12))
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
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &v6))
  {
    return 0;
  }

  v12[0] = v6;
  mlir::OperationState::addTypes(a2, v12, 1);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v9, v7, v4, a2 + 16) & 1;
}

uint64_t mlir::tensor::CollapseShapeOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::ArrayAttr>(a1, v3) & 1;
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::CollapseShapeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::CollapseShapeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::CollapseShapeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::CollapseShapeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::tensor::CollapseShapeOp::build();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::tensor::detail::CollapseShapeOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readAttribute<mlir::ArrayAttr>(a1, *(a2 + 256)) & 1;
}

void mlir::tensor::CollapseShapeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a4;
  mlir::OperationState::addOperands(a2, &v11, 1uLL);
  v8 = *(a2 + 256);
  if (v8)
  {
    *v8 = a5;
    v9 = *(a2 + 72);
    if (v9 >= *(a2 + 76))
    {
LABEL_3:
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v9 + 1, 8);
      LODWORD(v9) = *(a2 + 72);
    }
  }

  else
  {
    v10 = operator new(8uLL);
    *v10 = 0;
    *(a2 + 256) = v10;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::CollapseShapeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::CollapseShapeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v13;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::CollapseShapeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::CollapseShapeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v12;
    {
      mlir::tensor::CollapseShapeOp::build();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::tensor::detail::CollapseShapeOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    **(a2 + 256) = a5;
    v9 = *(a2 + 72);
    if (v9 >= *(a2 + 76))
    {
      goto LABEL_3;
    }
  }

  *(*(a2 + 64) + 8 * v9) = a3;
  ++*(a2 + 72);
}

BOOL mlir::tensor::CollapseShapeOp::verifyInvariantsImpl(mlir::tensor::CollapseShapeOp *this)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v18[0] = v2;
    if (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps5(v3, "reassociation", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v18) & 1) != 0 && (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps1(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0))
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
      return mlir::tensor::__mlir_ods_local_type_constraint_TensorOps1(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v16 = "requires attribute 'reassociation'";
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

uint64_t mlir::tensor::CollapseShapeOp::parse(uint64_t a1, void *a2)
{
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v19[0] = v20;
  v19[1] = 1;
  v17 = 0;
  v18 = 0;
  v16[0] = &v17;
  v16[1] = 1;
  v15 = 0;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v20, 1) & 1) == 0)
  {
    return 0;
  }

  v5 = (*(*a1 + 32))(a1);
  v7 = mlir::NoneType::get(*v5, v6);
  if (!mlir::AsmParser::parseAttribute<mlir::ArrayAttr>(a1, &v18, v7))
  {
    return 0;
  }

  v8 = v18;
  if (v18)
  {
    v9 = a2[32];
    if (!v9)
    {
      v10 = operator new(8uLL);
      *v10 = 0;
      a2[32] = v10;
      a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::CollapseShapeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::CollapseShapeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      a2[35] = v22;
      a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::CollapseShapeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::CollapseShapeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      a2[37] = v22;
      {
        mlir::tensor::CollapseShapeOp::build();
      }

      a2[33] = mlir::detail::TypeIDResolver<mlir::tensor::detail::CollapseShapeOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v9 = a2[32];
      v8 = v18;
    }

    *v9 = v8;
  }

  v14 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 14) & 1) == 0)
  {
    return 0;
  }

  v11 = a2[1];
  v22[0] = a1;
  v22[1] = &v14;
  v22[2] = a2;
  v12 = mlir::NamedAttrList::get((a2 + 14), **(v11 + 96));
  if (v12)
  {
    if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps5(v12, "reassociation", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::CollapseShapeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v22) & 1) == 0)
    {
      return 0;
    }
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v22[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, v22))
  {
    return 0;
  }

  v17 = v22[0];
  v23 = 257;
  if (((*(*a1 + 400))(a1, "into", 4, v22) & 1) == 0)
  {
    return 0;
  }

  v22[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, v22))
  {
    return 0;
  }

  v15 = v22[0];
  mlir::OperationState::addTypes(a2, &v15, 1);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v19, v16, v4, (a2 + 2)) & 1;
}

uint64_t mlir::tensor::ConcatOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v56.var0 = "dim";
  v56.var1 = 3;
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

uint64_t mlir::tensor::ConcatOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v13, "dim", 3, *a2);
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

unint64_t mlir::tensor::ConcatOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 3 && (*a3 == 26980 ? (v4 = *(a3 + 2) == 109) : (v4 = 0), v4))
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::tensor::ConcatOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 3 && *a2 == 26980 && *(a2 + 2) == 109)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
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

void mlir::tensor::ConcatOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "dim", 3, *a2);
  }
}

uint64_t mlir::tensor::ConcatOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, v3) & 1;
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ConcatOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ConcatOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ConcatOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ConcatOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::tensor::ConcatOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::tensor::detail::ConcatOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, *(a2 + 256)) & 1;
}

uint64_t mlir::tensor::ConcatOp::verifyInvariantsImpl(mlir::tensor::ConcatOp *this)
{
  v79 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v67 = v2;
    if (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps12(v3, "dim", 3, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v67))
    {
      v4 = *this;
      if ((*(*this + 46) & 0x80) != 0)
      {
        v5 = *(v4 + 68);
        if (v5)
        {
          v6 = 0;
          v7 = *(v4 + 72);
          while (1)
          {
            while (1)
            {
              while (1)
              {
                v8 = *(*(v7 + 32 * v6 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
                v9 = *v8;
                if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
                {
                  break;
                }

                v10 = *this;
                v63 = 261;
                v62[0] = "operand";
                v62[1] = 7;
                mlir::Operation::emitOpError(v10, v62, &v67);
                if (v67)
                {
                  v64 = 3;
                  v65 = " #";
                  v66 = 2;
                  v11 = v69;
                  if (v70 >= v71)
                  {
                    if (v69 <= &v64 && v69 + 24 * v70 > &v64)
                    {
                      v48 = &v64 - v69;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v69, v72, v70 + 1, 24);
                      v11 = v69;
                      v12 = (v69 + v48);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v69, v72, v70 + 1, 24);
                      v12 = &v64;
                      v11 = v69;
                    }
                  }

                  else
                  {
                    v12 = &v64;
                  }

                  v13 = &v11[24 * v70];
                  v14 = *v12;
                  *(v13 + 2) = *(v12 + 2);
                  *v13 = v14;
                  v15 = ++v70;
                  if (v67)
                  {
                    v64 = 5;
                    v65 = v6;
                    v16 = v69;
                    if (v15 >= v71)
                    {
                      if (v69 <= &v64 && v69 + 24 * v15 > &v64)
                      {
                        v49 = &v64 - v69;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v69, v72, v15 + 1, 24);
                        v16 = v69;
                        v17 = (v69 + v49);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v69, v72, v15 + 1, 24);
                        v17 = &v64;
                        v16 = v69;
                      }
                    }

                    else
                    {
                      v17 = &v64;
                    }

                    v18 = &v16[24 * v70];
                    v19 = *v17;
                    *(v18 + 2) = *(v17 + 2);
                    *v18 = v19;
                    v20 = ++v70;
                    if (v67)
                    {
                      v64 = 3;
                      v65 = " must be variadic of ranked tensor of any type values, but got ";
                      v66 = 63;
                      v21 = v69;
                      if (v20 >= v71)
                      {
                        if (v69 <= &v64 && v69 + 24 * v20 > &v64)
                        {
                          v50 = &v64 - v69;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v69, v72, v20 + 1, 24);
                          v21 = v69;
                          v22 = (v69 + v50);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v69, v72, v20 + 1, 24);
                          v22 = &v64;
                          v21 = v69;
                        }
                      }

                      else
                      {
                        v22 = &v64;
                      }

                      v23 = &v21[24 * v70];
                      v24 = *v22;
                      *(v23 + 2) = *(v22 + 2);
                      *v23 = v24;
                      ++v70;
                      if (v67)
                      {
                        v25 = &v64;
                        mlir::DiagnosticArgument::DiagnosticArgument(&v64, v8);
                        v26 = v69;
                        if (v70 >= v71)
                        {
                          if (v69 <= &v64 && v69 + 24 * v70 > &v64)
                          {
                            v51 = &v64 - v69;
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v69, v72, v70 + 1, 24);
                            v26 = v69;
                            v25 = (v69 + v51);
                          }

                          else
                          {
                            llvm::SmallVectorBase<unsigned int>::grow_pod(&v69, v72, v70 + 1, 24);
                            v25 = &v64;
                            v26 = v69;
                          }
                        }

                        v27 = &v26[24 * v70];
                        v28 = *v25;
                        *(v27 + 2) = *(v25 + 2);
                        *v27 = v28;
                        ++v70;
                      }
                    }
                  }
                }

                v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v67);
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

                  v30 = __p;
                  if (__p)
                  {
                    v31 = v76;
                    v32 = __p;
                    if (v76 != __p)
                    {
                      do
                      {
                        v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
                      }

                      while (v31 != v30);
                      v32 = __p;
                    }

                    v76 = v30;
                    operator delete(v32);
                  }

                  v33 = v73;
                  if (v73)
                  {
                    v34 = v74;
                    v35 = v73;
                    if (v74 != v73)
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
                      v35 = v73;
                    }

                    v74 = v33;
                    operator delete(v35);
                  }

                  if (v69 != v72)
                  {
                    free(v69);
                  }
                }

                if (!v29)
                {
                  return 0;
                }

                if (++v6 == v5)
                {
LABEL_95:
                  v4 = *this;
                  goto LABEL_96;
                }
              }

              {
                break;
              }

              mlir::arith::ExtUIOp::fold();
              v38 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
              v39 = *(v9 + 8);
              v40 = *(v9 + 16);
              if (v40)
              {
                goto LABEL_39;
              }

LABEL_65:
              v67 = v8;
              v68 = 0;
              mlir::ElementsAttr::isSplat(&v67);
              if (++v6 == v5)
              {
                goto LABEL_95;
              }
            }

            v38 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
            v39 = *(v9 + 8);
            v40 = *(v9 + 16);
            if (!v40)
            {
              goto LABEL_65;
            }

LABEL_39:
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
              goto LABEL_65;
            }

            v47 = v41[1];
            v67 = v8;
            v68 = v47;
            mlir::ElementsAttr::isSplat(&v67);
            if (++v6 == v5)
            {
              goto LABEL_95;
            }
          }
        }
      }

LABEL_96:
      mlir::tensor::ConcatOp::verifyInvariantsImpl(v4, this, &v67);
      return v67;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v62[0] = "requires attribute 'dim'";
    v63 = 259;
    mlir::OpState::emitOpError(this, v62, &v67);
    v52 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v67);
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

      v53 = __p;
      if (__p)
      {
        v54 = v76;
        v55 = __p;
        if (v76 != __p)
        {
          do
          {
            v54 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v54 - 1);
          }

          while (v54 != v53);
          v55 = __p;
        }

        v76 = v53;
        operator delete(v55);
      }

      v56 = v73;
      if (v73)
      {
        v57 = v74;
        v58 = v73;
        if (v74 != v73)
        {
          do
          {
            v60 = *--v57;
            v59 = v60;
            *v57 = 0;
            if (v60)
            {
              operator delete[](v59);
            }
          }

          while (v57 != v56);
          v58 = v73;
        }

        v74 = v56;
        operator delete(v58);
      }

      if (v69 != v72)
      {
        free(v69);
      }
    }
  }

  return v52;
}

uint64_t mlir::tensor::__mlir_ods_local_type_constraint_TensorOps3(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned int a5)
{
  v66 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    {
      v35 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v36 = *(v6 + 8);
      v37 = *(v6 + 16);
      if (!v37)
      {
        goto LABEL_55;
      }
    }

    else
    {
      getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
      v35 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v36 = *(v6 + 8);
      v37 = *(v6 + 16);
      if (!v37)
      {
        goto LABEL_55;
      }
    }

    v38 = v36;
    v39 = v37;
    do
    {
      v40 = v39 >> 1;
      v41 = &v38[2 * (v39 >> 1)];
      v43 = *v41;
      v42 = v41 + 2;
      v39 += ~(v39 >> 1);
      if (v43 < v35)
      {
        v38 = v42;
      }

      else
      {
        v39 = v40;
      }
    }

    while (v39);
    if (v38 != &v36[2 * v37] && *v38 == v35)
    {
      v44 = v38[1];
      goto LABEL_57;
    }

LABEL_55:
    v44 = 0;
LABEL_57:
    v55[0] = a2;
    v55[1] = v44;
    mlir::ElementsAttr::isSplat(v55);
    return 1;
  }

  v51 = 261;
  v50[0] = a3;
  v50[1] = a4;
  mlir::Operation::emitOpError(a1, v50, v55);
  if (v55[0])
  {
    v52 = 3;
    v53 = " #";
    v54 = 2;
    v8 = &v52;
    v9 = v56;
    if (v57 >= v58)
    {
      if (v56 <= &v52 && v56 + 24 * v57 > &v52)
      {
        v46 = &v52 - v56;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v57 + 1, 24);
        v9 = v56;
        v8 = (v56 + v46);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v57 + 1, 24);
        v8 = &v52;
        v9 = v56;
      }
    }

    v10 = &v9[24 * v57];
    v11 = *v8;
    *(v10 + 2) = *(v8 + 2);
    *v10 = v11;
    v12 = ++v57;
    if (v55[0])
    {
      v52 = 5;
      v53 = a5;
      v13 = &v52;
      v14 = v56;
      if (v12 >= v58)
      {
        if (v56 <= &v52 && v56 + 24 * v12 > &v52)
        {
          v47 = &v52 - v56;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v12 + 1, 24);
          v14 = v56;
          v13 = (v56 + v47);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v12 + 1, 24);
          v13 = &v52;
          v14 = v56;
        }
      }

      v15 = &v14[24 * v57];
      v16 = *v13;
      *(v15 + 2) = *(v13 + 2);
      *v15 = v16;
      v17 = ++v57;
      if (v55[0])
      {
        v52 = 3;
        v53 = " must be ranked tensor of any type values, but got ";
        v54 = 51;
        v18 = &v52;
        v19 = v56;
        if (v17 >= v58)
        {
          if (v56 <= &v52 && v56 + 24 * v17 > &v52)
          {
            v48 = &v52 - v56;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v17 + 1, 24);
            v19 = v56;
            v18 = (v56 + v48);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v17 + 1, 24);
            v18 = &v52;
            v19 = v56;
          }
        }

        v20 = &v19[24 * v57];
        v21 = *v18;
        *(v20 + 2) = *(v18 + 2);
        *v20 = v21;
        ++v57;
        if (v55[0])
        {
          v22 = &v52;
          mlir::DiagnosticArgument::DiagnosticArgument(&v52, a2);
          v23 = v56;
          if (v57 >= v58)
          {
            if (v56 <= &v52 && v56 + 24 * v57 > &v52)
            {
              v49 = &v52 - v56;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v57 + 1, 24);
              v23 = v56;
              v22 = (v56 + v49);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v57 + 1, 24);
              v22 = &v52;
              v23 = v56;
            }
          }

          v24 = &v23[24 * v57];
          v25 = *v22;
          *(v24 + 2) = *(v22 + 2);
          *v24 = v25;
          ++v57;
        }
      }
    }
  }

  v26 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v55);
  if (v55[0])
  {
    mlir::InFlightDiagnostic::report(v55);
  }

  if (v65 == 1)
  {
    if (v64 != &v65)
    {
      free(v64);
    }

    v27 = __p;
    if (__p)
    {
      v28 = v63;
      v29 = __p;
      if (v63 != __p)
      {
        do
        {
          v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
        }

        while (v28 != v27);
        v29 = __p;
      }

      v63 = v27;
      operator delete(v29);
    }

    v30 = v60;
    if (v60)
    {
      v31 = v61;
      v32 = v60;
      if (v61 != v60)
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
        v32 = v60;
      }

      v61 = v30;
      operator delete(v32);
    }

    if (v56 != v59)
    {
      free(v56);
    }
  }

  return v26;
}

uint64_t mlir::tensor::ConcatOp::parse(uint64_t a1, void *a2)
{
  v23[16] = *MEMORY[0x1E69E9840];
  v18 = 0;
  v19 = 0;
  v22[0] = v23;
  v22[1] = 0x400000000;
  Inputs = 0;
  v21 = 257;
  if (((*(*a1 + 400))() & 1) == 0)
  {
    goto LABEL_17;
  }

  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    goto LABEL_17;
  }

  v4 = (*(*a1 + 32))(a1);
  IntegerType = mlir::Builder::getIntegerType(v4, 64);
  if (!mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(a1, &v19, IntegerType))
  {
    goto LABEL_17;
  }

  v6 = v19;
  if (v19)
  {
    v7 = a2[32];
    if (!v7)
    {
      v8 = operator new(8uLL);
      *v8 = 0;
      a2[32] = v8;
      a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ConcatOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ConcatOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      a2[35] = v20;
      a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ConcatOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ConcatOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      a2[37] = v20;
      {
        mlir::tensor::ConcatOp::readProperties();
      }

      a2[33] = mlir::detail::TypeIDResolver<mlir::tensor::detail::ConcatOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v7 = a2[32];
      v6 = v19;
    }

    *v7 = v6;
  }

  if ((*(*a1 + 296))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v22, 0, 1, 0xFFFFFFFFLL)) && (v16 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 14)) && (v9 = a2[1], v20[0] = a1, v20[1] = &v16, v20[2] = a2, mlir::tensor::ConcatOp::verifyInherentAttrs(v9, (a2 + 14), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::ConcatOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v20)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v20[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v20)))
  {
    Inputs = mlir::FunctionType::getInputs(v20);
    v18 = v10;
    Results = mlir::FunctionType::getResults(v20);
    mlir::OperationState::addTypes(a2, Results, v12);
    v13 = (*(*a1 + 16))(a1);
    v14 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,3u> &,llvm::ArrayRef<mlir::Type>>(a1, v22, &Inputs, v13, (a2 + 2)) & 1;
  }

  else
  {
LABEL_17:
    v14 = 0;
  }

  if (v22[0] != v23)
  {
    free(v22[0]);
  }

  return v14;
}

uint64_t mlir::tensor::DimOp::verifyInvariantsImpl(mlir::tensor::DimOp *this)
{
  v105 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  v5 = *(*v3 + 136);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    {
      v33 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v34 = *(v4 + 8);
      v35 = *(v4 + 16);
      if (!v35)
      {
        goto LABEL_67;
      }
    }

    else
    {
      v51 = v4;
      mlir::arith::ExtUIOp::fold();
      v33 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v34 = *(v51 + 8);
      v35 = *(v51 + 16);
      if (!v35)
      {
        goto LABEL_67;
      }
    }

    v36 = v34;
    v37 = v35;
    do
    {
      v38 = v37 >> 1;
      v39 = &v36[2 * (v37 >> 1)];
      v41 = *v39;
      v40 = v39 + 2;
      v37 += ~(v37 >> 1);
      if (v41 < v33)
      {
        v36 = v40;
      }

      else
      {
        v37 = v38;
      }
    }

    while (v37);
    if (v36 != &v34[2 * v35] && *v36 == v33)
    {
      v52 = v36[1];
      goto LABEL_69;
    }

LABEL_67:
    v52 = 0;
LABEL_69:
    v94[0] = v3;
    v53 = v94;
LABEL_70:
    *(v53 + 1) = v52;
    mlir::ElementsAttr::isSplat(v53);
    goto LABEL_71;
  }

  if (v5 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_3;
  }

  {
    v42 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v43 = *(v4 + 8);
    v44 = *(v4 + 16);
    if (!v44)
    {
      goto LABEL_81;
    }
  }

  else
  {
    v57 = v4;
    mlir::arith::ExtUIOp::fold();
    v42 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v43 = *(v57 + 8);
    v44 = *(v57 + 16);
    if (!v44)
    {
      goto LABEL_81;
    }
  }

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
  if (v45 == &v43[2 * v44] || *v45 != v42)
  {
LABEL_81:
    v87 = v3;
    v88 = 0;
    if (!mlir::CallOpInterface::getArgOperands(&v87))
    {
      goto LABEL_3;
    }

    goto LABEL_84;
  }

  v58 = v45[1];
  v87 = v3;
  v88 = v58;
  if (!mlir::CallOpInterface::getArgOperands(&v87))
  {
    goto LABEL_3;
  }

LABEL_84:
  v59 = *v3;
  {
    v60 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v61 = *(v59 + 8);
    v62 = *(v59 + 16);
    if (!v62)
    {
      goto LABEL_96;
    }
  }

  else
  {
    v86 = v59;
    mlir::arith::ExtUIOp::fold();
    v60 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v61 = *(v86 + 8);
    v62 = *(v86 + 16);
    if (!v62)
    {
      goto LABEL_96;
    }
  }

  v63 = v61;
  v64 = v62;
  do
  {
    v65 = v64 >> 1;
    v66 = &v63[2 * (v64 >> 1)];
    v68 = *v66;
    v67 = v66 + 2;
    v64 += ~(v64 >> 1);
    if (v68 < v60)
    {
      v63 = v67;
    }

    else
    {
      v64 = v65;
    }
  }

  while (v64);
  if (v63 != &v61[2 * v62] && *v63 == v60)
  {
    v70 = v63[1];
    v91 = v3;
    v92 = v70;
    mlir::CallableOpInterface::getArgAttrsAttr(&v91);
    if (v71 < 1)
    {
      goto LABEL_3;
    }

LABEL_99:
    v72 = *v3;
    {
      v73 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v74 = *(v72 + 8);
      v75 = *(v72 + 16);
      if (!v75)
      {
        goto LABEL_112;
      }
    }

    else
    {
      mlir::arith::ExtUIOp::fold();
      v73 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v74 = *(v72 + 8);
      v75 = *(v72 + 16);
      if (!v75)
      {
        goto LABEL_112;
      }
    }

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
    if (v76 != &v74[2 * v75] && *v76 == v73)
    {
      v52 = v76[1];
      goto LABEL_114;
    }

LABEL_112:
    v52 = 0;
LABEL_114:
    v90 = v3;
    v53 = &v90;
    goto LABEL_70;
  }

LABEL_96:
  v91 = v3;
  v92 = 0;
  mlir::CallableOpInterface::getArgAttrsAttr(&v91);
  if (v69 >= 1)
  {
    goto LABEL_99;
  }

LABEL_3:
  v89 = 261;
  v87 = "operand";
  v88 = 7;
  mlir::Operation::emitOpError(v2, &v87, v94);
  if (v94[0])
  {
    LODWORD(v91) = 3;
    v92 = " #";
    v93 = 2;
    v6 = &v91;
    v7 = v95;
    if (v96 >= v97)
    {
      if (v95 <= &v91 && v95 + 24 * v96 > &v91)
      {
        v82 = &v91 - v95;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v95, v98, v96 + 1, 24);
        v7 = v95;
        v6 = (v95 + v82);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v95, v98, v96 + 1, 24);
        v6 = &v91;
        v7 = v95;
      }
    }

    v8 = &v7[24 * v96];
    v9 = *v6;
    *(v8 + 2) = v6[2];
    *v8 = v9;
    v10 = ++v96;
    if (v94[0])
    {
      LODWORD(v91) = 5;
      v92 = 0;
      v11 = &v91;
      v12 = v95;
      if (v10 >= v97)
      {
        if (v95 <= &v91 && v95 + 24 * v10 > &v91)
        {
          v83 = &v91 - v95;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v95, v98, v10 + 1, 24);
          v12 = v95;
          v11 = (v95 + v83);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v95, v98, v10 + 1, 24);
          v11 = &v91;
          v12 = v95;
        }
      }

      v13 = &v12[24 * v96];
      v14 = *v11;
      *(v13 + 2) = v11[2];
      *v13 = v14;
      v15 = ++v96;
      if (v94[0])
      {
        LODWORD(v91) = 3;
        v92 = " must be non-0-ranked or unranked tensor, but got ";
        v93 = 50;
        v16 = &v91;
        v17 = v95;
        if (v15 >= v97)
        {
          if (v95 <= &v91 && v95 + 24 * v15 > &v91)
          {
            v84 = &v91 - v95;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v95, v98, v15 + 1, 24);
            v17 = v95;
            v16 = (v95 + v84);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v95, v98, v15 + 1, 24);
            v16 = &v91;
            v17 = v95;
          }
        }

        v18 = &v17[24 * v96];
        v19 = *v16;
        *(v18 + 2) = v16[2];
        *v18 = v19;
        ++v96;
        if (v94[0])
        {
          v20 = &v91;
          mlir::DiagnosticArgument::DiagnosticArgument(&v91, v3);
          v21 = v95;
          if (v96 >= v97)
          {
            if (v95 <= &v91 && v95 + 24 * v96 > &v91)
            {
              v85 = &v91 - v95;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v95, v98, v96 + 1, 24);
              v21 = v95;
              v20 = (v95 + v85);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v95, v98, v96 + 1, 24);
              v20 = &v91;
              v21 = v95;
            }
          }

          v22 = &v21[24 * v96];
          v23 = *v20;
          *(v22 + 2) = v20[2];
          *v22 = v23;
          ++v96;
        }
      }
    }
  }

  v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v94);
  if (v94[0])
  {
    mlir::InFlightDiagnostic::report(v94);
  }

  if (v104 == 1)
  {
    if (v103 != &v104)
    {
      free(v103);
    }

    v25 = __p;
    if (__p)
    {
      v26 = v102;
      v27 = __p;
      if (v102 != __p)
      {
        do
        {
          v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
        }

        while (v26 != v25);
        v27 = __p;
      }

      v102 = v25;
      operator delete(v27);
    }

    v28 = v99;
    if (v99)
    {
      v29 = v100;
      v30 = v99;
      if (v100 != v99)
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
        v30 = v99;
      }

      v100 = v28;
      operator delete(v30);
    }

    if (v95 != v98)
    {
      free(v95);
    }
  }

  if (!v24)
  {
    return 0;
  }

LABEL_71:
  if ((mlir::memref::__mlir_ods_local_type_constraint_MemRefOps10(*this, *(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 36))
  {
    v54 = *this - 16;
  }

  else
  {
    v54 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v54, 0);
  return mlir::memref::__mlir_ods_local_type_constraint_MemRefOps10(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t mlir::tensor::DimOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v13[0] = v14;
  v13[1] = 1;
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v9[1] = 1;
  v10 = 0;
  v9[0] = &v10;
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v14, 1)) && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v11, 1)) && ((*(*a1 + 104))(a1) & 1) != 0 && (IndexType = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &IndexType)) && (v10 = IndexType, v5 = (*(*a1 + 32))(a1), IndexType = mlir::Builder::getIndexType(v5, v6), mlir::OperationState::addTypes(a2, &IndexType, 1), (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v13, v9, v4, a2 + 16)))
  {
    return (*(*a1 + 728))(a1, v11, IndexType, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::tensor::EmptyOp::verifyInvariantsImpl(mlir::tensor::EmptyOp *this)
{
  v2 = *this;
  if ((*(v2 + 46) & 0x80) != 0 && (v3 = *(v2 + 68), v3))
  {
    v4 = 0;
    v5 = *(v2 + 72) + 24;
    while ((mlir::memref::__mlir_ods_local_type_constraint_MemRefOps4(*this, *(*v5 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v4) & 1) != 0)
    {
      ++v4;
      v5 += 32;
      if (v3 == v4)
      {
        v2 = *this;
        goto LABEL_7;
      }
    }

    return 0;
  }

  else
  {
LABEL_7:
    mlir::tensor::ConcatOp::verifyInvariantsImpl(v2, this, &v7);
    return v7;
  }
}

uint64_t mlir::tensor::EmptyOp::parse(uint64_t a1, uint64_t a2)
{
  v15[16] = *MEMORY[0x1E69E9840];
  v13 = v15;
  v14 = 0x400000000;
  if ((*(*a1 + 280))())
  {
    (*(*a1 + 40))(a1);
    if ((*(*a1 + 720))(a1, &v13, 0, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*a1 + 296))(a1))
    {
      (*(*a1 + 40))(a1);
      if ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0 && ((*(*a1 + 104))(a1))
      {
        v11 = 0;
        if (mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &v11))
        {
          v12 = v11;
          v4 = (*(*a1 + 32))(a1);
          IndexType = mlir::Builder::getIndexType(v4, v5);
          v7 = 1;
          mlir::OperationState::addTypes(a2, &v12, 1);
          if (!v14)
          {
            goto LABEL_13;
          }

          v8 = v13;
          v9 = 32 * v14;
          while (((*(*a1 + 728))(a1, v8, IndexType, a2 + 16) & 1) != 0)
          {
            v8 += 32;
            v7 = 1;
            v9 -= 32;
            if (!v9)
            {
              goto LABEL_13;
            }
          }
        }
      }
    }
  }

  v7 = 0;
LABEL_13:
  if (v13 != v15)
  {
    free(v13);
  }

  return v7;
}

BOOL mlir::tensor::ExpandShapeOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    if (mlir::DialectBytecodeReader::readAttribute<mlir::ArrayAttr>(a1, *(a2 + 256)))
    {
      return mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3 + 1);
    }
  }

  else
  {
    v6 = operator new(0x10uLL);
    *v6 = 0;
    v6[1] = 0;
    *(a2 + 256) = v6;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v8;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v7;
    {
      mlir::tensor::ExpandShapeOp::build();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v3 = *(a2 + 256);
    if (mlir::DialectBytecodeReader::readAttribute<mlir::ArrayAttr>(a1, v3))
    {
      return mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3 + 1);
    }
  }

  return 0;
}

BOOL mlir::tensor::ExpandShapeOp::verifyInvariantsImpl(mlir::tensor::ExpandShapeOp *this)
{
  v48 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  if (!v6)
  {
    v37[0] = "requires attribute 'reassociation'";
    v38 = 259;
    mlir::OpState::emitOpError(this, v37, v39);
    v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v39);
    if (v39[0])
    {
      mlir::InFlightDiagnostic::report(v39);
    }

    if (v47 != 1)
    {
      return v18;
    }

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

    v35 = v40;
    if (v40 == v41)
    {
      return v18;
    }

LABEL_57:
    free(v35);
    return v18;
  }

  v7 = *(v5 + 8);
  if (!v7)
  {
    v37[0] = "requires attribute 'static_output_shape'";
    v38 = 259;
    mlir::OpState::emitOpError(this, v37, v39);
    v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v39);
    if (v39[0])
    {
      mlir::InFlightDiagnostic::report(v39);
    }

    if (v47 != 1)
    {
      return v18;
    }

    if (v46 != &v47)
    {
      free(v46);
    }

    v27 = __p;
    if (__p)
    {
      v28 = v45;
      v29 = __p;
      if (v45 != __p)
      {
        do
        {
          v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
        }

        while (v28 != v27);
        v29 = __p;
      }

      v45 = v27;
      operator delete(v29);
    }

    v30 = v42;
    if (v42)
    {
      v31 = v43;
      v32 = v42;
      if (v43 != v42)
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
        v32 = v42;
      }

      v43 = v30;
      operator delete(v32);
    }

    v35 = v40;
    if (v40 == v41)
    {
      return v18;
    }

    goto LABEL_57;
  }

  v39[0] = v2;
  if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps5(v4, "reassociation", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v39) & 1) == 0)
  {
    return 0;
  }

  v39[0] = *this;
  if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(v7, "static_output_shape", 0x13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v39) & 1) == 0 || (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps1(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  v8 = *this;
  if ((*(*this + 46) & 0x80) == 0)
  {
    v10 = -1;
    v11 = 32;
LABEL_9:
    v12 = v11 + 24;
    v13 = 1;
    while ((mlir::memref::__mlir_ods_local_type_constraint_MemRefOps4(*this, *(*v12 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v13) & 1) != 0)
    {
      ++v13;
      v12 += 32;
      if (!--v10)
      {
        v8 = *this;
        goto LABEL_13;
      }
    }

    return 0;
  }

  v9 = *(v8 + 68);
  v10 = v9 - 1;
  if (v9 != 1)
  {
    v11 = *(v8 + 72) + 32;
    goto LABEL_9;
  }

LABEL_13:
  v14 = *(v8 + 36);
  v15 = v8 - 16;
  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 0);
  return mlir::tensor::__mlir_ods_local_type_constraint_TensorOps1(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t mlir::tensor::ExpandShapeOp::parse(uint64_t a1, void *a2)
{
  v37[16] = *MEMORY[0x1E69E9840];
  memset(v31, 0, sizeof(v31));
  v32 = 0;
  v30[0] = v31;
  v30[1] = 1;
  v28 = 0;
  v29 = 0;
  v35 = v37;
  v36 = 0x400000000;
  v26[1] = 1;
  v27 = 0;
  v25 = 0;
  v26[0] = &v27;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v31, 1))
  {
    v5 = (*(*a1 + 32))(a1);
    v7 = mlir::NoneType::get(*v5, v6);
    if (mlir::AsmParser::parseAttribute<mlir::ArrayAttr>(a1, &v29, v7))
    {
      v8 = v29;
      if (v29)
      {
        v9 = a2[32];
        if (!v9)
        {
          v10 = operator new(0x10uLL);
          *v10 = 0;
          v10[1] = 0;
          a2[32] = v10;
          a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
          a2[35] = v33;
          a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
          a2[37] = v33;
          {
            mlir::tensor::ExpandShapeOp::build();
          }

          a2[33] = mlir::detail::TypeIDResolver<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
          v9 = a2[32];
          v8 = v29;
        }

        *v9 = v8;
      }

      v34 = 257;
      if ((*(*a1 + 400))(a1, "output_shape", 12, v33))
      {
        (*(*a1 + 40))(a1);
        v33[0] = 0;
        if (mlir::parseDynamicIndexList(a1, &v35, &v28, v33, 0))
        {
          v11 = a2[32];
          if (!v11)
          {
            v12 = operator new(0x10uLL);
            *v12 = 0;
            v12[1] = 0;
            a2[32] = v12;
            a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
            a2[35] = v33;
            a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
            a2[37] = v33;
            {
              mlir::tensor::ExpandShapeOp::build();
            }

            a2[33] = mlir::detail::TypeIDResolver<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
            v11 = a2[32];
          }

          *(v11 + 8) = v28;
          v24 = (*(*a1 + 40))(a1);
          if ((*(*a1 + 488))(a1, a2 + 14))
          {
            v13 = a2[1];
            v33[0] = a1;
            v33[1] = &v24;
            v33[2] = a2;
            v14 = mlir::NamedAttrList::get((a2 + 14), **(v13 + 96));
            if (!v14 || (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps5(v14, "reassociation", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::ExpandShapeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v33) & 1) != 0)
            {
              v15 = mlir::NamedAttrList::get((a2 + 14), *(*(v13 + 96) + 8));
              if (!v15 || (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(v15, "static_output_shape", 0x13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::ExpandShapeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v33)) && ((*(*a1 + 104))(a1))
              {
                v33[0] = 0;
                if (mlir::AsmParser::parseType<mlir::TensorType>(a1, v33))
                {
                  v27 = v33[0];
                  v34 = 257;
                  if ((*(*a1 + 400))(a1, "into", 4, v33))
                  {
                    v33[0] = 0;
                    if (mlir::AsmParser::parseType<mlir::TensorType>(a1, v33))
                    {
                      v25 = v33[0];
                      v16 = (*(*a1 + 32))(a1);
                      IndexType = mlir::Builder::getIndexType(v16, v17);
                      mlir::OperationState::addTypes(a2, &v25, 1);
                      if (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v30, v26, v4, (a2 + 2)))
                      {
                        if (!v36)
                        {
                          v21 = 1;
                          v22 = v35;
                          if (v35 == v37)
                          {
                            return v21;
                          }

                          goto LABEL_32;
                        }

                        v19 = v35;
                        v20 = 32 * v36;
                        while (((*(*a1 + 728))(a1, v19, IndexType, a2 + 2) & 1) != 0)
                        {
                          v19 += 32;
                          v21 = 1;
                          v20 -= 32;
                          if (!v20)
                          {
                            goto LABEL_31;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v21 = 0;
LABEL_31:
  v22 = v35;
  if (v35 != v37)
  {
LABEL_32:
    free(v22);
  }

  return v21;
}

unint64_t mlir::tensor::detail::ExtractOpGenericAdaptorBase::getODSOperandIndexAndLength(mlir::tensor::detail::ExtractOpGenericAdaptorBase *this, unsigned int a2, int a3, double a4, int32x4_t a5)
{
  if (!a2)
  {
    v5 = 0;
    v7 = 0;
    goto LABEL_16;
  }

  v5 = a2;
  if (a2 < 4)
  {
    v6 = 0;
    v7 = 0;
    goto LABEL_14;
  }

  if (a2 >= 0x20)
  {
    v8 = 0uLL;
    v9 = "_N_120ChainedTensorBitcastE";
    v10 = 0uLL;
    v6 = a2 & 0xFFFFFFE0;
    v11 = v6;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    do
    {
      v18 = *v9[-2].i8;
      v19 = vmovl_u8(*v18.i8);
      v20 = vmovl_high_u8(v18);
      v21 = vmovl_u8(*v9);
      v22 = vmovl_high_u8(*v9->i8);
      v13 = vaddw_high_u16(v13, v20);
      v12 = vaddw_u16(v12, *v20.i8);
      v10 = vaddw_high_u16(v10, v19);
      v8 = vaddw_u16(v8, *v19.i8);
      v17 = vaddw_high_u16(v17, v22);
      v16 = vaddw_u16(v16, *v22.i8);
      v15 = vaddw_high_u16(v15, v21);
      v14 = vaddw_u16(v14, *v21.i8);
      v9 += 4;
      v11 -= 32;
    }

    while (v11);
    a5 = vaddq_s32(vaddq_s32(v15, v10), vaddq_s32(v17, v13));
    v7 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v14, v8), vaddq_s32(v16, v12)), a5));
    if (v6 == a2)
    {
      goto LABEL_16;
    }

    if ((a2 & 0x1C) == 0)
    {
LABEL_14:
      v28 = &dword_1E097F5E1 + v6;
      v29 = a2 - v6;
      do
      {
        v30 = *v28++;
        v7 += v30;
        --v29;
      }

      while (v29);
      goto LABEL_16;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v23 = v6;
  v6 = a2 & 0xFFFFFFFC;
  v24 = v7;
  v25 = (&dword_1E097F5E1 + v23);
  v26 = v23 - v6;
  do
  {
    v27 = *v25++;
    a5.i32[0] = v27;
    a5.i64[0] = vmovl_u8(*a5.i8).u64[0];
    v24 = vaddw_u16(v24, *a5.i8);
    v26 += 4;
  }

  while (v26);
  v7 = vaddvq_s32(v24);
  if (v6 != a2)
  {
    goto LABEL_14;
  }

LABEL_16:
  v31 = 0x100000000;
  if (*(&dword_1E097F5E1 + v5))
  {
    v31 = (a3 - 1) << 32;
  }

  return v31 | (a2 + v7 * (a3 - 2));
}

void mlir::tensor::ExtractOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v11 = a4;
  mlir::OperationState::addOperands(a2, &v11, 1uLL);
  mlir::OperationState::addOperands(a2, a5, a6);
  v10 = *(a2 + 72);
  if (v10 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v10 + 1, 8);
    LODWORD(v10) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v10) = a3;
  ++*(a2 + 72);
}

void mlir::tensor::ExtractOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v23 = *MEMORY[0x1E69E9840];
  v15 = a3;
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  mlir::OperationState::addOperands(a2, a4, a5);
  __src = v21;
  v20 = 0x200000000;
  mlir::ValueRange::ValueRange(&v18, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(&v17, *(a2 + 224), *(a2 + 232));
  v22 = v18;
  if (v20 != 1)
  {
    if (!v20)
    {
      if (HIDWORD(v20))
      {
        v9 = 0;
LABEL_6:
        bzero(__src + 8 * v9, 8 - 8 * v9);
        goto LABEL_7;
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v21, 1uLL, 8);
      v9 = v20;
      if (v20 != 1)
      {
        goto LABEL_6;
      }
    }

LABEL_7:
    LODWORD(v20) = 1;
  }

  v16 = *(mlir::ValueRange::dereference_iterator(&v22, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  ElementType = mlir::TensorType::getElementType(&v16);
  v11 = __src;
  *__src = ElementType;
  v12 = v20;
  v13 = *(a2 + 72);
  v14 = v13 + v20;
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
  if (__src != v21)
  {
    free(__src);
  }
}

uint64_t mlir::tensor::ExtractOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v15[0] = a4;
  v15[1] = a5;
  v11 = *(a11 + 8);
  if (v11 != 1)
  {
    if (!v11)
    {
      if (*(a11 + 12))
      {
        v12 = 0;
LABEL_6:
        bzero((*a11 + 8 * v12), 8 - 8 * v12);
        goto LABEL_7;
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, 1uLL, 8);
      v12 = *(a11 + 8);
      if (v12 != 1)
      {
        goto LABEL_6;
      }
    }

LABEL_7:
    *(a11 + 8) = 1;
  }

  v14 = *(mlir::ValueRange::dereference_iterator(v15, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  **a11 = mlir::TensorType::getElementType(&v14);
  return 1;
}

void mlir::tensor::ExtractOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v24[2] = *MEMORY[0x1E69E9840];
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
  __src = v23;
  v22 = 0x200000000;
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(&v20, *(a2 + 224), *(a2 + 232));
  v24[0] = a3;
  v24[1] = a4;
  if (v22 != 1)
  {
    if (!v22)
    {
      if (HIDWORD(v22))
      {
        v13 = 0;
LABEL_10:
        bzero(__src + 8 * v13, 8 - 8 * v13);
        goto LABEL_11;
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v23, 1uLL, 8);
      v13 = v22;
      if (v22 != 1)
      {
        goto LABEL_10;
      }
    }

LABEL_11:
    LODWORD(v22) = 1;
  }

  v19 = *(mlir::ValueRange::dereference_iterator(v24, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  ElementType = mlir::TensorType::getElementType(&v19);
  v15 = __src;
  *__src = ElementType;
  v16 = v22;
  v17 = *(a2 + 72);
  v18 = v17 + v22;
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
  if (__src != v23)
  {
    free(__src);
  }
}

BOOL mlir::tensor::ExtractOp::verifyInvariantsImpl(mlir::tensor::ExtractOp *this)
{
  v34 = *MEMORY[0x1E69E9840];
  if ((mlir::tensor::__mlir_ods_local_type_constraint_TensorOps3(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  v2 = *this;
  if ((*(*this + 46) & 0x80) == 0)
  {
    v4 = -1;
    v5 = 32;
LABEL_5:
    v6 = v5 + 24;
    v7 = 1;
    while ((mlir::memref::__mlir_ods_local_type_constraint_MemRefOps4(*this, *(*v6 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v7) & 1) != 0)
    {
      ++v7;
      v6 += 32;
      if (!--v4)
      {
        v2 = *this;
        goto LABEL_9;
      }
    }

    return 0;
  }

  v3 = *(v2 + 68);
  v4 = v3 - 1;
  if (v3 != 1)
  {
    v5 = *(v2 + 72) + 32;
    goto LABEL_5;
  }

LABEL_9:
  v8 = *(v2 + 36);
  v9 = v2 - 16;
  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0);
  v25[0] = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  ElementType = mlir::TensorType::getElementType(v25);
  if (*(*this + 36))
  {
    v12 = *this - 16;
  }

  else
  {
    v12 = 0;
  }

  if (ElementType == (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0) + 8) & 0xFFFFFFFFFFFFFFF8))
  {
    return 1;
  }

  v23 = "failed to verify that result type matches element type of tensor";
  v24 = 259;
  mlir::OpState::emitOpError(this, &v23, v25);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
  v14 = result;
  if (v25[0])
  {
    mlir::InFlightDiagnostic::report(v25);
    result = v14;
  }

  if (v33 == 1)
  {
    if (v32 != &v33)
    {
      free(v32);
      result = v14;
    }

    v15 = __p;
    if (__p)
    {
      v16 = v31;
      v17 = __p;
      if (v31 != __p)
      {
        do
        {
          v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
        }

        while (v16 != v15);
        v17 = __p;
      }

      v31 = v15;
      operator delete(v17);
      result = v14;
    }

    v18 = v28;
    if (v28)
    {
      v19 = v29;
      v20 = v28;
      if (v29 != v28)
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
        v20 = v28;
      }

      v29 = v18;
      operator delete(v20);
      result = v14;
    }

    if (v26 != &v27)
    {
      free(v26);
      return v14;
    }
  }

  return result;
}

BOOL mlir::tensor::ExtractOp::parse(uint64_t a1, uint64_t a2)
{
  v39[16] = *MEMORY[0x1E69E9840];
  memset(v34, 0, sizeof(v34));
  v35 = 0;
  v33[0] = v34;
  v33[1] = 1;
  v37 = v39;
  v38 = 0x400000000;
  v31[1] = 1;
  v32 = 0;
  v31[0] = &v32;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v34, 1) & 1) == 0)
  {
    goto LABEL_31;
  }

  if (((*(*a1 + 312))(a1) & 1) == 0)
  {
    goto LABEL_31;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 720))(a1, &v37, 0, 1, 0xFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_31;
  }

  if (((*(*a1 + 328))(a1) & 1) == 0)
  {
    goto LABEL_31;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    goto LABEL_31;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_31;
  }

  v36[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, v36))
  {
    goto LABEL_31;
  }

  v5 = v36[0];
  v32 = v36[0];
  v30 = v36[0];
  v6 = *v36[0];
  if (*(*v36[0] + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v7 = (*(*a1 + 16))(a1);
    v29 = 257;
    (*(*a1 + 24))(v36, a1, v7, v28);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v36, "'tensor' must be ranked tensor of any type values, but got ");
    mlir::InFlightDiagnostic::operator<<<mlir::Type &>(v8, &v30);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v9);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v36);
    v11 = v37;
    if (v37 == v39)
    {
      return v10;
    }

    goto LABEL_33;
  }

  {
    v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v13 = *(v6 + 8);
    v14 = *(v6 + 16);
    if (v14)
    {
      goto LABEL_13;
    }

LABEL_20:
    v14 = 0;
    v15 = v13;
    goto LABEL_21;
  }

  mlir::arith::ExtUIOp::fold();
  v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v13 = *(v6 + 8);
  v14 = *(v6 + 16);
  if (!v14)
  {
    goto LABEL_20;
  }

LABEL_13:
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
LABEL_21:
  if (v15 != &v13[2 * v14] && *v15 == v12)
  {
    v21 = v15[1];
  }

  else
  {
    v21 = 0;
  }

  v36[0] = v5;
  v36[1] = v21;
  mlir::ElementsAttr::isSplat(v36);
  v22 = (*(*a1 + 32))(a1);
  IndexType = mlir::Builder::getIndexType(v22, v23);
  v28[0] = *v31[0];
  v36[0] = mlir::TensorType::getElementType(v28);
  mlir::OperationState::addTypes(a2, v36, 1);
  if (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v33, v31, v4, a2 + 16))
  {
    if (!v38)
    {
      v10 = 1;
      v11 = v37;
      if (v37 == v39)
      {
        return v10;
      }

      goto LABEL_33;
    }

    v25 = v37;
    v26 = 32 * v38;
    while (((*(*a1 + 728))(a1, v25, IndexType, a2 + 16) & 1) != 0)
    {
      v25 += 4;
      v10 = 1;
      v26 -= 32;
      if (!v26)
      {
        goto LABEL_32;
      }
    }
  }

LABEL_31:
  v10 = 0;
LABEL_32:
  v11 = v37;
  if (v37 != v39)
  {
LABEL_33:
    free(v11);
  }

  return v10;
}

BOOL mlir::tensor::ExtractSliceOp::readProperties(uint64_t a1, void *a2)
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
    a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a2[35] = v17;
    a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a2[37] = v17;
    {
      mlir::tensor::ExtractSliceOp::build();
    }

    a2[33] = mlir::detail::TypeIDResolver<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
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

uint64_t mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(void *a1)
{
  result = a1[32];
  if (!result)
  {
    v3 = operator new(0x28uLL);
    *v3 = 0u;
    v3[1] = 0u;
    *(v3 + 4) = 0;
    a1[32] = v3;
    a1[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a1[35] = &v5;
    a1[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a1[37] = &v4;
    {
      mlir::tensor::ExtractSliceOp::build();
    }

    a1[33] = mlir::detail::TypeIDResolver<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    return a1[32];
  }

  return result;
}

void mlir::tensor::ExtractSliceOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, void *a11, uint64_t a12, void *a13, uint64_t a14, void *a15, uint64_t a16)
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
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v39;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v39;
    {
      mlir::tensor::ExtractSliceOp::build();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
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
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v39;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v39;
    {
      mlir::tensor::ExtractSliceOp::build();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
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
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v39;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v39;
    {
      mlir::tensor::ExtractSliceOp::build();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
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
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v39;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v39;
    {
      mlir::tensor::ExtractSliceOp::build();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
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

uint64_t mlir::tensor::ExtractSliceOp::verifyInvariantsImpl(mlir::tensor::ExtractSliceOp *this)
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
    if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(v2, "static_offsets", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v35) & 1) == 0)
    {
      return 0;
    }

    *v35 = *this;
    if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(v5, "static_sizes", 0xC, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v35) & 1) == 0)
    {
      return 0;
    }

    *v35 = *this;
    if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps6(v6, "static_strides", 0xE, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v35) & 1) == 0)
    {
      return 0;
    }

    mlir::tensor::ExtractSliceOp::verifyInvariantsImpl();
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

uint64_t mlir::tensor::ExtractSliceOp::parse(uint64_t a1, void *a2)
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
    a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a2[35] = v38;
    a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a2[37] = v38;
    {
      mlir::tensor::ExtractSliceOp::build();
    }

    a2[33] = mlir::detail::TypeIDResolver<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
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
    a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a2[35] = v38;
    a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a2[37] = v38;
    {
      mlir::tensor::ExtractSliceOp::build();
    }

    a2[33] = mlir::detail::TypeIDResolver<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
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
    a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    a2[35] = v38;
    a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    a2[37] = v38;
    {
      mlir::tensor::ExtractSliceOp::build();
    }

    a2[33] = mlir::detail::TypeIDResolver<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
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
  if (!mlir::memref::ReinterpretCastOp::verifyInherentAttrs(v11, (a2 + 14), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::ExtractSliceOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v38))
  {
    goto LABEL_37;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_37;
  }

  v38[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, v38))
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
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, v38))
  {
    goto LABEL_37;
  }

  v29 = v38[0];
  v12 = v47;
  v13 = v44;
  v14 = v41;
  v15 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(a2);
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

BOOL mlir::tensor::FromElementsOp::verifyInvariantsImpl(mlir::tensor::FromElementsOp *this)
{
  v119 = *MEMORY[0x1E69E9840];
  if (*(*this + 36))
  {
    v2 = *this - 16;
  }

  else
  {
    v2 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  v4 = *this;
  v5 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  if (*(*v5 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_5;
  }

  {
    v34 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v35 = *(v6 + 8);
    v36 = *(v6 + 16);
    if (!v36)
    {
      goto LABEL_60;
    }
  }

  else
  {
    v44 = v6;
    mlir::arith::ExtUIOp::fold();
    v34 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v35 = *(v44 + 8);
    v36 = *(v44 + 16);
    if (!v36)
    {
      goto LABEL_60;
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
  if (v37 == &v35[2 * v36] || *v37 != v34)
  {
LABEL_60:
    v106 = v5;
    v107 = 0;
    if (!mlir::CallOpInterface::getArgOperands(&v106))
    {
      goto LABEL_5;
    }

    goto LABEL_63;
  }

  v45 = v37[1];
  v106 = v5;
  v107 = v45;
  if (!mlir::CallOpInterface::getArgOperands(&v106))
  {
    goto LABEL_5;
  }

LABEL_63:
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v106);
  if (!v47)
  {
LABEL_67:
    v49 = *v5;
    {
      v50 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v51 = *(v49 + 8);
      v52 = *(v49 + 16);
      if (!v52)
      {
        goto LABEL_80;
      }
    }

    else
    {
      mlir::arith::ExtUIOp::fold();
      v50 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v51 = *(v49 + 8);
      v52 = *(v49 + 16);
      if (!v52)
      {
        goto LABEL_80;
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
      goto LABEL_82;
    }

LABEL_80:
    v60 = 0;
LABEL_82:
    v99 = v5;
    v100 = v60;
    mlir::ElementsAttr::isSplat(&v99);
    goto LABEL_83;
  }

  v48 = 8 * v47;
  while (*ArgAttrsAttr != 0x8000000000000000)
  {
    ++ArgAttrsAttr;
    v48 -= 8;
    if (!v48)
    {
      goto LABEL_67;
    }
  }

LABEL_5:
  v102 = 261;
  v99 = "result";
  v100 = 6;
  mlir::Operation::emitOpError(v4, &v99, &v106);
  if (v106)
  {
    LODWORD(v103) = 3;
    v104 = " #";
    v105 = 2;
    v7 = &v103;
    v8 = v109;
    if (v110 >= v111)
    {
      if (v109 <= &v103 && v109 + 24 * v110 > &v103)
      {
        v59 = &v103 - v109;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v110 + 1, 24);
        v8 = v109;
        v7 = (v109 + v59);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v110 + 1, 24);
        v7 = &v103;
        v8 = v109;
      }
    }

    v9 = &v8[24 * v110];
    v10 = *v7;
    *(v9 + 2) = v7[2];
    *v9 = v10;
    v11 = ++v110;
    if (v106)
    {
      LODWORD(v103) = 5;
      v104 = 0;
      v12 = &v103;
      v13 = v109;
      if (v11 >= v111)
      {
        if (v109 <= &v103 && v109 + 24 * v11 > &v103)
        {
          v94 = &v103 - v109;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v11 + 1, 24);
          v13 = v109;
          v12 = (v109 + v94);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v11 + 1, 24);
          v12 = &v103;
          v13 = v109;
        }
      }

      v14 = &v13[24 * v110];
      v15 = *v12;
      *(v14 + 2) = v12[2];
      *v14 = v15;
      v16 = ++v110;
      if (v106)
      {
        LODWORD(v103) = 3;
        v104 = " must be statically shaped tensor of any type values, but got ";
        v105 = 62;
        v17 = &v103;
        v18 = v109;
        if (v16 >= v111)
        {
          if (v109 <= &v103 && v109 + 24 * v16 > &v103)
          {
            v95 = &v103 - v109;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v16 + 1, 24);
            v18 = v109;
            v17 = (v109 + v95);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v16 + 1, 24);
            v17 = &v103;
            v18 = v109;
          }
        }

        v19 = &v18[24 * v110];
        v20 = *v17;
        *(v19 + 2) = v17[2];
        *v19 = v20;
        ++v110;
        if (v106)
        {
          v21 = &v103;
          mlir::DiagnosticArgument::DiagnosticArgument(&v103, v5);
          v22 = v109;
          if (v110 >= v111)
          {
            if (v109 <= &v103 && v109 + 24 * v110 > &v103)
            {
              v96 = &v103 - v109;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v110 + 1, 24);
              v22 = v109;
              v21 = (v109 + v96);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v112, v110 + 1, 24);
              v21 = &v103;
              v22 = v109;
            }
          }

          v23 = &v22[24 * v110];
          v24 = *v21;
          *(v23 + 2) = v21[2];
          *v23 = v24;
          ++v110;
        }
      }
    }
  }

  v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v106);
  if (v106)
  {
    mlir::InFlightDiagnostic::report(&v106);
  }

  if (v118 == 1)
  {
    if (v117 != &v118)
    {
      free(v117);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v116;
      v28 = __p;
      if (v116 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v116 = v26;
      operator delete(v28);
    }

    v29 = v113;
    if (v113)
    {
      v30 = v114;
      v31 = v113;
      if (v114 != v113)
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
        v31 = v113;
      }

      v114 = v29;
      operator delete(v31);
    }

    if (v109 != v112)
    {
      free(v109);
    }
  }

  if (!v25)
  {
    return 0;
  }

LABEL_83:
  if (*(*this + 36))
  {
    v61 = *this - 16;
  }

  else
  {
    v61 = 0;
  }

  v98 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v61, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  Value = mlir::ArrayAttr::getValue(&v98);
  NumElements = mlir::ShapedType::getNumElements(Value, v63);
  if (*(*this + 36))
  {
    v65 = *this - 16;
  }

  else
  {
    v65 = 0;
  }

  v97 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v65, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  RHS = mlir::AffineBinaryOpExpr::getRHS(&v97);
  v67 = RHS;
  v106 = &v108;
  HIDWORD(v107) = 2;
  if (NumElements < 3)
  {
    if (NumElements)
    {
      v70 = vmovn_s64(vcgeq_u64(vdupq_n_s64(NumElements - 1), xmmword_1E09700F0));
      if (v70.i8[0])
      {
        v108 = RHS;
      }

      if (v70.i8[4])
      {
        v109 = RHS;
      }
    }
  }

  else
  {
    LODWORD(v107) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v106, &v108, NumElements, 8);
    if (NumElements == 3)
    {
      v68 = 3;
      v69 = v106;
    }

    else
    {
      v69 = (v106 + 8 * (NumElements & 0xFFFFFFFFFFFFFFFCLL));
      v68 = NumElements & 3;
      v71 = vdupq_n_s64(v67);
      v72 = (v106 + 16);
      v73 = NumElements & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v72[-1] = v71;
        *v72 = v71;
        v72 += 2;
        v73 -= 4;
      }

      while (v73);
      if (NumElements == (NumElements & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_101;
      }
    }

    do
    {
      *v69++ = v67;
      --v68;
    }

    while (v68);
  }

LABEL_101:
  LODWORD(v107) = NumElements;
  v74 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v75 = *(v74 + 68);
    v76 = *(v74 + 72);
  }

  else
  {
    v76 = 0;
    v75 = 0;
  }

  v103 = v76;
  v104 = v75;
  mlir::OperandRange::getTypes(&v103, &v99);
  if (v101 - v100 != v107)
  {
    v83 = 0;
    goto LABEL_113;
  }

  if (v107)
  {
    v77 = 8 * v107 - 8;
    v78 = &v99[32 * v100 + 24];
    v79 = v106;
    do
    {
      v80 = *v78;
      v78 += 32;
      v81 = *(v80 + 8);
      v82 = *v79++;
      v83 = v82 == (v81 & 0xFFFFFFFFFFFFFFF8);
      v84 = v82 != (v81 & 0xFFFFFFFFFFFFFFF8) || v77 == 0;
      v77 -= 8;
    }

    while (!v84);
LABEL_113:
    if (v106 == &v108)
    {
      goto LABEL_115;
    }

    goto LABEL_114;
  }

  v83 = 1;
  if (v106 != &v108)
  {
LABEL_114:
    free(v106);
  }

LABEL_115:
  if (v83)
  {
    return 1;
  }

  v99 = "failed to verify that operand types match result element type";
  v102 = 259;
  mlir::OpState::emitOpError(this, &v99, &v106);
  v43 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v106);
  if (v106)
  {
    mlir::InFlightDiagnostic::report(&v106);
  }

  if (v118 == 1)
  {
    if (v117 != &v118)
    {
      free(v117);
    }

    v85 = __p;
    if (__p)
    {
      v86 = v116;
      v87 = __p;
      if (v116 != __p)
      {
        do
        {
          v86 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v86 - 1);
        }

        while (v86 != v85);
        v87 = __p;
      }

      v116 = v85;
      operator delete(v87);
    }

    v88 = v113;
    if (v113)
    {
      v89 = v114;
      v90 = v113;
      if (v114 != v113)
      {
        do
        {
          v92 = *--v89;
          v91 = v92;
          *v89 = 0;
          if (v92)
          {
            operator delete[](v91);
          }
        }

        while (v89 != v88);
        v90 = v113;
      }

      v114 = v88;
      operator delete(v90);
    }

    if (v109 != v112)
    {
      free(v109);
    }
  }

  return v43;
}

uint64_t mlir::tensor::FromElementsOp::parse(uint64_t a1, uint64_t a2)
{
  v84[16] = *MEMORY[0x1E69E9840];
  v83[0] = v84;
  v83[1] = 0x400000000;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 720))(a1, v83, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112) & 1) == 0) || ((*(*a1 + 104))(a1) & 1) == 0 || (v70 = 0, !mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &v70)))
  {
    v16 = 0;
    goto LABEL_15;
  }

  v5 = v70;
  v6 = *v70;
  if (*(*v70 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_37;
  }

  {
    v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);
    if (v9)
    {
      goto LABEL_8;
    }

LABEL_19:
    v9 = 0;
    v10 = v8;
    goto LABEL_20;
  }

  v18 = v6;
  mlir::arith::ExtUIOp::fold();
  v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v8 = *(v18 + 8);
  v9 = *(v18 + 16);
  if (!v9)
  {
    goto LABEL_19;
  }

LABEL_8:
  v10 = v8;
  v11 = v9;
  do
  {
    v12 = v11 >> 1;
    v13 = &v10[2 * (v11 >> 1)];
    v15 = *v13;
    v14 = v13 + 2;
    v11 += ~(v11 >> 1);
    if (v15 < v7)
    {
      v10 = v14;
    }

    else
    {
      v11 = v12;
    }
  }

  while (v11);
LABEL_20:
  if (v10 != &v8[2 * v9] && *v10 == v7)
  {
    v19 = v10[1];
  }

  else
  {
    v19 = 0;
  }

  v70 = v5;
  v71 = v19;
  if (mlir::CallOpInterface::getArgOperands(&v70))
  {
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v70);
    if (v21)
    {
      v22 = 8 * v21;
      while (*ArgAttrsAttr != 0x8000000000000000)
      {
        ++ArgAttrsAttr;
        v22 -= 8;
        if (!v22)
        {
          goto LABEL_29;
        }
      }

      goto LABEL_37;
    }

LABEL_29:
    v23 = *v5;
    {
      v24 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v25 = *(v23 + 8);
      v26 = *(v23 + 16);
      if (v26)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v51 = v23;
      mlir::arith::ExtUIOp::fold();
      v24 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v25 = *(v51 + 8);
      v26 = *(v51 + 16);
      if (v26)
      {
LABEL_31:
        v27 = v25;
        v28 = v26;
        do
        {
          v29 = v28 >> 1;
          v30 = &v27[2 * (v28 >> 1)];
          v32 = *v30;
          v31 = v30 + 2;
          v28 += ~(v28 >> 1);
          if (v32 < v24)
          {
            v27 = v31;
          }

          else
          {
            v28 = v29;
          }
        }

        while (v28);
LABEL_71:
        if (v27 != &v25[2 * v26] && *v27 == v24)
        {
          v52 = v27[1];
        }

        else
        {
          v52 = 0;
        }

        v67[0] = v5;
        v67[1] = v52;
        mlir::ElementsAttr::isSplat(v67);
        v53 = *(a2 + 72);
        if (v53 >= *(a2 + 76))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v53 + 1, 8);
          LODWORD(v53) = *(a2 + 72);
        }

        *(*(a2 + 64) + 8 * v53) = v5;
        ++*(a2 + 72);
        v67[0] = v5;
        Value = mlir::ArrayAttr::getValue(v67);
        NumElements = mlir::ShapedType::getNumElements(Value, v55);
        v69[0] = v5;
        RHS = mlir::AffineBinaryOpExpr::getRHS(v69);
        v58 = RHS;
        v70 = &v72;
        HIDWORD(v71) = 2;
        if (NumElements < 3)
        {
          if (NumElements)
          {
            v61 = vmovn_s64(vcgeq_u64(vdupq_n_s64(NumElements - 1), xmmword_1E09700F0));
            if (v61.i8[0])
            {
              v72 = RHS;
            }

            if (v61.i8[4])
            {
              v73 = RHS;
            }
          }

          goto LABEL_89;
        }

        LODWORD(v71) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, &v72, NumElements, 8);
        if (NumElements == 3)
        {
          v59 = 3;
          v60 = v70;
        }

        else
        {
          v60 = (v70 + 8 * (NumElements & 0xFFFFFFFFFFFFFFFCLL));
          v59 = NumElements & 3;
          v62 = vdupq_n_s64(v58);
          v63 = (v70 + 16);
          v64 = NumElements & 0xFFFFFFFFFFFFFFFCLL;
          do
          {
            v63[-1] = v62;
            *v63 = v62;
            v63 += 2;
            v64 -= 4;
          }

          while (v64);
          if (NumElements == (NumElements & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_89;
          }
        }

        do
        {
          *v60++ = v58;
          --v59;
        }

        while (v59);
LABEL_89:
        LODWORD(v71) = NumElements;
        v65 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, v83, &v70, v4, a2 + 16);
        if (v70 != &v72)
        {
          free(v70);
        }

        v16 = v65 & 1;
        goto LABEL_15;
      }
    }

    v26 = 0;
    v27 = v25;
    goto LABEL_71;
  }

LABEL_37:
  v33 = (*(*a1 + 16))(a1);
  v68 = 257;
  (*(*a1 + 24))(&v70, a1, v33, v67);
  if (v70)
  {
    LODWORD(v69[0]) = 3;
    v69[1] = "'result' must be statically shaped tensor of any type values, but got ";
    v69[2] = 70;
    v34 = v69;
    v35 = v73;
    if (v74 >= v75)
    {
      if (v73 <= v69 && v73 + 24 * v74 > v69)
      {
        v50 = v69 - v73;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v74 + 1, 24);
        v35 = v73;
        v34 = v73 + v50;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v74 + 1, 24);
        v34 = v69;
        v35 = v73;
      }
    }

    v36 = &v35[24 * v74];
    v37 = *v34;
    *(v36 + 2) = *(v34 + 2);
    *v36 = v37;
    ++v74;
    if (v70)
    {
      v38 = v69;
      mlir::DiagnosticArgument::DiagnosticArgument(v69, v5);
      v39 = v73;
      if (v74 >= v75)
      {
        if (v73 <= v69 && v73 + 24 * v74 > v69)
        {
          v66 = v69 - v73;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v74 + 1, 24);
          v39 = v73;
          v38 = v73 + v66;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v76, v74 + 1, 24);
          v38 = v69;
          v39 = v73;
        }
      }

      v40 = &v39[24 * v74];
      v41 = *v38;
      *(v40 + 2) = *(v38 + 2);
      *v40 = v41;
      ++v74;
    }
  }

  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v70);
  if (v70)
  {
    mlir::InFlightDiagnostic::report(&v70);
  }

  if (v82 == 1)
  {
    if (v81 != &v82)
    {
      free(v81);
    }

    v42 = __p;
    if (__p)
    {
      v43 = v80;
      v44 = __p;
      if (v80 != __p)
      {
        do
        {
          v43 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v43 - 1);
        }

        while (v43 != v42);
        v44 = __p;
      }

      v80 = v42;
      operator delete(v44);
    }

    v45 = v77;
    if (v77)
    {
      v46 = v78;
      v47 = v77;
      if (v78 != v77)
      {
        do
        {
          v49 = *--v46;
          v48 = v49;
          *v46 = 0;
          if (v49)
          {
            operator delete[](v48);
          }
        }

        while (v46 != v45);
        v47 = v77;
      }

      v78 = v45;
      operator delete(v47);
    }

    if (v73 != v76)
    {
      free(v73);
    }
  }

LABEL_15:
  if (v83[0] != v84)
  {
    free(v83[0]);
  }

  return v16;
}