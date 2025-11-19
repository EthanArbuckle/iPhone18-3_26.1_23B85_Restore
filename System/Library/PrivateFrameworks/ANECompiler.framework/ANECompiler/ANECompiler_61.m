__n128 operations_research::sat::FirstFewValues<10>::Add(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 72) > a2)
  {
    v2 = 0;
    v3 = a1 + 80;
    LODWORD(v4) = 1;
    LODWORD(v5) = 1;
    do
    {
      v6 = *(v3 + 8 * v2);
      v7 = (v6 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
      v8 = __OFADD__(v6, a2);
      v9 = v6 + a2;
      if (v8)
      {
        v9 = v7;
      }

      if (v4 > 9)
      {
        goto LABEL_17;
      }

      v10 = v4;
      v5 = v5;
      do
      {
        v11 = v5;
        v12 = *(a1 + 8 * v10);
        if (v12 >= v9)
        {
          LODWORD(v4) = v10;
          if (v10 > 9)
          {
            goto LABEL_17;
          }

LABEL_14:
          v4 = v4;
          do
          {
            if (*(a1 + 8 * v4) != v9)
            {
              break;
            }

            ++v4;
          }

          while (v4 != 10);
          goto LABEL_17;
        }

        LODWORD(v4) = v10 + 1;
        ++v5;
        *(a1 + 8 * v11 + 80) = v12;
        if (v11 > 8)
        {
          break;
        }
      }

      while (v10++ < 9);
      if (v11 > 8)
      {
        goto LABEL_18;
      }

      if (v4 <= 9)
      {
        goto LABEL_14;
      }

LABEL_17:
      *(v3 + 8 * v5) = v9;
      LODWORD(v5) = v5 + 1;
LABEL_18:
      if (v5 > 9)
      {
        break;
      }
    }

    while (v2++ < 9);
    result = *a1;
    v16 = *(a1 + 16);
    v17 = *(a1 + 96);
    v18 = *(a1 + 112);
    v19 = *(a1 + 64);
    *a1 = *(a1 + 80);
    *(a1 + 16) = v17;
    v20 = *(a1 + 32);
    v21 = *(a1 + 48);
    *(a1 + 96) = v16;
    *(a1 + 112) = v20;
    v22 = *(a1 + 128);
    v23 = *(a1 + 144);
    *(a1 + 32) = v18;
    *(a1 + 48) = v22;
    *(a1 + 64) = v23;
    *(a1 + 80) = result;
    *(a1 + 128) = v21;
    *(a1 + 144) = v19;
  }

  return result;
}

uint64_t operations_research::sat::LinearProgrammingConstraint::AddCutFromConstraints(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *&v61 = a2;
  *(&v61 + 1) = a3;
  v73 = *MEMORY[0x277D85DE8];
  v64 = 0;
  if ((operations_research::sat::LinearProgrammingConstraint::ComputeNewLinearConstraint<true>(a1, *a4, (a4[1] - *a4) >> 4, (a1 + 23360), &v64) & 1) == 0)
  {
    ++*(a1 + 24848);
    if (dword_27E25D148 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::sat::LinearProgrammingConstraint::AddCutFromConstraints(std::string_view,std::vector<std::pair<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>> const&)::$_0::operator() const(void)::site, dword_27E25D148))
    {
      v54 = absl::lts_20240722::log_internal::LogMessage::LogMessage(&v67, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_programming_constraint.cc", 989);
      v55 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v54, 1);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v55, "Issue, overflow!", 0x10uLL);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v67);
    }

    goto LABEL_32;
  }

  v60 = (a1 + 23296);
  operations_research::sat::ScatteredIntegerVector::ConvertToCutData(a1 + 23360, v64, v64 >> 63, (a1 + 23632), (a1 + 24264), *(a1 + 23720), a1 + 23296);
  v6 = *(a1 + 23312);
  v7 = *(a1 + 23320);
  if (v6 == v7)
  {
    goto LABEL_32;
  }

  v8 = 0;
  v9 = 0;
  do
  {
    v8 |= *(v6 + 16) > 1;
    v10 = *v6;
    v6 += 56;
    v9 |= v10 > 0.01;
  }

  while (v6 != v7);
  v11 = v9 & v8;
  v12 = (v11 & 1) != 0 ? a1 + 23984 : 0;
  if ((v9 & 1) == 0)
  {
    goto LABEL_32;
  }

  v57 = v11;
  v56 = (a1 + 23984);
  v13 = (*(*(a1 + 24360) + 8) - **(a1 + 24360)) >> 3;
  v58 = v12;
  v59 = *(*(a1 + 24360) + 8) - **(a1 + 24360);
  if (v13 >= 0)
  {
    v14 = ((*(*(a1 + 24360) + 8) - **(a1 + 24360)) & 8) != 0;
  }

  else
  {
    v14 = -(((*(*(a1 + 24360) + 8) - **(a1 + 24360)) & 8) != 0);
  }

  if (v14)
  {
    operations_research::sat::LinearProgrammingConstraint::AddCutFromConstraints(v14);
  }

  *(a1 + 23520) = *(a1 + 23512);
  v16 = *a4;
  v15 = a4[1];
  if (*a4 != v15)
  {
    do
    {
      v71 = *v16;
      v17 = v71;
      v18 = (*(a1 + 520) + 32 * v71);
      if (*v18 != v18[1])
      {
        v70 = 0;
        v68 = 0u;
        v69 = 0u;
        v19 = *(&v71 + 1);
        if (v71 < 0)
        {
          v19 = -*(&v71 + 1);
        }

        *&v67 = 0;
        *(&v67 + 1) = v19;
        *&v68 = v18[1] - *v18;
        LODWORD(v69) = (((*(a1 + 23520) - *(a1 + 23512)) >> 1) & 0xFFFFFFFE) + v13;
        v70 = 0;
        ConstraintActivity = operations_research::glop::RevisedSimplex::GetConstraintActivity(a1 + 1368, v71);
        v21 = operations_research::glop::LpScalingHelper::UnscaleConstraintActivity(a1 + 21936, v17, ConstraintActivity);
        v22 = (*(a1 + 520) + 32 * v71);
        if (*(&v71 + 1) < 1)
        {
          v26 = *v22;
          if (*v22 < 0x8000000000000003)
          {
            v26 = -INFINITY;
          }

          if (*v22 > 0x7FFFFFFFFFFFFFFDLL)
          {
            v26 = INFINITY;
          }

          *&v67 = v21 - v26;
          *(&v69 + 1) = 1;
          v25 = -*v22;
        }

        else
        {
          v23 = v22[1];
          v24 = v23;
          if (v23 < 0x8000000000000003)
          {
            v24 = -INFINITY;
          }

          if (v23 > 0x7FFFFFFFFFFFFFFDLL)
          {
            v24 = INFINITY;
          }

          *&v67 = v24 - v21;
          *(&v69 + 1) = -1;
          v25 = v22[1];
        }

        *(&v68 + 1) = v25;
        std::vector<operations_research::sat::CutTerm>::push_back[abi:ne200100](a1 + 23312, &v67);
        std::vector<int>::push_back[abi:ne200100](a1 + 23512, &v71);
      }

      ++v16;
    }

    while (v16 != v15);
  }

  v30 = v59 >> 3;
  if ((operations_research::sat::LinearProgrammingConstraint::PreprocessCut(a1, v30, v60) & 1) == 0 || !(*(a1 + 23296) ^ 1 | *(a1 + 23304)))
  {
LABEL_32:
    v27 = 0;
    goto LABEL_33;
  }

  if (a4[1] - *a4 == 16 && *(*(a1 + 23696) + 724) == 1 && operations_research::sat::BoolRLTCutHelper::TrySimpleSeparation((a1 + 23792), v60))
  {
    v67 = v61;
    *&v71 = "_RLT";
    *(&v71 + 1) = 4;
    absl::lts_20240722::StrCat(&v67, &v71, v66);
    *(&__p[0].__r_.__value_.__s + 23) = 0;
    __p[0].__r_.__value_.__s.__data_[0] = 0;
    v27 = operations_research::sat::LinearProgrammingConstraint::PostprocessAndAddCut(a1, v66, __p, v30, (a1 + 23872));
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v66[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v66[0].__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v27 = 0;
  }

  if (operations_research::sat::CoverCutHelper::TrySingleNodeFlow((a1 + 22208), v60, v58))
  {
    *&v66[0].__r_.__value_.__l.__data_ = v61;
    __p[0].__r_.__value_.__r.__words[0] = "_FF";
    __p[0].__r_.__value_.__l.__size_ = 3;
    absl::lts_20240722::StrCat(&v66[0].__r_.__value_.__l.__data_, __p, &v63);
    *&v67 = "lift=";
    *(&v67 + 1) = 5;
    v32 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(a1 + 22440), v72, v31);
    *&v71 = v72;
    *(&v71 + 1) = v32 - v72;
    absl::lts_20240722::StrCat(&v67, &v71, &v62);
    v33 = operations_research::sat::LinearProgrammingConstraint::PostprocessAndAddCut(a1, &v63, &v62, v30, (a1 + 22208));
    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      v34 = v33;
      operator delete(v62.__r_.__value_.__l.__data_);
      v33 = v34;
    }

    v27 = v27 | v33;
    if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v63.__r_.__value_.__l.__data_);
    }
  }

  if (operations_research::sat::CoverCutHelper::TrySimpleKnapsack((a1 + 22208), v60, v58))
  {
    *&v66[0].__r_.__value_.__l.__data_ = v61;
    __p[0].__r_.__value_.__r.__words[0] = "_K";
    __p[0].__r_.__value_.__l.__size_ = 2;
    absl::lts_20240722::StrCat(&v66[0].__r_.__value_.__l.__data_, __p, &v63);
    *&v67 = "lift=";
    *(&v67 + 1) = 5;
    v36 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(a1 + 22440), v72, v35);
    *&v71 = v72;
    *(&v71 + 1) = v36 - v72;
    absl::lts_20240722::StrCat(&v67, &v71, &v62);
    v37 = operations_research::sat::LinearProgrammingConstraint::PostprocessAndAddCut(a1, &v63, &v62, v30, (a1 + 22208));
    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      v38 = v37;
      operator delete(v62.__r_.__value_.__l.__data_);
      v37 = v38;
    }

    v27 = v27 | v37;
    if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v63.__r_.__value_.__l.__data_);
    }
  }

  if (operations_research::sat::CoverCutHelper::TryWithLetchfordSouliLifting((a1 + 22208), v60, v58))
  {
    *&v66[0].__r_.__value_.__l.__data_ = v61;
    __p[0].__r_.__value_.__r.__words[0] = "_KL";
    __p[0].__r_.__value_.__l.__size_ = 3;
    absl::lts_20240722::StrCat(&v66[0].__r_.__value_.__l.__data_, __p, &v63);
    *&v67 = "lift=";
    *(&v67 + 1) = 5;
    v40 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(a1 + 22440), v72, v39);
    *&v71 = v72;
    *(&v71 + 1) = v40 - v72;
    absl::lts_20240722::StrCat(&v67, &v71, &v62);
    v41 = operations_research::sat::LinearProgrammingConstraint::PostprocessAndAddCut(a1, &v63, &v62, v30, (a1 + 22208));
    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      v42 = v41;
      operator delete(v62.__r_.__value_.__l.__data_);
      v41 = v42;
    }

    v27 = v27 | v41;
    if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v63.__r_.__value_.__l.__data_);
    }
  }

  operations_research::sat::CutData::ComplementForSmallerLpValues(v60);
  v43 = *(*(a1 + 23696) + 600);
  if (operations_research::sat::IntegerRoundingCutHelper::ComputeCut(a1 + 22864, v43, 256, v60, v58))
  {
    *&v66[0].__r_.__value_.__l.__data_ = v61;
    __p[0].__r_.__value_.__r.__words[0] = "_R";
    __p[0].__r_.__value_.__l.__size_ = 2;
    absl::lts_20240722::StrCat(&v66[0].__r_.__value_.__l.__data_, __p, &v63);
    *&v67 = "ib_lift=";
    *(&v67 + 1) = 8;
    v45 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(a1 + 22960), v72, v44);
    *&v71 = v72;
    *(&v71 + 1) = v45 - v72;
    absl::lts_20240722::StrCat(&v67, &v71, &v62);
    v46 = operations_research::sat::LinearProgrammingConstraint::PostprocessAndAddCut(a1, &v63, &v62, v30, (a1 + 23072));
    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      v47 = v46;
      operator delete(v62.__r_.__value_.__l.__data_);
      v46 = v47;
    }

    v27 = v27 | v46;
    if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v63.__r_.__value_.__l.__data_);
    }
  }

  if (v57)
  {
    if (operations_research::sat::IntegerRoundingCutHelper::ComputeCut(a1 + 22864, v43, 1, v60, v56))
    {
      v67 = v61;
      *&v71 = "_RB";
      *(&v71 + 1) = 3;
      absl::lts_20240722::StrCat(&v67, &v71, v66);
      operations_research::sat::IntegerRoundingCutHelper::Info((a1 + 22864), v48, __p);
      v49 = operations_research::sat::LinearProgrammingConstraint::PostprocessAndAddCut(a1, v66, __p, v30, (a1 + 23072));
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        v50 = v49;
        operator delete(__p[0].__r_.__value_.__l.__data_);
        v49 = v50;
      }

      v27 = v27 | v49;
      if (SHIBYTE(v66[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v66[0].__r_.__value_.__l.__data_);
      }
    }

    if (operations_research::sat::IntegerRoundingCutHelper::ComputeCut(a1 + 22864, v43, 257, v60, v56))
    {
      v67 = v61;
      *&v71 = "_RBP";
      *(&v71 + 1) = 4;
      absl::lts_20240722::StrCat(&v67, &v71, v66);
      operations_research::sat::IntegerRoundingCutHelper::Info((a1 + 22864), v51, __p);
      v52 = operations_research::sat::LinearProgrammingConstraint::PostprocessAndAddCut(a1, v66, __p, v30, (a1 + 23072));
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        v53 = v52;
        operator delete(__p[0].__r_.__value_.__l.__data_);
        v52 = v53;
      }

      v27 = v27 | v52;
      if (SHIBYTE(v66[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v66[0].__r_.__value_.__l.__data_);
      }
    }
  }

LABEL_33:
  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

void sub_23CC42908(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a35 < 0)
  {
    operator delete(__p);
    if ((a44 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a44 & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

  operator delete(a39);
  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::LinearProgrammingConstraint::ComputeNewLinearConstraint<true>(void *a1, uint64_t a2, uint64_t a3, int64x2_t **this, uint64_t *a5)
{
  *a5 = 0;
  operations_research::sat::ScatteredIntegerVector::ClearAndResize(this, (a1[2955] - a1[2954]) >> 2);
  if ((a3 & 0xFFFFFFFFFFFFFFFLL) == 0)
  {
    return 1;
  }

  v10 = a2 + 16 * a3;
  v11 = a1[65];
  while (1)
  {
    v12 = *a2;
    v22 = v12;
    v13 = (a1[66] - v11) >> 5;
    if (v12 >= v13)
    {
      operations_research::sat::LinearProgrammingConstraint::ComputeNewLinearConstraint<true>(&v22, v13);
    }

    v14 = *(a2 + 8);
    v15 = 32 * v12;
    if ((operations_research::sat::ScatteredIntegerVector::AddLinearExpressionMultiple<true>(this, v14, (a1[48] + 4 * *(v11 + v15 + 16)), *(v11 + v15 + 20), (a1[51] + 8 * *(v11 + v15 + 16))) & 1) == 0)
    {
      break;
    }

    v11 = a1[65];
    v16 = *(v11 + v15 + 8 * (v14 > 0));
    v17 = (v14 * v16) >> 64 == (v14 * v16) >> 63 ? v14 * v16 : ((v16 ^ v14) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
    if (v17 - 0x7FFFFFFFFFFFFFFFLL < 2)
    {
      break;
    }

    v18 = (v17 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
    v19 = __OFADD__(v17, *a5);
    v20 = v17 + *a5;
    if (v19)
    {
      v20 = v18;
    }

    if ((v20 + 0x7FFFFFFFFFFFFFFFLL) >= 0xFFFFFFFFFFFFFFFELL)
    {
      break;
    }

    *a5 = v20;
    a2 += 16;
    if (a2 == v10)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t operations_research::sat::LinearProgrammingConstraint::PostprocessAndAddCut(uint64_t a1, uint64_t a2, uint64_t a3, int a4, operations_research::sat::CutData *this)
{
  if ((*this >= 0x8000000000000000) + *(this + 1))
  {
    if (dword_2810C0910 < 2 || !absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&off_2810C0908, dword_2810C0910))
    {
      goto LABEL_3;
    }

    v72 = absl::lts_20240722::log_internal::LogMessage::LogMessage(&v88, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_programming_constraint.cc", 1151);
    v73 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v72, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v73, "RHS overflow ", 0xDuLL);
    v74 = absl::lts_20240722::log_internal::LogMessage::operator<<(v73, a2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v74, " ", 1uLL);
    absl::lts_20240722::log_internal::LogMessage::operator<<(v74, a3);
    goto LABEL_87;
  }

  operations_research::sat::CutData::ComputeViolation(this);
  if (v9 < 0.0001)
  {
    if (dword_2810C0928 >= 2 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&off_2810C0920, dword_2810C0928))
    {
      v75 = absl::lts_20240722::log_internal::LogMessage::LogMessage(&v88, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_programming_constraint.cc", 1161);
      v76 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v75, 2);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v76, "Bad cut ", 8uLL);
      v77 = absl::lts_20240722::log_internal::LogMessage::operator<<(v76, a2);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v77, " ", 1uLL);
      absl::lts_20240722::log_internal::LogMessage::operator<<(v77, a3);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v88);
    }

    result = 0;
    ++*(a1 + 24856);
    return result;
  }

  operations_research::sat::ScatteredIntegerVector::ClearAndResize((a1 + 23360), (*(a1 + 23640) - *(a1 + 23632)) >> 2);
  v10 = *this;
  v12 = *(this + 2);
  v11 = *(this + 3);
  if (v12 == v11)
  {
LABEL_57:
    v56 = *(a1 + 23632);
    v57 = (*(a1 + 23640) - v56) >> 2;
    v87[0] = 0;
    v87[16] = 0;
    operations_research::sat::ScatteredIntegerVector::ConvertToLinearConstraint(a1 + 23360, v56, v10, v87, &v88);
    v84 = v88;
    v85 = v89;
    v58 = v90;
    v90 = 0uLL;
    v86 = v58;
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v83, *a2, *(a2 + 8));
    }

    else
    {
      v83 = *a2;
    }

    if (*(a3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v82, *a3, *(a3 + 8));
    }

    else
    {
      v82 = *a3;
    }

    result = operations_research::sat::LinearConstraintManager::AddCut(a1 + 16, &v84, &v83, &v82);
    v63 = result;
    if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v82.__r_.__value_.__l.__data_);
      result = v63;
    }

    if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v83.__r_.__value_.__l.__data_);
      result = v63;
    }

    v64 = *(&v86 + 1);
    *(&v86 + 1) = 0;
    if (v64)
    {
      MEMORY[0x23EED9440](v64, 0x1000C8000313F17);
      result = v63;
    }

    v65 = v86;
    *&v86 = 0;
    if (v65)
    {
      MEMORY[0x23EED9440](v65, 0x1000C8052888210);
      result = v63;
    }

    v66 = *(&v90 + 1);
    *(&v90 + 1) = 0;
    if (v66)
    {
      MEMORY[0x23EED9440](v66, 0x1000C8000313F17);
      result = v63;
    }

    v67 = v90;
    *&v90 = 0;
    if (v67)
    {
      MEMORY[0x23EED9440](v67, 0x1000C8052888210);
      return v63;
    }

    return result;
  }

  v81 = (a1 + 23672);
  v78 = *(this + 3);
  while (1)
  {
    v13 = *(v12 + 8);
    if (v13)
    {
      break;
    }

LABEL_10:
    v12 += 56;
    if (v12 == v11)
    {
      goto LABEL_57;
    }
  }

  v14 = -v13;
  v15 = *(v12 + 24);
  v16 = ((v15 ^ -v13) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
  v17 = -(v13 * v15);
  if ((v14 * v15) >> 64 != v17 >> 63)
  {
    v17 = v16;
  }

  if ((v17 - 0x7FFFFFFFFFFFFFFFLL) < 2 || ((v18 = (v17 >> 63) + 0x7FFFFFFFFFFFFFFFLL, _VF = __OFADD__(v17, v10), v20 = v17 + v10, !_VF) ? (v10 = v20) : (v10 = v18), (v10 + 0x7FFFFFFFFFFFFFFFLL) > 0xFFFFFFFFFFFFFFFDLL))
  {
    if (dword_2810C0940 < 2 || !absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&off_2810C0938, dword_2810C0940))
    {
      goto LABEL_3;
    }

    v68 = absl::lts_20240722::log_internal::LogMessage::LogMessage(&v88, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_programming_constraint.cc", 1172);
    v69 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v68, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v69, "Overflow in conversion", 0x16uLL);
LABEL_87:
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v88);
    goto LABEL_3;
  }

  v21 = 0;
  v22 = 1;
  while (1)
  {
    v24 = v22;
    v25 = *(v12 + 40 + 8 * v21);
    if (!v25)
    {
      goto LABEL_21;
    }

    v26 = *(v12 + 8);
    if ((v26 * v25) >> 64 == (v26 * v25) >> 63)
    {
      v27 = v26 * v25;
    }

    else
    {
      v27 = ((v26 ^ v25) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v27 - 0x7FFFFFFFFFFFFFFFLL <= 1)
    {
      if (dword_2810C0958 >= 2 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&off_2810C0950, dword_2810C0958))
      {
        v59 = absl::lts_20240722::log_internal::LogMessage::LogMessage(&v88, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_programming_constraint.cc", 1182);
        v60 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v59, 2);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v60, "Overflow in conversion", 0x16uLL);
        goto LABEL_87;
      }

      goto LABEL_3;
    }

    v28 = *(v12 + 32 + 4 * v21);
    if (v28 >= a4)
    {
      break;
    }

    v29 = v28 & 0xFFFFFFFE;
    v30 = *(a1 + 23656);
    if (v30 > 1)
    {
      v31 = 0;
      _X11 = *v81;
      __asm { PRFM            #4, [X11] }

      v36 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v29) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v29));
      v37 = vdup_n_s8(v36 & 0x7F);
      v38 = ((v36 >> 7) ^ (*v81 >> 12)) & v30;
      v39 = *(*v81 + v38);
      v40 = vceq_s8(v39, v37);
      if (!v40)
      {
        goto LABEL_35;
      }

LABEL_32:
      v41 = *(a1 + 23680);
      while (1)
      {
        v42 = (v38 + (__clz(__rbit64(v40)) >> 3)) & v30;
        if (*(v41 + 8 * v42) == v29)
        {
          break;
        }

        v40 &= ((v40 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v40)
        {
LABEL_35:
          while (!*&vceq_s8(v39, 0x8080808080808080))
          {
            v31 += 8;
            v38 = (v31 + v38) & v30;
            v39 = *(_X11 + v38);
            v40 = vceq_s8(v39, v37);
            if (v40)
            {
              goto LABEL_32;
            }
          }

LABEL_90:
          absl::lts_20240722::base_internal::ThrowStdOutOfRange("absl::container_internal::raw_hash_map<>::at", v27);
        }
      }

      v43 = v41 + 8 * v42;
      if (!(_X11 + v42))
      {
        goto LABEL_90;
      }
    }

    else
    {
      if (*(a1 + 23664) < 2uLL)
      {
        goto LABEL_90;
      }

      _ZF = *v81 == v29;
      if (*v81 == v29)
      {
        v43 = a1 + 23672;
      }

      else
      {
        v43 = v28;
      }

      v45 = &absl::lts_20240722::container_internal::kSooControl;
      if (!_ZF)
      {
        v45 = 0;
      }

      if (!v45)
      {
        goto LABEL_90;
      }
    }

    v46 = *(v43 + 4);
    if (v28)
    {
      LODWORD(v88) = v46;
      v47 = *(a1 + 23416);
      v48 = 8 * v46;
      v51 = *(v47 + v48);
      _VF = __OFADD__(-v27, v51);
      v50 = v51 - v27;
      if (_VF)
      {
        v50 = (v27 > 0) + 0x7FFFFFFFFFFFFFFFLL;
      }

      if ((v50 + 0x7FFFFFFFFFFFFFFFLL) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_21;
      }
    }

    else
    {
      LODWORD(v88) = v46;
      v47 = *(a1 + 23416);
      v48 = 8 * v46;
      v49 = *(v47 + v48);
      _VF = __OFADD__(v27, v49);
      v50 = v27 + v49;
      if (_VF)
      {
        v50 = (v27 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
      }

      if ((v50 + 0x7FFFFFFFFFFFFFFFLL) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_21;
      }
    }

    *(v47 + v48) = v50;
    if (*(a1 + 23360) == 1)
    {
      v52 = *(a1 + 23392);
      v53 = v46 >> 6;
      v54 = 1 << v46;
      v55 = *(v52 + 8 * v53);
      if ((v55 & v54) != 0)
      {
        *(v52 + 8 * v53) = v55 & ~v54;
        std::vector<int>::push_back[abi:ne200100](a1 + 23368, &v88);
      }
    }

LABEL_21:
    v22 = 0;
    v21 = 1;
    if ((v24 & 1) == 0)
    {
      v11 = v78;
      goto LABEL_10;
    }
  }

  v23 = *(a1 + 520) + 32 * *(*(a1 + 23512) + 4 * ((v28 - a4) / 2));
  if (operations_research::sat::ScatteredIntegerVector::AddLinearExpressionMultiple<true>(a1 + 23360, v27, (*(a1 + 384) + 4 * *(v23 + 16)), *(v23 + 20), (*(a1 + 408) + 8 * *(v23 + 16))))
  {
    goto LABEL_21;
  }

  if (dword_2810C0970 >= 2 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&off_2810C0968, dword_2810C0970))
  {
    v61 = absl::lts_20240722::log_internal::LogMessage::LogMessage(&v88, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_programming_constraint.cc", 1203);
    v62 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v61, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v62, "Overflow in slack removal", 0x19uLL);
    goto LABEL_87;
  }

LABEL_3:
  result = 0;
  ++*(a1 + 24848);
  return result;
}

