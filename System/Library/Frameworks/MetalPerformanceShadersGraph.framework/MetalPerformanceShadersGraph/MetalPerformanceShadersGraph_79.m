void std::vector<llvm::OwningArrayRef<mlir::Operation *>>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 4)
  {
    if (a2)
    {
      v12 = 16 * a2;
      bzero(*(a1 + 8), 16 * a2);
      v4 = (v4 + v12);
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = (v4 - *a1) >> 4;
    v7 = v6 + a2;
    if ((v6 + a2) >> 60)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v8 = v3 - v5;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 >> 60)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v10 = a2;
      v11 = operator new(16 * v9);
      a2 = v10;
    }

    else
    {
      v11 = 0;
    }

    v13 = &v11[v6];
    v14 = 16 * a2;
    v15 = &v11[v9];
    bzero(v13, 16 * a2);
    v16 = &v13[v14];
    if (v5 != v4)
    {
      v17 = v5;
      v18 = v11;
      do
      {
        *v18++ = *v17;
        *v17 = 0;
        v17[1] = 0;
        v17 += 2;
      }

      while (v17 != v4);
      do
      {
        if (*v5)
        {
          operator delete[](*v5);
        }

        v5 += 2;
      }

      while (v5 != v4);
      v5 = *a1;
    }

    *a1 = v11;
    *(a1 + 8) = v16;
    *(a1 + 16) = v15;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void std::vector<mlir::TypeRange>::__append(uint64_t a1, unint64_t a2, _OWORD *a3)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      v13 = 16 * a2;
      v14 = &v5[a2];
      do
      {
        *v5++ = *a3;
        v13 -= 16;
      }

      while (v13);
      v5 = v14;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = (v5 - *a1) >> 4;
    if ((v6 + a2) >> 60)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v7 = v4 - *a1;
    v8 = v7 >> 3;
    if (v7 >> 3 <= v6 + a2)
    {
      v8 = v6 + a2;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      if (v9 >> 60)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v10 = a2;
      v11 = a3;
      v12 = operator new(16 * v9);
      a3 = v11;
      a2 = v10;
    }

    else
    {
      v12 = 0;
    }

    v15 = &v12[16 * v6];
    v16 = 16 * a2;
    v17 = &v15[16 * a2];
    v18 = v15;
    do
    {
      *v18 = *a3;
      v18 += 16;
      v16 -= 16;
    }

    while (v16);
    v19 = &v12[16 * v9];
    v20 = *a1;
    v21 = v5 - *a1;
    v22 = &v15[-v21];
    memcpy(&v15[-v21], *a1, v21);
    *a1 = v22;
    *(a1 + 8) = v17;
    *(a1 + 16) = v19;
    if (v20)
    {

      operator delete(v20);
    }
  }
}

void std::vector<unsigned int>::__append(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n, std::vector<unsigned int>::const_reference __x)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      v14 = &end[__n];
      v15 = *__x;
      v16 = (__n - 1) & 0x3FFFFFFFFFFFFFFFLL;
      if (v16 < 7)
      {
        goto LABEL_34;
      }

      v17 = v16 + 1;
      v18 = &end[v17 & 0x7FFFFFFFFFFFFFF8];
      v19 = vdupq_n_s32(v15);
      v20 = (end + 4);
      v21 = v17 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v20[-1] = v19;
        *v20 = v19;
        v20 += 2;
        v21 -= 8;
      }

      while (v21);
      end = v18;
      if (v17 != (v17 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_34:
        do
        {
          *end++ = v15;
        }

        while (end != v14);
      }

      end = v14;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = end - this->__begin_;
    v8 = (v7 >> 2) + __n;
    if (v8 >> 62)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v9 = value - begin;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (v10 >> 62)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v11 = __x;
      v12 = __n;
      v13 = operator new(4 * v10);
      __n = v12;
      __x = v11;
    }

    else
    {
      v13 = 0;
    }

    v22 = &v13[4 * (v7 >> 2)];
    v23 = v22 + __n;
    v24 = *__x;
    v25 = (__n - 1) & 0x3FFFFFFFFFFFFFFFLL;
    v26 = v22;
    if (v25 < 7)
    {
      goto LABEL_35;
    }

    v27 = v25 + 1;
    v26 = v22 + (v27 & 0x7FFFFFFFFFFFFFF8);
    v28 = vdupq_n_s32(v24);
    v29 = v22 + 1;
    v30 = v27 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v29[-1] = v28;
      *v29 = v28;
      v29 += 2;
      v30 -= 8;
    }

    while (v30);
    if (v27 != (v27 & 0x7FFFFFFFFFFFFFF8))
    {
LABEL_35:
      do
      {
        *v26++ = v24;
      }

      while (v26 != v23);
    }

    memcpy(v13, begin, v7);
    this->__begin_ = v13;
    this->__end_ = v23;
    this->__end_cap_.__value_ = &v13[4 * v10];
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void std::__stable_sort<std::_ClassicAlgPolicy,mlir::detail::PDLByteCode::match(mlir::Operation *,mlir::PatternRewriter &,llvm::SmallVectorImpl<mlir::detail::PDLByteCode::MatchResult> &,mlir::detail::PDLByteCodeMutableState &)::$_0 &,mlir::detail::PDLByteCode::MatchResult*>(uint64_t a1, const void **a2, unint64_t a3, void *a4, uint64_t a5)
{
  v57 = *MEMORY[0x1E69E9840];
  if (a3 < 2)
  {
    return;
  }

  v6 = a1;
  if (a3 == 2)
  {
    if (*(a1 + 112) < *(a2 - 4))
    {
      v7 = (a2 - 15);

      std::swap[abi:nn200100]<mlir::detail::PDLByteCode::MatchResult>(a1, v7);
    }

    return;
  }

  v8 = a3;
  if (a3 > 0)
  {
    v10 = a3 >> 1;
    v11 = (a1 + 120 * (a3 >> 1));
    v12 = a3 - (a3 >> 1);
    v13 = a3 >> 1;
    if (v8 <= a5)
    {
      std::__stable_sort_move<std::_ClassicAlgPolicy,mlir::detail::PDLByteCode::match(mlir::Operation *,mlir::PatternRewriter &,llvm::SmallVectorImpl<mlir::detail::PDLByteCode::MatchResult> &,mlir::detail::PDLByteCodeMutableState &)::$_0 &,mlir::detail::PDLByteCode::MatchResult*>(a1, v11, v13, a4);
      v42 = &a4[15 * v10];
      std::__stable_sort_move<std::_ClassicAlgPolicy,mlir::detail::PDLByteCode::match(mlir::Operation *,mlir::PatternRewriter &,llvm::SmallVectorImpl<mlir::detail::PDLByteCode::MatchResult> &,mlir::detail::PDLByteCodeMutableState &)::$_0 &,mlir::detail::PDLByteCode::MatchResult*>(v6 + 120 * (v8 >> 1), a2, v8 - (v8 >> 1), v42);
      v43 = &a4[15 * v8];
      v44 = v42;
      v45 = a4;
      while (v44 != v43)
      {
        if (*(v45 + 112) >= *(v44 + 112))
        {
          mlir::detail::PDLByteCode::MatchResult::operator=(v6, v45);
          v45 += 120;
          v6 += 120;
          if (v45 == v42)
          {
            goto LABEL_69;
          }
        }

        else
        {
          mlir::detail::PDLByteCode::MatchResult::operator=(v6, v44);
          v44 += 120;
          v6 += 120;
          if (v45 == v42)
          {
LABEL_69:
            while (v44 != v43)
            {
              mlir::detail::PDLByteCode::MatchResult::operator=(v6, v44);
              v44 += 120;
              v6 += 120;
            }

            goto LABEL_70;
          }
        }
      }

      while (v45 != v42)
      {
        mlir::detail::PDLByteCode::MatchResult::operator=(v6, v45);
        v45 += 120;
        v6 += 120;
      }

LABEL_70:
      if (a4)
      {
        v46 = a4 + 13;
        do
        {
          v47 = *(v46 - 2);
          if (v46 != v47)
          {
            free(v47);
          }

          v48 = *(v46 - 4);
          if (v46 - 2 != v48)
          {
            free(v48);
          }

          v49 = *(v46 - 12);
          if (v46 - 10 != v49)
          {
            free(v49);
          }

          v46 += 15;
          --v8;
        }

        while (v8);
      }
    }

    else
    {
      std::__stable_sort<std::_ClassicAlgPolicy,mlir::detail::PDLByteCode::match(mlir::Operation *,mlir::PatternRewriter &,llvm::SmallVectorImpl<mlir::detail::PDLByteCode::MatchResult> &,mlir::detail::PDLByteCodeMutableState &)::$_0 &,mlir::detail::PDLByteCode::MatchResult*>(a1, v11, v13, a4, a5);
      std::__stable_sort<std::_ClassicAlgPolicy,mlir::detail::PDLByteCode::match(mlir::Operation *,mlir::PatternRewriter &,llvm::SmallVectorImpl<mlir::detail::PDLByteCode::MatchResult> &,mlir::detail::PDLByteCodeMutableState &)::$_0 &,mlir::detail::PDLByteCode::MatchResult*>(v6 + 120 * (v8 >> 1), a2, v8 - (v8 >> 1), a4, a5);

      std::__inplace_merge<std::_ClassicAlgPolicy,mlir::detail::PDLByteCode::match(mlir::Operation *,mlir::PatternRewriter &,llvm::SmallVectorImpl<mlir::detail::PDLByteCode::MatchResult> &,mlir::detail::PDLByteCodeMutableState &)::$_0 &,mlir::detail::PDLByteCode::MatchResult*>(v6, v11, a2, v10, v12, a4, a5);
    }

    return;
  }

  if (a1 == a2)
  {
    return;
  }

  v15 = (a1 + 120);
  if ((a1 + 120) == a2)
  {
    return;
  }

  v16 = 0;
  v17 = a1;
  while (2)
  {
    v18 = v15;
    if (*(v17 + 112) >= *(v17 + 232))
    {
      goto LABEL_16;
    }

    v50 = *v15;
    v51[0] = v52;
    v51[1] = 0x600000000;
    if (*(v17 + 136))
    {
      llvm::SmallVectorImpl<llvm::SMLoc>::operator=(v51, (v17 + 128));
    }

    v53[0] = v54;
    v53[1] = 0;
    if (*(v17 + 200))
    {
      llvm::SmallVectorImpl<GPU::GPURegionCallOpHandler::RegionInfo>::operator=(v53, (v17 + 192));
    }

    v54[0] = &v55;
    v54[1] = 0;
    if (*(v17 + 216))
    {
      llvm::SmallVectorImpl<GPU::GPURegionCallOpHandler::RegionInfo>::operator=(v54, (v17 + 208));
    }

    v55 = *(v17 + 224);
    v56 = *(v17 + 232);
    v19 = v16;
    while (1)
    {
      v20 = v6 + v19;
      v21 = *(v6 + v19 + 8);
      *(v6 + v19 + 120) = *(v6 + v19);
      v22 = v6 + v19 + 24;
      if (v22 == v21)
      {
        v36 = (v20 + 16);
        v37 = *(v20 + 16);
        v38 = *(v20 + 136);
        if (v38 >= v37)
        {
          if (v37)
          {
            memmove(*(v20 + 128), v21, 8 * v37);
          }
        }

        else
        {
          if (*(v6 + v19 + 140) < v37)
          {
            *(v20 + 136) = 0;
            llvm::SmallVectorBase<unsigned int>::grow_pod(v20 + 128, v6 + v19 + 144, v37, 8);
            v38 = 0;
            v39 = *v36;
            if (!*v36)
            {
              goto LABEL_44;
            }

            goto LABEL_43;
          }

          if (v38)
          {
            memmove(*(v20 + 128), v21, 8 * v38);
            v39 = *v36 - v38;
            if (!v39)
            {
              goto LABEL_44;
            }

            goto LABEL_43;
          }

          v38 = 0;
          v39 = *v36;
          if (*v36)
          {
LABEL_43:
            memcpy((*(v20 + 128) + 8 * v38), (*(v20 + 8) + 8 * v38), 8 * v39);
          }
        }

LABEL_44:
        *(v20 + 136) = v37;
        *v36 = 0;
        v25 = v6 + v19;
        v26 = *(v6 + v19 + 80);
        if (!v26)
        {
          goto LABEL_45;
        }

        goto LABEL_29;
      }

      v23 = *(v20 + 128);
      if ((v20 + 144) != v23)
      {
        free(v23);
        v21 = *(v20 + 8);
      }

      v24 = v6 + v19;
      *(v20 + 128) = v21;
      *(v24 + 136) = *(v6 + v19 + 16);
      *(v20 + 8) = v22;
      *(v24 + 20) = 0;
      *(v17 + 16) = 0;
      v25 = v6 + v19;
      v26 = *(v6 + v19 + 80);
      if (!v26)
      {
LABEL_45:
        *(v25 + 200) = 0;
        v30 = v6 + v19;
        v31 = *(v6 + v19 + 96);
        if (!v31)
        {
          goto LABEL_46;
        }

        goto LABEL_32;
      }

LABEL_29:
      v27 = *(v25 + 192);
      if ((v25 + 208) != v27)
      {
        free(v27);
        v26 = *(v25 + 80);
      }

      v28 = (v6 + v19);
      *(v25 + 192) = *(v25 + 72);
      v29 = *(v6 + v19 + 84);
      v28[50] = v26;
      v28[51] = v29;
      *(v25 + 72) = v6 + v19 + 88;
      v28[21] = 0;
      *(v17 + 80) = 0;
      v30 = v6 + v19;
      v31 = *(v6 + v19 + 96);
      if (!v31)
      {
LABEL_46:
        v33 = (v30 + 216);
        goto LABEL_47;
      }

LABEL_32:
      v32 = *(v30 + 208);
      if ((v30 + 224) != v32)
      {
        free(v32);
        v31 = *(v30 + 96);
      }

      v33 = (v17 + 96);
      v34 = (v6 + v19);
      *(v30 + 208) = *(v30 + 88);
      v35 = *(v6 + v19 + 100);
      v34[54] = v31;
      v34[55] = v35;
      *(v30 + 88) = v6 + v19 + 104;
      v34[25] = 0;
LABEL_47:
      *v33 = 0;
      v40 = v6 + v19;
      *(v40 + 224) = *(v6 + v19 + 104);
      *(v40 + 232) = *(v6 + v19 + 112);
      if (!v19)
      {
        break;
      }

      v17 -= 120;
      v19 -= 120;
      if (*(v40 - 8) >= v56)
      {
        v41 = v6 + v19 + 120;
        goto LABEL_53;
      }
    }

    v41 = v6;
LABEL_53:
    mlir::detail::PDLByteCode::MatchResult::operator=(v41, &v50);
    if (v54[0] != &v55)
    {
      free(v54[0]);
    }

    if (v53[0] != v54)
    {
      free(v53[0]);
    }

    if (v51[0] != v52)
    {
      free(v51[0]);
    }

LABEL_16:
    v15 = v18 + 15;
    v16 += 120;
    v17 = v18;
    if (v18 + 15 != a2)
    {
      continue;
    }

    break;
  }
}

uint64_t std::__stable_sort_move<std::_ClassicAlgPolicy,mlir::detail::PDLByteCode::match(mlir::Operation *,mlir::PatternRewriter &,llvm::SmallVectorImpl<mlir::detail::PDLByteCode::MatchResult> &,mlir::detail::PDLByteCodeMutableState &)::$_0 &,mlir::detail::PDLByteCode::MatchResult*>(uint64_t result, const void **a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v4 = a4;
    v5 = a2;
    v6 = result;
    if (a3 == 2)
    {
      v10 = a4 + 3;
      if (*(result + 112) < *(a2 - 4))
      {
        *a4 = *(a2 - 15);
        a4[1] = v10;
        a4[2] = 0x600000000;
        if (*(a2 - 26))
        {
          llvm::SmallVectorImpl<llvm::SMLoc>::operator=((a4 + 1), a2 - 14);
        }

        v4[9] = v4 + 11;
        v4[10] = 0;
        if (*(v5 - 10))
        {
          llvm::SmallVectorImpl<GPU::GPURegionCallOpHandler::RegionInfo>::operator=((v4 + 9), v5 - 6);
        }

        v4[11] = v4 + 13;
        v4[12] = 0;
        if (*(v5 - 6))
        {
          llvm::SmallVectorImpl<GPU::GPURegionCallOpHandler::RegionInfo>::operator=((v4 + 11), v5 - 4);
        }

        v11 = *(v5 - 2);
        *(v4 + 56) = *(v5 - 4);
        v4[13] = v11;
        v12 = *v6;
        v4[16] = v4 + 18;
        v4[15] = v12;
        v4[17] = 0x600000000;
        if (*(v6 + 4))
        {
          llvm::SmallVectorImpl<llvm::SMLoc>::operator=((v4 + 16), v6 + 1);
        }

        v7 = (v4 + 26);
        v4[24] = v4 + 26;
        v4[25] = 0;
        result = (v4 + 24);
        if (*(v6 + 20))
        {
          result = llvm::SmallVectorImpl<GPU::GPURegionCallOpHandler::RegionInfo>::operator=(result, v6 + 9);
        }

        v8 = v4 + 28;
        v4[26] = v4 + 28;
        v4[27] = 0;
        if (!*(v6 + 24))
        {
          goto LABEL_10;
        }

LABEL_9:
        result = llvm::SmallVectorImpl<GPU::GPURegionCallOpHandler::RegionInfo>::operator=(v7, v6 + 11);
LABEL_10:
        v9 = v6[13];
        *(v8 + 4) = *(v6 + 56);
        *v8 = v9;
        return result;
      }

      *a4 = *result;
      a4[1] = v10;
      a4[2] = 0x600000000;
      if (*(result + 16))
      {
        llvm::SmallVectorImpl<llvm::SMLoc>::operator=((a4 + 1), (result + 8));
      }

      v4[9] = v4 + 11;
      v4[10] = 0;
      if (*(v6 + 20))
      {
        llvm::SmallVectorImpl<GPU::GPURegionCallOpHandler::RegionInfo>::operator=((v4 + 9), v6 + 9);
      }

      v4[11] = v4 + 13;
      v4[12] = 0;
      if (*(v6 + 24))
      {
        llvm::SmallVectorImpl<GPU::GPURegionCallOpHandler::RegionInfo>::operator=((v4 + 11), v6 + 11);
      }

      v43 = v6[13];
      *(v4 + 56) = *(v6 + 56);
      v4[13] = v43;
      v44 = *(v5 - 15);
      v4[16] = v4 + 18;
      v4[15] = v44;
      v4[17] = 0x600000000;
      if (*(v5 - 26))
      {
        llvm::SmallVectorImpl<llvm::SMLoc>::operator=((v4 + 16), v5 - 14);
      }

      v4[24] = v4 + 26;
      v4[25] = 0;
      result = (v4 + 24);
      if (*(v5 - 10))
      {
        result = llvm::SmallVectorImpl<GPU::GPURegionCallOpHandler::RegionInfo>::operator=(result, v5 - 6);
      }

      v4[26] = v4 + 28;
      v4[27] = 0;
      if (*(v5 - 6))
      {
        result = llvm::SmallVectorImpl<GPU::GPURegionCallOpHandler::RegionInfo>::operator=((v4 + 26), v5 - 4);
      }

      v45 = *(v5 - 2);
      *(v4 + 116) = *(v5 - 4);
      v4[28] = v45;
    }

    else
    {
      if (a3 == 1)
      {
        *a4 = *result;
        a4[1] = a4 + 3;
        a4[2] = 0x600000000;
        if (*(result + 16))
        {
          llvm::SmallVectorImpl<llvm::SMLoc>::operator=((a4 + 1), (result + 8));
        }

        v7 = (v4 + 11);
        v4[9] = v4 + 11;
        v4[10] = 0;
        result = (v4 + 9);
        if (*(v6 + 20))
        {
          result = llvm::SmallVectorImpl<GPU::GPURegionCallOpHandler::RegionInfo>::operator=(result, v6 + 9);
        }

        v8 = v4 + 13;
        v4[11] = v4 + 13;
        v4[12] = 0;
        if (!*(v6 + 24))
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      if (a3 > 8)
      {
        v46 = a3 >> 1;
        v47 = 15 * (a3 >> 1);
        v48 = result + v47 * 8;
        std::__stable_sort<std::_ClassicAlgPolicy,mlir::detail::PDLByteCode::match(mlir::Operation *,mlir::PatternRewriter &,llvm::SmallVectorImpl<mlir::detail::PDLByteCode::MatchResult> &,mlir::detail::PDLByteCodeMutableState &)::$_0 &,mlir::detail::PDLByteCode::MatchResult*>(result, result + v47 * 8, v46, a4, v46);
        result = std::__stable_sort<std::_ClassicAlgPolicy,mlir::detail::PDLByteCode::match(mlir::Operation *,mlir::PatternRewriter &,llvm::SmallVectorImpl<mlir::detail::PDLByteCode::MatchResult> &,mlir::detail::PDLByteCodeMutableState &)::$_0 &,mlir::detail::PDLByteCode::MatchResult*>(&v6[v47], v5, a3 - v46, &v4[v47], a3 - v46);
        v50 = &v6[v47];
        while (v50 != v5)
        {
          v52 = v4 + 3;
          if (*(v6 + 56) >= *(v50 + 56))
          {
            *v4 = *v6;
            v4[1] = v52;
            v4[2] = 0x600000000;
            if (*(v6 + 4))
            {
              llvm::SmallVectorImpl<llvm::SMLoc>::operator=((v4 + 1), v6 + 1);
            }

            v4[9] = v4 + 11;
            v4[10] = 0;
            result = (v4 + 9);
            if (*(v6 + 20))
            {
              result = llvm::SmallVectorImpl<GPU::GPURegionCallOpHandler::RegionInfo>::operator=(result, v6 + 9);
            }

            v4[11] = v4 + 13;
            v4[12] = 0;
            if (*(v6 + 24))
            {
              result = llvm::SmallVectorImpl<GPU::GPURegionCallOpHandler::RegionInfo>::operator=((v4 + 11), v6 + 11);
            }

            v51 = v6[13];
            *(v4 + 56) = *(v6 + 56);
            v4[13] = v51;
            v6 += 15;
            v4 += 15;
            if (v6 == v48)
            {
LABEL_122:
              if (v50 != v5)
              {
                v61 = 0;
                do
                {
                  v63 = &v50[v61];
                  v64 = &v4[v61];
                  *v64 = v50[v61];
                  v4[v61 + 1] = &v4[v61 + 3];
                  v64[2] = 0x600000000;
                  if (LODWORD(v50[v61 + 2]))
                  {
                    llvm::SmallVectorImpl<llvm::SMLoc>::operator=(&v4[v61 + 1], v63 + 1);
                  }

                  v64[9] = v64 + 11;
                  result = (v64 + 9);
                  v64[10] = 0;
                  if (*(v63 + 20))
                  {
                    result = llvm::SmallVectorImpl<GPU::GPURegionCallOpHandler::RegionInfo>::operator=(result, &v50[v61 + 9]);
                  }

                  v65 = &v4[v61 + 13];
                  v64[11] = v65;
                  v4[v61 + 12] = 0;
                  if (*(v63 + 24))
                  {
                    result = llvm::SmallVectorImpl<GPU::GPURegionCallOpHandler::RegionInfo>::operator=((v64 + 11), &v50[v61 + 11]);
                  }

                  v62 = v63[13];
                  LOWORD(v4[v61 + 14]) = *(v63 + 56);
                  *v65 = v62;
                  v61 += 15;
                }

                while (v63 + 15 != v5);
              }

              return result;
            }
          }

          else
          {
            *v4 = *v50;
            v4[1] = v52;
            v4[2] = 0x600000000;
            if (*(v50 + 4))
            {
              llvm::SmallVectorImpl<llvm::SMLoc>::operator=((v4 + 1), v50 + 1);
            }

            v4[9] = v4 + 11;
            v4[10] = 0;
            result = (v4 + 9);
            if (*(v50 + 20))
            {
              result = llvm::SmallVectorImpl<GPU::GPURegionCallOpHandler::RegionInfo>::operator=(result, v50 + 9);
            }

            v4[11] = v4 + 13;
            v4[12] = 0;
            if (*(v50 + 24))
            {
              result = llvm::SmallVectorImpl<GPU::GPURegionCallOpHandler::RegionInfo>::operator=((v4 + 11), v50 + 11);
            }

            v53 = v50[13];
            *(v4 + 56) = *(v50 + 56);
            v4[13] = v53;
            v50 += 15;
            v4 += 15;
            if (v6 == v48)
            {
              goto LABEL_122;
            }
          }
        }

        if (v6 != v48)
        {
          v54 = 0;
          do
          {
            v56 = &v6[v54];
            v57 = &v4[v54];
            *v57 = v6[v54];
            v4[v54 + 1] = &v4[v54 + 3];
            result = &v4[v54 + 1];
            v57[2] = 0x600000000;
            if (LODWORD(v6[v54 + 2]))
            {
              result = llvm::SmallVectorImpl<llvm::SMLoc>::operator=(result, v56 + 1);
            }

            v58 = (v57 + 11);
            v57[9] = v57 + 11;
            v57[10] = 0;
            v59 = (v57 + 9);
            if (*(v56 + 20))
            {
              result = llvm::SmallVectorImpl<GPU::GPURegionCallOpHandler::RegionInfo>::operator=(v59, &v6[v54 + 9]);
            }

            v60 = &v4[v54 + 13];
            *v58 = v60;
            v4[v54 + 12] = 0;
            if (*(v56 + 24))
            {
              result = llvm::SmallVectorImpl<GPU::GPURegionCallOpHandler::RegionInfo>::operator=(v58, &v6[v54 + 11]);
            }

            v55 = v56[13];
            LOWORD(v4[v54 + 14]) = *(v56 + 56);
            *v60 = v55;
            v54 += 15;
          }

          while (v56 + 15 != v48);
        }
      }

      else if (result != a2)
      {
        *a4 = *result;
        a4[1] = a4 + 3;
        a4[2] = 0x600000000;
        if (*(result + 16))
        {
          llvm::SmallVectorImpl<llvm::SMLoc>::operator=((a4 + 1), (result + 8));
        }

        v4[9] = v4 + 11;
        v4[10] = 0;
        result = (v4 + 9);
        if (*(v6 + 20))
        {
          result = llvm::SmallVectorImpl<GPU::GPURegionCallOpHandler::RegionInfo>::operator=(result, v6 + 9);
        }

        v4[11] = v4 + 13;
        v4[12] = 0;
        if (*(v6 + 24))
        {
          result = llvm::SmallVectorImpl<GPU::GPURegionCallOpHandler::RegionInfo>::operator=((v4 + 11), v6 + 11);
        }

        v13 = v6[13];
        *(v4 + 56) = *(v6 + 56);
        v4[13] = v13;
        v14 = v6 + 15;
        if (v6 + 15 != v5)
        {
          v15 = 0;
          v16 = v4;
          v66 = v5;
          do
          {
            v18 = v14;
            v19 = v16 + 18;
            if (*(v16 + 56) >= *(v6 + 116))
            {
              v16[15] = *v18;
              v16[16] = v19;
              v16[17] = 0x600000000;
              if (*(v6 + 34))
              {
                llvm::SmallVectorImpl<llvm::SMLoc>::operator=((v16 + 16), v6 + 16);
              }

              v16[24] = v16 + 26;
              v16[25] = 0;
              result = (v16 + 24);
              if (*(v6 + 50))
              {
                result = llvm::SmallVectorImpl<GPU::GPURegionCallOpHandler::RegionInfo>::operator=(result, v6 + 24);
              }

              v16[26] = v16 + 28;
              v16[27] = 0;
              if (*(v6 + 54))
              {
                result = llvm::SmallVectorImpl<GPU::GPURegionCallOpHandler::RegionInfo>::operator=((v16 + 26), v6 + 26);
              }

              v17 = v6[28];
              *(v16 + 116) = *(v6 + 116);
              v16[28] = v17;
            }

            else
            {
              v16[15] = *v16;
              v16[16] = v19;
              v16[17] = 0x600000000;
              if (*(v16 + 4))
              {
                llvm::SmallVectorImpl<llvm::SMLoc>::operator=((v16 + 16), v16 + 1);
              }

              v16[24] = v16 + 26;
              v16[25] = 0;
              if (*(v16 + 20))
              {
                llvm::SmallVectorImpl<GPU::GPURegionCallOpHandler::RegionInfo>::operator=((v16 + 24), v16 + 9);
              }

              v16[26] = v16 + 28;
              v16[27] = 0;
              if (*(v16 + 24))
              {
                llvm::SmallVectorImpl<GPU::GPURegionCallOpHandler::RegionInfo>::operator=((v16 + 26), v16 + 11);
              }

              v16[28] = v16[13];
              *(v16 + 116) = *(v16 + 56);
              v20 = v4;
              if (v16 != v4)
              {
                v67 = v18;
                v68 = v15;
                v21 = v15;
                v22 = v16;
                while (1)
                {
                  v20 = v4 + v21;
                  if (*(v4 + v21 - 8) >= *(v6 + 116))
                  {
LABEL_79:
                    v5 = v66;
                    v18 = v67;
                    v15 = v68;
                    goto LABEL_80;
                  }

                  v25 = *(v20 - 112);
                  *v20 = *(v20 - 120);
                  if ((v20 - 96) == v25)
                  {
                    break;
                  }

                  v26 = *(v20 + 8);
                  v27 = v4 + v21;
                  if (v4 + v21 + 24 != v26)
                  {
                    free(v26);
                    v25 = *(v20 - 112);
                  }

                  *(v20 + 8) = v25;
                  *(v27 + 2) = *(v27 - 13);
                  *(v20 - 112) = v20 - 96;
                  *(v27 - 25) = 0;
                  *(v22 - 26) = 0;
                  v28 = v4 + v21;
                  v29 = *(v4 + v21 - 40);
                  if (!v29)
                  {
LABEL_66:
                    *(v28 + 20) = 0;
                    v33 = v4 + v21;
                    v34 = *(v4 + v21 - 24);
                    if (v34)
                    {
                      goto LABEL_67;
                    }

                    goto LABEL_45;
                  }

LABEL_52:
                  v30 = *(v28 + 9);
                  if (v28 + 88 != v30)
                  {
                    free(v30);
                    v29 = *(v28 - 10);
                  }

                  v31 = v4 + v21;
                  *(v28 + 9) = *(v28 - 6);
                  v32 = *(v4 + v21 - 36);
                  *(v31 + 20) = v29;
                  *(v31 + 21) = v32;
                  *(v28 - 6) = v4 + v21 - 32;
                  *(v31 - 9) = 0;
                  *(v22 - 10) = 0;
                  v33 = v4 + v21;
                  v34 = *(v4 + v21 - 24);
                  if (v34)
                  {
LABEL_67:
                    v40 = *(v33 + 11);
                    if (v33 + 104 != v40)
                    {
                      free(v40);
                      v34 = *(v33 - 6);
                    }

                    v23 = v22 - 3;
                    v41 = v4 + v21;
                    *(v33 + 11) = *(v33 - 4);
                    v42 = *(v4 + v21 - 20);
                    *(v41 + 24) = v34;
                    *(v41 + 25) = v42;
                    *(v33 - 4) = v4 + v21 - 16;
                    *(v41 - 5) = 0;
                    goto LABEL_46;
                  }

LABEL_45:
                  v23 = (v33 + 96);
LABEL_46:
                  v22 -= 15;
                  *v23 = 0;
                  v24 = v4 + v21;
                  *(v24 + 13) = *(v4 + v21 - 16);
                  *(v24 + 56) = *(v20 - 8);
                  v21 -= 120;
                  if (!v21)
                  {
                    v20 = v4;
                    goto LABEL_79;
                  }
                }

                v35 = v4 + v21;
                v36 = (v4 + v21 - 104);
                v37 = *v36;
                v38 = *(v4 + v21 + 16);
                if (v38 >= v37)
                {
                  if (v37)
                  {
                    memmove(*(v20 + 8), v25, 8 * v37);
                  }
                }

                else
                {
                  if (*(v35 + 5) < v37)
                  {
                    *(v35 + 4) = 0;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(v20 + 8, v4 + v21 + 24, v37, 8);
                    v38 = 0;
                    v39 = *v36;
                    if (!*v36)
                    {
                      goto LABEL_65;
                    }

                    goto LABEL_64;
                  }

                  if (v38)
                  {
                    memmove(*(v20 + 8), v25, 8 * v38);
                    v39 = *v36 - v38;
                    if (!v39)
                    {
                      goto LABEL_65;
                    }

                    goto LABEL_64;
                  }

                  v38 = 0;
                  v39 = *v36;
                  if (*v36)
                  {
LABEL_64:
                    memcpy((*(v20 + 8) + 8 * v38), (*(v20 - 112) + 8 * v38), 8 * v39);
                  }
                }

LABEL_65:
                *(v35 + 4) = v37;
                *v36 = 0;
                v28 = v4 + v21;
                v29 = *(v4 + v21 - 40);
                if (!v29)
                {
                  goto LABEL_66;
                }

                goto LABEL_52;
              }

LABEL_80:
              result = mlir::detail::PDLByteCode::MatchResult::operator=(v20, v18);
            }

            v16 += 15;
            v14 = v18 + 15;
            v15 += 120;
            v6 = v18;
          }

          while (v18 + 15 != v5);
        }
      }
    }
  }

  return result;
}

