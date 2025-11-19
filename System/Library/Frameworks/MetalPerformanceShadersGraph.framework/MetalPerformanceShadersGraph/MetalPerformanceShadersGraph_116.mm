uint64_t mlir::mpsx::FPToIntClampedOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, unint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v44 = *MEMORY[0x1E69E9840];
  v41[0] = a4;
  v41[1] = a5;
  v34 = a6;
  LOBYTE(v35) = 0;
  v36 = 0;
  v37 = a9;
  v38 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v34);
    if (v36 == 1)
    {
      v36 = 0;
    }

    mlir::OperationName::OperationName(&v35, "mpsx.fp_to_int_clamped", 22, Context);
    v36 = 1;
  }

  v39 = a4;
  v40 = a5;
  if (a5)
  {
    v15.var0.var0 = mlir::UnknownLoc::get(this, a2);
    if (mlir::mpsx::FPToIntClampedOpAdaptor::verify(&v34, v15))
    {
      v42 = v39;
      v16 = (*(mlir::ValueRange::dereference_iterator(&v42, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8))
      {
        v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8);
        v32 = v16;
        v33 = v17;
        if (v16)
        {
          Value = mlir::AffineMapAttr::getValue(&v34);
          v19 = mlir::DictionaryAttr::end(&v34);
          v20 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(Value, v19, **(v35 + 96));
          if (v21)
          {
            v22 = *(v20 + 1);
          }

          else
          {
            v22 = 0;
          }

          *&v42 = v22;
          v27 = mlir::AffineMapAttr::getValue(&v42);
          LOBYTE(v42) = 0;
          v43 = 0;
          v26 = mlir::ShapedType::cloneWith(&v32, &v42, v27);
LABEL_18:
          v28 = *(a11 + 8);
          if (v28 >= *(a11 + 12))
          {
            v31 = v26;
            llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v28 + 1, 8);
            v26 = v31;
            v28 = *(a11 + 8);
          }

          *(*a11 + 8 * v28) = v26;
          goto LABEL_21;
        }
      }

      else
      {
        v32 = 0;
        v33 = 0;
      }

      v26 = *(mlir::ValueRange::dereference_iterator(v41, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
      goto LABEL_18;
    }
  }

  v23 = mlir::Float32Type::get(this, a2);
  v24 = mlir::UnrankedTensorType::get(v23);
  v25 = *(a11 + 8);
  if (v25 >= *(a11 + 12))
  {
    v30 = v24;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v25 + 1, 8);
    v24 = v30;
    LODWORD(v25) = *(a11 + 8);
  }

  *(*a11 + 8 * v25) = v24;
LABEL_21:
  ++*(a11 + 8);
  return 1;
}

BOOL mlir::mpsx::FPToIntClampedOpAdaptor::verify(mlir::mpsx::FPToIntClampedOpAdaptor *this, Location a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v24 = *this;
  for (i = mlir::AffineMapAttr::getValue(&v24); i != mlir::DictionaryAttr::end(&v24); i = (i + 16))
  {
    if (mlir::CallGraphNode::getCallableRegion(i) == **(*(this + 1) + 96))
    {
      v14 = *(i + 1);
      if (v14)
      {
        if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
        {
          v22[0] = "'mpsx.fp_to_int_clamped' op attribute 'resultElementType' failed to satisfy constraint: any type attribute";
          v23 = 259;
          mlir::emitError(a2.var0.var0, v22, v25);
          v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
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
            }

            v9 = v28;
            if (v28)
            {
              v18 = v29;
              v11 = v28;
              if (v29 == v28)
              {
LABEL_40:
                v29 = v9;
                operator delete(v11);
                goto LABEL_41;
              }

              do
              {
                v20 = *--v18;
                v19 = v20;
                *v18 = 0;
                if (v20)
                {
                  operator delete[](v19);
                }
              }

              while (v18 != v9);
LABEL_39:
              v11 = v28;
              goto LABEL_40;
            }

            goto LABEL_41;
          }

          return v5;
        }

        v25[0] = *(i + 1);
        mlir::AffineMapAttr::getValue(v25);
      }

      return 1;
    }
  }

  v22[0] = "'mpsx.fp_to_int_clamped' op requires attribute 'resultElementType'";
  v23 = 259;
  mlir::emitError(a2.var0.var0, v22, v25);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
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
      if (v29 == v28)
      {
        goto LABEL_40;
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
      goto LABEL_39;
    }

LABEL_41:
    if (v26 != &v27)
    {
      free(v26);
    }
  }

  return v5;
}

BOOL mlir::mpsx::FPToIntClampedOp::isSupportedForTypes(void *a1, void *a2)
{
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(a1);
  v4 = mlir::getElementTypeOrSelf(a2);
  if (mlir::Type::isF16(&ElementTypeOrSelf))
  {
    return mlir::Type::isInteger(&v4, 8);
  }

  if (mlir::Type::isBF16(&ElementTypeOrSelf))
  {
    return mlir::Type::isInteger(&v4, 8);
  }

  result = mlir::Type::isF32(&ElementTypeOrSelf);
  if (result)
  {
    return mlir::Type::isInteger(&v4, 8);
  }

  return result;
}

uint64_t mlir::mpsx::TensorToBufferOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, void *a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v97 = *MEMORY[0x1E69E9840];
  v90 = a6;
  LOBYTE(v91) = 0;
  v92 = 0;
  v93 = a9;
  v94 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v90);
    if (v92 == 1)
    {
      v92 = 0;
    }

    mlir::OperationName::OperationName(&v91, "mpsx.tensor_to_buffer", 21, Context);
    v92 = 1;
  }

  v95 = a4;
  v96 = a5;
  if (!a5)
  {
    goto LABEL_13;
  }

  v17.var0.var0 = mlir::UnknownLoc::get(this, a2);
  if (!mlir::mpsx::TensorToBufferOpAdaptor::verify(&v90, v17))
  {
    goto LABEL_13;
  }

  v87 = v95;
  v88 = 0;
  v18 = (*(mlir::ValueRange::dereference_iterator(&v87, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
  {
    v82 = 0;
    v83 = 0;
    goto LABEL_13;
  }

  v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
  v82 = v18;
  v83 = v19;
  if (!v18)
  {
LABEL_13:
    v27 = mlir::Float32Type::get(this, a2);
    v28 = mlir::UnrankedMemRefType::get(v27, 0x4000u);
    v29 = *(a11 + 8);
    if (v29 >= *(a11 + 12))
    {
      v77 = v28;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v29 + 1, 8);
      v28 = v77;
      LODWORD(v29) = *(a11 + 8);
    }

    *(*a11 + 8 * v29) = v28;
    ++*(a11 + 8);
    return 1;
  }

  isSplat = mlir::ElementsAttr::isSplat(&v82);
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v82);
  v23 = v21;
  v87 = v89;
  v88 = 0x500000000;
  v24 = (8 * v21) >> 3;
  if (v24 >= 6)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v87, v89, v24, 8);
    v25 = v88;
    v26 = 8 * v23;
    if (!v23)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v25 = 0;
  v26 = 8 * v21;
  if (v21)
  {
LABEL_18:
    memcpy(v87 + 8 * v25, ArgAttrsAttr, v26);
    v25 = v88;
  }

LABEL_19:
  LODWORD(v88) = v25 + (v26 >> 3);
  Value = mlir::AffineMapAttr::getValue(&v90);
  v32 = mlir::DictionaryAttr::end(&v90);
  v33 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(Value, v32, *(*(v91 + 96) + 24));
  if (v34)
  {
    v35 = *(v33 + 1);
    if (v35)
    {
      v36 = *(*v35 + 136);
      if (v36 != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
      {
        v35 = 0;
      }

      v84 = v35;
      if (v36 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
      {
        isSplat = mlir::AffineMapAttr::getValue(&v84);
      }
    }
  }

  v37 = mlir::AffineMapAttr::getValue(&v90);
  v38 = mlir::DictionaryAttr::end(&v90);
  v39 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(v37, v38, **(v91 + 96));
  if ((v40 & 1) == 0 || (v41 = *(v39 + 1)) == 0 || !mlir::DenseIntElementsAttr::classof(v41))
  {
    v50 = mlir::CallableOpInterface::getArgAttrsAttr(&v82);
    v51 = v49;
    v84 = v86;
    v85 = 0x500000000;
    v52 = (8 * v49) >> 3;
    if (v52 < 6)
    {
      v53 = 0;
      v54 = 8 * v49;
      if (!v49)
      {
        goto LABEL_39;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v86, v52, 8);
      v53 = v85;
      v54 = 8 * v51;
      if (!v51)
      {
LABEL_39:
        v55 = v53 + (v54 >> 3);
        LODWORD(v85) = v53 + (v54 >> 3);
        if (v85)
        {
          v56 = v84;
LABEL_41:
          v57 = mlir::MemRefType::get(v56, v55, isSplat, 0, 0, 0);
LABEL_79:
          v76 = *(a11 + 8);
          if (v76 >= *(a11 + 12))
          {
            v78 = v57;
            llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v76 + 1, 8);
            v57 = v78;
            v76 = *(a11 + 8);
          }

          *(*a11 + 8 * v76) = v57;
          ++*(a11 + 8);
          if (v84 != v86)
          {
            free(v84);
          }

          if (v87 != v89)
          {
            free(v87);
          }

          return 1;
        }

LABEL_78:
        v57 = mlir::UnrankedMemRefType::get(isSplat, 0x4000u);
        goto LABEL_79;
      }
    }

    memcpy(v84 + 8 * v53, v50, v54);
    v53 = v85;
    goto LABEL_39;
  }

  v42 = v88;
  v43 = mlir::AffineMapAttr::getValue(&v90);
  v44 = mlir::DictionaryAttr::end(&v90);
  v45 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(v43, v44, **(v91 + 96));
  if (v46)
  {
    v47 = *(v45 + 1);
    if (v47)
    {
      if (mlir::DenseIntElementsAttr::classof(v47))
      {
        v84 = v86;
        v85 = 0x500000000;
        if (v42)
        {
          if (v42 < 6)
          {
            v48 = 0;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v86, v42, 8);
            v48 = v85;
          }

          if (v42 != v48)
          {
            bzero(v84 + 8 * v48, 8 * (v42 - v48));
          }

          LODWORD(v85) = v42;
        }

        v58 = mlir::AffineMapAttr::getValue(&v90);
        v59 = mlir::DictionaryAttr::end(&v90);
        v60 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(v58, v59, **(v91 + 96));
        if ((v61 & 1) == 0 || (v62 = *(v60 + 1)) == 0 || !mlir::DenseIntElementsAttr::classof(*(v60 + 1)))
        {
LABEL_64:
          if (v42)
          {
            v70 = 0;
            if (v42 >= 3)
            {
              v71 = v42 - 3;
            }

            else
            {
              v71 = 0;
            }

            v72 = 1;
            do
            {
              if (*(v84 + v70) > 1)
              {
                v71 = v70;
                v72 = *(v84 + v70);
              }

              ++v70;
            }

            while (v42 != v70);
            v73 = *(v87 + v71);
            v74 = v87 + 8 * v42;
            v75 = *(v74 - 1);
            if (v73 >= 1)
            {
              *(v87 + v71) = v73 / v72;
            }

            if (v75 >= 1)
            {
              *(v74 - 1) = v75 * v72;
            }
          }

          v55 = v88;
          if (v88)
          {
            v56 = v87;
            goto LABEL_41;
          }

          goto LABEL_78;
        }

        v80 = v62;
        v81 = 1;
        if (mlir::DenseElementsAttr::isValidIntOrFloat(&v80, 8, 1, 0))
        {
          RawStringData = mlir::DenseElementsAttr::getRawStringData(&v80);
          v11 = mlir::DenseElementsAttr::isSplat(&v80);
          mlir::ArrayAttr::getValue(&v80);
          mlir::DenseElementsAttr::getNumElements(&v80);
        }

        else
        {
          RawStringData = 0;
        }

        if (mlir::DenseElementsAttr::isValidIntOrFloat(&v80, 8, 1, 0))
        {
          mlir::DenseElementsAttr::getRawStringData(&v80);
          mlir::DenseElementsAttr::isSplat(&v80);
          mlir::ArrayAttr::getValue(&v80);
          NumElements = mlir::DenseElementsAttr::getNumElements(&v80);
          v12 = NumElements;
          LODWORD(v85) = 0;
          if (NumElements <= HIDWORD(v85))
          {
            v65 = 0;
            v66 = 0;
            if (!NumElements)
            {
LABEL_63:
              LODWORD(v85) = v66;
              goto LABEL_64;
            }
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v86, NumElements, 8);
            v65 = v85;
          }
        }

        else
        {
          v65 = 0;
        }

        v67 = 0;
        v68 = v84 + 8 * v65;
        do
        {
          if (v11)
          {
            v69 = 0;
          }

          else
          {
            v69 = v67;
          }

          *&v68[8 * v67++] = *(RawStringData + 8 * v69);
        }

        while (v12 != v67);
        v66 = v65 + v12;
        goto LABEL_63;
      }
    }
  }

  v79 = std::__throw_bad_optional_access[abi:nn200100]();
  return mlir::mpsx::TensorToBufferOp::verify(v79);
}

uint64_t mlir::mpsx::TensorToBufferOp::verify(mlir::Operation **this)
{
  v58[5] = *MEMORY[0x1E69E9840];
  v45 = *this;
  v3 = (*(*(*(v45 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v4 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
  if (v4)
  {
    v4 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
  }

  else
  {
    v3 = 0;
  }

  v44[0] = v3;
  v44[1] = v4;
  NumElements = 0;
  if (mlir::mpsx::TensorToBufferOp::getShapeAttr(&v45) && v44[0])
  {
    if (!mlir::CallOpInterface::getArgOperands(v44))
    {
LABEL_13:
      NumElements = 0;
      goto LABEL_14;
    }

    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v44);
    if (v7)
    {
      v8 = 8 * v7;
      while (*ArgAttrsAttr != 0x8000000000000000)
      {
        ++ArgAttrsAttr;
        v8 -= 8;
        if (!v8)
        {
          goto LABEL_11;
        }
      }

      goto LABEL_13;
    }

LABEL_11:
    v9 = mlir::CallableOpInterface::getArgAttrsAttr(v44);
    mlir::ShapedType::getNumElements(v9, v10);
    ShapeAttr = mlir::mpsx::TensorToBufferOp::getShapeAttr(&v45);
    v47 = ShapeAttr != 0;
    if (mlir::DenseElementsAttr::isValidIntOrFloat(&ShapeAttr, 8, 1, 0))
    {
      mlir::DenseElementsAttr::getRawStringData(&ShapeAttr);
      mlir::DenseElementsAttr::isSplat(&ShapeAttr);
      mlir::ArrayAttr::getValue(&ShapeAttr);
      NumElements = mlir::DenseElementsAttr::getNumElements(&ShapeAttr);
    }
  }

LABEL_14:
  if (!mlir::mpsx::TensorToBufferOp::getInterleaveAttr(&v45) || !v44[0] || !mlir::CallOpInterface::getArgOperands(v44))
  {
    return 1;
  }

  v11 = mlir::CallableOpInterface::getArgAttrsAttr(v44);
  if (v12)
  {
    v13 = 8 * v12;
    while (*v11 != 0x8000000000000000)
    {
      ++v11;
      v13 -= 8;
      if (!v13)
      {
        goto LABEL_21;
      }
    }

    return 1;
  }

LABEL_21:
  if (!mlir::mpsx::TensorToBufferOp::getInterleaveAttr(&v45))
  {
    v41 = std::__throw_bad_optional_access[abi:nn200100]();
    return mlir::mpsx::TensorToBufferOp::getShapeAttr(v41);
  }

  v56 = v58;
  v57 = 0x500000000;
  if (NumElements)
  {
    if (NumElements < 6)
    {
      v14 = 0;
      v15 = NumElements;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v58, NumElements, 8);
      v14 = v57;
      v15 = NumElements - v57;
      if (NumElements == v57)
      {
        goto LABEL_28;
      }
    }

    bzero(&v56[v14], 8 * v15);
LABEL_28:
    LODWORD(v57) = NumElements;
  }

  ShapeAttr = mlir::mpsx::TensorToBufferOp::getInterleaveAttr(&v45);
  v47 = ShapeAttr != 0;
  if (!ShapeAttr)
  {
    goto LABEL_45;
  }

  if (mlir::DenseElementsAttr::isValidIntOrFloat(&ShapeAttr, 8, 1, 0))
  {
    RawStringData = mlir::DenseElementsAttr::getRawStringData(&ShapeAttr);
    isSplat = mlir::DenseElementsAttr::isSplat(&ShapeAttr);
    mlir::ArrayAttr::getValue(&ShapeAttr);
    mlir::DenseElementsAttr::getNumElements(&ShapeAttr);
  }

  else
  {
    RawStringData = 0;
  }

  if (!mlir::DenseElementsAttr::isValidIntOrFloat(&ShapeAttr, 8, 1, 0))
  {
    v18 = 0;
    goto LABEL_38;
  }

  mlir::DenseElementsAttr::getRawStringData(&ShapeAttr);
  mlir::DenseElementsAttr::isSplat(&ShapeAttr);
  mlir::ArrayAttr::getValue(&ShapeAttr);
  v17 = mlir::DenseElementsAttr::getNumElements(&ShapeAttr);
  v2 = v17;
  LODWORD(v57) = 0;
  if (v17 > HIDWORD(v57))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v58, v17, 8);
    v18 = v57;
    goto LABEL_38;
  }

  v18 = 0;
  v19 = 0;
  if (v17)
  {
LABEL_38:
    v20 = 0;
    v21 = &v56[v18];
    do
    {
      if (isSplat)
      {
        v22 = 0;
      }

      else
      {
        v22 = v20;
      }

      *&v21[8 * v20++] = *(RawStringData + 8 * v22);
    }

    while (v2 != v20);
    v19 = v18 + v2;
  }

  LODWORD(v57) = v19;
LABEL_45:
  if (NumElements)
  {
    v23 = v56;
    v24 = 1;
    do
    {
      v26 = *v23++;
      v25 = v26;
      if (v26 > 1)
      {
        v24 = v25;
      }

      --NumElements;
    }

    while (NumElements);
  }

  else
  {
    v24 = 1;
  }

  result = mlir::getANENextSupportedInterleaveValue(v24);
  v29 = v28;
  if ((v28 & 1) == 0)
  {
    v43 = 257;
    mlir::Operation::emitOpError(v45, &v42, &ShapeAttr);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&ShapeAttr, "interleave factor not supported");
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v30);
    v31 = result;
    if (ShapeAttr)
    {
      mlir::InFlightDiagnostic::report(&ShapeAttr);
      result = v31;
    }

    if (v55 == 1)
    {
      if (v54 != &v55)
      {
        free(v54);
        result = v31;
      }

      v32 = __p;
      if (__p)
      {
        v33 = v53;
        v34 = __p;
        if (v53 != __p)
        {
          do
          {
            v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
          }

          while (v33 != v32);
          v34 = __p;
        }

        v53 = v32;
        operator delete(v34);
        result = v31;
      }

      v35 = v50;
      if (v50)
      {
        v36 = v51;
        v37 = v50;
        if (v51 != v50)
        {
          do
          {
            v39 = *--v36;
            v38 = v39;
            *v36 = 0;
            if (v39)
            {
              operator delete[](v38);
            }
          }

          while (v36 != v35);
          v37 = v50;
        }

        v51 = v35;
        operator delete(v37);
        result = v31;
      }

      if (v48 != &v49)
      {
        free(v48);
        result = v31;
      }
    }
  }

  if (v56 != v58)
  {
    v40 = result;
    free(v56);
    result = v40;
  }

  if (v29)
  {
    return 1;
  }

  return result;
}

uint64_t mlir::mpsx::TensorToBufferOp::getShapeAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(Value, (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 32));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    return 0;
  }

  if (mlir::DenseIntElementsAttr::classof(*(v5 + 1)))
  {
    return v7;
  }

  return 0;
}

uint64_t mlir::mpsx::BufferToTensorOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, void *a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v97 = *MEMORY[0x1E69E9840];
  v90 = a6;
  LOBYTE(v91) = 0;
  v92 = 0;
  v93 = a9;
  v94 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v90);
    if (v92 == 1)
    {
      v92 = 0;
    }

    mlir::OperationName::OperationName(&v91, "mpsx.buffer_to_tensor", 21, Context);
    v92 = 1;
  }

  v95 = a4;
  v96 = a5;
  if (!a5)
  {
    goto LABEL_13;
  }

  v17.var0.var0 = mlir::UnknownLoc::get(this, a2);
  if (!mlir::mpsx::BufferToTensorOpAdaptor::verify(&v90, v17))
  {
    goto LABEL_13;
  }

  v87 = v95;
  v88 = 0;
  v18 = (*(mlir::ValueRange::dereference_iterator(&v87, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
  {
    v82 = 0;
    v83 = 0;
    goto LABEL_13;
  }

  v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
  v82 = v18;
  v83 = v19;
  if (!v18)
  {
LABEL_13:
    v27 = mlir::Float32Type::get(this, a2);
    v28 = mlir::UnrankedTensorType::get(v27);
    v29 = *(a11 + 8);
    if (v29 >= *(a11 + 12))
    {
      v77 = v28;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v29 + 1, 8);
      v28 = v77;
      LODWORD(v29) = *(a11 + 8);
    }

    *(*a11 + 8 * v29) = v28;
    ++*(a11 + 8);
    return 1;
  }

  isSplat = mlir::ElementsAttr::isSplat(&v82);
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v82);
  v23 = v21;
  v87 = v89;
  v88 = 0x500000000;
  v24 = (8 * v21) >> 3;
  if (v24 >= 6)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v87, v89, v24, 8);
    v25 = v88;
    v26 = 8 * v23;
    if (!v23)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v25 = 0;
  v26 = 8 * v21;
  if (v21)
  {
LABEL_18:
    memcpy(v87 + 8 * v25, ArgAttrsAttr, v26);
    v25 = v88;
  }

