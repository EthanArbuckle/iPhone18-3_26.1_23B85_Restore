BOOL mlir::mps::Conv2DDataGradientOpAdaptor::verify(mlir::mps::Conv2DDataGradientOpAdaptor *this, Location a2)
{
  v70 = *MEMORY[0x1E69E9840];
  if (!*(this + 3))
  {
    v55 = "'mps.conv_2d_data_gradient' op requires attribute 'data_layout'";
    v57 = 259;
    mlir::emitError(a2.var0.var0, &v55, &Value);
    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v69 != 1)
    {
      return v20;
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

    v24 = v64;
    if (v64)
    {
      v25 = v65;
      v26 = v64;
      if (v65 == v64)
      {
        goto LABEL_88;
      }

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
LABEL_87:
      v26 = v64;
LABEL_88:
      v65 = v24;
      operator delete(v26);
    }

LABEL_89:
    if (v62 != &v63)
    {
      free(v62);
    }

    return v20;
  }

  v54 = *(this + 4);
  if (!v54)
  {
    v55 = "'mps.conv_2d_data_gradient' op requires attribute 'dilation_rates'";
    v57 = 259;
    mlir::emitError(a2.var0.var0, &v55, &Value);
    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v69 != 1)
    {
      return v20;
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

    v24 = v64;
    if (v64)
    {
      v32 = v65;
      v26 = v64;
      if (v65 == v64)
      {
        goto LABEL_88;
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

      while (v32 != v24);
      goto LABEL_87;
    }

    goto LABEL_89;
  }

  v53 = *(this + 5);
  if (!v53)
  {
    v55 = "'mps.conv_2d_data_gradient' op requires attribute 'explicit_padding'";
    v57 = 259;
    mlir::emitError(a2.var0.var0, &v55, &Value);
    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v69 != 1)
    {
      return v20;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v35 = __p;
    if (__p)
    {
      v36 = v67;
      v37 = __p;
      if (v67 != __p)
      {
        do
        {
          v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
        }

        while (v36 != v35);
        v37 = __p;
      }

      v67 = v35;
      operator delete(v37);
    }

    v24 = v64;
    if (v64)
    {
      v38 = v65;
      v26 = v64;
      if (v65 == v64)
      {
        goto LABEL_88;
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

      while (v38 != v24);
      goto LABEL_87;
    }

    goto LABEL_89;
  }

  v3 = *(this + 6);
  if (!v3)
  {
    v55 = "'mps.conv_2d_data_gradient' op requires attribute 'groups'";
    v57 = 259;
    mlir::emitError(a2.var0.var0, &v55, &Value);
    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v69 != 1)
    {
      return v20;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v41 = __p;
    if (__p)
    {
      v42 = v67;
      v43 = __p;
      if (v67 != __p)
      {
        do
        {
          v42 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v42 - 1);
        }

        while (v42 != v41);
        v43 = __p;
      }

      v67 = v41;
      operator delete(v43);
    }

    v24 = v64;
    if (v64)
    {
      v44 = v65;
      v26 = v64;
      if (v65 == v64)
      {
        goto LABEL_88;
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

      while (v44 != v24);
      goto LABEL_87;
    }

    goto LABEL_89;
  }

  if (*(this + 7))
  {
    v52 = *(this + 8);
    if (v52)
    {
      if (*(this + 9))
      {
        v55 = v3;
        Value = mlir::AffineMapAttr::getValue(&v55);
        if (mlir::Type::isUnsignedInteger(&Value, 64))
        {
          v55 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v52);
          v56 = v4;
          v49[0] = mlir::ElementsAttr::getType(&v55);
          Value = llvm::cast<mlir::ShapedType,mlir::Type>(v49);
          v61 = v5;
          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&Value);
          Type = 4;
          if (v7 == 1 && *ArgAttrsAttr == Type && (v50 = v52, *&v58 = mlir::ArrayAttr::getValue(&v50), *(&v58 + 1) = v8, isSplat = mlir::ElementsAttr::isSplat(&v58), mlir::Type::isUnsignedInteger(&isSplat, 64)))
          {
            v55 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v54);
            v56 = v9;
            v49[0] = mlir::ElementsAttr::getType(&v55);
            Value = llvm::cast<mlir::ShapedType,mlir::Type>(v49);
            v61 = v10;
            v11 = mlir::CallableOpInterface::getArgAttrsAttr(&Value);
            Type = 4;
            if (v12 == 1 && *v11 == Type && (v50 = v54, *&v58 = mlir::ArrayAttr::getValue(&v50), *(&v58 + 1) = v13, isSplat = mlir::ElementsAttr::isSplat(&v58), mlir::Type::isUnsignedInteger(&isSplat, 64)))
            {
              v55 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v53);
              v56 = v14;
              Type = mlir::ElementsAttr::getType(&v55);
              Value = llvm::cast<mlir::ShapedType,mlir::Type>(&Type);
              v61 = v15;
              v16 = mlir::CallableOpInterface::getArgAttrsAttr(&Value);
              v58 = xmmword_1E097BBD0;
              if (v17 == 2 && *v16 == v58 && v16[1] == *(&v58 + 1))
              {
                v50 = v53;
                v49[0] = mlir::ArrayAttr::getValue(&v50);
                v49[1] = v19;
                isSplat = mlir::ElementsAttr::isSplat(v49);
                if (mlir::Type::isUnsignedInteger(&isSplat, 64))
                {
                  return 1;
                }
              }

              v47 = "'mps.conv_2d_data_gradient' op attribute 'explicit_padding' failed to satisfy constraint: ui64 elements attribute of shape {4, 2}";
            }

            else
            {
              v47 = "'mps.conv_2d_data_gradient' op attribute 'dilation_rates' failed to satisfy constraint: ui64 elements attribute of shape {4}";
            }
          }

          else
          {
            v47 = "'mps.conv_2d_data_gradient' op attribute 'strides' failed to satisfy constraint: ui64 elements attribute of shape {4}";
          }
        }

        else
        {
          v47 = "'mps.conv_2d_data_gradient' op attribute 'groups' failed to satisfy constraint: 64-bit unsigned integer attribute";
        }
      }

      else
      {
        v47 = "'mps.conv_2d_data_gradient' op requires attribute 'weights_layout'";
      }
    }

    else
    {
      v47 = "'mps.conv_2d_data_gradient' op requires attribute 'strides'";
    }

    v55 = v47;
    v57 = 259;
    mlir::emitError(a2.var0.var0, &v55, &Value);
    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&Value);
    return v20;
  }

  v55 = "'mps.conv_2d_data_gradient' op requires attribute 'padding_style'";
  v57 = 259;
  mlir::emitError(a2.var0.var0, &v55, &Value);
  v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
  if (Value)
  {
    mlir::InFlightDiagnostic::report(&Value);
  }

  if (v69 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v61);
  }

  return v20;
}

uint64_t mlir::mps::Conv2DWeightsGradientOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, AttributeStorage *a3, uint64_t a4, unint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v147[4] = *MEMORY[0x1E69E9840];
  v124 = a4;
  v125 = a5;
  if (a7)
  {
    v16 = *a7;
    v17 = a7[1];
    v18 = a7[2];
    v19 = *(a7 + 6);
  }

  else
  {
    v19 = 0;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
  }

  v113 = a6;
  v114[0] = 0;
  v115 = 0;
  v116 = v16;
  v117 = v17;
  v118 = v18;
  v119 = v19;
  v120 = a9;
  v20 = a5;
  v121 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v113);
    if (v115 == 1)
    {
      v115 = 0;
    }

    mlir::OperationName::OperationName(v114, "mps.conv_2d_weights_gradient", 28, Context);
    v115 = 1;
    v20 = v125;
  }

  v122 = a4;
  v123 = a5;
  if (v20 < 3 || (v22.var0.var0 = mlir::UnknownLoc::get(this, a2), !mlir::mps::Conv2DWeightsGradientOpAdaptor::verify(&v113, v22)))
  {
    v37 = mlir::Float32Type::get(this, a2);
LABEL_50:
    v60 = mlir::UnrankedTensorType::get(v37);
    goto LABEL_51;
  }

  v23 = mlir::ValueRange::dereference_iterator(&v124, 0);
  v24 = mlir::ValueRange::dereference_iterator(&v124, 1);
  v25 = mlir::ValueRange::dereference_iterator(&v124, 2);
  v103 = *(&v116 + 1);
  v104 = v25;
  v101 = *(&v117 + 1);
  v102 = v117;
  v98 = v118;
  v99 = v116;
  v100 = *(&v118 + 1);
  v97 = v119;
  v26 = (*(v23 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v26)
  {
    goto LABEL_24;
  }

  v27 = v26->i64[0];
  {
    v28 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v29 = *(v27 + 8);
    v30 = *(v27 + 16);
    if (!v30)
    {
      goto LABEL_24;
    }
  }

  else
  {
    mlir::arith::ExtUIOp::fold();
    v28 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v29 = *(v27 + 8);
    v30 = *(v27 + 16);
    if (!v30)
    {
      goto LABEL_24;
    }
  }

  v31 = v29;
  v32 = v30;
  do
  {
    v33 = v32 >> 1;
    v34 = &v31[2 * (v32 >> 1)];
    v36 = *v34;
    v35 = v34 + 2;
    v32 += ~(v32 >> 1);
    if (v36 < v28)
    {
      v31 = v35;
    }

    else
    {
      v32 = v33;
    }
  }

  while (v32);
  if (v31 == &v29[2 * v30] || *v31 != v28)
  {
LABEL_24:
    v38 = 0;
    v39 = (*(v24 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!v39)
    {
      goto LABEL_39;
    }

    goto LABEL_25;
  }

  v38 = v31[1];
  v39 = (*(v24 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v39)
  {
    goto LABEL_39;
  }

LABEL_25:
  v40 = *v39;
  {
    v41 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v42 = *(v40 + 8);
    v43 = *(v40 + 16);
    if (!v43)
    {
      goto LABEL_39;
    }
  }

  else
  {
    mlir::arith::ExtUIOp::fold();
    v41 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v42 = *(v40 + 8);
    v43 = *(v40 + 16);
    if (!v43)
    {
      goto LABEL_39;
    }
  }

  v44 = v42;
  v45 = v43;
  do
  {
    v46 = v45 >> 1;
    v47 = &v44[2 * (v45 >> 1)];
    v49 = *v47;
    v48 = v47 + 2;
    v45 += ~(v45 >> 1);
    if (v49 < v41)
    {
      v44 = v48;
    }

    else
    {
      v45 = v46;
    }
  }

  while (v45);
  if (v44 != &v42[2 * v43] && *v44 == v41)
  {
    v50 = v44[1];
    goto LABEL_40;
  }

LABEL_39:
  v50 = 0;
LABEL_40:
  *&v112 = v26;
  *(&v112 + 1) = v38;
  v111[0] = v39;
  v111[1] = v50;
  v110 = v112;
  v145 = v26;
  v146 = v39;
  mlir::ValueRange::ValueRange(&v131, &v145, 2uLL);
  if (!v26 || !mlir::CallOpInterface::getArgOperands(&v110) || !v111[0] || (mlir::CallOpInterface::getArgOperands(v111) & 1) == 0)
  {
    v37 = v51;
    goto LABEL_50;
  }

  v145 = v147;
  v146 = 0x400000000;
  if (!v104)
  {
    v108 = v103;
    v109 = v100;
    v106 = v101;
    v107 = v102;
    v65 = v144;
    v142 = v144;
    memset(v144, 0, sizeof(v144));
    v143 = 0x400000004;
    if (v110)
    {
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v110);
      if (v67 != 4)
      {
        v71.var0.var0 = a3;
        v69 = mlir::emitOptionalError<char const(&)[66]>(a2, v71, "Conv2DDataGradientOp input should be rank 4");
        v60 = 0;
LABEL_109:
        v76 = v142;
        goto LABEL_110;
      }

      v68 = ArgAttrsAttr;
    }

    else
    {
      v68 = v144;
    }

    v140[0] = v141;
    v140[1] = 0x400000000;
    v138[0] = v139;
    v138[1] = 0x400000000;
    v136[0] = v137;
    v136[1] = 0x200000000;
    v134[0] = v135;
    v134[1] = 0x200000000;
    if (v99)
    {
      v70 = *(v99 + 8);
    }

    else
    {
      v70 = 1;
    }

    v78 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v109);
    v80 = v79;
    v81 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v108);
    v83 = v82;
    v84 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v107);
    if (mlir::mps::inferConv2DParams(a2, a3, v68, 4, v78, v80, v81, v83, v84, v85, v70, v140, v138, v136, v134))
    {
      if (v106)
      {
        UInt = mlir::IntegerAttr::getUInt(&v106);
      }

      else
      {
        UInt = 1;
      }

      if (v97)
      {
        v87 = *(v97 + 8);
      }

      else
      {
        v87 = 3;
      }

      if (v98)
      {
        v88 = *(v98 + 8);
      }

      else
      {
        v88 = 2;
      }

      v105[0] = mlir::CallableOpInterface::getArgAttrsAttr(v111);
      v105[1] = v89;
      if (v89 == 4)
      {
        mlir::mps::ShapeWithLayout::ShapeWithLayout(&v131, v105, v87);
        v128 = v130;
        v129 = 0x400000000;
        mlir::mps::ShapeWithLayout::ShapeWithLayout(v126, &v131);
        if (v126[0] != &v127)
        {
          free(v126[0]);
        }

        if (v69)
        {
          v60 = mlir::RankedTensorType::get(v128, v129, v51, 0);
        }

        else
        {
          v60 = 0;
        }

        v65 = v144;
        if (v128 != v130)
        {
          v94 = v60;
          free(v128);
          v60 = v94;
        }

        if (v131 != v133)
        {
          v95 = v60;
          free(v131);
          v60 = v95;
        }

        goto LABEL_101;
      }

      v90.var0.var0 = a3;
      v69 = mlir::emitOptionalError<char const(&)[66]>(a2, v90, "Conv2dGradient weights should be rank 4");
      v60 = 0;
    }

    else
    {
      v60 = 0;
      v69 = 0;
    }

    v65 = v144;
LABEL_101:
    v91 = v60;
    if (v134[0] != v135)
    {
      free(v134[0]);
      v60 = v91;
    }

    if (v136[0] != v137)
    {
      free(v136[0]);
      v60 = v91;
    }

    if (v138[0] != v139)
    {
      free(v138[0]);
      v60 = v91;
    }

    if (v140[0] != v141)
    {
      free(v140[0]);
      v60 = v91;
    }

    goto LABEL_109;
  }

  if ((mlir::matchConstantWithIntVector<long long>(v104, &v145) & 1) == 0)
  {
    v60 = mlir::UnrankedTensorType::get(v51);
    v69 = 1;
    goto LABEL_112;
  }

  v52 = v146;
  if (!v146)
  {
    goto LABEL_74;
  }

  v53 = v145;
  v54 = (v146 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  v55 = v145;
  if (v54 >= 3)
  {
    v56 = v54 + 1;
    v55 = &v145->i64[v56 & 0x3FFFFFFFFFFFFFFCLL];
    v57 = v145 + 1;
    v58.i64[0] = -1;
    v58.i64[1] = -1;
    v59 = v56 & 0x3FFFFFFFFFFFFFFCLL;
    while (1)
    {
      v63 = vmovn_s64(vceqq_s64(v57[-1], v58));
      if (v63.i8[0])
      {
        v57[-1].i64[0] = 0x8000000000000000;
        if ((v63.i8[4] & 1) == 0)
        {
          goto LABEL_57;
        }
      }

      else if ((v63.i8[4] & 1) == 0)
      {
LABEL_57:
        v64 = vmovn_s64(vceqq_s64(*v57, v58));
        if (v64.i8[0])
        {
          goto LABEL_58;
        }

        goto LABEL_62;
      }

      v57[-1].i64[1] = 0x8000000000000000;
      v64 = vmovn_s64(vceqq_s64(*v57, v58));
      if (v64.i8[0])
      {
LABEL_58:
        v57->i64[0] = 0x8000000000000000;
        if (v64.i8[4])
        {
          goto LABEL_63;
        }

        goto LABEL_54;
      }

LABEL_62:
      if (v64.i8[4])
      {
LABEL_63:
        v57->i64[1] = 0x8000000000000000;
      }

LABEL_54:
      v57 += 2;
      v59 -= 4;
      if (!v59)
      {
        if (v56 == (v56 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_74;
        }

        break;
      }
    }
  }

  v77 = &v53->i8[8 * v52];
  do
  {
    if (*v55 == -1)
    {
      *v55 = 0x8000000000000000;
    }

    ++v55;
  }

  while (v55 != v77);
LABEL_74:
  v72 = mlir::CallableOpInterface::getArgAttrsAttr(&v112);
  v74 = v73;
  v65 = v133;
  v131 = v133;
  v132 = 0x400000000;
  v75.var0.var0 = a3;
  if (v69)
  {
    v60 = mlir::RankedTensorType::get(v131, v132, v51, 0);
  }

  else
  {
    v60 = 0;
  }

  v76 = v131;
LABEL_110:
  if (v76 != v65)
  {
    v92 = v60;
    free(v76);
    v60 = v92;
  }

LABEL_112:
  if (v145 != v147)
  {
    v93 = v60;
    free(v145);
    v60 = v93;
  }

  if ((v69 & 1) == 0)
  {
    return 0;
  }

LABEL_51:
  v61 = *(a11 + 8);
  if (v61 >= *(a11 + 12))
  {
    v96 = v60;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v61 + 1, 8);
    v60 = v96;
    v61 = *(a11 + 8);
  }

  *(*a11 + 8 * v61) = v60;
  ++*(a11 + 8);
  return 1;
}

BOOL mlir::mps::Conv2DWeightsGradientOpAdaptor::verify(mlir::mps::Conv2DWeightsGradientOpAdaptor *this, Location a2)
{
  v70 = *MEMORY[0x1E69E9840];
  if (!*(this + 3))
  {
    v55 = "'mps.conv_2d_weights_gradient' op requires attribute 'data_layout'";
    v57 = 259;
    mlir::emitError(a2.var0.var0, &v55, &Value);
    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v69 != 1)
    {
      return v20;
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

    v24 = v64;
    if (v64)
    {
      v25 = v65;
      v26 = v64;
      if (v65 == v64)
      {
        goto LABEL_88;
      }

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
LABEL_87:
      v26 = v64;
LABEL_88:
      v65 = v24;
      operator delete(v26);
    }

LABEL_89:
    if (v62 != &v63)
    {
      free(v62);
    }

    return v20;
  }

  v54 = *(this + 4);
  if (!v54)
  {
    v55 = "'mps.conv_2d_weights_gradient' op requires attribute 'dilation_rates'";
    v57 = 259;
    mlir::emitError(a2.var0.var0, &v55, &Value);
    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v69 != 1)
    {
      return v20;
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

    v24 = v64;
    if (v64)
    {
      v32 = v65;
      v26 = v64;
      if (v65 == v64)
      {
        goto LABEL_88;
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

      while (v32 != v24);
      goto LABEL_87;
    }

    goto LABEL_89;
  }

  v53 = *(this + 5);
  if (!v53)
  {
    v55 = "'mps.conv_2d_weights_gradient' op requires attribute 'explicit_padding'";
    v57 = 259;
    mlir::emitError(a2.var0.var0, &v55, &Value);
    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v69 != 1)
    {
      return v20;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v35 = __p;
    if (__p)
    {
      v36 = v67;
      v37 = __p;
      if (v67 != __p)
      {
        do
        {
          v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
        }

        while (v36 != v35);
        v37 = __p;
      }

      v67 = v35;
      operator delete(v37);
    }

    v24 = v64;
    if (v64)
    {
      v38 = v65;
      v26 = v64;
      if (v65 == v64)
      {
        goto LABEL_88;
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

      while (v38 != v24);
      goto LABEL_87;
    }

    goto LABEL_89;
  }

  v3 = *(this + 6);
  if (!v3)
  {
    v55 = "'mps.conv_2d_weights_gradient' op requires attribute 'groups'";
    v57 = 259;
    mlir::emitError(a2.var0.var0, &v55, &Value);
    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v69 != 1)
    {
      return v20;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v41 = __p;
    if (__p)
    {
      v42 = v67;
      v43 = __p;
      if (v67 != __p)
      {
        do
        {
          v42 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v42 - 1);
        }

        while (v42 != v41);
        v43 = __p;
      }

      v67 = v41;
      operator delete(v43);
    }

    v24 = v64;
    if (v64)
    {
      v44 = v65;
      v26 = v64;
      if (v65 == v64)
      {
        goto LABEL_88;
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

      while (v44 != v24);
      goto LABEL_87;
    }

    goto LABEL_89;
  }

  if (*(this + 7))
  {
    v52 = *(this + 8);
    if (v52)
    {
      if (*(this + 9))
      {
        v55 = v3;
        Value = mlir::AffineMapAttr::getValue(&v55);
        if (mlir::Type::isUnsignedInteger(&Value, 64))
        {
          v55 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v52);
          v56 = v4;
          v49[0] = mlir::ElementsAttr::getType(&v55);
          Value = llvm::cast<mlir::ShapedType,mlir::Type>(v49);
          v61 = v5;
          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&Value);
          Type = 4;
          if (v7 == 1 && *ArgAttrsAttr == Type && (v50 = v52, *&v58 = mlir::ArrayAttr::getValue(&v50), *(&v58 + 1) = v8, isSplat = mlir::ElementsAttr::isSplat(&v58), mlir::Type::isUnsignedInteger(&isSplat, 64)))
          {
            v55 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v54);
            v56 = v9;
            v49[0] = mlir::ElementsAttr::getType(&v55);
            Value = llvm::cast<mlir::ShapedType,mlir::Type>(v49);
            v61 = v10;
            v11 = mlir::CallableOpInterface::getArgAttrsAttr(&Value);
            Type = 4;
            if (v12 == 1 && *v11 == Type && (v50 = v54, *&v58 = mlir::ArrayAttr::getValue(&v50), *(&v58 + 1) = v13, isSplat = mlir::ElementsAttr::isSplat(&v58), mlir::Type::isUnsignedInteger(&isSplat, 64)))
            {
              v55 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v53);
              v56 = v14;
              Type = mlir::ElementsAttr::getType(&v55);
              Value = llvm::cast<mlir::ShapedType,mlir::Type>(&Type);
              v61 = v15;
              v16 = mlir::CallableOpInterface::getArgAttrsAttr(&Value);
              v58 = xmmword_1E097BBD0;
              if (v17 == 2 && *v16 == v58 && v16[1] == *(&v58 + 1))
              {
                v50 = v53;
                v49[0] = mlir::ArrayAttr::getValue(&v50);
                v49[1] = v19;
                isSplat = mlir::ElementsAttr::isSplat(v49);
                if (mlir::Type::isUnsignedInteger(&isSplat, 64))
                {
                  return 1;
                }
              }

              v47 = "'mps.conv_2d_weights_gradient' op attribute 'explicit_padding' failed to satisfy constraint: ui64 elements attribute of shape {4, 2}";
            }

            else
            {
              v47 = "'mps.conv_2d_weights_gradient' op attribute 'dilation_rates' failed to satisfy constraint: ui64 elements attribute of shape {4}";
            }
          }

          else
          {
            v47 = "'mps.conv_2d_weights_gradient' op attribute 'strides' failed to satisfy constraint: ui64 elements attribute of shape {4}";
          }
        }

        else
        {
          v47 = "'mps.conv_2d_weights_gradient' op attribute 'groups' failed to satisfy constraint: 64-bit unsigned integer attribute";
        }
      }

      else
      {
        v47 = "'mps.conv_2d_weights_gradient' op requires attribute 'weights_layout'";
      }
    }

    else
    {
      v47 = "'mps.conv_2d_weights_gradient' op requires attribute 'strides'";
    }

    v55 = v47;
    v57 = 259;
    mlir::emitError(a2.var0.var0, &v55, &Value);
    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&Value);
    return v20;
  }

  v55 = "'mps.conv_2d_weights_gradient' op requires attribute 'padding_style'";
  v57 = 259;
  mlir::emitError(a2.var0.var0, &v55, &Value);
  v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
  if (Value)
  {
    mlir::InFlightDiagnostic::report(&Value);
  }

  if (v69 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v61);
  }

  return v20;
}

void mlir::mps::getSpatialPaddingValues(uint64_t a1@<X0>, int a2@<W2>, unint64_t *a3@<X8>)
{
  v4 = (a3 + 2);
  v5 = 48;
  v6 = 64;
  if (a2 != 7)
  {
    v6 = 48;
  }

  v7 = 56;
  v8 = 72;
  if (a2 != 7)
  {
    v8 = 56;
  }

  v9 = 32;
  *a3 = v4;
  if (a2 != 7)
  {
    v5 = 32;
    v7 = 40;
    v9 = 16;
  }

  v10 = *(a1 + v6);
  v11 = *(a1 + v8);
  if (a2 == 7)
  {
    v12 = 40;
  }

  else
  {
    v12 = 24;
  }

  v13 = *(a1 + v5);
  v14 = *(a1 + v7);
  a3[1] = 0x500000000;
  v15 = *(a1 + v9);
  v16 = *(a1 + v12);
  llvm::SmallVectorBase<unsigned int>::grow_pod(a3, v4, 6uLL, 8);
  v17 = (*a3 + 8 * *(a3 + 2));
  *v17 = v10;
  v17[1] = v11;
  v17[2] = v13;
  v17[3] = v14;
  v17[4] = v15;
  v17[5] = v16;
  *(a3 + 2) += 6;
}

