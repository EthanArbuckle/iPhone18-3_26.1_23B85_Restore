void mlir::tensor::ExpandShapeOp::build(mlir::IndexType **a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31[6] = *MEMORY[0x1E69E9840];
  v12 = *a2;
  __src = (*(a4 + 8) & 0xFFFFFFFFFFFFFFF8);
  v29 = v31;
  v30 = 0x600000000;
  mlir::ArrayAttr::getValue(&__src);
  if (v13 >= 1)
  {
    for (i = 0; i < v17; i = (i + 1))
    {
      MixedSize = mlir::tensor::getMixedSize(a1, v12, a4, i);
      v16 = v30;
      if (v30 >= HIDWORD(v30))
      {
        v18 = MixedSize;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v31, v30 + 1, 8);
        MixedSize = v18;
        v16 = v30;
      }

      *(v29 + v16) = MixedSize;
      LODWORD(v30) = v30 + 1;
      mlir::ArrayAttr::getValue(&__src);
    }
  }

  mlir::tensor::ExpandShapeOp::inferOutputShape(a1, *a2, a3, a5, a6, v29, v30, &__src);
  __dst = v24;
  v23 = 0x600000000;
  if (v28 != 1)
  {
    v19 = 0;
    v21 = v24;
    goto LABEL_16;
  }

  v19 = v26;
  if (v26)
  {
    if (v26 < 7)
    {
      v20 = v26;
      v21 = v24;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v24, v26, 8);
      v20 = v26;
      v21 = __dst;
      if (!v26)
      {
        goto LABEL_15;
      }
    }

    memcpy(v21, __src, 8 * v20);
    v21 = __dst;
  }

  else
  {
    v21 = v24;
  }

LABEL_15:
  LODWORD(v23) = v19;
LABEL_16:
  mlir::tensor::ExpandShapeOp::build(a1, a2, a3, a4, a5, a6, v21, v19);
  if (__dst != v24)
  {
    free(__dst);
  }

  if (v28 == 1 && __src != &v27)
  {
    free(__src);
  }

  if (v29 != v31)
  {
    free(v29);
  }
}

void mlir::tensor::CollapseShapeOp::getReassociationExprs(mlir::tensor::CollapseShapeOp *this@<X0>, void *a2@<X8>)
{
  v18[8] = *MEMORY[0x1E69E9840];
  Context = mlir::Attribute::getContext((*this + 24));
  mlir::memref::CollapseShapeOp::getReassociationIndices(this, &v13);
  mlir::convertReassociationIndicesToExprs(Context, v13, v14, &v16);
  *a2 = a2 + 2;
  a2[1] = 0x400000000;
  if (v17)
  {
    llvm::SmallVectorImpl<llvm::SmallVector<mlir::AffineExpr,2u>>::operator=(a2, &v16);
    v5 = v16;
    if (!v17)
    {
      goto LABEL_8;
    }

    v6 = &v16[4 * v17 - 2];
    v7 = -32 * v17;
    do
    {
      v8 = *(v6 - 16);
      if (v6 != v8)
      {
        free(v8);
      }

      v6 -= 32;
      v7 += 32;
    }

    while (v7);
  }

  v5 = v16;
LABEL_8:
  if (v5 != v18)
  {
    free(v5);
  }

  v9 = v13;
  if (v14)
  {
    v10 = v13 + 32 * v14 - 16;
    v11 = -32 * v14;
    do
    {
      v12 = *(v10 - 2);
      if (v10 != v12)
      {
        free(v12);
      }

      v10 -= 32;
      v11 += 32;
    }

    while (v11);
    v9 = v13;
  }

  if (v9 != &v15)
  {
    free(v9);
  }
}

uint64_t mlir::tensor::CollapseShapeOp::inferCollapsedType(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  v33[4] = *MEMORY[0x1E69E9840];
  v30 = a1;
  Value = mlir::ArrayAttr::getValue(&v30);
  v31 = v33;
  v32 = 0x400000000;
  if (a3 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v31, v33, a3, 8);
LABEL_4:
    v6 = 0;
    v7 = &a2[a3];
    while (1)
    {
      v29 = *a2;
      v8 = mlir::arith::FastMathFlagsAttr::getValue(&v29);
      v9 = v8;
      if (v8)
      {
        v10 = 8 * v8;
        v11 = (Value + 8 * v6);
        while (*v11 != 0x8000000000000000)
        {
          ++v11;
          v10 -= 8;
          if (!v10)
          {
            goto LABEL_18;
          }
        }
      }

      else
      {
        v11 = (Value + 8 * v6);
      }

      v12 = Value + 8 * v6 + 8 * v8;
      if (v11 == v12)
      {
        v13 = 1;
      }

      else
      {
        v13 = 0x8000000000000000;
      }

      if (v11 != v12 || v8 == 0)
      {
        goto LABEL_23;
      }

LABEL_18:
      if (v8 >= 2)
      {
        v15 = 0;
        if (!__CFADD__(v6, v8 - 1))
        {
          v13 = 1;
          if (!((v8 - 1) >> 32))
          {
            v15 = v8 & 0xFFFFFFFE;
            v20 = v6;
            v21 = v15;
            v22 = 1;
            v23 = 1;
            do
            {
              v22 *= *(Value + 8 * v20);
              v23 *= *(Value + 8 * (v20 + 1));
              v20 += 2;
              v21 -= 2;
            }

            while (v21);
            v13 = v23 * v22;
            if (v15 == v8)
            {
              goto LABEL_23;
            }
          }

          goto LABEL_21;
        }
      }

      else
      {
        v15 = 0;
      }

      v13 = 1;
LABEL_21:
      v16 = v6 + v15;
      v17 = v8 - v15;
      do
      {
        v13 *= *(Value + 8 * v16++);
        --v17;
      }

      while (v17);
LABEL_23:
      v18 = v32;
      if (v32 >= HIDWORD(v32))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v31, v33, v32 + 1, 8);
        v18 = v32;
      }

      *(v31 + v18) = v13;
      v19 = v32 + 1;
      LODWORD(v32) = v32 + 1;
      v6 += v9;
      if (++a2 == v7)
      {
        goto LABEL_34;
      }
    }
  }

  if (a3)
  {
    goto LABEL_4;
  }

  v19 = v32;
LABEL_34:
  v24 = v31;
  v25 = v19;
  RHS = mlir::AffineBinaryOpExpr::getRHS(&v30);
  result = mlir::RankedTensorType::get(v24, v25, RHS, 0);
  if (v31 != v33)
  {
    v28 = result;
    free(v31);
    return v28;
  }

  return result;
}

void mlir::tensor::CollapseShapeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
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
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::CollapseShapeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::CollapseShapeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &v24;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::CollapseShapeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::CollapseShapeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &v23;
      {
        mlir::tensor::CollapseShapeOp::build();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::tensor::detail::CollapseShapeOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
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

BOOL mlir::tensor::ExpandShapeOp::verify(mlir::tensor::ExpandShapeOp *this)
{
  v304 = *MEMORY[0x1E69E9840];
  v2 = *(*(*(*this + 72) + 24) + 8);
  if (*(*this + 36))
  {
    v3 = *this - 16;
  }

  else
  {
    v3 = 0;
  }

  v274 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  v291 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v291);
  v5 = v4;
  mlir::ArrayAttr::getValue(&v274);
  if (v5 != v6)
  {
    v287 = "expected number of static shape dims to be equal to the output rank (";
    v290 = 259;
    mlir::OpState::emitOpError(this, &v287, &v291);
    mlir::ArrayAttr::getValue(&v274);
    if (v291)
    {
      LODWORD(v277) = 2;
      v278 = v15;
      v16 = &v277;
      v17 = v294;
      if (v295 >= v296)
      {
        if (v294 <= &v277 && v294 + 24 * v295 > &v277)
        {
          v248 = &v277 - v294;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v295 + 1, 24);
          v17 = v294;
          v16 = (v294 + v248);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v295 + 1, 24);
          v16 = &v277;
          v17 = v294;
        }
      }

      v18 = &v17[24 * v295];
      v19 = *v16;
      *(v18 + 2) = v16[2];
      *v18 = v19;
      v20 = ++v295;
      if (v291)
      {
        LODWORD(v277) = 3;
        v278 = ") but found ";
        v279 = 12;
        v21 = &v277;
        v22 = v294;
        if (v20 >= v296)
        {
          if (v294 <= &v277 && v294 + 24 * v20 > &v277)
          {
            v250 = &v277 - v294;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v20 + 1, 24);
            v22 = v294;
            v21 = (v294 + v250);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v20 + 1, 24);
            v21 = &v277;
            v22 = v294;
          }
        }

        v23 = &v22[24 * v295];
        v24 = *v21;
        *(v23 + 2) = v21[2];
        *v23 = v24;
        ++v295;
      }
    }

    v277 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
    mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v277);
    if (v291)
    {
      LODWORD(v277) = 5;
      v278 = v25;
      v26 = &v277;
      v27 = v294;
      if (v295 >= v296)
      {
        if (v294 <= &v277 && v294 + 24 * v295 > &v277)
        {
          v249 = &v277 - v294;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v295 + 1, 24);
          v27 = v294;
          v26 = (v294 + v249);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v295 + 1, 24);
          v26 = &v277;
          v27 = v294;
        }
      }

      v28 = &v27[24 * v295];
      v29 = *v26;
      *(v28 + 2) = v26[2];
      *v28 = v29;
      v30 = ++v295;
      if (v291)
      {
        LODWORD(v277) = 3;
        v278 = " inputs instead";
        v279 = 15;
        v31 = &v277;
        v32 = v294;
        if (v30 >= v296)
        {
          if (v294 <= &v277 && v294 + 24 * v30 > &v277)
          {
            v251 = &v277 - v294;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v30 + 1, 24);
            v32 = v294;
            v31 = (v294 + v251);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v30 + 1, 24);
            v31 = &v277;
            v32 = v294;
          }
        }

        v33 = &v32[24 * v295];
        v34 = *v31;
        *(v33 + 2) = v31[2];
        *v33 = v34;
        ++v295;
      }
    }

    v35 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v291);
    if (v291)
    {
      mlir::InFlightDiagnostic::report(&v291);
    }

    if (v303 != 1)
    {
      return v35;
    }

    if (v302 != &v303)
    {
      free(v302);
    }

    v36 = __p;
    if (__p)
    {
      v37 = v301;
      v38 = __p;
      if (v301 != __p)
      {
        do
        {
          v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
        }

        while (v37 != v36);
        v38 = __p;
      }

      v301 = v36;
      operator delete(v38);
    }

    v39 = v298;
    if (v298)
    {
      v40 = v299;
      v41 = v298;
      if (v299 == v298)
      {
        goto LABEL_115;
      }

      do
      {
        v43 = *--v40;
        v42 = v43;
        *v40 = 0;
        if (v43)
        {
          operator delete[](v42);
        }
      }

      while (v40 != v39);
LABEL_114:
      v41 = v298;
LABEL_115:
      v299 = v39;
      operator delete(v41);
    }

LABEL_116:
    v129 = v294;
    if (v294 == v297)
    {
      return v35;
    }

    goto LABEL_254;
  }

  v7 = *this;
  v8 = *(*this + 44);
  if ((v8 & 0x800000) != 0)
  {
    v9 = *(v7 + 68) - 1;
  }

  else
  {
    v9 = -1;
  }

  v291 = *(v7 + 16 * ((v8 >> 23) & 1) + 72);
  v10 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v291);
  if (!v11)
  {
    v13 = 0;
    goto LABEL_43;
  }

  v12 = (v11 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v12 >= 3)
  {
    v44 = v12 + 1;
    v45 = (v12 + 1) & 0x3FFFFFFFFFFFFFFCLL;
    v14 = (v10 + 8 * v45);
    v46 = (v10 + 16);
    v47 = 0uLL;
    v48 = vnegq_f64(0);
    v49 = v45;
    v50 = 0uLL;
    do
    {
      v47 = vsubq_s64(v47, vceqq_s64(v46[-1], v48));
      v50 = vsubq_s64(v50, vceqq_s64(*v46, v48));
      v46 += 2;
      v49 -= 4;
    }

    while (v49);
    v13 = vaddvq_s64(vaddq_s64(v50, v47));
    if (v44 == v45)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v13 = 0;
    v14 = v10;
  }

  do
  {
    v51 = *v14++;
    if (v51 == 0x8000000000000000)
    {
      ++v13;
    }
  }

  while (v14 != (v10 + 8 * v11));
LABEL_43:
  if (v9 != v13)
  {
    v287 = "mismatch in dynamic dims in output_shape and static_output_shape: static_output_shape has ";
    v290 = 259;
    mlir::OpState::emitOpError(this, &v287, &v291);
    v277 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
    v85 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v277);
    if (!v86)
    {
      v88 = 0;
      goto LABEL_87;
    }

    v87 = (v86 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v87 >= 3)
    {
      v96 = v87 + 1;
      v97 = (v87 + 1) & 0x3FFFFFFFFFFFFFFCLL;
      v89 = (v85 + 8 * v97);
      v98 = (v85 + 16);
      v99 = 0uLL;
      v100 = vnegq_f64(0);
      v101 = v97;
      v102 = 0uLL;
      do
      {
        v99 = vsubq_s64(v99, vceqq_s64(v98[-1], v100));
        v102 = vsubq_s64(v102, vceqq_s64(*v98, v100));
        v98 += 2;
        v101 -= 4;
      }

      while (v101);
      v88 = vaddvq_s64(vaddq_s64(v102, v99));
      if (v96 == v97)
      {
        goto LABEL_87;
      }
    }

    else
    {
      v88 = 0;
      v89 = v85;
    }

    do
    {
      v103 = *v89++;
      if (v103 == 0x8000000000000000)
      {
        ++v88;
      }
    }

    while (v89 != (v85 + 8 * v86));
LABEL_87:
    if (v291)
    {
      LODWORD(v277) = 2;
      v278 = v88;
      v104 = &v277;
      v105 = v294;
      if (v295 >= v296)
      {
        if (v294 <= &v277 && v294 + 24 * v295 > &v277)
        {
          v252 = &v277 - v294;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v295 + 1, 24);
          v105 = v294;
          v104 = (v294 + v252);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v295 + 1, 24);
          v104 = &v277;
          v105 = v294;
        }
      }

      v106 = &v105[24 * v295];
      v107 = *v104;
      *(v106 + 2) = v104[2];
      *v106 = v107;
      v108 = ++v295;
      if (v291)
      {
        LODWORD(v277) = 3;
        v278 = " dynamic dims while output_shape has ";
        v279 = 37;
        v109 = &v277;
        v110 = v294;
        if (v108 >= v296)
        {
          if (v294 <= &v277 && v294 + 24 * v108 > &v277)
          {
            v254 = &v277 - v294;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v108 + 1, 24);
            v110 = v294;
            v109 = (v294 + v254);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v108 + 1, 24);
            v109 = &v277;
            v110 = v294;
          }
        }

        v111 = &v110[24 * v295];
        v112 = *v109;
        *(v111 + 2) = v109[2];
        *v111 = v112;
        ++v295;
      }
    }

    if ((*(*this + 46) & 0x80) != 0)
    {
      v113 = *(*this + 68) - 1;
      if (!v291)
      {
        goto LABEL_98;
      }
    }

    else
    {
      v113 = -1;
      if (!v291)
      {
        goto LABEL_98;
      }
    }

    LODWORD(v277) = 5;
    v278 = v113;
    v114 = &v277;
    v115 = v294;
    if (v295 >= v296)
    {
      if (v294 <= &v277 && v294 + 24 * v295 > &v277)
      {
        v253 = &v277 - v294;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v295 + 1, 24);
        v115 = v294;
        v114 = (v294 + v253);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v295 + 1, 24);
        v114 = &v277;
        v115 = v294;
      }
    }

    v116 = &v115[24 * v295];
    v117 = *v114;
    *(v116 + 2) = v114[2];
    *v116 = v117;
    v118 = ++v295;
    if (v291)
    {
      LODWORD(v277) = 3;
      v278 = " values";
      v279 = 7;
      v119 = &v277;
      v120 = v294;
      if (v118 >= v296)
      {
        if (v294 <= &v277 && v294 + 24 * v118 > &v277)
        {
          v255 = &v277 - v294;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v118 + 1, 24);
          v120 = v294;
          v119 = (v294 + v255);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v118 + 1, 24);
          v119 = &v277;
          v120 = v294;
        }
      }

      v121 = &v120[24 * v295];
      v122 = *v119;
      *(v121 + 2) = v119[2];
      *v121 = v122;
      ++v295;
    }

LABEL_98:
    v35 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v291);
    if (v291)
    {
      mlir::InFlightDiagnostic::report(&v291);
    }

    if (v303 != 1)
    {
      return v35;
    }

    if (v302 != &v303)
    {
      free(v302);
    }

    v123 = __p;
    if (__p)
    {
      v124 = v301;
      v125 = __p;
      if (v301 != __p)
      {
        do
        {
          v124 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v124 - 1);
        }

        while (v124 != v123);
        v125 = __p;
      }

      v301 = v123;
      operator delete(v125);
    }

    v39 = v298;
    if (v298)
    {
      v126 = v299;
      v41 = v298;
      if (v299 == v298)
      {
        goto LABEL_115;
      }

      do
      {
        v128 = *--v126;
        v127 = v128;
        *v126 = 0;
        if (v128)
        {
          operator delete[](v127);
        }
      }

      while (v126 != v39);
      goto LABEL_114;
    }

    goto LABEL_116;
  }

  v52 = v2 & 0xFFFFFFFFFFFFFFF8;
  v53 = *this;
  v54 = v274;
  v275 = v53;
  v282 = v274;
  v283 = v53;
  v281 = v52;
  mlir::ArrayAttr::getValue(&v282);
  v56 = v55;
  mlir::ArrayAttr::getValue(&v281);
  if (v56 < v57)
  {
    v287 = "expected the expanded type, ";
    v290 = 259;
    mlir::OpState::emitOpError(&v283, &v287, &v291);
    if (v291)
    {
      v58 = &v277;
      mlir::DiagnosticArgument::DiagnosticArgument(&v277, v282);
      v59 = v294;
      if (v295 >= v296)
      {
        if (v294 <= &v277 && v294 + 24 * v295 > &v277)
        {
          v256 = &v277 - v294;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v295 + 1, 24);
          v59 = v294;
          v58 = (v294 + v256);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v295 + 1, 24);
          v58 = &v277;
          v59 = v294;
        }
      }

      v60 = &v59[24 * v295];
      v61 = *v58;
      *(v60 + 2) = v58[2];
      *v60 = v61;
      v62 = ++v295;
      if (v291)
      {
        LODWORD(v277) = 3;
        v278 = " to have a higher (or same) rank ";
        v279 = 33;
        v63 = &v277;
        v64 = v294;
        if (v62 >= v296)
        {
          if (v294 <= &v277 && v294 + 24 * v62 > &v277)
          {
            v257 = &v277 - v294;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v62 + 1, 24);
            v64 = v294;
            v63 = (v294 + v257);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v62 + 1, 24);
            v63 = &v277;
            v64 = v294;
          }
        }

        v65 = &v64[24 * v295];
        v66 = *v63;
        *(v65 + 2) = v63[2];
        *v65 = v66;
        v67 = ++v295;
        if (v291)
        {
          LODWORD(v277) = 3;
          v278 = "than the collapsed type, ";
          v279 = 25;
          v68 = &v277;
          v69 = v294;
          if (v67 >= v296)
          {
            if (v294 <= &v277 && v294 + 24 * v67 > &v277)
            {
              v261 = &v277 - v294;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v67 + 1, 24);
              v69 = v294;
              v68 = (v294 + v261);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v67 + 1, 24);
              v68 = &v277;
              v69 = v294;
            }
          }

          v70 = &v69[24 * v295];
          v71 = *v68;
          *(v70 + 2) = v68[2];
          *v70 = v71;
          ++v295;
          if (v291)
          {
            v72 = &v277;
            mlir::DiagnosticArgument::DiagnosticArgument(&v277, v281);
            v73 = v294;
            if (v295 >= v296)
            {
              if (v294 <= &v277 && v294 + 24 * v295 > &v277)
              {
                v265 = &v277 - v294;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v295 + 1, 24);
                v73 = v294;
                v72 = (v294 + v265);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v295 + 1, 24);
                v72 = &v277;
                v73 = v294;
              }
            }

            v74 = &v73[24 * v295];
            v75 = *v72;
            *(v74 + 2) = v72[2];
            *v74 = v75;
            ++v295;
            if (v291)
            {
              mlir::Diagnostic::operator<<(&v292, 46);
            }
          }
        }
      }
    }

    v76 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v291);
    if (v291)
    {
      mlir::InFlightDiagnostic::report(&v291);
    }

    if (v303 == 1)
    {
      if (v302 != &v303)
      {
        free(v302);
      }

      v77 = __p;
      if (__p)
      {
        v78 = v301;
        v79 = __p;
        if (v301 != __p)
        {
          do
          {
            v78 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v78 - 1);
          }

          while (v78 != v77);
          v79 = __p;
        }

        v301 = v77;
        operator delete(v79);
      }

      v80 = v298;
      if (!v298)
      {
        goto LABEL_154;
      }

      v81 = v299;
      v82 = v298;
      if (v299 == v298)
      {
LABEL_153:
        v299 = v80;
        operator delete(v82);
LABEL_154:
        if (v294 != v297)
        {
          free(v294);
        }

        goto LABEL_156;
      }

      do
      {
        v84 = *--v81;
        v83 = v84;
        *v81 = 0;
        if (v84)
        {
          operator delete[](v83);
        }
      }

      while (v81 != v80);