void sub_23CC43338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29)
{
  if ((a27 & 0x80000000) == 0)
  {
    operations_research::sat::LinearConstraint::~LinearConstraint(&a29);
    operations_research::sat::LinearConstraint::~LinearConstraint((v29 - 152));
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  operations_research::sat::LinearConstraint::~LinearConstraint(&a29);
  operations_research::sat::LinearConstraint::~LinearConstraint((v29 - 152));
  _Unwind_Resume(a1);
}

const void **operations_research::sat::IntegerRoundingCutHelper::Info@<X0>(operations_research::sat::IntegerRoundingCutHelper *this@<X0>, char *a2@<X2>, std::string *a3@<X8>)
{
  v9[6] = *MEMORY[0x277D85DE8];
  v9[0] = "ib_lift=";
  v9[1] = 8;
  v4 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(this + 12), v8, a2);
  v7[0] = v8;
  v7[1] = v4 - v8;
  result = absl::lts_20240722::StrCat(v9, v7, a3);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t operations_research::sat::ScatteredIntegerVector::AddLinearExpressionMultiple<true>(uint64_t a1, unint64_t a2, int *a3, int a4, unint64_t *a5)
{
  v9 = *(a1 + 56);
  if (*a1 != 1 || (v10 = ((*(a1 + 64) - v9) >> 3) * 0.1, v10 <= a4))
  {
    *a1 = 0;
    if (a4 >= 1)
    {
      v22 = a4 & 0x7FFFFFFF;
      while (1)
      {
        v23 = *a5++;
        v24 = ((v23 ^ a2) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
        v25 = a2 * v23;
        if ((a2 * v23) >> 64 == (a2 * v23) >> 63)
        {
          v24 = v25;
        }

        if (v24 - 0x7FFFFFFFFFFFFFFFLL < 2)
        {
          break;
        }

        v26 = *a3++;
        v27 = 8 * v26;
        v28 = *(v9 + v27);
        v29 = (v24 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
        v20 = __OFADD__(v24, v28);
        v30 = v24 + v28;
        if (v20)
        {
          v30 = v29;
        }

        if ((v30 + 0x7FFFFFFFFFFFFFFFLL) > 0xFFFFFFFFFFFFFFFDLL)
        {
          break;
        }

        *(v9 + v27) = v30;
        if (!--v22)
        {
          return 1;
        }
      }

      return 0;
    }

    return 1;
  }

  if (a4 < 1)
  {
LABEL_15:
    if (v10 < ((*(a1 + 16) - *(a1 + 8)) >> 2))
    {
      *a1 = 0;
    }

    return 1;
  }

  v11 = a4 & 0x7FFFFFFF;
  while (1)
  {
    v12 = *a3;
    v13 = *(a1 + 32);
    v14 = *a3 >> 6;
    v15 = *(v13 + 8 * v14);
    if (((1 << *a3) & v15) != 0)
    {
      *(v13 + 8 * v14) = v15 & ~(1 << v12);
      std::vector<int>::push_back[abi:ne200100](a1 + 8, a3);
      v12 = *a3;
      v9 = *(a1 + 56);
    }

    v16 = (a2 * *a5) >> 64 == (a2 * *a5) >> 63 ? a2 * *a5 : ((*a5 ^ a2) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
    if (v16 - 0x7FFFFFFFFFFFFFFFLL < 2)
    {
      return 0;
    }

    v17 = 8 * v12;
    v18 = *(v9 + v17);
    v19 = (v16 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
    v20 = __OFADD__(v16, v18);
    v21 = v16 + v18;
    if (v20)
    {
      v21 = v19;
    }

    if ((v21 + 0x7FFFFFFFFFFFFFFFLL) > 0xFFFFFFFFFFFFFFFDLL)
    {
      return 0;
    }

    *(v9 + v17) = v21;
    ++a5;
    ++a3;
    if (!--v11)
    {
      goto LABEL_15;
    }
  }
}

void operations_research::sat::LinearProgrammingConstraint::AddCGCuts(operations_research::sat::LinearProgrammingConstraint *this)
{
  v1 = *(this + 236);
  if (v1 >= 1)
  {
    for (i = 0; i != v1; ++i)
    {
      if (operations_research::TimeLimit::LimitReached(*(this + 2964)))
      {
        break;
      }

      Basis = operations_research::glop::RevisedSimplex::GetBasis(this + 1368, i);
      VariableValue = operations_research::glop::RevisedSimplex::GetVariableValue(this + 1368, Basis);
      v6 = operations_research::glop::LpScalingHelper::UnscaleVariableValue(this + 21936, Basis, VariableValue);
      if (vabdd_f64(v6, round(v6)) >= 0.01 && Basis < ((*(this + 2955) - *(this + 2954)) >> 2))
      {
        *(this + 2946) = *(this + 2945);
        UnitRowLeftInverse = operations_research::glop::UpdateRow::ComputeAndGetUnitRowLeftInverse(this + 12728, i);
        v8 = UnitRowLeftInverse[4];
        v9 = UnitRowLeftInverse[5];
        if (v8 == v9)
        {
          for (j = 0; j != v1; ++j)
          {
            v12 = *(*UnitRowLeftInverse + 8 * j);
            if (fabs(v12) >= 1.0e-12)
            {
              LODWORD(v25) = j;
              *(&v25 + 1) = v12;
              std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](this + 23560, &v25);
            }
          }
        }

        else
        {
          do
          {
            v11 = *(*UnitRowLeftInverse + 8 * *v8);
            if (fabs(v11) >= 1.0e-12)
            {
              LODWORD(v25) = *v8;
              *(&v25 + 1) = v11;
              std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](this + 23560, &v25);
            }

            ++v8;
          }

          while (v8 != v9);
        }

        if (*(this + 2946) - *(this + 2945) >= 0x11uLL)
        {
          v27 = 0;
          operations_research::sat::LinearProgrammingConstraint::ScaleLpMultiplier(this, 0, 1, this + 2945, &v27, 0x7FFFFFFFFFFFFFFFLL, &v25);
          v13 = *(this + 2948);
          if (v13)
          {
            *(this + 2949) = v13;
            operator delete(v13);
          }

          *(this + 1474) = v25;
          v14 = v27;
          *(this + 2950) = v26;
          if (v14)
          {
            operations_research::sat::LinearProgrammingConstraint::AddCutFromConstraints(this, "CG", 2, this + 2948);
          }

          v15 = *(this + 2945);
          v16 = *(this + 2946);
          if (v15 != v16)
          {
            v17 = v16 - v15 - 16;
            if (v17 < 0x10)
            {
              goto LABEL_33;
            }

            if (v15 + 8 + (v17 & 0xFFFFFFFFFFFFFFF0) < v15 + 8)
            {
              goto LABEL_33;
            }

            v18 = (v17 >> 4) + 1;
            v19 = v15 + 16 * (v18 & 0x1FFFFFFFFFFFFFFELL);
            v20 = (v15 + 24);
            v21 = v18 & 0x1FFFFFFFFFFFFFFELL;
            do
            {
              v22 = -*v20;
              *(v20 - 2) = -*(v20 - 2);
              *v20 = v22;
              v20 += 4;
              v21 -= 2;
            }

            while (v21);
            v15 = v19;
            if (v18 != (v18 & 0x1FFFFFFFFFFFFFFELL))
            {
LABEL_33:
              do
              {
                *(v15 + 8) = -*(v15 + 8);
                v15 += 16;
              }

              while (v15 != v16);
            }
          }

          operations_research::sat::LinearProgrammingConstraint::ScaleLpMultiplier(this, 0, 1, this + 2945, &v27, 0x7FFFFFFFFFFFFFFFLL, &v25);
          v23 = *(this + 2948);
          if (v23)
          {
            *(this + 2949) = v23;
            operator delete(v23);
          }

          *(this + 1474) = v25;
          v24 = v27;
          *(this + 2950) = v26;
          if (v24)
          {
            operations_research::sat::LinearProgrammingConstraint::AddCutFromConstraints(this, "CG", 2, this + 2948);
          }
        }
      }
    }
  }
}

void operations_research::sat::LinearProgrammingConstraint::ScaleLpMultiplier(void *a1@<X0>, int a2@<W1>, char a3@<W2>, uint64_t *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  v32 = a2;
  v31 = a6;
  *a5 = 0;
  a1[2952] = a1[2951];
  v11 = *a4;
  v12 = a4[1];
  if (*a4 != v12)
  {
    if (a3)
    {
      do
      {
        v13 = *(v11 + 8);
        if (fabs(v13) >= 1.0e-12)
        {
          v14 = *v11;
          if ((v13 <= 0.0 || (*(a1[65] + 32 * v14 + 25) & 1) == 0) && (v13 >= 0.0 || (*(a1[65] + 32 * v14 + 24) & 1) == 0))
          {
            v15 = operations_research::glop::LpScalingHelper::UnscaleDualValue((a1 + 2742), *v11, v13);
            LODWORD(v30) = v14;
            *(&v30 + 1) = v15;
            std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100]((a1 + 2951), &v30);
          }
        }

        v11 += 16;
      }

      while (v11 != v12);
    }

    else
    {
      do
      {
        v16 = *(v11 + 8);
        if (fabs(v16) >= 1.0e-12)
        {
          v17 = *v11;
          v18 = operations_research::glop::LpScalingHelper::UnscaleDualValue((a1 + 2742), *v11, v16);
          LODWORD(v30) = v17;
          *(&v30 + 1) = v18;
          std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100]((a1 + 2951), &v30);
        }

        v11 += 16;
      }

      while (v11 != v12);
    }
  }

  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  v19 = a1[2952];
  v20 = a1[2951];
  if (v20 != v19)
  {
    v21 = 0;
    while (1)
    {
      v22 = fabs(round(ldexp(v20[1], 0)));
      if (v22 >= 9.22337204e18)
      {
        break;
      }

      v23 = *(a1[68] + 8 * *v20);
      v24 = (v22 * v23) >> 64 == (v22 * v23) >> 63 ? v22 * v23 : ((v23 ^ v22) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
      v25 = __OFADD__(v21, v24);
      v26 = v21 + v24;
      v21 = v25 ? (v21 >> 63) + 0x7FFFFFFFFFFFFFFFLL : v26;
      if (v21 >= a6)
      {
        break;
      }

      v20 += 2;
      if (v20 == v19)
      {
        if (!a2 || ((v27 = a1[64], v25 = __OFADD__(v21, v27), v28 = v21 + v27, !v25) ? (v21 = v28) : (v21 = (v21 >> 63) + 0x7FFFFFFFFFFFFFFFLL), v21 < a6))
        {
          if (v21 < a6)
          {
            operator new();
          }
        }

        break;
      }
    }

    ++a1[3108];
  }

  v29 = *MEMORY[0x277D85DE8];
}

void sub_23CC43DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::function<BOOL ()(int)>::~function(va);
  _Unwind_Resume(a1);
}

void sub_23CC43DCC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::LinearProgrammingConstraint::AddObjectiveCut(operations_research::sat::LinearProgrammingConstraint *this)
{
  v44 = *MEMORY[0x277D85DE8];
  if (*(this + 61) - *(this + 60) >= 0x11uLL)
  {
    ObjectiveValue = operations_research::glop::RevisedSimplex::GetObjectiveValue((this + 1368));
    v3 = (*(*(this + 2965) + 152) + 24 * *(this + 5923));
    v4 = ObjectiveValue + 1.0;
    v5 = *v3;
    if (*v3 < 0x8000000000000003)
    {
      v5 = -INFINITY;
    }

    if (*v3 > 0x7FFFFFFFFFFFFFFDLL)
    {
      v5 = INFINITY;
    }

    if (v4 < v5)
    {
      v37 = 0;
      v38 = 0uLL;
      v36 = 0x8000000000000002;
      *(&v36 + 1) = *(this + 63) - *v3;
      operations_research::sat::LinearConstraint::resize(&v36, (*(this + 61) - *(this + 60)) >> 4);
      v6 = *(this + 60);
      v7 = *(this + 61);
      if (v6 == v7)
      {
        v13 = 1;
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = *(this + 2954);
        v11 = v38;
        do
        {
          *(v11 + 4 * v8) = *(v10 + 4 * *v6);
          *(*(&v11 + 1) + 8 * v8) = -*(v6 + 1);
          v12 = *(v6 + 1);
          if (v12 < 0)
          {
            v12 = -v12;
          }

          if (v9 <= v12)
          {
            v9 = v12;
          }

          ++v8;
          v6 += 4;
        }

        while (v6 != v7);
        v13 = v9 < 1000000000;
      }

      if ((operations_research::sat::CutData::FillFromLinearConstraint(this + 23296, &v36, *(this + 3045), *(this + 2965)) & 1) == 0)
      {
        goto LABEL_35;
      }

      if (!v13)
      {
LABEL_25:
        operations_research::sat::CutData::ComplementForPositiveCoefficients(this + 23296);
        if (operations_research::sat::CoverCutHelper::TrySimpleKnapsack((this + 22208), (this + 23296), 0))
        {
          v28 = 11;
          strcpy(v27, "Objective_K");
          v42 = "lift=";
          v43 = 5;
          v19 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(this + 2805), v41, v18);
          v39 = v41;
          v40 = v19 - v41;
          absl::lts_20240722::StrCat(&v42, &v39, &__p);
          operations_research::sat::LinearProgrammingConstraint::PostprocessAndAddCut(this, v27, &__p, 0x7FFFFFFF, (this + 22208));
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v28 < 0)
          {
            operator delete(v27[0]);
          }
        }

        v20 = *(*(this + 2962) + 600);
        operations_research::sat::CutData::ComplementForSmallerLpValues(this + 23296);
        if (operations_research::sat::IntegerRoundingCutHelper::ComputeCut(this + 22864, v20, 257, this + 23296, this + 2998))
        {
          v28 = 11;
          strcpy(v27, "Objective_R");
          v42 = "ib_lift=";
          v43 = 8;
          v22 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(this + 2870), v41, v21);
          v39 = v41;
          v40 = v22 - v41;
          absl::lts_20240722::StrCat(&v42, &v39, &__p);
          operations_research::sat::LinearProgrammingConstraint::PostprocessAndAddCut(this, v27, &__p, 0x7FFFFFFF, (this + 23072));
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v28 < 0)
          {
            operator delete(v27[0]);
          }
        }

LABEL_35:
        v23 = *(&v38 + 1);
        *(&v38 + 1) = 0;
        if (v23)
        {
          MEMORY[0x23EED9440](v23, 0x1000C8000313F17);
        }

        v24 = v38;
        *&v38 = 0;
        if (v24)
        {
          MEMORY[0x23EED9440](v24, 0x1000C8052888210);
        }

        goto LABEL_39;
      }

      v33 = v36;
      v34 = v37;
      v14 = v38;
      v38 = 0uLL;
      v35 = v14;
      v32 = 9;
      strcpy(&v31, "Objective");
      v30 = 0;
      LOBYTE(v29) = 0;
      v15 = operations_research::sat::LinearConstraintManager::AddCut(this + 16, &v33, &v31, &v29);
      if (v30 < 0)
      {
        operator delete(v29);
        if ((v32 & 0x80000000) == 0)
        {
LABEL_20:
          v16 = *(&v35 + 1);
          *(&v35 + 1) = 0;
          if (!v16)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }
      }

      else if ((v32 & 0x80000000) == 0)
      {
        goto LABEL_20;
      }

      operator delete(v31);
      v16 = *(&v35 + 1);
      *(&v35 + 1) = 0;
      if (!v16)
      {
LABEL_22:
        v17 = v35;
        *&v35 = 0;
        if (v17)
        {
          MEMORY[0x23EED9440](v17, 0x1000C8052888210);
        }

        if (v15)
        {
          goto LABEL_35;
        }

        goto LABEL_25;
      }

LABEL_21:
      MEMORY[0x23EED9440](v16, 0x1000C8000313F17);
      goto LABEL_22;
    }
  }

LABEL_39:
  v25 = *MEMORY[0x277D85DE8];
}

void sub_23CC44238(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      operations_research::sat::LinearConstraint::~LinearConstraint(&a39);
      _Unwind_Resume(a1);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  operations_research::sat::LinearConstraint::~LinearConstraint(&a39);
  _Unwind_Resume(a1);
}

