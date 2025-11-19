void std::vector<llvm::SmallVector<long long,8u>>::reserve(uint64_t a1, unint64_t a2)
{
  v2 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 4) < a2)
  {
    if (a2 >= 0x333333333333334)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v4 = *(a1 + 8);
    v5 = 80 * a2;
    v6 = operator new(80 * a2);
    v7 = &v6[v5];
    v8 = &v6[v4 - v2];
    if (v4 != v2)
    {
      v9 = 0;
      do
      {
        v10 = &v6[v9 * 8];
        *v10 = &v6[v9 * 8 + 16];
        *(v10 + 1) = 0x800000000;
        if (LODWORD(v2[v9 + 1]))
        {
          llvm::SmallVectorImpl<unsigned long long>::operator=(v10, &v2[v9]);
        }

        v9 += 10;
      }

      while (&v2[v9] != v4);
      do
      {
        v13 = *v2;
        v12 = v2 + 2;
        v11 = v13;
        if (v13 != v12)
        {
          free(v11);
        }

        v2 = (v12 + 8);
      }

      while (v2 != v4);
      v2 = *a1;
    }

    *a1 = v6;
    *(a1 + 8) = v8;
    *(a1 + 16) = v7;
    if (v2)
    {

      operator delete(v2);
    }
  }
}

mlir::SimpleAffineExprFlattener *mlir::SimpleAffineExprFlattener::SimpleAffineExprFlattener(mlir::SimpleAffineExprFlattener *this, int a2, int a3)
{
  *this = &unk_1F5AF5618;
  *(this + 1) = 0u;
  *(this + 1) = 0;
  *(this + 8) = a2;
  *(this + 9) = a3;
  *(this + 10) = 0;
  *(this + 6) = this + 64;
  *(this + 7) = 0x400000000;
  std::vector<llvm::SmallVector<long long,8u>>::reserve(this + 8, 8uLL);
  return this;
}

uint64_t mlir::SimpleAffineExprFlattener::visitMulExpr(uint64_t a1, uint64_t a2)
{
  v52[8] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  v50 = v52;
  *v51 = 0x800000000;
  v5 = *(v4 - 72);
  if (&v50 != (v4 - 80) && v5 != 0)
  {
    if (v5 < 9)
    {
      v8 = v52;
      v7 = *(v4 - 72);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v52, *(v4 - 72), 8);
      v7 = *(v4 - 72);
      if (!v7)
      {
LABEL_10:
        v51[0] = v5;
        v4 = *(a1 + 16);
        goto LABEL_11;
      }

      v8 = v50;
    }

    memcpy(v8, *(v4 - 80), 8 * v7);
    goto LABEL_10;
  }

LABEL_11:
  v9 = *(v4 - 80);
  if (v9 != (v4 - 64))
  {
    free(v9);
  }

  *(a1 + 16) = v4 - 80;
  if (*(*(a2 + 24) + 8) != 5)
  {
    v47 = v49;
    v48 = 0x800000000;
    v21 = *(v4 - 152);
    if (&v47 == (v4 - 160) || !v21)
    {
LABEL_28:
      v24 = *a2;
      AffineExprFromFlatForm = mlir::getAffineExprFromFlatForm(*(v4 - 160), v21, *(a1 + 32), *(a1 + 36), *(a1 + 48), *(a1 + 56), v24);
      v25 = mlir::getAffineExprFromFlatForm(v50, v51[0], *(a1 + 32), *(a1 + 36), *(a1 + 48), *(a1 + 56), v24);
      v26 = v47;
      v27 = v48;
      v28 = v50;
      v29 = v51[0];
      v30 = mlir::AffineExpr::operator*(&AffineExprFromFlatForm, v25);
      v31 = *(v4 - 152);
      v32 = *(a1 + 48);
      v33 = *(a1 + 56);
      if (v33)
      {
        v34 = 8 * v33;
        v35 = *(a1 + 48);
        while (*v35 != v30)
        {
          ++v35;
          v34 -= 8;
          if (!v34)
          {
            goto LABEL_40;
          }
        }
      }

      else
      {
        v35 = *(a1 + 48);
      }

      if (v35 == (v32 + 8 * v33) || (v36 = (v35 - v32) >> 3, v36 == -1))
      {
LABEL_40:
        if ((*(*a1 + 24))(a1, v26, v27, v28, v29, v30))
        {
          v41 = *(v4 - 160);
          v42 = *(v4 - 152);
          if (v42)
          {
            bzero(*(v4 - 160), 8 * v42);
          }

          v43 = *(a1 + 32) + *(a1 + 36) + *(a1 + 40) - 1;
          v39 = 1;
          *(v41 + 8 * v43) = 1;
          v40 = v47;
          if (v47 == v49)
          {
            goto LABEL_47;
          }
        }

        else
        {
          v39 = 0;
          v40 = v47;
          if (v47 == v49)
          {
            goto LABEL_47;
          }
        }
      }

      else
      {
        v37 = *(v4 - 160);
        if (v31)
        {
          bzero(*(v4 - 160), 8 * v31);
        }

        v38 = *(a1 + 32) + v36 + *(a1 + 36);
        v39 = 1;
        *(v37 + 8 * v38) = 1;
        v40 = v47;
        if (v47 == v49)
        {
LABEL_47:
          v10 = v50;
          if (v50 == v52)
          {
            return v39;
          }

          goto LABEL_53;
        }
      }

      free(v40);
      goto LABEL_47;
    }

    if (v21 < 9)
    {
      v23 = v49;
      v22 = *(v4 - 152);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v47, v49, *(v4 - 152), 8);
      v22 = *(v4 - 152);
      if (!v22)
      {
LABEL_27:
        LODWORD(v48) = v21;
        v21 = v22;
        goto LABEL_28;
      }

      v23 = v47;
    }

    memcpy(v23, *(v4 - 160), 8 * v22);
    v22 = *(v4 - 152);
    goto LABEL_27;
  }

  v10 = v50;
  v11 = *(v4 - 152);
  if (!v11)
  {
    goto LABEL_52;
  }

  v12 = *(v50 + (*(a1 + 36) + *(a1 + 32) + *(a1 + 40)));
  v13 = *(v4 - 160);
  v14 = (v11 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (!v14)
  {
    v17 = *(v4 - 160);
LABEL_50:
    v44 = (v13 + 8 * v11);
    do
    {
      *v17++ *= v12;
    }

    while (v17 != v44);
    goto LABEL_52;
  }

  v15 = v14 + 1;
  v16 = (v14 + 1) & 0x3FFFFFFFFFFFFFFELL;
  v17 = (v13 + 8 * v16);
  v18 = (v13 + 8);
  v19 = v16;
  do
  {
    v20 = *v18 * v12;
    *(v18 - 1) *= v12;
    *v18 = v20;
    v18 += 2;
    v19 -= 2;
  }

  while (v19);
  if (v15 != v16)
  {
    goto LABEL_50;
  }

LABEL_52:
  v39 = 1;
  if (v10 != v52)
  {
LABEL_53:
    free(v10);
  }

  return v39;
}

uint64_t mlir::SimpleAffineExprFlattener::visitModExpr(uint64_t a1, uint64_t a2)
{
  v75[8] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  v73 = v75;
  *v74 = 0x800000000;
  v5 = *(v4 - 72);
  if (&v73 != (v4 - 80) && v5 != 0)
  {
    if (v5 < 9)
    {
      v8 = v75;
      v7 = *(v4 - 72);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v73, v75, *(v4 - 72), 8);
      v7 = *(v4 - 72);
      if (!v7)
      {
LABEL_10:
        v74[0] = v5;
        v4 = *(a1 + 16);
        goto LABEL_11;
      }

      v8 = v73;
    }

    memcpy(v8, *(v4 - 80), 8 * v7);
    goto LABEL_10;
  }

LABEL_11:
  v9 = *(v4 - 80);
  if (v9 != (v4 - 64))
  {
    free(v9);
  }

  *(a1 + 16) = v4 - 80;
  v10 = (v4 - 160);
  v11 = *a2;
  if (*(*(a2 + 24) + 8) == 5)
  {
    v12 = *(v73 + (*(a1 + 36) + *(a1 + 32) + *(a1 + 40)));
    if (v12 < 1)
    {
      v20 = 0;
      v21 = v73;
      if (v73 == v75)
      {
        return v20;
      }

      goto LABEL_50;
    }

    v13 = *(v4 - 152);
    if (!v13)
    {
      goto LABEL_105;
    }

    v14 = *v10;
    v15 = *(v4 - 152);
    while (1)
    {
      v16 = *v14++;
      if (v16 % v12)
      {
        break;
      }

      if (!--v15)
      {
        goto LABEL_58;
      }
    }

    if (!v15)
    {
LABEL_58:
      bzero(*v10, 8 * v13);
      goto LABEL_105;
    }

    v37 = 0;
    v70 = v72;
    v71 = 0x800000000;
    v38 = *(v4 - 152);
    if (&v70 == v10 || !v38)
    {
LABEL_62:
      if (v38)
      {
        v41 = *v10;
        v42 = v12;
        do
        {
          if ((*v41 & 0x8000000000000000) == 0)
          {
            v43 = *v41;
          }

          else
          {
            v43 = -*v41;
          }

          if (v42 <= v43)
          {
            v44 = v43;
          }

          else
          {
            v44 = v42;
          }

          if (v42 >= v43)
          {
            v42 = v43;
          }

          if (v42)
          {
            v45 = v44 % v42;
            if (v45)
            {
              v46 = v45 >> __clz(__rbit64(v45));
              v47 = v42;
              do
              {
                v48 = v47 >> __clz(__rbit64(v47));
                v47 = v48 - v46;
                if (v46 > v48)
                {
                  v47 = v46 - v48;
                }

                if (v46 >= v48)
                {
                  v46 = v48;
                }
              }

              while (v47);
              v42 = v46 << __clz(__rbit64(v45 | v42));
            }
          }

          else
          {
            v42 = v44;
          }

          ++v41;
        }

        while (v41 != (*v10 + 8 * v38));
      }

      else
      {
        v42 = v12;
      }

      v49 = v70;
      v50 = v37;
      if (v42 != 1 && v37 != 0)
      {
        v52 = v70;
        if (((v50 - 1) & 0x1FFFFFFFFFFFFFFFLL) == 0)
        {
          goto LABEL_109;
        }

        v53 = ((v50 - 1) & 0x1FFFFFFFFFFFFFFFLL) + 1;
        v52 = (v70 + 8 * (v53 & 0x3FFFFFFFFFFFFFFELL));
        v54 = (v70 + 8);
        v55 = v53 & 0x3FFFFFFFFFFFFFFELL;
        do
        {
          v56 = *v54 / v42;
          *(v54 - 1) /= v42;
          *v54 = v56;
          v54 += 2;
          v55 -= 2;
        }

        while (v55);
        if (v53 != (v53 & 0x3FFFFFFFFFFFFFFELL))
        {
LABEL_109:
          do
          {
            *v52++ /= v42;
          }

          while (v52 != &v49[8 * v50]);
        }
      }

      v57 = v12 / v42;
      AffineExprFromFlatForm = mlir::getAffineExprFromFlatForm(v49, v50, *(a1 + 32), *(a1 + 36), *(a1 + 48), *(a1 + 56), v11);
      v68 = v11;
      v69 = v57;
      AffineUniquer = mlir::MLIRContext::getAffineUniquer(v11);
      v59 = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v68, &v69);
      v60 = mlir::AffineExpr::floorDiv(&AffineExprFromFlatForm, v59);
      v61 = *(a1 + 48);
      v62 = *(a1 + 56);
      if (v62)
      {
        v63 = 8 * v62;
        v64 = *(a1 + 48);
        while (*v64 != v60)
        {
          ++v64;
          v63 -= 8;
          if (!v63)
          {
            goto LABEL_102;
          }
        }
      }

      else
      {
        v64 = *(a1 + 48);
      }

      if (v64 == (v61 + 8 * v62) || (v65 = (v64 - v61) >> 3, v65 == -1))
      {
LABEL_102:
        (*(*a1 + 16))(a1, v70, v71, v57, v60);
        v66 = *(a1 + 32) + *(a1 + 36) + *(a1 + 40) - 1;
      }

      else
      {
        v66 = *(a1 + 32) + v65 + *(a1 + 36);
      }

      *(*v10 + v66) = -v12;
      if (v70 != v72)
      {
        free(v70);
      }

LABEL_105:
      v20 = 1;
      v21 = v73;
      if (v73 == v75)
      {
        return v20;
      }

      goto LABEL_50;
    }

    if (v38 < 9)
    {
      v40 = v72;
      v39 = *(v4 - 152);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, v72, *(v4 - 152), 8);
      v39 = *(v4 - 152);
      if (!v39)
      {
LABEL_61:
        LODWORD(v71) = v38;
        v37 = v38;
        v38 = *(v4 - 152);
        goto LABEL_62;
      }

      v40 = v70;
    }

    memcpy(v40, *v10, 8 * v39);
    goto LABEL_61;
  }

  v70 = v72;
  v71 = 0x800000000;
  v17 = *(v4 - 152);
  if (&v70 != v10 && v17)
  {
    if (v17 < 9)
    {
      v19 = v72;
      v18 = *(v4 - 152);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, v72, *(v4 - 152), 8);
      v18 = *(v4 - 152);
      if (!v18)
      {
LABEL_29:
        LODWORD(v71) = v17;
        v17 = v18;
        goto LABEL_30;
      }

      v19 = v70;
    }

    memcpy(v19, *(v4 - 160), 8 * v18);
    v18 = *(v4 - 152);
    goto LABEL_29;
  }

LABEL_30:
  v69 = mlir::getAffineExprFromFlatForm(*(v4 - 160), v17, *(a1 + 32), *(a1 + 36), *(a1 + 48), *(a1 + 56), v11);
  v22 = mlir::getAffineExprFromFlatForm(v73, v74[0], *(a1 + 32), *(a1 + 36), *(a1 + 48), *(a1 + 56), v11);
  v23 = mlir::AffineExpr::operator%(&v69, v22);
  v24 = *(v4 - 152);
  v25 = *(a1 + 48);
  v26 = *(a1 + 56);
  if (v26)
  {
    v27 = 8 * v26;
    v28 = *(a1 + 48);
    while (*v28 != v23)
    {
      ++v28;
      v27 -= 8;
      if (!v27)
      {
        goto LABEL_42;
      }
    }
  }

  else
  {
    v28 = *(a1 + 48);
  }

  if (v28 == (v25 + 8 * v26) || (v29 = (v28 - v25) >> 3, v29 == -1))
  {
LABEL_42:
    if ((*(*a1 + 24))(a1, v70, v71, v73, v74[0], v23))
    {
      v33 = *(v4 - 160);
      v34 = *(v4 - 152);
      if (v34)
      {
        bzero(*(v4 - 160), 8 * v34);
      }

      v35 = *(a1 + 32) + *(a1 + 36) + *(a1 + 40) - 1;
      v20 = 1;
      *(v33 + 8 * v35) = 1;
      v32 = v70;
      if (v70 == v72)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v20 = 0;
      v32 = v70;
      if (v70 == v72)
      {
        goto LABEL_49;
      }
    }

LABEL_48:
    free(v32);
    goto LABEL_49;
  }

  v30 = *v10;
  if (v24)
  {
    bzero(*v10, 8 * v24);
  }

  v31 = *(a1 + 32) + v29 + *(a1 + 36);
  v20 = 1;
  v30[v31] = 1;
  v32 = v70;
  if (v70 != v72)
  {
    goto LABEL_48;
  }

LABEL_49:
  v21 = v73;
  if (v73 != v75)
  {
LABEL_50:
    free(v21);
  }

  return v20;
}

uint64_t mlir::SimpleAffineExprFlattener::visitDivExpr(_DWORD *a1, uint64_t a2, int a3)
{
  v83[8] = *MEMORY[0x1E69E9840];
  v6 = *a2;
  v7 = *(a1 + 2);
  v81 = v83;
  *v82 = 0x800000000;
  v8 = *(v7 - 72);
  if (&v81 != (v7 - 80) && v8 != 0)
  {
    if (v8 < 9)
    {
      v11 = v83;
      v10 = *(v7 - 72);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v83, *(v7 - 72), 8);
      v10 = *(v7 - 72);
      if (!v10)
      {
LABEL_10:
        v82[0] = v8;
        v7 = *(a1 + 2);
        goto LABEL_11;
      }

      v11 = v81;
    }

    memcpy(v11, *(v7 - 80), 8 * v10);
    goto LABEL_10;
  }

LABEL_11:
  v12 = *(v7 - 80);
  if (v12 != (v7 - 64))
  {
    free(v12);
  }

  *(a1 + 2) = v7 - 80;
  v13 = (v7 - 160);
  if (*(*(a2 + 24) + 8) != 5)
  {
    v78 = v80;
    v79 = 0x800000000;
    v28 = *(v7 - 152);
    if (&v78 == v13 || !v28)
    {
      goto LABEL_55;
    }

    if (v28 < 9)
    {
      v30 = v80;
      v29 = *(v7 - 152);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v80, *(v7 - 152), 8);
      v29 = *(v7 - 152);
      if (!v29)
      {
LABEL_54:
        LODWORD(v79) = v28;
        v28 = v29;
LABEL_55:
        AffineExprFromFlatForm = mlir::getAffineExprFromFlatForm(*v13, v28, a1[8], a1[9], *(a1 + 6), a1[14], v6);
        v39 = mlir::getAffineExprFromFlatForm(v81, v82[0], a1[8], a1[9], *(a1 + 6), a1[14], v6);
        if (a3)
        {
          v40 = mlir::AffineExpr::ceilDiv(&AffineExprFromFlatForm, v39);
        }

        else
        {
          v40 = mlir::AffineExpr::floorDiv(&AffineExprFromFlatForm, v39);
        }

        v41 = *(v7 - 152);
        v42 = *(a1 + 6);
        v43 = a1[14];
        if (v43)
        {
          v44 = 8 * v43;
          v45 = *(a1 + 6);
          while (*v45 != v40)
          {
            ++v45;
            v44 -= 8;
            if (!v44)
            {
              goto LABEL_73;
            }
          }
        }

        else
        {
          v45 = *(a1 + 6);
        }

        if (v45 != (v42 + 8 * v43))
        {
          v46 = (v45 - v42) >> 3;
          if (v46 != -1)
          {
            v47 = *v13;
            if (v41)
            {
              bzero(*v13, 8 * v41);
            }

            v48 = a1[8] + v46 + a1[9];
            v37 = 1;
            v47[v48] = 1;
            v49 = v78;
            if (v78 != v80)
            {
              goto LABEL_69;
            }

LABEL_70:
            v38 = v81;
            if (v81 == v83)
            {
              return v37;
            }

            goto LABEL_71;
          }
        }

LABEL_73:
        if ((*(*a1 + 24))(a1, v78, v79, v81, v82[0], v40))
        {
          v51 = *(v7 - 160);
          v52 = *(v7 - 152);
          if (v52)
          {
            bzero(*(v7 - 160), 8 * v52);
          }

          v53 = a1[8] + a1[9] + a1[10] - 1;
          v37 = 1;
          *(v51 + 8 * v53) = 1;
          v49 = v78;
          if (v78 == v80)
          {
            goto LABEL_70;
          }
        }

        else
        {
          v37 = 0;
          v49 = v78;
          if (v78 == v80)
          {
            goto LABEL_70;
          }
        }

LABEL_69:
        free(v49);
        goto LABEL_70;
      }

      v30 = v78;
    }

    memcpy(v30, *(v7 - 160), 8 * v29);
    v29 = *(v7 - 152);
    goto LABEL_54;
  }

  v14 = a1[8];
  v15 = a1[9];
  v16 = *(v81 + v15 + v14 + a1[10]);
  if (v16 < 1)
  {
    v37 = 0;
    v38 = v81;
    if (v81 == v83)
    {
      return v37;
    }

    goto LABEL_71;
  }

  v17 = *(v7 - 160);
  v18 = *(v7 - 152);
  if (v18)
  {
    v19 = (v17 + 8 * v18);
    v20 = *(v81 + v15 + v14 + a1[10]);
    v21 = *(v7 - 160);
    do
    {
      if ((*v21 & 0x8000000000000000) == 0)
      {
        v22 = *v21;
      }

      else
      {
        v22 = -*v21;
      }

      if (v20 <= v22)
      {
        v23 = v22;
      }

      else
      {
        v23 = v20;
      }

      if (v20 >= v22)
      {
        v20 = v22;
      }

      if (v20)
      {
        v24 = v23 % v20;
        if (v24)
        {
          v25 = v24 >> __clz(__rbit64(v24));
          v26 = v20;
          do
          {
            v27 = v26 >> __clz(__rbit64(v26));
            v26 = v27 - v25;
            if (v25 > v27)
            {
              v26 = v25 - v27;
            }

            if (v25 >= v27)
            {
              v25 = v27;
            }
          }

          while (v26);
          v20 = v25 << __clz(__rbit64(v24 | v20));
        }
      }

      else
      {
        v20 = v23;
      }

      ++v21;
    }

    while (v21 != v19);
    if (v20 != 1)
    {
      v31 = *(v7 - 160);
      if (((v18 - 1) & 0x1FFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_123;
      }

      v32 = ((v18 - 1) & 0x1FFFFFFFFFFFFFFFLL) + 1;
      v31 = (v17 + 8 * (v32 & 0x3FFFFFFFFFFFFFFELL));
      v33 = (v17 + 8);
      v34 = v32 & 0x3FFFFFFFFFFFFFFELL;
      do
      {
        v35 = *v33 / v20;
        *(v33 - 1) /= v20;
        *v33 = v35;
        v33 += 2;
        v34 -= 2;
      }

      while (v34);
      if (v32 != (v32 & 0x3FFFFFFFFFFFFFFELL))
      {
LABEL_123:
        do
        {
          *v31++ /= v20;
        }

        while (v31 != v19);
      }
    }

    v36 = v16 / v20;
    if (v16 / v20 == 1)
    {
LABEL_48:
      v37 = 1;
      v38 = v81;
      if (v81 == v83)
      {
        return v37;
      }

      goto LABEL_71;
    }
  }

  else
  {
    v36 = v16 / v16;
    if (v16 / v16 == 1)
    {
      goto LABEL_48;
    }
  }

  v76 = mlir::getAffineExprFromFlatForm(v17, v18, v14, v15, *(a1 + 6), a1[14], v6);
  AffineExprFromFlatForm = v6;
  v78 = v36;
  AffineUniquer = mlir::MLIRContext::getAffineUniquer(v6);
  v55 = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &AffineExprFromFlatForm, &v78);
  if (a3)
  {
    v56 = mlir::AffineExpr::ceilDiv(&v76, v55);
    v57 = *(a1 + 6);
    v58 = a1[14];
    if (v58)
    {
      goto LABEL_83;
    }

LABEL_88:
    v60 = v57;
    goto LABEL_89;
  }

  v56 = mlir::AffineExpr::floorDiv(&v76, v55);
  v57 = *(a1 + 6);
  v58 = a1[14];
  if (!v58)
  {
    goto LABEL_88;
  }

LABEL_83:
  v59 = 8 * v58;
  v60 = v57;
  while (*v60 != v56)
  {
    v60 += 8;
    v59 -= 8;
    if (!v59)
    {
      goto LABEL_95;
    }
  }

LABEL_89:
  if (v60 == &v57[8 * v58] || (v61 = (v60 - v57) >> 3, v61 == -1))
  {
LABEL_95:
    v65 = 0;
    if (a3)
    {
      v78 = v80;
      v79 = 0x800000000;
      if (&v78 == v13 || (v66 = *(v7 - 152), !v66))
      {
        v72 = v80;
LABEL_111:
        *&v72[8 * v65 - 8] = v36 + *&v72[8 * v65 - 8] - 1;
        goto LABEL_115;
      }

      if (v66 < 9)
      {
        v68 = v80;
        v67 = *(v7 - 152);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v80, *(v7 - 152), 8);
        v67 = *(v7 - 152);
        if (!v67)
        {
LABEL_110:
          LODWORD(v79) = v66;
          v72 = v78;
          v65 = v66;
          goto LABEL_111;
        }

        v68 = v78;
      }

      memcpy(v68, *v13, 8 * v67);
      goto LABEL_110;
    }

    v78 = v80;
    v79 = 0x800000000;
    if (&v78 == v13 || (v69 = *(v7 - 152), !v69))
    {
      v72 = v80;
      goto LABEL_115;
    }

    if (v69 < 9)
    {
      v71 = v80;
      v70 = *(v7 - 152);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v78, v80, *(v7 - 152), 8);
      v70 = *(v7 - 152);
      if (!v70)
      {
LABEL_114:
        LODWORD(v79) = v69;
        v72 = v78;
        v65 = v69;
LABEL_115:
        (*(*a1 + 16))(a1, v72, v65, v36, v56);
        if (v78 != v80)
        {
          free(v78);
        }

        v73 = *(v7 - 160);
        v74 = *(v7 - 152);
        if (v74)
        {
          bzero(*(v7 - 160), 8 * v74);
        }

        v75 = a1[8] + a1[9] + a1[10] - 1;
        v37 = 1;
        *(v73 + 8 * v75) = 1;
        v38 = v81;
        if (v81 == v83)
        {
          return v37;
        }

LABEL_71:
        free(v38);
        return v37;
      }

      v71 = v78;
    }

    memcpy(v71, *v13, 8 * v70);
    goto LABEL_114;
  }

  v62 = *(v7 - 160);
  v63 = *(v7 - 152);
  if (v63)
  {
    bzero(*(v7 - 160), 8 * v63);
  }

  v64 = a1[8] + v61 + a1[9];
  v37 = 1;
  *(v62 + 8 * v64) = 1;
  v38 = v81;
  if (v81 != v83)
  {
    goto LABEL_71;
  }

  return v37;
}

uint64_t mlir::SimpleAffineExprFlattener::visitDimExpr(uint64_t a1, uint64_t a2)
{
  v17[32] = *MEMORY[0x1E69E9840];
  v4 = (*(a1 + 32) + *(a1 + 36) + *(a1 + 40) + 1);
  __src = v17;
  v16 = 32;
  if (v4 < 0x21)
  {
    if (!v4)
    {
      goto LABEL_6;
    }

    v6 = 8 * v4;
    v5 = v17;
  }

  else
  {
    v15 = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v17, v4, 8);
    v5 = __src;
    v6 = 8 * v4;
  }

  bzero(v5, v6);
