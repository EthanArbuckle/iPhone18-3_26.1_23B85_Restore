uint64_t operations_research::ComputeGcdOfRoundedDoubles(uint64_t a1, int a2, double a3)
{
  if (a2 < 1)
  {
    return 1;
  }

  v3 = 0;
  v4 = 0;
  v5 = a2 & 0x7FFFFFFF;
  do
  {
    v6 = fabs(round(*(a1 + 8 * v3) * a3));
    v7 = v6;
    if (!v6)
    {
      goto LABEL_7;
    }

    if (v4)
    {
      v8 = v4;
      do
      {
        v4 = v7;
        v7 = v8 % v7;
        v8 = v4;
      }

      while (v7);
LABEL_7:
      if (++v3 >= v5)
      {
        break;
      }

      continue;
    }

    v4 = v6;
    if (++v3 >= v5)
    {
      break;
    }
  }

  while (v4 != 1);
  if (v4 <= 1)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

void *operations_research::glop::InitialBasis::InitialBasis(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *result = 0;
  result[1] = result;
  result[2] = result;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  result[7] = a6;
  return result;
}

void operations_research::glop::InitialBasis::CompleteBixbyBasis(uint64_t a1, int a2, std::vector<int> *a3)
{
  v6 = **(a1 + 24);
  memset(v29, 0, sizeof(v29));
  if (v6)
  {
    if ((v6 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  memset(v28, 0, sizeof(v28));
  v7 = a3->__end_ - a3->__begin_;
  if (v6 > v7)
  {
    std::vector<int>::__append(a3, v6 - v7, &operations_research::glop::kInvalidCol);
  }

  else if (v6 < v7)
  {
    a3->__end_ = &a3->__begin_[v6];
  }

  v8 = **(a1 + 24);
  v26 = 0;
  v27 = 0;
  __p = 0;
  if (v8)
  {
    if ((v8 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v22 = 0;
  v23 = 0;
  v24 = 0;
  operations_research::glop::InitialBasis::ComputeCandidates(a1, a2, &v22);
  v9 = v22;
  if (v23 != v22)
  {
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = v9[v10];
      v13 = *(a1 + 24);
      v14 = v13[7];
      v15 = *(v14 + 8 * v12);
      v16 = v13[4] + 4 * v15;
      v17 = v13[1] + 8 * v15;
      v21[0] = *(v14 + (((v12 << 32) + 0x100000000) >> 29)) - v15;
      v21[1] = v16;
      v21[2] = v17;
      if (operations_research::glop::InfinityNorm(v21) == 1.0)
      {
        v20 = 0;
        v18 = operations_research::glop::RestrictedInfinityNorm(v21, v28, &v20);
        if (v18 > 0.99 || operations_research::glop::IsDominated(v21, &__p) && (v18 = operations_research::glop::RestrictedInfinityNorm(v21, v29, &v20), v18 != 0.0))
        {
          *(v29[0] + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v20);
          operations_research::glop::SetSupportToFalse(v21, v28);
          v19 = v20;
          *(__p + v20) = fabs(v18) * 0.01;
          a3->__begin_[v19] = v12;
        }
      }

      v10 = v11;
      v9 = v22;
      ++v11;
    }

    while (v10 < v23 - v22);
  }

  if (v9)
  {
    v23 = v9;
    operator delete(v9);
  }

  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }

  if (v28[0])
  {
    operator delete(v28[0]);
  }

  if (v29[0])
  {
    operator delete(v29[0]);
  }
}

void sub_23CBA18D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22)
{
  if (__p)
  {
    operator delete(__p);
    v23 = a22;
    if (!a22)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v23 = a22;
    if (!a22)
    {
      goto LABEL_3;
    }
  }

  operator delete(v23);
  _Unwind_Resume(exception_object);
}

uint64_t operations_research::glop::InitialBasis::ComputeCandidates(uint64_t a1, int a2, unsigned int **a3)
{
  v5 = *a3;
  a3[1] = *a3;
  *a1 = 0;
  v17 = 0;
  if (a2 < 1)
  {
    v8 = 0.0;
    v10 = v5;
  }

  else
  {
    v7 = 0;
    v8 = 0.0;
    do
    {
      if (*(**(a1 + 56) + v7) != 4 && (*(*(*(a1 + 24) + 56) + (((v7 << 32) + 0x100000000) >> 29)) - *(*(*(a1 + 24) + 56) + 8 * v7)) >= 1)
      {
        std::vector<int>::push_back[abi:ne200100](a3, &v17);
        v9 = v17;
        v8 = fabs(*(**(a1 + 32) + 8 * v17));
        if (*a1 >= v8)
        {
          v8 = *a1;
        }

        *a1 = v8;
        LODWORD(v7) = v9;
      }

      v7 = (v7 + 1);
      v17 = v7;
    }

    while (v7 < a2);
    v10 = *a3;
    v5 = a3[1];
  }

  v11 = 126 - 2 * __clz((v5 - v10) >> 2);
  v12 = v8 * 1000.0;
  if (v5 == v10)
  {
    v13 = 0;
  }

  else
  {
    v13 = v11;
  }

  v14 = v8 == 0.0;
  v15 = 1.0;
  if (!v14)
  {
    v15 = v12;
  }

  *a1 = v15;
  v18 = *(a1 + 8);
  return std::__introsort<std::_ClassicAlgPolicy,operations_research::glop::InitialBasis::BixbyColumnComparator &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,false>(v10, v5, &v18, v13, 1);
}

void operations_research::glop::InitialBasis::GetMarosBasis<false>(uint64_t a1, uint64_t a2, std::vector<int> *this)
{
  v3 = this;
  if (dword_27E25CDD8 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&void operations_research::glop::InitialBasis::GetMarosBasis<false>(operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,operations_research::glop::StrictITIVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>> *)::{lambda(void)#1}::operator() const(void)::site, dword_27E25CDD8))
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v90, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/initial_basis.cc", 235);
    v83 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v90, 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v83, "Starting Maros crash procedure.", 0x1FuLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v90);
    v3 = this;
  }

  v6 = **(a1 + 24);
  v7 = v6;
  v8 = v3->__end_ - v3->__begin_;
  if (v6 <= v8)
  {
    if (v6 < v8)
    {
      v3->__end_ = &v3->__begin_[v6];
    }
  }

  else
  {
    std::vector<int>::__append(v3, v6 - v8);
  }

  v86 = (a2 - v6);
  if (v6 < 1)
  {
    goto LABEL_14;
  }

  begin = v3->__begin_;
  if (v6 > 7)
  {
    v10 = v6 & 0x7FFFFFF8;
    v11 = vdupq_n_s32(v86);
    v12 = xmmword_23CE38660;
    v13 = begin + 1;
    v14.i64[0] = 0x400000004;
    v14.i64[1] = 0x400000004;
    v15.i64[0] = 0x800000008;
    v15.i64[1] = 0x800000008;
    v16 = v10;
    do
    {
      v17 = vaddq_s32(v11, v12);
      v13[-1] = v17;
      *v13 = vaddq_s32(v17, v14);
      v12 = vaddq_s32(v12, v15);
      v13 += 2;
      v16 -= 8;
    }

    while (v16);
    if (v10 == v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v10 = 0;
  }

  v18 = v10 + a2 - v6;
  v19 = &begin->i32[v10];
  v20 = v6 - v10;
  do
  {
    *v19++ = v18++;
    --v20;
  }

  while (v20);
LABEL_14:
  if (a2 << 32)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (v86 >= 1)
  {
    v21 = 0;
    v22 = **(a1 + 56);
    do
    {
      if (*(v22 + v21) == 4)
      {
        *((v21 >> 3) & 0x1FFFFFFFFFFFFFF8) &= ~(1 << v21);
      }

      ++v21;
    }

    while (v86 != v21);
  }

  v84 = v6;
  if (v86 < a2)
  {
    v23 = **(a1 + 56);
    v24 = v86;
    do
    {
      if (!*(v23 + v24))
      {
        *((v24 >> 3) & 0x1FFFFFFFFFFFFFF8) &= ~(1 << v24);
      }

      ++v24;
    }

    while (a2 != v24);
  }

  v99 = 0;
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  *v96 = 0u;
  *v93 = 0u;
  *v94 = 0u;
  *v91 = 0u;
  v92 = 0u;
  *v90 = 0u;
  operations_research::glop::MatrixNonZeroPattern::Reset(v90, v6, a2);
  if (v86 >= 1)
  {
    for (i = 0; i != v86; ++i)
    {
      v26 = *(a1 + 24);
      v27 = *(v26 + 56);
      v28 = *(v27 + 8 * i);
      v29 = *(v27 + (((i << 32) + 0x100000000) >> 29)) - v28;
      if (v29 >= 1)
      {
        v30 = (*(v26 + 32) + 4 * v28);
        do
        {
          v32 = *v30++;
          v31 = v32;
          if (((*((v32 >> 3) & 0x1FFFFFFFFFFFFFF8) >> v32) & 1) != 0 && (*(8 * (i >> 6)) & (1 << i)) != 0)
          {
            operations_research::glop::MatrixNonZeroPattern::AddEntry(v90, v31, i);
          }

          --v29;
        }

        while (v29);
      }
    }
  }

  v33 = this;
  if (v7 >= 1)
  {
    v34 = v91[1];
    v35 = a2 - v84;
    v36 = v7;
    do
    {
      if (!*v34++)
      {
        *((v35 >> 3) & 0x1FFFFFFFFFFFFFF8) &= ~(1 << v35);
      }

      ++v35;
      --v36;
    }

    while (v36);
  }

  v89 = -1;
  if (v84 < 1)
  {
    goto LABEL_91;
  }

LABEL_45:
  v38 = 0;
  v39 = 0x80000000;
  v40 = -1;
  do
  {
    if (((*(((a2 - v7 + v38) >> 3) & 0x1FFFFFFFFFFFFFF8) >> (a2 - v7 + v38)) & 1) == 0)
    {
      goto LABEL_46;
    }

    if ((*(**(a1 + 56) + v38 + *(*(a1 + 24) + 4) - **(a1 + 24)) - 1) > 3u)
    {
      v41 = -*(v91[1] + v38);
      if (v41 <= v39)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v41 = *&asc_23CE490F0[4 * (*(**(a1 + 56) + v38 + *(*(a1 + 24) + 4) - **(a1 + 24)) - 1)] - *(v91[1] + v38);
      if (v41 <= v39)
      {
        goto LABEL_46;
      }
    }

    v89 = v38;
    v40 = v38;
    v39 = v41;
LABEL_46:
    ++v38;
  }

  while (v7 != v38);
  if (v40 != -1)
  {
    v88 = -1;
    v42 = v90[0] + 32 * v40;
    v45 = *v42;
    v44 = (v42 + 1);
    v43 = v45;
    if (v45)
    {
      v44 = *v44;
    }

    if ((v43 & 0x7FFFFFFFFFFFFFFELL) == 0)
    {
      goto LABEL_43;
    }

    v46 = &v44[v43 >> 1];
    v47 = 0.0;
    v48 = 0x80000000;
    v49 = -1;
    while (1)
    {
      v50 = *v44;
      if ((*((v50 >> 3) & 0x1FFFFFFFFFFFFFF8) >> v50))
      {
        if ((*(**(a1 + 56) + v50) - 1) > 3u)
        {
          v51 = v50 << 32;
          v52 = 30 - *(v93[0] + v50);
          if (v52 <= v48)
          {
            goto LABEL_60;
          }
        }

        else
        {
          v51 = v50 << 32;
          v52 = dword_23CE49114[(*(**(a1 + 56) + v50) - 1)] - *(v93[0] + v50);
          if (v52 <= v48)
          {
            goto LABEL_60;
          }
        }

        v53 = *(a1 + 24);
        v54 = v53[7];
        v55 = *(v54 + (v51 >> 29));
        v56 = *(v54 + ((v51 + 0x100000000) >> 29)) - v55;
        if (v56 < 1)
        {
          v47 = 0.0;
        }

        else
        {
          v57 = (v53[4] + 4 * v55);
          v58 = (v53[1] + 8 * v55);
          v47 = 0.0;
          v59 = 0.0;
          do
          {
            v60 = *v58++;
            v61 = v60;
            LODWORD(v60) = *v57++;
            v62 = fabs(v61);
            if (LODWORD(v60) == v40)
            {
              v47 = v62;
            }

            if (v59 < v62)
            {
              v59 = v62;
            }

            --v56;
          }

          while (v56);
          if (v47 < v59 * 0.001)
          {
            goto LABEL_60;
          }
        }

        v88 = *v44;
        v49 = v50;
        v48 = v52;
      }

LABEL_60:
      if (++v44 == v46)
      {
        if (v49 == -1)
        {
          goto LABEL_43;
        }

        v63 = **(a1 + 56);
        if ((*(v63 + *(*(a1 + 24) + 4) + v40 - **(a1 + 24)) - 1) > 3u)
        {
          v64 = 3;
          v65 = *(v63 + v49) - 1;
          if (v65 <= 3u)
          {
            goto LABEL_81;
          }

LABEL_78:
          if (v64 >= 3)
          {
            goto LABEL_43;
          }

LABEL_82:
          v33->__begin_[v40] = v49;
          if (dword_27E25CDF0 >= 2 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&void operations_research::glop::InitialBasis::GetMarosBasis<false>(operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,operations_research::glop::StrictITIVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>> *)::{lambda(void)#2}::operator() const(void)::site, dword_27E25CDF0))
          {
            absl::lts_20240722::log_internal::LogMessage::LogMessage(v87, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/initial_basis.cc", 341);
            v74 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v87, 2);
            absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v74, "Slack variable ", 0xFuLL);
            v75 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,0>(v74, &v89);
            absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v75, " replaced by column ", 0x14uLL);
            v76 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,0>(v75, &v88);
            absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v76, ". Pivot coefficient magnitude: ", 0x1FuLL);
            v100[0] = v47;
            v77 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v76, v100);
            absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v77, ".", 1uLL);
            absl::lts_20240722::log_internal::LogMessage::~LogMessage(v87);
            v33 = this;
          }

          v66 = v89;
          v67 = v88;
          *((v88 >> 3) & 0x1FFFFFFFFFFFFFF8) &= ~(1 << v88);
          *(((v66 + v86) >> 3) & 0x1FFFFFFFFFFFFFF8) &= ~(1 << (v66 + v86));
          operations_research::glop::MatrixNonZeroPattern::DeleteRowAndColumn(v90, v66, v67);
          v68 = (v90[0] + 32 * v89);
          v71 = *v68;
          v69 = v68 + 1;
          v70 = v71;
          if (v71)
          {
            v69 = *v69;
          }

          if ((v70 & 0x7FFFFFFFFFFFFFFELL) != 0)
          {
            v72 = 4 * (v70 >> 1);
            do
            {
              v73 = *v69;
              v69 = (v69 + 4);
              *((v73 >> 3) & 0x1FFFFFFFFFFFFFF8) &= ~(1 << v73);
              v72 -= 4;
            }

            while (v72);
          }
        }

        else
        {
          v64 = dword_23CE49124[(*(v63 + *(*(a1 + 24) + 4) + v40 - **(a1 + 24)) - 1)];
          v65 = *(v63 + v49) - 1;
          if (v65 > 3u)
          {
            goto LABEL_78;
          }

LABEL_81:
          if (v64 < dword_23CE49124[v65])
          {
            goto LABEL_82;
          }

LABEL_43:
          *(((v40 + v86) >> 3) & 0x1FFFFFFFFFFFFFF8) &= ~(1 << (v40 + v86));
        }

        v89 = -1;
        goto LABEL_45;
      }
    }
  }

LABEL_91:
  if (*(&v97 + 1))
  {
    *&v98 = *(&v97 + 1);
    operator delete(*(&v97 + 1));
  }

  if (v96[0])
  {
    operator delete(v96[0]);
  }

  if (v94[1])
  {
    operator delete(v94[1]);
  }

  if (v93[0])
  {
    v93[1] = v93[0];
    operator delete(v93[0]);
  }

  if (v91[1])
  {
    *&v92 = v91[1];
    operator delete(v91[1]);
  }

  v78 = v90[0];
  if (v90[0])
  {
    v79 = v90[1];
    v80 = v90[0];
    if (v90[1] != v90[0])
    {
      v81 = v90[1];
      do
      {
        v82 = *(v81 - 32);
        v81 -= 4;
        if (v82)
        {
          operator delete(*(v79 - 3));
        }

        v79 = v81;
      }

      while (v81 != v78);
      v80 = v90[0];
    }

    v90[1] = v78;
    operator delete(v80);
  }
}

void sub_23CBA23B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CBA23CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, void *a17, void *a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
    v35 = a29;
    if (!a29)
    {
LABEL_3:
      v36 = a26;
      if (!a26)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v35 = a29;
    if (!a29)
    {
      goto LABEL_3;
    }
  }

  operator delete(v35);
  v36 = a26;
  if (!a26)
  {
LABEL_4:
    v37 = a23;
    if (!a23)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(v36);
  v37 = a23;
  if (!a23)
  {
LABEL_5:
    v38 = a20;
    if (!a20)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(v37);
  v38 = a20;
  if (!a20)
  {
LABEL_6:
    v39 = a17;
    if (!a17)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(v38);
  v39 = a17;
  if (!a17)
  {
LABEL_7:
    if (!v33)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_14:
  v40 = a18;
  v41 = v39;
  if (a18 != v39)
  {
    v42 = a18;
    do
    {
      v43 = *(v42 - 32);
      v42 -= 32;
      if (v43)
      {
        operator delete(*(v40 - 24));
      }

      v40 = v42;
    }

    while (v42 != v39);
    v41 = a17;
  }

  operator delete(v41);
  if (!v33)
  {
LABEL_8:
    _Unwind_Resume(exception_object);
  }

LABEL_21:
  operator delete(v33);
  _Unwind_Resume(exception_object);
}

void operations_research::glop::InitialBasis::GetMarosBasis<true>(uint64_t a1, uint64_t a2, std::vector<int> *this)
{
  v3 = this;
  if (dword_27E25CE08 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&void operations_research::glop::InitialBasis::GetMarosBasis<true>(operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,operations_research::glop::StrictITIVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>> *)::{lambda(void)#1}::operator() const(void)::site, dword_27E25CE08))
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v90, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/initial_basis.cc", 235);
    v83 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v90, 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v83, "Starting Maros crash procedure.", 0x1FuLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v90);
    v3 = this;
  }

  v6 = **(a1 + 24);
  v7 = v6;
  v8 = v3->__end_ - v3->__begin_;
  if (v6 <= v8)
  {
    if (v6 < v8)
    {
      v3->__end_ = &v3->__begin_[v6];
    }
  }

  else
  {
    std::vector<int>::__append(v3, v6 - v8);
  }

  v86 = (a2 - v6);
  if (v6 < 1)
  {
    goto LABEL_14;
  }

  begin = v3->__begin_;
  if (v6 > 7)
  {
    v10 = v6 & 0x7FFFFFF8;
    v11 = vdupq_n_s32(v86);
    v12 = xmmword_23CE38660;
    v13 = begin + 1;
    v14.i64[0] = 0x400000004;
    v14.i64[1] = 0x400000004;
    v15.i64[0] = 0x800000008;
    v15.i64[1] = 0x800000008;
    v16 = v10;
    do
    {
      v17 = vaddq_s32(v11, v12);
      v13[-1] = v17;
      *v13 = vaddq_s32(v17, v14);
      v12 = vaddq_s32(v12, v15);
      v13 += 2;
      v16 -= 8;
    }

    while (v16);
    if (v10 == v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v10 = 0;
  }

  v18 = v10 + a2 - v6;
  v19 = &begin->i32[v10];
  v20 = v6 - v10;
  do
  {
    *v19++ = v18++;
    --v20;
  }

  while (v20);
LABEL_14:
  if (a2 << 32)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (v86 >= 1)
  {
    v21 = 0;
    v22 = **(a1 + 56);
    do
    {
      if (*(v22 + v21) == 4 || *(**(a1 + 32) + 8 * v21) != 0.0)
      {
        *((v21 >> 3) & 0x1FFFFFFFFFFFFFF8) &= ~(1 << v21);
      }

      ++v21;
    }

    while (v86 != v21);
  }

  v84 = v6;
  if (v86 < a2)
  {
    v23 = **(a1 + 56);
    v24 = v86;
    do
    {
      if (!*(v23 + v24))
      {
        *((v24 >> 3) & 0x1FFFFFFFFFFFFFF8) &= ~(1 << v24);
      }

      ++v24;
    }

    while (a2 != v24);
  }

  v99 = 0;
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  *v96 = 0u;
  *v93 = 0u;
  *v94 = 0u;
  *v91 = 0u;
  v92 = 0u;
  *v90 = 0u;
  operations_research::glop::MatrixNonZeroPattern::Reset(v90, v6, a2);
  if (v86 >= 1)
  {
    for (i = 0; i != v86; ++i)
    {
      v26 = *(a1 + 24);
      v27 = *(v26 + 56);
      v28 = *(v27 + 8 * i);
      v29 = *(v27 + (((i << 32) + 0x100000000) >> 29)) - v28;
      if (v29 >= 1)
      {
        v30 = (*(v26 + 32) + 4 * v28);
        do
        {
          v32 = *v30++;
          v31 = v32;
          if (((*((v32 >> 3) & 0x1FFFFFFFFFFFFFF8) >> v32) & 1) != 0 && (*(8 * (i >> 6)) & (1 << i)) != 0)
          {
            operations_research::glop::MatrixNonZeroPattern::AddEntry(v90, v31, i);
          }

          --v29;
        }

        while (v29);
      }
    }
  }

  v33 = this;
  if (v7 >= 1)
  {
    v34 = v91[1];
    v35 = a2 - v84;
    v36 = v7;
    do
    {
      if (!*v34++)
      {
        *((v35 >> 3) & 0x1FFFFFFFFFFFFFF8) &= ~(1 << v35);
      }

      ++v35;
      --v36;
    }

    while (v36);
  }

  v89 = -1;
  if (v84 < 1)
  {
    goto LABEL_93;
  }

LABEL_47:
  v38 = 0;
  v39 = 0x80000000;
  v40 = -1;
  do
  {
    if (((*(((a2 - v7 + v38) >> 3) & 0x1FFFFFFFFFFFFFF8) >> (a2 - v7 + v38)) & 1) == 0)
    {
      goto LABEL_48;
    }

    if ((*(**(a1 + 56) + v38 + *(*(a1 + 24) + 4) - **(a1 + 24)) - 1) > 3u)
    {
      v41 = -*(v91[1] + v38);
      if (v41 <= v39)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v41 = *&asc_23CE490F0[4 * (*(**(a1 + 56) + v38 + *(*(a1 + 24) + 4) - **(a1 + 24)) - 1)] - *(v91[1] + v38);
      if (v41 <= v39)
      {
        goto LABEL_48;
      }
    }

    v89 = v38;
    v40 = v38;
    v39 = v41;
LABEL_48:
    ++v38;
  }

  while (v7 != v38);
  if (v40 != -1)
  {
    v88 = -1;
    v42 = v90[0] + 32 * v40;
    v45 = *v42;
    v44 = (v42 + 1);
    v43 = v45;
    if (v45)
    {
      v44 = *v44;
    }

    if ((v43 & 0x7FFFFFFFFFFFFFFELL) == 0)
    {
      goto LABEL_45;
    }

    v46 = &v44[v43 >> 1];
    v47 = 0.0;
    v48 = 0x80000000;
    v49 = -1;
    while (1)
    {
      v50 = *v44;
      if ((*((v50 >> 3) & 0x1FFFFFFFFFFFFFF8) >> v50))
      {
        if ((*(**(a1 + 56) + v50) - 1) > 3u)
        {
          v51 = v50 << 32;
          v52 = 30 - *(v93[0] + v50);
          if (v52 <= v48)
          {
            goto LABEL_62;
          }
        }

        else
        {
          v51 = v50 << 32;
          v52 = dword_23CE49114[(*(**(a1 + 56) + v50) - 1)] - *(v93[0] + v50);
          if (v52 <= v48)
          {
            goto LABEL_62;
          }
        }

        v53 = *(a1 + 24);
        v54 = v53[7];
        v55 = *(v54 + (v51 >> 29));
        v56 = *(v54 + ((v51 + 0x100000000) >> 29)) - v55;
        if (v56 < 1)
        {
          v47 = 0.0;
        }

        else
        {
          v57 = (v53[4] + 4 * v55);
          v58 = (v53[1] + 8 * v55);
          v47 = 0.0;
          v59 = 0.0;
          do
          {
            v60 = *v58++;
            v61 = v60;
            LODWORD(v60) = *v57++;
            v62 = fabs(v61);
            if (LODWORD(v60) == v40)
            {
              v47 = v62;
            }

            if (v59 < v62)
            {
              v59 = v62;
            }

            --v56;
          }

          while (v56);
          if (v47 < v59 * 0.001)
          {
            goto LABEL_62;
          }
        }

        v88 = *v44;
        v49 = v50;
        v48 = v52;
      }

LABEL_62:
      if (++v44 == v46)
      {
        if (v49 == -1)
        {
          goto LABEL_45;
        }

        v63 = **(a1 + 56);
        if ((*(v63 + *(*(a1 + 24) + 4) + v40 - **(a1 + 24)) - 1) > 3u)
        {
          v64 = 3;
          v65 = *(v63 + v49) - 1;
          if (v65 <= 3u)
          {
            goto LABEL_83;
          }

LABEL_80:
          if (v64 >= 3)
          {
            goto LABEL_45;
          }

LABEL_84:
          v33->__begin_[v40] = v49;
          if (dword_27E25CE20 >= 2 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&void operations_research::glop::InitialBasis::GetMarosBasis<true>(operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,operations_research::glop::StrictITIVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>> *)::{lambda(void)#2}::operator() const(void)::site, dword_27E25CE20))
          {
            absl::lts_20240722::log_internal::LogMessage::LogMessage(v87, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/initial_basis.cc", 341);
            v74 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v87, 2);
            absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v74, "Slack variable ", 0xFuLL);
            v75 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,0>(v74, &v89);
            absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v75, " replaced by column ", 0x14uLL);
            v76 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,0>(v75, &v88);
            absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v76, ". Pivot coefficient magnitude: ", 0x1FuLL);
            v100[0] = v47;
            v77 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v76, v100);
            absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v77, ".", 1uLL);
            absl::lts_20240722::log_internal::LogMessage::~LogMessage(v87);
            v33 = this;
          }

          v66 = v89;
          v67 = v88;
          *((v88 >> 3) & 0x1FFFFFFFFFFFFFF8) &= ~(1 << v88);
          *(((v66 + v86) >> 3) & 0x1FFFFFFFFFFFFFF8) &= ~(1 << (v66 + v86));
          operations_research::glop::MatrixNonZeroPattern::DeleteRowAndColumn(v90, v66, v67);
          v68 = (v90[0] + 32 * v89);
          v71 = *v68;
          v69 = v68 + 1;
          v70 = v71;
          if (v71)
          {
            v69 = *v69;
          }

          if ((v70 & 0x7FFFFFFFFFFFFFFELL) != 0)
          {
            v72 = 4 * (v70 >> 1);
            do
            {
              v73 = *v69;
              v69 = (v69 + 4);
              *((v73 >> 3) & 0x1FFFFFFFFFFFFFF8) &= ~(1 << v73);
              v72 -= 4;
            }

            while (v72);
          }
        }

        else
        {
          v64 = dword_23CE49124[(*(v63 + *(*(a1 + 24) + 4) + v40 - **(a1 + 24)) - 1)];
          v65 = *(v63 + v49) - 1;
          if (v65 > 3u)
          {
            goto LABEL_80;
          }

LABEL_83:
          if (v64 < dword_23CE49124[v65])
          {
            goto LABEL_84;
          }

LABEL_45:
          *(((v40 + v86) >> 3) & 0x1FFFFFFFFFFFFFF8) &= ~(1 << (v40 + v86));
        }

        v89 = -1;
        goto LABEL_47;
      }
    }
  }

LABEL_93:
  if (*(&v97 + 1))
  {
    *&v98 = *(&v97 + 1);
    operator delete(*(&v97 + 1));
  }

  if (v96[0])
  {
    operator delete(v96[0]);
  }

  if (v94[1])
  {
    operator delete(v94[1]);
  }

  if (v93[0])
  {
    v93[1] = v93[0];
    operator delete(v93[0]);
  }

  if (v91[1])
  {
    *&v92 = v91[1];
    operator delete(v91[1]);
  }

  v78 = v90[0];
  if (v90[0])
  {
    v79 = v90[1];
    v80 = v90[0];
    if (v90[1] != v90[0])
    {
      v81 = v90[1];
      do
      {
        v82 = *(v81 - 32);
        v81 -= 4;
        if (v82)
        {
          operator delete(*(v79 - 3));
        }

        v79 = v81;
      }

      while (v81 != v78);
      v80 = v90[0];
    }

    v90[1] = v78;
    operator delete(v80);
  }
}

void sub_23CBA2DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CBA2E0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, void *a17, void *a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
    v35 = a29;
    if (!a29)
    {
LABEL_3:
      v36 = a26;
      if (!a26)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v35 = a29;
    if (!a29)
    {
      goto LABEL_3;
    }
  }

  operator delete(v35);
  v36 = a26;
  if (!a26)
  {
LABEL_4:
    v37 = a23;
    if (!a23)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(v36);
  v37 = a23;
  if (!a23)
  {
LABEL_5:
    v38 = a20;
    if (!a20)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(v37);
  v38 = a20;
  if (!a20)
  {
LABEL_6:
    v39 = a17;
    if (!a17)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(v38);
  v39 = a17;
  if (!a17)
  {
LABEL_7:
    if (!v33)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_14:
  v40 = a18;
  v41 = v39;
  if (a18 != v39)
  {
    v42 = a18;
    do
    {
      v43 = *(v42 - 32);
      v42 -= 32;
      if (v43)
      {
        operator delete(*(v40 - 24));
      }

      v40 = v42;
    }

    while (v42 != v39);
    v41 = a17;
  }

  operator delete(v41);
  if (!v33)
  {
LABEL_8:
    _Unwind_Resume(exception_object);
  }

LABEL_21:
  operator delete(v33);
  _Unwind_Resume(exception_object);
}

void operations_research::glop::InitialBasis::CompleteTriangularBasis<false>(uint64_t a1, int a2, std::vector<int> *a3)
{
  v5 = **(a1 + 24);
  if (v5)
  {
    if ((v5 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v6 = a3->__end_ - a3->__begin_;
  if (v5 > v6)
  {
    std::vector<int>::__append(a3, v5 - v6, &operations_research::glop::kInvalidCol);
  }

  else if (v5 < v6)
  {
    a3->__end_ = &a3->__begin_[v5];
  }

  v33 = 0;
  *__p = 0u;
  v32 = 0u;
  v29 = 0u;
  *v30 = 0u;
  *v27 = 0u;
  *v28 = 0u;
  *v25 = 0u;
  v26 = 0u;
  *v24 = 0u;
  operations_research::glop::MatrixNonZeroPattern::Reset(v24, 0, a2);
  if (a2 <= 0)
  {
    *a1 = 0x3FF0000000000000;
    v34 = *(a1 + 16);
  }

  else
  {
    v7 = 0;
    v8 = a2 & 0x7FFFFFFF;
    do
    {
      v9 = *(a1 + 24);
      v10 = *(v9 + 56);
      v11 = *(v10 + 8 * v7);
      v12 = *(v10 + (((v7 << 32) + 0x100000000) >> 29)) - v11;
      if (v12 >= 1)
      {
        v13 = (*(v9 + 32) + 4 * v11);
        do
        {
          v15 = *v13++;
          v14 = v15;
          if ((*((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) >> v15))
          {
            operations_research::glop::MatrixNonZeroPattern::AddEntry(v24, v14, v7);
          }

          --v12;
        }

        while (v12);
      }

      ++v7;
    }

    while (v7 != v8);
    v16 = 0;
    *a1 = 0;
    do
    {
      v17 = fabs(*(**(a1 + 32) + 8 * v16));
      if (*a1 >= v17)
      {
        v17 = *a1;
      }

      *a1 = v17;
      if (*(v27[0] + v16) == 1)
      {
        operator new();
      }

      ++v16;
    }

    while (v8 != v16);
    v18 = 1.0;
    if (*a1 != 0.0)
    {
      v18 = *a1 * 1000.0;
    }

    *a1 = v18;
    v34 = *(a1 + 16);
  }

  if (__p[1])
  {
    *&v32 = __p[1];
    operator delete(__p[1]);
  }

  if (v30[0])
  {
    operator delete(v30[0]);
  }

  if (v28[1])
  {
    operator delete(v28[1]);
  }

  if (v27[0])
  {
    v27[1] = v27[0];
    operator delete(v27[0]);
  }

  if (v25[1])
  {
    *&v26 = v25[1];
    operator delete(v25[1]);
  }

  v19 = v24[0];
  if (v24[0])
  {
    v20 = v24[1];
    v21 = v24[0];
    if (v24[1] != v24[0])
    {
      v22 = v24[1];
      do
      {
        v23 = *(v22 - 32);
        v22 -= 4;
        if (v23)
        {
          operator delete(*(v20 - 3));
        }

        v20 = v22;
      }

      while (v22 != v19);
      v21 = v24[0];
    }

    v24[1] = v19;
    operator delete(v21);
  }
}

void sub_23CBA390C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, char a15)
{
  if (v15)
  {
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::glop::InitialBasis::CompleteTriangularBasis<true>(uint64_t a1, int a2, std::vector<int> *a3)
{
  v5 = **(a1 + 24);
  if (v5)
  {
    if ((v5 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v6 = a3->__end_ - a3->__begin_;
  if (v5 > v6)
  {
    std::vector<int>::__append(a3, v5 - v6, &operations_research::glop::kInvalidCol);
  }

  else if (v5 < v6)
  {
    a3->__end_ = &a3->__begin_[v5];
  }

  v34 = 0;
  *__p = 0u;
  v33 = 0u;
  v30 = 0u;
  *v31 = 0u;
  *v28 = 0u;
  *v29 = 0u;
  *v26 = 0u;
  v27 = 0u;
  *v25 = 0u;
  operations_research::glop::MatrixNonZeroPattern::Reset(v25, 0, a2);
  if (a2 <= 0)
  {
    v19 = a1;
    *a1 = 0x3FF0000000000000;
  }

  else
  {
    v7 = 0;
    v8 = a2 & 0x7FFFFFFF;
    do
    {
      if (*(**(a1 + 32) + 8 * v7) == 0.0)
      {
        v9 = *(a1 + 24);
        v10 = *(v9 + 56);
        v11 = *(v10 + 8 * v7);
        v12 = *(v10 + (((v7 << 32) + 0x100000000) >> 29)) - v11;
        if (v12 >= 1)
        {
          v13 = (*(v9 + 32) + 4 * v11);
          do
          {
            v15 = *v13++;
            v14 = v15;
            if ((*((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) >> v15))
            {
              operations_research::glop::MatrixNonZeroPattern::AddEntry(v25, v14, v7);
            }

            --v12;
          }

          while (v12);
        }
      }

      ++v7;
    }

    while (v7 != v8);
    v16 = 0;
    *a1 = 0;
    do
    {
      v17 = fabs(*(**(a1 + 32) + 8 * v16));
      if (*a1 >= v17)
      {
        v17 = *a1;
      }

      *a1 = v17;
      if (*(v28[0] + v16) == 1)
      {
        operator new();
      }

      ++v16;
    }

    while (v8 != v16);
    v18 = 1.0;
    if (*a1 != 0.0)
    {
      v18 = *a1 * 1000.0;
    }

    *a1 = v18;
    v19 = a1;
  }

  v35 = *(v19 + 16);
  if (__p[1])
  {
    *&v33 = __p[1];
    operator delete(__p[1]);
  }

  if (v31[0])
  {
    operator delete(v31[0]);
  }

  if (v29[1])
  {
    operator delete(v29[1]);
  }

  if (v28[0])
  {
    v28[1] = v28[0];
    operator delete(v28[0]);
  }

  if (v26[1])
  {
    *&v27 = v26[1];
    operator delete(v26[1]);
  }

  v20 = v25[0];
  if (v25[0])
  {
    v21 = v25[1];
    v22 = v25[0];
    if (v25[1] != v25[0])
    {
      v23 = v25[1];
      do
      {
        v24 = *(v23 - 32);
        v23 -= 4;
        if (v24)
        {
          operator delete(*(v21 - 3));
        }

        v21 = v23;
      }

      while (v23 != v20);
      v22 = v25[0];
    }

    v25[1] = v20;
    operator delete(v22);
  }
}

void sub_23CBA4368(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (v15)
  {
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

BOOL operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(uint64_t *a1, int a2, unsigned int a3)
{
  if (a2 == a3)
  {
    return 0;
  }

  v4 = *a1;
  v5 = **(*a1 + 56);
  v6 = *(v5 + a2);
  if ((v6 - 1) > 3u)
  {
    v7 = 2;
    v8 = *(v5 + a3);
    v9 = v8 - 1;
    if ((v8 - 1) > 3u)
    {
LABEL_5:
      v10 = v7 >= 2;
      if (v7 != 2)
      {
        return !v10;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v7 = dword_23CE49100[(v6 - 1)];
    v8 = *(v5 + a3);
    v9 = v8 - 1;
    if ((v8 - 1) > 3u)
    {
      goto LABEL_5;
    }
  }

  v11 = dword_23CE49100[v9];
  v10 = v7 >= v11;
  if (v7 != v11)
  {
    return !v10;
  }

LABEL_11:
  switch(v6)
  {
    case 1:
      v12 = 8 * a2;
      v13 = *(**(v4 + 40) + v12);
      break;
    case 2:
      v12 = 8 * a2;
      v13 = -*(**(v4 + 48) + v12);
      break;
    case 3:
      v12 = 8 * a2;
      v13 = *(**(v4 + 40) + v12) - *(**(v4 + 48) + v12);
      break;
    default:
      v12 = 8 * a2;
      v13 = 0.0;
      break;
  }

  v14 = **(v4 + 32);
  v15 = *v4;
  v16 = v13 + fabs(*(v14 + v12)) / *v4;
  switch(v8)
  {
    case 1:
      v22 = **(v4 + 40);
      v19 = 8 * a3;
      v20 = *(v22 + v19);
      break;
    case 2:
      v21 = **(v4 + 48);
      v19 = 8 * a3;
      v20 = -*(v21 + v19);
      break;
    case 3:
      v17 = *(v4 + 48);
      v18 = **(v4 + 40);
      v19 = 8 * a3;
      v20 = *(v18 + v19) - *(*v17 + v19);
      break;
    default:
      v19 = 8 * a3;
      v20 = 0.0;
      break;
  }

  return v16 < v20 + fabs(*(v14 + v19)) / v15;
}

BOOL operations_research::glop::InitialBasis::TriangularColumnComparator::operator()(uint64_t *a1, unsigned int a2, unsigned int a3)
{
  if (a2 == a3)
  {
    return 0;
  }

  v4 = *a1;
  v5 = **(*a1 + 56);
  v6 = *(v5 + a2);
  if ((v6 - 1) > 3u)
  {
    v7 = 2;
    v8 = *(v5 + a3);
    v9 = v8 - 1;
    if ((v8 - 1) > 3u)
    {
LABEL_5:
      v10 = v7 > 2;
      if (v7 != 2)
      {
        return v10;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v7 = dword_23CE49100[(v6 - 1)];
    v8 = *(v5 + a3);
    v9 = v8 - 1;
    if ((v8 - 1) > 3u)
    {
      goto LABEL_5;
    }
  }

  v11 = dword_23CE49100[v9];
  v10 = v7 > v11;
  if (v7 != v11)
  {
    return v10;
  }

LABEL_11:
  v12 = *(*(v4 + 24) + 56);
  v13 = *(v12 + (((a2 << 32) + 0x100000000) >> 29)) - *(v12 + 8 * a2);
  v14 = *(v12 + (((a3 << 32) + 0x100000000) >> 29)) - *(v12 + 8 * a3);
  if (v13 != v14)
  {
    return v13 > v14;
  }

  if (v6 == 3)
  {
    v15 = *(**(v4 + 40) + 8 * a2) - *(**(v4 + 48) + 8 * a2);
  }

  else if (v6 == 2)
  {
    v15 = -*(**(v4 + 48) + 8 * a2);
  }

  else
  {
    v15 = 0.0;
    if (v6 == 1)
    {
      v15 = *(**(v4 + 40) + 8 * a2);
    }
  }

  v16 = **(v4 + 32);
  v17 = v15 + fabs(*(v16 + 8 * a2)) / *v4;
  if (v8 == 3)
  {
    v18 = *(**(v4 + 40) + 8 * a3) - *(**(v4 + 48) + 8 * a3);
  }

  else if (v8 == 2)
  {
    v18 = -*(**(v4 + 48) + 8 * a3);
  }

  else
  {
    v18 = 0.0;
    if (v8 == 1)
    {
      v18 = *(**(v4 + 40) + 8 * a3);
    }
  }

  return v17 > v18 + fabs(*(v16 + 8 * a3)) / *v4;
}

BOOL std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::glop::InitialBasis::TriangularColumnComparator &,std::__wrap_iter<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *>>(_BOOL8 result, uint64_t *a2, uint64_t a3, unsigned int *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 2)
    {
      v10 = (a4 - result) >> 1;
      v11 = v10 | 1;
      v12 = (result + 4 * (v10 | 1));
      v13 = v10 + 2;
      if (v10 + 2 < a3)
      {
        v14 = operations_research::glop::InitialBasis::TriangularColumnComparator::operator()(a2, *v12, v12[1]);
        v15 = 4;
        if (!v14)
        {
          v15 = 0;
        }

        v12 = (v12 + v15);
        if (v14)
        {
          v11 = v13;
        }
      }

      v16 = *v12;
      v17 = *v5;
      result = operations_research::glop::InitialBasis::TriangularColumnComparator::operator()(a2, *v12, *v5);
      if (!result)
      {
        while (1)
        {
          *v5 = v16;
          v5 = v12;
          if (v7 < v11)
          {
            break;
          }

          v20 = (2 * v11) | 1;
          v12 = (v6 + 4 * v20);
          v11 = 2 * v11 + 2;
          if (v11 < a3)
          {
            v18 = operations_research::glop::InitialBasis::TriangularColumnComparator::operator()(a2, *v12, v12[1]);
            if (v18)
            {
              v19 = 4;
            }

            else
            {
              v19 = 0;
            }

            v12 = (v12 + v19);
            if (!v18)
            {
              v11 = v20;
            }

            v16 = *v12;
            result = operations_research::glop::InitialBasis::TriangularColumnComparator::operator()(a2, *v12, v17);
            if (result)
            {
              break;
            }
          }

          else
          {
            v11 = v20;
            v16 = *v12;
            result = operations_research::glop::InitialBasis::TriangularColumnComparator::operator()(a2, *v12, v17);
            if (result)
            {
              break;
            }
          }
        }

        *v5 = v17;
      }
    }
  }

  return result;
}

char *std::pop_heap[abi:ne200100]<std::__wrap_iter<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *>,operations_research::glop::InitialBasis::TriangularColumnComparator>(char *result, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v3 = (a2 - result) >> 2;
  if (v3 >= 2)
  {
    v5 = result;
    v6 = 0;
    v7 = *result;
    v8 = result;
    do
    {
      v9 = &v8[v6 + 1];
      v10 = (2 * v6) | 1;
      v11 = 2 * v6 + 2;
      if (v11 < v3)
      {
        result = operations_research::glop::InitialBasis::TriangularColumnComparator::operator()(&v22, *v9, v8[v6 + 2]);
        v12 = result ? 4 : 0;
        v9 = (v9 + v12);
        if (result)
        {
          v10 = v11;
        }
      }

      *v8 = *v9;
      v8 = v9;
      v6 = v10;
    }

    while (v10 <= ((v3 - 2) >> 1));
    v13 = (a2 - 4);
    if (v9 == (a2 - 4))
    {
      *v9 = v7;
    }

    else
    {
      *v9 = *v13;
      *v13 = v7;
      v14 = (v9 - v5 + 4) >> 2;
      v15 = v14 < 2;
      v16 = v14 - 2;
      if (!v15)
      {
        v17 = v16 >> 1;
        v18 = &v5[4 * (v16 >> 1)];
        v19 = *v18;
        v20 = *v9;
        result = operations_research::glop::InitialBasis::TriangularColumnComparator::operator()(&v22, *v18, *v9);
        if (result)
        {
          do
          {
            v21 = v18;
            *v9 = v19;
            if (!v17)
            {
              break;
            }

            v17 = (v17 - 1) >> 1;
            v18 = &v5[4 * v17];
            v19 = *v18;
            result = operations_research::glop::InitialBasis::TriangularColumnComparator::operator()(&v22, *v18, v20);
            v9 = v21;
          }

          while ((result & 1) != 0);
          *v21 = v20;
        }
      }
    }
  }

  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,operations_research::glop::InitialBasis::BixbyColumnComparator &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,false>(uint64_t result, unsigned int *a2, uint64_t *a3, uint64_t a4, int a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  v76 = a5;
  while (1)
  {
    v8 = v9;
    v11 = (a2 - v9) >> 2;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v69 = *(a2 - 1);
        v70 = *v8;
        result = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v69, *v8);
        if (result)
        {
          *v8 = v69;
          *(a2 - 1) = v70;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {

      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::glop::InitialBasis::BixbyColumnComparator &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,0>(v8, (v8 + 4), (v8 + 8), a2 - 1, a3);
    }

    if (v11 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::glop::InitialBasis::BixbyColumnComparator &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,0>(v8, (v8 + 4), (v8 + 8), (v8 + 12), a3);
      v64 = *(a2 - 1);
      v65 = *(v8 + 12);
      result = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v64, v65);
      if (!result)
      {
        return result;
      }

      *(v8 + 12) = v64;
      *(a2 - 1) = v65;
      v67 = *(v8 + 8);
      v66 = *(v8 + 12);
      result = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v66, v67);
      if (!result)
      {
        return result;
      }

      *(v8 + 8) = v66;
      *(v8 + 12) = v67;
      v68 = *(v8 + 4);
      result = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v66, v68);
      if (!result)
      {
        return result;
      }

      *(v8 + 4) = v66;
      *(v8 + 8) = v68;
      goto LABEL_98;
    }

LABEL_11:
    if (v11 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::glop::InitialBasis::BixbyColumnComparator &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *>(v8, a2, a3);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::glop::InitialBasis::BixbyColumnComparator &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *>(v8, a2, a3);
      }
    }

    if (v10 == 1)
    {
      if (v8 != a2)
      {
        v71 = (v11 - 2) >> 1;
        v72 = v71 + 1;
        v73 = (v8 + 4 * v71);
        do
        {
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::glop::InitialBasis::BixbyColumnComparator &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *>(v8, a3, v11, v73--);
          --v72;
        }

        while (v72);

        return std::__sort_heap[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::glop::InitialBasis::BixbyColumnComparator &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *>(v8, a2, a3);
      }

      return result;
    }

    v77 = v10;
    v12 = (v8 + 4 * (v11 >> 1));
    v13 = v12;
    v14 = *(a2 - 1);
    if (v11 >= 0x81)
    {
      v15 = *v12;
      v16 = *v8;
      v17 = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, *v12, *v8);
      v18 = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v14, v15);
      if (v17)
      {
        if (v18)
        {
          *v8 = v14;
          goto LABEL_29;
        }

        *v8 = v15;
        *v12 = v16;
        v27 = *(a2 - 1);
        if (operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v27, v16))
        {
          *v12 = v27;
LABEL_29:
          *(a2 - 1) = v16;
        }
      }

      else if (v18)
      {
        *v12 = v14;
        *(a2 - 1) = v15;
        v23 = *v12;
        v24 = *v8;
        if (operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, *v12, *v8))
        {
          *v8 = v23;
          *v12 = v24;
        }
      }

      v28 = v12 - 1;
      v29 = *(v12 - 1);
      v30 = *(v8 + 4);
      v31 = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v29, v30);
      v32 = *(a2 - 2);
      v33 = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v32, v29);
      if (v31)
      {
        if (v33)
        {
          *(v8 + 4) = v32;
          goto LABEL_43;
        }

        *(v8 + 4) = v29;
        *v28 = v30;
        v37 = *(a2 - 2);
        if (operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v37, v30))
        {
          *v28 = v37;
LABEL_43:
          *(a2 - 2) = v30;
        }
      }

      else if (v33)
      {
        *v28 = v32;
        *(a2 - 2) = v29;
        v34 = *v28;
        v35 = *(v8 + 4);
        if (operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, *v28, v35))
        {
          *(v8 + 4) = v34;
          *v28 = v35;
        }
      }

      v40 = v12[1];
      v39 = v12 + 1;
      v38 = v40;
      v41 = *(v8 + 8);
      v42 = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v40, v41);
      v43 = *(a2 - 3);
      v44 = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v43, v40);
      if (v42)
      {
        if (v44)
        {
          *(v8 + 8) = v43;
          goto LABEL_52;
        }

        *(v8 + 8) = v38;
        *v39 = v41;
        v47 = *(a2 - 3);
        if (operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v47, v41))
        {
          *v39 = v47;
LABEL_52:
          *(a2 - 3) = v41;
        }
      }

      else if (v44)
      {
        *v39 = v43;
        *(a2 - 3) = v38;
        v45 = *v39;
        v46 = *(v8 + 8);
        if (operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, *v39, v46))
        {
          *(v8 + 8) = v45;
          *v39 = v46;
        }
      }

      v48 = *v13;
      v49 = *v28;
      v50 = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, *v13, *v28);
      v51 = *v39;
      v52 = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, *v39, v48);
      if (v50)
      {
        if (!v52)
        {
          *v28 = v48;
          *v13 = v49;
          v28 = v13;
          v48 = v51;
          if (!operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v51, v49))
          {
            v53 = *v8;
            *v8 = v49;
            *v13 = v53;
            a5 = v76;
            if (v76)
            {
              goto LABEL_63;
            }

            goto LABEL_62;
          }
        }

LABEL_60:
        *v28 = v51;
        *v39 = v49;
      }

      else if (v52)
      {
        *v13 = v51;
        *v39 = v48;
        v39 = v13;
        v48 = v49;
        if (!operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v51, v49))
        {
          v59 = *v8;
          *v8 = v51;
          *v13 = v59;
          a5 = v76;
          if (v76)
          {
            goto LABEL_63;
          }

          goto LABEL_62;
        }

        goto LABEL_60;
      }

      v54 = *v8;
      *v8 = v48;
      *v13 = v54;
      a5 = v76;
      if (v76)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    v19 = *v8;
    v20 = *v12;
    v21 = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, *v8, *v12);
    v22 = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v14, v19);
    if (v21)
    {
      if (v22)
      {
        *v12 = v14;
        goto LABEL_38;
      }

      *v12 = v19;
      *v8 = v20;
      v36 = *(a2 - 1);
      if (operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v36, v20))
      {
        *v8 = v36;
LABEL_38:
        *(a2 - 1) = v20;
      }

LABEL_39:
      if (a5)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (!v22)
    {
      goto LABEL_39;
    }

    *v8 = v14;
    *(a2 - 1) = v19;
    v25 = *v8;
    v26 = *v12;
    if (!operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, *v8, *v12))
    {
      goto LABEL_39;
    }

    *v12 = v25;
    *v8 = v26;
    if (a5)
    {
      goto LABEL_63;
    }

LABEL_62:
    if (!operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, *(v8 - 4), *v8))
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,operations_research::glop::InitialBasis::BixbyColumnComparator &>(v8, a2, a3);
      v9 = result;
      v56 = v77;
      goto LABEL_71;
    }