void operations_research::sat::LinearProgrammingConstraint::AddMirCuts(operations_research::sat::LinearProgrammingConstraint *this)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = *(this + 2955) - *(this + 2954);
  if (v1)
  {
    if (v1 < 0x7FFFFFFFFFFFFFFDLL)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v2 = *(this + 236);
  if (v2)
  {
    if ((v2 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v3 = *MEMORY[0x277D85DE8];
}

void sub_23CC45AB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, void *a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *a46)
{
  if (!v46)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(v46);
  _Unwind_Resume(exception_object);
}

void operations_research::sat::LinearProgrammingConstraint::AddZeroHalfCuts(operations_research::sat::LinearProgrammingConstraint *this)
{
  if ((operations_research::TimeLimit::LimitReached(*(this + 2964)) & 1) == 0)
  {
    *(this + 2931) = *(this + 2930);
    v2 = *(this + 2933);
    *(this + 2934) = v2;
    v3 = *(this + 2936);
    *(this + 2937) = v3;
    v4 = *(this + 2954);
    v5 = *(this + 2955);
    if (v4 == v5)
    {
      v8 = v3;
      v7 = v2;
    }

    else
    {
      do
      {
        v6 = *v4++;
        std::vector<double>::push_back[abi:ne200100](this + 23440, (**(this + 3045) + 8 * v6));
        __p = *(*(*(this + 2965) + 152) + 24 * v6);
        std::vector<long long>::push_back[abi:ne200100](this + 23464, &__p);
        __p = -*(*(*(this + 2965) + 152) + 24 * (v6 ^ 1));
        std::vector<long long>::push_back[abi:ne200100](this + 23488, &__p);
      }

      while (v4 != v5);
      v7 = *(this + 2933);
      v2 = *(this + 2934);
      v8 = *(this + 2936);
      v9 = *(this + 2937);
    }

    operations_research::sat::ZeroHalfCutHelper::ProcessVariables(this + 2751, this + 23440, v7, (v2 - v7) >> 3, v8);
    if (((*(this + 66) - *(this + 65)) >> 5) >= 1)
    {
      v10 = 0;
      v11 = 0;
      do
      {
        if ((operations_research::glop::RevisedSimplex::GetConstraintStatus(this + 1368, v11) | 4) != 4)
        {
          v12 = *(this + 65) + v10;
          operations_research::sat::ZeroHalfCutHelper::AddOneConstraint(this + 22008, v11, (*(this + 48) + 4 * *(v12 + 16)), *(v12 + 20), (*(this + 51) + 8 * *(v12 + 16)), *(v12 + 20), *v12, *(v12 + 8));
        }

        ++v11;
        v10 += 32;
      }

      while (v11 < ((*(this + 66) - *(this + 65)) >> 5));
    }

    v13 = *(this + 2972);
    operations_research::sat::ZeroHalfCutHelper::InterestingCandidates((this + 22008), &__p);
    v14 = __p;
    v15 = v22;
    if (__p != v22)
    {
      do
      {
        if (operations_research::TimeLimit::LimitReached(*(this + 2964)))
        {
          break;
        }

        operations_research::sat::LinearProgrammingConstraint::AddCutFromConstraints(this, "ZERO_HALF", 9, v14);
        v14 += 3;
      }

      while (v14 != v15);
      v14 = __p;
    }

    if (v14)
    {
      v16 = v22;
      v17 = v14;
      if (v22 != v14)
      {
        v18 = v22;
        do
        {
          v20 = *(v18 - 3);
          v18 -= 3;
          v19 = v20;
          if (v20)
          {
            *(v16 - 2) = v19;
            operator delete(v19);
          }

          v16 = v18;
        }

        while (v18 != v14);
        v17 = __p;
      }

      v22 = v14;
      operator delete(v17);
    }
  }
}

void sub_23CC45FCC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::vector<int>>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::LinearProgrammingConstraint::Propagate(operations_research::sat::LinearProgrammingConstraint *this)
{
  if (*(this + 24896) == 1 && (operations_research::TimeLimit::LimitReached(*(this + 2964)) & 1) == 0)
  {
    v2 = *(this + 2955) - *(this + 2954);
    if ((v2 >> 2) >= 1)
    {
      v3 = 0;
      v4 = (v2 >> 2) & 0x7FFFFFFF;
      do
      {
        v5 = *(*(this + 2965) + 40);
        v6 = 8 * *(*(this + 2954) + 4 * v3);
        v7 = *(v5 + v6);
        v8 = v7;
        if (v7 < 0x8000000000000003)
        {
          v8 = -INFINITY;
        }

        if (v7 <= 0x7FFFFFFFFFFFFFFDLL)
        {
          v9 = v8;
        }

        else
        {
          v9 = INFINITY;
        }

        v10 = -*(v5 + (v6 ^ 8));
        v11 = v10;
        if (v10 < 0x8000000000000003)
        {
          v11 = -INFINITY;
        }

        if (v10 <= 0x7FFFFFFFFFFFFFFDLL)
        {
          v12 = v11;
        }

        else
        {
          v12 = INFINITY;
        }

        v13 = operations_research::glop::LpScalingHelper::VariableScalingFactor(this + 21936, v3);
        operations_research::glop::LinearProgram::SetVariableBounds(this + 920, v3++, v13 * v9, v13 * v12);
      }

      while (v4 != v3);
    }

    if ((*(*(this + 2966) + 8) & 0xFFFFFFF) != 0)
    {
      v14 = *(this + 2741);
    }

    else
    {
      v14 = *(*(this + 2962) + 828);
    }

    *(this + 92) = v14;
    *(this + 146) |= 0x2000000u;
    operations_research::glop::RevisedSimplex::SetParameters((this + 1368), (this + 568));
  }

  return 1;
}

uint64_t operations_research::BinarySearch<int>(uint64_t a1, int a2, uint64_t a3)
{
  v3 = a1;
  v4 = (a1 + a2 + 1) >> 1;
  if (v4 != a1 && v4 != a2)
  {
    v7 = a2;
    v8 = 1000001;
    while (--v8)
    {
      v12[0] = v4;
      v9 = *(a3 + 24);
      if (!v9)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      if ((*(*v9 + 48))(v9, v12))
      {
        v3 = v4;
      }

      else
      {
        v7 = v4;
        v3 = v3;
      }

      v4 = (v3 + v7 + 1) >> 1;
      if (v4 == v3 || v4 == v7)
      {
        return v3;
      }
    }

    absl::lts_20240722::log_internal::LogMessage::LogMessage(v12, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/algorithms/binary_search.h", 224, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v12, "The binary search seems to loop forever! This indicates that your input types don't converge when repeatedly taking the midpoint", 0x80uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v12);
  }

  return v3;
}

uint64_t std::function<BOOL ()(int)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t operations_research::sat::LinearProgrammingConstraint::AdjustNewLinearConstraint(uint64_t result, unsigned int **a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = a2[1];
  if (*a2 == v5)
  {
    return result;
  }

  v8 = result;
  v9 = 0;
  while (2)
  {
    v70 = v9;
LABEL_6:
    v10 = *(v4 + 1);
    if (!v10)
    {
      goto LABEL_5;
    }

    v11 = *v4;
    v12 = v11 << 32;
    v13 = *(v8[68] + 8 * v11);
    v14 = 1000000000000000000 / v13 - (1000000000000000000 / v13 * v13 > 1000000000000000000);
    v15 = v8[65] + (v12 >> 27);
    v16 = *(v15 + 8);
    if (v16 == *v15)
    {
      v17 = v14;
      if (v10 > 0)
      {
        v18 = v14;
        if (!v16)
        {
          goto LABEL_44;
        }

LABEL_21:
        v19 = *a4;
        if (v16 >= 0)
        {
          v20 = v16;
        }

        else
        {
          v20 = -v16;
        }

        v21 = v19 <= 0;
        if (v19 < 0)
        {
          v19 = -v19;
        }

        v22 = !v21;
        v23 = (1000000000000000000 - v19) & ~((1000000000000000000 - v19) >> 63);
        result = v23 / v20 * v20;
        v24 = v23 / v20 - (result > v23);
        v25 = 1000000000000000000 / v20 - (1000000000000000000 / v20 * v20 > 1000000000000000000);
        v26 = (v16 > 0) ^ v22;
        if (v24 >= v18)
        {
          v27 = v18;
        }

        else
        {
          v27 = v24;
        }

        if (v25 >= v14)
        {
          v28 = v14;
        }

        else
        {
          v28 = v25;
        }

        if (v24 >= v14)
        {
          v24 = v14;
        }

        if (v25 < v18)
        {
          v18 = v25;
        }

        if (v26)
        {
          v14 = v28;
        }

        else
        {
          v14 = v24;
        }

        if (v26)
        {
          v18 = v27;
        }

        goto LABEL_44;
      }
    }

    else
    {
      if (v10 >= 1)
      {
        if (v10 >= v14)
        {
          v18 = v14;
        }

        else
        {
          v18 = *(v4 + 1);
        }

        if (!v16)
        {
          goto LABEL_44;
        }

        goto LABEL_21;
      }

      if (v14 >= -v10)
      {
        v17 = -v10;
      }

      else
      {
        v17 = v14;
      }
    }

    v16 = *v15;
    v18 = v14;
    v14 = v17;
    if (*v15)
    {
      goto LABEL_21;
    }

LABEL_44:
    v29 = v16;
    if (v16 < 0x8000000000000003)
    {
      v29 = -INFINITY;
    }

    if (v16 > 0x7FFFFFFFFFFFFFFDLL)
    {
      v29 = INFINITY;
    }

    v30 = *(v15 + 20);
    if (v30 < 1)
    {
      v35 = 0.0;
      v33 = 0.0;
      goto LABEL_112;
    }

    v31 = *(v15 + 16);
    v32 = v8[51];
    v33 = 0.0;
    v34 = *(v15 + 20);
    v35 = 0.0;
    result = *(a3 + 56);
    while (1)
    {
      while (1)
      {
        v48 = *(v8[48] + 4 * v31);
        v49 = *(v32 + 8 * v31);
        v50 = *(result + 8 * v48);
        if (v50)
        {
          break;
        }

        v36 = *(v8[2965] + 40);
        v37 = 8 * *(v8[2954] + 4 * v48);
        v38 = *(v36 + v37);
        v39 = -*(v36 + (v37 ^ 8));
        v40 = v39;
        if (v39 >= 0x8000000000000003)
        {
          v41 = v39;
        }

        else
        {
          v41 = -INFINITY;
        }

        if (v39 > 0x7FFFFFFFFFFFFFFDLL)
        {
          v41 = INFINITY;
        }

        v42 = -v49;
        if (v49 < 0x8000000000000003)
        {
          v42 = INFINITY;
        }

        v43 = v38;
        v44 = v33 + v42 * v41;
        if (v38 >= 0x8000000000000003)
        {
          v45 = v38;
        }

        else
        {
          v45 = -INFINITY;
        }

        if (v38 > 0x7FFFFFFFFFFFFFFDLL)
        {
          v45 = INFINITY;
        }

        v46 = v35 + v42 * v45;
        if (v38 < 0x8000000000000003)
        {
          v43 = -INFINITY;
        }

        if (v38 > 0x7FFFFFFFFFFFFFFDLL)
        {
          v43 = INFINITY;
        }

        v47 = -v49;
        if (v49 > 0x7FFFFFFFFFFFFFFDLL)
        {
          v47 = -INFINITY;
        }

        v33 = v33 + v47 * v43;
        if (v39 < 0x8000000000000003)
        {
          v40 = -INFINITY;
        }

        if (v39 > 0x7FFFFFFFFFFFFFFDLL)
        {
          v40 = INFINITY;
        }

        v35 = v35 + v47 * v40;
        if (v49 < 1)
        {
          v35 = v46;
          v33 = v44;
        }

        ++v31;
        if (!--v34)
        {
          goto LABEL_112;
        }
      }

      if (v50 >= 0)
      {
        v51 = *(result + 8 * v48);
      }

      else
      {
        v51 = -v50;
      }

      if (v49 >= 0)
      {
        v52 = *(v32 + 8 * v31);
      }

      else
      {
        v52 = -v49;
      }

      v53 = (1000000000000000000 - v51) & ~((1000000000000000000 - v51) >> 63);
      v54 = v52 * v18;
      if (v49 > 0 != v50 > 0)
      {
        if (v54 > v53)
        {
          v18 = v53 / v52;
          if (!(v14 | (v53 / v52)))
          {
            goto LABEL_110;
          }
        }

        if (v52 * v14 > v51)
        {
          v14 = v51 / v52;
          if (!(v51 / v52) && !v18)
          {
            break;
          }
        }

        goto LABEL_94;
      }

      if (v54 > v51)
      {
        v18 = v51 / v52;
        if (!(v14 | (v51 / v52)))
        {
LABEL_110:
          v14 = 0;
          v18 = 0;
          goto LABEL_112;
        }
      }

      if (v52 * v14 > v53)
      {
        v14 = v53 / v52;
        if (!(v53 / v52) && !v18)
        {
          break;
        }
      }

LABEL_94:
      v55 = *(v8[2954] + 4 * v48);
      v56 = *(v8[2965] + 40);
      if (v50 < 1)
      {
        v57 = -*(v56 + ((8 * v55) ^ 8));
      }

      else
      {
        v57 = *(v56 + 8 * v55);
      }

      v58 = v57;
      if (v57 < 0x8000000000000003)
      {
        v58 = -INFINITY;
      }

      if (v57 > 0x7FFFFFFFFFFFFFFDLL)
      {
        v58 = INFINITY;
      }

      v59 = -v49;
      if (v49 < 0x8000000000000003)
      {
        v59 = INFINITY;
      }

      if (v49 > 0x7FFFFFFFFFFFFFFDLL)
      {
        v59 = -INFINITY;
      }

      v60 = v29 + v59 * v58;
      if (v57)
      {
        v29 = v60;
      }

      ++v31;
      if (!--v34)
      {
        goto LABEL_112;
      }
    }

    v18 = 0;
LABEL_112:
    v61 = v33 + v29;
    v62 = v35 + v29;
    v64 = v61 > -1.0 || v14 < 1;
    if (v62 >= 1.0 && v18 >= 1)
    {
      v65 = v4 + 2;
      if (v64)
      {
        goto LABEL_126;
      }

      v66 = v18;
      if (v18 > 0x7FFFFFFFFFFFFFFDLL)
      {
        v66 = INFINITY;
      }

      v67 = v62 * v66;
      v68 = v14;
      v69 = fabs(v67);
      if (v14 > 0x7FFFFFFFFFFFFFFDLL)
      {
        v68 = INFINITY;
      }

      if (v69 > fabs(v61 * v68))
      {
LABEL_126:
        v14 = -v18;
      }

      else
      {
        v14 &= ~(v14 >> 63);
      }

LABEL_129:
      *v65 = v14 + v10;
      *a4 += v14 * v16;
      result = operations_research::sat::ScatteredIntegerVector::AddLinearExpressionMultiple<false>(a3, v14, (v8[48] + 4 * *(v15 + 16)), v30, (v8[51] + 8 * *(v15 + 16)));
      if ((result & 1) == 0)
      {
        operations_research::sat::LinearProgrammingConstraint::AdjustNewLinearConstraint(v71);
      }

      v4 += 4;
      v9 = 1;
      if (v4 == v5)
      {
LABEL_133:
        ++v8[3105];
        return result;
      }

      continue;
    }

    break;
  }

  if (!v64)
  {
    v65 = v4 + 2;
    goto LABEL_129;
  }

LABEL_5:
  v4 += 4;
  if (v4 != v5)
  {
    goto LABEL_6;
  }

  if (v70)
  {
    goto LABEL_133;
  }

  return result;
}

uint64_t operations_research::sat::ScatteredIntegerVector::AddLinearExpressionMultiple<false>(uint64_t a1, uint64_t a2, int *a3, int a4, uint64_t *a5)
{
  v9 = *(a1 + 56);
  if (*a1 == 1 && (v10 = ((*(a1 + 64) - v9) >> 3) * 0.1, v10 > a4))
  {
    if (a4 >= 1)
    {
      v11 = a4 & 0x7FFFFFFF;
      do
      {
        v12 = *a3;
        v14 = *(a1 + 32);
        v15 = *a3 >> 6;
        v16 = *(v14 + 8 * v15);
        if (((1 << *a3) & v16) != 0)
        {
          *(v14 + 8 * v15) = v16 & ~(1 << v12);
          std::vector<int>::push_back[abi:ne200100](a1 + 8, a3);
          v12 = *a3;
          v9 = *(a1 + 56);
        }

        v13 = *a5++;
        *(v9 + 8 * v12) += v13 * a2;
        ++a3;
        --v11;
      }

      while (v11);
    }

    if (v10 < ((*(a1 + 16) - *(a1 + 8)) >> 2))
    {
      *a1 = 0;
    }
  }

  else
  {
    *a1 = 0;
    if (a4 >= 1)
    {
      v17 = a4 & 0x7FFFFFFF;
      do
      {
        v19 = *a5++;
        v18 = v19;
        LODWORD(v19) = *a3++;
        *(v9 + 8 * v19) += v18 * a2;
        --v17;
      }

      while (v17);
    }
  }

  return 1;
}

uint64_t operations_research::sat::LinearProgrammingConstraint::PropagateLpConstraint(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    operator new();
  }

  if ((*(a2 + 8) & 0x8000000000000000) == 0)
  {
    return 1;
  }

  v3 = *(a1 + 23720);
  v4 = *(v3 + 840);
  v5 = *(v4 + 72);
  v4 += 72;
  *(v4 + 48) = 0;
  *(v4 + 8) = v5;
  operations_research::sat::IntegerTrail::MergeReasonInto(v3, 0, 0, v4);
  return 0;
}

void sub_23CC46F68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16)
  {
    (*(*a16 + 8))(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_23CC46FB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  operations_research::sat::LinearConstraint::~LinearConstraint(va);
  MEMORY[0x23EED9460](v3, v4);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::LinearProgrammingConstraint::ComputeNewLinearConstraint<false>(void *a1, uint64_t a2, uint64_t a3, int64x2_t **this, uint64_t *a5)
{
  *a5 = 0;
  operations_research::sat::ScatteredIntegerVector::ClearAndResize(this, (a1[2955] - a1[2954]) >> 2);
  if ((a3 & 0xFFFFFFFFFFFFFFFLL) == 0)
  {
    return 1;
  }

  v10 = a2 + 16 * a3;
  v11 = a1[65];
  while (1)
  {
    v12 = *a2;
    v22 = v12;
    v13 = (a1[66] - v11) >> 5;
    if (v12 >= v13)
    {
      operations_research::sat::LinearProgrammingConstraint::ComputeNewLinearConstraint<true>(&v22, v13);
    }

    v14 = *(a2 + 8);
    v15 = 32 * v12;
    if ((operations_research::sat::ScatteredIntegerVector::AddLinearExpressionMultiple<false>(this, v14, (a1[48] + 4 * *(v11 + v15 + 16)), *(v11 + v15 + 20), (a1[51] + 8 * *(v11 + v15 + 16))) & 1) == 0)
    {
      break;
    }

    v11 = a1[65];
    v16 = *(v11 + v15 + 8 * (v14 > 0));
    v17 = (v14 * v16) >> 64 == (v14 * v16) >> 63 ? v14 * v16 : ((v16 ^ v14) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
    if (v17 - 0x7FFFFFFFFFFFFFFFLL < 2)
    {
      break;
    }

    v18 = (v17 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
    v19 = __OFADD__(v17, *a5);
    v20 = v17 + *a5;
    if (v19)
    {
      v20 = v18;
    }

    if ((v20 + 0x7FFFFFFFFFFFFFFFLL) >= 0xFFFFFFFFFFFFFFFELL)
    {
      break;
    }

    *a5 = v20;
    a2 += 16;
    if (a2 == v10)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t operations_research::sat::LinearProgrammingConstraint::HeuristicLpReducedCostAverageBranching@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  *a2 = &unk_284F43A70;
  a2[1] = this;
  a2[3] = a2;
  return this;
}

uint64_t operations_research::sat::LinearProgrammingConstraint::LPReducedCostAverageDecision(operations_research::sat::LinearProgrammingConstraint *this, int64_t a2)
{
  v3 = (*(this + 3076) - *(this + 3075)) >> 4;
  v4 = (this + 24528);
  if (*(this + 3069) != *(this + 3070))
  {
    *&v48 = this + 24528;
    DWORD2(v48) = *v4;
    std::vector<std::pair<int *,int>>::push_back[abi:ne200100](this + 24576, &v48);
  }

  v5 = *v4;
  if (*v4 >= v3)
  {
    goto LABEL_15;
  }

  v6 = *(this + 2954);
  v7 = *(*(this + 2965) + 40);
  v8 = (*(this + 3075) + 16 * v5 + 8);
  v9 = v5 - v3;
  while (1)
  {
    v11 = *v8;
    v8 += 4;
    v10 = v11;
    v12 = 8 * *(v6 + 4 * v11);
    if (*(v7 + v12) + *(v7 + (v12 ^ 8)))
    {
      break;
    }

    ++v5;
    if (__CFADD__(v9++, 1))
    {
      goto LABEL_15;
    }
  }

  *v4 = v5;
  if (v10 == -1)
  {
LABEL_15:
    LODWORD(v14) = -1;
    return v14;
  }

  v14 = *(v6 + 4 * v10);
  v15 = *(this + 2957);
  if (v15 > 1)
  {
    v18 = 0;
    _X16 = *(this + 2959);
    __asm { PRFM            #4, [X16] }

    v24 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v14) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v14));
    v25 = vdup_n_s8(v24 & 0x7F);
    v26 = ((v24 >> 7) ^ (_X16 >> 12)) & v15;
    v27 = *(_X16 + v26);
    v28 = vceq_s8(v27, v25);
    if (!v28)
    {
      goto LABEL_21;
    }

LABEL_18:
    a2 = *(this + 2960);
    while (1)
    {
      v29 = (v26 + (__clz(__rbit64(v28)) >> 3)) & v15;
      if (*(a2 + 8 * v29) == v14)
      {
        break;
      }

      v28 &= ((v28 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v28)
      {
LABEL_21:
        while (!*&vceq_s8(v27, 0x8080808080808080))
        {
          v18 += 8;
          v26 = (v18 + v26) & v15;
          v27 = *(_X16 + v26);
          v28 = vceq_s8(v27, v25);
          if (v28)
          {
            goto LABEL_18;
          }
        }

LABEL_48:
        absl::lts_20240722::base_internal::ThrowStdOutOfRange("absl::container_internal::raw_hash_map<>::at", a2);
      }
    }

    v16 = (a2 + 8 * v29);
    if (!(_X16 + v29))
    {
      goto LABEL_48;
    }
  }

  else
  {
    if (*(this + 2958) < 2uLL)
    {
      goto LABEL_48;
    }

    if (*(this + 5918) != v14)
    {
      goto LABEL_48;
    }

    v16 = this + 23672;
    if (!&absl::lts_20240722::container_internal::kSooControl)
    {
      goto LABEL_48;
    }
  }

  a2 = -*(v7 + ((8 * v14) ^ 8));
  v30 = *(v16 + 1);
  v31 = *(this + 3033);
  if (vcvtpd_s64_f64(*(v31 + 8 * v30) + -0.0001) >= a2)
  {
    return v14;
  }

  v32 = *(v7 + 8 * v14);
  if (v15 > 1)
  {
    v34 = 0;
    _X14 = *(this + 2959);
    __asm { PRFM            #4, [X14] }

    v37 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v14) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v14));
    v38 = vdup_n_s8(v37 & 0x7F);
    v39 = ((v37 >> 7) ^ (_X14 >> 12)) & v15;
    v40 = *(_X14 + v39);
    v41 = vceq_s8(v40, v38);
    if (!v41)
    {
      goto LABEL_34;
    }

LABEL_31:
    v42 = *(this + 2960);
    do
    {
      a2 = (v39 + (__clz(__rbit64(v41)) >> 3)) & v15;
      if (*(v42 + 8 * a2) == v14)
      {
        v15 = v42 + 8 * a2;
        v33 = (_X14 + a2);
        goto LABEL_40;
      }

      v43 = v41 & 0x8080808080808080;
      a2 = v43 - 1;
      v41 = (v43 - 1) & v43;
    }

    while (v41);
LABEL_34:
    while (!*&vceq_s8(v40, 0x8080808080808080))
    {
      v34 += 8;
      v39 = (v34 + v39) & v15;
      v40 = *(_X14 + v39);
      v41 = vceq_s8(v40, v38);
      if (v41)
      {
        goto LABEL_31;
      }
    }

    goto LABEL_29;
  }

  v15 = *(this + 2958);
  if (v15 < 2)
  {
LABEL_29:
    v33 = 0;
    goto LABEL_40;
  }

  v15 = this + 23672;
  v33 = &absl::lts_20240722::container_internal::kSooControl;
  if (*(this + 5918) != v14)
  {
    v33 = 0;
    v15 = v14;
  }

LABEL_40:
  if (!v33)
  {
    goto LABEL_48;
  }

  if (v32 < vcvtmd_s64_f64(*(v31 + 8 * *(v15 + 4)) + 0.0001))
  {
    v44 = *(*(this + 3057) + 4 * v10);
    v45 = 0.0;
    v46 = 0.0;
    if (v44 >= 1)
    {
      v46 = *(*(this + 3051) + 8 * v10) / v44;
    }

    v47 = *(*(this + 3060) + 4 * v10);
    if (v47 >= 1)
    {
      v45 = *(*(this + 3054) + 8 * v10) / v47;
    }

    if (v45 >= v46)
    {
      return v14;
    }
  }

  return v14 ^ 1;
}

void operations_research::sat::LinearProgrammingConstraint::~LinearProgrammingConstraint(operations_research::sat::LinearProgrammingConstraint *this)
{
  operations_research::sat::LinearProgrammingConstraint::~LinearProgrammingConstraint(this);

  JUMPOUT(0x23EED9460);
}

{
  *this = &unk_284F43918;
  *(this + 1) = &unk_284F43950;
  v2 = *(this + 3109);
  if (v2)
  {
    *(this + 3110) = v2;
    operator delete(v2);
  }

  v3 = *(this + 3075);
  if (v3)
  {
    *(this + 3076) = v3;
    operator delete(v3);
  }

  *(this + 3067) = &unk_284F42178;
  v4 = *(this + 3072);
  if (v4)
  {
    *(this + 3073) = v4;
    operator delete(v4);
  }

  v5 = *(this + 3069);
  if (v5)
  {
    *(this + 3070) = v5;
    operator delete(v5);
  }

  v6 = *(this + 3063);
  if (v6)
  {
    *(this + 3064) = v6;
    operator delete(v6);
  }

  v7 = *(this + 3060);
  if (v7)
  {
    *(this + 3061) = v7;
    operator delete(v7);
  }

  v8 = *(this + 3057);
  if (v8)
  {
    *(this + 3058) = v8;
    operator delete(v8);
  }

  v9 = *(this + 3054);
  if (v9)
  {
    *(this + 3055) = v9;
    operator delete(v9);
  }

  v10 = *(this + 3051);
  if (v10)
  {
    *(this + 3052) = v10;
    operator delete(v10);
  }

  v11 = *(this + 3047);
  if (!v11)
  {
    goto LABEL_32;
  }

  v12 = *(this + 3048);
  v13 = *(this + 3047);
  if (v12 == v11)
  {
    goto LABEL_31;
  }

  v14 = v12 - 32;
  do
  {
    v15 = *(v12 - 8);
    if (v12 - 32 == v15)
    {
      (*(*v15 + 32))(v15);
      v16 = *(v12 - 56);
      if (!v16)
      {
        goto LABEL_22;
      }

LABEL_29:
      *(v12 - 48) = v16;
      operator delete(v16);
      goto LABEL_22;
    }

    if (v15)
    {
      (*(*v15 + 40))(v15);
    }

    v16 = *(v12 - 56);
    if (v16)
    {
      goto LABEL_29;
    }

LABEL_22:
    v12 -= 64;
    v14 -= 64;
  }

  while (v12 != v11);
  v13 = *(this + 3047);
LABEL_31:
  *(this + 3048) = v11;
  operator delete(v13);
LABEL_32:
  v17 = *(this + 3041);
  if (v17)
  {
    *(this + 3042) = v17;
    operator delete(v17);
  }

  v18 = *(this + 3036);
  if (v18)
  {
    *(this + 3037) = v18;
    operator delete(v18);
  }

  v19 = *(this + 3033);
  if (v19)
  {
    *(this + 3034) = v19;
    operator delete(v19);
  }

  v20 = *(this + 3029);
  if (v20)
  {
    *(this + 3030) = v20;
    operator delete(v20);
  }

  v21 = *(this + 3026);
  if (v21)
  {
    v22 = *(this + 3027);
    v23 = *(this + 3026);
    if (v22 != v21)
    {
      do
      {
        v25 = *--v22;
        v24 = v25;
        *v22 = 0;
        if (v25)
        {
          (*(*v24 + 8))(v24);
        }
      }

      while (v22 != v21);
      v23 = *(this + 3026);
    }

    *(this + 3027) = v21;
    operator delete(v23);
  }

  v26 = *(this + 3022);
  if (v26)
  {
    *(this + 3023) = v26;
    operator delete(v26);
  }

  v27 = *(this + 3019);
  if (v27)
  {
    *(this + 3020) = v27;
    operator delete(v27);
  }

  v28 = *(this + 3016);
  if (v28)
  {
    *(this + 3017) = v28;
    operator delete(v28);
  }

  operations_research::sat::ImpliedBoundsProcessor::~ImpliedBoundsProcessor((this + 23984));
  operations_research::sat::BoolRLTCutHelper::~BoolRLTCutHelper((this + 23792));
  if (*(this + 2957) >= 2uLL)
  {
    operator delete((*(this + 2959) - (*(this + 2958) & 1) - 8));
  }

  v29 = *(this + 2954);
  if (v29)
  {
    *(this + 2955) = v29;
    operator delete(v29);
  }

  v30 = *(this + 2951);
  if (v30)
  {
    *(this + 2952) = v30;
    operator delete(v30);
  }

  v31 = *(this + 2948);
  if (v31)
  {
    *(this + 2949) = v31;
    operator delete(v31);
  }

  v32 = *(this + 2945);
  if (v32)
  {
    *(this + 2946) = v32;
    operator delete(v32);
  }

  v33 = *(this + 2942);
  if (v33)
  {
    *(this + 2943) = v33;
    operator delete(v33);
  }

  v34 = *(this + 2939);
  if (v34)
  {
    *(this + 2940) = v34;
    operator delete(v34);
  }

  v35 = *(this + 2936);
  if (v35)
  {
    *(this + 2937) = v35;
    operator delete(v35);
  }

  v36 = *(this + 2933);
  if (v36)
  {
    *(this + 2934) = v36;
    operator delete(v36);
  }

  v37 = *(this + 2930);
  if (v37)
  {
    *(this + 2931) = v37;
    operator delete(v37);
  }

  v38 = *(this + 2927);
  if (v38)
  {
    *(this + 2928) = v38;
    operator delete(v38);
  }

  v39 = *(this + 2924);
  if (v39)
  {
    operator delete(v39);
  }

  v40 = *(this + 2921);
  if (v40)
  {
    *(this + 2922) = v40;
    operator delete(v40);
  }

  v41 = *(this + 2914);
  if (v41)
  {
    *(this + 2915) = v41;
    operator delete(v41);
  }

  operations_research::sat::IntegerRoundingCutHelper::~IntegerRoundingCutHelper((this + 22864));
  operations_research::sat::FlowCoverCutHelper::~FlowCoverCutHelper((this + 22640));
  operations_research::sat::CoverCutHelper::~CoverCutHelper((this + 22208));
  operations_research::sat::ZeroHalfCutHelper::~ZeroHalfCutHelper((this + 22008));
  v42 = *(this + 2746);
  if (v42)
  {
    *(this + 2747) = v42;
    operator delete(v42);
  }

  v43 = *(this + 2743);
  if (v43)
  {
    *(this + 2744) = v43;
    operator delete(v43);
  }

  operations_research::glop::RevisedSimplex::~RevisedSimplex((this + 1368));
  operations_research::glop::LinearProgram::~LinearProgram((this + 920));
  v44 = *(this + 112);
  if (v44)
  {
    *(this + 113) = v44;
    operator delete(v44);
  }

  operations_research::glop::GlopParameters::~GlopParameters((this + 568));
  v45 = *(this + 68);
  if (v45)
  {
    *(this + 69) = v45;
    operator delete(v45);
  }

  v46 = *(this + 65);
  if (v46)
  {
    *(this + 66) = v46;
    operator delete(v46);
  }

  v47 = *(this + 60);
  if (v47)
  {
    *(this + 61) = v47;
    operator delete(v47);
  }

  v48 = *(this + 57);
  if (v48)
  {
    *(this + 58) = v48;
    operator delete(v48);
  }

  v49 = *(this + 54);
  if (v49)
  {
    *(this + 55) = v49;
    operator delete(v49);
  }

  v50 = *(this + 51);
  if (v50)
  {
    *(this + 52) = v50;
    operator delete(v50);
  }

  v51 = *(this + 48);
  if (v51)
  {
    *(this + 49) = v51;
    operator delete(v51);
  }

  v52 = *(this + 45);
  if (v52)
  {
    v53 = *(this + 46);
    v54 = *(this + 45);
    if (v53 != v52)
    {
      do
      {
        v55 = *(v53 - 1);
        *(v53 - 1) = 0;
        if (v55)
        {
          MEMORY[0x23EED9440](v55, 0x1000C8000313F17);
        }

        v56 = *(v53 - 2);
        *(v53 - 2) = 0;
        if (v56)
        {
          MEMORY[0x23EED9440](v56, 0x1000C8052888210);
        }

        v57 = v53 - 8;
        if (*(v53 - 41) < 0)
        {
          operator delete(*v57);
        }

        v53 -= 8;
      }

      while (v57 != v52);
      v54 = *(this + 45);
    }

    *(this + 46) = v52;
    operator delete(v54);
  }

  v58 = *(this + 42);
  if (v58)
  {
    *(this + 43) = v58;
    operator delete(v58);
  }

  operations_research::sat::LinearConstraintManager::~LinearConstraintManager((this + 16));
}

void non-virtual thunk tooperations_research::sat::LinearProgrammingConstraint::~LinearProgrammingConstraint(operations_research::sat::LinearProgrammingConstraint *this)
{
  operations_research::sat::LinearProgrammingConstraint::~LinearProgrammingConstraint((this - 8));
}

{
  operations_research::sat::LinearProgrammingConstraint::~LinearProgrammingConstraint((this - 8));

  JUMPOUT(0x23EED9460);
}

operations_research::sat::LinearConstraintManager *operations_research::sat::LinearConstraintManager::LinearConstraintManager(operations_research::sat::LinearConstraintManager *this, operations_research::sat::Model *a2)
{
  *this = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(a2);
  v4 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a2);
  *(this + 22) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::EmptyNode(void)::empty_node;
  *(this + 1) = v4;
  *(this + 16) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  *(this + 5) = xmmword_23CE306D0;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 23) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::EmptyNode(void)::empty_node;
  *(this + 24) = 0;
  *(this + 100) = 0;
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 26) = 0;
  *(this + 232) = xmmword_23CE306D0;
  *(this + 33) = operations_research::sat::Model::GetOrCreate<operations_research::TimeLimit>(a2);
  *(this + 34) = operations_research::sat::Model::GetOrCreate<operations_research::sat::ModelLpValues>(a2);
  *(this + 35) = a2;
  *(this + 36) = operations_research::sat::Model::GetOrCreate<operations_research::SolverLogger>(a2);
  *(this + 37) = 0x3FF0000000000000;
  *(this + 76) = 0;
  return this;
}

void sub_23CC47694(_Unwind_Exception *a1)
{
  if (*(v1 + 232) >= 2uLL)
  {
    operator delete((*(v1 + 248) - (*(v1 + 240) & 1) - 8));
    absl::lts_20240722::btree_map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>>::~btree_map(v2);
    if (*(v1 + 80) < 2uLL)
    {
LABEL_3:
      v4 = *(v1 + 56);
      if (!v4)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    absl::lts_20240722::btree_map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>>::~btree_map(v2);
    if (*(v1 + 80) < 2uLL)
    {
      goto LABEL_3;
    }
  }

  operator delete((*(v1 + 96) - (*(v1 + 88) & 1) - 8));
  v4 = *(v1 + 56);
  if (!v4)
  {
LABEL_4:
    absl::StrongVector<operations_research::StrongIndex<operations_research::sat::LinearConstraintManager::ConstraintIndex_index_tag_>,operations_research::sat::LinearConstraintManager::ConstraintInfo,std::allocator<operations_research::sat::LinearConstraintManager::ConstraintInfo>>::~StrongVector((v1 + 32));
    _Unwind_Resume(a1);
  }

LABEL_7:
  *(v1 + 64) = v4;
  operator delete(v4);
  absl::StrongVector<operations_research::StrongIndex<operations_research::sat::LinearConstraintManager::ConstraintIndex_index_tag_>,operations_research::sat::LinearConstraintManager::ConstraintInfo,std::allocator<operations_research::sat::LinearConstraintManager::ConstraintInfo>>::~StrongVector((v1 + 32));
  _Unwind_Resume(a1);
}

void **absl::StrongVector<operations_research::StrongIndex<operations_research::sat::LinearConstraintManager::ConstraintIndex_index_tag_>,operations_research::sat::LinearConstraintManager::ConstraintInfo,std::allocator<operations_research::sat::LinearConstraintManager::ConstraintInfo>>::~StrongVector(void **a1)
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
        v5 = *(v3 - 6);
        *(v3 - 6) = 0;
        if (v5)
        {
          MEMORY[0x23EED9440](v5, 0x1000C8000313F17);
        }

        v6 = *(v3 - 7);
        *(v3 - 7) = 0;
        if (v6)
        {
          MEMORY[0x23EED9440](v6, 0x1000C8052888210);
        }

        v3 -= 80;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

int64_t operations_research::sat::ImpliedBoundsProcessor::ImpliedBoundsProcessor(int64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 4 * a3;
  if (4 * a3 == 28)
  {
    v11 = 8;
  }

  else
  {
    v11 = ((v10 >> 2) - 1) / 7 + (v10 >> 2);
  }

  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>::raw_hash_set(a1, v11);
  if ((a3 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    do
    {
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>::find_or_prepare_insert<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>(a1, a2, v13);
      if (v15 == 1)
      {
        *v14 = *a2;
      }

      ++a2;
      v10 -= 4;
    }

    while (v10);
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = &unk_23CE31C20;
  *(a1 + 64) = 50;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = a4;
  *(a1 + 128) = a5;
  return a1;
}

void sub_23CC478EC(_Unwind_Exception *exception_object)
{
  if (*v1 >= 2uLL)
  {
    operations_research::sat::CpModelPresolver::PresolveBoolAnd(v1);
  }

  _Unwind_Resume(exception_object);
}

double absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>::raw_hash_set(_OWORD *a1, unint64_t a2)
{
  *&result = 1;
  *a1 = xmmword_23CE306D0;
  if (a2 >= 2)
  {
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>::resize_impl(a1, 0xFFFFFFFFFFFFFFFFLL >> __clz(a2));
  }

  return result;
}

void operations_research::sat::ImpliedBoundsProcessor::~ImpliedBoundsProcessor(operations_research::sat::ImpliedBoundsProcessor *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    v3 = *(this + 13);
    v4 = *(this + 12);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        *(v3 - 1) = 0;
        if (v5)
        {
          MEMORY[0x23EED9440](v5, 0x1000C8000313F17);
        }

        v6 = *(v3 - 2);
        *(v3 - 2) = 0;
        if (v6)
        {
          MEMORY[0x23EED9440](v6, 0x1000C8052888210);
        }

        v7 = v3 - 8;
        if (*(v3 - 41) < 0)
        {
          operator delete(*v7);
        }

        v3 -= 8;
      }

      while (v7 != v2);
      v4 = *(this + 12);
    }

    *(this + 13) = v2;
    operator delete(v4);
  }

  v8 = *(this + 9);
  if (v8)
  {
    *(this + 10) = v8;
    operator delete(v8);
  }

  if (*(this + 4))
  {
    operator delete((*(this + 6) - (*(this + 5) & 1) - 8));
  }

  if (*this >= 2uLL)
  {
    operator delete((*(this + 2) - (*(this + 1) & 1) - 8));
  }
}

void operations_research::sat::ZeroHalfCutHelper::~ZeroHalfCutHelper(operations_research::sat::ZeroHalfCutHelper *this)
{
  v2 = *(this + 21);
  if (v2)
  {
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
      v7 = *(this + 16);
      do
      {
        v9 = *(v7 - 24);
        v7 -= 24;
        v8 = v9;
        if (v9)
        {
          *(v5 - 16) = v8;
          operator delete(v8);
        }

        v5 = v7;
      }

      while (v7 != v4);
      v6 = *(this + 15);
    }

    *(this + 16) = v4;
    operator delete(v6);
  }

  v10 = *(this + 12);
  if (v10)
  {
    v11 = *(this + 13);
    v12 = *(this + 12);
    if (v11 != v10)
    {
      do
      {
        v13 = *(v11 - 40);
        if (v13)
        {
          *(v11 - 32) = v13;
          operator delete(v13);
        }

        v14 = v11 - 64;
        v15 = *(v11 - 64);
        if (v15)
        {
          *(v11 - 56) = v15;
          operator delete(v15);
        }

        v11 -= 64;
      }

      while (v14 != v10);
      v12 = *(this + 12);
    }

    *(this + 13) = v10;
    operator delete(v12);
  }

  v16 = *(this + 9);
  if (v16)
  {
    *(this + 10) = v16;
    operator delete(v16);
  }

  v17 = *(this + 6);
  if (v17)
  {
    *(this + 7) = v17;
    operator delete(v17);
  }

  v18 = *(this + 3);
  if (v18)
  {
    *(this + 4) = v18;
    operator delete(v18);
  }
}

int64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::sat::LinearProgrammingConstraint *>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::sat::LinearProgrammingConstraint *>>>::find_or_prepare_insert<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>@<X0>(int64_t result@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
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
      if (*(v19 + 16 * v20) == v13)
      {
        *a3 = _X10 + v20;
        *(a3 + 8) = v19 + 16 * v20;
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
    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(result, v14, (v16 + (__clz(__rbit64(v21)) >> 3)) & v3, v6, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::sat::LinearProgrammingConstraint *>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::sat::LinearProgrammingConstraint *>>>::GetPolicyFunctions(void)::value);
    v24 = *(v22 + 24) + 16 * result;
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
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::sat::LinearProgrammingConstraint *>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::sat::LinearProgrammingConstraint *>>>::resize_impl(result, 3);
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

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::sat::LinearProgrammingConstraint *>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::sat::LinearProgrammingConstraint *>>>::resize_impl(uint64_t a1, uint64_t a2)
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
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,16ul,true,true,8ul>(&v7, a1);
}

void std::vector<operations_research::sat::LinearProgrammingConstraint::LinearConstraintInternal>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = a2[1];
    *v3 = *a2;
    v3[1] = v5;
    v6 = (v3 + 2);
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = v3 - *a1;
  v9 = v8 >> 5;
  v10 = (v8 >> 5) + 1;
  if (v10 >> 59)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v11 = v4 - v7;
  if (v11 >> 4 > v10)
  {
    v10 = v11 >> 4;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFE0)
  {
    v12 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (!(v12 >> 59))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v13 = (32 * v9);
  v14 = a2[1];
  *v13 = *a2;
  v13[1] = v14;
  v6 = 32 * v9 + 32;
  memcpy(0, v7, v8);
  *a1 = 0;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

double std::vector<operations_research::sat::CutGenerator>::__emplace_back_slow_path<operations_research::sat::CutGenerator>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 5 > v3)
  {
    v3 = v5 >> 5;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFC0)
  {
    v6 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 58))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v7 = v2 << 6;
  v15 = v7;
  *(&v16 + 1) = 0;
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  *(v7 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v9 = (a2 + 56);
  v8 = *(a2 + 56);
  if (!v8)
  {
    v9 = (v7 + 56);
    goto LABEL_14;
  }

  if (v8 != a2 + 32)
  {
    *((v2 << 6) + 0x38) = v8;
LABEL_14:
    *v9 = 0;
    v10 = v2 << 6;
    goto LABEL_16;
  }

  *((v2 << 6) + 0x38) = (v2 << 6) + 32;
  (*(*v8 + 24))(v8);
  v7 = v15;
  v10 = v2 << 6;
LABEL_16:
  *&v16 = v10 + 64;
  v11 = a1[1];
  v12 = v7 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<operations_research::sat::CutGenerator>,operations_research::sat::CutGenerator*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  result = *&v16;
  *(a1 + 1) = v16;
  if (v13)
  {
    operator delete(v13);
    return *&v16;
  }

  return result;
}