LABEL_152:
      v82 = v298;
      goto LABEL_153;
    }

    goto LABEL_156;
  }

  v90 = v57;
  v291 = *(v53 + 16 * ((*(v53 + 44) >> 23) & 1) + 64);
  mlir::ArrayAttr::getValue(&v291);
  if (v90 != v91)
  {
    v287 = "expected collapsed rank (";
    v290 = 259;
    mlir::OpState::emitOpError(&v283, &v287, &v291);
    if (v291)
    {
      LODWORD(v277) = 5;
      v278 = v90;
      v130 = &v277;
      v131 = v294;
      if (v295 >= v296)
      {
        if (v294 <= &v277 && v294 + 24 * v295 > &v277)
        {
          v258 = &v277 - v294;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v295 + 1, 24);
          v131 = v294;
          v130 = (v294 + v258);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v295 + 1, 24);
          v130 = &v277;
          v131 = v294;
        }
      }

      v132 = &v131[24 * v295];
      v133 = *v130;
      *(v132 + 2) = v130[2];
      *v132 = v133;
      v134 = ++v295;
      if (v291)
      {
        LODWORD(v277) = 3;
        v278 = ") to equal the number of reassociation maps (";
        v279 = 45;
        v135 = &v277;
        v136 = v294;
        if (v134 >= v296)
        {
          if (v294 <= &v277 && v294 + 24 * v134 > &v277)
          {
            v262 = &v277 - v294;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v134 + 1, 24);
            v136 = v294;
            v135 = (v294 + v262);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v134 + 1, 24);
            v135 = &v277;
            v136 = v294;
          }
        }

        v137 = &v136[24 * v295];
        v138 = *v135;
        *(v137 + 2) = v135[2];
        *v137 = v138;
        ++v295;
      }
    }

    v284 = *(v283 + 16 * ((*(v283 + 44) >> 23) & 1) + 64);
    mlir::ArrayAttr::getValue(&v284);
    if (v291)
    {
      LODWORD(v277) = 5;
      v278 = v139;
      v140 = &v277;
      v141 = v294;
      if (v295 >= v296)
      {
        if (v294 <= &v277 && v294 + 24 * v295 > &v277)
        {
          v259 = &v277 - v294;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v295 + 1, 24);
          v141 = v294;
          v140 = (v294 + v259);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v295 + 1, 24);
          v140 = &v277;
          v141 = v294;
        }
      }

      v142 = &v141[24 * v295];
      v143 = *v140;
      *(v142 + 2) = v140[2];
      *v142 = v143;
      v144 = ++v295;
      if (v291)
      {
        LODWORD(v277) = 3;
        v278 = ").";
        v279 = 2;
        v145 = &v277;
        v146 = v294;
        if (v144 >= v296)
        {
          if (v294 <= &v277 && v294 + 24 * v144 > &v277)
          {
            v263 = &v277 - v294;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v144 + 1, 24);
            v146 = v294;
            v145 = (v294 + v263);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v144 + 1, 24);
            v145 = &v277;
            v146 = v294;
          }
        }

        v147 = &v146[24 * v295];
        v148 = *v145;
        *(v147 + 2) = v145[2];
        *v147 = v148;
        ++v295;
      }
    }

    v76 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v291);
    if (v291)
    {
      mlir::InFlightDiagnostic::report(&v291);
    }

    if (v303 == 1)
    {
      if (v302 != &v303)
      {
        free(v302);
      }

      v149 = __p;
      if (__p)
      {
        v150 = v301;
        v151 = __p;
        if (v301 != __p)
        {
          do
          {
            v150 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v150 - 1);
          }

          while (v150 != v149);
          v151 = __p;
        }

        v301 = v149;
        operator delete(v151);
      }

      v80 = v298;
      if (!v298)
      {
        goto LABEL_154;
      }

      v152 = v299;
      v82 = v298;
      if (v299 == v298)
      {
        goto LABEL_153;
      }

      do
      {
        v154 = *--v152;
        v153 = v154;
        *v152 = 0;
        if (v154)
        {
          operator delete[](v153);
        }
      }

      while (v152 != v80);
      goto LABEL_152;
    }

LABEL_156:
    if (v76)
    {
      goto LABEL_157;
    }

    return 0;
  }

  mlir::tensor::CollapseShapeOp::getReassociationExprs(&v283, &v291);
  mlir::getSymbolLessAffineMaps(v291, v292, &v287);
  v92 = v291;
  if (v292)
  {
    v93 = v291 + 32 * v292 - 16;
    v94 = -32 * v292;
    do
    {
      v95 = *(v93 - 2);
      if (v93 != v95)
      {
        free(v95);
      }

      v93 -= 32;
      v94 += 32;
    }

    while (v94);
    v92 = v291;
  }

  if (v92 != &v293)
  {
    free(v92);
  }

  v155 = v287;
  if (!v288)
  {
    v159 = 0;
LABEL_191:
    v276 = 0;
    if (mlir::isReassociationValid(v155, v159, &v276))
    {
      v277 = &v283;
      Value = mlir::ArrayAttr::getValue(&v281);
      v188 = v187;
      v189 = mlir::ArrayAttr::getValue(&v282);
      v191 = v190;
      mlir::memref::CollapseShapeOp::getReassociationIndices(&v283, &v291);
      v192 = mlir::reshapeLikeShapesAreCompatible(llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>::callback_fn<llvm::LogicalResult mlir::verifyReshapeLikeTypes<mlir::tensor::ExpandShapeOp,mlir::RankedTensorType>(mlir::tensor::ExpandShapeOp,mlir::RankedTensorType,mlir::RankedTensorType,BOOL)::{lambda(llvm::Twine const&)#1}>, &v277, Value, v188, v189, v191, v291, v292);
      v193 = v291;
      if (v292)
      {
        v194 = v291 + 32 * v292 - 16;
        v195 = -32 * v292;
        do
        {
          v196 = *(v194 - 2);
          if (v194 != v196)
          {
            free(v196);
          }

          v194 -= 32;
          v195 += 32;
        }

        while (v195);
        v193 = v291;
      }

      v246 = &v293;
    }

    else
    {
      v277 = "expected reassociation map #";
      v280 = 259;
      mlir::OpState::emitOpError(&v283, &v277, &v291);
      if (v291)
      {
        LODWORD(v284) = 2;
        v285 = v276;
        v197 = &v284;
        v198 = v294;
        if (v295 >= v296)
        {
          if (v294 <= &v284 && v294 + 24 * v295 > &v284)
          {
            v267 = &v284 - v294;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v295 + 1, 24);
            v198 = v294;
            v197 = v294 + v267;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v295 + 1, 24);
            v197 = &v284;
            v198 = v294;
          }
        }

        v199 = &v198[24 * v295];
        v200 = *v197;
        *(v199 + 2) = *(v197 + 2);
        *v199 = v200;
        v201 = ++v295;
        if (v291)
        {
          LODWORD(v284) = 3;
          v285 = " to be valid and contiguous.";
          v286 = 28;
          v202 = &v284;
          v203 = v294;
          if (v201 >= v296)
          {
            if (v294 <= &v284 && v294 + 24 * v201 > &v284)
            {
              v270 = &v284 - v294;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v201 + 1, 24);
              v203 = v294;
              v202 = v294 + v270;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v201 + 1, 24);
              v202 = &v284;
              v203 = v294;
            }
          }

          v204 = &v203[24 * v295];
          v205 = *v202;
          *(v204 + 2) = *(v202 + 2);
          *v204 = v205;
          ++v295;
        }
      }

      v192 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v291);
      if (v291)
      {
        mlir::InFlightDiagnostic::report(&v291);
      }

      if (v303 != 1)
      {
        goto LABEL_261;
      }

      if (v302 != &v303)
      {
        free(v302);
      }

      v206 = __p;
      if (__p)
      {
        v207 = v301;
        v208 = __p;
        if (v301 != __p)
        {
          do
          {
            v207 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v207 - 1);
          }

          while (v207 != v206);
          v208 = __p;
        }

        v301 = v206;
        operator delete(v208);
      }

      v209 = v298;
      if (v298)
      {
        v210 = v299;
        v211 = v298;
        if (v299 != v298)
        {
          do
          {
            v213 = *--v210;
            v212 = v213;
            *v210 = 0;
            if (v213)
            {
              operator delete[](v212);
            }
          }

          while (v210 != v209);
          v211 = v298;
        }

        v299 = v209;
        operator delete(v211);
      }

      v193 = v294;
      v246 = v297;
    }

    if (v193 == v246)
    {
      goto LABEL_261;
    }

LABEL_260:
    free(v193);
    goto LABEL_261;
  }

  v156 = 0;
  v157 = v56;
  v158 = 8 * v288;
  while (mlir::AffineMap::getNumDims(v155) == v56)
  {
    ++v156;
    v155 = (v155 + 8);
    v158 -= 8;
    if (!v158)
    {
      v155 = v287;
      v159 = v288;
      goto LABEL_191;
    }
  }

  v277 = "expected reassociation map #";
  v280 = 259;
  mlir::OpState::emitOpError(&v283, &v277, &v291);
  if (v291)
  {
    LODWORD(v284) = 5;
    v285 = v156;
    v214 = &v284;
    v215 = v294;
    if (v295 >= v296)
    {
      if (v294 <= &v284 && v294 + 24 * v295 > &v284)
      {
        v268 = &v284 - v294;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v295 + 1, 24);
        v215 = v294;
        v214 = v294 + v268;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v295 + 1, 24);
        v214 = &v284;
        v215 = v294;
      }
    }

    v216 = &v215[24 * v295];
    v217 = *v214;
    *(v216 + 2) = *(v214 + 2);
    *v216 = v217;
    v218 = ++v295;
    if (v291)
    {
      LODWORD(v284) = 3;
      v285 = " to have size equal to the expanded rank (";
      v286 = 42;
      v219 = &v284;
      v220 = v294;
      if (v218 >= v296)
      {
        if (v294 <= &v284 && v294 + 24 * v218 > &v284)
        {
          v271 = &v284 - v294;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v218 + 1, 24);
          v220 = v294;
          v219 = v294 + v271;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v218 + 1, 24);
          v219 = &v284;
          v220 = v294;
        }
      }

      v221 = &v220[24 * v295];
      v222 = *v219;
      *(v221 + 2) = *(v219 + 2);
      *v221 = v222;
      v223 = ++v295;
      if (v291)
      {
        LODWORD(v284) = 5;
        v285 = v157;
        v224 = &v284;
        v225 = v294;
        if (v223 >= v296)
        {
          if (v294 <= &v284 && v294 + 24 * v223 > &v284)
          {
            v272 = &v284 - v294;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v223 + 1, 24);
            v225 = v294;
            v224 = v294 + v272;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v223 + 1, 24);
            v224 = &v284;
            v225 = v294;
          }
        }

        v226 = &v225[24 * v295];
        v227 = *v224;
        *(v226 + 2) = *(v224 + 2);
        *v226 = v227;
        v228 = ++v295;
        if (v291)
        {
          LODWORD(v284) = 3;
          v285 = "), but it is  ";
          v286 = 14;
          v229 = &v284;
          v230 = v294;
          if (v228 >= v296)
          {
            if (v294 <= &v284 && v294 + 24 * v228 > &v284)
            {
              v273 = &v284 - v294;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v228 + 1, 24);
              v230 = v294;
              v229 = v294 + v273;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v228 + 1, 24);
              v229 = &v284;
              v230 = v294;
            }
          }

          v231 = &v230[24 * v295];
          v232 = *v229;
          *(v231 + 2) = *(v229 + 2);
          *v231 = v232;
          ++v295;
        }
      }
    }
  }

  NumDims = mlir::AffineMap::getNumDims(v155);
  if (v291)
  {
    LODWORD(v284) = 5;
    v285 = NumDims;
    v234 = &v284;
    v235 = v294;
    if (v295 >= v296)
    {
      if (v294 <= &v284 && v294 + 24 * v295 > &v284)
      {
        v269 = &v284 - v294;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v295 + 1, 24);
        v235 = v294;
        v234 = v294 + v269;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v295 + 1, 24);
        v234 = &v284;
        v235 = v294;
      }
    }

    v236 = &v235[24 * v295];
    v237 = *v234;
    *(v236 + 2) = *(v234 + 2);
    *v236 = v237;
    ++v295;
    if (v291)
    {
      mlir::Diagnostic::operator<<(&v292, 46);
    }
  }

  v192 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v291);
  if (v291)
  {
    mlir::InFlightDiagnostic::report(&v291);
  }

  if (v303)
  {
    if (v302 != &v303)
    {
      free(v302);
    }

    v238 = __p;
    if (__p)
    {
      v239 = v301;
      v240 = __p;
      if (v301 != __p)
      {
        do
        {
          v239 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v239 - 1);
        }

        while (v239 != v238);
        v240 = __p;
      }

      v301 = v238;
      operator delete(v240);
    }

    v241 = v298;
    if (v298)
    {
      v242 = v299;
      v243 = v298;
      if (v299 != v298)
      {
        do
        {
          v245 = *--v242;
          v244 = v245;
          *v242 = 0;
          if (v245)
          {
            operator delete[](v244);
          }
        }

        while (v242 != v241);
        v243 = v298;
      }

      v299 = v241;
      operator delete(v243);
    }

    v193 = v294;
    if (v294 != v297)
    {
      goto LABEL_260;
    }
  }

LABEL_261:
  if (v287 != v289)
  {
    free(v287);
  }

  if ((v192 & 1) == 0)
  {
    return 0;
  }

LABEL_157:
  mlir::tensor::CollapseShapeOp::getReassociationExprs(&v275, &v291);
  mlir::getSymbolLessAffineMaps(v291, v292, &v287);
  v160 = v291;
  if (v292)
  {
    v161 = v291 + 32 * v292 - 16;
    v162 = -32 * v292;
    do
    {
      v163 = *(v161 - 2);
      if (v161 != v163)
      {
        free(v163);
      }

      v161 -= 32;
      v162 += 32;
    }

    while (v162);
    v160 = v291;
  }

  if (v160 != &v293)
  {
    free(v160);
  }

  v164 = mlir::tensor::CollapseShapeOp::inferCollapsedType(v54, v287, v288);
  if (mlir::tensor::isSameTypeWithoutEncoding(v52, v164))
  {
    v35 = 1;
  }

  else
  {
    v277 = "expected collapsed type to be ";
    v280 = 259;
    mlir::OpState::emitOpError(&v275, &v277, &v291);
    if (v291)
    {
      v165 = &v284;
      mlir::DiagnosticArgument::DiagnosticArgument(&v284, v164);
      v166 = v294;
      if (v295 >= v296)
      {
        if (v294 <= &v284 && v294 + 24 * v295 > &v284)
        {
          v260 = &v284 - v294;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v295 + 1, 24);
          v166 = v294;
          v165 = v294 + v260;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v295 + 1, 24);
          v165 = &v284;
          v166 = v294;
        }
      }

      v167 = &v166[24 * v295];
      v168 = *v165;
      *(v167 + 2) = *(v165 + 2);
      *v167 = v168;
      v169 = ++v295;
      if (v291)
      {
        LODWORD(v284) = 3;
        v285 = ", but got ";
        v286 = 10;
        v170 = &v284;
        v171 = v294;
        if (v169 >= v296)
        {
          if (v294 <= &v284 && v294 + 24 * v169 > &v284)
          {
            v264 = &v284 - v294;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v169 + 1, 24);
            v171 = v294;
            v170 = v294 + v264;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v169 + 1, 24);
            v170 = &v284;
            v171 = v294;
          }
        }

        v172 = &v171[24 * v295];
        v173 = *v170;
        *(v172 + 2) = *(v170 + 2);
        *v172 = v173;
        ++v295;
        if (v291)
        {
          v174 = &v284;
          mlir::DiagnosticArgument::DiagnosticArgument(&v284, v52);
          v175 = v294;
          if (v295 >= v296)
          {
            if (v294 <= &v284 && v294 + 24 * v295 > &v284)
            {
              v266 = &v284 - v294;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v295 + 1, 24);
              v175 = v294;
              v174 = v294 + v266;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v294, v297, v295 + 1, 24);
              v174 = &v284;
              v175 = v294;
            }
          }

          v176 = &v175[24 * v295];
          v177 = *v174;
          *(v176 + 2) = *(v174 + 2);
          *v176 = v177;
          ++v295;
        }
      }
    }

    v35 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v291);
    if (v291)
    {
      mlir::InFlightDiagnostic::report(&v291);
    }

    if (v303 == 1)
    {
      if (v302 != &v303)
      {
        free(v302);
      }

      v178 = __p;
      if (__p)
      {
        v179 = v301;
        v180 = __p;
        if (v301 != __p)
        {
          do
          {
            v179 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v179 - 1);
          }

          while (v179 != v178);
          v180 = __p;
        }

        v301 = v178;
        operator delete(v180);
      }

      v181 = v298;
      if (v298)
      {
        v182 = v299;
        v183 = v298;
        if (v299 != v298)
        {
          do
          {
            v185 = *--v182;
            v184 = v185;
            *v182 = 0;
            if (v185)
            {
              operator delete[](v184);
            }
          }

          while (v182 != v181);
          v183 = v298;
        }

        v299 = v181;
        operator delete(v183);
      }

      if (v294 != v297)
      {
        free(v294);
      }
    }
  }

  v129 = v287;
  if (v287 != v289)
  {
LABEL_254:
    free(v129);
  }

  return v35;
}

