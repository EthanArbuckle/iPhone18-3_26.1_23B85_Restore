BOOL llvm::function_ref<BOOL ()(mlir::RegisteredOperationName)>::callback_fn<mlir::FrozenRewritePatternSet::FrozenRewritePatternSet(mlir::RewritePatternSet &&,llvm::ArrayRef<std::basic_string<char,llvm::ArrayRef::char_traits<char>,llvm::ArrayRef::allocator<char>>>,std::basic_string<char,llvm::ArrayRef::char_traits<char>,llvm::ArrayRef::allocator<char>>)::$_3>(unint64_t **a1, uint64_t a2)
{
  v2 = **a1;
  v3 = *(a2 + 40);
  if (!v3)
  {
    return 0;
  }

  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  do
  {
    v6 = v5 >> 1;
    v7 = &v4[2 * (v5 >> 1)];
    v9 = *v7;
    v8 = v7 + 2;
    v5 += ~(v5 >> 1);
    if (v9 < v2)
    {
      v4 = v8;
    }

    else
    {
      v5 = v6;
    }
  }

  while (v5);
  if (v4 == (*(a2 + 32) + 16 * v3))
  {
    return 0;
  }

  if (*v4 == v2)
  {
    return v4[1] != 0;
  }

  return 0;
}

void mlir::detail::PDLByteCode::~PDLByteCode(mlir::detail::PDLByteCode *this)
{
  v2 = *(this + 470);
  if (v2)
  {
    v3 = *(this + 471);
    v4 = *(this + 470);
    if (v3 != v2)
    {
      v5 = v3 - 32;
      do
      {
        v6 = *(v3 - 8);
        v3 -= 32;
        if (v3 == v6)
        {
          (*(*v6 + 32))(v6);
        }

        else if (v6)
        {
          (*(*v6 + 40))(v6);
        }

        v5 -= 32;
      }

      while (v3 != v2);
      v4 = *(this + 470);
    }

    *(this + 471) = v2;
    operator delete(v4);
  }

  v7 = *(this + 467);
  if (v7)
  {
    v8 = *(this + 468);
    v9 = *(this + 467);
    if (v8 != v7)
    {
      v10 = v8 - 32;
      do
      {
        v11 = *(v8 - 8);
        v8 -= 32;
        if (v8 == v11)
        {
          (*(*v11 + 32))(v11);
        }

        else if (v11)
        {
          (*(*v11 + 40))(v11);
        }

        v10 -= 32;
      }

      while (v8 != v7);
      v9 = *(this + 467);
    }

    *(this + 468) = v7;
    operator delete(v9);
  }

  v12 = *(this + 49);
  v13 = *(this + 100);
  if (v13)
  {
    v14 = &v12[104 * v13 - 80];
    v15 = -104 * v13;
    do
    {
      v16 = *(v14 + 48);
      if ((v14 + 64) != v16)
      {
        free(v16);
      }

      if (v14 + 16 != *v14)
      {
        free(*v14);
      }

      v14 -= 104;
      v15 += 104;
    }

    while (v15);
    v12 = *(this + 49);
  }

  if (v12 != this + 408)
  {
    free(v12);
  }

  v17 = *(this + 30);
  if (v17 != this + 264)
  {
    free(v17);
  }

  v18 = *(this + 11);
  if (v18 != this + 112)
  {
    free(v18);
  }

  v19 = *(this + 8);
  if (v19)
  {
    *(this + 9) = v19;
    operator delete(v19);
  }

  v20 = *this;
  v21 = *(this + 2);
  if (v21)
  {
    v22 = &v20[8 * v21];
    do
    {
      v24 = *(v22 - 1);
      v22 -= 8;
      v23 = v24;
      *v22 = 0;
      if (v24)
      {
        v25 = *v23;
        v26 = v23[2];
        if (v26)
        {
          v27 = 8 * v26;
          v28 = (v25 - 2);
          do
          {
            v29 = *&v28[v27];
            *&v28[v27] = 0;
            if (v29)
            {
              (*(*v29 + 8))(v29);
            }

            v27 -= 8;
          }

          while (v27);
          v25 = *v23;
        }

        if (v25 != v23 + 4)
        {
          free(v25);
        }

        operator delete(v23);
      }
    }

    while (v22 != v20);
    v20 = *this;
  }

  if (v20 != this + 16)
  {
    free(v20);
  }
}

mlir::PatternApplicator *mlir::PatternApplicator::PatternApplicator(mlir::PatternApplicator *this, const mlir::FrozenRewritePatternSet *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = a2;
  *(this + 6) = 0;
  *(this + 4) = this + 48;
  *(this + 5) = 0x100000000;
  *(this + 7) = 0;
  v3 = *(*a2 + 72);
  if (v3)
  {
    v4 = operator new(0xC0uLL);
    *&v4->__begin_ = 0u;
    *&v4->__end_cap_.__value_ = 0u;
    *&v4[1].__end_ = 0u;
    *&v4[2].__begin_ = 0u;
    *&v4[2].__end_cap_.__value_ = 0u;
    *&v4[3].__end_ = 0u;
    *&v4[4].__begin_ = 0u;
    *&v4[4].__end_cap_.__value_ = 0u;
    *&v4[5].__end_ = 0u;
    *&v4[6].__begin_ = 0u;
    *&v4[6].__end_cap_.__value_ = 0u;
    *&v4[7].__end_ = 0u;
    *(this + 7) = v4;
    mlir::detail::PDLByteCode::initializeMutableState(v3, v4);
  }

  return this;
}

void mlir::PatternApplicator::~PatternApplicator(mlir::PatternApplicator *this)
{
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    mlir::detail::PDLByteCodeMutableState::~PDLByteCodeMutableState(v2);
    operator delete(v3);
  }

  v4 = *(this + 4);
  if (v4 != this + 48)
  {
    free(v4);
  }

  v5 = *(this + 6);
  v6 = *(this + 1);
  if (v5)
  {
    v7 = v6 + 24;
    v8 = 40 * v5;
    do
    {
      if ((*(v7 - 3) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v9 = *(v7 - 2);
        if (v7 != v9)
        {
          free(v9);
        }
      }

      v7 += 40;
      v8 -= 40;
    }

    while (v8);
    v6 = *(this + 1);
    v10 = 40 * *(this + 6);
  }

  else
  {
    v10 = 0;
  }

  llvm::deallocate_buffer(v6, v10);
}

void mlir::PatternApplicator::applyCostModel(uint64_t **a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v74 = *MEMORY[0x1E69E9840];
  v67[0] = a2;
  v67[1] = a3;
  v4 = *(**a1 + 72);
  if (v4)
  {
    v5 = *(v4 + 400);
    if (v5)
    {
      v8 = 0;
      v9 = *(v4 + 392);
      v10 = 104 * v5;
      do
      {
        v11 = a1[7];
        v12 = a2(a3, v9);
        mlir::detail::PDLByteCodeMutableState::updatePatternBenefit(v11, v8++, v12);
        v9 += 104;
        v10 -= 104;
      }

      while (v10);
    }
  }

  v13 = *(a1 + 4);
  if (!v13 && !*(a1 + 5))
  {
LABEL_10:
    v15 = **a1;
    if (!*(v15 + 8))
    {
      goto LABEL_89;
    }

    goto LABEL_21;
  }

  v14 = *(a1 + 6);
  if (v14 > 4 * v13 && v14 >= 0x41)
  {
    llvm::DenseMap<mlir::Type,llvm::SmallVector<mlir::Type,2u>,llvm::DenseMapInfo<mlir::Type,void>,llvm::detail::DenseMapPair<mlir::Type,llvm::SmallVector<mlir::Type,2u>>>::shrink_and_clear((a1 + 1));
    goto LABEL_10;
  }

  if (v14)
  {
    v16 = (a1[1] + 3);
    for (i = 40 * v14; i; i -= 40)
    {
      v18 = *(v16 - 24);
      if (v18 != -8192)
      {
        if (v18 == -4096)
        {
          goto LABEL_15;
        }

        v19 = *(v16 - 16);
        if (v16 != v19)
        {
          free(v19);
        }
      }

      *(v16 - 24) = -4096;
LABEL_15:
      v16 += 40;
    }
  }

  a1[2] = 0;
  v15 = **a1;
  if (!*(v15 + 8))
  {
    goto LABEL_89;
  }

LABEL_21:
  v20 = *(v15 + 16);
  if (v20)
  {
    v21 = 32 * v20;
    v22 = *v15;
    while ((*v22 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      v22 += 4;
      v21 -= 32;
      if (!v21)
      {
        goto LABEL_89;
      }
    }
  }

  else
  {
    v22 = *v15;
  }

  v23 = *v15 + 32 * v20;
  if (v22 == v23)
  {
    goto LABEL_89;
  }

  while (2)
  {
    v25 = v22[1];
    v24 = v22[2];
    while (v25 != v24)
    {
      v30 = *v25;
      if (*(*v25 + 20) == -1)
      {
        goto LABEL_35;
      }

      v31 = a1[1];
      v32 = *(a1 + 6);
      if (!v32)
      {
        goto LABEL_56;
      }

      v26 = ((*v22 >> 4) ^ (*v22 >> 9)) & (v32 - 1);
      v27 = &v31[5 * v26];
      v28 = *v27;
      if (*v22 != *v27)
      {
        v33 = 0;
        v34 = 1;
        while (v28 != -4096)
        {
          if (v33)
          {
            v35 = 0;
          }

          else
          {
            v35 = v28 == -8192;
          }

          if (v35)
          {
            v33 = v27;
          }

          v36 = v26 + v34++;
          v26 = v36 & (v32 - 1);
          v27 = &v31[5 * v26];
          v28 = *v27;
          if (*v22 == *v27)
          {
            goto LABEL_32;
          }
        }

        if (v33)
        {
          v27 = v33;
        }

        v37 = *(a1 + 4);
        if (4 * v37 + 4 >= (3 * v32))
        {
LABEL_56:
          v38 = 2 * v32;
          goto LABEL_58;
        }

        if (v32 + ~v37 - *(a1 + 5) <= v32 >> 3)
        {
          v38 = *(a1 + 6);
LABEL_58:
          v39 = (v38 - 1) | ((v38 - 1) >> 1);
          v40 = v39 | (v39 >> 2) | ((v39 | (v39 >> 2)) >> 4);
          v41 = ((v40 | (v40 >> 8)) >> 16) | v40 | (v40 >> 8);
          if ((v41 + 1) > 0x40)
          {
            v42 = v41 + 1;
          }

          else
          {
            v42 = 64;
          }

          *(a1 + 6) = v42;
          buffer = llvm::allocate_buffer(40 * v42, 8uLL);
          a1[1] = buffer;
          if (v31)
          {
            llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallVector<mlir::RewritePattern const*,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::RewritePattern const*,2u>>>,mlir::OperationName,llvm::SmallVector<mlir::RewritePattern const*,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::RewritePattern const*,2u>>>::moveFromOldBuckets((a1 + 1), v31, &v31[5 * v32]);
            llvm::deallocate_buffer(v31, (40 * v32));
          }

          a1[2] = 0;
          v44 = *(a1 + 6);
          if (v44)
          {
            v45 = 40 * v44 - 40;
            v46 = buffer;
            if (v45 < 0x28)
            {
              goto LABEL_113;
            }

            v47 = v45 / 0x28 + 1;
            v46 = &buffer[5 * (v47 & 0xFFFFFFFFFFFFFFELL)];
            v48 = buffer;
            v49 = v47 & 0xFFFFFFFFFFFFFFELL;
            do
            {
              *v48 = -4096;
              v48[5] = -4096;
              v48 += 10;
              v49 -= 2;
            }

            while (v49);
            if (v47 != (v47 & 0xFFFFFFFFFFFFFFELL))
            {
LABEL_113:
              do
              {
                *v46 = -4096;
                v46 += 5;
              }

              while (v46 != &buffer[5 * v44]);
            }

            v50 = v44 - 1;
            v51 = ((*v22 >> 4) ^ (*v22 >> 9)) & v50;
            v27 = &buffer[5 * v51];
            v52 = *v27;
            if (*v22 != *v27)
            {
              v53 = 0;
              v54 = 1;
              while (v52 != -4096)
              {
                if (v53)
                {
                  v55 = 0;
                }

                else
                {
                  v55 = v52 == -8192;
                }

                if (v55)
                {
                  v53 = v27;
                }

                v56 = v51 + v54++;
                v51 = v56 & v50;
                v27 = &buffer[5 * v51];
                v52 = *v27;
                if (*v22 == *v27)
                {
                  goto LABEL_80;
                }
              }

              if (v53)
              {
                v27 = v53;
              }
            }
          }

          else
          {
            v27 = 0;
          }

LABEL_80:
          ++*(a1 + 4);
          if (*v27 != -4096)
          {
LABEL_42:
            --*(a1 + 5);
          }
        }

        else
        {
          *(a1 + 4) = v37 + 1;
          if (*v27 != -4096)
          {
            goto LABEL_42;
          }
        }

        *v27 = *v22;
        v27[1] = (v27 + 3);
        v27[2] = 0x200000000;
      }

LABEL_32:
      v29 = *(v27 + 4);
      if (v29 >= *(v27 + 5))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod((v27 + 1), (v27 + 3), v29 + 1, 8);
        v29 = *(v27 + 4);
      }

      *(v27[1] + 8 * v29) = v30;
      ++*(v27 + 4);
LABEL_35:
      ++v25;
    }

    do
    {
      v22 += 4;
    }

    while (v22 != v23 && (*v22 | 0x1000) == 0xFFFFFFFFFFFFF000);
    if (v22 != v23)
    {
      continue;
    }

    break;
  }

  v15 = **a1;
LABEL_89:
  *(a1 + 10) = 0;
  v57 = *(v15 + 48);
  v58 = *(v15 + 56);
  if (v57 != v58)
  {
    v59 = 0;
    do
    {
      v60 = *v57;
      if (*(*v57 + 20) != -1)
      {
        if (v59 >= *(a1 + 11))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod((a1 + 4), (a1 + 6), v59 + 1, 8);
          v59 = *(a1 + 10);
        }

        a1[4][v59] = v60;
        v59 = *(a1 + 10) + 1;
        *(a1 + 10) = v59;
      }

      ++v57;
    }

    while (v57 != v58);
  }

  v68 = 1;
  v69 = -4096;
  v71 = -4096;
  v72 = -4096;
  v73 = -4096;
  v66 = &v68;
  v65[0] = v67;
  v65[1] = &v68;
  v65[2] = &v66;
  if (*(a1 + 4))
  {
    v61 = *(a1 + 6);
    if (v61)
    {
      v62 = 40 * v61;
      v63 = a1[1];
      while ((*v63 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v63 += 5;
        v62 -= 40;
        if (!v62)
        {
          goto LABEL_101;
        }
      }
    }

    else
    {
      v63 = a1[1];
    }

    v64 = &a1[1][5 * v61];
    while (v63 != v64)
    {
      mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_1::operator()(v65, (v63 + 1));
      do
      {
        v63 += 5;
      }

      while (v63 != v64 && (*v63 | 0x1000) == 0xFFFFFFFFFFFFF000);
    }
  }

LABEL_101:
  mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_1::operator()(v65, (a1 + 4));
  if ((v68 & 1) == 0)
  {
    llvm::deallocate_buffer(v69, (16 * v70));
  }
}

void mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_1::operator()(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == 1)
  {
    if ((**a1)(*(*a1 + 8), **a2 + 8) == 0xFFFF)
    {
      *(a2 + 8) = 0;
    }

    return;
  }

  v4 = *(a1 + 8);
  v5 = *v4;
  if (*v4 > 1u || *(v4 + 4))
  {
    if (v5)
    {
      v23 = v4 + 8;
      v24 = (v4 + 72);
      v25 = 48;
    }

    else
    {
      v6 = *(v4 + 16);
      if (v6 > 2 * v5 && v6 >= 0x41)
      {
        llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::shrink_and_clear(v4);
        goto LABEL_10;
      }

      if (!v6)
      {
LABEL_31:
        *v4 = v6;
        *(v4 + 4) = 0;
        v7 = *a2;
        v8 = *(a2 + 8);
        if (v8)
        {
          goto LABEL_11;
        }

LABEL_32:
        v15 = 0;
        v21 = 0;
        v35[0] = **(a1 + 16);
        v14 = v7;
LABEL_33:
        std::__stable_sort<std::_ClassicAlgPolicy,mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_0 &,mlir::RewritePattern const**>(v14, v7, v35, v15, 0, v21);
        i = *(a2 + 8);
        if (!i)
        {
          return;
        }

        goto LABEL_34;
      }

      v23 = *(v4 + 8);
      v24 = (v23 + 16 * v6);
      v25 = v24 - v23 - 16;
      if (v25 <= 0xF)
      {
        v26 = *(v4 + 8);
        do
        {
LABEL_29:
          *v26 = -4096;
          v26 += 2;
        }

        while (v26 != v24);
LABEL_30:
        LODWORD(v6) = *v4 & 1;
        goto LABEL_31;
      }
    }

    v27 = (v25 >> 4) + 1;
    v26 = (v23 + 16 * (v27 & 0x1FFFFFFFFFFFFFFELL));
    v28 = (v23 + 16);
    v29 = v27 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v28 - 2) = -4096;
      *v28 = -4096;
      v28 += 4;
      v29 -= 2;
    }

    while (v29);
    if (v27 == (v27 & 0x1FFFFFFFFFFFFFFELL))
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_10:
  v7 = *a2;
  v8 = *(a2 + 8);
  if (!v8)
  {
    goto LABEL_32;
  }

LABEL_11:
  v9 = 8 * v8;
  do
  {
    v10 = *v7;
    v7 += 8;
    v11 = v10 + 8;
    if (v10)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v37 = v12;
    v13 = *(a1 + 8);
    v36 = (**a1)(*(*a1 + 8));
    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::try_emplace<mlir::PatternBenefit>(v13, &v37, &v36, v35);
    v9 -= 8;
  }

  while (v9);
  v14 = *a2;
  v15 = *(a2 + 8);
  v7 = (*a2 + 8 * v15);
  v35[0] = **(a1 + 16);
  if (v15 < 0x81)
  {
    v21 = 0;
    goto LABEL_33;
  }

  v16 = v14;
  v17 = MEMORY[0x1E69E5398];
  v18 = v15;
  v19 = v15;
  while (1)
  {
    v20 = operator new(8 * v19, v17);
    if (v20)
    {
      break;
    }

    v21 = v19 >> 1;
    v22 = v19 > 1;
    v19 >>= 1;
    if (!v22)
    {
      v15 = v18;
      v14 = v16;
      goto LABEL_33;
    }
  }

  v34 = v20;
  std::__stable_sort<std::_ClassicAlgPolicy,mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_0 &,mlir::RewritePattern const**>(v16, v7, v35, v18, v20, v19);
  operator delete(v34);
  for (i = *(a2 + 8); i; *(a2 + 8) = i)
  {
LABEL_34:
    v31 = *(a1 + 8);
    v32 = *(*a2 + 8 * i - 8);
    if (v32)
    {
      v33 = v32 + 8;
    }

    else
    {
      v33 = 0;
    }

    v35[0] = v33;
    if (*llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](v31, v35) != -1)
    {
      break;
    }

    i = *(a2 + 8) - 1;
  }
}

