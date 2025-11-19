uint64_t mlir::DialectBytecodeWriter::writeSparseArray<int>(uint64_t a1, int *a2, uint64_t a3)
{
  v4 = a2;
  if (a3)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      if (a2[v8])
      {
        v7 = v8;
        ++v6;
      }

      ++v8;
    }

    while (a3 != v8);
    if (v7 > 0x100)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  if (v6 > a3 >> 1)
  {
LABEL_15:
    result = (*(*a1 + 48))(a1, 2 * a3);
    if (a3)
    {
      v14 = 4 * a3;
      do
      {
        v15 = *v4++;
        result = (*(*a1 + 48))(a1, v15);
        v14 -= 4;
      }

      while (v14);
    }

    return result;
  }

  result = (*(*a1 + 48))(a1, (2 * v6) | 1);
  if (v6)
  {
    v10 = v7 + 1;
    v11 = 32 - __clz(v7);
    result = (*(*a1 + 48))(a1, v11);
    v12 = 0;
    do
    {
      v13 = v4[v12];
      if (v13)
      {
        result = (*(*a1 + 48))(a1, (v13 << v11) | v12);
      }

      ++v12;
    }

    while (v10 != v12);
  }

  return result;
}

uint64_t mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 2);
  v7 = *(a3 + 8);
  if (v6 == v7)
  {
    if (v6)
    {
      v9 = *a2;
      v10 = *a3;
      v11 = 32 * v6;
      while (((*(*a1 + 728))(a1, v9, *v10, a5) & 1) != 0)
      {
        v9 += 32;
        ++v10;
        v11 -= 32;
        if (!v11)
        {
          return 1;
        }
      }

      return 0;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v40 = 257;
    (*(*a1 + 24))(v44, a1, a4, v39);
    if (v44[0])
    {
      v41 = 5;
      v42 = v6;
      v13 = &v41;
      v14 = v45;
      if (v46 >= v47)
      {
        if (v45 <= &v41 && v45 + 24 * v46 > &v41)
        {
          v36 = &v41 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v14 = v45;
          v13 = (v45 + v36);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v13 = &v41;
          v14 = v45;
        }
      }

      v15 = &v14[24 * v46];
      v16 = *v13;
      *(v15 + 2) = *(v13 + 2);
      *v15 = v16;
      v17 = ++v46;
      if (v44[0])
      {
        v41 = 3;
        v42 = " operands present, but expected ";
        v43 = 32;
        v18 = &v41;
        v19 = v45;
        if (v17 >= v47)
        {
          if (v45 <= &v41 && v45 + 24 * v17 > &v41)
          {
            v37 = &v41 - v45;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v17 + 1, 24);
            v19 = v45;
            v18 = (v45 + v37);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v17 + 1, 24);
            v18 = &v41;
            v19 = v45;
          }
        }

        v20 = &v19[24 * v46];
        v21 = *v18;
        *(v20 + 2) = *(v18 + 2);
        *v20 = v21;
        v22 = ++v46;
        if (v44[0])
        {
          v41 = 5;
          v42 = v7;
          v23 = &v41;
          v24 = v45;
          if (v22 >= v47)
          {
            if (v45 <= &v41 && v45 + 24 * v22 > &v41)
            {
              v38 = &v41 - v45;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v22 + 1, 24);
              v24 = v45;
              v23 = (v45 + v38);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v22 + 1, 24);
              v23 = &v41;
              v24 = v45;
            }
          }

          v25 = &v24[24 * v46];
          v26 = *v23;
          *(v25 + 2) = *(v23 + 2);
          *v25 = v26;
          ++v46;
        }
      }
    }

    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v44);
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

      v27 = __p;
      if (__p)
      {
        v28 = v52;
        v29 = __p;
        if (v52 != __p)
        {
          do
          {
            v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
          }

          while (v28 != v27);
          v29 = __p;
        }

        v52 = v27;
        operator delete(v29);
      }

      v30 = v49;
      if (v49)
      {
        v31 = v50;
        v32 = v49;
        if (v50 != v49)
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
          v32 = v49;
        }

        v50 = v30;
        operator delete(v32);
      }

      if (v45 != v48)
      {
        free(v45);
      }
    }
  }

  return v12;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(uint64_t a1, uint64_t *a2)
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
  if (v5 != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
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

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::UnitAttr]";
  v38 = 64;
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

BOOL mlir::AsmParser::parseType<mlir::FunctionType>(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 40))(a1);
  v18 = 0;
  if (((*(*a1 + 536))(a1, &v18) & 1) == 0)
  {
    return 0;
  }

  v5 = v18;
  if (*(*v18 + 136) != &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
  {
    v5 = 0;
  }

  *a2 = v5;
  if (v5)
  {
    return 1;
  }

  v16 = "invalid kind of type specified";
  v17 = 259;
  (*(*a1 + 24))(v19, a1, v4, &v16);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v19);
  v7 = result;
  if (v19[0])
  {
    mlir::InFlightDiagnostic::report(v19);
    result = v7;
  }

  if (v27 == 1)
  {
    if (v26 != &v27)
    {
      free(v26);
      result = v7;
    }

    v8 = __p;
    if (__p)
    {
      v9 = v25;
      v10 = __p;
      if (v25 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v25 = v8;
      operator delete(v10);
      result = v7;
    }

    v11 = v22;
    if (v22)
    {
      v12 = v23;
      v13 = v22;
      if (v23 != v22)
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
        v13 = v22;
      }

      v23 = v11;
      operator delete(v13);
      result = v7;
    }

    if (v20 != &v21)
    {
      free(v20);
      return v7;
    }
  }

  return result;
}

uint64_t mlir::OpAsmParser::resolveOperands<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &>,llvm::ArrayRef<mlir::Type> &>(uint64_t a1, uint64_t **a2, void *a3, uint64_t a4, uint64_t a5)
{
  v69 = *MEMORY[0x1E69E9840];
  v7 = a2[1];
  v8 = **a2;
  v9 = (*a2)[1];
  v10 = v8 + 32 * v9;
  v11 = *v7;
  v12 = v7[1];
  v13 = &v11[32 * v12];
  v14 = 0;
  if (v9 | v12)
  {
    v15 = **a2;
    v16 = v11;
    do
    {
      v17 = v15 == v10;
      v15 += 32;
      if (v17)
      {
        v16 += 32;
        v15 = v10;
      }

      ++v14;
    }

    while (v15 != v10 || v16 != v13);
  }

  v18 = a3[1];
  if (v14 == v18)
  {
    v19 = *a3;
    v57 = **a2;
    v58 = v11;
    v59 = v10;
    v60 = v13;
    v61 = v19;
    v20 = v10;
    while (v8 != v10 || v11 != v13 || v20 != v10 || v60 != v13)
    {
      v21 = &unk_1F5AF25C0;
      do
      {
        while (1)
        {
          v23 = *(v21 - 1);
          v24 = (&v57 + (*v21 >> 1));
          if (*v21)
          {
            break;
          }

          v21 += 2;
          v22 = v23(v24);
          if (v22)
          {
            goto LABEL_19;
          }
        }

        v21 += 2;
        v22 = (*(*v24 + v23))();
      }

      while (!v22);
LABEL_19:
      if (((*(*a1 + 728))(a1, v22, *v61, a5) & 1) == 0)
      {
        return 0;
      }

      v8 = v57;
      v20 = v59;
      if (v57 == v59)
      {
        v11 = v58;
        if (v58 != v60)
        {
          v11 = v58 + 32;
          v58 += 32;
        }
      }

      else
      {
        v8 = v57 + 32;
        v57 += 32;
        v11 = v58;
      }

      ++v61;
    }

    return 1;
  }

  else
  {
    v53 = 257;
    (*(*a1 + 24))(&v57, a1, a4, v52);
    if (v57)
    {
      v54 = 5;
      v55 = v14;
      v25 = &v54;
      v26 = v60;
      if (v61 >= HIDWORD(v61))
      {
        if (v60 <= &v54 && v60 + 24 * v61 > &v54)
        {
          v49 = &v54 - v60;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v62, v61 + 1, 24);
          v26 = v60;
          v25 = (v60 + v49);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v62, v61 + 1, 24);
          v25 = &v54;
          v26 = v60;
        }
      }

      v27 = &v26[24 * v61];
      v28 = *v25;
      *(v27 + 2) = *(v25 + 2);
      *v27 = v28;
      v29 = (v61 + 1);
      LODWORD(v61) = v61 + 1;
      if (v57)
      {
        v54 = 3;
        v55 = " operands present, but expected ";
        v56 = 32;
        v30 = &v54;
        v31 = v60;
        if (v29 >= HIDWORD(v61))
        {
          if (v60 <= &v54 && v60 + 24 * v29 > &v54)
          {
            v50 = &v54 - v60;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v62, v29 + 1, 24);
            v31 = v60;
            v30 = (v60 + v50);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v62, v29 + 1, 24);
            v30 = &v54;
            v31 = v60;
          }
        }

        v32 = &v31[24 * v61];
        v33 = *v30;
        *(v32 + 2) = *(v30 + 2);
        *v32 = v33;
        v34 = (v61 + 1);
        LODWORD(v61) = v61 + 1;
        if (v57)
        {
          v54 = 5;
          v55 = v18;
          v35 = &v54;
          v36 = v60;
          if (v34 >= HIDWORD(v61))
          {
            if (v60 <= &v54 && v60 + 24 * v34 > &v54)
            {
              v51 = &v54 - v60;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v62, v34 + 1, 24);
              v36 = v60;
              v35 = (v60 + v51);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v62, v34 + 1, 24);
              v35 = &v54;
              v36 = v60;
            }
          }

          v37 = &v36[24 * v61];
          v38 = *v35;
          *(v37 + 2) = *(v35 + 2);
          *v37 = v38;
          LODWORD(v61) = v61 + 1;
        }
      }
    }

    v39 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v57);
    if (v57)
    {
      mlir::InFlightDiagnostic::report(&v57);
    }

    if (v68 == 1)
    {
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

      v43 = v63;
      if (v63)
      {
        v44 = v64;
        v45 = v63;
        if (v64 != v63)
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
          v45 = v63;
        }

        v64 = v43;
        operator delete(v45);
      }

      if (v60 != v62)
      {
        free(v60);
      }
    }
  }

  return v39;
}

llvm::raw_ostream *mlir::AsmPrinter::printFunctionalType<mlir::ValueTypeRange<mlir::OperandRange>,mlir::ValueTypeRange<mlir::ResultRange>>(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = (*(*a1 + 16))(a1);
  v7 = v6;
  v8 = *(v6 + 4);
  if (v8 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 40);
    v9 = a2[1];
    v10 = a2[3];
    if (v9 == v10)
    {
      goto LABEL_6;
    }
  }

  else
  {
    *(v6 + 4) = v8 + 1;
    *v8 = 40;
    v9 = a2[1];
    v10 = a2[3];
    if (v9 == v10)
    {
      goto LABEL_6;
    }
  }

  v11 = *a2 + 32 * v9;
  (*(*a1 + 32))(a1, *(*(v11 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9 + 1 != v10)
  {
    v14 = ~v9 + v10;
    v15 = (v11 + 56);
    do
    {
      v17 = (*(*a1 + 16))(a1);
      v18 = v17[4];
      if (v17[3] - v18 > 1uLL)
      {
        *v18 = 8236;
        v17[4] += 2;
      }

      else
      {
        llvm::raw_ostream::write(v17, ", ", 2uLL);
      }

      v16 = *v15;
      v15 += 4;
      (*(*a1 + 32))(a1, *(v16 + 8) & 0xFFFFFFFFFFFFFFF8);
      --v14;
    }

    while (v14);
  }

LABEL_6:
  v12 = *(v7 + 4);
  if (v12 >= *(v7 + 3))
  {
    llvm::raw_ostream::write(v7, 41);
  }

  else
  {
    *(v7 + 4) = v12 + 1;
    *v12 = 41;
  }

  return mlir::AsmPrinter::printArrowTypeList<mlir::ValueTypeRange<mlir::ResultRange> &>(a1, a3);
}

uint64_t mlir::DialectBytecodeReader::readSparseArray<int>(uint64_t a1, _DWORD *a2, const char *a3)
{
  v99 = *MEMORY[0x1E69E9840];
  v83 = 0;
  if ((*(*a1 + 72))(a1, &v83))
  {
    v6 = v83;
    v7 = v83 >> 1;
    v83 >>= 1;
    if (v6 < 2)
    {
      return 1;
    }

    if (v6)
    {
      v80 = 0;
      if ((*(*a1 + 72))(a1, &v80))
      {
        if (v80 < 9)
        {
          v40 = v83;
          if (!v83)
          {
            return 1;
          }

          while (1)
          {
            v79 = 0;
            if (((*(*a1 + 72))(a1, &v79) & 1) == 0)
            {
              break;
            }

            v41 = v79 & ~(-1 << v80);
            if (v41 >= a3)
            {
              v81[0] = "reading a sparse array found index ";
              v82 = 259;
              (*(*a1 + 16))(&v87, a1, v81);
              if (v87)
              {
                v84 = 5;
                v85 = v41;
                v43 = &v84;
                v44 = v89;
                if (v90 >= v91)
                {
                  if (v89 <= &v84 && v89 + 24 * v90 > &v84)
                  {
                    v75 = &v84 - v89;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v92, v90 + 1, 24);
                    v44 = v89;
                    v43 = (v89 + v75);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v92, v90 + 1, 24);
                    v43 = &v84;
                    v44 = v89;
                  }
                }

                v45 = &v44[24 * v90];
                v46 = *v43;
                *(v45 + 2) = *(v43 + 2);
                *v45 = v46;
                v47 = ++v90;
                if (v87)
                {
                  v84 = 3;
                  v85 = " but only ";
                  v86 = 10;
                  v48 = &v84;
                  v49 = v89;
                  if (v47 >= v91)
                  {
                    if (v89 <= &v84 && v89 + 24 * v47 > &v84)
                    {
                      v76 = &v84 - v89;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v92, v47 + 1, 24);
                      v49 = v89;
                      v48 = (v89 + v76);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v92, v47 + 1, 24);
                      v48 = &v84;
                      v49 = v89;
                    }
                  }

                  v50 = &v49[24 * v90];
                  v51 = *v48;
                  *(v50 + 2) = *(v48 + 2);
                  *v50 = v51;
                  v52 = ++v90;
                  if (v87)
                  {
                    v84 = 5;
                    v85 = a3;
                    v53 = &v84;
                    v54 = v89;
                    if (v52 >= v91)
                    {
                      if (v89 <= &v84 && v89 + 24 * v52 > &v84)
                      {
                        v77 = &v84 - v89;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v92, v52 + 1, 24);
                        v54 = v89;
                        v53 = (v89 + v77);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v92, v52 + 1, 24);
                        v53 = &v84;
                        v54 = v89;
                      }
                    }

                    v55 = &v54[24 * v90];
                    v56 = *v53;
                    *(v55 + 2) = *(v53 + 2);
                    *v55 = v56;
                    v57 = ++v90;
                    if (v87)
                    {
                      v84 = 3;
                      v85 = " storage available.";
                      v86 = 19;
                      v58 = &v84;
                      v59 = v89;
                      if (v57 >= v91)
                      {
                        if (v89 <= &v84 && v89 + 24 * v57 > &v84)
                        {
                          v78 = &v84 - v89;
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v92, v57 + 1, 24);
                          v59 = v89;
                          v58 = (v89 + v78);
                        }

                        else
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v92, v57 + 1, 24);
                          v58 = &v84;
                          v59 = v89;
                        }
                      }

                      v60 = &v59[24 * v90];
                      v61 = *v58;
                      *(v60 + 2) = *(v58 + 2);
                      *v60 = v61;
                      ++v90;
                      if (v87)
                      {
                        mlir::InFlightDiagnostic::report(&v87);
                      }
                    }
                  }
                }
              }

              if (v98)
              {
                if (v97 != &v98)
                {
                  free(v97);
                }

                v62 = __p;
                if (__p)
                {
                  v63 = v96;
                  v64 = __p;
                  if (v96 != __p)
                  {
                    do
                    {
                      v63 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v63 - 1);
                    }

                    while (v63 != v62);
                    v64 = __p;
                  }

                  v96 = v62;
                  operator delete(v64);
                }

                v65 = v93;
                if (v93)
                {
                  v66 = v94;
                  v67 = v93;
                  if (v94 != v93)
                  {
                    do
                    {
                      v69 = *--v66;
                      v68 = v69;
                      *v66 = 0;
                      if (v69)
                      {
                        operator delete[](v68);
                      }
                    }

                    while (v66 != v65);
                    v67 = v93;
                  }

                  v94 = v65;
                  operator delete(v67);
                }

                v42 = v89;
                if (v89 != v92)
                {
                  goto LABEL_49;
                }
              }

              return 0;
            }

            a2[v41] = v79 >> v80;
            if (!--v40)
            {
              return 1;
            }
          }
        }

        else
        {
          v81[0] = "reading sparse array with indexing above 8 bits: ";
          v82 = 259;
          (*(*a1 + 16))(&v87, a1, v81);
          if (v87)
          {
            v84 = 5;
            v85 = v80;
            v9 = &v84;
            v10 = v89;
            if (v90 >= v91)
            {
              if (v89 <= &v84 && v89 + 24 * v90 > &v84)
              {
                v72 = &v84 - v89;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v92, v90 + 1, 24);
                v10 = v89;
                v9 = (v89 + v72);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v92, v90 + 1, 24);
                v9 = &v84;
                v10 = v89;
              }
            }

            v11 = &v10[24 * v90];
            v12 = *v9;
            *(v11 + 2) = *(v9 + 2);
            *v11 = v12;
            ++v90;
            if (v87)
            {
              mlir::InFlightDiagnostic::report(&v87);
            }
          }

          if (v98 == 1)
          {
            mlir::Diagnostic::~Diagnostic(&v88);
          }
        }
      }
    }

    else if (v7 <= a3)
    {
      while (1)
      {
        v87 = 0;
        if (((*(*a1 + 72))(a1, &v87) & 1) == 0)
        {
          break;
        }

        *a2++ = v87;
        if (!--v7)
        {
          return 1;
        }
      }
    }

    else
    {
      v81[0] = "trying to read an array of ";
      v82 = 259;
      (*(*a1 + 16))(&v87, a1, v81);
      if (v87)
      {
        v84 = 5;
        v85 = v83;
        v13 = &v84;
        v14 = v89;
        if (v90 >= v91)
        {
          if (v89 <= &v84 && v89 + 24 * v90 > &v84)
          {
            v70 = &v84 - v89;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v92, v90 + 1, 24);
            v14 = v89;
            v13 = (v89 + v70);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v92, v90 + 1, 24);
            v13 = &v84;
            v14 = v89;
          }
        }

        v15 = &v14[24 * v90];
        v16 = *v13;
        *(v15 + 2) = *(v13 + 2);
        *v15 = v16;
        v17 = ++v90;
        if (v87)
        {
          v84 = 3;
          v85 = " but only ";
          v86 = 10;
          v18 = &v84;
          v19 = v89;
          if (v17 >= v91)
          {
            if (v89 <= &v84 && v89 + 24 * v17 > &v84)
            {
              v71 = &v84 - v89;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v92, v17 + 1, 24);
              v19 = v89;
              v18 = (v89 + v71);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v92, v17 + 1, 24);
              v18 = &v84;
              v19 = v89;
            }
          }

          v20 = &v19[24 * v90];
          v21 = *v18;
          *(v20 + 2) = *(v18 + 2);
          *v20 = v21;
          v22 = ++v90;
          if (v87)
          {
            v84 = 5;
            v85 = a3;
            v23 = &v84;
            v24 = v89;
            if (v22 >= v91)
            {
              if (v89 <= &v84 && v89 + 24 * v22 > &v84)
              {
                v73 = &v84 - v89;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v92, v22 + 1, 24);
                v24 = v89;
                v23 = (v89 + v73);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v92, v22 + 1, 24);
                v23 = &v84;
                v24 = v89;
              }
            }

            v25 = &v24[24 * v90];
            v26 = *v23;
            *(v25 + 2) = *(v23 + 2);
            *v25 = v26;
            v27 = ++v90;
            if (v87)
            {
              v84 = 3;
              v85 = " storage available.";
              v86 = 19;
              v28 = &v84;
              v29 = v89;
              if (v27 >= v91)
              {
                if (v89 <= &v84 && v89 + 24 * v27 > &v84)
                {
                  v74 = &v84 - v89;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v92, v27 + 1, 24);
                  v29 = v89;
                  v28 = (v89 + v74);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v92, v27 + 1, 24);
                  v28 = &v84;
                  v29 = v89;
                }
              }

              v30 = &v29[24 * v90];
              v31 = *v28;
              *(v30 + 2) = *(v28 + 2);
              *v30 = v31;
              ++v90;
              if (v87)
              {
                mlir::InFlightDiagnostic::report(&v87);
              }
            }
          }
        }
      }

      if (v98 == 1)
      {
        if (v97 != &v98)
        {
          free(v97);
        }

        v32 = __p;
        if (__p)
        {
          v33 = v96;
          v34 = __p;
          if (v96 != __p)
          {
            do
            {
              v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
            }

            while (v33 != v32);
            v34 = __p;
          }

          v96 = v32;
          operator delete(v34);
        }

        v35 = v93;
        if (v93)
        {
          v36 = v94;
          v37 = v93;
          if (v94 != v93)
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
            v37 = v93;
          }

          v94 = v35;
          operator delete(v37);
        }

        v42 = v89;
        if (v89 != v92)
        {
LABEL_49:
          free(v42);
        }
      }
    }
  }

  return 0;
}

void *mlir::MemoryEffects::Read::Read(void *this)
{
  {
    *this = mlir::detail::TypeIDResolver<mlir::MemoryEffects::Read,void>::resolveTypeID(void)::id;
  }

  else
  {
    v1 = this;
    mlir::MemoryEffects::Read::Read();
    this = v1;
    *v1 = mlir::detail::TypeIDResolver<mlir::MemoryEffects::Read,void>::resolveTypeID(void)::id;
  }

  return this;
}

{
  {
    v1 = this;
    mlir::MemoryEffects::Read::Read();
    this = v1;
  }

  *this = mlir::detail::TypeIDResolver<mlir::MemoryEffects::Read,void>::resolveTypeID(void)::id;
  return this;
}

const char *llvm::getTypeName<mlir::MemoryEffects::Read>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::MemoryEffects::Read]";
  v6 = 75;
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

