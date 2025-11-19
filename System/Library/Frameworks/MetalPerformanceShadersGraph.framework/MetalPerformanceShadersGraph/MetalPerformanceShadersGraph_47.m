BOOL mlir::memref::CastOp::areCastCompatible(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = 0;
  v49[4] = *MEMORY[0x1E69E9840];
  if (a2 == 1 && a4 == 1)
  {
    v7 = mlir::TypeRange::dereference_iterator(a1, 0);
    v8 = mlir::TypeRange::dereference_iterator(a3, 0);
    if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }

    v43 = v9;
    if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }

    v42 = v10;
    v11 = *(*v7 + 136);
    if (v11 == &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
    {
      v12 = v7;
    }

    else
    {
      v12 = 0;
    }

    v41 = v12;
    if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
    {
      v13 = v8;
    }

    else
    {
      v13 = 0;
    }

    v40 = v13;
    if (v9)
    {
      if (v10)
      {
        RHS = mlir::AffineBinaryOpExpr::getRHS(&v43);
        if (RHS == mlir::AffineBinaryOpExpr::getRHS(&v42))
        {
          RawStringData = mlir::DenseElementsAttr::getRawStringData(&v43);
          if (RawStringData == mlir::DenseElementsAttr::getRawStringData(&v42))
          {
            goto LABEL_19;
          }

          v38 = 0;
          v39 = 0;
          v47 = v49;
          v48 = 0x400000000;
          v44 = v46;
          v45 = 0x400000000;
          if ((mlir::getStridesAndOffset(v43, &v47, &v39) & 1) != 0 && (mlir::getStridesAndOffset(v42, &v44, &v38) & 1) != 0 && v48 == v45 && (v39 == 0x8000000000000000 || v38 == 0x8000000000000000 || v39 == v38))
          {
            v29 = v47;
            if (v48)
            {
              v30 = 8 * v48;
              v31 = v44;
              v32 = v47;
              while (*v32 == 0x8000000000000000 || *v31 == 0x8000000000000000 || *v32 == *v31)
              {
                ++v32;
                ++v31;
                v30 -= 8;
                if (!v30)
                {
                  goto LABEL_67;
                }
              }

              v34 = 0;
            }

            else
            {
LABEL_67:
              v34 = 1;
            }

            if (v44 != v46)
            {
              free(v44);
              v29 = v47;
            }

            if (v29 != v49)
            {
              free(v29);
            }

            if (v34)
            {
LABEL_19:
              MemorySpace = mlir::MemRefType::getMemorySpace(&v43);
              if (MemorySpace == mlir::MemRefType::getMemorySpace(&v42))
              {
                mlir::ArrayAttr::getValue(&v43);
                v18 = v17;
                mlir::ArrayAttr::getValue(&v42);
                if (v18 == v19)
                {
                  mlir::ArrayAttr::getValue(&v43);
                  if (!v20)
                  {
                    return 1;
                  }

                  v21 = 0;
                  v22 = 8 * v20;
                  while (1)
                  {
                    v23 = *(mlir::ArrayAttr::getValue(&v43) + v21);
                    Value = mlir::ArrayAttr::getValue(&v42);
                    if (v23 != 0x8000000000000000)
                    {
                      v25 = *(Value + v21);
                      if (v25 != 0x8000000000000000 && v23 != v25)
                      {
                        break;
                      }
                    }

                    v21 += 8;
                    result = 1;
                    if (v22 == v21)
                    {
                      return result;
                    }
                  }
                }
              }
            }
          }

          else
          {
            if (v44 != v46)
            {
              free(v44);
            }

            if (v47 != v49)
            {
              free(v47);
            }
          }
        }

        return 0;
      }

      if (v13)
      {
        v27 = v11 == &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id;
      }

      else
      {
        v27 = 1;
      }

      if (v27)
      {
        return 0;
      }

      v28 = mlir::AffineBinaryOpExpr::getRHS(&v43);
      if (v42)
      {
        goto LABEL_39;
      }
    }

    else
    {
      if (!v12)
      {
        return 0;
      }

      if (v10)
      {
        if (v13)
        {
          return 0;
        }
      }

      else
      {
        if (v13)
        {
          v35 = v11 == &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id;
        }

        else
        {
          v35 = 1;
        }

        if (v35)
        {
          return 0;
        }
      }

      v28 = mlir::AffineMapAttr::getValue(&v41);
      if (v42)
      {
LABEL_39:
        if (v28 != mlir::AffineBinaryOpExpr::getRHS(&v42))
        {
          return 0;
        }

        goto LABEL_60;
      }
    }

    if (v28 != mlir::AffineMapAttr::getValue(&v40))
    {
      return 0;
    }

LABEL_60:
    if (v43)
    {
      LHS = mlir::MemRefType::getMemorySpace(&v43);
      if (v42)
      {
LABEL_62:
        v37 = mlir::MemRefType::getMemorySpace(&v42);
        return LHS == v37;
      }
    }

    else
    {
      LHS = mlir::AffineBinaryOpExpr::getLHS(&v41);
      if (v42)
      {
        goto LABEL_62;
      }
    }

    v37 = mlir::AffineBinaryOpExpr::getLHS(&v40);
    return LHS == v37;
  }

  return result;
}

void mlir::memref::CopyOp::getCanonicalizationPatterns(void *a1, uint64_t a2)
{
  v4 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v64, 1);
  mlir::Pattern::Pattern((v4 + 2), "memref.copy", 11, v64, a2, 0, 0);
  *v4 = &unk_1F5AFA5D8;
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

  v64 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::FoldCopyOfCast]";
  v65 = 87;
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
  mlir::Pattern::Pattern((v24 + 2), "memref.copy", 11, v64, a2, 0, 0);
  *v24 = &unk_1F5AFA678;
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

  v64 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::FoldEmptyCopy]";
  v65 = 86;
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
  mlir::Pattern::Pattern((v44 + 2), "memref.copy", 11, v64, a2, 0, 0);
  *v44 = &unk_1F5AFA6E8;
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

  v64 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::FoldSelfCopy]";
  v65 = 85;
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

uint64_t mlir::memref::DimOp::getAsmResultNames(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
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

  return a2(a3, NextResultAtOffset, "dim", 3);
}

void mlir::memref::DimOp::build(mlir::IndexType **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[2] = *MEMORY[0x1E69E9840];
  v15 = a4;
  v16 = a3;
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  __src = v22;
  v21 = 0x200000000;
  v6 = *a1;
  mlir::ValueRange::ValueRange(&v19, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(&v18, *(a2 + 224), *(a2 + 232));
  if (v21 != 1)
  {
    if (!v21)
    {
      if (HIDWORD(v21))
      {
        v9 = 0;
LABEL_6:
        bzero(__src + 8 * v9, 8 - 8 * v9);
        goto LABEL_7;
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v22, 1uLL, 8);
      v9 = v21;
      if (v21 != 1)
      {
        goto LABEL_6;
      }
    }

LABEL_7:
    LODWORD(v21) = 1;
  }

  v17 = v6;
  IndexType = mlir::Builder::getIndexType(&v17, v8);
  v11 = __src;
  *__src = IndexType;
  v12 = v21;
  v13 = *(a2 + 72);
  v14 = v13 + v21;
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
  if (__src != v22)
  {
    free(__src);
  }
}

BOOL mlir::memref::DimOp::getSpeculatability(mlir::memref::DimOp *this)
{
  ConstantIntValue = mlir::getConstantIntValue(*(*(*this + 72) + 56) | 4);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v4 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v4 = 0;
  }

  v8 = v4;
  if (!v4)
  {
    return 0;
  }

  v5 = ConstantIntValue;
  mlir::ArrayAttr::getValue(&v8);
  return v6 > v5;
}

void mlir::memref::SubViewOp::getDroppedDims(mlir::memref::SubViewOp *this@<X0>, void *a2@<X8>)
{
  v17[4] = *MEMORY[0x1E69E9840];
  v4 = *(*(*(*this + 72) + 24) + 8);
  if (*(*this + 36))
  {
    v5 = *this - 16;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0) + 8);
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::memref::ReinterpretCastOp>::getMixedSizes(this, &v15);
  computeMemRefRankReductionMask(&v13, v4 & 0xFFFFFFFFFFFFFFF8, v6 & 0xFFFFFFFFFFFFFFF8, v15, v16);
  if (v15 != v17)
  {
    free(v15);
  }

  v7 = v13;
  if (v13)
  {
    *a2 = v13;
    return;
  }

  v8 = operator new(0x48uLL);
  v9 = v8;
  v10 = v8 + 2;
  *v8 = v8 + 2;
  v8[1] = 0x600000000;
  if (v8 != v7)
  {
    v11 = *(v7 + 8);
    if (v11)
    {
      if (v11 < 7)
      {
        v12 = *(v7 + 8);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v8, (v8 + 2), *(v7 + 8), 8);
        v12 = *(v7 + 8);
        if (!v12)
        {
LABEL_15:
          *(v9 + 2) = v11;
          goto LABEL_16;
        }

        v10 = *v9;
      }

      memcpy(v10, *v7, 8 * v12);
      goto LABEL_15;
    }
  }

LABEL_16:
  *(v9 + 16) = *(v7 + 64);
  *a2 = v9;
  if (v7 && (v14 & 1) != 0)
  {
    if (*v7 != v7 + 16)
    {
      free(*v7);
    }

    operator delete(v7);
  }
}

void computeMemRefRankReductionMask(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v143[6] = *MEMORY[0x1E69E9840];
  v136 = a3;
  v137 = a2;
  mlir::ArrayAttr::getValue(&v137);
  v9 = v8;
  if (v8 <= 0x39)
  {
    v10 = (v8 << 58) | 1;
    goto LABEL_9;
  }

  v11 = operator new(0x48uLL);
  v10 = v11;
  v12 = v9 + 63;
  v13 = (v9 + 63) >> 6;
  *v11 = &v11[2];
  v11[1].i32[1] = 6;
  if ((v9 + 63) >= 0x1C0)
  {
    v11[1].i32[0] = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v11, &v11[2], v12 >> 6, 8);
    v14 = *v10;
    v15 = 8 * v13;
LABEL_7:
    bzero(v14, v15);
    goto LABEL_8;
  }

  if (v12 >= 0x40)
  {
    v14 = v11 + 2;
    v15 = 8 * v13;
    goto LABEL_7;
  }

LABEL_8:
  *(v10 + 8) = v13;
  *(v10 + 64) = v9;
LABEL_9:
  mlir::ArrayAttr::getValue(&v137);
  v17 = v16;
  mlir::ArrayAttr::getValue(&v136);
  if (v17 == v18)
  {
LABEL_32:
    *a1 = v10;
    a1[8] = 1;
    return;
  }

  if (a5)
  {
    v19 = 0;
    v20 = 8 * a5;
    do
    {
      v21 = *(a4 + 8 * v19);
      if ((v21 & 4) == 0)
      {
        v22 = (v21 & 0xFFFFFFFFFFFFFFF8);
        if (v22)
        {
          v141 = v22;
          if (mlir::IntegerAttr::getInt(&v141) == 1)
          {
            if (v10)
            {
              v10 = v10 & 0xFC00000000000001 | (2 * (((1 << v19) | (v10 >> 1)) & ~(-1 << (v10 >> 58))));
            }

            else
            {
              *(*v10 + 8 * (v19 >> 6)) |= 1 << v19;
            }
          }
        }
      }

      ++v19;
      v20 -= 8;
    }

    while (v20);
  }

  if (v10)
  {
    v28 = vcnt_s8(((v10 >> 1) & ~(-1 << (v10 >> 58))));
    v28.i16[0] = vaddlv_u8(v28);
    v29 = v28.u32[0];
    goto LABEL_31;
  }

  v23 = *(v10 + 8);
  if (!v23)
  {
    v29 = 0;
    goto LABEL_31;
  }

  v24 = *v10;
  v25 = (v23 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v25 >= 7)
  {
    v30 = v25 + 1;
    v31 = (v25 + 1) & 0x3FFFFFFFFFFFFFF8;
    v27 = &v24[v31];
    v32 = &v24[4];
    v33 = 0uLL;
    v34 = v31;
    v35 = 0uLL;
    do
    {
      v36 = v32[-2];
      v37 = v32[-1];
      v38 = *v32;
      v39 = v32[1];
      v32 += 4;
      v33 = vaddq_s32(v33, vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(v36)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(v37))))));
      v35 = vaddq_s32(v35, vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(v38)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(v39))))));
      v34 -= 8;
    }

    while (v34);
    v26 = vaddvq_s32(vaddq_s32(v35, v33));
    if (v30 == v31)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v26 = 0;
    v27 = *v10;
  }

  v40 = &v24[v23];
  do
  {
    v41 = *v27++;
    v42 = vcnt_s8(v41);
    v42.i16[0] = vaddlv_u8(v42);
    v26 += v42.i32[0];
  }

  while (v27 != v40);
LABEL_30:
  v29 = v26;
LABEL_31:
  mlir::ArrayAttr::getValue(&v136);
  v44 = v43 + v29;
  mlir::ArrayAttr::getValue(&v137);
  if (v44 == v45)
  {
    goto LABEL_32;
  }

  v141 = v143;
  v142 = 0x600000000;
  v138 = v140;
  v139 = 0x600000000;
  v134 = 0;
  v135 = 0;
  if (mlir::getStridesAndOffset(v137, &v141, &v135) & 1) != 0 && (mlir::getStridesAndOffset(v136, &v138, &v134))
  {
    v127 = a1;
    v46 = v141;
    v132 = 0;
    v133 = 0;
    v131 = &v132;
    if (v142)
    {
      v47 = &v141[v142];
      do
      {
        v49 = *v46;
        v50 = v132;
        v51 = &v132;
        v48 = &v132;
        if (v132)
        {
          while (1)
          {
            while (1)
            {
              v48 = v50;
              v52 = v50[4];
              if (v49 >= v52)
              {
                break;
              }

              v50 = *v48;
              v51 = v48;
              if (!*v48)
              {
                goto LABEL_47;
              }
            }

            if (v52 >= v49)
            {
              break;
            }

            v50 = v48[1];
            if (!v50)
            {
              v51 = v48 + 1;
              goto LABEL_47;
            }
          }
        }

        else
        {
LABEL_47:
          v53 = operator new(0x30uLL);
          v53[4] = v49;
          *(v53 + 10) = 0;
          *v53 = 0;
          v53[1] = 0;
          v53[2] = v48;
          *v51 = v53;
          if (*v131)
          {
            v131 = *v131;
          }

          std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(v132, v53);
          ++v133;
          v48 = v53;
        }

        ++*(v48 + 10);
        ++v46;
      }

      while (v46 != v47);
    }

    v55 = v138;
    v129 = 0;
    v130 = 0;
    v128 = &v129;
    if (v139)
    {
      v56 = (v138 + 8 * v139);
      do
      {
        v58 = *v55;
        v59 = v129;
        v60 = &v129;
        v57 = &v129;
        if (v129)
        {
          while (1)
          {
            while (1)
            {
              v57 = v59;
              v61 = v59[4];
              if (v58 >= v61)
              {
                break;
              }

              v59 = *v57;
              v60 = v57;
              if (!*v57)
              {
                goto LABEL_69;
              }
            }

            if (v61 >= v58)
            {
              break;
            }

            v59 = v57[1];
            if (!v59)
            {
              v60 = v57 + 1;
              goto LABEL_69;
            }
          }
        }

        else
        {
LABEL_69:
          v62 = operator new(0x30uLL);
          v62[4] = v58;
          *(v62 + 10) = 0;
          *v62 = 0;
          v62[1] = 0;
          v62[2] = v57;
          *v60 = v62;
          if (*v128)
          {
            v128 = *v128;
          }

          std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(v129, v62);
          ++v130;
          v57 = v62;
        }

        ++*(v57 + 10);
        ++v55;
      }

      while (v55 != v56);
    }

    if (v10)
    {
      v63 = v10 >> 58;
      if (!(v10 >> 58))
      {
        goto LABEL_159;
      }
    }

    else
    {
      v63 = *(v10 + 64);
      if (!*(v10 + 64))
      {
LABEL_159:
        if (v10)
        {
          v109 = vcnt_s8(((v10 >> 1) & ~(-1 << (v10 >> 58))));
          v109.i16[0] = vaddlv_u8(v109);
          v110 = v109.u32[0];
          v104 = v127;
          goto LABEL_171;
        }

        v103 = *(v10 + 8);
        v104 = v127;
        if (!v103)
        {
          v110 = 0;
          goto LABEL_171;
        }

        v105 = *v10;
        v106 = (v103 - 1) & 0x1FFFFFFFFFFFFFFFLL;
        if (v106 >= 7)
        {
          v111 = v106 + 1;
          v112 = (v106 + 1) & 0x3FFFFFFFFFFFFFF8;
          v108 = &v105[v112];
          v113 = &v105[4];
          v114 = 0uLL;
          v115 = v112;
          v116 = 0uLL;
          do
          {
            v117 = v113[-2];
            v118 = v113[-1];
            v119 = *v113;
            v120 = v113[1];
            v113 += 4;
            v114 = vaddq_s32(v114, vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(v117)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(v118))))));
            v116 = vaddq_s32(v116, vuzp1q_s32(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(v119)))), vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(v120))))));
            v115 -= 8;
          }

          while (v115);
          v107 = vaddvq_s32(vaddq_s32(v116, v114));
          if (v111 == v112)
          {
            goto LABEL_170;
          }
        }

        else
        {
          v107 = 0;
          v108 = *v10;
        }

        v121 = &v105[v103];
        do
        {
          v122 = *v108++;
          v123 = vcnt_s8(v122);
          v123.i16[0] = vaddlv_u8(v123);
          v107 += v123.i32[0];
        }

        while (v108 != v121);
LABEL_170:
        v110 = v107;
LABEL_171:
        mlir::ArrayAttr::getValue(&v136);
        v125 = v124 + v110;
        mlir::ArrayAttr::getValue(&v137);
        if (v125 == v126)
        {
          *v104 = v10;
          v10 = 1;
          v104[8] = 1;
        }

        else
        {
          *v104 = 0;
          v104[8] = 0;
        }

LABEL_174:
        std::__tree<unsigned long long>::destroy(&v128, v129);
        std::__tree<unsigned long long>::destroy(&v131, v132);
        v54 = v138;
        if (v138 == v140)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      }
    }

    v64 = 0;
    while (1)
    {
      if (v10)
      {
        if (((v10 >> 1) & ~(-1 << (v10 >> 58)) & (1 << v64)) == 0)
        {
          goto LABEL_77;
        }
      }

      else if ((*(*v10 + 8 * (v64 >> 6)) & (1 << v64)) == 0)
      {
        goto LABEL_77;
      }

      v65 = v141[v64];
      v66 = v132;
      v67 = &v132;
      v68 = &v132;
      if (v132)
      {
        while (1)
        {
          while (1)
          {
            v68 = v66;
            v69 = v66[4];
            if (v65 >= v69)
            {
              break;
            }

            v66 = *v68;
            v67 = v68;
            if (!*v68)
            {
              goto LABEL_89;
            }
          }

          if (v69 >= v65)
          {
            break;
          }

          v66 = v68[1];
          if (!v66)
          {
            v67 = v68 + 1;
            goto LABEL_89;
          }
        }
      }

      else
      {
LABEL_89:
        v70 = operator new(0x30uLL);
        v70[4] = v65;
        *(v70 + 10) = 0;
        *v70 = 0;
        v70[1] = 0;
        v70[2] = v68;
        *v67 = v70;
        if (*v131)
        {
          v131 = *v131;
        }

        std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(v132, v70);
        ++v133;
        v68 = v70;
      }

      v71 = *(v68 + 10);
      v72 = v129;
      v73 = &v129;
      v74 = &v129;
      if (v129)
      {
        while (1)
        {
          while (1)
          {
            v74 = v72;
            v75 = v72[4];
            if (v65 >= v75)
            {
              break;
            }

            v72 = *v74;
            v73 = v74;
            if (!*v74)
            {
              goto LABEL_99;
            }
          }

          if (v75 >= v65)
          {
            break;
          }

          v72 = v74[1];
          if (!v72)
          {
            v73 = v74 + 1;
            goto LABEL_99;
          }
        }
      }

      else
      {
LABEL_99:
        v76 = operator new(0x30uLL);
        v76[4] = v65;
        *(v76 + 10) = 0;
        *v76 = 0;
        v76[1] = 0;
        v76[2] = v74;
        *v73 = v76;
        if (*v128)
        {
          v128 = *v128;
        }

        std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(v129, v76);
        ++v130;
        v74 = v76;
      }

      v77 = *(v74 + 10);
      v78 = v132;
      v79 = &v132;
      if (v71 <= v77)
      {
        v83 = &v132;
        if (v132)
        {
          while (1)
          {
            while (1)
            {
              v83 = v78;
              v84 = v78[4];
              if (v65 >= v84)
              {
                break;
              }

              v78 = *v83;
              v79 = v83;
              if (!*v83)
              {
                goto LABEL_121;
              }
            }

            if (v84 >= v65)
            {
              break;
            }

            v78 = v83[1];
            if (!v78)
            {
              v79 = v83 + 1;
              goto LABEL_121;
            }
          }
        }

        else
        {
LABEL_121:
          v85 = operator new(0x30uLL);
          v85[4] = v65;
          *(v85 + 10) = 0;
          *v85 = 0;
          v85[1] = 0;
          v85[2] = v83;
          *v79 = v85;
          if (*v131)
          {
            v131 = *v131;
          }

          std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(v132, v85);
          ++v133;
          v83 = v85;
        }

        v86 = *(v83 + 10);
        v87 = v129;
        v88 = &v129;
        v89 = &v129;
        if (v129)
        {
          while (1)
          {
            while (1)
            {
              v89 = v87;
              v90 = v87[4];
              if (v65 >= v90)
              {
                break;
              }

              v87 = *v89;
              v88 = v89;
              if (!*v89)
              {
                goto LABEL_131;
              }
            }

            if (v90 >= v65)
            {
              break;
            }

            v87 = v89[1];
            if (!v87)
            {
              v88 = v89 + 1;
              goto LABEL_131;
            }
          }
        }

        else
        {
LABEL_131:
          v91 = operator new(0x30uLL);
          v91[4] = v65;
          *(v91 + 10) = 0;
          *v91 = 0;
          v91[1] = 0;
          v91[2] = v89;
          *v88 = v91;
          if (*v128)
          {
            v128 = *v128;
          }

          std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(v129, v91);
          ++v130;
          v89 = v91;
        }

        if (v86 == *(v89 + 10))
        {
          if (v10)
          {
            v10 = ((2 * ~((1 << v64) | (-1 << (v10 >> 58)))) | 0xFC00000000000000) & v10 | 1;
          }

          else
          {
            *(*v10 + 8 * (v64 >> 6)) &= ~(1 << v64);
          }
        }

        else
        {
          v92 = v132;
          v93 = &v132;
          v94 = &v132;
          if (v132)
          {
            while (1)
            {
              while (1)
              {
                v94 = v92;
                v95 = v92[4];
                if (v65 >= v95)
                {
                  break;
                }

                v92 = *v94;
                v93 = v94;
                if (!*v94)
                {
                  goto LABEL_144;
                }
              }

              if (v95 >= v65)
              {
                break;
              }

              v92 = v94[1];
              if (!v92)
              {
                v93 = v94 + 1;
                goto LABEL_144;
              }
            }
          }

          else
          {
LABEL_144:
            v96 = operator new(0x30uLL);
            v96[4] = v65;
            *(v96 + 10) = 0;
            *v96 = 0;
            v96[1] = 0;
            v96[2] = v94;
            *v93 = v96;
            if (*v131)
            {
              v131 = *v131;
            }

            std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(v132, v96);
            ++v133;
            v94 = v96;
          }

          v97 = *(v94 + 10);
          v98 = v129;
          v99 = &v129;
          v100 = &v129;
          if (v129)
          {
            while (1)
            {
              while (1)
              {
                v100 = v98;
                v101 = v98[4];
                if (v65 >= v101)
                {
                  break;
                }

                v98 = *v100;
                v99 = v100;
                if (!*v100)
                {
                  goto LABEL_154;
                }
              }

              if (v101 >= v65)
              {
                break;
              }

              v98 = v100[1];
              if (!v98)
              {
                v99 = v100 + 1;
                goto LABEL_154;
              }
            }
          }

          else
          {
LABEL_154:
            v102 = operator new(0x30uLL);
            v102[4] = v65;
            *(v102 + 10) = 0;
            *v102 = 0;
            v102[1] = 0;
            v102[2] = v100;
            *v99 = v102;
            if (*v128)
            {
              v128 = *v128;
            }

            std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(v129, v102);
            ++v130;
            v100 = v102;
          }

          if (v97 < *(v100 + 10))
          {
            *v127 = 0;
            v127[8] = 0;
            goto LABEL_174;
          }
        }
      }

      else
      {
        v80 = &v132;
        if (v132)
        {
          while (1)
          {
            while (1)
            {
              v80 = v78;
              v81 = v78[4];
              if (v65 >= v81)
              {
                break;
              }

              v78 = *v80;
              v79 = v80;
              if (!*v80)
              {
                goto LABEL_110;
              }
            }

            if (v81 >= v65)
            {
              break;
            }

            v78 = v80[1];
            if (!v78)
            {
              v79 = v80 + 1;
              goto LABEL_110;
            }
          }
        }

        else
        {
LABEL_110:
          v82 = operator new(0x30uLL);
          v82[4] = v65;
          *(v82 + 10) = 0;
          *v82 = 0;
          v82[1] = 0;
          v82[2] = v80;
          *v79 = v82;
          if (*v131)
          {
            v131 = *v131;
          }

          std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(v132, v82);
          ++v133;
          v80 = v82;
        }

        --*(v80 + 10);
      }

LABEL_77:
      if (++v64 == v63)
      {
        goto LABEL_159;
      }
    }
  }

  *a1 = 0;
  a1[8] = 0;
  v54 = v138;
  if (v138 != v140)
  {
LABEL_50:
    free(v54);
  }