uint64_t **mlir::PatternApplicator::walkAllPatterns(uint64_t **result, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v5 = result;
  v6 = **result;
  if (*(v6 + 8))
  {
    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = 32 * v7;
      v9 = *v6;
      while ((*v9 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v9 += 4;
        v8 -= 32;
        if (!v8)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      v9 = *v6;
    }

    v10 = *v6 + 32 * v7;
    if (v9 != v10)
    {
      do
      {
        v11 = v9[1];
        for (i = v9[2]; v11 != i; result = a2(a3, v13 + 8))
        {
          v13 = *v11++;
        }

        do
        {
          v9 += 4;
        }

        while (v9 != v10 && (*v9 | 0x1000) == 0xFFFFFFFFFFFFF000);
      }

      while (v9 != v10);
      v6 = **v5;
    }
  }

LABEL_17:
  v14 = *(v6 + 48);
  v15 = *(v6 + 56);
  if (v14 != v15)
  {
    do
    {
      v16 = *v14++;
      result = a2(a3, v16 + 8);
    }

    while (v14 != v15);
    v6 = **v5;
  }

  v17 = *(v6 + 72);
  if (v17)
  {
    v18 = *(v17 + 400);
    if (v18)
    {
      v19 = *(v17 + 392);
      v20 = 104 * v18;
      do
      {
        result = a2(a3, v19);
        v19 += 104;
        v20 -= 104;
      }

      while (v20);
    }
  }

  return result;
}

uint64_t mlir::PatternApplicator::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v60[60] = *MEMORY[0x1E69E9840];
  v55[0] = a6;
  v55[1] = a7;
  v54[0] = a9;
  v54[1] = a10;
  v53 = a2;
  v58 = v60;
  v59 = 0x400000000;
  v14 = *(**a1 + 72);
  v52 = v14;
  if (v14)
  {
    mlir::detail::PDLByteCode::match(v14, a2, a3, &v58, *(a1 + 56));
    a2 = v53;
  }

  v15 = *(a1 + 8);
  v16 = *(a1 + 24);
  if (!v16)
  {
LABEL_9:
    v19 = (v15 + 40 * v16);
    goto LABEL_10;
  }

  v17 = *(a2 + 48);
  v18 = ((v17 >> 4) ^ (v17 >> 9)) & (v16 - 1);
  v19 = (v15 + 40 * v18);
  v20 = *v19;
  if (v17 != *v19)
  {
    v21 = 1;
    while (v20 != -4096)
    {
      v22 = v18 + v21++;
      v18 = v22 & (v16 - 1);
      v19 = (v15 + 40 * v18);
      v20 = *v19;
      if (v17 == *v19)
      {
        goto LABEL_10;
      }
    }

    goto LABEL_9;
  }

LABEL_10:
  if (v19 == (v15 + 40 * v16))
  {
    v24 = 0;
    v23 = 0;
  }

  else
  {
    v23 = v19[1];
    v24 = *(v19 + 4);
  }

  v25 = 0;
  v51 = 0;
  v26 = *(a1 + 40);
  v50 = 0;
  v27 = v59;
  v56 = 0;
  while (1)
  {
    if (v25 >= v24)
    {
      v30 = v51;
      if (v51 < v26)
      {
        v31 = *(a1 + 32);
LABEL_26:
        v32 = *(v31 + 8 * v30);
        goto LABEL_27;
      }

      v34 = v50;
      if (v50 >= v27)
      {
        goto LABEL_46;
      }

      v35 = v58;
LABEL_38:
      v48 = &v35[120 * v34];
      v29 = *(v48 + 13);
      v49 = v29;
      v33 = &v50;
      goto LABEL_39;
    }

    v28 = *(v23 + 8 * v25);
    if (v28)
    {
      v29 = v28 + 8;
    }

    else
    {
      v29 = 0;
    }

    v49 = v29;
    v30 = v51;
    if (v51 >= v26)
    {
      v33 = &v51 + 1;
      v48 = 0;
      v34 = v50;
      if (v50 >= v27)
      {
        goto LABEL_39;
      }

LABEL_33:
      v35 = v58;
      if (v29 && *(v29 + 12) >= *(v58 + 60 * v34 + 56))
      {
        goto LABEL_40;
      }

      goto LABEL_38;
    }

    v31 = *(a1 + 32);
    if (!v28)
    {
      goto LABEL_26;
    }

    v32 = *(v31 + 8 * v51);
    if (*(v29 + 12) >= *(v32 + 20))
    {
      v33 = &v51 + 1;
      v29 = v28 + 8;
      v48 = 0;
      v34 = v50;
      if (v50 < v27)
      {
        goto LABEL_33;
      }

      goto LABEL_39;
    }

LABEL_27:
    if (v32)
    {
      v29 = v32 + 8;
    }

    else
    {
      v29 = 0;
    }

    v48 = 0;
    v49 = v29;
    v33 = &v51;
    v34 = v50;
    if (v50 < v27)
    {
      goto LABEL_33;
    }

LABEL_39:
    if (!v29)
    {
      goto LABEL_46;
    }

LABEL_40:
    ++*v33;
    if (a4 && !a4(a5))
    {
      goto LABEL_14;
    }

    v47 = 0;
    Context = mlir::Attribute::getContext((v53 + 24));
    v46[0] = a3;
    v46[1] = &v53;
    v46[2] = &v48;
    v46[3] = &v56;
    v46[4] = &v52;
    v46[5] = a1;
    v46[6] = &v49;
    v46[7] = v54;
    v46[8] = &v47;
    v46[9] = v55;
    v57 = v53 & 0xFFFFFFFFFFFFFFF9;
    v37 = v49;
    if (mlir::MLIRContext::hasActionHandler(Context))
    {
      break;
    }

    llvm::function_ref<void ()(void)>::callback_fn<mlir::PatternApplicator::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &,llvm::function_ref<BOOL ()(mlir::Pattern const&)>,llvm::function_ref<void ()(mlir::Pattern const&)>,llvm::function_ref<llvm::LogicalResult ()(mlir::Pattern const&)>)::$_0>(v46, v38);
    if (v47)
    {
      goto LABEL_46;
    }

LABEL_14:
    v25 = HIDWORD(v51);
  }

  mlir::MLIRContext::executeActionInternal<mlir::ApplyPatternAction,mlir::Pattern const&>(Context, llvm::function_ref<void ()(void)>::callback_fn<mlir::PatternApplicator::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &,llvm::function_ref<BOOL ()(mlir::Pattern const&)>,llvm::function_ref<void ()(mlir::Pattern const&)>,llvm::function_ref<llvm::LogicalResult ()(mlir::Pattern const&)>)::$_0>, v46, &v57, 1, v37);
  if ((v47 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_46:
  v39 = *(a1 + 56);
  if (v39)
  {
    mlir::detail::PDLByteCodeMutableState::cleanupAfterMatchAndRewrite(v39);
  }

  v40 = v58;
  if (v59)
  {
    v41 = v58 + 120 * v59 - 48;
    v42 = -120 * v59;
    do
    {
      v43 = *(v41 + 2);
      if (v41 + 32 != v43)
      {
        free(v43);
      }

      if (v41 + 16 != *v41)
      {
        free(*v41);
      }

      v44 = *(v41 - 8);
      if (v41 - 48 != v44)
      {
        free(v44);
      }

      v41 -= 120;
      v42 += 120;
    }

    while (v42);
    v40 = v58;
  }

  if (v40 != v60)
  {
    free(v40);
  }

  return v56;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::try_emplace<mlir::PatternBenefit>@<X0>(uint64_t result@<X0>, void *a2@<X1>, _WORD *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = result + 8;
  v4 = *result;
  v6 = *result & 1;
  if (v6)
  {
    v7 = 4;
    v8 = result + 8;
  }

  else
  {
    v7 = *(result + 16);
    if (!v7)
    {
      v11 = 0;
      v14 = 0;
      v24 = 0;
      goto LABEL_11;
    }

    v8 = *(result + 8);
  }

  v9 = v7 - 1;
  v10 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v7 - 1);
  v11 = v8 + 16 * v10;
  v12 = *v11;
  if (*a2 == *v11)
  {
LABEL_6:
    if (v6)
    {
      v13 = 4;
    }

    else
    {
      v5 = *(result + 8);
      v13 = *(result + 16);
    }

    *a4 = v11;
    *(a4 + 8) = v5 + 16 * v13;
    *(a4 + 16) = 0;
    return result;
  }

  v16 = 0;
  v17 = 1;
  while (v12 != -4096)
  {
    if (v16)
    {
      v18 = 0;
    }

    else
    {
      v18 = v12 == -8192;
    }

    if (v18)
    {
      v16 = v11;
    }

    v19 = v10 + v17++;
    v10 = v19 & v9;
    v11 = v8 + 16 * (v19 & v9);
    v12 = *v11;
    if (*a2 == *v11)
    {
      goto LABEL_6;
    }
  }

  if (v16)
  {
    v11 = v16;
  }

  v24 = v11;
  if (v6)
  {
    v14 = 4;
  }

  else
  {
    v14 = *(result + 16);
  }

LABEL_11:
  if (4 * (v4 >> 1) + 4 >= 3 * v14)
  {
    v14 *= 2;
    goto LABEL_34;
  }

  if (v14 + ~(v4 >> 1) - *(result + 4) <= v14 >> 3)
  {
LABEL_34:
    v22 = a2;
    v23 = result;
    v20 = a3;
    v21 = a4;
    llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::grow(result, v14);
    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::LookupBucketFor<mlir::Pattern const*>(v23, v22, &v24);
    a2 = v22;
    result = v23;
    a3 = v20;
    a4 = v21;
    v4 = *v23;
    v11 = v24;
    v6 = *v23 & 1;
  }

  *result = (v4 & 0xFFFFFFFE | v6) + 2;
  if (*v11 != -4096)
  {
    --*(result + 4);
  }

  *v11 = *a2;
  *(v11 + 8) = *a3;
  if (*result)
  {
    v15 = 4;
  }

  else
  {
    v5 = *(result + 8);
    v15 = *(result + 16);
  }

  *a4 = v11;
  *(a4 + 8) = v5 + 16 * v15;
  *(a4 + 16) = 1;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](uint64_t a1, void *a2)
{
  v2 = a1 + 8;
  v3 = *a1;
  v4 = *a1 & 1;
  if (v4)
  {
    v5 = 4;
  }

  else
  {
    v5 = *(a1 + 16);
    if (!v5)
    {
      v8 = 0;
      v11 = 0;
      v18 = 0;
      goto LABEL_8;
    }

    v2 = *(a1 + 8);
  }

  v6 = v5 - 1;
  v7 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v5 - 1);
  v8 = v2 + 16 * v7;
  v9 = *v8;
  if (*a2 == *v8)
  {
    return v8 + 8;
  }

  v12 = 0;
  v13 = 1;
  while (v9 != -4096)
  {
    if (v12)
    {
      v14 = 0;
    }

    else
    {
      v14 = v9 == -8192;
    }

    if (v14)
    {
      v12 = v8;
    }

    v15 = v7 + v13++;
    v7 = v15 & v6;
    v8 = v2 + 16 * (v15 & v6);
    v9 = *v8;
    if (*a2 == *v8)
    {
      return v8 + 8;
    }
  }

  if (v12)
  {
    v8 = v12;
  }

  v18 = v8;
  if (v4)
  {
    v11 = 4;
  }

  else
  {
    v11 = *(a1 + 16);
  }

LABEL_8:
  if (4 * (v3 >> 1) + 4 >= 3 * v11)
  {
    v11 *= 2;
    goto LABEL_28;
  }

  if (v11 + ~(v3 >> 1) - *(a1 + 4) <= v11 >> 3)
  {
LABEL_28:
    v16 = a2;
    v17 = a1;
    llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::grow(a1, v11);
    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::LookupBucketFor<mlir::Pattern const*>(v17, v16, &v18);
    a2 = v16;
    a1 = v17;
    v3 = *v17;
    v8 = v18;
    v4 = *v17 & 1;
  }

  *a1 = (v3 & 0xFFFFFFFE | v4) + 2;
  if (*v8 != -4096)
  {
    --*(a1 + 4);
  }

  *v8 = *a2;
  *(v8 + 8) = -1;
  return v8 + 8;
}

unsigned int *llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::shrink_and_clear(unsigned int *result)
{
  v1 = *result;
  v2 = __clz((*result >> 1) - 1);
  if (v2 - 28 >= 3)
  {
    v3 = 1 << (33 - v2);
  }

  else
  {
    v3 = 64;
  }

  if (v1 >= 2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if ((v1 & 1) != 0 && v4 < 5)
  {
    *result &= 1u;
    result[1] = 0;
    v5 = result + 2;
    v6 = result + 18;
    v7 = 48;
    goto LABEL_15;
  }

  if (v1)
  {
    if (v4 <= 4)
    {
      *result = 1;
    }

    else
    {
      *result &= ~1u;
      v13 = result;
      buffer = llvm::allocate_buffer(16 * v4, 8uLL);
      result = v13;
      *(v13 + 1) = buffer;
      *(v13 + 2) = v4;
      v15 = *v13;
      *v13 = *v13 & 1;
      if ((v15 & 1) == 0)
      {
        v16 = &buffer[2 * v4];
        v17 = 16 * v4 - 16;
        if (v17 < 0x10)
        {
          v19 = buffer;
          goto LABEL_31;
        }

LABEL_24:
        v18 = (v17 >> 4) + 1;
        v19 = &buffer[2 * (v18 & 0x1FFFFFFFFFFFFFFELL)];
        v20 = buffer + 2;
        v21 = v18 & 0x1FFFFFFFFFFFFFFELL;
        do
        {
          *(v20 - 2) = -4096;
          *v20 = -4096;
          v20 += 4;
          v21 -= 2;
        }

        while (v21);
        if (v18 == (v18 & 0x1FFFFFFFFFFFFFFELL))
        {
          return result;
        }

        do
        {
LABEL_31:
          *v19 = -4096;
          v19 += 2;
        }

        while (v19 != v16);
        return result;
      }
    }

    buffer = result + 2;
    v16 = result + 18;
    v17 = 48;
    goto LABEL_24;
  }

  v9 = result[4];
  if (v4 != v9)
  {
    llvm::deallocate_buffer(*(result + 1), (16 * v9));
  }

  *result = 0;
  if (!v4)
  {
    return result;
  }

  v5 = *(result + 1);
  v6 = &v5[4 * v4];
  v7 = 16 * v4 - 16;
  if (v7 < 0x10)
  {
    v8 = *(result + 1);
    do
    {
LABEL_18:
      *v8 = -4096;
      v8 += 4;
    }

    while (v8 != v6);
    return result;
  }

LABEL_15:
  v10 = (v7 >> 4) + 1;
  v8 = &v5[4 * (v10 & 0x1FFFFFFFFFFFFFFELL)];
  v11 = v5 + 4;
  v12 = v10 & 0x1FFFFFFFFFFFFFFELL;
  do
  {
    *(v11 - 2) = -4096;
    *v11 = -4096;
    v11 += 4;
    v12 -= 2;
  }

  while (v12);
  if (v10 != (v10 & 0x1FFFFFFFFFFFFFFELL))
  {
    goto LABEL_18;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::LookupBucketFor<mlir::Pattern const*>(uint64_t a1, void *a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 4;
LABEL_5:
    v5 = v4 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v4 - 1);
    v7 = (v3 + 16 * v6);
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
      while (v8 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -8192;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v3 + 16 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_8;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }

      *a3 = v7;
    }

    return result;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    v3 = *(a1 + 8);
    goto LABEL_5;
  }

  v7 = 0;
  result = 0;
LABEL_8:
  *a3 = v7;
  return result;
}

int *llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::grow(uint64_t a1, unsigned int a2)
{
  v21[6] = *MEMORY[0x1E69E9840];
  if (a2 >= 5)
  {
    v2 = (a2 - 1) | ((a2 - 1) >> 1);
    v3 = v2 | (v2 >> 2) | ((v2 | (v2 >> 2)) >> 4);
    v4 = ((v3 | (v3 >> 8)) >> 16) | v3 | (v3 >> 8);
    if ((v4 + 1) > 0x40)
    {
      a2 = v4 + 1;
    }

    else
    {
      a2 = 64;
    }
  }

  if ((*a1 & 1) == 0)
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    if (a2 > 4)
    {
      v15 = a2;
      v16 = a1;
      buffer = llvm::allocate_buffer(16 * a2, 8uLL);
      a1 = v16;
      *(v16 + 8) = buffer;
      *(v16 + 16) = v15;
    }

    else
    {
      *a1 |= 1u;
    }

    v18 = (16 * v6);
    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::moveFromOldBuckets(a1, v5, &v18[v5]);

    llvm::deallocate_buffer(v5, v18);
  }

  v7 = &v19;
  if ((*(a1 + 8) | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
    v8 = *(a1 + 24);
    if ((v8 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v19 = *(a1 + 8);
    v20 = *(a1 + 16);
    v7 = v21;
    v8 = *(a1 + 24);
    if ((v8 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
LABEL_10:
      v9 = *(a1 + 40);
      if ((v9 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        goto LABEL_11;
      }

      goto LABEL_21;
    }
  }

  *v7 = v8;
  *(v7 + 4) = *(a1 + 32);
  v7 += 2;
  v9 = *(a1 + 40);
  if ((v9 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
LABEL_11:
    v10 = *(a1 + 56);
    if ((v10 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_12;
    }

LABEL_22:
    *v7 = v10;
    *(v7 + 4) = *(a1 + 64);
    v7 += 2;
    if (a2 < 5)
    {
      return llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::moveFromOldBuckets(a1, &v19, v7);
    }

    goto LABEL_13;
  }

LABEL_21:
  *v7 = v9;
  *(v7 + 4) = *(a1 + 48);
  v7 += 2;
  v10 = *(a1 + 56);
  if ((v10 | 0x1000) != 0xFFFFFFFFFFFFF000)
  {
    goto LABEL_22;
  }

LABEL_12:
  if (a2 >= 5)
  {
LABEL_13:
    *a1 &= ~1u;
    v11 = a2;
    v12 = a1;
    v13 = llvm::allocate_buffer(16 * a2, 8uLL);
    a1 = v12;
    *(v12 + 8) = v13;
    *(v12 + 16) = v11;
  }

  return llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::moveFromOldBuckets(a1, &v19, v7);
}

int *llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::moveFromOldBuckets(int *result, uint64_t *a2, uint64_t *a3)
{
  v3 = *result;
  *result &= 1u;
  result[1] = 0;
  if (v3)
  {
    v6 = result + 18;
    v5 = result + 2;
    v7 = 48;
  }

  else
  {
    v4 = result[4];
    if (!v4)
    {
      goto LABEL_11;
    }

    v5 = *(result + 1);
    v6 = &v5[4 * v4];
    v7 = v6 - v5 - 16;
    if (v7 < 0x10)
    {
      v9 = *(result + 1);
      do
      {
LABEL_10:
        *v9 = -4096;
        v9 += 4;
      }

      while (v9 != v6);
      goto LABEL_11;
    }
  }

  v8 = (v7 >> 4) + 1;
  v9 = &v5[4 * (v8 & 0x1FFFFFFFFFFFFFFELL)];
  v10 = v5 + 4;
  v11 = v8 & 0x1FFFFFFFFFFFFFFELL;
  do
  {
    *(v10 - 2) = -4096;
    *v10 = -4096;
    v10 += 4;
    v11 -= 2;
  }

  while (v11);
  if (v8 != (v8 & 0x1FFFFFFFFFFFFFFELL))
  {
    goto LABEL_10;
  }

LABEL_11:
  while (a2 != a3)
  {
    v17 = *a2;
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      if (*result)
      {
        v13 = 3;
        v12 = result + 2;
      }

      else
      {
        v12 = *(result + 1);
        v13 = result[4] - 1;
      }

      v14 = v13 & ((v17 >> 4) ^ (v17 >> 9));
      v15 = &v12[4 * v14];
      v16 = *v15;
      if (v17 != *v15)
      {
        v18 = 0;
        v19 = 1;
        while (v16 != -4096)
        {
          if (v18)
          {
            v20 = 0;
          }

          else
          {
            v20 = v16 == -8192;
          }

          if (v20)
          {
            v18 = v15;
          }

          v21 = v14 + v19++;
          v14 = v21 & v13;
          v15 = &v12[4 * (v21 & v13)];
          v16 = *v15;
          if (v17 == *v15)
          {
            goto LABEL_15;
          }
        }

        if (v18)
        {
          v15 = v18;
        }
      }

LABEL_15:
      *v15 = v17;
      *(v15 + 4) = *(a2 + 4);
      *result += 2;
    }

    a2 += 2;
  }

  return result;
}

double std::__stable_sort<std::_ClassicAlgPolicy,mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_0 &,mlir::RewritePattern const**>(char *a1, char *a2, uint64_t *a3, unint64_t a4, uint64_t *a5, uint64_t a6)
{
  if (a4 < 2)
  {
    return *&v13;
  }

  v7 = a2;
  v8 = a1;
  if (a4 == 2)
  {
    v9 = *(a2 - 1);
    if (v9)
    {
      v10 = v9 + 8;
    }

    else
    {
      v10 = 0;
    }

    if (*a1)
    {
      v11 = *a1 + 8;
    }

    else
    {
      v11 = 0;
    }

    v116 = v11;
    v117 = v10;
    v12 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a3, &v117);
    if (*llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a3, &v116) < *v12)
    {
      v14 = *v8;
      *v8 = *(v7 - 1);
      *(v7 - 1) = v14;
    }

    return *&v13;
  }

  if (a4 <= 128)
  {
    if (a1 == a2)
    {
      return *&v13;
    }

    v15 = a1 + 8;
    if (a1 + 8 == a2)
    {
      return *&v13;
    }

    v16 = a1;
LABEL_19:
    v17 = v15;
    v19 = *v16;
    v18 = *(v16 + 1);
    if (v18)
    {
      v20 = v18 + 8;
    }

    else
    {
      v20 = 0;
    }

    if (v19)
    {
      v21 = v19 + 8;
    }

    else
    {
      v21 = 0;
    }

    v116 = v21;
    v117 = v20;
    v22 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a3, &v117);
    if (*llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a3, &v116) >= *v22)
    {
      goto LABEL_18;
    }

    v23 = *v17;
    if (*v17)
    {
      v24 = *v17 + 8;
    }

    else
    {
      v24 = 0;
    }

    v25 = (v24 >> 4) ^ (v24 >> 9);
    v115 = v17;
    while (1)
    {
      *v17 = *v16;
      if (v16 == v8)
      {
        v17 = v8;
LABEL_17:
        *v17 = v23;
        v7 = a2;
        v17 = v115;
LABEL_18:
        v15 = v17 + 8;
        v16 = v17;
        if (v17 + 8 != v7)
        {
          goto LABEL_19;
        }

        return *&v13;
      }

      v17 = v16;
      v32 = *(v16 - 1);
      v16 -= 8;
      v33 = v32 + 8;
      if (v32)
      {
        v34 = v33;
      }

      else
      {
        v34 = 0;
      }

      v35 = *a3;
      v37 = *a3 + 8;
      v36 = **a3;
      v38 = v36 & 1;
      if (v36)
      {
        v39 = 4;
        v40 = *a3 + 8;
      }

      else
      {
        v39 = *(v35 + 16);
        if (!v39)
        {
          v43 = 0;
          v47 = 0;
          goto LABEL_46;
        }

        v40 = *(v35 + 8);
      }

      v41 = v39 - 1;
      v42 = v41 & v25;
      v43 = v40 + 16 * (v41 & v25);
      v44 = *v43;
      if (v24 == *v43)
      {
        goto LABEL_42;
      }

      v53 = 0;
      v54 = 1;
      while (v44 != -4096)
      {
        if (v53)
        {
          v55 = 0;
        }

        else
        {
          v55 = v44 == -8192;
        }

        if (v55)
        {
          v53 = v43;
        }

        v56 = v42 + v54++;
        v42 = v56 & v41;
        v43 = v40 + 16 * v42;
        v44 = *v43;
        if (v24 == *v43)
        {
          goto LABEL_42;
        }
      }

      if (v53)
      {
        v43 = v53;
      }

      if (v36)
      {
        v47 = 4;
      }

      else
      {
        v47 = *(v35 + 16);
      }

LABEL_46:
      if (4 * (v36 >> 1) + 4 >= 3 * v47)
      {
        v47 *= 2;
      }

      else if (v47 + ~(v36 >> 1) - *(v35 + 4) > v47 >> 3)
      {
        goto LABEL_48;
      }

      v112 = v23;
      llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::grow(v35, v47);
      v36 = *v35;
      if (*v35)
      {
        v57 = 4;
      }

      else
      {
        v57 = *(v35 + 16);
        if (!v57)
        {
          v38 = 0;
          v43 = 0;
LABEL_116:
          v23 = v112;
          goto LABEL_48;
        }

        v37 = *(v35 + 8);
      }

      v23 = v112;
      v38 = *v35 & 1;
      v59 = v57 - 1;
      v60 = v59 & v25;
      v43 = v37 + 16 * (v59 & v25);
      v61 = *v43;
      if (v24 != *v43)
      {
        v62 = 0;
        v63 = 1;
        while (v61 != -4096)
        {
          if (v62)
          {
            v64 = 0;
          }

          else
          {
            v64 = v61 == -8192;
          }

          if (v64)
          {
            v62 = v43;
          }

          v65 = v60 + v63++;
          v60 = v65 & v59;
          v43 = v37 + 16 * v60;
          v61 = *v43;
          if (v24 == *v43)
          {
            goto LABEL_116;
          }
        }

        if (v62)
        {
          v43 = v62;
        }

        goto LABEL_116;
      }

LABEL_48:
      *v35 = (v36 & 0xFFFFFFFE | v38) + 2;
      if (*v43 != -4096)
      {
        --*(v35 + 4);
      }

      *v43 = v24;
      *(v43 + 8) = -1;
      v35 = *a3;
      v36 = **a3;
LABEL_42:
      v45 = v36 & 1;
      v46 = v35 + 8;
      if (v36)
      {
        v26 = 4;
        v27 = v35 + 8;
      }

      else
      {
        v26 = *(v35 + 16);
        if (!v26)
        {
          v30 = 0;
          v48 = 0;
          goto LABEL_52;
        }

        v27 = *(v35 + 8);
      }

      v28 = v26 - 1;
      v29 = (v26 - 1) & ((v34 >> 4) ^ (v34 >> 9));
      v30 = v27 + 16 * v29;
      v31 = *v30;
      if (v34 != *v30)
      {
        v49 = 0;
        v50 = 1;
        while (v31 != -4096)
        {
          if (v49)
          {
            v51 = 0;
          }

          else
          {
            v51 = v31 == -8192;
          }

          if (v51)
          {
            v49 = v30;
          }

          v52 = v29 + v50++;
          v29 = v52 & v28;
          v30 = v27 + 16 * (v52 & v28);
          v31 = *v30;
          if (v34 == *v30)
          {
            goto LABEL_32;
          }
        }

        if (v49)
        {
          v30 = v49;
        }

        if (v36)
        {
          v48 = 4;
        }

        else
        {
          v48 = *(v35 + 16);
        }

LABEL_52:
        if (4 * (v36 >> 1) + 4 >= 3 * v48)
        {
          v48 *= 2;
        }

        else if (v48 + ~(v36 >> 1) - *(v35 + 4) > v48 >> 3)
        {
LABEL_54:
          *v35 = (v36 & 0xFFFFFFFE | v45) + 2;
          if (*v30 != -4096)
          {
            --*(v35 + 4);
          }

          *v30 = v34;
          *(v30 + 8) = -1;
          goto LABEL_32;
        }

        v113 = v23;
        llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::grow(v35, v48);
        v36 = *v35;
        if (*v35)
        {
          v58 = 4;
LABEL_105:
          v23 = v113;
          v45 = *v35 & 1;
          v66 = v58 - 1;
          v67 = (v58 - 1) & ((v34 >> 4) ^ (v34 >> 9));
          v30 = v46 + 16 * v67;
          v68 = *v30;
          if (v34 == *v30)
          {
            goto LABEL_54;
          }

          v69 = 0;
          v70 = 1;
          while (v68 != -4096)
          {
            if (v69)
            {
              v71 = 0;
            }

            else
            {
              v71 = v68 == -8192;
            }

            if (v71)
            {
              v69 = v30;
            }

            v72 = v67 + v70++;
            v67 = v72 & v66;
            v30 = v46 + 16 * (v72 & v66);
            v68 = *v30;
            if (v34 == *v30)
            {
              goto LABEL_118;
            }
          }

          if (v69)
          {
            v30 = v69;
          }
        }

        else
        {
          v58 = *(v35 + 16);
          if (v58)
          {
            v46 = *(v35 + 8);
            goto LABEL_105;
          }

          v45 = 0;
          v30 = 0;
        }

LABEL_118:
        v23 = v113;
        goto LABEL_54;
      }

LABEL_32:
      if (*(v30 + 8) >= *(v43 + 8))
      {
        goto LABEL_17;
      }
    }
  }

  v73 = a5;
  v74 = a4 >> 1;
  v75 = &a1[8 * (a4 >> 1)];
  v76 = a4 - (a4 >> 1);
  if (a4 <= a6)
  {
    std::__stable_sort_move<std::_ClassicAlgPolicy,mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_0 &,mlir::RewritePattern const**>(a1, v75, a3, a4 >> 1, a5);
    v79 = &v73[8 * v74];
    std::__stable_sort_move<std::_ClassicAlgPolicy,mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_0 &,mlir::RewritePattern const**>(v75, v7, a3, v76, v79);
    v80 = &v73[8 * a4];
    v81 = v8;
    v82 = v79;
    do
    {
      if (v82 == v80)
      {
        if (v73 == v79)
        {
          return *&v13;
        }

        v102 = v79 - v73 - 8;
        if (v102 >= 0x38)
        {
          if ((v81 - v73) >= 0x20)
          {
            v104 = v8 + 16;
            v105 = (v102 >> 3) + 1;
            v106 = 8 * (v105 & 0x3FFFFFFFFFFFFFFCLL);
            v8 += v106;
            v103 = &v73[v106];
            v107 = (v73 + 16);
            v108 = v105 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v13 = *(v107 - 1);
              v109 = *v107;
              *(v104 - 1) = v13;
              *v104 = v109;
              v107 += 2;
              v104 += 2;
              v108 -= 4;
            }

            while (v108);
            if (v105 == (v105 & 0x3FFFFFFFFFFFFFFCLL))
            {
              return *&v13;
            }
          }

          else
          {
            v103 = v73;
          }
        }

        else
        {
          v103 = v73;
        }

        do
        {
          v110 = *v103;
          v103 += 8;
          *v8 = v110;
          v8 += 8;
        }

        while (v103 != v79);
        return *&v13;
      }

      v83 = v82;
      v84 = *v82;
      if (v84)
      {
        v85 = v84 + 8;
      }

      else
      {
        v85 = 0;
      }

      if (*v73)
      {
        v86 = *v73 + 8;
      }

      else
      {
        v86 = 0;
      }

      v116 = v86;
      v117 = v85;
      v87 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a3, &v117);
      v88 = *llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a3, &v116) >= *v87;
      v89 = !v88;
      if (v88)
      {
        v90 = v73;
      }

      else
      {
        v90 = v83;
      }

      v73 += 8 * v88;
      v91 = v89;
      v82 = &v83[v91];
      *v8 = *v90;
      v8 += 8;
      v81 += 8;
    }

    while (v73 != v79);
    if (v82 != v80)
    {
      v92 = v80 - v83 - v91 * 8 - 8;
      if (v92 <= 0x57)
      {
        goto LABEL_164;
      }

      if ((v81 - v83 - v91 * 8) < 0x20)
      {
        goto LABEL_164;
      }

      v93 = 0;
      v94 = (v92 >> 3) + 1;
      v95 = 8 * (v94 & 0x3FFFFFFFFFFFFFFCLL);
      v96 = &v8[v95];
      v82 = (v82 + v95);
      v97 = &v83[v91 + 2];
      v98 = v94 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v99 = &v8[v93];
        v13 = *(v97 - 1);
        v100 = *v97;
        *v99 = v13;
        *(v99 + 1) = v100;
        v97 += 4;
        v93 += 32;
        v98 -= 4;
      }

      while (v98);
      v8 = v96;
      if (v94 != (v94 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_164:
        do
        {
          v101 = *v82++;
          *v8 = v101;
          v8 += 8;
        }

        while (v82 != v80);
      }
    }
  }

  else
  {
    std::__stable_sort<std::_ClassicAlgPolicy,mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_0 &,mlir::RewritePattern const**>(a1, v75, a3, a4 >> 1, a5, a6);
    std::__stable_sort<std::_ClassicAlgPolicy,mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_0 &,mlir::RewritePattern const**>(v75, v7, a3, v76, v73, a6);

    *&v13 = std::__inplace_merge<std::_ClassicAlgPolicy,mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_0 &,mlir::RewritePattern const**>(v8, v75, v7, a3, v74, v76, v73, a6).n128_u64[0];
  }

  return *&v13;
}