LABEL_19:
  LODWORD(v88) = v25 + (v26 >> 3);
  Value = mlir::AffineMapAttr::getValue(&v90);
  v32 = mlir::DictionaryAttr::end(&v90);
  v33 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(Value, v32, *(*(v91 + 96) + 24));
  if (v34)
  {
    v35 = *(v33 + 1);
    if (v35)
    {
      v36 = *(*v35 + 136);
      if (v36 != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
      {
        v35 = 0;
      }

      v84 = v35;
      if (v36 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
      {
        isSplat = mlir::AffineMapAttr::getValue(&v84);
      }
    }
  }

  v37 = mlir::AffineMapAttr::getValue(&v90);
  v38 = mlir::DictionaryAttr::end(&v90);
  v39 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(v37, v38, **(v91 + 96));
  if ((v40 & 1) == 0 || (v41 = *(v39 + 1)) == 0 || !mlir::DenseIntElementsAttr::classof(v41))
  {
    v50 = mlir::CallableOpInterface::getArgAttrsAttr(&v82);
    v51 = v49;
    v84 = v86;
    v85 = 0x500000000;
    v52 = (8 * v49) >> 3;
    if (v52 < 6)
    {
      v53 = 0;
      v54 = 8 * v49;
      if (!v49)
      {
        goto LABEL_39;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v86, v52, 8);
      v53 = v85;
      v54 = 8 * v51;
      if (!v51)
      {
LABEL_39:
        v55 = v53 + (v54 >> 3);
        LODWORD(v85) = v53 + (v54 >> 3);
        if (v85)
        {
          v56 = v84;
LABEL_41:
          v57 = mlir::RankedTensorType::get(v56, v55, isSplat, 0);
LABEL_79:
          v76 = *(a11 + 8);
          if (v76 >= *(a11 + 12))
          {
            v78 = v57;
            llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v76 + 1, 8);
            v57 = v78;
            v76 = *(a11 + 8);
          }

          *(*a11 + 8 * v76) = v57;
          ++*(a11 + 8);
          if (v84 != v86)
          {
            free(v84);
          }

          if (v87 != v89)
          {
            free(v87);
          }

          return 1;
        }

LABEL_78:
        v57 = mlir::UnrankedTensorType::get(isSplat);
        goto LABEL_79;
      }
    }

    memcpy(v84 + 8 * v53, v50, v54);
    v53 = v85;
    goto LABEL_39;
  }

  v42 = v88;
  v43 = mlir::AffineMapAttr::getValue(&v90);
  v44 = mlir::DictionaryAttr::end(&v90);
  v45 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(v43, v44, **(v91 + 96));
  if (v46)
  {
    v47 = *(v45 + 1);
    if (v47)
    {
      if (mlir::DenseIntElementsAttr::classof(v47))
      {
        v84 = v86;
        v85 = 0x500000000;
        if (v42)
        {
          if (v42 < 6)
          {
            v48 = 0;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v86, v42, 8);
            v48 = v85;
          }

          if (v42 != v48)
          {
            bzero(v84 + 8 * v48, 8 * (v42 - v48));
          }

          LODWORD(v85) = v42;
        }

        v58 = mlir::AffineMapAttr::getValue(&v90);
        v59 = mlir::DictionaryAttr::end(&v90);
        v60 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(v58, v59, **(v91 + 96));
        if ((v61 & 1) == 0 || (v62 = *(v60 + 1)) == 0 || !mlir::DenseIntElementsAttr::classof(*(v60 + 1)))
        {
LABEL_64:
          if (v42)
          {
            v70 = 0;
            if (v42 >= 3)
            {
              v71 = v42 - 3;
            }

            else
            {
              v71 = 0;
            }

            v72 = 1;
            do
            {
              if (*(v84 + v70) > 1)
              {
                v71 = v70;
                v72 = *(v84 + v70);
              }

              ++v70;
            }

            while (v42 != v70);
            v73 = *(v87 + v71);
            v74 = v87 + 8 * v42;
            v75 = *(v74 - 1);
            if (v73 >= 1)
            {
              *(v87 + v71) = v73 * v72;
            }

            if (v75 >= 1)
            {
              *(v74 - 1) = v75 / v72;
            }
          }

          v55 = v88;
          if (v88)
          {
            v56 = v87;
            goto LABEL_41;
          }

          goto LABEL_78;
        }

        v80 = v62;
        v81 = 1;
        if (mlir::DenseElementsAttr::isValidIntOrFloat(&v80, 8, 1, 0))
        {
          RawStringData = mlir::DenseElementsAttr::getRawStringData(&v80);
          v11 = mlir::DenseElementsAttr::isSplat(&v80);
          mlir::ArrayAttr::getValue(&v80);
          mlir::DenseElementsAttr::getNumElements(&v80);
        }

        else
        {
          RawStringData = 0;
        }

        if (mlir::DenseElementsAttr::isValidIntOrFloat(&v80, 8, 1, 0))
        {
          mlir::DenseElementsAttr::getRawStringData(&v80);
          mlir::DenseElementsAttr::isSplat(&v80);
          mlir::ArrayAttr::getValue(&v80);
          NumElements = mlir::DenseElementsAttr::getNumElements(&v80);
          v12 = NumElements;
          LODWORD(v85) = 0;
          if (NumElements <= HIDWORD(v85))
          {
            v65 = 0;
            v66 = 0;
            if (!NumElements)
            {
LABEL_63:
              LODWORD(v85) = v66;
              goto LABEL_64;
            }
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v86, NumElements, 8);
            v65 = v85;
          }
        }

        else
        {
          v65 = 0;
        }

        v67 = 0;
        v68 = v84 + 8 * v65;
        do
        {
          if (v11)
          {
            v69 = 0;
          }

          else
          {
            v69 = v67;
          }

          *&v68[8 * v67++] = *(RawStringData + 8 * v69);
        }

        while (v12 != v67);
        v66 = v65 + v12;
        goto LABEL_63;
      }
    }
  }

  v79 = std::__throw_bad_optional_access[abi:nn200100]();
  return mlir::mpsx::BufferToTensorOp::getInterleave(v79);
}

uint64_t mlir::mpsx::BufferToTensorOp::fold(mlir::Operation **a1)
{
  v10 = *(*(*a1 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v10);
  if (DefiningOp && ((v3 = *(*(DefiningOp + 48) + 16), v4 = v3 == &mlir::detail::TypeIDResolver<mlir::mpsx::TensorToBufferOp,void>::id, v3 != &mlir::detail::TypeIDResolver<mlir::mpsx::TensorToBufferOp,void>::id) ? (v5 = 0) : (v5 = DefiningOp), (v11 = v5, v4) && ((v6 = *(*(*(DefiningOp + 72) + 24) + 8), *(*a1 + 9)) ? (v7 = *a1 - 16) : (v7 = 0), (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0) + 8) ^ v6) <= 7 && (InterleaveAttr = mlir::mpsx::TensorToBufferOp::getInterleaveAttr(a1), InterleaveAttr == mlir::mpsx::TensorToBufferOp::getInterleaveAttr(&v11)) && !mlir::mpsx::BufferToTensorOp::getResultElementTypeAttr(a1) && !mlir::mpsx::BufferToTensorOp::getResultElementTypeAttr(&v11))))
  {
    return *(*(v11 + 9) + 24) | 4;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::mpsx::BufferToTensorOp::getResultElementTypeAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(Value, (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 24));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    return 0;
  }

  if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    return *(v5 + 1);
  }

  return 0;
}

BOOL mlir::mpsx::ANEOp::verify(mlir::Operation **this)
{
  v24 = *MEMORY[0x1E69E9840];
  if (mlir::mpsx::ANEOp::getIsExternalAttr(this) || (*(*this + 11) & 0x7FFFFF) == 1)
  {
    return 1;
  }

  v14 = 257;
  mlir::OpState::emitOpError(this, &v13, v15);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, "expected a single region");
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v3);
  v4 = result;
  if (v15[0])
  {
    mlir::InFlightDiagnostic::report(v15);
    result = v4;
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
      result = v4;
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
      result = v4;
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
      result = v4;
    }

    if (v16 != &v17)
    {
      free(v16);
      return v4;
    }
  }

  return result;
}

uint64_t mlir::mpsx::FusionTypeAttr::parse(mlir::AsmParser *a1)
{
  v80 = *MEMORY[0x1E69E9840];
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 152))(a1))
  {
    v2 = (*(*a1 + 40))(a1);
    v54 = 0;
    v55 = 0;
    if (!mlir::AsmParser::parseKeyword(a1, &v54))
    {
LABEL_55:
      v34 = (*(*a1 + 40))(a1);
      LOWORD(v71) = 259;
      (*(*a1 + 24))(v60, a1, v34, v69);
      if (v60[0])
      {
        mlir::InFlightDiagnostic::report(v60);
      }

      if (v68 == 1)
      {
        if (v67 != &v68)
        {
          free(v67);
        }

        v35 = __p;
        if (__p)
        {
          v36 = v66;
          v37 = __p;
          if (v66 != __p)
          {
            do
            {
              v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
            }

            while (v36 != v35);
            v37 = __p;
          }

          v66 = v35;
          operator delete(v37);
        }

        v38 = v63;
        if (v63)
        {
          v39 = v64;
          v40 = v63;
          if (v64 != v63)
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
            v40 = v63;
          }

          v64 = v38;
          operator delete(v40);
        }

        if (v61 != &v62)
        {
          free(v61);
        }
      }

      return 0;
    }

    if (v55 == 17)
    {
      if (*v54 != 0x657A69746E617551 || *(v54 + 1) != 0x4E72656874614764 || *(v54 + 16) != 68)
      {
        goto LABEL_29;
      }

      v4 = 2;
    }

    else if (v55 == 15)
    {
      if (*v54 == 0x657A69746E617551 && *(v54 + 7) == 0x4432766E6F436465)
      {
        v4 = 1;
      }

      else
      {
        if (*v54 != 0x657A69746E617551 || *(v54 + 7) != 0x6C754D74614D6465)
        {
          goto LABEL_29;
        }

        v4 = 3;
      }
    }

    else
    {
      if (v55 != 6 || (*v54 == 1953723747 ? (v3 = *(v54 + 2) == 28015) : (v3 = 0), !v3))
      {
LABEL_29:
        v53 = 257;
        (*(*a1 + 24))(v69, a1, v2, v52);
        if (v69[0])
        {
          LODWORD(v56) = 3;
          v57 = "expected ";
          v58 = 9;
          v9 = &v56;
          v10 = v70;
          if (v71 >= v72)
          {
            if (v70 <= &v56 && &v70[3 * v71] > &v56)
            {
              v49 = &v56 - v70;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, v73, v71 + 1, 24);
              v10 = v70;
              v9 = (v70 + v49);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, v73, v71 + 1, 24);
              v9 = &v56;
              v10 = v70;
            }
          }

          v11 = &v10[3 * v71];
          v12 = *v9;
          v11[2] = v9[2];
          *v11 = v12;
          ++v71;
        }

        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v69, "::mlir::mpsx::FusionType");
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v13, " to be one of: ");
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v14, "custom");
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, ", ");
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v16, "QuantizedConv2D");
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v17, ", ");
        if (*v18)
        {
          v19 = *(v18 + 24);
          LODWORD(v56) = 3;
          v57 = "QuantizedGatherND";
          v58 = 17;
          v20 = *(v18 + 32);
          v21 = &v56;
          if (v20 >= *(v18 + 36))
          {
            if (v19 <= &v56 && v19 + 24 * v20 > &v56)
            {
              v50 = &v56 - v19;
              v51 = v18;
              llvm::SmallVectorBase<unsigned int>::grow_pod(v18 + 24, v18 + 40, v20 + 1, 24);
              v18 = v51;
              v19 = *(v51 + 24);
              v21 = &v50[v19];
            }

            else
            {
              v48 = v18;
              llvm::SmallVectorBase<unsigned int>::grow_pod(v18 + 24, v18 + 40, v20 + 1, 24);
              v18 = v48;
              v19 = *(v48 + 24);
              v21 = &v56;
            }
          }

          v22 = v19 + 24 * *(v18 + 32);
          v23 = *v21;
          *(v22 + 16) = v21[2];
          *v22 = v23;
          ++*(v18 + 32);
        }

        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v18, ", ");
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v24, "QuantizedMatMul");
        mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
        if (v69[0])
        {
          mlir::InFlightDiagnostic::report(v69);
        }

        if (v79 == 1)
        {
          if (v78 != &v79)
          {
            free(v78);
          }

          v26 = v76;
          if (v76)
          {
            v27 = v77;
            v28 = v76;
            if (v77 != v76)
            {
              do
              {
                v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
              }

              while (v27 != v26);
              v28 = v76;
            }

            v77 = v26;
            operator delete(v28);
          }

          v29 = v74;
          if (v74)
          {
            v30 = v75;
            v31 = v74;
            if (v75 != v74)
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
              v31 = v74;
            }

            v75 = v29;
            operator delete(v31);
          }

          if (v70 != v73)
          {
            free(v70);
          }
        }

        goto LABEL_55;
      }

      v4 = 0;
    }

    if ((*(*a1 + 168))(a1))
    {
      Context = mlir::AsmParser::getContext(a1);
      AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
      v56 = &mlir::detail::TypeIDResolver<mlir::mpsx::FusionTypeAttr,void>::id;
      v57 = Context;
      v69[0] = _ZN4llvm12function_refIFvPN4mlir4mpsx6detail21FusionTypeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_14FusionTypeAttrEJNS2_10FusionTypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
      v69[1] = &v56;
      v59 = v4;
      v45 = v4 ^ 0xFF51AFD7ED558CCDLL;
      v46 = 0x9DDFEA08EB382D69 * (((8 * v4) | 4) ^ v45);
      v54 = &v59;
      v52[0] = &v59;
      v52[1] = v69;
      return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mpsx::FusionTypeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v45 ^ (v46 >> 47) ^ v46)) >> 32) >> 15) ^ (-348639895 * (v45 ^ (v46 >> 47) ^ v46))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mpsx::detail::FusionTypeAttrStorage * mlir::StorageUniquer::get<mlir::mpsx::detail::FusionTypeAttrStorage,mlir::mpsx::FusionType>(llvm::function_ref<void ()(mlir::mpsx::detail::FusionTypeAttrStorage *)>,mlir::TypeID,mlir::mpsx::FusionType &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v54, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mpsx::detail::FusionTypeAttrStorage * mlir::StorageUniquer::get<mlir::mpsx::detail::FusionTypeAttrStorage,mlir::mpsx::FusionType>(llvm::function_ref<void ()(mlir::mpsx::detail::FusionTypeAttrStorage *)>,mlir::TypeID,mlir::mpsx::FusionType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v52);
    }
  }

  return 0;
}

void *mlir::mpsx::FusionTypeAttr::print(mlir::mpsx::FusionTypeAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++v4[4];
  }

  v6 = *(*this + 8);
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      if (v6 == 3)
      {
        v7 = 0;
        v8 = "QuantizedMatMul";
        v9 = 15;
        goto LABEL_14;
      }

      goto LABEL_11;
    }

    v7 = 0;
    v8 = "QuantizedGatherND";
    v9 = 17;
  }

  else
  {
    if (v6)
    {
      if (v6 == 1)
      {
        v7 = 0;
        v8 = "QuantizedConv2D";
        v9 = 15;
        goto LABEL_14;
      }

LABEL_11:
      v9 = 0;
      v8 = "";
      v7 = 1;
      goto LABEL_14;
    }

    v7 = 0;
    v8 = "custom";
    v9 = 6;
  }

LABEL_14:
  v10 = (*(*a2 + 16))(a2);
  if (v9 <= *(v10 + 24) - *(v10 + 32))
  {
    if ((v7 & 1) == 0)
    {
      v11 = v10;
      memcpy(*(v10 + 32), v8, v9);
      *(v11 + 32) += v9;
    }
  }

  else
  {
    llvm::raw_ostream::write(v10, v8, v9);
  }

  result = (*(*a2 + 16))(a2);
  v13 = result[4];
  if (result[3] == v13)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v13 = 62;
    ++result[4];
  }

  return result;
}

uint64_t mlir::mpsx::MPSXDialect::parseAttribute(uint64_t a1, mlir::AsmParser *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = (*(*a2 + 40))(a2);
  v36[0] = a2;
  v5 = (*(*a2 + 40))(a2);
  v39[2] = 0;
  v37 = 0;
  v38 = 0;
  v36[1] = v5;
  v39[0] = 0;
  if (((*(*a2 + 640))(a2, &v37) & 1) == 0)
  {
    v6 = 0;
    *v39 = 256;
    if (v39[2])
    {
      v32 = "fusion_type";
    }

    else
    {
      v39[2] = 1;
    }

    goto LABEL_15;
  }

  v32 = "fusion_type";
  v33 = 11;
  if (v39[2])
  {
    v6 = 0;
LABEL_15:
    v7 = 0;
    v9 = 0;
    goto LABEL_16;
  }

  v7 = v38;
  if (v38)
  {
    if (v38 == 11 && *v37 == 0x745F6E6F69737566 && *(v37 + 3) == 0x657079745F6E6F69)
    {
      v6 = mlir::mpsx::FusionTypeAttr::parse(a2);
      v39[0] = v6 != 0;
      *&v39[1] = 257;
      goto LABEL_15;
    }
  }

  else
  {
    (*(*v36[0] + 648))(v36[0], &v32, 1);
    if (v39[2])
    {
      v7 = 0;
      v9 = 0;
      v6 = 0;
      goto LABEL_16;
    }

    v7 = v38;
  }

  v6 = 0;
  v9 = v37;
  *v39 = 0;
  v39[2] = 1;
LABEL_16:
  if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(v36) & 0x100) == 0)
  {
    v31 = 257;
    (*(*a2 + 24))(v36, a2, v4, v30);
    v11 = v10;
    if (*v10)
    {
      v35 = 261;
      v32 = v9;
      v33 = v7;
      mlir::Diagnostic::operator<<((v10 + 1), &v32);
      if (*v11)
      {
        v12 = v11 + 24;
        v13 = *(v11 + 24);
        LODWORD(v32) = 3;
        v34 = 14;
        v14 = *(v11 + 32);
        v15 = &v32;
        if (v14 >= *(v11 + 36))
        {
          if (v13 <= &v32 && v13 + 24 * v14 > &v32)
          {
            v29 = &v32 - v13;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v12, v11 + 40, v14 + 1, 24);
            v13 = *(v11 + 24);
            v15 = &v29[v13];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(v12, v11 + 40, v14 + 1, 24);
            v13 = *(v11 + 24);
            v15 = &v32;
          }
        }

        v16 = v13 + 24 * *(v11 + 32);
        v17 = *v15;
        *(v16 + 16) = v15[2];
        *v16 = v17;
        ++*(v11 + 32);
        if (*v11)
        {
          v18 = *(a1 + 8);
          v19 = *(a1 + 16);
          v35 = 261;
          v32 = v18;
          v33 = v19;
          mlir::Diagnostic::operator<<(v11 + 8, &v32);
        }
      }
    }

    if (v36[0])
    {
      mlir::InFlightDiagnostic::report(v36);
    }

    if (v46 == 1)
    {
      if (v45 != &v46)
      {
        free(v45);
      }

      v20 = __p;
      if (__p)
      {
        v21 = v44;
        v22 = __p;
        if (v44 != __p)
        {
          do
          {
            v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
          }

          while (v21 != v20);
          v22 = __p;
        }

        v44 = v20;
        operator delete(v22);
      }

      v23 = v41;
      if (v41)
      {
        v24 = v42;
        v25 = v41;
        if (v42 != v41)
        {
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
          v25 = v41;
        }

        v42 = v23;
        operator delete(v25);
      }

      if (v38 != &v40)
      {
        free(v38);
      }
    }

    return 0;
  }

  return v6;
}

void mlir::mpsx::MPSXDialect::printAttribute(uint64_t a1, uint64_t a2, mlir::AsmPrinter *a3)
{
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionTypeAttr,void>::id)
  {
    v8[3] = v3;
    v8[4] = v4;
    v8[0] = a2;
    v6 = (*(*a3 + 16))(a3);
    v7 = v6[4];
    if ((v6[3] - v7) > 0xA)
    {
      *(v7 + 7) = 1701869940;
      *v7 = *"fusion_type";
      v6[4] += 11;
    }

    else
    {
      llvm::raw_ostream::write(v6, "fusion_type", 0xBuLL);
    }

    mlir::mpsx::FusionTypeAttr::print(v8, a3);
  }
}

uint64_t mlir::mpsx::ANEOp::getFunctionType(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((Value + 16), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 16));
  if (v6)
  {
    v7 = *(v5 + 1);
  }

  else
  {
    v7 = 0;
  }

  AttrDictionary = v7;
  return mlir::AffineMapAttr::getValue(&AttrDictionary);
}

uint64_t mlir::mpsx::ANEOp::getAneFamily(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(Value, (v3 + 16 * v4 - 16), **(*(*this + 6) + 96));
  if (v6)
  {
    v7 = *(v5 + 1);
  }

  else
  {
    v7 = 0;
  }

  AttrDictionary = v7;
  return mlir::OpaqueAttr::getAttrData(&AttrDictionary);
}

uint64_t mlir::mpsx::ANEOp::getIsExternalAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((Value + 32), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 24));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    return 0;
  }

  if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    return *(v5 + 1);
  }

  return 0;
}

uint64_t mlir::mpsx::ANEOp::getReadDataFromFileInfosAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((Value + 32), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 32));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    return 0;
  }

  if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    return *(v5 + 1);
  }

  return 0;
}

uint64_t mlir::mpsx::ANEOp::getArgAttrsAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((Value + 16), (v3 + 16 * v4 - 16), *(*(*(*this + 6) + 96) + 8));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    return 0;
  }

  if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    return *(v5 + 1);
  }

  return 0;
}

uint64_t mlir::mpsx::ANEOp::getResAttrsAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((Value + 32), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 40));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    return 0;
  }

  if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    return *(v5 + 1);
  }

  return 0;
}