LABEL_6:
  v15 = v4;
  v7 = *(a1 + 16);
  if (v7 >= *(a1 + 24))
  {
    v10 = std::vector<llvm::SmallVector<long long,8u>>::__emplace_back_slow_path<llvm::SmallVector<long long,32u>>(a1 + 8, &__src);
    *(a1 + 16) = v10;
    v11 = __src;
    if (__src == v17)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  *v7 = v7 + 16;
  *(v7 + 8) = 0x800000000;
  if (v7 != &__src)
  {
    v8 = v15;
    if (v15)
    {
      if (__src == v17)
      {
        v12 = v15;
        if (v15 < 9 || (llvm::SmallVectorBase<unsigned int>::grow_pod(v7, v7 + 16, v15, 8), (v12 = v15) != 0))
        {
          memcpy(*v7, __src, 8 * v12);
        }

        *(v7 + 8) = v8;
      }

      else
      {
        *v7 = __src;
        v9 = v16;
        *(v7 + 8) = v8;
        *(v7 + 12) = v9;
        __src = v17;
        v16 = 0;
      }

      v15 = 0;
    }
  }

  v10 = (v7 + 80);
  *(a1 + 16) = v7 + 80;
  v11 = __src;
  if (__src != v17)
  {
LABEL_19:
    free(v11);
    v10 = *(a1 + 16);
  }

LABEL_20:
  *(*(v10 - 10) + 8 * *(a2 + 16)) = 1;
  return 1;
}

uint64_t mlir::SimpleAffineExprFlattener::visitSymbolExpr(uint64_t a1, uint64_t a2)
{
  v17[32] = *MEMORY[0x1E69E9840];
  v4 = (*(a1 + 32) + *(a1 + 36) + *(a1 + 40) + 1);
  __src = v17;
  v16 = 32;
  if (v4 < 0x21)
  {
    if (!v4)
    {
      goto LABEL_6;
    }

    v6 = 8 * v4;
    v5 = v17;
  }

  else
  {
    v15 = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v17, v4, 8);
    v5 = __src;
    v6 = 8 * v4;
  }

  bzero(v5, v6);
LABEL_6:
  v15 = v4;
  v7 = *(a1 + 16);
  if (v7 >= *(a1 + 24))
  {
    v10 = std::vector<llvm::SmallVector<long long,8u>>::__emplace_back_slow_path<llvm::SmallVector<long long,32u>>(a1 + 8, &__src);
    *(a1 + 16) = v10;
    v11 = __src;
    if (__src == v17)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  *v7 = v7 + 16;
  *(v7 + 8) = 0x800000000;
  if (v7 != &__src)
  {
    v8 = v15;
    if (v15)
    {
      if (__src == v17)
      {
        v12 = v15;
        if (v15 < 9 || (llvm::SmallVectorBase<unsigned int>::grow_pod(v7, v7 + 16, v15, 8), (v12 = v15) != 0))
        {
          memcpy(*v7, __src, 8 * v12);
        }

        *(v7 + 8) = v8;
      }

      else
      {
        *v7 = __src;
        v9 = v16;
        *(v7 + 8) = v8;
        *(v7 + 12) = v9;
        __src = v17;
        v16 = 0;
      }

      v15 = 0;
    }
  }

  v10 = (v7 + 80);
  *(a1 + 16) = v7 + 80;
  v11 = __src;
  if (__src != v17)
  {
LABEL_19:
    free(v11);
    v10 = *(a1 + 16);
  }

LABEL_20:
  *(*(v10 - 10) + 8 * (*(a2 + 16) + *(a1 + 32))) = 1;
  return 1;
}

uint64_t mlir::SimpleAffineExprFlattener::visitConstantExpr(uint64_t a1, uint64_t a2)
{
  v17[32] = *MEMORY[0x1E69E9840];
  v4 = (*(a1 + 32) + *(a1 + 36) + *(a1 + 40) + 1);
  __src = v17;
  v16 = 32;
  if (v4 < 0x21)
  {
    if (!v4)
    {
      goto LABEL_6;
    }

    v6 = 8 * v4;
    v5 = v17;
  }

  else
  {
    v15 = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v17, v4, 8);
    v5 = __src;
    v6 = 8 * v4;
  }

  bzero(v5, v6);
LABEL_6:
  v15 = v4;
  v7 = *(a1 + 16);
  if (v7 >= *(a1 + 24))
  {
    v10 = std::vector<llvm::SmallVector<long long,8u>>::__emplace_back_slow_path<llvm::SmallVector<long long,32u>>(a1 + 8, &__src);
    *(a1 + 16) = v10;
    v11 = __src;
    if (__src == v17)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  *v7 = v7 + 16;
  *(v7 + 8) = 0x800000000;
  if (v7 != &__src)
  {
    v8 = v15;
    if (v15)
    {
      if (__src == v17)
      {
        v12 = v15;
        if (v15 < 9 || (llvm::SmallVectorBase<unsigned int>::grow_pod(v7, v7 + 16, v15, 8), (v12 = v15) != 0))
        {
          memcpy(*v7, __src, 8 * v12);
        }

        *(v7 + 8) = v8;
      }

      else
      {
        *v7 = __src;
        v9 = v16;
        *(v7 + 8) = v8;
        *(v7 + 12) = v9;
        __src = v17;
        v16 = 0;
      }

      v15 = 0;
    }
  }

  v10 = (v7 + 80);
  *(a1 + 16) = v7 + 80;
  v11 = __src;
  if (__src != v17)
  {
LABEL_19:
    free(v11);
    v10 = *(a1 + 16);
  }

LABEL_20:
  *(*(v10 - 10) + 8 * (*(a1 + 36) + *(a1 + 32) + *(a1 + 40))) = *(a2 + 16);
  return 1;
}

void mlir::SimpleAffineExprFlattener::addLocalFloorDivId(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a1 + 8);
  for (i = *(a1 + 16); v7 != i; v7 += 80)
  {
    while (1)
    {
      v10 = *v7;
      v11 = *v7 + 8 * (*(a1 + 36) + *(a1 + 32)) + 8 * *(a1 + 40);
      v12 = *(v7 + 8);
      if (*v7 + 8 * v12 == v11)
      {
        break;
      }

      if (v12 >= *(v7 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v7, v7 + 16, v12 + 1, 8);
        v13 = *v7;
        v12 = *(v7 + 8);
      }

      else
      {
        v13 = *v7;
      }

      v14 = (v13 + v11 - v10);
      v15 = (v13 + 8 * v12);
      *v15 = *(v15 - 1);
      if (v15 - 1 != v14)
      {
        memmove(v14 + 1, v14, (v15 - 1) - v14);
        LODWORD(v12) = *(v7 + 8);
      }

      *(v7 + 8) = v12 + 1;
      *v14 = 0;
      v7 += 80;
      if (v7 == i)
      {
        goto LABEL_2;
      }
    }

    if (v12 >= *(v7 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v7, v7 + 16, v12 + 1, 8);
      v12 = *(v7 + 8);
      v10 = *v7;
    }

    *(v10 + 8 * v12) = 0;
    ++*(v7 + 8);
  }

LABEL_2:
  v9 = *(a1 + 56);
  if (v9 >= *(a1 + 60))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 48, a1 + 64, v9 + 1, 8);
    LODWORD(v9) = *(a1 + 56);
  }

  *(*(a1 + 48) + 8 * v9) = a5;
  ++*(a1 + 56);
  ++*(a1 + 40);
}

uint64_t mlir::SimpleAffineExprFlattener::addLocalIdSemiAffine(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a1 + 8);
  for (i = *(a1 + 16); v8 != i; v8 += 80)
  {
    while (1)
    {
      v12 = *v8;
      v13 = *v8 + 8 * (*(a1 + 36) + *(a1 + 32)) + 8 * *(a1 + 40);
      v14 = *(v8 + 8);
      if (*v8 + 8 * v14 == v13)
      {
        break;
      }

      if (v14 >= *(v8 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v8, v8 + 16, v14 + 1, 8);
        v15 = *v8;
        v14 = *(v8 + 8);
      }

      else
      {
        v15 = *v8;
      }

      v16 = (v15 + v13 - v12);
      v17 = (v15 + 8 * v14);
      *v17 = *(v17 - 1);
      if (v17 - 1 != v16)
      {
        memmove(v16 + 1, v16, (v17 - 1) - v16);
        LODWORD(v14) = *(v8 + 8);
      }

      *(v8 + 8) = v14 + 1;
      *v16 = 0;
      v8 += 80;
      if (v8 == i)
      {
        goto LABEL_2;
      }
    }

    if (v14 >= *(v8 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v8, v8 + 16, v14 + 1, 8);
      v14 = *(v8 + 8);
      v12 = *v8;
    }

    *(v12 + 8 * v14) = 0;
    ++*(v8 + 8);
  }

LABEL_2:
  v10 = *(a1 + 56);
  if (v10 >= *(a1 + 60))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 48, a1 + 64, v10 + 1, 8);
    LODWORD(v10) = *(a1 + 56);
  }

  *(*(a1 + 48) + 8 * v10) = a6;
  ++*(a1 + 56);
  ++*(a1 + 40);
  return 1;
}

mlir::MLIRContext **mlir::simplifyAffineExpr(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3)
{
  AffineExprFromFlatForm = a1;
  v140[8] = *MEMORY[0x1E69E9840];
  v113 = a1;
  if ((mlir::AffineExpr::isPureAffine(&v113) & 1) == 0)
  {
    AffineExprFromFlatForm = simplifySemiAffine(AffineExprFromFlatForm, a2, a3);
    v113 = AffineExprFromFlatForm;
  }

  v128 = &unk_1F5AF5618;
  v132 = a2;
  v133 = a3;
  v134 = 0;
  v135 = v137;
  *v136 = 0x400000000;
  __p = operator new(0x280uLL);
  v130 = __p;
  v131 = __p + 640;
  if (mlir::AffineExprVisitor<mlir::SimpleAffineExprFlattener,llvm::LogicalResult>::walkPostOrder(&v128, AffineExprFromFlatForm))
  {
    v6 = *(v130 - 10);
    v7 = *(v130 - 18);
    if ((mlir::AffineExpr::isPureAffine(&v113) & 1) != 0 || AffineExprFromFlatForm != mlir::getAffineExprFromFlatForm(v6, v7, a2, a3, v135, v136[0], *AffineExprFromFlatForm))
    {
      if (mlir::AffineExpr::isPureAffine(&v113))
      {
        AffineExprFromFlatForm = mlir::getAffineExprFromFlatForm(v6, v7, a2, a3, v135, v136[0], *AffineExprFromFlatForm);
        v9 = v130 - 80;
        v8 = *(v130 - 10);
        if (v8 != v130 - 64)
        {
          free(v8);
        }

        v130 = v9;
        goto LABEL_106;
      }

      v10 = v135;
      v107 = v136[0];
      v11 = *AffineExprFromFlatForm;
      v138 = 0;
      v115 = v11;
      v112 = v11;
      AffineUniquer = mlir::MLIRContext::getAffineUniquer(v11);
      v123 = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v115, &v138);
      v121[0] = 0;
      v121[1] = 0;
      v122 = 0;
      v119[0] = 0;
      v119[1] = 0;
      v120 = 0;
      v138 = v140;
      v139 = 0x800000000;
      v13 = a3 + a2;
      v109 = v6;
      v106 = v7;
      v104 = a2;
      v105 = a3 + a2;
      if (a3 + a2 <= a2)
      {
        v15 = 0;
        v24 = a2;
      }

      else
      {
        v14 = 0;
        v15 = 0;
        v110 = a2;
        if (a2 <= a3)
        {
          v16 = a3;
        }

        else
        {
          v16 = a2;
        }

        v103 = a3;
        v17 = a3;
        v18 = v6 + 8 * a2;
        do
        {
          v20 = *(v18 + 8 * v14);
          if (v20)
          {
            LODWORD(v124) = v14;
            v115 = v112;
            v21 = mlir::MLIRContext::getAffineUniquer(v112);
            LODWORD(v126) = 7;
            v22 = mlir::StorageUniquer::get<mlir::detail::AffineDimExprStorage,unsigned int,unsigned int &>(v21, llvm::function_ref<void ()(mlir::detail::AffineDimExprStorage *)>::callback_fn<getAffineDimOrSymbol(mlir::AffineExprKind,unsigned int,mlir::MLIRContext *)::$_0>, &v115, &v126, &v124);
            v23 = v139;
            if (v139 >= HIDWORD(v139))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v138, v140, v139 + 1, 8);
              v23 = v139;
            }

            v19 = (v14 + ((v15 + v16) << 32));
            *&v138[2 * v23] = v19;
            ++v15;
            LODWORD(v139) = v139 + 1;
            v124 = v19;
            v125[0] = v20;
            llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>,std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>::try_emplace<long long>(v119, &v124, v125, &v115);
            v124 = v19;
            v125[0] = v22;
            llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>,std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>::try_emplace<long long>(v121, &v124, v125, &v115);
          }

          ++v14;
        }

        while (v17 != v14);
        v6 = v109;
        v24 = v110;
        LODWORD(a2) = v104;
        v13 = v105;
        LODWORD(a3) = v103;
      }

      v111 = v24;
      v25 = ~(v24 + a3) + v7;
      v115 = &v118;
      v117 = 4;
      if (v25 < 5)
      {
        if (!v25)
        {
LABEL_26:
          v116 = v25;
          v27 = v6 + 8 * v13;
          if (v107)
          {
            v28 = 0;
            if (a2 <= a3)
            {
              LODWORD(a2) = a3;
            }

            v29 = 8 * v107;
            v108 = 0xFFFFFFFFLL;
            v30 = v111;
            while (1)
            {
              v32 = *(v27 + 8 * v28);
              if (!v32)
              {
                goto LABEL_33;
              }

              v33 = v10[v28];
              v34 = *(v33 + 16);
              v35 = *(v34 + 8);
              if ((v35 & 0xFFFFFFFE) != 6)
              {
                goto LABEL_33;
              }

              v36 = *(v33 + 24);
              v37 = *(v36 + 8);
              if ((v37 - 6) >= 2)
              {
                break;
              }

              v38 = *(v34 + 16);
              v39 = v139;
              if (v35 == 6)
              {
                v40 = *(v36 + 16);
                if (v139 >= HIDWORD(v139))
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v138, v140, v139 + 1, 8);
                  v39 = v139;
                }

                v41 = v38 | (v40 << 32);
                *&v138[2 * v39] = v41;
                LODWORD(v139) = v139 + 1;
                v126 = v41;
                v127 = v32;
                llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>,std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>::try_emplace<long long>(v119, &v126, &v127, &v124);
                v126 = v41;
                v127 = v33;
                llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>,std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>::try_emplace<long long>(v121, &v126, &v127, &v124);
                v30 = v111;
                goto LABEL_32;
              }

              if (v139 >= HIDWORD(v139))
              {
                goto LABEL_47;
              }

LABEL_31:
              v31 = v38 | ((v15 + a2) << 32);
              *&v138[2 * v39] = v31;
              ++v15;
              LODWORD(v139) = v139 + 1;
              v126 = v31;
              v127 = v32;
              llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>,std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>::try_emplace<long long>(v119, &v126, &v127, &v124);
              v126 = v31;
              v127 = v33;
              llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>,std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>::try_emplace<long long>(v121, &v126, &v127, &v124);
LABEL_32:
              *(v115 + v28) = 1;
LABEL_33:
              ++v28;
              v29 -= 8;
              if (!v29)
              {
                goto LABEL_49;
              }
            }

            if (v37 != 5)
            {
              goto LABEL_33;
            }

            v38 = *(v34 + 16);
            if (v35 == 6)
            {
              v42 = v139;
              if (v139 >= HIDWORD(v139))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v138, v140, v139 + 1, 8);
                v42 = v139;
              }

              v43 = v38 | (v108 << 32);
              *&v138[2 * v42] = v43;
              LODWORD(v139) = v139 + 1;
              v126 = v43;
              v127 = v32;
              llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>,std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>::try_emplace<long long>(v119, &v126, &v127, &v124);
              v126 = v43;
              v127 = v33;
              llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>,std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>::try_emplace<long long>(v121, &v126, &v127, &v124);
              v108 = (v108 - 1);
              v30 = v111;
              goto LABEL_32;
            }

            v39 = v139;
            if (v139 < HIDWORD(v139))
            {
              goto LABEL_31;
            }

LABEL_47:
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v138, v140, v39 + 1, 8);
            v39 = v139;
            goto LABEL_31;
          }

          v108 = 0xFFFFFFFFLL;
          v30 = v111;
LABEL_49:
          v44 = v109;
          if (v104)
          {
            v45 = 0;
            v46 = v108;
            do
            {
              v48 = *(v44 + 8 * v45);
              if (v48)
              {
                LODWORD(v126) = v45;
                v124 = v112;
                v49 = mlir::MLIRContext::getAffineUniquer(v112);
                LODWORD(v114) = 6;
                v50 = mlir::StorageUniquer::get<mlir::detail::AffineDimExprStorage,unsigned int,unsigned int &>(v49, llvm::function_ref<void ()(mlir::detail::AffineDimExprStorage *)>::callback_fn<getAffineDimOrSymbol(mlir::AffineExprKind,unsigned int,mlir::MLIRContext *)::$_0>, &v124, &v114, &v126);
                v51 = v139;
                if (v139 >= HIDWORD(v139))
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v138, v140, v139 + 1, 8);
                  v51 = v139;
                }

                v47 = v45 + (v46 << 32);
                *&v138[2 * v51] = v47;
                v46 = (v46 - 1);
                LODWORD(v139) = v139 + 1;
                v126 = v47;
                v127 = v48;
                llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>,std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>::try_emplace<long long>(v119, &v126, &v127, &v124);
                v126 = v47;
                v127 = v50;
                llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>,std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>::try_emplace<long long>(v121, &v126, &v127, &v124);
                v44 = v109;
                v30 = v111;
              }

              ++v45;
            }

            while (v30 != v45);
          }

          v52 = 126 - 2 * __clz(v139);
          if (v139)
          {
            v53 = v52;
          }

          else
          {
            v53 = 0;
          }

          std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,int> *,false>(v138, &v138[2 * v139], &v124, v53, 1);
          if (!v139)
          {
LABEL_91:
            v87 = (v106 - 1);
            if (v105 < v87)
            {
              v88 = 0;
              v89 = v87 - v105;
              do
              {
                if (*(v27 + 8 * v88) && (*(v115 + v88) & 1) == 0)
                {
                  v90 = **v10;
                  v124 = *(v27 + 8 * v88);
                  v126 = v90;
                  v91 = mlir::MLIRContext::getAffineUniquer(v90);
                  v92 = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(v91, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v126, &v124);
                  v93 = mlir::AffineExpr::operator*(v10, v92);
                  v123 = mlir::AffineExpr::operator+(&v123, v93);
                }

                ++v88;
                ++v10;
              }

              while (v89 != v88);
            }

            if (*(v44 + 8 * v106 - 8))
            {
              v94 = *v123;
              v124 = *(v44 + 8 * v106 - 8);
              v126 = v94;
              v95 = mlir::MLIRContext::getAffineUniquer(v94);
              v96 = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(v95, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v126, &v124);
              v123 = mlir::AffineExpr::operator+(&v123, v96);
            }

            if (v115 != &v118)
            {
              free(v115);
            }

            if (v138 != v140)
            {
              free(v138);
            }

            llvm::deallocate_buffer(v119[0], (16 * v120));
          }

          v54 = v138;
          v55 = &v138[2 * v139];
          while (1)
          {
            v63 = *v54;
            v64 = v54[1];
            if (v122)
            {
              v65 = 0xBF58476D1CE4E5B9 * ((37 * v64) | ((37 * v63) << 32));
              v66 = (v122 - 1) & ((v65 >> 31) ^ v65);
              v67 = (v121[0] + 16 * v66);
              v69 = *v67;
              v68 = v67[1];
              if (v63 == v69 && v64 == v68)
              {
LABEL_74:
                v71 = *(v121[0] + 2 * v66 + 1);
                v114 = v71;
                v72 = v120;
                if (!v120)
                {
                  goto LABEL_89;
                }

                goto LABEL_75;
              }

              v79 = 1;
              while (v69 != -1 || v68 != 0x7FFFFFFF)
              {
                v80 = v66 + v79++;
                v66 = v80 & (v122 - 1);
                v81 = (v121[0] + 16 * v66);
                v69 = *v81;
                v68 = v81[1];
                if (v63 == v69 && v64 == v68)
                {
                  goto LABEL_74;
                }
              }
            }

            v71 = 0;
            v114 = 0;
            v72 = v120;
            if (!v120)
            {
              goto LABEL_89;
            }

LABEL_75:
            v73 = 0xBF58476D1CE4E5B9 * ((37 * v64) | ((37 * v63) << 32));
            v74 = (v73 >> 31) ^ v73;
            v75 = v72 - 1;
            v58 = (v72 - 1) & v74;
            v76 = (v119[0] + 16 * v58);
            v61 = *v76;
            v60 = v76[1];
            if (v63 != v61 || v64 != v60)
            {
              v57 = 1;
              while (v61 != -1 || v60 != 0x7FFFFFFF)
              {
                v56 = v58 + v57++;
                v58 = v56 & v75;
                v59 = (v119[0] + 16 * v58);
                v61 = *v59;
                v60 = v59[1];
                if (v63 == v61 && v64 == v60)
                {
                  goto LABEL_80;
                }
              }

LABEL_89:
              v78 = 0;
              goto LABEL_90;
            }

LABEL_80:
            v78 = *(v119[0] + 2 * v58 + 1);
LABEL_90:
            v83 = *v71;
            v124 = v78;
            v126 = v83;
            v84 = mlir::MLIRContext::getAffineUniquer(v83);
            v85 = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(v84, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v126, &v124);
            v86 = mlir::AffineExpr::operator*(&v114, v85);
            v123 = mlir::AffineExpr::operator+(&v123, v86);
            v54 += 2;
            if (v54 == v55)
            {
              goto LABEL_91;
            }
          }
        }

        v26 = &v118;
      }

      else
      {
        v116 = 0;
        llvm::SmallVectorBase<unsigned long long>::grow_pod(&v115, &v118, v25, 1);
        v26 = v115;
      }

      bzero(v26, v25);
      goto LABEL_26;
    }
  }

LABEL_106:
  v128 = &unk_1F5AF5618;
  if (v135 != v137)
  {
    free(v135);
  }

  v97 = __p;
  if (__p)
  {
    v98 = v130;
    v99 = __p;
    if (v130 != __p)
    {
      do
      {
        v101 = *(v98 - 10);
        v98 -= 80;
        v100 = v101;
        if (v98 + 16 != v101)
        {
          free(v100);
        }
      }

      while (v98 != v97);
      v99 = __p;
    }

    v130 = v97;
    operator delete(v99);
  }

  return AffineExprFromFlatForm;
}

uint64_t simplifySemiAffine(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42[6] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  v6 = a1;
  if (((1 << v3) & 0x1C) != 0)
  {
    v10 = simplifySemiAffine(*(a1 + 16), a2, a3);
    v11 = simplifySemiAffine(*(v6 + 24), a2, a3);
    v40 = v42;
    v41 = 0x600000000;
    v35 = v10;
    getSummandExprs(v10, &v40);
    v12 = v41;
    if (v41)
    {
      v13 = 0;
      v14 = 1;
      do
      {
        v15 = *(v40 + v13);
        if (v15)
        {
          v16 = *(v15 + 8) == 1;
        }

        else
        {
          v16 = 0;
        }

        if (!v16)
        {
          goto LABEL_7;
        }

        v17 = *(v15 + 16);
        v18 = *(v17 + 8);
        if (v17)
        {
          v19 = v18 == 5;
        }

        else
        {
          v19 = 0;
        }

        if (v19 && *(v17 + 16) == -1)
        {
          v17 = *(v15 + 24);
          if (*(v17 + 8) != 2)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v20 = *(v15 + 24);
          if (v20)
          {
            v21 = *(v20 + 8) == 5;
          }

          else
          {
            v21 = 0;
          }

          if (!v21 || *(v20 + 16) != -1 || v18 != 2)
          {
            goto LABEL_7;
          }
        }

        if (*(v17 + 24) == v11)
        {
          v38 = *v35;
          v39 = 0;
          AffineUniquer = mlir::MLIRContext::getAffineUniquer(v38);
          v23 = 0;
          v36 = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v38, &v39);
          do
          {
            if (v13 != v23)
            {
              v36 = mlir::AffineExpr::operator+(&v36, *(v40 + v23));
            }

            ++v23;
          }

          while (v12 != v23);
          v37 = *(v17 + 16);
          v38 = *v37;
          v39 = -1;
          v24 = mlir::MLIRContext::getAffineUniquer(v38);
          v25 = mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(v24, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v38, &v39);
          v26 = mlir::AffineExpr::operator*(&v37, v25);
          v36 = mlir::AffineExpr::operator+(&v36, v26);
          v27 = mlir::simplifyAffineExpr(v36, a2, a3);
          v28 = v27 && *(v27 + 8) == 5;
          if (v28 && !*(v27 + 16))
          {
            goto LABEL_41;
          }
        }

LABEL_7:
        v14 = ++v13 < v12;
      }

      while (v13 != v12);
    }

    v14 = 0;
LABEL_41:
    if (v40 != v42)
    {
      free(v40);
    }

    if (v14)
    {
LABEL_44:
      v39 = *v6;
      v40 = 0;
      v29 = mlir::MLIRContext::getAffineUniquer(v39);
      return mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(v29, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v39, &v40);
    }

    v30 = simplifySemiAffine(*(v6 + 24), a2, a3);
    if (v30 && *(v30 + 8) == 7)
    {
      v31 = *(v30 + 16);
      v32 = *(v6 + 8);
      if (isDivisibleBySymbol(*(v6 + 16), v31, v32))
      {
        if (v32 != 2)
        {
          return symbolicDivide(v35, v31, v32);
        }

        goto LABEL_44;
      }

      v40 = v35;
      if (v32 <= 2)
      {
        if (v32)
        {
          if (v32 == 1)
          {
            goto LABEL_61;
          }

          return mlir::AffineExpr::operator%(&v40, v11);
        }

        return mlir::AffineExpr::operator+(&v40, v11);
      }

      if (v32 != 3)
      {
        if (v32 != 4)
        {
          return mlir::AffineExpr::operator%(&v40, v11);
        }

        return mlir::AffineExpr::ceilDiv(&v40, v11);
      }
    }

    else
    {
      v33 = *(v6 + 8);
      v40 = v35;
      if (v33 <= 2)
      {
        if (v33)
        {
          if (v33 == 1)
          {
LABEL_61:
            v8 = v11;
            return mlir::AffineExpr::operator*(&v40, v8);
          }

          return mlir::AffineExpr::operator%(&v40, v11);
        }

        return mlir::AffineExpr::operator+(&v40, v11);
      }

      if (v33 != 3)
      {
        if (v33 != 4)
        {
          return mlir::AffineExpr::operator%(&v40, v11);
        }

        return mlir::AffineExpr::ceilDiv(&v40, v11);
      }
    }

    return mlir::AffineExpr::floorDiv(&v40, v11);
  }

  if (((1 << v3) & 0xE0) == 0)
  {
    v7 = simplifySemiAffine(*(a1 + 16), a2, a3);
    v8 = simplifySemiAffine(*(v6 + 24), a2, a3);
    v40 = v7;
    if (!v3)
    {
      return mlir::AffineExpr::operator+(&v40, v8);
    }

    return mlir::AffineExpr::operator*(&v40, v8);
  }

  return v6;
}