uint64_t std::__stable_sort_move<std::_ClassicAlgPolicy,mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_0 &,mlir::RewritePattern const**>(uint64_t result, char *a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  if (!a4)
  {
    return result;
  }

  v5 = a5;
  v6 = result;
  if (a4 == 1)
  {
LABEL_16:
    *v5 = *v6;
    return result;
  }

  v8 = a2;
  if (a4 == 2)
  {
    v10 = a2 - 8;
    v9 = *(a2 - 1);
    if (v9)
    {
      v11 = v9 + 8;
    }

    else
    {
      v11 = 0;
    }

    if (*result)
    {
      v12 = *result + 8;
    }

    else
    {
      v12 = 0;
    }

    v116 = v12;
    v117 = v11;
    v13 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a3, &v117);
    result = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a3, &v116);
    v14 = *result;
    v15 = *v13;
    v16 = v14 >= v15;
    if (v14 >= v15)
    {
      v17 = v6;
    }

    else
    {
      v17 = v10;
    }

    *v5++ = *v17;
    if (v16)
    {
      v6 = v10;
    }

    goto LABEL_16;
  }

  if (a4 <= 8)
  {
    if (result == a2)
    {
      return result;
    }

    v18 = (result + 8);
    *a5 = *result;
    if ((result + 8) == a2)
    {
      return result;
    }

    v19 = a5;
LABEL_25:
    v22 = v19;
    v24 = *v19++;
    v23 = v24;
    if (*v18)
    {
      v25 = *v18 + 8;
    }

    else
    {
      v25 = 0;
    }

    if (v23)
    {
      v26 = v23 + 8;
    }

    else
    {
      v26 = 0;
    }

    v116 = v26;
    v117 = v25;
    v27 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a3, &v117);
    result = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a3, &v116);
    v20 = v19;
    if (*result >= *v27)
    {
      goto LABEL_24;
    }

    v22[1] = *v22;
    v20 = v5;
    if (v22 == v5)
    {
      goto LABEL_24;
    }

    v115 = v19;
    v28 = v22;
    while (1)
    {
      if (*v18)
      {
        v29 = *v18 + 8;
      }

      else
      {
        v29 = 0;
      }

      v30 = *--v28;
      v31 = v30 + 8;
      if (v30)
      {
        v32 = v31;
      }

      else
      {
        v32 = 0;
      }

      v33 = *a3;
      v35 = *a3 + 8;
      v34 = **a3;
      v36 = v34 & 1;
      if (v34)
      {
        v37 = 4;
        v38 = *a3 + 8;
      }

      else
      {
        v37 = *(v33 + 16);
        if (!v37)
        {
          v41 = 0;
          v51 = 0;
          goto LABEL_54;
        }

        v38 = *(v33 + 8);
      }

      v39 = v37 - 1;
      v40 = v39 & ((v29 >> 4) ^ (v29 >> 9));
      v41 = v38 + 16 * v40;
      v42 = *v41;
      if (v29 == *v41)
      {
        goto LABEL_45;
      }

      v53 = 0;
      v54 = 1;
      while (v42 != -4096)
      {
        if (v53)
        {
          v55 = 0;
        }

        else
        {
          v55 = v42 == -8192;
        }

        if (v55)
        {
          v53 = v41;
        }

        v56 = v40 + v54++;
        v40 = v56 & v39;
        v41 = v38 + 16 * v40;
        v42 = *v41;
        if (v29 == *v41)
        {
          goto LABEL_45;
        }
      }

      if (v53)
      {
        v41 = v53;
      }

      if (v34)
      {
        v51 = 4;
      }

      else
      {
        v51 = *(v33 + 16);
      }

LABEL_54:
      if (4 * (v34 >> 1) + 4 >= 3 * v51)
      {
        v51 *= 2;
      }

      else if (v51 + ~(v34 >> 1) - *(v33 + 4) > v51 >> 3)
      {
        goto LABEL_56;
      }

      result = llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::grow(*a3, v51);
      v34 = *v33;
      if (*v33)
      {
        v61 = 4;
LABEL_102:
        v36 = *v33 & 1;
        v63 = v61 - 1;
        v64 = v63 & ((v29 >> 4) ^ (v29 >> 9));
        v41 = v35 + 16 * v64;
        v65 = *v41;
        if (v29 != *v41)
        {
          v66 = 0;
          v67 = 1;
          while (v65 != -4096)
          {
            if (v66)
            {
              v68 = 0;
            }

            else
            {
              v68 = v65 == -8192;
            }

            if (v68)
            {
              v66 = v41;
            }

            v69 = v64 + v67++;
            v64 = v69 & v63;
            v41 = v35 + 16 * v64;
            v65 = *v41;
            if (v29 == *v41)
            {
              goto LABEL_56;
            }
          }

          if (v66)
          {
            v41 = v66;
          }
        }

        goto LABEL_56;
      }

      v61 = *(v33 + 16);
      if (v61)
      {
        v35 = *(v33 + 8);
        goto LABEL_102;
      }

      v36 = 0;
      v41 = 0;
LABEL_56:
      *v33 = (v34 & 0xFFFFFFFE | v36) + 2;
      if (*v41 != -4096)
      {
        --*(v33 + 4);
      }

      *v41 = v29;
      *(v41 + 8) = -1;
      v33 = *a3;
      v34 = **a3;
LABEL_45:
      v43 = v34 & 1;
      v44 = v33 + 8;
      if (v34)
      {
        v45 = 4;
        v46 = v33 + 8;
      }

      else
      {
        v45 = *(v33 + 16);
        if (!v45)
        {
          v49 = 0;
          v52 = 0;
          goto LABEL_60;
        }

        v46 = *(v33 + 8);
      }

      v47 = v45 - 1;
      v48 = (v45 - 1) & ((v32 >> 4) ^ (v32 >> 9));
      v49 = v46 + 16 * v48;
      v50 = *v49;
      if (v32 != *v49)
      {
        v57 = 0;
        v58 = 1;
        while (v50 != -4096)
        {
          result = -8192;
          if (v57)
          {
            v59 = 0;
          }

          else
          {
            v59 = v50 == -8192;
          }

          if (v59)
          {
            v57 = v49;
          }

          v60 = v48 + v58++;
          v48 = v60 & v47;
          v49 = v46 + 16 * (v60 & v47);
          v50 = *v49;
          if (v32 == *v49)
          {
            goto LABEL_50;
          }
        }

        if (v57)
        {
          v49 = v57;
        }

        if (v34)
        {
          v52 = 4;
        }

        else
        {
          v52 = *(v33 + 16);
        }

LABEL_60:
        if (4 * (v34 >> 1) + 4 >= 3 * v52)
        {
          v52 *= 2;
        }

        else if (v52 + ~(v34 >> 1) - *(v33 + 4) > v52 >> 3)
        {
LABEL_62:
          *v33 = (v34 & 0xFFFFFFFE | v43) + 2;
          if (*v49 != -4096)
          {
            --*(v33 + 4);
          }

          *v49 = v32;
          *(v49 + 8) = -1;
          goto LABEL_50;
        }

        result = llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::grow(v33, v52);
        v34 = *v33;
        if (*v33)
        {
          v62 = 4;
        }

        else
        {
          v62 = *(v33 + 16);
          if (!v62)
          {
            v43 = 0;
            v49 = 0;
            goto LABEL_62;
          }

          v44 = *(v33 + 8);
        }

        v43 = *v33 & 1;
        v70 = v62 - 1;
        v71 = (v62 - 1) & ((v32 >> 4) ^ (v32 >> 9));
        v49 = v44 + 16 * v71;
        v72 = *v49;
        if (v32 != *v49)
        {
          v73 = 0;
          v74 = 1;
          while (v72 != -4096)
          {
            if (v73)
            {
              v75 = 0;
            }

            else
            {
              v75 = v72 == -8192;
            }

            if (v75)
            {
              v73 = v49;
            }

            v76 = v71 + v74++;
            v71 = v76 & v70;
            v49 = v44 + 16 * (v76 & v70);
            v72 = *v49;
            if (v32 == *v49)
            {
              goto LABEL_62;
            }
          }

          if (v73)
          {
            v49 = v73;
          }
        }

        goto LABEL_62;
      }

LABEL_50:
      if (*(v49 + 8) >= *(v41 + 8))
      {
        v20 = v22;
        goto LABEL_23;
      }

      *v22 = *(v22 - 1);
      v22 = v28;
      if (v28 == v5)
      {
        v20 = v5;
LABEL_23:
        v8 = a2;
        v19 = v115;
LABEL_24:
        v21 = *v18;
        v18 += 8;
        *v20 = v21;
        if (v18 != v8)
        {
          goto LABEL_25;
        }

        return result;
      }
    }
  }

  v77 = a4 >> 1;
  v78 = 8 * (a4 >> 1);
  v79 = (result + v78);
  std::__stable_sort<std::_ClassicAlgPolicy,mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_0 &,mlir::RewritePattern const**>(result, result + v78, a3, v77, a5, v77);
  result = std::__stable_sort<std::_ClassicAlgPolicy,mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_0 &,mlir::RewritePattern const**>(&v6[v78], v8, a3, a4 - v77, &v5[v78 / 8], a4 - v77);
  v81 = v5;
  v82 = v6;
  v83 = v79;
  do
  {
    if (v83 == v8)
    {
      if (v82 == v79)
      {
        return result;
      }

      v105 = &v6[8 * v77] - v82 - 8;
      if (v105 >= 0x38)
      {
        if ((v81 - v82) >= 0x20)
        {
          v107 = v5 + 2;
          v108 = (v105 >> 3) + 1;
          v109 = v108 & 0x3FFFFFFFFFFFFFFCLL;
          v5 = (v5 + v109 * 8);
          v106 = &v82[v109];
          v110 = (v82 + 2);
          v111 = v108 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v112 = *v110;
            *(v107 - 1) = *(v110 - 1);
            *v107 = v112;
            v110 += 2;
            v107 += 2;
            v111 -= 4;
          }

          while (v111);
          if (v108 == (v108 & 0x3FFFFFFFFFFFFFFCLL))
          {
            return result;
          }
        }

        else
        {
          v106 = v82;
        }
      }

      else
      {
        v106 = v82;
      }

      do
      {
        v113 = *v106++;
        *v5++ = v113;
      }

      while (v106 != v79);
      return result;
    }

    v84 = v83;
    v85 = *v83;
    if (v85)
    {
      v86 = v85 + 8;
    }

    else
    {
      v86 = 0;
    }

    if (*v82)
    {
      v87 = *v82 + 8;
    }

    else
    {
      v87 = 0;
    }

    v116 = v87;
    v117 = v86;
    v88 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a3, &v117);
    result = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a3, &v116);
    v89 = *result;
    v90 = *v88;
    v16 = v89 >= v90;
    v91 = v89 >= v90;
    v92 = v89 < v90;
    if (v16)
    {
      v93 = v82;
    }

    else
    {
      v93 = v84;
    }

    v94 = v92;
    v83 = &v84[v94];
    v82 += v91;
    *v5++ = *v93;
    v81 += 8;
  }

  while (v82 != v79);
  if (v83 != v8)
  {
    v95 = v8 - v84 - v94 * 8 - 8;
    if (v95 < 0x58)
    {
      goto LABEL_164;
    }

    if ((v81 - &v84[v94]) < 0x20)
    {
      goto LABEL_164;
    }

    v96 = 0;
    v97 = (v95 >> 3) + 1;
    v98 = v97 & 0x3FFFFFFFFFFFFFFCLL;
    v99 = &v5[v98];
    v83 = (v83 + v98 * 8);
    v100 = &v84[v94 + 2];
    v101 = v97 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v102 = &v5[v96];
      v103 = *v100;
      *v102 = *(v100 - 1);
      *(v102 + 1) = v103;
      v100 += 2;
      v96 += 4;
      v101 -= 4;
    }

    while (v101);
    v5 = v99;
    if (v97 != (v97 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_164:
      do
      {
        v104 = *v83++;
        *v5++ = v104;
      }

      while (v83 != v8);
    }
  }

  return result;
}

__n128 std::__inplace_merge<std::_ClassicAlgPolicy,mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_0 &,mlir::RewritePattern const**>(char *a1, char *a2, char *a3, uint64_t *a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  v136 = a6;
  if (!a6)
  {
    return result;
  }

  while (v136 > a8 && a5 > a8)
  {
    if (!a5)
    {
      return result;
    }

    v14 = 0;
    v15 = 0;
    while (1)
    {
      v16 = *a2 ? *a2 + 8 : 0;
      v17 = *&a1[8 * v15];
      v18 = v17 ? v17 + 8 : 0;
      v138 = v18;
      v139 = v16;
      v19 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a4, &v139);
      if (*llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a4, &v138) < *v19)
      {
        break;
      }

      ++v15;
      v14 -= 8;
      if (a5 == v15)
      {
        return result;
      }
    }

    v21 = a5;
    v22 = a5 - v15;
    v23 = &a1[-v14];
    v24 = v136;
    v135 = a3;
    if (a5 - v15 >= v136)
    {
      if (a5 - 1 == v15)
      {
        v118 = *&a1[8 * v15];
        *&a1[8 * v15] = *a2;
        *a2 = v118;
        return result;
      }

      v35 = v22 / 2;
      v37 = &a1[8 * (v22 / 2)];
      if (a3 == a2)
      {
        v25 = a2;
      }

      else
      {
        v128 = v22 / 2;
        __dsta = v23;
        v132 = a8;
        v133 = a7;
        v38 = *a4;
        v39 = (a3 - a2) >> 3;
        v25 = a2;
        do
        {
          v40 = &v25[8 * (v39 >> 1)];
          v42 = *v40;
          v41 = v40 + 8;
          v43 = *&v37[8 * v15];
          v44 = v42 + 8;
          if (v42)
          {
            v45 = v44;
          }

          else
          {
            v45 = 0;
          }

          if (v43)
          {
            v46 = v43 + 8;
          }

          else
          {
            v46 = 0;
          }

          v138 = v46;
          v139 = v45;
          v47 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](v38, &v139);
          v48 = *llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](v38, &v138);
          v49 = *v47;
          if (v48 >= v49)
          {
            v39 >>= 1;
          }

          else
          {
            v39 += ~(v39 >> 1);
          }

          if (v48 < v49)
          {
            v25 = v41;
          }
        }

        while (v39);
        a7 = v133;
        v23 = __dsta;
        a8 = v132;
        v21 = a5;
        v24 = v136;
        v35 = v128;
      }

      v27 = &v37[-v14];
      v134 = (v25 - a2) >> 3;
      v36 = v25;
      if (v27 != a2)
      {
LABEL_49:
        v36 = v27;
        if (a2 != v25)
        {
          v50 = v27 + 8;
          if (v27 + 8 == a2)
          {
            v57 = v23;
            v58 = *v27;
            v59 = v25 - a2;
            v60 = v35;
            memmove(v27, v50, v59);
            v35 = v60;
            v24 = v136;
            v21 = a5;
            v36 = &v27[v59];
            *&v27[v59] = v58;
            v23 = v57;
          }

          else
          {
            v51 = a2 + 8;
            if (a2 + 8 == v25)
            {
              v61 = v23;
              v62 = a8;
              v63 = *(v25 - 1);
              v36 = v27 + 8;
              if (v25 - 8 != v27)
              {
                v64 = v35;
                memmove(v27 + 8, v27, v25 - 8 - v27);
                v35 = v64;
                v24 = v136;
                v21 = a5;
              }

              *v27 = v63;
              a8 = v62;
              v23 = v61;
            }

            else
            {
              v52 = a2 - v27;
              v53 = (a2 - v27) >> 3;
              v54 = (v25 - a2) >> 3;
              if (v53 == v54)
              {
                do
                {
                  v55 = *(v50 - 1);
                  *(v50 - 1) = *(v51 - 1);
                  *(v51 - 1) = v55;
                  if (v50 == a2)
                  {
                    break;
                  }

                  v50 += 8;
                  v56 = v51 == v25;
                  v51 += 8;
                }

                while (!v56);
                v36 = a2;
              }

              else
              {
                v65 = (a2 - v27) >> 3;
                do
                {
                  v66 = v65;
                  v65 = v54;
                  v54 = v66 % v54;
                }

                while (v54);
                v67 = &v27[8 * v65];
                do
                {
                  v69 = *(v67 - 1);
                  v67 -= 8;
                  v68 = v69;
                  v70 = &v67[v52];
                  v71 = v67;
                  do
                  {
                    v72 = v71;
                    v71 = v70;
                    *v72 = *v70;
                    v73 = (v25 - v70) >> 3;
                    v74 = __OFSUB__(v53, v73);
                    v76 = v53 - v73;
                    v75 = (v76 < 0) ^ v74;
                    v70 = &v27[8 * v76];
                    if (v75)
                    {
                      v70 = v71 + v52;
                    }
                  }

                  while (v70 != v67);
                  *v71 = v68;
                }

                while (v67 != v27);
                v36 = &v27[v25 - a2];
              }
            }
          }
        }
      }
    }

    else
    {
      v134 = v136 / 2;
      v25 = &a2[8 * (v136 / 2)];
      if (v23 == a2)
      {
        v27 = &a1[-v14];
        v35 = 0;
        v36 = &a2[8 * (v136 / 2)];
      }

      else
      {
        v131 = a8;
        v26 = (a2 - a1 + v14) >> 3;
        __dst = &a1[-v14];
        v27 = &a1[-v14];
        do
        {
          v28 = &v27[8 * (v26 >> 1)];
          v31 = *v28;
          v30 = v28 + 8;
          v29 = v31;
          if (*v25)
          {
            v32 = *v25 + 8;
          }

          else
          {
            v32 = 0;
          }

          if (v29)
          {
            v33 = v29 + 8;
          }

          else
          {
            v33 = 0;
          }

          v138 = v33;
          v139 = v32;
          v34 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a4, &v139);
          if (*llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a4, &v138) < *v34)
          {
            v26 >>= 1;
          }

          else
          {
            v27 = v30;
            v26 += ~(v26 >> 1);
          }
        }

        while (v26);
        a8 = v131;
        v21 = a5;
        v24 = v136;
        v23 = __dst;
        v35 = (v27 - __dst) >> 3;
        v36 = &a2[8 * (v136 / 2)];
        if (v27 != a2)
        {
          goto LABEL_49;
        }
      }
    }

    v77 = v21 - v35 - v15;
    v78 = v24 - v134;
    if (v35 + v134 >= v24 + v21 - (v35 + v134) - v15)
    {
      v79 = v35;
      std::__inplace_merge<std::_ClassicAlgPolicy,mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_0 &,mlir::RewritePattern const**>(v36, v25, v135, a4, v77, v24 - v134, a7, a8);
      v80 = v27;
      v136 = v134;
      a5 = v79;
      a1 = v23;
      a2 = v80;
      a3 = v36;
      if (!v134)
      {
        return result;
      }
    }

    else
    {
      std::__inplace_merge<std::_ClassicAlgPolicy,mlir::PatternApplicator::applyCostModel(llvm::function_ref<mlir::PatternBenefit ()(mlir::Pattern const&)>)::$_0 &,mlir::RewritePattern const**>(v23, v27, v36, a4, v35, v134, a7, a8);
      a5 = v77;
      v136 = v78;
      a1 = v36;
      a2 = v25;
      a3 = v135;
      if (!v78)
      {
        return result;
      }
    }
  }

  if (a5 <= v136)
  {
    if (a1 != a2)
    {
      v102 = a2 - a1 - 8;
      v103 = a7;
      v104 = a1;
      if (v102 < 0x18)
      {
        goto LABEL_139;
      }

      v103 = a7;
      v104 = a1;
      if ((a7 - a1) <= 0x1F)
      {
        goto LABEL_139;
      }

      v105 = (v102 >> 3) + 1;
      v106 = 8 * (v105 & 0x3FFFFFFFFFFFFFFCLL);
      v103 = &a7[v106];
      v104 = &a1[v106];
      v107 = (a1 + 16);
      v108 = a7 + 16;
      v109 = v105 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v110 = *v107;
        *(v108 - 1) = *(v107 - 1);
        *v108 = v110;
        v107 += 2;
        v108 += 2;
        v109 -= 4;
      }

      while (v109);
      if (v105 != (v105 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_139:
        do
        {
          v111 = *v104;
          v104 += 8;
          *v103 = v111;
          v103 += 8;
        }

        while (v104 != a2);
      }

      while (a2 != a3)
      {
        if (*a2)
        {
          v112 = *a2 + 8;
        }

        else
        {
          v112 = 0;
        }

        if (*a7)
        {
          v113 = *a7 + 8;
        }

        else
        {
          v113 = 0;
        }

        v138 = v113;
        v139 = v112;
        v114 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a4, &v139);
        v115 = *llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a4, &v138) >= *v114;
        v116 = !v115;
        if (v115)
        {
          v117 = a7;
        }

        else
        {
          v117 = a2;
        }

        a7 += 8 * v115;
        a2 += 8 * v116;
        *a1 = *v117;
        a1 += 8;
        if (a7 == v103)
        {
          return result;
        }
      }

      memmove(a1, a7, v103 - a7);
    }
  }

  else if (a2 != a3)
  {
    v81 = a3 - a2 - 8;
    v82 = a7;
    v83 = a2;
    if (v81 < 0x18)
    {
      goto LABEL_140;
    }

    v82 = a7;
    v83 = a2;
    if ((a7 - a2) <= 0x1F)
    {
      goto LABEL_140;
    }

    v84 = (v81 >> 3) + 1;
    v85 = 8 * (v84 & 0x3FFFFFFFFFFFFFFCLL);
    v82 = &a7[v85];
    v83 = &a2[v85];
    v86 = (a2 + 16);
    v87 = (a7 + 16);
    v88 = v84 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      result = v86[-1];
      v89 = *v86;
      v87[-1] = result;
      *v87 = v89;
      v86 += 2;
      v87 += 2;
      v88 -= 4;
    }

    while (v88);
    if (v84 != (v84 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_140:
      do
      {
        v90 = *v83;
        v83 += 8;
        *v82 = v90;
        v82 += 8;
      }

      while (v83 != a3);
    }

    v91 = a3;
    while (a2 != a1)
    {
      v92 = a2;
      v93 = *(a2 - 1);
      v94 = *(v82 - 1);
      if (v94)
      {
        v95 = v94 + 8;
      }

      else
      {
        v95 = 0;
      }

      if (v93)
      {
        v96 = v93 + 8;
      }

      else
      {
        v96 = 0;
      }

      v138 = v96;
      v139 = v95;
      v97 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a4, &v139);
      v98 = *llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Pattern const*,mlir::PatternBenefit,4u,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>,mlir::Pattern const*,mlir::PatternBenefit,llvm::DenseMapInfo<mlir::Pattern const*,void>,llvm::detail::DenseMapPair<mlir::Pattern const*,mlir::PatternBenefit>>::operator[](*a4, &v138);
      v99 = *v97;
      v100 = v98 >= v99;
      if (v98 >= v99)
      {
        v101 = v82;
      }

      else
      {
        v101 = a2;
      }

      if (!v100)
      {
        v92 = a2 - 8;
      }

      a2 = v92;
      if (v100)
      {
        v82 -= 8;
      }

      *(a3 - 1) = *(v101 - 1);
      a3 -= 8;
      v91 -= 8;
      if (v82 == a7)
      {
        return result;
      }
    }

    if (v82 != a7)
    {
      v119 = v82 - a7 - 8;
      if (v119 < 0x48 || (v82 - v91) < 0x20)
      {
        v120 = v82;
        goto LABEL_128;
      }

      v123 = (a3 - 16);
      v124 = (v119 >> 3) + 1;
      v125 = 8 * (v124 & 0x3FFFFFFFFFFFFFFCLL);
      v120 = &v82[-v125];
      a3 -= v125;
      v126 = (v82 - 16);
      v127 = v124 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        result = *v126;
        v123[-1] = v126[-1];
        *v123 = result;
        v123 -= 2;
        v126 -= 2;
        v127 -= 4;
      }

      while (v127);
      if (v124 != (v124 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_128:
        v121 = a3 - 8;
        do
        {
          v122 = *(v120 - 1);
          v120 -= 8;
          *v121 = v122;
          v121 -= 8;
        }

        while (v120 != a7);
      }
    }
  }

  return result;
}

