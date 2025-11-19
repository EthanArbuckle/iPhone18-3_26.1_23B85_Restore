void mlir::memref::ExpandShapeOp::getCanonicalizationPatterns(void *a1, uint64_t a2)
{
  v3 = a2;
  mlir::RewritePatternSet::addImpl<mlir::ComposeReassociativeReshapeOps<mlir::memref::ExpandShapeOp,(mlir::ReshapeOpKind)0>,mlir::MLIRContext *&>(a1, 0, 0, &v3);
  mlir::RewritePatternSet::addImpl<mlir::ComposeExpandOfCollapseOp<mlir::memref::ExpandShapeOp,mlir::memref::CollapseShapeOp>,mlir::MLIRContext *&>(a1, 0, 0, &v3);
}

unint64_t computeCollapsedLayoutMap(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v61[6] = *MEMORY[0x1E69E9840];
  v55 = 0;
  v56 = a1;
  v60[0] = v61;
  v60[1] = 0x600000000;
  Value = mlir::ArrayAttr::getValue(&v56);
  v8 = 0;
  v9 = 0;
  if ((mlir::getStridesAndOffset(v56, v60, &v55) & 1) == 0)
  {
    goto LABEL_49;
  }

  v57 = v59;
  v58 = 0x600000000;
  if (a3 < 7)
  {
    if (!a3)
    {
      goto LABEL_79;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v57, v59, a3, 8);
  }

  v10 = a2 + 32 * a3;
  v11 = a2;
  do
  {
    v12 = *(v11 + 8);
    v13 = *v11 - 8;
    v14 = *(v13 + 8 * v12);
    v15 = *(Value + 8 * v14);
    if (v15 == 1)
    {
      while (v12 >= 2)
      {
        --v12;
        v14 = *(v13 + 8 * v12);
        v15 = *(Value + 8 * v14);
        if (v15 != 1)
        {
          goto LABEL_9;
        }
      }

LABEL_12:
      v16 = v58;
      v17 = HIDWORD(v58);
      goto LABEL_13;
    }

LABEL_9:
    if (v15 != 0x8000000000000000)
    {
      goto LABEL_12;
    }

    v16 = v58;
    v17 = HIDWORD(v58);
    if (v12 != 1)
    {
      v18 = 0x8000000000000000;
      goto LABEL_14;
    }

LABEL_13:
    v18 = *(v60[0] + v14);
LABEL_14:
    if (v16 >= v17)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v57, v59, v16 + 1, 8);
      v16 = v58;
    }

    *(v57 + v16) = v18;
    v19 = v58;
    LODWORD(v58) = v58 + 1;
    v11 += 32;
  }

  while (v11 != v10);
  v20 = v57;
  if (a4)
  {
    do
    {
      v40 = *(v10 - 32);
      v10 -= 32;
      v39 = v40;
      v41 = *(v10 + 8);
      if (v41 != 1)
      {
        v42 = 8 * v41;
        v43 = *(v57 + v19);
        v44 = v43 == 0x8000000000000000;
        if (v43 == 0x8000000000000000)
        {
          v43 = 0;
        }

        for (i = v42 - 8; i; i -= 8)
        {
          v46 = *(v39 + i);
          v47 = *(Value + 8 * v46);
          v48 = v47 == 0x8000000000000000;
          if (v47)
          {
            if (v44)
            {
              goto LABEL_47;
            }

            v49 = v47 == 0x8000000000000000 ? 0 : v47 * v43;
            v44 = v43 && v48;
            v43 = v43 ? v49 : 0;
            if (v44)
            {
              goto LABEL_47;
            }
          }

          else
          {
            v44 = 0;
            v43 = 0;
          }

          v50 = v46 - 1;
          v51 = *(v60[0] + v46 - 1);
          if (v51 == 0x8000000000000000)
          {
            goto LABEL_47;
          }

          if (*(Value + 8 * v50) != 1 && v43 != v51)
          {
            goto LABEL_47;
          }
        }
      }

      --v19;
    }

    while (v10 != a2);
LABEL_79:
    Context = mlir::Attribute::getContext(&v56);
    v54 = mlir::StridedLayoutAttr::get(Context, v55, v57, v58);
    v9 = v54 & 0xFFFFFFFFFFFFFF00;
    v8 = v54;
    v20 = v57;
    if (v57 != v59)
    {
      goto LABEL_48;
    }

    goto LABEL_49;
  }

  while (1)
  {
    v22 = *(v10 - 32);
    v10 -= 32;
    v21 = v22;
    v23 = *(v10 + 8);
    if (v23 != 1)
    {
      break;
    }

LABEL_19:
    --v19;
    if (v10 == a2)
    {
      goto LABEL_79;
    }
  }

  v24 = 8 * v23;
  v25 = *(v57 + v19);
  v26 = v25 == 0x8000000000000000;
  if (v25 == 0x8000000000000000)
  {
    v25 = 0;
  }

  v27 = v24 - 8;
  while (1)
  {
    v28 = *(v21 + v27);
    v29 = *(Value + 8 * v28);
    v30 = v29 * v25;
    if (v29 == 0x8000000000000000)
    {
      v30 = 0;
    }

    v31 = v25 == 0;
    if (v25)
    {
      v32 = v29 == 0x8000000000000000;
    }

    else
    {
      v32 = 0;
    }

    if (v31)
    {
      v33 = 0;
    }

    else
    {
      v33 = v30;
    }

    v34 = !v26;
    v26 = v26 || v32;
    if (v34)
    {
      v25 = v33;
    }

    else
    {
      v25 = 0;
    }

    if (!v29)
    {
      v26 = 0;
      v25 = 0;
    }

    v35 = v28 - 1;
    if (*(Value + 8 * v35) != 1 && !v26)
    {
      v36 = *(v60[0] + v35);
      if (v36 != 0x8000000000000000 && v25 != v36)
      {
        break;
      }
    }

    v27 -= 8;
    if (!v27)
    {
      goto LABEL_19;
    }
  }

LABEL_47:
  v8 = 0;
  v9 = 0;
  if (v57 != v59)
  {
LABEL_48:
    free(v20);
  }

LABEL_49:
  if (v60[0] != v61)
  {
    free(v60[0]);
  }

  return v9 | v8;
}

uint64_t mlir::memref::CollapseShapeOp::computeCollapsedType(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v43[6] = *MEMORY[0x1E69E9840];
  v40 = a1;
  v41 = v43;
  v42 = 0x600000000;
  if (a3 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v41, v43, a3, 8);
LABEL_4:
    v5 = a2;
    while (1)
    {
      v8 = *(v5 + 2);
      if (v8)
      {
        break;
      }

      v6 = 1;
      v7 = v42;
      if (v42 >= HIDWORD(v42))
      {
        goto LABEL_24;
      }

LABEL_9:
      *(v41 + v7) = v6;
      LODWORD(v42) = v42 + 1;
      v5 += 4;
      if (v5 == (a2 + 32 * a3))
      {
        goto LABEL_25;
      }
    }

    LOBYTE(v9) = 0;
    v10 = *v5;
    v11 = 8 * v8;
    v12 = 1;
    do
    {
      v13 = *v10;
      v14 = *(mlir::ArrayAttr::getValue(&v40) + 8 * v13);
      if (v14)
      {
        if (v9)
        {
          v12 = 0;
          v9 = 1;
        }

        else if (v12)
        {
          if (v14 == 0x8000000000000000)
          {
            v12 = 0;
          }

          else
          {
            v12 *= v14;
          }

          v9 = v14 == 0x8000000000000000;
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
        v12 = 0;
      }

      v10 += 2;
      v11 -= 8;
    }

    while (v11);
    if (v9)
    {
      v6 = 0x8000000000000000;
    }

    else
    {
      v6 = v12;
    }

    v7 = v42;
    if (v42 < HIDWORD(v42))
    {
      goto LABEL_9;
    }

LABEL_24:
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v41, v43, v7 + 1, 8);
    v7 = v42;
    goto LABEL_9;
  }

  if (a3)
  {
    goto LABEL_4;
  }

LABEL_25:
  v39[0] = mlir::DenseElementsAttr::getRawStringData(&v40);
  v39[1] = v15;
  if ((mlir::ElementsAttr::isSplat(v39) & 1) == 0)
  {
    v22 = computeCollapsedLayoutMap(v40, a2, a3, 0);
    v23 = v41;
    v24 = v42;
    RHS = mlir::AffineBinaryOpExpr::getRHS(&v40);
    if (v22)
    {
      v26 = *v22;
      {
        v27 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;
        v28 = *(v26 + 8);
        v29 = *(v26 + 16);
        if (!v29)
        {
          goto LABEL_41;
        }
      }

      else
      {
        mlir::memref::ExpandShapeOp::computeExpandedType();
        v27 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;
        v28 = *(v26 + 8);
        v29 = *(v26 + 16);
        if (!v29)
        {
          goto LABEL_41;
        }
      }

      v30 = v28;
      v31 = v29;
      do
      {
        v32 = v31 >> 1;
        v33 = &v30[2 * (v31 >> 1)];
        v35 = *v33;
        v34 = v33 + 2;
        v31 += ~(v31 >> 1);
        if (v35 < v27)
        {
          v30 = v34;
        }

        else
        {
          v31 = v32;
        }
      }

      while (v31);
      if (v30 != &v28[2 * v29] && *v30 == v27)
      {
        v36 = v30[1];
LABEL_42:
        MemorySpace = mlir::MemRefType::getMemorySpace(&v40);
        result = mlir::MemRefType::get(v23, v24, RHS, v22, v36, MemorySpace);
        v21 = v41;
        if (v41 == v43)
        {
          return result;
        }

        goto LABEL_43;
      }
    }

LABEL_41:
    v36 = 0;
    goto LABEL_42;
  }

  v16 = v41;
  v17 = v42;
  v18 = mlir::AffineBinaryOpExpr::getRHS(&v40);
  v19 = mlir::MemRefType::getMemorySpace(&v40);
  result = mlir::MemRefType::get(v16, v17, v18, 0, 0, v19);
  v21 = v41;
  if (v41 == v43)
  {
    return result;
  }

LABEL_43:
  v38 = result;
  free(v21);
  return v38;
}

void mlir::memref::CollapseShapeOp::build(uint64_t **a1, mlir::Attribute *a2, uint64_t a3, uint64_t a4, unint64_t a5, const void *a6, uint64_t a7)
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = a3;
  v17 = mlir::memref::CollapseShapeOp::computeCollapsedType(*(a3 + 8) & 0xFFFFFFFFFFFFFFF8, a4, a5);
  ReassociationIndicesAttribute = mlir::getReassociationIndicesAttribute(a1, a4, a5);
  Context = mlir::Attribute::getContext(a2);
  v22 = 261;
  v20 = "reassociation";
  v21 = 13;
  v15 = mlir::StringAttr::get(Context, &v20);
  mlir::NamedAttribute::NamedAttribute(v19, v15, ReassociationIndicesAttribute);
  mlir::NamedAttrList::push_back(a2 + 112, v19[0], v19[1]);
  v16 = mlir::ValueRange::ValueRange(&v20, &v17, 1uLL);
  mlir::memref::CollapseShapeOp::build(v16, a2, v20, v21, &v18, 1uLL, a6, a7);
}

void mlir::memref::CollapseShapeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::CollapseShapeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::CollapseShapeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &v24;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::CollapseShapeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::CollapseShapeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &v23;
      {
        mlir::memref::CollapseShapeOp::build();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::memref::detail::CollapseShapeOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
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

uint64_t mlir::memref::CollapseShapeOp::verify(mlir::memref::CollapseShapeOp *this)
{
  v162 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v145 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(v2 + 36);
  v4 = v2 - 16;
  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v144 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&v145);
  v7 = v6;
  mlir::ArrayAttr::getValue(&v144);
  if (v7 < v8)
  {
    mlir::ArrayAttr::getValue(&v145);
    v10 = v9;
    mlir::ArrayAttr::getValue(&v144);
    v12 = v11;
    v142[0] = "has source rank ";
    v143 = 259;
    mlir::OpState::emitOpError(this, v142, &RawStringData);
    if (RawStringData)
    {
      v146 = 2;
      v147 = v10;
      v13 = &v146;
      v14 = v152;
      if (v153 >= v154)
      {
        if (v152 <= &v146 && v152 + 24 * v153 > &v146)
        {
          v129 = &v146 - v152;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v152, v155, v153 + 1, 24);
          v14 = v152;
          v13 = (v152 + v129);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v152, v155, v153 + 1, 24);
          v13 = &v146;
          v14 = v152;
        }
      }

      v15 = &v14[24 * v153];
      v16 = *v13;
      *(v15 + 2) = *(v13 + 2);
      *v15 = v16;
      v17 = ++v153;
      if (RawStringData)
      {
        v146 = 3;
        v147 = " and result rank ";
        v148 = 17;
        v18 = &v146;
        v19 = v152;
        if (v17 >= v154)
        {
          if (v152 <= &v146 && v152 + 24 * v17 > &v146)
          {
            v130 = &v146 - v152;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v152, v155, v17 + 1, 24);
            v19 = v152;
            v18 = (v152 + v130);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v152, v155, v17 + 1, 24);
            v18 = &v146;
            v19 = v152;
          }
        }

        v20 = &v19[24 * v153];
        v21 = *v18;
        *(v20 + 2) = *(v18 + 2);
        *v20 = v21;
        v22 = ++v153;
        if (RawStringData)
        {
          v146 = 2;
          v147 = v12;
          v23 = &v146;
          v24 = v152;
          if (v22 >= v154)
          {
            if (v152 <= &v146 && v152 + 24 * v22 > &v146)
            {
              v133 = &v146 - v152;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v152, v155, v22 + 1, 24);
              v24 = v152;
              v23 = (v152 + v133);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v152, v155, v22 + 1, 24);
              v23 = &v146;
              v24 = v152;
            }
          }

          v25 = &v24[24 * v153];
          v26 = *v23;
          *(v25 + 2) = *(v23 + 2);
          *v25 = v26;
          v27 = ++v153;
          if (RawStringData)
          {
            v146 = 3;
            v147 = ". This is not a collapse (";
            v148 = 26;
            v28 = &v146;
            v29 = v152;
            if (v27 >= v154)
            {
              if (v152 <= &v146 && v152 + 24 * v27 > &v146)
              {
                v134 = &v146 - v152;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v152, v155, v27 + 1, 24);
                v29 = v152;
                v28 = (v152 + v134);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v152, v155, v27 + 1, 24);
                v28 = &v146;
                v29 = v152;
              }
            }

            v30 = &v29[24 * v153];
            v31 = *v28;
            *(v30 + 2) = *(v28 + 2);
            *v30 = v31;
            v32 = ++v153;
            if (RawStringData)
            {
              v146 = 2;
              v147 = v10;
              v33 = &v146;
              v34 = v152;
              if (v32 >= v154)
              {
                if (v152 <= &v146 && v152 + 24 * v32 > &v146)
                {
                  v136 = &v146 - v152;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v152, v155, v32 + 1, 24);
                  v34 = v152;
                  v33 = (v152 + v136);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v152, v155, v32 + 1, 24);
                  v33 = &v146;
                  v34 = v152;
                }
              }

              v35 = &v34[24 * v153];
              v36 = *v33;
              *(v35 + 2) = *(v33 + 2);
              *v35 = v36;
              v37 = ++v153;
              if (RawStringData)
              {
                v146 = 3;
                v147 = " < ";
                v148 = 3;
                v38 = &v146;
                v39 = v152;
                if (v37 >= v154)
                {
                  if (v152 <= &v146 && v152 + 24 * v37 > &v146)
                  {
                    v138 = &v146 - v152;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v152, v155, v37 + 1, 24);
                    v39 = v152;
                    v38 = (v152 + v138);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v152, v155, v37 + 1, 24);
                    v38 = &v146;
                    v39 = v152;
                  }
                }

                v40 = &v39[24 * v153];
                v41 = *v38;
                *(v40 + 2) = *(v38 + 2);
                *v40 = v41;
                v42 = ++v153;
                if (RawStringData)
                {
                  v146 = 2;
                  v147 = v12;
                  v43 = &v146;
                  v44 = v152;
                  if (v42 >= v154)
                  {
                    if (v152 <= &v146 && v152 + 24 * v42 > &v146)
                    {
                      v140 = &v146 - v152;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v152, v155, v42 + 1, 24);
                      v44 = v152;
                      v43 = (v152 + v140);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v152, v155, v42 + 1, 24);
                      v43 = &v146;
                      v44 = v152;
                    }
                  }

                  v45 = &v44[24 * v153];
                  v46 = *v43;
                  *(v45 + 2) = *(v43 + 2);
                  *v45 = v46;
                  v47 = ++v153;
                  if (RawStringData)
                  {
                    v146 = 3;
                    v147 = ").";
                    v148 = 2;
                    v48 = &v146;
                    v49 = v152;
                    if (v47 >= v154)
                    {
                      if (v152 <= &v146 && v152 + 24 * v47 > &v146)
                      {
                        v141 = &v146 - v152;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v152, v155, v47 + 1, 24);
                        v49 = v152;
                        v48 = (v152 + v141);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v152, v155, v47 + 1, 24);
                        v48 = &v146;
                        v49 = v152;
                      }
                    }

                    v50 = &v49[24 * v153];
                    v51 = *v48;
                    *(v50 + 2) = *(v48 + 2);
                    *v50 = v51;
                    ++v153;
                  }
                }
              }
            }
          }
        }
      }
    }

    v52 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&RawStringData);
    if (RawStringData)
    {
      mlir::InFlightDiagnostic::report(&RawStringData);
    }

    if (v161 == 1)
    {
      if (v160 != &v161)
      {
        free(v160);
      }

      v53 = __p;
      if (__p)
      {
        v54 = v159;
        v55 = __p;
        if (v159 != __p)
        {
          do
          {
            v54 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v54 - 1);
          }

          while (v54 != v53);
          v55 = __p;
        }

        v159 = v53;
        operator delete(v55);
      }

      v56 = v156;
      if (!v156)
      {
        goto LABEL_81;
      }

      v57 = v157;
      v58 = v156;
      if (v157 == v156)
      {
LABEL_80:
        v157 = v56;
        operator delete(v58);
LABEL_81:
        if (v152 != v155)
        {
          free(v152);
        }

        return v52;
      }

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
LABEL_79:
      v58 = v156;
      goto LABEL_80;
    }

    return v52;
  }

  v61 = *this;
  Value = mlir::ArrayAttr::getValue(&v144);
  v64 = v63;
  v65 = mlir::ArrayAttr::getValue(&v145);
  v67 = v66;
  mlir::memref::CollapseShapeOp::getReassociationIndices(this, &RawStringData);
  v68 = verifyCollapsedShape(v61, Value, v64, v65, v67, RawStringData, v150);
  v69 = RawStringData;
  if (v150)
  {
    v70 = RawStringData + 32 * v150 - 16;
    v71 = -32 * v150;
    do
    {
      v72 = *(v70 - 2);
      if (v70 != v72)
      {
        free(v72);
      }

      v70 -= 32;
      v71 += 32;
    }

    while (v71);
    v69 = RawStringData;
  }

  if (v69 != &v151)
  {
    free(v69);
  }

  if ((v68 & 1) == 0)
  {
    return 0;
  }

  RawStringData = mlir::DenseElementsAttr::getRawStringData(&v145);
  v150 = v73;
  if (mlir::ElementsAttr::isSplat(&RawStringData))
  {
    v74 = mlir::ArrayAttr::getValue(&v144);
    v76 = v75;
    RHS = mlir::AffineBinaryOpExpr::getRHS(&v145);
    MemorySpace = mlir::MemRefType::getMemorySpace(&v145);
    v79 = mlir::MemRefType::get(v74, v76, RHS, 0, 0, MemorySpace);
    goto LABEL_49;
  }

  v99 = v145;
  mlir::memref::CollapseShapeOp::getReassociationIndices(this, &RawStringData);
  v52 = computeCollapsedLayoutMap(v99, RawStringData, v150, 0);
  v101 = v100;
  v102 = RawStringData;
  if (v150)
  {
    v103 = RawStringData + 32 * v150 - 16;
    v104 = -32 * v150;
    do
    {
      v105 = *(v103 - 2);
      if (v103 != v105)
      {
        free(v105);
      }

      v103 -= 32;
      v104 += 32;
    }

    while (v104);
    v102 = RawStringData;
  }

  if (v102 != &v151)
  {
    free(v102);
  }

  if ((v101 & 1) == 0)
  {
    v142[0] = "invalid source layout map or collapsing non-contiguous dims";
    v143 = 259;
    mlir::OpState::emitOpError(this, v142, &RawStringData);
    v52 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&RawStringData);
    if (RawStringData)
    {
      mlir::InFlightDiagnostic::report(&RawStringData);
    }

    if (v161 == 1)
    {
      if (v160 != &v161)
      {
        free(v160);
      }

      v121 = __p;
      if (__p)
      {
        v122 = v159;
        v123 = __p;
        if (v159 != __p)
        {
          do
          {
            v122 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v122 - 1);
          }

          while (v122 != v121);
          v123 = __p;
        }

        v159 = v121;
        operator delete(v123);
      }

      v124 = v156;
      if (v156)
      {
        v125 = v157;
        v126 = v156;
        if (v157 != v156)
        {
          do
          {
            v128 = *--v125;
            v127 = v128;
            *v125 = 0;
            if (v128)
            {
              operator delete[](v127);
            }
          }

          while (v125 != v124);
          v126 = v156;
        }

        v157 = v124;
        operator delete(v126);
      }

      if (v152 != v155)
      {
        free(v152);
      }
    }

    v79 = 0;
    if ((v101 & 1) == 0)
    {
      return v52;
    }

    goto LABEL_49;
  }

  v107 = mlir::ArrayAttr::getValue(&v144);
  v109 = v108;
  v110 = mlir::AffineBinaryOpExpr::getRHS(&v145);
  if (!v52)
  {
    goto LABEL_159;
  }

  v111 = *v52;
  {
    mlir::memref::ExpandShapeOp::computeExpandedType();
    v112 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;
    v113 = *(v111 + 8);
    v114 = *(v111 + 16);
    if (v114)
    {
      goto LABEL_91;
    }

LABEL_159:
    v131 = 0;
    goto LABEL_160;
  }

  v112 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;
  v113 = *(v111 + 8);
  v114 = *(v111 + 16);
  if (!v114)
  {
    goto LABEL_159;
  }