LABEL_51:
  if (v141 != v143)
  {
    free(v141);
  }

  if ((v10 & 1) == 0 && v10)
  {
    if (*v10 != v10 + 16)
    {
      free(*v10);
    }

    operator delete(v10);
  }
}

void *mlir::memref::DimOp::fold(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 + 40) + 8);
  if (!v2)
  {
    return 0;
  }

  if (*(*v2 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v2 = 0;
  }

  v31 = v2;
  if (!v2)
  {
    return 0;
  }

  v3 = *(*(*(*a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v3 = 0;
  }

  v30 = v3;
  if (!v3)
  {
    return 0;
  }

  Int = mlir::IntegerAttr::getInt(&v31);
  if (Int < 0)
  {
    return 0;
  }

  v6 = Int;
  mlir::ArrayAttr::getValue(&v30);
  if (v6 >= v7)
  {
    return 0;
  }

  v8 = mlir::IntegerAttr::getInt(&v31);
  if (*(mlir::ArrayAttr::getValue(&v30) + 8 * v8) != 0x8000000000000000)
  {
    __p = mlir::Attribute::getContext((*a1 + 24));
    Value = mlir::ArrayAttr::getValue(&v30);
    v11 = mlir::IntegerAttr::getInt(&v31);
    return (mlir::Builder::getIndexAttr(&__p, *(Value + 8 * v11)) & 0xFFFFFFFFFFFFFFFBLL);
  }

  mlir::IntegerAttr::getValue(&v31, &__p);
  if (v29 > 0x40)
  {
    v9 = *__p;
    operator delete[](__p);
  }

  else
  {
    v9 = __p;
  }

  __p = *(*(*a1 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&__p);
  if (!DefiningOp)
  {
    goto LABEL_23;
  }

  v14 = *(*(DefiningOp + 48) + 16);
  if (v14 == &mlir::detail::TypeIDResolver<mlir::memref::AllocOp,void>::id || v14 == &mlir::detail::TypeIDResolver<mlir::memref::AllocaOp,void>::id)
  {
    mlir::memref::DimOp::fold();
    return __p;
  }

  if (v14 == &mlir::detail::TypeIDResolver<mlir::memref::ViewOp,void>::id)
  {
    mlir::memref::DimOp::fold();
    return __p;
  }

  v15 = v14 == &mlir::detail::TypeIDResolver<mlir::memref::SubViewOp,void>::id;
  v16 = v14 == &mlir::detail::TypeIDResolver<mlir::memref::SubViewOp,void>::id ? DefiningOp : 0;
  __p = v16;
  if (!v15)
  {
LABEL_23:
    __p = llvm::dyn_cast_or_null<mlir::OffsetSizeAndStrideOpInterface,mlir::Operation>(DefiningOp);
    v29 = v17;
    if (__p)
    {
      return (mlir::OffsetSizeAndStrideOpInterface::getDynamicSize(&__p, v9) | 4);
    }

    mlir::memref::foldMemRefCast();
    if (v24)
    {
      if (*(*a1 + 36))
      {
        v25 = *a1 - 16;
      }

      else
      {
        v25 = 0;
      }

      return (mlir::detail::OpResultImpl::getNextResultAtOffset(v25, 0) | 4);
    }

    return 0;
  }

  mlir::memref::SubViewOp::getDroppedDims(&__p, &v27);
  v26 = *(*(*(__p + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&v26);
  v19 = v18;
  if (v18)
  {
    if ((v27 & 1) == 0)
    {
      v20 = 0;
      i = 0;
      while (1)
      {
        if (((*(*v27 + 8 * (i >> 6)) >> i) & 1) == 0)
        {
          if (v20 == v9)
          {
            goto LABEL_38;
          }

          ++v20;
        }

        if (v19 == ++i)
        {
          goto LABEL_37;
        }
      }
    }

    v22 = 0;
    for (i = 0; v19 != i; ++i)
    {
      if (((v27 >> 1) & ~(-1 << (v27 >> 58)) & (1 << i)) == 0)
      {
        if (v22 == v9)
        {
          goto LABEL_38;
        }

        ++v22;
      }
    }
  }

LABEL_37:
  LODWORD(i) = 0;
LABEL_38:
  v23 = mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::memref::SubViewOp>::getDynamicSize(&__p, i) | 4;
  llvm::SmallBitVector::~SmallBitVector(&v27);
  return v23;
}

uint64_t mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::memref::SubViewOp>::getDynamicSize(uint64_t a1, unsigned int a2)
{
  v7 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 72);
  v4 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v7);
  return *(*(*a1 + 72) + 32 * (mlir::detail::getNumDynamicEntriesUpToIdx(v4, v5, a2) + *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 92) + 1) + 24);
}

void llvm::SmallBitVector::~SmallBitVector(void ***this)
{
  v1 = *this;
  if ((*this & 1) == 0 && v1)
  {
    if (*v1 != v1 + 2)
    {
      free(*v1);
    }

    operator delete(v1);
  }
}

uint64_t llvm::dyn_cast_or_null<mlir::OffsetSizeAndStrideOpInterface,mlir::Operation>(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (!mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    return 0;
  }

  mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
  return a1;
}

void mlir::memref::DimOp::getCanonicalizationPatterns(void *a1, uint64_t a2)
{
  v4 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v24, 1);
  mlir::Pattern::Pattern((v4 + 2), "memref.dim", 10, v24, a2, 0, 0);
  *v4 = &unk_1F5AFA758;
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

  v24 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::DimOfMemRefReshape]";
  v25 = 91;
  v9 = llvm::StringRef::find(&v24, "DesiredTypeName = ", 0x12uLL, 0);
  if (v25 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v25;
  }

  v11 = &v24[v10];
  v12 = v25 - v10;
  if (v25 - v10 >= 0x12)
  {
    v13 = 18;
  }

  else
  {
    v13 = v25 - v10;
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

uint64_t mlir::memref::DmaStartOp::print(mlir::memref::DmaStartOp *this, mlir::OpAsmPrinter *a2)
{
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

  (*(*a2 + 160))(a2, *(*(*this + 72) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 91);
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 91;
  }

  if ((*(*this + 44) & 0x800000) != 0)
  {
    v8 = *(*this + 72);
  }

  else
  {
    v8 = 0;
  }

  AttrDictionary = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&AttrDictionary);
  v10 = v9;
  v11 = (*(*a2 + 16))(a2);
  if (v10)
  {
    v12 = v11;
    (*(*a2 + 160))(a2, *(v8 + 56));
    v13 = v10 - 1;
    if (v13)
    {
      v67 = (v8 + 88);
      do
      {
        v69 = v12[4];
        if (v12[3] - v69 > 1uLL)
        {
          *v69 = 8236;
          v12[4] += 2;
        }

        else
        {
          llvm::raw_ostream::write(v12, ", ", 2uLL);
        }

        v68 = *v67;
        v67 += 4;
        (*(*a2 + 160))(a2, v68);
        --v13;
      }

      while (v13);
    }
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = v14[4];
  if ((v14[3] - v15) > 2)
  {
    *(v15 + 2) = 32;
    *v15 = 11357;
    v14[4] += 3;
  }

  else
  {
    llvm::raw_ostream::write(v14, "], ", 3uLL);
  }

  AttrDictionary = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 160))(a2, *(*(*this + 72) + 32 * (v16 + 1) + 24));
  v17 = (*(*a2 + 16))(a2);
  v18 = *(v17 + 4);
  if (v18 >= *(v17 + 3))
  {
    llvm::raw_ostream::write(v17, 91);
  }

  else
  {
    *(v17 + 4) = v18 + 1;
    *v18 = 91;
  }

  if ((*(*this + 44) & 0x800000) != 0)
  {
    v19 = *(*this + 72);
  }

  else
  {
    v19 = 0;
  }

  AttrDictionary = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&AttrDictionary);
  v21 = v20;
  AttrDictionary = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&AttrDictionary);
  v23 = v22;
  AttrDictionary = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = *(*(*(*this + 72) + 32 * (v24 + 1) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&AttrDictionary);
  v26 = v25;
  v27 = v25 + v23 - v21;
  v28 = (*(*a2 + 16))(a2);
  if (v27)
  {
    v29 = v28;
    v30 = v19 + 32 * v21;
    (*(*a2 + 160))(a2, *(v30 + 88));
    if (v27 != 1)
    {
      v70 = ~v21 + v23 + v26;
      v71 = (v30 + 120);
      do
      {
        v73 = v29[4];
        if (v29[3] - v73 > 1uLL)
        {
          *v73 = 8236;
          v29[4] += 2;
        }

        else
        {
          llvm::raw_ostream::write(v29, ", ", 2uLL);
        }

        v72 = *v71;
        v71 += 4;
        (*(*a2 + 160))(a2, v72);
        --v70;
      }

      while (v70);
    }
  }

  v31 = (*(*a2 + 16))(a2);
  v32 = v31[4];
  if ((v31[3] - v32) > 2)
  {
    *(v32 + 2) = 32;
    *v32 = 11357;
    v31[4] += 3;
  }

  else
  {
    llvm::raw_ostream::write(v31, "], ", 3uLL);
  }

  AttrDictionary = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&AttrDictionary);
  v34 = v33;
  AttrDictionary = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = *(*(*(*this + 72) + 32 * (v35 + 1) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 160))(a2, *(*(*this + 72) + 32 * (v34 + v36 + 2) + 24));
  v37 = (*(*a2 + 16))(a2);
  v38 = v37[4];
  if (v37[3] - v38 > 1uLL)
  {
    *v38 = 8236;
    v37[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v37, ", ", 2uLL);
  }

  AttrDictionary = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&AttrDictionary);
  v40 = v39;
  AttrDictionary = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = *(*(*(*this + 72) + 32 * (v41 + 1) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 160))(a2, *(*(*this + 72) + 32 * (v40 + v42 + 3) + 24));
  v43 = (*(*a2 + 16))(a2);
  v44 = *(v43 + 4);
  if (v44 >= *(v43 + 3))
  {
    llvm::raw_ostream::write(v43, 91);
  }

  else
  {
    *(v43 + 4) = v44 + 1;
    *v44 = 91;
  }

  TagIndices = mlir::memref::DmaStartOp::getTagIndices(this);
  v47 = v46;
  v48 = (*(*a2 + 16))(a2);
  if (v47)
  {
    v49 = v48;
    (*(*a2 + 160))(a2, *(TagIndices + 24));
    v50 = v47 - 1;
    if (v50)
    {
      v74 = (TagIndices + 56);
      do
      {
        v76 = v49[4];
        if (v49[3] - v76 > 1uLL)
        {
          *v76 = 8236;
          v49[4] += 2;
        }

        else
        {
          llvm::raw_ostream::write(v49, ", ", 2uLL);
        }

        v75 = *v74;
        v74 += 4;
        (*(*a2 + 160))(a2, v75);
        --v50;
      }

      while (v50);
    }
  }

  v51 = (*(*a2 + 16))(a2);
  v52 = *(v51 + 4);
  if (v52 >= *(v51 + 3))
  {
    llvm::raw_ostream::write(v51, 93);
    if (!mlir::memref::DmaStartOp::isStrided(this))
    {
      goto LABEL_38;
    }
  }

  else
  {
    *(v51 + 4) = v52 + 1;
    *v52 = 93;
    if (!mlir::memref::DmaStartOp::isStrided(this))
    {
      goto LABEL_38;
    }
  }

  v77 = (*(*a2 + 16))(a2);
  v78 = v77[4];
  if (v77[3] - v78 > 1uLL)
  {
    *v78 = 8236;
    v77[4] += 2;
    if (!mlir::memref::DmaStartOp::isStrided(this))
    {
      goto LABEL_65;
    }
  }

  else
  {
    llvm::raw_ostream::write(v77, ", ", 2uLL);
    if (!mlir::memref::DmaStartOp::isStrided(this))
    {
LABEL_65:
      v79 = 0;
      goto LABEL_70;
    }
  }

  v80 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v81 = (*(v80 + 68) - 2);
  }

  else
  {
    v81 = 4294967294;
  }

  v79 = *(*(v80 + 72) + 32 * v81 + 24);
LABEL_70:
  (*(*a2 + 160))(a2, v79);
  v82 = (*(*a2 + 16))(a2);
  v83 = v82[4];
  if (v82[3] - v83 > 1uLL)
  {
    *v83 = 8236;
    v82[4] += 2;
    if (!mlir::memref::DmaStartOp::isStrided(this))
    {
      goto LABEL_72;
    }

LABEL_74:
    v85 = *this;
    if ((*(*this + 46) & 0x80) != 0)
    {
      v86 = (*(v85 + 68) - 1);
    }

    else
    {
      v86 = 0xFFFFFFFFLL;
    }

    v84 = *(*(v85 + 72) + 32 * v86 + 24);
    goto LABEL_77;
  }

  llvm::raw_ostream::write(v82, ", ", 2uLL);
  if (mlir::memref::DmaStartOp::isStrided(this))
  {
    goto LABEL_74;
  }

LABEL_72:
  v84 = 0;
LABEL_77:
  (*(*a2 + 160))(a2, v84);
LABEL_38:
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v54, 0, 0);
  v55 = (*(*a2 + 16))(a2);
  v56 = v55[4];
  if ((v55[3] - v56) > 2)
  {
    *(v56 + 2) = 32;
    *v56 = 14880;
    v55[4] += 3;
  }

  else
  {
    llvm::raw_ostream::write(v55, " : ", 3uLL);
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v57 = (*(*a2 + 16))(a2);
  v58 = v57[4];
  if (v57[3] - v58 > 1uLL)
  {
    *v58 = 8236;
    v57[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v57, ", ", 2uLL);
  }

  AttrDictionary = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&AttrDictionary);
  (*(*a2 + 32))(a2, *(*(*(*this + 72) + 32 * (v59 + 1) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v60 = (*(*a2 + 16))(a2);
  v61 = v60[4];
  if (v60[3] - v61 > 1uLL)
  {
    *v61 = 8236;
    v60[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v60, ", ", 2uLL);
  }

  AttrDictionary = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&AttrDictionary);
  v63 = v62;
  AttrDictionary = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = *(*(*(*this + 72) + 32 * (v64 + 1) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&AttrDictionary);
  return (*(*a2 + 32))(a2, *(*(*(*this + 72) + 32 * (v63 + v65 + 3) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t mlir::memref::DmaStartOp::getDstIndices(mlir::memref::DmaStartOp *this)
{
  if ((*(*this + 44) & 0x800000) != 0)
  {
    v2 = *(*this + 72);
  }

  else
  {
    v2 = 0;
  }

  v7 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&v7);
  v4 = v3;
  v7 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&v7);
  v7 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&v7);
  v7 = *(*(*(*this + 72) + 32 * (v5 + 1) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&v7);
  return v2 + 32 * v4 + 64;
}

uint64_t mlir::memref::DmaStartOp::getNumElements(mlir::memref::DmaStartOp *this)
{
  v7 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&v7);
  v3 = v2;
  v7 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&v7);
  v7 = *(*(*(*this + 72) + 32 * (v4 + 1) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&v7);
  return *(*(*this + 72) + 32 * (v3 + v5 + 2) + 24);
}

uint64_t mlir::memref::DmaStartOp::getTagMemRef(mlir::memref::DmaStartOp *this)
{
  v7 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&v7);
  v3 = v2;
  v7 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&v7);
  v7 = *(*(*(*this + 72) + 32 * (v4 + 1) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&v7);
  return *(*(*this + 72) + 32 * (v3 + v5 + 3) + 24);
}

uint64_t mlir::memref::DmaStartOp::getTagIndices(mlir::memref::DmaStartOp *this)
{
  v13 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&v13);
  v3 = v2;
  v13 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&v13);
  v13 = *(*(*(*this + 72) + 32 * (v4 + 1) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&v13);
  if ((*(*this + 44) & 0x800000) != 0)
  {
    v6 = *(*this + 72);
  }

  else
  {
    v6 = 0;
  }

  v7 = (v3 + v5 + 4);
  v13 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&v13);
  v9 = v8;
  v13 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&v13);
  v13 = *(*(*(*this + 72) + 32 * (v10 + 1) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&v13);
  v13 = *(*(*(*this + 72) + 32 * (v9 + v11 + 3) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&v13);
  return v6 + 32 * v7;
}

BOOL mlir::memref::DmaStartOp::parse(uint64_t a1, uint64_t a2)
{
  v42[16] = *MEMORY[0x1E69E9840];
  memset(v26, 0, 24);
  v40 = v42;
  v41 = 0x400000000;
  memset(v25, 0, 24);
  v37 = v39;
  v38 = 0x400000000;
  memset(v24, 0, 24);
  memset(v23, 0, 24);
  v34 = v36;
  v35 = 0x400000000;
  v31 = v33;
  v32 = 0x200000000;
  v28 = v30;
  v29 = 0x300000000;
  v4 = (*(*a1 + 32))(a1);
  IndexType = mlir::Builder::getIndexType(v4, v5);
  if (((*(*a1 + 704))(a1, v26, 1) & 1) == 0 || ((*(*a1 + 720))(a1, &v40, 2, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 120))(a1) & 1) == 0 || ((*(*a1 + 704))(a1, v25, 1) & 1) == 0 || ((*(*a1 + 720))(a1, &v37, 2, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 120))(a1) & 1) == 0 || ((*(*a1 + 704))(a1, v24, 1) & 1) == 0 || ((*(*a1 + 120))(a1) & 1) == 0 || ((*(*a1 + 704))(a1, v23, 1) & 1) == 0 || ((*(*a1 + 720))(a1, &v34, 2, 1, 0xFFFFFFFFLL) & 1) == 0 || (mlir::OpAsmParser::parseTrailingOperandList(a1, &v31, 0) & 1) == 0)
  {
    goto LABEL_37;
  }

  v7 = v32;
  if ((v32 | 2) != 2)
  {
    v17 = (*(*a1 + 16))(a1);
    v18 = "expected two stride related operands";
LABEL_51:
    v21 = v18;
    v22 = 259;
    (*(*a1 + 24))(v27, a1, v17, &v21);
    v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v27);
    goto LABEL_38;
  }

  if (((*(*a1 + 584))(a1, &v28) & 1) == 0)
  {
    goto LABEL_37;
  }

  if (v29 != 3)
  {
    v17 = (*(*a1 + 16))(a1);
    v18 = "fewer/more types expected";
    goto LABEL_51;
  }

  v19 = v7;
  if (((*(*a1 + 728))(a1, v26, *v28, a2 + 16) & 1) == 0)
  {
    goto LABEL_37;
  }

  if (v41)
  {
    v8 = v40;
    v9 = 32 * v41;
    while (((*(*a1 + 728))(a1, v8, IndexType, a2 + 16) & 1) != 0)
    {
      v8 += 32;
      v9 -= 32;
      if (!v9)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_37;
  }

LABEL_20:
  if (((*(*a1 + 728))(a1, v25, *(v28 + 1), a2 + 16) & 1) == 0)
  {
    goto LABEL_37;
  }

  if (v38)
  {
    v10 = v37;
    v11 = 32 * v38;
    while (((*(*a1 + 728))(a1, v10, IndexType, a2 + 16) & 1) != 0)
    {
      v10 += 32;
      v11 -= 32;
      if (!v11)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_37;
  }

LABEL_25:
  if (((*(*a1 + 728))(a1, v24, IndexType, a2 + 16) & 1) == 0 || ((*(*a1 + 728))(a1, v23, *(v28 + 2), a2 + 16) & 1) == 0)
  {
LABEL_37:
    v15 = 0;
    goto LABEL_38;
  }

  if (v35)
  {
    v12 = v34;
    v13 = 32 * v35;
    while (((*(*a1 + 728))(a1, v12, IndexType, a2 + 16) & 1) != 0)
    {
      v12 += 32;
      v13 -= 32;
      if (!v13)
      {
        goto LABEL_31;
      }
    }

    goto LABEL_37;
  }

LABEL_31:
  if (v19 == 2 && v32)
  {
    v14 = v31;
    v20 = 32 * v32;
    while (((*(*a1 + 728))(a1, v14, IndexType, a2 + 16) & 1) != 0)
    {
      v14 += 32;
      v15 = 1;
      v20 -= 32;
      if (!v20)
      {
        goto LABEL_38;
      }
    }

    goto LABEL_37;
  }

  v15 = 1;
LABEL_38:
  if (v28 != v30)
  {
    free(v28);
  }

  if (v31 != v33)
  {
    free(v31);
  }

  if (v34 != v36)
  {
    free(v34);
  }

  if (v37 != v39)
  {
    free(v37);
  }

  if (v40 != v42)
  {
    free(v40);
  }

  return v15;
}

uint64_t mlir::OpAsmParser::parseTrailingOperandList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (((*(*a1 + 128))(a1) & 1) == 0)
  {
    return 1;
  }

  v6 = *(*a1 + 720);

  return v6(a1, a2, a3, 1, 0xFFFFFFFFLL);
}