void mlir::detail::PDLByteCodeMutableState::~PDLByteCodeMutableState(mlir::detail::PDLByteCodeMutableState *this)
{
  v2 = *(this + 21);
  if (v2)
  {
    *(this + 22) = v2;
    operator delete(v2);
  }

  v3 = *(this + 18);
  if (v3)
  {
    *(this + 19) = v3;
    operator delete(v3);
  }

  v4 = *(this + 15);
  if (v4)
  {
    v5 = *(this + 16);
    v6 = *(this + 15);
    if (v5 != v4)
    {
      do
      {
        v8 = *(v5 - 16);
        v5 -= 16;
        v7 = v8;
        if (v8)
        {
          operator delete[](v7);
        }
      }

      while (v5 != v4);
      v6 = *(this + 15);
    }

    *(this + 16) = v4;
    operator delete(v6);
  }

  v9 = *(this + 12);
  if (v9)
  {
    *(this + 13) = v9;
    operator delete(v9);
  }

  v10 = *(this + 9);
  if (v10)
  {
    v11 = *(this + 10);
    v12 = *(this + 9);
    if (v11 != v10)
    {
      do
      {
        v14 = *(v11 - 16);
        v11 -= 16;
        v13 = v14;
        if (v14)
        {
          operator delete[](v13);
        }
      }

      while (v11 != v10);
      v12 = *(this + 9);
    }

    *(this + 10) = v10;
    operator delete(v12);
  }

  v15 = *(this + 6);
  if (v15)
  {
    *(this + 7) = v15;
    operator delete(v15);
  }

  v16 = *(this + 3);
  if (v16)
  {
    v17 = *(this + 4);
    v18 = *(this + 3);
    if (v17 != v16)
    {
      do
      {
        v20 = *(v17 - 16);
        v17 -= 16;
        v19 = v20;
        if (v20)
        {
          operator delete[](v19);
        }
      }

      while (v17 != v16);
      v18 = *(this + 3);
    }

    *(this + 4) = v16;
    operator delete(v18);
  }

  v21 = *this;
  if (*this)
  {
    *(this + 1) = v21;
    operator delete(v21);
  }
}

void llvm::DenseMapBase<llvm::DenseMap<mlir::OperationName,llvm::SmallVector<mlir::RewritePattern const*,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::RewritePattern const*,2u>>>,mlir::OperationName,llvm::SmallVector<mlir::RewritePattern const*,2u>,llvm::DenseMapInfo<mlir::OperationName,void>,llvm::detail::DenseMapPair<mlir::OperationName,llvm::SmallVector<mlir::RewritePattern const*,2u>>>::moveFromOldBuckets(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = 40 * v6 - 40;
    if (v8 < 0x28)
    {
      v9 = *a1;
LABEL_7:
      v13 = &v7[5 * v6];
      do
      {
        *v9 = -4096;
        v9 += 5;
      }

      while (v9 != v13);
      goto LABEL_9;
    }

    v10 = v8 / 0x28 + 1;
    v9 = &v7[5 * (v10 & 0xFFFFFFFFFFFFFFELL)];
    v11 = *a1;
    v12 = v10 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v11 = -4096;
      v11[5] = -4096;
      v11 += 10;
      v12 -= 2;
    }

    while (v12);
    if (v10 != (v10 & 0xFFFFFFFFFFFFFFELL))
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
        v15 = *(a1 + 16) - 1;
        v16 = v15 & ((v14 >> 4) ^ (v14 >> 9));
        v17 = (*a1 + 40 * v16);
        v18 = *v17;
        if (v14 != *v17)
        {
          v20 = 0;
          v21 = 1;
          while (v18 != -4096)
          {
            if (v20)
            {
              v22 = 0;
            }

            else
            {
              v22 = v18 == -8192;
            }

            if (v22)
            {
              v20 = v17;
            }

            v23 = v16 + v21++;
            v16 = v23 & v15;
            v17 = (*a1 + 40 * (v23 & v15));
            v18 = *v17;
            if (v14 == *v17)
            {
              goto LABEL_14;
            }
          }

          if (v20)
          {
            v17 = v20;
          }
        }

LABEL_14:
        *v17 = v14;
        v17[1] = v17 + 3;
        v17[2] = 0x200000000;
        if (*(v4 + 4))
        {
          llvm::SmallVectorImpl<llvm::SMLoc>::operator=((v17 + 1), v4 + 1);
        }

        ++*(a1 + 8);
        v19 = v4[1];
        if (v19 != v4 + 3)
        {
          free(v19);
        }
      }

      v4 += 5;
    }

    while (v4 != a3);
  }
}

uint64_t mlir::MLIRContext::executeActionInternal<mlir::ApplyPatternAction,mlir::Pattern const&>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  {
    v16 = a3;
    v17 = a1;
    v14 = a6;
    v15 = a2;
    v12 = a4;
    v13 = a5;
    a4 = v12;
    a5 = v13;
    a6 = v14;
    a2 = v15;
    v9 = v8;
    a3 = v16;
    a1 = v17;
    if (v9)
    {
      v10 = llvm::getTypeName<mlir::ApplyPatternAction>();
      mlir::detail::TypeIDResolver<mlir::ApplyPatternAction,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v10, v11);
      a4 = v12;
      a5 = v13;
      a6 = v14;
      a2 = v15;
      a3 = v16;
      a1 = v17;
    }
  }

  v18[1] = v6[137];
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[0] = &unk_1F5B05EE0;
  return mlir::MLIRContext::executeActionInternal(a1, a2, a3, v18);
}

llvm::raw_ostream *mlir::ApplyPatternAction::print(mlir::ApplyPatternAction *this, llvm::raw_ostream *a2)
{
  result = a2;
  v4 = *(a2 + 4);
  if (*(a2 + 3) == v4)
  {
    v6 = *(result + 4);
    if (*(result + 3) - v6 <= 0xCuLL)
    {
LABEL_3:
      result = llvm::raw_ostream::write(result, "apply-pattern", 0xDuLL);
      v7 = *(result + 4);
      if ((*(result + 3) - v7) > 9)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    *v4 = 96;
    v5 = *(a2 + 3);
    v6 = (*(a2 + 4) + 1);
    *(a2 + 4) = v6;
    if ((v5 - v6) <= 0xC)
    {
      goto LABEL_3;
    }
  }

  qmemcpy(v6, "apply-pattern", 13);
  v14 = *(result + 3);
  v7 = *(result + 4) + 13;
  *(result + 4) = v7;
  if ((v14 - v7) > 9)
  {
LABEL_4:
    *(v7 + 8) = 8250;
    *v7 = *" pattern: ";
    v8 = (*(result + 4) + 10);
    *(result + 4) = v8;
    v9 = *(this + 4);
    v10 = *(v9 + 56);
    v11 = *(v9 + 64);
    if (v11 <= *(result + 3) - v8)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  result = llvm::raw_ostream::write(result, " pattern: ", 0xAuLL);
  v15 = *(this + 4);
  v10 = *(v15 + 56);
  v11 = *(v15 + 64);
  v8 = *(result + 4);
  if (v11 <= *(result + 3) - v8)
  {
LABEL_5:
    if (v11)
    {
      v12 = result;
      v13 = v11;
      result = memcpy(v8, v10, v11);
      *(v12 + 4) += v13;
    }

    return result;
  }

LABEL_11:

  return llvm::raw_ostream::write(result, v10, v11);
}

const char *llvm::getTypeName<mlir::ApplyPatternAction>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::ApplyPatternAction]";
  v6 = 74;
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

uint64_t llvm::function_ref<void ()(void)>::callback_fn<mlir::PatternApplicator::matchAndRewrite(mlir::Operation *,mlir::PatternRewriter &,llvm::function_ref<BOOL ()(mlir::Pattern const&)>,llvm::function_ref<void ()(mlir::Pattern const&)>,llvm::function_ref<llvm::LogicalResult ()(mlir::Pattern const&)>)::$_0>(uint64_t *a1, uint64_t a2)
{
  v3 = a1[5];
  v5 = *a1;
  v4 = a1[1];
  v6 = *(*v4 + 16);
  v7 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(*v4, a2);
  *(v5 + 24) = v6;
  *(v5 + 32) = v7;
  v8 = *a1[2];
  if (v8)
  {
    result = mlir::detail::PDLByteCode::rewrite(*a1[4], *a1, v8, *(v3 + 56));
    *a1[3] = result;
    if ((result & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_8:
    v12 = a1[7];
    if (*v12)
    {
      result = (*v12)(*(v12 + 8), *a1[6]);
      v13 = a1[3];
      if ((result & 1) == 0)
      {
        *v13 = 0;
        goto LABEL_13;
      }

      if ((*v13 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    *a1[8] = 1;
    return result;
  }

  v10 = *a1[6];
  if (v10)
  {
    v11 = v10 - 8;
  }

  else
  {
    v11 = 0;
  }

  result = (*(*v11 + 32))(v11, *a1[1], *a1);
  *a1[3] = result;
  if (result)
  {
    goto LABEL_8;
  }

LABEL_13:
  v14 = a1[9];
  v15 = *v14;
  if (*v14)
  {
    v16 = *a1[6];
    v17 = *(v14 + 8);

    return v15(v17, v16);
  }

  return result;
}

uint64_t mlir::scf::SCFDialect::initialize(int32x2_t *this)
{
  mlir::Dialect::addOperations<mlir::scf::ConditionOp,mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::ForallOp,mlir::scf::IfOp,mlir::scf::InParallelOp,mlir::scf::IndexSwitchOp,mlir::scf::ParallelOp,mlir::scf::ReduceOp,mlir::scf::ReduceReturnOp,mlir::scf::WhileOp,mlir::scf::YieldOp>(this);
  v2 = operator new(0x18uLL);
  {
    v6 = v2;
    mlir::arith::ArithDialect::initialize();
    v2 = v6;
  }

  v3 = mlir::detail::TypeIDResolver<mlir::DialectInlinerInterface,void>::resolveTypeID(void)::id;
  v2[1] = this;
  v2[2] = v3;
  *v2 = &unk_1F5B06A60;
  v8[0] = v2;
  mlir::Dialect::addInterface(this, v8);
  v4 = v8[0];
  v8[0] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferDeallocationOpInterface,mlir::scf::InParallelOp,mlir::scf::ReduceReturnOp>(this);
  mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::scf::ConditionOp,mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::ForallOp,mlir::scf::InParallelOp,mlir::scf::WhileOp,mlir::scf::YieldOp>(this);
  {
    mlir::scf::SCFDialect::initialize();
  }

  v7[0] = &mlir::detail::TypeIDResolver<mlir::scf::ForOp,void>::id;
  v7[1] = mlir::detail::TypeIDResolver<mlir::ValueBoundsOpInterface,void>::resolveTypeID(void)::id;
  return llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(&this[9], v7, v8);
}

int32x2_t *mlir::scf::SCFDialect::SCFDialect(int32x2_t *this, mlir::MLIRContext *a2)
{
  v3 = mlir::Dialect::Dialect(this, "scf", 3, a2, &mlir::detail::TypeIDResolver<mlir::scf::SCFDialect,void>::id);
  *v3 = &unk_1F5B05F48;
  v4 = v3[4];
  if (!mlir::MLIRContext::isDialectLoading(v4, "arith", 5))
  {
    v6 = v4;
    mlir::MLIRContext::getOrLoadDialect(v4, "arith", 5, &mlir::detail::TypeIDResolver<mlir::arith::ArithDialect,void>::id, llvm::function_ref<std::unique_ptr<mlir::Dialect> ()(void)>::callback_fn<mlir::arith::ArithDialect * mlir::MLIRContext::getOrLoadDialect<mlir::arith::ArithDialect>(void)::{lambda(void)#1}>, &v6);
  }

  mlir::scf::SCFDialect::initialize(this);
  return this;
}

void sub_1DFE11724(void *__p)
{

  operator delete(__p);
}

uint64_t mlir::Dialect::addOperations<mlir::scf::ConditionOp,mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::ForallOp,mlir::scf::IfOp,mlir::scf::InParallelOp,mlir::scf::IndexSwitchOp,mlir::scf::ParallelOp,mlir::scf::ReduceOp,mlir::scf::ReduceReturnOp,mlir::scf::WhileOp,mlir::scf::YieldOp>(uint64_t a1)
{
  mlir::RegisteredOperationName::insert<mlir::scf::ConditionOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::scf::ExecuteRegionOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::scf::ForOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::scf::ForallOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::scf::IfOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::scf::InParallelOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::scf::IndexSwitchOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::scf::ParallelOp>(a1);
  v2 = operator new(0x70uLL);
  v5 = mlir::RegisteredOperationName::Model<mlir::scf::ReduceOp>::Model(v2, a1);
  mlir::RegisteredOperationName::insert(&v5, 0, 0);
  v3 = v5;
  v5 = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  mlir::RegisteredOperationName::insert<mlir::scf::ReduceReturnOp>(a1);
  mlir::RegisteredOperationName::insert<mlir::scf::WhileOp>(a1);
  return mlir::RegisteredOperationName::insert<mlir::scf::YieldOp>(a1);
}

uint64_t mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferDeallocationOpInterface,mlir::scf::InParallelOp,mlir::scf::ReduceReturnOp>(uint64_t a1)
{
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferDeallocationOpInterface,mlir::scf::InParallelOp,mlir::scf::ReduceReturnOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::scf::InParallelOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferDeallocationOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 72, &v3, v5);
  {
    mlir::arith::ArithDialect::initialize();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::scf::ReduceReturnOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferDeallocationOpInterface,void>::resolveTypeID(void)::id;
  return llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 72, &v3, v5);
}

uint64_t mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::scf::ConditionOp,mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::ForallOp,mlir::scf::InParallelOp,mlir::scf::WhileOp,mlir::scf::YieldOp>(uint64_t a1)
{
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::scf::ConditionOp,mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::ForallOp,mlir::scf::InParallelOp,mlir::scf::WhileOp,mlir::scf::YieldOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::scf::ConditionOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 72, &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::scf::ConditionOp,mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::ForallOp,mlir::scf::InParallelOp,mlir::scf::WhileOp,mlir::scf::YieldOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::scf::ExecuteRegionOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 72, &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::scf::ConditionOp,mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::ForallOp,mlir::scf::InParallelOp,mlir::scf::WhileOp,mlir::scf::YieldOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::scf::ForOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 72, &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::scf::ConditionOp,mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::ForallOp,mlir::scf::InParallelOp,mlir::scf::WhileOp,mlir::scf::YieldOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 72, &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::scf::ConditionOp,mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::ForallOp,mlir::scf::InParallelOp,mlir::scf::WhileOp,mlir::scf::YieldOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::scf::IndexSwitchOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 72, &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::scf::ConditionOp,mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::ForallOp,mlir::scf::InParallelOp,mlir::scf::WhileOp,mlir::scf::YieldOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::scf::ForallOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 72, &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::scf::ConditionOp,mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::ForallOp,mlir::scf::InParallelOp,mlir::scf::WhileOp,mlir::scf::YieldOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::scf::InParallelOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 72, &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::scf::ConditionOp,mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::ForallOp,mlir::scf::InParallelOp,mlir::scf::WhileOp,mlir::scf::YieldOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::scf::WhileOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID(void)::id;
  llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 72, &v3, v5);
  {
    mlir::Dialect::declarePromisedInterfaces<mlir::bufferization::BufferizableOpInterface,mlir::scf::ConditionOp,mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::ForallOp,mlir::scf::InParallelOp,mlir::scf::WhileOp,mlir::scf::YieldOp>();
  }

  v3 = &mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id;
  v4 = mlir::detail::TypeIDResolver<mlir::bufferization::BufferizableOpInterface,void>::resolveTypeID(void)::id;
  return llvm::DenseMapBase<llvm::DenseMap<std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>,std::pair<mlir::TypeID,mlir::TypeID>,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<std::pair<mlir::TypeID,mlir::TypeID>,void>,llvm::detail::DenseSetPair<std::pair<mlir::TypeID,mlir::TypeID>>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1 + 72, &v3, v5);
}

uint64_t mlir::scf::ExecuteRegionOp::parse(uint64_t a1, mlir::OperationState *a2)
{
  if ((*(*a1 + 568))(a1, a2 + 64) & 1) != 0 && (v4 = mlir::OperationState::addRegion(a2), ((*(*a1 + 776))(a1, v4, 0, 0, 0)))
  {
    return (*(*a1 + 488))(a1, a2 + 112) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::scf::ExecuteRegionOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v4 = *(*this + 9);
  v5 = *this - 16;
  if (!v4)
  {
    v5 = 0;
  }

  v12[0] = v5;
  v12[1] = v4;
  mlir::OperandRange::getTypes(v12, v11);
  if (v11[1] != v11[3])
  {
    mlir::AsmPrinter::printArrowTypeList<mlir::ValueTypeRange<mlir::ResultRange> &>(a2, v11);
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

  (*(*a2 + 224))(a2, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10), 0, 1, 0);
  v11[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(v11);
  return (*(*a2 + 192))(a2, Value, v9, 0, 0);
}

BOOL mlir::scf::ExecuteRegionOp::verify(mlir::scf::ExecuteRegionOp *this)
{
  v31 = *MEMORY[0x1E69E9840];
  v1 = (((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40));
  if (*v1 == v1)
  {
    v20[0] = "region needs to have at least one block";
    v21 = 259;
    mlir::OpState::emitOpError(this, v20, v22);
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
        goto LABEL_41;
      }

      v16 = v26;
      v10 = v25;
      if (v26 == v25)
      {
        goto LABEL_40;
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
      goto LABEL_39;
    }
  }

  else
  {
    v2 = v1[1];
    if (v2)
    {
      v3 = v2 - 8;
    }

    else
    {
      v3 = 0;
    }

    if (((*(v3 + 56) - *(v3 + 48)) & 0x7FFFFFFF8) == 0)
    {
      return 1;
    }

    v20[0] = "region cannot have any arguments";
    v21 = 259;
    mlir::OpState::emitOpError(this, v20, v22);
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
        goto LABEL_41;
      }

      v9 = v26;
      v10 = v25;
      if (v26 == v25)
      {
LABEL_40:
        v26 = v8;
        operator delete(v10);
LABEL_41:
        if (v23 != &v24)
        {
          free(v23);
        }

        return v4;
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
LABEL_39:
      v10 = v25;
      goto LABEL_40;
    }
  }

  return v4;
}

unint64_t *mlir::scf::ConditionOp::getSuccessorRegions(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  v9 = *(*a1 + 48);
  v33[1] = *(*a1 + 56);
  v33[2] = v9;
  v34 = 1;
  v10 = *(v8 + 44);
  v11 = v10 & 0x7FFFFF;
  if ((v10 & 0x7FFFFF) != 0)
  {
    v12 = ((v8 + 16 * ((v10 >> 23) & 1) + ((v10 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v8 + 40);
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  mlir::ValueRange::ValueRange(&v35, v12, v11);
  v36 = a2;
  v37 = a3;
  v13 = *(*a1 + 16);
  if (v13)
  {
    ParentOp = mlir::Block::getParentOp(v13);
    v15 = *v36;
    if (*v36)
    {
      goto LABEL_6;
    }

LABEL_13:
    v33[0] = 0;
    goto LABEL_14;
  }

  ParentOp = 0;
  v15 = *a2;
  if (!v15)
  {
    goto LABEL_13;
  }

LABEL_6:
  if (mlir::BoolAttr::classof(v15))
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v33[0] = v16;
  if (v16 && !mlir::BoolAttr::getValue(v33))
  {
LABEL_20:
    if (v33[0])
    {
      goto LABEL_21;
    }

    goto LABEL_22;
  }

LABEL_14:
  v17 = ((&ParentOp[4 * ((ParentOp[11] >> 23) & 1) + 17] + ((ParentOp[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * ParentOp[10];
  v18 = v17 + 24;
  v32 = v17 + 24;
  if (*(v17 + 24) == v17 + 24)
  {
    v21 = 0;
    v22 = 0;
    v30 = 0;
    v31 = 0;
    v23 = *(a4 + 8);
    if (v23 < *(a4 + 12))
    {
LABEL_19:
      v24 = (*a4 + 24 * v23);
      *v24 = v18;
      mlir::ValueRange::ValueRange(v24 + 1, v21, v22);
      ++*(a4 + 8);
      goto LABEL_20;
    }
  }

  else
  {
    v19 = *(v17 + 32);
    if (v19)
    {
      v20 = v19 - 8;
    }

    else
    {
      v20 = 0;
    }

    v21 = *(v20 + 48);
    v22 = (*(v20 + 56) - v21) >> 3;
    v30 = v21;
    v31 = v22;
    v23 = *(a4 + 8);
    if (v23 < *(a4 + 12))
    {
      goto LABEL_19;
    }
  }

  llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>::growAndEmplaceBack<mlir::Region *,llvm::MutableArrayRef<mlir::BlockArgument>>(a4, &v32, &v30);
  if (v33[0])
  {
LABEL_21:
    result = mlir::BoolAttr::getValue(v33);
    if (result)
    {
      return result;
    }
  }

LABEL_22:
  v26 = ParentOp[9];
  if (v26)
  {
    v27 = (ParentOp - 4);
  }

  else
  {
    v27 = 0;
  }

  v30 = v27;
  v31 = v26;
  v28 = *(a4 + 8);
  if (v28 >= *(a4 + 12))
  {
    return llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>::growAndEmplaceBack<mlir::ResultRange>(a4, &v30);
  }

  v29 = (*a4 + 24 * v28);
  *v29 = 0;
  result = mlir::ValueRange::ValueRange(v29 + 1, v27, v26);
  ++*(a4 + 8);
  return result;
}

void *mlir::scf::ForOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a10)
{
  v35[2] = *MEMORY[0x1E69E9840];
  v15 = a1 + 16;
  v31 = *(a1 + 16);
  v32 = a3;
  v33 = a4;
  v34 = a5;
  mlir::ValueRange::ValueRange(v35, &v32, 3uLL);
  mlir::OperationState::addOperands(a2, v35[0], v35[1]);
  mlir::OperationState::addOperands(a2, a6, a7);
  v32 = a6;
  v33 = 0;
  if (a7)
  {
    v16 = 0;
    do
    {
      v17 = *(mlir::ValueRange::dereference_iterator(&v32, v16) + 8);
      v18 = *(a2 + 72);
      if (v18 >= *(a2 + 76))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v18 + 1, 8);
        v18 = *(a2 + 72);
      }

      *(*(a2 + 64) + 8 * v18) = v17 & 0xFFFFFFFFFFFFFFF8;
      ++*(a2 + 72);
      v16 = v33 + 1;
      v33 = v16;
    }

    while (v16 != a7);
  }

  v19 = *(a3 + 8);
  v20 = mlir::OperationState::addRegion(a2);
  mlir::ValueRange::ValueRange(&v32, 0, 0);
  Block = mlir::OpBuilder::createBlock(a1, v20, 0, v32, v33, 0, 0);
  mlir::Block::addArgument(Block, v19 & 0xFFFFFFFFFFFFFFF8, *a2);
  v32 = a6;
  v33 = 0;
  if (!a7)
  {
    if (!a9)
    {
      result = mlir::impl::ensureRegionTerminator(v20, a1, *a2, llvm::function_ref<mlir::Operation * ()(mlir::OpBuilder &,mlir::Location)>::callback_fn<mlir::Operation * ()(mlir::OpBuilder &,mlir::Location)>, mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl<mlir::scf::ForOp>::buildTerminator);
      v30 = v31;
      if (v31)
      {
        goto LABEL_14;
      }

      goto LABEL_16;
    }

    goto LABEL_12;
  }

  v22 = 0;
  do
  {
    v35[0] = mlir::ValueRange::dereference_iterator(&v32, v22);
    v23 = *(v35[0] + 8);
    Loc = mlir::Value::getLoc(v35);
    result = mlir::Block::addArgument(Block, v23 & 0xFFFFFFFFFFFFFFF8, Loc);
    v22 = v33 + 1;
    v33 = v22;
  }

  while (v22 != a7);
  if (a9)
  {
LABEL_12:
    v26 = Block[5];
    *(a1 + 16) = Block;
    *(a1 + 24) = v26;
    v27 = *a2;
    v28 = Block[6];
    v29 = *v28;
    mlir::ValueRange::ValueRange(&v32, (v28 + 1), ((Block[7] - v28) >> 3) - 1);
    result = a9(a10, a1, v27, v29, v32, v33);
  }

  v30 = v31;
  if (v31)
  {
LABEL_14:
    *v15 = v30;
    return result;
  }

LABEL_16:
  *v15 = 0;
  *(v15 + 8) = 0;
  return result;
}

BOOL mlir::scf::ForOp::verify(mlir::scf::ForOp *this)
{
  if ((*(*this + 46) & 0x80) != 0 && *(*this + 68) - 3 == *(*this + 36))
  {
    return 1;
  }

  v5 = v1;
  v6 = v2;
  mlir::scf::ForOp::verify(this, &v4);
  return v4;
}

BOOL mlir::scf::ForOp::verifyRegions(mlir::scf::ForOp *this)
{
  v98 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *(((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40) + 8);
  v4 = v3 - 8;
  if (!v3)
  {
    v4 = 0;
  }

  v5 = *(v4 + 48);
  v6 = *(v2 + 72);
  if ((*(*(v6 + 24) + 8) ^ *(*v5 + 8)) >= 8)
  {
    v82[0] = "expected induction variable to be same type as bounds and step";
    v83 = 259;
    mlir::OpState::emitOpError(this, v82, v87);
    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v87);
    if (v87[0])
    {
      mlir::InFlightDiagnostic::report(v87);
    }

    if (v97 == 1)
    {
      if (v96 != &v97)
      {
        free(v96);
      }

      v21 = __p;
      if (__p)
      {
        v22 = v95;
        v23 = __p;
        if (v95 != __p)
        {
          do
          {
            v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
          }

          while (v22 != v21);
          v23 = __p;
        }

        v95 = v21;
        operator delete(v23);
      }

      v24 = v92;
      if (!v92)
      {
        goto LABEL_99;
      }

      v25 = v93;
      v26 = v92;
      if (v93 == v92)
      {
        goto LABEL_98;
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
      goto LABEL_97;
    }
  }

  else
  {
    v7 = *(v4 + 56);
    v8 = ((v7 - v5) >> 3) - 1;
    if (v8 == *(v2 + 36))
    {
      v9 = *(v2 + 68);
      v10 = v2 - 16;
      if (((v7 - v5) >> 3) == 1)
      {
        v11 = 0;
      }

      else
      {
        v11 = v10;
      }

      v12 = 1;
      if (v9 != 3 && v5 + 8 != v7)
      {
        v13 = 0;
        v14 = v5 + 16;
        v15 = (v6 + 120);
        v16 = v9 - 4;
        while (1)
        {
          if (v8 == v13)
          {
            return 1;
          }

          v17 = *v15;
          NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v11, v13);
          v19 = *(v17 + 8) & 0xFFFFFFFFFFFFFFF8;
          if (v19 != (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8))
          {
            break;
          }

          if ((*(*(v5 + 8 * v13 + 8) + 8) & 0xFFFFFFFFFFFFFFF8) != v19)
          {
            v83 = 257;
            mlir::OpState::emitOpError(this, v82, v87);
            if (v87[0])
            {
              v84 = 3;
              v85 = "types mismatch between ";
              v86 = 23;
              v55 = &v84;
              v56 = v88;
              if (v89 >= v90)
              {
                if (v88 <= &v84 && v88 + 24 * v89 > &v84)
                {
                  v77 = &v84 - v88;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v91, v89 + 1, 24);
                  v56 = v88;
                  v55 = (v88 + v77);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v91, v89 + 1, 24);
                  v55 = &v84;
                  v56 = v88;
                }
              }

              v57 = &v56[24 * v89];
              v58 = *v55;
              *(v57 + 2) = *(v55 + 2);
              *v57 = v58;
              v59 = ++v89;
              if (v87[0])
              {
                v84 = 5;
                v85 = v13;
                v60 = &v84;
                v61 = v88;
                if (v59 >= v90)
                {
                  if (v88 <= &v84 && v88 + 24 * v59 > &v84)
                  {
                    v79 = &v84 - v88;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v91, v59 + 1, 24);
                    v61 = v88;
                    v60 = (v88 + v79);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v91, v59 + 1, 24);
                    v60 = &v84;
                    v61 = v88;
                  }
                }

                v62 = &v61[24 * v89];
                v63 = *v60;
                *(v62 + 2) = *(v60 + 2);
                *v62 = v63;
                v64 = ++v89;
                if (v87[0])
                {
                  v84 = 3;
                  v85 = "th iter region arg and defined value";
                  v86 = 36;
                  v65 = &v84;
                  v66 = v88;
                  if (v64 >= v90)
                  {
                    if (v88 <= &v84 && v88 + 24 * v64 > &v84)
                    {
                      v81 = &v84 - v88;
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v91, v64 + 1, 24);
                      v66 = v88;
                      v65 = (v88 + v81);
                    }

                    else
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v91, v64 + 1, 24);
                      v65 = &v84;
                      v66 = v88;
                    }
                  }

                  v67 = &v66[24 * v89];
                  v68 = *v65;
                  *(v67 + 2) = *(v65 + 2);
                  *v67 = v68;
                  ++v89;
                }
              }
            }

            v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v87);
            if (v87[0])
            {
              mlir::InFlightDiagnostic::report(v87);
            }

            if (v97 != 1)
            {
              return v12;
            }

            if (v96 != &v97)
            {
              free(v96);
            }

            v69 = __p;
            if (__p)
            {
              v70 = v95;
              v71 = __p;
              if (v95 != __p)
              {
                do
                {
                  v70 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v70 - 1);
                }

                while (v70 != v69);
                v71 = __p;
              }

              v95 = v69;
              operator delete(v71);
            }

            v24 = v92;
            if (!v92)
            {
              goto LABEL_99;
            }

            v72 = v93;
            v26 = v92;
            if (v93 == v92)
            {
              goto LABEL_98;
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

            while (v72 != v24);
            goto LABEL_97;
          }

          v12 = 1;
          if (v16 != v13)
          {
            ++v13;
            v15 += 4;
            v20 = v14 == v7;
            v14 += 8;
            if (!v20)
            {
              continue;
            }
          }

          return v12;
        }

        v83 = 257;
        mlir::OpState::emitOpError(this, v82, v87);
        if (v87[0])
        {
          v84 = 3;
          v85 = "types mismatch between ";
          v86 = 23;
          v35 = &v84;
          v36 = v88;
          if (v89 >= v90)
          {
            if (v88 <= &v84 && v88 + 24 * v89 > &v84)
            {
              v76 = &v84 - v88;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v91, v89 + 1, 24);
              v36 = v88;
              v35 = (v88 + v76);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v91, v89 + 1, 24);
              v35 = &v84;
              v36 = v88;
            }
          }

          v37 = &v36[24 * v89];
          v38 = *v35;
          *(v37 + 2) = *(v35 + 2);
          *v37 = v38;
          v39 = ++v89;
          if (v87[0])
          {
            v84 = 5;
            v85 = v13;
            v40 = &v84;
            v41 = v88;
            if (v39 >= v90)
            {
              if (v88 <= &v84 && v88 + 24 * v39 > &v84)
              {
                v78 = &v84 - v88;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v91, v39 + 1, 24);
                v41 = v88;
                v40 = (v88 + v78);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v91, v39 + 1, 24);
                v40 = &v84;
                v41 = v88;
              }
            }

            v42 = &v41[24 * v89];
            v43 = *v40;
            *(v42 + 2) = *(v40 + 2);
            *v42 = v43;
            v44 = ++v89;
            if (v87[0])
            {
              v84 = 3;
              v85 = "th iter operand and defined value";
              v86 = 33;
              v45 = &v84;
              v46 = v88;
              if (v44 >= v90)
              {
                if (v88 <= &v84 && v88 + 24 * v44 > &v84)
                {
                  v80 = &v84 - v88;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v91, v44 + 1, 24);
                  v46 = v88;
                  v45 = (v88 + v80);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, v91, v44 + 1, 24);
                  v45 = &v84;
                  v46 = v88;
                }
              }

              v47 = &v46[24 * v89];
              v48 = *v45;
              *(v47 + 2) = *(v45 + 2);
              *v47 = v48;
              ++v89;
            }
          }
        }

        v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v87);
        if (v87[0])
        {
          mlir::InFlightDiagnostic::report(v87);
        }

        if (v97 != 1)
        {
          return v12;
        }

        if (v96 != &v97)
        {
          free(v96);
        }

        v49 = __p;
        if (__p)
        {
          v50 = v95;
          v51 = __p;
          if (v95 != __p)
          {
            do
            {
              v50 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v50 - 1);
            }

            while (v50 != v49);
            v51 = __p;
          }

          v95 = v49;
          operator delete(v51);
        }

        v24 = v92;
        if (!v92)
        {
          goto LABEL_99;
        }

        v52 = v93;
        v26 = v92;
        if (v93 == v92)
        {
          goto LABEL_98;
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

        while (v52 != v24);
        goto LABEL_97;
      }
    }

    else
    {
      v82[0] = "mismatch in number of basic block args and defined values";
      v83 = 259;
      mlir::OpState::emitOpError(this, v82, v87);
      v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v87);
      if (v87[0])
      {
        mlir::InFlightDiagnostic::report(v87);
      }

      if (v97 == 1)
      {
        if (v96 != &v97)
        {
          free(v96);
        }

        v29 = __p;
        if (__p)
        {
          v30 = v95;
          v31 = __p;
          if (v95 != __p)
          {
            do
            {
              v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
            }

            while (v30 != v29);
            v31 = __p;
          }

          v95 = v29;
          operator delete(v31);
        }

        v24 = v92;
        if (!v92)
        {
          goto LABEL_99;
        }

        v32 = v93;
        v26 = v92;
        if (v93 == v92)
        {
LABEL_98:
          v93 = v24;
          operator delete(v26);
LABEL_99:
          if (v88 != v91)
          {
            free(v88);
          }

          return v12;
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
LABEL_97:
        v26 = v92;
        goto LABEL_98;
      }
    }
  }

  return v12;
}