LABEL_63:
    v55 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,operations_research::glop::InitialBasis::BixbyColumnComparator &>(v8, a2, a3);
    v56 = v77;
    if ((v57 & 1) == 0)
    {
      goto LABEL_69;
    }

    v58 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::glop::InitialBasis::BixbyColumnComparator &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *>(v8, v55, a3);
    v9 = v55 + 1;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::glop::InitialBasis::BixbyColumnComparator &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *>((v55 + 1), a2, a3);
    if (result)
    {
      a4 = -v77;
      a2 = v55;
      if (v58)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v77 + 1;
    if ((v58 & 1) == 0)
    {
LABEL_69:
      result = std::__introsort<std::_ClassicAlgPolicy,operations_research::glop::InitialBasis::BixbyColumnComparator &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,false>(v8, v55, a3, -v77, a5 & 1);
      v9 = v55 + 1;
LABEL_71:
      a5 = 0;
      a4 = -v56;
      goto LABEL_3;
    }
  }

  v60 = *v8;
  v61 = *(v8 + 4);
  v62 = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v61, *v8);
  v63 = *(a2 - 1);
  result = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v63, v61);
  if (!v62)
  {
    if (!result)
    {
      return result;
    }

    *(v8 + 4) = v63;
    *(a2 - 1) = v61;
    v66 = *(v8 + 4);
LABEL_98:
    v74 = *v8;
    result = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v66, *v8);
    if (result)
    {
      *v8 = v66;
      *(v8 + 4) = v74;
    }

    return result;
  }

  if (result)
  {
    *v8 = v63;
  }

  else
  {
    *v8 = v61;
    *(v8 + 4) = v60;
    v75 = *(a2 - 1);
    result = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v75, v60);
    if (!result)
    {
      return result;
    }

    *(v8 + 4) = v75;
  }

  *(a2 - 1) = v60;
  return result;
}