uint64_t mlir::memref::DmaStartOp::verify(mlir::memref::DmaStartOp *this)
{
  v107 = *MEMORY[0x1E69E9840];
  v2 = *this;
  if ((*(*this + 46) & 0x80) == 0 || (v3 = *(v2 + 68), v3 <= 3))
  {
    mlir::memref::DmaStartOp::verify(this, &v95);
    return v95;
  }

  v4 = *(*(*(v2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v4 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    TagIndices = "expected source to be of memref type";
    v91 = 259;
    mlir::OpState::emitOpError(this, &TagIndices, &v95);
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v95);
    if (v95)
    {
      mlir::InFlightDiagnostic::report(&v95);
    }

    if (v106 == 1)
    {
      if (v105 != &v106)
      {
        free(v105);
      }

      v6 = v103;
      if (v103)
      {
        v7 = v104;
        v8 = v103;
        if (v104 != v103)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = v103;
        }

        v104 = v6;
        operator delete(v8);
      }

      v9 = v101;
      if (!v101)
      {
        goto LABEL_72;
      }

      v10 = v102;
      v11 = v101;
      if (v102 == v101)
      {
LABEL_71:
        v102 = v9;
        operator delete(v11);
LABEL_72:
        if (v97 != v100)
        {
          free(v97);
        }

        return v5;
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
LABEL_70:
      v11 = v101;
      goto LABEL_71;
    }

    return v5;
  }

  v95 = v4;
  mlir::ArrayAttr::getValue(&v95);
  if (v3 >= v14 + 4)
  {
    v95 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    mlir::ArrayAttr::getValue(&v95);
    if (v35)
    {
      v36 = (*(*this + 44) & 0x800000) != 0 ? *(*this + 72) : 0;
      v92 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
      mlir::ArrayAttr::getValue(&v92);
      TagIndices = (v36 + 32);
      v90 = v37;
      mlir::OperandRange::getTypes(&TagIndices, &v95);
      v38 = (v97 - v96);
      if (v97 != v96)
      {
        v39 = v95 + 32 * v96 + 24;
        while (1)
        {
          v92 = *(*v39 + 8) & 0xFFFFFFFFFFFFFFF8;
          if (!mlir::Type::isIndex(&v92))
          {
            break;
          }

          v39 += 32;
          if (!--v38)
          {
            goto LABEL_53;
          }
        }

        TagIndices = "expected source indices to be of index type";
        v91 = 259;
        mlir::OpState::emitOpError(this, &TagIndices, &v95);
        goto LABEL_85;
      }
    }

LABEL_53:
    v95 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    mlir::ArrayAttr::getValue(&v95);
    v41 = *(*this + 72);
    if (*(*(*(*(v41 + 32 * (v40 + 1) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      TagIndices = "expected destination to be of memref type";
      v91 = 259;
      mlir::OpState::emitOpError(this, &TagIndices, &v95);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v95);
      if (v95)
      {
        mlir::InFlightDiagnostic::report(&v95);
      }

      if (v106 == 1)
      {
        if (v105 != &v106)
        {
          free(v105);
        }

        v42 = v103;
        if (v103)
        {
          v43 = v104;
          v44 = v103;
          if (v104 != v103)
          {
            do
            {
              v43 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v43 - 1);
            }

            while (v43 != v42);
            v44 = v103;
          }

          v104 = v42;
          operator delete(v44);
        }

        v9 = v101;
        if (!v101)
        {
          goto LABEL_72;
        }

        v45 = v102;
        v11 = v101;
        if (v102 == v101)
        {
          goto LABEL_71;
        }

        do
        {
          v47 = *--v45;
          v46 = v47;
          *v45 = 0;
          if (v47)
          {
            operator delete[](v46);
          }
        }

        while (v45 != v9);
        goto LABEL_70;
      }

      return v5;
    }

    v95 = *(*(v41 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    mlir::ArrayAttr::getValue(&v95);
    v50 = v49;
    v95 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    mlir::ArrayAttr::getValue(&v95);
    v95 = *(*(*(*this + 72) + 32 * (v51 + 1) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    mlir::ArrayAttr::getValue(&v95);
    v53 = (v50 + v52 + 4);
    v88 = v53;
    if (v3 < v53)
    {
      v91 = 257;
      mlir::OpState::emitOpError(this, &TagIndices, &v95);
      if (v95)
      {
        LODWORD(v92) = 3;
        v93 = "expected at least ";
        v94 = 18;
        v54 = &v92;
        v55 = v97;
        if (v98 >= v99)
        {
          if (v97 <= &v92 && v97 + 24 * v98 > &v92)
          {
            v85 = &v92 - v97;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v98 + 1, 24);
            v55 = v97;
            v54 = (v97 + v85);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v98 + 1, 24);
            v54 = &v92;
            v55 = v97;
          }
        }

        v56 = &v55[24 * v98];
        v57 = *v54;
        *(v56 + 2) = v54[2];
        *v56 = v57;
        v58 = ++v98;
        if (v95)
        {
          LODWORD(v92) = 5;
          v93 = v53;
          v59 = &v92;
          v60 = v97;
          if (v58 >= v99)
          {
            if (v97 <= &v92 && v97 + 24 * v58 > &v92)
            {
              v86 = &v92 - v97;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v58 + 1, 24);
              v60 = v97;
              v59 = (v97 + v86);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v58 + 1, 24);
              v59 = &v92;
              v60 = v97;
            }
          }

          v61 = &v60[24 * v98];
          v62 = *v59;
          *(v61 + 2) = v59[2];
          *v61 = v62;
          v63 = ++v98;
          if (v95)
          {
            LODWORD(v92) = 3;
            v93 = " operands";
            v94 = 9;
            v64 = &v92;
            v65 = v97;
            if (v63 >= v99)
            {
              if (v97 <= &v92 && v97 + 24 * v63 > &v92)
              {
                v87 = &v92 - v97;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v63 + 1, 24);
                v65 = v97;
                v64 = (v97 + v87);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v63 + 1, 24);
                v64 = &v92;
                v65 = v97;
              }
            }

            v66 = &v65[24 * v98];
            v67 = *v64;
            *(v66 + 2) = v64[2];
            *v66 = v67;
            ++v98;
          }
        }
      }

LABEL_85:
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v95);
      if (v95)
      {
        mlir::InFlightDiagnostic::report(&v95);
      }

      if (v106 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v96);
      }

      return v5;
    }

    v95 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    mlir::ArrayAttr::getValue(&v95);
    v69 = v68;
    v95 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    mlir::ArrayAttr::getValue(&v95);
    v71 = v70;
    v95 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    mlir::ArrayAttr::getValue(&v95);
    v95 = *(*(*(*this + 72) + 32 * (v72 + 1) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    mlir::ArrayAttr::getValue(&v95);
    if (v71 - v69 + v73 && (TagIndices = mlir::memref::DmaStartOp::getDstIndices(this), v90 = v74, mlir::OperandRange::getTypes(&TagIndices, &v95), !llvm::all_of<mlir::ValueTypeRange<mlir::OperandRange>,mlir::memref::DmaStartOp::verify(void)::$_1>(&v95)))
    {
      v75 = "expected destination indices to be of index type";
    }

    else
    {
      v95 = *(mlir::memref::DmaStartOp::getNumElements(this) + 8) & 0xFFFFFFFFFFFFFFF8;
      if (mlir::Type::isIndex(&v95))
      {
        if (*(*(*(mlir::memref::DmaStartOp::getTagMemRef(this) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
        {
          v77 = v53 + mlir::memref::DmaStartOp::getTagMemRefRank(this);
          v88 = v77;
          if (v3 < v77)
          {
            v91 = 257;
            mlir::OpState::emitOpError(this, &TagIndices, &v95);
            mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v95, "expected at least ");
            mlir::InFlightDiagnostic::operator<<<unsigned int const&>(v78, &v88);
            mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v79, " operands");
            goto LABEL_97;
          }

          mlir::memref::DmaStartOp::getTagIndices(this);
          if (v80 && (TagIndices = mlir::memref::DmaStartOp::getTagIndices(this), v90 = v81, mlir::OperandRange::getTypes(&TagIndices, &v95), !llvm::all_of<mlir::ValueTypeRange<mlir::OperandRange>,mlir::memref::DmaStartOp::verify(void)::$_1>(&v95)))
          {
            v75 = "expected tag indices to be of index type";
          }

          else if (v3 == v77 || v3 == v77 + 2)
          {
            if (!mlir::memref::DmaStartOp::isStrided(this))
            {
              return 1;
            }

            v95 = *(mlir::memref::DmaStartOp::getStride(this) + 8) & 0xFFFFFFFFFFFFFFF8;
            if (mlir::Type::isIndex(&v95))
            {
              TagIndices = (*(mlir::memref::DmaStartOp::getNumElementsPerStride(this) + 8) & 0xFFFFFFFFFFFFFFF8);
              if (mlir::Type::isIndex(&TagIndices))
              {
                return 1;
              }
            }

            v75 = "expected stride and num elements per stride to be of type index";
          }

          else
          {
            v75 = "incorrect number of operands";
          }
        }

        else
        {
          v75 = "expected tag to be of memref type";
        }
      }

      else
      {
        v75 = "expected num elements to be of index type";
      }
    }

    TagIndices = v75;
    v91 = 259;
    mlir::OpState::emitOpError(this, &TagIndices, &v95);
    v76 = &v95;
LABEL_97:
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v76);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v95);
    return v5;
  }

  v91 = 257;
  mlir::OpState::emitOpError(this, &TagIndices, &v95);
  if (v95)
  {
    LODWORD(v92) = 3;
    v93 = "expected at least ";
    v94 = 18;
    v15 = &v92;
    v16 = v97;
    if (v98 >= v99)
    {
      if (v97 <= &v92 && v97 + 24 * v98 > &v92)
      {
        v82 = &v92 - v97;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v98 + 1, 24);
        v16 = v97;
        v15 = (v97 + v82);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v98 + 1, 24);
        v15 = &v92;
        v16 = v97;
      }
    }

    v17 = &v16[24 * v98];
    v18 = *v15;
    *(v17 + 2) = v15[2];
    *v17 = v18;
    ++v98;
  }

  v92 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&v92);
  if (v95)
  {
    LODWORD(v92) = 5;
    v93 = (v19 + 4);
    v20 = &v92;
    v21 = v97;
    if (v98 >= v99)
    {
      if (v97 <= &v92 && v97 + 24 * v98 > &v92)
      {
        v83 = &v92 - v97;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v98 + 1, 24);
        v21 = v97;
        v20 = (v97 + v83);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v98 + 1, 24);
        v20 = &v92;
        v21 = v97;
      }
    }

    v22 = &v21[24 * v98];
    v23 = *v20;
    *(v22 + 2) = v20[2];
    *v22 = v23;
    v24 = ++v98;
    if (v95)
    {
      LODWORD(v92) = 3;
      v93 = " operands";
      v94 = 9;
      v25 = &v92;
      v26 = v97;
      if (v24 >= v99)
      {
        if (v97 <= &v92 && v97 + 24 * v24 > &v92)
        {
          v84 = &v92 - v97;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v24 + 1, 24);
          v26 = v97;
          v25 = (v97 + v84);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v24 + 1, 24);
          v25 = &v92;
          v26 = v97;
        }
      }

      v27 = &v26[24 * v98];
      v28 = *v25;
      *(v27 + 2) = v25[2];
      *v27 = v28;
      ++v98;
    }
  }

  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v95);
  if (v95)
  {
    mlir::InFlightDiagnostic::report(&v95);
  }

  if (v106 == 1)
  {
    if (v105 != &v106)
    {
      free(v105);
    }

    v29 = v103;
    if (v103)
    {
      v30 = v104;
      v31 = v103;
      if (v104 != v103)
      {
        do
        {
          v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
        }

        while (v30 != v29);
        v31 = v103;
      }

      v104 = v29;
      operator delete(v31);
    }

    v9 = v101;
    if (!v101)
    {
      goto LABEL_72;
    }

    v32 = v102;
    v11 = v101;
    if (v102 == v101)
    {
      goto LABEL_71;
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

    while (v32 != v9);
    goto LABEL_70;
  }

  return v5;
}

BOOL llvm::all_of<mlir::ValueTypeRange<mlir::OperandRange>,mlir::memref::DmaStartOp::verify(void)::$_1>(void *a1)
{
  v3 = a1[1];
  v4 = a1[3];
  if (v3 == v4)
  {
    return 1;
  }

  v11[3] = v1;
  v11[4] = v2;
  v6 = ~v3 + v4;
  v7 = (*a1 + 32 * v3 + 24);
  do
  {
    v8 = *v7;
    v7 += 4;
    v11[0] = *(v8 + 8) & 0xFFFFFFFFFFFFFFF8;
    result = mlir::Type::isIndex(v11);
    v10 = v6-- != 0;
  }

  while (result && v10);
  return result;
}

uint64_t mlir::memref::DmaStartOp::getTagMemRefRank(mlir::memref::DmaStartOp *this)
{
  v8 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&v8);
  v3 = v2;
  v8 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&v8);
  v8 = *(*(*(*this + 72) + 32 * (v4 + 1) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&v8);
  v8 = *(*(*(*this + 72) + 32 * (v3 + v5 + 3) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&v8);
  return v6;
}

uint64_t mlir::memref::ExtractStridedMetadataOp::inferReturnTypes(mlir::IndexType *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21[2] = *MEMORY[0x1E69E9840];
  v21[0] = *(a4 + 40);
  v21[1] = 0;
  v7 = *(mlir::ValueRange::dereference_iterator(v21, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v7 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v7 = 0;
  }

  v21[0] = v7;
  if (!v7)
  {
    return 0;
  }

  mlir::ArrayAttr::getValue(v21);
  v9 = v8;
  v10 = mlir::IndexType::get(a1, v8);
  RHS = mlir::AffineBinaryOpExpr::getRHS(v21);
  MemorySpace = mlir::MemRefType::getMemorySpace(v21);
  v13 = mlir::MemRefType::get(0, 0, RHS, 0, 0, MemorySpace);
  v14 = *(a5 + 8);
  if (v14 >= *(a5 + 12))
  {
    v20 = v13;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a5, a5 + 16, v14 + 1, 8);
    v13 = v20;
    LODWORD(v14) = *(a5 + 8);
  }

  *(*a5 + 8 * v14) = v13;
  v15 = *(a5 + 12);
  v16 = (*(a5 + 8) + 1);
  *(a5 + 8) = v16;
  if (v16 >= v15)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a5, a5 + 16, v16 + 1, 8);
    LODWORD(v16) = *(a5 + 8);
  }

  *(*a5 + 8 * v16) = v10;
  v17 = *(a5 + 8) + 1;
  *(a5 + 8) = v17;
  for (i = 2 * v9; i; --i)
  {
    if (v17 >= *(a5 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a5, a5 + 16, v17 + 1, 8);
      v17 = *(a5 + 8);
    }

    *(*a5 + 8 * v17) = v10;
    v17 = *(a5 + 8) + 1;
    *(a5 + 8) = v17;
  }

  return 1;
}

uint64_t mlir::memref::ExtractStridedMetadataOp::getAsmResultNames(uint64_t a1, void (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
{
  if (*(*a1 + 36))
  {
    v5 = *a1 - 16;
  }

  else
  {
    v5 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  a2(a3, NextResultAtOffset, "base_buffer", 11);
  if (*(*a1 + 36))
  {
    v7 = *a1 - 16;
  }

  else
  {
    v7 = 0;
  }

  v8 = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 1);
  v9 = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
  a2(a3, v9, "offset", 6);
  v10 = *(*a1 + 36);
  if (v10)
  {
    v11 = *a1 - 16;
  }

  else
  {
    v11 = 0;
  }

  result = mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 2);
  if ((v10 & 0xFFFFFFFE) != 2)
  {
    if (*(*a1 + 36))
    {
      v13 = *a1 - 16;
    }

    else
    {
      v13 = 0;
    }

    v14 = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 2);
    v15 = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
    a2(a3, v15, "sizes", 5);
    v16 = *(*a1 + 36);
    if (v16)
    {
      v17 = *a1 - 16;
    }

    else
    {
      v17 = 0;
    }

    v18 = mlir::detail::OpResultImpl::getNextResultAtOffset(v17, ((v16 - 2) >> 1) + 2);
    v19 = mlir::detail::OpResultImpl::getNextResultAtOffset(v18, 0);

    return (a2)(a3, v19, "strides", 7);
  }

  return result;
}

uint64_t mlir::memref::ExtractStridedMetadataOp::fold(mlir::memref::ExtractStridedMetadataOp *a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v40[0] = mlir::Attribute::getContext((*a1 + 24));
  v40[1] = 0;
  v40[2] = *(v2 + 16);
  v40[3] = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v2, v3);
  v4 = *(*a1 + 24);
  if (*(*a1 + 36))
  {
    v5 = *a1 - 16;
  }

  else
  {
    v5 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 1);
  v7 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, 0);
  ConstifiedMixedOffset = mlir::memref::ExtractStridedMetadataOp::getConstifiedMixedOffset(a1);
  if (*v7 && (v9 = ConstifiedMixedOffset, ConstifiedMixedOffset != mlir::getAsOpFoldResult(v7)) && (v44 = v9 & 0xFFFFFFFFFFFFFFF8, Int = mlir::IntegerAttr::getInt(&v44), v10 = mlir::OpBuilder::create<mlir::arith::ConstantIndexOp,long long &>(v40, v4, &Int), (v11 = *v7) != 0))
  {
    v12 = (v10 - 16);
    do
    {
      v13 = *v11;
      mlir::Operation::replaceUsesOfWith(v11[2], v7, v12);
      v11 = v13;
    }

    while (v13);
    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(*a1 + 24);
  v16 = *(*a1 + 36);
  if (v16)
  {
    v17 = *a1 - 16;
  }

  else
  {
    v17 = 0;
  }

  v18 = mlir::detail::OpResultImpl::getNextResultAtOffset(v17, 2);
  v19 = (v16 - 2) >> 1;
  v20 = *(*a1 + 36);
  if (v20)
  {
    v21 = *a1 - 16;
  }

  else
  {
    v21 = 0;
  }

  v22 = mlir::detail::OpResultImpl::getNextResultAtOffset(v21, 2);
  mlir::ValueRange::ValueRange(&v44, v22, (v20 - 2) >> 1);
  mlir::getAsOpFoldResult(v44, v45, &Int);
  v23 = *(*(*(*a1 + 72) + 24) + 8);
  Context = mlir::Attribute::getContext((*a1 + 24));
  constifyIndexValues(&Int, v23 & 0xFFFFFFFFFFFFFFF8, Context, llvm::function_ref<llvm::SmallVector<long long,6u> ()(mlir::MemRefType)>::callback_fn<llvm::SmallVector<long long,6u> ()(mlir::MemRefType)>, getConstantSizes, llvm::function_ref<BOOL ()(long long)>::callback_fn<BOOL ()(long long)>, mlir::ShapedType::isDynamic);
  v25 = replaceConstantUsesOf<mlir::ResultRange>(v40, v15, v18, v19, Int, v42);
  if (Int != v43)
  {
    free(Int);
  }

  v26 = *(*a1 + 24);
  v27 = *(*a1 + 36);
  v28 = (v27 - 2) >> 1;
  if (v27)
  {
    v29 = *a1 - 16;
  }

  else
  {
    v29 = 0;
  }

  v30 = mlir::detail::OpResultImpl::getNextResultAtOffset(v29, v28 + 2);
  v31 = *(*a1 + 36);
  v32 = (v31 - 2) >> 1;
  if (v31)
  {
    v33 = *a1 - 16;
  }

  else
  {
    v33 = 0;
  }

  v34 = mlir::detail::OpResultImpl::getNextResultAtOffset(v33, v32 + 2);
  mlir::ValueRange::ValueRange(&v44, v34, v32 + 2 + v32 - (v32 + 2));
  mlir::getAsOpFoldResult(v44, v45, &Int);
  v35 = *a1;
  v36 = *(*(*(*a1 + 72) + 24) + 8);
  v37 = mlir::Attribute::getContext((v35 + 24));
  constifyIndexValues(&Int, v36 & 0xFFFFFFFFFFFFFFF8, v37, llvm::function_ref<llvm::SmallVector<long long,6u> ()(mlir::MemRefType)>::callback_fn<llvm::SmallVector<long long,6u> ()(mlir::MemRefType)>, getConstantStrides, llvm::function_ref<BOOL ()(long long)>::callback_fn<BOOL ()(long long)>, mlir::ShapedType::isDynamic);
  v38 = replaceConstantUsesOf<mlir::ResultRange>(v40, v26, v30, v28 + 2 + v28 - (v28 + 2), Int, v42);
  if (Int != v43)
  {
    free(Int);
  }

  return v14 | v25 | v38;
}

uint64_t mlir::memref::ExtractStridedMetadataOp::getConstifiedMixedOffset(mlir::memref::ExtractStridedMetadataOp *this)
{
  v11[6] = *MEMORY[0x1E69E9840];
  if (*(*this + 36))
  {
    v2 = *this - 16;
  }

  else
  {
    v2 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 1);
  v4 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, 0);
  v10[0] = v11;
  v11[0] = mlir::getAsOpFoldResult(v4);
  v10[1] = 0x600000001;
  v5 = *this;
  v6 = *(*(*(*this + 72) + 24) + 8);
  Context = mlir::Attribute::getContext((v5 + 24));
  constifyIndexValues(v10, v6 & 0xFFFFFFFFFFFFFFF8, Context, llvm::function_ref<llvm::SmallVector<long long,6u> ()(mlir::MemRefType)>::callback_fn<llvm::SmallVector<long long,6u> ()(mlir::MemRefType)>, getConstantOffset, llvm::function_ref<BOOL ()(long long)>::callback_fn<BOOL ()(long long)>, mlir::ShapedType::isDynamic);
  v8 = *v10[0];
  if (v10[0] != v11)
  {
    free(v10[0]);
  }

  return v8;
}

uint64_t replaceConstantUsesOf<mlir::ResultRange>(mlir::IndexType **a1, uint64_t a2, mlir::detail::OpResultImpl *this, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v6 = 0;
  if (a6 && a4)
  {
    v8 = a5;
    v6 = 0;
    v12 = 0;
    v13 = &a5[a6];
    do
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(this, v12);
      if (*NextResultAtOffset)
      {
        v15 = NextResultAtOffset;
        v16 = *v8;
        if (v16 != mlir::getAsOpFoldResult(NextResultAtOffset))
        {
          v22 = *v8 & 0xFFFFFFFFFFFFFFF8;
          Int = mlir::IntegerAttr::getInt(&v22);
          v17 = mlir::OpBuilder::create<mlir::arith::ConstantIndexOp,long long &>(a1, a2, &Int);
          v18 = *v15;
          if (*v15)
          {
            v19 = (v17 - 16);
            do
            {
              v20 = *v18;
              mlir::Operation::replaceUsesOfWith(v18[2], v15, v19);
              v18 = v20;
            }

            while (v20);
            v6 = 1;
          }
        }
      }

      if (++v8 == v13)
      {
        break;
      }

      ++v12;
    }

    while (v12 != a4);
  }

  return v6 & 1;
}

void constifyIndexValues(uint64_t a1, uint64_t a2, mlir::IndexType *a3, void (*a4)(void **__return_ptr, uint64_t), uint64_t a5, uint64_t (*a6)(uint64_t, mlir::MLIRContext *), uint64_t a7)
{
  v26[6] = *MEMORY[0x1E69E9840];
  a4(&v24, a5);
  v23 = a3;
  if (v25)
  {
    v11 = 0;
    v12 = v24;
    v13 = 8 * v25;
    do
    {
      v14 = *&v12[v11];
      if ((a6(a7, v14) & 1) == 0)
      {
        *(*a1 + v11) = mlir::Builder::getIndexAttr(&v23, v14) & 0xFFFFFFFFFFFFFFFBLL;
      }

      v11 += 8;
    }

    while (v13 != v11);
  }

  v15 = *(a1 + 8);
  if (v15)
  {
    v16 = *a1;
    for (i = 8 * v15; i; i -= 8)
    {
      v19 = *v16;
      if ((*v16 & 4) != 0)
      {
        ConstantIntValue = mlir::getConstantIntValue(v19 & 0xFFFFFFFFFFFFFFFCLL);
        if ((v21 & 1) == 0)
        {
          goto LABEL_10;
        }

        Int = ConstantIntValue;
      }

      else
      {
        v22 = v19 & 0xFFFFFFFFFFFFFFF8;
        Int = mlir::IntegerAttr::getInt(&v22);
      }

      *v16 = mlir::Builder::getIndexAttr(&v23, Int) & 0xFFFFFFFFFFFFFFFBLL;
LABEL_10:
      ++v16;
    }
  }

  if (v24 != v26)
  {
    free(v24);
  }
}

void getConstantSizes(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = a1;
  Value = mlir::ArrayAttr::getValue(&v9);
  v5 = v3;
  *a2 = a2 + 2;
  a2[1] = 0x600000000;
  v6 = (8 * v3) >> 3;
  if (v6 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 2), v6, 8);
    v7 = *(a2 + 2);
    v8 = 8 * v5;
    if (!v5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v7 = 0;
  v8 = 8 * v3;
  if (v3)
  {
LABEL_5:
    memcpy((*a2 + 8 * v7), Value, v8);
    v7 = *(a2 + 2);
  }

LABEL_6:
  *(a2 + 2) = v7 + (v8 >> 3);
}

void getConstantStrides(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10[6] = *MEMORY[0x1E69E9840];
  v7 = 0;
  __src = v10;
  v9 = 0x600000000;
  StridesAndOffset = mlir::getStridesAndOffset(a1, &__src, &v7);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (StridesAndOffset)
  {
    v4 = v9;
    if (v9)
    {
      if (&__src != a2)
      {
        if (__src == v10)
        {
          v6 = v9;
          if (v9 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v9, 8), (v6 = v9) != 0))
          {
            memcpy(*a2, __src, 8 * v6);
          }

          *(a2 + 8) = v4;
        }

        else
        {
          *a2 = __src;
          v5 = HIDWORD(v9);
          *(a2 + 8) = v4;
          *(a2 + 12) = v5;
          __src = v10;
          HIDWORD(v9) = 0;
        }

        LODWORD(v9) = 0;
      }
    }
  }

  if (__src != v10)
  {
    free(__src);
  }
}

void getConstantOffset(uint64_t a1@<X0>, void *a2@<X8>)
{
  v7[6] = *MEMORY[0x1E69E9840];
  v5 = 0;
  v6[0] = v7;
  v3 = 0x600000000;
  v6[1] = 0x600000000;
  StridesAndOffset = mlir::getStridesAndOffset(a1, v6, &v5);
  *a2 = a2 + 2;
  if (StridesAndOffset)
  {
    a2[2] = v5;
    v3 = 0x600000001;
  }

  a2[1] = v3;
  if (v6[0] != v7)
  {
    free(v6[0]);
  }
}