uint64_t mlir::scf::ForOp::getRegionIterArgs(mlir::scf::ForOp *this)
{
  v1 = *(((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40) + 8);
  if (v1)
  {
    v2 = v1 - 8;
  }

  else
  {
    v2 = 0;
  }

  return *(v2 + 48) + 8;
}

uint64_t mlir::scf::ForOp::promoteIfSingleIteration(mlir::scf::ForOp *this, mlir::RewriterBase *a2)
{
  v25[5] = *MEMORY[0x1E69E9840];
  v5 = mlir::constantTripCount(*(*(*this + 72) + 24) | 4, *(*(*this + 72) + 56) | 4, *(*(*this + 72) + 88) | 4);
  result = 0;
  if ((v4 & 1) != 0 && v5 == 1)
  {
    v7 = *(((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40) + 8);
    if (v7)
    {
      v8 = (v7 - 8);
    }

    else
    {
      v8 = 0;
    }

    Terminator = mlir::Block::getTerminator(v8, v4);
    v10 = *(*this + 36);
    if (v10)
    {
      v11 = *this - 16;
    }

    else
    {
      v11 = 0;
    }

    mlir::ValueRange::ValueRange(&v22, v11, v10);
    YieldedValues = mlir::detail::LoopLikeOpInterfaceTrait<mlir::scf::ForOp>::getYieldedValues(this, v12);
    mlir::RewriterBase::replaceAllUsesWith(a2, v22, v23, YieldedValues, v14);
    v22 = &v24;
    v15 = *this;
    v16 = *(*this + 72);
    v24 = *(v16 + 24);
    v23 = 0x600000001;
    llvm::SmallVectorImpl<mlir::Value>::insert<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v22, v25, v16 + 96, 0, v16 + 96, *(v15 + 68) - 3);
    v17 = *this;
    v18 = *(((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40) + 8);
    if (v18)
    {
      v19 = v18 - 8;
    }

    else
    {
      v19 = 0;
    }

    v20 = *(v17 + 16);
    mlir::ValueRange::ValueRange(v21, v22, v23);
    (*(*a2 + 32))(a2, v19, v20, v17, v21[0], v21[1]);
    (*(*a2 + 16))(a2, Terminator);
    (*(*a2 + 16))(a2, *this);
    if (v22 != &v24)
    {
      free(v22);
    }

    return 1;
  }

  return result;
}

void *printInitializationList(void *result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, size_t a7)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v13 = result;
    v14 = (*(*result + 16))(result);
    if (a7 <= *(v14 + 24) - *(v14 + 32))
    {
      if (a7)
      {
        v15 = v14;
        memcpy(*(v14 + 32), a6, a7);
        *(v15 + 32) += a7;
      }
    }

    else
    {
      llvm::raw_ostream::write(v14, a6, a7);
    }

    v16 = (*(*v13 + 16))(v13);
    v17 = *(v16 + 4);
    if (v17 >= *(v16 + 3))
    {
      llvm::raw_ostream::write(v16, 40);
      v29 = a2;
      v31 = a4;
      v32 = 0;
      if (!a3)
      {
        goto LABEL_23;
      }
    }

    else
    {
      *(v16 + 4) = v17 + 1;
      *v17 = 40;
      v29 = a2;
      v31 = a4;
      v32 = 0;
      if (!a3)
      {
LABEL_23:
        result = (*(*v13 + 16))(v13);
        v28 = result[4];
        if (result[3] == v28)
        {
          return llvm::raw_ostream::write(result, ")", 1uLL);
        }

        *v28 = 41;
        ++result[4];
        return result;
      }
    }

    v18 = &a2[a3];
    v19 = mlir::ValueRange::dereference_iterator(&v31, 0);
    (*(*v13 + 160))(v13, *a2);
    v20 = (*(*v13 + 16))(v13);
    v21 = v20[4];
    if ((v20[3] - v21) > 2)
    {
      *(v21 + 2) = 32;
      *v21 = 15648;
      v20[4] += 3;
    }

    else
    {
      llvm::raw_ostream::write(v20, " = ", 3uLL);
    }

    (*(*v13 + 160))(v13, v19);
    v22 = v32 + 1;
    v30 = v29 + 1;
    ++v32;
    for (; v30 != v18; ++v32)
    {
      if (v22 == a5)
      {
        break;
      }

      v23 = (*(*v13 + 16))(v13);
      v24 = v23[4];
      if (v23[3] - v24 > 1uLL)
      {
        *v24 = 8236;
        v23[4] += 2;
      }

      else
      {
        llvm::raw_ostream::write(v23, ", ", 2uLL);
      }

      v25 = mlir::ValueRange::dereference_iterator(&v31, v32);
      (*(*v13 + 160))(v13, *v30);
      v26 = (*(*v13 + 16))(v13);
      v27 = v26[4];
      if ((v26[3] - v27) > 2)
      {
        *(v27 + 2) = 32;
        *v27 = 15648;
        v26[4] += 3;
      }

      else
      {
        llvm::raw_ostream::write(v26, " = ", 3uLL);
      }

      (*(*v13 + 160))(v13, v25);
      v22 = v32 + 1;
      ++v30;
    }

    goto LABEL_23;
  }

  return result;
}

uint64_t mlir::scf::ForOp::parse(uint64_t a1, uint64_t a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = (*(*a1 + 32))(a1);
  v32 = 0;
  memset(v29, 0, 24);
  v31 = 0;
  v29[4] = 0;
  v29[5] = 0;
  v30 = 0;
  memset(v28, 0, 24);
  memset(v27, 0, 24);
  memset(v26, 0, 24);
  if (((*(*a1 + 704))(a1, v29, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 136))(a1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 704))(a1, v28, 1) & 1) == 0)
  {
    return 0;
  }

  v40 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, &v37) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 704))(a1, v27, 1) & 1) == 0)
  {
    return 0;
  }

  v40 = 257;
  if (((*(*a1 + 400))(a1, "step", 4, &v37) & 1) == 0 || ((*(*a1 + 704))(a1, v26, 1) & 1) == 0)
  {
    return 0;
  }

  v37 = v39;
  v38 = 0x400000000;
  v34 = v36;
  v35 = 0x400000000;
  v5 = llvm::SmallVectorTemplateBase<mlir::OpAsmParser::Argument,true>::push_back(&v37, v29);
  v6 = (*(*a1 + 408))(a1, "iter_args", 9, v5);
  if ((v6 & 1) != 0 && ((mlir::OpAsmParser::parseAssignmentList(a1) & 1) == 0 || ((*(*a1 + 560))(a1, a2 + 64) & 1) == 0))
  {
    goto LABEL_34;
  }

  if (*(a2 + 72) + 1 == v38)
  {
    if ((*(*a1 + 112))(a1))
    {
      if (((*(*a1 + 536))(a1, &v32) & 1) == 0)
      {
        goto LABEL_34;
      }

      IndexType = v32;
    }

    else
    {
      IndexType = mlir::Builder::getIndexType(v4, v7);
      v32 = IndexType;
    }

    *(v37 + 4) = IndexType;
    if ((*(*a1 + 728))(a1, v28) & 1) != 0 && ((*(*a1 + 728))(a1, v27, v32, a2 + 16) & 1) != 0 && ((*(*a1 + 728))(a1, v26, v32, a2 + 16))
    {
      if ((v6 & 1) != 0 && v38 != 1)
      {
        if (v35)
        {
          v12 = *(a2 + 72);
          if (v12)
          {
            v13 = 0;
            v14 = v34;
            v15 = *(a2 + 64);
            v22 = (v38 << 6) - 128;
            v23 = v37 + 96;
            v16 = (v12 << 6) - 64;
            v17 = (v35 << 6) - 64;
            while (1)
            {
              *&v23[v13] = *v15;
              if (((*(*a1 + 728))(a1, v14) & 1) == 0)
              {
                goto LABEL_34;
              }

              if (v22 != v13 && v17 != v13)
              {
                v14 += 32;
                ++v15;
                v18 = v16 == v13;
                v13 += 64;
                if (!v18)
                {
                  continue;
                }
              }

              break;
            }
          }
        }
      }

      v19 = mlir::OperationState::addRegion(a2);
      if ((*(*a1 + 776))(a1, v19, v37, v38, 0))
      {
        mlir::impl::ensureRegionTerminator(v19, v4, *a2, llvm::function_ref<mlir::Operation * ()(mlir::OpBuilder &,mlir::Location)>::callback_fn<mlir::Operation * ()(mlir::OpBuilder &,mlir::Location)>, mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl<mlir::scf::ForOp>::buildTerminator);
        result = (*(*a1 + 488))(a1, a2 + 112) & 1;
        goto LABEL_35;
      }
    }

LABEL_34:
    result = 0;
    goto LABEL_35;
  }

  v10 = (*(*a1 + 16))(a1);
  v24 = "mismatch in number of loop-carried values and defined values";
  v25 = 259;
  (*(*a1 + 24))(v33, a1, v10, &v24);
  v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v33);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v33);
  result = v11;
LABEL_35:
  if (v34 != v36)
  {
    v20 = result;
    free(v34);
    result = v20;
  }

  if (v37 != v39)
  {
    v21 = result;
    free(v37);
    return v21;
  }

  return result;
}

__n128 llvm::SmallVectorTemplateBase<mlir::OpAsmParser::Argument,true>::push_back(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *a1;
  if (v2 >= *(a1 + 12))
  {
    v8 = a2;
    if (v3 <= a2 && v3 + (v2 << 6) > a2)
    {
      v11 = a2 - v3;
      v12 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v2 + 1, 64);
      a1 = v12;
      v3 = *v12;
      a2 = *v12 + v11;
    }

    else
    {
      v10 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v2 + 1, 64);
      a1 = v10;
      v3 = *v10;
      a2 = v8;
    }
  }

  v4 = v3 + (*(a1 + 8) << 6);
  result = *a2;
  v6 = *(a2 + 16);
  v7 = *(a2 + 48);
  *(v4 + 32) = *(a2 + 32);
  *(v4 + 48) = v7;
  *v4 = result;
  *(v4 + 16) = v6;
  ++*(a1 + 8);
  return result;
}

uint64_t mlir::OpAsmParser::parseAssignmentList(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = (*(*a1 + 824))(a1);
  if ((v2 & 0x100) == 0)
  {
    v3 = (*(*a1 + 40))(a1);
    v13 = "expected '('";
    v14 = 259;
    (*(*a1 + 24))(v15, a1, v3, &v13);
    v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
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

  return v2;
}

void mlir::scf::ForOp::replaceWithAdditionalYields(mlir::Operation **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, unint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v112[3] = *MEMORY[0x1E69E9840];
  v11 = (a2 + 24);
  v99 = *(a2 + 24);
  v12 = *a1;
  v13 = *(v12 + 2);
  v14 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v12, a2);
  *v11 = v13;
  v11[1] = v14;
  v15 = *a1;
  if ((*(*a1 + 46) & 0x80) == 0)
  {
    v102 = v104;
    v103 = 0x600000000;
    v17 = -3;
    v18 = 96;
LABEL_3:
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v102, v104, v17, 8);
    v20 = v103;
    v19 = v102;
    v21 = v102 + 8 * v103;
    if (v17 < 0xD)
    {
      goto LABEL_17;
    }

LABEL_7:
    v22 = &v19[8 * v17 + 8 * v20];
    if (v21 >= v18 + 32 * v17 || v18 + 24 >= v22)
    {
      v24 = v17 & 3;
      if ((v17 & 3) == 0)
      {
        v24 = 4;
      }

      v25 = v17 - v24;
      v26 = &v21[8 * v25];
      v27 = (v18 + 88);
      v28 = (v21 + 16);
      v29 = v25;
      do
      {
        v30 = v27 - 8;
        v31 = vld4q_f64(v30);
        v32 = vld4q_f64(v27);
        *(v28 - 1) = v31;
        *v28 = v32;
        v27 += 16;
        v28 += 2;
        v29 -= 4;
      }

      while (v29);
      v21 = v26;
LABEL_18:
      v33 = v17 - v25;
      v34 = (v18 + 32 * v25 + 24);
      do
      {
        v35 = *v34;
        v34 += 4;
        *v21 = v35;
        v21 += 8;
        --v33;
      }

      while (v33);
      v36 = v103 + v17;
      LODWORD(v103) = v36;
      v37 = v36;
      v38 = a4 + v36;
      if (v38 > HIDWORD(v103))
      {
        goto LABEL_21;
      }

      goto LABEL_22;
    }

LABEL_17:
    v25 = 0;
    goto LABEL_18;
  }

  v16 = *(v15 + 17);
  v17 = v16 - 3;
  v18 = *(v15 + 9) + 96;
  v19 = v104;
  v102 = v104;
  v103 = 0x600000000;
  if ((v16 - 3) >= 7)
  {
    goto LABEL_3;
  }

  if (v16 != 3)
  {
    v20 = 0;
    v21 = v104;
    if (v17 < 0xD)
    {
      goto LABEL_17;
    }

    goto LABEL_7;
  }

  v36 = 0;
  LODWORD(v103) = 0;
  v37 = 0;
  v38 = a4;
  if (a4 > 6)
  {
LABEL_21:
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v102, v104, v38, 8);
    v37 = v103;
    v36 = v103;
  }