BOOL std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::glop::InitialBasis::BixbyColumnComparator &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,0>(unsigned int *a1, int *a2, int *a3, int *a4, uint64_t *a5)
{
  v10 = *a2;
  v11 = *a2;
  v12 = *a1;
  v13 = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a5, *a2, *a1);
  v14 = *a3;
  v15 = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a5, *a3, v10);
  if (v13)
  {
    if (v15)
    {
      *a1 = v14;
    }

    else
    {
      *a1 = v11;
      *a2 = v12;
      v10 = *a3;
      v11 = *a3;
      if (!operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a5, *a3, v12))
      {
        goto LABEL_11;
      }

      *a2 = v11;
    }

    *a3 = v12;
    v10 = v12;
    v11 = v12;
  }

  else
  {
    if (!v15)
    {
      v11 = v14;
      v18 = *a4;
      result = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a5, *a4, v14);
      if (!result)
      {
        return result;
      }

      goto LABEL_12;
    }

    *a2 = v14;
    *a3 = v11;
    v16 = *a2;
    v17 = *a1;
    if (operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a5, *a2, *a1))
    {
      *a1 = v16;
      *a2 = v17;
      v11 = *a3;
      v18 = *a4;
      result = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a5, *a4, *a3);
      if (!result)
      {
        return result;
      }

      goto LABEL_12;
    }
  }

LABEL_11:
  v18 = *a4;
  result = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a5, *a4, v10);
  if (!result)
  {
    return result;
  }

LABEL_12:
  *a3 = v18;
  *a4 = v11;
  v20 = *a3;
  v21 = *a2;
  result = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a5, *a3, *a2);
  if (result)
  {
    *a2 = v20;
    *a3 = v21;
    v22 = *a2;
    v23 = *a1;
    result = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a5, *a2, *a1);
    if (result)
    {
      *a1 = v22;
      *a2 = v23;
    }
  }

  return result;
}

unsigned int *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::glop::InitialBasis::BixbyColumnComparator &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *>(unsigned int *result, unsigned int *a2, uint64_t *a3)
{
  if (result == a2)
  {
    return result;
  }

  v4 = result;
  v5 = result + 1;
  if (result + 1 == a2)
  {
    return result;
  }

  v7 = 0;
  v8 = result;
  while (2)
  {
    v10 = v5;
    v12 = *v8;
    v11 = v8[1];
    result = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v11, *v8);
    if (!result)
    {
      goto LABEL_6;
    }

    v8[1] = v12;
    v9 = v4;
    if (v8 == v4)
    {
      goto LABEL_5;
    }

    v13 = *a3;
    v14 = v7;
    do
    {
      v15 = *(v4 + v14 - 4);
      if (v11 == v15)
      {
LABEL_4:
        v9 = v8;
        goto LABEL_5;
      }

      v16 = **(v13 + 56);
      v17 = *(v16 + v11);
      if ((v17 - 1) > 3u)
      {
        v18 = 2;
        v19 = *(v16 + v15);
        v20 = v19 - 1;
        if ((v19 - 1) > 3u)
        {
LABEL_15:
          v21 = v18 >= 2;
          if (v18 != 2)
          {
            goto LABEL_10;
          }

          goto LABEL_19;
        }
      }

      else
      {
        v18 = dword_23CE49100[(v17 - 1)];
        v19 = *(v16 + v15);
        v20 = v19 - 1;
        if ((v19 - 1) > 3u)
        {
          goto LABEL_15;
        }
      }

      v22 = dword_23CE49100[v20];
      v21 = v18 >= v22;
      if (v18 != v22)
      {
LABEL_10:
        if (v21)
        {
          goto LABEL_4;
        }

        goto LABEL_11;
      }

LABEL_19:
      if (v17 == 3)
      {
        v23 = *(**(v13 + 40) + 8 * v11) - *(**(v13 + 48) + 8 * v11);
        v24 = 8 * v15;
        if (v19 == 1)
        {
LABEL_31:
          v25 = *(**(v13 + 40) + v24);
          goto LABEL_33;
        }
      }

      else
      {
        if (v17 == 2)
        {
          v23 = -*(**(v13 + 48) + 8 * v11);
        }

        else
        {
          v23 = 0.0;
          if (v17 == 1)
          {
            v23 = *(**(v13 + 40) + 8 * v11);
            v24 = 8 * v15;
            if (v19 == 1)
            {
              goto LABEL_31;
            }

            goto LABEL_26;
          }
        }

        v24 = 8 * v15;
        if (v19 == 1)
        {
          goto LABEL_31;
        }
      }

LABEL_26:
      if (v19 == 2)
      {
        v25 = -*(**(v13 + 48) + v24);
      }

      else if (v19 == 3)
      {
        v25 = *(**(v13 + 40) + v24) - *(**(v13 + 48) + v24);
      }

      else
      {
        v25 = 0.0;
      }

LABEL_33:
      if (v23 + fabs(*(**(v13 + 32) + 8 * v11)) / *v13 >= v25 + fabs(*(**(v13 + 32) + v24)) / *v13)
      {
        v9 = (v4 + v14);
        goto LABEL_5;
      }

LABEL_11:
      --v8;
      *(v4 + v14) = v15;
      v14 -= 4;
    }

    while (v14);
    v9 = v4;
LABEL_5:
    *v9 = v11;
LABEL_6:
    v5 = v10 + 1;
    v7 += 4;
    v8 = v10;
    if (v10 + 1 != a2)
    {
      continue;
    }

    return result;
  }
}

BOOL std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::glop::InitialBasis::BixbyColumnComparator &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *>(_BOOL8 result, int *a2, uint64_t *a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 4);
    if ((result + 4) != a2)
    {
      v7 = *a3;
      do
      {
        v8 = *v5;
        v9 = *v4;
        result = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, *v5, *v4);
        if (result)
        {
          *v5 = v9;
          v10 = *(v4 - 1);
          v11 = v4;
          if (v8 != v10)
          {
            v12 = **(v7 + 56);
            v13 = *(v12 + v8);
            v14 = (v13 - 1);
            v11 = v4;
            do
            {
              if (v14 > 3)
              {
                v15 = 2;
                v16 = *(v12 + v10);
                v17 = v16 - 1;
                if ((v16 - 1) > 3u)
                {
LABEL_13:
                  v18 = v15 >= 2;
                  if (v15 != 2)
                  {
                    goto LABEL_9;
                  }

                  goto LABEL_17;
                }
              }

              else
              {
                v15 = dword_23CE49100[v14];
                v16 = *(v12 + v10);
                v17 = v16 - 1;
                if ((v16 - 1) > 3u)
                {
                  goto LABEL_13;
                }
              }

              v19 = dword_23CE49100[v17];
              v18 = v15 >= v19;
              if (v15 != v19)
              {
LABEL_9:
                if (v18)
                {
                  break;
                }

                goto LABEL_10;
              }

LABEL_17:
              if (v13 == 3)
              {
                v20 = *(**(v7 + 40) + 8 * v8) - *(**(v7 + 48) + 8 * v8);
                v21 = 8 * v10;
                if (v16 == 1)
                {
LABEL_29:
                  v22 = *(**(v7 + 40) + v21);
                  goto LABEL_31;
                }
              }

              else
              {
                if (v13 == 2)
                {
                  v20 = -*(**(v7 + 48) + 8 * v8);
                }

                else
                {
                  v20 = 0.0;
                  if (v13 == 1)
                  {
                    v20 = *(**(v7 + 40) + 8 * v8);
                    v21 = 8 * v10;
                    if (v16 == 1)
                    {
                      goto LABEL_29;
                    }

                    goto LABEL_24;
                  }
                }

                v21 = 8 * v10;
                if (v16 == 1)
                {
                  goto LABEL_29;
                }
              }

LABEL_24:
              if (v16 == 2)
              {
                v22 = -*(**(v7 + 48) + v21);
              }

              else if (v16 == 3)
              {
                v22 = *(**(v7 + 40) + v21) - *(**(v7 + 48) + v21);
              }

              else
              {
                v22 = 0.0;
              }

LABEL_31:
              if (v20 + fabs(*(**(v7 + 32) + 8 * v8)) / *v7 >= v22 + fabs(*(**(v7 + 32) + v21)) / *v7)
              {
                break;
              }

LABEL_10:
              *v11 = v10;
              v10 = *(v11 - 2);
              --v11;
            }

            while (v8 != v10);
          }

          *v11 = v8;
        }

        ++v5;
        ++v4;
      }

      while (v5 != a2);
    }
  }

  return result;
}

unsigned int *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,operations_research::glop::InitialBasis::BixbyColumnComparator &>(int *a1, signed int *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = *a1;
  if (operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, *a1, *(a2 - 1)))
  {
    v7 = a1;
    do
    {
      v8 = v7[1];
      ++v7;
    }

    while (!operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v6, v8));
  }

  else
  {
    v9 = (a1 + 1);
    do
    {
      v7 = v9;
      if (v9 >= v4)
      {
        break;
      }

      ++v9;
    }

    while (!operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v6, *v7));
  }

  if (v7 < v4)
  {
    do
    {
      v10 = *--v4;
    }

    while (operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v6, v10));
  }

  if (v7 < v4)
  {
    v11 = *a3;
    v12 = *v7;
    v13 = *v4;
    do
    {
      *v7++ = v13;
      *v4 = v12;
      v14 = *a3;
      v15 = *(*a3 + 56);
      v16 = *v15;
      v17 = *(*v15 + v6);
      while (1)
      {
        v12 = *v7;
        if (v6 == *v7)
        {
          goto LABEL_17;
        }

        if ((v17 - 1) > 3u)
        {
          break;
        }

        v18 = dword_23CE49100[(v17 - 1)];
        v19 = *(v16 + v12);
        v20 = v19 - 1;
        if ((v19 - 1) <= 3u)
        {
          goto LABEL_24;
        }

LABEL_21:
        v21 = v18 >= 2;
        if (v18 == 2)
        {
          goto LABEL_25;
        }

LABEL_15:
        if (!v21)
        {
          goto LABEL_40;
        }

LABEL_17:
        ++v7;
      }

      v18 = 2;
      v19 = *(v16 + v12);
      v20 = v19 - 1;
      if ((v19 - 1) > 3u)
      {
        goto LABEL_21;
      }

LABEL_24:
      v22 = dword_23CE49100[v20];
      v21 = v18 >= v22;
      if (v18 != v22)
      {
        goto LABEL_15;
      }

LABEL_25:
      if (v17 == 3)
      {
        v23 = *(**(v14 + 40) + 8 * v6) - *(**(v14 + 48) + 8 * v6);
        v24 = 8 * v12;
        if (v19 == 1)
        {
          goto LABEL_37;
        }

        goto LABEL_32;
      }

      if (v17 == 2)
      {
        v23 = -*(**(v14 + 48) + 8 * v6);
LABEL_31:
        v24 = 8 * v12;
        if (v19 == 1)
        {
          goto LABEL_37;
        }

        goto LABEL_32;
      }

      v23 = 0.0;
      if (v17 != 1)
      {
        goto LABEL_31;
      }

      v23 = *(**(v14 + 40) + 8 * v6);
      v24 = 8 * v12;
      if (v19 == 1)
      {
LABEL_37:
        v25 = *(**(v14 + 40) + v24);
        goto LABEL_39;
      }

LABEL_32:
      if (v19 == 2)
      {
        v25 = -*(**(v14 + 48) + v24);
      }

      else if (v19 == 3)
      {
        v25 = *(**(v14 + 40) + v24) - *(**(v14 + 48) + v24);
      }

      else
      {
        v25 = 0.0;
      }

LABEL_39:
      if (v23 + fabs(*(**(v14 + 32) + 8 * v6)) / *v14 >= v25 + fabs(*(**(v14 + 32) + v24)) / *v14)
      {
        goto LABEL_17;
      }

LABEL_40:
      v26 = *--v4;
      v13 = v26;
      if (v6 != v26)
      {
        v27 = **(v11 + 56);
        v28 = *(v27 + v6);
        v29 = (v28 - 1);
        do
        {
          if (v29 > 3)
          {
            v31 = 2;
            v32 = *(v27 + v13);
            v33 = v32 - 1;
            if ((v32 - 1) > 3u)
            {
LABEL_46:
              v34 = v31 >= 2;
              if (v31 != 2)
              {
                goto LABEL_42;
              }

              goto LABEL_50;
            }
          }

          else
          {
            v31 = dword_23CE49100[v29];
            v32 = *(v27 + v13);
            v33 = v32 - 1;
            if ((v32 - 1) > 3u)
            {
              goto LABEL_46;
            }
          }

          v35 = dword_23CE49100[v33];
          v34 = v31 >= v35;
          if (v31 != v35)
          {
LABEL_42:
            if (v34)
            {
              goto LABEL_13;
            }

            goto LABEL_43;
          }

LABEL_50:
          if (v28 == 3)
          {
            v36 = *(**(v11 + 40) + 8 * v6) - *(**(v11 + 48) + 8 * v6);
            v37 = v13 << 32;
            if (v32 == 1)
            {
LABEL_62:
              v38 = v37 >> 29;
              v39 = *(**(v11 + 40) + (v37 >> 29));
              goto LABEL_64;
            }
          }

          else
          {
            if (v28 == 2)
            {
              v36 = -*(**(v11 + 48) + 8 * v6);
            }

            else
            {
              v36 = 0.0;
              if (v28 == 1)
              {
                v36 = *(**(v11 + 40) + 8 * v6);
                v37 = v13 << 32;
                if (v32 == 1)
                {
                  goto LABEL_62;
                }

                goto LABEL_57;
              }
            }

            v37 = v13 << 32;
            if (v32 == 1)
            {
              goto LABEL_62;
            }
          }

LABEL_57:
          if (v32 == 2)
          {
            v38 = v37 >> 29;
            v39 = -*(**(v11 + 48) + (v37 >> 29));
          }

          else if (v32 == 3)
          {
            v38 = v37 >> 29;
            v39 = *(**(v11 + 40) + (v37 >> 29)) - *(**(v11 + 48) + (v37 >> 29));
          }

          else
          {
            v38 = v37 >> 29;
            v39 = 0.0;
          }

LABEL_64:
          if (v36 + fabs(*(**(v11 + 32) + 8 * v6)) / *v11 >= v39 + fabs(*(**(v11 + 32) + v38)) / *v11)
          {
            goto LABEL_13;
          }

LABEL_43:
          v30 = *--v4;
          v13 = v30;
        }

        while (v6 != v30);
      }

      v13 = v6;
LABEL_13:
      ;
    }

    while (v7 < v4);
  }

  if (v7 - 1 != a1)
  {
    *a1 = *(v7 - 1);
  }

  *(v7 - 1) = v6;
  return v7;
}

signed int *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,operations_research::glop::InitialBasis::BixbyColumnComparator &>(signed int *a1, signed int *a2, uint64_t *a3)
{
  v6 = 0;
  v7 = *a1;
  do
  {
    v8 = a1[++v6];
  }

  while (operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v8, v7));
  v9 = &a1[v6];
  if (v6 == 1)
  {
    do
    {
      if (v9 >= a2)
      {
        break;
      }

      v11 = *--a2;
    }

    while (!operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v11, v7));
  }

  else
  {
    do
    {
      v10 = *--a2;
    }

    while (!operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v10, v7));
  }

  if (v9 < a2)
  {
    v12 = *a3;
    v13 = *a2;
    v14 = &a1[v6];
    v15 = a2;
    while (1)
    {
      *v14 = v13;
      *v15 = v8;
      v16 = v14[1];
      ++v14;
      v8 = v16;
      if (v16 != v7)
      {
        break;
      }

LABEL_12:
      v8 = v7;
LABEL_13:
      v17 = *a3;
      --v15;
      v18 = *(*a3 + 56);
      v19 = *v18;
      v20 = *(*v18 + v7);
      while (1)
      {
        v13 = *v15;
        if (*v15 == v7)
        {
          goto LABEL_16;
        }

        v21 = *(v19 + v13);
        if ((v21 - 1) > 3u)
        {
          break;
        }

        v22 = dword_23CE49100[(v21 - 1)];
        if ((v20 - 1) <= 3u)
        {
          goto LABEL_23;
        }

LABEL_20:
        v23 = v22 >= 2;
        if (v22 == 2)
        {
          goto LABEL_24;
        }

LABEL_14:
        if (!v23)
        {
          goto LABEL_10;
        }

LABEL_16:
        --v15;
      }

      v22 = 2;
      if ((v20 - 1) > 3u)
      {
        goto LABEL_20;
      }

LABEL_23:
      v24 = dword_23CE49100[(v20 - 1)];
      v23 = v22 >= v24;
      if (v22 != v24)
      {
        goto LABEL_14;
      }

LABEL_24:
      switch(v21)
      {
        case 1:
          v25 = *(**(v17 + 40) + 8 * v13);
          if (v20 == 3)
          {
            goto LABEL_35;
          }

          goto LABEL_30;
        case 2:
          v25 = -*(**(v17 + 48) + 8 * v13);
          if (v20 == 3)
          {
            goto LABEL_35;
          }

          goto LABEL_30;
        case 3:
          v25 = *(**(v17 + 40) + 8 * v13) - *(**(v17 + 48) + 8 * v13);
          if (v20 == 3)
          {
            goto LABEL_35;
          }

LABEL_30:
          if (v20 == 2)
          {
            v26 = -*(**(v17 + 48) + 8 * v7);
          }

          else
          {
            v26 = 0.0;
            if (v20 == 1)
            {
              v26 = *(**(v17 + 40) + 8 * v7);
            }
          }

          break;
        default:
          v25 = 0.0;
          if (v20 != 3)
          {
            goto LABEL_30;
          }

LABEL_35:
          v26 = *(**(v17 + 40) + 8 * v7) - *(**(v17 + 48) + 8 * v7);
          break;
      }

      if (v25 + fabs(*(**(v17 + 32) + 8 * v13)) / *v17 >= v26 + fabs(*(**(v17 + 32) + 8 * v7)) / *v17)
      {
        goto LABEL_16;
      }

LABEL_10:
      if (v14 >= v15)
      {
        goto LABEL_66;
      }
    }

    v27 = **(v12 + 56);
    v28 = *(v27 + v7);
    v29 = (v28 - 1);
    while (1)
    {
      v31 = *(v27 + v8);
      if ((v31 - 1) > 3u)
      {
        v32 = 2;
        if (v29 > 3)
        {
LABEL_45:
          v33 = v32 >= 2;
          if (v32 != 2)
          {
            goto LABEL_41;
          }

          goto LABEL_49;
        }
      }

      else
      {
        v32 = dword_23CE49100[(v31 - 1)];
        if (v29 > 3)
        {
          goto LABEL_45;
        }
      }

      v34 = dword_23CE49100[v29];
      v33 = v32 >= v34;
      if (v32 != v34)
      {
LABEL_41:
        if (v33)
        {
          goto LABEL_13;
        }

        goto LABEL_42;
      }

LABEL_49:
      switch(v31)
      {
        case 1:
          v35 = 8 * v8;
          v36 = *(**(v12 + 40) + v35);
          if (v28 == 3)
          {
            goto LABEL_60;
          }

          break;
        case 2:
          v35 = 8 * v8;
          v36 = -*(**(v12 + 48) + v35);
          if (v28 == 3)
          {
            goto LABEL_60;
          }

          break;
        case 3:
          v35 = 8 * v8;
          v36 = *(**(v12 + 40) + v35) - *(**(v12 + 48) + v35);
          if (v28 == 3)
          {
            goto LABEL_60;
          }

          break;
        default:
          v35 = 8 * v8;
          v36 = 0.0;
          if (v28 == 3)
          {
LABEL_60:
            v37 = *(**(v12 + 40) + 8 * v7) - *(**(v12 + 48) + 8 * v7);
            goto LABEL_61;
          }

          break;
      }

      if (v28 == 2)
      {
        v37 = -*(**(v12 + 48) + 8 * v7);
      }

      else
      {
        v37 = 0.0;
        if (v28 == 1)
        {
          v37 = *(**(v12 + 40) + 8 * v7);
        }
      }

LABEL_61:
      if (v36 + fabs(*(**(v12 + 32) + v35)) / *v12 >= v37 + fabs(*(**(v12 + 32) + 8 * v7)) / *v12)
      {
        goto LABEL_13;
      }

LABEL_42:
      v30 = v14[1];
      ++v14;
      v8 = v30;
      if (v30 == v7)
      {
        goto LABEL_12;
      }
    }
  }

  v14 = &a1[v6];
LABEL_66:
  result = v14 - 1;
  if (v14 - 1 != a1)
  {
    *a1 = *result;
  }

  *result = v7;
  return result;
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::glop::InitialBasis::BixbyColumnComparator &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *>(uint64_t a1, int *a2, uint64_t *a3)
{
  v6 = (a2 - a1) >> 2;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v16 = *a1;
        v17 = *(a1 + 4);
        v18 = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v17, *a1);
        v19 = *(a2 - 1);
        v20 = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v19, v17);
        if (v18)
        {
          if (v20)
          {
            *a1 = v19;
          }

          else
          {
            *a1 = v17;
            *(a1 + 4) = v16;
            v41 = *(a2 - 1);
            if (!operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v41, v16))
            {
              goto LABEL_3;
            }

            *(a1 + 4) = v41;
          }

          *(a2 - 1) = v16;
          v7 = 1;
          return v7 & 1;
        }

        if (!v20)
        {
          goto LABEL_3;
        }

        *(a1 + 4) = v19;
        *(a2 - 1) = v17;
        v13 = *a1;
        v10 = *(a1 + 4);
        if (!operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v10, *a1))
        {
          goto LABEL_3;
        }

        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::glop::InitialBasis::BixbyColumnComparator &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,0>(a1, (a1 + 4), (a1 + 8), a2 - 1, a3);
        v7 = 1;
        return v7 & 1;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::glop::InitialBasis::BixbyColumnComparator &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,0>(a1, (a1 + 4), (a1 + 8), (a1 + 12), a3);
        v8 = *(a2 - 1);
        v9 = *(a1 + 12);
        if (!operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v8, v9))
        {
          goto LABEL_3;
        }

        *(a1 + 12) = v8;
        *(a2 - 1) = v9;
        v11 = *(a1 + 8);
        v10 = *(a1 + 12);
        if (!operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v10, v11))
        {
          goto LABEL_3;
        }

        *(a1 + 8) = v10;
        *(a1 + 12) = v11;
        v12 = *(a1 + 4);
        if (!operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v10, v12))
        {
          goto LABEL_3;
        }

        *(a1 + 4) = v10;
        *(a1 + 8) = v12;
        v13 = *a1;
        if (!operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v10, *a1))
        {
          goto LABEL_3;
        }

        break;
      default:
        goto LABEL_18;
    }

    *a1 = v10;
    *(a1 + 4) = v13;
    v7 = 1;
    return v7 & 1;
  }

  if (v6 < 2)
  {
LABEL_3:
    v7 = 1;
    return v7 & 1;
  }

  if (v6 == 2)
  {
    v14 = *(a2 - 1);
    v15 = *a1;
    if (operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v14, *a1))
    {
      *a1 = v14;
      *(a2 - 1) = v15;
      v7 = 1;
      return v7 & 1;
    }

    goto LABEL_3;
  }

LABEL_18:
  v22 = (a1 + 4);
  v21 = *(a1 + 4);
  v23 = *a1;
  v24 = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v21, *a1);
  v26 = (a1 + 8);
  v25 = *(a1 + 8);
  v27 = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v25, v21);
  if (v24)
  {
    v29 = a1;
    v28 = a1 + 8;
    if (!v27)
    {
      *a1 = v21;
      *(a1 + 4) = v23;
      v30 = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v25, v23);
      v29 = (a1 + 4);
      v28 = a1 + 8;
      if (!v30)
      {
        goto LABEL_29;
      }
    }
  }

  else
  {
    if (!v27)
    {
      goto LABEL_29;
    }

    *v22 = v25;
    *v26 = v21;
    v31 = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v25, v23);
    v29 = a1;
    v28 = a1 + 4;
    if (!v31)
    {
      goto LABEL_29;
    }
  }

  *v29 = v25;
  *v28 = v23;
LABEL_29:
  v32 = (a1 + 12);
  if ((a1 + 12) == a2)
  {
LABEL_39:
    v40 = 1;
  }

  else
  {
    v33 = 0;
    v34 = 12;
    while (1)
    {
      v35 = *v32;
      v36 = *v26;
      if (operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, *v32, *v26))
      {
        break;
      }

LABEL_32:
      v26 = v32;
      v34 += 4;
      if (++v32 == a2)
      {
        goto LABEL_39;
      }
    }

    v37 = v34;
    do
    {
      *(a1 + v37) = v36;
      v38 = v37 - 4;
      if (v37 == 4)
      {
        *a1 = v35;
        if (++v33 != 8)
        {
          goto LABEL_32;
        }

        goto LABEL_38;
      }

      v36 = *(a1 + v37 - 8);
      v39 = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, v35, v36);
      v37 = v38;
    }

    while (v39);
    *(a1 + v38) = v35;
    if (++v33 != 8)
    {
      goto LABEL_32;
    }