LABEL_91:
  v115 = v113;
  v116 = v114;
  do
  {
    v117 = v116 >> 1;
    v118 = &v115[2 * (v116 >> 1)];
    v120 = *v118;
    v119 = v118 + 2;
    v116 += ~(v116 >> 1);
    if (v120 < v112)
    {
      v115 = v119;
    }

    else
    {
      v116 = v117;
    }
  }

  while (v116);
  if (v115 == &v113[2 * v114] || *v115 != v112)
  {
    goto LABEL_159;
  }

  v131 = v115[1];
LABEL_160:
  v132 = mlir::MemRefType::getMemorySpace(&v145);
  v79 = mlir::MemRefType::get(v107, v109, v110, v52, v131, v132);
  if ((v101 & 1) == 0)
  {
    return v52;
  }

LABEL_49:
  if (v79 == v144)
  {
    return 1;
  }

  v142[0] = "expected collapsed type to be ";
  v143 = 259;
  mlir::OpState::emitOpError(this, v142, &RawStringData);
  if (RawStringData)
  {
    v80 = &v146;
    mlir::DiagnosticArgument::DiagnosticArgument(&v146, v79);
    v81 = v152;
    if (v153 >= v154)
    {
      if (v152 <= &v146 && v152 + 24 * v153 > &v146)
      {
        v135 = &v146 - v152;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v152, v155, v153 + 1, 24);
        v81 = v152;
        v80 = (v152 + v135);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v152, v155, v153 + 1, 24);
        v80 = &v146;
        v81 = v152;
      }
    }

    v82 = &v81[24 * v153];
    v83 = *v80;
    *(v82 + 2) = *(v80 + 2);
    *v82 = v83;
    v84 = ++v153;
    if (RawStringData)
    {
      v146 = 3;
      v147 = " but found ";
      v148 = 11;
      v85 = &v146;
      v86 = v152;
      if (v84 >= v154)
      {
        if (v152 <= &v146 && v152 + 24 * v84 > &v146)
        {
          v137 = &v146 - v152;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v152, v155, v84 + 1, 24);
          v86 = v152;
          v85 = (v152 + v137);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v152, v155, v84 + 1, 24);
          v85 = &v146;
          v86 = v152;
        }
      }

      v87 = &v86[24 * v153];
      v88 = *v85;
      *(v87 + 2) = *(v85 + 2);
      *v87 = v88;
      ++v153;
      if (RawStringData)
      {
        v89 = &v146;
        mlir::DiagnosticArgument::DiagnosticArgument(&v146, v144);
        v90 = v152;
        if (v153 >= v154)
        {
          if (v152 <= &v146 && v152 + 24 * v153 > &v146)
          {
            v139 = &v146 - v152;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v152, v155, v153 + 1, 24);
            v90 = v152;
            v89 = (v152 + v139);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v152, v155, v153 + 1, 24);
            v89 = &v146;
            v90 = v152;
          }
        }

        v91 = &v90[24 * v153];
        v92 = *v89;
        *(v91 + 2) = *(v89 + 2);
        *v91 = v92;
        ++v153;
      }
    }
  }

  v52 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&RawStringData);
  if (RawStringData)
  {
    mlir::InFlightDiagnostic::report(&RawStringData);
  }

  if (v161 == 1)
  {
    if (v160 != &v161)
    {
      free(v160);
    }

    v93 = __p;
    if (__p)
    {
      v94 = v159;
      v95 = __p;
      if (v159 != __p)
      {
        do
        {
          v94 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v94 - 1);
        }

        while (v94 != v93);
        v95 = __p;
      }

      v159 = v93;
      operator delete(v95);
    }

    v56 = v156;
    if (!v156)
    {
      goto LABEL_81;
    }

    v96 = v157;
    v58 = v156;
    if (v157 == v156)
    {
      goto LABEL_80;
    }

    do
    {
      v98 = *--v96;
      v97 = v98;
      *v96 = 0;
      if (v98)
      {
        operator delete[](v97);
      }
    }

    while (v96 != v56);
    goto LABEL_79;
  }

  return v52;
}

void mlir::memref::CollapseShapeOp::getCanonicalizationPatterns(void *a1, uint64_t a2)
{
  v3 = a2;
  mlir::RewritePatternSet::addImpl<mlir::ComposeReassociativeReshapeOps<mlir::memref::CollapseShapeOp,(mlir::ReshapeOpKind)1>,mlir::MLIRContext *&>(a1, 0, 0, &v3);
  mlir::RewritePatternSet::addImpl<mlir::ComposeCollapseOfExpandOp<mlir::memref::CollapseShapeOp,mlir::memref::ExpandShapeOp,mlir::memref::CastOp,mlir::memref::DimOp,mlir::MemRefType>,mlir::MLIRContext *&>(a1, 0, 0, &v3);
  mlir::RewritePatternSet::addImpl<CollapseShapeOpMemRefCastFolder,mlir::MLIRContext *&>(a1, 0, 0, &v3);
}

uint64_t mlir::memref::ExpandShapeOp::fold(uint64_t *a1, uint64_t a2)
{
  v68[16] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(a2 + 56);
  v62 = v2;
  v4 = *(*(v2 + 72) + 24);
  if ((*(v2 - 8) ^ *(v4 + 8)) <= 7)
  {
    return v4 | 4;
  }

  v6 = *v3;
  if (*v3)
  {
    v7 = mlir::DenseElementsAttr::classof(*v3);
    if (v7)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    v66 = v8;
    if (v7)
    {
      if (*(v2 + 36))
      {
        v9 = v2 - 16;
      }

      else
      {
        v9 = 0;
      }

      v10 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!v10)
      {
        goto LABEL_79;
      }

      v11 = *v10;
      {
        v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v13 = *(v11 + 8);
        v14 = *(v11 + 16);
        if (!v14)
        {
          goto LABEL_79;
        }
      }

      else
      {
        v58 = v10;
        getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
        v10 = v58;
        v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v13 = *(v11 + 8);
        v14 = *(v11 + 16);
        if (!v14)
        {
          goto LABEL_79;
        }
      }

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
      if (v15 != &v13[2 * v14] && *v15 == v12)
      {
        v59 = v15[1];
        return mlir::DenseElementsAttr::reshape(&v66, v10, v59) & 0xFFFFFFFFFFFFFFFBLL;
      }

LABEL_79:
      v59 = 0;
      return mlir::DenseElementsAttr::reshape(&v66, v10, v59) & 0xFFFFFFFFFFFFFFFBLL;
    }

    v4 = *(*(v2 + 72) + 24);
  }

  v66 = v4;
  result = mlir::Value::getDefiningOp(&v66);
  if (!result)
  {
    return result;
  }

  v21 = result;
  result = 0;
  v22 = *(*(v21 + 48) + 16);
  v23 = v22 == &mlir::detail::TypeIDResolver<mlir::memref::CollapseShapeOp,void>::id;
  v24 = v22 == &mlir::detail::TypeIDResolver<mlir::memref::CollapseShapeOp,void>::id ? v21 : 0;
  v61 = v24;
  if (!v23)
  {
    return result;
  }

  v60 = *(*(*(v21 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v25 = *(v62 + 36) ? v62 - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v25, 0);
  result = 0;
  if (v60 != (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8))
  {
    return result;
  }

  Value = mlir::ArrayAttr::getValue(&v60);
  if (!v28)
  {
    return *(*(v61 + 72) + 24) | 4;
  }

  v29 = (v28 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v29 < 3)
  {
    v30 = 0;
    v31 = Value;
    goto LABEL_38;
  }

  v32 = v29 + 1;
  v33 = (v29 + 1) & 0x3FFFFFFFFFFFFFFCLL;
  v31 = (Value + 8 * v33);
  v34 = (Value + 16);
  v35 = 0uLL;
  v36 = vnegq_f64(0);
  v37 = v33;
  v38 = 0uLL;
  do
  {
    v35 = vsubq_s64(v35, vceqq_s64(v34[-1], v36));
    v38 = vsubq_s64(v38, vceqq_s64(*v34, v36));
    v34 += 2;
    v37 -= 4;
  }

  while (v37);
  v30 = vaddvq_s64(vaddq_s64(v38, v35));
  if (v32 != v33)
  {
    do
    {
LABEL_38:
      v39 = *v31++;
      if (v39 == 0x8000000000000000)
      {
        ++v30;
      }
    }

    while (v31 != (Value + 8 * v28));
  }

  if (v30 <= 1)
  {
    return *(*(v61 + 72) + 24) | 4;
  }

  mlir::memref::CollapseShapeOp::getReassociationIndices(&v62, &v66);
  mlir::memref::CollapseShapeOp::getReassociationIndices(&v61, &v63);
  v40 = v64;
  if (v67 == v64)
  {
    v41 = v63;
    if (v67)
    {
      v42 = (v63 + 8);
      v43 = 32 * v67;
      v44 = (v66 + 8);
      while (1)
      {
        v45 = *v44;
        if (v45 != *v42 || memcmp(*(v44 - 1), *(v42 - 1), 8 * v45))
        {
          break;
        }

        v42 += 4;
        v44 += 4;
        v43 -= 32;
        if (!v43)
        {
          goto LABEL_49;
        }
      }

      v46 = 1;
    }

    else
    {
LABEL_49:
      v46 = 0;
    }
  }

  else
  {
    v46 = 1;
    v41 = v63;
  }

  if (v40)
  {
    v47 = &v41[4 * v40 - 2];
    v48 = -32 * v40;
    do
    {
      v49 = *(v47 - 16);
      if (v47 != v49)
      {
        free(v49);
      }

      v47 -= 32;
      v48 += 32;
    }

    while (v48);
    v41 = v63;
  }

  if (v41 != &v65)
  {
    free(v41);
  }

  if ((v46 & 1) != 0 || ((mlir::ArrayAttr::getValue(&v60), v51 = v50, *(v61 + 36)) ? (v52 = v61 - 16) : (v52 = 0), (v63 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v52, 0) + 8) & 0xFFFFFFFFFFFFFFF8), mlir::ArrayAttr::getValue(&v63), v51 >= v53) && !llvm::all_of<llvm::SmallVector<llvm::SmallVector<long long,2u>,4u> &,mlir::OpFoldResult mlir::foldReshapeOp<mlir::memref::ExpandShapeOp,mlir::memref::CollapseShapeOp>(mlir::memref::ExpandShapeOp,llvm::ArrayRef<mlir::Attribute>)::{lambda(mlir::memref::ExpandShapeOp)#1}>(v66, v67, &v60)))
  {
    result = 0;
  }

  else
  {
    result = *(*(v61 + 72) + 24) | 4;
  }

  v54 = v66;
  v55 = result;
  if (v67)
  {
    v56 = (v66 + 32 * v67 - 16);
    v57 = -32 * v67;
    do
    {
      if (v56 != *(v56 - 2))
      {
        free(*(v56 - 2));
        result = v55;
      }

      v56 -= 4;
      v57 += 32;
    }

    while (v57);
    v54 = v66;
  }

  if (v54 != v68)
  {
    free(v54);
    return v55;
  }

  return result;
}

uint64_t mlir::memref::CollapseShapeOp::fold(uint64_t *a1, uint64_t a2)
{
  v68[16] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(a2 + 48);
  v62 = v2;
  v4 = *(*(v2 + 72) + 24);
  if ((*(v2 - 8) ^ *(v4 + 8)) <= 7)
  {
    return v4 | 4;
  }

  v6 = *v3;
  if (*v3)
  {
    v7 = mlir::DenseElementsAttr::classof(*v3);
    if (v7)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    v66 = v8;
    if (v7)
    {
      if (*(v2 + 36))
      {
        v9 = v2 - 16;
      }

      else
      {
        v9 = 0;
      }

      v10 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!v10)
      {
        goto LABEL_79;
      }

      v11 = *v10;
      {
        v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v13 = *(v11 + 8);
        v14 = *(v11 + 16);
        if (!v14)
        {
          goto LABEL_79;
        }
      }

      else
      {
        v58 = v10;
        getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
        v10 = v58;
        v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v13 = *(v11 + 8);
        v14 = *(v11 + 16);
        if (!v14)
        {
          goto LABEL_79;
        }
      }

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
      if (v15 != &v13[2 * v14] && *v15 == v12)
      {
        v59 = v15[1];
        return mlir::DenseElementsAttr::reshape(&v66, v10, v59) & 0xFFFFFFFFFFFFFFFBLL;
      }

LABEL_79:
      v59 = 0;
      return mlir::DenseElementsAttr::reshape(&v66, v10, v59) & 0xFFFFFFFFFFFFFFFBLL;
    }

    v4 = *(*(v2 + 72) + 24);
  }

  v66 = v4;
  result = mlir::Value::getDefiningOp(&v66);
  if (!result)
  {
    return result;
  }

  v21 = result;
  result = 0;
  v22 = *(*(v21 + 48) + 16);
  v23 = v22 == &mlir::detail::TypeIDResolver<mlir::memref::ExpandShapeOp,void>::id;
  v24 = v22 == &mlir::detail::TypeIDResolver<mlir::memref::ExpandShapeOp,void>::id ? v21 : 0;
  v61 = v24;
  if (!v23)
  {
    return result;
  }

  v60 = *(*(*(v21 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v25 = *(v62 + 36) ? v62 - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v25, 0);
  result = 0;
  if (v60 != (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8))
  {
    return result;
  }

  Value = mlir::ArrayAttr::getValue(&v60);
  if (!v28)
  {
    return *(*(v61 + 72) + 24) | 4;
  }

  v29 = (v28 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v29 < 3)
  {
    v30 = 0;
    v31 = Value;
    goto LABEL_38;
  }

  v32 = v29 + 1;
  v33 = (v29 + 1) & 0x3FFFFFFFFFFFFFFCLL;
  v31 = (Value + 8 * v33);
  v34 = (Value + 16);
  v35 = 0uLL;
  v36 = vnegq_f64(0);
  v37 = v33;
  v38 = 0uLL;
  do
  {
    v35 = vsubq_s64(v35, vceqq_s64(v34[-1], v36));
    v38 = vsubq_s64(v38, vceqq_s64(*v34, v36));
    v34 += 2;
    v37 -= 4;
  }

  while (v37);
  v30 = vaddvq_s64(vaddq_s64(v38, v35));
  if (v32 != v33)
  {
    do
    {
LABEL_38:
      v39 = *v31++;
      if (v39 == 0x8000000000000000)
      {
        ++v30;
      }
    }

    while (v31 != (Value + 8 * v28));
  }

  if (v30 <= 1)
  {
    return *(*(v61 + 72) + 24) | 4;
  }

  mlir::memref::CollapseShapeOp::getReassociationIndices(&v62, &v66);
  mlir::memref::CollapseShapeOp::getReassociationIndices(&v61, &v63);
  v40 = v64;
  if (v67 == v64)
  {
    v41 = v63;
    if (v67)
    {
      v42 = (v63 + 8);
      v43 = 32 * v67;
      v44 = (v66 + 8);
      while (1)
      {
        v45 = *v44;
        if (v45 != *v42 || memcmp(*(v44 - 1), *(v42 - 1), 8 * v45))
        {
          break;
        }

        v42 += 4;
        v44 += 4;
        v43 -= 32;
        if (!v43)
        {
          goto LABEL_49;
        }
      }

      v46 = 1;
    }

    else
    {
LABEL_49:
      v46 = 0;
    }
  }

  else
  {
    v46 = 1;
    v41 = v63;
  }

  if (v40)
  {
    v47 = &v41[4 * v40 - 2];
    v48 = -32 * v40;
    do
    {
      v49 = *(v47 - 16);
      if (v47 != v49)
      {
        free(v49);
      }

      v47 -= 32;
      v48 += 32;
    }

    while (v48);
    v41 = v63;
  }

  if (v41 != &v65)
  {
    free(v41);
  }

  if ((v46 & 1) != 0 || ((mlir::ArrayAttr::getValue(&v60), v51 = v50, *(v61 + 36)) ? (v52 = v61 - 16) : (v52 = 0), (v63 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v52, 0) + 8) & 0xFFFFFFFFFFFFFFF8), mlir::ArrayAttr::getValue(&v63), v51 >= v53) && !llvm::all_of<llvm::SmallVector<llvm::SmallVector<long long,2u>,4u> &,mlir::OpFoldResult mlir::foldReshapeOp<mlir::memref::ExpandShapeOp,mlir::memref::CollapseShapeOp>(mlir::memref::ExpandShapeOp,llvm::ArrayRef<mlir::Attribute>)::{lambda(mlir::memref::ExpandShapeOp)#1}>(v66, v67, &v60)))
  {
    result = 0;
  }

  else
  {
    result = *(*(v61 + 72) + 24) | 4;
  }

  v54 = v66;
  v55 = result;
  if (v67)
  {
    v56 = (v66 + 32 * v67 - 16);
    v57 = -32 * v67;
    do
    {
      if (v56 != *(v56 - 2))
      {
        free(*(v56 - 2));
        result = v55;
      }

      v56 -= 4;
      v57 += 32;
    }

    while (v57);
    v54 = v66;
  }

  if (v54 != v68)
  {
    free(v54);
    return v55;
  }

  return result;
}

uint64_t mlir::memref::ReshapeOp::getAsmResultNames(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
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

  return a2(a3, NextResultAtOffset, "reshape", 7);
}

BOOL mlir::memref::ReshapeOp::verify(mlir::memref::ReshapeOp *this)
{
  v70 = *MEMORY[0x1E69E9840];
  v2 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*this + 36))
  {
    v3 = *this - 16;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (!v2)
  {
    goto LABEL_17;
  }

  v5 = *v2;
  {
    v6 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v7 = *(v5 + 8);
    v8 = *(v5 + 16);
    if (!v8)
    {
      goto LABEL_17;
    }
  }

  else
  {
    getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
    v6 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v7 = *(v5 + 8);
    v8 = *(v5 + 16);
    if (!v8)
    {
      goto LABEL_17;
    }
  }

  v9 = v7;
  v10 = v8;
  do
  {
    v11 = v10 >> 1;
    v12 = &v9[2 * (v10 >> 1)];
    v14 = *v12;
    v13 = v12 + 2;
    v10 += ~(v10 >> 1);
    if (v14 < v6)
    {
      v9 = v13;
    }

    else
    {
      v10 = v11;
    }
  }

  while (v10);
  if (v9 == &v7[2 * v8] || *v9 != v6)
  {
LABEL_17:
    RawStringData = v2;
    v61 = 0;
    isSplat = mlir::ElementsAttr::isSplat(&RawStringData);
    if (!v4)
    {
      goto LABEL_32;
    }

    goto LABEL_18;
  }

  v26 = v9[1];
  RawStringData = v2;
  v61 = v26;
  isSplat = mlir::ElementsAttr::isSplat(&RawStringData);
  if (!v4)
  {
    goto LABEL_32;
  }

LABEL_18:
  v16 = *v4;
  {
    v17 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    if (!v19)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v27 = v16;
    mlir::arith::ExtUIOp::fold();
    v17 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v18 = *(v27 + 8);
    v19 = *(v27 + 16);
    if (!v19)
    {
      goto LABEL_32;
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
  if (v20 == &v18[2 * v19] || *v20 != v17)
  {
LABEL_32:
    RawStringData = v4;
    v61 = 0;
    if (isSplat == mlir::ElementsAttr::isSplat(&RawStringData))
    {
      goto LABEL_33;
    }

LABEL_65:
    v58[0] = "element types of source and destination memref types should be the same";
    v59 = 259;
    mlir::OpState::emitOpError(this, v58, &RawStringData);
    v33 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&RawStringData);
    if (RawStringData)
    {
      mlir::InFlightDiagnostic::report(&RawStringData);
    }

    if (v69 == 1)
    {
      if (v68 != &v69)
      {
        free(v68);
      }

      v43 = __p;
      if (__p)
      {
        v44 = v67;
        v45 = __p;
        if (v67 != __p)
        {
          do
          {
            v44 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v44 - 1);
          }

          while (v44 != v43);
          v45 = __p;
        }

        v67 = v43;
        operator delete(v45);
      }

      v37 = v64;
      if (!v64)
      {
        goto LABEL_99;
      }

      v46 = v65;
      v39 = v64;
      if (v65 == v64)
      {
        goto LABEL_98;
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

      while (v46 != v37);
      goto LABEL_97;
    }

    return v33;
  }

  v42 = v20[1];
  RawStringData = v4;
  v61 = v42;
  if (isSplat != mlir::ElementsAttr::isSplat(&RawStringData))
  {
    goto LABEL_65;
  }

LABEL_33:
  if (*(*v2 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v28 = v2;
  }

  else
  {
    v28 = 0;
  }

  v57 = v28;
  if (v28 && (RawStringData = mlir::DenseElementsAttr::getRawStringData(&v57), v61 = v29, (mlir::ElementsAttr::isSplat(&RawStringData) & 1) == 0))
  {
    v58[0] = "source memref type should have identity affine map";
    v59 = 259;
    mlir::OpState::emitOpError(this, v58, &RawStringData);
    v33 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&RawStringData);
    if (RawStringData)
    {
      mlir::InFlightDiagnostic::report(&RawStringData);
    }

    if (v69 == 1)
    {
      if (v68 != &v69)
      {
        free(v68);
      }

      v34 = __p;
      if (__p)
      {
        v35 = v67;
        v36 = __p;
        if (v67 != __p)
        {
          do
          {
            v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
          }

          while (v35 != v34);
          v36 = __p;
        }

        v67 = v34;
        operator delete(v36);
      }

      v37 = v64;
      if (!v64)
      {
        goto LABEL_99;
      }

      v38 = v65;
      v39 = v64;
      if (v65 == v64)
      {
        goto LABEL_98;
      }

      do
      {
        v41 = *--v38;
        v40 = v41;
        *v38 = 0;
        if (v41)
        {
          operator delete[](v40);
        }
      }

      while (v38 != v37);
      goto LABEL_97;
    }
  }

  else
  {
    RawStringData = *(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
    v30 = *mlir::ArrayAttr::getValue(&RawStringData);
    if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      v31 = v4;
    }

    else
    {
      v31 = 0;
    }

    v57 = v31;
    if (!v31)
    {
      return 1;
    }

    RawStringData = mlir::DenseElementsAttr::getRawStringData(&v57);
    v61 = v32;
    if (mlir::ElementsAttr::isSplat(&RawStringData))
    {
      if (v30 == 0x8000000000000000)
      {
        v58[0] = "cannot use shape operand with dynamic length to reshape to statically-ranked memref type";
        v59 = 259;
        mlir::OpState::emitOpError(this, v58, &RawStringData);
        v33 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&RawStringData);
        if (RawStringData)
        {
          mlir::InFlightDiagnostic::report(&RawStringData);
        }

        if (v69 == 1)
        {
          mlir::Diagnostic::~Diagnostic(&v61);
        }

        return v33;
      }

      mlir::ArrayAttr::getValue(&v57);
      if (v30 != v55)
      {
        v58[0] = "length of shape operand differs from the result's memref rank";
        v59 = 259;
        mlir::OpState::emitOpError(this, v58, &RawStringData);
        v33 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&RawStringData);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&RawStringData);
        return v33;
      }

      return 1;
    }

    v58[0] = "result memref type should have identity affine map";
    v59 = 259;
    mlir::OpState::emitOpError(this, v58, &RawStringData);
    v33 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&RawStringData);
    if (RawStringData)
    {
      mlir::InFlightDiagnostic::report(&RawStringData);
    }

    if (v69 == 1)
    {
      if (v68 != &v69)
      {
        free(v68);
      }

      v49 = __p;
      if (__p)
      {
        v50 = v67;
        v51 = __p;
        if (v67 != __p)
        {
          do
          {
            v50 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v50 - 1);
          }

          while (v50 != v49);
          v51 = __p;
        }

        v67 = v49;
        operator delete(v51);
      }

      v37 = v64;
      if (!v64)
      {
        goto LABEL_99;
      }

      v52 = v65;
      v39 = v64;
      if (v65 == v64)
      {
LABEL_98:
        v65 = v37;
        operator delete(v39);
LABEL_99:
        if (v62 != &v63)
        {
          free(v62);
        }

        return v33;
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

      while (v52 != v37);
LABEL_97:
      v39 = v64;
      goto LABEL_98;
    }
  }

  return v33;
}