void sub_23CC48838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<operations_research::sat::CutGenerator>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<operations_research::sat::CutGenerator>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 64;
    v4 = *(i - 8);
    if (v4 == i - 32)
    {
      (*(*v4 + 32))(v4);
      v5 = *(i - 56);
      if (!v5)
      {
        continue;
      }

LABEL_10:
      *(i - 48) = v5;
      operator delete(v5);
      continue;
    }

    if (v4)
    {
      (*(*v4 + 40))(v4);
    }

    v5 = *(i - 56);
    if (v5)
    {
      goto LABEL_10;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<operations_research::sat::CutGenerator>,operations_research::sat::CutGenerator*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return;
  }

  v7 = 0;
  v8 = a2;
  do
  {
    v10 = a4 + v7;
    v11 = a2 + v7;
    *v10 = *(a2 + v7);
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    *(v10 + 8) = 0;
    *(v10 + 8) = *(a2 + v7 + 8);
    *(v10 + 24) = *(a2 + v7 + 24);
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    v12 = *(a2 + v7 + 56);
    if (!v12)
    {
      v9 = (v10 + 56);
LABEL_4:
      *v9 = 0;
      goto LABEL_5;
    }

    if (v11 + 32 != v12)
    {
      v9 = (v8 + 56);
      *(v10 + 56) = v12;
      goto LABEL_4;
    }

    *(v10 + 56) = v10 + 32;
    (*(**(v11 + 56) + 24))(*(v11 + 56));
LABEL_5:
    v8 += 64;
    v7 += 64;
  }

  while (a2 + v7 != a3);
  if (a2 != a3)
  {
    v13 = a2 + 32;
    for (i = v13; ; i += 64)
    {
      v16 = *(i + 24);
      if (i != v16)
      {
        break;
      }

      (*(*v16 + 32))(v16);
      v17 = *(i - 24);
      if (v17)
      {
        goto LABEL_19;
      }

LABEL_12:
      v15 = i + 32;
      v13 += 64;
      if (v15 == a3)
      {
        return;
      }
    }

    if (v16)
    {
      (*(*v16 + 40))(v16);
    }

    v17 = *(i - 24);
    if (!v17)
    {
      goto LABEL_12;
    }

LABEL_19:
    *(i - 16) = v17;
    operator delete(v17);
    goto LABEL_12;
  }
}

char *std::vector<operations_research::sat::IntegerLiteral>::__assign_with_size[abi:ne200100]<operations_research::sat::IntegerLiteral*,operations_research::sat::IntegerLiteral*>(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 4)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v6 >> 3;
      if (v6 >> 3 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFF0;
      v11 = 0xFFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 60))
      {
        operator new();
      }
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 4)
  {
    v16 = a3 - a2;
    if (v16)
    {
      v17 = result;
      memmove(result, a2, v16);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

void std::vector<operations_research::sat::CutTerm>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0x6DB6DB6DB6DB6DB7 * ((v3 - v4) >> 3) >= a2)
  {
    v10 = 56 * a2;
    if (56 * a2)
    {
      bzero(*(a1 + 8), 56 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 3);
    if (v5 + a2 > 0x492492492492492)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v6 = 0x6DB6DB6DB6DB6DB7 * ((v3 - *a1) >> 3);
    v7 = 2 * v6;
    if (2 * v6 <= v5 + a2)
    {
      v7 = v5 + a2;
    }

    if (v6 >= 0x249249249249249)
    {
      v8 = 0x492492492492492;
    }

    else
    {
      v8 = v7;
    }

    if (v8)
    {
      if (v8 <= 0x492492492492492)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = 56 * v5;
    v12 = 56 * a2;
    if (56 * a2)
    {
      bzero(v11, v12);
      v9 = v11 + v12;
    }

    else
    {
      v9 = v11;
    }

    v13 = *a1;
    v14 = *(a1 + 8) - *a1;
    v15 = (v11 - v14);
    memcpy(v15, *a1, v14);
    *a1 = v15;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v13)
    {

      operator delete(v13);
    }
  }
}

__n128 std::__function::__func<operations_research::sat::LinearProgrammingConstraint::ScaleLpMultiplier(BOOL,BOOL,std::vector<std::pair<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double>> const&,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> *,long long)::$_0,std::allocator<operations_research::sat::LinearProgrammingConstraint::ScaleLpMultiplier(BOOL,BOOL,std::vector<std::pair<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double>> const&,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> *,long long)::$_0>,BOOL ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F439E0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

BOOL std::__function::__func<operations_research::sat::LinearProgrammingConstraint::ScaleLpMultiplier(BOOL,BOOL,std::vector<std::pair<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double>> const&,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> *,long long)::$_0,std::allocator<operations_research::sat::LinearProgrammingConstraint::ScaleLpMultiplier(BOOL,BOOL,std::vector<std::pair<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double>> const&,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> *,long long)::$_0>,BOOL ()(int)>::operator()(uint64_t a1, int *a2)
{
  v2 = *a2;
  if (*a2 > 62)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = **(a1 + 16);
  v6 = **(a1 + 24);
  v7 = v4[2951];
  v8 = v4[2952];
  if (v7 != v8)
  {
    v9 = 0;
    while (1)
    {
      v10 = fabs(round(ldexp(v7[1], v2)));
      if (v10 >= 9.22337204e18)
      {
        return 0;
      }

      v11 = *(v4[68] + 8 * *v7);
      v12 = (v10 * v11) >> 64 == (v10 * v11) >> 63 ? v10 * v11 : ((v11 ^ v10) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
      v13 = __OFADD__(v9, v12);
      v14 = v9 + v12;
      v9 = v13 ? (v9 >> 63) + 0x7FFFFFFFFFFFFFFFLL : v14;
      if (v9 >= v6)
      {
        return 0;
      }

      v7 += 2;
      if (v7 == v8)
      {
        if (v5)
        {
          goto LABEL_17;
        }

        return v9 < v6;
      }
    }
  }

  v9 = 0;
  if (**(a1 + 16))
  {
LABEL_17:
    v15 = v4[64];
    if (((1 << v2) * v15) >> 64 == ((1 << v2) * v15) >> 63)
    {
      v16 = (1 << v2) * v15;
    }

    else
    {
      v16 = ((v15 ^ (1 << v2)) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
    }

    v13 = __OFADD__(v9, v16);
    v17 = v9 + v16;
    if (v13)
    {
      v9 = (v9 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v17;
    }

    if (v9 >= v6)
    {
      return 0;
    }
  }

  return v9 < v6;
}

uint64_t std::__function::__func<operations_research::sat::LinearProgrammingConstraint::ScaleLpMultiplier(BOOL,BOOL,std::vector<std::pair<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double>> const&,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> *,long long)::$_0,std::allocator<operations_research::sat::LinearProgrammingConstraint::ScaleLpMultiplier(BOOL,BOOL,std::vector<std::pair<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double>> const&,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> *,long long)::$_0>,BOOL ()(int)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK19operations_research3sat27LinearProgrammingConstraint17ScaleLpMultiplierEbbRKNSt3__16vectorINS2_4pairINS_11StrongIndexINS_4glop19RowIndex_index_tag_EEEdEENS2_9allocatorIS9_EEEEPNS_11StrongInt64INS0_25IntegerValue_integer_tag_EEExE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK19operations_research3sat27LinearProgrammingConstraint17ScaleLpMultiplierEbbRKNSt3__16vectorINS2_4pairINS_11StrongIndexINS_4glop19RowIndex_index_tag_EEEdEENS2_9allocatorIS9_EEEEPNS_11StrongInt64INS0_25IntegerValue_integer_tag_EEExE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK19operations_research3sat27LinearProgrammingConstraint17ScaleLpMultiplierEbbRKNSt3__16vectorINS2_4pairINS_11StrongIndexINS_4glop19RowIndex_index_tag_EEEdEENS2_9allocatorIS9_EEEEPNS_11StrongInt64INS0_25IntegerValue_integer_tag_EEExE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK19operations_research3sat27LinearProgrammingConstraint17ScaleLpMultiplierEbbRKNSt3__16vectorINS2_4pairINS_11StrongIndexINS_4glop19RowIndex_index_tag_EEEdEENS2_9allocatorIS9_EEEEPNS_11StrongInt64INS0_25IntegerValue_integer_tag_EEExE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__func<operations_research::sat::LinearProgrammingConstraint::HeuristicLpReducedCostAverageBranching(void)::$_0,std::allocator<operations_research::sat::LinearProgrammingConstraint::HeuristicLpReducedCostAverageBranching(void)::$_0>,operations_research::sat::IntegerLiteral ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F43A70;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::LinearProgrammingConstraint::HeuristicLpReducedCostAverageBranching(void)::$_0,std::allocator<operations_research::sat::LinearProgrammingConstraint::HeuristicLpReducedCostAverageBranching(void)::$_0>,operations_research::sat::IntegerLiteral ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat27LinearProgrammingConstraint38HeuristicLpReducedCostAverageBranchingEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat27LinearProgrammingConstraint38HeuristicLpReducedCostAverageBranchingEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat27LinearProgrammingConstraint38HeuristicLpReducedCostAverageBranchingEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat27LinearProgrammingConstraint38HeuristicLpReducedCostAverageBranchingEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

operations_research::sat::EnforcementPropagator *operations_research::sat::EnforcementPropagator::EnforcementPropagator(operations_research::sat::EnforcementPropagator *this, operations_research::sat::Model *a2)
{
  strcpy(this + 8, "EnforcementPropagator");
  *(this + 31) = 21;
  *(this + 4) = 0xFFFFFFFFLL;
  *this = &unk_284F43B00;
  v4 = operations_research::sat::Model::GetOrCreate<operations_research::sat::Trail>(a2);
  *(this + 5) = v4;
  *(this + 6) = v4 + 16;
  *(this + 7) = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a2);
  v5 = operations_research::sat::Model::GetOrCreate<operations_research::sat::RevIntRepository>(a2);
  *(this + 72) = 0u;
  *(this + 8) = v5;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 180) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 264) = 0u;
  v6 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a2);
  operations_research::sat::SatSolver::AddPropagator(v6, this);
  v8 = 0;
  std::vector<int>::push_back[abi:ne200100](this + 72, &v8);
  return this;
}