LABEL_38:
    v40 = 0;
    LOBYTE(v28) = v32 + 1 == a2;
  }

  v7 = v40 | v28;
  return v7 & 1;
}

BOOL std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::glop::InitialBasis::BixbyColumnComparator &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *>(_BOOL8 result, uint64_t *a2, uint64_t a3, unsigned int *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 2)
    {
      v8 = a3;
      v10 = (a4 - result) >> 1;
      v11 = v10 + 1;
      v12 = (result + 4 * (v10 + 1));
      v13 = v10 + 2;
      v14 = *v12;
      if (v10 + 2 >= a3)
      {
        v23 = *a4;
        result = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a2, v14, *a4);
        if (!result)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v15 = v4 >> 1;
        v16 = v12[1];
        v17 = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a2, v14, v16);
        if (v17)
        {
          v14 = v16;
        }

        v7 = v15;
        v8 = a3;
        if (v17)
        {
          ++v12;
          v11 = v13;
        }

        v23 = *v5;
        result = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a2, v14, *v5);
        if (!result)
        {
LABEL_17:
          while (1)
          {
            v20 = v12;
            *v5 = v14;
            if (v7 < v11)
            {
              break;
            }

            v21 = (2 * v11) | 1;
            v12 = (v6 + 4 * v21);
            v11 = 2 * v11 + 2;
            v14 = *v12;
            if (v11 < v8)
            {
              v18 = v12[1];
              v19 = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a2, *v12, v18);
              if (v19)
              {
                v14 = v18;
                ++v12;
              }

              v8 = a3;
              if (!v19)
              {
                v11 = v21;
              }

              result = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a2, v14, v23);
              v5 = v20;
              if (result)
              {
                break;
              }
            }

            else
            {
              v11 = v21;
              result = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a2, v14, v23);
              v5 = v20;
              if (result)
              {
                break;
              }
            }
          }

          *v20 = v23;
        }
      }
    }
  }

  return result;
}

unsigned int *std::__sort_heap[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::glop::InitialBasis::BixbyColumnComparator &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *>(unsigned int *result, unsigned int *a2, uint64_t *a3)
{
  v3 = a2 - result;
  if (v3 >= 2)
  {
    v4 = a2;
    v5 = result;
    do
    {
      v7 = 0;
      v8 = *v5;
      v9 = *a3;
      v10 = v5;
      do
      {
        v12 = v10;
        v13 = &v10[v7];
        v10 = v13 + 1;
        v11 = v13[1];
        v14 = 2 * v7;
        v7 = (2 * v7) | 1;
        v15 = v14 + 2;
        if (v15 >= v3)
        {
          goto LABEL_7;
        }

        v18 = v13[2];
        v16 = v13 + 2;
        v17 = v18;
        if (v11 == v18)
        {
          goto LABEL_7;
        }

        v19 = **(v9 + 56);
        v20 = *(v19 + v11);
        if ((v20 - 1) > 3u)
        {
          v21 = 2;
          result = *(v19 + v17);
          v22 = result - 1;
          if ((result - 1) > 3u)
          {
LABEL_12:
            v23 = v21 >= 2;
            if (v21 != 2)
            {
              goto LABEL_13;
            }

            goto LABEL_18;
          }
        }

        else
        {
          v21 = dword_23CE49100[(v20 - 1)];
          result = *(v19 + v17);
          v22 = result - 1;
          if ((result - 1) > 3u)
          {
            goto LABEL_12;
          }
        }

        v24 = dword_23CE49100[v22];
        v23 = v21 >= v24;
        if (v21 != v24)
        {
LABEL_13:
          if (!v23)
          {
            goto LABEL_6;
          }

          goto LABEL_7;
        }

LABEL_18:
        switch(v20)
        {
          case 1:
            v25 = *(**(v9 + 40) + 8 * v11);
            v26 = 2 * v17;
            if (result == 1)
            {
              goto LABEL_31;
            }

            break;
          case 2:
            v25 = -*(**(v9 + 48) + 8 * v11);
            v26 = 2 * v17;
            if (result == 1)
            {
              goto LABEL_31;
            }

            break;
          case 3:
            v25 = *(**(v9 + 40) + 8 * v11) - *(**(v9 + 48) + 8 * v11);
            v26 = 2 * v17;
            if (result == 1)
            {
              goto LABEL_31;
            }

            break;
          default:
            v25 = 0.0;
            v26 = 2 * v17;
            if (result == 1)
            {
LABEL_31:
              v27 = *(**(v9 + 40) + v26 * 4);
              goto LABEL_33;
            }

            break;
        }

        if (result == 2)
        {
          v27 = -*(**(v9 + 48) + v26 * 4);
        }

        else if (result == 3)
        {
          v27 = *(**(v9 + 40) + v26 * 4) - *(**(v9 + 48) + v26 * 4);
        }

        else
        {
          v27 = 0.0;
        }

LABEL_33:
        result = **(v9 + 32);
        if (v25 + fabs(*&result[2 * v11]) / *v9 < v27 + fabs(*&result[v26]) / *v9)
        {
LABEL_6:
          v11 = v17;
          v10 = v16;
          v7 = v15;
        }

LABEL_7:
        *v12 = v11;
      }

      while (v7 <= ((v3 - 2) >> 1));
      if (v10 == --v4)
      {
        *v10 = v8;
      }

      else
      {
        *v10 = *v4;
        *v4 = v8;
        v28 = (v10 - v5 + 4) >> 2;
        v6 = v28 < 2;
        v29 = v28 - 2;
        if (!v6)
        {
          v30 = v29 >> 1;
          v31 = &v5[v29 >> 1];
          v32 = *v31;
          v33 = *v10;
          result = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, *v31, *v10);
          if (result)
          {
            do
            {
              v34 = v31;
              *v10 = v32;
              if (!v30)
              {
                break;
              }

              v30 = (v30 - 1) >> 1;
              v31 = &v5[v30];
              v32 = *v31;
              result = operations_research::glop::InitialBasis::BixbyColumnComparator::operator()(a3, *v31, v33);
              v10 = v34;
            }

            while ((result & 1) != 0);
            *v34 = v33;
          }
        }
      }

      v6 = v3-- <= 2;
    }

    while (!v6);
  }

  return result;
}