uint64_t mlir::mpsx::ANEOp::build(mlir::StringAttr **a1, mlir::OperationState *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = *(*(*(a2 + 1) + 96) + 16);
  v17 = mlir::TypeAttr::get(a3);
  mlir::NamedAttribute::NamedAttribute(&v24, v16, v17);
  mlir::NamedAttrList::push_back(a2 + 112, v24, v25);
  v18 = **(*(a2 + 1) + 96);
  v26 = 261;
  v24 = a4;
  v25 = a5;
  StringAttr = mlir::Builder::getStringAttr(a1, &v24);
  mlir::NamedAttribute::NamedAttribute(v27, v18, StringAttr);
  mlir::NamedAttrList::push_back(a2 + 112, v27[0], v27[1]);
  if (a6)
  {
    v21 = *(*(*(a2 + 1) + 96) + 24);
    UnitAttr = mlir::Builder::getUnitAttr(a1, v20);
    mlir::NamedAttribute::NamedAttribute(&v24, v21, UnitAttr);
    mlir::NamedAttrList::push_back(a2 + 112, v24, v25);
  }

  if (a7)
  {
    mlir::NamedAttribute::NamedAttribute(&v24, *(*(*(a2 + 1) + 96) + 32), a7);
    mlir::NamedAttrList::push_back(a2 + 112, v24, v25);
  }

  if (a8)
  {
    mlir::NamedAttribute::NamedAttribute(&v24, *(*(*(a2 + 1) + 96) + 8), a8);
    mlir::NamedAttrList::push_back(a2 + 112, v24, v25);
  }

  if (a9)
  {
    mlir::NamedAttribute::NamedAttribute(&v24, *(*(*(a2 + 1) + 96) + 40), a9);
    mlir::NamedAttrList::push_back(a2 + 112, v24, v25);
  }

  return mlir::OperationState::addRegion(a2);
}

BOOL mlir::mpsx::ANEOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v67 = *MEMORY[0x1E69E9840];
  v58[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v58);
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
      v15 = 0;
      v16 = 0;
      v17 = *(v4 + 1);
      while (1)
      {
        v18 = (v4 + v15);
        CallableRegion = mlir::CallGraphNode::getCallableRegion((v4 + v15));
        v20 = *this;
        if (CallableRegion == *(*(*(*this + 6) + 96) + 16))
        {
          break;
        }

        if (mlir::CallGraphNode::getCallableRegion((v4 + v15)) == *(*(*(*this + 6) + 96) + 8))
        {
          v16 = *(v4 + v15 + 8);
        }

        v15 += 16;
        if (v5 == v15)
        {
          goto LABEL_27;
        }
      }

      v27 = *(v18 + 1);
      v28 = v5 - v15;
      if (v5 == v15)
      {
        v31 = 0;
        v30 = 0;
        v29 = 0;
      }

      else
      {
        v29 = 0;
        v30 = 0;
        v31 = 0;
        do
        {
          v32 = mlir::CallGraphNode::getCallableRegion(v18);
          v20 = *this;
          if (v32 == *(*(*(*this + 6) + 96) + 24))
          {
            v29 = *(v18 + 1);
          }

          else
          {
            v33 = mlir::CallGraphNode::getCallableRegion(v18);
            v20 = *this;
            if (v33 == *(*(*(*this + 6) + 96) + 32))
            {
              v30 = *(v18 + 1);
            }

            else
            {
              v34 = mlir::CallGraphNode::getCallableRegion(v18);
              v20 = *this;
              if (v34 == *(*(*(*this + 6) + 96) + 40))
              {
                v31 = *(v18 + 1);
              }
            }
          }

          v18 = (v18 + 16);
          v28 -= 16;
        }

        while (v28);
      }

      if ((mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps1(v20, v27, "function_type", 0xD) & 1) == 0 || (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps2(*this, v17, "ane_family", 0xA) & 1) == 0 || (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps3(*this, v29, "is_external", 0xB) & 1) == 0)
      {
        return 0;
      }

      v35 = *this;
      if (v30 && *(*v30 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        v57 = 257;
        mlir::Operation::emitOpError(v35, &v54, v58);
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v58, "attribute '");
        if (*v36)
        {
          v57 = 261;
          v54 = "read_data_from_file_infos";
          v55 = 25;
          v37 = v36;
          mlir::Diagnostic::operator<<(v36 + 8, &v54);
          v36 = v37;
          if (*v37)
          {
            v38 = *(v37 + 24);
            LODWORD(v54) = 3;
            v55 = "' failed to satisfy constraint: array attribute";
            v56 = 47;
            v39 = *(v37 + 32);
            v40 = &v54;
            if (v39 >= *(v37 + 36))
            {
              if (v38 <= &v54 && v38 + 24 * v39 > &v54)
              {
                v53 = &v54 - v38;
                llvm::SmallVectorBase<unsigned int>::grow_pod(v37 + 24, v37 + 40, v39 + 1, 24);
                v36 = v37;
                v38 = *(v37 + 24);
                v40 = &v53[v38];
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(v37 + 24, v37 + 40, v39 + 1, 24);
                v36 = v37;
                v38 = *(v37 + 24);
                v40 = &v54;
              }
            }

            v41 = v38 + 24 * *(v36 + 32);
            v42 = *v40;
            *(v41 + 16) = v40[2];
            *v41 = v42;
            ++*(v36 + 32);
          }
        }

        v43 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v36);
        if (v58[0])
        {
          mlir::InFlightDiagnostic::report(v58);
        }

        if (v66 == 1)
        {
          if (v65 != &v66)
          {
            free(v65);
          }

          v44 = __p;
          if (__p)
          {
            v45 = v64;
            v46 = __p;
            if (v64 != __p)
            {
              do
              {
                v45 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v45 - 1);
              }

              while (v45 != v44);
              v46 = __p;
            }

            v64 = v44;
            operator delete(v46);
          }

          v47 = v61;
          if (v61)
          {
            v48 = v62;
            v49 = v61;
            if (v62 != v61)
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
              v49 = v61;
            }

            v62 = v47;
            operator delete(v49);
          }

          if (v59 != v60)
          {
            free(v59);
          }
        }

        if (!v43)
        {
          return 0;
        }

        v35 = *this;
      }

      if (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps5(v35, v16, "arg_attrs", 9))
      {
        return mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps5(*this, v31, "res_attrs", 9) & 1;
      }

      return 0;
    }

LABEL_27:
    v54 = "requires attribute 'function_type'";
    v57 = 259;
    mlir::OpState::emitOpError(this, &v54, v58);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v58);
    if (v58[0])
    {
      mlir::InFlightDiagnostic::report(v58);
    }

    if (v66 == 1)
    {
      if (v65 != &v66)
      {
        free(v65);
      }

      v21 = __p;
      if (__p)
      {
        v22 = v64;
        v23 = __p;
        if (v64 != __p)
        {
          do
          {
            v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
          }

          while (v22 != v21);
          v23 = __p;
        }

        v64 = v21;
        operator delete(v23);
      }

      v10 = v61;
      if (!v61)
      {
        goto LABEL_45;
      }

      v24 = v62;
      v12 = v61;
      if (v62 == v61)
      {
        goto LABEL_44;
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

      while (v24 != v10);
      goto LABEL_43;
    }
  }

  else
  {
LABEL_5:
    v54 = "requires attribute 'ane_family'";
    v57 = 259;
    mlir::OpState::emitOpError(this, &v54, v58);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v58);
    if (v58[0])
    {
      mlir::InFlightDiagnostic::report(v58);
    }

    if (v66 == 1)
    {
      if (v65 != &v66)
      {
        free(v65);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v64;
        v9 = __p;
        if (v64 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v64 = v7;
        operator delete(v9);
      }

      v10 = v61;
      if (!v61)
      {
        goto LABEL_45;
      }

      v11 = v62;
      v12 = v61;
      if (v62 == v61)
      {
LABEL_44:
        v62 = v10;
        operator delete(v12);
LABEL_45:
        if (v59 != v60)
        {
          free(v59);
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
LABEL_43:
      v12 = v61;
      goto LABEL_44;
    }
  }

  return v6;
}

uint64_t mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps1(uint64_t a1, void *a2, void *a3, void *a4)
{
  v34 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    v25[0] = a2;
    v6 = a1;
    Value = mlir::AffineMapAttr::getValue(v25);
    a1 = v6;
    if (*(*Value + 136) == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
    {
      v23[0] = a2;
      v9 = mlir::AffineMapAttr::getValue(v23);
      a1 = v6;
      if (*(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
      {
        return 1;
      }
    }
  }

  v24 = 257;
  mlir::Operation::emitOpError(a1, v23, v25);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v25, "attribute '");
  if (*v10)
  {
    v24 = 261;
    v23[0] = a3;
    v23[1] = a4;
    v11 = v10;
    mlir::Diagnostic::operator<<((v10 + 1), v23);
    v10 = v11;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v10, "' failed to satisfy constraint: type attribute of function type");
  v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v12);
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

    v14 = __p;
    if (__p)
    {
      v15 = v31;
      v16 = __p;
      if (v31 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v31 = v14;
      operator delete(v16);
    }

    v17 = v28;
    if (v28)
    {
      v18 = v29;
      v19 = v28;
      if (v29 != v28)
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
        v19 = v28;
      }

      v29 = v17;
      operator delete(v19);
    }

    if (v26 != &v27)
    {
      free(v26);
    }
  }

  return v13;
}

uint64_t mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a2 || *(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
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

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v6, "' failed to satisfy constraint: string attribute");
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

uint64_t mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a2 || *(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
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

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v6, "' failed to satisfy constraint: unit attribute");
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

uint64_t mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps5(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v26[0] = a2;
    v18 = a1;
    Value = mlir::ArrayAttr::getValue(v26);
    v20 = mlir::ArrayAttr::getValue(v26);
    v22 = v20 + 8 * v21;
    if (v22 != Value)
    {
      a1 = v18;
      while (*Value && *(**Value + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
      {
        Value += 8;
        if (Value == v22)
        {
          return 1;
        }
      }

      goto LABEL_3;
    }

    return 1;
  }

LABEL_3:
  v25 = 257;
  mlir::Operation::emitOpError(a1, v24, v26);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v26, "attribute '");
  if (*v6)
  {
    v25 = 261;
    v24[0] = a3;
    v24[1] = a4;
    v7 = v6;
    mlir::Diagnostic::operator<<((v6 + 1), v24);
    v6 = v7;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v6, "' failed to satisfy constraint: Array of dictionary attributes");
  v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v8);
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

    v10 = __p;
    if (__p)
    {
      v11 = v32;
      v12 = __p;
      if (v32 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v32 = v10;
      operator delete(v12);
    }

    v13 = v29;
    if (v29)
    {
      v14 = v30;
      v15 = v29;
      if (v30 != v29)
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
        v15 = v29;
      }

      v30 = v13;
      operator delete(v15);
    }

    if (v27 != &v28)
    {
      free(v27);
    }
  }

  return v9;
}

BOOL mlir::mpsx::BufferToTensorOpAdaptor::verify(mlir::mpsx::BufferToTensorOpAdaptor *this, Location a2)
{
  v66 = *MEMORY[0x1E69E9840];
  v55 = *this;
  Value = mlir::AffineMapAttr::getValue(&v55);
  if (Value == mlir::DictionaryAttr::end(&v55))
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v9 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    do
    {
      if (mlir::CallGraphNode::getCallableRegion(Value) == **(*(this + 1) + 96))
      {
        v5 = *(Value + 1);
      }

      else if (mlir::CallGraphNode::getCallableRegion(Value) == *(*(*(this + 1) + 96) + 8))
      {
        v6 = *(Value + 1);
      }

      else if (mlir::CallGraphNode::getCallableRegion(Value) == *(*(*(this + 1) + 96) + 16))
      {
        v7 = *(Value + 1);
      }

      else if (mlir::CallGraphNode::getCallableRegion(Value) == *(*(*(this + 1) + 96) + 24))
      {
        v9 = *(Value + 1);
      }

      else if (mlir::CallGraphNode::getCallableRegion(Value) == *(*(*(this + 1) + 96) + 32))
      {
        v8 = *(Value + 1);
      }

      Value = (Value + 16);
    }

    while (Value != mlir::DictionaryAttr::end(&v55));
    if (v8)
    {
      if (!mlir::DenseIntElementsAttr::classof(v8))
      {
        goto LABEL_20;
      }

      v10 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v8 + 8);
      v48 = v8;
      v49 = v10;
      Type = mlir::ElementsAttr::getType(&v48);
      v12 = Type;
      if (Type)
      {
        Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
      }

      v56 = v12;
      v57 = Type;
      mlir::CallableOpInterface::getArgAttrsAttr(&v56);
      if (v13 != 1 || (v51 = v8, v52 = mlir::ArrayAttr::getValue(&v51), v53 = v14, isSplat = mlir::ElementsAttr::isSplat(&v52), !mlir::Type::isUnsignedInteger(&isSplat, 64)))
      {
LABEL_20:
        v48 = "'mpsx.buffer_to_tensor' op attribute 'shape' failed to satisfy constraint: ui64 elements attribute of rank 1";
        v50 = 259;
        mlir::emitError(a2.var0.var0, &v48, &v56);
        v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v56);
        if (v56)
        {
          mlir::InFlightDiagnostic::report(&v56);
        }

        if (v65 == 1)
        {
          if (v64 != &v65)
          {
            free(v64);
          }

          v16 = __p;
          if (__p)
          {
            v17 = v63;
            v18 = __p;
            if (v63 != __p)
            {
              do
              {
                v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
              }

              while (v17 != v16);
              v18 = __p;
            }

            v63 = v16;
            operator delete(v18);
          }

          v19 = v60;
          if (!v60)
          {
            goto LABEL_101;
          }

          v20 = v61;
          v21 = v60;
          if (v61 == v60)
          {
LABEL_100:
            v61 = v19;
            operator delete(v21);
LABEL_101:
            if (v58 != &v59)
            {
              free(v58);
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
LABEL_99:
          v21 = v60;
          goto LABEL_100;
        }

        return v15;
      }
    }
  }

  if (!v9)
  {
LABEL_56:
    if (!v5)
    {
      goto LABEL_63;
    }

    if (!mlir::DenseIntElementsAttr::classof(v5))
    {
      goto LABEL_67;
    }

    v30 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
    v48 = v5;
    v49 = v30;
    v31 = mlir::ElementsAttr::getType(&v48);
    v32 = v31;
    if (v31)
    {
      v31 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v31 + 8);
    }

    v56 = v32;
    v57 = v31;
    mlir::CallableOpInterface::getArgAttrsAttr(&v56);
    if (v33 == 1 && (v51 = v5, v52 = mlir::ArrayAttr::getValue(&v51), v53 = v34, isSplat = mlir::ElementsAttr::isSplat(&v52), mlir::Type::isUnsignedInteger(&isSplat, 64)))
    {
LABEL_63:
      if (v7 && !mlir::BoolAttr::classof(v7))
      {
        v48 = "'mpsx.buffer_to_tensor' op attribute 'isTensorBufferOp' failed to satisfy constraint: BOOL attribute";
        v50 = 259;
        mlir::emitError(a2.var0.var0, &v48, &v56);
        v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v56);
        if (v56)
        {
          mlir::InFlightDiagnostic::report(&v56);
        }

        if (v65 == 1)
        {
          if (v64 != &v65)
          {
            free(v64);
          }

          v41 = __p;
          if (__p)
          {
            v42 = v63;
            v43 = __p;
            if (v63 != __p)
            {
              do
              {
                v42 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v42 - 1);
              }

              while (v42 != v41);
              v43 = __p;
            }

            v63 = v41;
            operator delete(v43);
          }

          v19 = v60;
          if (!v60)
          {
            goto LABEL_101;
          }

          v44 = v61;
          v21 = v60;
          if (v61 == v60)
          {
            goto LABEL_100;
          }

          do
          {
            v46 = *--v44;
            v45 = v46;
            *v44 = 0;
            if (v46)
            {
              operator delete[](v45);
            }
          }

          while (v44 != v19);
          goto LABEL_99;
        }
      }

      else if (v6 && !mlir::BoolAttr::classof(v6))
      {
        v48 = "'mpsx.buffer_to_tensor' op attribute 'isChannelAndInterleaveSame' failed to satisfy constraint: BOOL attribute";
        v50 = 259;
        mlir::emitError(a2.var0.var0, &v48, &v56);
        v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v56);
        if (v56)
        {
          mlir::InFlightDiagnostic::report(&v56);
        }

        if (v65 == 1)
        {
          mlir::Diagnostic::~Diagnostic(&v57);
        }
      }

      else
      {
        return 1;
      }
    }

    else
    {
LABEL_67:
      v48 = "'mpsx.buffer_to_tensor' op attribute 'interleave' failed to satisfy constraint: ui64 elements attribute of rank 1";
      v50 = 259;
      mlir::emitError(a2.var0.var0, &v48, &v56);
      v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v56);
      if (v56)
      {
        mlir::InFlightDiagnostic::report(&v56);
      }

      if (v65 == 1)
      {
        if (v64 != &v65)
        {
          free(v64);
        }

        v35 = __p;
        if (__p)
        {
          v36 = v63;
          v37 = __p;
          if (v63 != __p)
          {
            do
            {
              v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
            }

            while (v36 != v35);
            v37 = __p;
          }

          v63 = v35;
          operator delete(v37);
        }

        v19 = v60;
        if (!v60)
        {
          goto LABEL_101;
        }

        v38 = v61;
        v21 = v60;
        if (v61 == v60)
        {
          goto LABEL_100;
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

        while (v38 != v19);
        goto LABEL_99;
      }
    }

    return v15;
  }

  if (*(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    v56 = v9;
    mlir::AffineMapAttr::getValue(&v56);
    goto LABEL_56;
  }

  v48 = "'mpsx.buffer_to_tensor' op attribute 'resultElementType' failed to satisfy constraint: any type attribute";
  v50 = 259;
  mlir::emitError(a2.var0.var0, &v48, &v56);
  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v56);
  if (v56)
  {
    mlir::InFlightDiagnostic::report(&v56);
  }

  if (v65 == 1)
  {
    if (v64 != &v65)
    {
      free(v64);
    }

    v24 = __p;
    if (__p)
    {
      v25 = v63;
      v26 = __p;
      if (v63 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v63 = v24;
      operator delete(v26);
    }

    v19 = v60;
    if (!v60)
    {
      goto LABEL_101;
    }

    v27 = v61;
    v21 = v60;
    if (v61 == v60)
    {
      goto LABEL_100;
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

    while (v27 != v19);
    goto LABEL_99;
  }

  return v15;
}

uint64_t mlir::mpsx::BufferToTensorOp::getResultElementType(mlir::Operation **this)
{
  result = mlir::mpsx::BufferToTensorOp::getResultElementTypeAttr(this);
  v2 = result;
  if (result)
  {
    return mlir::AffineMapAttr::getValue(&v2);
  }

  return result;
}

uint64_t mlir::mpsx::BufferToTensorOp::getIsTensorBufferOpAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(Value, (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 16));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    return 0;
  }

  if (mlir::BoolAttr::classof(*(v5 + 1)))
  {
    return v7;
  }

  return 0;
}

uint64_t mlir::mpsx::BufferToTensorOp::getIsChannelAndInterleaveSameAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(Value, (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 8));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    return 0;
  }

  if (mlir::BoolAttr::classof(*(v5 + 1)))
  {
    return v7;
  }

  return 0;
}