void mlir::mps::computeSpatialPaddings(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X4>, uint64_t *a5@<X6>, uint64_t a6@<X8>, void *__src, unint64_t a8, int a9)
{
  if (a9 <= 1)
  {
    v10 = a6 + 16;
    if (!a9)
    {
      *a6 = v10;
      *(a6 + 8) = 0x600000000;
      v11 = (8 * a8) >> 3;
      if (v11 < 7)
      {
        v12 = 0;
        v13 = 8 * a8;
        if (!a8)
        {
LABEL_24:
          *(a6 + 8) = v12 + (v13 >> 3);
          return;
        }
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a6, v10, v11, 8);
        v12 = *(a6 + 8);
        v13 = 8 * a8;
        if (!a8)
        {
          goto LABEL_24;
        }
      }

      memcpy((*a6 + 8 * v12), __src, v13);
      v12 = *(a6 + 8);
      goto LABEL_24;
    }

    *a6 = v10;
    *(a6 + 12) = 6;
    if (a8 < 7)
    {
      if (!a8)
      {
LABEL_28:
        *(a6 + 8) = a8;
        return;
      }

      v20 = (a6 + 16);
      v21 = 8 * a8;
    }

    else
    {
      *(a6 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a6, v10, a8, 8);
      v20 = *a6;
      v21 = 8 * a8;
    }

    bzero(v20, v21);
    goto LABEL_28;
  }

  v19 = (a6 + 16);
  *a6 = a6 + 16;
  *(a6 + 12) = 6;
  if (a8 < 7)
  {
    if (!a8)
    {
      goto LABEL_12;
    }
  }

  else
  {
    *(a6 + 8) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a6, a6 + 16, a8, 8);
    v19 = *a6;
  }

  bzero(v19, 8 * a8);
LABEL_12:
  *(a6 + 8) = a8;
  if (a2)
  {
    v22 = 8 * a2;
    for (i = a1; *i; ++i)
    {
      v22 -= 8;
      if (!v22)
      {
        v24 = v19 + 1;
        do
        {
          v26 = *a3++;
          v25 = v26;
          v27 = *a5++;
          v28 = (v25 - 1) * v27;
          v30 = *a1++;
          v29 = v30;
          v32 = *a4++;
          v31 = v32;
          v33 = v29 % v32;
          if (!v33)
          {
            v33 = v31;
          }

          v34 = (v28 - v33 + 1) & ~((v28 - v33 + 1) >> 63);
          v35 = v34 >> 1;
          v36 = v34 - (v34 >> 1);
          *(v24 - 1) = v35;
          *v24 = v36;
          if (a9 == 4)
          {
            *(v24 - 1) = v36;
            *v24 = v35;
          }

          v24 += 2;
          --a2;
        }

        while (a2);
        return;
      }
    }
  }
}

void mlir::mps::computeConvResultSpatialShape(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X4>, void *a5@<X6>, void *a6@<X8>, uint64_t a7)
{
  v7 = a2;
  *a6 = a6 + 2;
  a6[1] = 0x300000000;
  if (!a2)
  {
    return;
  }

  if (a2 < 4)
  {
    v13 = 0;
    v14 = a7;
    v15 = a2;
    goto LABEL_6;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(a6, (a6 + 2), a2, 8);
  v13 = *(a6 + 2);
  v14 = a7;
  v15 = v7 - v13;
  if (v7 != v13)
  {
LABEL_6:
    bzero((*a6 + 8 * v13), 8 * v15);
  }

  *(a6 + 2) = v7;
  v16 = *a6;
  v17 = (v14 + 8);
  do
  {
    v19 = *a3++;
    v18 = v19;
    v21 = *a1++;
    v20 = v21;
    v22 = v21 == 0x8000000000000000 || v18 == 0x8000000000000000;
    v23 = 0x8000000000000000;
    if (!v22)
    {
      v23 = (*(v17 - 1) + v20 + *v17 + *a4 + ~(*a5 * (v18 - 1))) / *a4;
    }

    *v16++ = v23;
    v17 += 2;
    ++a5;
    ++a4;
    --v7;
  }

  while (v7);
}

void mlir::mps::convertNCDHWShapeToLayout(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (a3 != 7)
  {
    v11 = a1[4];
    v12 = a1[1];
    v13 = *(a1 + 1);
    *(a4 + 16) = *a1;
    *a4 = a4 + 16;
    *(a4 + 24) = v13;
    *(a4 + 40) = v11;
    *(a4 + 48) = v12;
    *(a4 + 8) = 0x500000005;
    return;
  }

  *a4 = a4 + 16;
  *(a4 + 8) = 0x500000000;
  v6 = (8 * a2) >> 3;
  if (v6 >= 6)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 16, v6, 8);
    v8 = a2;
    v9 = *(a4 + 8);
    v10 = 8 * a2;
    if (!v8)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v9 = 0;
  v10 = 8 * a2;
  if (a2)
  {
LABEL_7:
    memcpy((*a4 + 8 * v9), a1, v10);
    v9 = *(a4 + 8);
  }

LABEL_8:
  *(a4 + 8) = v9 + (v10 >> 3);
}

uint64_t mlir::mps::Conv3DOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, uint64_t a4, unint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v124 = *MEMORY[0x1E69E9840];
  v122 = a4;
  v123 = a5;
  if (a7)
  {
    v14 = *a7;
    v15 = a7[1];
    v16 = a7[2];
    v17 = *(a7 + 6);
  }

  else
  {
    v17 = 0;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
  }

  v111 = a6;
  v112[0] = 0;
  v113 = 0;
  v114 = v14;
  v115 = v15;
  v116 = v16;
  v117 = v17;
  v118 = a9;
  v18 = a5;
  v119 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v111);
    if (v113 == 1)
    {
      v113 = 0;
    }

    mlir::OperationName::OperationName(v112, "mps.conv_3d", 11, Context);
    v113 = 1;
    v18 = v123;
  }

  v120 = a4;
  v121 = a5;
  if (v18 < 2 || (v20.var0.var0 = mlir::UnknownLoc::get(this, a2), !mlir::mps::Conv3DOpAdaptor::verify(&v111, v20)))
  {
    v71 = mlir::Float32Type::get(this, a2);
    v72 = mlir::UnrankedTensorType::get(v71);
    v73 = *(a11 + 8);
    if (v73 >= *(a11 + 12))
    {
LABEL_51:
      v75 = v72;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v73 + 1, 8);
      v72 = v75;
      LODWORD(v73) = *(a11 + 8);
    }

LABEL_48:
    *(*a11 + 8 * v73) = v72;
    ++*(a11 + 8);
    return 1;
  }

  v21 = mlir::ValueRange::dereference_iterator(&v122, 0);
  v22 = mlir::ValueRange::dereference_iterator(&v122, 1);
  v23 = *(v22 + 8) & 0xFFFFFFFFFFFFFFF8;
  v84 = (*(v21 + 8) & 0xFFFFFFFFFFFFFFF8);
  v85 = v23;
  mlir::ValueRange::ValueRange(&v90, &v84, 2uLL);
  v77[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v21 + 8) & 0xFFFFFFFFFFFFFFF8));
  v77[1] = v25;
  v76[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v22 + 8) & 0xFFFFFFFFFFFFFFF8));
  v76[1] = v26;
  if (!v77[0] || !mlir::CallOpInterface::getArgOperands(v77) || (mlir::CallableOpInterface::getArgAttrsAttr(v77), v27 < 5) || !v76[0] || !mlir::CallOpInterface::getArgOperands(v76) || (mlir::CallableOpInterface::getArgAttrsAttr(v76), v28 != 5))
  {
    v72 = mlir::UnrankedTensorType::get(v24);
    v73 = *(a11 + 8);
    if (v73 >= *(a11 + 12))
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v77);
  v30 = *(v114 + 8) - 7;
  v32 = ArgAttrsAttr + 8 * v31;
  v33 = *(v32 + qword_1E0998C20[v30]);
  v34 = *(v32 + qword_1E0998C40[v30]);
  v35 = *(v32 + qword_1E0998C60[v30]);
  v108 = v110;
  v110[0] = v33;
  v110[1] = v34;
  v110[2] = v35;
  *v109 = 0x300000003;
  v36 = mlir::CallableOpInterface::getArgAttrsAttr(v76);
  v37 = *(v117 + 8) - 7;
  v39 = v36 + 8 * v38;
  v40 = *(v39 + qword_1E0998C20[v37]);
  v41 = *(v39 + qword_1E0998C40[v37]);
  v42 = *(v39 + qword_1E0998C60[v37]);
  v105 = v107;
  v107[0] = v40;
  v107[1] = v41;
  v107[2] = v42;
  *v106 = 0x300000003;
  v102 = v104;
  v103 = 0x500000000;
  v90 = *(&v116 + 1);
  v43 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v90);
  mlir::getIntValues<long long>(v43, v44, &v102, 1);
  v45 = *(v114 + 8) - 7;
  v46 = v102 + 8 * v103;
  v47 = *&v46[qword_1E0998C20[v45]];
  v48 = *&v46[qword_1E0998C40[v45]];
  v49 = *&v46[qword_1E0998C60[v45]];
  v99 = v101;
  v101[0] = v47;
  v101[1] = v48;
  v101[2] = v49;
  *v100 = 0x300000003;
  v96 = v98;
  v97 = 0x500000000;
  v90 = *(&v114 + 1);
  v50 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v90);
  mlir::getIntValues<long long>(v50, v51, &v96, 1);
  v52 = *(v114 + 8) - 7;
  v53 = v96 + 8 * v97;
  v54 = *&v53[qword_1E0998C20[v52]];
  v55 = *&v53[qword_1E0998C40[v52]];
  v56 = *&v53[qword_1E0998C60[v52]];
  v93 = v95;
  v95[0] = v54;
  v95[1] = v55;
  v95[2] = v56;
  *v94 = 0x300000003;
  v90 = v92;
  v91 = 0xA00000000;
  v84 = v115;
  v57 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v84);
  mlir::getIntValues<long long>(v57, v58, &v90, 1);
  mlir::mps::getSpatialPaddingValues(v90, *(v114 + 8), &__src);
  mlir::mps::computeSpatialPaddings(v108, v109[0], v105, v99, v93, &v84, __src, v88, *(v116 + 8));
  llvm::SmallVectorImpl<unsigned long long>::operator=(&__src, &v84);
  if (v84 != v86)
  {
    free(v84);
  }

  mlir::mps::computeConvResultSpatialShape(v108, v109[0], v105, v99, v93, &v82, __src);
  v59 = mlir::CallableOpInterface::getArgAttrsAttr(v77);
  v61 = *(v59 + 8 * v60 - 40);
  v62 = mlir::CallableOpInterface::getArgAttrsAttr(v76);
  v64 = -40;
  if (*(v117 + 8) == 10)
  {
    v64 = -8;
  }

  v65 = *(v62 + 8 * v63 + v64);
  v80[0] = v61;
  v80[1] = v65;
  v81[0] = *(v82 + 2);
  v81[1] = *(v82 + 1);
  v81[2] = *v82;
  llvm::SmallVector<long long,5u>::SmallVector<long long,void>(&v84, v80, 5);
  mlir::mps::convertNCDHWShapeToLayout(v84, v85, *(v114 + 8), v80);
  llvm::SmallVectorImpl<unsigned long long>::operator=(&v84, v80);
  if (v80[0] != v81)
  {
    free(v80[0]);
  }

  mlir::CallableOpInterface::getArgAttrsAttr(v77);
  if (v66 >= 6)
  {
    llvm::SmallVector<long long,5u>::SmallVector(v80, &v84);
    v67 = mlir::CallableOpInterface::getArgAttrsAttr(v77);
    v68 = mlir::CallableOpInterface::getArgAttrsAttr(v77);
    llvm::SmallVector<long long,5u>::SmallVector<long long const*,void>(v78, v67, (v68 + 8 * v69 - 40));
    llvm::SmallVectorImpl<unsigned long long>::operator=(&v84, v78);
    if (v78[0] != &v79)
    {
      free(v78[0]);
    }

    llvm::SmallVectorImpl<long long>::append(&v84, v80);
    if (v80[0] != v81)
    {
      free(v80[0]);
    }
  }

  v70 = mlir::RankedTensorType::get(v84, v85, v24, 0);
  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v70);
  if (v84 != v86)
  {
    free(v84);
  }

  if (v82 != &v83)
  {
    free(v82);
  }

  if (__src != &v89)
  {
    free(__src);
  }

  if (v90 != v92)
  {
    free(v90);
  }

  if (v93 != v95)
  {
    free(v93);
  }

  if (v96 != v98)
  {
    free(v96);
  }

  if (v99 != v101)
  {
    free(v99);
  }

  if (v102 != v104)
  {
    free(v102);
  }

  if (v105 != v107)
  {
    free(v105);
  }

  if (v108 != v110)
  {
    free(v108);
  }

  return 1;
}

BOOL mlir::mps::Conv3DOpAdaptor::verify(mlir::mps::Conv3DOpAdaptor *this, Location a2)
{
  v73 = *MEMORY[0x1E69E9840];
  v3 = *(this + 3);
  if (!v3)
  {
    v58 = "'mps.conv_3d' op requires attribute 'data_layout'";
    v60 = 259;
    mlir::emitError(a2.var0.var0, &v58, &Value);
    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v72 != 1)
    {
      return v22;
    }

    if (v71 != &v72)
    {
      free(v71);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v70;
      v25 = __p;
      if (v70 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v70 = v23;
      operator delete(v25);
    }

    v26 = v67;
    if (v67)
    {
      v27 = v68;
      v28 = v67;
      if (v68 == v67)
      {
        goto LABEL_92;
      }

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
LABEL_91:
      v28 = v67;
LABEL_92:
      v68 = v26;
      operator delete(v28);
    }

LABEL_93:
    if (v65 != &v66)
    {
      free(v65);
    }

    return v22;
  }

  v57 = *(this + 4);
  if (!v57)
  {
    v58 = "'mps.conv_3d' op requires attribute 'dilation_rates'";
    v60 = 259;
    mlir::emitError(a2.var0.var0, &v58, &Value);
    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v72 != 1)
    {
      return v22;
    }

    if (v71 != &v72)
    {
      free(v71);
    }

    v31 = __p;
    if (__p)
    {
      v32 = v70;
      v33 = __p;
      if (v70 != __p)
      {
        do
        {
          v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
        }

        while (v32 != v31);
        v33 = __p;
      }

      v70 = v31;
      operator delete(v33);
    }

    v26 = v67;
    if (v67)
    {
      v34 = v68;
      v28 = v67;
      if (v68 == v67)
      {
        goto LABEL_92;
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

      while (v34 != v26);
      goto LABEL_91;
    }

    goto LABEL_93;
  }

  v56 = *(this + 5);
  if (!v56)
  {
    v58 = "'mps.conv_3d' op requires attribute 'explicit_padding'";
    v60 = 259;
    mlir::emitError(a2.var0.var0, &v58, &Value);
    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v72 != 1)
    {
      return v22;
    }

    if (v71 != &v72)
    {
      free(v71);
    }

    v37 = __p;
    if (__p)
    {
      v38 = v70;
      v39 = __p;
      if (v70 != __p)
      {
        do
        {
          v38 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v38 - 1);
        }

        while (v38 != v37);
        v39 = __p;
      }

      v70 = v37;
      operator delete(v39);
    }

    v26 = v67;
    if (v67)
    {
      v40 = v68;
      v28 = v67;
      if (v68 == v67)
      {
        goto LABEL_92;
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

      while (v40 != v26);
      goto LABEL_91;
    }

    goto LABEL_93;
  }

  v4 = *(this + 6);
  if (!v4)
  {
    v58 = "'mps.conv_3d' op requires attribute 'groups'";
    v60 = 259;
    mlir::emitError(a2.var0.var0, &v58, &Value);
    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v72 != 1)
    {
      return v22;
    }

    if (v71 != &v72)
    {
      free(v71);
    }

    v43 = __p;
    if (__p)
    {
      v44 = v70;
      v45 = __p;
      if (v70 != __p)
      {
        do
        {
          v44 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v44 - 1);
        }

        while (v44 != v43);
        v45 = __p;
      }

      v70 = v43;
      operator delete(v45);
    }

    v26 = v67;
    if (v67)
    {
      v46 = v68;
      v28 = v67;
      if (v68 == v67)
      {
        goto LABEL_92;
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

      while (v46 != v26);
      goto LABEL_91;
    }

    goto LABEL_93;
  }

  if (*(this + 7))
  {
    v55 = *(this + 8);
    if (v55)
    {
      v5 = *(this + 9);
      if (v5)
      {
        v58 = v4;
        Value = mlir::AffineMapAttr::getValue(&v58);
        if (mlir::Type::isUnsignedInteger(&Value, 64))
        {
          v58 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v55);
          v59 = v6;
          v51[0] = mlir::ElementsAttr::getType(&v58);
          Value = llvm::cast<mlir::ShapedType,mlir::Type>(v51);
          v64 = v7;
          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&Value);
          Type = 5;
          if (v9 == 1 && *ArgAttrsAttr == Type && (isSplat = v55, llvm::all_of<mlir::DenseIntElementsAttr,mlir::mps::Conv3DDataGradientOpAdaptor::verify(mlir::Location)::$_0>(&isSplat)) && (v52 = v55, *&v61 = mlir::ArrayAttr::getValue(&v52), *(&v61 + 1) = v10, v53 = mlir::ElementsAttr::isSplat(&v61), mlir::Type::isUnsignedInteger(&v53, 64)))
          {
            v58 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v57);
            v59 = v11;
            v51[0] = mlir::ElementsAttr::getType(&v58);
            Value = llvm::cast<mlir::ShapedType,mlir::Type>(v51);
            v64 = v12;
            v13 = mlir::CallableOpInterface::getArgAttrsAttr(&Value);
            Type = 5;
            if (v14 == 1 && *v13 == Type && (isSplat = v57, llvm::all_of<mlir::DenseIntElementsAttr,mlir::mps::Conv3DDataGradientOpAdaptor::verify(mlir::Location)::$_0>(&isSplat)) && (v52 = v57, *&v61 = mlir::ArrayAttr::getValue(&v52), *(&v61 + 1) = v15, v53 = mlir::ElementsAttr::isSplat(&v61), mlir::Type::isUnsignedInteger(&v53, 64)))
            {
              v58 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v56);
              v59 = v16;
              Type = mlir::ElementsAttr::getType(&v58);
              Value = llvm::cast<mlir::ShapedType,mlir::Type>(&Type);
              v64 = v17;
              v18 = mlir::CallableOpInterface::getArgAttrsAttr(&Value);
              v61 = xmmword_1E0982930;
              if (v19 == 2 && (*v18 == v61 ? (v20 = v18[1] == *(&v61 + 1)) : (v20 = 0), v20 && (v53 = v56, v51[0] = mlir::ArrayAttr::getValue(&v53), v51[1] = v21, isSplat = mlir::ElementsAttr::isSplat(v51), mlir::Type::isUnsignedInteger(&isSplat, 64))))
              {
                if ((*(v3 + 8) - 7) >= 2)
                {
                  v49 = "'mps.conv_3d' op attribute 'data_layout' failed to satisfy constraint: valid TensorDataLayout is one of NDHWC or NCDHW";
                }

                else
                {
                  if ((*(v5 + 8) - 9) < 2)
                  {
                    return 1;
                  }

                  v49 = "'mps.conv_3d' op attribute 'weights_layout' failed to satisfy constraint: valid TensorDataLayout is one of DHWIO or OIDHW";
                }
              }

              else
              {
                v49 = "'mps.conv_3d' op attribute 'explicit_padding' failed to satisfy constraint: ui64 elements attribute of shape {5, 2}";
              }
            }

            else
            {
              v49 = "'mps.conv_3d' op attribute 'dilation_rates' failed to satisfy constraint: positive ui64 elements attribute of shape {5}";
            }
          }

          else
          {
            v49 = "'mps.conv_3d' op attribute 'strides' failed to satisfy constraint: positive ui64 elements attribute of shape {5}";
          }
        }

        else
        {
          v49 = "'mps.conv_3d' op attribute 'groups' failed to satisfy constraint: 64-bit unsigned integer attribute";
        }
      }

      else
      {
        v49 = "'mps.conv_3d' op requires attribute 'weights_layout'";
      }
    }

    else
    {
      v49 = "'mps.conv_3d' op requires attribute 'strides'";
    }

    v58 = v49;
    v60 = 259;
    mlir::emitError(a2.var0.var0, &v58, &Value);
    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&Value);
    return v22;
  }

  v58 = "'mps.conv_3d' op requires attribute 'padding_style'";
  v60 = 259;
  mlir::emitError(a2.var0.var0, &v58, &Value);
  v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
  if (Value)
  {
    mlir::InFlightDiagnostic::report(&Value);
  }

  if (v72 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v64);
  }

  return v22;
}

void *llvm::SmallVector<long long,5u>::SmallVector(void *result, uint64_t a2)
{
  v2 = result + 2;
  *result = result + 2;
  result[1] = 0x500000000;
  if (result != a2)
  {
    v3 = *(a2 + 8);
    if (v3)
    {
      if (v3 < 6)
      {
        v4 = result;
        v6 = *(a2 + 8);
      }

      else
      {
        v4 = result;
        v5 = a2;
        llvm::SmallVectorBase<unsigned int>::grow_pod(result, (result + 2), v3, 8);
        v6 = *(v5 + 8);
        if (!v6)
        {
LABEL_8:
          result = v4;
          *(v4 + 2) = v3;
          return result;
        }

        a2 = v5;
        v2 = *v4;
      }

      memcpy(v2, *a2, 8 * v6);
      goto LABEL_8;
    }
  }

  return result;
}

void llvm::SmallVectorImpl<long long>::append(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  if (v5 + v4 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v5 + v4, 8);
    LODWORD(v5) = *(a1 + 8);
  }

  if (v4)
  {
    memcpy((*a1 + 8 * v5), v3, 8 * v4);
    LODWORD(v5) = *(a1 + 8);
  }

  *(a1 + 8) = v5 + v4;
}

BOOL mlir::mps::verifyConvolutionInputChannels(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v35 = *MEMORY[0x1E69E9840];
  result = 1;
  if (a3 && a6)
  {
    v10 = -8;
    if (a4 == 7)
    {
      v10 = -32;
    }

    v11 = *(a2 + 8 * a3 + v10);
    if (v11 != 0x8000000000000000)
    {
      v12 = 8;
      if (a7 == 10)
      {
        v12 = 24;
      }

      v13 = *(a5 + v12);
      if (v13 != 0x8000000000000000 && v13 * a8 != v11)
      {
        v24 = "failed: inputChannels must be equal to groups * inputWeightChannels";
        v25 = 259;
        mlir::Operation::emitOpError(a1, &v24, v26);
        result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v26);
        v15 = result;
        if (v26[0])
        {
          mlir::InFlightDiagnostic::report(v26);
          result = v15;
        }

        if (v34 == 1)
        {
          if (v33 != &v34)
          {
            free(v33);
            result = v15;
          }

          v16 = __p;
          if (__p)
          {
            v17 = v32;
            v18 = __p;
            if (v32 != __p)
            {
              do
              {
                v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
              }

              while (v17 != v16);
              v18 = __p;
            }

            v32 = v16;
            operator delete(v18);
            result = v15;
          }

          v19 = v29;
          if (v29)
          {
            v20 = v30;
            v21 = v29;
            if (v30 != v29)
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
              v21 = v29;
            }

            v30 = v19;
            operator delete(v21);
            result = v15;
          }

          if (v27 != &v28)
          {
            free(v27);
            return v15;
          }
        }
      }
    }
  }

  return result;
}

