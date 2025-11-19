void mlir::AsmPrinter::Impl::printAttributeImpl(llvm::raw_ostream **a1, uint64_t **a2, int a3)
{
  v123 = *MEMORY[0x1E69E9840];
  if (*(**a2 + 24) != &mlir::detail::TypeIDResolver<mlir::BuiltinDialect,void>::id)
  {
    mlir::AsmPrinter::Impl::printDialectAttribute(a1, a2);
    goto LABEL_8;
  }

  v6 = (*a2)[17];
  if (v6 == &mlir::detail::TypeIDResolver<mlir::OpaqueAttr,void>::id)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  v119 = v7;
  if (v7)
  {
    v8 = *a1;
    v121.n128_u64[0] = mlir::AffineMapAttr::getValue(&v119);
    AttrData = mlir::OpaqueAttr::getAttrData(&v121);
    v11 = v10;
    v12 = mlir::OpaqueAttr::getAttrData(&v119);
    printDialectSymbol(v8, "#", 1uLL, AttrData, v11, v12, v13);
    goto LABEL_8;
  }

  if (v6 == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    v22 = *a1;
    v23 = *(*a1 + 4);
    if (*(*a1 + 3) - v23 > 3uLL)
    {
      *v23 = 1953066613;
      *(v22 + 4) += 4;
    }

    else
    {
      llvm::raw_ostream::write(v22, "unit", 4uLL);
    }

    return;
  }

  {
    if (v6 == mlir::detail::TypeIDResolver<mlir::DistinctAttr,void>::resolveTypeID(void)::id)
    {
      v19 = a2;
    }

    else
    {
      v19 = 0;
    }

    v118 = v19;
    if (v19)
    {
LABEL_20:
      v20 = *a1;
      v21 = *(*a1 + 4);
      if ((*(*a1 + 3) - v21) > 8)
      {
        *(v21 + 8) = 91;
        *v21 = *"distinct[";
        *(v20 + 4) += 9;
      }

      else
      {
        v20 = llvm::raw_ostream::write(*a1, "distinct[", 9uLL);
      }

      v24 = a1[1];
      v25 = (v24 + 592);
      v120 = v19;
      llvm::DenseMapBase<llvm::DenseMap<mlir::DistinctAttr,unsigned long long,llvm::DenseMapInfo<mlir::DistinctAttr,void>,llvm::detail::DenseMapPair<mlir::DistinctAttr,unsigned long long>>,mlir::DistinctAttr,unsigned long long,llvm::DenseMapInfo<mlir::DistinctAttr,void>,llvm::detail::DenseMapPair<mlir::DistinctAttr,unsigned long long>>::try_emplace<unsigned long long &>(v24 + 600, &v120, v24 + 74, &v121);
      if (v122 == 1)
      {
        ++*v25;
      }

      v26 = llvm::raw_ostream::operator<<(v20, *(v121.n128_u64[0] + 8));
      v27 = *(v26 + 4);
      if (*(v26 + 3) - v27 > 1uLL)
      {
        *v27 = 15453;
        *(v26 + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(v26, "]<", 2uLL);
      }

      if (*(*mlir::AffineMapAttr::getValue(&v118) + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
      {
        Value = mlir::AffineMapAttr::getValue(&v118);
        if (Value)
        {
          v29 = Value;
          {
            mlir::AsmPrinter::Impl::printAttributeImpl(a1, v29, 0);
          }
        }

        else
        {
          v30 = *a1;
          v31 = *(*a1 + 4);
          if ((*(*a1 + 3) - v31) > 0x11)
          {
            *(v31 + 16) = 15934;
            *v31 = *"<<NULL ATTRIBUTE>>";
            *(v30 + 4) += 18;
          }

          else
          {
            llvm::raw_ostream::write(v30, "<<NULL ATTRIBUTE>>", 0x12uLL);
          }
        }
      }

      goto LABEL_40;
    }
  }

  else
  {
    mlir::AsmPrinter::Impl::printAttributeImpl();
    if (v6 == mlir::detail::TypeIDResolver<mlir::DistinctAttr,void>::resolveTypeID(void)::id)
    {
      v19 = a2;
    }

    else
    {
      v19 = 0;
    }

    v118 = v19;
    if (v19)
    {
      goto LABEL_20;
    }
  }

  v34 = (*a2)[17];
  if (v34 == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v35 = a2;
  }

  else
  {
    v35 = 0;
  }

  v120 = v35;
  if (v35)
  {
    v36 = *a1;
    v37 = *(*a1 + 4);
    if (v37 >= *(*a1 + 3))
    {
      llvm::raw_ostream::write(v36, 123);
    }

    else
    {
      *(v36 + 4) = v37 + 1;
      *v37 = 123;
    }

    v42 = mlir::ArrayAttr::getValue(&v120);
    if (v43)
    {
      v44 = v42;
      v45 = v43;
      v46 = *a1;
      mlir::AsmPrinter::Impl::printNamedAttribute(a1, *v42, v42[1]);
      if (v45 != 1)
      {
        v47 = &v44[2 * v45];
        v48 = v44 + 2;
        do
        {
          while (1)
          {
            v51 = *(v46 + 4);
            if (*(v46 + 3) - v51 <= 1uLL)
            {
              break;
            }

            *v51 = 8236;
            *(v46 + 4) += 2;
            v49 = *v48;
            v50 = v48[1];
            v48 += 2;
            mlir::AsmPrinter::Impl::printNamedAttribute(a1, v49, v50);
            if (v48 == v47)
            {
              goto LABEL_68;
            }
          }

          llvm::raw_ostream::write(v46, ", ", 2uLL);
          v52 = *v48;
          v53 = v48[1];
          v48 += 2;
          mlir::AsmPrinter::Impl::printNamedAttribute(a1, v52, v53);
        }

        while (v48 != v47);
      }
    }

LABEL_68:
    v54 = *a1;
    v55 = *(*a1 + 4);
    if (v55 >= *(*a1 + 3))
    {
      llvm::raw_ostream::write(v54, 125);
      goto LABEL_8;
    }

    *(v54 + 4) = v55 + 1;
    v56 = 125;
    goto LABEL_70;
  }

  if (v34 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v38 = a2;
  }

  else
  {
    v38 = 0;
  }

  v117 = v38;
  if (!v38)
  {
    if (v34 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      v57 = a2;
    }

    else
    {
      v57 = 0;
    }

    v116 = v57;
    if (v57)
    {
      v115[0] = 0;
      mlir::FloatAttr::getValue(&v116, &v121);
      printFloatValue(&v121, *a1, v115);
      llvm::APFloat::~APFloat(&v121);
      if (a3 == 1)
      {
        v121.n128_u64[0] = mlir::AffineMapAttr::getValue(&v116);
        if (mlir::Type::isF64(&v121) && !v115[0])
        {
          return;
        }
      }

      goto LABEL_8;
    }

    if (v34 == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v61 = a2;
    }

    else
    {
      v61 = 0;
    }

    *v115 = v61;
    if (v61)
    {
      v62 = mlir::OpaqueAttr::getAttrData(v115);
      mlir::AsmPrinter::Impl::printEscapedString(a1, v62, v63);
      goto LABEL_8;
    }

    if (v34 == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      v64 = a2;
    }

    else
    {
      v64 = 0;
    }

    v114 = v64;
    if (v64)
    {
      v65 = *a1;
      v66 = *(*a1 + 4);
      if (v66 >= *(*a1 + 3))
      {
        llvm::raw_ostream::write(v65, 91);
      }

      else
      {
        *(v65 + 4) = v66 + 1;
        *v66 = 91;
      }

      v121.n128_u64[0] = mlir::ArrayAttr::getValue(&v114);
      v121.n128_u64[1] = v68;
      llvm::interleaveComma<llvm::ArrayRef<mlir::Attribute>,mlir::AsmPrinter::Impl::printAttributeImpl(mlir::Attribute,mlir::AsmPrinter::Impl::AttrTypeElision)::$_1,llvm::raw_ostream,mlir::Attribute const>(&v121, *a1, a1);
      v69 = *a1;
      v55 = *(*a1 + 4);
      if (v55 >= *(*a1 + 3))
      {
        llvm::raw_ostream::write(v69, 93);
        goto LABEL_8;
      }

      *(v69 + 4) = v55 + 1;
      v56 = 93;
      goto LABEL_70;
    }

    if (v34 == &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id)
    {
      v67 = a2;
    }

    else
    {
      v67 = 0;
    }

    v113 = v67;
    if (v67)
    {
      llvm::raw_ostream::operator<<(*a1, "affine_map<");
      v121.n128_u64[0] = mlir::AffineMapAttr::getValue(&v113);
      mlir::AffineMap::print(&v121, *a1);
LABEL_40:
      v32 = *a1;
      v33 = *(*a1 + 4);
      if (v33 >= *(*a1 + 3))
      {
        llvm::raw_ostream::write(v32, 62);
      }

      else
      {
        *(v32 + 4) = v33 + 1;
        *v33 = 62;
      }

      return;
    }

    if (v34 == &mlir::detail::TypeIDResolver<mlir::IntegerSetAttr,void>::id)
    {
      v70 = a2;
    }

    else
    {
      v70 = 0;
    }

    v112 = v70;
    if (v70)
    {
      llvm::raw_ostream::operator<<(*a1, "affine_set<");
      v121.n128_u64[0] = mlir::AffineMapAttr::getValue(&v112);
      mlir::IntegerSet::print(&v121, *a1);
    }

    if (v34 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      v71 = a2;
    }

    else
    {
      v71 = 0;
    }

    v111 = v71;
    if (v71)
    {
      v72 = mlir::AffineMapAttr::getValue(&v111);
      mlir::AsmPrinter::Impl::printType(a1, v72);
      goto LABEL_8;
    }

    if (v34 == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
    {
      v73 = a2;
    }

    else
    {
      v73 = 0;
    }

    v110 = v73;
    if (v73)
    {
      v121.n128_u64[0] = mlir::AffineMapAttr::getValue(&v110);
      v74 = mlir::OpaqueAttr::getAttrData(&v121);
      printSymbolReference(v74, v75, *a1);
      v76 = mlir::OpaqueAttr::getAttrData(&v110);
      if (v77)
      {
        v78 = v76;
        v79 = 8 * v77;
        do
        {
          v80 = *v78++;
          v121.n128_u64[0] = v80;
          llvm::raw_ostream::operator<<(*a1, "::");
          v81 = mlir::FlatSymbolRefAttr::getValue(&v121);
          printSymbolReference(v81, v82, *a1);
          v79 -= 8;
        }

        while (v79);
      }

LABEL_8:
      if (a3 != 2)
      {
        v121.n128_u64[0] = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(a2);
        v121.n128_u64[1] = v14;
        if (v121.n128_u64[0])
        {
          CallableForCallee = mlir::CallOpInterface::getCallableForCallee(&v121);
          if (*(*CallableForCallee + 136) != &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id)
          {
            v16 = CallableForCallee;
            v17 = *a1;
            v18 = *(*a1 + 4);
            if ((*(*a1 + 3) - v18) <= 2)
            {
              llvm::raw_ostream::write(v17, " : ", 3uLL);
              if (mlir::AsmPrinter::Impl::printAlias(a1, v16))
              {
                return;
              }

LABEL_23:
              mlir::AsmPrinter::Impl::printTypeImpl(a1, v16);
              return;
            }

            *(v18 + 2) = 32;
            *v18 = 14880;
            *(v17 + 4) += 3;
            if ((mlir::AsmPrinter::Impl::printAlias(a1, v16) & 1) == 0)
            {
              goto LABEL_23;
            }
          }
        }
      }

      return;
    }

    if (v34 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id)
    {
      v83 = a2;
    }

    else
    {
      v83 = 0;
    }

    v109 = v83;
    if (v83)
    {
      v84 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v109);
      shouldElideElementsAttr = mlir::OpPrintingFlags::shouldElideElementsAttr((a1 + 2), v84, v85);
      v87 = *a1;
      if (!shouldElideElementsAttr)
      {
        llvm::raw_ostream::operator<<(v87, "dense<");
        mlir::AsmPrinter::Impl::printDenseIntOrFPElementsAttr(a1, v109, 1);
LABEL_157:
        v97 = *a1;
        v55 = *(*a1 + 4);
        if (v55 >= *(*a1 + 3))
        {
          llvm::raw_ostream::write(v97, 62);
          goto LABEL_8;
        }

        *(v97 + 4) = v55 + 1;
        v56 = 62;
LABEL_70:
        *v55 = v56;
        goto LABEL_8;
      }
    }

    else
    {
      if (v34 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id)
      {
        v88 = a2;
      }

      else
      {
        v88 = 0;
      }

      v108 = v88;
      if (!v88)
      {
        if (v34 == &mlir::detail::TypeIDResolver<mlir::SparseElementsAttr,void>::id)
        {
          v92 = a2;
        }

        else
        {
          v92 = 0;
        }

        v107 = v92;
        if (!v92)
        {
          if (v34 == &mlir::detail::TypeIDResolver<mlir::StridedLayoutAttr,void>::id)
          {
            v98 = a2;
          }

          else
          {
            v98 = 0;
          }

          Values = v98;
          if (v98)
          {
            mlir::StridedLayoutAttr::print(&Values, *a1);
          }

          else
          {
            if (v34 == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
            {
              v100 = a2;
            }

            else
            {
              v100 = 0;
            }

            v105 = v100;
            if (v100)
            {
              llvm::raw_ostream::operator<<(*a1, "array<");
              v101 = mlir::AffineMapAttr::getValue(&v105);
              mlir::AsmPrinter::Impl::printType(a1, v101);
              if (mlir::AffineBinaryOpExpr::getLHS(&v105))
              {
                llvm::raw_ostream::operator<<(*a1, ": ");
                mlir::AsmPrinter::Impl::printDenseArrayAttr(a1, v105);
              }

              llvm::raw_ostream::operator<<(*a1, ">");
              return;
            }

            if (v34 == &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id)
            {
              v102 = a2;
            }

            else
            {
              v102 = 0;
            }

            v104 = v102;
            if (v102)
            {
              llvm::raw_ostream::operator<<(*a1, "dense_resource<");
              mlir::DenseResourceElementsAttr::getRawHandle(&v104, &v121);
              mlir::AsmPrinter::Impl::printResourceHandle(a1, &v121);
              llvm::raw_ostream::operator<<(*a1, ">");
            }

            else
            {
              if (!mlir::LocationAttr::classof(a2) || !a2)
              {
                llvm::report_fatal_error("Unknown builtin attribute", 1);
              }

              v103.var0 = a2;
              mlir::AsmPrinter::Impl::printLocation(a1, v103, 0);
            }
          }

          goto LABEL_8;
        }

        v121.n128_u64[0] = mlir::AffineBinaryOpExpr::getRHS(&v107);
        v93 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v121);
        if (mlir::OpPrintingFlags::shouldElideElementsAttr((a1 + 2), v93, v94) & 1) != 0 || (Values = mlir::SparseElementsAttr::getValues(&v107), v95 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&Values), (mlir::OpPrintingFlags::shouldElideElementsAttr((a1 + 2), v95, v96)))
        {
          printElidedElementsAttr(*a1);
          goto LABEL_8;
        }

        llvm::raw_ostream::operator<<(*a1, "sparse<");
        v121.n128_u64[0] = mlir::AffineBinaryOpExpr::getRHS(&v107);
        if (mlir::DenseElementsAttr::getNumElements(&v121))
        {
          mlir::AsmPrinter::Impl::printDenseIntOrFPElementsAttr(a1, v121.n128_u64[0], 0);
          llvm::raw_ostream::operator<<(*a1, ", ");
          v99 = mlir::SparseElementsAttr::getValues(&v107);
          mlir::AsmPrinter::Impl::printDenseElementsAttr(a1, v99, 1);
        }

        goto LABEL_157;
      }

      v89 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v108);
      v91 = mlir::OpPrintingFlags::shouldElideElementsAttr((a1 + 2), v89, v90);
      v87 = *a1;
      if (!v91)
      {
        llvm::raw_ostream::operator<<(v87, "dense<");
        mlir::AsmPrinter::Impl::printDenseStringElementsAttr(a1, v108);
        goto LABEL_157;
      }
    }

    printElidedElementsAttr(v87);
    goto LABEL_8;
  }

  v116 = mlir::AffineMapAttr::getValue(&v117);
  if (mlir::Type::isSignlessInteger(&v116, 1))
  {
    v39 = *a1;
    mlir::IntegerAttr::getValue(&v117, &v121);
    v40 = v121.n128_u32[2];
    if (v121.n128_u32[2] > 0x40)
    {
      v41 = llvm::APInt::countLeadingZerosSlowCase(&v121) == v40;
    }

    else
    {
      v41 = v121.n128_u64[0] == 0;
    }

    if (v41)
    {
      v60 = "false";
    }

    else
    {
      v60 = "true";
    }

    llvm::raw_ostream::operator<<(v39, v60);
    if (v121.n128_u32[2] >= 0x41 && v121.n128_u64[0])
    {
      operator delete[](v121.n128_u64[0]);
    }

    return;
  }

  v58 = !mlir::Type::isUnsignedInteger(&v116) && !mlir::Type::isSignlessInteger(&v116, 1);
  mlir::IntegerAttr::getValue(&v117, &v121);
  llvm::APInt::print(&v121, *a1, v58);
  if (v121.n128_u32[2] >= 0x41 && v121.n128_u64[0])
  {
    operator delete[](v121.n128_u64[0]);
  }

  if (a3 != 1 || !mlir::Type::isSignlessInteger(&v116, 64))
  {
    goto LABEL_8;
  }
}

void mlir::AsmPrinter::Impl::printDialectAttribute(uint64_t a1, uint64_t **a2)
{
  v4 = **a2;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v16 = 0;
  v20 = 0;
  v21 = 1;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v15 = &unk_1F5B3FB30;
  v22 = &v23;
  llvm::raw_ostream::SetBufferAndMode(&v15, 0, 0, 0);
  v5 = *(a1 + 8);
  v10[0] = &v15;
  v10[1] = v5;
  v6 = v5[40];
  v11 = v5[39];
  v12 = v6;
  v13 = v5[41];
  v14 = 1;
  v9[1] = v10;
  v9[0] = &unk_1F5AF57B8;
  (*(*v4 + 40))(v4, a2, v9);
  llvm::raw_ostream::~raw_ostream(&v15);
  if (v25 >= 0)
  {
    v7 = &v23;
  }

  else
  {
    v7 = v23;
  }

  if (v25 >= 0)
  {
    v8 = SHIBYTE(v25);
  }

  else
  {
    v8 = v24;
  }

  printDialectSymbol(*a1, "#", 1uLL, *(v4 + 8), *(v4 + 16), v7, v8);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(v23);
  }
}

llvm::raw_ostream *printDialectSymbol(void *a1, const char *a2, size_t a3, const char *a4, size_t a5, char *a6, size_t a7)
{
  v11 = a1;
  v13 = a1[3];
  v12 = a1[4];
  if (a3 > v13 - v12)
  {
    v14 = llvm::raw_ostream::write(v11, a2, a3);
    v12 = v14[4];
    if (a5 <= v14[3] - v12)
    {
      goto LABEL_3;
    }

LABEL_10:
    llvm::raw_ostream::write(v14, a4, a5);
    if (!a7)
    {
      goto LABEL_36;
    }

    goto LABEL_11;
  }

  if (a3)
  {
    memcpy(v12, a2, a3);
    v12 = (v11[4] + a3);
    v11[4] = v12;
  }

  v14 = v11;
  if (a5 > v11[3] - v12)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (a5)
  {
    memcpy(v12, a4, a5);
    v14[4] += a5;
  }

  if (!a7)
  {
    goto LABEL_36;
  }

LABEL_11:
  v16 = *a6;
  if ((v16 & 0x80000000) != 0)
  {
    if (!__maskrune(v16, 0x100uLL))
    {
      goto LABEL_36;
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * v16 + 60) & 0x100) == 0)
  {
    goto LABEL_36;
  }

  v17 = 0;
  while (1)
  {
    v18 = a6[v17];
    if (v18 != 95)
    {
      v19 = v18 != 46 && (v18 - 48) >= 0xA;
      if (v19 && (v18 & 0xFFFFFFDF) - 65 > 0x19)
      {
        break;
      }
    }

    if (a7 == ++v17)
    {
      goto LABEL_27;
    }
  }

  if (a7 >= v17 && (a6[v17] != 60 || a6[a7 - 1] != 62))
  {
LABEL_36:
    v24 = v11[4];
    if (v24 >= v11[3])
    {
      v11 = llvm::raw_ostream::write(v11, 60);
      result = v11[4];
      if (a7 <= v11[3] - result)
      {
LABEL_38:
        if (a7)
        {
          memcpy(result, a6, a7);
          result = (v11[4] + a7);
          v11[4] = result;
        }

        if (result < v11[3])
        {
          goto LABEL_41;
        }

LABEL_44:

        return llvm::raw_ostream::write(v11, 62);
      }
    }

    else
    {
      v11[4] = v24 + 1;
      *v24 = 60;
      result = v11[4];
      if (a7 <= v11[3] - result)
      {
        goto LABEL_38;
      }
    }

    v11 = llvm::raw_ostream::write(v11, a6, a7);
    result = v11[4];
    if (result < v11[3])
    {
LABEL_41:
      v11[4] = result + 1;
      *result = 62;
      return result;
    }

    goto LABEL_44;
  }

LABEL_27:
  v21 = v11[4];
  if (v21 >= v11[3])
  {
    v11 = llvm::raw_ostream::write(v11, 46);
    v22 = v11[4];
    if (a7 <= v11[3] - v22)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v11[4] = v21 + 1;
    *v21 = 46;
    v22 = v11[4];
    if (a7 <= v11[3] - v22)
    {
LABEL_29:
      result = memcpy(v22, a6, a7);
      v11[4] += a7;
      return result;
    }
  }

  return llvm::raw_ostream::write(v11, a6, a7);
}

void printFloatValue(const llvm::APFloat *a1, llvm::raw_ostream *a2, BOOL *a3)
{
  v19[16] = *MEMORY[0x1E69E9840];
  v6 = (a1 + 8);
  v7 = *(a1 + 1);
  v8 = llvm::APFloatBase::PPCDoubleDouble(a1);
  v9 = *(a1 + 2);
  if (v8 != v7)
  {
    v9 = a1;
  }

  if ((*(v9 + 28) & 6) == 0)
  {
LABEL_27:
    if (a3)
    {
      *a3 = 1;
    }

    v17 = v19;
    v18 = xmmword_1E0971D80;
    if (v8 == *v6)
    {
      llvm::detail::DoubleAPFloat::bitcastToAPInt(v6, &__p);
    }

    else
    {
      llvm::detail::IEEEFloat::bitcastToAPInt(v6, &__p);
    }

    llvm::APInt::toString(&__p, &v17, 16, 0, 1, 1, 0);
    llvm::raw_ostream::write(a2, v17, v18);
    if (LODWORD(v16[0]) >= 0x41)
    {
      if (__p)
      {
        operator delete[](__p);
      }
    }

    v11 = v17;
    if (v17 != v19)
    {
      goto LABEL_36;
    }

    return;
  }

  v17 = v19;
  v18 = xmmword_1E0971D70;
  if (v8 == v7)
  {
    llvm::detail::DoubleAPFloat::toString(v6, &v17, 6, 0, 0);
  }

  else
  {
    llvm::detail::IEEEFloat::toString(v6, &v17, 6u, 0, 0);
  }

  llvm::APFloat::APFloat(&__p, *v6, v17, v18);
  if (v16[0] == *v6)
  {
    if (v8 == v16[0])
    {
      IsEqual = llvm::detail::DoubleAPFloat::bitwiseIsEqual(v16, v6);
      if (v8 == v16[0])
      {
        goto LABEL_16;
      }
    }

    else
    {
      IsEqual = llvm::detail::IEEEFloat::bitwiseIsEqual(v16, v6);
      if (v8 == v16[0])
      {
        goto LABEL_16;
      }
    }

LABEL_9:
    llvm::detail::IEEEFloat::~IEEEFloat(v16);
    if (IsEqual)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

  IsEqual = 0;
  if (v8 != v16[0])
  {
    goto LABEL_9;
  }

LABEL_16:
  llvm::detail::DoubleAPFloat::~DoubleAPFloat(v16);
  if (IsEqual)
  {
LABEL_10:
    llvm::raw_ostream::write(a2, v17, v18);
    v11 = v17;
    if (v17 == v19)
    {
      return;
    }

LABEL_36:
    free(v11);
    return;
  }

LABEL_17:
  *&v18 = 0;
  if (v8 == *v6)
  {
    llvm::detail::DoubleAPFloat::toString(v6, &v17, 0, 3, 1);
    v12 = v17;
    v13 = v18;
    if (!v18)
    {
      goto LABEL_25;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::toString(v6, &v17, 0, 3u, 1);
    v12 = v17;
    v13 = v18;
    if (!v18)
    {
      goto LABEL_25;
    }
  }

  v14 = memchr(v12, 46, v13);
  if (!v14 || v14 - v12 == -1)
  {
LABEL_25:
    if (v12 != v19)
    {
      free(v12);
    }

    goto LABEL_27;
  }

  llvm::raw_ostream::write(a2, v12, v13);
  v11 = v17;
  if (v17 != v19)
  {
    goto LABEL_36;
  }
}

llvm::raw_ostream *mlir::AsmPrinter::Impl::printEscapedString(llvm::raw_ostream **a1, llvm::raw_ostream *a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *(v6 + 4);
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, "", 1uLL);
  }

  else
  {
    *v7 = 34;
    ++*(v6 + 4);
  }

  llvm::printEscapedString(a2, a3, *a1);
  result = *a1;
  v9 = *(*a1 + 4);
  if (*(*a1 + 3) == v9)
  {

    return llvm::raw_ostream::write(result, "", 1uLL);
  }

  else
  {
    *v9 = 34;
    ++*(result + 4);
  }

  return result;
}

double mlir::AffineMap::print(mlir::AffineMap *this, llvm::raw_ostream *a2)
{
  if (*this)
  {
    LHS = mlir::AffineBinaryOpExpr::getLHS(this);
    mlir::OpPrintingFlags::OpPrintingFlags(&v11);
    v5 = operator new(0x2D0uLL);
    v6 = mlir::DialectInterfaceCollection<mlir::OpAsmDialectInterface>::DialectInterfaceCollection(v5, LHS);
    *(v6 + 56) = v6 + 72;
    *(v6 + 64) = 0x600000000;
    *(v6 + 120) = 0;
    *(v6 + 128) = 0;
    *(v6 + 136) = 0;
    *(v6 + 144) = 0;
    *(v6 + 152) = 0;
    *(v6 + 160) = 0;
    *(v6 + 184) = 0u;
    *(v6 + 168) = v6 + 184;
    *(v6 + 176) = 0;
    *(v6 + 200) = v6 + 216;
    *(v6 + 208) = 0x400000000;
    *(v6 + 248) = v6 + 264;
    *(v6 + 256) = 0;
    *(v6 + 264) = 0;
    *(v6 + 272) = 1;
    *(v6 + 296) = 0;
    *(v6 + 280) = 0;
    *(v6 + 288) = 0;
    *(v6 + 304) = 0;
    *(v6 + 312) = 0;
    *(v6 + 320) = 0;
    *(v6 + 328) = 0;
    *(v6 + 336) = 0;
    *(v6 + 344) = 0;
    *(v6 + 352) = 0;
    *(v6 + 360) = 0;
    *(v6 + 368) = 0;
    *(v6 + 376) = 0;
    *(v6 + 384) = 0;
    *(v6 + 392) = 0;
    *(v6 + 400) = 0;
    *(v6 + 408) = 0;
    *(v6 + 416) = 0;
    *(v6 + 424) = 0;
    *(v6 + 432) = 0;
    *(v6 + 440) = 0;
    *(v6 + 448) = v6 + 464;
    *(v6 + 456) = 0x400000000;
    *(v6 + 504) = 0;
    *(v6 + 512) = 0;
    *(v6 + 496) = v6 + 512;
    *(v6 + 520) = 1;
    *(v6 + 528) = 0;
    *(v6 + 536) = 0;
    mlir::OpPrintingFlags::OpPrintingFlags((v6 + 544));
    *(v5 + 154) = 0;
    *(v5 + 76) = 0;
    *(v5 + 37) = 0u;
    v7 = v12;
    *(v5 + 39) = v11;
    *(v5 + 40) = v7;
    *(v5 + 41) = v13;
    *(v5 + 84) = 0;
    *(v5 + 680) = 0u;
    *(v5 + 174) = 0;
    *(v5 + 88) = v5 + 720;
    *(v5 + 89) = 0;
    *&v11 = a2;
    *(&v11 + 1) = v5;
    v8 = *(v5 + 40);
    v12 = *(v5 + 39);
    v13 = v8;
    v14 = *(v5 + 41);
    v15 = 1;
    mlir::AsmPrinter::Impl::printAffineMap(&v11, *this);
    mlir::detail::AsmStateImpl::~AsmStateImpl(v5);
  }

  v9 = *(a2 + 4);
  if ((*(a2 + 3) - v9) > 0x12)
  {
    *(v9 + 15) = 1044271169;
    result = *"<<NULL AFFINE MAP>>";
    *v9 = *"<<NULL AFFINE MAP>>";
    *(a2 + 4) += 19;
  }

  else
  {

    llvm::raw_ostream::write(a2, "<<NULL AFFINE MAP>>", 0x13uLL);
  }

  return result;
}