BOOL mlir::tensor::CollapseShapeOp::verify(mlir::tensor::CollapseShapeOp *this)
{
  v208 = *MEMORY[0x1E69E9840];
  v1 = *this;
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
  v179 = v1;
  v186 = v2;
  v187 = v1;
  v185 = v4;
  mlir::ArrayAttr::getValue(&v186);
  v6 = v5;
  mlir::ArrayAttr::getValue(&v185);
  if (v6 >= v7)
  {
    v35 = v7;
    v195 = *(v1 + 16 * ((*(v1 + 44) >> 23) & 1) + 64);
    mlir::ArrayAttr::getValue(&v195);
    if (v35 != v36)
    {
      v191 = "expected collapsed rank (";
      v194 = 259;
      mlir::OpState::emitOpError(&v187, &v191, &v195);
      if (v195)
      {
        LODWORD(v181) = 5;
        v182 = v35;
        v41 = &v181;
        v42 = v198;
        if (v199 >= v200)
        {
          if (v198 <= &v181 && v198 + 24 * v199 > &v181)
          {
            v163 = &v181 - v198;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v199 + 1, 24);
            v42 = v198;
            v41 = (v198 + v163);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v199 + 1, 24);
            v41 = &v181;
            v42 = v198;
          }
        }

        v43 = &v42[24 * v199];
        v44 = *v41;
        *(v43 + 2) = v41[2];
        *v43 = v44;
        v45 = ++v199;
        if (v195)
        {
          LODWORD(v181) = 3;
          v182 = ") to equal the number of reassociation maps (";
          v183 = 45;
          v46 = &v181;
          v47 = v198;
          if (v45 >= v200)
          {
            if (v198 <= &v181 && v198 + 24 * v45 > &v181)
            {
              v167 = &v181 - v198;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v45 + 1, 24);
              v47 = v198;
              v46 = (v198 + v167);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v45 + 1, 24);
              v46 = &v181;
              v47 = v198;
            }
          }

          v48 = &v47[24 * v199];
          v49 = *v46;
          *(v48 + 2) = v46[2];
          *v48 = v49;
          ++v199;
        }
      }

      v188 = *(v187 + 16 * ((*(v187 + 44) >> 23) & 1) + 64);
      mlir::ArrayAttr::getValue(&v188);
      if (v195)
      {
        LODWORD(v181) = 5;
        v182 = v50;
        v51 = &v181;
        v52 = v198;
        if (v199 >= v200)
        {
          if (v198 <= &v181 && v198 + 24 * v199 > &v181)
          {
            v164 = &v181 - v198;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v199 + 1, 24);
            v52 = v198;
            v51 = (v198 + v164);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v199 + 1, 24);
            v51 = &v181;
            v52 = v198;
          }
        }

        v53 = &v52[24 * v199];
        v54 = *v51;
        *(v53 + 2) = v51[2];
        *v53 = v54;
        v55 = ++v199;
        if (v195)
        {
          LODWORD(v181) = 3;
          v182 = ").";
          v183 = 2;
          v56 = &v181;
          v57 = v198;
          if (v55 >= v200)
          {
            if (v198 <= &v181 && v198 + 24 * v55 > &v181)
            {
              v168 = &v181 - v198;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v55 + 1, 24);
              v57 = v198;
              v56 = (v198 + v168);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v55 + 1, 24);
              v56 = &v181;
              v57 = v198;
            }
          }

          v58 = &v57[24 * v199];
          v59 = *v56;
          *(v58 + 2) = v56[2];
          *v58 = v59;
          ++v199;
        }
      }

      v60 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v195);
      if (v195)
      {
        mlir::InFlightDiagnostic::report(&v195);
      }

      if (v207 == 1)
      {
        if (v206 != &v207)
        {
          free(v206);
        }

        v61 = __p;
        if (__p)
        {
          v62 = v205;
          v63 = __p;
          if (v205 != __p)
          {
            do
            {
              v62 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v62 - 1);
            }

            while (v62 != v61);
            v63 = __p;
          }

          v205 = v61;
          operator delete(v63);
        }

        v64 = v202;
        if (v202)
        {
          v65 = v203;
          v66 = v202;
          if (v203 != v202)
          {
            do
            {
              v68 = *--v65;
              v67 = v68;
              *v65 = 0;
              if (v68)
              {
                operator delete[](v67);
              }
            }

            while (v65 != v64);
            v66 = v202;
          }

          v203 = v64;
          operator delete(v66);
        }

        if (v198 != v201)
        {
          free(v198);
        }
      }

      if (v60)
      {
        goto LABEL_97;
      }

      return 0;
    }

    mlir::tensor::CollapseShapeOp::getReassociationExprs(&v187, &v195);
    mlir::getSymbolLessAffineMaps(v195, v196, &v191);
    v37 = v195;
    if (v196)
    {
      v38 = v195 + 32 * v196 - 16;
      v39 = -32 * v196;
      do
      {
        v40 = *(v38 - 2);
        if (v38 != v40)
        {
          free(v40);
        }

        v38 -= 32;
        v39 += 32;
      }

      while (v39);
      v37 = v195;
    }

    if (v37 != &v197)
    {
      free(v37);
    }

    v69 = v191;
    if (v192)
    {
      v70 = 0;
      v71 = v6;
      v72 = 8 * v192;
      while (mlir::AffineMap::getNumDims(v69) == v6)
      {
        ++v70;
        v69 = (v69 + 8);
        v72 -= 8;
        if (!v72)
        {
          v180 = 0;
          if (mlir::isReassociationValid(v191, v192, &v180))
          {
            goto LABEL_131;
          }

          goto LABEL_71;
        }
      }

      v181 = "expected reassociation map #";
      v184 = 259;
      mlir::OpState::emitOpError(&v187, &v181, &v195);
      if (v195)
      {
        LODWORD(v188) = 5;
        v189 = v70;
        v128 = &v188;
        v129 = v198;
        if (v199 >= v200)
        {
          if (v198 <= &v188 && v198 + 24 * v199 > &v188)
          {
            v173 = &v188 - v198;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v199 + 1, 24);
            v129 = v198;
            v128 = v198 + v173;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v199 + 1, 24);
            v128 = &v188;
            v129 = v198;
          }
        }

        v130 = &v129[24 * v199];
        v131 = *v128;
        *(v130 + 2) = *(v128 + 2);
        *v130 = v131;
        v132 = ++v199;
        if (v195)
        {
          LODWORD(v188) = 3;
          v189 = " to have size equal to the expanded rank (";
          v190 = 42;
          v133 = &v188;
          v134 = v198;
          if (v132 >= v200)
          {
            if (v198 <= &v188 && v198 + 24 * v132 > &v188)
            {
              v176 = &v188 - v198;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v132 + 1, 24);
              v134 = v198;
              v133 = v198 + v176;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v132 + 1, 24);
              v133 = &v188;
              v134 = v198;
            }
          }

          v135 = &v134[24 * v199];
          v136 = *v133;
          *(v135 + 2) = *(v133 + 2);
          *v135 = v136;
          v137 = ++v199;
          if (v195)
          {
            LODWORD(v188) = 5;
            v189 = v71;
            v138 = &v188;
            v139 = v198;
            if (v137 >= v200)
            {
              if (v198 <= &v188 && v198 + 24 * v137 > &v188)
              {
                v177 = &v188 - v198;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v137 + 1, 24);
                v139 = v198;
                v138 = v198 + v177;
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v137 + 1, 24);
                v138 = &v188;
                v139 = v198;
              }
            }

            v140 = &v139[24 * v199];
            v141 = *v138;
            *(v140 + 2) = *(v138 + 2);
            *v140 = v141;
            v142 = ++v199;
            if (v195)
            {
              LODWORD(v188) = 3;
              v189 = "), but it is  ";
              v190 = 14;
              v143 = &v188;
              v144 = v198;
              if (v142 >= v200)
              {
                if (v198 <= &v188 && v198 + 24 * v142 > &v188)
                {
                  v178 = &v188 - v198;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v142 + 1, 24);
                  v144 = v198;
                  v143 = v198 + v178;
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v142 + 1, 24);
                  v143 = &v188;
                  v144 = v198;
                }
              }

              v145 = &v144[24 * v199];
              v146 = *v143;
              *(v145 + 2) = *(v143 + 2);
              *v145 = v146;
              ++v199;
            }
          }
        }
      }

      NumDims = mlir::AffineMap::getNumDims(v69);
      if (v195)
      {
        LODWORD(v188) = 5;
        v189 = NumDims;
        v148 = &v188;
        v149 = v198;
        if (v199 >= v200)
        {
          if (v198 <= &v188 && v198 + 24 * v199 > &v188)
          {
            v174 = &v188 - v198;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v199 + 1, 24);
            v149 = v198;
            v148 = v198 + v174;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v199 + 1, 24);
            v148 = &v188;
            v149 = v198;
          }
        }

        v150 = &v149[24 * v199];
        v151 = *v148;
        *(v150 + 2) = *(v148 + 2);
        *v150 = v151;
        ++v199;
        if (v195)
        {
          mlir::Diagnostic::operator<<(&v196, 46);
        }
      }

      v82 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v195);
      if (v195)
      {
        mlir::InFlightDiagnostic::report(&v195);
      }

      if (v207)
      {
        if (v206 != &v207)
        {
          free(v206);
        }

        v152 = __p;
        if (__p)
        {
          v153 = v205;
          v154 = __p;
          if (v205 != __p)
          {
            do
            {
              v153 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v153 - 1);
            }

            while (v153 != v152);
            v154 = __p;
          }

          v205 = v152;
          operator delete(v154);
        }

        v155 = v202;
        if (v202)
        {
          v156 = v203;
          v157 = v202;
          if (v203 != v202)
          {
            do
            {
              v159 = *--v156;
              v158 = v159;
              *v156 = 0;
              if (v159)
              {
                operator delete[](v158);
              }
            }

            while (v156 != v155);
            v157 = v202;
          }

          v203 = v155;
          operator delete(v157);
        }

        v124 = v198;
        if (v198 != v201)
        {
          goto LABEL_167;
        }
      }

LABEL_168:
      if (v191 != v193)
      {
        free(v191);
      }

      if (v82)
      {
        goto LABEL_97;
      }

      return 0;
    }

    v180 = 0;
    if (mlir::isReassociationValid(v191, 0, &v180))
    {
LABEL_131:
      v181 = &v187;
      Value = mlir::ArrayAttr::getValue(&v185);
      v120 = v119;
      v121 = mlir::ArrayAttr::getValue(&v186);
      v123 = v122;
      mlir::memref::CollapseShapeOp::getReassociationIndices(&v187, &v195);
      v82 = mlir::reshapeLikeShapesAreCompatible(llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>::callback_fn<llvm::LogicalResult mlir::verifyReshapeLikeTypes<mlir::tensor::CollapseShapeOp,mlir::RankedTensorType>(mlir::tensor::CollapseShapeOp,mlir::RankedTensorType,mlir::RankedTensorType,BOOL)::{lambda(llvm::Twine const&)#1}>, &v181, Value, v120, v121, v123, v195, v196);
      v124 = v195;
      if (v196)
      {
        v125 = v195 + 32 * v196 - 16;
        v126 = -32 * v196;
        do
        {
          v127 = *(v125 - 2);
          if (v125 != v127)
          {
            free(v127);
          }

          v125 -= 32;
          v126 += 32;
        }

        while (v126);
        v124 = v195;
      }

      if (v124 == &v197)
      {
        goto LABEL_168;
      }
    }

    else
    {
LABEL_71:
      v181 = "expected reassociation map #";
      v184 = 259;
      mlir::OpState::emitOpError(&v187, &v181, &v195);
      if (v195)
      {
        LODWORD(v188) = 2;
        v189 = v180;
        v73 = &v188;
        v74 = v198;
        if (v199 >= v200)
        {
          if (v198 <= &v188 && v198 + 24 * v199 > &v188)
          {
            v172 = &v188 - v198;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v199 + 1, 24);
            v74 = v198;
            v73 = v198 + v172;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v199 + 1, 24);
            v73 = &v188;
            v74 = v198;
          }
        }

        v75 = &v74[24 * v199];
        v76 = *v73;
        *(v75 + 2) = *(v73 + 2);
        *v75 = v76;
        v77 = ++v199;
        if (v195)
        {
          LODWORD(v188) = 3;
          v189 = " to be valid and contiguous.";
          v190 = 28;
          v78 = &v188;
          v79 = v198;
          if (v77 >= v200)
          {
            if (v198 <= &v188 && v198 + 24 * v77 > &v188)
            {
              v175 = &v188 - v198;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v77 + 1, 24);
              v79 = v198;
              v78 = v198 + v175;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v77 + 1, 24);
              v78 = &v188;
              v79 = v198;
            }
          }

          v80 = &v79[24 * v199];
          v81 = *v78;
          *(v80 + 2) = *(v78 + 2);
          *v80 = v81;
          ++v199;
        }
      }

      v82 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v195);
      if (v195)
      {
        mlir::InFlightDiagnostic::report(&v195);
      }

      if (v207 != 1)
      {
        goto LABEL_168;
      }

      if (v206 != &v207)
      {
        free(v206);
      }

      v83 = __p;
      if (__p)
      {
        v84 = v205;
        v85 = __p;
        if (v205 != __p)
        {
          do
          {
            v84 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v84 - 1);
          }

          while (v84 != v83);
          v85 = __p;
        }

        v205 = v83;
        operator delete(v85);
      }

      v86 = v202;
      if (v202)
      {
        v87 = v203;
        v88 = v202;
        if (v203 != v202)
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
          v88 = v202;
        }

        v203 = v86;
        operator delete(v88);
      }

      v124 = v198;
      if (v198 == v201)
      {
        goto LABEL_168;
      }
    }

LABEL_167:
    free(v124);
    goto LABEL_168;
  }

  v191 = "expected the expanded type, ";
  v194 = 259;
  mlir::OpState::emitOpError(&v187, &v191, &v195);
  if (v195)
  {
    v8 = &v181;
    mlir::DiagnosticArgument::DiagnosticArgument(&v181, v186);
    v9 = v198;
    if (v199 >= v200)
    {
      if (v198 <= &v181 && v198 + 24 * v199 > &v181)
      {
        v161 = &v181 - v198;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v199 + 1, 24);
        v9 = v198;
        v8 = (v198 + v161);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v199 + 1, 24);
        v8 = &v181;
        v9 = v198;
      }
    }

    v10 = &v9[24 * v199];
    v11 = *v8;
    *(v10 + 2) = v8[2];
    *v10 = v11;
    v12 = ++v199;
    if (v195)
    {
      LODWORD(v181) = 3;
      v182 = " to have a higher (or same) rank ";
      v183 = 33;
      v13 = &v181;
      v14 = v198;
      if (v12 >= v200)
      {
        if (v198 <= &v181 && v198 + 24 * v12 > &v181)
        {
          v162 = &v181 - v198;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v12 + 1, 24);
          v14 = v198;
          v13 = (v198 + v162);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v12 + 1, 24);
          v13 = &v181;
          v14 = v198;
        }
      }

      v15 = &v14[24 * v199];
      v16 = *v13;
      *(v15 + 2) = v13[2];
      *v15 = v16;
      v17 = ++v199;
      if (v195)
      {
        LODWORD(v181) = 3;
        v182 = "than the collapsed type, ";
        v183 = 25;
        v18 = &v181;
        v19 = v198;
        if (v17 >= v200)
        {
          if (v198 <= &v181 && v198 + 24 * v17 > &v181)
          {
            v166 = &v181 - v198;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v17 + 1, 24);
            v19 = v198;
            v18 = (v198 + v166);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v17 + 1, 24);
            v18 = &v181;
            v19 = v198;
          }
        }

        v20 = &v19[24 * v199];
        v21 = *v18;
        *(v20 + 2) = v18[2];
        *v20 = v21;
        ++v199;
        if (v195)
        {
          v22 = &v181;
          mlir::DiagnosticArgument::DiagnosticArgument(&v181, v185);
          v23 = v198;
          if (v199 >= v200)
          {
            if (v198 <= &v181 && v198 + 24 * v199 > &v181)
            {
              v170 = &v181 - v198;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v199 + 1, 24);
              v23 = v198;
              v22 = (v198 + v170);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v199 + 1, 24);
              v22 = &v181;
              v23 = v198;
            }
          }

          v24 = &v23[24 * v199];
          v25 = *v22;
          *(v24 + 2) = v22[2];
          *v24 = v25;
          ++v199;
          if (v195)
          {
            mlir::Diagnostic::operator<<(&v196, 46);
          }
        }
      }
    }
  }

  v26 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v195);
  if (v195)
  {
    mlir::InFlightDiagnostic::report(&v195);
  }

  if (v207 == 1)
  {
    if (v206 != &v207)
    {
      free(v206);
    }

    v27 = __p;
    if (__p)
    {
      v28 = v205;
      v29 = __p;
      if (v205 != __p)
      {
        do
        {
          v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
        }

        while (v28 != v27);
        v29 = __p;
      }

      v205 = v27;
      operator delete(v29);
    }

    v30 = v202;
    if (v202)
    {
      v31 = v203;
      v32 = v202;
      if (v203 != v202)
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
        v32 = v202;
      }

      v203 = v30;
      operator delete(v32);
    }

    if (v198 != v201)
    {
      free(v198);
    }
  }

  if (!v26)
  {
    return 0;
  }

LABEL_97:
  mlir::tensor::CollapseShapeOp::getReassociationExprs(&v179, &v195);
  mlir::getSymbolLessAffineMaps(v195, v196, &v191);
  v91 = v195;
  if (v196)
  {
    v92 = v195 + 32 * v196 - 16;
    v93 = -32 * v196;
    do
    {
      v94 = *(v92 - 2);
      if (v92 != v94)
      {
        free(v94);
      }

      v92 -= 32;
      v93 += 32;
    }

    while (v93);
    v91 = v195;
  }

  if (v91 != &v197)
  {
    free(v91);
  }

  v95 = mlir::tensor::CollapseShapeOp::inferCollapsedType(v2, v191, v192);
  if (mlir::tensor::isSameTypeWithoutEncoding(v4, v95))
  {
    v96 = 1;
  }

  else
  {
    v181 = "expected collapsed type to be ";
    v184 = 259;
    mlir::OpState::emitOpError(&v179, &v181, &v195);
    if (v195)
    {
      v97 = &v188;
      mlir::DiagnosticArgument::DiagnosticArgument(&v188, v95);
      v98 = v198;
      if (v199 >= v200)
      {
        if (v198 <= &v188 && v198 + 24 * v199 > &v188)
        {
          v165 = &v188 - v198;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v199 + 1, 24);
          v98 = v198;
          v97 = v198 + v165;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v199 + 1, 24);
          v97 = &v188;
          v98 = v198;
        }
      }

      v99 = &v98[24 * v199];
      v100 = *v97;
      *(v99 + 2) = *(v97 + 2);
      *v99 = v100;
      v101 = ++v199;
      if (v195)
      {
        LODWORD(v188) = 3;
        v189 = ", but got ";
        v190 = 10;
        v102 = &v188;
        v103 = v198;
        if (v101 >= v200)
        {
          if (v198 <= &v188 && v198 + 24 * v101 > &v188)
          {
            v169 = &v188 - v198;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v101 + 1, 24);
            v103 = v198;
            v102 = v198 + v169;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v101 + 1, 24);
            v102 = &v188;
            v103 = v198;
          }
        }

        v104 = &v103[24 * v199];
        v105 = *v102;
        *(v104 + 2) = *(v102 + 2);
        *v104 = v105;
        ++v199;
        if (v195)
        {
          v106 = &v188;
          mlir::DiagnosticArgument::DiagnosticArgument(&v188, v4);
          v107 = v198;
          if (v199 >= v200)
          {
            if (v198 <= &v188 && v198 + 24 * v199 > &v188)
            {
              v171 = &v188 - v198;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v199 + 1, 24);
              v107 = v198;
              v106 = v198 + v171;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v198, v201, v199 + 1, 24);
              v106 = &v188;
              v107 = v198;
            }
          }

          v108 = &v107[24 * v199];
          v109 = *v106;
          *(v108 + 2) = *(v106 + 2);
          *v108 = v109;
          ++v199;
        }
      }
    }

    v96 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v195);
    if (v195)
    {
      mlir::InFlightDiagnostic::report(&v195);
    }

    if (v207 == 1)
    {
      if (v206 != &v207)
      {
        free(v206);
      }

      v110 = __p;
      if (__p)
      {
        v111 = v205;
        v112 = __p;
        if (v205 != __p)
        {
          do
          {
            v111 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v111 - 1);
          }

          while (v111 != v110);
          v112 = __p;
        }

        v205 = v110;
        operator delete(v112);
      }

      v113 = v202;
      if (v202)
      {
        v114 = v203;
        v115 = v202;
        if (v203 != v202)
        {
          do
          {
            v117 = *--v114;
            v116 = v117;
            *v114 = 0;
            if (v117)
            {
              operator delete[](v116);
            }
          }

          while (v114 != v113);
          v115 = v202;
        }

        v203 = v113;
        operator delete(v115);
      }

      if (v198 != v201)
      {
        free(v198);
      }
    }
  }

  if (v191 != v193)
  {
    free(v191);
  }

  return v96;
}