BOOL mlir::memref::GenericAtomicRMWOp::verify(mlir::memref::GenericAtomicRMWOp *this)
{
  v46 = *MEMORY[0x1E69E9840];
  v1 = *this;
  v2 = (((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40));
  if (*v2 == v2 || ((v3 = v2[1]) != 0 ? (v4 = v3 - 8) : (v4 = 0), ((*(v4 + 56) - *(v4 + 48)) & 0x7FFFFFFF8) != 8))
  {
    v35[0] = "expected single number of entry block arguments";
    v36 = 259;
    mlir::OpState::emitOpError(this, v35, v37);
    v34 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v37);
    if (v37[0])
    {
      mlir::InFlightDiagnostic::report(v37);
    }

    if (v45 != 1)
    {
      return v34;
    }

    if (v44 != &v45)
    {
      free(v44);
    }

    v19 = __p;
    if (__p)
    {
      v20 = v43;
      v21 = __p;
      if (v43 != __p)
      {
        do
        {
          v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v43 = v19;
      operator delete(v21);
    }

    v22 = v40;
    if (v40)
    {
      v23 = v41;
      v24 = v40;
      if (v41 == v40)
      {
        goto LABEL_54;
      }

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
LABEL_53:
      v24 = v40;
LABEL_54:
      v41 = v22;
      operator delete(v24);
    }

LABEL_55:
    if (v38 != &v39)
    {
      free(v38);
    }

    return v34;
  }

  v6 = *(v1 + 36);
  v7 = v1 - 16;
  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
  v11 = v2[1];
  v12 = v11 - 1;
  if (!v11)
  {
    v12 = 0;
  }

  if ((*(*v12[6] + 8) ^ *(NextResultAtOffset + 8)) >= 8)
  {
    v35[0] = "expected block argument of the same type result type";
    v36 = 259;
    mlir::OpState::emitOpError(this, v35, v37);
    v34 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v37);
    if (v37[0])
    {
      mlir::InFlightDiagnostic::report(v37);
    }

    if (v45 != 1)
    {
      return v34;
    }

    if (v44 != &v45)
    {
      free(v44);
    }

    v27 = __p;
    if (__p)
    {
      v28 = v43;
      v29 = __p;
      if (v43 != __p)
      {
        do
        {
          v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
        }

        while (v28 != v27);
        v29 = __p;
      }

      v43 = v27;
      operator delete(v29);
    }

    v22 = v40;
    if (v40)
    {
      v30 = v41;
      v24 = v40;
      if (v41 == v40)
      {
        goto LABEL_54;
      }

      do
      {
        v32 = *--v30;
        v31 = v32;
        *v30 = 0;
        if (v32)
        {
          operator delete[](v31);
        }
      }

      while (v30 != v22);
      goto LABEL_53;
    }

    goto LABEL_55;
  }

  for (; v11 != v2; v11 = v11[1])
  {
    v13 = v11 - 1;
    if (!v11)
    {
      v13 = 0;
    }

    v14 = v13[5];
    v15 = v13 + 4;
    while (v14 != v15)
    {
      v16 = v14[1];
      v17 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v14, v10);
      v18 = mlir::detail::walk<mlir::ForwardIterator>(v17, llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::memref::GenericAtomicRMWOp::verify(void)::$_0>, v37, 1);
      v14 = v16;
      if (!v18)
      {
        return 0;
      }
    }
  }

  return 1;
}

uint64_t mlir::memref::GenericAtomicRMWOp::parse(uint64_t a1, mlir::OperationState *a2)
{
  v18[16] = *MEMORY[0x1E69E9840];
  memset(v15, 0, 24);
  v14 = 0;
  v16 = v18;
  v17 = 0x400000000;
  v4 = (*(*a1 + 32))(a1);
  IndexType = mlir::Builder::getIndexType(v4, v5);
  if ((*(*a1 + 704))(a1, v15, 1) & 1) != 0 && ((*(*a1 + 720))(a1, &v16, 2, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*a1 + 576))(a1, &v14) & 1) != 0 && ((*(*a1 + 728))(a1, v15, v14, a2 + 16))
  {
    if (v17)
    {
      v7 = v16;
      v8 = 32 * v17;
      while (((*(*a1 + 728))(a1, v7, IndexType, a2 + 16) & 1) != 0)
      {
        v7 += 32;
        v8 -= 32;
        if (!v8)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      v9 = mlir::OperationState::addRegion(a2);
      if ((*(*a1 + 776))(a1, v9, 0, 0, 0) & 1) != 0 && ((*(*a1 + 488))(a1, a2 + 112))
      {
        v13 = v14;
        RHS = mlir::AffineBinaryOpExpr::getRHS(&v13);
        llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a2 + 64, RHS);
        v11 = 1;
        goto LABEL_13;
      }
    }
  }

  v11 = 0;
LABEL_13:
  if (v16 != v18)
  {
    free(v16);
  }

  return v11;
}

BOOL mlir::memref::AtomicYieldOp::verify(mlir::memref::AtomicYieldOp *this)
{
  v54 = *MEMORY[0x1E69E9840];
  ParentOp = *(*this + 16);
  if (ParentOp)
  {
    ParentOp = mlir::Block::getParentOp(ParentOp);
  }

  v3 = ParentOp[9];
  v4 = ParentOp - 4;
  if (!v3)
  {
    v4 = 0;
  }

  v38[0] = v4;
  v38[1] = v3;
  mlir::OperandRange::getTypes(v38, v43);
  v5 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v43[0], v43[1]) + 8) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (v5 == v6)
  {
    return 1;
  }

  v39 = 257;
  mlir::OpState::emitOpError(this, v38, v43);
  if (v43[0])
  {
    v40 = 3;
    v41 = "types mismatch between yield op: ";
    v42 = 33;
    v8 = &v40;
    v9 = v44;
    if (v45 >= v46)
    {
      if (v44 <= &v40 && v44 + 24 * v45 > &v40)
      {
        v34 = &v40 - v44;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v45 + 1, 24);
        v9 = v44;
        v8 = (v44 + v34);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v45 + 1, 24);
        v8 = &v40;
        v9 = v44;
      }
    }

    v10 = &v9[24 * v45];
    v11 = *v8;
    *(v10 + 2) = *(v8 + 2);
    *v10 = v11;
    ++v45;
    if (v43[0])
    {
      v12 = &v40;
      mlir::DiagnosticArgument::DiagnosticArgument(&v40, v6);
      v13 = v44;
      if (v45 >= v46)
      {
        if (v44 <= &v40 && v44 + 24 * v45 > &v40)
        {
          v35 = &v40 - v44;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v45 + 1, 24);
          v13 = v44;
          v12 = (v44 + v35);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v45 + 1, 24);
          v12 = &v40;
          v13 = v44;
        }
      }

      v14 = &v13[24 * v45];
      v15 = *v12;
      *(v14 + 2) = *(v12 + 2);
      *v14 = v15;
      v16 = ++v45;
      if (v43[0])
      {
        v40 = 3;
        v41 = " and its parent: ";
        v42 = 17;
        v17 = &v40;
        v18 = v44;
        if (v16 >= v46)
        {
          if (v44 <= &v40 && v44 + 24 * v16 > &v40)
          {
            v36 = &v40 - v44;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v16 + 1, 24);
            v18 = v44;
            v17 = (v44 + v36);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v16 + 1, 24);
            v17 = &v40;
            v18 = v44;
          }
        }

        v19 = &v18[24 * v45];
        v20 = *v17;
        *(v19 + 2) = *(v17 + 2);
        *v19 = v20;
        ++v45;
        if (v43[0])
        {
          v21 = &v40;
          mlir::DiagnosticArgument::DiagnosticArgument(&v40, v5);
          v22 = v44;
          if (v45 >= v46)
          {
            if (v44 <= &v40 && v44 + 24 * v45 > &v40)
            {
              v37 = &v40 - v44;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v45 + 1, 24);
              v22 = v44;
              v21 = (v44 + v37);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v45 + 1, 24);
              v21 = &v40;
              v22 = v44;
            }
          }

          v23 = &v22[24 * v45];
          v24 = *v21;
          *(v23 + 2) = *(v21 + 2);
          *v23 = v24;
          ++v45;
        }
      }
    }
  }

  v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v43);
  if (v43[0])
  {
    mlir::InFlightDiagnostic::report(v43);
  }

  if (v53 == 1)
  {
    if (v52 != &v53)
    {
      free(v52);
    }

    v25 = __p;
    if (__p)
    {
      v26 = v51;
      v27 = __p;
      if (v51 != __p)
      {
        do
        {
          v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
        }

        while (v26 != v25);
        v27 = __p;
      }

      v51 = v25;
      operator delete(v27);
    }

    v28 = v48;
    if (v48)
    {
      v29 = v49;
      v30 = v48;
      if (v49 != v48)
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
        v30 = v48;
      }

      v49 = v28;
      operator delete(v30);
    }

    if (v44 != v47)
    {
      free(v44);
    }
  }

  return v7;
}

BOOL mlir::memref::GlobalOp::verify(mlir::memref::GlobalOp *this)
{
  v99 = *MEMORY[0x1E69E9840];
  v87 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 104);
  Value = mlir::AffineMapAttr::getValue(&v87);
  if (!Value || !mlir::BaseMemRefType::hasRank(&Value))
  {
    goto LABEL_18;
  }

  v2 = mlir::ArrayAttr::getValue(&Value);
  if (v3)
  {
    v4 = 8 * v3;
    while (*v2 != 0x8000000000000000)
    {
      ++v2;
      v4 -= 8;
      if (!v4)
      {
        goto LABEL_7;
      }
    }

LABEL_18:
    v81[0] = "type should be static shaped memref, but got ";
    v82 = 259;
    mlir::OpState::emitOpError(this, v81, &v87);
    v84 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 104);
    v18 = mlir::AffineMapAttr::getValue(&v84);
    if (v87)
    {
      v19 = &v84;
      mlir::DiagnosticArgument::DiagnosticArgument(&v84, v18);
      v20 = v89;
      if (v90 >= v91)
      {
        if (v89 <= &v84 && v89 + 24 * v90 > &v84)
        {
          v32 = &v84 - v89;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v92, v90 + 1, 24);
          v20 = v89;
          v19 = v89 + v32;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v92, v90 + 1, 24);
          v19 = &v84;
          v20 = v89;
        }
      }

      v21 = &v20[24 * v90];
      v22 = *v19;
      *(v21 + 2) = *(v19 + 2);
      *v21 = v22;
      ++v90;
    }

    v23 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v87);
    if (v87)
    {
      mlir::InFlightDiagnostic::report(&v87);
    }

    if (v98 == 1)
    {
      if (v97 != &v98)
      {
        free(v97);
      }

      v24 = __p;
      if (__p)
      {
        v25 = v96;
        v26 = __p;
        if (v96 != __p)
        {
          do
          {
            v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
          }

          while (v25 != v24);
          v26 = __p;
        }

        v96 = v24;
        operator delete(v26);
      }

      v27 = v93;
      if (!v93)
      {
        goto LABEL_89;
      }

      v28 = v94;
      v29 = v93;
      if (v94 == v93)
      {
        goto LABEL_88;
      }

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
      goto LABEL_87;
    }

    return v23;
  }

LABEL_7:
  v5 = *this;
  v6 = (*(*this + 44) >> 23) & 1;
  v7 = *(*this + 16 * v6 + 80);
  if (v7)
  {
    v8 = *v7;
    if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      goto LABEL_52;
    }

    {
      v9 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v10 = *(v8 + 8);
      v11 = *(v8 + 16);
      if (!v11)
      {
        goto LABEL_44;
      }
    }

    else
    {
      mlir::memref::GlobalOp::verify();
      v9 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v10 = *(v8 + 8);
      v11 = *(v8 + 16);
      if (!v11)
      {
        goto LABEL_44;
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
    if (v12 != &v10[2 * v11] && *v12 == v9 && v12[1])
    {
LABEL_52:
      v80[0] = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute,void>>::doCastIfPossible(v7);
      v80[1] = v38;
      if (!v80[0] || (Type = mlir::ElementsAttr::getType(v80), TensorTypeFromMemRefType = mlir::memref::getTensorTypeFromMemRefType(Value), Type == TensorTypeFromMemRefType))
      {
        v5 = *this;
        v6 = (*(*this + 44) >> 23) & 1;
        goto LABEL_55;
      }

      v64 = TensorTypeFromMemRefType;
      v81[0] = "initial value expected to be of type ";
      v82 = 259;
      mlir::OpState::emitOpError(this, v81, &v87);
      if (v87)
      {
        v65 = &v84;
        mlir::DiagnosticArgument::DiagnosticArgument(&v84, v64);
        v66 = v89;
        if (v90 >= v91)
        {
          if (v89 <= &v84 && v89 + 24 * v90 > &v84)
          {
            v77 = &v84 - v89;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v92, v90 + 1, 24);
            v66 = v89;
            v65 = v89 + v77;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v92, v90 + 1, 24);
            v65 = &v84;
            v66 = v89;
          }
        }

        v67 = &v66[24 * v90];
        v68 = *v65;
        *(v67 + 2) = *(v65 + 2);
        *v67 = v68;
        v69 = ++v90;
        if (v87)
        {
          LODWORD(v84) = 3;
          v85 = ", but was of type ";
          v86 = 18;
          v70 = &v84;
          v71 = v89;
          if (v69 >= v91)
          {
            if (v89 <= &v84 && v89 + 24 * v69 > &v84)
            {
              v79 = &v84 - v89;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v92, v69 + 1, 24);
              v71 = v89;
              v70 = v89 + v79;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v92, v69 + 1, 24);
              v70 = &v84;
              v71 = v89;
            }
          }

          v72 = &v71[24 * v90];
          v73 = *v70;
          *(v72 + 2) = *(v70 + 2);
          *v72 = v73;
          ++v90;
          if (v87)
          {
            v33 = &v84;
            mlir::DiagnosticArgument::DiagnosticArgument(&v84, Type);
            v34 = v90;
            v35 = v89;
            if (v90 >= v91)
            {
              if (v89 > &v84 || v89 + 24 * v90 <= &v84)
              {
                goto LABEL_103;
              }

              v74 = &v84 - v89;
              goto LABEL_120;
            }

            goto LABEL_46;
          }
        }
      }

      goto LABEL_47;
    }

LABEL_44:
    v81[0] = "initial value should be a unit or elements attribute, but got ";
    v82 = 259;
    mlir::OpState::emitOpError(this, v81, &v87);
    if (v87)
    {
      v33 = &v84;
      mlir::DiagnosticArgument::DiagnosticArgument(&v84, v7);
      v34 = v90;
      v35 = v89;
      if (v90 >= v91)
      {
        if (v89 > &v84 || v89 + 24 * v90 <= &v84)
        {
LABEL_103:
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v92, v34 + 1, 24);
          v33 = &v84;
          v35 = v89;
          goto LABEL_46;
        }

        v74 = &v84 - v89;
LABEL_120:
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v92, v34 + 1, 24);
        v35 = v89;
        v33 = v89 + v74;
      }

LABEL_46:
      v36 = &v35[24 * v90];
      v37 = *v33;
      *(v36 + 2) = *(v33 + 2);
      *v36 = v37;
      ++v90;
    }

LABEL_47:
    v23 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v87);
    if (v87)
    {
      mlir::InFlightDiagnostic::report(&v87);
    }

    if (v98 == 1)
    {
      mlir::Diagnostic::~Diagnostic(v88);
    }

    return v23;
  }

LABEL_55:
  v81[0] = *(v5 + 16 * v6 + 64);
  if (!v81[0])
  {
    return 1;
  }

  mlir::IntegerAttr::getValue(v81, &v87);
  if (v88[0] >= 0x41)
  {
    v41 = v87;
  }

  else
  {
    v41 = &v87;
  }

  v42 = *v41;
  if (v88[0] >= 0x41 && v87)
  {
    operator delete[](v87);
  }

  if ((v42 ^ (v42 - 1)) > (v42 - 1))
  {
    return 1;
  }

  v82 = 257;
  mlir::OpState::emitError(this, v81, &v87);
  if (v87)
  {
    LODWORD(v84) = 3;
    v85 = "alignment attribute value ";
    v86 = 26;
    v43 = &v84;
    v44 = v89;
    if (v90 >= v91)
    {
      if (v89 <= &v84 && v89 + 24 * v90 > &v84)
      {
        v75 = &v84 - v89;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v92, v90 + 1, 24);
        v44 = v89;
        v43 = v89 + v75;
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
      LODWORD(v84) = 5;
      v85 = v42;
      v48 = &v84;
      v49 = v89;
      if (v47 >= v91)
      {
        if (v89 <= &v84 && v89 + 24 * v47 > &v84)
        {
          v76 = &v84 - v89;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v92, v47 + 1, 24);
          v49 = v89;
          v48 = v89 + v76;
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
        LODWORD(v84) = 3;
        v85 = " is not a power of 2";
        v86 = 20;
        v53 = &v84;
        v54 = v89;
        if (v52 >= v91)
        {
          if (v89 <= &v84 && v89 + 24 * v52 > &v84)
          {
            v78 = &v84 - v89;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v89, v92, v52 + 1, 24);
            v54 = v89;
            v53 = v89 + v78;
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
        ++v90;
      }
    }
  }

  v23 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v87);
  if (v87)
  {
    mlir::InFlightDiagnostic::report(&v87);
  }

  if (v98)
  {
    if (v97 != &v98)
    {
      free(v97);
    }

    v57 = __p;
    if (__p)
    {
      v58 = v96;
      v59 = __p;
      if (v96 != __p)
      {
        do
        {
          v58 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v58 - 1);
        }

        while (v58 != v57);
        v59 = __p;
      }

      v96 = v57;
      operator delete(v59);
    }

    v27 = v93;
    if (!v93)
    {
      goto LABEL_89;
    }

    v60 = v94;
    v29 = v93;
    if (v94 == v93)
    {
LABEL_88:
      v94 = v27;
      operator delete(v29);
LABEL_89:
      if (v89 != v92)
      {
        free(v89);
      }

      return v23;
    }

    do
    {
      v62 = *--v60;
      v61 = v62;
      *v60 = 0;
      if (v62)
      {
        operator delete[](v61);
      }
    }

    while (v60 != v27);
LABEL_87:
    v29 = v93;
    goto LABEL_88;
  }

  return v23;
}

void *mlir::memref::GlobalOp::getConstantInitValue(mlir::memref::GlobalOp *this)
{
  v1 = (*(*this + 44) >> 23) & 1;
  v3 = *(*this + 16 * v1 + 72);
  result = *(*this + 16 * v1 + 80);
  if (v3)
  {
    v4 = result == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 0;
  }

  v5 = *result;
  {
    v6 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v7 = *(v5 + 8);
    v8 = *(v5 + 16);
    if (!v8)
    {
      return result;
    }
  }

  else
  {
    v15 = v5;
    v16 = result;
    mlir::memref::GlobalOp::getConstantInitValue();
    result = v16;
    v6 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v7 = *(v15 + 8);
    v8 = *(v15 + 16);
    if (!v8)
    {
      return result;
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
  return result;
}

BOOL mlir::memref::GetGlobalOp::verifySymbolUses(mlir::SymbolTable **this, mlir::SymbolTableCollection *a2)
{
  v74 = *MEMORY[0x1E69E9840];
  v3 = mlir::SymbolTableCollection::lookupNearestSymbolFrom(a2, *this, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  if (v3 && (v4 = v3, *(*(v3 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::memref::GlobalOp,void>::id))
  {
    if (*(*this + 9))
    {
      v20 = *this - 16;
    }

    else
    {
      v20 = 0;
    }

    v21 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v20, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v62 = *(v4 + 64 + 16 * ((*(v4 + 44) >> 23) & 1) + 40);
    if (mlir::AffineMapAttr::getValue(&v62) == v21)
    {
      return 1;
    }

    v55[0] = "result type ";
    v56 = 259;
    mlir::OpState::emitOpError(this, v55, &v62);
    if (v62)
    {
      v22 = &v58;
      mlir::DiagnosticArgument::DiagnosticArgument(&v58, v21);
      v23 = v64;
      if (v65 >= v66)
      {
        if (v64 <= &v58 && v64 + 24 * v65 > &v58)
        {
          v51 = &v58 - v64;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
          v23 = v64;
          v22 = v64 + v51;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
          v22 = &v58;
          v23 = v64;
        }
      }

      v24 = &v23[24 * v65];
      v25 = *v22;
      *(v24 + 2) = *(v22 + 2);
      *v24 = v25;
      v26 = ++v65;
      if (v62)
      {
        LODWORD(v58) = 3;
        v59 = " does not match type ";
        v60 = 21;
        v27 = &v58;
        v28 = v64;
        if (v26 >= v66)
        {
          if (v64 <= &v58 && v64 + 24 * v26 > &v58)
          {
            v53 = &v58 - v64;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v26 + 1, 24);
            v28 = v64;
            v27 = v64 + v53;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v26 + 1, 24);
            v27 = &v58;
            v28 = v64;
          }
        }

        v29 = &v28[24 * v65];
        v30 = *v27;
        *(v29 + 2) = *(v27 + 2);
        *v29 = v30;
        ++v65;
      }
    }

    v58 = *(v4 + 64 + 16 * ((*(v4 + 44) >> 23) & 1) + 40);
    Value = mlir::AffineMapAttr::getValue(&v58);
    if (v62)
    {
      v32 = &v58;
      mlir::DiagnosticArgument::DiagnosticArgument(&v58, Value);
      v33 = v64;
      if (v65 >= v66)
      {
        if (v64 <= &v58 && v64 + 24 * v65 > &v58)
        {
          v52 = &v58 - v64;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
          v33 = v64;
          v32 = v64 + v52;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
          v32 = &v58;
          v33 = v64;
        }
      }

      v34 = &v33[24 * v65];
      v35 = *v32;
      *(v34 + 2) = *(v32 + 2);
      *v34 = v35;
      v36 = ++v65;
      if (v62)
      {
        LODWORD(v58) = 3;
        v59 = " of the global memref @";
        v60 = 23;
        v37 = &v58;
        v38 = v64;
        if (v36 >= v66)
        {
          if (v64 <= &v58 && v64 + 24 * v36 > &v58)
          {
            v54 = &v58 - v64;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v36 + 1, 24);
            v38 = v64;
            v37 = v64 + v54;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v36 + 1, 24);
            v37 = &v58;
            v38 = v64;
          }
        }

        v39 = &v38[24 * v65];
        v40 = *v37;
        *(v39 + 2) = *(v37 + 2);
        *v39 = v40;
        ++v65;
      }
    }

    v57 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
    v58 = mlir::AffineMapAttr::getValue(&v57);
    AttrData = mlir::OpaqueAttr::getAttrData(&v58);
    if (v62)
    {
      v61 = 261;
      v58 = AttrData;
      v59 = v42;
      mlir::Diagnostic::operator<<(v63, &v58);
    }

    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v62);
    if (v62)
    {
      mlir::InFlightDiagnostic::report(&v62);
    }

    if (v73 == 1)
    {
      if (v72 != &v73)
      {
        free(v72);
      }

      v43 = __p;
      if (__p)
      {
        v44 = v71;
        v45 = __p;
        if (v71 != __p)
        {
          do
          {
            v44 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v44 - 1);
          }

          while (v44 != v43);
          v45 = __p;
        }

        v71 = v43;
        operator delete(v45);
      }

      v15 = v68;
      if (!v68)
      {
        goto LABEL_58;
      }

      v46 = v69;
      v17 = v68;
      if (v69 == v68)
      {
        goto LABEL_57;
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

      while (v46 != v15);
      goto LABEL_56;
    }
  }

  else
  {
    v55[0] = "'";
    v56 = 259;
    mlir::OpState::emitOpError(this, v55, &v62);
    v57 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
    v58 = mlir::AffineMapAttr::getValue(&v57);
    v5 = mlir::OpaqueAttr::getAttrData(&v58);
    if (v62)
    {
      v61 = 261;
      v58 = v5;
      v59 = v6;
      mlir::Diagnostic::operator<<(v63, &v58);
      if (v62)
      {
        LODWORD(v58) = 3;
        v59 = "' does not reference a valid global memref";
        v60 = 42;
        v7 = &v58;
        v8 = v64;
        if (v65 >= v66)
        {
          if (v64 <= &v58 && v64 + 24 * v65 > &v58)
          {
            v50 = &v58 - v64;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
            v8 = v64;
            v7 = v64 + v50;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v67, v65 + 1, 24);
            v7 = &v58;
            v8 = v64;
          }
        }

        v9 = &v8[24 * v65];
        v10 = *v7;
        *(v9 + 2) = *(v7 + 2);
        *v9 = v10;
        ++v65;
      }
    }

    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v62);
    if (v62)
    {
      mlir::InFlightDiagnostic::report(&v62);
    }

    if (v73 == 1)
    {
      if (v72 != &v73)
      {
        free(v72);
      }

      v12 = __p;
      if (__p)
      {
        v13 = v71;
        v14 = __p;
        if (v71 != __p)
        {
          do
          {
            v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v71 = v12;
        operator delete(v14);
      }

      v15 = v68;
      if (!v68)
      {
        goto LABEL_58;
      }

      v16 = v69;
      v17 = v68;
      if (v69 == v68)
      {
LABEL_57:
        v69 = v15;
        operator delete(v17);
LABEL_58:
        if (v64 != v67)
        {
          free(v64);
        }

        return v11;
      }

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
LABEL_56:
      v17 = v68;
      goto LABEL_57;
    }
  }

  return v11;
}

