void mlir::mps::DequantizeOp::downgradeToVersion(uint64_t *a1@<X0>, _DWORD *a2@<X2>, uint64_t a3@<X8>)
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v26 = &unk_1F5B01218;
  v27 = 1;
  v28 = 1;
  if (mlir::mps::DequantizeOp::hasNDParams(a1) && ((v7 = a2[2], v7 < v27) || v7 == v27 && ((v16 = a2[3], v16 < HIDWORD(v27)) || v16 == HIDWORD(v27) && a2[4] < v28)))
  {
    v19[0] = "failed to downgrade: requested target version is {0}, but ND Params in only supported from version {1}";
    v19[1] = 102;
    v19[2] = v23;
    v19[3] = 2;
    v20 = 1;
    v21[0] = &unk_1F5B171B8;
    v21[1] = a2;
    v22[0] = &unk_1F5B171E8;
    v22[1] = &v26;
    v23[0] = v21;
    v23[1] = v22;
    v25 = 263;
    v24 = v19;
    mlir::OpState::emitOpError(a1, &v24, v29);
    *a3 = 0;
    *(a3 + 16) = 0;
    if (v29[0])
    {
      mlir::InFlightDiagnostic::report(v29);
    }

    if (v37 == 1)
    {
      if (v36 != &v37)
      {
        free(v36);
      }

      v8 = __p;
      if (__p)
      {
        v9 = v35;
        v10 = __p;
        if (v35 != __p)
        {
          do
          {
            v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v35 = v8;
        operator delete(v10);
      }

      v11 = v32;
      if (v32)
      {
        v12 = v33;
        v13 = v32;
        if (v33 != v32)
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
          v13 = v32;
        }

        v33 = v11;
        operator delete(v13);
      }

      if (v30 != &v31)
      {
        free(v30);
      }
    }
  }

  else
  {
    v17 = *(v6 + 36);
    v18 = v6 - 16;
    if (!v17)
    {
      v18 = 0;
    }

    *a3 = v18;
    *(a3 + 8) = v17;
    *(a3 + 16) = 1;
  }
}

BOOL mlir::mps::DequantizeOp::hasNDParams(mlir::mps::DequantizeOp *this)
{
  v1 = *(*this + 72);
  v2 = v1[11];
  v3 = v1[15];
  v11 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v1[7] + 8) & 0xFFFFFFFFFFFFFFF8));
  v12 = v4;
  result = 1;
  if (!v11 || !mlir::CallOpInterface::getArgOperands(&v11) || (mlir::CallableOpInterface::getArgAttrsAttr(&v11), v5 <= 1))
  {
    v11 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v2 + 8) & 0xFFFFFFFFFFFFFFF8));
    v12 = v6;
    if (!v11 || !mlir::CallOpInterface::getArgOperands(&v11) || (mlir::CallableOpInterface::getArgAttrsAttr(&v11), v7 <= 1))
    {
      v11 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v3 + 8) & 0xFFFFFFFFFFFFFFF8));
      v12 = v8;
      if (!v11)
      {
        return 0;
      }

      if (!mlir::CallOpInterface::getArgOperands(&v11))
      {
        return 0;
      }

      mlir::CallableOpInterface::getArgAttrsAttr(&v11);
      if (v9 <= 1)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::mps::QuantizeOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v49 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    v14 = *a7;
  }

  else
  {
    v14 = 0uLL;
  }

  v41 = a6;
  v42[0] = 0;
  v43 = 0;
  v44 = v14;
  v45 = a9;
  v46 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v41);
    if (v43 == 1)
    {
      v43 = 0;
    }

    mlir::OperationName::OperationName(v42, "mps.quantize", 12, Context);
    v43 = 1;
  }

  *&v47 = a4;
  *(&v47 + 1) = a5;
  if (a5)
  {
    v16.var0.var0 = mlir::UnknownLoc::get(this, a2);
    if (mlir::mps::QuantizeOpAdaptor::verify(&v41, v16))
    {
      v17 = *(&v44 + 1);
      v48 = v47;
      v18 = (*(mlir::ValueRange::dereference_iterator(&v48, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v18)
      {
        v19 = *v18;
        {
          v20 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v21 = *(v19 + 8);
          v22 = *(v19 + 16);
          if (!v22)
          {
            goto LABEL_25;
          }
        }

        else
        {
          mlir::arith::ExtUIOp::fold();
          v20 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v21 = *(v19 + 8);
          v22 = *(v19 + 16);
          if (!v22)
          {
            goto LABEL_25;
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
          v33 = v23[1];
LABEL_26:
          v38[0] = v18;
          v38[1] = v33;
          v37 = v17;
          Value = mlir::AffineMapAttr::getValue(&v37);
          ElementTypeOrSelf = mlir::getElementTypeOrSelf(Value);
          LOBYTE(v39) = 0;
          v40 = 0;
          v30 = mlir::ShapedType::cloneWith(v38, &v39, ElementTypeOrSelf);
          v31 = *(a11 + 8);
          if (v31 >= *(a11 + 12))
          {
            goto LABEL_27;
          }

          goto LABEL_21;
        }
      }

LABEL_25:
      v33 = 0;
      goto LABEL_26;
    }
  }

  v29 = mlir::Float32Type::get(this, a2);
  v30 = mlir::UnrankedTensorType::get(v29);
  v31 = *(a11 + 8);
  if (v31 >= *(a11 + 12))
  {
LABEL_27:
    v36 = v30;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v31 + 1, 8);
    v30 = v36;
    LODWORD(v31) = *(a11 + 8);
  }

LABEL_21:
  *(*a11 + 8 * v31) = v30;
  ++*(a11 + 8);
  return 1;
}

BOOL mlir::mps::QuantizeOpAdaptor::verify(mlir::mps::QuantizeOpAdaptor *this, Location a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (*(this + 4))
  {
    v3 = *(this + 3);
    v22[0] = *(this + 4);
    mlir::AffineMapAttr::getValue(v22);
    if (!v3)
    {
      return 1;
    }

    v20[0] = v3;
    v22[0] = mlir::AffineMapAttr::getValue(v20);
    if (mlir::Type::isSignedInteger(v22, 32))
    {
      return 1;
    }

    v20[0] = "'mps.quantize' op attribute 'axis' failed to satisfy constraint: 32-bit signed integer attribute";
    v21 = 259;
    mlir::emitError(a2.var0.var0, v20, v22);
    v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
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

      v13 = __p;
      if (__p)
      {
        v14 = v28;
        v15 = __p;
        if (v28 != __p)
        {
          do
          {
            v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
          }

          while (v14 != v13);
          v15 = __p;
        }

        v28 = v13;
        operator delete(v15);
      }

      v8 = v25;
      if (!v25)
      {
        goto LABEL_39;
      }

      v16 = v26;
      v10 = v25;
      if (v26 == v25)
      {
LABEL_38:
        v26 = v8;
        operator delete(v10);
LABEL_39:
        if (v23 != &v24)
        {
          free(v23);
        }

        return v4;
      }

      do
      {
        v18 = *--v16;
        v17 = v18;
        *v16 = 0;
        if (v18)
        {
          operator delete[](v17);
        }
      }

      while (v16 != v8);
LABEL_37:
      v10 = v25;
      goto LABEL_38;
    }
  }

  else
  {
    v20[0] = "'mps.quantize' op requires attribute 'dtype'";
    v21 = 259;
    mlir::emitError(a2.var0.var0, v20, v22);
    v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
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

      v5 = __p;
      if (__p)
      {
        v6 = v28;
        v7 = __p;
        if (v28 != __p)
        {
          do
          {
            v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
          }

          while (v6 != v5);
          v7 = __p;
        }

        v28 = v5;
        operator delete(v7);
      }

      v8 = v25;
      if (!v25)
      {
        goto LABEL_39;
      }

      v9 = v26;
      v10 = v25;
      if (v26 == v25)
      {
        goto LABEL_38;
      }

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
      goto LABEL_37;
    }
  }

  return v4;
}

uint64_t mlir::mps::DequantizeOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v49 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    v14 = *a7;
  }

  else
  {
    v14 = 0uLL;
  }

  v41 = a6;
  v42[0] = 0;
  v43 = 0;
  v44 = v14;
  v45 = a9;
  v46 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v41);
    if (v43 == 1)
    {
      v43 = 0;
    }

    mlir::OperationName::OperationName(v42, "mps.dequantize", 14, Context);
    v43 = 1;
  }

  *&v47 = a4;
  *(&v47 + 1) = a5;
  if (a5)
  {
    v16.var0.var0 = mlir::UnknownLoc::get(this, a2);
    if (mlir::mps::DequantizeOpAdaptor::verify(&v41, v16))
    {
      v17 = *(&v44 + 1);
      v48 = v47;
      v18 = (*(mlir::ValueRange::dereference_iterator(&v48, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v18)
      {
        v19 = *v18;
        {
          v20 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v21 = *(v19 + 8);
          v22 = *(v19 + 16);
          if (!v22)
          {
            goto LABEL_25;
          }
        }

        else
        {
          mlir::arith::ExtUIOp::fold();
          v20 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v21 = *(v19 + 8);
          v22 = *(v19 + 16);
          if (!v22)
          {
            goto LABEL_25;
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
          v33 = v23[1];
LABEL_26:
          v38[0] = v18;
          v38[1] = v33;
          v37 = v17;
          Value = mlir::AffineMapAttr::getValue(&v37);
          ElementTypeOrSelf = mlir::getElementTypeOrSelf(Value);
          LOBYTE(v39) = 0;
          v40 = 0;
          v30 = mlir::ShapedType::cloneWith(v38, &v39, ElementTypeOrSelf);
          v31 = *(a11 + 8);
          if (v31 >= *(a11 + 12))
          {
            goto LABEL_27;
          }

          goto LABEL_21;
        }
      }

LABEL_25:
      v33 = 0;
      goto LABEL_26;
    }
  }

  v29 = mlir::Float32Type::get(this, a2);
  v30 = mlir::UnrankedTensorType::get(v29);
  v31 = *(a11 + 8);
  if (v31 >= *(a11 + 12))
  {
LABEL_27:
    v36 = v30;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v31 + 1, 8);
    v30 = v36;
    LODWORD(v31) = *(a11 + 8);
  }

LABEL_21:
  *(*a11 + 8 * v31) = v30;
  ++*(a11 + 8);
  return 1;
}

BOOL mlir::mps::DequantizeOpAdaptor::verify(mlir::mps::DequantizeOpAdaptor *this, Location a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (*(this + 4))
  {
    v3 = *(this + 3);
    v22[0] = *(this + 4);
    mlir::AffineMapAttr::getValue(v22);
    if (!v3)
    {
      return 1;
    }

    v20[0] = v3;
    v22[0] = mlir::AffineMapAttr::getValue(v20);
    if (mlir::Type::isSignedInteger(v22, 32))
    {
      return 1;
    }

    v20[0] = "'mps.dequantize' op attribute 'axis' failed to satisfy constraint: 32-bit signed integer attribute";
    v21 = 259;
    mlir::emitError(a2.var0.var0, v20, v22);
    v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
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

      v13 = __p;
      if (__p)
      {
        v14 = v28;
        v15 = __p;
        if (v28 != __p)
        {
          do
          {
            v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
          }

          while (v14 != v13);
          v15 = __p;
        }

        v28 = v13;
        operator delete(v15);
      }

      v8 = v25;
      if (!v25)
      {
        goto LABEL_39;
      }

      v16 = v26;
      v10 = v25;
      if (v26 == v25)
      {
LABEL_38:
        v26 = v8;
        operator delete(v10);
LABEL_39:
        if (v23 != &v24)
        {
          free(v23);
        }

        return v4;
      }

      do
      {
        v18 = *--v16;
        v17 = v18;
        *v16 = 0;
        if (v18)
        {
          operator delete[](v17);
        }
      }

      while (v16 != v8);
LABEL_37:
      v10 = v25;
      goto LABEL_38;
    }
  }

  else
  {
    v20[0] = "'mps.dequantize' op requires attribute 'dtype'";
    v21 = 259;
    mlir::emitError(a2.var0.var0, v20, v22);
    v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
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

      v5 = __p;
      if (__p)
      {
        v6 = v28;
        v7 = __p;
        if (v28 != __p)
        {
          do
          {
            v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
          }

          while (v6 != v5);
          v7 = __p;
        }

        v28 = v5;
        operator delete(v7);
      }

      v8 = v25;
      if (!v25)
      {
        goto LABEL_39;
      }

      v9 = v26;
      v10 = v25;
      if (v26 == v25)
      {
        goto LABEL_38;
      }

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
      goto LABEL_37;
    }
  }

  return v4;
}