void mlir::mpsx::BufferToTensorOp::build(mlir::BoolAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, mlir::MLIRContext *a7, mlir::MLIRContext *a8)
{
  v35[2] = *MEMORY[0x1E69E9840];
  v30 = a3;
  mlir::OperationState::addOperands(a2, &v30, 1uLL);
  if (a4)
  {
    mlir::NamedAttribute::NamedAttribute(&__src, *(*(*(a2 + 8) + 96) + 32), a4);
    mlir::NamedAttrList::push_back(a2 + 112, __src, v34);
  }

  if (a5)
  {
    mlir::NamedAttribute::NamedAttribute(&__src, *(*(*(a2 + 8) + 96) + 24), a5);
    mlir::NamedAttrList::push_back(a2 + 112, __src, v34);
  }

  if (a6)
  {
    mlir::NamedAttribute::NamedAttribute(&__src, **(*(a2 + 8) + 96), a6);
    mlir::NamedAttrList::push_back(a2 + 112, __src, v34);
  }

  v15 = *(*(*(a2 + 8) + 96) + 16);
  BoolAttr = mlir::Builder::getBoolAttr(a1, a7);
  mlir::NamedAttribute::NamedAttribute(&__src, v15, BoolAttr);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v34);
  v17 = *(*(*(a2 + 8) + 96) + 8);
  v18 = mlir::Builder::getBoolAttr(a1, a8);
  mlir::NamedAttribute::NamedAttribute(&__src, v17, v18);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v34);
  __src = v35;
  v34 = 0x200000000;
  v19 = *a1;
  mlir::ValueRange::ValueRange(v32, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(v31, *(a2 + 224), *(a2 + 232));
  if ((mlir::mpsx::BufferToTensorOp::inferReturnTypes(v19, v22, v23, v32[0], v32[1], Dictionary, v24, v25, v31[0], v31[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v26 = __src;
  v27 = v34;
  v28 = *(a2 + 72);
  v29 = v28 + v34;
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
  if (__src != v35)
  {
    free(__src);
  }
}

void mlir::mpsx::BufferToTensorOp::build(mlir::UnknownLoc **a1, uint64_t a2, void *a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v27[2] = *MEMORY[0x1E69E9840];
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
  __src = v27;
  v26 = 0x200000000;
  v13 = *a1;
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(v24, *(a2 + 224), *(a2 + 232));
  if ((mlir::mpsx::BufferToTensorOp::inferReturnTypes(v13, v16, v17, a3, a4, Dictionary, v18, v19, v24[0], v24[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v20 = __src;
  v21 = v26;
  v22 = *(a2 + 72);
  v23 = v22 + v26;
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
  if (__src != v27)
  {
    free(__src);
  }
}

uint64_t mlir::mpsx::BufferToTensorOp::populateDefaultAttrs(mlir::mpsx::BufferToTensorOp *this, const mlir::OperationName *a2, mlir::NamedAttrList *a3)
{
  v4 = *(*this + 96);
  Context = mlir::Attribute::getContext(v4);
  if (!mlir::NamedAttrList::get(a2, v4[2]))
  {
    v5 = v4[2];
    BoolAttr = mlir::Builder::getBoolAttr(&Context, 0);
    mlir::NamedAttribute::NamedAttribute(&v11, v5, BoolAttr);
    mlir::NamedAttrList::push_back(a2, v11, v12);
  }

  result = mlir::NamedAttrList::get(a2, v4[1]);
  if (!result)
  {
    v8 = v4[1];
    v9 = mlir::Builder::getBoolAttr(&Context, 0);
    mlir::NamedAttribute::NamedAttribute(&v11, v8, v9);
    return mlir::NamedAttrList::push_back(a2, v11, v12);
  }

  return result;
}

uint64_t mlir::mpsx::BufferToTensorOp::verifyInvariantsImpl(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  if (v3)
  {
    v4 = Value;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 16 * v3;
    do
    {
      CallableRegion = mlir::CallGraphNode::getCallableRegion(v4);
      v12 = *this;
      if (CallableRegion == **(*(*this + 6) + 96))
      {
        v5 = *(v4 + 1);
      }

      else
      {
        v13 = mlir::CallGraphNode::getCallableRegion(v4);
        v12 = *this;
        if (v13 == *(*(*(*this + 6) + 96) + 8))
        {
          v6 = *(v4 + 1);
        }

        else
        {
          v14 = mlir::CallGraphNode::getCallableRegion(v4);
          v12 = *this;
          if (v14 == *(*(*(*this + 6) + 96) + 16))
          {
            v7 = *(v4 + 1);
          }

          else
          {
            v15 = mlir::CallGraphNode::getCallableRegion(v4);
            v12 = *this;
            if (v15 == *(*(*(*this + 6) + 96) + 24))
            {
              v8 = *(v4 + 1);
            }

            else
            {
              v16 = mlir::CallGraphNode::getCallableRegion(v4);
              v12 = *this;
              if (v16 == *(*(*(*this + 6) + 96) + 32))
              {
                v9 = *(v4 + 1);
              }
            }
          }
        }
      }

      v4 = (v4 + 16);
      v10 -= 16;
    }

    while (v10);
  }

  else
  {
    v9 = 0;
    v8 = 0;
    v7 = 0;
    v6 = 0;
    v5 = 0;
    v12 = *this;
  }

  if ((mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps1(v12, v9, "shape", 5) & 1) == 0 || (mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps2(*this, v8, "resultElementType", 0x11) & 1) == 0 || (mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps1(*this, v5, "interleave", 10) & 1) == 0 || (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps8(*this, v7, "isTensorBufferOp", 0x10) & 1) == 0 || (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps8(*this, v6, "isChannelAndInterleaveSame", 0x1A) & 1) == 0 || (mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps1(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v17 = *this - 16;
  }

  else
  {
    v17 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v17, 0);
  return mlir::placement::__mlir_ods_local_type_constraint_PlacementOps4(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a2 || mlir::BoolAttr::classof(a2))
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

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v9, "' failed to satisfy constraint: BOOL attribute");
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

uint64_t mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps1(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned int a5)
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  v7 = *(*a2 + 136);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
  {
    v41[0] = a2;
    v41[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v6 + 8);
    mlir::ElementsAttr::isSplat(v41);
    return 1;
  }

  else
  {
    v38 = 261;
    v37[0] = a3;
    v37[1] = a4;
    mlir::Operation::emitOpError(a1, v37, v41);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v41, " #");
    if (*v11)
    {
      v12 = *(v11 + 24);
      v39 = 5;
      v40 = a5;
      v13 = *(v11 + 32);
      v14 = &v39;
      if (v13 >= *(v11 + 36))
      {
        if (v12 <= &v39 && v12 + 24 * v13 > &v39)
        {
          v34 = &v39 - v12;
          v35 = v11;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v11 + 24, v11 + 40, v13 + 1, 24);
          v11 = v35;
          v12 = *(v35 + 24);
          v14 = &v34[v12];
        }

        else
        {
          v33 = v11;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v11 + 24, v11 + 40, v13 + 1, 24);
          v11 = v33;
          v12 = *(v33 + 24);
          v14 = &v39;
        }
      }

      v15 = v12 + 24 * *(v11 + 32);
      v16 = *v14;
      *(v15 + 16) = *(v14 + 2);
      *v15 = v16;
      ++*(v11 + 32);
    }

    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v11, " must be ranked or unranked memref of any type values, but got ");
    if (*v17)
    {
      v18 = &v39;
      v19 = v17;
      mlir::DiagnosticArgument::DiagnosticArgument(&v39, a2);
      v17 = v19;
      v20 = *(v19 + 24);
      v21 = *(v19 + 32);
      if (v21 >= *(v19 + 36))
      {
        if (v20 <= &v39 && v20 + 24 * v21 > &v39)
        {
          v36 = &v39 - v20;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v19 + 24, v19 + 40, v21 + 1, 24);
          v17 = v19;
          v20 = *(v19 + 24);
          v18 = &v36[v20];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v19 + 24, v19 + 40, v21 + 1, 24);
          v17 = v19;
          v20 = *(v19 + 24);
          v18 = &v39;
        }
      }

      v22 = v20 + 24 * *(v17 + 32);
      v23 = *v18;
      *(v22 + 16) = *(v18 + 2);
      *v22 = v23;
      ++*(v17 + 32);
    }

    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
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

      v24 = __p;
      if (__p)
      {
        v25 = v47;
        v26 = __p;
        if (v47 != __p)
        {
          do
          {
            v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
          }

          while (v25 != v24);
          v26 = __p;
        }

        v47 = v24;
        operator delete(v26);
      }

      v27 = v44;
      if (v44)
      {
        v28 = v45;
        v29 = v44;
        if (v45 != v44)
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
          v29 = v44;
        }

        v45 = v27;
        operator delete(v29);
      }

      if (v42 != &v43)
      {
        free(v42);
      }
    }
  }

  return v9;
}

uint64_t mlir::mpsx::CPUOp::getFunctionType(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(Value, (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 8));
  if (v6)
  {
    v7 = *(v5 + 1);
  }

  else
  {
    v7 = 0;
  }

  AttrDictionary = v7;
  return mlir::AffineMapAttr::getValue(&AttrDictionary);
}

uint64_t mlir::mpsx::CPUOp::getArgAttrsAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(Value, (v3 + 16 * v4 - 16), **(*(*this + 6) + 96));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    return 0;
  }

  if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    return *(v5 + 1);
  }

  return 0;
}

uint64_t mlir::mpsx::CPUOp::getResAttrsAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((Value + 16), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 16));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    return 0;
  }

  if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    return *(v5 + 1);
  }

  return 0;
}

void mlir::mpsx::CPUOp::build(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, mlir::IRMapping *a5, void *a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, mlir::Operation **a15, uint64_t a16, void *__src, uint64_t a18)
{
  v78 = *MEMORY[0x1E69E9840];
  *(a2 + 192) = 0;
  v24 = *(a2 + 120);
  if (a18 + v24 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 112, a2 + 128, a18 + v24, 16);
    LODWORD(v24) = *(a2 + 120);
  }

  if (a18)
  {
    memcpy((*(a2 + 112) + 16 * v24), __src, 16 * a18);
    LODWORD(v24) = *(a2 + 120);
  }

  *(a2 + 120) = v24 + a18;
  v73[8] = 261;
  v71 = a3;
  v72 = a4;
  StringAttr = mlir::Builder::getStringAttr(a1, &v71);
  Context = mlir::Attribute::getContext(a2);
  v70 = 261;
  v67 = "sym_name";
  v68 = 8;
  v27 = mlir::StringAttr::get(Context, &v67);
  mlir::NamedAttribute::NamedAttribute(&v74, v27, StringAttr);
  mlir::NamedAttrList::push_back(a2 + 112, v74, v75);
  v28 = a9;
  v29 = mlir::FunctionType::get(*a1, a9, a10, a13, a14);
  v30 = *(*(*(a2 + 8) + 96) + 8);
  v31 = mlir::TypeAttr::get(v29);
  mlir::NamedAttribute::NamedAttribute(&v67, v30, v31);
  mlir::NamedAttrList::push_back(a2 + 112, v67, v68);
  v32 = mlir::OperationState::addRegion(a2);
  v33 = operator new(0x48uLL);
  *v33 = 0u;
  v33[1] = 0u;
  *(v33 + 4) = v33 + 2;
  *(v33 + 5) = v33 + 2;
  *(v33 + 7) = 0;
  *(v33 + 8) = 0;
  *(v33 + 6) = 0;
  v71 = v73;
  v72 = 0x400000000;
  v67 = a6;
  v68 = 0;
  if (a7)
  {
    v34 = 0;
    do
    {
      v74 = mlir::ValueRange::dereference_iterator(&v67, v34);
      Loc = mlir::Value::getLoc(&v74);
      v36 = v72;
      if (v72 >= HIDWORD(v72))
      {
        v38 = Loc;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v71, v73, v72 + 1, 8);
        Loc = v38;
        v28 = a9;
        v36 = v72;
      }

      *(v71 + v36) = Loc;
      v37 = (v72 + 1);
      LODWORD(v72) = v72 + 1;
      v34 = v68 + 1;
      v68 = v34;
    }

    while (v34 != a7);
    v39 = v71;
  }

  else
  {
    v37 = 0;
    v39 = v73;
  }

  mlir::Block::addArguments(v33, v28, a10, v39, v37);
  llvm::ilist_traits<mlir::Block>::addNodeToList(v32, v33);
  v40 = *v32;
  *(v33 + 2) = v32;
  *(v33 + 1) = v40;
  *(v40 + 8) = v33 + 8;
  *v32 = v33 + 8;
  v41 = (a1 + 16);
  v65 = *(a1 + 16);
  v43 = *(v33 + 5);
  v42 = *(v33 + 6);
  *(a1 + 16) = v33;
  *(a1 + 24) = v43;
  v44 = *(v33 + 7);
  v67 = a6;
  v68 = 0;
  v69[0] = v42;
  if (a7 && v42 != v44)
  {
    v45 = 0;
    do
    {
      v46 = mlir::ValueRange::dereference_iterator(&v67, v45);
      v47 = *v69[0];
      v74 = v46;
      *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](a5, &v74) = v47;
      v45 = v68 + 1;
      v48 = v69[0] + 8;
      v68 = v45;
      v69[0] += 8;
    }

    while (v45 != a7 && v48 != v44);
  }

  if (a16)
  {
    v51 = 8 * a16;
    do
    {
      v52 = *a15++;
      mlir::OpBuilder::clone(a1, v52, a5);
      v51 -= 8;
    }

    while (v51);
  }

  v67 = v69;
  v68 = 0x600000000;
  if (a12 < 7)
  {
    v53 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v67, v69, a12, 8);
    v53 = v68;
  }

  v74 = a11;
  v75 = 0;
  v76 = a5;
  v77 = 1;
  if (a12)
  {
    v54 = 0;
    v55 = (v67 + 8 * v53);
    do
    {
      v56 = mlir::ValueRange::dereference_iterator(&v74, v54);
      v57 = *(v76 + 4);
      if (v57)
      {
        v58 = *v76;
        v59 = 0x9DDFEA08EB382D69 * ((8 * v56 - 0xAE502812AA7333) ^ HIDWORD(v56));
        v60 = 0x9DDFEA08EB382D69 * (HIDWORD(v56) ^ (v59 >> 47) ^ v59);
        v61 = (-348639895 * ((v60 >> 47) ^ v60)) & (v57 - 1);
        v62 = *(*v76 + 16 * v61);
        if (v62 == v56)
        {
LABEL_31:
          if (v61 != v57)
          {
            v56 = *(v58 + 16 * v61 + 8);
          }
        }

        else
        {
          v63 = 1;
          while (v62 != -4096)
          {
            v64 = v61 + v63++;
            v61 = v64 & (v57 - 1);
            v62 = *(v58 + 16 * v61);
            if (v62 == v56)
            {
              goto LABEL_31;
            }
          }
        }
      }

      *v55++ = v56;
      v54 = v75 + 1;
      v75 = v54;
    }

    while (v54 != a12);
    v53 = v68;
  }

  LODWORD(v68) = v53 + a12;
  mlir::OpBuilder::create<mlir::mpsx::RegionReturnOp,llvm::SmallVector<mlir::Value,6u> &>(a1, *a2, &v67);
  if (v67 != v69)
  {
    free(v67);
  }

  if (v65)
  {
    *v41 = v65;
  }

  else
  {
    *v41 = 0;
    *(a1 + 24) = 0;
  }

  if (v71 != v73)
  {
    free(v71);
  }
}

uint64_t mlir::OpBuilder::create<mlir::mpsx::RegionReturnOp,llvm::SmallVector<mlir::Value,6u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v15[5] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mpsx::RegionReturnOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mpsx::RegionReturnOp,llvm::ArrayRef<mlir::Value> &>(v14, v15, v13);
  }

  mlir::OperationState::OperationState(v14, a2, v7);
  mlir::ValueRange::ValueRange(v15, *a3, *(a3 + 8));
  mlir::OperationState::addOperands(v14, v15[0], v15[1]);
  v9 = mlir::OpBuilder::create(a1, v14);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::RegionReturnOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v14);
  return v10;
}

BOOL mlir::mpsx::CPUOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v33 = *MEMORY[0x1E69E9840];
  v24[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v24);
  if (v3)
  {
    v4 = Value;
    v5 = 0;
    v6 = 16 * v3;
    while (1)
    {
      CallableRegion = mlir::CallGraphNode::getCallableRegion(v4);
      v8 = *this;
      if (CallableRegion == *(*(*(*this + 6) + 96) + 8))
      {
        break;
      }

      if (mlir::CallGraphNode::getCallableRegion(v4) == **(*(*this + 6) + 96))
      {
        v5 = *(v4 + 1);
      }

      v4 = (v4 + 16);
      v6 -= 16;
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    v18 = *(v4 + 1);
    for (i = 0; v6; v6 -= 16)
    {
      v20 = mlir::CallGraphNode::getCallableRegion(v4);
      v8 = *this;
      if (v20 == *(*(*(*this + 6) + 96) + 16))
      {
        i = *(v4 + 1);
      }

      v4 = (v4 + 16);
    }

    if (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps1(v8, v18, "function_type", 0xD) & 1) != 0 && (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps5(*this, v5, "arg_attrs", 9) & 1) != 0 && (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps5(*this, i, "res_attrs", 9))
    {
      return mlir::mpsx::__mlir_ods_local_region_constraint_MPSXOps2(*this, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10), "body", 4, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
LABEL_7:
    v22 = "requires attribute 'function_type'";
    v23 = 259;
    mlir::OpState::emitOpError(this, &v22, v24);
    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v24);
    if (v24[0])
    {
      mlir::InFlightDiagnostic::report(v24);
    }

    if (v32 == 1)
    {
      if (v31 != &v32)
      {
        free(v31);
      }

      v10 = __p;
      if (__p)
      {
        v11 = v30;
        v12 = __p;
        if (v30 != __p)
        {
          do
          {
            v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
          }

          while (v11 != v10);
          v12 = __p;
        }

        v30 = v10;
        operator delete(v12);
      }

      v13 = v27;
      if (v27)
      {
        v14 = v28;
        v15 = v27;
        if (v28 != v27)
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
          v15 = v27;
        }

        v28 = v13;
        operator delete(v15);
      }

      if (v25 != &v26)
      {
        free(v25);
      }
    }
  }

  return v9;
}

uint64_t mlir::mpsx::__mlir_ods_local_region_constraint_MPSXOps2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v44 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 8);
  if (v8 != a2 && *(v8 + 8) == a2)
  {
    return 1;
  }

  v30 = "region #";
  v31 = 259;
  mlir::Operation::emitOpError(a1, &v30, &v32);
  if (v32)
  {
    LODWORD(v28[0]) = 5;
    v28[1] = a5;
    v9 = v28;
    v10 = v34;
    if (v35 >= v36)
    {
      if (v34 <= v28 && v34 + 24 * v35 > v28)
      {
        v25 = v28 - v34;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, v37, v35 + 1, 24);
        v10 = v34;
        v9 = v34 + v25;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, v37, v35 + 1, 24);
        v9 = v28;
        v10 = v34;
      }
    }

    v11 = &v10[24 * v35];
    v12 = *v9;
    *(v11 + 2) = *(v9 + 2);
    *v11 = v12;
    ++v35;
  }

  if (a4)
  {
    v27 = 1283;
    v26[0] = " ('";
    v26[2] = a3;
    v26[3] = a4;
    v28[0] = v26;
    v28[2] = "') ";
    v13 = 770;
  }

  else
  {
    v28[0] = " ";
    v13 = 259;
  }

  v29 = v13;
  if (v32)
  {
    mlir::Diagnostic::operator<<(&v33, v28);
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v32, "failed to verify constraint: region with 1 blocks");
  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v14);
  if (v32)
  {
    mlir::InFlightDiagnostic::report(&v32);
  }

  if (v43 == 1)
  {
    if (v42 != &v43)
    {
      free(v42);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v41;
      v18 = __p;
      if (v41 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v41 = v16;
      operator delete(v18);
    }

    v19 = v38;
    if (v38)
    {
      v20 = v39;
      v21 = v38;
      if (v39 != v38)
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
        v21 = v38;
      }

      v39 = v19;
      operator delete(v21);
    }

    if (v34 != v37)
    {
      free(v34);
    }
  }

  return v15;
}

void *mlir::mpsx::detail::DeinterleaveOpGenericAdaptorBase::getInterleaveFactor(mlir::mpsx::detail::DeinterleaveOpGenericAdaptorBase *this)
{
  Value = mlir::AffineMapAttr::getValue(this);
  v3 = mlir::DictionaryAttr::end(this);
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(Value, v3, **(*(this + 1) + 96));
  if (v5)
  {
    v6 = *(v4 + 1);
  }

  else
  {
    v6 = 0;
  }

  v11 = v6;
  mlir::IntegerAttr::getValue(&v11, &__p);
  if (v10 <= 0x40)
  {
    return __p;
  }

  v7 = *__p;
  operator delete[](__p);
  return v7;
}

BOOL mlir::mpsx::DeinterleaveOpAdaptor::verify(mlir::mpsx::DeinterleaveOpAdaptor *this, Location a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v24 = *this;
  for (i = mlir::AffineMapAttr::getValue(&v24); i != mlir::DictionaryAttr::end(&v24); i = (i + 16))
  {
    if (mlir::CallGraphNode::getCallableRegion(i) == **(*(this + 1) + 96))
    {
      v14 = *(i + 1);
      if (!v14)
      {
        return 1;
      }

      if (*(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v22[0] = *(i + 1);
        v25[0] = mlir::AffineMapAttr::getValue(v22);
        if (mlir::Type::isUnsignedInteger(v25, 32))
        {
          return 1;
        }
      }

      v22[0] = "'mpsx.deinterleave' op attribute 'interleave_factor' failed to satisfy constraint: 32-bit unsigned integer attribute";
      v23 = 259;
      mlir::emitError(a2.var0.var0, v22, v25);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
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
        }

        v9 = v28;
        if (!v28)
        {
          goto LABEL_43;
        }

        v18 = v29;
        v11 = v28;
        if (v29 == v28)
        {
LABEL_42:
          v29 = v9;
          operator delete(v11);
LABEL_43:
          if (v26 != &v27)
          {
            free(v26);
          }

          return v5;
        }

        do
        {
          v20 = *--v18;
          v19 = v20;
          *v18 = 0;
          if (v20)
          {
            operator delete[](v19);
          }
        }

        while (v18 != v9);
LABEL_41:
        v11 = v28;
        goto LABEL_42;
      }

      return v5;
    }
  }

  v22[0] = "'mpsx.deinterleave' op requires attribute 'interleave_factor'";
  v23 = 259;
  mlir::emitError(a2.var0.var0, v22, v25);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
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
    if (!v28)
    {
      goto LABEL_43;
    }

    v10 = v29;
    v11 = v28;
    if (v29 == v28)
    {
      goto LABEL_42;
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
    goto LABEL_41;
  }

  return v5;
}

void *mlir::mpsx::DeinterleaveOp::getInterleaveFactor(mlir::Operation **this)
{
  __p = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&__p);
  __p = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&__p);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(Value, (v3 + 16 * v4), **(*(*this + 6) + 96));
  if (v6)
  {
    v7 = *(v5 + 1);
  }

  else
  {
    v7 = 0;
  }

  v12 = v7;
  mlir::IntegerAttr::getValue(&v12, &__p);
  if (v11 <= 0x40)
  {
    return __p;
  }

  v8 = *__p;
  operator delete[](__p);
  return v8;
}