void mlir::IntegerSet::print(mlir::IntegerSet *this, llvm::raw_ostream *a2)
{
  Context = mlir::IntegerSet::getContext(this);
  mlir::OpPrintingFlags::OpPrintingFlags(&v9);
  v5 = operator new(0x2D0uLL);
  v6 = mlir::DialectInterfaceCollection<mlir::OpAsmDialectInterface>::DialectInterfaceCollection(v5, Context);
  *(v6 + 56) = v6 + 72;
  *(v6 + 64) = 0x600000000;
  *(v6 + 120) = 0;
  *(v6 + 128) = 0;
  *(v6 + 136) = 0;
  *(v6 + 144) = 0;
  *(v6 + 152) = 0;
  *(v6 + 160) = 0;
  *(v6 + 184) = 0u;
  *(v6 + 168) = v6 + 184;
  *(v6 + 176) = 0;
  *(v6 + 200) = v6 + 216;
  *(v6 + 208) = 0x400000000;
  *(v6 + 248) = v6 + 264;
  *(v6 + 256) = 0;
  *(v6 + 264) = 0;
  *(v6 + 272) = 1;
  *(v6 + 296) = 0;
  *(v6 + 280) = 0;
  *(v6 + 288) = 0;
  *(v6 + 304) = 0;
  *(v6 + 312) = 0;
  *(v6 + 320) = 0;
  *(v6 + 328) = 0;
  *(v6 + 336) = 0;
  *(v6 + 344) = 0;
  *(v6 + 352) = 0;
  *(v6 + 360) = 0;
  *(v6 + 368) = 0;
  *(v6 + 376) = 0;
  *(v6 + 384) = 0;
  *(v6 + 392) = 0;
  *(v6 + 400) = 0;
  *(v6 + 408) = 0;
  *(v6 + 416) = 0;
  *(v6 + 424) = 0;
  *(v6 + 432) = 0;
  *(v6 + 440) = 0;
  *(v6 + 448) = v6 + 464;
  *(v6 + 456) = 0x400000000;
  *(v6 + 504) = 0;
  *(v6 + 512) = 0;
  *(v6 + 496) = v6 + 512;
  *(v6 + 520) = 1;
  *(v6 + 528) = 0;
  *(v6 + 536) = 0;
  mlir::OpPrintingFlags::OpPrintingFlags((v6 + 544));
  *(v5 + 154) = 0;
  *(v5 + 76) = 0;
  *(v5 + 37) = 0u;
  v7 = v10;
  *(v5 + 39) = v9;
  *(v5 + 40) = v7;
  *(v5 + 41) = v11;
  *(v5 + 84) = 0;
  *(v5 + 680) = 0u;
  *(v5 + 174) = 0;
  *(v5 + 88) = v5 + 720;
  *(v5 + 89) = 0;
  *&v9 = a2;
  *(&v9 + 1) = v5;
  v8 = *(v5 + 40);
  v10 = *(v5 + 39);
  v11 = v8;
  v12 = *(v5 + 41);
  v13 = 1;
  mlir::AsmPrinter::Impl::printIntegerSet(&v9, *this);
  mlir::detail::AsmStateImpl::~AsmStateImpl(v5);
}

void mlir::AsmPrinter::Impl::printType(llvm::raw_ostream **a1, uint64_t **a2)
{
  if (a2)
  {
    if ((mlir::AsmPrinter::Impl::printAlias(a1, a2) & 1) == 0)
    {

      mlir::AsmPrinter::Impl::printTypeImpl(a1, a2);
    }
  }

  else
  {
    v4 = *a1;
    v5 = *(v4 + 4);
    if (*(v4 + 3) - v5 > 0xCuLL)
    {
      qmemcpy(v5, "<<NULL TYPE>>", 13);
      *(v4 + 4) += 13;
    }

    else
    {

      llvm::raw_ostream::write(v4, "<<NULL TYPE>>", 0xDuLL);
    }
  }
}

double printSymbolReference(char *a1, size_t a2, llvm::raw_ostream *a3)
{
  if (a2)
  {
    v4 = *(a3 + 4);
    if (v4 >= *(a3 + 3))
    {
      v7 = a1;
      v8 = a2;
      v9 = a3;
      llvm::raw_ostream::write(a3, 64);
      a1 = v7;
      a2 = v8;
      a3 = v9;
    }

    else
    {
      *(a3 + 4) = v4 + 1;
      *v4 = 64;
    }

    printKeywordOrString(a1, a2, a3);
  }

  else
  {
    v6 = *(a3 + 4);
    if (*(a3 + 3) - v6 > 0x18uLL)
    {
      qmemcpy(v6, "@<<INVALID EMPTY SYMBOL>>", 25);
      result = *"D EMPTY SYMBOL>>";
      *(a3 + 4) += 25;
    }

    else
    {

      llvm::raw_ostream::write(a3, "@<<INVALID EMPTY SYMBOL>>", 0x19uLL);
    }
  }

  return result;
}

double printElidedElementsAttr(llvm::raw_ostream *a1)
{
  v1 = *(a1 + 4);
  if (*(a1 + 3) - v1 > 0x19uLL)
  {
    qmemcpy(v1, "dense_resource<__elided__>", 26);
    result = *"urce<__elided__>";
    *(a1 + 4) += 26;
  }

  else
  {
    llvm::raw_ostream::write(a1, "dense_resource<__elided__>", 0x1AuLL);
  }

  return result;
}