void mlir::mps::DequantizeLUTOp::downgradeToVersion(uint64_t *a1@<X0>, _DWORD *a2@<X2>, uint64_t a3@<X8>)
{
  v64 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v53[0] = &unk_1F5B01218;
  v53[1] = 0x100000001;
  v54 = 0;
  v7 = a2[2];
  if (v7 && (v7 != 1 || a2[3]))
  {
    v37 = &unk_1F5B01218;
    v38 = 0x300000001;
    v39 = 1;
    v55[0] = mlir::getElementTypeOrSelf(*(*(v6 + 72) + 24));
    if (mlir::Type::isUnsignedInteger(v55, 6) && ((v8 = a2[2], v8 < v38) || v8 == v38 && ((v23 = a2[3], v23 < HIDWORD(v38)) || v23 == HIDWORD(v38) && a2[4] < v39)))
    {
      v40 = "failed to downgrade: requested target version is {0}, but 6-bit palettization is only supported from version {1}";
      v41 = 112;
      v42 = &v49;
      v43 = 2;
      v44 = 1;
      v45 = &unk_1F5B171B8;
      v46 = a2;
      v47 = &unk_1F5B171E8;
      v48 = &v37;
      v49 = &v45;
      v50 = &v47;
      v52 = 263;
      v51[0] = &v40;
      mlir::OpState::emitOpError(a1, v51, v55);
      *a3 = 0;
      *(a3 + 16) = 0;
      if (v55[0])
      {
        mlir::InFlightDiagnostic::report(v55);
      }

      if (v63 == 1)
      {
        if (v62 != &v63)
        {
          free(v62);
        }

        v9 = __p;
        if (__p)
        {
          v10 = v61;
          v11 = __p;
          if (v61 != __p)
          {
            do
            {
              v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
            }

            while (v10 != v9);
            v11 = __p;
          }

          v61 = v9;
          operator delete(v11);
        }

        v12 = v58;
        if (!v58)
        {
          goto LABEL_62;
        }

        v13 = v59;
        v14 = v58;
        if (v59 == v58)
        {
          goto LABEL_61;
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
        goto LABEL_60;
      }
    }

    else
    {
      v34 = &unk_1F5B01218;
      v35 = 0x300000001;
      v36 = 3;
      v55[0] = mlir::getElementTypeOrSelf(*(*(*a1 + 72) + 24));
      if (!mlir::Type::isUnsignedInteger(v55, 3) || (v24 = a2[2], v24 >= v35) && (v24 != v35 || (v31 = a2[3], v31 >= HIDWORD(v35)) && (v31 != HIDWORD(v35) || a2[4] >= v36)))
      {
        v32 = *(v6 + 36);
        v33 = v6 - 16;
        if (!v32)
        {
          v33 = 0;
        }

        *a3 = v33;
        *(a3 + 8) = v32;
        *(a3 + 16) = 1;
        return;
      }

      v40 = "failed to downgrade: requested target version is {0}, but 3-bit palettization is only supported from version {1}";
      v41 = 112;
      v42 = &v49;
      v43 = 2;
      v44 = 1;
      v45 = &unk_1F5B171B8;
      v46 = a2;
      v47 = &unk_1F5B171E8;
      v48 = &v34;
      v49 = &v45;
      v50 = &v47;
      v52 = 263;
      v51[0] = &v40;
      mlir::OpState::emitOpError(a1, v51, v55);
      *a3 = 0;
      *(a3 + 16) = 0;
      if (v55[0])
      {
        mlir::InFlightDiagnostic::report(v55);
      }

      if (v63 == 1)
      {
        if (v62 != &v63)
        {
          free(v62);
        }

        v25 = __p;
        if (__p)
        {
          v26 = v61;
          v27 = __p;
          if (v61 != __p)
          {
            do
            {
              v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
            }

            while (v26 != v25);
            v27 = __p;
          }

          v61 = v25;
          operator delete(v27);
        }

        v12 = v58;
        if (!v58)
        {
          goto LABEL_62;
        }

        v28 = v59;
        v14 = v58;
        if (v59 == v58)
        {
LABEL_61:
          v59 = v12;
          operator delete(v14);
LABEL_62:
          if (v56 != &v57)
          {
            free(v56);
          }

          return;
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

        while (v28 != v12);
LABEL_60:
        v14 = v58;
        goto LABEL_61;
      }
    }
  }

  else
  {
    v40 = "failed to downgrade: requested target version is {0}, but the op was first defined in version {1}";
    v41 = 97;
    v42 = &v49;
    v43 = 2;
    v44 = 1;
    v45 = &unk_1F5B171B8;
    v46 = a2;
    v47 = &unk_1F5B171E8;
    v48 = v53;
    v49 = &v45;
    v50 = &v47;
    v52 = 263;
    v51[0] = &v40;
    mlir::OpState::emitOpError(a1, v51, v55);
    *a3 = 0;
    *(a3 + 16) = 0;
    if (v55[0])
    {
      mlir::InFlightDiagnostic::report(v55);
    }

    if (v63 == 1)
    {
      if (v62 != &v63)
      {
        free(v62);
      }

      v17 = __p;
      if (__p)
      {
        v18 = v61;
        v19 = __p;
        if (v61 != __p)
        {
          do
          {
            v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
          }

          while (v18 != v17);
          v19 = __p;
        }

        v61 = v17;
        operator delete(v19);
      }

      v12 = v58;
      if (!v58)
      {
        goto LABEL_62;
      }

      v20 = v59;
      v14 = v58;
      if (v59 == v58)
      {
        goto LABEL_61;
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
      goto LABEL_60;
    }
  }
}

uint64_t mlir::mps::DequantizeLUTOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, AttributeStorage *a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v79 = *MEMORY[0x1E69E9840];
  v77 = a4;
  v78 = a5;
  if (a7)
  {
    v16 = *a7;
  }

  else
  {
    v16 = 0;
  }

  v69 = a6;
  v70[0] = 0;
  v71 = 0;
  v72 = v16;
  v73 = a9;
  v17 = a5;
  v74 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v69);
    if (v71 == 1)
    {
      v71 = 0;
    }

    mlir::OperationName::OperationName(v70, "mps.dequantize_lut", 18, Context);
    v71 = 1;
    v17 = v78;
  }

  v75 = a4;
  v76 = a5;
  if (v17 < 2 || (v19.var0.var0 = mlir::UnknownLoc::get(this, a2), !mlir::mps::DequantizeLUTOpAdaptor::verify(&v69, v19)))
  {
    v31 = mlir::Float32Type::get(this, a2);
    v32 = mlir::UnrankedTensorType::get(v31);
    v33 = *(a11 + 8);
    if (v33 < *(a11 + 12))
    {
      goto LABEL_21;
    }

LABEL_58:
    v64 = v32;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v33 + 1, 8);
    v32 = v64;
    LODWORD(v33) = *(a11 + 8);
    goto LABEL_21;
  }

  v20 = (*(mlir::ValueRange::dereference_iterator(&v77, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v20)
  {
    goto LABEL_26;
  }

  v21 = *v20;
  {
    mlir::arith::ExtUIOp::fold();
    v22 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v23 = *(v21 + 8);
    v24 = *(v21 + 16);
    if (v24)
    {
      goto LABEL_13;
    }

LABEL_26:
    v35 = 0;
    goto LABEL_27;
  }

  v22 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v23 = *(v21 + 8);
  v24 = *(v21 + 16);
  if (!v24)
  {
    goto LABEL_26;
  }

LABEL_13:
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
    goto LABEL_26;
  }

  v35 = v25[1];
LABEL_27:
  v66[0] = v20;
  v66[1] = v35;
  v36 = (*(mlir::ValueRange::dereference_iterator(&v77, 1) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v36)
  {
    v37 = *v36;
    {
      v38 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v39 = *(v37 + 8);
      v40 = *(v37 + 16);
      if (!v40)
      {
        goto LABEL_41;
      }
    }

    else
    {
      mlir::arith::ExtUIOp::fold();
      v38 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v39 = *(v37 + 8);
      v40 = *(v37 + 16);
      if (!v40)
      {
        goto LABEL_41;
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
      goto LABEL_42;
    }
  }

LABEL_41:
  v47 = 0;
LABEL_42:
  v65[0] = v36;
  v65[1] = v47;
  isSplat = mlir::ElementsAttr::isSplat(v65);
  if ((mlir::CallOpInterface::getArgOperands(v65) & 1) == 0)
  {
    goto LABEL_57;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(v65);
  if (v49 == 1 || !v72 || (v50 = *(mlir::CallableOpInterface::getArgAttrsAttr(v65) + 8 * (v49 - 1)), v50 == 1))
  {
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(isSplat);
    LOBYTE(v67) = 0;
    v68 = 0;
    v32 = mlir::ShapedType::cloneWith(v66, &v67, ElementTypeOrSelf);
    v33 = *(a11 + 8);
    if (v33 >= *(a11 + 12))
    {
      goto LABEL_58;
    }

LABEL_21:
    *(*a11 + 8 * v33) = v32;
    ++*(a11 + 8);
    return 1;
  }

  if (!mlir::CallOpInterface::getArgOperands(v66) || !v72)
  {
LABEL_57:
    v32 = mlir::UnrankedTensorType::get(isSplat);
    v33 = *(a11 + 8);
    if (v33 < *(a11 + 12))
    {
      goto LABEL_21;
    }

    goto LABEL_58;
  }

  Axis = mlir::mps::detail::DequantizeLUTOpGenericAdaptorBase::getAxis(&v69);
  mlir::CallableOpInterface::getArgAttrsAttr(v66);
  v53.var0.var0 = a3;
  if (v56)
  {
    v57 = PositiveAxis;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v66);
    llvm::SmallVector<long long,5u>::SmallVector<long long,void>(&v67, ArgAttrsAttr, v59);
    v60 = mlir::CallableOpInterface::getArgAttrsAttr(v66);
    v61 = 0x8000000000000000;
    v62 = v67;
    if (v50 != 0x8000000000000000 && *(v60 + 8 * v57) != 0x8000000000000000)
    {
      v61 = *(v67 + 8 * v57) * v50;
    }

    *(v67 + 8 * v57) = v61;
    v63 = mlir::RankedTensorType::get(v62, DWORD2(v67), isSplat, 0);
    llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v63);
    if (v67 != &v68)
    {
      free(v67);
    }

    return 1;
  }

  return mlir::mps::ResizeOp::inferReturnTypes(mlir::MLIRContext *,std::optional<mlir::Location>,mlir::ValueRange,mlir::DictionaryAttr,mlir::OpaqueProperties,mlir::RegionRange,llvm::SmallVectorImpl<mlir::Type> &)::$_0::operator()(a11, isSplat);
}

BOOL mlir::mps::DequantizeLUTOpAdaptor::verify(mlir::mps::DequantizeLUTOpAdaptor *this, Location a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!*(this + 3))
  {
    return 1;
  }

  v13[0] = *(this + 3);
  v15[0] = mlir::AffineMapAttr::getValue(v13);
  if (mlir::Type::isSignedInteger(v15, 32))
  {
    return 1;
  }

  v13[0] = "'mps.dequantize_lut' op attribute 'axis' failed to satisfy constraint: 32-bit signed integer attribute";
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

unint64_t mlir::mps::anonymous namespace::tryGetPositiveAxis(char *a1, uint64_t a2, mlir *a3, Location a4, uint64_t a5)
{
  v74 = *MEMORY[0x1E69E9840];
  v59 = a1;
  v5 = -a2;
  if (-a2 > a1 || a2 <= a1)
  {
    if (a5)
    {
      v57[0] = "invalid axis ";
      v58 = 259;
      mlir::Operation::emitOpError(a5, v57, v63);
      if (v63[0])
      {
        v60 = 2;
        v61 = a1;
        v9 = &v60;
        v10 = v64;
        if (v65 >= v66)
        {
          if (v64 <= &v60 && v64 + 24 * v65 > &v60)
          {
            v51 = &v60 - v64;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
            v10 = v64;
            v9 = (v64 + v51);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
            v9 = &v60;
            v10 = v64;
          }
        }

        v11 = a2;
        v12 = &v10[24 * v65];
        v13 = *v9;
        *(v12 + 2) = *(v9 + 2);
        *v12 = v13;
        v14 = ++v65;
        if (v63[0])
        {
          v60 = 3;
          v61 = " is outside of the range [";
          v62 = 26;
          v15 = &v60;
          v16 = v64;
          if (v14 >= v66)
          {
            if (v64 <= &v60 && v64 + 24 * v14 > &v60)
            {
              v52 = &v60 - v64;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v14 + 1, 24);
              v16 = v64;
              v15 = (v64 + v52);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v14 + 1, 24);
              v15 = &v60;
              v16 = v64;
            }

            v11 = a2;
          }

          v17 = &v16[24 * v65];
          v18 = *v15;
          *(v17 + 2) = *(v15 + 2);
          *v17 = v18;
          v19 = ++v65;
          if (v63[0])
          {
            v60 = 2;
            v61 = v5;
            v20 = &v60;
            v21 = v64;
            if (v19 >= v66)
            {
              if (v64 <= &v60 && v64 + 24 * v19 > &v60)
              {
                v53 = &v60 - v64;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v19 + 1, 24);
                v21 = v64;
                v20 = (v64 + v53);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v19 + 1, 24);
                v20 = &v60;
                v21 = v64;
              }

              v11 = a2;
            }

            v22 = &v21[24 * v65];
            v23 = *v20;
            *(v22 + 2) = *(v20 + 2);
            *v22 = v23;
            v24 = ++v65;
            if (v63[0])
            {
              v60 = 3;
              v61 = ", ";
              v62 = 2;
              v25 = &v60;
              v26 = v64;
              if (v24 >= v66)
              {
                if (v64 <= &v60 && v64 + 24 * v24 > &v60)
                {
                  v54 = &v60 - v64;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v24 + 1, 24);
                  v26 = v64;
                  v25 = (v64 + v54);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v24 + 1, 24);
                  v25 = &v60;
                  v26 = v64;
                }

                v11 = a2;
              }

              v27 = &v26[24 * v65];
              v28 = *v25;
              *(v27 + 2) = *(v25 + 2);
              *v27 = v28;
              v29 = ++v65;
              if (v63[0])
              {
                v60 = 2;
                v61 = (v11 - 1);
                v30 = &v60;
                v31 = v64;
                if (v29 >= v66)
                {
                  if (v64 <= &v60 && v64 + 24 * v29 > &v60)
                  {
                    v55 = &v60 - v64;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v29 + 1, 24);
                    v31 = v64;
                    v30 = (v64 + v55);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v29 + 1, 24);
                    v30 = &v60;
                    v31 = v64;
                  }
                }

                v32 = &v31[24 * v65];
                v33 = *v30;
                *(v32 + 2) = *(v30 + 2);
                *v32 = v33;
                v34 = ++v65;
                if (v63[0])
                {
                  v60 = 3;
                  v61 = "].";
                  v62 = 2;
                  v35 = &v60;
                  v36 = v64;
                  if (v34 >= v66)
                  {
                    if (v64 <= &v60 && v64 + 24 * v34 > &v60)
                    {
                      v56 = &v60 - v64;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v34 + 1, 24);
                      v36 = v64;
                      v35 = (v64 + v56);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v34 + 1, 24);
                      v35 = &v60;
                      v36 = v64;
                    }
                  }

                  v37 = &v36[24 * v65];
                  v38 = *v35;
                  *(v37 + 2) = *(v35 + 2);
                  *v37 = v38;
                  ++v65;
                  if (v63[0])
                  {
                    mlir::InFlightDiagnostic::report(v63);
                  }
                }
              }
            }
          }
        }
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

        if (v64 != v67)
        {
          free(v64);
        }
      }
    }

    else
    {
      v63[0] = -a2;
      v57[0] = (a2 - 1);
      mlir::emitOptionalError<char const(&)[14],long long &,char const(&)[27],long long,char const(&)[3],long long,char const(&)[2]>(a3, a4, "invalid axis ", &v59, " is outside of the range [", v63, ", ", v57, "]");
    }

    v48 = 0;
    v47 = 0;
  }

  else
  {
    v47 = &a1[a2 & (a1 >> 63)] & 0xFFFFFFFFFFFFFF00;
    v48 = ((a2 & (a1 >> 63)) + a1);
  }

  return v47 | v48;
}

uint64_t mlir::mps::detail::DequantizeLUTOpGenericAdaptorBase::getAxis(mlir::mps::detail::DequantizeLUTOpGenericAdaptorBase *this)
{
  v6 = *(this + 3);
  if (!v6)
  {
    return 0;
  }

  mlir::IntegerAttr::getValue(&v6, &__p);
  if (v5 > 0x40)
  {
    v3 = *__p;
    operator delete[](__p);
    return v3 | 0x100000000;
  }

  else
  {
    if (v5)
    {
      v1 = (__p << -v5) >> -v5;
    }

    else
    {
      LODWORD(v1) = 0;
    }

    return v1 | 0x100000000;
  }
}