uint64_t mlir::AffineExprVisitor<mlir::SimpleAffineExprFlattener,llvm::LogicalResult>::walkPostOrder(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 > 3)
  {
    if (v2 > 5)
    {
      if (v2 == 6)
      {

        return mlir::SimpleAffineExprFlattener::visitDimExpr(a1, a2);
      }

      else
      {

        return mlir::SimpleAffineExprFlattener::visitSymbolExpr(a1, a2);
      }
    }

    if (v2 != 4)
    {

      return mlir::SimpleAffineExprFlattener::visitConstantExpr(a1, a2);
    }

    if ((mlir::AffineExprVisitor<mlir::SimpleAffineExprFlattener,llvm::LogicalResult>::walkOperandsPostOrder(a1, a2) & 1) == 0)
    {
      return 0;
    }

    v18 = a1;
    v19 = a2;
    v20 = 1;

    return mlir::SimpleAffineExprFlattener::visitDivExpr(v18, v19, v20);
  }

  if (v2 > 1)
  {
    if (v2 == 2)
    {
      if ((mlir::AffineExprVisitor<mlir::SimpleAffineExprFlattener,llvm::LogicalResult>::walkOperandsPostOrder(a1, a2) & 1) == 0)
      {
        return 0;
      }

      return mlir::SimpleAffineExprFlattener::visitModExpr(a1, a2);
    }

    if ((mlir::AffineExprVisitor<mlir::SimpleAffineExprFlattener,llvm::LogicalResult>::walkOperandsPostOrder(a1, a2) & 1) == 0)
    {
      return 0;
    }

    v18 = a1;
    v19 = a2;
    v20 = 0;

    return mlir::SimpleAffineExprFlattener::visitDivExpr(v18, v19, v20);
  }

  if (!v2)
  {
    if (mlir::AffineExprVisitor<mlir::SimpleAffineExprFlattener,llvm::LogicalResult>::walkOperandsPostOrder(a1, a2))
    {
      v4 = a1;
      v5 = *(a1 + 16);
      v7 = v5 - 80;
      v6 = *(v5 - 80);
      v8 = *(v5 - 72);
      if (!v8)
      {
        goto LABEL_49;
      }

      v9 = *(v5 - 160);
      if (v8 > 5 && (v9 < v6 + 8 * v8 ? (v10 = v6 >= v9 + 8 * v8) : (v10 = 1), v10))
      {
        v11 = v8 & 0xFFFFFFFC;
        v12 = v6 + 1;
        v13 = (v9 + 16);
        v14 = v11;
        do
        {
          v15 = vaddq_s64(*v13, *v12);
          v13[-1] = vaddq_s64(v13[-1], v12[-1]);
          *v13 = v15;
          v12 += 2;
          v13 += 2;
          v14 -= 4;
        }

        while (v14);
        if (v11 == v8)
        {
LABEL_49:
          if (v6 != (v5 - 64))
          {
            free(v6);
            v4 = a1;
          }

          *(v4 + 16) = v7;
          return 1;
        }
      }

      else
      {
        v11 = 0;
      }

      v24 = v8 - v11;
      v25 = v11;
      v26 = (v9 + v25 * 8);
      v27 = &v6->i64[v25];
      do
      {
        v28 = *v27++;
        *v26++ += v28;
        --v24;
      }

      while (v24);
      goto LABEL_49;
    }

    return 0;
  }

  if ((mlir::AffineExprVisitor<mlir::SimpleAffineExprFlattener,llvm::LogicalResult>::walkOperandsPostOrder(a1, a2) & 1) == 0)
  {
    return 0;
  }

  return mlir::SimpleAffineExprFlattener::visitMulExpr(a1, a2);
}

void mlir::SimpleAffineExprFlattener::~SimpleAffineExprFlattener(mlir::SimpleAffineExprFlattener *this)
{
  *this = &unk_1F5AF5618;
  v2 = *(this + 6);
  if (v2 != this + 64)
  {
    free(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    v4 = *(this + 2);
    v5 = *(this + 1);
    if (v4 != v3)
    {
      do
      {
        v7 = *(v4 - 80);
        v4 -= 80;
        v6 = v7;
        if ((v4 + 16) != v7)
        {
          free(v6);
        }
      }

      while (v4 != v3);
      v5 = *(this + 1);
    }

    *(this + 2) = v3;
    operator delete(v5);
  }
}

{
  *this = &unk_1F5AF5618;
  v2 = *(this + 6);
  if (v2 != this + 64)
  {
    free(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    v4 = *(this + 2);
    v5 = *(this + 1);
    if (v4 != v3)
    {
      do
      {
        v7 = *(v4 - 80);
        v4 -= 80;
        v6 = v7;
        if ((v4 + 16) != v7)
        {
          free(v6);
        }
      }

      while (v4 != v3);
      v5 = *(this + 1);
    }

    *(this + 2) = v3;
    operator delete(v5);
  }

  operator delete(this);
}

unint64_t mlir::getBoundForAffineExpr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v64[4] = *MEMORY[0x1E69E9840];
  if (!a1 || (v12 = *(a1 + 8), v12 > 4))
  {
LABEL_30:
    v55 = &unk_1F5AF5618;
    v59 = a2;
    v60 = a3;
    v61 = 0;
    v62 = v64;
    v63 = 0x400000000;
    __p = operator new(0x280uLL);
    v57 = __p;
    v58 = __p + 640;
    if ((mlir::AffineExprVisitor<mlir::SimpleAffineExprFlattener,llvm::LogicalResult>::walkPostOrder(&v55, a1) & 1) == 0 || v61)
    {
LABEL_32:
      LOBYTE(v13) = 0;
      v15 = 0;
      v55 = &unk_1F5AF5618;
      v35 = v62;
      if (v62 == v64)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    v42 = (a3 + a2);
    if (!(a3 + a2))
    {
      v44 = 0;
LABEL_62:
      v13 = *(*(v57 - 10) + 8 * *(v57 - 18) - 8) + v44;
      v15 = v13 & 0xFFFFFFFFFFFFFF00;
      v55 = &unk_1F5AF5618;
      v35 = v62;
      if (v62 == v64)
      {
        goto LABEL_34;
      }

LABEL_33:
      free(v35);
LABEL_34:
      v36 = __p;
      if (__p)
      {
        v37 = v57;
        v38 = __p;
        if (v57 != __p)
        {
          do
          {
            v40 = *(v37 - 10);
            v37 -= 80;
            v39 = v40;
            if (v37 + 16 != v40)
            {
              free(v39);
            }
          }

          while (v37 != v36);
          v38 = __p;
        }

        v57 = v36;
        operator delete(v38);
      }

      return v15 | v13;
    }

    v43 = 0;
    v44 = 0;
    if (a8)
    {
      v45 = a4;
    }

    else
    {
      v45 = a6;
    }

    if (a8)
    {
      v46 = a6;
    }

    else
    {
      v46 = a4;
    }

    v47 = (v46 + 8);
    v48 = *(v57 - 10);
    while (1)
    {
      v51 = *v48++;
      v50 = v51;
      if (v51 >= 1)
      {
        if ((*v47 & 1) == 0)
        {
          goto LABEL_32;
        }

        v49 = (v46 + 16 * v43);
      }

      else
      {
        if ((v50 & 0x8000000000000000) == 0)
        {
          goto LABEL_54;
        }

        v49 = v45;
        if (*(v45 + 8) != 1)
        {
          goto LABEL_32;
        }
      }

      v44 += *v49 * v50;
LABEL_54:
      ++v43;
      v45 += 16;
      v47 += 16;
      if (!--v42)
      {
        goto LABEL_62;
      }
    }
  }

  if (v12 == 2)
  {
    v22 = *(a1 + 24);
    if (v22)
    {
      if (*(v22 + 8) == 5)
      {
        v23 = *(v22 + 16);
        if (v23 >= 1)
        {
          BoundForAffineExpr = mlir::getBoundForAffineExpr(*(a1 + 16), a2, a3, a4, a5, a6, a7, 0);
          v29 = v28;
          v30 = mlir::getBoundForAffineExpr(*(a1 + 16), a2, a3, a4, a5, a6, a7, a8);
          if ((v31 & 1) != 0 && (v29 & 1) != 0 && (!BoundForAffineExpr ? (v32 = 0) : (BoundForAffineExpr ^ v23) < 0 ? (v32 = (BoundForAffineExpr + 1) / v23 - 1) : (v32 = BoundForAffineExpr / v23), !v30 ? (v52 = 0) : (v30 ^ v23) < 0 ? (v52 = (v30 + 1) / v23 - 1) : (v52 = v30 / v23), v32 == v52))
          {
            v53 = BoundForAffineExpr;
            if (a8)
            {
              v53 = v30;
            }

            v13 = (v23 & ((v53 % v23) >> 63)) + v53 % v23;
          }

          else if (a8)
          {
            v13 = v23 - 1;
          }

          else
          {
            v13 = 0;
          }

          goto LABEL_80;
        }
      }
    }

    goto LABEL_30;
  }

  if (v12 != 4)
  {
    if (v12 == 3)
    {
      LOBYTE(v13) = 0;
      v14 = *(a1 + 24);
      if (v14)
      {
        v15 = 0;
        if (*(v14 + 8) == 5)
        {
          if (*(v14 + 16) >= 1)
          {
            v16 = mlir::getBoundForAffineExpr(*(a1 + 16), a2, a3, a4, a5, a6, a7, a8);
            if (v17)
            {
              if (v16)
              {
                v18 = *(v14 + 16);
                if ((v18 ^ v16) < 0)
                {
                  v13 = (((v18 >> 63) | 1) + v16) / v18 - 1;
LABEL_80:
                  v15 = v13 & 0xFFFFFFFFFFFFFF00;
                  return v15 | v13;
                }

LABEL_65:
                v13 = v16 / v18;
                goto LABEL_80;
              }

              goto LABEL_64;
            }
          }

LABEL_59:
          LOBYTE(v13) = 0;
          v15 = 0;
          return v15 | v13;
        }

        return v15 | v13;
      }

LABEL_60:
      v15 = 0;
      return v15 | v13;
    }

    goto LABEL_30;
  }

  LOBYTE(v13) = 0;
  v19 = *(a1 + 24);
  if (!v19)
  {
    goto LABEL_60;
  }

  v15 = 0;
  if (*(v19 + 8) == 5)
  {
    if (*(v19 + 16) >= 1)
    {
      v16 = mlir::getBoundForAffineExpr(*(a1 + 16), a2, a3, a4, a5, a6, a7, a8);
      if (v20)
      {
        if (v16)
        {
          v18 = *(v19 + 16);
          if (((v18 ^ v16) & 0x8000000000000000) == 0)
          {
            v21 = v16 - 1;
            if (v18 < 0)
            {
              v21 = v16 + 1;
            }

            v13 = v21 / v18 + 1;
            goto LABEL_80;
          }

          goto LABEL_65;
        }

LABEL_64:
        v13 = 0;
        goto LABEL_80;
      }
    }

    goto LABEL_59;
  }

  return v15 | v13;
}

uint64_t mlir::StorageUniquer::get<mlir::detail::AffineDimExprStorage,unsigned int,unsigned int &>(mlir::detail::StorageUniquerImpl **a1, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned int *a5)
{
  {
    v12 = a4;
    v13 = a1;
    v9 = a3;
    v10 = a5;
    v11 = a2;
    mlir::StorageUniquer::get<mlir::detail::AffineDimExprStorage,unsigned int,unsigned int &>();
    a2 = v11;
    a4 = v12;
    a3 = v9;
    a5 = v10;
    a1 = v13;
  }

  v17[0] = a2;
  v17[1] = a3;
  v5 = *a4;
  v6 = *a5;
  v16 = v5 | (v6 << 32);
  v7 = 0xBF58476D1CE4E5B9 * ((37 * v6) | ((37 * v5) << 32));
  v15 = &v16;
  v14[0] = &v16;
  v14[1] = v17;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, mlir::detail::TypeIDResolver<mlir::detail::AffineDimExprStorage,void>::resolveTypeID(void)::id, (v7 >> 31) ^ v7, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::AffineDimExprStorage * mlir::StorageUniquer::get<mlir::detail::AffineDimExprStorage,unsigned int,unsigned int &>(llvm::function_ref<void ()(mlir::detail::AffineDimExprStorage *)>,mlir::TypeID,unsigned int,unsigned int &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v15, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::AffineDimExprStorage * mlir::StorageUniquer::get<mlir::detail::AffineDimExprStorage,unsigned int,unsigned int &>(llvm::function_ref<void ()(mlir::detail::AffineDimExprStorage *)>,mlir::TypeID,unsigned int,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v14);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::AffineDimExprStorage * mlir::StorageUniquer::get<mlir::detail::AffineDimExprStorage,unsigned int,unsigned int &>(llvm::function_ref<void ()(mlir::detail::AffineDimExprStorage *)>,mlir::TypeID,unsigned int,unsigned int &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v2 = *a1;
  a2[10] += 24;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 24;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 24, 24, 3);
    v11 = v2[1];
    *(Slow + 8) = *v2;
    *(Slow + 16) = v11;
    v7 = *(a1 + 8);
    v8 = *v7;
    if (!*v7)
    {
      return Slow;
    }

    goto LABEL_6;
  }

  *a2 = v4;
  v6 = v2[1];
  *(Slow + 8) = *v2;
  *(Slow + 16) = v6;
  v7 = *(a1 + 8);
  v8 = *v7;
  if (*v7)
  {
LABEL_6:
    v8(*(v7 + 8), Slow);
  }

  return Slow;
}

const char *llvm::getTypeName<mlir::detail::AffineDimExprStorage>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::detail::AffineDimExprStorage]";
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

uint64_t isDivisibleBySymbol(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    while (1)
    {
      v7 = *(a1 + 8);
      if (v7 <= 0)
      {
        result = isDivisibleBySymbol(*(a1 + 16), a2, a3);
        if (!result)
        {
          return result;
        }

        goto LABEL_3;
      }

      if (v7 > 2)
      {
        break;
      }

      if (v7 == 1)
      {
        if (isDivisibleBySymbol(*(a1 + 16), a2, a3))
        {
          return 1;
        }

LABEL_3:
        a1 = *(a1 + 24);
      }

      else
      {
        a3 = 2;
        result = isDivisibleBySymbol(*(a1 + 16), a2, 2);
        if (!result)
        {
          return result;
        }

        a1 = *(a1 + 24);
      }
    }

    if (v7 > 5)
    {
      break;
    }

    if ((v7 - 3) >= 2)
    {
      return *(a1 + 16) == 0;
    }

    if (v7 != a3)
    {
      return 0;
    }

    a1 = *(a1 + 16);
  }

  return v7 != 6 && *(a1 + 16) == a2;
}

uint64_t symbolicDivide(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (v3 > 2)
  {
    if (v3 > 5)
    {
      if (v3 == 6)
      {
        return 0;
      }

      v17 = *a1;
      v20 = 1;
    }

    else
    {
      if ((v3 - 3) < 2)
      {
        v5 = symbolicDivide(*(a1 + 16));
        v6 = *(a1 + 24);
        v20 = v5;
        if (v3 == 4)
        {
          return mlir::AffineExpr::ceilDiv(&v20, v6);
        }

        else
        {
          return mlir::AffineExpr::floorDiv(&v20, v6);
        }
      }

      if (*(a1 + 16))
      {
        return 0;
      }

      v17 = *a1;
      v20 = 0;
    }

    v19 = v17;
    AffineUniquer = mlir::MLIRContext::getAffineUniquer(v17);
    return mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(AffineUniquer, llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>::callback_fn<mlir::getAffineConstantExpr(long long,mlir::MLIRContext *)::$_0>, &v19, &v20);
  }

  if (v3)
  {
    if (v3 == 1)
    {
      v9 = *(a1 + 16);
      if (isDivisibleBySymbol(v9, a2, a3))
      {
        v20 = symbolicDivide(v9);
        v10 = *(a1 + 24);
      }

      else
      {
        v20 = v9;
        v10 = symbolicDivide(*(a1 + 24));
      }

      return mlir::AffineExpr::operator*(&v20, v10);
    }

    else
    {
      v15 = symbolicDivide(*(a1 + 16));
      v16 = symbolicDivide(*(a1 + 24));
      v20 = v15;
      return mlir::AffineExpr::operator%(&v20, v16);
    }
  }

  else
  {
    v12 = symbolicDivide(*(a1 + 16));
    v13 = symbolicDivide(*(a1 + 24));
    v20 = v12;
    return mlir::AffineExpr::operator+(&v20, v13);
  }
}

