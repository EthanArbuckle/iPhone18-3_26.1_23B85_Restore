void operations_research::glop::ColumnPriorityQueue::~ColumnPriorityQueue(operations_research::glop::ColumnPriorityQueue *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    v3 = *(this + 7);
    v4 = *(this + 6);
    if (v3 != v2)
    {
      v5 = *(this + 7);
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

      while (v5 != v2);
      v4 = *(this + 6);
    }

    *(this + 7) = v2;
    operator delete(v4);
  }

  v8 = *(this + 3);
  if (v8)
  {
    *(this + 4) = v8;
    operator delete(v8);
  }

  v9 = *this;
  if (*this)
  {
    *(this + 1) = v9;
    operator delete(v9);
  }
}

void operations_research::glop::SparseMatrixWithReusableColumnMemory::~SparseMatrixWithReusableColumnMemory(operations_research::glop::SparseMatrixWithReusableColumnMemory *this)
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
      v4 = *(this + 12);
    }

    *(this + 13) = v2;
    operator delete(v4);
  }

  v7 = *(this + 9);
  if (v7)
  {
    *(this + 10) = v7;
    operator delete(v7);
  }

  v8 = *(this + 6);
  if (v8)
  {
    *(this + 7) = v8;
    operator delete(v8);
  }

  v9 = *this;
  *this = 0;
  if (v9)
  {
    MEMORY[0x23EED9440](v9, 0x1000C8077774924);
  }
}