unint64_t AbslFlagHelpGenForlp_dump_to_proto_file::NonConst@<X0>(_BYTE *a1@<X8>)
{
  result = strlen(absl::lts_20240722::flags_internal::kStrippedFlagHelp);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a1[23] = result;
  if (result)
  {
    result = memcpy(a1, absl::lts_20240722::flags_internal::kStrippedFlagHelp, result);
    a1[v4] = 0;
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

unint64_t AbslFlagHelpGenForlp_dump_compressed_file::NonConst@<X0>(_BYTE *a1@<X8>)
{
  result = strlen(absl::lts_20240722::flags_internal::kStrippedFlagHelp);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a1[23] = result;
  if (result)
  {
    result = memcpy(a1, absl::lts_20240722::flags_internal::kStrippedFlagHelp, result);
    a1[v4] = 0;
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

unint64_t AbslFlagHelpGenForlp_dump_binary_file::NonConst@<X0>(_BYTE *a1@<X8>)
{
  result = strlen(absl::lts_20240722::flags_internal::kStrippedFlagHelp);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a1[23] = result;
  if (result)
  {
    result = memcpy(a1, absl::lts_20240722::flags_internal::kStrippedFlagHelp, result);
    a1[v4] = 0;
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

uint64_t absl::lts_20240722::flags_internal::FlagOps<int>(int a1, unsigned int *a2, char *__p)
{
  if (a1 <= 4)
  {
    if (a1 > 1)
    {
      if (a1 != 2 && a1 != 3)
      {
        return 4;
      }

      *__p = *a2;
      return 0;
    }

    if (!a1)
    {

      operator new();
    }

    if (a1 == 1)
    {
      operator delete(__p);
    }

    return 0;
  }

  if (a1 <= 6)
  {
    if (a1 == 5)
    {
      return &absl::lts_20240722::base_internal::FastTypeTag<int>::dummy_var;
    }

    else
    {
      return MEMORY[0x277D827C0];
    }
  }

  if (a1 == 7)
  {
    LODWORD(v5) = *__p;
    if (absl::lts_20240722::flags_internal::AbslParseFlag(*a2, *(a2 + 1), &v5))
    {
      *__p = v5;
      return __p;
    }

    return 0;
  }

  if (a1 != 8)
  {
    if (a1 == 9)
    {
      return 80;
    }

    return 0;
  }

  absl::lts_20240722::flags_internal::Unparse(*a2, __p, &v5);
  if (__p[23] < 0)
  {
    operator delete(*__p);
  }

  *__p = v5;
  *(__p + 2) = v6;
  return 0;
}

unint64_t AbslFlagHelpGenForlp_dump_file_number::NonConst@<X0>(_BYTE *a1@<X8>)
{
  result = strlen(absl::lts_20240722::flags_internal::kStrippedFlagHelp);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a1[23] = result;
  if (result)
  {
    result = memcpy(a1, absl::lts_20240722::flags_internal::kStrippedFlagHelp, result);
    a1[v4] = 0;
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

unint64_t AbslFlagHelpGenForlp_dump_dir::NonConst@<X0>(_BYTE *a1@<X8>)
{
  result = strlen(absl::lts_20240722::flags_internal::kStrippedFlagHelp);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a1[23] = result;
  if (result)
  {
    result = memcpy(a1, absl::lts_20240722::flags_internal::kStrippedFlagHelp, result);
    a1[v4] = 0;
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

uint64_t AbslFlagDefaultGenForlp_dump_dir::Gen(uint64_t this, void *a2)
{
  *this = 1886221359;
  *(this + 23) = 4;
  return this;
}

unint64_t AbslFlagHelpGenForlp_dump_file_basename::NonConst@<X0>(_BYTE *a1@<X8>)
{
  result = strlen(absl::lts_20240722::flags_internal::kStrippedFlagHelp);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a1[23] = result;
  if (result)
  {
    result = memcpy(a1, absl::lts_20240722::flags_internal::kStrippedFlagHelp, result);
    a1[v4] = 0;
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

uint64_t AbslFlagDefaultGenForlp_dump_file_basename::Gen(uint64_t this, void *a2)
{
  *this = 0;
  *(this + 23) = 0;
  return this;
}

unint64_t AbslFlagHelpGenForglop_params::NonConst@<X0>(_BYTE *a1@<X8>)
{
  result = strlen(absl::lts_20240722::flags_internal::kStrippedFlagHelp);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a1[23] = result;
  if (result)
  {
    result = memcpy(a1, absl::lts_20240722::flags_internal::kStrippedFlagHelp, result);
    a1[v4] = 0;
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

uint64_t AbslFlagDefaultGenForglop_params::Gen(uint64_t this, void *a2)
{
  *this = 0;
  *(this + 23) = 0;
  return this;
}

operations_research::glop::LPSolver *operations_research::glop::LPSolver::LPSolver(operations_research::glop::LPSolver *this)
{
  v2 = operations_research::glop::LinearProgram::LinearProgram(this);
  operations_research::SolverLogger::SolverLogger((v2 + 448));
  *(this + 68) = 0;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  *(this + 37) = 0u;
  *(this + 38) = 0u;
  *(this + 39) = 0u;
  *(this + 40) = 0u;
  *(this + 41) = 0u;
  *(this + 42) = 0u;
  *(this + 43) = 0u;
  *(this + 44) = 0u;
  *(this + 45) = 0u;
  *(this + 46) = 0u;
  *(this + 47) = 0u;
  *(this + 48) = 0u;
  operations_research::glop::GlopParameters::GlopParameters(this + 808, 0);
  *(this + 284) = 0;
  return this;
}

void sub_23CBA6FE4(_Unwind_Exception *a1)
{
  v4 = *(v1 + 752);
  if (v4)
  {
    *(v1 + 760) = v4;
    operator delete(v4);
    v5 = *(v1 + 728);
    if (!v5)
    {
LABEL_3:
      v6 = *(v1 + 704);
      if (!v6)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v5 = *(v1 + 728);
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 736) = v5;
  operator delete(v5);
  v6 = *(v1 + 704);
  if (!v6)
  {
LABEL_4:
    v7 = *(v1 + 680);
    if (!v7)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(v1 + 712) = v6;
  operator delete(v6);
  v7 = *(v1 + 680);
  if (!v7)
  {
LABEL_5:
    v8 = *(v1 + 656);
    if (!v8)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(v1 + 688) = v7;
  operator delete(v7);
  v8 = *(v1 + 656);
  if (!v8)
  {
LABEL_6:
    v9 = *(v1 + 632);
    if (!v9)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(v1 + 664) = v8;
  operator delete(v8);
  v9 = *(v1 + 632);
  if (!v9)
  {
LABEL_7:
    v10 = *(v1 + 608);
    if (!v10)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(v1 + 640) = v9;
  operator delete(v9);
  v10 = *(v1 + 608);
  if (!v10)
  {
LABEL_8:
    v11 = *(v1 + 584);
    if (!v11)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(v1 + 616) = v10;
  operator delete(v10);
  v11 = *(v1 + 584);
  if (!v11)
  {
LABEL_9:
    v12 = *v2;
    if (!*v2)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_19:
  *(v1 + 592) = v11;
  operator delete(v11);
  v12 = *v2;
  if (!*v2)
  {
LABEL_11:
    std::unique_ptr<operations_research::glop::RevisedSimplex>::~unique_ptr[abi:ne200100]((v1 + 544));
    operations_research::SolverLogger::~SolverLogger((v1 + 448));
    operations_research::glop::LinearProgram::~LinearProgram(v1);
    _Unwind_Resume(a1);
  }

LABEL_10:
  *(v1 + 568) = v12;
  operator delete(v12);
  goto LABEL_11;
}

operations_research::glop::RevisedSimplex **std::unique_ptr<operations_research::glop::RevisedSimplex>::~unique_ptr[abi:ne200100](operations_research::glop::RevisedSimplex **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    operations_research::glop::RevisedSimplex::~RevisedSimplex(v2);
    MEMORY[0x23EED9460]();
    return v3;
  }

  return v1;
}

void operations_research::SolverLogger::~SolverLogger(operations_research::SolverLogger *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    v3 = *(this + 10);
    v4 = *(this + 9);
    if (v3 != v2)
    {
      do
      {
        if (*(v3 - 1) < 0)
        {
          operator delete(*(v3 - 24));
        }

        v3 -= 40;
      }

      while (v3 != v2);
      v4 = *(this + 9);
    }

    *(this + 10) = v2;
    operator delete(v4);
  }

  v5 = *(this + 1);
  if (v5)
  {
    v6 = *(this + 2);
    v7 = *(this + 1);
    if (v6 != v5)
    {
      v8 = v6 - 32;
      do
      {
        v9 = *(v6 - 8);
        v6 -= 32;
        if (v6 == v9)
        {
          (*(*v9 + 32))(v9);
        }

        else if (v9)
        {
          (*(*v9 + 40))(v9);
        }

        v8 -= 32;
      }

      while (v6 != v5);
      v7 = *(this + 1);
    }

    *(this + 2) = v5;
    operator delete(v7);
  }
}

void operations_research::glop::LPSolver::SetParameters(operations_research::glop::LPSolver *this, const operations_research::glop::GlopParameters *a2)
{
  operations_research::glop::GlopParameters::CopyFrom((this + 808), a2);
  explicit = atomic_load_explicit(&off_281A218B8, memory_order_acquire);
  if ((~explicit & 3) != 0)
  {
    absl::lts_20240722::flags_internal::FlagImpl::Read(&FLAGS_glop_params, &v15);
  }

  else
  {
    v4 = explicit & 0xFFFFFFFFFFFFFFFCLL;
    if (*(v4 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v15, *v4, *(v4 + 8));
    }

    else
    {
      v5 = *v4;
      v15.__r_.__value_.__r.__words[2] = *(v4 + 16);
      *&v15.__r_.__value_.__l.__data_ = v5;
    }
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    size = v15.__r_.__value_.__l.__size_;
    operator delete(v15.__r_.__value_.__l.__data_);
    if (!size)
    {
      return;
    }
  }

  else if (!*(&v15.__r_.__value_.__s + 23))
  {
    return;
  }

  operations_research::glop::GlopParameters::GlopParameters(&v15, 0);
  v7 = atomic_load_explicit(&off_281A218B8, memory_order_acquire);
  if ((~v7 & 3) != 0)
  {
    absl::lts_20240722::flags_internal::FlagImpl::Read(&FLAGS_glop_params, &v16);
  }

  else
  {
    v8 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    if (*(v8 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v16, *v8, *(v8 + 8));
    }

    else
    {
      v9 = *v8;
      v16.__r_.__value_.__r.__words[2] = *(v8 + 16);
      *&v16.__r_.__value_.__l.__data_ = v9;
    }
  }

  __p = v16;
  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v11 = __p.__r_.__value_.__l.__size_;
  }

  if ((google::protobuf::TextFormat::ParseFromString(p_p, v11, &v15) & 1) == 0)
  {
    v13 = absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v16, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/lp_solver.cc", 132);
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v13);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operations_research::glop::GlopParameters::MergeImpl(this + 101, &v15, v12);
  operations_research::glop::GlopParameters::~GlopParameters(&v15);
}

void sub_23CBA73EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 41) < 0)
  {
    operator delete(*(v21 - 64));
    operations_research::glop::GlopParameters::~GlopParameters(&__p);
    _Unwind_Resume(a1);
  }

  operations_research::glop::GlopParameters::~GlopParameters(&__p);
  _Unwind_Resume(a1);
}

void operations_research::glop::LPSolver::Solve(operations_research::glop::LPSolver *this, const operations_research::glop::LinearProgram *a2)
{
  v2 = *(this + 121);
  v3 = *(this + 131);
  operator new();
}

void sub_23CBA7568(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<operations_research::TimeLimit>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23CBA757C(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 48) = v5;
    operator delete(v5);
  }

  MEMORY[0x23EED9460](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t operations_research::glop::LPSolver::SolveWithTimeLimit(operations_research::glop::LPSolver *this, const operations_research::glop::LinearProgram *a2, operations_research::TimeLimit *a3)
{
  v43 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(&v41, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/lp_solver.cc", 153, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v41, "SolveWithTimeLimit() called with a nullptr time_limit.", 0x36uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v41);
    v31 = 9;
    v32 = *MEMORY[0x277D85DE8];
    return v31;
  }

  LODWORD(v5) = *(this + 284) + 1;
  *(this + 284) = v5;
  *(this + 138) = 0;
  explicit = atomic_load_explicit(&qword_281A21678, memory_order_acquire);
  if (explicit)
  {
    if ((explicit & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  else if ((absl::lts_20240722::flags_internal::FlagImpl::ReadOneBool(&FLAGS_lp_dump_to_proto_file) & 1) == 0)
  {
    goto LABEL_47;
  }

  v7 = atomic_load_explicit(&off_281A21848, memory_order_acquire);
  if ((~v7 & 3) != 0)
  {
    absl::lts_20240722::flags_internal::FlagImpl::Read(&FLAGS_lp_dump_file_basename, &v41);
  }

  else
  {
    v8 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    if (*(v8 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v41, *v8, *(v8 + 8));
    }

    else
    {
      v9 = *v8;
      v41.__r_.__value_.__r.__words[2] = *(v8 + 16);
      *&v41.__r_.__value_.__l.__data_ = v9;
    }
  }

  v39 = v41;
  size = HIBYTE(v41.__r_.__value_.__r.__words[2]);
  if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v41.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    v11 = *(a2 + 439);
    if ((v11 & 0x80u) != 0)
    {
      v11 = *(a2 + 53);
    }

    if (v11)
    {
      std::string::operator=(&v39, (a2 + 416));
    }

    else
    {
      MEMORY[0x23EED9020](&v39, "linear_program_dump");
    }
  }

  v12 = atomic_load_explicit(&qword_281A21780, memory_order_acquire);
  if (!v12)
  {
    LODWORD(v12) = absl::lts_20240722::flags_internal::FlagImpl::ReadOneWord(&FLAGS_lp_dump_file_number);
  }

  if ((v12 & 0x80000000) == 0)
  {
    v5 = atomic_load_explicit(&qword_281A21780, memory_order_acquire);
    if (!v5)
    {
      LODWORD(v5) = absl::lts_20240722::flags_internal::FlagImpl::ReadOneWord(&FLAGS_lp_dump_file_number);
    }
  }

  v41.__r_.__value_.__r.__words[0] = v5;
  v41.__r_.__value_.__l.__size_ = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<int>;
  absl::lts_20240722::str_format_internal::AppendPack(&v39, "-%06d.pb", 8, &v41, 1uLL);
  v13 = atomic_load_explicit(&off_281A217D8, memory_order_acquire);
  if ((~v13 & 3) != 0)
  {
    absl::lts_20240722::flags_internal::FlagImpl::Read(&FLAGS_lp_dump_dir, &v40);
  }

  else
  {
    v14 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    if (*(v14 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v40, *v14, *(v14 + 8));
    }

    else
    {
      v15 = *v14;
      v40.__r_.__value_.__r.__words[2] = *(v14 + 16);
      *&v40.__r_.__value_.__l.__data_ = v15;
    }
  }

  __p = v40;
  v16 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
  p_p = &__p;
  if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v16 = v40.__r_.__value_.__l.__size_;
    p_p = v40.__r_.__value_.__r.__words[0];
  }

  v41.__r_.__value_.__r.__words[0] = p_p;
  v41.__r_.__value_.__l.__size_ = v16;
  v40.__r_.__value_.__r.__words[0] = "/";
  v40.__r_.__value_.__l.__size_ = 1;
  v18 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
  v19 = &v39;
  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v18 = v39.__r_.__value_.__l.__size_;
    v19 = v39.__r_.__value_.__r.__words[0];
  }

  v42[0].__r_.__value_.__r.__words[0] = v19;
  v42[0].__r_.__value_.__l.__size_ = v18;
  absl::lts_20240722::StrCat(&v41.__r_.__value_.__l.__data_, &v40, v42, &v38);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  operations_research::MPModelProto::MPModelProto(&v41, 0);
  operations_research::glop::LinearProgramToMPModelProto(a2, &v41, v20);
  OneBool = atomic_load_explicit(&qword_281A21728, memory_order_acquire);
  if (!OneBool)
  {
    OneBool = absl::lts_20240722::flags_internal::FlagImpl::ReadOneBool(&FLAGS_lp_dump_binary_file);
  }

  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v38;
  }

  else
  {
    v22 = v38.__r_.__value_.__r.__words[0];
  }

  if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v23 = v38.__r_.__value_.__l.__size_;
  }

  v24 = atomic_load_explicit(&qword_281A216D0, memory_order_acquire);
  if (!v24)
  {
    LOBYTE(v24) = absl::lts_20240722::flags_internal::FlagImpl::ReadOneBool(&FLAGS_lp_dump_compressed_file);
  }

  operations_research::WriteProtoToFile(v22, v23, &v41, OneBool & 1, v24 & 1, 1, &v40);
  if (v40.__r_.__value_.__r.__words[0] != 1)
  {
    absl::lts_20240722::status_internal::MakeCheckFailString();
  }

  operations_research::MPModelProto::~MPModelProto(&v41);
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_47;
    }
  }

  else if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_47;
  }

  operator delete(v39.__r_.__value_.__l.__data_);
LABEL_47:
  v25 = this + 448;
  v26 = *(this + 839);
  *(this + 448) = v26;
  *(this + 449) = *(this + 1098);
  if ((v26 & 1) == 0)
  {
    if (dword_27E25CE38 < 1)
    {
      goto LABEL_90;
    }

    if (absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::glop::LPSolver::SolveWithTimeLimit(operations_research::glop::LinearProgram const&,operations_research::TimeLimit *)::$_0::operator() const(void)::site, dword_27E25CE38))
    {
      *(this + 224) = 1;
    }

    else if ((*v25 & 1) == 0)
    {
      goto LABEL_90;
    }
  }

  *(&v41.__r_.__value_.__s + 23) = 0;
  v41.__r_.__value_.__s.__data_[0] = 0;
  operations_research::SolverLogger::LogInfo(this + 448, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/lp_solver.cc", 179, &v41);
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
    if (*v25 != 1)
    {
      goto LABEL_90;
    }
  }

  else if (*v25 != 1)
  {
    goto LABEL_90;
  }

  v41.__r_.__value_.__r.__words[0] = "Initial problem: ";
  v41.__r_.__value_.__l.__size_ = 17;
  operations_research::glop::LinearProgram::GetDimensionString(a2, &v39);
  v27 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = &v39;
  }

  else
  {
    v28 = v39.__r_.__value_.__r.__words[0];
  }

  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v27 = v39.__r_.__value_.__l.__size_;
  }

  v40.__r_.__value_.__r.__words[0] = v28;
  v40.__r_.__value_.__l.__size_ = v27;
  absl::lts_20240722::StrCat(&v41.__r_.__value_.__l.__data_, &v40, v42);
  operations_research::SolverLogger::LogInfo(this + 448, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/lp_solver.cc", 180, v42);
  if (SHIBYTE(v42[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42[0].__r_.__value_.__l.__data_);
    if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_62:
      if ((*v25 & 1) == 0)
      {
        goto LABEL_90;
      }

      goto LABEL_66;
    }
  }

  else if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_62;
  }

  operator delete(v39.__r_.__value_.__l.__data_);
  if ((*v25 & 1) == 0)
  {
    goto LABEL_90;
  }

LABEL_66:
  v41.__r_.__value_.__r.__words[0] = "Objective stats: ";
  v41.__r_.__value_.__l.__size_ = 17;
  operations_research::glop::LinearProgram::GetObjectiveStatsString(a2, &v39);
  v29 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = &v39;
  }

  else
  {
    v30 = v39.__r_.__value_.__r.__words[0];
  }

  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v29 = v39.__r_.__value_.__l.__size_;
  }

  v40.__r_.__value_.__r.__words[0] = v30;
  v40.__r_.__value_.__l.__size_ = v29;
  absl::lts_20240722::StrCat(&v41.__r_.__value_.__l.__data_, &v40, v42);
  operations_research::SolverLogger::LogInfo(this + 448, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/lp_solver.cc", 181, v42);
  if ((SHIBYTE(v42[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_73;
    }

LABEL_77:
    operator delete(v39.__r_.__value_.__l.__data_);
    if ((*v25 & 1) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_78;
  }

  operator delete(v42[0].__r_.__value_.__l.__data_);
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_77;
  }

LABEL_73:
  if ((*v25 & 1) == 0)
  {
    goto LABEL_90;
  }

LABEL_78:
  v41.__r_.__value_.__r.__words[0] = "Bounds stats: ";
  v41.__r_.__value_.__l.__size_ = 14;
  operations_research::glop::LinearProgram::GetBoundsStatsString(a2, &v39);
  v33 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v34 = &v39;
  }

  else
  {
    v34 = v39.__r_.__value_.__r.__words[0];
  }

  if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v33 = v39.__r_.__value_.__l.__size_;
  }

  v40.__r_.__value_.__r.__words[0] = v34;
  v40.__r_.__value_.__l.__size_ = v33;
  absl::lts_20240722::StrCat(&v41.__r_.__value_.__l.__data_, &v40, v42);
  operations_research::SolverLogger::LogInfo(this + 448, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/lp_solver.cc", 182, v42);
  if (SHIBYTE(v42[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42[0].__r_.__value_.__l.__data_);
    if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_85:
      if ((*v25 & 1) == 0)
      {
        goto LABEL_90;
      }

LABEL_89:
      v41.__r_.__value_.__r.__words[0] = "Parameters: ";
      v41.__r_.__value_.__l.__size_ = 12;
      google::protobuf::Message::ShortDebugString(&v39);
    }
  }

  else if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_85;
  }

  operator delete(v39.__r_.__value_.__l.__data_);
  if (*v25)
  {
    goto LABEL_89;
  }

LABEL_90:
  if (operations_research::glop::LinearProgram::IsCleanedUp(a2))
  {
    if (operations_research::glop::LinearProgram::IsValid(a2, *(this + 140)))
    {
      operations_research::glop::LinearProgram::PopulateFromLinearProgram(this, a2);
      operations_research::glop::LinearProgram::RemoveNearZeroEntries(this, *(this + 141));
      operations_research::glop::Preprocessor::Preprocessor(&v41, (this + 808));
    }

    if (*v25 == 1)
    {
      operator new();
    }

    operations_research::glop::LPSolver::ResizeSolution(this, *(a2 + 6), -1431655765 * ((*(a2 + 1) - *a2) >> 4));
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(&v41, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/lp_solver.cc", 188, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v41, "The columns of the given linear program should be ordered ", 0x3AuLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v41, "by row and contain no zero coefficients. Call CleanUp() ", 0x38uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v41, "on it before calling Solve().", 0x1DuLL);
    operations_research::glop::LPSolver::SolveWithTimeLimit(&v41, a2, this);
  }

  v31 = 10;
  v35 = *MEMORY[0x277D85DE8];
  return v31;
}

void sub_23CBA8418(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  operations_research::MPModelProto::~MPModelProto(&a47);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

char *operations_research::glop::LPSolver::ResizeSolution(void *a1, int a2, int a3)
{
  v24 = 0;
  v5 = a3;
  v6 = a1[70];
  v7 = (a1[71] - v6) >> 3;
  if (a3 <= v7)
  {
    if (a3 < v7)
    {
      a1[71] = v6 + 8 * a3;
    }
  }

  else
  {
    std::vector<double>::__append((a1 + 70), a3 - v7, &v24);
  }

  v24 = 0;
  v8 = a1[91];
  v9 = (a1[92] - v8) >> 3;
  if (v5 <= v9)
  {
    if (v5 < v9)
    {
      a1[92] = v8 + 8 * v5;
    }
  }

  else
  {
    std::vector<double>::__append((a1 + 91), v5 - v9, &v24);
  }

  v10 = a1[77];
  v11 = a1[76];
  if (v5 <= &v10[-v11])
  {
    if (v5 < &v10[-v11])
    {
      a1[77] = v11 + v5;
    }
  }

  else
  {
    v12 = a1[78];
    if (v12 - v10 < v5 - &v10[-v11])
    {
      if ((v5 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v13 = v5 + v11;
    memset(v10, 4, v5 - &v10[-v11]);
    a1[77] = v13;
  }

  v24 = 0;
  v14 = a2;
  v15 = a1[73];
  v16 = (a1[74] - v15) >> 3;
  if (a2 <= v16)
  {
    if (a2 < v16)
    {
      a1[74] = v15 + 8 * a2;
    }
  }

  else
  {
    std::vector<double>::__append((a1 + 73), a2 - v16, &v24);
  }

  v24 = 0;
  v17 = a1[94];
  v18 = (a1[95] - v17) >> 3;
  if (a2 <= v18)
  {
    if (a2 < v18)
    {
      a1[95] = v17 + 8 * a2;
    }
  }

  else
  {
    std::vector<double>::__append((a1 + 94), a2 - v18, &v24);
  }

  result = a1[80];
  v20 = a1[79];
  v21 = a2 - &result[-v20];
  if (v14 <= &result[-v20])
  {
    if (v14 < &result[-v20])
    {
      a1[80] = v20 + v14;
    }
  }

  else
  {
    v22 = a1[81];
    if (v22 - result < v21)
    {
      if ((v14 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v23 = (v14 + v20);
    result = memset(result, 4, v14 - &result[-v20]);
    a1[80] = v23;
  }

  return result;
}

void *operations_research::glop::LPSolver::RunRevisedSimplexIfNeeded(operations_research::glop::RevisedSimplex **this, operations_research::glop::ProblemSolution *a2, operations_research::TimeLimit *a3)
{
  result = operations_research::glop::LinearProgram::ClearTransposeMatrix(this);
  if (*a2 == 6)
  {
    v6 = this[68];
    if (!v6)
    {
      operator new();
    }

    operations_research::glop::RevisedSimplex::SetParameters(v6, (this + 101));
  }

  return result;
}

void sub_23CBA8E1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::glop::LPSolver::LoadAndVerifySolution(operations_research::glop::LPSolver *this, const operations_research::glop::LinearProgram *a2, const operations_research::glop::ProblemSolution *a3)
{
  v5 = this;
  v141 = *MEMORY[0x277D85DE8];
  if (*(this + 448) == 1)
  {
    v138 = 0;
    LOBYTE(__p) = 0;
    this = operations_research::SolverLogger::LogInfo(this + 448, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/lp_solver.cc", 337, &__p);
    if (v138 < 0)
    {
      operator delete(__p);
      if ((*(v5 + 448) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    else if ((*(v5 + 448) & 1) == 0)
    {
      goto LABEL_7;
    }

    operator new();
  }

LABEL_7:
  if (operations_research::glop::LPSolver::IsProblemSolutionConsistent(this, a2, a3))
  {
    v6 = (v5 + 560);
    if (v5 + 560 != a3 + 8)
    {
      std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(v5 + 70, *(a3 + 1), *(a3 + 2), (*(a3 + 2) - *(a3 + 1)) >> 3);
    }

    if (v5 + 584 != a3 + 32)
    {
      std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(v5 + 73, *(a3 + 4), *(a3 + 5), (*(a3 + 5) - *(a3 + 4)) >> 3);
    }

    if (v5 + 608 != a3 + 56)
    {
      std::vector<operations_research::glop::VariableStatus>::__assign_with_size[abi:ne200100]<operations_research::glop::VariableStatus*,operations_research::glop::VariableStatus*>(v5 + 76, *(a3 + 7), *(a3 + 8), *(a3 + 8) - *(a3 + 7));
    }

    if (v5 + 632 != a3 + 80)
    {
      std::vector<operations_research::glop::VariableStatus>::__assign_with_size[abi:ne200100]<operations_research::glop::VariableStatus*,operations_research::glop::VariableStatus*>(v5 + 79, *(a3 + 10), *(a3 + 11), *(a3 + 11) - *(a3 + 10));
    }

    v7 = *a3;
    operations_research::glop::LPSolver::ComputeReducedCosts(v5, a2);
    v8 = -1431655765 * ((*(a2 + 1) - *a2) >> 4);
    if (v8 < 1)
    {
      v18 = 0.0;
    }

    else
    {
      v9 = *(a2 + 17);
      v10 = *v6;
      v11 = v8 & 0x7FFFFFFF;
      v12 = 0.0;
      v13 = 0.0;
      do
      {
        v14 = *v9++;
        v15 = v14;
        v16 = *v10++;
        v17 = v13 + v15 * v16;
        v18 = v12 + v17;
        v13 = v17 + v12 - (v12 + v17);
        v12 = v18;
        --v11;
      }

      while (v11);
    }

    v19 = operations_research::glop::LPSolver::ComputeDualObjective(v5, a2);
    if (*(v5 + 448) != 1)
    {
LABEL_45:
      if (!v7 && *(v5 + 995) == 1)
      {
        operations_research::glop::LPSolver::MovePrimalValuesWithinBounds(v5, a2);
        operations_research::glop::LPSolver::MoveDualValuesWithinBounds(v5, a2);
      }

      v24 = -1431655765 * ((*(a2 + 1) - *a2) >> 4);
      if (v24 < 1)
      {
        v34 = 0.0;
      }

      else
      {
        v25 = *(a2 + 17);
        v26 = *v6;
        v27 = v24 & 0x7FFFFFFF;
        v28 = 0.0;
        v29 = 0.0;
        do
        {
          v30 = *v25++;
          v31 = v30;
          v32 = *v26++;
          v33 = v29 + v31 * v32;
          v34 = v28 + v33;
          v29 = v33 + v28 - (v28 + v33);
          v28 = v34;
          --v27;
        }

        while (v27);
      }

      v35 = (v34 + *(a2 + 49)) * *(a2 + 50);
      *(v5 + 97) = v35;
      if (*(v5 + 448) == 1)
      {
        __p = "Primal objective (after moving primal/dual values) = ";
        v137 = 53;
        v139 = v35;
        v140 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
        absl::lts_20240722::str_format_internal::FormatPack("%.15E", 5, &v139, 1uLL, &v129);
        v36 = v131;
        if ((v131 & 0x80u) == 0)
        {
          v37 = &v129;
        }

        else
        {
          v37 = v129;
        }

        if ((v131 & 0x80u) != 0)
        {
          v36 = v130;
        }

        v133 = v37;
        v134 = v36;
        absl::lts_20240722::StrCat(&__p, &v133, &v132);
        operations_research::SolverLogger::LogInfo(v5 + 448, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/lp_solver.cc", 376, &v132);
        if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v132.__r_.__value_.__l.__data_);
          if ((v131 & 0x80000000) == 0)
          {
            goto LABEL_61;
          }
        }

        else if ((v131 & 0x80000000) == 0)
        {
          goto LABEL_61;
        }

        operator delete(v129);
      }

LABEL_61:
      operations_research::glop::LPSolver::ComputeReducedCosts(v5, a2);
      v38 = *(a2 + 6);
      v40 = *a2;
      v39 = *(a2 + 1);
      __p = 0;
      std::vector<double>::assign(v5 + 94, v38, &__p);
      v41 = 0xAAAAAAAAAAAAAAABLL * ((v39 - v40) >> 4);
      if (v41 >= 1)
      {
        v42 = 0;
        v43 = v41 & 0x7FFFFFFF;
        do
        {
          SparseColumn = operations_research::glop::LinearProgram::GetSparseColumn(a2, v42);
          v45 = (*v6)[v42];
          if (v45 != 0.0)
          {
            v46 = SparseColumn[1];
            if (v46 >= 1)
            {
              v48 = SparseColumn[3];
              v47 = SparseColumn[4];
              v49 = *(v5 + 94);
              do
              {
                v50 = *v47++;
                v51 = v50;
                LODWORD(v50) = *v48++;
                *(v49 + 8 * SLODWORD(v50)) = *(v49 + 8 * SLODWORD(v50)) + v45 * v51;
                --v46;
              }

              while (v46);
            }
          }

          ++v42;
        }

        while (v42 != v43);
      }

      LOBYTE(v129) = 0;
      LOBYTE(v139) = 0;
      *v128 = 0;
      operations_research::glop::LPSolver::ComputeMaxRhsPerturbationToEnforceOptimality(v5, a2, &v129);
      operations_research::glop::LPSolver::ComputeMaxCostPerturbationToEnforceOptimality(v5, a2, &v139);
      v52 = *(v5 + 118);
      v53 = -1431655765 * ((*(a2 + 1) - *a2) >> 4);
      v54 = 0.0;
      if (v53 >= 1)
      {
        v55 = 0;
        v56 = *(a2 + 20);
        v57 = *(a2 + 23);
        v58 = v53 & 0x7FFFFFFF;
        v59 = 0.0;
        v60 = *v6;
        while (1)
        {
          v62 = *v56;
          v63 = *v57;
          v64 = *v60;
          if (*v56 == *v57)
          {
            v61 = vabdd_f64(v64, v63);
            if (v59 < v61)
            {
              v59 = v61;
            }
          }

          else
          {
            if (v64 <= v63)
            {
              if (v64 >= v62)
              {
                goto LABEL_74;
              }
            }

            else
            {
              if (v59 < v64 - v63)
              {
                v59 = v64 - v63;
              }

              v55 |= v64 - v63 > v52 * fmax(fabs(v63), 1.0);
              if (v64 >= v62)
              {
                goto LABEL_74;
              }
            }

            v61 = v62 - v64;
            if (v59 < v61)
            {
              v59 = v61;
            }

            v63 = *v56;
          }

          v55 |= v61 > v52 * fmax(fabs(v63), 1.0);
LABEL_74:
          ++v60;
          ++v57;
          ++v56;
          if (!--v58)
          {
            goto LABEL_86;
          }
        }
      }

      v55 = 0;
      v59 = 0.0;
LABEL_86:
      v65 = *(a2 + 6);
      if (v65 < 1)
      {
        v69 = 0;
      }

      else
      {
        v66 = *(v5 + 73);
        v67 = *(a2 + 8);
        v68 = *(a2 + 11);
        v69 = 0;
        v54 = 0.0;
        if (*(a2 + 408))
        {
          do
          {
            v70 = *v66++;
            v71 = v70;
            v72 = *v67++;
            v73 = v72;
            v74 = *v68++;
            v75 = v74;
            v76 = -v71;
            v77 = v69 | (v52 < -v71);
            if (v54 >= -v71)
            {
              v76 = v54;
            }

            if (v73 == -INFINITY)
            {
              v78 = v76;
            }

            else
            {
              v77 = v69;
              v78 = v54;
            }

            v79 = (v52 < v71) | v77;
            if (v78 >= v71)
            {
              v71 = v78;
            }

            if (v75 == INFINITY)
            {
              v69 = v79;
            }

            else
            {
              v69 = v77;
            }

            if (v75 == INFINITY)
            {
              v54 = v71;
            }

            else
            {
              v54 = v78;
            }

            --v65;
          }

          while (v65);
        }

        else
        {
          do
          {
            v80 = *v66++;
            v81 = v80;
            v82 = *v67++;
            v83 = v82;
            v84 = *v68++;
            v85 = v84;
            v86 = v69 | (v81 > v52);
            if (v54 >= v81)
            {
              v87 = v54;
            }

            else
            {
              v87 = v81;
            }

            if (v83 == -INFINITY)
            {
              v88 = v87;
            }

            else
            {
              v86 = v69;
              v88 = v54;
            }

            v89 = -v81;
            v90 = (v52 < v89) | v86;
            if (v88 >= v89)
            {
              v89 = v88;
            }

            if (v85 == INFINITY)
            {
              v69 = v90;
            }

            else
            {
              v69 = v86;
            }

            if (v85 == INFINITY)
            {
              v54 = v89;
            }

            else
            {
              v54 = v88;
            }

            --v65;
          }

          while (v65);
        }
      }

      operations_research::glop::LPSolver::ComputeActivityInfeasibility(v5, a2, &v128[1]);
      v92 = v91;
      operations_research::glop::LPSolver::ComputeReducedCostInfeasibility(v5, a2, v128);
      v95 = v94;
      if (v59 >= v92)
      {
        v96 = v59;
      }

      else
      {
        v96 = v92;
      }

      *(v5 + 99) = v96;
      if (v54 >= v95)
      {
        v95 = v54;
      }

      *(v5 + 100) = v95;
      if (*(v5 + 448) == 1)
      {
        __p = "Max. primal infeasibility = ";
        v137 = 28;
        v97 = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v135, v96, v93);
        v133 = v135;
        v134 = v97;
        absl::lts_20240722::StrCat(&__p, &v133, &v132);
        operations_research::SolverLogger::LogInfo(v5 + 448, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/lp_solver.cc", 418, &v132);
        if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v132.__r_.__value_.__l.__data_);
          if ((*(v5 + 448) & 1) == 0)
          {
            goto LABEL_133;
          }
        }

        else if ((*(v5 + 448) & 1) == 0)
        {
          goto LABEL_133;
        }

        __p = "Max. dual infeasibility = ";
        v137 = 26;
        v98 = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v135, *(v5 + 100), v93);
        v133 = v135;
        v134 = v98;
        absl::lts_20240722::StrCat(&__p, &v133, &v132);
        operations_research::SolverLogger::LogInfo(v5 + 448, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/lp_solver.cc", 420, &v132);
        if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v132.__r_.__value_.__l.__data_);
        }
      }

LABEL_133:
      v99 = -1431655765 * ((*(a2 + 1) - *a2) >> 4);
      if (v99 < 1)
      {
        v105 = 0.0;
        goto LABEL_142;
      }

      v100 = *(v5 + 118);
      v101 = *(a2 + 17);
      v102 = *v6;
      v103 = v99 & 0x7FFFFFFF;
      if (v103 >= 4)
      {
        v106 = v99 & 3;
        v104 = v103 - v106;
        v107 = v102 + 1;
        v108 = v101 + 1;
        v105 = 0.0;
        __asm { FMOV            V1.2D, #1.0 }

        v114 = v103 - v106;
        do
        {
          v115 = vmulq_f64(vabsq_f64(v108[-1]), vmulq_n_f64(vmaxnmq_f64(vabsq_f64(v107[-1]), _Q1), v100));
          v116 = vmulq_f64(vabsq_f64(*v108), vmulq_n_f64(vmaxnmq_f64(vabsq_f64(*v107), _Q1), v100));
          v105 = v105 + v115.f64[0] + v115.f64[1] + v116.f64[0] + v116.f64[1];
          v107 += 2;
          v108 += 2;
          v114 -= 4;
        }

        while (v114);
        if (!v106)
        {
LABEL_142:
          if (*(v5 + 448) == 1 && (__p = "Objective error <= ", v137 = 19, v124 = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v135, v105, v93), v133 = v135, v134 = v124, absl::lts_20240722::StrCat(&__p, &v133, &v132), operations_research::SolverLogger::LogInfo(v5 + 448, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/lp_solver.cc", 426, &v132), SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0))
          {
            operator delete(v132.__r_.__value_.__l.__data_);
            if (v7)
            {
              goto LABEL_145;
            }
          }

          else if (v7)
          {
LABEL_145:
            if (v7 != 7 || ((v128[1] | v55) & 1) == 0)
            {
              goto LABEL_177;
            }

            goto LABEL_147;
          }

          if (*(v5 + 995) != 1)
          {
LABEL_170:
            if (vabdd_f64(v18, v19) <= v105)
            {
              v7 = 0;
              if (((v128[1] | v55) & 1) == 0)
              {
                goto LABEL_177;
              }
            }

            else
            {
              if (*(v5 + 448) == 1)
              {
                operator new();
              }

              if (*(v5 + 1032))
              {
                goto LABEL_182;
              }

              v7 = 0;
              if (((v128[1] | v55) & 1) == 0)
              {
LABEL_177:
                if ((v7 & 0xFFFFFFF7) == 0)
                {
                  if ((v128[0] | v69))
                  {
                    if (*(v5 + 448) == 1)
                    {
                      operator new();
                    }

                    if (*(v5 + 1032))
                    {
LABEL_182:
                      IsOptimalSolutionOnFacet = 0;
                      LOBYTE(v7) = 11;
LABEL_185:
                      *(v5 + 784) = IsOptimalSolutionOnFacet;
                      goto LABEL_186;
                    }
                  }

                  if (!v7)
                  {
                    IsOptimalSolutionOnFacet = operations_research::glop::LPSolver::IsOptimalSolutionOnFacet(v5, a2);
                    goto LABEL_185;
                  }
                }

                IsOptimalSolutionOnFacet = 0;
                goto LABEL_185;
              }
            }

LABEL_147:
            if (*(v5 + 448) == 1)
            {
              operator new();
            }

            if (*(v5 + 1032))
            {
              v7 = 11;
            }

            goto LABEL_177;
          }

          if (v59 == 0.0 && v54 == 0.0)
          {
            if (v129 == 1)
            {
              goto LABEL_157;
            }
          }

          else
          {
            absl::lts_20240722::log_internal::LogMessage::LogMessage(&__p, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/lp_solver.cc", 433);
            absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&__p, "Primal/dual values have been moved to their bounds. ", 0x34uLL);
            absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&__p, "Therefore the primal/dual infeasibilities should be ", 0x34uLL);
            absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&__p, "exactly zero (but not the residuals). If this message ", 0x36uLL);
            absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&__p, "appears, there is probably a bug in ", 0x24uLL);
            absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&__p, "MovePrimalValuesWithinBounds() or in ", 0x25uLL);
            absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&__p, "MoveDualValuesWithinBounds().", 0x1DuLL);
            absl::lts_20240722::log_internal::LogMessage::~LogMessage(&__p);
            if (v129 == 1)
            {
LABEL_157:
              if (*(v5 + 448) == 1)
              {
                operator new();
              }

              if (*(v5 + 1032))
              {
                v7 = 11;
              }

              else
              {
                v7 = 0;
              }

              if (LOBYTE(v139) != 1)
              {
                goto LABEL_169;
              }

              goto LABEL_166;
            }
          }

          v7 = 0;
          if (LOBYTE(v139) != 1)
          {
            goto LABEL_169;
          }

LABEL_166:
          if (*(v5 + 448) == 1)
          {
            operator new();
          }

          if (*(v5 + 1032))
          {
            goto LABEL_182;
          }

LABEL_169:
          if (v7)
          {
            goto LABEL_177;
          }

          goto LABEL_170;
        }
      }

      else
      {
        v104 = 0;
        v105 = 0.0;
      }

      v117 = v103 - v104;
      v118 = v104;
      v119 = &v102->f64[v118];
      v120 = &v101->f64[v118];
      do
      {
        v121 = *v120++;
        v122 = v121;
        v123 = *v119++;
        v105 = v105 + fabs(v122) * (v100 * fmax(fabs(v123), 1.0));
        --v117;
      }

      while (v117);
      goto LABEL_142;
    }

    __p = "Primal objective (before moving primal/dual values) = ";
    v137 = 54;
    v139 = (v18 + *(a2 + 49)) * *(a2 + 50);
    v140 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
    absl::lts_20240722::str_format_internal::FormatPack("%.15E", 5, &v139, 1uLL, &v129);
    v20 = v131;
    if ((v131 & 0x80u) == 0)
    {
      v21 = &v129;
    }

    else
    {
      v21 = v129;
    }

    if ((v131 & 0x80u) != 0)
    {
      v20 = v130;
    }

    v133 = v21;
    v134 = v20;
    absl::lts_20240722::StrCat(&__p, &v133, &v132);
    operations_research::SolverLogger::LogInfo(v5 + 448, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/lp_solver.cc", 361, &v132);
    if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v132.__r_.__value_.__l.__data_);
      if ((v131 & 0x80000000) == 0)
      {
LABEL_32:
        if ((*(v5 + 448) & 1) == 0)
        {
          goto LABEL_45;
        }

LABEL_36:
        __p = "Dual objective (before moving primal/dual values) = ";
        v137 = 52;
        v139 = (v19 + *(a2 + 49)) * *(a2 + 50);
        v140 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
        absl::lts_20240722::str_format_internal::FormatPack("%.15E", 5, &v139, 1uLL, &v129);
        v22 = v131;
        if ((v131 & 0x80u) == 0)
        {
          v23 = &v129;
        }

        else
        {
          v23 = v129;
        }

        if ((v131 & 0x80u) != 0)
        {
          v22 = v130;
        }

        v133 = v23;
        v134 = v22;
        absl::lts_20240722::StrCat(&__p, &v133, &v132);
        operations_research::SolverLogger::LogInfo(v5 + 448, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/lp_solver.cc", 364, &v132);
        if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v132.__r_.__value_.__l.__data_);
        }

        if (v131 < 0)
        {
          operator delete(v129);
        }

        goto LABEL_45;
      }
    }

    else if ((v131 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    operator delete(v129);
    if ((*(v5 + 448) & 1) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_36;
  }

  if (*(v5 + 448) == 1)
  {
    operator new();
  }

  operations_research::glop::LPSolver::ResizeSolution(v5, *(a2 + 6), -1431655765 * ((*(a2 + 1) - *a2) >> 4));
  LOBYTE(v7) = 9;
LABEL_186:
  v126 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_23CBA9DC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::glop::ProblemSolution::~ProblemSolution(operations_research::glop::ProblemSolution *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    *(this + 8) = v3;
    operator delete(v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    *(this + 5) = v4;
    operator delete(v4);
  }

  v5 = *(this + 1);
  if (v5)
  {
    *(this + 2) = v5;
    operator delete(v5);
  }
}

BOOL operations_research::glop::LPSolver::IsProblemSolutionConsistent(operations_research::glop::LPSolver *this, const operations_research::glop::LinearProgram *a2, const operations_research::glop::ProblemSolution *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 4);
  v4 = *(a3 + 7);
  v5 = (*(a3 + 16) - v4);
  if (v5 != v3)
  {
    return 0;
  }

  v6 = *(a2 + 6);
  v7 = *(a3 + 10);
  if (v6 != *(a3 + 22) - v7)
  {
    return 0;
  }

  v8 = *(a3 + 1);
  if (v5 != ((*(a3 + 2) - v8) >> 3))
  {
    return 0;
  }

  v9 = *(a3 + 4);
  if (v6 != ((*(a3 + 5) - v9) >> 3))
  {
    return 0;
  }

  v10 = *a3;
  result = 1;
  if (v10 <= 8 && ((1 << v10) & 0x181) != 0)
  {
    if (v3 >= 1)
    {
      v12 = 0;
      v13 = 0;
      v14 = v3 & 0x7FFFFFFF;
      while (1)
      {
        v15 = *(v8 + 8 * v12);
        v16 = *(*(a2 + 20) + 8 * v12);
        v17 = *(*(a2 + 23) + 8 * v12);
        v18 = *(v4 + v12);
        if (v18 <= 1)
        {
          if (*(v4 + v12))
          {
            if (v18 == 1 && v15 != v17 && v15 != v16)
            {
              return 0;
            }
          }

          else
          {
            ++v13;
          }
        }

        else
        {
          switch(v18)
          {
            case 2u:
              if (v15 != v16 || v16 == v17)
              {
                return 0;
              }

              break;
            case 3u:
              v23 = fabs(v17) == INFINITY;
              if (fabs(v15) != INFINITY && !v23)
              {
                if (vabdd_f64(v15, v17) > 0.0000001 || v16 == v17)
                {
LABEL_52:
                  return 0;
                }
              }

              else if (v15 != v17 || v16 == v17)
              {
                goto LABEL_52;
              }

              break;
            case 4u:
              v19 = v16 == -INFINITY && v17 == INFINITY;
              if (!v19 || v15 != 0.0)
              {
                return 0;
              }

              break;
          }
        }

        if (v14 == ++v12)
        {
          goto LABEL_54;
        }
      }
    }

    v13 = 0;
LABEL_54:
    if (v6 >= 1)
    {
      for (i = 0; v6 != i; ++i)
      {
        v28 = *(v9 + 8 * i);
        v29 = *(*(a2 + 8) + 8 * i);
        v30 = *(*(a2 + 11) + 8 * i);
        v31 = *(v7 + i);
        if (v31 <= 1)
        {
          if (*(v7 + i))
          {
            if (v31 == 1 && v30 - v29 > 1.0e-12)
            {
              return 0;
            }
          }

          else
          {
            if (v28 != 0.0)
            {
              v43 = i;
              v44 = v13;
              if (dword_2810BFFF8 >= 1)
              {
                v40 = v28;
                if (absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&_MergedGlobals_13, dword_2810BFFF8))
                {
                  absl::lts_20240722::log_internal::LogMessage::LogMessage(v42, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/lp_solver.cc", 768);
                  v33 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v42, 1);
                  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v33, "Constraint ", 0xBuLL);
                  v34 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,0>(v33, &v43);
                  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v34, " is BASIC, but its dual value is ", 0x21uLL);
                  v45 = v40;
                  v35 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v34, &v45);
                  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v35, " instead of 0.", 0xEuLL);
                  goto LABEL_91;
                }
              }

              return 0;
            }

            ++v13;
          }
        }

        else
        {
          switch(v31)
          {
            case 2u:
              if (v29 == -INFINITY)
              {
                return 0;
              }

              break;
            case 3u:
              if (v30 == INFINITY)
              {
                return 0;
              }

              break;
            case 4u:
              if (v28 != 0.0)
              {
                v43 = i;
                v44 = v13;
                if (dword_2810C0010 >= 1)
                {
                  v41 = v28;
                  if (absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C0008, dword_2810C0010))
                  {
                    absl::lts_20240722::log_internal::LogMessage::LogMessage(v42, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/lp_solver.cc", 797);
                    v36 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v42, 1);
                    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v36, "Constraint ", 0xBuLL);
                    v37 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,0>(v36, &v43);
                    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v37, " is FREE, but its dual value is ", 0x20uLL);
                    v45 = v41;
                    v38 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v37, &v45);
                    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v38, " instead of 0.", 0xEuLL);
                    goto LABEL_91;
                  }
                }

                return 0;
              }

              if (v29 != -INFINITY || v30 != INFINITY)
              {
                return 0;
              }

              break;
          }
        }
      }
    }

    v44 = v13;
    if (v13 == v6)
    {
      return 1;
    }

    else
    {
      if (dword_2810C0028 < 1)
      {
        return 0;
      }

      result = absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C0020, dword_2810C0028);
      if (result)
      {
        absl::lts_20240722::log_internal::LogMessage::LogMessage(v42, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/lp_solver.cc", 812);
        v39 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v42, 1);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v39, "Wrong number of basic variables: ", 0x21uLL);
        absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,0>(v39, &v44);
LABEL_91:
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(v42);
        return 0;
      }
    }
  }

  return result;
}

void sub_23CBAA3C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CBAA3DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CBAA3F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void operations_research::glop::LPSolver::ComputeReducedCosts(operations_research::glop::LPSolver *this, const operations_research::glop::LinearProgram *a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 4);
  v5 = (this + 728);
  v19 = 0;
  v6 = *(this + 91);
  v7 = (*(this + 92) - v6) >> 3;
  if (v4 <= v7)
  {
    if (v4 < v7)
    {
      *(this + 92) = v6 + 8 * v4;
    }
  }

  else
  {
    std::vector<double>::__append(this + 728, v4 - v7, &v19);
  }

  if (v4 >= 1)
  {
    v8 = 0;
    v9 = v4 & 0x7FFFFFFF;
    do
    {
      v11 = *(*(a2 + 17) + 8 * v8);
      SparseColumn = operations_research::glop::LinearProgram::GetSparseColumn(a2, v8);
      v13 = SparseColumn[1];
      if (v13 < 1)
      {
        v10 = 0.0;
      }

      else
      {
        v14 = SparseColumn[3];
        v15 = SparseColumn[4];
        v10 = 0.0;
        do
        {
          v16 = *v14++;
          v17 = *(*(this + 73) + 8 * v16);
          v18 = *v15++;
          v10 = v10 + v17 * v18;
          --v13;
        }

        while (v13);
      }

      *(*v5 + 8 * v8++) = v11 - v10;
    }

    while (v8 != v9);
  }
}