void mlir::mpsx::DeinterleaveOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v26[2] = *MEMORY[0x1E69E9840];
  v21 = a3;
  mlir::OperationState::addOperands(a2, &v21, 1uLL);
  v7 = **(*(a2 + 8) + 96);
  IntegerType = mlir::Builder::getIntegerType(a1, 32, 0);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, IntegerType, a4);
  mlir::NamedAttribute::NamedAttribute(&__src, v7, IntegerAttr);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v25);
  __src = v26;
  v25 = 0x200000000;
  v10 = *a1;
  mlir::ValueRange::ValueRange(v23, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(v22, *(a2 + 224), *(a2 + 232));
  if ((mlir::mpsx::DeinterleaveOp::inferReturnTypes(v10, v13, v14, v23[0], v23[1], Dictionary, v15, v16, v22[0], v22[1], &__src) & 1) == 0)
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

BOOL mlir::mpsx::DeinterleaveOp::verifyInvariantsImpl(mlir::Operation **this)
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

    if (mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps3(*this, *(v4 + 1), "interleave_factor", 0x11) & 1) != 0 && (mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps3(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0))
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
      return mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps3(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
LABEL_5:
    v18 = "requires attribute 'interleave_factor'";
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

uint64_t mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps3(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned int a5)
{
  v53 = *MEMORY[0x1E69E9840];
  v7 = *a2;
  v8 = *(*a2 + 136);
  if (v8 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v10 = a3;
    v11 = a4;
    v12 = a1;
    v44[0] = a2;
    v44[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v7 + 8);
    v40[0] = mlir::ElementsAttr::isSplat(v44);
    if (mlir::Type::isSignlessInteger(v40, 1))
    {
      return 1;
    }

    if (mlir::Type::isSignedInteger(v40, 8))
    {
      return 1;
    }

    if (mlir::Type::isSignedInteger(v40, 16))
    {
      return 1;
    }

    if (mlir::Type::isSignedInteger(v40, 32))
    {
      return 1;
    }

    if (mlir::Type::isSignedInteger(v40, 64))
    {
      return 1;
    }

    if (mlir::Type::isUnsignedInteger(v40, 8))
    {
      return 1;
    }

    if (mlir::Type::isUnsignedInteger(v40, 16))
    {
      return 1;
    }

    if (mlir::Type::isUnsignedInteger(v40, 32))
    {
      return 1;
    }

    if (mlir::Type::isUnsignedInteger(v40, 64))
    {
      return 1;
    }

    if (mlir::Type::isF16(v40))
    {
      return 1;
    }

    if (mlir::Type::isF32(v40))
    {
      return 1;
    }

    if (mlir::Type::isBF16(v40))
    {
      return 1;
    }

    a1 = v12;
    a4 = v11;
    a3 = v10;
    if (*(*v40[0] + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
    {
      return 1;
    }
  }

  v41 = 261;
  v40[0] = a3;
  v40[1] = a4;
  mlir::Operation::emitOpError(a1, v40, v44);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v44, " #");
  if (*v13)
  {
    v14 = *(v13 + 24);
    v42 = 5;
    v43 = a5;
    v15 = *(v13 + 32);
    v16 = &v42;
    if (v15 >= *(v13 + 36))
    {
      if (v14 <= &v42 && v14 + 24 * v15 > &v42)
      {
        v37 = &v42 - v14;
        v38 = v13;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v13 + 24, v13 + 40, v15 + 1, 24);
        v13 = v38;
        v14 = *(v38 + 24);
        v16 = &v37[v14];
      }

      else
      {
        v36 = v13;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v13 + 24, v13 + 40, v15 + 1, 24);
        v13 = v36;
        v14 = *(v36 + 24);
        v16 = &v42;
      }
    }

    v17 = v14 + 24 * *(v13 + 32);
    v18 = *v16;
    *(v17 + 16) = *(v16 + 2);
    *v17 = v18;
    ++*(v13 + 32);
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v13, " must be tensor of mps native type values, but got ");
  if (*v19)
  {
    v20 = &v42;
    v21 = v19;
    mlir::DiagnosticArgument::DiagnosticArgument(&v42, a2);
    v19 = v21;
    v22 = *(v21 + 24);
    v23 = *(v21 + 32);
    if (v23 >= *(v21 + 36))
    {
      if (v22 <= &v42 && v22 + 24 * v23 > &v42)
      {
        v39 = &v42 - v22;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v21 + 24, v21 + 40, v23 + 1, 24);
        v19 = v21;
        v22 = *(v21 + 24);
        v20 = &v39[v22];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v21 + 24, v21 + 40, v23 + 1, 24);
        v19 = v21;
        v22 = *(v21 + 24);
        v20 = &v42;
      }
    }

    v24 = v22 + 24 * *(v19 + 32);
    v25 = *v20;
    *(v24 + 16) = *(v20 + 2);
    *v24 = v25;
    ++*(v19 + 32);
  }

  v26 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v19);
  if (v44[0])
  {
    mlir::InFlightDiagnostic::report(v44);
  }

  if (v52 == 1)
  {
    if (v51 != &v52)
    {
      free(v51);
    }

    v27 = __p;
    if (__p)
    {
      v28 = v50;
      v29 = __p;
      if (v50 != __p)
      {
        do
        {
          v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
        }

        while (v28 != v27);
        v29 = __p;
      }

      v50 = v27;
      operator delete(v29);
    }

    v30 = v47;
    if (v47)
    {
      v31 = v48;
      v32 = v47;
      if (v48 != v47)
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
        v32 = v47;
      }

      v48 = v30;
      operator delete(v32);
    }

    if (v45 != &v46)
    {
      free(v45);
    }
  }

  return v26;
}

uint64_t mlir::mpsx::FPToIntClampedOp::getResultElementType(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(Value, (v3 + 16 * v4), **(*(*this + 6) + 96));
  if (v6)
  {
    v7 = *(v5 + 1);
  }

  else
  {
    v7 = 0;
  }

  AttrDictionary = v7;
  return mlir::AffineMapAttr::getValue(&AttrDictionary);
}

BOOL mlir::mpsx::FPToIntClampedOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v63 = *MEMORY[0x1E69E9840];
  v54[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v54);
  if (v3)
  {
    v4 = Value;
    v5 = 16 * v3;
    while (mlir::CallGraphNode::getCallableRegion(v4) != **(*(*this + 6) + 96))
    {
      v4 += 2;
      v5 -= 16;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    if (mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps2(*this, v4[1], "resultElementType", 0x11) & 1) != 0 && (mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps4(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0))
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
      v17 = *this;
      v18 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
      v19 = *v18;
      v20 = *(*v18 + 136);
      if (v20 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v20 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        v22 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v19 + 8);
        v54[0] = v18;
        v54[1] = v22;
        v53[0] = mlir::ElementsAttr::isSplat(v54);
        if (mlir::Type::isSignedInteger(v53, 8) || mlir::Type::isUnsignedInteger(v53, 8))
        {
          return 1;
        }

        v19 = *v18;
        v20 = *(*v18 + 136);
      }

      if (v20 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
      {
        v50 = v18;
        v51 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v19 + 8);
        v53[0] = mlir::ElementsAttr::isSplat(&v50);
        if (mlir::Type::isSignedInteger(v53, 8) || mlir::Type::isUnsignedInteger(v53, 8))
        {
          return 1;
        }
      }

      v52 = 261;
      v50 = "result";
      v51 = 6;
      mlir::Operation::emitOpError(v17, &v50, v54);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v54, " #");
      if (*v23)
      {
        v24 = *(v23 + 24);
        LODWORD(v53[0]) = 5;
        v53[1] = 0;
        v25 = *(v23 + 32);
        v26 = v53;
        if (v25 >= *(v23 + 36))
        {
          if (v24 <= v53 && v24 + 24 * v25 > v53)
          {
            v47 = v53 - v24;
            v48 = v23;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v23 + 24, v23 + 40, v25 + 1, 24);
            v23 = v48;
            v24 = *(v48 + 24);
            v26 = &v47[v24];
          }

          else
          {
            v46 = v23;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v23 + 24, v23 + 40, v25 + 1, 24);
            v23 = v46;
            v24 = *(v46 + 24);
            v26 = v53;
          }
        }

        v27 = v24 + 24 * *(v23 + 32);
        v28 = *v26;
        *(v27 + 16) = *(v26 + 2);
        *v27 = v28;
        ++*(v23 + 32);
      }

      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v23, " must be tensor of int8 values or memref of int8 values, but got ");
      if (*v29)
      {
        v30 = v53;
        v31 = v29;
        mlir::DiagnosticArgument::DiagnosticArgument(v53, v18);
        v32 = *(v31 + 24);
        v33 = *(v31 + 32);
        if (v33 >= *(v31 + 36))
        {
          if (v32 <= v53 && v32 + 24 * v33 > v53)
          {
            v49 = v53 - v32;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v31 + 24, v31 + 40, v33 + 1, 24);
            v29 = v31;
            v32 = *(v31 + 24);
            v30 = &v49[v32];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(v31 + 24, v31 + 40, v33 + 1, 24);
            v29 = v31;
            v32 = *(v31 + 24);
            v30 = v53;
          }
        }

        else
        {
          v29 = v31;
        }

        v34 = v32 + 24 * *(v29 + 32);
        v35 = *v30;
        *(v34 + 16) = *(v30 + 2);
        *v34 = v35;
        ++*(v29 + 32);
      }

      v36 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v29);
      if (v54[0])
      {
        mlir::InFlightDiagnostic::report(v54);
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

        v40 = v57;
        if (v57)
        {
          v41 = v58;
          v42 = v57;
          if (v58 != v57)
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
            v42 = v57;
          }

          v58 = v40;
          operator delete(v42);
        }

        if (v55 != v56)
        {
          free(v55);
        }
      }

      if (v36)
      {
        return 1;
      }
    }

    return 0;
  }

LABEL_5:
  v50 = "requires attribute 'resultElementType'";
  v52 = 259;
  mlir::OpState::emitOpError(this, &v50, v54);
  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v54);
  if (v54[0])
  {
    mlir::InFlightDiagnostic::report(v54);
  }

  if (v62 == 1)
  {
    if (v61 != &v62)
    {
      free(v61);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v60;
      v9 = __p;
      if (v60 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v60 = v7;
      operator delete(v9);
    }

    v10 = v57;
    if (v57)
    {
      v11 = v58;
      v12 = v57;
      if (v58 != v57)
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
        v12 = v57;
      }

      v58 = v10;
      operator delete(v12);
    }

    if (v55 != v56)
    {
      free(v55);
    }
  }

  return v6;
}

uint64_t mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps4(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned int a5)
{
  v54 = *MEMORY[0x1E69E9840];
  v7 = *a2;
  v8 = *(*a2 + 136);
  if (v8 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v10 = a3;
    v11 = a4;
    v12 = a1;
    v45[0] = a2;
    v45[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v7 + 8);
    v41[0] = mlir::ElementsAttr::isSplat(v45);
    if (mlir::Type::isF16(v41))
    {
      return 1;
    }

    if (mlir::Type::isF32(v41))
    {
      return 1;
    }

    isBF16 = mlir::Type::isBF16(v41);
    a1 = v12;
    a4 = v11;
    a3 = v10;
    if (isBF16)
    {
      return 1;
    }
  }

  v42 = 261;
  v41[0] = a3;
  v41[1] = a4;
  mlir::Operation::emitOpError(a1, v41, v45);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v45, " #");
  if (*v15)
  {
    v16 = *(v15 + 24);
    v43 = 5;
    v44 = a5;
    v17 = *(v15 + 32);
    v18 = &v43;
    if (v17 >= *(v15 + 36))
    {
      if (v16 <= &v43 && v16 + 24 * v17 > &v43)
      {
        v38 = &v43 - v16;
        v39 = v15;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v15 + 24, v15 + 40, v17 + 1, 24);
        v15 = v39;
        v16 = *(v39 + 24);
        v18 = &v38[v16];
      }

      else
      {
        v37 = v15;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v15 + 24, v15 + 40, v17 + 1, 24);
        v15 = v37;
        v16 = *(v37 + 24);
        v18 = &v43;
      }
    }

    v19 = v16 + 24 * *(v15 + 32);
    v20 = *v18;
    *(v19 + 16) = *(v18 + 2);
    *v19 = v20;
    ++*(v15 + 32);
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v15, " must be tensor of floating point values, but got ");
  if (*v21)
  {
    v22 = &v43;
    v23 = v21;
    mlir::DiagnosticArgument::DiagnosticArgument(&v43, a2);
    v21 = v23;
    v24 = *(v23 + 24);
    v25 = *(v23 + 32);
    if (v25 >= *(v23 + 36))
    {
      if (v24 <= &v43 && v24 + 24 * v25 > &v43)
      {
        v40 = &v43 - v24;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v23 + 24, v23 + 40, v25 + 1, 24);
        v21 = v23;
        v24 = *(v23 + 24);
        v22 = &v40[v24];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v23 + 24, v23 + 40, v25 + 1, 24);
        v21 = v23;
        v24 = *(v23 + 24);
        v22 = &v43;
      }
    }

    v26 = v24 + 24 * *(v21 + 32);
    v27 = *v22;
    *(v26 + 16) = *(v22 + 2);
    *v26 = v27;
    ++*(v21 + 32);
  }

  v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
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

    v28 = __p;
    if (__p)
    {
      v29 = v51;
      v30 = __p;
      if (v51 != __p)
      {
        do
        {
          v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
        }

        while (v29 != v28);
        v30 = __p;
      }

      v51 = v28;
      operator delete(v30);
    }

    v31 = v48;
    if (v48)
    {
      v32 = v49;
      v33 = v48;
      if (v49 != v48)
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
        v33 = v48;
      }

      v49 = v31;
      operator delete(v33);
    }

    if (v46 != &v47)
    {
      free(v46);
    }
  }

  return v14;
}

uint64_t mlir::mpsx::FusionOp::getCustomFusionTypeAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(Value, (v3 + 16 * v4 - 16), **(*(*this + 6) + 96));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    return 0;
  }

  if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    return *(v5 + 1);
  }

  return 0;
}

uint64_t mlir::OpBuilder::create<mlir::mpsx::FusionReturnOp,llvm::SmallVector<mlir::Value,6u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v15[5] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mpsx::FusionReturnOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mpsx::FusionReturnOp,llvm::SmallVector<mlir::Value,6u> &>(v14, v15, v13);
  }

  mlir::OperationState::OperationState(v14, a2, v7);
  mlir::ValueRange::ValueRange(v15, *a3, *(a3 + 8));
  mlir::OperationState::addOperands(v14, v15[0], v15[1]);
  v9 = mlir::OpBuilder::create(a1, v14);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionReturnOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v14);
  return v10;
}

uint64_t mlir::mpsx::FusionOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v47 = *MEMORY[0x1E69E9840];
  *v38 = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v38);
  if (!v3)
  {
LABEL_7:
    v36[0] = "requires attribute 'fusionType'";
    v37 = 259;
    mlir::OpState::emitOpError(this, v36, v38);
    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v38);
    if (*v38)
    {
      mlir::InFlightDiagnostic::report(v38);
    }

    if (v46 == 1)
    {
      if (v45 != &v46)
      {
        free(v45);
      }

      v10 = __p;
      if (__p)
      {
        v11 = v44;
        v12 = __p;
        if (v44 != __p)
        {
          do
          {
            v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
          }

          while (v11 != v10);
          v12 = __p;
        }

        v44 = v10;
        operator delete(v12);
      }

      v13 = v41;
      if (v41)
      {
        v14 = v42;
        v15 = v41;
        if (v42 != v41)
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
          v15 = v41;
        }

        v42 = v13;
        operator delete(v15);
      }

      if (v39 != v40)
      {
        free(v39);
      }
    }

    return v9;
  }

  v4 = Value;
  v5 = 0;
  v6 = 16 * v3;
  while (1)
  {
    CallableRegion = mlir::CallGraphNode::getCallableRegion(v4);
    v8 = *this;
    if (CallableRegion == *(*(*(*this + 6) + 96) + 8))
    {
      break;
    }

    if (mlir::CallGraphNode::getCallableRegion(v4) == **(*(*this + 6) + 96))
    {
      v5 = *(v4 + 1);
    }

    v4 = (v4 + 16);
    v6 -= 16;
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  v18 = *(v4 + 1);
  if (v18 && *(*v18 + 136) != &mlir::detail::TypeIDResolver<mlir::mpsx::FusionTypeAttr,void>::id)
  {
    v37 = 257;
    mlir::Operation::emitOpError(v8, v36, v38);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v38, "attribute '");
    if (*v19)
    {
      v37 = 261;
      v36[0] = "fusionType";
      v36[1] = 10;
      v20 = v19;
      mlir::Diagnostic::operator<<((v19 + 1), v36);
      v19 = v20;
    }

    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v19, "' failed to satisfy constraint: valid FusionType");
    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
    if (*v38)
    {
      mlir::InFlightDiagnostic::report(v38);
    }

    if (v46 == 1)
    {
      if (v45 != &v46)
      {
        free(v45);
      }

      v23 = __p;
      if (__p)
      {
        v24 = v44;
        v25 = __p;
        if (v44 != __p)
        {
          do
          {
            v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
          }

          while (v24 != v23);
          v25 = __p;
        }

        v44 = v23;
        operator delete(v25);
      }

      v26 = v41;
      if (v41)
      {
        v27 = v42;
        v28 = v41;
        if (v42 != v41)
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
          v28 = v41;
        }

        v42 = v26;
        operator delete(v28);
      }

      if (v39 != v40)
      {
        free(v39);
      }
    }

    if (!v22)
    {
      return 0;
    }

    v8 = *this;
  }

  if ((mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps2(v8, v5, "customFusionType", 0x10) & 1) == 0)
  {
    return 0;
  }

  v31 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v32 = *(v31 + 17);
    if (v32)
    {
      v33 = 0;
      v34 = *(v31 + 9) + 24;
      while (mlir::placement::__mlir_ods_local_type_constraint_PlacementOps5(*this, (*(*v34 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v33))
      {
        ++v33;
        v34 += 32;
        if (v32 == v33)
        {
          v31 = *this;
          goto LABEL_60;
        }
      }

      return 0;
    }
  }

LABEL_60:
  mlir::mpsx::FusionOp::verifyInvariantsImpl(v31, this, v38);
  return v38[0];
}

BOOL mlir::mpsx::InterleaveOpAdaptor::verify(mlir::mpsx::InterleaveOpAdaptor *this, Location a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v24 = *this;
  for (i = mlir::AffineMapAttr::getValue(&v24); i != mlir::DictionaryAttr::end(&v24); i = (i + 16))
  {
    if (mlir::CallGraphNode::getCallableRegion(i) == **(*(this + 1) + 96))
    {
      v14 = *(i + 1);
      if (!v14)
      {
        return 1;
      }

      if (*(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v22[0] = *(i + 1);
        v25[0] = mlir::AffineMapAttr::getValue(v22);
        if (mlir::Type::isUnsignedInteger(v25, 32))
        {
          return 1;
        }
      }

      v22[0] = "'mpsx.interleave' op attribute 'interleave_factor' failed to satisfy constraint: 32-bit unsigned integer attribute";
      v23 = 259;
      mlir::emitError(a2.var0.var0, v22, v25);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
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
        }

        v9 = v28;
        if (!v28)
        {
          goto LABEL_43;
        }

        v18 = v29;
        v11 = v28;
        if (v29 == v28)
        {
LABEL_42:
          v29 = v9;
          operator delete(v11);
LABEL_43:
          if (v26 != &v27)
          {
            free(v26);
          }

          return v5;
        }

        do
        {
          v20 = *--v18;
          v19 = v20;
          *v18 = 0;
          if (v20)
          {
            operator delete[](v19);
          }
        }

        while (v18 != v9);
LABEL_41:
        v11 = v28;
        goto LABEL_42;
      }

      return v5;
    }
  }

  v22[0] = "'mpsx.interleave' op requires attribute 'interleave_factor'";
  v23 = 259;
  mlir::emitError(a2.var0.var0, v22, v25);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
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
    if (!v28)
    {
      goto LABEL_43;
    }

    v10 = v29;
    v11 = v28;
    if (v29 == v28)
    {
      goto LABEL_42;
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
    goto LABEL_41;
  }

  return v5;
}

void mlir::mpsx::InterleaveOp::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[2] = *MEMORY[0x1E69E9840];
  v18 = a3;
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  mlir::NamedAttribute::NamedAttribute(&__src, **(*(a2 + 8) + 96), a4);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v22);
  __src = v23;
  v22 = 0x200000000;
  v7 = *a1;
  mlir::ValueRange::ValueRange(v20, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(v19, *(a2 + 224), *(a2 + 232));
  if ((mlir::mpsx::InterleaveOp::inferReturnTypes(v7, v10, v11, v20[0], v20[1], Dictionary, v12, v13, v19[0], v19[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v14 = __src;
  v15 = v22;
  v16 = *(a2 + 72);
  v17 = v16 + v22;
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
  if (__src != v23)
  {
    free(__src);
  }
}

void mlir::mpsx::InterleaveOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v26[2] = *MEMORY[0x1E69E9840];
  v21 = a3;
  mlir::OperationState::addOperands(a2, &v21, 1uLL);
  v7 = **(*(a2 + 8) + 96);
  IntegerType = mlir::Builder::getIntegerType(a1, 32, 0);
  IntegerAttr = mlir::Builder::getIntegerAttr(a1, IntegerType, a4);
  mlir::NamedAttribute::NamedAttribute(&__src, v7, IntegerAttr);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v25);
  __src = v26;
  v25 = 0x200000000;
  v10 = *a1;
  mlir::ValueRange::ValueRange(v23, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(v22, *(a2 + 224), *(a2 + 232));
  if ((mlir::mpsx::InterleaveOp::inferReturnTypes(v10, v13, v14, v23[0], v23[1], Dictionary, v15, v16, v22[0], v22[1], &__src) & 1) == 0)
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

void mlir::mpsx::ListPopBackOp::build(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v12 = a3;
  mlir::OperationState::addOperands(a2, &v12, 1uLL);
  __src = v17;
  v16 = 0x200000000;
  mlir::ValueRange::ValueRange(&v14, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(&v13, *(a2 + 224), *(a2 + 232));
  v18 = v14;
  v5 = *(mlir::ValueRange::dereference_iterator(&v18, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  v6 = v16;
  if (v16 >= HIDWORD(v16))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v17, v16 + 1, 8);
    v6 = v16;
  }

  *(__src + v6) = v5;
  v7 = (v16 + 1);
  LODWORD(v16) = v7;
  v8 = *(v5 + 8);
  if (v7 >= HIDWORD(v16))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v17, v7 + 1, 8);
    LODWORD(v7) = v16;
  }

  *(__src + v7) = v8;
  LODWORD(v16) = v16 + 1;
  v9 = v16;
  v10 = __src;
  v11 = *(a2 + 72);
  if (v11 + v16 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v11 + v16, 8);
    LODWORD(v11) = *(a2 + 72);
  }

  if (v9)
  {
    memcpy((*(a2 + 64) + 8 * v11), v10, 8 * v9);
    LODWORD(v11) = *(a2 + 72);
  }

  *(a2 + 72) = v11 + v9;
  if (__src != v17)
  {
    free(__src);
  }
}

uint64_t mlir::mpsx::ListPopBackOp::verifyInvariantsImpl(mlir::mpsx::ListPopBackOp *this)
{
  if ((mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps7(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 36) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 36))
  {
    v4 = *this - 16;
  }

  else
  {
    v4 = 0;
  }

  v5 = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 1);
  v6 = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  return mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps8(*this, *(v6 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 1u) & 1;
}

uint64_t mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps7(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned int a5)
{
  v52 = *MEMORY[0x1E69E9840];
  v6 = *(*a2 + 136);
  {
    v37 = a2;
    v38 = a4;
    v32 = a1;
    v36 = a3;
    mlir::mpsx::detail::TypeWithStaticSubtypesImpl<mlir::mpsx::ListType,1u>::get();
    a3 = v36;
    a2 = v37;
    a4 = v38;
    a1 = v32;
  }

  if (v6 == mlir::detail::TypeIDResolver<mlir::mpsx::ListType,void>::resolveTypeID(void)::id)
  {
    return 1;
  }

  v7 = a2;
  v40 = 261;
  v39[0] = a3;
  v39[1] = a4;
  mlir::Operation::emitOpError(a1, v39, v43);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v43, " #");
  if (*v8)
  {
    v9 = *(v8 + 24);
    v41 = 5;
    v42 = a5;
    v10 = *(v8 + 32);
    v11 = &v41;
    if (v10 >= *(v8 + 36))
    {
      if (v9 <= &v41 && v9 + 24 * v10 > &v41)
      {
        v33 = &v41 - v9;
        v34 = v8;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v8 + 24, v8 + 40, v10 + 1, 24);
        v8 = v34;
        v9 = *(v34 + 24);
        v11 = &v33[v9];
      }

      else
      {
        v31 = v8;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v8 + 24, v8 + 40, v10 + 1, 24);
        v8 = v31;
        v9 = *(v31 + 24);
        v11 = &v41;
      }
    }

    v12 = v9 + 24 * *(v8 + 32);
    v13 = *v11;
    *(v12 + 16) = *(v11 + 2);
    *v12 = v13;
    ++*(v8 + 32);
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v8, " must be MPSX list type, but got ");
  if (*v14)
  {
    v15 = &v41;
    v16 = v14;
    mlir::DiagnosticArgument::DiagnosticArgument(&v41, v7);
    v14 = v16;
    v17 = *(v16 + 24);
    v18 = *(v16 + 32);
    if (v18 >= *(v16 + 36))
    {
      if (v17 <= &v41 && v17 + 24 * v18 > &v41)
      {
        v35 = &v41 - v17;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v16 + 24, v16 + 40, v18 + 1, 24);
        v14 = v16;
        v17 = *(v16 + 24);
        v15 = &v35[v17];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v16 + 24, v16 + 40, v18 + 1, 24);
        v14 = v16;
        v17 = *(v16 + 24);
        v15 = &v41;
      }
    }

    v19 = v17 + 24 * *(v14 + 32);
    v20 = *v15;
    *(v19 + 16) = *(v15 + 2);
    *v19 = v20;
    ++*(v14 + 32);
  }

  v21 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v14);
  if (v43[0])
  {
    mlir::InFlightDiagnostic::report(v43);
  }

  if (v51 == 1)
  {
    if (v50 != &v51)
    {
      free(v50);
    }

    v22 = __p;
    if (__p)
    {
      v23 = v49;
      v24 = __p;
      if (v49 != __p)
      {
        do
        {
          v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
        }

        while (v23 != v22);
        v24 = __p;
      }

      v49 = v22;
      operator delete(v24);
    }

    v25 = v46;
    if (v46)
    {
      v26 = v47;
      v27 = v46;
      if (v47 != v46)
      {
        do
        {
          v29 = *--v26;
          v28 = v29;
          *v26 = 0;
          if (v29)
          {
            operator delete[](v28);
          }
        }

        while (v26 != v25);
        v27 = v46;
      }

      v47 = v25;
      operator delete(v27);
    }

    if (v44 != &v45)
    {
      free(v44);
    }
  }

  return v21;
}