void mlir::AsmPrinter::Impl::printDenseIntOrFPElementsAttr(uint64_t a1, void *a2, int a3)
{
  v29 = a2;
  Value = mlir::ArrayAttr::getValue(&v29);
  v28 = v5;
  isSplat = mlir::ElementsAttr::isSplat(&Value);
  v26 = isSplat;
  if (!a3 || (v7 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v29), v9 = *(a1 + 48), v9 == -1) || (v10 = v7, v9 >= mlir::ElementsAttr::getNumElements(v7, v8)) || (!mlir::DenseElementsAttr::classof(v10) ? (v11 = 0) : (v11 = v10), (*&v36 = v11) != 0 && (mlir::DenseElementsAttr::isSplat(&v36) & 1) != 0))
  {
    v12 = *(*isSplat + 136);
    v13 = v12 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id;
    if (v12 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v14 = isSplat;
    }

    else
    {
      v14 = 0;
    }

    v25 = v14;
    if (v13)
    {
      v24 = mlir::AffineMapAttr::getValue(&v25);
      if (*(*v24 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
      {
        mlir::DenseElementsAttr::tryGetComplexIntValues(&v29, &v36);
        v31 = v37;
        v15 = mlir::DenseElementsAttr::isSplat(&v29);
        v16 = Value;
        v17 = v28;
        v18 = *a1;
        *&v30 = &v36;
        *(&v30 + 1) = a1;
        *&v31 = &v24;
        v21 = llvm::function_ref<void ()>::callback_fn<mlir::AsmPrinter::Impl::printDenseIntOrFPElementsAttr(mlir::DenseIntOrFPElementsAttr,BOOL)::$_0>;
      }

      else
      {
        mlir::DenseElementsAttr::tryGetComplexFloatValues(&v29, &v36);
        v30 = v36;
        v31 = v37;
        v32 = v38;
        v33 = v39;
        v34 = v40;
        v35 = v41;
        v15 = mlir::DenseElementsAttr::isSplat(&v29);
        v16 = Value;
        v17 = v28;
        v18 = *a1;
        *&v30 = &v36;
        *(&v30 + 1) = a1;
        v21 = llvm::function_ref<void ()>::callback_fn<mlir::AsmPrinter::Impl::printDenseIntOrFPElementsAttr(mlir::DenseIntOrFPElementsAttr,BOOL)::$_1>;
      }
    }

    else
    {
      if (mlir::Type::isIntOrIndex(&v26))
      {
        mlir::DenseElementsAttr::getValues<llvm::APInt>(&v29, &v36);
        v30 = v36;
        v31 = v37;
        v15 = mlir::DenseElementsAttr::isSplat(&v29);
        v16 = Value;
        v17 = v28;
        v18 = *a1;
        *&v36 = &v30;
        *(&v36 + 1) = a1;
        *&v37 = &v26;
        v19 = llvm::function_ref<void ()>::callback_fn<mlir::AsmPrinter::Impl::printDenseIntOrFPElementsAttr(mlir::DenseIntOrFPElementsAttr,BOOL)::$_2>;
        v20 = &v36;
LABEL_20:
        printDenseElementsAttrImpl(v15, v16, v17, v18, v19, v20);
        return;
      }

      mlir::DenseElementsAttr::tryGetFloatValues(&v29, &v36);
      v30 = v36;
      v31 = v37;
      v32 = v38;
      v33 = v39;
      v34 = v40;
      v35 = v41;
      v15 = mlir::DenseElementsAttr::isSplat(&v29);
      v16 = Value;
      v17 = v28;
      v18 = *a1;
      *&v30 = &v36;
      *(&v30 + 1) = a1;
      v21 = llvm::function_ref<void ()>::callback_fn<mlir::AsmPrinter::Impl::printDenseIntOrFPElementsAttr(mlir::DenseIntOrFPElementsAttr,BOOL)::$_3>;
    }

    v19 = v21;
    v20 = &v30;
    goto LABEL_20;
  }

  RawStringData = mlir::DenseElementsAttr::getRawStringData(&v29);
  mlir::AsmPrinter::Impl::printHexString(a1, RawStringData, v23);
}

void mlir::AsmPrinter::Impl::printDenseStringElementsAttr(llvm::raw_ostream **a1, uint64_t a2)
{
  v9 = a2;
  v8[0] = mlir::DenseElementsAttr::getRawStringData(&v9);
  v8[1] = v3;
  v7[0] = a1;
  v7[1] = v8;
  isSplat = mlir::DenseElementsAttr::isSplat(&v9);
  Value = mlir::ArrayAttr::getValue(&v9);
  printDenseElementsAttrImpl(isSplat, Value, v6, *a1, llvm::function_ref<void ()>::callback_fn<mlir::AsmPrinter::Impl::printDenseStringElementsAttr(mlir::DenseStringElementsAttr)::$_0>, v7);
}

void mlir::AsmPrinter::Impl::printDenseElementsAttr(llvm::raw_ostream **a1, void *a2, int a3)
{
  if (a2 && *(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id)
  {
    v12[3] = v3;
    v12[4] = v4;
    v12[0] = a2;
    v11[0] = mlir::DenseElementsAttr::getRawStringData(v12);
    v11[1] = v6;
    v10[0] = a1;
    v10[1] = v11;
    isSplat = mlir::DenseElementsAttr::isSplat(v12);
    Value = mlir::ArrayAttr::getValue(v12);
    printDenseElementsAttrImpl(isSplat, Value, v9, *a1, llvm::function_ref<void ()>::callback_fn<mlir::AsmPrinter::Impl::printDenseStringElementsAttr(mlir::DenseStringElementsAttr)::$_0>, v10);
  }

  else
  {

    mlir::AsmPrinter::Impl::printDenseIntOrFPElementsAttr(a1, a2, a3);
  }
}

void mlir::AsmPrinter::Impl::printDenseArrayAttr(void **a1, uint64_t a2)
{
  v14 = a2;
  Value = mlir::AffineMapAttr::getValue(&v14);
  if (mlir::Type::isInteger(&Value, 1))
  {
    IntOrFloatBitWidth = 8;
  }

  else
  {
    IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&Value);
  }

  v11 = IntOrFloatBitWidth >> 3;
  v12 = IntOrFloatBitWidth;
  v10[0] = mlir::DenseArrayAttr::getRawData(&v14);
  v10[1] = v4;
  LHS = mlir::AffineBinaryOpExpr::getLHS(&v14);
  v6 = *a1;
  v15[0] = &v12;
  v15[1] = v10;
  v15[2] = &v11;
  v15[3] = &Value;
  v15[4] = a1;
  v7 = LHS;
  if (LHS)
  {
    mlir::AsmPrinter::Impl::printDenseArrayAttr(mlir::DenseArrayAttr)::$_0::operator()(v15, 0);
    if (v7 != 1)
    {
      for (i = 1; i != v7; ++i)
      {
        while (1)
        {
          v9 = v6[4];
          if (v6[3] - v9 > 1uLL)
          {
            break;
          }

          llvm::raw_ostream::write(v6, ", ", 2uLL);
          mlir::AsmPrinter::Impl::printDenseArrayAttr(mlir::DenseArrayAttr)::$_0::operator()(v15, i++);
          if (v7 == i)
          {
            return;
          }
        }

        *v9 = 8236;
        v6[4] += 2;
        mlir::AsmPrinter::Impl::printDenseArrayAttr(mlir::DenseArrayAttr)::$_0::operator()(v15, i);
      }
    }
  }
}

void printDenseElementsAttrImpl(int a1, uint64_t a2, uint64_t a3, llvm::raw_ostream *a4, void (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v34[2] = *MEMORY[0x1E69E9840];
  v31[0] = a2;
  v31[1] = a3;
  if (a1)
  {

    a5(a6, 0);
    return;
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v31);
  NumElements = mlir::ShapedType::getNumElements(ArgAttrsAttr, v8);
  if (!NumElements)
  {
    return;
  }

  v10 = NumElements;
  mlir::CallableOpInterface::getArgAttrsAttr(v31);
  v12 = v11;
  v32 = v34;
  v33 = 0x400000000;
  if (v11 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v34, v11, 4);
    v13 = v32;
    v14 = 4 * v12;
LABEL_10:
    bzero(v13, v14);
    goto LABEL_11;
  }

  if (v11)
  {
    v14 = 4 * v11;
    v13 = v34;
    goto LABEL_10;
  }

LABEL_11:
  LODWORD(v33) = v12;
  v15 = mlir::CallableOpInterface::getArgAttrsAttr(v31);
  if (!v10)
  {
    goto LABEL_38;
  }

  v16 = v15;
  v17 = 0;
  v18 = 0;
  do
  {
    if (!v17)
    {
      goto LABEL_18;
    }

    v19 = *(a4 + 4);
    if (*(a4 + 3) - v19 <= 1uLL)
    {
      llvm::raw_ostream::write(a4, ", ", 2uLL);
LABEL_18:
      if (v12 <= v18)
      {
        goto LABEL_26;
      }

      goto LABEL_21;
    }

    *v19 = 8236;
    *(a4 + 4) += 2;
    if (v12 <= v18)
    {
      goto LABEL_26;
    }

LABEL_21:
    v20 = v18 + 1;
    do
    {
      while (1)
      {
        v22 = *(a4 + 4);
        if (v22 >= *(a4 + 3))
        {
          break;
        }

        *(a4 + 4) = v22 + 1;
        *v22 = 91;
        v21 = v12 > v20++;
        if (!v21)
        {
          goto LABEL_26;
        }
      }

      llvm::raw_ostream::write(a4, 91);
      v21 = v12 > v20++;
    }

    while (v21);
LABEL_26:
    a5(a6, v17);
    ++*(v32 + v12 - 1);
    if (v12 == 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v12;
      v23 = (v12 - 1);
      LODWORD(v24) = v12;
      do
      {
        v25 = v24;
        v24 = v23;
        v26 = v32;
        if (*(v16 + 8 * v24) <= *(v32 + v24))
        {
          *(v32 + v24) = 0;
          ++v26[v25 - 2];
          --v18;
          v27 = *(a4 + 4);
          if (v27 < *(a4 + 3))
          {
            *(a4 + 4) = v27 + 1;
            *v27 = 93;
          }

          else
          {
            llvm::raw_ostream::write(a4, 93);
          }
        }

        v23 = v24 - 1;
      }

      while (v24 != 1);
    }

    v17 = (v17 + 1);
  }

  while (v17 != v10);
  for (; v18; --v18)
  {
    while (1)
    {
      v28 = *(a4 + 4);
      if (v28 >= *(a4 + 3))
      {
        break;
      }

      *(a4 + 4) = v28 + 1;
      *v28 = 93;
      if (!--v18)
      {
        goto LABEL_38;
      }
    }

    llvm::raw_ostream::write(a4, 93);
  }

LABEL_38:
  if (v32 != v34)
  {
    free(v32);
  }
}

void mlir::AsmPrinter::Impl::printTypeImpl(llvm::raw_ostream **a1, uint64_t **a2)
{
  v2 = (*a2)[17];
  if (v2 == &mlir::detail::TypeIDResolver<mlir::OpaqueType,void>::id)
  {
    v6 = *a1;
    v163 = a2;
    Value = mlir::AffineMapAttr::getValue(&v163);
    AttrData = mlir::OpaqueAttr::getAttrData(&Value);
    v9 = v8;
    v10 = mlir::OpaqueAttr::getAttrData(&v163);
    printDialectSymbol(v6, "!", 1uLL, AttrData, v9, v10, v11);
    return;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    v12 = *a1;
    v13 = *(v12 + 4);
    if ((*(v12 + 3) - v13) <= 4)
    {
      v14 = "index";
      v15 = 5;
      goto LABEL_37;
    }

    *(v13 + 4) = 120;
    *v13 = 1701080681;
    v17 = *(v12 + 4) + 5;
LABEL_45:
    *(v12 + 4) = v17;
    return;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id)
  {
    v12 = *a1;
    v16 = *(v12 + 4);
    if (*(v12 + 3) - v16 > 7uLL)
    {
      v18 = 0x314D32453466;
      goto LABEL_44;
    }

    v14 = "f4E2M1FN";
LABEL_36:
    v15 = 8;
    goto LABEL_37;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id)
  {
    v12 = *a1;
    v16 = *(v12 + 4);
    if (*(v12 + 3) - v16 > 7uLL)
    {
      v18 = 0x334D32453666;
      goto LABEL_44;
    }

    v14 = "f6E2M3FN";
    goto LABEL_36;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id)
  {
    v12 = *a1;
    v16 = *(v12 + 4);
    if (*(v12 + 3) - v16 > 7uLL)
    {
      v18 = 0x324D33453666;
      goto LABEL_44;
    }

    v14 = "f6E3M2FN";
    goto LABEL_36;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id)
  {
    v12 = *a1;
    v19 = *(v12 + 4);
    if ((*(v12 + 3) - v19) <= 5)
    {
      v14 = "f8E5M2";
      v15 = 6;
      goto LABEL_37;
    }

    *(v19 + 4) = 12877;
    v20 = 893728870;
    goto LABEL_53;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id)
  {
    v12 = *a1;
    v19 = *(v12 + 4);
    if ((*(v12 + 3) - v19) <= 5)
    {
      v14 = "f8E4M3";
      v15 = 6;
      goto LABEL_37;
    }

    *(v19 + 4) = 13133;
    v20 = 876951654;
    goto LABEL_53;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id)
  {
    v12 = *a1;
    v16 = *(v12 + 4);
    if (*(v12 + 3) - v16 <= 7uLL)
    {
      v14 = "f8E4M3FN";
      goto LABEL_36;
    }

    v18 = 0x334D34453866;
LABEL_44:
    *v16 = v18 & 0xFFFFFFFFFFFFLL | 0x4E46000000000000;
    v17 = *(v12 + 4) + 8;
    goto LABEL_45;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id)
  {
    v12 = *a1;
    v21 = *(v12 + 4);
    if ((*(v12 + 3) - v21) <= 9)
    {
      v14 = "f8E5M2FNUZ";
      v15 = 10;
      goto LABEL_37;
    }

    v22 = "f8E5M2FNUZ";
    goto LABEL_63;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id)
  {
    v12 = *a1;
    v21 = *(v12 + 4);
    if ((*(v12 + 3) - v21) <= 9)
    {
      v14 = "f8E4M3FNUZ";
      v15 = 10;
      goto LABEL_37;
    }

    v22 = "f8E4M3FNUZ";
LABEL_63:
    *(v21 + 8) = 23125;
    *v21 = *v22;
    v17 = *(v12 + 4) + 10;
    goto LABEL_45;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id)
  {
    v12 = *a1;
    v23 = *(v12 + 4);
    if (*(v12 + 3) - v23 <= 0xCuLL)
    {
      v14 = "f8E4M3B11FNUZ";
      v15 = 13;
      goto LABEL_37;
    }

    qmemcpy(v23, "f8E4M3B11FNUZ", 13);
    v17 = *(v12 + 4) + 13;
    goto LABEL_45;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id)
  {
    v12 = *a1;
    v19 = *(v12 + 4);
    if ((*(v12 + 3) - v19) <= 5)
    {
      v14 = "f8E3M4";
      v15 = 6;
      goto LABEL_37;
    }

    *(v19 + 4) = 13389;
    v20 = 860174438;
LABEL_53:
    *v19 = v20;
    v17 = *(v12 + 4) + 6;
    goto LABEL_45;
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id)
  {
    v12 = *a1;
    v24 = *(v12 + 4);
    if (*(v12 + 3) - v24 > 3uLL)
    {
      v26 = 909207138;
      goto LABEL_79;
    }

    v14 = "bf16";
    v15 = 4;
  }

  else if (v2 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id)
  {
    v12 = *a1;
    v25 = *(v12 + 4);
    if ((*(v12 + 3) - v25) > 2)
    {
      *(v25 + 2) = 54;
      v27 = 12646;
      goto LABEL_89;
    }

    v14 = "f16";
    v15 = 3;
  }

  else if (v2 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id)
  {
    v12 = *a1;
    v24 = *(v12 + 4);
    if (*(v12 + 3) - v24 > 3uLL)
    {
      v26 = 842229364;
      goto LABEL_79;
    }

    v14 = "tf32";
    v15 = 4;
  }

  else if (v2 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id)
  {
    v12 = *a1;
    v25 = *(v12 + 4);
    if ((*(v12 + 3) - v25) > 2)
    {
      *(v25 + 2) = 50;
      v27 = 13158;
      goto LABEL_89;
    }

    v14 = "f32";
    v15 = 3;
  }

  else
  {
    if (v2 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id)
    {
      if (v2 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id)
      {
        if (v2 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
        {
          if (v2 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
          {
            if (a2 && v2 == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
            {
              v163 = a2;
              v4 = *a1;
              v5 = *(v4 + 4);
              if (v5 >= *(v4 + 3))
              {
                llvm::raw_ostream::write(v4, 40);
              }

              else
              {
                *(v4 + 4) = v5 + 1;
                *v5 = 40;
              }

              Inputs = mlir::FunctionType::getInputs(&v163);
              if (v39)
              {
                v40 = Inputs;
                v41 = v39;
                v42 = *a1;
                v43 = *Inputs;
                if (*Inputs)
                {
                  if ((mlir::AsmPrinter::Impl::printAlias(a1, v43) & 1) == 0)
                  {
                    mlir::AsmPrinter::Impl::printTypeImpl(a1, v43);
                  }
                }

                else
                {
                  v58 = *(v42 + 4);
                  if (*(v42 + 3) - v58 > 0xCuLL)
                  {
                    qmemcpy(v58, "<<NULL TYPE>>", 13);
                    *(v42 + 4) += 13;
                  }

                  else
                  {
                    llvm::raw_ostream::write(*a1, "<<NULL TYPE>>", 0xDuLL);
                  }
                }

                if (v41 != 1)
                {
                  v87 = v40 + 1;
                  v88 = 8 * v41 - 8;
                  do
                  {
                    v89 = *(v42 + 4);
                    if (*(v42 + 3) - v89 > 1uLL)
                    {
                      *v89 = 8236;
                      *(v42 + 4) += 2;
                    }

                    else
                    {
                      llvm::raw_ostream::write(v42, ", ", 2uLL);
                    }

                    v90 = *v87;
                    if (*v87)
                    {
                      if ((mlir::AsmPrinter::Impl::printAlias(a1, *v87) & 1) == 0)
                      {
                        mlir::AsmPrinter::Impl::printTypeImpl(a1, v90);
                      }
                    }

                    else
                    {
                      v91 = *a1;
                      v92 = *(*a1 + 4);
                      if (*(*a1 + 3) - v92 > 0xCuLL)
                      {
                        qmemcpy(v92, "<<NULL TYPE>>", 13);
                        *(v91 + 4) += 13;
                      }

                      else
                      {
                        llvm::raw_ostream::write(v91, "<<NULL TYPE>>", 0xDuLL);
                      }
                    }

                    ++v87;
                    v88 -= 8;
                  }

                  while (v88);
                }
              }

              v76 = *a1;
              v77 = *(*a1 + 4);
              if ((*(*a1 + 3) - v77) > 4)
              {
                *(v77 + 4) = 32;
                *v77 = 1043144745;
                *(v76 + 4) += 5;
              }

              else
              {
                llvm::raw_ostream::write(v76, ") -> ", 5uLL);
              }

              Results = mlir::FunctionType::getResults(&v163);
              v79 = Results;
              v81 = v80;
              if (v80 != 1 || (v82 = *Results, *(**Results + 136) == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id))
              {
                v83 = *a1;
                v84 = *(*a1 + 4);
                if (v84 >= *(*a1 + 3))
                {
                  llvm::raw_ostream::write(v83, 40);
                }

                else
                {
                  *(v83 + 4) = v84 + 1;
                  *v84 = 40;
                }

                if (v81)
                {
                  v85 = *a1;
                  v86 = *v79;
                  if (*v79)
                  {
                    if ((mlir::AsmPrinter::Impl::printAlias(a1, *v79) & 1) == 0)
                    {
                      mlir::AsmPrinter::Impl::printTypeImpl(a1, v86);
                    }
                  }

                  else
                  {
                    v93 = *(v85 + 4);
                    if (*(v85 + 3) - v93 > 0xCuLL)
                    {
                      qmemcpy(v93, "<<NULL TYPE>>", 13);
                      *(v85 + 4) += 13;
                    }

                    else
                    {
                      llvm::raw_ostream::write(*a1, "<<NULL TYPE>>", 0xDuLL);
                    }
                  }

                  if (v81 != 1)
                  {
                    v96 = v79 + 1;
                    v97 = 8 * v81 - 8;
                    do
                    {
                      v98 = *(v85 + 4);
                      if (*(v85 + 3) - v98 > 1uLL)
                      {
                        *v98 = 8236;
                        *(v85 + 4) += 2;
                      }

                      else
                      {
                        llvm::raw_ostream::write(v85, ", ", 2uLL);
                      }

                      v99 = *v96;
                      if (*v96)
                      {
                        if ((mlir::AsmPrinter::Impl::printAlias(a1, *v96) & 1) == 0)
                        {
                          mlir::AsmPrinter::Impl::printTypeImpl(a1, v99);
                        }
                      }

                      else
                      {
                        v100 = *a1;
                        v101 = *(*a1 + 4);
                        if (*(*a1 + 3) - v101 > 0xCuLL)
                        {
                          qmemcpy(v101, "<<NULL TYPE>>", 13);
                          *(v100 + 4) += 13;
                        }

                        else
                        {
                          llvm::raw_ostream::write(v100, "<<NULL TYPE>>", 0xDuLL);
                        }
                      }

                      ++v96;
                      v97 -= 8;
                    }

                    while (v97);
                  }
                }

                v94 = *a1;
                v95 = *(*a1 + 4);
                if (v95 >= *(*a1 + 3))
                {
                  llvm::raw_ostream::write(v94, 41);
                }

                else
                {
                  *(v94 + 4) = v95 + 1;
                  *v95 = 41;
                }
              }

              else if ((mlir::AsmPrinter::Impl::printAlias(a1, *Results) & 1) == 0)
              {
                mlir::AsmPrinter::Impl::printTypeImpl(a1, v82);
              }

              return;
            }

            if (a2 && v2 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
            {
              v163 = a2;
              RawStringData = mlir::DenseElementsAttr::getRawStringData(&v163);
              v33 = v32;
              v34 = *a1;
              v35 = *(*a1 + 4);
              if (*(*a1 + 3) - v35 > 6uLL)
              {
                *(v35 + 3) = 1014132596;
                *v35 = 1952671094;
                *(v34 + 4) += 7;
              }

              else
              {
                llvm::raw_ostream::write(v34, "vector<", 7uLL);
              }

              v47 = mlir::ArrayAttr::getValue(&v163);
              v49 = v48;
              if (v48)
              {
                v50 = v47;
                if (v33)
                {
                  v51 = a1;
                  do
                  {
                    while (1)
                    {
                      if (*RawStringData == 1)
                      {
                        v52 = *v51;
                        v53 = *(*v51 + 4);
                        if (v53 >= *(*v51 + 3))
                        {
                          llvm::raw_ostream::write(v52, 91);
                          v51 = a1;
                        }

                        else
                        {
                          *(v52 + 4) = v53 + 1;
                          *v53 = 91;
                        }
                      }

                      llvm::raw_ostream::operator<<(*v51, *v50);
                      v51 = a1;
                      if (*RawStringData == 1)
                      {
                        v54 = *a1;
                        v55 = *(*a1 + 4);
                        if (v55 >= *(*a1 + 3))
                        {
                          llvm::raw_ostream::write(v54, 93);
                          v51 = a1;
                        }

                        else
                        {
                          *(v54 + 4) = v55 + 1;
                          *v55 = 93;
                        }
                      }

                      v56 = *v51;
                      v57 = *(*v51 + 4);
                      if (v57 >= *(*v51 + 3))
                      {
                        break;
                      }

                      *(v56 + 4) = v57 + 1;
                      *v57 = 120;
                      ++RawStringData;
                      ++v50;
                      if (!--v49)
                      {
                        goto LABEL_152;
                      }
                    }

                    llvm::raw_ostream::write(v56, 120);
                    v51 = a1;
                    ++RawStringData;
                    ++v50;
                    --v49;
                  }

                  while (v49);
                }

                else
                {
                  v70 = a1;
                  do
                  {
                    while (1)
                    {
                      v71 = *v50++;
                      llvm::raw_ostream::operator<<(*v70, v71);
                      v72 = *a1;
                      v73 = *(*a1 + 4);
                      if (v73 >= *(*a1 + 3))
                      {
                        break;
                      }

                      v70 = a1;
                      *(v72 + 4) = v73 + 1;
                      *v73 = 120;
                      if (!--v49)
                      {
                        goto LABEL_152;
                      }
                    }

                    llvm::raw_ostream::write(v72, 120);
                    v70 = a1;
                    --v49;
                  }

                  while (v49);
                }
              }

LABEL_152:
              RHS = mlir::AffineBinaryOpExpr::getRHS(&v163);
              if (RHS)
              {
                goto LABEL_153;
              }

              goto LABEL_212;
            }

            if (a2 && v2 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
            {
              Value = a2;
              v36 = *a1;
              v37 = *(*a1 + 4);
              if (*(*a1 + 3) - v37 > 6uLL)
              {
                *(v37 + 3) = 1014132595;
                *v37 = 1936614772;
                *(v36 + 4) += 7;
              }

              else
              {
                llvm::raw_ostream::write(v36, "tensor<", 7uLL);
              }

              v64 = mlir::ArrayAttr::getValue(&Value);
              v65 = *a1;
              v163 = "x";
              v164 = 1;
              llvm::interleave<long long const*,void mlir::detail::printDimensionList<llvm::ArrayRef<long long> &>(llvm::raw_ostream &,llvm::ArrayRef<long long> &)::{lambda(llvm::ArrayRef<long long> & const&)#1},void llvm::interleave<llvm::ArrayRef<long long>,llvm::interleave,llvm::raw_ostream,long long const>(void mlir::detail::printDimensionList<llvm::ArrayRef<long long> &>(llvm::raw_ostream &,llvm::ArrayRef<long long> &)::{lambda(llvm::ArrayRef<long long> & const&)#1},llvm::raw_ostream &,llvm::interleave,llvm::StringRef const&)::{lambda(void)#1},void>(v64, &v64[v66], v65, v65, &v163);
              mlir::ArrayAttr::getValue(&Value);
              if (v67)
              {
                v68 = *a1;
                v69 = *(*a1 + 4);
                if (v69 >= *(*a1 + 3))
                {
                  llvm::raw_ostream::write(v68, 120);
                }

                else
                {
                  *(v68 + 4) = v69 + 1;
                  *v69 = 120;
                }
              }

              v102 = mlir::AffineBinaryOpExpr::getRHS(&Value);
              if (v102)
              {
                v103 = v102;
                if ((mlir::AsmPrinter::Impl::printAlias(a1, v102) & 1) == 0)
                {
                  mlir::AsmPrinter::Impl::printTypeImpl(a1, v103);
                }
              }

              else
              {
                v104 = *a1;
                v105 = *(*a1 + 4);
                if (*(*a1 + 3) - v105 > 0xCuLL)
                {
                  qmemcpy(v105, "<<NULL TYPE>>", 13);
                  *(v104 + 4) += 13;
                }

                else
                {
                  llvm::raw_ostream::write(v104, "<<NULL TYPE>>", 0xDuLL);
                }
              }

              if (!mlir::SparseElementsAttr::getValues(&Value))
              {
                goto LABEL_283;
              }

              v111 = *a1;
              v112 = *(*a1 + 4);
              if (*(*a1 + 3) - v112 > 1uLL)
              {
                *v112 = 8236;
                *(v111 + 4) += 2;
              }

              else
              {
                llvm::raw_ostream::write(v111, ", ", 2uLL);
              }

              Values = mlir::SparseElementsAttr::getValues(&Value);
              if (Values)
              {
                v114 = Values;
                {
                  mlir::AsmPrinter::Impl::printAttributeImpl(a1, v114, 0);
                }

                goto LABEL_283;
              }

              goto LABEL_279;
            }

            if (a2 && v2 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
            {
              v163 = a2;
              v45 = *a1;
              v46 = *(*a1 + 4);
              if ((*(*a1 + 3) - v46) > 8)
              {
                *(v46 + 8) = 120;
                *v46 = *"tensor<*x";
                *(v45 + 4) += 9;
              }

              else
              {
                llvm::raw_ostream::write(v45, "tensor<*x", 9uLL);
              }

              RHS = mlir::AffineMapAttr::getValue(&v163);
              if (!RHS)
              {
LABEL_212:
                v108 = *a1;
                v109 = *(*a1 + 4);
                if (*(*a1 + 3) - v109 <= 0xCuLL)
                {
                  llvm::raw_ostream::write(v108, "<<NULL TYPE>>", 0xDuLL);
                  goto LABEL_283;
                }

                qmemcpy(v109, "<<NULL TYPE>>", 13);
                v110 = *(v108 + 4) + 13;
                goto LABEL_282;
              }

LABEL_153:
              v75 = RHS;
              if ((mlir::AsmPrinter::Impl::printAlias(a1, RHS) & 1) == 0)
              {
                mlir::AsmPrinter::Impl::printTypeImpl(a1, v75);
              }

              goto LABEL_283;
            }

            if (a2 && v2 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
            {
              Value = a2;
              v62 = *a1;
              v63 = *(*a1 + 4);
              if (*(*a1 + 3) - v63 > 6uLL)
              {
                *(v63 + 3) = 1013343602;
                *v63 = 1919772013;
                *(v62 + 4) += 7;
              }

              else
              {
                llvm::raw_ostream::write(v62, "memref<", 7uLL);
              }

              v117 = mlir::ArrayAttr::getValue(&Value);
              v118 = *a1;
              v163 = "x";
              v164 = 1;
              llvm::interleave<long long const*,void mlir::detail::printDimensionList<llvm::ArrayRef<long long> &>(llvm::raw_ostream &,llvm::ArrayRef<long long> &)::{lambda(llvm::ArrayRef<long long> & const&)#1},void llvm::interleave<llvm::ArrayRef<long long>,llvm::interleave,llvm::raw_ostream,long long const>(void mlir::detail::printDimensionList<llvm::ArrayRef<long long> &>(llvm::raw_ostream &,llvm::ArrayRef<long long> &)::{lambda(llvm::ArrayRef<long long> & const&)#1},llvm::raw_ostream &,llvm::interleave,llvm::StringRef const&)::{lambda(void)#1},void>(v117, &v117[v119], v118, v118, &v163);
              mlir::ArrayAttr::getValue(&Value);
              if (v120)
              {
                v121 = *a1;
                v122 = *(*a1 + 4);
                if (v122 >= *(*a1 + 3))
                {
                  llvm::raw_ostream::write(v121, 120);
                }

                else
                {
                  *(v121 + 4) = v122 + 1;
                  *v122 = 120;
                }
              }

              v123 = mlir::AffineBinaryOpExpr::getRHS(&Value);
              if (v123)
              {
                v124 = v123;
                if ((mlir::AsmPrinter::Impl::printAlias(a1, v123) & 1) == 0)
                {
                  mlir::AsmPrinter::Impl::printTypeImpl(a1, v124);
                }
              }

              else
              {
                v125 = *a1;
                v126 = *(*a1 + 4);
                if (*(*a1 + 3) - v126 > 0xCuLL)
                {
                  qmemcpy(v126, "<<NULL TYPE>>", 13);
                  *(v125 + 4) += 13;
                }

                else
                {
                  llvm::raw_ostream::write(v125, "<<NULL TYPE>>", 0xDuLL);
                }
              }

              v163 = mlir::DenseElementsAttr::getRawStringData(&Value);
              v164 = v133;
              if (*(*v163 + 136) != &mlir::detail::TypeIDResolver<mlir::AffineMapAttr,void>::id || (mlir::ElementsAttr::isSplat(&v163) & 1) == 0)
              {
                v134 = *a1;
                v135 = *(*a1 + 4);
                if (*(*a1 + 3) - v135 > 1uLL)
                {
                  *v135 = 8236;
                  *(v134 + 4) += 2;
                }

                else
                {
                  llvm::raw_ostream::write(v134, ", ", 2uLL);
                }

                v136 = mlir::DenseElementsAttr::getRawStringData(&Value);
                if (v136)
                {
                  v137 = v136;
                  {
                    mlir::AsmPrinter::Impl::printAttributeImpl(a1, v137, 1);
                  }
                }

                else
                {
                  v138 = *a1;
                  v139 = *(*a1 + 4);
                  if ((*(*a1 + 3) - v139) > 0x11)
                  {
                    *(v139 + 16) = 15934;
                    *v139 = *"<<NULL ATTRIBUTE>>";
                    *(v138 + 4) += 18;
                  }

                  else
                  {
                    llvm::raw_ostream::write(v138, "<<NULL ATTRIBUTE>>", 0x12uLL);
                  }
                }
              }

              if (!mlir::MemRefType::getMemorySpace(&Value))
              {
                goto LABEL_283;
              }

              v140 = *a1;
              v141 = *(*a1 + 4);
              if (*(*a1 + 3) - v141 > 1uLL)
              {
                *v141 = 8236;
                *(v140 + 4) += 2;
              }

              else
              {
                llvm::raw_ostream::write(v140, ", ", 2uLL);
              }

              MemorySpace = mlir::MemRefType::getMemorySpace(&Value);
              if (MemorySpace)
              {
                goto LABEL_264;
              }

              goto LABEL_279;
            }

            if (a2 && v2 == &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
            {
              v163 = a2;
              v106 = *a1;
              v107 = *(*a1 + 4);
              if ((*(*a1 + 3) - v107) > 8)
              {
                *(v107 + 8) = 120;
                *v107 = *"memref<*x";
                *(v106 + 4) += 9;
              }

              else
              {
                llvm::raw_ostream::write(v106, "memref<*x", 9uLL);
              }

              v129 = mlir::AffineMapAttr::getValue(&v163);
              if (v129)
              {
                v130 = v129;
                if ((mlir::AsmPrinter::Impl::printAlias(a1, v129) & 1) == 0)
                {
                  mlir::AsmPrinter::Impl::printTypeImpl(a1, v130);
                }
              }

              else
              {
                v131 = *a1;
                v132 = *(*a1 + 4);
                if (*(*a1 + 3) - v132 > 0xCuLL)
                {
                  qmemcpy(v132, "<<NULL TYPE>>", 13);
                  *(v131 + 4) += 13;
                }

                else
                {
                  llvm::raw_ostream::write(v131, "<<NULL TYPE>>", 0xDuLL);
                }
              }

              if (!mlir::AffineBinaryOpExpr::getLHS(&v163))
              {
                goto LABEL_283;
              }

              v144 = *a1;
              v145 = *(*a1 + 4);
              if (*(*a1 + 3) - v145 > 1uLL)
              {
                *v145 = 8236;
                *(v144 + 4) += 2;
              }

              else
              {
                llvm::raw_ostream::write(v144, ", ", 2uLL);
              }

              MemorySpace = mlir::AffineBinaryOpExpr::getLHS(&v163);
              if (MemorySpace)
              {
LABEL_264:
                v143 = MemorySpace;
                {
                  mlir::AsmPrinter::Impl::printAttributeImpl(a1, v143, 1);
                }

                goto LABEL_283;
              }

LABEL_279:
              v108 = *a1;
              v146 = *(*a1 + 4);
              if ((*(*a1 + 3) - v146) <= 0x11)
              {
                llvm::raw_ostream::write(v108, "<<NULL ATTRIBUTE>>", 0x12uLL);
                goto LABEL_283;
              }

              *(v146 + 16) = 15934;
              *v146 = *"<<NULL ATTRIBUTE>>";
              v110 = *(v108 + 4) + 18;
LABEL_282:
              *(v108 + 4) = v110;
LABEL_283:
              v147 = *a1;
              v148 = *(*a1 + 4);
              if (v148 >= *(*a1 + 3))
              {
                llvm::raw_ostream::write(v147, 62);
              }

              else
              {
                *(v147 + 4) = v148 + 1;
                *v148 = 62;
              }

              return;
            }

            if (a2 && v2 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
            {
              v163 = a2;
              v115 = *a1;
              v116 = *(*a1 + 4);
              if (*(*a1 + 3) - v116 > 7uLL)
              {
                *v116 = 0x3C78656C706D6F63;
                *(v115 + 4) += 8;
              }

              else
              {
                llvm::raw_ostream::write(v115, "complex<", 8uLL);
              }

              RHS = mlir::AffineMapAttr::getValue(&v163);
              if (!RHS)
              {
                goto LABEL_212;
              }

              goto LABEL_153;
            }

            if (a2 && v2 == &mlir::detail::TypeIDResolver<mlir::TupleType,void>::id)
            {
              v163 = a2;
              v127 = *a1;
              v128 = *(*a1 + 4);
              if ((*(*a1 + 3) - v128) > 5)
              {
                *(v128 + 4) = 15461;
                *v128 = 1819309428;
                *(v127 + 4) += 6;
              }

              else
              {
                llvm::raw_ostream::write(v127, "tuple<", 6uLL);
              }

              Types = mlir::TupleType::getTypes(&v163);
              if (v150)
              {
                v151 = Types;
                v152 = v150;
                v153 = *a1;
                v154 = *Types;
                if (*Types)
                {
                  if ((mlir::AsmPrinter::Impl::printAlias(a1, v154) & 1) == 0)
                  {
                    mlir::AsmPrinter::Impl::printTypeImpl(a1, v154);
                  }
                }

                else
                {
                  v155 = *(v153 + 4);
                  if (*(v153 + 3) - v155 > 0xCuLL)
                  {
                    qmemcpy(v155, "<<NULL TYPE>>", 13);
                    *(v153 + 4) += 13;
                  }

                  else
                  {
                    llvm::raw_ostream::write(*a1, "<<NULL TYPE>>", 0xDuLL);
                  }
                }

                if (v152 != 1)
                {
                  v156 = v151 + 1;
                  v157 = 8 * v152 - 8;
                  do
                  {
                    v158 = *(v153 + 4);
                    if (*(v153 + 3) - v158 > 1uLL)
                    {
                      *v158 = 8236;
                      *(v153 + 4) += 2;
                    }

                    else
                    {
                      llvm::raw_ostream::write(v153, ", ", 2uLL);
                    }

                    v159 = *v156;
                    if (*v156)
                    {
                      if ((mlir::AsmPrinter::Impl::printAlias(a1, *v156) & 1) == 0)
                      {
                        mlir::AsmPrinter::Impl::printTypeImpl(a1, v159);
                      }
                    }

                    else
                    {
                      v160 = *a1;
                      v161 = *(*a1 + 4);
                      if (*(*a1 + 3) - v161 > 0xCuLL)
                      {
                        qmemcpy(v161, "<<NULL TYPE>>", 13);
                        *(v160 + 4) += 13;
                      }

                      else
                      {
                        llvm::raw_ostream::write(v160, "<<NULL TYPE>>", 0xDuLL);
                      }
                    }

                    ++v156;
                    v157 -= 8;
                  }

                  while (v157);
                }
              }

              goto LABEL_283;
            }

            if (v2 != &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id)
            {

              mlir::AsmPrinter::Impl::printDialectType(a1, a2);
              return;
            }

            v12 = *a1;
            v24 = *(*a1 + 4);
            if (*(*a1 + 3) - v24 <= 3uLL)
            {
              v14 = "none";
              v15 = 4;
              goto LABEL_37;
            }

            v26 = 1701736302;
            goto LABEL_79;
          }

          v163 = a2;
          if (mlir::IntegerType::getSignedness(&v163) == 1)
          {
            v28 = *a1;
            v29 = *(*a1 + 4);
            if (v29 < *(*a1 + 3))
            {
              *(v28 + 4) = v29 + 1;
              v30 = 115;
LABEL_101:
              *v29 = v30;
              goto LABEL_136;
            }

            v44 = 115;
          }

          else
          {
            if (mlir::IntegerType::getSignedness(&v163) != 2)
            {
LABEL_136:
              v59 = *a1;
              v60 = *(v59 + 4);
              if (v60 >= *(v59 + 3))
              {
                v59 = llvm::raw_ostream::write(v59, 105);
              }

              else
              {
                *(v59 + 4) = v60 + 1;
                *v60 = 105;
              }

              Width = mlir::IntegerType::getWidth(&v163);
              llvm::raw_ostream::operator<<(v59, Width);
              return;
            }

            v28 = *a1;
            v29 = *(*a1 + 4);
            if (v29 < *(*a1 + 3))
            {
              *(v28 + 4) = v29 + 1;
              v30 = 117;
              goto LABEL_101;
            }

            v44 = 117;
          }

          llvm::raw_ostream::write(v28, v44);
          goto LABEL_136;
        }

        v12 = *a1;
        v24 = *(v12 + 4);
        if (*(v12 + 3) - v24 <= 3uLL)
        {
          v14 = "f128";
          v15 = 4;
          goto LABEL_37;
        }

        v26 = 942813542;
LABEL_79:
        *v24 = v26;
        v17 = *(v12 + 4) + 4;
        goto LABEL_45;
      }

      v12 = *a1;
      v25 = *(v12 + 4);
      if ((*(v12 + 3) - v25) <= 2)
      {
        v14 = "f80";
        v15 = 3;
        goto LABEL_37;
      }

      *(v25 + 2) = 48;
      v27 = 14438;
LABEL_89:
      *v25 = v27;
      v17 = *(v12 + 4) + 3;
      goto LABEL_45;
    }

    v12 = *a1;
    v25 = *(v12 + 4);
    if ((*(v12 + 3) - v25) > 2)
    {
      *(v25 + 2) = 52;
      v27 = 13926;
      goto LABEL_89;
    }

    v14 = "f64";
    v15 = 3;
  }

LABEL_37:

  llvm::raw_ostream::write(v12, v14, v15);
}

llvm::raw_ostream *mlir::AsmPrinter::Impl::printOptionalAttrDict(llvm::raw_ostream *result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v70[0] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return result;
  }

  v8 = result;
  if (!a5)
  {
    if (a6)
    {
      v14 = *result;
      v15 = *(*v8 + 4);
      if ((*(*v8 + 3) - v15) > 0xA)
      {
        *(v15 + 7) = 1936028789;
        *v15 = *" attributes";
        v14[4] += 11;
        v16 = *v8;
        v17 = *(*v8 + 4);
        if (*(*v8 + 3) - v17 <= 1uLL)
        {
LABEL_17:
          llvm::raw_ostream::write(v16, " {", 2uLL);
          v18 = *v8;
          mlir::AsmPrinter::Impl::printNamedAttribute(v8, *a2, a2[1]);
          if (a3 == 1)
          {
LABEL_31:
            result = *v8;
            v30 = *(*v8 + 4);
            if (v30 >= *(*v8 + 3))
            {

              return llvm::raw_ostream::write(result, 125);
            }

            else
            {
              *(result + 4) = v30 + 1;
              *v30 = 125;
            }

            return result;
          }

LABEL_27:
          v23 = &a2[2 * a3];
          v24 = a2 + 2;
          do
          {
            while (1)
            {
              v27 = *(v18 + 4);
              if (*(v18 + 3) - v27 <= 1uLL)
              {
                break;
              }

              *v27 = 8236;
              *(v18 + 4) += 2;
              v25 = *v24;
              v26 = v24[1];
              v24 += 2;
              mlir::AsmPrinter::Impl::printNamedAttribute(v8, v25, v26);
              if (v24 == v23)
              {
                goto LABEL_31;
              }
            }

            llvm::raw_ostream::write(v18, ", ", 2uLL);
            v28 = *v24;
            v29 = v24[1];
            v24 += 2;
            mlir::AsmPrinter::Impl::printNamedAttribute(v8, v28, v29);
          }

          while (v24 != v23);
          goto LABEL_31;
        }

LABEL_26:
        *v17 = 31520;
        *(v16 + 4) += 2;
        v18 = *v8;
        mlir::AsmPrinter::Impl::printNamedAttribute(v8, *a2, a2[1]);
        if (a3 == 1)
        {
          goto LABEL_31;
        }

        goto LABEL_27;
      }

      llvm::raw_ostream::write(v14, " attributes", 0xBuLL);
    }

    v16 = *v8;
    v17 = *(*v8 + 4);
    if (*(*v8 + 3) - v17 <= 1uLL)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  *&v66 = a4;
  AttrData = a4 + 16 * a5;
  llvm::detail::DenseSetImpl<llvm::StringRef,llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::DenseMapInfo<llvm::StringRef,void>>::DenseSetImpl<llvm::StringRef const*>(&v67, &v66, &AttrData);
  v10 = 0;
  v11 = 16 * a3;
  v12 = &a2[2 * a3];
  while (1)
  {
    v66 = *&a2[v10 / 8];
    CallableRegion = mlir::CallGraphNode::getCallableRegion(&v66);
    AttrData = mlir::OpaqueAttr::getAttrData(&CallableRegion);
    v65 = v13;
    result = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::doFind<llvm::StringRef>(&v67, &AttrData);
    if (!result)
    {
      break;
    }

    if (v67)
    {
      if (result == v70)
      {
        goto LABEL_19;
      }
    }

    else if (result == (v68 + 16 * v69))
    {
      goto LABEL_19;
    }

    v10 += 16;
    if (v11 == v10)
    {
      goto LABEL_51;
    }
  }

  if ((v67 & 1) == 0)
  {
    result = (v68 + 16 * v69);
  }

LABEL_19:
  if (v11 == v10)
  {
LABEL_51:
    if ((v67 & 1) == 0)
    {
      goto LABEL_52;
    }

    return result;
  }

  if (a6)
  {
    v19 = *v8;
    v20 = *(*v8 + 4);
    if ((*(*v8 + 3) - v20) > 0xA)
    {
      *(v20 + 7) = 1936028789;
      *v20 = *" attributes";
      *(v19 + 4) += 11;
      v21 = *v8;
      v22 = *(*v8 + 4);
      if (*(*v8 + 3) - v22 <= 1uLL)
      {
        goto LABEL_24;
      }

LABEL_37:
      *v22 = 31520;
      *(v21 + 4) += 2;
      goto LABEL_38;
    }

    llvm::raw_ostream::write(v19, " attributes", 0xBuLL);
  }

  v21 = *v8;
  v22 = *(*v8 + 4);
  if (*(*v8 + 3) - v22 > 1uLL)
  {
    goto LABEL_37;
  }

LABEL_24:
  llvm::raw_ostream::write(v21, " {", 2uLL);
LABEL_38:
  v31 = *v8;
  v32 = v8;
  v33 = &a2[v10 / 8 + 2];
  v61 = v31;
  v62 = v32;
  mlir::AsmPrinter::Impl::printNamedAttribute(v32, a2[v10 / 8], a2[v10 / 8 + 1]);
  if (v11 - 16 != v10)
  {
    v34 = v11 - v10 - 16;
    while (1)
    {
      v66 = *v33;
      CallableRegion = mlir::CallGraphNode::getCallableRegion(&v66);
      AttrData = mlir::OpaqueAttr::getAttrData(&CallableRegion);
      v65 = v35;
      v36 = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::doFind<llvm::StringRef>(&v67, &AttrData);
      if (!v36)
      {
        break;
      }

      if (v67)
      {
        if (v36 == v70)
        {
          break;
        }
      }

      else if (v36 == (v68 + 16 * v69))
      {
        break;
      }

      v33 += 2;
      v34 -= 16;
      if (!v34)
      {
        goto LABEL_49;
      }
    }

    if (v34)
    {
LABEL_55:
      v38 = *(v61 + 4);
      if (*(v61 + 3) - v38 > 1uLL)
      {
        *v38 = 8236;
        *(v61 + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(v61, ", ", 2uLL);
      }

      mlir::AsmPrinter::Impl::printNamedAttribute(v62, *v33, v33[1]);
      while (1)
      {
        v33 += 2;
        if (v33 == v12)
        {
LABEL_54:
          if (v33 == v12)
          {
            break;
          }

          goto LABEL_55;
        }

        v66 = *v33;
        AttrData = mlir::CallGraphNode::getCallableRegion(&v66);
        v39 = mlir::OpaqueAttr::getAttrData(&AttrData);
        v41 = v39;
        v42 = v40;
        if (v67)
        {
          v44 = &v68;
          HashValue = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(v39, v40);
          v46 = 3;
          v47 = v41 + 2 == 0;
          if (!v42)
          {
            goto LABEL_64;
          }
        }

        else
        {
          v43 = v69;
          if (!v69)
          {
            goto LABEL_54;
          }

          v44 = v68;
          HashValue = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(v39, v40);
          v46 = v43 - 1;
          v47 = v41 + 2 == 0;
          if (!v42)
          {
LABEL_64:
            v48 = 1;
            if (v47)
            {
              v49 = HashValue & v46;
              v50 = &v44[16 * (HashValue & v46)];
              v51 = *v50;
              if (*v50 != -2)
              {
                while (v51 != -1)
                {
                  if (*(v50 + 1))
                  {
                    v52 = v48 + v49;
                    ++v48;
                    v49 = v52 & v46;
                    v50 = &v44[16 * (v52 & v46)];
                    v51 = *v50;
                    if (*v50 != -2)
                    {
                      continue;
                    }
                  }

                  goto LABEL_92;
                }

                goto LABEL_91;
              }
            }

            else
            {
              while (1)
              {
                v50 = &v44[16 * (HashValue & v46)];
                if (*v50 != -2)
                {
                  if (*v50 == -1)
                  {
                    goto LABEL_91;
                  }

                  if (!*(v50 + 1))
                  {
                    break;
                  }
                }

                HashValue = v48 + (HashValue & v46);
                ++v48;
              }
            }

            goto LABEL_92;
          }
        }

        if (!v47)
        {
          v57 = 1;
          v58 = HashValue & v46;
          v50 = &v44[16 * (HashValue & v46)];
          v59 = *v50;
          if (*v50 == -2)
          {
            goto LABEL_84;
          }

          while (1)
          {
            if (v59 == -1)
            {
              goto LABEL_91;
            }

            if (v42 == *(v50 + 1) && !memcmp(v41, v59, v42))
            {
              goto LABEL_92;
            }

            do
            {
LABEL_84:
              v60 = v57 + v58;
              ++v57;
              v58 = v60 & v46;
              v50 = &v44[16 * (v60 & v46)];
              v59 = *v50;
            }

            while (*v50 == -2);
          }
        }

        v53 = 1;
        v54 = HashValue & v46;
        v50 = &v44[16 * (HashValue & v46)];
        v55 = *v50;
        if (*v50 != -2)
        {
          while (v55 != -1)
          {
            if (v42 != *(v50 + 1) || memcmp(v41, v55, v42))
            {
              v56 = v53 + v54;
              ++v53;
              v54 = v56 & v46;
              v50 = &v44[16 * (v56 & v46)];
              v55 = *v50;
              if (*v50 != -2)
              {
                continue;
              }
            }

            goto LABEL_92;
          }

LABEL_91:
          if (v41 != -1)
          {
            goto LABEL_54;
          }
        }

LABEL_92:
        if (v67)
        {
          if (v50 == v70)
          {
            goto LABEL_54;
          }
        }

        else if (v50 == v68 + 16 * v69)
        {
          goto LABEL_54;
        }
      }
    }
  }

LABEL_49:
  result = *v62;
  v37 = *(*v62 + 4);
  if (v37 < *(*v62 + 3))
  {
    *(result + 4) = v37 + 1;
    *v37 = 125;
    goto LABEL_51;
  }

  result = llvm::raw_ostream::write(result, 125);
  if ((v67 & 1) == 0)
  {
LABEL_52:
    llvm::deallocate_buffer(v68, (16 * v69));
  }

  return result;
}

double mlir::AsmPrinter::Impl::printNamedAttribute(void **a1, uint64_t a2, uint64_t a3)
{
  v13 = a2;
  v14 = a3;
  CallableRegion = mlir::CallGraphNode::getCallableRegion(&v13);
  AttrData = mlir::OpaqueAttr::getAttrData(&CallableRegion);
  printKeywordOrString(AttrData, v5, *a1);
  if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    v7 = *a1;
    v8 = (*a1)[4];
    if (((*a1)[3] - v8) > 2)
    {
      *(v8 + 2) = 32;
      *v8 = 15648;
      v7[4] += 3;
      v9 = v14;
      if (v14)
      {
LABEL_4:
        {
          mlir::AsmPrinter::Impl::printAttributeImpl(a1, v9, 0);
        }

        return result;
      }
    }

    else
    {
      llvm::raw_ostream::write(v7, " = ", 3uLL);
      v9 = v14;
      if (v14)
      {
        goto LABEL_4;
      }
    }

    v10 = *a1;
    v11 = (*a1)[4];
    if (((*a1)[3] - v11) > 0x11)
    {
      *(v11 + 16) = 15934;
      result = *"<<NULL ATTRIBUTE>>";
      *v11 = *"<<NULL ATTRIBUTE>>";
      v10[4] += 18;
    }

    else
    {
      llvm::raw_ostream::write(v10, "<<NULL ATTRIBUTE>>", 0x12uLL);
    }
  }

  return result;
}

llvm::raw_ostream *printKeywordOrString(char *a1, size_t a2, void *a3)
{
  if (!a2)
  {
    goto LABEL_21;
  }

  v6 = *a1;
  v7 = MEMORY[0x1E69E9830];
  if ((v6 & 0x80000000) != 0)
  {
    if (!__maskrune(v6, 0x100uLL))
    {
      goto LABEL_6;
    }

LABEL_7:
    if (a2 == 1)
    {
      v9 = a3 + 4;
      v8 = a3[4];
      if (a3[3] == v8)
      {
        goto LABEL_24;
      }

      goto LABEL_9;
    }

    v11 = 1;
    while (1)
    {
      v12 = a1[v11];
      if (v12 < 0)
      {
        if (!__maskrune(a1[v11], 0x500uLL))
        {
LABEL_16:
          if (v12 - 36 > 0x3B || ((1 << (v12 - 36)) & 0x800000000000401) == 0)
          {
            goto LABEL_21;
          }
        }
      }

      else if ((*(v7 + 4 * v12 + 60) & 0x500) == 0)
      {
        goto LABEL_16;
      }

      if (a2 == ++v11)
      {
        v9 = a3 + 4;
        v8 = a3[4];
        if (a2 > a3[3] - v8)
        {
LABEL_24:

          return llvm::raw_ostream::write(a3, a1, a2);
        }

LABEL_9:
        result = memcpy(v8, a1, a2);
        *v9 += a2;
        return result;
      }
    }
  }

  if ((*(MEMORY[0x1E69E9830] + 4 * v6 + 60) & 0x100) != 0)
  {
    goto LABEL_7;
  }

LABEL_6:
  if (*a1 == 95)
  {
    goto LABEL_7;
  }

LABEL_21:
  v14 = a3[4];
  if (a3[3] == v14)
  {
    llvm::raw_ostream::write(a3, "", 1uLL);
  }

  else
  {
    *v14 = 34;
    ++a3[4];
  }

  result = llvm::printEscapedString(a1, a2, a3);
  v15 = a3[4];
  if (v15 >= a3[3])
  {

    return llvm::raw_ostream::write(a3, 34);
  }

  else
  {
    a3[4] = v15 + 1;
    *v15 = 34;
  }

  return result;
}

void mlir::AsmPrinter::Impl::printDialectType(uint64_t a1, uint64_t **a2)
{
  v4 = **a2;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v16 = 0;
  v20 = 0;
  v21 = 1;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v15 = &unk_1F5B3FB30;
  v22 = &v23;
  llvm::raw_ostream::SetBufferAndMode(&v15, 0, 0, 0);
  v5 = *(a1 + 8);
  v10[0] = &v15;
  v10[1] = v5;
  v6 = v5[40];
  v11 = v5[39];
  v12 = v6;
  v13 = v5[41];
  v14 = 1;
  v9[1] = v10;
  v9[0] = &unk_1F5AF57B8;
  (*(*v4 + 56))(v4, a2, v9);
  llvm::raw_ostream::~raw_ostream(&v15);
  if (v25 >= 0)
  {
    v7 = &v23;
  }

  else
  {
    v7 = v23;
  }

  if (v25 >= 0)
  {
    v8 = SHIBYTE(v25);
  }

  else
  {
    v8 = v24;
  }

  printDialectSymbol(*a1, "!", 1uLL, *(v4 + 8), *(v4 + 16), v7, v8);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(v23);
  }
}

void mlir::AsmPrinter::Impl::printHexString(void **a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *a1;
  v6 = (*a1)[4];
  if (((*a1)[3] - v6) > 2)
  {
    *(v6 + 2) = 120;
    *v6 = 12322;
    v5[4] += 3;
  }

  else
  {
    v5 = llvm::raw_ostream::write(*a1, "0x", 3uLL);
  }

  llvm::toHex(a2, a3, 0, __p);
  if ((v12 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v8 = v12;
  }

  else
  {
    v8 = __p[1];
  }

  v9 = llvm::raw_ostream::write(v5, v7, v8);
  v10 = v9[4];
  if (v9[3] != v10)
  {
    *v10 = 34;
    ++v9[4];
    if ((v12 & 0x80000000) == 0)
    {
      return;
    }

LABEL_14:
    operator delete(__p[0]);
    return;
  }

  llvm::raw_ostream::write(v9, "", 1uLL);
  if (v12 < 0)
  {
    goto LABEL_14;
  }
}

void mlir::AsmPrinter::printType(uint64_t a1, uint64_t **a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    if ((mlir::AsmPrinter::Impl::printAlias(*(a1 + 8), a2) & 1) == 0)
    {

      mlir::AsmPrinter::Impl::printTypeImpl(v2, a2);
    }
  }

  else
  {
    v4 = *v2;
    v5 = *(*v2 + 4);
    if (*(*v2 + 3) - v5 > 0xCuLL)
    {
      qmemcpy(v5, "<<NULL TYPE>>", 13);
      *(v4 + 4) += 13;
    }

    else
    {

      llvm::raw_ostream::write(v4, "<<NULL TYPE>>", 0xDuLL);
    }
  }
}

double mlir::AsmPrinter::printAttribute(uint64_t a1, uint64_t **a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    {

      mlir::AsmPrinter::Impl::printAttributeImpl(v2, a2, 0);
    }
  }

  else
  {
    v5 = *v2;
    v6 = *(*v2 + 4);
    if ((*(*v2 + 3) - v6) > 0x11)
    {
      *(v6 + 16) = 15934;
      result = *"<<NULL ATTRIBUTE>>";
      *v6 = *"<<NULL ATTRIBUTE>>";
      *(v5 + 4) += 18;
    }

    else
    {

      llvm::raw_ostream::write(v5, "<<NULL ATTRIBUTE>>", 0x12uLL);
    }
  }

  return result;
}

uint64_t mlir::AsmPrinter::printAlias(uint64_t a1, uint64_t a2)
{
}

{
  return mlir::AsmPrinter::Impl::printAlias(*(a1 + 8), a2);
}

double mlir::AsmPrinter::printAttributeWithoutType(uint64_t a1, uint64_t **a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    {

      mlir::AsmPrinter::Impl::printAttributeImpl(v2, a2, 2);
    }
  }

  else
  {
    v5 = *v2;
    v6 = *(*v2 + 4);
    if ((*(*v2 + 3) - v6) > 0x11)
    {
      *(v6 + 16) = 15934;
      result = *"<<NULL ATTRIBUTE>>";
      *v6 = *"<<NULL ATTRIBUTE>>";
      *(v5 + 4) += 18;
    }

    else
    {

      llvm::raw_ostream::write(v5, "<<NULL ATTRIBUTE>>", 0x12uLL);
    }
  }

  return result;
}

llvm::raw_ostream *mlir::AsmPrinter::printString(uint64_t a1, llvm::raw_ostream *a2, uint64_t a3)
{
  v6 = (*(*a1 + 16))(a1);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 34);
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 34;
  }

  v8 = (*(*a1 + 16))(a1);
  llvm::printEscapedString(a2, a3, v8);
  result = (*(*a1 + 16))(a1);
  v10 = *(result + 4);
  if (v10 >= *(result + 3))
  {

    return llvm::raw_ostream::write(result, 34);
  }

  else
  {
    *(result + 4) = v10 + 1;
    *v10 = 34;
  }

  return result;
}

double mlir::AsmPrinter::printSymbolName(uint64_t a1, char *a2, size_t a3)
{
  v3 = **(a1 + 8);
  if (a3)
  {
    v4 = v3[4];
    if (v4 >= v3[3])
    {
      v8 = a2;
      v9 = a3;
      llvm::raw_ostream::write(**(a1 + 8), 64);
      a2 = v8;
      a3 = v9;
    }

    else
    {
      v3[4] = v4 + 1;
      *v4 = 64;
    }

    printKeywordOrString(a2, a3, v3);
  }

  else
  {
    v5 = v3[4];
    if (v3[3] - v5 > 0x18uLL)
    {
      qmemcpy(v5, "@<<INVALID EMPTY SYMBOL>>", 25);
      result = *"D EMPTY SYMBOL>>";
      v3[4] += 25;
    }

    else
    {
      v6 = **(a1 + 8);

      llvm::raw_ostream::write(v6, "@<<INVALID EMPTY SYMBOL>>", 0x19uLL);
    }
  }

  return result;
}

unint64_t *mlir::AsmPrinter::printDimensionList(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v5 = (*(*a1 + 16))(a1);
  v7[0] = "x";
  v7[1] = 1;
  return llvm::interleave<long long const*,void mlir::detail::printDimensionList<llvm::ArrayRef<long long> &>(llvm::raw_ostream &,llvm::ArrayRef<long long> &)::{lambda(llvm::ArrayRef<long long> & const&)#1},void llvm::interleave<llvm::ArrayRef<long long>,llvm::interleave,llvm::raw_ostream,long long const>(void mlir::detail::printDimensionList<llvm::ArrayRef<long long> &>(llvm::raw_ostream &,llvm::ArrayRef<long long> &)::{lambda(llvm::ArrayRef<long long> & const&)#1},llvm::raw_ostream &,llvm::interleave,llvm::StringRef const&)::{lambda(void)#1},void>(a2, &a2[a3], v5, v5, v7);
}

uint64_t mlir::AsmPrinter::pushCyclicPrinting(mlir::AsmPrinter *this, const void *a2)
{
  v2 = *(*(this + 1) + 8);
  v7 = a2;
  llvm::DenseMapBase<llvm::DenseMap<void const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseSetPair<void const*>>,void const*,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseSetPair<void const*>>::try_emplace<llvm::detail::DenseSetEmpty&>(v2 + 680, &v7, v8);
  result = v9;
  if (v9 == 1)
  {
    v4 = v7;
    v5 = *(v2 + 712);
    if (v5 >= *(v2 + 716))
    {
      v6 = v9;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2 + 704, v2 + 720, v5 + 1, 8);
      result = v6;
      LODWORD(v5) = *(v2 + 712);
    }

    *(*(v2 + 704) + 8 * v5) = v4;
    ++*(v2 + 712);
  }

  return result;
}

uint64_t mlir::AsmPrinter::popCyclicPrinting(uint64_t this)
{
  v1 = *(*(this + 8) + 8);
  v2 = v1[87].i32[0];
  if (v2)
  {
    v3 = v1[85];
    v4 = v1[89].u32[0];
    v5 = *(*&v1[88] + 8 * v4 - 8);
    v6 = v2 - 1;
    v7 = ((v5 >> 4) ^ (v5 >> 9)) & (v2 - 1);
    v8 = *(*&v3 + 8 * v7);
    if (v5 == v8)
    {
LABEL_3:
      *(*&v3 + 8 * v7) = -8192;
      v1[86] = vadd_s32(v1[86], 0x1FFFFFFFFLL);
    }

    else
    {
      v9 = 1;
      while (v8 != -4096)
      {
        v10 = v7 + v9++;
        v7 = v10 & v6;
        v8 = *(*&v3 + 8 * v7);
        if (v5 == v8)
        {
          goto LABEL_3;
        }
      }
    }

    v1[89].i32[0] = v4 - 1;
  }

  else
  {
    --v1[89].i32[0];
  }

  return this;
}

llvm::raw_ostream *mlir::AsmPrinter::Impl::printAffineExprInternal(llvm::raw_ostream **a1, uint64_t a2, int a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  v47 = a2;
  Value = mlir::arith::FastMathFlagsAttr::getValue(&v47);
  v10 = 0;
  v11 = 1;
  if (Value <= 3)
  {
    if (Value > 1)
    {
      v11 = 0;
      if (Value == 2)
      {
        v10 = " mod ";
      }

      else
      {
        v10 = " floordiv ";
      }
    }

    else if (Value)
    {
      if (Value == 1)
      {
        v11 = 0;
        v10 = " * ";
      }
    }

    else
    {
      v11 = 0;
      v10 = " + ";
    }

    goto LABEL_18;
  }

  if (Value > 5)
  {
    if (Value == 6)
    {
      mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v48, v47);
      Position = mlir::AffineDimExpr::getPosition(&v48);
      if (a4)
      {
        return a4(a5, Position, 0);
      }

      v30 = *a1;
      v31 = *(*a1 + 4);
      if (v31 < *(*a1 + 3))
      {
        *(v30 + 4) = v31 + 1;
        v32 = 100;
LABEL_57:
        *v31 = v32;
        return llvm::raw_ostream::operator<<(v30, Position);
      }

      v40 = 100;
    }

    else
    {
      if (Value != 7)
      {
        goto LABEL_18;
      }

      mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v48, v47);
      Position = mlir::AffineDimExpr::getPosition(&v48);
      if (a4)
      {
        return a4(a5, Position, 1);
      }

      v30 = *a1;
      v31 = *(*a1 + 4);
      if (v31 < *(*a1 + 3))
      {
        *(v30 + 4) = v31 + 1;
        v32 = 115;
        goto LABEL_57;
      }

      v40 = 115;
    }

    v30 = llvm::raw_ostream::write(v30, v40);
    return llvm::raw_ostream::operator<<(v30, Position);
  }

  if (Value != 4)
  {
    v12 = *a1;
    mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v48, v47);
    LHS = mlir::AffineBinaryOpExpr::getLHS(&v48);
    return llvm::raw_ostream::operator<<(v12, LHS);
  }

  v11 = 0;
  v10 = " ceildiv ";
LABEL_18:
  mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v48, v47);
  v46 = v48;
  v16 = mlir::AffineBinaryOpExpr::getLHS(&v46);
  RHS = mlir::AffineBinaryOpExpr::getRHS(&v46);
  if (mlir::arith::FastMathFlagsAttr::getValue(&v46))
  {
    if (a3 == 1)
    {
      v18 = *a1;
      v19 = *(*a1 + 4);
      if (v19 >= *(*a1 + 3))
      {
        llvm::raw_ostream::write(v18, 40);
        v48 = RHS;
        if (mlir::arith::FastMathFlagsAttr::getValue(&v48) == 5)
        {
LABEL_23:
          mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v48, RHS);
          if (!v48)
          {
            goto LABEL_37;
          }

LABEL_35:
          if (mlir::arith::FastMathFlagsAttr::getValue(&v46) == 1 && mlir::AffineBinaryOpExpr::getLHS(&v48) == -1)
          {
            v28 = *a1;
            v29 = *(*a1 + 4);
            if (*(*a1 + 3) == v29)
            {
              llvm::raw_ostream::write(v28, "-", 1uLL);
            }

            else
            {
              *v29 = 45;
              ++*(v28 + 4);
            }

            v25 = a1;
            v26 = v16;
            goto LABEL_43;
          }

LABEL_37:
          mlir::AsmPrinter::Impl::printAffineExprInternal(a1, v16, 1, a4, a5);
          if ((v11 & 1) == 0)
          {
            v22 = *a1;
            v23 = strlen(v10);
            v24 = *(*a1 + 4);
            if (v23 <= *(*a1 + 3) - v24)
            {
              if (v23)
              {
                memcpy(v24, v10, v23);
                *(v22 + 4) += v23;
              }
            }

            else
            {
              llvm::raw_ostream::write(v22, v10, v23);
            }
          }

          v25 = a1;
          v26 = RHS;
LABEL_43:
          result = mlir::AsmPrinter::Impl::printAffineExprInternal(v25, v26, 1, a4, a5);
          if (a3 != 1)
          {
            return result;
          }

          goto LABEL_85;
        }

LABEL_34:
        mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v48, 0);
        if (!v48)
        {
          goto LABEL_37;
        }

        goto LABEL_35;
      }

      *(v18 + 4) = v19 + 1;
      *v19 = 40;
    }

    v48 = RHS;
    if (mlir::arith::FastMathFlagsAttr::getValue(&v48) == 5)
    {
      goto LABEL_23;
    }

    goto LABEL_34;
  }

  if (a3 != 1)
  {
LABEL_28:
    v48 = RHS;
    if (mlir::arith::FastMathFlagsAttr::getValue(&v48) < 5)
    {
      goto LABEL_29;
    }

LABEL_46:
    mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v48, 0);
    v45 = v48;
    if (!v48)
    {
      goto LABEL_62;
    }

    goto LABEL_47;
  }

  v20 = *a1;
  v21 = *(*a1 + 4);
  if (v21 < *(*a1 + 3))
  {
    *(v20 + 4) = v21 + 1;
    *v21 = 40;
    goto LABEL_28;
  }

  llvm::raw_ostream::write(v20, 40);
  v48 = RHS;
  if (mlir::arith::FastMathFlagsAttr::getValue(&v48) >= 5)
  {
    goto LABEL_46;
  }

LABEL_29:
  mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v48, RHS);
  v45 = v48;
  if (!v48)
  {
    goto LABEL_62;
  }