LABEL_22:
  v105 = a3;
  v106 = 0;
  if (a4)
  {
    v39 = 0;
    v40 = (v102 + 8 * v37);
    do
    {
      *v40++ = mlir::ValueRange::dereference_iterator(&v105, v39);
      v39 = v106 + 1;
      v106 = v39;
    }

    while (v39 != a4);
    v36 = v103;
  }

  v94 = a3;
  LODWORD(v103) = v36 + a4;
  v41 = *(*a1 + 3);
  v42 = *(*a1 + 9);
  v43 = v42[3];
  v44 = v42[7];
  v45 = v42[11];
  v101 = v41;
  Context = mlir::Attribute::getContext(&v101);
  v47 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::ForOp,void>::id, Context);
  if ((v48 & 1) == 0)
  {
    mlir::scf::ForOp::replaceWithAdditionalYields(&v105, &v109, v108);
  }

  v100 = v11;
  mlir::OperationState::OperationState(&v105, v41, v47);
  mlir::ValueRange::ValueRange(&v109, v102, v103);
  mlir::scf::ForOp::build((v11 - 2), &v105, v43, v44, v45, v109, v110, v49, llvm::function_ref<void ()(mlir::OpBuilder &,mlir::Location,mlir::Value,mlir::ValueRange)>::callback_fn<mlir::scf::ForOp::replaceWithAdditionalYields(mlir::RewriterBase &,mlir::ValueRange,BOOL,std::function<llvm::SmallVector<mlir::Value,6u> ()(mlir::OpBuilder &,mlir::Location,llvm::ArrayRef<mlir::BlockArgument>)> const&)::$_0>, v108);
  v50 = mlir::OpBuilder::create((v11 - 2), &v105);
  v51 = *(*(v50 + 48) + 16);
  mlir::OperationState::~OperationState(&v105);
  if (v51 == &mlir::detail::TypeIDResolver<mlir::scf::ForOp,void>::id)
  {
    v52 = v50;
  }

  else
  {
    v52 = 0;
  }

  v101 = v52;
  mlir::getPrunedAttributeList(*a1, 0, 0, &v105);
  mlir::Operation::setAttrs(v52, v105, v106);
  if (v105 != v107)
  {
    free(v105);
  }

  v54 = *(((*a1 + 16 * ((*(*a1 + 11) >> 23) & 1) + ((*(*a1 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 10) + 8);
  if (v54)
  {
    v55 = (v54 - 8);
  }

  else
  {
    v55 = 0;
  }

  Terminator = mlir::Block::getTerminator(v55, v53);
  v58 = Terminator;
  v59 = *(((v52 + 64 + 16 * ((*(v52 + 44) >> 23) & 1) + ((*(v52 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v52 + 40) + 8);
  if (v59)
  {
    v60 = v59 - 8;
  }

  else
  {
    v60 = 0;
  }

  v61 = *(v60 + 48);
  v62 = (*(v60 + 56) - v61) >> 3;
  v63 = a1;
  if (v62 <= a4)
  {
    v64 = v61;
  }

  else
  {
    v64 = v61 + 8 * (v62 - a4);
  }

  if (v62 >= a4)
  {
    v65 = a4;
  }

  else
  {
    v65 = v62;
  }

  v95 = *(a2 + 24);
  v66 = *(Terminator + 16);
  v67 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(Terminator, v57);
  *(a2 + 24) = v66;
  *(a2 + 32) = v67;
  v108[0] = *(*v63 + 3);
  v93 = v64;
  v109 = v64;
  v110 = v65;
  v68 = *(a6 + 24);
  if (v68)
  {
    (*(*v68 + 48))(&v105);
    (*(*a2 + 40))(a2, v58);
    if ((*(v58 + 46) & 0x80) != 0)
    {
      v69 = *(v58 + 68);
    }

    else
    {
      v69 = 0;
    }

    v70 = v63;
    mlir::MutableOperandRange::MutableOperandRange(&v109, v58, 0, v69, 0, 0);
    mlir::ValueRange::ValueRange(v108, v105, v106);
    mlir::MutableOperandRange::append(&v109, v108[0], v108[1]);
    if (v111 != v112)
    {
      free(v111);
    }

    (*(*a2 + 48))(a2, v58);
    if (v105 != v107)
    {
      free(v105);
    }

    if (v95)
    {
      *v100 = v95;
    }

    else
    {
      *v100 = 0;
      v100[1] = 0;
    }

    v71 = *(((*v63 + 16 * ((*(*v63 + 11) >> 23) & 1) + ((*(*v63 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*v63 + 10) + 8);
    if (v71)
    {
      v72 = v71 - 8;
    }

    else
    {
      v72 = 0;
    }

    v73 = *(((v52 + 64 + 16 * ((*(v52 + 44) >> 23) & 1) + ((*(v52 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v52 + 40) + 8);
    if (v73)
    {
      v74 = v73 - 8;
    }

    else
    {
      v74 = 0;
    }

    v75 = *(v74 + 48);
    v76 = *(v72 + 48);
    if ((*(v74 + 56) - v75) >> 3 >= ((*(v72 + 56) - v76) >> 3))
    {
      v77 = ((*(v72 + 56) - v76) >> 3);
    }

    else
    {
      v77 = (*(v74 + 56) - v75) >> 3;
    }

    mlir::ValueRange::ValueRange(&v105, v75, v77);
    mlir::RewriterBase::mergeBlocks(a2, v72, v74, v105, v106);
    if (a5)
    {
      v105 = v94;
      v106 = 0;
      v107[0] = v93;
      v78 = v100;
      if (a4 && v65)
      {
        v79 = 0;
        do
        {
          v80 = mlir::ValueRange::dereference_iterator(&v105, v79);
          v81 = *v107[0];
          v109 = &v101;
          mlir::RewriterBase::replaceUsesWithIf(a2, v80, v81, llvm::function_ref<BOOL ()(mlir::OpOperand &)>::callback_fn<mlir::scf::ForOp::replaceWithAdditionalYields(mlir::RewriterBase &,mlir::ValueRange,BOOL,std::function<llvm::SmallVector<mlir::Value,6u> ()(mlir::OpBuilder &,mlir::Location,llvm::ArrayRef<mlir::BlockArgument>)> const&)::$_2>, &v109, 0);
          v79 = v106 + 1;
          v82 = v107[0] + 8;
          v106 = v79;
          v107[0] += 8;
        }

        while (v79 != a4 && v82 != v93 + 8 * v65);
        v50 = v101;
      }
    }

    else
    {
      v78 = v100;
    }

    v84 = *v70;
    v85 = *(v50 + 36);
    if (v85)
    {
      v86 = v50 - 16;
    }

    else
    {
      v86 = 0;
    }

    v87 = *(v84 + 9);
    if (v85 >= v87)
    {
      v88 = v87;
    }

    else
    {
      v88 = v85;
    }

    mlir::ValueRange::ValueRange(&v105, v86, v88);
    (**a2)(a2, v84, v105, v106);
    v89 = v101;
    if (v101)
    {
      InterfaceFor = mlir::OpInterface<mlir::LoopLikeOpInterface,mlir::detail::LoopLikeOpInterfaceInterfaceTraits>::getInterfaceFor(v101);
    }

    else
    {
      InterfaceFor = 0;
    }

    v91 = v99;
    *a7 = v89;
    *(a7 + 8) = InterfaceFor;
    *(a7 + 16) = 1;
    if (v102 != v104)
    {
      free(v102);
      v91 = v99;
    }

    if (v91)
    {
      *v78 = v91;
    }

    else
    {
      *v78 = 0;
      v78[1] = 0;
    }
  }

  else
  {
    v92 = std::__throw_bad_function_call[abi:nn200100]();
    mlir::scf::ForOp::getSuccessorRegions(v92);
  }
}

__n128 mlir::scf::ForOp::getSuccessorRegions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24[2] = *MEMORY[0x1E69E9840];
  v5 = *(((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40) + 8);
  if (v5)
  {
    v6 = v5 - 8;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v6 + 48);
  v8 = ((*(v6 + 56) - v7) >> 3) - 1;
  v23 = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
  v9 = &v23;
  mlir::ValueRange::ValueRange(v24, v7 + 8, v8);
  v10 = *(a3 + 8);
  v11 = *a3;
  if (v10 < *(a3 + 12))
  {
    goto LABEL_5;
  }

  if (v11 > &v23 || v11 + 24 * v10 <= &v23)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, v10 + 1, 24);
    v11 = *a3;
LABEL_5:
    v12 = &v23;
    goto LABEL_6;
  }

  v21 = &v24[-1] - v11;
  llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, v10 + 1, 24);
  v11 = *a3;
  v12 = &v21[*a3];
LABEL_6:
  v13 = v11 + 24 * *(a3 + 8);
  v14 = *v12;
  *(v13 + 16) = v12[2];
  *v13 = v14;
  ++*(a3 + 8);
  v15 = *(*a1 + 36);
  if (v15)
  {
    v16 = *a1 - 16;
  }

  else
  {
    v16 = 0;
  }

  v23 = 0;
  mlir::ValueRange::ValueRange(v24, v16, v15);
  v17 = *(a3 + 8);
  v18 = *a3;
  if (v17 >= *(a3 + 12))
  {
    if (v18 <= &v23 && v18 + 24 * v17 > &v23)
    {
      v22 = &v24[-1] - v18;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, v17 + 1, 24);
      v18 = *a3;
      v9 = &v22[*a3];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, v17 + 1, 24);
      v18 = *a3;
      v9 = &v23;
    }
  }

  v19 = (v18 + 24 * *(a3 + 8));
  result = *v9;
  v19[1].n128_u64[0] = v9[1].n128_u64[0];
  *v19 = result;
  ++*(a3 + 8);
  return result;
}

uint64_t mlir::scf::ForallOp::promoteIfSingleIteration(mlir::scf::ForallOp *this, mlir::RewriterBase *a2)
{
  v3 = this;
  v50[6] = *MEMORY[0x1E69E9840];
  mlir::scf::ForallOp::getLoopLowerBounds(this, &__src);
  __dst = v41;
  v40 = 0x600000000;
  v4 = v43;
  if (v43)
  {
    v5 = v41;
    v6 = v43;
    if (v43 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v41, v43, 8);
      v6 = v43;
      if (!v43)
      {
LABEL_6:
        LODWORD(v40) = v4;
        goto LABEL_7;
      }

      v5 = __dst;
    }

    memcpy(v5, __src, 8 * v6);
    goto LABEL_6;
  }

LABEL_7:
  if (v45 == 1 && __src != v44)
  {
    free(__src);
  }

  mlir::scf::ForallOp::getLoopUpperBounds(v3, &__src);
  v36 = v38;
  v37 = 0x600000000;
  v7 = v43;
  if (v43)
  {
    v8 = v38;
    v9 = v43;
    if (v43 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v36, v38, v43, 8);
      v9 = v43;
      if (!v43)
      {
LABEL_15:
        LODWORD(v37) = v7;
        goto LABEL_16;
      }

      v8 = v36;
    }

    memcpy(v8, __src, 8 * v9);
    goto LABEL_15;
  }

LABEL_16:
  if (v45 == 1 && __src != v44)
  {
    free(__src);
  }

  mlir::scf::ForallOp::getLoopSteps(v3, &__src);
  v33 = v35;
  v34 = 0x600000000;
  v10 = v43;
  if (v43)
  {
    v11 = v35;
    v12 = v43;
    if (v43 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v35, v43, 8);
      v12 = v43;
      if (!v43)
      {
LABEL_24:
        LODWORD(v34) = v10;
        goto LABEL_25;
      }

      v11 = v33;
    }

    memcpy(v11, __src, 8 * v12);
    goto LABEL_24;
  }

LABEL_25:
  if (v45 == 1 && __src != v44)
  {
    free(__src);
  }

  __src = v44;
  v43 = 0x600000000;
  v13 = v40;
  if (v40)
  {
    if (__dst == v41)
    {
      v14 = v40;
      if (v40 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v44, v40, 8), (v14 = v40) != 0))
      {
        memcpy(__src, __dst, 8 * v14);
      }

      LODWORD(v43) = v13;
    }

    else
    {
      __src = __dst;
      v43 = v40;
      __dst = v41;
      HIDWORD(v40) = 0;
    }

    LODWORD(v40) = 0;
  }

  v45 = v47;
  v46 = 0x600000000;
  v15 = v37;
  if (v37)
  {
    if (v36 != v38)
    {
      v45 = v36;
      v46 = v37;
      v36 = v38;
      HIDWORD(v37) = 0;
LABEL_45:
      LODWORD(v37) = 0;
      goto LABEL_46;
    }

    if (v37 < 7)
    {
      v16 = v37;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v47, v37, 8);
      v16 = v37;
      if (!v37)
      {
        goto LABEL_44;
      }
    }

    memcpy(v45, v36, 8 * v16);
LABEL_44:
    LODWORD(v46) = v15;
    goto LABEL_45;
  }

LABEL_46:
  v48 = v50;
  v49 = 0x600000000;
  v17 = v34;
  v18 = v33;
  if (!v34)
  {
    goto LABEL_56;
  }

  if (v33 == v35)
  {
    if (v34 < 7)
    {
      v19 = v34;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v48, v50, v34, 8);
      v19 = v34;
      v18 = v33;
      if (!v34)
      {
        goto LABEL_54;
      }
    }

    memcpy(v48, v18, 8 * v19);
    v18 = v33;
LABEL_54:
    LODWORD(v49) = v17;
    goto LABEL_55;
  }

  v48 = v33;
  v49 = v34;
  v33 = v35;
  HIDWORD(v34) = 0;
  v18 = v35;
LABEL_55:
  LODWORD(v34) = 0;
LABEL_56:
  if (v18 != v35)
  {
    free(v18);
  }

  if (v36 != v38)
  {
    free(v36);
  }

  if (__dst != v41)
  {
    free(__dst);
  }

  v20 = v48;
  v21 = 1;
  if (v43 && v46 && v49)
  {
    v32 = v3;
    v22 = a2;
    v23 = __src;
    v24 = v45;
    v25 = 8 * v49 - 8;
    v26 = 8 * v46 - 8;
    v27 = 8 * v43 - 8;
    do
    {
      v28 = mlir::constantTripCount(*v23, *v24, *v20) == 1;
      v21 = v29 & v28;
      if ((v29 & v28) != 1)
      {
        break;
      }

      if (!v27)
      {
        break;
      }

      if (!v26)
      {
        break;
      }

      ++v23;
      ++v24;
      ++v20;
      v30 = v25;
      v25 -= 8;
      v26 -= 8;
      v27 -= 8;
    }

    while (v30);
    v20 = v48;
    a2 = v22;
    v3 = v32;
  }

  if (v20 != v50)
  {
    free(v20);
  }

  if (v45 != v47)
  {
    free(v45);
  }

  if (__src != v44)
  {
    free(__src);
  }

  if (!v21)
  {
    return 0;
  }

  mlir::scf::promote(a2, *v3);
  return 1;
}

uint64_t mlir::scf::ForallOp::getInitsMutable(mlir::scf::ForallOp *this)
{
  v17[3] = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = (*this + 16 * ((*(*this + 44) >> 23) & 1));
  v4 = v3[25] + v3[24];
  v6 = v3[26];
  v5 = v3[27];
  v7 = *(*(*(*this + 48) + 96) + 8 * *(*(*this + 48) + 104) - 8);
  Context = mlir::Attribute::getContext((*this + 24));
  v9 = mlir::detail::DenseArrayAttrImpl<int>::get(Context, (*this + 16 * ((*(*this + 44) >> 23) & 1) + 96), 4);
  mlir::NamedAttribute::NamedAttribute(&v12, v7, v9);
  v13 = 3;
  v14 = v12;
  mlir::MutableOperandRange::MutableOperandRange(v15, v2, v4 + v6, v5, &v13, 1);
  result = mlir::MutableOperandRange::operator mlir::OperandRange(v15);
  if (v16 != v17)
  {
    v11 = result;
    free(v16);
    return v11;
  }

  return result;
}

void mlir::scf::ForallOp::getLowerBound(mlir::scf::ForallOp *this@<X0>, mlir::IndexType **a2@<X1>, uint64_t a3@<X8>)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = *(*this + 24);
  mlir::scf::ForallOp::getLoopLowerBounds(this, &__src);
  v9 = v11;
  v10 = 0x600000000;
  v6 = v13;
  if (v13)
  {
    if (v13 < 7)
    {
      v8 = v11;
      v7 = v13;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v9, v11, v13, 8);
      v7 = v13;
      if (!v13)
      {
LABEL_7:
        LODWORD(v10) = v6;
        goto LABEL_8;
      }

      v8 = v9;
    }

    memcpy(v8, __src, 8 * v7);
    goto LABEL_7;
  }

LABEL_8:
  if (v14[48] == 1 && __src != v14)
  {
    free(__src);
    v6 = v10;
  }

  mlir::getValueOrCreateConstantIndexOp(a2, v5, v9, v6, a3);
  if (v9 != v11)
  {
    free(v9);
  }
}

uint64_t mlir::OpBuilder::create<mlir::tensor::InsertSliceOp,mlir::Type,mlir::Value &,mlir::Value &,mlir::OperandRange,mlir::OperandRange,mlir::OperandRange,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v33[5] = *MEMORY[0x1E69E9840];
  v29 = a2;
  Context = mlir::Attribute::getContext(&v29);
  v20 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::InsertSliceOp,void>::id, Context);
  if ((v21 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::InsertSliceOp,mlir::Type,mlir::Value &,mlir::Value &,mlir::OperandRange,mlir::OperandRange,mlir::OperandRange,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>,llvm::ArrayRef<long long>>(v31, v33, v32);
  }

  mlir::OperationState::OperationState(v31, a2, v20);
  v22 = *a3;
  v23 = *a4;
  v24 = *a5;
  mlir::ValueRange::ValueRange(v33, *a6, *(a6 + 8));
  mlir::ValueRange::ValueRange(v32, *a7, *(a7 + 8));
  mlir::ValueRange::ValueRange(v30, *a8, *(a8 + 8));
  mlir::tensor::InsertSliceOp::build(a1, v31, v22, v23, v24, v33[0], v33[1], v25, v32[0], v32[1], v30[0], v30[1], *a9, *(a9 + 8), *a10, *(a10 + 8), *a11, *(a11 + 8));
  v26 = mlir::OpBuilder::create(a1, v31);
  if (*(*(v26 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::InsertSliceOp,void>::id)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  mlir::OperationState::~OperationState(v31);
  return v27;
}

uint64_t mlir::OpBuilder::create<mlir::scf::YieldOp,llvm::SmallVector<mlir::Value,6u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3)
{
  v15[5] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::scf::YieldOp,llvm::SmallVector<mlir::Value,6u> &>(v14, v15, v13);
  }

  mlir::OperationState::OperationState(v14, a2, v7);
  mlir::ValueRange::ValueRange(v15, *a3, *(a3 + 8));
  mlir::OperationState::addOperands(v14, v15[0], v15[1]);
  v9 = mlir::OpBuilder::create(a1, v14);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::scf::ForOp,mlir::Value,mlir::Value,mlir::Value,llvm::SmallVector<mlir::Value,6u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v26[5] = *MEMORY[0x1E69E9840];
  v23 = a2;
  Context = mlir::Attribute::getContext(&v23);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::ForOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::scf::ForOp::replaceWithAdditionalYields(v25, v26, v24);
  }

  mlir::OperationState::OperationState(v25, a2, v13);
  v15 = *a3;
  v16 = *a4;
  v17 = *a5;
  mlir::ValueRange::ValueRange(v26, *a6, *(a6 + 8));
  mlir::scf::ForOp::build(a1, v25, v15, v16, v17, v26[0], v26[1], v18, 0, v22);
  v19 = mlir::OpBuilder::create(a1, v25);
  if (*(*(v19 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::ForOp,void>::id)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  mlir::OperationState::~OperationState(v25);
  return v20;
}

void mlir::scf::ForOp::getCanonicalizationPatterns(void *a1, uint64_t a2)
{
  v4 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v64, 1);
  mlir::Pattern::Pattern((v4 + 2), "scf.for", 7, v64, a2, 0, 0);
  *v4 = &unk_1F5B06BF8;
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

  v64 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::ForOpIterArgsFolder]";
  v65 = 92;
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
  mlir::Pattern::Pattern((v24 + 2), "scf.for", 7, v64, a2, 0, 0);
  *v24 = &unk_1F5B06C98;
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

  v64 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::SimplifyTrivialLoops]";
  v65 = 93;
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
  mlir::Pattern::Pattern((v44 + 2), "scf.for", 7, v64, a2, 0, 0);
  *v44 = &unk_1F5B06D08;
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

  v64 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::ForOpTensorCastFolder]";
  v65 = 94;
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

uint64_t mlir::scf::ForOp::getSpeculatability(mlir::scf::ForOp *this)
{
  v1 = *(*(*this + 72) + 88);
  v11 = &v12;
  v12 = 0;
  v9 = v1;
  DefiningOp = mlir::Value::getDefiningOp(&v9);
  if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::IntegerAttr>::match(&v11, DefiningOp) & 1) == 0)
  {
    return 0;
  }

  mlir::IntegerAttr::getValue(&v12, &v9);
  v3 = v10;
  v7 = v10;
  __p = v9;
  v8 = 1;
  if (v10 < 0x41)
  {
    if (__p != 1)
    {
      goto LABEL_10;
    }

LABEL_8:
    v4 = 0;
    if (v3 < 0x41)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (v3 - llvm::APInt::countLeadingZerosSlowCase(&__p) <= 0x40 && *__p == 1)
  {
    goto LABEL_8;
  }

LABEL_10:
  v4 = 1;
  if (v3 < 0x41)
  {
    goto LABEL_13;
  }

LABEL_11:
  if (__p)
  {
    operator delete[](__p);
  }

LABEL_13:
  if (v4)
  {
    return 0;
  }

  return 2;
}

