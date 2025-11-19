void *util::StaticGraph<int,int>::~StaticGraph(void *a1)
{
  *a1 = &unk_284F3BF70;
  v2 = a1[10];
  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    a1[8] = v3;
    operator delete(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  return a1;
}

void util::StaticGraph<int,int>::~StaticGraph(void *a1)
{
  *a1 = &unk_284F3BF70;
  v2 = a1[10];
  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    a1[8] = v3;
    operator delete(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  JUMPOUT(0x23EED9460);
}

uint64_t util::StaticGraph<int,int>::ReserveNodes(uint64_t result, int a2)
{
  if (*(result + 8) < a2)
  {
    *(result + 12) = a2;
    v2 = *(result + 32);
    if (a2 > ((*(result + 48) - v2) >> 2))
    {
      if ((a2 & 0x80000000) == 0)
      {
        v3 = *(result + 40) - v2;
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }
  }

  return result;
}

uint64_t util::StaticGraph<int,int>::ReserveArcs(uint64_t result, int a2)
{
  if (*(result + 16) < a2)
  {
    *(result + 20) = a2;
    v2 = *(result + 56);
    if (a2 > ((*(result + 72) - v2) >> 2))
    {
      if ((a2 & 0x80000000) == 0)
      {
        v3 = *(result + 64) - v2;
        operator new();
      }

      goto LABEL_9;
    }

    v4 = *(result + 80);
    if (a2 > ((*(result + 96) - v4) >> 2))
    {
      if ((a2 & 0x80000000) == 0)
      {
        v5 = *(result + 88) - v4;
        operator new();
      }

LABEL_9:
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }
  }

  return result;
}

void util::StaticGraph<int,int>::Build(uint64_t a1, void *a2)
{
  if (*(a1 + 25))
  {
    return;
  }

  v5 = (a1 + 16);
  v4 = *(a1 + 16);
  v6 = *(a1 + 8);
  *(a1 + 24) = 257;
  *(a1 + 12) = v6;
  *(a1 + 20) = v4;
  if (*(a1 + 26) == 1)
  {
    if (a2)
    {
      a2[1] = *a2;
    }

    if (v6 >= 1)
    {
      v7 = 0;
      v8 = 0;
      v9 = *(a1 + 32);
      do
      {
        v10 = *(v9 + 4 * v7);
        *(v9 + 4 * v7) = v8;
        v8 += v10;
        ++v7;
      }

      while (v7 < *(a1 + 8));
    }

    return;
  }

  v56[0] = 0;
  std::vector<int>::assign((a1 + 32), v6, v56);
  v11 = *(a1 + 16);
  if (v11 >= 1)
  {
    v12 = 0;
    v13 = *(a1 + 80);
    v14 = *(a1 + 32);
    do
    {
      ++*(v14 + 4 * *(v13 + 4 * v12++));
    }

    while (v12 < *v5);
    v11 = *v5;
  }

  if (*(a1 + 8) >= 1)
  {
    v15 = 0;
    v16 = 0;
    v17 = *(a1 + 32);
    do
    {
      v18 = *(v17 + 4 * v15);
      *(v17 + 4 * v15) = v16;
      v16 += v18;
      ++v15;
    }

    while (v15 < *(a1 + 8));
    v11 = *v5;
  }

  if (v11)
  {
    if ((v11 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v19 = 0;
  v20 = *(a1 + 88);
  v21 = (v20 - *(a1 + 80)) >> 2;
  if (v21)
  {
    absl::lts_20240722::log_internal::MakeCheckOpString<unsigned long long,unsigned long long>(v21, 0, "tail_.size() == static_cast<size_t>(num_arcs_)");
  }

  v23 = *(a1 + 72);
  v22 = *(a1 + 80);
  *(a1 + 80) = *(a1 + 56);
  *(a1 + 56) = v22;
  *(a1 + 64) = v20;
  v24 = *(a1 + 96);
  *(a1 + 96) = v23;
  *(a1 + 72) = v24;
  if (a2)
  {
    v25 = *a2;
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    v19 = v25;
  }

  v26 = *(a1 + 8);
  v27 = (v26 - 1);
  v28 = *(a1 + 32);
  if (v27 >= 1)
  {
    if (v27 >= 0x24 && ((v29 = (v26 - 2), v30 = 4 * (v27 - 1), &v28[v29 + v30 / 0xFFFFFFFFFFFFFFFCLL] <= &v28[v29]) ? (v31 = &v28[v27 + v30 / 0xFFFFFFFFFFFFFFFCLL] > &v28[v27]) : (v31 = 1), !v31 ? (v32 = 1) : (v32 = 0), v32 && ((v29 - v27) & 0x3FFFFFFFFFFFFFF8) != 0))
    {
      v33 = v26 - (v27 & 0x7FFFFFF8);
      v34 = (v26 - 1) & 7;
      v35 = &v28[v27 - 3];
      v36 = v26 + 4294967294;
      v37 = v27 & 0x7FFFFFF8;
      do
      {
        v38 = &v28[v36];
        v39 = *(v38 - 3);
        *(v35 - 1) = *(v38 - 7);
        *v35 = v39;
        v35 -= 2;
        v36 -= 8;
        v37 -= 8;
      }

      while (v37);
      if ((v27 & 0x7FFFFFF8) == v27)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v33 = *(a1 + 8);
      v34 = (v26 - 1);
    }

    v40 = v33 + 4294967294;
    v41 = v34 + 1;
    v42 = &v28[v34];
    do
    {
      *v42-- = v28[v40--];
      --v41;
    }

    while (v41 > 1);
  }

LABEL_41:
  *v28 = 0;
  v43 = *(a1 + 8);
  if (v43 >= 1)
  {
    v44 = 0;
    do
    {
      v45 = v28[v44];
      v46 = v44 + 1;
      if (v44 + 1 >= *(a1 + 8))
      {
        v47 = v5;
      }

      else
      {
        v47 = &v28[v44 + 1];
      }

      v48 = *v47;
      v49 = v48 - v45;
      if (v48 == v45)
      {
        goto LABEL_43;
      }

      v50 = *(a1 + 80);
      if (v49 < 8 || v48 - 1 < v45)
      {
        v52 = v28[v44];
      }

      else
      {
        v52 = v45 + (v49 & 0xFFFFFFF8);
        v53 = vdupq_n_s32(v44);
        v54 = v49 & 0xFFFFFFF8;
        do
        {
          v55 = (v50 + 4 * v45);
          *v55 = v53;
          v55[1] = v53;
          v45 += 8;
          v54 -= 8;
        }

        while (v54);
        if (v49 == (v49 & 0xFFFFFFF8))
        {
          goto LABEL_43;
        }
      }

      do
      {
        *(v50 + 4 * v52++) = v44;
      }

      while (v48 != v52);
LABEL_43:
      ++v44;
    }

    while (v46 != v43);
  }

  if (v19)
  {
    operator delete(v19);
  }
}

void sub_23C9DEBC8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t util::StaticGraph<int,int>::StaticGraph(uint64_t a1, int a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_284F3BF70;
  *(a1 + 26) = 1;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0u;
  *(a1 + 76) = 0u;
  *(a1 + 88) = 0u;
  v5 = a2 - 1;
  if (a2 >= 1)
  {
    *(a1 + 12) = a2;
    operator new();
  }

  (*(*a1 + 24))(a1, a3);
  *(a1 + 24) = 1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 12);
  if (v6 <= v7)
  {
    v6 = *(a1 + 8);
  }

  *(a1 + 12) = v6;
  v8 = *(a1 + 20);
  if (v8 <= *(a1 + 16))
  {
    v8 = *(a1 + 16);
  }

  *(a1 + 20) = v8;
  if (v7 <= v5)
  {
    *(a1 + 8) = a2;
    __x = 0;
    v9 = *(a1 + 32);
    v10 = (*(a1 + 40) - v9) >> 2;
    if (a2 <= v10)
    {
      if (a2 < v10)
      {
        *(a1 + 40) = v9 + 4 * a2;
      }
    }

    else
    {
      std::vector<int>::__append((a1 + 32), a2 - v10, &__x);
    }
  }

  return a1;
}

void sub_23C9DED68(_Unwind_Exception *a1)
{
  v3 = *(v1 + 80);
  if (v3)
  {
    *(v1 + 88) = v3;
    operator delete(v3);
  }

  util::StaticGraph<int,int>::StaticGraph((v1 + 56), (v1 + 32), v1);
  _Unwind_Resume(a1);
}

void std::vector<std::unique_ptr<operations_research::SparsePermutation>>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 3)
  {
    if ((a2 & 0x1FFFFFFFFFFFFFFFLL) != 0)
    {
      v11 = 8 * a2;
      bzero(*(a1 + 8), 8 * a2);
      v4 += v11;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = (v4 - *a1) >> 3;
    if ((v5 + a2) >> 61)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v6 = v3 - *a1;
    v7 = v6 >> 2;
    if (v6 >> 2 <= v5 + a2)
    {
      v7 = v5 + a2;
    }

    if (v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      v8 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v7;
    }

    if (v8)
    {
      if (!(v8 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = (8 * v5);
    if ((a2 & 0x1FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = 8 * a2;
      bzero(v12, 8 * a2);
      v10 = &v12[v9];
    }

    else
    {
      v10 = v12;
    }

    v13 = *a1;
    v14 = *(a1 + 8) - *a1;
    v15 = &v12[-v14];
    memcpy(v15, *a1, v14);
    *a1 = v15;
    *(a1 + 8) = v10;
    *(a1 + 16) = 0;
    if (v13)
    {

      operator delete(v13);
    }
  }
}

uint64_t operations_research::sat::CircuitPropagator::CircuitPropagator(uint64_t a1, int a2, void *a3, void *a4, void *a5, char a6, void *a7)
{
  *a1 = &unk_284F3BFC8;
  *(a1 + 8) = &unk_284F3C000;
  *(a1 + 16) = a2;
  *(a1 + 20) = a6;
  v11 = operations_research::sat::Model::GetOrCreate<operations_research::sat::Trail>(a7);
  *(a1 + 192) = 0u;
  *(a1 + 24) = v11;
  *(a1 + 32) = v11 + 16;
  *(a1 + 40) = 0;
  *(a1 + 64) = xmmword_23CE306D0;
  v92 = (a1 + 64);
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v88 = (a1 + 120);
  v89 = (a1 + 192);
  *(a1 + 144) = 0u;
  v91 = (a1 + 144);
  v90 = (a1 + 168);
  *(a1 + 272) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 252) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0;
  v94 = a3;
  if (*a3 == a3[1])
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(__x, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/circuit.cc", 44);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(__x, "Empty constraint, shouldn't be constructed!", 0x2BuLL);
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(__x);
  }

  v12 = *(a1 + 16);
  __x[0] = -1;
  if (v12)
  {
    std::vector<int>::__append(v91, v12, __x);
    v13 = *(a1 + 16);
    v14 = *(a1 + 168);
    v15 = *(a1 + 176);
    __x[0] = -1;
    v16 = (v15 - v14) >> 2;
    _CF = v13 >= v16;
    if (v13 > v16)
    {
      std::vector<int>::__append(v90, v13 - v16, __x);
      v13 = *(a1 + 16);
      goto LABEL_8;
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
    __x[0] = -1;
    _CF = 1;
  }

  if (!_CF)
  {
    *(a1 + 176) = v14 + 4 * v13;
  }

LABEL_8:
  v18 = *(a1 + 192);
  v19 = (*(a1 + 200) - v18) >> 2;
  if (v13 <= v19)
  {
    if (v13 < v19)
    {
      *(a1 + 200) = v18 + 4 * v13;
    }
  }

  else
  {
    std::vector<int>::__append(v89, v13 - v19);
    v13 = *(a1 + 16);
  }

  v20 = *(a1 + 272);
  v21 = (*(a1 + 280) - v20) >> 2;
  if (v13 <= v21)
  {
    if (v13 < v21)
    {
      *(a1 + 280) = v20 + 4 * v13;
    }
  }

  else
  {
    std::vector<int>::__append((a1 + 272), v13 - v21);
  }

  *__x = xmmword_23CE306D0;
  v22 = a3[1] - *a3;
  v23 = (v22 >> 2);
  if (*v92 < 2uLL)
  {
    v87 = a5;
    if (v23 <= 1)
    {
      goto LABEL_26;
    }

LABEL_20:
    if (v22 << 30 == 0x700000000)
    {
      v24 = 15;
    }

    else
    {
      v26 = (v23 - 1) / 7 + v23;
      _ZF = v26 == 0;
      v27 = 0xFFFFFFFFFFFFFFFFLL >> __clz(v26);
      if (_ZF)
      {
        v24 = 1;
      }

      else
      {
        v24 = v27;
      }
    }

    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<int,int>,operations_research::sat::Literal>,absl::lts_20240722::hash_internal::Hash<std::pair<int,int>>,std::equal_to<std::pair<int,int>>,std::allocator<std::pair<std::pair<int,int> const,operations_research::sat::Literal>>>::resize_impl(v92, v24);
  }

  v87 = a5;
  if ((*(*(a1 + 80) - 8) & 0x7FFFFFFFFFFFFFFFuLL) + (*(a1 + 72) >> 1) < v23)
  {
    goto LABEL_20;
  }

LABEL_26:
  v28 = *(a1 + 16);
  v29 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerEncoder>(a7);
  v30 = v29;
  v31 = *(v29 + 82);
  if (v31 == -1)
  {
    v32 = *(*v29 + 4);
    operations_research::sat::SatSolver::SetNumVariables(*v29, v32 + 1);
    *(v30 + 82) = 2 * v32;
    operations_research::sat::SatSolver::AddUnitClause(*v30, 2 * v32);
    v31 = *(v30 + 82);
  }

  LODWORD(v100) = v31 ^ 1;
  v33 = *(a1 + 40);
  v34 = (*(a1 + 48) - v33) >> 2;
  if (v28 <= v34)
  {
    if (v28 < v34)
    {
      *(a1 + 48) = v33 + 4 * v28;
    }
  }

  else
  {
    std::vector<int>::__append((a1 + 40), v28 - v34, &v100);
  }

  v86 = a7;
  v35 = v87;
  if ((v22 >> 2) < 1)
  {
LABEL_85:
    v75 = *(a1 + 16);
    if (v75 >= 1)
    {
      v76 = *(a1 + 40);
      v77 = *(*(a1 + 32) + 8);
      if ((*(v77 + ((*v76 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (*v76 & 0x3F ^ 1u)))
      {
        v78 = *(a1 + 264);
        *(a1 + 264) = v78 + 1;
        *(*(a1 + 272) + 4 * v78) = 0;
        v75 = *(a1 + 16);
      }

      if (v75 >= 2)
      {
        for (i = 1; i < v75; ++i)
        {
          if (((*(v77 + ((v76[i] >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v76[i] & 0x3F ^ 1u)) & 1) != 0 && (*(a1 + 20) & 1) == 0)
          {
            v80 = *(a1 + 264);
            *(a1 + 264) = v80 + 1;
            *(*(a1 + 272) + 4 * v80) = i;
            v75 = *(a1 + 16);
          }
        }
      }
    }

    goto LABEL_96;
  }

  v36 = 0;
  v37 = (v22 >> 2) & 0x7FFFFFFF;
  while (1)
  {
    v38 = *(*v35 + 4 * v36);
    v39 = v38 >> 6;
    v40 = *(*(*(a1 + 32) + 8) + 8 * v39);
    v41 = v38 & 0x3F;
    if (((v40 >> (v38 & 0x3F ^ 1u)) & 1) == 0)
    {
      break;
    }

LABEL_35:
    if (++v36 == v37)
    {
      goto LABEL_85;
    }
  }

  v42 = *(*a4 + 4 * v36);
  v43 = *(*v94 + 4 * v36);
  if (v43 == v42)
  {
    *(*(a1 + 40) + 4 * v42) = v38;
    if ((v40 >> v41))
    {
      goto LABEL_39;
    }

LABEL_50:
    v46 = v38 ^ (v43 == v42);
    LODWORD(v96) = v46;
    if (*__x > 1uLL)
    {
      v50 = 0;
      _X10 = v98;
      __asm { PRFM            #4, [X10] }

      v55 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v46) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v46));
      v56 = vdup_n_s8(v55 & 0x7F);
      v57 = ((v55 >> 7) ^ (v98 >> 12)) & *__x;
      v58 = *(v98 + v57);
      v59 = vceq_s8(v58, v56);
      if (!v59)
      {
        goto LABEL_61;
      }

LABEL_59:
      while (1)
      {
        v60 = (v57 + (__clz(__rbit64(v59)) >> 3)) & *__x;
        if (*(v99 + 8 * v60) == v46)
        {
          break;
        }

        v59 &= ((v59 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v59)
        {
LABEL_61:
          while (!*&vceq_s8(v58, 0x8080808080808080))
          {
            v50 += 8;
            v57 = (v50 + v57) & *__x;
            v58 = *(v98 + v57);
            v59 = vceq_s8(v58, v56);
            if (v59)
            {
              goto LABEL_59;
            }
          }

          goto LABEL_68;
        }
      }

      v49 = (v99 + 8 * v60);
      if (v98 + v60)
      {
        goto LABEL_67;
      }
    }

    else
    {
      v47 = v98 == v46 && *&__x[2] > 1uLL;
      v48 = &absl::lts_20240722::container_internal::kSooControl;
      if (!v47)
      {
        v48 = 0;
      }

      v49 = &v98;
      if (v48)
      {
LABEL_67:
        LODWORD(v61) = *(v49 + 1);
        if (v61 != -1)
        {
LABEL_84:
          v74 = *v88 + 24 * v61;
          v100 = __PAIR64__(v42, v43);
          std::vector<long long>::push_back[abi:ne200100](v74, &v100);
          goto LABEL_35;
        }
      }
    }

LABEL_68:
    v63 = *(a1 + 96);
    v62 = *(a1 + 104);
    v95 = v46;
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,int>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_> const,int>>>::find_or_prepare_insert<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>(__x, &v95, &v100);
    if (v102 == 1)
    {
      *v101 = v95;
    }

    v61 = (v62 - v63) >> 2;
    *(v101 + 4) = v61;
    std::vector<int>::push_back[abi:ne200100](a1 + 96, &v96);
    v64 = *(a1 + 128);
    v65 = *(a1 + 136);
    if (v64 >= v65)
    {
      v67 = *v88;
      v68 = v64 - *v88;
      v69 = 0xAAAAAAAAAAAAAAABLL * (v68 >> 3) + 1;
      if (v69 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      v70 = 0xAAAAAAAAAAAAAAABLL * ((v65 - v67) >> 3);
      if (2 * v70 > v69)
      {
        v69 = 2 * v70;
      }

      if (v70 >= 0x555555555555555)
      {
        v71 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v71 = v69;
      }

      if (v71)
      {
        if (v71 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v72 = (8 * (v68 >> 3));
      v66 = v72 + 3;
      v73 = v72 - v68;
      *v72 = 0;
      v72[1] = 0;
      v72[2] = 0;
      memcpy(v72 - v68, v67, v68);
      *(a1 + 120) = v73;
      *(a1 + 128) = v66;
      *(a1 + 136) = 0;
      if (v67)
      {
        operator delete(v67);
      }
    }

    else
    {
      v66 = v64 + 3;
      *v64 = 0;
      v64[1] = 0;
      v64[2] = 0;
    }

    *(a1 + 128) = v66;
    v35 = v87;
    goto LABEL_84;
  }

  LODWORD(v96) = *(*v94 + 4 * v36);
  HIDWORD(v96) = v42;
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<int,int>,operations_research::sat::Literal>,absl::lts_20240722::hash_internal::Hash<std::pair<int,int>>,std::equal_to<std::pair<int,int>>,std::allocator<std::pair<std::pair<int,int> const,operations_research::sat::Literal>>>::find_or_prepare_insert<std::pair<int,int>>(v92, &v96, &v100);
  if (v102 == 1)
  {
    v45 = v101;
    *v101 = v96;
    *(v45 + 8) = 0;
  }

  *(v101 + 8) = v38;
  if (((*(*(*(a1 + 32) + 8) + 8 * v39) >> v41) & 1) == 0)
  {
    goto LABEL_50;
  }

LABEL_39:
  if (v91->__begin_[v43] == -1)
  {
    begin = v90->__begin_;
    if (v90->__begin_[v42] == -1)
    {
      if (v43 || (*(a1 + 20) & 1) == 0)
      {
        v91->__begin_[v43] = v42;
        v89->__begin_[v43] = -1;
      }

      if (v42 || (*(a1 + 20) & 1) == 0)
      {
        begin[v42] = v43;
      }

      goto LABEL_35;
    }
  }

  v81 = v86;
  if (dword_27E25CB10 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::sat::CircuitPropagator::CircuitPropagator(int,std::vector<int> const&,std::vector<int> const&,std::vector<operations_research::sat::Literal> const&,operations_research::sat::CircuitPropagator::Options,operations_research::sat::Model *)::$_0::operator() const(void)::site, dword_27E25CB10))
  {
    v83 = absl::lts_20240722::log_internal::LogMessage::LogMessage(&v100, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/circuit.cc", 69);
    v84 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v83, 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v84, "Trivially UNSAT or duplicate arcs while adding ", 0x2FuLL);
    LODWORD(v96) = v43;
    v85 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v84, &v96);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v85, " -> ", 4uLL);
    LODWORD(v96) = v42;
    absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v85, &v96);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v100);
    v81 = v86;
  }

  *(operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(v81) + 528) = 1;
LABEL_96:
  if (*__x >= 2uLL)
  {
    operator delete((v98 - (__x[2] & 1) - 8));
  }

  return a1;
}

void sub_23C9DF7D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15, uint64_t a16, uint64_t a17, void **a18, void **a19, void **a20, void **a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, unint64_t a27, char a28, uint64_t a29)
{
  if (a27 >= 2)
  {
    operator delete((a29 - (a28 & 1) - 8));
  }

  v32 = v29[40];
  if (v32)
  {
    operator delete(v32);
    v33 = v29[37];
    if (!v33)
    {
LABEL_5:
      v34 = *a9;
      if (!*a9)
      {
        goto LABEL_6;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v33 = v29[37];
    if (!v33)
    {
      goto LABEL_5;
    }
  }

  operator delete(v33);
  v34 = *a9;
  if (!*a9)
  {
LABEL_6:
    v35 = v29[30];
    if (!v35)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v29[35] = v34;
  operator delete(v34);
  v35 = v29[30];
  if (!v35)
  {
LABEL_7:
    v36 = v29[27];
    if (!v36)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v29[31] = v35;
  operator delete(v35);
  v36 = v29[27];
  if (!v36)
  {
LABEL_8:
    v37 = *a19;
    if (!*a19)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v29[28] = v36;
  operator delete(v36);
  v37 = *a19;
  if (!*a19)
  {
LABEL_9:
    v38 = *a20;
    if (!*a20)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  v29[25] = v37;
  operator delete(v37);
  v38 = *a20;
  if (!*a20)
  {
LABEL_10:
    v39 = *a21;
    if (!*a21)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  v29[22] = v38;
  operator delete(v38);
  v39 = *a21;
  if (!*a21)
  {
LABEL_11:
    std::vector<std::vector<int>>::~vector[abi:ne200100](a18);
    v40 = *a14;
    if (!*a14)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  v29[19] = v39;
  operator delete(v39);
  std::vector<std::vector<int>>::~vector[abi:ne200100](a18);
  v40 = *a14;
  if (!*a14)
  {
LABEL_12:
    if (*a22 < 2uLL)
    {
      goto LABEL_13;
    }

    goto LABEL_24;
  }

LABEL_23:
  v29[13] = v40;
  operator delete(v40);
  if (*a22 < 2uLL)
  {
LABEL_13:
    v41 = *v30;
    if (!*v30)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete((v29[10] - (v29[9] & 1) - 8));
  v41 = *v30;
  if (!*v30)
  {
LABEL_14:
    _Unwind_Resume(a1);
  }

LABEL_25:
  v29[6] = v41;
  operator delete(v41);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::CircuitPropagator::RegisterWith(operations_research::sat::CircuitPropagator *this, operations_research::sat::GenericLiteralWatcher *a2)
{
  v4 = operations_research::sat::GenericLiteralWatcher::Register(a2, this);
  v5 = *(this + 12);
  if (*(this + 13) != v5)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v9 = *(v5 + 4 * v6);
      v11 = *(a2 + 8);
      v10 = *(a2 + 9);
      v12 = (v10 - v11) >> 3;
      v13 = 0xAAAAAAAAAAAAAAABLL * v12;
      if (v9 >= -1431655765 * v12)
      {
        v14 = v9 + 1;
        if (v14 > v13)
        {
          std::vector<std::vector<operations_research::sat::GenericLiteralWatcher::WatchData>>::__append(a2 + 64, v14 - v13);
        }

        else if (v14 < v13)
        {
          v15 = v11 + 24 * v14;
          if (v10 != v15)
          {
            v16 = *(a2 + 9);
            do
            {
              v18 = *(v16 - 24);
              v16 -= 24;
              v17 = v18;
              if (v18)
              {
                *(v10 - 16) = v17;
                operator delete(v17);
              }

              v10 = v16;
            }

            while (v16 != v15);
          }

          *(a2 + 9) = v15;
        }
      }

      v8 = *(a2 + 8) + 24 * v9;
      v20 = __PAIR64__(v7, v4);
      std::vector<long long>::push_back[abi:ne200100](v8, &v20);
      v6 = ++v7;
      v5 = *(this + 12);
    }

    while (v7 < ((*(this + 13) - v5) >> 2));
  }

  operations_research::sat::GenericLiteralWatcher::RegisterReversibleClass(a2, v4, this + 8);
  operations_research::sat::GenericLiteralWatcher::RegisterReversibleInt(a2, v4, this + 66);
  return operations_research::sat::GenericLiteralWatcher::NotifyThatPropagatorMayNotReachFixedPointInOnePass(a2, v4);
}

void operations_research::sat::CircuitPropagator::SetLevel(operations_research::sat::CircuitPropagator *this, int a2)
{
  v2 = a2;
  v3 = *(this + 27);
  v4 = (this + 216);
  v5 = (*(this + 28) - v3) >> 2;
  if (v5 != a2)
  {
    if (v5 >= a2)
    {
      v7 = *(v3 + 4 * a2);
      v9 = *(this + 30);
      v8 = this + 240;
      v10 = (*(this + 31) - v9) >> 3;
      if (v10 > v7)
      {
        v11 = *(this + 18);
        v12 = *(this + 21);
        v13 = v7 + 1;
        do
        {
          v14 = (v9 + 8 * v7);
          v16 = *v14;
          v15 = v14[1];
          *(v11 + 4 * v16) = -1;
          *(v12 + 4 * v15) = -1;
          v7 = v13++;
        }

        while (v10 > v7);
        v7 = *(v3 + 4 * a2);
      }

      if (v7 <= v10)
      {
        if (v7 < v10)
        {
          *(this + 31) = v9 + 8 * v7;
        }
      }

      else
      {
        std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::__append(v8, v7 - v10);
        v3 = *(this + 27);
        v5 = (*(this + 28) - v3) >> 2;
      }

      if (v2 <= v5)
      {
        if (v2 < v5)
        {
          *(this + 28) = v3 + 4 * v2;
        }
      }

      else
      {

        std::vector<int>::__append(v4, v2 - v5);
      }
    }

    else
    {
      do
      {
        v17 = (*(this + 31) - *(this + 30)) >> 3;
        std::vector<int>::push_back[abi:ne200100](v4, &v17);
      }

      while (v2 > (*(this + 28) - *(this + 27)) >> 2);
    }
  }
}

void operations_research::sat::CircuitPropagator::FillReasonForPath(uint64_t a1, int a2, void *a3)
{
  if (a2 == -1)
  {
    operations_research::sat::CircuitPropagator::FillReasonForPath();
  }

  a3[1] = *a3;
  v6 = *(a1 + 144);
  v7 = a2;
  while (1)
  {
    v8 = *(v6 + 4 * v7);
    if (v8 == -1)
    {
      break;
    }

    v9 = *(*(a1 + 192) + 4 * v7);
    if (v9 == -1)
    {
      v7 = *(v6 + 4 * v7);
      if (v8 == a2)
      {
        return;
      }
    }

    else
    {
      v10[0] = v9 ^ 1;
      std::vector<int>::push_back[abi:ne200100](a3, v10);
      v6 = *(a1 + 144);
      v7 = *(v6 + 4 * v7);
      if (v7 == a2)
      {
        return;
      }
    }
  }
}

uint64_t operations_research::sat::CircuitPropagator::IncrementalPropagate(uint64_t a1, int **a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = a2[1];
  if (*a2 == v4)
  {
LABEL_18:
    result = operations_research::sat::CircuitPropagator::Propagate(a1);
  }

  else
  {
    while (1)
    {
      v5 = *v3;
      v6 = *(a1 + 120) + 24 * v5;
      v7 = *v6;
      v8 = *(v6 + 8);
      if (*v6 != v8)
      {
        break;
      }

LABEL_3:
      if (++v3 == v4)
      {
        goto LABEL_18;
      }
    }

    v9 = *(*(a1 + 96) + 4 * v5);
    while (1)
    {
      while (1)
      {
        v11 = *v7;
        v24 = v11;
        if (v11 != HIDWORD(v11))
        {
          break;
        }

        v10 = *(a1 + 264);
        *(a1 + 264) = v10 + 1;
        *(*(a1 + 272) + 4 * v10) = v11;
        if (++v7 == v8)
        {
          goto LABEL_3;
        }
      }

      v12 = *(a1 + 144);
      if (*(v12 + 4 * v11) != -1)
      {
        v16 = *(a1 + 24);
        *(v16 + 120) = 0;
        v17 = *(*(a1 + 192) + 4 * v11);
        if (v17 != -1)
        {
          __src = v17 ^ 1;
          v26 = v9 ^ 1;
          v18 = (v16 + 72);
          v19 = &v27;
          v20 = 2;
          goto LABEL_26;
        }

        __src = v9 ^ 1;
        v18 = (v16 + 72);
        v19 = &v26;
        goto LABEL_25;
      }

      v13 = *(a1 + 168);
      v14 = *(v13 + 4 * (v11 >> 32));
      if (v14 != -1)
      {
        break;
      }

      if (v11 || (*(a1 + 20) & 1) == 0)
      {
        *(v12 + 4 * v11) = HIDWORD(v11);
        *(*(a1 + 192) + 4 * v11) = v9;
      }

      if (HIDWORD(v11) || (*(a1 + 20) & 1) == 0)
      {
        *(v13 + 4 * (v11 >> 32)) = v11;
      }

      std::vector<long long>::push_back[abi:ne200100](a1 + 240, &v24);
      if (++v7 == v8)
      {
        goto LABEL_3;
      }
    }

    v21 = *(a1 + 24);
    *(v21 + 120) = 0;
    v22 = *(*(a1 + 192) + 4 * v14);
    if (v22 != -1)
    {
      __src = v22 ^ 1;
      v26 = v9 ^ 1;
      v18 = (v21 + 72);
      v19 = &v27;
      v20 = 2;
      goto LABEL_26;
    }

    __src = v9 ^ 1;
    v18 = (v21 + 72);
    v19 = &v26;
LABEL_25:
    v20 = 1;
LABEL_26:
    std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal const*,operations_research::sat::Literal const*>(v18, &__src, v19, v20);
    result = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t operations_research::sat::CircuitPropagator::Propagate(operations_research::sat::CircuitPropagator *this)
{
  v2 = *(this + 4);
  LOBYTE(v77[0]) = 0;
  std::vector<BOOL>::assign(this + 296, v2, v77);
  LODWORD(v3) = *(this + 4);
  if (v3 < 1)
  {
    return 1;
  }

  v4 = 0;
  v5 = (this + 80);
  while (1)
  {
    v6 = v4 >> 6;
    v7 = 1 << v4;
    if ((*(*(this + 37) + 8 * (v4 >> 6)) & (1 << v4)) != 0)
    {
      goto LABEL_4;
    }

    v8 = *(*(this + 18) + 4 * v4);
    if (v4 == v8 || v8 == -1 && *(*(this + 21) + 4 * v4) == -1)
    {
      goto LABEL_4;
    }

    LOBYTE(v77[0]) = 0;
    std::vector<BOOL>::assign(this + 320, v3, v77);
    v9 = *(this + 40);
    *&v9[8 * v6] |= v7;
    v10 = *(this + 37);
    *(v10 + 8 * v6) |= v7;
    v11 = *(this + 18);
    v12 = v4;
    do
    {
      v13 = *(v11 + 4 * v12);
      if (v13 == -1)
      {
        break;
      }

      v14 = (v13 >> 3) & 0x1FFFFFFFFFFFFFF8;
      *&v9[v14] |= 1 << v13;
      *(v10 + v14) |= 1 << v13;
      v12 = v13;
    }

    while (v4 != v13);
    v15 = *(this + 21);
    v16 = v4;
    do
    {
      v17 = *(v15 + 4 * v16);
      if (v17 == -1)
      {
        break;
      }

      v18 = (v17 >> 3) & 0x1FFFFFFFFFFFFFF8;
      *&v9[v18] |= 1 << v17;
      *(v10 + v18) |= 1 << v17;
      v16 = v17;
    }

    while (v4 != v17);
    if (*(this + 20))
    {
      break;
    }

    v20 = *(this + 66);
    if (v20 < 1)
    {
LABEL_28:
      if (v16 == v12 && *(this + 4) >= 1)
      {
        v24 = 0;
        v25 = 0;
        v26 = -1;
        while (1)
        {
          if (((*(*(this + 40) + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
          {
            v30 = *(*(this + 5) + v24);
            v31 = *(*(*(this + 4) + 8) + 8 * (v30 >> 6));
            if (((v31 >> v30) & 1) == 0)
            {
              v32 = *(*(this + 18) + v24);
              if (v32 != -1)
              {
                operations_research::sat::CircuitPropagator::Propagate(v32);
              }

              if ((v31 >> (v30 & 0x3F ^ 1)))
              {
                v72 = *(this + 3);
                *(v72 + 120) = 0;
                operations_research::sat::CircuitPropagator::FillReasonForPath(this, v12, (v72 + 72));
                v73 = *(this + 3);
                *(v73 + 120) = 0;
                std::vector<int>::push_back[abi:ne200100](v73 + 72, (*(this + 5) + v24));
                return 0;
              }

              if (v26 == -1)
              {
                EmptyVectorToStoreReason = operations_research::sat::Trail::GetEmptyVectorToStoreReason(*(this + 3), *(*(this + 3) + 12));
                operations_research::sat::CircuitPropagator::FillReasonForPath(this, v12, EmptyVectorToStoreReason);
                if ((operations_research::sat::Trail::EnqueueWithStoredReason(*(this + 3), v30) & 1) == 0)
                {
                  return 0;
                }

                v26 = v30 >> 1;
              }

              else
              {
                v27 = *(this + 3);
                v28 = v30 >> 1;
                *(*(v27 + 128) + 4 * v28) = v26;
                v29 = *(v27 + 12);
                *(v27 + 8) = *(v27 + 8) & 0xFFFFFFF | 0x30000000;
                *(*(v27 + 48) + 4 * v29) = v30;
                *(*(v27 + 96) + 8 * v28) = *(v27 + 8);
                *(*(v27 + 24) + 8 * (v30 >> 6)) |= 1 << (v30 & 0x3F);
                ++*(v27 + 12);
              }
            }
          }

          ++v25;
          v24 += 4;
          if (v25 >= *(this + 4))
          {
            goto LABEL_4;
          }
        }
      }

      goto LABEL_4;
    }

    v21 = *(this + 34);
    while (1)
    {
      v23 = *v21++;
      v22 = v23;
      if (((*&v9[(v23 >> 3) & 0x1FFFFFFFFFFFFFF8] >> v23) & 1) == 0)
      {
        break;
      }

      if (!--v20)
      {
        goto LABEL_28;
      }
    }

    v34 = *(*(this + 5) + 4 * v22);
    if (v16 == v12)
    {
      v75 = *(this + 3);
      *(v75 + 120) = 0;
      operations_research::sat::CircuitPropagator::FillReasonForPath(this, v12, (v75 + 72));
      if (v34 != -3)
      {
        v76 = *(this + 3);
        *(v76 + 120) = 0;
        v77[0] = v34;
        std::vector<int>::push_back[abi:ne200100](v76 + 72, v77);
      }

      return 0;
    }

    v35 = *(this + 8);
    if (v35 <= 1)
    {
      if (*(this + 9) < 2uLL)
      {
        goto LABEL_4;
      }

      v67 = *(this + 21) == v16 && *(this + 20) == v12;
      v68 = &absl::lts_20240722::container_internal::kSooControl;
      if (!v67)
      {
        v68 = 0;
      }

      v61 = (this + 80);
      if (!v68)
      {
        goto LABEL_4;
      }

LABEL_81:
      v69 = v61[2];
      if ((*(*(*(this + 4) + 8) + ((v69 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v69 & 0x3F ^ 1)))
      {
        goto LABEL_4;
      }

      v70 = operations_research::sat::Trail::GetEmptyVectorToStoreReason(*(this + 3), *(*(this + 3) + 12));
      operations_research::sat::CircuitPropagator::FillReasonForPath(this, v16, v70);
      if (v34 != -3)
      {
        v77[0] = v34;
        std::vector<int>::push_back[abi:ne200100](v70, v77);
      }

      if (operations_research::sat::Trail::EnqueueWithStoredReason(*(this + 3), v69 ^ 1))
      {
        goto LABEL_4;
      }

      return 0;
    }

    v51 = 0;
    v52 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v12) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v12))) + v16;
    v53 = ((v52 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v52);
    v54 = vdup_n_s8(v53 & 0x7F);
    _X10 = *v5;
    __asm { PRFM            #4, [X10] }

    v57 = ((v53 >> 7) ^ (*v5 >> 12)) & v35;
    v58 = *(*v5 + v57);
    v59 = vceq_s8(v58, v54);
    if (!v59)
    {
      goto LABEL_61;
    }

    do
    {
LABEL_56:
      v60 = (v57 + (__clz(__rbit64(v59)) >> 3)) & v35;
      v61 = (*(this + 11) + 12 * v60);
      if (*v61 == v12 && v61[1] == v16)
      {
        if (!(_X10 + v60))
        {
          goto LABEL_4;
        }

        goto LABEL_81;
      }

      v59 &= ((v59 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v59);
LABEL_61:
    while (!*&vceq_s8(v58, 0x8080808080808080))
    {
      v51 += 8;
      v57 = (v51 + v57) & v35;
      v58 = *(_X10 + v57);
      v59 = vceq_s8(v58, v54);
      if (v59)
      {
        goto LABEL_56;
      }
    }

LABEL_4:
    ++v4;
    v3 = *(this + 4);
    if (v4 >= v3)
    {
      return 1;
    }
  }

  if (v16 == v12 && (*v9 & 1) == 0)
  {
    v74 = *(this + 3);
    *(v74 + 120) = 0;
    operations_research::sat::CircuitPropagator::FillReasonForPath(this, v12, (v74 + 72));
    return 0;
  }

  if (!v12 || v16 == v12 || !v16)
  {
    goto LABEL_4;
  }

  v19 = *(this + 8);
  if (v19 > 1)
  {
    v36 = 0;
    v37 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v12) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v12))) + v16;
    v38 = ((v37 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v37);
    v39 = vdup_n_s8(v38 & 0x7F);
    _X10 = *v5;
    __asm { PRFM            #4, [X10] }

    v45 = ((v38 >> 7) ^ (*v5 >> 12)) & v19;
    v46 = *(*v5 + v45);
    v47 = vceq_s8(v46, v39);
    if (!v47)
    {
      goto LABEL_50;
    }

LABEL_45:
    while (1)
    {
      v48 = (v45 + (__clz(__rbit64(v47)) >> 3)) & v19;
      v49 = (*(this + 11) + 12 * v48);
      if (*v49 == v12 && v49[1] == v16)
      {
        break;
      }

      v47 &= ((v47 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v47)
      {
LABEL_50:
        while (!*&vceq_s8(v46, 0x8080808080808080))
        {
          v36 += 8;
          v45 = (v36 + v45) & v19;
          v46 = *(_X10 + v45);
          v47 = vceq_s8(v46, v39);
          if (v47)
          {
            goto LABEL_45;
          }
        }

        goto LABEL_4;
      }
    }

    if (_X10 + v48)
    {
      goto LABEL_70;
    }

    goto LABEL_4;
  }

  if (*(this + 9) < 2uLL)
  {
    goto LABEL_4;
  }

  v63 = *(this + 21) == v16 && *(this + 20) == v12;
  v64 = &absl::lts_20240722::container_internal::kSooControl;
  if (!v63)
  {
    v64 = 0;
  }

  v49 = (this + 80);
  if (!v64)
  {
    goto LABEL_4;
  }

LABEL_70:
  if ((*(*(*(this + 4) + 8) + ((v49[2] >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v49[2] & 0x3F ^ 1u)))
  {
    goto LABEL_4;
  }

  v65 = v49[2];
  v66 = operations_research::sat::Trail::GetEmptyVectorToStoreReason(*(this + 3), *(*(this + 3) + 12));
  operations_research::sat::CircuitPropagator::FillReasonForPath(this, v16, v66);
  if (operations_research::sat::Trail::EnqueueWithStoredReason(*(this + 3), v65 ^ 1u))
  {
    goto LABEL_4;
  }

  return 0;
}

uint64_t StronglyConnectedComponentsFinder<int,std::vector<std::vector<int>>,std::vector<std::vector<int>>>::~StronglyConnectedComponentsFinder(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    *(a1 + 56) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    *(a1 + 32) = v4;
    operator delete(v4);
  }

  v5 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v5;
    operator delete(v5);
  }

  return a1;
}

void FindStronglyConnectedComponents<int,std::vector<std::vector<int>>,std::vector<std::vector<int>>>(int a1, void *a2, uint64_t a3)
{
  *__p = 0u;
  v8 = 0u;
  v5 = 0u;
  *v6 = 0u;
  *v3 = 0u;
  *v4 = 0u;
  StronglyConnectedComponentsFinder<int,std::vector<std::vector<int>>,std::vector<std::vector<int>>>::FindStronglyConnectedComponents(v3, a1, a2, a3);
  if (__p[1])
  {
    *&v8 = __p[1];
    operator delete(__p[1]);
  }

  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }

  if (v4[1])
  {
    *&v5 = v4[1];
    operator delete(v4[1]);
  }

  if (v3[0])
  {
    v3[1] = v3[0];
    operator delete(v3[0]);
  }
}

void operations_research::sat::SubcircuitConstraint(void *a1@<X1>, void *a2@<X2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  v4 = a1[1];
  if (v4 != *a1)
  {
    if (((v4 - *a1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v5 = a2[1];
  if (v5 == *a2)
  {
    v6 = a3[1];
    if (v6 == *a3)
    {
      *(a4 + 24) = 0;
      operator new();
    }

    if (((v6 - *a3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (((v5 - *a2) & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
}

void sub_23C9E0A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  operations_research::sat::SubcircuitConstraint(int,std::vector<int> const&,std::vector<int> const&,std::vector<operations_research::sat::Literal> const&,BOOL)::$_0::~$_0(va);
  _Unwind_Resume(a1);
}

void sub_23C9E0A3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  v16 = *v14;
  if (*v14)
  {
    v11[8] = v16;
    operator delete(v16);
    v17 = *v13;
    if (!*v13)
    {
LABEL_3:
      v18 = *v12;
      if (!*v12)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    v17 = *v13;
    if (!*v13)
    {
      goto LABEL_3;
    }
  }

  v11[5] = v17;
  operator delete(v17);
  v18 = *v12;
  if (!*v12)
  {
LABEL_5:
    operator delete(v11);
    operations_research::sat::SubcircuitConstraint(int,std::vector<int> const&,std::vector<int> const&,std::vector<operations_research::sat::Literal> const&,BOOL)::$_0::~$_0(&a11);
    _Unwind_Resume(a1);
  }

LABEL_4:
  v11[2] = v18;
  operator delete(v18);
  goto LABEL_5;
}

void sub_23C9E0AAC()
{
  if (!*v0)
  {
    JUMPOUT(0x23C9E0A60);
  }

  JUMPOUT(0x23C9E0A58);
}

void sub_23C9E0ABC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    operator delete(v2);
    if (!v1)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v1)
  {
    goto LABEL_3;
  }

  operator delete(v1);
  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::SubcircuitConstraint(int,std::vector<int> const&,std::vector<int> const&,std::vector<operations_research::sat::Literal> const&,BOOL)::$_0::~$_0(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  v4 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
  }

  return a1;
}

void operations_research::sat::CircuitPropagator::~CircuitPropagator(operations_research::sat::CircuitPropagator *this)
{
  operations_research::sat::CircuitPropagator::~CircuitPropagator(this);

  JUMPOUT(0x23EED9460);
}

{
  *this = &unk_284F3BFC8;
  *(this + 1) = &unk_284F3C000;
  v2 = *(this + 40);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 37);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 34);
  if (v4)
  {
    *(this + 35) = v4;
    operator delete(v4);
  }

  v5 = *(this + 30);
  if (v5)
  {
    *(this + 31) = v5;
    operator delete(v5);
  }

  v6 = *(this + 27);
  if (v6)
  {
    *(this + 28) = v6;
    operator delete(v6);
  }

  v7 = *(this + 24);
  if (v7)
  {
    *(this + 25) = v7;
    operator delete(v7);
  }

  v8 = *(this + 21);
  if (v8)
  {
    *(this + 22) = v8;
    operator delete(v8);
  }

  v9 = *(this + 18);
  if (v9)
  {
    *(this + 19) = v9;
    operator delete(v9);
  }

  v10 = *(this + 15);
  if (v10)
  {
    v11 = *(this + 16);
    v12 = *(this + 15);
    if (v11 != v10)
    {
      v13 = *(this + 16);
      do
      {
        v15 = *(v13 - 24);
        v13 -= 24;
        v14 = v15;
        if (v15)
        {
          *(v11 - 16) = v14;
          operator delete(v14);
        }

        v11 = v13;
      }

      while (v13 != v10);
      v12 = *(this + 15);
    }

    *(this + 16) = v10;
    operator delete(v12);
  }

  v16 = *(this + 12);
  if (v16)
  {
    *(this + 13) = v16;
    operator delete(v16);
  }

  if (*(this + 8) >= 2uLL)
  {
    operator delete((*(this + 10) - (*(this + 9) & 1) - 8));
  }

  v17 = *(this + 5);
  if (v17)
  {
    *(this + 6) = v17;
    operator delete(v17);
  }
}

void non-virtual thunk tooperations_research::sat::CircuitPropagator::~CircuitPropagator(operations_research::sat::CircuitPropagator *this)
{
  operations_research::sat::CircuitPropagator::~CircuitPropagator((this - 8));
}

{
  operations_research::sat::CircuitPropagator::~CircuitPropagator((this - 8));

  JUMPOUT(0x23EED9460);
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::resize_impl(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *a1 < 2uLL && v3 > 1;
  if (v5)
  {
    v6 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed + *(a1 + 16);
  }

  v8 = *a1;
  v9 = v3 & 1;
  v10 = v2 < 2;
  v11 = v5;
  v7 = *(a1 + 16);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,4ul,true,true,4ul>(&v7, a1);
}

void absl::lts_20240722::log_internal::MakeCheckOpString<long long,unsigned long long>(uint64_t a1, uint64_t a2, char *a3)
{
  absl::lts_20240722::log_internal::CheckOpMessageBuilder::CheckOpMessageBuilder(&v6, a3);
  MEMORY[0x23EED91B0](&v6, a1);
  v5 = absl::lts_20240722::log_internal::CheckOpMessageBuilder::ForVar2(&v6);
  MEMORY[0x23EED91C0](v5, a2);
  absl::lts_20240722::log_internal::CheckOpMessageBuilder::NewString(&v6);
}

void sub_23C9E0FF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<int,int>,operations_research::sat::Literal>,absl::lts_20240722::hash_internal::Hash<std::pair<int,int>>,std::equal_to<std::pair<int,int>>,std::allocator<std::pair<std::pair<int,int> const,operations_research::sat::Literal>>>::resize_impl(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *a1 < 2uLL && v3 > 1;
  if (v5)
  {
    v6 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *(a1 + 16)) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *(a1 + 16)))) + *(a1 + 20);
  }

  v8 = *a1;
  v9 = v3 & 1;
  v10 = v2 < 2;
  v11 = v5;
  if (v5)
  {
    *&v7 = *(a1 + 16);
    DWORD2(v7) = *(a1 + 24);
  }

  else
  {
    v7 = *(a1 + 16);
  }

  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,12ul,false,true,4ul>(&v7, a1);
}

unint64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<int,int>,operations_research::sat::Literal>,absl::lts_20240722::hash_internal::Hash<std::pair<int,int>>,std::equal_to<std::pair<int,int>>,std::allocator<std::pair<std::pair<int,int> const,operations_research::sat::Literal>>>::find_or_prepare_insert<std::pair<int,int>>@<X0>(unint64_t result@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  if (*result > 1uLL)
  {
    v6 = 0;
    _X10 = *(result + 16);
    __asm { PRFM            #4, [X10] }

    v12 = *a2;
    v13 = a2[1];
    v14 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v12) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v12))) + v13;
    v15 = ((v14 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v14);
    v16 = vdup_n_s8(v15 & 0x7F);
    v17 = ((v15 >> 7) ^ (_X10 >> 12)) & v3;
    v18 = *(_X10 + v17);
    v19 = vceq_s8(v18, v16);
    if (!v19)
    {
      goto LABEL_10;
    }

    do
    {
LABEL_5:
      v20 = (v17 + (__clz(__rbit64(v19)) >> 3)) & v3;
      v21 = (*(result + 24) + 12 * v20);
      if (*v21 == v12 && v21[1] == v13)
      {
        *a3 = _X10 + v20;
        *(a3 + 8) = v21;
        *(a3 + 16) = 0;
        return result;
      }

      v19 &= ((v19 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v19);
LABEL_10:
    while (1)
    {
      v23 = vceq_s8(v18, 0x8080808080808080);
      if (v23)
      {
        break;
      }

      v6 += 8;
      v17 = (v6 + v17) & v3;
      v18 = *(_X10 + v17);
      v19 = vceq_s8(v18, v16);
      if (v19)
      {
        goto LABEL_5;
      }
    }

    v25 = result;
    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(result, v15, (v17 + (__clz(__rbit64(v23)) >> 3)) & v3, v6, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<int,int>,operations_research::sat::Literal>,absl::lts_20240722::hash_internal::Hash<std::pair<int,int>>,std::equal_to<std::pair<int,int>>,std::allocator<std::pair<std::pair<int,int> const,operations_research::sat::Literal>>>::GetPolicyFunctions(void)::value);
    v27 = *(v25 + 24) + 12 * result;
    *a3 = *(v25 + 16) + result;
    *(a3 + 8) = v27;
    *(a3 + 16) = 1;
  }

  else
  {
    if (*(result + 8) > 1uLL)
    {
      v4 = result + 16;
      if (*(result + 16) != *a2 || *(result + 20) != a2[1])
      {
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<int,int>,operations_research::sat::Literal>,absl::lts_20240722::hash_internal::Hash<std::pair<int,int>>,std::equal_to<std::pair<int,int>>,std::allocator<std::pair<std::pair<int,int> const,operations_research::sat::Literal>>>::resize_impl(result, 3);
      }

      v5 = 0;
    }

    else
    {
      *(result + 8) = 2;
      v4 = result + 16;
      v5 = 1;
    }

    *a3 = &absl::lts_20240722::container_internal::kSooControl;
    *(a3 + 8) = v4;
    *(a3 + 16) = v5;
  }

  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<int,int>,operations_research::sat::Literal>,absl::lts_20240722::hash_internal::Hash<std::pair<int,int>>,std::equal_to<std::pair<int,int>>,std::allocator<std::pair<std::pair<int,int> const,operations_research::sat::Literal>>>::transfer_slot_fn(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  *(a2 + 8) = *(a3 + 2);
  *a2 = v3;
}

int64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,int>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_> const,int>>>::find_or_prepare_insert<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>@<X0>(int64_t result@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  if (*result > 1uLL)
  {
    v6 = 0;
    _X10 = *(result + 16);
    __asm { PRFM            #4, [X10] }

    v13 = *a2;
    v14 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v13) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v13));
    v15 = vdup_n_s8(v14 & 0x7F);
    v16 = ((v14 >> 7) ^ (_X10 >> 12)) & v3;
    v17 = *(_X10 + v16);
    v18 = vceq_s8(v17, v15);
    if (!v18)
    {
      goto LABEL_8;
    }

LABEL_5:
    v19 = *(result + 24);
    do
    {
      v20 = (v16 + (__clz(__rbit64(v18)) >> 3)) & v3;
      if (*(v19 + 8 * v20) == v13)
      {
        *a3 = _X10 + v20;
        *(a3 + 8) = v19 + 8 * v20;
        *(a3 + 16) = 0;
        return result;
      }

      v18 &= ((v18 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v18);
LABEL_8:
    while (1)
    {
      v21 = vceq_s8(v17, 0x8080808080808080);
      if (v21)
      {
        break;
      }

      v6 += 8;
      v16 = (v6 + v16) & v3;
      v17 = *(_X10 + v16);
      v18 = vceq_s8(v17, v15);
      if (v18)
      {
        goto LABEL_5;
      }
    }

    v22 = result;
    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(result, v14, (v16 + (__clz(__rbit64(v21)) >> 3)) & v3, v6, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,int>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_> const,int>>>::GetPolicyFunctions(void)::value);
    v24 = *(v22 + 24) + 8 * result;
    *a3 = *(v22 + 16) + result;
    *(a3 + 8) = v24;
    *(a3 + 16) = 1;
  }

  else
  {
    if (*(result + 8) > 1uLL)
    {
      v4 = (result + 16);
      if (*(result + 16) != *a2)
      {
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,int>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_> const,int>>>::resize_impl(result, 3);
      }

      v5 = 0;
    }

    else
    {
      *(result + 8) = 2;
      v4 = (result + 16);
      v5 = 1;
    }

    *a3 = &absl::lts_20240722::container_internal::kSooControl;
    *(a3 + 8) = v4;
    *(a3 + 16) = v5;
  }

  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,int>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_> const,int>>>::resize_impl(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *a1 < 2uLL && v3 > 1;
  if (v5)
  {
    v6 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed + *(a1 + 16);
  }

  v8 = *a1;
  v9 = v3 & 1;
  v10 = v2 < 2;
  v11 = v5;
  v7 = *(a1 + 16);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,8ul,true,true,4ul>(&v7, a1);
}

void *std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal const*,operations_research::sat::Literal const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      v9 = v8;
      v10 = a4;
      operator delete(v9);
      a4 = v10;
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v11 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v11 = a4;
      }

      v12 = v7 >= 0x7FFFFFFFFFFFFFFCLL;
      v13 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v12)
      {
        v13 = v11;
      }

      if (!(v13 >> 62))
      {
        operator new();
      }
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v14 = result[1];
  v15 = v14 - v8;
  if (a4 > (v14 - v8) >> 2)
  {
    v16 = &__src[v15];
    if (v14 == v8)
    {
      v17 = result[1];
      v18 = v17;
      if (v16 == a3)
      {
        goto LABEL_26;
      }
    }

    else
    {
      result = memmove(*result, __src, v15);
      v17 = v6[1];
      v18 = v17;
      if (v16 == a3)
      {
        goto LABEL_26;
      }
    }

    v21 = &a3[v8] - &__src[v14] - 4;
    if (v21 >= 0x1C)
    {
      v18 = v17;
      if ((&v8[v17] - &__src[v14]) >= 0x20)
      {
        v22 = (v21 >> 2) + 1;
        v23 = 4 * (v22 & 0x7FFFFFFFFFFFFFF8);
        v16 += v23;
        v18 = (v17 + v23);
        v24 = (v17 + 16);
        v25 = &__src[v14 - v8 + 16];
        v26 = v22 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v27 = *v25;
          *(v24 - 1) = *(v25 - 1);
          *v24 = v27;
          v24 += 2;
          v25 += 32;
          v26 -= 8;
        }

        while (v26);
        if (v22 == (v22 & 0x7FFFFFFFFFFFFFF8))
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      v18 = v17;
    }

    do
    {
      v28 = *v16;
      v16 += 4;
      *v18 = v28;
      v18 += 4;
    }

    while (v16 != a3);
LABEL_26:
    v20 = v18;
    goto LABEL_27;
  }

  v19 = a3 - __src;
  if (v19)
  {
    result = memmove(*result, __src, v19);
  }

  v20 = &v8[v19];
LABEL_27:
  v6[1] = v20;
  return result;
}

void StronglyConnectedComponentsFinder<int,std::vector<std::vector<int>>,std::vector<std::vector<int>>>::FindStronglyConnectedComponents(std::vector<int> *a1, int a2, void *a3, uint64_t a4)
{
  a1->__end_ = a1->__begin_;
  a1[1].__end_ = a1[1].__begin_;
  __u[0] = 0;
  std::vector<int>::assign(a1 + 2, a2, __u);
  v62 = a1 + 3;
  a1[3].__end_ = a1[3].__begin_;
  begin = a1[2].__begin_;
  v66 = 0;
  v59 = a2;
  if (a2 >= 1)
  {
    v8 = 0;
    LODWORD(v9) = 0;
    v60 = a4;
    v63 = begin;
    while (begin[v8])
    {
LABEL_4:
      v66 = ++v8;
      if (v8 >= v59)
      {
        return;
      }
    }

    std::vector<int>::push_back[abi:ne200100](v62, &v66);
    end = a1[3].__end_;
    while (1)
    {
      v13 = *(end - 1);
      v11 = end - 1;
      v12 = v13;
      v14 = begin[v13];
      if (!v14)
      {
        v21 = a1->__end_;
        value = a1->__end_cap_.__value_;
        if (v21 >= value)
        {
          v23 = a1->__begin_;
          v24 = v21 - a1->__begin_;
          v25 = (v24 >> 2) + 1;
          if (v25 >> 62)
          {
            goto LABEL_81;
          }

          v26 = value - v23;
          if (v26 >> 1 > v25)
          {
            v25 = v26 >> 1;
          }

          if (v26 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v27 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v27 = v25;
          }

          if (v27)
          {
            if (!(v27 >> 62))
            {
              operator new();
            }

LABEL_82:
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v33 = (4 * (v24 >> 2));
          *v33 = v12;
          v22 = v33 + 1;
          memcpy(0, v23, v24);
          a1->__begin_ = 0;
          a1->__end_ = v22;
          a1->__end_cap_.__value_ = 0;
          if (v23)
          {
            operator delete(v23);
          }

          begin = v63;
        }

        else
        {
          *v21 = v12;
          v22 = (v21 + 4);
        }

        a1->__end_ = v22;
        v9 = (v22 - a1->__begin_) >> 2;
        begin[v12] = v9;
        v35 = a1[1].__end_;
        v34 = a1[1].__end_cap_.__value_;
        if (v35 >= v34)
        {
          v37 = a1[1].__begin_;
          v38 = v35 - v37;
          v39 = (v35 - v37) >> 2;
          v40 = v39 + 1;
          if ((v39 + 1) >> 62)
          {
LABEL_81:
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          v41 = v34 - v37;
          if (v41 >> 1 > v40)
          {
            v40 = v41 >> 1;
          }

          if (v41 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v42 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v42 = v40;
          }

          if (v42)
          {
            if (!(v42 >> 62))
            {
              operator new();
            }

            goto LABEL_82;
          }

          *(4 * v39) = v9;
          v36 = 4 * v39 + 4;
          memcpy(0, v37, v38);
          a1[1].__begin_ = 0;
          a1[1].__end_ = v36;
          a1[1].__end_cap_.__value_ = 0;
          if (v37)
          {
            operator delete(v37);
          }

          begin = v63;
        }

        else
        {
          *v35 = v9;
          v36 = (v35 + 4);
        }

        a1[1].__end_ = v36;
        v43 = *a3 + 24 * v12;
        v45 = *v43;
        v44 = *(v43 + 8);
        if (*v43 == v44)
        {
          a4 = v60;
        }

        else
        {
          v46 = 0x7FFFFFFF;
          do
          {
            v47 = *v45;
            v48 = begin[v47];
            if (v48)
            {
              if (v48 < v46)
              {
                v46 = begin[v47];
              }
            }

            else
            {
              v50 = a1[3].__end_;
              v49 = a1[3].__end_cap_.__value_;
              if (v50 >= v49)
              {
                v51 = v62->__begin_;
                v52 = v50 - v62->__begin_;
                v53 = v52 >> 2;
                v54 = (v52 >> 2) + 1;
                if (v54 >> 62)
                {
                  goto LABEL_81;
                }

                v55 = v49 - v51;
                if (v55 >> 1 > v54)
                {
                  v54 = v55 >> 1;
                }

                if (v55 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v56 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v56 = v54;
                }

                if (v56)
                {
                  if (!(v56 >> 62))
                  {
                    operator new();
                  }

                  goto LABEL_82;
                }

                *(4 * v53) = v47;
                v57 = 4 * v53 + 4;
                memcpy(0, v51, v52);
                a1[3].__begin_ = 0;
                a1[3].__end_ = v57;
                a1[3].__end_cap_.__value_ = 0;
                if (v51)
                {
                  operator delete(v51);
                }

                begin = v63;
                a1[3].__end_ = v57;
              }

              else
              {
                *v50 = v47;
                a1[3].__end_ = v50 + 1;
              }
            }

            ++v45;
          }

          while (v45 != v44);
          a4 = v60;
          if (v46 < v9)
          {
            v58 = a1[1].__end_;
            do
            {
              LODWORD(v9) = *(v58 - 2);
              --v58;
            }

            while (v9 > v46);
            a1[1].__end_ = v58;
          }
        }

        goto LABEL_8;
      }

      a1[3].__end_ = v11;
      if (v9 == v14)
      {
        break;
      }

LABEL_8:
      end = a1[3].__end_;
      if (a1[3].__begin_ == end)
      {
        v8 = v66;
        goto LABEL_4;
      }
    }

    v15 = v9 - 1;
    v16 = a1->__end_;
    v17 = &a1->__begin_[v9 - 1];
    v64 = v16;
    *__u = v17;
    v18 = *(a4 + 8);
    if (v18 >= *(a4 + 16))
    {
      v19 = std::vector<std::vector<int>>::__emplace_back_slow_path<int *,int *>(a4, __u, &v64);
    }

    else
    {
      *v18 = 0;
      v18[1] = 0;
      v18[2] = 0;
      if (v16 != v17)
      {
        if (((v16 - v17) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      v19 = v18 + 3;
      *(a4 + 8) = v18 + 3;
      begin = v63;
    }

    *(a4 + 8) = v19;
    v28 = a1->__begin_;
    v29 = a1->__end_ - a1->__begin_;
    if (v15 >= v29)
    {
      if (v15 <= v29)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v30 = v15;
      do
      {
        begin[v28[v30]] = 0x7FFFFFFF;
        v30 = v9;
        LODWORD(v9) = v9 + 1;
      }

      while (v29 > v30);
      if (v15 <= v29)
      {
        if (v15 < v29)
        {
          a1->__end_ = &v28[v15];
        }

        goto LABEL_36;
      }
    }

    std::vector<int>::__append(a1, v15 - v29);
LABEL_36:
    v32 = a1[1].__begin_;
    v31 = a1[1].__end_;
    a1[1].__end_ = v31 - 1;
    if (v32 == v31 - 1)
    {
      LODWORD(v9) = 0;
    }

    else
    {
      LODWORD(v9) = *(v31 - 2);
    }

    goto LABEL_8;
  }
}

void sub_23C9E25DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v12 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v12;
    operator delete(v12);
  }

  *(a10 + 8) = v10;
  _Unwind_Resume(exception_object);
}

void *std::vector<std::vector<int>>::__emplace_back_slow_path<int *,int *>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v3 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v7 = *a2;
  v8 = *a3;
  v6[1] = 0;
  v6[2] = 0;
  *v6 = 0;
  if (v8 != v7)
  {
    if (((v8 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v9 = v6 + 3;
  v10 = *a1;
  v11 = *(a1 + 8) - *a1;
  v12 = v6 - v11;
  memcpy(v12, *a1, v11);
  *a1 = v12;
  *(a1 + 8) = v9;
  *(a1 + 16) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v9;
}

void sub_23C9E2778(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  std::__split_buffer<std::vector<int>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<operations_research::sat::Literal>>,std::vector<operations_research::sat::Literal>*,std::vector<operations_research::sat::Literal>*,std::vector<operations_research::sat::Literal>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      v6 = v5[1];
      if (v6 != *v5)
      {
        if (((v6 - *v5) & 0x8000000000000000) == 0)
        {
          v7 = v6 - *v5;
          operator new();
        }

        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_23C9E2880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v11;
    operator delete(v11);
  }

  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<operations_research::sat::Literal>>,std::vector<operations_research::sat::Literal>*>>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<operations_research::sat::Literal>>,std::vector<operations_research::sat::Literal>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = **(a1 + 16);
      do
      {
        v6 = *(v4 - 24);
        v4 -= 24;
        v5 = v6;
        if (v6)
        {
          *(v2 - 16) = v5;
          operator delete(v5);
        }

        v2 = v4;
      }

      while (v4 != v3);
    }
  }

  return a1;
}

void operations_research::sat::ExactlyOneConstraint(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  if (v3 != *a1)
  {
    if (((v3 - *a1) & 0x8000000000000000) == 0)
    {
      v4 = v3 - *a1;
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  *(a2 + 24) = 0;
  operator new();
}

void sub_23C9E2A54(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__function::__func<operations_research::sat::ExactlyOneConstraint(std::vector<operations_research::sat::Literal> const&)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::ExactlyOneConstraint(std::vector<operations_research::sat::Literal> const&)::{lambda(operations_research::sat::Model *)#1}>,void ()(operations_research::sat::Model *)>::~__func(void *result)
{
  *result = &unk_284F3C0F0;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void std::__function::__func<operations_research::sat::ExactlyOneConstraint(std::vector<operations_research::sat::Literal> const&)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::ExactlyOneConstraint(std::vector<operations_research::sat::Literal> const&)::{lambda(operations_research::sat::Model *)#1}>,void ()(operations_research::sat::Model *)>::~__func(void *a1)
{
  *a1 = &unk_284F3C0F0;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

void sub_23C9E2C14(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[2] = v4;
    operator delete(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<operations_research::sat::ExactlyOneConstraint(std::vector<operations_research::sat::Literal> const&)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::ExactlyOneConstraint(std::vector<operations_research::sat::Literal> const&)::{lambda(operations_research::sat::Model *)#1}>,void ()(operations_research::sat::Model *)>::__clone(uint64_t result, void *a2)
{
  a2[1] = 0;
  *a2 = &unk_284F3C0F0;
  a2[2] = 0;
  a2[3] = 0;
  v3 = *(result + 8);
  v2 = *(result + 16);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_23C9E2CD4(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<operations_research::sat::ExactlyOneConstraint(std::vector<operations_research::sat::Literal> const&)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::ExactlyOneConstraint(std::vector<operations_research::sat::Literal> const&)::{lambda(operations_research::sat::Model *)#1}>,void ()(operations_research::sat::Model *)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void std::__function::__func<operations_research::sat::ExactlyOneConstraint(std::vector<operations_research::sat::Literal> const&)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::ExactlyOneConstraint(std::vector<operations_research::sat::Literal> const&)::{lambda(operations_research::sat::Model *)#1}>,void ()(operations_research::sat::Model *)>::destroy_deallocate(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t std::__function::__func<operations_research::sat::ExactlyOneConstraint(std::vector<operations_research::sat::Literal> const&)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::ExactlyOneConstraint(std::vector<operations_research::sat::Literal> const&)::{lambda(operations_research::sat::Model *)#1}>,void ()(operations_research::sat::Model *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000023CE3FD51)
  {
    return a1 + 8;
  }

  if (((v2 & 0x800000023CE3FD51 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000023CE3FD51))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023CE3FD51 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void operations_research::sat::ExactlyOneConstraint(std::vector<operations_research::sat::Literal> const&)::{lambda(operations_research::sat::Model *)#1}::operator()(void *a1, void *a2)
{
  __p = 0;
  v5 = 0;
  v6 = 0;
  v2 = a1[1];
  if (v2 != *a1)
  {
    if (!(((v2 - *a1) >> 2) >> 60))
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v3 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a2);
  operations_research::sat::SatSolver::AddLinearConstraint(v3, 1, 1, 1, 1, &__p);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }
}

void sub_23C9E2FC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__function::__func<operations_research::sat::SubcircuitConstraint(int,std::vector<int> const&,std::vector<int> const&,std::vector<operations_research::sat::Literal> const&,BOOL)::$_0,std::allocator<operations_research::sat::SubcircuitConstraint(int,std::vector<int> const&,std::vector<int> const&,std::vector<operations_research::sat::Literal> const&,BOOL)::$_0>,void ()(operations_research::sat::Model *)>::~__func(void *a1)
{
  *a1 = &unk_284F3C170;
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    a1[2] = v4;
    operator delete(v4);
  }

  return a1;
}

void std::__function::__func<operations_research::sat::SubcircuitConstraint(int,std::vector<int> const&,std::vector<int> const&,std::vector<operations_research::sat::Literal> const&,BOOL)::$_0,std::allocator<operations_research::sat::SubcircuitConstraint(int,std::vector<int> const&,std::vector<int> const&,std::vector<operations_research::sat::Literal> const&,BOOL)::$_0>,void ()(operations_research::sat::Model *)>::~__func(void *a1)
{
  *a1 = &unk_284F3C170;
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    a1[2] = v4;
    operator delete(v4);
  }

  JUMPOUT(0x23EED9460);
}

uint64_t std::__function::__func<operations_research::sat::SubcircuitConstraint(int,std::vector<int> const&,std::vector<int> const&,std::vector<operations_research::sat::Literal> const&,BOOL)::$_0,std::allocator<operations_research::sat::SubcircuitConstraint(int,std::vector<int> const&,std::vector<int> const&,std::vector<operations_research::sat::Literal> const&,BOOL)::$_0>,void ()(operations_research::sat::Model *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F3C170;
  result = operations_research::sat::SubcircuitConstraint(int,std::vector<int> const&,std::vector<int> const&,std::vector<operations_research::sat::Literal> const&,BOOL)::$_0::$_0(a2 + 8, a1 + 8);
  *(a2 + 87) = 0;
  *(a2 + 85) = 0;
  return result;
}

void std::__function::__func<operations_research::sat::SubcircuitConstraint(int,std::vector<int> const&,std::vector<int> const&,std::vector<operations_research::sat::Literal> const&,BOOL)::$_0,std::allocator<operations_research::sat::SubcircuitConstraint(int,std::vector<int> const&,std::vector<int> const&,std::vector<operations_research::sat::Literal> const&,BOOL)::$_0>,void ()(operations_research::sat::Model *)>::destroy(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    a1[2] = v4;

    operator delete(v4);
  }
}

void std::__function::__func<operations_research::sat::SubcircuitConstraint(int,std::vector<int> const&,std::vector<int> const&,std::vector<operations_research::sat::Literal> const&,BOOL)::$_0,std::allocator<operations_research::sat::SubcircuitConstraint(int,std::vector<int> const&,std::vector<int> const&,std::vector<operations_research::sat::Literal> const&,BOOL)::$_0>,void ()(operations_research::sat::Model *)>::destroy_deallocate(void *__p)
{
  v2 = __p[7];
  if (v2)
  {
    __p[8] = v2;
    operator delete(v2);
  }

  v3 = __p[4];
  if (v3)
  {
    __p[5] = v3;
    operator delete(v3);
  }

  v4 = __p[1];
  if (v4)
  {
    __p[2] = v4;
    operator delete(v4);
  }

  operator delete(__p);
}

void std::__function::__func<operations_research::sat::SubcircuitConstraint(int,std::vector<int> const&,std::vector<int> const&,std::vector<operations_research::sat::Literal> const&,BOOL)::$_0,std::allocator<operations_research::sat::SubcircuitConstraint(int,std::vector<int> const&,std::vector<int> const&,std::vector<operations_research::sat::Literal> const&,BOOL)::$_0>,void ()(operations_research::sat::Model *)>::operator()(uint64_t a1, void **a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = (a1 + 8);
  v4 = *(a1 + 16) - *(a1 + 8);
  if ((v4 >> 2) >= 1)
  {
    v5 = (*(a1 + 40) - *(a1 + 32)) >> 2;
    v6 = (v4 >> 2) & 0x7FFFFFFF;
    if (v5 == v6)
    {
      v7 = (a1 + 56);
      v8 = (*(a1 + 64) - *(a1 + 56)) >> 2;
      if (v8 == v5)
      {
        operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(*a2);
        v9 = *(a1 + 80);
        v16 = 0;
        v17 = 0;
        v15 = 0;
        v18 = &v15;
        v19 = 0;
        if (v9)
        {
          if ((v9 & 0x80000000) == 0)
          {
            operator new();
          }

          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v10 = 0;
        do
        {
          v11 = *(*(a1 + 32) + v10);
          std::vector<int>::push_back[abi:ne200100](24 * *(*v3 + v10), (*v7 + v10));
          std::vector<int>::push_back[abi:ne200100](v15 + 24 * v11, (*v7 + v10));
          v10 += 4;
          --v5;
        }

        while (v5);
        if (v16 != v15)
        {
          v12 = 0;
          v13 = 1;
          do
          {
            if (v13 != 1 || (*(a1 + 84) & 1) == 0)
            {
              operations_research::sat::ExactlyOneConstraint(v15 + 3 * v12, &v18);
            }

            v12 = 1;
            v13 = 2;
          }

          while (0xAAAAAAAAAAAAAAABLL * ((v16 - v15) >> 3) > 1);
        }

        v14 = *(a1 + 84);
        operator new();
      }

      std::__function::__func<operations_research::sat::SubcircuitConstraint(int,std::vector<int> const&,std::vector<int> const&,std::vector<operations_research::sat::Literal> const&,BOOL)::$_0,std::allocator<operations_research::sat::SubcircuitConstraint(int,std::vector<int> const&,std::vector<int> const&,std::vector<operations_research::sat::Literal> const&,BOOL)::$_0>,void ()(operations_research::sat::Model *)>::operator()(v8, (*(a1 + 40) - *(a1 + 32)) >> 2);
    }

    std::__function::__func<operations_research::sat::SubcircuitConstraint(int,std::vector<int> const&,std::vector<int> const&,std::vector<operations_research::sat::Literal> const&,BOOL)::$_0,std::allocator<operations_research::sat::SubcircuitConstraint(int,std::vector<int> const&,std::vector<int> const&,std::vector<operations_research::sat::Literal> const&,BOOL)::$_0>,void ()(operations_research::sat::Model *)>::operator()((*(a1 + 40) - *(a1 + 32)) >> 2, v6);
  }

  std::__function::__func<operations_research::sat::SubcircuitConstraint(int,std::vector<int> const&,std::vector<int> const&,std::vector<operations_research::sat::Literal> const&,BOOL)::$_0,std::allocator<operations_research::sat::SubcircuitConstraint(int,std::vector<int> const&,std::vector<int> const&,std::vector<operations_research::sat::Literal> const&,BOOL)::$_0>,void ()(operations_research::sat::Model *)>::operator()(v4);
}

void sub_23C9E37A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void *a12)
{
  MEMORY[0x23EED9460](v12, 0x10F3C406A1E2F48);
  std::vector<std::vector<int>>::~vector[abi:ne200100](&a9);
  std::vector<std::vector<int>>::~vector[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_23C9E37D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  std::__exception_guard_exceptions<std::vector<std::vector<int>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](va1);
  std::vector<std::vector<int>>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23C9E37F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  std::__exception_guard_exceptions<std::vector<std::vector<int>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23C9E3808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void *a12)
{
  std::vector<std::vector<int>>::~vector[abi:ne200100](&a9);
  std::vector<std::vector<int>>::~vector[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<operations_research::sat::SubcircuitConstraint(int,std::vector<int> const&,std::vector<int> const&,std::vector<operations_research::sat::Literal> const&,BOOL)::$_0,std::allocator<operations_research::sat::SubcircuitConstraint(int,std::vector<int> const&,std::vector<int> const&,std::vector<operations_research::sat::Literal> const&,BOOL)::$_0>,void ()(operations_research::sat::Model *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat20SubcircuitConstraintEiRKNSt3__16vectorIiNS1_9allocatorIiEEEES7_RKNS2_INS0_7LiteralENS3_IS8_EEEEbE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat20SubcircuitConstraintEiRKNSt3__16vectorIiNS1_9allocatorIiEEEES7_RKNS2_INS0_7LiteralENS3_IS8_EEEEbE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat20SubcircuitConstraintEiRKNSt3__16vectorIiNS1_9allocatorIiEEEES7_RKNS2_INS0_7LiteralENS3_IS8_EEEEbE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat20SubcircuitConstraintEiRKNSt3__16vectorIiNS1_9allocatorIiEEEES7_RKNS2_INS0_7LiteralENS3_IS8_EEEEbE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t operations_research::sat::SubcircuitConstraint(int,std::vector<int> const&,std::vector<int> const&,std::vector<operations_research::sat::Literal> const&,BOOL)::$_0::$_0(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  v2 = *(a2 + 8);
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  v4 = *(a2 + 24);
  v3 = *(a2 + 32);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  v6 = *(a2 + 48);
  v5 = *(a2 + 56);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v7 = *(a2 + 72);
  *(result + 76) = *(a2 + 76);
  *(result + 72) = v7;
  return result;
}

void sub_23C9E3A30(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 56) = v5;
    operator delete(v5);
    v6 = *v2;
    if (!*v2)
    {
LABEL_3:
      v7 = *v1;
      if (!*v1)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    v6 = *v2;
    if (!*v2)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 32) = v6;
  operator delete(v6);
  v7 = *v1;
  if (!*v1)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_4:
  *(v1 + 8) = v7;
  operator delete(v7);
  goto LABEL_5;
}

void sub_23C9E3A90()
{
  if (!*v0)
  {
    JUMPOUT(0x23C9E3A54);
  }

  JUMPOUT(0x23C9E3A4CLL);
}

void *operations_research::sat::Model::Delete<operations_research::sat::CircuitPropagator>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F3C1E0;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::CircuitPropagator>::~Delete(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_284F3C1E0;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

void operations_research::sat::BinaryImplicationGraph::ExpandAtMostOneWithWeight<true>(uint64_t a1@<X2>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if ((a1 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    if (((4 * a1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }
}

void sub_23C9E4368(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  v20 = *v18;
  if (*v18)
  {
    *(v18 + 8) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>::ClearAndResize(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if ((300 * ((v4 - v3) >> 2)) >= a2)
  {
    v13 = a2 & ~(a2 >> 31);
    *a1 = v13;
    v15 = (a1 + 8);
    v14 = *(a1 + 8);
    v16 = (v13 + 63) >> 6;
    v17 = *(a1 + 16) - v14;
    v18 = v17 >> 3;
    v25 = 0;
    if (v16 <= v17 >> 3)
    {
      if (v16 < v17 >> 3)
      {
        *(a1 + 16) = &v14[8 * v16];
      }
    }

    else
    {
      std::vector<unsigned long long>::__append(a1 + 8, v16 - (v17 >> 3), &v25);
      v14 = *v15;
    }

    if (v16 >= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v16;
    }

    bzero(v14, 8 * v19);
    *(a1 + 40) = *(a1 + 32);
  }

  else
  {
    if (v3 != v4)
    {
      v5 = *(a1 + 8);
      v6 = *(a1 + 32);
      if (v4 - 1 == v3)
      {
        goto LABEL_27;
      }

      v7 = (((v4 - 1) - v3) >> 2) + 1;
      v6 = &v3[v7 & 0x7FFFFFFFFFFFFFFELL];
      v8 = v3 + 1;
      v9 = v7 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v10 = (*v8 >> 3) & 0x1FFFFFFFFFFFFFF8;
        *(v5 + ((*(v8 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) = 0;
        *(v5 + v10) = 0;
        v8 += 2;
        v9 -= 2;
      }

      while (v9);
      if (v7 != (v7 & 0x7FFFFFFFFFFFFFFELL))
      {
LABEL_27:
        do
        {
          v11 = *v6++;
          *(v5 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) = 0;
        }

        while (v6 != v4);
      }
    }

    *(a1 + 40) = v3;
    if (a2 < 1)
    {
      a2 = 0;
    }

    else if (*a1 > a2)
    {
      v12 = *(a1 + 8) + ((((a2 & 0x7FFFFFFFu) + 63) >> 3) & 0x1FFFFFF8);
      *(v12 - 8) &= ~(-2 << (a2 - 1));
    }

    *a1 = a2;
    v21 = *(a1 + 8);
    v22 = *(a1 + 16);
    v20 = a1 + 8;
    v23 = (a2 + 63) >> 6;
    v25 = 0;
    v24 = (v22 - v21) >> 3;
    if (v23 <= v24)
    {
      if (v23 < v24)
      {
        *(a1 + 16) = v21 + 8 * v23;
      }
    }

    else
    {
      std::vector<unsigned long long>::__append(v20, v23 - v24, &v25);
    }
  }
}

void operations_research::sat::BinaryImplicationGraph::MarkDescendants(uint64_t a1, int a2)
{
  v3 = a1;
  v4 = (*(a1 + 208) - *(a1 + 200)) >> 5;
  v5 = *(a1 + 584);
  v6 = (*(a1 + 592) - v5) >> 2;
  if (v4 <= v6)
  {
    if (v4 < v6)
    {
      *(a1 + 592) = &v5[v4];
    }
  }

  else
  {
    std::vector<int>::__append((a1 + 584), v4 - v6);
    v5 = v3[73];
  }

  v7 = v3[84];
  v8 = a2 >> 6;
  v9 = 1 << a2;
  if ((*(v7 + 8 * v8) & (1 << a2)) == 0)
  {
    v56 = (v3[36] - v3[35]) >> 5;
    v10 = v3[56];
    *v5 = a2;
    v66 = a2;
    v11 = *(v10 + 8 * v8);
    v61 = v10;
    if ((v11 & v9) == 0)
    {
      *(v10 + 8 * v8) = v11 | v9;
      std::vector<int>::push_back[abi:ne200100]((v3 + 59), &v66);
      v10 = v61;
    }

    v12 = 0;
    v13 = 1;
    v59 = v7;
    v60 = v3;
    v58 = v5;
    do
    {
      v57 = v12;
      if ((*(v3[43] + ((v5[v12] >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v5[v12]))
      {
        v14 = v5[v12];
        v15 = v3[25];
        v62 = 32 * v14;
        v17 = (v15 + v62 + 8);
        v16 = *(v15 + v62);
        if (v16)
        {
          v17 = *v17;
        }

        if ((v16 & 0x7FFFFFFFFFFFFFFELL) != 0)
        {
          v18 = 4 * (v16 >> 1);
          do
          {
            v20 = *v17;
            v21 = *v17 >> 6;
            v22 = 1 << *v17;
            if ((v22 & *(v10 + 8 * v21)) == 0 && (*(v7 + 8 * v21) & v22) == 0)
            {
              *(v3[56] + 8 * v21) |= v22;
              v24 = v3[60];
              v23 = v3[61];
              if (v24 < v23)
              {
                *v24 = v20;
                v19 = (v24 + 4);
              }

              else
              {
                v25 = v3[59];
                v26 = v24 - v25;
                v27 = (v24 - v25) >> 2;
                v28 = v27 + 1;
                if ((v27 + 1) >> 62)
                {
LABEL_62:
                  std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                }

                v29 = v23 - v25;
                if (v29 >> 1 > v28)
                {
                  v28 = v29 >> 1;
                }

                if (v29 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v30 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v30 = v28;
                }

                v64 = v13;
                if (v30)
                {
                  if (!(v30 >> 62))
                  {
                    operator new();
                  }

                  goto LABEL_63;
                }

                v3 = v60;
                *(4 * v27) = v20;
                v19 = 4 * v27 + 4;
                memcpy(0, v25, v26);
                v60[59] = 0;
                v60[60] = v19;
                v60[61] = 0;
                if (v25)
                {
                  operator delete(v25);
                }

                v7 = v59;
                v10 = v61;
                v13 = v64;
              }

              v3[60] = v19;
              v5[v13++] = v20;
            }

            ++v17;
            v18 -= 4;
          }

          while (v18);
        }

        if (v14 < v56)
        {
          v31 = (v3[35] + v62);
          v34 = *v31;
          v33 = (v31 + 1);
          v32 = v34;
          if (v34)
          {
            v33 = *v33;
          }

          if ((v32 & 0x7FFFFFFFFFFFFFFELL) != 0)
          {
            v63 = &v33[v32 >> 1];
            do
            {
              v35 = *v33;
              v36 = v3[38];
              v37 = *(v36 + 4 * v35);
              if (v37)
              {
                v38 = (v36 + 4 * (v35 + 1));
                for (i = 4 * v37; i; i -= 4)
                {
                  v41 = *v38;
                  if (v41 != v14)
                  {
                    v42 = v41 ^ 1;
                    v43 = v41 >> 6;
                    v44 = 1 << v42;
                    if ((*(v10 + 8 * v43) & (1 << v42)) == 0 && (*(v7 + 8 * v43) & v44) == 0)
                    {
                      *(v3[56] + 8 * v43) |= v44;
                      v46 = v3[60];
                      v45 = v3[61];
                      if (v46 < v45)
                      {
                        *v46 = v42;
                        v40 = v46 + 4;
                      }

                      else
                      {
                        v47 = v3[59];
                        v48 = v46 - v47;
                        v49 = (v46 - v47) >> 2;
                        v50 = v49 + 1;
                        if ((v49 + 1) >> 62)
                        {
                          goto LABEL_62;
                        }

                        v51 = v45 - v47;
                        if (v51 >> 1 > v50)
                        {
                          v50 = v51 >> 1;
                        }

                        if (v51 >= 0x7FFFFFFFFFFFFFFCLL)
                        {
                          v52 = 0x3FFFFFFFFFFFFFFFLL;
                        }

                        else
                        {
                          v52 = v50;
                        }

                        v65 = v13;
                        if (v52)
                        {
                          if (!(v52 >> 62))
                          {
                            operator new();
                          }

LABEL_63:
                          std::__throw_bad_array_new_length[abi:ne200100]();
                        }

                        v53 = v49;
                        v3 = v60;
                        v54 = (4 * v49);
                        v55 = &v54[-v53];
                        *v54 = v42;
                        v40 = v54 + 1;
                        memcpy(v55, v47, v48);
                        v60[59] = v55;
                        v60[60] = v40;
                        v60[61] = 0;
                        if (v47)
                        {
                          operator delete(v47);
                        }

                        v5 = v58;
                        v7 = v59;
                        v10 = v61;
                        v13 = v65;
                      }

                      v3[60] = v40;
                      v5[v13++] = v42;
                    }
                  }

                  ++v38;
                }
              }

              ++v33;
            }

            while (v33 != v63);
          }
        }
      }

      v12 = v57 + 1;
    }

    while (v57 + 1 < v13);
    v3[72] += v13;
  }
}

void operations_research::sat::BinaryImplicationGraph::ExpandAtMostOneWithWeight<false>(uint64_t a1@<X2>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if ((a1 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    if (((4 * a1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }
}

void sub_23C9E4DFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  v17 = *v15;
  if (*v15)
  {
    *(a11 + 8) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(exception_object);
}

operations_research::sat::ClauseManager *operations_research::sat::ClauseManager::ClauseManager(operations_research::sat::ClauseManager *this, operations_research::sat::Model *a2)
{
  strcpy(this + 8, "ClauseManager");
  *(this + 11) = 0;
  *(this + 31) = 13;
  *(this + 4) = 0xFFFFFFFFLL;
  *this = &unk_284F3C228;
  *(this + 40) = 0u;
  *(this + 22) = 0;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 144) = 1;
  *(this + 19) = operations_research::sat::Model::GetOrCreate<operations_research::sat::BinaryImplicationGraph>(a2);
  v4 = operations_research::sat::Model::GetOrCreate<operations_research::sat::Trail>(a2);
  v5 = v4;
  strcpy(this + 192, "ClauseManager");
  *(this + 20) = v4;
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 215) = 13;
  *(this + 54) = 0;
  *(this + 28) = 0;
  *(this + 29) = 0;
  *(this + 32) = 0;
  *(this + 33) = 0;
  *(this + 30) = 0;
  *(this + 31) = this + 256;
  *(this + 272) = 1;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 280) = 0u;
  *(this + 41) = &unk_23CE31C20;
  *(this + 43) = 0;
  v11 = this;
  v6 = *(v4 + 248);
  v7 = *(v4 + 256);
  v8 = v4 + 248;
  if (v6 == v7)
  {
    std::vector<std::unique_ptr<operations_research::SparsePermutation>>::__append(v4 + 248, 4uLL);
    v6 = *(v5 + 248);
    v7 = *(v5 + 256);
  }

  v9 = v7 - v6;
  if ((v9 >> 3) > 0xF)
  {
    absl::lts_20240722::log_internal::MakeCheckOpString<unsigned long long,long long>(v9 >> 3, 16, "propagators_.size() < 16");
  }

  *(this + 8) = v9 >> 3;
  std::vector<absl::lts_20240722::LogSink *>::push_back[abi:ne200100](v8, &v11);
  return this;
}

void sub_23C9E5038(_Unwind_Exception *a1)
{
  operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>::~SparseBitset(v4);
  v6 = *(v1 + 64);
  if (v6)
  {
    *(v1 + 72) = v6;
    operator delete(v6);
    std::vector<std::vector<int>>::~vector[abi:ne200100](v3);
    *v1 = v2;
    if ((*(v1 + 31) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    std::vector<std::vector<int>>::~vector[abi:ne200100](v3);
    *v1 = v2;
    if ((*(v1 + 31) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(*(v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::Model::GetOrCreate<operations_research::sat::BinaryImplicationGraph>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::BinaryImplicationGraph>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::BinaryImplicationGraph>(void)::d));
    v9 = vdup_n_s8(v8 & 0x7F);
    v10 = ((v8 >> 7) ^ (_X11 >> 12)) & v1;
    v11 = *(_X11 + v10);
    v12 = vceq_s8(v11, v9);
    if (!v12)
    {
      goto LABEL_8;
    }

LABEL_5:
    v13 = a1[6];
    while (1)
    {
      v14 = (v10 + (__clz(__rbit64(v12)) >> 3)) & v1;
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::BinaryImplicationGraph>(void)::d)
      {
        break;
      }

      v12 &= ((v12 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v12)
      {
LABEL_8:
        while (!*&vceq_s8(v11, 0x8080808080808080))
        {
          v2 += 8;
          v10 = (v2 + v10) & v1;
          v11 = *(_X11 + v10);
          v12 = vceq_s8(v11, v9);
          if (v12)
          {
            goto LABEL_5;
          }
        }

LABEL_20:
        operator new();
      }
    }

    v15 = (v13 + 16 * v14);
    if (!(_X11 + v14))
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (a1[4] < 2uLL)
    {
      goto LABEL_20;
    }

    v17 = a1[5];
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::BinaryImplicationGraph>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::BinaryImplicationGraph>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
    if (_ZF)
    {
      v15 = a1 + 5;
    }

    if (!v19)
    {
      goto LABEL_20;
    }
  }

  return v15[1];
}

void operations_research::sat::ClauseManager::~ClauseManager(operations_research::sat::ClauseManager *this)
{
  *this = &unk_284F3C228;
  v2 = *(this + 35);
  v3 = *(this + 36);
  if (v2 == v3)
  {
    *(this + 36) = v2;
    if (!*(this + 39))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  do
  {
    v12 = *v2++;
    v11 = v12;
    if (v12)
    {
      operator delete(v11);
    }
  }

  while (v2 != v3);
  v2 = *(this + 35);
  *(this + 36) = v2;
  if (*(this + 39))
  {
LABEL_3:
    operator delete((*(this + 41) - (*(this + 40) & 1) - 8));
    v2 = *(this + 35);
  }

LABEL_4:
  if (v2)
  {
    *(this + 36) = v2;
    operator delete(v2);
  }

  operations_research::StatsGroup::~StatsGroup((this + 192));
  v4 = *(this + 15);
  if (v4)
  {
    *(this + 16) = v4;
    operator delete(v4);
  }

  v5 = *(this + 12);
  if (v5)
  {
    *(this + 13) = v5;
    operator delete(v5);
  }

  v6 = *(this + 8);
  if (v6)
  {
    *(this + 9) = v6;
    operator delete(v6);
  }

  v7 = *(this + 5);
  if (v7)
  {
    v8 = *(this + 6);
    v9 = *(this + 5);
    if (v8 != v7)
    {
      v10 = *(this + 6);
      do
      {
        v14 = *(v10 - 24);
        v10 -= 24;
        v13 = v14;
        if (v14)
        {
          *(v8 - 16) = v13;
          operator delete(v13);
        }

        v8 = v10;
      }

      while (v10 != v7);
      v9 = *(this + 5);
    }

    *(this + 6) = v7;
    operator delete(v9);
  }

  *this = &unk_284F3BCC8;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  operations_research::sat::ClauseManager::~ClauseManager(this);

  JUMPOUT(0x23EED9460);
}

void operations_research::sat::ClauseManager::Resize(operations_research::sat::ClauseManager *this, int a2)
{
  v4 = 2 * a2;
  v7 = *(this + 5);
  v6 = *(this + 6);
  v5 = this + 40;
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3);
  if (v4 <= v8)
  {
    if (v4 < v8)
    {
      v9 = v7 + 24 * v4;
      if (v6 != v9)
      {
        v10 = v6;
        do
        {
          v12 = *(v10 - 24);
          v10 -= 24;
          v11 = v12;
          if (v12)
          {
            *(v6 - 16) = v11;
            operator delete(v11);
          }

          v6 = v10;
        }

        while (v10 != v9);
      }

      *(this + 6) = v9;
    }
  }

  else
  {
    std::vector<std::vector<operations_research::sat::GenericLiteralWatcher::WatchData>>::__append(v5, v4 - v8);
  }

  v13 = *(this + 8);
  v14 = (*(this + 9) - v13) >> 3;
  if (a2 <= v14)
  {
    if (a2 < v14)
    {
      *(this + 9) = v13 + 8 * a2;
    }
  }

  else
  {
    std::vector<std::unique_ptr<operations_research::SparsePermutation>>::__append(this + 64, a2 - v14);
  }

  operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>::Resize(this + 88, v4);
}

void operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>::Resize(uint64_t a1, int a2)
{
  if (*a1 > a2)
  {
    v3 = *(a1 + 32);
    v2 = *(a1 + 40);
    if (v3 == v2)
    {
      v4 = 0;
      v6 = v2 - v3;
    }

    else
    {
      LODWORD(v4) = 0;
      v5 = *(a1 + 32);
      do
      {
        if (*v5 < a2)
        {
          v3[v4] = *v5;
          LODWORD(v4) = v4 + 1;
        }

        ++v5;
      }

      while (v5 != v2);
      v4 = v4;
      v6 = v2 - v3;
      if (v4 > v6)
      {
        v7 = a1;
        v8 = a2;
        std::vector<int>::__append((a1 + 32), v4 - v6);
        a2 = v8;
        a1 = v7;
        goto LABEL_12;
      }
    }

    if (v6 > v4)
    {
      *(a1 + 40) = &v3[v4];
    }
  }

LABEL_12:
  if (a2 < 1)
  {
    a2 = 0;
  }

  else if (*a1 > a2)
  {
    v9 = *(a1 + 8) + ((((a2 & 0x7FFFFFFFu) + 63) >> 3) & 0x1FFFFFF8);
    *(v9 - 8) &= ~(-2 << (a2 - 1));
  }

  *a1 = a2;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = (a2 + 63) >> 6;
  v14 = 0;
  v13 = (v11 - v10) >> 3;
  if (v12 <= v13)
  {
    if (v12 < v13)
    {
      *(a1 + 16) = v10 + 8 * v12;
    }
  }

  else
  {
    std::vector<unsigned long long>::__append(a1 + 8, v12 - v13, &v14);
  }
}

void std::vector<operations_research::sat::ClauseManager::Watcher>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 4;
  v9 = (v7 >> 4) + 1;
  if (v9 >> 60)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v10 = v3 - v6;
  if (v10 >> 3 > v9)
  {
    v9 = v10 >> 3;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF0)
  {
    v11 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 60))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *(16 * v8) = *a2;
  v5 = 16 * v8 + 16;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

uint64_t operations_research::sat::ClauseManager::PropagateOnFalse(uint64_t a1, int a2, uint64_t a3)
{
  v3 = a2;
  v5 = *(a1 + 40) + 24 * a2;
  v6 = *(a3 + 24);
  v7 = *(v5 + 8);
  v8 = *v5;
  if (*v5 != v7)
  {
    v8 = *v5;
    do
    {
      if (((*(v6 + ((*v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> *v8) & 1) == 0)
      {
        break;
      }

      v8 += 4;
    }

    while (v8 != v7);
  }

  if (v8 == v7)
  {
    v48 = *(v5 + 8);
    *(a1 + 176) += (v7 - *v5) >> 4;
    return 1;
  }

  v9 = v8;
  v53 = a3;
  v54 = *(a1 + 40) + 24 * a2;
  while (((*(v6 + ((*v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> *v9) & 1) != 0)
  {
LABEL_7:
    *v8 = *v9;
    v8 += 4;
LABEL_8:
    v9 += 4;
    if (v9 == v7)
    {
      v44 = *(v5 + 8);
      *(a1 + 176) += (v44 - *v5) >> 4;
      if (v8 == v7)
      {
        return 1;
      }

      v45 = v44 - v7;
      if (v44 != v7)
      {
        memmove(v8, v7, v44 - v7);
      }

      v46 = v8 + v45;
      result = 1;
      goto LABEL_48;
    }
  }

  ++*(a1 + 168);
  v10 = *(v9 + 1);
  v12 = v10[1];
  v11 = (v10 + 1);
  v13 = v12 ^ v10[2] ^ v3;
  v14 = v13 >> 6;
  v15 = 1 << ((v12 ^ *(v10 + 8)) ^ v3);
  if ((v15 & *(v6 + 8 * v14)) != 0)
  {
    *v8 = *v9;
    *v8 = v13;
    v8 += 4;
    ++*(a1 + 176);
    goto LABEL_8;
  }

  v16 = v9[1];
  v17 = *v10;
  if (v16 >= *v10)
  {
    v23 = v9[1];
LABEL_18:
    v24 = *(a1 + 176) + v23 - v16 + 2;
    *(a1 + 176) = v24;
    if (v16 < 3)
    {
      v28 = 0;
      v21 = v17;
    }

    else
    {
      v25 = v10 + 3;
      v26 = 2;
      while (1)
      {
        v27 = *v25++;
        if (((*(v6 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v27 & 0x3F ^ 1u)) & 1) == 0)
        {
          break;
        }

        if (v16 == ++v26)
        {
          LODWORD(v26) = v16;
          v21 = v17;
          goto LABEL_28;
        }
      }

      v21 = v26;
LABEL_28:
      v28 = v26 - 2;
    }

    *(a1 + 176) = v24 + v28;
    if (v21 < v17)
    {
LABEL_30:
      v10[1] = v13;
      v10[2] = *&v11[4 * v21];
      *&v11[4 * v21] = v3;
      v30 = *(a1 + 40) + 24 * v10[2];
      v31 = v21 + 1;
      v32 = *(v30 + 8);
      v33 = *(v30 + 16);
      if (v32 >= v33)
      {
        v34 = *v30;
        v35 = v32 - *v30;
        v36 = v35 >> 4;
        v37 = (v35 >> 4) + 1;
        if (v37 >> 60)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v38 = v33 - v34;
        v39 = (v33 - v34) >> 3;
        if (v39 > v37)
        {
          v37 = v39;
        }

        if (v38 >= 0x7FFFFFFFFFFFFFF0)
        {
          v40 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v40 = v37;
        }

        if (v40)
        {
          if (!(v40 >> 60))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v41 = 16 * v36;
        v42 = *(v9 + 1);
        *v41 = v13;
        *(v41 + 4) = v31;
        *(v41 + 8) = v42;
        v43 = 16 * v36 + 16;
        memcpy(0, v34, v35);
        *v30 = 0;
        *(v30 + 8) = v43;
        *(v30 + 16) = 0;
        if (v34)
        {
          operator delete(v34);
        }

        a3 = v53;
        v5 = v54;
        v3 = a2;
        *(v30 + 8) = v43;
      }

      else
      {
        *v32 = v13;
        *(v32 + 4) = v31;
        *(v32 + 8) = v10;
        *(v30 + 8) = v32 + 16;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v18 = &v10[v16 + 1];
    v19 = v17 - v16;
    v20 = -2;
    v21 = v9[1];
    while (1)
    {
      v22 = *v18++;
      if (((*(v6 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v22 & 0x3F ^ 1u)) & 1) == 0)
      {
        break;
      }

      --v20;
      ++v21;
      if (!--v19)
      {
        v23 = *v10;
        goto LABEL_18;
      }
    }

    *(a1 + 176) += -v20;
    if (v21 < v17)
    {
      goto LABEL_30;
    }
  }

  if (((*(v6 + 8 * v14) >> (v13 & 0x3F ^ 1u)) & 1) == 0)
  {
    v10[1] = v13;
    v10[2] = v3;
    v29 = *(a3 + 12);
    *(*(a1 + 64) + 8 * v29) = v10;
    *(a3 + 8) = *(a3 + 8) & 0xFFFFFFF | (*(a1 + 32) << 28);
    *(*(a3 + 48) + 4 * v29) = v13;
    *(*(a3 + 96) + 8 * (v13 >> 1)) = *(a3 + 8);
    *(*(a3 + 24) + 8 * v14) |= v15;
    ++*(a3 + 12);
    goto LABEL_7;
  }

  *(a3 + 120) = 0;
  v49 = a3;
  std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal const*,operations_research::sat::Literal const*>((a3 + 72), v11, &v11[4 * v17], v17);
  *(v49 + 120) = *(v9 + 1);
  *(a1 + 176) += ((v9 - *v5) >> 4) + 1;
  if (v8 != v9)
  {
    v50 = *(v5 + 8);
    v51 = v50 - v9;
    if (v50 != v9)
    {
      memmove(v8, v9, v50 - v9);
    }

    result = 0;
    v46 = v8 + v51;
LABEL_48:
    *(v5 + 8) = v46;
    return result;
  }

  return 0;
}

uint64_t operations_research::sat::Trail::Enqueue(uint64_t result, int a2, unsigned __int8 a3)
{
  v3 = *(result + 12);
  *(result + 8) = *(result + 8) & 0xFFFFFFF | (a3 << 28);
  *(*(result + 48) + 4 * v3) = a2;
  *(*(result + 96) + 8 * (a2 >> 1)) = *(result + 8);
  *(*(result + 24) + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  ++*(result + 12);
  return result;
}

uint64_t operations_research::sat::ClauseManager::Propagate(operations_research::sat::ClauseManager *this, operations_research::sat::Trail *a2)
{
  v4 = *(a2 + 3);
  while (*(a2 + 3) == v4)
  {
    v5 = *(this + 9);
    if (v5 >= v4)
    {
      break;
    }

    *(this + 9) = v5 + 1;
    if ((operations_research::sat::ClauseManager::PropagateOnFalse(this, *(*(a2 + 6) + 4 * v5) ^ 1u, a2) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

int *operations_research::sat::ClauseManager::Reason(operations_research::sat::ClauseManager *this, const operations_research::sat::Trail *a2, int a3)
{
  v3 = *(*(this + 8) + 8 * a3);
  v5 = *v3;
  return v3 + 2;
}

uint64_t operations_research::sat::ClauseManager::AddClause(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = *(a1 + 160);
  v7 = operator new(4 * a3 + 4);
  *v7 = a3;
  if (a3)
  {
    if (a3 < 0x14)
    {
      goto LABEL_3;
    }

    v9 = 0;
    v8 = 0;
    if ((a3 - 1) > 0x7FFFFFFE || (a3 - 1) >> 31)
    {
      goto LABEL_4;
    }

    if (v7 - a2 + 4 < 0x20)
    {
LABEL_3:
      v8 = 0;
      v9 = 0;
    }

    else
    {
      v8 = a3 & 0xFFFFFFF8;
      v9 = a3 & 0xFFFFFFF8;
      v12 = (a2 + 16);
      v13 = v7 + 5;
      v14 = v8;
      do
      {
        v15 = *v12;
        *(v13 - 1) = *(v12 - 1);
        *v13 = v15;
        v12 += 2;
        v13 += 2;
        v14 -= 8;
      }

      while (v14);
      if (a3 == v8)
      {
        goto LABEL_6;
      }
    }

LABEL_4:
    v10 = v9 + 1;
    do
    {
      v7[v8 + 1] = *(a2 + 4 * v8);
      v8 = v10++;
    }

    while (a3 > v8);
  }

LABEL_6:
  v16 = v7;
  std::vector<absl::lts_20240722::LogSink *>::push_back[abi:ne200100](a1 + 280, &v16);
  return operations_research::sat::ClauseManager::AttachAndPropagate(a1, v16, v6);
}

uint64_t operations_research::sat::ClauseManager::AddClause(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = operator new(4 * a3 + 4);
  *v8 = a3;
  if (a3)
  {
    if (a3 < 0x14)
    {
      goto LABEL_3;
    }

    v10 = 0;
    v9 = 0;
    if ((a3 - 1) > 0x7FFFFFFE || (a3 - 1) >> 31)
    {
      goto LABEL_4;
    }

    if (v8 - a2 + 4 < 0x20)
    {
LABEL_3:
      v9 = 0;
      v10 = 0;
    }

    else
    {
      v9 = a3 & 0xFFFFFFF8;
      v10 = a3 & 0xFFFFFFF8;
      v13 = (a2 + 16);
      v14 = v8 + 5;
      v15 = v9;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 8;
      }

      while (v15);
      if (a3 == v9)
      {
        goto LABEL_6;
      }
    }

LABEL_4:
    v11 = v10 + 1;
    do
    {
      v8[v9 + 1] = *(a2 + 4 * v9);
      v9 = v11++;
    }

    while (a3 > v9);
  }

LABEL_6:
  v17 = v8;
  std::vector<absl::lts_20240722::LogSink *>::push_back[abi:ne200100](a1 + 280, &v17);
  return operations_research::sat::ClauseManager::AttachAndPropagate(a1, v17, a4);
}

uint64_t operations_research::sat::ClauseManager::AttachAndPropagate(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v5 = (a2 + 1);
  v6 = *a2;
  if (v6 < 1)
  {
    return 0;
  }

  v27 = v3;
  v28 = v4;
  v7 = 0;
  v8 = *(a3 + 24);
  v9 = 1;
  v10 = v6;
  do
  {
    v11 = a2[v9];
    if (((*(v8 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v11 & 0x3F ^ 1u)) & 1) == 0)
    {
      a2[v9] = v5[v7];
      v5[v7] = v11;
      if (v7 == 1)
      {
        goto LABEL_16;
      }

      v7 = 1;
    }

    ++v9;
    --v10;
  }

  while (v10);
  if (v7)
  {
    v12 = *(a3 + 96);
    if (v6 >= 3)
    {
      v13 = *(v12 + 8 * (a2[2] >> 1)) & 0xFFFFFFF;
      v14 = (a2 + 3);
      v15 = v6 - 2;
      do
      {
        v16 = *(v12 + 8 * (*v14 >> 1)) & 0xFFFFFFF;
        if (v16 > v13)
        {
          v17 = a2[2];
          a2[2] = *v14;
          *v14 = v17;
          v13 = v16;
        }

        ++v14;
        --v15;
      }

      while (v15);
    }

    v19 = *v5;
    v20 = *v5 >> 6;
    if (((1 << v19) & *(*(a3 + 24) + 8 * v20)) == 0)
    {
      v21 = *(a3 + 12);
      *(*(a1 + 64) + 8 * v21) = a2;
      *(a3 + 8) = *(a3 + 8) & 0xFFFFFFF | (*(a1 + 32) << 28);
      *(*(a3 + 48) + 4 * v21) = v19;
      *(v12 + 8 * (v19 >> 1)) = *(a3 + 8);
      *(*(a3 + 24) + 8 * v20) |= 1 << v19;
      ++*(a3 + 12);
    }

LABEL_16:
    ++*(a1 + 184);
    v22 = *(a1 + 40) + 24 * a2[1];
    LODWORD(v26) = a2[2];
    DWORD1(v26) = 2;
    *(&v26 + 1) = a2;
    std::vector<operations_research::sat::ClauseManager::Watcher>::push_back[abi:ne200100](v22, &v26);
    v25 = *(a1 + 40) + 24 * a2[2];
    LODWORD(v26) = a2[1];
    DWORD1(v26) = 2;
    *(&v26 + 1) = a2;
    std::vector<operations_research::sat::ClauseManager::Watcher>::push_back[abi:ne200100](v25, &v26);
    return 1;
  }

  return 0;
}

unsigned int *operations_research::sat::ClauseManager::AddRemovableClause(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = operator new(v6 - *a2 + 4);
  v8 = (v6 - v5) >> 2;
  *v7 = v8;
  if (v6 != v5)
  {
    if (v8 < 0x14 || ((v8 - 1) <= 0x7FFFFFFE ? (v9 = (v8 - 1) >> 31 == 0) : (v9 = 0), !v9 || v7 - v5 + 4 < 0x20))
    {
      v10 = 0;
      v11 = 0;
LABEL_10:
      v12 = v11 + 1;
      do
      {
        v7[v10 + 1] = *(v5 + 4 * v10);
        v10 = v12++;
      }

      while (v8 > v10);
      goto LABEL_12;
    }

    v10 = ((v6 - v5) >> 2) & 0xFFFFFFF8;
    v11 = v8 & 0xFFFFFFF8;
    v14 = (v5 + 16);
    v15 = v7 + 5;
    v16 = v10;
    do
    {
      v17 = *v14;
      *(v15 - 1) = *(v14 - 1);
      *v15 = v17;
      v14 += 2;
      v15 += 2;
      v16 -= 8;
    }

    while (v16);
    if (v8 != v10)
    {
      goto LABEL_10;
    }
  }

LABEL_12:
  v19 = v7;
  std::vector<absl::lts_20240722::LogSink *>::push_back[abi:ne200100](a1 + 280, &v19);
  if ((operations_research::sat::ClauseManager::AttachAndPropagate(a1, v19, a3) & 1) == 0)
  {
    operations_research::sat::ClauseManager::AddRemovableClause(v18);
  }

  return v19;
}

void operations_research::sat::ClauseManager::LazyDetach(uint64_t a1, _DWORD *a2)
{
  --*(a1 + 184);
  v4 = *a2;
  v5 = *(a1 + 344);
  if (v5)
  {
    _CF = v4 >= 3;
  }

  else
  {
    _CF = 0;
  }

  if (_CF)
  {
    operations_research::sat::DratProofHandler::DeleteClause(v5, a2 + 1, v4);
  }

  v7 = 0;
  _X9 = *(a1 + 328);
  __asm { PRFM            #4, [X9] }

  v13 = a2 + ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a2)));
  v14 = ((v13 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v13);
  v15 = *(a1 + 312);
  v16 = vdup_n_s8(v14 & 0x7F);
  v17 = ((v14 >> 7) ^ (_X9 >> 12)) & v15;
  v18 = *(_X9 + v17);
  v19 = vceq_s8(v18, v16);
  if (v19)
  {
LABEL_8:
    while (1)
    {
      v20 = (v17 + (__clz(__rbit64(v19)) >> 3)) & v15;
      if (*(*(a1 + 336) + 24 * v20) == a2)
      {
        break;
      }

      v19 &= ((v19 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v19)
      {
        goto LABEL_10;
      }
    }

    absl::lts_20240722::container_internal::EraseMetaOnly((a1 + 312), v20);
  }

  else
  {
LABEL_10:
    while (!*&vceq_s8(v18, 0x8080808080808080))
    {
      v7 += 8;
      v17 = (v7 + v17) & v15;
      v18 = *(_X9 + v17);
      v19 = vceq_s8(v18, v16);
      if (v19)
      {
        goto LABEL_8;
      }
    }
  }

  *a2 = 0;
  *(a1 + 144) = 0;
  v26 = a2[1];
  v21 = v26 >> 6;
  v22 = *(a1 + 96);
  v23 = *(v22 + 8 * v21);
  if ((v23 & (1 << v26)) == 0)
  {
    *(v22 + 8 * v21) = v23 | (1 << v26);
    std::vector<int>::push_back[abi:ne200100](a1 + 120, &v26);
    v22 = *(a1 + 96);
  }

  v27 = a2[2];
  v24 = v27 >> 6;
  v25 = *(v22 + 8 * v24);
  if ((v25 & (1 << v27)) == 0)
  {
    *(v22 + 8 * v24) = v25 | (1 << v27);
    std::vector<int>::push_back[abi:ne200100](a1 + 120, &v27);
  }
}

void operations_research::sat::ClauseManager::Detach(void *a1, _DWORD *a2)
{
  --a1[23];
  v4 = *a2;
  v5 = a1[43];
  if (v5)
  {
    _CF = v4 >= 3;
  }

  else
  {
    _CF = 0;
  }

  if (_CF)
  {
    operations_research::sat::DratProofHandler::DeleteClause(v5, a2 + 1, v4);
  }

  v7 = 0;
  _X9 = a1[41];
  __asm { PRFM            #4, [X9] }

  v13 = a2 + ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a2)));
  v14 = ((v13 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v13);
  v15 = a1[39];
  v16 = vdup_n_s8(v14 & 0x7F);
  v17 = ((v14 >> 7) ^ (_X9 >> 12)) & v15;
  v18 = *(_X9 + v17);
  v19 = vceq_s8(v18, v16);
  if (v19)
  {
LABEL_8:
    while (1)
    {
      v20 = (v17 + (__clz(__rbit64(v19)) >> 3)) & v15;
      if (*(a1[42] + 24 * v20) == a2)
      {
        break;
      }

      v19 &= ((v19 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v19)
      {
        goto LABEL_10;
      }
    }

    absl::lts_20240722::container_internal::EraseMetaOnly(a1 + 39, v20);
  }

  else
  {
LABEL_10:
    while (!*&vceq_s8(v18, 0x8080808080808080))
    {
      v7 += 8;
      v17 = (v7 + v17) & v15;
      v18 = *(_X9 + v17);
      v19 = vceq_s8(v18, v16);
      if (v19)
      {
        goto LABEL_8;
      }
    }
  }

  *a2 = 0;
  v21 = a2[2];
  v22 = a2[1];
  *(a1[12] + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v22);
  v23 = a1[5] + 24 * v22;
  v25 = *v23;
  v24 = *(v23 + 8);
  if (*v23 != v24)
  {
    v26 = v25 + 1;
    while (**(v26 - 1))
    {
      _ZF = v26++ == v24;
      if (_ZF)
      {
        goto LABEL_29;
      }
    }

    v25 = v26 - 1;
    if (v26 - 1 != v24 && v26 != v24)
    {
      do
      {
        if (**(v26 + 1))
        {
          *v25++ = *v26;
        }

        ++v26;
      }

      while (v26 != v24);
      v24 = *(v23 + 8);
    }
  }

  if (v25 != v24)
  {
    *(v23 + 8) = v25;
  }

LABEL_29:
  *(a1[12] + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v21);
  v27 = a1[5] + 24 * v21;
  v29 = *v27;
  v28 = *(v27 + 8);
  if (*v27 != v28)
  {
    for (i = v29 + 1; **(i - 1); ++i)
    {
      _ZF = i == v28;
      if (_ZF)
      {
        return;
      }
    }

    v29 = i - 1;
    if (i - 1 != v28 && i != v28)
    {
      do
      {
        if (**(i + 1))
        {
          *v29++ = *i;
        }

        ++i;
      }

      while (i != v28);
      v28 = *(v27 + 8);
    }
  }

  if (v29 != v28)
  {
    *(v27 + 8) = v29;
  }
}

void operations_research::sat::ClauseManager::DetachAllClauses(operations_research::sat::ClauseManager *this)
{
  v1 = *(this + 272);
  if (v1 == 1)
  {
    *(this + 272) = 0;
    *(this + 144) = v1;
    *(this + 23) = 0;
    v4 = *(this + 5);
    v3 = *(this + 6);
    if (v3 != v4)
    {
      v5 = *(this + 6);
      do
      {
        v7 = *(v5 - 24);
        v5 -= 24;
        v6 = v7;
        if (v7)
        {
          *(v3 - 16) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v4);
    }

    *(this + 6) = v4;
  }
}

void operations_research::sat::ClauseManager::AttachAllClauses(operations_research::sat::ClauseManager *this)
{
  if ((*(this + 272) & 1) == 0)
  {
    *(this + 272) = 1;
    bzero(*(this + 12), *(this + 13) - *(this + 12));
    v2 = *(this + 5);
    *(this + 16) = *(this + 15);
    v3 = *(this + 22);
    v4 = *(this + 6);
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v2) >> 3);
    if (v3 <= v5)
    {
      if (v3 < v5)
      {
        v6 = v2 + 24 * v3;
        if (v4 != v6)
        {
          v7 = *(this + 6);
          do
          {
            v9 = *(v7 - 24);
            v7 -= 24;
            v8 = v9;
            if (v9)
            {
              *(v4 - 16) = v8;
              operator delete(v8);
            }

            v4 = v7;
          }

          while (v7 != v6);
        }

        *(this + 6) = v6;
      }
    }

    else
    {
      std::vector<std::vector<operations_research::sat::GenericLiteralWatcher::WatchData>>::__append(this + 40, v3 - v5);
    }

    operations_research::sat::ClauseManager::DeleteRemovedClauses(this);
    v10 = *(this + 35);
    v11 = *(this + 36);
    while (v10 != v11)
    {
      v12 = *v10++;
      ++*(this + 23);
      v13 = *(this + 5) + 24 * *(v12 + 4);
      LODWORD(v15) = *(v12 + 8);
      DWORD1(v15) = 2;
      *(&v15 + 1) = v12;
      std::vector<operations_research::sat::ClauseManager::Watcher>::push_back[abi:ne200100](v13, &v15);
      v14 = *(this + 5) + 24 * *(v12 + 8);
      LODWORD(v15) = *(v12 + 4);
      DWORD1(v15) = 2;
      *(&v15 + 1) = v12;
      std::vector<operations_research::sat::ClauseManager::Watcher>::push_back[abi:ne200100](v14, &v15);
    }
  }
}

void operations_research::sat::ClauseManager::DeleteRemovedClauses(operations_research::sat::ClauseManager *this)
{
  v2 = *(this + 35);
  v3 = *(this + 36) - v2;
  if ((v3 >> 3) < 1)
  {
    v5 = 0;
    v9 = 0;
    v11 = v3 >> 3 == 0;
LABEL_16:
    if (v11)
    {
      if (*(this + 76) > v5)
      {
        goto LABEL_22;
      }
    }

    else
    {
      *(this + 36) = v2 + 8 * v9;
      if (*(this + 76) > v5)
      {
        goto LABEL_22;
      }
    }

LABEL_19:
    if (*(this + 77) > v5)
    {
      goto LABEL_23;
    }

    return;
  }

  v4 = 0;
  v5 = 0;
  v6 = (v3 >> 3) & 0x7FFFFFFF;
  do
  {
    while (1)
    {
      if (v4 == *(this + 76))
      {
        *(this + 76) = v5;
        if (v4 != *(this + 77))
        {
          goto LABEL_3;
        }
      }

      else if (v4 != *(this + 77))
      {
        goto LABEL_3;
      }

      *(this + 77) = v5;
LABEL_3:
      v7 = *(this + 35);
      v8 = *(v7 + 8 * v4);
      if (!*v8)
      {
        break;
      }

      *(v7 + 8 * v5++) = v8;
      if (v6 == ++v4)
      {
        goto LABEL_12;
      }
    }

    operator delete(v8);
    ++v4;
  }

  while (v6 != v4);
LABEL_12:
  v2 = *(this + 35);
  v9 = v5;
  v10 = (*(this + 36) - v2) >> 3;
  v11 = v5 >= v10;
  if (v5 <= v10)
  {
    goto LABEL_16;
  }

  std::vector<std::unique_ptr<operations_research::SparsePermutation>>::__append(this + 280, v5 - v10);
  if (*(this + 76) <= v5)
  {
    goto LABEL_19;
  }

LABEL_22:
  *(this + 76) = v5;
  if (*(this + 77) > v5)
  {
LABEL_23:
    *(this + 77) = v5;
  }
}

BOOL operations_research::sat::ClauseManager::InprocessingFixLiteral(void *a1, int a2)
{
  v4 = a1[43];
  if (v4)
  {
    v13 = a2;
    operations_research::sat::DratProofHandler::AddClause(v4, &v13, 1);
  }

  v5 = a1[20];
  v6 = a2 >> 6;
  result = 1;
  if ((*(*(v5 + 24) + 8 * v6) & (1 << a2)) == 0)
  {
    v8 = *(v5 + 12);
    *(v5 + 8) = *(v5 + 8) & 0xFFFFFFF | 0x10000000;
    *(*(v5 + 48) + 4 * v8) = a2;
    *(*(v5 + 96) + 8 * (a2 >> 1)) = *(v5 + 8);
    *(*(v5 + 24) + 8 * v6) |= 1 << a2;
    ++*(v5 + 12);
    v10 = a1[19];
    v9 = a1[20];
    if (!*(v10 + 224) && *(v10 + 280) == *(v10 + 288))
    {
      *(v10 + 36) = *(v9 + 12);
      return 1;
    }

    else
    {
      *(v9 + 8) = *(v9 + 8) & 0xFFFFFFF | (*(v10 + 32) << 28);
      while (1)
      {
        v11 = *(v10 + 36);
        v12 = *(v9 + 12);
        result = v11 >= v12;
        if (v11 >= v12)
        {
          break;
        }

        *(v10 + 36) = v11 + 1;
        if ((operations_research::sat::BinaryImplicationGraph::PropagateOnTrue(v10, *(*(v9 + 48) + 4 * v11), v9) & 1) == 0)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

BOOL operations_research::sat::BinaryImplicationGraph::Propagate(operations_research::sat::BinaryImplicationGraph *this, operations_research::sat::Trail *a2)
{
  if (!*(this + 28) && *(this + 35) == *(this + 36))
  {
    *(this + 9) = *(a2 + 3);
    return 1;
  }

  else
  {
    *(a2 + 2) = *(a2 + 2) & 0xFFFFFFF | (*(this + 8) << 28);
    while (1)
    {
      v4 = *(this + 9);
      v5 = *(a2 + 3);
      result = v4 >= v5;
      if (v4 >= v5)
      {
        break;
      }

      *(this + 9) = v4 + 1;
      if ((operations_research::sat::BinaryImplicationGraph::PropagateOnTrue(this, *(*(a2 + 6) + 4 * v4), a2) & 1) == 0)
      {
        return 0;
      }
    }
  }

  return result;
}

void operations_research::sat::ClauseManager::InprocessingRemoveClause(unint64_t *a1, int *a2)
{
  v4 = a1[43];
  if (v4)
  {
    operations_research::sat::DratProofHandler::DeleteClause(v4, a2 + 1, *a2);
  }

  v5 = 0;
  _X9 = a1[41];
  __asm { PRFM            #4, [X9] }

  v12 = a2 + ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a2)));
  v13 = ((v12 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v12);
  v14 = a1[39];
  v15 = vdup_n_s8(v13 & 0x7F);
  v16 = ((v13 >> 7) ^ (_X9 >> 12)) & v14;
  v17 = *(_X9 + v16);
  v18 = vceq_s8(v17, v15);
  if (v18)
  {
LABEL_4:
    while (1)
    {
      v19 = (v16 + (__clz(__rbit64(v18)) >> 3)) & v14;
      if (*(a1[42] + 24 * v19) == a2)
      {
        break;
      }

      v18 &= ((v18 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v18)
      {
        goto LABEL_6;
      }
    }

    absl::lts_20240722::container_internal::EraseMetaOnly(a1 + 39, v19);
  }

  else
  {
LABEL_6:
    while (!*&vceq_s8(v17, 0x8080808080808080))
    {
      v5 += 8;
      v16 = (v5 + v16) & v14;
      v17 = *(_X9 + v16);
      v18 = vceq_s8(v17, v15);
      if (v18)
      {
        goto LABEL_4;
      }
    }
  }

  *a2 = 0;
}

BOOL operations_research::sat::ClauseManager::InprocessingRewriteClause(uint64_t a1, int *a2, int *a3, uint64_t a4)
{
  switch(a4)
  {
    case 0:
      return 0;
    case 2:
      if (!operations_research::sat::BinaryImplicationGraph::AddBinaryClause(*(a1 + 152), *a3, a3[1]))
      {
        operations_research::sat::ClauseManager::InprocessingRewriteClause(&v52);
      }

      v23 = *(a1 + 344);
      if (v23)
      {
        operations_research::sat::DratProofHandler::DeleteClause(v23, a2 + 1, *a2);
      }

      v24 = 0;
      _X9 = *(a1 + 328);
      __asm { PRFM            #4, [X9] }

      v27 = a2 + ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a2)));
      v28 = ((v27 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v27);
      v29 = *(a1 + 312);
      v30 = vdup_n_s8(v28 & 0x7F);
      v31 = ((v28 >> 7) ^ (_X9 >> 12)) & v29;
      v32 = *(_X9 + v31);
      v33 = vceq_s8(v32, v30);
      if (!v33)
      {
LABEL_19:
        while (!*&vceq_s8(v32, 0x8080808080808080))
        {
          v24 += 8;
          v31 = (v24 + v31) & v29;
          v32 = *(_X9 + v31);
          v33 = vceq_s8(v32, v30);
          if (v33)
          {
            goto LABEL_17;
          }
        }

        goto LABEL_33;
      }

LABEL_17:
      while (1)
      {
        v22 = (v31 + (__clz(__rbit64(v33)) >> 3)) & v29;
        if (*(*(a1 + 336) + 24 * v22) == a2)
        {
          break;
        }

        v33 &= ((v33 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v33)
        {
          goto LABEL_19;
        }
      }

      break;
    case 1:
      result = operations_research::sat::ClauseManager::InprocessingFixLiteral(a1, *a3);
      if (!result)
      {
        return result;
      }

      v7 = *(a1 + 344);
      if (v7)
      {
        operations_research::sat::DratProofHandler::DeleteClause(v7, a2 + 1, *a2);
      }

      v8 = 0;
      _X9 = *(a1 + 328);
      __asm { PRFM            #4, [X9] }

      v15 = a2 + ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a2)));
      v16 = ((v15 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v15);
      v17 = *(a1 + 312);
      v18 = vdup_n_s8(v16 & 0x7F);
      v19 = ((v16 >> 7) ^ (_X9 >> 12)) & v17;
      v20 = *(_X9 + v19);
      v21 = vceq_s8(v20, v18);
      if (!v21)
      {
LABEL_10:
        while (!*&vceq_s8(v20, 0x8080808080808080))
        {
          v8 += 8;
          v19 = (v8 + v19) & v17;
          v20 = *(_X9 + v19);
          v21 = vceq_s8(v20, v18);
          if (v21)
          {
            goto LABEL_8;
          }
        }

        goto LABEL_33;
      }

LABEL_8:
      while (1)
      {
        v22 = (v19 + (__clz(__rbit64(v21)) >> 3)) & v17;
        if (*(*(a1 + 336) + 24 * v22) == a2)
        {
          break;
        }

        v21 &= ((v21 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v21)
        {
          goto LABEL_10;
        }
      }

      break;
    default:
      v34 = *(a1 + 344);
      if (v34)
      {
        v35 = a3;
        v36 = a4;
        operations_research::sat::DratProofHandler::AddClause(v34, a3, a4);
        operations_research::sat::DratProofHandler::DeleteClause(*(a1 + 344), a2 + 1, *a2);
        a4 = v36;
        a3 = v35;
      }

      if (*(a1 + 272) == 1)
      {
        --*(a1 + 184);
        *a2 = 0;
        v37 = a2[2];
        v38 = a2[1];
        *(*(a1 + 96) + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v38);
        v39 = *(a1 + 40) + 24 * v38;
        v41 = *v39;
        v40 = *(v39 + 8);
        if (*v39 != v40)
        {
          v42 = v41 + 1;
          while (**(v42 - 1))
          {
            _ZF = v42++ == v40;
            if (_ZF)
            {
              goto LABEL_43;
            }
          }

          v41 = v42 - 1;
          if (v42 - 1 != v40 && v42 != v40)
          {
            do
            {
              if (**(v42 + 1))
              {
                *v41++ = *v42;
              }

              ++v42;
            }

            while (v42 != v40);
            v40 = *(v39 + 8);
          }
        }

        if (v41 != v40)
        {
          *(v39 + 8) = v41;
        }

LABEL_43:
        *(*(a1 + 96) + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v37);
        v43 = *(a1 + 40) + 24 * v37;
        v45 = *v43;
        v44 = *(v43 + 8);
        if (*v43 != v44)
        {
          v46 = v45 + 1;
          while (**(v46 - 1))
          {
            _ZF = v46++ == v44;
            if (_ZF)
            {
              goto LABEL_58;
            }
          }

          v45 = v46 - 1;
          if (v46 - 1 != v44 && v46 != v44)
          {
            do
            {
              if (**(v46 + 1))
              {
                *v45++ = *v46;
              }

              ++v46;
            }

            while (v46 != v44);
            v44 = *(v43 + 8);
          }
        }

        if (v45 != v44)
        {
          *(v43 + 8) = v45;
        }
      }

LABEL_58:
      *a2 = 0;
      if ((a4 & 0x3FFFFFFFFFFFFFFFLL) != 0)
      {
        v47 = 4 * a4;
        do
        {
          v48 = *a3++;
          v49 = *a2;
          *a2 = v49 + 1;
          a2[v49 + 1] = v48;
          v47 -= 4;
        }

        while (v47);
      }

      if (*(a1 + 272) == 1)
      {
        ++*(a1 + 184);
        v50 = *(a1 + 40) + 24 * a2[1];
        LODWORD(v52) = a2[2];
        DWORD1(v52) = 2;
        *(&v52 + 1) = a2;
        std::vector<operations_research::sat::ClauseManager::Watcher>::push_back[abi:ne200100](v50, &v52);
        v51 = *(a1 + 40) + 24 * a2[2];
        LODWORD(v52) = a2[1];
        DWORD1(v52) = 2;
        *(&v52 + 1) = a2;
        std::vector<operations_research::sat::ClauseManager::Watcher>::push_back[abi:ne200100](v51, &v52);
      }

      return 1;
  }

  absl::lts_20240722::container_internal::EraseMetaOnly((a1 + 312), v22);
LABEL_33:
  *a2 = 0;
  return 1;
}

BOOL operations_research::sat::BinaryImplicationGraph::AddBinaryClause(uint64_t a1, int a2, int a3)
{
  v3 = a3;
  v4 = a2;
  v44 = *MEMORY[0x277D85DE8];
  v40 = a3;
  v41 = a2;
  if (!*(a1 + 224) && *(a1 + 280) == *(a1 + 288))
  {
    *(a1 + 36) = *(*(a1 + 136) + 12);
  }

  v6 = *(a1 + 144);
  if (v6)
  {
    v43[0] = a2;
    v43[1] = a3;
    operations_research::sat::DratProofHandler::AddClause(v6, v43, 2);
  }

  v7 = *(a1 + 672);
  if ((*(v7 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v4))
  {
    v4 = *(*(a1 + 696) + 4 * v4);
    v41 = v4;
  }

  if ((*(v7 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v3))
  {
    v3 = *(*(a1 + 696) + 4 * v3);
    v40 = v3;
  }

  if ((v4 ^ v3) == 1)
  {
    goto LABEL_11;
  }

  if (v4 != v3)
  {
    v11 = v4 ^ 1u;
    v12 = *(a1 + 816);
    ++*(v12 + 4 * v11);
    ++*(v12 + 4 * (v3 ^ 1));
    v13 = v11 << 32;
    v14 = *(a1 + 200);
    v15 = (v14 + (v13 >> 27));
    v17 = v15 + 1;
    v16 = *v15;
    if (*v15)
    {
      v17 = v15[1];
      v18 = v15[2];
    }

    else
    {
      v18 = 6;
    }

    if (v16 >> 1 == v18)
    {
      absl::lts_20240722::inlined_vector_internal::Storage<operations_research::sat::Literal,6ul,std::allocator<operations_research::sat::Literal>>::EmplaceBackSlow<operations_research::sat::Literal const&>(v15);
    }

    *(v17 + (v16 >> 1)) = v3;
    *v15 = v16 + 2;
    v19 = (v14 + 32 * (v3 ^ 1));
    v21 = v19 + 1;
    v20 = *v19;
    if (*v19)
    {
      v21 = v19[1];
      v22 = v19[2];
    }

    else
    {
      v22 = 6;
    }

    if (v20 >> 1 == v22)
    {
      absl::lts_20240722::inlined_vector_internal::Storage<operations_research::sat::Literal,6ul,std::allocator<operations_research::sat::Literal>>::EmplaceBackSlow<operations_research::sat::Literal const&>(v19);
    }

    *(v21 + (v20 >> 1)) = v4;
    *v19 = v20 + 2;
    v23 = v41 >> 6;
    v24 = *(a1 + 344);
    *(v24 + 8 * v23) |= 1 << (v41 & 0x3F ^ 1u);
    v25 = v40 & 0x3F;
    v26 = v40 >> 6;
    *(v24 + 8 * v26) |= 1 << (v40 & 0x3F ^ 1u);
    v43[0] = v41;
    v27 = *(a1 + 232);
    v28 = *(v27 + 8 * v23);
    if ((v28 & (1 << v41)) != 0)
    {
      v43[0] = v40;
      v29 = 1 << v25;
      v30 = *(v27 + 8 * v26);
      if ((v30 & (1 << v25)) != 0)
      {
LABEL_27:
        *(a1 + 632) = 0;
        *(a1 + 224) += 2;
        if (*(a1 + 844) == 1)
        {
          v31 = *(a1 + 872);
          if (v31)
          {
            v42 = v40;
            v43[0] = v41;
            (*(*v31 + 48))(v31, v43, &v42);
          }
        }

        v32 = *(a1 + 136);
        if ((*(v32 + 8) & 0xFFFFFFF) != 0)
        {
          v33 = *(v32 + 24);
          v34 = *(v33 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8));
          if ((v34 >> (v41 & 0x3F ^ 1u)))
          {
            v35 = *(v33 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8));
            if (((v35 >> (v40 & 0x3E)) & 3) != 0)
            {
              if ((v35 >> (v40 & 0x3F ^ 1u)))
              {
                result = 0;
                v36 = *MEMORY[0x277D85DE8];
                return result;
              }
            }

            else
            {
              v38 = *(a1 + 184) + *(v32 + 12);
              *(*(*(a1 + 160) + ((v38 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v38 & 0x3FF)) = v41;
              v39 = *(v32 + 12);
              *(v32 + 8) = *(v32 + 8) & 0xFFFFFFF | (*(a1 + 32) << 28);
              *(*(v32 + 48) + 4 * v39) = v40;
              *(*(v32 + 96) + 8 * (v40 >> 1)) = *(v32 + 8);
              *(*(v32 + 24) + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
              ++*(v32 + 12);
            }
          }

          else if (((*(v33 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v40 & 0x3F ^ 1u)) & 1) != 0 && ((v34 >> (v41 & 0x3E)) & 3) == 0)
          {
            v37 = *(a1 + 184) + *(v32 + 12);
            *(*(*(a1 + 160) + ((v37 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v37 & 0x3FF)) = v40;
            operations_research::sat::Trail::Enqueue(v32, v41, *(a1 + 32));
          }
        }

LABEL_11:
        result = 1;
        v9 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    else
    {
      *(v27 + 8 * v23) = v28 | (1 << v41);
      std::vector<int>::push_back[abi:ne200100](a1 + 256, v43);
      v27 = *(a1 + 232);
      v26 = v40 >> 6;
      v43[0] = v40;
      v29 = 1 << (v40 & 0x3F);
      v30 = *(v27 + 8 * v26);
      if ((v30 & v29) != 0)
      {
        goto LABEL_27;
      }
    }

    *(v27 + 8 * v26) = v30 | v29;
    std::vector<int>::push_back[abi:ne200100](a1 + 256, v43);
    goto LABEL_27;
  }

  result = operations_research::sat::BinaryImplicationGraph::FixLiteral(a1, v4);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

_DWORD *operations_research::sat::ClauseManager::InprocessingAddClause(void *a1, int *a2, unint64_t a3)
{
  if (a3 == 2)
  {
    operations_research::sat::BinaryImplicationGraph::AddBinaryClause(a1[19], *a2, a2[1]);
    return 0;
  }

  v3 = a3 - 1;
  if (a3 == 1)
  {
    operations_research::sat::ClauseManager::InprocessingFixLiteral(a1, *a2);
    return 0;
  }

  v8 = operator new(4 * a3 + 4);
  *v8 = a3;
  if (a3)
  {
    if (a3 >= 0x14)
    {
      v10 = 0;
      v9 = 0;
      if (v3 > 0x7FFFFFFE || v3 >> 31)
      {
        goto LABEL_8;
      }

      if ((v8 - a2 + 4) >= 0x20)
      {
        v9 = a3 & 0xFFFFFFF8;
        v10 = a3 & 0xFFFFFFF8;
        v12 = (a2 + 4);
        v13 = v8 + 5;
        v14 = v9;
        do
        {
          v15 = *v12;
          *(v13 - 1) = *(v12 - 1);
          *v13 = v15;
          v12 += 2;
          v13 += 2;
          v14 -= 8;
        }

        while (v14);
        if (a3 == v9)
        {
          goto LABEL_10;
        }

        goto LABEL_8;
      }
    }

    v9 = 0;
    v10 = 0;
LABEL_8:
    v11 = v10 + 1;
    do
    {
      v8[v9 + 1] = a2[v9];
      v9 = v11++;
    }

    while (a3 > v9);
  }

LABEL_10:
  v16 = v8;
  std::vector<absl::lts_20240722::LogSink *>::push_back[abi:ne200100]((a1 + 35), &v16);
  return v16;
}

uint64_t operations_research::sat::ClauseManager::CleanUpWatchers(uint64_t this)
{
  v1 = *(this + 120);
  v2 = *(this + 128);
  if (v1 != v2)
  {
    do
    {
      v3 = *v1;
      v4 = *(this + 40) + 24 * v3;
      v6 = *v4;
      v5 = *(v4 + 8);
      if (*v4 != v5)
      {
        v7 = v6 + 1;
        while (**(v7 - 1))
        {
          if (v7++ == v5)
          {
            goto LABEL_3;
          }
        }

        v6 = v7 - 1;
        if (v7 - 1 != v5 && v7 != v5)
        {
          do
          {
            if (**(v7 + 1))
            {
              *v6++ = *v7;
            }

            ++v7;
          }

          while (v7 != v5);
          v5 = *(v4 + 8);
        }
      }

      if (v6 != v5)
      {
        *(v4 + 8) = v6;
      }

LABEL_3:
      *(*(this + 96) + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v3);
      ++v1;
    }

    while (v1 != v2);
    v1 = *(this + 120);
  }

  *(this + 128) = v1;
  *(this + 144) = 1;
  return this;
}

void operations_research::sat::BinaryImplicationGraph::Resize(std::vector<int> *this, int a2)
{
  end = this[8].__end_;
  value = this[8].__end_cap_.__value_;
  p_end = &this[8].__end_;
  v7 = 2 * a2;
  v8 = v7;
  v9 = (value - end) >> 5;
  v10 = 2 * a2 - v9;
  if (v7 <= v9)
  {
    if (v7 < v9)
    {
      v11 = &end[8 * v7];
      if (value != v11)
      {
        v12 = value;
        do
        {
          v13 = *(v12 - 32);
          v12 -= 8;
          if (v13)
          {
            operator delete(*(value - 3));
          }

          value = v12;
        }

        while (v12 != v11);
      }

      this[8].__end_cap_.__value_ = v11;
    }
  }

  else
  {
    std::vector<absl::lts_20240722::InlinedVector<operations_research::sat::Literal,6ul,std::allocator<operations_research::sat::Literal>>>::__append(p_end, v10);
  }

  if (v7 < 1)
  {
    v7 = 0;
  }

  else if (SLODWORD(this[14].__begin_) > v7)
  {
    v14 = this[14].__end_ + (((v7 + 63) >> 3) & 0x1FFFFFF8);
    *(v14 - 8) &= ~(-2 << (v7 + 63));
  }

  LODWORD(this[14].__begin_) = v7;
  v15 = (v7 + 63) >> 6;
  *__x = 0;
  v16 = this[14].__end_;
  v17 = (this[14].__end_cap_.__value_ - v16) >> 3;
  if (v15 <= v17)
  {
    if (v15 < v17)
    {
      this[14].__end_cap_.__value_ = &v16[2 * v15];
    }
  }

  else
  {
    std::vector<unsigned long long>::__append(&this[14].__end_, v15 - v17, __x);
  }

  std::vector<BOOL>::resize(&this[9].__end_cap_, v8, 0);
  v18 = this[8].__end_cap_.__value_ - this[8].__end_;
  v19 = v18 >> 5;
  if ((v18 >> 5) < 1)
  {
    LODWORD(v19) = 0;
  }

  else if (SLODWORD(this[27].__end_cap_.__value_) > v19)
  {
    v20 = &this[28].__begin_[2 * ((v19 + 63) >> 6)];
    *(v20 - 8) &= ~(-2 << (v19 + 63));
  }

  LODWORD(this[27].__end_cap_.__value_) = v19;
  v21 = (v19 + 63) >> 6;
  *__x = 0;
  begin = this[28].__begin_;
  v23 = (this[28].__end_ - begin) >> 3;
  if (v21 <= v23)
  {
    if (v21 < v23)
    {
      this[28].__end_ = &begin[2 * v21];
    }
  }

  else
  {
    std::vector<unsigned long long>::__append(&this[28], v21 - v23, __x);
    v18 = this[8].__end_cap_.__value_ - this[8].__end_;
  }

  std::vector<BOOL>::resize(&this[33], v18 >> 5, 0);
  v24 = (this[8].__end_cap_.__value_ - this[8].__end_) >> 5;
  __x[0] = 0;
  v25 = this[34].__begin_;
  v26 = this[34].__end_ - v25;
  v27 = v24 >= v26;
  v28 = v24 - v26;
  if (v28 != 0 && v27)
  {
    std::vector<int>::__append(this + 34, v28, __x);
    v24 = (this[8].__end_cap_.__value_ - this[8].__end_) >> 5;
  }

  else if (!v27)
  {
    this[34].__end_ = &v25[v24];
  }

  std::vector<BOOL>::resize(&this[32], v24, 0);
  std::deque<operations_research::sat::Literal>::resize(&this[6].__end_, a2);
}

void std::deque<operations_research::sat::Literal>::resize(void *a1, unint64_t a2)
{
  v3 = a1[5];
  if (a2 > v3)
  {
    v4 = a2 - v3;

    std::deque<operations_research::sat::Literal>::__append(a1, v4);
    return;
  }

  if (a2 >= v3)
  {
    return;
  }

  v5 = a1[4];
  v7 = a1[1];
  v6 = a1[2];
  v8 = (v7 + 8 * (v5 >> 10));
  if (v6 == v7)
  {
    v9 = 0;
    if (!a2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v9 = *v8 + 4 * (a1[4] & 0x3FFLL);
    if (!a2)
    {
LABEL_12:
      v11 = v5 + v3;
      v12 = (v7 + 8 * ((v5 + v3) >> 10));
      v13 = v6 - v7;
      if (v6 != v7)
      {
        goto LABEL_13;
      }

      goto LABEL_21;
    }
  }

  v10 = a2 + ((v9 - *v8) >> 2);
  if (v10 >= 1)
  {
    v8 += 8 * (v10 >> 10);
    v9 = *v8 + 4 * (v10 & 0x3FF);
    goto LABEL_12;
  }

  v15 = 1023 - v10;
  v16 = 2046 - v10;
  if (v15 >= 0)
  {
    v16 = v15;
  }

  v8 -= 8 * (v16 >> 10);
  v17 = v15 & 0x3FF;
  v19 = -v15;
  v18 = v19 < 0;
  v20 = v19 & 0x3FF;
  if (v18)
  {
    v21 = v17;
  }

  else
  {
    v21 = -v20;
  }

  v9 = *v8 + 4 * (1023 - v21);
  v11 = v5 + v3;
  v12 = (v7 + 8 * ((v5 + v3) >> 10));
  v13 = v6 - v7;
  if (v6 != v7)
  {
LABEL_13:
    v14 = *v12 + 4 * (v11 & 0x3FF);
    if (v14 == v9)
    {
      return;
    }

    goto LABEL_22;
  }

LABEL_21:
  v14 = 0;
  if (!v9)
  {
    return;
  }

LABEL_22:
  v22 = ((v14 - *v12) >> 2) + ((v12 - v8) << 7) - ((v9 - *v8) >> 2);
  if (v22 >= 1)
  {
    v23 = v6 == v7 ? 0 : (v13 << 7) - 1;
    v24 = v3 - v22;
    a1[5] = v24;
    if (v23 - v5 - v24 >= 0x800)
    {
      do
      {
        operator delete(*(v6 - 8));
        v25 = a1[1];
        v6 = a1[2] - 8;
        a1[2] = v6;
        if (v6 == v25)
        {
          v26 = 0;
        }

        else
        {
          v26 = ((v6 - v25) << 7) - 1;
        }
      }

      while ((v26 - (a1[5] + a1[4])) > 0x7FF);
    }
  }
}

char *operations_research::sat::BinaryImplicationGraph::RemoveDuplicates(char *this)
{
  v1 = this;
  v2 = *(this + 32);
  v3 = *(this + 33);
  if (v2 != v3)
  {
    do
    {
      v4 = *v2;
      *(*(v1 + 29) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v4);
      v5 = (*(v1 + 25) + 32 * v4);
      v7 = v5 + 1;
      v6 = *v5;
      v8 = (v5 + 1);
      if (*v5)
      {
        v8 = *v7;
      }

      v9 = 126 - 2 * __clz((2 * v6) >> 2);
      if ((v6 & 0x7FFFFFFFFFFFFFFELL) != 0)
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,false>(v8, (v8 + ((2 * v6) & 0xFFFFFFFFFFFFFFFCLL)), &v23, v10, 1);
      v11 = *v5;
      v12 = (v5 + 1);
      if (*v5)
      {
        v12 = *v7;
      }

      v13 = v11 >> 1;
      this = &v12[4 * (v11 >> 1)];
      if ((v11 & 0x7FFFFFFFFFFFFFFELL) != 0)
      {
        v12 += 4;
        v14 = 4 * v13 - 4;
        while (v14)
        {
          v16 = *(v12 - 1);
          v15 = *v12;
          v12 += 4;
          v14 -= 4;
          if (v16 == v15)
          {
            v12 -= 8;
            goto LABEL_15;
          }
        }
      }

      if (v12 != this)
      {
LABEL_15:
        v17 = v12 + 8;
        if (v12 + 8 != this)
        {
          v18 = *v12;
          do
          {
            v19 = v18;
            v18 = *v17;
            if (v19 != *v17)
            {
              *(v12 + 1) = v18;
              v12 += 4;
            }

            v17 += 4;
          }

          while (v17 != this);
        }

        this = v12 + 4;
      }

      if (v11)
      {
        v7 = *v7;
      }

      v20 = v7 + 4 * v13;
      if (this != v20)
      {
        v21 = v20 - this;
        v22 = ((this - v7) >> 2) + ((v20 - this) >> 2);
        this = memmove(this, v7 + 4 * v22, 4 * (v13 - v22));
        *v5 -= v21 >> 1;
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *(v1 + 32);
  }

  *(v1 + 33) = v2;
  return this;
}

BOOL operations_research::sat::BinaryImplicationGraph::FixLiteral(uint64_t a1, int a2)
{
  v3 = *(a1 + 136);
  v4 = *(v3 + 8) & 0xFFFFFFF;
  if (v4)
  {
    operations_research::sat::BinaryImplicationGraph::FixLiteral(v4);
  }

  v5 = a2 >> 6;
  v6 = *(*(v3 + 24) + 8 * v5);
  result = 1;
  v8 = 1 << a2;
  if ((v6 & (1 << a2)) == 0)
  {
    if ((v6 >> (a2 & 0x3F ^ 1u)))
    {
      return 0;
    }

    else
    {
      v9 = *(a1 + 144);
      v10 = 0x10000000;
      if (v9)
      {
        v15[0] = a2;
        v11 = a2;
        operations_research::sat::DratProofHandler::AddClause(v9, v15, 1);
        a2 = v11;
        v3 = *(a1 + 136);
        v10 = *(v3 + 8) & 0xFFFFFFF | 0x10000000;
      }

      *(v3 + 8) = v10;
      *(*(v3 + 48) + 4 * *(v3 + 12)) = a2;
      *(*(v3 + 96) + 8 * (a2 >> 1)) = *(v3 + 8);
      *(*(v3 + 24) + 8 * v5) |= v8;
      ++*(v3 + 12);
      v12 = *(a1 + 136);
      if (!*(a1 + 224) && *(a1 + 280) == *(a1 + 288))
      {
        *(a1 + 36) = *(v12 + 12);
        return 1;
      }

      else
      {
        *(v12 + 8) = *(v12 + 8) & 0xFFFFFFF | (*(a1 + 32) << 28);
        while (1)
        {
          v13 = *(a1 + 36);
          v14 = *(v12 + 12);
          result = v13 >= v14;
          if (v13 >= v14)
          {
            break;
          }

          *(a1 + 36) = v13 + 1;
          if ((operations_research::sat::BinaryImplicationGraph::PropagateOnTrue(a1, *(*(v12 + 48) + 4 * v13), v12) & 1) == 0)
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t operations_research::sat::BinaryImplicationGraph::AddAtMostOne(uint64_t a1, char *a2, unint64_t a3)
{
  if (a3 < 2)
  {
    return 1;
  }

  v11 = v3;
  v12 = v4;
  v7 = (*(a1 + 312) - *(a1 + 304)) >> 2;
  v10 = a3;
  std::vector<int>::push_back[abi:ne200100](a1 + 304, &v10);
  std::vector<operations_research::sat::Literal>::__insert_with_size[abi:ne200100]<operations_research::sat::Literal const*,operations_research::sat::Literal const*>(a1 + 304, *(a1 + 312), a2, &a2[4 * a3], (4 * a3) >> 2);
  *(a1 + 632) = 0;
  return operations_research::sat::BinaryImplicationGraph::CleanUpAndAddAtMostOnes(a1, v7);
}

uint64_t operations_research::sat::BinaryImplicationGraph::CleanUpAndAddAtMostOnes(operations_research::sat::BinaryImplicationGraph *this, int a2)
{
  v2 = a2;
  v3 = this;
  v4 = *(this + 38);
  v5 = *(this + 39) - v4;
  v6 = v5 >> 2;
  if ((v5 >> 2) <= a2)
  {
    goto LABEL_109;
  }

  v7 = *(this + 17);
  v8 = a2;
  v102 = v7;
  while (2)
  {
    v108 = v2;
    if (v8 == *(v3 + 83))
    {
      *(v3 + 83) = v2;
    }

    v9 = *(v3 + 38);
    v10 = (v9 + 4 * v8);
    v13 = *v10;
    v11 = v10 + 1;
    v12 = v13;
    v101 = v13;
    if (!v13)
    {
      *(v9 + 4 * v2) = 0;
      goto LABEL_32;
    }

    v14 = 0;
    v15 = &v11[v12];
    v16 = v2 + 1;
    v17 = *(v7 + 24);
    do
    {
      v19 = *v11;
      v20 = *(v17 + 8 * (v19 >> 6));
      if (((v20 >> (v19 & 0x3F ^ 1)) & 1) == 0)
      {
        v21 = 1 << (v19 & 0x3F);
        if ((*(*(v3 + 99) + 8 * (v19 >> 6)) & v21) == 0)
        {
          if (v14 & 1 | ((v21 & v20) == 0))
          {
            v22 = *v11;
            v23 = *(v3 + 87);
            if (v19 < ((*(v3 + 88) - v23) >> 2))
            {
LABEL_9:
              v18 = *(v23 + 4 * v22);
              if (v18 != -1)
              {
                LODWORD(v19) = v18;
              }
            }

LABEL_11:
            *(v9 + 4 * v16++) = v19;
            goto LABEL_12;
          }

          if (++v11 == v15)
          {
            v52 = v2;
            v53 = v16 + ~v2;
LABEL_106:
            *(v9 + 4 * v52) = v53;
            goto LABEL_24;
          }

          v19 = *v11;
          v14 = 1;
          if (((*(v17 + 8 * (v19 >> 6)) >> (v19 & 0x3F ^ 1)) & 1) == 0)
          {
            v14 = 1;
            if ((*(*(v3 + 99) + 8 * (v19 >> 6)) & (1 << v19)) == 0)
            {
              v22 = *v11;
              v23 = *(v3 + 87);
              if (v19 < ((*(v3 + 88) - v23) >> 2))
              {
                goto LABEL_9;
              }

              goto LABEL_11;
            }
          }
        }
      }

LABEL_12:
      ++v11;
    }

    while (v11 != v15);
    *(v9 + 4 * v2) = v16 + ~v2;
    if (v14)
    {
      goto LABEL_24;
    }

LABEL_32:
    v29 = *(v9 + 4 * v2);
    v30 = v9 + 4 * (v2 + 1);
    v31 = 126 - 2 * __clz(v29);
    if (v29)
    {
      v32 = v31;
    }

    else
    {
      v32 = 0;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,false>(v30, (v30 + 4 * v29), &v109, v32, 1);
    ++v2;
    v9 = *(v3 + 38);
    v33 = (v9 + 4 * v108);
    v34 = *v33;
    if (!v34)
    {
LABEL_56:
      *v33 = 0;
LABEL_57:
      v54 = v108;
      v55 = *(v9 + 4 * v108);
      v56 = (v9 + 4 * (v108 + 1));
      v57 = *(v3 + 82);
      if (v57 <= 2)
      {
        v57 = 2;
      }

      v106 = &v56[v55];
      if (v55 <= v57)
      {
        v71 = v55;
        if (v55)
        {
          v99 = v8;
          v100 = v6;
          v98 = v55;
          v103 = v56;
          v104 = 4 * v55;
          v72 = v56;
          do
          {
            v105 = v72;
            v73 = *v72;
            v74 = 32 * v73;
            v75 = 1 << v73;
            v76 = v73 >> 6;
            v77 = v104;
            do
            {
              if (v73 != *v56)
              {
                v79 = (*(v3 + 25) + v74);
                v81 = v79 + 1;
                v80 = *v79;
                if (*v79)
                {
                  v81 = v79[1];
                  v82 = v80 >> 1;
                  if (v80 >> 1 == v79[2])
                  {
LABEL_87:
                    absl::lts_20240722::inlined_vector_internal::Storage<operations_research::sat::Literal,6ul,std::allocator<operations_research::sat::Literal>>::EmplaceBackSlow<operations_research::sat::Literal const&>(v79);
                  }
                }

                else
                {
                  v82 = v80 >> 1;
                  if (v80 >> 1 == 6)
                  {
                    goto LABEL_87;
                  }
                }

                *(v81 + v82) = *v56 ^ 1;
                *v79 = v80 + 2;
                *(*(v3 + 43) + 8 * v76) |= v75;
                v83 = *(v3 + 29);
                v84 = *(v83 + 8 * v76);
                if ((v84 & v75) == 0)
                {
                  *(v83 + 8 * v76) = v84 | v75;
                  v86 = *(v3 + 33);
                  v85 = *(v3 + 34);
                  if (v86 < v85)
                  {
                    *v86 = v73;
                    v78 = v86 + 4;
                  }

                  else
                  {
                    v87 = *(v3 + 32);
                    v88 = v86 - v87;
                    v89 = (v86 - v87) >> 2;
                    v90 = v89 + 1;
                    if ((v89 + 1) >> 62)
                    {
                      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                    }

                    v91 = v85 - v87;
                    if (v91 >> 1 > v90)
                    {
                      v90 = v91 >> 1;
                    }

                    if (v91 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v92 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v92 = v90;
                    }

                    if (v92)
                    {
                      if (!(v92 >> 62))
                      {
                        operator new();
                      }

                      std::__throw_bad_array_new_length[abi:ne200100]();
                    }

                    v93 = v89;
                    v3 = this;
                    v94 = (4 * v89);
                    v95 = &v94[-v93];
                    *v94 = v73;
                    v78 = v94 + 1;
                    memcpy(v95, v87, v88);
                    *(this + 32) = v95;
                    *(this + 33) = v78;
                    *(this + 34) = 0;
                    if (v87)
                    {
                      operator delete(v87);
                    }

                    v74 = 32 * v73;
                  }

                  *(v3 + 33) = v78;
                }
              }

              ++v56;
              v77 -= 4;
            }

            while (v77);
            v72 = v105 + 1;
            v56 = v103;
          }

          while (v105 + 1 != v106);
          v54 = v108;
          v6 = v100;
          v7 = v102;
          v8 = v99;
          v71 = v98;
        }

        *(v3 + 28) += (v71 - 1) * v71;
        v2 = v54;
      }

      else
      {
        do
        {
          v58 = *v56;
          v60 = *(v3 + 35);
          v59 = *(v3 + 36);
          v61 = (v59 - v60) >> 5;
          if (*v56 >= v61)
          {
            v62 = v58 + 1;
            if (v62 <= v61)
            {
              if (v62 < v61)
              {
                v63 = v56;
                v64 = v60 + 32 * v62;
                if (v59 != v64)
                {
                  v65 = v59;
                  do
                  {
                    v66 = *(v65 - 32);
                    v65 -= 32;
                    if (v66)
                    {
                      operator delete(*(v59 - 24));
                    }

                    v59 = v65;
                  }

                  while (v65 != v64);
                }

                *(this + 36) = v64;
                v3 = this;
                v56 = v63;
              }
            }

            else
            {
              std::vector<absl::lts_20240722::InlinedVector<int,6ul,std::allocator<int>>>::__append(v3 + 35, v62 - v61);
            }
          }

          v67 = (*(v3 + 35) + 32 * v58);
          v69 = v67 + 1;
          v68 = *v67;
          if (*v67)
          {
            v69 = v67[1];
            v70 = v67[2];
          }

          else
          {
            v70 = 6;
          }

          if (v68 >> 1 == v70)
          {
            absl::lts_20240722::inlined_vector_internal::Storage<operations_research::sat::Literal,6ul,std::allocator<operations_research::sat::Literal>>::EmplaceBackSlow<operations_research::sat::Literal const&>(v67);
          }

          *(v69 + (v68 >> 1)) = v108;
          *v67 = v68 + 2;
          *(*(v3 + 43) + ((v58 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v58;
          ++v56;
        }

        while (v56 != v106);
      }

      goto LABEL_4;
    }

    v35 = v8;
    v36 = 0;
    v37 = 0;
    v38 = 4 * v34;
    v39 = 0xFFFFFFFFLL;
    v40 = (v9 + 4 * v2);
    do
    {
      while (1)
      {
        v42 = v39;
        v43 = *v40;
        v44 = v43 == v39;
        if (v43 == v39)
        {
          break;
        }

        v41 = v2 - v37;
        v2 = v41 + 1;
        *(*(this + 38) + 4 * v41) = v43;
        v39 = v43;
        ++v40;
        v37 = v44;
        v38 -= 4;
        if (!v38)
        {
          goto LABEL_43;
        }
      }

      v45 = *(*(v102 + 24) + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8));
      if (((v45 >> v39) & 1) != 0 || ((v45 >> (v39 & 0x3F ^ 1)) & 1) == 0 && !operations_research::sat::BinaryImplicationGraph::FixLiteral(this, v39 ^ 1))
      {
        return 0;
      }

      v36 = 1;
      v39 = v42;
      ++v40;
      v37 = v44;
      v38 -= 4;
    }

    while (v38);
LABEL_43:
    v3 = this;
    v9 = *(this + 38);
    v2 -= v43 == v42;
    *(v9 + 4 * v108) = v2 + ~v108;
    if ((v36 & 1) == 0)
    {
      v7 = v102;
      v8 = v35;
      goto LABEL_57;
    }

    v2 = v108 + 1;
    v33 = (v9 + 4 * v108);
    v46 = *v33;
    v7 = v102;
    v8 = v35;
    if (!v46)
    {
      goto LABEL_56;
    }

    v47 = 0;
    v48 = (v9 + 4 * v2);
    v49 = &v48[v46];
    v50 = *(v102 + 24);
    while (2)
    {
      while (1)
      {
        v51 = *(v50 + ((*v48 >> 3) & 0x1FFFFFFFFFFFFFF8));
        if ((v51 >> (*v48 & 0x3F ^ 1u)))
        {
          break;
        }

        if ((v47 & 1) != 0 || ((v51 >> (*v48 & 0x3F)) & 1) == 0)
        {
          *(v9 + 4 * v2++) = *v48;
          break;
        }

        ++v48;
        v47 = 1;
        if (v48 == v49)
        {
          v52 = v108;
          v53 = v2 + ~v108;
          goto LABEL_106;
        }
      }

      if (++v48 != v49)
      {
        continue;
      }

      break;
    }

    *(v9 + 4 * v108) = v2 + ~v108;
    if ((v47 & 1) == 0)
    {
      goto LABEL_57;
    }

LABEL_24:
    v2 = v108;
    v24 = *(v9 + 4 * v108);
    if (v24)
    {
      v25 = (v9 + 4 * (v108 + 1));
      v26 = 4 * v24;
      do
      {
        v27 = *v25;
        v28 = *(*(v7 + 24) + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8));
        if (((v28 >> (v27 & 0x3F ^ 1)) & 1) == 0 && (((v28 >> (v27 & 0x3F)) & 1) != 0 || !operations_research::sat::BinaryImplicationGraph::FixLiteral(v3, v27 ^ 1)))
        {
          return 0;
        }

        ++v25;
        v26 -= 4;
      }

      while (v26);
      v2 = v108;
    }

LABEL_4:
    v8 += v101 + 1;
    if (v8 < v6)
    {
      continue;
    }

    break;
  }

  v4 = *(v3 + 38);
  v5 = *(v3 + 39) - v4;
LABEL_109:
  v97 = v5 >> 2;
  if (v2 <= v97)
  {
    if (v2 < v97)
    {
      *(v3 + 39) = v4 + 4 * v2;
    }
  }

  else
  {
    std::vector<int>::__append((v3 + 304), v2 - v97);
  }

  return 1;
}

uint64_t operations_research::sat::BinaryImplicationGraph::PropagateOnTrue(void *a1, int a2, uint64_t a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = *(a3 + 24);
  v4 = 32 * a2;
  v5 = (a1[25] + v4);
  v8 = *v5;
  v6 = (v5 + 1);
  v7 = v8;
  v9 = v8 >> 1;
  a1[50] += v8 >> 1;
  if (v8)
  {
    v6 = *v6;
  }

  if ((v7 & 0x7FFFFFFFFFFFFFFELL) != 0)
  {
    for (i = 4 * v9; i; i -= 4)
    {
      v11 = *v6;
      v12 = *v6 >> 6;
      v13 = 1 << *v6;
      if ((v13 & *(v3 + 8 * v12)) == 0)
      {
        ++a1[49];
        if ((*(v3 + 8 * v12) >> (v11 & 0x3F ^ 1u)))
        {
          v33 = a2 ^ 1;
          v34 = v11;
          *(a3 + 120) = 0;
          std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal const*,operations_research::sat::Literal const*>((a3 + 72), &v33, &v35, 2uLL);
LABEL_26:
          result = 0;
          v32 = *MEMORY[0x277D85DE8];
          return result;
        }

        v14 = a1[23] + *(a3 + 12);
        *(*(a1[20] + ((v14 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v14 & 0x3FF)) = a2 ^ 1;
        *(*(a3 + 48) + 4 * *(a3 + 12)) = v11;
        *(*(a3 + 96) + 8 * (v11 >> 1)) = *(a3 + 8);
        *(*(a3 + 24) + 8 * v12) |= v13;
        ++*(a3 + 12);
      }

      ++v6;
    }
  }

  v15 = a1[35];
  if (a2 < ((a1[36] - v15) >> 5))
  {
    v16 = (v15 + v4);
    v19 = *v16;
    v17 = (v16 + 1);
    v18 = v19;
    if (v19)
    {
      v17 = *v17;
    }

    if ((v18 & 0x7FFFFFFFFFFFFFFELL) != 0)
    {
      v20 = &v17[v18 >> 1];
      do
      {
        v21 = *v17;
        v22 = a1[38];
        v23 = *(v22 + 4 * v21);
        if (v23)
        {
          v24 = (v22 + 4 * (v21 + 1));
          for (j = 4 * v23; j; j -= 4)
          {
            v26 = *v24;
            ++a1[50];
            if (v26 != a2)
            {
              v27 = v26;
              v28 = v26 >> 6;
              if (((*(v3 + 8 * (v26 >> 6)) >> (v26 & 0x3F ^ 1)) & 1) == 0)
              {
                ++a1[49];
                if ((*(v3 + 8 * v28) >> (v26 & 0x3F)))
                {
                  v33 = a2 ^ 1;
                  v34 = v26 ^ 1;
                  *(a3 + 120) = 0;
                  std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal const*,operations_research::sat::Literal const*>((a3 + 72), &v33, &v35, 2uLL);
                  goto LABEL_26;
                }

                v29 = a1[23] + *(a3 + 12);
                *(*(a1[20] + ((v29 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v29 & 0x3FF)) = a2 ^ 1;
                *(*(a3 + 48) + 4 * *(a3 + 12)) = v27 ^ 1;
                *(*(a3 + 96) + 8 * (v27 >> 1)) = *(a3 + 8);
                *(*(a3 + 24) + 8 * v28) |= 1 << (v27 ^ 1u);
                ++*(a3 + 12);
              }
            }

            ++v24;
          }
        }

        ++v17;
      }

      while (v17 != v20);
    }
  }

  result = 1;
  v31 = *MEMORY[0x277D85DE8];
  return result;
}

int64x2_t operations_research::sat::BinaryImplicationGraph::MinimizeConflictWithReachability(uint64_t a1, int **a2)
{
  *(a1 + 560) = *(a1 + 552);
  v3 = **a2;
  v4 = v3 ^ 1;
  operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>::ClearAndResize(a1 + 440, (*(a1 + 208) - *(a1 + 200)) >> 5);
  v59 = v3 ^ 1;
  v6 = *(a1 + 448);
  v7 = *(v6 + 8 * (v3 >> 6));
  if ((v7 & (1 << (v3 ^ 1u))) != 0)
  {
    v8 = (*(a1 + 200) + 32 * v4);
    v11 = *v8;
    v10 = v8 + 1;
    v9 = v11;
    if ((v11 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *(v6 + 8 * (v3 >> 6)) = v7 | (1 << v4);
    std::vector<int>::push_back[abi:ne200100](a1 + 472, &v59);
    v12 = (*(a1 + 200) + 32 * v4);
    v13 = *v12;
    v10 = v12 + 1;
    v9 = v13;
    if ((v13 & 1) == 0)
    {
LABEL_3:
      if ((v9 & 0x7FFFFFFFFFFFFFFELL) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_7;
    }
  }

  v10 = *v10;
  if ((v9 & 0x7FFFFFFFFFFFFFFELL) == 0)
  {
    goto LABEL_46;
  }

LABEL_7:
  v57 = (v10 + 4 * (v9 >> 1));
  v14 = (a1 + 552);
  do
  {
    v58 = *v10;
    if (((*(*(a1 + 448) + ((v58 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v58) & 1) == 0)
    {
      std::vector<int>::push_back[abi:ne200100](a1 + 552, &v58);
LABEL_11:
      while (1)
      {
        v15 = *(a1 + 560);
        if (*(a1 + 552) == v15)
        {
          break;
        }

        v16 = *(v15 - 4);
        *(a1 + 560) = v15 - 4;
        v17 = *(a1 + 448);
        v18 = *(v17 + 8 * (v16 >> 6));
        if ((v18 & (1 << v16)) == 0)
        {
          *(v17 + 8 * (v16 >> 6)) = v18 | (1 << v16);
          v20 = *(a1 + 480);
          v19 = *(a1 + 488);
          if (v20 >= v19)
          {
            v22 = *(a1 + 472);
            v23 = v20 - v22;
            v24 = (v20 - v22) >> 2;
            v25 = v24 + 1;
            if ((v24 + 1) >> 62)
            {
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            v26 = v19 - v22;
            if (v26 >> 1 > v25)
            {
              v25 = v26 >> 1;
            }

            if (v26 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v27 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v27 = v25;
            }

            if (v27)
            {
              if (!(v27 >> 62))
              {
                operator new();
              }

LABEL_56:
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v28 = (v20 - v22) >> 2;
            v29 = (4 * v24);
            v30 = (4 * v24 - 4 * v28);
            *v29 = v16;
            v21 = v29 + 1;
            memcpy(v30, v22, v23);
            *(a1 + 472) = v30;
            *(a1 + 480) = v21;
            *(a1 + 488) = 0;
            if (v22)
            {
              operator delete(v22);
            }
          }

          else
          {
            *v20 = v16;
            v21 = v20 + 4;
          }

          *(a1 + 480) = v21;
          v31 = (*(a1 + 200) + 32 * v16);
          v34 = *v31;
          v33 = v31 + 1;
          v32 = v34;
          if (v34)
          {
            v33 = *v33;
          }

          if ((v32 & 0x7FFFFFFFFFFFFFFELL) != 0)
          {
            v35 = 4 * (v32 >> 1);
            while (1)
            {
              v37 = *v33;
              if (((*(*(a1 + 448) + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
              {
                v38 = *(a1 + 560);
                v39 = *(a1 + 568);
                if (v38 < v39)
                {
                  *v38 = v37;
                  v36 = (v38 + 4);
                }

                else
                {
                  v40 = *v14;
                  v41 = v38 - *v14;
                  v42 = v41 >> 2;
                  v43 = (v41 >> 2) + 1;
                  if (v43 >> 62)
                  {
                    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                  }

                  v44 = v39 - v40;
                  if (v44 >> 1 > v43)
                  {
                    v43 = v44 >> 1;
                  }

                  if (v44 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v45 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v45 = v43;
                  }

                  if (v45)
                  {
                    if (!(v45 >> 62))
                    {
                      operator new();
                    }

                    goto LABEL_56;
                  }

                  *(4 * v42) = v37;
                  v36 = 4 * v42 + 4;
                  memcpy(0, v40, v41);
                  *(a1 + 552) = 0;
                  *(a1 + 560) = v36;
                  *(a1 + 568) = 0;
                  if (v40)
                  {
                    operator delete(v40);
                  }
                }

                *(a1 + 560) = v36;
              }

              v33 = (v33 + 4);
              v35 -= 4;
              if (!v35)
              {
                goto LABEL_11;
              }
            }
          }
        }
      }
    }

    v10 = (v10 + 4);
  }

  while (v10 != v57);
LABEL_46:
  v46 = *a2;
  v47 = a2[1] - *a2;
  if (v47 >= 2)
  {
    v48 = *(a1 + 448);
    v49 = 1;
    v50 = 2;
    v51 = 1;
    do
    {
      v52 = *(v46 + 4 * v49);
      if (((*(v48 + ((v52 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v52 & 0x3F ^ 1u)) & 1) == 0)
      {
        *(v46 + 4 * v51++) = v52;
      }

      v49 = v50++;
    }

    while (v47 > v49);
    v53 = v47 > v51;
    v54 = v47 - v51;
    if (v53)
    {
      v55.i64[0] = vdupq_n_s64(1uLL).u64[0];
      v55.i64[1] = v54;
      result = vaddq_s64(v55, *(a1 + 408));
      *(a1 + 408) = result;
      a2[1] = (v46 + 4 * v51);
    }
  }

  return result;
}

int64x2_t operations_research::sat::BinaryImplicationGraph::MinimizeConflictFirst(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>::ClearAndResize(a1 + 440, (*(a1 + 208) - *(a1 + 200)) >> 5);
  operations_research::sat::BinaryImplicationGraph::MarkDescendants(a1, **a3 ^ 1);
  v9 = *(a1 + 472);
  for (i = *(a1 + 480); v9 != i; ++v9)
  {
    v11 = *v9;
    if ((*(*(a2 + 24) + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v11))
    {
      v25 = v11 >> 1;
      v12 = (v11 >> 1) >> 6;
      v13 = *(a4 + 8);
      v14 = *(v13 + 8 * v12);
      if ((v14 & (1 << v25)) == 0)
      {
        *(v13 + 8 * v12) = v14 | (1 << v25);
        std::vector<int>::push_back[abi:ne200100](a4 + 32, &v25);
      }
    }
  }

  v15 = *a3;
  v16 = (*(a3 + 8) - *a3) >> 2;
  if (v16 >= 2)
  {
    v17 = *(a1 + 448);
    v18 = 1;
    v19 = 2;
    v20 = 1;
    do
    {
      v21 = v15[v18];
      if (((*(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v21 & 0x3F ^ 1u)) & 1) == 0)
      {
        v15[v20++] = v21;
      }

      v18 = v19++;
    }

    while (v16 > v18);
    v22 = v16 > v20;
    v23 = v16 - v20;
    if (v22)
    {
      v24.i64[0] = vdupq_n_s64(1uLL).u64[0];
      v24.i64[1] = v23;
      result = vaddq_s64(v24, *(a1 + 408));
      *(a1 + 408) = result;
      *(a3 + 8) = &v15[v20];
    }
  }

  return result;
}

int64x2_t operations_research::sat::BinaryImplicationGraph::MinimizeConflictFirstWithTransitiveReduction(uint64_t a1, uint64_t a2, int **a3, void *a4)
{
  v6 = **a3;
  v7 = v6 ^ 1;
  operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>::ClearAndResize(a1 + 440, (*(a1 + 208) - *(a1 + 200)) >> 5);
  v84 = v6 ^ 1;
  v9 = *(a1 + 448);
  v10 = *(v9 + 8 * (v6 >> 6));
  if ((v10 & (1 << (v6 ^ 1u))) == 0)
  {
    *(v9 + 8 * (v6 >> 6)) = v10 | (1 << v7);
    std::vector<int>::push_back[abi:ne200100](a1 + 472, &v84);
  }

  v11 = (*(a1 + 200) + 32 * v7);
  v13 = v11 + 1;
  v12 = *v11;
  v14 = *v11 & 1;
  v15 = (v11 + 1);
  if (*v11)
  {
    v15 = *v13;
  }

  v16 = (2 * v12) >> 2;
  v81 = v11 + 1;
  if (v16 >= 2)
  {
    v17 = &v15[(v12 >> 1) - 1];
    if (v17 > v15)
    {
      while (1)
      {
        if (v16 != 1)
        {
          if (v16)
          {
            v18 = __clz(v16);
            if (((v16 << v18) & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v19 = 64;
            }

            else
            {
              v19 = 63;
            }

            v20 = v19 - v18;
            v21 = v20 >> 6;
            if ((v20 & 0x3F) != 0)
            {
              ++v21;
            }

            if (v21 <= v20)
            {
              v22 = 0xFFFFFFFFFFFFFFFFLL >> -(v20 / v21);
            }

            else
            {
              v22 = 0;
            }

            do
            {
              v23 = (a4[2])(*a4) & v22;
            }

            while (v23 >= v16);
            if (!v23)
            {
              goto LABEL_8;
            }

LABEL_23:
            v24 = *v15;
            *v15 = v15[v23];
            v15[v23] = v24;
            goto LABEL_8;
          }

          v23 = (a4[2])(*a4);
          if (v23)
          {
            goto LABEL_23;
          }
        }

LABEL_8:
        ++v15;
        --v16;
        if (v15 >= v17)
        {
          v12 = *v11;
          v14 = *v11 & 1;
          break;
        }
      }
    }
  }

  *(a1 + 560) = *(a1 + 552);
  v25 = (v11 + 1);
  if (v14)
  {
    v25 = *v13;
  }

  v26 = v12 >> 1;
  if ((v12 & 0x7FFFFFFFFFFFFFFELL) == 0)
  {
    v65 = 0;
    v67 = v12 >> 1;
    if (!v26)
    {
      goto LABEL_75;
    }

LABEL_74:
    *(a1 + 424) += v67;
    absl::lts_20240722::inlined_vector_internal::Storage<operations_research::sat::Literal,6ul,std::allocator<operations_research::sat::Literal>>::Resize<absl::lts_20240722::inlined_vector_internal::DefaultValueAdapter<std::allocator<operations_research::sat::Literal>>>(v11, v65);
    goto LABEL_75;
  }

  v27 = 0;
  v28 = (a1 + 552);
  v29 = &v25[v26];
  v79 = v29;
  v80 = v11;
  do
  {
    v30 = *v25;
    v83 = v30;
    if (((*(*(a1 + 448) + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
    {
      v31 = v13;
      if (*v11)
      {
        v31 = *v13;
      }

      v32 = v27 + 1;
      v31[v27] = v30;
      std::vector<int>::push_back[abi:ne200100](a1 + 552, &v83);
      v33 = *(a1 + 560);
      if (*(a1 + 552) == v33)
      {
        v27 = v32;
      }

      else
      {
        v82 = v32;
        do
        {
          v34 = *(v33 - 4);
          *(a1 + 560) = v33 - 4;
          v35 = *(a1 + 448);
          v36 = *(v35 + 8 * (v34 >> 6));
          if ((v36 & (1 << v34)) == 0)
          {
            *(v35 + 8 * (v34 >> 6)) = v36 | (1 << v34);
            v38 = *(a1 + 480);
            v37 = *(a1 + 488);
            if (v38 >= v37)
            {
              v40 = *(a1 + 472);
              v41 = v38 - v40;
              v42 = (v38 - v40) >> 2;
              v43 = v42 + 1;
              if ((v42 + 1) >> 62)
              {
                std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
              }

              v44 = v37 - v40;
              if (v44 >> 1 > v43)
              {
                v43 = v44 >> 1;
              }

              if (v44 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v45 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v45 = v43;
              }

              if (v45)
              {
                if (!(v45 >> 62))
                {
                  operator new();
                }

LABEL_87:
                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v46 = (v38 - v40) >> 2;
              v47 = (4 * v42);
              v48 = (4 * v42 - 4 * v46);
              *v47 = v34;
              v39 = v47 + 1;
              memcpy(v48, v40, v41);
              *(a1 + 472) = v48;
              *(a1 + 480) = v39;
              *(a1 + 488) = 0;
              if (v40)
              {
                operator delete(v40);
              }
            }

            else
            {
              *v38 = v34;
              v39 = v38 + 4;
            }

            *(a1 + 480) = v39;
            v49 = (*(a1 + 200) + 32 * v34);
            v52 = *v49;
            v51 = v49 + 1;
            v50 = v52;
            if (v52)
            {
              v51 = *v51;
            }

            if ((v50 & 0x7FFFFFFFFFFFFFFELL) != 0)
            {
              for (i = 4 * (v50 >> 1); i; i -= 4)
              {
                v55 = *v51;
                if (((*(*(a1 + 448) + ((v55 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v55) & 1) == 0)
                {
                  v56 = *(a1 + 560);
                  v57 = *(a1 + 568);
                  if (v56 < v57)
                  {
                    *v56 = v55;
                    v54 = (v56 + 4);
                  }

                  else
                  {
                    v58 = *v28;
                    v59 = v56 - *v28;
                    v60 = v59 >> 2;
                    v61 = (v59 >> 2) + 1;
                    if (v61 >> 62)
                    {
                      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                    }

                    v62 = v57 - v58;
                    if (v62 >> 1 > v61)
                    {
                      v61 = v62 >> 1;
                    }

                    if (v62 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v63 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v63 = v61;
                    }

                    if (v63)
                    {
                      if (!(v63 >> 62))
                      {
                        operator new();
                      }

                      goto LABEL_87;
                    }

                    *(4 * v60) = v55;
                    v54 = 4 * v60 + 4;
                    memcpy(0, v58, v59);
                    *(a1 + 552) = 0;
                    *(a1 + 560) = v54;
                    *(a1 + 568) = 0;
                    if (v58)
                    {
                      operator delete(v58);
                    }
                  }

                  *(a1 + 560) = v54;
                }

                v51 = (v51 + 4);
              }
            }
          }

          v33 = *(a1 + 560);
        }

        while (*(a1 + 552) != v33);
        v27 = v82;
        v11 = v80;
        v13 = v81;
        v29 = v79;
      }
    }

    ++v25;
  }

  while (v25 != v29);
  v64 = *v11 >> 1;
  v65 = v27;
  v66 = v64 >= v27;
  v67 = v64 - v27;
  if (v67 != 0 && v66)
  {
    goto LABEL_74;
  }

LABEL_75:
  v68 = *a3;
  v69 = a3[1] - *a3;
  if (v69 >= 2)
  {
    v70 = *(a1 + 448);
    v71 = 1;
    v72 = 2;
    v73 = 1;
    do
    {
      v74 = *(v68 + 4 * v71);
      if (((*(v70 + ((v74 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v74 & 0x3F ^ 1u)) & 1) == 0)
      {
        *(v68 + 4 * v73++) = v74;
      }

      v71 = v72++;
    }

    while (v69 > v71);
    v75 = v69 > v73;
    v76 = v69 - v73;
    if (v75)
    {
      v77.i64[0] = vdupq_n_s64(1uLL).u64[0];
      v77.i64[1] = v76;
      result = vaddq_s64(v77, *(a1 + 408));
      *(a1 + 408) = result;
      a3[1] = (v68 + 4 * v73);
    }
  }

  return result;
}

void operations_research::sat::BinaryImplicationGraph::MinimizeConflictExperimental(uint64_t a1, uint64_t a2, char **a3)
{
  operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>::ClearAndResize(a1 + 440, (*(a1 + 208) - *(a1 + 200)) >> 5);
  operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>::ClearAndResize(a1 + 496, (*(a1 + 208) - *(a1 + 200)) >> 5);
  v7 = *a3;
  v6 = a3[1];
  if (*a3 != v6)
  {
    do
    {
      v30 = *v7;
      v8 = v30 >> 6;
      v9 = *(a1 + 448);
      v10 = *(v9 + 8 * v8);
      if ((v10 & (1 << v30)) == 0)
      {
        *(v9 + 8 * v8) = v10 | (1 << v30);
        std::vector<int>::push_back[abi:ne200100](a1 + 472, &v30);
      }

      v7 += 4;
    }

    while (v7 != v6);
    v7 = *a3;
    v6 = a3[1];
  }

  if ((v6 - v7) >= 5)
  {
    v11 = 1;
    v12 = 1;
    v13 = 1;
    do
    {
      v15 = *&v7[4 * v11];
      v16 = (*(a1 + 200) + 32 * v15);
      v19 = *v16;
      v17 = (v16 + 1);
      v18 = v19;
      if (v19)
      {
        v17 = *v17;
      }

      if ((v18 & 0x7FFFFFFFFFFFFFFELL) != 0)
      {
        v20 = 4 * (v18 >> 1);
        while (1)
        {
          v21 = *v17 >> 6;
          if (((1 << *v17) & *(*(a1 + 448) + 8 * v21)) != 0)
          {
            v22 = *(a1 + 504);
            if (((*(*(a2 + 96) + 8 * (*v17 >> 1)) ^ *(*(a2 + 96) + 8 * (v15 >> 1))) & 0xFFFFFFF) != 0 || (*(v22 + 8 * v21) & (1 << *v17)) == 0)
            {
              break;
            }
          }

          ++v17;
          v20 -= 4;
          if (!v20)
          {
            goto LABEL_9;
          }
        }

        v31 = v15;
        v23 = v15 >> 6;
        v24 = *(v22 + 8 * v23);
        v25 = 1 << v15;
        if ((v24 & v25) == 0)
        {
          *(v22 + 8 * v23) = v24 | v25;
          std::vector<int>::push_back[abi:ne200100](a1 + 528, &v31);
          v7 = *a3;
          v6 = a3[1];
        }
      }

      else
      {
LABEL_9:
        *&v7[4 * v12++] = v15;
      }

      v11 = ++v13;
      v14 = (v6 - v7) >> 2;
    }

    while (v14 > v13);
    v26 = v14 > v12;
    v27 = v14 - v12;
    if (v26)
    {
      v28.i64[0] = vdupq_n_s64(1uLL).u64[0];
      v28.i64[1] = v27;
      *(a1 + 408) = vaddq_s64(v28, *(a1 + 408));
      v29 = &v7[4 * v12];
      if (v29 != v6)
      {
        a3[1] = v29;
      }
    }
  }
}

uint64_t operations_research::sat::BinaryImplicationGraph::RemoveFixedVariables(uint64_t this)
{
  v1 = this;
  if (*(this + 224) || *(this + 280) != *(this + 288))
  {
    v2 = *(*(this + 136) + 12);
    if (*(this + 840) != v2)
    {
      v53 = *(this + 136);
      operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>::ClearAndResize(this + 440, (*(this + 208) - *(this + 200)) >> 5);
      v3 = *(v1 + 840);
      if (v3 < v2)
      {
        v54 = v2;
        do
        {
          v4 = *(*(*(v1 + 136) + 48) + 4 * v3);
          v5 = v4 ^ 1;
          v6 = *(v1 + 200);
          v7 = (v4 ^ 1) << 32 >> 27;
          v9 = (v6 + v7 + 8);
          v8 = *(v6 + v7);
          if (v8)
          {
            v9 = *v9;
          }

          if ((v8 & 0x7FFFFFFFFFFFFFFELL) != 0)
          {
            v10 = 4 * (v8 >> 1);
            while (1)
            {
              v12 = *v9 ^ 1;
              v13 = *(v1 + 696);
              if (v12 >= ((*(v1 + 704) - v13) >> 2))
              {
                break;
              }

              v14 = *(v13 + 4 * v12);
              v15 = *(v1 + 448);
              if (v14 == -1)
              {
                goto LABEL_19;
              }

              v55 = v14;
              v16 = v14 >> 6;
              v17 = *(v15 + 8 * v16);
              v18 = 1 << v14;
              if ((v17 & v18) == 0)
              {
                *(v15 + 8 * v16) = v17 | v18;
                std::vector<int>::push_back[abi:ne200100](v1 + 472, &v55);
              }

LABEL_13:
              ++v9;
              v10 -= 4;
              if (!v10)
              {
                v6 = *(v1 + 200);
                v2 = v54;
                v5 = v4 ^ 1;
                v7 = (v4 ^ 1) << 32 >> 27;
                goto LABEL_33;
              }
            }

            v15 = *(v1 + 448);
LABEL_19:
            v19 = *v9 >> 6;
            v20 = *(v15 + 8 * v19);
            if ((v20 & (1 << v12)) == 0)
            {
              *(v15 + 8 * v19) = v20 | (1 << v12);
              v22 = *(v1 + 480);
              v21 = *(v1 + 488);
              if (v22 < v21)
              {
                *v22 = v12;
                v11 = v22 + 1;
              }

              else
              {
                v23 = *(v1 + 472);
                v24 = v22 - v23;
                v25 = (v22 - v23) >> 2;
                v26 = v25 + 1;
                if ((v25 + 1) >> 62)
                {
                  std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                }

                v27 = v21 - v23;
                if (v27 >> 1 > v26)
                {
                  v26 = v27 >> 1;
                }

                if (v27 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v28 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v28 = v26;
                }

                if (v28)
                {
                  if (!(v28 >> 62))
                  {
                    operator new();
                  }

                  std::__throw_bad_array_new_length[abi:ne200100]();
                }

                v29 = (v22 - v23) >> 2;
                v30 = (4 * v25);
                v31 = (4 * v25 - 4 * v29);
                *v30 = v12;
                v11 = v30 + 1;
                memcpy(v31, v23, v24);
                *(v1 + 472) = v31;
                *(v1 + 480) = v11;
                *(v1 + 488) = 0;
                if (v23)
                {
                  operator delete(v23);
                }
              }

              *(v1 + 480) = v11;
            }

            goto LABEL_13;
          }

LABEL_33:
          v32 = 32 * v4;
          v34 = *(v6 + v32);
          v33 = *(v6 + v32 + 8);
          *(v6 + v32) = 0;
          if (v34)
          {
            operator delete(v33);
            v40 = (*(v1 + 200) + v7);
            v41 = *v40;
            v36 = v40[1];
            *v40 = 0;
            if ((v41 & 1) == 0)
            {
LABEL_35:
              v38 = *(v1 + 280);
              v39 = (*(v1 + 288) - v38) >> 5;
              if (v4 < v39)
              {
                goto LABEL_39;
              }

              goto LABEL_41;
            }
          }

          else
          {
            v35 = (v6 + v7);
            v37 = *v35;
            v36 = v35[1];
            *v35 = 0;
            if ((v37 & 1) == 0)
            {
              goto LABEL_35;
            }
          }

          operator delete(v36);
          v38 = *(v1 + 280);
          v39 = (*(v1 + 288) - v38) >> 5;
          if (v4 < v39)
          {
LABEL_39:
            v43 = *(v38 + 32 * v4);
            v42 = *(v38 + v32 + 8);
            *(v38 + 32 * v4) = 0;
            if (v43)
            {
              operator delete(v42);
              v38 = *(v1 + 280);
              v39 = (*(v1 + 288) - v38) >> 5;
            }
          }

LABEL_41:
          if (v5 < v39)
          {
            v44 = (v38 + v7);
            v46 = *v44;
            v45 = v44[1];
            *v44 = 0;
            if (v46)
            {
              operator delete(v45);
            }
          }

          v3 = *(v1 + 840) + 1;
          *(v1 + 840) = v3;
        }

        while (v3 < v2);
      }

      v47 = *(v1 + 472);
      v48 = *(v1 + 480);
      if (v47 == v48)
      {
        v50 = *(v1 + 280);
        v49 = *(v1 + 288);
        if (v49 != v50)
        {
          goto LABEL_46;
        }
      }

      else
      {
        operations_research::sat::BinaryImplicationGraph::RemoveFixedVariables(v53, v47, (v1 + 200), v48);
        v50 = *(v1 + 280);
        v49 = *(v1 + 288);
        if (v49 != v50)
        {
LABEL_46:
          v51 = v49;
          do
          {
            v52 = *(v51 - 32);
            v51 -= 32;
            if (v52)
            {
              operator delete(*(v49 - 24));
            }

            v49 = v51;
          }

          while (v51 != v50);
        }
      }

      *(v1 + 288) = v50;
      return operations_research::sat::BinaryImplicationGraph::CleanUpAndAddAtMostOnes(v1, 0);
    }
  }

  return this;
}

uint64_t operations_research::sat::BinaryImplicationGraph::DetectEquivalences(operations_research::sat::BinaryImplicationGraph *this, int a2)
{
  if (*(this + 632))
  {
    return 1;
  }

  CurrentTimeNanos = absl::lts_20240722::GetCurrentTimeNanos(this);
  if (dword_2810BD578 >= 1)
  {
    IsEnabled1 = absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::sat::BinaryImplicationGraph::DetectEquivalences(BOOL)::$_0::operator() const(void)::site, dword_2810BD578);
    v7 = *(this + 17);
    if (*(this + 28))
    {
      goto LABEL_6;
    }
  }

  else
  {
    IsEnabled1 = 0;
    v7 = *(this + 17);
    if (*(this + 28))
    {
      goto LABEL_6;
    }
  }

  if (*(this + 35) == *(this + 36))
  {
    *(this + 9) = *(v7 + 12);
    goto LABEL_11;
  }

LABEL_6:
  *(v7 + 8) = *(v7 + 8) & 0xFFFFFFF | (*(this + 8) << 28);
  while (1)
  {
    v8 = *(this + 9);
    if (v8 >= *(v7 + 12))
    {
      break;
    }

    *(this + 9) = v8 + 1;
    if ((operations_research::sat::BinaryImplicationGraph::PropagateOnTrue(this, *(*(v7 + 48) + 4 * v8), v7) & 1) == 0)
    {
      return 0;
    }
  }

LABEL_11:
  operations_research::sat::BinaryImplicationGraph::RemoveFixedVariables(this);
  v9 = (this + 200);
  v151 = *(this + 17);
  v10 = *(this + 26) - *(this + 25);
  v11 = v10 >> 5;
  v173 = 0;
  v171 = 0u;
  v172 = 0u;
  v169 = 0u;
  v170 = 0u;
  operations_research::sat::CompactVectorVector<int,int>::reserve(&v169, v10 >> 5);
  v167 = 0u;
  v168 = 0u;
  v165 = 0u;
  v166 = 0u;
  v163 = 0u;
  v164 = 0u;
  *v152 = 0u;
  v153 = 0u;
  v154 = &v163;
  v155 = this + 200;
  v156 = this + 280;
  v157 = this + 304;
  *v158 = 0u;
  *v159 = 0u;
  v160 = 0u;
  *__p = 0u;
  v162 = 0;
  StronglyConnectedComponentsFinder<int,operations_research::sat::SccGraph,operations_research::sat::CompactVectorVector<int,int>>::FindStronglyConnectedComponents(&v163, v10 >> 5, v152, &v169);
  v12 = *(&v153 + 1);
  v13 = v152[0];
  v14 = v152[1];
  while (v13 != v14)
  {
    v15 = *v13;
    v16 = *(*(v151 + 24) + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8));
    if (((v16 >> (v15 & 0x3F ^ 1)) & 1) != 0 || ((v16 >> (v15 & 0x3F)) & 1) == 0 && !operations_research::sat::BinaryImplicationGraph::FixLiteral(this, v15))
    {
      v17 = 0;
      v18 = __p[0];
      if (!__p[0])
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    ++v13;
  }

  v17 = 1;
  v18 = __p[0];
  if (!__p[0])
  {
    goto LABEL_21;
  }

LABEL_20:
  __p[1] = v18;
  operator delete(v18);
LABEL_21:
  if (v159[1])
  {
    operator delete(v159[1]);
  }

  if (v158[0])
  {
    v158[1] = v158[0];
    operator delete(v158[0]);
  }

  if (v152[0])
  {
    v152[1] = v152[0];
    operator delete(v152[0]);
  }

  if (*(&v167 + 1))
  {
    *&v168 = *(&v167 + 1);
    operator delete(*(&v167 + 1));
  }

  if (v166)
  {
    *(&v166 + 1) = v166;
    operator delete(v166);
  }

  if (*(&v164 + 1))
  {
    *&v165 = *(&v164 + 1);
    operator delete(*(&v164 + 1));
  }

  if (v163)
  {
    *(&v163 + 1) = v163;
    operator delete(v163);
  }

  if (!v17)
  {
LABEL_165:
    v2 = 0;
    v113 = v172;
    if (!v172)
    {
      goto LABEL_167;
    }

    goto LABEL_166;
  }

  v19 = (v10 >> 5);
  v20 = *(this + 87);
  v21 = (*(this + 88) - v20) >> 2;
  if (v19 <= v21)
  {
    if (v19 < v21)
    {
      *(this + 88) = v20 + 4 * v19;
    }
  }

  else
  {
    std::vector<int>::__append(this + 29, v19 - v21, &operations_research::sat::kNoLiteralIndex);
  }

  if (v11 < 1)
  {
    LODWORD(v22) = 0;
  }

  else
  {
    v22 = v10 >> 5;
    if (*(this + 166) > v11)
    {
      v23 = *(this + 84) + 8 * ((v11 + 63) >> 6);
      *(v23 - 8) &= ~(-2 << (v11 + 63));
      v22 = v10 >> 5;
    }
  }

  *(this + 166) = v22;
  v24 = (v22 + 63) >> 6;
  v152[0] = 0;
  v25 = *(this + 84);
  v26 = (*(this + 85) - v25) >> 3;
  if (v24 <= v26)
  {
    if (v24 < v26)
    {
      *(this + 85) = v25 + 8 * v24;
    }
  }

  else
  {
    std::vector<unsigned long long>::__append(this + 672, v24 - v26, v152);
  }

  v147 = IsEnabled1 | a2;
  v27 = v12 * 0.00000004 + 0.0;
  *(this + 81) = *(this + 80);
  v28 = v169;
  if (*(&v169 + 1) == v169)
  {
    v148 = 0;
    *(this + 632) = 1;
    goto LABEL_161;
  }

  v143 = CurrentTimeNanos;
  v29 = 0;
  v148 = 0;
  v30 = 0;
  v31 = (this + 672);
  v146 = (this + 696);
  do
  {
    v149 = v30;
    v32 = *(*(&v170 + 1) + 4 * v29);
    if (!v32)
    {
      v39 = 0;
      v33 = 0;
      v40 = 0;
      goto LABEL_67;
    }

    v33 = (v172 + 4 * *(v28 + 4 * v29));
    v34 = 4 * v32;
    v35 = 4 * v32;
    v36 = v33;
    do
    {
      v37 = *v36;
      v38 = *(*(*(this + 17) + 24) + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8));
      if (((v38 >> (v37 & 0x3E)) & 3) != 0)
      {
        v41 = ((v38 >> v37) & 1) == 0;
        while (1)
        {
          v42 = *v33;
          v43 = *v33;
          v44 = v42 >> 6;
          v45 = *v31;
          if (((1 << v42) & *(*v31 + 8 * (v42 >> 6))) == 0)
          {
            ++*(this + 54);
            *(v45 + 8 * v44) |= 1 << v42;
            *(*(this + 87) + 4 * v43) = v42;
          }

          v46 = *(*(v151 + 24) + 8 * v44);
          v47 = v42 & 0x3F ^ v41;
          if (((v46 >> (v47 ^ 1u)) & 1) != 0 || ((v46 >> v47) & 1) == 0 && !operations_research::sat::BinaryImplicationGraph::FixLiteral(this, v43))
          {
            goto LABEL_165;
          }

          ++v33;
          v34 -= 4;
          if (!v34)
          {
            goto LABEL_150;
          }
        }
      }

      ++v36;
      v35 -= 4;
    }

    while (v35);
    if (v32 != 1)
    {
      v39 = 0;
      v40 = v32;
LABEL_67:
      std::__sort<std::__less<int,int> &,int *>();
      LODWORD(v163) = *v33;
      std::vector<int>::push_back[abi:ne200100](this + 640, &v163);
      if (v39)
      {
        if (v148 < 1)
        {
          goto LABEL_150;
        }

        v48 = *v9 + 32 * v163;
        v49 = (v48 + 8);
        v50 = *v48;
        v51 = (v48 + 8);
        v52 = v149;
        if (*v48)
        {
          v51 = *v49;
        }

        v53 = v50 >> 1;
        v54 = v50 & 0x7FFFFFFFFFFFFFFELL;
        if ((v50 & 0x7FFFFFFFFFFFFFFELL) != 0)
        {
          v107 = *v146;
          v108 = 4 * (v50 >> 1);
          do
          {
            v109 = *(v107 + 4 * *v51);
            if (v109 != -1 && v109 != v163)
            {
              *v51 = v109;
            }

            ++v51;
            v108 -= 4;
          }

          while (v108);
        }

        if (v50)
        {
          v49 = *v49;
        }

        v55 = 126 - 2 * __clz((4 * (v50 >> 1)) >> 2);
        if (v54)
        {
          v56 = v55;
        }

        else
        {
          v56 = 0;
        }

        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,false>(v49, &v49[v53], v174, v56, 1);
        operations_research::sat::BinaryImplicationGraph::DetectEquivalences(v174, v48, (v48 + 8), v148, v152);
        v148 = v152[0];
        goto LABEL_151;
      }

      if (v32)
      {
        v57 = *v31;
        v58 = *v146;
        v59 = 2;
        v60 = 1;
        while (1)
        {
          v61 = v33[v60];
          if (((1 << v61) & *(v57 + 8 * (v61 >> 6))) == 0)
          {
            ++*(this + 54);
            *(v57 + 8 * (v61 >> 6)) |= 1 << v61;
          }

          v62 = v163;
          *(v58 + 4 * v61) = v163;
          if ((v33[v59 - 2] ^ v61) == 1)
          {
            break;
          }

          v60 = v59++;
          if (v40 <= v60)
          {
            goto LABEL_86;
          }
        }

        if (v147)
        {
          absl::lts_20240722::log_internal::LogMessage::LogMessage(v152, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/clause.cc", 1364);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v152, "Trivially UNSAT in DetectEquivalences()", 0x27uLL);
          absl::lts_20240722::log_internal::LogMessage::~LogMessage(v152);
          v2 = 0;
          v113 = v172;
          if (v172)
          {
            goto LABEL_166;
          }

          goto LABEL_167;
        }

        goto LABEL_165;
      }

      v62 = v163;
LABEL_86:
      v144 = v11;
      v150 = v9;
      v63 = (*v9 + 32 * v62);
      v65 = (v63 + 1);
      v64 = *v63;
      v66 = (v63 + 1);
      if (*v63)
      {
        v66 = *v65;
      }

      if ((v64 & 0x7FFFFFFFFFFFFFFELL) == 0)
      {
        v73 = 0;
LABEL_102:
        absl::lts_20240722::inlined_vector_internal::Storage<operations_research::sat::Literal,6ul,std::allocator<operations_research::sat::Literal>>::Resize<absl::lts_20240722::inlined_vector_internal::DefaultValueAdapter<std::allocator<operations_research::sat::Literal>>>(v63, v73);
        v145 = v10;
        if (v32)
        {
          v74 = 1;
          v75 = 1;
          do
          {
            LODWORD(v152[0]) = 0;
            LODWORD(v152[0]) = v33[v74];
            v76 = *v150 + 32 * SLODWORD(v152[0]);
            v78 = (v76 + 8);
            v77 = *v76;
            v79 = (v76 + 8);
            if (*v76)
            {
              v79 = *v78;
            }

            if ((v77 & 0x7FFFFFFFFFFFFFFELL) != 0)
            {
              v80 = 4 * (v77 >> 1);
              do
              {
                v83 = *v79;
                v84 = *(this + 87);
                if (*v79 < ((*(this + 88) - v84) >> 2))
                {
                  v85 = *(v84 + 4 * v83);
                  if (v85 != -1)
                  {
                    v83 = v85;
                  }
                }

                if (v83 != v163)
                {
                  v86 = *v63;
                  if (*v63)
                  {
                    v81 = v63[1];
                    v82 = v86 >> 1;
                    if (v86 >> 1 == v63[2])
                    {
                      goto LABEL_118;
                    }
                  }

                  else
                  {
                    v81 = v63 + 1;
                    v82 = v86 >> 1;
                    if (v86 >> 1 == 6)
                    {
LABEL_118:
                      absl::lts_20240722::inlined_vector_internal::Storage<operations_research::sat::Literal,6ul,std::allocator<operations_research::sat::Literal>>::EmplaceBackSlow<operations_research::sat::Literal const&>(v63);
                    }
                  }

                  *(v81 + v82) = v83;
                  *v63 = v86 + 2;
                }

                ++v79;
                v80 -= 4;
              }

              while (v80);
            }

            v87 = *v63;
            if (*v63)
            {
              v88 = v63[1];
              v89 = v63[2];
            }

            else
            {
              v88 = v63 + 1;
              v89 = 6;
            }

            v31 = (this + 672);
            if (v87 >> 1 == v89)
            {
              absl::lts_20240722::inlined_vector_internal::Storage<operations_research::sat::Literal,6ul,std::allocator<operations_research::sat::Literal>>::EmplaceBackSlow<operations_research::sat::Literal const&>(v63);
            }

            *(v88 + (v87 >> 1)) = v152[0];
            *v63 = v87 + 2;
            if (*v76)
            {
              operator delete(*v78);
            }

            *(v76 + 8) = v163;
            *v76 = 2;
            v74 = ++v75;
          }

          while (v40 > v75);
        }

        v90 = *v63;
        v91 = (v63 + 1);
        if (*v63)
        {
          v91 = *v65;
        }

        v92 = 126 - 2 * __clz((2 * v90) >> 2);
        if ((v90 & 0x7FFFFFFFFFFFFFFELL) != 0)
        {
          v93 = v92;
        }

        else
        {
          v93 = 0;
        }

        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,false>(v91, (v91 + ((2 * v90) & 0xFFFFFFFFFFFFFFFCLL)), v152, v93, 1);
        v10 = v145;
        v94 = *v63;
        v95 = (v63 + 1);
        if (*v63)
        {
          v95 = *v65;
        }

        v96 = v94 >> 1;
        v97 = &v95[4 * (v94 >> 1)];
        if ((v94 & 0x7FFFFFFFFFFFFFFELL) != 0)
        {
          v95 += 4;
          v98 = 4 * v96 - 4;
          while (v98)
          {
            v100 = *(v95 - 1);
            v99 = *v95;
            v95 += 4;
            v98 -= 4;
            if (v100 == v99)
            {
              v95 -= 8;
              goto LABEL_139;
            }
          }
        }

        if (v95 != v97)
        {
LABEL_139:
          v101 = v95 + 8;
          if (v95 + 8 != v97)
          {
            v102 = *v95;
            do
            {
              v103 = v102;
              v102 = *v101;
              if (v103 != *v101)
              {
                *(v95 + 1) = v102;
                v95 += 4;
              }

              v101 += 4;
            }

            while (v101 != v97);
          }

          v97 = v95 + 4;
        }

        if (v94)
        {
          v65 = *v65;
        }

        v104 = v65 + 4 * v96;
        if (v97 != v104)
        {
          v105 = v104 - v97;
          v106 = ((v97 - v65) >> 2) + ((v104 - v97) >> 2);
          memmove(v97, v65 + 4 * v106, 4 * (v96 - v106));
          *v63 -= v105 >> 1;
        }

        v148 = v148 + v40 - 1;
        v9 = v150;
        v11 = v144;
        goto LABEL_150;
      }

      v67 = 0;
      v68 = *(this + 87);
      v69 = (*(this + 88) - v68) >> 2;
      v70 = 4 * (v64 >> 1);
      while (1)
      {
        v71 = *v66;
        if (*v66 < v69)
        {
          break;
        }

        if (v71 != v163)
        {
          goto LABEL_98;
        }

LABEL_91:
        ++v66;
        v70 -= 4;
        if (!v70)
        {
          v73 = v67;
          goto LABEL_102;
        }
      }

      if (*(v68 + 4 * v71) != -1)
      {
        v71 = *(v68 + 4 * v71);
      }

      if (v71 == v163)
      {
        goto LABEL_91;
      }

LABEL_98:
      v72 = v63 + 1;
      if (v64)
      {
        v72 = *v65;
      }

      *(v72 + v67++) = v71;
      goto LABEL_91;
    }

    if (((*(*(this + 99) + ((*v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> *v33) & 1) == 0)
    {
      v39 = 1;
      v40 = 1;
      goto LABEL_67;
    }

LABEL_150:
    v52 = v149;
LABEL_151:
    v30 = v52 + 1;
    v29 = v30;
    v28 = v169;
  }

  while (v30 < ((*(&v169 + 1) - v169) >> 2));
  *(this + 632) = 1;
  if (v148)
  {
    v116 = *(this + 35);
    v115 = *(this + 36);
    CurrentTimeNanos = v143;
    if (v115 != v116)
    {
      v117 = *(this + 36);
      do
      {
        v118 = *(v117 - 32);
        v117 -= 32;
        if (v118)
        {
          operator delete(*(v115 - 24));
        }

        v115 = v117;
      }

      while (v117 != v116);
    }

    *(this + 36) = v116;
    operations_research::sat::BinaryImplicationGraph::CleanUpAndAddAtMostOnes(this, 0);
    *(this + 28) = 0;
    if (v11 < 1)
    {
      v130 = 0.0;
    }

    else
    {
      v119 = *v9;
      v120 = (v10 >> 5) & 0x7FFFFFFF;
      if (v120 > 4)
      {
        if (((v10 >> 5) & 3) != 0)
        {
          v131 = (v10 >> 5) & 3;
        }

        else
        {
          v131 = 4;
        }

        v121 = v120 - v131;
        v132 = (v119 + 64);
        v133 = v131 - v120;
        v134 = 0uLL;
        v135 = 0uLL;
        do
        {
          v136 = v132 - 8;
          v137 = vld4q_f64(v136);
          v138 = vld4q_f64(v132);
          v134 = vsraq_n_u64(v134, v137, 1uLL);
          v135 = vsraq_n_u64(v135, v138, 1uLL);
          v132 += 16;
          v133 += 4;
        }

        while (v133);
        v122 = vaddvq_s64(vaddq_s64(v135, v134));
      }

      else
      {
        v121 = 0;
        v122 = 0;
      }

      v139 = (v119 + 32 * v121);
      v140 = v121 - v120;
      do
      {
        v141 = *v139;
        v139 += 4;
        v122 += v141 >> 1;
      }

      while (!__CFADD__(v140++, 1));
      *(this + 28) = v122;
      v130 = v122;
    }

    v27 = v27 + v130 * 0.00000002;
  }

  else
  {
    v148 = 0;
    CurrentTimeNanos = v143;
  }

LABEL_161:
  *(*(this + 15) + 112) = v27 + *(*(this + 15) + 112);
  v111 = *(*(this + 17) + 12);
  v112 = *(this + 210);
  operations_research::sat::BinaryImplicationGraph::RemoveFixedVariables(this);
  if (!v147)
  {
    v2 = 1;
    v113 = v172;
    if (!v172)
    {
      goto LABEL_167;
    }

LABEL_166:
    *(&v172 + 1) = v113;
    operator delete(v113);
    goto LABEL_167;
  }

  absl::lts_20240722::log_internal::LogMessage::LogMessage(v152, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/clause.cc", 1420);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v152, "SCC. ", 5uLL);
  LODWORD(v163) = v148;
  v123 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v152, &v163);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v123, " redundant equivalent literals. ", 0x20uLL);
  LODWORD(v163) = v111 - v112;
  v124 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v123, &v163);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v124, " fixed. ", 8uLL);
  *&v163 = *(this + 28);
  v125 = absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v124, &v163);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v125, " implications left. ", 0x14uLL);
  *&v163 = (*(this + 26) - *(this + 25)) >> 5;
  v126 = absl::lts_20240722::log_internal::LogMessage::operator<<<unsigned long,0>(v125, &v163);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v126, " literals.", 0xAuLL);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v126, " size of at_most_one buffer = ", 0x1EuLL);
  *&v163 = (*(this + 39) - *(this + 38)) >> 2;
  v127 = absl::lts_20240722::log_internal::LogMessage::operator<<<unsigned long,0>(v126, &v163);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v127, ".", 1uLL);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v127, " dtime: ", 8uLL);
  *&v163 = v27;
  v128 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v127, &v163);
  v129 = absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v128, " wtime: ", 8uLL);
  *&v163 = (absl::lts_20240722::GetCurrentTimeNanos(v129) - CurrentTimeNanos) * 0.000000001;
  absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v128, &v163);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(v152);
  v2 = 1;
  v113 = v172;
  if (v172)
  {
    goto LABEL_166;
  }

LABEL_167:
  if (*(&v170 + 1))
  {
    *&v171 = *(&v170 + 1);
    operator delete(*(&v170 + 1));
  }

  if (v169)
  {
    *(&v169 + 1) = v169;
    operator delete(v169);
  }

  return v2;
}

void sub_23C9EAA68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  operations_research::sat::SubcircuitConstraint(int,std::vector<int> const&,std::vector<int> const&,std::vector<operations_research::sat::Literal> const&,BOOL)::$_0::~$_0(v11 - 192);
  _Unwind_Resume(a1);
}

void *operations_research::sat::CompactVectorVector<int,int>::reserve(void *result, int a2)
{
  if (a2 > ((result[2] - *result) >> 2))
  {
    if ((a2 & 0x80000000) == 0)
    {
      v2 = result[1] - *result;
      operator new();
    }

    goto LABEL_8;
  }

  v3 = result[3];
  if (a2 > ((result[5] - v3) >> 2))
  {
    if ((a2 & 0x80000000) == 0)
    {
      v4 = result[4] - v3;
      operator new();
    }

LABEL_8:
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void StronglyConnectedComponentsFinder<int,operations_research::sat::SccGraph,operations_research::sat::CompactVectorVector<int,int>>::FindStronglyConnectedComponents(std::vector<int> *a1, int a2, uint64_t a3, uint64_t a4)
{
  a1->__end_ = a1->__begin_;
  a1[1].__end_ = a1[1].__begin_;
  __u = 0;
  std::vector<int>::assign(a1 + 2, a2, &__u);
  v92 = a1 + 3;
  a1[3].__end_ = a1[3].__begin_;
  begin = a1[2].__begin_;
  v94 = 0;
  v86 = a2;
  if (a2 >= 1)
  {
    v7 = 0;
    LODWORD(v8) = 0;
    v93 = begin;
    while (begin[v7])
    {
LABEL_4:
      v94 = ++v7;
      if (v7 >= v86)
      {
        return;
      }
    }

    std::vector<int>::push_back[abi:ne200100](v92, &v94);
    end = a1[3].__end_;
    while (1)
    {
      v12 = *(end - 1);
      v10 = end - 1;
      v11 = v12;
      v13 = begin[v12];
      if (!v13)
      {
        v22 = a1->__end_;
        value = a1->__end_cap_.__value_;
        if (v22 >= value)
        {
          v24 = a1->__begin_;
          v25 = v22 - a1->__begin_;
          v26 = (v25 >> 2) + 1;
          if (v26 >> 62)
          {
            goto LABEL_102;
          }

          v27 = value - v24;
          if (v27 >> 1 > v26)
          {
            v26 = v27 >> 1;
          }

          if (v27 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v28 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v28 = v26;
          }

          if (v28)
          {
            if (!(v28 >> 62))
            {
              operator new();
            }

LABEL_103:
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v35 = (4 * (v25 >> 2));
          *v35 = v11;
          v23 = v35 + 1;
          memcpy(0, v24, v25);
          a1->__begin_ = 0;
          a1->__end_ = v23;
          a1->__end_cap_.__value_ = 0;
          if (v24)
          {
            operator delete(v24);
          }

          begin = v93;
        }

        else
        {
          *v22 = v11;
          v23 = (v22 + 4);
        }

        a1->__end_ = v23;
        v8 = (v23 - a1->__begin_) >> 2;
        begin[v11] = v8;
        v37 = a1[1].__end_;
        v36 = a1[1].__end_cap_.__value_;
        if (v37 >= v36)
        {
          v39 = a1[1].__begin_;
          v40 = v37 - v39;
          v41 = (v37 - v39) >> 2;
          v42 = v41 + 1;
          if ((v41 + 1) >> 62)
          {
            goto LABEL_102;
          }

          v43 = v36 - v39;
          if (v43 >> 1 > v42)
          {
            v42 = v43 >> 1;
          }

          if (v43 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v44 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v44 = v42;
          }

          if (v44)
          {
            if (!(v44 >> 62))
            {
              operator new();
            }

            goto LABEL_103;
          }

          v45 = v41;
          v46 = (4 * v41);
          v47 = &v46[-v45];
          *v46 = v8;
          v38 = v46 + 1;
          memcpy(v47, v39, v40);
          a1[1].__begin_ = v47;
          a1[1].__end_ = v38;
          a1[1].__end_cap_.__value_ = 0;
          if (v39)
          {
            operator delete(v39);
          }

          begin = v93;
        }

        else
        {
          *v37 = v8;
          v38 = (v37 + 4);
        }

        a1[1].__end_ = v38;
        v48 = operations_research::sat::SccGraph::operator[](a3, v11);
        v50 = *v48;
        v49 = v48[1];
        if (*v48 != v49)
        {
          v51 = 0x7FFFFFFF;
          do
          {
            v52 = *v50;
            v53 = begin[v52];
            if (v53)
            {
              if (v53 < v51)
              {
                v51 = begin[v52];
              }
            }

            else
            {
              v55 = a1[3].__end_;
              v54 = a1[3].__end_cap_.__value_;
              if (v55 >= v54)
              {
                v56 = v92->__begin_;
                v57 = v55 - v92->__begin_;
                v58 = v57 >> 2;
                v59 = (v57 >> 2) + 1;
                if (v59 >> 62)
                {
                  goto LABEL_102;
                }

                v60 = v54 - v56;
                if (v60 >> 1 > v59)
                {
                  v59 = v60 >> 1;
                }

                if (v60 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v61 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v61 = v59;
                }

                if (v61)
                {
                  if (!(v61 >> 62))
                  {
                    operator new();
                  }

                  goto LABEL_103;
                }

                *(4 * v58) = v52;
                v62 = 4 * v58 + 4;
                memcpy(0, v56, v57);
                a1[3].__begin_ = 0;
                a1[3].__end_ = v62;
                a1[3].__end_cap_.__value_ = 0;
                if (v56)
                {
                  operator delete(v56);
                }

                begin = v93;
                a1[3].__end_ = v62;
              }

              else
              {
                *v55 = v52;
                a1[3].__end_ = v55 + 1;
              }
            }

            ++v50;
          }

          while (v50 != v49);
          if (v51 < v8)
          {
            v63 = a1[1].__end_;
            do
            {
              LODWORD(v8) = *(v63 - 2);
              --v63;
            }

            while (v8 > v51);
            a1[1].__end_ = v63;
          }
        }

        goto LABEL_8;
      }

      a1[3].__end_ = v10;
      if (v8 == v13)
      {
        break;
      }

LABEL_8:
      end = a1[3].__end_;
      if (a1[3].__begin_ == end)
      {
        v7 = v94;
        goto LABEL_4;
      }
    }

    v15 = a1->__begin_;
    v14 = a1->__end_;
    v16 = a4;
    v17 = (*(a4 + 56) - *(a4 + 48)) >> 2;
    v19 = *(a4 + 8);
    v18 = *(a4 + 16);
    if (v19 >= v18)
    {
      v29 = *a4;
      v30 = v19 - *a4;
      v31 = v30 >> 2;
      v32 = (v30 >> 2) + 1;
      if (v32 >> 62)
      {
        goto LABEL_102;
      }

      v33 = v18 - v29;
      if (v33 >> 1 > v32)
      {
        v32 = v33 >> 1;
      }

      if (v33 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v34 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v34 = v32;
      }

      v88 = a1->__begin_;
      if (v34)
      {
        if (!(v34 >> 62))
        {
          operator new();
        }

        goto LABEL_103;
      }

      v64 = a1->__end_;
      *(4 * v31) = v17;
      v20 = 4 * v31 + 4;
      memcpy(0, v29, v30);
      *a4 = 0;
      *(a4 + 8) = v20;
      *(a4 + 16) = 0;
      if (v29)
      {
        operator delete(v29);
      }

      v16 = a4;
      begin = v93;
      v14 = v64;
      v15 = v88;
    }

    else
    {
      *v19 = v17;
      v20 = (v19 + 1);
    }

    v65 = v8 - 1;
    v66 = &v15[v8 - 1];
    v67 = v14 - v66;
    v68 = (v14 - v66) >> 2;
    *(v16 + 8) = v20;
    v70 = *(v16 + 32);
    v69 = *(v16 + 40);
    if (v70 >= v69)
    {
      v72 = *(v16 + 24);
      v73 = v70 - v72;
      v74 = (v70 - v72) >> 2;
      v75 = v74 + 1;
      if ((v74 + 1) >> 62)
      {
LABEL_102:
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      v76 = v69 - v72;
      if (v76 >> 1 > v75)
      {
        v75 = v76 >> 1;
      }

      if (v76 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v77 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v77 = v75;
      }

      v87 = v14;
      v89 = v66;
      if (v77)
      {
        if (!(v77 >> 62))
        {
          operator new();
        }

        goto LABEL_103;
      }

      v78 = (v70 - v72) >> 2;
      v79 = (4 * v74);
      v80 = (4 * v74 - 4 * v78);
      *v79 = v68;
      v71 = v79 + 1;
      memcpy(v80, v72, v73);
      *(a4 + 24) = v80;
      *(a4 + 32) = v71;
      *(a4 + 40) = 0;
      if (v72)
      {
        operator delete(v72);
      }

      v16 = a4;
      begin = v93;
      v14 = v87;
      v66 = v89;
    }

    else
    {
      *v70 = v68;
      v71 = v70 + 4;
    }

    *(v16 + 32) = v71;
    std::vector<operations_research::sat::Literal>::__insert_with_size[abi:ne200100]<operations_research::sat::Literal const*,operations_research::sat::Literal const*>(v16 + 48, *(v16 + 56), v66, v14, v67 >> 2);
    v81 = a1->__begin_;
    v82 = a1->__end_ - a1->__begin_;
    if (v65 >= v82)
    {
      if (v65 <= v82)
      {
        goto LABEL_99;
      }
    }

    else
    {
      v83 = v65;
      do
      {
        begin[v81[v83]] = 0x7FFFFFFF;
        v83 = v8;
        LODWORD(v8) = v8 + 1;
      }

      while (v82 > v83);
      if (v65 <= v82)
      {
        if (v65 < v82)
        {
          a1->__end_ = &v81[v65];
        }

        goto LABEL_99;
      }
    }

    std::vector<int>::__append(a1, v65 - v82);
LABEL_99:
    v85 = a1[1].__begin_;
    v84 = a1[1].__end_;
    a1[1].__end_ = v84 - 1;
    if (v85 == v84 - 1)
    {
      LODWORD(v8) = 0;
    }

    else
    {
      LODWORD(v8) = *(v84 - 2);
    }

    goto LABEL_8;
  }
}