void *mlir::SideEffects::DefaultResource::DefaultResource(void *this)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::SideEffects::DefaultResource,void>::resolveTypeID(void)::id;
    *this = &unk_1F5B34288;
    this[1] = v1;
  }

  else
  {
    v3 = this;
    mlir::SideEffects::DefaultResource::DefaultResource();
    this = v3;
    v2 = mlir::detail::TypeIDResolver<mlir::SideEffects::DefaultResource,void>::resolveTypeID(void)::id;
    *v3 = &unk_1F5B34288;
    v3[1] = v2;
  }

  return this;
}

{
  {
    v2 = this;
    mlir::SideEffects::DefaultResource::DefaultResource();
    this = v2;
  }

  v1 = mlir::detail::TypeIDResolver<mlir::SideEffects::DefaultResource,void>::resolveTypeID(void)::id;
  *this = &unk_1F5B34288;
  this[1] = v1;
  return this;
}

const char *llvm::getTypeName<mlir::SideEffects::DefaultResource>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::SideEffects::DefaultResource]";
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

void *mlir::MemoryEffects::Write::Write(void *this)
{
  {
    *this = mlir::detail::TypeIDResolver<mlir::MemoryEffects::Write,void>::resolveTypeID(void)::id;
  }

  else
  {
    v1 = this;
    mlir::MemoryEffects::Write::Write();
    this = v1;
    *v1 = mlir::detail::TypeIDResolver<mlir::MemoryEffects::Write,void>::resolveTypeID(void)::id;
  }

  return this;
}

{
  {
    v1 = this;
    mlir::MemoryEffects::Write::Write();
    this = v1;
  }

  *this = mlir::detail::TypeIDResolver<mlir::MemoryEffects::Write,void>::resolveTypeID(void)::id;
  return this;
}

const char *llvm::getTypeName<mlir::MemoryEffects::Write>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::MemoryEffects::Write]";
  v6 = 76;
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

uint64_t llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Write *,mlir::OpOperand *,mlir::SideEffects::DefaultResource *>(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *a3;
  v5 = *a4;
  v16[0] = *a2;
  v16[1] = v5;
  v16[2] = v4 & 0xFFFFFFFFFFFFFFF9 | 2;
  v16[3] = 0;
  v17 = 0;
  v18 = 0;
  v6 = *(a1 + 8);
  v7 = *a1;
  v8 = v16;
  if (v6 >= *(a1 + 12))
  {
    if (v7 <= v16 && v7 + 40 * v6 > v16)
    {
      v14 = v16 - v7;
      v15 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v6 + 1, 40);
      a1 = v15;
      v7 = *v15;
      v8 = &v14[*v15];
    }

    else
    {
      v13 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v6 + 1, 40);
      a1 = v13;
      v7 = *v13;
      v8 = v16;
    }
  }

  v9 = v7 + 40 * *(a1 + 8);
  v10 = *v8;
  v11 = *(v8 + 1);
  *(v9 + 32) = *(v8 + 4);
  *v9 = v10;
  *(v9 + 16) = v11;
  LODWORD(v9) = *(a1 + 8) + 1;
  *(a1 + 8) = v9;
  return *a1 + 40 * v9 - 40;
}

BOOL mlir::AsmParser::parseType<mlir::TensorType>(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 40))(a1);
  v20 = 0;
  if (((*(*a1 + 536))(a1, &v20) & 1) == 0)
  {
    return 0;
  }

  v5 = v20;
  v6 = *(*v20 + 136);
  if (v6 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v6 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v5 = 0;
  }

  *a2 = v5;
  if (v5)
  {
    return 1;
  }

  v18 = "invalid kind of type specified";
  v19 = 259;
  (*(*a1 + 24))(v21, a1, v4, &v18);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
  v9 = result;
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
    result = v9;
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
      result = v9;
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
      result = v9;
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
      result = v9;
    }

    if (v22 != &v23)
    {
      free(v22);
      return v9;
    }
  }

  return result;
}

BOOL mlir::MemoryEffectOpInterface::hasEffect<mlir::MemoryEffects::Free>(uint64_t a1)
{
  v12[20] = *MEMORY[0x1E69E9840];
  v10 = v12;
  v11 = 0x400000000;
  mlir::RegionBranchOpInterface::getEntrySuccessorOperands(a1, &v10);
  v1 = v10;
  if (!v11)
  {
    v5 = 0;
    if (v10 == v12)
    {
      return v5;
    }

    goto LABEL_11;
  }

  v2 = 40 * v11 - 40;
  v3 = &mlir::detail::TypeIDResolver<mlir::arith::ArithRoundingModeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::arith::ArithRoundingModeInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  do
  {
    v4 = **v1;
    {
      v8 = v2;
      v9 = v1;
      mlir::MemoryEffectOpInterface::hasEffect<mlir::MemoryEffects::Free>();
      v3 = &mlir::detail::TypeIDResolver<mlir::arith::ArithRoundingModeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::arith::ArithRoundingModeInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
      v2 = v8;
      v1 = v9;
    }

    v6 = v4 == v3[25];
    v5 = v6;
    v6 = v6 || v2 == 0;
    v2 -= 40;
    v1 += 5;
  }

  while (!v6);
  v1 = v10;
  if (v10 != v12)
  {
LABEL_11:
    free(v1);
  }

  return v5;
}

uint64_t mlir::OpInterface<mlir::ViewLikeOpInterface,mlir::detail::ViewLikeOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
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
      mlir::OpInterface<mlir::ViewLikeOpInterface,mlir::detail::ViewLikeOpInterfaceInterfaceTraits>::getInterfaceFor();
      Values = v24;
    }

    return (*(*Values + 104))(Values, mlir::detail::TypeIDResolver<mlir::ViewLikeOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v5 = mlir::detail::TypeIDResolver<mlir::ViewLikeOpInterface,void>::resolveTypeID(void)::id;
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
    mlir::OpInterface<mlir::ViewLikeOpInterface,mlir::detail::ViewLikeOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v21;
    a1 = v22;
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v5 = mlir::detail::TypeIDResolver<mlir::ViewLikeOpInterface,void>::resolveTypeID(void)::id;
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
    mlir::OpInterface<mlir::ViewLikeOpInterface,mlir::detail::ViewLikeOpInterfaceInterfaceTraits>::getInterfaceFor();
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v18 = v23;
  }

  v19 = v4[31];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

const char *llvm::getTypeName<mlir::ViewLikeOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ViewLikeOpInterface]";
  v6 = 75;
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

uint64_t mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
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
      mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor();
      Values = v24;
    }

    return (*(*Values + 104))(Values, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v5 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;
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
    mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v21;
    a1 = v22;
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v5 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;
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
    mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor();
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v18 = v23;
  }

  v19 = v4[231];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

const char *llvm::getTypeName<mlir::MemoryEffects::Free>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::MemoryEffects::Free]";
  v6 = 75;
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

void llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpFoldResult,6u>>::append(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  v6 = *(a1 + 8);
  v7 = v6 + a2;
  if (v7 > *(a1 + 12))
  {
    v14 = *a1 + (v6 << 6);
    if (*a1 <= a3 && v14 > a3)
    {
      v16 = a3 - *a1;
      llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpFoldResult,6u>,false>::grow(a1, v7);
      v3 = *a1 + v16;
    }

    else
    {
      llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpFoldResult,6u>,false>::grow(a1, v7);
    }
  }

  v8 = *(a1 + 8);
  if (a2)
  {
    v9 = (*a1 + (v8 << 6));
    v10 = a2;
    while (1)
    {
      v12 = v9 + 2;
      *v9 = v9 + 2;
      v9[1] = 0x600000000;
      if (v9 == v3)
      {
        goto LABEL_7;
      }

      v13 = *(v3 + 8);
      if (!*(v3 + 8))
      {
        goto LABEL_7;
      }

      if (v13 < 7)
      {
        v11 = *(v3 + 8);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (v9 + 2), *(v3 + 8), 8);
        v11 = *(v3 + 8);
        if (!v11)
        {
          goto LABEL_6;
        }

        v12 = *v9;
      }

      memcpy(v12, *v3, 8 * v11);
LABEL_6:
      *(v9 + 2) = v13;
LABEL_7:
      v9 += 8;
      if (!--v10)
      {
        LODWORD(v8) = *(a1 + 8);
        break;
      }
    }
  }

  *(a1 + 8) = v8 + a2;
}

void llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpFoldResult,6u>,false>::grow(uint64_t a1, unint64_t a2)
{
  v15 = 0;
  v3 = a1 + 16;
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 64, &v15);
  v5 = v4;
  v6 = *a1;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = v7 << 6;
    v9 = v4;
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

  v14 = v15;
  if (v6 != v3)
  {
    free(v6);
  }

  *a1 = v5;
  *(a1 + 12) = v14;
}

uint64_t mlir::OpBuilder::create<mlir::tensor::DimOp,mlir::Value &,mlir::detail::TypedValue<mlir::IndexType>>(mlir::IndexType **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::DimOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::DimOp,mlir::Value &,long long &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::memref::DimOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::DimOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v12;
}

uint64_t mlir::OpBuilder::create<mlir::tensor::ExtractOp,mlir::detail::TypedValue<mlir::TensorType>,mlir::OperandRange>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x1E69E9840];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::ExtractOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::ExtractOp,mlir::detail::TypedValue<mlir::TensorType>,mlir::OperandRange>(v17, v18, v16);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  v11 = *a3;
  mlir::ValueRange::ValueRange(v18, *a4, *(a4 + 8));
  mlir::tensor::ExtractOp::build(a1, v17, v11, v18[0], v18[1]);
  v12 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v13;
}

void *mlir::BoolAttr::operator mlir::TypedAttr(void **a1)
{
  result = *a1;
  if (result)
  {
    v2 = *result;
    {
      v3 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v4 = *(v2 + 8);
      v5 = *(v2 + 16);
      if (!v5)
      {
        return result;
      }
    }

    else
    {
      v12 = v2;
      v13 = result;
      mlir::BoolAttr::operator mlir::TypedAttr();
      result = v13;
      v3 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v4 = *(v12 + 8);
      v5 = *(v12 + 16);
      if (!v5)
      {
        return result;
      }
    }

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
  }

  return result;
}

uint64_t **llvm::find_if<llvm::SmallVector<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,4u> &,std::optional<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>> mlir::MemoryEffectOpInterface::getEffectOnValue<mlir::MemoryEffects::Allocate>(mlir::Value)::{lambda(llvm::SmallVector<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,4u> & &)#1}>(uint64_t ***a1, void *a2)
{
  result = *a1;
  v4 = *(a1 + 2);
  if (v4)
  {
    v5 = &result[5 * v4];
    v6 = 40 * v4;
    while (1)
    {
      v8 = **result;
      {
        if (v8 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Allocate,void>::resolveTypeID(void)::id)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v17 = result;
        v14 = a2;
        v16 = v5;
        v13 = v6;
        v15 = v8;
        llvm::find_if<llvm::SmallVector<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,4u> &,std::optional<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>> mlir::MemoryEffectOpInterface::getEffectOnValue<mlir::MemoryEffects::Allocate>(mlir::Value)::{lambda(llvm::SmallVector<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,4u> & &)#1}>();
        a2 = v14;
        v6 = v13;
        v5 = v16;
        result = v17;
        if (v15 == mlir::detail::TypeIDResolver<mlir::MemoryEffects::Allocate,void>::resolveTypeID(void)::id)
        {
LABEL_8:
          v9 = result[2];
          if (v9 >= 8 && (v10 = result[2] & 6, (v9 & 6) != 0))
          {
            v7 = v9 & 0xFFFFFFFFFFFFFFF8;
            if (v10 != 2 || v7 == 0)
            {
              if (v10 == 4)
              {
                v12 = v7;
              }

              else
              {
                v12 = 0;
              }

              if (v12)
              {
                v7 = v12;
              }
            }

            else
            {
              v7 = *(v7 + 24);
            }
          }

          else
          {
            v7 = 0;
          }

          if (v7 == *a2)
          {
            return result;
          }
        }
      }

      result += 5;
      v6 -= 40;
      if (!v6)
      {
        return v5;
      }
    }
  }

  return result;
}

const char *llvm::getTypeName<mlir::MemoryEffects::Allocate>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::MemoryEffects::Allocate]";
  v6 = 79;
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

BOOL mlir::AsmParser::parseType<mlir::BaseMemRefType>(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 40))(a1);
  v20 = 0;
  if (((*(*a1 + 536))(a1, &v20) & 1) == 0)
  {
    return 0;
  }

  v5 = v20;
  v6 = *(*v20 + 136);
  if (v6 != &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id && v6 != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v5 = 0;
  }

  *a2 = v5;
  if (v5)
  {
    return 1;
  }

  v18 = "invalid kind of type specified";
  v19 = 259;
  (*(*a1 + 24))(v21, a1, v4, &v18);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
  v9 = result;
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
    result = v9;
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
      result = v9;
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
      result = v9;
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
      result = v9;
    }

    if (v22 != &v23)
    {
      free(v22);
      return v9;
    }
  }

  return result;
}

uint64_t llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Read *,mlir::OpOperand *,int,BOOL,mlir::SideEffects::DefaultResource *>(uint64_t a1, void *a2, uint64_t *a3, int *a4, char *a5, uint64_t *a6)
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = *a3;
  v7 = *a4;
  v8 = *a5;
  v9 = *a6;
  v20[0] = *a2;
  v20[1] = v9;
  v20[2] = v6 & 0xFFFFFFFFFFFFFFF9 | 2;
  v20[3] = 0;
  v21 = v7;
  v22 = v8;
  v10 = *(a1 + 8);
  v11 = *a1;
  v12 = v20;
  if (v10 >= *(a1 + 12))
  {
    if (v11 <= v20 && v11 + 40 * v10 > v20)
    {
      v18 = v20 - v11;
      v19 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v10 + 1, 40);
      a1 = v19;
      v11 = *v19;
      v12 = &v18[*v19];
    }

    else
    {
      v17 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v10 + 1, 40);
      a1 = v17;
      v11 = *v17;
      v12 = v20;
    }
  }

  v13 = v11 + 40 * *(a1 + 8);
  v14 = *v12;
  v15 = *(v12 + 1);
  *(v13 + 32) = *(v12 + 4);
  *v13 = v14;
  *(v13 + 16) = v15;
  LODWORD(v13) = *(a1 + 8) + 1;
  *(a1 + 8) = v13;
  return *a1 + 40 * v13 - 40;
}

void *mlir::MemoryEffects::Allocate::Allocate(void *this)
{
  {
    *this = mlir::detail::TypeIDResolver<mlir::MemoryEffects::Allocate,void>::resolveTypeID(void)::id;
  }

  else
  {
    v1 = this;
    llvm::find_if<llvm::SmallVector<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,4u> &,std::optional<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>> mlir::MemoryEffectOpInterface::getEffectOnValue<mlir::MemoryEffects::Allocate>(mlir::Value)::{lambda(llvm::SmallVector<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,4u> & &)#1}>();
    this = v1;
    *v1 = mlir::detail::TypeIDResolver<mlir::MemoryEffects::Allocate,void>::resolveTypeID(void)::id;
  }

  return this;
}

uint64_t llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Allocate *,mlir::OpResult,int,BOOL,mlir::SideEffects::DefaultResource *>(uint64_t a1, void *a2, uint64_t *a3, int *a4, char *a5, uint64_t *a6)
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = *a3;
  v7 = *a4;
  v8 = *a5;
  v9 = *a6;
  v20[0] = *a2;
  v20[1] = v9;
  v20[2] = v6 & 0xFFFFFFFFFFFFFFF9 | 4;
  v20[3] = 0;
  v21 = v7;
  v22 = v8;
  v10 = *(a1 + 8);
  v11 = *a1;
  v12 = v20;
  if (v10 >= *(a1 + 12))
  {
    if (v11 <= v20 && v11 + 40 * v10 > v20)
    {
      v18 = v20 - v11;
      v19 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v10 + 1, 40);
      a1 = v19;
      v11 = *v19;
      v12 = &v18[*v19];
    }

    else
    {
      v17 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v10 + 1, 40);
      a1 = v17;
      v11 = *v17;
      v12 = v20;
    }
  }

  v13 = v11 + 40 * *(a1 + 8);
  v14 = *v12;
  v15 = *(v12 + 1);
  *(v13 + 32) = *(v12 + 4);
  *v13 = v14;
  *(v13 + 16) = v15;
  LODWORD(v13) = *(a1 + 8) + 1;
  *(a1 + 8) = v13;
  return *a1 + 40 * v13 - 40;
}

uint64_t llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::getHelper<0ul>(void *a1)
{
  if (*a1 == a1[2])
  {
    return 0;
  }

  else
  {
    return *a1;
  }
}

uint64_t llvm::concat_iterator<mlir::OpAsmParser::UnresolvedOperand const,mlir::OpAsmParser::UnresolvedOperand const*,mlir::OpAsmParser::UnresolvedOperand const*>::getHelper<1ul>(uint64_t a1)
{
  if (*(a1 + 8) == *(a1 + 24))
  {
    return 0;
  }

  else
  {
    return *(a1 + 8);
  }
}

llvm::raw_ostream *mlir::AsmPrinter::printArrowTypeList<mlir::ValueTypeRange<mlir::ResultRange> &>(uint64_t a1, uint64_t *a2)
{
  result = (*(*a1 + 16))(a1);
  v5 = result;
  v6 = *(result + 4);
  if (*(result + 3) - v6 > 3uLL)
  {
    *v6 = 540945696;
    *(result + 4) += 4;
    v7 = a2[1];
    v10 = a2[3];
    if (v7 == v10 || v7 + 1 != v10)
    {
LABEL_20:
      v20 = *(v5 + 4);
      if (v20 >= *(v5 + 3))
      {
        result = llvm::raw_ostream::write(v5, 40);
        v21 = a2[1];
        v22 = a2[3];
        if (v21 == v22)
        {
          goto LABEL_25;
        }
      }

      else
      {
        *(v5 + 4) = v20 + 1;
        *v20 = 40;
        v21 = a2[1];
        v22 = a2[3];
        if (v21 == v22)
        {
LABEL_25:
          v26 = *(v5 + 4);
          if (v26 >= *(v5 + 3))
          {

            return llvm::raw_ostream::write(v5, 41);
          }

          else
          {
            *(v5 + 4) = v26 + 1;
            *v26 = 41;
          }

          return result;
        }
      }

      v23 = *a2;
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v23, v21);
      result = (*(*a1 + 32))(a1, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
      for (i = v21 + 1; v22 != i; ++i)
      {
        v28 = (*(*a1 + 16))(a1);
        v29 = v28[4];
        if (v28[3] - v29 > 1uLL)
        {
          *v29 = 8236;
          v28[4] += 2;
        }

        else
        {
          llvm::raw_ostream::write(v28, ", ", 2uLL);
        }

        v27 = mlir::detail::OpResultImpl::getNextResultAtOffset(v23, i);
        result = (*(*a1 + 32))(a1, *(v27 + 8) & 0xFFFFFFFFFFFFFFF8);
      }

      goto LABEL_25;
    }
  }

  else
  {
    result = llvm::raw_ostream::write(result, " -> ", 4uLL);
    v5 = result;
    v7 = a2[1];
    v8 = a2[3];
    if (v7 == v8 || v7 + 1 != v8)
    {
      goto LABEL_20;
    }
  }

  result = mlir::detail::OpResultImpl::getNextResultAtOffset(*a2, v7);
  if (*(*(*(result + 1) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
  {
    goto LABEL_20;
  }

  v12 = a2[1];
  v13 = a2[3];
  if (v12 != v13)
  {
    v14 = *a2;
    v15 = mlir::detail::OpResultImpl::getNextResultAtOffset(*a2, a2[1]);
    result = (*(*a1 + 32))(a1, *(v15 + 8) & 0xFFFFFFFFFFFFFFF8);
    for (j = v12 + 1; v13 != j; ++j)
    {
      v18 = (*(*a1 + 16))(a1);
      v19 = v18[4];
      if (v18[3] - v19 > 1uLL)
      {
        *v19 = 8236;
        v18[4] += 2;
      }

      else
      {
        llvm::raw_ostream::write(v18, ", ", 2uLL);
      }

      v17 = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, j);
      result = (*(*a1 + 32))(a1, *(v17 + 8) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  return result;
}

uint64_t mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
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
      mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor();
      Values = v24;
    }

    return (*(*Values + 104))(Values, mlir::detail::TypeIDResolver<mlir::FunctionOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v5 = mlir::detail::TypeIDResolver<mlir::FunctionOpInterface,void>::resolveTypeID(void)::id;
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
    mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v21;
    a1 = v22;
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v5 = mlir::detail::TypeIDResolver<mlir::FunctionOpInterface,void>::resolveTypeID(void)::id;
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
    mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor();
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v18 = v23;
  }

  v19 = v4[243];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

const char *llvm::getTypeName<mlir::FunctionOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::FunctionOpInterface]";
  v6 = 75;
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

uint64_t llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::affine::AffineDialect * mlir::MLIRContext::getOrLoadDialect<mlir::affine::AffineDialect>(void)::{lambda(void)#1}>@<X0>(mlir::MLIRContext **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = operator new(0x60uLL);
  result = mlir::affine::AffineDialect::AffineDialect(v4, v3);
  *a2 = result;
  return result;
}

int32x2_t *llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::memref::MemRefDialect * mlir::MLIRContext::getOrLoadDialect<mlir::memref::MemRefDialect>(void)::{lambda(void)#1}>@<X0>(mlir::MLIRContext **a1@<X0>, int32x2_t **a2@<X8>)
{
  v3 = *a1;
  v4 = operator new(0x60uLL);
  result = mlir::memref::MemRefDialect::MemRefDialect(v4, v3);
  *a2 = result;
  return result;
}

uint64_t llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::tensor::TensorDialect * mlir::MLIRContext::getOrLoadDialect<mlir::tensor::TensorDialect>(void)::{lambda(void)#1}>@<X0>(mlir::MLIRContext **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = operator new(0x60uLL);
  result = mlir::tensor::TensorDialect::TensorDialect(v4, v3);
  *a2 = result;
  return result;
}

mlir::arith::ArithDialect *llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::arith::ArithDialect * mlir::MLIRContext::getOrLoadDialect<mlir::arith::ArithDialect>(void)::{lambda(void)#1}>@<X0>(mlir::MLIRContext **a1@<X0>, mlir::arith::ArithDialect **a2@<X8>)
{
  v3 = *a1;
  v4 = operator new(0x60uLL);
  result = mlir::arith::ArithDialect::ArithDialect(v4, v3);
  *a2 = result;
  return result;
}

const char *llvm::getTypeName<mlir::ReifyRankedShapedTypeOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ReifyRankedShapedTypeOpInterface]";
  v6 = 88;
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

const char *llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<Empty>]";
  v6 = 110;
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

const char *llvm::getTypeName<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::VariadicOperands<Empty>]";
  v6 = 88;
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

const char *llvm::getTypeName<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::AttrSizedOperandSegments<Empty>]";
  v6 = 96;
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

const char *llvm::getTypeName<mlir::ReifyRankedShapedTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ReifyRankedShapedTypeOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ReifyRankedShapedTypeOpInterface::Trait<Empty>]";
  v6 = 102;
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