void mlir::tensor::ExpandShapeOp::getCanonicalizationPatterns(void *a1, uint64_t a2)
{
  v108 = a2;
  mlir::RewritePatternSet::addImpl<mlir::ComposeReassociativeReshapeOps<mlir::tensor::ExpandShapeOp,(mlir::ReshapeOpKind)0>,mlir::MLIRContext *&>(a1, 0, 0, &v108);
  mlir::RewritePatternSet::addImpl<mlir::ComposeExpandOfCollapseOp<mlir::tensor::ExpandShapeOp,mlir::tensor::CollapseShapeOp>,mlir::MLIRContext *&>(a1, 0, 0, &v108);
  v3 = v108;
  v4 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v109, 1);
  mlir::Pattern::Pattern((v4 + 2), "tensor.expand_shape", 19, v109, v3, 0, 0);
  *v4 = &unk_1F5B09A38;
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

  v109 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::FoldReshapeWithConstant<mlir::tensor::ExpandShapeOp>]";
  v110 = 125;
  v9 = llvm::StringRef::find(&v109, "DesiredTypeName = ", 0x12uLL, 0);
  if (v110 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v110;
  }

  v11 = &v109[v10];
  v12 = v110 - v10;
  if (v110 - v10 >= 0x12)
  {
    v13 = 18;
  }

  else
  {
    v13 = v110 - v10;
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
    goto LABEL_132;
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
      goto LABEL_133;
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
  v24 = v108;
  v25 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v109, 1);
  mlir::Pattern::Pattern((v25 + 2), "tensor.expand_shape", 19, v109, v24, 0, 0);
  *v25 = &unk_1F5B09AA8;
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

  v109 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::FoldReshapeWithSplat<mlir::tensor::ExpandShapeOp>]";
  v110 = 122;
  v30 = llvm::StringRef::find(&v109, "DesiredTypeName = ", 0x12uLL, 0);
  if (v110 >= v30)
  {
    v31 = v30;
  }

  else
  {
    v31 = v110;
  }

  v32 = &v109[v31];
  v33 = v110 - v31;
  if (v110 - v31 >= 0x12)
  {
    v34 = 18;
  }

  else
  {
    v34 = v110 - v31;
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
    goto LABEL_132;
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
    if (v42 >> 61)
    {
      goto LABEL_133;
    }

    v43 = operator new(8 * v42);
  }

  else
  {
    v43 = 0;
  }

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
  v45 = v108;
  v46 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v109, 1);
  mlir::Pattern::Pattern((v46 + 2), "tensor.expand_shape", 19, v109, v45, 0, 0);
  *v46 = &unk_1F5B09B18;
  if (*(v46 + 9))
  {
    v47 = v46[22];
    if (v47 <= v46[23])
    {
      goto LABEL_55;
    }

LABEL_66:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v46 + 20), (v46 + 24), v47, 16);
    v46[22] = v46[22];
    v49 = a1[2];
    v48 = a1[3];
    if (v49 < v48)
    {
      goto LABEL_56;
    }

    goto LABEL_67;
  }

  v109 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::FoldReshapeWithFromElements<mlir::tensor::ExpandShapeOp>]";
  v110 = 129;
  v51 = llvm::StringRef::find(&v109, "DesiredTypeName = ", 0x12uLL, 0);
  if (v110 >= v51)
  {
    v52 = v51;
  }

  else
  {
    v52 = v110;
  }

  v53 = &v109[v52];
  v54 = v110 - v52;
  if (v110 - v52 >= 0x12)
  {
    v55 = 18;
  }

  else
  {
    v55 = v110 - v52;
  }

  v56 = &v53[v55];
  v57 = v54 - v55;
  if (v57 >= v57 - 1)
  {
    --v57;
  }

  *(v46 + 8) = v56;
  *(v46 + 9) = v57;
  v47 = v46[22];
  if (v47 > v46[23])
  {
    goto LABEL_66;
  }

LABEL_55:
  v46[22] = v47;
  v49 = a1[2];
  v48 = a1[3];
  if (v49 < v48)
  {
LABEL_56:
    *v49 = v46;
    v50 = v49 + 8;
    goto LABEL_79;
  }

LABEL_67:
  v58 = a1[1];
  v59 = v49 - v58;
  v60 = (v49 - v58) >> 3;
  v61 = v60 + 1;
  if ((v60 + 1) >> 61)
  {
    goto LABEL_132;
  }

  v62 = v48 - v58;
  if (v62 >> 2 > v61)
  {
    v61 = v62 >> 2;
  }

  if (v62 >= 0x7FFFFFFFFFFFFFF8)
  {
    v63 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v63 = v61;
  }

  if (v63)
  {
    if (v63 >> 61)
    {
      goto LABEL_133;
    }

    v64 = operator new(8 * v63);
  }

  else
  {
    v64 = 0;
  }

  v65 = &v64[8 * v60];
  *v65 = v46;
  v50 = v65 + 8;
  memcpy(v64, v58, v59);
  a1[1] = v64;
  a1[2] = v50;
  a1[3] = &v64[8 * v63];
  if (v58)
  {
    operator delete(v58);
  }

LABEL_79:
  a1[2] = v50;
  v66 = v108;
  v67 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v109, 1);
  mlir::Pattern::Pattern((v67 + 2), "tensor.dim", 10, v109, v66, 0, 0);
  *v67 = &unk_1F5B09B88;
  if (*(v67 + 9))
  {
    v68 = v67[22];
    if (v68 <= v67[23])
    {
      goto LABEL_81;
    }

LABEL_92:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v67 + 20), (v67 + 24), v68, 16);
    v67[22] = v67[22];
    v70 = a1[2];
    v69 = a1[3];
    if (v70 < v69)
    {
      goto LABEL_82;
    }

    goto LABEL_93;
  }

  v109 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::FoldDimOfExpandShape]";
  v110 = 93;
  v72 = llvm::StringRef::find(&v109, "DesiredTypeName = ", 0x12uLL, 0);
  if (v110 >= v72)
  {
    v73 = v72;
  }

  else
  {
    v73 = v110;
  }

  v74 = &v109[v73];
  v75 = v110 - v73;
  if (v110 - v73 >= 0x12)
  {
    v76 = 18;
  }

  else
  {
    v76 = v110 - v73;
  }

  v77 = &v74[v76];
  v78 = v75 - v76;
  if (v78 >= v78 - 1)
  {
    --v78;
  }

  *(v67 + 8) = v77;
  *(v67 + 9) = v78;
  v68 = v67[22];
  if (v68 > v67[23])
  {
    goto LABEL_92;
  }

LABEL_81:
  v67[22] = v68;
  v70 = a1[2];
  v69 = a1[3];
  if (v70 < v69)
  {
LABEL_82:
    *v70 = v67;
    v71 = v70 + 8;
    goto LABEL_105;
  }

LABEL_93:
  v79 = a1[1];
  v80 = v70 - v79;
  v81 = (v70 - v79) >> 3;
  v82 = v81 + 1;
  if ((v81 + 1) >> 61)
  {
    goto LABEL_132;
  }

  v83 = v69 - v79;
  if (v83 >> 2 > v82)
  {
    v82 = v83 >> 2;
  }

  if (v83 >= 0x7FFFFFFFFFFFFFF8)
  {
    v84 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v84 = v82;
  }

  if (v84)
  {
    if (v84 >> 61)
    {
      goto LABEL_133;
    }

    v85 = operator new(8 * v84);
  }

  else
  {
    v85 = 0;
  }

  v86 = &v85[8 * v81];
  *v86 = v67;
  v71 = v86 + 8;
  memcpy(v85, v79, v80);
  a1[1] = v85;
  a1[2] = v71;
  a1[3] = &v85[8 * v84];
  if (v79)
  {
    operator delete(v79);
  }

LABEL_105:
  a1[2] = v71;
  v87 = v108;
  v88 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v109, 1);
  mlir::Pattern::Pattern((v88 + 2), "tensor.dim", 10, v109, v87, 0, 0);
  *v88 = &unk_1F5B09BF8;
  if (*(v88 + 9))
  {
    v89 = v88[22];
    if (v89 <= v88[23])
    {
      goto LABEL_107;
    }

LABEL_118:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v88 + 20), (v88 + 24), v89, 16);
    v88[22] = v88[22];
    v91 = a1[2];
    v90 = a1[3];
    if (v91 < v90)
    {
      goto LABEL_108;
    }

    goto LABEL_119;
  }

  v109 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::FoldDimOfCollapseShape]";
  v110 = 95;
  v93 = llvm::StringRef::find(&v109, "DesiredTypeName = ", 0x12uLL, 0);
  if (v110 >= v93)
  {
    v94 = v93;
  }

  else
  {
    v94 = v110;
  }

  v95 = &v109[v94];
  v96 = v110 - v94;
  if (v110 - v94 >= 0x12)
  {
    v97 = 18;
  }

  else
  {
    v97 = v110 - v94;
  }

  v98 = &v95[v97];
  v99 = v96 - v97;
  if (v99 >= v99 - 1)
  {
    --v99;
  }

  *(v88 + 8) = v98;
  *(v88 + 9) = v99;
  v89 = v88[22];
  if (v89 > v88[23])
  {
    goto LABEL_118;
  }

LABEL_107:
  v88[22] = v89;
  v91 = a1[2];
  v90 = a1[3];
  if (v91 < v90)
  {
LABEL_108:
    *v91 = v88;
    v92 = v91 + 8;
    goto LABEL_131;
  }

LABEL_119:
  v100 = a1[1];
  v101 = v91 - v100;
  v102 = (v91 - v100) >> 3;
  v103 = v102 + 1;
  if ((v102 + 1) >> 61)
  {
LABEL_132:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v104 = v90 - v100;
  if (v104 >> 2 > v103)
  {
    v103 = v104 >> 2;
  }

  if (v104 >= 0x7FFFFFFFFFFFFFF8)
  {
    v105 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v105 = v103;
  }

  if (v105)
  {
    if (!(v105 >> 61))
    {
      v106 = operator new(8 * v105);
      goto LABEL_129;
    }

LABEL_133:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v106 = 0;
LABEL_129:
  v107 = &v106[8 * v102];
  *v107 = v88;
  v92 = v107 + 8;
  memcpy(v106, v100, v101);
  a1[1] = v106;
  a1[2] = v92;
  a1[3] = &v106[8 * v105];
  if (v100)
  {
    operator delete(v100);
  }

LABEL_131:
  a1[2] = v92;
}

void mlir::tensor::CollapseShapeOp::getCanonicalizationPatterns(void *a1, uint64_t a2)
{
  v87 = a2;
  mlir::RewritePatternSet::addImpl<mlir::ComposeReassociativeReshapeOps<mlir::tensor::CollapseShapeOp,(mlir::ReshapeOpKind)1>,mlir::MLIRContext *&>(a1, 0, 0, &v87);
  mlir::RewritePatternSet::addImpl<mlir::ComposeCollapseOfExpandOp<mlir::tensor::CollapseShapeOp,mlir::tensor::ExpandShapeOp,mlir::tensor::CastOp,mlir::tensor::DimOp,mlir::RankedTensorType>,mlir::MLIRContext *&>(a1, 0, 0, &v87);
  v3 = v87;
  v4 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v88, 1);
  mlir::Pattern::Pattern((v4 + 2), "tensor.collapse_shape", 21, v88, v3, 0, 0);
  *v4 = &unk_1F5B09D78;
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

  v88 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::FoldReshapeWithConstant<mlir::tensor::CollapseShapeOp>]";
  v89 = 127;
  v9 = llvm::StringRef::find(&v88, "DesiredTypeName = ", 0x12uLL, 0);
  if (v89 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v89;
  }

  v11 = &v88[v10];
  v12 = v89 - v10;
  if (v89 - v10 >= 0x12)
  {
    v13 = 18;
  }

  else
  {
    v13 = v89 - v10;
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
    goto LABEL_106;
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
      goto LABEL_107;
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
  v24 = v87;
  v25 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v88, 1);
  mlir::Pattern::Pattern((v25 + 2), "tensor.collapse_shape", 21, v88, v24, 0, 0);
  *v25 = &unk_1F5B09DE8;
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

  v88 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::FoldReshapeWithSplat<mlir::tensor::CollapseShapeOp>]";
  v89 = 124;
  v30 = llvm::StringRef::find(&v88, "DesiredTypeName = ", 0x12uLL, 0);
  if (v89 >= v30)
  {
    v31 = v30;
  }

  else
  {
    v31 = v89;
  }

  v32 = &v88[v31];
  v33 = v89 - v31;
  if (v89 - v31 >= 0x12)
  {
    v34 = 18;
  }

  else
  {
    v34 = v89 - v31;
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
    goto LABEL_106;
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
    if (v42 >> 61)
    {
      goto LABEL_107;
    }

    v43 = operator new(8 * v42);
  }

  else
  {
    v43 = 0;
  }

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
  v45 = v87;
  v46 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v88, 1);
  mlir::Pattern::Pattern((v46 + 2), "tensor.collapse_shape", 21, v88, v45, 0, 0);
  *v46 = &unk_1F5B09E58;
  if (*(v46 + 9))
  {
    v47 = v46[22];
    if (v47 <= v46[23])
    {
      goto LABEL_55;
    }

LABEL_66:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v46 + 20), (v46 + 24), v47, 16);
    v46[22] = v46[22];
    v49 = a1[2];
    v48 = a1[3];
    if (v49 < v48)
    {
      goto LABEL_56;
    }

    goto LABEL_67;
  }

  v88 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::FoldReshapeWithFromElements<mlir::tensor::CollapseShapeOp>]";
  v89 = 131;
  v51 = llvm::StringRef::find(&v88, "DesiredTypeName = ", 0x12uLL, 0);
  if (v89 >= v51)
  {
    v52 = v51;
  }

  else
  {
    v52 = v89;
  }

  v53 = &v88[v52];
  v54 = v89 - v52;
  if (v89 - v52 >= 0x12)
  {
    v55 = 18;
  }

  else
  {
    v55 = v89 - v52;
  }

  v56 = &v53[v55];
  v57 = v54 - v55;
  if (v57 >= v57 - 1)
  {
    --v57;
  }

  *(v46 + 8) = v56;
  *(v46 + 9) = v57;
  v47 = v46[22];
  if (v47 > v46[23])
  {
    goto LABEL_66;
  }

LABEL_55:
  v46[22] = v47;
  v49 = a1[2];
  v48 = a1[3];
  if (v49 < v48)
  {
LABEL_56:
    *v49 = v46;
    v50 = v49 + 8;
    goto LABEL_79;
  }

LABEL_67:
  v58 = a1[1];
  v59 = v49 - v58;
  v60 = (v49 - v58) >> 3;
  v61 = v60 + 1;
  if ((v60 + 1) >> 61)
  {
    goto LABEL_106;
  }

  v62 = v48 - v58;
  if (v62 >> 2 > v61)
  {
    v61 = v62 >> 2;
  }

  if (v62 >= 0x7FFFFFFFFFFFFFF8)
  {
    v63 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v63 = v61;
  }

  if (v63)
  {
    if (v63 >> 61)
    {
      goto LABEL_107;
    }

    v64 = operator new(8 * v63);
  }

  else
  {
    v64 = 0;
  }

  v65 = &v64[8 * v60];
  *v65 = v46;
  v50 = v65 + 8;
  memcpy(v64, v58, v59);
  a1[1] = v64;
  a1[2] = v50;
  a1[3] = &v64[8 * v63];
  if (v58)
  {
    operator delete(v58);
  }

LABEL_79:
  a1[2] = v50;
  v66 = v87;
  v67 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v88, 1);
  mlir::Pattern::Pattern((v67 + 2), "tensor.collapse_shape", 21, v88, v66, 0, 0);
  *v67 = &unk_1F5B09EC8;
  if (*(v67 + 9))
  {
    v68 = v67[22];
    if (v68 <= v67[23])
    {
      goto LABEL_81;
    }

LABEL_92:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v67 + 20), (v67 + 24), v68, 16);
    v67[22] = v67[22];
    v70 = a1[2];
    v69 = a1[3];
    if (v70 < v69)
    {
      goto LABEL_82;
    }

    goto LABEL_93;
  }

  v88 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::FoldCollapseOfCastOp]";
  v89 = 93;
  v72 = llvm::StringRef::find(&v88, "DesiredTypeName = ", 0x12uLL, 0);
  if (v89 >= v72)
  {
    v73 = v72;
  }

  else
  {
    v73 = v89;
  }

  v74 = &v88[v73];
  v75 = v89 - v73;
  if (v89 - v73 >= 0x12)
  {
    v76 = 18;
  }

  else
  {
    v76 = v89 - v73;
  }

  v77 = &v74[v76];
  v78 = v75 - v76;
  if (v78 >= v78 - 1)
  {
    --v78;
  }

  *(v67 + 8) = v77;
  *(v67 + 9) = v78;
  v68 = v67[22];
  if (v68 > v67[23])
  {
    goto LABEL_92;
  }

LABEL_81:
  v67[22] = v68;
  v70 = a1[2];
  v69 = a1[3];
  if (v70 < v69)
  {
LABEL_82:
    *v70 = v67;
    v71 = v70 + 8;
    goto LABEL_105;
  }

LABEL_93:
  v79 = a1[1];
  v80 = v70 - v79;
  v81 = (v70 - v79) >> 3;
  v82 = v81 + 1;
  if ((v81 + 1) >> 61)
  {
LABEL_106:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v83 = v69 - v79;
  if (v83 >> 2 > v82)
  {
    v82 = v83 >> 2;
  }

  if (v83 >= 0x7FFFFFFFFFFFFFF8)
  {
    v84 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v84 = v82;
  }

  if (v84)
  {
    if (!(v84 >> 61))
    {
      v85 = operator new(8 * v84);
      goto LABEL_103;
    }

LABEL_107:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v85 = 0;
LABEL_103:
  v86 = &v85[8 * v81];
  *v86 = v67;
  v71 = v86 + 8;
  memcpy(v85, v79, v80);
  a1[1] = v85;
  a1[2] = v71;
  a1[3] = &v85[8 * v84];
  if (v79)
  {
    operator delete(v79);
  }

LABEL_105:
  a1[2] = v71;
}

uint64_t mlir::tensor::ExpandShapeOp::fold(uint64_t *a1, uint64_t a2)
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
  v23 = v22 == &mlir::detail::TypeIDResolver<mlir::tensor::CollapseShapeOp,void>::id;
  v24 = v22 == &mlir::detail::TypeIDResolver<mlir::tensor::CollapseShapeOp,void>::id ? v21 : 0;
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

uint64_t mlir::tensor::CollapseShapeOp::fold(uint64_t *a1, uint64_t a2)
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
  v23 = v22 == &mlir::detail::TypeIDResolver<mlir::tensor::ExpandShapeOp,void>::id;
  v24 = v22 == &mlir::detail::TypeIDResolver<mlir::tensor::ExpandShapeOp,void>::id ? v21 : 0;
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

uint64_t mlir::tensor::ExtractSliceOp::getAsmResultNames(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
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

  return a2(a3, NextResultAtOffset, "extracted_slice", 15);
}

uint64_t mlir::tensor::ExtractSliceOp::inferResultType(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v31[6] = *MEMORY[0x1E69E9840];
  v30[0] = v31;
  v30[1] = 0x600000000;
  v27 = v29;
  v28 = 0x600000000;
  v25[0] = v26;
  v25[1] = 0x600000000;
  v23[0] = v24;
  v23[1] = 0x600000000;
  v21[0] = v22;
  v21[1] = 0x600000000;
  v19[0] = v20;
  v19[1] = 0x600000000;
  mlir::dispatchIndexOpFoldResults(a2, a3, v23, v30);
  mlir::dispatchIndexOpFoldResults(a4, a5, v21, &v27);
  mlir::dispatchIndexOpFoldResults(a6, a7, v19, v25);
  v12 = v27;
  v13 = v28;
  v18 = a1;
  RHS = mlir::AffineBinaryOpExpr::getRHS(&v18);
  Values = mlir::SparseElementsAttr::getValues(&v18);
  v16 = mlir::RankedTensorType::get(v12, v13, RHS, Values);
  if (v19[0] != v20)
  {
    free(v19[0]);
  }

  if (v21[0] != v22)
  {
    free(v21[0]);
  }

  if (v23[0] != v24)
  {
    free(v23[0]);
  }

  if (v25[0] != v26)
  {
    free(v25[0]);
  }

  if (v27 != v29)
  {
    free(v27);
  }

  if (v30[0] != v31)
  {
    free(v30[0]);
  }

  return v16;
}

uint64_t mlir::tensor::ExtractSliceOp::inferCanonicalRankReducedResultType(int a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v28[6] = *MEMORY[0x1E69E9840];
  v26 = a2;
  RHS = mlir::AffineBinaryOpExpr::getRHS(&v26);
  Values = mlir::SparseElementsAttr::getValues(&v26);
  v25 = mlir::RankedTensorType::get(a5, a6, RHS, Values);
  mlir::ArrayAttr::getValue(&v25);
  v12 = v11 - a1;
  if (v11 - a1 >= 1)
  {
    Value = mlir::ArrayAttr::getValue(&v25);
    v15 = v14;
    mlir::getPositionsOfShapeOne(v12, Value, v14, &__p);
    v26 = v28;
    v27 = 0x600000000;
    if (v15)
    {
      v16 = 0;
      v17 = 0;
      while (1)
      {
        if (__p)
        {
          if (((1 << v17) & (__p >> 1) & ~(-1 << (__p >> 58))) == 0)
          {
LABEL_10:
            v18 = *(Value + 8 * v17);
            if (v16 >= HIDWORD(v27))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v26, v28, v16 + 1, 8);
              v16 = v27;
            }

            *(v26 + v16) = v18;
            v16 = v27 + 1;
            LODWORD(v27) = v27 + 1;
          }
        }

        else if ((*(*__p + 8 * (v17 >> 6)) & (1 << v17)) == 0)
        {
          goto LABEL_10;
        }

        if (v15 == ++v17)
        {
          v19 = v26;
          v20 = v16;
          goto LABEL_14;
        }
      }
    }

    v20 = 0;
    v19 = v28;
LABEL_14:
    v21 = mlir::AffineBinaryOpExpr::getRHS(&v25);
    v25 = mlir::RankedTensorType::get(v19, v20, v21, 0);
    if (v26 != v28)
    {
      free(v26);
    }

    v22 = __p;
    if ((__p & 1) == 0 && __p)
    {
      if (*__p != __p + 16)
      {
        free(*__p);
      }

      operator delete(v22);
    }
  }

  return v25;
}