uint64_t mlir::memref::SubViewOp::getAsmResultNames(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
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

  return a2(a3, NextResultAtOffset, "subview", 7);
}

uint64_t mlir::memref::SubViewOp::inferResultType(uint64_t a1, uint64_t *a2, unint64_t a3, void *a4, mlir::AffineMap *a5, uint64_t *a6, uint64_t a7)
{
  v61[7] = *MEMORY[0x1E69E9840];
  v55 = a1;
  mlir::ArrayAttr::getValue(&v55);
  mlir::getStridesAndOffset(v55, &v59);
  v13 = a3;
  v14 = v61[6];
  v15 = v59;
  v16 = v60;
  if (v13 && v60)
  {
    v17 = 8 * v60 - 8;
    v18 = 8 * v13 - 8;
    v19 = v59;
    do
    {
      v20 = *a2;
      v21 = *v19;
      if (v14 == 0x8000000000000000)
      {
        v22 = 0;
      }

      else
      {
        v22 = v14;
      }

      v23 = v21 == 0x8000000000000000;
      v24 = v20 * v21;
      if (v21 == 0x8000000000000000)
      {
        v24 = 0;
      }

      if (!v20)
      {
        v23 = 0;
        v24 = 0;
      }

      if (v21)
      {
        v25 = v20 == 0x8000000000000000;
      }

      else
      {
        v25 = 1;
      }

      if (v25)
      {
        v26 = v21 != 0;
      }

      else
      {
        v26 = v23;
      }

      if (v25)
      {
        v27 = 0;
      }

      else
      {
        v27 = v24;
      }

      v28 = v27 + v22;
      if (v14 == 0x8000000000000000)
      {
        v26 = 1;
      }

      if (v26)
      {
        v14 = 0x8000000000000000;
      }

      else
      {
        v14 = v28;
      }

      if (!v18)
      {
        break;
      }

      ++a2;
      ++v19;
      v29 = v17;
      v17 -= 8;
      v18 -= 8;
    }

    while (v29);
  }

  v56 = v58;
  v57 = 0x400000000;
  if (v13 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v58, v13, 8);
    v15 = v59;
    v16 = v60;
  }

  if (v16 && a7)
  {
    v30 = 8 * a7 - 8;
    v31 = 8 * v16 - 8;
    while (1)
    {
      v32 = *a6;
      if (!*a6)
      {
        break;
      }

      v33 = *v15;
      if (*v15 == 0x8000000000000000 || !v33)
      {
        goto LABEL_41;
      }

      v34 = 0x8000000000000000;
      if (v32 == 0x8000000000000000)
      {
        v35 = v57;
        if (v57 < HIDWORD(v57))
        {
          goto LABEL_37;
        }
      }

      else
      {
        v34 = v33 * v32;
        v35 = v57;
        if (v57 < HIDWORD(v57))
        {
LABEL_37:
          *(v56 + v35) = v34;
          LODWORD(v57) = v57 + 1;
          if (!v31)
          {
            goto LABEL_46;
          }

          goto LABEL_38;
        }
      }

LABEL_42:
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v58, v35 + 1, 8);
      *(v56 + v57) = v34;
      LODWORD(v57) = v57 + 1;
      if (!v31)
      {
        goto LABEL_46;
      }

LABEL_38:
      ++v15;
      ++a6;
      v36 = v30;
      v30 -= 8;
      v31 -= 8;
      if (!v36)
      {
        goto LABEL_46;
      }
    }

    v33 = 0;
LABEL_41:
    v34 = v33;
    v35 = v57;
    if (v57 < HIDWORD(v57))
    {
      goto LABEL_37;
    }

    goto LABEL_42;
  }

LABEL_46:
  RHS = mlir::AffineBinaryOpExpr::getRHS(&v55);
  Context = mlir::Attribute::getContext(&v55);
  v39 = mlir::StridedLayoutAttr::get(Context, v14, v56, v57);
  v40 = v39;
  if (!v39)
  {
    goto LABEL_59;
  }

  v41 = *v39;
  {
    mlir::memref::ExpandShapeOp::computeExpandedType();
    v42 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;
    v43 = *(v41 + 8);
    v44 = *(v41 + 16);
    if (v44)
    {
      goto LABEL_49;
    }

LABEL_59:
    v51 = 0;
    goto LABEL_60;
  }

  v42 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;
  v43 = *(v41 + 8);
  v44 = *(v41 + 16);
  if (!v44)
  {
    goto LABEL_59;
  }

LABEL_49:
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
    goto LABEL_59;
  }

  v51 = v45[1];
LABEL_60:
  MemorySpace = mlir::MemRefType::getMemorySpace(&v55);
  v53 = mlir::MemRefType::get(a4, a5, RHS, v40, v51, MemorySpace);
  if (v56 != v58)
  {
    free(v56);
  }

  if (v59 != v61)
  {
    free(v59);
  }

  return v53;
}

uint64_t mlir::memref::SubViewOp::inferResultType(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v50[6] = *MEMORY[0x1E69E9840];
  v48 = v50;
  v49 = 0x600000000;
  v45 = v47;
  v46 = 0x600000000;
  __src = v44;
  v43 = 0x600000000;
  v40[0] = v41;
  v40[1] = 0x600000000;
  v38[0] = v39;
  v38[1] = 0x600000000;
  v36[0] = v37;
  v36[1] = 0x600000000;
  mlir::dispatchIndexOpFoldResults(a2, a3, v40, &v48);
  mlir::dispatchIndexOpFoldResults(a4, a5, v38, &v45);
  mlir::dispatchIndexOpFoldResults(a6, a7, v36, &__src);
  v33 = v35;
  v34 = 0x600000000;
  v12 = v49;
  if (v49)
  {
    if (v49 < 7)
    {
      v14 = v35;
      v13 = v49;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v35, v49, 8);
      v13 = v49;
      if (!v49)
      {
LABEL_7:
        LODWORD(v34) = v12;
        goto LABEL_8;
      }

      v14 = v33;
    }

    memcpy(v14, v48, 8 * v13);
    goto LABEL_7;
  }

LABEL_8:
  hasValidSizesOffsets = mlir::hasValidSizesOffsets(&v33);
  if (v33 != v35)
  {
    free(v33);
  }

  if (!hasValidSizesOffsets)
  {
LABEL_33:
    v24 = 0;
    v25 = v36[0];
    if (v36[0] == v37)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v30 = v32;
  v31 = 0x600000000;
  v16 = v46;
  if (v46)
  {
    if (v46 < 7)
    {
      v18 = v32;
      v17 = v46;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v32, v46, 8);
      v17 = v46;
      if (!v46)
      {
LABEL_17:
        LODWORD(v31) = v16;
        goto LABEL_18;
      }

      v18 = v30;
    }

    memcpy(v18, v45, 8 * v17);
    goto LABEL_17;
  }

LABEL_18:
  v19 = mlir::hasValidSizesOffsets(&v30);
  if (v30 != v32)
  {
    free(v30);
  }

  if (!v19)
  {
    goto LABEL_33;
  }

  v27 = v29;
  v28 = 0x600000000;
  v20 = v43;
  if (!v43)
  {
    goto LABEL_28;
  }

  if (v43 < 7)
  {
    v22 = v29;
    v21 = v43;
    goto LABEL_26;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v27, v29, v43, 8);
  v21 = v43;
  if (v43)
  {
    v22 = v27;
LABEL_26:
    memcpy(v22, __src, 8 * v21);
  }

  LODWORD(v28) = v20;
LABEL_28:
  hasValidStrides = mlir::hasValidStrides(&v27);
  if (v27 != v29)
  {
    free(v27);
  }

  if (!hasValidStrides)
  {
    goto LABEL_33;
  }

  v24 = mlir::memref::SubViewOp::inferResultType(a1, v48, v49, v45, v46, __src, v43);
  v25 = v36[0];
  if (v36[0] != v37)
  {
LABEL_34:
    free(v25);
  }

LABEL_35:
  if (v38[0] != v39)
  {
    free(v38[0]);
  }

  if (v40[0] != v41)
  {
    free(v40[0]);
  }

  if (__src != v44)
  {
    free(__src);
  }

  if (v45 != v47)
  {
    free(v45);
  }

  if (v48 != v50)
  {
    free(v48);
  }

  return v24;
}