uint64_t mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps8(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned int a5)
{
  v59 = *MEMORY[0x1E69E9840];
  if (mlir::mpsx::isMPSXListElementType(a2))
  {
    return 1;
  }

  v46 = 261;
  v45[0] = a3;
  v45[1] = a4;
  mlir::Operation::emitOpError(a1, v45, v50);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v50, " #");
  if (*v11)
  {
    v13 = v11 + 24;
    v12 = *(v11 + 24);
    v47 = 5;
    v48 = a5;
    v14 = *(v11 + 32);
    v15 = &v47;
    if (v14 >= *(v11 + 36))
    {
      if (v12 <= &v47 && v12 + 24 * v14 > &v47)
      {
        v40 = &v47 - v12;
        v41 = v11;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v11 + 24, v11 + 40, v14 + 1, 24);
        v11 = v41;
        v12 = *(v41 + 24);
        v15 = &v40[v12];
      }

      else
      {
        v38 = v11;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v11 + 24, v11 + 40, v14 + 1, 24);
        v11 = v38;
        v12 = *(v38 + 24);
        v15 = &v47;
      }
    }

    v16 = v12 + 24 * *(v11 + 32);
    v17 = *v15;
    *(v16 + 16) = *(v15 + 2);
    *v16 = v17;
    v18 = (*(v11 + 32) + 1);
    *(v11 + 32) = v18;
    if (*v11)
    {
      v47 = 3;
      v48 = " must be MPSX list element type, but got ";
      v49 = 41;
      v19 = *(v11 + 24);
      v20 = &v47;
      if (v18 >= *(v11 + 36))
      {
        if (v19 <= &v47 && v19 + 24 * v18 > &v47)
        {
          v42 = &v47 - v19;
          v43 = v11;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v13, v11 + 40, v18 + 1, 24);
          v11 = v43;
          v19 = *(v43 + 24);
          v20 = &v42[v19];
        }

        else
        {
          v39 = v11;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v13, v11 + 40, v18 + 1, 24);
          v11 = v39;
          v19 = *(v39 + 24);
          v20 = &v47;
        }
      }

      v21 = v19 + 24 * *(v11 + 32);
      v22 = *v20;
      *(v21 + 16) = *(v20 + 2);
      *v21 = v22;
      ++*(v11 + 32);
      if (*v11)
      {
        v23 = &v47;
        v24 = v11;
        mlir::DiagnosticArgument::DiagnosticArgument(&v47, a2);
        v25 = *(v24 + 32);
        v26 = *(v24 + 24);
        if (v25 >= *(v24 + 36))
        {
          if (v26 <= &v47 && v26 + 24 * v25 > &v47)
          {
            v44 = &v47 - v26;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v13, v24 + 40, v25 + 1, 24);
            v11 = v24;
            v26 = *(v24 + 24);
            v23 = &v44[v26];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(v13, v24 + 40, v25 + 1, 24);
            v11 = v24;
            v26 = *(v24 + 24);
            v23 = &v47;
          }
        }

        else
        {
          v11 = v24;
        }

        v27 = v26 + 24 * *(v11 + 32);
        v28 = *v23;
        *(v27 + 16) = *(v23 + 2);
        *v27 = v28;
        ++*(v11 + 32);
      }
    }
  }

  v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v11);
  if (v50[0])
  {
    mlir::InFlightDiagnostic::report(v50);
  }

  if (v58 == 1)
  {
    if (v57 != &v58)
    {
      free(v57);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v56;
      v31 = __p;
      if (v56 != __p)
      {
        do
        {
          v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v56 = v29;
      operator delete(v31);
    }

    v32 = v53;
    if (v53)
    {
      v33 = v54;
      v34 = v53;
      if (v54 != v53)
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
        v34 = v53;
      }

      v54 = v32;
      operator delete(v34);
    }

    if (v51 != &v52)
    {
      free(v51);
    }
  }

  return v10;
}

void mlir::mpsx::ListPushBackOp::build(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[2] = *MEMORY[0x1E69E9840];
  v15 = a4;
  v16 = a3;
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  __src = v21;
  v20 = 0x200000000;
  v6 = *a1;
  v7 = *a2;
  mlir::ValueRange::ValueRange(v18, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(v17, *(a2 + 224), *(a2 + 232));
  v10.var0.var0 = 1;
  if (!mlir::inferReturnTypesEqualToFirstArgumentType(v6, v7, v10, v18[0], v18[1], Dictionary, v17[0], v17[1], &__src))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v11 = __src;
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

uint64_t mlir::mpsx::ListPushBackOp::verifyInvariantsImpl(mlir::mpsx::ListPushBackOp *this)
{
  if ((mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps7(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0 || (mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps8(*this, *(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) == 0)
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
  return mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t mlir::mpsx::MakeListOp::getMaxSize(mlir::Operation **this)
{
  result = mlir::mpsx::MakeListOp::getMaxSizeAttr(this);
  v7 = result;
  if (result)
  {
    mlir::IntegerAttr::getValue(&v7, &__p);
    if (v6 >= 0x41)
    {
      p_p = __p;
    }

    else
    {
      p_p = &__p;
    }

    v3 = *p_p;
    if (v6 >= 0x41 && __p != 0)
    {
      operator delete[](__p);
    }

    return v3 | 0x100000000;
  }

  return result;
}

uint64_t mlir::mpsx::MakeListOp::getMaxSizeAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((Value + 16), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 8));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    return 0;
  }

  if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return *(v5 + 1);
  }

  return 0;
}

void mlir::mpsx::MakeListOp::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[2] = *MEMORY[0x1E69E9840];
  mlir::NamedAttribute::NamedAttribute(&__src, **(*(a2 + 8) + 96), a3);
  mlir::NamedAttrList::push_back(a2 + 112, __src, v21);
  if (a4)
  {
    mlir::NamedAttribute::NamedAttribute(&__src, *(*(*(a2 + 8) + 96) + 8), a4);
    mlir::NamedAttrList::push_back(a2 + 112, __src, v21);
  }

  __src = v22;
  v21 = 0x200000000;
  v7 = *a1;
  mlir::ValueRange::ValueRange(v19, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(v18, *(a2 + 224), *(a2 + 232));
  if ((mlir::mpsx::MakeListOp::inferReturnTypes(v7, v10, v11, v19[0], v19[1], Dictionary, v12, v13, v18[0], v18[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v14 = __src;
  v15 = v21;
  v16 = *(a2 + 72);
  v17 = v16 + v21;
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
  if (__src != v22)
  {
    free(__src);
  }
}

BOOL mlir::mpsx::MakeListOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v54 = *MEMORY[0x1E69E9840];
  v45[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v45);
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
    for (i = 0; v5; v5 -= 16)
    {
      v34 = mlir::CallGraphNode::getCallableRegion(v4);
      v7 = *this;
      if (v34 == *(*(*(*this + 6) + 96) + 8))
      {
        i = *(v4 + 1);
      }

      v4 = (v4 + 16);
    }

    if (v17)
    {
      if (*(*v17 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id || (v45[0] = v17, mlir::AffineMapAttr::getValue(v45), v41 = v17, v19 = mlir::AffineMapAttr::getValue(&v41), (mlir::mpsx::isMPSXListElementType(v19) & 1) == 0))
      {
        v44 = 257;
        mlir::Operation::emitOpError(v7, &v41, v45);
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v45, "attribute '");
        if (*v20)
        {
          v44 = 261;
          v41 = "element_type";
          v42 = 12;
          v21 = v20;
          mlir::Diagnostic::operator<<(v20 + 8, &v41);
          v20 = v21;
          if (*v21)
          {
            v22 = *(v21 + 24);
            LODWORD(v41) = 3;
            v42 = "' failed to satisfy constraint: any type attribute MPSX list element type attribute";
            v43 = 83;
            v23 = *(v21 + 32);
            v24 = &v41;
            if (v23 >= *(v21 + 36))
            {
              if (v22 <= &v41 && v22 + 24 * v23 > &v41)
              {
                v40 = &v41 - v22;
                llvm::SmallVectorBase<unsigned int>::grow_pod(v21 + 24, v21 + 40, v23 + 1, 24);
                v20 = v21;
                v22 = *(v21 + 24);
                v24 = &v40[v22];
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(v21 + 24, v21 + 40, v23 + 1, 24);
                v20 = v21;
                v22 = *(v21 + 24);
                v24 = &v41;
              }
            }

            v25 = v22 + 24 * *(v20 + 32);
            v26 = *v24;
            *(v25 + 16) = v24[2];
            *v25 = v26;
            ++*(v20 + 32);
          }
        }

        v27 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
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

          v28 = __p;
          if (__p)
          {
            v29 = v51;
            v30 = __p;
            if (v51 != __p)
            {
              do
              {
                v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
              }

              while (v29 != v28);
              v30 = __p;
            }

            v51 = v28;
            operator delete(v30);
          }

          v31 = v48;
          if (v48)
          {
            v32 = v49;
            v33 = v48;
            if (v49 != v48)
            {
              do
              {
                v36 = *--v32;
                v35 = v36;
                *v32 = 0;
                if (v36)
                {
                  operator delete[](v35);
                }
              }

              while (v32 != v31);
              v33 = v48;
            }

            v49 = v31;
            operator delete(v33);
          }

          if (v46 != v47)
          {
            free(v46);
          }
        }

        if (!v27)
        {
          return 0;
        }
      }
    }

    if (mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps3(*this, i, "max_size", 8))
    {
      if (*(*this + 9))
      {
        v37 = *this - 16;
      }

      else
      {
        v37 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v37, 0);
      return mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
LABEL_5:
    v41 = "requires attribute 'element_type'";
    v44 = 259;
    mlir::OpState::emitOpError(this, &v41, v45);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v45);
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

      v9 = __p;
      if (__p)
      {
        v10 = v51;
        v11 = __p;
        if (v51 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v51 = v9;
        operator delete(v11);
      }

      v12 = v48;
      if (v48)
      {
        v13 = v49;
        v14 = v48;
        if (v49 != v48)
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
          v14 = v48;
        }

        v49 = v12;
        operator delete(v14);
      }

      if (v46 != v47)
      {
        free(v46);
      }
    }
  }

  return v8;
}

uint64_t mlir::mpsx::MemrefBackedOp::build(uint64_t a1, mlir::OperationState *a2, uint64_t a3, unint64_t a4)
{
  mlir::OperationState::addOperands(a2, a3, a4);

  return mlir::OperationState::addRegion(a2);
}

uint64_t mlir::mpsx::MemrefBackedOp::verifyInvariantsImpl(mlir::mpsx::MemrefBackedOp *this)
{
  v77 = *MEMORY[0x1E69E9840];
  v1 = *this;
  if ((*(*this + 46) & 0x80) == 0)
  {
    return 1;
  }

  v2 = *(v1 + 68);
  if (!v2)
  {
    return 1;
  }

  v3 = this;
  v4 = 0;
  v5 = *(v1 + 72);
  v6 = &v76;
  v7 = &v70;
  v8 = &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id;
  while (1)
  {
    v9 = *v3;
    v10 = *(*(v5 + 32 * v4 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (*(*v10 + 136) != v8 || (v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8), v68[0] = v10, v68[1] = v11, mlir::ElementsAttr::isSplat(v68), (mlir::isStrided(v10) & 1) == 0))
    {
      v64 = 261;
      v63[0] = "operand";
      v63[1] = 7;
      mlir::Operation::emitOpError(v9, v63, v68);
      mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v68, " #");
      if (*v12)
      {
        v14 = v12 + 24;
        v13 = *(v12 + 24);
        v65 = 5;
        v66 = v4;
        v15 = *(v12 + 32);
        if (v15 >= *(v12 + 36))
        {
          if (v13 <= &v65 && v13 + 24 * v15 > &v65)
          {
            v46 = v2;
            v47 = v5;
            v48 = v8;
            v49 = v7;
            v50 = v6;
            v51 = &v65 - v13;
            v52 = v12;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v12 + 24, v12 + 40, v15 + 1, 24);
            v12 = v52;
            v13 = *(v52 + 24);
            v16 = &v51[v13];
            v6 = v50;
            v7 = v49;
            v8 = v48;
            v5 = v47;
            v2 = v46;
            v3 = this;
          }

          else
          {
            v44 = v12;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v12 + 24, v12 + 40, v15 + 1, 24);
            v12 = v44;
            v13 = *(v44 + 24);
            v16 = &v65;
          }
        }

        else
        {
          v16 = &v65;
        }

        v17 = v13 + 24 * *(v12 + 32);
        v18 = *v16;
        *(v17 + 16) = *(v16 + 2);
        *v17 = v18;
        v19 = (*(v12 + 32) + 1);
        *(v12 + 32) = v19;
        if (*v12)
        {
          v65 = 3;
          v66 = " must be variadic of strided memref of any type values, but got ";
          v67 = 64;
          v20 = *(v12 + 24);
          if (v19 >= *(v12 + 36))
          {
            if (v20 <= &v65 && v20 + 24 * v19 > &v65)
            {
              v53 = v2;
              v54 = v5;
              v55 = v8;
              v56 = v7;
              v57 = v6;
              v58 = &v65 - v20;
              v59 = v12;
              llvm::SmallVectorBase<unsigned int>::grow_pod(v14, v12 + 40, v19 + 1, 24);
              v12 = v59;
              v20 = *(v59 + 24);
              v21 = &v58[v20];
              v6 = v57;
              v7 = v56;
              v8 = v55;
              v5 = v54;
              v2 = v53;
              v3 = this;
            }

            else
            {
              v45 = v12;
              llvm::SmallVectorBase<unsigned int>::grow_pod(v14, v12 + 40, v19 + 1, 24);
              v12 = v45;
              v20 = *(v45 + 24);
              v21 = &v65;
            }
          }

          else
          {
            v21 = &v65;
          }

          v22 = v20 + 24 * *(v12 + 32);
          v23 = *v21;
          *(v22 + 16) = *(v21 + 2);
          *v22 = v23;
          ++*(v12 + 32);
          if (*v12)
          {
            v24 = v2;
            v25 = v5;
            v26 = v8;
            v27 = v7;
            v28 = v6;
            v29 = &v65;
            v30 = v12;
            mlir::DiagnosticArgument::DiagnosticArgument(&v65, v10);
            v12 = v30;
            v31 = *(v30 + 32);
            v32 = *(v30 + 24);
            if (v31 >= *(v30 + 36))
            {
              if (v32 <= &v65 && v32 + 24 * v31 > &v65)
              {
                v60 = &v65 - v32;
                llvm::SmallVectorBase<unsigned int>::grow_pod(v14, v30 + 40, v31 + 1, 24);
                v12 = v30;
                v32 = *(v30 + 24);
                v29 = &v60[v32];
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(v14, v30 + 40, v31 + 1, 24);
                v12 = v30;
                v32 = *(v30 + 24);
                v29 = &v65;
              }
            }

            v33 = v32 + 24 * *(v12 + 32);
            v34 = *v29;
            *(v33 + 16) = *(v29 + 2);
            *v33 = v34;
            ++*(v12 + 32);
            v6 = v28;
            v7 = v27;
            v8 = v26;
            v5 = v25;
            v2 = v24;
            v3 = this;
          }
        }
      }

      v35 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v12);
      if (v68[0])
      {
        mlir::InFlightDiagnostic::report(v68);
      }

      if (v76 == 1)
      {
        if (v75 != v6)
        {
          free(v75);
        }

        v36 = __p;
        if (__p)
        {
          v37 = v74;
          v38 = __p;
          if (v74 != __p)
          {
            do
            {
              v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
            }

            while (v37 != v36);
            v38 = __p;
          }

          v74 = v36;
          operator delete(v38);
        }

        v39 = v71;
        if (v71)
        {
          v40 = v72;
          v41 = v71;
          if (v72 != v71)
          {
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
            v41 = v71;
          }

          v72 = v39;
          operator delete(v41);
        }

        if (v69 != v7)
        {
          free(v69);
        }
      }

      if (!v35)
      {
        break;
      }
    }

    if (++v4 == v2)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t mlir::mpsx::detail::QuantizedConv2DOpGenericAdaptorBase::getWeightsQuantParamsAxis(mlir::mpsx::detail::QuantizedConv2DOpGenericAdaptorBase *this)
{
  Value = mlir::AffineMapAttr::getValue(this);
  v3 = mlir::DictionaryAttr::end(this);
  v4 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((Value + 144), v3, *(*(*(this + 1) + 96) + 80));
  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

  v6 = *(v4 + 1);
  if (!v6)
  {
LABEL_7:
    v8 = 0;
    v9 = 0;
    return v8 | v6 | v9;
  }

  v7 = *(*v6 + 136);
  if (v7 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v6 = 0;
  }

  v14 = v6;
  if (v7 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
LABEL_6:
    v6 = 0;
    goto LABEL_7;
  }

  mlir::IntegerAttr::getValue(&v14, &__p);
  if (v13 > 0x40)
  {
    v11 = *__p;
    operator delete[](__p);
  }

  else if (v13)
  {
    v11 = (__p << -v13) >> -v13;
  }

  else
  {
    LODWORD(v11) = 0;
  }

  v6 = v11 & 0xFFFFFF00;
  v9 = v11;
  v8 = 0x100000000;
  return v8 | v6 | v9;
}

unint64_t mlir::mpsx::QuantizedConv2DOp::getODSOperandIndexAndLength(mlir::Operation **this, int a2)
{
  LODWORD(v2) = a2;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v5 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v7 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((Value + 64), (v5 + 16 * v6 - 64), *(*(*(*this + 6) + 96) + 40));
  if (v8)
  {
    AttrDictionary = *(v7 + 1);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_7:
    v2 = 0;
    v10 = 0;
    return v10 | (*(mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&AttrDictionary) + 4 * v2) << 32);
  }

  AttrDictionary = 0;
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_3:
  v9 = 0;
  LODWORD(v10) = 0;
  v2 = v2;
  do
  {
    v10 = (*(mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&AttrDictionary) + v9) + v10);
    v9 += 4;
  }

  while (4 * v2 != v9);
  return v10 | (*(mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&AttrDictionary) + 4 * v2) << 32);
}

uint64_t mlir::mpsx::QuantizedConv2DOp::getInputQuantParamsAxis(mlir::Operation **this)
{
  result = mlir::mpsx::QuantizedConv2DOp::getInputQuantParamsAxisAttr(this);
  v5 = result;
  if (result)
  {
    mlir::IntegerAttr::getValue(&v5, &__p);
    if (v4 > 0x40)
    {
      LODWORD(v2) = *__p;
      operator delete[](__p);
    }

    else if (v4)
    {
      v2 = (__p << -v4) >> -v4;
    }

    else
    {
      LODWORD(v2) = 0;
    }

    return v2 | 0x100000000;
  }

  return result;
}