BOOL llvm::SmallBitVector::test(llvm::SmallBitVector *this, unsigned int a2)
{
  v2 = *this;
  if (*this)
  {
    return ((1 << a2) & (v2 >> 1) & ~(-1 << (v2 >> 58))) != 0;
  }

  else
  {
    return (*(*v2 + 8 * (a2 >> 6)) & (1 << a2)) != 0;
  }
}

uint64_t mlir::tensor::ExtractSliceOp::inferCanonicalRankReducedResultType(int a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7, uint64_t a8)
{
  v30[6] = *MEMORY[0x1E69E9840];
  v29[0] = v30;
  v29[1] = 0x600000000;
  v26 = v28;
  v27 = 0x600000000;
  v24[0] = v25;
  v24[1] = 0x600000000;
  v22[0] = v23;
  v22[1] = 0x600000000;
  v20[0] = v21;
  v20[1] = 0x600000000;
  v18[0] = v19;
  v18[1] = 0x600000000;
  mlir::dispatchIndexOpFoldResults(a3, a4, v22, v29);
  mlir::dispatchIndexOpFoldResults(a5, a6, v20, &v26);
  mlir::dispatchIndexOpFoldResults(a7, a8, v18, v24);
  v15 = mlir::tensor::ExtractSliceOp::inferCanonicalRankReducedResultType(a1, a2, v13, v14, v26, v27);
  if (v18[0] != v19)
  {
    free(v18[0]);
  }

  if (v20[0] != v21)
  {
    free(v20[0]);
  }

  if (v22[0] != v23)
  {
    free(v22[0]);
  }

  if (v24[0] != v25)
  {
    free(v24[0]);
  }

  if (v26 != v28)
  {
    free(v26);
  }

  if (v29[0] != v30)
  {
    free(v29[0]);
  }

  return v15;
}

void mlir::tensor::ExtractSliceOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t *a9, uint64_t a10, void *__src, uint64_t a12)
{
  v47[6] = *MEMORY[0x1E69E9840];
  v45 = v47;
  v46 = 0x600000000;
  v42 = v44;
  v43 = 0x600000000;
  v39 = v41;
  v40 = 0x600000000;
  v36 = v38;
  v37 = 0x600000000;
  v33 = v35;
  v34 = 0x600000000;
  v30 = v32;
  v31 = 0x600000000;
  mlir::dispatchIndexOpFoldResults(a5, a6, &v36, &v45);
  mlir::dispatchIndexOpFoldResults(a7, a8, &v33, &v42);
  mlir::dispatchIndexOpFoldResults(a9, a10, &v30, &v39);
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
    v22 = v42;
    v23 = v43;
    v29[0] = *(a4 + 8) & 0xFFFFFFFFFFFFFFF8;
    RHS = mlir::AffineBinaryOpExpr::getRHS(v29);
    Values = mlir::SparseElementsAttr::getValues(v29);
    a3 = mlir::RankedTensorType::get(v22, v23, RHS, Values);
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
  mlir::ValueRange::ValueRange(v29, v36, v37);
  mlir::ValueRange::ValueRange(v28, v33, v34);
  mlir::ValueRange::ValueRange(v27, v30, v31);
  DenseI64ArrayAttr = mlir::Builder::getDenseI64ArrayAttr(a1, v45, v46);
  v20 = mlir::Builder::getDenseI64ArrayAttr(a1, v42, v43);
  v21 = mlir::Builder::getDenseI64ArrayAttr(a1, v39, v40);
  mlir::tensor::ExtractSliceOp::build(v21, a2, a3, a4, v29[0], v29[1], v28[0], v28[1], v27[0], v27[1], DenseI64ArrayAttr, v20, v21);
  if (v30 != v32)
  {
    free(v30);
  }

  if (v33 != v35)
  {
    free(v33);
  }

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
}

void mlir::tensor::ExtractSliceOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
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
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v33;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v33;
    {
      mlir::tensor::ExtractSliceOp::build();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
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
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v33;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v33;
  {
    mlir::tensor::ExtractSliceOp::build();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
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
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v33;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v33;
    {
      mlir::tensor::ExtractSliceOp::build();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
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
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v33;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v33;
  {
    mlir::tensor::ExtractSliceOp::build();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
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

uint64_t mlir::tensor::ExtractSliceOp::verify(mlir::tensor::ExtractSliceOp *this)
{
  v23[4] = *MEMORY[0x1E69E9840];
  v2 = *(*(*(*this + 72) + 24) + 8);
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::memref::ReinterpretCastOp>::getMixedOffsets(this, &v21);
  v3 = v21;
  v4 = v22;
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::memref::ReinterpretCastOp>::getMixedSizes(this, &v18);
  v5 = v18;
  v6 = v19;
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::memref::ReinterpretCastOp>::getMixedStrides(this, &v15);
  v14 = mlir::tensor::ExtractSliceOp::inferResultType(v2 & 0xFFFFFFFFFFFFFFF8, v3, v4, v5, v6, v15, v16);
  if (v15 != &v17)
  {
    free(v15);
  }

  if (v18 != &v20)
  {
    free(v18);
  }

  if (v21 != v23)
  {
    free(v21);
  }

  v7 = mlir::TensorType::operator mlir::ShapedType(&v14);
  v9 = v8;
  if (*(*this + 36))
  {
    v10 = *this - 16;
  }

  else
  {
    v10 = 0;
  }

  v21 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  v11 = mlir::TensorType::operator mlir::ShapedType(&v21);
  isRankReducedType = mlir::isRankReducedType(v7, v9, v11);
  return produceSliceErrorMsg(isRankReducedType, *this, v14);
}

uint64_t produceSliceErrorMsg(int a1, mlir::Block **a2, uint64_t a3)
{
  v65 = *MEMORY[0x1E69E9840];
  v50 = a3;
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v48[0] = "expected type to be ";
      v49 = 259;
      mlir::Operation::emitError(a2, v48, v54);
      if (v54[0])
      {
        v5 = &v51;
        mlir::DiagnosticArgument::DiagnosticArgument(&v51, a3);
        v6 = v55;
        if (v56 >= v57)
        {
          if (v55 <= &v51 && v55 + 24 * v56 > &v51)
          {
            v44 = &v51 - v55;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v55, v58, v56 + 1, 24);
            v6 = v55;
            v5 = (v55 + v44);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v55, v58, v56 + 1, 24);
            v5 = &v51;
            v6 = v55;
          }
        }

        v7 = &v6[24 * v56];
        v8 = *v5;
        *(v7 + 2) = *(v5 + 2);
        *v7 = v8;
        v9 = ++v56;
        if (v54[0])
        {
          v51 = 3;
          v52 = " or a rank-reduced version. (size mismatch) ";
          v53 = 44;
          v10 = &v51;
          v11 = v55;
          if (v9 >= v57)
          {
            if (v55 <= &v51 && v55 + 24 * v9 > &v51)
            {
              v47 = &v51 - v55;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v55, v58, v9 + 1, 24);
              v11 = v55;
              v10 = (v55 + v47);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v55, v58, v9 + 1, 24);
              v10 = &v51;
              v11 = v55;
            }
          }

          v12 = &v11[24 * v56];
          v13 = *v10;
          *(v12 + 2) = *(v10 + 2);
          *v12 = v13;
          ++v56;
        }
      }

      v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v54);
      if (v54[0])
      {
        mlir::InFlightDiagnostic::report(v54);
      }

      if (v64 == 1)
      {
        if (v63 != &v64)
        {
          free(v63);
        }

        v14 = __p;
        if (__p)
        {
          v15 = v62;
          v16 = __p;
          if (v62 != __p)
          {
            do
            {
              v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
            }

            while (v15 != v14);
            v16 = __p;
          }

          v62 = v14;
          operator delete(v16);
        }

        v17 = v59;
        if (!v59)
        {
          goto LABEL_66;
        }

        v18 = v60;
        v19 = v59;
        if (v60 == v59)
        {
          goto LABEL_65;
        }

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
        goto LABEL_64;
      }
    }

    else
    {
      v48[0] = "expected element type to be ";
      v49 = 259;
      mlir::Operation::emitError(a2, v48, v54);
      RHS = mlir::AffineBinaryOpExpr::getRHS(&v50);
      if (v54[0])
      {
        v33 = &v51;
        mlir::DiagnosticArgument::DiagnosticArgument(&v51, RHS);
        v34 = v55;
        if (v56 >= v57)
        {
          if (v55 <= &v51 && v55 + 24 * v56 > &v51)
          {
            v46 = &v51 - v55;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v55, v58, v56 + 1, 24);
            v34 = v55;
            v33 = (v55 + v46);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v55, v58, v56 + 1, 24);
            v33 = &v51;
            v34 = v55;
          }
        }

        v35 = &v34[24 * v56];
        v36 = *v33;
        *(v35 + 2) = *(v33 + 2);
        *v35 = v36;
        ++v56;
      }

      v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v54);
      if (v54[0])
      {
        mlir::InFlightDiagnostic::report(v54);
      }

      if (v64 == 1)
      {
        if (v63 != &v64)
        {
          free(v63);
        }

        v37 = __p;
        if (__p)
        {
          v38 = v62;
          v39 = __p;
          if (v62 != __p)
          {
            do
            {
              v38 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v38 - 1);
            }

            while (v38 != v37);
            v39 = __p;
          }

          v62 = v37;
          operator delete(v39);
        }

        v17 = v59;
        if (!v59)
        {
          goto LABEL_66;
        }

        v40 = v60;
        v19 = v59;
        if (v60 == v59)
        {
          goto LABEL_65;
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

        while (v40 != v17);
        goto LABEL_64;
      }
    }
  }

  else
  {
    if (!a1)
    {
      return 1;
    }

    v48[0] = "expected rank to be smaller or equal to ";
    v49 = 259;
    mlir::Operation::emitError(a2, v48, v54);
    if (v54[0])
    {
      v51 = 3;
      v52 = "the other rank. ";
      v53 = 16;
      v22 = &v51;
      v23 = v55;
      if (v56 >= v57)
      {
        if (v55 <= &v51 && v55 + 24 * v56 > &v51)
        {
          v45 = &v51 - v55;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v55, v58, v56 + 1, 24);
          v23 = v55;
          v22 = (v55 + v45);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v55, v58, v56 + 1, 24);
          v22 = &v51;
          v23 = v55;
        }
      }

      v24 = &v23[24 * v56];
      v25 = *v22;
      *(v24 + 2) = *(v22 + 2);
      *v24 = v25;
      ++v56;
    }

    v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v54);
    if (v54[0])
    {
      mlir::InFlightDiagnostic::report(v54);
    }

    if (v64 == 1)
    {
      if (v63 != &v64)
      {
        free(v63);
      }

      v26 = __p;
      if (__p)
      {
        v27 = v62;
        v28 = __p;
        if (v62 != __p)
        {
          do
          {
            v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
          }

          while (v27 != v26);
          v28 = __p;
        }

        v62 = v26;
        operator delete(v28);
      }

      v17 = v59;
      if (!v59)
      {
        goto LABEL_66;
      }

      v29 = v60;
      v19 = v59;
      if (v60 == v59)
      {
LABEL_65:
        v60 = v17;
        operator delete(v19);
LABEL_66:
        if (v55 != v58)
        {
          free(v55);
        }

        return v3;
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

      while (v29 != v17);
LABEL_64:
      v19 = v59;
      goto LABEL_65;
    }
  }

  return v3;
}

void getDroppedDims(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 >= 0x3A)
  {
    v11 = operator new(0x48uLL);
    v10 = v11;
    v12 = a5 + 63;
    v13 = (a5 + 63) >> 6;
    *v11 = v11 + 4;
    v11[3] = 6;
    if ((a5 + 63) < 0x1C0)
    {
      if (v12 < 0x40)
      {
LABEL_9:
        *(v10 + 8) = v13;
        *(v10 + 64) = a5;
        *a1 = v10;
        goto LABEL_10;
      }

      v14 = v11 + 4;
      v15 = 8 * v13;
    }

    else
    {
      v11[2] = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v11, (v11 + 4), v12 >> 6, 8);
      v14 = *v10;
      v15 = 8 * v13;
    }

    bzero(v14, v15);
    goto LABEL_9;
  }

  v10 = (a5 << 58) | 1;
  *a1 = v10;
  if (a5)
  {
LABEL_10:
    v16 = a3 - 1;
    v17 = 8 * a5;
    v18 = a4 - 8;
    v19 = a5 - 1;
    do
    {
      v20 = *(v18 + v17);
      if ((v20 & 4) != 0)
      {
        if (v16 < 0)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v22 = v20 & 0xFFFFFFFFFFFFFFF8;
        Int = mlir::IntegerAttr::getInt(&v22);
        if (v16 < 0 || Int == 1 && *(a2 + 8 * v16) != 1)
        {
LABEL_18:
          if (v10)
          {
            v10 = v10 & 0xFC00000000000001 | (2 * (((1 << v19) | (v10 >> 1)) & ~(-1 << (v10 >> 58))));
            *a1 = v10;
          }

          else
          {
            *(*v10 + 8 * (v19 >> 6)) |= 1 << v19;
          }

          goto LABEL_13;
        }
      }

      --v16;
LABEL_13:
      --v19;
      v17 -= 8;
    }

    while (v17);
  }
}

void mlir::tensor::ExtractSliceOp::getCanonicalizationPatterns(void *a1, uint64_t a2)
{
  v24 = a2;
  mlir::RewritePatternSet::addImpl<mlir::OpWithOffsetSizesAndStridesConstantArgumentFolder<mlir::tensor::ExtractSliceOp,SliceReturnTypeCanonicalizer,SliceCanonicalizer>,mlir::MLIRContext *&>(a1, 0, 0, &v24);
  v3 = v24;
  v4 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v25, 1);
  mlir::Pattern::Pattern((v4 + 2), "tensor.extract_slice", 20, v25, v3, 0, 0);
  *v4 = &unk_1F5B09FD8;
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

  v25 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::ExtractSliceOpCastFolder]";
  v26 = 97;
  v9 = llvm::StringRef::find(&v25, "DesiredTypeName = ", 0x12uLL, 0);
  if (v26 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v26;
  }

  v11 = &v25[v10];
  v12 = v26 - v10;
  if (v26 - v10 >= 0x12)
  {
    v13 = 18;
  }

  else
  {
    v13 = v26 - v10;
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
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
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
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
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
}