uint64_t mlir::mps::verifyDequantLUT(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v155 = *MEMORY[0x1E69E9840];
  v6 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v7 = *v6;
    {
      v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v9 = *(v7 + 8);
      v10 = *(v7 + 16);
      if (!v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v135 = a3;
      getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
      a3 = v135;
      v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v9 = *(v7 + 8);
      v10 = *(v7 + 16);
      if (!v10)
      {
        goto LABEL_14;
      }
    }

    v11 = v9;
    v12 = v10;
    do
    {
      v13 = v12 >> 1;
      v14 = &v11[2 * (v12 >> 1)];
      v16 = *v14;
      v15 = v14 + 2;
      v12 += ~(v12 >> 1);
      if (v16 < v8)
      {
        v11 = v15;
      }

      else
      {
        v12 = v13;
      }
    }

    while (v12);
    if (v11 != &v9[2 * v10] && *v11 == v8)
    {
      v28 = v11[1];
      v139 = v6;
      v140 = v28;
      v17 = (*(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!v17)
      {
        goto LABEL_29;
      }

      goto LABEL_15;
    }
  }

LABEL_14:
  v139 = v6;
  v140 = 0;
  v17 = (*(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v17)
  {
    goto LABEL_29;
  }

LABEL_15:
  v18 = *v17;
  {
    getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
    v19 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
    if (v21)
    {
      goto LABEL_17;
    }

LABEL_29:
    v29 = 0;
    goto LABEL_30;
  }

  v19 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v20 = *(v18 + 8);
  v21 = *(v18 + 16);
  if (!v21)
  {
    goto LABEL_29;
  }

LABEL_17:
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
  if (v22 == &v20[2 * v21] || *v22 != v19)
  {
    goto LABEL_29;
  }

  v29 = v22[1];
LABEL_30:
  v138[0] = v17;
  v138[1] = v29;
  v144[0] = mlir::ElementsAttr::isSplat(&v139);
  IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(v144);
  if (!mlir::CallOpInterface::getArgOperands(v138))
  {
    return 1;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(v138);
  if (v31 == 1)
  {
    if ((a4 & 0x100000000) != 0)
    {
      v32 = 1;
      goto LABEL_41;
    }

LABEL_35:
    v33 = v31 - 1;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v138);
    v35 = 0;
    v32 = 1;
    v36 = *(ArgAttrsAttr + 8 * v33);
    if (v36 == 0x8000000000000000)
    {
      goto LABEL_44;
    }

    goto LABEL_42;
  }

  if ((a4 & 0x100000000) == 0)
  {
    goto LABEL_35;
  }

  v37 = v31;
  v32 = *(mlir::CallableOpInterface::getArgAttrsAttr(v138) + 8 * (v31 - 1));
  if (v37 < 3)
  {
LABEL_41:
    v39 = mlir::CallableOpInterface::getArgAttrsAttr(v138);
    v35 = 1;
    v36 = *v39;
    if (*v39 == 0x8000000000000000)
    {
      goto LABEL_44;
    }

    goto LABEL_42;
  }

  v38 = mlir::CallableOpInterface::getArgAttrsAttr(v138);
  v35 = 1;
  v36 = *(v38 + 8 * (v37 - 2));
  if (v36 == 0x8000000000000000)
  {
    goto LABEL_44;
  }

LABEL_42:
  if ((v36 ^ (v36 - 1)) <= (v36 - 1))
  {
    v137 = 257;
    mlir::Operation::emitOpError(a1, v136, v144);
    if (v144[0])
    {
      v141 = 3;
      v143 = 10;
      v59 = &v141;
      v60 = v145;
      if (v146 >= v147)
      {
        if (v145 <= &v141 && v145 + 24 * v146 > &v141)
        {
          v124 = &v141 - v145;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v145, v148, v146 + 1, 24);
          v60 = v145;
          v59 = (v145 + v124);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v145, v148, v146 + 1, 24);
          v59 = &v141;
          v60 = v145;
        }
      }

      v61 = &v60[24 * v146];
      v62 = *v59;
      *(v61 + 2) = *(v59 + 2);
      *v61 = v62;
      v63 = ++v146;
      if (v144[0])
      {
        v141 = 2;
        v142 = v36;
        v64 = &v141;
        v65 = v145;
        if (v63 >= v147)
        {
          if (v145 <= &v141 && v145 + 24 * v63 > &v141)
          {
            v126 = &v141 - v145;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v145, v148, v63 + 1, 24);
            v65 = v145;
            v64 = (v145 + v126);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v145, v148, v63 + 1, 24);
            v64 = &v141;
            v65 = v145;
          }
        }

        v66 = &v65[24 * v146];
        v67 = *v64;
        *(v66 + 2) = *(v64 + 2);
        *v66 = v67;
        v68 = ++v146;
        if (v144[0])
        {
          v141 = 3;
          v143 = 22;
          v69 = &v141;
          v70 = v145;
          if (v68 >= v147)
          {
            if (v145 <= &v141 && v145 + 24 * v68 > &v141)
            {
              v129 = &v141 - v145;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v145, v148, v68 + 1, 24);
              v70 = v145;
              v69 = (v145 + v129);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v145, v148, v68 + 1, 24);
              v69 = &v141;
              v70 = v145;
            }
          }

          v71 = &v70[24 * v146];
          v72 = *v69;
          *(v71 + 2) = *(v69 + 2);
          *v71 = v72;
          ++v146;
        }
      }
    }

    v49 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v144);
    if (v144[0])
    {
      mlir::InFlightDiagnostic::report(v144);
    }

    if (v154 == 1)
    {
      if (v153 != &v154)
      {
        free(v153);
      }

      v73 = __p;
      if (__p)
      {
        v74 = v152;
        v75 = __p;
        if (v152 != __p)
        {
          do
          {
            v74 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v74 - 1);
          }

          while (v74 != v73);
          v75 = __p;
        }

        v152 = v73;
        operator delete(v75);
      }

      v53 = v149;
      if (!v149)
      {
        goto LABEL_142;
      }

      v76 = v150;
      v55 = v149;
      if (v150 == v149)
      {
        goto LABEL_141;
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

      while (v76 != v53);
      goto LABEL_140;
    }

    return v49;
  }

  v40 = IntOrFloatBitWidth;
  v41 = (1 << IntOrFloatBitWidth);
  if (v36 != v41)
  {
    v137 = 257;
    mlir::Operation::emitOpError(a1, v136, v144);
    if (v144[0])
    {
      v141 = 3;
      v143 = 10;
      v89 = &v141;
      v90 = v145;
      if (v146 >= v147)
      {
        if (v145 <= &v141 && v145 + 24 * v146 > &v141)
        {
          v128 = &v141 - v145;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v145, v148, v146 + 1, 24);
          v90 = v145;
          v89 = (v145 + v128);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v145, v148, v146 + 1, 24);
          v89 = &v141;
          v90 = v145;
        }
      }

      v91 = &v90[24 * v146];
      v92 = *v89;
      *(v91 + 2) = *(v89 + 2);
      *v91 = v92;
      v93 = ++v146;
      if (v144[0])
      {
        v141 = 2;
        v142 = v36;
        v94 = &v141;
        v95 = v145;
        if (v93 >= v147)
        {
          if (v145 <= &v141 && v145 + 24 * v93 > &v141)
          {
            v130 = &v141 - v145;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v145, v148, v93 + 1, 24);
            v95 = v145;
            v94 = (v145 + v130);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v145, v148, v93 + 1, 24);
            v94 = &v141;
            v95 = v145;
          }
        }

        v96 = &v95[24 * v146];
        v97 = *v94;
        *(v96 + 2) = *(v94 + 2);
        *v96 = v97;
        v98 = ++v146;
        if (v144[0])
        {
          v141 = 3;
          v143 = 41;
          v99 = &v141;
          v100 = v145;
          if (v98 >= v147)
          {
            if (v145 <= &v141 && v145 + 24 * v98 > &v141)
            {
              v131 = &v141 - v145;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v145, v148, v98 + 1, 24);
              v100 = v145;
              v99 = (v145 + v131);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v145, v148, v98 + 1, 24);
              v99 = &v141;
              v100 = v145;
            }
          }

          v101 = &v100[24 * v146];
          v102 = *v99;
          *(v101 + 2) = *(v99 + 2);
          *v101 = v102;
          v103 = ++v146;
          if (v144[0])
          {
            v141 = 2;
            v142 = v40;
            v104 = &v141;
            v105 = v145;
            if (v103 >= v147)
            {
              if (v145 <= &v141 && v145 + 24 * v103 > &v141)
              {
                v132 = &v141 - v145;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v145, v148, v103 + 1, 24);
                v105 = v145;
                v104 = (v145 + v132);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v145, v148, v103 + 1, 24);
                v104 = &v141;
                v105 = v145;
              }
            }

            v106 = &v105[24 * v146];
            v107 = *v104;
            *(v106 + 2) = *(v104 + 2);
            *v106 = v107;
            v108 = ++v146;
            if (v144[0])
            {
              v141 = 3;
              v142 = "=";
              v143 = 1;
              v109 = &v141;
              v110 = v145;
              if (v108 >= v147)
              {
                if (v145 <= &v141 && v145 + 24 * v108 > &v141)
                {
                  v133 = &v141 - v145;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v145, v148, v108 + 1, 24);
                  v110 = v145;
                  v109 = (v145 + v133);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v145, v148, v108 + 1, 24);
                  v109 = &v141;
                  v110 = v145;
                }
              }

              v111 = &v110[24 * v146];
              v112 = *v109;
              *(v111 + 2) = *(v109 + 2);
              *v111 = v112;
              v113 = ++v146;
              if (v144[0])
              {
                v141 = 2;
                v142 = v41;
                v114 = &v141;
                v115 = v145;
                if (v113 >= v147)
                {
                  if (v145 <= &v141 && v145 + 24 * v113 > &v141)
                  {
                    v134 = &v141 - v145;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v145, v148, v113 + 1, 24);
                    v115 = v145;
                    v114 = (v145 + v134);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v145, v148, v113 + 1, 24);
                    v114 = &v141;
                    v115 = v145;
                  }
                }

                v116 = &v115[24 * v146];
                v117 = *v114;
                *(v116 + 2) = *(v114 + 2);
                *v116 = v117;
                ++v146;
              }
            }
          }
        }
      }
    }

    v49 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v144);
    if (v144[0])
    {
      mlir::InFlightDiagnostic::report(v144);
    }

    if (v154 == 1)
    {
      if (v153 != &v154)
      {
        free(v153);
      }

      v118 = __p;
      if (__p)
      {
        v119 = v152;
        v120 = __p;
        if (v152 != __p)
        {
          do
          {
            v119 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v119 - 1);
          }

          while (v119 != v118);
          v120 = __p;
        }

        v152 = v118;
        operator delete(v120);
      }

      v53 = v149;
      if (!v149)
      {
        goto LABEL_142;
      }

      v121 = v150;
      v55 = v149;
      if (v150 == v149)
      {
        goto LABEL_141;
      }

      do
      {
        v123 = *--v121;
        v122 = v123;
        *v121 = 0;
        if (v123)
        {
          operator delete[](v122);
        }
      }

      while (v121 != v53);
      goto LABEL_140;
    }

    return v49;
  }

LABEL_44:
  if (v35)
  {
    mlir::CallableOpInterface::getArgAttrsAttr(&v139);
    v43 = (v42 & (a4 >> 63)) + a4;
    if (v43 < 0 || (mlir::CallableOpInterface::getArgAttrsAttr(&v139), v43 >= v44))
    {
      v137 = 257;
      mlir::Operation::emitOpError(a1, v136, v144);
      if (v144[0])
      {
        v141 = 3;
        v142 = "axis value is not compatible with input rank";
        v143 = 44;
        v45 = &v141;
        v46 = v145;
        if (v146 >= v147)
        {
          if (v145 <= &v141 && v145 + 24 * v146 > &v141)
          {
            v125 = &v141 - v145;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v145, v148, v146 + 1, 24);
            v46 = v145;
            v45 = (v145 + v125);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v145, v148, v146 + 1, 24);
            v45 = &v141;
            v46 = v145;
          }
        }

        v47 = &v46[24 * v146];
        v48 = *v45;
        *(v47 + 2) = *(v45 + 2);
        *v47 = v48;
        ++v146;
      }

      v49 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v144);
      if (v144[0])
      {
        mlir::InFlightDiagnostic::report(v144);
      }

      if (v154 == 1)
      {
        if (v153 != &v154)
        {
          free(v153);
        }

        v50 = __p;
        if (__p)
        {
          v51 = v152;
          v52 = __p;
          if (v152 != __p)
          {
            do
            {
              v51 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v51 - 1);
            }

            while (v51 != v50);
            v52 = __p;
          }

          v152 = v50;
          operator delete(v52);
        }

        v53 = v149;
        if (!v149)
        {
          goto LABEL_142;
        }

        v54 = v150;
        v55 = v149;
        if (v150 == v149)
        {
LABEL_141:
          v150 = v53;
          operator delete(v55);
LABEL_142:
          if (v145 != v148)
          {
            free(v145);
          }

          return v49;
        }

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
LABEL_140:
        v55 = v149;
        goto LABEL_141;
      }

      return v49;
    }

    return 1;
  }

  if (v32 < 2)
  {
    return 1;
  }

  v137 = 257;
  mlir::Operation::emitOpError(a1, v136, v144);
  if (v144[0])
  {
    v141 = 3;
    v142 = "axis must be defined when LUT Vector size > 1";
    v143 = 45;
    v79 = &v141;
    v80 = v145;
    if (v146 >= v147)
    {
      if (v145 <= &v141 && v145 + 24 * v146 > &v141)
      {
        v127 = &v141 - v145;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v145, v148, v146 + 1, 24);
        v80 = v145;
        v79 = (v145 + v127);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v145, v148, v146 + 1, 24);
        v79 = &v141;
        v80 = v145;
      }
    }

    v81 = &v80[24 * v146];
    v82 = *v79;
    *(v81 + 2) = *(v79 + 2);
    *v81 = v82;
    ++v146;
  }

  v49 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v144);
  if (v144[0])
  {
    mlir::InFlightDiagnostic::report(v144);
  }

  if (v154 == 1)
  {
    if (v153 != &v154)
    {
      free(v153);
    }

    v83 = __p;
    if (__p)
    {
      v84 = v152;
      v85 = __p;
      if (v152 != __p)
      {
        do
        {
          v84 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v84 - 1);
        }

        while (v84 != v83);
        v85 = __p;
      }

      v152 = v83;
      operator delete(v85);
    }

    v53 = v149;
    if (!v149)
    {
      goto LABEL_142;
    }

    v86 = v150;
    v55 = v149;
    if (v150 == v149)
    {
      goto LABEL_141;
    }

    do
    {
      v88 = *--v86;
      v87 = v88;
      *v86 = 0;
      if (v88)
      {
        operator delete[](v87);
      }
    }

    while (v86 != v53);
    goto LABEL_140;
  }

  return v49;
}

uint64_t mlir::mps::DequantizeLUTOp::getAxis(mlir::mps::DequantizeLUTOp *this)
{
  v6 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (!v6)
  {
    return 0;
  }

  mlir::IntegerAttr::getValue(&v6, &__p);
  if (v5 > 0x40)
  {
    v3 = *__p;
    operator delete[](__p);
    return v3 | 0x100000000;
  }

  else
  {
    if (v5)
    {
      v1 = (__p << -v5) >> -v5;
    }

    else
    {
      LODWORD(v1) = 0;
    }

    return v1 | 0x100000000;
  }
}

BOOL mlir::mps::UnrealizedFoldOp::verify(mlir::mps::UnrealizedFoldOp *this)
{
  v28 = *MEMORY[0x1E69E9840];
  v14 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ValueRange::ValueRange(v17, &v14, 1uLL);
  v13 = *(*this - 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ValueRange::ValueRange(v15, &v13, 1uLL);
  v26[0] = &unk_1F5B24F20;
  v27 = v26;
  if (v27 == v26)
  {
    (*(*v27 + 32))(v27);
    if (v2)
    {
      return 1;
    }
  }

  else
  {
    if (v27)
    {
      (*(*v27 + 40))(v27);
    }

    if (v2)
    {
      return 1;
    }
  }

  v15[0] = "failed: the input type must be more specialized than the result type";
  v16 = 259;
  mlir::OpState::emitOpError(this, v15, v17);
  v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
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

    v4 = __p;
    if (__p)
    {
      v5 = v23;
      v6 = __p;
      if (v23 != __p)
      {
        do
        {
          v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
        }

        while (v5 != v4);
        v6 = __p;
      }

      v23 = v4;
      operator delete(v6);
    }

    v7 = v20;
    if (v20)
    {
      v8 = v21;
      v9 = v20;
      if (v21 != v20)
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
        v9 = v20;
      }

      v21 = v7;
      operator delete(v9);
    }

    if (v18 != &v19)
    {
      free(v18);
    }
  }

  return v3;
}

uint64_t mlir::mps::anonymous namespace::areMoreSpecializedTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a2 != a4)
  {
    return 0;
  }

  v17[0] = &unk_1F5B17F10;
  v17[1] = a5;
  v18 = v17;
  if (a2)
  {
    v7 = 0;
    v8 = a2 - 1;
    do
    {
      v9 = mlir::TypeRange::dereference_iterator(a1, v7);
      v15 = mlir::TypeRange::dereference_iterator(a3, v7);
      v16 = v9;
      if (!v18)
      {
        v14 = std::__throw_bad_function_call[abi:nn200100]();
        return mlir::mps::TypeConstraintOp::verify(v14);
      }

      result = (*(*v18 + 48))(v18, &v16, &v15);
      if (result)
      {
        v11 = v8 == v7;
      }

      else
      {
        v11 = 1;
      }

      ++v7;
    }

    while (!v11);
    v12 = v18;
    if (v18 == v17)
    {
      v13 = result;
      goto LABEL_17;
    }

    if (!v18)
    {
      return result;
    }

    v13 = result;
    (*(*v18 + 40))(v18);
  }

  else
  {
    v13 = 1;
    v12 = v17;
LABEL_17:
    (*(*v12 + 32))(v12);
  }

  return v13;
}