double operations_research::glop::LPSolver::ComputeDualObjective(operations_research::glop::LPSolver *this, const operations_research::glop::LinearProgram *a2)
{
  v2 = *(a2 + 6);
  v3 = -1.0;
  if (!*(a2 + 408))
  {
    v3 = 1.0;
  }

  if (v2 >= 1)
  {
    v4 = *(a2 + 8);
    v5 = *(a2 + 11);
    v6 = *(this + 73);
    v7 = 0.0;
    v8 = 0.0;
    while (1)
    {
      v9 = *v4;
      v10 = *v6;
      v11 = v3 * *v6;
      if (v11 <= 0.0 || v9 == -INFINITY)
      {
        v13 = *v5;
        if (v11 >= 0.0 || v13 == INFINITY)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v15 = v8 + v9 * v10;
        v16 = v7 + v15;
        v8 = v15 + v7 - (v7 + v15);
        v7 = v16;
        v13 = *v5;
        if (v11 >= 0.0 || v13 == INFINITY)
        {
          goto LABEL_5;
        }
      }

      v18 = v13 * v10 + v8;
      v19 = v18 + v7;
      v8 = v18 + v7 - (v18 + v7);
      v7 = v19;
LABEL_5:
      ++v6;
      ++v5;
      ++v4;
      if (!--v2)
      {
        goto LABEL_22;
      }
    }
  }

  v8 = 0.0;
  v7 = 0.0;
LABEL_22:
  v20 = -1431655765 * ((*(a2 + 1) - *a2) >> 4);
  if (v20 < 1)
  {
    return v7;
  }

  v21 = *(a2 + 23);
  v22 = *(this + 91);
  v23 = *(this + 76);
  v24 = v20 & 0x7FFFFFFF;
  v25 = *(a2 + 20);
  do
  {
    v29 = *v21;
    v30 = v3 * *v22;
    v32 = *v23++;
    v31 = v32;
    if (v32 == 2 && v30 > 0.0)
    {
      v26 = v30 * *v25;
    }

    else if (v31 == 3 && v30 < 0.0)
    {
      v26 = v29 * v30;
    }

    else
    {
      v26 = v29 * v30;
      if (v31 != 1)
      {
        v26 = 0.0;
      }
    }

    v27 = v8 + v3 * v26;
    result = v7 + v27;
    ++v22;
    v8 = v27 + v7 - (v7 + v27);
    ++v21;
    ++v25;
    v7 = result;
    --v24;
  }

  while (v24);
  return result;
}

void operations_research::glop::LPSolver::MovePrimalValuesWithinBounds(operations_research::glop::LPSolver *this, const operations_research::glop::LinearProgram *a2)
{
  v19[6] = *MEMORY[0x277D85DE8];
  v3 = -1431655765 * ((*(a2 + 1) - *a2) >> 4);
  if (v3 < 1)
  {
    v7 = 0.0;
    if ((*(this + 448) & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v4 = *(a2 + 20);
  v5 = *(a2 + 23);
  v6 = v3 & 0x7FFFFFFF;
  v7 = 0.0;
  v8 = *(this + 70);
  do
  {
    v9 = *v4++;
    v10 = v9;
    v11 = *v5++;
    v12 = v11;
    v13 = *v8;
    v14 = *v8 - v11;
    if (v7 < v14)
    {
      v7 = v14;
    }

    if (v7 < v10 - v13)
    {
      v7 = v10 - v13;
    }

    if (v12 >= v13)
    {
      v12 = *v8;
    }

    if (v12 >= v10)
    {
      v10 = v12;
    }

    *v8++ = v10;
    --v6;
  }

  while (v6);
  if (*(this + 448))
  {
LABEL_15:
    v19[0] = "Max. primal values move = ";
    v19[1] = 26;
    v17[0] = v18;
    v17[1] = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v18, v7, a2);
    absl::lts_20240722::StrCat(v19, v17, &__p);
    operations_research::SolverLogger::LogInfo(this + 448, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/lp_solver.cc", 566, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

LABEL_17:
  v15 = *MEMORY[0x277D85DE8];
}

void sub_23CBAA7F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::glop::LPSolver::MoveDualValuesWithinBounds(operations_research::glop::LPSolver *this, const operations_research::glop::LinearProgram *a2)
{
  v14[6] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 6);
  v4 = -1.0;
  if (!*(a2 + 408))
  {
    v4 = 1.0;
  }

  if (v3 >= 1)
  {
    v5 = *(a2 + 8);
    v6 = *(this + 73);
    v7 = *(a2 + 11);
    v8 = 0.0;
    while (1)
    {
      v9 = v4 * *v6;
      if (*v5 == -INFINITY && v9 > 0.0)
      {
        goto LABEL_6;
      }

      if (*v7 == INFINITY && v9 < 0.0)
      {
        break;
      }

LABEL_9:
      *v6++ = v4 * v9;
      ++v7;
      ++v5;
      if (!--v3)
      {
        goto LABEL_16;
      }
    }

    v9 = -v9;
LABEL_6:
    if (v8 < v9)
    {
      v8 = v9;
    }

    v9 = 0.0;
    goto LABEL_9;
  }

  v8 = 0.0;
LABEL_16:
  if (*(this + 448))
  {
    v14[0] = "Max. dual values move = ";
    v14[1] = 24;
    v12[0] = v13;
    v12[1] = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v13, v8, a2);
    absl::lts_20240722::StrCat(v14, v12, &__p);
    operations_research::SolverLogger::LogInfo(this + 448, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/lp_solver.cc", 590, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_23CBAA978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double operations_research::glop::LPSolver::ComputeMaxRhsPerturbationToEnforceOptimality(operations_research::glop::LPSolver *this, const operations_research::glop::LinearProgram *a2, BOOL *a3)
{
  v26[6] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 6);
  if (v4 < 1)
  {
    v10 = 0.0;
    if ((*(this + 448) & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v5 = *(this + 118);
  v6 = *(a2 + 8);
  v7 = *(a2 + 11);
  v8 = *(this + 94);
  v9 = *(this + 79);
  v10 = 0.0;
  v11 = *a3;
  do
  {
    v16 = *v6;
    v17 = *v8;
    v19 = *v9++;
    v18 = v19;
    if (v19 == 2 || v17 < v16)
    {
      v14 = vabdd_f64(v17, v16);
      v15 = v5 * fmax(fabs(v16), 1.0);
    }

    else
    {
      v12 = *v7;
      v13 = v18 != 3 && v17 <= v12;
      v14 = vabdd_f64(v17, v12);
      v15 = v5 * fmax(fabs(v12), 1.0);
      if (v13)
      {
        v14 = 0.0;
        v15 = 0.0;
      }
    }

    if (v10 < v14)
    {
      v10 = v14;
    }

    v11 |= v14 > v15;
    ++v8;
    ++v7;
    ++v6;
    --v4;
  }

  while (v4);
  *a3 = v11;
  if (*(this + 448))
  {
LABEL_20:
    v26[0] = "Max. rhs perturbation = ";
    v26[1] = 24;
    v24[0] = v25;
    v24[1] = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v25, v10, a2);
    absl::lts_20240722::StrCat(v26, v24, &__p);
    operations_research::SolverLogger::LogInfo(this + 448, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/lp_solver.cc", 874, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

LABEL_22:
  v21 = *MEMORY[0x277D85DE8];
  return v10;
}

void sub_23CBAAB28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double operations_research::glop::LPSolver::ComputeMaxCostPerturbationToEnforceOptimality(operations_research::glop::LPSolver *this, const operations_research::glop::LinearProgram *a2, BOOL *a3)
{
  v24[6] = *MEMORY[0x277D85DE8];
  v4 = -1431655765 * ((*(a2 + 1) - *a2) >> 4);
  if (v4 < 1)
  {
    v10 = 0.0;
  }

  else
  {
    v5 = *(this + 118);
    v6 = *(this + 91);
    v7 = *(this + 76);
    v8 = v4 & 0x7FFFFFFF;
    v9 = *(a2 + 17);
    v10 = 0.0;
    if (*(a2 + 408))
    {
      do
      {
        v12 = *v6;
        v14 = *v7++;
        v13 = v14;
        if ((v14 & 0xFFFFFFFB) == 0 || v13 == 3 && v12 < 0.0 || v13 == 2 && v12 > 0.0)
        {
          v11 = fabs(v12);
          if (v10 < v11)
          {
            v10 = v11;
          }

          *a3 |= v11 > v5 * fmax(fabs(*v9), 1.0);
        }

        ++v9;
        ++v6;
        --v8;
      }

      while (v8);
    }

    else
    {
      do
      {
        v16 = *v6;
        v18 = *v7++;
        v17 = v18;
        if ((v18 & 0xFFFFFFFB) == 0 || v17 == 3 && v16 > 0.0 || v17 == 2 && v16 < 0.0)
        {
          v15 = fabs(v16);
          if (v10 < v15)
          {
            v10 = v15;
          }

          *a3 |= v15 > v5 * fmax(fabs(*v9), 1.0);
        }

        ++v9;
        ++v6;
        --v8;
      }

      while (v8);
    }
  }

  if (*(this + 448))
  {
    v24[0] = "Max. cost perturbation = ";
    v24[1] = 25;
    v22[0] = v23;
    v22[1] = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v23, v10, a2);
    absl::lts_20240722::StrCat(v24, v22, &__p);
    operations_research::SolverLogger::LogInfo(this + 448, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/lp_solver.cc", 844, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v10;
}

void sub_23CBAAD4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::glop::LPSolver::ComputeActivityInfeasibility(operations_research::glop::LPSolver *this, const operations_research::glop::LinearProgram *a2, BOOL *a3)
{
  v3 = *(a2 + 6);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = *(this + 118);
    v7 = 0.0;
    do
    {
      v8 = *(*(this + 94) + 8 * v4);
      v9 = *(*(a2 + 8) + 8 * v4);
      v10 = *(*(a2 + 11) + 8 * v4);
      if (v9 == v10)
      {
        v11 = vabdd_f64(v8, v10);
        if (v11 > v6 * fmax(fabs(v10), 1.0))
        {
          if (dword_2810C0040 >= 2)
          {
            v37 = a2;
            v40 = this;
            v12 = v7;
            v34 = a3;
            IsEnabled2 = absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&off_2810C0038, dword_2810C0040);
            a3 = v34;
            a2 = v37;
            v7 = v12;
            v14 = IsEnabled2;
            this = v40;
            if (v14)
            {
              absl::lts_20240722::log_internal::LogMessage::LogMessage(v43, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/lp_solver.cc", 1049);
              v22 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v43, 2);
              absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v22, "Row ", 4uLL);
              LODWORD(v44) = v4;
              v23 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v22, &v44);
              absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v23, " has activity ", 0xEuLL);
              v44 = v8;
              v24 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v23, &v44);
              absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v24, " which is different from ", 0x19uLL);
              v44 = v10;
              v25 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v24, &v44);
              absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v25, " by ", 4uLL);
              v44 = v8 - v10;
              absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v25, &v44);
              absl::lts_20240722::log_internal::LogMessage::~LogMessage(v43);
              v7 = v12;
              a3 = v34;
              a2 = v37;
              this = v40;
            }
          }

          ++v5;
        }

        if (v7 < v11)
        {
          v7 = v11;
        }
      }

      else
      {
        if (v8 > v10)
        {
          if (v8 - v10 > v6 * fmax(fabs(v10), 1.0))
          {
            if (dword_2810C0058 >= 2)
            {
              v38 = a2;
              v41 = this;
              v15 = v7;
              v35 = a3;
              v16 = absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&off_2810C0050, dword_2810C0058);
              a3 = v35;
              a2 = v38;
              v7 = v15;
              v17 = v16;
              this = v41;
              if (v17)
              {
                absl::lts_20240722::log_internal::LogMessage::LogMessage(v43, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/lp_solver.cc", 1060);
                v26 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v43, 2);
                absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v26, "Row ", 4uLL);
                LODWORD(v44) = v4;
                v27 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v26, &v44);
                absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v27, " has activity ", 0xEuLL);
                v44 = v8;
                v28 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v27, &v44);
                absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v28, ", exceeding its upper bound ", 0x1CuLL);
                v44 = v10;
                v29 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v28, &v44);
                absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v29, " by ", 4uLL);
                v44 = v8 - v10;
                absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v29, &v44);
                absl::lts_20240722::log_internal::LogMessage::~LogMessage(v43);
                v7 = v15;
                a3 = v35;
                a2 = v38;
                this = v41;
              }
            }

            ++v5;
          }

          if (v7 < v8 - v10)
          {
            v7 = v8 - v10;
          }
        }

        if (v8 < v9)
        {
          if (v9 - v8 > v6 * fmax(fabs(v9), 1.0))
          {
            if (dword_2810C0070 >= 2)
            {
              v39 = a2;
              v42 = this;
              v18 = v7;
              v36 = a3;
              v19 = absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&off_2810C0068, dword_2810C0070);
              a3 = v36;
              a2 = v39;
              v7 = v18;
              v20 = v19;
              this = v42;
              if (v20)
              {
                absl::lts_20240722::log_internal::LogMessage::LogMessage(v43, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/lp_solver.cc", 1070);
                v30 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v43, 2);
                absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v30, "Row ", 4uLL);
                LODWORD(v44) = v4;
                v31 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v30, &v44);
                absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v31, " has activity ", 0xEuLL);
                v44 = v8;
                v32 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v31, &v44);
                absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v32, ", below its lower bound ", 0x18uLL);
                v44 = v9;
                v33 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v32, &v44);
                absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v33, " by ", 4uLL);
                v44 = v9 - v8;
                absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v33, &v44);
                absl::lts_20240722::log_internal::LogMessage::~LogMessage(v43);
                v7 = v18;
                a3 = v36;
                a2 = v39;
                this = v42;
              }
            }

            ++v5;
          }

          if (v7 < v9 - v8)
          {
            v7 = v9 - v8;
          }
        }
      }

      ++v4;
    }

    while (v3 != v4);
    if (v5 > 0)
    {
      *a3 = 1;
      if (dword_2810C0088 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C0080, dword_2810C0088))
      {
        absl::lts_20240722::log_internal::LogMessage::LogMessage(v43, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/lp_solver.cc", 1080);
        v21 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v43, 1);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v21, "Number of infeasible rows = ", 0x1CuLL);
        LODWORD(v44) = v5;
        absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v21, &v44);
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(v43);
      }
    }
  }
}

void sub_23CBAB2C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CBAB2DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CBAB2F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CBAB304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t operations_research::glop::LPSolver::ComputeReducedCostInfeasibility(uint64_t this, const operations_research::glop::LinearProgram *a2, BOOL *a3)
{
  v3 = -1431655765 * ((*(a2 + 1) - *a2) >> 4);
  if (v3 >= 1)
  {
    v4 = *(this + 944);
    v5 = *(this + 728);
    v6 = *(a2 + 20);
    v7 = *(a2 + 23);
    v8 = v3 & 0x7FFFFFFF;
    v9 = *(a2 + 17);
    v10 = 0.0;
    if (*(a2 + 408))
    {
      do
      {
        v11 = *v5;
        v12 = *v7;
        v13 = v4 * fmax(fabs(*v9), 1.0);
        if (*v6 == -INFINITY)
        {
          *a3 |= v13 < -v11;
          if (v10 < -v11)
          {
            v10 = -v11;
          }
        }

        if (v12 == INFINITY)
        {
          *a3 |= v13 < v11;
          if (v10 < v11)
          {
            v10 = v11;
          }
        }

        ++v9;
        ++v7;
        ++v6;
        ++v5;
        --v8;
      }

      while (v8);
    }

    else
    {
      do
      {
        v14 = *v5;
        v15 = *v7;
        v16 = v4 * fmax(fabs(*v9), 1.0);
        if (*v6 == -INFINITY)
        {
          *a3 |= v14 > v16;
          if (v10 < v14)
          {
            v10 = v14;
          }
        }

        if (v15 == INFINITY)
        {
          v17 = -v14;
          *a3 |= v16 < v17;
          if (v10 < v17)
          {
            v10 = v17;
          }
        }

        ++v9;
        ++v7;
        ++v6;
        ++v5;
        --v8;
      }

      while (v8);
    }
  }

  return this;
}

uint64_t operations_research::glop::LPSolver::IsOptimalSolutionOnFacet(operations_research::glop::LPSolver *this, const operations_research::glop::LinearProgram *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 4);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = v2 & 0x7FFFFFFF;
    do
    {
      if (*(*(this + 76) + v3) != 1)
      {
        v5 = fabs(*(*(this + 91) + 8 * v3));
        if (v5 != INFINITY && v5 <= 0.000000001)
        {
          v6 = *(*(a2 + 20) + 8 * v3);
          v7 = *(*(a2 + 23) + 8 * v3);
          v8 = *(*(this + 70) + 8 * v3);
          v9 = fabs(v8);
          if (fabs(v6) != INFINITY && v9 != INFINITY)
          {
            if (vabdd_f64(v8, v6) <= 0.0000001)
            {
              return 1;
            }
          }

          else if (v8 == v6)
          {
            return 1;
          }

          if (fabs(v7) != INFINITY && v9 != INFINITY)
          {
            if (vabdd_f64(v8, v7) <= 0.0000001)
            {
              return 1;
            }
          }

          else if (v8 == v7)
          {
            return 1;
          }
        }
      }

      ++v3;
    }

    while (v4 != v3);
  }

  v12 = *(a2 + 6);
  if (v12 >= 1)
  {
    for (i = 0; v12 != i; ++i)
    {
      if (*(*(this + 79) + i) != 1)
      {
        v14 = fabs(*(*(this + 73) + 8 * i));
        if (v14 != INFINITY && v14 <= 0.000000001)
        {
          v15 = *(*(a2 + 8) + 8 * i);
          v16 = *(*(a2 + 11) + 8 * i);
          v17 = *(*(this + 94) + 8 * i);
          v18 = fabs(v17);
          if (fabs(v15) != INFINITY && v18 != INFINITY)
          {
            if (vabdd_f64(v17, v15) <= 0.0000001)
            {
              return 1;
            }
          }

          else if (v17 == v15)
          {
            return 1;
          }

          if (fabs(v16) != INFINITY && v18 != INFINITY)
          {
            if (vabdd_f64(v17, v16) <= 0.0000001)
            {
              return 1;
            }
          }

          else if (v17 == v16)
          {
            return 1;
          }
        }
      }
    }
  }

  return 0;
}

void operations_research::glop::anonymous namespace::LogVariableStatusError(unsigned int a1, _BYTE *a2, double a3, double a4, double a5)
{
  v17 = a1;
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v16, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/lp_solver.cc", 677);
    v9 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v16, 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v9, "Variable ", 9uLL);
    v10 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,0>(v9, &v17);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v10, " status is ", 0xBuLL);
    operations_research::glop::GetVariableStatusString(a2, v15);
    v11 = absl::lts_20240722::log_internal::LogMessage::operator<<(v10, v15);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v11, " but its value is ", 0x12uLL);
    v18 = a3;
    v12 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v11, &v18);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v12, " and its bounds are [", 0x15uLL);
    v18 = a4;
    v13 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v12, &v18);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v13, ", ", 2uLL);
    v18 = a5;
    v14 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v13, &v18);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v14, "].", 2uLL);
    operations_research::sat::BruteForceOrthogonalPacking(v15, v16);
  }
}

void sub_23CBAB7FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CBAB810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CBAB824(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  absl::lts_20240722::log_internal::LogMessage::~LogMessage(&a16);
  _Unwind_Resume(a1);
}

void operations_research::glop::anonymous namespace::LogConstraintStatusError(unsigned int a1, _BYTE *a2, double a3, double a4)
{
  v14 = a1;
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v13, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/lp_solver.cc", 684);
    v7 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v13, 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "Constraint ", 0xBuLL);
    v8 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,0>(v7, &v14);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v8, " status is ", 0xBuLL);
    operations_research::glop::GetConstraintStatusString(a2, v12);
    v9 = absl::lts_20240722::log_internal::LogMessage::operator<<(v8, v12);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v9, " but its bounds are [", 0x15uLL);
    v15 = a3;
    v10 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v9, &v15);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v10, ", ", 2uLL);
    v15 = a4;
    v11 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v10, &v15);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v11, "].", 2uLL);
    operations_research::sat::BruteForceOrthogonalPacking(v12, v13);
  }
}

void sub_23CBAB98C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CBAB9A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CBAB9B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  absl::lts_20240722::log_internal::LogMessage::~LogMessage(&a16);
  _Unwind_Resume(a1);
}