LABEL_47:
  if (mlir::arith::FastMathFlagsAttr::getValue(&v45) != 1)
  {
    goto LABEL_62;
  }

  v27 = mlir::AffineBinaryOpExpr::getRHS(&v45);
  v48 = v27;
  if (mlir::arith::FastMathFlagsAttr::getValue(&v48) == 5)
  {
    mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v48, v27);
    v44 = v48;
    if (!v48)
    {
      goto LABEL_62;
    }
  }

  else
  {
    mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v48, 0);
    v44 = v48;
    if (!v48)
    {
      goto LABEL_62;
    }
  }

  if (mlir::AffineBinaryOpExpr::getLHS(&v44) == -1)
  {
    mlir::AsmPrinter::Impl::printAffineExprInternal(a1, v16, 0, a4, a5);
    llvm::raw_ostream::operator<<(*a1, " - ");
    v48 = mlir::AffineBinaryOpExpr::getLHS(&v45);
    v41 = mlir::arith::FastMathFlagsAttr::getValue(&v48) == 0;
    v42 = mlir::AffineBinaryOpExpr::getLHS(&v45);
    result = mlir::AsmPrinter::Impl::printAffineExprInternal(a1, v42, v41, a4, a5);
    if (a3 != 1)
    {
      return result;
    }

    goto LABEL_85;
  }

  if (mlir::AffineBinaryOpExpr::getLHS(&v44) <= -2)
  {
    mlir::AsmPrinter::Impl::printAffineExprInternal(a1, v16, 0, a4, a5);
    llvm::raw_ostream::operator<<(*a1, " - ");
    v33 = mlir::AffineBinaryOpExpr::getLHS(&v45);
    mlir::AsmPrinter::Impl::printAffineExprInternal(a1, v33, 1, a4, a5);
    v34 = llvm::raw_ostream::operator<<(*a1, " * ");
    v35 = &v44;
    goto LABEL_76;
  }

LABEL_62:
  v48 = RHS;
  if (mlir::arith::FastMathFlagsAttr::getValue(&v48) != 5)
  {
    mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v48, 0);
    v45 = v48;
    if (!v48)
    {
      goto LABEL_67;
    }

    goto LABEL_66;
  }

  mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v48, RHS);
  v45 = v48;
  if (v48)
  {
LABEL_66:
    if ((mlir::AffineBinaryOpExpr::getLHS(&v45) & 0x8000000000000000) == 0)
    {
      goto LABEL_67;
    }

    mlir::AsmPrinter::Impl::printAffineExprInternal(a1, v16, 0, a4, a5);
    v34 = *a1;
    v38 = *(*a1 + 4);
    if ((*(*a1 + 3) - v38) > 2)
    {
      *(v38 + 2) = 32;
      *v38 = 11552;
      *(v34 + 4) += 3;
    }

    else
    {
      v34 = llvm::raw_ostream::write(*a1, " - ", 3uLL);
    }

    v35 = &v45;
LABEL_76:
    v39 = mlir::AffineBinaryOpExpr::getLHS(v35);
    result = llvm::raw_ostream::operator<<(v34, -v39);
    if (a3 != 1)
    {
      return result;
    }

    goto LABEL_85;
  }

LABEL_67:
  mlir::AsmPrinter::Impl::printAffineExprInternal(a1, v16, 0, a4, a5);
  v36 = *a1;
  v37 = *(*a1 + 4);
  if ((*(*a1 + 3) - v37) > 2)
  {
    *(v37 + 2) = 32;
    *v37 = 11040;
    *(v36 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v36, " + ", 3uLL);
  }

  result = mlir::AsmPrinter::Impl::printAffineExprInternal(a1, RHS, 0, a4, a5);
  if (a3 == 1)
  {
LABEL_85:
    result = *a1;
    v43 = *(*a1 + 4);
    if (v43 >= *(*a1 + 3))
    {
      return llvm::raw_ostream::write(result, 41);
    }

    else
    {
      *(result + 4) = v43 + 1;
      *v43 = 41;
    }
  }

  return result;
}