unint64_t mlir::tensor::ExtractSliceOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v4 = *v3;
  if (*v3)
  {
    if (mlir::DenseElementsAttr::classof(*v3))
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v24 = v5;
    if (v5)
    {
      if (!mlir::DenseElementsAttr::isSplat(&v24))
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }
  }

  if (*(*a1 + 36))
  {
    v6 = *a1 - 16;
  }

  else
  {
    v6 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0);
  result = reshapeConstantSource(v4, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), 0, 0);
  if (result <= 7)
  {
    if (*(*a1 + 36))
    {
      v10 = *a1 - 16;
    }

    else
    {
      v10 = 0;
    }

    v9 = *(*(*(*a1 + 72) + 24) + 8);
    if (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0) + 8) ^ v9) <= 7 && ((v11 = *a1, v12 = mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor(*a1), *(*a1 + 36)) ? (v13 = *a1 - 16) : (v13 = 0), v24 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0) + 8) & 0xFFFFFFFFFFFFFFF8), v14 = mlir::TensorType::operator mlir::ShapedType(&v24), (foldIdentityOffsetSizeAndStrideOpInterface(v11, v12, v14, v15)))
    {
      return *(*(*a1 + 72) + 24) | 4;
    }

    else
    {
      v16 = *a1;
      v24 = *(*(v16 + 72) + 24);
      DefiningOp = mlir::Value::getDefiningOp(&v24);
      if (DefiningOp && (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::InsertSliceOp,void>::id ? (v18 = 0) : (v18 = DefiningOp), v18 && (*(v16 + 36) ? (v20 = v16 - 16) : (v20 = 0), (v19 = *(*(*(v18 + 72) + 24) + 8), (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v20, 0) + 8) ^ v19) <= 7) && (InterfaceFor = mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor(v16), v22 = mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor(v18), (mlir::detail::sameOffsetsSizesAndStrides(v18, v22, v16, InterfaceFor, llvm::function_ref<BOOL ()(mlir::OpFoldResult,mlir::OpFoldResult)>::callback_fn<foldExtractAfterInsertSlice(mlir::tensor::ExtractSliceOp)::$_0>, &v24) & 1) != 0))))
      {
        v23 = *(*(v18 + 72) + 24);
        if (v23)
        {
          return v23 | 4;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t foldIdentityOffsetSizeAndStrideOpInterface(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v36[0] = a1;
  v36[1] = a2;
  v35[0] = a3;
  v35[1] = a4;
  mlir::Attribute::getContext((a1 + 24));
  mlir::OffsetSizeAndStrideOpInterface::getMixedOffsets(&__dst, v36);
  v4 = __dst;
  if (v41)
  {
    v5 = 8 * v41 - 8;
    do
    {
      v6 = *v4++;
      v7 = mlir::getConstantIntValue(v6) == 0;
      v9 = v8 & v7;
      v10 = (v8 & v7) != 1 || v5 == 0;
      v5 -= 8;
    }

    while (!v10);
    v4 = __dst;
    if (__dst == v42)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v9 = 1;
    if (__dst == v42)
    {
      goto LABEL_10;
    }
  }

  free(v4);
LABEL_10:
  if (!v9)
  {
    return 0;
  }

  v34[0] = mlir::CallableOpInterface::getArgAttrsAttr(v35);
  v34[1] = v11;
  mlir::OffsetSizeAndStrideOpInterface::getMixedSizes(&__src, v36);
  __dst = v42;
  v41 = 0x400000000;
  v12 = v38;
  v13 = __src;
  if (v38)
  {
    if (__src == v39)
    {
      v14 = v38;
      if (v38 < 5 || (llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v42, v38, 8), v14 = v38, v13 = __src, v38))
      {
        memcpy(__dst, v13, 8 * v14);
        v13 = __src;
      }

      LODWORD(v41) = v12;
    }

    else
    {
      __dst = __src;
      v41 = v38;
      __src = v39;
      HIDWORD(v38) = 0;
      v13 = v39;
    }

    LODWORD(v38) = 0;
  }

  v15 = v34;
  v43 = v34;
  if (v13 != v39)
  {
    free(v13);
    v15 = v43;
    v12 = v41;
  }

  v16 = 0;
  v17 = __dst;
  if (v12)
  {
    v18 = v15[1];
    if (v18)
    {
      v19 = *v15;
      v20 = 8 * v18 - 8;
      v21 = 8 * v12 - 8;
      do
      {
        v22 = mlir::getConstantIntValue(*v17) == *v19;
        v24 = v23 & v22;
        if (v24 != 1)
        {
          break;
        }

        if (!v21)
        {
          break;
        }

        ++v17;
        ++v19;
        v25 = v20;
        v20 -= 8;
        v21 -= 8;
      }

      while (v25);
      v16 = v24 ^ 1;
      v17 = __dst;
    }
  }

  if (v17 != v42)
  {
    free(v17);
  }

  if (v16)
  {
    return 0;
  }

  mlir::OffsetSizeAndStrideOpInterface::getMixedStrides(&__dst, v36);
  v27 = __dst;
  if (!v41)
  {
    result = 1;
    if (__dst == v42)
    {
      return result;
    }

LABEL_45:
    v33 = result;
    free(v27);
    return v33;
  }

  v28 = 8 * v41 - 8;
  do
  {
    v29 = *v27++;
    v30 = mlir::getConstantIntValue(v29) == 1;
    result = v31 & v30;
    v32 = result != 1 || v28 == 0;
    v28 -= 8;
  }

  while (!v32);
  v27 = __dst;
  if (__dst != v42)
  {
    goto LABEL_45;
  }

  return result;
}

int64x2_t **llvm::SmallVector<mlir::OpFoldResult,6u>::SmallVector(int64x2_t **result, unint64_t a2, unint64_t *a3)
{
  v4 = (result + 2);
  *result = (result + 2);
  result[1] = 0x600000000;
  v5 = *a3;
  if (a2 >= 7)
  {
    v6 = result;
    llvm::SmallVectorBase<unsigned int>::grow_pod(result, v4, a2, 8);
    result = v6;
    v7 = *v6 + (a2 & 0xFFFFFFFFFFFFFFFCLL);
    v8 = a2 & 3;
    v9 = vdupq_n_s64(v5);
    v10 = *v6 + 1;
    v11 = a2 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v10[-1] = v9;
      *v10 = v9;
      v10 += 2;
      v11 -= 4;
    }

    while (v11);
    if ((a2 & 0xFFFFFFFFFFFFFFFCLL) != a2)
    {
      do
      {
        *v7++ = v5;
        --v8;
      }

      while (v8);
    }

    goto LABEL_6;
  }

  if (!a2)
  {
    goto LABEL_6;
  }

  v12 = vdupq_n_s64(a2 - 1);
  v13 = a2 + 1;
  v14 = vmovn_s64(vcgeq_u64(v12, xmmword_1E09700F0));
  if ((v14.i8[0] & 1) == 0)
  {
    v15 = v13 & 0xE;
    if ((v14.i8[4] & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_13:
    result[3] = v5;
    if (v15 == 2)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

  *v4 = v5;
  v15 = v13 & 0xE;
  if (v14.i8[4])
  {
    goto LABEL_13;
  }

LABEL_10:
  if (v15 == 2)
  {
    goto LABEL_6;
  }

LABEL_14:
  v16 = vmovn_s64(vcgtq_u64(v12, xmmword_1E0970220));
  if ((v16.i8[0] & 1) == 0)
  {
    if ((v16.i8[4] & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_19;
  }

  result[4] = v5;
  if (v16.i8[4])
  {
LABEL_19:
    result[5] = v5;
    if (v15 != 4)
    {
      goto LABEL_20;
    }

LABEL_6:
    *(result + 2) = a2;
    return result;
  }

LABEL_16:
  if (v15 == 4)
  {
    goto LABEL_6;
  }

LABEL_20:
  v17 = vmovn_s64(vcgtq_u64(v12, xmmword_1E0970230));
  if (v17.i8[0])
  {
    result[6] = v5;
  }

  if ((v17.i8[4] & 1) == 0)
  {
    goto LABEL_6;
  }

  result[7] = v5;
  *(result + 2) = a2;
  return result;
}

uint64_t mlir::tensor::InsertSliceOp::getAsmResultNames(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
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

  return a2(a3, NextResultAtOffset, "inserted_slice", 14);
}

void mlir::tensor::InsertSliceOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t *a9, uint64_t a10, void *__src, uint64_t a12)
{
  v44[6] = *MEMORY[0x1E69E9840];
  v42 = v44;
  v43 = 0x600000000;
  v39 = v41;
  v40 = 0x600000000;
  v36 = v38;
  v37 = 0x600000000;
  v33 = v35;
  v34 = 0x600000000;
  v30 = v32;
  v31 = 0x600000000;
  v27 = v29;
  v28 = 0x600000000;
  mlir::dispatchIndexOpFoldResults(a5, a6, &v33, &v42);
  mlir::dispatchIndexOpFoldResults(a7, a8, &v30, &v39);
  mlir::dispatchIndexOpFoldResults(a9, a10, &v27, &v36);
  *(a2 + 192) = 0;
  v17 = *(a2 + 120);
  if (a12 + v17 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 112, a2 + 128, a12 + v17, 16);
    LODWORD(v17) = *(a2 + 120);
  }

  if (a12)
  {
    memcpy((*(a2 + 112) + 16 * v17), __src, 16 * a12);
    LODWORD(v17) = *(a2 + 120);
  }

  *(a2 + 120) = v17 + a12;
  v18 = *(a4 + 8);
  mlir::ValueRange::ValueRange(v26, v33, v34);
  mlir::ValueRange::ValueRange(v25, v30, v31);
  mlir::ValueRange::ValueRange(v24, v27, v28);
  DenseI64ArrayAttr = mlir::Builder::getDenseI64ArrayAttr(a1, v42, v43);
  v20 = mlir::Builder::getDenseI64ArrayAttr(a1, v39, v40);
  v21 = mlir::Builder::getDenseI64ArrayAttr(a1, v36, v37);
  mlir::tensor::InsertSliceOp::build(v21, a2, v18 & 0xFFFFFFFFFFFFFFF8, a3, a4, v26[0], v26[1], v22, v25[0], v25[1], v24[0], v24[1], DenseI64ArrayAttr, v20, v21);
  if (v27 != v29)
  {
    free(v27);
  }

  if (v30 != v32)
  {
    free(v30);
  }

  if (v33 != v35)
  {
    free(v33);
  }

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
}

void mlir::tensor::InsertSliceOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v30 = a5;
  v31 = a4;
  mlir::OperationState::addOperands(a2, &v31, 1uLL);
  mlir::OperationState::addOperands(a2, &v30, 1uLL);
  mlir::OperationState::addOperands(a2, a6, a7);
  mlir::OperationState::addOperands(a2, a9, a10);
  mlir::OperationState::addOperands(a2, a11, a12);
  v19 = *(a2 + 256);
  if (!v19)
  {
    v20 = operator new(0x30uLL);
    *v20 = 0u;
    v20[1] = 0u;
    *(v20 + 28) = 0u;
    *(a2 + 256) = v20;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v32;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v32;
    {
      mlir::tensor::InsertSliceOp::build();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v19 = *(a2 + 256);
  }

  *(v19 + 24) = 0x100000001;
  *(v19 + 32) = a7;
  *(v19 + 36) = a10;
  *(v19 + 40) = a12;
  v21 = *(a2 + 256);
  if (v21)
  {
    v22 = a14;
    *v21 = a13;
    v23 = *(a2 + 256);
    if (v23)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v27 = operator new(0x30uLL);
    *v27 = 0u;
    v27[1] = 0u;
    *(v27 + 28) = 0u;
    *(a2 + 256) = v27;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v32;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v32;
    {
      mlir::tensor::InsertSliceOp::build();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v22 = a14;
    **(a2 + 256) = a13;
    v23 = *(a2 + 256);
    if (v23)
    {
LABEL_7:
      v24 = a15;
      *(v23 + 8) = v22;
      v25 = *(a2 + 256);
      if (v25)
      {
        goto LABEL_8;
      }

LABEL_17:
      v29 = operator new(0x30uLL);
      *v29 = 0u;
      v29[1] = 0u;
      *(v29 + 28) = 0u;
      *(a2 + 256) = v29;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &v32;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &v32;
      {
        mlir::tensor::InsertSliceOp::build();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      *(*(a2 + 256) + 16) = v24;
      v26 = *(a2 + 72);
      if (v26 >= *(a2 + 76))
      {
        goto LABEL_9;
      }

      goto LABEL_10;
    }
  }

  v28 = operator new(0x30uLL);
  *v28 = 0u;
  v28[1] = 0u;
  *(v28 + 28) = 0u;
  *(a2 + 256) = v28;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v32;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v32;
  {
    mlir::tensor::InsertSliceOp::build();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  v24 = a15;
  *(*(a2 + 256) + 8) = v22;
  v25 = *(a2 + 256);
  if (!v25)
  {
    goto LABEL_17;
  }

LABEL_8:
  *(v25 + 16) = v24;
  v26 = *(a2 + 72);
  if (v26 >= *(a2 + 76))
  {
LABEL_9:
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v26 + 1, 8);
    LODWORD(v26) = *(a2 + 72);
  }

LABEL_10:
  *(*(a2 + 64) + 8 * v26) = a3;
  ++*(a2 + 72);
}

uint64_t mlir::tensor::InsertSliceOp::verify(mlir::Block ***this)
{
  v2 = (*(*((*this)[9] + 3) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*this + 9))
  {
    v3 = (*this - 2);
  }

  else
  {
    v3 = 0;
  }

  v4 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  v18 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
  mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v18);
  v18 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 9];
  v5 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v18);
  v7 = v6;
  v18 = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 10];
  mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v18);
  v17 = v2;
  v18 = v4;
  RHS = mlir::AffineBinaryOpExpr::getRHS(&v18);
  Values = mlir::SparseElementsAttr::getValues(&v18);
  v10 = mlir::RankedTensorType::get(v5, v7, RHS, Values);
  v18 = v10;
  v11 = mlir::TensorType::operator mlir::ShapedType(&v18);
  v13 = v12;
  v14 = mlir::TensorType::operator mlir::ShapedType(&v17);
  isRankReducedType = mlir::isRankReducedType(v11, v13, v14);
  return produceSliceErrorMsg(isRankReducedType, *this, v10);
}