void mlir::memref::SubViewOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t *a9, uint64_t a10, void *__src, uint64_t a12)
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
  if (a3)
  {
    *(a2 + 192) = 0;
    v17 = *(a2 + 120);
    v18 = a12 + v17;
    if (a12 + v17 <= *(a2 + 124))
    {
      goto LABEL_3;
    }
  }

  else
  {
    a3 = mlir::memref::SubViewOp::inferResultType(*(a4 + 8) & 0xFFFFFFFFFFFFFFF8, v41, v42, v38, v39, v35, v36);
    *(a2 + 192) = 0;
    v17 = *(a2 + 120);
    v18 = a12 + v17;
    if (a12 + v17 <= *(a2 + 124))
    {
LABEL_3:
      if (!a12)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 112, a2 + 128, v18, 16);
  LODWORD(v17) = *(a2 + 120);
  if (a12)
  {
LABEL_4:
    memcpy((*(a2 + 112) + 16 * v17), __src, 16 * a12);
    LODWORD(v17) = *(a2 + 120);
  }

LABEL_5:
  *(a2 + 120) = v17 + a12;
  mlir::ValueRange::ValueRange(v25, v32, v33);
  mlir::ValueRange::ValueRange(v24, v29, v30);
  mlir::ValueRange::ValueRange(v23, v26, v27);
  DenseI64ArrayAttr = mlir::Builder::getDenseI64ArrayAttr(a1, v41, v42);
  v20 = mlir::Builder::getDenseI64ArrayAttr(a1, v38, v39);
  v21 = mlir::Builder::getDenseI64ArrayAttr(a1, v35, v36);
  mlir::memref::SubViewOp::build(v21, a2, a3, a4, v25[0], v25[1], v24[0], v24[1], v23[0], v23[1], DenseI64ArrayAttr, v20, v21);
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

void mlir::memref::SubViewOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v32 = a4;
  mlir::OperationState::addOperands(a2, &v32, 1uLL);
  mlir::OperationState::addOperands(a2, a5, a6);
  mlir::OperationState::addOperands(a2, a7, a8);
  mlir::OperationState::addOperands(a2, a9, a10);
  v19 = *(a2 + 256);
  if (v19)
  {
    v20 = a11;
    v19[6] = 1;
    v19[7] = a6;
    v19[8] = a8;
    v19[9] = a10;
    v21 = *(a2 + 256);
    if (v21)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v27 = operator new(0x28uLL);
    *v27 = 0u;
    v27[1] = 0u;
    *(v27 + 4) = 0;
    *(a2 + 256) = v27;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v33;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v33;
    {
      mlir::memref::SubViewOp::build();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v28 = *(a2 + 256);
    v20 = a11;
    v28[6] = 1;
    v28[7] = a6;
    v28[8] = a8;
    v28[9] = a10;
    v21 = *(a2 + 256);
    if (v21)
    {
LABEL_3:
      v22 = a12;
      *v21 = v20;
      v23 = *(a2 + 256);
      if (v23)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  v29 = operator new(0x28uLL);
  *v29 = 0u;
  v29[1] = 0u;
  *(v29 + 4) = 0;
  *(a2 + 256) = v29;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v33;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v33;
  {
    mlir::memref::SubViewOp::build();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  v22 = a12;
  **(a2 + 256) = v20;
  v23 = *(a2 + 256);
  if (v23)
  {
LABEL_4:
    v24 = a13;
    *(v23 + 8) = v22;
    v25 = *(a2 + 256);
    if (v25)
    {
      goto LABEL_5;
    }

LABEL_17:
    v31 = operator new(0x28uLL);
    *v31 = 0u;
    v31[1] = 0u;
    *(v31 + 4) = 0;
    *(a2 + 256) = v31;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v33;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v33;
    {
      mlir::memref::SubViewOp::build();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    *(*(a2 + 256) + 16) = v24;
    v26 = *(a2 + 72);
    if (v26 >= *(a2 + 76))
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

LABEL_14:
  v30 = operator new(0x28uLL);
  *v30 = 0u;
  v30[1] = 0u;
  *(v30 + 4) = 0;
  *(a2 + 256) = v30;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v33;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v33;
  {
    mlir::memref::SubViewOp::build();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::memref::detail::SubViewOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  v24 = a13;
  *(*(a2 + 256) + 8) = v22;
  v25 = *(a2 + 256);
  if (!v25)
  {
    goto LABEL_17;
  }

LABEL_5:
  *(v25 + 16) = v24;
  v26 = *(a2 + 72);
  if (v26 >= *(a2 + 76))
  {
LABEL_6:
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v26 + 1, 8);
    LODWORD(v26) = *(a2 + 72);
  }

LABEL_7:
  *(*(a2 + 64) + 8 * v26) = a3;
  ++*(a2 + 72);
}

BOOL mlir::memref::SubViewOp::verify(mlir::Block ***this)
{
  v98 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v76 = *(*((*this)[9] + 3) + 8) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(v2 + 9);
  v4 = (v2 - 2);
  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v75 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  MemorySpace = mlir::MemRefType::getMemorySpace(&v76);
  if (MemorySpace != mlir::MemRefType::getMemorySpace(&v75))
  {
    v94 = "different memory spaces specified for base memref type ";
    v97 = 259;
    mlir::OpState::emitError(this, &v94, &v81);
    if (v81)
    {
      v23 = &v77;
      mlir::DiagnosticArgument::DiagnosticArgument(&v77, v76);
      v24 = v84;
      if (v85 >= v86)
      {
        if (v84 <= &v77 && v84 + 24 * v85 > &v77)
        {
          v69 = &v77 - v84;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
          v24 = v84;
          v23 = v84 + v69;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
          v23 = &v77;
          v24 = v84;
        }
      }

      v25 = &v24[24 * v85];
      v26 = *v23;
      *(v25 + 2) = *(v23 + 2);
      *v25 = v26;
      v27 = ++v85;
      if (v81)
      {
        LODWORD(v77) = 3;
        v78 = " and subview memref type ";
        v79 = 25;
        v28 = &v77;
        v29 = v84;
        if (v27 >= v86)
        {
          if (v84 <= &v77 && v84 + 24 * v27 > &v77)
          {
            v70 = &v77 - v84;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v27 + 1, 24);
            v29 = v84;
            v28 = v84 + v70;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v27 + 1, 24);
            v28 = &v77;
            v29 = v84;
          }
        }

        v30 = &v29[24 * v85];
        v31 = *v28;
        *(v30 + 2) = *(v28 + 2);
        *v30 = v31;
        ++v85;
        if (v81)
        {
          v32 = &v77;
          mlir::DiagnosticArgument::DiagnosticArgument(&v77, v75);
          v33 = v84;
          if (v85 >= v86)
          {
            if (v84 <= &v77 && v84 + 24 * v85 > &v77)
            {
              v72 = &v77 - v84;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
              v33 = v84;
              v32 = v84 + v72;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
              v32 = &v77;
              v33 = v84;
            }
          }

          v34 = &v33[24 * v85];
          v35 = *v32;
          *(v34 + 2) = *(v32 + 2);
          *v34 = v35;
          ++v85;
        }
      }
    }

    v36 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v81);
    if (v81)
    {
      mlir::InFlightDiagnostic::report(&v81);
    }

    if (v93 != 1)
    {
      return v36;
    }

    if (v92 != &v93)
    {
      free(v92);
    }

    v37 = __p;
    if (__p)
    {
      v38 = v91;
      v39 = __p;
      if (v91 != __p)
      {
        do
        {
          v38 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v38 - 1);
        }

        while (v38 != v37);
        v39 = __p;
      }

      v91 = v37;
      operator delete(v39);
    }

    v40 = v88;
    if (v88)
    {
      v41 = v89;
      v42 = v88;
      if (v89 == v88)
      {
        goto LABEL_53;
      }

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
LABEL_52:
      v42 = v88;
LABEL_53:
      v89 = v40;
      operator delete(v42);
    }

LABEL_54:
    if (v84 != v87)
    {
      free(v84);
    }

    return v36;
  }

  if ((mlir::isStrided(v76) & 1) == 0)
  {
    v94 = "base type ";
    v97 = 259;
    mlir::OpState::emitError(this, &v94, &v81);
    if (v81)
    {
      v45 = &v77;
      mlir::DiagnosticArgument::DiagnosticArgument(&v77, v76);
      v46 = v84;
      if (v85 >= v86)
      {
        if (v84 <= &v77 && v84 + 24 * v85 > &v77)
        {
          v71 = &v77 - v84;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
          v46 = v84;
          v45 = v84 + v71;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
          v45 = &v77;
          v46 = v84;
        }
      }

      v47 = &v46[24 * v85];
      v48 = *v45;
      *(v47 + 2) = *(v45 + 2);
      *v47 = v48;
      v49 = ++v85;
      if (v81)
      {
        LODWORD(v77) = 3;
        v78 = " is not strided";
        v79 = 15;
        v50 = &v77;
        v51 = v84;
        if (v49 >= v86)
        {
          if (v84 <= &v77 && v84 + 24 * v49 > &v77)
          {
            v73 = &v77 - v84;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v49 + 1, 24);
            v51 = v84;
            v50 = v84 + v73;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v49 + 1, 24);
            v50 = &v77;
            v51 = v84;
          }
        }

        v52 = &v51[24 * v85];
        v53 = *v50;
        *(v52 + 2) = *(v50 + 2);
        *v52 = v53;
        ++v85;
      }
    }

    v36 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v81);
    if (v81)
    {
      mlir::InFlightDiagnostic::report(&v81);
    }

    if (v93 != 1)
    {
      return v36;
    }

    if (v92 != &v93)
    {
      free(v92);
    }

    v54 = __p;
    if (__p)
    {
      v55 = v91;
      v56 = __p;
      if (v91 != __p)
      {
        do
        {
          v55 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v55 - 1);
        }

        while (v55 != v54);
        v56 = __p;
      }

      v91 = v54;
      operator delete(v56);
    }

    v40 = v88;
    if (v88)
    {
      v57 = v89;
      v42 = v88;
      if (v89 == v88)
      {
        goto LABEL_53;
      }

      do
      {
        v59 = *--v57;
        v58 = v59;
        *v57 = 0;
        if (v59)
        {
          operator delete[](v58);
        }
      }

      while (v57 != v40);
      goto LABEL_52;
    }

    goto LABEL_54;
  }

  v7 = v76;
  v81 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
  v8 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v81);
  v10 = v9;
  v81 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 9];
  v11 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v81);
  v13 = v12;
  v81 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 10];
  v14 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v81);
  v74 = mlir::memref::SubViewOp::inferResultType(v7, v8, v10, v11, v13, v14, v15);
  v16 = llvm::cast<mlir::ShapedType,mlir::Type>(&v74);
  v18 = v17;
  v19 = llvm::cast<mlir::ShapedType,mlir::Type>(&v75);
  isRankReducedType = mlir::isRankReducedType(v16, v18, v19);
  if (isRankReducedType)
  {
    v21 = *this;
    v22 = v74;
    return produceSubViewErrorMsg(isRankReducedType, v21, v22);
  }

  v60 = mlir::MemRefType::getMemorySpace(&v74);
  if (v60 != mlir::MemRefType::getMemorySpace(&v75))
  {
    v21 = *this;
    v22 = v74;
    isRankReducedType = 4;
    return produceSubViewErrorMsg(isRankReducedType, v21, v22);
  }

  v61 = v75;
  v77 = 0;
  v80 = 0;
  v81 = &v83;
  v82 = 0x600000000;
  v94 = v96;
  v95 = 0x600000000;
  StridesAndOffset = mlir::getStridesAndOffset(v74, &v81, &v77);
  v63 = mlir::getStridesAndOffset(v61, &v94, &v80);
  v64 = (StridesAndOffset & 1) != 0 && (v63 & 1) != 0 && v77 == v80;
  if (v94 != v96)
  {
    free(v94);
  }

  if (v81 != &v83)
  {
    free(v81);
  }

  if (!v64)
  {
    goto LABEL_67;
  }

  v66 = v74;
  v67 = v75;
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::memref::ReinterpretCastOp>::getMixedSizes(this, &v81);
  computeMemRefRankReductionMask(&v94, v66, v67, v81, v82);
  if (v81 != &v83)
  {
    free(v81);
  }

  if (v95 != 1)
  {
LABEL_67:
    v21 = *this;
    v22 = v74;
    isRankReducedType = 5;
    return produceSubViewErrorMsg(isRankReducedType, v21, v22);
  }

  v36 = (haveCompatibleStrides(v74, v75, &v94) & 1) != 0 || produceSubViewErrorMsg(5, *this, v74);
  v68 = v94;
  if ((v94 & 1) == 0 && v94)
  {
    if (*v94 != v94 + 16)
    {
      free(*v94);
    }

    operator delete(v68);
  }

  return v36;
}

BOOL produceSubViewErrorMsg(int a1, mlir::Block **a2, void *a3)
{
  v104 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    goto LABEL_14;
  }

  v4 = *a3;
  {
    v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v6 = *(v4 + 8);
    v7 = *(v4 + 16);
    if (!v7)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v85 = a3;
    v14 = a1;
    getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
    a1 = v14;
    a3 = v85;
    v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v6 = *(v4 + 8);
    v7 = *(v4 + 16);
    if (!v7)
    {
      goto LABEL_14;
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
  if (v8 == &v6[2 * v7] || *v8 != v5)
  {
LABEL_14:
    v88 = a3;
    v89 = 0;
    if (a1 > 2)
    {
      goto LABEL_15;
    }

LABEL_74:
    if (a1 == 1)
    {
      v86[0] = "expected result rank to be smaller or equal to ";
      v87 = 259;
      mlir::Operation::emitError(a2, v86, v93);
      if (v93[0])
      {
        v90 = 3;
        v91 = "the source rank. ";
        v92 = 17;
        v52 = &v90;
        v53 = v94;
        if (v95 >= v96)
        {
          if (v94 <= &v90 && v94 + 24 * v95 > &v90)
          {
            v81 = &v90 - v94;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v95 + 1, 24);
            v53 = v94;
            v52 = (v94 + v81);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v95 + 1, 24);
            v52 = &v90;
            v53 = v94;
          }
        }

        v54 = &v53[24 * v95];
        v55 = *v52;
        *(v54 + 2) = *(v52 + 2);
        *v54 = v55;
        ++v95;
      }

      v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v93);
      if (v93[0])
      {
        mlir::InFlightDiagnostic::report(v93);
      }

      if (v103 == 1)
      {
        if (v102 != &v103)
        {
          free(v102);
        }

        v56 = __p;
        if (__p)
        {
          v57 = v101;
          v58 = __p;
          if (v101 != __p)
          {
            do
            {
              v57 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v57 - 1);
            }

            while (v57 != v56);
            v58 = __p;
          }

          v101 = v56;
          operator delete(v58);
        }

        v19 = v98;
        if (!v98)
        {
          goto LABEL_117;
        }

        v59 = v99;
        v21 = v98;
        if (v99 == v98)
        {
          goto LABEL_116;
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

        while (v59 != v19);
        goto LABEL_115;
      }
    }

    else
    {
      v62 = a3;
      v86[0] = "expected result type to be ";
      v87 = 259;
      mlir::Operation::emitError(a2, v86, v93);
      if (v93[0])
      {
        v63 = &v90;
        mlir::DiagnosticArgument::DiagnosticArgument(&v90, v62);
        v64 = v94;
        if (v95 >= v96)
        {
          if (v94 <= &v90 && v94 + 24 * v95 > &v90)
          {
            v82 = &v90 - v94;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v95 + 1, 24);
            v64 = v94;
            v63 = (v94 + v82);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v95 + 1, 24);
            v63 = &v90;
            v64 = v94;
          }
        }

        v65 = &v64[24 * v95];
        v66 = *v63;
        *(v65 + 2) = *(v63 + 2);
        *v65 = v66;
        v67 = ++v95;
        if (v93[0])
        {
          v90 = 3;
          v91 = " or a rank-reduced version. (mismatch of result sizes) ";
          v92 = 55;
          v68 = &v90;
          v69 = v94;
          if (v67 >= v96)
          {
            if (v94 <= &v90 && v94 + 24 * v67 > &v90)
            {
              v84 = &v90 - v94;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v67 + 1, 24);
              v69 = v94;
              v68 = (v94 + v84);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v67 + 1, 24);
              v68 = &v90;
              v69 = v94;
            }
          }

          v70 = &v69[24 * v95];
          v71 = *v68;
          *(v70 + 2) = *(v68 + 2);
          *v70 = v71;
          ++v95;
        }
      }

      v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v93);
      if (v93[0])
      {
        mlir::InFlightDiagnostic::report(v93);
      }

      if (v103 == 1)
      {
        if (v102 != &v103)
        {
          free(v102);
        }

        v72 = __p;
        if (__p)
        {
          v73 = v101;
          v74 = __p;
          if (v101 != __p)
          {
            do
            {
              v73 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v73 - 1);
            }

            while (v73 != v72);
            v74 = __p;
          }

          v101 = v72;
          operator delete(v74);
        }

        v19 = v98;
        if (!v98)
        {
          goto LABEL_117;
        }

        v75 = v99;
        v21 = v98;
        if (v99 == v98)
        {
          goto LABEL_116;
        }

        do
        {
          v77 = *--v75;
          v76 = v77;
          *v75 = 0;
          if (v77)
          {
            operator delete[](v76);
          }
        }

        while (v75 != v19);
        goto LABEL_115;
      }
    }

    return v15;
  }

  v51 = v8[1];
  v88 = a3;
  v89 = v51;
  if (a1 <= 2)
  {
    goto LABEL_74;
  }

LABEL_15:
  if (a1 == 3)
  {
    v86[0] = "expected result element type to be ";
    v87 = 259;
    mlir::Operation::emitError(a2, v86, v93);
    isSplat = mlir::ElementsAttr::isSplat(&v88);
    if (v93[0])
    {
      v25 = &v90;
      mlir::DiagnosticArgument::DiagnosticArgument(&v90, isSplat);
      v26 = v94;
      if (v95 >= v96)
      {
        if (v94 <= &v90 && v94 + 24 * v95 > &v90)
        {
          v79 = &v90 - v94;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v95 + 1, 24);
          v26 = v94;
          v25 = (v94 + v79);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v95 + 1, 24);
          v25 = &v90;
          v26 = v94;
        }
      }

      v27 = &v26[24 * v95];
      v28 = *v25;
      *(v27 + 2) = *(v25 + 2);
      *v27 = v28;
      ++v95;
    }

    v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v93);
    if (v93[0])
    {
      mlir::InFlightDiagnostic::report(v93);
    }

    if (v103 == 1)
    {
      if (v102 != &v103)
      {
        free(v102);
      }

      v29 = __p;
      if (__p)
      {
        v30 = v101;
        v31 = __p;
        if (v101 != __p)
        {
          do
          {
            v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
          }

          while (v30 != v29);
          v31 = __p;
        }

        v101 = v29;
        operator delete(v31);
      }

      v19 = v98;
      if (!v98)
      {
        goto LABEL_117;
      }

      v32 = v99;
      v21 = v98;
      if (v99 == v98)
      {
        goto LABEL_116;
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

      while (v32 != v19);
      goto LABEL_115;
    }
  }

  else if (a1 == 4)
  {
    v86[0] = "expected result and source memory spaces to match.";
    v87 = 259;
    mlir::Operation::emitError(a2, v86, v93);
    v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v93);
    if (v93[0])
    {
      mlir::InFlightDiagnostic::report(v93);
    }

    if (v103 == 1)
    {
      if (v102 != &v103)
      {
        free(v102);
      }

      v16 = __p;
      if (__p)
      {
        v17 = v101;
        v18 = __p;
        if (v101 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v101 = v16;
        operator delete(v18);
      }

      v19 = v98;
      if (!v98)
      {
        goto LABEL_117;
      }

      v20 = v99;
      v21 = v98;
      if (v99 == v98)
      {
LABEL_116:
        v99 = v19;
        operator delete(v21);
LABEL_117:
        if (v94 != v97)
        {
          free(v94);
        }

        return v15;
      }

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
LABEL_115:
      v21 = v98;
      goto LABEL_116;
    }
  }

  else
  {
    v35 = a3;
    v86[0] = "expected result type to be ";
    v87 = 259;
    mlir::Operation::emitError(a2, v86, v93);
    if (v93[0])
    {
      v36 = &v90;
      mlir::DiagnosticArgument::DiagnosticArgument(&v90, v35);
      v37 = v94;
      if (v95 >= v96)
      {
        if (v94 <= &v90 && v94 + 24 * v95 > &v90)
        {
          v80 = &v90 - v94;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v95 + 1, 24);
          v37 = v94;
          v36 = (v94 + v80);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v95 + 1, 24);
          v36 = &v90;
          v37 = v94;
        }
      }

      v38 = &v37[24 * v95];
      v39 = *v36;
      *(v38 + 2) = *(v36 + 2);
      *v38 = v39;
      v40 = ++v95;
      if (v93[0])
      {
        v90 = 3;
        v91 = " or a rank-reduced version. (mismatch of result layout) ";
        v92 = 56;
        v41 = &v90;
        v42 = v94;
        if (v40 >= v96)
        {
          if (v94 <= &v90 && v94 + 24 * v40 > &v90)
          {
            v83 = &v90 - v94;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v40 + 1, 24);
            v42 = v94;
            v41 = (v94 + v83);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v40 + 1, 24);
            v41 = &v90;
            v42 = v94;
          }
        }

        v43 = &v42[24 * v95];
        v44 = *v41;
        *(v43 + 2) = *(v41 + 2);
        *v43 = v44;
        ++v95;
      }
    }

    v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v93);
    if (v93[0])
    {
      mlir::InFlightDiagnostic::report(v93);
    }

    if (v103 == 1)
    {
      if (v102 != &v103)
      {
        free(v102);
      }

      v45 = __p;
      if (__p)
      {
        v46 = v101;
        v47 = __p;
        if (v101 != __p)
        {
          do
          {
            v46 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v46 - 1);
          }

          while (v46 != v45);
          v47 = __p;
        }

        v101 = v45;
        operator delete(v47);
      }

      v19 = v98;
      if (!v98)
      {
        goto LABEL_117;
      }

      v48 = v99;
      v21 = v98;
      if (v99 == v98)
      {
        goto LABEL_116;
      }

      do
      {
        v50 = *--v48;
        v49 = v50;
        *v48 = 0;
        if (v50)
        {
          operator delete[](v49);
        }
      }

      while (v48 != v19);
      goto LABEL_115;
    }
  }

  return v15;
}