llvm::raw_ostream *mlir::AsmPrinter::Impl::printAffineMap(llvm::raw_ostream **a1, uint64_t a2)
{
  v45 = a2;
  v3 = *a1;
  v4 = *(v3 + 4);
  if (v4 >= *(v3 + 3))
  {
    llvm::raw_ostream::write(v3, 40);
    if (mlir::AffineMap::getNumDims(&v45) < 2)
    {
      goto LABEL_12;
    }

    goto LABEL_5;
  }

  *(v3 + 4) = v4 + 1;
  *v4 = 40;
  if (mlir::AffineMap::getNumDims(&v45) >= 2)
  {
LABEL_5:
    v5 = 0;
    while (1)
    {
      v6 = *a1;
      v7 = *(*a1 + 4);
      if (v7 >= *(*a1 + 3))
      {
        v10 = llvm::raw_ostream::write(v6, 100);
        v8 = llvm::raw_ostream::operator<<(v10, v5);
        v9 = *(v8 + 4);
        if (*(v8 + 3) - v9 > 1uLL)
        {
          goto LABEL_6;
        }

LABEL_11:
        llvm::raw_ostream::write(v8, ", ", 2uLL);
        if (++v5 >= (mlir::AffineMap::getNumDims(&v45) - 1))
        {
          break;
        }
      }

      else
      {
        *(v6 + 4) = v7 + 1;
        *v7 = 100;
        v8 = llvm::raw_ostream::operator<<(v6, v5);
        v9 = *(v8 + 4);
        if (*(v8 + 3) - v9 <= 1uLL)
        {
          goto LABEL_11;
        }

LABEL_6:
        *v9 = 8236;
        *(v8 + 4) += 2;
        if (++v5 >= (mlir::AffineMap::getNumDims(&v45) - 1))
        {
          break;
        }
      }
    }
  }

LABEL_12:
  if (mlir::AffineMap::getNumDims(&v45))
  {
    v11 = *a1;
    v12 = *(*a1 + 4);
    if (v12 >= *(*a1 + 3))
    {
      v11 = llvm::raw_ostream::write(*a1, 100);
    }

    else
    {
      *(v11 + 4) = v12 + 1;
      *v12 = 100;
    }

    NumDims = mlir::AffineMap::getNumDims(&v45);
    llvm::raw_ostream::operator<<(v11, (NumDims - 1));
  }

  v14 = *a1;
  v15 = *(*a1 + 4);
  if (v15 >= *(*a1 + 3))
  {
    llvm::raw_ostream::write(v14, 41);
    if (!mlir::AffineMap::getNumSymbols(&v45))
    {
      goto LABEL_39;
    }
  }

  else
  {
    *(v14 + 4) = v15 + 1;
    *v15 = 41;
    if (!mlir::AffineMap::getNumSymbols(&v45))
    {
LABEL_39:
      v29 = *a1;
      v30 = *(*a1 + 4);
      if ((*(*a1 + 3) - v30) <= 4)
      {
        goto LABEL_40;
      }

      goto LABEL_43;
    }
  }

  v16 = *a1;
  v17 = *(*a1 + 4);
  if (v17 >= *(*a1 + 3))
  {
    llvm::raw_ostream::write(v16, 91);
    if (mlir::AffineMap::getNumSymbols(&v45) == 1)
    {
      goto LABEL_32;
    }

    goto LABEL_25;
  }

  *(v16 + 4) = v17 + 1;
  *v17 = 91;
  if (mlir::AffineMap::getNumSymbols(&v45) != 1)
  {
LABEL_25:
    v18 = 0;
    while (1)
    {
      v19 = *a1;
      v20 = *(*a1 + 4);
      if (v20 >= *(*a1 + 3))
      {
        v23 = llvm::raw_ostream::write(v19, 115);
        v21 = llvm::raw_ostream::operator<<(v23, v18);
        v22 = *(v21 + 4);
        if (*(v21 + 3) - v22 > 1uLL)
        {
          goto LABEL_26;
        }

LABEL_31:
        llvm::raw_ostream::write(v21, ", ", 2uLL);
        if (++v18 >= mlir::AffineMap::getNumSymbols(&v45) - 1)
        {
          break;
        }
      }

      else
      {
        *(v19 + 4) = v20 + 1;
        *v20 = 115;
        v21 = llvm::raw_ostream::operator<<(v19, v18);
        v22 = *(v21 + 4);
        if (*(v21 + 3) - v22 <= 1uLL)
        {
          goto LABEL_31;
        }

LABEL_26:
        *v22 = 8236;
        *(v21 + 4) += 2;
        if (++v18 >= mlir::AffineMap::getNumSymbols(&v45) - 1)
        {
          break;
        }
      }
    }
  }

LABEL_32:
  if (mlir::AffineMap::getNumSymbols(&v45))
  {
    v24 = *a1;
    v25 = *(*a1 + 4);
    if (v25 >= *(*a1 + 3))
    {
      v24 = llvm::raw_ostream::write(*a1, 115);
    }

    else
    {
      *(v24 + 4) = v25 + 1;
      *v25 = 115;
    }

    NumSymbols = mlir::AffineMap::getNumSymbols(&v45);
    llvm::raw_ostream::operator<<(v24, (NumSymbols - 1));
  }

  v27 = *a1;
  v28 = *(*a1 + 4);
  if (v28 < *(*a1 + 3))
  {
    *(v27 + 4) = v28 + 1;
    *v28 = 93;
    goto LABEL_39;
  }

  llvm::raw_ostream::write(v27, 93);
  v29 = *a1;
  v30 = *(*a1 + 4);
  if ((*(*a1 + 3) - v30) <= 4)
  {
LABEL_40:
    llvm::raw_ostream::write(v29, " -> (", 5uLL);
    Results = mlir::AffineMap::getResults(&v45);
    if (!v32)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(v30 + 4) = 40;
  *v30 = 540945696;
  *(v29 + 4) += 5;
  Results = mlir::AffineMap::getResults(&v45);
  if (!v32)
  {
    goto LABEL_45;
  }

LABEL_44:
  v34 = Results;
  v35 = v32;
  v36 = *a1;
  mlir::AsmPrinter::Impl::printAffineExprInternal(a1, *Results, 0, 0, v33);
  if (v35 != 1)
  {
    v40 = 8 * v35;
    v41 = v34 + 1;
    v42 = v40 - 8;
    do
    {
      v44 = *(v36 + 4);
      if (*(v36 + 3) - v44 > 1uLL)
      {
        *v44 = 8236;
        *(v36 + 4) += 2;
      }

      else
      {
        llvm::raw_ostream::write(v36, ", ", 2uLL);
      }

      v43 = *v41++;
      mlir::AsmPrinter::Impl::printAffineExprInternal(a1, v43, 0, 0, v37);
      v42 -= 8;
    }

    while (v42);
  }

LABEL_45:
  result = *a1;
  v39 = *(*a1 + 4);
  if (v39 >= *(*a1 + 3))
  {
    return llvm::raw_ostream::write(result, 41);
  }

  *(result + 4) = v39 + 1;
  *v39 = 41;
  return result;
}

llvm::raw_ostream *mlir::AsmPrinter::Impl::printIntegerSet(llvm::raw_ostream **a1, uint64_t a2)
{
  v60 = a2;
  v3 = *a1;
  v4 = *(v3 + 4);
  if (v4 >= *(v3 + 3))
  {
    llvm::raw_ostream::write(v3, 40);
    if (mlir::AffineMap::getNumDims(&v60) < 2)
    {
      goto LABEL_12;
    }

    goto LABEL_5;
  }

  *(v3 + 4) = v4 + 1;
  *v4 = 40;
  if (mlir::AffineMap::getNumDims(&v60) >= 2)
  {
LABEL_5:
    v5 = 0;
    while (1)
    {
      v8 = *a1;
      v9 = *(*a1 + 4);
      if (v9 >= *(*a1 + 3))
      {
        v12 = llvm::raw_ostream::write(v8, 100);
        v10 = llvm::raw_ostream::operator<<(v12, v5);
        v11 = *(v10 + 4);
        if (*(v10 + 3) - v11 > 1uLL)
        {
          goto LABEL_6;
        }

LABEL_11:
        llvm::raw_ostream::write(v10, ", ", 2uLL);
        NumDims = mlir::AffineMap::getNumDims(&v60);
        v14 = v5 + 2;
        ++v5;
        if (v14 >= NumDims)
        {
          break;
        }
      }

      else
      {
        *(v8 + 4) = v9 + 1;
        *v9 = 100;
        v10 = llvm::raw_ostream::operator<<(v8, v5);
        v11 = *(v10 + 4);
        if (*(v10 + 3) - v11 <= 1uLL)
        {
          goto LABEL_11;
        }

LABEL_6:
        *v11 = 8236;
        *(v10 + 4) += 2;
        v6 = mlir::AffineMap::getNumDims(&v60);
        v7 = v5 + 2;
        ++v5;
        if (v7 >= v6)
        {
          break;
        }
      }
    }
  }

LABEL_12:
  if (mlir::AffineMap::getNumDims(&v60))
  {
    v15 = *a1;
    v16 = *(*a1 + 4);
    if (v16 >= *(*a1 + 3))
    {
      v15 = llvm::raw_ostream::write(*a1, 100);
    }

    else
    {
      *(v15 + 4) = v16 + 1;
      *v16 = 100;
    }

    v17 = mlir::AffineMap::getNumDims(&v60);
    llvm::raw_ostream::operator<<(v15, (v17 - 1));
  }

  v18 = *a1;
  v19 = *(*a1 + 4);
  if (v19 >= *(*a1 + 3))
  {
    llvm::raw_ostream::write(v18, 41);
    if (!mlir::AffineMap::getNumSymbols(&v60))
    {
LABEL_19:
      v20 = *a1;
      v21 = *(*a1 + 4);
      if (*(*a1 + 3) - v21 <= 3uLL)
      {
        goto LABEL_20;
      }

LABEL_43:
      *v21 = 673200672;
      *(v20 + 4) += 4;
      Position = mlir::AffineDimExpr::getPosition(&v60);
      v23 = Position - 1;
      if (Position <= 1)
      {
        goto LABEL_57;
      }

      goto LABEL_44;
    }
  }

  else
  {
    *(v18 + 4) = v19 + 1;
    *v19 = 41;
    if (!mlir::AffineMap::getNumSymbols(&v60))
    {
      goto LABEL_19;
    }
  }

  v24 = *a1;
  v25 = *(*a1 + 4);
  if (v25 >= *(*a1 + 3))
  {
    llvm::raw_ostream::write(v24, 91);
    if (mlir::AffineMap::getNumSymbols(&v60) == 1)
    {
      goto LABEL_34;
    }

    goto LABEL_27;
  }

  *(v24 + 4) = v25 + 1;
  *v25 = 91;
  if (mlir::AffineMap::getNumSymbols(&v60) != 1)
  {
LABEL_27:
    v26 = 0;
    while (1)
    {
      v27 = *a1;
      v28 = *(*a1 + 4);
      if (v28 >= *(*a1 + 3))
      {
        v31 = llvm::raw_ostream::write(v27, 115);
        v29 = llvm::raw_ostream::operator<<(v31, v26);
        v30 = *(v29 + 4);
        if (*(v29 + 3) - v30 > 1uLL)
        {
          goto LABEL_28;
        }

LABEL_33:
        llvm::raw_ostream::write(v29, ", ", 2uLL);
        if (++v26 >= mlir::AffineMap::getNumSymbols(&v60) - 1)
        {
          break;
        }
      }

      else
      {
        *(v27 + 4) = v28 + 1;
        *v28 = 115;
        v29 = llvm::raw_ostream::operator<<(v27, v26);
        v30 = *(v29 + 4);
        if (*(v29 + 3) - v30 <= 1uLL)
        {
          goto LABEL_33;
        }

LABEL_28:
        *v30 = 8236;
        *(v29 + 4) += 2;
        if (++v26 >= mlir::AffineMap::getNumSymbols(&v60) - 1)
        {
          break;
        }
      }
    }
  }

LABEL_34:
  if (mlir::AffineMap::getNumSymbols(&v60))
  {
    v32 = *a1;
    v33 = *(*a1 + 4);
    if (v33 >= *(*a1 + 3))
    {
      v32 = llvm::raw_ostream::write(*a1, 115);
    }

    else
    {
      *(v32 + 4) = v33 + 1;
      *v33 = 115;
    }

    NumSymbols = mlir::AffineMap::getNumSymbols(&v60);
    llvm::raw_ostream::operator<<(v32, (NumSymbols - 1));
  }

  v35 = *a1;
  v36 = *(*a1 + 4);
  if (v36 >= *(*a1 + 3))
  {
    llvm::raw_ostream::write(v35, 93);
    v20 = *a1;
    v21 = *(*a1 + 4);
    if (*(*a1 + 3) - v21 > 3uLL)
    {
      goto LABEL_43;
    }
  }

  else
  {
    *(v35 + 4) = v36 + 1;
    *v36 = 93;
    v20 = *a1;
    v21 = *(*a1 + 4);
    if (*(*a1 + 3) - v21 > 3uLL)
    {
      goto LABEL_43;
    }
  }

LABEL_20:
  llvm::raw_ostream::write(v20, " : (", 4uLL);
  Position = mlir::AffineDimExpr::getPosition(&v60);
  v23 = Position - 1;
  if (Position > 1)
  {
LABEL_44:
    for (i = 0; v23 != i; ++i)
    {
      while (1)
      {
        Constraint = mlir::IntegerSet::getConstraint(&v60, i);
        isEq = mlir::IntegerSet::isEq(&v60, i);
        mlir::AsmPrinter::Impl::printAffineExprInternal(a1, Constraint, 0, 0, v40);
        v41 = *a1;
        v42 = *(*a1 + 4);
        v43 = *(*a1 + 3) - v42;
        if (!isEq)
        {
          break;
        }

        if (v43 <= 4)
        {
          v44 = " == 0";
          goto LABEL_51;
        }

        *(v42 + 4) = 48;
        v47 = 15648;
LABEL_55:
        *v42 = v47 | 0x203D0000;
        *(v41 + 4) += 5;
        v45 = *a1;
        v46 = *(*a1 + 4);
        if (*(*a1 + 3) - v46 > 1uLL)
        {
          goto LABEL_45;
        }

LABEL_56:
        llvm::raw_ostream::write(v45, ", ", 2uLL);
        if (v23 == ++i)
        {
          goto LABEL_57;
        }
      }

      if (v43 > 4)
      {
        *(v42 + 4) = 48;
        v47 = 15904;
        goto LABEL_55;
      }

      v44 = " >= 0";
LABEL_51:
      llvm::raw_ostream::write(v41, v44, 5uLL);
      v45 = *a1;
      v46 = *(*a1 + 4);
      if (*(*a1 + 3) - v46 <= 1uLL)
      {
        goto LABEL_56;
      }

LABEL_45:
      *v46 = 8236;
      *(v45 + 4) += 2;
    }
  }

LABEL_57:
  v48 = __OFSUB__(Position, 1);
  v49 = Position - 1;
  if (v49 < 0 != v48)
  {
    goto LABEL_64;
  }

  v50 = mlir::IntegerSet::getConstraint(&v60, v49);
  v51 = mlir::IntegerSet::isEq(&v60, v49);
  mlir::AsmPrinter::Impl::printAffineExprInternal(a1, v50, 0, 0, v52);
  v53 = *a1;
  v54 = *(*a1 + 4);
  v55 = *(*a1 + 3) - v54;
  if (!v51)
  {
    if (v55 <= 4)
    {
      v56 = " >= 0";
      goto LABEL_63;
    }

    *(v54 + 4) = 48;
    v59 = 15904;
LABEL_68:
    *v54 = v59 | 0x203D0000;
    *(v53 + 4) += 5;
    result = *a1;
    v58 = *(*a1 + 4);
    if (v58 < *(*a1 + 3))
    {
      goto LABEL_65;
    }

    return llvm::raw_ostream::write(result, 41);
  }

  if (v55 > 4)
  {
    *(v54 + 4) = 48;
    v59 = 15648;
    goto LABEL_68;
  }

  v56 = " == 0";
LABEL_63:
  llvm::raw_ostream::write(v53, v56, 5uLL);
LABEL_64:
  result = *a1;
  v58 = *(*a1 + 4);
  if (v58 < *(*a1 + 3))
  {
LABEL_65:
    *(result + 4) = v58 + 1;
    *v58 = 41;
    return result;
  }

  return llvm::raw_ostream::write(result, 41);
}

double mlir::Attribute::print(mlir::Attribute *this, llvm::raw_ostream *a2, int a3)
{
  if (*this)
  {
    Context = mlir::Attribute::getContext(this);
    mlir::OpPrintingFlags::OpPrintingFlags(&v17);
    v7 = operator new(0x2D0uLL);
    v8 = mlir::DialectInterfaceCollection<mlir::OpAsmDialectInterface>::DialectInterfaceCollection(v7, Context);
    *(v8 + 56) = v8 + 72;
    *(v8 + 64) = 0x600000000;
    *(v8 + 120) = 0;
    *(v8 + 128) = 0;
    *(v8 + 136) = 0;
    *(v8 + 144) = 0;
    v9 = (v8 + 144);
    *(v8 + 152) = 0;
    *(v8 + 160) = 0;
    *(v8 + 184) = 0u;
    *(v8 + 168) = v8 + 184;
    *(v8 + 176) = 0;
    *(v8 + 200) = v8 + 216;
    *(v8 + 208) = 0x400000000;
    *(v8 + 248) = v8 + 264;
    *(v8 + 256) = 0;
    *(v8 + 264) = 0;
    *(v8 + 272) = 1;
    *(v8 + 296) = 0;
    *(v8 + 280) = 0;
    *(v8 + 288) = 0;
    *(v8 + 304) = 0;
    *(v8 + 312) = 0;
    *(v8 + 320) = 0;
    *(v8 + 344) = 0;
    *(v8 + 328) = 0;
    *(v8 + 336) = 0;
    *(v8 + 368) = 0;
    *(v8 + 352) = 0;
    *(v8 + 360) = 0;
    *(v8 + 392) = 0;
    *(v8 + 376) = 0;
    *(v8 + 384) = 0;
    *(v8 + 416) = 0;
    *(v8 + 400) = 0;
    *(v8 + 408) = 0;
    *(v8 + 424) = 0;
    *(v8 + 432) = 0;
    *(v8 + 440) = 0;
    *(v8 + 448) = v8 + 464;
    *(v8 + 456) = 0x400000000;
    *(v8 + 504) = 0;
    *(v8 + 512) = 0;
    *(v8 + 496) = v8 + 512;
    *(v8 + 520) = 1;
    *(v8 + 528) = 0;
    *(v8 + 536) = 0;
    mlir::OpPrintingFlags::OpPrintingFlags((v8 + 544));
    *(v7 + 154) = 0;
    *(v7 + 76) = 0;
    *(v7 + 37) = 0u;
    v10 = v18;
    *(v7 + 39) = v17;
    *(v7 + 40) = v10;
    *(v7 + 41) = v19;
    *(v7 + 84) = 0;
    *(v7 + 680) = 0u;
    *(v7 + 174) = 0;
    *(v7 + 88) = v7 + 720;
    *(v7 + 89) = 0;
    *&v17 = a2;
    *(&v17 + 1) = v7;
    v11 = *(v7 + 40);
    v18 = *(v7 + 39);
    v19 = v11;
    v20 = *(v7 + 41);
    v21 = 1;
    if (a3)
    {
      v12 = 2;
    }

    else
    {
      v12 = 0;
    }

    v13 = *this;
    if (v13)
    {
      {
        mlir::AsmPrinter::Impl::printAttributeImpl(&v17, v13, v12);
      }
    }

    else
    {
      v16 = *(a2 + 4);
      if ((*(a2 + 3) - v16) > 0x11)
      {
        *(v16 + 16) = 15934;
        *v16 = *"<<NULL ATTRIBUTE>>";
        *(a2 + 4) += 18;
      }

      else
      {
        llvm::raw_ostream::write(a2, "<<NULL ATTRIBUTE>>", 0x12uLL);
      }
    }

    mlir::detail::AsmStateImpl::~AsmStateImpl(v7);
  }

  v14 = *(a2 + 4);
  if ((*(a2 + 3) - v14) > 0x11)
  {
    *(v14 + 16) = 15934;
    result = *"<<NULL ATTRIBUTE>>";
    *v14 = *"<<NULL ATTRIBUTE>>";
    *(a2 + 4) += 18;
  }

  else
  {

    llvm::raw_ostream::write(a2, "<<NULL ATTRIBUTE>>", 0x12uLL);
  }

  return result;
}

double mlir::Attribute::print(uint64_t ***this, llvm::raw_ostream *a2, mlir::AsmState *a3, int a4)
{
  v4 = *a3;
  v10[0] = a2;
  v10[1] = v4;
  v5 = *(v4 + 640);
  v11 = *(v4 + 624);
  v12 = v5;
  v13 = *(v4 + 656);
  v14 = 1;
  v6 = *this;
  if (a4)
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  if (v6)
  {
    {
      mlir::AsmPrinter::Impl::printAttributeImpl(v10, v6, v7);
    }
  }

  else
  {
    v9 = *(a2 + 4);
    if ((*(a2 + 3) - v9) > 0x11)
    {
      *(v9 + 16) = 15934;
      result = *"<<NULL ATTRIBUTE>>";
      *v9 = *"<<NULL ATTRIBUTE>>";
      *(a2 + 4) += 18;
    }

    else
    {

      llvm::raw_ostream::write(a2, "<<NULL ATTRIBUTE>>", 0x12uLL);
    }
  }

  return result;
}

mlir::Attribute *mlir::Type::print(mlir::Attribute *this, llvm::raw_ostream *a2)
{
  if (*this)
  {
    v3 = this;
    Context = mlir::Attribute::getContext(this);
    mlir::OpPrintingFlags::OpPrintingFlags(&v12);
    v5 = operator new(0x2D0uLL);
    v6 = mlir::DialectInterfaceCollection<mlir::OpAsmDialectInterface>::DialectInterfaceCollection(v5, Context);
    *(v6 + 56) = v6 + 72;
    *(v6 + 64) = 0x600000000;
    *(v6 + 120) = 0;
    *(v6 + 128) = 0;
    *(v6 + 136) = 0;
    *(v6 + 144) = 0;
    *(v6 + 152) = 0;
    *(v6 + 160) = 0;
    *(v6 + 184) = 0u;
    *(v6 + 168) = v6 + 184;
    *(v6 + 176) = 0;
    *(v6 + 200) = v6 + 216;
    *(v6 + 208) = 0x400000000;
    *(v6 + 248) = v6 + 264;
    *(v6 + 256) = 0;
    *(v6 + 264) = 0;
    *(v6 + 272) = 1;
    *(v6 + 296) = 0;
    *(v6 + 280) = 0;
    *(v6 + 288) = 0;
    *(v6 + 304) = 0;
    *(v6 + 312) = 0;
    *(v6 + 320) = 0;
    *(v6 + 328) = 0;
    *(v6 + 336) = 0;
    *(v6 + 344) = 0;
    *(v6 + 352) = 0;
    *(v6 + 360) = 0;
    *(v6 + 368) = 0;
    *(v6 + 376) = 0;
    *(v6 + 384) = 0;
    *(v6 + 392) = 0;
    *(v6 + 400) = 0;
    *(v6 + 408) = 0;
    *(v6 + 416) = 0;
    *(v6 + 424) = 0;
    *(v6 + 432) = 0;
    *(v6 + 440) = 0;
    *(v6 + 448) = v6 + 464;
    *(v6 + 456) = 0x400000000;
    *(v6 + 504) = 0;
    *(v6 + 512) = 0;
    *(v6 + 496) = v6 + 512;
    *(v6 + 520) = 1;
    *(v6 + 528) = 0;
    *(v6 + 536) = 0;
    mlir::OpPrintingFlags::OpPrintingFlags((v6 + 544));
    *(v5 + 154) = 0;
    *(v5 + 76) = 0;
    *(v5 + 37) = 0u;
    v7 = v13;
    *(v5 + 39) = v12;
    *(v5 + 40) = v7;
    *(v5 + 41) = v14;
    *(v5 + 84) = 0;
    *(v5 + 680) = 0u;
    *(v5 + 174) = 0;
    *(v5 + 88) = v5 + 720;
    *(v5 + 89) = 0;
    *&v12 = a2;
    *(&v12 + 1) = v5;
    v8 = *(v5 + 40);
    v13 = *(v5 + 39);
    v14 = v8;
    v15 = *(v5 + 41);
    v16 = 1;
    v9 = *v3;
    if (v9)
    {
      if ((mlir::AsmPrinter::Impl::printAlias(&v12, v9) & 1) == 0)
      {
        mlir::AsmPrinter::Impl::printTypeImpl(&v12, v9);
      }
    }

    else
    {
      v11 = *(a2 + 4);
      if (*(a2 + 3) - v11 > 0xCuLL)
      {
        qmemcpy(v11, "<<NULL TYPE>>", 13);
        *(a2 + 4) += 13;
      }

      else
      {
        llvm::raw_ostream::write(a2, "<<NULL TYPE>>", 0xDuLL);
      }
    }

    mlir::detail::AsmStateImpl::~AsmStateImpl(v5);
  }

  v10 = *(a2 + 4);
  if (*(a2 + 3) - v10 > 0xCuLL)
  {
    qmemcpy(v10, "<<NULL TYPE>>", 13);
    *(a2 + 4) += 13;
  }

  else
  {

    return llvm::raw_ostream::write(a2, "<<NULL TYPE>>", 0xDuLL);
  }

  return this;
}

void mlir::Type::print(uint64_t ***this, llvm::raw_ostream *a2, llvm::raw_ostream **a3)
{
  v3 = *a3;
  v7[0] = a2;
  v7[1] = v3;
  v4 = *(v3 + 40);
  v8 = *(v3 + 39);
  v9 = v4;
  v10 = *(v3 + 41);
  v11 = 1;
  v5 = *this;
  if (*this)
  {
    if ((mlir::AsmPrinter::Impl::printAlias(v7, v5) & 1) == 0)
    {
      mlir::AsmPrinter::Impl::printTypeImpl(v7, v5);
    }
  }

  else
  {
    v6 = *(a2 + 4);
    if (*(a2 + 3) - v6 > 0xCuLL)
    {
      qmemcpy(v6, "<<NULL TYPE>>", 13);
      *(a2 + 4) += 13;
    }

    else
    {

      llvm::raw_ostream::write(a2, "<<NULL TYPE>>", 0xDuLL);
    }
  }
}

void *mlir::Type::dump(mlir::Type *this)
{
  v2 = llvm::errs(this);
  v3 = mlir::Type::print(this, v2);
  result = llvm::errs(v3);
  v5 = result[4];
  if (result[3] == v5)
  {

    return llvm::raw_ostream::write(result, "\n", 1uLL);
  }

  else
  {
    *v5 = 10;
    ++result[4];
  }

  return result;
}

llvm::raw_ostream *mlir::Value::print(llvm::raw_ostream *this, llvm::raw_ostream *a2, const mlir::OpPrintingFlags *a3)
{
  v3 = a2;
  if (*this)
  {
    v5 = this;
    DefiningOp = mlir::Value::getDefiningOp(this);
    if (DefiningOp)
    {
      v7 = DefiningOp;
      Parent = findParent(DefiningOp, (*(a3 + 40) & 0x20) != 0);
      mlir::AsmState::AsmState(&v13, Parent, a3, 0, 0);
      mlir::Operation::print(v7, v3, &v13);
      this = v13;
      v13 = 0;
      if (this)
      {
        mlir::detail::AsmStateImpl::~AsmStateImpl(this);
      }
    }

    else
    {
      v10 = *v5;
      v11 = *(v3 + 4);
      if (*(v3 + 3) - v11 > 0x19uLL)
      {
        qmemcpy(v11, "<block argument> of type '", 26);
        *(v3 + 4) += 26;
      }

      else
      {
        v3 = llvm::raw_ostream::write(v3, "<block argument> of type '", 0x1AuLL);
      }

      v13 = (*(v10 + 8) & 0xFFFFFFFFFFFFFFF8);
      mlir::Type::print(&v13, v3);
      v12 = *(v3 + 4);
      if ((*(v3 + 3) - v12) > 0xB)
      {
        *(v12 + 8) = 540702821;
        *v12 = *"' at index: ";
        *(v3 + 4) += 12;
      }

      else
      {
        v3 = llvm::raw_ostream::write(v3, "' at index: ", 0xCuLL);
      }

      return llvm::raw_ostream::operator<<(v3, *(v10 + 24));
    }
  }

  else
  {
    v9 = *(a2 + 4);
    if (*(a2 + 3) - v9 > 0xDuLL)
    {
      qmemcpy(v9, "<<NULL VALUE>>", 14);
      *(a2 + 4) += 14;
    }

    else
    {

      return llvm::raw_ostream::write(a2, "<<NULL VALUE>>", 0xEuLL);
    }
  }

  return this;
}

mlir::detail::AsmStateImpl *mlir::Operation::print(mlir::Block **this, llvm::raw_ostream *a2, const mlir::OpPrintingFlags *a3)
{
  Parent = findParent(this, (*(a3 + 40) & 0x20) != 0);
  mlir::AsmState::AsmState(&v8, Parent, a3, 0, 0);
  mlir::Operation::print(this, a2, &v8);
  result = v8;
  v8 = 0;
  if (result)
  {
    mlir::detail::AsmStateImpl::~AsmStateImpl(result);
  }

  return result;
}

void mlir::Operation::print(mlir::Operation *this, llvm::raw_ostream *a2, mlir::AsmState *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = *a3;
  v7[0] = a2;
  v7[1] = v4;
  v5 = *(v4 + 640);
  v8 = *(v4 + 624);
  v9 = v5;
  v10 = *(v4 + 656);
  v11 = 1;
  v6[0] = &unk_1F5AF5890;
  v6[1] = v7;
  v14[0] = "builtin";
  v14[1] = 7;
  v12 = v14;
  v13 = 0x300000001;
  v15 = 0;
  if (!*(this + 2) && (*(v4 + 664) & 0x20) == 0)
  {
    mlir::detail::AsmStateImpl::initializeAliases(v4, this);
  }

  v6[0] = &unk_1F5AF5890;
  if (v12 != v14)
  {
    free(v12);
  }
}

llvm::raw_ostream *anonymous namespace::SSANameState::printValueID(llvm::raw_ostream *result, unint64_t a2, int a3, llvm::raw_ostream *a4)
{
  v4 = a4;
  if (!a2)
  {
    v11 = *(a4 + 4);
    if (*(a4 + 3) - v11 <= 0xDuLL)
    {
      v12 = "<<NULL VALUE>>";
      v13 = a4;
      v14 = 14;
LABEL_25:

      return llvm::raw_ostream::write(v13, v12, v14);
    }

    qmemcpy(v11, "<<NULL VALUE>>", 14);
    v17 = *(a4 + 4) + 14;
LABEL_29:
    *(v4 + 4) = v17;
    return result;
  }

  v6 = result;
  v7 = *(a2 + 8) & 7;
  if (v7 == 7)
  {
    v8 = 0;
  }

  else
  {
    v8 = a2;
  }

  if (v7 != 7)
  {
    v15 = a2;
    result = mlir::detail::OpResultImpl::getOwner(v8);
    v16 = *(result + 9);
    if (v16 == 1)
    {
      v9 = 0;
      v10 = 0;
      a2 = v15;
      goto LABEL_20;
    }

    v18 = *(v8 + 8);
    if ((v18 & 7) == 6)
    {
      v9 = *(v8 + 16) + 6;
      v19 = *(v6 + 22);
      if (!v19)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v9 = v18 & 7;
      v19 = *(v6 + 22);
      if (!v19)
      {
LABEL_19:
        a2 = result - 16;
        v10 = 1;
        goto LABEL_20;
      }
    }

    v20 = *(v6 + 9);
    v21 = (v19 - 1) & ((result >> 4) ^ (result >> 9));
    v22 = *(v20 + 32 * v21);
    if (v22 == result)
    {
LABEL_18:
      if (v21 != v19)
      {
        v41 = v20 + 32 * v21;
        v42 = *(v41 + 8);
        v43 = *(v41 + 16);
        if (v43)
        {
          v44 = v43;
          v45 = v42;
          do
          {
            v46 = v44 >> 1;
            v47 = &v45[v44 >> 1];
            v49 = *v47;
            v48 = v47 + 1;
            v44 += ~(v44 >> 1);
            if (v9 < v49)
            {
              v44 = v46;
            }

            else
            {
              v45 = v48;
            }
          }

          while (v44);
        }

        else
        {
          v45 = v42;
        }

        v54 = &v42[v43];
        v55 = *(v45 - 1);
        if (v45 != v54)
        {
          v16 = *v45;
        }

        v56 = v16 - v55;
        v10 = v56 != 1;
        if (v56 == 1)
        {
          v9 = 0;
        }

        else
        {
          v9 -= v55;
        }

        if (v55 > 5)
        {
          a2 = result - 24 * (v55 - 5) - 96;
        }

        else
        {
          a2 = result - 16 * v55 - 16;
        }

        goto LABEL_20;
      }
    }

    else
    {
      v59 = 1;
      while (v22 != -4096)
      {
        v60 = v21 + v59++;
        v21 = v60 & (v19 - 1);
        v22 = *(v20 + 32 * v21);
        if (v22 == result)
        {
          goto LABEL_18;
        }
      }
    }

    goto LABEL_19;
  }

  v9 = 0;
  v10 = 0;
LABEL_20:
  v23 = *(v6 + 4);
  if (!v23)
  {
    goto LABEL_23;
  }

  v24 = *v6;
  v25 = 0x9DDFEA08EB382D69 * ((8 * a2 - 0xAE502812AA7333) ^ HIDWORD(a2));
  v26 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v25 >> 47) ^ v25);
  v27 = -348639895 * ((v26 >> 47) ^ v26);
  v28 = v27 & (v23 - 1);
  v29 = *(*v6 + 16 * v28);
  if (a2 != v29)
  {
    v57 = 1;
    while (v29 != -4096)
    {
      v58 = v28 + v57++;
      v28 = v58 & (v23 - 1);
      v29 = *(v24 + 16 * v28);
      if (a2 == v29)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_23;
  }

LABEL_22:
  if (v28 == v23)
  {
LABEL_23:
    v30 = *(v4 + 4);
    if (*(v4 + 3) - v30 <= 0x14uLL)
    {
      v12 = "<<UNKNOWN SSA VALUE>>";
      v13 = v4;
      v14 = 21;
      goto LABEL_25;
    }

    qmemcpy(v30, "<<UNKNOWN SSA VALUE>>", 21);
    v17 = *(v4 + 4) + 21;
    goto LABEL_29;
  }

  v31 = *(v4 + 4);
  if (v31 >= *(v4 + 3))
  {
    v33 = a2;
    llvm::raw_ostream::write(v4, 37);
    a2 = v33;
    v32 = *(v24 + 16 * v28 + 8);
    if (v32 != -1)
    {
      goto LABEL_33;
    }

LABEL_35:
    v34 = *(v6 + 3);
    v35 = *(v6 + 10);
    if (v35)
    {
      v36 = (v35 - 1) & v27;
      v37 = (v34 + 24 * v36);
      v38 = *v37;
      if (a2 == *v37)
      {
        goto LABEL_49;
      }

      v39 = 1;
      while (v38 != -4096)
      {
        v40 = v36 + v39++;
        v36 = v40 & (v35 - 1);
        v37 = (v34 + 24 * v36);
        v38 = *v37;
        if (a2 == *v37)
        {
          goto LABEL_49;
        }
      }
    }

    v37 = (v34 + 24 * v35);
LABEL_49:
    v50 = v37[1];
    v51 = v37[2];
    result = *(v4 + 4);
    if (v51 <= *(v4 + 3) - result)
    {
      if (v51)
      {
        v52 = v37[2];
        result = memcpy(result, v50, v51);
        *(v4 + 4) += v52;
      }
    }

    else
    {
      result = llvm::raw_ostream::write(v4, v50, v51);
    }

    goto LABEL_53;
  }

  *(v4 + 4) = v31 + 1;
  *v31 = 37;
  v32 = *(v24 + 16 * v28 + 8);
  if (v32 == -1)
  {
    goto LABEL_35;
  }

LABEL_33:
  result = llvm::raw_ostream::operator<<(v4, v32);
LABEL_53:
  if ((v10 & a3) == 1)
  {
    v53 = *(v4 + 4);
    if (v53 >= *(v4 + 3))
    {
      v4 = llvm::raw_ostream::write(v4, 35);
    }

    else
    {
      *(v4 + 4) = v53 + 1;
      *v53 = 35;
    }

    return llvm::raw_ostream::operator<<(v4, v9);
  }

  return result;
}