void getSummandExprs(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (a1 && !*(a1 + 8))
  {
    do
    {
      getSummandExprs(*(v3 + 16), a2);
      v3 = *(v3 + 24);
      if (v3)
      {
        v4 = *(v3 + 8) == 0;
      }

      else
      {
        v4 = 0;
      }
    }

    while (v4);
  }

  v5 = *(a2 + 8);
  if (v5 >= *(a2 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v5 + 1, 8);
    LODWORD(v5) = *(a2 + 8);
  }

  *(*a2 + 8 * v5) = v3;
  ++*(a2 + 8);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>,std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>::try_emplace<long long>@<X0>(uint64_t result@<X0>, int *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(result + 16);
  if (!v4)
  {
    v10 = 0;
    goto LABEL_9;
  }

  v5 = *result;
  v6 = a2[1];
  v7 = 0xBF58476D1CE4E5B9 * ((37 * v6) | ((37 * *a2) << 32));
  v8 = v4 - 1;
  v9 = (v4 - 1) & ((v7 >> 31) ^ v7);
  v10 = *result + 16 * v9;
  v12 = *v10;
  v11 = *(v10 + 4);
  if (*a2 != *v10 || v6 != v11)
  {
    v16 = 0;
    v17 = 1;
    while (v12 != -1 || v11 != 0x7FFFFFFF)
    {
      if (v16)
      {
        v18 = 0;
      }

      else
      {
        v18 = v11 == 0x80000000;
      }

      if (v18 && v12 == -2)
      {
        v16 = v10;
      }

      v20 = v9 + v17++;
      v9 = v20 & v8;
      v10 = v5 + 16 * (v20 & v8);
      v12 = *v10;
      v11 = *(v10 + 4);
      if (*a2 == *v10 && v6 == v11)
      {
        goto LABEL_7;
      }
    }

    if (v16)
    {
      v10 = v16;
    }

LABEL_9:
    v26 = v10;
    v15 = *(result + 8);
    if (4 * v15 + 4 >= 3 * v4)
    {
      v4 *= 2;
    }

    else if (v4 + ~v15 - *(result + 12) > v4 >> 3)
    {
      *(result + 8) = v15 + 1;
      if (*v10 != -1)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v22 = result;
    v23 = a2;
    v24 = a4;
    v25 = a3;
    llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>,std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>::grow(result, v4);
    llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>,std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>::LookupBucketFor<std::pair<unsigned int,int>>(v22, v23, &v26);
    a2 = v23;
    a3 = v25;
    result = v22;
    a4 = v24;
    v10 = v26;
    ++*(v22 + 8);
    if (*v10 != -1)
    {
      goto LABEL_13;
    }

LABEL_12:
    if (*(v10 + 4) == 0x7FFFFFFF)
    {
LABEL_14:
      *v10 = *a2;
      *(v10 + 4) = a2[1];
      *(v10 + 8) = *a3;
      v5 = *result;
      v4 = *(result + 16);
      v14 = 1;
      goto LABEL_15;
    }

LABEL_13:
    --*(result + 12);
    goto LABEL_14;
  }

LABEL_7:
  v14 = 0;
LABEL_15:
  *a4 = v10;
  *(a4 + 8) = v5 + 16 * v4;
  *(a4 + 16) = v14;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>,std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>::LookupBucketFor<std::pair<unsigned int,int>>(uint64_t *a1, int *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = *a2;
    v6 = a2[1];
    v7 = 0xBF58476D1CE4E5B9 * ((37 * v6) | ((37 * *a2) << 32));
    v8 = (v7 >> 31) ^ v7;
    v9 = v3 - 1;
    v10 = (v3 - 1) & v8;
    v11 = (*a1 + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    if (v5 == *v11 && v6 == v12)
    {
      result = 1;
      *a3 = v11;
    }

    else
    {
      v15 = 0;
      v16 = 1;
      result = 1;
      while (v13 != -1 || v12 != 0x7FFFFFFF)
      {
        if (v15)
        {
          v18 = 0;
        }

        else
        {
          v18 = v12 == 0x80000000;
        }

        if (v18 && v13 == -2)
        {
          v15 = v11;
        }

        v20 = v10 + v16++;
        v10 = v20 & v9;
        v11 = (v4 + 16 * (v20 & v9));
        v13 = *v11;
        v12 = v11[1];
        if (v5 == *v11 && v6 == v12)
        {
          goto LABEL_9;
        }
      }

      result = 0;
      if (v15)
      {
        v11 = v15;
      }

      *a3 = v11;
    }
  }

  else
  {
    v11 = 0;
    result = 0;
LABEL_9:
    *a3 = v11;
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>,std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(16 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v10 = (16 * v3);
    llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>,std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>::moveFromOldBuckets(a1, v4, &v10[v4]);

    llvm::deallocate_buffer(v4, v10);
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = (v11 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v12)
    {
      v13 = v12 + 1;
      v14 = (v12 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v15 = &result[2 * v14];
      v16 = result + 2;
      v17 = v14;
      do
      {
        *(v16 - 2) = 0x7FFFFFFFFFFFFFFFLL;
        *v16 = 0x7FFFFFFFFFFFFFFFLL;
        v16 += 4;
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

    v18 = &result[2 * v11];
    do
    {
      *v15 = 0x7FFFFFFFFFFFFFFFLL;
      v15 += 2;
    }

    while (v15 != v18);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>,std::pair<unsigned int,int>,long long,llvm::DenseMapInfo<std::pair<unsigned int,int>,void>,llvm::detail::DenseMapPair<std::pair<unsigned int,int>,long long>>::moveFromOldBuckets(uint64_t result, int *a2, int *a3)
{
  *(result + 8) = 0;
  v3 = *(result + 16);
  if (v3)
  {
    v4 = *result;
    v5 = (v3 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v5)
    {
      v6 = v5 + 1;
      v7 = (v5 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v8 = &v4[2 * v7];
      v9 = v4 + 2;
      v10 = v7;
      do
      {
        *(v9 - 2) = 0x7FFFFFFFFFFFFFFFLL;
        *v9 = 0x7FFFFFFFFFFFFFFFLL;
        v9 += 4;
        v10 -= 2;
      }

      while (v10);
      if (v6 == v7)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v8 = *result;
    }

    v11 = &v4[2 * v3];
    do
    {
      *v8 = 0x7FFFFFFFFFFFFFFFLL;
      v8 += 2;
    }

    while (v8 != v11);
  }

LABEL_10:
  while (a2 != a3)
  {
    v22 = *a2;
    v23 = a2[1];
    if ((*a2 != -1 || v23 != 0x7FFFFFFF) && (v22 != -2 || v23 != 0x80000000))
    {
      v26 = 0xBF58476D1CE4E5B9 * ((37 * v23) | ((37 * v22) << 32));
      v27 = (v26 >> 31) ^ v26;
      v28 = *(result + 16) - 1;
      v17 = v28 & v27;
      v18 = *result + 16 * v17;
      v19 = *v18;
      v20 = *(v18 + 4);
      if (v22 != *v18 || v23 != v20)
      {
        v14 = 0;
        v16 = 1;
        while (v19 != -1 || v20 != 0x7FFFFFFF)
        {
          if (v14)
          {
            v12 = 0;
          }

          else
          {
            v12 = v20 == 0x80000000;
          }

          if (v12 && v19 == -2)
          {
            v14 = v18;
          }

          v15 = v17 + v16++;
          v17 = v15 & v28;
          v18 = *result + 16 * (v15 & v28);
          v19 = *v18;
          v20 = *(v18 + 4);
          if (v22 == *v18 && v23 == v20)
          {
            goto LABEL_29;
          }
        }

        if (v14)
        {
          v18 = v14;
        }
      }

LABEL_29:
      *v18 = v22;
      *(v18 + 4) = a2[1];
      *(v18 + 8) = *(a2 + 1);
      ++*(result + 8);
    }

    a2 += 4;
  }

  return result;
}

unsigned int *std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,int> *,false>(unsigned int *result, unsigned int *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = a2 - 1;
  v10 = v8;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    v8 = v10;
    v12 = v11;
    v13 = (a2 - v10) >> 3;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v88 = *(a2 - 2);
        v89 = *v10;
        if (v88 < *v10 || v89 >= v88 && *(a2 - 1) < v10[1])
        {
          *v10 = v88;
          *(a2 - 2) = v89;
          v90 = v10[1];
          v10[1] = *(a2 - 1);
          *(a2 - 1) = v90;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v13 == 3)
    {
      v91 = v10[2];
      v92 = *v10;
      if (v91 >= *v10 && (v92 < v91 || v10[3] >= v10[1]))
      {
        v126 = *(a2 - 2);
        if (v126 >= v91 && (v91 < v126 || *(a2 - 1) >= v10[3]))
        {
          return result;
        }

        v10[2] = v126;
        *(a2 - 2) = v91;
        v9 = v10 + 3;
        v127 = v10[3];
        v10[3] = *(a2 - 1);
        *(a2 - 1) = v127;
        v128 = v10[2];
        v129 = *v10;
        if (v128 >= *v10 && (v129 < v128 || v10[3] >= v10[1]))
        {
          return result;
        }

        *v10 = v128;
        v10[2] = v129;
        v94 = v10 + 1;
LABEL_234:
        v141 = *v94;
        *v94 = *v9;
        *v9 = v141;
        return result;
      }

      v93 = *(a2 - 2);
      if (v93 < v91)
      {
LABEL_156:
        *v10 = v93;
        v94 = v10 + 1;
        *(a2 - 2) = v92;
        goto LABEL_234;
      }

      if (v91 >= v93)
      {
        v138 = v10[3];
        if (*(a2 - 1) < v138)
        {
          goto LABEL_156;
        }
      }

      else
      {
        v138 = v10[3];
      }

      v139 = v10[1];
      v10[3] = v139;
      *v10 = v91;
      v10[1] = v138;
      v10[2] = v92;
      v140 = *(a2 - 2);
      if (v140 >= v92 && (v92 < v140 || *(a2 - 1) >= v139))
      {
        return result;
      }

      v10[2] = v140;
      *(a2 - 2) = v92;
      v94 = v10 + 3;
      goto LABEL_234;
    }

    if (v13 == 4)
    {

      return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,int> *,0>(v10, v10 + 2, v10 + 4, a2 - 2);
    }

    if (v13 == 5)
    {
      break;
    }

LABEL_11:
    if (v13 <= 23)
    {
      v106 = v10 + 2;
      v108 = v10 == a2 || v106 == a2;
      if ((a5 & 1) == 0)
      {
        if (!v108)
        {
          v130 = v10 + 1;
          do
          {
            v131 = v8;
            v8 = v106;
            v132 = v131[2];
            v133 = *v131;
            if (v132 < *v131 || v133 >= v132 && v131[3] < v131[1])
            {
              v134 = *v8;
              v135 = v8[1];
              for (i = v130; ; i -= 2)
              {
                v137 = *i;
                i[1] = v133;
                i[2] = v137;
                v133 = *(i - 3);
                if (v133 <= v134 && (v133 < v134 || *(i - 2) <= v135))
                {
                  break;
                }
              }

              *(i - 1) = v134;
              *i = v135;
            }

            v106 = v8 + 2;
            v130 += 2;
          }

          while (v8 + 2 != a2);
        }

        return result;
      }

      if (v108)
      {
        return result;
      }

      v109 = 0;
      v110 = v10;
LABEL_177:
      v112 = v110;
      v110 = v106;
      v113 = v112[2];
      v114 = *v112;
      if (v113 >= *v112 && (v114 < v113 || v112[3] >= v112[1]))
      {
        goto LABEL_176;
      }

      v116 = v112[2];
      v115 = v112[3];
      v117 = v112[1];
      v112[2] = v114;
      v110[1] = v117;
      v111 = v10;
      if (v112 == v10)
      {
        goto LABEL_175;
      }

      v118 = v109;
      while (1)
      {
        v121 = *(v10 + v118 - 8);
        if (v121 > v116)
        {
          v119 = *(v10 + v118 - 4);
        }

        else
        {
          if (v121 < v116)
          {
            v111 = (v10 + v118);
            goto LABEL_175;
          }

          v119 = *(v10 + v118 - 4);
          if (v119 <= v115)
          {
            v111 = v112;
LABEL_175:
            *v111 = v116;
            v111[1] = v115;
LABEL_176:
            v106 = v110 + 2;
            v109 += 8;
            if (v110 + 2 != a2)
            {
              goto LABEL_177;
            }

            return result;
          }
        }

        v112 -= 2;
        v120 = (v10 + v118);
        *v120 = v121;
        v120[1] = v119;
        v118 -= 8;
        if (!v118)
        {
          v111 = v10;
          goto LABEL_175;
        }
      }
    }

    if (v11 == 1)
    {
      if (v10 != a2)
      {
        v122 = (v13 - 2) >> 1;
        v123 = v122 + 1;
        v124 = &v8[2 * v122];
        do
        {
          std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,int> *>(v8, a3, v13, v124);
          v124 -= 2;
          --v123;
        }

        while (v123);
        do
        {
          result = std::__pop_heap[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::pair<unsigned int,int> *>(v8, a2, a3, v13);
          a2 -= 2;
        }

        while (v13-- > 2);
      }

      return result;
    }

    v14 = &v10[2 * (v13 >> 1)];
    v15 = v14;
    if (v13 >= 0x81)
    {
      v16 = *v14;
      v17 = *v10;
      if (*v14 >= *v10 && (v17 < v16 || v14[1] >= v10[1]))
      {
        v24 = *(a2 - 2);
        if (v24 >= v16 && (v16 < v24 || *(a2 - 1) >= v14[1]) || (*v14 = v24, *(a2 - 2) = v16, v25 = v14 + 1, v26 = v14[1], v14[1] = *(a2 - 1), *(a2 - 1) = v26, v27 = *v14, v28 = *v10, *v14 >= *v10) && (v28 < v27 || *v25 >= v10[1]))
        {
LABEL_45:
          v39 = v14 - 2;
          v40 = *(v14 - 2);
          v41 = v10[2];
          if (v40 >= v41 && (v41 < v40 || *(v14 - 1) >= v10[3]))
          {
            v44 = *(a2 - 4);
            if (v44 >= v40 && (v40 < v44 || *(a2 - 3) >= *(v14 - 1)) || (*v39 = v44, *(a2 - 4) = v40, v45 = v14 - 1, v46 = *(v14 - 1), *(v14 - 1) = *(a2 - 3), *(a2 - 3) = v46, v47 = *v39, v48 = v10[2], *v39 >= v48) && (v48 < v47 || *v45 >= v10[3]))
            {
LABEL_67:
              v57 = v14[2];
              v55 = v14 + 2;
              v56 = v57;
              v58 = v10[4];
              if (v57 >= v58 && (v58 < v56 || v55[1] >= v10[5]))
              {
                v61 = *(a2 - 6);
                if (v61 >= v56 && (v56 < v61 || *(a2 - 5) >= v55[1]) || (*v55 = v61, *(a2 - 6) = v56, v62 = v55 + 1, v63 = v55[1], v55[1] = *(a2 - 5), *(a2 - 5) = v63, v64 = *v55, v65 = v10[4], *v55 >= v65) && (v65 < v64 || *v62 >= v10[5]))
                {
LABEL_85:
                  v70 = *v15;
                  v71 = *v39;
                  if (*v15 >= *v39 && (v71 < v70 || v15[1] >= v39[1]))
                  {
                    v75 = *v55;
                    if (*v55 < v70)
                    {
                      v76 = v15[1];
                      v77 = v55[1];
                      goto LABEL_92;
                    }

                    if (v70 < v75 || (v77 = v55[1], v76 = v15[1], v77 >= v76))
                    {
LABEL_104:
                      v82 = *v10;
                      *v10 = v70;
                      v23 = v10 + 1;
                      *v15 = v82;
                      v30 = v15 + 1;
                      goto LABEL_105;
                    }

LABEL_92:
                    *v15 = v75;
                    v15[1] = v77;
                    v78 = (v15 + 1);
                    *v55 = v70;
                    v55[1] = v76;
                    if (v75 >= v71 && (v71 < v75 || v77 >= v39[1]))
                    {
                      v70 = v75;
                      goto LABEL_104;
                    }

                    *v39 = v75;
                    v73 = (v39 + 1);
                    *v15 = v71;
LABEL_103:
                    v81 = *v73;
                    *v73 = *v78;
                    *v78 = v81;
                    v70 = *v15;
                    goto LABEL_104;
                  }

                  v72 = *v55;
                  if (*v55 >= v70)
                  {
                    if (v70 >= v72)
                    {
                      v79 = v15[1];
                      if (v55[1] < v79)
                      {
                        goto LABEL_87;
                      }
                    }

                    else
                    {
                      v79 = v15[1];
                    }

                    *v15 = v71;
                    v80 = v39[1];
                    v15[1] = v80;
                    *v39 = v70;
                    v39[1] = v79;
                    if (v72 >= v71 && (v71 < v72 || v55[1] >= v80))
                    {
                      v70 = v71;
                      goto LABEL_104;
                    }

                    *v15 = v72;
                    *v55 = v71;
                    v74 = (v55 + 1);
                    v73 = (v15 + 1);
                  }

                  else
                  {
LABEL_87:
                    *v39 = v72;
                    v73 = (v39 + 1);
                    *v55 = v71;
                    v74 = (v55 + 1);
                  }

                  v78 = v74;
                  goto LABEL_103;
                }

                v10[4] = v64;
                *v55 = v65;
                v60 = v10 + 5;
LABEL_84:
                v69 = *v60;
                *v60 = *v62;
                *v62 = v69;
                goto LABEL_85;
              }

              v59 = *(a2 - 6);
              if (v59 >= v56)
              {
                if (v56 >= v59)
                {
                  v66 = v55[1];
                  if (*(a2 - 5) < v66)
                  {
                    goto LABEL_69;
                  }
                }

                else
                {
                  v66 = v55[1];
                }

                v67 = v10[5];
                v10[4] = v56;
                v10[5] = v66;
                *v55 = v58;
                v55[1] = v67;
                v60 = v55 + 1;
                v68 = *(a2 - 6);
                if (v68 >= v58 && (v58 < v68 || *(a2 - 5) >= v67))
                {
                  goto LABEL_85;
                }

                *v55 = v68;
                *(a2 - 6) = v58;
              }

              else
              {
LABEL_69:
                v10[4] = v59;
                *(a2 - 6) = v58;
                v60 = v10 + 5;
              }

              v62 = a2 - 5;
              goto LABEL_84;
            }

            v10[2] = v47;
            *v39 = v48;
            v43 = v10 + 3;
LABEL_66:
            v54 = *v43;
            *v43 = *v45;
            *v45 = v54;
            goto LABEL_67;
          }

          v42 = *(a2 - 4);
          if (v42 >= v40)
          {
            if (v40 >= v42)
            {
              v49 = *(v14 - 1);
              if (*(a2 - 3) < v49)
              {
                goto LABEL_47;
              }
            }

            else
            {
              v49 = *(v14 - 1);
            }

            v52 = v10[3];
            v10[2] = v40;
            v10[3] = v49;
            *v39 = v41;
            *(v14 - 1) = v52;
            v43 = v14 - 1;
            v53 = *(a2 - 4);
            if (v53 >= v41 && (v41 < v53 || *(a2 - 3) >= v52))
            {
              goto LABEL_67;
            }

            *v39 = v53;
            *(a2 - 4) = v41;
          }

          else
          {
LABEL_47:
            v10[2] = v42;
            *(a2 - 4) = v41;
            v43 = v10 + 3;
          }

          v45 = a2 - 3;
          goto LABEL_66;
        }

        *v10 = v27;
        v19 = v10 + 1;
        *v14 = v28;
LABEL_44:
        v38 = *v19;
        *v19 = *v25;
        *v25 = v38;
        goto LABEL_45;
      }

      v18 = *(a2 - 2);
      if (v18 >= v16)
      {
        if (v16 >= v18)
        {
          v34 = v14[1];
          if (*(a2 - 1) < v34)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v34 = v14[1];
        }

        v36 = v10[1];
        *v10 = v16;
        v10[1] = v34;
        *v14 = v17;
        v14[1] = v36;
        v19 = v14 + 1;
        v37 = *(a2 - 2);
        if (v37 >= v17 && (v17 < v37 || *(a2 - 1) >= v36))
        {
          goto LABEL_45;
        }

        *v14 = v37;
      }

      else
      {
LABEL_16:
        *v10 = v18;
        v19 = v10 + 1;
      }

      *(a2 - 2) = v17;
      v25 = a2 - 1;
      goto LABEL_44;
    }

    v20 = *v10;
    v21 = *v14;
    if (*v10 < *v15 || v21 >= v20 && v10[1] < v15[1])
    {
      v22 = *(a2 - 2);
      if (v22 < v20)
      {
        goto LABEL_19;
      }

      if (v20 >= v22)
      {
        v35 = v10[1];
        if (*(a2 - 1) >= v35)
        {
          goto LABEL_59;
        }

LABEL_19:
        *v15 = v22;
        *(a2 - 2) = v21;
        v23 = v15 + 1;
      }

      else
      {
        v35 = v10[1];
LABEL_59:
        v50 = v15[1];
        *v15 = v20;
        v15[1] = v35;
        *v10 = v21;
        v10[1] = v50;
        v23 = v10 + 1;
        v51 = *(a2 - 2);
        if (v51 >= v21 && (v21 < v51 || *(a2 - 1) >= v50))
        {
          goto LABEL_106;
        }

        *v10 = v51;
        *(a2 - 2) = v21;
      }

      v30 = a2 - 1;
LABEL_105:
      v83 = *v23;
      *v23 = *v30;
      *v30 = v83;
      goto LABEL_106;
    }

    v29 = *(a2 - 2);
    if (v29 < v20 || v20 >= v29 && *(a2 - 1) < v10[1])
    {
      *v10 = v29;
      *(a2 - 2) = v20;
      v30 = v10 + 1;
      v31 = v10[1];
      v10[1] = *(a2 - 1);
      *(a2 - 1) = v31;
      v32 = *v10;
      v33 = *v15;
      if (*v10 < *v15 || v33 >= v32 && *v30 < v15[1])
      {
        *v15 = v32;
        *v10 = v33;
        v23 = v15 + 1;
        goto LABEL_105;
      }
    }

LABEL_106:
    if ((a5 & 1) == 0)
    {
      v84 = *(v10 - 2);
      if (v84 >= *v10 && (*v10 < v84 || *(v10 - 1) >= v10[1]))
      {
        result = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,std::pair<unsigned int,int> *,std::__less<void,void> &>(v10, a2);
        v10 = result;
LABEL_146:
        a5 = 0;
        a4 = -v12;
        goto LABEL_3;
      }
    }

    v85 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,std::pair<unsigned int,int> *,std::__less<void,void> &>(v10, a2);
    if ((v86 & 1) == 0)
    {
      goto LABEL_144;
    }

    v87 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,int> *>(v10, v85);
    v10 = v85 + 2;
    result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,int> *>(v85 + 2, a2);
    if (result)
    {
      a4 = -v12;
      a2 = v85;
      if (v87)
      {
        return result;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if (!v87)
    {
LABEL_144:
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,int> *,false>(v8, v85, a3, -v12, a5 & 1);
      v10 = v85 + 2;
      goto LABEL_146;
    }
  }

  result = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,int> *,0>(v10, v10 + 2, v10 + 4, v10 + 6);
  v95 = *(a2 - 2);
  v96 = v10[6];
  if (v95 < v96 || v96 >= v95 && *(a2 - 1) < v10[7])
  {
    v10[6] = v95;
    *(a2 - 2) = v96;
    v97 = v10[7];
    v10[7] = *(a2 - 1);
    *(a2 - 1) = v97;
    v98 = v10[6];
    v99 = v10[4];
    if (v98 >= v99)
    {
      if (v99 < v98)
      {
        return result;
      }

      v101 = v10[7];
      v100 = v10[5];
      if (v101 >= v100)
      {
        return result;
      }
    }

    else
    {
      v100 = v10[5];
      v101 = v10[7];
    }

    v10[4] = v98;
    v10[5] = v101;
    v10[6] = v99;
    v10[7] = v100;
    v102 = v10[2];
    if (v98 >= v102)
    {
      if (v102 < v98)
      {
        return result;
      }

      v103 = v10[3];
      if (v101 >= v103)
      {
        return result;
      }
    }

    else
    {
      v103 = v10[3];
    }

    v10[2] = v98;
    v10[3] = v101;
    v10[4] = v102;
    v10[5] = v103;
    v104 = *v10;
    if (v98 >= *v10)
    {
      if (v104 < v98)
      {
        return result;
      }

      v105 = v10[1];
      if (v101 >= v105)
      {
        return result;
      }
    }

    else
    {
      v105 = v10[1];
    }

    *v10 = v98;
    v10[1] = v101;
    v10[2] = v104;
    v10[3] = v105;
  }

  return result;
}

unsigned int *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,int> *,0>(unsigned int *result, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  v4 = *a2;
  v5 = *result;
  if (*a2 < *result || v5 >= v4 && a2[1] < result[1])
  {
    v6 = *a3;
    if (*a3 < v4 || v4 >= v6 && a3[1] < a2[1])
    {
      *result = v6;
      v7 = (result + 1);
    }

    else
    {
      *result = v4;
      *a2 = v5;
      v7 = (a2 + 1);
      v13 = result[1];
      result[1] = a2[1];
      a2[1] = v13;
      v14 = *a3;
      v5 = *a2;
      if (*a3 >= *a2 && (v5 < v14 || a3[1] >= v13))
      {
        goto LABEL_15;
      }

      *a2 = v14;
    }

    *a3 = v5;
    v10 = (a3 + 1);
    goto LABEL_14;
  }

  v8 = *a3;
  if (*a3 < v4 || v4 >= v8 && a3[1] < a2[1])
  {
    *a2 = v8;
    *a3 = v4;
    v10 = (a2 + 1);
    v9 = a2[1];
    a2[1] = a3[1];
    a3[1] = v9;
    v11 = *a2;
    v12 = *result;
    if (*a2 < *result || v12 >= v11 && *v10 < result[1])
    {
      *result = v11;
      v7 = (result + 1);
      *a2 = v12;
LABEL_14:
      v15 = *v7;
      *v7 = *v10;
      *v10 = v15;
    }
  }

LABEL_15:
  v16 = *a4;
  v17 = *a3;
  if (*a4 < *a3 || v17 >= v16 && a4[1] < a3[1])
  {
    *a3 = v16;
    *a4 = v17;
    v18 = a3[1];
    a3[1] = a4[1];
    a4[1] = v18;
    v19 = *a3;
    v20 = *a2;
    if (*a3 < *a2 || v20 >= v19 && a3[1] < a2[1])
    {
      *a2 = v19;
      *a3 = v20;
      v21 = a2[1];
      a2[1] = a3[1];
      a3[1] = v21;
      v22 = *a2;
      v23 = *result;
      if (*a2 < *result || v23 >= v22 && a2[1] < result[1])
      {
        *result = v22;
        *a2 = v23;
        v24 = result[1];
        result[1] = a2[1];
        a2[1] = v24;
      }
    }
  }

  return result;
}

unsigned int *std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,std::pair<unsigned int,int> *,std::__less<void,void> &>(unsigned int *a1, unsigned int *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a2 - 2);
  if (v4 > *a1 || v4 >= v3 && *(a2 - 1) > v2)
  {
    i = a1;
    do
    {
      v7 = i[2];
      i += 2;
      v6 = v7;
    }

    while (v7 <= v3 && (v6 < v3 || i[1] <= v2));
  }

  else
  {
      ;
    }
  }

  if (i < a2)
  {
    for (a2 -= 2; v4 > v3 || v4 >= v3 && a2[1] > v2; a2 -= 2)
    {
      v8 = *(a2 - 2);
      v4 = v8;
    }
  }

  if (i < a2)
  {
    v9 = *i;
    v10 = *a2;
    do
    {
      *i = v10;
      *a2 = v9;
      v11 = i[1];
      i[1] = a2[1];
      a2[1] = v11;
      do
      {
        v12 = i[2];
        i += 2;
        v9 = v12;
      }

      while (v12 <= v3 && (v9 < v3 || i[1] <= v2));
      do
      {
        do
        {
          v13 = *(a2 - 2);
          a2 -= 2;
          v10 = v13;
          v14 = v13 >= v3;
        }

        while (v13 > v3);
      }

      while (v14 && a2[1] > v2);
    }

    while (i < a2);
  }

  if (i - 2 != a1)
  {
    *a1 = *(i - 2);
    a1[1] = *(i - 1);
  }

  *(i - 2) = v3;
  *(i - 1) = v2;
  return i;
}

unsigned int *std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,std::pair<unsigned int,int> *,std::__less<void,void> &>(unsigned int *a1, unsigned int *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  while (1)
  {
    v5 = a1[v2 + 2];
    if (v5 >= v3 && (v5 > v3 || a1[v2 + 3] >= v4))
    {
      break;
    }

    v2 += 2;
  }

  v6 = &a1[v2 + 2];
  if (v2 * 4)
  {
    do
    {
      v8 = *(a2 - 2);
      a2 -= 2;
      v7 = v8;
    }

    while (v8 >= v3 && (v7 > v3 || a2[1] >= v4));
  }

  else
  {
LABEL_19:
    if (v6 < a2)
    {
      do
      {
        v10 = *(a2 - 2);
        a2 -= 2;
        v9 = v10;
        if (v10 < v3)
        {
          break;
        }

        if (v9 > v3)
        {
          goto LABEL_19;
        }
      }

      while (a2[1] >= v4 && v6 < a2);
    }
  }

  if (v6 >= a2)
  {
    v13 = v6;
  }

  else
  {
    v12 = *a2;
    v13 = v6;
    v14 = a2;
    do
    {
      *v13 = v12;
      *v14 = v5;
      v15 = v13[1];
      v13[1] = v14[1];
      v14[1] = v15;
      do
      {
        do
        {
          v16 = v13[2];
          v13 += 2;
          v5 = v16;
          v17 = v16 > v3;
        }

        while (v16 < v3);
      }

      while (!v17 && v13[1] < v4);
      do
      {
        v18 = *(v14 - 2);
        v14 -= 2;
        v12 = v18;
      }

      while (v18 >= v3 && (v12 > v3 || v14[1] >= v4));
    }

    while (v13 < v14);
  }

  if (v13 - 2 != a1)
  {
    *a1 = *(v13 - 2);
    a1[1] = *(v13 - 1);
  }

  *(v13 - 2) = v3;
  *(v13 - 1) = v4;
  return v13 - 2;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,int> *>(unsigned int *a1, unsigned int *a2)
{
  v2 = (a2 - a1) >> 3;
  if (v2 <= 2)
  {
    if (v2 >= 2)
    {
      if (v2 == 2)
      {
        v3 = *(a2 - 2);
        v4 = *a1;
        if (v3 < *a1 || v4 >= v3 && *(a2 - 1) < a1[1])
        {
          *a1 = v3;
          *(a2 - 2) = v4;
          v5 = a1[1];
          a1[1] = *(a2 - 1);
          *(a2 - 1) = v5;
          return 1;
        }

        return 1;
      }

      goto LABEL_20;
    }

    return 1;
  }

  switch(v2)
  {
    case 3:
      v20 = a1[2];
      v21 = *a1;
      if (v20 >= *a1 && (v21 < v20 || a1[3] >= a1[1]))
      {
        v30 = *(a2 - 2);
        if (v30 >= v20 && (v20 < v30 || *(a2 - 1) >= a1[3]))
        {
          return 1;
        }

        a1[2] = v30;
        *(a2 - 2) = v20;
        v24 = a1 + 3;
        v31 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v31;
        v32 = a1[2];
        v33 = *a1;
        if (v32 >= *a1 && (v33 < v32 || a1[3] >= a1[1]))
        {
          return 1;
        }

        *a1 = v32;
        a1[2] = v33;
        v23 = a1 + 1;
        goto LABEL_61;
      }

      v22 = *(a2 - 2);
      if (v22 < v20)
      {
LABEL_19:
        *a1 = v22;
        v23 = a1 + 1;
        *(a2 - 2) = v21;
        v24 = a2 - 1;
        goto LABEL_61;
      }

      if (v20 >= v22)
      {
        v38 = a1[3];
        if (*(a2 - 1) < v38)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v38 = a1[3];
      }

      v40 = a1[1];
      a1[3] = v40;
      *a1 = v20;
      a1[1] = v38;
      a1[2] = v21;
      v41 = *(a2 - 2);
      if (v41 >= v21 && (v21 < v41 || *(a2 - 1) >= v40))
      {
        return 1;
      }

      a1[2] = v41;
      *(a2 - 2) = v21;
      v24 = a2 - 1;
      v23 = a1 + 3;
LABEL_61:
      v42 = *v23;
      *v23 = *v24;
      *v24 = v42;
      return 1;
    case 4:
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,int> *,0>(a1, a1 + 2, a1 + 4, a2 - 2);
      return 1;
    case 5:
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,int> *,0>(a1, a1 + 2, a1 + 4, a1 + 6);
      v9 = *(a2 - 2);
      v10 = a1[6];
      if (v9 >= v10 && (v10 < v9 || *(a2 - 1) >= a1[7]))
      {
        return 1;
      }

      a1[6] = v9;
      *(a2 - 2) = v10;
      v11 = a1[7];
      a1[7] = *(a2 - 1);
      *(a2 - 1) = v11;
      v12 = a1[6];
      v13 = a1[4];
      if (v12 >= v13)
      {
        if (v13 < v12)
        {
          return 1;
        }

        v15 = a1[7];
        v14 = a1[5];
        if (v15 >= v14)
        {
          return 1;
        }
      }

      else
      {
        v14 = a1[5];
        v15 = a1[7];
      }

      a1[4] = v12;
      a1[5] = v15;
      a1[6] = v13;
      a1[7] = v14;
      v16 = a1[2];
      if (v12 >= v16)
      {
        if (v16 < v12)
        {
          return 1;
        }

        v17 = a1[3];
        if (v15 >= v17)
        {
          return 1;
        }
      }

      else
      {
        v17 = a1[3];
      }

      a1[2] = v12;
      a1[3] = v15;
      a1[4] = v16;
      a1[5] = v17;
      v18 = *a1;
      if (v12 >= *a1)
      {
        if (v18 < v12)
        {
          return 1;
        }

        v19 = a1[1];
        if (v15 >= v19)
        {
          return 1;
        }
      }

      else
      {
        v19 = a1[1];
      }

      *a1 = v12;
      a1[1] = v15;
      result = 1;
      a1[2] = v18;
      a1[3] = v19;
      return result;
  }

LABEL_20:
  v25 = a1 + 4;
  v26 = a1[2];
  v27 = *a1;
  if (v26 < *a1 || v27 >= v26 && a1[3] < a1[1])
  {
    v28 = *v25;
    if (*v25 < v26)
    {
LABEL_22:
      *a1 = v28;
      a1[4] = v27;
      v29 = (a1 + 1);
LABEL_65:
      v37 = (a1 + 5);
      goto LABEL_66;
    }

    if (v26 >= v28)
    {
      v39 = a1[3];
      if (a1[5] < v39)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v39 = a1[3];
    }

    v43 = a1[1];
    a1[3] = v43;
    v29 = (a1 + 3);
    *a1 = v26;
    a1[1] = v39;
    a1[2] = v27;
    if (v28 >= v27 && (v27 < v28 || a1[5] >= v43))
    {
      goto LABEL_67;
    }

    a1[2] = v28;
    a1[4] = v27;
    goto LABEL_65;
  }

  v34 = *v25;
  if (*v25 < v26)
  {
    v35 = a1[3];
    v36 = a1[5];
LABEL_34:
    a1[3] = v36;
    v37 = (a1 + 3);
    a1[2] = v34;
    a1[4] = v26;
    a1[5] = v35;
    if (v34 >= v27 && (v27 < v34 || v36 >= a1[1]))
    {
      goto LABEL_67;
    }

    *a1 = v34;
    a1[2] = v27;
    v29 = (a1 + 1);
LABEL_66:
    v44 = *v29;
    *v29 = *v37;
    *v37 = v44;
    goto LABEL_67;
  }

  if (v26 >= v34)
  {
    v36 = a1[5];
    v35 = a1[3];
    if (v36 < v35)
    {
      goto LABEL_34;
    }
  }

LABEL_67:
  v45 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v46 = 0;
  v47 = 0;
  while (1)
  {
    v48 = *v25;
    if (*v45 < *v25 || v48 >= *v45 && v45[1] < v25[1])
    {
      break;
    }

LABEL_82:
    v25 = v45;
    v46 += 8;
    v45 += 2;
    if (v45 == a2)
    {
      return 1;
    }
  }

  v49 = *v45;
  v50 = v45[1];
  *v45 = v48;
  v45[1] = v25[1];
  v51 = v46;
  while (1)
  {
    v53 = a1 + v51;
    v54 = *(a1 + v51 + 8);
    if (v54 <= v49)
    {
      break;
    }

    v52 = *(v53 + 3);
LABEL_74:
    *(v53 + 4) = v54;
    *(a1 + v51 + 20) = v52;
    v51 -= 8;
    if (v51 == -16)
    {
      *a1 = v49;
      a1[1] = v50;
      if (++v47 != 8)
      {
        goto LABEL_82;
      }

      return v45 + 2 == a2;
    }
  }

  if (v54 >= v49)
  {
    v52 = *(a1 + v51 + 12);
    if (v52 > v50)
    {
      goto LABEL_74;
    }
  }

  v55 = a1 + v51;
  *(v55 + 4) = v49;
  *(v55 + 5) = v50;
  if (++v47 != 8)
  {
    goto LABEL_82;
  }

  return v45 + 2 == a2;
}

uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,int> *>(uint64_t result, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 3)
    {
      v6 = v4 >> 2;
      v7 = (v4 >> 2) + 1;
      v8 = (result + 8 * v7);
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = v8[2];
        if (*v8 < v10 || v10 >= *v8 && v8[1] < v8[3])
        {
          v8 += 2;
          v7 = v9;
        }
      }

      v11 = *v8;
      if (*v8 >= *a4 && (*a4 < v11 || v8[1] >= a4[1]))
      {
        v12 = *a4;
        v13 = a4[1];
        *a4 = v11;
        a4[1] = v8[1];
        if (v5 >= v7)
        {
          while (1)
          {
            v15 = 2 * v7;
            v7 = (2 * v7) | 1;
            v14 = (result + 8 * v7);
            v16 = v15 + 2;
            if (v16 < a3)
            {
              v17 = v14[2];
              if (*v14 < v17 || v17 >= *v14 && v14[1] < v14[3])
              {
                v14 += 2;
                v7 = v16;
              }
            }

            v18 = *v14;
            if (*v14 < v12 || v18 <= v12 && v14[1] < v13)
            {
              break;
            }

            *v8 = v18;
            v8[1] = v14[1];
            v8 = v14;
            if (v5 < v7)
            {
              goto LABEL_13;
            }
          }
        }

        v14 = v8;
LABEL_13:
        *v14 = v12;
        v14[1] = v13;
      }
    }
  }

  return result;
}

unsigned int *std::__pop_heap[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::pair<unsigned int,int> *>(unsigned int *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = 0;
    v5 = *result;
    v6 = result;
    do
    {
      v7 = v6;
      v8 = &v6[2 * v4];
      v6 = v8 + 2;
      v9 = 2 * v4;
      v4 = (2 * v4) | 1;
      v10 = v9 + 2;
      if (v10 < a4)
      {
        v11 = v8[4];
        v12 = v8[2];
        if (v12 < v11 || v11 >= v12 && v8[3] < v8[5])
        {
          v6 = v8 + 4;
          v4 = v10;
        }
      }

      *v7 = *v6;
      v7[1] = v6[1];
    }

    while (v4 <= ((a4 - 2) >> 1));
    if (v6 == (a2 - 8))
    {
      *v6 = v5;
    }

    else
    {
      *v6 = *(a2 - 8);
      v6[1] = *(a2 - 4);
      *(a2 - 8) = v5;
      v13 = (v6 - result + 8) >> 3;
      v14 = v13 - 2;
      if (v13 >= 2)
      {
        v15 = v14 >> 1;
        v16 = &result[2 * (v14 >> 1)];
        v17 = *v16;
        if (*v16 < *v6 || *v6 >= v17 && v16[1] < v6[1])
        {
          v18 = *v6;
          v19 = v6[1];
          *v6 = v17;
          v6[1] = v16[1];
          if (v14 >= 2)
          {
            while (1)
            {
              v22 = v15 - 1;
              v15 = (v15 - 1) >> 1;
              v20 = &result[2 * v15];
              v23 = *v20;
              if (*v20 < v18)
              {
                v21 = v20[1];
              }

              else
              {
                if (v23 > v18)
                {
                  break;
                }

                v21 = v20[1];
                if (v21 >= v19)
                {
                  break;
                }
              }

              *v16 = v23;
              v16[1] = v21;
              v16 = &result[2 * v15];
              if (v22 <= 1)
              {
                goto LABEL_15;
              }
            }
          }

          v20 = v16;
LABEL_15:
          *v20 = v18;
          v20[1] = v19;
        }
      }
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::AffineExpr,mlir::AffineExpr,llvm::DenseMapInfo<mlir::AffineExpr,void>,llvm::detail::DenseMapPair<mlir::AffineExpr,mlir::AffineExpr>>,mlir::AffineExpr,mlir::AffineExpr,llvm::DenseMapInfo<mlir::AffineExpr,void>,llvm::detail::DenseMapPair<mlir::AffineExpr,mlir::AffineExpr>>::try_emplace<mlir::AffineExpr>@<X0>(uint64_t result@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(result + 16);
  if (!v5)
  {
    v11 = 0;
    goto LABEL_5;
  }

  v6 = *result;
  v7 = HIDWORD(*a2);
  v8 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v7);
  LODWORD(v7) = -348639895 * ((((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 32) >> 15) ^ (-348639895 * (v7 ^ (v8 >> 47) ^ v8)));
  v9 = v5 - 1;
  v10 = v7 & (v5 - 1);
  v11 = (*result + 16 * v10);
  v12 = *v11;
  if (*a2 != *v11)
  {
    v15 = 0;
    v16 = 1;
    while (v12 != -4096)
    {
      if (v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = v12 == -8192;
      }

      if (v17)
      {
        v15 = v11;
      }

      v18 = v10 + v16++;
      v10 = v18 & v9;
      v11 = (v6 + 16 * (v18 & v9));
      v12 = *v11;
      if (*a2 == *v11)
      {
        goto LABEL_3;
      }
    }

    if (v15)
    {
      v11 = v15;
    }

LABEL_5:
    v22 = v11;
    v14 = *(result + 8);
    if (4 * v14 + 4 >= 3 * v5)
    {
      v5 *= 2;
    }

    else if (v5 + ~v14 - *(result + 12) > v5 >> 3)
    {
      *(result + 8) = v14 + 1;
      if (*v11 == -4096)
      {
LABEL_9:
        *v11 = *a2;
        v11[1] = *a3;
        v6 = *result;
        v5 = *(result + 16);
        v13 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 12);
      goto LABEL_9;
    }

    v19 = result;
    v20 = a4;
    v21 = a3;
    llvm::DenseMap<mlir::AffineExpr,mlir::AffineExpr,llvm::DenseMapInfo<mlir::AffineExpr,void>,llvm::detail::DenseMapPair<mlir::AffineExpr,mlir::AffineExpr>>::grow(result, v5);
    llvm::DenseMapBase<llvm::DenseMap<mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong},llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong}>>,mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong},llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseMapPair<mlir::func::FuncOp,NSDictionary<NSString *,NSString *> * {__strong}>>::LookupBucketFor<mlir::func::FuncOp>(v19, a2, &v22);
    a3 = v21;
    result = v19;
    a4 = v20;
    v11 = v22;
    ++*(v19 + 8);
    if (*v11 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v13 = 0;
LABEL_10:
  *a4 = v11;
  *(a4 + 8) = v6 + 16 * v5;
  *(a4 + 16) = v13;
  return result;
}

void *llvm::DenseMap<mlir::AffineExpr,mlir::AffineExpr,llvm::DenseMapInfo<mlir::AffineExpr,void>,llvm::detail::DenseMapPair<mlir::AffineExpr,mlir::AffineExpr>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(16 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_41;
      }

      v12 = ((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &result[2 * (v12 & 0x1FFFFFFFFFFFFFFELL)];
      v13 = result + 2;
      v14 = v12 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = -4096;
        *v13 = -4096;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_41:
        do
        {
          *v10 = -4096;
          v10 += 2;
        }

        while (v10 != &result[2 * v11]);
      }
    }

    if (v3)
    {
      v15 = 0;
      v16 = v11 - 1;
      v17 = v4;
      do
      {
        v24 = *v17;
        if ((*v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v25 = 0x9DDFEA08EB382D69 * ((8 * *v17 - 0xAE502812AA7333) ^ HIDWORD(*v17));
          v26 = 0x9DDFEA08EB382D69 * (HIDWORD(v24) ^ (v25 >> 47) ^ v25);
          v27 = (-348639895 * ((v26 >> 47) ^ v26)) & v16;
          v23 = &result[2 * v27];
          v28 = *v23;
          if (v24 != *v23)
          {
            v29 = 0;
            v30 = 1;
            while (v28 != -4096)
            {
              if (v29)
              {
                v31 = 0;
              }

              else
              {
                v31 = v28 == -8192;
              }

              if (v31)
              {
                v29 = v23;
              }

              v32 = v27 + v30++;
              v27 = v32 & v16;
              v23 = &result[2 * (v32 & v16)];
              v28 = *v23;
              if (v24 == *v23)
              {
                goto LABEL_23;
              }
            }

            if (v29)
            {
              v23 = v29;
            }
          }

LABEL_23:
          *v23 = v24;
          v23[1] = *(v17 + 1);
          *(a1 + 8) = ++v15;
        }

        v17 = (v17 + 16);
      }

      while (v17 != (v4 + 16 * v3));
    }

    llvm::deallocate_buffer(v4, (16 * v3));
  }

  *(a1 + 8) = 0;
  v18 = *(a1 + 16);
  if (v18)
  {
    if (((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_18;
    }

    v19 = ((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
    v10 = &result[2 * (v19 & 0x1FFFFFFFFFFFFFFELL)];
    v20 = result + 2;
    v21 = v19 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v20 - 2) = -4096;
      *v20 = -4096;
      v20 += 4;
      v21 -= 2;
    }

    while (v21);
    if (v19 != (v19 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_18:
      v22 = &result[2 * v18];
      do
      {
        *v10 = -4096;
        v10 += 2;
      }

      while (v10 != v22);
    }
  }

  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::AffineConstantExprStorage * mlir::StorageUniquer::get<mlir::detail::AffineConstantExprStorage,long long &>(llvm::function_ref<void ()(mlir::detail::AffineConstantExprStorage *)>,mlir::TypeID,long long &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v2 = *a1;
  a2[10] += 24;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 24;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v8 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 24, 24, 3);
    a1 = v8;
  }

  else
  {
    *a2 = v4;
  }

  *(Slow + 8) = 5;
  *(Slow + 16) = *v2;
  v6 = *(a1 + 8);
  if (*v6)
  {
    (*v6)(*(v6 + 8), Slow);
  }

  return Slow;
}

const char *llvm::getTypeName<mlir::detail::AffineConstantExprStorage>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::detail::AffineConstantExprStorage]";
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

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::AffineBinaryOpExprStorage * mlir::StorageUniquer::get<mlir::detail::AffineBinaryOpExprStorage,unsigned int,mlir::AffineExpr const&,mlir::AffineExpr&>(llvm::function_ref<void ()(mlir::detail::AffineBinaryOpExprStorage *)>,mlir::TypeID,unsigned int,mlir::AffineExpr const&,mlir::AffineExpr&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(void *a1, unint64_t *a2)
{
  v2 = *a1;
  a2[10] += 32;
  Slow = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = Slow + 32;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v9 = a1;
    Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(a2, 32, 32, 3);
    a1 = v9;
  }

  else
  {
    *a2 = v4;
  }

  *(Slow + 8) = *v2;
  v6 = *(v2 + 8);
  *(Slow + 16) = v6;
  *(Slow + 24) = *(v2 + 16);
  *Slow = *v6;
  v7 = a1[1];
  if (*v7)
  {
    (*v7)(*(v7 + 8), Slow);
  }

  return Slow;
}

const char *llvm::getTypeName<mlir::detail::AffineBinaryOpExprStorage>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::detail::AffineBinaryOpExprStorage]";
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

void *std::vector<llvm::SmallVector<long long,8u>>::__emplace_back_slow_path<llvm::SmallVector<long long,32u>>(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v3 - *a1;
  v5 = 0xCCCCCCCCCCCCCCCDLL * (v4 >> 4);
  v6 = v5 + 1;
  if (v5 + 1 > 0x333333333333333)
  {
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - v2) >> 4) > v6)
  {
    v6 = 0x999999999999999ALL * ((*(a1 + 16) - v2) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - v2) >> 4) >= 0x199999999999999)
  {
    v9 = 0x333333333333333;
  }

  else
  {
    v9 = v6;
  }

  if (v9)
  {
    if (v9 > 0x333333333333333)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v10 = operator new(80 * v9);
  }

  else
  {
    v10 = 0;
  }

  v11 = &v10[16 * (v4 >> 4)];
  *v11 = v11 + 16;
  *(v11 + 1) = 0x800000000;
  if (*(a2 + 8))
  {
    llvm::SmallVectorImpl<unsigned long long>::operator=(&v10[16 * (v4 >> 4)], a2);
    v2 = *a1;
    v3 = *(a1 + 8);
    v4 = v3 - *a1;
  }

  v12 = &v10[80 * v9];
  v13 = v11 + 80;
  v14 = &v11[-v4];
  if (v2 != v3)
  {
    v15 = 0;
    v16 = &v10[80 * v5 + -16 * (v4 >> 4)];
    do
    {
      v17 = &v16[v15 * 8];
      *v17 = &v16[v15 * 8 + 16];
      *(v17 + 1) = 0x800000000;
      if (LODWORD(v2[v15 + 1]))
      {
        llvm::SmallVectorImpl<unsigned long long>::operator=(v17, &v2[v15]);
      }

      v15 += 10;
    }

    while (&v2[v15] != v3);
    do
    {
      v20 = *v2;
      v19 = v2 + 2;
      v18 = v20;
      if (v20 != v19)
      {
        free(v18);
      }

      v2 = (v19 + 8);
    }

    while (v2 != v3);
    v2 = *a1;
  }

  *a1 = v14;
  *(a1 + 8) = v13;
  *(a1 + 16) = v12;
  if (v2)
  {
    operator delete(v2);
  }

  return v13;
}

uint64_t mlir::AffineExprVisitor<mlir::SimpleAffineExprFlattener,llvm::LogicalResult>::walkOperandsPostOrder(uint64_t a1, uint64_t a2)
{
  if (mlir::AffineExprVisitor<mlir::SimpleAffineExprFlattener,llvm::LogicalResult>::walkPostOrder(a1, *(a2 + 16)))
  {
    return mlir::AffineExprVisitor<mlir::SimpleAffineExprFlattener,llvm::LogicalResult>::walkPostOrder(a1, *(a2 + 24)) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::AffineMap::getConstantMap(mlir::AffineMap *this, mlir::MLIRContext *a2, mlir::MLIRContext *a3)
{
  AffineConstantExpr = mlir::getAffineConstantExpr(this, a2, a3);

  return mlir::AffineMap::get(0, 0, AffineConstantExpr);
}

uint64_t mlir::AffineMap::getMultiDimIdentityMap(mlir::AffineMap *this, mlir::MLIRContext *a2, mlir::MLIRContext *a3)
{
  v4 = this;
  v14[4] = *MEMORY[0x1E69E9840];
  v12 = v14;
  v13 = 0x400000000;
  if (this < 5)
  {
    if (!this)
    {
      v8 = v13;
      goto LABEL_10;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v12, v14, this, 8);
  }

  v5 = 0;
  do
  {
    AffineDimExpr = mlir::getAffineDimExpr(v5, a2, a3);
    v7 = v13;
    if (v13 >= HIDWORD(v13))
    {
      v9 = AffineDimExpr;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v12, v14, v13 + 1, 8);
      AffineDimExpr = v9;
      v7 = v13;
    }

    *(v12 + v7) = AffineDimExpr;
    v8 = v13 + 1;
    LODWORD(v13) = v13 + 1;
    v5 = (v5 + 1);
  }

  while (v4 != v5);
LABEL_10:
  result = mlir::AffineMap::get(v4, 0, v12, v8, a2);
  if (v12 != v14)
  {
    v11 = result;
    free(v12);
    return v11;
  }

  return result;
}

uint64_t mlir::AffineMap::getMultiDimMapWithTargets(int a1, unsigned int *a2, mlir::MLIRContext *a3, mlir::MLIRContext *a4)
{
  v17[4] = *MEMORY[0x1E69E9840];
  v15 = v17;
  v16 = 0x400000000;
  if (!a3)
  {
    result = mlir::AffineMap::get(a1, 0, v17, 0, a4);
    v13 = v15;
    if (v15 == v17)
    {
      return result;
    }

    goto LABEL_7;
  }

  v7 = 4 * a3;
  do
  {
    AffineDimExpr = mlir::getAffineDimExpr(*a2, a4, a3);
    v9 = v16;
    if (v16 >= HIDWORD(v16))
    {
      v11 = AffineDimExpr;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v15, v17, v16 + 1, 8);
      AffineDimExpr = v11;
      v9 = v16;
    }

    *(v15 + v9) = AffineDimExpr;
    v10 = (v16 + 1);
    LODWORD(v16) = v16 + 1;
    ++a2;
    v7 -= 4;
  }

  while (v7);
  result = mlir::AffineMap::get(a1, 0, v15, v10, a4);
  v13 = v15;
  if (v15 != v17)
  {
LABEL_7:
    v14 = result;
    free(v13);
    return v14;
  }

  return result;
}

uint64_t mlir::AffineMap::getPermutationMap(int32x4_t *a1, unint64_t a2, mlir::MLIRContext *a3)
{
  v34[6] = *MEMORY[0x1E69E9840];
  v32 = v34;
  v33 = 0xC00000000;
  if (a2 < 0xD)
  {
    if (!a2)
    {
      v6 = v34;
      v21 = 0;
      LODWORD(v33) = 0;
      goto LABEL_11;
    }

    v6 = v34;
    v7 = v34;
    v8 = (a2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v8 < 7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v34, a2, 4);
    v6 = v32;
    v7 = (v32 + 4 * v33);
    v8 = (a2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v8 < 7)
    {
LABEL_3:
      v9 = v7;
      v10 = a1;
      do
      {
LABEL_9:
        v20 = *v10++;
        *v9 = v20;
        v9 += 4;
      }

      while (v10 != (a1 + 8 * a2));
      goto LABEL_10;
    }
  }

  v11 = v8 + 1;
  v12 = (v8 + 1) & 0x3FFFFFFFFFFFFFF8;
  v9 = &v7->i8[4 * v12];
  v10 = &a1->i64[v12];
  v13 = a1 + 2;
  v14 = v7 + 1;
  v15 = v12;
  do
  {
    v17 = v13[-2];
    v16 = v13[-1];
    v19 = *v13;
    v18 = v13[1];
    v13 += 4;
    v14[-1] = vuzp1q_s32(v17, v16);
    *v14 = vuzp1q_s32(v19, v18);
    v14 += 2;
    v15 -= 8;
  }

  while (v15);
  if (v11 != v12)
  {
    goto LABEL_9;
  }

LABEL_10:
  v21 = (v33 + a2);
  LODWORD(v33) = v21;
  if (v21 < 2)
  {
LABEL_11:
    v22 = v6;
    goto LABEL_19;
  }

  v24 = v6 + 1;
  v23 = *v6;
  v25 = 4 * v21 - 4;
  v22 = v6;
  v26 = v6 + 1;
  do
  {
    v28 = *v26++;
    v27 = v28;
    v29 = v23 >= v28;
    if (v23 <= v28)
    {
      v23 = v27;
    }

    if (!v29)
    {
      v22 = v24;
    }

    v24 = v26;
    v25 -= 4;
  }

  while (v25);
LABEL_19:
  result = mlir::AffineMap::getMultiDimMapWithTargets(*v22 + 1, v6, v21, a3);
  if (v32 != v34)
  {
    v31 = result;
    free(v32);
    return v31;
  }

  return result;
}

uint64_t mlir::AffineMap::inferFromExprList@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  if (a2)
  {
    v6 = result;
    v16 = -1;
    v17 = -1;
    v7 = (result + 16 * a2);
    v8 = result;
    do
    {
      v9 = *(v8 + 8);
      if (v9)
      {
        v10 = *v8;
        v11 = 8 * v9;
        do
        {
          v12 = *v10++;
          v18[0] = &v17;
          v18[1] = &v16;
          mlir::AffineExpr::walk<void>(v12, llvm::function_ref<void ()(mlir::AffineExpr)>::callback_fn<void mlir::getMaxDimAndSymbol<llvm::ArrayRef<mlir::AffineExpr>>(llvm::ArrayRef<llvm::ArrayRef<mlir::AffineExpr>>,long long &,long long &)::{lambda(mlir::AffineExpr)#1}>, v18);
          v11 -= 8;
        }

        while (v11);
      }

      v8 += 16;
    }

    while (v8 != v7);
    *a4 = a4 + 16;
    *(a4 + 8) = 0x400000000;
    if (a2 >= 5)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 16, a2, 8);
    }

    do
    {
      result = mlir::AffineMap::get(v17 + 1, v16 + 1, *v6, v6[1], a3);
      v14 = *(a4 + 8);
      if (v14 >= *(a4 + 12))
      {
        v13 = result;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 16, v14 + 1, 8);
        result = v13;
        v14 = *(a4 + 8);
      }

      *(*a4 + 8 * v14) = result;
      ++*(a4 + 8);
      v6 += 2;
    }

    while (v6 != v7);
  }

  else
  {
    *a4 = a4 + 16;
    *(a4 + 8) = 0x400000000;
  }

  return result;
}

unint64_t mlir::AffineMap::getLargestKnownDivisorOfMapExprs(mlir::AffineMap *this)
{
  v1 = *this;
  v2 = *(*this + 8);
  if (!v2)
  {
    return -1;
  }

  result = 0;
  v4 = v1 + 8 * v2 + 24;
  v5 = (v1 + 24);
  do
  {
    v6 = result;
    v14 = *v5;
    result = mlir::AffineExpr::getLargestKnownDivisor(&v14);
    v7 = result;
    v8 = v6 >= result;
    v9 = v6 == result;
    if (v6 < result)
    {
      result = v6;
    }

    if (!v9 && v8)
    {
      v7 = v6;
    }

    if (result)
    {
      v10 = v7 % result;
      if (v10)
      {
        v11 = v10 >> __clz(__rbit64(v10));
        v12 = result;
        do
        {
          v13 = v12 >> __clz(__rbit64(v12));
          v12 = v13 - v11;
          if (v11 > v13)
          {
            v12 = v11 - v13;
          }

          if (v11 >= v13)
          {
            v11 = v13;
          }
        }

        while (v12);
        result = v11 << __clz(__rbit64(v10 | result));
      }
    }

    else
    {
      result = v7;
    }

    ++v5;
  }

  while (v5 != v4);
  if (!result)
  {
    return -1;
  }

  return result;
}

uint64_t mlir::AffineMap::isIdentity(mlir::AffineMap *this)
{
  v1 = **this;
  if (v1 == *(*this + 8))
  {
    if (!v1)
    {
      return 1;
    }

    v2 = 0;
    v3 = *this + 24;
    while (1)
    {
      v4 = *(v3 + 8 * v2);
      v7 = v4;
      if (mlir::arith::FastMathFlagsAttr::getValue(&v7) == 6)
      {
        mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v7, v4);
        v6 = v7;
        if (!v7)
        {
          return 0;
        }
      }

      else
      {
        mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v7, 0);
        v6 = v7;
        if (!v7)
        {
          return 0;
        }
      }

      if (v2 != mlir::AffineDimExpr::getPosition(&v6))
      {
        break;
      }

      if (v1 == ++v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t mlir::AffineMap::isSymbolIdentity(mlir::AffineMap *this)
{
  v1 = *(*this + 4);
  if (v1 == *(*this + 8))
  {
    if (!v1)
    {
      return 1;
    }

    v2 = 0;
    v3 = *this + 24;
    while (1)
    {
      v4 = *(v3 + 8 * v2);
      v7 = v4;
      if (mlir::arith::FastMathFlagsAttr::getValue(&v7) == 6)
      {
        mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v7, v4);
        v6 = v7;
        if (!v7)
        {
          return 0;
        }
      }

      else
      {
        mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v7, 0);
        v6 = v7;
        if (!v7)
        {
          return 0;
        }
      }

      if (v2 != mlir::AffineDimExpr::getPosition(&v6))
      {
        break;
      }

      if (v1 == ++v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

BOOL mlir::AffineMap::isSingleConstant(mlir::AffineMap *this)
{
  v3 = *this;
  if (*(*this + 8) != 1)
  {
    return 0;
  }

  v5[1] = v1;
  v5[2] = v2;
  v5[0] = *(v3 + 24);
  return mlir::arith::FastMathFlagsAttr::getValue(v5) == 5;
}

BOOL mlir::AffineMap::isConstant(mlir::AffineMap *this)
{
  v1 = *(*this + 8);
  if (!v1)
  {
    return 1;
  }

  v2 = (*this + 24);
  v3 = 8 * v1 - 8;
  do
  {
    v4 = *v2++;
    v7 = v4;
    v6 = mlir::arith::FastMathFlagsAttr::getValue(&v7) == 5;
    result = v6;
    v6 = !v6 || v3 == 0;
    v3 -= 8;
  }

  while (!v6);
  return result;
}

uint64_t mlir::AffineMap::getConstantResults@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  v3 = *(*this + 8);
  if (v3)
  {
    v4 = 8 * v3;
    v5 = (*this + 24);
    do
    {
      while (1)
      {
        mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v8, *v5);
        v7 = v8;
        this = mlir::AffineBinaryOpExpr::getLHS(&v7);
        v8 = this;
        v6 = *(a2 + 8);
        if (v6 >= *(a2 + 12))
        {
          break;
        }

        *(*a2 + 8 * v6) = this;
        *(a2 + 8) = v6 + 1;
        ++v5;
        v4 -= 8;
        if (!v4)
        {
          return this;
        }
      }

      this = llvm::SmallVectorTemplateBase<long long,true>::growAndEmplaceBack<long long>(a2, &v8);
      ++v5;
      v4 -= 8;
    }

    while (v4);
  }

  return this;
}

uint64_t mlir::AffineMap::constantFold(int **a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v20[2] = *MEMORY[0x1E69E9840];
  v18 = v20;
  v19 = 0x200000000;
  mlir::AffineMap::partialConstantFold(a1, a2, a3, &v18, a5);
  v8 = v19;
  if (!v19)
  {
    v15 = 0;
    v16 = v18;
    if (v18 == v20)
    {
      return v15;
    }

    goto LABEL_7;
  }

  v9 = v18;
  v10 = *(a4 + 8);
  if (v10 + v19 > *(a4 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 16, v10 + v19, 8);
    v10 = *(a4 + 8);
  }

  v11 = (*a4 + 8 * v10);
  v12 = 8 * v8;
  do
  {
    v13 = *v9++;
    v14 = mlir::IndexType::get(*(*a1 + 2), v7);
    *v11++ = mlir::IntegerAttr::get(v14, v13);
    v12 -= 8;
  }

  while (v12);
  *(a4 + 8) += v8;
  v15 = 1;
  v16 = v18;
  if (v18 != v20)
  {
LABEL_7:
    free(v16);
  }

  return v15;
}

uint64_t mlir::AffineMap::partialConstantFold(int **a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v39[4] = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v32 = **a1;
  v33 = a2;
  v34 = a3;
  v35 = 0;
  v37 = v39;
  v38 = 0x400000000;
  v9 = v8[2];
  if (v9 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v39, v9, 8);
    v8 = *a1;
    LODWORD(v9) = (*a1)[2];
  }

  if (v9)
  {
    v10 = 8 * v9;
    v11 = (v8 + 6);
    while (1)
    {
      v12 = *v11;
      v36 = v12;
      if (v14)
      {
        v15 = v13;
        DesiredBytecodeVersion = mlir::BytecodeWriterConfig::getDesiredBytecodeVersion(&v36);
        v18 = mlir::IndexType::get(DesiredBytecodeVersion, v17);
        v19 = mlir::IntegerAttr::get(v18, v15);
        v31 = v19;
        if (a5 && (v35 & 1) != 0)
        {
          goto LABEL_24;
        }

        if (v19)
        {
          Int = mlir::IntegerAttr::getInt(&v31);
          Context = mlir::Attribute::getContext(&v31);
          AffineConstantExpr = mlir::getAffineConstantExpr(Int, Context, v22);
          if (v38 >= HIDWORD(v38))
          {
            v27 = AffineConstantExpr;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v39, v38 + 1, 8);
            *(v37 + v38) = v27;
            LODWORD(v38) = v38 + 1;
            if (a4)
            {
LABEL_13:
              v24 = mlir::IntegerAttr::getInt(&v31);
              v25 = *(a4 + 8);
              if (v25 >= *(a4 + 12))
              {
                v26 = v24;
                llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 16, v25 + 1, 8);
                v24 = v26;
                v25 = *(a4 + 8);
              }

              *(*a4 + 8 * v25) = v24;
              ++*(a4 + 8);
              goto LABEL_6;
            }
          }

          else
          {
            *(v37 + v38) = AffineConstantExpr;
            LODWORD(v38) = v38 + 1;
            if (a4)
            {
              goto LABEL_13;
            }
          }

          goto LABEL_6;
        }
      }

      else
      {
        v31 = 0;
        if (a5 && (v35 & 1) != 0)
        {
LABEL_24:
          result = 0;
          *a5 = 1;
          v29 = v37;
          if (v37 != v39)
          {
            goto LABEL_28;
          }

          return result;
        }
      }

      if (v38 >= HIDWORD(v38))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v39, v38 + 1, 8);
        *(v37 + v38) = v12;
        LODWORD(v38) = v38 + 1;
        if (!a4)
        {
          goto LABEL_6;
        }

LABEL_19:
        *(a4 + 8) = 0;
        a4 = 0;
        goto LABEL_6;
      }

      *(v37 + v38) = v12;
      LODWORD(v38) = v38 + 1;
      if (a4)
      {
        goto LABEL_19;
      }

LABEL_6:
      ++v11;
      v10 -= 8;
      if (!v10)
      {
        v8 = *a1;
        break;
      }
    }
  }

  result = mlir::AffineMap::get(*v8, v8[1], v37, v38, *(v8 + 2));
  v29 = v37;
  if (v37 != v39)
  {
LABEL_28:
    v30 = result;
    free(v29);
    return v30;
  }

  return result;
}

uint64_t mlir::AffineMap::walkExprs(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*result + 8);
  if (v3)
  {
    v6 = 8 * v3;
    v7 = (*result + 24);
    do
    {
      v8 = *v7++;
      result = mlir::AffineExpr::walk<void>(v8, a2, a3);
      v6 -= 8;
    }

    while (v6);
  }

  return result;
}