__n128 mlir::InFlightDiagnostic::operator<<<unsigned long>(uint64_t a1, uint64_t *a2)
{
  if (*a1)
  {
    v2 = *(a1 + 24);
    v3 = *a2;
    v11 = 5;
    v12 = v3;
    v4 = *(a1 + 32);
    v5 = &v11;
    if (v4 >= *(a1 + 36))
    {
      if (v2 <= &v11 && v2 + 24 * v4 > &v11)
      {
        v9 = &v11 - v2;
        v10 = a1;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, a1 + 40, v4 + 1, 24);
        a1 = v10;
        v2 = *(v10 + 24);
        v5 = &v9[v2];
      }

      else
      {
        v8 = a1;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, a1 + 40, v4 + 1, 24);
        a1 = v8;
        v2 = *(v8 + 24);
        v5 = &v11;
      }
    }

    v6 = (v2 + 24 * *(a1 + 32));
    result = *v5;
    v6[1].n128_u64[0] = v5[1].n128_u64[0];
    *v6 = result;
    ++*(a1 + 32);
  }

  return result;
}

BOOL mlir::memref::MemorySpaceCastOp::areCastCompatible(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = 0;
  if (a2 == 1 && a4 == 1)
  {
    v30[3] = v4;
    v30[4] = v5;
    v9 = mlir::TypeRange::dereference_iterator(a1, 0);
    v10 = mlir::TypeRange::dereference_iterator(a3, 0);
    v11 = *(*v9 + 136);
    if (v11 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0;
    }

    v30[0] = v12;
    v13 = *(*v10 + 136);
    if (v13 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      v14 = v10;
    }

    else
    {
      v14 = 0;
    }

    if (v11 == &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
    {
      v15 = v9;
    }

    else
    {
      v15 = 0;
    }

    if (v13 == &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
    {
      v16 = v10;
    }

    else
    {
      v16 = 0;
    }

    v28 = v15;
    v29 = v14;
    v27 = v16;
    if (v11 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id && v13 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      RHS = mlir::AffineBinaryOpExpr::getRHS(v30);
      if (RHS == mlir::AffineBinaryOpExpr::getRHS(&v29))
      {
        RawStringData = mlir::DenseElementsAttr::getRawStringData(v30);
        if (RawStringData == mlir::DenseElementsAttr::getRawStringData(&v29))
        {
          Value = mlir::ArrayAttr::getValue(v30);
          v24 = v23;
          v25 = mlir::ArrayAttr::getValue(&v29);
          if (v24 == v26 && !memcmp(Value, v25, 8 * v24))
          {
            return 1;
          }
        }
      }
    }

    else if (v11 == &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id && v13 == &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
    {
      v19 = mlir::AffineMapAttr::getValue(&v28);
      return v19 == mlir::AffineMapAttr::getValue(&v27);
    }

    return 0;
  }

  return result;
}

uint64_t mlir::memref::MemorySpaceCastOp::fold(uint64_t *a1)
{
  v10 = *(*(*a1 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v10);
  if (!DefiningOp || *(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::memref::MemorySpaceCastOp,void>::id)
  {
    return 4;
  }

  v4 = *a1;
  v5 = *(*a1 + 72);
  v6 = *(*(DefiningOp + 72) + 24);
  v7 = v5[1];
  if (v7)
  {
    v8 = *v5;
    *v7 = *v5;
    if (v8)
    {
      *(v8 + 8) = v7;
    }
  }

  v5[3] = v6;
  v9 = *v6;
  *v5 = *v6;
  v5[1] = v6;
  if (v9)
  {
    *(v9 + 8) = v5;
  }

  *v6 = v5;
  return (v4 - 16) | 4;
}

BOOL mlir::memref::PrefetchOp::parse(mlir::AsmParser *a1, mlir::Attribute *a2)
{
  v65[16] = *MEMORY[0x1E69E9840];
  memset(v51, 0, 24);
  v63 = v65;
  v64 = 0x400000000;
  v49 = 0;
  v50 = 0;
  v47 = 0;
  v48 = 0;
  v45 = 0;
  v46 = 0;
  v4 = (*(*a1 + 32))(a1);
  IndexType = mlir::Builder::getIndexType(v4, v5);
  v7 = (*(*a1 + 32))(a1);
  IntegerType = mlir::Builder::getIntegerType(v7, 32);
  if (((*(*a1 + 704))(a1, v51, 1) & 1) == 0 || ((*(*a1 + 720))(a1, &v63, 2, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 120))(a1) & 1) == 0 || !mlir::AsmParser::parseKeyword(a1, &v47) || ((*(*a1 + 120))(a1) & 1) == 0 || (v55 = 257, ((*(*a1 + 400))(a1, "locality", 8, &v52) & 1) == 0) || ((*(*a1 + 152))(a1) & 1) == 0 || !mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(a1, &v50, IntegerType, "localityHint", 12, a2 + 112) || ((*(*a1 + 168))(a1) & 1) == 0 || ((*(*a1 + 120))(a1) & 1) == 0 || !mlir::AsmParser::parseKeyword(a1, &v45) || !mlir::AsmParser::parseColonType<mlir::MemRefType>(a1, &v49) || ((*(*a1 + 728))(a1, v51, v49, a2 + 16) & 1) == 0)
  {
LABEL_34:
    v12 = 0;
    goto LABEL_35;
  }

  if (v64)
  {
    v9 = v63;
    v10 = 32 * v64;
    while (((*(*a1 + 728))(a1, v9, IndexType, a2 + 16) & 1) != 0)
    {
      v9 += 32;
      v10 -= 32;
      if (!v10)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_34;
  }

LABEL_18:
  if (v48 == 5)
  {
    if (*v47 != 1953067639 || *(v47 + 4) != 101)
    {
LABEL_21:
      v11 = (*(*a1 + 16))(a1);
      v42 = "rw specifier has to be 'read' or 'write'";
      v44 = 259;
      (*(*a1 + 24))(&v52, a1, v11, &v42);
      v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v52);
      if (v52)
      {
        mlir::InFlightDiagnostic::report(&v52);
      }

      if (v62 == 1)
      {
        if (v61 != &v62)
        {
          free(v61);
        }

        v13 = __p;
        if (__p)
        {
          v14 = v60;
          v15 = __p;
          if (v60 != __p)
          {
            do
            {
              v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
            }

            while (v14 != v13);
            v15 = __p;
          }

          v60 = v13;
          operator delete(v15);
        }

        v16 = v57;
        if (!v57)
        {
          goto LABEL_75;
        }

        v17 = v58;
        v18 = v57;
        if (v58 == v57)
        {
LABEL_74:
          v58 = v16;
          operator delete(v18);
LABEL_75:
          if (v54 != &v56)
          {
            free(v54);
          }

          goto LABEL_35;
        }

        do
        {
          v21 = *--v17;
          v20 = v21;
          *v17 = 0;
          if (v21)
          {
            operator delete[](v20);
          }
        }

        while (v17 != v16);
LABEL_73:
        v18 = v57;
        goto LABEL_74;
      }

      goto LABEL_35;
    }
  }

  else if (v48 != 4 || *v47 != 1684104562)
  {
    goto LABEL_21;
  }

  v23 = (*(*a1 + 32))(a1);
  v25 = (v48 == 5 && *v47 == 1953067639 && *(v47 + 4) == 101);
  BoolAttr = mlir::Builder::getBoolAttr(v23, v25);
  Context = mlir::Attribute::getContext(a2);
  v55 = 261;
  v52 = "isWrite";
  v53 = 7;
  v28 = mlir::StringAttr::get(Context, &v52);
  mlir::NamedAttribute::NamedAttribute(&v42, v28, BoolAttr);
  mlir::NamedAttrList::push_back(a2 + 112, v42, v43);
  if (v46 != 5)
  {
    if (v46 != 4 || *v45 != 1635017060)
    {
      goto LABEL_57;
    }

LABEL_82:
    v37 = (*(*a1 + 32))(a1);
    if (v46 == 4)
    {
      v38 = (*v45 == 1635017060);
    }

    else
    {
      v38 = 0;
    }

    v39 = mlir::Builder::getBoolAttr(v37, v38);
    v40 = mlir::Attribute::getContext(a2);
    v55 = 261;
    v52 = "isDataCache";
    v53 = 11;
    v41 = mlir::StringAttr::get(v40, &v52);
    mlir::NamedAttribute::NamedAttribute(&v42, v41, v39);
    mlir::NamedAttrList::push_back(a2 + 112, v42, v43);
    v12 = 1;
    goto LABEL_35;
  }

  if (*v45 == 1953721961 && *(v45 + 4) == 114)
  {
    goto LABEL_82;
  }

LABEL_57:
  v29 = (*(*a1 + 16))(a1);
  v42 = "cache type has to be 'data' or 'instr'";
  v44 = 259;
  (*(*a1 + 24))(&v52, a1, v29, &v42);
  v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v52);
  if (v52)
  {
    mlir::InFlightDiagnostic::report(&v52);
  }

  if (v62 == 1)
  {
    if (v61 != &v62)
    {
      free(v61);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v60;
      v32 = __p;
      if (v60 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v60 = v30;
      operator delete(v32);
    }

    v16 = v57;
    if (!v57)
    {
      goto LABEL_75;
    }

    v33 = v58;
    v18 = v57;
    if (v58 == v57)
    {
      goto LABEL_74;
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

    while (v33 != v16);
    goto LABEL_73;
  }

LABEL_35:
  if (v63 != v65)
  {
    free(v63);
  }

  return v12;
}

BOOL mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = *MEMORY[0x1E69E9840];
  v12 = (*(*a1 + 40))(a1);
  v26 = 0;
  if (((*(*a1 + 440))(a1, &v26, a3) & 1) == 0)
  {
    return 0;
  }

  if (*(*v26 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v13 = v26;
  }

  else
  {
    v13 = 0;
  }

  *a2 = v13;
  if (v13)
  {
    mlir::NamedAttrList::append(a6, a4, a5, v13);
    return 1;
  }

  else
  {
    v24 = "invalid kind of attribute specified";
    v25 = 259;
    (*(*a1 + 24))(v27, a1, v12, &v24);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
    v15 = result;
    if (v27[0])
    {
      mlir::InFlightDiagnostic::report(v27);
      result = v15;
    }

    if (v35 == 1)
    {
      if (v34 != &v35)
      {
        free(v34);
        result = v15;
      }

      v16 = __p;
      if (__p)
      {
        v17 = v33;
        v18 = __p;
        if (v33 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v33 = v16;
        operator delete(v18);
        result = v15;
      }

      v19 = v30;
      if (v30)
      {
        v20 = v31;
        v21 = v30;
        if (v31 != v30)
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
          v21 = v30;
        }

        v31 = v19;
        operator delete(v21);
        result = v15;
      }

      if (v28 != &v29)
      {
        free(v28);
        return v15;
      }
    }
  }

  return result;
}

BOOL mlir::AsmParser::parseColonType<mlir::MemRefType>(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 40))(a1);
  v18 = 0;
  if (((*(*a1 + 576))(a1, &v18) & 1) == 0)
  {
    return 0;
  }

  v5 = v18;
  if (*(*v18 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
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

void *mlir::memref::RankOp::fold(uint64_t a1)
{
  result = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(*(*(*a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
  v8[0] = result;
  v8[1] = v3;
  if (result)
  {
    if (mlir::CallOpInterface::getArgOperands(v8))
    {
      Context = mlir::Attribute::getContext((*a1 + 24));
      v6 = mlir::IndexType::get(Context, v5);
      mlir::CallableOpInterface::getArgAttrsAttr(v8);
      return (mlir::IntegerAttr::get(v6, v7) & 0xFFFFFFFFFFFFFFFBLL);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::memref::ReinterpretCastOp::getAsmResultNames(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
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

  return a2(a3, NextResultAtOffset, "reinterpret_cast", 16);
}

BOOL mlir::memref::ReinterpretCastOp::verify(mlir::Block ***this)
{
  v192 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v173 = *(*((*this)[9] + 3) + 8) & 0xFFFFFFFFFFFFFFF8;
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

  v172 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  MemorySpace = mlir::BaseMemRefType::getMemorySpace(&v173);
  if (MemorySpace != mlir::MemRefType::getMemorySpace(&v172))
  {
    v177 = "different memory spaces specified for source type ";
    v180 = 259;
    mlir::OpState::emitError(this, &v177, v181);
    if (v181[0])
    {
      v51 = &v167;
      mlir::DiagnosticArgument::DiagnosticArgument(&v167, v173);
      v52 = v182;
      if (v183 >= v184)
      {
        if (v182 <= &v167 && v182 + 24 * v183 > &v167)
        {
          v149 = &v167 - v182;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v182, v185, v183 + 1, 24);
          v52 = v182;
          v51 = (v182 + v149);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v182, v185, v183 + 1, 24);
          v51 = &v167;
          v52 = v182;
        }
      }

      v53 = &v52[24 * v183];
      v54 = *v51;
      *(v53 + 2) = v51[2];
      *v53 = v54;
      v55 = ++v183;
      if (v181[0])
      {
        LODWORD(v167) = 3;
        v168 = " and result memref type ";
        v169 = 24;
        v56 = &v167;
        v57 = v182;
        if (v55 >= v184)
        {
          if (v182 <= &v167 && v182 + 24 * v55 > &v167)
          {
            v150 = &v167 - v182;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v182, v185, v55 + 1, 24);
            v57 = v182;
            v56 = (v182 + v150);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v182, v185, v55 + 1, 24);
            v56 = &v167;
            v57 = v182;
          }
        }

        v58 = &v57[24 * v183];
        v59 = *v56;
        *(v58 + 2) = v56[2];
        *v58 = v59;
        ++v183;
        if (v181[0])
        {
          v60 = &v167;
          mlir::DiagnosticArgument::DiagnosticArgument(&v167, v172);
          v61 = v182;
          if (v183 >= v184)
          {
            if (v182 <= &v167 && v182 + 24 * v183 > &v167)
            {
              v152 = &v167 - v182;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v182, v185, v183 + 1, 24);
              v61 = v182;
              v60 = (v182 + v152);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v182, v185, v183 + 1, 24);
              v60 = &v167;
              v61 = v182;
            }
          }

          v62 = &v61[24 * v183];
          v63 = *v60;
          *(v62 + 2) = v60[2];
          *v62 = v63;
          ++v183;
        }
      }
    }

    v44 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v181);
    if (v181[0])
    {
      mlir::InFlightDiagnostic::report(v181);
    }

    if (v191 != 1)
    {
      return v44;
    }

    if (v190 != &v191)
    {
      free(v190);
    }

    v64 = __p;
    if (__p)
    {
      v65 = v189;
      v66 = __p;
      if (v189 != __p)
      {
        do
        {
          v65 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v65 - 1);
        }

        while (v65 != v64);
        v66 = __p;
      }

      v189 = v64;
      operator delete(v66);
    }

    v48 = v186;
    if (!v186)
    {
      goto LABEL_94;
    }

    v67 = v187;
    v50 = v186;
    if (v187 == v186)
    {
      goto LABEL_93;
    }

    do
    {
      v69 = *--v67;
      v68 = v69;
      *v67 = 0;
      if (v69)
      {
        operator delete[](v68);
      }
    }

    while (v67 != v48);
    goto LABEL_92;
  }

  ElementType = mlir::BaseMemRefType::getElementType(&v173);
  if (ElementType != mlir::AffineBinaryOpExpr::getRHS(&v172))
  {
    v177 = "different element types specified for source type ";
    v180 = 259;
    mlir::OpState::emitError(this, &v177, v181);
    if (v181[0])
    {
      v72 = &v167;
      mlir::DiagnosticArgument::DiagnosticArgument(&v167, v173);
      v73 = v182;
      if (v183 >= v184)
      {
        if (v182 <= &v167 && v182 + 24 * v183 > &v167)
        {
          v151 = &v167 - v182;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v182, v185, v183 + 1, 24);
          v73 = v182;
          v72 = (v182 + v151);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v182, v185, v183 + 1, 24);
          v72 = &v167;
          v73 = v182;
        }
      }

      v74 = &v73[24 * v183];
      v75 = *v72;
      *(v74 + 2) = v72[2];
      *v74 = v75;
      v76 = ++v183;
      if (v181[0])
      {
        LODWORD(v167) = 3;
        v168 = " and result memref type ";
        v169 = 24;
        v77 = &v167;
        v78 = v182;
        if (v76 >= v184)
        {
          if (v182 <= &v167 && v182 + 24 * v76 > &v167)
          {
            v153 = &v167 - v182;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v182, v185, v76 + 1, 24);
            v78 = v182;
            v77 = (v182 + v153);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v182, v185, v76 + 1, 24);
            v77 = &v167;
            v78 = v182;
          }
        }

        v79 = &v78[24 * v183];
        v80 = *v77;
        *(v79 + 2) = v77[2];
        *v79 = v80;
        ++v183;
        if (v181[0])
        {
          v81 = &v167;
          mlir::DiagnosticArgument::DiagnosticArgument(&v167, v172);
          v82 = v182;
          if (v183 >= v184)
          {
            if (v182 <= &v167 && v182 + 24 * v183 > &v167)
            {
              v155 = &v167 - v182;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v182, v185, v183 + 1, 24);
              v82 = v182;
              v81 = (v182 + v155);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v182, v185, v183 + 1, 24);
              v81 = &v167;
              v82 = v182;
            }
          }

          v83 = &v82[24 * v183];
          v84 = *v81;
          *(v83 + 2) = v81[2];
          *v83 = v84;
          ++v183;
        }
      }
    }

    v44 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v181);
    if (v181[0])
    {
      mlir::InFlightDiagnostic::report(v181);
    }

    if (v191 != 1)
    {
      return v44;
    }

    if (v190 != &v191)
    {
      free(v190);
    }

    v85 = __p;
    if (__p)
    {
      v86 = v189;
      v87 = __p;
      if (v189 != __p)
      {
        do
        {
          v86 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v86 - 1);
        }

        while (v86 != v85);
        v87 = __p;
      }

      v189 = v85;
      operator delete(v87);
    }

    v48 = v186;
    if (!v186)
    {
      goto LABEL_94;
    }

    v88 = v187;
    v50 = v186;
    if (v187 == v186)
    {
      goto LABEL_93;
    }

    do
    {
      v90 = *--v88;
      v89 = v90;
      *v88 = 0;
      if (v90)
      {
        operator delete[](v89);
      }
    }

    while (v88 != v48);
    goto LABEL_92;
  }

  Value = mlir::ArrayAttr::getValue(&v172);
  v10 = v9;
  v181[0] = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 9];
  v11 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(v181);
  if (!v10)
  {
LABEL_87:
    v171 = 0;
    v177 = v179;
    v178 = 0x400000000;
    if (mlir::getStridesAndOffset(v172, &v177, &v171))
    {
      v181[0] = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 8];
      v91 = *mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(v181);
      v166 = v91;
      if (v171 != 0x8000000000000000 && v91 != 0x8000000000000000 && v171 != v91)
      {
        v167 = "expected result type with offset = ";
        v170 = 259;
        mlir::OpState::emitError(this, &v167, v181);
        mlir::InFlightDiagnostic::operator<<<long long &>(v181, &v166);
        mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v92, " instead of ");
        mlir::InFlightDiagnostic::operator<<<long long &>(v93, &v171);
        v44 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v94);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v181);
        goto LABEL_156;
      }

      v181[0] = (*this)[2 * ((*(*this + 11) >> 23) & 1) + 10];
      v109 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(v181);
      if (!v178)
      {
LABEL_151:
        v44 = 1;
        goto LABEL_156;
      }

      v110 = 0;
      v111 = v177;
      v112 = 8 * v178;
      while (1)
      {
        v113 = *&v177[8 * v110];
        if (v113 != 0x8000000000000000)
        {
          v114 = *(v109 + 8 * v110);
          if (v114 != 0x8000000000000000 && v113 != v114)
          {
            break;
          }
        }

        ++v110;
        v112 -= 8;
        if (!v112)
        {
          goto LABEL_151;
        }
      }

      v116 = v109;
      v167 = "expected result type with stride = ";
      v170 = 259;
      mlir::OpState::emitError(this, &v167, v181);
      if (v181[0])
      {
        v117 = *(v116 + 8 * v110);
        v174 = 2;
        v175 = v117;
        v118 = &v174;
        v119 = v182;
        if (v183 >= v184)
        {
          if (v182 <= &v174 && v182 + 24 * v183 > &v174)
          {
            v160 = &v174 - v182;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v182, v185, v183 + 1, 24);
            v119 = v182;
            v118 = (v182 + v160);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v182, v185, v183 + 1, 24);
            v118 = &v174;
            v119 = v182;
          }
        }

        v120 = &v119[24 * v183];
        v121 = *v118;
        *(v120 + 2) = *(v118 + 2);
        *v120 = v121;
        v122 = ++v183;
        if (v181[0])
        {
          v174 = 3;
          v175 = " instead of ";
          v176 = 12;
          v123 = &v174;
          v124 = v182;
          if (v122 >= v184)
          {
            if (v182 <= &v174 && v182 + 24 * v122 > &v174)
            {
              v162 = &v174 - v182;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v182, v185, v122 + 1, 24);
              v124 = v182;
              v123 = (v182 + v162);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v182, v185, v122 + 1, 24);
              v123 = &v174;
              v124 = v182;
            }
          }

          v125 = &v124[24 * v183];
          v126 = *v123;
          *(v125 + 2) = *(v123 + 2);
          *v125 = v126;
          v127 = ++v183;
          if (v181[0])
          {
            v128 = *&v111[8 * v110];
            v174 = 2;
            v175 = v128;
            v129 = &v174;
            v130 = v182;
            if (v127 >= v184)
            {
              if (v182 <= &v174 && v182 + 24 * v127 > &v174)
              {
                v163 = &v174 - v182;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v182, v185, v127 + 1, 24);
                v130 = v182;
                v129 = (v182 + v163);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v182, v185, v127 + 1, 24);
                v129 = &v174;
                v130 = v182;
              }
            }

            v131 = &v130[24 * v183];
            v132 = *v129;
            *(v131 + 2) = *(v129 + 2);
            *v131 = v132;
            v133 = ++v183;
            if (v181[0])
            {
              v174 = 3;
              v175 = " in dim = ";
              v176 = 10;
              v134 = &v174;
              v135 = v182;
              if (v133 >= v184)
              {
                if (v182 <= &v174 && v182 + 24 * v133 > &v174)
                {
                  v164 = &v174 - v182;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v182, v185, v133 + 1, 24);
                  v135 = v182;
                  v134 = (v182 + v164);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v182, v185, v133 + 1, 24);
                  v134 = &v174;
                  v135 = v182;
                }
              }

              v136 = &v135[24 * v183];
              v137 = *v134;
              *(v136 + 2) = *(v134 + 2);
              *v136 = v137;
              v138 = ++v183;
              if (v181[0])
              {
                v174 = 5;
                v175 = v110;
                v139 = &v174;
                v140 = v182;
                if (v138 >= v184)
                {
                  if (v182 <= &v174 && v182 + 24 * v138 > &v174)
                  {
                    v165 = &v174 - v182;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v182, v185, v138 + 1, 24);
                    v140 = v182;
                    v139 = (v182 + v165);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v182, v185, v138 + 1, 24);
                    v139 = &v174;
                    v140 = v182;
                  }
                }

                v141 = &v140[24 * v183];
                v142 = *v139;
                *(v141 + 2) = *(v139 + 2);
                *v141 = v142;
                ++v183;
              }
            }
          }
        }
      }

      v44 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v181);
      if (v181[0])
      {
        mlir::InFlightDiagnostic::report(v181);
      }

      if (v191)
      {
        if (v190 != &v191)
        {
          free(v190);
        }

        v143 = __p;
        if (__p)
        {
          v144 = v189;
          v145 = __p;
          if (v189 != __p)
          {
            do
            {
              v144 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v144 - 1);
            }

            while (v144 != v143);
            v145 = __p;
          }

          v189 = v143;
          operator delete(v145);
        }

        v104 = v186;
        if (!v186)
        {
          goto LABEL_154;
        }

        v146 = v187;
        v106 = v186;
        if (v187 == v186)
        {
LABEL_153:
          v187 = v104;
          operator delete(v106);
LABEL_154:
          if (v182 != v185)
          {
            free(v182);
          }

          goto LABEL_156;
        }

        do
        {
          v148 = *--v146;
          v147 = v148;
          *v146 = 0;
          if (v148)
          {
            operator delete[](v147);
          }
        }

        while (v146 != v104);