const char *llvm::getTypeName<mlir::CopyOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::CopyOpInterface]";
  v6 = 71;
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

const char *llvm::getTypeName<mlir::bufferization::AllocationOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::bufferization::AllocationOpInterface]";
  v6 = 92;
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

const char *llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl<Empty>]";
  v6 = 114;
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

const char *llvm::getTypeName<mlir::CopyOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CopyOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::CopyOpInterface::Trait<Empty>]";
  v6 = 85;
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

const char *llvm::getTypeName<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::VariadicResults<Empty>]";
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

const char *llvm::getTypeName<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::ZeroResults<Empty>]";
  v6 = 83;
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

const char *llvm::getTypeName<mlir::DestinationStyleOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::DestinationStyleOpInterface]";
  v6 = 83;
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

const char *llvm::getTypeName<mlir::SubsetOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::SubsetOpInterface]";
  v6 = 73;
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

const char *llvm::getTypeName<mlir::SubsetInsertionOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::SubsetInsertionOpInterface]";
  v6 = 82;
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

const char *llvm::getTypeName<mlir::DestinationStyleOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::DestinationStyleOpInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::DestinationStyleOpInterface::Trait<Empty>]";
  v6 = 97;
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

const char *llvm::getTypeName<mlir::OpTrait::SameOperandsAndResultElementType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultElementType>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::SameOperandsAndResultElementType<Empty>]";
  v6 = 104;
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

uint64_t mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
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
      mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor();
      Values = v24;
    }

    return (*(*Values + 104))(Values, mlir::detail::TypeIDResolver<mlir::BranchOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v5 = mlir::detail::TypeIDResolver<mlir::BranchOpInterface,void>::resolveTypeID(void)::id;
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
    mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v21;
    a1 = v22;
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v5 = mlir::detail::TypeIDResolver<mlir::BranchOpInterface,void>::resolveTypeID(void)::id;
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
    mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor();
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v18 = v23;
  }

  v19 = v4[251];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

const char *llvm::getTypeName<mlir::BranchOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::BranchOpInterface]";
  v6 = 73;
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

void mlir::TypeConverter::~TypeConverter(pthread_rwlock_t **this)
{
  mlir::TypeConverter::~TypeConverter(this);
}

{
  *this = &unk_1F5AFD910;
  llvm::sys::RWMutexImpl::~RWMutexImpl(this + 65);
  v2 = *(this + 128);
  v3 = this[62];
  if (v2)
  {
    v4 = v3 + 24;
    v5 = 40 * v2;
    do
    {
      if ((*(v4 - 3) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v6 = *(v4 - 2);
        if (v4 != v6)
        {
          free(v6);
        }
      }

      v4 += 40;
      v5 -= 40;
    }

    while (v5);
    v3 = this[62];
    v7 = 40 * *(this + 128);
  }

  else
  {
    v7 = 0;
  }

  llvm::deallocate_buffer(v3, v7);
}

void sub_1DFADBAA4(void *__p)
{

  operator delete(__p);
}

uint64_t mlir::RewriterBase::Listener::notifyOperationReplaced(mlir::RewriterBase::Listener *this, mlir::Operation *a2, mlir::Operation *a3)
{
  v7[2] = *MEMORY[0x1E69E9840];
  if (*(a3 + 9))
  {
    v5 = a3 - 16;
  }

  else
  {
    v5 = 0;
  }

  mlir::ValueRange::ValueRange(v7, v5, *(a3 + 9));
  return (*(*this + 56))(this, a2, v7[0], v7[1]);
}

BOOL mlir::MemoryEffectOpInterface::hasEffect<mlir::MemoryEffects::Allocate>(uint64_t a1)
{
  v12[20] = *MEMORY[0x1E69E9840];
  v10 = v12;
  v11 = 0x400000000;
  mlir::RegionBranchOpInterface::getEntrySuccessorOperands(a1, &v10);
  v1 = v10;
  if (!v11)
  {
    v5 = 0;
    if (v10 == v12)
    {
      return v5;
    }

    goto LABEL_11;
  }

  v2 = 40 * v11 - 40;
  v3 = &mlir::detail::TypeIDResolver<mlir::arith::ArithRoundingModeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::arith::ArithRoundingModeInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  do
  {
    v4 = **v1;
    {
      v8 = v2;
      v9 = v1;
      mlir::MemoryEffectOpInterface::hasEffect<mlir::MemoryEffects::Allocate>();
      v3 = &mlir::detail::TypeIDResolver<mlir::arith::ArithRoundingModeInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::arith::ArithRoundingModeInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
      v2 = v8;
      v1 = v9;
    }

    v6 = v4 == v3[27];
    v5 = v6;
    v6 = v6 || v2 == 0;
    v2 -= 40;
    v1 += 5;
  }

  while (!v6);
  v1 = v10;
  if (v10 != v12)
  {
LABEL_11:
    free(v1);
  }

  return v5;
}

void mlir::TypeConverter::registerConversion(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3 >= *(a1 + 20))
  {
    llvm::SmallVectorTemplateBase<std::function<std::optional<llvm::LogicalResult> ()(mlir::Type,llvm::SmallVectorImpl<mlir::Type> &)>,false>::growAndEmplaceBack<std::function<std::optional<llvm::LogicalResult> ()(mlir::Type,llvm::SmallVectorImpl<mlir::Type> &)>>(a1 + 8, a2);
    v6 = *(a1 + 480);
    if (v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = *(a1 + 8) + 32 * v3;
    v5 = *(a2 + 24);
    if (v5)
    {
      if (v5 == a2)
      {
        *(v4 + 24) = v4;
        (*(**(a2 + 24) + 24))(*(a2 + 24), v4);
        ++*(a1 + 16);
        v6 = *(a1 + 480);
        if (v6)
        {
          goto LABEL_10;
        }
      }

      else
      {
        *(v4 + 24) = v5;
        *(a2 + 24) = 0;
        *(a1 + 16) = v3 + 1;
        v6 = *(a1 + 480);
        if (v6)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      *(v4 + 24) = 0;
      *(a1 + 16) = v3 + 1;
      v6 = *(a1 + 480);
      if (v6)
      {
        goto LABEL_10;
      }
    }
  }

  if (!*(a1 + 484))
  {
    goto LABEL_13;
  }

LABEL_10:
  v7 = *(a1 + 488);
  if (v7 > 4 * v6 && v7 >= 0x41)
  {
    llvm::DenseMap<void *,mlir::Type,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::Type>>::shrink_and_clear(a1 + 472);
LABEL_13:
    v8 = *(a1 + 504);
    if (v8)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if (v7)
  {
    v9 = *(a1 + 472);
    v10 = (v7 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v10)
    {
      v11 = v10 + 1;
      v12 = (v10 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v13 = (v9 + 16 * v12);
      v14 = (v9 + 16);
      v15 = v12;
      do
      {
        *(v14 - 2) = -4096;
        *v14 = -4096;
        v14 += 4;
        v15 -= 2;
      }

      while (v15);
      if (v11 == v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *(a1 + 472);
    }

    v16 = (v9 + 16 * v7);
    do
    {
      *v13 = -4096;
      v13 += 2;
    }

    while (v13 != v16);
  }

LABEL_24:
  *(a1 + 480) = 0;
  v8 = *(a1 + 504);
  if (v8)
  {
    goto LABEL_26;
  }

LABEL_25:
  if (!*(a1 + 508))
  {
    return;
  }

LABEL_26:
  v17 = *(a1 + 512);
  if (v17 <= 4 * v8 || v17 < 0x41)
  {
    if (!v17)
    {
LABEL_39:
      *(a1 + 504) = 0;
      return;
    }

    v18 = *(a1 + 496) + 24;
    v19 = 40 * v17;
    while (1)
    {
      v20 = *(v18 - 24);
      if (v20 != -8192)
      {
        if (v20 == -4096)
        {
          goto LABEL_34;
        }

        v21 = *(v18 - 16);
        if (v18 != v21)
        {
          free(v21);
        }
      }

      *(v18 - 24) = -4096;
LABEL_34:
      v18 += 40;
      v19 -= 40;
      if (!v19)
      {
        goto LABEL_39;
      }
    }
  }

  llvm::DenseMap<mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>::shrink_and_clear(a1 + 496);
}

uint64_t llvm::SmallVectorTemplateBase<std::function<std::optional<llvm::LogicalResult> ()(mlir::Type,llvm::SmallVectorImpl<mlir::Type> &)>,false>::growAndEmplaceBack<std::function<std::optional<llvm::LogicalResult> ()(mlir::Type,llvm::SmallVectorImpl<mlir::Type> &)>>(uint64_t a1, uint64_t a2)
{
  v23 = 0;
  v4 = (a1 + 16);
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 32, &v23);
  v6 = v5;
  v7 = *(a1 + 8);
  v8 = v5 + 32 * v7;
  v9 = *(a2 + 24);
  if (v9)
  {
    if (v9 == a2)
    {
      *(v8 + 24) = v8;
      (*(**(a2 + 24) + 24))(*(a2 + 24));
      v7 = *(a1 + 8);
      v10 = *a1;
      if (!v7)
      {
        goto LABEL_23;
      }
    }

    else
    {
      *(v8 + 24) = v9;
      *(a2 + 24) = 0;
      v10 = *a1;
      if (!v7)
      {
        goto LABEL_23;
      }
    }
  }

  else
  {
    *(v8 + 24) = 0;
    v10 = *a1;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  v11 = 32 * v7;
  v12 = v6;
  do
  {
    v13 = v10[3];
    if (v13)
    {
      if (v10 == v13)
      {
        *(v12 + 24) = v12;
        (*(*v10[3] + 24))(v10[3], v12);
      }

      else
      {
        *(v12 + 24) = v13;
        v10[3] = 0;
      }
    }

    else
    {
      *(v12 + 24) = 0;
    }

    v12 += 32;
    v10 += 4;
    v11 -= 32;
  }

  while (v11);
  v10 = *a1;
  v14 = *(a1 + 8);
  if (v14)
  {
    v15 = 4 * v14;
    v16 = &v10[v15 - 4];
    v17 = -(v15 * 8);
    v18 = v16;
    do
    {
      v19 = *(v18 + 24);
      if (v18 == v19)
      {
        (*(*v19 + 32))(v19);
      }

      else if (v19)
      {
        (*(*v19 + 40))(v19);
      }

      v18 -= 32;
      v16 -= 32;
      v17 += 32;
    }

    while (v17);
    v10 = *a1;
  }

LABEL_23:
  v20 = v23;
  if (v10 != v4)
  {
    free(v10);
  }

  *a1 = v6;
  v21 = (*(a1 + 8) + 1);
  *(a1 + 8) = v21;
  *(a1 + 12) = v20;
  return v6 + 32 * v21 - 32;
}

void llvm::DenseMap<mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>::shrink_and_clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 8);
  v4 = 5 * v2;
  if (v2)
  {
    v5 = *a1 + 24;
    v6 = 40 * v2;
    do
    {
      if ((*(v5 - 24) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v7 = *(v5 - 16);
        if (v5 != v7)
        {
          free(v7);
        }
      }

      v5 += 40;
      v6 -= 40;
    }

    while (v6);
  }

  v8 = 1 << (33 - __clz(v3 - 1));
  if (v8 <= 64)
  {
    v8 = 64;
  }

  if (v3)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v9 != *(a1 + 16))
  {
    llvm::deallocate_buffer(*a1, (8 * v4));
  }

  *(a1 + 8) = 0;
  if (v9)
  {
    v10 = *a1;
    v11 = 40 * v9 - 40;
    if (v11 < 0x28)
    {
      v12 = *a1;
LABEL_20:
      v16 = (v10 + 40 * v9);
      do
      {
        *v12 = -4096;
        v12 = (v12 + 40);
      }

      while (v12 != v16);
      return;
    }

    v13 = v11 / 0x28 + 1;
    v12 = (v10 + 40 * (v13 & 0xFFFFFFFFFFFFFFELL));
    v14 = *a1;
    v15 = v13 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v14 = -4096;
      *(v14 + 5) = -4096;
      v14 = (v14 + 80);
      v15 -= 2;
    }

    while (v15);
    if (v13 != (v13 & 0xFFFFFFFFFFFFFFELL))
    {
      goto LABEL_20;
    }
  }
}

uint64_t llvm::SmallVectorTemplateBase<std::function<std::optional<mlir::Value> ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>,false>::growAndEmplaceBack<std::function<std::optional<mlir::Value> ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>>(uint64_t a1, uint64_t a2)
{
  v23 = 0;
  v4 = (a1 + 16);
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 32, &v23);
  v6 = v5;
  v7 = *(a1 + 8);
  v8 = v5 + 32 * v7;
  v9 = *(a2 + 24);
  if (v9)
  {
    if (v9 == a2)
    {
      *(v8 + 24) = v8;
      (*(**(a2 + 24) + 24))(*(a2 + 24));
      v7 = *(a1 + 8);
      v10 = *a1;
      if (!v7)
      {
        goto LABEL_23;
      }
    }

    else
    {
      *(v8 + 24) = v9;
      *(a2 + 24) = 0;
      v10 = *a1;
      if (!v7)
      {
        goto LABEL_23;
      }
    }
  }

  else
  {
    *(v8 + 24) = 0;
    v10 = *a1;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  v11 = 32 * v7;
  v12 = v6;
  do
  {
    v13 = v10[3];
    if (v13)
    {
      if (v10 == v13)
      {
        *(v12 + 24) = v12;
        (*(*v10[3] + 24))(v10[3], v12);
      }

      else
      {
        *(v12 + 24) = v13;
        v10[3] = 0;
      }
    }

    else
    {
      *(v12 + 24) = 0;
    }

    v12 += 32;
    v10 += 4;
    v11 -= 32;
  }

  while (v11);
  v10 = *a1;
  v14 = *(a1 + 8);
  if (v14)
  {
    v15 = 4 * v14;
    v16 = &v10[v15 - 4];
    v17 = -(v15 * 8);
    v18 = v16;
    do
    {
      v19 = *(v18 + 24);
      if (v18 == v19)
      {
        (*(*v19 + 32))(v19);
      }

      else if (v19)
      {
        (*(*v19 + 40))(v19);
      }

      v18 -= 32;
      v16 -= 32;
      v17 += 32;
    }

    while (v17);
    v10 = *a1;
  }

LABEL_23:
  v20 = v23;
  if (v10 != v4)
  {
    free(v10);
  }

  *a1 = v6;
  v21 = (*(a1 + 8) + 1);
  *(a1 + 8) = v21;
  *(a1 + 12) = v20;
  return v6 + 32 * v21 - 32;
}

BOOL mlir::OperationPass<mlir::ModuleOp>::canScheduleOn(uint64_t a1, uint64_t a2)
{
  v6 = *(a2 + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v6);
  if ((*(a1 + 32) & 1) == 0 || v4 != *(a1 + 24))
  {
    return 0;
  }

  if (v4)
  {
    return memcmp(AttrData, *(a1 + 16), v4) == 0;
  }

  return 1;
}

uint64_t mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _OWORD *a5, _BYTE **a6)
{
  v29 = *MEMORY[0x1E69E9840];
  v23[0] = a3;
  v23[1] = a4;
  v26 = a2;
  v27 = 0;
  v8 = llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<BOOL>>(a1, v23, &v26, a5, a6);
  v9 = v8 + 192;
  *(v8 + 200) = 0;
  *v8 = &unk_1F5AFB1F0;
  *(v8 + 192) = &unk_1F5AFB270;
  v11 = a2[21];
  v10 = a2[22];
  if (v11 >= v10)
  {
    v13 = a2[20];
    v14 = v11 - v13;
    v15 = (v11 - v13) >> 3;
    v16 = v15 + 1;
    if ((v15 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v17 = v10 - v13;
    if (v17 >> 2 > v16)
    {
      v16 = v17 >> 2;
    }

    if (v17 >= 0x7FFFFFFFFFFFFFF8)
    {
      v18 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v16;
    }

    if (v18)
    {
      if (v18 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v19 = operator new(8 * v18);
    }

    else
    {
      v19 = 0;
    }

    v20 = &v19[8 * v15];
    *v20 = v9;
    v12 = v20 + 1;
    memcpy(v19, v13, v14);
    a2[20] = v19;
    a2[21] = v12;
    a2[22] = &v19[8 * v18];
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v11 = v9;
    v12 = v11 + 8;
  }

  a2[21] = v12;
  v24[0] = &unk_1F5AF2660;
  v24[1] = a1;
  v28 = &v26;
  v25 = v24;
  v26 = &unk_1F5AF2660;
  v27 = a1;
  std::__function::__value_func<void ()(BOOL const&)>::swap[abi:nn200100](&v26, a1 + 160);
  if (v28 != &v26)
  {
    if (v28)
    {
      (*(*v28 + 5))();
    }

    v21 = v25;
    if (v25 != v24)
    {
      goto LABEL_19;
    }

LABEL_22:
    (*(*v21 + 32))(v21);
    return a1;
  }

  (*(*v28 + 4))(v28);
  v21 = v25;
  if (v25 == v24)
  {
    goto LABEL_22;
  }

LABEL_19:
  if (v21)
  {
    (*(*v21 + 40))(v21);
  }

  return a1;
}

void *mlir::Pass::Option<BOOL,llvm::cl::parser<BOOL>>::~Option(void *a1)
{
  *a1 = &unk_1F5B3E720;
  v2 = a1 + 20;
  v3 = a1[23];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *a1 = &unk_1F5B3E1D8;
    v4 = a1[12];
    if (v4 != a1[11])
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *a1 = &unk_1F5B3E1D8;
    v4 = a1[12];
    if (v4 != a1[11])
    {
      goto LABEL_5;
    }
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  return a1;
}

void mlir::Pass::Option<BOOL,llvm::cl::parser<BOOL>>::~Option(char *__p)
{
  *__p = &unk_1F5B3E720;
  v2 = __p + 160;
  v3 = *(__p + 23);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *__p = &unk_1F5B3E1D8;
    v4 = *(__p + 12);
    if (v4 != *(__p + 11))
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *__p = &unk_1F5B3E1D8;
    v4 = *(__p + 12);
    if (v4 != *(__p + 11))
    {
      goto LABEL_5;
    }
  }

  v5 = *(__p + 8);
  if (v5 != __p + 80)
  {
    free(v5);
  }

  operator delete(__p);
}

void *mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::print(uint64_t a1, llvm::raw_ostream *this)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(this + 4);
  if (v5 <= *(this + 3) - v6)
  {
    if (v5)
    {
      v8 = v5;
      memcpy(v6, v4, v5);
      v6 = (*(this + 4) + v8);
      *(this + 4) = v6;
    }

    v7 = this;
    if (v6 >= *(this + 3))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = llvm::raw_ostream::write(this, v4, v5);
    v6 = *(v7 + 4);
    if (v6 >= *(v7 + 3))
    {
LABEL_3:
      llvm::raw_ostream::write(v7, 61);
      goto LABEL_8;
    }
  }

  *(v7 + 4) = v6 + 1;
  *v6 = 61;
LABEL_8:
  v9 = *(a1 + 128) == 0;
  if (*(a1 + 128))
  {
    v10 = 4;
  }

  else
  {
    v10 = 5;
  }

  if (v9)
  {
    v11 = "false";
  }

  else
  {
    v11 = "true";
  }

  v12 = *(this + 4);
  if (v10 <= *(this + 3) - v12)
  {
    result = memcpy(v12, v11, v10);
    *(this + 4) += v10;
  }

  else
  {

    return llvm::raw_ostream::write(this, v11, v10);
  }

  return result;
}

uint64_t mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::copyValueFrom(uint64_t result, uint64_t a2)
{
  *(result + 128) = *(a2 - 64);
  *(result + 200) = *(a2 + 8);
  return result;
}

void non-virtual thunk tomlir::Pass::Option<BOOL,llvm::cl::parser<BOOL>>::~Option(uint64_t a1)
{
  *(a1 - 192) = &unk_1F5B3E720;
  v2 = a1 - 32;
  v3 = *(a1 - 8);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *(a1 - 192) = &unk_1F5B3E1D8;
    v4 = *(a1 - 96);
    if (v4 != *(a1 - 104))
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *(a1 - 192) = &unk_1F5B3E1D8;
    v4 = *(a1 - 96);
    if (v4 != *(a1 - 104))
    {
      goto LABEL_5;
    }
  }

  v5 = *(a1 - 128);
  if (v5 != (a1 - 112))
  {

    free(v5);
  }
}

{
  v2 = (a1 - 192);
  *(a1 - 192) = &unk_1F5B3E720;
  v3 = a1 - 32;
  v4 = *(a1 - 8);
  if (v4 == v3)
  {
    (*(*v4 + 32))(v4);
    *(a1 - 192) = &unk_1F5B3E1D8;
    v5 = *(a1 - 96);
    if (v5 != *(a1 - 104))
    {
LABEL_5:
      free(v5);
    }
  }

  else
  {
    if (v4)
    {
      (*(*v4 + 40))(v4);
    }

    *(a1 - 192) = &unk_1F5B3E1D8;
    v5 = *(a1 - 96);
    if (v5 != *(a1 - 104))
    {
      goto LABEL_5;
    }
  }

  v6 = *(a1 - 128);
  if (v6 != (a1 - 112))
  {
    free(v6);
  }

  operator delete(v2);
}

void *non-virtual thunk tomlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::print(uint64_t a1, llvm::raw_ostream *this)
{
  v4 = *(a1 - 176);
  v5 = *(a1 - 168);
  v6 = *(this + 4);
  if (v5 <= *(this + 3) - v6)
  {
    if (v5)
    {
      v8 = v5;
      memcpy(v6, v4, v5);
      v6 = (*(this + 4) + v8);
      *(this + 4) = v6;
    }

    v7 = this;
    if (v6 >= *(this + 3))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = llvm::raw_ostream::write(this, v4, v5);
    v6 = *(v7 + 4);
    if (v6 >= *(v7 + 3))
    {
LABEL_3:
      llvm::raw_ostream::write(v7, 61);
      goto LABEL_8;
    }
  }

  *(v7 + 4) = v6 + 1;
  *v6 = 61;
LABEL_8:
  v9 = *(a1 - 64) == 0;
  if (*(a1 - 64))
  {
    v10 = 4;
  }

  else
  {
    v10 = 5;
  }

  if (v9)
  {
    v11 = "false";
  }

  else
  {
    v11 = "true";
  }

  v12 = *(this + 4);
  if (v10 <= *(this + 3) - v12)
  {
    result = memcpy(v12, v11, v10);
    *(this + 4) += v10;
  }

  else
  {

    return llvm::raw_ostream::write(this, v11, v10);
  }

  return result;
}

uint64_t non-virtual thunk tomlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::copyValueFrom(uint64_t result, uint64_t a2)
{
  *(result - 64) = *(a2 - 64);
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<BOOL>>(uint64_t a1, uint64_t *a2, const void **a3, _OWORD *a4, _BYTE **a5)
{
  *a1 = &unk_1F5B3E1D8;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  v10 = a1 + 80;
  *(a1 + 64) = a1 + 80;
  v11 = a1 + 64;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = 0x100000000;
  *(a1 + 88) = a1 + 120;
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v13 = *(a1 + 72);
  if (v13 >= *(a1 + 76))
  {
    v16 = GeneralCategory;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v11, v10, v13 + 1, 8);
    GeneralCategory = v16;
    LODWORD(v13) = *(a1 + 72);
  }

  *(*(a1 + 64) + 8 * v13) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 128) = 0;
  *(a1 + 136) = &unk_1F5AFB2B0;
  *(a1 + 144) = 0;
  *a1 = &unk_1F5B3E720;
  *(a1 + 152) = &unk_1F5B3E320;
  *(a1 + 160) = &unk_1F5AFB2D0;
  *(a1 + 184) = a1 + 160;
  llvm::cl::Option::setArgStr(a1, *a2, a2[1]);
  llvm::cl::sub::apply<llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>>(a3, a1);
  *(a1 + 32) = *a4;
  v14 = *a5;
  *(a1 + 128) = **a5;
  *(a1 + 145) = 1;
  *(a1 + 144) = *v14;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

void *mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::~Option(void *a1)
{
  *a1 = &unk_1F5B3E720;
  v2 = a1 + 20;
  v3 = a1[23];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *a1 = &unk_1F5B3E1D8;
    v4 = a1[12];
    if (v4 != a1[11])
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *a1 = &unk_1F5B3E1D8;
    v4 = a1[12];
    if (v4 != a1[11])
    {
      goto LABEL_5;
    }
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  return a1;
}

void mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::~Option(char *__p)
{
  *__p = &unk_1F5B3E720;
  v2 = __p + 160;
  v3 = *(__p + 23);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *__p = &unk_1F5B3E1D8;
    v4 = *(__p + 12);
    if (v4 != *(__p + 11))
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *__p = &unk_1F5B3E1D8;
    v4 = *(__p + 12);
    if (v4 != *(__p + 11))
    {
      goto LABEL_5;
    }
  }

  v5 = *(__p + 8);
  if (v5 != __p + 80)
  {
    free(v5);
  }

  operator delete(__p);
}