uint64_t mlir::AffineMap::replaceDimsAndSymbols(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, int a6, int a7)
{
  v27[8] = *MEMORY[0x1E69E9840];
  v25 = v27;
  v26 = 0x800000000;
  v14 = *a1;
  v15 = *(*a1 + 8);
  if (v15 >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v25, v27, v15, 8);
    v14 = *a1;
    LODWORD(v15) = *(*a1 + 8);
  }

  if (v15)
  {
    v16 = 8 * v15;
    v17 = (v14 + 24);
    do
    {
      v24 = *v17;
      v18 = mlir::AffineExpr::replaceDimsAndSymbols(&v24, a2, a3, a4, a5);
      v19 = v26;
      if (v26 >= HIDWORD(v26))
      {
        v23 = v18;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v25, v27, v26 + 1, 8);
        v18 = v23;
        v19 = v26;
      }

      *(v25 + v19) = v18;
      v20 = v26 + 1;
      LODWORD(v26) = v26 + 1;
      ++v17;
      v16 -= 8;
    }

    while (v16);
    v14 = *a1;
  }

  else
  {
    v20 = v26;
  }

  result = mlir::AffineMap::get(a6, a7, v25, v20, *(v14 + 16));
  if (v25 != v27)
  {
    v22 = result;
    free(v25);
    return v22;
  }

  return result;
}