BOOL mlir::mps::verifyConvolutionOutputChannels(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, unint64_t a8)
{
  v40 = *MEMORY[0x1E69E9840];
  result = 1;
  if (a3)
  {
    if (a6)
    {
      v10 = *(a5 + 32 * (a7 == 10));
      if (v10 != 0x8000000000000000)
      {
        v11 = -8;
        if (a4 == 7)
        {
          v11 = -32;
        }

        v12 = *(a2 + 8 * a3 + v11);
        if (v12 == 0x8000000000000000 || v10 == v12)
        {
          if (v10 % a8)
          {
            v29[0] = "failed: weights output channels needs to be divisible by groups";
            v30 = 259;
            mlir::Operation::emitOpError(a1, v29, v31);
            result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v31);
            v14 = result;
            if (v31[0])
            {
              mlir::InFlightDiagnostic::report(v31);
              result = v14;
            }

            if (v39 == 1)
            {
              if (v38 != &v39)
              {
                free(v38);
                result = v14;
              }

              v15 = __p;
              if (__p)
              {
                v16 = v37;
                v17 = __p;
                if (v37 != __p)
                {
                  do
                  {
                    v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
                  }

                  while (v16 != v15);
                  v17 = __p;
                }

                v37 = v15;
                operator delete(v17);
                result = v14;
              }

              v18 = v34;
              if (!v34)
              {
                goto LABEL_46;
              }

              v19 = v35;
              v20 = v34;
              if (v35 == v34)
              {
                goto LABEL_45;
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
              goto LABEL_44;
            }
          }
        }

        else
        {
          v29[0] = "failed: weights output channels are inconsistent with those of the operands or result";
          v30 = 259;
          mlir::Operation::emitOpError(a1, v29, v31);
          result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v31);
          v14 = result;
          if (v31[0])
          {
            mlir::InFlightDiagnostic::report(v31);
            result = v14;
          }

          if (v39 == 1)
          {
            if (v38 != &v39)
            {
              free(v38);
              result = v14;
            }

            v23 = __p;
            if (__p)
            {
              v24 = v37;
              v25 = __p;
              if (v37 != __p)
              {
                do
                {
                  v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
                }

                while (v24 != v23);
                v25 = __p;
              }

              v37 = v23;
              operator delete(v25);
              result = v14;
            }

            v18 = v34;
            if (!v34)
            {
              goto LABEL_46;
            }

            v26 = v35;
            v20 = v34;
            if (v35 == v34)
            {
LABEL_45:
              v35 = v18;
              operator delete(v20);
              result = v14;
LABEL_46:
              if (v32 != &v33)
              {
                free(v32);
                return v14;
              }

              return result;
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

            while (v26 != v18);
LABEL_44:
            v20 = v34;
            goto LABEL_45;
          }
        }
      }
    }
  }

  return result;
}

BOOL mlir::mps::Conv3DOp::verify(mlir::mps::Conv3DOp *this)
{
  v123[6] = *MEMORY[0x1E69E9840];
  v122[0] = v123;
  v122[1] = 0x600000000;
  v112 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
  v2 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v112);
  mlir::getIntValues<long long>(v2, v3, v122, 1);
  v4 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  v5 = *(*(v4 + 96) + 8);
  if (v5 != 3)
  {
    if (v5)
    {
      goto LABEL_29;
    }

    v6 = *v122[0];
    if (*(*(v4 + 64) + 8) == 7)
    {
      if (!v6 && !*(v122[0] + 1) && !*(v122[0] + 2))
      {
        v7 = 24;
        goto LABEL_12;
      }
    }

    else if (!v6 && !*(v122[0] + 1) && !*(v122[0] + 8))
    {
      v7 = 72;
LABEL_12:
      if (*(v122[0] + v7))
      {
        goto LABEL_13;
      }

LABEL_29:
      v110[0] = v111;
      v110[1] = 0x600000000;
      v112 = *(v4 + 104);
      v17 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v112);
      mlir::getIntValues<long long>(v17, v18, v110, 1);
      if (*v110[0] != 1)
      {
        goto LABEL_46;
      }

      v19 = *this + 64;
      v20 = (*(*this + 44) >> 23) & 1;
      v21 = 32;
      if (*(*(v19 + 16 * v20) + 8) == 7)
      {
        v21 = 8;
      }

      if (*(v110[0] + v21) != 1)
      {
LABEL_46:
        v108[0] = "failed: strides incompatible with given tensor data layout.";
        v109[8] = 259;
        mlir::OpState::emitOpError(this, v108, &v112);
        v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v112);
        if (v112)
        {
          mlir::InFlightDiagnostic::report(&v112);
        }

        if (v121 != 1)
        {
          goto LABEL_86;
        }

        if (v120 != &v121)
        {
          free(v120);
        }

        v36 = __p;
        if (__p)
        {
          v37 = v119;
          v38 = __p;
          if (v119 != __p)
          {
            do
            {
              v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
            }

            while (v37 != v36);
            v38 = __p;
          }

          v119 = v36;
          operator delete(v38);
        }

        v39 = v116;
        if (v116)
        {
          v40 = v117;
          v41 = v116;
          if (v117 != v116)
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
            v41 = v116;
          }

          v117 = v39;
          operator delete(v41);
        }

        v53 = v114;
        if (v114 == v115)
        {
LABEL_86:
          v44 = v110[0];
          if (v110[0] == v111)
          {
            goto LABEL_88;
          }

          goto LABEL_87;
        }

LABEL_85:
        free(v53);
        goto LABEL_86;
      }

      v108[0] = v109;
      v108[1] = 0x600000000;
      v112 = *(v19 + 16 * v20 + 8);
      v22 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v112);
      mlir::getIntValues<long long>(v22, v23, v108, 1);
      if (*v108[0] != 1)
      {
        goto LABEL_66;
      }

      v24 = 4;
      if (*(*(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64) + 8) == 7)
      {
        v24 = 1;
      }

      if (v108[0][v24] != 1)
      {
LABEL_66:
        v105[0] = "failed: dilation values incompatible with given tensor layout.";
        v106 = 259;
        mlir::OpState::emitOpError(this, v105, &v112);
        v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v112);
        if (v112)
        {
          mlir::InFlightDiagnostic::report(&v112);
        }

        if (v121 == 1)
        {
          if (v120 != &v121)
          {
            free(v120);
          }

          v45 = __p;
          if (__p)
          {
            v46 = v119;
            v47 = __p;
            if (v119 != __p)
            {
              do
              {
                v46 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v46 - 1);
              }

              while (v46 != v45);
              v47 = __p;
            }

            v119 = v45;
            operator delete(v47);
          }

          v48 = v116;
          if (v116)
          {
            v49 = v117;
            v50 = v116;
            if (v117 != v116)
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
              v50 = v116;
            }

            v117 = v48;
            operator delete(v50);
          }

          if (v114 != v115)
          {
            free(v114);
          }
        }

LABEL_142:
        v53 = v108[0];
        if (v108[0] == v109)
        {
          goto LABEL_86;
        }

        goto LABEL_85;
      }

      v25 = (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!v25)
      {
        goto LABEL_99;
      }

      v26 = *v25;
      {
        v27 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v28 = *(v26 + 8);
        v29 = *(v26 + 16);
        if (v29)
        {
          goto LABEL_40;
        }
      }

      else
      {
        mlir::arith::ExtUIOp::fold();
        v27 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v28 = *(v26 + 8);
        v29 = *(v26 + 16);
        if (v29)
        {
LABEL_40:
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
LABEL_97:
          if (v30 != &v28[2 * v29] && *v30 == v27)
          {
            v55 = v30[1];
LABEL_100:
            v105[0] = v25;
            v105[1] = v55;
            v56 = (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
            if (!v56)
            {
              goto LABEL_114;
            }

            v57 = *v56;
            {
              v58 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
              v59 = *(v57 + 8);
              v60 = *(v57 + 16);
              if (v60)
              {
                goto LABEL_103;
              }
            }

            else
            {
              mlir::arith::ExtUIOp::fold();
              v58 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
              v59 = *(v57 + 8);
              v60 = *(v57 + 16);
              if (v60)
              {
LABEL_103:
                v61 = v59;
                v62 = v60;
                do
                {
                  v63 = v62 >> 1;
                  v64 = &v61[2 * (v62 >> 1)];
                  v66 = *v64;
                  v65 = v64 + 2;
                  v62 += ~(v62 >> 1);
                  if (v66 < v58)
                  {
                    v61 = v65;
                  }

                  else
                  {
                    v62 = v63;
                  }
                }

                while (v62);
LABEL_112:
                if (v61 != &v59[2 * v60] && *v61 == v58)
                {
                  v67 = v61[1];
LABEL_115:
                  v104[0] = v56;
                  v104[1] = v67;
                  v102 = *this;
                  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v105);
                  v70 = v69;
                  v71 = *(*(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64) + 8);
                  v72 = mlir::CallableOpInterface::getArgAttrsAttr(v104);
                  v74 = v73;
                  v75 = *this + 16 * ((*(*this + 44) >> 23) & 1);
                  v76 = *(*(v75 + 112) + 8);
                  v103[0] = *(v75 + 88);
                  mlir::IntegerAttr::getValue(v103, &v112);
                  if (v113 > 0x40)
                  {
                    v77 = *v112;
                    operator delete[](v112);
                  }

                  else
                  {
                    v77 = v112;
                  }

                  if (!mlir::mps::verifyConvolutionInputChannels(v102, ArgAttrsAttr, v70, v71, v72, v74, v76, v77))
                  {
                    v8 = 0;
                    goto LABEL_142;
                  }

                  if (*(*this + 36))
                  {
                    v78 = *this - 16;
                  }

                  else
                  {
                    v78 = 0;
                  }

                  v79 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v78, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
                  if (!v79)
                  {
                    goto LABEL_137;
                  }

                  v80 = *v79;
                  {
                    v81 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
                    v82 = *(v80 + 8);
                    v83 = *(v80 + 16);
                    if (v83)
                    {
                      goto LABEL_125;
                    }
                  }

                  else
                  {
                    mlir::arith::ExtUIOp::fold();
                    v81 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
                    v82 = *(v80 + 8);
                    v83 = *(v80 + 16);
                    if (v83)
                    {
LABEL_125:
                      v84 = v82;
                      v85 = v83;
                      do
                      {
                        v86 = v85 >> 1;
                        v87 = &v84[2 * (v85 >> 1)];
                        v89 = *v87;
                        v88 = v87 + 2;
                        v85 += ~(v85 >> 1);
                        if (v89 < v81)
                        {
                          v84 = v88;
                        }

                        else
                        {
                          v85 = v86;
                        }
                      }

                      while (v85);
LABEL_135:
                      if (v84 != &v82[2 * v83] && *v84 == v81)
                      {
                        v90 = v84[1];
                        goto LABEL_138;
                      }

LABEL_137:
                      v90 = 0;
LABEL_138:
                      v103[0] = v79;
                      v103[1] = v90;
                      v91 = *this;
                      v92 = mlir::CallableOpInterface::getArgAttrsAttr(v103);
                      v94 = v93;
                      v95 = *(*(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64) + 8);
                      v96 = mlir::CallableOpInterface::getArgAttrsAttr(v104);
                      v98 = v97;
                      v99 = *this + 16 * ((*(*this + 44) >> 23) & 1);
                      v100 = *(*(v99 + 112) + 8);
                      v107 = *(v99 + 88);
                      mlir::IntegerAttr::getValue(&v107, &v112);
                      if (v113 > 0x40)
                      {
                        v101 = *v112;
                        operator delete[](v112);
                      }

                      else
                      {
                        v101 = v112;
                      }

                      v8 = mlir::mps::verifyConvolutionOutputChannels(v91, v92, v94, v95, v96, v98, v100, v101);
                      goto LABEL_142;
                    }
                  }

                  v83 = 0;
                  v84 = v82;
                  goto LABEL_135;
                }

LABEL_114:
                v67 = 0;
                goto LABEL_115;
              }
            }

            v60 = 0;
            v61 = v59;
            goto LABEL_112;
          }

LABEL_99:
          v55 = 0;
          goto LABEL_100;
        }
      }

      v29 = 0;
      v30 = v28;
      goto LABEL_97;
    }
  }

LABEL_13:
  v110[0] = "failed: explicit padding incompatible with with given tensor data layout.";
  v111[8] = 259;
  mlir::OpState::emitOpError(this, v110, &v112);
  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v112);
  if (v112)
  {
    mlir::InFlightDiagnostic::report(&v112);
  }

  if (v121 == 1)
  {
    if (v120 != &v121)
    {
      free(v120);
    }

    v9 = __p;
    if (__p)
    {
      v10 = v119;
      v11 = __p;
      if (v119 != __p)
      {
        do
        {
          v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v119 = v9;
      operator delete(v11);
    }

    v12 = v116;
    if (v116)
    {
      v13 = v117;
      v14 = v116;
      if (v117 != v116)
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
        v14 = v116;
      }

      v117 = v12;
      operator delete(v14);
    }

    v44 = v114;
    if (v114 != v115)
    {
LABEL_87:
      free(v44);
    }
  }

LABEL_88:
  if (v122[0] != v123)
  {
    free(v122[0]);
  }

  return v8;
}

void *mlir::mps::Conv3DOp::getGroups(mlir::mps::Conv3DOp *this)
{
  v5 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 88);
  mlir::IntegerAttr::getValue(&v5, &__p);
  if (v4 <= 0x40)
  {
    return __p;
  }

  v2 = *__p;
  operator delete[](__p);
  return v2;
}

uint64_t mlir::mps::get5DElementsAttrFrom3DSpatialValues(uint64_t **a1, uint64_t *a2, uint64_t a3, int a4)
{
  v17[5] = *MEMORY[0x1E69E9840];
  v5 = a2[1];
  v4 = a2[2];
  v6 = *a2;
  if (a4 == 7)
  {
    v7 = 1;
  }

  else
  {
    v7 = a2[2];
  }

  if (a4 != 7)
  {
    v4 = a2[1];
    v5 = *a2;
  }

  v17[0] = 1;
  v17[1] = v7;
  if (a4 != 7)
  {
    v6 = 1;
  }

  v17[2] = v4;
  v17[3] = v5;
  v17[4] = v6;
  v15 = v17;
  v16 = 0x500000005;
  v14 = 5;
  IntegerType = mlir::Builder::getIntegerType(a1, 64, 0);
  v13 = mlir::RankedTensorType::get(&v14, 1, IntegerType, 0);
  v9 = mlir::TensorType::operator mlir::ShapedType(&v13);
  result = mlir::DenseElementsAttr::getFromRawBuffer(v9, v10, v15, 8 * v16, 8, 1, 0);
  if (v15 != v17)
  {
    v12 = result;
    free(v15);
    return v12;
  }

  return result;
}

uint64_t mlir::mps::get5DElementsAttrFrom3DPaddingValues(uint64_t **a1, uint64_t *a2, uint64_t a3, int a4)
{
  v23[5] = *MEMORY[0x1E69E9840];
  v21 = v23;
  v7 = a2[4];
  v6 = a2[5];
  v9 = a2[2];
  v8 = a2[3];
  v11 = *a2;
  v10 = a2[1];
  v22 = 0x500000000;
  llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v23, 0xAuLL, 8);
  v12 = v22;
  v13 = v21 + 8 * v22;
  if (a4 == 7)
  {
    *v13 = 0u;
    *(v13 + 1) = 0u;
    *(v13 + 4) = v7;
    *(v13 + 5) = v6;
    *(v13 + 6) = v9;
    *(v13 + 7) = v8;
    *(v13 + 8) = v11;
    *(v13 + 9) = v10;
  }

  else
  {
    *v13 = 0;
    *(v13 + 1) = 0;
    *(v13 + 2) = v7;
    *(v13 + 3) = v6;
    *(v13 + 4) = v9;
    *(v13 + 5) = v8;
    *(v13 + 6) = v11;
    *(v13 + 7) = v10;
    *(v13 + 8) = 0;
    *(v13 + 9) = 0;
  }

  LODWORD(v22) = v12 + 10;
  v20 = xmmword_1E0982930;
  IntegerType = mlir::Builder::getIntegerType(a1, 64, 0);
  v19 = mlir::RankedTensorType::get(&v20, 2, IntegerType, 0);
  v15 = mlir::TensorType::operator mlir::ShapedType(&v19);
  result = mlir::DenseElementsAttr::getFromRawBuffer(v15, v16, v21, 8 * v22, 8, 1, 0);
  if (v21 != v23)
  {
    v18 = result;
    free(v21);
    return v18;
  }

  return result;
}

void mlir::mps::computeConv3DTransposeResultSpatialShape(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X4>, void *a5@<X6>, void *a6@<X8>, uint64_t a7)
{
  v7 = a2;
  *a6 = a6 + 2;
  a6[1] = 0x300000000;
  if (!a2)
  {
    return;
  }

  if (a2 < 4)
  {
    v13 = 0;
    v14 = a7;
    v15 = a2;
    goto LABEL_6;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(a6, (a6 + 2), a2, 8);
  v13 = *(a6 + 2);
  v14 = a7;
  v15 = v7 - v13;
  if (v7 != v13)
  {
LABEL_6:
    bzero((*a6 + 8 * v13), 8 * v15);
  }

  *(a6 + 2) = v7;
  v16 = *a6;
  v17 = (v14 + 8);
  do
  {
    v19 = *a3++;
    v18 = v19;
    v21 = *a1++;
    v20 = v21;
    v22 = v21 == 0x8000000000000000 || v18 == 0x8000000000000000;
    v23 = 0x8000000000000000;
    if (!v22)
    {
      v23 = *a4 * (v20 - 1) + *a5 * (v18 - 1) - (*(v17 - 1) + *v17) + 1;
    }

    *v16++ = v23;
    v17 += 2;
    ++a5;
    ++a4;
    --v7;
  }

  while (v7);
}

uint64_t mlir::mps::Conv3DDataGradientOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, uint64_t a4, unint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v140 = *MEMORY[0x1E69E9840];
  v138 = a4;
  v139 = a5;
  if (a7)
  {
    v14 = *a7;
    v15 = a7[1];
    v16 = a7[2];
    v17 = *(a7 + 6);
  }

  else
  {
    v17 = 0;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
  }

  v127 = a6;
  v128[0] = 0;
  v129 = 0;
  v130 = v14;
  v131 = v15;
  v132 = v16;
  v133 = v17;
  v134 = a9;
  v18 = a5;
  v135 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v127);
    if (v129 == 1)
    {
      v129 = 0;
    }

    mlir::OperationName::OperationName(v128, "mps.conv_3d_data_gradient", 25, Context);
    v129 = 1;
    v18 = v139;
  }

  v136 = a4;
  v137 = a5;
  if (v18 >= 2)
  {
    v20.var0.var0 = mlir::UnknownLoc::get(this, a2);
    if (mlir::mps::Conv3DDataGradientOpAdaptor::verify(&v127, v20))
    {
      v21 = mlir::ValueRange::dereference_iterator(&v138, 0);
      v22 = mlir::ValueRange::dereference_iterator(&v138, 1);
      v23 = 0;
      if (v139 >= 3)
      {
        v23 = mlir::ValueRange::dereference_iterator(&v138, 2);
      }

      v24 = *(v22 + 8) & 0xFFFFFFFFFFFFFFF8;
      v97 = (*(v21 + 8) & 0xFFFFFFFFFFFFFFF8);
      v98 = v24;
      mlir::ValueRange::ValueRange(&v103, &v97, 2uLL);
      v124 = v126;
      v125 = 0x500000000;
      if (v23 && (mlir::matchConstantWithIntVector<long long>(v23, &v124) & 1) != 0)
      {
        v26 = v124;
        v27 = v125;
        if (!v125)
        {
          goto LABEL_73;
        }

        v28 = (v125 - 1) & 0x1FFFFFFFFFFFFFFFLL;
        v29 = v124;
        if (v28 >= 3)
        {
          v30 = v28 + 1;
          v29 = v124 + 8 * (v30 & 0x3FFFFFFFFFFFFFFCLL);
          v31 = (v124 + 16);
          v32.i64[0] = -1;
          v32.i64[1] = -1;
          v33 = v30 & 0x3FFFFFFFFFFFFFFCLL;
          while (1)
          {
            v34 = vmovn_s64(vceqq_s64(v31[-1], v32));
            if (v34.i8[0])
            {
              v31[-1].i64[0] = 0x8000000000000000;
              if ((v34.i8[4] & 1) == 0)
              {
LABEL_20:
                v35 = vmovn_s64(vceqq_s64(*v31, v32));
                if ((v35.i8[0] & 1) == 0)
                {
                  goto LABEL_21;
                }

                goto LABEL_25;
              }
            }

            else if ((v34.i8[4] & 1) == 0)
            {
              goto LABEL_20;
            }

            v31[-1].i64[1] = 0x8000000000000000;
            v35 = vmovn_s64(vceqq_s64(*v31, v32));
            if ((v35.i8[0] & 1) == 0)
            {
LABEL_21:
              if (v35.i8[4])
              {
                goto LABEL_26;
              }

              goto LABEL_17;
            }

LABEL_25:
            v31->i64[0] = 0x8000000000000000;
            if (v35.i8[4])
            {
LABEL_26:
              v31->i64[1] = 0x8000000000000000;
            }

LABEL_17:
            v31 += 2;
            v33 -= 4;
            if (!v33)
            {
              if (v30 == (v30 & 0x3FFFFFFFFFFFFFFCLL))
              {
                goto LABEL_73;
              }

              goto LABEL_77;
            }
          }
        }

        do
        {
LABEL_77:
          if (*v29 == -1)
          {
            *v29 = 0x8000000000000000;
          }

          ++v29;
        }

        while (v29 != &v26[v27]);
LABEL_73:
        v87 = mlir::RankedTensorType::get(v26, v27, v25, 0);
        v88 = *(a11 + 8);
        if (v88 < *(a11 + 12))
        {
          goto LABEL_69;
        }
      }

      else
      {
        v92[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v21 + 8) & 0xFFFFFFFFFFFFFFF8));
        v92[1] = v40;
        v91[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v22 + 8) & 0xFFFFFFFFFFFFFFF8));
        v91[1] = v41;
        if (v92[0])
        {
          if (mlir::CallOpInterface::getArgOperands(v92))
          {
            mlir::CallableOpInterface::getArgAttrsAttr(v92);
            if (v42 >= 5)
            {
              if (v91[0])
              {
                if (mlir::CallOpInterface::getArgOperands(v91))
                {
                  mlir::CallableOpInterface::getArgAttrsAttr(v91);
                  if (v43 == 5)
                  {
                    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v92);
                    v45 = *(v130 + 8) - 7;
                    v47 = ArgAttrsAttr + 8 * v46;
                    v48 = *(v47 + qword_1E0998C20[v45]);
                    v49 = *(v47 + qword_1E0998C40[v45]);
                    v50 = *(v47 + qword_1E0998C60[v45]);
                    v121 = v123;
                    v123[0] = v48;
                    v123[1] = v49;
                    v123[2] = v50;
                    *v122 = 0x300000003;
                    v51 = mlir::CallableOpInterface::getArgAttrsAttr(v91);
                    v52 = *(v133 + 8) - 7;
                    v54 = v51 + 8 * v53;
                    v55 = *(v54 + qword_1E0998C20[v52]);
                    v56 = *(v54 + qword_1E0998C40[v52]);
                    v57 = *(v54 + qword_1E0998C60[v52]);
                    v118 = v120;
                    v120[0] = v55;
                    v120[1] = v56;
                    v120[2] = v57;
                    *v119 = 0x300000003;
                    v115 = v117;
                    v116 = 0x500000000;
                    v103 = *(&v132 + 1);
                    v58 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v103);
                    mlir::getIntValues<long long>(v58, v59, &v115, 1);
                    v60 = *(v130 + 8) - 7;
                    v61 = v115 + 8 * v116;
                    v62 = *&v61[qword_1E0998C20[v60]];
                    v63 = *&v61[qword_1E0998C40[v60]];
                    v64 = *&v61[qword_1E0998C60[v60]];
                    v112 = v114;
                    v114[0] = v62;
                    v114[1] = v63;
                    v114[2] = v64;
                    *v113 = 0x300000003;
                    v109 = v111;
                    v110 = 0x500000000;
                    v103 = *(&v130 + 1);
                    v65 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v103);
                    mlir::getIntValues<long long>(v65, v66, &v109, 1);
                    v67 = *(v130 + 8) - 7;
                    v68 = v109 + 8 * v110;
                    v69 = *&v68[qword_1E0998C20[v67]];
                    v70 = *&v68[qword_1E0998C40[v67]];
                    v71 = *&v68[qword_1E0998C60[v67]];
                    v106 = v108;
                    v108[0] = v69;
                    v108[1] = v70;
                    v108[2] = v71;
                    *v107 = 0x300000003;
                    v103 = v105;
                    v104 = 0xA00000000;
                    v97 = v131;
                    v72 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v97);
                    mlir::getIntValues<long long>(v72, v73, &v103, 1);
                    mlir::mps::getSpatialPaddingValues(v103, *(v130 + 8), &__src);
                    mlir::mps::computeSpatialPaddings(v121, v122[0], v118, v112, v106, &v97, __src, v101, *(v132 + 8));
                    llvm::SmallVectorImpl<unsigned long long>::operator=(&__src, &v97);
                    if (v97 != v99)
                    {
                      free(v97);
                    }

                    v97 = v99;
                    v98 = 0x500000000;
                    mlir::mps::computeConv3DTransposeResultSpatialShape(v121, v122[0], v118, v112, v106, v95, __src);
                    llvm::SmallVectorImpl<unsigned long long>::operator=(&v97, v95);
                    if (v95[0] != v96)
                    {
                      free(v95[0]);
                    }

                    v74 = mlir::CallableOpInterface::getArgAttrsAttr(v92);
                    v76 = *(v74 + 8 * v75 - 40);
                    v77 = mlir::CallableOpInterface::getArgAttrsAttr(v91);
                    v79 = -32;
                    if (*(v133 + 8) == 10)
                    {
                      v79 = -16;
                    }

                    v80 = *(v77 + 8 * v78 + v79);
                    Groups = mlir::mps::detail::Conv3DDataGradientOpGenericAdaptorBase::getGroups(&v127);
                    v95[0] = v76;
                    v95[1] = (Groups * v80);
                    v96[0] = *(v97 + 2);
                    v96[1] = *(v97 + 1);
                    v96[2] = *v97;
                    llvm::SmallVector<long long,4u>::operator=(&v124, v95, 5);
                    mlir::mps::convertNCDHWShapeToLayout(v124, v125, *(v130 + 8), v95);
                    llvm::SmallVectorImpl<unsigned long long>::operator=(&v124, v95);
                    if (v95[0] != v96)
                    {
                      free(v95[0]);
                    }

                    mlir::CallableOpInterface::getArgAttrsAttr(v92);
                    if (v82 >= 6)
                    {
                      llvm::SmallVector<long long,5u>::SmallVector(v95, &v124);
                      v83 = mlir::CallableOpInterface::getArgAttrsAttr(v92);
                      v84 = mlir::CallableOpInterface::getArgAttrsAttr(v92);
                      llvm::SmallVector<long long,5u>::SmallVector<long long const*,void>(v93, v83, (v84 + 8 * v85 - 40));
                      llvm::SmallVectorImpl<unsigned long long>::operator=(&v124, v93);
                      if (v93[0] != &v94)
                      {
                        free(v93[0]);
                      }

                      llvm::SmallVectorImpl<long long>::append(&v124, v95);
                      if (v95[0] != v96)
                      {
                        free(v95[0]);
                      }
                    }

                    v86 = mlir::RankedTensorType::get(v124, v125, v25, 0);
                    llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v86);
                    if (v97 != v99)
                    {
                      free(v97);
                    }

                    if (__src != &v102)
                    {
                      free(__src);
                    }

                    if (v103 != v105)
                    {
                      free(v103);
                    }

                    if (v106 != v108)
                    {
                      free(v106);
                    }

                    if (v109 != v111)
                    {
                      free(v109);
                    }

                    if (v112 != v114)
                    {
                      free(v112);
                    }

                    if (v115 != v117)
                    {
                      free(v115);
                    }

                    if (v118 != v120)
                    {
                      free(v118);
                    }

                    if (v121 != v123)
                    {
                      free(v121);
                    }

                    goto LABEL_70;
                  }
                }
              }
            }
          }
        }

        v87 = mlir::UnrankedTensorType::get(v25);
        v88 = *(a11 + 8);
        if (v88 < *(a11 + 12))
        {
LABEL_69:
          *(*a11 + 8 * v88) = v87;
          ++*(a11 + 8);
LABEL_70:
          if (v124 != v126)
          {
            free(v124);
          }

          return 1;
        }
      }

      v89 = v87;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v88 + 1, 8);
      v87 = v89;
      LODWORD(v88) = *(a11 + 8);
      goto LABEL_69;
    }
  }

  v36 = mlir::Float32Type::get(this, a2);
  v37 = mlir::UnrankedTensorType::get(v36);
  v38 = *(a11 + 8);
  if (v38 >= *(a11 + 12))
  {
    v90 = v37;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v38 + 1, 8);
    v37 = v90;
    LODWORD(v38) = *(a11 + 8);
  }

  *(*a11 + 8 * v38) = v37;
  ++*(a11 + 8);
  return 1;
}