void non-virtual thunk tomlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::~Option(uint64_t a1)
{
  *(a1 - 192) = &unk_1F5B3E720;
  v2 = a1 - 32;
  v3 = *(a1 - 8);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *(a1 - 192) = &unk_1F5B3E1D8;
    v4 = *(a1 - 96);
    if (v4 != *(a1 - 104))
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *(a1 - 192) = &unk_1F5B3E1D8;
    v4 = *(a1 - 96);
    if (v4 != *(a1 - 104))
    {
      goto LABEL_5;
    }
  }

  v5 = *(a1 - 128);
  if (v5 != (a1 - 112))
  {

    free(v5);
  }
}

{
  v2 = (a1 - 192);
  *(a1 - 192) = &unk_1F5B3E720;
  v3 = a1 - 32;
  v4 = *(a1 - 8);
  if (v4 == v3)
  {
    (*(*v4 + 32))(v4);
    *(a1 - 192) = &unk_1F5B3E1D8;
    v5 = *(a1 - 96);
    if (v5 != *(a1 - 104))
    {
LABEL_5:
      free(v5);
    }
  }

  else
  {
    if (v4)
    {
      (*(*v4 + 40))(v4);
    }

    *(a1 - 192) = &unk_1F5B3E1D8;
    v5 = *(a1 - 96);
    if (v5 != *(a1 - 104))
    {
      goto LABEL_5;
    }
  }

  v6 = *(a1 - 128);
  if (v6 != (a1 - 112))
  {
    free(v6);
  }

  operator delete(v2);
}

void *std::__function::__func<llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::{lambda(BOOL const&)#1},std::allocator<llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::{lambda(BOOL const&)#1}>,void ()(BOOL const&)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F5AFB2D0;
  return result;
}

const void **llvm::cl::sub::apply<llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>>(const void **result, uint64_t a2)
{
  v3 = *result;
  if (!*result)
  {
    v5 = result[1];
    if (!v5)
    {
      return result;
    }

    v6 = *(v5 + 2);
    if (!v6)
    {
      return result;
    }

    v7 = *v5;
    v8 = &(*v5)[v6];
    while (1)
    {
      v9 = *v7;
      v10 = *(a2 + 88);
      if (*(a2 + 96) != v10)
      {
        goto LABEL_9;
      }

      v11 = *(a2 + 108);
      if (v11)
      {
        v12 = 8 * v11;
        v13 = *(a2 + 88);
        while (*v13 != v9)
        {
          ++v13;
          v12 -= 8;
          if (!v12)
          {
            goto LABEL_16;
          }
        }

        goto LABEL_10;
      }

LABEL_16:
      if (v11 < *(a2 + 104))
      {
        *(a2 + 108) = v11 + 1;
        *(v10 + 8 * v11) = v9;
      }

      else
      {
LABEL_9:
        result = llvm::SmallPtrSetImplBase::insert_imp_big((a2 + 88), v9);
      }

LABEL_10:
      if (++v7 == v8)
      {
        return result;
      }
    }
  }

  v4 = *(a2 + 88);
  result = (a2 + 88);
  if (*(a2 + 96) != v4)
  {
LABEL_3:

    return llvm::SmallPtrSetImplBase::insert_imp_big(result, v3);
  }

  v14 = *(a2 + 108);
  if (!v14)
  {
LABEL_22:
    if (v14 < *(a2 + 104))
    {
      *(a2 + 108) = v14 + 1;
      *(v4 + 8 * v14) = v3;
      return result;
    }

    goto LABEL_3;
  }

  v15 = 8 * v14;
  v16 = *(a2 + 88);
  while (*v16 != v3)
  {
    ++v16;
    v15 -= 8;
    if (!v15)
    {
      goto LABEL_22;
    }
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(BOOL const&)>::swap[abi:nn200100](uint64_t result, uint64_t a2)
{
  v8[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v2 = *(result + 24);
    v3 = *(a2 + 24);
    if (v2 == result)
    {
      if (v3 == a2)
      {
        v7 = result;
        (*(*v2 + 24))(*(result + 24), v8);
        (*(**(v7 + 24) + 32))(*(v7 + 24));
        *(v7 + 24) = 0;
        (*(**(a2 + 24) + 24))(*(a2 + 24), v7);
        (*(**(a2 + 24) + 32))(*(a2 + 24));
        *(a2 + 24) = 0;
        *(v7 + 24) = v7;
        (*(v8[0] + 24))(v8, a2);
        result = (*(v8[0] + 32))(v8);
        *(a2 + 24) = a2;
        return result;
      }

      v4 = result;
      v5 = a2;
      (*(*v2 + 24))(*(result + 24));
    }

    else
    {
      if (v3 != a2)
      {
        *(result + 24) = v3;
        *(a2 + 24) = v2;
        return result;
      }

      v5 = result;
      v4 = a2;
      (*(*v3 + 24))(*(a2 + 24), result);
    }

    result = (*(**(v4 + 24) + 32))(*(v4 + 24));
    *(v4 + 24) = *(v5 + 24);
    *(v5 + 24) = v5;
  }

  return result;
}

void *_ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionIbN4llvm2cl6parserIbEEEC1IJNS7_4descENS7_11initializerIbEEEEERS4_NS6_9StringRefEDpOT_EUlRKT_E_NS_9allocatorISN_EEFvRKbEE7__cloneEv(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F5AF2660;
  result[1] = v3;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionIbN4llvm2cl6parserIbEEEC1IJNS7_4descENS7_11initializerIbEEEEERS4_NS6_9StringRefEDpOT_EUlRKT_E_NS_9allocatorISN_EEFvRKbEE7__cloneEPNS0_6__baseISS_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5AF2660;
  a2[1] = v2;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionIbN4llvm2cl6parserIbEEEC1IJNS7_4descENS7_11initializerIbEEEEERS4_NS6_9StringRefEDpOT_EUlRKT_E_NS_9allocatorISN_EEFvRKbEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir6detail11PassOptions6OptionIbN4llvm2cl6parserIbEEEC1IJNS4_4descENS4_11initializerIbEEEEERS1_NS3_9StringRefEDpOT_EUlRKT_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir6detail11PassOptions6OptionIbN4llvm2cl6parserIbEEEC1IJNS4_4descENS4_11initializerIbEEEEERS1_NS3_9StringRefEDpOT_EUlRKT_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir6detail11PassOptions6OptionIbN4llvm2cl6parserIbEEEC1IJNS4_4descENS4_11initializerIbEEEEERS1_NS3_9StringRefEDpOT_EUlRKT_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir6detail11PassOptions6OptionIbN4llvm2cl6parserIbEEEC1IJNS4_4descENS4_11initializerIbEEEEERS1_NS3_9StringRefEDpOT_EUlRKT_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t mlir::detail::PassOptions::Option<unsigned int,llvm::cl::parser<unsigned int>>::Option<llvm::cl::desc,llvm::cl::initializer<int>>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _OWORD *a5, int **a6)
{
  v29 = *MEMORY[0x1E69E9840];
  v23[0] = a3;
  v23[1] = a4;
  v26 = a2;
  v27 = 0;
  v8 = llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<int>>(a1, v23, &v26, a5, a6);
  v9 = v8 + 192;
  *(v8 + 200) = 0;
  *v8 = &unk_1F5AFEF28;
  *(v8 + 192) = &unk_1F5AFEFA8;
  v11 = a2[21];
  v10 = a2[22];
  if (v11 >= v10)
  {
    v13 = a2[20];
    v14 = v11 - v13;
    v15 = (v11 - v13) >> 3;
    v16 = v15 + 1;
    if ((v15 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v17 = v10 - v13;
    if (v17 >> 2 > v16)
    {
      v16 = v17 >> 2;
    }

    if (v17 >= 0x7FFFFFFFFFFFFFF8)
    {
      v18 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v16;
    }

    if (v18)
    {
      if (v18 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v19 = operator new(8 * v18);
    }

    else
    {
      v19 = 0;
    }

    v20 = &v19[8 * v15];
    *v20 = v9;
    v12 = v20 + 1;
    memcpy(v19, v13, v14);
    a2[20] = v19;
    a2[21] = v12;
    a2[22] = &v19[8 * v18];
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v11 = v9;
    v12 = v11 + 8;
  }

  a2[21] = v12;
  v24[0] = &unk_1F5AF26F0;
  v24[1] = a1;
  v28 = &v26;
  v25 = v24;
  v26 = &unk_1F5AF26F0;
  v27 = a1;
  std::__function::__value_func<void ()(unsigned int const&)>::swap[abi:nn200100](&v26, a1 + 160);
  if (v28 != &v26)
  {
    if (v28)
    {
      (*(*v28 + 5))();
    }

    v21 = v25;
    if (v25 != v24)
    {
      goto LABEL_19;
    }

LABEL_22:
    (*(*v21 + 32))(v21);
    return a1;
  }

  (*(*v28 + 4))(v28);
  v21 = v25;
  if (v25 == v24)
  {
    goto LABEL_22;
  }

LABEL_19:
  if (v21)
  {
    (*(*v21 + 40))(v21);
  }

  return a1;
}

void *mlir::Pass::Option<unsigned int,llvm::cl::parser<unsigned int>>::~Option(void *a1)
{
  *a1 = &unk_1F5B3E5A8;
  v2 = a1 + 20;
  v3 = a1[23];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *a1 = &unk_1F5B3E1D8;
    v4 = a1[12];
    if (v4 != a1[11])
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *a1 = &unk_1F5B3E1D8;
    v4 = a1[12];
    if (v4 != a1[11])
    {
      goto LABEL_5;
    }
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  return a1;
}

void mlir::Pass::Option<unsigned int,llvm::cl::parser<unsigned int>>::~Option(char *__p)
{
  *__p = &unk_1F5B3E5A8;
  v2 = __p + 160;
  v3 = *(__p + 23);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *__p = &unk_1F5B3E1D8;
    v4 = *(__p + 12);
    if (v4 != *(__p + 11))
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *__p = &unk_1F5B3E1D8;
    v4 = *(__p + 12);
    if (v4 != *(__p + 11))
    {
      goto LABEL_5;
    }
  }

  v5 = *(__p + 8);
  if (v5 != __p + 80)
  {
    free(v5);
  }

  operator delete(__p);
}

llvm::raw_ostream *mlir::detail::PassOptions::Option<unsigned int,llvm::cl::parser<unsigned int>>::print(uint64_t a1, llvm::raw_ostream *this)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(this + 4);
  if (v5 <= *(this + 3) - v6)
  {
    if (v5)
    {
      v8 = v5;
      memcpy(v6, v4, v5);
      v6 = (*(this + 4) + v8);
      *(this + 4) = v6;
    }

    v7 = this;
    if (v6 >= *(this + 3))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = llvm::raw_ostream::write(this, v4, v5);
    v6 = *(v7 + 4);
    if (v6 >= *(v7 + 3))
    {
LABEL_3:
      llvm::raw_ostream::write(v7, 61);
      goto LABEL_8;
    }
  }

  *(v7 + 4) = v6 + 1;
  *v6 = 61;
LABEL_8:
  v9 = *(a1 + 128);

  return llvm::raw_ostream::operator<<(this, v9);
}

uint64_t mlir::detail::PassOptions::Option<unsigned int,llvm::cl::parser<unsigned int>>::copyValueFrom(uint64_t result, uint64_t a2)
{
  *(result + 128) = *(a2 - 64);
  *(result + 200) = *(a2 + 8);
  return result;
}

void non-virtual thunk tomlir::Pass::Option<unsigned int,llvm::cl::parser<unsigned int>>::~Option(uint64_t a1)
{
  *(a1 - 192) = &unk_1F5B3E5A8;
  v2 = a1 - 32;
  v3 = *(a1 - 8);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *(a1 - 192) = &unk_1F5B3E1D8;
    v4 = *(a1 - 96);
    if (v4 != *(a1 - 104))
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *(a1 - 192) = &unk_1F5B3E1D8;
    v4 = *(a1 - 96);
    if (v4 != *(a1 - 104))
    {
      goto LABEL_5;
    }
  }

  v5 = *(a1 - 128);
  if (v5 != (a1 - 112))
  {

    free(v5);
  }
}

{
  v2 = (a1 - 192);
  *(a1 - 192) = &unk_1F5B3E5A8;
  v3 = a1 - 32;
  v4 = *(a1 - 8);
  if (v4 == v3)
  {
    (*(*v4 + 32))(v4);
    *(a1 - 192) = &unk_1F5B3E1D8;
    v5 = *(a1 - 96);
    if (v5 != *(a1 - 104))
    {
LABEL_5:
      free(v5);
    }
  }

  else
  {
    if (v4)
    {
      (*(*v4 + 40))(v4);
    }

    *(a1 - 192) = &unk_1F5B3E1D8;
    v5 = *(a1 - 96);
    if (v5 != *(a1 - 104))
    {
      goto LABEL_5;
    }
  }

  v6 = *(a1 - 128);
  if (v6 != (a1 - 112))
  {
    free(v6);
  }

  operator delete(v2);
}

llvm::raw_ostream *non-virtual thunk tomlir::detail::PassOptions::Option<unsigned int,llvm::cl::parser<unsigned int>>::print(uint64_t a1, llvm::raw_ostream *this)
{
  v4 = *(a1 - 176);
  v5 = *(a1 - 168);
  v6 = *(this + 4);
  if (v5 <= *(this + 3) - v6)
  {
    if (v5)
    {
      v8 = v5;
      memcpy(v6, v4, v5);
      v6 = (*(this + 4) + v8);
      *(this + 4) = v6;
    }

    v7 = this;
    if (v6 >= *(this + 3))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = llvm::raw_ostream::write(this, v4, v5);
    v6 = *(v7 + 4);
    if (v6 >= *(v7 + 3))
    {
LABEL_3:
      llvm::raw_ostream::write(v7, 61);
      goto LABEL_8;
    }
  }

  *(v7 + 4) = v6 + 1;
  *v6 = 61;
LABEL_8:
  v9 = *(a1 - 64);

  return llvm::raw_ostream::operator<<(this, v9);
}

uint64_t non-virtual thunk tomlir::detail::PassOptions::Option<unsigned int,llvm::cl::parser<unsigned int>>::copyValueFrom(uint64_t result, uint64_t a2)
{
  *(result - 64) = *(a2 - 64);
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::initializer<int>>(uint64_t a1, uint64_t *a2, const void **a3, _OWORD *a4, int **a5)
{
  *a1 = &unk_1F5B3E1D8;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  v10 = a1 + 80;
  *(a1 + 64) = a1 + 80;
  v11 = a1 + 64;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = 0x100000000;
  *(a1 + 88) = a1 + 120;
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v13 = *(a1 + 72);
  if (v13 >= *(a1 + 76))
  {
    v16 = GeneralCategory;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v11, v10, v13 + 1, 8);
    GeneralCategory = v16;
    LODWORD(v13) = *(a1 + 72);
  }

  *(*(a1 + 64) + 8 * v13) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 128) = 0;
  *(a1 + 136) = &unk_1F5AFEFE8;
  *(a1 + 144) = 0;
  *a1 = &unk_1F5B3E5A8;
  *(a1 + 152) = &unk_1F5B3E440;
  *(a1 + 160) = &unk_1F5AFF008;
  *(a1 + 184) = a1 + 160;
  llvm::cl::Option::setArgStr(a1, *a2, a2[1]);
  llvm::cl::sub::apply<llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>>(a3, a1);
  *(a1 + 32) = *a4;
  v14 = **a5;
  *(a1 + 128) = v14;
  *(a1 + 148) = 1;
  *(a1 + 144) = v14;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

void *mlir::detail::PassOptions::Option<unsigned int,llvm::cl::parser<unsigned int>>::~Option(void *a1)
{
  *a1 = &unk_1F5B3E5A8;
  v2 = a1 + 20;
  v3 = a1[23];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *a1 = &unk_1F5B3E1D8;
    v4 = a1[12];
    if (v4 != a1[11])
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *a1 = &unk_1F5B3E1D8;
    v4 = a1[12];
    if (v4 != a1[11])
    {
      goto LABEL_5;
    }
  }

  v5 = a1[8];
  if (v5 != a1 + 10)
  {
    free(v5);
  }

  return a1;
}

void mlir::detail::PassOptions::Option<unsigned int,llvm::cl::parser<unsigned int>>::~Option(char *__p)
{
  *__p = &unk_1F5B3E5A8;
  v2 = __p + 160;
  v3 = *(__p + 23);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *__p = &unk_1F5B3E1D8;
    v4 = *(__p + 12);
    if (v4 != *(__p + 11))
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *__p = &unk_1F5B3E1D8;
    v4 = *(__p + 12);
    if (v4 != *(__p + 11))
    {
      goto LABEL_5;
    }
  }

  v5 = *(__p + 8);
  if (v5 != __p + 80)
  {
    free(v5);
  }

  operator delete(__p);
}