BOOL mlir::mps::TypeConstraintOp::verify(mlir::mps::TypeConstraintOp *this)
{
  v28 = *MEMORY[0x1E69E9840];
  v14 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ValueRange::ValueRange(v17, &v14, 1uLL);
  v15[0] = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  Value = mlir::AffineMapAttr::getValue(v15);
  mlir::ValueRange::ValueRange(v15, &Value, 1uLL);
  v26[0] = &unk_1F5B24FA0;
  v27 = v26;
  if (v27 == v26)
  {
    (*(*v27 + 32))(v27);
    if (v2)
    {
      return 1;
    }
  }

  else
  {
    if (v27)
    {
      (*(*v27 + 40))(v27);
    }

    if (v2)
    {
      return 1;
    }
  }

  v15[0] = "the type constraint cannot be satisfied";
  v16 = 259;
  mlir::OpState::emitOpError(this, v15, v17);
  v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
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

    v4 = __p;
    if (__p)
    {
      v5 = v23;
      v6 = __p;
      if (v23 != __p)
      {
        do
        {
          v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
        }

        while (v5 != v4);
        v6 = __p;
      }

      v23 = v4;
      operator delete(v6);
    }

    v7 = v20;
    if (v20)
    {
      v8 = v21;
      v9 = v20;
      if (v21 != v20)
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
        v9 = v20;
      }

      v21 = v7;
      operator delete(v9);
    }

    if (v18 != &v19)
    {
      free(v18);
    }
  }

  return v3;
}

uint64_t mlir::mps::anonymous namespace::areCompatibleTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = *MEMORY[0x1E69E9840];
  v10 = *(a5 + 24);
  if (v10)
  {
    if (v10 == a5)
    {
      v18 = v17;
      (*(*v10 + 24))(v10, v17);
    }

    else
    {
      v18 = (*(*v10 + 16))(v10);
    }
  }

  else
  {
    v18 = 0;
  }

  {
    v11 = 1;
    v12 = v18;
    if (v18 == v17)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v13 = *(a5 + 24);
    if (v13)
    {
      if (v13 == a5)
      {
        v16 = v15;
        (*(*v13 + 24))(v13, v15);
      }

      else
      {
        v16 = (*(*v13 + 16))(v13);
      }
    }

    else
    {
      v16 = 0;
    }

    if (v16 == v15)
    {
      (*(*v16 + 32))(v16);
      v12 = v18;
      if (v18 == v17)
      {
LABEL_21:
        (*(*v12 + 32))(v12);
        return v11;
      }
    }

    else
    {
      if (v16)
      {
        (*(*v16 + 40))();
      }

      v12 = v18;
      if (v18 == v17)
      {
        goto LABEL_21;
      }
    }
  }

  if (v12)
  {
    (*(*v12 + 40))(v12);
  }

  return v11;
}

uint64_t mlir::mps::TypeConstraintOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v41 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    v14 = *a7;
  }

  else
  {
    v14 = 0;
  }

  v31 = a6;
  v32[0] = 0;
  v33 = 0;
  v34 = v14;
  v35 = a9;
  v36 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v31);
    if (v33 == 1)
    {
      v33 = 0;
    }

    mlir::OperationName::OperationName(v32, "mps.type_constraint", 19, Context);
    v33 = 1;
  }

  v37 = a4;
  v38 = a5;
  v16.var0.var0 = mlir::UnknownLoc::get(this, a2);
  if (mlir::mps::TypeConstraintOpAdaptor::verify(&v31, v16))
  {
    v39 = v37;
    v40 = 0;
    v27 = *(mlir::ValueRange::dereference_iterator(&v39, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v39 = v34;
    Value = mlir::AffineMapAttr::getValue(&v39);
    mlir::ValueRange::ValueRange(&v39, &v27, 1uLL);
    mlir::ValueRange::ValueRange(v30, &Value, 1uLL);
    v28[0] = &unk_1F5B24F20;
    v29 = v28;
    {
      p_Value = &v27;
    }

    else
    {
      p_Value = &Value;
    }

    v19 = *p_Value;
    v20 = *(a11 + 8);
    if (v20 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v20 + 1, 8);
      LODWORD(v20) = *(a11 + 8);
    }

    *(*a11 + 8 * v20) = v19;
    ++*(a11 + 8);
    if (v29 == v28)
    {
      (*(*v29 + 32))(v29);
    }

    else if (v29)
    {
      (*(*v29 + 40))();
    }
  }

  else
  {
    v21 = mlir::Float32Type::get(this, v17);
    v22 = mlir::UnrankedTensorType::get(v21);
    v23 = *(a11 + 8);
    if (v23 >= *(a11 + 12))
    {
      v25 = v22;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v23 + 1, 8);
      v22 = v25;
      LODWORD(v23) = *(a11 + 8);
    }

    *(*a11 + 8 * v23) = v22;
    ++*(a11 + 8);
  }

  return 1;
}

BOOL mlir::mps::TypeConstraintOpAdaptor::verify(mlir::mps::TypeConstraintOpAdaptor *this, Location a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(this + 3))
  {
    v14[0] = *(this + 3);
    mlir::AffineMapAttr::getValue(v14);
    return 1;
  }

  else
  {
    v12 = "'mps.type_constraint' op requires attribute 'type_constraint'";
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
  }

  return v2;
}

uint64_t mlir::mps::CreateComplexOp::inferReturnTypes(mlir::Float32Type *a1, uint64_t a2, uint64_t a3, mlir::MLIRContext *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v49[1] = *MEMORY[0x1E69E9840];
  v47 = v49;
  v48 = 0x100000000;
  {
    v13 = **v47;
    {
      v14 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v15 = *(v13 + 8);
      v16 = *(v13 + 16);
      if (!v16)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v42 = v13;
      mlir::arith::ExtUIOp::fold();
      v14 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v15 = *(v42 + 8);
      v16 = *(v42 + 16);
      if (!v16)
      {
        goto LABEL_15;
      }
    }

    v17 = v15;
    v18 = v16;
    do
    {
      v19 = v18 >> 1;
      v20 = &v17[2 * (v18 >> 1)];
      v22 = *v20;
      v21 = v20 + 2;
      v18 += ~(v18 >> 1);
      if (v22 < v14)
      {
        v17 = v21;
      }

      else
      {
        v18 = v19;
      }
    }

    while (v18);
    if (v17 != &v15[2 * v16] && *v17 == v14 && v17[1])
    {
      v27 = *v47;
      if (!*v47)
      {
        goto LABEL_33;
      }

      v28 = *v27;
      {
        v29 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v30 = *(v28 + 8);
        v31 = *(v28 + 16);
        if (v31)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v43 = v28;
        mlir::arith::ExtUIOp::fold();
        v29 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v30 = *(v43 + 8);
        v31 = *(v43 + 16);
        if (v31)
        {
LABEL_23:
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
LABEL_31:
          if (v32 != &v30[2 * v31] && *v32 == v29)
          {
            v38 = v32[1];
LABEL_34:
            v44[0] = v27;
            v44[1] = v38;
            isSplat = mlir::ElementsAttr::isSplat(v44);
            v40 = mlir::ComplexType::get(isSplat);
            LOBYTE(v45) = 0;
            v46 = 0;
            v24 = mlir::ShapedType::cloneWith(v44, &v45, v40);
            v25 = *(a11 + 8);
            if (v25 < *(a11 + 12))
            {
              goto LABEL_16;
            }

            goto LABEL_35;
          }

LABEL_33:
          v38 = 0;
          goto LABEL_34;
        }
      }

      v31 = 0;
      v32 = v30;
      goto LABEL_31;
    }
  }

LABEL_15:
  v23 = mlir::Float32Type::get(a1, v12);
  v24 = mlir::UnrankedTensorType::get(v23);
  v25 = *(a11 + 8);
  if (v25 < *(a11 + 12))
  {
    goto LABEL_16;
  }

LABEL_35:
  v41 = v24;
  llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v25 + 1, 8);
  v24 = v41;
  LODWORD(v25) = *(a11 + 8);
LABEL_16:
  *(*a11 + 8 * v25) = v24;
  ++*(a11 + 8);
  if (v47 != v49)
  {
    free(v47);
  }

  return 1;
}

uint64_t mlir::mps::RealPartOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, unint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v34 = *MEMORY[0x1E69E9840];
  v25 = a6;
  v26[0] = 0;
  v27 = 0;
  v28 = a9;
  v29 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v25);
    if (v27 == 1)
    {
      v27 = 0;
    }

    mlir::OperationName::OperationName(v26, "mps.real_part", 13, Context);
    v27 = 1;
  }

  v30 = a4;
  v31 = a5;
  if (!a5)
  {
    goto LABEL_13;
  }

  mlir::UnknownLoc::get(this, a2);
  v32 = v30;
  v15 = mlir::ValueRange::dereference_iterator(&v32, 0);
  v16 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v15 + 8) & 0xFFFFFFFFFFFFFFF8));
  v24[0] = v16;
  v24[1] = a2;
  if (!v16)
  {
    goto LABEL_13;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(v16);
  if (*(*ElementTypeOrSelf + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v18 = ElementTypeOrSelf;
  }

  else
  {
    v18 = 0;
  }

  *&v32 = v18;
  if (v18)
  {
    ElementTypeOrSelf = mlir::AffineMapAttr::getValue(&v32);
  }

  LOBYTE(v32) = 0;
  v33 = 0;
  v19 = mlir::ShapedType::cloneWith(v24, &v32, ElementTypeOrSelf);
  if (!v19)
  {
LABEL_13:
    v20 = mlir::Float32Type::get(this, a2);
    v19 = mlir::UnrankedTensorType::get(v20);
  }

  v21 = *(a11 + 8);
  if (v21 >= *(a11 + 12))
  {
    v23 = v19;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v21 + 1, 8);
    v19 = v23;
    v21 = *(a11 + 8);
  }

  *(*a11 + 8 * v21) = v19;
  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::mps::ImaginaryPartOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, unint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v34 = *MEMORY[0x1E69E9840];
  v25 = a6;
  v26[0] = 0;
  v27 = 0;
  v28 = a9;
  v29 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v25);
    if (v27 == 1)
    {
      v27 = 0;
    }

    mlir::OperationName::OperationName(v26, "mps.imaginary_part", 18, Context);
    v27 = 1;
  }

  v30 = a4;
  v31 = a5;
  if (!a5)
  {
    goto LABEL_13;
  }

  mlir::UnknownLoc::get(this, a2);
  v32 = v30;
  v15 = mlir::ValueRange::dereference_iterator(&v32, 0);
  v16 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v15 + 8) & 0xFFFFFFFFFFFFFFF8));
  v24[0] = v16;
  v24[1] = a2;
  if (!v16)
  {
    goto LABEL_13;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(v16);
  if (*(*ElementTypeOrSelf + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v18 = ElementTypeOrSelf;
  }

  else
  {
    v18 = 0;
  }

  *&v32 = v18;
  if (v18)
  {
    ElementTypeOrSelf = mlir::AffineMapAttr::getValue(&v32);
  }

  LOBYTE(v32) = 0;
  v33 = 0;
  v19 = mlir::ShapedType::cloneWith(v24, &v32, ElementTypeOrSelf);
  if (!v19)
  {
LABEL_13:
    v20 = mlir::Float32Type::get(this, a2);
    v19 = mlir::UnrankedTensorType::get(v20);
  }

  v21 = *(a11 + 8);
  if (v21 >= *(a11 + 12))
  {
    v23 = v19;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v21 + 1, 8);
    v19 = v23;
    v21 = *(a11 + 8);
  }

  *(*a11 + 8 * v21) = v19;
  ++*(a11 + 8);
  return 1;
}

BOOL mlir::mps::anonymous namespace::verifyFFTAxes(uint64_t a1, void *a2, uint64_t a3)
{
  v110[6] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v5 = *a2;
    {
      v6 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v7 = *(v5 + 8);
      v8 = *(v5 + 16);
      if (!v8)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v15 = a2;
      getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
      a2 = v15;
      v6 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v7 = *(v5 + 8);
      v8 = *(v5 + 16);
      if (!v8)
      {
        goto LABEL_14;
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
    if (v9 != &v7[2 * v8] && *v9 == v6)
    {
      v30 = v9[1];
      v92 = a2;
      v93 = v30;
      if (mlir::CallOpInterface::getArgOperands(&v92))
      {
        goto LABEL_15;
      }

      return 1;
    }
  }

LABEL_14:
  v92 = a2;
  v93 = 0;
  if (!mlir::CallOpInterface::getArgOperands(&v92))
  {
    return 1;
  }

LABEL_15:
  v91 = 0;
  v108 = &v91;
  v97[0] = a3;
  DefiningOp = mlir::Value::getDefiningOp(v97);
  if (!DefiningOp || !mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v108, DefiningOp))
  {
    return 1;
  }

  v108 = v110;
  v109 = 0x600000000;
  mlir::CallableOpInterface::getArgAttrsAttr(&v92);
  v18 = v17;
  v19 = v91;
  if (v91)
  {
    v20 = *v91;
    {
      v21 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v22 = *(v20 + 8);
      v23 = *(v20 + 16);
      if (!v23)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v32 = v19;
      mlir::mps::PoolAvgOpAdaptor::verify();
      v19 = v32;
      v21 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v22 = *(v20 + 8);
      v23 = *(v20 + 16);
      if (!v23)
      {
        goto LABEL_33;
      }
    }

    v24 = v22;
    v25 = v23;
    do
    {
      v26 = v25 >> 1;
      v27 = &v24[2 * (v25 >> 1)];
      v29 = *v27;
      v28 = v27 + 2;
      v25 += ~(v25 >> 1);
      if (v29 < v21)
      {
        v24 = v28;
      }

      else
      {
        v25 = v26;
      }
    }

    while (v25);
    if (v24 != &v22[2 * v23] && *v24 == v21)
    {
      v33 = v24[1];
      goto LABEL_34;
    }
  }

LABEL_33:
  v33 = 0;
LABEL_34:
  {
    if (v109)
    {
      v34 = v108;
      v35 = (v18 - 5);
      v36 = 8 * v109;
      while (1)
      {
        v37 = *v34;
        if ((v18 - *v34) >= 5)
        {
          break;
        }

        ++v34;
        v36 -= 8;
        if (!v36)
        {
          goto LABEL_39;
        }
      }

      v89 = "invalid axis: ";
      v90 = 259;
      mlir::Operation::emitOpError(a1, &v89, v97);
      if (v97[0])
      {
        v94 = 2;
        v95 = v37;
        v39 = &v94;
        v40 = v98;
        if (v99 >= v100)
        {
          if (v98 <= &v94 && v98 + 24 * v99 > &v94)
          {
            v82 = &v94 - v98;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v99 + 1, 24);
            v40 = v98;
            v39 = (v98 + v82);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v99 + 1, 24);
            v39 = &v94;
            v40 = v98;
          }
        }

        v41 = &v40[24 * v99];
        v42 = *v39;
        *(v41 + 2) = *(v39 + 2);
        *v41 = v42;
        v43 = ++v99;
        if (v97[0])
        {
          v94 = 3;
          v95 = " for rank: ";
          v96 = 11;
          v44 = &v94;
          v45 = v98;
          if (v43 >= v100)
          {
            if (v98 <= &v94 && v98 + 24 * v43 > &v94)
            {
              v83 = &v94 - v98;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v43 + 1, 24);
              v45 = v98;
              v44 = (v98 + v83);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v43 + 1, 24);
              v44 = &v94;
              v45 = v98;
            }
          }

          v46 = &v45[24 * v99];
          v47 = *v44;
          *(v46 + 2) = *(v44 + 2);
          *v46 = v47;
          v48 = ++v99;
          if (v97[0])
          {
            v94 = 2;
            v95 = v18;
            v49 = &v94;
            v50 = v98;
            if (v48 >= v100)
            {
              if (v98 <= &v94 && v98 + 24 * v48 > &v94)
              {
                v84 = &v94 - v98;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v48 + 1, 24);
                v50 = v98;
                v49 = (v98 + v84);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v48 + 1, 24);
                v49 = &v94;
                v50 = v98;
              }
            }

            v51 = &v50[24 * v99];
            v52 = *v49;
            *(v51 + 2) = *(v49 + 2);
            *v51 = v52;
            v53 = ++v99;
            if (v97[0])
            {
              v94 = 3;
              v95 = ". Transform supported only on the last four dimensions";
              v96 = 54;
              v54 = &v94;
              v55 = v98;
              if (v53 >= v100)
              {
                if (v98 <= &v94 && v98 + 24 * v53 > &v94)
                {
                  v85 = &v94 - v98;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v53 + 1, 24);
                  v55 = v98;
                  v54 = (v98 + v85);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v53 + 1, 24);
                  v54 = &v94;
                  v55 = v98;
                }
              }

              v56 = &v55[24 * v99];
              v57 = *v54;
              *(v56 + 2) = *(v54 + 2);
              *v56 = v57;
              v58 = ++v99;
              if (v97[0])
              {
                v94 = 3;
                v95 = ", ie. axis must be larger than ";
                v96 = 31;
                v59 = &v94;
                v60 = v98;
                if (v58 >= v100)
                {
                  if (v98 <= &v94 && v98 + 24 * v58 > &v94)
                  {
                    v86 = &v94 - v98;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v58 + 1, 24);
                    v60 = v98;
                    v59 = (v98 + v86);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v58 + 1, 24);
                    v59 = &v94;
                    v60 = v98;
                  }
                }

                v61 = &v60[24 * v99];
                v62 = *v59;
                *(v61 + 2) = *(v59 + 2);
                *v61 = v62;
                v63 = ++v99;
                if (v97[0])
                {
                  v94 = 2;
                  v95 = v35;
                  v64 = &v94;
                  v65 = v98;
                  if (v63 >= v100)
                  {
                    if (v98 <= &v94 && v98 + 24 * v63 > &v94)
                    {
                      v87 = &v94 - v98;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v63 + 1, 24);
                      v65 = v98;
                      v64 = (v98 + v87);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v63 + 1, 24);
                      v64 = &v94;
                      v65 = v98;
                    }
                  }

                  v66 = &v65[24 * v99];
                  v67 = *v64;
                  *(v66 + 2) = *(v64 + 2);
                  *v66 = v67;
                  v68 = ++v99;
                  if (v97[0])
                  {
                    v94 = 3;
                    v95 = ".";
                    v96 = 1;
                    v69 = &v94;
                    v70 = v98;
                    if (v68 >= v100)
                    {
                      if (v98 <= &v94 && v98 + 24 * v68 > &v94)
                      {
                        v88 = &v94 - v98;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v68 + 1, 24);
                        v70 = v98;
                        v69 = (v98 + v88);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v98, v101, v68 + 1, 24);
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
            }
          }
        }
      }

      result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v97);
      v73 = result;
      if (v97[0])
      {
        mlir::InFlightDiagnostic::report(v97);
        result = v73;
      }

      if (v107)
      {
        if (v106 != &v107)
        {
          free(v106);
          result = v73;
        }

        v74 = __p;
        if (__p)
        {
          v75 = v105;
          v76 = __p;
          if (v105 != __p)
          {
            do
            {
              v75 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v75 - 1);
            }

            while (v75 != v74);
            v76 = __p;
          }

          v105 = v74;
          operator delete(v76);
          result = v73;
        }

        v77 = v102;
        if (v102)
        {
          v78 = v103;
          v79 = v102;
          if (v103 != v102)
          {
            do
            {
              v81 = *--v78;
              v80 = v81;
              *v78 = 0;
              if (v81)
              {
                operator delete[](v80);
              }
            }

            while (v78 != v77);
            v79 = v102;
          }

          v103 = v77;
          operator delete(v79);
          result = v73;
        }

        if (v98 != v101)
        {
          free(v98);
          result = v73;
        }
      }
    }

    else
    {
LABEL_39:
      result = 1;
    }
  }

  else
  {
    result = 0;
  }

  if (v108 != v110)
  {
    v38 = result;
    free(v108);
    return v38;
  }

  return result;
}