BOOL mlir::mps::Conv3DDataGradientOpAdaptor::verify(mlir::mps::Conv3DDataGradientOpAdaptor *this, Location a2)
{
  v73 = *MEMORY[0x1E69E9840];
  v3 = *(this + 3);
  if (!v3)
  {
    v58 = "'mps.conv_3d_data_gradient' op requires attribute 'data_layout'";
    v60 = 259;
    mlir::emitError(a2.var0.var0, &v58, &Value);
    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v72 != 1)
    {
      return v22;
    }

    if (v71 != &v72)
    {
      free(v71);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v70;
      v25 = __p;
      if (v70 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v70 = v23;
      operator delete(v25);
    }

    v26 = v67;
    if (v67)
    {
      v27 = v68;
      v28 = v67;
      if (v68 == v67)
      {
        goto LABEL_92;
      }

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
LABEL_91:
      v28 = v67;
LABEL_92:
      v68 = v26;
      operator delete(v28);
    }

LABEL_93:
    if (v65 != &v66)
    {
      free(v65);
    }

    return v22;
  }

  v57 = *(this + 4);
  if (!v57)
  {
    v58 = "'mps.conv_3d_data_gradient' op requires attribute 'dilation_rates'";
    v60 = 259;
    mlir::emitError(a2.var0.var0, &v58, &Value);
    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v72 != 1)
    {
      return v22;
    }

    if (v71 != &v72)
    {
      free(v71);
    }

    v31 = __p;
    if (__p)
    {
      v32 = v70;
      v33 = __p;
      if (v70 != __p)
      {
        do
        {
          v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
        }

        while (v32 != v31);
        v33 = __p;
      }

      v70 = v31;
      operator delete(v33);
    }

    v26 = v67;
    if (v67)
    {
      v34 = v68;
      v28 = v67;
      if (v68 == v67)
      {
        goto LABEL_92;
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

      while (v34 != v26);
      goto LABEL_91;
    }

    goto LABEL_93;
  }

  v56 = *(this + 5);
  if (!v56)
  {
    v58 = "'mps.conv_3d_data_gradient' op requires attribute 'explicit_padding'";
    v60 = 259;
    mlir::emitError(a2.var0.var0, &v58, &Value);
    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v72 != 1)
    {
      return v22;
    }

    if (v71 != &v72)
    {
      free(v71);
    }

    v37 = __p;
    if (__p)
    {
      v38 = v70;
      v39 = __p;
      if (v70 != __p)
      {
        do
        {
          v38 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v38 - 1);
        }

        while (v38 != v37);
        v39 = __p;
      }

      v70 = v37;
      operator delete(v39);
    }

    v26 = v67;
    if (v67)
    {
      v40 = v68;
      v28 = v67;
      if (v68 == v67)
      {
        goto LABEL_92;
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

      while (v40 != v26);
      goto LABEL_91;
    }

    goto LABEL_93;
  }

  v4 = *(this + 6);
  if (!v4)
  {
    v58 = "'mps.conv_3d_data_gradient' op requires attribute 'groups'";
    v60 = 259;
    mlir::emitError(a2.var0.var0, &v58, &Value);
    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v72 != 1)
    {
      return v22;
    }

    if (v71 != &v72)
    {
      free(v71);
    }

    v43 = __p;
    if (__p)
    {
      v44 = v70;
      v45 = __p;
      if (v70 != __p)
      {
        do
        {
          v44 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v44 - 1);
        }

        while (v44 != v43);
        v45 = __p;
      }

      v70 = v43;
      operator delete(v45);
    }

    v26 = v67;
    if (v67)
    {
      v46 = v68;
      v28 = v67;
      if (v68 == v67)
      {
        goto LABEL_92;
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

      while (v46 != v26);
      goto LABEL_91;
    }

    goto LABEL_93;
  }

  if (*(this + 7))
  {
    v55 = *(this + 8);
    if (v55)
    {
      v5 = *(this + 9);
      if (v5)
      {
        v58 = v4;
        Value = mlir::AffineMapAttr::getValue(&v58);
        if (mlir::Type::isUnsignedInteger(&Value, 64))
        {
          v58 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v55);
          v59 = v6;
          v51[0] = mlir::ElementsAttr::getType(&v58);
          Value = llvm::cast<mlir::ShapedType,mlir::Type>(v51);
          v64 = v7;
          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&Value);
          Type = 5;
          if (v9 == 1 && *ArgAttrsAttr == Type && (isSplat = v55, llvm::all_of<mlir::DenseIntElementsAttr,mlir::mps::Conv3DDataGradientOpAdaptor::verify(mlir::Location)::$_0>(&isSplat)) && (v52 = v55, *&v61 = mlir::ArrayAttr::getValue(&v52), *(&v61 + 1) = v10, v53 = mlir::ElementsAttr::isSplat(&v61), mlir::Type::isUnsignedInteger(&v53, 64)))
          {
            v58 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v57);
            v59 = v11;
            v51[0] = mlir::ElementsAttr::getType(&v58);
            Value = llvm::cast<mlir::ShapedType,mlir::Type>(v51);
            v64 = v12;
            v13 = mlir::CallableOpInterface::getArgAttrsAttr(&Value);
            Type = 5;
            if (v14 == 1 && *v13 == Type && (isSplat = v57, llvm::all_of<mlir::DenseIntElementsAttr,mlir::mps::Conv3DDataGradientOpAdaptor::verify(mlir::Location)::$_0>(&isSplat)) && (v52 = v57, *&v61 = mlir::ArrayAttr::getValue(&v52), *(&v61 + 1) = v15, v53 = mlir::ElementsAttr::isSplat(&v61), mlir::Type::isUnsignedInteger(&v53, 64)))
            {
              v58 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v56);
              v59 = v16;
              Type = mlir::ElementsAttr::getType(&v58);
              Value = llvm::cast<mlir::ShapedType,mlir::Type>(&Type);
              v64 = v17;
              v18 = mlir::CallableOpInterface::getArgAttrsAttr(&Value);
              v61 = xmmword_1E0982930;
              if (v19 == 2 && (*v18 == v61 ? (v20 = v18[1] == *(&v61 + 1)) : (v20 = 0), v20 && (v53 = v56, v51[0] = mlir::ArrayAttr::getValue(&v53), v51[1] = v21, isSplat = mlir::ElementsAttr::isSplat(v51), mlir::Type::isUnsignedInteger(&isSplat, 64))))
              {
                if ((*(v3 + 8) - 7) >= 2)
                {
                  v49 = "'mps.conv_3d_data_gradient' op attribute 'data_layout' failed to satisfy constraint: valid TensorDataLayout is one of NDHWC or NCDHW";
                }

                else
                {
                  if ((*(v5 + 8) - 9) < 2)
                  {
                    return 1;
                  }

                  v49 = "'mps.conv_3d_data_gradient' op attribute 'weights_layout' failed to satisfy constraint: valid TensorDataLayout is one of DHWIO or OIDHW";
                }
              }

              else
              {
                v49 = "'mps.conv_3d_data_gradient' op attribute 'explicit_padding' failed to satisfy constraint: ui64 elements attribute of shape {5, 2}";
              }
            }

            else
            {
              v49 = "'mps.conv_3d_data_gradient' op attribute 'dilation_rates' failed to satisfy constraint: positive ui64 elements attribute of shape {5}";
            }
          }

          else
          {
            v49 = "'mps.conv_3d_data_gradient' op attribute 'strides' failed to satisfy constraint: positive ui64 elements attribute of shape {5}";
          }
        }

        else
        {
          v49 = "'mps.conv_3d_data_gradient' op attribute 'groups' failed to satisfy constraint: 64-bit unsigned integer attribute";
        }
      }

      else
      {
        v49 = "'mps.conv_3d_data_gradient' op requires attribute 'weights_layout'";
      }
    }

    else
    {
      v49 = "'mps.conv_3d_data_gradient' op requires attribute 'strides'";
    }

    v58 = v49;
    v60 = 259;
    mlir::emitError(a2.var0.var0, &v58, &Value);
    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&Value);
    return v22;
  }

  v58 = "'mps.conv_3d_data_gradient' op requires attribute 'padding_style'";
  v60 = 259;
  mlir::emitError(a2.var0.var0, &v58, &Value);
  v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
  if (Value)
  {
    mlir::InFlightDiagnostic::report(&Value);
  }

  if (v72 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v64);
  }

  return v22;
}

void *mlir::mps::detail::Conv3DDataGradientOpGenericAdaptorBase::getGroups(mlir::mps::detail::Conv3DDataGradientOpGenericAdaptorBase *this)
{
  v5 = *(this + 6);
  mlir::IntegerAttr::getValue(&v5, &__p);
  if (v4 <= 0x40)
  {
    return __p;
  }

  v2 = *__p;
  operator delete[](__p);
  return v2;
}

uint64_t mlir::mps::verifyConvolutionBatches(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = 1;
  if (!a3 || !a5)
  {
    return v5;
  }

  if (a3 == a5)
  {
    v6 = a3 - 4;
    if (a3 != 4)
    {
      while (1)
      {
        v8 = *a2++;
        v7 = v8;
        v37 = v8;
        v10 = *a4++;
        v9 = v10;
        v36 = v10;
        v11 = v37 == 0x8000000000000000 || v9 == 0x8000000000000000;
        if (!v11 && v7 != v9)
        {
          break;
        }

        if (!--v6)
        {
          return 1;
        }
      }

      v29[0] = "failed: input batch {0} differs from output batch {1}";
      v29[1] = 53;
      v29[2] = v33;
      v29[3] = 2;
      LOBYTE(v30) = 1;
      v31[0] = &unk_1F5B17218;
      v31[1] = &v37;
      v32[0] = &unk_1F5B17218;
      v32[1] = &v36;
      v33[0] = v31;
      v33[1] = v32;
      v35 = 263;
      v34 = v29;
      mlir::Operation::emitOpError(a1, &v34, v38);
      v21 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v38);
      v5 = v21;
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

        v22 = __p;
        if (__p)
        {
          v23 = v44;
          v24 = __p;
          if (v44 != __p)
          {
            do
            {
              v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
            }

            while (v23 != v22);
            v24 = __p;
          }

          v44 = v22;
          operator delete(v24);
        }

        v16 = v41;
        if (!v41)
        {
          goto LABEL_49;
        }

        v25 = v42;
        v18 = v41;
        if (v42 == v41)
        {
LABEL_48:
          v42 = v16;
          operator delete(v18);
LABEL_49:
          if (v39 != &v40)
          {
            free(v39);
          }

          return v5;
        }

        do
        {
          v27 = *--v25;
          v26 = v27;
          *v25 = 0;
          if (v27)
          {
            operator delete[](v26);
          }
        }

        while (v25 != v16);
LABEL_47:
        v18 = v41;
        goto LABEL_48;
      }
    }
  }

  else
  {
    v29[0] = "failed: number of batches are inconsistent between input and output";
    v30 = 259;
    mlir::Operation::emitOpError(a1, v29, v38);
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v38);
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

      v13 = __p;
      if (__p)
      {
        v14 = v44;
        v15 = __p;
        if (v44 != __p)
        {
          do
          {
            v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
          }

          while (v14 != v13);
          v15 = __p;
        }

        v44 = v13;
        operator delete(v15);
      }

      v16 = v41;
      if (!v41)
      {
        goto LABEL_49;
      }

      v17 = v42;
      v18 = v41;
      if (v42 == v41)
      {
        goto LABEL_48;
      }

      do
      {
        v20 = *--v17;
        v19 = v20;
        *v17 = 0;
        if (v20)
        {
          operator delete[](v19);
        }
      }

      while (v17 != v16);
      goto LABEL_47;
    }
  }

  return v5;
}

uint64_t mlir::mps::Conv3DDataGradientOp::verify(mlir::mps::Conv3DDataGradientOp *this)
{
  v141[6] = *MEMORY[0x1E69E9840];
  v140[0] = v141;
  v140[1] = 0x600000000;
  v129 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
  v2 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v129);
  mlir::getIntValues<long long>(v2, v3, v140, 1);
  v4 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  v5 = *(*(v4 + 96) + 8);
  if (v5 != 3)
  {
    if (v5)
    {
      goto LABEL_29;
    }

    v6 = *v140[0];
    if (*(*(v4 + 64) + 8) == 7)
    {
      if (!v6 && !*(v140[0] + 1) && !*(v140[0] + 2))
      {
        v7 = 24;
        goto LABEL_12;
      }
    }

    else if (!v6 && !*(v140[0] + 1) && !*(v140[0] + 8))
    {
      v7 = 72;
LABEL_12:
      if (*(v140[0] + v7))
      {
        goto LABEL_13;
      }

LABEL_29:
      v127[0] = v128;
      v127[1] = 0x600000000;
      v129 = *(v4 + 104);
      v17 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v129);
      mlir::getIntValues<long long>(v17, v18, v127, 1);
      if (*v127[0] != 1)
      {
        goto LABEL_46;
      }

      v19 = *this + 64;
      v20 = (*(*this + 44) >> 23) & 1;
      v21 = 32;
      if (*(*(v19 + 16 * v20) + 8) == 7)
      {
        v21 = 8;
      }

      if (*(v127[0] + v21) != 1)
      {
LABEL_46:
        v125[0] = "failed: strides incompatible with given tensor data layout.";
        v126[8] = 259;
        mlir::OpState::emitOpError(this, v125, &v129);
        v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v129);
        if (v129)
        {
          mlir::InFlightDiagnostic::report(&v129);
        }

        if (v139 != 1)
        {
          goto LABEL_86;
        }

        if (v138 != &v139)
        {
          free(v138);
        }

        v36 = __p;
        if (__p)
        {
          v37 = v137;
          v38 = __p;
          if (v137 != __p)
          {
            do
            {
              v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
            }

            while (v37 != v36);
            v38 = __p;
          }

          v137 = v36;
          operator delete(v38);
        }

        v39 = v134;
        if (v134)
        {
          v40 = v135;
          v41 = v134;
          if (v135 != v134)
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
            v41 = v134;
          }

          v135 = v39;
          operator delete(v41);
        }

        v53 = v132;
        if (v132 == v133)
        {
LABEL_86:
          v44 = v127[0];
          if (v127[0] == v128)
          {
            goto LABEL_88;
          }

          goto LABEL_87;
        }

LABEL_85:
        free(v53);
        goto LABEL_86;
      }

      v125[0] = v126;
      v125[1] = 0x600000000;
      v129 = *(v19 + 16 * v20 + 8);
      v22 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v129);
      mlir::getIntValues<long long>(v22, v23, v125, 1);
      if (*v125[0] != 1)
      {
        goto LABEL_66;
      }

      v24 = 4;
      if (*(*(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64) + 8) == 7)
      {
        v24 = 1;
      }

      if (v125[0][v24] != 1)
      {
LABEL_66:
        v121 = "failed: dilation values incompatible with given tensor layout.";
        v123 = 259;
        mlir::OpState::emitOpError(this, &v121, &v129);
        v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v129);
        if (v129)
        {
          mlir::InFlightDiagnostic::report(&v129);
        }

        if (v139 != 1)
        {
LABEL_155:
          v53 = v125[0];
          if (v125[0] == v126)
          {
            goto LABEL_86;
          }

          goto LABEL_85;
        }

        if (v138 != &v139)
        {
          free(v138);
        }

        v45 = __p;
        if (__p)
        {
          v46 = v137;
          v47 = __p;
          if (v137 != __p)
          {
            do
            {
              v46 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v46 - 1);
            }

            while (v46 != v45);
            v47 = __p;
          }

          v137 = v45;
          operator delete(v47);
        }

        v48 = v134;
        if (v134)
        {
          v49 = v135;
          v50 = v134;
          if (v135 != v134)
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
            v50 = v134;
          }

          v135 = v48;
          operator delete(v50);
        }

        v55 = v132;
        v56 = v133;
LABEL_153:
        if (v55 != v56)
        {
          free(v55);
        }

        goto LABEL_155;
      }

      v25 = (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!v25)
      {
        goto LABEL_98;
      }

      v26 = *v25;
      {
        v27 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v28 = *(v26 + 8);
        v29 = *(v26 + 16);
        if (v29)
        {
          goto LABEL_40;
        }
      }

      else
      {
        mlir::arith::ExtUIOp::fold();
        v27 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v28 = *(v26 + 8);
        v29 = *(v26 + 16);
        if (v29)
        {
LABEL_40:
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
LABEL_96:
          if (v30 != &v28[2 * v29] && *v30 == v27)
          {
            v57 = v30[1];
LABEL_99:
            v120[0] = v25;
            v120[1] = v57;
            v58 = (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
            if (!v58)
            {
              goto LABEL_113;
            }

            v59 = *v58;
            {
              v60 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
              v61 = *(v59 + 8);
              v62 = *(v59 + 16);
              if (v62)
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
              if (v62)
              {
LABEL_102:
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
LABEL_111:
                if (v63 != &v61[2 * v62] && *v63 == v60)
                {
                  v69 = v63[1];
LABEL_114:
                  v119[0] = v58;
                  v119[1] = v69;
                  if (*(*this + 36))
                  {
                    v70 = *this - 16;
                  }

                  else
                  {
                    v70 = 0;
                  }

                  v71 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v70, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
                  if (!v71)
                  {
                    goto LABEL_131;
                  }

                  v72 = *v71;
                  {
                    v73 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
                    v74 = *(v72 + 8);
                    v75 = *(v72 + 16);
                    if (v75)
                    {
                      goto LABEL_120;
                    }
                  }

                  else
                  {
                    mlir::arith::ExtUIOp::fold();
                    v73 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
                    v74 = *(v72 + 8);
                    v75 = *(v72 + 16);
                    if (v75)
                    {
LABEL_120:
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
LABEL_129:
                      if (v76 != &v74[2 * v75] && *v76 == v73)
                      {
                        v82 = v76[1];
                        goto LABEL_132;
                      }

LABEL_131:
                      v82 = 0;
LABEL_132:
                      v118[0] = v71;
                      v118[1] = v82;
                      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v118);
                      v84 = mlir::CallableOpInterface::getArgAttrsAttr(v118);
                      v86 = (v84 + 8 * v85);
                      v129 = &v131;
                      v130 = 0x500000000;
                      v87 = (v86 - ArgAttrsAttr) >> 3;
                      if (v87 < 6)
                      {
                        v88 = 0;
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v129, &v131, v87, 8);
                        v88 = v130;
                      }

                      if (v86 != ArgAttrsAttr)
                      {
                        memcpy(v129 + 8 * v88, ArgAttrsAttr, v86 - ArgAttrsAttr);
                        v88 = v130;
                      }

                      LODWORD(v130) = v88 + ((v86 - ArgAttrsAttr) >> 3);
                      v117 = 0;
                      if (*(*this + 68) != 2)
                      {
                        v89 = *(*(*this + 72) + 88);
                        if (v89)
                        {
                          v124 = &v117;
                          v121 = v89;
                          DefiningOp = mlir::Value::getDefiningOp(&v121);
                          if (DefiningOp)
                          {
                            if (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v124, DefiningOp))
                            {
                              LODWORD(v130) = 0;
                              v91 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v117);
                              mlir::getIntValues<long long>(v91, v92, &v129, 1);
                            }
                          }
                        }
                      }

                      v93 = *this;
                      v115 = v129;
                      v94 = v130;
                      v95 = *(*(v93 + 16 * ((*(v93 + 44) >> 23) & 1) + 64) + 8);
                      v96 = mlir::CallableOpInterface::getArgAttrsAttr(v119);
                      v98 = v97;
                      v99 = *this + 16 * ((*(*this + 44) >> 23) & 1);
                      v100 = *(*(v99 + 112) + 8);
                      v124 = *(v99 + 88);
                      mlir::IntegerAttr::getValue(&v124, &v121);
                      if (v122 > 0x40)
                      {
                        v101 = *v121;
                        operator delete[](v121);
                      }

                      else
                      {
                        v101 = v121;
                      }

                      if (!mlir::mps::verifyConvolutionInputChannels(v93, v115, v94, v95, v96, v98, v100, v101))
                      {
                        goto LABEL_151;
                      }

                      v116 = *this;
                      v102 = mlir::CallableOpInterface::getArgAttrsAttr(v120);
                      v104 = v103;
                      v105 = *(*(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64) + 8);
                      v106 = mlir::CallableOpInterface::getArgAttrsAttr(v119);
                      v108 = v107;
                      v109 = *this + 16 * ((*(*this + 44) >> 23) & 1);
                      v110 = *(*(v109 + 112) + 8);
                      v124 = *(v109 + 88);
                      mlir::IntegerAttr::getValue(&v124, &v121);
                      if (v122 > 0x40)
                      {
                        v111 = *v121;
                        operator delete[](v121);
                      }

                      else
                      {
                        v111 = v121;
                      }

                      if (mlir::mps::verifyConvolutionOutputChannels(v116, v102, v104, v105, v106, v108, v110, v111))
                      {
                        v112 = *this;
                        v113 = mlir::CallableOpInterface::getArgAttrsAttr(v120);
                        v8 = mlir::mps::verifyConvolutionBatches(v112, v113, v114, v129, v130);
                      }

                      else
                      {
LABEL_151:
                        v8 = 0;
                      }

                      v56 = &v131;
                      v55 = v129;
                      goto LABEL_153;
                    }
                  }

                  v75 = 0;
                  v76 = v74;
                  goto LABEL_129;
                }

LABEL_113:
                v69 = 0;
                goto LABEL_114;
              }
            }

            v62 = 0;
            v63 = v61;
            goto LABEL_111;
          }