void *std::vector<std::unique_ptr<operations_research::glop::Preprocessor>>::~vector[abi:ne200100](void *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t operations_research::glop::ProblemSolution::ProblemSolution(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  if (a3 << 32)
  {
    if (!(a3 >> 61))
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  if (a2 << 32)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 72) = 0;
  if (a3 << 32)
  {
    operator new();
  }

  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  return result;
}

void sub_23CBABBF4(_Unwind_Exception *exception_object)
{
  v7 = *v5;
  if (*v5)
  {
    v1[11] = v7;
    operator delete(v7);
    v8 = *v2;
    if (!*v2)
    {
LABEL_3:
      v9 = *v4;
      if (!*v4)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v8 = *v2;
    if (!*v2)
    {
      goto LABEL_3;
    }
  }

  v1[8] = v8;
  operator delete(v8);
  v9 = *v4;
  if (!*v4)
  {
LABEL_4:
    v10 = *v3;
    if (!*v3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_9:
  v1[5] = v9;
  operator delete(v9);
  v10 = *v3;
  if (!*v3)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

LABEL_5:
  v1[2] = v10;
  operator delete(v10);
  goto LABEL_6;
}

void sub_23CBABC7C()
{
  if (!*v0)
  {
    JUMPOUT(0x23CBABC20);
  }

  JUMPOUT(0x23CBABC18);
}

void operations_research::glop::MainLpPreprocessor::~MainLpPreprocessor(operations_research::glop::MainLpPreprocessor *this)
{
  *this = &unk_284F41520;
  v2 = *(this + 18);
  if (v2)
  {
    v3 = *(this + 19);
    v4 = *(this + 18);
    if (v3 != v2)
    {
      do
      {
        if (*(v3 - 1) < 0)
        {
          operator delete(*(v3 - 24));
        }

        v3 -= 40;
      }

      while (v3 != v2);
      v4 = *(this + 18);
    }

    *(this + 19) = v2;
    operator delete(v4);
  }

  v5 = *(this + 10);
  if (v5)
  {
    v6 = *(this + 11);
    v7 = *(this + 10);
    if (v6 != v5)
    {
      v8 = v6 - 32;
      do
      {
        v9 = *(v6 - 8);
        v6 -= 32;
        if (v6 == v9)
        {
          (*(*v9 + 32))(v9);
        }

        else if (v9)
        {
          (*(*v9 + 40))(v9);
        }

        v8 -= 32;
      }

      while (v6 != v5);
      v7 = *(this + 10);
    }

    *(this + 11) = v5;
    operator delete(v7);
  }

  v10 = *(this + 6);
  if (v10)
  {
    v11 = *(this + 7);
    v12 = *(this + 6);
    if (v11 != v10)
    {
      do
      {
        v14 = *--v11;
        v13 = v14;
        *v11 = 0;
        if (v14)
        {
          (*(*v13 + 8))(v13);
        }
      }

      while (v11 != v10);
      v12 = *(this + 6);
    }

    *(this + 7) = v10;
    operator delete(v12);
  }

  operations_research::glop::Preprocessor::~Preprocessor(this);
}

{
  operations_research::glop::MainLpPreprocessor::~MainLpPreprocessor(this);

  JUMPOUT(0x23EED9460);
}

char *std::vector<operations_research::glop::VariableStatus>::__assign_with_size[abi:ne200100]<operations_research::glop::VariableStatus*,operations_research::glop::VariableStatus*>(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (v6 - result < a4)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v9 = a1[1];
  v10 = v9 - result;
  if (v9 - result >= a4)
  {
    v13 = a3 - a2;
    if (v13)
    {
      v14 = result;
      memmove(result, a2, v13);
      result = v14;
    }

    a1[1] = &result[v13];
  }

  else
  {
    v11 = &a2[v10];
    if (v9 != result)
    {
      result = memmove(result, a2, v10);
      v9 = a1[1];
    }

    v12 = a3 - v11;
    if (v12)
    {
      result = memmove(v9, v11, v12);
    }

    a1[1] = &v9[v12];
  }

  return result;
}

operations_research::glop::LuFactorization *operations_research::glop::LuFactorization::LuFactorization(operations_research::glop::LuFactorization *this)
{
  *this = 1;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 100) = 0u;
  *(this + 116) = 1;
  *(this + 30) = 0;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 102) = 0;
  *(this + 184) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 412) = 1;
  *(this + 104) = 0;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 33) = 0u;
  *(this + 34) = 0u;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  *(this + 37) = 0u;
  *(this + 38) = 0u;
  *(this + 39) = 0u;
  *(this + 40) = 0u;
  *(this + 41) = 0u;
  *(this + 42) = 0u;
  *(this + 43) = 0u;
  *(this + 176) = 0;
  *(this + 708) = 1;
  *(this + 178) = 0;
  *(this + 45) = 0u;
  *(this + 46) = 0u;
  *(this + 47) = 0u;
  *(this + 250) = 0;
  *(this + 968) = 0u;
  *(this + 984) = 0u;
  *(this + 936) = 0u;
  *(this + 952) = 0u;
  *(this + 904) = 0u;
  *(this + 920) = 0u;
  *(this + 872) = 0u;
  *(this + 888) = 0u;
  *(this + 840) = 0u;
  *(this + 856) = 0u;
  *(this + 808) = 0u;
  *(this + 824) = 0u;
  *(this + 776) = 0u;
  *(this + 792) = 0u;
  *(this + 1004) = 1;
  *(this + 252) = 0;
  *(this + 1032) = 0u;
  *(this + 1048) = 0u;
  *(this + 1016) = 0u;
  v2 = this + 1408;
  *(this + 1337) = 0u;
  *(this + 83) = 0u;
  *(this + 82) = 0u;
  *(this + 81) = 0u;
  *(this + 80) = 0u;
  *(this + 79) = 0u;
  *(this + 78) = 0u;
  *(this + 77) = 0u;
  *(this + 76) = 0u;
  *(this + 75) = 0u;
  *(this + 74) = 0u;
  *(this + 73) = 0u;
  *(this + 72) = 0u;
  *(this + 71) = 0u;
  *(this + 70) = 0u;
  *(this + 69) = 0u;
  *(this + 68) = 0u;
  *(this + 67) = 0u;
  *(this + 87) = 0u;
  *(this + 86) = 0u;
  *(this + 85) = 0u;
  *(this + 1431) = 15;
  strcpy(this + 1408, "LuFactorization");
  *(this + 358) = 0;
  *(this + 180) = 0;
  *(this + 1448) = 0u;
  *(this + 92) = 0u;
  *(this + 183) = this + 1472;
  operations_research::DistributionStat::DistributionStat(this + 1488, "basis_num_entries", 0x11uLL, this + 1408);
  *(this + 186) = &unk_284F44DF0;
  operations_research::DistributionStat::DistributionStat(this + 1568, "lu_fill_in", 0xAuLL, v2);
  *(this + 196) = &unk_284F44D30;
  operations_research::glop::GlopParameters::GlopParameters(this + 1648, 0);
  operations_research::glop::Markowitz::Markowitz((this + 1976));
  return this;
}