uint64_t mlir::mps::FastFourierTransformOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, unint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v42 = *MEMORY[0x1E69E9840];
  v39[0] = a4;
  v39[1] = a5;
  if (a7)
  {
    v14 = *a7;
  }

  else
  {
    v14 = 0uLL;
  }

  v31 = a6;
  v32[0] = 0;
  v33 = 0;
  v34 = v14;
  v35 = a9;
  v36 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v31);
    if (v33 == 1)
    {
      v33 = 0;
    }

    mlir::OperationName::OperationName(v32, "mps.fast_fourier_transform", 26, Context);
    v33 = 1;
  }

  v37 = a4;
  v38 = a5;
  if (a5)
  {
    v16.var0.var0 = mlir::UnknownLoc::get(this, a2);
    if (mlir::mps::FastFourierTransformOpAdaptor::verify(&v31, v16))
    {
      v40 = v37;
      v17 = mlir::ValueRange::dereference_iterator(&v40, 0);
      v18 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v17 + 8) & 0xFFFFFFFFFFFFFFF8));
      v30[0] = v18;
      v30[1] = v19;
      if (v18)
      {
        ElementTypeOrSelf = mlir::getElementTypeOrSelf(v18);
        v21 = ElementTypeOrSelf;
        if (!ElementTypeOrSelf || *(*ElementTypeOrSelf + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
        {
          v21 = mlir::ComplexType::get(ElementTypeOrSelf);
        }

        LOBYTE(v40) = 0;
        v41 = 0;
        v22 = mlir::ShapedType::cloneWith(v30, &v40, v21);
        v23 = *(a11 + 8);
        if (v23 < *(a11 + 12))
        {
          goto LABEL_15;
        }
      }

      else
      {
        v22 = *(mlir::ValueRange::dereference_iterator(v39, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
        v23 = *(a11 + 8);
        if (v23 < *(a11 + 12))
        {
LABEL_15:
          *(*a11 + 8 * v23) = v22;
          goto LABEL_19;
        }
      }

      v28 = v22;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v23 + 1, 8);
      v22 = v28;
      v23 = *(a11 + 8);
      goto LABEL_15;
    }
  }

  v24 = mlir::Float32Type::get(this, a2);
  v25 = mlir::UnrankedTensorType::get(v24);
  v26 = *(a11 + 8);
  if (v26 >= *(a11 + 12))
  {
    v29 = v25;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v26 + 1, 8);
    v25 = v29;
    LODWORD(v26) = *(a11 + 8);
  }

  *(*a11 + 8 * v26) = v25;
LABEL_19:
  ++*(a11 + 8);
  return 1;
}

BOOL mlir::mps::FastFourierTransformOpAdaptor::verify(mlir::mps::FastFourierTransformOpAdaptor *this, Location a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(this + 4))
  {
    return 1;
  }

  v12 = "'mps.fast_fourier_transform' op requires attribute 'scaling_mode'";
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

uint64_t mlir::mps::RealToHermiteanFFTOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, unint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v34 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    v14 = *a7;
  }

  else
  {
    v14 = 0uLL;
  }

  v24 = a6;
  v25[0] = 0;
  v26 = 0;
  v27 = v14;
  v28 = a9;
  v29 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v24);
    if (v26 == 1)
    {
      v26 = 0;
    }

    mlir::OperationName::OperationName(v25, "mps.real_to_hermitean_fft", 25, Context);
    v26 = 1;
  }

  v30 = a4;
  v31 = a5;
  {
    v20 = mlir::Float32Type::get(this, a2);
    v19 = mlir::UnrankedTensorType::get(v20);
  }

  v21 = *(a11 + 8);
  if (v21 >= *(a11 + 12))
  {
    v23 = v19;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v21 + 1, 8);
    v19 = v23;
    v21 = *(a11 + 8);
  }

  *(*a11 + 8 * v21) = v19;
  ++*(a11 + 8);
  return 1;
}

BOOL mlir::mps::RealToHermiteanFFTOpAdaptor::verify(mlir::mps::RealToHermiteanFFTOpAdaptor *this, Location a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(this + 4))
  {
    return 1;
  }

  v12 = "'mps.real_to_hermitean_fft' op requires attribute 'scaling_mode'";
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

uint64_t mlir::mps::anonymous namespace::inferHermiteanFFTType(void *a1, uint64_t a2, int a3, unsigned int a4)
{
  v56[4] = *MEMORY[0x1E69E9840];
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(a1);
  if (*(*ElementTypeOrSelf + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v9 = ElementTypeOrSelf;
  }

  else
  {
    v9 = 0;
  }

  v50 = v9;
  if (a3)
  {
    if (v9)
    {
      Value = mlir::AffineMapAttr::getValue(&v50);
      v48 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(a1);
      v49 = v11;
      if (!v48)
      {
        return mlir::UnrankedTensorType::get(Value);
      }

      goto LABEL_11;
    }

    return 0;
  }

  if (v9)
  {
    return 0;
  }

  Value = mlir::ComplexType::get(ElementTypeOrSelf);
  v48 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(a1);
  v49 = v13;
  if (!v48)
  {
    return mlir::UnrankedTensorType::get(Value);
  }

LABEL_11:
  if ((mlir::CallOpInterface::getArgOperands(&v48) & 1) == 0)
  {
    return mlir::UnrankedTensorType::get(Value);
  }

  __b = v53;
  v52 = 0x400000000;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v48);
  v16 = v15;
  v54 = v56;
  v55 = 0x400000000;
  matched = mlir::matchConstantWithIntVector<long long>(a2, &v54);
  if ((matched & 1) == 0 || !v55)
  {
    v19 = -1;
    goto LABEL_24;
  }

  v18 = (v55 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v18 >= 3)
  {
    v21 = v18 + 1;
    v22 = (v18 + 1) & 0x3FFFFFFFFFFFFFFCLL;
    v20 = (v54 + 8 * v22);
    v23 = vdupq_n_s64(v16);
    v24 = (v54 + 16);
    v25.i64[0] = -1;
    v25.i64[1] = -1;
    v26 = v22;
    v27.i64[0] = -1;
    v27.i64[1] = -1;
    do
    {
      v28 = vaddq_s64(vandq_s8(vcltzq_s64(v24[-1]), v23), v24[-1]);
      v29 = vaddq_s64(vandq_s8(vcltzq_s64(*v24), v23), *v24);
      v25 = vbslq_s8(vcgtq_s64(v28, v25), v28, v25);
      v27 = vbslq_s8(vcgtq_s64(v29, v27), v29, v27);
      v24 += 2;
      v26 -= 4;
    }

    while (v26);
    v30 = vbslq_s8(vcgtq_s64(v25, v27), v25, v27);
    v31 = vextq_s8(v30, v30, 8uLL).u64[0];
    v19 = vbsl_s8(vcgtd_s64(v30.i64[0], v31), *v30.i8, v31);
    if (v21 == v22)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v19 = -1;
    v20 = v54;
  }

  do
  {
    v32 = *v20++;
    v33 = ((v16 & (v32 >> 63)) + v32);
    if (*&v33 > *&v19)
    {
      v19 = v33;
    }
  }

  while (v20 != (v54 + 8 * v55));
LABEL_24:
  v34 = v52;
  if (v16 != v52)
  {
    if (v16 >= v52)
    {
      if (v16 > HIDWORD(v52))
      {
        v35 = matched;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&__b, v53, v16, 8);
        matched = v35;
        v34 = v52;
      }

      if (v16 != v34)
      {
        v36 = __b + 8 * v34;
        v37 = 8 * (v16 - v34);
        v38 = matched;
        bzero(v36, v37);
        matched = v38;
      }
    }

    LODWORD(v52) = v16;
    LODWORD(v34) = v16;
  }

  if (!v16)
  {
    goto LABEL_49;
  }

  v39 = __b;
  if (a3)
  {
    if (matched)
    {
      do
      {
        v41 = *ArgAttrsAttr++;
        v40 = v41;
        v42 = (a4 | (2 * v41)) - 2;
        if (v41 == 0x8000000000000000)
        {
          v42 = 0x8000000000000000;
        }

        if (!*&v19)
        {
          v40 = v42;
        }

        *v39++ = v40;
        --*&v19;
        --v16;
      }

      while (v16);
      goto LABEL_49;
    }
  }

  else if (matched)
  {
    do
    {
      v44 = *ArgAttrsAttr++;
      v43 = v44;
      v45 = v44 / 2;
      if (v44 == 0x8000000000000000)
      {
        v46 = 0x8000000000000000;
      }

      else
      {
        v46 = v45 + 1;
      }

      if (!*&v19)
      {
        v43 = v46;
      }

      *v39++ = v43;
      --*&v19;
      --v16;
    }

    while (v16);
    goto LABEL_49;
  }

  memset_pattern16(__b, &unk_1E096FAD0, 8 * v16);
LABEL_49:
  if (v54 != v56)
  {
    free(v54);
    LODWORD(v34) = v52;
  }

  result = mlir::RankedTensorType::get(__b, v34, Value, 0);
  if (__b != v53)
  {
    v47 = result;
    free(__b);
    return v47;
  }

  return result;
}

uint64_t mlir::mps::HermiteanToRealFFTOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, unint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v37 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    v14 = *a7;
    v15 = *(a7 + 2);
  }

  else
  {
    v15 = 0;
    v14 = 0uLL;
  }

  v26 = a6;
  v27[0] = 0;
  v28 = 0;
  v29 = v14;
  v30 = v15;
  v31 = a9;
  v32 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v26);
    if (v28 == 1)
    {
      v28 = 0;
    }

    mlir::OperationName::OperationName(v27, "mps.hermitean_to_real_fft", 25, Context);
    v28 = 1;
  }

  v33 = a4;
  v34 = a5;
  {
    v22 = mlir::Float32Type::get(this, a2);
    v21 = mlir::UnrankedTensorType::get(v22);
  }

  v23 = *(a11 + 8);
  if (v23 >= *(a11 + 12))
  {
    v25 = v21;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v23 + 1, 8);
    v21 = v25;
    v23 = *(a11 + 8);
  }

  *(*a11 + 8 * v23) = v21;
  ++*(a11 + 8);
  return 1;
}

BOOL mlir::mps::HermiteanToRealFFTOpAdaptor::verify(mlir::mps::HermiteanToRealFFTOpAdaptor *this, Location a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(this + 5))
  {
    return 1;
  }

  v12 = "'mps.hermitean_to_real_fft' op requires attribute 'scaling_mode'";
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

uint64_t mlir::mps::NonZeroOp::inferReturnTypes(mlir::UnknownLoc *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v43 = *MEMORY[0x1E69E9840];
  v38 = v40;
  memset_pattern16(v40, &unk_1E096FAD0, 0x10uLL);
  v39 = 0x200000002;
  v31 = a6;
  v32[0] = 0;
  v33 = 0;
  v34 = a9;
  v35 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v31);
    if (v33 == 1)
    {
      v33 = 0;
    }

    mlir::OperationName::OperationName(v32, "mps.non_zero", 12, Context);
    v33 = 1;
  }

  v36 = a4;
  v37 = a5;
  if (a5)
  {
    mlir::UnknownLoc::get(a1, v15);
    v41 = v36;
    v42 = 0;
    v17 = mlir::ValueRange::dereference_iterator(&v41, 0);
    v41 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v17 + 8) & 0xFFFFFFFFFFFFFFF8));
    v42 = v18;
    if (v41 && (mlir::CallOpInterface::getArgOperands(&v41) & 1) != 0)
    {
      mlir::CallableOpInterface::getArgAttrsAttr(&v41);
      if (v19 <= 1)
      {
        v20 = 1;
      }

      else
      {
        v20 = v19;
      }

      *(v38 + 1) = v20;
    }

    v21 = mlir::IntegerType::get(a1, 32, 1u);
    v22 = mlir::RankedTensorType::get(v38, v39, v21, 0);
    v23 = *(a11 + 8);
    if (v23 >= *(a11 + 12))
    {
      v29 = v22;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v23 + 1, 8);
      v22 = v29;
      v23 = *(a11 + 8);
    }

    *(*a11 + 8 * v23) = v22;
    ++*(a11 + 8);
    v24 = v38;
    if (v38 != v40)
    {
LABEL_15:
      free(v24);
    }
  }

  else
  {
    v26 = mlir::IntegerType::get(a1, 32, 1u);
    v27 = mlir::RankedTensorType::get(v38, v39, v26, 0);
    v28 = *(a11 + 8);
    if (v28 >= *(a11 + 12))
    {
      v30 = v27;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v28 + 1, 8);
      v27 = v30;
      LODWORD(v28) = *(a11 + 8);
    }

    *(*a11 + 8 * v28) = v27;
    ++*(a11 + 8);
    v24 = v38;
    if (v38 != v40)
    {
      goto LABEL_15;
    }
  }

  return 1;
}