LABEL_98:
          v57 = 0;
          goto LABEL_99;
        }
      }

      v29 = 0;
      v30 = v28;
      goto LABEL_96;
    }
  }

LABEL_13:
  v127[0] = "failed: explicit padding incompatible with with given tensor data layout.";
  v128[8] = 259;
  mlir::OpState::emitOpError(this, v127, &v129);
  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v129);
  if (v129)
  {
    mlir::InFlightDiagnostic::report(&v129);
  }

  if (v139 == 1)
  {
    if (v138 != &v139)
    {
      free(v138);
    }

    v9 = __p;
    if (__p)
    {
      v10 = v137;
      v11 = __p;
      if (v137 != __p)
      {
        do
        {
          v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v137 = v9;
      operator delete(v11);
    }

    v12 = v134;
    if (v134)
    {
      v13 = v135;
      v14 = v134;
      if (v135 != v134)
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
        v14 = v134;
      }

      v135 = v12;
      operator delete(v14);
    }

    v44 = v132;
    if (v132 != v133)
    {
LABEL_87:
      free(v44);
    }
  }

LABEL_88:
  if (v140[0] != v141)
  {
    free(v140[0]);
  }

  return v8;
}

uint64_t mlir::mps::Conv3DWeightsGradientOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, void *a4, unint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v59[2] = *MEMORY[0x1E69E9840];
  v59[0] = a4;
  v59[1] = a5;
  if (a7)
  {
    v14 = *a7;
    v15 = a7[1];
    v16 = a7[2];
    v17 = *(a7 + 6);
  }

  else
  {
    v17 = 0;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
  }

  v48 = a6;
  v49[0] = 0;
  v50 = 0;
  v51 = v14;
  v52 = v15;
  v53 = v16;
  v54 = v17;
  v55 = a9;
  v56 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v48);
    if (v50 == 1)
    {
      v50 = 0;
    }

    mlir::OperationName::OperationName(v49, "mps.conv_3d_weights_gradient", 28, Context);
    v50 = 1;
  }

  v57 = a4;
  v58 = a5;
  v43 = 0;
  if (a5 < 3 || (v19.var0.var0 = mlir::UnknownLoc::get(this, a2), !mlir::mps::Conv3DWeightsGradientOpAdaptor::verify(&v48, v19)))
  {
    v35 = mlir::Float32Type::get(this, a2);
    v36 = mlir::UnrankedTensorType::get(v35);
    v37 = *(a11 + 8);
    if (v37 >= *(a11 + 12))
    {
LABEL_29:
      v39 = v36;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v37 + 1, 8);
      v36 = v39;
      LODWORD(v37) = *(a11 + 8);
    }

LABEL_26:
    *(*a11 + 8 * v37) = v36;
    ++*(a11 + 8);
    return 1;
  }

  v47[0] = (*(mlir::ValueRange::dereference_iterator(v59, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  v47[1] = (*(mlir::ValueRange::dereference_iterator(v59, 1) + 8) & 0xFFFFFFFFFFFFFFF8);
  mlir::ValueRange::ValueRange(&v44, v47, 2uLL);
  v44 = v57;
  v45 = 2;
  v44 = mlir::ValueRange::offset_base(&v44, 2);
  v45 = 0;
  v21 = mlir::ValueRange::dereference_iterator(&v44, 0);
  v47[0] = &v43;
  v44 = v21;
  DefiningOp = mlir::Value::getDefiningOp(&v44);
  if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(v47, DefiningOp) & 1) == 0)
  {
    v36 = mlir::UnrankedTensorType::get(v20);
    v37 = *(a11 + 8);
    if (v37 >= *(a11 + 12))
    {
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  v44 = v46;
  v45 = 0x500000000;
  v23 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v43);
  mlir::getIntValues<long long>(v23, v24, &v44, 1);
  v25 = v44;
  v26 = v45;
  if (!v45)
  {
    goto LABEL_31;
  }

  v27 = (v45 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  v28 = v44;
  if (v27 >= 3)
  {
    v29 = v27 + 1;
    v28 = v44 + 8 * (v29 & 0x3FFFFFFFFFFFFFFCLL);
    v30 = (v44 + 16);
    v31.i64[0] = -1;
    v31.i64[1] = -1;
    v32 = v29 & 0x3FFFFFFFFFFFFFFCLL;
    while (1)
    {
      v33 = vmovn_s64(vceqq_s64(v30[-1], v31));
      if (v33.i8[0])
      {
        v30[-1].i64[0] = 0x8000000000000000;
        if ((v33.i8[4] & 1) == 0)
        {
LABEL_18:
          v34 = vmovn_s64(vceqq_s64(*v30, v31));
          if ((v34.i8[0] & 1) == 0)
          {
            goto LABEL_19;
          }

          goto LABEL_23;
        }
      }

      else if ((v33.i8[4] & 1) == 0)
      {
        goto LABEL_18;
      }

      v30[-1].i64[1] = 0x8000000000000000;
      v34 = vmovn_s64(vceqq_s64(*v30, v31));
      if ((v34.i8[0] & 1) == 0)
      {
LABEL_19:
        if (v34.i8[4])
        {
          goto LABEL_24;
        }

        goto LABEL_15;
      }

LABEL_23:
      v30->i64[0] = 0x8000000000000000;
      if (v34.i8[4])
      {
LABEL_24:
        v30->i64[1] = 0x8000000000000000;
      }

LABEL_15:
      v30 += 2;
      v32 -= 4;
      if (!v32)
      {
        if (v29 == (v29 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_31;
        }

        goto LABEL_37;
      }
    }
  }

  do
  {
LABEL_37:
    if (*v28 == -1)
    {
      *v28 = 0x8000000000000000;
    }

    ++v28;
  }

  while (v28 != &v25[v26]);
LABEL_31:
  v40 = mlir::RankedTensorType::get(v25, v26, v20, 0);
  v41 = *(a11 + 8);
  if (v41 >= *(a11 + 12))
  {
    v42 = v40;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v41 + 1, 8);
    v40 = v42;
    LODWORD(v41) = *(a11 + 8);
  }

  *(*a11 + 8 * v41) = v40;
  ++*(a11 + 8);
  if (v44 != v46)
  {
    free(v44);
  }

  return 1;
}

BOOL mlir::mps::Conv3DWeightsGradientOpAdaptor::verify(mlir::mps::Conv3DWeightsGradientOpAdaptor *this, Location a2)
{
  v73 = *MEMORY[0x1E69E9840];
  v3 = *(this + 3);
  if (!v3)
  {
    v58 = "'mps.conv_3d_weights_gradient' op requires attribute 'data_layout'";
    v60 = 259;
    mlir::emitError(a2.var0.var0, &v58, &Value);
    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v72 != 1)
    {
      return v22;
    }

    if (v71 != &v72)
    {
      free(v71);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v70;
      v25 = __p;
      if (v70 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v70 = v23;
      operator delete(v25);
    }

    v26 = v67;
    if (v67)
    {
      v27 = v68;
      v28 = v67;
      if (v68 == v67)
      {
        goto LABEL_92;
      }

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
LABEL_91:
      v28 = v67;
LABEL_92:
      v68 = v26;
      operator delete(v28);
    }

LABEL_93:
    if (v65 != &v66)
    {
      free(v65);
    }

    return v22;
  }

  v57 = *(this + 4);
  if (!v57)
  {
    v58 = "'mps.conv_3d_weights_gradient' op requires attribute 'dilation_rates'";
    v60 = 259;
    mlir::emitError(a2.var0.var0, &v58, &Value);
    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v72 != 1)
    {
      return v22;
    }

    if (v71 != &v72)
    {
      free(v71);
    }

    v31 = __p;
    if (__p)
    {
      v32 = v70;
      v33 = __p;
      if (v70 != __p)
      {
        do
        {
          v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
        }

        while (v32 != v31);
        v33 = __p;
      }

      v70 = v31;
      operator delete(v33);
    }

    v26 = v67;
    if (v67)
    {
      v34 = v68;
      v28 = v67;
      if (v68 == v67)
      {
        goto LABEL_92;
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

      while (v34 != v26);
      goto LABEL_91;
    }

    goto LABEL_93;
  }

  v56 = *(this + 5);
  if (!v56)
  {
    v58 = "'mps.conv_3d_weights_gradient' op requires attribute 'explicit_padding'";
    v60 = 259;
    mlir::emitError(a2.var0.var0, &v58, &Value);
    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v72 != 1)
    {
      return v22;
    }

    if (v71 != &v72)
    {
      free(v71);
    }

    v37 = __p;
    if (__p)
    {
      v38 = v70;
      v39 = __p;
      if (v70 != __p)
      {
        do
        {
          v38 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v38 - 1);
        }

        while (v38 != v37);
        v39 = __p;
      }

      v70 = v37;
      operator delete(v39);
    }

    v26 = v67;
    if (v67)
    {
      v40 = v68;
      v28 = v67;
      if (v68 == v67)
      {
        goto LABEL_92;
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

      while (v40 != v26);
      goto LABEL_91;
    }

    goto LABEL_93;
  }

  v4 = *(this + 6);
  if (!v4)
  {
    v58 = "'mps.conv_3d_weights_gradient' op requires attribute 'groups'";
    v60 = 259;
    mlir::emitError(a2.var0.var0, &v58, &Value);
    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    if (Value)
    {
      mlir::InFlightDiagnostic::report(&Value);
    }

    if (v72 != 1)
    {
      return v22;
    }

    if (v71 != &v72)
    {
      free(v71);
    }

    v43 = __p;
    if (__p)
    {
      v44 = v70;
      v45 = __p;
      if (v70 != __p)
      {
        do
        {
          v44 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v44 - 1);
        }

        while (v44 != v43);
        v45 = __p;
      }

      v70 = v43;
      operator delete(v45);
    }

    v26 = v67;
    if (v67)
    {
      v46 = v68;
      v28 = v67;
      if (v68 == v67)
      {
        goto LABEL_92;
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

      while (v46 != v26);
      goto LABEL_91;
    }

    goto LABEL_93;
  }

  if (*(this + 7))
  {
    v55 = *(this + 8);
    if (v55)
    {
      v5 = *(this + 9);
      if (v5)
      {
        v58 = v4;
        Value = mlir::AffineMapAttr::getValue(&v58);
        if (mlir::Type::isUnsignedInteger(&Value, 64))
        {
          v58 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v55);
          v59 = v6;
          v51[0] = mlir::ElementsAttr::getType(&v58);
          Value = llvm::cast<mlir::ShapedType,mlir::Type>(v51);
          v64 = v7;
          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&Value);
          Type = 5;
          if (v9 == 1 && *ArgAttrsAttr == Type && (isSplat = v55, llvm::all_of<mlir::DenseIntElementsAttr,mlir::mps::Conv3DDataGradientOpAdaptor::verify(mlir::Location)::$_0>(&isSplat)) && (v52 = v55, *&v61 = mlir::ArrayAttr::getValue(&v52), *(&v61 + 1) = v10, v53 = mlir::ElementsAttr::isSplat(&v61), mlir::Type::isUnsignedInteger(&v53, 64)))
          {
            v58 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v57);
            v59 = v11;
            v51[0] = mlir::ElementsAttr::getType(&v58);
            Value = llvm::cast<mlir::ShapedType,mlir::Type>(v51);
            v64 = v12;
            v13 = mlir::CallableOpInterface::getArgAttrsAttr(&Value);
            Type = 5;
            if (v14 == 1 && *v13 == Type && (isSplat = v57, llvm::all_of<mlir::DenseIntElementsAttr,mlir::mps::Conv3DDataGradientOpAdaptor::verify(mlir::Location)::$_0>(&isSplat)) && (v52 = v57, *&v61 = mlir::ArrayAttr::getValue(&v52), *(&v61 + 1) = v15, v53 = mlir::ElementsAttr::isSplat(&v61), mlir::Type::isUnsignedInteger(&v53, 64)))
            {
              v58 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v56);
              v59 = v16;
              Type = mlir::ElementsAttr::getType(&v58);
              Value = llvm::cast<mlir::ShapedType,mlir::Type>(&Type);
              v64 = v17;
              v18 = mlir::CallableOpInterface::getArgAttrsAttr(&Value);
              v61 = xmmword_1E0982930;
              if (v19 == 2 && (*v18 == v61 ? (v20 = v18[1] == *(&v61 + 1)) : (v20 = 0), v20 && (v53 = v56, v51[0] = mlir::ArrayAttr::getValue(&v53), v51[1] = v21, isSplat = mlir::ElementsAttr::isSplat(v51), mlir::Type::isUnsignedInteger(&isSplat, 64))))
              {
                if ((*(v3 + 8) - 7) >= 2)
                {
                  v49 = "'mps.conv_3d_weights_gradient' op attribute 'data_layout' failed to satisfy constraint: valid TensorDataLayout is one of NDHWC or NCDHW";
                }

                else
                {
                  if ((*(v5 + 8) - 9) < 2)
                  {
                    return 1;
                  }

                  v49 = "'mps.conv_3d_weights_gradient' op attribute 'weights_layout' failed to satisfy constraint: valid TensorDataLayout is one of DHWIO or OIDHW";
                }
              }

              else
              {
                v49 = "'mps.conv_3d_weights_gradient' op attribute 'explicit_padding' failed to satisfy constraint: ui64 elements attribute of shape {5, 2}";
              }
            }

            else
            {
              v49 = "'mps.conv_3d_weights_gradient' op attribute 'dilation_rates' failed to satisfy constraint: positive ui64 elements attribute of shape {5}";
            }
          }

          else
          {
            v49 = "'mps.conv_3d_weights_gradient' op attribute 'strides' failed to satisfy constraint: positive ui64 elements attribute of shape {5}";
          }
        }

        else
        {
          v49 = "'mps.conv_3d_weights_gradient' op attribute 'groups' failed to satisfy constraint: 64-bit unsigned integer attribute";
        }
      }

      else
      {
        v49 = "'mps.conv_3d_weights_gradient' op requires attribute 'weights_layout'";
      }
    }

    else
    {
      v49 = "'mps.conv_3d_weights_gradient' op requires attribute 'strides'";
    }

    v58 = v49;
    v60 = 259;
    mlir::emitError(a2.var0.var0, &v58, &Value);
    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&Value);
    return v22;
  }

  v58 = "'mps.conv_3d_weights_gradient' op requires attribute 'padding_style'";
  v60 = 259;
  mlir::emitError(a2.var0.var0, &v58, &Value);
  v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
  if (Value)
  {
    mlir::InFlightDiagnostic::report(&Value);
  }

  if (v72 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v64);
  }

  return v22;
}

uint64_t mlir::mps::Conv3DWeightsGradientOp::verify(mlir::mps::Conv3DWeightsGradientOp *this)
{
  v146[6] = *MEMORY[0x1E69E9840];
  v145[0] = v146;
  v145[1] = 0x600000000;
  v134 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
  v2 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v134);
  mlir::getIntValues<long long>(v2, v3, v145, 1);
  v4 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  v5 = *(*(v4 + 96) + 8);
  if (v5 != 3)
  {
    if (v5)
    {
      goto LABEL_29;
    }

    v6 = *v145[0];
    if (*(*(v4 + 64) + 8) == 7)
    {
      if (!v6 && !*(v145[0] + 1) && !*(v145[0] + 2))
      {
        v7 = 24;
        goto LABEL_12;
      }
    }

    else if (!v6 && !*(v145[0] + 1) && !*(v145[0] + 8))
    {
      v7 = 72;
LABEL_12:
      if (*(v145[0] + v7))
      {
        goto LABEL_13;
      }

LABEL_29:
      v132[0] = v133;
      v132[1] = 0x600000000;
      v134 = *(v4 + 104);
      v17 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v134);
      mlir::getIntValues<long long>(v17, v18, v132, 1);
      if (*v132[0] != 1)
      {
        goto LABEL_49;
      }

      v19 = *this + 64;
      v20 = (*(*this + 44) >> 23) & 1;
      v21 = 32;
      if (*(*(v19 + 16 * v20) + 8) == 7)
      {
        v21 = 8;
      }

      if (*(v132[0] + v21) != 1)
      {
LABEL_49:
        v130[0] = "failed: strides incompatible with given tensor data layout.";
        v131[8] = 259;
        mlir::OpState::emitOpError(this, v130, &v134);
        v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v134);
        if (v134)
        {
          mlir::InFlightDiagnostic::report(&v134);
        }

        if (v144 != 1)
        {
          goto LABEL_89;
        }

        if (v143 != &v144)
        {
          free(v143);
        }

        v40 = __p;
        if (__p)
        {
          v41 = v142;
          v42 = __p;
          if (v142 != __p)
          {
            do
            {
              v41 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v41 - 1);
            }

            while (v41 != v40);
            v42 = __p;
          }

          v142 = v40;
          operator delete(v42);
        }

        v43 = v139;
        if (v139)
        {
          v44 = v140;
          v45 = v139;
          if (v140 != v139)
          {
            do
            {
              v47 = *--v44;
              v46 = v47;
              *v44 = 0;
              if (v47)
              {
                operator delete[](v46);
              }
            }

            while (v44 != v43);
            v45 = v139;
          }

          v140 = v43;
          operator delete(v45);
        }

        v57 = v137;
        if (v137 == v138)
        {
LABEL_89:
          v48 = v132[0];
          if (v132[0] == v133)
          {
            goto LABEL_91;
          }

          goto LABEL_90;
        }

LABEL_88:
        free(v57);
        goto LABEL_89;
      }

      v130[0] = v131;
      v130[1] = 0x600000000;
      v134 = *(v19 + 16 * v20 + 8);
      v22 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v134);
      mlir::getIntValues<long long>(v22, v23, v130, 1);
      if (*v130[0] != 1)
      {
        goto LABEL_69;
      }

      v24 = *this;
      v25 = 4;
      if (*(*(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64) + 8) == 7)
      {
        v25 = 1;
      }

      if (v130[0][v25] != 1)
      {
LABEL_69:
        v126 = "failed: dilation values incompatible with given tensor layout.";
        v128 = 259;
        mlir::OpState::emitOpError(this, &v126, &v134);
        v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v134);
        if (v134)
        {
          mlir::InFlightDiagnostic::report(&v134);
        }

        if (v144 != 1)
        {
LABEL_153:
          v57 = v130[0];
          if (v130[0] == v131)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        }

        if (v143 != &v144)
        {
          free(v143);
        }

        v49 = __p;
        if (__p)
        {
          v50 = v142;
          v51 = __p;
          if (v142 != __p)
          {
            do
            {
              v50 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v50 - 1);
            }

            while (v50 != v49);
            v51 = __p;
          }

          v142 = v49;
          operator delete(v51);
        }

        v52 = v139;
        if (v139)
        {
          v53 = v140;
          v54 = v139;
          if (v140 != v139)
          {
            do
            {
              v56 = *--v53;
              v55 = v56;
              *v53 = 0;
              if (v56)
              {
                operator delete[](v55);
              }
            }

            while (v53 != v52);
            v54 = v139;
          }

          v140 = v52;
          operator delete(v54);
        }

        v59 = v137;
        v60 = v138;
LABEL_151:
        if (v59 != v60)
        {
          free(v59);
        }

        goto LABEL_153;
      }

      v26 = *(v24 + 36);
      v27 = v24 - 16;
      if (v26)
      {
        v28 = v27;
      }

      else
      {
        v28 = 0;
      }

      v29 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v28, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (!v29)
      {
        goto LABEL_101;
      }

      v30 = *v29;
      {
        v31 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v32 = *(v30 + 8);
        v33 = *(v30 + 16);
        if (v33)
        {
          goto LABEL_43;
        }
      }

      else
      {
        mlir::arith::ExtUIOp::fold();
        v31 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v32 = *(v30 + 8);
        v33 = *(v30 + 16);
        if (v33)
        {
LABEL_43:
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
LABEL_99:
          if (v34 != &v32[2 * v33] && *v34 == v31)
          {
            v61 = v34[1];
LABEL_102:
            v125[0] = v29;
            v125[1] = v61;
            ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v125);
            v63 = mlir::CallableOpInterface::getArgAttrsAttr(v125);
            v65 = (v63 + 8 * v64);
            v134 = &v136;
            v135 = 0x500000000;
            v66 = (v65 - ArgAttrsAttr) >> 3;
            if (v66 < 6)
            {
              v67 = 0;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v134, &v136, v66, 8);
              v67 = v135;
            }

            if (v65 != ArgAttrsAttr)
            {
              memcpy(v134 + 8 * v67, ArgAttrsAttr, v65 - ArgAttrsAttr);
              v67 = v135;
            }

            LODWORD(v135) = v67 + ((v65 - ArgAttrsAttr) >> 3);
            v124 = 0;
            v68 = *(*(*this + 72) + 88);
            v123[0] = &v124;
            v126 = v68;
            DefiningOp = mlir::Value::getDefiningOp(&v126);
            if (DefiningOp && mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(v123, DefiningOp))
            {
              LODWORD(v135) = 0;
              v70 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v124);
              mlir::getIntValues<long long>(v70, v71, &v134, 1);
            }

            v72 = (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
            if (!v72)
            {
              goto LABEL_124;
            }

            v73 = *v72;
            {
              v74 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
              v75 = *(v73 + 8);
              v76 = *(v73 + 16);
              if (v76)
              {
                goto LABEL_113;
              }
            }

            else
            {
              mlir::arith::ExtUIOp::fold();
              v74 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
              v75 = *(v73 + 8);
              v76 = *(v73 + 16);
              if (v76)
              {
LABEL_113:
                v77 = v75;
                v78 = v76;
                do
                {
                  v79 = v78 >> 1;
                  v80 = &v77[2 * (v78 >> 1)];
                  v82 = *v80;
                  v81 = v80 + 2;
                  v78 += ~(v78 >> 1);
                  if (v82 < v74)
                  {
                    v77 = v81;
                  }

                  else
                  {
                    v78 = v79;
                  }
                }

                while (v78);
LABEL_122:
                if (v77 != &v75[2 * v76] && *v77 == v74)
                {
                  v83 = v77[1];
LABEL_125:
                  v123[0] = v72;
                  v123[1] = v83;
                  v84 = (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
                  if (!v84)
                  {
                    goto LABEL_139;
                  }

                  v85 = *v84;
                  {
                    v86 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
                    v87 = *(v85 + 8);
                    v88 = *(v85 + 16);
                    if (v88)
                    {
                      goto LABEL_128;
                    }
                  }

                  else
                  {
                    mlir::arith::ExtUIOp::fold();
                    v86 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
                    v87 = *(v85 + 8);
                    v88 = *(v85 + 16);
                    if (v88)
                    {
LABEL_128:
                      v89 = v87;
                      v90 = v88;
                      do
                      {
                        v91 = v90 >> 1;
                        v92 = &v89[2 * (v90 >> 1)];
                        v94 = *v92;
                        v93 = v92 + 2;
                        v90 += ~(v90 >> 1);
                        if (v94 < v86)
                        {
                          v89 = v93;
                        }

                        else
                        {
                          v90 = v91;
                        }
                      }

                      while (v90);
LABEL_137:
                      if (v89 != &v87[2 * v88] && *v89 == v86)
                      {
                        v95 = v89[1];
                        goto LABEL_140;
                      }

LABEL_139:
                      v95 = 0;
LABEL_140:
                      v122[0] = v84;
                      v122[1] = v95;
                      v120 = *this;
                      v96 = mlir::CallableOpInterface::getArgAttrsAttr(v123);
                      v98 = v97;
                      v99 = (*this + 16 * ((*(*this + 44) >> 23) & 1));
                      v100 = *(v99[8] + 8);
                      v101 = v134;
                      v102 = v135;
                      v103 = *(v99[14] + 8);
                      v129 = v99[11];
                      mlir::IntegerAttr::getValue(&v129, &v126);
                      if (v127 > 0x40)
                      {
                        v104 = *v126;
                        operator delete[](v126);
                      }

                      else
                      {
                        v104 = v126;
                      }

                      if (!mlir::mps::verifyConvolutionOutputChannels(v120, v96, v98, v100, v101, v102, v103, v104))
                      {
                        goto LABEL_149;
                      }

                      v121 = *this;
                      v105 = mlir::CallableOpInterface::getArgAttrsAttr(v122);
                      v107 = v106;
                      v108 = (*this + 16 * ((*(*this + 44) >> 23) & 1));
                      v109 = *(v108[8] + 8);
                      v110 = v134;
                      v111 = v135;
                      v112 = *(v108[14] + 8);
                      v129 = v108[11];
                      mlir::IntegerAttr::getValue(&v129, &v126);
                      if (v127 > 0x40)
                      {
                        v113 = *v126;
                        operator delete[](v126);
                      }

                      else
                      {
                        v113 = v126;
                      }

                      if (mlir::mps::verifyConvolutionInputChannels(v121, v105, v107, v109, v110, v111, v112, v113))
                      {
                        v114 = *this;
                        v115 = mlir::CallableOpInterface::getArgAttrsAttr(v122);
                        v117 = v116;
                        v118 = mlir::CallableOpInterface::getArgAttrsAttr(v123);
                        v8 = mlir::mps::verifyConvolutionBatches(v114, v115, v117, v118, v119);
                      }

                      else
                      {
LABEL_149:
                        v8 = 0;
                      }

                      v60 = &v136;
                      v59 = v134;
                      goto LABEL_151;
                    }
                  }

                  v88 = 0;
                  v89 = v87;
                  goto LABEL_137;
                }

LABEL_124:
                v83 = 0;
                goto LABEL_125;
              }
            }

            v76 = 0;
            v77 = v75;
            goto LABEL_122;
          }

LABEL_101:
          v61 = 0;
          goto LABEL_102;
        }
      }

      v33 = 0;
      v34 = v32;
      goto LABEL_99;
    }
  }