uint64_t haveCompatibleStrides(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v21[6] = *MEMORY[0x1E69E9840];
  v16 = 0;
  v17 = a1;
  v15 = 0;
  v20[0] = v21;
  v20[1] = 0x600000000;
  v18[0] = v19;
  v18[1] = 0x600000000;
  StridesAndOffset = mlir::getStridesAndOffset(a1, v20, &v16);
  v6 = mlir::getStridesAndOffset(a2, v18, &v15);
  if ((StridesAndOffset & 1) == 0 || (v6 & 1) == 0)
  {
    v13 = 0;
    v8 = v18[0];
    if (v18[0] == v19)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  mlir::ArrayAttr::getValue(&v17);
  v8 = v18[0];
  if (v7 < 1)
  {
LABEL_17:
    v13 = 1;
    if (v18[0] == v19)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v9 = *a3;
  v10 = 0;
  v11 = 0;
  if ((*a3 & 1) == 0)
  {
    v12 = *v9;
    while (1)
    {
      if (((*(v12 + 8 * (v11 >> 6)) >> v11) & 1) == 0)
      {
        if (*(v20[0] + v11) != *(v18[0] + v10))
        {
          goto LABEL_22;
        }

        ++v10;
      }

      if (v7 == ++v11)
      {
        goto LABEL_17;
      }
    }
  }

  while (((v9 >> 1) & ~(-1 << (v9 >> 58)) & (1 << v11)) != 0)
  {
LABEL_13:
    if (v7 == ++v11)
    {
      goto LABEL_17;
    }
  }

  if (*(v20[0] + v11) == *(v18[0] + v10))
  {
    ++v10;
    goto LABEL_13;
  }

LABEL_22:
  v13 = 0;
  if (v18[0] != v19)
  {
LABEL_18:
    free(v8);
  }

LABEL_19:
  if (v20[0] != v21)
  {
    free(v20[0]);
  }

  return v13;
}

void mlir::memref::SubViewOp::getCanonicalizationPatterns(void *a1, uint64_t a2)
{
  v45 = a2;
  mlir::RewritePatternSet::addImpl<mlir::OpWithOffsetSizesAndStridesConstantArgumentFolder<mlir::memref::SubViewOp,SubViewReturnTypeCanonicalizer,SubViewCanonicalizer>,mlir::MLIRContext *&>(a1, 0, 0, &v45);
  v3 = v45;
  v4 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v46, 1);
  mlir::Pattern::Pattern((v4 + 2), "memref.subview", 14, v46, v3, 0, 0);
  *v4 = &unk_1F5AFAB98;
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

  v46 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::SubViewOpMemRefCastFolder]";
  v47 = 98;
  v9 = llvm::StringRef::find(&v46, "DesiredTypeName = ", 0x12uLL, 0);
  if (v47 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v47;
  }

  v11 = &v46[v10];
  v12 = v47 - v10;
  if (v47 - v10 >= 0x12)
  {
    v13 = 18;
  }

  else
  {
    v13 = v47 - v10;
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
    goto LABEL_54;
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
      goto LABEL_55;
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
  v24 = v45;
  v25 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v46, 1);
  mlir::Pattern::Pattern((v25 + 2), "memref.subview", 14, v46, v24, 0, 0);
  *v25 = &unk_1F5AFAC08;
  if (*(v25 + 9))
  {
    v26 = v25[22];
    if (v26 <= v25[23])
    {
      goto LABEL_29;
    }

LABEL_40:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v25 + 20), (v25 + 24), v26, 16);
    v25[22] = v25[22];
    v28 = a1[2];
    v27 = a1[3];
    if (v28 < v27)
    {
      goto LABEL_30;
    }

    goto LABEL_41;
  }

  v46 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::TrivialSubViewOpFolder]";
  v47 = 95;
  v30 = llvm::StringRef::find(&v46, "DesiredTypeName = ", 0x12uLL, 0);
  if (v47 >= v30)
  {
    v31 = v30;
  }

  else
  {
    v31 = v47;
  }

  v32 = &v46[v31];
  v33 = v47 - v31;
  if (v47 - v31 >= 0x12)
  {
    v34 = 18;
  }

  else
  {
    v34 = v47 - v31;
  }

  v35 = &v32[v34];
  v36 = v33 - v34;
  if (v36 >= v36 - 1)
  {
    --v36;
  }

  *(v25 + 8) = v35;
  *(v25 + 9) = v36;
  v26 = v25[22];
  if (v26 > v25[23])
  {
    goto LABEL_40;
  }

LABEL_29:
  v25[22] = v26;
  v28 = a1[2];
  v27 = a1[3];
  if (v28 < v27)
  {
LABEL_30:
    *v28 = v25;
    v29 = v28 + 8;
    goto LABEL_53;
  }

LABEL_41:
  v37 = a1[1];
  v38 = v28 - v37;
  v39 = (v28 - v37) >> 3;
  v40 = v39 + 1;
  if ((v39 + 1) >> 61)
  {
LABEL_54:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v41 = v27 - v37;
  if (v41 >> 2 > v40)
  {
    v40 = v41 >> 2;
  }

  if (v41 >= 0x7FFFFFFFFFFFFFF8)
  {
    v42 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v42 = v40;
  }

  if (v42)
  {
    if (!(v42 >> 61))
    {
      v43 = operator new(8 * v42);
      goto LABEL_51;
    }

LABEL_55:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v43 = 0;
LABEL_51:
  v44 = &v43[8 * v39];
  *v44 = v25;
  v29 = v44 + 8;
  memcpy(v43, v37, v38);
  a1[1] = v43;
  a1[2] = v29;
  a1[3] = &v43[8 * v42];
  if (v37)
  {
    operator delete(v37);
  }

LABEL_53:
  a1[2] = v29;
}

uint64_t mlir::memref::SubViewOp::fold(mlir::memref::ReinterpretCastOp *a1)
{
  v47[4] = *MEMORY[0x1E69E9840];
  v2 = *(*(*(*a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*a1 + 36))
  {
    v3 = *a1 - 16;
  }

  else
  {
    v3 = 0;
  }

  v35 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  RawStringData = mlir::DenseElementsAttr::getRawStringData(&v35);
  if (RawStringData)
  {
    if (*(*RawStringData + 136) == &mlir::detail::TypeIDResolver<mlir::StridedLayoutAttr,void>::id)
    {
      v5 = RawStringData;
    }

    else
    {
      v5 = 0;
    }

    v34 = v5;
    if (v35 != v2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v34 = 0;
    if (v35 != v2)
    {
      goto LABEL_19;
    }
  }

  if (mlir::BaseMemRefType::hasRank(&v35))
  {
    Value = mlir::ArrayAttr::getValue(&v35);
    if (v7)
    {
      v8 = 8 * v7;
      while (*Value != 0x8000000000000000)
      {
        ++Value;
        v8 -= 8;
        if (!v8)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
LABEL_16:
      if (!v34 || mlir::StridedLayoutAttr::hasStaticLayout(&v34))
      {
        return *(*(*a1 + 72) + 24) | 4;
      }
    }
  }

LABEL_19:
  v45 = *(*(*a1 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v45);
  if (!DefiningOp)
  {
    return 0;
  }

  v11 = *(*(DefiningOp + 48) + 16);
  v12 = v11 == &mlir::detail::TypeIDResolver<mlir::memref::SubViewOp,void>::id;
  v13 = v11 == &mlir::detail::TypeIDResolver<mlir::memref::SubViewOp,void>::id ? DefiningOp : 0;
  v33 = v13;
  if (!v12)
  {
    return 0;
  }

  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::memref::ReinterpretCastOp>::getMixedSizes(&v33, &v45);
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::memref::ReinterpretCastOp>::getMixedSizes(a1, &v42);
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::memref::ReinterpretCastOp>::getMixedOffsets(a1, &v39);
  if (v40)
  {
    v15 = v39;
    v16 = 8 * v40 - 8;
    do
    {
      v17 = *v15++;
      isConstantIntValue = mlir::isConstantIntValue(v17, 0);
      if (isConstantIntValue)
      {
        v19 = v16 == 0;
      }

      else
      {
        v19 = 1;
      }

      v16 -= 8;
    }

    while (!v19);
    v14 = isConstantIntValue;
  }

  else
  {
    v14 = 1;
  }

  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::memref::ReinterpretCastOp>::getMixedStrides(a1, &v36);
  if (v37)
  {
    v20 = v36;
    v21 = 8 * v37 - 8;
    do
    {
      v22 = *v20++;
      v23 = mlir::isConstantIntValue(v22, 1);
      if (v23)
      {
        v24 = v21 == 0;
      }

      else
      {
        v24 = 1;
      }

      v21 -= 8;
    }

    while (!v24);
    v25 = v43;
    v26 = v46;
    if (v43 != v46)
    {
      goto LABEL_64;
    }
  }

  else
  {
    v23 = 1;
    v25 = v43;
    v26 = v46;
    if (v43 != v46)
    {
LABEL_64:
      if (v36 != v38)
      {
        free(v36);
      }

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

      return 0;
    }
  }

  if (v25)
  {
    v27 = 8 * v25 - 8;
    v28 = 8 * v26 - 8;
    v29 = v42;
    v30 = v45;
    while (*v29 == *v30)
    {
      ++v29;
      v30 += 8;
      if (v27)
      {
        v27 -= 8;
        v31 = v28;
        v28 -= 8;
        if (v31)
        {
          continue;
        }
      }

      goto LABEL_52;
    }

    goto LABEL_64;
  }

  v30 = v45;
  v29 = v42;
LABEL_52:
  if ((v14 & v23) != 1 || v29 != (v42 + 8 * v25) || v30 != &v45[8 * v26] || v35 != v2)
  {
    goto LABEL_64;
  }

  v32 = *(*(*a1 + 72) + 24);
  if (v36 != v38)
  {
    free(v36);
  }

  if (v39 != v41)
  {
    free(v39);
  }

  if (v42 != v44)
  {
    free(v42);
  }

  result = v32 | 4;
  if (v45 != v47)
  {
    free(v45);
    return v32 | 4;
  }

  return result;
}

uint64_t inferTransposeResultType(uint64_t a1, uint64_t a2)
{
  v35[7] = *MEMORY[0x1E69E9840];
  v26 = a1;
  Value = mlir::ArrayAttr::getValue(&v26);
  mlir::getStridesAndOffset(v26, &v34);
  mlir::applyPermutationMap<long long>(a2, Value, &v31);
  mlir::applyPermutationMap<long long>(a2, v34, &v28);
  v27 = v26;
  mlir::ArrayAttr::getValue(&v27);
  RHS = mlir::AffineBinaryOpExpr::getRHS(&v27);
  mlir::DenseElementsAttr::getRawStringData(&v27);
  MemorySpace = mlir::MemRefType::getMemorySpace(&v27);
  v6 = v31;
  v7 = v32;
  Context = mlir::Attribute::getContext(&v26);
  v9 = mlir::StridedLayoutAttr::get(Context, v35[6], v28, v29);
  v10 = v9;
  if (!v9)
  {
    goto LABEL_14;
  }

  v11 = *v9;
  {
    v24 = v11;
    v25 = v9;
    mlir::memref::ExpandShapeOp::computeExpandedType();
    v10 = v25;
    v12 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;
    v13 = *(v24 + 8);
    v14 = *(v24 + 16);
    if (v14)
    {
      goto LABEL_4;
    }

LABEL_14:
    v21 = 0;
    goto LABEL_15;
  }

  v12 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;
  v13 = *(v11 + 8);
  v14 = *(v11 + 16);
  if (!v14)
  {
    goto LABEL_14;
  }

LABEL_4:
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
    goto LABEL_14;
  }

  v21 = v15[1];
LABEL_15:
  v22 = mlir::MemRefType::get(v6, v7, RHS, v10, v21, MemorySpace);
  if (v28 != &v30)
  {
    free(v28);
  }

  if (v31 != &v33)
  {
    free(v31);
  }

  if (v34 != v35)
  {
    free(v34);
  }

  return v22;
}

uint64_t mlir::memref::TransposeOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v17[2] = *MEMORY[0x1E69E9840];
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, " ", 1uLL);
  }

  else
  {
    *v5 = 32;
    ++v4[4];
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = v6[4];
  if (v6[3] == v7)
  {
    llvm::raw_ostream::write(v6, " ", 1uLL);
  }

  else
  {
    *v7 = 32;
    ++v6[4];
  }

  v17[0] = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  Value = mlir::AffineMapAttr::getValue(v17);
  v9 = (*(*a2 + 16))(a2);
  v17[0] = Value;
  mlir::AffineMap::print(v17, v9);
  v17[0] = mlir::Operation::getAttrDictionary(*this);
  v10 = mlir::ArrayAttr::getValue(v17);
  v17[0] = "permutation";
  v17[1] = 11;
  (*(*a2 + 192))(a2, v10, v11, v17, 1);
  v12 = (*(*a2 + 16))(a2);
  v13 = v12[4];
  if ((v12[3] - v13) > 2)
  {
    *(v13 + 2) = 32;
    *v13 = 14880;
    v12[4] += 3;
  }

  else
  {
    llvm::raw_ostream::write(v12, " : ", 3uLL);
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v14 = (*(*a2 + 16))(a2);
  v15 = v14[4];
  if (v14[3] - v15 > 3uLL)
  {
    *v15 = 544175136;
    v14[4] += 4;
  }

  else
  {
    llvm::raw_ostream::write(v14, " to ", 4uLL);
  }

  return (*(*a2 + 32))(a2, *(*this - 1) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t mlir::memref::TransposeOp::parse(uint64_t a1, mlir::Attribute *a2)
{
  memset(v9, 0, 24);
  v7 = 0;
  v8 = 0;
  v6 = 0;
  if (((*(*a1 + 704))() & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 504))(a1, &v8) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  if (!mlir::AsmParser::parseColonType<mlir::MemRefType>(a1, &v7))
  {
    return 0;
  }

  if (((*(*a1 + 728))(a1, v9, v7, a2 + 16) & 1) == 0)
  {
    return 0;
  }

  v11 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, v10) & 1) == 0 || ((*(*a1 + 536))(a1, &v6) & 1) == 0 || (mlir::AsmParser::addTypeToList(a1, v6, a2 + 64) & 1) == 0)
  {
    return 0;
  }

  v4 = mlir::AffineMapAttr::get(v8);
  mlir::OperationState::addAttribute(a2, "permutation", 11, v4);
  return 1;
}

uint64_t mlir::AsmParser::addTypeToList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (v3 >= *(a3 + 12))
  {
    v5 = a2;
    v6 = a3;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, v3 + 1, 8);
    a2 = v5;
    a3 = v6;
    LODWORD(v3) = *(v6 + 8);
  }

  *(*a3 + 8 * v3) = a2;
  ++*(a3 + 8);
  return 1;
}

BOOL mlir::memref::TransposeOp::verify(mlir::memref::TransposeOp *this)
{
  v63 = *MEMORY[0x1E69E9840];
  v52[0] = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  v52[0] = mlir::AffineMapAttr::getValue(v52);
  if (mlir::AffineMap::isPermutation(v52))
  {
    v52[0] = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
    v52[0] = mlir::AffineMapAttr::getValue(v52);
    NumDims = mlir::AffineMap::getNumDims(v52);
    v47[0] = (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    mlir::ArrayAttr::getValue(v47);
    if (v3 == NumDims)
    {
      v4 = *(*(*(*this + 72) + 24) + 8);
      v5 = *(*this - 8);
      v52[0] = *(*this + 80);
      Value = mlir::AffineMapAttr::getValue(v52);
      v7 = inferTransposeResultType(v4 & 0xFFFFFFFFFFFFFFF8, Value);
      v8 = mlir::canonicalizeStridedLayout(v7);
      if (mlir::canonicalizeStridedLayout(v5 & 0xFFFFFFFFFFFFFFF8) == v8)
      {
        return 1;
      }

      v47[0] = "result type ";
      v48 = 259;
      mlir::OpState::emitOpError(this, v47, v52);
      if (v52[0])
      {
        v24 = &v49;
        mlir::DiagnosticArgument::DiagnosticArgument(&v49, v5 & 0xFFFFFFFFFFFFFFF8);
        v25 = v53;
        if (v54 >= v55)
        {
          if (v53 <= &v49 && v53 + 24 * v54 > &v49)
          {
            v44 = &v49 - v53;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v53, v56, v54 + 1, 24);
            v25 = v53;
            v24 = (v53 + v44);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v53, v56, v54 + 1, 24);
            v24 = &v49;
            v25 = v53;
          }
        }

        v26 = &v25[24 * v54];
        v27 = *v24;
        *(v26 + 2) = *(v24 + 2);
        *v26 = v27;
        v28 = ++v54;
        if (v52[0])
        {
          v49 = 3;
          v50 = " is not equivalent to the canonical transposed input type ";
          v51 = 58;
          v29 = &v49;
          v30 = v53;
          if (v28 >= v55)
          {
            if (v53 <= &v49 && v53 + 24 * v28 > &v49)
            {
              v45 = &v49 - v53;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v53, v56, v28 + 1, 24);
              v30 = v53;
              v29 = (v53 + v45);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v53, v56, v28 + 1, 24);
              v29 = &v49;
              v30 = v53;
            }
          }

          v31 = &v30[24 * v54];
          v32 = *v29;
          *(v31 + 2) = *(v29 + 2);
          *v31 = v32;
          ++v54;
          if (v52[0])
          {
            v33 = &v49;
            mlir::DiagnosticArgument::DiagnosticArgument(&v49, v8);
            v34 = v53;
            if (v54 >= v55)
            {
              if (v53 <= &v49 && v53 + 24 * v54 > &v49)
              {
                v46 = &v49 - v53;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v53, v56, v54 + 1, 24);
                v34 = v53;
                v33 = (v53 + v46);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v53, v56, v54 + 1, 24);
                v33 = &v49;
                v34 = v53;
              }
            }

            v35 = &v34[24 * v54];
            v36 = *v33;
            *(v35 + 2) = *(v33 + 2);
            *v35 = v36;
            ++v54;
          }
        }
      }

      v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v52);
      if (v52[0])
      {
        mlir::InFlightDiagnostic::report(v52);
      }

      if (v62 == 1)
      {
        if (v61 != &v62)
        {
          free(v61);
        }

        v37 = __p;
        if (__p)
        {
          v38 = v60;
          v39 = __p;
          if (v60 != __p)
          {
            do
            {
              v38 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v38 - 1);
            }

            while (v38 != v37);
            v39 = __p;
          }

          v60 = v37;
          operator delete(v39);
        }

        v13 = v57;
        if (!v57)
        {
          goto LABEL_62;
        }

        v40 = v58;
        v15 = v57;
        if (v58 == v57)
        {
LABEL_61:
          v58 = v13;
          operator delete(v15);
LABEL_62:
          if (v53 != v56)
          {
            free(v53);
          }

          return v9;
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

        while (v40 != v13);
LABEL_60:
        v15 = v57;
        goto LABEL_61;
      }
    }

    else
    {
      v47[0] = "expected a permutation map of same rank as the input";
      v48 = 259;
      mlir::OpState::emitOpError(this, v47, v52);
      v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v52);
      if (v52[0])
      {
        mlir::InFlightDiagnostic::report(v52);
      }

      if (v62 == 1)
      {
        if (v61 != &v62)
        {
          free(v61);
        }

        v18 = __p;
        if (__p)
        {
          v19 = v60;
          v20 = __p;
          if (v60 != __p)
          {
            do
            {
              v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
            }

            while (v19 != v18);
            v20 = __p;
          }

          v60 = v18;
          operator delete(v20);
        }

        v13 = v57;
        if (!v57)
        {
          goto LABEL_62;
        }

        v21 = v58;
        v15 = v57;
        if (v58 == v57)
        {
          goto LABEL_61;
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

        while (v21 != v13);
        goto LABEL_60;
      }
    }
  }

  else
  {
    v47[0] = "expected a permutation map";
    v48 = 259;
    mlir::OpState::emitOpError(this, v47, v52);
    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v52);
    if (v52[0])
    {
      mlir::InFlightDiagnostic::report(v52);
    }

    if (v62 == 1)
    {
      if (v61 != &v62)
      {
        free(v61);
      }

      v10 = __p;
      if (__p)
      {
        v11 = v60;
        v12 = __p;
        if (v60 != __p)
        {
          do
          {
            v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
          }

          while (v11 != v10);
          v12 = __p;
        }

        v60 = v10;
        operator delete(v12);
      }

      v13 = v57;
      if (!v57)
      {
        goto LABEL_62;
      }

      v14 = v58;
      v15 = v57;
      if (v58 == v57)
      {
        goto LABEL_61;
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
      goto LABEL_60;
    }
  }

  return v9;
}