uint64_t mlir::mps::ImToColOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v102 = *MEMORY[0x1E69E9840];
  v100 = a4;
  v101 = a5;
  if (a7)
  {
    v14 = *a7;
    v15 = a7[1];
    v16 = *(a7 + 4);
  }

  else
  {
    v16 = 0;
    v14 = 0uLL;
    v15 = 0uLL;
  }

  v90 = a6;
  v91[0] = 0;
  v92 = 0;
  v93 = v14;
  v94 = v15;
  v95 = v16;
  v96 = a9;
  v17 = a5;
  v97 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v90);
    if (v92 == 1)
    {
      v92 = 0;
    }

    mlir::OperationName::OperationName(v91, "mps.im_to_col", 13, Context);
    v92 = 1;
    v17 = v101;
  }

  v98 = a4;
  v99 = a5;
  if (v17 != 1 || (v19.var0.var0 = mlir::UnknownLoc::get(this, a2), !mlir::mps::ImToColOpAdaptor::verify(&v90, v19)))
  {
    v58 = mlir::Float32Type::get(this, a2);
    v59 = mlir::UnrankedTensorType::get(v58);
    v60 = *(a11 + 8);
    if (v60 >= *(a11 + 12))
    {
LABEL_67:
      v62 = v59;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v60 + 1, 8);
      v59 = v62;
      LODWORD(v60) = *(a11 + 8);
    }

LABEL_64:
    *(*a11 + 8 * v60) = v59;
    ++*(a11 + 8);
    return 1;
  }

  v20 = mlir::ValueRange::dereference_iterator(&v100, 0);
  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(v20 + 8) & 0xFFFFFFFFFFFFFFF8));
  v64[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v20 + 8) & 0xFFFFFFFFFFFFFFF8));
  v64[1] = v22;
  if (!v64[0] || !mlir::CallOpInterface::getArgOperands(v64) || (mlir::CallableOpInterface::getArgAttrsAttr(v64), v23 != 4))
  {
    v59 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
    v60 = *(a11 + 8);
    if (v60 >= *(a11 + 12))
    {
      goto LABEL_67;
    }

    goto LABEL_64;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v64);
  v25 = *ArgAttrsAttr;
  v26 = 1;
  if (*(v93 + 8))
  {
    v27 = 3;
  }

  else
  {
    v27 = 1;
  }

  if (*(v93 + 8))
  {
    v28 = 2;
  }

  else
  {
    v26 = 2;
    v28 = 3;
  }

  v29 = ArgAttrsAttr[v27];
  v30 = ArgAttrsAttr[v26];
  v31 = ArgAttrsAttr[v28];
  v87 = v89;
  v89[0] = v25;
  v89[1] = v29;
  v89[2] = v30;
  v89[3] = v31;
  v88 = 0x400000004;
  v85[0] = v86;
  v85[1] = 0x200000000;
  v70[0] = *(&v94 + 1);
  v32 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(v70);
  mlir::getIntValues<long long>(v32, v33, v85, 1);
  v82 = &v84;
  v84 = *v85[0];
  v83 = 0x200000002;
  v80[0] = v81;
  v80[1] = 0x200000000;
  v70[0] = v95;
  v34 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(v70);
  mlir::getIntValues<long long>(v34, v35, v80, 1);
  v77 = &v79;
  v79 = *v80[0];
  v78 = 0x200000002;
  v75[0] = v76;
  v75[1] = 0x200000000;
  v70[0] = *(&v93 + 1);
  v36 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(v70);
  mlir::getIntValues<long long>(v36, v37, v75, 1);
  v72 = &v74;
  v74 = *v75[0];
  v73 = 0x200000002;
  v70[0] = v71;
  v70[1] = 0x800000000;
  v68[0] = v94;
  v38 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(v68);
  mlir::getIntValues<long long>(v38, v39, v70, 1);
  v40 = 32;
  if (*(v93 + 8))
  {
    v41 = 16;
  }

  else
  {
    v41 = 32;
  }

  if (*(v93 + 8))
  {
    v42 = 24;
  }

  else
  {
    v42 = 40;
  }

  if (!*(v93 + 8))
  {
    v40 = 48;
  }

  v43 = *(v70[0] + v41);
  v44 = *(v70[0] + v42);
  v45 = *(v70[0] + v40);
  if (*(v93 + 8))
  {
    v46 = 40;
  }

  else
  {
    v46 = 56;
  }

  v47 = *(v70[0] + v46);
  v68[0] = v69;
  v69[0] = v43;
  v69[1] = v44;
  v69[2] = v45;
  v69[3] = v47;
  v68[1] = 0x400000004;
  v65 = v67;
  v66 = 0x300000003;
  v67[0] = *v87;
  v48 = *v82;
  v49 = *(v82 + 1);
  v67[1] = *v82 * *(v87 + 1) * v49;
  v50 = *(v87 + 2);
  v51 = *(v87 + 3);
  v52 = 0x8000000000000000;
  v53 = 0x8000000000000000;
  if (v50 != 0x8000000000000000 && v48 != 0x8000000000000000)
  {
    v53 = (v50 + v43 + ~(*v72 * (v48 - 1)) + v44 + *v77) / *v77;
  }

  if (v51 != 0x8000000000000000 && v49 != 0x8000000000000000)
  {
    v52 = (v45 + v51 + ~(*(v72 + 1) * (v49 - 1)) + v47 + *(v77 + 1)) / *(v77 + 1);
  }

  v54 = 0x8000000000000000;
  if (v52 != 0x8000000000000000 && v53 != 0x8000000000000000)
  {
    v54 = v52 * v53;
  }

  v67[2] = v54;
  v56 = mlir::RankedTensorType::get(v67, 3, ElementTypeOrSelf, 0);
  v57 = *(a11 + 8);
  if (v57 >= *(a11 + 12))
  {
    v63 = v56;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v57 + 1, 8);
    v56 = v63;
    LODWORD(v57) = *(a11 + 8);
  }

  *(*a11 + 8 * v57) = v56;
  ++*(a11 + 8);
  if (v65 != v67)
  {
    free(v65);
  }

  if (v68[0] != v69)
  {
    free(v68[0]);
  }

  if (v70[0] != v71)
  {
    free(v70[0]);
  }

  if (v72 != &v74)
  {
    free(v72);
  }

  if (v75[0] != v76)
  {
    free(v75[0]);
  }

  if (v77 != &v79)
  {
    free(v77);
  }

  if (v80[0] != v81)
  {
    free(v80[0]);
  }

  if (v82 != &v84)
  {
    free(v82);
  }

  if (v85[0] != v86)
  {
    free(v85[0]);
  }

  if (v87 != v89)
  {
    free(v87);
  }

  return 1;
}

BOOL mlir::mps::ImToColOpAdaptor::verify(mlir::mps::ImToColOpAdaptor *this, Location a2)
{
  v77 = *MEMORY[0x1E69E9840];
  v3 = *(this + 3);
  if (!v3)
  {
    v62 = "'mps.im_to_col' op requires attribute 'data_layout'";
    v64 = 259;
    mlir::emitError(a2.var0.var0, &v62, &v67);
    v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v67);
    if (v67)
    {
      mlir::InFlightDiagnostic::report(&v67);
    }

    if (v76 != 1)
    {
      return v25;
    }

    if (v75 != &v76)
    {
      free(v75);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v74;
      v28 = __p;
      if (v74 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v74 = v26;
      operator delete(v28);
    }

    v29 = v71;
    if (v71)
    {
      v30 = v72;
      v31 = v71;
      if (v72 == v71)
      {
        goto LABEL_92;
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
LABEL_91:
      v31 = v71;
LABEL_92:
      v72 = v29;
      operator delete(v31);
    }

LABEL_93:
    if (v69 != &v70)
    {
      free(v69);
    }

    return v25;
  }

  v61 = *(this + 4);
  if (!v61)
  {
    v62 = "'mps.im_to_col' op requires attribute 'dilation_rates'";
    v64 = 259;
    mlir::emitError(a2.var0.var0, &v62, &v67);
    v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v67);
    if (v67)
    {
      mlir::InFlightDiagnostic::report(&v67);
    }

    if (v76 != 1)
    {
      return v25;
    }

    if (v75 != &v76)
    {
      free(v75);
    }

    v34 = __p;
    if (__p)
    {
      v35 = v74;
      v36 = __p;
      if (v74 != __p)
      {
        do
        {
          v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
        }

        while (v35 != v34);
        v36 = __p;
      }

      v74 = v34;
      operator delete(v36);
    }

    v29 = v71;
    if (v71)
    {
      v37 = v72;
      v31 = v71;
      if (v72 == v71)
      {
        goto LABEL_92;
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

      while (v37 != v29);
      goto LABEL_91;
    }

    goto LABEL_93;
  }

  v60 = *(this + 5);
  if (!v60)
  {
    v62 = "'mps.im_to_col' op requires attribute 'explicit_padding'";
    v64 = 259;
    mlir::emitError(a2.var0.var0, &v62, &v67);
    v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v67);
    if (v67)
    {
      mlir::InFlightDiagnostic::report(&v67);
    }

    if (v76 != 1)
    {
      return v25;
    }

    if (v75 != &v76)
    {
      free(v75);
    }

    v40 = __p;
    if (__p)
    {
      v41 = v74;
      v42 = __p;
      if (v74 != __p)
      {
        do
        {
          v41 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v41 - 1);
        }

        while (v41 != v40);
        v42 = __p;
      }

      v74 = v40;
      operator delete(v42);
    }

    v29 = v71;
    if (v71)
    {
      v43 = v72;
      v31 = v71;
      if (v72 == v71)
      {
        goto LABEL_92;
      }

      do
      {
        v45 = *--v43;
        v44 = v45;
        *v43 = 0;
        if (v45)
        {
          operator delete[](v44);
        }
      }

      while (v43 != v29);
      goto LABEL_91;
    }

    goto LABEL_93;
  }

  v59 = *(this + 6);
  if (!v59)
  {
    v62 = "'mps.im_to_col' op requires attribute 'kernel_sizes'";
    v64 = 259;
    mlir::emitError(a2.var0.var0, &v62, &v67);
    v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v67);
    if (v67)
    {
      mlir::InFlightDiagnostic::report(&v67);
    }

    if (v76 != 1)
    {
      return v25;
    }

    if (v75 != &v76)
    {
      free(v75);
    }

    v46 = __p;
    if (__p)
    {
      v47 = v74;
      v48 = __p;
      if (v74 != __p)
      {
        do
        {
          v47 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v47 - 1);
        }

        while (v47 != v46);
        v48 = __p;
      }

      v74 = v46;
      operator delete(v48);
    }

    v29 = v71;
    if (v71)
    {
      v49 = v72;
      v31 = v71;
      if (v72 == v71)
      {
        goto LABEL_92;
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

      while (v49 != v29);
      goto LABEL_91;
    }

    goto LABEL_93;
  }

  v58 = *(this + 7);
  if (v58)
  {
    v62 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v59);
    v63 = v4;
    v54[0] = mlir::ElementsAttr::getType(&v62);
    v67 = llvm::cast<mlir::ShapedType,mlir::Type>(v54);
    v68 = v5;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v67);
    Type = 2;
    if (v7 == 1 && *ArgAttrsAttr == Type && (isSplat = v59, llvm::all_of<mlir::DenseIntElementsAttr,mlir::mps::Conv3DDataGradientOpAdaptor::verify(mlir::Location)::$_0>(&isSplat)) && (v55 = v59, *&v65 = mlir::ArrayAttr::getValue(&v55), *(&v65 + 1) = v8, v56 = mlir::ElementsAttr::isSplat(&v65), mlir::Type::isUnsignedInteger(&v56, 64)))
    {
      v62 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v58);
      v63 = v9;
      v54[0] = mlir::ElementsAttr::getType(&v62);
      v67 = llvm::cast<mlir::ShapedType,mlir::Type>(v54);
      v68 = v10;
      v11 = mlir::CallableOpInterface::getArgAttrsAttr(&v67);
      Type = 2;
      if (v12 == 1 && *v11 == Type && (isSplat = v58, llvm::all_of<mlir::DenseIntElementsAttr,mlir::mps::Conv3DDataGradientOpAdaptor::verify(mlir::Location)::$_0>(&isSplat)) && (v55 = v58, *&v65 = mlir::ArrayAttr::getValue(&v55), *(&v65 + 1) = v13, v56 = mlir::ElementsAttr::isSplat(&v65), mlir::Type::isUnsignedInteger(&v56, 64)))
      {
        v62 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v61);
        v63 = v14;
        v54[0] = mlir::ElementsAttr::getType(&v62);
        v67 = llvm::cast<mlir::ShapedType,mlir::Type>(v54);
        v68 = v15;
        v16 = mlir::CallableOpInterface::getArgAttrsAttr(&v67);
        Type = 2;
        if (v17 == 1 && *v16 == Type && (isSplat = v61, llvm::all_of<mlir::DenseIntElementsAttr,mlir::mps::Conv3DDataGradientOpAdaptor::verify(mlir::Location)::$_0>(&isSplat)) && (v55 = v61, *&v65 = mlir::ArrayAttr::getValue(&v55), *(&v65 + 1) = v18, v56 = mlir::ElementsAttr::isSplat(&v65), mlir::Type::isUnsignedInteger(&v56, 64)))
        {
          v62 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v60);
          v63 = v19;
          Type = mlir::ElementsAttr::getType(&v62);
          v67 = llvm::cast<mlir::ShapedType,mlir::Type>(&Type);
          v68 = v20;
          v21 = mlir::CallableOpInterface::getArgAttrsAttr(&v67);
          v65 = xmmword_1E097BBD0;
          if (v22 == 2 && (*v21 == v65 ? (v23 = v21[1] == *(&v65 + 1)) : (v23 = 0), v23 && (v56 = v60, v54[0] = mlir::ArrayAttr::getValue(&v56), v54[1] = v24, isSplat = mlir::ElementsAttr::isSplat(v54), mlir::Type::isUnsignedInteger(&isSplat, 64))))
          {
            if (*(v3 + 8) < 2u)
            {
              return 1;
            }

            v52 = "'mps.im_to_col' op attribute 'data_layout' failed to satisfy constraint: valid TensorDataLayout is one of NCHW or NHWC";
          }

          else
          {
            v52 = "'mps.im_to_col' op attribute 'explicit_padding' failed to satisfy constraint: ui64 elements attribute of shape {4, 2}";
          }
        }

        else
        {
          v52 = "'mps.im_to_col' op attribute 'dilation_rates' failed to satisfy constraint: positive ui64 elements attribute of shape {2}";
        }
      }

      else
      {
        v52 = "'mps.im_to_col' op attribute 'strides' failed to satisfy constraint: positive ui64 elements attribute of shape {2}";
      }
    }

    else
    {
      v52 = "'mps.im_to_col' op attribute 'kernel_sizes' failed to satisfy constraint: positive ui64 elements attribute of shape {2}";
    }

    v62 = v52;
    v64 = 259;
    mlir::emitError(a2.var0.var0, &v62, &v67);
    v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v67);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v67);
    return v25;
  }

  v62 = "'mps.im_to_col' op requires attribute 'strides'";
  v64 = 259;
  mlir::emitError(a2.var0.var0, &v62, &v67);
  v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v67);
  if (v67)
  {
    mlir::InFlightDiagnostic::report(&v67);
  }

  if (v76 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v68);
  }

  return v25;
}

BOOL mlir::mps::ImToColOp::verify(mlir::mps::ImToColOp *this)
{
  v28[6] = *MEMORY[0x1E69E9840];
  v27[0] = v28;
  v27[1] = 0x600000000;
  v18[0] = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
  v2 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(v18);
  mlir::getIntValues<long long>(v2, v3, v27, 1);
  v4 = v27[0];
  v5 = *v27[0];
  if (*(*(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64) + 8))
  {
    if (!v5 && !*(v27[0] + 8) && !*(v27[0] + 48) && !*(v27[0] + 56))
    {
      goto LABEL_34;
    }
  }

  else if (!v5 && !*(v27[0] + 8) && !*(v27[0] + 16) && !*(v27[0] + 24))
  {
LABEL_34:
    v6 = 1;
    if (v27[0] == v28)
    {
      return v6;
    }

    goto LABEL_32;
  }

  v16 = "failed: padding should be nonzero on spatial dimension only";
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

  v4 = v27[0];
  if (v27[0] != v28)
  {
LABEL_32:
    free(v4);
  }

  return v6;
}