LABEL_13:
  v132[0] = "failed: explicit padding incompatible with with given tensor data layout.";
  v133[8] = 259;
  mlir::OpState::emitOpError(this, v132, &v134);
  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v134);
  if (v134)
  {
    mlir::InFlightDiagnostic::report(&v134);
  }

  if (v144 == 1)
  {
    if (v143 != &v144)
    {
      free(v143);
    }

    v9 = __p;
    if (__p)
    {
      v10 = v142;
      v11 = __p;
      if (v142 != __p)
      {
        do
        {
          v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v142 = v9;
      operator delete(v11);
    }

    v12 = v139;
    if (v139)
    {
      v13 = v140;
      v14 = v139;
      if (v140 != v139)
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
        v14 = v139;
      }

      v140 = v12;
      operator delete(v14);
    }

    v48 = v137;
    if (v137 != v138)
    {
LABEL_90:
      free(v48);
    }
  }

LABEL_91:
  if (v145[0] != v146)
  {
    free(v145[0]);
  }

  return v8;
}

uint64_t mlir::mps::DepthwiseConv2DOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, AttributeStorage *a3, uint64_t a4, unint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v111 = *MEMORY[0x1E69E9840];
  v109 = a4;
  v110 = a5;
  if (a7)
  {
    v16 = *a7;
    v17 = a7[1];
    v18 = a7[2];
  }

  else
  {
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
  }

  v99 = a6;
  v100[0] = 0;
  v101 = 0;
  v102 = v16;
  v103 = v17;
  v104 = v18;
  v19 = a5;
  v105 = a9;
  v106 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v99);
    if (v101 == 1)
    {
      v101 = 0;
    }

    mlir::OperationName::OperationName(v100, "mps.depthwise_conv_2d", 21, Context);
    v101 = 1;
    v19 = v110;
  }

  v107 = a4;
  v108 = a5;
  if (v19 < 2 || (v21.var0.var0 = mlir::UnknownLoc::get(this, a2), !mlir::mps::DepthwiseConv2DOpAdaptor::verify(&v99, v21)))
  {
    v40 = mlir::Float32Type::get(this, a2);
    v41 = mlir::UnrankedTensorType::get(v40);
    v42 = *(a11 + 8);
    if (v42 >= *(a11 + 12))
    {
      v82 = v41;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v42 + 1, 8);
      v41 = v82;
      LODWORD(v42) = *(a11 + 8);
    }

    *(*a11 + 8 * v42) = v41;
    ++*(a11 + 8);
    return 1;
  }

  v22 = *(&v104 + 1);
  v88 = *(&v102 + 1);
  v23 = v102;
  v89 = v104;
  v24 = *(&v103 + 1);
  v87 = v103;
  v25 = mlir::ValueRange::dereference_iterator(&v109, 0);
  v26 = mlir::ValueRange::dereference_iterator(&v109, 1);
  v27 = *(v25 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v27 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v27 = 0;
  }

  v86 = v27;
  if (v27)
  {
    mlir::ArrayAttr::getValue(&v86);
    if (v28 != 4)
    {
      v45.var0.var0 = a3;
      return mlir::emitOptionalError<char const(&)[66]>(a2, v45, "DepthwiseConv2DOp input should be rank 4");
    }
  }

  v96 = v98;
  v97 = 0x400000000;
  v93 = v95;
  v94 = 0x400000000;
  v90 = v92;
  v91 = 0x400000000;
  v29 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v89);
  mlir::getIntValues<long long>(v29, v30, &v96, 1);
  v31 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v88);
  mlir::getIntValues<long long>(v31, v32, &v93, 1);
  v33 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v87);
  mlir::getIntValues<long long>(v33, v34, &v90, 1);
  v35 = *(v23 + 8);
  if (v35 == 1)
  {
    if (v97)
    {
      v46 = 0;
      v47 = 0;
      v38 = 0;
      v48 = 8 * v97;
      while (1)
      {
        v37 = *(v96 + v46);
        if (v46 > 1)
        {
          if (v46 == 2)
          {
            v38 = *(v96 + v46);
            v37 = v47;
          }

          else
          {
            if (v46 != 3)
            {
LABEL_125:
              v78.var0.var0 = a3;
              result = mlir::emitOptionalError<char const(&)[66]>(a2, v78, "stride num dimensions should be <= 4");
              goto LABEL_128;
            }

            v49 = v37 == 1;
            v37 = v47;
            if (!v49)
            {
              v79 = "stride != 1 not supported for dim 0";
              goto LABEL_127;
            }
          }
        }

        else if (v46)
        {
          if (v46 != 1)
          {
            goto LABEL_125;
          }
        }

        else
        {
          v49 = v37 == 1;
          v37 = v47;
          if (!v49)
          {
            v79 = "stride != 1 not supported for dim 3";
            goto LABEL_127;
          }
        }

        ++v46;
        v47 = v37;
        v48 -= 8;
        if (!v48)
        {
          goto LABEL_66;
        }
      }
    }

    v38 = 0;
    v37 = 0;
LABEL_66:
    if (v94)
    {
      v56 = 0;
      v57 = 0;
      v53 = 0;
      v58 = 8 * v94;
      while (1)
      {
        v52 = *(v93 + v56);
        if (v56 > 1)
        {
          if (v56 == 2)
          {
            v53 = *(v93 + v56);
            v52 = v57;
          }

          else
          {
            if (v56 != 3)
            {
LABEL_124:
              v77.var0.var0 = a3;
              result = mlir::emitOptionalError<char const(&)[39]>(a2, v77, "dilationRate num dimensions should be <= 4");
              goto LABEL_128;
            }

            v49 = v52 == 1;
            v52 = v57;
            if (!v49)
            {
              v79 = "dilationRate != 1 not supported for dim 0";
              goto LABEL_127;
            }
          }
        }

        else if (v56)
        {
          if (v56 != 1)
          {
            goto LABEL_124;
          }
        }

        else
        {
          v49 = v52 == 1;
          v52 = v57;
          if (!v49)
          {
LABEL_79:
            v79 = "dilationRate != 1 not supported for dim 3";
            goto LABEL_127;
          }
        }

        ++v56;
        v57 = v52;
        v58 -= 8;
        if (!v58)
        {
          goto LABEL_101;
        }
      }
    }

    v53 = 0;
    v52 = 0;
LABEL_101:
    if (v91)
    {
      v69 = 0;
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v63 = 0;
      v70 = 8 * v91;
      do
      {
        v71 = *(v90 + v69);
        if (v69 == 5)
        {
          v72 = *(v90 + v69);
        }

        else
        {
          v72 = v61;
        }

        if (v69 == 4)
        {
          v72 = v61;
          v73 = *(v90 + v69);
        }

        else
        {
          v73 = v60;
        }

        if (v69 == 3)
        {
          v74 = *(v90 + v69);
        }

        else
        {
          v74 = v63;
        }

        if (v69 == 2)
        {
          v74 = v63;
        }

        else
        {
          v71 = v62;
        }

        if (v69 > 3)
        {
          v61 = v72;
          v60 = v73;
        }

        else
        {
          v63 = v74;
          v62 = v71;
        }

        ++v69;
        v70 -= 8;
      }

      while (v70);
      goto LABEL_121;
    }

    goto LABEL_120;
  }

  if (v35)
  {
    v50.var0.var0 = a3;
    result = mlir::emitOptionalError<char const(&)[66]>(a2, v50, "Unsupported dataLayout");
    goto LABEL_128;
  }

  if (!v97)
  {
    v38 = 0;
    v37 = 0;
LABEL_51:
    if (v94)
    {
      v51 = 0;
      v52 = 0;
      v53 = 0;
      v54 = 8 * v94;
      while (1)
      {
        v55 = *(v93 + v51);
        if (v51 > 1)
        {
          if (v51 == 2)
          {
            v52 = *(v93 + v51);
          }

          else
          {
            v53 = *(v93 + v51);
            if (v51 != 3)
            {
              goto LABEL_124;
            }
          }
        }

        else if (v51)
        {
          if (v51 != 1)
          {
            goto LABEL_124;
          }

          if (v55 != 1)
          {
            v79 = "dilationRate != 1 not supported for dim 2";
            goto LABEL_127;
          }
        }

        else if (v55 != 1)
        {
          goto LABEL_79;
        }

        ++v51;
        v54 -= 8;
        if (!v54)
        {
          goto LABEL_81;
        }
      }
    }

    v53 = 0;
    v52 = 0;
LABEL_81:
    if (v91)
    {
      v59 = 0;
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v63 = 0;
      v64 = 8 * v91;
      do
      {
        v65 = *(v90 + v59);
        if (v59 == 7)
        {
          v66 = *(v90 + v59);
        }

        else
        {
          v66 = v61;
        }

        if (v59 == 6)
        {
          v66 = v61;
          v67 = *(v90 + v59);
        }

        else
        {
          v67 = v60;
        }

        if (v59 == 5)
        {
          v68 = *(v90 + v59);
        }

        else
        {
          v68 = v63;
        }

        if (v59 == 4)
        {
          v68 = v63;
        }

        else
        {
          v65 = v62;
        }

        if (v59 > 5)
        {
          v61 = v66;
          v60 = v67;
        }

        else
        {
          v63 = v68;
          v62 = v65;
        }

        ++v59;
        v64 -= 8;
      }

      while (v64);
      goto LABEL_121;
    }

LABEL_120:
    v63 = 0;
    v62 = 0;
    v61 = 0;
    v60 = 0;
LABEL_121:
    v85 = 0;
    memset(v84, 0, sizeof(v84));
    mlir::mps::buildConv2DDescriptor(v25, v26, 1, v38, v37, v53, v52, v60, v84, v61, v62, v63, *(v24 + 8), v35, *(v22 + 8), 0, 0, 0, 1);
    v83 = 0;
    v75 = *(mlir::ValueRange::dereference_iterator(&v109, 0) + 8);
    v76 = mlir::ValueRange::dereference_iterator(&v109, 1);
    {
      llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a11, v83);
      result = 1;
    }

    else
    {
      result = 0;
    }

    goto LABEL_128;
  }

  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 8 * v97;
  while (1)
  {
    v44 = *(v96 + v36);
    if (v36 > 1)
    {
      break;
    }

    if (v36)
    {
      if (v36 != 1)
      {
        goto LABEL_126;
      }

      if (v44 != 1)
      {
        v79 = "stride != 1 not supported for dim 2 of NCHW";
        goto LABEL_127;
      }
    }

    else if (v44 != 1)
    {
      v79 = "stride != 1 not supported for dim 3 of NCHW";
      goto LABEL_127;
    }

LABEL_23:
    ++v36;
    v39 -= 8;
    if (!v39)
    {
      goto LABEL_51;
    }
  }

  if (v36 == 2)
  {
    v37 = *(v96 + v36);
    goto LABEL_23;
  }

  v38 = *(v96 + v36);
  if (v36 == 3)
  {
    goto LABEL_23;
  }

LABEL_126:
  v79 = "stride attr num dimensions should be <= 4";
LABEL_127:
  v80.var0.var0 = a3;
  result = mlir::emitOptionalError<char const(&)[66]>(a2, v80, v79);
LABEL_128:
  v81 = result;
  if (v90 != v92)
  {
    free(v90);
    result = v81;
  }

  if (v93 != v95)
  {
    free(v93);
    result = v81;
  }

  if (v96 != v98)
  {
    free(v96);
    return v81;
  }

  return result;
}

BOOL mlir::mps::DepthwiseConv2DOpAdaptor::verify(mlir::mps::DepthwiseConv2DOpAdaptor *this, Location a2)
{
  v69 = *MEMORY[0x1E69E9840];
  if (!*(this + 3))
  {
    v54 = "'mps.depthwise_conv_2d' op requires attribute 'data_layout'";
    v56 = 259;
    mlir::emitError(a2.var0.var0, &v54, &v59);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
    if (v59)
    {
      mlir::InFlightDiagnostic::report(&v59);
    }

    if (v68 != 1)
    {
      return v19;
    }

    if (v67 != &v68)
    {
      free(v67);
    }

    v20 = __p;
    if (__p)
    {
      v21 = v66;
      v22 = __p;
      if (v66 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v66 = v20;
      operator delete(v22);
    }

    v23 = v63;
    if (v63)
    {
      v24 = v64;
      v25 = v63;
      if (v64 == v63)
      {
        goto LABEL_86;
      }

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
LABEL_85:
      v25 = v63;
LABEL_86:
      v64 = v23;
      operator delete(v25);
    }

LABEL_87:
    if (v61 != &v62)
    {
      free(v61);
    }

    return v19;
  }

  v53 = *(this + 4);
  if (!v53)
  {
    v54 = "'mps.depthwise_conv_2d' op requires attribute 'dilation_rates'";
    v56 = 259;
    mlir::emitError(a2.var0.var0, &v54, &v59);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
    if (v59)
    {
      mlir::InFlightDiagnostic::report(&v59);
    }

    if (v68 != 1)
    {
      return v19;
    }

    if (v67 != &v68)
    {
      free(v67);
    }

    v28 = __p;
    if (__p)
    {
      v29 = v66;
      v30 = __p;
      if (v66 != __p)
      {
        do
        {
          v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
        }

        while (v29 != v28);
        v30 = __p;
      }

      v66 = v28;
      operator delete(v30);
    }

    v23 = v63;
    if (v63)
    {
      v31 = v64;
      v25 = v63;
      if (v64 == v63)
      {
        goto LABEL_86;
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

      while (v31 != v23);
      goto LABEL_85;
    }

    goto LABEL_87;
  }

  v52 = *(this + 5);
  if (!v52)
  {
    v54 = "'mps.depthwise_conv_2d' op requires attribute 'explicit_padding'";
    v56 = 259;
    mlir::emitError(a2.var0.var0, &v54, &v59);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
    if (v59)
    {
      mlir::InFlightDiagnostic::report(&v59);
    }

    if (v68 != 1)
    {
      return v19;
    }

    if (v67 != &v68)
    {
      free(v67);
    }

    v34 = __p;
    if (__p)
    {
      v35 = v66;
      v36 = __p;
      if (v66 != __p)
      {
        do
        {
          v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
        }

        while (v35 != v34);
        v36 = __p;
      }

      v66 = v34;
      operator delete(v36);
    }

    v23 = v63;
    if (v63)
    {
      v37 = v64;
      v25 = v63;
      if (v64 == v63)
      {
        goto LABEL_86;
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

      while (v37 != v23);
      goto LABEL_85;
    }

    goto LABEL_87;
  }

  if (!*(this + 6))
  {
    v54 = "'mps.depthwise_conv_2d' op requires attribute 'padding_style'";
    v56 = 259;
    mlir::emitError(a2.var0.var0, &v54, &v59);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
    if (v59)
    {
      mlir::InFlightDiagnostic::report(&v59);
    }

    if (v68 != 1)
    {
      return v19;
    }

    if (v67 != &v68)
    {
      free(v67);
    }

    v40 = __p;
    if (__p)
    {
      v41 = v66;
      v42 = __p;
      if (v66 != __p)
      {
        do
        {
          v41 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v41 - 1);
        }

        while (v41 != v40);
        v42 = __p;
      }

      v66 = v40;
      operator delete(v42);
    }

    v23 = v63;
    if (v63)
    {
      v43 = v64;
      v25 = v63;
      if (v64 == v63)
      {
        goto LABEL_86;
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

      while (v43 != v23);
      goto LABEL_85;
    }

    goto LABEL_87;
  }

  v51 = *(this + 7);
  if (v51)
  {
    if (*(this + 8))
    {
      v54 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v51);
      v55 = v3;
      v48[0] = mlir::ElementsAttr::getType(&v54);
      v59 = llvm::cast<mlir::ShapedType,mlir::Type>(v48);
      v60 = v4;
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v59);
      Type = 4;
      if (v6 == 1 && *ArgAttrsAttr == Type && (v49 = v51, *&v57 = mlir::ArrayAttr::getValue(&v49), *(&v57 + 1) = v7, isSplat = mlir::ElementsAttr::isSplat(&v57), mlir::Type::isUnsignedInteger(&isSplat, 64)))
      {
        v54 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v53);
        v55 = v8;
        v48[0] = mlir::ElementsAttr::getType(&v54);
        v59 = llvm::cast<mlir::ShapedType,mlir::Type>(v48);
        v60 = v9;
        v10 = mlir::CallableOpInterface::getArgAttrsAttr(&v59);
        Type = 4;
        if (v11 == 1 && *v10 == Type && (v49 = v53, *&v57 = mlir::ArrayAttr::getValue(&v49), *(&v57 + 1) = v12, isSplat = mlir::ElementsAttr::isSplat(&v57), mlir::Type::isUnsignedInteger(&isSplat, 64)))
        {
          v54 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v52);
          v55 = v13;
          Type = mlir::ElementsAttr::getType(&v54);
          v59 = llvm::cast<mlir::ShapedType,mlir::Type>(&Type);
          v60 = v14;
          v15 = mlir::CallableOpInterface::getArgAttrsAttr(&v59);
          v57 = xmmword_1E097BBD0;
          if (v16 == 2 && *v15 == v57 && v15[1] == *(&v57 + 1))
          {
            v49 = v52;
            v48[0] = mlir::ArrayAttr::getValue(&v49);
            v48[1] = v18;
            isSplat = mlir::ElementsAttr::isSplat(v48);
            if (mlir::Type::isUnsignedInteger(&isSplat, 64))
            {
              return 1;
            }
          }

          v46 = "'mps.depthwise_conv_2d' op attribute 'explicit_padding' failed to satisfy constraint: ui64 elements attribute of shape {4, 2}";
        }

        else
        {
          v46 = "'mps.depthwise_conv_2d' op attribute 'dilation_rates' failed to satisfy constraint: ui64 elements attribute of shape {4}";
        }
      }

      else
      {
        v46 = "'mps.depthwise_conv_2d' op attribute 'strides' failed to satisfy constraint: ui64 elements attribute of shape {4}";
      }
    }

    else
    {
      v46 = "'mps.depthwise_conv_2d' op requires attribute 'weights_layout'";
    }

    v54 = v46;
    v56 = 259;
    mlir::emitError(a2.var0.var0, &v54, &v59);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v59);
    return v19;
  }

  v54 = "'mps.depthwise_conv_2d' op requires attribute 'strides'";
  v56 = 259;
  mlir::emitError(a2.var0.var0, &v54, &v59);
  v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
  if (v59)
  {
    mlir::InFlightDiagnostic::report(&v59);
  }

  if (v68 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v60);
  }

  return v19;
}

uint64_t mlir::mps::DepthwiseConv2DDataGradientOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, AttributeStorage *a3, uint64_t a4, unint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v42[2] = *MEMORY[0x1E69E9840];
  v42[0] = a4;
  v42[1] = a5;
  if (a7)
  {
    v16 = *a7;
    v17 = a7[1];
    v18 = a7[2];
  }

  else
  {
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
  }

  v32 = a6;
  v33[0] = 0;
  v34 = 0;
  v35 = v16;
  v36 = v17;
  v37 = v18;
  v38 = a9;
  v39 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v32);
    if (v34 == 1)
    {
      v34 = 0;
    }

    mlir::OperationName::OperationName(v33, "mps.depthwise_conv_2d_data_gradient", 35, Context);
    v34 = 1;
  }

  v40 = a4;
  v41 = a5;
  if (a5 < 3 || (v20.var0.var0 = mlir::UnknownLoc::get(this, a2), !mlir::mps::DepthwiseConv2DDataGradientOpAdaptor::verify(&v32, v20)))
  {
    v26 = mlir::Float32Type::get(this, a2);
    v27 = mlir::UnrankedTensorType::get(v26);
    v28 = *(a11 + 8);
    if (v28 >= *(a11 + 12))
    {
      v30 = v27;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v28 + 1, 8);
      v27 = v30;
      LODWORD(v28) = *(a11 + 8);
    }

    *(*a11 + 8 * v28) = v27;
    goto LABEL_17;
  }

  v21 = mlir::ValueRange::dereference_iterator(v42, 0);
  v22 = mlir::ValueRange::dereference_iterator(v42, 1);
  v23 = mlir::ValueRange::dereference_iterator(v42, 2);
  v31 = 0;
  {
    v24 = v31;
    v25 = *(a11 + 8);
    if (v25 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v25 + 1, 8);
      LODWORD(v25) = *(a11 + 8);
    }

    *(*a11 + 8 * v25) = v24;
LABEL_17:
    ++*(a11 + 8);
    return 1;
  }

  return 0;
}