uint64_t mlir::memref::TransposeOp::fold(uint64_t a1)
{
  v14 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64);
  Value = mlir::AffineMapAttr::getValue(&v14);
  if (mlir::AffineMap::isIdentity(&Value))
  {
    v2 = *(*(*a1 + 72) + 24);
    if ((*(v2 + 8) ^ *(*a1 - 8)) <= 7)
    {
      return v2 | 4;
    }

    v14 = *(*(*a1 + 72) + 24);
    result = mlir::Value::getDefiningOp(&v14);
    if (!result)
    {
      return result;
    }

LABEL_6:
    if (*(*(result + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::memref::TransposeOp,void>::id)
    {
      return 0;
    }

    v14 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64);
    v4 = result;
    Value = mlir::AffineMapAttr::getValue(&v14);
    v14 = *(v4 + 16 * ((*(v4 + 44) >> 23) & 1) + 64);
    v5 = mlir::AffineMapAttr::getValue(&v14);
    v7 = mlir::AffineMap::compose(&Value, v5, v6);
    v8 = *(*a1 + 72);
    v9 = *(*(v4 + 72) + 24);
    v10 = v8[1];
    if (v10)
    {
      v11 = *v8;
      *v10 = *v8;
      if (v11)
      {
        *(v11 + 8) = v10;
      }
    }

    v8[3] = v9;
    v8[1] = v9;
    v12 = *v9;
    *v8 = *v9;
    if (v12)
    {
      *(v12 + 8) = v8;
    }

    *v9 = v8;
    *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) = mlir::AffineMapAttr::get(v7);
    v2 = *a1 - 16;
    return v2 | 4;
  }

  v14 = *(*(*a1 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v14);
  if (result)
  {
    goto LABEL_6;
  }

  return result;
}

BOOL mlir::memref::ViewOp::verify(mlir::Block ***this)
{
  v98 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v82 = *(*((*this)[9] + 3) + 8) & 0xFFFFFFFFFFFFFFF8;
  v81 = *(v2 - 1) & 0xFFFFFFFFFFFFFFF8;
  RawStringData = mlir::DenseElementsAttr::getRawStringData(&v82);
  v87 = v3;
  if ((mlir::ElementsAttr::isSplat(&RawStringData) & 1) == 0)
  {
    v79[0] = "unsupported map for base memref type ";
    v80 = 259;
    mlir::OpState::emitError(this, v79, &RawStringData);
    if (RawStringData)
    {
      v11 = &v83;
      mlir::DiagnosticArgument::DiagnosticArgument(&v83, v82);
      v12 = v88;
      if (v89 >= v90)
      {
        if (v88 <= &v83 && v88 + 24 * v89 > &v83)
        {
          v73 = &v83 - v88;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v91, v89 + 1, 24);
          v12 = v88;
          v11 = (v88 + v73);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v91, v89 + 1, 24);
          v11 = &v83;
          v12 = v88;
        }
      }

      v13 = &v12[24 * v89];
      v14 = *v11;
      *(v13 + 2) = *(v11 + 2);
      *v13 = v14;
      ++v89;
    }

    v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&RawStringData);
    if (RawStringData)
    {
      mlir::InFlightDiagnostic::report(&RawStringData);
    }

    if (v97 == 1)
    {
      if (v96 != &v97)
      {
        free(v96);
      }

      v16 = __p;
      if (__p)
      {
        v17 = v95;
        v18 = __p;
        if (v95 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v95 = v16;
        operator delete(v18);
      }

      v19 = v92;
      if (!v92)
      {
        goto LABEL_100;
      }

      v20 = v93;
      v21 = v92;
      if (v93 == v92)
      {
        goto LABEL_99;
      }

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
      goto LABEL_98;
    }

    return v15;
  }

  RawStringData = mlir::DenseElementsAttr::getRawStringData(&v81);
  v87 = v4;
  if ((mlir::ElementsAttr::isSplat(&RawStringData) & 1) == 0)
  {
    v79[0] = "unsupported map for result memref type ";
    v80 = 259;
    mlir::OpState::emitError(this, v79, &RawStringData);
    if (RawStringData)
    {
      v24 = &v83;
      mlir::DiagnosticArgument::DiagnosticArgument(&v83, v81);
      v25 = v88;
      if (v89 >= v90)
      {
        if (v88 <= &v83 && v88 + 24 * v89 > &v83)
        {
          v74 = &v83 - v88;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v91, v89 + 1, 24);
          v25 = v88;
          v24 = (v88 + v74);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v91, v89 + 1, 24);
          v24 = &v83;
          v25 = v88;
        }
      }

      v26 = &v25[24 * v89];
      v27 = *v24;
      *(v26 + 2) = *(v24 + 2);
      *v26 = v27;
      ++v89;
    }

    v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&RawStringData);
    if (RawStringData)
    {
      mlir::InFlightDiagnostic::report(&RawStringData);
    }

    if (v97 == 1)
    {
      if (v96 != &v97)
      {
        free(v96);
      }

      v28 = __p;
      if (__p)
      {
        v29 = v95;
        v30 = __p;
        if (v95 != __p)
        {
          do
          {
            v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
          }

          while (v29 != v28);
          v30 = __p;
        }

        v95 = v28;
        operator delete(v30);
      }

      v19 = v92;
      if (!v92)
      {
        goto LABEL_100;
      }

      v31 = v93;
      v21 = v92;
      if (v93 == v92)
      {
        goto LABEL_99;
      }

      do
      {
        v33 = *--v31;
        v32 = v33;
        *v31 = 0;
        if (v33)
        {
          operator delete[](v32);
        }
      }

      while (v31 != v19);
      goto LABEL_98;
    }

    return v15;
  }

  MemorySpace = mlir::MemRefType::getMemorySpace(&v82);
  if (MemorySpace == mlir::MemRefType::getMemorySpace(&v81))
  {
    Value = mlir::ArrayAttr::getValue(&v81);
    if (!v7)
    {
      v53 = 0;
LABEL_76:
      if ((*(*this + 46) & 0x80) != 0 && *(*this + 17) - 2 == v53)
      {
        return 1;
      }

      v79[0] = "incorrect number of size operands for type ";
      v80 = 259;
      mlir::OpState::emitError(this, v79, &RawStringData);
      if (RawStringData)
      {
        v62 = &v83;
        mlir::DiagnosticArgument::DiagnosticArgument(&v83, v81);
        v63 = v88;
        if (v89 >= v90)
        {
          if (v88 <= &v83 && v88 + 24 * v89 > &v83)
          {
            v77 = &v83 - v88;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v91, v89 + 1, 24);
            v63 = v88;
            v62 = (v88 + v77);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v91, v89 + 1, 24);
            v62 = &v83;
            v63 = v88;
          }
        }

        v64 = &v63[24 * v89];
        v65 = *v62;
        *(v64 + 2) = *(v62 + 2);
        *v64 = v65;
        ++v89;
      }

      v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&RawStringData);
      if (RawStringData)
      {
        mlir::InFlightDiagnostic::report(&RawStringData);
      }

      if (v97 == 1)
      {
        if (v96 != &v97)
        {
          free(v96);
        }

        v66 = __p;
        if (__p)
        {
          v67 = v95;
          v68 = __p;
          if (v95 != __p)
          {
            do
            {
              v67 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v67 - 1);
            }

            while (v67 != v66);
            v68 = __p;
          }

          v95 = v66;
          operator delete(v68);
        }

        v19 = v92;
        if (!v92)
        {
          goto LABEL_100;
        }

        v69 = v93;
        v21 = v92;
        if (v93 == v92)
        {
LABEL_99:
          v93 = v19;
          operator delete(v21);
LABEL_100:
          if (v88 != v91)
          {
            free(v88);
          }

          return v15;
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

        while (v69 != v19);
LABEL_98:
        v21 = v92;
        goto LABEL_99;
      }

      return v15;
    }

    v8 = (v7 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v8 >= 3)
    {
      v54 = v8 + 1;
      v55 = (v8 + 1) & 0x3FFFFFFFFFFFFFFCLL;
      v10 = (Value + 8 * v55);
      v56 = (Value + 16);
      v57 = 0uLL;
      v58 = vnegq_f64(0);
      v59 = v55;
      v60 = 0uLL;
      do
      {
        v57 = vsubq_s64(v57, vceqq_s64(v56[-1], v58));
        v60 = vsubq_s64(v60, vceqq_s64(*v56, v58));
        v56 += 2;
        v59 -= 4;
      }

      while (v59);
      v9 = vaddvq_s64(vaddq_s64(v60, v57));
      if (v54 == v55)
      {
LABEL_75:
        v53 = v9;
        goto LABEL_76;
      }
    }

    else
    {
      v9 = 0;
      v10 = Value;
    }

    do
    {
      v61 = *v10++;
      if (v61 == 0x8000000000000000)
      {
        ++v9;
      }
    }

    while (v10 != (Value + 8 * v7));
    goto LABEL_75;
  }

  v79[0] = "different memory spaces specified for base memref type ";
  v80 = 259;
  mlir::OpState::emitError(this, v79, &RawStringData);
  if (RawStringData)
  {
    v34 = &v83;
    mlir::DiagnosticArgument::DiagnosticArgument(&v83, v82);
    v35 = v88;
    if (v89 >= v90)
    {
      if (v88 <= &v83 && v88 + 24 * v89 > &v83)
      {
        v75 = &v83 - v88;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v91, v89 + 1, 24);
        v35 = v88;
        v34 = (v88 + v75);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v91, v89 + 1, 24);
        v34 = &v83;
        v35 = v88;
      }
    }

    v36 = &v35[24 * v89];
    v37 = *v34;
    *(v36 + 2) = *(v34 + 2);
    *v36 = v37;
    v38 = ++v89;
    if (RawStringData)
    {
      v83 = 3;
      v84 = " and view memref type ";
      v85 = 22;
      v39 = &v83;
      v40 = v88;
      if (v38 >= v90)
      {
        if (v88 <= &v83 && v88 + 24 * v38 > &v83)
        {
          v76 = &v83 - v88;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v91, v38 + 1, 24);
          v40 = v88;
          v39 = (v88 + v76);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v91, v38 + 1, 24);
          v39 = &v83;
          v40 = v88;
        }
      }

      v41 = &v40[24 * v89];
      v42 = *v39;
      *(v41 + 2) = *(v39 + 2);
      *v41 = v42;
      ++v89;
      if (RawStringData)
      {
        v43 = &v83;
        mlir::DiagnosticArgument::DiagnosticArgument(&v83, v81);
        v44 = v88;
        if (v89 >= v90)
        {
          if (v88 <= &v83 && v88 + 24 * v89 > &v83)
          {
            v78 = &v83 - v88;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v91, v89 + 1, 24);
            v44 = v88;
            v43 = (v88 + v78);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v91, v89 + 1, 24);
            v43 = &v83;
            v44 = v88;
          }
        }

        v45 = &v44[24 * v89];
        v46 = *v43;
        *(v45 + 2) = *(v43 + 2);
        *v45 = v46;
        ++v89;
      }
    }
  }

  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&RawStringData);
  if (RawStringData)
  {
    mlir::InFlightDiagnostic::report(&RawStringData);
  }

  if (v97 == 1)
  {
    if (v96 != &v97)
    {
      free(v96);
    }

    v47 = __p;
    if (__p)
    {
      v48 = v95;
      v49 = __p;
      if (v95 != __p)
      {
        do
        {
          v48 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v48 - 1);
        }

        while (v48 != v47);
        v49 = __p;
      }

      v95 = v47;
      operator delete(v49);
    }

    v19 = v92;
    if (!v92)
    {
      goto LABEL_100;
    }

    v50 = v93;
    v21 = v92;
    if (v93 == v92)
    {
      goto LABEL_99;
    }

    do
    {
      v52 = *--v50;
      v51 = v52;
      *v50 = 0;
      if (v52)
      {
        operator delete[](v51);
      }
    }

    while (v50 != v19);
    goto LABEL_98;
  }

  return v15;
}

void mlir::memref::ViewOp::getCanonicalizationPatterns(void *a1, uint64_t a2)
{
  v4 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v44, 1);
  mlir::Pattern::Pattern((v4 + 2), "memref.view", 11, v44, a2, 0, 0);
  *v4 = &unk_1F5AFAC78;
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

  v44 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::ViewOpShapeFolder]";
  v45 = 90;
  v9 = llvm::StringRef::find(&v44, "DesiredTypeName = ", 0x12uLL, 0);
  if (v45 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v45;
  }

  v11 = &v44[v10];
  v12 = v45 - v10;
  if (v45 - v10 >= 0x12)
  {
    v13 = 18;
  }

  else
  {
    v13 = v45 - v10;
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
    goto LABEL_54;
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
      goto LABEL_55;
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
  mlir::PatternBenefit::PatternBenefit(&v44, 1);
  mlir::Pattern::Pattern((v24 + 2), "memref.view", 11, v44, a2, 0, 0);
  *v24 = &unk_1F5AFAD18;
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

  v44 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::ViewOpMemrefCastFolder]";
  v45 = 95;
  v29 = llvm::StringRef::find(&v44, "DesiredTypeName = ", 0x12uLL, 0);
  if (v45 >= v29)
  {
    v30 = v29;
  }

  else
  {
    v30 = v45;
  }

  v31 = &v44[v30];
  v32 = v45 - v30;
  if (v45 - v30 >= 0x12)
  {
    v33 = 18;
  }

  else
  {
    v33 = v45 - v30;
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
LABEL_54:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
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
    if (!(v41 >> 61))
    {
      v42 = operator new(8 * v41);
      goto LABEL_51;
    }

LABEL_55:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v42 = 0;
LABEL_51:
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
}

uint64_t mlir::memref::AtomicRMWOp::fold(uint64_t a1)
{
  v1 = *(*a1 + 68);
  if (!v1)
  {
    return 0;
  }

  v3 = 0;
  v4 = *(*a1 + 72);
  v5 = v4[3];
  v6 = &v4[4 * v1];
  do
  {
    while (1)
    {
      v14 = v4[3];
      DefiningOp = mlir::Value::getDefiningOp(&v14);
      if (!DefiningOp)
      {
        break;
      }

      if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::memref::CastOp,void>::id)
      {
        break;
      }

      if (v4[3] == v5)
      {
        break;
      }

      v8 = *(*(DefiningOp + 72) + 24);
      if (*(*(v8[1] & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
      {
        break;
      }

      v9 = v4[1];
      if (v9)
      {
        v10 = *v4;
        *v9 = *v4;
        if (v10)
        {
          *(v10 + 8) = v9;
        }
      }

      v4[3] = v8;
      v11 = *v8;
      *v4 = *v8;
      v4[1] = v8;
      if (v11)
      {
        *(v11 + 8) = v4;
      }

      *v8 = v4;
      v4 += 4;
      v3 = 1;
      if (v4 == v6)
      {
        goto LABEL_16;
      }
    }

    v4 += 4;
  }

  while (v4 != v6);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  if (*(*a1 + 36))
  {
    v12 = *a1 - 16;
  }

  else
  {
    v12 = 0;
  }

  return mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0) | 4;
}

uint64_t mlir::memref::AssumeAlignmentOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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

  v56.var0 = "alignment";
  v56.var1 = 9;
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
    v43 = 54;
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

uint64_t mlir::memref::AssumeAlignmentOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v13, "alignment", 9, *a2);
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

unint64_t mlir::memref::AssumeAlignmentOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 9 && (*a3 == 0x6E656D6E67696C61 ? (v4 = *(a3 + 8) == 116) : (v4 = 0), v4))
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::memref::AssumeAlignmentOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 9 && *a2 == 0x6E656D6E67696C61 && *(a2 + 8) == 116)
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

void mlir::memref::AssumeAlignmentOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "alignment", 9, *a2);
  }
}

uint64_t mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps1(uint64_t a1, void *a2, const char *a3, void (*a4)(void *__return_ptr, void), uint64_t a5)
{
  v53 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 1;
  }

  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    goto LABEL_11;
  }

  v36 = a1;
  v8 = a4;
  v9 = a5;
  Value = mlir::AffineMapAttr::getValue(&v36);
  isSignlessInteger = mlir::Type::isSignlessInteger(&Value, 32);
  a5 = v9;
  a4 = v8;
  if (!isSignlessInteger)
  {
    goto LABEL_11;
  }

  v35 = a1;
  mlir::IntegerAttr::getValue(&v35, &__p);
  v11 = v42[0];
  v12 = v42[0] - 1;
  if (v42[0] < 0x41)
  {
    a4 = v8;
    a5 = v9;
    if (((__p >> v12) & 1) != 0 || !__p)
    {
      goto LABEL_11;
    }

    return 1;
  }

  v13 = __p;
  if (((*(__p + (v12 >> 6)) >> v12) & 1) == 0)
  {
    v14 = llvm::APInt::countLeadingZerosSlowCase(&__p);
    operator delete[](v13);
    a4 = v8;
    a5 = v9;
    if (v14 == v11)
    {
LABEL_11:
      a4(&__p, a5);
      goto LABEL_12;
    }

    return 1;
  }

  operator delete[](__p);
  v8(&__p, v9);
LABEL_12:
  if (__p)
  {
    LODWORD(Value) = 3;
    v38 = "attribute '";
    v39 = 11;
    p_Value = &Value;
    v16 = v43;
    if (v44 >= v45)
    {
      if (v43 <= &Value && v43 + 24 * v44 > &Value)
      {
        v33 = &Value - v43;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v16 = v43;
        p_Value = v43 + v33;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        p_Value = &Value;
        v16 = v43;
      }
    }

    v17 = &v16[24 * v44];
    v18 = *p_Value;
    *(v17 + 2) = *(p_Value + 2);
    *v17 = v18;
    ++v44;
    if (__p)
    {
      v40 = 261;
      Value = a2;
      v38 = a3;
      mlir::Diagnostic::operator<<(v42, &Value);
      if (__p)
      {
        LODWORD(Value) = 3;
        v38 = "' failed to satisfy constraint: 32-bit signless integer attribute whose value is positive";
        v39 = 89;
        v19 = &Value;
        v20 = v43;
        if (v44 >= v45)
        {
          if (v43 <= &Value && v43 + 24 * v44 > &Value)
          {
            v34 = &Value - v43;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v20 = v43;
            v19 = v43 + v34;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v19 = &Value;
            v20 = v43;
          }
        }

        v21 = &v20[24 * v44];
        v22 = *v19;
        *(v21 + 2) = *(v19 + 2);
        *v21 = v22;
        ++v44;
      }
    }
  }

  v23 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__p);
  if (__p)
  {
    mlir::InFlightDiagnostic::report(&__p);
  }

  if (v52 == 1)
  {
    if (v51 != &v52)
    {
      free(v51);
    }

    v24 = v49;
    if (v49)
    {
      v25 = v50;
      v26 = v49;
      if (v50 != v49)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = v49;
      }

      v50 = v24;
      operator delete(v26);
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
    }

    if (v43 != v46)
    {
      free(v43);
    }
  }

  return v23;
}

uint64_t mlir::memref::AssumeAlignmentOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, v3) & 1;
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::AssumeAlignmentOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::AssumeAlignmentOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::AssumeAlignmentOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::AssumeAlignmentOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::memref::AssumeAlignmentOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::memref::detail::AssumeAlignmentOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(a1, *(a2 + 256)) & 1;
}