uint64_t mlir::mpsx::QuantizedConv2DOp::getInputQuantParamsAxisAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((Value + 64), (v3 + 16 * v4 - 80), *(*(*(*this + 6) + 96) + 32));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    return 0;
  }

  if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return *(v5 + 1);
  }

  return 0;
}

uint64_t mlir::mpsx::QuantizedConv2DOp::getWeightsQuantParamsAxis(mlir::Operation **this)
{
  result = mlir::mpsx::QuantizedConv2DOp::getWeightsQuantParamsAxisAttr(this);
  v5 = result;
  if (result)
  {
    mlir::IntegerAttr::getValue(&v5, &__p);
    if (v4 > 0x40)
    {
      LODWORD(v2) = *__p;
      operator delete[](__p);
    }

    else if (v4)
    {
      v2 = (__p << -v4) >> -v4;
    }

    else
    {
      LODWORD(v2) = 0;
    }

    return v2 | 0x100000000;
  }

  return result;
}

uint64_t mlir::mpsx::QuantizedConv2DOp::getWeightsQuantParamsAxisAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((Value + 144), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 80));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    return 0;
  }

  if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return *(v5 + 1);
  }

  return 0;
}

void *mlir::mpsx::QuantizedConv2DOp::getGroups(mlir::Operation **this)
{
  __p = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&__p);
  __p = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&__p);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((Value + 48), (v3 + 16 * v4 - 80), *(*(*(*this + 6) + 96) + 24));
  if (v6)
  {
    v7 = *(v5 + 1);
  }

  else
  {
    v7 = 0;
  }

  v12 = v7;
  mlir::IntegerAttr::getValue(&v12, &__p);
  if (v11 <= 0x40)
  {
    return __p;
  }

  v8 = *__p;
  operator delete[](__p);
  return v8;
}

uint64_t mlir::mpsx::QuantizedConv2DOp::getStrides(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((Value + 112), (v3 + 16 * v4 - 16), *(*(*(*this + 6) + 96) + 64));
  if (v6)
  {
    return *(v5 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::mpsx::QuantizedConv2DOp::getDilationRates(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((Value + 16), (v3 + 16 * v4 - 112), *(*(*(*this + 6) + 96) + 8));
  if (v6)
  {
    return *(v5 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::mpsx::QuantizedConv2DOp::getExplicitPadding(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((Value + 32), (v3 + 16 * v4 - 96), *(*(*(*this + 6) + 96) + 16));
  if (v6)
  {
    return *(v5 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::mpsx::QuantizedConv2DOp::getPaddingStyle(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((Value + 96), (v3 + 16 * v4 - 32), *(*(*(*this + 6) + 96) + 56));
  if (v6)
  {
    v7 = *(v5 + 1);
  }

  else
  {
    v7 = 0;
  }

  AttrDictionary = v7;
  return mlir::arith::FastMathFlagsAttr::getValue(&AttrDictionary);
}

uint64_t mlir::mpsx::QuantizedConv2DOp::getDataLayout(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>(Value, (v3 + 16 * v4 - 128), **(*(*this + 6) + 96));
  if (v6)
  {
    v7 = *(v5 + 1);
  }

  else
  {
    v7 = 0;
  }

  AttrDictionary = v7;
  return mlir::arith::FastMathFlagsAttr::getValue(&AttrDictionary);
}

uint64_t mlir::mpsx::QuantizedConv2DOp::getWeightsLayout(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((Value + 128), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 72));
  if (v6)
  {
    v7 = *(v5 + 1);
  }

  else
  {
    v7 = 0;
  }

  AttrDictionary = v7;
  return mlir::arith::FastMathFlagsAttr::getValue(&AttrDictionary);
}

uint64_t mlir::mpsx::QuantizedConv2DOp::getOutputType(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute *>((Value + 80), (v3 + 16 * v4 - 48), *(*(*(*this + 6) + 96) + 48));
  if (v6)
  {
    v7 = *(v5 + 1);
  }

  else
  {
    v7 = 0;
  }

  AttrDictionary = v7;
  return mlir::AffineMapAttr::getValue(&AttrDictionary);
}

BOOL mlir::mpsx::QuantizedConv2DOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v152 = *MEMORY[0x1E69E9840];
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  if (!v3)
  {
LABEL_5:
    v140[0] = "requires attribute 'data_layout'";
    v141 = 259;
    mlir::OpState::emitOpError(this, v140, &AttrDictionary);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v151 != 1)
    {
      return v7;
    }

    if (v150 != &v151)
    {
      free(v150);
    }

    v8 = __p;
    if (__p)
    {
      v9 = v149;
      v10 = __p;
      if (v149 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v149 = v8;
      operator delete(v10);
    }

    v11 = v146;
    if (v146)
    {
      v12 = v147;
      v13 = v146;
      if (v147 == v146)
      {
        goto LABEL_82;
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
LABEL_81:
      v13 = v146;
LABEL_82:
      v147 = v11;
      operator delete(v13);
    }

LABEL_83:
    if (v144 != &v145)
    {
      free(v144);
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
    v140[0] = "requires attribute 'dilation_rates'";
    v141 = 259;
    mlir::OpState::emitOpError(this, v140, &AttrDictionary);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v151 != 1)
    {
      return v7;
    }

    if (v150 != &v151)
    {
      free(v150);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v149;
      v20 = __p;
      if (v149 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v149 = v18;
      operator delete(v20);
    }

    v11 = v146;
    if (v146)
    {
      v21 = v147;
      v13 = v146;
      if (v147 == v146)
      {
        goto LABEL_82;
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
      goto LABEL_81;
    }

    goto LABEL_83;
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
    v140[0] = "requires attribute 'explicit_padding'";
    v141 = 259;
    mlir::OpState::emitOpError(this, v140, &AttrDictionary);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v151 != 1)
    {
      return v7;
    }

    if (v150 != &v151)
    {
      free(v150);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v149;
      v28 = __p;
      if (v149 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v149 = v26;
      operator delete(v28);
    }

    v11 = v146;
    if (v146)
    {
      v29 = v147;
      v13 = v146;
      if (v147 == v146)
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

      while (v29 != v11);
      goto LABEL_81;
    }

    goto LABEL_83;
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
LABEL_65:
    v140[0] = "requires attribute 'groups'";
    v141 = 259;
    mlir::OpState::emitOpError(this, v140, &AttrDictionary);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v151 != 1)
    {
      return v7;
    }

    if (v150 != &v151)
    {
      free(v150);
    }

    v35 = __p;
    if (__p)
    {
      v36 = v149;
      v37 = __p;
      if (v149 != __p)
      {
        do
        {
          v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
        }

        while (v36 != v35);
        v37 = __p;
      }

      v149 = v35;
      operator delete(v37);
    }

    v11 = v146;
    if (v146)
    {
      v38 = v147;
      v13 = v146;
      if (v147 == v146)
      {
        goto LABEL_82;
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

      while (v38 != v11);
      goto LABEL_81;
    }

    goto LABEL_83;
  }

  v33 = *(v4 + v24 + v5 + 8);
  v34 = (v4 + v5 + v24 + 8);
  while (mlir::CallGraphNode::getCallableRegion((v34 - 1)) != *(*(*(*this + 6) + 96) + 24))
  {
    v34 += 2;
    v32 -= 16;
    if (!v32)
    {
      goto LABEL_65;
    }
  }

  if (v32)
  {
    v42 = 0;
    v43 = 0;
    v137 = *v34;
    while (1)
    {
      v44 = &v34[v42 / 8];
      if (mlir::CallGraphNode::getCallableRegion(&v34[v42 / 8 - 1]) == *(*(*(*this + 6) + 96) + 40))
      {
        break;
      }

      if (mlir::CallGraphNode::getCallableRegion(&v34[v42 / 8 - 1]) == *(*(*(*this + 6) + 96) + 32))
      {
        v43 = v34[v42 / 8];
      }

      v42 += 16;
      if (v32 == v42)
      {
        goto LABEL_92;
      }
    }

    v45 = v32 - v42;
    if (v32 == v42)
    {
LABEL_100:
      v47 = "requires attribute 'output_type'";
    }

    else
    {
      v46 = *v44;
      while (mlir::CallGraphNode::getCallableRegion((v44 - 1)) != *(*(*(*this + 6) + 96) + 48))
      {
        v44 += 2;
        v45 -= 16;
        if (!v45)
        {
          goto LABEL_100;
        }
      }

      if (v45)
      {
        v48 = 0;
        v136 = *v44;
        while (1)
        {
          v49 = &v44[v48 / 8];
          if (mlir::CallGraphNode::getCallableRegion(&v44[v48 / 8 - 1]) == *(*(*(*this + 6) + 96) + 56))
          {
            break;
          }

          v48 += 16;
          if (v45 == v48)
          {
            goto LABEL_105;
          }
        }

        v50 = v45 - v48;
        if (v50)
        {
          v51 = *v49;
          while (mlir::CallGraphNode::getCallableRegion((v49 - 1)) != *(*(*(*this + 6) + 96) + 64))
          {
            v49 += 2;
            v50 -= 16;
            if (!v50)
            {
              goto LABEL_110;
            }
          }

          v135 = v51;
          v52 = 0;
          v134 = *v49;
          while (1)
          {
            v53 = &v49[v52 / 8];
            if (mlir::CallGraphNode::getCallableRegion(&v49[v52 / 8 - 1]) == *(*(*(*this + 6) + 96) + 72))
            {
              break;
            }

            v52 += 16;
            if (v50 == v52)
            {
              v47 = "requires attribute 'weights_layout'";
              goto LABEL_115;
            }
          }

          v56 = *v53;
          v55 = (v53 - 1);
          v133 = v56;
          v57 = 0;
          for (i = v50 - v52; i; i -= 16)
          {
            if (mlir::CallGraphNode::getCallableRegion(v55) == *(*(*(*this + 6) + 96) + 80))
            {
              v57 = *(v55 + 1);
            }

            v55 = (v55 + 16);
          }

          v139 = v46;
          mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>(&v139);
          v138 = v59;
          if (v59 == 11)
          {
            if ((mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps12(*this, v43, "input_quant_params_axis", 0x17) & 1) == 0 || (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps12(*this, v57, "weights_quant_params_axis", 0x19) & 1) == 0 || (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps13(*this, v137, "groups", 6) & 1) == 0 || (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps14(*this, v134, "strides", 7) & 1) == 0 || (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps14(*this, v25, "dilation_rates", 0xE) & 1) == 0 || (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps15(*this, v33, "explicit_padding", 16) & 1) == 0 || (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps16(*this, v135, "padding_style", 0xD) & 1) == 0 || (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps17(*this, v17, "data_layout", 0xB) & 1) == 0 || (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps17(*this, v133, "weights_layout", 0xE) & 1) == 0 || (mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps2(*this, v136, "output_type", 0xB) & 1) == 0)
            {
              return 0;
            }

            LODWORD(v138) = 0;
            ODSOperands = mlir::mpsx::QuantizedConv2DOp::getODSOperands(this, 0);
            if (v61)
            {
              v62 = v61;
              v63 = ODSOperands + 24;
              do
              {
                v64 = *this;
                v65 = *(*v63 + 8);
                v66 = v138;
                LODWORD(v138) = v138 + 1;
                if ((mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps10(v64, v65 & 0xFFFFFFFFFFFFFFF8, "operand", 7, v66) & 1) == 0)
                {
                  return 0;
                }

                v63 += 32;
              }

              while (--v62);
            }

            v67 = mlir::mpsx::QuantizedConv2DOp::getODSOperands(this, 1);
            v69 = v68;
            if (v68 >= 2)
            {
              goto LABEL_139;
            }

            if (!v68 || (v72 = *(v67 + 24), v73 = *this, v74 = *(v72 + 8), v75 = v138, LODWORD(v138) = v138 + 1, (mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps11(v73, (v74 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v75) & 1) != 0))
            {
              v76 = mlir::mpsx::QuantizedConv2DOp::getODSOperands(this, 2);
              v69 = v77;
              if (v77 >= 2)
              {
                goto LABEL_139;
              }

              if (v77)
              {
                v78 = *(v76 + 24);
                v79 = *this;
                v80 = *(v78 + 8);
                v81 = v138;
                LODWORD(v138) = v138 + 1;
                if ((mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps12(v79, (v80 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v81) & 1) == 0)
                {
                  return 0;
                }
              }

              v82 = mlir::mpsx::QuantizedConv2DOp::getODSOperands(this, 3);
              v69 = v83;
              if (v83 >= 2)
              {
                goto LABEL_139;
              }

              if (v83)
              {
                v84 = *(v82 + 24);
                v85 = *this;
                v86 = *(v84 + 8);
                v87 = v138;
                LODWORD(v138) = v138 + 1;
                if ((mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps11(v85, (v86 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v87) & 1) == 0)
                {
                  return 0;
                }
              }

              v88 = mlir::mpsx::QuantizedConv2DOp::getODSOperands(this, 4);
              if (v89)
              {
                v90 = v89;
                v91 = v88 + 24;
                do
                {
                  v92 = *this;
                  v93 = *(*v91 + 8);
                  v94 = v138;
                  LODWORD(v138) = v138 + 1;
                  if ((mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps10(v92, v93 & 0xFFFFFFFFFFFFFFF8, "operand", 7, v94) & 1) == 0)
                  {
                    return 0;
                  }

                  v91 += 32;
                }

                while (--v90);
              }

              v95 = mlir::mpsx::QuantizedConv2DOp::getODSOperands(this, 5);
              v69 = v96;
              if (v96 >= 2)
              {
                goto LABEL_139;
              }

              if (v96)
              {
                v97 = *(v95 + 24);
                v98 = *this;
                v99 = *(v97 + 8);
                v100 = v138;
                LODWORD(v138) = v138 + 1;
                if ((mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps13(v98, (v99 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v100) & 1) == 0)
                {
                  return 0;
                }
              }

              v101 = mlir::mpsx::QuantizedConv2DOp::getODSOperands(this, 6);
              v69 = v102;
              if (v102 >= 2)
              {
                goto LABEL_139;
              }

              if (v102)
              {
                v103 = *(v101 + 24);
                v104 = *this;
                v105 = *(v103 + 8);
                v106 = v138;
                LODWORD(v138) = v138 + 1;
                if ((mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps12(v104, (v105 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v106) & 1) == 0)
                {
                  return 0;
                }
              }

              v107 = mlir::mpsx::QuantizedConv2DOp::getODSOperands(this, 7);
              v69 = v108;
              if (v108 >= 2)
              {
                goto LABEL_139;
              }

              if (v108)
              {
                v109 = *(v107 + 24);
                v110 = *this;
                v111 = *(v109 + 8);
                v112 = v138;
                LODWORD(v138) = v138 + 1;
                if ((mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps11(v110, (v111 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v112) & 1) == 0)
                {
                  return 0;
                }
              }

              v113 = mlir::mpsx::QuantizedConv2DOp::getODSOperands(this, 8);
              v69 = v114;
              if (v114 >= 2)
              {
                goto LABEL_139;
              }

              if (v114)
              {
                v115 = *(v113 + 24);
                v116 = *this;
                v117 = *(v115 + 8);
                v118 = v138;
                LODWORD(v138) = v138 + 1;
                if ((mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps4(v116, v117 & 0xFFFFFFFFFFFFFFF8, "operand", 7, v118) & 1) == 0)
                {
                  return 0;
                }
              }

              v119 = mlir::mpsx::QuantizedConv2DOp::getODSOperands(this, 9);
              v69 = v120;
              if (v120 >= 2)
              {
                goto LABEL_139;
              }

              if (v120)
              {
                v121 = *(v119 + 24);
                v122 = *this;
                v123 = *(v121 + 8);
                v124 = v138;
                LODWORD(v138) = v138 + 1;
                if ((mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps11(v122, (v123 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v124) & 1) == 0)
                {
                  return 0;
                }
              }

              v125 = mlir::mpsx::QuantizedConv2DOp::getODSOperands(this, 10);
              v69 = v126;
              if (v126 >= 2)
              {
LABEL_139:
                v140[0] = "operand group starting at #";
                v141 = 259;
                mlir::OpState::emitOpError(this, v140, &AttrDictionary);
                mlir::InFlightDiagnostic::operator<<<unsigned int const&>(&AttrDictionary, &v138);
                mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v70, " requires 0 or 1 element, but found ");
                v139 = v69;
                mlir::InFlightDiagnostic::operator<<<unsigned long>(v71, &v139);
                goto LABEL_116;
              }

              if (!v126 || (v127 = *(v125 + 24), v128 = *this, v129 = *(v127 + 8), v130 = v138, LODWORD(v138) = v138 + 1, (mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps12(v128, (v129 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v130) & 1) != 0))
              {
                if (*(*this + 9))
                {
                  v131 = *this - 16;
                }

                else
                {
                  v131 = 0;
                }

                NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v131, 0);
                return mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps4(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
              }
            }

            return 0;
          }

          v140[0] = "'operandSegmentSizes' attribute for specifying operand segments must have 11 elements, but got ";
          v141 = 259;
          mlir::OpState::emitOpError(this, v140, &AttrDictionary);
          mlir::InFlightDiagnostic::operator<<<unsigned long>(&AttrDictionary, &v138);
LABEL_116:
          v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(p_AttrDictionary);
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&AttrDictionary);
          return v7;
        }

LABEL_110:
        v47 = "requires attribute 'strides'";
      }

      else
      {
LABEL_105:
        v47 = "requires attribute 'padding_style'";
      }
    }

LABEL_115:
    v140[0] = v47;
    v141 = 259;
    mlir::OpState::emitOpError(this, v140, &AttrDictionary);
    p_AttrDictionary = &AttrDictionary;
    goto LABEL_116;
  }

LABEL_92:
  v140[0] = "requires attribute 'operandSegmentSizes'";
  v141 = 259;
  mlir::OpState::emitOpError(this, v140, &AttrDictionary);
  v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
  if (AttrDictionary)
  {
    mlir::InFlightDiagnostic::report(&AttrDictionary);
  }

  if (v151 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v143);
  }

  return v7;
}

uint64_t mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps12(uint64_t a1, void *a2, void *a3, void *a4)
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
    isSignedInteger = mlir::Type::isSignedInteger(v23, 32);
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

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v9, "' failed to satisfy constraint: 32-bit signed integer attribute");
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

uint64_t mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps13(uint64_t a1, void *a2, void *a3, void *a4)
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
    isUnsignedInteger = mlir::Type::isUnsignedInteger(v23, 64);
    a1 = v6;
    if (isUnsignedInteger)
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

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v9, "' failed to satisfy constraint: 64-bit unsigned integer attribute");
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

uint64_t mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps14(uint64_t a1, void *a2, void *a3, const char *a4)
{
  v49 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  if (!mlir::DenseIntElementsAttr::classof(a2))
  {
    goto LABEL_9;
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

  v39[0] = v10;
  v39[1] = Type;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v39);
  v48 = 4;
  if (v12 == 1 && *ArgAttrsAttr == v48)
  {
    v32 = a2;
    v33[0] = mlir::ArrayAttr::getValue(&v32);
    v33[1] = v13;
    isSplat = mlir::ElementsAttr::isSplat(v33);
    if (mlir::Type::isUnsignedInteger(&isSplat, 64))
    {
      return 1;
    }
  }

LABEL_9:
  v38 = 257;
  mlir::Operation::emitOpError(a1, &v35, v39);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v39, "attribute '");
  if (*v15)
  {
    v38 = 261;
    v35 = a3;
    v36 = a4;
    v16 = v15;
    mlir::Diagnostic::operator<<(v15 + 8, &v35);
    v15 = v16;
    if (*v16)
    {
      v17 = *(v16 + 24);
      LODWORD(v35) = 3;
      v36 = "' failed to satisfy constraint: ui64 elements attribute of shape {4}";
      v37 = 68;
      v18 = *(v16 + 32);
      v19 = &v35;
      if (v18 >= *(v16 + 36))
      {
        if (v17 <= &v35 && v17 + 24 * v18 > &v35)
        {
          v31 = &v35 - v17;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v16 + 24, v16 + 40, v18 + 1, 24);
          v15 = v16;
          v17 = *(v16 + 24);
          v19 = &v31[v17];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v16 + 24, v16 + 40, v18 + 1, 24);
          v15 = v16;
          v17 = *(v16 + 24);
          v19 = &v35;
        }
      }

      v20 = v17 + 24 * *(v15 + 32);
      v21 = *v19;
      *(v20 + 16) = *(v19 + 2);
      *v20 = v21;
      ++*(v15 + 32);
    }
  }

  v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
  if (v39[0])
  {
    mlir::InFlightDiagnostic::report(v39);
  }

  if (v47 == 1)
  {
    if (v46 != &v47)
    {
      free(v46);
    }

    v22 = __p;
    if (__p)
    {
      v23 = v45;
      v24 = __p;
      if (v45 != __p)
      {
        do
        {
          v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
        }

        while (v23 != v22);
        v24 = __p;
      }

      v45 = v22;
      operator delete(v24);
    }

    v25 = v42;
    if (v42)
    {
      v26 = v43;
      v27 = v42;
      if (v43 != v42)
      {
        do
        {
          v29 = *--v26;
          v28 = v29;
          *v26 = 0;
          if (v29)
          {
            operator delete[](v28);
          }
        }

        while (v26 != v25);
        v27 = v42;
      }

      v43 = v25;
      operator delete(v27);
    }

    if (v40 != &v41)
    {
      free(v40);
    }
  }

  return v14;
}

uint64_t mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps15(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v44 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  if (!mlir::DenseIntElementsAttr::classof(a2))
  {
    goto LABEL_13;
  }

  v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*a2 + 8);
  v31 = a2;
  v32 = v8;
  Type = mlir::ElementsAttr::getType(&v31);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v34[0] = v10;
  v34[1] = Type;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v34);
  v43 = xmmword_1E097BBD0;
  if (v12 == 2 && *ArgAttrsAttr == v43 && ArgAttrsAttr[1] == *(&v43 + 1))
  {
    v28 = a2;
    v29[0] = mlir::ArrayAttr::getValue(&v28);
    v29[1] = v14;
    isSplat = mlir::ElementsAttr::isSplat(v29);
    if (mlir::Type::isUnsignedInteger(&isSplat, 64))
    {
      return 1;
    }
  }

LABEL_13:
  v33 = 257;
  mlir::Operation::emitOpError(a1, &v31, v34);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v34, "attribute '");
  if (*v16)
  {
    v33 = 261;
    v31 = a3;
    v32 = a4;
    v17 = v16;
    mlir::Diagnostic::operator<<((v16 + 1), &v31);
    v16 = v17;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v16, "' failed to satisfy constraint: ui64 elements attribute of shape {4, 2}");
  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v18);
  if (v34[0])
  {
    mlir::InFlightDiagnostic::report(v34);
  }

  if (v42 == 1)
  {
    if (v41 != &v42)
    {
      free(v41);
    }

    v19 = __p;
    if (__p)
    {
      v20 = v40;
      v21 = __p;
      if (v40 != __p)
      {
        do
        {
          v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v40 = v19;
      operator delete(v21);
    }

    v22 = v37;
    if (v37)
    {
      v23 = v38;
      v24 = v37;
      if (v38 != v37)
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
        v24 = v37;
      }

      v38 = v22;
      operator delete(v24);
    }

    if (v35 != &v36)
    {
      free(v35);
    }
  }

  return v15;
}

uint64_t mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps16(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a2 || *(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id)
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

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v6, "' failed to satisfy constraint: valid padding_style");
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

uint64_t mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps17(uint64_t a1, uint64_t a2, void *a3, const char *a4)
{
  v37 = *MEMORY[0x1E69E9840];
  if (!a2 || *(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
  {
    return 1;
  }

  v27 = 257;
  mlir::Operation::emitOpError(a1, &v24, v28);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v28, "attribute '");
  if (*v6)
  {
    v27 = 261;
    v24 = a3;
    v25 = a4;
    v7 = v6;
    mlir::Diagnostic::operator<<(v6 + 8, &v24);
    v6 = v7;
    if (*v7)
    {
      v8 = *(v7 + 24);
      LODWORD(v24) = 3;
      v25 = "' failed to satisfy constraint: valid TensorDataLayout";
      v26 = 54;
      v9 = *(v7 + 32);
      v10 = &v24;
      if (v9 >= *(v7 + 36))
      {
        if (v8 <= &v24 && v8 + 24 * v9 > &v24)
        {
          v23 = &v24 - v8;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v7 + 24, v7 + 40, v9 + 1, 24);
          v6 = v7;
          v8 = *(v7 + 24);
          v10 = &v23[v8];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v7 + 24, v7 + 40, v9 + 1, 24);
          v6 = v7;
          v8 = *(v7 + 24);
          v10 = &v24;
        }
      }

      v11 = v8 + 24 * *(v6 + 32);
      v12 = *v10;
      *(v11 + 16) = *(v10 + 2);
      *v11 = v12;
      ++*(v6 + 32);
    }
  }

  v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v6);
  if (v28[0])
  {
    mlir::InFlightDiagnostic::report(v28);
  }

  if (v36 == 1)
  {
    if (v35 != &v36)
    {
      free(v35);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v34;
      v16 = __p;
      if (v34 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v34 = v14;
      operator delete(v16);
    }

    v17 = v31;
    if (v31)
    {
      v18 = v32;
      v19 = v31;
      if (v32 != v31)
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
        v19 = v31;
      }

      v32 = v17;
      operator delete(v19);
    }

    if (v29 != &v30)
    {
      free(v29);
    }
  }

  return v13;
}

uint64_t mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps10(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned int a5)
{
  v53 = *MEMORY[0x1E69E9840];
  v7 = *a2;
  v8 = *(*a2 + 136);
  if (v8 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v10 = a3;
    v11 = a4;
    v12 = a1;
    v44[0] = a2;
    v44[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v7 + 8);
    v40[0] = mlir::ElementsAttr::isSplat(v44);
    if (mlir::Type::isF16(v40))
    {
      return 1;
    }

    if (mlir::Type::isF32(v40))
    {
      return 1;
    }

    if (mlir::Type::isBF16(v40))
    {
      return 1;
    }

    if (mlir::Type::isSignedInteger(v40, 2))
    {
      return 1;
    }

    if (mlir::Type::isSignedInteger(v40, 4))
    {
      return 1;
    }

    if (mlir::Type::isSignedInteger(v40, 8))
    {
      return 1;
    }

    if (mlir::Type::isSignedInteger(v40, 16))
    {
      return 1;
    }

    if (mlir::Type::isSignedInteger(v40, 32))
    {
      return 1;
    }

    if (mlir::Type::isUnsignedInteger(v40, 1))
    {
      return 1;
    }

    if (mlir::Type::isUnsignedInteger(v40, 2))
    {
      return 1;
    }

    if (mlir::Type::isUnsignedInteger(v40, 4))
    {
      return 1;
    }

    if (mlir::Type::isUnsignedInteger(v40, 8))
    {
      return 1;
    }

    if (mlir::Type::isUnsignedInteger(v40, 16))
    {
      return 1;
    }

    if (mlir::Type::isUnsignedInteger(v40, 32))
    {
      return 1;
    }

    a1 = v12;
    a4 = v11;
    a3 = v10;
    if (*(*v40[0] + 136) == &mlir::detail::TypeIDResolver<mlir::mps::NF4Type,void>::id)
    {
      return 1;
    }
  }

  v41 = 261;
  v40[0] = a3;
  v40[1] = a4;
  mlir::Operation::emitOpError(a1, v40, v44);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v44, " #");
  if (*v13)
  {
    v14 = *(v13 + 24);
    v42 = 5;
    v43 = a5;
    v15 = *(v13 + 32);
    v16 = &v42;
    if (v15 >= *(v13 + 36))
    {
      if (v14 <= &v42 && v14 + 24 * v15 > &v42)
      {
        v37 = &v42 - v14;
        v38 = v13;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v13 + 24, v13 + 40, v15 + 1, 24);
        v13 = v38;
        v14 = *(v38 + 24);
        v16 = &v37[v14];
      }

      else
      {
        v36 = v13;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v13 + 24, v13 + 40, v15 + 1, 24);
        v13 = v36;
        v14 = *(v36 + 24);
        v16 = &v42;
      }
    }

    v17 = v14 + 24 * *(v13 + 32);
    v18 = *v16;
    *(v17 + 16) = *(v16 + 2);
    *v17 = v18;
    ++*(v13 + 32);
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v13, " must be tensor of floating point or quantized values, but got ");
  if (*v19)
  {
    v20 = &v42;
    v21 = v19;
    mlir::DiagnosticArgument::DiagnosticArgument(&v42, a2);
    v19 = v21;
    v22 = *(v21 + 24);
    v23 = *(v21 + 32);
    if (v23 >= *(v21 + 36))
    {
      if (v22 <= &v42 && v22 + 24 * v23 > &v42)
      {
        v39 = &v42 - v22;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v21 + 24, v21 + 40, v23 + 1, 24);
        v19 = v21;
        v22 = *(v21 + 24);
        v20 = &v39[v22];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v21 + 24, v21 + 40, v23 + 1, 24);
        v19 = v21;
        v22 = *(v21 + 24);
        v20 = &v42;
      }
    }

    v24 = v22 + 24 * *(v19 + 32);
    v25 = *v20;
    *(v24 + 16) = *(v20 + 2);
    *v24 = v25;
    ++*(v19 + 32);
  }

  v26 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v19);
  if (v44[0])
  {
    mlir::InFlightDiagnostic::report(v44);
  }

  if (v52 == 1)
  {
    if (v51 != &v52)
    {
      free(v51);
    }

    v27 = __p;
    if (__p)
    {
      v28 = v50;
      v29 = __p;
      if (v50 != __p)
      {
        do
        {
          v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
        }

        while (v28 != v27);
        v29 = __p;
      }

      v50 = v27;
      operator delete(v29);
    }

    v30 = v47;
    if (v47)
    {
      v31 = v48;
      v32 = v47;
      if (v48 != v47)
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
        v32 = v47;
      }

      v48 = v30;
      operator delete(v32);
    }

    if (v45 != &v46)
    {
      free(v45);
    }
  }

  return v26;
}