BOOL mlir::mps::DepthwiseConv2DDataGradientOpAdaptor::verify(mlir::mps::DepthwiseConv2DDataGradientOpAdaptor *this, Location a2)
{
  v69 = *MEMORY[0x1E69E9840];
  if (!*(this + 3))
  {
    v54 = "'mps.depthwise_conv_2d_data_gradient' op requires attribute 'data_layout'";
    v56 = 259;
    mlir::emitError(a2.var0.var0, &v54, &v59);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
    if (v59)
    {
      mlir::InFlightDiagnostic::report(&v59);
    }

    if (v68 != 1)
    {
      return v19;
    }

    if (v67 != &v68)
    {
      free(v67);
    }

    v20 = __p;
    if (__p)
    {
      v21 = v66;
      v22 = __p;
      if (v66 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v66 = v20;
      operator delete(v22);
    }

    v23 = v63;
    if (v63)
    {
      v24 = v64;
      v25 = v63;
      if (v64 == v63)
      {
        goto LABEL_86;
      }

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
LABEL_85:
      v25 = v63;
LABEL_86:
      v64 = v23;
      operator delete(v25);
    }

LABEL_87:
    if (v61 != &v62)
    {
      free(v61);
    }

    return v19;
  }

  v53 = *(this + 4);
  if (!v53)
  {
    v54 = "'mps.depthwise_conv_2d_data_gradient' op requires attribute 'dilation_rates'";
    v56 = 259;
    mlir::emitError(a2.var0.var0, &v54, &v59);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
    if (v59)
    {
      mlir::InFlightDiagnostic::report(&v59);
    }

    if (v68 != 1)
    {
      return v19;
    }

    if (v67 != &v68)
    {
      free(v67);
    }

    v28 = __p;
    if (__p)
    {
      v29 = v66;
      v30 = __p;
      if (v66 != __p)
      {
        do
        {
          v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
        }

        while (v29 != v28);
        v30 = __p;
      }

      v66 = v28;
      operator delete(v30);
    }

    v23 = v63;
    if (v63)
    {
      v31 = v64;
      v25 = v63;
      if (v64 == v63)
      {
        goto LABEL_86;
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

      while (v31 != v23);
      goto LABEL_85;
    }

    goto LABEL_87;
  }

  v52 = *(this + 5);
  if (!v52)
  {
    v54 = "'mps.depthwise_conv_2d_data_gradient' op requires attribute 'explicit_padding'";
    v56 = 259;
    mlir::emitError(a2.var0.var0, &v54, &v59);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
    if (v59)
    {
      mlir::InFlightDiagnostic::report(&v59);
    }

    if (v68 != 1)
    {
      return v19;
    }

    if (v67 != &v68)
    {
      free(v67);
    }

    v34 = __p;
    if (__p)
    {
      v35 = v66;
      v36 = __p;
      if (v66 != __p)
      {
        do
        {
          v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
        }

        while (v35 != v34);
        v36 = __p;
      }

      v66 = v34;
      operator delete(v36);
    }

    v23 = v63;
    if (v63)
    {
      v37 = v64;
      v25 = v63;
      if (v64 == v63)
      {
        goto LABEL_86;
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

      while (v37 != v23);
      goto LABEL_85;
    }

    goto LABEL_87;
  }

  if (!*(this + 6))
  {
    v54 = "'mps.depthwise_conv_2d_data_gradient' op requires attribute 'padding_style'";
    v56 = 259;
    mlir::emitError(a2.var0.var0, &v54, &v59);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
    if (v59)
    {
      mlir::InFlightDiagnostic::report(&v59);
    }

    if (v68 != 1)
    {
      return v19;
    }

    if (v67 != &v68)
    {
      free(v67);
    }

    v40 = __p;
    if (__p)
    {
      v41 = v66;
      v42 = __p;
      if (v66 != __p)
      {
        do
        {
          v41 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v41 - 1);
        }

        while (v41 != v40);
        v42 = __p;
      }

      v66 = v40;
      operator delete(v42);
    }

    v23 = v63;
    if (v63)
    {
      v43 = v64;
      v25 = v63;
      if (v64 == v63)
      {
        goto LABEL_86;
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

      while (v43 != v23);
      goto LABEL_85;
    }

    goto LABEL_87;
  }

  v51 = *(this + 7);
  if (v51)
  {
    if (*(this + 8))
    {
      v54 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v51);
      v55 = v3;
      v48[0] = mlir::ElementsAttr::getType(&v54);
      v59 = llvm::cast<mlir::ShapedType,mlir::Type>(v48);
      v60 = v4;
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v59);
      Type = 4;
      if (v6 == 1 && *ArgAttrsAttr == Type && (v49 = v51, *&v57 = mlir::ArrayAttr::getValue(&v49), *(&v57 + 1) = v7, isSplat = mlir::ElementsAttr::isSplat(&v57), mlir::Type::isUnsignedInteger(&isSplat, 64)))
      {
        v54 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v53);
        v55 = v8;
        v48[0] = mlir::ElementsAttr::getType(&v54);
        v59 = llvm::cast<mlir::ShapedType,mlir::Type>(v48);
        v60 = v9;
        v10 = mlir::CallableOpInterface::getArgAttrsAttr(&v59);
        Type = 4;
        if (v11 == 1 && *v10 == Type && (v49 = v53, *&v57 = mlir::ArrayAttr::getValue(&v49), *(&v57 + 1) = v12, isSplat = mlir::ElementsAttr::isSplat(&v57), mlir::Type::isUnsignedInteger(&isSplat, 64)))
        {
          v54 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v52);
          v55 = v13;
          Type = mlir::ElementsAttr::getType(&v54);
          v59 = llvm::cast<mlir::ShapedType,mlir::Type>(&Type);
          v60 = v14;
          v15 = mlir::CallableOpInterface::getArgAttrsAttr(&v59);
          v57 = xmmword_1E097BBD0;
          if (v16 == 2 && *v15 == v57 && v15[1] == *(&v57 + 1))
          {
            v49 = v52;
            v48[0] = mlir::ArrayAttr::getValue(&v49);
            v48[1] = v18;
            isSplat = mlir::ElementsAttr::isSplat(v48);
            if (mlir::Type::isUnsignedInteger(&isSplat, 64))
            {
              return 1;
            }
          }

          v46 = "'mps.depthwise_conv_2d_data_gradient' op attribute 'explicit_padding' failed to satisfy constraint: ui64 elements attribute of shape {4, 2}";
        }

        else
        {
          v46 = "'mps.depthwise_conv_2d_data_gradient' op attribute 'dilation_rates' failed to satisfy constraint: ui64 elements attribute of shape {4}";
        }
      }

      else
      {
        v46 = "'mps.depthwise_conv_2d_data_gradient' op attribute 'strides' failed to satisfy constraint: ui64 elements attribute of shape {4}";
      }
    }

    else
    {
      v46 = "'mps.depthwise_conv_2d_data_gradient' op requires attribute 'weights_layout'";
    }

    v54 = v46;
    v56 = 259;
    mlir::emitError(a2.var0.var0, &v54, &v59);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v59);
    return v19;
  }

  v54 = "'mps.depthwise_conv_2d_data_gradient' op requires attribute 'strides'";
  v56 = 259;
  mlir::emitError(a2.var0.var0, &v54, &v59);
  v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
  if (v59)
  {
    mlir::InFlightDiagnostic::report(&v59);
  }

  if (v68 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v60);
  }

  return v19;
}

BOOL mlir::mps::anonymous namespace::inferDepthwiseConv2DDataGradReturnType(mlir *a1, AttributeStorage *a2, void *a3, void *a4, uint64_t a5, uint64_t *a6)
{
  v44[4] = *MEMORY[0x1E69E9840];
  v39 = a3;
  v40 = a4;
  mlir::ValueRange::ValueRange(&__src, &v39, 2uLL);
  v13 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(a3);
  if (!v13)
  {
    v25.var0.var0 = a2;
    return mlir::emitOptionalError<char const(&)[66]>(a1, v25, "cannot conv2DDataGrad a non-shaped inputType");
  }

  v14 = v13;
  v15 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(a4);
  if (!v15)
  {
    v27.var0.var0 = a2;
    return mlir::emitOptionalError<char const(&)[66]>(a1, v27, "cannot conv2DDataGrad a non-shaped weightsType");
  }

  if (*(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || *(*v15 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    *a6 = mlir::UnrankedTensorType::get(v12);
    return 1;
  }

  __src = v44;
  v43 = 0x400000000;
  if (mlir::matchConstantWithIntVector<long long>(a5, &__src))
  {
    if (v43 == 4)
    {
      v16 = __src;
      if (*__src == -1)
      {
        *__src = 0x8000000000000000;
        if (v16[1] != -1)
        {
LABEL_9:
          if (v16[2] != -1)
          {
            goto LABEL_10;
          }

          goto LABEL_40;
        }
      }

      else if (*(__src + 1) != -1)
      {
        goto LABEL_9;
      }

      v16[1] = 0x8000000000000000;
      if (v16[2] != -1)
      {
LABEL_10:
        if (v16[3] != -1)
        {
LABEL_11:
          v39 = v41;
          v40 = 0x400000000;
          v17 = 4;
          goto LABEL_12;
        }

LABEL_41:
        v16[3] = 0x8000000000000000;
        goto LABEL_11;
      }

LABEL_40:
      v16[2] = 0x8000000000000000;
      if (v16[3] != -1)
      {
        goto LABEL_11;
      }

      goto LABEL_41;
    }

    v28.var0.var0 = a2;
    if (mlir::emitOptionalError<char const(&)[66]>(a1, v28, "unexpected output shape passed"))
    {
      v17 = v43;
      v39 = v41;
      v40 = 0x400000000;
      if (!v43)
      {
LABEL_15:
        v35 = a3;
        Value = mlir::ArrayAttr::getValue(&v35);
        v36 = 0x400000000;
        v34 = v40;
        v35 = &v37;
        if (v40 == 4)
        {
          v21 = Value;
          v22 = &v37;
          v37 = 0u;
          v38 = 0u;
          v37 = *v39;
          v38 = *(v39 + 1);
          LODWORD(v36) = 4;
          if (*v39 == 0x8000000000000000)
          {
            v23 = *v21;
            if (v23 >= 1)
            {
              *&v37 = v23;
            }
          }

          v24 = 4;
        }

        else
        {
          v29.var0.var0 = a2;
          if (!mlir::emitOptionalError<char const(&)[19],unsigned long &,char const(&)[11]>(a1, v29, "conv2D input rank ", &v34, "must be 4 "))
          {
            result = 0;
            v30 = v35;
            if (v35 == &v37)
            {
LABEL_33:
              if (v39 != v41)
              {
                v32 = result;
                free(v39);
                result = v32;
              }

              goto LABEL_35;
            }

LABEL_32:
            v31 = result;
            free(v30);
            result = v31;
            goto LABEL_33;
          }

          v22 = v35;
          v24 = v36;
        }

        *a6 = mlir::RankedTensorType::get(v22, v24, v12, 0);
        result = 1;
        v30 = v35;
        if (v35 == &v37)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }

      if (v43 >= 5)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v41, v43, 8);
        v19 = v43;
        if (!v43)
        {
          goto LABEL_14;
        }

        v18 = v39;
LABEL_13:
        memcpy(v18, __src, 8 * v19);
LABEL_14:
        LODWORD(v40) = v17;
        goto LABEL_15;
      }

LABEL_12:
      v18 = v41;
      v19 = v17;
      goto LABEL_13;
    }
  }

  *a6 = mlir::UnrankedTensorType::get(v12);
  result = 1;
LABEL_35:
  if (__src != v44)
  {
    v33 = result;
    free(__src);
    return v33;
  }

  return result;
}

uint64_t mlir::mps::DepthwiseConv2DWeightsGradientOp::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, AttributeStorage *a3, uint64_t a4, unint64_t a5, uint64_t a6, __int128 *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v42[2] = *MEMORY[0x1E69E9840];
  v42[0] = a4;
  v42[1] = a5;
  if (a7)
  {
    v16 = *a7;
    v17 = a7[1];
    v18 = a7[2];
  }

  else
  {
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
  }

  v32 = a6;
  v33[0] = 0;
  v34 = 0;
  v35 = v16;
  v36 = v17;
  v37 = v18;
  v38 = a9;
  v39 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v32);
    if (v34 == 1)
    {
      v34 = 0;
    }

    mlir::OperationName::OperationName(v33, "mps.depthwise_conv_2d_weights_gradient", 38, Context);
    v34 = 1;
  }

  v40 = a4;
  v41 = a5;
  if (a5 < 3 || (v20.var0.var0 = mlir::UnknownLoc::get(this, a2), !mlir::mps::DepthwiseConv2DWeightsGradientOpAdaptor::verify(&v32, v20)))
  {
    v26 = mlir::Float32Type::get(this, a2);
    v27 = mlir::UnrankedTensorType::get(v26);
    v28 = *(a11 + 8);
    if (v28 >= *(a11 + 12))
    {
      v30 = v27;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v28 + 1, 8);
      v27 = v30;
      LODWORD(v28) = *(a11 + 8);
    }

    *(*a11 + 8 * v28) = v27;
    goto LABEL_17;
  }

  v21 = mlir::ValueRange::dereference_iterator(v42, 0);
  v22 = mlir::ValueRange::dereference_iterator(v42, 1);
  v23 = mlir::ValueRange::dereference_iterator(v42, 2);
  v31 = 0;
  {
    v24 = v31;
    v25 = *(a11 + 8);
    if (v25 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, v25 + 1, 8);
      LODWORD(v25) = *(a11 + 8);
    }

    *(*a11 + 8 * v25) = v24;
LABEL_17:
    ++*(a11 + 8);
    return 1;
  }

  return 0;
}

BOOL mlir::mps::DepthwiseConv2DWeightsGradientOpAdaptor::verify(mlir::mps::DepthwiseConv2DWeightsGradientOpAdaptor *this, Location a2)
{
  v69 = *MEMORY[0x1E69E9840];
  if (!*(this + 3))
  {
    v54 = "'mps.depthwise_conv_2d_weights_gradient' op requires attribute 'data_layout'";
    v56 = 259;
    mlir::emitError(a2.var0.var0, &v54, &v59);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
    if (v59)
    {
      mlir::InFlightDiagnostic::report(&v59);
    }

    if (v68 != 1)
    {
      return v19;
    }

    if (v67 != &v68)
    {
      free(v67);
    }

    v20 = __p;
    if (__p)
    {
      v21 = v66;
      v22 = __p;
      if (v66 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v66 = v20;
      operator delete(v22);
    }

    v23 = v63;
    if (v63)
    {
      v24 = v64;
      v25 = v63;
      if (v64 == v63)
      {
        goto LABEL_86;
      }

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
LABEL_85:
      v25 = v63;
LABEL_86:
      v64 = v23;
      operator delete(v25);
    }

LABEL_87:
    if (v61 != &v62)
    {
      free(v61);
    }

    return v19;
  }

  v53 = *(this + 4);
  if (!v53)
  {
    v54 = "'mps.depthwise_conv_2d_weights_gradient' op requires attribute 'dilation_rates'";
    v56 = 259;
    mlir::emitError(a2.var0.var0, &v54, &v59);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
    if (v59)
    {
      mlir::InFlightDiagnostic::report(&v59);
    }

    if (v68 != 1)
    {
      return v19;
    }

    if (v67 != &v68)
    {
      free(v67);
    }

    v28 = __p;
    if (__p)
    {
      v29 = v66;
      v30 = __p;
      if (v66 != __p)
      {
        do
        {
          v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
        }

        while (v29 != v28);
        v30 = __p;
      }

      v66 = v28;
      operator delete(v30);
    }

    v23 = v63;
    if (v63)
    {
      v31 = v64;
      v25 = v63;
      if (v64 == v63)
      {
        goto LABEL_86;
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

      while (v31 != v23);
      goto LABEL_85;
    }

    goto LABEL_87;
  }

  v52 = *(this + 5);
  if (!v52)
  {
    v54 = "'mps.depthwise_conv_2d_weights_gradient' op requires attribute 'explicit_padding'";
    v56 = 259;
    mlir::emitError(a2.var0.var0, &v54, &v59);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
    if (v59)
    {
      mlir::InFlightDiagnostic::report(&v59);
    }

    if (v68 != 1)
    {
      return v19;
    }

    if (v67 != &v68)
    {
      free(v67);
    }

    v34 = __p;
    if (__p)
    {
      v35 = v66;
      v36 = __p;
      if (v66 != __p)
      {
        do
        {
          v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
        }

        while (v35 != v34);
        v36 = __p;
      }

      v66 = v34;
      operator delete(v36);
    }

    v23 = v63;
    if (v63)
    {
      v37 = v64;
      v25 = v63;
      if (v64 == v63)
      {
        goto LABEL_86;
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

      while (v37 != v23);
      goto LABEL_85;
    }

    goto LABEL_87;
  }

  if (!*(this + 6))
  {
    v54 = "'mps.depthwise_conv_2d_weights_gradient' op requires attribute 'padding_style'";
    v56 = 259;
    mlir::emitError(a2.var0.var0, &v54, &v59);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
    if (v59)
    {
      mlir::InFlightDiagnostic::report(&v59);
    }

    if (v68 != 1)
    {
      return v19;
    }

    if (v67 != &v68)
    {
      free(v67);
    }

    v40 = __p;
    if (__p)
    {
      v41 = v66;
      v42 = __p;
      if (v66 != __p)
      {
        do
        {
          v41 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v41 - 1);
        }

        while (v41 != v40);
        v42 = __p;
      }

      v66 = v40;
      operator delete(v42);
    }

    v23 = v63;
    if (v63)
    {
      v43 = v64;
      v25 = v63;
      if (v64 == v63)
      {
        goto LABEL_86;
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

      while (v43 != v23);
      goto LABEL_85;
    }

    goto LABEL_87;
  }

  v51 = *(this + 7);
  if (v51)
  {
    if (*(this + 8))
    {
      v54 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v51);
      v55 = v3;
      v48[0] = mlir::ElementsAttr::getType(&v54);
      v59 = llvm::cast<mlir::ShapedType,mlir::Type>(v48);
      v60 = v4;
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v59);
      Type = 4;
      if (v6 == 1 && *ArgAttrsAttr == Type && (v49 = v51, *&v57 = mlir::ArrayAttr::getValue(&v49), *(&v57 + 1) = v7, isSplat = mlir::ElementsAttr::isSplat(&v57), mlir::Type::isUnsignedInteger(&isSplat, 64)))
      {
        v54 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v53);
        v55 = v8;
        v48[0] = mlir::ElementsAttr::getType(&v54);
        v59 = llvm::cast<mlir::ShapedType,mlir::Type>(v48);
        v60 = v9;
        v10 = mlir::CallableOpInterface::getArgAttrsAttr(&v59);
        Type = 4;
        if (v11 == 1 && *v10 == Type && (v49 = v53, *&v57 = mlir::ArrayAttr::getValue(&v49), *(&v57 + 1) = v12, isSplat = mlir::ElementsAttr::isSplat(&v57), mlir::Type::isUnsignedInteger(&isSplat, 64)))
        {
          v54 = llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(&v52);
          v55 = v13;
          Type = mlir::ElementsAttr::getType(&v54);
          v59 = llvm::cast<mlir::ShapedType,mlir::Type>(&Type);
          v60 = v14;
          v15 = mlir::CallableOpInterface::getArgAttrsAttr(&v59);
          v57 = xmmword_1E097BBD0;
          if (v16 == 2 && *v15 == v57 && v15[1] == *(&v57 + 1))
          {
            v49 = v52;
            v48[0] = mlir::ArrayAttr::getValue(&v49);
            v48[1] = v18;
            isSplat = mlir::ElementsAttr::isSplat(v48);
            if (mlir::Type::isUnsignedInteger(&isSplat, 64))
            {
              return 1;
            }
          }

          v46 = "'mps.depthwise_conv_2d_weights_gradient' op attribute 'explicit_padding' failed to satisfy constraint: ui64 elements attribute of shape {4, 2}";
        }

        else
        {
          v46 = "'mps.depthwise_conv_2d_weights_gradient' op attribute 'dilation_rates' failed to satisfy constraint: ui64 elements attribute of shape {4}";
        }
      }

      else
      {
        v46 = "'mps.depthwise_conv_2d_weights_gradient' op attribute 'strides' failed to satisfy constraint: ui64 elements attribute of shape {4}";
      }
    }

    else
    {
      v46 = "'mps.depthwise_conv_2d_weights_gradient' op requires attribute 'weights_layout'";
    }

    v54 = v46;
    v56 = 259;
    mlir::emitError(a2.var0.var0, &v54, &v59);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v59);
    return v19;
  }

  v54 = "'mps.depthwise_conv_2d_weights_gradient' op requires attribute 'strides'";
  v56 = 259;
  mlir::emitError(a2.var0.var0, &v54, &v59);
  v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v59);
  if (v59)
  {
    mlir::InFlightDiagnostic::report(&v59);
  }

  if (v68 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v60);
  }

  return v19;
}

uint64_t mlir::mps::DepthwiseConv3DOp::verify(mlir::mps::DepthwiseConv3DOp *this)
{
  v270 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *(*this + 72);
  v4 = *(v3 + 24);
  v5 = *(v3 + 56);
  v249 = *(*this + 112);
  v250 = v2;
  v6 = *(v2 + 88);
  v247 = *(v2 + 96);
  v248 = v6;
  if (v249)
  {
    if (mlir::DenseElementsAttr::getNumElements(&v249) == 3)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v237, v249, 0);
      v1 = v249;
      NumElements = mlir::DenseElementsAttr::getNumElements(&v249);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v244, v1, NumElements);
      while (v239 != v246)
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(&v237, &v242);
        if (v243 > 0x40)
        {
          if (*v242 <= 0)
          {
            goto LABEL_7;
          }
        }

        else if (!v243 || (v242 << -v243) >> -v243 <= 0)
        {
LABEL_7:
          v257 = 259;
          mlir::OpState::emitOpError(&v250, &v254, &v258);
          if (v243 > 0x40)
          {
            v8 = *v242;
            if (!v258)
            {
              goto LABEL_23;
            }
          }

          else
          {
            if (v243)
            {
              v8 = (v242 << -v243) >> -v243;
            }

            else
            {
              v8 = 0;
            }

            if (!v258)
            {
              goto LABEL_23;
            }
          }

          LODWORD(v251) = 2;
          v252 = v8;
          v10 = v260;
          if (v261 >= v262)
          {
            if (v260 <= &v251 && v260 + 24 * v261 > &v251)
            {
              v27 = &v251 - v260;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v260, v263, v261 + 1, 24);
              v10 = v260;
              v11 = (v260 + v27);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v260, v263, v261 + 1, 24);
              v11 = &v251;
              v10 = v260;
            }
          }

          else
          {
            v11 = &v251;
          }

          v12 = &v10[24 * v261];
          v13 = *v11;
          *(v12 + 2) = v11[2];
          *v12 = v13;
          v14 = ++v261;
          if (v258)
          {
            LODWORD(v251) = 3;
            v252 = ", all values should be positive.";
            v253 = 32;
            v15 = v260;
            if (v14 >= v262)
            {
              if (v260 <= &v251 && v260 + 24 * v14 > &v251)
              {
                v28 = &v251 - v260;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v260, v263, v14 + 1, 24);
                v15 = v260;
                v16 = (v260 + v28);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v260, v263, v14 + 1, 24);
                v16 = &v251;
                v15 = v260;
              }
            }

            else
            {
              v16 = &v251;
            }

            v17 = &v15[24 * v261];
            v18 = *v16;
            *(v17 + 2) = v16[2];
            *v17 = v18;
            ++v261;
          }

LABEL_23:
          v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v258);
          if (v258)
          {
            mlir::InFlightDiagnostic::report(&v258);
          }

          if (v269 == 1)
          {
            if (v268 != &v269)
            {
              free(v268);
            }

            v19 = __p;
            if (__p)
            {
              v20 = v267;
              v21 = __p;
              if (v267 != __p)
              {
                do
                {
                  v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
                }

                while (v20 != v19);
                v21 = __p;
              }

              v267 = v19;
              operator delete(v21);
            }

            v22 = v264;
            if (v264)
            {
              v23 = v265;
              v24 = v264;
              if (v265 != v264)
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
                v24 = v264;
              }

              v265 = v22;
              operator delete(v24);
            }

            if (v260 != v263)
            {
              free(v260);
            }
          }

          v9 = 0;
          if (v243 < 0x41)
          {
            goto LABEL_46;
          }

LABEL_44:
          if (v242)
          {
            operator delete[](v242);
          }

          goto LABEL_46;
        }

        v9 = 1;
        if (v243 >= 0x41)
        {
          goto LABEL_44;
        }

LABEL_46:
        if (!v9)
        {
          return v1;
        }

        ++v239;
      }
    }
  }

  if (v248)
  {
    if (mlir::DenseElementsAttr::getNumElements(&v248) == 3)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v237, v248, 0);
      v29 = v248;
      v30 = mlir::DenseElementsAttr::getNumElements(&v248);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v244, v29, v30);
      while (v239 != v246)
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(&v237, &v242);
        if (v243 > 0x40)
        {
          if (*v242 <= 0)
          {
            goto LABEL_147;
          }
        }

        else if (!v243 || (v242 << -v243) >> -v243 <= 0)
        {
LABEL_147:
          v257 = 259;
          mlir::OpState::emitOpError(&v250, &v254, &v258);
          if (v243 > 0x40)
          {
            v98 = *v242;
            if (!v258)
            {
              goto LABEL_163;
            }
          }

          else
          {
            if (v243)
            {
              v98 = (v242 << -v243) >> -v243;
            }

            else
            {
              v98 = 0;
            }

            if (!v258)
            {
              goto LABEL_163;
            }
          }

          LODWORD(v251) = 2;
          v252 = v98;
          v100 = v260;
          if (v261 >= v262)
          {
            if (v260 <= &v251 && v260 + 24 * v261 > &v251)
            {
              v117 = &v251 - v260;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v260, v263, v261 + 1, 24);
              v100 = v260;
              v101 = (v260 + v117);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v260, v263, v261 + 1, 24);
              v101 = &v251;
              v100 = v260;
            }
          }

          else
          {
            v101 = &v251;
          }

          v102 = &v100[24 * v261];
          v103 = *v101;
          *(v102 + 2) = v101[2];
          *v102 = v103;
          v104 = ++v261;
          if (v258)
          {
            LODWORD(v251) = 3;
            v252 = ", all values should be positive.";
            v253 = 32;
            v105 = v260;
            if (v104 >= v262)
            {
              if (v260 <= &v251 && v260 + 24 * v104 > &v251)
              {
                v118 = &v251 - v260;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v260, v263, v104 + 1, 24);
                v105 = v260;
                v106 = (v260 + v118);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v260, v263, v104 + 1, 24);
                v106 = &v251;
                v105 = v260;
              }
            }

            else
            {
              v106 = &v251;
            }

            v107 = &v105[24 * v261];
            v108 = *v106;
            *(v107 + 2) = v106[2];
            *v107 = v108;
            ++v261;
          }

LABEL_163:
          v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v258);
          if (v258)
          {
            mlir::InFlightDiagnostic::report(&v258);
          }

          if (v269 == 1)
          {
            if (v268 != &v269)
            {
              free(v268);
            }

            v109 = __p;
            if (__p)
            {
              v110 = v267;
              v111 = __p;
              if (v267 != __p)
              {
                do
                {
                  v110 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v110 - 1);
                }

                while (v110 != v109);
                v111 = __p;
              }

              v267 = v109;
              operator delete(v111);
            }

            v112 = v264;
            if (v264)
            {
              v113 = v265;
              v114 = v264;
              if (v265 != v264)
              {
                do
                {
                  v116 = *--v113;
                  v115 = v116;
                  *v113 = 0;
                  if (v116)
                  {
                    operator delete[](v115);
                  }
                }

                while (v113 != v112);
                v114 = v264;
              }

              v265 = v112;
              operator delete(v114);
            }

            if (v260 != v263)
            {
              free(v260);
            }
          }

          v99 = 0;
          if (v243 < 0x41)
          {
            goto LABEL_186;
          }

LABEL_184:
          if (v242)
          {
            operator delete[](v242);
          }

          goto LABEL_186;
        }

        v99 = 1;
        if (v243 >= 0x41)
        {
          goto LABEL_184;
        }