uint64_t mlir::tensor::InsertSliceOp::fold(uint64_t *a1)
{
  v45[4] = *MEMORY[0x1E69E9840];
  v43 = (*(*(*(*a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (mlir::TensorType::hasRank(&v43))
  {
    Value = mlir::ArrayAttr::getValue(&v43);
    if (v3)
    {
      v4 = 8 * v3;
      while (*Value != 0x8000000000000000)
      {
        ++Value;
        v4 -= 8;
        if (!v4)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      if (*(*a1 + 36))
      {
        v5 = *a1 - 16;
      }

      else
      {
        v5 = 0;
      }

      v42 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
      if (mlir::TensorType::hasRank(&v42))
      {
        v6 = mlir::ArrayAttr::getValue(&v42);
        if (v7)
        {
          v8 = 8 * v7;
          while (*v6 != 0x8000000000000000)
          {
            ++v6;
            v8 -= 8;
            if (!v8)
            {
              goto LABEL_14;
            }
          }
        }

        else
        {
LABEL_14:
          if (*(*a1 + 36))
          {
            v10 = *a1 - 16;
          }

          else
          {
            v10 = 0;
          }

          v9 = *(*(*(*a1 + 72) + 24) + 8);
          if ((*(mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0) + 8) ^ v9) <= 7)
          {
            v11 = *a1;
            InterfaceFor = mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor(*a1);
            v13 = *(*a1 + 36) ? *a1 - 16 : 0;
            v41 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
            v14 = mlir::TensorType::operator mlir::ShapedType(&v41);
            if (foldIdentityOffsetSizeAndStrideOpInterface(v11, InterfaceFor, v14, v15))
            {
              v16 = *(*a1 + 72);
LABEL_56:
              v34 = *(v16 + 24);
              return v34 | 4;
            }
          }
        }
      }
    }
  }

  v17 = *a1;
  v43 = *(*(*a1 + 72) + 32 * *(*a1 + 104) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v43);
  if (!DefiningOp || (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::InsertSliceOp,void>::id ? (v19 = 0) : (v19 = DefiningOp), !v19 || (*(*(*(v17 + 72) + 24) + 8) ^ *(*(*(v19 + 72) + 24) + 8)) > 7 || (v20 = mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor(v17), v21 = mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor(v19), !mlir::detail::sameOffsetsSizesAndStrides(v19, v21, v17, v20, llvm::function_ref<BOOL ()(mlir::OpFoldResult,mlir::OpFoldResult)>::callback_fn<foldInsertAfterInsertSlice(mlir::tensor::InsertSliceOp)::$_0>, &v43))))
  {
    v29 = *a1;
    v43 = *(*(*a1 + 72) + 24);
    v30 = mlir::Value::getDefiningOp(&v43);
    if (v30)
    {
      v31 = *(*(v30 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id ? v30 : 0;
      if (v31)
      {
        if (*(*(v31 + 72) + 24) == *(*(v29 + 72) + 32 * *(v29 + 104) + 24))
        {
          v32 = mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor(v29);
          v33 = mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor(v31);
          if (mlir::detail::sameOffsetsSizesAndStrides(v31, v33, v29, v32, llvm::function_ref<BOOL ()(mlir::OpFoldResult,mlir::OpFoldResult)>::callback_fn<foldInsertAfterExtractSlice(mlir::tensor::InsertSliceOp)::$_0>, &v43))
          {
            v34 = *(*(v31 + 72) + 24);
            if (v34)
            {
              return v34 | 4;
            }
          }
        }
      }
    }

    mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getMixedSizes(a1, &v43);
    v35 = v43;
    if (v44)
    {
      v36 = 8 * v44 - 8;
      do
      {
        v37 = *v35++;
        isConstantIntValue = mlir::isConstantIntValue(v37, 0);
        if (isConstantIntValue)
        {
          break;
        }

        v39 = v36;
        v36 -= 8;
      }

      while (v39);
      v35 = v43;
      if (v43 == v45)
      {
        goto LABEL_54;
      }
    }

    else
    {
      isConstantIntValue = 0;
      if (v43 == v45)
      {
        goto LABEL_54;
      }
    }

    v40 = isConstantIntValue;
    free(v35);
    isConstantIntValue = v40;
LABEL_54:
    if (!isConstantIntValue)
    {
      return 0;
    }

    v16 = *(*a1 + 72) + 32 * *(*a1 + 104);
    goto LABEL_56;
  }

  v22 = (*(v17 + 72) + 32 * *(v17 + 16 * ((*(v17 + 44) >> 23) & 1) + 88));
  v23 = *(*(v19 + 72) + 32 * *(v19 + 104) + 24);
  v24 = v22[1];
  if (v24)
  {
    v25 = *v22;
    *v24 = *v22;
    if (v25)
    {
      *(v25 + 8) = v24;
    }
  }

  v22[3] = v23;
  v22[1] = v23;
  v26 = *v23;
  *v22 = *v23;
  if (v26)
  {
    *(v26 + 8) = v22;
  }

  *v23 = v22;
  if (*(*a1 + 36))
  {
    v27 = *a1 - 16;
  }

  else
  {
    v27 = 0;
  }

  return mlir::detail::OpResultImpl::getNextResultAtOffset(v27, 0) | 4;
}

uint64_t mlir::tensor::InsertSliceOp::reifyResultShapes(uint64_t a1, mlir::IndexType **a2, uint64_t a3)
{
  v33[6] = *MEMORY[0x1E69E9840];
  if (*(*a1 + 36))
  {
    v6 = *a1 - 16;
  }

  else
  {
    v6 = 0;
  }

  v30 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&v30);
  __src = v33;
  v32 = 0x600000000;
  if (v7)
  {
    v8 = v7;
    if (v7 < 7)
    {
      v9 = 0;
      v10 = v7;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v33, v7, 8);
      v9 = v32;
      v10 = v8 - v32;
      if (v8 == v32)
      {
        goto LABEL_10;
      }
    }

    bzero(__src + 8 * v9, 8 * v10);
LABEL_10:
    LODWORD(v32) = v8;
  }

  v11 = *(a3 + 8);
  if (!v11)
  {
    llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpFoldResult,6u>>::append(a3, 1 - v11, &__src);
LABEL_18:
    v15 = __src;
    if (__src == v33)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v11 == 1)
  {
    goto LABEL_18;
  }

  v12 = v11 << 6;
  v13 = (v12 + *a3 - 64);
  v14 = 64 - v12;
  do
  {
    if (v13 + 2 != *v13)
    {
      free(*v13);
    }

    v13 -= 8;
    v14 += 64;
  }

  while (v14);
  *(a3 + 8) = 1;
  v15 = __src;
  if (__src != v33)
  {
LABEL_19:
    free(v15);
  }

LABEL_20:
  v16 = *(*a1 + 24);
  v17 = *(*(*a1 + 72) + 32 * *(*a1 + 104) + 24);
  v30 = *(v17 + 8) & 0xFFFFFFFFFFFFFFF8;
  __src = v33;
  v32 = 0x600000000;
  mlir::ArrayAttr::getValue(&v30);
  if (v18 >= 1)
  {
    for (i = 0; i < v22; i = (i + 1))
    {
      MixedSize = mlir::tensor::getMixedSize(a2, v16, v17, i);
      v21 = v32;
      if (v32 >= HIDWORD(v32))
      {
        v23 = MixedSize;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v33, v32 + 1, 8);
        MixedSize = v23;
        v21 = v32;
      }

      *(__src + v21) = MixedSize;
      LODWORD(v32) = v32 + 1;
      mlir::ArrayAttr::getValue(&v30);
    }
  }

  v24 = *a3;
  v25 = __src;
  if (v24 != &__src)
  {
    if (__src != v33)
    {
      if (*v24 != v24 + 16)
      {
        free(*v24);
        v25 = __src;
      }

      *v24 = v25;
      *(v24 + 8) = v32;
      __src = v33;
      HIDWORD(v32) = 0;
      goto LABEL_42;
    }

    v26 = v32;
    v27 = *(v24 + 8);
    if (v27 >= v32)
    {
      if (v32)
      {
        memmove(*v24, __src, 8 * v32);
      }

      goto LABEL_41;
    }

    if (*(v24 + 12) >= v32)
    {
      if (v27)
      {
        memmove(*v24, __src, 8 * v27);
        v28 = v32 - v27;
        if (v32 == v27)
        {
LABEL_41:
          *(v24 + 8) = v26;
LABEL_42:
          LODWORD(v32) = 0;
          v25 = __src;
          goto LABEL_43;
        }
      }

      else
      {
        v27 = 0;
        v28 = v32;
        if (!v32)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
      *(v24 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v24, v24 + 16, v26, 8);
      v27 = 0;
      v28 = v32;
      if (!v32)
      {
        goto LABEL_41;
      }
    }

    memcpy((*v24 + 8 * v27), __src + 8 * v27, 8 * v28);
    goto LABEL_41;
  }

LABEL_43:
  if (v25 != v33)
  {
    free(v25);
  }

  return 1;
}

void mlir::tensor::InsertSliceOp::getCanonicalizationPatterns(void *a1, uint64_t a2)
{
  v4 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v64, 1);
  mlir::Pattern::Pattern((v4 + 2), "tensor.insert_slice", 19, v64, a2, 0, 0);
  *v4 = &unk_1F5B0A048;
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

  v64 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::InsertSliceOpConstantArgumentFolder<mlir::tensor::InsertSliceOp>]";
  v65 = 137;
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
  mlir::Pattern::Pattern((v24 + 2), "tensor.insert_slice", 19, v64, a2, 0, 0);
  *v24 = &unk_1F5B0A0E8;
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

  v64 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::InsertSliceOpCastFolder<mlir::tensor::InsertSliceOp>]";
  v65 = 125;
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
  mlir::Pattern::Pattern((v44 + 2), "tensor.insert_slice", 19, v64, a2, 0, 0);
  *v44 = &unk_1F5B0A158;
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

  v64 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::InsertSliceOpSourceCastInserter<mlir::tensor::InsertSliceOp>]";
  v65 = 133;
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

uint64_t mlir::tensor::PadOp::getAsmResultNames(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
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

  return a2(a3, NextResultAtOffset, "padded", 6);
}

BOOL mlir::tensor::PadOp::verify(mlir::Block ***this)
{
  v108 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *(*((*this)[9] + 3) + 8) & 0xFFFFFFFFFFFFFFF8;
  v93 = v3;
  v4 = *(v2 + 9);
  v5 = (v2 - 2);
  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v92 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  v97[0] = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 10];
  v7 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(v97);
  v9 = v8;
  v97[0] = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 9];
  v10 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(v97);
  v91 = mlir::tensor::PadOp::inferResultType(v3, v7, v9, v10, v11, 0, 0);
  if (v91)
  {
    mlir::ArrayAttr::getValue(&v92);
    v13 = v12;
    mlir::ArrayAttr::getValue(&v91);
    if (v13 == v14)
    {
      mlir::ArrayAttr::getValue(&v93);
      if (v15 < 1)
      {
        return 1;
      }

      v16 = 0;
      v17 = v15 & 0x7FFFFFFF;
      while (1)
      {
        v18 = *(mlir::ArrayAttr::getValue(&v92) + 8 * v16);
        if (v18 != *(mlir::ArrayAttr::getValue(&v91) + 8 * v16) && *(mlir::ArrayAttr::getValue(&v91) + 8 * v16) != 0x8000000000000000)
        {
          break;
        }

        if (v17 == ++v16)
        {
          return 1;
        }
      }

      v89[0] = "specified type ";
      v90 = 259;
      mlir::OpState::emitError(this, v89, v97);
      if (v97[0])
      {
        v19 = &v94;
        mlir::DiagnosticArgument::DiagnosticArgument(&v94, v92);
        v20 = v98;
        if (v99 >= v100)
        {
          if (v98 <= &v94 && v98 + 24 * v99 > &v94)
          {
            v86 = &v94 - v98;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v99 + 1, 24);
            v20 = v98;
            v19 = (v98 + v86);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v99 + 1, 24);
            v19 = &v94;
            v20 = v98;
          }
        }

        v21 = &v20[24 * v99];
        v22 = *v19;
        *(v21 + 2) = *(v19 + 2);
        *v21 = v22;
        v23 = ++v99;
        if (v97[0])
        {
          v94 = 3;
          v95 = " does not match the inferred type ";
          v96 = 34;
          v24 = &v94;
          v25 = v98;
          if (v23 >= v100)
          {
            if (v98 <= &v94 && v98 + 24 * v23 > &v94)
            {
              v87 = &v94 - v98;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v23 + 1, 24);
              v25 = v98;
              v24 = (v98 + v87);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v23 + 1, 24);
              v24 = &v94;
              v25 = v98;
            }
          }

          v26 = &v25[24 * v99];
          v27 = *v24;
          *(v26 + 2) = *(v24 + 2);
          *v26 = v27;
          ++v99;
          if (v97[0])
          {
            v28 = &v94;
            mlir::DiagnosticArgument::DiagnosticArgument(&v94, v91);
            v29 = v98;
            if (v99 >= v100)
            {
              if (v98 <= &v94 && v98 + 24 * v99 > &v94)
              {
                v88 = &v94 - v98;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v99 + 1, 24);
                v29 = v98;
                v28 = (v98 + v88);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v99 + 1, 24);
                v28 = &v94;
                v29 = v98;
              }
            }

            v30 = &v29[24 * v99];
            v31 = *v28;
            *(v30 + 2) = *(v28 + 2);
            *v30 = v31;
            ++v99;
          }
        }
      }

      v32 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v97);
      if (v97[0])
      {
        mlir::InFlightDiagnostic::report(v97);
      }

      if (v107)
      {
        if (v106 != &v107)
        {
          free(v106);
        }

        v33 = __p;
        if (__p)
        {
          v34 = v105;
          v35 = __p;
          if (v105 != __p)
          {
            do
            {
              v34 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v34 - 1);
            }

            while (v34 != v33);
            v35 = __p;
          }

          v105 = v33;
          operator delete(v35);
        }

        v36 = v102;
        if (!v102)
        {
          goto LABEL_83;
        }

        v37 = v103;
        v38 = v102;
        if (v103 == v102)
        {
LABEL_82:
          v103 = v36;
          operator delete(v38);
LABEL_83:
          if (v98 != v101)
          {
            free(v98);
          }

          return v32;
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
LABEL_81:
        v38 = v102;
        goto LABEL_82;
      }
    }

    else
    {
      v89[0] = "specified type ";
      v90 = 259;
      mlir::OpState::emitError(this, v89, v97);
      if (v97[0])
      {
        v60 = &v94;
        mlir::DiagnosticArgument::DiagnosticArgument(&v94, v92);
        v61 = v98;
        if (v99 >= v100)
        {
          if (v98 <= &v94 && v98 + 24 * v99 > &v94)
          {
            v81 = &v94 - v98;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v99 + 1, 24);
            v61 = v98;
            v60 = (v98 + v81);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v99 + 1, 24);
            v60 = &v94;
            v61 = v98;
          }
        }

        v62 = &v61[24 * v99];
        v63 = *v60;
        *(v62 + 2) = *(v60 + 2);
        *v62 = v63;
        v64 = ++v99;
        if (v97[0])
        {
          v94 = 3;
          v95 = " does not match the inferred type ";
          v96 = 34;
          v65 = &v94;
          v66 = v98;
          if (v64 >= v100)
          {
            if (v98 <= &v94 && v98 + 24 * v64 > &v94)
            {
              v83 = &v94 - v98;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v64 + 1, 24);
              v66 = v98;
              v65 = (v98 + v83);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v64 + 1, 24);
              v65 = &v94;
              v66 = v98;
            }
          }

          v67 = &v66[24 * v99];
          v68 = *v65;
          *(v67 + 2) = *(v65 + 2);
          *v67 = v68;
          ++v99;
          if (v97[0])
          {
            v69 = &v94;
            mlir::DiagnosticArgument::DiagnosticArgument(&v94, v91);
            v70 = v98;
            if (v99 >= v100)
            {
              if (v98 <= &v94 && v98 + 24 * v99 > &v94)
              {
                v85 = &v94 - v98;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v99 + 1, 24);
                v70 = v98;
                v69 = (v98 + v85);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v99 + 1, 24);
                v69 = &v94;
                v70 = v98;
              }
            }

            v71 = &v70[24 * v99];
            v72 = *v69;
            *(v71 + 2) = *(v69 + 2);
            *v71 = v72;
            ++v99;
          }
        }
      }

      v32 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v97);
      if (v97[0])
      {
        mlir::InFlightDiagnostic::report(v97);
      }

      if (v107 == 1)
      {
        if (v106 != &v107)
        {
          free(v106);
        }

        v73 = __p;
        if (__p)
        {
          v74 = v105;
          v75 = __p;
          if (v105 != __p)
          {
            do
            {
              v74 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v74 - 1);
            }

            while (v74 != v73);
            v75 = __p;
          }

          v105 = v73;
          operator delete(v75);
        }

        v36 = v102;
        if (!v102)
        {
          goto LABEL_83;
        }

        v76 = v103;
        v38 = v102;
        if (v103 == v102)
        {
          goto LABEL_82;
        }

        do
        {
          v78 = *--v76;
          v77 = v78;
          *v76 = 0;
          if (v78)
          {
            operator delete[](v77);
          }
        }

        while (v76 != v36);
        goto LABEL_81;
      }
    }
  }

  else
  {
    v89[0] = "failed to infer expectedType from sourceType ";
    v90 = 259;
    mlir::OpState::emitError(this, v89, v97);
    if (v97[0])
    {
      v41 = &v94;
      mlir::DiagnosticArgument::DiagnosticArgument(&v94, v93);
      v42 = v98;
      if (v99 >= v100)
      {
        if (v98 <= &v94 && v98 + 24 * v99 > &v94)
        {
          v80 = &v94 - v98;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v99 + 1, 24);
          v42 = v98;
          v41 = (v98 + v80);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v99 + 1, 24);
          v41 = &v94;
          v42 = v98;
        }
      }

      v43 = &v42[24 * v99];
      v44 = *v41;
      *(v43 + 2) = *(v41 + 2);
      *v43 = v44;
      v45 = ++v99;
      if (v97[0])
      {
        v94 = 3;
        v95 = ", specified resultType is ";
        v96 = 26;
        v46 = &v94;
        v47 = v98;
        if (v45 >= v100)
        {
          if (v98 <= &v94 && v98 + 24 * v45 > &v94)
          {
            v82 = &v94 - v98;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v45 + 1, 24);
            v47 = v98;
            v46 = (v98 + v82);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v45 + 1, 24);
            v46 = &v94;
            v47 = v98;
          }
        }

        v48 = &v47[24 * v99];
        v49 = *v46;
        *(v48 + 2) = *(v46 + 2);
        *v48 = v49;
        ++v99;
        if (v97[0])
        {
          v50 = &v94;
          mlir::DiagnosticArgument::DiagnosticArgument(&v94, v92);
          v51 = v98;
          if (v99 >= v100)
          {
            if (v98 <= &v94 && v98 + 24 * v99 > &v94)
            {
              v84 = &v94 - v98;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v99 + 1, 24);
              v51 = v98;
              v50 = (v98 + v84);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v99 + 1, 24);
              v50 = &v94;
              v51 = v98;
            }
          }

          v52 = &v51[24 * v99];
          v53 = *v50;
          *(v52 + 2) = *(v50 + 2);
          *v52 = v53;
          ++v99;
        }
      }
    }

    v32 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v97);
    if (v97[0])
    {
      mlir::InFlightDiagnostic::report(v97);
    }

    if (v107 == 1)
    {
      if (v106 != &v107)
      {
        free(v106);
      }

      v54 = __p;
      if (__p)
      {
        v55 = v105;
        v56 = __p;
        if (v105 != __p)
        {
          do
          {
            v55 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v55 - 1);
          }

          while (v55 != v54);
          v56 = __p;
        }

        v105 = v54;
        operator delete(v56);
      }

      v36 = v102;
      if (!v102)
      {
        goto LABEL_83;
      }

      v57 = v103;
      v38 = v102;
      if (v103 == v102)
      {
        goto LABEL_82;
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

      while (v57 != v36);
      goto LABEL_81;
    }
  }

  return v32;
}

uint64_t mlir::tensor::PadOp::inferResultType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26[4] = *MEMORY[0x1E69E9840];
  v23 = a1;
  mlir::ArrayAttr::getValue(&v23);
  v14 = a3 == v13 && a5 == v13;
  if (!v14 || a7 && a7 != a5)
  {
    return 0;
  }

  v24 = v26;
  v25 = 0x400000000;
  if (!a5)
  {
    v19 = 0;
    v20 = v26;
    goto LABEL_24;
  }

  v16 = 0;
  do
  {
    if (*(mlir::ArrayAttr::getValue(&v23) + 8 * v16) == 0x8000000000000000 || *(a2 + 8 * v16) == 0x8000000000000000 || *(a4 + 8 * v16) == 0x8000000000000000)
    {
      if (a7)
      {
        v17 = *(a6 + 8 * v16);
        v18 = v25;
        if (v25 < HIDWORD(v25))
        {
          goto LABEL_19;
        }
      }

      else
      {
        v17 = 0x8000000000000000;
        v18 = v25;
        if (v25 < HIDWORD(v25))
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      v17 = *(a2 + 8 * v16) + *(a4 + 8 * v16) + *(mlir::ArrayAttr::getValue(&v23) + 8 * v16);
      v18 = v25;
      if (v25 < HIDWORD(v25))
      {
        goto LABEL_19;
      }
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v26, v18 + 1, 8);
    v18 = v25;
LABEL_19:
    *(v24 + v18) = v17;
    v19 = (v25 + 1);
    LODWORD(v25) = v25 + 1;
    ++v16;
  }

  while (a5 != v16);
  v20 = v24;
LABEL_24:
  RHS = mlir::AffineBinaryOpExpr::getRHS(&v23);
  result = mlir::RankedTensorType::get(v20, v19, RHS, 0);
  if (v24 != v26)
  {
    v22 = result;
    free(v24);
    return v22;
  }

  return result;
}

BOOL mlir::tensor::PadOp::verifyRegions(mlir::Block ***this)
{
  v91 = *MEMORY[0x1E69E9840];
  v2 = ((&(*this)[2 * ((*(*this + 11) >> 23) & 1) + 8] + ((*(*this + 11) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10);
  if (*(*this + 9))
  {
    v3 = (*this - 2);
  }

  else
  {
    v3 = 0;
  }

  v79 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&v79);
  v5 = v4;
  v6 = *(v2 + 8);
  if (v6)
  {
    v7 = (v6 - 8);
  }

  else
  {
    v7 = 0;
  }

  if (((*(v7 + 7) - *(v7 + 6)) >> 3) != v4)
  {
    v74[0] = "expected the block to have ";
    v75 = 259;
    mlir::OpState::emitError(this, v74, &v79);
    if (v79)
    {
      v76 = 5;
      v77 = v5;
      v25 = &v76;
      v26 = v81;
      if (v82 >= v83)
      {
        if (v81 <= &v76 && v81 + 24 * v82 > &v76)
        {
          v69 = &v76 - v81;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
          v26 = v81;
          v25 = (v81 + v69);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
          v25 = &v76;
          v26 = v81;
        }
      }

      v27 = &v26[24 * v82];
      v28 = *v25;
      *(v27 + 2) = *(v25 + 2);
      *v27 = v28;
      v29 = ++v82;
      if (v79)
      {
        v76 = 3;
        v77 = " arguments";
        v78 = 10;
        v30 = &v76;
        v31 = v81;
        if (v29 >= v83)
        {
          if (v81 <= &v76 && v81 + 24 * v29 > &v76)
          {
            v70 = &v76 - v81;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v29 + 1, 24);
            v31 = v81;
            v30 = (v81 + v70);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v29 + 1, 24);
            v30 = &v76;
            v31 = v81;
          }
        }

        v32 = &v31[24 * v82];
        v33 = *v30;
        *(v32 + 2) = *(v30 + 2);
        *v32 = v33;
        ++v82;
      }
    }

    v34 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v79);
    if (v79)
    {
      mlir::InFlightDiagnostic::report(&v79);
    }

    if (v90 != 1)
    {
      return v34;
    }

    if (v89 != &v90)
    {
      free(v89);
    }

    v35 = __p;
    if (__p)
    {
      v36 = v88;
      v37 = __p;
      if (v88 != __p)
      {
        do
        {
          v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
        }

        while (v36 != v35);
        v37 = __p;
      }

      v88 = v35;
      operator delete(v37);
    }

    v38 = v85;
    if (!v85)
    {
      goto LABEL_104;
    }

    v39 = v86;
    v40 = v85;
    if (v86 == v85)
    {
      goto LABEL_103;
    }

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
    goto LABEL_102;
  }

  ArgumentTypes = mlir::Block::getArgumentTypes(v7);
  if (ArgumentTypes == v9)
  {
LABEL_12:
    v13 = *(*(*(mlir::Block::getTerminator(v7, v9) + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    v14 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
    if (!v14)
    {
      goto LABEL_83;
    }

    v15 = *v14;
    {
      v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v17 = *(v15 + 8);
      v18 = *(v15 + 16);
      if (!v18)
      {
        goto LABEL_83;
      }
    }

    else
    {
      mlir::arith::ExtUIOp::fold();
      v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v17 = *(v15 + 8);
      v18 = *(v15 + 16);
      if (!v18)
      {
        goto LABEL_83;
      }
    }

    v19 = v17;
    v20 = v18;
    do
    {
      v21 = v20 >> 1;
      v22 = &v19[2 * (v20 >> 1)];
      v24 = *v22;
      v23 = v22 + 2;
      v20 += ~(v20 >> 1);
      if (v24 < v16)
      {
        v19 = v23;
      }

      else
      {
        v20 = v21;
      }
    }

    while (v20);
    if (v19 != &v17[2 * v18] && *v19 == v16)
    {
      v61 = v19[1];
      v79 = v14;
      v80 = v61;
      if (v13 == mlir::ElementsAttr::isSplat(&v79))
      {
        return 1;
      }

LABEL_86:
      v74[0] = "expected yield type to match shape element type";
      v75 = 259;
      mlir::OpState::emitOpError(this, v74, &v79);
      v34 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v79);
      if (v79)
      {
        mlir::InFlightDiagnostic::report(&v79);
      }

      if (v90 != 1)
      {
        return v34;
      }

      if (v89 != &v90)
      {
        free(v89);
      }

      v62 = __p;
      if (__p)
      {
        v63 = v88;
        v64 = __p;
        if (v88 != __p)
        {
          do
          {
            v63 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v63 - 1);
          }

          while (v63 != v62);
          v64 = __p;
        }

        v88 = v62;
        operator delete(v64);
      }

      v38 = v85;
      if (!v85)
      {
        goto LABEL_104;
      }

      v65 = v86;
      v40 = v85;
      if (v86 == v85)
      {
LABEL_103:
        v86 = v38;
        operator delete(v40);
LABEL_104:
        v60 = v81;
        if (v81 == v84)
        {
          return v34;
        }

LABEL_105:
        free(v60);
        return v34;
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

      while (v65 != v38);
LABEL_102:
      v40 = v85;
      goto LABEL_103;
    }

LABEL_83:
    v79 = v14;
    v80 = 0;
    if (v13 == mlir::ElementsAttr::isSplat(&v79))
    {
      return 1;
    }

    goto LABEL_86;
  }

  v10 = ArgumentTypes;
  v11 = v9;
  v12 = 0;
  while (1)
  {
    v73 = *(*v10 + 8) & 0xFFFFFFFFFFFFFFF8;
    if (!mlir::Type::isIndex(&v73))
    {
      break;
    }

    ++v12;
    v10 += 8;
    if (v10 == v11)
    {
      goto LABEL_12;
    }
  }

  v74[0] = "expected block argument ";
  v75 = 259;
  mlir::OpState::emitOpError(this, v74, &v79);
  if (v79)
  {
    v76 = 5;
    v77 = (v12 + 1);
    v43 = &v76;
    v44 = v81;
    if (v82 >= v83)
    {
      if (v81 <= &v76 && v81 + 24 * v82 > &v76)
      {
        v71 = &v76 - v81;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
        v44 = v81;
        v43 = (v81 + v71);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
        v43 = &v76;
        v44 = v81;
      }
    }

    v45 = &v44[24 * v82];
    v46 = *v43;
    *(v45 + 2) = *(v43 + 2);
    *v45 = v46;
    v47 = ++v82;
    if (v79)
    {
      v76 = 3;
      v77 = " to be an index";
      v78 = 15;
      v48 = &v76;
      v49 = v81;
      if (v47 >= v83)
      {
        if (v81 <= &v76 && v81 + 24 * v47 > &v76)
        {
          v72 = &v76 - v81;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v47 + 1, 24);
          v49 = v81;
          v48 = (v81 + v72);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v47 + 1, 24);
          v48 = &v76;
          v49 = v81;
        }
      }

      v50 = &v49[24 * v82];
      v51 = *v48;
      *(v50 + 2) = *(v48 + 2);
      *v50 = v51;
      ++v82;
    }
  }

  v34 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v79);
  if (v79)
  {
    mlir::InFlightDiagnostic::report(&v79);
  }

  if (v90)
  {
    if (v89 != &v90)
    {
      free(v89);
    }

    v52 = __p;
    if (__p)
    {
      v53 = v88;
      v54 = __p;
      if (v88 != __p)
      {
        do
        {
          v53 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v53 - 1);
        }

        while (v53 != v52);
        v54 = __p;
      }

      v88 = v52;
      operator delete(v54);
    }

    v55 = v85;
    if (v85)
    {
      v56 = v86;
      v57 = v85;
      if (v86 != v85)
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
        v57 = v85;
      }

      v86 = v55;
      operator delete(v57);
    }

    v60 = v81;
    if (v81 != v84)
    {
      goto LABEL_105;
    }
  }

  return v34;
}

