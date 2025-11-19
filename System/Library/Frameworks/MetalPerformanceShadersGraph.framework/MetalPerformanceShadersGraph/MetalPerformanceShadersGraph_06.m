uint64_t mlir::arith::symbolizeRoundingMode(mlir::arith *this, StringRef a2)
{
  result = 0;
  if (a2.var0 <= 10)
  {
    if (a2.var0 != 6)
    {
      if (a2.var0 == 8)
      {
        if (*this == 0x647261776E776F64)
        {
          return 0x100000001;
        }

        else
        {
          return 0;
        }
      }

      return result;
    }

    v5 = *this;
    v6 = *(this + 2);
    if (v5 == 1635217525 && v6 == 25714)
    {
      return 0x100000002;
    }

    return 0;
  }

  if (a2.var0 == 11)
  {
    v8 = *this;
    v9 = *(this + 3);
    if (v8 == 0x7A5F647261776F74 && v9 == 0x6F72657A5F647261)
    {
      return 0x100000003;
    }

    return 0;
  }

  if (a2.var0 == 15)
  {
    if (*this == 0x657261656E5F6F74 && *(this + 7) == 0x6E6576655F747365)
    {
      return 0x100000000;
    }

    else if (*this ^ 0x657261656E5F6F74 | *(this + 7) ^ 0x796177615F747365)
    {
      return 0;
    }

    else
    {
      return 0x100000004;
    }
  }

  return result;
}

void mlir::arith::TruncFOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v40[4] = *MEMORY[0x1E69E9840];
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
  if (!*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9))
  {
    goto LABEL_23;
  }

  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 32);
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 32;
  }

  v38 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9);
  if (!v38)
  {
    goto LABEL_17;
  }

  Int = mlir::IntegerAttr::getInt(&v38);
  if (Int <= 1)
  {
    if (Int)
    {
      if (Int == 1)
      {
        v9 = 0;
        v10 = "downward";
        v11 = 8;
        goto LABEL_19;
      }

      goto LABEL_60;
    }

LABEL_17:
    v9 = 0;
    v10 = "to_nearest_even";
    goto LABEL_18;
  }

  switch(Int)
  {
    case 2:
      v9 = 0;
      v10 = "upward";
      v11 = 6;
      goto LABEL_19;
    case 3:
      v9 = 0;
      v10 = "toward_zero";
      v11 = 11;
      goto LABEL_19;
    case 4:
      v9 = 0;
      v10 = "to_nearest_away";
LABEL_18:
      v11 = 15;
      goto LABEL_19;
  }

LABEL_60:
  v11 = 0;
  v10 = "";
  v9 = 1;
LABEL_19:
  v12 = (*(*a2 + 16))(a2);
  if (v11 <= *(v12 + 24) - *(v12 + 32))
  {
    if ((v9 & 1) == 0)
    {
      v13 = v12;
      memcpy(*(v12 + 32), v10, v11);
      *(v13 + 32) += v11;
    }
  }

  else
  {
    llvm::raw_ostream::write(v12, v10, v11);
  }

LABEL_23:
  v14 = *this;
  if (*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8))
  {
    v15 = (*(*a2 + 16))(a2);
    v16 = *(v15 + 4);
    if (v16 >= *(v15 + 3))
    {
      llvm::raw_ostream::write(v15, 32);
    }

    else
    {
      *(v15 + 4) = v16 + 1;
      *v16 = 32;
    }

    v17 = (*(*a2 + 16))(a2);
    v18 = v17[4];
    if (v17[3] - v18 > 7uLL)
    {
      *v18 = 0x6874616D74736166;
      v17[4] += 8;
    }

    else
    {
      llvm::raw_ostream::write(v17, "fastmath", 8uLL);
    }

    v38 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
    if (((*(*a2 + 56))(a2) & 1) == 0)
    {
      v19 = (*(*a2 + 16))(a2);
      v20 = (*(*v19 + 80))(v19) + v19[4] - v19[2];
      mlir::arith::FastMathFlagsAttr::print(&v38, a2);
      if (v20 == (*(*v19 + 80))(v19) + v19[4] - v19[2])
      {
        (*(*a2 + 40))(a2, v38);
      }
    }

    v14 = *this;
  }

  v38 = v40;
  v40[0] = "roundingmode";
  v40[1] = 12;
  v40[2] = "fastmath";
  v40[3] = 8;
  v39 = 0x200000002;
  AttrDictionary = mlir::Operation::getAttrDictionary(v14);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v22, v38, v39);
  v23 = (*(*a2 + 16))(a2);
  v24 = *(v23 + 4);
  if (v24 >= *(v23 + 3))
  {
    llvm::raw_ostream::write(v23, 32);
  }

  else
  {
    *(v23 + 4) = v24 + 1;
    *v24 = 32;
  }

  v25 = (*(*a2 + 16))(a2);
  v26 = v25[4];
  if (v25[3] == v26)
  {
    llvm::raw_ostream::write(v25, ":", 1uLL);
  }

  else
  {
    *v26 = 58;
    ++v25[4];
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v29 = (*(*a2 + 16))(a2);
  v30 = *(v29 + 4);
  if (v30 >= *(v29 + 3))
  {
    llvm::raw_ostream::write(v29, 32);
  }

  else
  {
    *(v29 + 4) = v30 + 1;
    *v30 = 32;
  }

  v31 = (*(*a2 + 16))(a2);
  v32 = v31[4];
  if (v31[3] - v32 > 1uLL)
  {
    *v32 = 28532;
    v31[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v31, "to", 2uLL);
  }

  v33 = (*(*a2 + 16))(a2);
  v34 = *(v33 + 4);
  if (v34 >= *(v33 + 3))
  {
    llvm::raw_ostream::write(v33, 32);
  }

  else
  {
    *(v33 + 4) = v34 + 1;
    *v34 = 32;
  }

  if (*(*this + 9))
  {
    v35 = *this - 16;
  }

  else
  {
    v35 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v35, 0);
  (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v38 != v40)
  {
    free(v38);
  }
}

uint64_t mlir::arith::TruncIOp::parse(uint64_t a1, uint64_t a2)
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
  if (((*(*a1 + 536))(a1, v12) & 1) == 0)
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
  if (((*(*a1 + 536))(a1, &v6) & 1) == 0)
  {
    return 0;
  }

  v12[0] = v6;
  mlir::OperationState::addTypes(a2, v12, 1);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v9, v7, v4, a2 + 16) & 1;
}

uint64_t mlir::arith::UIToFPOp::parse(uint64_t a1, uint64_t a2)
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
  if (((*(*a1 + 536))(a1, v12) & 1) == 0)
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
  if (((*(*a1 + 536))(a1, &v6) & 1) == 0)
  {
    return 0;
  }

  v12[0] = v6;
  mlir::OperationState::addTypes(a2, v12, 1);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v9, v7, v4, a2 + 16) & 1;
}

uint64_t mlir::arith::XOrIOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v9, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v7, 1)) && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v5 = 0, ((*(*a1 + 536))(a1, &v5)) && (v6 = v5, mlir::OperationState::addTypes(a2, &v6, 1), ((*(*a1 + 728))(a1, v9, v6, a2 + 16)))
  {
    return (*(*a1 + 728))(a1, v7, v6, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

void mlir::arith::SelectOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v14 = a4;
  v15 = a3;
  v13 = a5;
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  mlir::OperationState::addOperands(a2, &v13, 1uLL);
  __src = v20;
  v19 = 0x200000000;
  mlir::ValueRange::ValueRange(&v17, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(&v16, *(a2 + 224), *(a2 + 232));
  v21 = v17;
  if (v19 != 1)
  {
    if (!v19)
    {
      if (HIDWORD(v19))
      {
        v7 = 0;
LABEL_6:
        bzero(__src + 8 * v7, 8 - 8 * v7);
        goto LABEL_7;
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v20, 1uLL, 8);
      v7 = v19;
      if (v19 != 1)
      {
        goto LABEL_6;
      }
    }

LABEL_7:
    LODWORD(v19) = 1;
  }

  v8 = mlir::ValueRange::dereference_iterator(&v21, 2);
  v9 = __src;
  *__src = *(v8 + 8) & 0xFFFFFFFFFFFFFFF8;
  v10 = v19;
  v11 = *(a2 + 72);
  v12 = v11 + v19;
  if (v12 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v12, 8);
    LODWORD(v11) = *(a2 + 72);
  }

  if (v10)
  {
    memcpy((*(a2 + 64) + 8 * v11), v9, 8 * v10);
    LODWORD(v11) = *(a2 + 72);
  }

  *(a2 + 72) = v11 + v10;
  if (__src != v20)
  {
    free(__src);
  }
}

uint64_t mlir::arith::SelectOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v14[0] = a4;
  v14[1] = a5;
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

  **a11 = *(mlir::ValueRange::dereference_iterator(v14, 2) + 8) & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::arith::SelectOp::verifyInvariantsImpl(mlir::arith::SelectOp *this)
{
  v110 = *MEMORY[0x1E69E9840];
  v2 = 0;
  if ((mlir::arith::__mlir_ods_local_type_constraint_ArithOps3(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
  {
    return v2;
  }

  if (*(*this + 36))
  {
    v3 = *this - 16;
  }

  else
  {
    v3 = 0;
  }

  mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0);
  v4 = *this;
  v5 = *(*this + 72);
  v6 = *(*(v5 + 88) + 8);
  if ((v6 ^ *(*(v5 + 56) + 8)) > 7 || ((v7 = *(v4 + 36), v8 = v4 - 16, v7) ? (v9 = v8) : (v9 = 0), (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0) + 8) ^ v6) > 7 || (*(*this + 36) ? (v10 = *this - 16) : (v10 = 0), NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0), v12 = *(*this + 72), (*(*(v12 + 56) + 8) ^ *(NextResultAtOffset + 8)) >= 8)))
  {
    v98 = "failed to verify that all of {true_value, false_value, result} have same type";
    v100 = 259;
    mlir::OpState::emitOpError(this, &v98, v101);
    v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v101);
    if (v101[0])
    {
      mlir::InFlightDiagnostic::report(v101);
    }

    if (v109 == 1)
    {
      if (v108 != &v109)
      {
        free(v108);
      }

      v13 = __p;
      if (__p)
      {
        v14 = v107;
        v15 = __p;
        if (v107 != __p)
        {
          do
          {
            v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
          }

          while (v14 != v13);
          v15 = __p;
        }

        v107 = v13;
        operator delete(v15);
      }

      v16 = v104;
      if (!v104)
      {
        goto LABEL_118;
      }

      v17 = v105;
      v18 = v104;
      if (v105 == v104)
      {
LABEL_117:
        v105 = v16;
        operator delete(v18);
LABEL_118:
        if (v102 != &v103)
        {
          free(v102);
        }

        return v2;
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
LABEL_116:
      v18 = v104;
      goto LABEL_117;
    }

    return v2;
  }

  v97 = *(*(v12 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (mlir::Type::isSignlessInteger(&v97, 1))
  {
    return 1;
  }

  v21 = (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v21)
  {
    goto LABEL_45;
  }

  v22 = *v21;
  {
    v23 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v24 = *(v22 + 8);
    v25 = *(v22 + 16);
    if (v25)
    {
      goto LABEL_35;
    }

LABEL_42:
    v25 = 0;
    v26 = v24;
    goto LABEL_43;
  }

  mlir::arith::ExtUIOp::fold();
  v23 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v24 = *(v22 + 8);
  v25 = *(v22 + 16);
  if (!v25)
  {
    goto LABEL_42;
  }

LABEL_35:
  v26 = v24;
  v27 = v25;
  do
  {
    v28 = v27 >> 1;
    v29 = &v26[2 * (v27 >> 1)];
    v31 = *v29;
    v30 = v29 + 2;
    v27 += ~(v27 >> 1);
    if (v31 < v23)
    {
      v26 = v30;
    }

    else
    {
      v27 = v28;
    }
  }

  while (v27);
LABEL_43:
  if (v26 == &v24[2 * v25] || *v26 != v23)
  {
LABEL_45:
    v32 = 0;
    goto LABEL_46;
  }

  v32 = v26[1];
LABEL_46:
  v101[0] = v21;
  v101[1] = v32;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v101);
  v35 = v34;
  if (*(*this + 36))
  {
    v36 = *this - 16;
  }

  else
  {
    v36 = 0;
  }

  v37 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v36, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v37)
  {
LABEL_63:
    v98 = v37;
    v99 = 0;
    v48 = mlir::CallableOpInterface::getArgAttrsAttr(&v98);
    if (v35 != v49)
    {
      goto LABEL_100;
    }

    goto LABEL_64;
  }

  v38 = *v37;
  {
    v39 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v40 = *(v38 + 8);
    v41 = *(v38 + 16);
    if (v41)
    {
      goto LABEL_52;
    }

LABEL_60:
    v41 = 0;
    v42 = v40;
    goto LABEL_61;
  }

  v91 = v38;
  v92 = v37;
  mlir::arith::ExtUIOp::fold();
  v37 = v92;
  v39 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v40 = *(v91 + 8);
  v41 = *(v91 + 16);
  if (!v41)
  {
    goto LABEL_60;
  }

LABEL_52:
  v42 = v40;
  v43 = v41;
  do
  {
    v44 = v43 >> 1;
    v45 = &v42[2 * (v43 >> 1)];
    v47 = *v45;
    v46 = v45 + 2;
    v43 += ~(v43 >> 1);
    if (v47 < v39)
    {
      v42 = v46;
    }

    else
    {
      v43 = v44;
    }
  }

  while (v43);
LABEL_61:
  if (v42 == &v40[2 * v41] || *v42 != v39)
  {
    goto LABEL_63;
  }

  v62 = v42[1];
  v98 = v37;
  v99 = v62;
  v48 = mlir::CallableOpInterface::getArgAttrsAttr(&v98);
  if (v35 != v63)
  {
    goto LABEL_100;
  }

LABEL_64:
  if (memcmp(ArgAttrsAttr, v48, 8 * v35))
  {
    goto LABEL_100;
  }

  if (*(*this + 36))
  {
    v50 = *this - 16;
  }

  else
  {
    v50 = 0;
  }

  v51 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v50, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v51)
  {
    goto LABEL_83;
  }

  v52 = *v51;
  {
    v53 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v54 = *(v52 + 8);
    v55 = *(v52 + 16);
    if (v55)
    {
      goto LABEL_71;
    }

LABEL_80:
    v55 = 0;
    v56 = v54;
    goto LABEL_81;
  }

  mlir::arith::ExtUIOp::fold();
  v53 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v54 = *(v52 + 8);
  v55 = *(v52 + 16);
  if (!v55)
  {
    goto LABEL_80;
  }

LABEL_71:
  v56 = v54;
  v57 = v55;
  do
  {
    v58 = v57 >> 1;
    v59 = &v56[2 * (v57 >> 1)];
    v61 = *v59;
    v60 = v59 + 2;
    v57 += ~(v57 >> 1);
    if (v61 < v53)
    {
      v56 = v60;
    }

    else
    {
      v57 = v58;
    }
  }

  while (v57);
LABEL_81:
  if (v56 == &v54[2 * v55] || *v56 != v53)
  {
LABEL_83:
    v64 = 0;
    goto LABEL_84;
  }

  v64 = v56[1];
LABEL_84:
  v96[0] = v51;
  v96[1] = v64;
  v65 = mlir::CallableOpInterface::getArgAttrsAttr(v96);
  v67 = v66;
  v68 = (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v68)
  {
    goto LABEL_98;
  }

  v69 = *v68;
  {
    v70 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v71 = *(v69 + 8);
    v72 = *(v69 + 16);
    if (v72)
    {
      goto LABEL_87;
    }

LABEL_95:
    v72 = 0;
    v73 = v71;
    goto LABEL_96;
  }

  v93 = v68;
  v79 = v69;
  mlir::arith::ExtUIOp::fold();
  v68 = v93;
  v70 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v71 = *(v79 + 8);
  v72 = *(v79 + 16);
  if (!v72)
  {
    goto LABEL_95;
  }

LABEL_87:
  v73 = v71;
  v74 = v72;
  do
  {
    v75 = v74 >> 1;
    v76 = &v73[2 * (v74 >> 1)];
    v78 = *v76;
    v77 = v76 + 2;
    v74 += ~(v74 >> 1);
    if (v78 < v70)
    {
      v73 = v77;
    }

    else
    {
      v74 = v75;
    }
  }

  while (v74);
LABEL_96:
  if (v73 != &v71[2 * v72] && *v73 == v70)
  {
    v89 = v73[1];
    v94 = v68;
    v95 = v89;
    v80 = mlir::CallableOpInterface::getArgAttrsAttr(&v94);
    if (v67 != v90)
    {
      goto LABEL_100;
    }

    goto LABEL_99;
  }

LABEL_98:
  v94 = v68;
  v95 = 0;
  v80 = mlir::CallableOpInterface::getArgAttrsAttr(&v94);
  if (v67 != v81)
  {
    goto LABEL_100;
  }

LABEL_99:
  if (!memcmp(v65, v80, 8 * v67))
  {
    return 1;
  }

LABEL_100:
  v98 = "failed to verify that condition is signless i1 or has matching shape";
  v100 = 259;
  mlir::OpState::emitOpError(this, &v98, v101);
  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v101);
  if (v101[0])
  {
    mlir::InFlightDiagnostic::report(v101);
  }

  if (v109 == 1)
  {
    if (v108 != &v109)
    {
      free(v108);
    }

    v82 = __p;
    if (__p)
    {
      v83 = v107;
      v84 = __p;
      if (v107 != __p)
      {
        do
        {
          v83 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v83 - 1);
        }

        while (v83 != v82);
        v84 = __p;
      }

      v107 = v82;
      operator delete(v84);
    }

    v16 = v104;
    if (!v104)
    {
      goto LABEL_118;
    }

    v85 = v105;
    v18 = v104;
    if (v105 == v104)
    {
      goto LABEL_117;
    }

    do
    {
      v87 = *--v85;
      v86 = v87;
      *v85 = 0;
      if (v87)
      {
        operator delete[](v86);
      }
    }

    while (v85 != v16);
    goto LABEL_116;
  }

  return v2;
}