uint64_t mlir::DialectBytecodeReader::readAttribute<mlir::IntegerAttr>(uint64_t a1, uint64_t *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (((*(*a1 + 48))(a1, &v36) & 1) == 0)
  {
    return 0;
  }

  v4 = v36;
  v5 = *(*v36 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
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

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::IntegerAttr]";
  v38 = 67;
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

BOOL mlir::memref::AssumeAlignmentOp::verifyInvariantsImpl(mlir::memref::AssumeAlignmentOp *this)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (v1)
  {
    v15[0] = *this;
    if (mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps1(v1, "alignment", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v15))
    {
      return mlir::memref::__mlir_ods_local_type_constraint_MemRefOps1(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = "requires attribute 'alignment'";
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

uint64_t mlir::memref::__mlir_ods_local_type_constraint_MemRefOps1(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned int a5)
{
  v66 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
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
        v53 = " must be memref of any type values, but got ";
        v54 = 44;
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

uint64_t mlir::memref::AssumeAlignmentOp::parse(uint64_t a1, void *a2)
{
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v18[0] = v19;
  v18[1] = 1;
  v16 = 0;
  v17 = 0;
  v15[0] = &v16;
  v15[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v19, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  v5 = (*(*a1 + 32))(a1);
  IntegerType = mlir::Builder::getIntegerType(v5, 32);
  if (!mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(a1, &v17, IntegerType))
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
      a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::AssumeAlignmentOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::AssumeAlignmentOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      a2[35] = v13;
      a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::AssumeAlignmentOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::AssumeAlignmentOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      a2[37] = v13;
      {
        mlir::memref::AssumeAlignmentOp::readProperties();
      }

      a2[33] = mlir::detail::TypeIDResolver<mlir::memref::detail::AssumeAlignmentOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v8 = a2[32];
      v7 = v17;
    }

    *v8 = v7;
  }

  v14 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 14) & 1) == 0)
  {
    return 0;
  }

  v10 = a2[1];
  v13[0] = a1;
  v13[1] = &v14;
  v13[2] = a2;
  v11 = mlir::NamedAttrList::get((a2 + 14), **(v10 + 96));
  if (v11)
  {
    if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps1(v11, "alignment", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::AssumeAlignmentOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v13) & 1) == 0)
    {
      return 0;
    }
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v13[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::MemRefType>(a1, v13))
  {
    return 0;
  }

  v16 = v13[0];
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v18, v15, v4, (a2 + 2)) & 1;
}

void mlir::memref::AssumeAlignmentOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v21[4] = *MEMORY[0x1E69E9840];
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
  v19 = v21;
  v21[0] = "alignment";
  v21[1] = 9;
  v20 = 0x200000001;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v11, v19, v20);
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

  v14 = (*(*a2 + 16))(a2);
  v15 = v14[4];
  if (v14[3] == v15)
  {
    llvm::raw_ostream::write(v14, ":", 1uLL);
  }

  else
  {
    *v15 = 58;
    ++v14[4];
  }

  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (v17 >= *(v16 + 3))
  {
    llvm::raw_ostream::write(v16, 32);
  }

  else
  {
    *(v16 + 4) = v17 + 1;
    *v17 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v19 != v21)
  {
    free(v19);
  }
}

uint64_t mlir::memref::AtomicRMWOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
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
      v11 = &v41;
      v12 = v45;
      if (v46 >= v47)
      {
        if (v45 <= &v41 && v45 + 24 * v46 > &v41)
        {
          v37 = &v41 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v12 = v45;
          v11 = (v45 + v37);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v11 = &v41;
          v12 = v45;
        }
      }

      v13 = &v12[24 * v46];
      v14 = *v11;
      *(v13 + 2) = *(v11 + 2);
      *v13 = v14;
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
    if (!v49)
    {
      goto LABEL_49;
    }

    v19 = v50;
    v20 = v49;
    if (v50 == v49)
    {
      goto LABEL_48;
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
    goto LABEL_47;
  }

  v56.var0 = "kind";
  v56.var1 = 4;
  v8 = mlir::DictionaryAttr::get(&v40, v56);
  if (!v8)
  {
    return 1;
  }

  v9 = v8;
  if (mlir::arith::AtomicRMWKindAttr::classof(v8))
  {
    *a1 = v9;
    return 1;
  }

  a3(v44, a4);
  if (v44[0])
  {
    v41 = 3;
    v43 = 49;
    v23 = &v41;
    v24 = v45;
    if (v46 >= v47)
    {
      if (v45 <= &v41 && v45 + 24 * v46 > &v41)
      {
        v38 = &v41 - v45;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v24 = v45;
        v23 = (v45 + v38);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v23 = &v41;
        v24 = v45;
      }
    }

    v25 = &v24[24 * v46];
    v26 = *v23;
    *(v25 + 2) = *(v23 + 2);
    *v25 = v26;
    ++v46;
    if (v44[0])
    {
      v27 = &v41;
      mlir::DiagnosticArgument::DiagnosticArgument(&v41, v9);
      v28 = v45;
      if (v46 >= v47)
      {
        if (v45 <= &v41 && v45 + 24 * v46 > &v41)
        {
          v39 = &v41 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v28 = v45;
          v27 = (v45 + v39);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v27 = &v41;
          v28 = v45;
        }
      }

      v29 = &v28[24 * v46];
      v30 = *v27;
      *(v29 + 2) = *(v27 + 2);
      *v29 = v30;
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

    v31 = __p;
    if (__p)
    {
      v32 = v52;
      v33 = __p;
      if (v52 != __p)
      {
        do
        {
          v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
        }

        while (v32 != v31);
        v33 = __p;
      }

      v52 = v31;
      operator delete(v33);
    }

    v18 = v49;
    if (!v49)
    {
      goto LABEL_49;
    }

    v34 = v50;
    v20 = v49;
    if (v50 == v49)
    {
LABEL_48:
      v50 = v18;
      operator delete(v20);
LABEL_49:
      if (v45 != v48)
      {
        free(v45);
      }

      return 0;
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

    while (v34 != v18);
LABEL_47:
    v20 = v49;
    goto LABEL_48;
  }

  return 0;
}

uint64_t mlir::memref::AtomicRMWOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v13, "kind", 4, *a2);
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

unint64_t mlir::memref::AtomicRMWOp::getInherentAttr(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4)
{
  if (a4 == 4 && *a3 == 1684957547)
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

uint64_t *mlir::memref::AtomicRMWOp::setInherentAttr(uint64_t *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 4 && *a2 == 1684957547)
  {
    if (a4)
    {
      v4 = result;
      v6 = mlir::arith::AtomicRMWKindAttr::classof(a4);
      result = v4;
      if (v6)
      {
        v7 = a4;
      }

      else
      {
        v7 = 0;
      }

      *v4 = v7;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

void mlir::memref::AtomicRMWOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "kind", 4, *a2);
  }
}

uint64_t mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps2(uint64_t a1, void *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v45 = *MEMORY[0x1E69E9840];
  if (!a1 || (mlir::arith::AtomicRMWKindAttr::classof(a1) & 1) != 0)
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
        v30 = "' failed to satisfy constraint: allowed 64-bit signless integer cases: 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14";
        v31 = 119;
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

BOOL mlir::memref::AtomicRMWOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::arith::AtomicRMWKindAttr>(a1, v3);
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::AtomicRMWOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::AtomicRMWOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::AtomicRMWOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::AtomicRMWOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::memref::AtomicRMWOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::memref::detail::AtomicRMWOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readAttribute<mlir::arith::AtomicRMWKindAttr>(a1, *(a2 + 256));
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::arith::AtomicRMWKindAttr>(uint64_t a1, uint64_t *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (((*(*a1 + 48))(a1, &v36) & 1) == 0)
  {
    return 0;
  }

  v4 = v36;
  if (mlir::arith::AtomicRMWKindAttr::classof(v36))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  if (v5)
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
    v7 = &v37;
    v8 = v43;
    if (v44 >= v45)
    {
      if (v43 <= &v37 && v43 + 24 * v44 > &v37)
      {
        v32 = &v37 - v43;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v8 = v43;
        v7 = (v43 + v32);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v7 = &v37;
        v8 = v43;
      }
    }

    v9 = &v8[24 * v44];
    v10 = *v7;
    *(v9 + 2) = v7[2];
    *v9 = v10;
    ++v44;
  }

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::arith::AtomicRMWKindAttr]";
  v38 = 80;
  v11 = llvm::StringRef::find(&v37, "DesiredTypeName = ", 0x12uLL, 0);
  if (v41)
  {
    if (v38 >= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v38;
    }

    v13 = 18;
    if (v38 - v12 < 0x12)
    {
      v13 = v38 - v12;
    }

    v14 = v38 - v12 - v13;
    if (v14 >= v14 - 1)
    {
      --v14;
    }

    v40 = 261;
    v37 += v12 + v13;
    v38 = v14;
    mlir::Diagnostic::operator<<(&v42, &v37);
    if (v41)
    {
      LODWORD(v37) = 3;
      v38 = ", but got: ";
      v39 = 11;
      v15 = &v37;
      v16 = v43;
      if (v44 >= v45)
      {
        if (v43 <= &v37 && v43 + 24 * v44 > &v37)
        {
          v33 = &v37 - v43;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v16 = v43;
          v15 = (v43 + v33);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v15 = &v37;
          v16 = v43;
        }
      }

      v17 = &v16[24 * v44];
      v18 = *v15;
      *(v17 + 2) = v15[2];
      *v17 = v18;
      ++v44;
      if (v41)
      {
        v19 = &v37;
        mlir::DiagnosticArgument::DiagnosticArgument(&v37, v36);
        v20 = v43;
        if (v44 >= v45)
        {
          if (v43 <= &v37 && v43 + 24 * v44 > &v37)
          {
            v34 = &v37 - v43;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v20 = v43;
            v19 = (v43 + v34);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v19 = &v37;
            v20 = v43;
          }
        }

        v21 = &v20[24 * v44];
        v22 = *v19;
        *(v21 + 2) = v19[2];
        *v21 = v22;
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

BOOL mlir::memref::AtomicRMWOp::verifyInvariantsImpl(mlir::memref::AtomicRMWOp *this)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v26 = v2;
    if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps2(v3, "kind", 4, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v26) & 1) == 0 || !mlir::memref::__mlir_ods_local_type_constraint_MemRefOps2(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) || (mlir::memref::__mlir_ods_local_type_constraint_MemRefOps3(*this, *(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) == 0)
    {
      return 0;
    }

    v4 = *this;
    if ((*(*this + 46) & 0x80) != 0)
    {
      if (*(v4 + 68) == 2)
      {
        goto LABEL_7;
      }

      if (mlir::memref::AtomicRMWOp::verifyInvariantsImpl())
      {
        return 0;
      }
    }

    else if (mlir::memref::AtomicRMWOp::verifyInvariantsImpl())
    {
      return 0;
    }

    v4 = v26;
LABEL_7:
    v5 = *(v4 + 36);
    v6 = v4 - 16;
    if (v5)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0);
    if (mlir::memref::__mlir_ods_local_type_constraint_MemRefOps2(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0))
    {
      if (*(*this + 36))
      {
        v10 = *this - 16;
      }

      else
      {
        v10 = 0;
      }

      v9 = *(*(*(*this + 72) + 24) + 8);
      if ((*(mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0) + 8) ^ v9) <= 7 && (*(*this + 36) ? (v11 = *this - 16) : (v11 = 0), v12 = mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0), v13 = *(*this + 72), (*(*(v13 + 24) + 8) ^ *(v12 + 8)) < 8))
      {
        v26 = *(*(v13 + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
        if (mlir::AffineBinaryOpExpr::getRHS(&v26) == (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8))
        {
          return 1;
        }

        else
        {
          v24[0] = "failed to verify that value type matches element type of memref";
          v25 = 259;
          mlir::OpState::emitOpError(this, v24, &v26);
          v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v26);
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v26);
        }
      }

      else
      {
        v24[0] = "failed to verify that all of {value, result} have same type";
        v25 = 259;
        mlir::OpState::emitOpError(this, v24, &v26);
        v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v26);
        if (v26)
        {
          mlir::InFlightDiagnostic::report(&v26);
        }

        if (v35 == 1)
        {
          mlir::Diagnostic::~Diagnostic(&v27);
        }
      }

      return v14;
    }

    return 0;
  }

  v24[0] = "requires attribute 'kind'";
  v25 = 259;
  mlir::OpState::emitOpError(this, v24, &v26);
  v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v26);
  if (v26)
  {
    mlir::InFlightDiagnostic::report(&v26);
  }

  if (v35 == 1)
  {
    if (v34 != &v35)
    {
      free(v34);
    }

    v15 = __p;
    if (__p)
    {
      v16 = v33;
      v17 = __p;
      if (v33 != __p)
      {
        do
        {
          v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
        }

        while (v16 != v15);
        v17 = __p;
      }

      v33 = v15;
      operator delete(v17);
    }

    v18 = v30;
    if (v30)
    {
      v19 = v31;
      v20 = v30;
      if (v31 != v30)
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
        v20 = v30;
      }

      v31 = v18;
      operator delete(v20);
    }

    if (v28 != &v29)
    {
      free(v28);
    }
  }

  return v14;
}

BOOL mlir::memref::__mlir_ods_local_type_constraint_MemRefOps2(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned int a5)
{
  v64 = *MEMORY[0x1E69E9840];
  v49 = a2;
  if (mlir::Type::isSignlessInteger(&v49))
  {
    return 1;
  }

  v9 = *(*v49 + 136);
  if (v9 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id)
  {
    return 1;
  }

  if (v9 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id)
  {
    return 1;
  }

  if (v9 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id)
  {
    return 1;
  }

  if (v9 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id)
  {
    return 1;
  }

  if (v9 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id)
  {
    return 1;
  }

  if (v9 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id)
  {
    return 1;
  }

  result = 1;
  if (v9 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    v48 = 261;
    v47[0] = a3;
    v47[1] = a4;
    mlir::Operation::emitOpError(a1, v47, v53);
    if (v53[0])
    {
      v50 = 3;
      v51 = " #";
      v52 = 2;
      v16 = &v50;
      v17 = v54;
      if (v55 >= v56)
      {
        if (v54 <= &v50 && v54 + 24 * v55 > &v50)
        {
          v43 = &v50 - v54;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v54, v57, v55 + 1, 24);
          v17 = v54;
          v16 = (v54 + v43);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v54, v57, v55 + 1, 24);
          v16 = &v50;
          v17 = v54;
        }
      }

      v18 = &v17[24 * v55];
      v19 = *v16;
      *(v18 + 2) = *(v16 + 2);
      *v18 = v19;
      v20 = ++v55;
      if (v53[0])
      {
        v50 = 5;
        v51 = a5;
        v21 = &v50;
        v22 = v54;
        if (v20 >= v56)
        {
          if (v54 <= &v50 && v54 + 24 * v20 > &v50)
          {
            v44 = &v50 - v54;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v54, v57, v20 + 1, 24);
            v22 = v54;
            v21 = (v54 + v44);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v54, v57, v20 + 1, 24);
            v21 = &v50;
            v22 = v54;
          }
        }

        v23 = &v22[24 * v55];
        v24 = *v21;
        *(v23 + 2) = *(v21 + 2);
        *v23 = v24;
        v25 = ++v55;
        if (v53[0])
        {
          v50 = 3;
          v51 = " must be signless integer or floating-point, but got ";
          v52 = 53;
          v26 = &v50;
          v27 = v54;
          if (v25 >= v56)
          {
            if (v54 <= &v50 && v54 + 24 * v25 > &v50)
            {
              v45 = &v50 - v54;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v54, v57, v25 + 1, 24);
              v27 = v54;
              v26 = (v54 + v45);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v54, v57, v25 + 1, 24);
              v26 = &v50;
              v27 = v54;
            }
          }

          v28 = &v27[24 * v55];
          v29 = *v26;
          *(v28 + 2) = *(v26 + 2);
          *v28 = v29;
          ++v55;
          if (v53[0])
          {
            v30 = &v50;
            mlir::DiagnosticArgument::DiagnosticArgument(&v50, v49);
            v31 = v54;
            if (v55 >= v56)
            {
              if (v54 <= &v50 && v54 + 24 * v55 > &v50)
              {
                v46 = &v50 - v54;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v54, v57, v55 + 1, 24);
                v31 = v54;
                v30 = (v54 + v46);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v54, v57, v55 + 1, 24);
                v30 = &v50;
                v31 = v54;
              }
            }

            v32 = &v31[24 * v55];
            v33 = *v30;
            *(v32 + 2) = *(v30 + 2);
            *v32 = v33;
            ++v55;
          }
        }
      }
    }

    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v53);
    v34 = result;
    if (v53[0])
    {
      mlir::InFlightDiagnostic::report(v53);
      result = v34;
    }

    if (v63 == 1)
    {
      if (v62 != &v63)
      {
        free(v62);
        result = v34;
      }

      v35 = __p;
      if (__p)
      {
        v36 = v61;
        v37 = __p;
        if (v61 != __p)
        {
          do
          {
            v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
          }

          while (v36 != v35);
          v37 = __p;
        }

        v61 = v35;
        operator delete(v37);
        result = v34;
      }

      v38 = v58;
      if (v58)
      {
        v39 = v59;
        v40 = v58;
        if (v59 != v58)
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
          v40 = v58;
        }

        v59 = v38;
        operator delete(v40);
        result = v34;
      }

      if (v54 != v57)
      {
        free(v54);
        return v34;
      }
    }
  }

  return result;
}