uint64_t mlir::AffineMap::replace(uint64_t *a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v17[4] = *MEMORY[0x1E69E9840];
  v15 = v17;
  v16 = 0x400000000;
  v10 = *a1;
  v11 = *(*a1 + 8);
  if (v11 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v15, v17, v11, 8);
    v10 = *a1;
    LODWORD(v11) = *(*a1 + 8);
  }

  if (v11)
  {
    v14 = *(v10 + 24);
    mlir::AffineExpr::replace(&v14, a2, a3);
  }

  result = mlir::AffineMap::get(a4, a5, v15, v16, *(v10 + 16));
  if (v15 != v17)
  {
    v13 = result;
    free(v15);
    return v13;
  }

  return result;
}

uint64_t mlir::AffineMap::compose(uint64_t *a1, unsigned int *a2, mlir::MLIRContext *a3)
{
  v39[8] = *MEMORY[0x1E69E9840];
  v30 = a2;
  v5 = *(*a1 + 4);
  v6 = *a2;
  v7 = a2[1];
  v37 = v39;
  v38 = 0x800000000;
  if (v6)
  {
    if (v6 < 9)
    {
      v8 = 0;
      v9 = v6;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v39, v6, 8);
      v8 = v38;
      v9 = v6 - v38;
      if (v6 == v38)
      {
LABEL_7:
        v10 = 0;
        LODWORD(v38) = v6;
        do
        {
          AffineDimExpr = mlir::getAffineDimExpr(v10, *(*a1 + 16), a3);
          *(v37 + v10) = AffineDimExpr;
          v10 = (v10 + 1);
        }

        while (v6 != v10);
        goto LABEL_9;
      }
    }

    bzero(v37 + 8 * v8, 8 * v9);
    goto LABEL_7;
  }

LABEL_9:
  v12 = v7 + v5;
  v34 = v36;
  v35 = 0x800000000;
  if (!v7)
  {
    goto LABEL_16;
  }

  if (v7 < 9)
  {
    v13 = 0;
    v14 = v7;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, v36, v7, 8);
    v13 = v35;
    v14 = v7 - v35;
    if (v7 == v35)
    {
      goto LABEL_15;
    }
  }

  bzero(v34 + 8 * v13, 8 * v14);
LABEL_15:
  LODWORD(v35) = v7;
LABEL_16:
  if (v5 >= v12)
  {
    v17 = v34;
  }

  else
  {
    v15 = 0;
    do
    {
      AffineSymbolExpr = mlir::getAffineSymbolExpr(v5, *(*a1 + 16), a3);
      v17 = v34;
      *(v34 + v15) = AffineSymbolExpr;
      v15 += 8;
      v5 = (v5 + 1);
      LODWORD(v7) = v7 - 1;
    }

    while (v7);
    LODWORD(v7) = v35;
  }

  v18 = mlir::AffineMap::replaceDimsAndSymbols(&v30, v37, v38, v17, v7, v6, v12);
  v31 = v33;
  v32 = 0x800000000;
  v19 = *a1;
  v20 = *(*a1 + 8);
  if (v20 >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v31, v33, v20, 8);
    v19 = *a1;
    LODWORD(v20) = *(*a1 + 8);
  }

  if (v20)
  {
    v21 = 8 * v20;
    v22 = (v19 + 24);
    do
    {
      v29 = *v22;
      v23 = mlir::AffineExpr::compose(&v29, v18);
      v24 = v32;
      if (v32 >= HIDWORD(v32))
      {
        v26 = v23;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v31, v33, v32 + 1, 8);
        v23 = v26;
        v24 = v32;
      }

      *(v31 + v24) = v23;
      v25 = v32 + 1;
      LODWORD(v32) = v32 + 1;
      ++v22;
      v21 -= 8;
    }

    while (v21);
  }

  else
  {
    v25 = v32;
  }

  v27 = mlir::AffineMap::get(v6, v12, v31, v25, *(a2 + 2));
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

  return v27;
}

uint64_t mlir::AffineMap::isProjectedPermutation(mlir::AffineMap *this, int a2)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v2 = *this;
  if (*(*this + 4))
  {
    return 0;
  }

  v3 = v2[2];
  v4 = *v2;
  if (v3 > v4)
  {
    return 0;
  }

  v19 = v22;
  v21 = 8;
  if (v4 < 9)
  {
    if (v4)
    {
      bzero(v22, v4);
    }
  }

  else
  {
    v20 = 0;
    llvm::SmallVectorBase<unsigned long long>::grow_pod(&v19, v22, v4, 1);
    bzero(v19, v4);
    v2 = *this;
    v3 = v2[2];
  }

  v20 = v4;
  v5 = 1;
  if (!v3)
  {
LABEL_24:
    v15 = v19;
    if (v19 != v22)
    {
      goto LABEL_27;
    }

    return v5;
  }

  v9 = 8 * v3;
  v10 = (v2 + 6);
  do
  {
    v11 = *v10;
    v18 = *v10;
    if (mlir::arith::FastMathFlagsAttr::getValue(&v18) == 6)
    {
      mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v18, v11);
      v17 = v18;
      if (v18)
      {
        goto LABEL_14;
      }
    }

    else
    {
      mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v18, 0);
      v17 = v18;
      if (v18)
      {
LABEL_14:
        Position = mlir::AffineDimExpr::getPosition(&v17);
        if (*(v19 + Position))
        {
          goto LABEL_23;
        }

        v13 = mlir::AffineDimExpr::getPosition(&v17);
        *(v19 + v13) = 1;
        goto LABEL_11;
      }
    }

    v18 = v11;
    if (mlir::arith::FastMathFlagsAttr::getValue(&v18) == 5)
    {
      v14 = v11;
    }

    else
    {
      v14 = 0;
    }

    mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v18, v14);
    v16 = v18;
    if (!a2 || !v18 || mlir::AffineBinaryOpExpr::getLHS(&v16))
    {
LABEL_23:
      v5 = 0;
      goto LABEL_24;
    }

LABEL_11:
    ++v10;
    v9 -= 8;
  }

  while (v9);
  v5 = 1;
  v15 = v19;
  if (v19 != v22)
  {
LABEL_27:
    free(v15);
  }

  return v5;
}

uint64_t mlir::AffineMap::isPermutation(mlir::AffineMap *this)
{
  if (**this == *(*this + 8))
  {
    return mlir::AffineMap::isProjectedPermutation(this, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::foldAttributesIntoMap(mlir::MLIRContext **a1, unsigned int *a2, mlir::MLIRContext *a3, uint64_t a4, uint64_t a5)
{
  v46[6] = *MEMORY[0x1E69E9840];
  v44 = v46;
  v45 = 0x600000000;
  v40 = a2;
  v41 = v43;
  v42 = 0x600000000;
  if (*a2)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      while (1)
      {
        v11 = *(a3 + v10);
        if ((v11 & 4) != 0)
        {
          break;
        }

        v12 = v11 & 0xFFFFFFFFFFFFFFF8;
        if (!v12)
        {
          break;
        }

        v39 = v12;
        Int = mlir::IntegerAttr::getInt(&v39);
        AffineConstantExpr = mlir::Builder::getAffineConstantExpr(a1, Int, v14);
        v16 = v45;
        if (v45 >= HIDWORD(v45))
        {
          v22 = AffineConstantExpr;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v46, v45 + 1, 8);
          AffineConstantExpr = v22;
          v16 = v45;
        }

        *(v44 + v16) = AffineConstantExpr;
        LODWORD(v45) = v45 + 1;
        if (++v10 >= *a2)
        {
          goto LABEL_15;
        }
      }

      AffineDimExpr = mlir::Builder::getAffineDimExpr(a1, v9, a3);
      v18 = v45;
      if (v45 >= HIDWORD(v45))
      {
        v21 = AffineDimExpr;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v46, v45 + 1, 8);
        AffineDimExpr = v21;
        v18 = v45;
      }

      *(v44 + v18) = AffineDimExpr;
      LODWORD(v45) = v45 + 1;
      v19 = *(a3 + v10);
      v20 = *(a5 + 8);
      if (v20 >= *(a5 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a5, a5 + 16, v20 + 1, 8);
        v20 = *(a5 + 8);
      }

      v9 = (v9 + 1);
      *(*a5 + 8 * v20) = v19 & 0xFFFFFFFFFFFFFFF8;
      ++*(a5 + 8);
      ++v10;
    }

    while (v10 < *a2);
  }

  else
  {
    LODWORD(v9) = 0;
  }

LABEL_15:
  if (a2[1])
  {
    v23 = 0;
    v24 = 0;
    do
    {
      while (1)
      {
        v25 = *(a3 + *a2 + v24);
        if ((v25 & 4) != 0)
        {
          break;
        }

        v26 = v25 & 0xFFFFFFFFFFFFFFF8;
        if (!v26)
        {
          break;
        }

        v39 = v26;
        v27 = mlir::IntegerAttr::getInt(&v39);
        v29 = mlir::Builder::getAffineConstantExpr(a1, v27, v28);
        v30 = v42;
        if (v42 >= HIDWORD(v42))
        {
          v36 = v29;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v41, v43, v42 + 1, 8);
          v29 = v36;
          v30 = v42;
        }

        *(v41 + v30) = v29;
        LODWORD(v42) = v42 + 1;
        if (++v24 >= a2[1])
        {
          goto LABEL_29;
        }
      }

      AffineSymbolExpr = mlir::Builder::getAffineSymbolExpr(a1, v23, a3);
      v32 = v42;
      if (v42 >= HIDWORD(v42))
      {
        v35 = AffineSymbolExpr;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v41, v43, v42 + 1, 8);
        AffineSymbolExpr = v35;
        v32 = v42;
      }

      *(v41 + v32) = AffineSymbolExpr;
      LODWORD(v42) = v42 + 1;
      v33 = *(a3 + *a2 + v24);
      v34 = *(a5 + 8);
      if (v34 >= *(a5 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a5, a5 + 16, v34 + 1, 8);
        v34 = *(a5 + 8);
      }

      v23 = (v23 + 1);
      *(*a5 + 8 * v34) = v33 & 0xFFFFFFFFFFFFFFF8;
      ++*(a5 + 8);
      ++v24;
    }

    while (v24 < a2[1]);
  }

  else
  {
    LODWORD(v23) = 0;
  }

LABEL_29:
  v37 = mlir::AffineMap::replaceDimsAndSymbols(&v40, v44, v45, v41, v42, v9, v23);
  if (v41 != v43)
  {
    free(v41);
  }

  if (v44 != v46)
  {
    free(v44);
  }

  return v37;
}

uint64_t mlir::simplifyAffineMap(unsigned int *a1)
{
  v14[8] = *MEMORY[0x1E69E9840];
  v12 = v14;
  v13 = 0x800000000;
  v2 = a1[2];
  if (!v2)
  {
    result = mlir::AffineMap::get(*a1, a1[1], v14, 0, *(a1 + 2));
    v10 = v12;
    if (v12 == v14)
    {
      return result;
    }

    goto LABEL_7;
  }

  v3 = 8 * v2;
  v4 = (a1 + 6);
  do
  {
    v5 = mlir::simplifyAffineExpr(*v4, *a1, a1[1]);
    v6 = v13;
    if (v13 >= HIDWORD(v13))
    {
      v8 = v5;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v12, v14, v13 + 1, 8);
      v5 = v8;
      v6 = v13;
    }

    *(v12 + v6) = v5;
    v7 = (v13 + 1);
    LODWORD(v13) = v13 + 1;
    ++v4;
    v3 -= 8;
  }

  while (v3);
  result = mlir::AffineMap::get(*a1, a1[1], v12, v7, *(a1 + 2));
  v10 = v12;
  if (v12 != v14)
  {
LABEL_7:
    v11 = result;
    free(v10);
    return v11;
  }

  return result;
}

uint64_t mlir::removeDuplicateExprs(uint64_t a1)
{
  v20[4] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  v18 = v20;
  v19 = 0x400000000;
  if (v2 < 5)
  {
    if (!v2)
    {
      v5 = v20;
      LODWORD(v19) = 0;
      v8 = v20;
      goto LABEL_15;
    }

    v3 = 0;
    v4 = v20;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v18, v20, v2, 8);
    v3 = v19;
    v4 = v18;
  }

  memcpy(&v4[v3], (a1 + 24), 8 * v2);
  v5 = v18;
  v7 = (v19 + v2);
  v6 = v19 + v2 == 0;
  LODWORD(v19) = v7;
  v8 = v18 + 8 * v7;
  if (!v6)
  {
    v9 = 8 * v7 - 16;
    v10 = v18;
    while (1)
    {
      v11 = v10;
      v10 += 8;
      if (v10 == v8)
      {
        break;
      }

      v12 = v9;
      v13 = v11[1];
      v9 -= 8;
      if (*v11 == v13)
      {
        if (v11 + 2 != v8)
        {
          v14 = 8;
          do
          {
            v15 = v13;
            v13 = *&v10[v14];
            if (v15 != v13)
            {
              v11[1] = v13;
              ++v11;
            }

            v14 += 8;
            v12 -= 8;
          }

          while (v12);
        }

        v8 = (v11 + 1);
        break;
      }
    }
  }

LABEL_15:
  LODWORD(v19) = (v8 - v5) >> 3;
  result = mlir::AffineMap::get(*a1, *(a1 + 4), v5, v19, *(a1 + 16));
  if (v18 != v20)
  {
    v17 = result;
    free(v18);
    return v17;
  }

  return result;
}

unint64_t *mlir::MutableAffineMap::MutableAffineMap(unint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = (a1 + 2);
  *a1 = (a1 + 2);
  a1[1] = 0x800000000;
  if (v4 < 9)
  {
    if (!v4)
    {
      v7 = 0;
      goto LABEL_6;
    }

    v6 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, v5, v4, 8);
    v6 = *(a1 + 2);
    v5 = *a1;
  }

  memcpy((v5 + 8 * v6), (a2 + 24), 8 * v4);
  v7 = *(a1 + 2);
LABEL_6:
  *(a1 + 2) = v7 + v4;
  a1[10] = *a2;
  a1[11] = *(a2 + 16);
  return a1;
}

void *mlir::MutableAffineMap::reset(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 80) = *a2;
  *(a1 + 88) = *(a2 + 16);
  return llvm::SmallVectorImpl<long long>::insert<long long const*,void>(a1, *a1, (a2 + 24), (a2 + 24 + 8 * *(a2 + 8)));
}

unint64_t anonymous namespace::AffineExprConstantFolder::constantFoldImpl(uint64_t a1, uint64_t a2)
{
  v14 = a2;
  Value = mlir::arith::FastMathFlagsAttr::getValue(&v14);
  if (Value <= 3)
  {
    if (Value > 1)
    {
      v4 = v14;
      v13 = a1;
      if (Value == 2)
      {
      }

      else
      {
      }
    }

    else
    {
      v4 = v14;
      if (Value)
      {
      }

      else
      {
      }
    }

    goto LABEL_16;
  }

  if (Value > 5)
  {
    if (Value == 6)
    {
      mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v12, v14);
      v6 = *(*(a1 + 8) + 8 * mlir::AffineDimExpr::getPosition(&v12));
      if (!v6)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v9 = *a1;
      mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v12, v14);
      v6 = *(*(a1 + 8) + 8 * (mlir::AffineDimExpr::getPosition(&v12) + v9));
      if (!v6)
      {
        goto LABEL_21;
      }
    }

    v10 = *(*v6 + 136);
    if (v10 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v6 = 0;
    }

    v13 = v6;
    if (v10 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      Int = mlir::IntegerAttr::getInt(&v13);
      goto LABEL_23;
    }

LABEL_21:
    LOBYTE(Int) = 0;
    v8 = 0;
    return v8 | Int;
  }

  if (Value != 4)
  {
    mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v13, v14);
    Int = mlir::AffineBinaryOpExpr::getLHS(&v13);
LABEL_23:
    v8 = Int & 0xFFFFFFFFFFFFFF00;
    return v8 | Int;
  }

  v4 = v14;
  v13 = a1;
LABEL_16:
  v8 = Int & 0xFFFFFFFFFFFFFF00;
  return v8 | Int;
}

uint64_t anonymous namespace::AffineExprConstantFolder::constantFoldBinExpr(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v15, a2);
  LHS = mlir::AffineBinaryOpExpr::getLHS(&v15);
  {
    return a3(a4, v10, v12);
  }

  else
  {
    return 0;
  }
}

uint64_t llvm::function_ref<std::optional<long long> ()(long long,long long)>::callback_fn<anonymous namespace::AffineExprConstantFolder::constantFoldImpl(mlir::AffineExpr)::{lambda(long long,long long)#3}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 > 0)
  {
    return (a3 & ((a2 % a3) >> 63)) + a2 % a3;
  }

  result = 0;
  *(*a1 + 24) = 1;
  return result;
}

uint64_t llvm::function_ref<std::optional<long long> ()(long long,long long)>::callback_fn<anonymous namespace::AffineExprConstantFolder::constantFoldImpl(mlir::AffineExpr)::{lambda(long long,long long)#4}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (a2)
    {
      if ((a3 ^ a2) < 0)
      {
        return (((a3 >> 63) | 1) + a2) / a3 - 1;
      }

      else
      {
        return a2 / a3;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    *(*a1 + 24) = 1;
  }

  return result;
}

uint64_t llvm::function_ref<std::optional<long long> ()(long long,long long)>::callback_fn<anonymous namespace::AffineExprConstantFolder::constantFoldImpl(mlir::AffineExpr)::{lambda(long long,long long)#5}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (a2)
    {
      if ((a3 ^ a2) < 0)
      {
        return a2 / a3;
      }

      else
      {
        v3 = a2 - 1;
        if (a3 < 0)
        {
          v3 = a2 + 1;
        }

        return v3 / a3 + 1;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    *(*a1 + 24) = 1;
  }

  return result;
}

void *llvm::function_ref<void ()(mlir::AffineExpr)>::callback_fn<void mlir::getMaxDimAndSymbol<llvm::ArrayRef<mlir::AffineExpr>>(llvm::ArrayRef<llvm::ArrayRef<mlir::AffineExpr>>,long long &,long long &)::{lambda(mlir::AffineExpr)#1}>(uint64_t **a1, uint64_t a2)
{
  v9 = a2;
  if (mlir::arith::FastMathFlagsAttr::getValue(&v9) == 6)
  {
    mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v9, a2);
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v9, 0);
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  v4 = *a1;
  Position = mlir::AffineDimExpr::getPosition(&v9);
  if (*v4 > Position)
  {
    Position = *v4;
  }

  **a1 = Position;
LABEL_8:
  v9 = a2;
  if (mlir::arith::FastMathFlagsAttr::getValue(&v9) == 7)
  {
    result = mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v9, a2);
    if (!v9)
    {
      return result;
    }
  }

  else
  {
    result = mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v9, 0);
    if (!v9)
    {
      return result;
    }
  }

  v7 = a1[1];
  result = mlir::AffineDimExpr::getPosition(&v9);
  v8 = result;
  if (*v7 > result)
  {
    v8 = *v7;
  }

  *a1[1] = v8;
  return result;
}

uint64_t llvm::SmallVectorTemplateBase<long long,true>::growAndEmplaceBack<long long>(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {
    v6 = a1;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v3 + 1, 8);
    a1 = v6;
    LODWORD(v3) = *(v6 + 8);
  }

  *(*a1 + 8 * v3) = v2;
  v4 = *(a1 + 8) + 1;
  *(a1 + 8) = v4;
  return *a1 + 8 * v4 - 8;
}

void *mlir::OperationName::print(mlir::OperationName *this, llvm::raw_ostream *a2)
{
  v7 = *(*this + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v7);
  v5 = v3;
  result = *(a2 + 4);
  if (v3 > *(a2 + 3) - result)
  {
    return llvm::raw_ostream::write(a2, AttrData, v3);
  }

  if (v3)
  {
    result = memcpy(result, AttrData, v3);
    *(a2 + 4) += v5;
  }

  return result;
}

uint64_t mlir::AsmParser::parseTypeList(uint64_t a1, uint64_t a2)
{
  v3[0] = a1;
  v3[1] = a2;
  return (*(*a1 + 392))(a1, 0, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::AsmParser::parseTypeList(llvm::SmallVectorImpl<mlir::Type> &)::$_0>, v3, 0, 0);
}

void *llvm::raw_ostream::operator<<(void *a1, char *__s)
{
  if (!__s)
  {
    return a1;
  }

  v4 = strlen(__s);
  v5 = a1[4];
  if (v4 <= a1[3] - v5)
  {
    if (v4)
    {
      memcpy(v5, __s, v4);
      a1[4] += v4;
    }

    return a1;
  }

  return llvm::raw_ostream::write(a1, __s, v4);
}

void mlir::registerAsmPrinterCLOptions(mlir *this)
{
  if (!atomic_load_explicit(clOptions, memory_order_acquire))
  {
  }
}