void std::__inplace_merge<std::_ClassicAlgPolicy,mlir::detail::PDLByteCode::match(mlir::Operation *,mlir::PatternRewriter &,llvm::SmallVectorImpl<mlir::detail::PDLByteCode::MatchResult> &,mlir::detail::PDLByteCodeMutableState &)::$_0 &,mlir::detail::PDLByteCode::MatchResult*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a5)
  {
    return;
  }

  while (a5 > a7 && a4 > a7)
  {
    if (!a4)
    {
      return;
    }

    v10 = 0;
    v11 = -a4;
    while (1)
    {
      v12 = a1 + v10;
      if (*(a1 + v10 + 112) < *(a2 + 112))
      {
        break;
      }

      v10 += 120;
      if (__CFADD__(v11++, 1))
      {
        return;
      }
    }

    v14 = -v11;
    v72 = a3;
    if (-v11 >= a5)
    {
      if (v11 == -1)
      {

        std::swap[abi:nn200100]<mlir::detail::PDLByteCode::MatchResult>(a1 + v10, a2);
        return;
      }

      v25 = v14 / 2;
      v19 = a1 + 120 * (v14 / 2) + v10;
      if (a3 == a2)
      {
        v16 = a2;
      }

      else
      {
        v26 = 0xEEEEEEEEEEEEEEEFLL * ((a3 - a2) >> 3);
        v16 = a2;
        do
        {
          v27 = v26 >> 1;
          v28 = v16 + 120 * (v26 >> 1);
          v29 = *(v28 + 112);
          v30 = v28 + 120;
          v26 += ~(v26 >> 1);
          if (v29 > *(v19 + 112))
          {
            v16 = v30;
          }

          else
          {
            v26 = v27;
          }
        }

        while (v26);
      }

      v15 = 0xEEEEEEEEEEEEEEEFLL * ((v16 - a2) >> 3);
      v31 = v16;
      if (v19 != a2)
      {
LABEL_31:
        v31 = v19;
        if (a2 != v16)
        {
          v69 = v15;
          v70 = a7;
          v71 = a5;
          std::swap[abi:nn200100]<mlir::detail::PDLByteCode::MatchResult>(v19, a2);
          v31 = v19 + 120;
          for (i = a2 + 120; i != v16; i += 120)
          {
            if (v31 == a2)
            {
              a2 = i;
            }

            std::swap[abi:nn200100]<mlir::detail::PDLByteCode::MatchResult>(v31, i);
            v31 += 120;
          }

          if (v31 != a2)
          {
            v33 = v31;
            v34 = a2;
            while (1)
            {
              std::swap[abi:nn200100]<mlir::detail::PDLByteCode::MatchResult>(v33, a2);
              a2 += 120;
              v35 = v33 + 120 == v34;
              if (a2 == v16)
              {
                if (v33 + 120 == v34)
                {
                  goto LABEL_50;
                }

                a2 = v34 + 120;
                v33 += 240;
                while (1)
                {
                  std::swap[abi:nn200100]<mlir::detail::PDLByteCode::MatchResult>(v33 - 120, v34);
                  v35 = v33 == v34;
                  if (a2 != v16)
                  {
                    break;
                  }

                  v36 = v33 == v34;
                  v33 += 120;
                  if (v36)
                  {
                    goto LABEL_50;
                  }
                }
              }

              else
              {
                v33 += 120;
              }

              if (v35)
              {
                v34 = a2;
              }
            }
          }

          v31 = a2;
LABEL_50:
          a7 = v70;
          a5 = v71;
          v15 = v69;
        }
      }
    }

    else
    {
      v15 = a5 / 2;
      v16 = a2 + 120 * (a5 / 2);
      if (v12 == a2)
      {
        v24 = a1 + v10;
        v17 = v24;
        v19 = v12;
      }

      else
      {
        v17 = a1 + v10;
        v18 = 0xEEEEEEEEEEEEEEEFLL * ((a2 - a1 - v10) >> 3);
        v19 = v12;
        do
        {
          v20 = v18 >> 1;
          v21 = v19 + 120 * (v18 >> 1);
          v22 = *(v21 + 112);
          v23 = v21 + 120;
          v18 += ~(v18 >> 1);
          if (v22 < *(v16 + 112))
          {
            v18 = v20;
          }

          else
          {
            v19 = v23;
          }
        }

        while (v18);
        v24 = v19;
      }

      v25 = 0xEEEEEEEEEEEEEEEFLL * ((v24 - v17) >> 3);
      v31 = a2 + 120 * (a5 / 2);
      if (v19 != a2)
      {
        goto LABEL_31;
      }
    }

    a4 = -(v25 + v11);
    v37 = a5 - v15;
    if (v25 + v15 >= a5 - (v25 + v15) - v11)
    {
      v39 = -(v25 + v11);
      v38 = a7;
      v37 = v15;
      std::__inplace_merge<std::_ClassicAlgPolicy,mlir::detail::PDLByteCode::match(mlir::Operation *,mlir::PatternRewriter &,llvm::SmallVectorImpl<mlir::detail::PDLByteCode::MatchResult> &,mlir::detail::PDLByteCodeMutableState &)::$_0 &,mlir::detail::PDLByteCode::MatchResult*>(v31, v16, v72, v39, a5 - v15, a6);
      v16 = v19;
      a4 = v25;
      a3 = v31;
    }

    else
    {
      v38 = a7;
      std::__inplace_merge<std::_ClassicAlgPolicy,mlir::detail::PDLByteCode::match(mlir::Operation *,mlir::PatternRewriter &,llvm::SmallVectorImpl<mlir::detail::PDLByteCode::MatchResult> &,mlir::detail::PDLByteCodeMutableState &)::$_0 &,mlir::detail::PDLByteCode::MatchResult*>(v12, v19, v31, v25, v15, a6);
      v12 = v31;
      a3 = v72;
    }

    a5 = v37;
    a1 = v12;
    a2 = v16;
    a7 = v38;
    if (!v37)
    {
      return;
    }
  }

  if (a4 <= a5)
  {
    if (a1 == a2)
    {
      return;
    }

    v50 = a3;
    v51 = 0;
    v41 = 0;
    v42 = a6;
    do
    {
      v53 = a1 + v51;
      v54 = (a6 + v51);
      *v54 = *(a1 + v51);
      *(a6 + v51 + 8) = a6 + v51 + 24;
      v54[2] = 0x600000000;
      if (*(a1 + v51 + 16))
      {
        llvm::SmallVectorImpl<llvm::SMLoc>::operator=(a6 + v51 + 8, (v53 + 8));
      }

      v55 = v54 + 11;
      v54[9] = v54 + 11;
      v54[10] = 0;
      v56 = (v54 + 9);
      if (*(v53 + 80))
      {
        llvm::SmallVectorImpl<GPU::GPURegionCallOpHandler::RegionInfo>::operator=(v56, (a1 + v51 + 72));
      }

      v57 = (a6 + v51 + 104);
      *v55 = v57;
      *(a6 + v51 + 96) = 0;
      if (*(v53 + 96))
      {
        llvm::SmallVectorImpl<GPU::GPURegionCallOpHandler::RegionInfo>::operator=(v55, (a1 + v51 + 88));
      }

      v52 = *(v53 + 104);
      *(a6 + v51 + 112) = *(v53 + 112);
      *v57 = v52;
      ++v41;
      v51 += 120;
    }

    while (v53 + 120 != a2);
    v63 = a6 + v51;
    v64 = a6;
    while (a2 != v50)
    {
      if (*(v64 + 112) >= *(a2 + 112))
      {
        mlir::detail::PDLByteCode::MatchResult::operator=(a1, v64);
        v64 += 120;
        a1 += 120;
        if (v63 == v64)
        {
          goto LABEL_96;
        }
      }

      else
      {
        mlir::detail::PDLByteCode::MatchResult::operator=(a1, a2);
        a2 += 120;
        a1 += 120;
        if (v63 == v64)
        {
          goto LABEL_96;
        }
      }
    }

    do
    {
      mlir::detail::PDLByteCode::MatchResult::operator=(a1, v64);
      a1 += 120;
      v36 = v63 - 120 == v64;
      v64 += 120;
    }

    while (!v36);
  }

  else
  {
    if (a2 == a3)
    {
      return;
    }

    v40 = 0;
    v41 = 0;
    v42 = a6;
    do
    {
      v44 = a3;
      v45 = (a6 + v40);
      v46 = a2 + v40;
      *v45 = *(a2 + v40);
      *(a6 + v40 + 8) = a6 + v40 + 24;
      v45[2] = 0x600000000;
      if (*(a2 + v40 + 16))
      {
        llvm::SmallVectorImpl<llvm::SMLoc>::operator=(a6 + v40 + 8, (v46 + 8));
      }

      v47 = v45 + 11;
      v45[9] = v45 + 11;
      v45[10] = 0;
      v48 = (v45 + 9);
      if (*(v46 + 80))
      {
        llvm::SmallVectorImpl<GPU::GPURegionCallOpHandler::RegionInfo>::operator=(v48, (a2 + v40 + 72));
      }

      v49 = (a6 + v40 + 104);
      *v47 = v49;
      *(a6 + v40 + 96) = 0;
      if (*(v46 + 96))
      {
        llvm::SmallVectorImpl<GPU::GPURegionCallOpHandler::RegionInfo>::operator=(v47, (a2 + v40 + 88));
      }

      v43 = *(v46 + 104);
      *(a6 + v40 + 112) = *(v46 + 112);
      *v49 = v43;
      ++v41;
      v40 += 120;
      a3 = v44;
    }

    while (v46 + 120 != v44);
    v58 = v44 - 120;
    v59 = a6 + v40;
    while (a2 != a1)
    {
      v60 = *(a2 - 8);
      v61 = *(v59 - 8);
      if (v60 >= v61)
      {
        v62 = v59 - 120;
      }

      else
      {
        v62 = a2 - 120;
      }

      if (v60 >= v61)
      {
        v59 -= 120;
      }

      else
      {
        a2 -= 120;
      }

      mlir::detail::PDLByteCode::MatchResult::operator=(v58, v62);
      v58 -= 120;
      if (v59 == a6)
      {
        goto LABEL_96;
      }
    }

    while (v59 != a6)
    {
      v59 -= 120;
      mlir::detail::PDLByteCode::MatchResult::operator=(v58, v59);
      v58 -= 120;
    }
  }

LABEL_96:
  if (v42 && v41)
  {
    v65 = (a6 + 104);
    do
    {
      v66 = *(v65 - 2);
      if (v65 != v66)
      {
        free(v66);
      }

      v67 = *(v65 - 4);
      if (v65 - 2 != v67)
      {
        free(v67);
      }

      v68 = *(v65 - 12);
      if (v65 - 10 != v68)
      {
        free(v68);
      }

      v65 += 15;
      --v41;
    }

    while (v41);
  }
}

void std::swap[abi:nn200100]<mlir::detail::PDLByteCode::MatchResult>(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5[0] = v6;
  v5[1] = 0x600000000;
  if (*(a1 + 16))
  {
    llvm::SmallVectorImpl<llvm::SMLoc>::operator=(v5, (a1 + 8));
  }

  v7[0] = v8;
  v7[1] = 0;
  if (*(a1 + 80))
  {
    llvm::SmallVectorImpl<GPU::GPURegionCallOpHandler::RegionInfo>::operator=(v7, (a1 + 72));
  }

  v8[0] = &v9;
  v8[1] = 0;
  if (*(a1 + 96))
  {
    llvm::SmallVectorImpl<GPU::GPURegionCallOpHandler::RegionInfo>::operator=(v8, (a1 + 88));
  }

  v9 = *(a1 + 104);
  v10 = *(a1 + 112);
  mlir::detail::PDLByteCode::MatchResult::operator=(a1, a2);
  mlir::detail::PDLByteCode::MatchResult::operator=(a2, &v4);
  if (v8[0] != &v9)
  {
    free(v8[0]);
  }

  if (v7[0] != v8)
  {
    free(v7[0]);
  }

  if (v5[0] != v6)
  {
    free(v5[0]);
  }
}

uint64_t mlir::detail::PDLByteCode::MatchResult::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  llvm::SmallVectorImpl<llvm::SMLoc>::operator=(a1 + 8, (a2 + 8));
  if (a1 != a2)
  {
    v5 = (a2 + 80);
    v4 = *(a2 + 80);
    if (v4)
    {
      v6 = *(a1 + 72);
      if (v6 != (a1 + 88))
      {
        free(v6);
        v4 = *v5;
      }

      *(a1 + 72) = *(a2 + 72);
      v7 = *(a2 + 84);
      *(a1 + 80) = v4;
      *(a1 + 84) = v7;
      *(a2 + 72) = a2 + 88;
      *(a2 + 84) = 0;
      *v5 = 0;
      v9 = (a2 + 96);
      v8 = *(a2 + 96);
      if (v8)
      {
        goto LABEL_6;
      }
    }

    else
    {
      *(a1 + 80) = 0;
      v9 = (a2 + 96);
      v8 = *(a2 + 96);
      if (v8)
      {
LABEL_6:
        v10 = *(a1 + 88);
        if (v10 != (a1 + 104))
        {
          free(v10);
          v8 = *v9;
        }

        *(a1 + 88) = *(a2 + 88);
        v11 = *(a2 + 100);
        *(a1 + 96) = v8;
        *(a1 + 100) = v11;
        *(a2 + 88) = a2 + 104;
        *(a2 + 100) = 0;
        goto LABEL_11;
      }
    }

    v9 = (a1 + 96);
LABEL_11:
    *v9 = 0;
  }

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  return a1;
}

void OUTLINED_FUNCTION_2_15(uint64_t a1, uint64_t a2, unint64_t a3)
{

  llvm::SmallVectorBase<unsigned long long>::grow_pod(v3, (v3 + 24), a3, 2);
}

mlir::Block *mlir::collect_regions::detail::verifyShouldAddToQueue(mlir::Block *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a4)
  {
    return 0;
  }

  result = *(a4 + 16);
  if (result)
  {
    result = mlir::Block::getParentOp(result);
    if (result)
    {
      v10 = (*(*a3 + 32))(a3, a4, a5);
      v11 = (*(*a3 + 16))(a3);
      v21 = v11;
      if (*(a4 + 47))
      {
        AttrData = mlir::OpaqueAttr::getAttrData(&v21);
        v14 = v13;
        v22.var0 = AttrData;
        v22.var1 = v14;
        InherentAttr = mlir::Operation::getInherentAttr(a4, v22);
        if (v16)
        {
LABEL_8:
          if (InherentAttr)
          {
            v10 = 0;
          }

          ParentOp = *(a4 + 16);
          if (ParentOp)
          {
            ParentOp = mlir::Block::getParentOp(ParentOp);
          }

          if (ParentOp != a1)
          {
            v10 = 0;
          }

          {
            mlir::collect_regions::detail::verifyShouldAddToQueue();
          }

          v18 = v10 & (*(*(a4 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::placement::HostTypeCast,void>::id) & ~(*(**(a4 + 48) + 32))(*(a4 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::RegionOp<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::RegionOp>(void)::Empty>,void>::resolveTypeID(void)::id);
          if (a1 == a4)
          {
            v19 = 0;
          }

          else
          {
            v19 = v18;
          }

          {
          }

          v20 = (*(**(a4 + 48) + 32))(*(a4 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id);
          {
          }

          return (v19 & ((v20 | (*(**(a4 + 48) + 32))(*(a4 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id)) ^ 1));
        }

        v11 = v21;
      }

      InherentAttr = mlir::DictionaryAttr::get(a4 + 56, v11);
      goto LABEL_8;
    }
  }

  return result;
}

void mlir::collect_regions::detail::buildLiveInsLiveOuts(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4, uint64_t *a5, int a6)
{
  *(a1 + 8) = 0;
  *(a2 + 8) = 0;
  *(a3 + 8) = 0;
  v6 = *(a4 + 2);
  if (v6)
  {
    v9 = a3;
    v12 = *a4;
    v53 = &(*a4)[v6];
    while (1)
    {
      v13 = *v12;
      v14 = *(*v12 + 24);
      v15 = *(v9 + 8);
      if (v15 >= *(v9 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v9, v9 + 16, v15 + 1, 8);
        v15 = *(v9 + 8);
      }

      *(*v9 + 8 * v15) = v14;
      ++*(v9 + 8);
      if ((*(v13 + 46) & 0x80) != 0)
      {
        v16 = *(v13 + 68);
        if (v16)
        {
          v17 = 0;
          v18 = *(v13 + 72);
          while (1)
          {
            NextResultAtOffset = *(v18 + 32 * v17 + 24);
            if ((~*(NextResultAtOffset + 8) & 7) == 0)
            {
              goto LABEL_15;
            }

            DefiningOp = mlir::Value::getDefiningOp(&NextResultAtOffset);
            v20 = *(a5 + 4);
            if (!v20)
            {
              goto LABEL_15;
            }

            v21 = ((DefiningOp >> 4) ^ (DefiningOp >> 9)) & (v20 - 1);
            v22 = *(*a5 + 8 * v21);
            if (v22 != DefiningOp)
            {
              break;
            }

LABEL_14:
            if (v21 == v20)
            {
              goto LABEL_15;
            }

LABEL_10:
            if (++v17 == v16)
            {
              goto LABEL_26;
            }
          }

          v28 = 1;
          while (v22 != -4096)
          {
            v29 = v21 + v28++;
            v21 = v29 & (v20 - 1);
            v22 = *(*a5 + 8 * v21);
            if (v22 == DefiningOp)
            {
              goto LABEL_14;
            }
          }

LABEL_15:
          v23 = *a1;
          v24 = *(a1 + 8);
          v25 = *a1;
          if (v24)
          {
            v26 = 8 * v24;
            v25 = *a1;
            while (*v25 != NextResultAtOffset)
            {
              ++v25;
              v26 -= 8;
              if (!v26)
              {
                goto LABEL_19;
              }
            }
          }

          if (v25 == &v23[v24])
          {
LABEL_19:
            v27 = NextResultAtOffset;
            if (v24 >= *(a1 + 12))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v24 + 1, 8);
              v24 = *(a1 + 8);
              v23 = *a1;
            }

            v23[v24] = v27;
            ++*(a1 + 8);
          }

          goto LABEL_10;
        }
      }

LABEL_26:
      v30 = *(v13 + 36);
      v31 = v30 ? v13 - 16 : 0;
      if (v30)
      {
        break;
      }

LABEL_62:
      v50 = *(a1 + 8);
      v9 = a3;
      if (v50)
      {
        v51 = 0;
        v52 = *a1;
        while ((~*(v52[v51] + 8) & 7) == 0)
        {
          if (v50 == ++v51)
          {
            if (v50 != 1)
            {
              std::__introsort<std::_ClassicAlgPolicy,mlir::collect_regions::detail::buildLiveInsLiveOuts(llvm::SmallVectorImpl<mlir::Value> &,llvm::SmallVectorImpl<mlir::Value> &,llvm::SmallVectorImpl<mlir::Location> &,llvm::SmallVectorImpl<mlir::Operation *> const&,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>> const&,BOOL)::$_2 &,mlir::Value*,false>(v52, (*a1 + 8 * v50), 126 - 2 * __clz(v50), 1);
            }

            break;
          }
        }
      }

      if (++v12 == v53)
      {
        return;
      }
    }

    v32 = 0;
    while (1)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v31, v32);
      v33 = *NextResultAtOffset;
      if (*NextResultAtOffset)
      {
        v34 = *(a5 + 4);
        if (v34)
        {
          v35 = *a5;
          v36 = v34 - 1;
          while (1)
          {
            v37 = v33[2];
            v38 = ((v37 >> 4) ^ (v37 >> 9)) & v36;
            v39 = *(v35 + 8 * v38);
            if (v39 != v37)
            {
              break;
            }

LABEL_37:
            v40 = v38 == v34;
            if (v38 != v34)
            {
              v33 = *v33;
              if (v33)
              {
                continue;
              }
            }

            goto LABEL_47;
          }

          v41 = 1;
          while (v39 != -4096)
          {
            v42 = v38 + v41++;
            v38 = v42 & v36;
            v39 = *(v35 + 8 * v38);
            if (v39 == v37)
            {
              goto LABEL_37;
            }
          }

          v40 = 1;
          if ((a6 & 1) == 0)
          {
            goto LABEL_54;
          }
        }

        else
        {
          v40 = 1;
LABEL_47:
          if ((a6 & 1) == 0)
          {
LABEL_54:
            if (v40)
            {
              goto LABEL_55;
            }

            goto LABEL_32;
          }
        }
      }

      else
      {
        if (!a6)
        {
          goto LABEL_32;
        }

        v40 = 0;
      }

      v43 = mlir::Value::getDefiningOp(&NextResultAtOffset);
      {
        v49 = v43;
        v43 = v49;
      }

      if (((*(**(v43 + 48) + 32))(*(v43 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0 && v40)
      {
LABEL_55:
        v44 = *a2;
        v45 = *(a2 + 8);
        v46 = *a2;
        if (v45)
        {
          v47 = 8 * v45;
          v46 = *a2;
          while (*v46 != NextResultAtOffset)
          {
            ++v46;
            v47 -= 8;
            if (!v47)
            {
              goto LABEL_59;
            }
          }
        }

        if (v46 == &v44[v45])
        {
LABEL_59:
          v48 = NextResultAtOffset;
          if (v45 >= *(a2 + 12))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v45 + 1, 8);
            v45 = *(a2 + 8);
            v44 = *a2;
          }

          v44[v45] = v48;
          ++*(a2 + 8);
        }
      }

LABEL_32:
      if (++v32 == v30)
      {
        goto LABEL_62;
      }
    }
  }
}

void mlir::collectRegions(mlir::ForwardIterator *a1, mlir::ForwardIterator *a2, void *a3)
{
  v67[8] = *MEMORY[0x1E69E9840];
  v45[0] = a1;
  v45[1] = a2;
  v44 = a3;
  v4 = a3[1];
  v40 = 0;
  v42 = 0;
  v39 = &unk_1F5B05610;
  v41 = 0;
  v43 = 0;
  v14 = v4;
  *(v4 + 8) = &v39;
  v24[0] = mlir::SymbolRefAttr::get(a1, a2);
  v56[0] = mlir::AffineMapAttr::getValue(v24);
  mlir::OpaqueAttr::getAttrData(v56);
  v38[2] = (*(*a3 + 16))(a3);
  (*(*a3 + 56))(v38, a3);
  v62 = &v64;
  v59 = &v61;
  *v60 = 0x600000000;
  v37 = 1;
  v63 = 0x600000000;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  *v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  *v27 = 0u;
  v28 = 0;
  v35 = v44;
  v36 = 0;
  v57[0] = v58;
  v57[1] = 0x600000000;
  v56[0] = v45;
  v56[1] = &v44;
  v56[2] = v24;
  v56[3] = v57;
  mlir::detail::walk<mlir::ForwardIterator>(v45[0], llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::collectRegions(mlir::FunctionOpInterface,mlir::RegionOpCreator *,mlir::CostModelParams const*,std::function<void ()(mlir::Operation *,mlir::Operation *)>)::$_2>, v56, 1);
  if (*(&v26 + 1))
  {
    v6 = *(v45[0] + 2);
    v7 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v45[0], v5);
    *(v14 + 16) = v6;
    *(v14 + 24) = v7;
    v8 = (v24[1] + 8 * (v26 >> 9));
    if (v25 == v24[1])
    {
      v9 = 0;
      v11 = 0;
      v10 = (v24[1] + 8 * ((*(&v26 + 1) + v26) >> 9));
    }

    else
    {
      v9 = &(*v8)[v26 & 0x1FF];
      v10 = (v24[1] + 8 * ((*(&v26 + 1) + v26) >> 9));
      v11 = &(*v10)[(*(&v26 + 1) + v26) & 0x1FF];
    }

    v56[0] = &v62;
    std::__for_each_segment[abi:nn200100]<std::__deque_iterator<mlir::Operation *,mlir::Operation **,mlir::Operation *&,mlir::Operation ***,long,512l>,std::__copy_impl::_CopySegment<std::__deque_iterator<mlir::Operation *,mlir::Operation **,mlir::Operation *&,mlir::Operation ***,long,512l>,std::back_insert_iterator<llvm::SmallVector<mlir::Operation *,6u>>>>(v8, v9, v10, v11, v56);
    (*(*v44 + 80))(v56);
    v65 = v67;
    v67[0] = "placement";
    v67[1] = 9;
    v66 = 0x200000001;
    mlir::ConversionTarget::setDialectAction(v56, v67, 1, 2);
    if (v65 != v67)
    {
      free(v65);
    }

    v53 = &v55;
    v54 = 0x600000000;
    v50 = &v52;
    v51 = 0x600000000;
    v65 = v62;
    v15[0] = (v62 + 8 * v63);
    llvm::detail::DenseSetImpl<mlir::Operation *,llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,llvm::DenseMapInfo<mlir::Operation *,void>>::DenseSetImpl<mlir::Operation **>(v23, &v65, v15);
    mlir::collect_regions::detail::buildLiveInsLiveOuts(&v53, &v50, &v59, &v62, v23, 0);
    v48[0] = &v49;
    v48[1] = 0x600000000;
    v46[0] = &v47;
    v46[1] = 0x600000000;
    v12 = v44;
    mlir::ValueRange::ValueRange(&v65, v50, v51);
    (*(*v12 + 176))(v12, v65, v66, v48);
    v13 = v44;
    mlir::ValueRange::ValueRange(&v65, v53, v54);
    (*(*v13 + 176))(v13, v65, v66, v46);
    v15[1] = 0;
    v15[0] = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    mlir::FusedLoc::get(v59, v60[0], 0, *v14);
  }

  if (v57[0] != v58)
  {
    free(v57[0]);
  }

  llvm::deallocate_buffer(v32, (8 * v34));
}