void non-virtual thunk tomlir::detail::PassOptions::Option<unsigned int,llvm::cl::parser<unsigned int>>::~Option(uint64_t a1)
{
  *(a1 - 192) = &unk_1F5B3E5A8;
  v2 = a1 - 32;
  v3 = *(a1 - 8);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *(a1 - 192) = &unk_1F5B3E1D8;
    v4 = *(a1 - 96);
    if (v4 != *(a1 - 104))
    {
LABEL_5:
      free(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *(a1 - 192) = &unk_1F5B3E1D8;
    v4 = *(a1 - 96);
    if (v4 != *(a1 - 104))
    {
      goto LABEL_5;
    }
  }

  v5 = *(a1 - 128);
  if (v5 != (a1 - 112))
  {

    free(v5);
  }
}

{
  v2 = (a1 - 192);
  *(a1 - 192) = &unk_1F5B3E5A8;
  v3 = a1 - 32;
  v4 = *(a1 - 8);
  if (v4 == v3)
  {
    (*(*v4 + 32))(v4);
    *(a1 - 192) = &unk_1F5B3E1D8;
    v5 = *(a1 - 96);
    if (v5 != *(a1 - 104))
    {
LABEL_5:
      free(v5);
    }
  }

  else
  {
    if (v4)
    {
      (*(*v4 + 40))(v4);
    }

    *(a1 - 192) = &unk_1F5B3E1D8;
    v5 = *(a1 - 96);
    if (v5 != *(a1 - 104))
    {
      goto LABEL_5;
    }
  }

  v6 = *(a1 - 128);
  if (v6 != (a1 - 112))
  {
    free(v6);
  }

  operator delete(v2);
}

void *std::__function::__func<llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::{lambda(unsigned int const&)#1},std::allocator<llvm::cl::opt<unsigned int,false,llvm::cl::parser<unsigned int>>::{lambda(unsigned int const&)#1}>,void ()(unsigned int const&)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F5AFF008;
  return result;
}

uint64_t std::__function::__value_func<void ()(unsigned int const&)>::swap[abi:nn200100](uint64_t result, uint64_t a2)
{
  v8[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v2 = *(result + 24);
    v3 = *(a2 + 24);
    if (v2 == result)
    {
      if (v3 == a2)
      {
        v7 = result;
        (*(*v2 + 24))(*(result + 24), v8);
        (*(**(v7 + 24) + 32))(*(v7 + 24));
        *(v7 + 24) = 0;
        (*(**(a2 + 24) + 24))(*(a2 + 24), v7);
        (*(**(a2 + 24) + 32))(*(a2 + 24));
        *(a2 + 24) = 0;
        *(v7 + 24) = v7;
        (*(v8[0] + 24))(v8, a2);
        result = (*(v8[0] + 32))(v8);
        *(a2 + 24) = a2;
        return result;
      }

      v4 = result;
      v5 = a2;
      (*(*v2 + 24))(*(result + 24));
    }

    else
    {
      if (v3 != a2)
      {
        *(result + 24) = v3;
        *(a2 + 24) = v2;
        return result;
      }

      v5 = result;
      v4 = a2;
      (*(*v3 + 24))(*(a2 + 24), result);
    }

    result = (*(**(v4 + 24) + 32))(*(v4 + 24));
    *(v4 + 24) = *(v5 + 24);
    *(v5 + 24) = v5;
  }

  return result;
}

void *_ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionIjN4llvm2cl6parserIjEEEC1IJNS7_4descENS7_11initializerIiEEEEERS4_NS6_9StringRefEDpOT_EUlRKT_E_NS_9allocatorISN_EEFvRKjEE7__cloneEv(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F5AF26F0;
  result[1] = v3;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionIjN4llvm2cl6parserIjEEEC1IJNS7_4descENS7_11initializerIiEEEEERS4_NS6_9StringRefEDpOT_EUlRKT_E_NS_9allocatorISN_EEFvRKjEE7__cloneEPNS0_6__baseISS_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5AF26F0;
  a2[1] = v2;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionIjN4llvm2cl6parserIjEEEC1IJNS7_4descENS7_11initializerIiEEEEERS4_NS6_9StringRefEDpOT_EUlRKT_E_NS_9allocatorISN_EEFvRKjEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir6detail11PassOptions6OptionIjN4llvm2cl6parserIjEEEC1IJNS4_4descENS4_11initializerIiEEEEERS1_NS3_9StringRefEDpOT_EUlRKT_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir6detail11PassOptions6OptionIjN4llvm2cl6parserIjEEEC1IJNS4_4descENS4_11initializerIiEEEEERS1_NS3_9StringRefEDpOT_EUlRKT_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir6detail11PassOptions6OptionIjN4llvm2cl6parserIjEEEC1IJNS4_4descENS4_11initializerIiEEEEERS1_NS3_9StringRefEDpOT_EUlRKT_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir6detail11PassOptions6OptionIjN4llvm2cl6parserIjEEEC1IJNS4_4descENS4_11initializerIiEEEEERS1_NS3_9StringRefEDpOT_EUlRKT_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void mlir::Pass::Option<std::string,llvm::cl::parser<std::string>>::~Option(uint64_t a1)
{
  v1 = mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(a1);

  operator delete(v1);
}

void *mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::print(uint64_t a1, llvm::raw_ostream *this)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(this + 4);
  if (v5 <= *(this + 3) - v6)
  {
    if (v5)
    {
      v8 = v5;
      memcpy(v6, v4, v5);
      v6 = (*(this + 4) + v8);
      *(this + 4) = v6;
    }

    v7 = this;
    if (v6 >= *(this + 3))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = llvm::raw_ostream::write(this, v4, v5);
    v6 = *(v7 + 4);
    if (v6 >= *(v7 + 3))
    {
LABEL_3:
      llvm::raw_ostream::write(v7, 61);
      goto LABEL_8;
    }
  }

  *(v7 + 4) = v6 + 1;
  *v6 = 61;
LABEL_8:

  return mlir::detail::PassOptions::printValue<std::string,llvm::cl::parser<std::string>>(this, a1 + 192, (a1 + 128));
}

std::string *mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::copyValueFrom(uint64_t a1, uint64_t a2)
{
  result = std::string::operator=((a1 + 128), (a2 - 104));
  *(a1 + 240) = *(a2 + 8);
  return result;
}

void non-virtual thunk tomlir::Pass::Option<std::string,llvm::cl::parser<std::string>>::~Option(uint64_t a1)
{
  v1 = mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(a1 - 232);

  operator delete(v1);
}

void *non-virtual thunk tomlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::print(uint64_t a1, llvm::raw_ostream *this)
{
  v4 = *(a1 - 216);
  v5 = *(a1 - 208);
  v6 = *(this + 4);
  if (v5 <= *(this + 3) - v6)
  {
    if (v5)
    {
      v8 = v5;
      memcpy(v6, v4, v5);
      v6 = (*(this + 4) + v8);
      *(this + 4) = v6;
    }

    v7 = this;
    if (v6 >= *(this + 3))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = llvm::raw_ostream::write(this, v4, v5);
    v6 = *(v7 + 4);
    if (v6 >= *(v7 + 3))
    {
LABEL_3:
      llvm::raw_ostream::write(v7, 61);
      goto LABEL_8;
    }
  }

  *(v7 + 4) = v6 + 1;
  *v6 = 61;
LABEL_8:

  return mlir::detail::PassOptions::printValue<std::string,llvm::cl::parser<std::string>>(this, a1 - 40, (a1 - 104));
}

std::string *non-virtual thunk tomlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::copyValueFrom(uint64_t a1, uint64_t a2)
{
  result = std::string::operator=((a1 - 104), (a2 - 104));
  *(a1 + 8) = *(a2 + 8);
  return result;
}

void mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(uint64_t a1)
{
  v1 = mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(a1);

  operator delete(v1);
}

void non-virtual thunk tomlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(uint64_t a1)
{
  v1 = mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(a1 - 232);

  operator delete(v1);
}

BOOL llvm::cl::OptionValueCopy<std::string>::compare(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 32) != 1 || *(a1 + 32) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 31);
  if (v2 >= 0)
  {
    v3 = *(a1 + 31);
  }

  else
  {
    v3 = *(a1 + 16);
  }

  v4 = *(a2 + 31);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 16);
  }

  if (v3 != v4)
  {
    return 0;
  }

  v8 = *(a1 + 8);
  v6 = (a1 + 8);
  v7 = v8;
  if (v2 < 0)
  {
    v6 = v7;
  }

  if (v5 >= 0)
  {
    v9 = (a2 + 8);
  }

  else
  {
    v9 = *(a2 + 8);
  }

  return memcmp(v6, v9, v3) == 0;
}

void *std::__function::__func<llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::{lambda(std::string const&)#1},std::allocator<llvm::cl::opt<std::string,false,llvm::cl::parser<std::string>>::{lambda(std::string const&)#1}>,void ()(std::string const&)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F5AFCAD0;
  return result;
}

uint64_t std::__function::__value_func<void ()(std::string const&)>::swap[abi:nn200100](uint64_t result, uint64_t a2)
{
  v8[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v2 = *(result + 24);
    v3 = *(a2 + 24);
    if (v2 == result)
    {
      if (v3 == a2)
      {
        v7 = result;
        (*(*v2 + 24))(*(result + 24), v8);
        (*(**(v7 + 24) + 32))(*(v7 + 24));
        *(v7 + 24) = 0;
        (*(**(a2 + 24) + 24))(*(a2 + 24), v7);
        (*(**(a2 + 24) + 32))(*(a2 + 24));
        *(a2 + 24) = 0;
        *(v7 + 24) = v7;
        (*(v8[0] + 24))(v8, a2);
        result = (*(v8[0] + 32))(v8);
        *(a2 + 24) = a2;
        return result;
      }

      v4 = result;
      v5 = a2;
      (*(*v2 + 24))(*(result + 24));
    }

    else
    {
      if (v3 != a2)
      {
        *(result + 24) = v3;
        *(a2 + 24) = v2;
        return result;
      }

      v5 = result;
      v4 = a2;
      (*(*v3 + 24))(*(a2 + 24), result);
    }

    result = (*(**(v4 + 24) + 32))(*(v4 + 24));
    *(v4 + 24) = *(v5 + 24);
    *(v5 + 24) = v5;
  }

  return result;
}