uint64_t mlir::mps::get2DElementsForImToCol(uint64_t **a1, __int128 *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = &v11;
  v11 = *a2;
  v10 = 0x200000002;
  v8 = 2;
  IntegerType = mlir::Builder::getIntegerType(a1, 64, 0);
  v7 = mlir::RankedTensorType::get(&v8, 1, IntegerType, 0);
  v3 = mlir::TensorType::operator mlir::ShapedType(&v7);
  result = mlir::DenseElementsAttr::getFromRawBuffer(v3, v4, v9, 8 * v10, 8, 1, 0);
  if (v9 != &v11)
  {
    v6 = result;
    free(v9);
    return v6;
  }

  return result;
}

uint64_t mlir::mps::getFormattedPaddingImToCol(uint64_t **a1, uint64_t *a2, uint64_t a3, int a4)
{
  v21[4] = *MEMORY[0x1E69E9840];
  v19 = v21;
  v7 = *a2;
  v6 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  v20 = 0x400000000;
  llvm::SmallVectorBase<unsigned int>::grow_pod(&v19, v21, 8uLL, 8);
  v10 = v20;
  v11 = v19 + 8 * v20;
  if (a4)
  {
    *v11 = 0;
    v11[1] = 0;
    v11[2] = v7;
    v11[3] = v6;
    v11[4] = v9;
    v11[5] = v8;
    v11[6] = 0;
    v11[7] = 0;
  }

  else
  {
    *v11 = 0u;
    *(v11 + 1) = 0u;
    v11[4] = v7;
    v11[5] = v6;
    v11[6] = v9;
    v11[7] = v8;
  }

  LODWORD(v20) = v10 + 8;
  v18 = xmmword_1E097BBD0;
  IntegerType = mlir::Builder::getIntegerType(a1, 64, 0);
  v17 = mlir::RankedTensorType::get(&v18, 2, IntegerType, 0);
  v13 = mlir::TensorType::operator mlir::ShapedType(&v17);
  result = mlir::DenseElementsAttr::getFromRawBuffer(v13, v14, v19, 8 * v20, 8, 1, 0);
  if (v19 != v21)
  {
    v16 = result;
    free(v19);
    return v16;
  }

  return result;
}

uint64_t mlir::mps::ColToImOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v37 = *MEMORY[0x1E69E9840];
  v34[0] = a4;
  v34[1] = a5;
  if (a7)
  {
    v13 = *a7;
    v14 = a7[1];
    v15 = *(a7 + 4);
  }

  else
  {
    v15 = 0;
    v13 = 0uLL;
    v14 = 0uLL;
  }

  v24 = a6;
  v25[0] = 0;
  v26 = 0;
  v27 = v13;
  v28 = v14;
  v29 = v15;
  v30 = a9;
  v31 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v24);
    if (v26 == 1)
    {
      v26 = 0;
    }

    mlir::OperationName::OperationName(v25, "mps.col_to_im", 13, Context);
    v26 = 1;
  }

  v32 = a4;
  v33 = a5;
  v17 = mlir::ValueRange::dereference_iterator(v34, 0);
  v35 = v32;
  v36 = 1;
  v35 = mlir::ValueRange::offset_base(&v35, 1);
  v36 = 0;
  v18 = mlir::ValueRange::dereference_iterator(&v35, 0);
  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(v17 + 8) & 0xFFFFFFFFFFFFFFF8));
  TensorType = mlir::mps::getTensorType(v18, ElementTypeOrSelf);
  v21 = *(a11 + 8);
  if (v21 >= *(a11 + 12))
  {
    v23 = TensorType;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v21 + 1, 8);
    TensorType = v23;
    LODWORD(v21) = *(a11 + 8);
  }

  *(*a11 + 8 * v21) = TensorType;
  ++*(a11 + 8);
  return 1;
}

BOOL mlir::mps::ColToImOp::verify(mlir::mps::ColToImOp *this)
{
  v124[6] = *MEMORY[0x1E69E9840];
  v123[0] = v124;
  v123[1] = 0x600000000;
  v113 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
  v2 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v113);
  mlir::getIntValues<long long>(v2, v3, v123, 1);
  v4 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  v6 = *(v4 + 64);
  v5 = v4 + 64;
  v7 = *v123[0];
  if (*(v6 + 8))
  {
    if (!v7 && !*(v123[0] + 1) && !*(v123[0] + 6) && !*(v123[0] + 7))
    {
LABEL_34:
      v111[0] = v112;
      v111[1] = 0x200000000;
      v113 = *(v5 + 24);
      v19 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v113);
      v8 = 1;
      mlir::getIntValues<long long>(v19, v20, v111, 1);
      v21 = *this + 16 * ((*(*this + 44) >> 23) & 1);
      v108 = &v110;
      v110 = *v111[0];
      v109 = 0x200000002;
      v106[0] = v107;
      v106[1] = 0x200000000;
      v113 = *(v21 + 96);
      v22 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v113);
      mlir::getIntValues<long long>(v22, v23, v106, 1);
      v24 = *this + 16 * ((*(*this + 44) >> 23) & 1);
      v103 = &v105;
      v105 = *v106[0];
      v104 = 0x200000002;
      v101[0] = v102;
      v101[1] = 0x200000000;
      v113 = *(v24 + 72);
      v25 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v113);
      mlir::getIntValues<long long>(v25, v26, v101, 1);
      v82 = this;
      v27 = *this;
      v98 = &v100;
      v100 = *v101[0];
      v99 = 0x200000002;
      v28 = *(v27 + 36);
      v29 = v27 - 16;
      if (v28)
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }

      v31 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v30, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!v31)
      {
        goto LABEL_113;
      }

      v32 = *v31;
      {
        v33 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v34 = *(v32 + 8);
        v35 = *(v32 + 16);
        if (v35)
        {
          goto LABEL_40;
        }
      }

      else
      {
        mlir::arith::ExtUIOp::fold();
        v33 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v34 = *(v32 + 8);
        v35 = *(v32 + 16);
        if (v35)
        {
LABEL_40:
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
LABEL_48:
          if (v36 != &v34[2 * v35] && *v36 == v33)
          {
            v42 = v36[1];
          }

          else
          {
            v42 = 0;
          }

          v87[0] = v31;
          v87[1] = v42;
          if (!mlir::CallOpInterface::getArgOperands(v87))
          {
            v8 = 1;
            goto LABEL_113;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v87);
          v44 = mlir::CallableOpInterface::getArgAttrsAttr(v87);
          v46 = (v44 + 8 * v45);
          v95 = v97;
          v96 = 0x400000000;
          v47 = (v46 - ArgAttrsAttr) >> 3;
          if (v47 < 5)
          {
            v48 = 0;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v95, v97, v47, 8);
            v48 = v96;
          }

          if (v46 != ArgAttrsAttr)
          {
            memcpy(v95 + 8 * v48, ArgAttrsAttr, v46 - ArgAttrsAttr);
            v48 = v96;
          }

          LODWORD(v96) = v48 + ((v46 - ArgAttrsAttr) >> 3);
          v49 = mlir::CallableOpInterface::getArgAttrsAttr(v87);
          v50 = *v82;
          v51 = *v49;
          v52 = 3;
          v53 = 1;
          if (*(*(*v82 + 16 * ((*(*v82 + 44) >> 23) & 1) + 64) + 8))
          {
            v54 = 3;
          }

          else
          {
            v54 = 1;
          }

          if (!*(*(*v82 + 16 * ((*(*v82 + 44) >> 23) & 1) + 64) + 8))
          {
            v53 = 2;
          }

          v55 = v49[v54];
          v56 = v49[v53];
          if (*(*(*v82 + 16 * ((*(*v82 + 44) >> 23) & 1) + 64) + 8))
          {
            v52 = 2;
          }

          v57 = v49[v52];
          v91 = 0;
          v92 = v94;
          v94[0] = v51;
          v94[1] = v55;
          v94[2] = v56;
          v94[3] = v57;
          v93 = 0x400000004;
          v88 = v90;
          v89 = 0x300000003;
          v90[0] = v51;
          v59 = *v108;
          v58 = *(v108 + 1);
          v90[1] = *v108 * v55 * v58;
          v60 = 0x8000000000000000;
          v61 = v56 == 0x8000000000000000 || v59 == 0x8000000000000000;
          v62 = 0x8000000000000000;
          if (!v61)
          {
            v62 = (*v123[0] + ~(*v98 * (v59 - 1)) + *(v123[0] + 1) + *v103 + v56) / *v103;
          }

          if (v57 != 0x8000000000000000 && v58 != 0x8000000000000000)
          {
            v60 = (*(v123[0] + 2) + ~(*(v98 + 1) * (v58 - 1)) + *(v123[0] + 3) + *(v103 + 1) + v57) / *(v103 + 1);
          }

          v64 = 0x8000000000000000;
          if (v60 != 0x8000000000000000 && v62 != 0x8000000000000000)
          {
            v64 = v60 * v62;
          }

          v91 = v64;
          v66 = (*(*(*(v50 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
          if (!v66)
          {
            goto LABEL_94;
          }

          v67 = *v66;
          {
            v68 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
            v69 = *(v67 + 8);
            v70 = *(v67 + 16);
            if (v70)
            {
              goto LABEL_84;
            }
          }

          else
          {
            mlir::arith::ExtUIOp::fold();
            v68 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
            v69 = *(v67 + 8);
            v70 = *(v67 + 16);
            if (v70)
            {
LABEL_84:
              v71 = v69;
              v72 = v70;
              do
              {
                v73 = v72 >> 1;
                v74 = &v71[2 * (v72 >> 1)];
                v76 = *v74;
                v75 = v74 + 2;
                v72 += ~(v72 >> 1);
                if (v76 < v68)
                {
                  v71 = v75;
                }

                else
                {
                  v72 = v73;
                }
              }

              while (v72);
LABEL_92:
              if (v71 != &v69[2 * v70] && *v71 == v68)
              {
                v81 = v71[1];
                v85 = v66;
                v86 = v81;
                v77 = mlir::CallableOpInterface::getArgAttrsAttr(&v85);
                if (!v85)
                {
                  goto LABEL_106;
                }

LABEL_95:
                v79 = v77;
                v80 = v78;
                if (mlir::CallOpInterface::getArgOperands(&v85) && (*v79 != *v88 || v79[1] != *(v88 + 1) || v79[2] != *(v88 + 2) || v80 != 3 || v89 != 3))
                {
                  v83 = "failed: invalid output shape for input & attributes.";
                  v84 = 259;
                  mlir::OpState::emitOpError(v82, &v83, &v113);
                  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v113);
                  if (v113)
                  {
                    mlir::InFlightDiagnostic::report(&v113);
                  }

                  if (v122 == 1)
                  {
                    mlir::Diagnostic::~Diagnostic(&v114);
                  }

                  goto LABEL_107;
                }

LABEL_106:
                v8 = 1;
LABEL_107:
                if (v88 != v90)
                {
                  free(v88);
                }

                if (v92 != v94)
                {
                  free(v92);
                }

                if (v95 != v97)
                {
                  free(v95);
                }

LABEL_113:
                if (v98 != &v100)
                {
                  free(v98);
                }

                if (v101[0] != v102)
                {
                  free(v101[0]);
                }

                if (v103 != &v105)
                {
                  free(v103);
                }

                if (v106[0] != v107)
                {
                  free(v106[0]);
                }

                if (v108 != &v110)
                {
                  free(v108);
                }

                v17 = v111[0];
                if (v111[0] == v112)
                {
                  goto LABEL_31;
                }

LABEL_30:
                free(v17);
                goto LABEL_31;
              }

LABEL_94:
              v85 = v66;
              v86 = 0;
              v77 = mlir::CallableOpInterface::getArgAttrsAttr(&v85);
              if (!v85)
              {
                goto LABEL_106;
              }

              goto LABEL_95;
            }
          }

          v70 = 0;
          v71 = v69;
          goto LABEL_92;
        }
      }

      v35 = 0;
      v36 = v34;
      goto LABEL_48;
    }
  }

  else if (!v7 && !*(v123[0] + 1) && !*(v123[0] + 2) && !*(v123[0] + 3))
  {
    goto LABEL_34;
  }

  v95 = "failed: padding should be nonzero on spatial dimension only";
  v97[8] = 259;
  mlir::OpState::emitOpError(this, &v95, &v113);
  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v113);
  if (v113)
  {
    mlir::InFlightDiagnostic::report(&v113);
  }

  if (v122 == 1)
  {
    if (v121 != &v122)
    {
      free(v121);
    }

    v9 = __p;
    if (__p)
    {
      v10 = v120;
      v11 = __p;
      if (v120 != __p)
      {
        do
        {
          v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v120 = v9;
      operator delete(v11);
    }

    v12 = v117;
    if (v117)
    {
      v13 = v118;
      v14 = v117;
      if (v118 != v117)
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
        v14 = v117;
      }

      v118 = v12;
      operator delete(v14);
    }

    v17 = v115;
    if (v115 != &v116)
    {
      goto LABEL_30;
    }
  }

LABEL_31:
  if (v123[0] != v124)
  {
    free(v123[0]);
  }

  return v8;
}