void sub_23CBAC1A4(_Unwind_Exception *a1)
{
  operations_research::glop::GlopParameters::~GlopParameters((v1 + 206));
  operations_research::glop::LuFactorization::Stats::~Stats(v3);
  v5 = v1 + 170;
  v6 = v1[173];
  if (v6)
  {
    v1[174] = v6;
    operator delete(v6);
    v7 = *v5;
    if (!*v5)
    {
LABEL_3:
      v8 = v1[164];
      v1[164] = 0;
      if (!v8)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v7 = *v5;
    if (!*v5)
    {
      goto LABEL_3;
    }
  }

  v1[171] = v7;
  operator delete(v7);
  v8 = v1[164];
  v1[164] = 0;
  if (!v8)
  {
LABEL_4:
    v9 = v1[161];
    if (!v9)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  MEMORY[0x23EED9440](v8, 0x1000C8077774924);
  v9 = v1[161];
  if (!v9)
  {
LABEL_5:
    v10 = v1[158];
    if (!v10)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v1[162] = v9;
  operator delete(v9);
  v10 = v1[158];
  if (!v10)
  {
LABEL_6:
    v11 = v1[155];
    if (!v11)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  v1[159] = v10;
  operator delete(v10);
  v11 = v1[155];
  if (!v11)
  {
LABEL_7:
    v12 = v1[152];
    if (!v12)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  v1[156] = v11;
  operator delete(v11);
  v12 = v1[152];
  if (!v12)
  {
LABEL_8:
    v13 = v1[149];
    if (!v13)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_17:
  v1[153] = v12;
  operator delete(v12);
  v13 = v1[149];
  if (!v13)
  {
LABEL_10:
    operations_research::glop::TriangularMatrix::~TriangularMatrix((v1 + 112));
    operations_research::glop::TriangularMatrix::~TriangularMatrix((v1 + 75));
    operations_research::glop::TriangularMatrix::~TriangularMatrix((v1 + 38));
    operations_research::glop::TriangularMatrix::~TriangularMatrix(v2);
    _Unwind_Resume(a1);
  }

LABEL_9:
  v1[150] = v13;
  operator delete(v13);
  goto LABEL_10;
}

void operations_research::glop::LuFactorization::Stats::~Stats(operations_research::glop::LuFactorization::Stats *this)
{
  *(this + 20) = &unk_284F3A5F8;
  if (*(this + 191) < 0)
  {
    operator delete(*(this + 21));
    *(this + 10) = &unk_284F3A5F8;
    if ((*(this + 111) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = this;

      goto LABEL_5;
    }
  }

  else
  {
    *(this + 10) = &unk_284F3A5F8;
    if ((*(this + 111) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(*(this + 11));
  v2 = this;

LABEL_5:
  operations_research::StatsGroup::~StatsGroup(v2);
}

void operations_research::glop::LuFactorization::Clear(operations_research::glop::LuFactorization *this)
{
  operations_research::glop::TriangularMatrix::Reset(this + 8, 0, 0);
  operations_research::glop::TriangularMatrix::Reset(this + 304, 0, 0);
  operations_research::glop::TriangularMatrix::Reset(this + 600, 0, 0);
  operations_research::glop::TriangularMatrix::Reset(this + 896, 0, 0);
  *this = 1;
  *(this + 150) = *(this + 149);
  *(this + 156) = *(this + 155);
  *(this + 159) = *(this + 158);
  *(this + 153) = *(this + 152);
}

void operations_research::glop::LuFactorization::ComputeFactorization(operations_research::glop::LuFactorization *this@<X0>, const operations_research::glop::CompactSparseMatrixView *a2@<X1>, uint64_t a3@<X8>)
{
  operations_research::glop::TriangularMatrix::Reset(this + 8, 0, 0);
  operations_research::glop::TriangularMatrix::Reset(this + 304, 0, 0);
  operations_research::glop::TriangularMatrix::Reset(this + 600, 0, 0);
  operations_research::glop::TriangularMatrix::Reset(this + 896, 0, 0);
  *this = 1;
  *(this + 150) = *(this + 149);
  *(this + 156) = *(this + 155);
  *(this + 159) = *(this + 158);
  *(this + 153) = *(this + 152);
  if (**a2 == *(a2 + 4))
  {
    operations_research::glop::Markowitz::ComputeLU((this + 8), this + 1976, a2, (this + 1240), (this + 1192), (this + 304), a3);
    if (!*a3)
    {
      if (*(a3 + 31) < 0)
      {
        operator delete(*(a3 + 8));
      }

      v6 = *(this + 150) - *(this + 149);
      v7 = *(this + 152);
      v8 = (*(this + 153) - v7) >> 2;
      if (v6 >> 2 <= v8)
      {
        if (v6 >> 2 < v8)
        {
          *(this + 153) = v7 + v6;
        }
      }

      else
      {
        std::vector<int>::__append((this + 1216), (v6 >> 2) - v8);
      }

      if ((v6 >> 2) >= 1)
      {
        v9 = 0;
        v10 = *(this + 149);
        v11 = *(this + 152);
        do
        {
          *(v11 + 4 * *(v10 + 4 * v9)) = v9;
          ++v9;
        }

        while (((v6 >> 2) & 0x7FFFFFFF) != v9);
      }

      v12 = *(this + 156) - *(this + 155);
      v13 = *(this + 158);
      v14 = (*(this + 159) - v13) >> 2;
      if (v12 >> 2 <= v14)
      {
        if (v12 >> 2 < v14)
        {
          *(this + 159) = v13 + v12;
        }
      }

      else
      {
        std::vector<int>::__append((this + 1264), (v12 >> 2) - v14);
      }

      if ((v12 >> 2) >= 1)
      {
        v15 = 0;
        v16 = *(this + 155);
        v17 = *(this + 158);
        do
        {
          *(v17 + 4 * *(v16 + 4 * v15)) = v15;
          ++v15;
        }

        while (((v12 >> 2) & 0x7FFFFFFF) != v15);
      }

      operations_research::glop::TriangularMatrix::PopulateFromTranspose(this + 75, this + 38);
      operations_research::glop::TriangularMatrix::PopulateFromTranspose(this + 112, this + 1);
      *this = 0;

      operations_research::glop::Status::Status(a3);
    }
  }

  else
  {
    *(&v23.__r_.__value_.__s + 23) = 21;
    strcpy(&v23, "Not a square matrix!!");
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v22, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/lu_factorization.cc", 54);
    operations_research::glop::GetErrorCodeString(1, __p);
    v18 = absl::lts_20240722::log_internal::LogMessage::operator<<(v22, __p);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v18, ": ", 2uLL);
    absl::lts_20240722::log_internal::LogMessage::operator<<(v18, &v23);
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }

    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v22);
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v19, v23.__r_.__value_.__l.__data_, v23.__r_.__value_.__l.__size_);
    }

    else
    {
      v19 = v23;
    }

    operations_research::glop::Status::Status(a3, 1, &v19);
    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }
  }
}

void sub_23CBAC798(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if ((a28 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void operations_research::glop::LuFactorization::ComputeInitialBasis(uint64_t a1@<X0>, int *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v8 = *a3;
  v9 = (a3[1] - *a3) >> 2;
  v23[0] = a2;
  v23[1] = v8;
  v23[2] = v9;
  v10 = (a1 + 1240);
  operations_research::glop::Markowitz::ComputeRowAndColumnPermutation(a1 + 1976, v23, (a1 + 1240), (a1 + 1192), v20);
  if (v22 < 0)
  {
    operator delete(__p);
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    v11 = *a2;
    if (*a2 < 1)
    {
      goto LABEL_9;
    }
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    v11 = *a2;
    if (*a2 < 1)
    {
      goto LABEL_9;
    }
  }

  v12 = 0;
  do
  {
    if (*(*v10 + 4 * v12) == -1)
    {
      v19[0] = v12 + a2[1] - v11;
      std::vector<int>::push_back[abi:ne200100](a4, v19);
      v11 = *a2;
    }

    ++v12;
  }

  while (v12 < v11);
LABEL_9:
  v13 = *(a1 + 1200);
  v14 = *(a1 + 1192);
  v15 = (v13 - v14) >> 2;
  v19[0] = v15;
  v16 = (a3[1] - *a3) >> 2;
  if (v15 != v16)
  {
    absl::lts_20240722::log_internal::MakeCheckOpString<operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_> const&,unsigned long long>(v19, v16, "col_perm_.size() == candidates.size()");
  }

  if (v15 >= 1)
  {
    v17 = 0;
    v18 = 0;
    do
    {
      if (*(v14 + v17) != -1)
      {
        std::vector<int>::push_back[abi:ne200100](a4, (*a3 + v17));
        v13 = *(a1 + 1200);
        v14 = *(a1 + 1192);
      }

      ++v18;
      v17 += 4;
    }

    while (v18 < ((v13 - v14) >> 2));
  }
}

void sub_23CBAC9D4(_Unwind_Exception *a1)
{
  v2 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
  }

  _Unwind_Resume(a1);
}

void operations_research::glop::LuFactorization::RightSolve(uint64_t a1, char **a2)
{
  if ((*a1 & 1) == 0)
  {
    operations_research::glop::ApplyPermutation<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,operations_research::glop::StrictITIVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double>>((a1 + 1240), a2, a1 + 1288);
    operations_research::glop::TriangularMatrix::LowerSolve(a1 + 8, (a1 + 1288));
    operations_research::glop::TriangularMatrix::UpperSolve(a1 + 304, (a1 + 1288));

    operations_research::glop::ApplyPermutation<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,operations_research::glop::StrictITIVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double>>((a1 + 1216), (a1 + 1288), a2);
  }
}

void operations_research::glop::LuFactorization::LeftSolve(int64x2_t *a1, char **a2)
{
  if ((a1->i8[0] & 1) == 0)
  {
    operations_research::glop::ApplyInversePermutation<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,operations_research::glop::StrictITIVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double>>(a1[76].i64, a2, &a1[80].i64[1]);
    operations_research::glop::TriangularMatrix::TransposeUpperSolve(a1 + 19, &a1[80].i64[1], v5);
    operations_research::glop::TriangularMatrix::TransposeLowerSolve(&a1->i64[1], &a1[80].i64[1], v6);

    operations_research::glop::ApplyInversePermutation<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::glop::StrictITIVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double>>(&a1[77].i64[1], &a1[80].i64[1], a2);
  }
}

void operations_research::glop::ApplyInversePermutation<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,operations_research::glop::StrictITIVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double>>(void *a1, char **a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a1[1] - *a1;
    if ((v3 >> 2))
    {
      v4 = a2[1];
      v5 = ((v4 - *a2) >> 3);
      v6 = (*(a3 + 8) - *a3) >> 3;
      v7 = v5 >= v6;
      v8 = v5 - v6;
      if (v8 != 0 && v7)
      {
        v9 = a1;
        v10 = a2;
        v11 = a3;
        std::vector<double>::__append(a3, v8, v4 - 1);
        a1 = v9;
        a2 = v10;
        a3 = v11;
      }

      else if (!v7)
      {
        *(a3 + 8) = *a3 + 8 * v5;
      }

      if ((v3 >> 2) >= 1)
      {
        v15 = *a1;
        v16 = *a2;
        v17 = (v3 >> 2) & 0x7FFFFFFF;
        v18 = *a3;
        do
        {
          v19 = *v15++;
          *v18++ = *&v16[8 * v19];
          --v17;
        }

        while (v17);
      }
    }

    else if (a3 != a2)
    {
      v12 = a2[1];
      v13 = (v12 - *a2) >> 3;
      v14 = *a2;

      std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(a3, v14, v12, v13);
    }
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v20, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/lp_data/permutation.h", 223, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v20, "result", 6uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v20, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v20);
  }
}

void operations_research::glop::ApplyInversePermutation<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::glop::StrictITIVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double>>(void *a1, char **a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a1[1] - *a1;
    if ((v3 & 0x3FFFFFFFCLL) != 0)
    {
      v4 = a2[1];
      v5 = ((v4 - *a2) >> 3);
      v6 = (*(a3 + 8) - *a3) >> 3;
      v7 = v5 >= v6;
      v8 = v5 - v6;
      if (v8 != 0 && v7)
      {
        v9 = a1;
        v10 = a2;
        v11 = a3;
        std::vector<double>::__append(a3, v8, v4 - 1);
        a1 = v9;
        a2 = v10;
        a3 = v11;
      }

      else if (!v7)
      {
        *(a3 + 8) = *a3 + 8 * v5;
      }

      if ((v3 >> 2) >= 1)
      {
        v15 = *a1;
        v16 = *a2;
        v17 = (v3 >> 2) & 0x7FFFFFFF;
        v18 = *a3;
        do
        {
          v19 = *v15++;
          *v18++ = *&v16[8 * v19];
          --v17;
        }

        while (v17);
      }
    }

    else if (a3 != a2)
    {
      v12 = a2[1];
      v13 = (v12 - *a2) >> 3;
      v14 = *a2;

      std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(a3, v14, v12, v13);
    }
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v20, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/lp_data/permutation.h", 223, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v20, "result", 6uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v20, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v20);
  }
}

double operations_research::glop::LuFactorization::RightSolveSquaredNorm(uint64_t a1, unint64_t *a2)
{
  if (*a1 != 1)
  {
    v25[7] = v2;
    v25[8] = v3;
    v7 = a1 + 8;
    v6 = *(a1 + 8);
    *(a1 + 1392) = *(a1 + 1384);
    v25[0] = 0;
    v8 = *(a1 + 1360);
    v9 = (*(a1 + 1368) - v8) >> 3;
    v10 = v6 >= v9;
    v11 = v6 - v9;
    if (v11 != 0 && v10)
    {
      v12 = a2;
      std::vector<double>::__append(a1 + 1360, v11, v25);
      a2 = v12;
    }

    else if (!v10)
    {
      *(a1 + 1368) = v8 + 8 * v6;
    }

    v13 = *a2;
    if (*a2 >= 1)
    {
      v14 = a2[1];
      v15 = a2[2];
      do
      {
        v16 = *v14++;
        v24 = *(*(a1 + 1240) + 4 * v16);
        v17 = *v15++;
        *(*(a1 + 1360) + 8 * v24) = v17;
        std::vector<int>::push_back[abi:ne200100](v7 + 1376, &v24);
        --v13;
      }

      while (v13);
    }

    operations_research::glop::TriangularMatrix::ComputeRowsToConsiderInSortedOrder(v7, (v7 + 1376));
    v18 = (v7 + 1352);
    if (*(a1 + 1384) == *(a1 + 1392))
    {
      operations_research::glop::TriangularMatrix::LowerSolve(v7, v18);
      v19 = a1 + 304;
      if (*(a1 + 1384) != *(a1 + 1392))
      {
LABEL_15:
        operations_research::glop::TriangularMatrix::HyperSparseSolveWithReversedNonZeros(v19, (v7 + 1352), v7 + 1376);
        v20 = *(a1 + 1360);
        v21 = *(a1 + 1384);
        v22 = *(a1 + 1392);
        if (v21 != v22)
        {
          goto LABEL_16;
        }

        return operations_research::glop::SquaredNormAndResetToZero(v20, v6);
      }
    }

    else
    {
      operations_research::glop::TriangularMatrix::HyperSparseSolve(v7, v18, (v7 + 1376));
      operations_research::glop::TriangularMatrix::ComputeRowsToConsiderInSortedOrder((a1 + 304), (v7 + 1376));
      v19 = a1 + 304;
      if (*(a1 + 1384) != *(a1 + 1392))
      {
        goto LABEL_15;
      }
    }

    operations_research::glop::TriangularMatrix::UpperSolve(v19, (v7 + 1352));
    v20 = *(a1 + 1360);
    v21 = *(a1 + 1384);
    v22 = *(a1 + 1392);
    if (v21 != v22)
    {
LABEL_16:
      result = 0.0;
      do
      {
        v23 = *v21++;
        result = result + *(v20 + 8 * v23) * *(v20 + 8 * v23);
        *(v20 + 8 * v23) = 0;
      }

      while (v21 != v22);
      return result;
    }

    return operations_research::glop::SquaredNormAndResetToZero(v20, v6);
  }

  return operations_research::glop::SquaredNorm(a2);
}

double operations_research::glop::LuFactorization::DualEdgeSquaredNorm(uint64_t a1, signed int a2)
{
  result = 1.0;
  if ((*a1 & 1) == 0)
  {
    v4 = *(a1 + 1192);
    if (v4 == *(a1 + 1200))
    {
      v5 = a2;
    }

    else
    {
      v5 = *(v4 + 4 * a2);
    }

    v16 = v5;
    *(a1 + 1392) = *(a1 + 1384);
    v6 = *(a1 + 8);
    v7 = (a1 + 1360);
    v15 = 0;
    v8 = *(a1 + 1360);
    v9 = (*(a1 + 1368) - v8) >> 3;
    if (v6 <= v9)
    {
      if (v6 < v9)
      {
        *(a1 + 1368) = v8 + 8 * v6;
      }
    }

    else
    {
      std::vector<double>::__append(a1 + 1360, v6 - v9, &v15);
      v8 = *v7;
    }

    *(v8 + 8 * v5) = 0x3FF0000000000000;
    std::vector<int>::push_back[abi:ne200100](a1 + 1384, &v16);
    operations_research::glop::TriangularMatrix::ComputeRowsToConsiderInSortedOrder((a1 + 600), (a1 + 1384));
    if (*(a1 + 1384) == *(a1 + 1392))
    {
      operations_research::glop::TriangularMatrix::LowerSolveStartingAt(a1 + 600, v16, (a1 + 1360));
      v10 = a1 + 896;
      if (*(a1 + 1384) != *(a1 + 1392))
      {
LABEL_11:
        operations_research::glop::TriangularMatrix::HyperSparseSolveWithReversedNonZeros(v10, (a1 + 1360), a1 + 1384);
        v11 = *(a1 + 1360);
        v12 = *(a1 + 1384);
        v13 = *(a1 + 1392);
        if (v12 != v13)
        {
          goto LABEL_12;
        }

        return operations_research::glop::SquaredNormAndResetToZero(v11, v6);
      }
    }

    else
    {
      operations_research::glop::TriangularMatrix::HyperSparseSolve(a1 + 600, (a1 + 1360), (a1 + 1384));
      operations_research::glop::TriangularMatrix::ComputeRowsToConsiderInSortedOrder((a1 + 896), (a1 + 1384));
      v10 = a1 + 896;
      if (*(a1 + 1384) != *(a1 + 1392))
      {
        goto LABEL_11;
      }
    }

    operations_research::glop::TriangularMatrix::UpperSolve(v10, (a1 + 1360));
    v11 = *(a1 + 1360);
    v12 = *(a1 + 1384);
    v13 = *(a1 + 1392);
    if (v12 != v13)
    {
LABEL_12:
      result = 0.0;
      do
      {
        v14 = *v12++;
        result = result + *(v11 + 8 * v14) * *(v11 + 8 * v14);
        *(v11 + 8 * v14) = 0;
      }

      while (v12 != v13);
      return result;
    }

    return operations_research::glop::SquaredNormAndResetToZero(v11, v6);
  }

  return result;
}

void operations_research::glop::LuFactorization::RightSolveLWithPermutedInput(uint64_t a1, uint64_t a2, void *a3)
{
  if ((*a1 & 1) == 0)
  {
    operations_research::glop::TriangularMatrix::ComputeRowsToConsiderInSortedOrder((a1 + 8), a3 + 4);
    v5 = a1 + 8;
    if (a3[4] == a3[5])
    {

      operations_research::glop::TriangularMatrix::LowerSolve(v5, a3);
    }

    else
    {

      operations_research::glop::TriangularMatrix::HyperSparseSolve(v5, a3, (a3 + 4));
    }
  }
}

void operations_research::glop::LuFactorization::RightSolveLForColumnView(_BYTE *a1, uint64_t *a2, void *a3)
{
  v4 = (a3 + 4);
  a3[5] = a3[4];
  if (*a1 == 1)
  {
    v5 = *a2;
    if (*a2 >= 1)
    {
      v6 = a2[1];
      v7 = a2[2];
      do
      {
        v8 = *v7++;
        v9 = v8;
        LODWORD(v8) = *v6++;
        *(*a3 + 8 * v8) = v9;
        v10 = v8;
        std::vector<int>::push_back[abi:ne200100](v4, &v10);
        --v5;
      }

      while (v5);
    }
  }

  else
  {

    operations_research::glop::LuFactorization::RightSolveLInternal<operations_research::glop::ColumnView>(a1, a2, a3);
  }
}

void operations_research::glop::LuFactorization::RightSolveLInternal<operations_research::glop::ColumnView>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = (*(a3 + 8) - *a3) >> 3;
  v6 = *a2;
  if (*a2 >= 1)
  {
    v7 = *(a1 + 112);
    v8 = a2[1];
    v9 = a2[2];
    do
    {
      v10 = *v8++;
      v15 = *(*(a1 + 1240) + 4 * v10);
      *(*a3 + 8 * v15) = *v9;
      std::vector<int>::push_back[abi:ne200100](a3 + 32, &v15);
      v11 = v15;
      if (v15 >= v7)
      {
        v12 = *(a1 + 64);
        v13 = *(v12 + (((v15 << 32) + 0x100000000) >> 29));
        v14 = *(v12 + 8 * v15);
        if (v15 >= v5)
        {
          v11 = v5;
        }

        if (v13 != v14)
        {
          LODWORD(v5) = v11;
        }
      }

      ++v9;
      --v6;
    }

    while (v6);
  }

  operations_research::glop::TriangularMatrix::ComputeRowsToConsiderInSortedOrder((a1 + 8), (a3 + 32));
  *(a3 + 24) = 1;
  if (*(a3 + 32) == *(a3 + 40))
  {
    operations_research::glop::TriangularMatrix::LowerSolveStartingAt(a1 + 8, v5, a3);
  }

  else
  {
    operations_research::glop::TriangularMatrix::HyperSparseSolve(a1 + 8, a3, (a3 + 32));
  }
}

void operations_research::glop::LuFactorization::RightSolveLWithNonZeros(operations_research::glop::LuFactorization *this, operations_research::glop::ScatteredColumn *a2)
{
  if ((*this & 1) == 0)
  {
    v4 = *(a2 + 4);
    v5 = *(a2 + 5);
    v6 = (a2 + 32);
    if (v4 == v5)
    {
      v13 = *(a2 + 1) - *a2;
      v14 = *(this + 170);
      *(this + 170) = *a2;
      *a2 = v14;
      v15 = *(this + 171);
      *(this + 171) = *(a2 + 1);
      *(a2 + 1) = v15;
      v16 = *(this + 172);
      *(this + 172) = *(a2 + 2);
      *(a2 + 2) = v16;
      v29 = 0;
      v17 = (v13 >> 3);
      v18 = (*(a2 + 1) - *a2) >> 3;
      if (v17 <= v18)
      {
        if (v17 < v18)
        {
          *(a2 + 1) = *a2 + 8 * v17;
        }
      }

      else
      {
        std::vector<double>::__append(a2, v17 - v18, &v29);
      }

      if ((v13 >> 3) >= 1)
      {
        v26 = *(this + 170);
        v27 = *(this + 155);
        v28 = (v13 >> 3) & 0x7FFFFFFF;
        do
        {
          if (*v26 != 0.0)
          {
            *(*a2 + 8 * *v27) = *v26;
          }

          ++v27;
          ++v26;
          --v28;
        }

        while (v28);
      }

      v29 = 0;
      std::vector<double>::assign(this + 170, (v13 >> 3), &v29);
    }

    else
    {
      v7 = *(this + 170);
      *(this + 170) = *a2;
      *a2 = v7;
      v8 = *(this + 171);
      *(this + 171) = *(a2 + 1);
      *(a2 + 1) = v8;
      v9 = *(this + 172);
      *(this + 172) = *(a2 + 2);
      *(a2 + 2) = v9;
      v10 = *(this + 171) - *(this + 170);
      v29 = 0;
      v11 = (v10 >> 3);
      v12 = (*(a2 + 1) - *a2) >> 3;
      if (v11 <= v12)
      {
        if (v11 < v12)
        {
          *(a2 + 1) = *a2 + 8 * v11;
        }
      }

      else
      {
        std::vector<double>::__append(a2, v11 - v12, &v29);
        v4 = *(a2 + 4);
        v5 = *(a2 + 5);
      }

      if (v4 != v5)
      {
        v19 = *(this + 170);
        v20 = *(this + 155);
        v21 = *a2;
        do
        {
          v22 = *v4;
          v23 = 8 * *v4;
          v24 = *(v19 + v23);
          *(v19 + v23) = 0;
          v25 = *(v20 + 4 * v22);
          *(v21 + 8 * v25) = v24;
          *v4++ = v25;
        }

        while (v4 != v5);
      }

      operations_research::glop::TriangularMatrix::ComputeRowsToConsiderInSortedOrder(this + 2, v6);
      *(a2 + 24) = 1;
      if (*(a2 + 4) != *(a2 + 5))
      {
        operations_research::glop::TriangularMatrix::HyperSparseSolve(this + 8, a2, v6);
        return;
      }
    }

    operations_research::glop::TriangularMatrix::LowerSolve(this + 8, a2);
  }
}

void operations_research::glop::LuFactorization::RightSolveLForScatteredColumn(operations_research::glop::LuFactorization *this, const operations_research::glop::ScatteredColumn *a2, operations_research::glop::ScatteredColumn *a3)
{
  v5 = (a3 + 32);
  *(a3 + 5) = *(a3 + 4);
  if (*this == 1)
  {
    if (a3 == a2)
    {
      *(a3 + 24) = *(a2 + 24);
    }

    else
    {
      std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(a3, *a2, *(a2 + 1), (*(a2 + 1) - *a2) >> 3);
      *(a3 + 24) = *(a2 + 24);
      std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal*,operations_research::sat::Literal*>(v5, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 2);
    }

    std::vector<BOOL>::operator=(a3 + 7, a2 + 56);
  }

  else if (*(a2 + 4) == *(a2 + 5))
  {
    if (a3 == a2)
    {
      *(a3 + 24) = *(a2 + 24);
    }

    else
    {
      std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(a3, *a2, *(a2 + 1), (*(a2 + 1) - *a2) >> 3);
      *(a3 + 24) = *(a2 + 24);
      std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal*,operations_research::sat::Literal*>(v5, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 2);
    }

    std::vector<BOOL>::operator=(a3 + 7, a2 + 56);

    operations_research::glop::LuFactorization::RightSolveLWithNonZeros(this, a3);
  }

  else
  {

    operations_research::glop::LuFactorization::RightSolveLInternal<operations_research::glop::ScatteredColumn>(this, a2, a3);
  }
}

void operations_research::glop::LuFactorization::RightSolveLInternal<operations_research::glop::ScatteredColumn>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = (*(a3 + 8) - *a3) >> 3;
  v6 = a2[4];
  v7 = (a2[5] - v6) >> 2;
  if (v7 >= 1)
  {
    v8 = *(a1 + 112);
    v9 = *a2;
    do
    {
      v10 = *v6++;
      v15 = *(*(a1 + 1240) + 4 * v10);
      *(*a3 + 8 * v15) = *(v9 + 8 * v10);
      std::vector<int>::push_back[abi:ne200100](a3 + 32, &v15);
      v11 = v15;
      if (v15 >= v8)
      {
        v12 = *(a1 + 64);
        v13 = *(v12 + (((v15 << 32) + 0x100000000) >> 29));
        v14 = *(v12 + 8 * v15);
        if (v15 >= v5)
        {
          v11 = v5;
        }

        if (v13 != v14)
        {
          LODWORD(v5) = v11;
        }
      }

      --v7;
    }

    while (v7);
  }

  operations_research::glop::TriangularMatrix::ComputeRowsToConsiderInSortedOrder((a1 + 8), (a3 + 32));
  *(a3 + 24) = 1;
  if (*(a3 + 32) == *(a3 + 40))
  {
    operations_research::glop::TriangularMatrix::LowerSolveStartingAt(a1 + 8, v5, a3);
  }

  else
  {
    operations_research::glop::TriangularMatrix::HyperSparseSolve(a1 + 8, a3, (a3 + 32));
  }
}

void operations_research::glop::LuFactorization::LeftSolveUWithNonZeros(int64x2_t *a1, uint64_t a2)
{
  if (a1[74].i64[1] != a1[75].i64[0])
  {
    operations_research::glop::LuFactorization::LeftSolveUWithNonZeros(&v6);
  }

  if ((a1->i8[0] & 1) == 0)
  {
    operations_research::glop::TriangularMatrix::ComputeRowsToConsiderInSortedOrder(&a1[37].u32[2], (a2 + 32));
    *(a2 + 24) = 1;
    v5 = a1 + 19;
    if (*(a2 + 32) == *(a2 + 40))
    {

      operations_research::glop::TriangularMatrix::TransposeUpperSolve(v5, a2, v4);
    }

    else
    {

      operations_research::glop::TriangularMatrix::TransposeHyperSparseSolve(v5, a2, (a2 + 32));
    }
  }
}

void operations_research::glop::LuFactorization::RightSolveUWithNonZeros(operations_research::glop::LuFactorization *this, operations_research::glop::ScatteredColumn *a2)
{
  if (*(this + 149) != *(this + 150))
  {
    operations_research::glop::LuFactorization::RightSolveUWithNonZeros(&v6);
  }

  if ((*this & 1) == 0)
  {
    operations_research::glop::TriangularMatrix::ComputeRowsToConsiderInSortedOrder(this + 76, a2 + 4);
    *(a2 + 24) = 1;
    v5 = this + 600;
    if (*(a2 + 4) == *(a2 + 5))
    {

      operations_research::glop::TriangularMatrix::TransposeLowerSolve(v5, a2, v4);
    }

    else
    {

      operations_research::glop::TriangularMatrix::TransposeHyperSparseSolveWithReversedNonZeros(v5, a2, a2 + 32);
    }
  }
}

uint64_t operations_research::glop::LuFactorization::LeftSolveLWithNonZeros(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*a1)
  {
    return 0;
  }

  operations_research::glop::TriangularMatrix::ComputeRowsToConsiderInSortedOrder((a1 + 896), (a2 + 32));
  *(a2 + 24) = 1;
  v8 = a1 + 8;
  if (*(a2 + 32) == *(a2 + 40))
  {
    operations_research::glop::TriangularMatrix::TransposeLowerSolve(v8, a2, v7);
    if (a3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    operations_research::glop::TriangularMatrix::TransposeHyperSparseSolveWithReversedNonZeros(v8, a2, a2 + 32);
    if (a3)
    {
LABEL_5:
      v9 = *(a2 + 8) - *a2;
      v11 = a3[4];
      v10 = a3[5];
      if (v11 == v10 || (v9 >> 3) * 0.05 <= ((v10 - v11) >> 2))
      {
        v68 = 0;
        v14 = v9 << 29;
        v15 = (v9 >> 3);
        v16 = *a3;
        v17 = (a3[1] - *a3) >> 3;
        if (v15 <= v17)
        {
          if (v15 < v17)
          {
            a3[1] = &v16[v15];
          }
        }

        else
        {
          std::vector<double>::__append(a3, v15 - v17, &v68);
          v16 = *a3;
        }

        bzero(v16, (v14 >> 29) & 0xFFFFFFFFFFFFFFF8);
        goto LABEL_18;
      }

      v12 = *a3;
      if (&v10[-1].u8[4] == v11)
      {
        v13 = a3[4];
      }

      else
      {
        v58 = ((&v10[-1].u8[4] - v11) >> 2) + 1;
        v13 = (v11 + 4 * (v58 & 0x7FFFFFFFFFFFFFFELL));
        v59 = v58 & 0x7FFFFFFFFFFFFFFELL;
        do
        {
          v60 = *v11++;
          v61 = vshrq_n_s64(vshll_n_s32(v60, 0x20uLL), 0x1DuLL);
          *(v12 + v61.i64[0]) = 0;
          *(v12 + v61.i64[1]) = 0;
          v59 -= 2;
        }

        while (v59);
        if (v58 == (v58 & 0x7FFFFFFFFFFFFFFELL))
        {
LABEL_44:
          v68 = 0;
          v63 = (v9 >> 3);
          v64 = (a3[1] - v12) >> 3;
          if (v63 <= v64)
          {
            if (v63 < v64)
            {
              a3[1] = &v12[v63];
            }
          }

          else
          {
            std::vector<double>::__append(a3, v63 - v64, &v68);
          }

LABEL_18:
          v26 = a3[4];
          a3[5] = v26;
          v27 = *a2;
          *a2 = *a3;
          *a3 = v27;
          v28 = *(a2 + 8);
          *(a2 + 8) = a3[1];
          a3[1] = v28;
          v29 = *(a2 + 16);
          *(a2 + 16) = a3[2];
          a3[2] = v29;
          v30 = *(a2 + 32);
          if (v30 == *(a2 + 40))
          {
            v41 = *(a1 + 1264);
            v42 = *(a1 + 1272) - v41;
            if ((v42 >> 2) >= 1)
            {
              v43 = *a3;
              v44 = (v42 >> 2) & 0x7FFFFFFF;
              do
              {
                if (*v43 != 0.0)
                {
                  *(*a2 + 8 * *v41) = *v43;
                }

                ++v41;
                ++v43;
                --v44;
              }

              while (v44);
            }
          }

          else
          {
            *(a2 + 32) = v26;
            a3[4] = v30;
            v31 = *(a2 + 40);
            *(a2 + 40) = a3[5];
            a3[5] = v31;
            v32 = *(a2 + 48);
            *(a2 + 48) = a3[6];
            a3[6] = v32;
            v33 = a3[5] - a3[4];
            v34 = *(a2 + 32);
            if (*(a2 + 48) - v34 < v33)
            {
              if ((v33 & 0x8000000000000000) == 0)
              {
                v35 = *(a2 + 40) - v34;
                v36 = a3[5] - a3[4];
                operator new();
              }

              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            v37 = a3[4];
            v38 = a3[5];
            while (v37 != v38)
            {
              v39 = *v37++;
              v40 = *(*a3 + 8 * v39);
              LODWORD(v68) = *(*(a1 + 1264) + 4 * v39);
              *(*a2 + 8 * v68) = v40;
              std::vector<int>::push_back[abi:ne200100](a2 + 32, &v68);
            }

            *(a2 + 24) = 0;
          }

          return 1;
        }
      }

      do
      {
        v62 = v13->i32[0];
        v13 = (v13 + 4);
        v12[v62] = 0;
      }

      while (v13 != v10);
      goto LABEL_44;
    }
  }

  v18 = *(a2 + 32);
  v19 = *(a2 + 40);
  if (v18 != v19)
  {
    v20 = *(a1 + 1360);
    *(a1 + 1360) = *a2;
    *a2 = v20;
    v21 = *(a1 + 1368);
    *(a1 + 1368) = *(a2 + 8);
    *(a2 + 8) = v21;
    v22 = *(a1 + 1376);
    *(a1 + 1376) = *(a2 + 16);
    *(a2 + 16) = v22;
    v23 = *(a1 + 1368) - *(a1 + 1360);
    v68 = 0;
    v24 = (v23 >> 3);
    v25 = (*(a2 + 8) - *a2) >> 3;
    if (v24 <= v25)
    {
      if (v24 < v25)
      {
        *(a2 + 8) = *a2 + 8 * v24;
      }
    }

    else
    {
      std::vector<double>::__append(a2, v24 - v25, &v68);
      v18 = *(a2 + 32);
      v19 = *(a2 + 40);
    }

    if (v18 != v19)
    {
      v51 = *(a1 + 1360);
      v52 = *(a1 + 1264);
      v53 = *a2;
      do
      {
        v54 = *v18;
        v55 = 8 * *v18;
        v56 = *(v51 + v55);
        *(v51 + v55) = 0;
        v57 = *(v52 + 4 * v54);
        *(v53 + 8 * v57) = v56;
        *v18++ = v57;
      }

      while (v18 != v19);
    }

    return 0;
  }

  v45 = *(a2 + 8) - *a2;
  v46 = *(a1 + 1360);
  *(a1 + 1360) = *a2;
  *a2 = v46;
  v47 = *(a1 + 1368);
  *(a1 + 1368) = *(a2 + 8);
  *(a2 + 8) = v47;
  v48 = *(a1 + 1376);
  *(a1 + 1376) = *(a2 + 16);
  *(a2 + 16) = v48;
  v68 = 0;
  v49 = (v45 >> 3);
  v50 = (*(a2 + 8) - *a2) >> 3;
  if (v49 <= v50)
  {
    if (v49 < v50)
    {
      *(a2 + 8) = *a2 + 8 * v49;
    }
  }

  else
  {
    std::vector<double>::__append(a2, v49 - v50, &v68);
  }

  if ((v45 >> 3) >= 1)
  {
    v65 = *(a1 + 1360);
    v66 = *(a1 + 1264);
    v67 = (v45 >> 3) & 0x7FFFFFFF;
    do
    {
      if (*v65 != 0.0)
      {
        *(*a2 + 8 * *v66) = *v65;
      }

      ++v66;
      ++v65;
      --v67;
    }

    while (v67);
  }

  v68 = 0;
  std::vector<double>::assign((a1 + 1360), (v45 >> 3), &v68);
  return 0;
}

uint64_t operations_research::glop::LuFactorization::LeftSolveUForUnitRow(uint64_t a1, signed int a2, uint64_t a3)
{
  v7 = a2;
  if (*a1 == 1)
  {
    *(*a3 + 8 * a2) = 0x3FF0000000000000;
    std::vector<int>::push_back[abi:ne200100](a3 + 32, &v7);
    v8 = v7;
    return v7;
  }

  else
  {
    v6 = *(a1 + 1192);
    if (v6 != *(a1 + 1200))
    {
      a2 = *(v6 + 4 * a2);
    }

    v8 = a2;
    *(*a3 + 8 * a2) = 0x3FF0000000000000;
    std::vector<int>::push_back[abi:ne200100](a3 + 32, &v8);
    if (*(*(a1 + 656) + (((v8 << 32) + 0x100000000) >> 29)) == *(*(a1 + 656) + 8 * v8))
    {
      *(*a3 + 8 * v8) = *(*a3 + 8 * v8) / *(*(a1 + 680) + 8 * v8);
      return v8;
    }

    else
    {
      operations_research::glop::TriangularMatrix::ComputeRowsToConsiderInSortedOrder((a1 + 600), (a3 + 32));
      *(a3 + 24) = 1;
      if (*(a3 + 32) == *(a3 + 40))
      {
        operations_research::glop::TriangularMatrix::LowerSolveStartingAt(a1 + 600, v8, a3);
      }

      else
      {
        operations_research::glop::TriangularMatrix::HyperSparseSolve(a1 + 600, a3, (a3 + 32));
      }

      return v8;
    }
  }
}

uint64_t operations_research::glop::LuFactorization::GetColumnOfU(uint64_t a1, unsigned int a2, __n128 a3)
{
  if (*a1 == 1)
  {
    v3 = a1 + 1312;
    *(a1 + 1320) = 0;
    *(a1 + 1352) = 0;
    if (!*(a1 + 1328))
    {
      operator new[]();
    }

    *(a1 + 1320) = 1;
    **(a1 + 1336) = a2;
    **(a1 + 1344) = 0x3FF0000000000000;
    *(a1 + 1352) = 1;
  }

  else
  {
    v4 = *(a1 + 1192);
    if (v4 != *(a1 + 1200))
    {
      a2 = *(v4 + 4 * a2);
    }

    v3 = a1 + 1312;
    operations_research::glop::TriangularMatrix::CopyColumnToSparseColumn((a1 + 304), a2, a1 + 1312, a3);
  }

  return v3;
}

uint64_t operations_research::glop::LuFactorization::NumberOfEntries(operations_research::glop::LuFactorization *this)
{
  if (*this)
  {
    return 0;
  }

  else
  {
    return *(this + 77) + *(this + 3) + ((*(this + 3) - *(this + 2)) >> 3) + ((*(this + 40) - *(this + 39)) >> 3);
  }
}

double operations_research::glop::LuFactorization::ComputeInverseInfinityNormUpperBound(operations_research::glop::LuFactorization *this)
{
  operations_research::glop::TriangularMatrix::ComputeInverseInfinityNormUpperBound((this + 8));
  v3 = v2;
  operations_research::glop::TriangularMatrix::ComputeInverseInfinityNormUpperBound((this + 304));
  return v3 * v4;
}

void operations_research::glop::SparseMatrix::~SparseMatrix(operations_research::glop::SparseMatrix *this)
{
  v2 = *this;
  if (*this)
  {
    v3 = *(this + 1);
    v4 = *this;
    if (v3 != v2)
    {
      do
      {
        v6 = *(v3 - 6);
        v3 -= 6;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          MEMORY[0x23EED9440](v5, 0x1000C8077774924);
        }
      }

      while (v3 != v2);
      v4 = *this;
    }

    *(this + 1) = v2;
    operator delete(v4);
  }
}

operations_research::glop::Markowitz *operations_research::glop::Markowitz::Markowitz(operations_research::glop::Markowitz *this)
{
  v2 = operations_research::glop::Markowitz::Stats::Stats(this);
  *(v2 + 433) = 0u;
  *(v2 + 408) = 0u;
  *(v2 + 424) = 0u;
  *(v2 + 456) = 0u;
  *(v2 + 472) = 0u;
  *(v2 + 488) = 0u;
  *(v2 + 504) = 0u;
  *(v2 + 520) = 0u;
  *(v2 + 536) = 0u;
  *(v2 + 552) = 0u;
  *(v2 + 568) = 0;
  *(v2 + 36) = 0u;
  *(v2 + 37) = 0u;
  *(v2 + 38) = 0u;
  *(v2 + 39) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 41) = 0u;
  *(v2 + 42) = 0u;
  *(v2 + 43) = 0u;
  *(v2 + 44) = 0u;
  *(v2 + 45) = 0u;
  *(v2 + 46) = 0u;
  *(v2 + 188) = 0;
  *(v2 + 756) = 1;
  *(v2 + 190) = 0;
  *(v2 + 48) = 0u;
  *(v2 + 49) = 0u;
  *(v2 + 50) = 0u;
  *(v2 + 824) = 0u;
  *(v2 + 840) = 0u;
  *(v2 + 856) = 0u;
  *(v2 + 872) = 0u;
  *(v2 + 888) = 0u;
  *(v2 + 904) = 0u;
  *(v2 + 920) = 0u;
  *(v2 + 936) = 0u;
  *(v2 + 952) = 0u;
  *(v2 + 968) = 0u;
  *(v2 + 984) = 0u;
  *(v2 + 1000) = 0u;
  *(v2 + 1016) = 0u;
  *(v2 + 1032) = 0u;
  *(v2 + 262) = 0;
  *(v2 + 1052) = 1;
  *(v2 + 264) = 0;
  *(v2 + 1064) = 0u;
  *(v2 + 1080) = 0u;
  *(v2 + 1096) = 0u;
  *(v2 + 185) = 0;
  *(v2 + 1448) = 0u;
  *(v2 + 1464) = 0u;
  *(v2 + 1416) = 0u;
  *(v2 + 1432) = 0u;
  *(v2 + 352) = 0;
  *(v2 + 87) = 0u;
  *(v2 + 86) = 0u;
  *(v2 + 85) = 0u;
  *(v2 + 84) = 0u;
  *(v2 + 83) = 0u;
  *(v2 + 82) = 0u;
  *(v2 + 81) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 79) = 0u;
  *(v2 + 78) = 0u;
  *(v2 + 77) = 0u;
  *(v2 + 76) = 0u;
  *(v2 + 75) = 0u;
  *(v2 + 74) = 0u;
  *(v2 + 73) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 71) = 0u;
  *(v2 + 70) = 0u;
  *(v2 + 196) = 0;
  *(v2 + 97) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 95) = 0u;
  *(v2 + 94) = 0u;
  operations_research::glop::GlopParameters::GlopParameters(v2 + 1576, 0);
  return this;
}

void sub_23CBAE3DC(_Unwind_Exception *a1)
{
  v6 = v1[194];
  if (v6)
  {
    v1[195] = v6;
    operator delete(v6);
    v7 = v1[191];
    if (!v7)
    {
LABEL_3:
      v8 = *v4;
      if (!*v4)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v7 = v1[191];
    if (!v7)
    {
      goto LABEL_3;
    }
  }

  v1[192] = v7;
  operator delete(v7);
  v8 = *v4;
  if (!*v4)
  {
LABEL_4:
    operations_research::glop::ColumnPriorityQueue::~ColumnPriorityQueue(v3);
    operations_research::glop::MatrixNonZeroPattern::~MatrixNonZeroPattern((v1 + 158));
    v9 = v1[155];
    if (!v9)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_9:
  v1[189] = v8;
  operator delete(v8);
  operations_research::glop::ColumnPriorityQueue::~ColumnPriorityQueue(v3);
  operations_research::glop::MatrixNonZeroPattern::~MatrixNonZeroPattern((v1 + 158));
  v9 = v1[155];
  if (!v9)
  {
LABEL_6:
    operations_research::glop::TriangularMatrix::~TriangularMatrix((v1 + 118));
    operations_research::glop::TriangularMatrix::~TriangularMatrix((v1 + 81));
    operations_research::glop::SparseMatrixWithReusableColumnMemory::~SparseMatrixWithReusableColumnMemory((v1 + 66));
    operations_research::glop::SparseMatrixWithReusableColumnMemory::~SparseMatrixWithReusableColumnMemory(v2);
    operations_research::glop::Markowitz::Stats::~Stats(v1);
    _Unwind_Resume(a1);
  }

LABEL_5:
  operator delete(v9);
  goto LABEL_6;
}