void mlir::anonymous namespace::eraseOpsWeCannotConvert(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v198[0] = 0;
  v198[1] = 0;
  v199 = 0;
  v196[0] = 0;
  v196[1] = 0;
  v197 = 0;
  v10 = *(a1 + 8);
  if (!v10)
  {
LABEL_122:
    mlir::collect_regions::detail::buildLiveInsLiveOuts(a3, a4, a5, a1, a7, 0);
    v98 = *(a1 + 8);
    if (v98)
    {
      v180 = 0;
      v99 = a9;
      v100 = *a1;
      v101 = *a1 + 8 * v98;
      v183 = v101;
      do
      {
        v102 = *(a7 + 16);
        if (v102)
        {
          v103 = *v100;
          v104 = ((*v100 >> 4) ^ (*v100 >> 9)) & (v102 - 1);
          v105 = *(*a7 + 8 * v104);
          if (v105 == *v100)
          {
LABEL_128:
            v106 = v104 == v102 || v99 == 0;
            if (!v106)
            {
              v188 = (*v100 >> 4) ^ (*v100 >> 9);
              {
              }

              if ((*(**(v103 + 48) + 32))(*(v103 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::TypeChanger<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::TypeChanger>(void)::Empty>,void>::resolveTypeID(void)::id))
              {
                if ((*(v103 + 46) & 0x80) != 0 && (v107 = *(v103 + 68), v107))
                {
                  v108 = 0;
                  v109 = *(v103 + 72);
                  while (1)
                  {
                    v111 = *(v109 + 32 * v108 + 24);
                    v200.n128_u64[0] = v111;
                    DefiningOp = mlir::Value::getDefiningOp(&v200);
                    if (!DefiningOp)
                    {
                      goto LABEL_139;
                    }

                    {
                      v115 = DefiningOp;
                      DefiningOp = v115;
                    }

                    if (((*(**(DefiningOp + 48) + 32))(*(DefiningOp + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
                    {
LABEL_139:
                      v113 = *(a3 + 8);
                      if (v113)
                      {
                        v114 = 8 * v113;
                        v110 = *a3;
                        while (*v110 != v111)
                        {
                          ++v110;
                          v114 -= 8;
                          if (!v114)
                          {
                            goto LABEL_149;
                          }
                        }
                      }

                      else
                      {
                        v110 = *a3;
                      }

                      if (v110 == (*a3 + 8 * v113))
                      {
                        break;
                      }
                    }

                    if (++v108 == v107)
                    {
                      goto LABEL_150;
                    }
                  }

LABEL_149:
                  v116 = 0;
                }

                else
                {
LABEL_150:
                  v116 = 1;
                }

                v117 = *(v103 + 36);
                if (v117)
                {
                  v118 = v103 - 16;
                }

                else
                {
                  v118 = 0;
                }

                if (v117)
                {
                  v181 = v116;
                  v119 = 0;
                  while (1)
                  {
                    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v118, v119);
                    v121 = *(a4 + 8);
                    if (v121)
                    {
                      break;
                    }

                    v123 = *a4;
LABEL_162:
                    v124 = *a4 + 8 * v121;
                    v126 = v123 != v124;
                    ++v119;
                    if (v123 == v124 || v119 == v117)
                    {
                      goto LABEL_167;
                    }
                  }

                  v122 = 8 * v121;
                  v123 = *a4;
                  do
                  {
                    if (*v123 == NextResultAtOffset)
                    {
                      goto LABEL_162;
                    }

                    ++v123;
                    v122 -= 8;
                  }

                  while (v122);
                  v126 = 0;
LABEL_167:
                  v116 = v181;
                }

                else
                {
                  v126 = 1;
                }

                v127 = *(v103 + 36);
                if (v127)
                {
                  v128 = v103 - 16;
                }

                else
                {
                  v128 = 0;
                }

                v205[0].n128_u64[0] = v128;
                v205[0].n128_u64[1] = v127;
                mlir::ResultRange::use_begin(v205, __p);
                v129 = *(v103 + 36);
                if (v129)
                {
                  v130 = v103 - 16;
                }

                else
                {
                  v130 = 0;
                }

                v205[0].n128_u64[0] = v130;
                v205[0].n128_u64[1] = v129;
                mlir::ResultRange::use_end(v205, v203);
                v131 = v194.i64[0];
                v202 = v194.i64[0];
                v200 = *__p;
                v201 = v193;
                v132 = v204;
                while (v194.i64[0] != v132)
                {
                  v134 = *(a7 + 16);
                  if (v134)
                  {
                    v135 = *(v131 + 16);
                    v136 = ((v135 >> 4) ^ (v135 >> 9)) & (v134 - 1);
                    v137 = *(*a7 + 8 * v136);
                    if (v137 == v135)
                    {
LABEL_180:
                      if (v136 != v134)
                      {
                        v133 = 0;
                        goto LABEL_186;
                      }
                    }

                    else
                    {
                      v138 = 1;
                      while (v137 != -4096)
                      {
                        v139 = v136 + v138++;
                        v136 = v139 & (v134 - 1);
                        v137 = *(*a7 + 8 * v136);
                        if (v137 == v135)
                        {
                          goto LABEL_180;
                        }
                      }
                    }
                  }

                  mlir::ResultRange::UseIterator::operator++(__p);
                  v131 = v194.i64[0];
                }

                v133 = 1;
LABEL_186:
                v140 = v116 | v126 & v133;
                v99 = a9;
                v101 = v183;
                if (v140 == 1)
                {
                  if ((*(v103 + 46) & 0x80) != 0)
                  {
                    v141 = *(v103 + 68);
                    if (v141)
                    {
                      v142 = 0;
                      v143 = *(v103 + 72);
                      do
                      {
                        v207.n128_u64[0] = *(v143 + 32 * v142 + 24);
                        v200.n128_u64[0] = v207.n128_u64[0];
                        v144 = mlir::Value::getDefiningOp(&v200);
                        if (v144)
                        {
                          {
                            v167 = v144;
                            v144 = v167;
                          }

                          if ((*(**(v144 + 48) + 32))(*(v144 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
                          {
                            v145 = mlir::Value::getDefiningOp(&v207);
                            v146 = v145;
                            v147 = *(v145 + 36);
                            v148 = v145 - 16;
                            if (v147)
                            {
                              v149 = v145 - 16;
                            }

                            else
                            {
                              v149 = 0;
                            }

                            v205[0].n128_u64[0] = v149;
                            v205[0].n128_u64[1] = v147;
                            mlir::ResultRange::use_begin(v205, __p);
                            v150 = *(v146 + 36);
                            if (v150)
                            {
                              v151 = v148;
                            }

                            else
                            {
                              v151 = 0;
                            }

                            v205[0].n128_u64[0] = v151;
                            v205[0].n128_u64[1] = v150;
                            mlir::ResultRange::use_end(v205, v203);
                            v152 = v194.i64[0];
                            v202 = v194.i64[0];
                            v200 = *__p;
                            v201 = v193;
                            v153 = v204;
                            while (v152 != v153)
                            {
                              v154 = *(v152 + 16);
                              if (v103 != v154)
                              {
                                v155 = *(a7 + 16);
                                if (v155)
                                {
                                  v156 = (v155 - 1) & ((v154 >> 4) ^ (v154 >> 9));
                                  v157 = *(*a7 + 8 * v156);
                                  if (v157 == v154)
                                  {
LABEL_207:
                                    if (v156 != v155)
                                    {
                                      goto LABEL_190;
                                    }
                                  }

                                  else
                                  {
                                    v158 = 1;
                                    while (v157 != -4096)
                                    {
                                      v159 = v156 + v158++;
                                      v156 = v159 & (v155 - 1);
                                      v157 = *(*a7 + 8 * v156);
                                      if (v157 == v154)
                                      {
                                        goto LABEL_207;
                                      }
                                    }
                                  }
                                }
                              }

                              mlir::ResultRange::UseIterator::operator++(__p);
                              v152 = v194.i64[0];
                            }

                            v160 = *(a7 + 16);
                            if (v160)
                            {
                              v161 = *a7;
                              v162 = v160 - 1;
                              v163 = (v160 - 1) & ((v146 >> 4) ^ (v146 >> 9));
                              v164 = *(*a7 + 8 * v163);
                              if (v146 == v164)
                              {
LABEL_215:
                                *(v161 + 8 * v163) = -8192;
                                *(a7 + 8) = vadd_s32(*(a7 + 8), 0x1FFFFFFFFLL);
                              }

                              else
                              {
                                v165 = 1;
                                while (v164 != -4096)
                                {
                                  v166 = v163 + v165++;
                                  v163 = v166 & v162;
                                  v164 = *(v161 + 8 * v163);
                                  if (v146 == v164)
                                  {
                                    goto LABEL_215;
                                  }
                                }
                              }
                            }
                          }
                        }

LABEL_190:
                        ++v142;
                      }

                      while (v142 != v141);
                    }
                  }

                  v168 = *(a7 + 16);
                  if (v168)
                  {
                    v169 = *a7;
                    v170 = v168 - 1;
                    v171 = (v168 - 1) & v188;
                    v172 = *(*a7 + 8 * v171);
                    if (v103 == v172)
                    {
                      v99 = a9;
                      v101 = v183;
LABEL_223:
                      *(v169 + 8 * v171) = -8192;
                      *(a7 + 8) = vadd_s32(*(a7 + 8), 0x1FFFFFFFFLL);
                    }

                    else
                    {
                      v175 = 1;
                      v99 = a9;
                      v101 = v183;
                      while (v172 != -4096)
                      {
                        v176 = v171 + v175++;
                        v171 = v176 & v170;
                        v172 = *(v169 + 8 * v171);
                        if (v103 == v172)
                        {
                          goto LABEL_223;
                        }
                      }
                    }

                    v180 = 1;
                  }

                  else
                  {
                    v180 = 1;
                    v99 = a9;
                    v101 = v183;
                  }
                }
              }
            }
          }

          else
          {
            v173 = 1;
            while (v105 != -4096)
            {
              v174 = v104 + v173++;
              v104 = v174 & (v102 - 1);
              v105 = *(*a7 + 8 * v104);
              if (v105 == v103)
              {
                goto LABEL_128;
              }
            }
          }
        }

        ++v100;
      }

      while (v100 != v101);
      if (v180)
      {
        mlir::collect_regions::detail::buildLiveInsLiveOuts(a3, a4, a5, a1, a7, 0);
      }
    }

    llvm::deallocate_buffer(v196[0], (8 * v197));
  }

  v11 = *a1;
  v186 = *a1 + 8 * v10;
  while (1)
  {
    v12 = *v11;
    v195 = *v11;
    v13 = *(a7 + 16);
    if (!v13)
    {
      goto LABEL_9;
    }

    v14 = (v13 - 1) & ((v12 >> 4) ^ (v12 >> 9));
    v15 = *(*a7 + 8 * v14);
    if (v15 != v12)
    {
      break;
    }

LABEL_6:
    if (v14 == v13)
    {
      goto LABEL_9;
    }

    if (((*(*a2 + 32))(a2) & 1) == 0)
    {
      v12 = v195;
      goto LABEL_9;
    }

    if (++v11 == v186)
    {
      goto LABEL_122;
    }
  }

  v93 = 1;
  while (v15 != -4096)
  {
    v94 = v14 + v93++;
    v14 = v94 & (v13 - 1);
    v15 = *(*a7 + 8 * v14);
    if (v15 == v12)
    {
      goto LABEL_6;
    }
  }

LABEL_9:
  {
    v97 = v12;
    v12 = v97;
  }

  if (((*(**(v12 + 48) + 32))(*(v12 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
  {
    v16 = *(a7 + 16);
    if (v16)
    {
      v17 = *a7;
      v18 = v16 - 1;
      v19 = ((v195 >> 4) ^ (v195 >> 9)) & (v16 - 1);
      v20 = *(*a7 + 8 * v19);
      if (v195 == v20)
      {
LABEL_14:
        *(v17 + 8 * v19) = -8192;
        *(a7 + 8) = vadd_s32(*(a7 + 8), 0x1FFFFFFFFLL);
      }

      else
      {
        v95 = 1;
        while (v20 != -4096)
        {
          v96 = v19 + v95++;
          v19 = v96 & v18;
          v20 = *(v17 + 8 * v19);
          if (v195 == v20)
          {
            goto LABEL_14;
          }
        }
      }
    }
  }

  if ((*(v195 + 46) & 0x80) != 0)
  {
    v21 = *(v195 + 68);
    if (v21)
    {
      v22 = 0;
      v23 = *(v195 + 72);
      do
      {
        v28 = *(v23 + 32 * v22 + 24);
        __p[0] = v28;
        v29 = *v28;
        if (*v28)
        {
          while (v195 == v29[2])
          {
            v29 = *v29;
            if (!v29)
            {
              goto LABEL_25;
            }
          }
        }

        else
        {
LABEL_25:
          v200.n128_u64[0] = v28;
          v30 = mlir::Value::getDefiningOp(&v200);
          if (v30)
          {
            {
              v41 = v30;
              v30 = v41;
            }

            if ((*(**(v30 + 48) + 32))(*(v30 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
            {
              v31 = mlir::Value::getDefiningOp(__p);
              v32 = *(a7 + 16);
              if (v32)
              {
                v33 = *a7;
                v34 = (v31 >> 4) ^ (v31 >> 9);
                v35 = v34 & (v32 - 1);
                v36 = *(*a7 + 8 * v35);
                if (v36 == v31)
                {
LABEL_31:
                  if (v35 != v32)
                  {
                    v37 = v31;
                    mlir::Operation::removeAttr(v31, *a6);
                    v31 = v37;
                    LODWORD(v32) = *(a7 + 16);
                    v33 = *a7;
                  }
                }

                else
                {
                  v39 = 1;
                  while (v36 != -4096)
                  {
                    v40 = v35 + v39++;
                    v35 = v40 & (v32 - 1);
                    v36 = *(v33 + 8 * v35);
                    if (v36 == v31)
                    {
                      goto LABEL_31;
                    }
                  }
                }

                if (v32)
                {
                  v38 = v32 - 1;
                  v26 = (v32 - 1) & v34;
                  v27 = *(v33 + 8 * v26);
                  if (v31 == v27)
                  {
LABEL_20:
                    *(v33 + 8 * v26) = -8192;
                    *(a7 + 8) = vadd_s32(*(a7 + 8), 0x1FFFFFFFFLL);
                  }

                  else
                  {
                    v25 = 1;
                    while (v27 != -4096)
                    {
                      v24 = v26 + v25++;
                      v26 = v24 & v38;
                      v27 = *(v33 + 8 * v26);
                      if (v31 == v27)
                      {
                        goto LABEL_20;
                      }
                    }
                  }
                }
              }
            }
          }
        }

        ++v22;
      }

      while (v22 != v21);
    }
  }

  v193 = 0u;
  v194 = 0u;
  *__p = 0u;
  v190[0] = 0;
  v190[1] = 0;
  v191 = 0;
  std::deque<mlir::func::FuncOp>::__add_back_capacity(__p);
  v43 = v194.i64[1];
  v42 = v194.i64[0];
  *(*(__p[1] + (((v194.i64[0] + v194.i64[1]) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v194.i64[0] + v194.i64[1]) & 0x1FF)) = v195;
  v194.i64[1] = v43 + 1;
  if (v43 == -1)
  {
    goto LABEL_93;
  }

  v44 = __p[1];
LABEL_46:
  v47 = *(*&v44[(v42 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v42 & 0x1FF));
  if ((*(v47 + 46) & 0x80) == 0)
  {
LABEL_81:
    LOBYTE(v48) = 0;
    goto LABEL_82;
  }

  v48 = *(v47 + 68);
  if (!v48)
  {
    goto LABEL_82;
  }

  v49 = 0;
  v50 = *(v47 + 72);
  while (1)
  {
    v205[0].n128_u64[0] = *(v50 + 32 * v49 + 24);
    v51 = mlir::Value::getDefiningOp(v205);
    v207.n128_u64[0] = v51;
    if (!v51)
    {
      goto LABEL_50;
    }

    {
      v71 = v51;
      v51 = v71;
    }

    if ((*(**(v51 + 48) + 32))(*(v51 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
    {
      goto LABEL_50;
    }

    v52 = v207.n128_u64[0];
    v53 = *(a7 + 16);
    v54 = v207.n128_u32[0] >> 4;
    if (v53)
    {
      v55 = (v54 ^ (v207.n128_u32[0] >> 9)) & (v53 - 1);
      v56 = *(*a7 + 8 * v55);
      if (v56 == v207.n128_u64[0])
      {
LABEL_57:
        if (v55 != v53)
        {
          LOBYTE(v48) = 1;
LABEL_82:
          v44 = __p[1];
          v72 = vaddq_s64(v194, xmmword_1E097DF30);
          v194 = v72;
          v42 = v72.i64[0];
          if (v72.i64[0] >= 0x400uLL)
          {
            operator delete(*__p[1]);
            v45 = v194.i64[1];
            v44 = __p[1] + 8;
            v42 = v194.i64[0] - 512;
            __p[1] = __p[1] + 8;
            v194.i64[0] -= 512;
          }

          else
          {
            v45 = v72.i64[1];
          }

          v106 = v45 == 0;
          v46 = v48 ^ 1;
          if (v106)
          {
            v46 = 0;
          }

          if ((v46 & 1) == 0)
          {
            if (v48)
            {
              v73 = v195;
              v74 = *(v195 + 36);
              v75 = v195 - 16;
              if (v74)
              {
                v76 = v195 - 16;
              }

              else
              {
                v76 = 0;
              }

              v207.n128_u64[0] = v76;
              v207.n128_u64[1] = v74;
              mlir::ResultRange::use_begin(&v207, v205);
              v77 = *(v73 + 36);
              if (v77)
              {
                v78 = v75;
              }

              else
              {
                v78 = 0;
              }

              v207.n128_u64[0] = v78;
              v207.n128_u64[1] = v77;
              mlir::ResultRange::use_end(&v207, v203);
              v79 = v206;
              v202 = v206;
              v200 = v205[0];
              v201 = v205[1];
              v80 = v204;
              while (v79 != v80)
              {
                v85 = *(v79 + 16);
                v189 = v85;
                {
                }

                if (((*(**(v85 + 48) + 32))(*(v85 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
                {
                  v86 = *(a7 + 16);
                  if (v86)
                  {
                    v87 = *a7;
                    v88 = ((v189 >> 4) ^ (v189 >> 9)) & (v86 - 1);
                    v89 = *(*a7 + 8 * v88);
                    if (v89 == v189)
                    {
LABEL_105:
                      if (v88 != v86)
                      {
                        mlir::Operation::removeAttr(v189, *a6);
                        llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v196, &v189, &v207);
                        LODWORD(v86) = *(a7 + 16);
                        v87 = *a7;
                      }
                    }

                    else
                    {
                      v91 = 1;
                      while (v89 != -4096)
                      {
                        v92 = v88 + v91++;
                        v88 = v92 & (v86 - 1);
                        v89 = *(v87 + 8 * v88);
                        if (v89 == v189)
                        {
                          goto LABEL_105;
                        }
                      }
                    }

                    if (v86)
                    {
                      v90 = v86 - 1;
                      v83 = ((v189 >> 4) ^ (v189 >> 9)) & (v86 - 1);
                      v84 = *(v87 + 8 * v83);
                      if (v189 == v84)
                      {
LABEL_97:
                        *(v87 + 8 * v83) = -8192;
                        *(a7 + 8) = vadd_s32(*(a7 + 8), 0x1FFFFFFFFLL);
                      }

                      else
                      {
                        v82 = 1;
                        while (v84 != -4096)
                        {
                          v81 = v83 + v82++;
                          v83 = v81 & v90;
                          v84 = *(v87 + 8 * v83);
                          if (v189 == v84)
                          {
                            goto LABEL_97;
                          }
                        }
                      }
                    }
                  }
                }

                mlir::ResultRange::UseIterator::operator++(v205);
                v79 = v206;
              }

LABEL_94:
              llvm::deallocate_buffer(v190[0], (8 * v191));
            }

LABEL_93:
            llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v198, &v195, &v200);
            goto LABEL_94;
          }

          goto LABEL_46;
        }
      }

      else
      {
        v65 = 1;
        while (v56 != -4096)
        {
          v66 = v55 + v65++;
          v55 = v66 & (v53 - 1);
          v56 = *(*a7 + 8 * v55);
          if (v56 == v207.n128_u64[0])
          {
            goto LABEL_57;
          }
        }
      }
    }

    if (v199)
    {
      v57 = (v199 - 1) & (v54 ^ (v207.n128_u32[0] >> 9));
      v58 = *(v198[0] + 8 * v57);
      if (v58 == v207.n128_u64[0])
      {
LABEL_60:
        if (v57 != v199)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v67 = 1;
        while (v58 != -4096)
        {
          v68 = v57 + v67++;
          v57 = v68 & (v199 - 1);
          v58 = *(v198[0] + 8 * v57);
          if (v58 == v207.n128_u64[0])
          {
            goto LABEL_60;
          }
        }
      }
    }

    if (!v191)
    {
      goto LABEL_64;
    }

    v59 = (v191 - 1) & (v54 ^ (v207.n128_u32[0] >> 9));
    v60 = *(v190[0] + v59);
    if (v60 != v207.n128_u64[0])
    {
      v69 = 1;
      while (v60 != -4096)
      {
        v70 = v59 + v69++;
        v59 = v70 & (v191 - 1);
        v60 = *(v190[0] + v59);
        if (v60 == v207.n128_u64[0])
        {
          goto LABEL_63;
        }
      }

LABEL_64:
      v61 = __p[1];
      if (v193.n128_u64[0] == __p[1])
      {
        v62 = 0;
      }

      else
      {
        v62 = ((v193.n128_u64[0] - __p[1]) << 6) - 1;
      }

      v63 = v194.i64[1];
      v64 = v194.i64[1] + v194.i64[0];
      if (v62 == v194.i64[1] + v194.i64[0])
      {
        std::deque<mlir::func::FuncOp>::__add_back_capacity(__p);
        v63 = v194.i64[1];
        v61 = __p[1];
        v64 = v194.i64[0] + v194.i64[1];
        v52 = v207.n128_u64[0];
      }

      *(*&v61[(v64 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v64 & 0x1FF)) = v52;
      v194.i64[1] = v63 + 1;
      llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v190, &v207, &v200);
      goto LABEL_50;
    }

LABEL_63:
    if (v59 == v191)
    {
      goto LABEL_64;
    }

LABEL_50:
    if (++v49 == v48)
    {
      goto LABEL_81;
    }
  }
}

uint64_t mlir::anonymous namespace::preserveOutputsAndEraseUnusedOps(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, int32x2_t *a8, uint64_t a9, unsigned __int8 a10)
{
  v79[4] = *MEMORY[0x1E69E9840];
  if (*(a5 + 8))
  {
    v15 = *(a5 + 16);
    if (v15 <= 4 * *(a5 + 8) || v15 < 0x41)
    {
      if (v15)
      {
        v16 = *a5;
        v17 = (v15 - 1) & 0x1FFFFFFFFFFFFFFFLL;
        v18 = *a5;
        if (v17 <= 2)
        {
          goto LABEL_10;
        }

        v19 = v17 + 1;
        v18 = (v16 + 8 * (v19 & 0x3FFFFFFFFFFFFFFCLL));
        v20 = v16 + 1;
        v21 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
        v22 = v19 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v20[-1] = v21;
          *v20 = v21;
          v20 += 2;
          v22 -= 4;
        }

        while (v22);
        if (v19 != (v19 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_10:
          v23 = (v16 + 8 * v15);
          do
          {
            v18->i64[0] = -4096;
            v18 = (v18 + 8);
          }

          while (v18 != v23);
        }
      }

      *(a5 + 8) = 0;
    }

    else
    {
      llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::shrink_and_clear(a5);
    }
  }

  v72[0] = &v73;
  v72[1] = 0x600000000;
  v24 = *(a4 + 8);
  if (v24)
  {
    v25 = *a4;
    v26 = 8 * v24;
    do
    {
      *&v70[0] = *v25;
      DefiningOp = mlir::Value::getDefiningOp(v70);
      v69.n128_u64[0] = DefiningOp;
      if (DefiningOp)
      {
        if ((*(*a2 + 128))(a2, DefiningOp, a8))
        {
          v28 = *&v70[0];
          v29 = LODWORD(v72[1]);
          if (LODWORD(v72[1]) >= HIDWORD(v72[1]))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(v72, &v73, LODWORD(v72[1]) + 1, 8);
            v29 = LODWORD(v72[1]);
          }

          *(v72[0] + v29) = v28;
          ++LODWORD(v72[1]);
        }

        else
        {
          llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a5, &v69, &v77);
        }
      }

      ++v25;
      v26 -= 8;
    }

    while (v26);
    v77 = v79;
    v78 = 0x400000000;
    if (LODWORD(v72[1]))
    {
      llvm::SmallVectorImpl<unsigned long long>::operator=(&v77, v72);
    }
  }

  else
  {
    v77 = v79;
    v78 = 0x400000000;
  }

  if (v72[0] != &v73)
  {
    free(v72[0]);
  }

  v30 = v78;
  v31 = *(a4 + 8);
  if (v78 == v31)
  {
    if (!v78)
    {
      goto LABEL_92;
    }

    v32 = v77;
    v33 = *a4;
    v34 = 8 * v78;
    while (*v32 == *v33)
    {
      ++v32;
      ++v33;
      v34 -= 8;
      if (!v34)
      {
        goto LABEL_92;
      }
    }
  }

  if (&v77 != a4)
  {
    if (v31 >= v78)
    {
      if (v78)
      {
        memmove(*a4, v77, 8 * v78);
      }

      goto LABEL_44;
    }

    if (*(a4 + 12) >= v78)
    {
      if (v31)
      {
        memmove(*a4, v77, 8 * v31);
        goto LABEL_42;
      }
    }

    else
    {
      *(a4 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 16, v30, 8);
    }

    v31 = 0;
LABEL_42:
    v35 = v78 - v31;
    if (v35)
    {
      memcpy((*a4 + 8 * v31), &v77[8 * v31], 8 * v35);
    }

LABEL_44:
    *(a4 + 8) = v30;
  }

  if (*(a5 + 8))
  {
    v36 = *(a5 + 16);
    if (v36)
    {
      v37 = 8 * v36;
      v38 = *a5;
      while ((v38->i64[0] | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v38 = (v38 + 8);
        v37 -= 8;
        if (!v37)
        {
          goto LABEL_92;
        }
      }
    }

    else
    {
      v38 = *a5;
    }

    v39 = *a5 + 8 * v36;
    if (v38 != v39)
    {
      v65 = 0;
      LODWORD(v40) = a8[2].i32[0];
      do
      {
        if (v40)
        {
          v41 = v38->i64[0];
          v42 = (v38->i64[0] >> 4) ^ (v38->i64[0] >> 9);
          v43 = v42 & (v40 - 1);
          v44 = *(*a8 + 8 * v43);
          if (v44 == v38->i64[0])
          {
LABEL_57:
            if (v43 != v40)
            {
              v45 = a7;
              v46 = *(v41 + 36);
              if (v46)
              {
                v47 = v41 - 16;
              }

              else
              {
                v47 = 0;
              }

              v69.n128_u64[0] = v47;
              v69.n128_u64[1] = v46;
              mlir::ResultRange::use_begin(&v69, v70);
              v48 = *(v41 + 36);
              if (v48)
              {
                v49 = v41 - 16;
              }

              else
              {
                v49 = 0;
              }

              v69.n128_u64[0] = v49;
              v69.n128_u64[1] = v48;
              mlir::ResultRange::use_end(&v69, v75);
              v50 = v71;
              v74 = v71;
              *v72 = v70[0];
              v73 = v70[1];
              v51 = v76;
              while (v50 != v51)
              {
                v40 = a8[2].u32[0];
                if (v40)
                {
                  v52 = *(v50 + 16);
                  v53 = ((v52 >> 4) ^ (v52 >> 9)) & (v40 - 1);
                  v54 = *(*a8 + 8 * v53);
                  if (v54 == v52)
                  {
LABEL_69:
                    if (v53 != v40)
                    {
                      a7 = v45;
                      goto LABEL_79;
                    }
                  }

                  else
                  {
                    v55 = 1;
                    while (v54 != -4096)
                    {
                      v56 = v53 + v55++;
                      v53 = v56 & (v40 - 1);
                      v54 = *(*a8 + 8 * v53);
                      if (v54 == v52)
                      {
                        goto LABEL_69;
                      }
                    }
                  }
                }

                mlir::ResultRange::UseIterator::operator++(v70);
                v50 = v71;
              }

              LODWORD(v40) = a8[2].i32[0];
              a7 = v45;
              if (v40)
              {
                v57 = *a8;
                v58 = (v40 - 1) & v42;
                v59 = *(*a8 + 8 * v58);
                if (v41 == v59)
                {
LABEL_77:
                  *(*&v57 + 8 * v58) = -8192;
                  a8[1] = vadd_s32(a8[1], 0x1FFFFFFFFLL);
                }

                else
                {
                  v62 = 1;
                  while (v59 != -4096)
                  {
                    v63 = v58 + v62++;
                    v58 = v63 & (v40 - 1);
                    v59 = *(*&v57 + 8 * v58);
                    if (v41 == v59)
                    {
                      goto LABEL_77;
                    }
                  }
                }
              }

              v65 = 1;
            }
          }

          else
          {
            v60 = 1;
            while (v44 != -4096)
            {
              v61 = v43 + v60++;
              v43 = v61 & (v40 - 1);
              v44 = *(*a8 + 8 * v43);
              if (v44 == v41)
              {
                goto LABEL_57;
              }
            }
          }
        }

        do
        {
LABEL_79:
          v38 = (v38 + 8);
        }

        while (v38 != v39 && (v38->i64[0] | 0x1000) == 0xFFFFFFFFFFFFF000);
      }

      while (v38 != v39);
      if (v65)
      {
        v72[0] = "Removing ops that could not be converted did not converge.";
        v72[1] = 58;
      }
    }
  }

LABEL_92:
  if (v77 != v79)
  {
    free(v77);
  }

  return 0;
}

uint64_t llvm::dyn_cast<mlir::FunctionOpInterface,mlir::Operation>(uint64_t a1)
{
  v1 = a1;
  if (!mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    return 0;
  }

  if (v1)
  {
    mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(v1);
  }

  return v1;
}

void mlir::OpBuilder::create<mlir::placement::ReplacedOps,std::string &,mlir::Operation *&,llvm::SmallVector<mlir::Operation *,6u> &,llvm::SmallVector<mlir::Value,6u> &,llvm::SmallVector<mlir::Value,6u> &>(uint64_t a1, uint64_t a2, void *a3, mlir::SymbolRefAttr **a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27[5] = *MEMORY[0x1E69E9840];
  v24 = a2;
  Context = mlir::Attribute::getContext(&v24);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::placement::ReplacedOps,void>::id, Context);
  if (v16)
  {
    mlir::OperationState::OperationState(v25, a2, v15);
    v17 = *(a3 + 23);
    v18 = a3[1];
    if (v17 < 0)
    {
      a3 = *a3;
    }

    if (v17 >= 0)
    {
      v19 = v17;
    }

    else
    {
      v19 = v18;
    }

    v20 = *a4;
    v21 = *a5;
    v22 = *(a5 + 8);
    mlir::ValueRange::ValueRange(v27, *a6, *(a6 + 8));
    mlir::ValueRange::ValueRange(v26, *a7, *(a7 + 8));
    mlir::placement::ReplacedOps::build(a1, v25, a3, v19, v20, v21, v22, v23, v27[0], v27[1], v26[0], v26[1]);
  }

  mlir::OpBuilder::create<mlir::placement::ReplacedOps,std::string &,mlir::Operation *&,llvm::SmallVector<mlir::Operation *,6u> &,llvm::SmallVector<mlir::Value,6u> &,llvm::SmallVector<mlir::Value,6u> &>(v25, v27, v26);
}

void mlir::anonymous namespace::BuildContext::updateCreatedOpsList(int32x2_t *this, mlir::Operation *a2, mlir::Operation *a3, const mlir::ConversionTarget *a4)
{
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v30[0] = 0;
  v30[1] = 0;
  v31 = 0;
  v35[0] = v30;
  ParentOp = *(a3 + 2);
  if (ParentOp)
  {
    ParentOp = mlir::Block::getParentOp(ParentOp);
  }

  v35[0] = v30;
  v35[1] = &v32;
  if (!this[3].i32[0])
  {
    goto LABEL_29;
  }

  v8 = this[4].u32[0];
  if (v8)
  {
    v9 = 8 * v8;
    v10 = this[2];
    while ((*v10 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      ++v10;
      v9 -= 8;
      if (!v9)
      {
        goto LABEL_29;
      }
    }
  }

  else
  {
    v10 = this[2];
  }

  v11 = *&this[2] + 8 * v8;
  if (v10 == v11)
  {
LABEL_29:
    if (v33)
    {
      if (v34)
      {
        v18 = 8 * v34;
        v19 = v32;
        while ((*v19 | 0x1000) == 0xFFFFFFFFFFFFF000)
        {
          ++v19;
          v18 -= 8;
          if (!v18)
          {
            goto LABEL_49;
          }
        }
      }

      else
      {
        v19 = v32;
      }

      v20 = &v32[v34];
      if (v19 != v20)
      {
        v21 = this[4].i32[0];
        v22 = v21 - 1;
        do
        {
          if (v21)
          {
            v23 = this[2];
            v24 = ((*v19 >> 4) ^ (*v19 >> 9)) & v22;
            v25 = *(*&v23 + 8 * v24);
            if (*v19 == v25)
            {
LABEL_41:
              *(*&v23 + 8 * v24) = -8192;
              this[3] = vadd_s32(this[3], 0x1FFFFFFFFLL);
            }

            else
            {
              v26 = 1;
              while (v25 != -4096)
              {
                v27 = v24 + v26++;
                v24 = v27 & v22;
                v25 = *(*&v23 + 8 * v24);
                if (*v19 == v25)
                {
                  goto LABEL_41;
                }
              }
            }
          }

          do
          {
            ++v19;
          }

          while (v19 != v20 && (*v19 | 0x1000) == 0xFFFFFFFFFFFFF000);
        }

        while (v19 != v20);
      }
    }

LABEL_49:
    llvm::deallocate_buffer(v30[0], (8 * v31));
  }

  while (1)
  {
    v12 = *v10;
    v29 = *v10;
    if (v31)
    {
      v13 = (v31 - 1) & ((v12 >> 4) ^ (v12 >> 9));
      v14 = *(v30[0] + v13);
      if (v14 == v12)
      {
LABEL_15:
        if (v13 != v31)
        {
          if ((mlir::ConversionTarget::isLegal(a4, v12) & 0x100) != 0)
          {
            goto LABEL_17;
          }

          v15 = v29;
          {
            v28 = v15;
            v15 = v28;
          }

          if (!(*(**(v15 + 6) + 32))(*(v15 + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
          {
            goto LABEL_17;
          }
        }
      }

      else
      {
        v16 = 1;
        while (v14 != -4096)
        {
          v17 = v13 + v16++;
          v13 = v17 & (v31 - 1);
          v14 = *(v30[0] + v13);
          if (v14 == v12)
          {
            goto LABEL_15;
          }
        }
      }
    }

    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v32, &v29, v35);
    do
    {
LABEL_17:
      ++v10;
    }

    while (v10 != v11 && (*v10 | 0x1000) == 0xFFFFFFFFFFFFF000);
    if (v10 == v11)
    {
      goto LABEL_29;
    }
  }
}

void mlir::anonymous namespace::BuildContext::rollbackCreatedOps(mlir::_anonymous_namespace_::BuildContext *this)
{
  v34[6] = *MEMORY[0x1E69E9840];
  v32 = v34;
  v33 = 0x600000000;
  v2 = (this + 16);
  if (*(this + 6))
  {
    v3 = *(this + 8);
    if (v3)
    {
      v4 = 8 * v3;
      v5 = *(this + 2);
      while ((*v5 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        ++v5;
        v4 -= 8;
        if (!v4)
        {
          goto LABEL_36;
        }
      }
    }

    else
    {
      v5 = *(this + 2);
    }

    v6 = *(this + 2) + 8 * v3;
    if (v5 != v6)
    {
      do
      {
        v7 = *v5;
        {
          mlir::collect_regions::detail::verifyShouldAddToQueue();
        }

        if ((*(**(v7 + 48) + 32))(*(v7 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::RegionOp<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::RegionOp>(void)::Empty>,void>::resolveTypeID(void)::id))
        {
          v31 = v7;
          llvm::SmallVectorImpl<mlir::Operation *>::insert_one_impl<mlir::Operation *>(&v32, v32, &v31);
        }

        else
        {
          v8 = v33;
          if (v33 >= HIDWORD(v33))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v34, v33 + 1, 8);
            v8 = v33;
          }

          *(v32 + v8) = v7;
          LODWORD(v33) = v33 + 1;
        }

        do
        {
          ++v5;
        }

        while (v5 != v6 && (*v5 | 0x1000) == 0xFFFFFFFFFFFFF000);
      }

      while (v5 != v6);
      if (v33)
      {
        v9 = v32;
        v10 = v32 + 8 * v33;
        do
        {
          v12 = *(v10 - 1);
          v10 -= 8;
          v11 = v12;
          v13 = v12[9];
          v14 = (v12 - 4);
          if (v13)
          {
            v15 = v14;
          }

          else
          {
            v15 = 0;
          }

          if (v13)
          {
            for (i = 0; i != v13; ++i)
            {
              NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v15, i);
              while (1)
              {
                v18 = *NextResultAtOffset;
                if (!*NextResultAtOffset)
                {
                  break;
                }

                v19 = v18[1];
                if (v19)
                {
                  v20 = *v18;
                  *v19 = *v18;
                  if (v20)
                  {
                    *(v20 + 8) = v18[1];
                  }
                }

                *v18 = 0;
                v18[1] = 0;
                v18[3] = 0;
              }
            }
          }

          mlir::Operation::erase(v11);
        }

        while (v10 != v9);
      }
    }
  }

LABEL_36:
  v21 = *(this + 6);
  if (v21 || *(this + 7))
  {
    v22 = *(this + 8);
    if (v22 <= 4 * v21 || v22 < 0x41)
    {
      if (v22)
      {
        v23 = *v2;
        v24 = (v22 - 1) & 0x1FFFFFFFFFFFFFFFLL;
        v25 = *v2;
        if (v24 <= 2)
        {
          goto LABEL_46;
        }

        v26 = v24 + 1;
        v25 = (v23 + 8 * (v26 & 0x3FFFFFFFFFFFFFFCLL));
        v27 = v23 + 1;
        v28 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
        v29 = v26 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v27[-1] = v28;
          *v27 = v28;
          v27 += 2;
          v29 -= 4;
        }

        while (v29);
        if (v26 != (v26 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_46:
          v30 = (v23 + 8 * v22);
          do
          {
            v25->i64[0] = -4096;
            v25 = (v25 + 8);
          }

          while (v25 != v30);
        }
      }

      *(this + 3) = 0;
    }

    else
    {
      llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::shrink_and_clear(v2);
    }
  }

  if (v32 != v34)
  {
    free(v32);
  }
}

unint64_t *mlir::TypeRange::TypeRange<llvm::MutableArrayRef<mlir::BlockArgument>>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5[2] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v5, a2, (a3 - a2) >> 3);
  mlir::TypeRange::TypeRange(a1, v5[0], v5[1]);
  return a1;
}

unint64_t *mlir::TypeRange::TypeRange<mlir::OperandRange>(unint64_t *a1, void *a2)
{
  v4[2] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v4, *a2 + 32 * a2[1], a2[3] - a2[1]);
  mlir::TypeRange::TypeRange(a1, v4[0], v4[1]);
  return a1;
}

uint64_t mlir::OpBuilder::create<mlir::placement::StartTimer,mlir::placement::TimerHandleType,mlir::FlatSymbolRefAttr>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::placement::StartTimer,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::placement::StartTimer,mlir::placement::TimerHandleType,mlir::FlatSymbolRefAttr>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::placement::StartTimer::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::StartTimer,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::placement::HostTypeCast,mlir::Type const&,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::placement::HostTypeCast,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::placement::HostTypeCast,mlir::Type const&,mlir::Value &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::arith::BitcastOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::HostTypeCast,void>::id)
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

void *llvm::SmallVector<mlir::Value,4u>::SmallVector<llvm::mapped_iterator<mlir::Value*,mlir::collectRegions(mlir::FunctionOpInterface,mlir::RegionOpCreator *,mlir::CostModelParams const*,std::function<void ()(mlir::Operation *,mlir::Operation *)>)::$_0,mlir::Value>,void>(void *result, uint64_t a2, unint64_t **a3)
{
  *result = result + 2;
  result[1] = 0x400000000;
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *a3;
  v6 = *a3 - *a2;
  if ((v6 >> 3) < 5)
  {
    v8 = 0;
    if (v3 == v5)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = result;
    llvm::SmallVectorBase<unsigned int>::grow_pod(result, (result + 2), v6 >> 3, 8);
    result = v7;
    v8 = *(v7 + 2);
    if (v3 == v5)
    {
      goto LABEL_16;
    }
  }

  v9 = (*result + 8 * v8);
  do
  {
    v10 = *v3;
    v11 = *(v4 + 4);
    if (v11)
    {
      v12 = *v4;
      v13 = 0x9DDFEA08EB382D69 * ((8 * *v3 - 0xAE502812AA7333) ^ HIDWORD(*v3));
      v14 = 0x9DDFEA08EB382D69 * (HIDWORD(v10) ^ (v13 >> 47) ^ v13);
      v15 = (-348639895 * ((v14 >> 47) ^ v14)) & (v11 - 1);
      v16 = *(*v4 + 16 * v15);
      if (v16 == v10)
      {
LABEL_9:
        if (v15 != v11)
        {
          v10 = *(v12 + 16 * v15 + 8);
        }
      }

      else
      {
        v17 = 1;
        while (v16 != -4096)
        {
          v18 = v15 + v17++;
          v15 = v18 & (v11 - 1);
          v16 = *(v12 + 16 * v15);
          if (v16 == v10)
          {
            goto LABEL_9;
          }
        }
      }
    }

    *v9++ = v10;
    ++v3;
  }

  while (v3 != v5);
  v8 = *(result + 2);
LABEL_16:
  *(result + 2) = v8 + (v6 >> 3);
  return result;
}

uint64_t mlir::Operation::getAttr(_BYTE *a1, StringRef a2)
{
  if (!a1[47] || (var0 = a2.var0, var1 = a2.var1, result = mlir::Operation::getInherentAttr(a1, a2), a2.var1 = var1, v7 = v6, a2.var0 = var0, (v7 & 1) == 0))
  {

    return mlir::DictionaryAttr::get((a1 + 56), a2);
  }

  return result;
}

void mlir::Operation::setAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Context = mlir::Attribute::getContext((a1 + 24));
  v11 = 261;
  v10[0] = a2;
  v10[1] = a3;
  v9 = mlir::StringAttr::get(Context, v10);
  mlir::Operation::setAttr(a1, v9, a4);
}

void *llvm::SmallVector<mlir::Value,4u>::SmallVector<llvm::mapped_iterator<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,mlir::collectRegions(mlir::FunctionOpInterface,mlir::RegionOpCreator *,mlir::CostModelParams const*,std::function<void ()(mlir::Operation *,mlir::Operation *)>)::$_1,mlir::Value>,void>(void *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x400000000;
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = *(a3 + 8);
  v8 = v7 - v5;
  if ((v7 - v5) < 5)
  {
    v9 = 0;
    if (v7 == v5)
    {
      goto LABEL_16;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 2), v7 - v5, 8);
    v9 = *(a1 + 2);
    if (v7 == v5)
    {
      goto LABEL_16;
    }
  }

  v10 = (*a1 + 8 * v9);
  do
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, v5);
    v12 = *(v6 + 16);
    if (v12)
    {
      v13 = *v6;
      v14 = 0x9DDFEA08EB382D69 * ((8 * NextResultAtOffset - 0xAE502812AA7333) ^ HIDWORD(NextResultAtOffset));
      v15 = 0x9DDFEA08EB382D69 * (HIDWORD(NextResultAtOffset) ^ (v14 >> 47) ^ v14);
      v16 = (-348639895 * ((v15 >> 47) ^ v15)) & (v12 - 1);
      v17 = *(*v6 + 16 * v16);
      if (v17 == NextResultAtOffset)
      {
LABEL_9:
        if (v16 != v12)
        {
          NextResultAtOffset = *(v13 + 16 * v16 + 8);
        }
      }

      else
      {
        v18 = 1;
        while (v17 != -4096)
        {
          v19 = v16 + v18++;
          v16 = v19 & (v12 - 1);
          v17 = *(v13 + 16 * v16);
          if (v17 == NextResultAtOffset)
          {
            goto LABEL_9;
          }
        }
      }
    }

    *v10++ = NextResultAtOffset;
    ++v5;
  }

  while (v5 != v7);
  v9 = *(a1 + 2);
LABEL_16:
  *(a1 + 2) = v9 + v8;
  return a1;
}

uint64_t mlir::OpBuilder::create<mlir::placement::StopTimer,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::placement::StopTimer,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::placement::StopTimer,mlir::Value &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::memref::DeallocOp::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::StopTimer,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

void mlir::anonymous namespace::moveErasedOpsAfter(mlir::Operation *a1, uint64_t a2)
{
  v70 = a1;
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a2 + 8 * v5;
  v7 = *a2;
  if (v5)
  {
    v8 = *(a1 + 2);
    v9 = 8 * v5;
    v7 = *a2;
    do
    {
      if (*(*v7 + 16) != v8)
      {
        goto LABEL_6;
      }

      v7 += 8;
      v9 -= 8;
    }

    while (v9);
    v7 = v6;
  }

  else
  {
LABEL_6:
    v10 = v7 + 8;
    if (v7 != v6 && v10 != v6)
    {
      do
      {
        if (*(*v10 + 16) == *(v70 + 2))
        {
          *v7 = *v10;
          v7 += 8;
        }

        v10 += 8;
      }

      while (v10 != v6);
      v4 = *a2;
    }
  }

  v12 = (v7 - v4) >> 3;
  v13 = 126 - 2 * __clz(v12);
  *(a2 + 8) = v12;
  if (v12)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v70;
  v68[0] = 0;
  v68[1] = 0;
  v69 = 0;
  v66 = 0u;
  v67 = 0u;
  *__p = 0u;
  std::deque<mlir::func::FuncOp>::__add_back_capacity(__p);
  v16 = *(&v67 + 1);
  *(*(__p[1] + (((v67 + *(&v67 + 1)) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v67 + *(&v67 + 1)) & 0x1FF)) = v70;
  *(&v67 + 1) = v16 + 1;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v68, &v70, &v60);
  if (*(&v67 + 1))
  {
    v17 = __p[1];
    v18 = v67;
    do
    {
      v19 = *(*&v17[(v18 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v18 & 0x1FF));
      v20 = *(v19 + 36);
      if (v20)
      {
        v21 = v19 - 16;
      }

      else
      {
        v21 = 0;
      }

      v74.n128_u64[0] = v21;
      v74.n128_u64[1] = v20;
      mlir::ResultRange::use_begin(&v74, &v71);
      v22 = *(v19 + 36);
      if (v22)
      {
        v23 = v19 - 16;
      }

      else
      {
        v23 = 0;
      }

      v74.n128_u64[0] = v23;
      v74.n128_u64[1] = v22;
      mlir::ResultRange::use_end(&v74, v63);
      v24 = v73;
      v62 = v73;
      v60 = v71;
      v61 = v72;
      v25 = v64;
      while (v24 != v25)
      {
        v26 = *(v24 + 16);
        v59 = v26;
        if (*(*(v26 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::HostTypeCast,void>::id)
        {
          v27 = __p[1];
          if (v66 == __p[1])
          {
            v28 = 0;
          }

          else
          {
            v28 = ((v66 - __p[1]) << 6) - 1;
          }

          v29 = *(&v67 + 1);
          v30 = *(&v67 + 1) + v67;
          if (v28 == *(&v67 + 1) + v67)
          {
            std::deque<mlir::func::FuncOp>::__add_back_capacity(__p);
            v29 = *(&v67 + 1);
            v27 = __p[1];
            v30 = v67 + *(&v67 + 1);
            v26 = v59;
          }

          *(*&v27[(v30 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v30 & 0x1FF)) = v26;
          *(&v67 + 1) = v29 + 1;
        }

        llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v68, &v59, &v74);
        mlir::ResultRange::UseIterator::operator++(&v71);
        v24 = v73;
      }

      v31 = mlir::Operation::isBeforeInBlock(v15, *(*(__p[1] + ((v67 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v67 & 0x1FF)));
      v17 = __p[1];
      if (v31)
      {
        v15 = *(*(__p[1] + ((v67 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v67 & 0x1FF));
      }

      v32 = *(&v67 + 1) - 1;
      v18 = v67 + 1;
      v67 = __PAIR128__(*(&v67 + 1), v67 + 1) + __PAIR128__(-1, 0);
      if (v18 >= 0x400)
      {
        operator delete(*__p[1]);
        v32 = *(&v67 + 1);
        v17 = __p[1] + 8;
        v18 = v67 - 512;
        __p[1] = __p[1] + 8;
        *&v67 = v67 - 512;
      }
    }

    while (v32);
  }

  v33 = *(a2 + 8);
  if (v33)
  {
    v34 = *a2;
    v35 = *a2 + 8 * v33;
    do
    {
      v36 = *v34;
      if (mlir::Operation::isBeforeInBlock(v15, *v34))
      {
        break;
      }

      if ((*(v36 + 46) & 0x80) == 0 || (v37 = *(v36 + 17), !v37))
      {
LABEL_44:
        v36 = v15;
        goto LABEL_45;
      }

      v38 = 0;
      v39 = *(v36 + 9);
      while (1)
      {
        v59 = *(v39 + 32 * v38 + 24);
        DefiningOp = mlir::Value::getDefiningOp(&v59);
        if (v69)
        {
          v41 = ((DefiningOp >> 4) ^ (DefiningOp >> 9)) & (v69 - 1);
          v42 = *(v68[0] + v41);
          if (v42 != DefiningOp)
          {
            v43 = 1;
            while (v42 != -4096)
            {
              v44 = v41 + v43++;
              v41 = v44 & (v69 - 1);
              v42 = *(v68[0] + v41);
              if (v42 == DefiningOp)
              {
                goto LABEL_53;
              }
            }

            goto LABEL_50;
          }

LABEL_53:
          if (v41 != v69)
          {
            break;
          }
        }

LABEL_50:
        if (++v38 == v37)
        {
          goto LABEL_44;
        }
      }

      v45 = *(DefiningOp + 36);
      v46 = DefiningOp - 16;
      if (v45)
      {
        v47 = DefiningOp - 16;
      }

      else
      {
        v47 = 0;
      }

      v74.n128_u64[0] = v47;
      v74.n128_u64[1] = v45;
      v48 = DefiningOp;
      mlir::ResultRange::use_begin(&v74, &v71);
      v49 = *(v48 + 36);
      if (v49)
      {
        v50 = v46;
      }

      else
      {
        v50 = 0;
      }

      v74.n128_u64[0] = v50;
      v74.n128_u64[1] = v49;
      mlir::ResultRange::use_end(&v74, v63);
      v51 = v73;
      v62 = v73;
      v60 = v71;
      v61 = v72;
      for (i = v64; v73 != i; v51 = v73)
      {
        v58 = *(v51 + 16);
        llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v68, &v58, &v74);
        mlir::ResultRange::UseIterator::operator++(&v71);
      }

      mlir::Operation::moveAfter(v36, v15);
LABEL_45:
      ++v34;
      v15 = v36;
    }

    while (v34 != v35);
  }

  v53 = __p[1];
  v54 = v66;
  *(&v67 + 1) = 0;
  v55 = (v66 - __p[1]) >> 3;
  if (v55 >= 3)
  {
    do
    {
      operator delete(*v53);
      v54 = v66;
      v53 = (__p[1] + 8);
      __p[1] = v53;
      v55 = (v66 - v53) >> 3;
    }

    while (v55 > 2);
  }

  if (v55 == 1)
  {
    v56 = 256;
  }

  else
  {
    if (v55 != 2)
    {
LABEL_75:
      if (v53 != v54)
      {
        do
        {
          v57 = *v53++;
          operator delete(v57);
        }

        while (v53 != v54);
        if (v66 != __p[1])
        {
          *&v66 = v66 + ((__p[1] - v66 + 7) & 0xFFFFFFFFFFFFFFF8);
        }
      }

      if (__p[0])
      {
        operator delete(__p[0]);
      }

      llvm::deallocate_buffer(v68[0], (8 * v69));
    }

    v56 = 512;
  }

  *&v67 = v56;
  goto LABEL_75;
}

void mlir::anonymous namespace::BuildContext::~BuildContext(llvm **this)
{
  *this = &unk_1F5B05610;
  llvm::deallocate_buffer(this[2], (8 * *(this + 8)));
}

{
  *this = &unk_1F5B05610;
  llvm::deallocate_buffer(this[2], (8 * *(this + 8)));
}

void mlir::legalizeRegions(mlir::ForwardIterator *a1, uint64_t a2)
{
  v39[1] = *MEMORY[0x1E69E9840];
  v34 = a1;
  v33 = a2;
  v3 = *(a2 + 8);
  v38[0] = v39;
  v38[1] = 0x100000000;
  v31 = &v33;
  v32 = 0;
  v29 = &v31;
  v30 = 0;
  v36[1] = 0x500000000;
  v21[0] = 0;
  v21[1] = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v13 = v3;
  v14 = &v33;
  v15 = v21;
  v35 = &v13;
  v36[0] = &v37;
  mlir::detail::walk<mlir::ForwardIterator>(a1, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_15legalizeRegionsENS1_8ModuleOpEPNS1_15RegionOpCreatorEE3__0NS1_9placement12HostTypeCastEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESO_E4typeES3_OT1_EUlS3_E_EEvlS3_, &v35, 1);
  v13 = &v34;
  v14 = v38;
  v15 = v21;
  v16 = &v33;
  v17 = v36;
  v18 = v3;
  v19 = &v31;
  v20 = &v29;
  v35 = &v13;
  if (mlir::detail::walk<mlir::ForwardIterator>(a1, _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_15legalizeRegionsENS1_8ModuleOpEPNS1_15RegionOpCreatorEE3__1NS1_24TargetLegalizerInterfaceES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESO_E4typeES4_OT1_EUlS4_E_EES2_lS4_, &v35, 1))
  {
    v4 = *(((v34 + 16 * ((*(v34 + 11) >> 23) & 1) + ((*(v34 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v34 + 10) + 8);
    if (v4)
    {
      v5 = (v4 - 8);
    }

    else
    {
      v5 = 0;
    }

    v6 = *(v5 + 5);
    v3[2] = v5;
    v3[3] = v6;
    if (v32)
    {
      v7 = v31;
      v8 = 8 * v32;
      do
      {
        v9 = *v7++;
        mlir::OpBuilder::insert(v3, v9);
        v8 -= 8;
      }

      while (v8);
    }

    if (v30)
    {
      v10 = v29;
      v11 = 8 * v30;
      do
      {
        v12 = *v10++;
        mlir::Operation::erase(v12);
        v11 -= 8;
      }

      while (v11);
    }
  }

  llvm::deallocate_buffer(v26, (16 * v28));
}

uint64_t mlir::computeCost(mlir::ForwardIterator *a1, uint64_t a2)
{
  v3 = 0;
  v5[0] = a2;
  v5[1] = &v3;
  v4 = v5;
  mlir::detail::walk<mlir::ForwardIterator>(a1, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_11computeCostENS1_8ModuleOpERKNS1_10DeviceInfoERNS1_18InFlightDiagnosticEE3__0NS1_24ExecutionCostOpInterfaceEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESQ_E4typeES3_OT1_EUlS3_E_EEvlS3_, &v4, 1);
  return v3 | 0x100000000;
}

uint64_t mlir::collectRegions(mlir::ForwardIterator *a1, uint64_t a2, uint64_t a3)
{
  v16 = a3;
  v17 = a2;
  if (a3 && (*(a3 + 1) & 1) != 0)
  {
    if (*(a3 + 2) == 1)
    {
      v5 = (*(*v17 + 104))(v17, a1);
      v7 = v6;
      v8 = llvm::dbgs(v5);
      v9 = v8[4];
      if (v8[3] - v9 > 0xDuLL)
      {
        qmemcpy(v9, "Module Cost0: ", 14);
        v10 = v8;
        v8[4] += 14;
      }

      else
      {
        v10 = llvm::raw_ostream::write(v8, "Module Cost0: ", 0xEuLL);
      }

      std::to_string(&__p, v7 * 1000.0);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      v13 = llvm::raw_ostream::write(v10, p_p, size);
      v14 = v13[4];
      if (v13[3] - v14 > 3uLL)
      {
        *v14 = 175336736;
        v13[4] += 4;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_19:
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        llvm::raw_ostream::write(v13, " ms\n", 4uLL);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_19;
        }
      }
    }

    return 1;
  }

  __p.__r_.__value_.__r.__words[0] = &v17;
  __p.__r_.__value_.__l.__size_ = &v16;
  v18 = &__p;
  result = mlir::detail::walk<mlir::ForwardIterator>(a1, _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_14collectRegionsENS1_8ModuleOpEPNS1_15RegionOpCreatorEPKNS1_15CostModelParamsEE3__0NS1_4func6FuncOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESS_E4typeES4_OT1_EUlS4_E_EES2_lS4_, &v18, 1);
  if (result)
  {
    mlir::legalizeRegions(a1, v17);
  }

  return result;
}

uint64_t mlir::doPlacement(mlir::Block **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v90 = *MEMORY[0x1E69E9840];
  v81[4] = 257;
  mlir::Operation::emitError(a1, &v78, v56);
  v49[0] = mlir::Attribute::getContext((a1 + 3));
  memset(&v49[1], 0, 24);
  v53 = v55;
  v54 = 0x600000000;
  v74 = &v53;
  v78 = &v74;
  mlir::detail::walk<mlir::ForwardIterator>(a1, _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_11doPlacementENS1_8ModuleOpExxxNS_8ArrayRefIPNS1_15DeviceInterfaceEEERKNS1_10DeviceInfoENSt3__18optionalIjEEbE3__1NS1_4func6FuncOpES2_EENSK_9enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueESW_E4typeES4_OT1_EUlS4_E_EES2_lS4_, &v78, 1);
  if (v54)
  {
    v48 = *v53;
    v65 = -1;
    v66 = &v68;
    v67 = 0x600000000;
    v69 = &v71;
    v70 = 0x600000000;
    v73 = 0;
    v72 = 0uLL;
    if (a6 == -1)
    {
      v78 = -1;
      __src = v81;
      v80 = 0x600000000;
      v82 = v84;
      v83 = 0x600000000;
      v85 = v72;
      v86 = v73;
      v36 = mlir::UnknownLoc::get(v49[0], v9);
      v37 = mlir::OpBuilder::create<mlir::ModuleOp>(v49, v36);
    }

    v10 = 0;
    v11 = 1;
    v75 = v77;
    v76 = 0x200000000;
    v12 = 0;
    if (a6)
    {
      v13 = 1;
      v14 = 0;
      do
      {
        v15 = *(a5 + 8 * v14);
        if (v12 >= HIDWORD(v76))
        {
          v16 = v10;
          v17 = v11;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v75, v77, v12 + 1, 8);
          v11 = v17;
          v10 = v16;
          v12 = v76;
        }

        *(v75 + v12) = v15;
        v12 = v76 + 1;
        LODWORD(v76) = v76 + 1;
        v14 = v13++;
      }

      while (a6 > v14);
      v18 = v75;
    }

    else
    {
      v18 = v77;
    }

    v19 = *(&v72 + 1);
    v20 = v12;
    v78 = v12;
    __src = v81;
    v80 = 0x600000000;
    v82 = v84;
    v83 = 0x600000000;
    v85 = v48;
    v86 = 0;
    *&v87 = &v78;
    LODWORD(v83) = v83 - 1;
    v21 = v83;
    *&v87 = v88;
    HIDWORD(v87) = 6;
    if (v83 < 7)
    {
      if (!v83)
      {
        goto LABEL_15;
      }

      v23 = 8 * v83;
      v22 = v88;
    }

    else
    {
      DWORD2(v87) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v87, v88, v83, 8);
      v22 = v87;
      v23 = 8 * v21;
    }

    memset(v22, 255, v23);
LABEL_15:
    DWORD2(v87) = v21;
    llvm::SmallVectorImpl<unsigned long long>::operator=(&__src, &v87);
    if (v87 != v88)
    {
      free(v87);
    }

    *(&v85 + 1) = v19;
    v52[0] = mlir::Attribute::getContext((v48 + 24));
    memset(&v52[1], 0, 24);
    v25 = mlir::UnknownLoc::get(v52[0], v24);
    mlir::OpBuilder::create<mlir::ModuleOp>(v52, v25);
    v27 = __src;
    v28 = v80;
    if (v80)
    {
      bzero(__src, 8 * v80);
    }

    v50[0] = 0;
    v50[1] = 0;
    v51 = 0;
    if (v28 | v83)
    {
      v29 = v82;
      v30 = &v27[v28];
      v47 = (v82 + 8 * v83);
      do
      {
        v31 = *v29;
        {
        }

        if ((*(**(v31 + 48) + 32))(*(v31 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
        {
          *v27 = 0;
        }

        else if (v20)
        {
          v32 = *v18;
          v33 = *(*v18 + 24);
          *&v87 = 0;
          v88[0] = 0;
          v88[1] = v50;
          v88[2] = 0;
          v89 = 1;
          mlir::applyAnalysisConversion(v31, v33, (v32 + 8), &v87);
        }

        ++v27;
        ++v29;
      }

      while (v27 != v30 || v29 != v47);
    }

    v34 = mlir::UnknownLoc::get(v52[0], v26);
    v35 = mlir::OpBuilder::create<mlir::ModuleOp>(v52, v34);
  }

  mlir::InFlightDiagnostic::abandon(v56);
  if (v53 != v55)
  {
    free(v53);
  }

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

    v38 = __p;
    if (__p)
    {
      v39 = v62;
      v40 = __p;
      if (v62 != __p)
      {
        do
        {
          v39 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v39 - 1);
        }

        while (v39 != v38);
        v40 = __p;
      }

      v62 = v38;
      operator delete(v40);
    }

    v41 = v59;
    if (v59)
    {
      v42 = v60;
      v43 = v59;
      if (v60 != v59)
      {
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
        v43 = v59;
      }

      v60 = v41;
      operator delete(v43);
    }

    if (v57 != &v58)
    {
      free(v57);
    }
  }

  return 1;
}

void sub_1DFDED970()
{

  operator delete(v0);
}

uint64_t llvm::detail::DenseSetImpl<mlir::Operation *,llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,llvm::DenseMapInfo<mlir::Operation *,void>>::DenseSetImpl<mlir::Operation **>(uint64_t a1, void *a2, void *a3)
{
  v6 = (*a3 - *a2) >> 3;
  if ((v6 - 2147483649) >= 0xFFFFFFFF80000000)
  {
    v7 = 4 * (1 << -__clz(v6 - 1));
    v8 = (v7 / 3 + 1) | ((v7 / 3 + 1) >> 1);
    v9 = v8 | (v8 >> 2) | ((v8 | (v8 >> 2)) >> 4);
    LODWORD(v9) = (((v9 | (v9 >> 8)) >> 16) | v9 | (v9 >> 8)) + 1;
    *(a1 + 16) = v9;
    buffer = llvm::allocate_buffer(8 * v9, 8uLL);
    *a1 = buffer;
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = (v11 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      v13 = buffer;
      if (v12 < 3)
      {
        goto LABEL_8;
      }

      v14 = v12 + 1;
      v13 = &buffer->i8[8 * (v14 & 0x3FFFFFFFFFFFFFFCLL)];
      v15 = buffer + 1;
      v16 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
      v17 = v14 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v15[-1] = v16;
        *v15 = v16;
        v15 += 2;
        v17 -= 4;
      }

      while (v17);
      if (v14 != (v14 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_8:
        v18 = &buffer->i8[8 * v11];
        do
        {
          *v13 = -4096;
          v13 += 8;
        }

        while (v13 != v18);
      }
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  v19 = *a2;
  for (i = *a3; v19 != i; ++v19)
  {
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1, v19, &v22);
  }

  return a1;
}

uint64_t mlir::anonymous namespace::eraseOpsFromRegion(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v3 = *result;
  v4 = *(result + 8);
  v5 = *result + 8 * v4;
  v6 = v5;
  if (v4)
  {
    v7 = *a2;
    v8 = *(a2 + 4);
    v9 = v8 - 1;
    v10 = *result;
    while (1)
    {
      v11 = *v10;
      if (!v8)
      {
        break;
      }

      v12 = ((v11 >> 4) ^ (v11 >> 9)) & v9;
      v13 = *(v7 + 8 * v12);
      if (v13 != v11)
      {
        v14 = 1;
        while (v13 != -4096)
        {
          v15 = v12 + v14++;
          v12 = v15 & v9;
          v13 = *(v7 + 8 * v12);
          if (v13 == v11)
          {
            goto LABEL_5;
          }
        }

LABEL_12:
        v3 = v10;
        break;
      }

LABEL_5:
      if (v12 == v8)
      {
        goto LABEL_12;
      }

      if (++v10 == v5)
      {
        goto LABEL_18;
      }
    }

    v16 = *(a3 + 8);
    if (v16 >= *(a3 + 12))
    {
      v28 = a2;
      v30 = a3;
      v29 = result;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, v16 + 1, 8);
      a2 = v28;
      a3 = v30;
      result = v29;
      LODWORD(v16) = *(v30 + 8);
    }

    *(*a3 + 8 * v16) = v11;
    ++*(a3 + 8);
  }

  if (v3 != v5)
  {
    v17 = v3 + 1;
    v6 = v3;
    if (v3 + 1 != v5)
    {
      while (1)
      {
        v18 = *v17;
        v19 = *(a2 + 4);
        if (!v19)
        {
          goto LABEL_23;
        }

        v20 = ((v18 >> 4) ^ (v18 >> 9)) & (v19 - 1);
        v21 = *(*a2 + 8 * v20);
        if (v21 != v18)
        {
          v26 = 1;
          while (v21 != -4096)
          {
            v27 = v20 + v26++;
            v20 = v27 & (v19 - 1);
            v21 = *(*a2 + 8 * v20);
            if (v21 == v18)
            {
              goto LABEL_22;
            }
          }

          goto LABEL_23;
        }

LABEL_22:
        if (v20 != v19)
        {
          *v6++ = v18;
          if (++v17 == v5)
          {
            break;
          }
        }

        else
        {
LABEL_23:
          v22 = *(a3 + 8);
          if (v22 >= *(a3 + 12))
          {
            v23 = a2;
            v24 = a3;
            v25 = result;
            llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, v22 + 1, 8);
            a2 = v23;
            a3 = v24;
            result = v25;
            v22 = *(v24 + 8);
          }

          *(*a3 + 8 * v22) = v18;
          ++*(a3 + 8);
          if (++v17 == v5)
          {
            break;
          }
        }
      }
    }
  }

LABEL_18:
  *(result + 8) = (v6 - *result) >> 3;
  return result;
}

const char *llvm::getTypeName<mlir::OpTrait::TypeChanger<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::TypeChanger>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::TypeChanger<Empty>]";
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

uint64_t llvm::detail::DenseSetImpl<mlir::Operation *,llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,llvm::DenseMapInfo<mlir::Operation *,void>>::clear(uint64_t result)
{
  if (*(result + 8))
  {
    v1 = *(result + 16);
    if (v1 <= 4 * *(result + 8) || v1 < 0x41)
    {
      if (v1)
      {
        v2 = *result;
        v3 = (v1 - 1) & 0x1FFFFFFFFFFFFFFFLL;
        v4 = *result;
        if (v3 <= 2)
        {
          goto LABEL_10;
        }

        v5 = v3 + 1;
        v4 = (v2 + 8 * (v5 & 0x3FFFFFFFFFFFFFFCLL));
        v6 = v2 + 1;
        v7 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
        v8 = v5 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v6[-1] = v7;
          *v6 = v7;
          v6 += 2;
          v8 -= 4;
        }

        while (v8);
        if (v5 != (v5 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_10:
          v9 = (v2 + 8 * v1);
          do
          {
            v4->i64[0] = -4096;
            v4 = (v4 + 8);
          }

          while (v4 != v9);
        }
      }

      *(result + 8) = 0;
    }

    else
    {
      return llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::shrink_and_clear(result);
    }
  }

  return result;
}

uint64_t llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::shrink_and_clear(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 8);
  v3 = 1 << (33 - __clz(v2 - 1));
  if (v3 <= 64)
  {
    v3 = 64;
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 != v1)
  {
    llvm::deallocate_buffer(*result, (8 * v1));
  }

  *(result + 8) = 0;
  if (v1)
  {
    v5 = *result;
    v6 = (v1 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    v7 = *result;
    if (v6 < 3)
    {
      goto LABEL_12;
    }

    v8 = v6 + 1;
    v7 = (v5 + 8 * (v8 & 0x3FFFFFFFFFFFFFFCLL));
    v9 = (v5 + 16);
    v10 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
    v11 = v8 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v9[-1] = v10;
      *v9 = v10;
      v9 += 2;
      v11 -= 4;
    }

    while (v11);
    if (v8 != (v8 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_12:
      v12 = (v5 + 8 * v1);
      do
      {
        *v7 = -4096;
        v7 = (v7 + 8);
      }

      while (v7 != v12);
    }
  }

  return result;
}

BOOL mlir::emitOptionalWarning<char const(&)[37],llvm::StringRef &>(mlir *a1, Location a2, char *a3, uint64_t a4)
{
  v26 = *MEMORY[0x1E69E9840];
  if ((a2.var0.var0 & 1) == 0)
  {
    return 0;
  }

  mlir::emitWarning(a1, a2, &v16);
  if (v16)
  {
    mlir::Diagnostic::append<char const(&)[19],llvm::StringRef>(&v17, a3, a4);
  }

  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v16);
  if (v16)
  {
    mlir::InFlightDiagnostic::report(&v16);
  }

  if (v25 == 1)
  {
    if (v24 != &v25)
    {
      free(v24);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v23;
      v9 = __p;
      if (v23 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v23 = v7;
      operator delete(v9);
    }

    v10 = v20;
    if (v20)
    {
      v11 = v21;
      v12 = v20;
      if (v21 != v20)
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
        v12 = v20;
      }

      v21 = v10;
      operator delete(v12);
    }

    if (v18 != &v19)
    {
      free(v18);
    }
  }

  return v6;
}

uint64_t llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::anonymous namespace::BuildContext::updateCreatedOpsList(mlir::Operation *,mlir::Operation *,mlir::ConversionTarget const&)::{lambda(mlir::Operation *)#2}>(uint64_t *a1, uint64_t a2)
{
  v6 = a2;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(*a1, &v6, v7);
  v3 = v6;
  {
    v5 = v3;
    v3 = v5;
  }

  result = (*(**(v3 + 48) + 32))(*(v3 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id);
  if (result)
  {
    return llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1[1], &v6, v7);
  }

  return result;
}

uint64_t llvm::SmallVectorImpl<mlir::Operation *>::insert_one_impl<mlir::Operation *>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  if (*a1 + 8 * v6 == a2)
  {
    v10 = *a3;
    if (v6 >= *(a1 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v6 + 1, 8);
      v6 = *(a1 + 8);
      v5 = *a1;
    }

    *(v5 + 8 * v6) = v10;
    v11 = *(a1 + 8) + 1;
    *(a1 + 8) = v11;
    return *a1 + 8 * v11 - 8;
  }

  else
  {
    v7 = a2 - v5;
    if (v6 >= *(a1 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v6 + 1, 8);
      v5 = *a1;
      v6 = *(a1 + 8);
    }

    v8 = (v5 + v7);
    *(v5 + 8 * v6) = *(v5 + 8 * v6 - 8);
    v9 = *a1 + 8 * v6 - 8;
    if (v9 != v8)
    {
      memmove(v8 + 1, v8, v9 - v8);
      LODWORD(v6) = *(a1 + 8);
    }

    *(a1 + 8) = v6 + 1;
    *v8 = *a3;
  }

  return v8;
}

unint64_t *llvm::BitVector::BitVector(unint64_t *this, int a2, uint64_t a3)
{
  v3 = a3;
  v5 = a2 + 63;
  v6 = (a2 + 63) >> 6;
  v7 = a3 << 63 >> 63;
  v8 = (this + 2);
  *this = (this + 2);
  *(this + 3) = 6;
  if (v5 < 0x1C0)
  {
    if (v5 >= 0x40)
    {
      v15 = this + 2;
      v16 = v5 >> 6;
      if (v5 < 0x100)
      {
        goto LABEL_18;
      }

      v15 = (v8 + 8 * (v6 & 4));
      v16 = v6 & 3;
      v17 = vdupq_n_s64(v7);
      v18 = (this + 4);
      v19 = v6 & 4;
      do
      {
        v18[-1] = v17;
        *v18 = v17;
        v18 += 2;
        v19 -= 4;
      }

      while (v19);
      if ((v6 & 4) != v6)
      {
LABEL_18:
        do
        {
          *v15++ = v7;
          --v16;
        }

        while (v16);
      }
    }
  }

  else
  {
    *(this + 2) = 0;
    v9 = this;
    llvm::SmallVectorBase<unsigned int>::grow_pod(this, v8, v5 >> 6, 8);
    this = v9;
    v8 = *v9;
    v10 = 8 * (v6 & 0x3FFFFFC);
    v11 = v6 & 3;
    v12 = vdupq_n_s64(v7);
    v13 = (*v9 + 16);
    v14 = v6 & 0x3FFFFFC;
    do
    {
      v13[-1] = v12;
      *v13 = v12;
      v13 += 2;
      v14 -= 4;
    }

    while (v14);
    if ((v6 & 0x3FFFFFC) != v6)
    {
      do
      {
        *(v8 + v10) = v7;
        v10 += 8;
        --v11;
      }

      while (v11);
    }
  }

  *(this + 2) = v6;
  *(this + 16) = a2;
  if (v3)
  {
    if ((a2 & 0x3F) != 0)
    {
      *(v8 + 8 * v6 - 8) &= ~(-1 << (a2 & 0x3F));
    }
  }

  return this;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,mlir::anonymous namespace::moveErasedOpsAfter(mlir::Operation *,llvm::SmallVectorImpl<mlir::Operation *> &)::$_1 &,mlir::Operation **,false>(uint64_t result, mlir::Operation **a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = a2 - v8;
    v10 = v9 - 2;
    if (v9 > 2)
    {
      break;
    }

    if (v9 < 2)
    {
      return result;
    }

    if (v9 == 2)
    {
      result = mlir::Operation::isBeforeInBlock(*(a2 - 1), *v8);
      if (result)
      {
        v77 = *v8;
        *v8 = *(a2 - 1);
LABEL_105:
        *(a2 - 1) = v77;
        return result;
      }

      return result;
    }

LABEL_10:
    if (v9 <= 23)
    {
      v80 = v8 + 1;
      v82 = v8 == a2 || v80 == a2;
      if (a4)
      {
        if (!v82)
        {
          v83 = 0;
          v84 = v8;
          do
          {
            v87 = *v84;
            v86 = v84[1];
            v84 = v80;
            result = mlir::Operation::isBeforeInBlock(v86, v87);
            if (result)
            {
              v88 = *v84;
              v89 = v83;
              do
              {
                *(v8 + v89 + 8) = *(v8 + v89);
                if (!v89)
                {
                  v85 = v8;
                  goto LABEL_122;
                }

                result = mlir::Operation::isBeforeInBlock(v88, *(v8 + v89 - 8));
                v89 -= 8;
              }

              while ((result & 1) != 0);
              v85 = (v8 + v89 + 8);
LABEL_122:
              *v85 = v88;
            }

            v80 = v84 + 1;
            v83 += 8;
          }

          while (v84 + 1 != a2);
        }
      }

      else if (!v82)
      {
        do
        {
          v118 = *v7;
          v117 = v7[1];
          v7 = v80;
          result = mlir::Operation::isBeforeInBlock(v117, v118);
          if (result)
          {
            v119 = *v7;
            v120 = v7;
            do
            {
              v121 = v120;
              v122 = *--v120;
              *v121 = v122;
              result = mlir::Operation::isBeforeInBlock(v119, *(v121 - 2));
            }

            while ((result & 1) != 0);
            *v120 = v119;
          }

          v80 = v7 + 1;
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v90 = v10 >> 1;
        v91 = v10 >> 1;
        v123 = a2;
        do
        {
          v92 = v91;
          if (v90 >= v91)
          {
            v93 = (2 * v91) | 1;
            v94 = &v7[v93];
            if (2 * v91 + 2 < v9 && mlir::Operation::isBeforeInBlock(*v94, v94[1]))
            {
              ++v94;
              v93 = 2 * v92 + 2;
            }

            v95 = &v7[v92];
            result = mlir::Operation::isBeforeInBlock(*v94, *v95);
            if ((result & 1) == 0)
            {
              v96 = *v95;
              do
              {
                v97 = v94;
                *v95 = *v94;
                if (v90 < v93)
                {
                  break;
                }

                v98 = (2 * v93) | 1;
                v94 = &v7[v98];
                v99 = 2 * v93 + 2;
                if (v99 < v9 && mlir::Operation::isBeforeInBlock(*v94, v94[1]))
                {
                  ++v94;
                  v98 = v99;
                }

                result = mlir::Operation::isBeforeInBlock(*v94, v96);
                v95 = v97;
                v93 = v98;
              }

              while (!result);
              *v97 = v96;
              a2 = v123;
            }
          }

          v91 = v92 - 1;
        }

        while (v92);
        do
        {
          v101 = 0;
          v102 = *v7;
          v103 = v7;
          do
          {
            v107 = &v103[v101];
            v106 = v107 + 1;
            v108 = (2 * v101) | 1;
            v109 = 2 * v101 + 2;
            if (v109 < v9)
            {
              v105 = v107[2];
              v104 = v107 + 2;
              result = mlir::Operation::isBeforeInBlock(*(v104 - 1), v105);
              if (result)
              {
                v106 = v104;
                v101 = v109;
              }

              else
              {
                v101 = v108;
              }
            }

            else
            {
              v101 = (2 * v101) | 1;
            }

            *v103 = *v106;
            v103 = v106;
          }

          while (v101 <= ((v9 - 2) >> 1));
          if (v106 == --a2)
          {
            *v106 = v102;
          }

          else
          {
            *v106 = *a2;
            *a2 = v102;
            v110 = (v106 - v7 + 8) >> 3;
            v100 = v110 < 2;
            v111 = v110 - 2;
            if (!v100)
            {
              v112 = v111 >> 1;
              v113 = &v7[v111 >> 1];
              result = mlir::Operation::isBeforeInBlock(*v113, *v106);
              if (result)
              {
                v114 = *v106;
                do
                {
                  v115 = v113;
                  *v106 = *v113;
                  if (!v112)
                  {
                    break;
                  }

                  v112 = (v112 - 1) >> 1;
                  v113 = &v7[v112];
                  result = mlir::Operation::isBeforeInBlock(*v113, v114);
                  v106 = v115;
                }

                while ((result & 1) != 0);
                *v115 = v114;
              }
            }
          }

          v100 = v9-- <= 2;
        }

        while (!v100);
      }

      return result;
    }

    v11 = v9 >> 1;
    if (v9 < 0x81)
    {
      v15 = mlir::Operation::isBeforeInBlock(*v7, v7[v11]);
      v16 = mlir::Operation::isBeforeInBlock(*(a2 - 1), *v7);
      if (v15)
      {
        v17 = v7[v11];
        if (v16)
        {
          v7[v11] = *(a2 - 1);
          *(a2 - 1) = v17;
        }

        else
        {
          v7[v11] = *v7;
          *v7 = v17;
          if (mlir::Operation::isBeforeInBlock(*(a2 - 1), v17))
          {
            v29 = *v7;
            *v7 = *(a2 - 1);
            *(a2 - 1) = v29;
          }
        }
      }

      else if (v16)
      {
        v20 = *v7;
        *v7 = *(a2 - 1);
        *(a2 - 1) = v20;
        if (mlir::Operation::isBeforeInBlock(*v7, v7[v11]))
        {
          v21 = v7[v11];
          v7[v11] = *v7;
          *v7 = v21;
        }
      }

      goto LABEL_55;
    }

    v12 = mlir::Operation::isBeforeInBlock(v7[v11], *v7);
    v13 = mlir::Operation::isBeforeInBlock(*(a2 - 1), v7[v11]);
    if (v12)
    {
      v14 = *v7;
      if (v13)
      {
        *v7 = *(a2 - 1);
        *(a2 - 1) = v14;
      }

      else
      {
        *v7 = v7[v11];
        v7[v11] = v14;
        if (mlir::Operation::isBeforeInBlock(*(a2 - 1), v14))
        {
          v22 = v7[v11];
          v7[v11] = *(a2 - 1);
          *(a2 - 1) = v22;
        }
      }
    }

    else if (v13)
    {
      v18 = v7[v11];
      v7[v11] = *(a2 - 1);
      *(a2 - 1) = v18;
      if (mlir::Operation::isBeforeInBlock(v7[v11], *v7))
      {
        v19 = *v7;
        *v7 = v7[v11];
        v7[v11] = v19;
      }
    }

    v23 = v11 - 1;
    v24 = mlir::Operation::isBeforeInBlock(v7[v11 - 1], v7[1]);
    v25 = mlir::Operation::isBeforeInBlock(*(a2 - 2), v7[v11 - 1]);
    if (v24)
    {
      v26 = v7[1];
      if (v25)
      {
        v7[1] = *(a2 - 2);
        *(a2 - 2) = v26;
      }

      else
      {
        v7[1] = v7[v23];
        v7[v23] = v26;
        if (mlir::Operation::isBeforeInBlock(*(a2 - 2), v26))
        {
          v30 = v7[v23];
          v7[v23] = *(a2 - 2);
          *(a2 - 2) = v30;
        }
      }
    }

    else if (v25)
    {
      v27 = v7[v23];
      v7[v23] = *(a2 - 2);
      *(a2 - 2) = v27;
      if (mlir::Operation::isBeforeInBlock(v7[v23], v7[1]))
      {
        v28 = v7[1];
        v7[1] = v7[v23];
        v7[v23] = v28;
      }
    }

    v31 = v11 + 1;
    v32 = mlir::Operation::isBeforeInBlock(v7[v11 + 1], v7[2]);
    v33 = mlir::Operation::isBeforeInBlock(*(a2 - 3), v7[v11 + 1]);
    if (v32)
    {
      v34 = v7[2];
      if (v33)
      {
        v7[2] = *(a2 - 3);
        *(a2 - 3) = v34;
      }

      else
      {
        v7[2] = v7[v31];
        v7[v31] = v34;
        if (mlir::Operation::isBeforeInBlock(*(a2 - 3), v34))
        {
          v37 = v7[v31];
          v7[v31] = *(a2 - 3);
          *(a2 - 3) = v37;
        }
      }
    }

    else if (v33)
    {
      v35 = v7[v31];
      v7[v31] = *(a2 - 3);
      *(a2 - 3) = v35;
      if (mlir::Operation::isBeforeInBlock(v7[v31], v7[2]))
      {
        v36 = v7[2];
        v7[2] = v7[v31];
        v7[v31] = v36;
      }
    }

    v38 = mlir::Operation::isBeforeInBlock(v7[v11], v7[v23]);
    v39 = mlir::Operation::isBeforeInBlock(v7[v31], v7[v11]);
    if (!v38)
    {
      v41 = v7[v11];
      if (!v39)
      {
        goto LABEL_54;
      }

      v42 = v7[v31];
      v7[v11] = v42;
      v7[v31] = v41;
      v43 = mlir::Operation::isBeforeInBlock(v42, v7[v23]);
      v41 = v7[v11];
      if (!v43)
      {
        goto LABEL_54;
      }

      v44 = v7[v23];
      v7[v23] = v41;
      v7[v11] = v44;
      goto LABEL_53;
    }

    v40 = v7[v23];
    if (v39)
    {
      v7[v23] = v7[v31];
      v7[v31] = v40;
      v41 = v7[v11];
    }

    else
    {
      v7[v23] = v7[v11];
      v7[v11] = v40;
      v45 = mlir::Operation::isBeforeInBlock(v7[v31], v40);
      v41 = v7[v11];
      if (v45)
      {
        v44 = v7[v31];
        v7[v11] = v44;
        v7[v31] = v41;
LABEL_53:
        v41 = v44;
      }
    }

LABEL_54:
    v46 = *v7;
    *v7 = v41;
    v7[v11] = v46;
LABEL_55:
    --a3;
    v47 = *v7;
    if ((a4 & 1) != 0 || (v48 = mlir::Operation::isBeforeInBlock(*(v7 - 1), *v7), v47 = *v7, v48))
    {
      v49 = 0;
        ;
      }

      v51 = &v7[v49];
      v52 = a2;
      if (v49 == 1)
      {
        v52 = a2;
        do
        {
          if (v51 >= v52)
          {
            break;
          }

          v54 = *--v52;
        }

        while (!mlir::Operation::isBeforeInBlock(v54, v47));
      }

      else
      {
        do
        {
          v53 = *--v52;
        }

        while (!mlir::Operation::isBeforeInBlock(v53, v47));
      }

      if (v51 >= v52)
      {
        v60 = v51 - 1;
        if (v51 - 1 == v7)
        {
          goto LABEL_75;
        }

LABEL_74:
        *v7 = *v60;
        goto LABEL_75;
      }

      v55 = &v7[v49];
      v56 = v52;
      do
      {
        v57 = *v55;
        *v55 = *v56;
        *v56 = v57;
        do
        {
          v58 = v55[1];
          ++v55;
        }

        while (mlir::Operation::isBeforeInBlock(v58, v47));
        do
        {
          v59 = *--v56;
        }

        while (!mlir::Operation::isBeforeInBlock(v59, v47));
      }

      while (v55 < v56);
      v60 = v55 - 1;
      if (v60 != v7)
      {
        goto LABEL_74;
      }

LABEL_75:
      *v60 = v47;
      if (v51 < v52)
      {
        goto LABEL_78;
      }

      v8 = v60 + 1;
      if (result)
      {
        a2 = v60;
        if (!v61)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v61)
      {
LABEL_78:
        a4 = 0;
        v8 = v60 + 1;
      }
    }

    else
    {
      result = mlir::Operation::isBeforeInBlock(*v7, *(a2 - 1));
      if (result)
      {
        v8 = v7;
        do
        {
          v62 = v8[1];
          ++v8;
          result = mlir::Operation::isBeforeInBlock(v47, v62);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v63 = v7 + 1;
        do
        {
          v8 = v63;
          if (v63 >= a2)
          {
            break;
          }

          ++v63;
          result = mlir::Operation::isBeforeInBlock(v47, *v8);
        }

        while (!result);
      }

      v64 = a2;
      if (v8 < a2)
      {
        v64 = a2;
        do
        {
          v65 = *--v64;
          result = mlir::Operation::isBeforeInBlock(v47, v65);
        }

        while ((result & 1) != 0);
      }

      while (v8 < v64)
      {
        v66 = *v8;
        *v8 = *v64;
        *v64 = v66;
        do
        {
          v67 = v8[1];
          ++v8;
        }

        while (!mlir::Operation::isBeforeInBlock(v47, v67));
        do
        {
          v68 = *--v64;
          result = mlir::Operation::isBeforeInBlock(v47, v68);
        }

        while ((result & 1) != 0);
      }

      v69 = v8 - 1;
      if (v8 - 1 != v7)
      {
        *v7 = *v69;
      }

      a4 = 0;
      *v69 = v47;
    }
  }

  if (v9 != 3)
  {
    if (v9 == 4)
    {
    }

    if (v9 == 5)
    {
      result = mlir::Operation::isBeforeInBlock(*(a2 - 1), v8[3]);
      if (!result)
      {
        return result;
      }

      v70 = v8[3];
      v8[3] = *(a2 - 1);
      *(a2 - 1) = v70;
      result = mlir::Operation::isBeforeInBlock(v8[3], v8[2]);
      if (!result)
      {
        return result;
      }

      v72 = v8[2];
      v71 = v8[3];
      v73 = v8[1];
      v8[2] = v71;
      v8[3] = v72;
      result = mlir::Operation::isBeforeInBlock(v71, v73);
      if (!result)
      {
        return result;
      }

      v75 = v8[1];
      v74 = v8[2];
      v76 = *v8;
      v8[1] = v74;
      v8[2] = v75;
      goto LABEL_163;
    }

    goto LABEL_10;
  }

  v78 = mlir::Operation::isBeforeInBlock(v8[1], *v8);
  result = mlir::Operation::isBeforeInBlock(*(a2 - 1), v8[1]);
  if (!v78)
  {
    if (!result)
    {
      return result;
    }

    v116 = v8[1];
    v8[1] = *(a2 - 1);
    *(a2 - 1) = v116;
    v76 = *v8;
    v74 = v8[1];
LABEL_163:
    result = mlir::Operation::isBeforeInBlock(v74, v76);
    if (result)
    {
      *v8 = vextq_s8(*v8, *v8, 8uLL);
    }

    return result;
  }

  v79 = *v8;
  if (result)
  {
    *v8 = *(a2 - 1);
    *(a2 - 1) = v79;
  }

  else
  {
    *v8 = v8[1];
    v8[1] = v79;
    result = mlir::Operation::isBeforeInBlock(*(a2 - 1), v79);
    if (result)
    {
      v77 = v8[1];
      v8[1] = *(a2 - 1);
      goto LABEL_105;
    }
  }

  return result;
}

BOOL std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,mlir::anonymous namespace::moveErasedOpsAfter(mlir::Operation *,llvm::SmallVectorImpl<mlir::Operation *> &)::$_1 &,mlir::Operation **,0>(mlir::Operation **a1, mlir::Operation **a2, mlir::Operation **a3, mlir::Operation **a4)
{
  v8 = mlir::Operation::isBeforeInBlock(*a2, *a1);
  v9 = mlir::Operation::isBeforeInBlock(*a3, *a2);
  if (v8)
  {
    v10 = *a1;
    if (v9)
    {
      *a1 = *a3;
      *a3 = v10;
    }

    else
    {
      *a1 = *a2;
      *a2 = v10;
      if (mlir::Operation::isBeforeInBlock(*a3, v10))
      {
        v13 = *a2;
        *a2 = *a3;
        *a3 = v13;
      }
    }
  }

  else if (v9)
  {
    v11 = *a2;
    *a2 = *a3;
    *a3 = v11;
    if (mlir::Operation::isBeforeInBlock(*a2, *a1))
    {
      v12 = *a1;
      *a1 = *a2;
      *a2 = v12;
    }
  }

  result = mlir::Operation::isBeforeInBlock(*a4, *a3);
  if (result)
  {
    v15 = *a3;
    *a3 = *a4;
    *a4 = v15;
    result = mlir::Operation::isBeforeInBlock(*a3, *a2);
    if (result)
    {
      v16 = *a2;
      *a2 = *a3;
      *a3 = v16;
      result = mlir::Operation::isBeforeInBlock(*a2, *a1);
      if (result)
      {
        v17 = *a1;
        *a1 = *a2;
        *a2 = v17;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,mlir::anonymous namespace::moveErasedOpsAfter(mlir::Operation *,llvm::SmallVectorImpl<mlir::Operation *> &)::$_1 &,mlir::Operation **>(mlir::Operation **a1, mlir::Operation **a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v13 = mlir::Operation::isBeforeInBlock(a1[1], *a1);
        v14 = mlir::Operation::isBeforeInBlock(*(a2 - 1), a1[1]);
        if (v13)
        {
          v15 = *a1;
          if (v14)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v15;
          }

          else
          {
            *a1 = a1[1];
            a1[1] = v15;
            if (mlir::Operation::isBeforeInBlock(*(a2 - 1), v15))
            {
              v24 = a1[1];
              a1[1] = *(a2 - 1);
              *(a2 - 1) = v24;
            }
          }

          return 1;
        }

        if (!v14)
        {
          return 1;
        }

        v20 = a1[1];
        a1[1] = *(a2 - 1);
        *(a2 - 1) = v20;
        v12 = *a1;
        v10 = a1[1];
        break;
      case 4:
        return 1;
      case 5:
        if (!mlir::Operation::isBeforeInBlock(*(a2 - 1), a1[3]))
        {
          return 1;
        }

        v6 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v6;
        if (!mlir::Operation::isBeforeInBlock(a1[3], a1[2]))
        {
          return 1;
        }

        v8 = a1[2];
        v7 = a1[3];
        v9 = a1[1];
        a1[2] = v7;
        a1[3] = v8;
        if (!mlir::Operation::isBeforeInBlock(v7, v9))
        {
          return 1;
        }

        v11 = a1[1];
        v10 = a1[2];
        v12 = *a1;
        a1[1] = v10;
        a1[2] = v11;
        break;
      default:
        goto LABEL_16;
    }

    if (mlir::Operation::isBeforeInBlock(v10, v12))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (mlir::Operation::isBeforeInBlock(*(a2 - 1), *a1))
    {
      v5 = *a1;
      *a1 = *(a2 - 1);
      *(a2 - 1) = v5;
    }

    return 1;
  }

LABEL_16:
  v16 = mlir::Operation::isBeforeInBlock(a1[1], *a1);
  v17 = a1 + 2;
  v18 = mlir::Operation::isBeforeInBlock(a1[2], a1[1]);
  if (v16)
  {
    v19 = *a1;
    if (v18)
    {
      *a1 = a1[2];
      a1[2] = v19;
    }

    else
    {
      v25 = a1[2];
      *a1 = a1[1];
      a1[1] = v19;
      if (mlir::Operation::isBeforeInBlock(v25, v19))
      {
        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
      }
    }
  }

  else if (v18)
  {
    v22 = a1[1];
    v21 = a1[2];
    v23 = *a1;
    a1[1] = v21;
    a1[2] = v22;
    if (mlir::Operation::isBeforeInBlock(v21, v23))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v26 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v27 = 0;
  v28 = 0;
  while (1)
  {
    if (mlir::Operation::isBeforeInBlock(*v26, *v17))
    {
      v30 = *v26;
      v31 = v27;
      do
      {
        v32 = (a1 + v31);
        *(a1 + v31 + 24) = *(a1 + v31 + 16);
        if (v31 == -16)
        {
          v29 = a1;
          goto LABEL_34;
        }

        v31 -= 8;
      }

      while (mlir::Operation::isBeforeInBlock(v30, v32[1]));
      v29 = (a1 + v31 + 24);
LABEL_34:
      *v29 = v30;
      if (++v28 == 8)
      {
        return v26 + 1 == a2;
      }
    }

    v17 = v26;
    v27 += 8;
    if (++v26 == a2)
    {
      return 1;
    }
  }
}

uint64_t mlir::OpBuilder::create<mlir::ModuleOp>(mlir::StringAttr **a1, uint64_t a2)
{
  v13[38] = *MEMORY[0x1E69E9840];
  v10 = a2;
  Context = mlir::Attribute::getContext(&v10);
  v5 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id, Context);
  if ((v6 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::ModuleOp,llvm::StringRef>(v13, v12, v11);
  }

  mlir::OperationState::OperationState(v13, a2, v5);
  v12[0] = 0;
  v12[16] = 0;
  mlir::ModuleOp::build(a1, v13, v12);
  v7 = mlir::OpBuilder::create(a1, v13);
  if (*(*(v7 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  mlir::OperationState::~OperationState(v13);
  return v8;
}

void mlir::anonymous namespace::PlacementState::materializeState(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v279[3] = *MEMORY[0x1E69E9840];
  v217 = &v219;
  v218 = 0x100000000;
  v214 = &v216;
  v215 = 0x600000000;
  v4 = *(a1 + 16);
  v5 = *(a1 + 80);
  if (v4 | v5)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 72);
    v8 = 8 * v5 - 8;
    v9 = 8 * v4 - 8;
    v10 = -1;
    do
    {
      v15 = *v6;
      v16 = *v7;
      {
      }

      if (((*(**(v16 + 48) + 32))(*(v16 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
      {
        if (v10 == -1 || v15 != v10)
        {
          v17 = v215;
          if (v215 >= HIDWORD(v215))
          {
            llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(&v214, v15);
          }

          else
          {
            *(v214 + v215) = v15;
            LODWORD(v215) = v17 + 1;
          }

          if (v218 < HIDWORD(v218))
          {
            v11 = v217 + 64 * v218;
            *v11 = v11 + 2;
            v11[1] = 0x600000000;
            LODWORD(v218) = v218 + 1;
          }

          else
          {
            llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::Value,6u>,false>::growAndEmplaceBack<>(&v217);
          }

          v10 = v15;
        }

        v12 = v217 + 64 * v218;
        v13 = *(v12 - 14);
        if (v13 >= *(v12 - 13))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod((v12 - 64), (v12 - 48), v13 + 1, 8);
          v13 = *(v12 - 14);
        }

        *(*(v12 - 8) + 8 * v13) = v16;
        ++*(v12 - 14);
      }

      ++v6;
      ++v7;
      v14 = v9 | v8;
      v8 -= 8;
      v9 -= 8;
    }

    while (v14);
  }

  v211 = &v213;
  v212 = 0x600000000;
  v208 = &v210;
  v209 = 0x600000000;
  v205 = &v207;
  v206 = 0x600000000;
  v202 = &v204;
  v203 = 0x600000000;
  v199 = &v201;
  v200 = 0x600000000;
  Context = mlir::Attribute::getContext((*(a1 + 136) + 24));
  v21 = a2[10];
  v20 = a2[11];
  v163 = a2 + 16;
  v187[0] = Context;
  v187[1] = 0;
  v188 = 0uLL;
  v22 = *(((&a2[4 * ((v20 >> 23) & 1) + 17] + ((v20 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v21 + 8);
  if (v22)
  {
    v23 = v22 - 8;
  }

  else
  {
    v23 = 0;
  }

  v24 = *(v23 + 40);
  *&v188 = v23;
  *(&v188 + 1) = v24;
  v186 = *(a1 + 136);
  v25 = mlir::UnknownLoc::get(Context, v19);
  v238 = mlir::SymbolRefAttr::get(*(a1 + 136), v26);
  Value = mlir::AffineMapAttr::getValue(&v238);
  Value = mlir::OpaqueAttr::getAttrData(&Value);
  v250 = v27;
  FunctionType = mlir::func::FuncOp::getFunctionType(&v186);
  v185 = mlir::OpBuilder::create<mlir::func::FuncOp,llvm::StringRef const&,mlir::FunctionType &>(v187, v25, &Value, &FunctionType);
  v28 = mlir::detail::FunctionOpInterfaceTrait<mlir::func::FuncOp>::addEntryBlock(&v185);
  v171 = *(v28 + 5);
  if (!v188)
  {
    v188 = 0uLL;
  }

  v181 = 0;
  v182 = 0;
  v183 = 0;
  v184 = 0;
  v30 = *(v186 + 40);
  v29 = *(v186 + 44);
  v178 = 0;
  v177[0] = 0;
  v177[1] = 0;
  v179 = 0;
  v180 = 0;
  v31 = (((v186 + 16 * ((v29 >> 23) & 1) + ((v29 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * v30);
  if (*v31 != v31)
  {
    v32 = v31[1];
    v33 = v32 ? v32 - 8 : 0;
    v34 = *(v33 + 48);
    for (i = *(v33 + 56); v34 != i; *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](v177, &Value) = v37)
    {
      v36 = *v34++;
      v37 = *(*(v28 + 6) + 8 * v36[6]);
      Value = v36;
    }
  }

  v38 = *(((&v163[4 * ((a2[11] >> 23) & 1) + 1] + ((a2[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a2[10] + 8);
  v168 = v38 - 8;
  if (v38)
  {
    v39 = v38 - 8;
  }

  else
  {
    v39 = 0;
  }

  v40 = *(v39 + 40);
  *&v188 = v39;
  *(&v188 + 1) = v40;
  v167 = v40;
  v196 = v198;
  v197 = 0x200000000;
  if (!v218)
  {
    goto LABEL_266;
  }

  v41 = 0;
  v42 = v217;
  v166 = v217 + 64 * v218;
  v164 = a3 - 8;
  v43 = &v227;
  while (1)
  {
    v173 = v28;
    v174 = v41;
    LODWORD(v212) = 0;
    LODWORD(v209) = 0;
    LODWORD(v206) = 0;
    LODWORD(v203) = 0;
    LODWORD(v200) = 0;
    v44 = *v42;
    v45 = *(v42 + 2);
    v238 = &v240;
    v239 = 0x600000000;
    if (v45 >= 7)
    {
      break;
    }

    if (v45)
    {
      v46 = v42;
      v47 = 0;
      v48 = &v240;
      goto LABEL_40;
    }

    v49 = 0;
    v50 = &v240;
LABEL_41:
    FunctionType = &v227;
    v51 = v49 + v45;
    LODWORD(v239) = v51;
    v172 = v42;
    *(a1 + 152) = *(v42 + 2);
    v226 = 0x600000000;
    if (v51)
    {
      v52 = &v50[v51];
      do
      {
        v53 = *v50;
        if ((*(*v50 + 46) & 0x80) != 0)
        {
          v54 = *(v53 + 68);
          if (v54)
          {
            v55 = *(v53 + 72);
            v56 = 32 * v54;
            do
            {
              Value = *(v55 + 24);
              DefiningOp = mlir::Value::getDefiningOp(&Value);
              if (DefiningOp)
              {
                {
                  v62 = DefiningOp;
                  DefiningOp = v62;
                }

                if ((*(**(DefiningOp + 48) + 32))(*(DefiningOp + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
                {
                  v59 = *(v53 + 16);
                  v60 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v53, v58);
                  *&v188 = v59;
                  *(&v188 + 1) = v60;
                  Value = *(v55 + 24);
                  v61 = mlir::Value::getDefiningOp(&Value);
                  mlir::OpBuilder::clone(v187, v61);
                }
              }

              v55 += 32;
              v56 -= 32;
            }

            while (v56);
          }
        }

        ++v50;
      }

      while (v50 != v52);
      v50 = v238;
      v43 = FunctionType;
      v63 = v226;
    }

    else
    {
      v63 = 0;
    }

    llvm::SmallVectorImpl<long long>::insert<long long const*,void>(&v238, v50, v43, &v43[v63]);
    v64 = *(v214 + v174);
    if (v64)
    {
      v190 = *(v164 + 8 * v64);
      Value = v238;
      v264 = (v238 + 8 * v239);
      llvm::detail::DenseSetImpl<mlir::Operation *,llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,llvm::DenseMapInfo<mlir::Operation *,void>>::DenseSetImpl<mlir::Operation **>(&p_FunctionType, &Value, &v264);
      mlir::collect_regions::detail::buildLiveInsLiveOuts(&v211, &v208, &v199, &v238, &p_FunctionType, 0);
      if (v173)
      {
        *&v188 = v173;
        *(&v188 + 1) = v171;
      }

      else
      {
        v188 = 0uLL;
      }

      v264 = &v266;
      v265 = 0x600000000;
      do
      {
        LOBYTE(v193) = 0;
        Value = &v211;
        v250 = v187;
        v251 = v177;
        v252 = &v208;
        v253 = &v264;
        v254[0] = &v193;
        v66 = v238;
        v67 = (v238 + 8 * v239);
        if (v239)
        {
          v68 = 8 * v239;
          do
          {
            {
              goto LABEL_69;
            }

            ++v66;
            v68 -= 8;
          }

          while (v68);
          v66 = v67;
        }

        else
        {
LABEL_69:
          v69 = v66 + 1;
          if (v66 != v67 && v69 != v67)
          {
            do
            {
              {
                *v66++ = *v69;
              }

              ++v69;
            }

            while (v69 != v67);
          }
        }

        v71 = (v66 - v238) >> 3;
        LODWORD(v239) = v71;
        if (v193 != 1)
        {
          goto LABEL_106;
        }

        v72 = v221;
        if (v221)
        {
          v73 = v223;
          if (v223)
          {
            v74 = 8 * v223;
            v75 = p_FunctionType;
            while ((*v75 | 0x1000) == 0xFFFFFFFFFFFFF000)
            {
              v75 = (v75 + 8);
              v74 -= 8;
              if (!v74)
              {
                goto LABEL_63;
              }
            }
          }

          else
          {
            v75 = p_FunctionType;
          }

          v76 = (p_FunctionType + 8 * v223);
          if (v75 != v76)
          {
            v77 = ((v66 - v238) >> 3);
            v78 = v223 - 1;
            v79 = v222;
            do
            {
              v80 = *v75;
              if (v71)
              {
                v81 = 8 * v77;
                v82 = v238;
                while (*v82 != v80)
                {
                  ++v82;
                  v81 -= 8;
                  if (!v81)
                  {
                    goto LABEL_94;
                  }
                }
              }

              else
              {
                v82 = v238;
              }

              if (v82 != (v238 + 8 * v77))
              {
                goto LABEL_97;
              }

LABEL_94:
              if (!v73)
              {
                goto LABEL_97;
              }

              v83 = ((v80 >> 4) ^ (v80 >> 9)) & v78;
              v84 = *(p_FunctionType + v83);
              if (v80 == v84)
              {
LABEL_96:
                *(p_FunctionType + v83) = -8192;
                --v72;
                ++v79;
                v221 = v72;
                v222 = v79;
                goto LABEL_97;
              }

              v85 = 1;
              while (v84 != -4096)
              {
                v86 = v83 + v85++;
                v83 = v86 & v78;
                v84 = *(p_FunctionType + v83);
                if (v80 == v84)
                {
                  goto LABEL_96;
                }
              }

              do
              {
LABEL_97:
                v75 = (v75 + 8);
                if (v75 == v76)
                {
                  goto LABEL_63;
                }
              }

              while ((*v75 | 0x1000) == 0xFFFFFFFFFFFFF000);
            }

            while (v75 != v76);
          }
        }

LABEL_63:
        mlir::collect_regions::detail::buildLiveInsLiveOuts(&v211, &v208, &v199, &v238, &p_FunctionType, 0);
      }

      while ((v193 & 1) != 0);
      LODWORD(v71) = v239;
LABEL_106:
      if (v71)
      {
        v87 = *(((&v163[4 * ((a2[11] >> 23) & 1) + 1] + ((a2[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a2[10] + 8);
        if (v87)
        {
          v88 = v87 - 8;
        }

        else
        {
          v88 = 0;
        }

        v89 = *(v88 + 40);
        *&v188 = v88;
        *(&v188 + 1) = v89;
        v90 = v190;
        mlir::ValueRange::ValueRange(&Value, v211, v212);
        if ((**v90)(v90, Value, v250, &v205))
        {
          v91 = v190;
          mlir::ValueRange::ValueRange(&Value, v208, v209);
          if ((**v91)(v91, Value, v250, &v202))
          {
            v250 = 0;
            Value = 0;
            LODWORD(v251) = 0;
            v252 = 0;
            v253 = 0;
            LODWORD(v254[0]) = 0;
            v254[1] = 0;
            v254[2] = 0;
            v255 = 0;
            mlir::Builder::getFusedLoc(v187, v199, v200, 0);
          }
        }
      }

      else if (v265)
      {
        v92 = (v264 + 8 * v265);
        do
        {
          v93 = *(v92 - 1);
          v92 = (v92 - 8);
          mlir::OpBuilder::clone(v187, v93, v177);
        }

        while (v92 != v264);
      }

      if (v264 != &v266)
      {
        free(v264);
      }

      llvm::deallocate_buffer(p_FunctionType, (8 * v223));
    }

    v28 = v173;
    if (v173)
    {
      *&v188 = v173;
      *(&v188 + 1) = v171;
      v65 = v239;
      if (v239)
      {
        goto LABEL_120;
      }
    }

    else
    {
      v171 = 0;
      v188 = 0uLL;
      v65 = v239;
      if (v239)
      {
LABEL_120:
        v94 = v238;
        v95 = 8 * v65;
        do
        {
          v96 = *v94++;
          mlir::OpBuilder::clone(v187, v96, v177);
          v95 -= 8;
        }

        while (v95);
        v171 = *(&v188 + 1);
        v28 = v188;
      }
    }

    if (FunctionType != &v227)
    {
      free(FunctionType);
    }

    if (v238 != &v240)
    {
      free(v238);
    }

    *&v188 = v168;
    *(&v188 + 1) = v167;
    v41 = (v174 + 1);
    v42 = v172 + 8;
    v43 = &v227;
    if (v172 + 8 == v166)
    {
      if (v197)
      {
        v97 = *(v196 + 2);
        *v175 = *v196;
        v278 = *v196;
        v192 = v97;
        v193 = &v195;
        v275 = &v277;
        v276 = 0x100000000;
        v273 = &v275;
        v274 = 0;
        v190 = &v192;
        v191 = 0;
        v194 = 0x500000000;
        v265 = 0;
        v264 = 0;
        v266 = 0;
        v267 = 0;
        v268 = 0;
        v269 = 0;
        v270 = 0;
        v271 = 0;
        v272 = 0;
        FunctionType = v187;
        v226 = &v192;
        v227 = &v264;
        p_FunctionType = &FunctionType;
        if (!mlir::detail::walk<mlir::ForwardIterator>(a2, _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_12_GLOBAL__N_114legalizeRegionENS1_8ModuleOpENS1_24TargetLegalizerInterfaceERNS1_9OpBuilderEPNS1_15DeviceInterfaceEE3__0NS1_9placement12HostTypeCastES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueEST_E4typeES4_OT1_EUlS4_E_EES2_lS4_, &p_FunctionType, 1))
        {
          goto LABEL_261;
        }

        mlir::SymbolTable::getSymbolUses(v175[0], a2, &v262);
        if ((v263 & 1) == 0)
        {
          FunctionType = "Operation has no symbol table uses";
          LOWORD(v229) = 259;
          mlir::OpState::emitOpError(&v278, &FunctionType, &Value);
          if (Value)
          {
            mlir::InFlightDiagnostic::report(&Value);
          }

          if (v261 != 1)
          {
            goto LABEL_258;
          }

          if (v260 != &v261)
          {
            free(v260);
          }

          v102 = __p;
          if (__p)
          {
            v103 = v259;
            v104 = __p;
            if (v259 != __p)
            {
              do
              {
                v103 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v103 - 1);
              }

              while (v103 != v102);
              v104 = __p;
            }

            v259 = v102;
            operator delete(v104);
          }

          v105 = v256;
          if (v256)
          {
            v106 = v257;
            v107 = v256;
            if (v257 != v256)
            {
              do
              {
                v109 = *--v106;
                v108 = v109;
                *v106 = 0;
                if (v109)
                {
                  operator delete[](v108);
                }
              }

              while (v106 != v105);
              v107 = v256;
            }

            v257 = v105;
            operator delete(v107);
          }

          v118 = v252;
          v119 = v254;
          goto LABEL_256;
        }

        ArgOperands = mlir::CallOpInterface::getArgOperands(&v278);
        LODWORD(v276) = 0;
        if ((v263 & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:nn200100]();
        }

        size = v262.__r_.__value_.__l.__size_;
        v98 = v262.__r_.__value_.__r.__words[0];
        for (j = 0; v98 != size; v98 += 16)
        {
          v101 = *v98;
          if (*(*(*v98 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::placement::ReplacedOps,void>::id)
          {
            if (j >= HIDWORD(v276))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v275, &v277, j + 1, 8);
              j = v276;
            }

            v275[j] = v101;
            j = v276 + 1;
            LODWORD(v276) = v276 + 1;
          }
        }

        if (!v265)
        {
LABEL_176:
          v189 = mlir::TargetLegalizerInterface::legalizeRegionBody(&v278, v187, v275, j, v192, &v264);
          if (v189)
          {
            mlir::TargetLegalizerInterface::getBodyBlock(&v278);
            if (!v276)
            {
              goto LABEL_206;
            }

            v121 = v275;
            v122 = &v275[v276];
            v169 = v122;
            while (1)
            {
              v123 = *v121;
              LODWORD(v194) = 0;
              v124 = v123[9];
              if (v124)
              {
                v125 = (v123 - 4);
              }

              else
              {
                v125 = 0;
              }

              if (!v124)
              {
                goto LABEL_205;
              }

              v126 = 0;
              for (k = 0; k != v124; ++k)
              {
                NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v125, k);
                v129 = NextResultAtOffset;
                if (!v266)
                {
                  goto LABEL_208;
                }

                v130 = 0x9DDFEA08EB382D69 * ((8 * NextResultAtOffset - 0xAE502812AA7333) ^ HIDWORD(NextResultAtOffset));
                v131 = 0x9DDFEA08EB382D69 * (HIDWORD(NextResultAtOffset) ^ (v130 >> 47) ^ v130);
                v132 = (-348639895 * ((v131 >> 47) ^ v131)) & (v266 - 1);
                v133 = *(v264 + 2 * v132);
                if (v133 != NextResultAtOffset)
                {
                  v139 = 1;
                  while (v133 != -4096)
                  {
                    v140 = v132 + v139++;
                    v132 = v140 & (v266 - 1);
                    v133 = *(v264 + 2 * v132);
                    if (v133 == NextResultAtOffset)
                    {
                      goto LABEL_188;
                    }
                  }

LABEL_208:
                  p_FunctionType = "Result has no mapping in the valueMap (result #";
                  v224 = 259;
                  mlir::Operation::emitOpError(v123, &p_FunctionType, &FunctionType);
                  v141 = *(v129 + 8) & 7;
                  if (v129 && v141 == 6)
                  {
                    v141 = (*(v129 + 16) + 6);
                  }

                  if (FunctionType)
                  {
                    LODWORD(v279[0]) = 5;
                    v279[1] = v141;
                    v150 = v228;
                    if (v229 >= v230)
                    {
                      if (v228 <= v279 && v228 + 24 * v229 > v279)
                      {
                        v162 = v279 - v228;
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v228, v231, v229 + 1, 24);
                        v150 = v228;
                        v151 = v228 + v162;
                      }

                      else
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod(&v228, v231, v229 + 1, 24);
                        v151 = v279;
                        v150 = v228;
                      }
                    }

                    else
                    {
                      v151 = v279;
                    }

                    v152 = &v150[24 * v229];
                    v153 = *v151;
                    *(v152 + 2) = *(v151 + 2);
                    *v152 = v153;
                    ++v229;
                  }

                  mlir::InFlightDiagnostic::operator<<<char const(&)[44]>(&FunctionType, ")");
                  if (FunctionType)
                  {
                    mlir::InFlightDiagnostic::report(&FunctionType);
                  }

                  if (v237)
                  {
                    if (v236 != &v237)
                    {
                      free(v236);
                    }

                    v154 = v234;
                    if (v234)
                    {
                      v155 = v235;
                      v156 = v234;
                      if (v235 != v234)
                      {
                        do
                        {
                          v155 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v155 - 1);
                        }

                        while (v155 != v154);
                        v156 = v234;
                      }

                      v235 = v154;
                      operator delete(v156);
                    }

                    v157 = v232;
                    if (v232)
                    {
                      v158 = v233;
                      v159 = v232;
                      if (v233 != v232)
                      {
                        do
                        {
                          v161 = *--v158;
                          v160 = v161;
                          *v158 = 0;
                          if (v161)
                          {
                            operator delete[](v160);
                          }
                        }

                        while (v158 != v157);
                        v159 = v232;
                      }

                      v233 = v157;
                      operator delete(v159);
                    }

                    if (v228 != v231)
                    {
                      free(v228);
                    }
                  }

LABEL_258:
                  if (v263 == 1 && v262.__r_.__value_.__r.__words[0])
                  {
                    v262.__r_.__value_.__l.__size_ = v262.__r_.__value_.__r.__words[0];
                    operator delete(v262.__r_.__value_.__l.__data_);
                  }

LABEL_261:
                  llvm::deallocate_buffer(v270, (16 * v272));
                }

LABEL_188:
                if (v132 == v266)
                {
                  goto LABEL_208;
                }

                v134 = *(v264 + 2 * v132 + 1);
                if (!v134)
                {
                  goto LABEL_208;
                }

                if (v134 != NextResultAtOffset)
                {
                  while (1)
                  {
                    v135 = *NextResultAtOffset;
                    if (!*NextResultAtOffset)
                    {
                      break;
                    }

                    v136 = v135[1];
                    if (v136)
                    {
                      v137 = *v135;
                      *v136 = *v135;
                      if (v137)
                      {
                        *(v137 + 8) = v135[1];
                      }
                    }

                    v135[3] = v134;
                    v135[1] = v134;
                    v138 = *v134;
                    *v135 = *v134;
                    if (v138)
                    {
                      *(v138 + 8) = v135;
                    }

                    *v134 = v135;
                  }

                  v126 = 1;
                }
              }

              v122 = v169;
              if (v126)
              {
                mlir::Operation::erase(v123);
                v122 = v169;
              }

LABEL_205:
              if (++v121 == v122)
              {
LABEL_206:
                if (v189 != ArgOperands)
                {
                  mlir::Operation::cloneWithoutRegions(v278);
                }

                goto LABEL_258;
              }
            }
          }

          FunctionType = "Legalization failed";
          LOWORD(v229) = 259;
          mlir::OpState::emitOpError(&v278, &FunctionType, &v238);
          if (v238)
          {
            mlir::InFlightDiagnostic::report(&v238);
          }

          if (v248 != 1)
          {
            goto LABEL_258;
          }

          if (v247 != &v248)
          {
            free(v247);
          }

          v142 = v245;
          if (v245)
          {
            v143 = v246;
            v144 = v245;
            if (v246 != v245)
            {
              do
              {
                v143 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v143 - 1);
              }

              while (v143 != v142);
              v144 = v245;
            }

            v246 = v142;
            operator delete(v144);
          }

          v145 = v243;
          if (v243)
          {
            v146 = v244;
            v147 = v243;
            if (v244 != v243)
            {
              do
              {
                v149 = *--v146;
                v148 = v149;
                *v146 = 0;
                if (v149)
                {
                  operator delete[](v148);
                }
              }

              while (v146 != v145);
              v147 = v243;
            }

            v244 = v145;
            operator delete(v147);
          }

          v118 = v241;
          v119 = &v242;
LABEL_256:
          if (v118 != v119)
          {
            free(v118);
          }

          goto LABEL_258;
        }

        v110 = v266;
        if (v266 > 4 * v265 && v266 >= 0x41)
        {
          llvm::DenseMap<void *,mlir::Type,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseMapPair<void *,mlir::Type>>::shrink_and_clear(&v264);
          j = v276;
          goto LABEL_176;
        }

        if (v266)
        {
          v111 = v264;
          v112 = (v266 - 1) & 0xFFFFFFFFFFFFFFFLL;
          if (v112)
          {
            v113 = v112 + 1;
            v114 = (v112 + 1) & 0x1FFFFFFFFFFFFFFELL;
            v115 = (v264 + 16 * v114);
            v116 = (v264 + 16);
            v117 = v114;
            do
            {
              *(v116 - 2) = -4096;
              *v116 = -4096;
              v116 += 4;
              v117 -= 2;
            }

            while (v117);
            if (v113 == v114)
            {
              goto LABEL_175;
            }
          }

          else
          {
            v115 = v264;
          }

          v120 = (v111 + 16 * v110);
          do
          {
            *v115 = -4096;
            v115 = (v115 + 16);
          }

          while (v115 != v120);
        }

LABEL_175:
        v265 = 0;
        goto LABEL_176;
      }

LABEL_266:
      if (v196 != v198)
      {
        free(v196);
      }

      llvm::deallocate_buffer(v182, (16 * v184));
    }
  }

  v46 = v42;
  llvm::SmallVectorBase<unsigned int>::grow_pod(&v238, &v240, v45, 8);
  v47 = v239;
  v48 = v238;
LABEL_40:
  memcpy(&v48[v47], v44, 8 * v45);
  v49 = v239;
  v50 = v238;
  v42 = v46;
  v43 = &v227;
  goto LABEL_41;
}

void llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::anonymous namespace::PlacementState::PlacementState(long long,mlir::func::FuncOp)::{lambda(mlir::Operation *)#1}>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  if (v3 >= *(*a1 + 84))
  {
    v4 = a2;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v2 + 72, v2 + 88, v3 + 1, 8);
    a2 = v4;
    LODWORD(v3) = *(v2 + 80);
  }

  *(*(v2 + 72) + 8 * v3) = a2;
  ++*(v2 + 80);
}

uint64_t mlir::anonymous namespace::eraseTypeChangers(llvm::SmallVectorImpl<mlir::Operation *> &,llvm::SmallVectorImpl<mlir::Value> &,llvm::SmallVectorImpl<mlir::Value> &,llvm::SmallVectorImpl<mlir::Location> &,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>> &,llvm::SmallVector<mlir::Operation *,6u> &,mlir::OpBuilder &,mlir::IRMapping &)::$_0::operator()(uint64_t *a1, uint64_t a2)
{
  {
  }

  if ((*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::TypeChanger<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::TypeChanger>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    goto LABEL_45;
  }

  {
    mlir::detail::constant_op_binder<mlir::ElementsAttr>::match();
  }

  result = (*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id);
  if (result)
  {
LABEL_45:
    if ((*(a2 + 46) & 0x80) != 0 && (v5 = *(a2 + 68), v5))
    {
      v6 = 0;
      v7 = *(a2 + 72);
      v8 = *a1;
      while (1)
      {
        v10 = *(v7 + 32 * v6 + 24);
        v26 = v10;
        DefiningOp = mlir::Value::getDefiningOp(&v26);
        if (!DefiningOp)
        {
          goto LABEL_11;
        }

        {
          v25 = DefiningOp;
          DefiningOp = v25;
        }

        if (((*(**(DefiningOp + 48) + 32))(*(DefiningOp + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
        {
LABEL_11:
          v12 = *(v8 + 8);
          if (v12)
          {
            v13 = 8 * v12;
            v9 = *v8;
            while (*v9 != v10)
            {
              ++v9;
              v13 -= 8;
              if (!v13)
              {
                goto LABEL_21;
              }
            }
          }

          else
          {
            v9 = *v8;
          }

          if (v9 == (*v8 + 8 * v12))
          {
            break;
          }
        }

        if (++v6 == v5)
        {
          goto LABEL_22;
        }
      }

LABEL_21:
      v14 = 0;
    }

    else
    {
LABEL_22:
      mlir::OpBuilder::clone(a1[1], a2, a1[2]);
      v14 = 1;
    }

    v15 = *(a2 + 36);
    if (v15)
    {
      v16 = a2 - 16;
    }

    else
    {
      v16 = 0;
    }

    if (v15)
    {
      v17 = 0;
      v18 = a1[3];
      while (1)
      {
        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17);
        v20 = *(v18 + 8);
        if (v20)
        {
          v21 = 8 * v20;
          v22 = *v18;
          while (*v22 != NextResultAtOffset)
          {
            ++v22;
            v21 -= 8;
            if (!v21)
            {
              goto LABEL_39;
            }
          }
        }

        else
        {
          v22 = *v18;
        }

        if (v22 == (*v18 + 8 * v20))
        {
          break;
        }

        if (++v17 == v15)
        {
          goto LABEL_36;
        }
      }

LABEL_39:
      {
      }

      result = v14 & (*(**(a2 + 48) + 32))(*(a2 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::TypeChanger<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::TypeChanger>(void)::Empty>,void>::resolveTypeID(void)::id);
    }

    else
    {
LABEL_36:
      v23 = a1[4];
      v24 = *(v23 + 8);
      if (v24 >= *(v23 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1[4], v23 + 16, v24 + 1, 8);
        LODWORD(v24) = *(v23 + 8);
      }

      *(*v23 + 8 * v24) = a2;
      ++*(v23 + 8);
      result = 1;
    }

    *a1[5] |= result;
  }

  return result;
}

uint64_t llvm::SmallVectorTemplateBase<std::pair<mlir::TargetLegalizerInterface,mlir::DeviceInterface *>,true>::growAndEmplaceBack<mlir::TargetLegalizerInterface,mlir::DeviceInterface *&>(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  v12 = *a2;
  v13 = *a3;
  v3 = *(a1 + 8);
  v4 = *a1;
  v5 = &v12;
  if (v3 >= *(a1 + 12))
  {
    if (v4 <= &v12 && v4 + 24 * v3 > &v12)
    {
      v10 = &v12 - v4;
      v11 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v3 + 1, 24);
      a1 = v11;
      v4 = *v11;
      v5 = &v10[*v11];
    }

    else
    {
      v9 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v3 + 1, 24);
      a1 = v9;
      v4 = *v9;
      v5 = &v12;
    }
  }

  v6 = v4 + 24 * *(a1 + 8);
  v7 = *v5;
  *(v6 + 16) = *(v5 + 2);
  *v6 = v7;
  LODWORD(v6) = *(a1 + 8) + 1;
  *(a1 + 8) = v6;
  return *a1 + 24 * v6 - 24;
}

uint64_t mlir::OpInterface<mlir::TargetLegalizerInterface,mlir::detail::TargetLegalizerInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v7 = *(v1 + 8);
    result = mlir::SparseElementsAttr::getValues(&v7);
    if (result)
    {
      {
        v6 = result;
        mlir::OpInterface<mlir::TargetLegalizerInterface,mlir::detail::TargetLegalizerInterfaceInterfaceTraits>::getInterfaceFor();
        result = v6;
      }

      return (*(*result + 104))(result, mlir::detail::TypeIDResolver<mlir::TargetLegalizerInterface,void>::resolveTypeID(void)::id, v1);
    }
  }

  else
  {
    result = mlir::detail::InterfaceMap::lookup<mlir::TargetLegalizerInterface>(v1 + 32);
    if (!result)
    {
      v3 = *(v1 + 24);
      {
        v5 = v3;
        mlir::OpInterface<mlir::TargetLegalizerInterface,mlir::detail::TargetLegalizerInterfaceInterfaceTraits>::getInterfaceFor();
        v3 = v5;
      }

      v4 = *(*v3 + 104);

      return v4();
    }
  }

  return result;
}

uint64_t mlir::detail::InterfaceMap::lookup<mlir::TargetLegalizerInterface>(uint64_t a1)
{
  {
    v9 = a1;
    mlir::OpInterface<mlir::TargetLegalizerInterface,mlir::detail::TargetLegalizerInterfaceInterfaceTraits>::getInterfaceFor();
    a1 = v9;
  }

  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *a1;
    v3 = *(a1 + 8);
    do
    {
      v4 = v3 >> 1;
      v5 = &v2[2 * (v3 >> 1)];
      v7 = *v5;
      v6 = v5 + 2;
      v3 += ~(v3 >> 1);
      if (v7 < mlir::detail::TypeIDResolver<mlir::TargetLegalizerInterface,void>::resolveTypeID(void)::id)
      {
        v2 = v6;
      }

      else
      {
        v3 = v4;
      }
    }

    while (v3);
  }

  else
  {
    v1 = 0;
    v2 = *a1;
  }

  if (v2 != (*a1 + 16 * v1) && *v2 == mlir::detail::TypeIDResolver<mlir::TargetLegalizerInterface,void>::resolveTypeID(void)::id)
  {
    return v2[1];
  }

  else
  {
    return 0;
  }
}

const char *llvm::getTypeName<mlir::TargetLegalizerInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::TargetLegalizerInterface]";
  v6 = 80;
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

uint64_t _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_12_GLOBAL__N_114legalizeRegionENS1_8ModuleOpENS1_24TargetLegalizerInterfaceERNS1_9OpBuilderEPNS1_15DeviceInterfaceEE3__0NS1_9placement12HostTypeCastES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueEST_E4typeES4_OT1_EUlS4_E_EES2_lS4_(uint64_t **a1, uint64_t a2)
{
  result = 1;
  if (a2 && *(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::HostTypeCast,void>::id)
  {
    v5 = *a1;
    v6 = **a1;
    v7 = (v6 + 16);
    v31 = *(v6 + 16);
    v8 = *(a2 + 16);
    v9 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(a2, a2);
    *(v6 + 16) = v8;
    *(v6 + 24) = v9;
    v10 = *v5;
    v11 = *v5[1];
    v12 = *(a2 + 24);
    v13 = *(*(a2 + 72) + 24);
    if (*(a2 + 36))
    {
      v14 = a2 - 16;
    }

    else
    {
      v14 = 0;
    }

    v15 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v15)
    {
      v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
    }

    else
    {
      v16 = 0;
    }

    if (((*(*v11 + 24))(v11, v10, v12, v13, v15, v16, v5[2]) & 1) == 0)
    {
      result = 0;
      v28 = v31;
      if (v31)
      {
        goto LABEL_19;
      }

LABEL_21:
      *v7 = 0;
      *(v6 + 24) = 0;
      return result;
    }

    v17 = v5[2];
    v18 = *(*(a2 + 72) + 24);
    v19 = *(v17 + 4);
    if (v19)
    {
      v20 = *v17;
      v21 = 0x9DDFEA08EB382D69 * ((8 * *(*(a2 + 72) + 24) - 0xAE502812AA7333) ^ HIDWORD(*(*(a2 + 72) + 24)));
      v22 = 0x9DDFEA08EB382D69 * (HIDWORD(v18) ^ (v21 >> 47) ^ v21);
      v23 = (-348639895 * ((v22 >> 47) ^ v22)) & (v19 - 1);
      v24 = *(v20 + 16 * v23);
      if (v24 == v18)
      {
LABEL_12:
        if (v23 != v19)
        {
          v18 = *(v20 + 16 * v23 + 8);
        }
      }

      else
      {
        v29 = 1;
        while (v24 != -4096)
        {
          v30 = v23 + v29++;
          v23 = v30 & (v19 - 1);
          v24 = *(v20 + 16 * v23);
          if (v24 == v18)
          {
            goto LABEL_12;
          }
        }
      }
    }

    v32 = v18;
    DefiningOp = mlir::Value::getDefiningOp(&v32);
    v26 = *(a2 + 36);
    if (v26)
    {
      v27 = a2 - 16;
    }

    else
    {
      v27 = 0;
    }

    v33[0] = v27;
    v33[1] = v26;
    mlir::ResultRange::replaceAllUsesWith(v33, DefiningOp);
    mlir::Operation::erase(a2);
    result = 1;
    v28 = v31;
    if (v6)
    {
      if (v31)
      {
LABEL_19:
        *v7 = v28;
        return result;
      }

      goto LABEL_21;
    }
  }

  return result;
}

uint64_t llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::anonymous namespace::legalizeRegion(mlir::ModuleOp,mlir::TargetLegalizerInterface,mlir::OpBuilder &,mlir::DeviceInterface *)::$_1>(uint64_t a1, mlir::Operation *a2)
{
  result = mlir::OpInterface<mlir::TargetLegalizerInterface,mlir::detail::TargetLegalizerInterfaceInterfaceTraits>::getInterfaceFor(a2);
  if (!result)
  {
    v5 = *a1;
    v6 = *(a1 + 8);

    return mlir::OpBuilder::clone(v5, a2, v6);
  }

  return result;
}

const char *llvm::getTypeName<mlir::OpTrait::RegionOp<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::RegionOp>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::RegionOp<Empty>]";
  v6 = 80;
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

uint64_t *std::__introsort<std::_ClassicAlgPolicy,mlir::collect_regions::detail::buildLiveInsLiveOuts(llvm::SmallVectorImpl<mlir::Value> &,llvm::SmallVectorImpl<mlir::Value> &,llvm::SmallVectorImpl<mlir::Location> &,llvm::SmallVectorImpl<mlir::Operation *> const&,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>> const&,BOOL)::$_2 &,mlir::Value*,false>(uint64_t *result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
  while (2)
  {
    v8 = v7;
    while (1)
    {
      while (1)
      {
        v7 = v8;
        v9 = a2 - v8;
        if (v9 > 2)
        {
          switch(v9)
          {
            case 3:
              v79 = *v8;
              v80 = v8[1];
              v81 = *(v80 + 24);
              v82 = *(*v8 + 24);
              v83 = *(a2 - 1);
              v84 = *(v83 + 24);
              if (v81 >= v82)
              {
                if (v84 < v81)
                {
                  v8[1] = v83;
                  *(a2 - 1) = v80;
                  v131 = *v8;
                  v130 = v8[1];
                  if (*(v130 + 24) < *(*v8 + 24))
                  {
                    *v8 = v130;
                    v8[1] = v131;
                  }
                }
              }

              else if (v84 >= v81)
              {
                *v8 = v80;
                v8[1] = v79;
                v137 = *(a2 - 1);
                if (*(v137 + 24) < v82)
                {
                  v8[1] = v137;
                  *(a2 - 1) = v79;
                }
              }

              else
              {
                *v8 = v83;
                *(a2 - 1) = v79;
              }

              return result;
            case 4:
              v85 = v8 + 1;
              v86 = v8[1];
              v87 = v8 + 2;
              v88 = v8[2];
              v89 = *(v86 + 24);
              v90 = *v8;
              v91 = *(*v8 + 24);
              v92 = *(v88 + 24);
              if (v89 >= v91)
              {
                if (v92 < v89)
                {
                  *v85 = v88;
                  *v87 = v86;
                  if (v92 < v91)
                  {
                    *v8 = v88;
                    v132 = v8 + 1;
                    goto LABEL_184;
                  }

LABEL_185:
                  v88 = v86;
                }
              }

              else
              {
                if (v92 < v89)
                {
                  *v8 = v88;
                  goto LABEL_183;
                }

                *v8 = v86;
                v8[1] = v90;
                if (v92 < v91)
                {
                  *v85 = v88;
LABEL_183:
                  v132 = v8 + 2;
                  v86 = v90;
LABEL_184:
                  *v132 = v90;
                  goto LABEL_185;
                }
              }

              v138 = *(a2 - 1);
              if (*(v138 + 24) < *(v88 + 24))
              {
                *v87 = v138;
                *(a2 - 1) = v88;
                v139 = *v87;
                v140 = *(v139 + 24);
                v141 = *v85;
                if (v140 < *(v141 + 24))
                {
                  v8[1] = v139;
                  v8[2] = v141;
                  v142 = *v8;
                  if (v140 < *(*v8 + 24))
                  {
                    *v8 = v139;
                    v8[1] = v142;
                  }
                }
              }

              return result;
            case 5:

              return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,mlir::collect_regions::detail::buildLiveInsLiveOuts(llvm::SmallVectorImpl<mlir::Value> &,llvm::SmallVectorImpl<mlir::Value> &,llvm::SmallVectorImpl<mlir::Location> &,llvm::SmallVectorImpl<mlir::Operation *> const&,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>> const&,BOOL)::$_2 &,mlir::Value*,0>(v8, v8 + 1, v8 + 2, v8 + 3, a2 - 1);
          }
        }

        else
        {
          if (v9 < 2)
          {
            return result;
          }

          if (v9 == 2)
          {
            v77 = *(a2 - 1);
            v78 = *v8;
            if (*(v77 + 24) < *(*v8 + 24))
            {
              *v8 = v77;
              *(a2 - 1) = v78;
            }

            return result;
          }
        }

        if (v9 <= 23)
        {
          v93 = v8 + 1;
          v95 = v8 == a2 || v93 == a2;
          if (a4)
          {
            if (!v95)
            {
              v96 = 0;
              v97 = v8;
              do
              {
                v100 = *v97;
                v99 = v97[1];
                v97 = v93;
                v101 = *(v99 + 24);
                if (v101 < *(v100 + 24))
                {
                  v102 = v96;
                  do
                  {
                    *(v8 + v102 + 8) = v100;
                    if (!v102)
                    {
                      v98 = v8;
                      goto LABEL_125;
                    }

                    v100 = *(v8 + v102 - 8);
                    v102 -= 8;
                  }

                  while (v101 < *(v100 + 24));
                  v98 = (v8 + v102 + 8);
LABEL_125:
                  *v98 = v99;
                }

                v93 = v97 + 1;
                v96 += 8;
              }

              while (v97 + 1 != a2);
            }
          }

          else if (!v95)
          {
            do
            {
              v134 = *v7;
              v133 = v7[1];
              v7 = v93;
              v135 = *(v133 + 24);
              if (v135 < *(v134 + 24))
              {
                v136 = v7;
                do
                {
                  *v136 = v134;
                  v134 = *(v136 - 2);
                  --v136;
                }

                while (v135 < *(v134 + 24));
                *v136 = v133;
              }

              v93 = v7 + 1;
            }

            while (v7 + 1 != a2);
          }

          return result;
        }

        if (!a3)
        {
          if (v8 != a2)
          {
            v103 = (v9 - 2) >> 1;
            v104 = v103;
            do
            {
              if (v103 >= v104)
              {
                v106 = (2 * (v104 & 0x1FFFFFFFFFFFFFFFLL)) | 1;
                v107 = &v8[v106];
                if (2 * (v104 & 0x1FFFFFFFFFFFFFFFLL) + 2 >= v9)
                {
                  v108 = *v107;
                }

                else
                {
                  v108 = *v107;
                  result = *(v107[1] + 24);
                  if (*(*v107 + 24) < result)
                  {
                    v108 = v107[1];
                    ++v107;
                    v106 = 2 * (v104 & 0x1FFFFFFFFFFFFFFFLL) + 2;
                  }
                }

                v109 = &v8[v104];
                v110 = *(v108 + 24);
                v111 = *v109;
                v112 = *(*v109 + 24);
                if (v110 >= v112)
                {
                  v113 = *v107;
                  do
                  {
                    *v109 = v113;
                    v109 = v107;
                    if (v103 < v106)
                    {
                      break;
                    }

                    v114 = (2 * v106) | 1;
                    v107 = &v8[v114];
                    v106 = 2 * v106 + 2;
                    if (v106 < v9)
                    {
                      v113 = *v107;
                      result = v107 + 1;
                      if (*(*v107 + 24) >= *(v107[1] + 24))
                      {
                        v106 = v114;
                      }

                      else
                      {
                        v113 = v107[1];
                        ++v107;
                      }
                    }

                    else
                    {
                      v113 = *v107;
                      v106 = v114;
                    }
                  }

                  while (*(v113 + 24) >= v112);
                  *v109 = v111;
                }
              }

              v105 = v104-- <= 0;
            }

            while (!v105);
            do
            {
              v115 = 0;
              v116 = *v8;
              v117 = v8;
              do
              {
                v121 = &v117[v115];
                v120 = v121 + 1;
                v122 = (2 * v115) | 1;
                v115 = 2 * v115 + 2;
                if (v115 < v9)
                {
                  v119 = v121[2];
                  v118 = v121 + 2;
                  if (*(*(v118 - 1) + 24) >= *(v119 + 24))
                  {
                    v115 = v122;
                  }

                  else
                  {
                    v120 = v118;
                  }
                }

                else
                {
                  v115 = v122;
                }

                *v117 = *v120;
                v117 = v120;
              }

              while (v115 <= ((v9 - 2) >> 1));
              if (v120 == --a2)
              {
                *v120 = v116;
              }

              else
              {
                *v120 = *a2;
                *a2 = v116;
                v123 = (v120 - v8 + 8) >> 3;
                v105 = v123 < 2;
                v124 = v123 - 2;
                if (!v105)
                {
                  v125 = v124 >> 1;
                  v126 = &v8[v125];
                  v127 = *v126;
                  v128 = *v120;
                  v129 = *(*v120 + 24);
                  if (*(*v126 + 24) < v129)
                  {
                    do
                    {
                      *v120 = v127;
                      v120 = v126;
                      if (!v125)
                      {
                        break;
                      }

                      v125 = (v125 - 1) >> 1;
                      v126 = &v8[v125];
                      v127 = *v126;
                    }

                    while (*(*v126 + 24) < v129);
                    *v120 = v128;
                  }
                }
              }

              v105 = v9-- <= 2;
            }

            while (!v105);
          }

          return result;
        }

        v10 = v9 >> 1;
        v11 = *(a2 - 1);
        v12 = *(v11 + 24);
        if (v9 < 0x81)
        {
          break;
        }

        v13 = v8[v10];
        v14 = *(v13 + 24);
        v15 = *v8;
        v16 = *(*v8 + 24);
        if (v14 >= v16)
        {
          if (v12 < v14)
          {
            v8[v10] = v11;
            *(a2 - 1) = v13;
            v21 = v8[v10];
            v22 = *v8;
            if (*(v21 + 24) < *(*v8 + 24))
            {
              *v8 = v21;
              v8[v10] = v22;
            }
          }
        }

        else
        {
          if (v12 >= v14)
          {
            *v8 = v13;
            v8[v10] = v15;
            v24 = *(a2 - 1);
            if (*(v24 + 24) >= v16)
            {
              goto LABEL_29;
            }

            v8[v10] = v24;
          }

          else
          {
            *v8 = v11;
          }

          *(a2 - 1) = v15;
        }

LABEL_29:
        v25 = v10 - 1;
        v26 = v8[v10 - 1];
        v27 = *(v26 + 24);
        v28 = v8[1];
        v29 = *(v28 + 24);
        v30 = *(a2 - 2);
        v31 = *(v30 + 24);
        if (v27 >= v29)
        {
          if (v31 < v27)
          {
            v8[v25] = v30;
            *(a2 - 2) = v26;
            v32 = v8[v25];
            v33 = v8[1];
            if (*(v32 + 24) < *(v33 + 24))
            {
              v8[1] = v32;
              v8[v25] = v33;
            }
          }
        }

        else
        {
          if (v31 >= v27)
          {
            v8[1] = v26;
            v8[v25] = v28;
            v37 = *(a2 - 2);
            if (*(v37 + 24) >= v29)
            {
              goto LABEL_43;
            }

            v8[v25] = v37;
          }

          else
          {
            v8[1] = v30;
          }

          *(a2 - 2) = v28;
        }

LABEL_43:
        v38 = v10 + 1;
        v39 = v8[v10 + 1];
        v40 = *(v39 + 24);
        v41 = v8[2];
        v42 = *(v41 + 24);
        v43 = *(a2 - 3);
        v44 = *(v43 + 24);
        if (v40 >= v42)
        {
          if (v44 < v40)
          {
            v8[v38] = v43;
            *(a2 - 3) = v39;
            v45 = v8[v38];
            v46 = v8[2];
            if (*(v45 + 24) < *(v46 + 24))
            {
              v8[2] = v45;
              v8[v38] = v46;
            }
          }
        }

        else
        {
          if (v44 >= v40)
          {
            v8[2] = v39;
            v8[v38] = v41;
            v47 = *(a2 - 3);
            if (*(v47 + 24) >= v42)
            {
              goto LABEL_52;
            }

            v8[v38] = v47;
          }

          else
          {
            v8[2] = v43;
          }

          *(a2 - 3) = v41;
        }

LABEL_52:
        v48 = v8[v10];
        v49 = v8[v25];
        v50 = *(v48 + 24);
        v51 = *(v49 + 24);
        v52 = v8[v38];
        v53 = *(v52 + 24);
        if (v50 >= v51)
        {
          if (v53 < v50)
          {
            v8[v10] = v52;
            v8[v38] = v48;
            v48 = v52;
            if (v53 < v51)
            {
              v8[v25] = v52;
              v8[v10] = v49;
              v48 = v49;
            }
          }
        }

        else if (v53 >= v50)
        {
          v8[v25] = v48;
          v8[v10] = v49;
          v48 = v49;
          if (v53 < v51)
          {
            v8[v10] = v52;
            v8[v38] = v49;
            v48 = v52;
          }
        }

        else
        {
          v8[v25] = v52;
          v8[v38] = v49;
        }

        v54 = *v8;
        *v8 = v48;
        v8[v10] = v54;
        --a3;
        if (a4)
        {
          goto LABEL_39;
        }

LABEL_61:
        v35 = *v8;
        v36 = *(*v8 + 24);
        if (*(*(v8 - 1) + 24) < v36)
        {
          goto LABEL_62;
        }

        if (v36 >= *(*(a2 - 1) + 24))
        {
          v69 = v8 + 1;
          do
          {
            v8 = v69;
            if (v69 >= a2)
            {
              break;
            }

            ++v69;
          }

          while (v36 >= *(*v8 + 24));
        }

        else
        {
          do
          {
            v68 = v8[1];
            ++v8;
          }

          while (v36 >= *(v68 + 24));
        }

        v70 = a2;
        if (v8 < a2)
        {
          v70 = a2;
          do
          {
            v71 = *--v70;
          }

          while (v36 < *(v71 + 24));
        }

        if (v8 < v70)
        {
          v72 = *v8;
          v73 = *v70;
          do
          {
            *v8 = v73;
            *v70 = v72;
            do
            {
              v74 = v8[1];
              ++v8;
              v72 = v74;
            }

            while (v36 >= *(v74 + 24));
            do
            {
              v75 = *--v70;
              v73 = v75;
            }

            while (v36 < *(v75 + 24));
          }

          while (v8 < v70);
        }

        v76 = v8 - 1;
        if (v8 - 1 != v7)
        {
          *v7 = *v76;
        }

        a4 = 0;
        *v76 = v35;
      }

      v17 = *v8;
      v18 = *(*v8 + 24);
      v19 = v8[v10];
      v20 = *(v19 + 24);
      if (v18 < v20)
      {
        if (v12 >= v18)
        {
          v8[v10] = v17;
          *v8 = v19;
          v34 = *(a2 - 1);
          if (*(v34 + 24) >= v20)
          {
            goto LABEL_38;
          }

          *v8 = v34;
        }

        else
        {
          v8[v10] = v11;
        }

        *(a2 - 1) = v19;
LABEL_38:
        --a3;
        if ((a4 & 1) == 0)
        {
          goto LABEL_61;
        }

        goto LABEL_39;
      }

      if (v12 >= v18)
      {
        goto LABEL_38;
      }

      *v8 = v11;
      *(a2 - 1) = v17;
      v23 = v8[v10];
      if (*(*v8 + 24) >= *(v23 + 24))
      {
        goto LABEL_38;
      }

      v8[v10] = *v8;
      *v8 = v23;
      --a3;
      if ((a4 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_39:
      v35 = *v8;
      v36 = *(*v8 + 24);
LABEL_62:
      v55 = 0;
      do
      {
        v56 = v8[++v55];
      }

      while (v36 > *(v56 + 24));
      v57 = &v8[v55];
      v58 = a2;
      if (v55 == 1)
      {
        v58 = a2;
        do
        {
          if (v57 >= v58)
          {
            break;
          }

          v60 = *--v58;
        }

        while (v36 <= *(v60 + 24));
      }

      else
      {
        do
        {
          v59 = *--v58;
        }

        while (v36 <= *(v59 + 24));
      }

      if (v57 >= v58)
      {
        v66 = v57 - 1;
        if (v57 - 1 == v8)
        {
          goto LABEL_80;
        }

LABEL_79:
        *v8 = *v66;
        goto LABEL_80;
      }

      v61 = *v58;
      v62 = &v8[v55];
      v63 = v58;
      do
      {
        *v62 = v61;
        *v63 = v56;
        do
        {
          v64 = v62[1];
          ++v62;
          v56 = v64;
        }

        while (v36 > *(v64 + 24));
        do
        {
          v65 = *--v63;
          v61 = v65;
        }

        while (v36 <= *(v65 + 24));
      }

      while (v62 < v63);
      v66 = v62 - 1;
      if (v62 - 1 != v8)
      {
        goto LABEL_79;
      }

LABEL_80:
      *v66 = v35;
      if (v57 < v58)
      {
        goto LABEL_83;
      }

      v67 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,mlir::collect_regions::detail::buildLiveInsLiveOuts(llvm::SmallVectorImpl<mlir::Value> &,llvm::SmallVectorImpl<mlir::Value> &,llvm::SmallVectorImpl<mlir::Location> &,llvm::SmallVectorImpl<mlir::Operation *> const&,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>> const&,BOOL)::$_2 &,mlir::Value*>(v8, v66);
      v8 = v66 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,mlir::collect_regions::detail::buildLiveInsLiveOuts(llvm::SmallVectorImpl<mlir::Value> &,llvm::SmallVectorImpl<mlir::Value> &,llvm::SmallVectorImpl<mlir::Location> &,llvm::SmallVectorImpl<mlir::Operation *> const&,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>> const&,BOOL)::$_2 &,mlir::Value*>(v66 + 1, a2);
      if (result)
      {
        break;
      }

      if (!v67)
      {
LABEL_83:
        result = std::__introsort<std::_ClassicAlgPolicy,mlir::collect_regions::detail::buildLiveInsLiveOuts(llvm::SmallVectorImpl<mlir::Value> &,llvm::SmallVectorImpl<mlir::Value> &,llvm::SmallVectorImpl<mlir::Location> &,llvm::SmallVectorImpl<mlir::Operation *> const&,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>> const&,BOOL)::$_2 &,mlir::Value*,false>(v7, v66, a3, a4 & 1);
        a4 = 0;
        v8 = v66 + 1;
      }
    }

    a2 = v66;
    if (!v67)
    {
      continue;
    }

    return result;
  }
}

uint64_t *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,mlir::collect_regions::detail::buildLiveInsLiveOuts(llvm::SmallVectorImpl<mlir::Value> &,llvm::SmallVectorImpl<mlir::Value> &,llvm::SmallVectorImpl<mlir::Location> &,llvm::SmallVectorImpl<mlir::Operation *> const&,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>> const&,BOOL)::$_2 &,mlir::Value*,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *(*a2 + 24);
  v7 = *result;
  v8 = *(*result + 24);
  v9 = *a3;
  v10 = *(*a3 + 24);
  if (v6 >= v8)
  {
    if (v10 >= v6)
    {
      v5 = *a3;
    }

    else
    {
      *a2 = v9;
      *a3 = v5;
      v11 = *result;
      if (*(*a2 + 24) < *(*result + 24))
      {
        *result = *a2;
        *a2 = v11;
        v5 = *a3;
      }
    }
  }

  else
  {
    if (v10 < v6)
    {
      *result = v9;
LABEL_9:
      *a3 = v7;
      v5 = v7;
      goto LABEL_11;
    }

    *result = v5;
    *a2 = v7;
    v5 = *a3;
    if (*(*a3 + 24) < v8)
    {
      *a2 = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (*(*a4 + 24) < *(v5 + 24))
  {
    *a3 = *a4;
    *a4 = v5;
    v12 = *a2;
    if (*(*a3 + 24) < *(*a2 + 24))
    {
      *a2 = *a3;
      *a3 = v12;
      v13 = *result;
      if (*(*a2 + 24) < *(*result + 24))
      {
        *result = *a2;
        *a2 = v13;
      }
    }
  }

  v14 = *a4;
  if (*(*a5 + 24) < *(*a4 + 24))
  {
    *a4 = *a5;
    *a5 = v14;
    v15 = *a3;
    if (*(*a4 + 24) < *(*a3 + 24))
    {
      *a3 = *a4;
      *a4 = v15;
      v16 = *a2;
      if (*(*a3 + 24) < *(*a2 + 24))
      {
        *a2 = *a3;
        *a3 = v16;
        v17 = *result;
        if (*(*a2 + 24) < *(*result + 24))
        {
          *result = *a2;
          *a2 = v17;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,mlir::collect_regions::detail::buildLiveInsLiveOuts(llvm::SmallVectorImpl<mlir::Value> &,llvm::SmallVectorImpl<mlir::Value> &,llvm::SmallVectorImpl<mlir::Location> &,llvm::SmallVectorImpl<mlir::Operation *> const&,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>> const&,BOOL)::$_2 &,mlir::Value*>(uint64_t *a1, uint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = *a1;
      v6 = a1[1];
      v7 = *(v6 + 24);
      v8 = *(*a1 + 24);
      v9 = *(a2 - 1);
      v10 = *(v9 + 24);
      if (v7 >= v8)
      {
        if (v10 < v7)
        {
          a1[1] = v9;
          *(a2 - 1) = v6;
          v28 = *a1;
          v27 = a1[1];
          if (*(v27 + 24) < *(*a1 + 24))
          {
            *a1 = v27;
            a1[1] = v28;
          }
        }
      }

      else if (v10 >= v7)
      {
        *a1 = v6;
        a1[1] = v5;
        v30 = *(a2 - 1);
        if (*(v30 + 24) < v8)
        {
          a1[1] = v30;
          *(a2 - 1) = v5;
        }
      }

      else
      {
        *a1 = v9;
        *(a2 - 1) = v5;
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,mlir::collect_regions::detail::buildLiveInsLiveOuts(llvm::SmallVectorImpl<mlir::Value> &,llvm::SmallVectorImpl<mlir::Value> &,llvm::SmallVectorImpl<mlir::Location> &,llvm::SmallVectorImpl<mlir::Operation *> const&,llvm::DenseSet<mlir::Operation *,llvm::DenseMapInfo<mlir::Operation *,void>> const&,BOOL)::$_2 &,mlir::Value*,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
    }

    v19 = a1 + 1;
    v20 = a1[1];
    v21 = a1 + 2;
    v22 = a1[2];
    v23 = *(v20 + 24);
    v24 = *a1;
    v25 = *(*a1 + 24);
    v26 = *(v22 + 24);
    if (v23 >= v25)
    {
      if (v26 < v23)
      {
        *v19 = v22;
        *v21 = v20;
        if (v26 >= v25)
        {
LABEL_48:
          v22 = v20;
          goto LABEL_49;
        }

        *a1 = v22;
        v29 = a1 + 1;
LABEL_47:
        *v29 = v24;
        goto LABEL_48;
      }
    }

    else
    {
      if (v26 < v23)
      {
        *a1 = v22;
LABEL_46:
        v29 = a1 + 2;
        v20 = v24;
        goto LABEL_47;
      }

      *a1 = v20;
      a1[1] = v24;
      if (v26 < v25)
      {
        *v19 = v22;
        goto LABEL_46;
      }
    }

LABEL_49:
    v39 = *(a2 - 1);
    if (*(v39 + 24) < *(v22 + 24))
    {
      *v21 = v39;
      *(a2 - 1) = v22;
      v40 = *v21;
      v41 = *(v40 + 24);
      v42 = *v19;
      if (v41 < *(v42 + 24))
      {
        a1[1] = v40;
        a1[2] = v42;
        v43 = *a1;
        if (v41 < *(*a1 + 24))
        {
          *a1 = v40;
          a1[1] = v43;
        }
      }
    }

    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 1);
    v4 = *a1;
    if (*(v3 + 24) < *(*a1 + 24))
    {
      *a1 = v3;
      *(a2 - 1) = v4;
    }

    return 1;
  }

LABEL_13:
  v11 = a1 + 2;
  v12 = a1[2];
  v13 = a1 + 1;
  v14 = a1[1];
  v15 = *(v14 + 24);
  v16 = *a1;
  v17 = *(*a1 + 24);
  v18 = *(v12 + 24);
  if (v15 < v17)
  {
    if (v18 >= v15)
    {
      *a1 = v14;
      a1[1] = v16;
      if (v18 >= v17)
      {
        goto LABEL_34;
      }

      *v13 = v12;
    }

    else
    {
      *a1 = v12;
    }

    v13 = a1 + 2;
    goto LABEL_33;
  }

  if (v18 < v15)
  {
    *v13 = v12;
    *v11 = v14;
    if (v18 < v17)
    {
      *a1 = v12;
LABEL_33:
      *v13 = v16;
    }
  }

LABEL_34:
  v31 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v32 = 0;
  v33 = 0;
  while (1)
  {
    v35 = *v31;
    v36 = *(*v31 + 24);
    v37 = *v11;
    if (v36 < *(v37 + 24))
    {
      v38 = v32;
      do
      {
        *(a1 + v38 + 24) = v37;
        if (v38 == -16)
        {
          v34 = a1;
          goto LABEL_37;
        }

        v37 = *(a1 + v38 + 8);
        v38 -= 8;
      }

      while (v36 < *(v37 + 24));
      v34 = (a1 + v38 + 24);
LABEL_37:
      *v34 = v35;
      if (++v33 == 8)
      {
        return v31 + 1 == a2;
      }
    }

    v11 = v31;
    v32 += 8;
    if (++v31 == a2)
    {
      return 1;
    }
  }
}

BOOL llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::collectRegions(mlir::FunctionOpInterface,mlir::RegionOpCreator *,mlir::CostModelParams const*,std::function<void ()(mlir::Operation *,mlir::Operation *)>)::$_2>(uint64_t a1, uint64_t a2)
{
  if ((mlir::collect_regions::detail::verifyShouldAddToQueue(**a1, *(*a1 + 8), **(a1 + 8), a2, *(a1 + 16) + 48) & 1) == 0)
  {
    goto LABEL_90;
  }

  v4 = *(a1 + 16);
  (*(**(v4 + 120) + 16))(*(v4 + 120));
  if ((*(a2 + 46) & 0x80) == 0 || (v5 = *(a2 + 68), !v5))
  {
    v7 = *(a1 + 16);
    v104[0] = a2;
LABEL_6:
    v8 = *(v7 + 16);
    v9 = *(v7 + 8);
    if (v8 == v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = ((v8 - v9) << 6) - 1;
    }

    v11 = *(v7 + 40);
    v12 = v11 + *(v7 + 32);
    if (v10 == v12)
    {
      std::deque<mlir::func::FuncOp>::__add_back_capacity(v7);
      v11 = *(v7 + 40);
      v9 = *(v7 + 8);
      v12 = *(v7 + 32) + v11;
    }

    *(*(v9 + ((v12 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v12 & 0x1FF)) = v104[0];
    *(v7 + 40) = v11 + 1;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v7 + 48, v104, __p);
    v13 = v104[0];
    v14 = (*(**(v7 + 120) + 16))(*(v7 + 120));
    I32IntegerAttr = mlir::Builder::getI32IntegerAttr(*(*(v7 + 120) + 8), *(v7 + 128));
    mlir::Operation::setAttr(v13, v14, I32IntegerAttr);
    return *(*(a1 + 16) + 40) < *(**(a1 + 8) + 16);
  }

  v6 = 0;
  v95 = *(a2 + 72);
  while (1)
  {
    v17 = *(v95 + 32 * v6 + 24);
    v102 = v17;
    if ((~v17[2] & 7) != 0)
    {
      __p[0] = v17;
      DefiningOp = mlir::Value::getDefiningOp(__p);
      if (!DefiningOp)
      {
        break;
      }

      {
        v79 = DefiningOp;
        DefiningOp = v79;
      }

      if (((*(**(DefiningOp + 48) + 32))(*(DefiningOp + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
      {
        break;
      }
    }

LABEL_12:
    if (++v6 == v5)
    {
      v82 = *(a2 + 44);
      v7 = *(a1 + 16);
      v104[0] = a2;
      if ((v82 & 0x800000) != 0)
      {
        v83 = *(a2 + 68);
        if (v83)
        {
          v84 = (*(a2 + 72) + 24);
          do
          {
            v97[0] = *v84;
            v87 = mlir::Value::getDefiningOp(v97);
            if (v87)
            {
              v88 = v87;
              {
              }

              if ((*(**(v88 + 6) + 32))(*(v88 + 6), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
              {
                v89 = v104[0];
                (*(**(v7 + 120) + 16))(*(v7 + 120));
                v91 = *(*(v7 + 120) + 8);
                v92 = v91[1];
                *__p = *v91;
                v100 = v92;
                v93 = *(v88 - 2);
                if (!v93 || *v93)
                {
                  v85 = *(v89 + 16);
                  v86 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v89, v90);
                  *&v100 = v85;
                  *(&v100 + 1) = v86;
                  mlir::OpBuilder::clone(__p, v88);
                }
              }
            }

            v84 += 4;
            --v83;
          }

          while (v83);
        }
      }

      goto LABEL_6;
    }
  }

  v19 = mlir::Value::getDefiningOp(&v102);
  v20 = v19;
  v21 = *(v4 + 64);
  v22 = v19 >> 4;
  if (!v21)
  {
    goto LABEL_21;
  }

  v23 = *(v4 + 48);
  v24 = (v22 ^ (v19 >> 9)) & (v21 - 1);
  v25 = *(v23 + 8 * v24);
  if (v25 == v19)
  {
LABEL_20:
    if (v24 == v21)
    {
      goto LABEL_21;
    }

    goto LABEL_12;
  }

  v77 = 1;
  while (v25 != -4096)
  {
    v78 = v24 + v77++;
    v24 = v78 & (v21 - 1);
    v25 = *(v23 + 8 * v24);
    if (v25 == v19)
    {
      goto LABEL_20;
    }
  }

LABEL_21:
  v26 = *(v4 + 112);
  if (!v26)
  {
LABEL_27:
    v100 = 0u;
    v101 = 0u;
    *__p = 0u;
    v97[0] = 0;
    v97[1] = 0;
    v98 = 0;
    std::deque<mlir::func::FuncOp>::__add_back_capacity(__p);
    v35 = v101.i64[1];
    v34 = v101.i64[0];
    *(*(__p[1] + (((v101.i64[1] + v101.i64[0]) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v101.i64[1] + v101.i64[0]) & 0x1FF)) = v20;
    v101.i64[1] = v35 + 1;
    if (v35 == -1)
    {
      goto LABEL_84;
    }

    v36 = __p[1];
    while (1)
    {
      v38 = *(*&v36[(v34 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v34 & 0x1FF));
      v39 = *(v38 + 44);
      if ((v39 & 0x7FFFFF) != 0)
      {
        {
        }

        if (!(*(**(v38 + 48) + 32))(*(v38 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id))
        {
LABEL_78:
          v75 = 1;
          goto LABEL_80;
        }

        v39 = *(v38 + 44);
      }

      if ((v39 & 0x800000) != 0)
      {
        v40 = *(v38 + 68);
        if (v40)
        {
          v41 = 0;
          v42 = *(v38 + 72);
          do
          {
            v103 = *(v42 + 32 * v41 + 24);
            v49 = mlir::Value::getDefiningOp(&v103);
            v96 = v49;
            if (!v49)
            {
              goto LABEL_41;
            }

            {
              v94 = v49;
              v49 = v94;
            }

            if ((*(**(v49 + 48) + 32))(*(v49 + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
            {
              goto LABEL_41;
            }

            v50 = v96;
            if (*(*(v96 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::HostTypeCast,void>::id)
            {
              goto LABEL_41;
            }

            v51 = *(v4 + 64);
            v52 = v96 >> 4;
            if (v51)
            {
              v53 = *(v4 + 48);
              v54 = (v51 - 1) & (v52 ^ (v96 >> 9));
              v55 = *(v53 + 8 * v54);
              if (v55 == v96)
              {
LABEL_49:
                if (v54 != v51)
                {
                  goto LABEL_78;
                }
              }

              else
              {
                v65 = 1;
                while (v55 != -4096)
                {
                  v66 = v54 + v65++;
                  v54 = v66 & (v51 - 1);
                  v55 = *(v53 + 8 * v54);
                  if (v55 == v96)
                  {
                    goto LABEL_49;
                  }
                }
              }
            }

            v56 = *(v4 + 112);
            if (v56)
            {
              v57 = *(v4 + 96);
              v58 = v56 - 1;
              v59 = v58 & (v52 ^ (v96 >> 9));
              v60 = *(v57 + 8 * v59);
              if (v60 == v96)
              {
                goto LABEL_78;
              }

              v61 = 1;
              while (v60 != -4096)
              {
                v62 = v59 + v61++;
                v59 = v62 & v58;
                v60 = *(v57 + 8 * v59);
                if (v60 == v96)
                {
                  goto LABEL_78;
                }
              }
            }

            if (v98)
            {
              v63 = (v98 - 1) & (v52 ^ (v96 >> 9));
              v64 = *(v97[0] + v63);
              if (v64 == v96)
              {
LABEL_58:
                if (v63 != v98)
                {
                  goto LABEL_41;
                }
              }

              else
              {
                v67 = 1;
                while (v64 != -4096)
                {
                  v68 = v63 + v67++;
                  v63 = v68 & (v98 - 1);
                  v64 = *(v97[0] + v63);
                  if (v64 == v96)
                  {
                    goto LABEL_58;
                  }
                }
              }
            }

            v43 = *(v4 + 88);
            if (!v43)
            {
              goto LABEL_72;
            }

            v44 = *(v4 + 72);
            v45 = v52 ^ (v96 >> 9);
            v46 = v43 - 1;
            v47 = (v43 - 1) & v45;
            v48 = *(v44 + 8 * v47);
            if (v48 != v96)
            {
              v69 = 1;
              while (v48 != -4096)
              {
                v70 = v47 + v69++;
                v47 = v70 & v46;
                v48 = *(v44 + 8 * v47);
                if (v48 == v96)
                {
                  goto LABEL_41;
                }
              }

LABEL_72:
              v71 = __p[1];
              if (v100 == __p[1])
              {
                v72 = 0;
              }

              else
              {
                v72 = ((v100 - __p[1]) << 6) - 1;
              }

              v73 = v101.i64[1];
              v74 = v101.i64[1] + v101.i64[0];
              if (v72 == v101.i64[1] + v101.i64[0])
              {
                std::deque<mlir::func::FuncOp>::__add_back_capacity(__p);
                v73 = v101.i64[1];
                v71 = __p[1];
                v74 = v101.i64[0] + v101.i64[1];
                v50 = v96;
              }

              *(*&v71[(v74 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v74 & 0x1FF)) = v50;
              v101.i64[1] = v73 + 1;
              llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v97, &v96, v104);
            }

LABEL_41:
            ++v41;
          }

          while (v41 != v40);
        }
      }

      v75 = 0;
LABEL_80:
      v36 = __p[1];
      v76 = vaddq_s64(v101, xmmword_1E097DF30);
      v101 = v76;
      v34 = v76.i64[0];
      if (v76.i64[0] >= 0x400uLL)
      {
        operator delete(*__p[1]);
        v37 = v101.i64[1];
        v36 = __p[1] + 8;
        v34 = v101.i64[0] - 512;
        __p[1] = __p[1] + 8;
        v101.i64[0] -= 512;
      }

      else
      {
        v37 = v76.i64[1];
      }

      if (((v37 != 0) & ~v75) == 0)
      {
        if (v75)
        {
          v103 = v20;
          llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v4 + 96, &v103, v104);
          goto LABEL_85;
        }

LABEL_84:
        v103 = v20;
        llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v4 + 72, &v103, v104);
LABEL_85:
        llvm::deallocate_buffer(v97[0], (8 * v98));
      }
    }
  }

  v27 = *(v4 + 96);
  v28 = v22 ^ (v19 >> 9);
  v29 = v26 - 1;
  v30 = (v26 - 1) & v28;
  v31 = *(v27 + 8 * v30);
  if (v31 != v19)
  {
    v32 = 1;
    while (v31 != -4096)
    {
      v33 = v30 + v32++;
      v30 = v33 & v29;
      v31 = *(v27 + 8 * v30);
      if (v31 == v19)
      {
        goto LABEL_90;
      }
    }

    goto LABEL_27;
  }

LABEL_90:
  v80 = *(a1 + 24);
  v81 = *(v80 + 8);
  if (v81 >= *(v80 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v80, v80 + 16, v81 + 1, 8);
    LODWORD(v81) = *(v80 + 8);
  }

  *(*v80 + 8 * v81) = a2;
  ++*(v80 + 8);
  return 1;
}