uint64_t mlir::detail::PassOptions::Option<std::string,llvm::cl::parser<std::string>>::~Option(uint64_t a1)
{
  *a1 = &unk_1F5B3E658;
  v2 = a1 + 200;
  v3 = *(a1 + 224);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *(a1 + 152) = &unk_1F5AFCAB0;
    if ((*(a1 + 183) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *(a1 + 152) = &unk_1F5AFCAB0;
    if ((*(a1 + 183) & 0x80000000) == 0)
    {
LABEL_5:
      if ((*(a1 + 151) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  operator delete(*(a1 + 160));
  if ((*(a1 + 151) & 0x80000000) == 0)
  {
LABEL_6:
    *a1 = &unk_1F5B3E1D8;
    v4 = *(a1 + 96);
    if (v4 == *(a1 + 88))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  operator delete(*(a1 + 128));
  *a1 = &unk_1F5B3E1D8;
  v4 = *(a1 + 96);
  if (v4 != *(a1 + 88))
  {
LABEL_7:
    free(v4);
  }

LABEL_8:
  v5 = *(a1 + 64);
  if (v5 != (a1 + 80))
  {
    free(v5);
  }

  return a1;
}

void *mlir::detail::PassOptions::printValue<std::string,llvm::cl::parser<std::string>>(void *a1, int a2, std::string *this)
{
  v5 = std::string::find(this, 32, 0);
  v6 = std::string::find(this, 123, 0);
  v7 = std::string::find(this, 39, 0);
  v8 = std::string::find(this, 34, 0);
  if (v7 >= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  if (v8 < v9)
  {
    v9 = v8;
  }

  if (v5 >= v9)
  {
    v11 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if (v11 >= 0)
    {
      v12 = this;
    }

    else
    {
      v12 = this->__r_.__value_.__r.__words[0];
    }

    if (v11 >= 0)
    {
      size = HIBYTE(this->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = this->__r_.__value_.__l.__size_;
    }

    v14 = a1;

    return llvm::raw_ostream::write(v14, v12, size);
  }

  v10 = a1[4];
  if (a1[3] == v10)
  {
    llvm::raw_ostream::write(a1, "{", 1uLL);
  }

  else
  {
    *v10 = 123;
    ++a1[4];
  }

  v16 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if (v16 >= 0)
  {
    v17 = this;
  }

  else
  {
    v17 = this->__r_.__value_.__r.__words[0];
  }

  if (v16 >= 0)
  {
    v18 = HIBYTE(this->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v18 = this->__r_.__value_.__l.__size_;
  }

  result = llvm::raw_ostream::write(a1, v17, v18);
  v19 = a1[4];
  if (a1[3] == v19)
  {
    v12 = "}";
    v14 = a1;
    size = 1;

    return llvm::raw_ostream::write(v14, v12, size);
  }

  *v19 = 125;
  ++a1[4];
  return result;
}

uint64_t mlir::detail::PassOptions::ListOption<std::string,llvm::cl::parser<std::string>>::ListOption<llvm::cl::desc>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  v22[0] = a3;
  v22[1] = a4;
  v21[0] = a2;
  v21[1] = 0;
  v7 = llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::list<llvm::StringRef,llvm::cl::sub,llvm::cl::desc>(a1, v22, v21, a5);
  v8 = v7 + 248;
  *(v7 + 256) = 0;
  *v7 = &unk_1F5B008F8;
  *(v7 + 248) = &unk_1F5B00978;
  *(v7 + 264) = &unk_1F5B3E560;
  v10 = a2[21];
  v9 = a2[22];
  if (v10 >= v9)
  {
    v12 = a2[20];
    v13 = v10 - v12;
    v14 = (v10 - v12) >> 3;
    v15 = v14 + 1;
    if ((v14 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v16 = v9 - v12;
    if (v16 >> 2 > v15)
    {
      v15 = v16 >> 2;
    }

    if (v16 >= 0x7FFFFFFFFFFFFFF8)
    {
      v17 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 = v15;
    }

    if (v17)
    {
      if (v17 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v18 = operator new(8 * v17);
    }

    else
    {
      v18 = 0;
    }

    v19 = &v18[8 * v14];
    *v19 = v8;
    v11 = v19 + 1;
    memcpy(v18, v12, v13);
    a2[20] = v18;
    a2[21] = v11;
    a2[22] = &v18[8 * v17];
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v10 = v8;
    v11 = v10 + 8;
  }

  a2[21] = v11;
  return a1;
}

BOOL mlir::detail::PassOptions::ListOption<std::string,llvm::cl::parser<std::string>>::handleOccurrence(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (*(a1 + 176) == 1)
  {
    *(a1 + 192) = *(a1 + 184);
    v11 = *(a1 + 128);
    v12 = *(a1 + 136);
    while (v12 != v11)
    {
      v13 = *(v12 - 1);
      v12 -= 3;
      if (v13 < 0)
      {
        operator delete(*v12);
      }
    }

    *(a1 + 136) = v11;
    *(a1 + 176) = 0;
  }

  *(a1 + 256) = 1;
  v15 = a1;
  v16[0] = a1 + 264;
  v17[0] = a3;
  v17[1] = a4;
  v16[1] = a1;
  v16[2] = v17;
  v16[3] = &v15;
  return (mlir::detail::pass_options::parseCommaSeparatedList(a1, a3, a4, a5, a6, llvm::function_ref<llvm::LogicalResult ()(llvm::StringRef)>::callback_fn<llvm::LogicalResult mlir::detail::pass_options::parseCommaSeparatedList<llvm::cl::parser<std::string>,mlir::detail::PassOptions::ListOption<std::string,llvm::cl::parser<std::string>>::handleOccurrence(unsigned int,llvm::StringRef,llvm::StringRef)::{lambda(std::string const&)#1}>(llvm::cl::Option &,llvm::StringRef,llvm::StringRef,llvm::cl::parser<std::string> &,mlir::detail::PassOptions::ListOption<std::string,llvm::cl::parser<std::string>>::handleOccurrence(unsigned int,llvm::StringRef,llvm::StringRef)::{lambda(std::string const&)#1} &&)::{lambda(llvm::StringRef)#1}>, v16) & 1) == 0;
}

void mlir::Pass::ListOption<std::string,llvm::cl::parser<std::string>>::~ListOption(void *a1)
{
  v1 = llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::~list(a1);

  operator delete(v1);
}

void llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::setDefault(void *a1)
{
  v2 = (a1 + 16);
  v3 = a1[16];
  a1[24] = a1[23];
  v4 = a1[17];
  while (v4 != v3)
  {
    v5 = *(v4 - 1);
    v4 -= 3;
    if (v5 < 0)
    {
      operator delete(*v4);
    }
  }

  a1[17] = v3;
  v6 = a1[19];
  v7 = a1[20];
  while (v6 != v7)
  {
    if (v3 >= a1[18])
    {
      v3 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(v2, v6 + 8);
    }

    else
    {
      if (*(v6 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(v3, *(v6 + 8), *(v6 + 16));
      }

      else
      {
        v8 = *(v6 + 8);
        v3->__r_.__value_.__r.__words[2] = *(v6 + 24);
        *&v3->__r_.__value_.__l.__data_ = v8;
      }

      ++v3;
    }

    a1[17] = v3;
    v6 += 40;
  }
}

void *mlir::detail::PassOptions::ListOption<std::string,llvm::cl::parser<std::string>>::print(void *result, llvm::raw_ostream *this)
{
  if (result[17] == result[16])
  {
    return result;
  }

  v3 = result;
  v4 = result[2];
  v5 = result[3];
  result = *(this + 4);
  if (v5 > *(this + 3) - result)
  {
    v6 = llvm::raw_ostream::write(this, v4, v5);
    result = *(v6 + 4);
    if (*(v6 + 3) - result > 1uLL)
    {
      goto LABEL_4;
    }

LABEL_9:
    result = llvm::raw_ostream::write(v6, "={", 2uLL);
    v7 = v3[16];
    v8 = v3[17];
    if (v7 == v8)
    {
      goto LABEL_16;
    }

LABEL_10:
    result = mlir::detail::PassOptions::printValue<std::string,llvm::cl::parser<std::string>>(this, v3 + 208, v7);
    for (i = v7 + 1; i != v8; ++i)
    {
      v11 = *(this + 4);
      if (*(this + 3) == v11)
      {
        llvm::raw_ostream::write(this, ",", 1uLL);
      }

      else
      {
        *v11 = 44;
        ++*(this + 4);
      }

      result = mlir::detail::PassOptions::printValue<std::string,llvm::cl::parser<std::string>>(this, v3 + 208, i);
    }

    goto LABEL_16;
  }

  if (v5)
  {
    v9 = v5;
    memcpy(result, v4, v5);
    result = (*(this + 4) + v9);
    *(this + 4) = result;
  }

  v6 = this;
  if (*(this + 3) - result <= 1uLL)
  {
    goto LABEL_9;
  }

LABEL_4:
  *result = 31549;
  *(v6 + 4) += 2;
  v7 = v3[16];
  v8 = v3[17];
  if (v7 != v8)
  {
    goto LABEL_10;
  }

LABEL_16:
  v12 = *(this + 4);
  if (*(this + 3) == v12)
  {

    return llvm::raw_ostream::write(this, "}", 1uLL);
  }

  else
  {
    *v12 = 125;
    ++*(this + 4);
  }

  return result;
}

void mlir::detail::PassOptions::ListOption<std::string,llvm::cl::parser<std::string>>::copyValueFrom(uint64_t a1, uint64_t a2)
{
  std::vector<std::string>::__assign_with_size[abi:nn200100]<std::string const*,std::string const*>(a1 + 128, *(a2 - 120), *(a2 - 112), 0xAAAAAAAAAAAAAAABLL * ((*(a2 - 112) - *(a2 - 120)) >> 3));
  *(a1 + 256) = 1;
  *(a1 + 256) = *(a2 + 8);
}

void non-virtual thunk tomlir::Pass::ListOption<std::string,llvm::cl::parser<std::string>>::~ListOption(uint64_t a1)
{
  v1 = llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::~list((a1 - 248));

  operator delete(v1);
}

void non-virtual thunk tomlir::detail::PassOptions::ListOption<std::string,llvm::cl::parser<std::string>>::copyValueFrom(uint64_t a1, uint64_t a2)
{
  std::vector<std::string>::__assign_with_size[abi:nn200100]<std::string const*,std::string const*>(a1 - 120, *(a2 - 120), *(a2 - 112), 0xAAAAAAAAAAAAAAABLL * ((*(a2 - 112) - *(a2 - 120)) >> 3));
  *(a1 + 8) = 1;
  *(a1 + 8) = *(a2 + 8);
}

uint64_t llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::list<llvm::StringRef,llvm::cl::sub,llvm::cl::desc>(uint64_t a1, uint64_t *a2, const void **a3, _OWORD *a4)
{
  *a1 = &unk_1F5B3E1D8;
  *(a1 + 8) = 0;
  *(a1 + 10) = *(a1 + 10) & 0x8000 | 1;
  v8 = a1 + 80;
  *(a1 + 64) = a1 + 80;
  v9 = a1 + 64;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = 0x100000000;
  *(a1 + 88) = a1 + 120;
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v11 = *(a1 + 72);
  if (v11 >= *(a1 + 76))
  {
    v13 = GeneralCategory;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v9, v8, v11 + 1, 8);
    GeneralCategory = v13;
    LODWORD(v11) = *(a1 + 72);
  }

  *(*(a1 + 64) + 8 * v11) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *a1 = &unk_1F5B009B8;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 184) = 0;
  *(a1 + 208) = &unk_1F5B3E560;
  *(a1 + 216) = &unk_1F5B00A20;
  *(a1 + 240) = a1 + 216;
  llvm::cl::Option::setArgStr(a1, *a2, a2[1]);
  llvm::cl::sub::apply<llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>>(a3, a1);
  *(a1 + 32) = *a4;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

void mlir::detail::PassOptions::ListOption<std::string,llvm::cl::parser<std::string>>::~ListOption(void *a1)
{
  v1 = llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::~list(a1);

  operator delete(v1);
}

void non-virtual thunk tomlir::detail::PassOptions::ListOption<std::string,llvm::cl::parser<std::string>>::~ListOption(uint64_t a1)
{
  v1 = llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::~list((a1 - 248));

  operator delete(v1);
}

uint64_t llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::handleOccurrence(uint64_t a1, int a2, int a3, int a4, void *__src, size_t __len)
{
  __p[0] = 0;
  __p[1] = 0;
  v42 = 0;
  if (*(a1 + 176) == 1)
  {
    *(a1 + 192) = *(a1 + 184);
    v10 = *(a1 + 128);
    v11 = *(a1 + 136);
    while (v11 != v10)
    {
      v12 = *(v11 - 1);
      v11 -= 3;
      if (v12 < 0)
      {
        operator delete(*v11);
      }
    }

    *(a1 + 136) = v10;
    *(a1 + 176) = 0;
  }

  if (!__src)
  {
    __dst = 0uLL;
    v44 = 0;
    goto LABEL_20;
  }

  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_58;
  }

  if (__len >= 0x17)
  {
    if ((__len | 7) == 0x17)
    {
      v14 = 25;
    }

    else
    {
      v14 = (__len | 7) + 1;
    }

    p_dst = operator new(v14);
    *(&__dst + 1) = __len;
    v44 = v14 | 0x8000000000000000;
    *&__dst = p_dst;
LABEL_18:
    memmove(p_dst, __src, __len);
    *(p_dst + __len) = 0;
    if ((SHIBYTE(v42) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  HIBYTE(v44) = __len;
  p_dst = &__dst;
  if (__len)
  {
    goto LABEL_18;
  }

  LOBYTE(__dst) = 0;
  if ((SHIBYTE(v42) & 0x80000000) == 0)
  {
    goto LABEL_20;
  }

LABEL_19:
  operator delete(__p[0]);
LABEL_20:
  *__p = __dst;
  v42 = v44;
  v16 = *(a1 + 136);
  v15 = *(a1 + 144);
  if (v16 < v15)
  {
    if (SHIBYTE(v42) < 0)
    {
      std::string::__init_copy_ctor_external(*(a1 + 136), __p[0], __p[1]);
    }

    else
    {
      v17 = *__p;
      *(v16 + 16) = v42;
      *v16 = v17;
    }

    v18 = (v16 + 24);
    goto LABEL_39;
  }

  v19 = *(a1 + 128);
  v20 = v16 - v19;
  v21 = 0xAAAAAAAAAAAAAAABLL * (v20 >> 3) + 1;
  if (v21 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v22 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v19) >> 3);
  if (2 * v22 > v21)
  {
    v21 = 2 * v22;
  }

  if (v22 >= 0x555555555555555)
  {
    v23 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v23 = v21;
  }

  if (v23)
  {
    if (v23 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_59;
    }

    v24 = operator new(24 * v23);
    v25 = &v24[8 * (v20 >> 3)];
    v26 = &v24[24 * v23];
    if ((SHIBYTE(v42) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v25 = (8 * (v20 >> 3));
    v26 = 0;
    if ((SHIBYTE(v42) & 0x80000000) == 0)
    {
LABEL_33:
      *&v25->__r_.__value_.__l.__data_ = *__p;
      v25->__r_.__value_.__r.__words[2] = v42;
      goto LABEL_37;
    }
  }

  std::string::__init_copy_ctor_external(v25, __p[0], __p[1]);
  v19 = *(a1 + 128);
  v20 = *(a1 + 136) - v19;
LABEL_37:
  v18 = v25 + 1;
  v27 = v25 - v20;
  memcpy(v27, v19, v20);
  *(a1 + 128) = v27;
  *(a1 + 136) = v18;
  *(a1 + 144) = v26;
  if (v19)
  {
    operator delete(v19);
  }

LABEL_39:
  *(a1 + 136) = v18;
  *(a1 + 12) = a2;
  v29 = *(a1 + 192);
  v28 = *(a1 + 200);
  if (v29 < v28)
  {
    *v29 = a2;
    v30 = v29 + 4;
    goto LABEL_53;
  }

  v31 = *(a1 + 184);
  v32 = v29 - v31;
  v33 = (v29 - v31) >> 2;
  v34 = v33 + 1;
  if ((v33 + 1) >> 62)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v35 = v28 - v31;
  if (v35 >> 1 > v34)
  {
    v34 = v35 >> 1;
  }

  if (v35 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v36 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v36 = v34;
  }

  if (v36)
  {
    if (!(v36 >> 62))
    {
      v37 = operator new(4 * v36);
      goto LABEL_51;
    }

LABEL_59:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v37 = 0;
LABEL_51:
  v38 = &v37[4 * v33];
  *v38 = a2;
  v30 = v38 + 4;
  memcpy(v37, v31, v32);
  *(a1 + 184) = v37;
  *(a1 + 192) = v30;
  *(a1 + 200) = &v37[4 * v36];
  if (v31)
  {
    operator delete(v31);
  }

LABEL_53:
  *(a1 + 192) = v30;
  v39 = *(a1 + 240);
  if (!v39)
  {
    std::__throw_bad_function_call[abi:nn200100]();
LABEL_58:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  (*(*v39 + 48))(v39, __p);
  if (SHIBYTE(v42) < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::~list(void *a1)
{
  v1 = llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::~list(a1);

  operator delete(v1);
}

void *std::__function::__func<llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::{lambda(std::string const&)#1},std::allocator<llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::{lambda(std::string const&)#1}>,void ()(std::string const&)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F5B00A20;
  return result;
}

std::string *std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8) - *a1;
  v4 = 0xAAAAAAAAAAAAAAABLL * (v3 >> 3) + 1;
  if (v4 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - v2) >> 3) > v4)
  {
    v4 = 0x5555555555555556 * ((*(a1 + 16) - v2) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - v2) >> 3) >= 0x555555555555555)
  {
    v7 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v8 = operator new(24 * v7);
    v9 = &v8[8 * (v3 >> 3)];
    v10 = &v8[24 * v7];
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v9 = (8 * (v3 >> 3));
    v10 = 0;
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
LABEL_10:
      *&v9->__r_.__value_.__l.__data_ = *a2;
      v9->__r_.__value_.__r.__words[2] = *(a2 + 16);
      goto LABEL_13;
    }
  }

  std::string::__init_copy_ctor_external(v9, *a2, *(a2 + 8));
  v2 = *a1;
  v3 = *(a1 + 8) - *a1;
LABEL_13:
  v11 = v9 + 1;
  v12 = v9 - v3;
  memcpy(v12, v2, v3);
  *a1 = v12;
  *(a1 + 8) = v11;
  *(a1 + 16) = v10;
  if (v2)
  {
    operator delete(v2);
  }

  return v11;
}

void *llvm::cl::list<std::string,BOOL,llvm::cl::parser<std::string>>::~list(void *a1)
{
  *a1 = &unk_1F5B009B8;
  v2 = a1 + 27;
  v3 = a1[30];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = a1[23];
    if (v4)
    {
LABEL_5:
      a1[24] = v4;
      operator delete(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = a1[23];
    if (v4)
    {
      goto LABEL_5;
    }
  }

  v5 = a1[19];
  if (v5)
  {
    v6 = a1[20];
    v7 = a1[19];
    if (v6 != v5)
    {
      v8 = v6 - 40;
      v9 = a1[20];
      do
      {
        *(v9 - 40) = &unk_1F5AFCAB0;
        v9 -= 40;
        if (*(v9 + 31) < 0)
        {
          operator delete(*(v6 - 32));
        }

        v8 -= 40;
        v6 = v9;
      }

      while (v9 != v5);
      v7 = a1[19];
    }

    a1[20] = v5;
    operator delete(v7);
  }

  v10 = a1[16];
  if (v10)
  {
    v11 = a1[17];
    v12 = a1[16];
    if (v11 != v10)
    {
      do
      {
        v13 = *(v11 - 1);
        v11 -= 3;
        if (v13 < 0)
        {
          operator delete(*v11);
        }
      }

      while (v11 != v10);
      v12 = a1[16];
    }

    a1[17] = v10;
    operator delete(v12);
  }

  *a1 = &unk_1F5B3E1D8;
  v14 = a1[12];
  if (v14 != a1[11])
  {
    free(v14);
  }

  v15 = a1[8];
  if (v15 != a1 + 10)
  {
    free(v15);
  }

  return a1;
}

uint64_t mlir::detail::pass_options::parseCommaSeparatedList<llvm::cl::parser<std::string>,mlir::detail::PassOptions::ListOption<std::string,llvm::cl::parser<std::string>>::handleOccurrence(unsigned int,llvm::StringRef,llvm::StringRef)::{lambda(std::string const&)#1}>(llvm::cl::Option &,llvm::StringRef,llvm::StringRef,llvm::cl::parser<std::string> &,mlir::detail::PassOptions::ListOption<std::string,llvm::cl::parser<std::string>>::handleOccurrence(unsigned int,llvm::StringRef,llvm::StringRef)::{lambda(std::string const&)#1} &&)::{lambda(llvm::StringRef)#1}::operator()(uint64_t a1, const void *a2, size_t __len)
{
  if (!a2)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    __dst = 0;
    v28 = 0;
    v29 = 0;
    goto LABEL_13;
  }

  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (__len >= 0x17)
  {
    if ((__len | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (__len | 7) + 1;
    }

    v10 = a2;
    v11 = operator new(v9);
    a2 = v10;
    p_dst = v11;
    v28 = __len;
    v29 = v9 | 0x8000000000000000;
    __dst = v11;
  }

  else
  {
    HIBYTE(v29) = __len;
    p_dst = &__dst;
    if (!__len)
    {
      goto LABEL_12;
    }
  }

  memmove(p_dst, a2, __len);
LABEL_12:
  *(p_dst + __len) = 0;
  v8 = __dst;
  v7 = v28;
  v6 = HIBYTE(v29);
LABEL_13:
  *v26 = v29;
  *&v26[3] = *(&v29 + 3);
  v12 = *(a1 + 24);
  v13 = *v12;
  v15 = *(*v12 + 136);
  v14 = *(*v12 + 144);
  if (v15 < v14)
  {
    if (v6 < 0)
    {
      std::string::__init_copy_ctor_external(*(*v12 + 136), v8, v7);
    }

    else
    {
      *v15 = v8;
      *(v15 + 8) = v7;
      *(v15 + 16) = *v26;
      *(v15 + 19) = *&v26[3];
      *(v15 + 23) = v6;
    }

    v16 = v15 + 24;
    goto LABEL_32;
  }

  v17 = v13[16];
  v18 = v15 - v17;
  v19 = 0xAAAAAAAAAAAAAAABLL * (v18 >> 3) + 1;
  if (v19 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v20 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v17) >> 3);
  if (2 * v20 > v19)
  {
    v19 = 2 * v20;
  }

  if (v20 >= 0x555555555555555)
  {
    v21 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v21 = v19;
  }

  if (v21)
  {
    if (v21 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v22 = operator new(24 * v21);
    v23 = &v22[8 * (v18 >> 3)];
    v24 = &v22[24 * v21];
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v23 = 8 * (v18 >> 3);
    v24 = 0;
    if ((v6 & 0x80) == 0)
    {
LABEL_26:
      *v23 = v8;
      *(v23 + 8) = v7;
      *(v23 + 16) = *v26;
      *(v23 + 19) = *&v26[3];
      *(v23 + 23) = v6;
      goto LABEL_30;
    }
  }

  std::string::__init_copy_ctor_external(v23, v8, v7);
  v17 = v13[16];
  v18 = v13[17] - v17;
LABEL_30:
  v16 = v23 + 24;
  memcpy((v23 - v18), v17, v18);
  v13[16] = v23 - v18;
  v13[17] = v23 + 24;
  v13[18] = v24;
  if (v17)
  {
    operator delete(v17);
  }

LABEL_32:
  v13[17] = v16;
  if (v6 < 0)
  {
    operator delete(v8);
  }

  return 1;
}

void mlir::Pass::~Pass(mlir::Pass *this)
{
  *this = &unk_1F5B01A70;
  v2 = *(this + 39);
  if (v2)
  {
    *(this + 40) = v2;
    operator delete(v2);
  }

  if (*(this + 73))
  {
    v3 = *(this + 72);
    if (v3)
    {
      v4 = 0;
      do
      {
        v5 = *(*(this + 35) + v4);
        if (v5 != -8 && v5 != 0)
        {
          llvm::deallocate_buffer(v5, (*v5 + 17));
        }

        v4 += 8;
      }

      while (8 * v3 != v4);
    }
  }

  free(*(this + 35));
  v7 = *(this + 29);
  if (v7 != this + 248)
  {
    free(v7);
  }

  v8 = *(this + 23);
  if (v8 != this + 200)
  {
    free(v8);
  }

  v9 = *(this + 16);
  if (v9)
  {
    *(this + 17) = v9;
    operator delete(v9);
  }

  if (*(this + 120) == 1)
  {
    v10 = *(this + 8);
    if (v10 != *(this + 7))
    {
      free(v10);
    }
  }
}

void *std::__function::__func<void mlir::DialectRegistry::insert<mlir::memref::MemRefDialect>(void)::{lambda(mlir::MLIRContext *)#1},std::allocator<void mlir::DialectRegistry::insert<mlir::memref::MemRefDialect>(void)::{lambda(mlir::MLIRContext *)#1}>,mlir::Dialect * ()(mlir::MLIRContext *)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F5AF27A8;
  return result;
}

uint64_t std::__function::__func<void mlir::DialectRegistry::insert<mlir::memref::MemRefDialect>(void)::{lambda(mlir::MLIRContext *)#1},std::allocator<void mlir::DialectRegistry::insert<mlir::memref::MemRefDialect>(void)::{lambda(mlir::MLIRContext *)#1}>,mlir::Dialect * ()(mlir::MLIRContext *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4mlir15DialectRegistry6insertINS_6memref13MemRefDialectEEEvvEUlPNS_11MLIRContextEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4mlir15DialectRegistry6insertINS_6memref13MemRefDialectEEEvvEUlPNS_11MLIRContextEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4mlir15DialectRegistry6insertINS_6memref13MemRefDialectEEEvvEUlPNS_11MLIRContextEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4mlir15DialectRegistry6insertINS_6memref13MemRefDialectEEEvvEUlPNS_11MLIRContextEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

BOOL mlir::OperationPass<mlir::func::FuncOp>::canScheduleOn(uint64_t a1, uint64_t a2)
{
  v6 = *(a2 + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v6);
  if ((*(a1 + 32) & 1) == 0 || v4 != *(a1 + 24))
  {
    return 0;
  }

  if (v4)
  {
    return memcmp(AttrData, *(a1 + 16), v4) == 0;
  }

  return 1;
}

void mlir::ConversionTarget::~ConversionTarget(mlir::ConversionTarget *this)
{
  mlir::ConversionTarget::~ConversionTarget(this);
}

{
  *this = &unk_1F5AFD7B0;
  v2 = this + 120;
  v3 = *(this + 18);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    if (!*(this + 27))
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    if (!*(this + 27))
    {
LABEL_19:
      free(*(this + 12));
      if (*(this + 21))
      {
        v10 = *(this + 20);
        if (v10)
        {
          v11 = 0;
          do
          {
            v12 = *(*(this + 9) + v11);
            if (v12 != -8 && v12 != 0)
            {
              llvm::deallocate_buffer(v12, (*v12 + 17));
            }

            v11 += 8;
          }

          while (8 * v10 != v11);
        }
      }

      free(*(this + 9));
      v14 = *(this + 6);
      v15 = *(this + 16);
      if (v15)
      {
        v16 = (v14 + 32);
        v17 = v14 + 8;
        v18 = 40 * v15;
        while (1)
        {
          if ((*(v16 - 4) | 0x1000) != 0xFFFFFFFFFFFFF000)
          {
            v19 = *v16;
            if (v16 - 3 == *v16)
            {
              (*(*v19 + 32))(v19);
            }

            else if (v19)
            {
              (*(*v19 + 40))(v19);
            }
          }

          v16 += 5;
          v17 += 40;
          v18 -= 40;
          if (!v18)
          {
            llvm::deallocate_buffer(*(this + 6), (40 * *(this + 16)));
          }
        }
      }

      llvm::deallocate_buffer(v14, 0);
    }
  }

  v4 = *(this + 26);
  if (v4)
  {
    v5 = 0;
    do
    {
      v6 = *(*(this + 12) + v5);
      if (v6 != -8 && v6 != 0)
      {
        v8 = *v6;
        v9 = *(v6 + 4);
        if (v9 == (v6 + 8))
        {
          (*(*v9 + 32))(v9);
        }

        else if (v9)
        {
          (*(*v9 + 40))(v9);
        }

        llvm::deallocate_buffer(v6, (v8 + 41));
      }

      v5 += 8;
    }

    while (8 * v4 != v5);
  }

  goto LABEL_19;
}

void sub_1DFAE0E24(void *__p)
{

  operator delete(__p);
}

void mlir::PDLPatternModule::~PDLPatternModule(mlir::PDLPatternModule *this)
{
  if (*(this + 33))
  {
    v2 = *(this + 32);
    if (v2)
    {
      v3 = 0;
      do
      {
        v4 = *(*(this + 15) + v3);
        if (v4 != -8 && v4 != 0)
        {
          v6 = *v4;
          v7 = *(v4 + 4);
          if (v7 == (v4 + 8))
          {
            (*(*v7 + 32))(v7);
          }

          else if (v7)
          {
            (*(*v7 + 40))(v7);
          }

          llvm::deallocate_buffer(v4, (v6 + 41));
        }

        v3 += 8;
      }

      while (8 * v2 != v3);
    }
  }

  free(*(this + 15));
  if (*(this + 27))
  {
    v8 = *(this + 26);
    if (v8)
    {
      v9 = 0;
      do
      {
        v10 = *(*(this + 12) + v9);
        if (v10 != -8 && v10 != 0)
        {
          v12 = *v10;
          v13 = *(v10 + 4);
          if (v13 == (v10 + 8))
          {
            (*(*v13 + 32))(v13);
          }

          else if (v13)
          {
            (*(*v13 + 40))(v13);
          }

          llvm::deallocate_buffer(v10, (v12 + 41));
        }

        v9 += 8;
      }

      while (8 * v8 != v9);
    }
  }

  free(*(this + 12));
  llvm::deallocate_buffer(*(this + 9), (16 * *(this + 22)));
}

uint64_t mlir::bufferization::BufferPlacementAllocs::getStartOperation(void *a1, mlir::Block *a2, uint64_t a3)
{
  Liveness = mlir::Liveness::getLiveness(a3, a2);
  StartOperation = mlir::LivenessBlockInfo::getStartOperation(Liveness, a1);
  if (*(StartOperation + 2) == a2)
  {
    return StartOperation;
  }

  StartOperation = mlir::Block::findAncestorOpInBlock(a2, StartOperation);
  if (StartOperation)
  {
    return StartOperation;
  }

  return mlir::Block::getTerminator(a2, 0);
}

mlir::bufferization::BufferPlacementAllocs *mlir::bufferization::BufferPlacementAllocs::BufferPlacementAllocs(mlir::bufferization::BufferPlacementAllocs *this, mlir::Operation *a2)
{
  *this = this + 16;
  *(this + 1) = 0x800000000;
  v4 = this;
  v5 = &v4;
  mlir::detail::walk<mlir::ForwardIterator>(a2, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_13bufferization21BufferPlacementAllocs5buildES3_E3__0NS1_23MemoryEffectOpInterfaceEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESM_E4typeES3_OT1_EUlS3_E_EEvlS3_, &v5, 1);
  return this;
}

void _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_13bufferization21BufferPlacementAllocs5buildES3_E3__0NS1_23MemoryEffectOpInterfaceEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESM_E4typeES3_OT1_EUlS3_E_EEvlS3_(uint64_t **a1, uint64_t a2)
{
  v44[10] = *MEMORY[0x1E69E9840];
  if (!mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a2) || !a2)
  {
    return;
  }

  InterfaceFor = mlir::OpInterface<mlir::MemoryEffectOpInterface,mlir::detail::MemoryEffectOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  v37 = **a1;
  v38[0] = a2;
  v38[1] = InterfaceFor;
  v42 = v44;
  v43 = 0x200000000;
  mlir::RegionBranchOpInterface::getEntrySuccessorOperands(v38, &v42);
  v39 = v41;
  v40 = 0x200000000;
  if (!v43)
  {
    goto LABEL_66;
  }

  v5 = 40 * v43;
  v6 = v42;
  do
  {
    v12 = *(v6 + 2);
    if (v12 >= 8 && (v13 = *(v6 + 2) & 6, (v12 & 6) != 0))
    {
      v14 = v12 & 0xFFFFFFFFFFFFFFF8;
      if (v13 != 2 || v14 == 0)
      {
        if (v13 == 4)
        {
          v16 = v14;
        }

        else
        {
          v16 = 0;
        }

        if (v16)
        {
          v17 = v16;
        }

        else
        {
          v17 = v14;
        }

        v18 = **v6;
        {
LABEL_27:
          if (v18 != mlir::detail::TypeIDResolver<mlir::MemoryEffects::Allocate,void>::resolveTypeID(void)::id || v17 == 0)
          {
            goto LABEL_10;
          }

          goto LABEL_31;
        }
      }

      else
      {
        v17 = *(v14 + 24);
        v18 = **v6;
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
      v17 = 0;
      v18 = **v6;
      {
        goto LABEL_27;
      }
    }

    mlir::MemoryEffectOpInterface::hasEffect<mlir::MemoryEffects::Allocate>();
    if (v18 != mlir::detail::TypeIDResolver<mlir::MemoryEffects::Allocate,void>::resolveTypeID(void)::id || v17 == 0)
    {
      goto LABEL_10;
    }

LABEL_31:
    if ((~*(v17 + 8) & 7) == 0)
    {
      goto LABEL_10;
    }

    v20 = *(v6 + 1);
    {
      if (v20 == mlir::SideEffects::Resource::Base<mlir::SideEffects::AutomaticAllocationScopeResource,mlir::SideEffects::Resource>::get(void)::instance)
      {
        goto LABEL_10;
      }
    }

    else
    {
      _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_13bufferization21BufferPlacementAllocs5buildES3_E3__0NS1_23MemoryEffectOpInterfaceEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESM_E4typeES3_OT1_EUlS3_E_EEvlS3__cold_2();
      if (v20 == mlir::SideEffects::Resource::Base<mlir::SideEffects::AutomaticAllocationScopeResource,mlir::SideEffects::Resource>::get(void)::instance)
      {
        goto LABEL_10;
      }
    }

    v7 = v39;
    v8 = v6;
    if (v40 >= HIDWORD(v40))
    {
      if (v39 > v6 || v39 + 40 * v40 <= v6)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v41, v40 + 1, 40);
        v7 = v39;
        v8 = v6;
      }

      else
      {
        v21 = v6 - v39;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v41, v40 + 1, 40);
        v7 = v39;
        v8 = v39 + v21;
      }
    }

    v9 = &v7[40 * v40];
    v10 = *v8;
    v11 = *(v8 + 1);
    *(v9 + 4) = *(v8 + 4);
    *v9 = v10;
    *(v9 + 1) = v11;
    LODWORD(v40) = v40 + 1;
LABEL_10:
    v6 += 40;
    v5 -= 40;
  }

  while (v5);
  if (v40 == 1)
  {
    v23 = *(v39 + 2);
    if (v23 >= 8 && (v24 = *(v39 + 2) & 6, (v23 & 6) != 0))
    {
      v25 = v23 & 0xFFFFFFFFFFFFFFF8;
      if (v24 != 2 || v25 == 0)
      {
        if (v24 == 4)
        {
          v27 = v25;
        }

        else
        {
          v27 = 0;
        }

        if (v27)
        {
          v33 = v27;
        }

        else
        {
          v33 = v25;
        }

        Dealloc = mlir::memref::findDealloc(v33);
        if (v28)
        {
LABEL_63:
          v30 = v37;
          v31 = *(v37 + 8);
          if (v31 >= *(v37 + 12))
          {
            v36 = Dealloc;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v37, v37 + 16, v31 + 1, 16);
            v30 = v37;
            Dealloc = v36;
            LODWORD(v31) = *(v37 + 8);
          }

          v32 = (*v30 + 16 * v31);
          *v32 = v33;
          v32[1] = Dealloc;
          ++*(v30 + 8);
        }
      }

      else
      {
        v33 = *(v25 + 24);
        Dealloc = mlir::memref::findDealloc(v33);
        if (v35)
        {
          goto LABEL_63;
        }
      }
    }

    else
    {
      v33 = 0;
      Dealloc = mlir::memref::findDealloc(0);
      if (v29)
      {
        goto LABEL_63;
      }
    }
  }

LABEL_66:
  if (v39 != v41)
  {
    free(v39);
  }

  if (v42 != v44)
  {
    free(v42);
  }
}

void *mlir::SideEffects::AutomaticAllocationScopeResource::AutomaticAllocationScopeResource(void *this)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::SideEffects::AutomaticAllocationScopeResource,void>::resolveTypeID(void)::id;
    *this = &unk_1F5AF2838;
    this[1] = v1;
  }

  else
  {
    v3 = this;
    mlir::SideEffects::AutomaticAllocationScopeResource::AutomaticAllocationScopeResource();
    this = v3;
    v2 = mlir::detail::TypeIDResolver<mlir::SideEffects::AutomaticAllocationScopeResource,void>::resolveTypeID(void)::id;
    *v3 = &unk_1F5AF2838;
    v3[1] = v2;
  }

  return this;
}

const char *llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::SideEffects::AutomaticAllocationScopeResource]";
  v6 = 101;
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SmallPtrSet<mlir::Value,16u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallPtrSet<mlir::Value,16u>>>,mlir::Value,llvm::SmallPtrSet<mlir::Value,16u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallPtrSet<mlir::Value,16u>>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = HIDWORD(*a2);
    v4 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v3);
    LODWORD(v3) = -348639895 * ((((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 32) >> 15) ^ (-348639895 * (v3 ^ (v4 >> 47) ^ v4)));
    v5 = v2 - 1;
    v6 = v3 & (v2 - 1);
    v7 = *a1 + 168 * v6;
    v8 = *v7;
    if (*a2 == *v7)
    {
      return v7 + 8;
    }

    v11 = 0;
    v12 = 1;
    while (v8 != -4096)
    {
      if (v11)
      {
        v13 = 0;
      }

      else
      {
        v13 = v8 == -8192;
      }

      if (v13)
      {
        v11 = v7;
      }

      v14 = v6 + v12++;
      v6 = v14 & v5;
      v7 = *a1 + 168 * (v14 & v5);
      v8 = *v7;
      if (*a2 == *v7)
      {
        return v7 + 8;
      }
    }

    if (v11)
    {
      v7 = v11;
    }
  }

  else
  {
    v7 = 0;
  }

  v17 = v7;
  v10 = *(a1 + 8);
  if (4 * v10 + 4 >= 3 * v2)
  {
    v15 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v10 - *(a1 + 12) <= v2 >> 3)
  {
    v15 = a2;
LABEL_24:
    v16 = a1;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SmallPtrSet<mlir::Value,16u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallPtrSet<mlir::Value,16u>>>,mlir::Value,llvm::SmallPtrSet<mlir::Value,16u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallPtrSet<mlir::Value,16u>>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SmallPtrSet<mlir::Value,16u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallPtrSet<mlir::Value,16u>>>,mlir::Value,llvm::SmallPtrSet<mlir::Value,16u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallPtrSet<mlir::Value,16u>>>::LookupBucketFor<mlir::Value>(v16, v15, &v17);
    a1 = v16;
    a2 = v15;
    v7 = v17;
    ++*(v16 + 8);
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
  *v7 = *a2;
  *(v7 + 8) = v7 + 40;
  *(v7 + 16) = v7 + 40;
  *(v7 + 24) = 16;
  *(v7 + 32) = 0;
  return v7 + 8;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SmallPtrSet<mlir::Value,16u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallPtrSet<mlir::Value,16u>>>,mlir::Value,llvm::SmallPtrSet<mlir::Value,16u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallPtrSet<mlir::Value,16u>>>::LookupBucketFor<mlir::Value>(uint64_t *a1, void *a2, void *a3)
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
    v9 = (*a1 + 168 * v8);
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
        v9 = (v4 + 168 * (v15 & v7));
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

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SmallPtrSet<mlir::Value,16u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallPtrSet<mlir::Value,16u>>>,mlir::Value,llvm::SmallPtrSet<mlir::Value,16u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallPtrSet<mlir::Value,16u>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(168 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SmallPtrSet<mlir::Value,16u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallPtrSet<mlir::Value,16u>>>,mlir::Value,llvm::SmallPtrSet<mlir::Value,16u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallPtrSet<mlir::Value,16u>>>::moveFromOldBuckets(a1, v4, &v4[21 * v3]);

    llvm::deallocate_buffer(v4, (168 * v3));
  }

  *(a1 + 8) = 0;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 168 * v10 - 168;
    if (v11 < 0xA8)
    {
      v12 = result;
LABEL_14:
      v16 = &result[21 * v10];
      do
      {
        *v12 = -4096;
        v12 += 21;
      }

      while (v12 != v16);
      return result;
    }

    v13 = v11 / 0xA8 + 1;
    v12 = &result[21 * (v13 & 0x3FFFFFFFFFFFFFELL)];
    v14 = result;
    v15 = v13 & 0x3FFFFFFFFFFFFFELL;
    do
    {
      *v14 = -4096;
      v14[21] = -4096;
      v14 += 42;
      v15 -= 2;
    }

    while (v15);
    if (v13 != (v13 & 0x3FFFFFFFFFFFFFELL))
    {
      goto LABEL_14;
    }
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SmallPtrSet<mlir::Value,16u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallPtrSet<mlir::Value,16u>>>,mlir::Value,llvm::SmallPtrSet<mlir::Value,16u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallPtrSet<mlir::Value,16u>>>::moveFromOldBuckets(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = 168 * v6 - 168;
    if (v8 < 0xA8)
    {
      v9 = *a1;
LABEL_7:
      v13 = &v7[21 * v6];
      do
      {
        *v9 = -4096;
        v9 += 21;
      }

      while (v9 != v13);
      goto LABEL_9;
    }

    v10 = v8 / 0xA8 + 1;
    v9 = &v7[21 * (v10 & 0x3FFFFFFFFFFFFFELL)];
    v11 = *a1;
    v12 = v10 & 0x3FFFFFFFFFFFFFELL;
    do
    {
      *v11 = -4096;
      v11[21] = -4096;
      v11 += 42;
      v12 -= 2;
    }

    while (v12);
    if (v10 != (v10 & 0x3FFFFFFFFFFFFFELL))
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  if (a2 != a3)
  {
    do
    {
      v14 = *v4;
      if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v15 = 0x9DDFEA08EB382D69 * ((8 * *v4 - 0xAE502812AA7333) ^ HIDWORD(*v4));
        v16 = 0x9DDFEA08EB382D69 * (HIDWORD(v14) ^ (v15 >> 47) ^ v15);
        LODWORD(v15) = -348639895 * ((v16 >> 47) ^ v16);
        v17 = *(a1 + 16) - 1;
        v18 = v17 & v15;
        v19 = (*a1 + 168 * v18);
        v20 = *v19;
        if (v14 != *v19)
        {
          v22 = 0;
          v23 = 1;
          while (v20 != -4096)
          {
            if (v22)
            {
              v24 = 0;
            }

            else
            {
              v24 = v20 == -8192;
            }

            if (v24)
            {
              v22 = v19;
            }

            v25 = v18 + v23++;
            v18 = v25 & v17;
            v19 = (*a1 + 168 * (v25 & v17));
            v20 = *v19;
            if (v14 == *v19)
            {
              goto LABEL_14;
            }
          }

          if (v22)
          {
            v19 = v22;
          }
        }

LABEL_14:
        *v19 = v14;
        llvm::SmallPtrSetImplBase::SmallPtrSetImplBase((v19 + 1), v19 + 5, 16, v4 + 1);
        ++*(a1 + 8);
        v21 = v4[2];
        if (v21 != v4[1])
        {
          free(v21);
        }
      }

      v4 += 21;
    }

    while (v4 != a3);
  }
}

uint64_t mlir::OpInterface<mlir::RegionBranchTerminatorOpInterface,mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
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
      mlir::OpInterface<mlir::RegionBranchTerminatorOpInterface,mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits>::getInterfaceFor();
      Values = v24;
    }

    return (*(*Values + 104))(Values, mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v5 = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface,void>::resolveTypeID(void)::id;
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
    mlir::OpInterface<mlir::RegionBranchTerminatorOpInterface,mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v21;
    a1 = v22;
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v5 = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface,void>::resolveTypeID(void)::id;
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
    mlir::OpInterface<mlir::RegionBranchTerminatorOpInterface,mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits>::getInterfaceFor();
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v18 = v23;
  }

  v19 = v4[217];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

const char *llvm::getTypeName<mlir::RegionBranchTerminatorOpInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::RegionBranchTerminatorOpInterface]";
  v6 = 89;
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

uint64_t mlir::DialectRegistry::addExtension<mlir::func::FuncDialect>(uint64_t a1, uint64_t *a2)
{
  v4 = operator new(0x50uLL);
  v4[3] = "func";
  v4[4] = 4;
  v4[2] = 0x300000001;
  *v4 = &unk_1F5AF2890;
  v4[1] = v4 + 3;
  v4[9] = a2;
  v9 = v4;
  v10 = a2;
  v12 = a2;
  v13 = 0;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>,mlir::Region *,unsigned int,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,unsigned int>>::try_emplace<unsigned int const&>(a1 + 24, &v12, &v13, &v14);
  v5 = v15;
  if (v15)
  {
    v6 = *(a1 + 56);
    *(v14 + 8) = v6;
    v12 = &v10;
    v11 = &v9;
    if (v6 >= *(a1 + 60))
    {
      llvm::SmallVectorTemplateBase<std::pair<mlir::TypeID,std::unique_ptr<mlir::DialectExtensionBase>>,false>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<mlir::TypeID const&>,std::tuple<std::unique_ptr<mlir::DialectExtensionBase>&&>>(a1 + 48, &std::piecewise_construct, &v12, &v11);
      v4 = v9;
      v9 = 0;
      if (!v4)
      {
        return v5;
      }
    }

    else
    {
      v7 = (*(a1 + 48) + 16 * v6);
      *v7 = a2;
      v9 = 0;
      v7[1] = v4;
      *(a1 + 56) = v6 + 1;
      v4 = v9;
      v9 = 0;
      if (!v4)
      {
        return v5;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  (*(*v4 + 8))(v4);
  return v5;
}

uint64_t llvm::SmallVectorTemplateBase<std::pair<mlir::TypeID,std::unique_ptr<mlir::DialectExtensionBase>>,false>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<mlir::TypeID const&>,std::tuple<std::unique_ptr<mlir::DialectExtensionBase>&&>>(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t **a4)
{
  v36 = 0;
  v7 = (a1 + 16);
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 16, &v36);
  v9 = v8;
  v10 = *(a1 + 8);
  v11 = 16 * v10;
  v12 = (v8 + 16 * v10);
  v13 = **a3;
  v14 = **a4;
  **a4 = 0;
  *v12 = v13;
  v12[1] = v14;
  v15 = *a1;
  if (!v10)
  {
    goto LABEL_10;
  }

  v16 = (v10 - 1) & 0xFFFFFFFFFFFFFFFLL;
  if (v16 < 0xB || ((v15 + 1) < v9 + v11 ? (v26 = v9 + 8 >= &v15[v11 / 8]) : (v26 = 1), v26 ? (v27 = 0) : (v27 = 1), v15 < v9 + v11 - 8 ? (v28 = v9 >= &v15[v11 / 8 - 1]) : (v28 = 1), !v28 || (v27 & 1) != 0))
  {
    v17 = v9;
    v18 = *a1;
    do
    {
LABEL_4:
      v19 = *v18;
      v20 = v18[1];
      v18[1] = 0;
      *v17 = v19;
      v17[1] = v20;
      v17 += 2;
      v18 += 2;
    }

    while (v18 != &v15[v11 / 8]);
    goto LABEL_5;
  }

  v29 = v16 + 1;
  v30 = (v16 + 1) & 0x1FFFFFFFFFFFFFFELL;
  v17 = (v9 + 16 * v30);
  v18 = &v15[2 * v30];
  v31 = v30;
  v32 = v9;
  v33 = *a1;
  do
  {
    v34 = *v33;
    v35 = *(v33 + 1);
    v33[1] = 0;
    v33[3] = 0;
    *v32 = v34;
    v32[1] = v35;
    v32 += 2;
    v33 += 4;
    v31 -= 2;
  }

  while (v31);
  if (v29 != v30)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21 = (v15 - 1);
  do
  {
    v22 = *&v21[v11];
    *&v21[v11] = 0;
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }

    v11 -= 16;
  }

  while (v11);
  v15 = *a1;
LABEL_10:
  v23 = v36;
  if (v15 != v7)
  {
    free(v15);
  }

  *a1 = v9;
  v24 = *(a1 + 8) + 1;
  *(a1 + 8) = v24;
  *(a1 + 12) = v23;
  return v9 + 16 * v24 - 16;
}

void mlir::DialectRegistry::addExtension<mlir::func::FuncDialect>(void (*)(mlir::MLIRContext *,mlir::func::FuncDialect *))::Extension::~Extension(mlir::DialectExtensionBase *a1)
{
  mlir::DialectExtensionBase::~DialectExtensionBase(a1);

  operator delete(v1);
}

void mlir::DialectExtension<BOOL mlir::DialectRegistry::addExtension<mlir::func::FuncDialect>(void (*)(mlir::MLIRContext *,mlir::func::FuncDialect *))::Extension,mlir::func::FuncDialect>::clone(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x50uLL);
  v5 = v4;
  *v4 = &unk_1F5AF7ED0;
  v6 = v4 + 3;
  v4[1] = v4 + 3;
  v7 = (v4 + 1);
  v4[2] = 0x300000000;
  if (v4 != a1)
  {
    v8 = *(a1 + 16);
    if (v8)
    {
      if (v8 < 4)
      {
        v9 = *(a1 + 16);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod((v4 + 1), v6, *(a1 + 16), 16);
        v9 = *(a1 + 16);
        if (!v9)
        {
LABEL_8:
          *(v5 + 4) = v8;
          goto LABEL_9;
        }

        v6 = *v7;
      }

      memcpy(v6, *(a1 + 8), 16 * v9);
      goto LABEL_8;
    }
  }

LABEL_9:
  *v5 = &unk_1F5AF2890;
  v5[9] = *(a1 + 72);
  *a2 = v5;
}

void mlir::Operation::setAttr(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[9] = *MEMORY[0x1E69E9840];
  v10 = a2;
  if (*(a1 + 47) && (AttrData = mlir::OpaqueAttr::getAttrData(&v10), v7 = v6, v13.var0 = AttrData, v13.var1 = v7, mlir::Operation::getInherentAttr(a1, v13), (v8 & 1) != 0))
  {
    mlir::Operation::setInherentAttr(a1, v10, a3);
  }

  else
  {
    mlir::NamedAttrList::NamedAttrList(v11, *(a1 + 56));
    if (mlir::NamedAttrList::set(v11, v10, a3) != a3)
    {
      Context = mlir::Attribute::getContext((a1 + 24));
      *(a1 + 56) = mlir::NamedAttrList::getDictionary(v11, Context);
    }

    if (v11[0] != v12)
    {
      free(v11[0]);
    }
  }
}

uint64_t *std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 == result)
  {
    return result;
  }

  while (1)
  {
    v2 = a2[2];
    if (v2[3])
    {
      return result;
    }

    v3 = v2[2];
    v4 = *v3;
    if (*v3 != v2)
    {
      break;
    }

    v8 = v3[1];
    if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
    {
      if (*v2 == a2)
      {
        *(v2 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v10 = v2[1];
        v11 = *v10;
        v2[1] = *v10;
        v12 = v2;
        if (v11)
        {
          v11[2] = v2;
          v3 = v2[2];
          v12 = *v3;
        }

        v10[2] = v3;
        v3[v12 != v2] = v10;
        *v10 = v2;
        v2[2] = v10;
        v3 = v10[2];
        v4 = *v3;
        *(v10 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
LABEL_15:
          *(v13 + 16) = v3;
        }
      }

      v14 = v3[2];
      v14[*v14 != v3] = v4;
      v4[1] = v3;
      v4[2] = v14;
      v3[2] = v4;
      return result;
    }

LABEL_3:
    *(v2 + 24) = 1;
    a2 = v3;
    *(v3 + 24) = v3 == result;
    *v7 = 1;
    if (v3 == result)
    {
      return result;
    }
  }

  if (v4)
  {
    v6 = *(v4 + 24);
    v5 = v4 + 3;
    if (v6 != 1)
    {
      v7 = v5;
      goto LABEL_3;
    }
  }

  v15 = *v2;
  if (*v2 == a2)
  {
    v16 = *(v15 + 8);
    *v2 = v16;
    if (v16)
    {
      *(v16 + 16) = v2;
      v3 = v2[2];
    }

    v3[*v3 != v2] = v15;
    *(v15 + 8) = v2;
    *(v15 + 16) = v3;
    v2[2] = v15;
    v3 = *(v15 + 16);
  }

  else
  {
    v15 = a2[2];
  }

  *(v15 + 24) = 1;
  *(v3 + 24) = 0;
  v17 = v3[1];
  v18 = *v17;
  v3[1] = *v17;
  if (v18)
  {
    *(v18 + 16) = v3;
  }

  v19 = v3[2];
  v17[2] = v19;
  v19[*v19 != v3] = v17;
  *v17 = v3;
  v3[2] = v17;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::func::FuncOp,llvm::DenseSet<mlir::func::FuncOp,llvm::DenseMapInfo<mlir::func::FuncOp,void>>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::DenseSet<mlir::func::FuncOp,llvm::DenseMapInfo<mlir::func::FuncOp,void>>>>,mlir::func::FuncOp,llvm::DenseSet<mlir::func::FuncOp,llvm::DenseMapInfo<mlir::func::FuncOp,void>>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::DenseSet<mlir::func::FuncOp,llvm::DenseMapInfo<mlir::func::FuncOp,void>>>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = HIDWORD(*a2);
    v4 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v3);
    v5 = (-348639895 * ((((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 32) >> 15) ^ (-348639895 * (v3 ^ (v4 >> 47) ^ v4)))) & (v2 - 1);
    v6 = (*a1 + 32 * v5);
    v7 = *v6;
    if (*a2 == *v6)
    {
      return v6 + 1;
    }

    v10 = 0;
    v11 = 1;
    while (v7 != -4096)
    {
      if (v10)
      {
        v12 = 0;
      }

      else
      {
        v12 = v7 == -8192;
      }

      if (v12)
      {
        v10 = v6;
      }

      v13 = v5 + v11++;
      v5 = v13 & (v2 - 1);
      v6 = (*a1 + 32 * v5);
      v7 = *v6;
      if (*a2 == *v6)
      {
        return v6 + 1;
      }
    }

    if (v10)
    {
      v6 = v10;
    }
  }

  else
  {
    v6 = 0;
  }

  v16 = v6;
  v9 = *(a1 + 8);
  if (4 * v9 + 4 >= 3 * v2)
  {
    v14 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v9 - *(a1 + 12) <= v2 >> 3)
  {
    v14 = a2;
LABEL_24:
    v15 = a1;
    llvm::DenseMapBase<llvm::DenseMap<mlir::func::FuncOp,llvm::DenseSet<mlir::func::FuncOp,llvm::DenseMapInfo<mlir::func::FuncOp,void>>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::DenseSet<mlir::func::FuncOp,llvm::DenseMapInfo<mlir::func::FuncOp,void>>>>,mlir::func::FuncOp,llvm::DenseSet<mlir::func::FuncOp,llvm::DenseMapInfo<mlir::func::FuncOp,void>>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::DenseSet<mlir::func::FuncOp,llvm::DenseMapInfo<mlir::func::FuncOp,void>>>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::func::FuncOp,llvm::DenseSet<mlir::func::FuncOp,llvm::DenseMapInfo<mlir::func::FuncOp,void>>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::DenseSet<mlir::func::FuncOp,llvm::DenseMapInfo<mlir::func::FuncOp,void>>>>,mlir::func::FuncOp,llvm::DenseSet<mlir::func::FuncOp,llvm::DenseMapInfo<mlir::func::FuncOp,void>>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::DenseSet<mlir::func::FuncOp,llvm::DenseMapInfo<mlir::func::FuncOp,void>>>>::LookupBucketFor<mlir::func::FuncOp>(v15, v14, &v16);
    a1 = v15;
    a2 = v14;
    v6 = v16;
    ++*(v15 + 8);
    if (*v6 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v9 + 1;
  if (*v6 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v6 = *a2;
  v6[1] = 0;
  v6[2] = 0;
  v6[3] = 0;
  return v6 + 1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::func::FuncOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseSetPair<mlir::func::FuncOp>>,mlir::func::FuncOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseSetPair<mlir::func::FuncOp>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 16);
  if (!v4)
  {
    v10 = 0;
    goto LABEL_5;
  }

  v5 = *result;
  v6 = HIDWORD(*a2);
  v7 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v6);
  LODWORD(v6) = -348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7)));
  v8 = v4 - 1;
  v9 = v6 & (v4 - 1);
  v10 = (*result + 8 * v9);
  v11 = *v10;
  if (*a2 != *v10)
  {
    v14 = 0;
    v15 = 1;
    while (v11 != -4096)
    {
      if (v14)
      {
        v16 = 0;
      }

      else
      {
        v16 = v11 == -8192;
      }

      if (v16)
      {
        v14 = v10;
      }

      v17 = v9 + v15++;
      v9 = v17 & v8;
      v10 = (v5 + 8 * (v17 & v8));
      v11 = *v10;
      if (*a2 == *v10)
      {
        goto LABEL_3;
      }
    }

    if (v14)
    {
      v10 = v14;
    }

LABEL_5:
    v20 = v10;
    v13 = *(result + 8);
    if (4 * v13 + 4 >= 3 * v4)
    {
      v4 *= 2;
    }

    else if (v4 + ~v13 - *(result + 12) > v4 >> 3)
    {
      *(result + 8) = v13 + 1;
      if (*v10 == -4096)
      {
LABEL_9:
        *v10 = *a2;
        v5 = *result;
        v4 = *(result + 16);
        v12 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 12);
      goto LABEL_9;
    }

    v18 = result;
    v19 = a3;
    llvm::DenseMap<mlir::func::FuncOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseSetPair<mlir::func::FuncOp>>::grow(result, v4);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>,mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::LookupBucketFor<mlir::Value>(v18, a2, &v20);
    result = v18;
    a3 = v19;
    v10 = v20;
    ++*(v18 + 8);
    if (*v10 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v12 = 0;
LABEL_10:
  *a3 = v10;
  *(a3 + 8) = v5 + 8 * v4;
  *(a3 + 16) = v12;
  return result;
}

int64x2_t *llvm::DenseMap<mlir::func::FuncOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseSetPair<mlir::func::FuncOp>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(8 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = (v11 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v12 < 3)
      {
        goto LABEL_10;
      }

      v13 = v12 + 1;
      v10 = &result->i8[8 * (v13 & 0x3FFFFFFFFFFFFFFCLL)];
      v14 = result + 1;
      v15 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
      v16 = v13 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v14[-1] = v15;
        *v14 = v15;
        v14 += 2;
        v16 -= 4;
      }

      while (v16);
      if (v13 != (v13 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_10:
        v17 = &result->i8[8 * v11];
        do
        {
          *v10 = -4096;
          v10 += 8;
        }

        while (v10 != v17);
      }
    }

    if (v3)
    {
      v18 = v4;
      do
      {
        v27 = *v18;
        if ((*v18 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v28 = 0x9DDFEA08EB382D69 * ((8 * *v18 - 0xAE502812AA7333) ^ HIDWORD(*v18));
          v29 = 0x9DDFEA08EB382D69 * (HIDWORD(v27) ^ (v28 >> 47) ^ v28);
          LODWORD(v28) = -348639895 * ((v29 >> 47) ^ v29);
          v30 = *(a1 + 16) - 1;
          v31 = v30 & v28;
          v26 = (*a1 + 8 * v31);
          v32 = *v26;
          if (v27 != *v26)
          {
            v33 = 0;
            v34 = 1;
            while (v32 != -4096)
            {
              if (v33)
              {
                v35 = 0;
              }

              else
              {
                v35 = v32 == -8192;
              }

              if (v35)
              {
                v33 = v26;
              }

              v36 = v31 + v34++;
              v31 = v36 & v30;
              v26 = (*a1 + 8 * (v36 & v30));
              v32 = *v26;
              if (v27 == *v26)
              {
                goto LABEL_24;
              }
            }

            if (v33)
            {
              v26 = v33;
            }
          }

LABEL_24:
          *v26 = v27;
          ++*(a1 + 8);
        }

        v18 = (v18 + 8);
      }

      while (v18 != (v4 + 8 * v3));
    }

    llvm::deallocate_buffer(v4, (8 * v3));
  }

  *(a1 + 8) = 0;
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = (v19 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v20 < 3)
    {
      goto LABEL_19;
    }

    v21 = v20 + 1;
    v10 = &result->i8[8 * (v21 & 0x3FFFFFFFFFFFFFFCLL)];
    v22 = result + 1;
    v23 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
    v24 = v21 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v22[-1] = v23;
      *v22 = v23;
      v22 += 2;
      v24 -= 4;
    }

    while (v24);
    if (v21 != (v21 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_19:
      v25 = &result->i8[8 * v19];
      do
      {
        *v10 = -4096;
        v10 += 8;
      }

      while (v10 != v25);
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::func::FuncOp,llvm::DenseSet<mlir::func::FuncOp,llvm::DenseMapInfo<mlir::func::FuncOp,void>>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::DenseSet<mlir::func::FuncOp,llvm::DenseMapInfo<mlir::func::FuncOp,void>>>>,mlir::func::FuncOp,llvm::DenseSet<mlir::func::FuncOp,llvm::DenseMapInfo<mlir::func::FuncOp,void>>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::DenseSet<mlir::func::FuncOp,llvm::DenseMapInfo<mlir::func::FuncOp,void>>>>::LookupBucketFor<mlir::func::FuncOp>(uint64_t *a1, void *a2, void *a3)
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
    v9 = (*a1 + 32 * v8);
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
        v9 = (v4 + 32 * v8);
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

void *llvm::DenseMapBase<llvm::DenseMap<mlir::func::FuncOp,llvm::DenseSet<mlir::func::FuncOp,llvm::DenseMapInfo<mlir::func::FuncOp,void>>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::DenseSet<mlir::func::FuncOp,llvm::DenseMapInfo<mlir::func::FuncOp,void>>>>,mlir::func::FuncOp,llvm::DenseSet<mlir::func::FuncOp,llvm::DenseMapInfo<mlir::func::FuncOp,void>>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::DenseSet<mlir::func::FuncOp,llvm::DenseMapInfo<mlir::func::FuncOp,void>>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(32 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v10 = (32 * v3);
    llvm::DenseMapBase<llvm::DenseMap<mlir::func::FuncOp,llvm::DenseSet<mlir::func::FuncOp,llvm::DenseMapInfo<mlir::func::FuncOp,void>>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::DenseSet<mlir::func::FuncOp,llvm::DenseMapInfo<mlir::func::FuncOp,void>>>>,mlir::func::FuncOp,llvm::DenseSet<mlir::func::FuncOp,llvm::DenseMapInfo<mlir::func::FuncOp,void>>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::DenseSet<mlir::func::FuncOp,llvm::DenseMapInfo<mlir::func::FuncOp,void>>>>::moveFromOldBuckets(a1, v4, &v10[v4]);

    llvm::deallocate_buffer(v4, v10);
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = (v11 - 1) & 0x7FFFFFFFFFFFFFFLL;
    if (v12)
    {
      v13 = v12 + 1;
      v14 = (v12 + 1) & 0xFFFFFFFFFFFFFFELL;
      v15 = &result[4 * v14];
      v16 = result + 4;
      v17 = v14;
      do
      {
        *(v16 - 4) = -4096;
        *v16 = -4096;
        v16 += 8;
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

    v18 = &result[4 * v11];
    do
    {
      *v15 = -4096;
      v15 += 4;
    }

    while (v15 != v18);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::func::FuncOp,llvm::DenseSet<mlir::func::FuncOp,llvm::DenseMapInfo<mlir::func::FuncOp,void>>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::DenseSet<mlir::func::FuncOp,llvm::DenseMapInfo<mlir::func::FuncOp,void>>>>,mlir::func::FuncOp,llvm::DenseSet<mlir::func::FuncOp,llvm::DenseMapInfo<mlir::func::FuncOp,void>>,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,llvm::DenseSet<mlir::func::FuncOp,llvm::DenseMapInfo<mlir::func::FuncOp,void>>>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v3 = a2;
  *(result + 8) = 0;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = *result;
    v6 = (v4 - 1) & 0x7FFFFFFFFFFFFFFLL;
    if (v6)
    {
      v7 = v6 + 1;
      v8 = (v6 + 1) & 0xFFFFFFFFFFFFFFELL;
      v9 = &v5[4 * v8];
      v10 = v5 + 4;
      v11 = v8;
      do
      {
        *(v10 - 4) = -4096;
        *v10 = -4096;
        v10 += 8;
        v11 -= 2;
      }

      while (v11);
      if (v7 == v8)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v9 = *result;
    }

    v12 = &v5[4 * v4];
    do
    {
      *v9 = -4096;
      v9 += 4;
    }

    while (v9 != v12);
  }

LABEL_10:
  if (a2 != a3)
  {
    do
    {
      v16 = *v3;
      if ((*v3 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v17 = 0x9DDFEA08EB382D69 * ((8 * *v3 - 0xAE502812AA7333) ^ HIDWORD(*v3));
        v18 = 0x9DDFEA08EB382D69 * (HIDWORD(v16) ^ (v17 >> 47) ^ v17);
        LODWORD(v17) = -348639895 * ((v18 >> 47) ^ v18);
        v19 = *(result + 16) - 1;
        v20 = v19 & v17;
        v13 = *result + 32 * v20;
        v21 = *v13;
        if (v16 != *v13)
        {
          v22 = 0;
          v23 = 1;
          while (v21 != -4096)
          {
            if (v22)
            {
              v24 = 0;
            }

            else
            {
              v24 = v21 == -8192;
            }

            if (v24)
            {
              v22 = v13;
            }

            v25 = v20 + v23++;
            v20 = v25 & v19;
            v13 = *result + 32 * v20;
            v21 = *v13;
            if (v16 == *v13)
            {
              goto LABEL_14;
            }
          }

          if (v22)
          {
            v13 = v22;
          }
        }

LABEL_14:
        *(v13 + 8) = 0;
        *(v13 + 16) = 0;
        *v13 = v16;
        *(v13 + 24) = 0;
        *(v13 + 8) = v3[1];
        v3[1] = 0;
        *(v13 + 16) = *(v3 + 4);
        *(v3 + 4) = 0;
        v14 = *(v13 + 20);
        *(v13 + 20) = *(v3 + 5);
        *(v3 + 5) = v14;
        v15 = *(v13 + 24);
        *(v13 + 24) = *(v3 + 6);
        *(v3 + 6) = v15;
        ++*(result + 8);
        llvm::deallocate_buffer(0, (8 * v15));
      }

      v3 += 4;
    }

    while (v3 != a3);
  }

  return result;
}

void mlir::function_interface_impl::setArgAttr<mlir::func::FuncOp>(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v15[9] = *MEMORY[0x1E69E9840];
  v13 = a4;
  if (a1)
  {
    InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
  }

  else
  {
    InterfaceFor = 0;
  }

  ArgAttrDict = mlir::function_interface_impl::getArgAttrDict(a1, InterfaceFor, a2);
  mlir::NamedAttrList::NamedAttrList(v14, ArgAttrDict);
  if (mlir::NamedAttrList::set(v14, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext(&v13);
    Dictionary = mlir::NamedAttrList::getDictionary(v14, Context);
    if (a1)
    {
      v12 = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
    }

    else
    {
      v12 = 0;
    }

    mlir::function_interface_impl::setArgAttrs(a1, v12, a2, Dictionary);
  }

  if (v14[0] != v15)
  {
    free(v14[0]);
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 16);
  if (!v4)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v5 = *result;
  v6 = v4 - 1;
  v7 = (37 * *a2) & (v4 - 1);
  v8 = (*result + 8 * v7);
  v9 = *v8;
  if (*a2 != *v8)
  {
    v12 = 0;
    v13 = 1;
    while (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v12)
      {
        v14 = 0;
      }

      else
      {
        v14 = v9 == 0x8000000000000000;
      }

      if (v14)
      {
        v12 = v8;
      }

      v15 = v7 + v13++;
      v7 = v15 & v6;
      v8 = (v5 + 8 * (v15 & v6));
      v9 = *v8;
      if (*a2 == *v8)
      {
        goto LABEL_3;
      }
    }

    if (v12)
    {
      v8 = v12;
    }

LABEL_5:
    v18 = v8;
    v11 = *(result + 8);
    if (4 * v11 + 4 >= 3 * v4)
    {
      v4 *= 2;
    }

    else if (v4 + ~v11 - *(result + 12) > v4 >> 3)
    {
      *(result + 8) = v11 + 1;
      if (*v8 == 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_9:
        *v8 = *a2;
        v5 = *result;
        v4 = *(result + 16);
        v10 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 12);
      goto LABEL_9;
    }

    v16 = result;
    v17 = a3;
    llvm::DenseMap<long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::grow(result, v4);
    llvm::DenseMapBase<llvm::DenseMap<long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::LookupBucketFor<long long>(v16, a2, &v18);
    result = v16;
    a3 = v17;
    v8 = v18;
    ++*(v16 + 8);
    if (*v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v10 = 0;
LABEL_10:
  *a3 = v8;
  *(a3 + 8) = v5 + 8 * v4;
  *(a3 + 16) = v10;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::LookupBucketFor<long long>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = (37 * *a2) & (v3 - 1);
    v7 = (*a1 + 8 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
      *a3 = v7;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == 0x8000000000000000;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 8 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }

      *a3 = v7;
    }
  }

  else
  {
    v7 = 0;
    result = 0;
LABEL_5:
    *a3 = v7;
  }

  return result;
}

void llvm::DenseMap<long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::grow(uint64_t a1, int a2)
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
  buffer = llvm::allocate_buffer(8 * v8, 8uLL);
  *a1 = buffer;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = buffer;
      memset_pattern16(buffer, &unk_1E0970A00, 8 * v10);
      buffer = v11;
    }

    if (v3)
    {
      v12 = 0;
      v13 = v10 - 1;
      v14 = v4;
      do
      {
        v17 = *v14;
        if ((*v14 - 0x7FFFFFFFFFFFFFFFLL) >= 2)
        {
          v18 = (37 * v17) & v13;
          v16 = &buffer[8 * v18];
          v19 = *v16;
          if (v17 != *v16)
          {
            v20 = 0;
            v21 = 1;
            while (v19 != 0x7FFFFFFFFFFFFFFFLL)
            {
              if (v20)
              {
                v22 = 0;
              }

              else
              {
                v22 = v19 == 0x8000000000000000;
              }

              if (v22)
              {
                v20 = v16;
              }

              v23 = v18 + v21++;
              v18 = v23 & v13;
              v16 = &buffer[8 * (v23 & v13)];
              v19 = *v16;
              if (v17 == *v16)
              {
                goto LABEL_16;
              }
            }

            if (v20)
            {
              v16 = v20;
            }
          }

LABEL_16:
          *v16 = v17;
          *(a1 + 8) = ++v12;
        }

        v14 = (v14 + 8);
      }

      while (v14 != (v4 + 8 * v3));
    }

    llvm::deallocate_buffer(v4, (8 * v3));
  }

  *(a1 + 8) = 0;
  v15 = *(a1 + 16);
  if (v15)
  {

    memset_pattern16(buffer, &unk_1E0970A00, 8 * v15);
  }
}

void mlir::IRRewriter::~IRRewriter(mlir::IRRewriter *this, uint64_t a2)
{
  v2 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(this, a2);

  operator delete(v2);
}

uint64_t mlir::call_interface_impl::resolveCallable(mlir::SymbolTable *a1, uint64_t (**a2)(void, mlir::SymbolTable *), uint64_t a3)
{
  v5 = (*a2)(a2, a1);
  v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
  v8 = v5 & 0xFFFFFFFFFFFFFFF8 & (v5 << 61 >> 63);
  if (v8)
  {
    return mlir::Value::getDefiningOp(&v8);
  }

  if (a3)
  {

    return mlir::SymbolTableCollection::lookupNearestSymbolFrom(a3, a1, v6);
  }

  else
  {

    return mlir::SymbolTable::lookupNearestSymbolFrom(a1, v6);
  }
}

BOOL mlir::complex::ConstantOp::isBuildableWith(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  v20 = v2;
  if (v2)
  {
    v3 = *(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id ? a2 : 0;
    v19 = v3;
    if (v3)
    {
      mlir::ArrayAttr::getValue(&v20);
      if (v4 == 2)
      {
        Value = mlir::AffineMapAttr::getValue(&v19);
        v6 = mlir::ArrayAttr::getValue(&v20);
        v7 = *v6;
        v8 = *(**v6 + 136);
        if (v8 != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
        {
          v7 = 0;
        }

        v18 = v7;
        if (v8 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
        {
          v15 = *(mlir::ArrayAttr::getValue(&v20) + 8);
          v16 = *(*v15 + 136);
          if (v16 != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
          {
            v15 = 0;
          }

          v17 = v15;
          if (v16 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id && mlir::AffineMapAttr::getValue(&v18) == Value)
          {
            return mlir::AffineMapAttr::getValue(&v17) == Value;
          }
        }

        else
        {
          v9 = mlir::ArrayAttr::getValue(&v20);
          v10 = *v9;
          v11 = *(**v9 + 136);
          if (v11 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
          {
            v10 = 0;
          }

          v18 = v10;
          if (v11 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
          {
            v12 = *(mlir::ArrayAttr::getValue(&v20) + 8);
            v13 = *(*v12 + 136);
            if (v13 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
            {
              v12 = 0;
            }

            v17 = v12;
            if (v13 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && mlir::AffineMapAttr::getValue(&v18) == Value)
            {
              return mlir::AffineMapAttr::getValue(&v17) == Value;
            }
          }
        }
      }
    }
  }

  return 0;
}

BOOL mlir::complex::ConstantOp::verify(mlir::complex::ConstantOp *this)
{
  v93 = *MEMORY[0x1E69E9840];
  v78 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  mlir::ArrayAttr::getValue(&v78);
  if (v2 == 2)
  {
    v82[0] = *(*this - 8) & 0xFFFFFFFFFFFFFFF8;
    Value = mlir::AffineMapAttr::getValue(v82);
    v4 = *(**mlir::ArrayAttr::getValue(&v78) + 136);
    v5 = v4 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
    if (v5 && ((v6 = *(**(mlir::ArrayAttr::getValue(&v78) + 8) + 136), v6 != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id) ? (v7 = v6 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id) : (v7 = 1), v7))
    {
      v8 = mlir::ArrayAttr::getValue(&v78);
      v75[0] = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*v8);
      v75[1] = v9;
      v10 = mlir::ArrayAttr::getValue(&v78);
      v74[0] = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*(v10 + 8));
      v74[1] = v11;
      if (Value == mlir::CallOpInterface::getCallableForCallee(v75) && Value == mlir::CallOpInterface::getCallableForCallee(v74))
      {
        return 1;
      }

      v77 = 257;
      mlir::OpState::emitOpError(this, v76, v82);
      if (v82[0])
      {
        v79 = 3;
        v80 = "requires attribute's element types (";
        v81 = 36;
        v27 = &v79;
        v28 = v83;
        if (v84 >= v85)
        {
          if (v83 <= &v79 && v83 + 24 * v84 > &v79)
          {
            v67 = &v79 - v83;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
            v28 = v83;
            v27 = (v83 + v67);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
            v27 = &v79;
            v28 = v83;
          }
        }

        v29 = &v28[24 * v84];
        v30 = *v27;
        *(v29 + 2) = *(v27 + 2);
        *v29 = v30;
        ++v84;
      }

      CallableForCallee = mlir::CallOpInterface::getCallableForCallee(v75);
      if (v82[0])
      {
        v32 = &v79;
        mlir::DiagnosticArgument::DiagnosticArgument(&v79, CallableForCallee);
        v33 = v83;
        if (v84 >= v85)
        {
          if (v83 <= &v79 && v83 + 24 * v84 > &v79)
          {
            v68 = &v79 - v83;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
            v33 = v83;
            v32 = (v83 + v68);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
            v32 = &v79;
            v33 = v83;
          }
        }

        v34 = &v33[24 * v84];
        v35 = *v32;
        *(v34 + 2) = *(v32 + 2);
        *v34 = v35;
        v36 = ++v84;
        if (v82[0])
        {
          v79 = 3;
          v80 = ", ";
          v81 = 2;
          v37 = &v79;
          v38 = v83;
          if (v36 >= v85)
          {
            if (v83 <= &v79 && v83 + 24 * v36 > &v79)
            {
              v70 = &v79 - v83;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v36 + 1, 24);
              v38 = v83;
              v37 = (v83 + v70);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v36 + 1, 24);
              v37 = &v79;
              v38 = v83;
            }
          }

          v39 = &v38[24 * v84];
          v40 = *v37;
          *(v39 + 2) = *(v37 + 2);
          *v39 = v40;
          ++v84;
        }
      }

      v41 = mlir::CallOpInterface::getCallableForCallee(v74);
      if (v82[0])
      {
        v42 = &v79;
        mlir::DiagnosticArgument::DiagnosticArgument(&v79, v41);
        v43 = v83;
        if (v84 >= v85)
        {
          if (v83 <= &v79 && v83 + 24 * v84 > &v79)
          {
            v69 = &v79 - v83;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
            v43 = v83;
            v42 = (v83 + v69);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
            v42 = &v79;
            v43 = v83;
          }
        }

        v44 = &v43[24 * v84];
        v45 = *v42;
        *(v44 + 2) = *(v42 + 2);
        *v44 = v45;
        v46 = ++v84;
        if (v82[0])
        {
          v79 = 3;
          v80 = ") to match the element type of the op's return type (";
          v81 = 53;
          v47 = &v79;
          v48 = v83;
          if (v46 >= v85)
          {
            if (v83 <= &v79 && v83 + 24 * v46 > &v79)
            {
              v71 = &v79 - v83;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v46 + 1, 24);
              v48 = v83;
              v47 = (v83 + v71);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v46 + 1, 24);
              v47 = &v79;
              v48 = v83;
            }
          }

          v49 = &v48[24 * v84];
          v50 = *v47;
          *(v49 + 2) = *(v47 + 2);
          *v49 = v50;
          ++v84;
          if (v82[0])
          {
            v51 = &v79;
            mlir::DiagnosticArgument::DiagnosticArgument(&v79, Value);
            v52 = v83;
            if (v84 >= v85)
            {
              if (v83 <= &v79 && v83 + 24 * v84 > &v79)
              {
                v72 = &v79 - v83;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
                v52 = v83;
                v51 = (v83 + v72);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
                v51 = &v79;
                v52 = v83;
              }
            }

            v53 = &v52[24 * v84];
            v54 = *v51;
            *(v53 + 2) = *(v51 + 2);
            *v53 = v54;
            v55 = ++v84;
            if (v82[0])
            {
              v79 = 3;
              v80 = ")";
              v81 = 1;
              v56 = &v79;
              v57 = v83;
              if (v55 >= v85)
              {
                if (v83 <= &v79 && v83 + 24 * v55 > &v79)
                {
                  v73 = &v79 - v83;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v55 + 1, 24);
                  v57 = v83;
                  v56 = (v83 + v73);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v55 + 1, 24);
                  v56 = &v79;
                  v57 = v83;
                }
              }

              v58 = &v57[24 * v84];
              v59 = *v56;
              *(v58 + 2) = *(v56 + 2);
              *v58 = v59;
              ++v84;
            }
          }
        }
      }

      v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v82);
      if (v82[0])
      {
        mlir::InFlightDiagnostic::report(v82);
      }

      if (v92 == 1)
      {
        if (v91 != &v92)
        {
          free(v91);
        }

        v60 = __p;
        if (__p)
        {
          v61 = v90;
          v62 = __p;
          if (v90 != __p)
          {
            do
            {
              v61 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v61 - 1);
            }

            while (v61 != v60);
            v62 = __p;
          }

          v90 = v60;
          operator delete(v62);
        }

        v16 = v87;
        if (!v87)
        {
          goto LABEL_82;
        }

        v63 = v88;
        v18 = v87;
        if (v88 == v87)
        {
          goto LABEL_81;
        }

        do
        {
          v65 = *--v63;
          v64 = v65;
          *v63 = 0;
          if (v65)
          {
            operator delete[](v64);
          }
        }

        while (v63 != v16);
        goto LABEL_80;
      }
    }

    else
    {
      v76[0] = "requires attribute's elements to be float or integer attributes";
      v77 = 259;
      mlir::OpState::emitOpError(this, v76, v82);
      v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v82);
      if (v82[0])
      {
        mlir::InFlightDiagnostic::report(v82);
      }

      if (v92 == 1)
      {
        if (v91 != &v92)
        {
          free(v91);
        }

        v21 = __p;
        if (__p)
        {
          v22 = v90;
          v23 = __p;
          if (v90 != __p)
          {
            do
            {
              v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
            }

            while (v22 != v21);
            v23 = __p;
          }

          v90 = v21;
          operator delete(v23);
        }

        v16 = v87;
        if (!v87)
        {
          goto LABEL_82;
        }

        v24 = v88;
        v18 = v87;
        if (v88 == v87)
        {
LABEL_81:
          v88 = v16;
          operator delete(v18);
LABEL_82:
          if (v83 != v86)
          {
            free(v83);
          }

          return v12;
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

        while (v24 != v16);
LABEL_80:
        v18 = v87;
        goto LABEL_81;
      }
    }
  }

  else
  {
    v76[0] = "requires 'value' to be a complex constant, represented as array of two values";
    v77 = 259;
    mlir::OpState::emitOpError(this, v76, v82);
    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v82);
    if (v82[0])
    {
      mlir::InFlightDiagnostic::report(v82);
    }

    if (v92 == 1)
    {
      if (v91 != &v92)
      {
        free(v91);
      }

      v13 = __p;
      if (__p)
      {
        v14 = v90;
        v15 = __p;
        if (v90 != __p)
        {
          do
          {
            v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
          }

          while (v14 != v13);
          v15 = __p;
        }

        v90 = v13;
        operator delete(v15);
      }

      v16 = v87;
      if (!v87)
      {
        goto LABEL_82;
      }

      v17 = v88;
      v18 = v87;
      if (v88 == v87)
      {
        goto LABEL_81;
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
      goto LABEL_80;
    }
  }

  return v12;
}