LABEL_152:
        v106 = v186;
        goto LABEL_153;
      }
    }

    else
    {
      v167 = "expected result type to have strided layout but found ";
      v170 = 259;
      mlir::OpState::emitError(this, &v167, v181);
      if (v181[0])
      {
        v97 = &v174;
        mlir::DiagnosticArgument::DiagnosticArgument(&v174, v172);
        v98 = v182;
        if (v183 >= v184)
        {
          if (v182 <= &v174 && v182 + 24 * v183 > &v174)
          {
            v154 = &v174 - v182;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v182, v185, v183 + 1, 24);
            v98 = v182;
            v97 = (v182 + v154);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v182, v185, v183 + 1, 24);
            v97 = &v174;
            v98 = v182;
          }
        }

        v99 = &v98[24 * v183];
        v100 = *v97;
        *(v99 + 2) = *(v97 + 2);
        *v99 = v100;
        ++v183;
      }

      v44 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v181);
      if (v181[0])
      {
        mlir::InFlightDiagnostic::report(v181);
      }

      if (v191 == 1)
      {
        if (v190 != &v191)
        {
          free(v190);
        }

        v101 = __p;
        if (__p)
        {
          v102 = v189;
          v103 = __p;
          if (v189 != __p)
          {
            do
            {
              v102 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v102 - 1);
            }

            while (v102 != v101);
            v103 = __p;
          }

          v189 = v101;
          operator delete(v103);
        }

        v104 = v186;
        if (!v186)
        {
          goto LABEL_154;
        }

        v105 = v187;
        v106 = v186;
        if (v187 == v186)
        {
          goto LABEL_153;
        }

        do
        {
          v108 = *--v105;
          v107 = v108;
          *v105 = 0;
          if (v108)
          {
            operator delete[](v107);
          }
        }

        while (v105 != v104);
        goto LABEL_152;
      }
    }

LABEL_156:
    v95 = v177;
    if (v177 == v179)
    {
      return v44;
    }

    goto LABEL_95;
  }

  v12 = 0;
  v13 = 8 * v10;
  while (1)
  {
    v14 = *(Value + 8 * v12);
    if (v14 != 0x8000000000000000)
    {
      v15 = *(v11 + 8 * v12);
      if (v15 != 0x8000000000000000 && v14 != v15)
      {
        break;
      }
    }

    ++v12;
    v13 -= 8;
    if (!v13)
    {
      goto LABEL_87;
    }
  }

  v17 = v11;
  v177 = "expected result type with size = ";
  v180 = 259;
  mlir::OpState::emitError(this, &v177, v181);
  if (v181[0])
  {
    v18 = *(v17 + 8 * v12);
    LODWORD(v167) = 2;
    v168 = v18;
    v19 = &v167;
    v20 = v182;
    if (v183 >= v184)
    {
      if (v182 <= &v167 && v182 + 24 * v183 > &v167)
      {
        v156 = &v167 - v182;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v182, v185, v183 + 1, 24);
        v20 = v182;
        v19 = (v182 + v156);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v182, v185, v183 + 1, 24);
        v19 = &v167;
        v20 = v182;
      }
    }

    v21 = &v20[24 * v183];
    v22 = *v19;
    *(v21 + 2) = v19[2];
    *v21 = v22;
    v23 = ++v183;
    if (v181[0])
    {
      LODWORD(v167) = 3;
      v168 = " instead of ";
      v169 = 12;
      v24 = &v167;
      v25 = v182;
      if (v23 >= v184)
      {
        if (v182 <= &v167 && v182 + 24 * v23 > &v167)
        {
          v157 = &v167 - v182;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v182, v185, v23 + 1, 24);
          v25 = v182;
          v24 = (v182 + v157);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v182, v185, v23 + 1, 24);
          v24 = &v167;
          v25 = v182;
        }
      }

      v26 = &v25[24 * v183];
      v27 = *v24;
      *(v26 + 2) = v24[2];
      *v26 = v27;
      v28 = ++v183;
      if (v181[0])
      {
        v29 = *(Value + 8 * v12);
        LODWORD(v167) = 2;
        v168 = v29;
        v30 = &v167;
        v31 = v182;
        if (v28 >= v184)
        {
          if (v182 <= &v167 && v182 + 24 * v28 > &v167)
          {
            v158 = &v167 - v182;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v182, v185, v28 + 1, 24);
            v31 = v182;
            v30 = (v182 + v158);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v182, v185, v28 + 1, 24);
            v30 = &v167;
            v31 = v182;
          }
        }

        v32 = &v31[24 * v183];
        v33 = *v30;
        *(v32 + 2) = v30[2];
        *v32 = v33;
        v34 = ++v183;
        if (v181[0])
        {
          LODWORD(v167) = 3;
          v168 = " in dim = ";
          v169 = 10;
          v35 = &v167;
          v36 = v182;
          if (v34 >= v184)
          {
            if (v182 <= &v167 && v182 + 24 * v34 > &v167)
            {
              v159 = &v167 - v182;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v182, v185, v34 + 1, 24);
              v36 = v182;
              v35 = (v182 + v159);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v182, v185, v34 + 1, 24);
              v35 = &v167;
              v36 = v182;
            }
          }

          v37 = &v36[24 * v183];
          v38 = *v35;
          *(v37 + 2) = v35[2];
          *v37 = v38;
          v39 = ++v183;
          if (v181[0])
          {
            LODWORD(v167) = 5;
            v168 = v12;
            v40 = &v167;
            v41 = v182;
            if (v39 >= v184)
            {
              if (v182 <= &v167 && v182 + 24 * v39 > &v167)
              {
                v161 = &v167 - v182;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v182, v185, v39 + 1, 24);
                v41 = v182;
                v40 = (v182 + v161);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v182, v185, v39 + 1, 24);
                v40 = &v167;
                v41 = v182;
              }
            }

            v42 = &v41[24 * v183];
            v43 = *v40;
            *(v42 + 2) = v40[2];
            *v42 = v43;
            ++v183;
          }
        }
      }
    }
  }

  v44 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v181);
  if (v181[0])
  {
    mlir::InFlightDiagnostic::report(v181);
  }

  if ((v191 & 1) == 0)
  {
    return v44;
  }

  if (v190 != &v191)
  {
    free(v190);
  }

  v45 = __p;
  if (__p)
  {
    v46 = v189;
    v47 = __p;
    if (v189 != __p)
    {
      do
      {
        v46 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v46 - 1);
      }

      while (v46 != v45);
      v47 = __p;
    }

    v189 = v45;
    operator delete(v47);
  }

  v48 = v186;
  if (v186)
  {
    v49 = v187;
    v50 = v186;
    if (v187 == v186)
    {
      goto LABEL_93;
    }

    do
    {
      v71 = *--v49;
      v70 = v71;
      *v49 = 0;
      if (v71)
      {
        operator delete[](v70);
      }
    }

    while (v49 != v48);
LABEL_92:
    v50 = v186;
LABEL_93:
    v187 = v48;
    operator delete(v50);
  }

LABEL_94:
  v95 = v182;
  if (v182 != v185)
  {
LABEL_95:
    free(v95);
  }

  return v44;
}

__n128 mlir::InFlightDiagnostic::operator<<<long long &>(uint64_t a1, uint64_t *a2)
{
  if (*a1)
  {
    v2 = *(a1 + 24);
    v3 = *a2;
    v11 = 2;
    v12 = v3;
    v4 = *(a1 + 32);
    v5 = &v11;
    if (v4 >= *(a1 + 36))
    {
      if (v2 <= &v11 && v2 + 24 * v4 > &v11)
      {
        v9 = &v11 - v2;
        v10 = a1;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, a1 + 40, v4 + 1, 24);
        a1 = v10;
        v2 = *(v10 + 24);
        v5 = &v9[v2];
      }

      else
      {
        v8 = a1;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, a1 + 40, v4 + 1, 24);
        a1 = v8;
        v2 = *(v8 + 24);
        v5 = &v11;
      }
    }

    v6 = (v2 + 24 * *(a1 + 32));
    result = *v5;
    v6[1].n128_u64[0] = v5[1].n128_u64[0];
    *v6 = result;
    ++*(a1 + 32);
  }

  return result;
}

uint64_t mlir::memref::ReinterpretCastOp::fold(uint64_t *a1)
{
  v33[4] = *MEMORY[0x1E69E9840];
  v29 = *(*(*a1 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v29);
  if (!DefiningOp || *(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::memref::ReinterpretCastOp,void>::id)
  {
    DefiningOp = mlir::Value::getDefiningOp(&v29);
    if (!DefiningOp || *(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::memref::CastOp,void>::id)
    {
      v3 = mlir::Value::getDefiningOp(&v29);
      if (!v3)
      {
        goto LABEL_34;
      }

      v4 = *(*(v3 + 48) + 16);
      v5 = v4 == &mlir::detail::TypeIDResolver<mlir::memref::SubViewOp,void>::id;
      v6 = v4 == &mlir::detail::TypeIDResolver<mlir::memref::SubViewOp,void>::id ? v3 : 0;
      v30 = v6;
      if (!v5)
      {
        goto LABEL_34;
      }

      mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::memref::ReinterpretCastOp>::getMixedOffsets(&v30, &v31);
      v7 = v31;
      if (v32)
      {
        v8 = 8 * v32 - 8;
        do
        {
          v9 = *v7++;
          isConstantIntValue = mlir::isConstantIntValue(v9, 0);
          if (isConstantIntValue)
          {
            v11 = v8 == 0;
          }

          else
          {
            v11 = 1;
          }

          v8 -= 8;
        }

        while (!v11);
        v7 = v31;
      }

      else
      {
        isConstantIntValue = 1;
      }

      if (v7 != v33)
      {
        v22 = isConstantIntValue;
        free(v7);
        isConstantIntValue = v22;
      }

      if (!isConstantIntValue)
      {
        goto LABEL_34;
      }

      v12 = *(*(v30 + 72) + 24);
      if (!v12)
      {
        goto LABEL_34;
      }

LABEL_20:
      v13 = *a1;
      v14 = *(*a1 + 72);
      v15 = v14[1];
      if (v15)
      {
        v16 = *v14;
        *v15 = *v14;
        if (v16)
        {
          *(v16 + 8) = v15;
        }
      }

      v14[3] = v12;
      v14[1] = v12;
      v17 = *v12;
      *v14 = *v12;
      if (v17)
      {
        *(v17 + 8) = v14;
      }

      *v12 = v14;
      v18 = *(v13 + 36);
      v19 = v13 - 16;
      if (v18)
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      return mlir::detail::OpResultImpl::getNextResultAtOffset(v20, 0) | 4;
    }
  }

  v12 = *(*(DefiningOp + 72) + 24);
  if (v12)
  {
    goto LABEL_20;
  }

LABEL_34:
  if (*(*a1 + 36))
  {
    v23 = *a1 - 16;
  }

  else
  {
    v23 = 0;
  }

  v30 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v23, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  Value = mlir::ArrayAttr::getValue(&v30);
  if (v25)
  {
    v26 = 8 * v25;
    while (*Value != 0x8000000000000000)
    {
      ++Value;
      v26 -= 8;
      if (!v26)
      {
        goto LABEL_41;
      }
    }

    return 0;
  }

LABEL_41:
  if (*(*a1 + 36))
  {
    v28 = *a1 - 16;
  }

  else
  {
    v28 = 0;
  }

  v27 = *(v29 + 8);
  if ((*(mlir::detail::OpResultImpl::getNextResultAtOffset(v28, 0) + 8) ^ v27) > 7)
  {
    return 0;
  }

  v31 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64);
  if (*mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v31))
  {
    return 0;
  }

  return v29 | 4;
}

void mlir::memref::ReinterpretCastOp::getConstifiedMixedSizes(mlir::memref::ReinterpretCastOp *this@<X0>, uint64_t a2@<X8>)
{
  v15[4] = *MEMORY[0x1E69E9840];
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::memref::ReinterpretCastOp>::getMixedSizes(this, &__src);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  v4 = v13;
  v5 = __src;
  if (v13)
  {
    v6 = &__src == a2;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    if (__src == v15)
    {
      v8 = v13;
      if (v13 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v13, 8), v8 = v13, v5 = __src, v13))
      {
        memcpy(*a2, v5, 8 * v8);
        v5 = __src;
      }

      *(a2 + 8) = v4;
    }

    else
    {
      *a2 = __src;
      v7 = v14;
      *(a2 + 8) = v4;
      *(a2 + 12) = v7;
      __src = v15;
      v14 = 0;
      v5 = v15;
    }

    v13 = 0;
  }

  if (v5 != v15)
  {
    free(v5);
  }

  if (*(*this + 36))
  {
    v9 = *this - 16;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0) + 8);
  Context = mlir::Attribute::getContext((*this + 24));
  constifyIndexValues(a2, v10 & 0xFFFFFFFFFFFFFFF8, Context, llvm::function_ref<llvm::SmallVector<long long,6u> ()(mlir::MemRefType)>::callback_fn<llvm::SmallVector<long long,6u> ()(mlir::MemRefType)>, getConstantSizes, llvm::function_ref<BOOL ()(long long)>::callback_fn<BOOL ()(long long)>, mlir::ShapedType::isDynamic);
}

void mlir::memref::ReinterpretCastOp::getConstifiedMixedStrides(mlir::memref::ReinterpretCastOp *this@<X0>, uint64_t a2@<X8>)
{
  v15[4] = *MEMORY[0x1E69E9840];
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::memref::ReinterpretCastOp>::getMixedStrides(this, &__src);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  v4 = v13;
  v5 = __src;
  if (v13)
  {
    v6 = &__src == a2;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    if (__src == v15)
    {
      v8 = v13;
      if (v13 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v13, 8), v8 = v13, v5 = __src, v13))
      {
        memcpy(*a2, v5, 8 * v8);
        v5 = __src;
      }

      *(a2 + 8) = v4;
    }

    else
    {
      *a2 = __src;
      v7 = v14;
      *(a2 + 8) = v4;
      *(a2 + 12) = v7;
      __src = v15;
      v14 = 0;
      v5 = v15;
    }

    v13 = 0;
  }

  if (v5 != v15)
  {
    free(v5);
  }

  if (*(*this + 36))
  {
    v9 = *this - 16;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0) + 8);
  Context = mlir::Attribute::getContext((*this + 24));
  constifyIndexValues(a2, v10 & 0xFFFFFFFFFFFFFFF8, Context, llvm::function_ref<llvm::SmallVector<long long,6u> ()(mlir::MemRefType)>::callback_fn<llvm::SmallVector<long long,6u> ()(mlir::MemRefType)>, getConstantStrides, llvm::function_ref<BOOL ()(long long)>::callback_fn<BOOL ()(long long)>, mlir::ShapedType::isDynamic);
}

uint64_t mlir::memref::ReinterpretCastOp::getConstifiedMixedOffset(mlir::memref::ReinterpretCastOp *this)
{
  v15[6] = *MEMORY[0x1E69E9840];
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::memref::ReinterpretCastOp>::getMixedOffsets(this, &__src);
  __dst = v15;
  v14 = 0x600000000;
  v2 = v11;
  v3 = __src;
  if (v11)
  {
    if (__src == v12)
    {
      v4 = v11;
      if (v11 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v15, v11, 8), v4 = v11, v3 = __src, v11))
      {
        memcpy(__dst, v3, 8 * v4);
        v3 = __src;
      }

      LODWORD(v14) = v2;
    }

    else
    {
      __dst = __src;
      v14 = v11;
      __src = v12;
      HIDWORD(v11) = 0;
      v3 = v12;
    }

    LODWORD(v11) = 0;
  }

  if (v3 != v12)
  {
    free(v3);
  }

  if (*(*this + 36))
  {
    v5 = *this - 16;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0) + 8);
  Context = mlir::Attribute::getContext((*this + 24));
  constifyIndexValues(&__dst, v6 & 0xFFFFFFFFFFFFFFF8, Context, llvm::function_ref<llvm::SmallVector<long long,6u> ()(mlir::MemRefType)>::callback_fn<llvm::SmallVector<long long,6u> ()(mlir::MemRefType)>, getConstantOffset, llvm::function_ref<BOOL ()(long long)>::callback_fn<BOOL ()(long long)>, mlir::ShapedType::isDynamic);
  v8 = *__dst;
  if (__dst != v15)
  {
    free(__dst);
  }

  return v8;
}

void mlir::memref::ReinterpretCastOp::getCanonicalizationPatterns(void *a1, uint64_t a2)
{
  v4 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v24, 1);
  mlir::Pattern::Pattern((v4 + 2), "memref.reinterpret_cast", 23, v24, a2, 0, 0);
  *v4 = &unk_1F5AFA7C8;
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

  v24 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::ReinterpretCastOpExtractStridedMetadataFolder]";
  v25 = 118;
  v9 = llvm::StringRef::find(&v24, "DesiredTypeName = ", 0x12uLL, 0);
  if (v25 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v25;
  }

  v11 = &v24[v10];
  v12 = v25 - v10;
  if (v25 - v10 >= 0x12)
  {
    v13 = 18;
  }

  else
  {
    v13 = v25 - v10;
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

uint64_t mlir::memref::CollapseShapeOp::getAsmResultNames(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
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

  return a2(a3, NextResultAtOffset, "collapse_shape", 14);
}

uint64_t mlir::memref::ExpandShapeOp::getAsmResultNames(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
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

  return a2(a3, NextResultAtOffset, "expand_shape", 12);
}

void mlir::memref::CollapseShapeOp::getReassociationIndices(mlir::memref::CollapseShapeOp *this@<X0>, uint64_t a2@<X8>)
{
  v26[2] = *MEMORY[0x1E69E9840];
  *a2 = a2 + 16;
  *(a2 + 8) = 0x400000000;
  v22 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  Value = mlir::ArrayAttr::getValue(&v22);
  v4 = mlir::ArrayAttr::getValue(&v22);
  for (i = (v4 + 8 * v5); Value != i; ++Value)
  {
    v21 = *Value;
    v7 = mlir::ArrayAttr::getValue(&v21);
    v8 = mlir::ArrayAttr::getValue(&v21);
    v10 = (v8 + 8 * v9);
    v24 = v26;
    v25 = 0x200000000;
    v11 = v10 - v7;
    v12 = (v10 - v7) >> 3;
    if (v12 < 3)
    {
      v13 = 0;
      if (v10 == v7)
      {
        goto LABEL_11;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v26, v12, 8);
      v13 = v25;
      if (v10 == v7)
      {
        goto LABEL_11;
      }
    }

    v14 = v24 + 8 * v13;
    do
    {
      v15 = *v7;
      v7 += 8;
      v23 = v15;
      *v14++ = mlir::IntegerAttr::getInt(&v23);
    }

    while (v7 != v10);
    v13 = v25;
LABEL_11:
    LODWORD(v25) = v13 + (v11 >> 3);
    v16 = *(a2 + 8);
    v17 = *a2;
    if (v16 >= *(a2 + 12))
    {
      if (v17 <= &v24 && v17 + 32 * v16 > &v24)
      {
        v20 = &v24 - v17;
        llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::grow(a2, v16 + 1);
        v17 = *a2;
        v18 = &v20[*a2];
        goto LABEL_13;
      }

      llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::grow(a2, v16 + 1);
      v17 = *a2;
    }

    v18 = &v24;
LABEL_13:
    v19 = (v17 + 32 * *(a2 + 8));
    *v19 = v19 + 2;
    v19[1] = 0x200000000;
    if (*(v18 + 2))
    {
      llvm::SmallVectorImpl<unsigned long long>::operator=(v19, v18);
    }

    ++*(a2 + 8);
    if (v24 != v26)
    {
      free(v24);
    }
  }
}

uint64_t llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = 32 * v3;
    v5 = v2 + v4 - 16;
    v6 = -v4;
    do
    {
      v7 = *(v5 - 16);
      if (v5 != v7)
      {
        free(v7);
      }

      v5 -= 32;
      v6 += 32;
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

unint64_t mlir::memref::ExpandShapeOp::computeExpandedType(uint64_t a1, void *a2, unint64_t a3, const void **a4, uint64_t a5)
{
  v83[6] = *MEMORY[0x1E69E9840];
  v72 = a1;
  __dst = mlir::DenseElementsAttr::getRawStringData(&v72);
  v76 = v9;
  if (mlir::ElementsAttr::isSplat(&__dst))
  {
    RHS = mlir::AffineBinaryOpExpr::getRHS(&v72);
    MemorySpace = mlir::MemRefType::getMemorySpace(&v72);
    v12 = a2;
    v13 = a3;
    v14 = RHS;
    v15 = 0;
    v16 = 0;
    goto LABEL_71;
  }

  v73 = 0;
  v74 = v72;
  v81 = v83;
  v82 = 0x600000000;
  StridesAndOffset = mlir::getStridesAndOffset(v72, &v81, &v73);
  v18 = StridesAndOffset;
  v19 = 0;
  v20 = 0;
  if ((StridesAndOffset & 1) == 0)
  {
    goto LABEL_52;
  }

  v70 = StridesAndOffset;
  v78 = v80;
  v79 = 0x600000000;
  if (a3 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v80, a3, 8);
  }

  v71 = a3;
  if (!a5 || !v82)
  {
    goto LABEL_30;
  }

  v21 = v81;
  v22 = &v81[v82];
  v23 = &a4[4 * a5];
  v24 = a3 - 1;
  do
  {
    v25 = v23 - 4;
    --v22;
    __dst = v77;
    v76 = 0x200000000;
    if (&__dst == (v23 - 4))
    {
      goto LABEL_28;
    }

    v26 = *(v23 - 6);
    if (!v26)
    {
      goto LABEL_28;
    }

    v27 = v77;
    v28 = *(v23 - 6);
    if (v26 < 3)
    {
      goto LABEL_14;
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v77, *(v23 - 6), 8);
    v28 = *(v23 - 6);
    if (v28)
    {
      v27 = __dst;
LABEL_14:
      memcpy(v27, *v25, 8 * v28);
    }

    LODWORD(v76) = v26;
    v29 = *v22;
    v30 = v79;
    do
    {
      if (v30 >= HIDWORD(v79))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v80, v30 + 1, 8);
        v30 = v79;
      }

      *(v78 + v30) = v29;
      v30 = v79 + 1;
      LODWORD(v79) = v79 + 1;
      v32 = a2[v24];
      if (!v32)
      {
        v29 = 0;
LABEL_17:
        v31 = v29;
        goto LABEL_18;
      }

      if (v29 == 0x8000000000000000 || !v29)
      {
        goto LABEL_17;
      }

      v31 = 0x8000000000000000;
      if (v32 != 0x8000000000000000)
      {
        v29 *= v32;
        goto LABEL_17;
      }

LABEL_18:
      --v24;
      v29 = v31;
      --v26;
    }

    while (v26);
    if (__dst != v77)
    {
      free(__dst);
    }

LABEL_28:
    if (v25 == a4)
    {
      break;
    }

    v23 = v25;
  }

  while (v22 != v21);
LABEL_30:
  v33 = v78;
  v34 = v79;
  __dst = v77;
  v76 = 0x800000000;
  if (v79 < 9)
  {
    v35 = 0;
    v36 = v77;
    a3 = v71;
    if (v79)
    {
      goto LABEL_33;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v77, v79, 8);
    v35 = v76;
    v36 = __dst;
    a3 = v71;
LABEL_33:
    v37 = &v33[8 * v34];
    v38 = &v36[8 * v35];
    v39 = (v34 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v39 < 0x17 || v38 < v37 && v33 < &v36[8 * v34 + 8 * v35])
    {
      goto LABEL_76;
    }

    v40 = v39 + 1;
    v41 = 8 * (v40 & 0x3FFFFFFFFFFFFFFCLL);
    v38 = (v38 + v41);
    v42 = &v37[-v41];
    v43 = &v36[8 * v35 + 16];
    v44 = (v37 - 16);
    v45 = v40 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v46 = vextq_s8(v44[-1], v44[-1], 8uLL);
      v43[-1] = vextq_s8(*v44, *v44, 8uLL);
      *v43 = v46;
      v43 += 2;
      v44 -= 2;
      v45 -= 4;
    }

    while (v45);
    v37 = v42;
    if (v40 != (v40 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_76:
      do
      {
        v47 = *(v37 - 1);
        v37 -= 8;
        *v38++ = v47;
      }

      while (v37 != v33);
    }
  }

  v48 = v35 + v34;
  LODWORD(v76) = v35 + v34;
  v18 = v70;
  if (a3 != v48)
  {
    if (a3 >= v48)
    {
      v50 = v35 + v34;
      v51 = v48;
      if (a3 > HIDWORD(v76))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v77, a3, 8);
        v50 = v76;
        v36 = __dst;
        v51 = v76;
      }

      memset_pattern16(&v36[8 * v50], &unk_1E096FAE0, 8 * (a3 - v48));
      v49 = a3 - v48 + v51;
    }

    else
    {
      v49 = a3;
    }

    LODWORD(v76) = v49;
  }

  Context = mlir::Attribute::getContext(&v74);
  v53 = mlir::StridedLayoutAttr::get(Context, v73, __dst, v76);
  if (__dst != v77)
  {
    free(__dst);
  }

  v20 = v53 & 0xFFFFFFFFFFFFFF00;
  if (v78 != v80)
  {
    free(v78);
  }

  v19 = v53;