void sub_23CC49260(_Unwind_Exception *a1)
{
  v5 = *(v1 + 256);
  if (v5)
  {
    *(v1 + 264) = v5;
    operator delete(v5);
    v6 = *(v1 + 232);
    if (!v6)
    {
LABEL_3:
      absl::StrongVector<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,absl::lts_20240722::InlinedVector<int,6ul,std::allocator<int>>,std::allocator<absl::lts_20240722::InlinedVector<int,6ul,std::allocator<int>>>>::~StrongVector(v3 + 17);
      v7 = *(v1 + 168);
      if (!v7)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v6 = *(v1 + 232);
    if (!v6)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 240) = v6;
  operator delete(v6);
  absl::StrongVector<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,absl::lts_20240722::InlinedVector<int,6ul,std::allocator<int>>,std::allocator<absl::lts_20240722::InlinedVector<int,6ul,std::allocator<int>>>>::~StrongVector(v3 + 17);
  v7 = *(v1 + 168);
  if (!v7)
  {
LABEL_4:
    absl::StrongVector<operations_research::StrongIndex<operations_research::sat::EnforcementId_index_tag_>,std::function<void ()(operations_research::StrongIndex<operations_research::sat::EnforcementId_index_tag_>,operations_research::sat::EnforcementStatus)>,std::allocator<std::function<void ()(operations_research::StrongIndex<operations_research::sat::EnforcementId_index_tag_>,operations_research::sat::EnforcementStatus)>>>::~StrongVector(v3 + 9);
    v8 = *(v1 + 120);
    if (!v8)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(v1 + 176) = v7;
  operator delete(v7);
  absl::StrongVector<operations_research::StrongIndex<operations_research::sat::EnforcementId_index_tag_>,std::function<void ()(operations_research::StrongIndex<operations_research::sat::EnforcementId_index_tag_>,operations_research::sat::EnforcementStatus)>,std::allocator<std::function<void ()(operations_research::StrongIndex<operations_research::sat::EnforcementId_index_tag_>,operations_research::sat::EnforcementStatus)>>>::~StrongVector(v3 + 9);
  v8 = *(v1 + 120);
  if (!v8)
  {
LABEL_5:
    v9 = *(v1 + 96);
    if (!v9)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(v1 + 128) = v8;
  operator delete(v8);
  v9 = *(v1 + 96);
  if (!v9)
  {
LABEL_6:
    v10 = *v3;
    if (!*v3)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(v1 + 104) = v9;
  operator delete(v9);
  v10 = *v3;
  if (!*v3)
  {
LABEL_7:
    *v1 = v2;
    if ((*(v1 + 31) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(v1 + 80) = v10;
  operator delete(v10);
  *v1 = v2;
  if ((*(v1 + 31) & 0x80000000) == 0)
  {
LABEL_8:
    _Unwind_Resume(a1);
  }

LABEL_15:
  operator delete(*(v1 + 8));
  _Unwind_Resume(a1);
}

void **absl::StrongVector<operations_research::StrongIndex<operations_research::sat::EnforcementId_index_tag_>,std::function<void ()(operations_research::StrongIndex<operations_research::sat::EnforcementId_index_tag_>,operations_research::sat::EnforcementStatus)>,std::allocator<std::function<void ()(operations_research::StrongIndex<operations_research::sat::EnforcementId_index_tag_>,operations_research::sat::EnforcementStatus)>>>::~StrongVector(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = v3 - 32;
      do
      {
        v6 = *(v3 - 1);
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
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t operations_research::sat::EnforcementPropagator::Propagate(operations_research::sat::EnforcementPropagator *this, operations_research::sat::Trail *a2)
{
  v3 = *(this + 8);
  v4 = v3[1];
  if (*(this + 25) != v4)
  {
    *(this + 25) = v4;
    if (v3[2] != v3[3])
    {
      *&v47 = this + 192;
      DWORD2(v47) = *(this + 48);
      std::vector<std::pair<int *,int>>::push_back[abi:ne200100]((v3 + 5), &v47);
    }
  }

  v5 = *(this + 9);
  for (i = *(this + 5); v5 < *(i + 12); i = *(this + 5))
  {
    *(this + 9) = v5 + 1;
    v7 = *(*(i + 48) + 4 * v5);
    v8 = *(this + 26);
    if (v7 < ((*(this + 27) - v8) >> 5))
    {
      v9 = (v8 + 32 * v7);
      v11 = (v9 + 1);
      v10 = *v9;
      v12 = v9 + 1;
      if (*v9)
      {
        v12 = *v11;
      }

      if ((v10 & 0x7FFFFFFFFFFFFFFELL) != 0)
      {
        v13 = 0;
        v14 = 4 * (v10 >> 1);
        do
        {
          v48 = *v12;
          v15 = operations_research::sat::EnforcementPropagator::ProcessIdOnTrue(this, v7, v48);
          v46 = v15;
          if (v15 == -1)
          {
            v20 = v9 + 1;
            if (*v9)
            {
              v20 = *v11;
            }

            *(v20 + v13++) = v48;
          }

          else
          {
            v45 = v7;
            if (v15 == v7)
            {
              operations_research::sat::EnforcementPropagator::Propagate(&v46, &v45);
            }

            v16 = (*(this + 26) + 32 * v15);
            v18 = v16 + 1;
            v17 = *v16;
            if (*v16)
            {
              v18 = v16[1];
              v19 = v17 >> 1;
              if (v17 >> 1 == v16[2])
              {
LABEL_22:
                absl::lts_20240722::inlined_vector_internal::Storage<operations_research::sat::Literal,6ul,std::allocator<operations_research::sat::Literal>>::EmplaceBackSlow<operations_research::sat::Literal const&>(v16);
              }
            }

            else
            {
              v19 = v17 >> 1;
              if (v17 >> 1 == 6)
              {
                goto LABEL_22;
              }
            }

            *(v18 + v19) = v48;
            *v16 = v17 + 2;
          }

          v12 = (v12 + 4);
          v14 -= 4;
        }

        while (v14);
        v21 = v13;
      }

      else
      {
        v21 = 0;
      }

      absl::lts_20240722::inlined_vector_internal::Storage<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,6ul,std::allocator<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>>::Resize<absl::lts_20240722::inlined_vector_internal::DefaultValueAdapter<std::allocator<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>>>(v9, v21);
      v22 = (*(this + 26) + 32 * (v7 ^ 1));
      v25 = *v22;
      v24 = (v22 + 1);
      v23 = v25;
      if (v25)
      {
        v24 = *v24;
      }

      if ((v23 & 0x7FFFFFFFFFFFFFFELL) != 0)
      {
        v26 = 4 * (v23 >> 1);
        do
        {
          v27 = *v24;
          v28 = *(this + 15);
          v29 = *(v28 + 4 * v27);
          if (v29)
          {
            if ((*(*(this + 5) + 8) & 0xFFFFFFF) != 0)
            {
              v31 = *(this + 22);
              v30 = *(this + 23);
              if (v31 >= v30)
              {
                v33 = *(this + 21);
                v34 = v31 - v33;
                v35 = (v31 - v33) >> 3;
                v36 = v35 + 1;
                if ((v35 + 1) >> 61)
                {
                  std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                }

                v37 = v30 - v33;
                if (v37 >> 2 > v36)
                {
                  v36 = v37 >> 2;
                }

                if (v37 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v38 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v38 = v36;
                }

                if (v38)
                {
                  if (!(v38 >> 61))
                  {
                    operator new();
                  }

                  std::__throw_bad_array_new_length[abi:ne200100]();
                }

                v39 = v35;
                v40 = (8 * v35);
                v41 = v27 | (v29 << 32);
                v42 = &v40[-v39];
                *v40 = v41;
                v32 = v40 + 1;
                memcpy(v42, v33, v34);
                *(this + 21) = v42;
                *(this + 22) = v32;
                *(this + 23) = 0;
                if (v33)
                {
                  operator delete(v33);
                }
              }

              else
              {
                *v31 = v27 | (v29 << 32);
                v32 = v31 + 8;
              }

              *(this + 22) = v32;
              v28 = *(this + 15);
            }

            *(v28 + 4 * v27) = 0;
            v43 = *(*(this + 18) + 32 * v27 + 24);
            if (v43)
            {
              LODWORD(v47) = v27;
              v48 = 0;
              (*(*v43 + 48))(v43, &v47, &v48);
            }
          }

          ++v24;
          v26 -= 4;
        }

        while (v26);
      }
    }

    v5 = *(this + 9);
  }

  *(this + 48) = (*(this + 22) - *(this + 21)) >> 3;
  return 1;
}

uint64_t operations_research::sat::EnforcementPropagator::ProcessIdOnTrue(void *a1, int a2, uint64_t a3)
{
  v30 = a2;
  v3 = a1[15];
  v4 = 4 * a3;
  v5 = *(v3 + v4);
  v29 = v5;
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = a3;
  v7 = a1[9];
  v8 = *(v7 + 4 * a3);
  v9 = *(v7 + (((a3 << 32) + 0x100000000) >> 30)) - v8;
  if (v9 == 1)
  {
    v31 = 2;
    if (v5 != 2)
    {
      operations_research::sat::EnforcementPropagator::ProcessIdOnTrue(&v29, &v31);
    }

    if ((*(a1[5] + 8) & 0xFFFFFFF) != 0)
    {
      v28[0] = a3 | 0x200000000;
LABEL_6:
      v10 = a1;
      v11 = a3;
      std::vector<long long>::push_back[abi:ne200100]((a1 + 21), v28);
      a1 = v10;
      LODWORD(a3) = v11;
      v3 = v10[15];
      goto LABEL_7;
    }

    goto LABEL_7;
  }

  v14 = (a1[12] + 4 * v8);
  v15 = *v14 != a2;
  if (v14[*v14 != a2] != a2)
  {
    operations_research::sat::EnforcementPropagator::ProcessIdOnTrue(&v14[*v14 != a2], &v30);
  }

  v16 = v14[*v14 == a2];
  v17 = *(a1[6] + 8);
  v18 = *(v17 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8));
  v19 = v16 & 0x3F;
  if ((v18 >> (v19 ^ 1u)))
  {
LABEL_11:
    if ((*(a1[5] + 8) & 0xFFFFFFF) != 0)
    {
      v28[0] = __PAIR64__(v5, a3);
      v20 = a1;
      v21 = a3;
      std::vector<long long>::push_back[abi:ne200100]((a1 + 21), v28);
      a1 = v20;
      LODWORD(a3) = v21;
      v3 = v20[15];
    }

    *(v3 + v4) = 0;
    v13 = *(a1[18] + 32 * v6 + 24);
    if (!v13)
    {
      return 0xFFFFFFFFLL;
    }

    LODWORD(v28[0]) = a3;
    v31 = 0;
    goto LABEL_15;
  }

  if (v9 >= 3)
  {
    v23 = 2;
    do
    {
      v24 = v14[v23];
      v25 = *(v17 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8));
      if ((v25 >> (v24 & 0x3F ^ 1)))
      {
        goto LABEL_11;
      }

      if (((v25 >> (v24 & 0x3E)) & 3) == 0)
      {
        v14[*v14 != a2] = v24;
        v14[v23] = a2;
        return v14[v15];
      }
    }

    while (v9 != ++v23);
  }

  if (((v18 >> v19) & 1) == 0)
  {
    v31 = 1;
    if (v5 != 1)
    {
      operations_research::sat::EnforcementPropagator::ProcessIdOnTrue(&v29, &v31);
    }

    if ((*(a1[5] + 8) & 0xFFFFFFF) != 0)
    {
      v28[0] = a3 | 0x100000000;
      v26 = a1;
      v27 = a3;
      std::vector<long long>::push_back[abi:ne200100]((a1 + 21), v28);
      a1 = v26;
      LODWORD(a3) = v27;
      v3 = v26[15];
    }

    v12 = 2;
    *(v3 + v4) = 2;
    v13 = *(a1[18] + 32 * v6 + 24);
    if (!v13)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_8;
  }

  if (v5 == 3)
  {
    return 0xFFFFFFFFLL;
  }

  if ((*(a1[5] + 8) & 0xFFFFFFF) != 0)
  {
    v28[0] = __PAIR64__(v5, a3);
    goto LABEL_6;
  }

LABEL_7:
  v12 = 3;
  *(v3 + v4) = 3;
  v13 = *(a1[18] + 32 * v6 + 24);
  if (v13)
  {
LABEL_8:
    LODWORD(v28[0]) = a3;
    v31 = v12;
LABEL_15:
    (*(*v13 + 48))(v13, v28, &v31);
  }

  return 0xFFFFFFFFLL;
}

void operations_research::sat::EnforcementPropagator::Untrail(operations_research::sat::EnforcementPropagator *this, const operations_research::sat::Trail *a2, int a3)
{
  v5 = *(this + 21);
  v6 = this + 168;
  v7 = *(this + 22) - v5;
  v8 = (v7 >> 3) - 1;
  LODWORD(v9) = *(this + 48);
  if (v8 >= v9)
  {
    do
    {
      v13 = *(*(this + 21) + 8 * v8);
      *(*(this + 15) + 4 * v13) = HIDWORD(v13);
      v14 = *(*(this + 18) + 32 * v13 + 24);
      if (v14)
      {
        v16 = HIDWORD(v13);
        v17 = v13;
        (*(*v14 + 48))(v14, &v17, &v16);
        LODWORD(v9) = *(this + 48);
      }

      --v8;
    }

    while (v8 >= v9);
    v5 = *(this + 21);
    v9 = v9;
    v15 = (*(this + 22) - v5) >> 3;
    v11 = v9 >= v15;
    v12 = v9 - v15;
    if (v9 > v15)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = v9;
    v10 = v7 >> 3;
    v11 = v9 >= v10;
    v12 = v9 - v10;
    if (v9 > v10)
    {
LABEL_3:
      std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::__append(v6, v12);
LABEL_4:
      *(this + 9) = a3;
      return;
    }
  }

  if (v11)
  {
    goto LABEL_4;
  }

  *(this + 22) = v5 + 8 * v9;
  *(this + 9) = a3;
}

uint64_t std::function<void ()(operations_research::StrongIndex<operations_research::sat::EnforcementId_index_tag_>,operations_research::sat::EnforcementStatus)>::operator()(uint64_t a1, int a2, int a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

uint64_t operations_research::sat::EnforcementPropagator::Register(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v6 = (a1 + 232);
  *(a1 + 240) = *(a1 + 232);
  if ((a3 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v7 = a2;
    v8 = 0;
    v9 = 0;
    v10 = &a2[a3];
    v11 = *(*(a1 + 40) + 8) & 0xFFFFFFF;
    while (1)
    {
      LODWORD(v91[0]) = *v7;
      v12 = (LODWORD(v91[0]) | 1) + 1;
      v14 = *(a1 + 208);
      v13 = *(a1 + 216);
      v15 = (v13 - v14) >> 5;
      if (v12 > v15)
      {
        if (v12 <= v15)
        {
          if (v12 < v15)
          {
            v16 = v14 + 32 * v12;
            if (v13 != v16)
            {
              v17 = *(a1 + 216);
              do
              {
                v18 = *(v17 - 32);
                v17 -= 32;
                if (v18)
                {
                  operator delete(*(v13 - 24));
                }

                v13 = v17;
              }

              while (v17 != v16);
            }

            *(a1 + 216) = v16;
          }
        }

        else
        {
          std::vector<absl::lts_20240722::InlinedVector<operations_research::sat::Literal,6ul,std::allocator<operations_research::sat::Literal>>>::__append((a1 + 208), v12 - v15);
        }
      }

      v19 = *(*(*(a1 + 48) + 8) + ((SLODWORD(v91[0]) >> 3) & 0x1FFFFFFFFFFFFFF8));
      if ((v19 >> SLOBYTE(v91[0])))
      {
        if (!v11 || (*(*(*(a1 + 40) + 96) + 8 * (SLODWORD(v91[0]) >> 1)) & 0xFFFFFFF) == 0)
        {
          goto LABEL_4;
        }

        ++v8;
      }

      else if ((v19 >> (v91[0] & 0x3F ^ 1u)))
      {
        if (!v11 || (*(*(*(a1 + 40) + 96) + 8 * (SLODWORD(v91[0]) >> 1)) & 0xFFFFFFF) == 0)
        {
          v20 = 0;
          goto LABEL_25;
        }

        ++v9;
      }

      std::vector<int>::push_back[abi:ne200100](v6, v91);
LABEL_4:
      if (++v7 == v10)
      {
        goto LABEL_24;
      }
    }
  }

  v9 = 0;
  v8 = 0;
LABEL_24:
  v20 = 1;
LABEL_25:
  v21 = *(a1 + 232);
  v22 = *(a1 + 240);
  v23 = 126 - 2 * __clz((v22 - v21) >> 2);
  if (v22 == v21)
  {
    v24 = 0;
  }

  else
  {
    v24 = v23;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,false>(v21, v22, v91, v24, 1);
  v26 = *(a1 + 232);
  v25 = *(a1 + 240);
  if (v26 != v25)
  {
    v27 = v26 + 1;
    while (v27 != v25)
    {
      v29 = *(v27 - 1);
      v28 = *v27++;
      if (v29 == v28)
      {
        v30 = v27 - 2;
        while (v27 != v25)
        {
          v31 = v28;
          v28 = *v27;
          if (v31 != *v27)
          {
            v30[1] = v28;
            ++v30;
          }

          ++v27;
        }

        if (v30 + 1 != v25)
        {
          v25 = v30 + 1;
          *(a1 + 240) = v30 + 1;
        }

        break;
      }
    }
  }

  if ((v20 & 1) == 0)
  {
    v37 = *(a4 + 24);
    if (v37)
    {
      LODWORD(v91[0]) = -1;
      v93 = 0;
LABEL_50:
      (*(*v37 + 48))(v37, v91, &v93);
    }

    return -1;
  }

  if (*v6 == v25)
  {
    v37 = *(a4 + 24);
    if (v37)
    {
      LODWORD(v91[0]) = -1;
      v93 = 3;
      goto LABEL_50;
    }

    return -1;
  }

  v33 = *(a1 + 152);
  v32 = (a1 + 144);
  v34 = *(a1 + 160);
  v92 = (v33 - *(a1 + 144)) >> 5;
  if (v33 >= v34)
  {
    v39 = std::vector<std::function<void ()(operations_research::StrongIndex<operations_research::sat::EnforcementId_index_tag_>,operations_research::sat::EnforcementStatus)>>::__emplace_back_slow_path<std::function<void ()(operations_research::StrongIndex<operations_research::sat::EnforcementId_index_tag_>,operations_research::sat::EnforcementStatus)>>((a1 + 144), a4);
    goto LABEL_58;
  }

  v35 = (a4 + 24);
  v36 = *(a4 + 24);
  if (v36)
  {
    if (v36 == a4)
    {
      *(v33 + 24) = v33;
      (*(**v35 + 24))(*v35, v33);
      goto LABEL_57;
    }

    *(v33 + 24) = v36;
  }

  else
  {
    v35 = (v33 + 24);
  }

  *v35 = 0;
LABEL_57:
  v39 = v33 + 32;
LABEL_58:
  *(a1 + 152) = v39;
  v40 = *(a1 + 232);
  v41 = *(a1 + 240);
  v42 = *(a1 + 232);
  if (v42 == v41)
  {
    operations_research::sat::EnforcementPropagator::Register(v91);
  }

  std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>>(a1 + 96, *(a1 + 104), v42, v41, (v41 - v42) >> 2);
  LODWORD(v91[0]) = (*(a1 + 104) - *(a1 + 96)) >> 2;
  std::vector<int>::push_back[abi:ne200100](a1 + 72, v91);
  if (*(a1 + 240) - *(a1 + 232) == 4)
  {
    v43 = 2;
  }

  else
  {
    v43 = 1;
  }

  LODWORD(v91[0]) = v43;
  std::vector<int>::push_back[abi:ne200100](a1 + 120, v91);
  v44 = *(a1 + 232);
  if (*(a1 + 240) - v44 == 4)
  {
    v45 = (*(a1 + 208) + 32 * *v44);
    v47 = v45 + 1;
    v46 = *v45;
    if ((*v45 & 1) == 0)
    {
LABEL_64:
      v48 = 6;
      goto LABEL_88;
    }
  }

  else
  {
    if ((v92 & 0x80000000) != 0)
    {
      v51 = 0;
    }

    else
    {
      v49 = *(a1 + 72);
      v50 = *(v49 + 4 * v92);
      v51 = (*(a1 + 96) + 4 * v50);
      v52 = *(v49 + (((v92 << 32) + 0x100000000) >> 30)) - v50;
      if (v52)
      {
        v53 = 0;
        v54 = *(*(a1 + 48) + 8);
        v55 = 1;
        while (1)
        {
          v56 = v51[v53];
          v57 = (1 << v56) & *(v54 + ((v56 >> 3) & 0x1FFFFFFFFFFFFFF8));
          if (!v57)
          {
            break;
          }

          v53 = v55;
          if (v52 <= v55++)
          {
LABEL_75:
            if (v57)
            {
              goto LABEL_82;
            }

            goto LABEL_76;
          }
        }

        v59 = *v51;
        *v51 = v56;
        v51[v53] = v59;
        if (v52 <= v55)
        {
LABEL_76:
          if (v52 >= 3)
          {
            v62 = *(*(a1 + 40) + 96);
            v63 = *(v62 + 8 * (v51[1] >> 1)) & 0xFFFFFFF;
            v64 = 2;
            for (i = 2; i < v52; v64 = i)
            {
              v66 = v51[v64];
              v67 = *(v62 + 8 * (v66 >> 1)) & 0xFFFFFFF;
              if (v67 > v63)
              {
                v68 = v51[1];
                v51[1] = v66;
                v51[v64] = v68;
                v63 = v67;
              }

              ++i;
            }
          }

          goto LABEL_82;
        }

        while (1)
        {
          v60 = v55;
          v61 = v51[v55];
          if (((*(v54 + ((v61 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v61) & 1) == 0)
          {
            break;
          }

          v55 = v60 + 1;
          if (v52 <= v60 + 1)
          {
            goto LABEL_75;
          }
        }

        v69 = v51[1];
        v51[1] = v61;
        v51[v60] = v69;
      }
    }

LABEL_82:
    v70 = *(a1 + 208);
    v71 = (v70 + 32 * *v51);
    v73 = v71 + 1;
    v72 = *v71;
    if (*v71)
    {
      v73 = v71[1];
      v74 = v71[2];
    }

    else
    {
      v74 = 6;
    }

    if (v72 >> 1 == v74)
    {
      absl::lts_20240722::inlined_vector_internal::Storage<operations_research::sat::Literal,6ul,std::allocator<operations_research::sat::Literal>>::EmplaceBackSlow<operations_research::sat::Literal const&>(v71);
    }

    *(v73 + (v72 >> 1)) = v92;
    *v71 = v72 + 2;
    v45 = (v70 + 32 * v51[1]);
    v47 = v45 + 1;
    v46 = *v45;
    if ((*v45 & 1) == 0)
    {
      goto LABEL_64;
    }
  }

  v47 = v45[1];
  v48 = v45[2];
LABEL_88:
  if (v46 >> 1 == v48)
  {
    absl::lts_20240722::inlined_vector_internal::Storage<operations_research::sat::Literal,6ul,std::allocator<operations_research::sat::Literal>>::EmplaceBackSlow<operations_research::sat::Literal const&>(v45);
  }

  *(v47 + (v46 >> 1)) = v92;
  *v45 = v46 + 2;
  if (v9 < 1)
  {
    v80 = (*(a1 + 240) - *(a1 + 232)) >> 2;
    if (v80 == v8)
    {
      v81 = v92;
      v82 = *(a1 + 120);
      v83 = 4 * v92;
      v84 = *(v82 + v83);
      if (v84 != 3)
      {
        if ((*(*(a1 + 40) + 8) & 0xFFFFFFF) != 0)
        {
          v91[0] = __PAIR64__(v84, v92);
          std::vector<long long>::push_back[abi:ne200100](a1 + 168, v91);
          v82 = *(a1 + 120);
        }

        *(v82 + v83) = 3;
        v79 = *(*v32 + 32 * v81 + 24);
        if (v79)
        {
          LODWORD(v91[0]) = v81;
          v93 = 3;
          goto LABEL_95;
        }
      }
    }

    else if (v80 == v8 + 1)
    {
      v85 = v92;
      v86 = *(a1 + 120);
      v87 = 4 * v92;
      v88 = *(v86 + v87);
      if (v88 != 2)
      {
        if ((*(*(a1 + 40) + 8) & 0xFFFFFFF) != 0)
        {
          v91[0] = __PAIR64__(v88, v92);
          std::vector<long long>::push_back[abi:ne200100](a1 + 168, v91);
          v86 = *(a1 + 120);
        }

        *(v86 + v87) = 2;
        v89 = *(*v32 + 32 * v85 + 24);
        if (v89)
        {
          LODWORD(v91[0]) = v85;
          v93 = 2;
          (*(*v89 + 48))(v89, v91, &v93);
        }
      }

      if (*(a1 + 240) - *(a1 + 232) == 4)
      {
        v90 = *v32 + 32 * v92;
        if (*(v90 + 24))
        {
          std::function<void ()(operations_research::StrongIndex<operations_research::sat::EnforcementId_index_tag_>,operations_research::sat::EnforcementStatus)>::operator()(v90, v92, 2);
        }
      }
    }
  }

  else
  {
    v75 = v92;
    v76 = *(a1 + 120);
    v77 = 4 * v92;
    v78 = *(v76 + v77);
    if (v78)
    {
      if ((*(*(a1 + 40) + 8) & 0xFFFFFFF) != 0)
      {
        v91[0] = __PAIR64__(v78, v92);
        std::vector<long long>::push_back[abi:ne200100](a1 + 168, v91);
        v76 = *(a1 + 120);
      }

      *(v76 + v77) = 0;
      v79 = *(*v32 + 32 * v75 + 24);
      if (v79)
      {
        LODWORD(v91[0]) = v75;
        v93 = 0;
LABEL_95:
        (*(*v79 + 48))(v79, v91, &v93);
      }
    }
  }

  return v92;
}

uint64_t operations_research::sat::EnforcementPropagator::PropagateWhenFalse(uint64_t a1, unsigned int a2, char *__src, uint64_t a4, char *a5, uint64_t a6)
{
  v12 = *(a1 + 256);
  *(a1 + 264) = v12;
  if ((a2 & 0x80000000) == 0)
  {
    v13 = *(a1 + 72);
    v14 = *(v13 + ((((a2 & 0x7FFFFFFF) << 32) + 0x100000000) >> 30));
    v15 = *(v13 + 4 * (a2 & 0x7FFFFFFF));
    if (v14 != v15)
    {
      v25 = (*(a1 + 96) + 4 * v15);
      v26 = 4 * (v14 - v15);
      v16 = -1;
      while (1)
      {
        v27 = *(*(*(a1 + 48) + 8) + ((*v25 >> 3) & 0x1FFFFFFFFFFFFFF8));
        if ((v27 >> (*v25 & 0x3F ^ 1u)))
        {
          return 1;
        }

        if ((v27 >> (*v25 & 0x3F)))
        {
          LODWORD(v29) = *v25 ^ 1;
          std::vector<int>::push_back[abi:ne200100](a1 + 256, &v29);
        }

        else
        {
          v28 = v16 == -1;
          v16 = *v25;
          if (!v28)
          {
            return 1;
          }
        }

        ++v25;
        v26 -= 4;
        if (!v26)
        {
          v12 = *(a1 + 264);
          goto LABEL_4;
        }
      }
    }
  }

  v16 = -1;
LABEL_4:
  std::vector<operations_research::sat::Literal>::__insert_with_size[abi:ne200100]<operations_research::sat::Literal const*,operations_research::sat::Literal const*>(a1 + 256, v12, __src, &__src[4 * a4], (4 * a4) >> 2);
  if (v16 != -1)
  {
    v17 = *(a1 + 120);
    v18 = *(v17 + 4 * a2);
    if (v18)
    {
      if ((*(*(a1 + 40) + 8) & 0xFFFFFFF) != 0)
      {
        v29 = __PAIR64__(v18, a2);
        std::vector<long long>::push_back[abi:ne200100](a1 + 168, &v29);
        v17 = *(a1 + 120);
      }

      *(v17 + 4 * a2) = 0;
      v19 = *(*(a1 + 144) + 32 * a2 + 24);
      if (v19)
      {
        LODWORD(v29) = a2;
        v30 = 0;
        (*(*v19 + 48))(v19, &v29, &v30);
      }
    }

    operations_research::sat::IntegerTrail::EnqueueLiteral(*(a1 + 56), v16 ^ 1, *(a1 + 256), (*(a1 + 264) - *(a1 + 256)) >> 2, a5, a6);
    return 1;
  }

  v21 = *(a1 + 56);
  v22 = *(a1 + 256);
  v23 = *(a1 + 264);
  v24 = *(v21 + 840);
  *(v24 + 120) = 0;
  std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal const*,operations_research::sat::Literal const*>((v24 + 72), v22, v23, (v23 - v22) >> 2);
  operations_research::sat::IntegerTrail::MergeReasonInto(v21, a5, a6, (v24 + 72));
  return 0;
}

operations_research::sat::LinearPropagator *operations_research::sat::LinearPropagator::LinearPropagator(operations_research::sat::LinearPropagator *this, operations_research::sat::Model *a2)
{
  v13[4] = *MEMORY[0x277D85DE8];
  v4 = this + 8;
  *this = &unk_284F43B40;
  *(this + 1) = &unk_284F43B78;
  *(this + 2) = operations_research::sat::Model::GetOrCreate<operations_research::sat::Trail>(a2);
  *(this + 3) = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a2);
  *(this + 4) = operations_research::sat::Model::GetOrCreate<operations_research::sat::EnforcementPropagator>(a2);
  *(this + 5) = operations_research::sat::Model::GetOrCreate<operations_research::sat::GenericLiteralWatcher>(a2);
  *(this + 6) = operations_research::sat::Model::GetOrCreate<operations_research::TimeLimit>(a2);
  *(this + 7) = operations_research::sat::Model::GetOrCreate<operations_research::sat::RevIntRepository>(a2);
  *(this + 8) = operations_research::sat::Model::GetOrCreate<operations_research::sat::RevIntegerValueRepository>(a2);
  *(this + 9) = operations_research::sat::Model::GetOrCreate<operations_research::sat::PrecedenceRelations>(a2);
  *(this + 10) = operations_research::sat::Model::GetOrCreate<operations_research::sat::ModelRandomGenerator>(a2);
  *(this + 11) = operations_research::sat::Model::GetOrCreate<operations_research::sat::SharedStatistics>(a2);
  v5 = operations_research::sat::GenericLiteralWatcher::Register(*(this + 5), this);
  *(this + 26) = 0;
  *(this + 24) = v5;
  *(this + 25) = 0;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 7) = 0u;
  *(this + 364) = 0u;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  v6 = *(this + 10);
  v13[0] = &unk_284F43C28;
  v13[1] = this;
  v13[3] = v13;
  *(this + 56) = 0;
  *(this + 57) = v6;
  *(this + 61) = this + 464;
  *(this + 58) = &unk_284F43C28;
  *(this + 59) = this;
  *(this + 124) = 0;
  *(this + 158) = 0;
  *(this + 504) = 0u;
  *(this + 520) = 0u;
  *(this + 536) = 0u;
  *(this + 552) = 0u;
  *(this + 568) = 0u;
  *(this + 584) = 0u;
  *(this + 600) = 0u;
  *(this + 612) = 0u;
  *(this + 700) = 0u;
  *(this + 42) = 0u;
  *(this + 43) = 0u;
  *(this + 40) = 0u;
  *(this + 41) = 0u;
  *(this + 780) = 0u;
  *(this + 47) = 0u;
  *(this + 48) = 0u;
  *(this + 45) = 0u;
  *(this + 46) = 0u;
  *(this + 66) = 0u;
  *(this + 65) = 0u;
  *(this + 63) = 0u;
  *(this + 64) = 0u;
  *(this + 61) = 0u;
  *(this + 62) = 0u;
  *(this + 59) = 0u;
  *(this + 60) = 0u;
  *(this + 57) = 0u;
  *(this + 58) = 0u;
  *(this + 55) = 0u;
  *(this + 56) = 0u;
  *(this + 53) = 0u;
  *(this + 54) = 0u;
  *(this + 51) = 0u;
  *(this + 52) = 0u;
  *(this + 50) = 0u;
  v7 = *(this + 3);
  v8 = (*(v7 + 48) - *(v7 + 40)) >> 3;
  v12 = this + 104;
  operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>::ClearAndResize(this + 104, v8);
  std::vector<absl::lts_20240722::LogSink *>::push_back[abi:ne200100](v7 + 744, &v12);
  v9 = *(this + 3);
  v12 = v4;
  std::vector<absl::lts_20240722::LogSink *>::push_back[abi:ne200100](v9 + 768, &v12);
  operations_research::sat::GenericLiteralWatcher::SetPropagatorPriority(*(this + 5), *(this + 24), 0);
  v10 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_23CC4A844(_Unwind_Exception *a1)
{
  v5 = *(v1 + 944);
  if (v5)
  {
    *(v1 + 952) = v5;
    operator delete(v5);
    v6 = *(v1 + 920);
    if (!v6)
    {
LABEL_3:
      v7 = *(v1 + 896);
      if (!v7)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v6 = *(v1 + 920);
    if (!v6)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 928) = v6;
  operator delete(v6);
  v7 = *(v1 + 896);
  if (!v7)
  {
LABEL_4:
    v8 = *(v1 + 872);
    if (!v8)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(v1 + 904) = v7;
  operator delete(v7);
  v8 = *(v1 + 872);
  if (!v8)
  {
LABEL_5:
    v9 = *(v1 + 848);
    if (!v9)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(v1 + 880) = v8;
  operator delete(v8);
  v9 = *(v1 + 848);
  if (!v9)
  {
LABEL_6:
    operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>::~SparseBitset((v1 + 792));
    absl::StrongVector<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,absl::lts_20240722::InlinedVector<int,6ul,std::allocator<int>>,std::allocator<absl::lts_20240722::InlinedVector<int,6ul,std::allocator<int>>>>::~StrongVector((v1 + 768));
    v10 = *(v1 + 744);
    if (!v10)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(v1 + 856) = v9;
  operator delete(v9);
  operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>::~SparseBitset((v1 + 792));
  absl::StrongVector<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,absl::lts_20240722::InlinedVector<int,6ul,std::allocator<int>>,std::allocator<absl::lts_20240722::InlinedVector<int,6ul,std::allocator<int>>>>::~StrongVector((v1 + 768));
  v10 = *(v1 + 744);
  if (!v10)
  {
LABEL_7:
    v11 = *v3;
    if (!*v3)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  operator delete(v10);
  v11 = *v3;
  if (!*v3)
  {
LABEL_8:
    operations_research::sat::ConstraintPropagationOrder::~ConstraintPropagationOrder((v1 + 456));
    std::deque<int>::~deque[abi:ne200100](v1 + 408);
    v12 = *(v1 + 384);
    if (!v12)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v1 + 728) = v11;
  operator delete(v11);
  operations_research::sat::ConstraintPropagationOrder::~ConstraintPropagationOrder((v1 + 456));
  std::deque<int>::~deque[abi:ne200100](v1 + 408);
  v12 = *(v1 + 384);
  if (!v12)
  {
LABEL_9:
    v13 = *(v1 + 352);
    if (!v13)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v1 + 392) = v12;
  operator delete(v12);
  v13 = *(v1 + 352);
  if (!v13)
  {
LABEL_10:
    v14 = *(v1 + 328);
    if (!v14)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(v1 + 360) = v13;
  operator delete(v13);
  v14 = *(v1 + 328);
  if (!v14)
  {
LABEL_11:
    v15 = *(v1 + 304);
    if (!v15)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(v1 + 336) = v14;
  operator delete(v14);
  v15 = *(v1 + 304);
  if (!v15)
  {
LABEL_12:
    v16 = *(v1 + 280);
    if (!v16)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v1 + 312) = v15;
  operator delete(v15);
  v16 = *(v1 + 280);
  if (!v16)
  {
LABEL_13:
    v17 = *(v1 + 256);
    if (!v17)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v1 + 288) = v16;
  operator delete(v16);
  v17 = *(v1 + 256);
  if (!v17)
  {
LABEL_14:
    v18 = *(v1 + 232);
    if (!v18)
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(v1 + 264) = v17;
  operator delete(v17);
  v18 = *(v1 + 232);
  if (!v18)
  {
LABEL_15:
    v19 = *(v1 + 208);
    if (!v19)
    {
      goto LABEL_16;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(v1 + 240) = v18;
  operator delete(v18);
  v19 = *(v1 + 208);
  if (!v19)
  {
LABEL_16:
    std::deque<operations_research::sat::LinearPropagator::ConstraintInfo>::~deque[abi:ne200100](v1 + 160);
    operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>::~SparseBitset(v2);
    _Unwind_Resume(a1);
  }

LABEL_31:
  *(v1 + 216) = v19;
  operator delete(v19);
  std::deque<operations_research::sat::LinearPropagator::ConstraintInfo>::~deque[abi:ne200100](v1 + 160);
  operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>::~SparseBitset(v2);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::Model::GetOrCreate<operations_research::sat::EnforcementPropagator>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::EnforcementPropagator>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::EnforcementPropagator>(void)::d));
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
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::EnforcementPropagator>(void)::d)
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
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::EnforcementPropagator>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::EnforcementPropagator>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
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

void operations_research::sat::LinearPropagator::~LinearPropagator(operations_research::sat::LinearPropagator *this)
{
  *this = &unk_284F43B40;
  *(this + 1) = &unk_284F43B78;
  if (dword_2810BD608 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::sat::LinearPropagator::~LinearPropagator()::$_0::operator() const(void)::site, dword_2810BD608) && *(this + 11))
  {
    operator new();
  }

  v2 = *(this + 118);
  if (v2)
  {
    *(this + 119) = v2;
    operator delete(v2);
  }

  v3 = *(this + 115);
  if (v3)
  {
    *(this + 116) = v3;
    operator delete(v3);
  }

  v4 = *(this + 112);
  if (v4)
  {
    *(this + 113) = v4;
    operator delete(v4);
  }

  v5 = *(this + 109);
  if (v5)
  {
    *(this + 110) = v5;
    operator delete(v5);
  }

  v6 = *(this + 106);
  if (v6)
  {
    *(this + 107) = v6;
    operator delete(v6);
  }

  v7 = *(this + 103);
  if (v7)
  {
    *(this + 104) = v7;
    operator delete(v7);
  }

  v8 = *(this + 100);
  if (v8)
  {
    *(this + 101) = v8;
    operator delete(v8);
  }

  v9 = *(this + 96);
  if (v9)
  {
    v10 = *(this + 97);
    v11 = *(this + 96);
    if (v10 != v9)
    {
      v12 = *(this + 97);
      do
      {
        v13 = *(v12 - 32);
        v12 -= 32;
        if (v13)
        {
          operator delete(*(v10 - 24));
        }

        v10 = v12;
      }

      while (v12 != v9);
      v11 = *(this + 96);
    }

    *(this + 97) = v9;
    operator delete(v11);
  }

  v14 = *(this + 93);
  if (v14)
  {
    operator delete(v14);
  }

  v15 = *(this + 90);
  if (v15)
  {
    *(this + 91) = v15;
    operator delete(v15);
  }

  operations_research::sat::ConstraintPropagationOrder::~ConstraintPropagationOrder((this + 456));
  std::deque<int>::~deque[abi:ne200100](this + 408);
  v16 = *(this + 48);
  if (v16)
  {
    *(this + 49) = v16;
    operator delete(v16);
  }

  v17 = *(this + 44);
  if (v17)
  {
    *(this + 45) = v17;
    operator delete(v17);
  }

  v18 = *(this + 41);
  if (v18)
  {
    *(this + 42) = v18;
    operator delete(v18);
  }

  v19 = *(this + 38);
  if (v19)
  {
    *(this + 39) = v19;
    operator delete(v19);
  }

  v20 = *(this + 35);
  if (v20)
  {
    *(this + 36) = v20;
    operator delete(v20);
  }

  v21 = *(this + 32);
  if (v21)
  {
    *(this + 33) = v21;
    operator delete(v21);
  }

  v22 = *(this + 29);
  if (v22)
  {
    *(this + 30) = v22;
    operator delete(v22);
  }

  v23 = *(this + 26);
  if (v23)
  {
    *(this + 27) = v23;
    operator delete(v23);
  }

  std::deque<operations_research::sat::LinearPropagator::ConstraintInfo>::~deque[abi:ne200100](this + 160);
  v24 = *(this + 17);
  if (v24)
  {
    *(this + 18) = v24;
    operator delete(v24);
  }

  v25 = *(this + 14);
  if (v25)
  {
    *(this + 15) = v25;
    operator delete(v25);
  }
}

{
  operations_research::sat::LinearPropagator::~LinearPropagator(this);

  JUMPOUT(0x23EED9460);
}

void non-virtual thunk tooperations_research::sat::LinearPropagator::~LinearPropagator(operations_research::sat::LinearPropagator *this)
{
  operations_research::sat::LinearPropagator::~LinearPropagator((this - 8));
}

{
  operations_research::sat::LinearPropagator::~LinearPropagator((this - 8));

  JUMPOUT(0x23EED9460);
}

void operations_research::sat::LinearPropagator::SetLevel(operations_research::sat::LinearPropagator *this, int a2)
{
  v4 = *(this + 25);
  if (v4 > a2)
  {
    operations_research::sat::ConstraintPropagationOrder::Clear((this + 456));
    bzero(*(this + 14), *(this + 15) - *(this + 14));
    *(this + 18) = *(this + 17);
    v5 = *(this + 103);
    v6 = *(this + 104);
    if (v5 != v6)
    {
      v7 = *(this + 106);
      do
      {
        v8 = 4 * *v5;
        v9 = *(v7 + v8);
        if (v9 != -1)
        {
          --*(*(this + 109) + 4 * v9);
        }

        *(v7 + v8) = -1;
        ++v5;
      }

      while (v5 != v6);
    }

    operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>::ClearAndResize(this + 792, *(this + 198));
    v12 = *(this + 52);
    v13 = *(this + 53) - v12;
    if (v13)
    {
      v14 = *(this + 55);
      v15 = &v12[v14 >> 10];
      v16 = *v15;
      v17 = (*v15 + 4 * (v14 & 0x3FF));
      v18 = (this + 448);
      v19 = *(v12 + (((*(this + 56) + v14) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(this + 56) + v14) & 0x3FF);
      if (v17 != v19)
      {
        v20 = *(this + 48);
        do
        {
          v21 = *v17++;
          *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v21);
          if (v17 - v16 == 4096)
          {
            v22 = v15[1];
            ++v15;
            v16 = v22;
            v17 = v22;
          }
        }

        while (v17 != v19);
      }
    }

    else
    {
      v18 = (this + 448);
    }

    *v18 = 0;
    v23 = v13 >> 3;
    if (v23 >= 3)
    {
      do
      {
        operator delete(*v12);
        v24 = *(this + 53);
        v12 = (*(this + 52) + 8);
        *(this + 52) = v12;
        v23 = (v24 - v12) >> 3;
      }

      while (v23 > 2);
    }

    if (v23 == 1)
    {
      v25 = 512;
    }

    else
    {
      if (v23 != 2)
      {
        goto LABEL_24;
      }

      v25 = 1024;
    }

    *(this + 55) = v25;
LABEL_24:
    v26 = *(this + 178);
    v27 = *(this + 90);
    v28 = (*(this + 91) - v27) >> 2;
    if (v26 >= v28)
    {
      if (v26 <= v28)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v29 = *(this + 48);
      v30 = v26 + 1;
      v31 = *(this + 178);
      do
      {
        *(v29 + ((*(v27 + 4 * v31) >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << *(v27 + 4 * v31));
        v31 = v30++;
      }

      while (v28 > v31);
      if (v26 <= v28)
      {
        *(this + 91) = v27 + 4 * v26;
        goto LABEL_31;
      }
    }

    std::vector<int>::__append(this + 30, v26 - v28);
    goto LABEL_31;
  }

  if (v4 < a2)
  {
    v10 = (*(this + 91) - *(this + 90)) >> 2;
    *(this + 178) = v10;
    v11 = *(this + 7);
    if (*(v11 + 16) != *(v11 + 24))
    {
      *&v32 = this + 712;
      DWORD2(v32) = v10;
      std::vector<std::pair<int *,int>>::push_back[abi:ne200100](v11 + 40, &v32);
    }
  }

LABEL_31:
  if (*(this + 56) || *(this + 17) != *(this + 18) || *(this + 88))
  {
    operations_research::sat::GenericLiteralWatcher::CallOnNextPropagate(*(this + 5), *(this + 24));
  }

  *(this + 25) = a2;
}

void operations_research::sat::ConstraintPropagationOrder::Clear(operations_research::sat::ConstraintPropagationOrder *this)
{
  v2 = *(this + 18);
  v3 = *(this + 19);
  if (v2 != v3)
  {
    v4 = *(this + 6);
    v5 = *(this + 18);
    do
    {
      v6 = *v5++;
      *(v4 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v6);
    }

    while (v5 != v3);
  }

  *(this + 19) = v2;
  v7 = *(this + 27);
  v8 = *(this + 28) - v7;
  if (v8)
  {
    v9 = *(this + 30);
    v10 = &v7[v9 >> 10];
    v11 = *v10;
    v12 = (*v10 + 4 * (v9 & 0x3FF));
    v13 = (this + 248);
    v14 = *(v7 + (((*(this + 31) + v9) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(this + 31) + v9) & 0x3FF);
    if (v12 != v14)
    {
      v15 = *(this + 23);
      do
      {
        v16 = *v12++;
        *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v16);
        if (v12 - v11 == 4096)
        {
          v17 = v10[1];
          ++v10;
          v11 = v17;
          v12 = v17;
        }
      }

      while (v12 != v14);
    }
  }

  else
  {
    v13 = (this + 248);
  }

  *v13 = 0;
  v18 = v8 >> 3;
  if (v18 >= 3)
  {
    do
    {
      operator delete(*v7);
      v19 = *(this + 28);
      v7 = (*(this + 27) + 8);
      *(this + 27) = v7;
      v18 = (v19 - v7) >> 3;
    }

    while (v18 > 2);
  }

  if (v18 == 1)
  {
    v20 = 512;
  }

  else
  {
    if (v18 != 2)
    {
      return;
    }

    v20 = 1024;
  }

  *(this + 30) = v20;
}

void operations_research::sat::LinearPropagator::OnVariableChange(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = 32 * a2;
  v5 = *(*(a1 + 768) + v4) >> 1;
  if (v5)
  {
    v7 = a2 << 32;
    v8 = *(a1 + 848);
    v9 = 4 * a2;
    v10 = *(v8 + v9);
    if (v10 == a4)
    {
      v11 = a2 >> 6;
      v12 = 1 << a2;
    }

    else
    {
      v38 = a2;
      v11 = a2 >> 6;
      v13 = *(a1 + 800);
      v14 = *(v13 + 8 * v11);
      v12 = 1 << a2;
      if ((v14 & (1 << a2)) == 0)
      {
        *(v13 + 8 * v11) = v14 | v12;
        v15 = a3;
        v16 = a4;
        std::vector<int>::push_back[abi:ne200100](a1 + 824, &v38);
        a4 = v16;
        a3 = v15;
        v10 = *(v8 + v9);
      }

      if (v10 != -1)
      {
        --*(*(a1 + 872) + 4 * v10);
      }

      *(v8 + v9) = a4;
      if (a4 != -1)
      {
        ++*(*(a1 + 872) + 4 * a4);
      }
    }

    v17 = *(a1 + 504);
    v18 = *(v17 + 8 * v11);
    if ((v18 & v12) != 0 && *(*(a1 + 552) + (v7 >> 29)) <= a3)
    {
      *(v17 + 8 * v11) = v18 & ~v12;
      v19 = *(a1 + 576);
      v20 = *(v19 + v9);
      v21 = *(a1 + 608);
      v22 = *(v21 - 4);
      *(*(a1 + 600) + 4 * v20) = v22;
      *(v19 + 4 * v22) = v20;
      *(a1 + 608) = v21 - 4;
    }

    v23 = *(a1 + 384);
    *(*(a1 + 48) + 112) = v5 * 0.000000001 + *(*(a1 + 48) + 112);
    v24 = (*(a1 + 768) + v4);
    v27 = *v24;
    v26 = (v24 + 1);
    v25 = v27;
    if (v27)
    {
      v26 = *v26;
    }

    if ((v25 & 0x7FFFFFFFFFFFFFFELL) != 0)
    {
      v28 = 4 * (v25 >> 1);
      do
      {
        v29 = *v26;
        v30 = *v26 >> 6;
        v31 = *(v23 + 8 * v30);
        if (((1 << *v26) & v31) == 0)
        {
          v32 = *(a1 + 416);
          v33 = *(a1 + 424);
          v34 = *(a1 + 416);
          *(v23 + 8 * v30) = (1 << v29) | v31;
          if (v33 == v34)
          {
            v35 = 0;
          }

          else
          {
            v35 = ((v33 - v34) << 7) - 1;
          }

          v36 = *(a1 + 448);
          v37 = v36 + *(a1 + 440);
          if (v35 == v37)
          {
            std::deque<int>::__add_back_capacity((a1 + 408));
            v34 = *(a1 + 416);
            v36 = *(a1 + 448);
            v37 = *(a1 + 440) + v36;
          }

          *(*(v34 + ((v37 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v37 & 0x3FF)) = v29;
          *(a1 + 448) = v36 + 1;
        }

        ++v26;
        v28 -= 4;
      }

      while (v28);
    }
  }
}

BOOL operations_research::sat::LinearPropagator::Propagate(operations_research::sat::LinearPropagator *this)
{
  v83 = *MEMORY[0x277D85DE8];
  v2 = *(this + 17);
  v3 = *(this + 18);
  while (v2 != v3)
  {
    v4 = *v2;
    if (v4 < ((*(this + 97) - *(this + 96)) >> 5))
    {
      operations_research::sat::LinearPropagator::OnVariableChange(this, v4, *(*(*(this + 3) + 40) + 8 * v4), -1);
    }

    ++v2;
  }

  *(this + 121) = 0;
  v76 = *(this + 48);
  v75 = *(*(this + 2) + 12);
  do
  {
LABEL_7:
    while (1)
    {
      v5 = *(this + 56);
      if (!v5)
      {
        break;
      }

      v6 = *(this + 52);
      v7 = (*(v6 + ((*(this + 55) >> 7) & 0x1FFFFFFFFFFFFF8)))[*(this + 55) & 0x3FFLL];
      v8 = *(this + 55) + 1;
      *(this + 55) = v8;
      *(this + 56) = v5 - 1;
      if (v8 >= 0x800)
      {
        operator delete(*v6);
        *(this + 52) += 8;
        *(this + 55) -= 1024;
      }

      v9 = 1 << v7;
      v81 = v7 >> 6;
      *(v76 + 8 * v81) &= ~(1 << v7);
      v10 = operations_research::sat::LinearPropagator::AnalyzeConstraint(this, v7);
      v79 = v10;
      if (v10 < 0)
      {
        v15 = *(*(this + 21) + 8 * ((*(this + 24) + v7) / 0xAAuLL)) + 24 * ((*(this + 24) + v7) % 0xAAuLL);
        v16 = *(v15 + 8);
        if ((*v15 & 4) != 0)
        {
          v17 = *(this + 32);
        }

        else
        {
          v17 = (*(this + 29) + 8 * v16);
        }

        v48 = *(this + 26);
        *(this + 39) = *(this + 38);
        v49 = *(this + 41);
        *(this + 42) = v49;
        v50 = *v15;
        v51 = v49;
        if (*v15 >= 8u)
        {
          v52 = 0;
          v53 = v48 + 4 * v16;
          do
          {
            v55 = *(v53 + 4 * v52);
            v56 = *(this + 3);
            v57 = *(*(v56 + 64) + 4 * v55);
            v59 = v56 + 40;
            v58 = *(v56 + 40);
            if (v57 >= (*(v59 + 8) - v58) >> 3)
            {
              v60 = *(v58 + 8 * v55);
              v62 = *(this + 39);
              v61 = *(this + 40);
              if (v62 < v61)
              {
                *v62 = v55;
                *(v62 + 1) = v60;
                v54 = (v62 + 16);
              }

              else
              {
                v63 = *(this + 38);
                v64 = v62 - v63;
                v65 = (v62 - v63) >> 4;
                v66 = v65 + 1;
                if ((v65 + 1) >> 60)
                {
                  std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                }

                v67 = v61 - v63;
                if (v67 >> 3 > v66)
                {
                  v66 = v67 >> 3;
                }

                if (v67 >= 0x7FFFFFFFFFFFFFF0)
                {
                  v68 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v68 = v66;
                }

                if (v68)
                {
                  if (!(v68 >> 60))
                  {
                    operator new();
                  }

                  std::__throw_bad_array_new_length[abi:ne200100]();
                }

                v69 = (16 * v65);
                *v69 = v55;
                v69[1] = v60;
                v54 = 16 * v65 + 16;
                memcpy(0, v63, v64);
                *(this + 38) = 0;
                *(this + 39) = v54;
                *(this + 40) = 0;
                if (v63)
                {
                  operator delete(v63);
                }
              }

              *(this + 39) = v54;
              std::vector<long long>::push_back[abi:ne200100](this + 328, v17);
              v50 = *v15;
              v10 = v79;
            }

            ++v52;
            ++v17;
          }

          while (v52 < v50 >> 3);
          v51 = *(this + 41);
          v49 = *(this + 42);
        }

        operations_research::sat::IntegerTrail::RelaxLinearReason(*(this + 3), ~v10, v51, (v49 - v51) >> 3, this + 38);
        ++*(this + 123);
        if ((operations_research::sat::EnforcementPropagator::PropagateWhenFalse(*(this + 4), *(v15 + 4), 0, 0, *(this + 38), (*(this + 39) - *(this + 38)) >> 4) & 1) == 0)
        {
          v71 = 0;
          goto LABEL_74;
        }

        if (*(*(this + 2) + 12) > v75)
        {
          goto LABEL_72;
        }
      }

      else if (v11 >= 1)
      {
        v12 = *(*(this + 21) + 8 * ((*(this + 24) + v7) / 0xAAuLL)) + 24 * ((*(this + 24) + v7) % 0xAAuLL);
        v13 = *(v12 + 8);
        if ((*v12 & 4) != 0)
        {
          v14 = *(this + 32);
        }

        else
        {
          v14 = (*(this + 29) + 8 * v13);
        }

        v18 = (*(this + 26) + 4 * v13);
        v19 = v11 & 0x7FFFFFFF;
        v77 = v7;
        v78 = 1 << v7;
        while (1)
        {
          v21 = *v18++;
          v20 = v21;
          v22 = v21;
          v23 = *v14++;
          v24 = v22 ^ 1;
          v25 = -*(*(*(this + 3) + 40) + 8 * v20) - v10 / v23;
          v26 = (v22 ^ 1) << 32;
          v27 = v20 >> 6;
          v28 = *(this + 63);
          v29 = *(v28 + 8 * v27);
          if ((v29 & (1 << v24)) == 0)
          {
            break;
          }

          v30 = *(this + 69);
          v31 = v26 >> 29;
          if (*(v30 + (v26 >> 29)) < v25)
          {
            v82 = v18;
            v32 = v26 >> 30;
LABEL_38:
            *(v30 + v31) = v25;
            *(*(this + 66) + v32) = v7;
            v42 = *(this + 80);
            v18 = v82;
            v43 = *(v42 + 8 * v81);
            if ((v43 & v9) == 0)
            {
              *(v42 + 8 * v81) = v43 | v9;
              v44 = *(this + 87);
              if (!v44)
              {
                std::deque<int>::__add_front_capacity(this + 664);
                v44 = *(this + 87);
                v10 = v79;
                v7 = v77;
                v18 = v82;
              }

              v45 = *(this + 84);
              v46 = (v45 + 8 * (v44 >> 10));
              if (*(this + 85) == v45)
              {
                v47 = 0;
              }

              else
              {
                v47 = *v46 + 4 * (v44 & 0x3FF);
              }

              if (v47 == *v46)
              {
                v47 = *(v46 - 1) + 4096;
              }

              *(v47 - 4) = v7;
              *(this + 87) = v44 - 1;
              ++*(this + 88);
            }
          }

          if (!--v19)
          {
            goto LABEL_7;
          }
        }

        v82 = v18;
        v80 = v14;
        *(v28 + 8 * v27) = v29 | (1 << v24);
        v33 = *(this + 76);
        v34 = *(this + 75);
        v35 = v33 - v34;
        v32 = v26 >> 30;
        *(*(this + 72) + (v26 >> 30)) = (v33 - v34) >> 2;
        v36 = *(this + 77);
        if (v33 >= v36)
        {
          v38 = v35 >> 2;
          v39 = (v35 >> 2) + 1;
          if (v39 >> 62)
          {
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          v40 = v36 - v34;
          if (v40 >> 1 > v39)
          {
            v39 = v40 >> 1;
          }

          if (v40 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v41 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v41 = v39;
          }

          if (v41)
          {
            if (!(v41 >> 62))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          *(4 * v38) = v24;
          v37 = 4 * v38 + 4;
          memcpy(0, v34, v35);
          *(this + 75) = 0;
          *(this + 76) = v37;
          *(this + 77) = 0;
          if (v34)
          {
            operator delete(v34);
          }

          v10 = v79;
          v7 = v77;
        }

        else
        {
          *v33 = v24;
          v37 = (v33 + 4);
        }

        v9 = v78;
        *(this + 76) = v37;
        v30 = *(this + 69);
        v31 = v26 >> 29;
        v14 = v80;
        goto LABEL_38;
      }
    }

    Id = operations_research::sat::ConstraintPropagationOrder::NextId((this + 456));
    v71 = Id == -1;
    if (Id == -1)
    {
      goto LABEL_74;
    }

    if (!operations_research::sat::LinearPropagator::PropagateOneConstraint(this, Id))
    {
      v71 = 0;
      goto LABEL_74;
    }

    v72 = *(*(this + 2) + 12) <= v75;
    v75 = *(*(this + 2) + 12);
  }

  while (v72);
LABEL_72:
  ++*(this + 131);
  v71 = 1;
LABEL_74:
  *(*(this + 6) + 112) = *(*(this + 6) + 112) + *(this + 121) * 0.000000001;
  operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>::ClearAndResize(this + 104, (*(*(this + 3) + 48) - *(*(this + 3) + 40)) >> 3);
  v73 = *MEMORY[0x277D85DE8];
  return v71;
}

void sub_23CC4C2E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::LinearPropagator::AnalyzeConstraint(operations_research::sat::LinearPropagator *this, int a2)
{
  v2 = this;
  v50 = a2;
  ++*(this + 128);
  v3 = (*(*(this + 21) + 8 * ((*(this + 24) + a2) / 0xAAuLL)) + 24 * ((*(this + 24) + a2) % 0xAAuLL));
  if ((*v3 & 3u) <= 1)
  {
    if ((*v3 & 3) == 0)
    {
      *(*(this + 48) + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
      std::vector<int>::push_back[abi:ne200100](this + 720, &v50);
      v2 = this;
    }

    result = 0;
    ++*(v2 + 133);
    return result;
  }

  v46 = *v3 & 3;
  v5 = v3[2];
  v6 = *(this + 26) + 4 * v5;
  v8 = v3 + 3;
  v7 = v3[3];
  *(this + 121) += v7;
  v9 = *(this + 35);
  v10 = *(*(this + 3) + 40);
  v47 = v3;
  v48 = v9;
  if ((*v3 & 4) == 0)
  {
    v11 = *v8;
    if (*v8 >= 1)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = *(this + 29) + 8 * v5;
      v16 = v3 + 4;
      v17 = 1;
      do
      {
        while (1)
        {
          v20 = *(v6 + 4 * v12);
          v21 = *(v15 + 8 * v12);
          v22 = *(v10 + 8 * v20);
          v23 = *(v10 + 8 * (v20 ^ 1)) + v22;
          if (v23)
          {
            break;
          }

          if (v17)
          {
            v24 = *(v2 + 7);
            if (*(v24 + 16) != *(v24 + 24))
            {
              *&v51 = v8;
              DWORD2(v51) = v11;
              std::vector<std::pair<int *,int>>::push_back[abi:ne200100](v24 + 40, &v51);
              v9 = v48;
              v2 = this;
            }

            v25 = *(v2 + 8);
            if (*(v25 + 16) != *(v25 + 24))
            {
              *&v51 = v16;
              *(&v51 + 1) = *v16;
              std::vector<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> *,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>::push_back[abi:ne200100](v25 + 40, &v51);
              v9 = v48;
              v2 = this;
            }
          }

          v17 = 0;
          v26 = *v8 - 1;
          *v8 = v26;
          v27 = *(v6 + 4 * v12);
          *(v6 + 4 * v12) = *(v6 + 4 * v26);
          *(v6 + 4 * v26) = v27;
          v28 = *v8;
          v29 = *(v15 + 8 * v12);
          *(v15 + 8 * v12) = *(v15 + 8 * v28);
          *(v15 + 8 * v28) = v29;
          *v16 -= v22 * v21;
          v11 = *v8;
          if (v12 >= *v8)
          {
            goto LABEL_33;
          }
        }

        v13 += v22 * v21;
        v18 = v21 * v23;
        v19 = -(v21 * v23);
        *(v9 + 8 * v12) = v19;
        if (v14 <= v19)
        {
          v14 = -v18;
        }

        ++v12;
        v11 = *v8;
      }

      while (v12 < *v8);
      goto LABEL_33;
    }

LABEL_32:
    v14 = 0;
    v13 = 0;
    goto LABEL_33;
  }

  if (v7 < 1)
  {
    goto LABEL_32;
  }

  v30 = 0;
  v13 = 0;
  v14 = 0;
  v31 = v3 + 4;
  v32 = 1;
  do
  {
    while (1)
    {
      v33 = *(v6 + 4 * v30);
      v34 = *(v10 + 8 * v33);
      v35 = *(v10 + 8 * (v33 ^ 1)) + v34;
      if (v35)
      {
        break;
      }

      if (v32)
      {
        v36 = *(v2 + 7);
        if (*(v36 + 16) != *(v36 + 24))
        {
          *&v51 = v8;
          DWORD2(v51) = *v8;
          std::vector<std::pair<int *,int>>::push_back[abi:ne200100](v36 + 40, &v51);
          v9 = v48;
          v2 = this;
        }

        v37 = *(v2 + 8);
        if (*(v37 + 16) != *(v37 + 24))
        {
          *&v51 = v31;
          *(&v51 + 1) = *v31;
          std::vector<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> *,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>::push_back[abi:ne200100](v37 + 40, &v51);
          v9 = v48;
          v2 = this;
        }
      }

      v32 = 0;
      v38 = *v8 - 1;
      *v8 = v38;
      v39 = *(v6 + 4 * v30);
      *(v6 + 4 * v30) = *(v6 + 4 * v38);
      *(v6 + 4 * v38) = v39;
      *v31 -= v34;
      if (v30 >= *v8)
      {
        goto LABEL_33;
      }
    }

    v13 += v34;
    *(v9 + 8 * v30) = -v35;
    if (v14 <= -v35)
    {
      v14 = -v35;
    }

    ++v30;
  }

  while (v30 < *v8);
LABEL_33:
  result = *(v47 + 2) - v13;
  if (v46 == 3 && (result & 0x8000000000000000) == 0 && v14 > result)
  {
    if ((*v47 & 4) != 0)
    {
      v40 = *(v2 + 32);
      v41 = *v8;
      if (*v8 < 1)
      {
        return result;
      }
    }

    else
    {
      v40 = *(v2 + 29) + 8 * v47[2];
      v41 = *v8;
      if (*v8 < 1)
      {
        return result;
      }
    }

    v42 = 0;
    v43 = 0;
    do
    {
      if (*(v9 + 8 * v42) > result)
      {
        v44 = *(v6 + 4 * v42);
        *(v6 + 4 * v42) = *(v6 + 4 * v43);
        *(v6 + 4 * v43) = v44;
        v45 = *(v40 + 8 * v42);
        *(v40 + 8 * v42) = *(v40 + 8 * v43);
        *(v40 + 8 * v43++) = v45;
        v41 = *v8;
      }

      ++v42;
    }

    while (v42 < v41);
  }

  return result;
}

uint64_t operations_research::sat::LinearPropagator::PropagateInfeasibleConstraint(uint64_t a1, int a2, uint64_t a3)
{
  v5 = *(*(a1 + 168) + 8 * ((*(a1 + 192) + a2) / 0xAAuLL)) + 24 * ((*(a1 + 192) + a2) % 0xAAuLL);
  v6 = *(v5 + 8);
  if ((*v5 & 4) != 0)
  {
    v7 = *(a1 + 256);
  }

  else
  {
    v7 = (*(a1 + 232) + 8 * v6);
  }

  v8 = *(a1 + 208);
  *(a1 + 312) = *(a1 + 304);
  v9 = *(a1 + 328);
  *(a1 + 336) = v9;
  v10 = *v5;
  v11 = v9;
  if (*v5 >= 8u)
  {
    v12 = 0;
    v13 = v8 + 4 * v6;
    do
    {
      v14 = *(v13 + 4 * v12);
      v15 = *(a1 + 24);
      v16 = *(*(v15 + 64) + 4 * v14);
      v18 = v15 + 40;
      v17 = *(v15 + 40);
      if (v16 >= (*(v18 + 8) - v17) >> 3)
      {
        v19 = *(v17 + 8 * v14);
        *&v21 = *(v13 + 4 * v12);
        *(&v21 + 1) = v19;
        std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](a1 + 304, &v21);
        std::vector<long long>::push_back[abi:ne200100](a1 + 328, v7);
        v10 = *v5;
      }

      ++v12;
      ++v7;
    }

    while (v12 < v10 >> 3);
    v11 = *(a1 + 328);
    v9 = *(a1 + 336);
  }

  operations_research::sat::IntegerTrail::RelaxLinearReason(*(a1 + 24), ~a3, v11, (v9 - v11) >> 3, (a1 + 304));
  ++*(a1 + 984);
  return operations_research::sat::EnforcementPropagator::PropagateWhenFalse(*(a1 + 32), *(v5 + 4), 0, 0, *(a1 + 304), (*(a1 + 312) - *(a1 + 304)) >> 4);
}

uint64_t operations_research::sat::ConstraintPropagationOrder::NextId(operations_research::sat::ConstraintPropagationOrder *this)
{
  v1 = *(this + 31);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  if (v1 <= 0)
  {
    v3 = 0;
    v10 = *(this + 30);
    v7 = *(this + 27);
    if (*(this + 28) != v7)
    {
      goto LABEL_33;
    }

LABEL_41:
    v35 = 0;
    goto LABEL_43;
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = *(this + 6);
  v7 = *(this + 27);
  v8 = v1 - 1;
  v9 = 0x7FFFFFFF;
  v10 = *(this + 30);
  do
  {
    v11 = (*(v7 + ((v10 >> 7) & 0x1FFFFFFFFFFFFF8)))[v10 & 0x3FF];
    v12 = v10 + 1;
    *(this + 30) = v12;
    *(this + 31) = v8;
    if (v12 >= 0x800)
    {
      operator delete(*v7);
      *(this + 27) += 8;
      *(this + 30) -= 1024;
    }

    v37 = v11;
    v13 = *(this + 4);
    if (!v13)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v14 = (*(*v13 + 48))(v13, &v37);
    if ((v15 & 0x3FFFFFFFFFFFFFFFLL) != 0)
    {
      v16 = 0;
      v17 = (v15 - 1) & 0x3FFFFFFFFFFFFFFFLL;
      if (v17)
      {
        v18 = 0;
        v19 = v17 + 1;
        v20 = (v17 + 1) & 0x7FFFFFFFFFFFFFFELL;
        v21 = (v14 + 4 * v20);
        v22 = (v14 + 4);
        v23 = v20;
        do
        {
          v16 += (*(v6 + ((*(v22 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> *(v22 - 1)) & 1;
          v18 += (*(v6 + ((*v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> *v22) & 1;
          v22 += 2;
          v23 -= 2;
        }

        while (v23);
        v16 += v18;
        if (v19 == v20)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v21 = v14;
      }

      do
      {
        v24 = *v21++;
        v16 += (*(v6 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v24) & 1;
      }

      while (v21 != (v14 + 4 * v15));
    }

    else
    {
      v16 = 0;
    }

LABEL_17:
    if (v16 < v9 || (v16 == v9 ? (v25 = v15 >= v4) : (v25 = 1), !v25))
    {
      if (!v16)
      {
        v3 = v11;
        goto LABEL_45;
      }

      v9 = v16;
      v4 = v15;
      v3 = v11;
    }

    v7 = *(this + 27);
    v26 = *(this + 28);
    if (v26 == v7)
    {
      v27 = 0;
    }

    else
    {
      v27 = ((v26 - v7) << 7) - 1;
    }

    v10 = *(this + 30);
    v8 = *(this + 31);
    v28 = v8 + v10;
    if (v27 == v8 + v10)
    {
      std::deque<int>::__add_back_capacity(this + 26);
      v7 = *(this + 27);
      v26 = *(this + 28);
      v10 = *(this + 30);
      v8 = *(this + 31);
      v28 = v10 + v8;
    }

    (*(v7 + ((v28 >> 7) & 0x1FFFFFFFFFFFFF8)))[v28 & 0x3FF] = v11;
    *(this + 31) = v8 + 1;
    ++v5;
  }

  while (v5 != v1);
  v1 = v8 + 1;
  if (v26 == v7)
  {
    goto LABEL_41;
  }

LABEL_33:
  v29 = &v7[v10 >> 10];
  v30 = *v29 + 4 * (v10 & 0x3FF);
  v31 = *(v7 + (((v1 + v10) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v1 + v10) & 0x3FF);
  if (v30 == v31)
  {
    goto LABEL_41;
  }

  v32 = 0;
  do
  {
    if (*v30 == v3)
    {
      v30 += 4;
      if (v30 - *v29 != 4096)
      {
        continue;
      }
    }

    else
    {
      v33 = v10 + v32++;
      (*(v7 + ((v33 >> 7) & 0x1FFFFFFFFFFFFF8)))[v33 & 0x3FF] = *v30;
      v30 += 4;
      if (v30 - *v29 != 4096)
      {
        continue;
      }
    }

    v34 = v29[1];
    ++v29;
    v30 = v34;
  }

  while (v30 != v31);
  v35 = v32;
LABEL_43:
  std::deque<int>::resize(this + 26, v35);
LABEL_45:
  *(*(this + 23) + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v3);
  return v3;
}

uint64_t operations_research::sat::LinearPropagator::PropagateOneConstraint(operations_research::sat::LinearPropagator *this, int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = operations_research::sat::LinearPropagator::AnalyzeConstraint(this, a2);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v6 = v4;
    if (v4)
    {
      v7 = (*(*(this + 21) + 8 * ((*(this + 24) + a2) / 0xAAuLL)) + 24 * ((*(this + 24) + a2) % 0xAAuLL));
      v8 = v7[2];
      v18 = v7;
      v9 = *v7;
      if ((v9 & 4) != 0)
      {
        v10 = *(this + 32);
      }

      else
      {
        v10 = (*(this + 29) + 8 * v8);
      }

      if ((v9 & 3) != 3)
      {
        operations_research::sat::LinearPropagator::PropagateOneConstraint(v9 & 3);
      }

      v13 = *(this + 26);
      result = operations_research::sat::LinearPropagator::DisassembleSubtree(this, a2, v4);
      if (!result)
      {
        goto LABEL_18;
      }

      if (v6 >= 1)
      {
        v14 = (v13 + 4 * v8);
        v15 = v6 & 0x7FFFFFFF;
        do
        {
          v16 = *v14;
          if (((*(*(this + 63) + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v16 ^ 1u)) & 1) != 0 && *(*(this + 66) + 4 * (v16 ^ 1)) == a2)
          {
            ++*(this + 122);
            v19 = *v18;
            *(*(*(this + 3) + 40) + 8 * v16);
            *v10;
            v20 = *(v18 + 2);
            operator new();
          }

          ++*(this + 130);
          ++v10;
          ++v14;
          --v15;
        }

        while (v15);
      }
    }

    result = 1;
LABEL_18:
    v17 = *MEMORY[0x277D85DE8];
    return result;
  }

  v11 = *MEMORY[0x277D85DE8];

  return operations_research::sat::LinearPropagator::PropagateInfeasibleConstraint(this, a2, v5);
}

void sub_23CC4CFC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  std::function<void ()(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)>::~function(va);
  _Unwind_Resume(a1);
}

_BYTE *absl::lts_20240722::Cleanup<absl::lts_20240722::cleanup_internal::Tag,operations_research::sat::LinearPropagator::Propagate(void)::$_0>::~Cleanup(_BYTE *result)
{
  if (*result == 1)
  {
    v1 = result;
    v2 = *(result + 1);
    *(v2[6] + 112) = *(v2[6] + 112) + v2[121] * 0.000000001;
    operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>::ClearAndResize((v2 + 13), (*(v2[3] + 48) - *(v2[3] + 40)) >> 3);
    result = v1;
    *v1 = 0;
  }

  return result;
}

double operations_research::sat::LinearPropagator::AddConstraint(uint64_t a1, int *a2, uint64_t a3, char *a4, unint64_t a5, char *a6, uint64_t a7, uint64_t a8)
{
  v112 = *MEMORY[0x277D85DE8];
  if (!a5)
  {
LABEL_14:
    v24 = *MEMORY[0x277D85DE8];
    return result;
  }

  v16 = *(a1 + 16);
  if ((*(v16 + 8) & 0xFFFFFFF) == 0 && (a3 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v21 = *(v16 + 24);
    v22 = 4 * a3;
    v23 = a2;
    while (((*(v21 + ((*v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (*v23 & 0x3F ^ 1u)) & 1) == 0)
    {
      ++v23;
      v22 -= 4;
      if (!v22)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_14;
  }

LABEL_7:
  if (a5 >> 29)
  {
    operations_research::sat::LinearPropagator::AddConstraint(a5);
  }

  v18 = (*(a1 + 288) - *(a1 + 280)) >> 3;
  if (a5 > v18)
  {
    *__x = 0;
    std::vector<unsigned long long>::__append(a1 + 280, a5 - v18, __x);
    *__x = 1;
    v19 = *(a1 + 256);
    v20 = (*(a1 + 264) - v19) >> 3;
    if (a5 <= v20)
    {
      if (a5 < v20)
      {
        *(a1 + 264) = v19 + 8 * a5;
      }
    }

    else
    {
      std::vector<unsigned long long>::__append(a1 + 256, a5 - v20, __x);
    }
  }

  if (a5 != a7)
  {
    operations_research::sat::LinearPropagator::AddConstraint(a5, a7);
  }

  v25 = *(a1 + 208);
  v26 = *(a1 + 168);
  v27 = *(a1 + 176);
  v28 = *(a1 + 168);
  v29 = 170 * ((v27 - v28) >> 3) - 1;
  v108 = *(a1 + 200);
  v30 = *(a1 + 216);
  if (v27 == v28)
  {
    v29 = 0;
  }

  v31 = *(a1 + 192) + *(a1 + 200);
  if (v29 == v31)
  {
    std::deque<operations_research::sat::LinearPropagator::ConstraintInfo>::__add_back_capacity((a1 + 160));
    v28 = *(a1 + 168);
    v31 = *(a1 + 200) + *(a1 + 192);
  }

  v32 = *(v28 + 8 * (v31 / 0xAA)) + 24 * (v31 % 0xAA);
  *v32 = (8 * a5);
  *(v32 + 8) = (v30 - v25) >> 2;
  *(v32 + 12) = a5;
  *(v32 + 16) = a8;
  ++*(a1 + 200);
  __x[0] = 0;
  std::vector<int>::push_back[abi:ne200100](a1 + 872, __x);
  std::vector<operations_research::sat::Literal>::__insert_with_size[abi:ne200100]<operations_research::sat::Literal const*,operations_research::sat::Literal const*>(a1 + 208, *(a1 + 216), a4, &a4[4 * a5], (4 * a5) >> 2);
  std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::__insert_with_size[abi:ne200100]<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const*,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const*>(a1 + 232, *(a1 + 240), a6, &a6[8 * a5], (8 * a5) >> 3);
  v33 = *(a1 + 192);
  v34 = *(a1 + 168);
  v35 = (*(v34 + 8 * ((v33 + v108) / 0xAAuLL)) + 24 * ((v33 + v108) % 0xAAuLL));
  v36 = *v35;
  if ((v36 & 4) != 0)
  {
    v38 = *(a1 + 256);
    v37 = v35[2];
    if (v36 < 8)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v37 = v35[2];
    v38 = (*(a1 + 232) + 8 * v37);
    if (v36 < 8)
    {
      goto LABEL_26;
    }
  }

  v42 = (*(a1 + 208) + 4 * v37);
  v43 = v36 >> 3;
  do
  {
    if ((*v38 & 0x8000000000000000) != 0)
    {
      *v38 = -*v38;
      *v42 ^= 1u;
    }

    ++v42;
    ++v38;
    --v43;
  }

  while (v43);
LABEL_26:
  v39 = (*(v34 + 8 * ((*(a1 + 200) + v33 - 1) / 0xAAuLL)) + 24 * ((*(a1 + 200) + v33 - 1) % 0xAAuLL));
  v40 = *v39;
  if ((v40 & 4) == 0)
  {
    v41 = (*(a1 + 232) + 8 * v39[2]);
    if (v40 < 8)
    {
      goto LABEL_37;
    }

LABEL_34:
    v44 = 8 * (v40 >> 3);
    while (*v41 == 1)
    {
      ++v41;
      v44 -= 8;
      if (!v44)
      {
        goto LABEL_37;
      }
    }

    goto LABEL_38;
  }

  v41 = *(a1 + 256);
  if (v40 >= 8)
  {
    goto LABEL_34;
  }

LABEL_37:
  *v39 = v40 | 4;
LABEL_38:
  v45 = *(a1 + 376);
  v46 = (v45 + 1) & ~((v45 + 1) >> 31);
  if (v45 <= 0x7FFFFFFE && v46 < v45)
  {
    v49 = v45 + 64;
    v50 = -2 << v45;
    v48 = *(a1 + 384);
    *(v48 + ((v49 >> 3) & 0x3FFFFFF8) - 8) &= ~v50;
  }

  else
  {
    v48 = *(a1 + 384);
  }

  *(a1 + 376) = v46;
  v51 = (v46 + 63) >> 6;
  *__x = 0;
  v52 = (*(a1 + 392) - v48) >> 3;
  if (v51 <= v52)
  {
    if (v51 < v52)
    {
      *(a1 + 392) = v48 + 8 * v51;
    }
  }

  else
  {
    std::vector<unsigned long long>::__append(a1 + 384, v51 - v52, __x);
  }

  if (a3)
  {
    v53 = *(a1 + 200) + *(a1 + 192) - 1;
    v54 = *(*(a1 + 168) + 8 * (v53 / 0xAA));
    *(v54 + 24 * (v53 % 0xAA)) = *(v54 + 24 * (v53 % 0xAA)) & 0xFFFFFFFC | 1;
    v55 = *(a1 + 32);
    v110[0] = &unk_284F43CB8;
    v110[1] = a1;
    v110[2] = v108;
    v111 = v110;
    v56 = operations_research::sat::EnforcementPropagator::Register(v55, a2, a3, v110);
    v57 = *(a1 + 200) + *(a1 + 192) - 1;
    *(*(*(a1 + 168) + 8 * (v57 / 0xAA)) + 24 * (v57 % 0xAA) + 4) = v56;
    if (v111 == v110)
    {
      (*(*v111 + 32))(v111);
    }

    else if (v111)
    {
      (*(*v111 + 40))();
    }
  }

  else
  {
    v58 = v108 >> 6;
    v59 = *(a1 + 384);
    v60 = *(v59 + 8 * v58);
    if (((1 << v108) & v60) == 0)
    {
      v61 = *(a1 + 416);
      v62 = *(a1 + 424);
      v63 = *(a1 + 416);
      *(v59 + 8 * v58) = (1 << v108) | v60;
      if (v62 == v63)
      {
        v64 = 0;
      }

      else
      {
        v64 = ((v62 - v63) << 7) - 1;
      }

      v65 = *(a1 + 448);
      v66 = v65 + *(a1 + 440);
      if (v64 == v66)
      {
        std::deque<int>::__add_back_capacity((a1 + 408));
        v63 = *(a1 + 416);
        v65 = *(a1 + 448);
        v66 = *(a1 + 440) + v65;
      }

      *(*(v63 + ((v66 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v66 & 0x3FF)) = v108;
      *(a1 + 448) = v65 + 1;
    }

    v67 = *(a1 + 200) + *(a1 + 192) - 1;
    v68 = (*(*(a1 + 168) + 8 * (v67 / 0xAA)) + 24 * (v67 % 0xAA));
    *v68 |= 3u;
    v68[1] = -1;
  }

  operations_research::sat::ConstraintPropagationOrder::Resize((a1 + 456), (*(a1 + 776) - *(a1 + 768)) >> 5, *(a1 + 376));
  v69 = v108;
  v70 = (*(*(a1 + 168) + 8 * ((*(a1 + 192) + v108) / 0xAAuLL)) + 24 * ((*(a1 + 192) + v108) % 0xAAuLL));
  v71 = *v70;
  if (v71 >= 8)
  {
    v72 = (*(a1 + 208) + 4 * v70[2]);
    v73 = (v72 + ((v71 >> 1) & 0x7FFFFFFC));
    v74 = (a1 + 744);
    do
    {
      v75 = *v72;
      v76 = v75;
      v77 = *(a1 + 776);
      v78 = *(a1 + 768);
      v79 = (v77 - v78) >> 5;
      if (v75 >= v79)
      {
        v80 = ((v75 | 1) + 1);
        if (v80 <= v79)
        {
          if (v80 < v79)
          {
            v81 = v78 + 32 * v80;
            if (v77 != v81)
            {
              v82 = *(a1 + 776);
              do
              {
                v83 = *(v82 - 32);
                v82 -= 32;
                if (v83)
                {
                  operator delete(*(v77 - 24));
                }

                v77 = v82;
              }

              while (v82 != v81);
            }

            *(a1 + 776) = v81;
          }
        }

        else
        {
          std::vector<absl::lts_20240722::InlinedVector<int,6ul,std::allocator<int>>>::__append((a1 + 768), v80 - v79);
        }

        __x[0] = -1;
        v84 = *(a1 + 848);
        v85 = (*(a1 + 856) - v84) >> 2;
        if (v80 <= v85)
        {
          if (v80 < v85)
          {
            *(a1 + 856) = v84 + 4 * v80;
          }
        }

        else
        {
          std::vector<int>::__append((a1 + 848), v80 - v85, __x);
        }

        operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>::Resize(a1 + 792, v80);
        std::vector<BOOL>::resize(a1 + 744, ((v75 | 1) + 1), 0);
        operations_research::sat::ConstraintPropagationOrder::Resize((a1 + 456), (v75 | 1) + 1, *(a1 + 376));
        v78 = *(a1 + 768);
      }

      v86 = v75 << 32;
      v87 = (v78 + 32 * v75);
      v89 = v87 + 1;
      v88 = *v87;
      if (*v87)
      {
        v89 = v87[1];
        v90 = v87[2];
      }

      else
      {
        v90 = 6;
      }

      if (v88 >> 1 == v90)
      {
        absl::lts_20240722::inlined_vector_internal::Storage<operations_research::sat::Literal,6ul,std::allocator<operations_research::sat::Literal>>::EmplaceBackSlow<operations_research::sat::Literal const&>(v87);
      }

      *(v89 + (v88 >> 1)) = v108;
      *v87 = v88 + 2;
      v91 = *(*v74 + 8 * (v75 >> 6));
      if ((v91 & (1 << v75)) == 0)
      {
        *(*v74 + 8 * (v75 >> 6)) = v91 | (1 << v75);
        if (v75 != -1)
        {
          v92 = *(a1 + 40);
          v94 = (v92 + 88);
          v93 = *(v92 + 88);
          v95 = *(a1 + 96);
          v96 = *(v92 + 96);
          v97 = 0xAAAAAAAAAAAAAAABLL * ((v96 - v93) >> 3);
          if (v97 <= v76)
          {
            v98 = (v86 + 0x100000000) >> 32;
            if (v98 <= v97)
            {
              if (v98 < v97)
              {
                v99 = v93 + 24 * v98;
                if (v96 != v99)
                {
                  v100 = *(v92 + 96);
                  do
                  {
                    v102 = *(v100 - 24);
                    v100 -= 24;
                    v101 = v102;
                    if (v102)
                    {
                      *(v96 - 16) = v101;
                      operator delete(v101);
                    }

                    v96 = v100;
                  }

                  while (v100 != v99);
                }

                *(v92 + 96) = v99;
              }
            }

            else
            {
              std::vector<std::vector<operations_research::sat::GenericLiteralWatcher::WatchData>>::__append(v94, v98 - v97);
            }
          }

          __x[0] = v95;
          __x[1] = -1;
          v103 = (*v94 + 24 * v76);
          v104 = v103[1];
          if (*v103 == v104 || *(v104 - 8) != v95 || *(v104 - 4) != -1)
          {
            std::vector<long long>::push_back[abi:ne200100](v103, __x);
          }
        }
      }

      ++v72;
    }

    while (v72 != v73);
    v69 = v108;
  }

  *(a1 + 968) = 0;
  operations_research::sat::LinearPropagator::PropagateOneConstraint(a1, v69);
  v105 = *(a1 + 48);
  result = *(v105 + 112) + *(a1 + 968) * 0.000000001;
  *(v105 + 112) = result;
  v107 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CC4D970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::function<void ()(operations_research::StrongIndex<operations_research::sat::EnforcementId_index_tag_>,operations_research::sat::EnforcementStatus)>::~function(va);
  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(operations_research::StrongIndex<operations_research::sat::EnforcementId_index_tag_>,operations_research::sat::EnforcementStatus)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

void operations_research::sat::ConstraintPropagationOrder::Resize(std::vector<int> *this, int a2, int a3)
{
  if (a2 < 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a2;
    if (SLODWORD(this[1].__end_cap_.__value_) > a2)
    {
      v7 = this[2].__begin_ + (((a2 + 63) >> 3) & 0x1FFFFFF8);
      *(v7 - 8) &= ~(-2 << (a2 + 63));
      v6 = a2;
    }
  }

  LODWORD(this[1].__end_cap_.__value_) = v6;
  begin = this[2].__begin_;
  end = this[2].__end_;
  v8 = this + 2;
  v11 = (v6 + 63) >> 6;
  v24 = 0;
  v12 = (end - begin) >> 3;
  if (v11 <= v12)
  {
    if (v11 < v12)
    {
      this[2].__end_ = &begin[2 * v11];
    }
  }

  else
  {
    std::vector<unsigned long long>::__append(v8, v11 - v12, &v24);
  }

  v13 = this[3].__begin_;
  v14 = this[3].__end_ - v13;
  if (a2 <= v14)
  {
    if (a2 < v14)
    {
      this[3].__end_ = &v13[a2];
    }
  }

  else
  {
    std::vector<int>::__append(this + 3, a2 - v14);
  }

  v15 = this[4].__begin_;
  v16 = (this[4].__end_ - v15) >> 3;
  if (a2 <= v16)
  {
    if (a2 < v16)
    {
      this[4].__end_ = &v15[2 * a2];
    }
  }

  else
  {
    std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::__append(&this[4], a2 - v16);
  }

  v17 = this[5].__begin_;
  v18 = this[5].__end_ - v17;
  if (a2 <= v18)
  {
    if (a2 < v18)
    {
      this[5].__end_ = &v17[a2];
    }
  }

  else
  {
    std::vector<int>::__append(this + 5, a2 - v18);
  }

  v19 = a3 & ~(a3 >> 31);
  if (a3 < 1 || v19 >= SLODWORD(this[7].__end_))
  {
    value = this[7].__end_cap_.__value_;
  }

  else
  {
    value = this[7].__end_cap_.__value_;
    v21 = &value[2 * ((a3 + 63) >> 6)];
    *(v21 - 1) &= ~(-2 << (a3 + 63));
  }

  LODWORD(this[7].__end_) = v19;
  v22 = (v19 + 63) >> 6;
  v24 = 0;
  v23 = (this[8].__begin_ - value) >> 3;
  if (v22 <= v23)
  {
    if (v22 < v23)
    {
      this[8].__begin_ = &value[2 * v22];
    }
  }

  else
  {
    std::vector<unsigned long long>::__append(&this[7].__end_cap_, v22 - v23, &v24);
  }
}

uint64_t operations_research::sat::LinearPropagator::DisassembleSubtree(operations_research::sat::LinearPropagator *this, int a2, int a3)
{
  *(this + 113) = *(this + 112);
  *(this + 116) = *(this + 115);
  if (a3 < 1)
  {
    return 1;
  }

  v3 = a2;
  v5 = (this + 896);
  v94 = a2;
  v6 = (*(this + 26) + 4 * *(*(*(this + 21) + 8 * ((*(this + 24) + a2) / 0xAAuLL)) + 24 * ((*(this + 24) + a2) % 0xAAuLL) + 8));
  v7 = a3;
  do
  {
    LODWORD(v109[0]) = v3;
    v8 = *v6++;
    DWORD1(v109[0]) = v8 ^ 1;
    *(&v109[0] + 1) = 1;
    std::vector<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>::push_back[abi:ne200100](v5, v109);
    --v7;
  }

  while (v7);
  v9 = *(this + 113);
  if (*(this + 112) == v9)
  {
    return 1;
  }

  v102 = *(this + 109);
  v95 = v3;
  v97 = v5;
  while (1)
  {
    v109[0] = *(v9 - 16);
    v10 = *(this + 116);
    if (*(this + 115) == v10)
    {
      break;
    }

    v11 = DWORD1(v109[0]);
    if (*(v10 - 16) != LODWORD(v109[0]) || *(v10 - 12) != DWORD1(v109[0]))
    {
      goto LABEL_13;
    }

    *(this + 116) = v10 - 16;
    *(this + 113) = v9 - 16;
LABEL_7:
    v9 = *(this + 113);
    if (*(this + 112) == v9)
    {
      return 1;
    }
  }

  v11 = DWORD1(v109[0]);
LABEL_13:
  v108.n128_u64[0] = __PAIR64__(v11, v109[0]);
  v108.n128_u64[1] = *(&v109[0] + 1);
  std::vector<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>::push_back[abi:ne200100](this + 920, &v108);
  v12 = (*(this + 96) + 32 * v11);
  v15 = *v12;
  v14 = v12 + 1;
  v13 = v15;
  v16 = v15 >> 1;
  *(*(this + 6) + 112) = *(*(this + 6) + 112) + (v15 >> 1) * 0.000000001;
  if (v15)
  {
    v14 = *v14;
  }

  if ((v13 & 0x7FFFFFFFFFFFFFFELL) == 0)
  {
    goto LABEL_7;
  }

  v96 = v14 + 4 * v16;
  v101 = v11;
  while (1)
  {
    v17 = *v14;
    v100 = v14;
    if (*v14 != v3)
    {
      v30 = v17;
      if (!*(v102 + 4 * v17))
      {
        goto LABEL_17;
      }

      v31 = *v14;
      v32 = *(*(this + 21) + 8 * ((*(this + 24) + v17) / 0xAAuLL)) + 24 * ((*(this + 24) + v17) % 0xAAuLL);
      if ((*v32 & 4) != 0)
      {
        v34 = *(this + 32);
        v33 = *(v32 + 8);
      }

      else
      {
        v33 = *(v32 + 8);
        v34 = *(this + 29) + 8 * v33;
      }

      v35 = *(this + 26);
      v36 = *(this + 118);
      *(this + 119) = v36;
      ++*(this + 129);
      v37 = *(v32 + 12);
      *(*(this + 6) + 112) = *(*(this + 6) + 112) + v37 * 0.000000001;
      if (v37 < 1)
      {
        goto LABEL_17;
      }

      v38 = 0;
      v39 = 0;
      v40 = v35 + 4 * v33;
      v41 = v101;
      v103 = v31;
      v104 = v32;
      v106 = v30;
      v98 = v34;
      do
      {
        v42 = *(v40 + 4 * v38);
        if (v42 == v41)
        {
          v39 = *(v34 + 8 * v38);
        }

        else
        {
          v43 = v42 ^ 1;
          v44 = 4 * (v42 ^ 1);
          if (*(*(this + 106) + v44) == v31)
          {
            v45 = *(v34 + 8 * v38);
            v46 = *(this + 120);
            if (v36 >= v46)
            {
              v47 = *(this + 118);
              v48 = v36 - v47;
              v49 = (v36 - v47) >> 4;
              v50 = v49 + 1;
              if ((v49 + 1) >> 60)
              {
                std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
              }

              v51 = v46 - v47;
              if (v51 >> 3 > v50)
              {
                v50 = v51 >> 3;
              }

              if (v51 >= 0x7FFFFFFFFFFFFFF0)
              {
                v52 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v52 = v50;
              }

              if (v52)
              {
                if (!(v52 >> 60))
                {
                  operator new();
                }

LABEL_117:
                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v53 = v49;
              v54 = 16 * v49;
              *v54 = v43;
              *(v54 + 8) = v45;
              v36 = 16 * v49 + 16;
              v55 = (v54 - 16 * v53);
              memcpy(v55, v47, v48);
              *(this + 118) = v55;
              *(this + 119) = v36;
              *(this + 120) = 0;
              if (v47)
              {
                operator delete(v47);
              }

              v41 = v101;
              v31 = v103;
              v32 = v104;
              v30 = v106;
              v34 = v98;
            }

            else
            {
              *v36 = v43;
              *(v36 + 8) = v45;
              v36 += 16;
              v31 = v103;
            }

            *(this + 119) = v36;
            *(*(this + 106) + v44) = -1;
            --*(v102 + 4 * v30);
            v37 = *(v32 + 12);
          }
        }

        ++v38;
      }

      while (v38 < v37);
      v56 = *(this + 118);
      if (v56 == v36)
      {
        goto LABEL_17;
      }

      v105 = 1 << v31;
      v107 = v30 >> 6;
      if ((v39 * *(&v109[0] + 1)) >> 64 == (v39 * *(&v109[0] + 1)) >> 63)
      {
        v57 = v39 * *(&v109[0] + 1);
      }

      else
      {
        v57 = ((*(&v109[0] + 1) ^ v39) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
      }

      v99 = v57;
      while (1)
      {
        v58 = v57 / *(v56 + 1) - (v57 / *(v56 + 1) * *(v56 + 1) > v57);
        if (v58 >= 1)
        {
          v59 = *v56;
          v60 = *(this + 113);
          v61 = *(this + 114);
          if (v60 >= v61)
          {
            v63 = *v97;
            v64 = v60 - *v97;
            v65 = v64 >> 4;
            v66 = (v64 >> 4) + 1;
            if (v66 >> 60)
            {
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            v67 = v61 - v63;
            if (v67 >> 3 > v66)
            {
              v66 = v67 >> 3;
            }

            if (v67 >= 0x7FFFFFFFFFFFFFF0)
            {
              v68 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v68 = v66;
            }

            if (v68)
            {
              if (!(v68 >> 60))
              {
                operator new();
              }

              goto LABEL_117;
            }

            v69 = 16 * v65;
            *v69 = v31;
            *(v69 + 4) = v59;
            *(v69 + 8) = v58;
            v62 = 16 * v65 + 16;
            v70 = (v69 - 16 * (v64 >> 4));
            memcpy(v70, v63, v64);
            *(this + 112) = v70;
            *(this + 113) = v62;
            *(this + 114) = 0;
            if (v63)
            {
              operator delete(v63);
            }

            v57 = v99;
          }

          else
          {
            *v60 = v31;
            *(v60 + 4) = v59;
            v62 = v60 + 16;
            *(v60 + 8) = v58;
          }

          *(this + 113) = v62;
          v71 = v59 >> 6;
          v72 = *(this + 63);
          v73 = *(v72 + 8 * v71);
          if ((v73 & (1 << v59)) == 0)
          {
            *(v72 + 8 * v71) = v73 | (1 << v59);
            v77 = *(this + 76);
            v78 = *(this + 75);
            v79 = v77 - v78;
            v76 = 4 * v59;
            *(*(this + 72) + v76) = (v77 - v78) >> 2;
            v80 = *(this + 77);
            if (v77 >= v80)
            {
              v82 = (v79 >> 2) + 1;
              if (v82 >> 62)
              {
                std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
              }

              v83 = v80 - v78;
              if (v83 >> 1 > v82)
              {
                v82 = v83 >> 1;
              }

              if (v83 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v84 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v84 = v82;
              }

              if (v84)
              {
                if (!(v84 >> 62))
                {
                  operator new();
                }

                goto LABEL_117;
              }

              v85 = (4 * (v79 >> 2));
              *v85 = v59;
              v81 = v85 + 1;
              memcpy(0, v78, v79);
              *(this + 75) = 0;
              *(this + 76) = v81;
              *(this + 77) = 0;
              if (v78)
              {
                operator delete(v78);
              }

              v31 = v103;
              v57 = v99;
            }

            else
            {
              *v77 = v59;
              v81 = v77 + 4;
            }

            *(this + 76) = v81;
            v74 = *(this + 69);
            v75 = 8 * v59;
            goto LABEL_97;
          }

          v74 = *(this + 69);
          v75 = 8 * v59;
          if (*(v74 + v75) < 0x8000000000000002)
          {
            v76 = 4 * v59;
LABEL_97:
            *(v74 + v75) = 0x8000000000000002;
            *(*(this + 66) + v76) = v31;
            v86 = *(this + 80);
            v87 = *(v86 + 8 * v107);
            if ((v87 & v105) == 0)
            {
              *(v86 + 8 * v107) = v87 | v105;
              v88 = *(this + 87);
              if (!v88)
              {
                std::deque<int>::__add_front_capacity(this + 664);
                v88 = *(this + 87);
              }

              v89 = *(this + 84);
              v90 = (v89 + 8 * (v88 >> 10));
              if (*(this + 85) == v89)
              {
                v91 = 0;
              }

              else
              {
                v91 = *v90 + 4 * (v88 & 0x3FF);
              }

              if (v91 == *v90)
              {
                v91 = *(v90 - 1) + 4096;
              }

              *(v91 - 4) = v31;
              *(this + 87) = v88 - 1;
              ++*(this + 88);
            }
          }
        }

        v56 += 4;
        if (v56 == v36)
        {
          goto LABEL_17;
        }
      }
    }

    v18 = *(this + 115);
    if (v18 == *(this + 116))
    {
      operations_research::sat::LinearPropagator::DisassembleSubtree(&v108);
    }

    v19 = *v18;
    v108 = *v18;
    if (v108.n128_u32[0] != v3)
    {
      operations_research::sat::LinearPropagator::DisassembleSubtree(v108.n128_i32[0], v94);
    }

    if (v11 == v108.n128_u32[1])
    {
      operations_research::sat::LinearPropagator::DisassembleSubtree(v109 + 1, &v108.n128_u32[1]);
    }

    if ((v108.n128_u32[1] ^ v11) == 1)
    {
      goto LABEL_17;
    }

    v20 = (*(*(this + 21) + 8 * ((*(this + 24) + v94) / 0xAAuLL)) + 24 * ((*(this + 24) + v94) % 0xAAuLL));
    v21 = *v20;
    if ((v21 & 4) != 0)
    {
      v23 = *(this + 32);
      v22 = v20[2];
      if (v21 < 8)
      {
        goto LABEL_106;
      }

LABEL_25:
      v24 = 0;
      v25 = 0;
      v26 = (*(this + 26) + 4 * v22);
      v27 = v21 >> 3;
      while (1)
      {
        v29 = *v26++;
        v28 = v29;
        if (v29 == v11)
        {
          v25 = *v23;
          if ((v28 ^ v108.n128_u32[1]) == 1)
          {
LABEL_31:
            v24 = *v23;
          }
        }

        else if ((v28 ^ v108.n128_u32[1]) == 1)
        {
          goto LABEL_31;
        }

        ++v23;
        if (!--v27)
        {
          goto LABEL_107;
        }
      }
    }

    v22 = v20[2];
    v23 = (*(this + 29) + 8 * v22);
    if (v21 >= 8)
    {
      goto LABEL_25;
    }

LABEL_106:
    v25 = 0;
    v24 = 0;
LABEL_107:
    v92 = (v108.n128_i64[1] * v25) >> 64 == (v108.n128_u64[1] * v25) >> 63 ? v108.n128_u64[1] * v25 : ((v108.n128_u64[1] ^ v25) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
    if (v92 >= v24)
    {
      break;
    }

    ++*(this + 125);
LABEL_17:
    v11 = v101;
    v14 = (v100 + 4);
    v3 = v95;
    if (v100 + 4 == v96)
    {
      goto LABEL_7;
    }
  }

  ++*(this + 124);
  return operations_research::sat::LinearPropagator::ReportConflictingCycle(this, v19);
}

std::string *operations_research::sat::LinearPropagator::ConstraintDebugString@<X0>(operations_research::sat::LinearPropagator *this@<X0>, int a2@<W1>, char *a3@<X2>, std::string *a4@<X8>)
{
  v4 = this;
  v39 = *MEMORY[0x277D85DE8];
  a4->__r_.__value_.__r.__words[0] = 0;
  a4->__r_.__value_.__l.__size_ = 0;
  a4->__r_.__value_.__r.__words[2] = 0;
  v5 = (*(*(this + 21) + 8 * ((*(this + 24) + a2) / 0xAAuLL)) + 24 * ((*(this + 24) + a2) % 0xAAuLL));
  v6 = *v5;
  if ((*v5 & 4) == 0)
  {
    v7 = v5[2];
    v27 = *(this + 29) + 8 * v7;
    if (v6 >= 8)
    {
      goto LABEL_3;
    }

LABEL_10:
    v10 = 0;
    v9 = 0;
    goto LABEL_11;
  }

  v27 = *(this + 32);
  v7 = v5[2];
  if (v6 < 8)
  {
    goto LABEL_10;
  }

LABEL_3:
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = *(this + 26) + 4 * v7;
  do
  {
    v12 = *(v27 + 8 * v8);
    v13 = *(*(*(v4 + 3) + 40) + 8 * *(v11 + 4 * v8)) * v12;
    if (v8 >= v5[3])
    {
      v14 = *(*(*(v4 + 3) + 40) + 8 * *(v11 + 4 * v8)) * v12;
    }

    else
    {
      v14 = 0;
    }

    v37 = " +";
    v38 = 2;
    v15 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v12, v36, a3);
    v34 = v36;
    v35 = v15 - v36;
    v32 = "*X";
    v33 = 2;
    v17 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(v11 + 4 * v8), v31, v16);
    v29 = v31;
    v30 = v17 - v31;
    absl::lts_20240722::StrAppend(a4, &v37, &v34, &v32, &v29);
    v10 += v14;
    v9 += v13;
    ++v8;
    v4 = this;
  }

  while (v8 < *v5 >> 3);
LABEL_11:
  v18 = *(v5 + 2) + v10;
  v37 = " <= ";
  v38 = 4;
  v19 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v18, v36, a3);
  v34 = v36;
  v35 = v19 - v36;
  v32 = " slack=";
  v33 = 7;
  v21 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v18 - v9, v31, v20);
  v29 = v31;
  v30 = v21 - v31;
  absl::lts_20240722::StrAppend(a4, &v37, &v34, &v32, &v29);
  v37 = " enf=";
  v38 = 5;
  v23 = absl::lts_20240722::numbers_internal::FastIntToBuffer((*v5 & 3), v36, v22);
  v34 = v36;
  v35 = v23 - v36;
  result = absl::lts_20240722::StrAppend(a4, &v37, &v34);
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CC4E75C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (*(a12 + 23) < 0)
  {
    operator delete(*a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::LinearPropagator::ReportConflictingCycle(operations_research::sat::LinearPropagator *this, __n128 a2)
{
  *(this + 45) = *(this + 44);
  *(this + 39) = *(this + 38);
  *&__p.__r_.__value_.__l.__data_ = 0uLL;
  __p.__r_.__value_.__r.__words[2] = &unk_23CE31C20;
  v3 = *(this + 115);
  v173 = *(this + 116);
  if (v3 == v173)
  {
    goto LABEL_87;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    *&v175 = v4;
    *(&v175 + 1) = v5;
    v174 = v3;
    v7 = *(this + 24) + *v3;
    v8 = (*(*(this + 21) + 8 * (v7 / 0xAA)) + 24 * (v7 % 0xAA));
    v9 = v8[1];
    if ((v9 & 0x80000000) == 0)
    {
      v10 = *(this + 4);
      v11 = *(v10 + 72);
      v12 = *(v11 + (((v9 << 32) + 0x100000000) >> 30));
      v13 = *(v11 + 4 * v9);
      if (v12 != v13)
      {
        v14 = (*(v10 + 96) + 4 * v13);
        v15 = *(this + 45);
        v16 = 4 * (v12 - v13);
        do
        {
          while (1)
          {
            v17 = *v14 ^ 1;
            v18 = *(this + 46);
            if (v15 >= v18)
            {
              break;
            }

            *v15++ = v17;
            *(this + 45) = v15;
            ++v14;
            v16 -= 4;
            if (!v16)
            {
              goto LABEL_22;
            }
          }

          v19 = *(this + 44);
          v20 = v15 - v19;
          v21 = (v15 - v19) >> 2;
          v22 = v21 + 1;
          if ((v21 + 1) >> 62)
          {
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          v23 = v18 - v19;
          if (v23 >> 1 > v22)
          {
            v22 = v23 >> 1;
          }

          if (v23 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v24 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v24 = v22;
          }

          if (v24)
          {
            if (!(v24 >> 62))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v25 = (v15 - v19) >> 2;
          v26 = (4 * v21);
          v27 = (4 * v21 - 4 * v25);
          *v26 = v17;
          v15 = v26 + 1;
          memcpy(v27, v19, v20);
          *(this + 44) = v27;
          *(this + 45) = v15;
          *(this + 46) = 0;
          if (v19)
          {
            operator delete(v19);
          }

          *(this + 45) = v15;
          ++v14;
          v16 -= 4;
        }

        while (v16);
      }
    }

LABEL_22:
    v28 = *v8;
    if ((*v8 & 4) != 0)
    {
      v30 = *(this + 32);
      v29 = v8[2];
      if (v28 < 8)
      {
        goto LABEL_3;
      }

LABEL_26:
      v31 = 0;
      v6 = 0;
      v32 = *(this + 26) + 4 * v29;
      while (1)
      {
        while (v31 >= v8[3])
        {
          v36 = *(v32 + 4 * v31);
          v6 += *(*(*(this + 3) + 40) + 8 * v36) * *(v30 + 8 * v31);
          v37 = *(v30 + 8 * v31);
          v38 = 0;
          if (v36)
          {
            goto LABEL_31;
          }

LABEL_38:
          _X9 = __p.__r_.__value_.__r.__words[2];
          __asm { PRFM            #4, [X9] }

          v54 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v36) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v36));
          a2.n128_u64[0] = vdup_n_s8(v54 & 0x7F);
          v55 = ((v54 >> 7) ^ (__p.__r_.__value_.__r.__words[2] >> 12)) & __p.__r_.__value_.__r.__words[0];
          v56 = *(__p.__r_.__value_.__r.__words[2] + v55);
          v57 = vceq_s8(v56, a2.n128_u64[0]);
          if (!v57)
          {
            goto LABEL_41;
          }

          do
          {
LABEL_39:
            v58 = (v55 + (__clz(__rbit64(v57)) >> 3)) & __p.__r_.__value_.__r.__words[0];
            if (v182[8 * v58] == v36)
            {
              v33 = &v182[8 * v58];
              v35 = *(v33 + 2);
              v34 = *(v33 + 3);
              goto LABEL_28;
            }

            v57 &= ((v57 & 0x8080808080808080) - 1) & 0x8080808080808080;
          }

          while (v57);
LABEL_41:
          while (1)
          {
            v59 = vceq_s8(v56, 0x8080808080808080);
            if (v59)
            {
              break;
            }

            v38 += 8;
            v55 = (v38 + v55) & __p.__r_.__value_.__r.__words[0];
            v56 = *(__p.__r_.__value_.__r.__words[2] + v55);
            v57 = vceq_s8(v56, a2.n128_u64[0]);
            if (v57)
            {
              goto LABEL_39;
            }
          }

          inserted = absl::lts_20240722::container_internal::PrepareInsertNonSoo(&__p, v54, (v55 + (__clz(__rbit64(v59)) >> 3)) & __p.__r_.__value_.__r.__words[0], v38, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,absl::lts_20240722::int128>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,absl::lts_20240722::int128>>>::GetPolicyFunctions(void)::value);
          v35 = 0;
          v34 = 0;
          v33 = &v182[8 * inserted];
          *v33 = *(v32 + 4 * v31);
          *(v33 + 2) = 0;
          *(v33 + 3) = 0;
LABEL_28:
          *(v33 + 1) = __PAIR128__(v34, v35) + v37;
          if (++v31 >= *v8 >> 3)
          {
            goto LABEL_4;
          }
        }

        v36 = *(v32 + 4 * v31);
        v37 = *(v30 + 8 * v31);
        v38 = 0;
        if ((v36 & 1) == 0)
        {
          goto LABEL_38;
        }

LABEL_31:
        v39 = v36 & 0xFFFFFFFE;
        _X8 = __p.__r_.__value_.__r.__words[2];
        __asm { PRFM            #4, [X8] }

        v46 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v39) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v39));
        a2.n128_u64[0] = vdup_n_s8(v46 & 0x7F);
        v47 = ((v46 >> 7) ^ (__p.__r_.__value_.__r.__words[2] >> 12)) & __p.__r_.__value_.__r.__words[0];
        v48 = *(__p.__r_.__value_.__r.__words[2] + v47);
        v49 = vceq_s8(v48, a2.n128_u64[0]);
        if (!v49)
        {
          goto LABEL_34;
        }

        do
        {
LABEL_32:
          v50 = (v47 + (__clz(__rbit64(v49)) >> 3)) & __p.__r_.__value_.__r.__words[0];
          if (v182[8 * v50] == v39)
          {
            v60 = &v182[8 * v50];
            v62 = *(v60 + 2);
            v61 = *(v60 + 3);
            goto LABEL_46;
          }

          v49 &= ((v49 & 0x8080808080808080) - 1) & 0x8080808080808080;
        }

        while (v49);
LABEL_34:
        while (1)
        {
          v51 = vceq_s8(v48, 0x8080808080808080);
          if (v51)
          {
            break;
          }

          v38 += 8;
          v47 = (v38 + v47) & __p.__r_.__value_.__r.__words[0];
          v48 = *(__p.__r_.__value_.__r.__words[2] + v47);
          v49 = vceq_s8(v48, a2.n128_u64[0]);
          if (v49)
          {
            goto LABEL_32;
          }
        }

        v63 = absl::lts_20240722::container_internal::PrepareInsertNonSoo(&__p, v46, (v47 + (__clz(__rbit64(v51)) >> 3)) & __p.__r_.__value_.__r.__words[0], v38, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,absl::lts_20240722::int128>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,absl::lts_20240722::int128>>>::GetPolicyFunctions(void)::value);
        v62 = 0;
        v61 = 0;
        v60 = &v182[8 * v63];
        *v60 = v39;
        *(v60 + 2) = 0;
        *(v60 + 3) = 0;
LABEL_46:
        *(v60 + 1) = __PAIR128__(v61, v62) - v37;
        if (++v31 >= *v8 >> 3)
        {
          goto LABEL_4;
        }
      }
    }

    v29 = v8[2];
    v30 = *(this + 29) + 8 * v29;
    if (v28 >= 8)
    {
      goto LABEL_26;
    }

LABEL_3:
    v6 = 0;
LABEL_4:
    v5 = (v175 + *(v8 + 2) + v6) >> 64;
    v4 = v175 + *(v8 + 2) + v6;
    v3 = v174 + 4;
  }

  while (v174 + 4 != v173);
  v176 = (v175 + *(v8 + 2) + v6) >> 64;
  if (__p.__r_.__value_.__l.__size_ >= 2)
  {
    v65 = __p.__r_.__value_.__r.__words[2];
    v66 = v182;
    if (*__p.__r_.__value_.__r.__words[2] <= -2)
    {
      do
      {
        v67 = __clz(__rbit64((*v65 | ~(*v65 >> 7)) & 0x101010101010101)) >> 3;
        v65 = (v65 + v67);
        v66 += 8 * v67;
      }

      while (*v65 < -1);
    }

    v68 = 0;
    v69 = 0;
    while (1)
    {
      v70 = *v66;
      v72 = *(v66 + 2);
      v71 = *(v66 + 3);
      if (__PAIR128__(v71, v72) < 1)
      {
        if ((v71 & 0x8000000000000000) == 0)
        {
          goto LABEL_59;
        }

        v85 = *(this + 3);
        v86 = *(*(v85 + 64) + 4 * (v70 ^ 1));
        v88 = v85 + 40;
        v87 = *(v85 + 40);
        if (v86 >= (*(v88 + 8) - v87) >> 3)
        {
          v89 = (8 * v70) ^ 8;
          v90 = *(v87 + v89);
          if (v90 - 1 > 0x7FFFFFFFFFFFFFFDLL)
          {
            v90 = 0x7FFFFFFFFFFFFFFFLL;
          }

          *v180 = v70 ^ 1;
          *&v180[2] = v90;
          std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](this + 304, v180);
          v87 = *(*(this + 3) + 40);
        }

        else
        {
          v89 = (8 * v70) ^ 8;
        }

        v91 = *(v87 + v89);
        v80 = (__PAIR128__(v71, v72) * -v91) >> 64;
        v81 = -(v91 * v72);
      }

      else
      {
        v73 = *(this + 3);
        v74 = *(*(v73 + 64) + 4 * v70);
        v76 = v73 + 40;
        v75 = *(v73 + 40);
        v77 = 8 * v70;
        if (v74 >= (*(v76 + 8) - v75) >> 3)
        {
          v78 = *(v75 + 8 * v70);
          *v180 = *v66;
          *&v180[2] = v78;
          std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](this + 304, v180);
          v75 = *(*(this + 3) + 40);
        }

        v79 = *(v75 + v77);
        v80 = (__PAIR128__(v71, v72) * v79) >> 64;
        v81 = v72 * v79;
      }

      _CF = __CFADD__(v81, v68);
      v68 += v81;
      v69 += _CF + v80;
LABEL_59:
      v83 = *(v65 + 1);
      v65 = (v65 + 1);
      LOBYTE(v82) = v83;
      v66 += 8;
      if (v83 <= -2)
      {
        do
        {
          v84 = __clz(__rbit64((*v65 | ~(*v65 >> 7)) & 0x101010101010101)) >> 3;
          v65 = (v65 + v84);
          v66 += 8 * v84;
          v82 = *v65;
        }

        while (v82 < -1);
      }

      if (v82 == 255)
      {
        goto LABEL_72;
      }
    }
  }

  v68 = 0;
  v69 = 0;
LABEL_72:
  if (__PAIR128__(v176, v4) >= __PAIR128__(v69, v68))
  {
LABEL_87:
    v112 = 0;
    if (!__p.__r_.__value_.__r.__words[0])
    {
      goto LABEL_89;
    }

    goto LABEL_88;
  }

  v92 = *(this + 38);
  v93 = *(this + 39);
  v94 = 126 - 2 * __clz((v93 - v92) >> 4);
  if (v93 == v92)
  {
    v95 = 0;
  }

  else
  {
    v95 = v94;
  }

  std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::LinearPropagator::ReportConflictingCycle(void)::$_0 &,operations_research::sat::IntegerLiteral *,false>(v92, v93, v95, 1, a2);
  v97 = __PAIR128__(v69, v68) - __PAIR128__(v176, v4);
  if ((__PAIR128__(v69, v68) - __PAIR128__(v176, v4)) >= 2)
  {
    v98 = *(this + 41);
    *(this + 42) = v98;
    v99 = *(this + 38);
    v100 = *(this + 39);
    if (v99 != v100)
    {
      while (1)
      {
        v101 = 0;
        v102 = *v99 & 0xFFFFFFFE;
        _X10 = __p.__r_.__value_.__r.__words[2];
        __asm { PRFM            #4, [X10] }

        v105 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v102) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v102));
        v106 = vdup_n_s8(v105 & 0x7F);
        v107 = ((v105 >> 7) ^ (__p.__r_.__value_.__r.__words[2] >> 12)) & __p.__r_.__value_.__r.__words[0];
        v108 = *(__p.__r_.__value_.__r.__words[2] + v107);
        for (i = vceq_s8(v108, v106); !i; i = vceq_s8(v108, v106))
        {
LABEL_81:
          if (vceq_s8(v108, 0x8080808080808080))
          {
            absl::lts_20240722::base_internal::ThrowStdOutOfRange("absl::container_internal::raw_hash_map<>::at", v96);
          }

          v101 += 8;
          v107 = (v101 + v107) & __p.__r_.__value_.__r.__words[0];
          v108 = *(__p.__r_.__value_.__r.__words[2] + v107);
        }

        while (1)
        {
          v110 = (v107 + (__clz(__rbit64(i)) >> 3)) & __p.__r_.__value_.__r.__words[0];
          if (v182[8 * v110] == v102)
          {
            break;
          }

          i &= ((i & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!i)
          {
            goto LABEL_81;
          }
        }

        if ((*&v182[8 * v110 + 4] ^ (*&v182[8 * v110 + 6] >> 63)) - (*&v182[8 * v110 + 6] >> 63) > 0x7FFFFFFFFFFFFFFELL)
        {
          goto LABEL_133;
        }

        *v180 = (*&v182[8 * v110 + 4] ^ (*&v182[8 * v110 + 6] >> 63)) - (*&v182[8 * v110 + 6] >> 63);
        std::vector<long long>::push_back[abi:ne200100](this + 328, v180);
        v99 += 4;
        if (v99 == v100)
        {
          v111 = *(this + 41);
          v98 = *(this + 42);
          goto LABEL_130;
        }
      }
    }

    v111 = v98;
LABEL_130:
    v163 = 0x7FFFFFFFFFFFFFFFLL;
    if (v97 < 0x7FFFFFFFFFFFFFFFLL)
    {
      v163 = v97;
    }

    operations_research::sat::IntegerTrail::RelaxLinearReason(*(this + 3), v163 - 1, v111, (v98 - v111) >> 3, this + 38);
  }

LABEL_133:
  ++*(this + 126);
  if (dword_2810C0A00 >= 2 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&_MergedGlobals_23, dword_2810C0A00))
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v180, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_propagation.cc", 1093);
    v171 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v180, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v171, "Simplified ", 0xBuLL);
    v183 = (*(this + 39) - *(this + 38)) >> 4;
    v172 = absl::lts_20240722::log_internal::LogMessage::operator<<<unsigned long,0>(v171, &v183);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v172, " slack ", 7uLL);
    v179 = v97;
    absl::lts_20240722::log_internal::LogMessage::operator<<<absl::lts_20240722::int128,0>(v172, &v179);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v180);
  }

  v164 = *(this + 3);
  v165 = *(this + 44);
  v166 = *(this + 45);
  v167 = *(this + 38);
  v168 = *(this + 39);
  v169 = *(v164 + 840);
  *(v169 + 120) = 0;
  std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal const*,operations_research::sat::Literal const*>((v169 + 72), v165, v166, (v166 - v165) >> 2);
  operations_research::sat::IntegerTrail::MergeReasonInto(v164, v167, (v168 - v167) >> 4, (v169 + 72));
  v112 = 1;
  if (__p.__r_.__value_.__r.__words[0])
  {
LABEL_88:
    operator delete((__p.__r_.__value_.__r.__words[2] - (__p.__r_.__value_.__s.__data_[8] & 1) - 8));
  }

LABEL_89:
  if ((v112 & 1) == 0)
  {
    if (dword_2810C0A18 >= 2 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&off_2810C0A10, dword_2810C0A18))
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(&__p, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_propagation.cc", 1103);
      v170 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&__p, 2);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v170, "Cycle", 5uLL);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(&__p);
    }

    v113 = *(this + 44);
    *(this + 45) = v113;
    v114 = *(this + 38);
    *(this + 39) = v114;
    v115 = *(this + 115);
    v116 = *(this + 116);
    if (v115 == v116)
    {
      v158 = v114;
      v157 = v113;
    }

    else
    {
      v117 = -1;
      v177 = *(this + 116);
      do
      {
        *v180 = *v115;
        v118 = *(this + 24) + v180[0];
        v119 = *(this + 21);
        v120 = v118 / 0xAA;
        v121 = v118 % 0xAA;
        v122 = *(*(v119 + 8 * v120) + 24 * v121 + 4);
        if ((v122 & 0x80000000) == 0)
        {
          v123 = *(this + 4);
          v124 = *(v123 + 72);
          v125 = *(v124 + (((v122 << 32) + 0x100000000) >> 30));
          v126 = *(v124 + 4 * v122);
          if (v125 != v126)
          {
            v127 = (*(v123 + 96) + 4 * v126);
            v128 = *(this + 45);
            v129 = 4 * (v125 - v126);
            do
            {
              v130 = *v127 ^ 1;
              v131 = *(this + 46);
              if (v128 < v131)
              {
                *v128++ = v130;
              }

              else
              {
                v132 = *(this + 44);
                v133 = v128 - v132;
                v134 = (v128 - v132) >> 2;
                v135 = v134 + 1;
                if ((v134 + 1) >> 62)
                {
                  std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                }

                v136 = v131 - v132;
                if (v136 >> 1 > v135)
                {
                  v135 = v136 >> 1;
                }

                if (v136 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v137 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v137 = v135;
                }

                if (v137)
                {
                  if (!(v137 >> 62))
                  {
                    operator new();
                  }

                  std::__throw_bad_array_new_length[abi:ne200100]();
                }

                v138 = v134;
                v139 = (4 * v134);
                v140 = &v139[-v138];
                *v139 = v130;
                v128 = v139 + 1;
                memcpy(v140, v132, v133);
                *(this + 44) = v140;
                *(this + 45) = v128;
                *(this + 46) = 0;
                if (v132)
                {
                  operator delete(v132);
                }
              }

              *(this + 45) = v128;
              ++v127;
              v129 -= 4;
            }

            while (v129);
            v119 = *(this + 21);
            v141 = *(this + 24) + v180[0];
            v120 = v141 / 0xAA;
            v121 = v141 % 0xAA;
            v116 = v177;
          }
        }

        v142 = (*(v119 + 8 * v120) + 24 * v121);
        v143 = *v142;
        if (v143 >= 8)
        {
          v144 = (*(this + 26) + 4 * v142[2]);
          v145 = 4 * (v143 >> 3);
          do
          {
            v146 = *v144;
            if (*v144 != v117 && (v180[1] ^ v146) != 1)
            {
              v147 = *(this + 3);
              v148 = *(*(v147 + 64) + 4 * v146);
              v150 = v147 + 40;
              v149 = *(v147 + 40);
              if (v148 >= (*(v150 + 8) - v149) >> 3)
              {
                v151 = *(v149 + 8 * v146);
                __p.__r_.__value_.__r.__words[0] = *v144;
                __p.__r_.__value_.__l.__size_ = v151;
                std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](this + 304, &__p);
              }
            }

            ++v144;
            v145 -= 4;
          }

          while (v145);
        }

        v117 = v180[1];
        if (dword_2810C0A30 > 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&off_2810C0A28, dword_2810C0A30))
        {
          absl::lts_20240722::log_internal::LogMessage::LogMessage(&v179, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_propagation.cc", 1125);
          v152 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v179, 2);
          v153 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,0>(v152, &v180[1]);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v153, " [", 2uLL);
          v183 = *(*(*(this + 3) + 40) + 8 * v180[1]);
          v154 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongInt64<operations_research::sat::Coefficient_integer_tag_>,0>(v153, &v183);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v154, ",", 1uLL);
          v178 = -*(*(*(this + 3) + 40) + ((8 * v180[1]) ^ 8));
          v155 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongInt64<operations_research::sat::Coefficient_integer_tag_>,0>(v154, &v178);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v155, "] : ", 4uLL);
          operations_research::sat::LinearPropagator::ConstraintDebugString(this, v180[0], v156, &__p);
          absl::lts_20240722::log_internal::LogMessage::operator<<(v155, &__p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v179);
        }

        ++v115;
      }

      while (v115 != v116);
      v157 = *(this + 44);
      v113 = *(this + 45);
      v158 = *(this + 38);
      v114 = *(this + 39);
    }

    ++*(this + 127);
    v159 = *(this + 3);
    v160 = (v114 - v158) >> 4;
    v161 = *(v159 + 840);
    *(v161 + 120) = 0;
    std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal const*,operations_research::sat::Literal const*>((v161 + 72), v157, v113, (v113 - v157) >> 2);
    operations_research::sat::IntegerTrail::MergeReasonInto(v159, v158, v160, (v161 + 72));
  }

  return 0;
}

void sub_23CC4F52C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22)
{
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(&a17);
  v23 = a1;
  if (__p)
  {
    operator delete((a22 - (a21 & 1) - 8));
    v23 = a1;
  }

  _Unwind_Resume(v23);
}

uint64_t absl::lts_20240722::log_internal::LogMessage::operator<<<absl::lts_20240722::int128,0>(uint64_t a1, void *a2)
{
  v3 = a2[1];
  v8[0] = *a2;
  v8[1] = v3;
  absl::lts_20240722::int128::ToString(v8, &__p);
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

  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)1>(a1, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_23CC4F664(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::EnforcementPropagator::~EnforcementPropagator(operations_research::sat::EnforcementPropagator *this)
{
  operations_research::sat::EnforcementPropagator::~EnforcementPropagator(this);

  JUMPOUT(0x23EED9460);
}

{
  *this = &unk_284F43B00;
  v2 = *(this + 32);
  if (v2)
  {
    *(this + 33) = v2;
    operator delete(v2);
  }

  v3 = *(this + 29);
  if (v3)
  {
    *(this + 30) = v3;
    operator delete(v3);
  }

  v4 = *(this + 26);
  if (v4)
  {
    v5 = *(this + 27);
    v6 = *(this + 26);
    if (v5 != v4)
    {
      v7 = *(this + 27);
      do
      {
        v8 = *(v7 - 32);
        v7 -= 32;
        if (v8)
        {
          operator delete(*(v5 - 24));
        }

        v5 = v7;
      }

      while (v7 != v4);
      v6 = *(this + 26);
    }

    *(this + 27) = v4;
    operator delete(v6);
  }

  v9 = *(this + 21);
  if (v9)
  {
    *(this + 22) = v9;
    operator delete(v9);
  }

  v10 = *(this + 18);
  if (v10)
  {
    v11 = *(this + 19);
    v12 = *(this + 18);
    if (v11 != v10)
    {
      v13 = v11 - 32;
      do
      {
        v14 = *(v11 - 8);
        v11 -= 32;
        if (v11 == v14)
        {
          (*(*v14 + 32))(v14);
        }

        else if (v14)
        {
          (*(*v14 + 40))(v14);
        }

        v13 -= 32;
      }

      while (v11 != v10);
      v12 = *(this + 18);
    }

    *(this + 19) = v10;
    operator delete(v12);
  }

  v15 = *(this + 15);
  if (v15)
  {
    *(this + 16) = v15;
    operator delete(v15);
  }

  v16 = *(this + 12);
  if (v16)
  {
    *(this + 13) = v16;
    operator delete(v16);
  }

  v17 = *(this + 9);
  if (v17)
  {
    *(this + 10) = v17;
    operator delete(v17);
  }

  *this = &unk_284F3BCC8;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void absl::lts_20240722::log_internal::MakeCheckOpString<operations_research::sat::EnforcementStatus const&,operations_research::sat::EnforcementStatus const&>(unsigned int *a1, unsigned int *a2, char *a3)
{
  absl::lts_20240722::log_internal::CheckOpMessageBuilder::CheckOpMessageBuilder(&v8, a3);
  v5 = *a1;
  if (v5 <= 3)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, off_278BC3DB8[v5], *&asc_23CE4D1F8[8 * v5]);
  }

  v6 = absl::lts_20240722::log_internal::CheckOpMessageBuilder::ForVar2(&v8);
  v7 = *a2;
  if (v7 <= 3)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, off_278BC3DB8[v7], *&asc_23CE4D1F8[8 * v7]);
  }

  absl::lts_20240722::log_internal::CheckOpMessageBuilder::NewString(&v8);
}

void sub_23CC4F864(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void operations_research::sat::ConstraintPropagationOrder::~ConstraintPropagationOrder(operations_research::sat::ConstraintPropagationOrder *this)
{
  std::deque<int>::~deque[abi:ne200100](this + 208);
  v2 = *(this + 23);
  if (v2)
  {
    *(this + 24) = v2;
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
    *(this + 16) = v4;
    operator delete(v4);
  }

  v5 = *(this + 12);
  if (v5)
  {
    *(this + 13) = v5;
    operator delete(v5);
  }

  v6 = *(this + 9);
  if (v6)
  {
    *(this + 10) = v6;
    operator delete(v6);
  }

  v7 = *(this + 6);
  if (v7)
  {
    *(this + 7) = v7;
    operator delete(v7);
  }

  v8 = *(this + 4);
  if (v8 == (this + 8))
  {
    (*(*v8 + 32))(v8);
  }

  else if (v8)
  {
    (*(*v8 + 40))(v8);
  }
}

const void **std::deque<int>::__add_front_capacity(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v1) << 7) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) < 0x400)
  {
    v7 = *(a1 + 24);
    v8 = *a1;
    v9 = &v7[-*a1];
    if (v3 < v9)
    {
      if (v1 != v8)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 >> 2;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *(a1 + 32) = v5 + 1024;
  v11 = *(v2 - 1);
  *(a1 + 16) = v2 - 8;
  return std::__split_buffer<int *>::emplace_front<int *>(a1, &v11);
}

void sub_23CC4FD24(_Unwind_Exception *a1)
{
  operator delete(v1);
  operator delete(v2);
  _Unwind_Resume(a1);
}

void std::deque<int>::resize(void *a1, unint64_t a2)
{
  v3 = a1[5];
  if (a2 > v3)
  {
    v4 = a2 - v3;

    std::deque<int>::__append(a1, v4);
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

void std::deque<int>::__append(void *a1, unint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v5 - v4) << 7) - 1;
  }

  v7 = a1[5];
  v8 = v7 + a1[4];
  v9 = v6 - v8;
  v10 = a2 > v9;
  v11 = a2 - v9;
  if (v10)
  {
    std::deque<int>::__add_back_capacity(a1, v11);
    v7 = a1[5];
    v4 = a1[1];
    v5 = a1[2];
    v8 = a1[4] + v7;
  }

  v12 = (v4 + 8 * (v8 >> 10));
  if (v5 != v4)
  {
    v13 = (*v12 + 4 * (v8 & 0x3FF));
    v14 = v13;
    if (a2)
    {
      goto LABEL_9;
    }

LABEL_13:
    v16 = (v4 + 8 * (v8 >> 10));
    if (v13 != v14)
    {
      goto LABEL_21;
    }

    return;
  }

  v13 = 0;
  v14 = 0;
  if (!a2)
  {
    goto LABEL_13;
  }

LABEL_9:
  v15 = a2 + ((v14 - *v12) >> 2);
  if (v15 < 1)
  {
    v17 = 1023 - v15;
    v18 = 2046 - v15;
    if (v17 >= 0)
    {
      v18 = v17;
    }

    v16 = &v12[-(v18 >> 10)];
    v19 = v17 & 0x3FF;
    v21 = -v17;
    v20 = v21 < 0;
    v22 = v21 & 0x3FF;
    if (v20)
    {
      v23 = v19;
    }

    else
    {
      v23 = -v22;
    }

    v14 = *v16 + 4 * (1023 - v23);
    if (v13 != v14)
    {
      do
      {
LABEL_21:
        v24 = v14;
        if (v12 != v16)
        {
          v24 = *v12 + 4096;
        }

        if (v13 == v24)
        {
          if (v12 == v16)
          {
            break;
          }
        }

        else
        {
          v25 = ((v24 - v13 - 4) & 0xFFFFFFFFFFFFFFFCLL) + 4;
          bzero(v13, v25);
          v7 += v25 >> 2;
          if (v12 == v16)
          {
            break;
          }
        }

        v26 = v12[1];
        ++v12;
        v13 = v26;
      }

      while (v26 != v14);
      a1[5] = v7;
    }
  }

  else
  {
    v16 = &v12[v15 >> 10];
    v14 = *v16 + 4 * (v15 & 0x3FF);
    if (v13 != v14)
    {
      goto LABEL_21;
    }
  }
}