mlir::OpPrintingFlags *mlir::OpPrintingFlags::OpPrintingFlags(mlir::OpPrintingFlags *this)
{
  *this = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 4) = 100;
  *(this + 40) = 0;
  if (!atomic_load(clOptions))
  {
    return this;
  }

  if (!atomic_load_explicit(clOptions, memory_order_acquire))
  {
  }

  if (*(clOptions[0] + 208))
  {
    if (atomic_load_explicit(clOptions, memory_order_acquire))
    {
      v3 = *(clOptions[0] + 328);
      if (*(this + 8))
      {
LABEL_8:
        *this = v3;
        goto LABEL_9;
      }
    }

    else
    {
      v3 = *(clOptions[0] + 328);
      if (*(this + 8))
      {
        goto LABEL_8;
      }
    }

    *(this + 8) = 1;
    goto LABEL_8;
  }

LABEL_9:
  if (!atomic_load_explicit(clOptions, memory_order_acquire))
  {
  }

  if (*(clOptions[0] + 8))
  {
    if (!atomic_load_explicit(clOptions, memory_order_acquire))
    {
    }

    *(this + 4) = *(clOptions[0] + 128);
  }

  if (!atomic_load_explicit(clOptions, memory_order_acquire))
  {
  }

  if (!*(clOptions[0] + 400))
  {
    goto LABEL_22;
  }

  if (!atomic_load_explicit(clOptions, memory_order_acquire))
  {
    v4 = *(clOptions[0] + 520);
    if (*(this + 24))
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v4 = *(clOptions[0] + 520);
  if ((*(this + 24) & 1) == 0)
  {
LABEL_20:
    *(this + 24) = 1;
  }

LABEL_21:
  *(this + 2) = v4;
LABEL_22:
  if (!atomic_load_explicit(clOptions, memory_order_acquire))
  {
  }

  *(this + 40) = *(this + 40) & 0xFE | *(clOptions[0] + 712);
  if (!atomic_load_explicit(clOptions, memory_order_acquire))
  {
  }

  if (*(clOptions[0] + 904))
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  *(this + 40) = *(this + 40) & 0xFD | v5;
  if (!atomic_load_explicit(clOptions, memory_order_acquire))
  {
  }

  if (*(clOptions[0] + 1096))
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  *(this + 40) = *(this + 40) & 0xFB | v6;
  if (!atomic_load_explicit(clOptions, memory_order_acquire))
  {
  }

  if (*(clOptions[0] + 1288))
  {
    v7 = 16;
  }

  else
  {
    v7 = 0;
  }

  *(this + 40) = *(this + 40) & 0xEF | v7;
  if (!atomic_load_explicit(clOptions, memory_order_acquire))
  {
  }

  if (*(clOptions[0] + 1480))
  {
    v8 = 32;
  }

  else
  {
    v8 = 0;
  }

  *(this + 40) = *(this + 40) & 0xDF | v8;
  if (!atomic_load_explicit(clOptions, memory_order_acquire))
  {
  }

  if (*(clOptions[0] + 1672))
  {
    v9 = 8;
  }

  else
  {
    v9 = 0;
  }

  *(this + 40) = *(this + 40) & 0xF7 | v9;
  if (!atomic_load_explicit(clOptions, memory_order_acquire))
  {
  }

  if (*(clOptions[0] + 1864))
  {
    v10 = 64;
  }

  else
  {
    v10 = 0;
  }

  *(this + 40) = *(this + 40) & 0xBF | v10;
  if (!atomic_load_explicit(clOptions, memory_order_acquire))
  {
  }

  if (*(clOptions[0] + 2056))
  {
    v11 = 0x80;
  }

  else
  {
    v11 = 0;
  }

  *(this + 40) = v11 & 0x80 | *(this + 40) & 0x7F;
  return this;
}

uint64_t mlir::OpPrintingFlags::elideLargeElementsAttrs(uint64_t this, uint64_t a2)
{
  *this = a2;
  *(this + 8) = 1;
  return this;
}

uint64_t mlir::OpPrintingFlags::elideLargeResourceString(uint64_t this, uint64_t a2)
{
  if ((*(this + 24) & 1) == 0)
  {
    *(this + 24) = 1;
  }

  *(this + 16) = a2;
  return this;
}

uint64_t mlir::OpPrintingFlags::enableDebugInfo(uint64_t this, char a2, int a3)
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(this + 40) = v3 | a2 | *(this + 40) & 0xFC;
  return this;
}

uint64_t mlir::OpPrintingFlags::printGenericOpForm(uint64_t this, int a2)
{
  if (a2)
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  *(this + 40) = *(this + 40) & 0xFB | v2;
  return this;
}

uint64_t mlir::OpPrintingFlags::shouldElideElementsAttr(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 8) != 1)
  {
    return 0;
  }

  v9[3] = v3;
  v9[4] = v4;
  v6 = *a1;
  if (v6 >= mlir::ElementsAttr::getNumElements(a2, a3))
  {
    return 0;
  }

  if (mlir::DenseElementsAttr::classof(a2))
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  v9[0] = v7;
  if (v7)
  {
    return mlir::DenseElementsAttr::isSplat(v9) ^ 1;
  }

  else
  {
    return 1;
  }
}