LABEL_52:
  if (v81 != v83)
  {
    free(v81);
  }

  if (v18)
  {
    v54 = (v20 | v19);
    v55 = mlir::AffineBinaryOpExpr::getRHS(&v72);
    if (!v54)
    {
      goto LABEL_69;
    }

    v56 = *v54;
    {
      mlir::memref::ExpandShapeOp::computeExpandedType();
      v57 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;
      v58 = *(v56 + 8);
      v59 = *(v56 + 16);
      if (v59)
      {
        goto LABEL_58;
      }

      goto LABEL_69;
    }

    v57 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID(void)::id;
    v58 = *(v56 + 8);
    v59 = *(v56 + 16);
    if (!v59)
    {
      goto LABEL_69;
    }

LABEL_58:
    v60 = v58;
    v61 = v59;
    do
    {
      v62 = v61 >> 1;
      v63 = &v60[2 * (v61 >> 1)];
      v65 = *v63;
      v64 = v63 + 2;
      v61 += ~(v61 >> 1);
      if (v65 < v57)
      {
        v60 = v64;
      }

      else
      {
        v61 = v62;
      }
    }

    while (v61);
    if (v60 != &v58[2 * v59] && *v60 == v57)
    {
      v68 = v60[1];
    }

    else
    {
LABEL_69:
      v68 = 0;
    }

    MemorySpace = mlir::MemRefType::getMemorySpace(&v72);
    v12 = a2;
    v13 = a3;
    v14 = v55;
    v15 = v54;
    v16 = v68;
LABEL_71:
    v66 = mlir::MemRefType::get(v12, v13, v14, v15, v16, MemorySpace);
    v67 = v66 & 0xFFFFFFFFFFFFFF00;
  }

  else
  {
    LOBYTE(v66) = 0;
    v67 = 0;
  }

  return v67 | v66;
}

void mlir::memref::ExpandShapeOp::inferOutputShape(mlir::IndexType **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = a3;
  v15 = llvm::cast<mlir::ShapedType,mlir::Type>(&v21);
  mlir::inferExpandShapeOutputShape(a1, a2, v15, v16, a4, a5, a6, a7, &__src);
  if (v25 != 1)
  {
    *a8 = 0;
    *(a8 + 64) = 0;
    return;
  }

  v17 = (a8 + 16);
  *a8 = a8 + 16;
  *(a8 + 8) = 0x600000000;
  if (&__src != a8)
  {
    v18 = v23;
    if (v23)
    {
      if (v23 < 7)
      {
        v19 = v23;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a8, a8 + 16, v23, 8);
        v19 = v23;
        if (!v23)
        {
          goto LABEL_11;
        }

        v17 = *a8;
      }

      memcpy(v17, __src, 8 * v19);
LABEL_11:
      *(a8 + 8) = v18;
      v20 = v25;
      *(a8 + 64) = 1;
      if ((v20 & 1) == 0)
      {
        return;
      }

      goto LABEL_12;
    }
  }

  *(a8 + 64) = 1;
LABEL_12:
  if (__src != &v24)
  {
    free(__src);
  }
}

void mlir::memref::ExpandShapeOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7, uint64_t a8)
{
  v29[6] = *MEMORY[0x1E69E9840];
  v21 = v23;
  v22 = 0x600000000;
  v16 = (8 * a8) >> 3;
  if (v16 < 7)
  {
    v17 = 0;
    v18 = 8 * a8;
    if (!a8)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v23, v16, 8);
  v17 = v22;
  v18 = 8 * a8;
  if (a8)
  {
LABEL_5:
    memcpy(v21 + 8 * v17, a7, v18);
    v17 = v22;
  }

LABEL_6:
  LODWORD(v22) = v17 + (v18 >> 3);
  mlir::decomposeMixedValues(&v21, &v24);
  if (v21 != v23)
  {
    free(v21);
  }

  ReassociationIndicesAttribute = mlir::getReassociationIndicesAttribute(a1, a5, a6);
  mlir::ValueRange::ValueRange(&v21, v27, v28);
  mlir::memref::ExpandShapeOp::build(a1, a2, a3, a4, ReassociationIndicesAttribute, v21, v22, v20, v24, v25);
  if (v27 != v29)
  {
    free(v27);
  }

  if (v24 != &v26)
  {
    free(v24);
  }
}

void mlir::memref::ExpandShapeOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  v23 = a4;
  mlir::OperationState::addOperands(a2, &v23, 1uLL);
  mlir::OperationState::addOperands(a2, a6, a7);
  v16 = *(a2 + 256);
  if (!v16)
  {
    v17 = operator new(0x10uLL);
    *v17 = 0;
    v17[1] = 0;
    *(a2 + 256) = v17;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::ExpandShapeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::ExpandShapeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v25;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::ExpandShapeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::ExpandShapeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v24;
    {
      mlir::memref::ExpandShapeOp::build();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::memref::detail::ExpandShapeOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v16 = *(a2 + 256);
  }

  *v16 = a5;
  DenseI64ArrayAttr = mlir::Builder::getDenseI64ArrayAttr(a1, a9, a10);
  v19 = DenseI64ArrayAttr;
  v20 = *(a2 + 256);
  if (v20)
  {
    *(v20 + 8) = DenseI64ArrayAttr;
    v21 = *(a2 + 72);
    if (v21 >= *(a2 + 76))
    {
LABEL_7:
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v21 + 1, 8);
      LODWORD(v21) = *(a2 + 72);
    }
  }

  else
  {
    v22 = operator new(0x10uLL);
    *v22 = 0;
    v22[1] = 0;
    *(a2 + 256) = v22;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::ExpandShapeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::ExpandShapeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v27;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::memref::detail::ExpandShapeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::memref::detail::ExpandShapeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v26;
    {
      mlir::memref::ExpandShapeOp::build();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::memref::detail::ExpandShapeOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    *(*(a2 + 256) + 8) = v19;
    v21 = *(a2 + 72);
    if (v21 >= *(a2 + 76))
    {
      goto LABEL_7;
    }
  }

  *(*(a2 + 64) + 8 * v21) = a3;
  ++*(a2 + 72);
}

void mlir::memref::ExpandShapeOp::build(mlir::IndexType **a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24[6] = *MEMORY[0x1E69E9840];
  v12 = *a2;
  v19 = (*(a4 + 8) & 0xFFFFFFFFFFFFFFF8);
  v22 = v24;
  v23 = 0x600000000;
  mlir::ArrayAttr::getValue(&v19);
  if (v13 >= 1)
  {
    for (i = 0; i < v17; i = (i + 1))
    {
      MixedSize = mlir::memref::getMixedSize(a1, v12, a4, i);
      v16 = v23;
      if (v23 >= HIDWORD(v23))
      {
        v18 = MixedSize;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v22, v24, v23 + 1, 8);
        MixedSize = v18;
        v16 = v23;
      }

      *(v22 + v16) = MixedSize;
      LODWORD(v23) = v23 + 1;
      mlir::ArrayAttr::getValue(&v19);
    }
  }

  mlir::memref::ExpandShapeOp::inferOutputShape(a1, *a2, a3, a5, a6, v22, v23, &v19);
  mlir::memref::ExpandShapeOp::build(a1, a2, a3, a4, a5, a6, v19, v20);
  if (v21[48] == 1 && v19 != v21)
  {
    free(v19);
  }

  if (v22 != v24)
  {
    free(v22);
  }
}

BOOL mlir::memref::ExpandShapeOp::verify(mlir::memref::ExpandShapeOp *this)
{
  v224 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v207 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
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

  v206 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ArrayAttr::getValue(&v207);
  v7 = v6;
  mlir::ArrayAttr::getValue(&v206);
  if (v7 > v8)
  {
    mlir::ArrayAttr::getValue(&v207);
    v10 = v9;
    mlir::ArrayAttr::getValue(&v206);
    v12 = v11;
    v204[0] = "has source rank ";
    v205 = 259;
    mlir::OpState::emitOpError(this, v204, &v211);
    if (v211)
    {
      LODWORD(v208) = 2;
      v209 = v10;
      v13 = &v208;
      v14 = v214;
      if (v215 >= v216)
      {
        if (v214 <= &v208 && v214 + 24 * v215 > &v208)
        {
          v187 = &v208 - v214;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v214, v217, v215 + 1, 24);
          v14 = v214;
          v13 = (v214 + v187);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v214, v217, v215 + 1, 24);
          v13 = &v208;
          v14 = v214;
        }
      }

      v15 = &v14[24 * v215];
      v16 = *v13;
      *(v15 + 2) = v13[2];
      *v15 = v16;
      v17 = ++v215;
      if (v211)
      {
        LODWORD(v208) = 3;
        v209 = " and result rank ";
        v210 = 17;
        v18 = &v208;
        v19 = v214;
        if (v17 >= v216)
        {
          if (v214 <= &v208 && v214 + 24 * v17 > &v208)
          {
            v188 = &v208 - v214;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v214, v217, v17 + 1, 24);
            v19 = v214;
            v18 = (v214 + v188);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v214, v217, v17 + 1, 24);
            v18 = &v208;
            v19 = v214;
          }
        }

        v20 = &v19[24 * v215];
        v21 = *v18;
        *(v20 + 2) = v18[2];
        *v20 = v21;
        v22 = ++v215;
        if (v211)
        {
          LODWORD(v208) = 2;
          v209 = v12;
          v23 = &v208;
          v24 = v214;
          if (v22 >= v216)
          {
            if (v214 <= &v208 && v214 + 24 * v22 > &v208)
            {
              v189 = &v208 - v214;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v214, v217, v22 + 1, 24);
              v24 = v214;
              v23 = (v214 + v189);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v214, v217, v22 + 1, 24);
              v23 = &v208;
              v24 = v214;
            }
          }

          v25 = &v24[24 * v215];
          v26 = *v23;
          *(v25 + 2) = v23[2];
          *v25 = v26;
          v27 = ++v215;
          if (v211)
          {
            LODWORD(v208) = 3;
            v209 = ". This is not an expansion (";
            v210 = 28;
            v28 = &v208;
            v29 = v214;
            if (v27 >= v216)
            {
              if (v214 <= &v208 && v214 + 24 * v27 > &v208)
              {
                v190 = &v208 - v214;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v214, v217, v27 + 1, 24);
                v29 = v214;
                v28 = (v214 + v190);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v214, v217, v27 + 1, 24);
                v28 = &v208;
                v29 = v214;
              }
            }

            v30 = &v29[24 * v215];
            v31 = *v28;
            *(v30 + 2) = v28[2];
            *v30 = v31;
            v32 = ++v215;
            if (v211)
            {
              LODWORD(v208) = 2;
              v209 = v10;
              v33 = &v208;
              v34 = v214;
              if (v32 >= v216)
              {
                if (v214 <= &v208 && v214 + 24 * v32 > &v208)
                {
                  v192 = &v208 - v214;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v214, v217, v32 + 1, 24);
                  v34 = v214;
                  v33 = (v214 + v192);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v214, v217, v32 + 1, 24);
                  v33 = &v208;
                  v34 = v214;
                }
              }

              v35 = &v34[24 * v215];
              v36 = *v33;
              *(v35 + 2) = v33[2];
              *v35 = v36;
              v37 = ++v215;
              if (v211)
              {
                LODWORD(v208) = 3;
                v209 = " > ";
                v210 = 3;
                v38 = &v208;
                v39 = v214;
                if (v37 >= v216)
                {
                  if (v214 <= &v208 && v214 + 24 * v37 > &v208)
                  {
                    v194 = &v208 - v214;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v214, v217, v37 + 1, 24);
                    v39 = v214;
                    v38 = (v214 + v194);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v214, v217, v37 + 1, 24);
                    v38 = &v208;
                    v39 = v214;
                  }
                }

                v40 = &v39[24 * v215];
                v41 = *v38;
                *(v40 + 2) = v38[2];
                *v40 = v41;
                v42 = ++v215;
                if (v211)
                {
                  LODWORD(v208) = 2;
                  v209 = v12;
                  v43 = &v208;
                  v44 = v214;
                  if (v42 >= v216)
                  {
                    if (v214 <= &v208 && v214 + 24 * v42 > &v208)
                    {
                      v196 = &v208 - v214;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v214, v217, v42 + 1, 24);
                      v44 = v214;
                      v43 = (v214 + v196);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v214, v217, v42 + 1, 24);
                      v43 = &v208;
                      v44 = v214;
                    }
                  }

                  v45 = &v44[24 * v215];
                  v46 = *v43;
                  *(v45 + 2) = v43[2];
                  *v45 = v46;
                  v47 = ++v215;
                  if (v211)
                  {
                    LODWORD(v208) = 3;
                    v209 = ").";
                    v210 = 2;
                    v48 = &v208;
                    v49 = v214;
                    if (v47 >= v216)
                    {
                      if (v214 <= &v208 && v214 + 24 * v47 > &v208)
                      {
                        v199 = &v208 - v214;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v214, v217, v47 + 1, 24);
                        v49 = v214;
                        v48 = (v214 + v199);
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v214, v217, v47 + 1, 24);
                        v48 = &v208;
                        v49 = v214;
                      }
                    }

                    v50 = &v49[24 * v215];
                    v51 = *v48;
                    *(v50 + 2) = v48[2];
                    *v50 = v51;
                    ++v215;
                  }
                }
              }
            }
          }
        }
      }
    }

    v52 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v211);
    if (v211)
    {
      mlir::InFlightDiagnostic::report(&v211);
    }

    if (v223 == 1)
    {
      if (v222 != &v223)
      {
        free(v222);
      }

      v53 = __p;
      if (__p)
      {
        v54 = v221;
        v55 = __p;
        if (v221 != __p)
        {
          do
          {
            v54 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v54 - 1);
          }

          while (v54 != v53);
          v55 = __p;
        }

        v221 = v53;
        operator delete(v55);
      }

      v56 = v218;
      if (!v218)
      {
        goto LABEL_154;
      }

      v57 = v219;
      v58 = v218;
      if (v219 == v218)
      {
LABEL_153:
        v219 = v56;
        operator delete(v58);
LABEL_154:
        if (v214 != v217)
        {
          free(v214);
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
LABEL_152:
      v58 = v218;
      goto LABEL_153;
    }

    return v52;
  }

  v61 = *this;
  Value = mlir::ArrayAttr::getValue(&v207);
  v64 = v63;
  v65 = mlir::ArrayAttr::getValue(&v206);
  v67 = v66;
  mlir::memref::CollapseShapeOp::getReassociationIndices(this, &v211);
  v68 = verifyCollapsedShape(v61, Value, v64, v65, v67, v211, v212);
  v69 = v211;
  if (v212)
  {
    v70 = v211 + 32 * v212 - 16;
    v71 = -32 * v212;
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
    v69 = v211;
  }

  if (v69 != &v213)
  {
    free(v69);
  }

  if ((v68 & 1) == 0)
  {
    return 0;
  }

  v73 = v207;
  v74 = mlir::ArrayAttr::getValue(&v206);
  v76 = v75;
  mlir::memref::CollapseShapeOp::getReassociationIndices(this, &v211);
  v77 = mlir::memref::ExpandShapeOp::computeExpandedType(v73, v74, v76, v211, v212);
  v79 = v78;
  v80 = v211;
  if (v212)
  {
    v81 = v211 + 32 * v212 - 16;
    v82 = -32 * v212;
    do
    {
      v83 = *(v81 - 2);
      if (v81 != v83)
      {
        free(v83);
      }

      v81 -= 32;
      v82 += 32;
    }

    while (v82);
    v80 = v211;
  }

  if (v80 != &v213)
  {
    free(v80);
  }

  if ((v79 & 1) == 0)
  {
    v204[0] = "invalid source layout map";
    v205 = 259;
    mlir::OpState::emitOpError(this, v204, &v211);
    v52 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v211);
    if (v211)
    {
      mlir::InFlightDiagnostic::report(&v211);
    }

    if (v223 == 1)
    {
      if (v222 != &v223)
      {
        free(v222);
      }

      v103 = __p;
      if (__p)
      {
        v104 = v221;
        v105 = __p;
        if (v221 != __p)
        {
          do
          {
            v104 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v104 - 1);
          }

          while (v104 != v103);
          v105 = __p;
        }

        v221 = v103;
        operator delete(v105);
      }

      v56 = v218;
      if (!v218)
      {
        goto LABEL_154;
      }

      v106 = v219;
      v58 = v218;
      if (v219 == v218)
      {
        goto LABEL_153;
      }

      do
      {
        v108 = *--v106;
        v107 = v108;
        *v106 = 0;
        if (v108)
        {
          operator delete[](v107);
        }
      }

      while (v106 != v56);
      goto LABEL_152;
    }

    return v52;
  }

  if (v206 == v77)
  {
    v211 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
    mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v211);
    v110 = v109;
    mlir::ArrayAttr::getValue(&v206);
    if (v110 != v111)
    {
      v204[0] = "expected number of static shape bounds to be equal to the output rank (";
      v205 = 259;
      mlir::OpState::emitOpError(this, v204, &v211);
      mlir::ArrayAttr::getValue(&v206);
      if (v211)
      {
        LODWORD(v208) = 2;
        v209 = v120;
        v121 = &v208;
        v122 = v214;
        if (v215 >= v216)
        {
          if (v214 <= &v208 && v214 + 24 * v215 > &v208)
          {
            v197 = &v208 - v214;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v214, v217, v215 + 1, 24);
            v122 = v214;
            v121 = (v214 + v197);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v214, v217, v215 + 1, 24);
            v121 = &v208;
            v122 = v214;
          }
        }

        v123 = &v122[24 * v215];
        v124 = *v121;
        *(v123 + 2) = v121[2];
        *v123 = v124;
        v125 = ++v215;
        if (v211)
        {
          LODWORD(v208) = 3;
          v209 = ") but found ";
          v210 = 12;
          v126 = &v208;
          v127 = v214;
          if (v125 >= v216)
          {
            if (v214 <= &v208 && v214 + 24 * v125 > &v208)
            {
              v200 = &v208 - v214;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v214, v217, v125 + 1, 24);
              v127 = v214;
              v126 = (v214 + v200);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v214, v217, v125 + 1, 24);
              v126 = &v208;
              v127 = v214;
            }
          }

          v128 = &v127[24 * v215];
          v129 = *v126;
          *(v128 + 2) = v126[2];
          *v128 = v129;
          ++v215;
        }
      }

      v208 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
      mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v208);
      if (v211)
      {
        LODWORD(v208) = 5;
        v209 = v130;
        v131 = &v208;
        v132 = v214;
        if (v215 >= v216)
        {
          if (v214 <= &v208 && v214 + 24 * v215 > &v208)
          {
            v198 = &v208 - v214;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v214, v217, v215 + 1, 24);
            v132 = v214;
            v131 = (v214 + v198);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v214, v217, v215 + 1, 24);
            v131 = &v208;
            v132 = v214;
          }
        }

        v133 = &v132[24 * v215];
        v134 = *v131;
        *(v133 + 2) = v131[2];
        *v133 = v134;
        v135 = ++v215;
        if (v211)
        {
          LODWORD(v208) = 3;
          v209 = " inputs instead";
          v210 = 15;
          v136 = &v208;
          v137 = v214;
          if (v135 >= v216)
          {
            if (v214 <= &v208 && v214 + 24 * v135 > &v208)
            {
              v201 = &v208 - v214;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v214, v217, v135 + 1, 24);
              v137 = v214;
              v136 = (v214 + v201);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v214, v217, v135 + 1, 24);
              v136 = &v208;
              v137 = v214;
            }
          }

          v138 = &v137[24 * v215];
          v139 = *v136;
          *(v138 + 2) = v136[2];
          *v138 = v139;
          ++v215;
        }
      }

      v52 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v211);
      if (v211)
      {
        mlir::InFlightDiagnostic::report(&v211);
      }

      if (v223 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v212);
      }

      return v52;
    }

    v112 = *this;
    v113 = *(*this + 44);
    if ((v113 & 0x800000) != 0)
    {
      v114 = *(v112 + 68) - 1;
    }

    else
    {
      v114 = -1;
    }

    v211 = *(v112 + 16 * ((v113 >> 23) & 1) + 72);
    v115 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v211);
    if (!v116)
    {
      v118 = 0;
      goto LABEL_124;
    }

    v117 = (v116 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v117 >= 3)
    {
      v140 = v117 + 1;
      v141 = (v117 + 1) & 0x3FFFFFFFFFFFFFFCLL;
      v119 = (v115 + 8 * v141);
      v142 = (v115 + 16);
      v143 = 0uLL;
      v144 = vnegq_f64(0);
      v145 = v141;
      v146 = 0uLL;
      do
      {
        v143 = vsubq_s64(v143, vceqq_s64(v142[-1], v144));
        v146 = vsubq_s64(v146, vceqq_s64(*v142, v144));
        v142 += 2;
        v145 -= 4;
      }

      while (v145);
      v118 = vaddvq_s64(vaddq_s64(v146, v143));
      if (v140 == v141)
      {
        goto LABEL_124;
      }
    }

    else
    {
      v118 = 0;
      v119 = v115;
    }

    do
    {
      v147 = *v119++;
      if (v147 == 0x8000000000000000)
      {
        ++v118;
      }
    }

    while (v119 != (v115 + 8 * v116));
LABEL_124:
    if (v114 == v118)
    {
      v148 = *this;
      v203 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
      v149 = *(v148 + 36);
      v150 = v148 - 16;
      if (v149)
      {
        v151 = v150;
      }

      else
      {
        v151 = 0;
      }

      v211 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v151, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      v152 = mlir::ArrayAttr::getValue(&v211);
      if (!v153)
      {
        return 1;
      }

      v154 = v152;
      v155 = 0;
      v156 = 8 * v153;
      while (1)
      {
        v157 = *(v154 + 8 * v155);
        if (v157 != 0x8000000000000000 && v157 != *(mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v203) + 8 * v155))
        {
          break;
        }

        ++v155;
        v156 -= 8;
        if (!v156)
        {
          return 1;
        }
      }

      v204[0] = "invalid output shape provided at pos ";
      v205 = 259;
      mlir::OpState::emitOpError(this, v204, &v211);
      if (v211)
      {
        LODWORD(v208) = 5;
        v209 = v155;
        v158 = &v208;
        v159 = v214;
        if (v215 >= v216)
        {
          if (v214 <= &v208 && v214 + 24 * v215 > &v208)
          {
            v202 = &v208 - v214;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v214, v217, v215 + 1, 24);
            v159 = v214;
            v158 = (v214 + v202);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v214, v217, v215 + 1, 24);
            v158 = &v208;
            v159 = v214;
          }
        }

        v160 = &v159[24 * v215];
        v161 = *v158;
        *(v160 + 2) = v158[2];
        *v160 = v161;
        ++v215;
      }

      v52 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v211);
      if (v211)
      {
        mlir::InFlightDiagnostic::report(&v211);
      }

      if (v223)
      {
        if (v222 != &v223)
        {
          free(v222);
        }

        v162 = __p;
        if (__p)
        {
          v163 = v221;
          v164 = __p;
          if (v221 != __p)
          {
            do
            {
              v163 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v163 - 1);
            }

            while (v163 != v162);
            v164 = __p;
          }

          v221 = v162;
          operator delete(v164);
        }

        v56 = v218;
        if (!v218)
        {
          goto LABEL_154;
        }

        v165 = v219;
        v58 = v218;
        if (v219 == v218)
        {
          goto LABEL_153;
        }

        do
        {
          v167 = *--v165;
          v166 = v167;
          *v165 = 0;
          if (v167)
          {
            operator delete[](v166);
          }
        }

        while (v165 != v56);
        goto LABEL_152;
      }

      return v52;
    }

    v204[0] = "mismatch in dynamic dims in output_shape and static_output_shape: static_output_shape has ";
    v205 = 259;
    mlir::OpState::emitOpError(this, v204, &v211);
    v208 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
    v169 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v208);
    if (v170)
    {
      v171 = (v170 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v171 < 3)
      {
        v172 = 0;
        v173 = v169;
        goto LABEL_165;
      }

      v174 = v171 + 1;
      v175 = (v171 + 1) & 0x3FFFFFFFFFFFFFFCLL;
      v173 = (v169 + 8 * v175);
      v176 = (v169 + 16);
      v177 = 0uLL;
      v178 = vnegq_f64(0);
      v179 = v175;
      v180 = 0uLL;
      do
      {
        v177 = vsubq_s64(v177, vceqq_s64(v176[-1], v178));
        v180 = vsubq_s64(v180, vceqq_s64(*v176, v178));
        v176 += 2;
        v179 -= 4;
      }

      while (v179);
      v172 = vaddvq_s64(vaddq_s64(v180, v177));
      if (v174 != v175)
      {
        do
        {
LABEL_165:
          v181 = *v173++;
          if (v181 == 0x8000000000000000)
          {
            ++v172;
          }
        }

        while (v173 != (v169 + 8 * v170));
      }
    }

    else
    {
      v172 = 0;
    }

    v208 = v172;
    mlir::InFlightDiagnostic::operator<<<long long &>(&v211, &v208);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v182, " dynamic dims while output_shape has ");
    if ((*(*this + 46) & 0x80) != 0)
    {
      v184 = *(*this + 68) - 1;
    }

    else
    {
      v184 = -1;
    }

    v203 = v184;
    mlir::InFlightDiagnostic::operator<<<unsigned long>(v183, &v203);
    mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(v185, " values");
    v52 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v186);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v211);
    return v52;
  }

  v204[0] = "expected expanded type to be ";
  v205 = 259;
  mlir::OpState::emitOpError(this, v204, &v211);
  if (v211)
  {
    v84 = &v208;
    mlir::DiagnosticArgument::DiagnosticArgument(&v208, v77);
    v85 = v214;
    if (v215 >= v216)
    {
      if (v214 <= &v208 && v214 + 24 * v215 > &v208)
      {
        v191 = &v208 - v214;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v214, v217, v215 + 1, 24);
        v85 = v214;
        v84 = (v214 + v191);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v214, v217, v215 + 1, 24);
        v84 = &v208;
        v85 = v214;
      }
    }

    v86 = &v85[24 * v215];
    v87 = *v84;
    *(v86 + 2) = v84[2];
    *v86 = v87;
    v88 = ++v215;
    if (v211)
    {
      LODWORD(v208) = 3;
      v209 = " but found ";
      v210 = 11;
      v89 = &v208;
      v90 = v214;
      if (v88 >= v216)
      {
        if (v214 <= &v208 && v214 + 24 * v88 > &v208)
        {
          v193 = &v208 - v214;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v214, v217, v88 + 1, 24);
          v90 = v214;
          v89 = (v214 + v193);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v214, v217, v88 + 1, 24);
          v89 = &v208;
          v90 = v214;
        }
      }

      v91 = &v90[24 * v215];
      v92 = *v89;
      *(v91 + 2) = v89[2];
      *v91 = v92;
      ++v215;
      if (v211)
      {
        v93 = &v208;
        mlir::DiagnosticArgument::DiagnosticArgument(&v208, v206);
        v94 = v214;
        if (v215 >= v216)
        {
          if (v214 <= &v208 && v214 + 24 * v215 > &v208)
          {
            v195 = &v208 - v214;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v214, v217, v215 + 1, 24);
            v94 = v214;
            v93 = (v214 + v195);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v214, v217, v215 + 1, 24);
            v93 = &v208;
            v94 = v214;
          }
        }

        v95 = &v94[24 * v215];
        v96 = *v93;
        *(v95 + 2) = v93[2];
        *v95 = v96;
        ++v215;
      }
    }
  }

  v52 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v211);
  if (v211)
  {
    mlir::InFlightDiagnostic::report(&v211);
  }

  if (v223 == 1)
  {
    if (v222 != &v223)
    {
      free(v222);
    }

    v97 = __p;
    if (__p)
    {
      v98 = v221;
      v99 = __p;
      if (v221 != __p)
      {
        do
        {
          v98 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v98 - 1);
        }

        while (v98 != v97);
        v99 = __p;
      }

      v221 = v97;
      operator delete(v99);
    }

    v56 = v218;
    if (!v218)
    {
      goto LABEL_154;
    }

    v100 = v219;
    v58 = v218;
    if (v219 == v218)
    {
      goto LABEL_153;
    }

    do
    {
      v102 = *--v100;
      v101 = v102;
      *v100 = 0;
      if (v102)
      {
        operator delete[](v101);
      }
    }

    while (v100 != v56);
    goto LABEL_152;
  }

  return v52;
}