uint64_t mlir::memref::__mlir_ods_local_type_constraint_MemRefOps3(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned int a5)
{
  v84 = *MEMORY[0x1E69E9840];
  v7 = *a2;
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
LABEL_2:
    v69 = 261;
    v68[0] = a3;
    v68[1] = a4;
    mlir::Operation::emitOpError(a1, v68, v73);
    if (v73[0])
    {
      v70 = 3;
      v71 = " #";
      v72 = 2;
      v8 = &v70;
      v9 = v74;
      if (v75 >= v76)
      {
        if (v74 <= &v70 && v74 + 24 * v75 > &v70)
        {
          v64 = &v70 - v74;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
          v9 = v74;
          v8 = (v74 + v64);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
          v8 = &v70;
          v9 = v74;
        }
      }

      v10 = &v9[24 * v75];
      v11 = *v8;
      *(v10 + 2) = *(v8 + 2);
      *v10 = v11;
      v12 = ++v75;
      if (v73[0])
      {
        v70 = 5;
        v71 = a5;
        v13 = &v70;
        v14 = v74;
        if (v12 >= v76)
        {
          if (v74 <= &v70 && v74 + 24 * v12 > &v70)
          {
            v65 = &v70 - v74;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v12 + 1, 24);
            v14 = v74;
            v13 = (v74 + v65);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v12 + 1, 24);
            v13 = &v70;
            v14 = v74;
          }
        }

        v15 = &v14[24 * v75];
        v16 = *v13;
        *(v15 + 2) = *(v13 + 2);
        *v15 = v16;
        v17 = ++v75;
        if (v73[0])
        {
          v70 = 3;
          v71 = " must be memref of signless integer or floating-point values, but got ";
          v72 = 70;
          v18 = &v70;
          v19 = v74;
          if (v17 >= v76)
          {
            if (v74 <= &v70 && v74 + 24 * v17 > &v70)
            {
              v66 = &v70 - v74;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v17 + 1, 24);
              v19 = v74;
              v18 = (v74 + v66);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v17 + 1, 24);
              v18 = &v70;
              v19 = v74;
            }
          }

          v20 = &v19[24 * v75];
          v21 = *v18;
          *(v20 + 2) = *(v18 + 2);
          *v20 = v21;
          ++v75;
          if (v73[0])
          {
            v22 = &v70;
            mlir::DiagnosticArgument::DiagnosticArgument(&v70, a2);
            v23 = v74;
            if (v75 >= v76)
            {
              if (v74 <= &v70 && v74 + 24 * v75 > &v70)
              {
                v67 = &v70 - v74;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
                v23 = v74;
                v22 = (v74 + v67);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v74, v77, v75 + 1, 24);
                v22 = &v70;
                v23 = v74;
              }
            }

            v24 = &v23[24 * v75];
            v25 = *v22;
            *(v24 + 2) = *(v22 + 2);
            *v24 = v25;
            ++v75;
          }
        }
      }
    }

    v26 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v73);
    if (v73[0])
    {
      mlir::InFlightDiagnostic::report(v73);
    }

    if (v83 == 1)
    {
      if (v82 != &v83)
      {
        free(v82);
      }

      v27 = __p;
      if (__p)
      {
        v28 = v81;
        v29 = __p;
        if (v81 != __p)
        {
          do
          {
            v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
          }

          while (v28 != v27);
          v29 = __p;
        }

        v81 = v27;
        operator delete(v29);
      }

      v30 = v78;
      if (v78)
      {
        v31 = v79;
        v32 = v78;
        if (v79 != v78)
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
          v32 = v78;
        }

        v79 = v30;
        operator delete(v32);
      }

      if (v74 != v77)
      {
        free(v74);
      }
    }

    return v26;
  }

  v35 = a1;
  v36 = a4;
  v37 = a3;
  {
    v38 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v39 = *(v7 + 8);
    v40 = *(v7 + 16);
    if (!v40)
    {
      goto LABEL_55;
    }
  }

  else
  {
    getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
    v38 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v39 = *(v7 + 8);
    v40 = *(v7 + 16);
    if (!v40)
    {
      goto LABEL_55;
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
    v47 = v41[1];
    goto LABEL_57;
  }

LABEL_55:
  v47 = 0;
LABEL_57:
  v73[0] = a2;
  v73[1] = v47;
  v68[0] = mlir::ElementsAttr::isSplat(v73);
  if (mlir::Type::isSignlessInteger(v68))
  {
    return 1;
  }

  v48 = *(*v68[0] + 136);
  v49 = v48 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v48 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id;
  v50 = v49 || v48 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id;
  v51 = v50 || v48 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id;
  v52 = v51 || v48 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id;
  v53 = v52 || v48 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id;
  v54 = v53 || v48 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id;
  v55 = v54 || v48 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id;
  v56 = v55 || v48 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id;
  v57 = v56 || v48 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id;
  v58 = v57 || v48 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id;
  v59 = v58 || v48 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id;
  v60 = v59 || v48 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id;
  v61 = v60 || v48 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id;
  if (v61 || v48 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
  {
    return 1;
  }

  v26 = 1;
  if (v48 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id)
  {
    a1 = v35;
    a4 = v36;
    a3 = v37;
    if (v48 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
    {
      goto LABEL_2;
    }
  }

  return v26;
}

uint64_t mlir::memref::__mlir_ods_local_type_constraint_MemRefOps4(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned int a5)
{
  v55 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    return 1;
  }

  v40 = 261;
  v39[0] = a3;
  v39[1] = a4;
  mlir::Operation::emitOpError(a1, v39, v44);
  if (v44[0])
  {
    v41 = 3;
    v42 = " #";
    v43 = 2;
    v7 = &v41;
    v8 = v45;
    if (v46 >= v47)
    {
      if (v45 <= &v41 && v45 + 24 * v46 > &v41)
      {
        v35 = &v41 - v45;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v8 = v45;
        v7 = (v45 + v35);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v7 = &v41;
        v8 = v45;
      }
    }

    v9 = &v8[24 * v46];
    v10 = *v7;
    *(v9 + 2) = *(v7 + 2);
    *v9 = v10;
    v11 = ++v46;
    if (v44[0])
    {
      v41 = 5;
      v42 = a5;
      v12 = &v41;
      v13 = v45;
      if (v11 >= v47)
      {
        if (v45 <= &v41 && v45 + 24 * v11 > &v41)
        {
          v36 = &v41 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v11 + 1, 24);
          v13 = v45;
          v12 = (v45 + v36);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v11 + 1, 24);
          v12 = &v41;
          v13 = v45;
        }
      }

      v14 = &v13[24 * v46];
      v15 = *v12;
      *(v14 + 2) = *(v12 + 2);
      *v14 = v15;
      v16 = ++v46;
      if (v44[0])
      {
        v41 = 3;
        v42 = " must be variadic of index, but got ";
        v43 = 36;
        v17 = &v41;
        v18 = v45;
        if (v16 >= v47)
        {
          if (v45 <= &v41 && v45 + 24 * v16 > &v41)
          {
            v37 = &v41 - v45;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v16 + 1, 24);
            v18 = v45;
            v17 = (v45 + v37);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v16 + 1, 24);
            v17 = &v41;
            v18 = v45;
          }
        }

        v19 = &v18[24 * v46];
        v20 = *v17;
        *(v19 + 2) = *(v17 + 2);
        *v19 = v20;
        ++v46;
        if (v44[0])
        {
          v21 = &v41;
          mlir::DiagnosticArgument::DiagnosticArgument(&v41, a2);
          v22 = v45;
          if (v46 >= v47)
          {
            if (v45 <= &v41 && v45 + 24 * v46 > &v41)
            {
              v38 = &v41 - v45;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
              v22 = v45;
              v21 = (v45 + v38);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
              v21 = &v41;
              v22 = v45;
            }
          }

          v23 = &v22[24 * v46];
          v24 = *v21;
          *(v23 + 2) = *(v21 + 2);
          *v23 = v24;
          ++v46;
        }
      }
    }
  }

  v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v44);
  if (v44[0])
  {
    mlir::InFlightDiagnostic::report(v44);
  }

  if (v54 == 1)
  {
    if (v53 != &v54)
    {
      free(v53);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v52;
      v28 = __p;
      if (v52 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v52 = v26;
      operator delete(v28);
    }

    v29 = v49;
    if (v49)
    {
      v30 = v50;
      v31 = v49;
      if (v50 != v49)
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
        v31 = v49;
      }

      v50 = v29;
      operator delete(v31);
    }

    if (v45 != v48)
    {
      free(v45);
    }
  }

  return v25;
}

BOOL mlir::memref::AtomicRMWOp::parse(uint64_t a1, void *a2)
{
  v77[16] = *MEMORY[0x1E69E9840];
  memset(v59, 0, sizeof(v59));
  v60 = 0;
  v58[0] = v59;
  v58[1] = 1;
  memset(v56, 0, sizeof(v56));
  v57 = 0;
  v55[0] = v56;
  v55[1] = 1;
  v75 = v77;
  v76 = 0x400000000;
  v53[1] = 1;
  v54 = 0;
  v52 = 0;
  v53[0] = &v54;
  v51[0] = &v52;
  v51[1] = 1;
  v50.var0 = 0;
  v50.var1 = 0;
  AttrData = 0;
  v73[0] = v74;
  v73[1] = 0x400000000;
  v74[8] = 4;
  v4 = (*(*a1 + 40))(a1);
  v72[0] = xmmword_1E86D2D68;
  v72[1] = *&off_1E86D2D78;
  v72[2] = xmmword_1E86D2D88;
  v68 = xmmword_1E86D2D28;
  v69 = *&off_1E86D2D38;
  __p = xmmword_1E86D2D48;
  v71 = *&off_1E86D2D58;
  v67[2] = xmmword_1E86D2CE8;
  v67[3] = *&off_1E86D2CF8;
  v67[4] = xmmword_1E86D2D08;
  v67[5] = *&off_1E86D2D18;
  v65 = xmmword_1E86D2CA8;
  v66 = *&off_1E86D2CB8;
  v67[0] = xmmword_1E86D2CC8;
  v67[1] = *&off_1E86D2CD8;
  if ((*(*a1 + 424))(a1, &AttrData, &v65, 15))
  {
    v5.var0 = v50.var0;
    if (v50.var0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v73[0] != v74)
    {
      free(v73[0]);
    }

    v13 = (*(*a1 + 40))(a1);
    if (((*(*a1 + 704))(a1, v59, 1) & 1) == 0)
    {
      goto LABEL_51;
    }

    if (((*(*a1 + 120))(a1) & 1) == 0)
    {
      goto LABEL_51;
    }

    v14 = (*(*a1 + 40))(a1);
    if (((*(*a1 + 704))(a1, v56, 1) & 1) == 0)
    {
      goto LABEL_51;
    }

    if (((*(*a1 + 312))(a1) & 1) == 0)
    {
      goto LABEL_51;
    }

    (*(*a1 + 40))(a1);
    if (((*(*a1 + 720))(a1, &v75, 0, 1, 0xFFFFFFFFLL) & 1) == 0)
    {
      goto LABEL_51;
    }

    if (((*(*a1 + 328))(a1) & 1) == 0)
    {
      goto LABEL_51;
    }

    v73[0] = (*(*a1 + 40))(a1);
    if (((*(*a1 + 488))(a1, a2 + 14) & 1) == 0)
    {
      goto LABEL_51;
    }

    v15 = a2[1];
    *&v65 = a1;
    *(&v65 + 1) = v73;
    *&v66 = a2;
    if (!mlir::memref::AtomicRMWOp::verifyInherentAttrs(v15, (a2 + 14), llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::memref::AtomicRMWOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v65))
    {
      goto LABEL_51;
    }

    if (((*(*a1 + 104))(a1) & 1) == 0)
    {
      goto LABEL_51;
    }

    if (((*(*a1 + 280))(a1) & 1) == 0)
    {
      goto LABEL_51;
    }

    *&v65 = 0;
    if (((*(*a1 + 536))(a1, &v65) & 1) == 0)
    {
      goto LABEL_51;
    }

    v54 = v65;
    if (((*(*a1 + 120))(a1) & 1) == 0)
    {
      goto LABEL_51;
    }

    *&v65 = 0;
    if (!mlir::AsmParser::parseType<mlir::MemRefType>(a1, &v65))
    {
      goto LABEL_51;
    }

    v52 = v65;
    if (((*(*a1 + 296))(a1) & 1) == 0)
    {
      goto LABEL_51;
    }

    if (((*(*a1 + 56))(a1) & 1) == 0)
    {
      goto LABEL_51;
    }

    *&v65 = 0;
    if (((*(*a1 + 536))(a1, &v65) & 1) == 0)
    {
      goto LABEL_51;
    }

    v50.var1 = v65;
    v16 = (*(*a1 + 32))(a1);
    IndexType = mlir::Builder::getIndexType(v16, v17);
    mlir::OperationState::addTypes(a2, &v50.var1, 1);
    if ((mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v58, v53, v13, (a2 + 2)) & 1) == 0 || (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v55, v51, v14, (a2 + 2)) & 1) == 0)
    {
      goto LABEL_51;
    }

    if (v76)
    {
      v19 = v75;
      v20 = 32 * v76;
      while (((*(*a1 + 728))(a1, v19, IndexType, a2 + 2) & 1) != 0)
      {
        v19 += 4;
        v21 = 1;
        v20 -= 32;
        if (!v20)
        {
          goto LABEL_84;
        }
      }

LABEL_51:
      v21 = 0;
      v34 = v75;
      if (v75 == v77)
      {
        return v21;
      }

      goto LABEL_85;
    }

    v21 = 1;
    v34 = v75;
    if (v75 == v77)
    {
      return v21;
    }

LABEL_85:
    free(v34);
    return v21;
  }

  v47[0] = 0;
  v22 = (*(*a1 + 32))(a1);
  NoneType = mlir::Builder::getNoneType(v22, v23);
  v25 = (*(*a1 + 472))(a1, v47, NoneType);
  if ((v25 & 0x100) == 0)
  {
    v61 = "expected string or keyword containing one of the following enum values for attribute 'kind' [addf, addi, assign, maximumf, maxs, maxu, minimumf, mins, minu, mulf, muli, ori, andi, maxnumf, minnumf]";
    v64 = 259;
    (*(*a1 + 24))(&v65, a1, v4, &v61);
    v21 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v65);
    if (v65)
    {
      mlir::InFlightDiagnostic::report(&v65);
    }

    if (BYTE8(v72[0]) != 1)
    {
      goto LABEL_82;
    }

    if (*(&v71 + 1) != (v72 + 8))
    {
      free(*(&v71 + 1));
    }

    v26 = __p;
    if (__p)
    {
      v27 = *(&__p + 1);
      v28 = __p;
      if (*(&__p + 1) != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      *(&__p + 1) = v26;
      operator delete(v28);
    }

    v29 = *(&v68 + 1);
    if (!*(&v68 + 1))
    {
      goto LABEL_80;
    }

    v30 = v69;
    v31 = *(&v68 + 1);
    if (v69 == *(&v68 + 1))
    {
      goto LABEL_79;
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
    goto LABEL_78;
  }

  if ((v25 & 1) == 0)
  {
    v21 = 0;
    goto LABEL_82;
  }

  mlir::NamedAttrList::append(v73, "kind", 4, v47[0]);
  AttrData = mlir::OpaqueAttr::getAttrData(v47);
  v50.var0 = v5.var0;
  if (!v5.var0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v6 = mlir::arith::symbolizeAtomicRMWKind(AttrData, v5);
  if (v7)
  {
    v8 = v6;
    v9 = (*(*a1 + 32))(a1);
    v10 = mlir::arith::AtomicRMWKindAttr::get(*v9, v8);
    v11 = a2[32];
    if (!v11)
    {
      v12 = operator new(8uLL);
      *v12 = 0;
      a2[32] = v12;
      a2[34] = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::AtomicRMWOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::AtomicRMWOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      a2[35] = &v65;
      a2[36] = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::AtomicRMWOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::AtomicRMWOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      a2[37] = &v65;
      {
        mlir::memref::AtomicRMWOp::readProperties();
      }

      a2[33] = mlir::detail::TypeIDResolver<mlir::memref::detail::AtomicRMWOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v11 = a2[32];
    }

    *v11 = v10;
    goto LABEL_9;
  }

  v47[0] = "invalid ";
  v48 = 259;
  (*(*a1 + 24))(&v65, a1, v4, v47);
  if (v65)
  {
    LODWORD(v61) = 3;
    var0 = "kind attribute specification: ";
    v63 = 31;
    v35 = &v61;
    v36 = *(&v66 + 1);
    if (LODWORD(v67[0]) >= DWORD1(v67[0]))
    {
      if (*(&v66 + 1) <= &v61 && *(&v66 + 1) + 24 * LODWORD(v67[0]) > &v61)
      {
        v46 = &v61 - *(&v66 + 1);
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v66 + 8, v67 + 8, LODWORD(v67[0]) + 1, 24);
        v36 = *(&v66 + 1);
        v35 = &v46[*(&v66 + 1)];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v66 + 8, v67 + 8, LODWORD(v67[0]) + 1, 24);
        v35 = &v61;
        v36 = *(&v66 + 1);
      }
    }

    v37 = v36 + 24 * LODWORD(v67[0]);
    v38 = *v35;
    *(v37 + 16) = v35[2];
    *v37 = v38;
    ++LODWORD(v67[0]);
    if (v65)
    {
      v64 = 261;
      v61 = AttrData;
      var0 = v50.var0;
      mlir::Diagnostic::operator<<(&v65 + 8, &v61);
      if (v65)
      {
        mlir::Diagnostic::operator<<(&v65 + 8, 34);
      }
    }
  }

  v21 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v65);
  if (v65)
  {
    mlir::InFlightDiagnostic::report(&v65);
  }

  if (BYTE8(v72[0]))
  {
    if (*(&v71 + 1) != (v72 + 8))
    {
      free(*(&v71 + 1));
    }

    v39 = __p;
    if (__p)
    {
      v40 = *(&__p + 1);
      v41 = __p;
      if (*(&__p + 1) != __p)
      {
        do
        {
          v40 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v40 - 1);
        }

        while (v40 != v39);
        v41 = __p;
      }

      *(&__p + 1) = v39;
      operator delete(v41);
    }

    v29 = *(&v68 + 1);
    if (!*(&v68 + 1))
    {
      goto LABEL_80;
    }

    v42 = v69;
    v31 = *(&v68 + 1);
    if (v69 == *(&v68 + 1))
    {
LABEL_79:
      *&v69 = v29;
      operator delete(v31);
LABEL_80:
      if (*(&v66 + 1) != (v67 + 8))
      {
        free(*(&v66 + 1));
      }

      goto LABEL_82;
    }

    do
    {
      v44 = *--v42;
      v43 = v44;
      *v42 = 0;
      if (v44)
      {
        operator delete[](v43);
      }
    }

    while (v42 != v29);
LABEL_78:
    v31 = *(&v68 + 1);
    goto LABEL_79;
  }

LABEL_82:
  if (v73[0] != v74)
  {
    free(v73[0]);
  }

LABEL_84:
  v34 = v75;
  if (v75 != v77)
  {
    goto LABEL_85;
  }

  return v21;
}

void mlir::memref::AtomicRMWOp::getEffects(uint64_t a1, uint64_t a2)
{
  {
    v12 = a2;
    v13 = a1;
    mlir::memref::AtomicRMWOp::getEffects();
    a1 = v13;
    a2 = v12;
  }

  v24 = *(*a1 + 72) + 32;
  v25 = &mlir::SideEffects::Effect::get<mlir::MemoryEffects::Read>(void)::instance;
  v23 = 0;
  v22 = 0;
  {
    v21 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
    v2 = *(a2 + 8);
    if (v2 < *(a2 + 12))
    {
      goto LABEL_5;
    }

LABEL_10:
    v16 = a2;
    v17 = a1;
    llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Read *,mlir::OpOperand *,int,BOOL,mlir::SideEffects::DefaultResource *>(a2, &v25, &v24, &v23, &v22, &v21);
    a1 = v17;
    a2 = v16;
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  v14 = a2;
  v15 = a1;
  llvm::SmallVectorImpl<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>>::emplace_back<mlir::MemoryEffects::Write *>();
  a1 = v15;
  a2 = v14;
  v21 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
  v2 = *(v14 + 8);
  if (v2 >= *(v14 + 12))
  {
    goto LABEL_10;
  }

LABEL_5:
  v3 = *a2 + 40 * v2;
  v4 = v24;
  v5 = v23;
  v6 = v22;
  *v3 = v25;
  *(v3 + 8) = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
  *(v3 + 16) = v4 & 0xFFFFFFFFFFFFFFF9 | 2;
  *(v3 + 24) = 0;
  *(v3 + 32) = v5;
  *(v3 + 36) = v6;
  ++*(a2 + 8);
  {
    goto LABEL_6;
  }

LABEL_11:
  v18 = a2;
  v19 = a1;
  mlir::memref::AtomicRMWOp::getEffects();
  a1 = v19;
  a2 = v18;
LABEL_6:
  v24 = *(*a1 + 72) + 32;
  v25 = &mlir::SideEffects::Effect::get<mlir::MemoryEffects::Write>(void)::instance;
  v23 = 0;
  v22 = 0;
  {
    v21 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
    v7 = *(a2 + 8);
    if (v7 < *(a2 + 12))
    {
LABEL_8:
      v8 = *a2 + 40 * v7;
      v9 = v24;
      v10 = v23;
      v11 = v22;
      *v8 = v25;
      *(v8 + 8) = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
      *(v8 + 16) = v9 & 0xFFFFFFFFFFFFFFF9 | 2;
      *(v8 + 24) = 0;
      *(v8 + 32) = v10;
      *(v8 + 36) = v11;
      ++*(a2 + 8);
      return;
    }
  }

  else
  {
    v20 = a2;
    mlir::memref::AtomicRMWOp::getEffects();
    a2 = v20;
    v21 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
    v7 = *(v20 + 8);
    if (v7 < *(v20 + 12))
    {
      goto LABEL_8;
    }
  }

  llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Read *,mlir::OpOperand *,int,BOOL,mlir::SideEffects::DefaultResource *>(a2, &v25, &v24, &v23, &v22, &v21);
}