mlir::Operation *findParent(mlir::Block **ParentOp, char a2)
{
  if (a2)
  {
    do
    {
      v2 = ParentOp;
      {
        mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>();
      }

      if ((*(**(v2 + 6) + 32))(*(v2 + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id))
      {
        break;
      }

      v3 = *(v2 + 2);
      if (!v3)
      {
        break;
      }

      ParentOp = mlir::Block::getParentOp(v3);
    }

    while (ParentOp);
  }

  else
  {
    do
    {
      v2 = ParentOp;
      v4 = ParentOp[2];
      if (!v4)
      {
        break;
      }

      ParentOp = mlir::Block::getParentOp(v4);
    }

    while (ParentOp);
  }

  return v2;
}

void mlir::detail::AsmStateImpl::initializeAliases(mlir::detail::AsmStateImpl *this, mlir::Operation *a2)
{
  v113 = *MEMORY[0x1E69E9840];
  v4 = this + 624;
  v96[0] = this;
  v96[1] = this + 184;
  v97 = 0;
  v98 = 0;
  v99 = 0;
  v100 = &v102;
  v101 = 0;
  v102 = v104;
  v103 = xmmword_1E096E640;
  v106 = 2;
  v110 = 0;
  v111 = 1;
  v108 = 0;
  v109 = 0;
  v107 = 0;
  v105 = &unk_1F5B3FBC0;
  v112 = &v102;
  llvm::raw_ostream::SetBufferAndMode(&v105, 0, 0, 0);
  v74[0] = &unk_1F5AF59E8;
  v74[1] = 0;
  v75 = v4;
  v76 = v96;
  v78 = 0;
  v82 = 0;
  v83 = 1;
  v80 = 0;
  v81 = 0;
  v79 = 0;
  v77 = &unk_1F5B3FC80;
  v5 = *(this + 664);
  if (v5)
  {
    v5 = v75[40];
  }

  if ((v5 & 4) != 0)
  {
    (*(v74[0] + 216))(v74, a2, 1);
    v6 = v98;
    if (!v98)
    {
      goto LABEL_33;
    }
  }

  else
  {
    (*(**(a2 + 6) + 56))(*(a2 + 6), a2, v74, "", 0);
    v6 = v98;
    if (!v98)
    {
      goto LABEL_33;
    }
  }

  v7 = v99;
  if (v99 > 4 * v6 && v99 >= 0x41)
  {
    if (!v6 || ((v8 = 1 << (33 - __clz(v6 - 1)), v8 <= 64) ? (v9 = 64) : (v9 = v8), v9 != v99))
    {
      llvm::deallocate_buffer(v97, (16 * v99));
    }

    v98 = 0;
    v10 = v97;
    v11 = (v99 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v11)
    {
      v12 = v11 + 1;
      v13 = (v11 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v14 = (v97 + 16 * v13);
      v15 = (v97 + 16);
      v16 = v13;
      do
      {
        *(v15 - 2) = -4096;
        *v15 = -4096;
        v15 += 4;
        v16 -= 2;
      }

      while (v16);
      if (v12 == v13)
      {
LABEL_33:
        v90 = &v92;
        v91 = 0;
        v26 = v101;
        if (v101)
        {
          v27 = v100;
          if (v100 != &v102)
          {
            v90 = v100;
            v91 = v101;
            v100 = &v102;
            HIDWORD(v101) = 0;
LABEL_36:
            LODWORD(v101) = 0;
            v28 = &v27[13 * v26];
LABEL_37:
            v29 = MEMORY[0x1E69E5398];
            v30 = v26;
            while (1)
            {
              v31 = operator new(104 * v30, v29);
              if (v31)
              {
                break;
              }

              v32 = v30 >> 1;
              v33 = v30 > 1;
              v30 >>= 1;
              if (!v33)
              {
                goto LABEL_42;
              }
            }

            v36 = v31;
            operator delete(v36);
            v87 = 0;
            v88 = 0;
            v89 = 0x1000000000;
            v35 = v91;
            if (!v91)
            {
LABEL_61:
              free(v87);
              v51 = v90;
              if (v91)
              {
                v52 = (v90 + 104 * v91 - 64);
                v53 = -104 * v91;
                do
                {
                  if (v52 + 2 != *v52)
                  {
                    free(*v52);
                  }

                  v52 -= 13;
                  v53 += 104;
                }

                while (v53);
                v51 = v90;
              }

              if (v51 != &v92)
              {
                free(v51);
              }

              v74[0] = &unk_1F5AF59E8;
              llvm::raw_null_ostream::~raw_null_ostream(&v77);
              llvm::raw_ostream::~raw_ostream(&v105);
              if (v102 != v104)
              {
                free(v102);
              }

              v54 = v100;
              if (v101)
              {
                v55 = (v100 + 104 * v101 - 64);
                v56 = -104 * v101;
                do
                {
                  if (v55 + 2 != *v55)
                  {
                    free(*v55);
                  }

                  v55 -= 13;
                  v56 += 104;
                }

                while (v56);
                v54 = v100;
              }

              if (v54 != &v102)
              {
                free(v54);
              }

              llvm::deallocate_buffer(v97, (16 * v99));
            }

LABEL_45:
            v37 = v90 + 16;
            v38 = 104 * v35;
            do
            {
              if (v37[8] == 1)
              {
                v40 = *(v37 - 1);
                v41 = *v37;
                v42 = llvm::StringMapImpl::hash(v40, *v37, v34);
                v43 = llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace_with_hash<>(&v87, v40, v41, v42);
                v44 = *(*v43 + 8);
                *(*v43 + 8) = v44 + 1;
                v45 = *(v37 + 4) & 0xC0000000 | v44 & 0x3FFFFFFF;
                v46 = *(v37 - 2);
                v84 = v46;
                *&v85 = v40;
                *(&v85 + 1) = v41;
                LODWORD(v86) = v45;
                BYTE4(v86) = 0;
                v92 = v46;
                v93 = 0;
                llvm::DenseMapBase<llvm::DenseMap<mlir::StringAttr,unsigned int,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,unsigned int>>,mlir::StringAttr,unsigned int,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,unsigned int>>::try_emplace<unsigned int>(this + 144, &v92, &v93, &v94);
                if (v95 == 1)
                {
                  v47 = *(this + 44);
                  *(v94 + 8) = v47;
                  if (v47 < *(this + 45))
                  {
                    v39 = *(this + 21) + 32 * v47;
                    *v39 = v46;
                    *(v39 + 8) = v85;
                    *(v39 + 24) = v86;
                    ++*(this + 44);
                  }

                  else
                  {
                  }
                }
              }

              v37 += 104;
              v38 -= 104;
            }

            while (v38);
            if (HIDWORD(v88) && v88)
            {
              v48 = 0;
              do
              {
                v49 = *(v87 + v48);
                if (v49 != -8 && v49 != 0)
                {
                  llvm::deallocate_buffer(v49, (*v49 + 17));
                }

                v48 += 8;
              }

              while (8 * v88 != v48);
            }

            goto LABEL_61;
          }

          v84 = 0;
          llvm::SmallVectorBase<unsigned int>::mallocForGrow(&v90, &v92, v101, 104, &v84);
          v27 = v57;
          v58 = v90;
          if (v91)
          {
            v59 = v90 + 104 * v91;
            v60 = v27 + 5;
            v61 = v90 + 40;
            do
            {
              v62 = v61 - 40;
              *(v60 - 5) = *(v61 - 5);
              v63 = *(v61 - 2);
              *(v60 - 20) = *(v61 - 20);
              *(v60 - 2) = v63;
              *v60 = v60 + 2;
              v60[1] = 0x600000000;
              if (*(v61 + 2))
              {
                llvm::SmallVectorImpl<llvm::SMLoc>::operator=(v60, v61);
              }

              v60 += 13;
              v61 += 104;
            }

            while (v62 + 104 != v59);
            v58 = v90;
            if (v91)
            {
              v64 = (v90 + 104 * v91 - 64);
              v65 = -104 * v91;
              do
              {
                if (v64 + 2 != *v64)
                {
                  free(*v64);
                }

                v64 -= 13;
                v65 += 104;
              }

              while (v65);
              v58 = v90;
            }
          }

          v66 = v84;
          if (v58 != &v92)
          {
            free(v58);
          }

          v90 = v27;
          HIDWORD(v91) = v66;
          if (!v101)
          {
            LODWORD(v91) = v26;
            goto LABEL_36;
          }

          v67 = v100 + 104 * v101;
          v68 = v27 + 5;
          v69 = v100 + 40;
          do
          {
            v70 = v69 - 40;
            *(v68 - 5) = *(v69 - 5);
            v71 = *(v69 - 2);
            *(v68 - 20) = *(v69 - 20);
            *(v68 - 2) = v71;
            *v68 = v68 + 2;
            v68[1] = 0x600000000;
            if (*(v69 + 2))
            {
              llvm::SmallVectorImpl<llvm::SMLoc>::operator=(v68, v69);
            }

            v68 += 13;
            v69 += 104;
          }

          while (v70 + 104 != v67);
          LODWORD(v91) = v26;
          if (!v101)
          {
            v27 = v90;
            goto LABEL_36;
          }

          v72 = (v100 + 104 * v101 - 64);
          v73 = -104 * v101;
          do
          {
            if (v72 + 2 != *v72)
            {
              free(*v72);
            }

            v72 -= 13;
            v73 += 104;
          }

          while (v73);
          v26 = v91;
          LODWORD(v101) = 0;
          v27 = v90;
          v28 = (v90 + 104 * v91);
          if (v91)
          {
            goto LABEL_37;
          }

          v26 = 0;
          v32 = 0;
        }

        else
        {
          v26 = 0;
          v32 = 0;
          v28 = &v92;
          v27 = &v92;
        }

LABEL_42:
        v87 = 0;
        v88 = 0;
        v89 = 0x1000000000;
        v35 = v91;
        if (!v91)
        {
          goto LABEL_61;
        }

        goto LABEL_45;
      }
    }

    else
    {
      v14 = v97;
    }

    v25 = (v10 + 16 * v7);
    do
    {
      *v14 = -4096;
      v14 = (v14 + 16);
    }

    while (v14 != v25);
    goto LABEL_33;
  }

  if (v99)
  {
    v17 = v97;
    v18 = (v99 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v18)
    {
      v19 = v18 + 1;
      v20 = (v18 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v21 = (v97 + 16 * v20);
      v22 = (v97 + 16);
      v23 = v20;
      do
      {
        *(v22 - 2) = -4096;
        *v22 = -4096;
        v22 += 4;
        v23 -= 2;
      }

      while (v23);
      if (v19 == v20)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v21 = v97;
    }

    v24 = (v17 + 16 * v7);
    do
    {
      *v21 = -4096;
      v21 = (v21 + 16);
    }

    while (v21 != v24);
  }

LABEL_29:
  v98 = 0;
  goto LABEL_33;
}

void anonymous namespace::OperationPrinter::~OperationPrinter(_anonymous_namespace_::OperationPrinter *this)
{
  *this = &unk_1F5AF5890;
  v1 = *(this + 11);
  if (v1 != this + 104)
  {
    free(v1);
  }
}

{
  *this = &unk_1F5AF5890;
  v2 = *(this + 11);
  if (v2 != this + 104)
  {
    v3 = this;
    free(v2);
    this = v3;
  }

  operator delete(this);
}

void *mlir::Operation::dump(mlir::Operation *this)
{
  v2 = llvm::errs(this);
  mlir::OpPrintingFlags::OpPrintingFlags(v7);
  v8 |= 0x20u;
  Parent = findParent(this, 1);
  mlir::AsmState::AsmState(&v9, Parent, v7, 0, 0);
  mlir::Operation::print(this, v2, &v9);
  v4 = v9;
  v9 = 0;
  if (v4)
  {
    mlir::detail::AsmStateImpl::~AsmStateImpl(v4);
  }

  result = llvm::errs(0);
  v6 = result[4];
  if (result[3] == v6)
  {
    return llvm::raw_ostream::write(result, "\n", 1uLL);
  }

  *v6 = 10;
  ++result[4];
  return result;
}

mlir::Block *anonymous namespace::OperationPrinter::print(_anonymous_namespace_::OperationPrinter *this, mlir::Block *a2, int a3, char a4)
{
  v119[12] = *MEMORY[0x1E69E9840];
  v111 = a2;
  if (!a3)
  {
LABEL_96:
    *(this + 38) += 2;
    if ((*(this + 72) & 0x40) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_97;
  }

  v5 = a2;
  llvm::raw_ostream::indent(*(this + 2), *(this + 38));
  v6 = *(this + 2);
  v7 = *(this + 3);
  v8 = *(v7 + 392);
  if (v8)
  {
    v9 = *(v7 + 376);
    v10 = (v8 - 1) & ((v5 >> 4) ^ (v5 >> 9));
    v11 = *(v9 + 32 * v10);
    if (v11 == v5)
    {
LABEL_4:
      if (v10 != v8)
      {
        v16 = v9 + 32 * v10;
        v14 = *(v16 + 16);
        v15 = *(v16 + 24);
        v13 = v6 + 4;
        v12 = v6[4];
        if (v15 <= v6[3] - v12)
        {
          if (!v15)
          {
            goto LABEL_11;
          }

          goto LABEL_10;
        }

LABEL_8:
        llvm::raw_ostream::write(v6, v14, v15);
        goto LABEL_11;
      }
    }

    else
    {
      v105 = 1;
      while (v11 != -4096)
      {
        v106 = v10 + v105++;
        v10 = v106 & (v8 - 1);
        v11 = *(v9 + 32 * v10);
        if (v11 == v5)
        {
          goto LABEL_4;
        }
      }
    }
  }

  v13 = v6 + 4;
  v12 = v6[4];
  v14 = "INVALIDBLOCK";
  v15 = 12;
  if (v6[3] - v12 <= 0xBuLL)
  {
    goto LABEL_8;
  }

LABEL_10:
  memcpy(v12, v14, v15);
  *v13 += v15;
LABEL_11:
  if (*(v5 + 6) == *(v5 + 7))
  {
    goto LABEL_23;
  }

  v17 = *(this + 2);
  v18 = *(v17 + 4);
  if (v18 >= *(v17 + 3))
  {
    llvm::raw_ostream::write(v17, 40);
    v20 = *(v5 + 6);
    v19 = *(v5 + 7);
    v21 = v19 - v20;
    if (v19 == v20)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *(v17 + 4) = v18 + 1;
    *v18 = 40;
    v20 = *(v5 + 6);
    v19 = *(v5 + 7);
    v21 = v19 - v20;
    if (v19 == v20)
    {
      goto LABEL_21;
    }
  }

  v22 = *(this + 2);
  if (v21 != 8)
  {
    v23 = v20 + 1;
    do
    {
      while (1)
      {
        v25 = v22[4];
        if (v22[3] - v25 <= 1uLL)
        {
          break;
        }

        *v25 = 8236;
        v22[4] += 2;
        v24 = *v23++;
        if (v23 == v19)
        {
          goto LABEL_21;
        }
      }

      llvm::raw_ostream::write(v22, ", ", 2uLL);
      v26 = *v23++;
    }

    while (v23 != v19);
  }

LABEL_21:
  v27 = *(this + 2);
  v28 = *(v27 + 4);
  if (v28 < *(v27 + 3))
  {
    *(v27 + 4) = v28 + 1;
    *v28 = 41;
LABEL_23:
    v29 = *(this + 2);
    v30 = *(v29 + 4);
    if (v30 < *(v29 + 3))
    {
      goto LABEL_24;
    }

    goto LABEL_31;
  }

  llvm::raw_ostream::write(v27, 41);
  v29 = *(this + 2);
  v30 = *(v29 + 4);
  if (v30 < *(v29 + 3))
  {
LABEL_24:
    *(v29 + 4) = v30 + 1;
    *v30 = 58;
    if (mlir::Block::getParent(v5))
    {
      goto LABEL_25;
    }

LABEL_32:
    v39 = *(this + 2);
    v40 = v39[4];
    if (v39[3] - v40 <= 0x1DuLL)
    {
      llvm::raw_ostream::write(v39, "  // block is not in a region!", 0x1EuLL);
      goto LABEL_94;
    }

    qmemcpy(v40, "  // block is not in a region!", 30);
    v42 = v39[4] + 30;
LABEL_67:
    v39[4] = v42;
    goto LABEL_94;
  }

LABEL_31:
  llvm::raw_ostream::write(v29, 58);
  if (!mlir::Block::getParent(v5))
  {
    goto LABEL_32;
  }

LABEL_25:
  if (!*v5)
  {
    if (mlir::Block::isEntryBlock(v5))
    {
      goto LABEL_94;
    }

    v39 = *(this + 2);
    v41 = v39[4];
    if ((v39[3] - v41) <= 0x13)
    {
      llvm::raw_ostream::write(v39, "  // no predecessors", 0x14uLL);
      goto LABEL_94;
    }

    *(v41 + 16) = 1936879475;
    *v41 = *"  // no predecessors";
    v42 = v39[4] + 20;
    goto LABEL_67;
  }

  SinglePredecessor = mlir::Block::getSinglePredecessor(v5);
  if (SinglePredecessor)
  {
    v33 = SinglePredecessor;
    v34 = *(this + 2);
    v35 = v34[4];
    if ((v34[3] - v35) > 0xA)
    {
      *(v35 + 7) = 540697701;
      *v35 = *"  // pred: ";
      v34[4] += 11;
      v36 = *(this + 2);
      v37 = *(this + 3);
      v38 = *(v37 + 392);
      if (!v38)
      {
        goto LABEL_60;
      }
    }

    else
    {
      llvm::raw_ostream::write(v34, "  // pred: ", 0xBuLL);
      v36 = *(this + 2);
      v37 = *(this + 3);
      v38 = *(v37 + 392);
      if (!v38)
      {
        goto LABEL_60;
      }
    }

    v60 = *(v37 + 376);
    v61 = (v38 - 1) & ((v33 >> 4) ^ (v33 >> 9));
    v62 = *(v60 + 32 * v61);
    if (v62 == v33)
    {
LABEL_59:
      if (v61 != v38)
      {
        v69 = v60 + 32 * v61;
        a2 = *(v69 + 16);
        v65 = *(v69 + 24);
        v64 = v36 + 4;
        v63 = v36[4];
        if (v65 <= v36[3] - v63)
        {
          if (!v65)
          {
            goto LABEL_94;
          }

          goto LABEL_93;
        }

LABEL_65:
        llvm::raw_ostream::write(v36, a2, v65);
        goto LABEL_94;
      }
    }

    else
    {
      v107 = 1;
      while (v62 != -4096)
      {
        v108 = v61 + v107++;
        v61 = v108 & (v38 - 1);
        v62 = *(v60 + 32 * v61);
        if (v62 == v33)
        {
          goto LABEL_59;
        }
      }
    }

LABEL_60:
    v64 = v36 + 4;
    v63 = v36[4];
    a2 = "INVALIDBLOCK";
    v65 = 12;
    if (v36[3] - v63 > 0xBuLL)
    {
LABEL_93:
      memcpy(v63, a2, v65);
      *v64 += v65;
      goto LABEL_94;
    }

    goto LABEL_65;
  }

  v117 = v119;
  v32.n128_u64[0] = 0x400000000;
  v118 = 0x400000000;
  v43 = *v5;
  if (!*v5)
  {
    v67 = v119;
    v66 = v119;
    goto LABEL_69;
  }

  do
  {
    v44 = mlir::PredecessorIterator::unwrap(v43);
    v45 = *(this + 3);
    v46 = *(v45 + 376);
    v47 = *(v45 + 392);
    if (v47)
    {
      v48 = (v47 - 1) & ((v44 >> 4) ^ (v44 >> 9));
      v49 = *(v46 + 32 * v48);
      if (v49 == v44)
      {
        goto LABEL_46;
      }

      v50 = 1;
      while (v49 != -4096)
      {
        v51 = v48 + v50++;
        v48 = v51 & (v47 - 1);
        v49 = *(v46 + 32 * v48);
        if (v49 == v44)
        {
          goto LABEL_46;
        }
      }
    }

    v48 = v47;
LABEL_46:
    v114 = -1;
    v115 = "INVALIDBLOCK";
    v116 = 12;
    v52 = v46 + 32 * v48 + 8;
    if (v48 == v47)
    {
      v53 = &v114;
    }

    else
    {
      v53 = v52;
    }

    v54 = *v53;
    v113 = *(v53 + 2);
    v112 = v54;
    v55 = v117;
    if (v118 >= HIDWORD(v118))
    {
      if (v117 <= &v112 && v117 + 24 * v118 > &v112)
      {
        v59 = &v112 - v117;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v117, v119, v118 + 1, 24);
        v55 = v117;
        v56 = v117 + v59;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v117, v119, v118 + 1, 24);
        v56 = &v112;
        v55 = v117;
      }
    }

    else
    {
      v56 = &v112;
    }

    v57 = &v55[24 * v118];
    v32 = *v56;
    v57[1].n128_u64[0] = *(v56 + 2);
    *v57 = v32;
    v58 = (v118 + 1);
    LODWORD(v118) = v118 + 1;
    v43 = *v43;
  }

  while (v43);
  v66 = v117;
  v67 = v117 + 24 * v58;
  if (v58)
  {
    v68 = 126 - 2 * __clz(v58);
    goto LABEL_70;
  }

LABEL_69:
  v68 = 0;
LABEL_70:
  v70 = *(this + 2);
  v71 = *(v70 + 4);
  if ((*(v70 + 3) - v71) > 4)
  {
    *(v71 + 4) = 32;
    *v71 = 791617568;
    *(v70 + 4) += 5;
    v73 = llvm::raw_ostream::operator<<(v70, v118);
    v74 = *(v73 + 4);
    if (*(v73 + 3) - v74 <= 7uLL)
    {
      goto LABEL_74;
    }

LABEL_72:
    *v74 = 0x203A736465727020;
    *(v73 + 4) += 8;
  }

  else
  {
    v72 = llvm::raw_ostream::write(v70, "  // ", 5uLL);
    v73 = llvm::raw_ostream::operator<<(v72, v118);
    v74 = *(v73 + 4);
    if (*(v73 + 3) - v74 > 7uLL)
    {
      goto LABEL_72;
    }

LABEL_74:
    llvm::raw_ostream::write(v73, " preds: ", 8uLL);
  }

  v75 = v118;
  if (v118)
  {
    v76 = *(this + 2);
    v77 = v117;
    a2 = *(v117 + 1);
    v78 = *(v117 + 2);
    v79 = v76[4];
    if (v76[3] - v79 >= v78)
    {
      if (v78)
      {
        v80 = *(v117 + 2);
        memcpy(v79, a2, v78);
        v76[4] += v80;
      }
    }

    else
    {
      llvm::raw_ostream::write(*(this + 2), a2, v78);
    }

    if (v75 != 1)
    {
      v81 = 24 * v75;
      v82 = (v77 + 40);
      for (i = v81 - 24; i; i -= 24)
      {
        v84 = v76[4];
        if (v76[3] - v84 > 1uLL)
        {
          *v84 = 8236;
          v76[4] += 2;
          a2 = *(v82 - 1);
          v85 = *v82;
          v86 = *(this + 2);
          v87 = v86[4];
          if (v86[3] - v87 >= *v82)
          {
LABEL_90:
            if (v85)
            {
              v88 = v85;
              memcpy(v87, a2, v85);
              v86[4] += v88;
            }

            goto LABEL_85;
          }
        }

        else
        {
          llvm::raw_ostream::write(v76, ", ", 2uLL);
          a2 = *(v82 - 1);
          v85 = *v82;
          v86 = *(this + 2);
          v87 = v86[4];
          if (v86[3] - v87 >= *v82)
          {
            goto LABEL_90;
          }
        }

        llvm::raw_ostream::write(v86, a2, v85);
LABEL_85:
        v82 += 3;
      }
    }
  }

  if (v117 != v119)
  {
    free(v117);
  }

LABEL_94:
  v89 = *(this + 2);
  ++*(this + 20);
  v90 = *(v89 + 4);
  if (v90 < *(v89 + 3))
  {
    *(v89 + 4) = v90 + 1;
    *v90 = 10;
    goto LABEL_96;
  }

  llvm::raw_ostream::write(v89, 10);
  *(this + 38) += 2;
  if ((*(this + 72) & 0x40) != 0)
  {
LABEL_97:
    v91 = *(v111 + 6);
    for (j = *(v111 + 7); v91 != j; ++v91)
    {
      while (1)
      {
        v93 = *v91;
        llvm::raw_ostream::indent(*(this + 2), *(this + 38));
        v94 = *(this + 2);
        v95 = v94[4];
        if ((v94[3] - v95) > 2)
        {
          *(v95 + 2) = 32;
          *v95 = 12079;
          v94[4] += 3;
        }

        else
        {
          llvm::raw_ostream::write(v94, "// ", 3uLL);
        }

        v96 = *(this + 2);
        v97 = v96[4];
        v98 = v96[3] - v97;
        if (*v93)
        {
          if (v98 > 0xB)
          {
            *(v97 + 8) = 544825888;
            *v97 = *" is used by ";
            v96[4] += 12;
          }

          else
          {
            llvm::raw_ostream::write(v96, " is used by ", 0xCuLL);
          }
        }

        else if (v98 > 9)
        {
          *(v97 + 8) = 25701;
          *v97 = *" is unused";
          v96[4] += 10;
        }

        else
        {
          llvm::raw_ostream::write(v96, " is unused", 0xAuLL);
        }

        v99 = *(this + 2);
        ++*(this + 20);
        v100 = *(v99 + 4);
        if (v100 >= *(v99 + 3))
        {
          break;
        }

        *(v99 + 4) = v100 + 1;
        *v100 = 10;
        if (++v91 == j)
        {
          goto LABEL_115;
        }
      }

      llvm::raw_ostream::write(v99, 10);
    }
  }

LABEL_115:
  v102 = (v111 + 32);
  result = *(v111 + 4);
  if (result == (v111 + 32))
  {
    v104 = *(v111 + 5);
  }

  else
  {
    v103 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(result, a2);
    {
      v109 = v103;
      v103 = v109;
    }

    result = (*(**(v103 + 48) + 32))(*(v103 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id);
    v104 = *(v111 + 5);
    if (result && (a4 & 1) == 0)
    {
      v102 = *v102;
    }
  }

  if (v104 != v102)
  {
  }

  *(this + 38) -= 2;
  return result;
}

void mlir::FallbackAsmResourceMap::ResourceCollection::~ResourceCollection(mlir::FallbackAsmResourceMap::ResourceCollection *this)
{
  *this = &unk_1F5AF56F8;
  v2 = *(this + 4);
  v3 = *(this + 10);
  if (v3)
  {
    v4 = &v2[96 * v3 - 8];
    v5 = -96 * v3;
    do
    {
      v6 = *v4;
      if (v6 != -1)
      {
        (off_1F5AF5C00[v6])(&v7, v4 - 64);
      }

      *v4 = -1;
      if (*(v4 - 65) < 0)
      {
        operator delete(*(v4 - 11));
      }

      v4 -= 96;
      v5 += 96;
    }

    while (v5);
    v2 = *(this + 4);
  }

  if (v2 != this + 48)
  {
    free(v2);
  }

  *this = &unk_1F5AF5688;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_1F5AF56F8;
  v2 = *(this + 4);
  v3 = *(this + 10);
  if (v3)
  {
    v4 = &v2[96 * v3 - 8];
    v5 = -96 * v3;
    do
    {
      v6 = *v4;
      if (v6 != -1)
      {
        (off_1F5AF5C00[v6])(&v7, v4 - 64);
      }

      *v4 = -1;
      if (*(v4 - 65) < 0)
      {
        operator delete(*(v4 - 11));
      }

      v4 -= 96;
      v5 += 96;
    }

    while (v5);
    v2 = *(this + 4);
  }

  if (v2 != this + 48)
  {
    free(v2);
  }

  *this = &unk_1F5AF5688;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  operator delete(this);
}

uint64_t mlir::OpAsmDialectInterface::getAlias()
{
  return 0;
}

{
  return 0;
}

void *llvm::function_ref<mlir::AsmResourceBlob ()(unsigned long,unsigned long)>::callback_fn<mlir::AsmParsedResourceEntry::parseAsBlob(void)::{lambda(unsigned long,unsigned long)#1}>@<X0>(size_t __sz@<X1>, std::align_val_t a2@<X2>, uint64_t a3@<X8>)
{
  result = llvm::allocate_buffer(__sz, a2);
  *a3 = result;
  *(a3 + 8) = __sz;
  *(a3 + 48) = llvm::detail::UniqueFunctionBase<void,void *,unsigned long,unsigned long>::CallbacksHolder<void (*)(void *,unsigned long,unsigned long),void (*)(void *,unsigned long,unsigned long),void>::Callbacks + 2;
  *(a3 + 16) = a2;
  *(a3 + 24) = llvm::deallocate_buffer;
  *(a3 + 56) = 1;
  return result;
}

const char *llvm::getTypeName<mlir::DistinctAttr>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::DistinctAttr]";
  v6 = 68;
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::DistinctAttr,unsigned long long,llvm::DenseMapInfo<mlir::DistinctAttr,void>,llvm::detail::DenseMapPair<mlir::DistinctAttr,unsigned long long>>,mlir::DistinctAttr,unsigned long long,llvm::DenseMapInfo<mlir::DistinctAttr,void>,llvm::detail::DenseMapPair<mlir::DistinctAttr,unsigned long long>>::try_emplace<unsigned long long &>@<X0>(uint64_t result@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(result + 16);
  if (!v5)
  {
    v9 = 0;
    goto LABEL_5;
  }

  v6 = *result;
  v7 = v5 - 1;
  v8 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v5 - 1);
  v9 = (*result + 16 * v8);
  v10 = *v9;
  if (*a2 != *v9)
  {
    v13 = 0;
    v14 = 1;
    while (v10 != -4096)
    {
      if (v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = v10 == -8192;
      }

      if (v15)
      {
        v13 = v9;
      }

      v16 = v8 + v14++;
      v8 = v16 & v7;
      v9 = (v6 + 16 * (v16 & v7));
      v10 = *v9;
      if (*a2 == *v9)
      {
        goto LABEL_3;
      }
    }

    if (v13)
    {
      v9 = v13;
    }

LABEL_5:
    v20 = v9;
    v12 = *(result + 8);
    if (4 * v12 + 4 >= 3 * v5)
    {
      v5 *= 2;
    }

    else if (v5 + ~v12 - *(result + 12) > v5 >> 3)
    {
      *(result + 8) = v12 + 1;
      if (*v9 == -4096)
      {
LABEL_9:
        *v9 = *a2;
        v9[1] = *a3;
        v6 = *result;
        v5 = *(result + 16);
        v11 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 12);
      goto LABEL_9;
    }

    v17 = result;
    v18 = a4;
    v19 = a3;
    llvm::DenseMap<mlir::Region *,std::pair<unsigned int,unsigned int>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,std::pair<unsigned int,unsigned int>>>::grow(result, v5);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>,mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<GPU::ANEHelper::CompiledProduct>>>::LookupBucketFor<mlir::Operation *>(v17, a2, &v20);
    a3 = v19;
    result = v17;
    a4 = v18;
    v9 = v20;
    ++*(v17 + 8);
    if (*v9 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v11 = 0;
LABEL_10:
  *a4 = v9;
  *(a4 + 8) = v6 + 16 * v5;
  *(a4 + 16) = v11;
  return result;
}

void *llvm::detail::DenseSetImpl<llvm::StringRef,llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::DenseMapInfo<llvm::StringRef,void>>::DenseSetImpl<llvm::StringRef const*>(void *a1, void *a2, void *a3)
{
  v4 = (*a3 - *a2) >> 4;
  v5 = 1 << -__clz(v4 - 1);
  if (v4 <= 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  if (v6 < 5 || (v7 = -__clz(v6 - 1) & 0x1F, v7 <= 2))
  {
    *a1 = 1;
    v12 = a1 + 1;
    v14 = a1 + 9;
    v15 = 48;
    v16 = "N4mlir23RegisteredOperationName5ModelINS_5arith11CeilDivSIOpEEE" + 37;
  }

  else
  {
    v8 = a2;
    v9 = a3;
    v10 = (1 << v7);
    *a1 &= ~1u;
    buffer = llvm::allocate_buffer(16 * v10, 8uLL);
    a1[1] = buffer;
    v12 = a1 + 1;
    a1[2] = v10;
    v13 = *a1;
    *a1 = *a1 & 1;
    if (v13)
    {
      a3 = v9;
      a2 = v8;
      v14 = a1 + 9;
      v15 = 48;
      v16 = "INS_5arith11CeilDivSIOpEEE";
    }

    else
    {
      v14 = &buffer[v10];
      v12 = buffer;
      a3 = v9;
      a2 = v8;
      v15 = 16 * v10 - 16;
      v16 = "N4mlir23RegisteredOperationName5ModelINS_5arith11CeilDivSIOpEEE" + 37;
      if (v15 < 0x30)
      {
        v17 = buffer;
LABEL_15:
        v22 = *(v16 + 183);
        do
        {
          *v17++ = v22;
        }

        while (v17 != v14);
        goto LABEL_17;
      }
    }
  }

  v18 = (v15 >> 4) + 1;
  v17 = &v12[2 * (v18 & 0x1FFFFFFFFFFFFFFCLL)];
  v19 = v12 + 4;
  v20 = *(v16 + 183);
  v21 = v18 & 0x1FFFFFFFFFFFFFFCLL;
  do
  {
    *(v19 - 2) = v20;
    *(v19 - 1) = v20;
    *v19 = v20;
    v19[1] = v20;
    v19 += 4;
    v21 -= 4;
  }

  while (v21);
  if (v18 != (v18 & 0x1FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_15;
  }

LABEL_17:
  v23 = *a2;
  for (i = *a3; v23 != i; ++v23)
  {
    llvm::DenseMapBase<llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1, v23, &v26);
  }

  return a1;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v17 = 0;
  result = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::LookupBucketFor<llvm::StringRef>(a1, a2, &v17);
  v7 = v17;
  if (result)
  {
    v8 = a1 + 8;
    if (*a1)
    {
      v9 = 4;
    }

    else
    {
      v8 = *(a1 + 8);
      v9 = *(a1 + 16);
    }

    v13 = 0;
    v14 = v8 + 16 * v9;
    goto LABEL_17;
  }

  v18 = v17;
  v10 = *a1;
  v11 = *a1 >> 1;
  if (*a1)
  {
    v12 = 4;
  }

  else
  {
    v12 = *(a1 + 16);
  }

  if (4 * v11 + 4 >= 3 * v12)
  {
    v12 *= 2;
    goto LABEL_19;
  }

  if (v12 + ~v11 - *(a1 + 4) <= v12 >> 3)
  {
LABEL_19:
    llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::grow(a1, v12);
    result = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::LookupBucketFor<llvm::StringRef>(a1, a2, &v18);
    v10 = *a1;
    v7 = v18;
  }

  *a1 = v10 + 2;
  if (*v7 != -1)
  {
    --*(a1 + 4);
  }

  *v7 = *a2;
  v15 = a1 + 8;
  if (*a1)
  {
    v16 = 4;
  }

  else
  {
    v15 = *(a1 + 8);
    v16 = *(a1 + 16);
  }

  v14 = v15 + 16 * v16;
  v13 = 1;
LABEL_17:
  *a3 = v7;
  *(a3 + 8) = v14;
  *(a3 + 16) = v13;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::LookupBucketFor<llvm::StringRef>(uint64_t a1, uint64_t a2, char ***a3)
{
  v5 = a1 + 8;
  if (*a1)
  {
    HashValue = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(*a2, *(a2 + 8));
    v8 = 3;
    v9 = *a2;
    v10 = *(a2 + 8);
    if (!v10)
    {
      goto LABEL_4;
    }

LABEL_11:
    if (v9 != -2)
    {
      v21 = 0;
      v23 = 1;
      v24 = HashValue & v8;
      v13 = (v5 + 16 * (HashValue & v8));
      v25 = *v13;
      if (*v13 != -2)
      {
        goto LABEL_33;
      }

      while (1)
      {
        do
        {
          if (v21)
          {
            v26 = 0;
          }

          else
          {
            v26 = v25 + 2 == 0;
          }

          if (v26)
          {
            v21 = v13;
          }

          v27 = v23 + v24;
          ++v23;
          v24 = v27 & v8;
          v13 = (v5 + 16 * (v27 & v8));
          v25 = *v13;
        }

        while (*v13 == -2);
LABEL_33:
        if (v25 == -1)
        {
          goto LABEL_20;
        }

        if (v10 == v13[1] && !memcmp(v9, v25, v10))
        {
          goto LABEL_46;
        }
      }
    }

    v16 = 1;
    v17 = HashValue & v8;
    v13 = (v5 + 16 * (HashValue & v8));
    v18 = *v13;
    if (*v13 != -2)
    {
      while (v18 != -1)
      {
        if (v10 != v13[1] || memcmp(0xFFFFFFFFFFFFFFFELL, v18, v10))
        {
          v19 = v16 + v17;
          ++v16;
          v17 = v19 & v8;
          v13 = (v5 + 16 * (v19 & v8));
          v18 = *v13;
          if (*v13 != -2)
          {
            continue;
          }
        }

        goto LABEL_46;
      }

      goto LABEL_19;
    }

LABEL_46:
    result = 1;
    goto LABEL_47;
  }

  v6 = *(a1 + 16);
  if (!v6)
  {
    v13 = 0;
    result = 0;
    goto LABEL_47;
  }

  v5 = *(a1 + 8);
  HashValue = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(*a2, *(a2 + 8));
  v8 = v6 - 1;
  v9 = *a2;
  v10 = *(a2 + 8);
  if (v10)
  {
    goto LABEL_11;
  }

LABEL_4:
  if (v9 != -2)
  {
    v21 = 0;
    v28 = 1;
    v29 = HashValue & v8;
    v13 = (v5 + 16 * (HashValue & v8));
    v30 = *v13;
    if (*v13 != -2)
    {
      goto LABEL_44;
    }

    while (1)
    {
      do
      {
        if (v21)
        {
          v31 = 0;
        }

        else
        {
          v31 = v30 + 2 == 0;
        }

        if (v31)
        {
          v21 = v13;
        }

        v32 = v28 + v29;
        ++v28;
        v29 = v32 & v8;
        v13 = (v5 + 16 * (v32 & v8));
        v30 = *v13;
      }

      while (*v13 == -2);
LABEL_44:
      if (v30 == -1)
      {
        goto LABEL_20;
      }

      if (!v13[1])
      {
        goto LABEL_46;
      }
    }
  }

  v11 = 1;
  v12 = HashValue & v8;
  v13 = (v5 + 16 * (HashValue & v8));
  v14 = *v13;
  if (*v13 == -2)
  {
    goto LABEL_46;
  }

  while (v14 != -1)
  {
    if (v13[1])
    {
      v15 = v11 + v12;
      ++v11;
      v12 = v15 & v8;
      v13 = (v5 + 16 * (v15 & v8));
      v14 = *v13;
      if (*v13 != -2)
      {
        continue;
      }
    }

    goto LABEL_46;
  }

LABEL_19:
  v21 = 0;
LABEL_20:
  if (v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = v13;
  }

  if (v9 == -1)
  {
    result = 1;
  }

  else
  {
    v13 = v22;
    result = 0;
  }

LABEL_47:
  *a3 = v13;
  return result;
}

uint64_t llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::grow(uint64_t result, unsigned int a2)
{
  v2 = result;
  v38[7] = *MEMORY[0x1E69E9840];
  if (a2 >= 5)
  {
    v3 = (a2 - 1) | ((a2 - 1) >> 1);
    v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
    v5 = ((v4 | (v4 >> 8)) >> 16) | v4 | (v4 >> 8);
    if ((v5 + 1) > 0x40)
    {
      a2 = v5 + 1;
    }

    else
    {
      a2 = 64;
    }
  }

  if ((*result & 1) == 0)
  {
    v7 = (result + 8);
    v6 = *(result + 8);
    v8 = *(result + 16);
    if (a2 > 4)
    {
      v25 = a2;
      buffer = llvm::allocate_buffer(16 * a2, 8uLL);
      *(v2 + 8) = buffer;
      *(v2 + 16) = v25;
      v27 = *v2;
      v9 = (v6 + 16 * v8);
      *v2 = *v2 & 1;
      if (v27)
      {
        v10 = (v2 + 72);
        v11 = 48;
      }

      else
      {
        v10 = &buffer[v25];
        v7 = buffer;
        v11 = 16 * v25 - 16;
        if (v11 < 0x30)
        {
          v29 = buffer;
          goto LABEL_41;
        }
      }
    }

    else
    {
      v9 = (v6 + 16 * v8);
      *result = 1;
      v10 = (result + 72);
      v11 = 48;
    }

    v28 = (v11 >> 4) + 1;
    v29 = &v7[v28 & 0x1FFFFFFFFFFFFFFCLL];
    v30 = v7 + 2;
    v31 = v28 & 0x1FFFFFFFFFFFFFFCLL;
    do
    {
      *(v30 - 2) = xmmword_1E096FB70;
      *(v30 - 1) = xmmword_1E096FB70;
      *v30 = xmmword_1E096FB70;
      v30[1] = xmmword_1E096FB70;
      v30 += 4;
      v31 -= 4;
    }

    while (v31);
    if (v28 == (v28 & 0x1FFFFFFFFFFFFFFCLL))
    {
LABEL_42:
      if (v8)
      {
        v35 = v6;
        do
        {
          if (*v35 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            *&v37 = 0;
            llvm::DenseMapBase<llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::LookupBucketFor<llvm::StringRef>(v2, v35, &v37);
            *v37 = *v35;
            *v2 += 2;
          }

          v35 = (v35 + 16);
        }

        while (v35 != v9);
      }

      llvm::deallocate_buffer(v6, (16 * v8));
    }

    do
    {
LABEL_41:
      *v29++ = xmmword_1E096FB70;
    }

    while (v29 != v10);
    goto LABEL_42;
  }

  v12 = (result + 8);
  v13 = &v37;
  if (*(result + 8) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v37 = *v12;
    v13 = v38;
    v14 = (result + 24);
    if (*(result + 24) > 0xFFFFFFFFFFFFFFFDLL)
    {
LABEL_10:
      v15 = (result + 40);
      if (*(result + 40) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_11;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v14 = (result + 24);
    if (*(result + 24) > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_10;
    }
  }

  *v13++ = *v14;
  v15 = (result + 40);
  if (*(result + 40) > 0xFFFFFFFFFFFFFFFDLL)
  {
LABEL_11:
    v16 = (result + 56);
    if (*(result + 56) > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  *v13++ = *v15;
  v16 = (result + 56);
  if (*(result + 56) > 0xFFFFFFFFFFFFFFFDLL)
  {
LABEL_12:
    v17 = *result;
    if (a2 < 5)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  *v13++ = *v16;
  v17 = *result;
  if (a2 < 5)
  {
LABEL_13:
    *result = v17 & 1;
    if ((v17 & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_31:
    v19 = (v2 + 72);
    v20 = 48;
    goto LABEL_16;
  }

LABEL_30:
  *result = v17 & 0xFFFFFFFE;
  v32 = a2;
  result = llvm::allocate_buffer(16 * a2, 8uLL);
  *(v2 + 8) = result;
  *(v2 + 16) = v32;
  v33 = *v2;
  *v2 = *v2 & 1;
  if (v33)
  {
    goto LABEL_31;
  }

LABEL_14:
  v18 = *(v2 + 16);
  if (!v18)
  {
    goto LABEL_34;
  }

  v12 = *(v2 + 8);
  v19 = &v12[v18];
  v20 = v19 - v12 - 16;
  if (v20 < 0x30)
  {
    v22 = *(v2 + 8);
    do
    {
LABEL_33:
      *v22 = xmmword_1E096FB70;
      v22 += 16;
    }

    while (v22 != v19);
    goto LABEL_34;
  }

LABEL_16:
  v21 = (v20 >> 4) + 1;
  v22 = &v12[v21 & 0x1FFFFFFFFFFFFFFCLL];
  v23 = v12 + 2;
  v24 = v21 & 0x1FFFFFFFFFFFFFFCLL;
  do
  {
    *(v23 - 2) = xmmword_1E096FB70;
    *(v23 - 1) = xmmword_1E096FB70;
    *v23 = xmmword_1E096FB70;
    v23[1] = xmmword_1E096FB70;
    v23 += 4;
    v24 -= 4;
  }

  while (v24);
  if (v21 != (v21 & 0x1FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_33;
  }

LABEL_34:
  if (&v37 != v13)
  {
    v34 = &v37;
    do
    {
      if (*v34 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v36 = 0;
        result = llvm::DenseMapBase<llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::LookupBucketFor<llvm::StringRef>(v2, v34, &v36);
        *v36 = *v34;
        *v2 += 2;
      }

      ++v34;
    }

    while (v34 != v13);
  }

  return result;
}

const void **llvm::DenseMapBase<llvm::SmallDenseMap<llvm::StringRef,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>,llvm::StringRef,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseSetPair<llvm::StringRef>>::doFind<llvm::StringRef>(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 8;
  if (*a1)
  {
    HashValue = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(*a2, *(a2 + 8));
    v6 = 3;
    v7 = *a2;
    v8 = *(a2 + 8);
    if (!v8)
    {
LABEL_4:
      v9 = 1;
      if (v7 == -2)
      {
        v10 = HashValue & v6;
        v11 = (v3 + 16 * (HashValue & v6));
        v12 = *v11;
        if (*v11 == -2)
        {
          return v11;
        }

        while (v12 != -1)
        {
          if (v11[1])
          {
            v13 = v9 + v10;
            ++v9;
            v10 = v13 & v6;
            v11 = (v3 + 16 * (v13 & v6));
            v12 = *v11;
            if (*v11 != -2)
            {
              continue;
            }
          }

          return v11;
        }

        goto LABEL_31;
      }

      while (1)
      {
        v11 = (v3 + 16 * (HashValue & v6));
        if (*v11 != -2)
        {
          if (*v11 == -1)
          {
            goto LABEL_31;
          }

          if (!v11[1])
          {
            return v11;
          }
        }

        HashValue = v9 + (HashValue & v6);
        ++v9;
      }
    }
  }

  else
  {
    v4 = *(a1 + 16);
    if (!v4)
    {
      return 0;
    }

    v3 = *(a1 + 8);
    HashValue = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(*a2, *(a2 + 8));
    v6 = v4 - 1;
    v7 = *a2;
    v8 = *(a2 + 8);
    if (!v8)
    {
      goto LABEL_4;
    }
  }

  v14 = 1;
  if (v7 == -2)
  {
    v15 = HashValue & v6;
    v11 = (v3 + 16 * (HashValue & v6));
    v16 = *v11;
    if (*v11 == -2)
    {
      return v11;
    }

    while (v16 != -1)
    {
      if (v8 != v11[1] || memcmp(0xFFFFFFFFFFFFFFFELL, v16, v8))
      {
        v17 = v14 + v15;
        ++v14;
        v15 = v17 & v6;
        v11 = (v3 + 16 * (v17 & v6));
        v16 = *v11;
        if (*v11 != -2)
        {
          continue;
        }
      }

      return v11;
    }

LABEL_31:
    if (v7 != -1)
    {
      return 0;
    }

    return v11;
  }

  while (1)
  {
    v19 = HashValue & v6;
    v11 = (v3 + 16 * (HashValue & v6));
    v20 = *v11;
    if (*v11 != -2)
    {
      if (v20 == -1)
      {
        goto LABEL_31;
      }

      if (v8 == v11[1] && !memcmp(v7, v20, v8))
      {
        return v11;
      }
    }

    HashValue = v14 + v19;
    ++v14;
  }
}

void llvm::toHex(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v19[2] = *MEMORY[0x1E69E9840];
  __src = v19;
  *__len = xmmword_1E0971D80;
  v5 = 2 * a2;
  if (2 * a2)
  {
    if (v5 >= 0x11)
    {
      v6 = a1;
      v7 = a2;
      v8 = a3;
      llvm::SmallVectorBase<unsigned long long>::grow_pod(&__src, v19, v5, 1);
      a3 = v8;
      a1 = v6;
      a2 = v7;
    }

    __len[0] = v5;
  }

  if (a2)
  {
    v9 = 0;
    if (a3)
    {
      v10 = 32;
    }

    else
    {
      v10 = 0;
    }

    do
    {
      v11 = *a1++;
      *(__src + v9) = llvm::hexdigit(unsigned int,BOOL)::LUT[v11 >> 4] | v10;
      *(__src + v9 + 1) = llvm::hexdigit(unsigned int,BOOL)::LUT[v11 & 0xF] | v10;
      v9 += 2;
      --a2;
    }

    while (a2);
    v12 = __len[0];
    if (__len[0] >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = __src;
  if (v12 >= 0x17)
  {
    if ((v12 | 7) == 0x17)
    {
      v15 = 25;
    }

    else
    {
      v15 = (v12 | 7) + 1;
    }

    v16 = operator new(v15);
    a4[1] = v12;
    a4[2] = v15 | 0x8000000000000000;
    *a4 = v16;
    a4 = v16;
  }

  else
  {
    *(a4 + 23) = v12;
    if (!v12)
    {
      *a4 = 0;
      v14 = __src;
      if (__src == v19)
      {
        return;
      }

      goto LABEL_14;
    }
  }

  memmove(a4, v13, v12);
  *(a4 + v12) = 0;
  v14 = __src;
  if (__src != v19)
  {
LABEL_14:
    free(v14);
  }
}

llvm::raw_ostream *anonymous namespace::OperationPrinter::printOptionalLocationSpecifier(llvm::raw_ostream *this, Location a2)
{
  if (*(this + 72))
  {
    v3 = *(this + 2);
    v4 = v3[4];
    if (v3[3] == v4)
    {
      v6 = this;
      var0 = a2.var0.var0;
      llvm::raw_ostream::write(v3, " ", 1uLL);
      a2.var0.var0 = var0;
      v5 = (v6 + 16);
    }

    else
    {
      *v4 = 32;
      ++v3[4];
      v5 = (this + 16);
    }

    return mlir::AsmPrinter::Impl::printLocation(v5, a2.var0, 1);
  }

  return this;
}

void *anonymous namespace::OperationPrinter::printNewline(_anonymous_namespace_::OperationPrinter *this)
{
  v2 = *(this + 2);
  ++*(this + 20);
  v3 = *(v2 + 4);
  if (v3 >= *(v2 + 3))
  {
    llvm::raw_ostream::write(v2, 10);
    v4 = *(this + 2);
    v5 = *(this + 38);
  }

  else
  {
    *(v2 + 4) = v3 + 1;
    *v3 = 10;
    v4 = *(this + 2);
    v5 = *(this + 38);
  }

  return llvm::raw_ostream::indent(v4, v5);
}

llvm::raw_ostream *anonymous namespace::OperationPrinter::printRegionArgument(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  (*(*a1 + 160))(a1);
  if (a5)
  {
    goto LABEL_10;
  }

  v11 = a1 + 16;
  v10 = *(a1 + 16);
  v12 = v10[4];
  if (v10[3] - v12 <= 1uLL)
  {
    llvm::raw_ostream::write(v10, ": ", 2uLL);
    v13 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v13)
    {
      goto LABEL_4;
    }

LABEL_7:
    v14 = *v11;
    v15 = *(*v11 + 32);
    if (*(*v11 + 24) - v15 > 0xCuLL)
    {
      qmemcpy(v15, "<<NULL TYPE>>", 13);
      v14[4] += 13;
    }

    else
    {
      llvm::raw_ostream::write(v14, "<<NULL TYPE>>", 0xDuLL);
    }

    goto LABEL_10;
  }

  *v12 = 8250;
  v10[4] += 2;
  v13 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v13)
  {
    goto LABEL_7;
  }

LABEL_4:
  if ((mlir::AsmPrinter::Impl::printAlias(a1 + 16, v13) & 1) == 0)
  {
    mlir::AsmPrinter::Impl::printTypeImpl((a1 + 16), v13);
  }

LABEL_10:
  result = (*(*a1 + 192))(a1, a3, a4, 0, 0);
  if ((*(a1 + 72) & 1) == 0)
  {
    return result;
  }

  v17 = *(a2 + 32);
  v18 = *(a1 + 16);
  v19 = v18[4];
  if (v18[3] == v19)
  {
    llvm::raw_ostream::write(v18, " ", 1uLL);
    if ((*(a1 + 72) & 2) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    *v19 = 32;
    ++v18[4];
    if ((*(a1 + 72) & 2) == 0)
    {
LABEL_13:
      v20 = *(a1 + 16);
      v21 = v20[4];
      if (v20[3] - v21 > 3uLL)
      {
        *v21 = 677605228;
        v20[4] += 4;
      }

      else
      {
        llvm::raw_ostream::write(v20, "loc(", 4uLL);
      }

      v23.var0 = v17;
      mlir::AsmPrinter::Impl::printLocationInternal((a1 + 16), v23, 0, 1);
      result = *(a1 + 16);
      v24 = *(result + 4);
      if (v24 >= *(result + 3))
      {

        return llvm::raw_ostream::write(result, 41);
      }

      else
      {
        *(result + 4) = v24 + 1;
        *v24 = 41;
      }

      return result;
    }
  }

  v22.var0 = v17;

  return mlir::AsmPrinter::Impl::printLocationInternal((a1 + 16), v22, 1, 1);
}

void *anonymous namespace::OperationPrinter::printSuccessor(_anonymous_namespace_::OperationPrinter *this, mlir::Block *a2)
{
  result = *(this + 2);
  v4 = *(this + 3);
  v5 = *(v4 + 392);
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = *(v4 + 376);
  v7 = (v5 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v8 = *(v6 + 32 * v7);
  if (v8 != a2)
  {
    v14 = 1;
    while (v8 != -4096)
    {
      v15 = v7 + v14++;
      v7 = v15 & (v5 - 1);
      v8 = *(v6 + 32 * v7);
      if (v8 == a2)
      {
        goto LABEL_3;
      }
    }

LABEL_4:
    v10 = result + 4;
    v9 = result[4];
    v11 = "INVALIDBLOCK";
    v12 = 12;
    if (result[3] - v9 > 0xBuLL)
    {
LABEL_11:
      result = memcpy(v9, v11, v12);
      *v10 += v12;
      return result;
    }

    goto LABEL_7;
  }

LABEL_3:
  if (v7 == v5)
  {
    goto LABEL_4;
  }

  v13 = v6 + 32 * v7;
  v11 = *(v13 + 16);
  v12 = *(v13 + 24);
  v10 = result + 4;
  v9 = result[4];
  if (v12 <= result[3] - v9)
  {
    if (!v12)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_7:

  return llvm::raw_ostream::write(result, v11, v12);
}

llvm::raw_ostream *anonymous namespace::OperationPrinter::printSuccessorAndUseList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = *MEMORY[0x1E69E9840];
  result = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = (a1 + 16);
  v11 = *(v9 + 392);
  if (v11)
  {
    v12 = *(v9 + 376);
    v13 = (v11 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v14 = *(v12 + 32 * v13);
    if (v14 == a2)
    {
LABEL_3:
      if (v13 != v11)
      {
        v19 = v12 + 32 * v13;
        v17 = *(v19 + 16);
        v18 = *(v19 + 24);
        v16 = (result + 32);
        v15 = *(result + 4);
        if (v18 <= *(result + 3) - v15)
        {
          if (!v18)
          {
            goto LABEL_10;
          }

          goto LABEL_9;
        }

LABEL_7:
        result = llvm::raw_ostream::write(result, v17, v18);
        goto LABEL_10;
      }
    }

    else
    {
      v38 = 1;
      while (v14 != -4096)
      {
        v39 = v13 + v38++;
        v13 = v39 & (v11 - 1);
        v14 = *(v12 + 32 * v13);
        if (v14 == a2)
        {
          goto LABEL_3;
        }
      }
    }
  }

  v16 = (result + 32);
  v15 = *(result + 4);
  v17 = "INVALIDBLOCK";
  v18 = 12;
  if (*(result + 3) - v15 <= 0xBuLL)
  {
    goto LABEL_7;
  }

LABEL_9:
  result = memcpy(v15, v17, v18);
  *v16 += v18;
LABEL_10:
  if (!a4)
  {
    return result;
  }

  v20 = *v10;
  v21 = *(*v10 + 4);
  if (v21 >= *(*v10 + 3))
  {
    llvm::raw_ostream::write(v20, 40);
  }

  else
  {
    *(v20 + 4) = v21 + 1;
    *v21 = 40;
  }

  v22 = *(a1 + 16);
  v40 = a3;
  v41 = 0;
  v23 = mlir::ValueRange::dereference_iterator(&v40, 0);
  if (++v41 != a4)
  {
    do
    {
      v27 = v22[4];
      if (v22[3] - v27 <= 1uLL)
      {
        llvm::raw_ostream::write(v22, ", ", 2uLL);
      }

      else
      {
        *v27 = 8236;
        v22[4] += 2;
      }

      v26 = mlir::ValueRange::dereference_iterator(&v40, v41);
      ++v41;
    }

    while (v41 != a4);
  }

  v24 = *v10;
  v25 = *(*v10 + 4);
  if ((*(*v10 + 3) - v25) > 2)
  {
    *(v25 + 2) = 32;
    *v25 = 14880;
    *(v24 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v24, " : ", 3uLL);
  }

  v28 = *v10;
  v40 = a3;
  v41 = 0;
  v29 = *(mlir::ValueRange::dereference_iterator(&v40, 0) + 8);
  v30 = (v29 & 0xFFFFFFFFFFFFFFF8);
  if ((v29 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    if ((mlir::AsmPrinter::Impl::printAlias(v10, v29 & 0xFFFFFFFFFFFFFFF8) & 1) == 0)
    {
      mlir::AsmPrinter::Impl::printTypeImpl(v10, v30);
      if (++v41 != a4)
      {
        goto LABEL_38;
      }

      goto LABEL_30;
    }

LABEL_29:
    if (++v41 != a4)
    {
      goto LABEL_38;
    }

    goto LABEL_30;
  }

  v31 = *v10;
  v32 = *(*v10 + 4);
  if (*(*v10 + 3) - v32 <= 0xCuLL)
  {
    llvm::raw_ostream::write(v31, "<<NULL TYPE>>", 0xDuLL);
    goto LABEL_29;
  }

  qmemcpy(v32, "<<NULL TYPE>>", 13);
  *(v31 + 4) += 13;
  if (++v41 != a4)
  {
    do
    {
LABEL_38:
      v34 = *(v28 + 4);
      if (*(v28 + 3) - v34 > 1uLL)
      {
        *v34 = 8236;
        *(v28 + 4) += 2;
        v35 = (*(mlir::ValueRange::dereference_iterator(&v40, v41) + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v35)
        {
LABEL_43:
          if ((mlir::AsmPrinter::Impl::printAlias(v10, v35) & 1) == 0)
          {
            mlir::AsmPrinter::Impl::printTypeImpl(v10, v35);
          }

          goto LABEL_37;
        }
      }

      else
      {
        llvm::raw_ostream::write(v28, ", ", 2uLL);
        v35 = (*(mlir::ValueRange::dereference_iterator(&v40, v41) + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v35)
        {
          goto LABEL_43;
        }
      }

      v36 = *v10;
      v37 = *(*v10 + 4);
      if (*(*v10 + 3) - v37 > 0xCuLL)
      {
        qmemcpy(v37, "<<NULL TYPE>>", 13);
        *(v36 + 4) += 13;
      }

      else
      {
        llvm::raw_ostream::write(v36, "<<NULL TYPE>>", 0xDuLL);
      }

LABEL_37:
      ++v41;
    }

    while (v41 != a4);
  }

LABEL_30:
  result = *v10;
  v33 = *(*v10 + 4);
  if (v33 >= *(*v10 + 3))
  {
    return llvm::raw_ostream::write(result, 41);
  }

  *(result + 4) = v33 + 1;
  *v33 = 41;
  return result;
}

uint64_t anonymous namespace::OperationPrinter::printCustomOrGenericOp(_anonymous_namespace_::OperationPrinter *this, mlir::Operation *a2)
{
  v85 = *MEMORY[0x1E69E9840];
  if ((*(this + 72) & 4) != 0)
  {
    return (*(*this + 216))(this, a2, 1);
  }

  v3 = *(a2 + 6);
  if (*(v3 + 16) != &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v4 = *(*v3 + 56);

    return v4();
  }

  v80[0] = *(v3 + 8);
  v6 = a2;
  Values = mlir::SparseElementsAttr::getValues(v80);
  a2 = v6;
  if (!Values)
  {
    return (*(*this + 216))(this, a2, 1);
  }

  (*(*Values + 72))(v83);
  if (v84 < 8)
  {
    a2 = v6;
    return (*(*this + 216))(this, a2, 1);
  }

  v80[0] = *(*(v6 + 6) + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(v80);
  if (v9)
  {
    v10 = AttrData;
    v11 = v9;
    if (v9 < 8)
    {
      v12 = 0;
      v13 = 0;
      goto LABEL_23;
    }

    if (v9 >= 0x20)
    {
      v14 = 0uLL;
      v15.i64[0] = 0x2E2E2E2E2E2E2E2ELL;
      v15.i64[1] = 0x2E2E2E2E2E2E2E2ELL;
      v16 = vdupq_n_s64(1uLL);
      v12 = v9 & 0xFFFFFFFFFFFFFFE0;
      v17 = 0uLL;
      v18 = (AttrData + 16);
      v19 = 0uLL;
      v20 = v9 & 0xFFFFFFFFFFFFFFE0;
      v21 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
      v24 = 0uLL;
      v25 = 0uLL;
      v26 = 0uLL;
      v27 = 0uLL;
      v28 = 0uLL;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      v32 = 0uLL;
      v33 = 0uLL;
      do
      {
        v34 = vceqq_s8(v18[-1], v15);
        v35 = vmovl_u8(*v34.i8);
        v36 = vmovl_high_u8(v34);
        v37 = vmovl_high_u16(v36);
        v38.i64[0] = v37.u32[2];
        v38.i64[1] = v37.u32[3];
        v25 = vaddq_s64(v25, vandq_s8(v38, v16));
        v39 = vmovl_high_u16(v35);
        v40 = vmovl_u16(*v36.i8);
        v38.i64[0] = v37.u32[0];
        v38.i64[1] = v37.u32[1];
        v24 = vaddq_s64(v24, vandq_s8(v38, v16));
        v38.i64[0] = v40.u32[2];
        v38.i64[1] = v40.u32[3];
        v23 = vaddq_s64(v23, vandq_s8(v38, v16));
        v38.i64[0] = v39.u32[2];
        v38.i64[1] = v39.u32[3];
        v21 = vaddq_s64(v21, vandq_s8(v38, v16));
        v41 = vmovl_u16(*v35.i8);
        v38.i64[0] = v40.u32[0];
        v38.i64[1] = v40.u32[1];
        v22 = vaddq_s64(v22, vandq_s8(v38, v16));
        v38.i64[0] = v41.u32[0];
        v38.i64[1] = v41.u32[1];
        v42 = vandq_s8(v38, v16);
        v38.i64[0] = v41.u32[2];
        v38.i64[1] = v41.u32[3];
        v43 = vandq_s8(v38, v16);
        v38.i64[0] = v39.u32[0];
        v38.i64[1] = v39.u32[1];
        v44 = vceqq_s8(*v18, v15);
        v19 = vaddq_s64(v19, vandq_s8(v38, v16));
        v45 = vmovl_u8(*v44.i8);
        v46 = vmovl_high_u8(v44);
        v17 = vaddq_s64(v17, v43);
        v47 = vmovl_high_u16(v46);
        v14 = vaddq_s64(v14, v42);
        v38.i64[0] = v47.u32[2];
        v38.i64[1] = v47.u32[3];
        v33 = vaddq_s64(v33, vandq_s8(v38, v16));
        v48 = vmovl_high_u16(v45);
        v49 = vmovl_u16(*v46.i8);
        v38.i64[0] = v47.u32[0];
        v38.i64[1] = v47.u32[1];
        v32 = vaddq_s64(v32, vandq_s8(v38, v16));
        v38.i64[0] = v49.u32[2];
        v38.i64[1] = v49.u32[3];
        v31 = vaddq_s64(v31, vandq_s8(v38, v16));
        v38.i64[0] = v48.u32[2];
        v38.i64[1] = v48.u32[3];
        v29 = vaddq_s64(v29, vandq_s8(v38, v16));
        v38.i64[0] = v49.u32[0];
        v38.i64[1] = v49.u32[1];
        v30 = vaddq_s64(v30, vandq_s8(v38, v16));
        v50 = vmovl_u16(*v45.i8);
        v38.i64[0] = v48.u32[0];
        v38.i64[1] = v48.u32[1];
        v28 = vaddq_s64(v28, vandq_s8(v38, v16));
        v38.i64[0] = v50.u32[2];
        v38.i64[1] = v50.u32[3];
        v27 = vaddq_s64(v27, vandq_s8(v38, v16));
        v38.i64[0] = v50.u32[0];
        v38.i64[1] = v50.u32[1];
        v26 = vaddq_s64(v26, vandq_s8(v38, v16));
        v18 += 2;
        v20 -= 32;
      }

      while (v20);
      v13 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v26, v14), vaddq_s64(v30, v22)), vaddq_s64(vaddq_s64(v28, v19), vaddq_s64(v32, v24))), vaddq_s64(vaddq_s64(vaddq_s64(v27, v17), vaddq_s64(v31, v23)), vaddq_s64(vaddq_s64(v29, v21), vaddq_s64(v33, v25)))));
      if (v9 == v12)
      {
        goto LABEL_27;
      }

      if ((v9 & 0x18) == 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v13 = 0;
      v12 = 0;
    }

    v51 = v12;
    v12 = v9 & 0xFFFFFFFFFFFFFFF8;
    v52 = 0uLL;
    v53 = v13;
    v54 = (AttrData + v51);
    v55 = v51 - (v9 & 0xFFFFFFFFFFFFFFF8);
    v56 = vdupq_n_s64(1uLL);
    v57 = 0uLL;
    v58 = 0uLL;
    do
    {
      v59 = *v54++;
      v60 = vmovl_u8(vceq_s8(v59, 0x2E2E2E2E2E2E2E2ELL));
      v61 = vmovl_u16(*v60.i8);
      v62.i64[0] = v61.u32[0];
      v62.i64[1] = v61.u32[1];
      v63 = vandq_s8(v62, v56);
      v62.i64[0] = v61.u32[2];
      v62.i64[1] = v61.u32[3];
      v64 = vandq_s8(v62, v56);
      v65 = vmovl_high_u16(v60);
      v62.i64[0] = v65.u32[0];
      v62.i64[1] = v65.u32[1];
      v66 = vandq_s8(v62, v56);
      v62.i64[0] = v65.u32[2];
      v62.i64[1] = v65.u32[3];
      v58 = vaddq_s64(v58, vandq_s8(v62, v56));
      v57 = vaddq_s64(v57, v66);
      v52 = vaddq_s64(v52, v64);
      v53 = vaddq_s64(v53, v63);
      v55 += 8;
    }

    while (v55);
    v13 = vaddvq_s64(vaddq_s64(vaddq_s64(v53, v57), vaddq_s64(v52, v58)));
    if (v9 != v12)
    {
LABEL_23:
      v67 = v9 - v12;
      v68 = (AttrData + v12);
      do
      {
        v69 = *v68++;
        if (v69 == 46)
        {
          ++v13;
        }

        --v67;
      }

      while (v67);
    }

LABEL_27:
    if (v13 == 1)
    {
      v70 = *(this + 11) + 16 * *(this + 24);
      v81 = 773;
      v80[0] = *(v70 - 16);
      v80[1] = *(v70 - 8);
      v80[2] = ".";
      llvm::Twine::str(v80, &v82);
      v71 = SHIBYTE(v82.__r_.__value_.__r.__words[2]);
      v72 = v82.__r_.__value_.__r.__words[0];
      if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v73 = &v82;
      }

      else
      {
        v73 = v82.__r_.__value_.__r.__words[0];
      }

      if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = SHIBYTE(v82.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v82.__r_.__value_.__l.__size_;
      }

      if (v11 >= size && (!size || !memcmp(v10, v73, size)))
      {
        v10 += size;
        v11 -= size;
      }

      if (v71 < 0)
      {
        operator delete(v72);
      }
    }

    v75 = *(this + 2);
    v76 = *(v75 + 32);
    if (v11 <= *(v75 + 24) - v76)
    {
      if (v11)
      {
        memcpy(v76, v10, v11);
        *(v75 + 32) += v11;
      }
    }

    else
    {
      llvm::raw_ostream::write(*(this + 2), v10, v11);
    }
  }

  if ((v84 & 2) != 0)
  {
    v77 = v83;
  }

  else
  {
    v77 = v83[0];
  }

  result = (*(v84 & 0xFFFFFFFFFFFFFFF8))(v77, v6, this);
  v78 = v84;
  if (v84 >= 8)
  {
    if ((v84 & 4) != 0)
    {
      if ((v84 & 2) != 0)
      {
        v79 = v83;
      }

      else
      {
        v79 = v83[0];
      }

      result = (*((v84 & 0xFFFFFFFFFFFFFFF8) + 16))(v79);
    }

    if ((v78 & 2) == 0)
    {
      llvm::deallocate_buffer(v83[0], v83[1]);
    }
  }

  return result;
}

llvm::raw_ostream *anonymous namespace::OperationPrinter::printRegion(_anonymous_namespace_::OperationPrinter *this, mlir::Region *a2, int a3, char a4, int a5)
{
  v6 = *(this + 72);
  result = *(this + 2);
  v9 = *(result + 3);
  v8 = *(result + 4);
  if ((v6 & 8) == 0)
  {
    if (v9 == v8)
    {
      result = llvm::raw_ostream::write(result, "{", 1uLL);
      v14 = *(result + 4);
      ++*(this + 20);
      if (v14 < *(result + 3))
      {
LABEL_4:
        *(result + 4) = v14 + 1;
        *v14 = 10;
        if (*a2 == a2)
        {
          goto LABEL_5;
        }

        goto LABEL_13;
      }
    }

    else
    {
      *v8 = 123;
      v14 = (*(result + 4) + 1);
      *(result + 4) = v14;
      ++*(this + 20);
      if (v14 < *(result + 3))
      {
        goto LABEL_4;
      }
    }

    llvm::raw_ostream::write(result, 10);
    if (*a2 == a2)
    {
LABEL_5:
      result = llvm::raw_ostream::indent(*(this + 2), *(this + 38));
      v15 = *(result + 4);
      if (*(result + 3) != v15)
      {
LABEL_6:
        *v15 = 125;
        v16 = *(result + 4) + 1;
LABEL_10:
        *(result + 4) = v16;
        return result;
      }

      goto LABEL_38;
    }

LABEL_13:
    v19 = *(a2 + 2);
    if (mlir::OpInterface<mlir::OpAsmOpInterface,mlir::detail::OpAsmOpInterfaceInterfaceTraits>::getInterfaceFor(v19) && v19)
    {
      InterfaceFor = mlir::OpInterface<mlir::OpAsmOpInterface,mlir::detail::OpAsmOpInterfaceInterfaceTraits>::getInterfaceFor(v19);
      v21 = (*(InterfaceFor + 24))();
      v24 = (this + 96);
      v23 = *(this + 24);
      v25 = (this + 88);
      if (v23 >= *(this + 25))
      {
        v33 = v21;
        v34 = v22;
        llvm::SmallVectorBase<unsigned int>::grow_pod(this + 88, this + 104, v23 + 1, 16);
        v21 = v33;
        v22 = v34;
        LODWORD(v23) = *(this + 24);
      }
    }

    else
    {
      v24 = (this + 96);
      v23 = *(this + 24);
      v25 = (this + 88);
      if (v23 >= *(this + 25))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(this + 88, this + 104, v23 + 1, 16);
        v22 = 0;
        LODWORD(v23) = *(this + 24);
      }

      else
      {
        v22 = 0;
      }

      v21 = "";
    }

    v26 = (*v25 + 16 * v23);
    *v26 = v21;
    v26[1] = v22;
    ++*v24;
    v27 = *(a2 + 1);
    if (v27)
    {
      v28 = (v27 - 8);
    }

    else
    {
      v28 = 0;
    }

    if (a5)
    {
      v29 = *(v28 + 4);
      v30 = v29 == (v28 + 32);
      if (v29 == (v28 + 32) || !a3)
      {
LABEL_32:
        for (i = *(*(a2 + 1) + 8); i != a2; i = *(i + 1))
        {
          if (i)
          {
            v32 = (i - 8);
          }

          else
          {
            v32 = 0;
          }
        }

        --*(this + 24);
        result = llvm::raw_ostream::indent(*(this + 2), *(this + 38));
        v15 = *(result + 4);
        if (*(result + 3) != v15)
        {
          goto LABEL_6;
        }

LABEL_38:
        v17 = "}";
        v18 = 1;
        goto LABEL_39;
      }
    }

    else if (!a3)
    {
      v30 = 0;
      goto LABEL_32;
    }

    v30 = ((*(v28 + 7) - *(v28 + 6)) & 0x7FFFFFFF8) != 0;
    goto LABEL_32;
  }

  if ((v9 - v8) > 4)
  {
    v8[4] = 125;
    *v8 = 774778491;
    v16 = *(result + 4) + 5;
    goto LABEL_10;
  }

  v17 = "{...}";
  v18 = 5;
LABEL_39:

  return llvm::raw_ostream::write(result, v17, v18);
}

void anonymous namespace::OperationPrinter::shadowRegionArgs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32[2] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 24);
  v32[0] = a3;
  v32[1] = a4;
  v29 = v31;
  v30 = xmmword_1E0971D80;
  v5 = a4;
  if (a4)
  {
    v7 = 0;
    do
    {
      v13 = mlir::ValueRange::dereference_iterator(v32, v7);
      if (v13)
      {
        v14 = v13;
        v15 = *(a2 + 8);
        if (v15)
        {
          v16 = v15 - 8;
        }

        else
        {
          v16 = 0;
        }

        v17 = *(*(v16 + 48) + 8 * v7);
        v27 = &v29;
        v28 = v17;
        *&v30 = 0;
        v21 = 2;
        v25 = 0;
        v26 = 1;
        v23 = 0;
        v24 = 0;
        v22 = 0;
        v20 = &unk_1F5B3FBC0;
        llvm::raw_ostream::SetBufferAndMode(&v20, 0, 0, 0);
        v11 = 0;
        v18 = v27[1];
        if (v18)
        {
          v10 = *v27 + 1;
        }

        else
        {
          v10 = *v27;
        }

        v19 = v18 - (v18 != 0);
        if (v18 >= 2)
        {
          v4[64] += v19;
          v11 = v4[54];
          if (v11 && &v11[v19] <= v4[55])
          {
            v4[54] = &v11[v19];
          }

          else
          {
            v8 = v10;
            Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow((v4 + 54), v19, v19, 0);
            v10 = v8;
            v11 = Slow;
          }

          memmove(v11, v10, v19);
        }

        v12 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::StringRef,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::StringRef>>,mlir::Value,llvm::StringRef,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::StringRef>>::operator[]((v4 + 38), &v28);
        *v12 = v11;
        v12[1] = v19;
        llvm::raw_ostream::~raw_ostream(&v20);
      }

      ++v7;
    }

    while (v5 != v7);
    if (v29 != v31)
    {
      free(v29);
    }
  }
}

double anonymous namespace::OperationPrinter::printAffineMapOfSSAIds(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24[2] = *MEMORY[0x1E69E9840];
  v23 = a2;
  v24[0] = a3;
  v24[1] = a4;
  if (a2)
  {
    Value = mlir::AffineMapAttr::getValue(&v23);
    NumDims = mlir::AffineMap::getNumDims(&Value);
    v20[0] = &NumDims;
    v20[1] = a1;
    v20[2] = v24;
    Results = mlir::AffineMap::getResults(&Value);
    if (v6)
    {
      v8 = Results;
      v9 = v6;
      v12 = *(a1 + 16);
      v10 = (a1 + 16);
      v11 = v12;
      if (v9 != 1)
      {
        v13 = 8 * v9;
        v14 = v8 + 1;
        v15 = v13 - 8;
        do
        {
          v17 = v11[4];
          if (v11[3] - v17 > 1uLL)
          {
            *v17 = 8236;
            v11[4] += 2;
          }

          else
          {
            llvm::raw_ostream::write(v11, ", ", 2uLL);
          }

          v16 = *v14++;
          v15 -= 8;
        }

        while (v15);
      }
    }
  }

  else
  {
    v18 = *(a1 + 16);
    v19 = v18[4];
    if ((v18[3] - v19) > 0x12)
    {
      *(v19 + 15) = 1044271169;
      result = *"<<NULL AFFINE MAP>>";
      *v19 = *"<<NULL AFFINE MAP>>";
      v18[4] += 19;
    }

    else
    {

      llvm::raw_ostream::write(v18, "<<NULL AFFINE MAP>>", 0x13uLL);
    }
  }

  return result;
}

llvm::raw_ostream *anonymous namespace::OperationPrinter::printAffineExprOfSSAIds(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v9[0] = a3;
  v9[1] = a4;
  v8[0] = a5;
  v8[1] = a6;
  v7[0] = a1;
  v7[1] = v9;
  v7[2] = v8;
}

uint64_t mlir::OpInterface<mlir::OpAsmOpInterface,mlir::detail::OpAsmOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
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
      Values = v24;
    }

    return (*(*Values + 104))(Values, mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v5 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id;
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
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::ConstantOp>,mlir::OpTrait::OneResult<mlir::complex::ConstantOp>,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl<mlir::complex::ConstantOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::ConstantOp>,mlir::OpTrait::ZeroOperands<mlir::complex::ConstantOp>,mlir::OpTrait::OpInvariants<mlir::complex::ConstantOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::ConstantOp>,mlir::OpTrait::ConstantLike<mlir::complex::ConstantOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::ConstantOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::ConstantOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::ConstantOp>,mlir::OpAsmOpInterface::Trait<mlir::complex::ConstantOp>>();
    v3 = v21;
    a1 = v22;
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v5 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id;
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
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::ConstantOp>,mlir::OpTrait::OneResult<mlir::complex::ConstantOp>,mlir::OpTrait::OneTypedResult<mlir::ComplexType>::Impl<mlir::complex::ConstantOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::ConstantOp>,mlir::OpTrait::ZeroOperands<mlir::complex::ConstantOp>,mlir::OpTrait::OpInvariants<mlir::complex::ConstantOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::ConstantOp>,mlir::OpTrait::ConstantLike<mlir::complex::ConstantOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::ConstantOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::ConstantOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::ConstantOp>,mlir::OpAsmOpInterface::Trait<mlir::complex::ConstantOp>>();
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v18 = v23;
  }

  v19 = v4[252];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::StringRef,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::StringRef>>,mlir::Value,llvm::StringRef,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::StringRef>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = HIDWORD(*a2);
    v4 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v3);
    LODWORD(v3) = -348639895 * ((((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 32) >> 15) ^ (-348639895 * (v3 ^ (v4 >> 47) ^ v4)));
    v5 = v2 - 1;
    v6 = v3 & (v2 - 1);
    v7 = (*a1 + 24 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      return v7 + 1;
    }

    v12 = 0;
    v13 = 1;
    while (v8 != -4096)
    {
      if (v12)
      {
        v14 = 0;
      }

      else
      {
        v14 = v8 == -8192;
      }

      if (v14)
      {
        v12 = v7;
      }

      v15 = v6 + v13++;
      v6 = v15 & v5;
      v7 = (*a1 + 24 * (v15 & v5));
      v8 = *v7;
      if (*a2 == *v7)
      {
        return v7 + 1;
      }
    }

    if (v12)
    {
      v7 = v12;
    }
  }

  else
  {
    v7 = 0;
  }

  v18 = v7;
  v10 = *(a1 + 8);
  if (4 * v10 + 4 >= 3 * v2)
  {
    v16 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v10 - *(a1 + 12) <= v2 >> 3)
  {
    v16 = a2;
LABEL_24:
    v17 = a1;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::StringRef,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::StringRef>>,mlir::Value,llvm::StringRef,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::StringRef>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::StringRef,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::StringRef>>,mlir::Value,llvm::StringRef,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::StringRef>>::LookupBucketFor<mlir::Value>(v17, v16, &v18);
    a1 = v17;
    a2 = v16;
    v7 = v18;
    ++*(v17 + 8);
    if (*v7 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v10 + 1;
  if (*v7 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  v11 = *a2;
  v7[1] = 0;
  v7[2] = 0;
  *v7 = v11;
  return v7 + 1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::StringRef,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::StringRef>>,mlir::Value,llvm::StringRef,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::StringRef>>::LookupBucketFor<mlir::Value>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = HIDWORD(*a2);
    v6 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v5);
    LODWORD(v6) = -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6)));
    v7 = v3 - 1;
    v8 = v6 & (v3 - 1);
    v9 = (*a1 + 24 * v8);
    v10 = *v9;
    if (*a2 == *v9)
    {
      result = 1;
      *a3 = v9;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      result = 1;
      while (v10 != -4096)
      {
        if (v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = v10 == -8192;
        }

        if (v14)
        {
          v12 = v9;
        }

        v15 = v8 + v13++;
        v8 = v15 & v7;
        v9 = (v4 + 24 * (v15 & v7));
        v10 = *v9;
        if (*a2 == *v9)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v12)
      {
        v9 = v12;
      }

      *a3 = v9;
    }
  }

  else
  {
    v9 = 0;
    result = 0;
LABEL_5:
    *a3 = v9;
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::StringRef,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::StringRef>>,mlir::Value,llvm::StringRef,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::StringRef>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(24 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v10 = 3 * v3;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::StringRef,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::StringRef>>,mlir::Value,llvm::StringRef,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::StringRef>>::moveFromOldBuckets(a1, v4, &v4[v10]);

    llvm::deallocate_buffer(v4, (v10 * 8));
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 24 * v11 - 24;
    if (v12 < 0x18)
    {
      v13 = result;
LABEL_14:
      v17 = &result[3 * v11];
      do
      {
        *v13 = -4096;
        v13 += 3;
      }

      while (v13 != v17);
      return result;
    }

    v14 = v12 / 0x18 + 1;
    v13 = &result[3 * (v14 & 0x1FFFFFFFFFFFFFFELL)];
    v15 = result;
    v16 = v14 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *v15 = -4096;
      v15[3] = -4096;
      v15 += 6;
      v16 -= 2;
    }

    while (v16);
    if (v14 != (v14 & 0x1FFFFFFFFFFFFFFELL))
    {
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::StringRef,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::StringRef>>,mlir::Value,llvm::StringRef,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::StringRef>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  *(result + 8) = 0;
  v3 = *(result + 16);
  if (v3)
  {
    v4 = *result;
    v5 = 24 * v3 - 24;
    if (v5 < 0x18)
    {
      v6 = *result;
LABEL_7:
      v10 = &v4[3 * v3];
      do
      {
        *v6 = -4096;
        v6 += 3;
      }

      while (v6 != v10);
      goto LABEL_9;
    }

    v7 = v5 / 0x18 + 1;
    v6 = &v4[3 * (v7 & 0x1FFFFFFFFFFFFFFELL)];
    v8 = *result;
    v9 = v7 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *v8 = -4096;
      v8[3] = -4096;
      v8 += 6;
      v9 -= 2;
    }

    while (v9);
    if (v7 != (v7 & 0x1FFFFFFFFFFFFFFELL))
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  while (a2 != a3)
  {
    v12 = *a2;
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v13 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
      v14 = 0x9DDFEA08EB382D69 * (HIDWORD(v12) ^ (v13 >> 47) ^ v13);
      LODWORD(v13) = -348639895 * ((v14 >> 47) ^ v14);
      v15 = *(result + 16) - 1;
      v16 = v15 & v13;
      v11 = *result + 24 * v16;
      v17 = *v11;
      if (v12 != *v11)
      {
        v18 = 0;
        v19 = 1;
        while (v17 != -4096)
        {
          if (v18)
          {
            v20 = 0;
          }

          else
          {
            v20 = v17 == -8192;
          }

          if (v20)
          {
            v18 = v11;
          }

          v21 = v16 + v19++;
          v16 = v21 & v15;
          v11 = *result + 24 * (v21 & v15);
          v17 = *v11;
          if (v12 == *v11)
          {
            goto LABEL_13;
          }
        }

        if (v18)
        {
          v11 = v18;
        }
      }

LABEL_13:
      *v11 = v12;
      *(v11 + 8) = *(a2 + 1);
      ++*(result + 8);
    }

    a2 += 3;
  }

  return result;
}