BOOL mlir::scf::ForallOp::verify(mlir::scf::ForallOp *this)
{
  v176 = *MEMORY[0x1E69E9840];
  v164 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v164);
  v3 = *this;
  v4 = *(*this + 36);
  v5 = *(*this + 44);
  v6 = (v5 >> 23) & 1;
  v7 = (*this + 16 * v6);
  v8 = (v7[25] + v7[24] + v7[26]);
  if ((v7[27] + v8) - v8 == v4)
  {
    v9 = *(((v7 + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v3 + 40) + 8);
    if (v9)
    {
      v10 = v9 - 8;
    }

    else
    {
      v10 = 0;
    }

    v11 = v2;
    if (v2 + v4 == ((*(v10 + 56) - *(v10 + 48)) >> 3))
    {
      if (!v2)
      {
LABEL_11:
        v14 = v3 + 16 * v6;
        v15 = *(v14 + 108);
        if (v15)
        {
          v16 = 0;
          v17 = (*(v14 + 100) + *(v14 + 96) + *(v14 + 104));
          v18 = (v15 + v17) - v17;
          v19 = *(v3 + 72) + 32 * v17;
          v20 = 1;
          while ((*(*(v19 + 32 * v16 + 24) + 8) ^ *(*(*(v10 + 48) + 8 * (v2 + v20 - 1)) + 8)) < 8)
          {
            v16 = v20++;
            if (v18 <= v16)
            {
              goto LABEL_15;
            }
          }

          v159[0] = "type mismatch between ";
          v160 = 259;
          mlir::OpState::emitOpError(this, v159, &v164);
          if (v164)
          {
            v161 = 5;
            v162 = v16;
            v114 = &v161;
            v115 = v166;
            if (v167 >= v168)
            {
              if (v166 <= &v161 && v166 + 24 * v167 > &v161)
              {
                v153 = &v161 - v166;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v166, v169, v167 + 1, 24);
                v115 = v166;
                v114 = (v166 + v153);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v166, v169, v167 + 1, 24);
                v114 = &v161;
                v115 = v166;
              }
            }

            v116 = &v115[24 * v167];
            v117 = *v114;
            *(v116 + 2) = *(v114 + 2);
            *v116 = v117;
            v118 = ++v167;
            if (v164)
            {
              v161 = 3;
              v162 = "-th output and corresponding block argument";
              v163 = 43;
              v119 = &v161;
              v120 = v166;
              if (v118 >= v168)
              {
                if (v166 <= &v161 && v166 + 24 * v118 > &v161)
                {
                  v155 = &v161 - v166;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v166, v169, v118 + 1, 24);
                  v120 = v166;
                  v119 = (v166 + v155);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v166, v169, v118 + 1, 24);
                  v119 = &v161;
                  v120 = v166;
                }
              }

              v121 = &v120[24 * v167];
              v122 = *v119;
              *(v121 + 2) = *(v119 + 2);
              *v121 = v122;
              ++v167;
            }
          }

          v53 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v164);
          if (v164)
          {
            mlir::InFlightDiagnostic::report(&v164);
          }

          if ((v175 & 1) == 0)
          {
            return v53;
          }

          if (v174 != &v175)
          {
            free(v174);
          }

          v123 = __p;
          if (__p)
          {
            v124 = v173;
            v125 = __p;
            if (v173 != __p)
            {
              do
              {
                v124 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v124 - 1);
              }

              while (v124 != v123);
              v125 = __p;
            }

            v173 = v123;
            operator delete(v125);
          }

          v79 = v170;
          if (!v170)
          {
            goto LABEL_152;
          }

          v126 = v171;
          v81 = v170;
          if (v171 == v170)
          {
            goto LABEL_151;
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

          while (v126 != v79);
        }

        else
        {
LABEL_15:
          v21 = v2;
          if (!*(v14 + 64))
          {
            goto LABEL_34;
          }

          v164 = *(v14 + 64);
          LOBYTE(v165) = 1;
          mlir::ArrayAttr::getValue(&v164);
          if (!v22)
          {
            goto LABEL_34;
          }

          v23 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64) != 0;
          v164 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
          LOBYTE(v165) = v23;
          mlir::ArrayAttr::getValue(&v164);
          if (v24 != v11)
          {
            v160 = 257;
            mlir::OpState::emitOpError(this, v159, &v164);
            mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&v164, "mapping attribute size must match op rank");
            v53 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v129);
            mlir::InFlightDiagnostic::~InFlightDiagnostic(&v164);
            return v53;
          }

          v25 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64) != 0;
          v164 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
          LOBYTE(v165) = v25;
          Value = mlir::ArrayAttr::getValue(&v164);
          if (!v27)
          {
LABEL_34:
            v39 = *this;
            v164 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
            v40 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v164);
            v42 = v41;
            v43 = *(*this + 44);
            if ((v43 & 0x800000) != 0)
            {
              v44 = *(*this + 72);
            }

            else
            {
              v44 = 0;
            }

            mlir::ValueRange::ValueRange(&v164, v44, *(*this + 16 * ((v43 >> 23) & 1) + 96));
            if ((mlir::verifyListOfOperandsOrIntegers(v39, "lower bound", 0xB, v21, v40, v42, v164, v165) & 1) == 0)
            {
              return 0;
            }

            v164 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 88);
            v45 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v164);
            v47 = v46;
            v48 = *(*this + 44);
            v49 = *this + 16 * ((v48 >> 23) & 1);
            v50 = *(v49 + 96);
            v51 = *(v49 + 100);
            v52 = (v48 & 0x800000) != 0 ? *(*this + 72) : 0;
            mlir::ValueRange::ValueRange(&v164, v52 + 32 * v50, (v51 + v50) - v50);
            if ((mlir::verifyListOfOperandsOrIntegers(v39, "upper bound", 0xB, v21, v45, v47, v164, v165) & 1) == 0)
            {
              return 0;
            }

            v164 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
            v141 = mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v164);
            v143 = v142;
            DynamicStep = mlir::scf::ForallOp::getDynamicStep(this);
            mlir::ValueRange::ValueRange(&v164, DynamicStep, v145);
            return mlir::verifyListOfOperandsOrIntegers(v39, "step", 4, v21, v141, v143, v164, v165) & 1;
          }

          v28 = &Value[v27];
          while (1)
          {
            v29 = **Value;
            {
              v30 = mlir::detail::TypeIDResolver<mlir::DeviceMappingAttrInterface,void>::resolveTypeID(void)::id;
              v31 = *(v29 + 8);
              v32 = *(v29 + 16);
              if (!v32)
              {
                break;
              }
            }

            else
            {
              v157 = v29;
              v158 = Value;
              mlir::scf::ForallOp::verify();
              Value = v158;
              v30 = mlir::detail::TypeIDResolver<mlir::DeviceMappingAttrInterface,void>::resolveTypeID(void)::id;
              v31 = *(v157 + 8);
              v32 = *(v157 + 16);
              if (!v32)
              {
                break;
              }
            }

            v33 = v31;
            v34 = v32;
            do
            {
              v35 = v34 >> 1;
              v36 = &v33[2 * (v34 >> 1)];
              v38 = *v36;
              v37 = v36 + 2;
              v34 += ~(v34 >> 1);
              if (v38 < v30)
              {
                v33 = v37;
              }

              else
              {
                v34 = v35;
              }
            }

            while (v34);
            if (v33 == &v31[2 * v32] || *v33 != v30 || !v33[1])
            {
              break;
            }

            if (++Value == v28)
            {
              goto LABEL_34;
            }
          }

          v160 = 257;
          mlir::OpState::emitOpError(this, v159, &v164);
          if (v164)
          {
            mlir::Diagnostic::operator<<(&v165, **(*(*this + 48) + 96));
            if (v164)
            {
              v161 = 3;
              v162 = " is not device mapping attribute";
              v163 = 32;
              v130 = &v161;
              v131 = v166;
              if (v167 >= v168)
              {
                if (v166 <= &v161 && v166 + 24 * v167 > &v161)
                {
                  v156 = &v161 - v166;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v166, v169, v167 + 1, 24);
                  v131 = v166;
                  v130 = (v166 + v156);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v166, v169, v167 + 1, 24);
                  v130 = &v161;
                  v131 = v166;
                }
              }

              v132 = &v131[24 * v167];
              v133 = *v130;
              *(v132 + 2) = *(v130 + 2);
              *v132 = v133;
              ++v167;
            }
          }

          v53 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v164);
          if (v164)
          {
            mlir::InFlightDiagnostic::report(&v164);
          }

          if ((v175 & 1) == 0)
          {
            return v53;
          }

          if (v174 != &v175)
          {
            free(v174);
          }

          v134 = __p;
          if (__p)
          {
            v135 = v173;
            v136 = __p;
            if (v173 != __p)
            {
              do
              {
                v135 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v135 - 1);
              }

              while (v135 != v134);
              v136 = __p;
            }

            v173 = v134;
            operator delete(v136);
          }

          v79 = v170;
          if (!v170)
          {
            goto LABEL_152;
          }

          v137 = v171;
          v81 = v170;
          if (v171 == v170)
          {
LABEL_151:
            v171 = v79;
            operator delete(v81);
LABEL_152:
            if (v166 != v169)
            {
              free(v166);
            }

            return v53;
          }

          do
          {
            v139 = *--v137;
            v138 = v139;
            *v137 = 0;
            if (v139)
            {
              operator delete[](v138);
            }
          }

          while (v137 != v79);
        }

LABEL_150:
        v81 = v170;
        goto LABEL_151;
      }

      v12 = v2;
      v13 = 0;
      while (1)
      {
        v164 = *(*(*(v10 + 48) + 8 * v13) + 8) & 0xFFFFFFFFFFFFFFF8;
        if (!mlir::Type::isIndex(&v164))
        {
          break;
        }

        if (v11 == ++v13)
        {
          v3 = *this;
          v6 = (*(*this + 44) >> 23) & 1;
          v2 = v12;
          goto LABEL_11;
        }
      }

      v159[0] = "expects ";
      v160 = 259;
      mlir::OpState::emitOpError(this, v159, &v164);
      if (v164)
      {
        v161 = 2;
        v162 = v13;
        v99 = &v161;
        v100 = v166;
        if (v167 >= v168)
        {
          if (v166 <= &v161 && v166 + 24 * v167 > &v161)
          {
            v152 = &v161 - v166;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v166, v169, v167 + 1, 24);
            v100 = v166;
            v99 = (v166 + v152);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v166, v169, v167 + 1, 24);
            v99 = &v161;
            v100 = v166;
          }
        }

        v101 = &v100[24 * v167];
        v102 = *v99;
        *(v101 + 2) = *(v99 + 2);
        *v101 = v102;
        v103 = ++v167;
        if (v164)
        {
          v161 = 3;
          v162 = "-th block argument to be an index";
          v163 = 33;
          v104 = &v161;
          v105 = v166;
          if (v103 >= v168)
          {
            if (v166 <= &v161 && v166 + 24 * v103 > &v161)
            {
              v154 = &v161 - v166;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v166, v169, v103 + 1, 24);
              v105 = v166;
              v104 = (v166 + v154);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v166, v169, v103 + 1, 24);
              v104 = &v161;
              v105 = v166;
            }
          }

          v106 = &v105[24 * v167];
          v107 = *v104;
          *(v106 + 2) = *(v104 + 2);
          *v106 = v107;
          ++v167;
        }
      }

      v53 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v164);
      if (v164)
      {
        mlir::InFlightDiagnostic::report(&v164);
      }

      if (v175)
      {
        if (v174 != &v175)
        {
          free(v174);
        }

        v108 = __p;
        if (__p)
        {
          v109 = v173;
          v110 = __p;
          if (v173 != __p)
          {
            do
            {
              v109 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v109 - 1);
            }

            while (v109 != v108);
            v110 = __p;
          }

          v173 = v108;
          operator delete(v110);
        }

        v79 = v170;
        if (!v170)
        {
          goto LABEL_152;
        }

        v111 = v171;
        v81 = v170;
        if (v171 == v170)
        {
          goto LABEL_151;
        }

        do
        {
          v113 = *--v111;
          v112 = v113;
          *v111 = 0;
          if (v113)
          {
            operator delete[](v112);
          }
        }

        while (v111 != v79);
        goto LABEL_150;
      }
    }

    else
    {
      v159[0] = "region expects ";
      v160 = 259;
      mlir::OpState::emitOpError(this, v159, &v164);
      if (v164)
      {
        v161 = 5;
        v162 = v11;
        v84 = &v161;
        v85 = v166;
        if (v167 >= v168)
        {
          if (v166 <= &v161 && v166 + 24 * v167 > &v161)
          {
            v148 = &v161 - v166;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v166, v169, v167 + 1, 24);
            v85 = v166;
            v84 = (v166 + v148);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v166, v169, v167 + 1, 24);
            v84 = &v161;
            v85 = v166;
          }
        }

        v86 = &v85[24 * v167];
        v87 = *v84;
        *(v86 + 2) = *(v84 + 2);
        *v86 = v87;
        v88 = ++v167;
        if (v164)
        {
          v161 = 3;
          v162 = " arguments";
          v163 = 10;
          v89 = &v161;
          v90 = v166;
          if (v88 >= v168)
          {
            if (v166 <= &v161 && v166 + 24 * v88 > &v161)
            {
              v150 = &v161 - v166;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v166, v169, v88 + 1, 24);
              v90 = v166;
              v89 = (v166 + v150);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v166, v169, v88 + 1, 24);
              v89 = &v161;
              v90 = v166;
            }
          }

          v91 = &v90[24 * v167];
          v92 = *v89;
          *(v91 + 2) = *(v89 + 2);
          *v91 = v92;
          ++v167;
        }
      }

      v53 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v164);
      if (v164)
      {
        mlir::InFlightDiagnostic::report(&v164);
      }

      if (v175 == 1)
      {
        if (v174 != &v175)
        {
          free(v174);
        }

        v93 = __p;
        if (__p)
        {
          v94 = v173;
          v95 = __p;
          if (v173 != __p)
          {
            do
            {
              v94 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v94 - 1);
            }

            while (v94 != v93);
            v95 = __p;
          }

          v173 = v93;
          operator delete(v95);
        }

        v79 = v170;
        if (!v170)
        {
          goto LABEL_152;
        }

        v96 = v171;
        v81 = v170;
        if (v171 == v170)
        {
          goto LABEL_151;
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

        while (v96 != v79);
        goto LABEL_150;
      }
    }
  }

  else
  {
    v159[0] = "produces ";
    v160 = 259;
    mlir::OpState::emitOpError(this, v159, &v164);
    if (v164)
    {
      v54 = *(*this + 36);
      v161 = 5;
      v162 = v54;
      v55 = &v161;
      v56 = v166;
      if (v167 >= v168)
      {
        if (v166 <= &v161 && v166 + 24 * v167 > &v161)
        {
          v146 = &v161 - v166;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v166, v169, v167 + 1, 24);
          v56 = v166;
          v55 = (v166 + v146);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v166, v169, v167 + 1, 24);
          v55 = &v161;
          v56 = v166;
        }
      }

      v57 = &v56[24 * v167];
      v58 = *v55;
      *(v57 + 2) = *(v55 + 2);
      *v57 = v58;
      v59 = ++v167;
      if (v164)
      {
        v161 = 3;
        v162 = " results, but has only ";
        v163 = 23;
        v60 = &v161;
        v61 = v166;
        if (v59 >= v168)
        {
          if (v166 <= &v161 && v166 + 24 * v59 > &v161)
          {
            v147 = &v161 - v166;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v166, v169, v59 + 1, 24);
            v61 = v166;
            v60 = (v166 + v147);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v166, v169, v59 + 1, 24);
            v60 = &v161;
            v61 = v166;
          }
        }

        v62 = &v61[24 * v167];
        v63 = *v60;
        *(v62 + 2) = *(v60 + 2);
        *v62 = v63;
        ++v167;
        if (v164)
        {
          v64 = (*this + 16 * ((*(*this + 44) >> 23) & 1));
          v65 = v64[27];
          v66 = (v64[25] + v64[24] + v64[26]);
          v161 = 5;
          v162 = ((v65 + v66) - v66);
          v67 = &v161;
          v68 = v166;
          if (v167 >= v168)
          {
            if (v166 <= &v161 && v166 + 24 * v167 > &v161)
            {
              v149 = &v161 - v166;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v166, v169, v167 + 1, 24);
              v68 = v166;
              v67 = (v166 + v149);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v166, v169, v167 + 1, 24);
              v67 = &v161;
              v68 = v166;
            }
          }

          v69 = &v68[24 * v167];
          v70 = *v67;
          *(v69 + 2) = *(v67 + 2);
          *v69 = v70;
          v71 = ++v167;
          if (v164)
          {
            v161 = 3;
            v162 = " outputs";
            v163 = 8;
            v72 = &v161;
            v73 = v166;
            if (v71 >= v168)
            {
              if (v166 <= &v161 && v166 + 24 * v71 > &v161)
              {
                v151 = &v161 - v166;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v166, v169, v71 + 1, 24);
                v73 = v166;
                v72 = (v166 + v151);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v166, v169, v71 + 1, 24);
                v72 = &v161;
                v73 = v166;
              }
            }

            v74 = &v73[24 * v167];
            v75 = *v72;
            *(v74 + 2) = *(v72 + 2);
            *v74 = v75;
            ++v167;
          }
        }
      }
    }

    v53 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v164);
    if (v164)
    {
      mlir::InFlightDiagnostic::report(&v164);
    }

    if (v175 == 1)
    {
      if (v174 != &v175)
      {
        free(v174);
      }

      v76 = __p;
      if (__p)
      {
        v77 = v173;
        v78 = __p;
        if (v173 != __p)
        {
          do
          {
            v77 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v77 - 1);
          }

          while (v77 != v76);
          v78 = __p;
        }

        v173 = v76;
        operator delete(v78);
      }

      v79 = v170;
      if (!v170)
      {
        goto LABEL_152;
      }

      v80 = v171;
      v81 = v170;
      if (v171 == v170)
      {
        goto LABEL_151;
      }

      do
      {
        v83 = *--v80;
        v82 = v83;
        *v80 = 0;
        if (v83)
        {
          operator delete[](v82);
        }
      }

      while (v80 != v79);
      goto LABEL_150;
    }
  }

  return v53;
}

uint64_t mlir::scf::ForallOp::isNormalized(mlir::scf::ForallOp *this)
{
  v30 = *MEMORY[0x1E69E9840];
  mlir::scf::ForallOp::getLoopLowerBounds(this, &__src);
  v23 = v25;
  v24 = 0x600000000;
  v2 = v27;
  if (v27)
  {
    if (v27 < 7)
    {
      v4 = v25;
      v3 = v27;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v25, v27, 8);
      v3 = v27;
      if (!v27)
      {
LABEL_7:
        LODWORD(v24) = v2;
        goto LABEL_8;
      }

      v4 = v23;
    }

    memcpy(v4, __src, 8 * v3);
    goto LABEL_7;
  }

LABEL_8:
  if (v29 == 1 && __src != v28)
  {
    free(__src);
    v2 = v24;
  }

  if (!v2)
  {
LABEL_16:
    mlir::scf::ForallOp::getLoopSteps(this, &__src);
    v20 = v22;
    v21 = 0x600000000;
    v10 = v27;
    if (!v27)
    {
LABEL_23:
      if (v29 == 1 && __src != v28)
      {
        free(__src);
        v10 = v21;
      }

      v13 = v20;
      if (v10)
      {
        v14 = 8 * v10 - 8;
        do
        {
          v15 = *v13++;
          v16 = mlir::getConstantIntValue(v15) == 1;
          v8 = v17 & v16;
          v18 = v8 != 1 || v14 == 0;
          v14 -= 8;
        }

        while (!v18);
        v13 = v20;
        if (v20 == v22)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v8 = 1;
        if (v20 == v22)
        {
          goto LABEL_35;
        }
      }

      free(v13);
      goto LABEL_35;
    }

    if (v27 < 7)
    {
      v12 = v22;
      v11 = v27;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v20, v22, v27, 8);
      v11 = v27;
      if (!v27)
      {
LABEL_22:
        LODWORD(v21) = v10;
        goto LABEL_23;
      }

      v12 = v20;
    }

    memcpy(v12, __src, 8 * v11);
    goto LABEL_22;
  }

  v5 = v23;
  v6 = 8 * v2;
  while (1)
  {
    ConstantIntValue = mlir::getConstantIntValue(*v5);
    v8 = 0;
    if ((v9 & 1) == 0 || ConstantIntValue)
    {
      break;
    }

    ++v5;
    v6 -= 8;
    if (!v6)
    {
      goto LABEL_16;
    }
  }

LABEL_35:
  if (v23 != v25)
  {
    free(v23);
  }

  return v8;
}

BOOL mlir::scf::ForallOp::parse(mlir::AsmParser *a1, uint64_t a2)
{
  v81[32] = *MEMORY[0x1E69E9840];
  v55[0] = mlir::AsmParser::getContext(a1);
  memset(&v55[1], 0, 24);
  IndexType = mlir::Builder::getIndexType(v55, v4);
  v79 = v81;
  v80 = 0x400000000;
  v6 = 0;
  if (((*(*a1 + 768))(a1, &v79, 1, 0, 0) & 1) == 0)
  {
    goto LABEL_36;
  }

  v53 = 0;
  DenseI64ArrayAttr = 0;
  v52 = 0;
  v76 = v78;
  v77 = 0x100000000;
  v73 = v75;
  v74 = 0x100000000;
  v70 = v72;
  v71 = 0x100000000;
  if ((*(*a1 + 408))(a1, "in", 2))
  {
    __b = 0;
    if (mlir::parseDynamicIndexList(a1, &v73, &v53, &__b, 0))
    {
      if (v74)
      {
        v7 = v73;
        v8 = 32 * v74;
        while (((*(*a1 + 728))(a1, v7, IndexType, a2 + 16) & 1) != 0)
        {
          v7 += 32;
          v8 -= 32;
          if (!v8)
          {
            goto LABEL_8;
          }
        }

        goto LABEL_29;
      }

LABEL_8:
      v9 = v80;
      __b = v68;
      HIDWORD(v67) = 6;
      if (v80 < 7)
      {
        if (v80)
        {
          bzero(v68, 8 * v80);
        }

        v10 = v68;
      }

      else
      {
        LODWORD(v67) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&__b, v68, v80, 8);
        v10 = __b;
        bzero(__b, 8 * v9);
      }

      LODWORD(v67) = v9;
      DenseI64ArrayAttr = mlir::Builder::getDenseI64ArrayAttr(v55, v10, v9);
      if (__b != v68)
      {
        free(__b);
      }

      __b = v68;
      HIDWORD(v67) = 6;
      if (v9 < 7)
      {
        if (v9)
        {
          memset_pattern16(v68, &unk_1E096FAE0, 8 * v9);
        }

        v18 = v68;
      }

      else
      {
        LODWORD(v67) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&__b, v68, v9, 8);
        v18 = __b;
        memset_pattern16(__b, &unk_1E096FAE0, 8 * v9);
      }

      LODWORD(v67) = v9;
      v52 = mlir::Builder::getDenseI64ArrayAttr(v55, v18, v9);
      if (__b != v68)
      {
        free(__b);
      }

LABEL_51:
      __b = v68;
      v67 = 0x400000000;
      v63 = v65;
      v64 = 0x400000000;
      v19 = (*(*a1 + 40))(a1);
      if ((*(*a1 + 408))(a1, "shared_outs", 11))
      {
        if (v64 == *(a2 + 72))
        {
          if (mlir::OpAsmParser::parseAssignmentList(a1) & 1) != 0 && ((*(*a1 + 568))(a1, a2 + 64) & 1) != 0 && (mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v63, a2 + 64, v19, a2 + 16))
          {
            goto LABEL_56;
          }

          v6 = 0;
        }

        else
        {
          v59 = "mismatch between out operands and types";
          v62 = 259;
          (*(*a1 + 24))(&v56, a1, v19, &v59);
          v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v56);
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v56);
        }

LABEL_89:
        if (v63 != v65)
        {
          free(v63);
        }

        if (__b != v68)
        {
          free(__b);
        }

        goto LABEL_30;
      }

LABEL_56:
      v56 = v58;
      v57 = 0x400000000;
      v20 = operator new(0x18uLL);
      *v20 = v20;
      *(v20 + 1) = v20;
      *(v20 + 2) = 0;
      v50 = v20;
      v51 = v20;
      v22 = v80;
      if (v80)
      {
        v23 = v79;
        v24 = v80 << 6;
        v25 = v79;
        do
        {
          *(v25 + 4) = mlir::Builder::getIndexType(v55, v21);
          v26 = v56;
          v27 = v25;
          if (v57 >= HIDWORD(v57))
          {
            v32 = v56 <= v25 && v56 + 64 * v57 > v25;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v58, v57 + 1, 64);
            if (v32)
            {
              v27 = &v23[v56 - v26];
              v26 = v56;
            }

            else
            {
              v26 = v56;
              v27 = v25;
            }
          }

          v28 = &v26[64 * v57];
          v29 = *v27;
          v30 = *(v27 + 1);
          v31 = *(v27 + 3);
          v28[2] = *(v27 + 2);
          v28[3] = v31;
          *v28 = v29;
          v28[1] = v30;
          v22 = v57 + 1;
          LODWORD(v57) = v57 + 1;
          v25 += 64;
          v23 += 64;
          v24 -= 64;
        }

        while (v24);
      }

      if (v67)
      {
        v33 = 0;
        v34 = __b;
        v35 = v67 << 6;
        v36 = __b;
        do
        {
          *(v36 + 4) = *(*(a2 + 64) + v33);
          v37 = v56;
          v38 = v36;
          if (v22 >= HIDWORD(v57))
          {
            v43 = v56 <= v36 && v56 + 64 * v22 > v36;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v58, v22 + 1, 64);
            if (v43)
            {
              v38 = &v34[v56 - v37];
              v37 = v56;
            }

            else
            {
              v37 = v56;
              v38 = v36;
            }
          }

          v39 = &v37[64 * v57];
          v40 = *v38;
          v41 = *(v38 + 1);
          v42 = *(v38 + 3);
          v39[2] = *(v38 + 2);
          v39[3] = v42;
          *v39 = v40;
          v39[1] = v41;
          v22 = v57 + 1;
          LODWORD(v57) = v57 + 1;
          v36 += 64;
          v34 += 64;
          v33 += 8;
          v35 -= 64;
        }

        while (v35);
      }

      if ((*(*a1 + 776))(a1, v50, v56, v22, 0))
      {
        mlir::scf::ForallOp::ensureTerminator(v50, v55, *a2, v45);
        mlir::OperationState::addRegion(a2, &v51);
        if ((*(*a1 + 488))(a1, a2 + 112))
        {
          mlir::OperationState::addAttribute(a2, "staticLowerBound", 16, DenseI64ArrayAttr);
          mlir::OperationState::addAttribute(a2, "staticUpperBound", 16, v53);
          mlir::OperationState::addAttribute(a2, "staticStep", 10, v52);
          v46 = (*(*a1 + 32))(a1);
          v59 = __PAIR64__(v74, v77);
          v60 = v71;
          v61 = v64;
          DenseI32ArrayAttr = mlir::Builder::getDenseI32ArrayAttr(v46, &v59, 4);
          mlir::OperationState::addAttribute(a2, "operandSegmentSizes", 19, DenseI32ArrayAttr);
          v6 = 1;
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        v6 = 0;
      }

      v48 = v51;
      v51 = 0;
      if (v48)
      {
        mlir::Region::~Region(v48, v44);
        operator delete(v49);
      }

      if (v56 != v58)
      {
        free(v56);
      }

      goto LABEL_89;
    }
  }

  else if ((*(*a1 + 136))(a1))
  {
    __b = 0;
    if (mlir::parseDynamicIndexList(a1, &v76, &DenseI64ArrayAttr, &__b, 0))
    {
      if (v77)
      {
        v11 = v76;
        v12 = 32 * v77;
        while (((*(*a1 + 728))(a1, v11, IndexType, a2 + 16) & 1) != 0)
        {
          v11 += 32;
          v12 -= 32;
          if (!v12)
          {
            goto LABEL_16;
          }
        }

        goto LABEL_29;
      }

LABEL_16:
      v69 = 257;
      if ((*(*a1 + 400))(a1, "to", 2, &__b))
      {
        __b = 0;
        if (mlir::parseDynamicIndexList(a1, &v73, &v53, &__b, 0))
        {
          if (v74)
          {
            v13 = v73;
            v14 = 32 * v74;
            while (((*(*a1 + 728))(a1, v13, IndexType, a2 + 16) & 1) != 0)
            {
              v13 += 32;
              v14 -= 32;
              if (!v14)
              {
                goto LABEL_22;
              }
            }

            goto LABEL_29;
          }

LABEL_22:
          v69 = 257;
          if ((*(*a1 + 400))(a1, "step", 4, &__b))
          {
            __b = 0;
            if (mlir::parseDynamicIndexList(a1, &v70, &v52, &__b, 0))
            {
              if (v71)
              {
                v15 = v70;
                v16 = 32 * v71;
                while (((*(*a1 + 728))(a1, v15, IndexType, a2 + 16) & 1) != 0)
                {
                  v15 += 32;
                  v16 -= 32;
                  if (!v16)
                  {
                    goto LABEL_51;
                  }
                }

                goto LABEL_29;
              }

              goto LABEL_51;
            }
          }
        }
      }
    }
  }