LABEL_186:
        if (!v99)
        {
          return v1;
        }

        ++v239;
      }
    }
  }

  if (v247)
  {
    if (mlir::DenseElementsAttr::getNumElements(&v247) == 6)
    {
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v237, v247, 0);
      v31 = v247;
      v32 = mlir::DenseElementsAttr::getNumElements(&v247);
      mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v244, v31, v32);
      if (v239 != v246)
      {
        while (1)
        {
          mlir::DenseElementsAttr::IntElementIterator::operator*(&v237, &v242);
          if (v243 > 0x40)
          {
            break;
          }

          if (v243)
          {
            v120 = (v242 << -v243) >> -v243;
            if (v120 < 0)
            {
              goto LABEL_203;
            }

LABEL_210:
            if (v243 >= 0x41)
            {
LABEL_240:
              if (v242)
              {
                operator delete[](v242);
              }
            }

LABEL_198:
            if (v120 < 0)
            {
              return v1;
            }
          }

          if (++v239 == v246)
          {
            goto LABEL_63;
          }
        }

        v120 = *v242;
        if ((*v242 & 0x8000000000000000) == 0)
        {
          goto LABEL_210;
        }

LABEL_203:
        v254 = v119;
        v257 = 259;
        mlir::OpState::emitOpError(&v250, &v254, &v258);
        if (v243 > 0x40)
        {
          v121 = *v242;
          if (!v258)
          {
            goto LABEL_219;
          }
        }

        else
        {
          if (v243)
          {
            v121 = (v242 << -v243) >> -v243;
          }

          else
          {
            v121 = 0;
          }

          if (!v258)
          {
            goto LABEL_219;
          }
        }

        LODWORD(v251) = 2;
        v252 = v121;
        v122 = v260;
        if (v261 >= v262)
        {
          if (v260 <= &v251 && v260 + 24 * v261 > &v251)
          {
            v140 = &v251 - v260;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v260, v263, v261 + 1, 24);
            v122 = v260;
            v123 = (v260 + v140);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v260, v263, v261 + 1, 24);
            v123 = &v251;
            v122 = v260;
          }
        }

        else
        {
          v123 = &v251;
        }

        v124 = &v122[24 * v261];
        v125 = *v123;
        *(v124 + 2) = v123[2];
        *v124 = v125;
        v126 = ++v261;
        if (v258)
        {
          LODWORD(v251) = 3;
          v252 = ", all values should be non-negative.";
          v253 = 36;
          v127 = v260;
          if (v126 >= v262)
          {
            if (v260 <= &v251 && v260 + 24 * v126 > &v251)
            {
              v141 = &v251 - v260;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v260, v263, v126 + 1, 24);
              v127 = v260;
              v128 = (v260 + v141);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v260, v263, v126 + 1, 24);
              v128 = &v251;
              v127 = v260;
            }
          }

          else
          {
            v128 = &v251;
          }

          v129 = &v127[24 * v261];
          v130 = *v128;
          *(v129 + 2) = v128[2];
          *v129 = v130;
          ++v261;
        }

LABEL_219:
        v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v258);
        if (v258)
        {
          mlir::InFlightDiagnostic::report(&v258);
        }

        if (v269 == 1)
        {
          if (v268 != &v269)
          {
            free(v268);
          }

          v131 = v119;
          v132 = __p;
          if (__p)
          {
            v133 = v267;
            v134 = __p;
            if (v267 != __p)
            {
              do
              {
                v133 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v133 - 1);
              }

              while (v133 != v132);
              v134 = __p;
            }

            v267 = v132;
            operator delete(v134);
          }

          v135 = v264;
          if (v264)
          {
            v136 = v265;
            v137 = v264;
            if (v265 != v264)
            {
              do
              {
                v139 = *--v136;
                v138 = v139;
                *v136 = 0;
                if (v139)
                {
                  operator delete[](v138);
                }
              }

              while (v136 != v135);
              v137 = v264;
            }

            v265 = v135;
            operator delete(v137);
          }

          v119 = v131;
          if (v260 != v263)
          {
            free(v260);
          }
        }

        if (v243 >= 0x41)
        {
          goto LABEL_240;
        }

        goto LABEL_198;
      }
    }
  }

LABEL_63:
  v254 = *(v250 + 16 * ((*(v250 + 44) >> 23) & 1) + 64);
  mlir::IntegerAttr::getValue(&v254, &v258);
  if (v259[0] > 0x40)
  {
    v33 = *v258;
    operator delete[](v258);
    if (!v4)
    {
LABEL_93:
      v251 = 0;
      goto LABEL_94;
    }
  }

  else
  {
    if (v259[0])
    {
      v33 = (v258 << -LOBYTE(v259[0])) >> -LOBYTE(v259[0]);
    }

    else
    {
      LODWORD(v33) = 0;
    }

    if (!v4)
    {
      goto LABEL_93;
    }
  }

  v34 = *(v4 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (!v34)
  {
    goto LABEL_93;
  }

  v35 = *(*v34 + 136);
  if (v35 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v34 = 0;
  }

  v251 = v34;
  if (v35 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    mlir::ArrayAttr::getValue(&v251);
    v37 = v36;
    if (v36 <= 3)
    {
      v257 = 259;
      mlir::OpState::emitOpError(&v250, &v254, &v258);
      if (v258)
      {
        LODWORD(v237) = 2;
        v238 = v37;
        v38 = &v237;
        v39 = v260;
        if (v261 >= v262)
        {
          if (v260 <= &v237 && v260 + 24 * v261 > &v237)
          {
            v220 = &v237 - v260;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v260, v263, v261 + 1, 24);
            v39 = v260;
            v38 = (v260 + v220);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v260, v263, v261 + 1, 24);
            v38 = &v237;
            v39 = v260;
          }
        }

        v40 = &v39[24 * v261];
        v41 = *v38;
        *(v40 + 2) = v38[2];
        *v40 = v41;
        v42 = ++v261;
        if (v258)
        {
          LODWORD(v237) = 3;
          v238 = ".";
          v239 = 1;
          v43 = &v237;
          v44 = v260;
          if (v42 >= v262)
          {
            if (v260 <= &v237 && v260 + 24 * v42 > &v237)
            {
              v225 = &v237 - v260;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v260, v263, v42 + 1, 24);
              v44 = v260;
              v43 = (v260 + v225);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v260, v263, v42 + 1, 24);
              v43 = &v237;
              v44 = v260;
            }
          }

          v45 = &v44[24 * v261];
          v46 = *v43;
          *(v45 + 2) = v43[2];
          *v45 = v46;
          ++v261;
        }
      }

      v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v258);
      if (v258)
      {
        mlir::InFlightDiagnostic::report(&v258);
      }

      if (v269 != 1)
      {
        return v1;
      }

      if (v268 != &v269)
      {
        free(v268);
      }

      v47 = __p;
      if (__p)
      {
        v48 = v267;
        v49 = __p;
        if (v267 != __p)
        {
          do
          {
            v48 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v48 - 1);
          }

          while (v48 != v47);
          v49 = __p;
        }

        v267 = v47;
        operator delete(v49);
      }

      v50 = v264;
      if (!v264)
      {
        goto LABEL_334;
      }

      v51 = v265;
      v52 = v264;
      if (v265 == v264)
      {
        goto LABEL_333;
      }

      do
      {
        v95 = *--v51;
        v94 = v95;
        *v51 = 0;
        if (v95)
        {
          operator delete[](v94);
        }
      }

      while (v51 != v50);
      goto LABEL_332;
    }

    if (v33 >= 0)
    {
      v192 = v36;
    }

    else
    {
      v192 = 0;
    }

    if ((v33 - v192) <= 0xFFFFFFFFFFFFFFFBLL)
    {
      v257 = 259;
      mlir::OpState::emitOpError(&v250, &v254, &v258);
      if (v258)
      {
        LODWORD(v237) = 2;
        v238 = v33;
        v193 = &v237;
        v194 = v260;
        if (v261 >= v262)
        {
          if (v260 <= &v237 && v260 + 24 * v261 > &v237)
          {
            v227 = &v237 - v260;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v260, v263, v261 + 1, 24);
            v194 = v260;
            v193 = (v260 + v227);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v260, v263, v261 + 1, 24);
            v193 = &v237;
            v194 = v260;
          }
        }

        v195 = &v194[24 * v261];
        v196 = *v193;
        *(v195 + 2) = v193[2];
        *v195 = v196;
        v197 = ++v261;
        if (v258)
        {
          LODWORD(v237) = 3;
          v238 = " for input rank ";
          v239 = 16;
          v198 = &v237;
          v199 = v260;
          if (v197 >= v262)
          {
            if (v260 <= &v237 && v260 + 24 * v197 > &v237)
            {
              v231 = &v237 - v260;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v260, v263, v197 + 1, 24);
              v199 = v260;
              v198 = (v260 + v231);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v260, v263, v197 + 1, 24);
              v198 = &v237;
              v199 = v260;
            }
          }

          v200 = &v199[24 * v261];
          v201 = *v198;
          *(v200 + 2) = v198[2];
          *v200 = v201;
          v202 = ++v261;
          if (v258)
          {
            LODWORD(v237) = 2;
            v238 = v37;
            v203 = &v237;
            v204 = v260;
            if (v202 >= v262)
            {
              if (v260 <= &v237 && v260 + 24 * v202 > &v237)
              {
                v234 = &v237 - v260;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v260, v263, v202 + 1, 24);
                v204 = v260;
                v203 = (v260 + v234);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v260, v263, v202 + 1, 24);
                v203 = &v237;
                v204 = v260;
              }
            }

            v205 = &v204[24 * v261];
            v206 = *v203;
            *(v205 + 2) = v203[2];
            *v205 = v206;
            v207 = ++v261;
            if (v258)
            {
              LODWORD(v237) = 3;
              v238 = ".";
              v239 = 1;
              v208 = &v237;
              v209 = v260;
              if (v207 >= v262)
              {
                if (v260 <= &v237 && v260 + 24 * v207 > &v237)
                {
                  v236 = &v237 - v260;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v260, v263, v207 + 1, 24);
                  v209 = v260;
                  v208 = (v260 + v236);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v260, v263, v207 + 1, 24);
                  v208 = &v237;
                  v209 = v260;
                }
              }

              v210 = &v209[24 * v261];
              v211 = *v208;
              *(v210 + 2) = v208[2];
              *v210 = v211;
              ++v261;
            }
          }
        }
      }

      v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v258);
      if (v258)
      {
        mlir::InFlightDiagnostic::report(&v258);
      }

      if (v269 != 1)
      {
        return v1;
      }

      if (v268 != &v269)
      {
        free(v268);
      }

      v212 = __p;
      if (__p)
      {
        v213 = v267;
        v214 = __p;
        if (v267 != __p)
        {
          do
          {
            v213 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v213 - 1);
          }

          while (v213 != v212);
          v214 = __p;
        }

        v267 = v212;
        operator delete(v214);
      }

      v50 = v264;
      if (!v264)
      {
        goto LABEL_334;
      }

      v215 = v265;
      v52 = v264;
      if (v265 == v264)
      {
        goto LABEL_333;
      }

      do
      {
        v217 = *--v215;
        v216 = v217;
        *v215 = 0;
        if (v217)
        {
          operator delete[](v216);
        }
      }

      while (v215 != v50);
LABEL_332:
      v52 = v264;
LABEL_333:
      v265 = v50;
      operator delete(v52);
      goto LABEL_334;
    }
  }

LABEL_94:
  v242 = 0;
  if (!v5 || (v53 = *(v5 + 8) & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    v241 = 0;
    goto LABEL_119;
  }

  v54 = *(*v53 + 136);
  if (v54 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v53 = 0;
  }

  v241 = v53;
  if (v54 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || (mlir::ArrayAttr::getValue(&v241), v55 == 4))
  {
LABEL_119:
    v254 = v256;
    v255 = 0x500000000;
    if ((mlir::matchConstantWithIntVector<long long>(0, &v254) & 1) == 0)
    {
      goto LABEL_251;
    }

    if (v5)
    {
      if (!v251 || (v70 = v255, mlir::ArrayAttr::getValue(&v251), v71 == v70))
      {
        if (v242)
        {
          v72 = v255;
          mlir::ArrayAttr::getValue(&v242);
          if (v73 != v72)
          {
            v240 = 259;
            mlir::OpState::emitOpError(&v250, &v237, &v258);
            mlir::ArrayAttr::getValue(&v242);
            if (v258)
            {
              LODWORD(v244) = 5;
              v245 = v74;
              v75 = &v244;
              v76 = v260;
              if (v261 >= v262)
              {
                if (v260 <= &v244 && v260 + 24 * v261 > &v244)
                {
                  v222 = &v244 - v260;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v260, v263, v261 + 1, 24);
                  v76 = v260;
                  v75 = v260 + v222;
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v260, v263, v261 + 1, 24);
                  v75 = &v244;
                  v76 = v260;
                }
              }

              v77 = &v76[24 * v261];
              v78 = *v75;
              *(v77 + 2) = *(v75 + 2);
              *v77 = v78;
              v79 = ++v261;
              if (v258)
              {
                LODWORD(v244) = 3;
                v246 = 38;
                v80 = &v244;
                v81 = v260;
                if (v79 >= v262)
                {
                  if (v260 <= &v244 && v260 + 24 * v79 > &v244)
                  {
                    v228 = &v244 - v260;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v260, v263, v79 + 1, 24);
                    v81 = v260;
                    v80 = v260 + v228;
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v260, v263, v79 + 1, 24);
                    v80 = &v244;
                    v81 = v260;
                  }
                }

                v82 = &v81[24 * v261];
                v83 = *v80;
                *(v82 + 2) = *(v80 + 2);
                *v82 = v83;
                v84 = ++v261;
                if (v258)
                {
                  LODWORD(v244) = 5;
                  v245 = v255;
                  v85 = &v244;
                  v86 = v260;
                  if (v84 >= v262)
                  {
                    if (v260 <= &v244 && v260 + 24 * v84 > &v244)
                    {
                      v232 = &v244 - v260;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v260, v263, v84 + 1, 24);
                      v86 = v260;
                      v85 = v260 + v232;
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v260, v263, v84 + 1, 24);
                      v85 = &v244;
                      v86 = v260;
                    }
                  }

                  v87 = &v86[24 * v261];
                  v88 = *v85;
                  *(v87 + 2) = *(v85 + 2);
                  *v87 = v88;
                  v89 = ++v261;
                  if (v258)
                  {
                    LODWORD(v244) = 3;
                    v245 = " values.";
                    v246 = 8;
                    v90 = &v244;
                    v91 = v260;
                    if (v89 >= v262)
                    {
                      if (v260 <= &v244 && v260 + 24 * v89 > &v244)
                      {
                        v235 = &v244 - v260;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v260, v263, v89 + 1, 24);
                        v91 = v260;
                        v90 = v260 + v235;
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v260, v263, v89 + 1, 24);
                        v90 = &v244;
                        v91 = v260;
                      }
                    }

                    v92 = &v91[24 * v261];
                    v93 = *v90;
                    *(v92 + 2) = *(v90 + 2);
                    *v92 = v93;
                    ++v261;
                  }
                }
              }
            }

            v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v258);
            if (v258)
            {
              mlir::InFlightDiagnostic::report(&v258);
            }

            if (v269 == 1)
            {
              mlir::Diagnostic::~Diagnostic(v259);
            }

            goto LABEL_252;
          }
        }

LABEL_251:
        v1 = 1;
        goto LABEL_252;
      }

      v240 = 259;
      mlir::OpState::emitOpError(&v250, &v237, &v258);
      mlir::ArrayAttr::getValue(&v251);
      if (v258)
      {
        LODWORD(v244) = 5;
        v245 = v144;
        v145 = &v244;
        v146 = v260;
        if (v261 >= v262)
        {
          if (v260 <= &v244 && v260 + 24 * v261 > &v244)
          {
            v218 = &v244 - v260;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v260, v263, v261 + 1, 24);
            v146 = v260;
            v145 = v260 + v218;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v260, v263, v261 + 1, 24);
            v145 = &v244;
            v146 = v260;
          }
        }

        v147 = &v146[24 * v261];
        v148 = *v145;
        *(v147 + 2) = *(v145 + 2);
        *v147 = v148;
        v149 = ++v261;
        if (v258)
        {
          LODWORD(v244) = 3;
          v246 = 35;
          v150 = &v244;
          v151 = v260;
          if (v149 >= v262)
          {
            if (v260 <= &v244 && v260 + 24 * v149 > &v244)
            {
              v223 = &v244 - v260;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v260, v263, v149 + 1, 24);
              v151 = v260;
              v150 = v260 + v223;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v260, v263, v149 + 1, 24);
              v150 = &v244;
              v151 = v260;
            }
          }

          v152 = &v151[24 * v261];
          v153 = *v150;
          *(v152 + 2) = *(v150 + 2);
          *v152 = v153;
          v154 = ++v261;
          if (v258)
          {
            LODWORD(v244) = 5;
            v245 = v255;
            v155 = &v244;
            v156 = v260;
            if (v154 >= v262)
            {
              if (v260 <= &v244 && v260 + 24 * v154 > &v244)
              {
                v229 = &v244 - v260;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v260, v263, v154 + 1, 24);
                v156 = v260;
                v155 = v260 + v229;
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v260, v263, v154 + 1, 24);
                v155 = &v244;
                v156 = v260;
              }
            }

            v157 = &v156[24 * v261];
            v158 = *v155;
            *(v157 + 2) = *(v155 + 2);
            *v157 = v158;
            v159 = ++v261;
            if (v258)
            {
              LODWORD(v244) = 3;
              v245 = " values.";
              v246 = 8;
              v160 = &v244;
              v161 = v260;
              if (v159 >= v262)
              {
                if (v260 <= &v244 && v260 + 24 * v159 > &v244)
                {
                  v233 = &v244 - v260;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v260, v263, v159 + 1, 24);
                  v161 = v260;
                  v160 = v260 + v233;
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v260, v263, v159 + 1, 24);
                  v160 = &v244;
                  v161 = v260;
                }
              }

              v162 = &v161[24 * v261];
              v163 = *v160;
              *(v162 + 2) = *(v160 + 2);
              *v162 = v163;
              ++v261;
            }
          }
        }
      }

      v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v258);
      if (v258)
      {
        mlir::InFlightDiagnostic::report(&v258);
      }

      if (v269 == 1)
      {
        if (v268 != &v269)
        {
          free(v268);
        }

        v164 = __p;
        if (__p)
        {
          v165 = v267;
          v166 = __p;
          if (v267 != __p)
          {
            do
            {
              v165 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v165 - 1);
            }

            while (v165 != v164);
            v166 = __p;
          }

          v267 = v164;
          operator delete(v166);
        }

        v167 = v264;
        if (!v264)
        {
          goto LABEL_338;
        }

        v168 = v265;
        v169 = v264;
        if (v265 == v264)
        {
LABEL_337:
          v265 = v167;
          operator delete(v169);
LABEL_338:
          if (v260 != v263)
          {
            free(v260);
          }

          goto LABEL_252;
        }

        do
        {
          v171 = *--v168;
          v170 = v171;
          *v168 = 0;
          if (v171)
          {
            operator delete[](v170);
          }
        }

        while (v168 != v167);
LABEL_336:
        v169 = v264;
        goto LABEL_337;
      }
    }

    else
    {
      if (v255 == 4)
      {
        goto LABEL_251;
      }

      v240 = 259;
      mlir::OpState::emitOpError(&v250, &v237, &v258);
      if (v258)
      {
        LODWORD(v244) = 3;
        v246 = 21;
        v172 = &v244;
        v173 = v260;
        if (v261 >= v262)
        {
          if (v260 <= &v244 && v260 + 24 * v261 > &v244)
          {
            v219 = &v244 - v260;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v260, v263, v261 + 1, 24);
            v173 = v260;
            v172 = v260 + v219;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v260, v263, v261 + 1, 24);
            v172 = &v244;
            v173 = v260;
          }
        }

        v174 = &v173[24 * v261];
        v175 = *v172;
        *(v174 + 2) = *(v172 + 2);
        *v174 = v175;
        v176 = ++v261;
        if (v258)
        {
          LODWORD(v244) = 5;
          v245 = v255;
          v177 = &v244;
          v178 = v260;
          if (v176 >= v262)
          {
            if (v260 <= &v244 && v260 + 24 * v176 > &v244)
            {
              v224 = &v244 - v260;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v260, v263, v176 + 1, 24);
              v178 = v260;
              v177 = v260 + v224;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v260, v263, v176 + 1, 24);
              v177 = &v244;
              v178 = v260;
            }
          }

          v179 = &v178[24 * v261];
          v180 = *v177;
          *(v179 + 2) = *(v177 + 2);
          *v179 = v180;
          v181 = ++v261;
          if (v258)
          {
            LODWORD(v244) = 3;
            v245 = " values.";
            v246 = 8;
            v182 = &v244;
            v183 = v260;
            if (v181 >= v262)
            {
              if (v260 <= &v244 && v260 + 24 * v181 > &v244)
              {
                v230 = &v244 - v260;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v260, v263, v181 + 1, 24);
                v183 = v260;
                v182 = v260 + v230;
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v260, v263, v181 + 1, 24);
                v182 = &v244;
                v183 = v260;
              }
            }

            v184 = &v183[24 * v261];
            v185 = *v182;
            *(v184 + 2) = *(v182 + 2);
            *v184 = v185;
            ++v261;
          }
        }
      }

      v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v258);
      if (v258)
      {
        mlir::InFlightDiagnostic::report(&v258);
      }

      if (v269 == 1)
      {
        if (v268 != &v269)
        {
          free(v268);
        }

        v186 = __p;
        if (__p)
        {
          v187 = v267;
          v188 = __p;
          if (v267 != __p)
          {
            do
            {
              v187 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v187 - 1);
            }

            while (v187 != v186);
            v188 = __p;
          }

          v267 = v186;
          operator delete(v188);
        }

        v167 = v264;
        if (!v264)
        {
          goto LABEL_338;
        }

        v189 = v265;
        v169 = v264;
        if (v265 == v264)
        {
          goto LABEL_337;
        }

        do
        {
          v191 = *--v189;
          v190 = v191;
          *v189 = 0;
          if (v191)
          {
            operator delete[](v190);
          }
        }

        while (v189 != v167);
        goto LABEL_336;
      }
    }

LABEL_252:
    v142 = v254;
    if (v254 != v256)
    {
LABEL_253:
      free(v142);
      return v1;
    }

    return v1;
  }

  v257 = 259;
  mlir::OpState::emitOpError(&v250, &v254, &v258);
  mlir::ArrayAttr::getValue(&v241);
  if (v258)
  {
    LODWORD(v237) = 5;
    v238 = v56;
    v57 = &v237;
    v58 = v260;
    if (v261 >= v262)
    {
      if (v260 <= &v237 && v260 + 24 * v261 > &v237)
      {
        v221 = &v237 - v260;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v260, v263, v261 + 1, 24);
        v58 = v260;
        v57 = (v260 + v221);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v260, v263, v261 + 1, 24);
        v57 = &v237;
        v58 = v260;
      }
    }

    v59 = &v58[24 * v261];
    v60 = *v57;
    *(v59 + 2) = v57[2];
    *v59 = v60;
    v61 = ++v261;
    if (v258)
    {
      LODWORD(v237) = 3;
      v238 = ".";
      v239 = 1;
      v62 = &v237;
      v63 = v260;
      if (v61 >= v262)
      {
        if (v260 <= &v237 && v260 + 24 * v61 > &v237)
        {
          v226 = &v237 - v260;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v260, v263, v61 + 1, 24);
          v63 = v260;
          v62 = (v260 + v226);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v260, v263, v61 + 1, 24);
          v62 = &v237;
          v63 = v260;
        }
      }

      v64 = &v63[24 * v261];
      v65 = *v62;
      *(v64 + 2) = v62[2];
      *v64 = v65;
      ++v261;
    }
  }

  v1 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v258);
  if (v258)
  {
    mlir::InFlightDiagnostic::report(&v258);
  }

  if (v269 == 1)
  {
    if (v268 != &v269)
    {
      free(v268);
    }

    v66 = __p;
    if (__p)
    {
      v67 = v267;
      v68 = __p;
      if (v267 != __p)
      {
        do
        {
          v67 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v67 - 1);
        }

        while (v67 != v66);
        v68 = __p;
      }

      v267 = v66;
      operator delete(v68);
    }

    v50 = v264;
    if (v264)
    {
      v69 = v265;
      v52 = v264;
      if (v265 == v264)
      {
        goto LABEL_333;
      }

      do
      {
        v97 = *--v69;
        v96 = v97;
        *v69 = 0;
        if (v97)
        {
          operator delete[](v96);
        }
      }

      while (v69 != v50);
      goto LABEL_332;
    }

LABEL_334:
    v142 = v260;
    if (v260 == v263)
    {
      return v1;
    }

    goto LABEL_253;
  }

  return v1;
}