uint64_t mlir::mps::NonMaximumSuppressionOp::inferReturnTypes(mlir::UnknownLoc *a1, uint64_t a2, uint64_t a3, void *a4, unint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v61 = *MEMORY[0x1E69E9840];
  v46[1] = a11;
  v47 = a1;
  v46[0] = &v47;
  v57[0] = v58;
  memset_pattern16(v58, &unk_1E096FAD0, 0x18uLL);
  v57[1] = 0x300000003;
  v58[2] = 2;
  if (a7)
  {
    v16 = *a7;
    v17 = *(a7 + 2);
  }

  else
  {
    v17 = 0;
    v16 = 0uLL;
  }

  v48 = a6;
  v49[0] = 0;
  v50 = 0;
  v51 = v16;
  v52 = v17;
  v53 = a9;
  v54 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v48);
    if (v50 == 1)
    {
      v50 = 0;
    }

    mlir::OperationName::OperationName(v49, "mps.non_maximum_suppression", 27, Context);
    v50 = 1;
  }

  v55 = a4;
  v56 = a5;
  if (a5)
  {
    v19.var0.var0 = mlir::UnknownLoc::get(v47, v15);
    if (mlir::mps::NonMaximumSuppressionOpAdaptor::verify(&v48, v19))
    {
      v45[0] = *(&v51 + 1);
      if (*(&v51 + 1))
      {
        mlir::IntegerAttr::getValue(v45, &v59);
        if (v60 >= 0x41 && v59)
        {
          operator delete[](v59);
        }

        v45[0] = *(&v51 + 1);
        if (*(&v51 + 1))
        {
          mlir::IntegerAttr::getValue(v45, &v59);
          if (v60 >= 0x41)
          {
            v20 = v59;
          }

          else
          {
            v20 = &v59;
          }

          v21 = *v20;
          if (v60 >= 0x41 && v59)
          {
            operator delete[](v59);
          }
        }

        else
        {
          v21 = 0;
        }

        *(v57[0] + 1) = v21;
      }

      v59 = v55;
      v60 = 0;
      v22 = mlir::ValueRange::dereference_iterator(&v59, 0);
      v45[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v22 + 8) & 0xFFFFFFFFFFFFFFF8));
      v45[1] = v23;
      if (v45[0])
      {
        if (mlir::CallOpInterface::getArgOperands(v45))
        {
          mlir::CallableOpInterface::getArgAttrsAttr(v45);
          if (v24 == 3)
          {
            ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v45);
            v26 = v57[0];
            *v57[0] = *ArgAttrsAttr;
            if (v26[1] == 0x8000000000000000)
            {
              v27 = mlir::CallableOpInterface::getArgAttrsAttr(v45);
              *(v57[0] + 1) = *(v27 + 8);
            }
          }
        }
      }

      v28 = v57[0];
      if (*v57[0] == 0x8000000000000000 || *(v57[0] + 1) == 0x8000000000000000)
      {
        if (a5 == 1)
        {
          goto LABEL_50;
        }

        v59 = v55;
        v60 = 1;
        v59 = mlir::ValueRange::offset_base(&v59, 1);
        v60 = 0;
        v29 = mlir::ValueRange::dereference_iterator(&v59, 0);
        v59 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v29 + 8) & 0xFFFFFFFFFFFFFFF8));
        v60 = v30;
        if (v59)
        {
          if (mlir::CallOpInterface::getArgOperands(&v59))
          {
            mlir::CallableOpInterface::getArgAttrsAttr(&v59);
            if (v31 == 3)
            {
              v32 = v57[0];
              if (*v57[0] == 0x8000000000000000)
              {
                v33 = mlir::CallableOpInterface::getArgAttrsAttr(&v59);
                v32 = v57[0];
                *v57[0] = *v33;
              }

              if (v32[1] == 0x8000000000000000)
              {
                v34 = mlir::CallableOpInterface::getArgAttrsAttr(&v59);
                *(v57[0] + 1) = *(v34 + 8);
              }
            }
          }
        }

        v28 = v57[0];
        if (*v57[0] == 0x8000000000000000)
        {
          goto LABEL_54;
        }
      }

      if (v28[1] == 0x8000000000000000)
      {
LABEL_54:
        if (a5 >= 3)
        {
          v35 = v56;
          v59 = v55;
          v60 = 2;
          v36 = mlir::ValueRange::offset_base(&v59, 2);
          if (v35 - 2 != v60)
          {
            v59 = v36;
            v60 = 0;
            if (mlir::ValueRange::dereference_iterator(&v59, 0))
            {
              v59 = v55;
              v60 = 2;
              v59 = mlir::ValueRange::offset_base(&v59, 2);
              v60 = 0;
              v37 = mlir::ValueRange::dereference_iterator(&v59, 0);
              v59 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v37 + 8) & 0xFFFFFFFFFFFFFFF8));
              v60 = v38;
              if (v59)
              {
                if (mlir::CallOpInterface::getArgOperands(&v59))
                {
                  mlir::CallableOpInterface::getArgAttrsAttr(&v59);
                  if (v39 == 2)
                  {
                    v40 = v57[0];
                    if (*v57[0] == 0x8000000000000000)
                    {
                      v41 = mlir::CallableOpInterface::getArgAttrsAttr(&v59);
                      v40 = v57[0];
                      *v57[0] = *v41;
                    }

                    if (v40[1] == 0x8000000000000000)
                    {
                      v42 = mlir::CallableOpInterface::getArgAttrsAttr(&v59);
                      *(v57[0] + 1) = *(v42 + 8);
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

LABEL_50:
  result = mlir::mps::NonMaximumSuppressionOp::inferReturnTypes(mlir::MLIRContext *,std::optional<mlir::Location>,mlir::ValueRange,mlir::DictionaryAttr,mlir::OpaqueProperties,mlir::RegionRange,llvm::SmallVectorImpl<mlir::Type> &)::$_0::operator()(v46, v57);
  if (v57[0] != v58)
  {
    v44 = result;
    free(v57[0]);
    return v44;
  }

  return result;
}

BOOL mlir::mps::NonMaximumSuppressionOpAdaptor::verify(mlir::mps::NonMaximumSuppressionOpAdaptor *this, Location a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!*(this + 4))
  {
    return 1;
  }

  v13[0] = *(this + 4);
  v15[0] = mlir::AffineMapAttr::getValue(v13);
  if (mlir::Type::isUnsignedInteger(v15, 32))
  {
    return 1;
  }

  v13[0] = "'mps.non_maximum_suppression' op attribute 'max_boxes' failed to satisfy constraint: 32-bit unsigned integer attribute";
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

uint64_t mlir::mps::NonMaximumSuppressionOp::inferReturnTypes(mlir::MLIRContext *,std::optional<mlir::Location>,mlir::ValueRange,mlir::DictionaryAttr,mlir::OpaqueProperties,mlir::RegionRange,llvm::SmallVectorImpl<mlir::Type> &)::$_0::operator()(uint64_t a1, uint64_t a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = mlir::IntegerType::get(**a1, 32, 1u);
  v5 = mlir::IntegerType::get(**a1, 32, 2u);
  v6 = *a2;
  v16[0] = **a2;
  v7 = *(a1 + 8);
  v8 = mlir::RankedTensorType::get(v6, *(a2 + 8), v4, 0);
  v9 = *(v7 + 8);
  if (v9 >= *(v7 + 12))
  {
    v14 = v8;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v7, v7 + 16, v9 + 1, 8);
    v8 = v14;
    LODWORD(v9) = *(v7 + 8);
  }

  *(*v7 + 8 * v9) = v8;
  ++*(v7 + 8);
  v10 = *(a1 + 8);
  v11 = mlir::RankedTensorType::get(v16, 1, v5, 0);
  v12 = *(v10 + 8);
  if (v12 >= *(v10 + 12))
  {
    v15 = v11;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v10, v10 + 16, v12 + 1, 8);
    v11 = v15;
    LODWORD(v12) = *(v10 + 8);
  }

  *(*v10 + 8 * v12) = v11;
  ++*(v10 + 8);
  return 1;
}

BOOL mlir::mps::NonMaximumSuppressionOp::verify(mlir::mps::NonMaximumSuppressionOp *this)
{
  v96 = *MEMORY[0x1E69E9840];
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
  v86[0] = v2;
  v86[1] = v13;
  v14 = (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v14)
  {
    goto LABEL_29;
  }

  v15 = *v14;
  {
    v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    if (!v18)
    {
      goto LABEL_29;
    }
  }

  else
  {
    getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
    v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    if (!v18)
    {
      goto LABEL_29;
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
    v45 = v19[1];
    v84 = v14;
    v85 = v45;
    if (mlir::CallOpInterface::getArgOperands(v86))
    {
      goto LABEL_30;
    }

    goto LABEL_59;
  }

LABEL_29:
  v84 = v14;
  v85 = 0;
  if (mlir::CallOpInterface::getArgOperands(v86))
  {
LABEL_30:
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v86);
    mlir::CallableOpInterface::getArgAttrsAttr(v86);
    if (v26 != 3 || (v27 = ArgAttrsAttr[2], v27 != 0x8000000000000000) && v27 != 4)
    {
      v82[0] = "boxes tensor must have shape [N, B, 4]";
      v83 = 259;
      mlir::OpState::emitOpError(this, v82, v87);
      v36 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v87);
      if (v87[0])
      {
        mlir::InFlightDiagnostic::report(v87);
      }

      if (v95 == 1)
      {
        if (v94 != &v95)
        {
          free(v94);
        }

        v37 = __p;
        if (__p)
        {
          v38 = v93;
          v39 = __p;
          if (v93 != __p)
          {
            do
            {
              v38 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v38 - 1);
            }

            while (v38 != v37);
            v39 = __p;
          }

          v93 = v37;
          operator delete(v39);
        }

        v40 = v90;
        if (!v90)
        {
          goto LABEL_130;
        }

        v41 = v91;
        v42 = v90;
        if (v91 == v90)
        {
          goto LABEL_129;
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
        goto LABEL_128;
      }

      return v36;
    }

    v28 = ArgAttrsAttr[1];
    v29 = *ArgAttrsAttr != 0x8000000000000000;
    if (*ArgAttrsAttr == 0x8000000000000000)
    {
      v30 = 0;
    }

    else
    {
      v30 = *ArgAttrsAttr;
    }

    v31 = v28 != 0x8000000000000000;
    if (v28 == 0x8000000000000000)
    {
      v32 = 0;
    }

    else
    {
      v32 = ArgAttrsAttr[1];
    }

    if (!mlir::CallOpInterface::getArgOperands(&v84))
    {
      goto LABEL_40;
    }

    goto LABEL_60;
  }

LABEL_59:
  v32 = 0;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  if (!mlir::CallOpInterface::getArgOperands(&v84))
  {
LABEL_40:
    v33 = 0;
    v34 = 1;
    v35 = *this;
    if (*(*this + 68) == 4)
    {
      return 1;
    }

LABEL_88:
    v57 = *(*(v35 + 72) + 88);
    if (!v57)
    {
      return 1;
    }

    v79 = v34;
    v58 = (*(v57 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!v58)
    {
      goto LABEL_102;
    }

    v59 = *v58;
    {
      v60 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v61 = *(v59 + 8);
      v62 = *(v59 + 16);
      if (!v62)
      {
        goto LABEL_102;
      }
    }

    else
    {
      mlir::arith::ExtUIOp::fold();
      v60 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v61 = *(v59 + 8);
      v62 = *(v59 + 16);
      if (!v62)
      {
        goto LABEL_102;
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
      v77 = v63[1];
      v80 = v58;
      v81 = v77;
      if (!mlir::CallOpInterface::getArgOperands(&v80))
      {
        return 1;
      }

      goto LABEL_103;
    }

LABEL_102:
    v80 = v58;
    v81 = 0;
    if (!mlir::CallOpInterface::getArgOperands(&v80))
    {
      return 1;
    }

LABEL_103:
    v69 = mlir::CallableOpInterface::getArgAttrsAttr(&v80);
    mlir::CallableOpInterface::getArgAttrsAttr(&v80);
    if (v70 == 2 && ((v29 & 1) == 0 || *v69 == 0x8000000000000000 || *v69 == v30) && ((v31 & 1) == 0 || *v69 == 0x8000000000000000 || v69[1] == v32))
    {
      if (!v33 && !v79)
      {
        v82[0] = "when class_indices tensor is provided, scores tensor must have shape [N, B, 1]";
        v83 = 259;
        mlir::OpState::emitOpError(this, v82, v87);
        v36 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v87);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v87);
        return v36;
      }

      return 1;
    }

    v82[0] = "class_indices tensor must have shape [N, B]";
    v83 = 259;
    mlir::OpState::emitOpError(this, v82, v87);
    v36 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v87);
    if (v87[0])
    {
      mlir::InFlightDiagnostic::report(v87);
    }

    if (v95 == 1)
    {
      if (v94 != &v95)
      {
        free(v94);
      }

      v71 = __p;
      if (__p)
      {
        v72 = v93;
        v73 = __p;
        if (v93 != __p)
        {
          do
          {
            v72 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v72 - 1);
          }

          while (v72 != v71);
          v73 = __p;
        }

        v93 = v71;
        operator delete(v73);
      }

      v40 = v90;
      if (!v90)
      {
        goto LABEL_130;
      }

      v74 = v91;
      v42 = v90;
      if (v91 == v90)
      {
LABEL_129:
        v91 = v40;
        operator delete(v42);
LABEL_130:
        if (v88 != &v89)
        {
          free(v88);
        }

        return v36;
      }

      do
      {
        v76 = *--v74;
        v75 = v76;
        *v74 = 0;
        if (v76)
        {
          operator delete[](v75);
        }
      }

      while (v74 != v40);
LABEL_128:
      v42 = v90;
      goto LABEL_129;
    }

    return v36;
  }

LABEL_60:
  v46 = mlir::CallableOpInterface::getArgAttrsAttr(&v84);
  mlir::CallableOpInterface::getArgAttrsAttr(&v84);
  if (v47 == 3 && (!v29 || *v46 == 0x8000000000000000 || *v46 == v30))
  {
    v48 = v46[1];
    if (!v31 || v48 == 0x8000000000000000 || v48 == v32)
    {
      if (*v46 != 0x8000000000000000)
      {
        v30 = *v46;
      }

      v55 = v48 != 0x8000000000000000;
      if (v48 != 0x8000000000000000)
      {
        v32 = v46[1];
      }

      v56 = v46[2];
      v34 = v56 == 0x8000000000000000;
      LOBYTE(v31) = v55 | v31;
      LOBYTE(v29) = (*v46 != 0x8000000000000000) | v29;
      v33 = v56 == 1;
      v35 = *this;
      if (*(*this + 68) == 4)
      {
        return 1;
      }

      goto LABEL_88;
    }
  }

  v82[0] = "scores tensor must have shape [N, B, K]";
  v83 = 259;
  mlir::OpState::emitOpError(this, v82, v87);
  v36 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v87);
  if (v87[0])
  {
    mlir::InFlightDiagnostic::report(v87);
  }

  if (v95 == 1)
  {
    if (v94 != &v95)
    {
      free(v94);
    }

    v49 = __p;
    if (__p)
    {
      v50 = v93;
      v51 = __p;
      if (v93 != __p)
      {
        do
        {
          v50 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v50 - 1);
        }

        while (v50 != v49);
        v51 = __p;
      }

      v93 = v49;
      operator delete(v51);
    }

    v40 = v90;
    if (!v90)
    {
      goto LABEL_130;
    }

    v52 = v91;
    v42 = v90;
    if (v91 == v90)
    {
      goto LABEL_129;
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

    while (v52 != v40);
    goto LABEL_128;
  }

  return v36;
}

uint64_t mlir::mps::ACosOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ACoshOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ASinOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ASinhOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ATan2Op::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ATanOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ATanhOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::AbsoluteOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::AbsoluteSquareOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::AddOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::AndOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::AssignVariableOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::BandPartOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::BatchToSpaceOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::BiasAddGradOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::BiasAddOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::BitwiseAndOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::BitwiseLeftShiftOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::BitwiseNotOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::BitwiseOrOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::BitwisePopcountOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::BitwiseRightShiftOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::BitwiseXorOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::BroadcastGradientArgsOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::BroadcastToOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::CallOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::CastOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::CeilOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ClampOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ColToImOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ConcatOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ConjugateOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ConstantOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::Conv2DDataGradientOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::Conv2DOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::Conv2DWeightsGradientOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::Conv3DDataGradientOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::Conv3DOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::Conv3DWeightsGradientOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::CosOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::CoshOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::CostVolumeOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::CreateComplexOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::CreateTextureTensorOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::CropOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::CropResizeOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::CumulativeMaximumOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::CumulativeMinimumOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::CumulativeProductOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::CumulativeSumOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::DegammaOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::DepthToSpace2DOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::DepthwiseConv2DDataGradientOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::DepthwiseConv2DOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::DepthwiseConv2DWeightsGradientOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::DepthwiseConv3DDataGradientOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::DepthwiseConv3DOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::DepthwiseConv3DWeightsGradientOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::DequantizeLUTOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::DequantizeOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::DimensionSizeOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::DiracOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::DivideOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::DynamicShapeCastOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::EluOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::EqualToOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ErfOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ExpandDimsOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ExponentBase10Op::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ExponentBase2Op::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ExponentOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::FastFourierTransformOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::Flatten2DOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::FloorDivideOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::FloorOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::GRUGradientOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::GRUOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::GatherAlongAxisOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::GatherNDOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::GatherOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::GeluOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::GetCoordOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::GreaterThanOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::GreaterThanOrEqualToOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::HammingDistanceOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::HermiteanToRealFFTOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::IdentityOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ImToColOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ImaginaryPartOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::InitRandomPhiloxStateOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::InstanceNormOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::IsFiniteOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::IsInfiniteOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::IsNaNOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::LPNormOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::LSTMGradientOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::LSTMOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::LeakyReluOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::LessThanOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::LessThanOrEqualToOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::LocalConvolutionDataGradientOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::LocalConvolutionOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::LocalConvolutionWeightGradientOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::LogarithmBase10Op::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::LogarithmBase2Op::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::LogarithmOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::MatMulOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::MaterializeSparseTensorOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::MatrixDecompositionLUOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::MatrixInverseOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::MatrixSolverLUOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::MaximumOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::MinimumOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::ModuloOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::MultiplyOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::NReluOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::NandOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::NegativeOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::NonMaximumSuppressionOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::NonZeroOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::NorOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::NormalizationOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::NotEqualToOp::canonicalize(uint64_t a1, uint64_t a2)
{
  if (mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    if (a1)
    {
      v5 = a1;
      InterfaceFor = mlir::OpInterface<mlir::ExternalCanonicalizeInterface,mlir::detail::ExternalCanonicalizeInterfaceInterfaceTraits>::getInterfaceFor(a1);
      return mlir::RegionBranchOpInterface::getEntrySuccessorOperands(&v5, a2);
    }

    v5 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v5 = 0;
    InterfaceFor = 0;
  }

  return 0;
}