LABEL_29:
  v6 = 0;
LABEL_30:
  if (v70 != v72)
  {
    free(v70);
  }

  if (v73 != v75)
  {
    free(v73);
  }

  if (v76 != v78)
  {
    free(v76);
  }

LABEL_36:
  if (v79 != v81)
  {
    free(v79);
  }

  return v6;
}

_OWORD *mlir::scf::ForallOp::ensureTerminator(mlir::scf::ForallOp *this, mlir::Region *a2, mlir::OpBuilder *a3, Location a4)
{
  v12[2] = *MEMORY[0x1E69E9840];
  mlir::impl::ensureRegionTerminator(this, a2, a3, llvm::function_ref<mlir::Operation * ()(mlir::OpBuilder &,mlir::Location)>::callback_fn<mlir::Operation * ()(mlir::OpBuilder &,mlir::Location)>, mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::InParallelOp>::Impl<mlir::scf::ForallOp>::buildTerminator);
  v7 = *(this + 1);
  if (v7)
  {
    v8 = (v7 - 8);
  }

  else
  {
    v8 = 0;
  }

  result = mlir::Block::getTerminator(v8, v6);
  if (*(*(result + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::InParallelOp,void>::id)
  {
    v10 = result;
  }

  else
  {
    v10 = 0;
  }

  v11 = (((v10 + 16 * ((*(v10 + 44) >> 23) & 1) + ((*(v10 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v10 + 40));
  if (*v11 == v11)
  {
    mlir::ValueRange::ValueRange(v12, 0, 0);
    return mlir::OpBuilder::createBlock(a2, v11, 0, v12[0], v12[1], 0, 0);
  }

  return result;
}

void mlir::scf::ForallOp::build(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, char a12, void (*a13)(uint64_t, uint64_t, mlir::OpBuilder *, void *, uint64_t), uint64_t a14)
{
  v115[6] = *MEMORY[0x1E69E9840];
  v113 = v115;
  v114 = 0x600000000;
  v110 = v112;
  v111 = 0x600000000;
  v107 = v109;
  v108 = 0x600000000;
  v104 = v106;
  v105 = 0x600000000;
  v101 = v103;
  v102 = 0x600000000;
  v98 = v100;
  v99 = 0x600000000;
  mlir::dispatchIndexOpFoldResults(a3, a4, &v104, &v113);
  mlir::dispatchIndexOpFoldResults(a5, a6, &v101, &v110);
  mlir::dispatchIndexOpFoldResults(a7, a8, &v98, &v107);
  mlir::ValueRange::ValueRange(&v88, v104, v105);
  mlir::OperationState::addOperands(a2, v88, v89);
  mlir::ValueRange::ValueRange(&v88, v101, v102);
  mlir::OperationState::addOperands(a2, v88, v89);
  mlir::ValueRange::ValueRange(&v88, v98, v99);
  mlir::OperationState::addOperands(a2, v88, v89);
  mlir::OperationState::addOperands(a2, a9, a10);
  mlir::TypeRange::TypeRange(&v88, a9, a10);
  v22 = v88;
  v21 = v89;
  v23 = *(a2 + 72);
  if (v89 + v23 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v89 + v23, 8);
    v23 = *(a2 + 72);
  }

  if (v21)
  {
    v24 = 0;
    v25 = *(a2 + 64) + 8 * v23;
    do
    {
      *(v25 + 8 * v24) = mlir::TypeRange::dereference_iterator(v22, v24);
      ++v24;
    }

    while (v21 != v24);
    LODWORD(v23) = *(a2 + 72);
  }

  *(a2 + 72) = v23 + v21;
  v26 = *(*(*(a2 + 8) + 96) + 8);
  DenseI64ArrayAttr = mlir::Builder::getDenseI64ArrayAttr(a1, v113, v114);
  mlir::NamedAttribute::NamedAttribute(&v88, v26, DenseI64ArrayAttr);
  mlir::NamedAttrList::push_back(a2 + 112, v88, v89);
  v28 = *(*(*(a2 + 8) + 96) + 24);
  v29 = mlir::Builder::getDenseI64ArrayAttr(a1, v110, v111);
  mlir::NamedAttribute::NamedAttribute(&v88, v28, v29);
  mlir::NamedAttrList::push_back(a2 + 112, v88, v89);
  v30 = *(*(*(a2 + 8) + 96) + 16);
  v31 = mlir::Builder::getDenseI64ArrayAttr(a1, v107, v108);
  mlir::NamedAttribute::NamedAttribute(&v88, v30, v31);
  mlir::NamedAttrList::push_back(a2 + 112, v88, v89);
  v96 = __PAIR64__(v102, v105);
  v97 = __PAIR64__(a10, v99);
  DenseI32ArrayAttr = mlir::Builder::getDenseI32ArrayAttr(a1, &v96, 4);
  Context = mlir::Attribute::getContext(a2);
  LOWORD(v92) = 261;
  v88 = "operandSegmentSizes";
  v89 = 19;
  v34 = mlir::StringAttr::get(Context, &v88);
  mlir::NamedAttribute::NamedAttribute(&v85, v34, DenseI32ArrayAttr);
  mlir::NamedAttrList::push_back(a2 + 112, v85, v86);
  if (a12)
  {
    mlir::NamedAttribute::NamedAttribute(&v88, **(*(a2 + 8) + 96), a11);
    mlir::NamedAttrList::push_back(a2 + 112, v88, v89);
  }

  v35 = mlir::OperationState::addRegion(a2);
  v36 = (a1 + 16);
  v84 = *(a1 + 16);
  mlir::ValueRange::ValueRange(&v88, 0, 0);
  mlir::OpBuilder::createBlock(a1, v35, 0, v88, v89, 0, 0);
  v38 = *(v35 + 1);
  if (v38)
  {
    v39 = (v38 - 8);
  }

  else
  {
    v39 = 0;
  }

  IndexType = mlir::Builder::getIndexType(a1, v37);
  v41 = IndexType;
  v88 = &v90;
  HIDWORD(v89) = 6;
  if (a4 < 7)
  {
    if (!a4)
    {
      goto LABEL_35;
    }

    v48 = vdupq_n_s64(a4 - 1);
    v49 = a4 + 1;
    v50 = vmovn_s64(vcgeq_u64(v48, xmmword_1E09700F0));
    if (v50.i8[0])
    {
      v90 = IndexType;
      v51 = v49 & 0xE;
      if ((v50.i8[4] & 1) == 0)
      {
LABEL_21:
        if (v51 == 2)
        {
          goto LABEL_35;
        }

LABEL_25:
        v52 = vmovn_s64(vcgtq_u64(v48, xmmword_1E0970220));
        if (v52.i8[0])
        {
          v92 = IndexType;
          if ((v52.i8[4] & 1) == 0)
          {
LABEL_27:
            if (v51 == 4)
            {
              goto LABEL_35;
            }

LABEL_31:
            v53 = vmovn_s64(vcgtq_u64(v48, xmmword_1E0970230));
            if (v53.i8[0])
            {
              v94 = IndexType;
            }

            if (v53.i8[4])
            {
              v95 = IndexType;
            }

            goto LABEL_35;
          }
        }

        else if ((v52.i8[4] & 1) == 0)
        {
          goto LABEL_27;
        }

        v93 = IndexType;
        if (v51 != 4)
        {
          goto LABEL_31;
        }

LABEL_35:
        v42 = &v90;
        goto LABEL_36;
      }
    }

    else
    {
      v51 = v49 & 0xE;
      if ((v50.i8[4] & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    v91 = IndexType;
    if (v51 == 2)
    {
      goto LABEL_35;
    }

    goto LABEL_25;
  }

  LODWORD(v89) = 0;
  llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, &v90, a4, 8);
  v42 = v88;
  v43 = a4 & 0xFFFFFFFFFFFFFFFCLL;
  v44 = a4 & 3;
  v45 = vdupq_n_s64(v41);
  v46 = (v88 + 16);
  v47 = a4 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v46[-1] = v45;
    *v46 = v45;
    v46 += 2;
    v47 -= 4;
  }

  while (v47);
  if (a4 != (a4 & 0xFFFFFFFFFFFFFFFCLL))
  {
    do
    {
      v42[v43++] = v41;
      --v44;
    }

    while (v44);
  }

LABEL_36:
  LODWORD(v89) = a4;
  mlir::ValueRange::ValueRange(&v96, v42, a4);
  v54 = v114;
  v85 = v87;
  v86 = 0x600000000;
  v55 = *a2;
  if (v114 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v85, v87, v114, 8);
    v56 = (v85 + 8 * (v54 & 0xFFFFFFFC));
    v57 = v54 & 3;
    v58 = vdupq_n_s64(v55);
    v59 = (v85 + 16);
    v60 = v54 & 0xFFFFFFFC;
    do
    {
      v59[-1] = v58;
      *v59 = v58;
      v59 += 2;
      v60 -= 4;
    }

    while (v60);
    if ((v54 & 0xFFFFFFFC) != v54)
    {
      do
      {
        *v56++ = v55;
        --v57;
      }

      while (v57);
    }

    goto LABEL_59;
  }

  if (!v114)
  {
    goto LABEL_59;
  }

  v61 = vdupq_n_s64(v114 - 1);
  v62 = v114 + 1;
  v63 = vmovn_s64(vcgeq_u64(v61, xmmword_1E09700F0));
  if ((v63.i8[0] & 1) == 0)
  {
    v64 = v62 & 0xE;
    if ((v63.i8[4] & 1) == 0)
    {
      goto LABEL_45;
    }

LABEL_48:
    v87[1] = v55;
    if (v64 == 2)
    {
      goto LABEL_59;
    }

    goto LABEL_49;
  }

  v87[0] = *a2;
  v64 = v62 & 0xE;
  if (v63.i8[4])
  {
    goto LABEL_48;
  }

LABEL_45:
  if (v64 == 2)
  {
    goto LABEL_59;
  }

LABEL_49:
  v65 = vmovn_s64(vcgtq_u64(v61, xmmword_1E0970220));
  if (v65.i8[0])
  {
    v87[2] = v55;
    if ((v65.i8[4] & 1) == 0)
    {
LABEL_51:
      if (v64 == 4)
      {
        goto LABEL_59;
      }

      goto LABEL_55;
    }
  }

  else if ((v65.i8[4] & 1) == 0)
  {
    goto LABEL_51;
  }

  v87[3] = v55;
  if (v64 == 4)
  {
    goto LABEL_59;
  }

LABEL_55:
  v66 = vmovn_s64(vcgtq_u64(v61, xmmword_1E0970230));
  if (v66.i8[0])
  {
    v87[4] = v55;
  }

  if (v66.i8[4])
  {
    v87[5] = v55;
  }

LABEL_59:
  LODWORD(v86) = v54;
  mlir::Block::addArguments(v39, v96, v97, v85, v54);
  if (v85 != v87)
  {
    free(v85);
  }

  if (v88 != &v90)
  {
    free(v88);
  }

  mlir::TypeRange::TypeRange(&v85, a9, a10);
  v88 = &v90;
  v89 = 0x600000000;
  v67 = *a2;
  if (a10 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v88, &v90, a10, 8);
    v68 = (v88 + 8 * (a10 & 0xFFFFFFFFFFFFFFFCLL));
    v69 = a10 & 3;
    v70 = vdupq_n_s64(v67);
    v71 = (v88 + 16);
    v72 = a10 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v71[-1] = v70;
      *v71 = v70;
      v71 += 2;
      v72 -= 4;
    }

    while (v72);
    if (a10 != (a10 & 0xFFFFFFFFFFFFFFFCLL))
    {
      do
      {
        *v68++ = v67;
        --v69;
      }

      while (v69);
    }

    goto LABEL_86;
  }

  if (!a10)
  {
    goto LABEL_86;
  }

  v73 = vdupq_n_s64(a10 - 1);
  v74 = a10 + 1;
  v75 = vmovn_s64(vcgeq_u64(v73, xmmword_1E09700F0));
  if ((v75.i8[0] & 1) == 0)
  {
    v76 = v74 & 0xE;
    if ((v75.i8[4] & 1) == 0)
    {
      goto LABEL_72;
    }

LABEL_75:
    v91 = v67;
    if (v76 == 2)
    {
      goto LABEL_86;
    }

    goto LABEL_76;
  }

  v90 = *a2;
  v76 = v74 & 0xE;
  if (v75.i8[4])
  {
    goto LABEL_75;
  }

LABEL_72:
  if (v76 == 2)
  {
    goto LABEL_86;
  }

LABEL_76:
  v77 = vmovn_s64(vcgtq_u64(v73, xmmword_1E0970220));
  if (v77.i8[0])
  {
    v92 = v67;
    if ((v77.i8[4] & 1) == 0)
    {
LABEL_78:
      if (v76 == 4)
      {
        goto LABEL_86;
      }

      goto LABEL_82;
    }
  }

  else if ((v77.i8[4] & 1) == 0)
  {
    goto LABEL_78;
  }

  v93 = v67;
  if (v76 == 4)
  {
    goto LABEL_86;
  }

LABEL_82:
  v78 = vmovn_s64(vcgtq_u64(v73, xmmword_1E0970230));
  if (v78.i8[0])
  {
    v94 = v67;
  }

  if (v78.i8[4])
  {
    v95 = v67;
  }

LABEL_86:
  LODWORD(v89) = a10;
  mlir::Block::addArguments(v39, v85, v86, v88, a10);
  if (v88 != &v90)
  {
    free(v88);
  }

  v80 = v39[5];
  *(a1 + 16) = v39;
  *(a1 + 24) = v80;
  v81 = *a2;
  if (a13)
  {
    mlir::ValueRange::ValueRange(&v88, v39[6], (v39[7] - v39[6]) >> 3);
    a13(a14, a1, v81, v88, v89);
    v82 = v84;
    if (v84)
    {
      goto LABEL_90;
    }
  }

  else
  {
    mlir::scf::ForallOp::ensureTerminator(v35, a1, v81, v79);
    v82 = v84;
    if (v84)
    {
LABEL_90:
      *v36 = v82;
      v83 = v98;
      if (v98 == v100)
      {
        goto LABEL_92;
      }

      goto LABEL_91;
    }
  }

  *v36 = 0;
  *(a1 + 24) = 0;
  v83 = v98;
  if (v98 != v100)
  {
LABEL_91:
    free(v83);
  }

LABEL_92:
  if (v101 != v103)
  {
    free(v101);
  }

  if (v104 != v106)
  {
    free(v104);
  }

  if (v107 != v109)
  {
    free(v107);
  }

  if (v110 != v112)
  {
    free(v110);
  }

  if (v113 != v115)
  {
    free(v113);
  }
}

void mlir::scf::ForallOp::getCombiningOps(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a3 + 16;
  *a3 = a3 + 16;
  *(a3 + 8) = 0x600000000;
  v6 = *(((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40) + 8);
  if (v6)
  {
    v7 = (v6 - 8);
  }

  else
  {
    v7 = 0;
  }

  Terminator = mlir::Block::getTerminator(v7, a2);
  v10 = *(((Terminator + 16 * ((*(Terminator + 44) >> 23) & 1) + ((*(Terminator + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(Terminator + 40) + 8);
  if (v10)
  {
    v11 = v10 - 8;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11 + 32;
  v13 = *(v11 + 40);
  if (v13 != v11 + 32)
  {
    do
    {
      v14 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v13, v9);
      v15 = *(*(v14 + 48) + 16);
      v16 = v15 == &mlir::detail::TypeIDResolver<mlir::tensor::ParallelInsertSliceOp,void>::id;
      if (v15 == &mlir::detail::TypeIDResolver<mlir::tensor::ParallelInsertSliceOp,void>::id)
      {
        v17 = v14;
      }

      else
      {
        v17 = 0;
      }

      v21 = v17;
      if (v16)
      {
        ODSOperandIndexAndLength = mlir::memref::ReinterpretCastOp::getODSOperandIndexAndLength(&v21, 1u);
        v19 = v21;
        if (*(*(v21 + 72) + 32 * ODSOperandIndexAndLength + 24) == a2)
        {
          v20 = *(a3 + 8);
          if (v20 >= *(a3 + 12))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(a3, v5, v20 + 1, 8);
            v20 = *(a3 + 8);
          }

          *(*a3 + 8 * v20) = v19;
          ++*(a3 + 8);
        }
      }

      v13 = *(v13 + 8);
    }

    while (v13 != v12);
  }
}

void mlir::scf::ForallOp::getLoopInductionVars(mlir::scf::ForallOp *this@<X0>, uint64_t a2@<X8>)
{
  v30[6] = *MEMORY[0x1E69E9840];
  v3 = *(*this + 44);
  v4 = *this + 16 * ((v3 >> 23) & 1);
  v5 = *(((v4 + ((v3 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40) + 8);
  if (v5)
  {
    v6 = v5 - 8;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v6 + 48);
  v8 = (*(v6 + 56) - v7) >> 3;
  __src = *(v4 + 72);
  mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&__src);
  if (v8 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  __src = v30;
  v29 = 0x600000000;
  if (v10 < 7)
  {
    v11 = 0;
    if (!v10)
    {
      v12 = v30;
      goto LABEL_19;
    }

    v13 = 0;
    v12 = v30;
    v14 = v30;
    v15 = (v10 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v15 < 7)
    {
      goto LABEL_9;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v30, v10, 8);
    v11 = v29;
    v12 = __src;
    v13 = v29;
    v14 = __src + 8 * v29;
    v15 = (v10 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v15 < 7)
    {
LABEL_9:
      v16 = v7;
      do
      {
LABEL_16:
        v24 = *v16++;
        *v14++ = v24;
      }

      while (v16 != (v7 + 8 * v10));
      goto LABEL_19;
    }
  }

  v17 = &v12[v13];
  v16 = v7;
  if (v17 - v7 < 0x20)
  {
    goto LABEL_16;
  }

  v18 = v15 + 1;
  v19 = 8 * (v18 & 0x3FFFFFFFFFFFFFFCLL);
  v14 = (v14 + v19);
  v16 = (v7 + v19);
  v20 = (v7 + 16);
  v21 = v17 + 2;
  v22 = v18 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v23 = *v20;
    *(v21 - 1) = *(v20 - 1);
    *v21 = v23;
    v20 += 2;
    v21 += 2;
    v22 -= 4;
  }

  while (v22);
  if (v18 != (v18 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_16;
  }

LABEL_19:
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  v25 = (v11 + v10);
  LODWORD(v29) = v25;
  if (v25 && &__src != a2)
  {
    if (v12 == v30)
    {
      v27 = v25;
      if (v25 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v25, 8), v27 = v29, v12 = __src, v29))
      {
        memcpy(*a2, v12, 8 * v27);
        v12 = __src;
      }

      *(a2 + 8) = v25;
    }

    else
    {
      *a2 = v12;
      v26 = HIDWORD(v29);
      *(a2 + 8) = v25;
      *(a2 + 12) = v26;
      __src = v30;
      HIDWORD(v29) = 0;
      v12 = v30;
    }

    LODWORD(v29) = 0;
  }

  *(a2 + 64) = 1;
  if (v12 != v30)
  {
    free(v12);
  }
}

void mlir::scf::ForallOp::getCanonicalizationPatterns(void *a1, uint64_t a2)
{
  v4 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v104, 1);
  mlir::Pattern::Pattern((v4 + 2), "tensor.dim", 10, v104, a2, 0, 0);
  *v4 = &unk_1F5B06D78;
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

  v104 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::DimOfForallOp]";
  v105 = 86;
  v9 = llvm::StringRef::find(&v104, "DesiredTypeName = ", 0x12uLL, 0);
  if (v105 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v105;
  }

  v11 = &v104[v10];
  v12 = v105 - v10;
  if (v105 - v10 >= 0x12)
  {
    v13 = 18;
  }

  else
  {
    v13 = v105 - v10;
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
  v24 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v104, 1);
  mlir::Pattern::Pattern((v24 + 2), "scf.forall", 10, v104, a2, 0, 0);
  *v24 = &unk_1F5B06DE8;
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

  v104 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::FoldTensorCastOfOutputIntoForallOp]";
  v105 = 107;
  v29 = llvm::StringRef::find(&v104, "DesiredTypeName = ", 0x12uLL, 0);
  if (v105 >= v29)
  {
    v30 = v29;
  }

  else
  {
    v30 = v105;
  }

  v31 = &v104[v30];
  v32 = v105 - v30;
  if (v105 - v30 >= 0x12)
  {
    v33 = 18;
  }

  else
  {
    v33 = v105 - v30;
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
    goto LABEL_132;
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
      goto LABEL_133;
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
  mlir::PatternBenefit::PatternBenefit(&v104, 1);
  mlir::Pattern::Pattern((v44 + 2), "scf.forall", 10, v104, a2, 0, 0);
  *v44 = &unk_1F5B06E88;
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

  v104 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::ForallOpControlOperandsFolder]";
  v105 = 102;
  v49 = llvm::StringRef::find(&v104, "DesiredTypeName = ", 0x12uLL, 0);
  if (v105 >= v49)
  {
    v50 = v49;
  }

  else
  {
    v50 = v105;
  }

  v51 = &v104[v50];
  v52 = v105 - v50;
  if (v105 - v50 >= 0x12)
  {
    v53 = 18;
  }

  else
  {
    v53 = v105 - v50;
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
    goto LABEL_132;
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
      goto LABEL_133;
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
  mlir::PatternBenefit::PatternBenefit(&v104, 1);
  mlir::Pattern::Pattern((v64 + 2), "scf.forall", 10, v104, a2, 0, 0);
  *v64 = &unk_1F5B06EF8;
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

  v104 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::ForallOpIterArgsFolder]";
  v105 = 95;
  v69 = llvm::StringRef::find(&v104, "DesiredTypeName = ", 0x12uLL, 0);
  if (v105 >= v69)
  {
    v70 = v69;
  }

  else
  {
    v70 = v105;
  }

  v71 = &v104[v70];
  v72 = v105 - v70;
  if (v105 - v70 >= 0x12)
  {
    v73 = 18;
  }

  else
  {
    v73 = v105 - v70;
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
    goto LABEL_132;
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
      goto LABEL_133;
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
  mlir::PatternBenefit::PatternBenefit(&v104, 1);
  mlir::Pattern::Pattern((v84 + 2), "scf.forall", 10, v104, a2, 0, 0);
  *v84 = &unk_1F5B06F68;
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

  v104 = "StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::ForallOpSingleOrZeroIterationDimsFolder]";
  v105 = 112;
  v89 = llvm::StringRef::find(&v104, "DesiredTypeName = ", 0x12uLL, 0);
  if (v105 >= v89)
  {
    v90 = v89;
  }

  else
  {
    v90 = v105;
  }

  v91 = &v104[v90];
  v92 = v105 - v90;
  if (v105 - v90 >= 0x12)
  {
    v93 = 18;
  }

  else
  {
    v93 = v105 - v90;
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
LABEL_132:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
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
    if (!(v101 >> 61))
    {
      v102 = operator new(8 * v101);
      goto LABEL_129;
    }

LABEL_133:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v102 = 0;
LABEL_129:
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
}