void operations_research::glop::Markowitz::Stats::~Stats(operations_research::glop::Markowitz::Stats *this)
{
  *(this + 40) = &unk_284F3A5F8;
  if (*(this + 351) < 0)
  {
    operator delete(*(this + 41));
    *(this + 30) = &unk_284F3A5F8;
    if ((*(this + 271) & 0x80000000) == 0)
    {
LABEL_3:
      *(this + 20) = &unk_284F3A5F8;
      if ((*(this + 191) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    *(this + 30) = &unk_284F3A5F8;
    if ((*(this + 271) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(*(this + 31));
  *(this + 20) = &unk_284F3A5F8;
  if ((*(this + 191) & 0x80000000) == 0)
  {
LABEL_4:
    *(this + 10) = &unk_284F3A5F8;
    if ((*(this + 111) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(*(this + 21));
  *(this + 10) = &unk_284F3A5F8;
  if ((*(this + 111) & 0x80000000) == 0)
  {
LABEL_5:
    v2 = this;

    goto LABEL_7;
  }

LABEL_11:
  operator delete(*(this + 11));
  v2 = this;

LABEL_7:
  operations_research::StatsGroup::~StatsGroup(v2);
}

operations_research::glop::Markowitz::Stats *operations_research::glop::Markowitz::Stats::Stats(operations_research::glop::Markowitz::Stats *this)
{
  *(this + 23) = 9;
  strcpy(this, "Markowitz");
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 9) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  *(this + 7) = this + 64;
  operations_research::DistributionStat::DistributionStat(this + 80, "basis_singleton_column_ratio", 0x1CuLL, this);
  *(this + 10) = &unk_284F44D30;
  operations_research::DistributionStat::DistributionStat(this + 160, "basis_residual_singleton_column_ratio", 0x25uLL, this);
  *(this + 20) = &unk_284F44D30;
  operations_research::DistributionStat::DistributionStat(this + 240, "pivots_without_fill_in_ratio", 0x1CuLL, this);
  *(this + 30) = &unk_284F44D30;
  operations_research::DistributionStat::DistributionStat(this + 320, "degree_two_pivot_columns", 0x18uLL, this);
  *(this + 40) = &unk_284F44D30;
  return this;
}

void sub_23CBAE8A4(_Unwind_Exception *a1)
{
  *(v1 + 240) = &unk_284F3A5F8;
  if (*(v1 + 271) < 0)
  {
    operator delete(*(v1 + 248));
    *(v1 + 160) = &unk_284F3A5F8;
    if ((*(v1 + 191) & 0x80000000) == 0)
    {
LABEL_3:
      *(v1 + 80) = &unk_284F3A5F8;
      if ((*(v1 + 111) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    *(v1 + 160) = &unk_284F3A5F8;
    if ((*(v1 + 191) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(*(v1 + 168));
  *(v1 + 80) = &unk_284F3A5F8;
  if ((*(v1 + 111) & 0x80000000) == 0)
  {
LABEL_4:
    operations_research::StatsGroup::~StatsGroup(v1);
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(*(v1 + 88));
  operations_research::StatsGroup::~StatsGroup(v1);
  _Unwind_Resume(a1);
}

void *std::vector<BOOL>::operator=(void *result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = *(a2 + 8);
    if (v3)
    {
      v4 = result;
      if (v3 > result[2] << 6)
      {
        v5 = *result;
        if (v5)
        {
          operator delete(v5);
          *v4 = 0;
          v4[1] = 0;
          v4[2] = 0;
          v3 = *(a2 + 8);
        }

        if ((v3 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      memmove(*result, *a2, (((v3 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8) + 8);
      result = v4;
      v3 = *(a2 + 8);
    }

    result[1] = v3;
  }

  return result;
}

void operations_research::glop::Markowitz::ComputeRowAndColumnPermutation(uint64_t a1@<X0>, uint64_t a2@<X1>, std::vector<int> *a3@<X2>, std::vector<int> *a4@<X3>, uint64_t a5@<X8>)
{
  v67[2] = *MEMORY[0x277D85DE8];
  operations_research::glop::Markowitz::Clear(a1);
  v59 = **a2;
  v8 = *(a2 + 16);
  LODWORD(__u.__r_.__value_.__l.__data_) = -1;
  std::vector<int>::assign(a4, v8, &__u);
  LODWORD(__u.__r_.__value_.__l.__data_) = -1;
  std::vector<int>::assign(a3, v59, &__u);
  if (*(*a2 + 8) == *(*a2 + 16))
  {
    operations_research::glop::Status::Status(a5);
    goto LABEL_45;
  }

  *(a1 + 400) = a2;
  operations_research::glop::TriangularMatrix::Reset(a1 + 648, v59, v8);
  operations_research::glop::TriangularMatrix::Reset(a1 + 944, v59, v8);
  LODWORD(__u.__r_.__value_.__l.__data_) = -1;
  std::vector<int>::assign((a1 + 456), v8, &__u);
  *(a1 + 488) = *(a1 + 480);
  v9 = *(a1 + 504);
  v10 = *(a1 + 512);
  while (v10 != v9)
  {
    v12 = *(v10 - 6);
    v10 -= 6;
    v11 = v12;
    *v10 = 0;
    if (v12)
    {
      MEMORY[0x23EED9440](v11, 0x1000C8077774924);
    }
  }

  *(a1 + 512) = v9;
  LODWORD(__u.__r_.__value_.__l.__data_) = -1;
  std::vector<int>::assign((a1 + 576), v8, &__u);
  *(a1 + 608) = *(a1 + 600);
  v13 = *(a1 + 632);
  v14 = *(a1 + 624);
  while (v13 != v14)
  {
    v16 = *(v13 - 6);
    v13 -= 6;
    v15 = v16;
    *v13 = 0;
    if (v16)
    {
      MEMORY[0x23EED9440](v15, 0x1000C8077774924);
    }
  }

  *(a1 + 632) = v14;
  __u.__r_.__value_.__s.__data_[0] = 0;
  std::vector<BOOL>::assign(a1 + 1240, v8, &__u);
  *(a1 + 1496) = 1;
  v66 = 0;
  operations_research::glop::Markowitz::ExtractSingletonColumns(a1, a2, v17, a3, a4, &v66);
  operations_research::glop::Markowitz::ExtractResidualSingletonColumns(a1, a2, a3, a4, &v66);
  v58 = v66;
  operations_research::glop::MatrixNonZeroPattern::InitializeFromMatrixSubset(a1 + 1264, a2, a3, a4, (a1 + 1528), (a1 + 1552));
  if (v59 >= v8)
  {
    v18 = v8;
  }

  else
  {
    v18 = v59;
  }

  v19 = v58;
  v57 = v18;
  if (v58 >= v18)
  {
LABEL_37:
    *(a1 + 1904) += 10 * (*(a1 + 652) + ((*(a1 + 664) - *(a1 + 656)) >> 3)) + 10 * (*(a1 + 948) + ((*(a1 + 960) - *(a1 + 952)) >> 3));
    operations_research::RatioDistribution::Add(a1 + 240, v58 / v59);
    operations_research::RatioDistribution::Add(a1 + 320, 0.0 / v59);
    operations_research::glop::Status::Status(a5);
LABEL_45:
    v52 = *MEMORY[0x277D85DE8];
    return;
  }

  v20 = *(a1 + 1752);
  v22 = a4;
  v21 = a3;
  while (1)
  {
    v65 = 0.0;
    v63 = -1;
    v64 = -1;
    Pivot = operations_research::glop::Markowitz::FindPivot(a1, v21, v22, &v64, &v63, &v65);
    v24 = v64;
    if (v64 == -1)
    {
      break;
    }

    v25 = v63;
    if (v63 == -1)
    {
      break;
    }

    v26 = v65;
    if (fabs(v65) <= v20)
    {
      break;
    }

    v27 = 4 * v63;
    v28 = *(*(a1 + 1312) + v27);
    v29 = *(a1 + 1288);
    *(*(a1 + 1336) + ((v63 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v63;
    --*(a1 + 1408);
    *(v29 + 4 * v24) = 0;
    if (Pivot)
    {
      operations_research::glop::Markowitz::UpdateResidualMatrix(a1, v24, v25);
    }

    else
    {
      ++v58;
      if (v28 == 1)
      {
        operations_research::glop::Markowitz::RemoveRowFromResidualMatrix(a1, v24);
      }

      else
      {
        v30 = *(*(a1 + 456) + 4 * v25);
        v31 = a1 + 408;
        if (v30 != -1)
        {
          v31 = *(a1 + 504) + 48 * v30;
        }

        v32 = *(v31 + 8);
        if (v32 >= 1)
        {
          v33 = *(v31 + 24);
          do
          {
            v34 = *v33++;
            LODWORD(__u.__r_.__value_.__l.__data_) = v34;
            v35 = *(a1 + 1288);
            v36 = 4 * v34;
            v37 = *(v35 + v36) - 1;
            *(v35 + v36) = v37;
            if (v37 == 1)
            {
              std::vector<int>::push_back[abi:ne200100](a1 + 1552, &__u);
            }

            --v32;
          }

          while (v32);
        }
      }
    }

    if (*(a1 + 1496) == 1)
    {
      operations_research::glop::TriangularMatrix::AddDiagonalOnlyColumn(a1 + 648, 1.0);
      v38 = *(*(a2 + 8) + v27);
      v39 = *(*a2 + 56);
      v40 = *(v39 + 8 * v38);
      v41 = *(v39 + (((v38 << 32) + 0x100000000) >> 29)) - v40;
      v42 = *(*a2 + 32) + 4 * v40;
      v43 = *(*a2 + 8) + 8 * v40;
      __u.__r_.__value_.__r.__words[0] = v41;
      __u.__r_.__value_.__l.__size_ = v42;
      __u.__r_.__value_.__r.__words[2] = v43;
      operations_research::glop::TriangularMatrix::AddTriangularColumn(a1 + 944, &__u, v24);
    }

    else
    {
      v44 = *(*(a1 + 456) + v27);
      v45 = (a1 + 408);
      if (v44 != -1)
      {
        v45 = (*(a1 + 504) + 48 * v44);
      }

      operations_research::glop::TriangularMatrix::AddAndNormalizeTriangularColumn(a1 + 648, v45, v24, v26);
      std::vector<int>::push_back[abi:ne200100](a1 + 480, (*(a1 + 456) + v27));
      v46 = *(a1 + 456);
      v47 = *(a1 + 504) + 48 * *(v46 + v27);
      *(v47 + 8) = 0;
      *(v47 + 40) = 0;
      *(v46 + v27) = -1;
      v48 = *(*(a1 + 576) + v27);
      v49 = (a1 + 528);
      if (v48 != -1)
      {
        v49 = (*(a1 + 624) + 48 * v48);
      }

      operations_research::glop::TriangularMatrix::AddTriangularColumnWithGivenDiagonalEntry(a1 + 944, v49, v26);
      std::vector<int>::push_back[abi:ne200100](a1 + 600, (*(a1 + 576) + v27));
      v50 = *(a1 + 576);
      v51 = *(a1 + 624) + 48 * *(v50 + v27);
      *(v51 + 8) = 0;
      *(v51 + 40) = 0;
      *(v50 + v27) = -1;
    }

    v22 = a4;
    v21 = a3;
    a4->__begin_[v27 / 4] = v19;
    a3->__begin_[v24] = v19++;
    if (v19 == v57)
    {
      goto LABEL_37;
    }
  }

  v66 = v19;
  *v67 = v65;
  v67[1] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
  absl::lts_20240722::str_format_internal::FormatPack("The matrix is singular! pivot = %E", 34, v67, 1uLL, &__u);
  if (dword_2810BD380 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::glop::Markowitz::ComputeRowAndColumnPermutation(operations_research::glop::CompactSparseMatrixView const&,operations_research::glop::Permutation<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>> *,operations_research::glop::Permutation<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>> *)::$_0::operator() const(void)::site, dword_2810BD380))
  {
    v54 = absl::lts_20240722::log_internal::LogMessage::LogMessage(v67, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/markowitz.cc", 91);
    v55 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v54, 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v55, "ERROR_LU: ", 0xAuLL);
    absl::lts_20240722::log_internal::LogMessage::operator<<(v55, &__u);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v67);
  }

  if (SHIBYTE(__u.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v61, __u.__r_.__value_.__l.__data_, __u.__r_.__value_.__l.__size_);
  }

  else
  {
    v61 = __u;
  }

  operations_research::glop::Status::Status(a5, 1, &v61);
  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__u.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_45;
    }
  }

  else if ((SHIBYTE(__u.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_45;
  }

  operator delete(__u.__r_.__value_.__l.__data_);
  v53 = *MEMORY[0x277D85DE8];
}

void sub_23CBAF140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::glop::Markowitz::Clear(operations_research::glop::Markowitz *this)
{
  *(this + 58) = *(this + 57);
  *(this + 61) = *(this + 60);
  v2 = *(this + 63);
  v3 = *(this + 64);
  while (v3 != v2)
  {
    v5 = *(v3 - 6);
    v3 -= 6;
    v4 = v5;
    *v3 = 0;
    if (v5)
    {
      MEMORY[0x23EED9440](v4, 0x1000C8077774924);
    }
  }

  *(this + 64) = v2;
  *(this + 73) = *(this + 72);
  *(this + 76) = *(this + 75);
  v6 = *(this + 79);
  v7 = *(this + 78);
  while (v6 != v7)
  {
    v9 = *(v6 - 6);
    v6 -= 6;
    v8 = v9;
    *v6 = 0;
    if (v9)
    {
      MEMORY[0x23EED9440](v8, 0x1000C8077774924);
    }
  }

  *(this + 79) = v7;
  *(this + 162) = *(this + 161);
  *(this + 165) = *(this + 164);
  v10 = *(this + 159);
  v11 = *(this + 158);
  if (v10 != v11)
  {
    v12 = *(this + 159);
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

    while (v12 != v11);
  }

  *(this + 159) = v11;
  *(this + 168) = 0;
  *(this + 171) = 0;
  *(this + 352) = 0;
  *(this + 181) = *(this + 180);
  *(this + 178) = *(this + 177);
  v14 = *(this + 184);
  v15 = *(this + 183);
  if (v14 != v15)
  {
    v16 = *(this + 184);
    do
    {
      v18 = *(v16 - 24);
      v16 -= 24;
      v17 = v18;
      if (v18)
      {
        *(v14 - 16) = v17;
        operator delete(v17);
      }

      v14 = v16;
    }

    while (v16 != v15);
  }

  *(this + 184) = v15;
  *(this + 189) = *(this + 188);
  *(this + 238) = 0;
  *(this + 1497) = 0;
}

void operations_research::glop::Markowitz::ExtractSingletonColumns(uint64_t a1, int **a2, __n128 a3, uint64_t a4, uint64_t a5, int *a6)
{
  if (a2[2] >= 1)
  {
    v8 = 0;
    do
    {
      v9 = a2[1][v8];
      v10 = *(*a2 + 7);
      v11 = *(v10 + 8 * v9);
      if (*(v10 + (((v9 << 32) + 0x100000000) >> 29)) - v11 == 1)
      {
        v12 = *(*(*a2 + 1) + 8 * v11);
        operator new();
      }

      ++v8;
    }

    while ((a2[2] & 0x7FFFFFFF) != v8);
  }

  operations_research::RatioDistribution::Add(a1 + 80, *a6 / **a2);
}

void sub_23CBAF5B4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::glop::Markowitz::ExtractResidualSingletonColumns(uint64_t a1, int **a2, uint64_t *a3, uint64_t *a4, int *a5)
{
  if (a2[2] >= 1)
  {
    v10 = 0;
    v11 = a2[2] & 0x7FFFFFFF;
    v12 = 0xFFFFFFFFLL;
    do
    {
      v13 = *a4;
      if (*(*a4 + 4 * v10) == -1)
      {
        v14 = a2[1][v10];
        v15 = *(*a2 + 7);
        v16 = *(v15 + 8 * v14);
        v17 = *(v15 + (((v14 << 32) + 0x100000000) >> 29)) - v16;
        v18 = (*(*a2 + 4) + 4 * v16);
        v19 = *(*a2 + 1) + 8 * v16;
        v26[0] = v17;
        v26[1] = v18;
        v26[2] = v19;
        if (v17 >= 1)
        {
          v20 = 0;
          v21 = *a3;
          do
          {
            v23 = *v18++;
            v22 = v23;
            if (*(v21 + 4 * v23) == -1)
            {
              if (++v20 > 1)
              {
                goto LABEL_4;
              }
            }

            else
            {
              v22 = v12;
            }

            v12 = v22;
            --v17;
          }

          while (v17);
          if (v20 == 1)
          {
            v24 = *a5;
            *(v13 + 4 * v10) = *a5;
            *(v21 + 4 * v22) = v24;
            operations_research::glop::TriangularMatrix::AddDiagonalOnlyColumn(a1 + 648, 1.0);
            operations_research::glop::TriangularMatrix::AddTriangularColumn(a1 + 944, v26, v22);
            ++*a5;
          }

          v12 = v22;
        }
      }

LABEL_4:
      ++v10;
    }

    while (v10 != v11);
  }

  return operations_research::RatioDistribution::Add(a1 + 160, *a5 / **a2);
}

void operations_research::glop::MatrixNonZeroPattern::InitializeFromMatrixSubset(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void *a5, void *a6)
{
  v11 = *(a2 + 16);
  v12 = **a2;
  operations_research::glop::MatrixNonZeroPattern::Reset(a1, v12, v11);
  v46 = a5;
  a5[1] = *a5;
  a6[1] = *a6;
  if (v11 >= 1)
  {
    v13 = 0;
    v14 = *a4;
    v15 = *a2;
    v16 = *(a2 + 8);
    do
    {
      if (*(v14 + 4 * v13) == -1)
      {
        v17 = *(v16 + 4 * v13);
        v18 = *(v15 + 7);
        v19 = *(v18 + 8 * v17);
        v20 = *(v18 + (((v17 << 32) + 0x100000000) >> 29)) - v19;
        if (v20 >= 1)
        {
          v21 = (*(v15 + 4) + 4 * v19);
          v22 = *(a1 + 24);
          do
          {
            v23 = *v21++;
            ++*(v22 + 4 * v23);
            --v20;
          }

          while (v20);
        }
      }

      else
      {
        *(*(a1 + 72) + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        --*(a1 + 144);
      }

      ++v13;
    }

    while (v13 != (v11 & 0x7FFFFFFF));
  }

  v49 = 0;
  if (v12 >= 1)
  {
    for (i = 0; i < v12; v49 = i)
    {
      v25 = 4 * i;
      if (*(*a3 + v25) == -1)
      {
        v26 = (*a1 + 32 * i);
        if (*v26)
        {
          v28 = v26[1];
          v27 = v26[2];
        }

        else
        {
          v27 = 6;
        }

        v29 = *(a1 + 24);
        v30 = *(v29 + v25);
        if (v27 < v30)
        {
          if (2 * v27 <= v30)
          {
            v31 = *(v29 + v25);
          }

          else
          {
            v31 = 2 * v27;
          }

          if (!(v31 >> 62))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        if (*(v29 + v25) == 1)
        {
          std::vector<int>::push_back[abi:ne200100](a6, &v49);
        }
      }

      else
      {
        *(*(a1 + 24) + 4 * i) = 0;
      }

      i = v49 + 1;
    }
  }

  v48 = 0;
  if (v11 >= 1)
  {
    v32 = 0;
    do
    {
      v33 = 4 * v32;
      if (*(*a4 + v33) == -1)
      {
        v34 = *(*(a2 + 8) + v33);
        v35 = *(*a2 + 56);
        v36 = *(v35 + 8 * v34);
        v37 = *(v35 + (((v34 << 32) + 0x100000000) >> 29)) - v36;
        if (v37 < 1)
        {
          *(*(a1 + 48) + v33) = 0;
        }

        else
        {
          v38 = 0;
          v39 = (*(*a2 + 32) + 4 * v36);
          do
          {
            v41 = *v39++;
            v40 = v41;
            if (*(*a3 + 4 * v41) == -1)
            {
              v42 = (*a1 + 32 * v40);
              v44 = v42 + 1;
              v43 = *v42;
              if (*v42)
              {
                v44 = v42[1];
                v45 = v42[2];
              }

              else
              {
                v45 = 6;
              }

              ++v38;
              if (v43 >> 1 == v45)
              {
                absl::lts_20240722::inlined_vector_internal::Storage<operations_research::sat::Literal,6ul,std::allocator<operations_research::sat::Literal>>::EmplaceBackSlow<operations_research::sat::Literal const&>(v42);
              }

              *(v44 + (v43 >> 1)) = v48;
              *v42 = v43 + 2;
            }

            --v37;
          }

          while (v37);
          *(*(a1 + 48) + 4 * v48) = v38;
          if (v38 == 1)
          {
            std::vector<int>::push_back[abi:ne200100](v46, &v48);
          }
        }
      }

      v32 = v48 + 1;
      v48 = v32;
    }

    while (v32 < v11);
  }
}

uint64_t operations_research::glop::Markowitz::FindPivot(uint64_t a1, void *a2, void *a3, _DWORD *a4, int *a5, double *a6)
{
  v12 = *(a1 + 1528);
  v13 = *(a1 + 1536);
  while (v12 != v13)
  {
    v15 = *(v13 - 4);
    v13 -= 4;
    v14 = v15;
    *(a1 + 1536) = v13;
    v16 = 4 * v15;
    if (*(*(a1 + 1312) + v16) == 1)
    {
      if (*(a1 + 1496) == 1)
      {
        *a5 = v14;
        v76 = *(a1 + 400);
        v77 = *v76;
        v78 = *(v76[1] + v16);
        v79 = *(*v76 + 56);
        v80 = *(v79 + 8 * v78);
        v81 = *(v79 + (((v78 << 32) + 0x100000000) >> 29)) - v80;
        if (v81 < 1)
        {
          return 0;
        }

        v82 = (*(v77 + 32) + 4 * v80);
        for (i = (*(v77 + 8) + 8 * v80); ; ++i)
        {
          v85 = *v82++;
          v84 = v85;
          if (*(*a2 + 4 * v85) == -1)
          {
            break;
          }

          if (!--v81)
          {
            return 0;
          }
        }

        v50 = 0;
        *a4 = v84;
        *a6 = *i;
        return v50;
      }

      v17 = operations_research::glop::Markowitz::ComputeColumn(a1, a2, v14);
      if (v17[1])
      {
        v50 = 0;
        *a5 = v14;
        *a4 = *v17[3];
        *a6 = *v17[4];
        return v50;
      }

      v12 = *(a1 + 1528);
      v13 = *(a1 + 1536);
    }
  }

  v98 = a4;
  *(a1 + 1496) = 0;
  while (2)
  {
    v18 = *(a1 + 1552);
    v19 = *(a1 + 1560);
    while (1)
    {
LABEL_9:
      if (v18 == v19)
      {
        v99 = a6;
        if ((*(a1 + 1497) & 1) == 0)
        {
          *(a1 + 1497) = 1;
          v33 = a3[1] - *a3;
          v34 = (a1 + 1416);
          operations_research::glop::ColumnPriorityQueue::Reset((a1 + 1416), (a2[1] - *a2) >> 2, v33 >> 2);
          if ((v33 >> 2) >= 1)
          {
            v35 = 0;
            v36 = (v33 >> 2) & 0x7FFFFFFF;
            do
            {
              if (*(*a3 + 4 * v35) == -1)
              {
                v37 = *(*(a1 + 1312) + 4 * v35);
                v100 = v35;
                if (v37 == 1)
                {
                  std::vector<int>::push_back[abi:ne200100](a1 + 1528, &v100);
                }

                else
                {
                  v101 = v35;
                  v38 = *(a1 + 1440);
                  v39 = *(v38 + 4 * v35);
                  if (v39 != v37)
                  {
                    v40 = *v34;
                    v41 = *(*v34 + 4 * v35);
                    if (v41 != -1)
                    {
                      v42 = (*(a1 + 1464) + 24 * v39);
                      v43 = v42[1];
                      v44 = *(v43 - 4);
                      *(*v42 + 4 * v41) = v44;
                      *(v40 + 4 * v44) = v41;
                      v42[1] = v43 - 4;
                    }

                    if (v37 < 1)
                    {
                      *(v40 + 4 * v35) = -1;
                      *(v38 + 4 * v35) = 0;
                    }

                    else
                    {
                      v45 = (*(a1 + 1464) + 24 * v37);
                      *(v40 + 4 * v35) = (v45[1] - *v45) >> 2;
                      *(v38 + 4 * v35) = v37;
                      std::vector<int>::push_back[abi:ne200100](v45, &v101);
                      v46 = *(a1 + 1488);
                      if (v46 >= v37)
                      {
                        v46 = v37;
                      }

                      *(a1 + 1488) = v46;
                    }
                  }
                }
              }

              ++v35;
            }

            while (v36 != v35);
          }
        }

        v47 = *(a1 + 1504);
        *(a1 + 1512) = v47;
        v48 = *(a1 + 1724);
        if (!v48)
        {
          return 0x7FFFFFFFFFFFFFFFLL;
        }

        v49 = a1 + 1504;
        v50 = 0x7FFFFFFFFFFFFFFFLL;
        v51 = *(a1 + 1728);
        v52 = v47;
        do
        {
          v53 = *(a1 + 1464);
          v54 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 1472) - v53) >> 3);
          v55 = *(a1 + 1488);
          if (v54 == v55)
          {
            break;
          }

          v56 = v55 + 1;
          while (1)
          {
            v57 = (v53 + 24 * v55);
            v58 = v57[1];
            if (*v57 != v58)
            {
              break;
            }

            *(a1 + 1488) = v56;
            v55 = v56++;
            if (v54 == v55)
            {
              goto LABEL_80;
            }
          }

          v59 = *(v58 - 4);
          v57[1] = v58 - 4;
          v60 = 4 * v59;
          *(*(a1 + 1416) + v60) = -1;
          *(*(a1 + 1440) + v60) = 0;
          v101 = v59;
          if (v59 == -1)
          {
            goto LABEL_79;
          }

          if (*(*a3 + v60) == -1)
          {
            v61 = *(*(a1 + 1312) + v60);
            v62 = v49;
            std::vector<int>::push_back[abi:ne200100](v49, &v101);
            v63 = v61 - 1;
            if (v50 < v63)
            {
              v52 = *v62;
LABEL_79:
              v47 = *(a1 + 1512);
              break;
            }

            v64 = operations_research::glop::Markowitz::ComputeColumn(a1, a2, v101);
            v65 = v64[1];
            if (v65 < 1)
            {
              goto LABEL_54;
            }

            v66 = 0;
            v67 = v64[4];
            v68 = 0.0;
            do
            {
              v69 = fabs(v67[v66]);
              if (v68 < v69)
              {
                v68 = v69;
              }

              ++v66;
            }

            while (v65 != v66);
            if (v68 == 0.0)
            {
LABEL_54:
              *(a1 + 1512) -= 4;
              v49 = v62;
            }

            else
            {
              v70 = v51 * v68;
              v71 = v64[3];
              v72 = v101;
              v49 = v62;
              do
              {
                v73 = *v67;
                v74 = fabs(*v67);
                if (v74 >= v70)
                {
                  v75 = (*(*(a1 + 1288) + 4 * *v71) - 1) * v63;
                  if (v50 > v75 || v50 == v75 && v74 > fabs(*v99))
                  {
                    *a5 = v72;
                    *v98 = *v71;
                    *v99 = v73;
                    v50 = v75;
                  }
                }

                ++v67;
                ++v71;
                --v65;
              }

              while (v65);
            }
          }

          v47 = *(a1 + 1512);
          v52 = *(a1 + 1504);
        }

        while (v48 > v47 - v52);
LABEL_80:
        while (v52 != v47)
        {
          if (*v52 != *a5)
          {
            v88 = 4 * *v52;
            v89 = *(*(a1 + 1312) + v88);
            v101 = *v52;
            v90 = *(a1 + 1440);
            v91 = *(v90 + v88);
            if (v91 != v89)
            {
              v92 = *(a1 + 1416);
              v93 = *(v92 + v88);
              if (v93 != -1)
              {
                v94 = (*(a1 + 1464) + 24 * v91);
                v95 = v94[1];
                v96 = *(v95 - 4);
                *(*v94 + 4 * v93) = v96;
                *(v92 + 4 * v96) = v93;
                v94[1] = v95 - 4;
              }

              if (v89 >= 1)
              {
                v86 = (*(a1 + 1464) + 24 * v89);
                *(v92 + v88) = (v86[1] - *v86) >> 2;
                *(v90 + v88) = v89;
                std::vector<int>::push_back[abi:ne200100](v86, &v101);
                v87 = *(a1 + 1488);
                if (v87 >= v89)
                {
                  v87 = v89;
                }

                *(a1 + 1488) = v87;
              }

              else
              {
                *(v92 + v88) = -1;
                *(v90 + v88) = 0;
              }
            }
          }

          ++v52;
        }

        return v50;
      }

      v21 = *(v19 - 4);
      v19 -= 4;
      v20 = v21;
      *(a1 + 1560) = v19;
      v22 = 4 * v21;
      if (*(*a2 + v22) == -1 && *(*(a1 + 1288) + v22) == 1)
      {
        v23 = (*(a1 + 1264) + 32 * v20);
        v26 = *v23;
        v24 = (v23 + 1);
        v25 = v26;
        if (v26)
        {
          v24 = *v24;
        }

        if ((v25 & 0x7FFFFFFFFFFFFFFELL) != 0)
        {
          v27 = 4 * (v25 >> 1);
          while (1)
          {
            v28 = *v24;
            if (((*(*(a1 + 1336) + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
            {
              break;
            }

            ++v24;
            v27 -= 4;
            if (!v27)
            {
              goto LABEL_9;
            }
          }

          if (v28 != -1)
          {
            break;
          }
        }
      }
    }

    v29 = operations_research::glop::Markowitz::ComputeColumn(a1, a2, v28);
    v30 = v29[1];
    if (!v30)
    {
      continue;
    }

    break;
  }

  *a5 = v28;
  *v98 = v20;
  if (v30 < 1)
  {
    v32 = 0;
  }

  else
  {
    v31 = 0;
    v32 = 0;
    do
    {
      if (*(v29[3] + 4 * v31) == v20)
      {
        v32 = *(v29[4] + 8 * v31);
      }

      ++v31;
    }

    while (v30 != v31);
  }

  v50 = 0;
  *a6 = v32;
  return v50;
}

uint64_t operations_research::glop::MatrixNonZeroPattern::DeleteRowAndColumn(uint64_t result, int a2, int a3)
{
  *(*(result + 72) + ((a3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a3;
  --*(result + 144);
  *(*(result + 24) + 4 * a2) = 0;
  return result;
}

void operations_research::glop::Markowitz::RemoveRowFromResidualMatrix(uint64_t a1, int a2)
{
  v3 = (*(a1 + 1264) + 32 * a2);
  v6 = *v3;
  v5 = (v3 + 1);
  v4 = v6;
  if (*(a1 + 1497) == 1)
  {
    if (v4)
    {
      v5 = *v5;
    }

    if ((v4 & 0x7FFFFFFFFFFFFFFELL) != 0)
    {
      v7 = 4 * (v4 >> 1);
      do
      {
        v8 = *v5;
        if (((*(*(a1 + 1336) + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
        {
          v9 = *(a1 + 1312);
          v10 = 4 * v8;
          v11 = *(v9 + v10);
          v12 = v11 - 1;
          *(v9 + v10) = v11 - 1;
          v27 = v8;
          if (v11 == 2)
          {
            std::vector<int>::push_back[abi:ne200100](a1 + 1528, &v27);
          }

          else
          {
            v28 = v8;
            v13 = *(a1 + 1440);
            v14 = *(v13 + v10);
            if (v14 != v12)
            {
              v15 = *(a1 + 1416);
              v16 = *(v15 + v10);
              if (v16 != -1)
              {
                v17 = (*(a1 + 1464) + 24 * v14);
                v18 = v17[1];
                v19 = *(v18 - 4);
                *(*v17 + 4 * v16) = v19;
                *(v15 + 4 * v19) = v16;
                v17[1] = v18 - 4;
              }

              if (v12 < 1)
              {
                *(v15 + v10) = -1;
                *(v13 + v10) = 0;
              }

              else
              {
                v20 = (*(a1 + 1464) + 24 * v12);
                *(v15 + v10) = (v20[1] - *v20) >> 2;
                *(v13 + v10) = v12;
                std::vector<int>::push_back[abi:ne200100](v20, &v28);
                v21 = *(a1 + 1488);
                if (v21 >= v12)
                {
                  v21 = v12;
                }

                *(a1 + 1488) = v21;
              }
            }
          }
        }

        ++v5;
        v7 -= 4;
      }

      while (v7);
    }
  }

  else
  {
    if (v4)
    {
      v5 = *v5;
    }

    if ((v4 & 0x7FFFFFFFFFFFFFFELL) != 0)
    {
      v22 = 4 * (v4 >> 1);
      do
      {
        v26 = *v5;
        if (((*(*(a1 + 1336) + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
        {
          v23 = *(a1 + 1312);
          v24 = 4 * v26;
          v25 = *(v23 + v24) - 1;
          *(v23 + v24) = v25;
          if (v25 == 1)
          {
            std::vector<int>::push_back[abi:ne200100](a1 + 1528, &v26);
          }
        }

        ++v5;
        v22 -= 4;
      }

      while (v22);
    }
  }
}

void operations_research::glop::Markowitz::UpdateResidualMatrix(uint64_t a1, int a2, uint64_t a3)
{
  v5 = a1 + 408;
  v6 = 4 * a3;
  v7 = *(*(a1 + 456) + v6);
  v8 = (a1 + 408);
  if (v7 != -1)
  {
    v8 = (*(a1 + 504) + 48 * v7);
  }

  operations_research::glop::MatrixNonZeroPattern::Update(a1 + 1264, a2, a3, v8);
  v9 = (*(a1 + 1264) + 32 * a2);
  v12 = *v9;
  v11 = (v9 + 1);
  v10 = v12;
  if (v12)
  {
    v11 = *v11;
  }

  if ((v10 & 0x7FFFFFFFFFFFFFFELL) != 0)
  {
    v13 = 4 * (v10 >> 1);
    do
    {
      v14 = *v11;
      v15 = *(*(a1 + 1312) + 4 * *v11);
      v33 = *v11;
      if (v15 == 1)
      {
        std::vector<int>::push_back[abi:ne200100](a1 + 1528, &v33);
      }

      else
      {
        v34 = v14;
        v16 = *(a1 + 1440);
        v17 = *(v16 + 4 * v14);
        if (v17 != v15)
        {
          v18 = *(a1 + 1416);
          v19 = *(v18 + 4 * v14);
          if (v19 != -1)
          {
            v20 = (*(a1 + 1464) + 24 * v17);
            v21 = v20[1];
            v22 = *(v21 - 4);
            *(*v20 + 4 * v19) = v22;
            *(v18 + 4 * v22) = v19;
            v20[1] = v21 - 4;
          }

          if (v15 < 1)
          {
            *(v18 + 4 * v14) = -1;
            *(v16 + 4 * v14) = 0;
          }

          else
          {
            v23 = (*(a1 + 1464) + 24 * v15);
            *(v18 + 4 * v14) = (v23[1] - *v23) >> 2;
            *(v16 + 4 * v14) = v15;
            std::vector<int>::push_back[abi:ne200100](v23, &v34);
            v24 = *(a1 + 1488);
            if (v24 >= v15)
            {
              v24 = v15;
            }

            *(a1 + 1488) = v24;
          }
        }
      }

      *(*(a1 + 1240) + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      ++v11;
      v13 -= 4;
    }

    while (v13);
  }

  v25 = *(*(a1 + 456) + v6);
  if (v25 != -1)
  {
    v5 = *(a1 + 504) + 48 * v25;
  }

  v26 = *(v5 + 8);
  if (v26 >= 1)
  {
    v27 = *(v5 + 24);
    do
    {
      v28 = *v27++;
      v32 = v28;
      v29 = *(a1 + 1288);
      v30 = 4 * v28;
      v31 = *(v29 + v30) - 1;
      *(v29 + v30) = v31;
      if (v31 == 1)
      {
        std::vector<int>::push_back[abi:ne200100](a1 + 1552, &v32);
      }

      --v26;
    }

    while (v26);
  }
}

void operations_research::glop::Markowitz::ComputeLU(operations_research::glop::TriangularMatrix *a1@<X4>, uint64_t a2@<X0>, uint64_t a3@<X1>, std::vector<int> *a4@<X2>, std::vector<int> *a5@<X3>, operations_research::glop::TriangularMatrix *a6@<X5>, uint64_t a7@<X8>)
{
  operations_research::glop::TriangularMatrix::Swap((a2 + 648), a1);
  operations_research::glop::TriangularMatrix::Swap((a2 + 944), a6);
  operations_research::glop::Markowitz::ComputeRowAndColumnPermutation(a2, a3, a4, a5, a7);
  if (!*a7)
  {
    if (*(a7 + 31) < 0)
    {
      operator delete(*(a7 + 8));
    }

    operations_research::glop::TriangularMatrix::ApplyRowPermutationToNonDiagonalEntries(a2 + 648, a4);
    operations_research::glop::TriangularMatrix::ApplyRowPermutationToNonDiagonalEntries(a2 + 944, a4);
    operations_research::glop::TriangularMatrix::Swap((a2 + 648), a1);
    operations_research::glop::TriangularMatrix::Swap((a2 + 944), a6);

    operations_research::glop::Status::Status(a7);
  }
}

void *operations_research::glop::Markowitz::ComputeColumn(uint64_t a1, void *a2, int a3)
{
  v6 = (a1 + 408);
  v8 = 4 * a3;
  v9 = *(*(a1 + 456) + v8);
  v10 = v6;
  if (v9 != -1)
  {
    v10 = *(a1 + 504) + 48 * v9;
  }

  if (*(v10 + 8))
  {
    v11 = 0;
  }

  else
  {
    v12 = *(*(a1 + 576) + 4 * a3);
    if (v12 == -1)
    {
      v13 = a1 + 528;
    }

    else
    {
      v13 = *(a1 + 624) + 48 * v12;
    }

    v11 = *(v13 + 8) == 0;
  }

  v14 = operations_research::glop::SparseMatrixWithReusableColumnMemory::mutable_column(v6, a3);
  v15 = v14;
  v16 = a3 >> 6;
  v17 = 1 << a3;
  if ((*(*(a1 + 1240) + 8 * v16) & v17) != 0)
  {
    if (v11)
    {
      v18 = *(a1 + 400);
      v19 = *v18;
      v20 = *(v18[1] + v8);
      v21 = v19[7];
      v22 = *(v21 + 8 * v20);
      v23 = *(v21 + (((v20 << 32) + 0x100000000) >> 29)) - v22;
      v24 = v19[4] + 4 * v22;
      v25 = v19[1] + 8 * v22;
    }

    else
    {
      v23 = *(v14 + 8);
      v24 = *(v14 + 24);
      v25 = *(v14 + 32);
    }

    v46[0] = v23;
    v46[1] = v24;
    v46[2] = v25;
    v43 = operations_research::glop::SparseMatrixWithReusableColumnMemory::mutable_column((a1 + 528), a3);
    operations_research::glop::TriangularMatrix::PermutedLowerSparseSolve((a1 + 648), v46, a2, v15, v43);
    *(*(a1 + 1240) + 8 * v16) &= ~v17;
    *(a1 + 1904) += *(a1 + 816);
  }

  else
  {
    v26 = *(v14 + 8);
    if (v26 != *(*(a1 + 1312) + v8))
    {
      if (v11)
      {
        v27 = *(a1 + 400);
        v28 = *v27;
        v29 = *(v27[1] + v8);
        v30 = *(*(v28 + 56) + (((v29 << 32) + 0x100000000) >> 29)) - *(*(v28 + 56) + 8 * v29);
        *(a1 + 1904) += v30;
        if (*(v14 + 16) < v30)
        {
          operator new[]();
        }

        v31 = **(a1 + 400);
        v32 = *(*(*(a1 + 400) + 8) + v8);
        v33 = v31[7];
        v34 = *(v33 + 8 * v32);
        v35 = *(v33 + (((v32 << 32) + 0x100000000) >> 29)) - v34;
        v36 = *(v14 + 8);
        if (v35 < 1)
        {
          v26 = *(v14 + 8);
        }

        else
        {
          v37 = (v31[4] + 4 * v34);
          v38 = (v31[1] + 8 * v34);
          do
          {
            v41 = *v37++;
            v40 = v41;
            v42 = *v38;
            if (v36 == *(v14 + 16) && (!v36 || v36 < 2 * v36))
            {
              operator new[]();
            }

            v26 = v36 + 1;
            *(v14 + 8) = v36 + 1;
            v39 = *(v14 + 32);
            *(*(v14 + 24) + 4 * v36) = v40;
            *(v39 + 8 * v36) = v42;
            *(v14 + 40) = 1;
            ++v38;
            ++v36;
            --v35;
          }

          while (v35);
        }
      }

      *(a1 + 1904) += v26;
      v44 = operations_research::glop::SparseMatrixWithReusableColumnMemory::mutable_column((a1 + 528), a3);
      operations_research::glop::SparseVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::glop::VectorIterator<operations_research::glop::SparseColumnEntry>>::MoveTaggedEntriesTo(v15, a2, v44);
    }
  }

  return v15;
}

uint64_t operations_research::glop::SparseMatrixWithReusableColumnMemory::mutable_column(void *a1, int a2)
{
  v3 = a1[6];
  v4 = 4 * a2;
  LODWORD(v5) = *(v3 + v4);
  if (v5 == -1)
  {
    v6 = a1[10];
    if (a1[9] == v6)
    {
      v8 = a1[12];
      v9 = a1[13];
      v7 = (a1 + 12);
      memset(v15, 0, 41);
      if (v9 >= a1[14])
      {
        v12 = std::vector<operations_research::glop::SparseColumn>::__emplace_back_slow_path<operations_research::glop::SparseColumn>(v7, v15);
        v13 = *&v15[0];
        a1[13] = v12;
        *&v15[0] = 0;
        if (v13)
        {
          MEMORY[0x23EED9440](v13, 0x1000C8077774924);
        }
      }

      else
      {
        *v9 = 0;
        v10 = *(v15 + 8);
        v11 = *(&v15[1] + 8);
        *(v9 + 40) = BYTE8(v15[2]);
        *(v9 + 24) = v11;
        *(v9 + 8) = v10;
        a1[13] = v9 + 48;
      }

      v5 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 4);
      v3 = a1[6];
    }

    else
    {
      LODWORD(v5) = *(v6 - 4);
      a1[10] = v6 - 4;
    }

    *(v3 + v4) = v5;
  }

  return a1[12] + 48 * v5;
}

void sub_23CBB0B78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x23EED9440](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

void *operations_research::glop::SparseVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::glop::VectorIterator<operations_research::glop::SparseColumnEntry>>::MoveTaggedEntriesTo(void *result, void *a2, uint64_t a3)
{
  v3 = result[1];
  if (v3 >= 1)
  {
    v4 = 0;
    while (1)
    {
      v5 = *(result[3] + 4 * v4);
      if ((*(*a2 + 4 * v5) & 0x80000000) == 0)
      {
        break;
      }

      if (v3 == ++v4)
      {
        return result;
      }
    }

    v6 = *(result[4] + 8 * v4);
    v7 = *(a3 + 8);
    if (v7 == *(a3 + 16) && (!v7 || v7 < 2 * v7))
    {
      operator new[]();
    }

    v8 = v7 + 1;
    *(a3 + 8) = v7 + 1;
    v9 = *(a3 + 24);
    v10 = *(a3 + 32);
    *(v9 + 4 * v7) = v5;
    *(v10 + 8 * v7) = v6;
    v11 = v4 + 1;
    if (v4 + 1 < v3)
    {
      do
      {
        while (1)
        {
          v12 = result[3];
          v13 = *(v12 + 4 * v11);
          if ((*(*a2 + 4 * v13) & 0x80000000) == 0)
          {
            break;
          }

          *(v12 + 4 * v4) = v13;
          *(result[4] + 8 * v4++) = *(result[4] + 8 * v11);
          if (v3 == ++v11)
          {
            goto LABEL_21;
          }
        }

        v14 = *(result[4] + 8 * v11);
        if (v8 == *(a3 + 16) && (!v8 || v8 < 2 * v8))
        {
          operator new[]();
        }

        *(v9 + 4 * v8) = v13;
        *(v10 + 8 * v8++) = v14;
        *(a3 + 8) = v8;
        ++v11;
      }

      while (v3 != v11);
    }

LABEL_21:
    result[1] = v4;
    *(a3 + 40) = 1;
  }

  return result;
}

void operations_research::glop::ColumnPriorityQueue::Reset(std::vector<int> *this, int a2, int a3)
{
  v6 = this + 1;
  this[1].__end_ = this[1].__begin_;
  this->__end_ = this->__begin_;
  v7 = this + 2;
  begin = this[2].__begin_;
  end = this[2].__end_;
  if (end != begin)
  {
    v10 = this[2].__end_;
    do
    {
      v12 = *(v10 - 3);
      v10 -= 6;
      v11 = v12;
      if (v12)
      {
        *(end - 2) = v11;
        operator delete(v11);
      }

      end = v10;
    }

    while (v10 != begin);
  }

  this[2].__end_ = begin;
  __u = 0;
  std::vector<int>::assign(v6, a3, &__u);
  v22 = -1;
  std::vector<int>::assign(this, a3, &v22);
  v13 = a2 + 1;
  v15 = this[2].__begin_;
  v14 = this[2].__end_;
  v16 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v15) >> 3);
  if (v13 <= v16)
  {
    if (v13 < v16)
    {
      v17 = &v15[6 * v13];
      if (v14 != v17)
      {
        v18 = this[2].__end_;
        do
        {
          v20 = *(v18 - 3);
          v18 -= 6;
          v19 = v20;
          if (v20)
          {
            *(v14 - 2) = v19;
            operator delete(v19);
          }

          v14 = v18;
        }

        while (v18 != v17);
      }

      this[2].__end_ = v17;
    }
  }

  else
  {
    std::vector<std::vector<operations_research::sat::GenericLiteralWatcher::WatchData>>::__append(v7, v13 - v16);
  }

  LODWORD(this[3].__begin_) = v13;
}

uint64_t operations_research::glop::MatrixNonZeroPattern::DecreaseColDegree(uint64_t a1, int a2)
{
  v2 = *(a1 + 48);
  v3 = 4 * a2;
  result = (*(v2 + v3) - 1);
  *(v2 + v3) = result;
  return result;
}

void operations_research::glop::MatrixNonZeroPattern::Update(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 144);
  v8 = 32 * a2;
  v9 = (*a1 + v8);
  v10 = *v9;
  if ((*v9 >> 1) < 1)
  {
    v14 = 0;
  }

  else
  {
    v11 = v9 + 1;
    v12 = *(a1 + 72);
    v13 = v10 >> 1;
    if (v10)
    {
      v45 = 0;
      v14 = 0;
      do
      {
        v46 = *(*v11 + 4 * v45);
        if (((*(v12 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
        {
          *(*v11 + 4 * v14++) = v46;
        }

        ++v45;
      }

      while (v13 != v45);
    }

    else
    {
      v14 = 0;
      v15 = (v9 + 1);
      do
      {
        v17 = *v15++;
        v16 = v17;
        if (((*(v12 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
        {
          *(v11 + v14++) = v16;
        }

        --v13;
      }

      while (v13);
    }
  }

  absl::lts_20240722::inlined_vector_internal::Storage<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,6ul,std::allocator<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>>::Resize<absl::lts_20240722::inlined_vector_internal::DefaultValueAdapter<std::allocator<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>>>(v9, v14);
  v18 = (*a1 + v8);
  v21 = *v18;
  v19 = (v18 + 1);
  v20 = v21;
  if (v21)
  {
    v19 = *v19;
  }

  if ((v20 & 0x7FFFFFFFFFFFFFFELL) != 0)
  {
    v22 = v20 >> 1;
    v23 = *(a1 + 48);
    v24 = *(a1 + 96);
    v25 = 4 * v22;
    do
    {
      v26 = *v19++;
      --*(v23 + 4 * v26);
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v26);
      v25 -= 4;
    }

    while (v25);
  }

  v27 = a4[1];
  if (v27 >= 1)
  {
    v28 = 0;
    v29 = v7 + 1;
    v30 = a4[3];
    v31 = a4[4];
    do
    {
      v33 = *(v30 + 4 * v28);
      if (a2 != v33 && *(v31 + 8 * v28) != 0.0)
      {
        v34 = *(*(a1 + 24) + 4 * v33);
        if (v34 != v29)
        {
          v35 = (*a1 + 32 * v33);
          v36 = *v35;
          if (v34 + 4 < *v35 >> 1)
          {
            if ((v36 >> 1) < 1)
            {
              v32 = 0;
            }

            else
            {
              v37 = v35 + 1;
              v38 = *(a1 + 72);
              v39 = v36 >> 1;
              if (v36)
              {
                v43 = 0;
                v32 = 0;
                do
                {
                  v44 = *(*v37 + 4 * v43);
                  if (((*(v38 + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
                  {
                    *(*v37 + 4 * v32++) = v44;
                  }

                  ++v43;
                }

                while (v39 != v43);
              }

              else
              {
                v32 = 0;
                v40 = (v35 + 1);
                do
                {
                  v42 = *v40++;
                  v41 = v42;
                  if (((*(v38 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
                  {
                    *(v37 + v32++) = v41;
                  }

                  --v39;
                }

                while (v39);
              }
            }

            absl::lts_20240722::inlined_vector_internal::Storage<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,6ul,std::allocator<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>>::Resize<absl::lts_20240722::inlined_vector_internal::DefaultValueAdapter<std::allocator<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>>>(v35, v32);
          }

          operations_research::glop::MatrixNonZeroPattern::MergeInto(a1, a2, v33);
        }
      }

      ++v28;
    }

    while (v28 != v27);
  }
}

void operations_research::glop::MatrixNonZeroPattern::Reset(uint64_t a1, uint64_t a2, int a3)
{
  begin = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = (a1 + 24);
  __x = 0;
  v9 = a2 << 32;
  v10 = a2;
  v11 = (v7 - begin) >> 2;
  v12 = a2 >= v11;
  v13 = a2 - v11;
  if (v13 != 0 && v12)
  {
    std::vector<int>::__append(v8, v13, &__x);
    begin = v8->__begin_;
  }

  else if (!v12)
  {
    *(a1 + 32) = &begin[v10];
  }

  bzero(begin, v9 >> 30);
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v29 = 0;
  v16 = (v15 - v14) >> 2;
  if (a3 <= v16)
  {
    if (a3 < v16)
    {
      *(a1 + 56) = &v14[4 * a3];
    }
  }

  else
  {
    std::vector<int>::__append((a1 + 48), a3 - v16, &v29);
    v14 = *(a1 + 48);
  }

  bzero(v14, 4 * a3);
  v18 = *a1;
  v17 = *(a1 + 8);
  v19 = *a1;
  if (v17 != *a1)
  {
    v20 = *(a1 + 8);
    do
    {
      v21 = *(v20 - 32);
      v20 -= 4;
      if (v21)
      {
        operator delete(*(v17 - 3));
      }

      v17 = v20;
    }

    while (v20 != v18);
    v19 = *a1;
  }

  *(a1 + 8) = v18;
  v22 = (v18 - v19) >> 5;
  if (v10 <= v22)
  {
    if (v10 < v22)
    {
      v23 = &v19[4 * v10];
      if (v18 != v23)
      {
        v24 = v18;
        do
        {
          v25 = *(v24 - 32);
          v24 -= 4;
          if (v25)
          {
            operator delete(*(v18 - 3));
          }

          v18 = v24;
        }

        while (v24 != v23);
      }

      *(a1 + 8) = v23;
    }
  }

  else
  {
    std::vector<absl::lts_20240722::InlinedVector<operations_research::sat::Literal,6ul,std::allocator<operations_research::sat::Literal>>>::__append(a1, v10 - v22);
  }

  v27 = 0;
  std::vector<BOOL>::assign(a1 + 72, a3, &v27);
  v26 = 0;
  std::vector<BOOL>::assign(a1 + 96, a3, &v26);
  *(a1 + 144) = a3;
}

unint64_t *operations_research::glop::MatrixNonZeroPattern::AddEntry(void *a1, int a2, int a3)
{
  ++*(a1[3] + 4 * a2);
  ++*(a1[6] + 4 * a3);
  result = (*a1 + 32 * a2);
  v5 = result + 1;
  v4 = *result;
  if (*result)
  {
    v5 = result[1];
    v6 = result[2];
  }

  else
  {
    v6 = 6;
  }

  if (v4 >> 1 == v6)
  {
    absl::lts_20240722::inlined_vector_internal::Storage<operations_research::sat::Literal,6ul,std::allocator<operations_research::sat::Literal>>::EmplaceBackSlow<operations_research::sat::Literal const&>(result);
  }

  *(v5 + (v4 >> 1)) = a3;
  *result = v4 + 2;
  return result;
}

uint64_t *operations_research::glop::MatrixNonZeroPattern::MergeInto(uint64_t *result, int a2, int a3)
{
  v3 = *result;
  v4 = (*result + 32 * a3);
  v5 = *v4;
  v6 = (v4 + 1);
  if (*v4)
  {
    v6 = v4[1];
  }

  if ((v5 & 0x7FFFFFFFFFFFFFFELL) != 0)
  {
    v7 = result[12];
    v8 = 4 * (v5 >> 1);
    do
    {
      v9 = *v6++;
      *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      v8 -= 4;
    }

    while (v8);
    v5 = *v4;
  }

  v10 = (v3 + 32 * a2);
  v13 = *v10;
  v12 = (v10 + 1);
  v11 = v13;
  if (v13)
  {
    v12 = *v12;
  }

  v14 = v5;
  if ((v11 & 0x7FFFFFFFFFFFFFFELL) != 0)
  {
    v15 = 4 * (v11 >> 1);
    do
    {
      while (1)
      {
        v16 = *v12;
        v23 = *v12;
        v17 = result[12];
        v18 = *v12 >> 6;
        v19 = *(v17 + 8 * v18);
        if (((1 << *v12) & v19) == 0)
        {
          break;
        }

        *(v17 + 8 * v18) = v19 & ~(1 << v16);
        ++v12;
        v15 -= 4;
        if (!v15)
        {
          goto LABEL_20;
        }
      }

      v20 = *v4;
      if (*v4)
      {
        v21 = v4[1];
        v22 = v4[2];
      }

      else
      {
        v21 = v4 + 1;
        v22 = 6;
      }

      if (v20 >> 1 == v22)
      {
        absl::lts_20240722::inlined_vector_internal::Storage<operations_research::sat::Literal,6ul,std::allocator<operations_research::sat::Literal>>::EmplaceBackSlow<operations_research::sat::Literal const&>(v4);
      }

      *(v21 + (v20 >> 1)) = v16;
      *v4 = v20 + 2;
      ++*(result[6] + 4 * v23);
      ++v12;
      v15 -= 4;
    }

    while (v15);
LABEL_20:
    v14 = *v4;
  }

  *(result[3] + 4 * a3) += (v14 >> 1) - (v5 >> 1);
  return result;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::glop::anonymous namespace::MatrixEntry *,false>(__n128 *a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v134 = a2[-1].n128_i32[0];
        v135 = a2[-1].n128_i32[1];
        v136 = a2 - 1;
        v137 = v135 < v12->n128_u32[1];
        v138 = v134 == v12->n128_u32[0];
        v139 = v134 < v12->n128_u32[0];
        if (v138)
        {
          v139 = v137;
        }

        if (v139)
        {
          v247 = *v12;
          *v12 = *v136;
          result = v247;
          *v136 = v247;
        }

        return result;
      }

      goto LABEL_9;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {

      return result;
    }

    if (v13 == 5)
    {
      v120 = a2[-1].n128_i32[0];
      v121 = a2[-1].n128_i32[1];
      v122 = a2 - 1;
      v123 = v12[3].n128_i32[0];
      v124 = v121 < v12[3].n128_u32[1];
      v138 = v120 == v123;
      v125 = v120 < v123;
      if (v138)
      {
        v125 = v124;
      }

      if (v125)
      {
        v243 = v12[3];
        v12[3] = *v122;
        result = v243;
        *v122 = v243;
        v126 = v12[3].n128_i32[0];
        v127 = v12[2].n128_i32[0];
        v138 = v126 == v127;
        v128 = v126 < v127;
        if (v138)
        {
          v128 = v12[3].n128_u32[1] < v12[2].n128_u32[1];
        }

        if (v128)
        {
          v244 = v12[2];
          v12[2] = v12[3];
          result = v244;
          v12[3] = v244;
          v129 = v12[2].n128_i32[0];
          v130 = v12[1].n128_i32[0];
          v138 = v129 == v130;
          v131 = v129 < v130;
          if (v138)
          {
            v131 = v12[2].n128_u32[1] < v12[1].n128_u32[1];
          }

          if (v131)
          {
            v245 = v12[1];
            v12[1] = v12[2];
            result = v245;
            v12[2] = v245;
            v132 = v12[1].n128_i32[0];
            v138 = v132 == v12->n128_u32[0];
            v133 = v132 < v12->n128_u32[0];
            if (v138)
            {
              v133 = v12[1].n128_u32[1] < v12->n128_u32[1];
            }

            if (v133)
            {
              v246 = *v12;
              *v12 = v12[1];
              result = v246;
              v12[1] = v246;
            }
          }
        }
      }

      return result;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v148 = v12 + 1;
      v150 = v12 == a2 || v148 == a2;
      if (a4)
      {
        if (!v150)
        {
          v151 = 0;
          v152 = v12;
          do
          {
            v154 = v148;
            v155 = v152[1].n128_i32[0];
            v156 = v152[1].n128_i32[1];
            v157 = v155 < v152->n128_u32[0];
            if (v155 == v152->n128_u32[0])
            {
              v157 = v156 < v152->n128_u32[1];
            }

            if (v157)
            {
              result.n128_u64[0] = v152[1].n128_u64[1];
              v158 = v151;
              do
              {
                v159 = v12 + v158;
                *(v12 + v158 + 16) = *(v12 + v158);
                if (!v158)
                {
                  v153 = v12;
                  goto LABEL_203;
                }

                v160 = *(v159 - 4);
                v161 = v156 < *(v159 - 3);
                v138 = v155 == v160;
                v162 = v155 < v160;
                if (!v138)
                {
                  v161 = v162;
                }

                v158 -= 16;
              }

              while (v161);
              v153 = &v12[1] + v158;
LABEL_203:
              *v153 = v155;
              *(v153 + 4) = v156;
              *(v153 + 8) = result.n128_u64[0];
            }

            v148 = v154 + 1;
            v151 += 16;
            v152 = v154;
          }

          while (&v154[1] != a2);
        }
      }

      else if (!v150)
      {
        do
        {
          v208 = v148;
          v209 = a1[1].n128_i32[0];
          v210 = a1[1].n128_i32[1];
          v211 = v209 < a1->n128_u32[0];
          if (v209 == a1->n128_u32[0])
          {
            v211 = v210 < a1->n128_u32[1];
          }

          if (v211)
          {
            result.n128_u64[0] = a1[1].n128_u64[1];
            v212 = v208;
            do
            {
              *v212 = v212[-1];
              v213 = v212[-2].n128_i32[0];
              v214 = v212[-2].n128_i32[1];
              --v212;
              v215 = v210 < v214;
              v138 = v209 == v213;
              v216 = v209 < v213;
              if (v138)
              {
                v216 = v215;
              }
            }

            while (v216);
            v212->n128_u32[0] = v209;
            v212->n128_u32[1] = v210;
            v212->n128_u64[1] = result.n128_u64[0];
          }

          v148 = v208 + 1;
          a1 = v208;
        }

        while (&v208[1] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v163 = (v13 - 2) >> 1;
        v164 = v163;
        do
        {
          v165 = v164;
          v166 = 16 * v164;
          if (v163 >= (16 * v164) >> 4)
          {
            v167 = (v166 >> 3) | 1;
            v168 = &v12[v167];
            if ((v166 >> 3) + 2 >= v13)
            {
              v172 = v168->n128_u32[0];
            }

            else
            {
              v169 = v168[1].n128_i32[0];
              v170 = v168->n128_u32[1] < v168[1].n128_u32[1];
              if (v168->n128_u32[0] != v169)
              {
                v170 = v168->n128_u32[0] < v169;
              }

              v171 = !v170;
              if (v170)
              {
                v172 = v168[1].n128_i32[0];
              }

              else
              {
                v172 = v168->n128_u32[0];
              }

              if (!v171)
              {
                ++v168;
                v167 = (v166 >> 3) + 2;
              }
            }

            v173 = &v12[v166 / 0x10];
            v174 = v173->n128_u32[0];
            v175 = v173->n128_i32[1];
            v138 = v172 == v173->n128_u32[0];
            v176 = v172 < v173->n128_u32[0];
            if (v138)
            {
              v176 = v168->n128_u32[1] < v175;
            }

            if (!v176)
            {
              v177 = v173->n128_u64[1];
              do
              {
                v184 = v173;
                v173 = v168;
                *v184 = *v168;
                if (v163 < v167)
                {
                  break;
                }

                v185 = (2 * v167) | 1;
                v168 = &v12[v185];
                v167 = 2 * v167 + 2;
                if (v167 < v13)
                {
                  v178 = v168->n128_u32[0];
                  v179 = v168[1].n128_i32[0];
                  v180 = v168->n128_u32[1] < v168[1].n128_u32[1];
                  if (v168->n128_u32[0] == v179)
                  {
                    v181 = v168->n128_u32[1] < v168[1].n128_u32[1];
                  }

                  else
                  {
                    v181 = v168->n128_u32[0] < v179;
                  }

                  if (v181)
                  {
                    v178 = v168[1].n128_i32[0];
                    ++v168;
                  }

                  else
                  {
                    v167 = v185;
                  }
                }

                else
                {
                  v178 = v168->n128_u32[0];
                  v167 = v185;
                }

                v182 = v168->n128_u32[1] < v175;
                v138 = v178 == v174;
                v183 = v178 < v174;
                if (!v138)
                {
                  v182 = v183;
                }
              }

              while (!v182);
              v173->n128_u32[0] = v174;
              v173->n128_u32[1] = v175;
              v173->n128_u64[1] = v177;
            }
          }

          v164 = v165 - 1;
        }

        while (v165);
        do
        {
          v187 = 0;
          v249 = *v12;
          v188 = (v13 - 2) >> 1;
          v189 = v12;
          do
          {
            while (1)
            {
              v195 = &v189[v187];
              v194 = v195 + 1;
              v196 = (2 * v187) | 1;
              v187 = 2 * v187 + 2;
              if (v187 < v13)
              {
                break;
              }

              v187 = v196;
              *v189 = *v194;
              v189 = v195 + 1;
              if (v196 > v188)
              {
                goto LABEL_256;
              }
            }

            v191 = v195[2].n128_i32[0];
            v190 = v195 + 2;
            v192 = v190[-1].n128_i32[0];
            v193 = v192 < v191;
            if (v192 == v191)
            {
              v193 = v190[-1].n128_u32[1] < v190->n128_u32[1];
            }

            if (v193)
            {
              v194 = v190;
            }

            else
            {
              v187 = v196;
            }

            *v189 = *v194;
            v189 = v194;
          }

          while (v187 <= v188);
LABEL_256:
          if (v194 == --a2)
          {
            result = v249;
            *v194 = v249;
          }

          else
          {
            *v194 = *a2;
            result = v249;
            *a2 = v249;
            v197 = (v194 - v12 + 16) >> 4;
            v186 = v197 < 2;
            v198 = v197 - 2;
            if (!v186)
            {
              v199 = v198 >> 1;
              v200 = &v12[v199];
              v201 = v194->n128_u32[0];
              v202 = v194->n128_i32[1];
              v203 = v200->n128_u32[0] < v194->n128_u32[0];
              if (v200->n128_u32[0] == v194->n128_u32[0])
              {
                v203 = v200->n128_u32[1] < v202;
              }

              if (v203)
              {
                result.n128_u64[0] = v194->n128_u64[1];
                do
                {
                  v204 = v194;
                  v194 = v200;
                  *v204 = *v200;
                  if (!v199)
                  {
                    break;
                  }

                  v199 = (v199 - 1) >> 1;
                  v200 = &v12[v199];
                  v205 = v200->n128_u32[0] < v201;
                  if (v200->n128_u32[0] == v201)
                  {
                    v205 = v200->n128_u32[1] < v202;
                  }
                }

                while (v205);
                v194->n128_u32[0] = v201;
                v194->n128_u32[1] = v202;
                v194->n128_u64[1] = result.n128_u64[0];
              }
            }
          }

          v186 = v13-- <= 2;
        }

        while (!v186);
      }

      return result;
    }

    v14 = &v12[v13 >> 1];
    v15 = a2[-1].n128_i32[0];
    v16 = a2[-1].n128_i32[1];
    if (v13 < 0x81)
    {
      v22 = v12->n128_u32[0];
      v23 = v12->n128_i32[1];
      v24 = v12->n128_u32[0] < v14->n128_u32[0];
      if (v12->n128_u32[0] == v14->n128_u32[0])
      {
        v24 = v23 < v14->n128_u32[1];
      }

      v25 = v16 < v23;
      v138 = v15 == v22;
      v26 = v15 < v22;
      if (v138)
      {
        v26 = v25;
      }

      if (v24)
      {
        if (v26)
        {
          v221 = *v14;
          *v14 = *v9;
          goto LABEL_58;
        }

        v230 = *v14;
        *v14 = *v12;
        result.n128_u64[1] = v230.n128_u64[1];
        *v12 = v230;
        v44 = a2[-1].n128_i32[0];
        v138 = v44 == v12->n128_u32[0];
        v45 = v44 < v12->n128_u32[0];
        if (v138)
        {
          v45 = a2[-1].n128_u32[1] < v12->n128_u32[1];
        }

        if (v45)
        {
          v221 = *v12;
          *v12 = *v9;
LABEL_58:
          result.n128_u64[1] = v221.n128_u64[1];
          *v9 = v221;
        }
      }

      else if (v26)
      {
        v224 = *v12;
        *v12 = *v9;
        result.n128_u64[1] = v224.n128_u64[1];
        *v9 = v224;
        v28 = v12->n128_u32[0] < v14->n128_u32[0];
        if (v12->n128_u32[0] == v14->n128_u32[0])
        {
          v28 = v12->n128_u32[1] < v14->n128_u32[1];
        }

        if (v28)
        {
          v225 = *v14;
          *v14 = *v12;
          result.n128_u64[1] = v225.n128_u64[1];
          *v12 = v225;
          --a3;
          v29 = v12->n128_u32[0];
          if (a4)
          {
            goto LABEL_60;
          }

          goto LABEL_101;
        }
      }

      --a3;
      v29 = v12->n128_u32[0];
      if (a4)
      {
        goto LABEL_60;
      }

      goto LABEL_101;
    }

    v17 = v14->n128_u32[0];
    v18 = v14->n128_i32[1];
    v19 = v14->n128_u32[0] < v12->n128_u32[0];
    if (v14->n128_u32[0] == v12->n128_u32[0])
    {
      v19 = v18 < v12->n128_u32[1];
    }

    v20 = v16 < v18;
    v138 = v15 == v17;
    v21 = v15 < v17;
    if (v138)
    {
      v21 = v20;
    }

    if (v19)
    {
      if (v21)
      {
        v220 = *v12;
        *v12 = *v9;
LABEL_41:
        *v9 = v220;
        goto LABEL_42;
      }

      v226 = *v12;
      *v12 = *v14;
      *v14 = v226;
      v30 = a2[-1].n128_i32[0];
      v138 = v30 == v14->n128_u32[0];
      v31 = v30 < v14->n128_u32[0];
      if (v138)
      {
        v31 = a2[-1].n128_u32[1] < v14->n128_u32[1];
      }

      if (v31)
      {
        v220 = *v14;
        *v14 = *v9;
        goto LABEL_41;
      }
    }

    else if (v21)
    {
      v222 = *v14;
      *v14 = *v9;
      *v9 = v222;
      v27 = v14->n128_u32[0] < v12->n128_u32[0];
      if (v14->n128_u32[0] == v12->n128_u32[0])
      {
        v27 = v14->n128_u32[1] < v12->n128_u32[1];
      }

      if (v27)
      {
        v223 = *v12;
        *v12 = *v14;
        *v14 = v223;
      }
    }

LABEL_42:
    v32 = v12 + 1;
    v33 = v12[1].n128_i32[0];
    v35 = v14[-1].n128_i32[0];
    v36 = v14[-1].n128_i32[1];
    v34 = v14 - 1;
    v37 = v36 < v12[1].n128_u32[1];
    v138 = v35 == v33;
    v38 = v35 < v33;
    if (!v138)
    {
      v37 = v38;
    }

    v39 = a2[-2].n128_i32[0];
    v40 = a2[-2].n128_u32[1] < v36;
    v138 = v39 == v35;
    v41 = v39 < v35;
    if (v138)
    {
      v41 = v40;
    }

    if (v37)
    {
      if (v41)
      {
        v227 = *v32;
        *v32 = *v10;
LABEL_65:
        *v10 = v227;
        goto LABEL_66;
      }

      v231 = *v32;
      *v32 = *v34;
      *v34 = v231;
      v47 = a2[-2].n128_i32[0];
      v138 = v47 == v34->n128_u32[0];
      v48 = v47 < v34->n128_u32[0];
      if (v138)
      {
        v48 = a2[-2].n128_u32[1] < v14[-1].n128_u32[1];
      }

      if (v48)
      {
        v227 = *v34;
        *v34 = *v10;
        goto LABEL_65;
      }
    }

    else if (v41)
    {
      v228 = *v34;
      *v34 = *v10;
      *v10 = v228;
      v42 = v12[1].n128_i32[0];
      v43 = v34->n128_u32[0] < v42;
      if (v34->n128_u32[0] == v42)
      {
        v43 = v14[-1].n128_u32[1] < v12[1].n128_u32[1];
      }

      if (v43)
      {
        v229 = *v32;
        *v32 = *v34;
        *v34 = v229;
      }
    }

LABEL_66:
    v49 = v12 + 2;
    v50 = v12[2].n128_i32[0];
    v52 = v14[1].n128_i32[0];
    v53 = v14[1].n128_i32[1];
    v51 = v14 + 1;
    v54 = v53 < v12[2].n128_u32[1];
    v138 = v52 == v50;
    v55 = v52 < v50;
    if (!v138)
    {
      v54 = v55;
    }

    v56 = a2[-3].n128_i32[0];
    v57 = a2[-3].n128_u32[1] < v53;
    v138 = v56 == v52;
    v58 = v56 < v52;
    if (v138)
    {
      v58 = v57;
    }

    if (v54)
    {
      if (v58)
      {
        v232 = *v49;
        *v49 = *v11;
LABEL_82:
        *v11 = v232;
        goto LABEL_83;
      }

      v235 = *v49;
      *v49 = *v51;
      *v51 = v235;
      v61 = a2[-3].n128_i32[0];
      v138 = v61 == v51->n128_u32[0];
      v62 = v61 < v51->n128_u32[0];
      if (v138)
      {
        v62 = a2[-3].n128_u32[1] < v14[1].n128_u32[1];
      }

      if (v62)
      {
        v232 = *v51;
        *v51 = *v11;
        goto LABEL_82;
      }
    }

    else if (v58)
    {
      v233 = *v51;
      *v51 = *v11;
      *v11 = v233;
      v59 = v12[2].n128_i32[0];
      v60 = v51->n128_u32[0] < v59;
      if (v51->n128_u32[0] == v59)
      {
        v60 = v14[1].n128_u32[1] < v12[2].n128_u32[1];
      }

      if (v60)
      {
        v234 = *v49;
        *v49 = *v51;
        *v51 = v234;
      }
    }

LABEL_83:
    v63 = v14->n128_u32[0];
    v64 = v14->n128_i32[1];
    v65 = v14->n128_u32[0] < v34->n128_u32[0];
    if (v14->n128_u32[0] == v34->n128_u32[0])
    {
      v65 = v64 < v14[-1].n128_u32[1];
    }

    v66 = v14[1].n128_u32[1] < v64;
    v138 = v51->n128_u32[0] == v63;
    v67 = v51->n128_u32[0] < v63;
    if (v138)
    {
      v67 = v66;
    }

    if (v65)
    {
      if (v67)
      {
        v236 = *v34;
        *v34 = *v51;
LABEL_99:
        *v51 = v236;
        goto LABEL_100;
      }

      v239 = *v34;
      *v34 = *v14;
      *v14 = v239;
      v69 = v51->n128_u32[0] < v14->n128_u32[0];
      if (v51->n128_u32[0] == v14->n128_u32[0])
      {
        v69 = v14[1].n128_u32[1] < v14->n128_u32[1];
      }

      if (v69)
      {
        v236 = *v14;
        *v14 = *v51;
        goto LABEL_99;
      }
    }

    else if (v67)
    {
      v237 = *v14;
      *v14 = *v51;
      *v51 = v237;
      v68 = v14->n128_u32[0] < v34->n128_u32[0];
      if (v14->n128_u32[0] == v34->n128_u32[0])
      {
        v68 = v14->n128_u32[1] < v14[-1].n128_u32[1];
      }

      if (v68)
      {
        v238 = *v34;
        *v34 = *v14;
        *v14 = v238;
      }
    }

LABEL_100:
    v240 = *v12;
    *v12 = *v14;
    result.n128_u64[1] = v240.n128_u64[1];
    *v14 = v240;
    --a3;
    v29 = v12->n128_u32[0];
    if (a4)
    {
LABEL_60:
      v46 = v12->n128_i32[1];
      goto LABEL_104;
    }

LABEL_101:
    v70 = v12[-1].n128_i32[0];
    v46 = v12->n128_i32[1];
    v138 = v70 == v29;
    v71 = v70 < v29;
    if (v138)
    {
      v71 = v12[-1].n128_u32[1] < v46;
    }

    if (v71)
    {
LABEL_104:
      v72 = 0;
      result.n128_u64[0] = v12->n128_u64[1];
      do
      {
        v73 = v12[v72 + 1].n128_i32[0];
        v74 = v12[v72 + 1].n128_u32[1] < v46;
        v138 = v73 == v29;
        v75 = v73 < v29;
        if (!v138)
        {
          v74 = v75;
        }

        ++v72;
      }

      while (v74);
      v76 = &v12[v72];
      v77 = a2;
      if (v72 == 1)
      {
        v77 = a2;
        do
        {
          if (v76 >= v77)
          {
            break;
          }

          v82 = v77[-1].n128_i32[0];
          v83 = v77[-1].n128_i32[1];
          --v77;
          v84 = v83 < v46;
          v138 = v82 == v29;
          v85 = v82 < v29;
          if (v138)
          {
            v85 = v84;
          }
        }

        while (!v85);
      }

      else
      {
        do
        {
          v78 = v77[-1].n128_i32[0];
          v79 = v77[-1].n128_i32[1];
          --v77;
          v80 = v79 < v46;
          v138 = v78 == v29;
          v81 = v78 < v29;
          if (v138)
          {
            v81 = v80;
          }
        }

        while (!v81);
      }

      v12 = v76;
      if (v76 < v77)
      {
        v86 = v77;
        do
        {
          v241 = *v12;
          *v12 = *v86;
          *v86 = v241;
          do
          {
            v87 = v12[1].n128_i32[0];
            v88 = v12[1].n128_i32[1];
            ++v12;
            v89 = v88 < v46;
            v138 = v87 == v29;
            v90 = v87 < v29;
            if (v138)
            {
              v90 = v89;
            }
          }

          while (v90);
          do
          {
            v91 = v86[-1].n128_i32[0];
            v92 = v86[-1].n128_i32[1];
            --v86;
            v93 = v92 < v46;
            v138 = v91 == v29;
            v94 = v91 < v29;
            if (v138)
            {
              v94 = v93;
            }
          }

          while (!v94);
        }

        while (v12 < v86);
      }

      if (&v12[-1] != a1)
      {
        *a1 = v12[-1];
      }

      v12[-1].n128_u32[0] = v29;
      v12[-1].n128_u32[1] = v46;
      v12[-1].n128_u64[1] = result.n128_u64[0];
      if (v76 < v77)
      {
        goto LABEL_133;
      }

      {
        a2 = v12 - 1;
        if ((v95 & 1) == 0)
        {
          goto LABEL_1;
        }

        return result;
      }

      if ((v95 & 1) == 0)
      {
LABEL_133:
        a4 = 0;
      }
    }

    else
    {
      v97 = a2[-1].n128_i32[0];
      v138 = v29 == v97;
      v98 = v29 < v97;
      if (v138)
      {
        v98 = v46 < a2[-1].n128_u32[1];
      }

      if (v98)
      {
        do
        {
          v99 = v12[1].n128_i32[0];
          v100 = v12[1].n128_i32[1];
          ++v12;
          v101 = v46 < v100;
          v138 = v29 == v99;
          v102 = v29 < v99;
          if (v138)
          {
            v102 = v101;
          }
        }

        while (!v102);
      }

      else
      {
        v103 = v12 + 1;
        do
        {
          v12 = v103;
          if (v103 >= a2)
          {
            break;
          }

          v104 = v103->n128_u32[0];
          v105 = v46 < v12->n128_u32[1];
          v138 = v29 == v104;
          v106 = v29 < v104;
          if (!v138)
          {
            v105 = v106;
          }

          v103 = v12 + 1;
        }

        while (!v105);
      }

      v107 = a2;
      if (v12 < a2)
      {
        v107 = a2;
        do
        {
          v108 = v107[-1].n128_i32[0];
          v109 = v107[-1].n128_i32[1];
          --v107;
          v110 = v46 < v109;
          v138 = v29 == v108;
          v111 = v29 < v108;
          if (v138)
          {
            v111 = v110;
          }
        }

        while (v111);
      }

      result.n128_u64[0] = a1->n128_u64[1];
      while (v12 < v107)
      {
        v242 = *v12;
        *v12 = *v107;
        *v107 = v242;
        do
        {
          v112 = v12[1].n128_i32[0];
          v113 = v12[1].n128_i32[1];
          ++v12;
          v114 = v46 < v113;
          v138 = v29 == v112;
          v115 = v29 < v112;
          if (v138)
          {
            v115 = v114;
          }
        }

        while (!v115);
        do
        {
          v116 = v107[-1].n128_i32[0];
          v117 = v107[-1].n128_i32[1];
          --v107;
          v118 = v46 < v117;
          v138 = v29 == v116;
          v119 = v29 < v116;
          if (v138)
          {
            v119 = v118;
          }
        }

        while (v119);
      }

      if (&v12[-1] != a1)
      {
        *a1 = v12[-1];
      }

      a4 = 0;
      v12[-1].n128_u32[0] = v29;
      v12[-1].n128_u32[1] = v46;
      v12[-1].n128_u64[1] = result.n128_u64[0];
    }
  }

  v140 = v12 + 1;
  v141 = v12[1].n128_i32[0];
  v142 = v12[1].n128_i32[1];
  v143 = v141 < v12->n128_u32[0];
  if (v141 == v12->n128_u32[0])
  {
    v143 = v142 < v12->n128_u32[1];
  }

  v145 = a2[-1].n128_i32[0];
  v144 = a2 - 1;
  v146 = a2[-1].n128_u32[1] < v142;
  v138 = v145 == v141;
  v147 = v145 < v141;
  if (v138)
  {
    v147 = v146;
  }

  if (v143)
  {
    if (v147)
    {
      v248 = *v12;
      *v12 = *v144;
    }

    else
    {
      v252 = *v12;
      *v12 = *v140;
      result = v252;
      *v140 = v252;
      v217 = a2[-1].n128_i32[0];
      v218 = v12[1].n128_i32[0];
      v138 = v217 == v218;
      v219 = v217 < v218;
      if (v138)
      {
        v219 = a2[-1].n128_u32[1] < v12[1].n128_u32[1];
      }

      if (!v219)
      {
        return result;
      }

      v248 = *v140;
      *v140 = *v144;
    }

    result = v248;
    *v144 = v248;
    return result;
  }

  if (v147)
  {
    v250 = *v140;
    *v140 = *v144;
    result = v250;
    *v144 = v250;
    v206 = v12[1].n128_i32[0];
    v138 = v206 == v12->n128_u32[0];
    v207 = v206 < v12->n128_u32[0];
    if (v138)
    {
      v207 = v12[1].n128_u32[1] < v12->n128_u32[1];
    }

    if (v207)
    {
      v251 = *v12;
      *v12 = *v140;
      result = v251;
      *v140 = v251;
    }
  }

  return result;
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::glop::anonymous namespace::MatrixEntry *,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 result)
{
  v5 = a2->n128_u32[0];
  v6 = a2->n128_i32[1];
  v7 = a2->n128_u32[0] < a1->n128_u32[0];
  if (a2->n128_u32[0] == a1->n128_u32[0])
  {
    v7 = v6 < a1->n128_u32[1];
  }

  v8 = a3->n128_u32[1] < v6;
  v9 = a3->n128_u32[0] == v5;
  v10 = a3->n128_u32[0] < v5;
  if (v9)
  {
    v10 = v8;
  }

  if (v7)
  {
    if (v10)
    {
      result = *a1;
      *a1 = *a3;
LABEL_17:
      *a3 = result;
      goto LABEL_18;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    v12 = a3->n128_u32[0] < a2->n128_u32[0];
    if (a3->n128_u32[0] == a2->n128_u32[0])
    {
      v12 = a3->n128_u32[1] < a2->n128_u32[1];
    }

    if (v12)
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_17;
    }
  }

  else if (v10)
  {
    result = *a2;
    *a2 = *a3;
    *a3 = result;
    v11 = a2->n128_u32[0] < a1->n128_u32[0];
    if (a2->n128_u32[0] == a1->n128_u32[0])
    {
      v11 = a2->n128_u32[1] < a1->n128_u32[1];
    }

    if (v11)
    {
      result = *a1;
      *a1 = *a2;
      *a2 = result;
    }
  }

LABEL_18:
  v13 = a4->n128_u32[0] < a3->n128_u32[0];
  if (a4->n128_u32[0] == a3->n128_u32[0])
  {
    v13 = a4->n128_u32[1] < a3->n128_u32[1];
  }

  if (v13)
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    v14 = a3->n128_u32[0] < a2->n128_u32[0];
    if (a3->n128_u32[0] == a2->n128_u32[0])
    {
      v14 = a3->n128_u32[1] < a2->n128_u32[1];
    }

    if (v14)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      v15 = a2->n128_u32[0] < a1->n128_u32[0];
      if (a2->n128_u32[0] == a1->n128_u32[0])
      {
        v15 = a2->n128_u32[1] < a1->n128_u32[1];
      }

      if (v15)
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::glop::anonymous namespace::MatrixEntry *>(__n128 *a1, __n128 *a2, __n128 a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v30 = a1 + 1;
        v31 = a1[1].n128_i32[0];
        v32 = a1[1].n128_i32[1];
        v33 = v31 < a1->n128_u32[0];
        if (v31 == a1->n128_u32[0])
        {
          v33 = v32 < a1->n128_u32[1];
        }

        v35 = a2[-1].n128_i32[0];
        v34 = a2 - 1;
        v36 = a2[-1].n128_u32[1] < v32;
        v8 = v35 == v31;
        v37 = v35 < v31;
        if (v8)
        {
          v37 = v36;
        }

        if (!v33)
        {
          if (v37)
          {
            v51 = *v30;
            *v30 = *v34;
            *v34 = v51;
            v52 = a1[1].n128_i32[0];
            v8 = v52 == a1->n128_u32[0];
            v53 = v52 < a1->n128_u32[0];
            if (v8)
            {
              v53 = a1[1].n128_u32[1] < a1->n128_u32[1];
            }

            if (v53)
            {
              v54 = *a1;
              *a1 = *v30;
              *v30 = v54;
            }
          }

          return 1;
        }

        if (v37)
        {
          v38 = *a1;
          *a1 = *v34;
        }

        else
        {
          v60 = *a1;
          *a1 = *v30;
          *v30 = v60;
          v61 = a2[-1].n128_i32[0];
          v62 = a1[1].n128_i32[0];
          v8 = v61 == v62;
          v63 = v61 < v62;
          if (v8)
          {
            v63 = a2[-1].n128_u32[1] < a1[1].n128_u32[1];
          }

          if (!v63)
          {
            return 1;
          }

          v38 = *v30;
          *v30 = *v34;
        }

        *v34 = v38;
        break;
      case 4:
        break;
      case 5:
        v15 = a2[-1].n128_i32[0];
        v14 = a2 - 1;
        v16 = a1[3].n128_i32[0];
        v8 = v15 == v16;
        v17 = v15 < v16;
        if (v8)
        {
          v17 = a2[-1].n128_u32[1] < a1[3].n128_u32[1];
        }

        if (v17)
        {
          v18 = a1[3];
          a1[3] = *v14;
          *v14 = v18;
          v19 = a1[3].n128_i32[0];
          v20 = a1[2].n128_i32[0];
          v8 = v19 == v20;
          v21 = v19 < v20;
          if (v8)
          {
            v21 = a1[3].n128_u32[1] < a1[2].n128_u32[1];
          }

          if (v21)
          {
            v22 = a1[2];
            a1[2] = a1[3];
            a1[3] = v22;
            v23 = a1[2].n128_i32[0];
            v24 = a1[1].n128_i32[0];
            v8 = v23 == v24;
            v25 = v23 < v24;
            if (v8)
            {
              v25 = a1[2].n128_u32[1] < a1[1].n128_u32[1];
            }

            if (v25)
            {
              v26 = a1[1];
              a1[1] = a1[2];
              a1[2] = v26;
              v27 = a1[1].n128_i32[0];
              v8 = v27 == a1->n128_u32[0];
              v28 = v27 < a1->n128_u32[0];
              if (v8)
              {
                v28 = a1[1].n128_u32[1] < a1->n128_u32[1];
              }

              if (v28)
              {
                v29 = *a1;
                *a1 = a1[1];
                a1[1] = v29;
                return 1;
              }
            }
          }
        }

        return 1;
      default:
        goto LABEL_31;
    }

    return 1;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = a2[-1].n128_i32[0];
    v6 = a2[-1].n128_i32[1];
    v4 = a2 - 1;
    v7 = v6 < a1->n128_u32[1];
    v8 = v5 == a1->n128_u32[0];
    v9 = v5 < a1->n128_u32[0];
    if (v8)
    {
      v9 = v7;
    }

    if (v9)
    {
      v10 = *a1;
      *a1 = *v4;
      *v4 = v10;
      return 1;
    }

    return 1;
  }

LABEL_31:
  v39 = a1 + 2;
  v40 = a1[2].n128_i32[0];
  v41 = a1 + 1;
  v42 = a1[1].n128_i32[0];
  v43 = a1[1].n128_i32[1];
  v44 = a1->n128_u32[0];
  v45 = a1->n128_i32[1];
  v46 = v42 < a1->n128_u32[0];
  if (v42 == a1->n128_u32[0])
  {
    v46 = v43 < v45;
  }

  v47 = a1[2].n128_i32[1];
  v48 = v47 < v43;
  v8 = v40 == v42;
  v49 = v40 < v42;
  if (v8)
  {
    v49 = v48;
  }

  if (!v46)
  {
    if (v49)
    {
      v55 = *v41;
      *v41 = *v39;
      *v39 = v55;
      v56 = a1[1].n128_i32[0];
      v57 = a1[1].n128_u32[1] < v45;
      v8 = v56 == v44;
      v58 = v56 < v44;
      if (v8)
      {
        v58 = v57;
      }

      if (v58)
      {
        v59 = *a1;
        *a1 = *v41;
        *v41 = v59;
      }
    }

    goto LABEL_60;
  }

  if (v49)
  {
    v50 = *a1;
    *a1 = *v39;
  }

  else
  {
    v64 = *a1;
    *a1 = *v41;
    *v41 = v64;
    v65 = a1[1].n128_i32[0];
    v8 = v40 == v65;
    v66 = v40 < v65;
    if (v8)
    {
      v66 = v47 < a1[1].n128_u32[1];
    }

    if (!v66)
    {
      goto LABEL_60;
    }

    v50 = *v41;
    *v41 = *v39;
  }

  *v39 = v50;
LABEL_60:
  v67 = a1 + 3;
  if (&a1[3] == a2)
  {
LABEL_74:
    v82 = 1;
  }

  else
  {
    v68 = 0;
    v69 = 0;
    while (1)
    {
      v70 = v67->n128_u32[0];
      v71 = v67->n128_i32[1];
      v72 = v39->n128_u32[0];
      v73 = v71 < v39->n128_u32[1];
      v8 = v67->n128_u32[0] == v72;
      v74 = v67->n128_u32[0] < v72;
      if (!v8)
      {
        v73 = v74;
      }

      if (v73)
      {
        break;
      }

LABEL_63:
      v39 = v67;
      v68 += 16;
      if (++v67 == a2)
      {
        goto LABEL_74;
      }
    }

    v75 = v67->n128_u64[1];
    v76 = v68;
    do
    {
      v77 = a1 + v76;
      *(a1 + v76 + 48) = *(a1 + v76 + 32);
      if (v76 == -32)
      {
        a1->n128_u32[0] = v70;
        a1->n128_u32[1] = v71;
        a1->n128_u64[1] = v75;
        if (++v69 != 8)
        {
          goto LABEL_63;
        }

        goto LABEL_73;
      }

      v78 = *(v77 + 4);
      v79 = v71 < *(v77 + 5);
      v8 = v70 == v78;
      v80 = v70 < v78;
      if (!v8)
      {
        v79 = v80;
      }

      v76 -= 16;
    }

    while (v79);
    v81 = a1 + v76;
    *(v81 + 12) = v70;
    *(v81 + 13) = v71;
    *(v81 + 7) = v75;
    if (++v69 != 8)
    {
      goto LABEL_63;
    }

LABEL_73:
    v82 = 0;
    LODWORD(v67) = &v67[1] == a2;
  }

  return (v82 | v67) & 1;
}

void absl::lts_20240722::inlined_vector_internal::Storage<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,6ul,std::allocator<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>>::Resize<absl::lts_20240722::inlined_vector_internal::DefaultValueAdapter<std::allocator<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>>>(uint64_t *a1, unint64_t a2)
{
  v4 = *a1;
  v5 = *a1 & 1;
  if (*a1)
  {
    v7 = a1[1];
    v6 = a1[2];
    v8 = v4 >> 1;
    v9 = a2 - (v4 >> 1);
    if (a2 <= v4 >> 1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v6 = 6;
    v7 = a1 + 1;
    v8 = v4 >> 1;
    v9 = a2 - (v4 >> 1);
    if (a2 <= v4 >> 1)
    {
      goto LABEL_12;
    }
  }

  if (v6 < a2)
  {
    v10 = 2 * v6;
    if (v10 <= a2)
    {
      v11 = a2;
    }

    else
    {
      v11 = v10;
    }

    if (!(v11 >> 62))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  bzero(v7 + 4 * v8, 4 * v9);
LABEL_12:
  *a1 = v5 | (2 * a2);
}

uint64_t std::vector<operations_research::glop::SparseColumn>::__emplace_back_slow_path<operations_research::glop::SparseColumn>(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v3 - *a1;
  v5 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 4);
  v6 = v5 + 1;
  if (v5 + 1 > 0x555555555555555)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - v2) >> 4) > v6)
  {
    v6 = 0x5555555555555556 * ((*(a1 + 16) - v2) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - v2) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v8 = 0x555555555555555;
  }

  else
  {
    v8 = v6;
  }

  if (v8)
  {
    if (v8 <= 0x555555555555555)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v9 = 16 * (v4 >> 4);
  v10 = *a2;
  *a2 = 0;
  *v9 = v10;
  *(v9 + 8) = *(a2 + 1);
  *(v9 + 24) = *(a2 + 3);
  *(v9 + 40) = *(a2 + 40);
  v11 = v9 + 48;
  v12 = v9 - v4;
  if (v2 != v3)
  {
    v13 = v2;
    v14 = v12;
    do
    {
      v15 = *v13;
      *v13 = 0;
      *v14 = v15;
      v16 = *(v13 + 1);
      v17 = *(v13 + 3);
      *(v14 + 40) = *(v13 + 40);
      *(v14 + 24) = v17;
      *(v14 + 8) = v16;
      v13 += 6;
      v14 += 48;
    }

    while (v13 != v3);
    do
    {
      v18 = *v2;
      *v2 = 0;
      if (v18)
      {
        MEMORY[0x23EED9440](v18, 0x1000C8077774924);
      }

      v2 += 6;
    }

    while (v2 != v3);
    v2 = *a1;
  }

  *a1 = v12;
  *(a1 + 8) = v11;
  *(a1 + 16) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return 48 * v5 + 48;
}

void operations_research::glop::Preprocessor::Preprocessor(operations_research::glop::Preprocessor *this, const operations_research::glop::GlopParameters *a2)
{
  *this = &unk_284F414E8;
  *(this + 8) = 6;
  *(this + 2) = a2;
  *(this + 24) = 0;
  operator new();
}

void sub_23CBB2FCC(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 48) = v5;
    operator delete(v5);
  }

  MEMORY[0x23EED9460](v1, v2);
  _Unwind_Resume(a1);
}

void operations_research::glop::Preprocessor::~Preprocessor(operations_research::glop::Preprocessor *this)
{
  *this = &unk_284F414E8;
  v1 = *(this + 4);
  *(this + 4) = 0;
  if (v1)
  {
    v2 = *(v1 + 40);
    if (v2)
    {
      *(v1 + 48) = v2;
      operator delete(v2);
    }

    MEMORY[0x23EED9460](v1, 0x1030C4094DBD242);
  }
}

uint64_t operations_research::glop::MainLpPreprocessor::Run(operations_research::glop::MainLpPreprocessor *this, operations_research::glop::LinearProgram *a2)
{
  v10[6] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = *(this + 2);
    *(this + 72) = *(v4 + 31);
    *(this + 73) = *(v4 + 290);
    v5 = *(this + 21);
    if (*v5 != 1)
    {
      goto LABEL_9;
    }

    HIBYTE(v10[2]) = 0;
    LOBYTE(v10[0]) = 0;
    operations_research::SolverLogger::LogInfo(v5, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 82, v10);
    if (SHIBYTE(v10[2]) < 0)
    {
      operator delete(v10[0]);
      v6 = *(this + 21);
      if ((*v6 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v6 = *(this + 21);
      if ((*v6 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    HIBYTE(v10[2]) = 20;
    strcpy(v10, "Starting presolve...");
    operations_research::SolverLogger::LogInfo(v6, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 83, v10);
    if (SHIBYTE(v10[2]) < 0)
    {
      operator delete(v10[0]);
    }

LABEL_9:
    *(this + 46) = *(a2 + 6);
    *(this + 47) = -1431655765 * ((*(a2 + 1) - *a2) >> 4);
    *(this + 22) = operations_research::glop::SparseMatrix::num_entries(a2);
    if (*(*(this + 2) + 225) == 1)
    {
      operator new();
    }

    operator new();
  }

  v7 = absl::lts_20240722::log_internal::LogMessage::LogMessage(v10, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 77, 2);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "lp", 2uLL);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v10, " == NULL", 8uLL);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(v10);
  result = 0;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CBB4210(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  if (a28 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::glop::MainLpPreprocessor::RunAndPushIfRelevant(uint64_t a1, uint64_t *a2, void *a3, uint64_t (*a4)(uint64_t a1, char a2), operations_research::TimeLimit *this, uint64_t a6)
{
  v57 = *MEMORY[0x277D85DE8];
  v35[0] = a3;
  v35[1] = a4;
  if (!*a2)
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(&v41, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 152, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v41, "preprocessor", 0xCuLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v41, " == NULL", 8uLL);
LABEL_32:
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v41);
    goto LABEL_41;
  }

  if (!this)
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(&v41, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 153, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v41, "time_limit", 0xAuLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v41, " == NULL", 8uLL);
    goto LABEL_32;
  }

  if (*(a1 + 8) == 6)
  {
    v12 = operations_research::TimeLimit::LimitReached(this);
    if ((v12 & 1) == 0)
    {
      CurrentTimeNanos = absl::lts_20240722::GetCurrentTimeNanos(v12);
      v14 = *this;
      v15 = *a2;
      *(*a2 + 40) = this;
      if (-1431655765 * ((*(a6 + 8) - *a6) >> 4) || *(a6 + 24))
      {
        if ((*(*v15 + 16))(v15, a6))
        {
          v16 = operations_research::glop::SparseMatrix::num_entries(a6);
          v17 = absl::lts_20240722::GetCurrentTimeNanos(v16);
          v18 = *(a1 + 168);
          if (*v18 == 1)
          {
            v19 = (v17 - *this);
            v20 = *(a6 + 24);
            v21 = (v20 - *(a1 + 184));
            v22 = 0xAAAAAAAAAAAAAAABLL * ((*(a6 + 8) - *a6) >> 4);
            v23 = (v22 - *(a1 + 188));
            v24 = v16 - *(a1 + 176);
            v41 = v35;
            v42 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string_view>;
            v43 = v20;
            v44 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<int>;
            v45 = v21;
            v46 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<int>;
            v47 = v22;
            v48 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<int>;
            v49 = v23;
            v50 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<int>;
            v51 = v16;
            v52 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<long long>;
            v53 = v24;
            v54 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<long long>;
            v55 = v19 * 0.000000001 - (CurrentTimeNanos - v14) * 0.000000001;
            v56 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<double>;
            absl::lts_20240722::str_format_internal::FormatPack("%-45s: %d(%d) rows, %d(%d) columns, %d(%d) entries. (%fs)", 57, &v41, 8uLL, &v36);
            if ((v38 & 0x80u) == 0)
            {
              v25 = &v36;
            }

            else
            {
              v25 = v36;
            }

            if ((v38 & 0x80u) == 0)
            {
              v26 = v38;
            }

            else
            {
              v26 = v37;
            }

            if (v26 >= 0x7FFFFFFFFFFFFFF8)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            if (v26 >= 0x17)
            {
              operator new();
            }

            v40 = v26;
            if (v26)
            {
              memmove(__dst, v25, v26);
            }

            *(__dst + v26) = 0;
            operations_research::SolverLogger::LogInfo(v18, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 181, __dst);
            if (v40 < 0)
            {
              operator delete(__dst[0]);
            }

            if (v38 < 0)
            {
              operator delete(v36);
            }
          }

          *(a1 + 8) = *(*a2 + 8);
          std::vector<std::unique_ptr<operations_research::SparsePermutation>>::push_back[abi:ne200100](a1 + 48, a2);
        }

        else
        {
          v27 = *(*a2 + 8);
          *(a1 + 8) = *(*a2 + 8);
          if (v27 != 6)
          {
            v28 = *(a1 + 168);
            if (*v28 == 1)
            {
              v41 = a3;
              v42 = a4;
              __dst[0] = " detected that the problem is ";
              __dst[1] = 30;
              operations_research::glop::GetProblemStatusString(v27, v32);
              v29 = v33;
              if ((v33 & 0x80u) == 0)
              {
                v30 = v32;
              }

              else
              {
                v30 = v32[0];
              }

              if ((v33 & 0x80u) != 0)
              {
                v29 = v32[1];
              }

              v36 = v30;
              v37 = v29;
              absl::lts_20240722::StrCat(&v41, __dst, &v36, &__p);
              operations_research::SolverLogger::LogInfo(v28, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 191, &__p);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (v33 < 0)
              {
                operator delete(v32[0]);
              }
            }
          }
        }
      }

      else
      {
        *(a1 + 8) = 0;
      }
    }
  }

LABEL_41:
  v31 = *MEMORY[0x277D85DE8];
}

void sub_23CBB4A8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::glop::MainLpPreprocessor::RecoverSolution(uint64_t this, operations_research::glop::ProblemSolution *a2)
{
  v3 = *(this + 48);
  for (i = *(this + 56); i != v3; this = (*(*v5 + 24))(v5, a2))
  {
    v5 = *(i - 8);
    i -= 8;
  }

  return this;
}

void *operations_research::glop::MainLpPreprocessor::DestructiveRecoverSolution(void *this, operations_research::glop::ProblemSolution *a2)
{
  v2 = this[7];
  if (this[6] != v2)
  {
    v4 = this;
    do
    {
      (*(**(v2 - 1) + 24))(*(v2 - 1), a2);
      v5 = v4[7];
      v6 = *(v5 - 8);
      v2 = (v5 - 8);
      this = v6;
      *v2 = 0;
      if (v6)
      {
        this = (*(*this + 8))(this);
      }

      v4[7] = v2;
    }

    while (v4[6] != v2);
  }

  return this;
}

uint64_t operations_research::glop::ColumnsSaver::SaveColumn(void *a1, int a2, uint64_t a3)
{
  v5 = a1[15];
  v14 = a2;
  v15 = v5;
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,int>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> const,int>>>::find_or_prepare_insert<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>((a1 + 6), &v14, v16);
  if ((v18 & 1) == 0)
  {
    operations_research::glop::ColumnsSaver::SaveColumn(&v13);
  }

  v6 = v17;
  *v17 = v14;
  v6[1] = v15;
  v7 = a1[11];
  v8 = a1[12];
  v9 = 85 * ((v8 - v7) >> 3) - 1;
  if (v8 == v7)
  {
    v9 = 0;
  }

  if (v9 == a1[15] + a1[14])
  {
    std::deque<operations_research::glop::SparseColumn>::__add_back_capacity(a1 + 10);
    v7 = a1[11];
    v8 = a1[12];
  }

  if (v8 == v7)
  {
    v11 = 0;
  }

  else
  {
    v10 = a1[15] + a1[14];
    v11 = *(v7 + 8 * (v10 / 0x55)) + 48 * (v10 % 0x55);
  }

  result = operations_research::glop::SparseVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::glop::VectorIterator<operations_research::glop::SparseColumnEntry>>::SparseVector(v11, a3);
  ++a1[15];
  return result;
}

int64_t operations_research::glop::ColumnsSaver::SaveColumnIfNotAlreadyDone(void *a1, int a2, uint64_t a3)
{
  v5 = a1[15];
  v13 = a2;
  v14 = v5;
  result = absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,int>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> const,int>>>::find_or_prepare_insert<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>((a1 + 6), &v13, v15);
  if (v17)
  {
    v7 = v16;
    *v16 = v13;
    v7[1] = v14;
    v8 = a1[11];
    v9 = a1[12];
    v10 = 85 * ((v9 - v8) >> 3) - 1;
    if (v9 == v8)
    {
      v10 = 0;
    }

    if (v10 == a1[15] + a1[14])
    {
      std::deque<operations_research::glop::SparseColumn>::__add_back_capacity(a1 + 10);
      v8 = a1[11];
      v9 = a1[12];
    }

    if (v9 == v8)
    {
      v12 = 0;
    }

    else
    {
      v11 = a1[15] + a1[14];
      v12 = *(v8 + 8 * (v11 / 0x55)) + 48 * (v11 % 0x55);
    }

    result = operations_research::glop::SparseVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::glop::VectorIterator<operations_research::glop::SparseColumnEntry>>::SparseVector(v12, a3);
    ++a1[15];
  }

  return result;
}

_DWORD *operations_research::glop::ColumnDeletionHelper::MarkColumnForDeletionWithState(_DWORD *result, uint64_t a2, char a3, double a4)
{
  v6 = a2;
  v7 = result;
  v8 = a2 << 32;
  if (a2 >= result[2])
  {
    v9 = (v8 + 0x100000000) >> 32;
    std::vector<BOOL>::resize(result, v9, 0);
    v10 = v7[3];
    v11 = v7[4];
    v17 = 0;
    v12 = (v11 - v10) >> 3;
    if (v9 <= v12)
    {
      if (v9 < v12)
      {
        v7[4] = v10 + 8 * v9;
      }
    }

    else
    {
      std::vector<double>::__append((v7 + 3), v9 - v12, &v17);
    }

    v13 = v7[6];
    result = v7[7];
    v14 = v9 - (result - v13);
    if (v9 <= result - v13)
    {
      if (v9 < result - v13)
      {
        v7[7] = v13 + v9;
      }
    }

    else
    {
      v15 = v7[8];
      if (v15 - result < v14)
      {
        if ((v9 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      v16 = v9 + v13;
      result = memset(result, 4, v14);
      v7[7] = v16;
    }
  }

  *(*v7 + (((v8 >> 32) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v6;
  *(v7[3] + (v8 >> 29)) = a4;
  *(v7[6] + (v8 >> 32)) = a3;
  return result;
}

void operations_research::glop::ColumnDeletionHelper::RestoreDeletedColumns(operations_research::glop::ColumnDeletionHelper *this, operations_research::glop::ProblemSolution *a2)
{
  if (*(this + 2) >= 1)
  {
    if (**this)
    {
      operator new();
    }

    operator new();
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = *(a2 + 1);
  v6 = (*(a2 + 2) - v5) >> 3;
  if (v6 <= 0)
  {
    v9 = a2;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = a2;
    do
    {
      while (1)
      {
        v16 = v3;
        v10 = v4 >> 3;
        if (((v4 >> 3) + 1) >> 61)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v15 = v2;
        if (v4 >> 3 != -1)
        {
          if (!(((v4 >> 3) + 1) >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        *(8 * v10) = *(*(v9 + 1) + (v8 >> 29));
        v11 = 8 * v10 + 8;
        memcpy(0, 0, v4);
        v9 = a2;
        v3 = v16;
        v4 = v11;
        v12 = *(a2 + 7);
        if (v15 >= v16)
        {
          break;
        }

        *v15 = *(v12 + v7);
        v2 = v15 + 1;
        ++v7;
        v8 += 0x100000000;
        if (!--v6)
        {
          goto LABEL_19;
        }
      }

      v13 = (v15 + 1);
      if ((v15 + 1) < 0)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (2 * v16 > v13)
      {
        v13 = 2 * v16;
      }

      if (v13)
      {
        operator new();
      }

      v3 = 0;
      *v15 = *(v12 + v7);
      memcpy(0, 0, v15);
      v9 = a2;
      v2 = v15 + 1;
      ++v7;
      v8 += 0x100000000;
      --v6;
    }

    while (v6);
LABEL_19:
    v5 = *(v9 + 1);
  }

  *(v9 + 1) = 0;
  *(v9 + 2) = v4;
  *(v9 + 3) = 0;
  v14 = *(v9 + 7);
  *(v9 + 7) = 0;
  *(v9 + 8) = v2;
  *(v9 + 9) = v3;
  if (v14)
  {
    operator delete(v14);
  }

  if (v5)
  {

    operator delete(v5);
  }
}

void sub_23CBB56CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, void *a14)
{
  if (__p)
  {
    operator delete(__p);
    if (!a14)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!a14)
  {
    goto LABEL_3;
  }

  operator delete(a14);
  _Unwind_Resume(exception_object);
}

void operations_research::glop::RowDeletionHelper::RestoreDeletedRows(operations_research::glop::RowDeletionHelper *this, operations_research::glop::ProblemSolution *a2)
{
  if (*(this + 1) < 1)
  {
    v6 = 0;
    v5 = 0;
    v4 = 0;
    v3 = 0;
  }

  else
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v29 = *(this + 1) & 0x7FFFFFFFLL;
    do
    {
      if ((*(*this + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v2))
      {
        v7 = v3;
        v8 = v3 >> 3;
        if (((v3 >> 3) + 1) >> 61)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        if (v3 >> 3 != -1)
        {
          if (!(((v3 >> 3) + 1) >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        *(8 * v8) = 0;
        v3 = 8 * v8 + 8;
        memcpy(0, 0, v7);
        if (v6 < v5)
        {
          *v6++ = 0;
        }

        else
        {
          v11 = v6;
          v12 = (v6 + 1);
          if ((v6 + 1) < 0)
          {
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          if (2 * v5 > v12)
          {
            v12 = 2 * v5;
          }

          v5 = v12;
          if (v12)
          {
            operator new();
          }

          *v6++ = 0;
          memcpy(0, 0, v11);
        }
      }

      else
      {
        v9 = v3;
        v10 = v3 >> 3;
        if (((v3 >> 3) + 1) >> 61)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        if (v3 >> 3 != -1)
        {
          if (!(((v3 >> 3) + 1) >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        *(8 * v10) = *(*(a2 + 4) + 8 * v4);
        v3 = 8 * v10 + 8;
        memcpy(0, 0, v9);
        v13 = *(a2 + 10);
        if (v6 < v5)
        {
          *v6++ = *(v13 + v4);
        }

        else
        {
          v14 = v6;
          v15 = (v6 + 1);
          if ((v6 + 1) < 0)
          {
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          if (2 * v5 > v15)
          {
            v15 = 2 * v5;
          }

          v5 = v15;
          if (v15)
          {
            operator new();
          }

          *v6++ = *(v13 + v4);
          memcpy(0, 0, v14);
        }

        v4 = (v4 + 1);
      }

      ++v2;
    }

    while (v29 != v2);
  }

  v16 = a2;
  v17 = *(a2 + 4);
  v18 = (*(a2 + 5) - v17) >> 3;
  v19 = v4;
  v20 = __OFSUB__(v18, v4);
  v21 = v18 - v4;
  if (!((v21 < 0) ^ v20 | (v21 == 0)))
  {
    v32 = v5;
    v22 = v19;
    v23 = v19 << 32;
    do
    {
      while (1)
      {
        v24 = v3;
        v25 = v3 >> 3;
        if ((v25 + 1) >> 61)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        if (v25 != -1)
        {
          if (!((v25 + 1) >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        MEMORY[0xFFFFFFFFFFFFFFF8] = *(*(v16 + 4) + (v23 >> 29));
        v3 = 0;
        memcpy(0, 0, v24);
        v16 = a2;
        v26 = *(a2 + 10);
        if (v6 >= v32)
        {
          break;
        }

        *v6++ = *(v26 + v22++);
        v23 += 0x100000000;
        if (!--v21)
        {
          goto LABEL_46;
        }
      }

      v27 = (v6 + 1);
      if ((v6 + 1) < 0)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (2 * v32 > v27)
      {
        v27 = 2 * v32;
      }

      if (v27)
      {
        operator new();
      }

      v32 = 0;
      *v6 = *(v26 + v22);
      memcpy(0, 0, v6);
      v16 = a2;
      ++v6;
      ++v22;
      v23 += 0x100000000;
      --v21;
    }

    while (v21);
LABEL_46:
    v17 = *(v16 + 4);
    v5 = v32;
  }

  *(v16 + 4) = 0;
  *(v16 + 5) = v3;
  *(v16 + 6) = 0;
  v28 = *(v16 + 10);
  *(v16 + 10) = 0;
  *(v16 + 11) = v6;
  *(v16 + 12) = v5;
  if (v28)
  {
    operator delete(v28);
  }

  if (v17)
  {

    operator delete(v17);
  }
}

void sub_23CBB5D70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *__p)
{
  if (v16)
  {
    operator delete(v16);
    if (!a14)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!a14)
  {
    goto LABEL_3;
  }

  operator delete(a14);
  _Unwind_Resume(exception_object);
}

BOOL operations_research::glop::EmptyColumnPreprocessor::Run(operations_research::glop::EmptyColumnPreprocessor *this, operations_research::glop::LinearProgram *a2)
{
  if (!a2)
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v25, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 399, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v25, "lp", 2uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v25, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v25);
    return 0;
  }

  *(this + 7) = 0;
  *(this + 10) = *(this + 9);
  v4 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 4);
  if (v4 < 1)
  {
LABEL_27:
    operations_research::glop::LinearProgram::DeleteColumns(a2, this + 48);
    return *(this + 7) != 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = v4 & 0x7FFFFFFF;
  while (*(operations_research::glop::LinearProgram::GetSparseColumn(a2, v6) + 8))
  {
LABEL_19:
    ++v6;
    v5 += 0x100000000;
    if (v7 == v6)
    {
      goto LABEL_27;
    }
  }

  v12 = *(*(a2 + 20) + (v5 >> 29));
  v13 = *(*(a2 + 23) + (v5 >> 29));
  ObjectiveCoefficientForMinimizationVersion = operations_research::glop::LinearProgram::GetObjectiveCoefficientForMinimizationVersion(a2, v6);
  if (ObjectiveCoefficientForMinimizationVersion == 0.0)
  {
    if (v12 == -INFINITY)
    {
      v8 = 0.0;
    }

    else
    {
      v8 = v12;
    }

    if (v13 == INFINITY)
    {
      v9 = v8;
    }

    else
    {
      v9 = v13;
    }

    goto LABEL_10;
  }

  if (ObjectiveCoefficientForMinimizationVersion <= 0.0)
  {
    v15 = v13;
  }

  else
  {
    v15 = v12;
  }

  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v16 = v15;
    operations_research::glop::LinearProgram::SetObjectiveOffset(a2, *(a2 + 49) + v15 * *(*(a2 + 17) + (v5 >> 29)));
    v9 = v16;
LABEL_10:
    if (v9 == v13)
    {
      v10 = 3;
    }

    else
    {
      v10 = 4;
    }

    if (v9 == v12)
    {
      v10 = 2;
    }

    if (v12 == v13)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }

    operations_research::glop::ColumnDeletionHelper::MarkColumnForDeletionWithState(this + 12, v6, v11, v9);
    goto LABEL_19;
  }

  v24 = v6;
  if (dword_27E25CE80 >= 1)
  {
    v18 = ObjectiveCoefficientForMinimizationVersion;
    if (absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::glop::EmptyColumnPreprocessor::Run(operations_research::glop::LinearProgram *)::$_0::operator() const(void)::site, dword_27E25CE80))
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(v25, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 423);
      v19 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v25, 1);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v19, "Problem INFEASIBLE_OR_UNBOUNDED, empty column ", 0x2EuLL);
      v20 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,0>(v19, &v24);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v20, " has a minimization cost of ", 0x1CuLL);
      v26 = v18;
      v21 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v20, &v26);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v21, " and bounds", 0xBuLL);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v21, " [", 2uLL);
      v26 = v12;
      v22 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v21, &v26);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v22, ",", 1uLL);
      v26 = v13;
      v23 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v22, &v26);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v23, "]", 1uLL);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(v25);
    }
  }

  result = 0;
  *(this + 8) = 3;
  return result;
}

void sub_23CBB60D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CBB60E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void operations_research::glop::EmptyColumnPreprocessor::RecoverSolution(operations_research::glop::EmptyColumnPreprocessor *this, operations_research::glop::ProblemSolution *a2)
{
  if (a2)
  {
    v2 = (this + 48);

    operations_research::glop::ColumnDeletionHelper::RestoreDeletedColumns(v2, a2);
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v3, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 443, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v3, "solution", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v3, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v3);
  }
}

uint64_t operations_research::glop::ProportionalColumnPreprocessor::Run(operations_research::glop::ProportionalColumnPreprocessor *this, operations_research::glop::LinearProgram *a2, __n128 a3)
{
  if (a2)
  {
    a3.n128_u64[0] = *(*(this + 2) + 200);
    operations_research::glop::FindProportionalColumns(a2, a3, &v7);
    v3 = v7;
    if (((v8 - v7) >> 2) >= 1)
    {
      v4 = 0;
      do
      {
        v5 = v3[v4];
        if (v5 != -1)
        {
          if (v3[v5] == -1)
          {
            operator new();
          }

          operator new();
        }

        ++v4;
        v3 = v7;
      }

      while (v4 < ((v8 - v7) >> 2));
    }

    if (v7)
    {
      v8 = v7;
      operator delete(v7);
    }
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(&v7, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 499, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v7, "lp", 2uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v7, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v7);
  }

  return 0;
}

void sub_23CBB7234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, void *a28, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
    v30 = a15;
    if (!a15)
    {
LABEL_3:
      v31 = a22;
      if (!a22)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v30 = a15;
    if (!a15)
    {
      goto LABEL_3;
    }
  }

  operator delete(v30);
  v31 = a22;
  if (!a22)
  {
LABEL_4:
    v32 = a28;
    if (!a28)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(v31);
  v32 = a28;
  if (!a28)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(v32);
  _Unwind_Resume(exception_object);
}

uint64_t operations_research::glop::anonymous namespace::SubtractColumnMultipleFromConstraintBound(int a1, uint64_t a2, double a3)
{
  SparseColumn = operations_research::glop::LinearProgram::GetSparseColumn(a2, a1);
  v7 = SparseColumn[1];
  if (v7 >= 1)
  {
    v8 = SparseColumn[3];
    v9 = SparseColumn[4];
    v10 = *(a2 + 64);
    v11 = *(a2 + 88);
    do
    {
      v12 = *v9++;
      v13 = v12 * a3;
      LODWORD(v12) = *v8++;
      v14 = 8 * SLODWORD(v12);
      *(v10 + v14) = *(v10 + v14) - v13;
      *(v11 + v14) = *(v11 + v14) - v13;
      --v7;
    }

    while (v7);
  }

  v15 = *(a2 + 392) + *(*(a2 + 136) + 8 * a1) * a3;

  return operations_research::glop::LinearProgram::SetObjectiveOffset(a2, v15);
}

void operations_research::glop::ProportionalColumnPreprocessor::RecoverSolution(operations_research::glop::ProportionalColumnPreprocessor *this, operations_research::glop::ProblemSolution *a2)
{
  if (a2)
  {
    operations_research::glop::ColumnDeletionHelper::RestoreDeletedColumns((this + 192), a2);
    v4 = *(this + 10) - *(this + 9);
    if (((v4 << 30) & 0xFFFFFFFF00000000) != 0)
    {
      if (((v4 >> 2) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    memset(__p, 0, sizeof(__p));
    if ((v4 >> 2) >= 1)
    {
      v5 = 0;
      v6 = *(this + 9);
      v7 = __p[0];
      v8 = (v4 >> 2) & 0x7FFFFFFF;
      while (v5 != *(v6 + 4 * v5))
      {
LABEL_9:
        if (v8 == ++v5)
        {
          v24 = 0;
          v25 = *(this + 9);
          v26 = __p[0];
          while (1)
          {
            v31 = *(v25 + 4 * v24);
            if (v31 != -1)
            {
              v32 = v31;
              v33 = (8 * v31);
              if ((*v33 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                v39 = *(*(this + 6) + 8 * v24) / *(*(this + 6) + 8 * v31);
                v40 = fabs(v39);
                v41 = *(this + 15);
                v27 = *(v41 + 8 * v24);
                v42 = *(this + 12);
                v43 = *(v42 + 8 * v24);
                v44 = *v33 / v40;
                v45 = v27 - v43;
                v46 = v31 >> 6;
                v47 = 1 << v31;
                v48 = (v39 <= 0.0) ^ ((v26[v46] & v47) != 0);
                if (v27 - v43 <= v44)
                {
                  if (v48)
                  {
                    v27 = *(v42 + 8 * v24);
                  }

                  *(*(a2 + 1) + 8 * v24) = v27;
                  v28 = *(v42 + 8 * v24);
                  v29 = *(v41 + 8 * v24);
                  if (v27 == v29)
                  {
                    v30 = 3;
                  }

                  else
                  {
                    v30 = 4;
                  }

                  if (v27 == v28)
                  {
                    v30 = 2;
                  }

                  if (v28 == v29)
                  {
                    v30 = 1;
                  }

                  *(*(a2 + 7) + v24) = v30;
                  *v33 = *v33 - v45 * v40;
                }

                else
                {
                  v49 = v27 - v44;
                  if (!v48)
                  {
                    v49 = v44 + v43;
                  }

                  *(*(a2 + 1) + 8 * v24) = v49;
                  v50 = *(8 * v46);
                  if ((v50 & v47) != 0)
                  {
                    v51 = 0;
                  }

                  else
                  {
                    v53 = *(v42 + 8 * v24);
                    v54 = *(v41 + 8 * v24);
                    if (v53 == v54)
                    {
                      v51 = 1;
                    }

                    else if (v49 == v53)
                    {
                      v51 = 2;
                    }

                    else if (v49 == v54)
                    {
                      v51 = 3;
                    }

                    else
                    {
                      v51 = 4;
                    }
                  }

                  *(*(a2 + 7) + v24) = v51;
                  *v33 = 0.0;
                  *(8 * v46) = v50 & ~v47;
                }

                goto LABEL_37;
              }

              v34 = *(8 * v31);
              if (v34 == 0.0)
              {
                v35 = v31 >> 6;
                v36 = 1 << v31;
                v37 = *(8 * (v32 >> 6));
                if ((v37 & v36) != 0)
                {
                  v38 = *(a2 + 7);
                  goto LABEL_55;
                }
              }

              else
              {
                v52 = *(*(this + 6) + 8 * v24) / *(*(this + 6) + 8 * v31);
                if (v34 * v52 > 0.0)
                {
                  if (*(*(this + 15) + 8 * v24) != INFINITY)
                  {
                    goto LABEL_37;
                  }

LABEL_54:
                  *(8 * v31) = 0;
                  *(*(a2 + 1) + 8 * v24) = v34 / v52 + *(*(a2 + 1) + 8 * v24);
                  v35 = v31 >> 6;
                  v36 = 1 << v31;
                  v37 = *(8 * (v32 >> 6));
                  v38 = *(a2 + 7);
                  if ((v37 & v36) == 0)
                  {
                    *(v38 + v24) = 4;
                    goto LABEL_37;
                  }

LABEL_55:
                  *(v38 + v24) = 0;
                  *(8 * v35) = v37 & ~v36;
                  goto LABEL_37;
                }

                if (*(*(this + 12) + 8 * v24) == -INFINITY)
                {
                  goto LABEL_54;
                }
              }
            }

LABEL_37:
            if (v8 == ++v24)
            {
              goto LABEL_63;
            }
          }
        }
      }

      v10 = *(a2 + 1);
      v11 = *(v10 + 8 * v5);
      v12 = *(*(this + 21) + 8 * v5) - v11;
      v13 = v11 - *(*(this + 18) + 8 * v5);
      v14 = v5 >> 6;
      v15 = 1 << v5;
      if (v12 >= v13)
      {
        v18 = v11 - *(*(this + 18) + 8 * v5);
        v7[v14] &= ~v15;
        *(8 * v5) = v13;
        v16 = *(a2 + 7);
        if (*(v16 + v5))
        {
          goto LABEL_13;
        }
      }

      else
      {
        v7[v14] |= v15;
        *(8 * v5) = v12;
        v16 = *(a2 + 7);
        if (*(v16 + v5))
        {
LABEL_13:
          v17 = *(8 * v14) & ~v15;
LABEL_16:
          *(8 * v14) = v17;
          *(8 * v5) = v11;
          v19 = *(this + 12);
          v20 = *(v19 + 8 * v5);
          v21 = *(this + 15);
          if (fabs(v20) >= fabs(*(v21 + 8 * v5)))
          {
            v20 = *(v21 + 8 * v5);
          }

          if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
          {
            v20 = 0.0;
          }

          *(v10 + 8 * v5) = v20;
          v22 = *(v19 + 8 * v5);
          v23 = *(v21 + 8 * v5);
          if (v22 == v23)
          {
            v9 = 1;
          }

          else if (v20 == v22)
          {
            v9 = 2;
          }

          else if (v20 == v23)
          {
            v9 = 3;
          }

          else
          {
            v9 = 4;
          }

          *(v16 + v5) = v9;
          goto LABEL_9;
        }
      }

      v17 = *(8 * v14) | v15;
      goto LABEL_16;
    }

LABEL_63:
    if (__p[0])
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(__p, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 729, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(__p, "solution", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(__p, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(__p);
  }
}

void sub_23CBB7994(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  operator delete(v11);
  if (__p)
  {
    operator delete(__p);
    operator delete(v10);
    _Unwind_Resume(a1);
  }

  operator delete(v10);
  _Unwind_Resume(a1);
}

void sub_23CBB79D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

BOOL operations_research::glop::ProportionalRowPreprocessor::Run(operations_research::glop::ProportionalRowPreprocessor *this, operations_research::glop::LinearProgram *a2)
{
  if (a2)
  {
    v4 = *(a2 + 6);
    TransposeSparseMatrix = operations_research::glop::LinearProgram::GetTransposeSparseMatrix(a2);
    v11[0] = 0;
    std::vector<double>::assign(this + 6, v4, v11);
    if (v4 >= 1)
    {
      v6 = 0;
      v7 = (*TransposeSparseMatrix + 32);
      do
      {
        if (*(v7 - 3))
        {
          *(*(this + 6) + v6) = **v7;
        }

        v6 += 8;
        v7 += 6;
      }

      while (8 * v4 != v6);
    }

    if (v4)
    {
      if ((v4 & 0x80000000) == 0)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    std::vector<int>::assign(this + 3, v4, &operations_research::glop::kInvalidRow);
    std::vector<int>::assign(this + 4, v4, &operations_research::glop::kInvalidRow);
    v8.n128_u64[0] = *(*(this + 2) + 200);
    operations_research::glop::FindProportionalColumns(TransposeSparseMatrix, v8, v11);
    *(this + 120) = *(a2 + 408);
    operations_research::glop::LinearProgram::DeleteRows(a2, this + 16);
    v9 = *(this + 17) != 0;
    if (v11[0])
    {
      v11[1] = v11[0];
      operator delete(v11[0]);
    }
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v11, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 843, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v11, "lp", 2uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v11, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v11);
    return 0;
  }

  return v9;
}

void sub_23CBB800C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
    v16 = a12;
    if (!a12)
    {
LABEL_3:
      if (!v14)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v16 = a12;
    if (!a12)
    {
      goto LABEL_3;
    }
  }

  operator delete(v16);
  if (!v14)
  {
LABEL_4:
    if (!v13)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(v14);
  if (!v13)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(v13);
  _Unwind_Resume(exception_object);
}

void operations_research::glop::ProportionalRowPreprocessor::RecoverSolution(operations_research::glop::ProportionalRowPreprocessor *this, operations_research::glop::ProblemSolution *a2)
{
  if (a2)
  {
    operations_research::glop::RowDeletionHelper::RestoreDeletedRows((this + 128), a2);
    v4 = *(a2 + 4);
    v5 = *(a2 + 5) - v4;
    if ((v5 >> 3) >= 1)
    {
      v6 = 0;
      v7 = *(this + 12);
      v8 = *(this + 9);
      v9 = (v5 >> 3) & 0x7FFFFFFF;
      while (1)
      {
        v10 = *(v7 + 4 * v6);
        v11 = *(v8 + 4 * v6);
        if (v10 != -1 || v11 != -1)
        {
          v13 = *(a2 + 10);
          v14 = *(v13 + v6);
          if (*(v13 + v6))
          {
            break;
          }
        }

LABEL_4:
        if (v9 == ++v6)
        {
          return;
        }
      }

      if (v14 == 1)
      {
        v15 = *(v4 + 8 * v6);
        v16 = -v15;
        if (!*(this + 120))
        {
          v16 = *(v4 + 8 * v6);
        }

        if (v16 <= 0.0)
        {
          v14 = 3;
        }

        else
        {
          v14 = 2;
        }

        if (v15 == 0.0)
        {
          v14 = 1;
        }
      }

      if (v6 != v10 && v14 == 2)
      {
        v22 = 8 * v10;
        v23 = *(*(this + 6) + 8 * v6) / *(*(this + 6) + v22);
        *(v4 + v22) = v23 * *(v4 + 8 * v6);
        *(v4 + 8 * v6) = 0;
        *(v13 + v6) = 0;
        if (v23 <= 0.0)
        {
          v21 = 3;
        }

        else
        {
          v21 = 2;
        }

        LODWORD(v11) = v10;
      }

      else
      {
        if (v6 == v11 || v14 != 3)
        {
LABEL_35:
          if (*(v13 + v6) == 1)
          {
            if (v6 == v10)
            {
              v24 = 2;
            }

            else
            {
              v24 = 3;
            }

            *(v13 + v6) = v24;
          }

          goto LABEL_4;
        }

        v19 = 8 * v11;
        v20 = *(*(this + 6) + 8 * v6) / *(*(this + 6) + v19);
        *(v4 + v19) = v20 * *(v4 + 8 * v6);
        *(v4 + 8 * v6) = 0;
        *(v13 + v6) = 0;
        if (v20 <= 0.0)
        {
          v21 = 2;
        }

        else
        {
          v21 = 3;
        }
      }

      *(v13 + v11) = v21;
      goto LABEL_35;
    }
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v25, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 1019, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v25, "solution", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v25, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v25);
  }
}

BOOL operations_research::glop::FixedVariablePreprocessor::Run(operations_research::glop::FixedVariablePreprocessor *this, operations_research::glop::LinearProgram *a2)
{
  if (a2)
  {
    v4 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 4);
    if (v4 >= 1)
    {
      v5 = 0;
      v6 = v4 & 0x7FFFFFFF;
      do
      {
        v7 = 8 * v5;
        v8 = *(*(a2 + 20) + v7);
        if (v8 == *(*(a2 + 23) + v7))
        {
          SparseColumn = operations_research::glop::LinearProgram::GetSparseColumn(a2, v5);
          v10 = SparseColumn[1];
          if (v10 >= 1)
          {
            v11 = SparseColumn[3];
            v12 = SparseColumn[4];
            v13 = *(a2 + 8);
            v14 = *(a2 + 11);
            do
            {
              v15 = *v12++;
              v16 = v8 * v15;
              LODWORD(v15) = *v11++;
              v17 = 8 * SLODWORD(v15);
              *(v13 + v17) = *(v13 + v17) - v16;
              *(v14 + v17) = *(v14 + v17) - v16;
              --v10;
            }

            while (v10);
          }

          operations_research::glop::LinearProgram::SetObjectiveOffset(a2, *(a2 + 49) + *(*(a2 + 17) + 8 * v5) * v8);
          operations_research::glop::ColumnDeletionHelper::MarkColumnForDeletionWithState(this + 12, v5, 1, v8);
        }

        ++v5;
      }

      while (v5 != v6);
    }

    operations_research::glop::LinearProgram::DeleteColumns(a2, this + 48);
    return *(this + 7) != 0;
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v19, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 1092, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v19, "lp", 2uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v19, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v19);
    return 0;
  }
}

void operations_research::glop::FixedVariablePreprocessor::RecoverSolution(operations_research::glop::FixedVariablePreprocessor *this, operations_research::glop::ProblemSolution *a2)
{
  if (a2)
  {
    v2 = (this + 48);

    operations_research::glop::ColumnDeletionHelper::RestoreDeletedColumns(v2, a2);
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v3, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 1115, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v3, "solution", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v3, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v3);
  }
}

BOOL operations_research::glop::ForcingAndImpliedFreeConstraintPreprocessor::Run(operations_research::glop::ForcingAndImpliedFreeConstraintPreprocessor *this, operations_research::glop::LinearProgram *a2)
{
  if (a2)
  {
    v4 = *(a2 + 6);
    if (v4)
    {
      if ((v4 & 0x80000000) == 0)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v5 = -1431655765 * ((*(a2 + 1) - *a2) >> 4);
    if (v5 >= 1)
    {
      v6 = 0;
      do
      {
        v7 = 8 * v6;
        v8 = *(*(a2 + 20) + v7);
        v9 = *(*(a2 + 23) + v7);
        SparseColumn = operations_research::glop::LinearProgram::GetSparseColumn(a2, v6);
        v11 = SparseColumn[1];
        if (v11 >= 1)
        {
          v12 = SparseColumn[3];
          v13 = SparseColumn[4];
          do
          {
            v14 = *v13++;
            v15 = v14;
            LODWORD(v14) = *v12++;
            v16 = LODWORD(v14);
            v17 = (8 * SLODWORD(v14));
            if (v15 <= 0.0)
            {
              v18 = v9;
            }

            else
            {
              v18 = v8;
            }

            *v17 = *v17 + v18 * v15;
            if (v15 <= 0.0)
            {
              v19 = v8;
            }

            else
            {
              v19 = v9;
            }

            *v17 = *v17 + v19 * v15;
            ++*(4 * v16);
            --v11;
          }

          while (v11);
        }

        ++v6;
      }

      while (v6 != (v5 & 0x7FFFFFFF));
    }

    LOBYTE(__p[0]) = 0;
    std::vector<BOOL>::assign(this + 80, v4, __p);
    memset(__p, 0, sizeof(__p));
    operations_research::glop::LinearProgram::DeleteColumns(a2, this + 104);
    operations_research::glop::LinearProgram::DeleteRows(a2, this + 22);
    v20 = *(this + 14) != 0;
    if (__p[0])
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(__p, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 1125, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(__p, "lp", 2uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(__p, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(__p);
    return 0;
  }

  return v20;
}

void sub_23CBB90A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *__p)
{
  if (__p)
  {
    operator delete(__p);
    if (!v17)
    {
LABEL_3:
      if (!v16)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (!v17)
  {
    goto LABEL_3;
  }

  operator delete(v17);
  if (!v16)
  {
LABEL_4:
    if (v15)
    {
LABEL_10:
      operator delete(v15);
      _Unwind_Resume(exception_object);
    }

LABEL_9:
    _Unwind_Resume(exception_object);
  }

LABEL_8:
  operator delete(v16);
  if (v15)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

uint64_t absl::lts_20240722::log_internal::LogMessage::operator<<<std::__iom_t5,0>(uint64_t a1, int *a2)
{
  absl::lts_20240722::log_internal::LogMessage::OstreamView::OstreamView(v6, *(a1 + 8));
  v4 = absl::lts_20240722::log_internal::LogMessage::OstreamView::stream(v6);
  *(v4 + *(*v4 - 24) + 16) = *a2;
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(v6);
  return a1;
}

void sub_23CBB9234(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(va);
  _Unwind_Resume(a1);
}

void operations_research::glop::ForcingAndImpliedFreeConstraintPreprocessor::RecoverSolution(operations_research::glop::ForcingAndImpliedFreeConstraintPreprocessor *this, operations_research::glop::ProblemSolution *a2)
{
  if (a2)
  {
    operations_research::glop::ColumnDeletionHelper::RestoreDeletedColumns((this + 104), a2);
    operations_research::glop::RowDeletionHelper::RestoreDeletedRows((this + 176), a2);
    if (*(this + 14) >= 1)
    {
      v5 = 0;
      v6 = (this + 264);
      do
      {
        if (v5 < *(this + 28) && ((*(*(this + 13) + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v5) & 1) != 0)
        {
          v7 = *(this + 31);
          if (v7 > 1)
          {
            v8 = 0;
            _X9 = *v6;
            __asm { PRFM            #4, [X9] }

            v14 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v5) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v5));
            v4.n128_u64[0] = vdup_n_s8(v14 & 0x7F);
            v15 = ((v14 >> 7) ^ (*v6 >> 12)) & v7;
            v16 = *(*v6 + v15);
            v17 = vceq_s8(v16, v4.n128_u64[0]);
            if (!v17)
            {
              goto LABEL_14;
            }

LABEL_11:
            v18 = *(this + 34);
            while (1)
            {
              v19 = (v15 + (__clz(__rbit64(v17)) >> 3)) & v7;
              if (v5 == *(v18 + 8 * v19))
              {
                break;
              }

              v17 &= ((v17 & 0x8080808080808080) - 1) & 0x8080808080808080;
              if (!v17)
              {
LABEL_14:
                while (!*&vceq_s8(v16, 0x8080808080808080))
                {
                  v8 += 8;
                  v15 = (v8 + v15) & v7;
                  v16 = *(_X9 + v15);
                  v17 = vceq_s8(v16, v4.n128_u64[0]);
                  if (v17)
                  {
                    goto LABEL_11;
                  }
                }

LABEL_33:
                absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v32, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 230);
                absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v32);
              }
            }

            v20 = v18 + 8 * v19;
            if (!(_X9 + v19))
            {
              goto LABEL_33;
            }
          }

          else
          {
            if (*(this + 32) < 2uLL)
            {
              goto LABEL_33;
            }

            v20 = *v6;
            _ZF = v5 == v20;
            if (v5 == v20)
            {
              v20 = this + 264;
            }

            v22 = &absl::lts_20240722::container_internal::kSooControl;
            if (!_ZF)
            {
              v22 = 0;
            }

            if (!v22)
            {
              goto LABEL_33;
            }
          }

          v23 = *(this + 39) + *(v20 + 4);
          v24 = (*(*(this + 36) + 8 * (v23 / 0x55)) + 48 * (v23 % 0x55));
          v25 = v24[1];
          if (v25 >= 1)
          {
            v26 = v24[3];
            v27 = v24[4];
            v28 = -1;
            do
            {
              v30 = *v26++;
              v29 = v30;
              if (v30 < *(this + 46) && ((*(*(this + 22) + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v29) & 1) != 0)
              {
                v31 = *v27;
                v28 = v29;
              }

              ++v27;
              --v25;
            }

            while (v25);
            if (v28 != -1)
            {
              operator new();
            }
          }
        }

        ++v5;
      }

      while (v5 != (*(this + 14) & 0x7FFFFFFFLL));
    }
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v32, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 1291, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v32, "solution", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v32, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v32);
  }
}

void sub_23CBB9918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (v13)
  {
    v14 = a1;
    operator delete(v13);
    a1 = v14;
  }

  _Unwind_Resume(a1);
}

uint64_t operations_research::glop::ImpliedFreePreprocessor::Run(operations_research::glop::ImpliedFreePreprocessor *this, operations_research::glop::LinearProgram *a2)
{
  if (a2)
  {
    if (*(*(this + 2) + 33) == 1)
    {
      v3 = *(a2 + 6);
      if (v3)
      {
        if ((v3 & 0x80000000) == 0)
        {
          operator new();
        }

        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      v4 = (*(a2 + 1) - *a2) >> 4;
      v5 = 0xAAAAAAAAAAAAAAABLL * v4;
      if (-1431655765 * v4 >= 1)
      {
        v6 = 0;
        do
        {
          v7 = 8 * v6;
          v8 = *(*(a2 + 20) + v7);
          v9 = *(*(a2 + 23) + v7);
          SparseColumn = operations_research::glop::LinearProgram::GetSparseColumn(a2, v6);
          v11 = SparseColumn[1];
          if (v11 >= 1)
          {
            v12 = SparseColumn[3];
            v13 = SparseColumn[4];
            do
            {
              v14 = v8 * *v13;
              if (*v13 >= 0.0)
              {
                v15 = v9 * *v13;
              }

              else
              {
                v15 = v8 * *v13;
              }

              if (*v13 < 0.0)
              {
                v14 = v9 * *v13;
              }

              v16 = *v12;
              v17 = 24 * *v12;
              if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
              {
                v18 = *(24 * *v12 + 8);
                if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                {
                  v19 = v14 + *(24 * *v12 + 0x10);
                  *(24 * *v12 + 8) = v18 + v19;
                  *(v17 + 16) = v19 + v18 - (v18 + v19);
                }
              }

              else
              {
                ++*v17;
                v16 = *v12;
              }

              v20 = 24 * v16;
              if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
              {
                ++*v20;
              }

              else
              {
                v21 = *(v20 + 8);
                if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                {
                  v22 = v15 + *(v20 + 16);
                  *(v20 + 8) = v21 + v22;
                  *(v20 + 16) = v22 + v21 - (v21 + v22);
                }
              }

              ++v13;
              ++v12;
              --v11;
            }

            while (v11);
          }

          ++v6;
        }

        while (v6 != (v5 & 0x7FFFFFFF));
      }

      memset(__p, 0, sizeof(__p));
      v23 = *(this + 9);
      if (*(this + 11) - v23 < v5)
      {
        if (v23)
        {
          *(this + 10) = v23;
          operator delete(v23);
          *(this + 9) = 0;
          *(this + 10) = 0;
          *(this + 11) = 0;
        }

        if ((v5 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      v24 = *(this + 10);
      v25 = v24 - v23;
      if (v24 - v23 >= v5)
      {
        v26 = v5;
      }

      else
      {
        v26 = v24 - v23;
      }

      if (v26)
      {
        memset(v23, 4, v26);
      }

      if (v5 > v25)
      {
        memset(v24, 4, v5 - v25);
      }

      *(this + 10) = &v23[v5];
      v36[0] = 0;
      std::vector<double>::assign(this + 6, v5, v36);
      if (v5 << 32)
      {
        if (!(v5 >> 60))
        {
          operator new();
        }

        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (v5 >= 1)
      {
        v27 = *(operations_research::glop::LinearProgram::GetSparseColumn(a2, 0) + 8);
        operator new();
      }

      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<operations_research::StrongInt64<operations_research::glop::EntryIndex_integer_tag_>,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>> *,false>(0, 0, v36, 0, 1);
      if (dword_2810C0178 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C0170, dword_2810C0178))
      {
        absl::lts_20240722::log_internal::LogMessage::LogMessage(v36, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 1569);
        v29 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v36, 1);
        v38[0] = 0;
        v30 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v29, v38);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v30, " free variables in the problem.", 0x1FuLL);
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(v36);
      }

      if (dword_2810C0190 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C0188, dword_2810C0190))
      {
        absl::lts_20240722::log_internal::LogMessage::LogMessage(v36, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 1570);
        v31 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v36, 1);
        v38[0] = 0;
        v32 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v31, v38);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v32, " implied free columns.", 0x16uLL);
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(v36);
      }

      if (dword_2810C01A8 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C01A0, dword_2810C01A8))
      {
        absl::lts_20240722::log_internal::LogMessage::LogMessage(v36, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 1571);
        v33 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v36, 1);
        v38[0] = 0;
        v34 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v33, v38);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v34, " variables can be fixed.", 0x18uLL);
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(v36);
      }

      if (__p[0])
      {
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(__p, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 1381, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(__p, "lp", 2uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(__p, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(__p);
  }

  return 0;
}

void sub_23CBBA6F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, void *__p)
{
  if (v18)
  {
    operator delete(v18);
    v20 = __p;
    if (!__p)
    {
LABEL_3:
      if (!v17)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v20 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  operator delete(v20);
  if (!v17)
  {
LABEL_4:
    if (!v16)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(v17);
  if (!v16)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(v16);
  _Unwind_Resume(exception_object);
}

void operations_research::glop::ImpliedFreePreprocessor::RecoverSolution(operations_research::glop::ImpliedFreePreprocessor *this, operations_research::glop::ProblemSolution *a2)
{
  if (a2)
  {
    v2 = *(a2 + 7);
    v3 = *(a2 + 8) - v2;
    if (v3 >= 1)
    {
      v4 = 0;
      v5 = *(this + 9);
      v6 = v3 & 0x7FFFFFFF;
      do
      {
        v7 = *(v5 + v4);
        if (v7 != 4)
        {
          if (*(v2 + v4) == 4)
          {
            *(v2 + v4) = v7;
          }

          *(*(a2 + 1) + 8 * v4) = *(*(this + 6) + 8 * v4) + *(*(a2 + 1) + 8 * v4);
        }

        ++v4;
      }

      while (v6 != v4);
    }
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v8, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 1578, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v8, "solution", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v8, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v8);
  }
}

uint64_t operations_research::glop::DoubletonFreeColumnPreprocessor::Run(operations_research::glop::DoubletonFreeColumnPreprocessor *this, operations_research::glop::LinearProgram *a2)
{
  if (a2)
  {
    MutableTransposeSparseMatrix = operations_research::glop::LinearProgram::GetMutableTransposeSparseMatrix(a2);
    v5 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 4);
    if (v5 >= 1)
    {
      v6 = MutableTransposeSparseMatrix;
      v7 = 0;
      v8 = v5 & 0x7FFFFFFF;
      do
      {
        v9 = (*a2 + 48 * v7);
        if (v9[1] == 2 && *(*(a2 + 20) + 8 * v7) == -INFINITY && *(*(a2 + 23) + 8 * v7) == INFINITY)
        {
          *&v46 = 0;
          memset(v48, 0, 41);
          LODWORD(v45) = v7;
          *(&v45 + 1) = *(*(a2 + 17) + 8 * v7);
          v10 = v9[1];
          if (v10 >= 1)
          {
            v11 = 0;
            v12 = 0;
            v13 = v9[3];
            v14 = v9[4];
            v15 = *(this + 20);
            do
            {
              v16 = *(v13 + 4 * v12);
              if (v16 < v15 && ((*(*(this + 9) + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v16) & 1) != 0)
              {
                break;
              }

              *(&v46 + (v11 >> 30)) = v16;
              *(&v46 + (v11 >> 29) + 8) = *(v14 + 8 * v12++);
              v11 += 0x100000000;
            }

            while (v10 != v12);
            if (v12 == 2)
            {
              v17 = *(&v46 + 1);
              v18 = v47;
              if (fabs(*(&v46 + 1)) >= fabs(v47))
              {
                v19 = v46;
              }

              else
              {
                *(&v46 + 1) = v47;
                v47 = v17;
                v19 = DWORD1(v46);
                *&v46 = __PAIR64__(v46, DWORD1(v46));
                v17 = v18;
              }

              v20 = *v6 + 48 * v19;
              v48[0] = *v20;
              *v20 = 0;
              v48[1] = *(v20 + 8);
              *(v20 + 8) = 0;
              v21 = v48[2];
              v48[2] = *(v20 + 16);
              *(v20 + 16) = v21;
              LOBYTE(v48[5]) = *(v20 + 40);
              *(v20 + 40) = 0;
              *&v48[3] = *(v20 + 24);
              *(v20 + 24) = 0;
              *(v20 + 32) = 0;
              v22 = 8 * v19;
              v23 = *(*(a2 + 8) + v22);
              v24 = *(a2 + 11);
              v25 = v23 / v17;
              v26 = *(v24 + v22) / v17;
              if (v17 >= 0.0)
              {
                v27 = *(v24 + v22) / v17;
              }

              else
              {
                v27 = v23 / v17;
              }

              if (v17 >= 0.0)
              {
                v28 = v25;
              }

              else
              {
                v28 = *(v24 + v22) / v17;
              }

              operations_research::glop::LinearProgram::SetVariableBounds(a2, v45, v28, v27);
              operations_research::glop::SparseVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::glop::VectorIterator<operations_research::glop::SparseColumnEntry>>::AddMultipleToSparseVectorInternal(v48, 0, v45, (*v6 + 48 * SDWORD1(v46)), -v47 / *(&v46 + 1), *(*(this + 2) + 256));
              v44 = v6;
              if (*(&v45 + 1) != 0.0)
              {
                v29 = v48[1];
                if (v48[1] >= 1)
                {
                  v31 = v48[4];
                  v30 = v48[3];
                  do
                  {
                    v33 = *v30++;
                    v32 = v33;
                    if (v33 != v45)
                    {
                      v34 = *(*(a2 + 17) + 8 * v32);
                      v35 = *v31 * *(&v45 + 1) / *(&v46 + 1);
                      if (vabdd_f64(v34, v35) <= *(*(this + 2) + 256))
                      {
                        v36 = 0.0;
                      }

                      else
                      {
                        v36 = v34 - v35;
                      }

                      operations_research::glop::LinearProgram::SetObjectiveCoefficient(a2, v32, v36);
                    }

                    ++v31;
                    --v29;
                  }

                  while (v29);
                }
              }

              v37 = v46;
              v6 = v44;
              if (v46 >= *(this + 20))
              {
                std::vector<BOOL>::resize(this + 72, v46 + 1, 0);
              }

              *(*(this + 9) + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
              v38 = *(this + 7);
              if (v38 >= *(this + 8))
              {
                v41 = std::vector<operations_research::glop::DoubletonFreeColumnPreprocessor::RestoreInfo>::__emplace_back_slow_path<operations_research::glop::DoubletonFreeColumnPreprocessor::RestoreInfo const&>(this + 6, &v45);
              }

              else
              {
                v39 = v45;
                v40 = v46;
                *(v38 + 32) = v47;
                *v38 = v39;
                *(v38 + 16) = v40;
                operations_research::glop::SparseVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,operations_research::glop::VectorIterator<operations_research::glop::SparseColumnEntry>>::SparseVector(v38 + 40, v48);
                v41 = v38 + 88;
                *(this + 7) = v38 + 88;
              }

              *(this + 7) = v41;
            }
          }

          v42 = v48[0];
          v48[0] = 0;
          if (v42)
          {
            MEMORY[0x23EED9440](v42, 0x1000C8077774924);
          }
        }

        ++v7;
      }

      while (v7 != v8);
    }

    if (*(this + 10))
    {
      operations_research::glop::LinearProgram::UseTransposeMatrixAsReference(a2);
      operations_research::glop::LinearProgram::DeleteRows(a2, this + 9);
      return 1;
    }
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(&v45, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 1602, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v45, "lp", 2uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(&v45, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v45);
  }

  return 0;
}

void sub_23CBBAD30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *(v15 + 56) = v16;
  if (!a15)
  {
    _Unwind_Resume(exception_object);
  }

  MEMORY[0x23EED9440](a15, 0x1000C8077774924);
  _Unwind_Resume(exception_object);
}

void operations_research::glop::DoubletonFreeColumnPreprocessor::RecoverSolution(operations_research::glop::DoubletonFreeColumnPreprocessor *this, operations_research::glop::ProblemSolution *a2)
{
  operations_research::glop::RowDeletionHelper::RestoreDeletedRows((this + 72), a2);
  v4 = *(this + 6);
  v5 = *(this + 7);
  if (v5 != v4)
  {
    v6 = *(a2 + 7);
    v7 = *(a2 + 1);
    v8 = *(this + 7);
    do
    {
      v10 = *(v8 - 88);
      v8 -= 88;
      v9 = v10;
      v11 = *(v6 + v10);
      v12 = *(v6 + v10);
      if (v11 > 2)
      {
        if (v11 == 4)
        {
          goto LABEL_15;
        }

        if (v11 == 3)
        {
          if (*(v5 - 64) <= 0.0)
          {
            v12 = 2;
          }

          else
          {
            v12 = 3;
          }

          goto LABEL_15;
        }
      }

      else
      {
        if (v11 == 1)
        {
          goto LABEL_15;
        }

        if (v11 == 2)
        {
          if (*(v5 - 64) <= 0.0)
          {
            v12 = 3;
          }

          else
          {
            v12 = 2;
          }

LABEL_15:
          *(*(a2 + 10) + *(v5 - 72)) = v12;
        }
      }

      v13 = *(v7 + 8 * v9);
      v14 = *(v5 - 40);
      if (v14 >= 1)
      {
        v15 = *(v5 - 24);
        v16 = *(v5 - 16);
        do
        {
          v18 = *v15++;
          v17 = v18;
          if (v18 != v9)
          {
            v13 = v13 + -*v16 / *(v5 - 64) * *(v7 + 8 * v17);
          }

          ++v16;
          --v14;
        }

        while (v14);
      }

      *(v7 + 8 * v9) = v13;
      if (v11)
      {
        *(v6 + v9) = 0;
        v19 = vshrq_n_s64(vshll_n_s32(*(v5 - 72), 0x20uLL), 0x1DuLL);
        *(*(a2 + 4) + v19.i64[0]) = (*(v5 - 80) - *(v5 - 56) * *(*(a2 + 4) + v19.i64[1])) / *(v5 - 64);
      }

      v5 = v8;
    }

    while (v8 != v4);
  }
}

_DWORD *operations_research::glop::UnconstrainedVariablePreprocessor::RemoveZeroCostUnconstrainedVariable(uint64_t a1, unsigned int a2, uint64_t a3, double a4)
{
  if (*(a1 + 368) == *(a1 + 376))
  {
    v8 = *(a3 + 24);
    v38 = 0;
    if (v8)
    {
      std::vector<double>::__append(a1 + 368, v8, &v38);
      v9 = *(a3 + 24);
    }

    else
    {
      v9 = 0;
    }

    v38 = 0x3FF0000000000000;
    v10 = *(a1 + 392);
    v11 = (*(a1 + 400) - v10) >> 3;
    if (v9 <= v11)
    {
      if (v9 < v11)
      {
        *(a1 + 400) = v10 + 8 * v9;
      }
    }

    else
    {
      std::vector<double>::__append(a1 + 392, v9 - v11, &v38);
    }

    std::vector<BOOL>::resize(a1 + 416, (-1431655765 * ((*(a3 + 8) - *a3) >> 4)), 0);
  }

  v36 = a2;
  v37 = a2;
  SparseColumn = operations_research::glop::LinearProgram::GetSparseColumn(a3, a2);
  v13 = SparseColumn[1];
  if (v13 >= 1)
  {
    v14 = SparseColumn[3];
    v15 = SparseColumn[4];
    if (a4 == INFINITY)
    {
      v16 = 1.0;
    }

    else
    {
      v16 = -1.0;
    }

    if (a4 == INFINITY)
    {
      v17 = -1.0;
    }

    else
    {
      v17 = 1.0;
    }

    do
    {
      v20 = *v14++;
      v19 = v20;
      if (v20 >= *(a1 + 224))
      {
        v23 = v19 << 32;
        std::vector<BOOL>::resize(a1 + 216, ((v19 << 32) + 0x100000000) >> 32, 0);
        v21 = *(a1 + 216);
        v22 = 1 << v19;
      }

      else
      {
        v21 = *(a1 + 216);
        v22 = 1 << v19;
        if ((*(v21 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) & (1 << v19)) != 0)
        {
          goto LABEL_25;
        }

        v23 = v19 << 32;
      }

      v24 = v23 >> 32;
      *(v21 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= v22;
      TransposeSparseMatrix = operations_research::glop::LinearProgram::GetTransposeSparseMatrix(a3);
      operations_research::glop::ColumnsSaver::SaveColumn((a1 + 240), v19, *TransposeSparseMatrix + 48 * v24);
LABEL_25:
      v26 = *(a1 + 392);
      if (*v15 > 0.0)
      {
        *(v26 + 8 * v19) = v17;
        v18 = (a3 + 88);
        if (a4 != INFINITY)
        {
          goto LABEL_19;
        }

LABEL_18:
        v18 = (a3 + 64);
        goto LABEL_19;
      }

      *(v26 + 8 * v19) = v16;
      v18 = (a3 + 88);
      if (a4 != INFINITY)
      {
        goto LABEL_18;
      }

LABEL_19:
      *(*(a1 + 368) + 8 * v19) = *(*v18 + 8 * v19);
      ++v15;
      --v13;
    }

    while (v13);
  }

  *(*(a1 + 416) + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
  v27 = 8 * v37;
  v28 = *(*(a3 + 160) + v27);
  v29 = *(a3 + 184);
  v30 = *(v29 + v27);
  if (fabs(v28) >= fabs(v30))
  {
    v31 = *(v29 + 8 * v37);
  }

  else
  {
    v31 = *(*(a3 + 160) + 8 * v37);
  }

  if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v31 = 0.0;
  }

  if (v31 == v30)
  {
    v32 = 3;
  }

  else
  {
    v32 = 4;
  }

  if (v31 == v28)
  {
    v33 = 2;
  }

  else
  {
    v33 = v32;
  }

  if (v28 == v30)
  {
    v34 = 1;
  }

  else
  {
    v34 = v33;
  }

  return operations_research::glop::ColumnDeletionHelper::MarkColumnForDeletionWithState((a1 + 144), v36, v34, v31);
}

BOOL operations_research::glop::UnconstrainedVariablePreprocessor::Run(operations_research::glop::UnconstrainedVariablePreprocessor *this, operations_research::glop::LinearProgram *a2)
{
  if (!a2)
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v175, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 1827, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v175, "lp", 2uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v175, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v175);
    return 0;
  }

  v2 = a2;
  v162 = *(*(this + 2) + 200);
  v4 = *(a2 + 6);
  v175[0] = 0xFFF0000000000000;
  std::vector<double>::assign(this + 6, v4, v175);
  std::vector<double>::assign(this + 9, v4, &operations_research::glop::kInfinity);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = *(v2 + 8);
    v7 = *(v2 + 11);
    do
    {
      if (*(v6 + v5) == -INFINITY)
      {
        *(*(this + 9) + v5) = 0;
      }

      if (*(v7 + v5) == INFINITY)
      {
        *(*(this + 6) + v5) = 0;
      }

      v5 += 8;
    }

    while (8 * v4 != v5);
  }

  v8 = (*(v2 + 1) - *v2) >> 4;
  v9 = -1431655765 * v8;
  LOBYTE(v175[0]) = 0;
  v10 = 0xAAAAAAAB00000000 * v8;
  v11 = -1431655765 * v8;
  std::vector<BOOL>::assign(this + 120, v11, v175);
  LOBYTE(v175[0]) = 0;
  std::vector<BOOL>::assign(this + 96, v11, v175);
  v176 = 0u;
  v177 = 0u;
  *v175 = 0u;
  __p = 0;
  v173 = 0;
  v174 = 0;
  if (v10)
  {
    if ((v11 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (v9 <= 0)
  {
    v15 = *(&v177 + 1);
  }

  else
  {
    v12 = 0;
    v13 = v175[1];
    v14 = v176;
    v15 = *(&v177 + 1);
    v16 = v177;
    do
    {
      if (v14 == v13)
      {
        v17 = 0;
      }

      else
      {
        v17 = ((v14 - v13) << 7) - 1;
      }

      v18 = v15 + v16;
      if (v17 == v15 + v16)
      {
        std::deque<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>::__add_back_capacity(v175);
        v13 = v175[1];
        v14 = v176;
        v15 = *(&v177 + 1);
        v16 = v177;
        v18 = v177 + *(&v177 + 1);
      }

      *(*&v13[(v18 >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * (v18 & 0x3FF)) = v12;
      *(&v177 + 1) = ++v15;
      ++v12;
    }

    while (v9 != v12);
  }

  if (!v15 || (v168 = 5 * v9, 5 * v9 < 1))
  {
LABEL_214:
    if (*(this + 19) >= 1)
    {
      v133 = 0;
      v134 = *(this + 19) & 0x7FFFFFFFLL;
      do
      {
        if (v133 < *(this + 38) && ((*(*(this + 18) + ((v133 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v133) & 1) != 0)
        {
          v135 = *(*(this + 21) + 8 * v133);
          SparseColumn = operations_research::glop::LinearProgram::GetSparseColumn(v2, v133);
          v137 = SparseColumn[1];
          if (v137 >= 1)
          {
            v138 = SparseColumn[3];
            v139 = SparseColumn[4];
            v140 = *(v2 + 8);
            v141 = *(v2 + 11);
            do
            {
              v142 = *v139++;
              v143 = v135 * v142;
              LODWORD(v142) = *v138++;
              v144 = 8 * SLODWORD(v142);
              *(v140 + v144) = *(v140 + v144) - v143;
              *(v141 + v144) = *(v141 + v144) - v143;
              --v137;
            }

            while (v137);
          }

          operations_research::glop::LinearProgram::SetObjectiveOffset(v2, *(v2 + 49) + *(*(v2 + 17) + 8 * v133) * v135);
        }

        ++v133;
      }

      while (v133 != v134);
    }

    operations_research::glop::LinearProgram::DeleteColumns(v2, this + 144);
    operations_research::glop::LinearProgram::DeleteRows(v2, this + 27);
    if (*(this + 19))
    {
      v145 = 1;
    }

    else
    {
      v145 = *(this + 28) != 0;
    }

    goto LABEL_226;
  }

  v19 = 0;
  v20 = 0;
  v169 = 0;
  v161 = -v162;
  v159 = v2;
  while (1)
  {
    v22 = *(*(v175[1] + ((v177 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v177 & 0x3FF));
    v171 = v22;
    *&v177 = v177 + 1;
    *(&v177 + 1) = v15 - 1;
    if (v177 >= 0x800)
    {
      operator delete(*v175[1]);
      v175[1] = v175[1] + 8;
      *&v177 = v177 - 1024;
      v22 = v171;
    }

    v23 = v22 >> 6;
    *(__p + v23) &= ~(1 << v22);
    if (v22 >= *(this + 38) || (*(*(this + 18) + 8 * v23) & (1 << v22)) == 0)
    {
      break;
    }

LABEL_24:
    ++v19;
    v15 = *(&v177 + 1);
    if (*(&v177 + 1))
    {
      v21 = v19 < v168;
    }

    else
    {
      v21 = 0;
    }

    if (!v21)
    {
      goto LABEL_214;
    }
  }

  v24 = operations_research::glop::LinearProgram::GetSparseColumn(v2, v22);
  ObjectiveCoefficientForMinimizationVersion = operations_research::glop::LinearProgram::GetObjectiveCoefficientForMinimizationVersion(v2, v171);
  v26 = v171;
  v27 = 8 * v171;
  v28 = *(*(v2 + 20) + v27);
  v29 = *(*(v2 + 23) + v27);
  v30 = (*&ObjectiveCoefficientForMinimizationVersion & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL;
  if ((*&ObjectiveCoefficientForMinimizationVersion & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v31 = 0.0;
  }

  else
  {
    v31 = ObjectiveCoefficientForMinimizationVersion + 0.0;
  }

  v32 = v24[1];
  if (v32 >= 1)
  {
    v33 = v24[3];
    v34 = v24[4];
    v35 = ObjectiveCoefficientForMinimizationVersion + 0.0 + 0.0 - (ObjectiveCoefficientForMinimizationVersion + 0.0);
    if ((*&ObjectiveCoefficientForMinimizationVersion & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v35 = 0.0;
    }

    v36 = v31;
    v37 = v35;
    v38 = (*&ObjectiveCoefficientForMinimizationVersion & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL;
    while (1)
    {
      v40 = *v33++;
      v39 = v40;
      if (v40 >= *(this + 56) || ((*(*(this + 27) + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
      {
        v41 = -*v34;
        v42 = 8 * v39;
        if (*v34 <= 0.0)
        {
          if (COERCE__INT64(fabs(*(*(this + 6) + v42) * v41)) < 0x7FF0000000000000)
          {
            if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              v46 = v35 + *(*(this + 6) + v42) * v41;
              v47 = v31 + v46;
              v35 = v46 + v31 - (v31 + v46);
              v31 = v47;
            }
          }

          else
          {
            ++v30;
          }

          v45 = *(*(this + 9) + v42) * v41;
          if ((*&v45 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
          {
LABEL_56:
            if ((*&v36 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              v48 = v37 + v45;
              v49 = v36 + v48;
              v37 = v48 + v36 - (v36 + v48);
              v36 = v49;
            }

            goto LABEL_41;
          }
        }

        else
        {
          if (COERCE__INT64(fabs(*(*(this + 9) + v42) * v41)) < 0x7FF0000000000000)
          {
            if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              v43 = v35 + *(*(this + 9) + v42) * v41;
              v44 = v31 + v43;
              v35 = v43 + v31 - (v31 + v43);
              v31 = v44;
            }
          }

          else
          {
            ++v30;
          }

          v45 = *(*(this + 6) + v42) * v41;
          if ((*&v45 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
          {
            goto LABEL_56;
          }
        }

        ++v38;
      }

LABEL_41:
      ++v34;
      if (!--v32)
      {
        goto LABEL_59;
      }
    }
  }

  v38 = (*&ObjectiveCoefficientForMinimizationVersion & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL;
  v36 = v31;
LABEL_59:
  if (v38 >= 1)
  {
    v50 = INFINITY;
  }

  else
  {
    v50 = v36;
  }

  if (v50 > v162)
  {
    v51 = v30 < 1;
    if (v30 >= 1)
    {
      v52 = -INFINITY;
    }

    else
    {
      v52 = v31;
    }

    if (v52 < v161)
    {
      goto LABEL_89;
    }

LABEL_67:
    v53 = v28;
    if (*(this + 24) == 1)
    {
      v54 = v20;
      v55 = v51;
      IsVariableInteger = operations_research::glop::LinearProgram::IsVariableInteger(v2, v26);
      v53 = v28;
      v51 = v55;
      v20 = v54;
      if (IsVariableInteger)
      {
        v53 = ceil(v28 + -0.0001);
      }
    }

    v57 = v31 >= 0.0001 && v51;
    v26 = v171;
    if (((*(*(this + 15) + ((v171 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v171) & 1) == 0)
    {
      goto LABEL_174;
    }

LABEL_89:
    if (v28 != -INFINITY && v29 != INFINITY)
    {
      goto LABEL_24;
    }

    if (*(this + 24))
    {
      goto LABEL_24;
    }

    v60 = v24[1];
    if (v60 < 1)
    {
      goto LABEL_24;
    }

    v158 = v19;
    v61 = v24[3];
    v62 = v24[4];
    if (v38 <= 1)
    {
      v63 = v36;
    }

    else
    {
      v63 = INFINITY;
    }

    if (v30 <= 1)
    {
      v64 = v31;
    }

    else
    {
      v64 = -INFINITY;
    }

    v65 = v20;
    v160 = v51;
    while (1)
    {
      v67 = *v61++;
      v66 = v67;
      if (v67 < *(this + 56) && ((*(*(this + 27) + ((v66 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v66) & 1) != 0)
      {
        goto LABEL_101;
      }

      v68 = *v62;
      v69 = -*v62;
      if (v29 != INFINITY)
      {
        goto LABEL_127;
      }

      if (v68 <= 0.0)
      {
        v81 = *(*(this + 9) + 8 * v66) * v69;
        v82 = fabs(v81);
        v83 = v36 - v81;
        v84 = INFINITY;
        if (v38 < 1)
        {
          v84 = v83;
        }

        v85 = v84 + v82 * 1.0e-12;
        if (*&v82 >= 0x7FF0000000000000)
        {
          v85 = v63;
        }

        v86 = v85 / v68;
        v87 = *(this + 6);
        if (v86 <= *(v87 + 8 * v66))
        {
          goto LABEL_127;
        }

        *(v87 + 8 * v66) = v86;
        *(*(this + 15) + ((v171 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v171;
        if (v65 < v169)
        {
LABEL_126:
          *v65 = v66;
          v65 += 4;
LABEL_127:
          if (v28 != -INFINITY)
          {
            goto LABEL_101;
          }

          goto LABEL_128;
        }

        v77 = v65 - v20;
        v78 = (v65 - v20) >> 2;
        v106 = v78 + 1;
        __src = v20;
        if ((v78 + 1) >> 62)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        if ((v169 - v20) >> 1 > v106)
        {
          v106 = (v169 - v20) >> 1;
        }

        if (v169 - v20 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v80 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v80 = v106;
        }

        v163 = v61;
        if (v80)
        {
          if (!(v80 >> 62))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }
      }

      else
      {
        v70 = *(*(this + 6) + 8 * v66) * v69;
        v71 = fabs(v70);
        v72 = v36 - v70;
        v73 = INFINITY;
        if (v38 < 1)
        {
          v73 = v72;
        }

        v74 = v73 + v71 * 1.0e-12;
        if (*&v71 >= 0x7FF0000000000000)
        {
          v74 = v63;
        }

        v75 = v74 / v68;
        v76 = *(this + 9);
        if (v75 >= *(v76 + 8 * v66))
        {
          goto LABEL_127;
        }

        *(v76 + 8 * v66) = v75;
        *(*(this + 15) + ((v171 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v171;
        if (v65 < v169)
        {
          goto LABEL_126;
        }

        v77 = v65 - v20;
        v78 = (v65 - v20) >> 2;
        v79 = v78 + 1;
        __src = v20;
        if ((v78 + 1) >> 62)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        if ((v169 - v20) >> 1 > v79)
        {
          v79 = (v169 - v20) >> 1;
        }

        if (v169 - v20 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v80 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v80 = v79;
        }

        v163 = v61;
        if (v80)
        {
          if (!(v80 >> 62))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }
      }

      v20 = 0;
      v108 = (4 * v78);
      v169 = 4 * v80;
      *v108 = v66;
      v65 = (v108 + 1);
      memcpy(0, __src, v77);
      v51 = v160;
      v61 = v163;
      if (v28 != -INFINITY)
      {
        goto LABEL_101;
      }

LABEL_128:
      if (v68 <= 0.0)
      {
        v99 = *(*(this + 6) + 8 * v66) * v69;
        v100 = fabs(v99);
        v101 = v31 - v99;
        v102 = -INFINITY;
        if (v51)
        {
          v102 = v101;
        }

        v103 = v102 + v100 * -1.0e-12;
        if (*&v100 >= 0x7FF0000000000000)
        {
          v103 = v64;
        }

        v104 = v103 / v68;
        v105 = *(this + 9);
        if (v104 >= *(v105 + 8 * v66))
        {
          goto LABEL_101;
        }

        *(v105 + 8 * v66) = v104;
        *(*(this + 12) + ((v171 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v171;
        if (v65 >= v169)
        {
          v95 = v65 - v20;
          v96 = (v65 - v20) >> 2;
          v107 = v96 + 1;
          __srca = v20;
          if ((v96 + 1) >> 62)
          {
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          if ((v169 - v20) >> 1 > v107)
          {
            v107 = (v169 - v20) >> 1;
          }

          if (v169 - v20 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v98 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v98 = v107;
          }

          v164 = v61;
          if (v98)
          {
            if (!(v98 >> 62))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          goto LABEL_171;
        }
      }

      else
      {
        v88 = *(*(this + 9) + 8 * v66) * v69;
        v89 = fabs(v88);
        v90 = v31 - v88;
        v91 = -INFINITY;
        if (v51)
        {
          v91 = v90;
        }

        v92 = v91 + v89 * -1.0e-12;
        if (*&v89 >= 0x7FF0000000000000)
        {
          v92 = v64;
        }

        v93 = v92 / v68;
        v94 = *(this + 6);
        if (v93 <= *(v94 + 8 * v66))
        {
          goto LABEL_101;
        }

        *(v94 + 8 * v66) = v93;
        *(*(this + 12) + ((v171 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v171;
        if (v65 >= v169)
        {
          v95 = v65 - v20;
          v96 = (v65 - v20) >> 2;
          v97 = v96 + 1;
          __srca = v20;
          if ((v96 + 1) >> 62)
          {
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          if ((v169 - v20) >> 1 > v97)
          {
            v97 = (v169 - v20) >> 1;
          }

          if (v169 - v20 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v98 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v98 = v97;
          }

          v164 = v61;
          if (v98)
          {
            if (!(v98 >> 62))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

LABEL_171:
          v20 = 0;
          v169 = 4 * v98;
          *(4 * v96) = v66;
          v65 = (4 * v96 + 4);
          memcpy(0, __srca, v95);
          v51 = v160;
          v61 = v164;
          goto LABEL_101;
        }
      }

      *v65 = v66;
      v65 += 4;
LABEL_101:
      ++v62;
      if (!--v60)
      {
        if (v20 == v65)
        {
          v2 = v159;
          v19 = v158;
        }

        else
        {
          TransposeSparseMatrix = operations_research::glop::LinearProgram::GetTransposeSparseMatrix(v159);
          __srcb = v20;
          v120 = v20;
          do
          {
            v121 = *TransposeSparseMatrix + 48 * *v120;
            v122 = *(v121 + 8);
            if (v122 >= 1)
            {
              v123 = *(v121 + 24);
              v124 = __p;
              do
              {
                v126 = *v123++;
                v125 = v126;
                v127 = v126 >> 6;
                v128 = 1 << v126;
                if (((1 << v126) & v124[v127]) == 0)
                {
                  v129 = v175[1];
                  if (v176 == v175[1])
                  {
                    v130 = 0;
                  }

                  else
                  {
                    v130 = ((v176 - v175[1]) << 7) - 1;
                  }

                  v131 = *(&v177 + 1);
                  v132 = *(&v177 + 1) + v177;
                  if (v130 == *(&v177 + 1) + v177)
                  {
                    std::deque<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>>::__add_back_capacity(v175);
                    v131 = *(&v177 + 1);
                    v129 = v175[1];
                    v132 = v177 + *(&v177 + 1);
                    v124 = __p;
                  }

                  *(*&v129[(v132 >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * (v132 & 0x3FF)) = v125;
                  *(&v177 + 1) = v131 + 1;
                  v124[v127] |= v128;
                }

                --v122;
              }

              while (v122);
            }

            v120 += 4;
          }

          while (v120 != v65);
          v20 = __srcb;
          v2 = v159;
          v19 = v158;
        }

        goto LABEL_24;
      }
    }
  }

  v53 = v29;
  if (*(this + 24) == 1)
  {
    v53 = v29;
    if (operations_research::glop::LinearProgram::IsVariableInteger(v2, v171))
    {
      v53 = floor(v29 + 0.0001);
    }
  }

  v57 = v36 <= -0.0001 && v38 < 1;
  v26 = v171;
  v59 = (1 << v171) & *(*(this + 12) + ((v171 >> 3) & 0x1FFFFFFFFFFFFFF8));
  v51 = v30 < 1;
  if (v30 >= 1)
  {
    v52 = -INFINITY;
  }

  else
  {
    v52 = v31;
  }

  if (v52 >= v161)
  {
    if (!v59 && (*&v53 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      goto LABEL_174;
    }

    goto LABEL_67;
  }

  if (v59)
  {
    goto LABEL_89;
  }

LABEL_174:
  if ((*&v53 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v28 == v29)
    {
      v118 = 1;
    }

    else if (v53 == v28)
    {
      v118 = 2;
    }

    else if (v53 == v29)
    {
      v118 = 3;
    }

    else
    {
      v118 = 4;
    }

    operations_research::glop::ColumnDeletionHelper::MarkColumnForDeletionWithState(this + 36, v26, v118, v53);
    goto LABEL_24;
  }

  if (!v57)
  {
    if (ObjectiveCoefficientForMinimizationVersion == 0.0)
    {
      v109 = v24[1];
      if (v109 < 1)
      {
LABEL_188:
        if ((*(this + 24) & 1) == 0)
        {
          operations_research::glop::UnconstrainedVariablePreprocessor::RemoveZeroCostUnconstrainedVariable(this, v26, v2, v53);
        }
      }

      else
      {
        v110 = v24[3];
        v111 = v24[4];
        while (1)
        {
          v112 = *v111;
          if (v53 != INFINITY)
          {
            v112 = -*v111;
          }

          v113 = *v110++;
          v114 = 8 * v113;
          v115 = v112 <= 0.0;
          if (v112 <= 0.0)
          {
            v116 = *(v2 + 8);
          }

          else
          {
            v116 = *(v2 + 11);
          }

          v117 = -INFINITY;
          if (!v115)
          {
            v117 = INFINITY;
          }

          if (*(v116 + v114) != v117)
          {
            break;
          }

          ++v111;
          if (!--v109)
          {
            goto LABEL_188;
          }
        }
      }
    }

    goto LABEL_24;
  }

  if (dword_27E25CE98 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::glop::UnconstrainedVariablePreprocessor::Run(operations_research::glop::LinearProgram *)::$_0::operator() const(void)::site, dword_27E25CE98))
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v170, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 1942);
    v153 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v170, 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v153, "Problem INFEASIBLE_OR_UNBOUNDED, variable ", 0x2AuLL);
    v154 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,0>(v153, &v171);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v154, " can move to ", 0xDuLL);
    v178[0] = v53;
    v155 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v154, v178);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v155, " and its reduced cost is in [", 0x1DuLL);
    v178[0] = v52;
    v156 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v155, v178);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v156, ", ", 2uLL);
    v178[0] = v50;
    v157 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v156, v178);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v157, "]", 1uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v170);
  }

  v145 = 0;
  *(this + 8) = 3;
LABEL_226:
  if (__p)
  {
    operator delete(__p);
  }

  v146 = v175[1];
  v147 = v176;
  *(&v177 + 1) = 0;
  v148 = (v176 - v175[1]) >> 3;
  if (v148 >= 3)
  {
    do
    {
      operator delete(*v146);
      v147 = v176;
      v146 = (v175[1] + 8);
      v175[1] = v146;
      v148 = (v176 - v146) >> 3;
    }

    while (v148 > 2);
  }

  if (v148 == 1)
  {
    v149 = 512;
LABEL_235:
    *&v177 = v149;
  }

  else if (v148 == 2)
  {
    v149 = 1024;
    goto LABEL_235;
  }

  if (v146 != v147)
  {
    do
    {
      v150 = *v146++;
      operator delete(v150);
    }

    while (v146 != v147);
    v151 = v176;
    if (v176 != v175[1])
    {
      do
      {
        v151 -= 8;
      }

      while (v151 != v175[1]);
      *&v176 = v151;
    }
  }

  if (v175[0])
  {
    operator delete(v175[0]);
  }

  return v145;
}

void sub_23CBBC2A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, char a25)
{
  if (v25)
  {
    operator delete(v25);
    v27 = __p;
    if (!__p)
    {
LABEL_3:
      std::deque<int>::~deque[abi:ne200100](&a25);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v27 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  operator delete(v27);
  std::deque<int>::~deque[abi:ne200100](&a25);
  _Unwind_Resume(a1);
}

void operations_research::glop::UnconstrainedVariablePreprocessor::RecoverSolution(operations_research::glop::UnconstrainedVariablePreprocessor *this, operations_research::glop::ProblemSolution *a2)
{
  if (a2)
  {
    operations_research::glop::ColumnDeletionHelper::RestoreDeletedColumns((this + 144), a2);
    operations_research::glop::RowDeletionHelper::RestoreDeletedRows((this + 216), a2);
    v5 = *(a2 + 5) - *(a2 + 4);
    if (((v5 << 29) & 0xFFFFFFFF00000000) != 0)
    {
      if (!((v5 >> 3) >> 62))
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    if ((v5 >> 3) >= 1)
    {
      v6 = 0;
      v7 = (this + 304);
      v8 = (v5 >> 3) & 0x7FFFFFFF;
      do
      {
        if (v6 < *(this + 56) && ((*(*(this + 27) + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v6) & 1) != 0)
        {
          v9 = *(this + 36);
          if (v9 > 1)
          {
            v10 = 0;
            _X9 = *v7;
            __asm { PRFM            #4, [X9] }

            v16 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v6) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v6));
            v4.n128_u64[0] = vdup_n_s8(v16 & 0x7F);
            v17 = ((v16 >> 7) ^ (*v7 >> 12)) & v9;
            v18 = *(*v7 + v17);
            v19 = vceq_s8(v18, v4.n128_u64[0]);
            if (!v19)
            {
              goto LABEL_16;
            }

LABEL_13:
            v20 = *(this + 39);
            while (1)
            {
              v21 = (v17 + (__clz(__rbit64(v19)) >> 3)) & v9;
              if (v6 == *(v20 + 8 * v21))
              {
                break;
              }

              v19 &= ((v19 & 0x8080808080808080) - 1) & 0x8080808080808080;
              if (!v19)
              {
LABEL_16:
                while (!*&vceq_s8(v18, 0x8080808080808080))
                {
                  v10 += 8;
                  v17 = (v10 + v17) & v9;
                  v18 = *(_X9 + v17);
                  v19 = vceq_s8(v18, v4.n128_u64[0]);
                  if (v19)
                  {
                    goto LABEL_13;
                  }
                }

LABEL_36:
                absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v34, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 230);
                absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v34);
              }
            }

            v22 = v20 + 8 * v21;
            if (!(_X9 + v21))
            {
              goto LABEL_36;
            }
          }

          else
          {
            if (*(this + 37) < 2uLL)
            {
              goto LABEL_36;
            }

            v22 = *v7;
            _ZF = v6 == v22;
            if (v6 == v22)
            {
              v22 = this + 304;
            }

            v24 = &absl::lts_20240722::container_internal::kSooControl;
            if (!_ZF)
            {
              v24 = 0;
            }

            if (!v24)
            {
              goto LABEL_36;
            }
          }

          v25 = *(this + 44) + *(v22 + 4);
          v26 = (*(*(this + 41) + 8 * (v25 / 0x55)) + 48 * (v25 % 0x55));
          v27 = v26[1];
          if (v27 >= 1)
          {
            v28 = v26[3];
            v29 = v26[4];
            v30 = -1;
            do
            {
              v32 = *v28++;
              v31 = v32;
              if ((*(*(this + 52) + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v32))
              {
                v33 = *v29;
                v30 = v31;
              }

              ++v29;
              --v27;
            }

            while (v27);
            if (v30 != -1)
            {
              operator new();
            }
          }
        }

        ++v6;
      }

      while (v6 != v8);
    }

    std::__introsort<std::_ClassicAlgPolicy,operations_research::glop::UnconstrainedVariablePreprocessor::RecoverSolution(operations_research::glop::ProblemSolution *)::$_0 &,operations_research::glop::UnconstrainedVariablePreprocessor::RecoverSolution(operations_research::glop::ProblemSolution *)::DeletionEntry *,false>(0, 0, 0, 1, v4);
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v34, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 2072, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v34, "solution", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v34, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v34);
  }
}

void sub_23CBBCB3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, char a13)
{
  if (__p)
  {
    operator delete(__p);
    if (!v13)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v13)
  {
    goto LABEL_3;
  }

  operator delete(v13);
  _Unwind_Resume(exception_object);
}

BOOL operations_research::glop::FreeConstraintPreprocessor::Run(operations_research::glop::FreeConstraintPreprocessor *this, operations_research::glop::LinearProgram *a2)
{
  if (a2)
  {
    v4 = *(a2 + 6);
    if (v4 >= 1)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*(*(a2 + 8) + 8 * i) == -INFINITY && *(*(a2 + 11) + 8 * i) == INFINITY)
        {
          if (i >= *(this + 14))
          {
            std::vector<BOOL>::resize(this + 48, i + 1, 0);
          }

          *(*(this + 6) + ((i >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << i;
        }
      }
    }

    operations_research::glop::LinearProgram::DeleteRows(a2, this + 6);
    return *(this + 7) != 0;
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v8, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 2164, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v8, "lp", 2uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v8, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v8);
    return 0;
  }
}

void operations_research::glop::FreeConstraintPreprocessor::RecoverSolution(operations_research::glop::FreeConstraintPreprocessor *this, operations_research::glop::ProblemSolution *a2)
{
  if (a2)
  {
    v2 = (this + 48);

    operations_research::glop::RowDeletionHelper::RestoreDeletedRows(v2, a2);
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v3, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 2180, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v3, "solution", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v3, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v3);
  }
}

BOOL operations_research::glop::EmptyConstraintPreprocessor::Run(operations_research::glop::EmptyConstraintPreprocessor *this, operations_research::glop::LinearProgram *a2)
{
  if (a2)
  {
    v4 = *(a2 + 6);
    if (v4)
    {
      if ((v4 & 0x80000000) == 0)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v5 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 4);
    if (v5 >= 1)
    {
      v6 = 0;
      v7 = v5 & 0x7FFFFFFF;
      do
      {
        SparseColumn = operations_research::glop::LinearProgram::GetSparseColumn(a2, v6);
        v9 = *(SparseColumn + 8);
        if (v9 >= 1)
        {
          v10 = *(SparseColumn + 24);
          do
          {
            v11 = *v10++;
            ++*(4 * v11);
            --v9;
          }

          while (v9);
        }

        ++v6;
      }

      while (v6 != v7);
    }

    v14 = 0;
    operations_research::glop::LinearProgram::DeleteRows(a2, this + 6);
    return *(this + 7) != 0;
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v15, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 2190, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v15, "lp", 2uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v15, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v15);
    return 0;
  }
}

void operations_research::glop::EmptyConstraintPreprocessor::RecoverSolution(operations_research::glop::EmptyConstraintPreprocessor *this, operations_research::glop::ProblemSolution *a2)
{
  if (a2)
  {
    v2 = (this + 48);

    operations_research::glop::RowDeletionHelper::RestoreDeletedRows(v2, a2);
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v3, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 2228, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v3, "solution", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v3, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v3);
  }
}

void operations_research::glop::SingletonUndo::Undo(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v5 = *a1;
  if (*a1 > 1)
  {
    if (v5 == 2)
    {
      operations_research::glop::SingletonUndo::ZeroCostSingletonColumnUndo(a1, a2, a4, a5);
      v10 = *(a1 + 8);
      *(a5[4] + 8 * v10) = *(a1 + 24) / *(a1 + 16) + *(a5[4] + 8 * v10);
      v11 = a5[10];
      if (!*(v11 + v10))
      {
        *(a5[7] + *(a1 + 12)) = 0;
        *(v11 + v10) = 1;
      }
    }

    else if (v5 == 3)
    {
      v6 = *(a1 + 8);
      v7 = a5[10];
      if (*(v7 + v6) == 1)
      {
        *(v7 + v6) = *(a1 + 64);
      }
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {

      operations_research::glop::SingletonUndo::SingletonRowUndo(a1, a3, a5);
    }
  }

  else
  {

    operations_research::glop::SingletonUndo::ZeroCostSingletonColumnUndo(a1, a2, a4, a5);
  }
}

uint64_t operations_research::glop::SingletonUndo::SingletonRowUndo(uint64_t result, void *a2, void *a3)
{
  v3 = *(result + 12);
  v4 = a3[7];
  v5 = *(v4 + v3);
  if ((v5 & 0xFFFFFFFB) == 0)
  {
    return result;
  }

  v6 = *(result + 16);
  v7 = *(result + 48) / v6;
  v8 = *(result + 56) / v6;
  if (v6 >= 0.0)
  {
    v9 = *(result + 48) / v6;
  }

  else
  {
    v9 = *(result + 56) / v6;
  }

  if (v6 >= 0.0)
  {
    v10 = *(result + 56) / v6;
  }

  else
  {
    v10 = *(result + 48) / v6;
  }

  v11 = v5 != 2;
  v12 = *(result + 32);
  v13 = *(result + 40);
  v14 = v9 > v12;
  if (v9 > v12)
  {
    v11 = 1;
  }

  v15 = v5 != 3;
  if (v10 < v13)
  {
    v14 = 1;
    v15 = 1;
  }

  v16 = !v14 || !v11;
  if (v16 || !v15)
  {
    return result;
  }

  v18 = a2[1];
  if (v18 < 1)
  {
    v22 = 0.0;
  }

  else
  {
    v19 = a2[4];
    v20 = a3[4];
    if (v18 == 1)
    {
      v21 = 0;
      v22 = 0.0;
    }

    else
    {
      v21 = v18 & 0x7FFFFFFFFFFFFFFELL;
      v23 = (v19 + 8);
      v22 = 0.0;
      v24 = v18 & 0x7FFFFFFFFFFFFFFELL;
      v25 = a2[3];
      do
      {
        v26 = *v25++;
        v27 = vshrq_n_s64(vshll_n_s32(v26, 0x20uLL), 0x1DuLL);
        v22 = v22 + *(v20 + v27.i64[0]) * *(v23 - 1) + *(v20 + v27.i64[1]) * *v23;
        v23 += 2;
        v24 -= 2;
      }

      while (v24);
      if (v18 == v21)
      {
        goto LABEL_28;
      }
    }

    v28 = v18 - v21;
    v29 = (v19 + 8 * v21);
    v30 = (a2[3] + 4 * v21);
    do
    {
      v31 = *v30++;
      v32 = *(v20 + 8 * v31);
      v33 = *v29++;
      v22 = v22 + v32 * v33;
      --v28;
    }

    while (v28);
  }

LABEL_28:
  v34 = *(result + 24) - v22;
  v35 = -v34;
  if (!*(result + 4))
  {
    v35 = v34;
  }

  if (v5 == 1)
  {
    if (v9 <= v12 && v35 >= 0.0)
    {
      *(v4 + v3) = 2;
      return result;
    }

    if (v35 <= 0.0 && v10 >= v13)
    {
      *(v4 + v3) = 3;
      return result;
    }
  }

  *(a3[4] + 8 * *(result + 8)) = v34 / v6;
  v37 = result;
  result = operations_research::glop::VariableToConstraintStatus(v5);
  if (v10 >= v13)
  {
    v39 = 2;
  }

  else
  {
    v39 = result;
  }

  if (v9 <= v12)
  {
    v39 = 3;
  }

  if (v5 != 1)
  {
    v39 = result;
  }

  if (v39 == 3)
  {
    v40 = 2;
  }

  else
  {
    v40 = v39;
  }

  if (v39 == 2)
  {
    v40 = 3;
  }

  if (*(v37 + 16) >= 0.0)
  {
    v40 = v39;
  }

  v41 = *(v37 + 8);
  *(a3[7] + *(v37 + 12)) = 0;
  *(a3[10] + v41) = v40;
  return result;
}

double operations_research::glop::SingletonUndo::ZeroCostSingletonColumnUndo(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (result == v5)
  {
    v6 = *(a1 + 12);
    *(a4[1] + 8 * v6) = v5;
    v7 = a4[7];
LABEL_3:
    v8 = 1;
LABEL_4:
    *(v7 + v6) = v8;
    return result;
  }

  v6 = *(a1 + 8);
  v7 = a4[10];
  v9 = *(v7 + v6);
  if (v9 == 1)
  {
    v10 = *(a4[4] + 8 * v6);
    if (*(a1 + 4))
    {
      v10 = -v10;
    }

    v6 = *(a1 + 12);
    v11 = a4[1];
    v12 = 8 * v6;
    if (v10 > 0.0)
    {
      goto LABEL_9;
    }

    goto LABEL_51;
  }

  if ((v9 & 0xFE) != 2)
  {
    v15 = a3[1];
    if (v15 < 1)
    {
      v19 = 0.0;
      goto LABEL_27;
    }

    v16 = a3[4];
    v17 = a4[1];
    if (v15 == 1)
    {
      v18 = 0;
      v19 = 0.0;
    }

    else
    {
      v18 = v15 & 0x7FFFFFFFFFFFFFFELL;
      v21 = (v16 + 8);
      v19 = 0.0;
      v22 = v15 & 0x7FFFFFFFFFFFFFFELL;
      v23 = a3[3];
      do
      {
        v24 = *v23++;
        v25 = vshrq_n_s64(vshll_n_s32(v24, 0x20uLL), 0x1DuLL);
        v19 = v19 + *(v17 + v25.i64[0]) * *(v21 - 1) + *(v17 + v25.i64[1]) * *v21;
        v21 += 2;
        v22 -= 2;
      }

      while (v22);
      if (v15 == v18)
      {
LABEL_27:
        v32 = *(a2 + 200);
        if (v5 == -INFINITY)
        {
          goto LABEL_40;
        }

        v33 = v19 + *(a1 + 16) * v5;
        v34 = *(a1 + 48);
        v35 = fabs(v33);
        if (v35 == INFINITY)
        {
          if (v34 > v33)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v36 = fabs(v34);
          if (v35 < v36)
          {
            v36 = v35;
          }

          if (v33 + v32 * fmax(v36, 1.0) < v34)
          {
            goto LABEL_40;
          }
        }

        v37 = *(a1 + 56);
        v38 = fabs(v37);
        if (v38 == INFINITY)
        {
          if (v33 > v37)
          {
            goto LABEL_40;
          }

LABEL_36:
          v6 = *(a1 + 12);
          v11 = a4[1];
          v12 = 8 * v6;
LABEL_9:
          *(v11 + v12) = v5;
          v7 = a4[7];
          v8 = 2;
          goto LABEL_4;
        }

        if (v38 < v35)
        {
          v35 = v38;
        }

        if (v37 + v32 * fmax(v35, 1.0) >= v33)
        {
          goto LABEL_36;
        }

LABEL_40:
        if (result == INFINITY)
        {
          v40 = *(a1 + 48);
          goto LABEL_56;
        }

        v39 = v19 + *(a1 + 16) * result;
        v40 = *(a1 + 48);
        v41 = fabs(v39);
        if (v41 == INFINITY)
        {
          if (v40 > v39)
          {
            goto LABEL_56;
          }
        }

        else
        {
          v42 = fabs(v40);
          if (v41 < v42)
          {
            v42 = v41;
          }

          if (v39 + v32 * fmax(v42, 1.0) < v40)
          {
            goto LABEL_56;
          }
        }

        v43 = *(a1 + 56);
        v44 = fabs(v43);
        if (v44 == INFINITY)
        {
          if (v39 > v43)
          {
            goto LABEL_56;
          }

LABEL_50:
          v6 = *(a1 + 12);
          v11 = a4[1];
          v12 = 8 * v6;
LABEL_51:
          *(v11 + v12) = result;
          v7 = a4[7];
LABEL_52:
          v8 = 3;
          goto LABEL_4;
        }

        if (v44 < v41)
        {
          v41 = v44;
        }

        if (v43 + v32 * fmax(v41, 1.0) >= v39)
        {
          goto LABEL_50;
        }

LABEL_56:
        v45 = *(a1 + 56);
        if (v40 == -INFINITY)
        {
          result = INFINITY;
          if (v45 == INFINITY)
          {
            v6 = *(a1 + 12);
            *(a4[1] + 8 * v6) = 0;
            v7 = a4[7];
            v8 = 4;
            goto LABEL_4;
          }

          v49 = *(a1 + 12);
          v47 = v49 << 32;
          *(a4[7] + v49) = 0;
          if (v40 == v45)
          {
            goto LABEL_63;
          }

          result = *(a1 + 16);
          v50 = (v45 - v19) / result;
LABEL_71:
          *(a4[1] + (v47 >> 29)) = v50;
          goto LABEL_52;
        }

        v46 = *(a1 + 12);
        v47 = v46 << 32;
        *(a4[7] + v46) = 0;
        if (v40 == v45)
        {
LABEL_63:
          result = (v40 - v19) / *(a1 + 16);
          *(a4[1] + (v47 >> 29)) = result;
          goto LABEL_3;
        }

        if (v45 == INFINITY)
        {
          result = *(a1 + 16);
          v48 = (v40 - v19) / result;
        }

        else
        {
          v51 = *(a1 + 16);
          v48 = (v40 - v19) / v51;
          v50 = (v45 - v19) / v51;
          v52 = v5 - v48;
          if (v5 - v48 < v48 - result)
          {
            v52 = v48 - result;
          }

          v53 = v5 - v50;
          result = v50 - result;
          if (v53 >= result)
          {
            result = v53;
          }

          if (v52 >= result)
          {
            goto LABEL_71;
          }
        }

        *(a4[1] + 8 * v46) = v48;
        v8 = 2;
        goto LABEL_4;
      }
    }

    v26 = v15 - v18;
    v27 = (v16 + 8 * v18);
    v28 = (a3[3] + 4 * v18);
    do
    {
      v29 = *v28++;
      v30 = *(v17 + 8 * v29);
      v31 = *v27++;
      v19 = v19 + v30 * v31;
      --v26;
    }

    while (v26);
    goto LABEL_27;
  }

  v13 = *(a1 + 16);
  if (v9 == 3)
  {
    if (v13 > 0.0)
    {
LABEL_13:
      v14 = 2;
      result = *(a1 + 32);
      goto LABEL_19;
    }
  }

  else if (v13 < 0.0)
  {
    goto LABEL_13;
  }

  v14 = 3;
LABEL_19:
  v20 = *(a1 + 12);
  *(a4[1] + 8 * v20) = result;
  *(a4[7] + v20) = v14;
  result = *(a1 + 56);
  if (result == *(a1 + 48))
  {
    goto LABEL_3;
  }

  return result;
}

void operations_research::glop::SingletonPreprocessor::DeleteSingletonRow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47[0] = a2;
  v47[1] = a3;
  v5 = *(a4 + 64);
  v6 = 8 * a2;
  v7 = *(a4 + 88);
  v8 = *(v5 + v6) / *&a3;
  v9 = *(v7 + v6) / *&a3;
  if (*&a3 >= 0.0)
  {
    v10 = *(v7 + 8 * a2) / *&a3;
  }

  else
  {
    v10 = *(v5 + 8 * a2) / *&a3;
  }

  if (*&a3 >= 0.0)
  {
    v11 = *(v5 + 8 * a2) / *&a3;
  }

  else
  {
    v11 = *(v7 + 8 * a2) / *&a3;
  }

  v12 = *(a4 + 160);
  v13 = (a2 >> 29) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v12 + v13);
  v15 = *(a4 + 184);
  v16 = *(v15 + v13);
  v17 = *(a1 + 16);
  v18 = fabs(*(v17 + 200) / *&a3);
  if (v11 - v18 <= v14)
  {
    v19 = v14;
  }

  else
  {
    v19 = v11;
  }

  if (v10 + v18 >= v16)
  {
    v20 = v16;
  }

  else
  {
    v20 = v10;
  }

  if (v20 == -INFINITY || v19 == INFINITY)
  {
    if (dword_2810C01C0 < 1 || !absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C01B8, dword_2810C01C0))
    {
      goto LABEL_19;
    }

    absl::lts_20240722::log_internal::LogMessage::LogMessage(&v37, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 2294);
    v35 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v37, 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v35, "Problem ProblemStatus::PRIMAL_INFEASIBLE, singleton row causes the bound of the variable ", 0x59uLL);
    v36 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,0>(v35, v47 + 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v36, " to go to infinity.", 0x13uLL);
    goto LABEL_41;
  }

  if (v20 < v19)
  {
    v23 = fabs(v20);
    if (v23 == INFINITY)
    {
      if (v19 <= v20)
      {
LABEL_23:
        if (v19 == v14)
        {
          v24 = v19;
        }

        else
        {
          v24 = v20;
        }

        if (v24 == v16)
        {
          v20 = v24;
        }

        else
        {
          v20 = v19;
        }

        v19 = v20;
        goto LABEL_30;
      }
    }

    else
    {
      v32 = fabs(v19);
      if (v23 >= v32)
      {
        v23 = v32;
      }

      if (v20 + *(v17 + 136) * fmax(v23, 1.0) >= v19)
      {
        goto LABEL_23;
      }
    }

    if (dword_2810C01D8 < 1 || !absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C01D0, dword_2810C01D8))
    {
LABEL_19:
      *(a1 + 8) = 1;
      return;
    }

    absl::lts_20240722::log_internal::LogMessage::LogMessage(&v37, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 2304);
    v33 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v37, 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v33, "Problem ProblemStatus::PRIMAL_INFEASIBLE, singleton row causes the bound of the variable ", 0x59uLL);
    v34 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,0>(v33, v47 + 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v34, " to be infeasible by ", 0x15uLL);
    v48 = v19 - v20;
    absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v34, &v48);
LABEL_41:
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v37);
    goto LABEL_19;
  }

LABEL_30:
  v25 = a2 << 32;
  if (a2 >= *(a1 + 128))
  {
    v26 = a2;
    v27 = a3;
    std::vector<BOOL>::resize(a1 + 120, (v25 + 0x100000000) >> 32, 0);
    LOBYTE(a2) = v26;
    a3 = v27;
    v12 = *(a4 + 160);
    v15 = *(a4 + 184);
    v5 = *(a4 + 64);
    v7 = *(a4 + 88);
  }

  *(*(a1 + 120) + (((v25 >> 32) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
  v37 = 1;
  v38 = *(a4 + 408);
  v39 = v47[0];
  v40 = a3;
  v28 = (v47[0] >> 29) & 0xFFFFFFFFFFFFFFF8;
  v41 = *(*(a4 + 136) + v28);
  v42 = *(v12 + v28);
  v43 = *(v15 + v28);
  v29 = 8 * SLODWORD(v47[0]);
  v44 = *(v5 + v29);
  v45 = *(v7 + v29);
  v46 = 4;
  std::vector<operations_research::glop::SingletonUndo>::push_back[abi:ne200100](a1 + 144, &v37);
  v30 = HIDWORD(v47[0]);
  SparseColumn = operations_research::glop::LinearProgram::GetSparseColumn(a4, SHIDWORD(v47[0]));
  operations_research::glop::ColumnsSaver::SaveColumnIfNotAlreadyDone((a1 + 240), v30, SparseColumn);
  operations_research::glop::LinearProgram::SetVariableBounds(a4, SHIDWORD(v47[0]), v19, v20);
}

void std::vector<operations_research::glop::SingletonUndo>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    *v3 = *a2;
    v5 = *(a2 + 16);
    v6 = *(a2 + 32);
    v7 = *(a2 + 48);
    *(v3 + 64) = *(a2 + 64);
    *(v3 + 32) = v6;
    *(v3 + 48) = v7;
    *(v3 + 16) = v5;
    v8 = v3 + 72;
LABEL_3:
    *(a1 + 8) = v8;
    return;
  }

  v9 = *a1;
  v10 = v3 - *a1;
  v11 = 0x8E38E38E38E38E39 * (v10 >> 3) + 1;
  if (v11 > 0x38E38E38E38E38ELL)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v12 = 0x8E38E38E38E38E39 * ((v4 - v9) >> 3);
  if (2 * v12 > v11)
  {
    v11 = 2 * v12;
  }

  if (v12 >= 0x1C71C71C71C71C7)
  {
    v13 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    if (v13 <= 0x38E38E38E38E38ELL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v14 = 8 * (v10 >> 3);
  v15 = *(a2 + 48);
  *(v14 + 32) = *(a2 + 32);
  *(v14 + 48) = v15;
  *(v14 + 64) = *(a2 + 64);
  v16 = *(a2 + 16);
  *v14 = *a2;
  *(v14 + 16) = v16;
  v8 = v14 + 72;
  v17 = v14 - v10;
  memcpy((v14 - v10), v9, v10);
  *a1 = v17;
  *(a1 + 8) = v8;
  *(a1 + 16) = 0;
  if (!v9)
  {
    goto LABEL_3;
  }

  operator delete(v9);
  *(a1 + 8) = v8;
}

BOOL operations_research::glop::SingletonPreprocessor::IntegerSingletonColumnIsRemovable(uint64_t a1, double *a2, operations_research::glop::LinearProgram *this)
{
  TransposeSparseMatrix = operations_research::glop::LinearProgram::GetTransposeSparseMatrix(this);
  v7 = *a2;
  v8 = (*TransposeSparseMatrix + 48 * *a2);
  v9 = v8[1];
  if (v9 < 1)
  {
LABEL_10:
    v18 = 8 * v7;
    if ((*(*(this + 8) + v18) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && ((v19 = *(*(this + 8) + v18) / a2[1], v20 = fabs(v19), v21 = vabdd_f64(v19, round(v19)), v20 != INFINITY) ? (v22 = v21 > *(*(a1 + 16) + 136)) : (v22 = 1), v22))
    {
      return 0;
    }

    else
    {
      v23 = *(*(this + 11) + v18);
      if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && ((v24 = v23 / a2[1], v25 = fabs(v24), v26 = vabdd_f64(v24, round(v24)), v25 != INFINITY) ? (v27 = v26 > *(*(a1 + 16) + 136)) : (v27 = 1), v27))
      {
        return 0;
      }

      else
      {
        return 1;
      }
    }
  }

  else
  {
    v10 = v8[3];
    v11 = v8[4];
    while (1)
    {
      v12 = *v10++;
      result = operations_research::glop::LinearProgram::IsVariableInteger(this, v12);
      if (!result)
      {
        break;
      }

      v14 = *v11 / a2[1];
      v15 = fabs(v14);
      v16 = vabdd_f64(v14, round(v14));
      if (v15 == INFINITY || v16 > *(*(a1 + 16) + 136))
      {
        return 0;
      }

      ++v11;
      if (!--v9)
      {
        v7 = *a2;
        goto LABEL_10;
      }
    }
  }

  return result;
}

_DWORD *operations_research::glop::SingletonPreprocessor::DeleteSingletonColumnInEquality(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a3;
  v28 = a4;
  v9 = a3;
  v10 = (*a2 + 48 * a3);
  v25 = 2;
  v26 = *(a5 + 408);
  v11 = (a3 >> 29) & 0xFFFFFFFFFFFFFFF8;
  v29 = *(*(a5 + 136) + v11);
  v30 = *(*(a5 + 160) + v11);
  v31 = *(*(a5 + 184) + v11);
  v12 = 8 * a3;
  v32 = *(*(a5 + 64) + v12);
  v33 = *(*(a5 + 88) + v12);
  v34 = 4;
  std::vector<operations_research::glop::SingletonUndo>::push_back[abi:ne200100](a1 + 144, &v25);
  operations_research::glop::ColumnsSaver::SaveColumnIfNotAlreadyDone((a1 + 368), v9, v10);
  v13 = *(*(a5 + 136) + v11) / *&a4;
  operations_research::glop::LinearProgram::SetObjectiveOffset(a5, *(a5 + 392) + *(*(a5 + 88) + v12) * v13);
  v14 = v10[1];
  if (v14 >= 1)
  {
    v16 = v10[3];
    v15 = v10[4];
    do
    {
      v19 = *v16++;
      v18 = v19;
      if (v19 >= *(a1 + 56) || ((*(*(a1 + 48) + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        v17 = *(*(a5 + 136) + 8 * v18) - *v15 * v13;
        if (fabs(v17) < *(*(a1 + 16) + 200))
        {
          v17 = 0.0;
        }

        operations_research::glop::LinearProgram::SetObjectiveCoefficient(a5, v18, v17);
      }

      ++v15;
      --v14;
    }

    while (v14);
  }

  v20 = -(*&a4 * *(*(a5 + 184) + v11));
  v21 = *(a5 + 160);
  v22 = -(*&a4 * *(v21 + v11));
  if (*&a4 >= 0.0)
  {
    v23 = -(*&a4 * *(*(a5 + 184) + v11));
  }

  else
  {
    v23 = -(*&a4 * *(v21 + v11));
  }

  if (*&a4 < 0.0)
  {
    v22 = -(*&a4 * *(*(a5 + 184) + v11));
  }

  operations_research::glop::LinearProgram::SetConstraintBounds(a5, v9, *(*(a5 + 64) + v12) + v23, v22 + *(*(a5 + 88) + v12));
  return operations_research::glop::ColumnDeletionHelper::MarkColumnForDeletionWithState((a1 + 48), HIDWORD(a3), 4, 0.0);
}

BOOL operations_research::glop::SingletonPreprocessor::MakeConstraintAnEqualityIfPossible(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v110 = a3;
  *(&v110 + 1) = a4;
  v5 = 8 * a3;
  v6 = *(*(a5 + 64) + v5);
  v7 = *(*(a5 + 88) + v5);
  if (v6 == v7)
  {
    return 1;
  }

  if (v6 == -INFINITY && v7 == INFINITY)
  {
    return 0;
  }

  if (*(a1 + 24) == 1)
  {
    v12 = a2;
    v13 = a3;
    v14 = a4;
    IsVariableInteger = operations_research::glop::LinearProgram::IsVariableInteger(a5, SHIDWORD(a3));
    a4 = v14;
    a3 = v13;
    a2 = v12;
    if (IsVariableInteger)
    {
      return 0;
    }
  }

  v16 = *&a4;
  v17 = a3;
  if (a3 >= *(a1 + 176))
  {
    v18 = a3;
    v19 = a2;
    v20 = ((a3 << 32) + 0x100000000) >> 32;
    std::vector<BOOL>::resize(a1 + 168, v20, 0);
    v21 = *(a1 + 192);
    v22 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 200) - v21) >> 3);
    if (v20 <= v22)
    {
      if (v20 < v22)
      {
        *(a1 + 200) = v21 + 24 * v20;
      }
    }

    else
    {
      std::vector<operations_research::glop::SumWithOneMissing<false>>::__append(a1 + 192, v20 - v22);
    }

    v23 = *(a1 + 216);
    v24 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 224) - v23) >> 3);
    if (v20 <= v24)
    {
      a2 = v19;
      LODWORD(a3) = v18;
      if (v20 < v24)
      {
        *(a1 + 224) = v23 + 24 * v20;
      }
    }

    else
    {
      std::vector<operations_research::glop::SumWithOneMissing<false>>::__append(a1 + 216, v20 - v24);
      a2 = v19;
      LODWORD(a3) = v18;
    }
  }

  else if ((*(*(a1 + 168) + ((a3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a3))
  {
    goto LABEL_48;
  }

  *(*(a1 + 168) + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a3;
  v25 = *(a1 + 192);
  v26 = v25 + 24 * v17;
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v27 = *(v26 + 8);
    if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v28 = v6 + *(v26 + 16);
      *(v26 + 8) = v27 + v28;
      *(v26 + 16) = v28 + v27 - (v27 + v28);
    }
  }

  else
  {
    ++*v26;
    LODWORD(v17) = v110;
    LODWORD(a3) = v110;
  }

  v29 = *(a1 + 216);
  v30 = v29 + 24 * v17;
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v31 = *(v30 + 8);
    if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v32 = v7 + *(v30 + 16);
      *(v30 + 8) = v31 + v32;
      *(v30 + 16) = v32 + v31 - (v31 + v32);
    }
  }

  else
  {
    ++*v30;
    LODWORD(a3) = v110;
  }

  v33 = (*a2 + 48 * a3);
  v34 = v33[1];
  if (v34 >= 1)
  {
    v35 = v33[3];
    v36 = v33[4];
    v37 = *(a1 + 56);
    do
    {
      v39 = *v35++;
      v38 = v39;
      if (v39 >= v37 || ((*(*(a1 + 48) + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
      {
        v40 = v110;
        v41 = v25 + 24 * v110;
        v42 = -*v36;
        v43 = 8 * v38;
        if (*v36 <= 0.0)
        {
          if (COERCE__INT64(fabs(*(*(a5 + 160) + v43) * v42)) < 0x7FF0000000000000)
          {
            v48 = *(v41 + 8);
            if ((*&v48 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              v49 = *(*(a5 + 160) + v43) * v42 + *(v41 + 16);
              *(v41 + 8) = v48 + v49;
              *(v41 + 16) = v49 + v48 - (v48 + v49);
              v42 = -*v36;
            }
          }

          else
          {
            ++*v41;
            v40 = v110;
          }

          v46 = v29 + 24 * v40;
          v47 = *(*(a5 + 184) + v43) * v42;
          if ((*&v47 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
          {
LABEL_46:
            v50 = *(v46 + 8);
            if ((*&v50 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              v51 = v47 + *(v46 + 16);
              *(v46 + 8) = v50 + v51;
              *(v46 + 16) = v51 + v50 - (v50 + v51);
            }

            goto LABEL_31;
          }
        }

        else
        {
          if (COERCE__INT64(fabs(*(*(a5 + 184) + v43) * v42)) < 0x7FF0000000000000)
          {
            v44 = *(v41 + 8);
            if ((*&v44 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              v45 = *(*(a5 + 184) + v43) * v42 + *(v41 + 16);
              *(v41 + 8) = v44 + v45;
              *(v41 + 16) = v45 + v44 - (v44 + v45);
              v42 = -*v36;
            }
          }

          else
          {
            ++*v41;
            v40 = v110;
          }

          v46 = v29 + 24 * v40;
          v47 = *(*(a5 + 160) + v43) * v42;
          if ((*&v47 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
          {
            goto LABEL_46;
          }
        }

        ++*v46;
      }

LABEL_31:
      ++v36;
      --v34;
    }

    while (v34);
  }

LABEL_48:
  v52 = DWORD1(v110);
  v53 = v110;
  v54 = -v16;
  v55 = 8 * SDWORD1(v110);
  v56 = -(v16 * *(*(a5 + 184) + v55));
  v57 = fabs(v56);
  if (v16 <= 0.0)
  {
    v61 = *(a1 + 216) + 24 * v110;
    v62 = *v61;
    if (*&v57 < 0x7FF0000000000000)
    {
      if (v62 <= 0)
      {
        v64 = *(v61 + 8) - v56;
      }

      else
      {
        v64 = INFINITY;
      }

      v60 = v64 + v57 * 1.0e-12;
    }

    else if (v62 <= 1)
    {
      v60 = *(v61 + 8);
    }

    else
    {
      v60 = INFINITY;
    }

    v65 = *(a1 + 192) + 24 * v110;
    v72 = *(*(a5 + 160) + 8 * SDWORD1(v110)) * v54;
    v73 = *v65;
    if (COERCE__INT64(fabs(v72)) >= 0x7FF0000000000000)
    {
      if (v73 > 1)
      {
        v68 = -INFINITY;
        ObjectiveCoefficientForMinimizationVersion = operations_research::glop::LinearProgram::GetObjectiveCoefficientForMinimizationVersion(a5, SDWORD1(v110));
        if (ObjectiveCoefficientForMinimizationVersion >= 0.0)
        {
          goto LABEL_86;
        }

        goto LABEL_84;
      }

      goto LABEL_77;
    }

    v70 = fabs(v72);
    if (v73 <= 0)
    {
      v71 = *(v65 + 8) - v72;
    }

    else
    {
      v71 = -INFINITY;
    }

    v74 = -1.0e-12;
  }

  else
  {
    v58 = *(a1 + 192) + 24 * v110;
    v59 = *v58;
    if (*&v57 < 0x7FF0000000000000)
    {
      if (v59 <= 0)
      {
        v63 = *(v58 + 8) - v56;
      }

      else
      {
        v63 = -INFINITY;
      }

      v60 = v63 + v57 * -1.0e-12;
    }

    else if (v59 <= 1)
    {
      v60 = *(v58 + 8);
    }

    else
    {
      v60 = -INFINITY;
    }

    v65 = *(a1 + 216) + 24 * v110;
    v66 = *(*(a5 + 160) + 8 * SDWORD1(v110)) * v54;
    v67 = *v65;
    if (COERCE__INT64(fabs(v66)) >= 0x7FF0000000000000)
    {
      if (v67 > 1)
      {
        v68 = INFINITY;
        ObjectiveCoefficientForMinimizationVersion = operations_research::glop::LinearProgram::GetObjectiveCoefficientForMinimizationVersion(a5, SDWORD1(v110));
        if (ObjectiveCoefficientForMinimizationVersion >= 0.0)
        {
          goto LABEL_86;
        }

        goto LABEL_84;
      }

LABEL_77:
      v68 = *(v65 + 8);
      ObjectiveCoefficientForMinimizationVersion = operations_research::glop::LinearProgram::GetObjectiveCoefficientForMinimizationVersion(a5, SDWORD1(v110));
      if (ObjectiveCoefficientForMinimizationVersion >= 0.0)
      {
        goto LABEL_86;
      }

      goto LABEL_84;
    }

    v70 = fabs(v66);
    if (v67 <= 0)
    {
      v71 = *(v65 + 8) - v66;
    }

    else
    {
      v71 = INFINITY;
    }

    v74 = 1.0e-12;
  }

  v68 = v71 + v70 * v74;
  ObjectiveCoefficientForMinimizationVersion = operations_research::glop::LinearProgram::GetObjectiveCoefficientForMinimizationVersion(a5, SDWORD1(v110));
  if (ObjectiveCoefficientForMinimizationVersion >= 0.0)
  {
    goto LABEL_86;
  }

LABEL_84:
  v75 = v68 / v16;
  v76 = *(*(a5 + 184) + 8 * SDWORD1(v110));
  v77 = fabs(v76);
  if (v77 == INFINITY)
  {
    if (v75 > v76)
    {
      goto LABEL_86;
    }
  }

  else
  {
    v82 = fabs(v75);
    if (v77 >= v82)
    {
      v77 = v82;
    }

    if (v76 + *(*(a1 + 16) + 200) * fmax(v77, 1.0) < v75)
    {
LABEL_86:
      v78 = 1;
      if (ObjectiveCoefficientForMinimizationVersion <= 0.0)
      {
        goto LABEL_120;
      }

      goto LABEL_87;
    }
  }

  if (v16 <= 0.0)
  {
    if (v6 != -INFINITY)
    {
      v90 = ObjectiveCoefficientForMinimizationVersion;
      operations_research::glop::LinearProgram::SetConstraintBounds(a5, v110, v6, v6);
      ObjectiveCoefficientForMinimizationVersion = v90;
      v78 = 2;
      if (*(a1 + 8) != 3)
      {
        goto LABEL_111;
      }

      goto LABEL_105;
    }

LABEL_104:
    *(a1 + 8) = 3;
    goto LABEL_105;
  }

  if (v7 == INFINITY)
  {
    goto LABEL_104;
  }

  v83 = ObjectiveCoefficientForMinimizationVersion;
  operations_research::glop::LinearProgram::SetConstraintBounds(a5, v110, v7, v7);
  ObjectiveCoefficientForMinimizationVersion = v83;
  v78 = 3;
  if (*(a1 + 8) != 3)
  {
LABEL_111:
    v91 = ObjectiveCoefficientForMinimizationVersion;
    operations_research::glop::LinearProgram::SetVariableBounds(a5, SDWORD1(v110), *(*(a5 + 160) + 8 * SDWORD1(v110)), INFINITY);
    ObjectiveCoefficientForMinimizationVersion = v91;
    if (v91 <= 0.0)
    {
      goto LABEL_120;
    }

LABEL_87:
    v79 = v60 / v16;
    v80 = *(*(a5 + 160) + 8 * SDWORD1(v110));
    v81 = fabs(v60 / v16);
    if (v81 == INFINITY)
    {
      if (v80 > v79)
      {
        goto LABEL_120;
      }
    }

    else
    {
      v84 = fabs(v80);
      if (v81 >= v84)
      {
        v81 = v84;
      }

      if (v79 + *(*(a1 + 16) + 200) * fmax(v81, 1.0) < v80)
      {
LABEL_120:
        v97 = *(a5 + 64);
        v98 = *(a5 + 88);
        if (*(v97 + 8 * v53) == *(v98 + 8 * v53))
        {
          v101 = 3;
          v102 = *(a5 + 408);
          v103 = v110;
          v99 = (v110 >> 29) & 0xFFFFFFFFFFFFFFF8;
          v104 = *(*(a5 + 136) + v99);
          v105 = *(*(a5 + 160) + v99);
          v106 = *(*(a5 + 184) + v99);
          v100 = 8 * v110;
          v107 = *(v97 + v100);
          v108 = *(v98 + v100);
          v109 = v78;
          std::vector<operations_research::glop::SingletonUndo>::push_back[abi:ne200100](a1 + 144, &v101);
          return 1;
        }

        return 0;
      }
    }

    if (v16 <= 0.0)
    {
      if (v7 != INFINITY)
      {
        v92 = ObjectiveCoefficientForMinimizationVersion;
        operations_research::glop::LinearProgram::SetConstraintBounds(a5, v110, v7, v7);
        ObjectiveCoefficientForMinimizationVersion = v92;
        v78 = 3;
LABEL_114:
        if (*(a1 + 8) != 3)
        {
          operations_research::glop::LinearProgram::SetVariableBounds(a5, v52, -INFINITY, *(*(a5 + 184) + v55));
          goto LABEL_120;
        }

        if (dword_2810C0208 >= 1)
        {
          v93 = ObjectiveCoefficientForMinimizationVersion;
          result = absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C0200, dword_2810C0208);
          if (!result)
          {
            return result;
          }

          absl::lts_20240722::log_internal::LogMessage::LogMessage(&v101, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 2801);
          v94 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v101, 1);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v94, "Problem ProblemStatus::INFEASIBLE_OR_UNBOUNDED, singleton variable ", 0x43uLL);
          v95 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,0>(v94, &v110 + 1);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v95, " has a cost (for minimization) of ", 0x22uLL);
          v111 = v93;
          v96 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v95, &v111);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v96, " and is unbounded towards -kInfinity.", 0x25uLL);
          goto LABEL_118;
        }

        return 0;
      }
    }

    else if (v6 != -INFINITY)
    {
      v85 = ObjectiveCoefficientForMinimizationVersion;
      operations_research::glop::LinearProgram::SetConstraintBounds(a5, v110, v6, v6);
      ObjectiveCoefficientForMinimizationVersion = v85;
      v78 = 2;
      goto LABEL_114;
    }

    *(a1 + 8) = 3;
    goto LABEL_114;
  }

LABEL_105:
  if (dword_2810C01F0 >= 1)
  {
    v86 = ObjectiveCoefficientForMinimizationVersion;
    result = absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C01E8, dword_2810C01F0);
    if (!result)
    {
      return result;
    }

    absl::lts_20240722::log_internal::LogMessage::LogMessage(&v101, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/preprocessor.cc", 2758);
    v87 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v101, 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v87, "Problem ProblemStatus::INFEASIBLE_OR_UNBOUNDED, singleton variable ", 0x43uLL);
    v88 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,0>(v87, &v110 + 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v88, " has a cost (for minimization) of ", 0x22uLL);
    v111 = v86;
    v89 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v88, &v111);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v89, " and is unbounded towards kInfinity.", 0x24uLL);
LABEL_118:
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v101);
  }

  return 0;
}