uint64_t verifyCollapsedShape(uint64_t a1, uint64_t a2, const char *a3, void *a4, const char *a5, uint64_t a6, const char *a7)
{
  v197 = *MEMORY[0x1E69E9840];
  if (a3 != a7)
  {
    v178[0] = "invalid number of reassociation groups: found ";
    v179 = 259;
    mlir::Operation::emitOpError(a1, v178, v186);
    if (v186[0])
    {
      LODWORD(__dst) = 5;
      v184 = a7;
      p_dst = &__dst;
      v111 = v187;
      if (v188 >= v189)
      {
        if (v187 <= &__dst && v187 + 24 * v188 > &__dst)
        {
          v168 = &__dst - v187;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v187, v190, v188 + 1, 24);
          v111 = v187;
          p_dst = (v187 + v168);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v187, v190, v188 + 1, 24);
          p_dst = &__dst;
          v111 = v187;
        }
      }

      v112 = &v111[24 * v188];
      v113 = *p_dst;
      *(v112 + 2) = p_dst[2];
      *v112 = v113;
      v114 = ++v188;
      if (v186[0])
      {
        LODWORD(__dst) = 3;
        v184 = ", expected ";
        v185[0] = 11;
        v115 = &__dst;
        v116 = v187;
        if (v114 >= v189)
        {
          if (v187 <= &__dst && v187 + 24 * v114 > &__dst)
          {
            v169 = &__dst - v187;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v187, v190, v114 + 1, 24);
            v116 = v187;
            v115 = (v187 + v169);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v187, v190, v114 + 1, 24);
            v115 = &__dst;
            v116 = v187;
          }
        }

        v117 = &v116[24 * v188];
        v118 = *v115;
        *(v117 + 2) = v115[2];
        *v117 = v118;
        v119 = ++v188;
        if (v186[0])
        {
          LODWORD(__dst) = 5;
          v184 = a3;
          v120 = &__dst;
          v121 = v187;
          if (v119 >= v189)
          {
            if (v187 <= &__dst && v187 + 24 * v119 > &__dst)
            {
              v170 = &__dst - v187;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v187, v190, v119 + 1, 24);
              v121 = v187;
              v120 = (v187 + v170);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v187, v190, v119 + 1, 24);
              v120 = &__dst;
              v121 = v187;
            }
          }

          v122 = &v121[24 * v188];
          v123 = *v120;
          *(v122 + 2) = v120[2];
          *v122 = v123;
          ++v188;
        }
      }
    }

    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v186);
    if (v186[0])
    {
      mlir::InFlightDiagnostic::report(v186);
    }

    if (v196 != 1)
    {
      return v7;
    }

    if (v195 != &v196)
    {
      free(v195);
    }

    v124 = __p;
    if (__p)
    {
      v125 = v194;
      v126 = __p;
      if (v194 != __p)
      {
        do
        {
          v125 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v125 - 1);
        }

        while (v125 != v124);
        v126 = __p;
      }

      v194 = v124;
      operator delete(v126);
    }

    v127 = v191;
    if (v191)
    {
      v128 = v192;
      v129 = v191;
      if (v192 == v191)
      {
        goto LABEL_220;
      }

      do
      {
        v131 = *--v128;
        v130 = v131;
        *v128 = 0;
        if (v131)
        {
          operator delete[](v130);
        }
      }

      while (v128 != v127);
      goto LABEL_219;
    }

LABEL_221:
    v158 = v187;
    if (v187 == v190)
    {
      return v7;
    }

LABEL_222:
    free(v158);
    return v7;
  }

  if (a3)
  {
    v11 = a6;
    v12 = 0;
    v13 = 0;
    v177 = a6 + 32 * a3;
    while (1)
    {
      __dst = v185;
      v184 = 0x200000000;
      v14 = *(v11 + 8);
      if (&__dst != v11 && v14 != 0)
      {
        break;
      }

      v16 = (a2 + 8 * v13);
      if (*v16 == 0x8000000000000000)
      {
LABEL_50:
        v178[0] = "collapsed dim (";
        v179 = 259;
        mlir::Operation::emitOpError(a1, v178, v186);
        if (v186[0])
        {
          v180 = 2;
          v181 = v13;
          v54 = v187;
          if (v188 >= v189)
          {
            if (v187 <= &v180 && v187 + 24 * v188 > &v180)
            {
              v101 = &v180 - v187;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v187, v190, v188 + 1, 24);
              v54 = v187;
              v55 = (v187 + v101);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v187, v190, v188 + 1, 24);
              v55 = &v180;
              v54 = v187;
            }
          }

          else
          {
            v55 = &v180;
          }

          v56 = &v54[24 * v188];
          v57 = *v55;
          *(v56 + 2) = *(v55 + 2);
          *v56 = v57;
          v58 = ++v188;
          if (v186[0])
          {
            v180 = 3;
            v181 = ") must be dynamic if and only if reassociation group is dynamic";
            v182 = 63;
            v59 = v187;
            if (v58 >= v189)
            {
              if (v187 <= &v180 && v187 + 24 * v58 > &v180)
              {
                v102 = &v180 - v187;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v187, v190, v58 + 1, 24);
                v59 = v187;
                v60 = (v187 + v102);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v187, v190, v58 + 1, 24);
                v60 = &v180;
                v59 = v187;
              }
            }

            else
            {
              v60 = &v180;
            }

            v61 = &v59[24 * v188];
            v62 = *v60;
            *(v61 + 2) = *(v60 + 2);
            *v61 = v62;
            ++v188;
          }
        }

        v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v186);
        if (v186[0])
        {
          mlir::InFlightDiagnostic::report(v186);
        }

        if (v196 == 1)
        {
          if (v195 != &v196)
          {
            free(v195);
          }

          v63 = __p;
          if (__p)
          {
            v64 = v194;
            v65 = __p;
            if (v194 != __p)
            {
              do
              {
                v64 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v64 - 1);
              }

              while (v64 != v63);
              v65 = __p;
            }

            v194 = v63;
            operator delete(v65);
          }

          v41 = v191;
          if (v191)
          {
            v66 = v192;
            v43 = v191;
            if (v192 != v191)
            {
              do
              {
                v68 = *--v66;
                v67 = v68;
                *v66 = 0;
                if (v68)
                {
                  operator delete[](v67);
                }
              }

              while (v66 != v41);
              goto LABEL_112;
            }

LABEL_113:
            v192 = v41;
            operator delete(v43);
          }

LABEL_114:
          if (v187 != v190)
          {
            free(v187);
          }
        }
      }

      else
      {
        v17 = 1;
        if (*v16 == 1)
        {
LABEL_130:
          v90 = 1;
          v91 = __dst;
          if (__dst == v185)
          {
            goto LABEL_118;
          }

LABEL_117:
          free(v91);
          goto LABEL_118;
        }

LABEL_11:
        v178[0] = "collapsed dim size (";
        v179 = 259;
        mlir::Operation::emitOpError(a1, v178, v186);
        if (v186[0])
        {
          v18 = *v16;
          v180 = 2;
          v181 = v18;
          v19 = v187;
          if (v188 >= v189)
          {
            if (v187 <= &v180 && v187 + 24 * v188 > &v180)
            {
              v104 = &v180 - v187;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v187, v190, v188 + 1, 24);
              v19 = v187;
              v20 = (v187 + v104);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v187, v190, v188 + 1, 24);
              v20 = &v180;
              v19 = v187;
            }
          }

          else
          {
            v20 = &v180;
          }

          v21 = &v19[24 * v188];
          v22 = *v20;
          *(v21 + 2) = *(v20 + 2);
          *v21 = v22;
          v23 = ++v188;
          if (v186[0])
          {
            v180 = 3;
            v181 = ") must equal reassociation group size (";
            v182 = 39;
            v24 = v187;
            if (v23 >= v189)
            {
              if (v187 <= &v180 && v187 + 24 * v23 > &v180)
              {
                v106 = &v180 - v187;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v187, v190, v23 + 1, 24);
                v24 = v187;
                v25 = (v187 + v106);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v187, v190, v23 + 1, 24);
                v25 = &v180;
                v24 = v187;
              }
            }

            else
            {
              v25 = &v180;
            }

            v26 = &v24[24 * v188];
            v27 = *v25;
            *(v26 + 2) = *(v25 + 2);
            *v26 = v27;
            v28 = ++v188;
            if (v186[0])
            {
              v180 = 2;
              v181 = v17;
              v29 = v187;
              if (v28 >= v189)
              {
                if (v187 <= &v180 && v187 + 24 * v28 > &v180)
                {
                  v107 = &v180 - v187;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v187, v190, v28 + 1, 24);
                  v29 = v187;
                  v30 = (v187 + v107);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v187, v190, v28 + 1, 24);
                  v30 = &v180;
                  v29 = v187;
                }
              }

              else
              {
                v30 = &v180;
              }

              v31 = &v29[24 * v188];
              v32 = *v30;
              *(v31 + 2) = *(v30 + 2);
              *v31 = v32;
              v33 = ++v188;
              if (v186[0])
              {
                v180 = 3;
                v181 = ")";
                v182 = 1;
                v34 = v187;
                if (v33 >= v189)
                {
                  if (v187 <= &v180 && v187 + 24 * v33 > &v180)
                  {
                    v108 = &v180 - v187;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v187, v190, v33 + 1, 24);
                    v34 = v187;
                    v35 = (v187 + v108);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v187, v190, v33 + 1, 24);
                    v35 = &v180;
                    v34 = v187;
                  }
                }

                else
                {
                  v35 = &v180;
                }

                v36 = &v34[24 * v188];
                v37 = *v35;
                *(v36 + 2) = *(v35 + 2);
                *v36 = v37;
                ++v188;
              }
            }
          }
        }

        v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v186);
        if (v186[0])
        {
          mlir::InFlightDiagnostic::report(v186);
        }

        if (v196)
        {
          if (v195 != &v196)
          {
            free(v195);
          }

          v38 = __p;
          if (__p)
          {
            v39 = v194;
            v40 = __p;
            if (v194 != __p)
            {
              do
              {
                v39 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v39 - 1);
              }

              while (v39 != v38);
              v40 = __p;
            }

            v194 = v38;
            operator delete(v40);
          }

          v41 = v191;
          if (v191)
          {
            v42 = v192;
            v43 = v191;
            if (v192 == v191)
            {
              goto LABEL_113;
            }

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
LABEL_112:
            v43 = v191;
            goto LABEL_113;
          }

          goto LABEL_114;
        }
      }

LABEL_116:
      v90 = 0;
      v91 = __dst;
      if (__dst != v185)
      {
        goto LABEL_117;
      }

LABEL_118:
      if (!v90)
      {
        return v7;
      }

      ++v13;
      v11 += 32;
      if (v11 == v177)
      {
        if (v12 == a5)
        {
          return 1;
        }

        v178[0] = "expanded rank (";
        v179 = 259;
        mlir::Operation::emitOpError(a1, v178, v186);
        if (v186[0])
        {
          LODWORD(__dst) = 5;
          v184 = a5;
          v133 = &__dst;
          v134 = v187;
          if (v188 >= v189)
          {
            if (v187 <= &__dst && v187 + 24 * v188 > &__dst)
            {
              v171 = &__dst - v187;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v187, v190, v188 + 1, 24);
              v134 = v187;
              v133 = (v187 + v171);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v187, v190, v188 + 1, 24);
              v133 = &__dst;
              v134 = v187;
            }
          }

          v135 = &v134[24 * v188];
          v136 = *v133;
          *(v135 + 2) = v133[2];
          *v135 = v136;
          v137 = ++v188;
          if (v186[0])
          {
            LODWORD(__dst) = 3;
            v184 = ") inconsistent with number of reassociation indices (";
            v185[0] = 53;
            v138 = &__dst;
            v139 = v187;
            if (v137 >= v189)
            {
              if (v187 <= &__dst && v187 + 24 * v137 > &__dst)
              {
                v172 = &__dst - v187;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v187, v190, v137 + 1, 24);
                v139 = v187;
                v138 = (v187 + v172);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v187, v190, v137 + 1, 24);
                v138 = &__dst;
                v139 = v187;
              }
            }

            v140 = &v139[24 * v188];
            v141 = *v138;
            *(v140 + 2) = v138[2];
            *v140 = v141;
            v142 = ++v188;
            if (v186[0])
            {
              LODWORD(__dst) = 2;
              v184 = v12;
              v143 = &__dst;
              v144 = v187;
              if (v142 >= v189)
              {
                if (v187 <= &__dst && v187 + 24 * v142 > &__dst)
                {
                  v173 = &__dst - v187;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v187, v190, v142 + 1, 24);
                  v144 = v187;
                  v143 = (v187 + v173);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v187, v190, v142 + 1, 24);
                  v143 = &__dst;
                  v144 = v187;
                }
              }

              v145 = &v144[24 * v188];
              v146 = *v143;
              *(v145 + 2) = v143[2];
              *v145 = v146;
              v147 = ++v188;
              if (v186[0])
              {
                LODWORD(__dst) = 3;
                v184 = ")";
                v185[0] = 1;
                v148 = &__dst;
                v149 = v187;
                if (v147 >= v189)
                {
                  if (v187 <= &__dst && v187 + 24 * v147 > &__dst)
                  {
                    v174 = &__dst - v187;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v187, v190, v147 + 1, 24);
                    v149 = v187;
                    v148 = (v187 + v174);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v187, v190, v147 + 1, 24);
                    v148 = &__dst;
                    v149 = v187;
                  }
                }

                v150 = &v149[24 * v188];
                v151 = *v148;
                *(v150 + 2) = v148[2];
                *v150 = v151;
                ++v188;
              }
            }
          }
        }

        v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v186);
        if (v186[0])
        {
          mlir::InFlightDiagnostic::report(v186);
        }

        if (v196 == 1)
        {
          if (v195 != &v196)
          {
            free(v195);
          }

          v152 = __p;
          if (__p)
          {
            v153 = v194;
            v154 = __p;
            if (v194 != __p)
            {
              do
              {
                v153 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v153 - 1);
              }

              while (v153 != v152);
              v154 = __p;
            }

            v194 = v152;
            operator delete(v154);
          }

          v127 = v191;
          if (v191)
          {
            v155 = v192;
            v129 = v191;
            if (v192 == v191)
            {
LABEL_220:
              v192 = v127;
              operator delete(v129);
              goto LABEL_221;
            }

            do
            {
              v157 = *--v155;
              v156 = v157;
              *v155 = 0;
              if (v157)
              {
                operator delete[](v156);
              }
            }

            while (v155 != v127);
LABEL_219:
            v129 = v191;
            goto LABEL_220;
          }

          goto LABEL_221;
        }

        return v7;
      }
    }

    v46 = v185;
    v47 = *(v11 + 8);
    if (v14 >= 3)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v185, *(v11 + 8), 8);
      v47 = *(v11 + 8);
      if (!v47)
      {
        goto LABEL_44;
      }

      v46 = __dst;
    }

    memcpy(v46, *v11, 8 * v47);
LABEL_44:
    v48 = 0;
    v49 = 0;
    LODWORD(v184) = v14;
    v50 = __dst + 8 * v14;
    v51 = v12 + 1;
    v52 = &a4[v12];
    while (1)
    {
      v12 = v51;
      v53 = v51 - 1;
      if (v51 - 1 != *(__dst + v48 * 8))
      {
        break;
      }

      if (v53 >= a5)
      {
        v178[0] = "reassociation index ";
        v179 = 259;
        mlir::Operation::emitOpError(a1, v178, v186);
        if (v186[0])
        {
          v180 = 2;
          v181 = v53;
          v75 = v187;
          if (v188 >= v189)
          {
            if (v187 <= &v180 && v187 + 24 * v188 > &v180)
            {
              v103 = &v180 - v187;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v187, v190, v188 + 1, 24);
              v75 = v187;
              v76 = (v187 + v103);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v187, v190, v188 + 1, 24);
              v76 = &v180;
              v75 = v187;
            }
          }

          else
          {
            v76 = &v180;
          }

          v77 = &v75[24 * v188];
          v78 = *v76;
          *(v77 + 2) = *(v76 + 2);
          *v77 = v78;
          v79 = ++v188;
          if (v186[0])
          {
            v180 = 3;
            v181 = " is out of bounds";
            v182 = 17;
            v80 = v187;
            if (v79 >= v189)
            {
              if (v187 <= &v180 && v187 + 24 * v79 > &v180)
              {
                v105 = &v180 - v187;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v187, v190, v79 + 1, 24);
                v80 = v187;
                v81 = (v187 + v105);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v187, v190, v79 + 1, 24);
                v81 = &v180;
                v80 = v187;
              }
            }

            else
            {
              v81 = &v180;
            }

            v82 = &v80[24 * v188];
            v83 = *v81;
            *(v82 + 2) = *(v81 + 2);
            *v82 = v83;
            ++v188;
          }
        }

        v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v186);
        if (v186[0])
        {
          mlir::InFlightDiagnostic::report(v186);
        }

        if (v196 != 1)
        {
          goto LABEL_116;
        }

        if (v195 != &v196)
        {
          free(v195);
        }

        v84 = __p;
        if (__p)
        {
          v85 = v194;
          v86 = __p;
          if (v194 != __p)
          {
            do
            {
              v85 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v85 - 1);
            }

            while (v85 != v84);
            v86 = __p;
          }

          v194 = v84;
          operator delete(v86);
        }

        v41 = v191;
        if (!v191)
        {
          goto LABEL_114;
        }

        v87 = v192;
        v43 = v191;
        if (v192 == v191)
        {
          goto LABEL_113;
        }

        do
        {
          v89 = *--v87;
          v88 = v89;
          *v87 = 0;
          if (v89)
          {
            operator delete[](v88);
          }
        }

        while (v87 != v41);
        goto LABEL_112;
      }

      v49 |= v52[v48++] == 0x8000000000000000;
      ++v51;
      if (v14 == v48)
      {
        v16 = (a2 + 8 * v13);
        if ((v49 & 1) != (*v16 == 0x8000000000000000))
        {
          v12 = v51 - 1;
          goto LABEL_50;
        }

        if (v49)
        {
          goto LABEL_130;
        }

        v92 = (v14 - 1) & 0x1FFFFFFFFFFFFFFFLL;
        if (v92)
        {
          v93 = v92 + 1;
          v94 = (v92 + 1) & 0x3FFFFFFFFFFFFFFELL;
          v95 = __dst + 8 * v94;
          v96 = __dst + 8;
          v97 = v94;
          v98 = 1;
          v99 = 1;
          do
          {
            v98 *= a4[*(v96 - 1)];
            v99 *= a4[*v96];
            v96 += 2;
            v97 -= 2;
          }

          while (v97);
          v17 = v99 * v98;
          if (v93 == v94)
          {
LABEL_129:
            if (v17 != *v16)
            {
              goto LABEL_11;
            }

            goto LABEL_130;
          }
        }

        else
        {
          v95 = __dst;
          v17 = 1;
        }

        do
        {
          v100 = *v95;
          v95 += 8;
          v17 *= a4[v100];
        }

        while (v95 != v50);
        goto LABEL_129;
      }
    }

    v178[0] = "reassociation indices must be contiguous";
    v179 = 259;
    mlir::Operation::emitOpError(a1, v178, v186);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v186);
    if (v186[0])
    {
      mlir::InFlightDiagnostic::report(v186);
    }

    if (v196 != 1)
    {
      goto LABEL_116;
    }

    if (v195 != &v196)
    {
      free(v195);
    }

    v69 = __p;
    if (__p)
    {
      v70 = v194;
      v71 = __p;
      if (v194 != __p)
      {
        do
        {
          v70 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v70 - 1);
        }

        while (v70 != v69);
        v71 = __p;
      }

      v194 = v69;
      operator delete(v71);
    }

    v41 = v191;
    if (!v191)
    {
      goto LABEL_114;
    }

    v72 = v192;
    v43 = v191;
    if (v192 == v191)
    {
      goto LABEL_113;
    }

    do
    {
      v74 = *--v72;
      v73 = v74;
      *v72 = 0;
      if (v74)
      {
        operator delete[](v73);
      }
    }

    while (v72 != v41);
    goto LABEL_112;
  }

  if (!a5)
  {
    return 1;
  }

  v132 = 8 * a5;
  while (*a4 == 1)
  {
    ++a4;
    v132 -= 8;
    if (!v132)
    {
      return 1;
    }
  }

  v178[0] = "rank 0 memrefs can only be extended/collapsed with/from ones";
  v179 = 259;
  mlir::Operation::emitOpError(a1, v178, v186);
  v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v186);
  if (v186[0])
  {
    mlir::InFlightDiagnostic::report(v186);
  }

  if (v196)
  {
    if (v195 != &v196)
    {
      free(v195);
    }

    v160 = __p;
    if (__p)
    {
      v161 = v194;
      v162 = __p;
      if (v194 != __p)
      {
        do
        {
          v161 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v161 - 1);
        }

        while (v161 != v160);
        v162 = __p;
      }

      v194 = v160;
      operator delete(v162);
    }

    v163 = v191;
    if (v191)
    {
      v164 = v192;
      v165 = v191;
      if (v192 != v191)
      {
        do
        {
          v167 = *--v164;
          v166 = v167;
          *v164 = 0;
          if (v167)
          {
            operator delete[](v166);
          }
        }

        while (v164 != v163);
        v165 = v191;
      }

      v192 = v163;
      operator delete(v165);
    }

    v158 = v187;
    if (v187 != v190)
    {
      goto LABEL_222;
    }
  }

  return v7;
}