void mlir::AsmResourcePrinter::~AsmResourcePrinter(void **this)
{
  *this = &unk_1F5AF56B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void *mlir::FallbackAsmResourceMap::getParserFor(uint64_t a1, const void *a2, size_t a3)
{
  if (!a2)
  {
    __dst = 0;
    v16 = 0;
    v17 = 0;
    v7 = llvm::MapVector<std::string,std::unique_ptr<mlir::FallbackAsmResourceMap::ResourceCollection>,llvm::StringMap<unsigned int,llvm::MallocAllocator>,llvm::SmallVector<std::pair<std::string,std::unique_ptr<mlir::FallbackAsmResourceMap::ResourceCollection>>,0u>>::operator[](a1, &__dst, a3);
    if ((SHIBYTE(v17) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  if (a3 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_31;
  }

  if (a3 >= 0x17)
  {
    if ((a3 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (a3 | 7) + 1;
    }

    p_dst = operator new(v8);
    v16 = a3;
    v17 = v8 | 0x8000000000000000;
    __dst = p_dst;
    goto LABEL_12;
  }

  HIBYTE(v17) = a3;
  p_dst = &__dst;
  if (a3)
  {
LABEL_12:
    memmove(p_dst, a2, a3);
  }

  *(p_dst + a3) = 0;
  v7 = llvm::MapVector<std::string,std::unique_ptr<mlir::FallbackAsmResourceMap::ResourceCollection>,llvm::StringMap<unsigned int,llvm::MallocAllocator>,llvm::SmallVector<std::pair<std::string,std::unique_ptr<mlir::FallbackAsmResourceMap::ResourceCollection>>,0u>>::operator[](a1, &__dst, a3);
  if ((SHIBYTE(v17) & 0x80000000) == 0)
  {
LABEL_14:
    result = *v7;
    if (*v7)
    {
      return result;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(__dst);
  result = *v7;
  if (*v7)
  {
    return result;
  }

LABEL_17:
  result = operator new(0x90uLL);
  *result = &unk_1F5AF5688;
  v10 = result + 1;
  if (!a2)
  {
    v11 = 0;
    *v10 = 0;
    result[2] = 0;
    result[3] = 0;
    goto LABEL_29;
  }

  if (a3 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_31:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  if (a3 >= 0x17)
  {
    if ((a3 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (a3 | 7) + 1;
    }

    v13 = result;
    v10 = operator new(v12);
    result = v13;
    v13[2] = a3;
    v13[3] = v12 | 0x8000000000000000;
    v13[1] = v10;
  }

  else
  {
    *(result + 31) = a3;
    if (!a3)
    {
      goto LABEL_28;
    }
  }

  v14 = result;
  memmove(v10, a2, a3);
  result = v14;
LABEL_28:
  *(v10 + a3) = 0;
  v11 = *v7;
LABEL_29:
  *result = &unk_1F5AF56F8;
  result[4] = result + 6;
  result[5] = 0x100000000;
  *v7 = result;
  if (v11)
  {
    (*(*v11 + 8))(v11);
    return *v7;
  }

  return result;
}

uint64_t llvm::MapVector<std::string,std::unique_ptr<mlir::FallbackAsmResourceMap::ResourceCollection>,llvm::StringMap<unsigned int,llvm::MallocAllocator>,llvm::SmallVector<std::pair<std::string,std::unique_ptr<mlir::FallbackAsmResourceMap::ResourceCollection>>,0u>>::operator[](uint64_t a1, uint64_t a2, const unsigned __int8 *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v23 = __p;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v23;
  }

  else
  {
    v5 = __p.__r_.__value_.__r.__words[0];
  }

  v24 = 0;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  __p.__r_.__value_.__r.__words[0] = v5;
  __p.__r_.__value_.__l.__size_ = size;
  LODWORD(__p.__r_.__value_.__r.__words[2]) = 0;
  v7 = llvm::StringMapImpl::hash(v5, size, a3);
  v8 = *llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace_with_hash<unsigned int>(a1, v5, size, v7, &__p.__r_.__value_.__r.__words[2]);
  if (v9)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
      v22 = 0;
      v10 = *(a1 + 32);
      v11 = *(a1 + 24);
      p_p = &__p;
      if (v10 < *(a1 + 36))
      {
        goto LABEL_17;
      }
    }

    else
    {
      __p = *a2;
      v22 = 0;
      v10 = *(a1 + 32);
      v11 = *(a1 + 24);
      p_p = &__p;
      if (v10 < *(a1 + 36))
      {
        goto LABEL_17;
      }
    }

    if (v11 <= &__p && v11 + 32 * v10 > &__p)
    {
      v20 = &__p - v11;
      llvm::SmallVectorTemplateBase<std::pair<std::string,std::unique_ptr<mlir::FallbackAsmResourceMap::ResourceCollection>>,false>::grow(a1 + 24, v10 + 1);
      v11 = *(a1 + 24);
      p_p = &v20[v11];
    }

    else
    {
      llvm::SmallVectorTemplateBase<std::pair<std::string,std::unique_ptr<mlir::FallbackAsmResourceMap::ResourceCollection>>,false>::grow(a1 + 24, v10 + 1);
      v11 = *(a1 + 24);
      p_p = &__p;
    }

LABEL_17:
    v15 = v11 + 32 * *(a1 + 32);
    v16 = *&p_p->__r_.__value_.__l.__data_;
    *(v15 + 16) = *(&p_p->__r_.__value_.__l + 2);
    *v15 = v16;
    p_p->__r_.__value_.__r.__words[0] = 0;
    p_p->__r_.__value_.__l.__size_ = 0;
    data = p_p[1].__r_.__value_.__l.__data_;
    p_p->__r_.__value_.__r.__words[2] = 0;
    p_p[1].__r_.__value_.__r.__words[0] = 0;
    *(v15 + 24) = data;
    ++*(a1 + 32);
    v18 = v22;
    v22 = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v13 = *(a1 + 32) - 1;
    *(v8 + 8) = v13;
    v14 = *(a1 + 24);
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_22;
    }

    return v14 + 32 * v13 + 24;
  }

  v13 = *(v8 + 8);
  v14 = *(a1 + 24);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_22:
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  return v14 + 32 * v13 + 24;
}

void mlir::FallbackAsmResourceMap::getPrinters(mlir::FallbackAsmResourceMap *this@<X0>, void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *(this + 8);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = *(this + 3) + 24;
    v7 = 32 * v3;
    while (1)
    {
      v8 = *v6;
      v9 = *(*v6 + 31);
      if (v9 >= 0)
      {
        v10 = (*v6 + 8);
      }

      else
      {
        v10 = *(*v6 + 8);
      }

      if (v9 >= 0)
      {
        v11 = *(*v6 + 31);
      }

      else
      {
        v11 = *(v8 + 16);
      }

      v12 = operator new(0x28uLL);
      v13 = v12;
      *v12 = &unk_1F5AF56B0;
      v14 = v12 + 1;
      if (!v10)
      {
        *v14 = 0;
        v12[2] = 0;
        v12[3] = 0;
        *v12 = &unk_1F5AF5C38;
        v12[4] = v8;
        if (v5 >= v4)
        {
          goto LABEL_24;
        }

        goto LABEL_3;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      if (v11 >= 0x17)
      {
        break;
      }

      *(v12 + 31) = v11;
      if (v11)
      {
        goto LABEL_22;
      }

LABEL_23:
      *(v14 + v11) = 0;
      v5 = a2[1];
      v4 = a2[2];
      *v13 = &unk_1F5AF5C38;
      v13[4] = v8;
      if (v5 >= v4)
      {
LABEL_24:
        v16 = *a2;
        v17 = v5 - *a2;
        v18 = (v17 >> 3) + 1;
        if (v18 >> 61)
        {
          std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
        }

        if ((v4 - v16) >> 2 > v18)
        {
          v18 = (v4 - v16) >> 2;
        }

        if ((v4 - v16) >= 0x7FFFFFFFFFFFFFF8)
        {
          v19 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v18;
        }

        if (v19)
        {
          if (v19 >> 61)
          {
            std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
          }

          v20 = operator new(8 * v19);
        }

        else
        {
          v20 = 0;
        }

        v21 = &v20[8 * (v17 >> 3)];
        v4 = &v20[8 * v19];
        *v21 = v13;
        v5 = v21 + 8;
        memcpy(v20, v16, v17);
        *a2 = v20;
        a2[2] = v4;
        if (v16)
        {
          operator delete(v16);
        }

        goto LABEL_4;
      }

LABEL_3:
      *v5 = v13;
      v5 += 8;
LABEL_4:
      a2[1] = v5;
      v6 += 32;
      v7 -= 32;
      if (!v7)
      {
        return;
      }
    }

    if ((v11 | 7) == 0x17)
    {
      v15 = 25;
    }

    else
    {
      v15 = (v11 | 7) + 1;
    }

    v14 = operator new(v15);
    v13[2] = v11;
    v13[3] = v15 | 0x8000000000000000;
    v13[1] = v14;
LABEL_22:
    memmove(v14, v10, v11);
    goto LABEL_23;
  }
}

BOOL mlir::FallbackAsmResourceMap::ResourceCollection::parseResource(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = (*(*a2 + 32))(a2);
  switch(v4)
  {
    case 2:
      (*(*a2 + 48))(&__p, a2);
      v10 = LOBYTE(v19[0]);
      v11 = v19[0];
      if (LOBYTE(v19[0]) == 1)
      {
        v14 = (*(*a2 + 16))(a2);
        v15 = v12;
        llvm::SmallVectorImpl<mlir::FallbackAsmResourceMap::OpaqueAsmResource>::emplace_back<llvm::StringRef,std::string>(a1 + 32, &v14, &__p);
        v11 = v19[0];
      }

      if ((v11 & 1) != 0 && SHIBYTE(v18) < 0)
      {
        operator delete(__p);
      }

      return v10 != 0;
    case 1:
      LOWORD(v14) = (*(*a2 + 40))(a2);
      if ((v14 & 0x100) == 0)
      {
        return 0;
      }

      __p = (*(*a2 + 16))(a2);
      v17 = v9;
      llvm::SmallVectorImpl<mlir::FallbackAsmResourceMap::OpaqueAsmResource>::emplace_back<llvm::StringRef,BOOL &>(a1 + 32, &__p, &v14);
      break;
    case 0:
      (*(*a2 + 56))(&__p, a2, llvm::function_ref<mlir::AsmResourceBlob ()(unsigned long,unsigned long)>::callback_fn<mlir::AsmParsedResourceEntry::parseAsBlob(void)::{lambda(unsigned long,unsigned long)#1}>, &v14);
      if (v21 == 1)
      {
        v14 = (*(*a2 + 16))(a2);
        v15 = v5;
        llvm::SmallVectorImpl<mlir::FallbackAsmResourceMap::OpaqueAsmResource>::emplace_back<llvm::StringRef,mlir::AsmResourceBlob>(a1 + 32, &v14, &__p);
        if ((v21 & 1) != 0 && v20 >= 8)
        {
          v6 = (v20 & 2) != 0 ? v19 : v19[0];
          (*(v20 & 0xFFFFFFFFFFFFFFF8))(v6, __p, v17, v18);
          v7 = v20;
          if (v20 >= 8)
          {
            if ((v20 & 4) != 0)
            {
              if ((v20 & 2) != 0)
              {
                v8 = v19;
              }

              else
              {
                v8 = v19[0];
              }

              (*((v20 & 0xFFFFFFFFFFFFFFF8) + 16))(v8);
            }

            if ((v7 & 2) == 0)
            {
              llvm::deallocate_buffer(v19[0], v19[1]);
            }
          }
        }

        return 1;
      }

      return 0;
  }

  return 1;
}

uint64_t llvm::SmallVectorImpl<mlir::FallbackAsmResourceMap::OpaqueAsmResource>::emplace_back<llvm::StringRef,mlir::AsmResourceBlob>(uint64_t a1, const void **a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  if (v4 < *(a1 + 12))
  {
    v5 = *a1 + 96 * v4;
    v7 = *a2;
    v6 = a2[1];
    v19 = *a3;
    v8 = *(a3 + 48);
    v20 = *(a3 + 16);
    v23 = v8;
    if (v8 >= 8)
    {
      if ((v8 & 2) != 0 && (v8 & 4) != 0)
      {
        v9 = a3;
        (*((v8 & 0xFFFFFFFFFFFFFFF8) + 8))(&v21, a3 + 24);
        (*((v23 & 0xFFFFFFFFFFFFFFF8) + 16))(v9 + 24);
        a3 = v9;
      }

      else
      {
        v21 = *(a3 + 24);
        v22 = *(a3 + 40);
      }

      *(a3 + 48) = 0;
    }

    v24 = *(a3 + 56);
    v25 = 0;
    if (!v7)
    {
      v11 = 0;
      *(v5 + 24) = 0;
      v12 = v5 + 24;
      *(v5 + 88) = -1;
      v13 = (v5 + 88);
      *v5 = 0;
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      goto LABEL_21;
    }

    if (v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    if (v6 >= 0x17)
    {
      if ((v6 | 7) == 0x17)
      {
        v14 = 25;
      }

      else
      {
        v14 = (v6 | 7) + 1;
      }

      v10 = operator new(v14);
      *(v5 + 8) = v6;
      *(v5 + 16) = v14 | 0x8000000000000000;
      *v5 = v10;
    }

    else
    {
      *(v5 + 23) = v6;
      v10 = v5;
      if (!v6)
      {
        goto LABEL_19;
      }
    }

    memmove(v10, v7, v6);
LABEL_19:
    *(v10 + v6) = 0;
    v11 = v25;
    *(v5 + 88) = -1;
    v15 = (v5 + 88);
    *(v15 - 64) = 0;
    v12 = (v15 - 16);
    if (v11 == -1)
    {
LABEL_23:
      v16 = *(a1 + 8) + 1;
      *(a1 + 8) = v16;
      return *a1 + 96 * v16 - 96;
    }

    v13 = v15;
LABEL_21:
    v18 = v12;
    (off_1F5AF5C68[v11])(&v18, &v19);
    *v13 = v11;
    if (v25 != -1)
    {
      (off_1F5AF5C00[v25])(&v18, &v19);
    }

    goto LABEL_23;
  }

  return llvm::SmallVectorTemplateBase<mlir::FallbackAsmResourceMap::OpaqueAsmResource,false>::growAndEmplaceBack<llvm::StringRef,mlir::AsmResourceBlob>(a1, a2, a3);
}

uint64_t llvm::SmallVectorImpl<mlir::FallbackAsmResourceMap::OpaqueAsmResource>::emplace_back<llvm::StringRef,BOOL &>(uint64_t a1, const void **a2, _BYTE *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  if (v4 < *(a1 + 12))
  {
    v5 = *a1 + 96 * v4;
    v7 = *a2;
    v6 = a2[1];
    v17[0] = *a3;
    v18 = 1;
    if (!v7)
    {
      *(v5 + 24) = 0;
      v9 = v5 + 24;
      *(v5 + 88) = -1;
      v10 = (v5 + 88);
      *v5 = 0;
      *(v5 + 8) = 0;
      v11 = 1;
      *(v5 + 16) = 0;
      goto LABEL_15;
    }

    if (v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    if (v6 >= 0x17)
    {
      if ((v6 | 7) == 0x17)
      {
        v12 = 25;
      }

      else
      {
        v12 = (v6 | 7) + 1;
      }

      v8 = operator new(v12);
      *(v5 + 8) = v6;
      *(v5 + 16) = v12 | 0x8000000000000000;
      *v5 = v8;
    }

    else
    {
      *(v5 + 23) = v6;
      v8 = v5;
      if (!v6)
      {
        goto LABEL_13;
      }
    }

    memmove(v8, v7, v6);
LABEL_13:
    *(v8 + v6) = 0;
    v11 = v18;
    *(v5 + 88) = -1;
    v13 = (v5 + 88);
    *(v13 - 64) = 0;
    v9 = (v13 - 16);
    if (v11 == -1)
    {
LABEL_17:
      v14 = *(a1 + 8) + 1;
      *(a1 + 8) = v14;
      return *a1 + 96 * v14 - 96;
    }

    v10 = v13;
LABEL_15:
    v16 = v9;
    (off_1F5AF5C68[v11])(&v16, v17);
    *v10 = v11;
    if (v18 != -1)
    {
      (off_1F5AF5C00[v18])(&v16, v17);
    }

    goto LABEL_17;
  }

  return llvm::SmallVectorTemplateBase<mlir::FallbackAsmResourceMap::OpaqueAsmResource,false>::growAndEmplaceBack<llvm::StringRef,BOOL &>(a1, a2, a3);
}

uint64_t llvm::SmallVectorImpl<mlir::FallbackAsmResourceMap::OpaqueAsmResource>::emplace_back<llvm::StringRef,std::string>(uint64_t a1, const void **a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  if (v4 < *(a1 + 12))
  {
    v5 = *a1 + 96 * v4;
    v7 = *a2;
    v6 = a2[1];
    v17 = *a3;
    v18 = *(a3 + 16);
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    v19 = 2;
    if (!v7)
    {
      *(v5 + 24) = 0;
      v9 = v5 + 24;
      *(v5 + 88) = -1;
      v10 = (v5 + 88);
      *v5 = 0;
      *(v5 + 8) = 0;
      v11 = 2;
      *(v5 + 16) = 0;
      goto LABEL_15;
    }

    if (v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    if (v6 >= 0x17)
    {
      if ((v6 | 7) == 0x17)
      {
        v12 = 25;
      }

      else
      {
        v12 = (v6 | 7) + 1;
      }

      v8 = operator new(v12);
      *(v5 + 8) = v6;
      *(v5 + 16) = v12 | 0x8000000000000000;
      *v5 = v8;
    }

    else
    {
      *(v5 + 23) = v6;
      v8 = v5;
      if (!v6)
      {
        goto LABEL_13;
      }
    }

    memmove(v8, v7, v6);
LABEL_13:
    *(v8 + v6) = 0;
    v11 = v19;
    *(v5 + 88) = -1;
    v13 = (v5 + 88);
    *(v13 - 64) = 0;
    v9 = (v13 - 16);
    if (v11 == -1)
    {
LABEL_17:
      v14 = *(a1 + 8) + 1;
      *(a1 + 8) = v14;
      return *a1 + 96 * v14 - 96;
    }

    v10 = v13;
LABEL_15:
    v16 = v9;
    (off_1F5AF5C68[v11])(&v16, &v17);
    *v10 = v11;
    if (v19 != -1)
    {
      (off_1F5AF5C00[v19])(&v16, &v17);
    }

    goto LABEL_17;
  }

  return llvm::SmallVectorTemplateBase<mlir::FallbackAsmResourceMap::OpaqueAsmResource,false>::growAndEmplaceBack<llvm::StringRef,std::string>(a1, a2, a3);
}

uint64_t mlir::FallbackAsmResourceMap::ResourceCollection::buildResources(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 40);
  if (v3)
  {
    v5 = 0;
    v6 = *(result + 32);
    v7 = 96 * v3;
    do
    {
      v11 = (v6 + v5);
      v12 = (v6 + v5 + 24);
      v13 = *(v6 + v5 + 88);
      if (v13 == 1)
      {
        v8 = *(v11 + 23);
        if (v8 >= 0)
        {
          v9 = v6 + v5;
        }

        else
        {
          v9 = *v11;
        }

        if (v8 >= 0)
        {
          v10 = *(v11 + 23);
        }

        else
        {
          v10 = v11[1];
        }

        result = (*(*a3 + 16))(a3, v9, v10, *v12);
      }

      else if (v13)
      {
        v17 = v6 + v5;
        v18 = *(v6 + v5 + 23);
        if (v18 >= 0)
        {
          v19 = v6 + v5;
        }

        else
        {
          v19 = *(v6 + v5);
        }

        if (v18 >= 0)
        {
          v20 = *(v6 + v5 + 23);
        }

        else
        {
          v20 = *(v6 + v5 + 8);
        }

        v21 = *(v17 + 47);
        if (v21 >= 0)
        {
          v22 = v6 + v5 + 24;
        }

        else
        {
          v22 = *v12;
        }

        if (v21 >= 0)
        {
          v23 = *(v17 + 47);
        }

        else
        {
          v23 = *(v17 + 32);
        }

        result = (*(*a3 + 24))(a3, v19, v20, v22, v23);
      }

      else
      {
        v14 = *(v6 + v5 + 23);
        if (v14 >= 0)
        {
          v15 = v6 + v5;
        }

        else
        {
          v15 = *(v6 + v5);
        }

        if (v14 >= 0)
        {
          v16 = *(v6 + v5 + 23);
        }

        else
        {
          v16 = *(v6 + v5 + 8);
        }

        result = (*(*a3 + 32))(a3, v15, v16, *v12, *(v6 + v5 + 32), *(v6 + v5 + 40));
      }

      v5 += 96;
    }

    while (v7 != v5);
  }

  return result;
}

llvm *mlir::AsmState::AsmState(llvm *a1, uint64_t a2, uint64_t a3, uint64_t a4, mlir::FallbackAsmResourceMap *a5)
{
  v31 = *MEMORY[0x1E69E9840];
  v20 = *a3;
  v21 = *(a3 + 16);
  v22 = *(a3 + 32);
  v9 = *(a3 + 40);
  *v19 = *(a3 + 41);
  *&v19[3] = *(a3 + 44);
  if ((v9 & 0x14) != 0)
  {
    v10 = *(a3 + 16);
    v26 = *a3;
    *v27 = v10;
    v28 = *(a3 + 32);
    v29 = v9;
    v30[0] = *(a3 + 41);
    *(v30 + 3) = *(a3 + 44);
  }

  else
  {
    threadid = llvm::get_threadid(a1);
    Context = mlir::Attribute::getContext((a2 + 24));
    DiagEngine = mlir::MLIRContext::getDiagEngine(Context);
    *&v26 = &threadid;
    v27[1] = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Diagnostic &>::CallbacksHolder<verifyOpAndAdjustFlags(mlir::Operation *,mlir::OpPrintingFlags)::$_0,verifyOpAndAdjustFlags(mlir::Operation *,mlir::OpPrintingFlags)::$_0,void>::Callbacks + 2;
    v23 = mlir::DiagnosticEngine::registerHandler(DiagEngine, &v26);
    v13 = v27[1];
    if (v27[1] >= 8)
    {
      if ((v27[1] & 4) != 0)
      {
        if ((v27[1] & 2) != 0)
        {
          v14 = &v26;
        }

        else
        {
          v14 = v26;
        }

        (*((v27[1] & 0xFFFFFFFFFFFFFFF8) + 16))(v14, v12);
      }

      if ((v13 & 2) == 0)
      {
        llvm::deallocate_buffer(v26, *(&v26 + 1));
      }
    }

    v15 = mlir::verify(a2, 1);
    v16 = v9 | 4;
    if (v15)
    {
      v16 = v9;
    }

    v26 = v20;
    *v27 = v21;
    v28 = v22;
    v29 = v16;
    v30[0] = *v19;
    *(v30 + 3) = *&v19[3];
    mlir::ScopedDiagnosticHandler::~ScopedDiagnosticHandler(&v23);
  }

  v17 = operator new(0x2D0uLL);
  *a1 = mlir::detail::AsmStateImpl::AsmStateImpl(v17, a2, &v26, a4);
  if (a5)
  {
    mlir::AsmState::attachFallbackResourcePrinter(a1, a5);
  }

  return a1;
}

void mlir::AsmState::attachFallbackResourcePrinter(mlir::AsmState *this, mlir::FallbackAsmResourceMap *a2)
{
  mlir::FallbackAsmResourceMap::getPrinters(a2, &v14);
  v3 = v14;
  v4 = v15;
  if (v14 == v15)
  {
    if (v14)
    {
      goto LABEL_16;
    }

    return;
  }

  v5 = v14;
  do
  {
    v6 = *v5;
    *v5 = 0;
    v13 = v6;
    v7 = *this;
    v8 = *(*this + 64);
    if (v8 < *(*this + 68))
    {
      v9 = *(v7 + 56);
      v13 = 0;
      *(v9 + 8 * v8) = v6;
      *(v7 + 64) = v8 + 1;
      v10 = v13;
      v13 = 0;
      if (!v10)
      {
        goto LABEL_3;
      }

LABEL_6:
      (*(*v10 + 8))(v10);
      goto LABEL_3;
    }

    llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::AsmResourcePrinter>,false>::growAndEmplaceBack<std::unique_ptr<mlir::AsmResourcePrinter>>(v7 + 56, &v13);
    v10 = v13;
    v13 = 0;
    if (v10)
    {
      goto LABEL_6;
    }

LABEL_3:
    ++v5;
  }

  while (v5 != v4);
  if (v3)
  {
    while (v4 != v3)
    {
      v12 = *--v4;
      v11 = v12;
      *v4 = 0;
      if (v12)
      {
        (*(*v11 + 8))(v11);
      }
    }

LABEL_16:
    operator delete(v3);
  }
}

mlir::AsmState *mlir::AsmState::AsmState(mlir::AsmState *a1, mlir::MLIRContext *a2, _OWORD *a3, uint64_t a4, mlir::FallbackAsmResourceMap *a5)
{
  v10 = operator new(0x2D0uLL);
  v11 = mlir::DialectInterfaceCollection<mlir::OpAsmDialectInterface>::DialectInterfaceCollection(v10, a2);
  *(v11 + 56) = v11 + 72;
  *(v11 + 64) = 0x600000000;
  *(v11 + 120) = 0u;
  *(v11 + 136) = 0;
  *(v11 + 144) = 0u;
  *(v11 + 184) = 0u;
  *(v11 + 160) = 0;
  *(v11 + 168) = v11 + 184;
  *(v11 + 176) = 0;
  *(v11 + 200) = v11 + 216;
  *(v11 + 208) = 0x400000000;
  *(v11 + 248) = v11 + 264;
  *(v11 + 256) = 0u;
  *(v11 + 272) = 1;
  *(v11 + 280) = 0u;
  *(v11 + 296) = 0;
  *(v11 + 320) = 0;
  *(v11 + 304) = 0u;
  *(v11 + 344) = 0;
  *(v11 + 328) = 0u;
  *(v11 + 368) = 0;
  *(v11 + 352) = 0u;
  *(v11 + 392) = 0;
  *(v11 + 376) = 0u;
  *(v11 + 416) = 0;
  *(v11 + 400) = 0u;
  *(v11 + 424) = 0u;
  *(v11 + 440) = 0;
  *(v11 + 448) = v11 + 464;
  *(v11 + 456) = 0x400000000;
  *(v11 + 496) = v11 + 512;
  *(v11 + 504) = 0u;
  *(v11 + 520) = 1;
  *(v11 + 528) = 0;
  *(v11 + 536) = 0;
  mlir::OpPrintingFlags::OpPrintingFlags((v11 + 544));
  *(v10 + 154) = 0;
  *(v10 + 76) = 0;
  *(v10 + 37) = 0u;
  v12 = a3[1];
  *(v10 + 39) = *a3;
  *(v10 + 40) = v12;
  *(v10 + 41) = a3[2];
  *(v10 + 84) = a4;
  *(v10 + 680) = 0u;
  *(v10 + 174) = 0;
  *(v10 + 88) = v10 + 720;
  *(v10 + 89) = 0;
  *a1 = v10;
  if (a5)
  {
    mlir::AsmState::attachFallbackResourcePrinter(a1, a5);
  }

  return a1;
}

void mlir::AsmState::~AsmState(mlir::detail::AsmStateImpl **this)
{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    mlir::detail::AsmStateImpl::~AsmStateImpl(v2);
  }
}

uint64_t mlir::AsmState::attachResourcePrinter(uint64_t result, uint64_t *a2)
{
  v2 = *result;
  v3 = *(*result + 64);
  if (v3 >= *(*result + 68))
  {
    return llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::AsmResourcePrinter>,false>::growAndEmplaceBack<std::unique_ptr<mlir::AsmResourcePrinter>>(v2 + 56, a2);
  }

  v4 = *(v2 + 56);
  v5 = *a2;
  *a2 = 0;
  *(v4 + 8 * v3) = v5;
  *(v2 + 64) = v3 + 1;
  return result;
}

llvm::raw_ostream *mlir::AsmPrinter::Impl::printLocation(mlir::AsmPrinter::Impl *this, LocationAttr a2, int a3)
{
  if ((*(this + 56) & 2) == 0)
  {
    v4 = *this;
    v5 = *(*this + 32);
    if (*(*this + 24) - v5 > 3uLL)
    {
      *v5 = 677605228;
      v4[4] += 4;
      if (!a3)
      {
LABEL_10:
        mlir::AsmPrinter::Impl::printLocationInternal(this, a2, 0, 1);
LABEL_11:
        result = *this;
        v11 = *(*this + 32);
        if (v11 >= *(*this + 24))
        {

          return llvm::raw_ostream::write(result, 41);
        }

        else
        {
          *(result + 4) = v11 + 1;
          *v11 = 41;
        }

        return result;
      }
    }

    else
    {
      var0 = a2.var0;
      llvm::raw_ostream::write(v4, "loc(", 4uLL);
      a2.var0 = var0;
      if (!a3)
      {
        goto LABEL_10;
      }
    }

    v9 = a2.var0;
    a2.var0 = v9;
    if (Alias)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  return mlir::AsmPrinter::Impl::printLocationInternal(this, a2, 1, 1);
}

llvm::raw_ostream *mlir::AsmPrinter::Impl::printLocationInternal(llvm::raw_ostream *this, LocationAttr a2, _BOOL4 a3, char a4)
{
  v6 = this;
  if ((a4 & 1) == 0)
  {
    if (this)
    {
      return this;
    }
  }

  v7 = *(*a2.var0 + 136);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::OpaqueLoc,void>::id && a2.var0 != 0)
  {
    var0 = a2.var0;
    v14.var0 = mlir::AffineBinaryOpExpr::getRHS(&var0);
    v15 = v6;
    return mlir::AsmPrinter::Impl::printLocationInternal(v15, v14, a3, 0);
  }

  if (v7 != &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id)
  {
    if (v7 != &mlir::detail::TypeIDResolver<mlir::FileLineColLoc,void>::id)
    {
      if (v7 == &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id && a2.var0 != 0)
      {
        var0 = a2.var0;
        Value = mlir::AffineMapAttr::getValue(&var0);
        AttrData = mlir::OpaqueAttr::getAttrData(&Value);
        v30 = *v6;
        v31 = *(*v6 + 32);
        if (*(*v6 + 24) == v31)
        {
          v45 = AttrData;
          v46 = v29;
          llvm::raw_ostream::write(*v6, "", 1uLL);
          llvm::printEscapedString(v45, v46, *v6);
          v32 = *v6;
          v33 = *(*v6 + 32);
          if (*(*v6 + 24) != v33)
          {
LABEL_37:
            *v33 = 34;
            ++*(v32 + 4);
            this = mlir::AffineBinaryOpExpr::getLHS(&var0);
            if (*(*this + 136) == &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id)
            {
              return this;
            }

            goto LABEL_54;
          }
        }

        else
        {
          *v31 = 34;
          ++*(v30 + 32);
          llvm::printEscapedString(AttrData, v29, *v6);
          v32 = *v6;
          v33 = *(*v6 + 32);
          if (*(*v6 + 24) != v33)
          {
            goto LABEL_37;
          }
        }

        llvm::raw_ostream::write(v32, "", 1uLL);
        this = mlir::AffineBinaryOpExpr::getLHS(&var0);
        if (*(*this + 136) == &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id)
        {
          return this;
        }

LABEL_54:
        v47 = this;
        v48 = *v6;
        v49 = *(*v6 + 32);
        if (v49 >= *(*v6 + 24))
        {
          llvm::raw_ostream::write(v48, 40);
        }

        else
        {
          *(v48 + 4) = v49 + 1;
          *v49 = 40;
        }

        v50.var0 = v47;
        mlir::AsmPrinter::Impl::printLocationInternal(v6, v50, a3, 0);
        this = *v6;
        v51 = *(*v6 + 32);
        if (v51 < *(*v6 + 24))
        {
          *(this + 4) = v51 + 1;
          v52 = 41;
LABEL_107:
          *v51 = v52;
          return this;
        }

        v53 = 41;
        return llvm::raw_ostream::write(this, v53);
      }

      if (v7 == &mlir::detail::TypeIDResolver<mlir::CallSiteLoc,void>::id && a2.var0 != 0)
      {
        var0 = a2.var0;
        LHS = mlir::AffineBinaryOpExpr::getLHS(&var0);
        v40 = mlir::AffineMapAttr::getValue(&var0);
        v41 = v40;
        if (a3)
        {
          v42.var0 = v40;
          mlir::AsmPrinter::Impl::printLocationInternal(v6, v42, a3, 0);
          if (*(*v41 + 136) == &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id)
          {
            v43 = *v6;
            if (*(*LHS + 136) == &mlir::detail::TypeIDResolver<mlir::FileLineColLoc,void>::id)
            {
              goto LABEL_85;
            }
          }

          else
          {
            v43 = *v6;
          }

          ++*(v6 + 16);
          v70 = *(v43 + 4);
          if (v70 >= *(v43 + 3))
          {
            v43 = llvm::raw_ostream::write(v43, 10);
          }

          else
          {
            *(v43 + 4) = v70 + 1;
            *v70 = 10;
          }

LABEL_85:
          v71 = *(v43 + 4);
          if (*(v43 + 3) - v71 > 3uLL)
          {
            *v71 = 544497952;
            *(v43 + 4) += 4;
          }

          else
          {
            llvm::raw_ostream::write(v43, " at ", 4uLL);
          }

          v15 = v6;
          v14.var0 = LHS;
          return mlir::AsmPrinter::Impl::printLocationInternal(v15, v14, a3, 0);
        }

        v54 = *v6;
        v55 = *(*v6 + 32);
        if ((*(*v6 + 24) - v55) > 8)
        {
          *(v55 + 8) = 40;
          *v55 = *"callsite(";
          *(v54 + 4) += 9;
        }

        else
        {
          llvm::raw_ostream::write(v54, "callsite(", 9uLL);
        }

        v65.var0 = v41;
        mlir::AsmPrinter::Impl::printLocationInternal(v6, v65, a3, 0);
        v66 = *v6;
        v67 = *(*v6 + 32);
        if (*(*v6 + 24) - v67 > 3uLL)
        {
          *v67 = 544497952;
          *(v66 + 4) += 4;
        }

        else
        {
          llvm::raw_ostream::write(v66, " at ", 4uLL);
        }

        v68.var0 = LHS;
        mlir::AsmPrinter::Impl::printLocationInternal(v6, v68, a3, 0);
        this = *v6;
        v69 = *(*v6 + 32);
        if (*(*v6 + 24) == v69)
        {
          return llvm::raw_ostream::write(this, ")", 1uLL);
        }

        *v69 = 41;
        v44 = *(this + 4) + 1;
LABEL_80:
        *(this + 4) = v44;
        return this;
      }

      if (v7 == &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id && a2.var0 != 0)
      {
        var0 = a2.var0;
        if (!a3)
        {
          v12 = *v6;
          v13 = *(*v6 + 32);
          if ((*(*v6 + 24) - v13) > 4)
          {
            *(v13 + 4) = 100;
            *v13 = 1702065510;
            *(v12 + 4) += 5;
          }

          else
          {
            llvm::raw_ostream::write(v12, "fused", 5uLL);
          }
        }

        RHS = mlir::AffineBinaryOpExpr::getRHS(&var0);
        if (RHS)
        {
          v73 = RHS;
          v74 = *v6;
          v75 = *(*v6 + 32);
          if (v75 >= *(*v6 + 24))
          {
            llvm::raw_ostream::write(v74, 60);
          }

          else
          {
            *(v74 + 4) = v75 + 1;
            *v75 = 60;
          }

          {
            mlir::AsmPrinter::Impl::printAttributeImpl(v6, v73, 0);
          }

          v76 = *v6;
          v77 = *(*v6 + 32);
          if (v77 >= *(*v6 + 24))
          {
            llvm::raw_ostream::write(v76, 62);
          }

          else
          {
            *(v76 + 4) = v77 + 1;
            *v77 = 62;
          }
        }

        v78 = *v6;
        v79 = *(*v6 + 32);
        if (v79 >= *(*v6 + 24))
        {
          llvm::raw_ostream::write(v78, 91);
        }

        else
        {
          *(v78 + 4) = v79 + 1;
          *v79 = 91;
        }

        v80 = mlir::ArrayAttr::getValue(&var0);
        if (v81)
        {
          v82 = v80;
          v83 = v81;
          v84.var0 = *v80;
          mlir::AsmPrinter::Impl::printLocationInternal(v6, v84, a3, 0);
          if (v83 != 1)
          {
            v85 = 8 * v83;
            v86 = v82 + 1;
            v87 = v85 - 8;
            do
            {
              v90 = *v6;
              v91 = *(*v6 + 32);
              if (*(*v6 + 24) - v91 > 1uLL)
              {
                *v91 = 8236;
                *(v90 + 4) += 2;
              }

              else
              {
                llvm::raw_ostream::write(v90, ", ", 2uLL);
              }

              v89 = *v86++;
              v88.var0 = v89;
              mlir::AsmPrinter::Impl::printLocationInternal(v6, v88, a3, 0);
              v87 -= 8;
            }

            while (v87);
          }
        }

        this = *v6;
        v51 = *(*v6 + 32);
        if (v51 < *(*v6 + 24))
        {
          *(this + 4) = v51 + 1;
          v52 = 93;
          goto LABEL_107;
        }

        v53 = 93;
        return llvm::raw_ostream::write(this, v53);
      }

      return this;
    }

    var0 = a2.var0;
    if (a3)
    {
      v20 = *v6;
      Value = mlir::AffineMapAttr::getValue(&var0);
      v22 = mlir::OpaqueAttr::getAttrData(&Value);
      v23 = v21;
      v24 = *(v20 + 4);
      if (v21 <= *(v20 + 3) - v24)
      {
        if (v21)
        {
          memcpy(v24, v22, v21);
          *(v20 + 4) += v23;
        }

        goto LABEL_67;
      }

      v25 = v20;
      v26 = v22;
      v27 = v23;
      goto LABEL_66;
    }

    Value = mlir::AffineMapAttr::getValue(&var0);
    v34 = mlir::OpaqueAttr::getAttrData(&Value);
    v36 = *v6;
    v37 = *(*v6 + 32);
    if (*(*v6 + 24) == v37)
    {
      v56 = v34;
      v57 = v35;
      llvm::raw_ostream::write(*v6, "", 1uLL);
      llvm::printEscapedString(v56, v57, *v6);
      v25 = *v6;
      v38 = *(*v6 + 32);
      if (*(*v6 + 24) != v38)
      {
        goto LABEL_46;
      }
    }

    else
    {
      *v37 = 34;
      ++*(v36 + 4);
      llvm::printEscapedString(v34, v35, *v6);
      v25 = *v6;
      v38 = *(*v6 + 32);
      if (*(*v6 + 24) != v38)
      {
LABEL_46:
        *v38 = 34;
        ++*(v25 + 4);
LABEL_67:
        v58 = *v6;
        v59 = *(v58 + 4);
        if (v59 >= *(v58 + 3))
        {
          v58 = llvm::raw_ostream::write(v58, 58);
        }

        else
        {
          *(v58 + 4) = v59 + 1;
          *v59 = 58;
        }

        Position = mlir::AffineDimExpr::getPosition(&var0);
        v61 = llvm::raw_ostream::operator<<(v58, Position);
        v62 = *(v61 + 4);
        if (v62 >= *(v61 + 3))
        {
          v63 = llvm::raw_ostream::write(v61, 58);
        }

        else
        {
          v63 = v61;
          *(v61 + 4) = v62 + 1;
          *v62 = 58;
        }

        Column = mlir::FileLineColLoc::getColumn(&var0);
        return llvm::raw_ostream::operator<<(v63, Column);
      }
    }

    v26 = "";
    v27 = 1;
LABEL_66:
    llvm::raw_ostream::write(v25, v26, v27);
    goto LABEL_67;
  }

  this = *v6;
  v16 = *(*v6 + 32);
  v17 = *(*v6 + 24) - v16;
  if (a3)
  {
    if (v17 > 8)
    {
      *(v16 + 8) = 93;
      *v16 = *"[unknown]";
      v44 = *(this + 4) + 9;
      goto LABEL_80;
    }

    v18 = "[unknown]";
    v19 = 9;
  }

  else
  {
    if (v17 > 6)
    {
      *(v16 + 3) = 1853321070;
      *v16 = 1852534389;
      v44 = *(this + 4) + 7;
      goto LABEL_80;
    }

    v18 = "unknown";
    v19 = 7;
  }

  return llvm::raw_ostream::write(this, v18, v19);
}

uint64_t anonymous namespace::AliasState::getAlias(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 4);
  if (!v4)
  {
    return 0;
  }

  v5 = *a1;
  v6 = (v4 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v7 = *(*a1 + 16 * v6);
  if (v7 != a2)
  {
    v20 = 1;
    while (v7 != -4096)
    {
      v21 = v6 + v20++;
      v6 = v21 & (v4 - 1);
      v7 = *(v5 + 16 * v6);
      if (v7 == a2)
      {
        goto LABEL_3;
      }
    }

    return 0;
  }

LABEL_3:
  if (v6 == v4)
  {
    return 0;
  }

  v9 = *(v5 + 16 * v6 + 8);
  if (v9 == *(a1 + 8))
  {
    return 0;
  }

  v10 = a1[3] + 32 * v9;
  if ((*(v10 + 27) & 0x40) != 0)
  {
    v11 = "!";
  }

  else
  {
    v11 = "#";
  }

  v12 = a3[4];
  if (a3[3] == v12)
  {
    v14 = llvm::raw_ostream::write(a3, v11, 1uLL);
    v13 = v14[4];
    v15 = *(v10 + 8);
    v16 = *(v10 + 16);
    if (v16 > v14[3] - v13)
    {
      goto LABEL_11;
    }

LABEL_13:
    if (v16)
    {
      v17 = v14;
      v18 = v16;
      memcpy(v13, v15, v16);
      v17[4] += v18;
    }

    goto LABEL_15;
  }

  *v12 = *v11;
  v13 = (a3[4] + 1);
  a3[4] = v13;
  v14 = a3;
  v15 = *(v10 + 8);
  v16 = *(v10 + 16);
  if (v16 <= a3[3] - v13)
  {
    goto LABEL_13;
  }

LABEL_11:
  llvm::raw_ostream::write(v14, v15, v16);
LABEL_15:
  v19 = *(v10 + 24);
  if ((v19 & 0x3FFFFFFF) != 0)
  {
    llvm::raw_ostream::operator<<(a3, v19 & 0x3FFFFFFF);
  }

  return 1;
}

__n128 mlir::AsmPrinter::Impl::printResourceHandle(uint64_t a1, __n128 *a2)
{
  v2 = a2;
  v4 = mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>(a2[1].n128_i64[0]);
  v5 = *a1;
  (*(*v4 + 40))(__p);
  if ((v20 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v20 & 0x80u) == 0)
  {
    v7 = v20;
  }

  else
  {
    v7 = __p[1];
  }

  llvm::raw_ostream::write(v5, v6, v7);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = *(a1 + 8);
  v17 = v2[1].n128_u64[0];
  v9 = llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>,llvm::DenseMapInfo<mlir::Dialect *,void>,llvm::detail::DenseMapPair<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>>>,mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>,llvm::DenseMapInfo<mlir::Dialect *,void>,llvm::detail::DenseMapPair<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>>>::operator[](v8 + 120, &v17);
  llvm::DenseMapBase<llvm::DenseMap<mlir::AsmDialectResourceHandle,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseSetPair<mlir::AsmDialectResourceHandle>>,mlir::AsmDialectResourceHandle,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseSetPair<mlir::AsmDialectResourceHandle>>::try_emplace<llvm::detail::DenseSetEmpty&>(v9, v2, __p);
  if (v19 == 1)
  {
    v11 = (v9 + 3);
    v12 = v9[3];
    v13 = *(v9 + 8);
    if (v13 >= *(v9 + 9))
    {
      if (v12 <= v2 && v12 + 24 * v13 > v2)
      {
        v16 = v2 - v12;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v11, (v9 + 5), v13 + 1, 24);
        v12 = v9[3];
        v2 = &v16[v12];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v11, (v9 + 5), v13 + 1, 24);
        v12 = v9[3];
      }
    }

    v14 = (v12 + 24 * *(v9 + 8));
    result = *v2;
    v14[1].n128_u64[0] = v2[1].n128_u64[0];
    *v14 = result;
    ++*(v9 + 8);
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>,llvm::DenseMapInfo<mlir::Dialect *,void>,llvm::detail::DenseMapPair<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>>>,mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>,llvm::DenseMapInfo<mlir::Dialect *,void>,llvm::detail::DenseMapPair<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v5 = (*a1 + 48 * v4);
    v6 = *v5;
    if (*a2 == *v5)
    {
      return v5 + 1;
    }

    v9 = 0;
    v10 = 1;
    while (v6 != -4096)
    {
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = v6 == -8192;
      }

      if (v11)
      {
        v9 = v5;
      }

      v12 = v4 + v10++;
      v4 = v12 & v3;
      v5 = (*a1 + 48 * (v12 & v3));
      v6 = *v5;
      if (*a2 == *v5)
      {
        return v5 + 1;
      }
    }

    if (v9)
    {
      v5 = v9;
    }
  }

  else
  {
    v5 = 0;
  }

  v15 = v5;
  v8 = *(a1 + 8);
  if (4 * v8 + 4 >= 3 * v2)
  {
    v13 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v8 - *(a1 + 12) <= v2 >> 3)
  {
    v13 = a2;
LABEL_24:
    v14 = a1;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>,llvm::DenseMapInfo<mlir::Dialect *,void>,llvm::detail::DenseMapPair<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>>>,mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>,llvm::DenseMapInfo<mlir::Dialect *,void>,llvm::detail::DenseMapPair<mlir::Dialect *,llvm::SetVector<mlir::AsmDialectResourceHandle,llvm::SmallVector<mlir::AsmDialectResourceHandle,0u>,llvm::DenseSet<mlir::AsmDialectResourceHandle,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>>,0u>>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>,void *,mlir::BytecodeReader::Impl::UseListOrderStorage,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::BytecodeReader::Impl::UseListOrderStorage>>::LookupBucketFor<void *>(v14, v13, &v15);
    a1 = v14;
    a2 = v13;
    v5 = v15;
    ++*(v14 + 8);
    if (*v5 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v8 + 1;
  if (*v5 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v5 = *a2;
  v5[1] = 0;
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v5 + 6;
  v5[5] = 0;
  return v5 + 1;
}

uint64_t mlir::AsmPrinter::Impl::printAlias(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 160);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v2 + 144);
  v5 = (v3 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v6 = *(v4 + 16 * v5);
  if (v6 != a2)
  {
    v20 = 1;
    while (v6 != -4096)
    {
      v21 = v5 + v20++;
      v5 = v21 & (v3 - 1);
      v6 = *(v4 + 16 * v5);
      if (v6 == a2)
      {
        goto LABEL_3;
      }
    }

    return 0;
  }

LABEL_3:
  if (v5 == v3)
  {
    return 0;
  }

  v7 = *(v4 + 16 * v5 + 8);
  if (v7 == *(v2 + 176))
  {
    return 0;
  }

  v8 = *(v2 + 168) + 32 * v7;
  if (*(v8 + 28) != 1)
  {
    return 0;
  }

  v9 = *a1;
  if ((*(v8 + 27) & 0x40) != 0)
  {
    v10 = "!";
  }

  else
  {
    v10 = "#";
  }

  v11 = v9[4];
  if (v9[3] == v11)
  {
    v13 = llvm::raw_ostream::write(*a1, v10, 1uLL);
    v12 = v13[4];
    v14 = *(v8 + 8);
    v15 = *(v8 + 16);
    if (v15 > v13[3] - v12)
    {
      goto LABEL_12;
    }

LABEL_15:
    if (v15)
    {
      v17 = v13;
      v18 = v15;
      memcpy(v12, v14, v15);
      v17[4] += v18;
    }

    goto LABEL_17;
  }

  *v11 = *v10;
  v12 = (v9[4] + 1);
  v9[4] = v12;
  v13 = v9;
  v14 = *(v8 + 8);
  v15 = *(v8 + 16);
  if (v15 <= v9[3] - v12)
  {
    goto LABEL_15;
  }

LABEL_12:
  llvm::raw_ostream::write(v13, v14, v15);
LABEL_17:
  v19 = *(v8 + 24);
  if ((v19 & 0x3FFFFFFF) != 0)
  {
    llvm::raw_ostream::operator<<(v9, v19 & 0x3FFFFFFF);
  }

  return 1;
}