void mlir::tensor::PadOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, unint64_t a12, char a13, const void *a14, uint64_t a15)
{
  v19 = a3;
  if (a3)
  {
    *(a2 + 192) = 0;
    v22 = *(a2 + 120);
    v23 = a15 + v22;
    if (a15 + v22 <= *(a2 + 124))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = mlir::tensor::PadOp::inferResultType(*(a4 + 8) & 0xFFFFFFFFFFFFFFF8, a5, a6, a7, a8, 0, 0);
    *(a2 + 192) = 0;
    v22 = *(a2 + 120);
    v23 = a15 + v22;
    if (a15 + v22 <= *(a2 + 124))
    {
LABEL_3:
      if (!a15)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 112, a2 + 128, v23, 16);
  LODWORD(v22) = *(a2 + 120);
  if (a15)
  {
LABEL_4:
    memcpy((*(a2 + 112) + 16 * v22), a14, 16 * a15);
    LODWORD(v22) = *(a2 + 120);
  }

LABEL_5:
  *(a2 + 120) = v22 + a15;
  DenseI64ArrayAttr = mlir::Builder::getDenseI64ArrayAttr(a1, a5, a6);
  v26 = mlir::Builder::getDenseI64ArrayAttr(a1, a7, a8);
  if (a13)
  {
    UnitAttr = mlir::Builder::getUnitAttr(a1, v25);
  }

  else
  {
    UnitAttr = 0;
  }

  mlir::tensor::PadOp::build(UnitAttr, a2, v19, a4, a9, a10, a11, a12, DenseI64ArrayAttr, v26, UnitAttr);
}

void mlir::tensor::PadOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v30 = a4;
  mlir::OperationState::addOperands(a2, &v30, 1uLL);
  mlir::OperationState::addOperands(a2, a5, a6);
  mlir::OperationState::addOperands(a2, a7, a8);
  v17 = *(a2 + 256);
  if (v17)
  {
    v18 = a9;
    v17[6] = 1;
    v17[7] = a6;
    v17[8] = a8;
    v19 = *(a2 + 256);
    if (v19)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v24 = operator new(0x28uLL);
    *v24 = 0u;
    v24[1] = 0u;
    *(v24 + 8) = 0;
    *(a2 + 256) = v24;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v31;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v31;
    {
      mlir::tensor::PadOp::build();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v25 = *(a2 + 256);
    v18 = a9;
    v25[6] = 1;
    v25[7] = a6;
    v25[8] = a8;
    v19 = *(a2 + 256);
    if (v19)
    {
LABEL_3:
      v21 = a10;
      v20 = a11;
      *(v19 + 16) = v18;
      v22 = *(a2 + 256);
      if (v22)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  v26 = operator new(0x28uLL);
  *v26 = 0u;
  v26[1] = 0u;
  *(v26 + 8) = 0;
  *(a2 + 256) = v26;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v31;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v31;
  {
    mlir::tensor::PadOp::build();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  v21 = a10;
  v20 = a11;
  *(*(a2 + 256) + 16) = v18;
  v22 = *(a2 + 256);
  if (v22)
  {
LABEL_4:
    *(v22 + 8) = v21;
    if (!v20)
    {
      goto LABEL_5;
    }

LABEL_17:
    v28 = *(a2 + 256);
    if (!v28)
    {
      v29 = operator new(0x28uLL);
      *v29 = 0u;
      v29[1] = 0u;
      *(v29 + 8) = 0;
      *(a2 + 256) = v29;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &v31;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &v31;
      {
        mlir::tensor::PadOp::build();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v28 = *(a2 + 256);
    }

    *v28 = v20;
    mlir::OperationState::addRegion(a2);
    v23 = *(a2 + 72);
    if (v23 >= *(a2 + 76))
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

LABEL_14:
  v27 = operator new(0x28uLL);
  *v27 = 0u;
  v27[1] = 0u;
  *(v27 + 8) = 0;
  *(a2 + 256) = v27;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v31;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v31;
  {
    mlir::tensor::PadOp::build();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  *(*(a2 + 256) + 8) = v21;
  if (v20)
  {
    goto LABEL_17;
  }

LABEL_5:
  mlir::OperationState::addRegion(a2);
  v23 = *(a2 + 72);
  if (v23 >= *(a2 + 76))
  {
LABEL_6:
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v23 + 1, 8);
    LODWORD(v23) = *(a2 + 72);
  }

LABEL_7:
  *(*(a2 + 64) + 8 * v23) = a3;
  ++*(a2 + 72);
}

void mlir::tensor::PadOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7, uint64_t a8, unsigned __int8 a9, void *__src, uint64_t a11)
{
  v38[4] = *MEMORY[0x1E69E9840];
  v17 = *(a4 + 8);
  v36 = v38;
  v37 = 0x400000000;
  v33 = v35;
  v34 = 0x400000000;
  v30 = v32;
  v31 = 0x400000000;
  v27 = v29;
  v28 = 0x400000000;
  mlir::dispatchIndexOpFoldResults(a5, a6, &v36, &v30);
  mlir::dispatchIndexOpFoldResults(a7, a8, &v33, &v27);
  if (a3)
  {
    *(a2 + 192) = 0;
    v18 = *(a2 + 120);
    v19 = a11 + v18;
    if (a11 + v18 <= *(a2 + 124))
    {
      goto LABEL_3;
    }
  }

  else
  {
    a3 = mlir::tensor::PadOp::inferResultType(v17 & 0xFFFFFFFFFFFFFFF8, v30, v31, v27, v28, 0, 0);
    *(a2 + 192) = 0;
    v18 = *(a2 + 120);
    v19 = a11 + v18;
    if (a11 + v18 <= *(a2 + 124))
    {
LABEL_3:
      v20 = a9;
      if (!a11)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 112, a2 + 128, v19, 16);
  LODWORD(v18) = *(a2 + 120);
  v20 = a9;
  if (a11)
  {
LABEL_4:
    memcpy((*(a2 + 112) + 16 * v18), __src, 16 * a11);
    LODWORD(v18) = *(a2 + 120);
  }

LABEL_5:
  *(a2 + 120) = v18 + a11;
  mlir::ValueRange::ValueRange(v26, v36, v37);
  mlir::ValueRange::ValueRange(v25, v33, v34);
  DenseI64ArrayAttr = mlir::Builder::getDenseI64ArrayAttr(a1, v30, v31);
  v23 = mlir::Builder::getDenseI64ArrayAttr(a1, v27, v28);
  if (v20)
  {
    UnitAttr = mlir::Builder::getUnitAttr(a1, v22);
  }

  else
  {
    UnitAttr = 0;
  }

  mlir::tensor::PadOp::build(UnitAttr, a2, a3, a4, v26[0], v26[1], v25[0], v25[1], DenseI64ArrayAttr, v23, UnitAttr);
  if (v27 != v29)
  {
    free(v27);
  }

  if (v30 != v32)
  {
    free(v30);
  }

  if (v33 != v35)
  {
    free(v33);
  }

  if (v36 != v38)
  {
    free(v36);
  }
}

void mlir::tensor::PadOp::getCanonicalizationPatterns(void *a1, uint64_t a2)
{
  v4 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v124, 1);
  mlir::Pattern::Pattern((v4 + 2), "tensor.pad", 10, v124, a2, 0, 0);
  *v4 = &unk_1F5B0A1C8;
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

  v124 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::FoldStaticZeroPadding]";
  v125 = 94;
  v9 = llvm::StringRef::find(&v124, "DesiredTypeName = ", 0x12uLL, 0);
  if (v125 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v125;
  }

  v11 = &v124[v10];
  v12 = v125 - v10;
  if (v125 - v10 >= 0x12)
  {
    v13 = 18;
  }

  else
  {
    v13 = v125 - v10;
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
    goto LABEL_158;
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
      goto LABEL_159;
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
  mlir::PatternBenefit::PatternBenefit(&v124, 1);
  mlir::Pattern::Pattern((v24 + 2), "tensor.pad", 10, v124, a2, 0, 0);
  *v24 = &unk_1F5B0A268;
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

  v124 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::FoldSourceTensorCast]";
  v125 = 93;
  v29 = llvm::StringRef::find(&v124, "DesiredTypeName = ", 0x12uLL, 0);
  if (v125 >= v29)
  {
    v30 = v29;
  }

  else
  {
    v30 = v125;
  }

  v31 = &v124[v30];
  v32 = v125 - v30;
  if (v125 - v30 >= 0x12)
  {
    v33 = 18;
  }

  else
  {
    v33 = v125 - v30;
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
    goto LABEL_158;
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
      goto LABEL_159;
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
  mlir::PatternBenefit::PatternBenefit(&v124, 1);
  mlir::Pattern::Pattern((v44 + 2), "tensor.pad", 10, v124, a2, 0, 0);
  *v44 = &unk_1F5B0A2D8;
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

  v124 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::FoldTargetTensorCast]";
  v125 = 93;
  v49 = llvm::StringRef::find(&v124, "DesiredTypeName = ", 0x12uLL, 0);
  if (v125 >= v49)
  {
    v50 = v49;
  }

  else
  {
    v50 = v125;
  }

  v51 = &v124[v50];
  v52 = v125 - v50;
  if (v125 - v50 >= 0x12)
  {
    v53 = 18;
  }

  else
  {
    v53 = v125 - v50;
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
    goto LABEL_158;
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
    if (v61 >> 61)
    {
      goto LABEL_159;
    }

    v62 = operator new(8 * v61);
  }

  else
  {
    v62 = 0;
  }

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
  v64 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v124, 1);
  mlir::Pattern::Pattern((v64 + 2), "tensor.pad", 10, v124, a2, 0, 0);
  *v64 = &unk_1F5B0A348;
  if (*(v64 + 9))
  {
    v65 = v64[22];
    if (v65 <= v64[23])
    {
      goto LABEL_81;
    }

LABEL_92:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v64 + 20), (v64 + 24), v65, 16);
    v64[22] = v64[22];
    v67 = a1[2];
    v66 = a1[3];
    if (v67 < v66)
    {
      goto LABEL_82;
    }

    goto LABEL_93;
  }

  v124 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::FoldOrthogonalPaddings]";
  v125 = 95;
  v69 = llvm::StringRef::find(&v124, "DesiredTypeName = ", 0x12uLL, 0);
  if (v125 >= v69)
  {
    v70 = v69;
  }

  else
  {
    v70 = v125;
  }

  v71 = &v124[v70];
  v72 = v125 - v70;
  if (v125 - v70 >= 0x12)
  {
    v73 = 18;
  }

  else
  {
    v73 = v125 - v70;
  }

  v74 = &v71[v73];
  v75 = v72 - v73;
  if (v75 >= v75 - 1)
  {
    --v75;
  }

  *(v64 + 8) = v74;
  *(v64 + 9) = v75;
  v65 = v64[22];
  if (v65 > v64[23])
  {
    goto LABEL_92;
  }

LABEL_81:
  v64[22] = v65;
  v67 = a1[2];
  v66 = a1[3];
  if (v67 < v66)
  {
LABEL_82:
    *v67 = v64;
    v68 = v67 + 8;
    goto LABEL_105;
  }

LABEL_93:
  v76 = a1[1];
  v77 = v67 - v76;
  v78 = (v67 - v76) >> 3;
  v79 = v78 + 1;
  if ((v78 + 1) >> 61)
  {
    goto LABEL_158;
  }

  v80 = v66 - v76;
  if (v80 >> 2 > v79)
  {
    v79 = v80 >> 2;
  }

  if (v80 >= 0x7FFFFFFFFFFFFFF8)
  {
    v81 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v81 = v79;
  }

  if (v81)
  {
    if (v81 >> 61)
    {
      goto LABEL_159;
    }

    v82 = operator new(8 * v81);
  }

  else
  {
    v82 = 0;
  }

  v83 = &v82[8 * v78];
  *v83 = v64;
  v68 = v83 + 8;
  memcpy(v82, v76, v77);
  a1[1] = v82;
  a1[2] = v68;
  a1[3] = &v82[8 * v81];
  if (v76)
  {
    operator delete(v76);
  }

LABEL_105:
  a1[2] = v68;
  v84 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v124, 1);
  mlir::Pattern::Pattern((v84 + 2), "tensor.pad", 10, v124, a2, 0, 0);
  *v84 = &unk_1F5B0A3B8;
  if (*(v84 + 9))
  {
    v85 = v84[22];
    if (v85 <= v84[23])
    {
      goto LABEL_107;
    }

LABEL_118:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v84 + 20), (v84 + 24), v85, 16);
    v84[22] = v84[22];
    v87 = a1[2];
    v86 = a1[3];
    if (v87 < v86)
    {
      goto LABEL_108;
    }

    goto LABEL_119;
  }

  v124 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::FoldStaticPadding]";
  v125 = 90;
  v89 = llvm::StringRef::find(&v124, "DesiredTypeName = ", 0x12uLL, 0);
  if (v125 >= v89)
  {
    v90 = v89;
  }

  else
  {
    v90 = v125;
  }

  v91 = &v124[v90];
  v92 = v125 - v90;
  if (v125 - v90 >= 0x12)
  {
    v93 = 18;
  }

  else
  {
    v93 = v125 - v90;
  }

  v94 = &v91[v93];
  v95 = v92 - v93;
  if (v95 >= v95 - 1)
  {
    --v95;
  }

  *(v84 + 8) = v94;
  *(v84 + 9) = v95;
  v85 = v84[22];
  if (v85 > v84[23])
  {
    goto LABEL_118;
  }

LABEL_107:
  v84[22] = v85;
  v87 = a1[2];
  v86 = a1[3];
  if (v87 < v86)
  {
LABEL_108:
    *v87 = v84;
    v88 = v87 + 8;
    goto LABEL_131;
  }

LABEL_119:
  v96 = a1[1];
  v97 = v87 - v96;
  v98 = (v87 - v96) >> 3;
  v99 = v98 + 1;
  if ((v98 + 1) >> 61)
  {
    goto LABEL_158;
  }

  v100 = v86 - v96;
  if (v100 >> 2 > v99)
  {
    v99 = v100 >> 2;
  }

  if (v100 >= 0x7FFFFFFFFFFFFFF8)
  {
    v101 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v101 = v99;
  }

  if (v101)
  {
    if (v101 >> 61)
    {
      goto LABEL_159;
    }

    v102 = operator new(8 * v101);
  }

  else
  {
    v102 = 0;
  }

  v103 = &v102[8 * v98];
  *v103 = v84;
  v88 = v103 + 8;
  memcpy(v102, v96, v97);
  a1[1] = v102;
  a1[2] = v88;
  a1[3] = &v102[8 * v101];
  if (v96)
  {
    operator delete(v96);
  }

LABEL_131:
  a1[2] = v88;
  v104 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v124, 1);
  mlir::Pattern::Pattern((v104 + 2), "tensor.pad", 10, v124, a2, 0, 0);
  *v104 = &unk_1F5B0A428;
  if (*(v104 + 9))
  {
    v105 = v104[22];
    if (v105 <= v104[23])
    {
      goto LABEL_133;
    }

LABEL_144:
    llvm::SmallVectorBase<unsigned int>::grow_pod((v104 + 20), (v104 + 24), v105, 16);
    v104[22] = v104[22];
    v107 = a1[2];
    v106 = a1[3];
    if (v107 < v106)
    {
      goto LABEL_134;
    }

    goto LABEL_145;
  }

  v124 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::FoldConsecutiveConstantPadding]";
  v125 = 103;
  v109 = llvm::StringRef::find(&v124, "DesiredTypeName = ", 0x12uLL, 0);
  if (v125 >= v109)
  {
    v110 = v109;
  }

  else
  {
    v110 = v125;
  }

  v111 = &v124[v110];
  v112 = v125 - v110;
  if (v125 - v110 >= 0x12)
  {
    v113 = 18;
  }

  else
  {
    v113 = v125 - v110;
  }

  v114 = &v111[v113];
  v115 = v112 - v113;
  if (v115 >= v115 - 1)
  {
    --v115;
  }

  *(v104 + 8) = v114;
  *(v104 + 9) = v115;
  v105 = v104[22];
  if (v105 > v104[23])
  {
    goto LABEL_144;
  }

LABEL_133:
  v104[22] = v105;
  v107 = a1[2];
  v106 = a1[3];
  if (v107 < v106)
  {
LABEL_134:
    *v107 = v104;
    v108 = v107 + 8;
    goto LABEL_157;
  }

LABEL_145:
  v116 = a1[1];
  v117 = v107 - v116;
  v118 = (v107 - v116) >> 3;
  v119 = v118 + 1;
  if ((v118 + 1) >> 61)
  {
LABEL_158:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v120 = v106 - v116;
  if (v120 >> 2 > v119)
  {
    v119 = v120 >> 2;
  }

  if (v120 >= 0x7FFFFFFFFFFFFFF8)
  {
    v121 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v121 = v119;
  }

  if (v121)
  {
    if (!(v121 >> 61))
    {
      v122 = operator new(8 * v121);
      goto LABEL_155;
    }

LABEL_159:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v122 = 0;
LABEL_155:
  v123 = &v122[8 * v118];
  *v123 = v104;
  v108 = v123 + 8;
  memcpy(v122, v116, v117);
  a1[1] = v122;
  a1[2] = v108;
  a1[3] = &v122[8 * v121];
  if (v116)
  {
    operator delete(v116);
  }

LABEL_157:
  a1[2] = v108;
}

uint64_t mlir::tensor::PadOp::getConstantPaddingValue(mlir::tensor::PadOp *this, uint64_t a2)
{
  v3 = *(((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40) + 8);
  if (v3)
  {
    v4 = (v3 - 8);
  }

  else
  {
    v4 = 0;
  }

  Terminator = mlir::Block::getTerminator(v4, a2);
  result = 0;
  if (Terminator)
  {
    v7 = *(*(Terminator + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::YieldOp,void>::id;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v13 = *(*(Terminator + 72) + 24);
    v14 = v13;
    DefiningOp = mlir::Value::getDefiningOp(&v14);
    if (!DefiningOp)
    {
      goto LABEL_14;
    }

    {
      v12 = DefiningOp;
      DefiningOp = v12;
    }

    if ((*(**(DefiningOp + 48) + 32))(*(DefiningOp + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
    {
      return v13;
    }

    else
    {
LABEL_14:
      ParentBlock = mlir::Value::getParentBlock(&v13);
      v10 = *(((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40) + 8);
      if (v10)
      {
        v11 = v10 - 8;
      }

      else
      {
        v11 = 0;
      }

      if (ParentBlock == v11)
      {
        return 0;
      }

      else
      {
        return v13;
      }
    }
  }

  return result;
}

uint64_t mlir::tensor::PadOp::fold(uint64_t a1)
{
  if (*(*a1 + 36))
  {
    v2 = *a1 - 16;
  }

  else
  {
    v2 = 0;
  }

  v10 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (!mlir::TensorType::hasRank(&v10))
  {
    return 0;
  }

  Value = mlir::ArrayAttr::getValue(&v10);
  if (v4)
  {
    v5 = 8 * v4;
    while (*Value != 0x8000000000000000)
    {
      ++Value;
      v5 -= 8;
      if (!v5)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

LABEL_9:
  v6 = *(*a1 + 36) ? *a1 - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0);
  v8 = *(*(*a1 + 72) + 24);
  if ((*(v8 + 8) ^ *(NextResultAtOffset + 8)) > 7 || *(*a1 + 80))
  {
    return 0;
  }

  return v8 | 4;
}