uint64_t mlir::arith::CmpFPredicateAttr::classof(uint64_t a1)
{
  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return 0;
  }

  v19 = a1;
  Value = mlir::AffineMapAttr::getValue(&v19);
  result = mlir::Type::isSignlessInteger(&Value, 64);
  if (result)
  {
    v18 = a1;
    if (mlir::IntegerAttr::getInt(&v18))
    {
      v17 = a1;
      result = mlir::IntegerAttr::getInt(&v17);
      if (result == 1)
      {
        return result;
      }

      v16 = a1;
      if (mlir::IntegerAttr::getInt(&v16) != 2)
      {
        v15 = a1;
        if (mlir::IntegerAttr::getInt(&v15) != 3)
        {
          v14 = a1;
          if (mlir::IntegerAttr::getInt(&v14) != 4)
          {
            v13 = a1;
            if (mlir::IntegerAttr::getInt(&v13) != 5)
            {
              v12 = a1;
              if (mlir::IntegerAttr::getInt(&v12) != 6)
              {
                v11 = a1;
                if (mlir::IntegerAttr::getInt(&v11) != 7)
                {
                  v10 = a1;
                  if (mlir::IntegerAttr::getInt(&v10) != 8)
                  {
                    v9 = a1;
                    if (mlir::IntegerAttr::getInt(&v9) != 9)
                    {
                      v8 = a1;
                      if (mlir::IntegerAttr::getInt(&v8) != 10)
                      {
                        v7 = a1;
                        if (mlir::IntegerAttr::getInt(&v7) != 11)
                        {
                          v6 = a1;
                          if (mlir::IntegerAttr::getInt(&v6) != 12)
                          {
                            v5 = a1;
                            if (mlir::IntegerAttr::getInt(&v5) != 13)
                            {
                              v4 = a1;
                              if (mlir::IntegerAttr::getInt(&v4) != 14)
                              {
                                v3 = a1;
                                return mlir::IntegerAttr::getInt(&v3) == 15;
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
    }

    return 1;
  }

  return result;
}

uint64_t mlir::arith::CmpIPredicateAttr::classof(uint64_t a1)
{
  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return 0;
  }

  v13 = a1;
  Value = mlir::AffineMapAttr::getValue(&v13);
  result = mlir::Type::isSignlessInteger(&Value, 64);
  if (result)
  {
    v12 = a1;
    if (mlir::IntegerAttr::getInt(&v12))
    {
      v11 = a1;
      result = mlir::IntegerAttr::getInt(&v11);
      if (result == 1)
      {
        return result;
      }

      v10 = a1;
      if (mlir::IntegerAttr::getInt(&v10) != 2)
      {
        v9 = a1;
        if (mlir::IntegerAttr::getInt(&v9) != 3)
        {
          v8 = a1;
          if (mlir::IntegerAttr::getInt(&v8) != 4)
          {
            v7 = a1;
            if (mlir::IntegerAttr::getInt(&v7) != 5)
            {
              v6 = a1;
              if (mlir::IntegerAttr::getInt(&v6) != 6)
              {
                v5 = a1;
                if (mlir::IntegerAttr::getInt(&v5) != 7)
                {
                  v4 = a1;
                  if (mlir::IntegerAttr::getInt(&v4) != 8)
                  {
                    v3 = a1;
                    return mlir::IntegerAttr::getInt(&v3) == 9;
                  }
                }
              }
            }
          }
        }
      }
    }

    return 1;
  }

  return result;
}

void mlir::arith::stringifyIntegerOverflowFlags(int a1@<W0>, uint64_t a2@<X8>)
{
  v24[2] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    *(a2 + 23) = 4;
    strcpy(a2, "none");
    return;
  }

  v3 = (a1 & 1) == 0;
  if ((a1 & 1) == 0)
  {
    v4 = 0;
    if ((a1 & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_8:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    if ((a1 & 1) == 0)
    {
      return;
    }

    v3 = 1;
    v7 = 16 * v4;
    v8 = 2 * v4 - 2;
    v9 = v7 - 16;
    if (v7 - 16 <= 0x3F)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v22 = "nsw";
  v23 = 3;
  v4 = 1;
  if ((a1 & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = &(&v22)[2 * v4];
  *v5 = "nuw";
  v5[1] = 3;
  v6 = v4 + 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v7 = 16 * v6;
  v8 = 2 * v6 - 2;
  v9 = v7 - 16;
  if (v7 - 16 <= 0x3F)
  {
LABEL_5:
    v10 = &v22;
    goto LABEL_13;
  }

LABEL_10:
  v11 = (v9 >> 4) - 3;
  v10 = &(&v22)[2 * v11];
  v12 = 0uLL;
  v13 = v8;
  v14 = &v25;
  do
  {
    v15 = v14 - 4;
    v16 = vld2q_f64(v15);
    v17 = vld2q_f64(v14);
    v13 = vaddq_s64(v16, v13);
    v12 = vaddq_s64(v17, v12);
    v14 += 8;
    v11 -= 4;
  }

  while (v11);
  v8 = vaddvq_s64(vaddq_s64(v12, v13));
LABEL_13:
  v18 = &(&v22)[v7 / 8];
  do
  {
    v8 += v10[1];
    v10 += 2;
  }

  while (v10 != v18);
  std::string::reserve(a2, v8);
  std::string::append(a2, v22, v23);
  if (!v3)
  {
    v19 = v24;
    do
    {
      std::string::append(a2, ", ", 2uLL);
      v20 = *v19;
      v21 = v19[1];
      v19 += 2;
      std::string::append(a2, v20, v21);
    }

    while (v19 != v18);
  }
}

uint64_t mlir::arith::symbolizeIntegerOverflowFlags(_DWORD *a1, uint64_t a2)
{
  v23[4] = *MEMORY[0x1E69E9840];
  *&v18 = a1;
  *(&v18 + 1) = a2;
  if (a2 != 4 || *a1 != 1701736302)
  {
    v21 = v23;
    v22 = 0x200000000;
    llvm::StringRef::split(&v18, &v21, ",", 1uLL, -1, 1);
    if (v22)
    {
      v2 = 0;
      v3 = v21;
      v4 = 16 * v22;
      while (1)
      {
        v17 = *v3;
        first_not_of = llvm::StringRef::find_first_not_of(&v17, " \t\n\v\f\r", 6, 0);
        if (first_not_of >= *(&v17 + 1))
        {
          v6 = *(&v17 + 1);
        }

        else
        {
          v6 = first_not_of;
        }

        v7 = *(&v17 + 1) - v6;
        v19 = v17 + v6;
        v20 = *(&v17 + 1) - v6;
        last_not_of = llvm::StringRef::find_last_not_of(&v19, " \t\n\v\f\r", 6, 0xFFFFFFFFFFFFFFFFLL);
        if (last_not_of + 1 < v20)
        {
          v9 = last_not_of + 1;
        }

        else
        {
          v9 = v20;
        }

        v10 = v20 - v7 + v9;
        if (v20 < v10)
        {
          v10 = v20;
        }

        if (v10 != 3)
        {
          break;
        }

        if (*v19 == 29550 && *(v19 + 2) == 119)
        {
          v2 |= 1u;
          ++v3;
          v4 -= 16;
          if (!v4)
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (*v19 != 30062 || *(v19 + 2) != 119)
          {
            break;
          }

          v2 |= 2u;
          ++v3;
          v4 -= 16;
          if (!v4)
          {
LABEL_25:
            v13 = v2;
            goto LABEL_29;
          }
        }
      }

      v14 = 0;
      v13 = 0;
      v15 = v21;
      if (v21 == v23)
      {
        return v14 | v13;
      }
    }

    else
    {
      v13 = 0;
LABEL_29:
      v14 = 0x100000000;
      v15 = v21;
      if (v21 == v23)
      {
        return v14 | v13;
      }
    }

    free(v15);
    return v14 | v13;
  }

  return 0x100000000;
}

uint64_t mlir::arith::RoundingModeAttr::classof(uint64_t a1)
{
  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return 0;
  }

  v8 = a1;
  Value = mlir::AffineMapAttr::getValue(&v8);
  result = mlir::Type::isSignlessInteger(&Value, 32);
  if (result)
  {
    v7 = a1;
    if (mlir::IntegerAttr::getInt(&v7))
    {
      v6 = a1;
      result = mlir::IntegerAttr::getInt(&v6);
      if (result == 1)
      {
        return result;
      }

      v5 = a1;
      if (mlir::IntegerAttr::getInt(&v5) != 2)
      {
        v4 = a1;
        if (mlir::IntegerAttr::getInt(&v4) != 3)
        {
          v3 = a1;
          return mlir::IntegerAttr::getInt(&v3) == 4;
        }
      }
    }

    return 1;
  }

  return result;
}

const char *mlir::arith::stringifyAtomicRMWKind(unint64_t a1)
{
  if (a1 > 0xE)
  {
    return "";
  }

  else
  {
    return (&off_1E86D2980)[a1];
  }
}

uint64_t mlir::arith::symbolizeAtomicRMWKind(mlir::arith *this, StringRef a2)
{
  if (a2.var0 <= 5)
  {
    if (a2.var0 == 3)
    {
      if (*this == 29295 && *(this + 2) == 105)
      {
        return 11;
      }
    }

    else if (a2.var0 == 4)
    {
      switch(*this)
      {
        case 0x66646461:
          return 0;
        case 0x69646461:
          return 1;
        case 0x7378616D:
          return 4;
        case 0x7578616D:
          return 5;
        case 0x736E696D:
          return 7;
        case 0x756E696D:
          return 8;
        case 0x666C756D:
          return 9;
      }

      if (*this != 1768715629)
      {
        if (*this == 1768189537)
        {
          return 12;
        }

        return 0;
      }

      return 10;
    }

    return 0;
  }

  if (a2.var0 == 6)
  {
    if (*this == 1769173857 && *(this + 2) == 28263)
    {
      return 2;
    }

    return 0;
  }

  if (a2.var0 == 7)
  {
    if (*this == 1853383021 && *(this + 3) == 1718449518)
    {
      return 13;
    }

    if (*this ^ 0x6E6E696D | *(this + 3) ^ 0x666D756E)
    {
      return 0;
    }

    return 14;
  }

  if (a2.var0 != 8)
  {
    return 0;
  }

  if (*this != 0x666D756D6978616DLL)
  {
    if (*this == 0x666D756D696E696DLL)
    {
      return 6;
    }

    return 0;
  }

  return 3;
}

unint64_t mlir::arith::symbolizeAtomicRMWKind(unint64_t this)
{
  if (this >= 0xF)
  {
    return 0;
  }

  return this;
}

uint64_t mlir::arith::AtomicRMWKindAttr::classof(uint64_t a1)
{
  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return 0;
  }

  v18 = a1;
  Value = mlir::AffineMapAttr::getValue(&v18);
  result = mlir::Type::isSignlessInteger(&Value, 64);
  if (result)
  {
    v17 = a1;
    if (mlir::IntegerAttr::getInt(&v17))
    {
      v16 = a1;
      result = mlir::IntegerAttr::getInt(&v16);
      if (result == 1)
      {
        return result;
      }

      v15 = a1;
      if (mlir::IntegerAttr::getInt(&v15) != 2)
      {
        v14 = a1;
        if (mlir::IntegerAttr::getInt(&v14) != 3)
        {
          v13 = a1;
          if (mlir::IntegerAttr::getInt(&v13) != 4)
          {
            v12 = a1;
            if (mlir::IntegerAttr::getInt(&v12) != 5)
            {
              v11 = a1;
              if (mlir::IntegerAttr::getInt(&v11) != 6)
              {
                v10 = a1;
                if (mlir::IntegerAttr::getInt(&v10) != 7)
                {
                  v9 = a1;
                  if (mlir::IntegerAttr::getInt(&v9) != 8)
                  {
                    v8 = a1;
                    if (mlir::IntegerAttr::getInt(&v8) != 9)
                    {
                      v7 = a1;
                      if (mlir::IntegerAttr::getInt(&v7) != 10)
                      {
                        v6 = a1;
                        if (mlir::IntegerAttr::getInt(&v6) != 11)
                        {
                          v5 = a1;
                          if (mlir::IntegerAttr::getInt(&v5) != 12)
                          {
                            v4 = a1;
                            if (mlir::IntegerAttr::getInt(&v4) != 13)
                            {
                              v3 = a1;
                              return mlir::IntegerAttr::getInt(&v3) == 14;
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

    return 1;
  }

  return result;
}

uint64_t mlir::arith::AtomicRMWKindAttr::get(uint64_t *a1, uint64_t a2)
{
  v3 = mlir::IntegerType::get(a1, 64, 0);

  return mlir::IntegerAttr::get(v3, a2);
}

void mlir::arith::stringifyFastMathFlags(int a1@<W0>, uint64_t a2@<X8>)
{
  v39 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    *(a2 + 23) = 4;
    strcpy(a2, "none");
    return;
  }

  v35 = &v37;
  v36 = 0x200000000;
  if ((~a1 & 0x7F) == 0)
  {
    v37 = "fast";
    v38 = 4;
    LODWORD(v36) = 1;
    v3 = v35;
    v4 = v35 + 16;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    v5 = 1;
    v6 = 0;
    v7 = v4 - v3 - 16;
    v8 = v3;
    if (v7 > 0x3F)
    {
      goto LABEL_34;
    }

    goto LABEL_39;
  }

  if (a1)
  {
    v37 = "reassoc";
    v38 = 7;
    v5 = 1;
    LODWORD(v36) = 1;
    if ((a1 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v5 = 0;
  if ((a1 & 2) != 0)
  {
LABEL_10:
    v9 = &(&v37)[2 * v5];
    *v9 = "nnan";
    v9[1] = 4;
    v5 = v36 + 1;
    LODWORD(v36) = v36 + 1;
  }

LABEL_11:
  if ((a1 & 4) != 0)
  {
    if (v5 >= HIDWORD(v36))
    {
      v27 = v5;
      v28 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, &v37, v27 + 1, 16);
      LOBYTE(a1) = v28;
      v5 = v36;
    }

    v10 = v35 + 16 * v5;
    *v10 = "ninf";
    v10[1] = 4;
    v5 = v36 + 1;
    LODWORD(v36) = v36 + 1;
    if ((a1 & 8) == 0)
    {
LABEL_13:
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_24;
    }
  }

  else if ((a1 & 8) == 0)
  {
    goto LABEL_13;
  }

  if (v5 >= HIDWORD(v36))
  {
    v29 = v5;
    v30 = a1;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, &v37, v29 + 1, 16);
    LOBYTE(a1) = v30;
    v5 = v36;
  }

  v11 = v35 + 16 * v5;
  *v11 = "nsz";
  v11[1] = 3;
  v5 = v36 + 1;
  LODWORD(v36) = v36 + 1;
  if ((a1 & 0x10) == 0)
  {
LABEL_14:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_27;
  }

LABEL_24:
  if (v5 >= HIDWORD(v36))
  {
    v31 = v5;
    v32 = a1;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, &v37, v31 + 1, 16);
    LOBYTE(a1) = v32;
    v5 = v36;
  }

  v12 = v35 + 16 * v5;
  *v12 = "arcp";
  v12[1] = 4;
  v5 = v36 + 1;
  LODWORD(v36) = v36 + 1;
  if ((a1 & 0x20) == 0)
  {
LABEL_15:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_16;
    }

LABEL_30:
    if (v5 >= HIDWORD(v36))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, &v37, v5 + 1, 16);
      v5 = v36;
    }

    v14 = v35 + 16 * v5;
    *v14 = "afn";
    v14[1] = 3;
    LODWORD(v36) = v36 + 1;
    v5 = v36;
    v3 = v35;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    if (!v5)
    {
      goto LABEL_43;
    }

LABEL_33:
    v4 = &v3[16 * v5];
    v6 = v5 - 1;
    v7 = 16 * v5 - 16;
    v8 = v3;
    if (v7 > 0x3F)
    {
LABEL_34:
      v15 = (v7 >> 4) + 1;
      v16 = v15 & 3;
      if ((v15 & 3) == 0)
      {
        v16 = 4;
      }

      v17 = v15 - v16;
      v8 = &v3[16 * v17];
      v18 = 0uLL;
      v19 = v6;
      v20 = (v3 + 40);
      do
      {
        v21 = v20 - 4;
        v22 = vld2q_f64(v21);
        v23 = vld2q_f64(v20);
        v19 = vaddq_s64(v22, v19);
        v18 = vaddq_s64(v23, v18);
        v20 += 8;
        v17 -= 4;
      }

      while (v17);
      v6 = vaddvq_s64(vaddq_s64(v18, v19));
      goto LABEL_39;
    }

    do
    {
LABEL_39:
      v6 += *(v8 + 1);
      v8 += 16;
    }

    while (v8 != v4);
    std::string::reserve(a2, v6);
    std::string::append(a2, *v3, *(v3 + 1));
    if (v5 != 1)
    {
      v24 = v3 + 16;
      do
      {
        std::string::append(a2, ",", 1uLL);
        v25 = *v24;
        v26 = *(v24 + 1);
        v24 += 16;
        std::string::append(a2, v25, v26);
      }

      while (v24 != v4);
    }

    goto LABEL_43;
  }

LABEL_27:
  if (v5 >= HIDWORD(v36))
  {
    v33 = v5;
    v34 = a1;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, &v37, v33 + 1, 16);
    LOBYTE(a1) = v34;
    v5 = v36;
  }

  v13 = v35 + 16 * v5;
  *v13 = "contract";
  v13[1] = 8;
  v5 = v36 + 1;
  LODWORD(v36) = v36 + 1;
  if ((a1 & 0x40) != 0)
  {
    goto LABEL_30;
  }

LABEL_16:
  v3 = v35;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  if (v5)
  {
    goto LABEL_33;
  }

LABEL_43:
  if (v35 != &v37)
  {
    free(v35);
  }
}

uint64_t mlir::arith::symbolizeFastMathFlags(_DWORD *a1, uint64_t a2)
{
  v25[4] = *MEMORY[0x1E69E9840];
  *&v20 = a1;
  *(&v20 + 1) = a2;
  if (a2 == 4 && *a1 == 1701736302)
  {
    return 0x100000000;
  }

  v23 = v25;
  v24 = 0x200000000;
  llvm::StringRef::split(&v20, &v23, ",", 1uLL, -1, 1);
  if (v24)
  {
    v2 = 0;
    v3 = 16 * v24;
    v4 = v23;
    while (1)
    {
      v19 = *v4;
      first_not_of = llvm::StringRef::find_first_not_of(&v19, " \t\n\v\f\r", 6, 0);
      if (first_not_of >= *(&v19 + 1))
      {
        v7 = *(&v19 + 1);
      }

      else
      {
        v7 = first_not_of;
      }

      v8 = *(&v19 + 1) - v7;
      v21 = v19 + v7;
      v22 = *(&v19 + 1) - v7;
      last_not_of = llvm::StringRef::find_last_not_of(&v21, " \t\n\v\f\r", 6, 0xFFFFFFFFFFFFFFFFLL);
      if (last_not_of + 1 < v22)
      {
        v10 = last_not_of + 1;
      }

      else
      {
        v10 = v22;
      }

      v11 = v22 - v8 + v10;
      if (v22 < v11)
      {
        v11 = v22;
      }

      if (v11 > 6)
      {
        if (v11 == 8)
        {
          if (*v21 != 0x74636172746E6F63)
          {
            goto LABEL_52;
          }

          v5 = 32;
        }

        else
        {
          if (v11 != 7 || (*v21 == 1935762802 ? (v12 = *(v21 + 3) == 1668248435) : (v12 = 0), !v12))
          {
LABEL_52:
            v16 = 0;
            v15 = 0;
            v17 = v23;
            if (v23 != v25)
            {
              goto LABEL_49;
            }

            return v16 | v15;
          }

          v5 = 1;
        }
      }

      else if (v11 == 3)
      {
        if (*v21 == 29550 && *(v21 + 2) == 122)
        {
          v5 = 8;
        }

        else
        {
          if (*v21 != 26209 || *(v21 + 2) != 110)
          {
            goto LABEL_52;
          }

          v5 = 64;
        }
      }

      else
      {
        if (v11 != 4)
        {
          goto LABEL_52;
        }

        switch(*v21)
        {
          case 0x6E616E6E:
            v5 = 2;
            break;
          case 0x666E696E:
            v5 = 4;
            break;
          case 0x70637261:
            v5 = 16;
            break;
          case 0x74736166:
            v5 = 127;
            break;
          default:
            goto LABEL_52;
        }
      }

      v2 |= v5;
      ++v4;
      v3 -= 16;
      if (!v3)
      {
        v15 = v2;
        v16 = 0x100000000;
        v17 = v23;
        if (v23 == v25)
        {
          return v16 | v15;
        }

        goto LABEL_49;
      }
    }
  }

  v15 = 0;
  v16 = 0x100000000;
  v17 = v23;
  if (v23 != v25)
  {
LABEL_49:
    free(v17);
  }

  return v16 | v15;
}

void mlir::Diagnostic::~Diagnostic(mlir::Diagnostic *this)
{
  v2 = *(this + 22);
  if (v2 != this + 192)
  {
    free(v2);
  }

  v3 = *(this + 19);
  if (v3)
  {
    v4 = *(this + 20);
    v5 = *(this + 19);
    if (v4 != v3)
    {
      do
      {
        v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
      }

      while (v4 != v3);
      v5 = *(this + 19);
    }

    *(this + 20) = v3;
    operator delete(v5);
  }

  v6 = *(this + 16);
  if (v6)
  {
    v7 = *(this + 17);
    v8 = *(this + 16);
    if (v7 != v6)
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
      v8 = *(this + 16);
    }

    *(this + 17) = v6;
    operator delete(v8);
  }

  v11 = *(this + 2);
  if (v11 != this + 32)
  {
    free(v11);
  }
}

void **std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[22];
    if (v3 != v2 + 24)
    {
      free(v3);
    }

    v4 = v2[19];
    if (v4)
    {
      v5 = v2[20];
      v6 = v2[19];
      if (v5 != v4)
      {
        do
        {
          v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 8);
        }

        while (v5 != v4);
        v6 = v2[19];
      }

      v2[20] = v4;
      operator delete(v6);
    }

    v7 = v2[16];
    if (v7)
    {
      v8 = v2[17];
      v9 = v2[16];
      if (v8 != v7)
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
        v9 = v2[16];
      }

      v2[17] = v7;
      operator delete(v9);
    }

    v12 = v2[2];
    if (v12 != v2 + 4)
    {
      free(v12);
    }

    operator delete(v2);
  }

  return a1;
}

void *llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(void *result)
{
  v1 = *result;
  {
    v21 = v1;
    v23 = result;
    mlir::arith::ConstantOp::materialize();
    result = v23;
    v2 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v3 = *(v21 + 8);
    v4 = *(v21 + 16);
    if (v4)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  if (!v4)
  {
    return 0;
  }

LABEL_3:
  v5 = v3;
  v6 = v4;
  do
  {
    v7 = v6 >> 1;
    v8 = &v5[2 * (v6 >> 1)];
    v10 = *v8;
    v9 = v8 + 2;
    v6 += ~(v6 >> 1);
    if (v10 < v2)
    {
      v5 = v9;
    }

    else
    {
      v6 = v7;
    }
  }

  while (v6);
  if (v5 == &v3[2 * v4] || *v5 != v2 || !v5[1])
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  v11 = *result;
  {
    v12 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    if (!v14)
    {
      return result;
    }
  }

  else
  {
    v22 = v11;
    v24 = result;
    mlir::arith::ConstantOp::materialize();
    result = v24;
    v12 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v13 = *(v22 + 8);
    v14 = *(v22 + 16);
    if (!v14)
    {
      return result;
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
  return result;
}

const char *llvm::getTypeName<mlir::TypedAttr>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::TypedAttr]";
  v6 = 65;
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

BOOL mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke(llvm::APInt *this)
{
  v1 = this;
  v2 = *(this + 2);
  if (v2 < 0x41)
  {
    return *v1 == 0;
  }

  if (v2 - llvm::APInt::countLeadingZerosSlowCase(this) <= 0x40)
  {
    v1 = *v1;
    return *v1 == 0;
  }

  return 0;
}

void *llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(void *result)
{
  v1 = *result;
  {
    v21 = v1;
    v23 = result;
    getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
    result = v23;
    v2 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v3 = *(v21 + 8);
    v4 = *(v21 + 16);
    if (v4)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  if (!v4)
  {
    return 0;
  }

LABEL_3:
  v5 = v3;
  v6 = v4;
  do
  {
    v7 = v6 >> 1;
    v8 = &v5[2 * (v6 >> 1)];
    v10 = *v8;
    v9 = v8 + 2;
    v6 += ~(v6 >> 1);
    if (v10 < v2)
    {
      v5 = v9;
    }

    else
    {
      v6 = v7;
    }
  }

  while (v6);
  if (v5 == &v3[2 * v4] || *v5 != v2 || !v5[1])
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  v11 = *result;
  {
    v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    if (!v14)
    {
      return result;
    }
  }

  else
  {
    v22 = v11;
    v24 = result;
    getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
    result = v24;
    v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v13 = *(v22 + 8);
    v14 = *(v22 + 16);
    if (!v14)
    {
      return result;
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
  return result;
}

const char *llvm::getTypeName<mlir::ShapedType>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ShapedType]";
  v6 = 66;
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

BOOL mlir::m_One(void)::{lambda(llvm::APInt const&)#1}::__invoke(llvm::APInt *this)
{
  v1 = this;
  v2 = *(this + 2);
  if (v2 < 0x41)
  {
    return *v1 == 1;
  }

  if (v2 - llvm::APInt::countLeadingZerosSlowCase(this) <= 0x40)
  {
    v1 = *v1;
    return *v1 == 1;
  }

  return 0;
}

uint64_t mlir::detail::constant_op_binder<mlir::IntegerAttr>::match(unint64_t **a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  {
    mlir::detail::constant_op_binder<mlir::IntegerAttr>::match();
  }

  result = (*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id);
  if (result)
  {
    v8[0] = v9;
    v8[1] = 0x100000000;
    mlir::Operation::fold(a2, 0, 0, v8);
    v5 = v8[0];
    v6 = *v8[0] & 0xFFFFFFFFFFFFFFF8;
    if (*(*v6 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v6 = 0;
    }

    result = v6 != 0;
    if (v6 && *a1)
    {
      **a1 = v6;
      v5 = v8[0];
    }

    if (v5 != v9)
    {
      v7 = v6 != 0;
      free(v5);
      return v7;
    }
  }

  return result;
}

const char *llvm::getTypeName<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::ConstantLike<Empty>]";
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

uint64_t mlir::detail::constant_int_range_predicate_matcher::match(uint64_t (**this)(void **), mlir::Operation *a2)
{
  v23 = 1;
  v21 = &v22;
  v22 = 0;
  v12 = 0;
  v24 = &v12;
  if (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v24, a2))
  {
    v4 = *(*(*(a2 - 1) & 0xFFFFFFFFFFFFFFF8) + 136);
    v5 = v4 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id;
    v6 = v5 || v4 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id;
    v7 = v6 || v4 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
    if (v7 && mlir::detail::constant_int_value_binder::match(&v21, v12))
    {
      v8 = *this;
      mlir::ConstantIntRanges::constant(&v22, &v12);
      v9 = v8(&v12);
LABEL_18:
      if (v19 >= 0x41 && __p)
      {
        operator delete[](__p);
      }

      if (v17 >= 0x41 && v16)
      {
        operator delete[](v16);
      }

      if (v15 >= 0x41 && v14)
      {
        operator delete[](v14);
      }

      if (v13 >= 0x41 && v12)
      {
        operator delete[](v12);
      }

      goto LABEL_30;
    }
  }

  LOBYTE(v12) = 0;
  v20 = 0;
  v24 = &v12;
  v10 = mlir::detail::infer_int_range_op_binder::match(&v24, a2);
  v9 = 0;
  if (v10)
  {
    v9 = (*this)(&v12);
  }

  if (v20 == 1)
  {
    goto LABEL_18;
  }

LABEL_30:
  if (v23 >= 0x41 && v22)
  {
    operator delete[](v22);
  }

  return v9;
}

uint64_t mlir::detail::infer_int_range_op_binder::match(mlir::detail::infer_int_range_op_binder *this, mlir::Operation *a2)
{
  v24[9] = *MEMORY[0x1E69E9840];
  v21 = a2;
  if (!mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor(a2))
  {
    v19 = 0;
    v20 = 0;
    return 0;
  }

  if (a2)
  {
    InterfaceFor = mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor(a2);
  }

  else
  {
    InterfaceFor = 0;
  }

  v19 = a2;
  v20 = InterfaceFor;
  if (!a2)
  {
    return 0;
  }

  if ((*(a2 + 46) & 0x80) != 0)
  {
    v6 = *(a2 + 9);
    v7 = *(a2 + 17);
    v22 = v24;
    v23 = 0x100000000;
    if (v7 < 2)
    {
      if (!v7)
      {
        v14 = 0;
        v15 = v24;
        goto LABEL_16;
      }

      v8 = 0;
      v7 = 1;
      v9 = v24;
    }

    else
    {
      llvm::SmallVectorTemplateBase<mlir::IntegerValueRange,false>::grow(&v22, v7);
      v8 = v23;
      v9 = v22;
    }

    v10 = &v9[9 * v8];
    v11 = (v6 + 24);
    v12 = v7;
    do
    {
      v13 = *v11;
      v11 += 4;
      mlir::IntegerValueRange::getMaxRange(v13, v10);
      v10 += 72;
      --v12;
    }

    while (v12);
    v14 = v23;
    v15 = v22;
  }

  else
  {
    LODWORD(v7) = 0;
    v14 = 0;
    v15 = v24;
    v22 = v24;
    HIDWORD(v23) = 1;
  }

LABEL_16:
  LODWORD(v23) = v14 + v7;
  v18 = 0;
  v17[0] = &v21;
  v17[1] = this;
  v17[2] = &v18;
  mlir::InferIntRangeInterface::inferResultRangesFromOptional(&v19, v15, (v14 + v7), llvm::function_ref<void ()(mlir::Value,mlir::IntegerValueRange const&)>::callback_fn<mlir::detail::infer_int_range_op_binder::match(mlir::Operation *)::{lambda(mlir::Value,mlir::IntegerValueRange const&)#1}>, v17);
  v5 = v18;
  llvm::SmallVectorTemplateBase<mlir::IntegerValueRange,false>::destroy_range(v22, v22 + 9 * v23);
  if (v22 != v24)
  {
    free(v22);
  }

  return v5;
}

uint64_t mlir::detail::constant_op_binder<mlir::Attribute>::match(unint64_t **a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  {
    mlir::detail::constant_op_binder<mlir::IntegerAttr>::match();
  }

  result = (*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id);
  if (result)
  {
    v8[0] = v9;
    v8[1] = 0x100000000;
    mlir::Operation::fold(a2, 0, 0, v8);
    v5 = v8[0];
    v6 = *v8[0] & 0xFFFFFFFFFFFFFFF8;
    result = v6 != 0;
    if (v6 && *a1)
    {
      **a1 = v6;
    }

    if (v5 != v9)
    {
      v7 = v6 != 0;
      free(v5);
      return v7;
    }
  }

  return result;
}

uint64_t mlir::detail::constant_int_value_binder::match(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 136);
  v4 = v3 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
  if (v3 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v17[0] = v5;
  if (v4)
  {
    mlir::IntegerAttr::getValue(v17, &v18);
    if (*(v2 + 8) >= 0x41u && *v2)
    {
      operator delete[](*v2);
    }

    *v2 = v18;
    *(v2 + 8) = v19;
    return 1;
  }

  else
  {
    if (mlir::DenseElementsAttr::classof(a2))
    {
      v7 = a2;
    }

    else
    {
      v7 = 0;
    }

    v18 = v7;
    if (v7 && (!mlir::DenseElementsAttr::isSplat(&v18) ? (v7 = 0) : (v7 = a2), (v16 = v7) != 0))
    {
      mlir::ArrayAttr::getValue(&v16);
      mlir::NamedAttribute::NamedAttribute(&v18, v16, 0);
      v8 = v16;
      NumElements = mlir::DenseElementsAttr::getNumElements(&v16);
      mlir::NamedAttribute::NamedAttribute(v17, v8, NumElements);
      v10 = mlir::DenseElementsAttr::AttributeElementIterator::operator*(&v18);
      v11 = *(*v10 + 136);
      v12 = v11 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
      v13 = v11 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id;
      if (v11 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v14 = v10;
      }

      else
      {
        v14 = 0;
      }

      v17[0] = v14;
      if (v12)
      {
        mlir::IntegerAttr::getValue(v17, &v18);
        if (*(v2 + 8) >= 0x41u)
        {
          if (*v2)
          {
            operator delete[](*v2);
          }
        }

        *v2 = v18;
        *(v2 + 8) = v19;
      }

      return v13;
    }

    else
    {
      return v7 & a2;
    }
  }
}

uint64_t mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
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
      mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor();
      Values = v24;
    }

    return (*(*Values + 104))(Values, mlir::detail::TypeIDResolver<mlir::InferIntRangeInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v5 = mlir::detail::TypeIDResolver<mlir::InferIntRangeInterface,void>::resolveTypeID(void)::id;
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
    mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v21;
    a1 = v22;
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v5 = mlir::detail::TypeIDResolver<mlir::InferIntRangeInterface,void>::resolveTypeID(void)::id;
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
    mlir::OpInterface<mlir::InferIntRangeInterface,mlir::detail::InferIntRangeInterfaceInterfaceTraits>::getInterfaceFor();
    v4 = &mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    v18 = v23;
  }

  v19 = v4[234];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

const char *llvm::getTypeName<mlir::InferIntRangeInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::InferIntRangeInterface]";
  v6 = 78;
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

void llvm::SmallVectorTemplateBase<mlir::IntegerValueRange,false>::grow(uint64_t a1, unint64_t a2)
{
  v14 = 0;
  v3 = a1 + 16;
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 72, &v14);
  v5 = v4;
  v6 = *a1;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = 0;
    v9 = 72 * v7;
    do
    {
      v10 = v5 + v8;
      *v10 = 0;
      *(v10 + 64) = 0;
      v11 = &v6[v8 / 8];
      if (LOBYTE(v6[v8 / 8 + 8]) == 1)
      {
        *(v10 + 8) = *(v11 + 2);
        *v10 = *v11;
        *(v11 + 2) = 0;
        *(v10 + 24) = *(v11 + 6);
        *(v10 + 16) = v11[2];
        *(v11 + 6) = 0;
        *(v10 + 40) = *(v11 + 10);
        *(v10 + 32) = v11[4];
        *(v11 + 10) = 0;
        *(v10 + 56) = *(v11 + 14);
        *(v10 + 48) = v11[6];
        *(v11 + 14) = 0;
        *(v10 + 64) = 1;
      }

      v8 += 72;
    }

    while (v9 != v8);
    v6 = *a1;
    v12 = *(a1 + 8);
  }

  else
  {
    v12 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::IntegerValueRange,false>::destroy_range(v6, &v6[9 * v12]);
  v13 = v14;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v5;
  *(a1 + 12) = v13;
}

void llvm::SmallVectorTemplateBase<mlir::IntegerValueRange,false>::destroy_range(void **a1, void **a2)
{
  if (a2 != a1)
  {
    v2 = a2;
    do
    {
      v4 = v2;
      v2 -= 9;
      if (*(v4 - 8) == 1)
      {
        if (*(v4 - 4) >= 0x41u)
        {
          v5 = *(v4 - 3);
          if (v5)
          {
            operator delete[](v5);
          }
        }

        if (*(v4 - 8) >= 0x41u)
        {
          v6 = *(v4 - 5);
          if (v6)
          {
            operator delete[](v6);
          }
        }

        if (*(v4 - 12) >= 0x41u)
        {
          v7 = *(v4 - 7);
          if (v7)
          {
            operator delete[](v7);
          }
        }

        if (*(v4 - 16) >= 0x41u)
        {
          if (*v2)
          {
            operator delete[](*v2);
          }
        }
      }
    }

    while (v2 != a1);
  }
}

void llvm::function_ref<void ()(mlir::Value,mlir::IntegerValueRange const&)>::callback_fn<mlir::detail::infer_int_range_op_binder::match(mlir::Operation *)::{lambda(mlir::Value,mlir::IntegerValueRange const&)#1}>(uint64_t a1, uint64_t a2, llvm::APInt *a3)
{
  if (*(a3 + 64) == 1 && **a1 - 16 == a2)
  {
    std::__optional_storage_base<mlir::ConstantIntRanges,false>::__assign_from[abi:nn200100]<std::__optional_copy_assign_base<mlir::ConstantIntRanges,false> const&>(**(a1 + 8), a3);
    **(a1 + 16) = 1;
  }
}

void std::__optional_storage_base<mlir::ConstantIntRanges,false>::__assign_from[abi:nn200100]<std::__optional_copy_assign_base<mlir::ConstantIntRanges,false> const&>(llvm::APInt *this, llvm::APInt *a2)
{
  if (*(this + 64) == *(a2 + 64))
  {
    if (!*(this + 64))
    {
      return;
    }

    if (*(this + 2) > 0x40u || *(a2 + 2) > 0x40u)
    {
      llvm::APInt::assignSlowCase(this, a2);
      if (*(this + 6) > 0x40u)
      {
        goto LABEL_31;
      }
    }

    else
    {
      *this = *a2;
      *(this + 2) = *(a2 + 2);
      if (*(this + 6) > 0x40u)
      {
        goto LABEL_31;
      }
    }

    if (*(a2 + 6) <= 0x40u)
    {
      *(this + 2) = *(a2 + 2);
      *(this + 6) = *(a2 + 6);
      if (*(this + 10) > 0x40u)
      {
        goto LABEL_35;
      }

      goto LABEL_32;
    }

LABEL_31:
    llvm::APInt::assignSlowCase(this + 4, (a2 + 16));
    if (*(this + 10) > 0x40u)
    {
      goto LABEL_35;
    }

LABEL_32:
    if (*(a2 + 10) <= 0x40u)
    {
      *(this + 4) = *(a2 + 4);
      *(this + 10) = *(a2 + 10);
      if (*(this + 14) > 0x40u)
      {
        goto LABEL_38;
      }

      goto LABEL_36;
    }

LABEL_35:
    llvm::APInt::assignSlowCase(this + 8, (a2 + 32));
    if (*(this + 14) > 0x40u)
    {
LABEL_38:

      llvm::APInt::assignSlowCase(this + 12, (a2 + 48));
      return;
    }

LABEL_36:
    if (*(a2 + 14) <= 0x40u)
    {
      *(this + 6) = *(a2 + 6);
      *(this + 14) = *(a2 + 14);
      return;
    }

    goto LABEL_38;
  }

  if (!*(this + 64))
  {
    v7 = *(a2 + 2);
    *(this + 2) = v7;
    if (v7 > 0x40)
    {
      llvm::APInt::initSlowCase(this, a2);
      v11 = *(a2 + 6);
      *(this + 6) = v11;
      if (v11 > 0x40)
      {
LABEL_24:
        llvm::APInt::initSlowCase(this + 16, a2 + 2);
        v9 = *(a2 + 10);
        *(this + 10) = v9;
        if (v9 > 0x40)
        {
          goto LABEL_25;
        }

        goto LABEL_43;
      }
    }

    else
    {
      *this = *a2;
      v8 = *(a2 + 6);
      *(this + 6) = v8;
      if (v8 > 0x40)
      {
        goto LABEL_24;
      }
    }

    *(this + 2) = *(a2 + 2);
    v12 = *(a2 + 10);
    *(this + 10) = v12;
    if (v12 > 0x40)
    {
LABEL_25:
      llvm::APInt::initSlowCase(this + 32, a2 + 4);
      v10 = *(a2 + 14);
      *(this + 14) = v10;
      if (v10 > 0x40)
      {
LABEL_26:
        llvm::APInt::initSlowCase(this + 48, a2 + 6);
        *(this + 64) = 1;
        return;
      }

LABEL_44:
      *(this + 6) = *(a2 + 6);
      *(this + 64) = 1;
      return;
    }

LABEL_43:
    *(this + 4) = *(a2 + 4);
    v13 = *(a2 + 14);
    *(this + 14) = v13;
    if (v13 > 0x40)
    {
      goto LABEL_26;
    }

    goto LABEL_44;
  }

  if (*(this + 14) >= 0x41u)
  {
    v4 = *(this + 6);
    if (v4)
    {
      operator delete[](v4);
    }
  }

  if (*(this + 10) >= 0x41u)
  {
    v5 = *(this + 4);
    if (v5)
    {
      operator delete[](v5);
    }
  }

  if (*(this + 6) >= 0x41u)
  {
    v6 = *(this + 2);
    if (v6)
    {
      operator delete[](v6);
    }
  }

  if (*(this + 2) >= 0x41u && *this)
  {
    operator delete[](*this);
  }

  *(this + 64) = 0;
}

BOOL mlir::m_IntRangeWithoutZeroU(void)::{lambda(mlir::ConstantIntRanges const&)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  v2 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(a1, a2);
  v3 = v2;
  v4 = v2[2];
  if (v4 >= 0x41)
  {
    if (v4 - llvm::APInt::countLeadingZerosSlowCase(v2) > 0x40)
    {
      return 1;
    }

    v3 = *v3;
  }

  return *v3 != 0;
}

BOOL mlir::m_IntRangeWithoutZeroS(void)::{lambda(mlir::ConstantIntRanges const&)#1}::operator()(int a1, mlir::ConstantIntRanges *this)
{
  v3 = mlir::ConstantIntRanges::smin(this);
  v4 = *(v3 + 2);
  if (v4 >= 0x41)
  {
    v5 = *v3;
    v6 = v4 + 1;
    if ((*(*v3 + 8 * ((v4 - 1) >> 6)) >> (v4 - 1)))
    {
      if (v6 - llvm::APInt::countLeadingOnesSlowCase(v3) > 0x40)
      {
        goto LABEL_12;
      }
    }

    else if (v6 - llvm::APInt::countLeadingZerosSlowCase(v3) > 0x40)
    {
      return 1;
    }

    if (*v5 <= 0)
    {
      goto LABEL_12;
    }

    return 1;
  }

  if (v4 && (*v3 << -v4) >> -v4 > 0)
  {
    return 1;
  }

LABEL_12:
  v8 = mlir::ConstantIntRanges::smax(this);
  v9 = *(v8 + 2);
  if (v9 >= 0x41)
  {
    v11 = *v8;
    v12 = *(*v8 + 8 * ((v9 - 1) >> 6)) & (1 << (v9 - 1));
    if (v12)
    {
      if (v9 - llvm::APInt::countLeadingOnesSlowCase(v8) + 1 >= 0x41)
      {
        return v12 != 0;
      }
    }

    else if (v9 - llvm::APInt::countLeadingZerosSlowCase(v8) + 1 >= 0x41)
    {
      return v12 != 0;
    }

    return *v11 >> 63;
  }

  v10 = (*v8 << -v9) >> -v9;
  if (!v9)
  {
    v10 = 0;
  }

  return v10 >> 63;
}

BOOL mlir::m_IntRangeWithoutNegOneS(void)::{lambda(mlir::ConstantIntRanges const&)#1}::operator()(int a1, mlir::ConstantIntRanges *this)
{
  v3 = mlir::ConstantIntRanges::smin(this);
  v4 = *(v3 + 2);
  if (v4 >= 0x41)
  {
    v5 = *v3;
    v6 = v4 + 1;
    if ((*(*v3 + 8 * ((v4 - 1) >> 6)) >> (v4 - 1)))
    {
      if (v6 - llvm::APInt::countLeadingOnesSlowCase(v3) > 0x40)
      {
        goto LABEL_11;
      }
    }

    else if (v6 - llvm::APInt::countLeadingZerosSlowCase(v3) > 0x40)
    {
      return 1;
    }

    if ((*v5 & 0x8000000000000000) != 0)
    {
      goto LABEL_11;
    }

    return 1;
  }

  if (!v4 || (((*v3 << -v4) >> -v4) & 0x8000000000000000) == 0)
  {
    return 1;
  }

LABEL_11:
  v8 = mlir::ConstantIntRanges::smax(this);
  v9 = *(v8 + 2);
  if (v9 >= 0x41)
  {
    v11 = *v8;
    v12 = *(*v8 + 8 * ((v9 - 1) >> 6)) & (1 << (v9 - 1));
    if (v12)
    {
      if (v9 - llvm::APInt::countLeadingOnesSlowCase(v8) + 1 >= 0x41)
      {
        return v12 != 0;
      }
    }

    else if (v9 - llvm::APInt::countLeadingZerosSlowCase(v8) + 1 >= 0x41)
    {
      return v12 != 0;
    }

    return *v11 < -1;
  }

  v10 = (*v8 << -v9) >> -v9;
  if (!v9)
  {
    v10 = 0;
  }

  return v10 < -1;
}

uint64_t mlir::m_NegZeroFloat(void)::{lambda(llvm::APFloat const&)#1}::__invoke(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == v2)
  {
    v3 = *(*(a1 + 16) + 28);
    if ((v3 & 7) == 3)
    {
      return (v3 >> 3) & 1;
    }
  }

  else
  {
    v3 = *(a1 + 28);
    if ((v3 & 7) == 3)
    {
      return (v3 >> 3) & 1;
    }
  }

  return 0;
}

BOOL mlir::m_PosZeroFloat(void)::{lambda(llvm::APFloat const&)#1}::__invoke(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == v2)
  {
    v3 = *(*(a1 + 16) + 28);
    if ((v3 & 7) == 3)
    {
      return (v3 & 8) == 0;
    }
  }

  else
  {
    v3 = *(a1 + 28);
    if ((v3 & 7) == 3)
    {
      return (v3 & 8) == 0;
    }
  }

  return 0;
}

BOOL mlir::m_NegInfFloat(void)::{lambda(llvm::APFloat const&)#1}::__invoke(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == v2)
  {
    v3 = *(*(a1 + 16) + 28);
    if ((v3 & 8) == 0)
    {
      return 0;
    }
  }

  else
  {
    v3 = *(a1 + 28);
    if ((v3 & 8) == 0)
    {
      return 0;
    }
  }

  return (v3 & 7) == 0;
}

BOOL mlir::m_PosInfFloat(void)::{lambda(llvm::APFloat const&)#1}::__invoke(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == v2)
  {
    v3 = *(*(a1 + 16) + 28);
    if ((v3 & 8) == 0)
    {
      return (v3 & 7) == 0;
    }
  }

  else
  {
    v3 = *(a1 + 28);
    if ((v3 & 8) == 0)
    {
      return (v3 & 7) == 0;
    }
  }

  return 0;
}

BOOL mlir::m_OneFloat(void)::{lambda(llvm::APFloat const&)#1}::__invoke(llvm::APFloatBase *a1)
{
  v7[3] = *MEMORY[0x1E69E9840];
  v1 = (a1 + 8);
  v2 = *(a1 + 1);
  v3 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v3 != v2)
  {
    llvm::detail::IEEEFloat::IEEEFloat(v7, v2, 1);
    v4 = v1;
    if (v3 != v7[0])
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = llvm::detail::DoubleAPFloat::compare(v7, v4);
    if (v3 != v7[0])
    {
      goto LABEL_4;
    }

LABEL_7:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v7);
    return v5 == 1;
  }

  llvm::detail::DoubleAPFloat::DoubleAPFloat(v7, v2, 1);
  v4 = v1;
  if (v3 == v7[0])
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = llvm::detail::IEEEFloat::compare(v7, v4);
  if (v3 == v7[0])
  {
    goto LABEL_7;
  }

LABEL_4:
  llvm::detail::IEEEFloat::~IEEEFloat(v7);
  return v5 == 1;
}

BOOL llvm::APFloat::operator==(void *a1, uint64_t a2)
{
  v3 = (a1 + 1);
  v4 = a1[1];
  v5 = llvm::APFloatBase::PPCDoubleDouble(a1);
  v6 = (a2 + 8);
  if (v5 == v4)
  {
    return llvm::detail::DoubleAPFloat::compare(v3, v6) == 1;
  }

  else
  {
    return llvm::detail::IEEEFloat::compare(v3, v6) == 1;
  }
}

uint64_t getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType>(void *a1)
{
  v1 = *a1;
  {
    v2 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v3 = *(v1 + 8);
    v4 = *(v1 + 16);
    if (!v4)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v18 = v1;
    v19 = a1;
    getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
    a1 = v19;
    v2 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v3 = *(v18 + 8);
    v4 = *(v18 + 16);
    if (!v4)
    {
      goto LABEL_25;
    }
  }

  v5 = v3;
  v6 = v4;
  do
  {
    v7 = v6 >> 1;
    v8 = &v5[2 * (v6 >> 1)];
    v10 = *v8;
    v9 = v8 + 2;
    v6 += ~(v6 >> 1);
    if (v10 < v2)
    {
      v5 = v9;
    }

    else
    {
      v6 = v7;
    }
  }

  while (v6);
  if (v5 != &v3[2 * v4] && *v5 == v2 && v5[1])
  {
    v11 = *(*a1 + 136);
    v12 = v11 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || v11 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id;
    v13 = v12 || v11 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
    if (!v13 && v11 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      return 0;
    }
  }

LABEL_25:
  result = mlir::getElementTypeOrSelf(a1);
  v15 = *(*result + 136);
  if (v15 != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id && v15 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    return 0;
  }

  return result;
}

void llvm::detail::DoubleAPFloat::~DoubleAPFloat(llvm::detail::DoubleAPFloat *this)
{
  v1 = *(this + 1);
  *(this + 1) = 0;
  if (v1)
  {
    v2 = (v1 - 16);
    v3 = *(v1 - 8);
    if (v3)
    {
      v4 = llvm::APFloatBase::PPCDoubleDouble(this);
      v5 = (32 * v3 + v1 - 24);
      v6 = -32 * v3;
      do
      {
        while (v4 == *v5)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(v5);
          v5 = (v7 - 32);
          v6 += 32;
          if (!v6)
          {
            goto LABEL_7;
          }
        }

        llvm::detail::IEEEFloat::~IEEEFloat(v5);
        v5 = (v8 - 32);
        v6 += 32;
      }

      while (v6);
    }

LABEL_7:
    operator delete[](v2);
  }
}

__n128 mlir::DenseElementsAttr::tryGetValues<mlir::BoolAttr,void>@<Q0>(mlir::ArrayAttr *a1@<X0>, __n128 *a2@<X8>)
{
  Value = mlir::ArrayAttr::getValue(a1);
  v6 = v5;
  mlir::ArrayAttr::getValue(a1);
  mlir::NamedAttribute::NamedAttribute(v15, *a1, 0);
  v7 = *a1;
  NumElements = mlir::DenseElementsAttr::getNumElements(a1);
  mlir::NamedAttribute::NamedAttribute(&v14, v7, NumElements);
  v9 = v15[0];
  v10 = v15[1];
  mlir::ArrayAttr::getValue(a1);
  mlir::NamedAttribute::NamedAttribute(v15, *a1, 0);
  v11 = *a1;
  v12 = mlir::DenseElementsAttr::getNumElements(a1);
  mlir::NamedAttribute::NamedAttribute(&v14, v11, v12);
  result = v14;
  a2->n128_u64[0] = v9;
  a2->n128_u64[1] = v10;
  a2[1] = result;
  a2[2].n128_u64[0] = Value;
  a2[2].n128_u64[1] = v6;
  a2[3].n128_u8[0] = 1;
  return result;
}

const char *llvm::getTypeName<mlir::arith::ArithFastMathInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::arith::ArithFastMathInterface]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::__mlir_ods_local_attr_constraint_ArithOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::__mlir_ods_local_attr_constraint_ArithOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::__mlir_ods_local_attr_constraint_ArithOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::__mlir_ods_local_attr_constraint_ArithOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::__mlir_ods_local_attr_constraint_ArithOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, &v3, a2);
}

uint64_t *llvm::operator+@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 32);
  if (*(result + 32) && (v4 = *(a2 + 32), *(a2 + 32)))
  {
    if (v3 == 1)
    {
      v5 = *(a2 + 1);
      *a3 = *a2;
      *(a3 + 16) = v5;
      *(a3 + 32) = a2[4];
    }

    else if (v4 == 1)
    {
      v6 = *(result + 1);
      *a3 = *result;
      *(a3 + 16) = v6;
      *(a3 + 32) = result[4];
    }

    else
    {
      v7 = *result;
      v8 = result[1];
      if (*(result + 33) != 1)
      {
        LOBYTE(v3) = 2;
        v7 = result;
      }

      v9 = a2[1];
      if (*(a2 + 33) == 1)
      {
        v10 = *a2;
      }

      else
      {
        LOBYTE(v4) = 2;
        v10 = a2;
      }

      *a3 = v7;
      *(a3 + 8) = v8;
      *(a3 + 16) = v10;
      *(a3 + 24) = v9;
      *(a3 + 32) = v3;
      *(a3 + 33) = v4;
    }
  }

  else
  {
    *(a3 + 32) = 256;
  }

  return result;
}

const char *llvm::getTypeName<mlir::ElementsAttr>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ElementsAttr]";
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

BOOL llvm::isa<mlir::ElementsAttr,mlir::Attribute>(uint64_t **a1)
{
  v1 = **a1;
  {
    v12 = v1;
    llvm::isa<mlir::ElementsAttr,mlir::Attribute>();
    v2 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v3 = *(v12 + 8);
    v4 = *(v12 + 16);
    if (v4)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  if (!v4)
  {
    return 0;
  }

LABEL_3:
  v5 = v3;
  v6 = v4;
  do
  {
    v7 = v6 >> 1;
    v8 = &v5[2 * (v6 >> 1)];
    v10 = *v8;
    v9 = v8 + 2;
    v6 += ~(v6 >> 1);
    if (v10 < v2)
    {
      v5 = v9;
    }

    else
    {
      v6 = v7;
    }
  }

  while (v6);
  if (v5 == &v3[2 * v4])
  {
    return 0;
  }

  return *v5 == v2 && v5[1] != 0;
}

void mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::AddIOp::fold(mlir::arith::AddIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AddIOp::fold(mlir::arith::AddIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v5 = *(a2 + 8);
  v9 = v5;
  if (v5 > 0x40)
  {
    llvm::APInt::initSlowCase(&__p, a2);
    v5 = v9;
    v6 = __p;
  }

  else
  {
    v6 = *a2;
    __p = *a2;
  }

  v11 = v5;
  v10 = v6;
  v9 = 0;
  llvm::APInt::operator+=(&v10, a3);
  v7 = v10;
  *(a1 + 8) = v11;
  *a1 = v7;
  *(a1 + 16) = 1;
  if (v9 >= 0x41)
  {
    if (__p)
    {
      operator delete[](__p);
    }
  }
}

uint64_t llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(uint64_t *a1)
{
  v1 = *a1;
  if (mlir::DenseElementsAttr::classof(*a1))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v4 = v2;
  if (v2)
  {
    return mlir::DenseElementsAttr::isSplat(&v4);
  }

  else
  {
    return 0;
  }
}

uint64_t *mlir::DenseElementsAttr::getSplatValue<llvm::APInt>@<X0>(mlir::DenseElementsAttr *a1@<X0>, llvm::APInt *a2@<X8>)
{
  mlir::DenseElementsAttr::getValues<llvm::APInt>(a1, v5);
  v4[0] = v5[0];
  v4[1] = v5[1];
  return mlir::DenseElementsAttr::IntElementIterator::operator*(v4, a2);
}

void *llvm::cast<mlir::ElementsAttr,mlir::Attribute>(void **a1)
{
  result = *a1;
  if (result)
  {
    v2 = *result;
    {
      v3 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
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
      llvm::isa<mlir::ElementsAttr,mlir::Attribute>();
      result = v13;
      v3 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
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

void llvm::SmallVectorImpl<llvm::APInt>::reserve(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 12) < a2)
  {
    v21[7] = v2;
    v21[8] = v3;
    v21[0] = 0;
    v5 = (a1 + 16);
    llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 16, v21);
    v7 = v6;
    v8 = *a1;
    v9 = *(a1 + 8);
    if (v9)
    {
      v10 = (v7 + 8);
      v11 = 16 * v9;
      v12 = v8 + 2;
      do
      {
        *v10 = *v12;
        *(v10 - 1) = *(v12 - 1);
        *v12 = 0;
        v12 += 4;
        v10 += 4;
        v11 -= 16;
      }

      while (v11);
      v8 = *a1;
      v13 = *(a1 + 8);
      if (v13)
      {
        v14 = 16 * v13;
        v15 = &v8[4 * v13 - 2];
        v16 = -v14;
        v17 = v15;
        do
        {
          v18 = *v17;
          v17 -= 4;
          if (v18 >= 0x41)
          {
            v19 = *(v15 - 8);
            if (v19)
            {
              operator delete[](v19);
            }
          }

          v15 = v17;
          v16 += 16;
        }

        while (v16);
        v8 = *a1;
      }
    }

    v20 = v21[0];
    if (v8 != v5)
    {
      free(v8);
    }

    *a1 = v7;
    *(a1 + 12) = v20;
  }
}

char *mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 1) == 0;
  v6 = a1 + 8;
  result = *(a1 + 8);
  v5 = *(v6 + 8);
  if (v3)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  if (*a1 != 1)
  {
    return (*(*result + 24))(result, v7);
  }

  v8 = &result[16 * v7];
  v9 = *(v8 + 2);
  *(a2 + 8) = v9;
  if (v9 > 0x40)
  {
    return llvm::APInt::initSlowCase(a2, v8);
  }

  *a2 = *v8;
  return result;
}

_DWORD *llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *a1;
  if (v3 >= *(a1 + 12))
  {
    v7 = a2;
    if (v4 <= a2 && v4 + 16 * v3 > a2)
    {
      v9 = a2 - v4;
      llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(a1, v3 + 1);
      v4 = *a1;
      a2 = *a1 + v9;
    }

    else
    {
      llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(a1, v3 + 1);
      v4 = *a1;
      a2 = v7;
    }
  }

  result = (v4 + 16 * *(a1 + 8));
  v6 = *(a2 + 8);
  result[2] = v6;
  if (v6 > 0x40)
  {
    result = llvm::APInt::initSlowCase(result, a2);
  }

  else
  {
    *result = *a2;
  }

  ++*(a1 + 8);
  return result;
}

uint64_t llvm::SmallVector<llvm::APInt,4u>::~SmallVector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 16 * v3 - 8;
    v6 = -v4;
    v7 = v5;
    do
    {
      v8 = *v7;
      v7 -= 4;
      if (v8 >= 0x41)
      {
        v9 = *(v5 - 8);
        if (v9)
        {
          operator delete[](v9);
        }
      }

      v5 = v7;
      v6 += 16;
    }

    while (v6);
    v2 = *a1;
  }

  if (v2 != (a1 + 16))
  {
    free(v2);
  }

  return a1;
}

double mlir::DenseElementsAttr::getValues<llvm::APInt>@<D0>(mlir::DenseElementsAttr *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  *v13 = mlir::DenseElementsAttr::getElementType(a1);
  if (mlir::Type::isIntOrIndex(v13))
  {
    Value = mlir::ArrayAttr::getValue(a1);
    v2 = v6;
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v12, *a1, 0);
    v7 = *a1;
    NumElements = mlir::DenseElementsAttr::getNumElements(a1);
    mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v13[32], v7, NumElements);
    *v13 = v12[0];
    *&v13[16] = v12[1];
    v9 = v12[0];
    v17[0] = *v14;
    *(v17 + 15) = *&v14[15];
    v15 = *&v13[1];
    v16 = *&v13[17];
  }

  else
  {
    v9 = 0;
  }

  *a2 = v9;
  v10 = v16;
  *(a2 + 1) = v15;
  *(a2 + 17) = v10;
  *(a2 + 33) = v17[0];
  result = *(v17 + 15);
  *(a2 + 48) = *(v17 + 15);
  *(a2 + 64) = Value;
  *(a2 + 72) = v2;
  return result;
}

const char *llvm::getTypeName<llvm::APInt>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = llvm::APInt]";
  v6 = 61;
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

void anonymous namespace::AddIAddConstant::~AddIAddConstant(_anonymous_namespace_::AddIAddConstant *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 >= *(result + 12))
  {
    v3 = a2;
    v4 = result;
    llvm::SmallVectorBase<unsigned int>::grow_pod(result, result + 16, v2 + 1, 8);
    a2 = v3;
    result = v4;
    LODWORD(v2) = *(v4 + 8);
  }

  *(*result + 8 * v2) = a2;
  ++*(result + 8);
  return result;
}

uint64_t anonymous namespace::static_dag_matcher_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5, void *a6)
{
  if (!a2 || *(*(a2 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::AddIOp,void>::id)
  {
    v18 = *(a1 + 16);
    if (v18 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
    {
    }

    return 0;
  }

  if ((*(a2 + 46) & 0x80) != 0)
  {
    v11 = *(a2 + 72);
  }

  else
  {
    v11 = 0;
  }

  *a5 = v11;
  a5[1] = 1;
  v21 = *(*(a2 + 72) + 56);
  DefiningOp = mlir::Value::getDefiningOp(&v21);
  if (!DefiningOp)
  {
    v19 = *(a1 + 16);
    if (v19 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
    {
    }

    return 0;
  }

  v13 = DefiningOp;
  {
    return 0;
  }

  v14 = *(a3 + 8);
  if (v14 >= *(a3 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, v14 + 1, 8);
    LODWORD(v14) = *(a3 + 8);
  }

  *(*a3 + 8 * v14) = v13;
  ++*(a3 + 8);
  if (!*(a2 + 47) || (v23.var0 = "overflowFlags", v23.var1 = 13, InherentAttr = mlir::Operation::getInherentAttr(a2, v23), (v16 & 1) == 0))
  {
    v24.var0 = "overflowFlags";
    v24.var1 = 13;
    InherentAttr = mlir::DictionaryAttr::get((a2 + 56), v24);
  }

  if (!InherentAttr || *(*InherentAttr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
  {
    InherentAttr = mlir::arith::IntegerOverflowFlagsAttr::get(*(a1 + 8), 0);
  }

  *a4 = InherentAttr;
  return 1;
}

uint64_t anonymous namespace::static_dag_matcher_2(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = 0;
  v12 = &v11;
  v13[0] = a2 - 16;
  DefiningOp = mlir::Value::getDefiningOp(v13);
  if (DefiningOp && (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v12, DefiningOp) & 1) != 0)
  {
    v7 = v11;
    *a3 = v11;
    v8 = *(a1 + 16);
    v13[0] = "operand 0 of native code call '::mlir::success(::mlir::matchPattern($_self->getResult(0), ::mlir::m_Constant(&$0)))' failed to satisfy constraint: 'arbitrary integer attribute'";
    v13[1] = 176;
    if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      return 1;
    }

    else
    {
      v12 = v13;
      if (v8)
      {
        if (mlir::RewriterBase::Listener::classof(v8))
        {
        }
      }

      return 0;
    }
  }

  else
  {
    v10 = *(a1 + 16);
    if (v10 && mlir::RewriterBase::Listener::classof(v10))
    {
    }

    return 0;
  }
}

uint64_t mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::IntegerAttr &>(mlir::OpBuilder *a1, uint64_t a2, void **a3)
{
  v28[38] = *MEMORY[0x1E69E9840];
  v25 = a2;
  Context = mlir::Attribute::getContext(&v25);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::TypedAttr>(v28, v27, v26);
  }

  mlir::OperationState::OperationState(v28, a2, v7);
  v9 = *a3;
  if (!*a3)
  {
    goto LABEL_16;
  }

  v10 = *v9;
  {
    v20 = v9;
    mlir::arith::AddUIExtendedOp::fold();
    v9 = v20;
    v11 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v12 = *(v10 + 8);
    v13 = *(v10 + 16);
    if (v13)
    {
      goto LABEL_5;
    }

LABEL_16:
    v21 = 0;
    goto LABEL_17;
  }

  v11 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
  v12 = *(v10 + 8);
  v13 = *(v10 + 16);
  if (!v13)
  {
    goto LABEL_16;
  }

LABEL_5:
  v14 = v12;
  v15 = v13;
  do
  {
    v16 = v15 >> 1;
    v17 = &v14[2 * (v15 >> 1)];
    v19 = *v17;
    v18 = v17 + 2;
    v15 += ~(v15 >> 1);
    if (v19 < v11)
    {
      v14 = v18;
    }

    else
    {
      v15 = v16;
    }
  }

  while (v15);
  if (v14 == &v12[2 * v13] || *v14 != v11)
  {
    goto LABEL_16;
  }

  v21 = v14[1];
LABEL_17:
  mlir::arith::ConstantOp::build(a1, v28, v9, v21);
  v22 = mlir::OpBuilder::create(a1, v28);
  if (*(*(v22 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  mlir::OperationState::~OperationState(v28);
  return v23;
}

uint64_t mlir::OpBuilder::create<mlir::arith::AddIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x1E69E9840];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::AddIOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::AddIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(v17, v18, v16);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  v11 = mlir::ValueRange::ValueRange(v18, *a3, *(a3 + 8));
  mlir::arith::AddIOp::build(v11, v17, v18[0], v18[1], *a4, *(a4 + 8));
  v12 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::AddIOp,void>::id)
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

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::AddIAddConstant::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

uint64_t anonymous namespace::static_dag_matcher_0(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = 0;
  v12 = &v11;
  v13[0] = a2 - 16;
  DefiningOp = mlir::Value::getDefiningOp(v13);
  if (DefiningOp && (mlir::detail::constant_op_binder<mlir::Attribute>::match(&v12, DefiningOp) & 1) != 0)
  {
    v7 = v11;
    *a3 = v11;
    v8 = *(a1 + 16);
    v13[0] = "operand 0 of native code call '::mlir::success(::mlir::matchPattern($_self->getResult(0), ::mlir::m_Constant(&$0)))' failed to satisfy constraint: 'arbitrary integer attribute'";
    v13[1] = 176;
    if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      return 1;
    }

    else
    {
      v12 = v13;
      if (v8)
      {
        if (mlir::RewriterBase::Listener::classof(v8))
        {
        }
      }

      return 0;
    }
  }

  else
  {
    v10 = *(a1 + 16);
    if (v10 && mlir::RewriterBase::Listener::classof(v10))
    {
    }

    return 0;
  }
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::static_dag_matcher_1(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::arith::IntegerOverflowFlagsAttr &,mlir::OperandRange &,mlir::Attribute &)::$_0>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "castedOp1 is not ::mlir::arith::AddIOp type";
  v13 = 43;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::static_dag_matcher_1(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::arith::IntegerOverflowFlagsAttr &,mlir::OperandRange &,mlir::Attribute &)::$_1>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 1 of castedOp1";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::static_dag_matcher_0(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::Attribute &)::$_0>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "::mlir::success(::mlir::matchPattern(op0->getResult(0), ::mlir::m_Constant(&arg1_0))) return ::mlir::failure";
  v13 = 108;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::__mlir_ods_local_attr_constraint_ArithCanonicalization1(mlir::PatternRewriter &,mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(void ***a1, uint64_t a2)
{
  v3 = **a1;
  v2 = (*a1)[1];
  v14 = 261;
  v13[0] = v3;
  v13[1] = v2;
  v4 = mlir::Diagnostic::operator<<(a2, v13);
  v5 = *(v4 + 16);
  v15 = 3;
  v16 = ": arbitrary integer attribute";
  v17 = 29;
  v6 = *(v4 + 24);
  v7 = &v15;
  if (v6 >= *(v4 + 28))
  {
    if (v5 <= &v15 && v5 + 24 * v6 > &v15)
    {
      v11 = &v15 - v5;
      v12 = v4;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v4 + 16, v4 + 32, v6 + 1, 24);
      v4 = v12;
      v5 = *(v12 + 16);
      v7 = &v11[v5];
    }

    else
    {
      v10 = v4;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v4 + 16, v4 + 32, v6 + 1, 24);
      v4 = v10;
      v5 = *(v10 + 16);
      v7 = &v15;
    }
  }

  v8 = (v5 + 24 * *(v4 + 24));
  result = *v7;
  v8[1].n128_u64[0] = v7[1].n128_u64[0];
  *v8 = result;
  ++*(v4 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::AddIAddConstant::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 1 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::static_dag_matcher_2(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::Attribute &)::$_0>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "::mlir::success(::mlir::matchPattern(op0->getResult(0), ::mlir::m_Constant(&arg1_0))) return ::mlir::failure";
  v13 = 108;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

uint64_t applyToIntegerAttrs(uint64_t a1, void *a2, void *a3, void (*a4)(void **__return_ptr, uint64_t, void **, void **), uint64_t a5)
{
  v13 = a2;
  mlir::IntegerAttr::getValue(&v13, &v15);
  __p = a3;
  mlir::IntegerAttr::getValue(&__p, &v13);
  a4(&__p, a5, &v15, &v13);
  v9 = mlir::IntegerAttr::get(*(a1 + 8) & 0xFFFFFFFFFFFFFFF8, &__p);
  if (v12 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v14 >= 0x41 && v13)
  {
    operator delete[](v13);
  }

  if (v16 >= 0x41 && v15)
  {
    operator delete[](v15);
  }

  return v9;
}

uint64_t llvm::function_ref<llvm::APInt ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::plus<llvm::APInt>>@<X0>(uint64_t a1@<X1>, uint64_t **a2@<X2>, uint64_t a3@<X8>)
{
  v7 = *(a1 + 8);
  if (v7 > 0x40)
  {
    llvm::APInt::initSlowCase(&v6, a1);
  }

  else
  {
    v6 = *a1;
  }

  result = llvm::APInt::operator+=(&v6, a2);
  *(a3 + 8) = v7;
  *a3 = v6;
  return result;
}

uint64_t llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::growAndEmplaceBack<mlir::StringAttr,mlir::arith::IntegerOverflowFlagsAttr &>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  mlir::NamedAttribute::NamedAttribute(&v9, *a2, *a3);
  v4 = v9;
  v5 = *(a1 + 8);
  if (v5 >= *(a1 + 12))
  {
    v8 = v9;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v5 + 1, 16);
    v4 = v8;
    LODWORD(v5) = *(a1 + 8);
  }

  *(*a1 + 16 * v5) = v4;
  v6 = *(a1 + 8) + 1;
  *(a1 + 8) = v6;
  return *a1 + 16 * v6 - 16;
}

void anonymous namespace::AddISubConstantRHS::~AddISubConstantRHS(_anonymous_namespace_::AddISubConstantRHS *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t anonymous namespace::static_dag_matcher_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5, void *a6)
{
  if (!a2 || *(*(a2 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::SubIOp,void>::id)
  {
    v18 = *(a1 + 16);
    if (v18 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
    {
    }

    return 0;
  }

  if ((*(a2 + 46) & 0x80) != 0)
  {
    v11 = *(a2 + 72);
  }

  else
  {
    v11 = 0;
  }

  *a5 = v11;
  a5[1] = 1;
  v21 = *(*(a2 + 72) + 56);
  DefiningOp = mlir::Value::getDefiningOp(&v21);
  if (!DefiningOp)
  {
    v19 = *(a1 + 16);
    if (v19 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
    {
    }

    return 0;
  }

  v13 = DefiningOp;
  {
    return 0;
  }

  v14 = *(a3 + 8);
  if (v14 >= *(a3 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, v14 + 1, 8);
    LODWORD(v14) = *(a3 + 8);
  }

  *(*a3 + 8 * v14) = v13;
  ++*(a3 + 8);
  if (!*(a2 + 47) || (v23.var0 = "overflowFlags", v23.var1 = 13, InherentAttr = mlir::Operation::getInherentAttr(a2, v23), (v16 & 1) == 0))
  {
    v24.var0 = "overflowFlags";
    v24.var1 = 13;
    InherentAttr = mlir::DictionaryAttr::get((a2 + 56), v24);
  }

  if (!InherentAttr || *(*InherentAttr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
  {
    InherentAttr = mlir::arith::IntegerOverflowFlagsAttr::get(*(a1 + 8), 0);
  }

  *a4 = InherentAttr;
  return 1;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::AddISubConstantRHS::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::static_dag_matcher_5(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::arith::IntegerOverflowFlagsAttr &,mlir::OperandRange &,mlir::Attribute &)::$_0>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "castedOp1 is not ::mlir::arith::SubIOp type";
  v13 = 43;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::static_dag_matcher_5(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::arith::IntegerOverflowFlagsAttr &,mlir::OperandRange &,mlir::Attribute &)::$_1>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 1 of castedOp1";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::AddISubConstantRHS::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 1 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

uint64_t llvm::function_ref<llvm::APInt ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::minus<llvm::APInt>>@<X0>(uint64_t a1@<X1>, unint64_t **a2@<X2>, uint64_t a3@<X8>)
{
  v7 = *(a1 + 8);
  if (v7 > 0x40)
  {
    llvm::APInt::initSlowCase(&v6, a1);
  }

  else
  {
    v6 = *a1;
  }

  result = llvm::APInt::operator-=(&v6, a2);
  *(a3 + 8) = v7;
  *a3 = v6;
  return result;
}

void anonymous namespace::AddISubConstantLHS::~AddISubConstantLHS(_anonymous_namespace_::AddISubConstantLHS *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t anonymous namespace::static_dag_matcher_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5, void *a6)
{
  if (!a2 || *(*(a2 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::SubIOp,void>::id)
  {
    v19 = *(a1 + 16);
    if (v19 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
    {
    }

    return 0;
  }

  v22 = *(*(a2 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v22);
  if (!DefiningOp)
  {
    v20 = *(a1 + 16);
    if (v20 && mlir::RewriterBase::Listener::classof(*(a1 + 16)))
    {
    }

    return 0;
  }

  v13 = DefiningOp;
  {
    return 0;
  }

  v14 = a3;
  v15 = *(a3 + 8);
  if (v15 >= *(a3 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, v15 + 1, 8);
    v14 = a3;
    LODWORD(v15) = *(a3 + 8);
  }

  *(*v14 + 8 * v15) = v13;
  ++*(v14 + 8);
  if ((*(a2 + 46) & 0x80) != 0)
  {
    *a6 = *(a2 + 72) + 32;
    a6[1] = 1;
    if (*(a2 + 47))
    {
      goto LABEL_9;
    }
  }

  else
  {
    *a6 = 32;
    a6[1] = 1;
    if (*(a2 + 47))
    {
LABEL_9:
      v24.var0 = "overflowFlags";
      v24.var1 = 13;
      InherentAttr = mlir::Operation::getInherentAttr(a2, v24);
      if (v17)
      {
        goto LABEL_11;
      }
    }
  }

  v25.var0 = "overflowFlags";
  v25.var1 = 13;
  InherentAttr = mlir::DictionaryAttr::get((a2 + 56), v25);
LABEL_11:
  if (!InherentAttr || *(*InherentAttr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
  {
    InherentAttr = mlir::arith::IntegerOverflowFlagsAttr::get(*(a1 + 8), 0);
  }

  *a4 = InherentAttr;
  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::arith::SubIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x1E69E9840];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::SubIOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::SubIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(v17, v18, v16);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  v11 = mlir::ValueRange::ValueRange(v18, *a3, *(a3 + 8));
  mlir::arith::SubIOp::build(v11, v17, v18[0], v18[1], *a4, *(a4 + 8));
  v12 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::SubIOp,void>::id)
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

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::AddISubConstantLHS::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::static_dag_matcher_4(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::arith::IntegerOverflowFlagsAttr &,mlir::Attribute &,mlir::OperandRange &)::$_0>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "castedOp1 is not ::mlir::arith::SubIOp type";
  v13 = 43;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::static_dag_matcher_4(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::arith::IntegerOverflowFlagsAttr &,mlir::Attribute &,mlir::OperandRange &)::$_1>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp1";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::AddISubConstantLHS::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 1 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::AddIMulNegativeOneRhs::~AddIMulNegativeOneRhs(_anonymous_namespace_::AddIMulNegativeOneRhs *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t anonymous namespace::AddIMulNegativeOneRhs::matchAndRewrite(_anonymous_namespace_::AddIMulNegativeOneRhs *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v37[4] = *MEMORY[0x1E69E9840];
  v35 = v37;
  v37[0] = a2;
  v36 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::AddIOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  __p = *(*(v5 + 9) + 56);
  DefiningOp = mlir::Value::getDefiningOp(&__p);
  if (DefiningOp)
  {
    v7 = DefiningOp;
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::MulIOp,void>::id)
    {
      v8 = *(a3 + 2);
      if (v8 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
      {
        v9 = *(v7 + 24);
LABEL_41:
        (*(*v8 + 88))(v8, v9, v10, &__p);
        goto LABEL_42;
      }

      goto LABEL_42;
    }

    __p = *(*(DefiningOp + 72) + 56);
    v11 = mlir::Value::getDefiningOp(&__p);
    if (!v11)
    {
      v8 = *(a3 + 2);
      if (v8 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
      {
        v9 = *(v7 + 24);
        goto LABEL_41;
      }

      goto LABEL_42;
    }

    v12 = v11;
    p_p = 0;
    p_p_p = &p_p;
    __p = (v11 - 16);
    v13 = mlir::Value::getDefiningOp(&__p);
    if (!v13 || (mlir::detail::constant_op_binder<mlir::Attribute>::match(&p_p_p, v13) & 1) == 0)
    {
      v8 = *(a3 + 2);
      if (v8 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
      {
        v9 = *(v12 + 24);
        goto LABEL_41;
      }

      goto LABEL_42;
    }

    v14 = p_p;
    v15 = v36;
    if (v36 >= HIDWORD(v36))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v37, v36 + 1, 8);
      v15 = v36;
    }

    v35[v15] = v12;
    LODWORD(v36) = v36 + 1;
    if (!*(v7 + 47) || (v38.var0 = "overflowFlags", v38.var1 = 13, InherentAttr = mlir::Operation::getInherentAttr(v7, v38), (v17 & 1) == 0))
    {
      v39.var0 = "overflowFlags";
      v39.var1 = 13;
      InherentAttr = mlir::DictionaryAttr::get((v7 + 56), v39);
    }

    if (!InherentAttr || *(*InherentAttr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
    {
      mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
    }

    v18 = v36;
    if (v36 >= HIDWORD(v36))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v37, v36 + 1, 8);
      v18 = v36;
    }

    v35[v18] = v7;
    LODWORD(v36) = v36 + 1;
    if (!*(a2 + 47) || (v40.var0 = "overflowFlags", v40.var1 = 13, v19 = mlir::Operation::getInherentAttr(a2, v40), (v20 & 1) == 0))
    {
      v41.var0 = "overflowFlags";
      v41.var1 = 13;
      v19 = mlir::DictionaryAttr::get((a2 + 56), v41);
    }

    if (!v19 || *(*v19 + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
    {
      mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
    }

    LODWORD(v30) = 1;
    __p = 0;
    p_p = &__p;
    if (v14)
    {
      v21 = mlir::detail::constant_int_value_binder::match(&p_p, v14);
      v22 = v30;
      if (v21)
      {
        v23 = __p;
        LODWORD(v34) = 1;
        p_p = 0;
        p_p_p = &p_p;
        if (mlir::detail::constant_int_value_binder::match(&p_p_p, v14))
        {
          LODWORD(v30) = v34;
          __p = p_p;
          LOBYTE(v31) = 1;
        }

        else
        {
          LOBYTE(__p) = 0;
          LOBYTE(v31) = 0;
          if (v34 >= 0x41 && p_p)
          {
            operator delete[](p_p);
          }
        }

        v25 = v30;
        if (!v30)
        {
          if (v22 >= 0x41 && v23)
          {
            operator delete[](v23);
          }

LABEL_64:
          v27 = *(v35[1] + 24);
          __p = *(*v35 + 24);
          v30 = v27;
          mlir::Builder::getFusedLoc(a3 + 1, &__p, 2, 0);
        }

        if (v30 > 0x40)
        {
          v26 = llvm::APInt::countTrailingOnesSlowCase(&__p) == v25;
          if (v31 == 1 && __p)
          {
            operator delete[](__p);
          }
        }

        else
        {
          v26 = __p == (0xFFFFFFFFFFFFFFFFLL >> -v30);
        }

        if (v22 >= 0x41 && v23)
        {
          operator delete[](v23);
        }

        if (v26)
        {
          goto LABEL_64;
        }
      }

      else if (v30 >= 0x41 && __p)
      {
        operator delete[](__p);
      }
    }

    v28 = *(a3 + 2);
    if (v28 && mlir::RewriterBase::Listener::classof(v28))
    {
    }

    goto LABEL_42;
  }

  v8 = *(a3 + 2);
  if (v8 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
  {
    v9 = *(v5 + 3);
    goto LABEL_41;
  }

LABEL_42:
  if (v35 != v37)
  {
    free(v35);
  }

  return 0;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::AddIMulNegativeOneRhs::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 1 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::AddIMulNegativeOneRhs::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "castedOp1 is not ::mlir::arith::MulIOp type";
  v13 = 43;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::AddIMulNegativeOneRhs::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 1 of castedOp1";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::static_dag_matcher_3(mlir::PatternRewriter &,mlir::Operation *,llvm::SmallVector<mlir::Operation *,4u> &,mlir::Attribute &)::$_0>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "::mlir::success(::mlir::matchPattern(op0->getResult(0), ::mlir::m_Constant(&arg1_0))) return ::mlir::failure";
  v13 = 108;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::AddIMulNegativeOneRhs::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#4}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'c0' failed to satisfy constraint: ''";
  v13 = 46;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::AddIMulNegativeOneLhs::~AddIMulNegativeOneLhs(_anonymous_namespace_::AddIMulNegativeOneLhs *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t anonymous namespace::AddIMulNegativeOneLhs::matchAndRewrite(_anonymous_namespace_::AddIMulNegativeOneLhs *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v37[4] = *MEMORY[0x1E69E9840];
  v35 = v37;
  v37[0] = a2;
  v36 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::AddIOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  __p = *(*(v5 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&__p);
  if (DefiningOp)
  {
    v7 = DefiningOp;
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::MulIOp,void>::id)
    {
      v8 = *(a3 + 2);
      if (v8 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
      {
        v9 = *(v7 + 24);
LABEL_42:
        (*(*v8 + 88))(v8, v9, v10, &__p);
        goto LABEL_43;
      }

      goto LABEL_43;
    }

    __p = *(*(DefiningOp + 72) + 56);
    v11 = mlir::Value::getDefiningOp(&__p);
    if (!v11)
    {
      v8 = *(a3 + 2);
      if (v8 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
      {
        v9 = *(v7 + 24);
        goto LABEL_42;
      }

      goto LABEL_43;
    }

    v12 = v11;
    p_p = 0;
    p_p_p = &p_p;
    __p = (v11 - 16);
    v13 = mlir::Value::getDefiningOp(&__p);
    if (!v13 || (mlir::detail::constant_op_binder<mlir::Attribute>::match(&p_p_p, v13) & 1) == 0)
    {
      v8 = *(a3 + 2);
      if (v8 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
      {
        v9 = *(v12 + 24);
        goto LABEL_42;
      }

      goto LABEL_43;
    }

    v14 = p_p;
    v15 = v36;
    if (v36 >= HIDWORD(v36))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v37, v36 + 1, 8);
      v15 = v36;
    }

    v35[v15] = v12;
    LODWORD(v36) = v36 + 1;
    if (!*(v7 + 47) || (v38.var0 = "overflowFlags", v38.var1 = 13, InherentAttr = mlir::Operation::getInherentAttr(v7, v38), (v17 & 1) == 0))
    {
      v39.var0 = "overflowFlags";
      v39.var1 = 13;
      InherentAttr = mlir::DictionaryAttr::get((v7 + 56), v39);
    }

    if (!InherentAttr || *(*InherentAttr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
    {
      mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
    }

    v18 = v36;
    if (v36 >= HIDWORD(v36))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v37, v36 + 1, 8);
      v18 = v36;
    }

    v35[v18] = v7;
    LODWORD(v36) = v36 + 1;
    if ((*(v5 + 46) & 0x80) != 0)
    {
      if (!*(a2 + 47))
      {
        goto LABEL_28;
      }
    }

    else if (!*(a2 + 47))
    {
      goto LABEL_28;
    }

    v40.var0 = "overflowFlags";
    v40.var1 = 13;
    v19 = mlir::Operation::getInherentAttr(a2, v40);
    if (v20)
    {
LABEL_29:
      if (!v19 || *(*v19 + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
      {
        mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
      }

      LODWORD(v30) = 1;
      __p = 0;
      p_p = &__p;
      if (v14)
      {
        v21 = mlir::detail::constant_int_value_binder::match(&p_p, v14);
        v22 = v30;
        if (v21)
        {
          v23 = __p;
          LODWORD(v34) = 1;
          p_p = 0;
          p_p_p = &p_p;
          if (mlir::detail::constant_int_value_binder::match(&p_p_p, v14))
          {
            LODWORD(v30) = v34;
            __p = p_p;
            LOBYTE(v31) = 1;
          }

          else
          {
            LOBYTE(__p) = 0;
            LOBYTE(v31) = 0;
            if (v34 >= 0x41 && p_p)
            {
              operator delete[](p_p);
            }
          }

          v25 = v30;
          if (!v30)
          {
            if (v22 >= 0x41 && v23)
            {
              operator delete[](v23);
            }

LABEL_65:
            v27 = *(v35[1] + 24);
            __p = *(*v35 + 24);
            v30 = v27;
            mlir::Builder::getFusedLoc(a3 + 1, &__p, 2, 0);
          }

          if (v30 > 0x40)
          {
            v26 = llvm::APInt::countTrailingOnesSlowCase(&__p) == v25;
            if (v31 == 1 && __p)
            {
              operator delete[](__p);
            }
          }

          else
          {
            v26 = __p == (0xFFFFFFFFFFFFFFFFLL >> -v30);
          }

          if (v22 >= 0x41 && v23)
          {
            operator delete[](v23);
          }

          if (v26)
          {
            goto LABEL_65;
          }
        }

        else if (v30 >= 0x41 && __p)
        {
          operator delete[](__p);
        }
      }

      v28 = *(a3 + 2);
      if (v28 && mlir::RewriterBase::Listener::classof(v28))
      {
      }

      goto LABEL_43;
    }

LABEL_28:
    v41.var0 = "overflowFlags";
    v41.var1 = 13;
    v19 = mlir::DictionaryAttr::get((a2 + 56), v41);
    goto LABEL_29;
  }

  v8 = *(a3 + 2);
  if (v8 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
  {
    v9 = *(v5 + 3);
    goto LABEL_42;
  }

LABEL_43:
  if (v35 != v37)
  {
    free(v35);
  }

  return 0;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::AddIMulNegativeOneLhs::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::AddIMulNegativeOneLhs::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "castedOp1 is not ::mlir::arith::MulIOp type";
  v13 = 43;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::AddIMulNegativeOneLhs::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 1 of castedOp1";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::AddIMulNegativeOneLhs::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#4}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'c0' failed to satisfy constraint: ''";
  v13 = 46;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

uint64_t mlir::constFoldBinaryOpConditional<mlir::IntegerAttr,llvm::APInt,void,mlir::Attribute mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,void,llvm::APInt (&)(llvm::APInt const&,llvm::APInt const&)>(llvm::ArrayRef<mlir::Attribute>,mlir::Type,llvm::APInt (&)(llvm::APInt const&,llvm::APInt const&) &&)::{lambda(llvm::APInt,llvm::APInt)#1}>(uint64_t *a1, uint64_t a2, void *a3, void (**a4)(void **__return_ptr, void **, void **))
{
  v101 = *MEMORY[0x1E69E9840];
  v95 = a3;
  if (!a3)
  {
    return 0;
  }

  v4 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v6 = a1 + 1;
  v5 = a1[1];
  if (!v5)
  {
    return 0;
  }

  if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && *(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v76 = *a1;
    v73 = v5;
    Value = mlir::AffineMapAttr::getValue(&v76);
    if (Value == mlir::AffineMapAttr::getValue(&v73))
    {
      mlir::IntegerAttr::getValue(&v76, &v93);
      mlir::IntegerAttr::getValue(&v73, &v91);
      (*a4)(&v80, &v93, &v91);
      LODWORD(v99) = v81;
      v98 = v80;
      v100 = 1;
      if (v92 >= 0x41 && v91)
      {
        operator delete[](v91);
      }

      if (v94 >= 0x41 && v93)
      {
        operator delete[](v93);
      }

      result = mlir::IntegerAttr::get(v95, &v98);
LABEL_41:
      if ((v100 & 1) != 0 && v99 >= 0x41 && v98)
      {
        v29 = result;
        operator delete[](v98);
        return v29;
      }

      return result;
    }

    return 0;
  }

  if (mlir::DenseElementsAttr::classof(*a1))
  {
    v9 = v4;
  }

  else
  {
    v9 = 0;
  }

  v98 = v9;
  if (v9 && mlir::DenseElementsAttr::isSplat(&v98))
  {
    v10 = *v6;
    v11 = mlir::DenseElementsAttr::classof(*v6) ? v10 : 0;
    v98 = v11;
    if (v11)
    {
      if (mlir::DenseElementsAttr::isSplat(&v98))
      {
        v12 = a1[1];
        v76 = *a1;
        v73 = v12;
        v13 = mlir::ArrayAttr::getValue(&v76);
        if (v13 == mlir::ArrayAttr::getValue(&v73))
        {
          mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v76, &v89);
          mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v73, &__p);
          (*a4)(&v80, &v89, &__p);
          LODWORD(v99) = v81;
          v98 = v80;
          v100 = 1;
          if (v88 >= 0x41 && __p)
          {
            operator delete[](__p);
          }

          if (v90 >= 0x41 && v89)
          {
            operator delete[](v89);
          }

          v14 = llvm::cast<mlir::ShapedType,mlir::Type>(&v95);
          result = mlir::DenseElementsAttr::get(v14, v15, &v98, 1);
          goto LABEL_41;
        }

        return 0;
      }
    }
  }

  v17 = a1;
  v18 = **a1;
  {
    v19 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
    if (!v21)
    {
      return 0;
    }
  }

  else
  {
    v62 = v18;
    mlir::arith::ConstantOp::verify();
    v17 = a1;
    v19 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v20 = *(v62 + 8);
    v21 = *(v62 + 16);
    if (!v21)
    {
      return 0;
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
  if (v22 == &v20[2 * v21] || *v22 != v19 || !v22[1])
  {
    return 0;
  }

  v30 = **v6;
  {
    v31 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v32 = *(v30 + 8);
    v33 = *(v30 + 16);
    if (v33)
    {
      goto LABEL_54;
    }

LABEL_61:
    v33 = 0;
    v34 = v32;
    goto LABEL_62;
  }

  v40 = v30;
  mlir::arith::ConstantOp::verify();
  v17 = a1;
  v31 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
  v32 = *(v40 + 8);
  v33 = *(v40 + 16);
  if (!v33)
  {
    goto LABEL_61;
  }

LABEL_54:
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
LABEL_62:
  if (v34 == &v32[2 * v33])
  {
    return 0;
  }

  if (*v34 != v31)
  {
    return 0;
  }

  if (!v34[1])
  {
    return 0;
  }

  v85 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v17);
  v86 = v41;
  v84[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v6);
  v84[1] = v42;
  Type = mlir::ElementsAttr::getType(&v85);
  if (Type != mlir::ElementsAttr::getType(v84))
  {
    return 0;
  }

  mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v85, &v80);
  mlir::ElementsAttr::try_value_begin<llvm::APInt>(v84, &v76);
  if (v83 == 1 && v79 == 1)
  {
    LOWORD(v73) = v80;
    if (v80 == 1)
    {
      v74 = v81;
    }

    else
    {
      (*(*v81 + 16))(&v74);
    }

    v75 = v82;
    v70 = v76;
    if (v76 == 1)
    {
      v71 = v77;
    }

    else
    {
      (*(*v77 + 16))(&v71);
    }

    v72 = v78;
    v98 = &v100;
    v99 = 0x400000000;
    NumElements = mlir::ElementsAttr::getNumElements(v85, v86);
    llvm::SmallVectorImpl<llvm::APInt>::reserve(&v98, NumElements);
    v48 = mlir::ElementsAttr::getNumElements(v85, v86);
    if (v48)
    {
      v49 = v48;
      v50 = v75;
      while (1)
      {
        if (BYTE1(v73))
        {
          v51 = 0;
        }

        else
        {
          v51 = v50;
        }

        if (v73 == 1)
        {
          v52 = v74 + 16 * v51;
          v66 = *(v52 + 8);
          if (v66 > 0x40)
          {
            llvm::APInt::initSlowCase(&v65, v52);
          }

          else
          {
            v65 = *v52;
          }
        }

        else
        {
          (*(*v74 + 24))(&v65);
        }

        if (HIBYTE(v70))
        {
          v53 = 0;
        }

        else
        {
          v53 = v72;
        }

        if (v70 == 1)
        {
          v54 = v71 + 16 * v53;
          v64 = *(v54 + 8);
          if (v64 > 0x40)
          {
            llvm::APInt::initSlowCase(&v63, v54);
          }

          else
          {
            v63 = *v54;
          }
        }

        else
        {
          (*(*v71 + 24))(&v63);
        }

        (*a4)(&v96, &v65, &v63);
        v68 = v97;
        v67 = v96;
        v69 = 1;
        if (v64 >= 0x41 && v63)
        {
          operator delete[](v63);
        }

        if (v66 >= 0x41 && v65)
        {
          operator delete[](v65);
        }

        v55 = v69;
        v56 = v69;
        if (v69 == 1)
        {
          llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v98, &v67);
          v56 = v69;
        }

        if ((v56 & 1) != 0 && v68 >= 0x41 && v67)
        {
          operator delete[](v67);
        }

        if (!v55)
        {
          break;
        }

        v50 = ++v75;
        ++v72;
        if (!--v49)
        {
          goto LABEL_115;
        }
      }

      v59 = 0;
    }

    else
    {
LABEL_115:
      v57 = llvm::cast<mlir::ShapedType,mlir::Type>(&v95);
      v59 = mlir::DenseElementsAttr::get(v57, v58, v98, v99);
    }

    llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v98);
    if ((v70 & 1) == 0)
    {
      v60 = v71;
      v71 = 0;
      if (v60)
      {
        (*(*v60 + 8))(v60);
      }
    }

    result = v59;
    if ((v73 & 1) == 0)
    {
      v61 = v74;
      v74 = 0;
      if (v61)
      {
        (*(*v61 + 8))(v61);
        result = v59;
      }
    }
  }

  else
  {
    result = 0;
  }

  if (v79 == 1 && (v76 & 1) == 0)
  {
    v44 = v77;
    v77 = 0;
    if (v44)
    {
      v45 = result;
      (*(*v44 + 8))(v44);
      result = v45;
    }
  }

  if (v83 == 1 && (v80 & 1) == 0)
  {
    v46 = v81;
    v81 = 0;
    if (v46)
    {
      v29 = result;
      (*(*v46 + 8))(v46);
      return v29;
    }
  }

  return result;
}

void anonymous namespace::AddUIExtendedToAddI::~AddUIExtendedToAddI(_anonymous_namespace_::AddUIExtendedToAddI *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::AddUIExtendedToAddI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'res__1' failed to satisfy constraint: ''";
  v13 = 50;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::SubIOp::fold(mlir::arith::SubIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::SubIOp::fold(mlir::arith::SubIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t a1, uint64_t a2, unint64_t **a3)
{
  v5 = *(a2 + 8);
  v9 = v5;
  if (v5 > 0x40)
  {
    llvm::APInt::initSlowCase(&__p, a2);
    v5 = v9;
    v6 = __p;
  }

  else
  {
    v6 = *a2;
    __p = *a2;
  }

  v11 = v5;
  v10 = v6;
  v9 = 0;
  llvm::APInt::operator-=(&v10, a3);
  v7 = v10;
  *(a1 + 8) = v11;
  *a1 = v7;
  *(a1 + 16) = 1;
  if (v9 >= 0x41)
  {
    if (__p)
    {
      operator delete[](__p);
    }
  }
}

void anonymous namespace::SubIRHSAddConstant::~SubIRHSAddConstant(_anonymous_namespace_::SubIRHSAddConstant *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::SubIRHSAddConstant::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::SubIRHSAddConstant::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 1 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::SubILHSAddConstant::~SubILHSAddConstant(_anonymous_namespace_::SubILHSAddConstant *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::SubILHSAddConstant::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::SubILHSAddConstant::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 1 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::SubIRHSSubConstantRHS::~SubIRHSSubConstantRHS(_anonymous_namespace_::SubIRHSSubConstantRHS *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::SubIRHSSubConstantRHS::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::SubIRHSSubConstantRHS::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 1 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::SubIRHSSubConstantLHS::~SubIRHSSubConstantLHS(_anonymous_namespace_::SubIRHSSubConstantLHS *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::SubIRHSSubConstantLHS::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::SubIRHSSubConstantLHS::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 1 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::SubILHSSubConstantRHS::~SubILHSSubConstantRHS(_anonymous_namespace_::SubILHSSubConstantRHS *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::SubILHSSubConstantRHS::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::SubILHSSubConstantRHS::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 1 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::SubILHSSubConstantLHS::~SubILHSSubConstantLHS(_anonymous_namespace_::SubILHSSubConstantLHS *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::SubILHSSubConstantLHS::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::SubILHSSubConstantLHS::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 1 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::SubISubILHSRHSLHS::~SubISubILHSRHSLHS(_anonymous_namespace_::SubISubILHSRHSLHS *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t anonymous namespace::SubISubILHSRHSLHS::matchAndRewrite(_anonymous_namespace_::SubISubILHSRHSLHS *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v24[4] = *MEMORY[0x1E69E9840];
  v22 = v24;
  v24[0] = a2;
  v23 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::SubIOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v21[0] = *(*(v5 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v21);
  if (DefiningOp)
  {
    v7 = DefiningOp;
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::SubIOp,void>::id)
    {
      v8 = *(a3 + 2);
      if (v8 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
      {
        v9 = *(v7 + 24);
LABEL_12:
        (*(*v8 + 88))(v8, v9, v10, v21);
        goto LABEL_13;
      }

      goto LABEL_13;
    }

    if ((*(DefiningOp + 46) & 0x80) != 0)
    {
      v12 = *(DefiningOp + 72);
      if (!*(DefiningOp + 47))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v12 = 0;
      if (!*(DefiningOp + 47))
      {
        goto LABEL_19;
      }
    }

    v25.var0 = "overflowFlags";
    v25.var1 = 13;
    InherentAttr = mlir::Operation::getInherentAttr(DefiningOp, v25);
    if (v14)
    {
LABEL_20:
      if (!InherentAttr || *(*InherentAttr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
      {
        mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
      }

      v15 = v23;
      if (v23 >= HIDWORD(v23))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v22, v24, v23 + 1, 8);
        v15 = v23;
      }

      v22[v15] = v7;
      LODWORD(v23) = v23 + 1;
      if ((*(v5 + 46) & 0x80) != 0)
      {
        v16 = *(v5 + 9);
        if (*(a2 + 47))
        {
          goto LABEL_27;
        }
      }

      else
      {
        v16 = 0;
        if (*(a2 + 47))
        {
LABEL_27:
          v27.var0 = "overflowFlags";
          v27.var1 = 13;
          v17 = mlir::Operation::getInherentAttr(a2, v27);
          if (v18)
          {
            goto LABEL_29;
          }
        }
      }

      v28.var0 = "overflowFlags";
      v28.var1 = 13;
      v17 = mlir::DictionaryAttr::get((a2 + 56), v28);
LABEL_29:
      if (!v17 || *(*v17 + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
      {
        mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
      }

      if (*(v12 + 24) == *(v16 + 56))
      {
        v20 = *(v22[1] + 24);
        v21[0] = *(*v22 + 24);
        v21[1] = v20;
        mlir::Builder::getFusedLoc(a3 + 1, v21, 2, 0);
      }

      v19 = *(a3 + 2);
      if (v19 && mlir::RewriterBase::Listener::classof(v19))
      {
      }

      goto LABEL_13;
    }

LABEL_19:
    v26.var0 = "overflowFlags";
    v26.var1 = 13;
    InherentAttr = mlir::DictionaryAttr::get((v7 + 56), v26);
    goto LABEL_20;
  }

  v8 = *(a3 + 2);
  if (v8 && mlir::RewriterBase::Listener::classof(*(a3 + 2)))
  {
    v9 = *(v5 + 3);
    goto LABEL_12;
  }

LABEL_13:
  if (v22 != v24)
  {
    free(v22);
  }

  return 0;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::SubISubILHSRHSLHS::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::SubISubILHSRHSLHS::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "castedOp1 is not ::mlir::arith::SubIOp type";
  v13 = 43;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::SubISubILHSRHSLHS::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "Operands 'x' and 'x0' must be equal";
  v13 = 35;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::MulIMulIConstant::~MulIMulIConstant(_anonymous_namespace_::MulIMulIConstant *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t anonymous namespace::MulIMulIConstant::matchAndRewrite(_anonymous_namespace_::MulIMulIConstant *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v30[4] = *MEMORY[0x1E69E9840];
  v25 = 0;
  v26 = 0;
  v28 = v30;
  v30[0] = a2;
  v29 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::MulIOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v27[0] = *(*(v5 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v27);
  if (!DefiningOp)
  {
    v8 = *(a3 + 2);
    if (!v8 || !mlir::RewriterBase::Listener::classof(v8))
    {
      goto LABEL_43;
    }

    v9 = *(v5 + 3);
    goto LABEL_12;
  }

  v7 = DefiningOp;
  if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::MulIOp,void>::id)
  {
    v27[0] = *(*(DefiningOp + 72) + 56);
    v12 = mlir::Value::getDefiningOp(v27);
    if (v12)
    {
      v13 = v12;
      {
        goto LABEL_43;
      }

      v14 = v29;
      if (v29 >= HIDWORD(v29))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v28, v30, v29 + 1, 8);
        v14 = v29;
      }

      v28[v14] = v13;
      LODWORD(v29) = v29 + 1;
      if (!*(v7 + 47) || (v31.var0 = "overflowFlags", v31.var1 = 13, InherentAttr = mlir::Operation::getInherentAttr(v7, v31), (v16 & 1) == 0))
      {
        v32.var0 = "overflowFlags";
        v32.var1 = 13;
        InherentAttr = mlir::DictionaryAttr::get((v7 + 56), v32);
      }

      if (!InherentAttr || *(*InherentAttr + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
      {
        mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
      }

      v17 = v29;
      if (v29 >= HIDWORD(v29))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v28, v30, v29 + 1, 8);
        v17 = v29;
      }

      v28[v17] = v7;
      LODWORD(v29) = v29 + 1;
      v27[0] = *(*(v5 + 9) + 56);
      v18 = mlir::Value::getDefiningOp(v27);
      if (v18)
      {
        v19 = v18;
        {
          v20 = v29;
          if (v29 >= HIDWORD(v29))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v28, v30, v29 + 1, 8);
            v20 = v29;
          }

          v28[v20] = v19;
          LODWORD(v29) = v29 + 1;
          if (!*(a2 + 47) || (v33.var0 = "overflowFlags", v33.var1 = 13, v21 = mlir::Operation::getInherentAttr(a2, v33), (v22 & 1) == 0))
          {
            v34.var0 = "overflowFlags";
            v34.var1 = 13;
            v21 = mlir::DictionaryAttr::get((a2 + 56), v34);
          }

          if (!v21 || *(*v21 + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
          {
            mlir::arith::IntegerOverflowFlagsAttr::get(*(a3 + 1), 0);
          }

          v23 = *(v28[1] + 24);
          v27[0] = *(*v28 + 24);
          v27[1] = v23;
          mlir::Builder::getFusedLoc(a3 + 1, v27, 2, 0);
        }

        goto LABEL_43;
      }

      v8 = *(a3 + 2);
      if (!v8 || !mlir::RewriterBase::Listener::classof(v8))
      {
        goto LABEL_43;
      }

      v9 = *(v5 + 3);
    }

    else
    {
      v8 = *(a3 + 2);
      if (!v8 || !mlir::RewriterBase::Listener::classof(v8))
      {
        goto LABEL_43;
      }

      v9 = *(v7 + 24);
    }

LABEL_12:
    (*(*v8 + 88))(v8, v9, v10, v27);
    v11 = v28;
    if (v28 == v30)
    {
      return 0;
    }

    goto LABEL_44;
  }

  v8 = *(a3 + 2);
  if (v8 && mlir::RewriterBase::Listener::classof(v8))
  {
    v9 = *(v7 + 24);
    goto LABEL_12;
  }

LABEL_43:
  v11 = v28;
  if (v28 != v30)
  {
LABEL_44:
    free(v11);
  }

  return 0;
}

uint64_t mlir::OpBuilder::create<mlir::arith::MulIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x1E69E9840];
  v15 = a2;
  Context = mlir::Attribute::getContext(&v15);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::MulIOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::MulIOp,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(v17, v18, v16);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  v11 = mlir::ValueRange::ValueRange(v18, *a3, *(a3 + 8));
  mlir::arith::MulIOp::build(v11, v17, v18[0], v18[1], *a4, *(a4 + 8));
  v12 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::MulIOp,void>::id)
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

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::MulIMulIConstant::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 0 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::MulIMulIConstant::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "castedOp1 is not ::mlir::arith::MulIOp type";
  v13 = 43;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::MulIMulIConstant::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 1 of castedOp1";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::MulIMulIConstant::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#4}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 1 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::MulSIExtendedToMulI::~MulSIExtendedToMulI(_anonymous_namespace_::MulSIExtendedToMulI *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::MulSIExtendedToMulI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'res__1' failed to satisfy constraint: ''";
  v13 = 50;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::MulSIExtendedRHSOne::~MulSIExtendedRHSOne(_anonymous_namespace_::MulSIExtendedRHSOne *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t anonymous namespace::MulSIExtendedRHSOne::matchAndRewrite(_anonymous_namespace_::MulSIExtendedRHSOne *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v34[4] = *MEMORY[0x1E69E9840];
  v32 = v34;
  v34[0] = a2;
  v33 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::MulSIExtendedOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  __p = *(*(v5 + 9) + 56);
  DefiningOp = mlir::Value::getDefiningOp(&__p);
  if (!DefiningOp)
  {
    v14 = *(a3 + 2);
    if (!v14 || !mlir::RewriterBase::Listener::classof(*(a3 + 2)))
    {
      goto LABEL_20;
    }

    v15 = *(v5 + 3);
LABEL_19:
    (*(*v14 + 88))(v14, v15, v16, &__p);
    goto LABEL_20;
  }

  v7 = DefiningOp;
  p_p = 0;
  p_p_p = &p_p;
  __p = (DefiningOp - 16);
  v8 = mlir::Value::getDefiningOp(&__p);
  if (!v8 || (mlir::detail::constant_op_binder<mlir::Attribute>::match(&p_p_p, v8) & 1) == 0)
  {
    v14 = *(a3 + 2);
    if (!v14 || !mlir::RewriterBase::Listener::classof(*(a3 + 2)))
    {
      goto LABEL_20;
    }

    v15 = *(v7 + 24);
    goto LABEL_19;
  }

  v9 = p_p;
  v10 = v33;
  if (v33 >= HIDWORD(v33))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v34, v33 + 1, 8);
    v10 = v33;
  }

  v32[v10] = v7;
  LODWORD(v33) = v33 + 1;
  LODWORD(v25) = 1;
  __p = 0;
  p_p = &__p;
  if (!v9)
  {
    goto LABEL_63;
  }

  v11 = mlir::detail::constant_int_value_binder::match(&p_p, v9);
  v12 = v25;
  if ((v11 & 1) == 0)
  {
    if (v25 >= 0x41 && __p)
    {
      operator delete[](__p);
    }

    goto LABEL_63;
  }

  v13 = __p;
  LODWORD(v30) = 1;
  p_p = 0;
  p_p_p = &p_p;
  if (mlir::detail::constant_int_value_binder::match(&p_p_p, v9))
  {
    LODWORD(v25) = v30;
    __p = p_p;
    LOBYTE(v26) = 1;
  }

  else
  {
    LOBYTE(__p) = 0;
    LOBYTE(v26) = 0;
    if (v30 >= 0x41 && p_p)
    {
      operator delete[](p_p);
    }
  }

  v18 = v25;
  v19 = v25 - 1;
  if (v25 > 0x40)
  {
    if (((*(__p + (v19 >> 6)) >> v19) & 1) != 0 || llvm::APInt::countLeadingZerosSlowCase(&__p) == v18)
    {
      v20 = 1;
      goto LABEL_54;
    }
  }

  else if (((__p >> v19) & 1) != 0 || !__p)
  {
    if (v12 >= 0x41 && v13)
    {
      operator delete[](v13);
    }

    goto LABEL_63;
  }

  LODWORD(v28) = 1;
  p_p_p = 0;
  p_p = &p_p_p;
  if (mlir::detail::constant_int_value_binder::match(&p_p, v9))
  {
    LODWORD(v30) = v28;
    p_p = p_p_p;
    LOBYTE(v31) = 1;
  }

  else
  {
    LOBYTE(p_p) = 0;
    LOBYTE(v31) = 0;
    if (v28 >= 0x41 && p_p_p)
    {
      operator delete[](p_p_p);
    }
  }

  v21 = v30;
  if (v30 < 0x41)
  {
    v22 = &p_p;
LABEL_47:
    v20 = *v22 != 1;
    goto LABEL_49;
  }

  if (v21 - llvm::APInt::countLeadingZerosSlowCase(&p_p) <= 0x40)
  {
    v22 = p_p;
    goto LABEL_47;
  }

  v20 = 1;
LABEL_49:
  if (v21 >= 0x41 && (v31 & 1) != 0 && p_p)
  {
    operator delete[](p_p);
  }

  v18 = v25;
LABEL_54:
  if (v26 == 1 && v18 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  if (v12 >= 0x41 && v13)
  {
    operator delete[](v13);
    if (!v20)
    {
      goto LABEL_61;
    }
  }

  else if (!v20)
  {
LABEL_61:
    __p = *(*v32 + 24);
    mlir::Builder::getFusedLoc(a3 + 1, &__p, 1, 0);
  }

LABEL_63:
  v23 = *(a3 + 2);
  if (v23 && mlir::RewriterBase::Listener::classof(v23))
  {
  }

LABEL_20:
  if (v32 != v34)
  {
    free(v32);
  }

  return 0;
}

uint64_t mlir::OpBuilder::create<mlir::arith::CmpIOp,mlir::arith::CmpIPredicateAttr,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::CmpIOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::CmpIOp,mlir::arith::CmpIPredicateAttr,mlir::Value &,mlir::Value &>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::arith::CmpIOp::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::CmpIOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::arith::ExtSIOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[5] = *MEMORY[0x1E69E9840];
  v17 = a2;
  Context = mlir::Attribute::getContext(&v17);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::ExtSIOp,llvm::SmallVector<mlir::Type,4u> &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::NamedAttribute,4u> &>(v18, v20, v19);
  }

  mlir::OperationState::OperationState(v18, a2, v11);
  mlir::ValueRange::ValueRange(v20, *a3, *(a3 + 8));
  v13 = mlir::ValueRange::ValueRange(v19, *a4, *(a4 + 8));
  mlir::arith::ExtSIOp::build(v13, v18, v20[0], v20[1], v19[0], v19[1], *a5, *(a5 + 8));
  v14 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v14 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v15;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::MulSIExtendedRHSOne::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "There's no operation that defines operand 1 of castedOp0";
  v13 = 56;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::MulSIExtendedRHSOne::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#2}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "::mlir::success(::mlir::matchPattern(op1->getResult(0), ::mlir::m_Constant(&arg1_0))) return ::mlir::failure";
  v13 = 108;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::MulSIExtendedRHSOne::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#3}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'c1' failed to satisfy constraint: ''";
  v13 = 46;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void anonymous namespace::MulUIExtendedToMulI::~MulUIExtendedToMulI(_anonymous_namespace_::MulUIExtendedToMulI *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

__n128 llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<anonymous namespace::MulUIExtendedToMulI::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &)::{lambda(mlir::Diagnostic &)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 16;
  v3 = *(a2 + 16);
  v11 = 3;
  v12 = "entities 'res__1' failed to satisfy constraint: ''";
  v13 = 50;
  v4 = *(a2 + 24);
  v5 = &v11;
  if (v4 >= *(a2 + 28))
  {
    if (v3 <= &v11 && v3 + 24 * v4 > &v11)
    {
      v9 = &v11 - v3;
      v10 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v10;
      v3 = *(v10 + 16);
      v5 = &v9[v3];
    }

    else
    {
      v8 = a2;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2, a2 + 32, v4 + 1, 24);
      a2 = v8;
      v3 = *(v8 + 16);
      v5 = &v11;
    }
  }

  v6 = (v3 + 24 * *(a2 + 24));
  result = *v5;
  v6[1].n128_u64[0] = v5[1].n128_u64[0];
  *v6 = result;
  ++*(a2 + 24);
  return result;
}

void mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::DivUIOp::fold(mlir::arith::DivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::DivUIOp::fold(mlir::arith::DivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t a1, _BYTE **a2, uint64_t a3, llvm::APInt *a4)
{
  v13 = *(a3 + 8);
  if (v13 > 0x40)
  {
    llvm::APInt::initSlowCase(&__p, a3);
    v7 = *a2;
    if (*v7)
    {
      goto LABEL_12;
    }
  }

  else
  {
    __p = *a3;
    v7 = *a2;
    if (**a2)
    {
      goto LABEL_12;
    }
  }

  v8 = *(a4 + 2);
  if (v8 <= 0x40)
  {
    if (*a4)
    {
      goto LABEL_7;
    }

LABEL_12:
    *v7 = 1;
    v11 = __p;
    *(a1 + 8) = v13;
    *a1 = v11;
    *(a1 + 16) = 1;
    return;
  }

  if (llvm::APInt::countLeadingZerosSlowCase(a4) == v8)
  {
    goto LABEL_12;
  }

LABEL_7:
  llvm::APInt::udiv(&__p, a4, &v14);
  v9 = v14;
  v10 = v13;
  *(a1 + 8) = v15;
  *a1 = v9;
  v15 = 0;
  *(a1 + 16) = 1;
  if (v10 >= 0x41)
  {
    if (__p)
    {
      operator delete[](__p);
    }
  }
}

void mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::DivSIOp::fold(mlir::arith::DivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::DivSIOp::fold(mlir::arith::DivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t a1, BOOL **a2, uint64_t a3, llvm::APInt *a4)
{
  v13 = *(a3 + 8);
  if (v13 > 0x40)
  {
    llvm::APInt::initSlowCase(&__p, a3);
    v7 = *a2;
    if (*v7)
    {
      goto LABEL_12;
    }
  }

  else
  {
    __p = *a3;
    v7 = *a2;
    if (**a2)
    {
      goto LABEL_12;
    }
  }

  v8 = *(a4 + 2);
  if (v8 <= 0x40)
  {
    if (*a4)
    {
      goto LABEL_7;
    }

LABEL_12:
    *v7 = 1;
    v11 = __p;
    *(a1 + 8) = v13;
    *a1 = v11;
    *(a1 + 16) = 1;
    return;
  }

  if (llvm::APInt::countLeadingZerosSlowCase(a4) == v8)
  {
    goto LABEL_12;
  }

LABEL_7:
  llvm::APInt::sdiv_ov(&__p, a4, v7, &v14);
  v9 = v14;
  v10 = v13;
  *(a1 + 8) = v15;
  *a1 = v9;
  v15 = 0;
  *(a1 + 16) = 1;
  if (v10 >= 0x41)
  {
    if (__p)
    {
      operator delete[](__p);
    }
  }
}

void mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::CeilDivUIOp::fold(mlir::arith::CeilDivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::CeilDivUIOp::fold(mlir::arith::CeilDivUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t a1, BOOL **a2, uint64_t a3, llvm::APInt *a4)
{
  v15 = *(a3 + 8);
  if (v15 > 0x40)
  {
    llvm::APInt::initSlowCase(&v14, a3);
    v7 = *a2;
    if (**a2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v14 = *a3;
    v7 = *a2;
    if (**a2)
    {
      goto LABEL_12;
    }
  }

  v8 = *(a4 + 2);
  if (v8 <= 0x40)
  {
    if (*a4)
    {
      goto LABEL_7;
    }

LABEL_12:
    *v7 = 1;
    v10 = v14;
    *(a1 + 8) = v15;
    *a1 = v10;
    *(a1 + 16) = 1;
    return;
  }

  if (llvm::APInt::countLeadingZerosSlowCase(a4) == v8)
  {
    goto LABEL_12;
  }

LABEL_7:
  llvm::APInt::udiv(&v14, a4, &v20);
  llvm::APInt::urem(&v14, a4, &__p);
  v9 = v19;
  if (v19 > 0x40)
  {
    v11 = llvm::APInt::countLeadingZerosSlowCase(&__p);
    if (__p)
    {
      operator delete[](__p);
    }

    if (v11 != v9)
    {
      goto LABEL_9;
    }
  }

  else if (__p)
  {
LABEL_9:
    v19 = v15;
    if (v15 > 0x40)
    {
      llvm::APInt::initSlowCase(&__p, 1, 1);
    }

    else
    {
      __p = (v15 != 0);
    }

    llvm::APInt::uadd_ov(&v20, &__p, *a2, &v16);
    if (v19 >= 0x41 && __p)
    {
      operator delete[](__p);
    }

    if (v21 >= 0x41 && v20)
    {
      operator delete[](v20);
    }

    goto LABEL_25;
  }

  v17 = v21;
  v16 = v20;
LABEL_25:
  v12 = v16;
  v13 = v15;
  *(a1 + 8) = v17;
  *a1 = v12;
  v17 = 0;
  *(a1 + 16) = 1;
  if (v13 >= 0x41)
  {
    if (v14)
    {
      operator delete[](v14);
    }
  }
}

void mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::CeilDivSIOp::fold(mlir::arith::CeilDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::CeilDivSIOp::fold(mlir::arith::CeilDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t a1, BOOL **a2, uint64_t a3, llvm::APInt *this)
{
  v16 = *(a3 + 8);
  if (v16 > 0x40)
  {
    llvm::APInt::initSlowCase(&v15, a3);
    v7 = *a2;
    if (**a2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v15 = *a3;
    v7 = *a2;
    if (**a2)
    {
      goto LABEL_11;
    }
  }

  v8 = *(this + 2);
  if (v8 <= 0x40)
  {
    if (*this)
    {
      goto LABEL_7;
    }

LABEL_11:
    *v7 = 1;
    v9 = v16;
LABEL_12:
    v10 = v15;
    goto LABEL_13;
  }

  if (llvm::APInt::countLeadingZerosSlowCase(this) == v8)
  {
    goto LABEL_11;
  }

LABEL_7:
  v9 = v16;
  if (v16 > 0x40)
  {
    if (llvm::APInt::countLeadingZerosSlowCase(&v15) == v9)
    {
      goto LABEL_12;
    }

    v25 = v9;
    llvm::APInt::initSlowCase(&v24, 0, 0);
  }

  else
  {
    v10 = v15;
    if (!v15)
    {
LABEL_13:
      *(a1 + 8) = v9;
      *a1 = v10;
      *(a1 + 16) = 1;
      return;
    }

    v25 = v16;
    v24 = 0;
  }

  v11 = llvm::APInt::compareSigned(&v15, &v24);
  v12 = llvm::APInt::compareSigned(this, &v24);
  if (v11 < 1 || v12 < 1)
  {
    *v23 = 0;
    if (v11 > 0 || v12 > 0)
    {
      if (v11 > 0 || v12 < 1)
      {
        llvm::APInt::ssub_ov(&v24, this, &v23[2], &v21);
        llvm::APInt::sdiv_ov(&v15, &v21, &v23[1], &__p);
        llvm::APInt::ssub_ov(&v24, &__p, v23, &v17);
        if (v23[2])
        {
          goto LABEL_31;
        }
      }

      else
      {
        llvm::APInt::ssub_ov(&v24, &v15, &v23[3], &v21);
        llvm::APInt::sdiv_ov(&v21, this, &v23[1], &__p);
        llvm::APInt::ssub_ov(&v24, &__p, v23, &v17);
        if (v23[3])
        {
          goto LABEL_31;
        }
      }

      if (!v23[1])
      {
        **a2 = v23[0];
        if (v20 >= 0x41)
        {
LABEL_32:
          if (__p)
          {
            operator delete[](__p);
          }
        }

LABEL_34:
        if (v22 >= 0x41 && v21)
        {
          operator delete[](v21);
        }

        goto LABEL_37;
      }
    }

    else
    {
      llvm::APInt::ssub_ov(&v24, &v15, &v23[3], &v21);
      llvm::APInt::ssub_ov(&v24, this, &v23[2], &__p);
      signedCeilNonnegInputs(&v17, &v21, &__p, &v23[1]);
      if (!v23[3] && !v23[2])
      {
        **a2 = v23[1];
        if (v20 >= 0x41)
        {
          goto LABEL_32;
        }

        goto LABEL_34;
      }
    }

LABEL_31:
    **a2 = 1;
    if (v20 >= 0x41)
    {
      goto LABEL_32;
    }

    goto LABEL_34;
  }

  signedCeilNonnegInputs(&v17, &v15, this, *a2);
LABEL_37:
  if (v25 >= 0x41 && v24)
  {
    operator delete[](v24);
  }

  v13 = v17;
  v14 = v16;
  *(a1 + 8) = v18;
  *a1 = v13;
  v18 = 0;
  *(a1 + 16) = 1;
  if (v14 >= 0x41)
  {
    if (v15)
    {
      operator delete[](v15);
    }
  }
}

void signedCeilNonnegInputs(const llvm::APInt *a1, const llvm::APInt *this, const llvm::APInt *a3, BOOL *a4)
{
  v8 = *(this + 2);
  v14 = v8;
  if (v8 > 0x40)
  {
    llvm::APInt::initSlowCase(&v13, 1, 1);
  }

  else
  {
    v13 = (v8 != 0);
  }

  llvm::APInt::ssub_ov(this, &v13, a4, &__p);
  llvm::APInt::sdiv_ov(&__p, a3, a4, &v11);
  if (v10 >= 0x41 && __p)
  {
    operator delete[](__p);
  }

  llvm::APInt::sadd_ov(&v11, &v13, a4, a1);
  if (v12 >= 0x41 && v11)
  {
    operator delete[](v11);
  }

  if (v14 >= 0x41)
  {
    if (v13)
    {
      operator delete[](v13);
    }
  }
}

void mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::FloorDivSIOp::fold(mlir::arith::FloorDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::FloorDivSIOp::fold(mlir::arith::FloorDivSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t a1, BOOL **a2, uint64_t a3, llvm::APInt *this)
{
  v12 = *(a3 + 8);
  if (v12 <= 0x40)
  {
    __p = *a3;
    v7 = *(this + 2);
    if (v7 > 0x40)
    {
      goto LABEL_3;
    }

LABEL_7:
    if (!*this)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  llvm::APInt::initSlowCase(&__p, a3);
  v7 = *(this + 2);
  if (v7 <= 0x40)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (llvm::APInt::countLeadingZerosSlowCase(this) == v7)
  {
LABEL_4:
    **a2 = 1;
    v8 = __p;
    *(a1 + 8) = v12;
    *a1 = v8;
    *(a1 + 16) = 1;
    return;
  }

LABEL_8:
  llvm::APInt::sfloordiv_ov(&__p, this, *a2, &v13);
  v9 = v13;
  v10 = v12;
  *(a1 + 8) = v14;
  *a1 = v9;
  v14 = 0;
  *(a1 + 16) = 1;
  if (v10 >= 0x41)
  {
    if (__p)
    {
      operator delete[](__p);
    }
  }
}

void mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::RemUIOp::fold(mlir::arith::RemUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::RemUIOp::fold(mlir::arith::RemUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t a1, _BYTE **a2, uint64_t a3, llvm::APInt *a4)
{
  v13 = *(a3 + 8);
  if (v13 > 0x40)
  {
    llvm::APInt::initSlowCase(&__p, a3);
    v7 = *a2;
    if (*v7)
    {
      goto LABEL_12;
    }
  }

  else
  {
    __p = *a3;
    v7 = *a2;
    if (**a2)
    {
      goto LABEL_12;
    }
  }

  v8 = *(a4 + 2);
  if (v8 <= 0x40)
  {
    if (*a4)
    {
      goto LABEL_7;
    }

LABEL_12:
    *v7 = 1;
    v11 = __p;
    *(a1 + 8) = v13;
    *a1 = v11;
    *(a1 + 16) = 1;
    return;
  }

  if (llvm::APInt::countLeadingZerosSlowCase(a4) == v8)
  {
    goto LABEL_12;
  }

LABEL_7:
  llvm::APInt::urem(&__p, a4, &v14);
  v9 = v14;
  v10 = v13;
  *(a1 + 8) = v15;
  *a1 = v9;
  v15 = 0;
  *(a1 + 16) = 1;
  if (v10 >= 0x41)
  {
    if (__p)
    {
      operator delete[](__p);
    }
  }
}

void mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::RemSIOp::fold(mlir::arith::RemSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::RemSIOp::fold(mlir::arith::RemSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t a1, _BYTE **a2, uint64_t a3, llvm::APInt *a4)
{
  v13 = *(a3 + 8);
  if (v13 > 0x40)
  {
    llvm::APInt::initSlowCase(&__p, a3);
    v7 = *a2;
    if (*v7)
    {
      goto LABEL_12;
    }
  }

  else
  {
    __p = *a3;
    v7 = *a2;
    if (**a2)
    {
      goto LABEL_12;
    }
  }

  v8 = *(a4 + 2);
  if (v8 <= 0x40)
  {
    if (*a4)
    {
      goto LABEL_7;
    }

LABEL_12:
    *v7 = 1;
    v11 = __p;
    *(a1 + 8) = v13;
    *a1 = v11;
    *(a1 + 16) = 1;
    return;
  }

  if (llvm::APInt::countLeadingZerosSlowCase(a4) == v8)
  {
    goto LABEL_12;
  }

LABEL_7:
  llvm::APInt::srem(&__p, a4, &v14);
  v9 = v14;
  v10 = v13;
  *(a1 + 8) = v15;
  *a1 = v9;
  v15 = 0;
  *(a1 + 16) = 1;
  if (v10 >= 0x41)
  {
    if (__p)
    {
      operator delete[](__p);
    }
  }
}

uint64_t mlir::detail::enumerateImpl<std::tuple<mlir::detail::PatternMatcherValue,mlir::detail::constant_int_value_binder> &,mlir::detail::RecursivePatternMatcher<mlir::arith::XOrIOp,mlir::detail::PatternMatcherValue,mlir::detail::constant_int_value_binder>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::PatternMatcherValue,mlir::detail::constant_int_value_binder> & &)#1},0ul,1ul>(void *a1, char **a2)
{
  v3 = *(*a2[1] + 72);
  v4 = a1 + 1;
  v5 = **a2;
  if (*a1 != *(v3 + 24))
  {
    v5 = 0;
  }

  **a2 = v5;
  v13 = *(v3 + 56);
  result = mlir::Value::getDefiningOp(&v13);
  if (result)
  {
    v7 = result;
    v12 = &v13;
    v13 = 0;
    result = mlir::detail::constant_op_binder<mlir::Attribute>::match(&v12, result);
    if (result)
    {
      v8 = *(*(*(v7 - 8) & 0xFFFFFFFFFFFFFFF8) + 136);
      if (v8 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        result = mlir::detail::constant_int_value_binder::match(v4, v13);
      }

      else
      {
        result = 0;
      }
    }
  }

  **a2 &= result;
  return result;
}

void mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::AndIOp::fold(mlir::arith::AndIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AndIOp::fold(mlir::arith::AndIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t a1, uint64_t a2, const llvm::APInt *a3)
{
  v5 = *(a2 + 8);
  v11 = v5;
  if (v5 <= 0x40)
  {
    v6 = *a2;
LABEL_4:
    v7 = *a3 & v6;
    *(a1 + 8) = v5;
    *a1 = v7;
    *(a1 + 16) = 1;
    return;
  }

  llvm::APInt::initSlowCase(&__p, a2);
  v5 = v11;
  v13 = v11;
  v6 = __p;
  v12 = __p;
  v11 = 0;
  if (v13 <= 0x40)
  {
    goto LABEL_4;
  }

  llvm::APInt::andAssignSlowCase(&v12, a3);
  v8 = v12;
  v9 = v11;
  *(a1 + 8) = v13;
  *a1 = v8;
  *(a1 + 16) = 1;
  if (v9 >= 0x41)
  {
    if (__p)
    {
      operator delete[](__p);
    }
  }
}

void mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::OrIOp::fold(mlir::arith::OrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::OrIOp::fold(mlir::arith::OrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t a1, uint64_t a2, const llvm::APInt *a3)
{
  v5 = *(a2 + 8);
  v11 = v5;
  if (v5 <= 0x40)
  {
    v6 = *a2;
LABEL_4:
    v7 = *a3 | v6;
    *(a1 + 8) = v5;
    *a1 = v7;
    *(a1 + 16) = 1;
    return;
  }

  llvm::APInt::initSlowCase(&__p, a2);
  v5 = v11;
  v13 = v11;
  v6 = __p;
  v12 = __p;
  v11 = 0;
  if (v13 <= 0x40)
  {
    goto LABEL_4;
  }

  llvm::APInt::orAssignSlowCase(&v12, a3);
  v8 = v12;
  v9 = v11;
  *(a1 + 8) = v13;
  *a1 = v8;
  *(a1 + 16) = 1;
  if (v9 >= 0x41)
  {
    if (__p)
    {
      operator delete[](__p);
    }
  }
}

void mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::XOrIOp::fold(mlir::arith::XOrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::XOrIOp::fold(mlir::arith::XOrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(uint64_t a1, uint64_t a2, const llvm::APInt *a3)
{
  v5 = *(a2 + 8);
  v11 = v5;
  if (v5 <= 0x40)
  {
    v6 = *a2;
LABEL_4:
    v7 = *a3 ^ v6;
    *(a1 + 8) = v5;
    *a1 = v7;
    *(a1 + 16) = 1;
    return;
  }

  llvm::APInt::initSlowCase(&__p, a2);
  v5 = v11;
  v13 = v11;
  v6 = __p;
  v12 = __p;
  v11 = 0;
  if (v13 <= 0x40)
  {
    goto LABEL_4;
  }

  llvm::APInt::xorAssignSlowCase(&v12, a3);
  v8 = v12;
  v9 = v11;
  *(a1 + 8) = v13;
  *a1 = v8;
  *(a1 + 16) = 1;
  if (v9 >= 0x41)
  {
    if (__p)
    {
      operator delete[](__p);
    }
  }
}

void anonymous namespace::XOrINotCmpI::~XOrINotCmpI(_anonymous_namespace_::XOrINotCmpI *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t anonymous namespace::XOrINotCmpI::matchAndRewrite(_anonymous_namespace_::XOrINotCmpI *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v21[4] = *MEMORY[0x1E69E9840];
  v19 = v21;
  v21[0] = a2;
  v20 = 0x400000001;
  if (*(*(a2 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v18[0] = *(*(v4 + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v18);
  if (DefiningOp)
  {
    v6 = DefiningOp;
    if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::CmpIOp,void>::id)
    {
      v7 = *(a3 + 2);
      if (v7 && mlir::RewriterBase::Listener::classof(v7))
      {
        v8 = *(v6 + 24);
LABEL_27:
        (*(*v7 + 88))(v7, v8, v9, v18);
        goto LABEL_28;
      }

      goto LABEL_28;
    }

    if (!*(DefiningOp + 47) || (v22.var0 = "predicate", v22.var1 = 9, InherentAttr = mlir::Operation::getInherentAttr(DefiningOp, v22), (v11 & 1) == 0))
    {
      v23.var0 = "predicate";
      v23.var1 = 9;
      InherentAttr = mlir::DictionaryAttr::get((v6 + 56), v23);
    }

    if (!InherentAttr || (mlir::arith::CmpIPredicateAttr::classof(InherentAttr) & 1) == 0)
    {
      v7 = *(a3 + 2);
      if (v7 && mlir::RewriterBase::Listener::classof(v7))
      {
        v8 = *(v6 + 24);
        goto LABEL_27;
      }

      goto LABEL_28;
    }

    if ((*(v6 + 46) & 0x80) != 0)
    {
      v12 = v20;
      if (v20 < HIDWORD(v20))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v12 = v20;
      if (v20 < HIDWORD(v20))
      {
        goto LABEL_19;
      }
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod(&v19, v21, v12 + 1, 8);
    LODWORD(v12) = v20;
LABEL_19:
    v19[v12] = v6;
    LODWORD(v20) = v20 + 1;
    v18[0] = *(*(v4 + 9) + 56);
    v13 = mlir::Value::getDefiningOp(v18);
    if (v13)
    {
      v14 = v13;
      {
        v15 = v20;
        if (v20 >= HIDWORD(v20))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v19, v21, v20 + 1, 8);
          v15 = v20;
        }

        v19[v15] = v14;
        LODWORD(v20) = v20 + 1;
        v16 = *(v19[1] + 24);
        v18[0] = *(*v19 + 24);
        v18[1] = v16;
        mlir::Builder::getFusedLoc(a3 + 1, v18, 2, 0);
      }
    }

    else
    {
      v7 = *(a3 + 2);
      if (v7 && mlir::RewriterBase::Listener::classof(v7))
      {
        v8 = *(v4 + 3);
        goto LABEL_27;
      }
    }

    goto LABEL_28;
  }

  v7 = *(a3 + 2);
  if (v7 && mlir::RewriterBase::Listener::classof(v7))
  {
    v8 = *(v4 + 3);
    goto LABEL_27;
  }

LABEL_28:
  if (v19 != v21)
  {
    free(v19);
  }

  return 0;
}