uint64_t mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps11(uint64_t a1, void *a2, void *a3, uint64_t a4, unsigned int a5)
{
  v65 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v56[0] = a2;
    v56[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v10 + 8);
    if (mlir::CallOpInterface::getArgOperands(v56))
    {
      v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
      v47 = a2;
      v48 = v11;
      mlir::CallableOpInterface::getArgAttrsAttr(&v47);
      if (!v12 || (v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8), v54 = a2, v55 = v13, mlir::CallableOpInterface::getArgAttrsAttr(&v54), v14 == 1) || (v15 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8), v52[0] = a2, v52[1] = v15, mlir::CallableOpInterface::getArgAttrsAttr(v52), v16 == 2) || (v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8), v51[0] = a2, v51[1] = v17, mlir::CallableOpInterface::getArgAttrsAttr(v51), v18 == 3))
      {
        v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
        v50[0] = a2;
        v50[1] = v19;
        isSplat = mlir::ElementsAttr::isSplat(v50);
        if (mlir::Type::isF16(&isSplat) || mlir::Type::isF32(&isSplat) || mlir::Type::isBF16(&isSplat))
        {
          return 1;
        }
      }
    }
  }

  v49 = 261;
  v47 = a3;
  v48 = a4;
  mlir::Operation::emitOpError(a1, &v47, v56);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v56, " #");
  if (*v21)
  {
    v22 = *(v21 + 24);
    LODWORD(v54) = 5;
    v55 = a5;
    v23 = *(v21 + 32);
    v24 = &v54;
    if (v23 >= *(v21 + 36))
    {
      if (v22 <= &v54 && v22 + 24 * v23 > &v54)
      {
        v44 = &v54 - v22;
        v45 = v21;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v21 + 24, v21 + 40, v23 + 1, 24);
        v21 = v45;
        v22 = *(v45 + 24);
        v24 = &v44[v22];
      }

      else
      {
        v43 = v21;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v21 + 24, v21 + 40, v23 + 1, 24);
        v21 = v43;
        v22 = *(v43 + 24);
        v24 = &v54;
      }
    }

    v25 = v22 + 24 * *(v21 + 32);
    v26 = *v24;
    *(v25 + 16) = *(v24 + 2);
    *v25 = v26;
    ++*(v21 + 32);
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v21, " must be 0D/1D/2D/3D tensor of floating point values, but got ");
  if (*v27)
  {
    v28 = &v54;
    v29 = v27;
    mlir::DiagnosticArgument::DiagnosticArgument(&v54, a2);
    v27 = v29;
    v30 = *(v29 + 24);
    v31 = *(v29 + 32);
    if (v31 >= *(v29 + 36))
    {
      if (v30 <= &v54 && v30 + 24 * v31 > &v54)
      {
        v46 = &v54 - v30;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v29 + 24, v29 + 40, v31 + 1, 24);
        v27 = v29;
        v30 = *(v29 + 24);
        v28 = &v46[v30];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v29 + 24, v29 + 40, v31 + 1, 24);
        v27 = v29;
        v30 = *(v29 + 24);
        v28 = &v54;
      }
    }

    v32 = v30 + 24 * *(v27 + 32);
    v33 = *v28;
    *(v32 + 16) = *(v28 + 2);
    *v32 = v33;
    ++*(v27 + 32);
  }

  v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
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

    v34 = __p;
    if (__p)
    {
      v35 = v62;
      v36 = __p;
      if (v62 != __p)
      {
        do
        {
          v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
        }

        while (v35 != v34);
        v36 = __p;
      }

      v62 = v34;
      operator delete(v36);
    }

    v37 = v59;
    if (v59)
    {
      v38 = v60;
      v39 = v59;
      if (v60 != v59)
      {
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
        v39 = v59;
      }

      v60 = v37;
      operator delete(v39);
    }

    if (v57 != &v58)
    {
      free(v57);
    }
  }

  return v20;
}

uint64_t mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps12(uint64_t a1, void *a2, void *a3, uint64_t a4, unsigned int a5)
{
  v65 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v56[0] = a2;
    v56[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v10 + 8);
    if (mlir::CallOpInterface::getArgOperands(v56))
    {
      v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
      v47 = a2;
      v48 = v11;
      mlir::CallableOpInterface::getArgAttrsAttr(&v47);
      if (!v12 || (v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8), v54 = a2, v55 = v13, mlir::CallableOpInterface::getArgAttrsAttr(&v54), v14 == 1) || (v15 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8), v52[0] = a2, v52[1] = v15, mlir::CallableOpInterface::getArgAttrsAttr(v52), v16 == 2) || (v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8), v51[0] = a2, v51[1] = v17, mlir::CallableOpInterface::getArgAttrsAttr(v51), v18 == 3))
      {
        v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
        v50[0] = a2;
        v50[1] = v19;
        isSplat = mlir::ElementsAttr::isSplat(v50);
        if (mlir::Type::isSignedInteger(&isSplat, 2) || mlir::Type::isSignedInteger(&isSplat, 4) || mlir::Type::isSignedInteger(&isSplat, 8) || mlir::Type::isSignedInteger(&isSplat, 16) || mlir::Type::isSignedInteger(&isSplat, 32) || mlir::Type::isUnsignedInteger(&isSplat, 1) || mlir::Type::isUnsignedInteger(&isSplat, 2) || mlir::Type::isUnsignedInteger(&isSplat, 4) || mlir::Type::isUnsignedInteger(&isSplat, 8) || mlir::Type::isUnsignedInteger(&isSplat, 16) || mlir::Type::isUnsignedInteger(&isSplat, 32) || *(*isSplat + 136) == &mlir::detail::TypeIDResolver<mlir::mps::NF4Type,void>::id)
        {
          return 1;
        }
      }
    }
  }

  v49 = 261;
  v47 = a3;
  v48 = a4;
  mlir::Operation::emitOpError(a1, &v47, v56);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v56, " #");
  if (*v20)
  {
    v21 = *(v20 + 24);
    LODWORD(v54) = 5;
    v55 = a5;
    v22 = *(v20 + 32);
    v23 = &v54;
    if (v22 >= *(v20 + 36))
    {
      if (v21 <= &v54 && v21 + 24 * v22 > &v54)
      {
        v44 = &v54 - v21;
        v45 = v20;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v20 + 24, v20 + 40, v22 + 1, 24);
        v20 = v45;
        v21 = *(v45 + 24);
        v23 = &v44[v21];
      }

      else
      {
        v43 = v20;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v20 + 24, v20 + 40, v22 + 1, 24);
        v20 = v43;
        v21 = *(v43 + 24);
        v23 = &v54;
      }
    }

    v24 = v21 + 24 * *(v20 + 32);
    v25 = *v23;
    *(v24 + 16) = *(v23 + 2);
    *v24 = v25;
    ++*(v20 + 32);
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v20, " must be 0D/1D/2D/3D tensor of quantized values, but got ");
  if (*v26)
  {
    v27 = &v54;
    v28 = v26;
    mlir::DiagnosticArgument::DiagnosticArgument(&v54, a2);
    v26 = v28;
    v29 = *(v28 + 24);
    v30 = *(v28 + 32);
    if (v30 >= *(v28 + 36))
    {
      if (v29 <= &v54 && v29 + 24 * v30 > &v54)
      {
        v46 = &v54 - v29;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v28 + 24, v28 + 40, v30 + 1, 24);
        v26 = v28;
        v29 = *(v28 + 24);
        v27 = &v46[v29];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v28 + 24, v28 + 40, v30 + 1, 24);
        v26 = v28;
        v29 = *(v28 + 24);
        v27 = &v54;
      }
    }

    v31 = v29 + 24 * *(v26 + 32);
    v32 = *v27;
    *(v31 + 16) = *(v27 + 2);
    *v31 = v32;
    ++*(v26 + 32);
  }

  v33 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v26);
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

    v34 = __p;
    if (__p)
    {
      v35 = v62;
      v36 = __p;
      if (v62 != __p)
      {
        do
        {
          v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
        }

        while (v35 != v34);
        v36 = __p;
      }

      v62 = v34;
      operator delete(v36);
    }

    v37 = v59;
    if (v59)
    {
      v38 = v60;
      v39 = v59;
      if (v60 != v59)
      {
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
        v39 = v59;
      }

      v60 = v37;
      operator delete(v39);
    }

    if (v57 != &v58)
    {
      free(v57);
    }
  }

  return v33;
}

uint64_t mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps13(uint64_t a1, void *a2, void *a3, uint64_t a4, unsigned int a5)
{
  v74 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v65[0] = a2;
    v65[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v10 + 8);
    if (mlir::CallOpInterface::getArgOperands(v65))
    {
      v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
      v55 = a2;
      v56 = v11;
      mlir::CallableOpInterface::getArgAttrsAttr(&v55);
      if (!v12 || (v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8), v62 = a2, v63 = v13, mlir::CallableOpInterface::getArgAttrsAttr(&v62), v14 == 1) || (v15 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8), v60[0] = a2, v60[1] = v15, mlir::CallableOpInterface::getArgAttrsAttr(v60), v16 == 2) || (v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8), v59[0] = a2, v59[1] = v17, mlir::CallableOpInterface::getArgAttrsAttr(v59), v18 == 3))
      {
        v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a2 + 8);
        v58[0] = a2;
        v58[1] = v19;
        isSplat = mlir::ElementsAttr::isSplat(v58);
        if (mlir::Type::isF16(&isSplat) || mlir::Type::isF32(&isSplat) || mlir::Type::isBF16(&isSplat) || mlir::Type::isSignedInteger(&isSplat, 2) || mlir::Type::isSignedInteger(&isSplat, 4) || mlir::Type::isSignedInteger(&isSplat, 8) || mlir::Type::isSignedInteger(&isSplat, 16) || mlir::Type::isSignedInteger(&isSplat, 32) || mlir::Type::isUnsignedInteger(&isSplat, 1) || mlir::Type::isUnsignedInteger(&isSplat, 2) || mlir::Type::isUnsignedInteger(&isSplat, 4) || mlir::Type::isUnsignedInteger(&isSplat, 8) || mlir::Type::isUnsignedInteger(&isSplat, 16) || mlir::Type::isUnsignedInteger(&isSplat, 32) || *(*isSplat + 136) == &mlir::detail::TypeIDResolver<mlir::mps::NF4Type,void>::id)
        {
          return 1;
        }
      }
    }
  }

  v57 = 261;
  v55 = a3;
  v56 = a4;
  mlir::Operation::emitOpError(a1, &v55, v65);
  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v65, " #");
  if (*v20)
  {
    v22 = v20 + 24;
    v21 = *(v20 + 24);
    LODWORD(v62) = 5;
    v63 = a5;
    v23 = *(v20 + 32);
    v24 = &v62;
    if (v23 >= *(v20 + 36))
    {
      if (v21 <= &v62 && v21 + 24 * v23 > &v62)
      {
        v50 = &v62 - v21;
        v51 = v20;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v20 + 24, v20 + 40, v23 + 1, 24);
        v20 = v51;
        v21 = *(v51 + 24);
        v24 = &v50[v21];
      }

      else
      {
        v48 = v20;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v20 + 24, v20 + 40, v23 + 1, 24);
        v20 = v48;
        v21 = *(v48 + 24);
        v24 = &v62;
      }
    }

    v25 = v21 + 24 * *(v20 + 32);
    v26 = *v24;
    *(v25 + 16) = *(v24 + 2);
    *v25 = v26;
    v27 = (*(v20 + 32) + 1);
    *(v20 + 32) = v27;
    if (*v20)
    {
      LODWORD(v62) = 3;
      v63 = " must be 0D/1D/2D/3D tensor of floating point or quantized values, but got ";
      v64 = 75;
      v28 = *(v20 + 24);
      v29 = &v62;
      if (v27 >= *(v20 + 36))
      {
        if (v28 <= &v62 && v28 + 24 * v27 > &v62)
        {
          v52 = &v62 - v28;
          v53 = v20;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v22, v20 + 40, v27 + 1, 24);
          v20 = v53;
          v28 = *(v53 + 24);
          v29 = &v52[v28];
        }

        else
        {
          v49 = v20;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v22, v20 + 40, v27 + 1, 24);
          v20 = v49;
          v28 = *(v49 + 24);
          v29 = &v62;
        }
      }

      v30 = v28 + 24 * *(v20 + 32);
      v31 = *v29;
      *(v30 + 16) = *(v29 + 2);
      *v30 = v31;
      ++*(v20 + 32);
      if (*v20)
      {
        v32 = &v62;
        v33 = v20;
        mlir::DiagnosticArgument::DiagnosticArgument(&v62, a2);
        v20 = v33;
        v34 = *(v33 + 32);
        v35 = *(v33 + 24);
        if (v34 >= *(v33 + 36))
        {
          if (v35 <= &v62 && v35 + 24 * v34 > &v62)
          {
            v54 = &v62 - v35;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v22, v33 + 40, v34 + 1, 24);
            v20 = v33;
            v35 = *(v33 + 24);
            v32 = &v54[v35];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(v22, v33 + 40, v34 + 1, 24);
            v20 = v33;
            v35 = *(v33 + 24);
            v32 = &v62;
          }
        }

        v36 = v35 + 24 * *(v20 + 32);
        v37 = *v32;
        *(v36 + 16) = *(v32 + 2);
        *v36 = v37;
        ++*(v20 + 32);
      }
    }
  }

  v38 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
  if (v65[0])
  {
    mlir::InFlightDiagnostic::report(v65);
  }

  if (v73 == 1)
  {
    if (v72 != &v73)
    {
      free(v72);
    }

    v39 = __p;
    if (__p)
    {
      v40 = v71;
      v41 = __p;
      if (v71 != __p)
      {
        do
        {
          v40 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v40 - 1);
        }

        while (v40 != v39);
        v41 = __p;
      }

      v71 = v39;
      operator delete(v41);
    }

    v42 = v68;
    if (v68)
    {
      v43 = v69;
      v44 = v68;
      if (v69 != v68)
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
        v44 = v68;
      }

      v69 = v42;
      operator delete(v44);
    }

    if (v66 != &v67)
    {
      free(v66);
    }
  }

  return v38;
}