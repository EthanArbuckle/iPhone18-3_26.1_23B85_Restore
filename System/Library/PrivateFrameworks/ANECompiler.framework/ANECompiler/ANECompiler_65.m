void sub_23CC78DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
    operations_research::sat::ObjectiveEncoder::~ObjectiveEncoder(&a32);
    _Unwind_Resume(a1);
  }

  operations_research::sat::ObjectiveEncoder::~ObjectiveEncoder(&a32);
  _Unwind_Resume(a1);
}

uint64_t std::function<operations_research::sat::Literal ()(int)>::~function(uint64_t a1)
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

void operations_research::sat::ObjectiveEncoder::~ObjectiveEncoder(operations_research::sat::ObjectiveEncoder *this)
{
  std::deque<operations_research::sat::EncodingNode>::clear(this + 4);
  v2 = *(this + 5);
  v3 = *(this + 6);
  if (v2 != v3)
  {
    do
    {
      v4 = *v2++;
      operator delete(v4);
    }

    while (v2 != v3);
    v2 = *(this + 5);
    v3 = *(this + 6);
  }

  if (v3 != v2)
  {
    do
    {
      --v3;
    }

    while (v3 != v2);
    *(this + 6) = v3;
  }

  v5 = *(this + 4);
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(this + 1);
  if (v6)
  {
    *(this + 2) = v6;
    operator delete(v6);
  }
}

void operations_research::sat::PresolveBooleanLinearExpression(void *a1, uint64_t a2, void *a3)
{
  __p = 0;
  v22 = 0;
  v23 = 0;
  v5 = a1[1] - *a1;
  if ((v5 >> 2) >= 1)
  {
    v6 = **a2;
    operator new();
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,long long> *,false>(0, 0, &v20, 0, 1);
  v7 = __p;
  v8 = v22;
  if (__p == v22)
  {
    v9 = 0;
    v15 = (v22 - __p) >> 4;
    goto LABEL_15;
  }

  LODWORD(v9) = 0;
  v10 = __p;
  do
  {
    if (v9 < 1)
    {
LABEL_5:
      v11 = *(v10 + 1);
      v12 = &v7[16 * v9];
      LODWORD(v9) = v9 + 1;
      *v12 = *v10;
      *(v12 + 1) = v11;
      goto LABEL_6;
    }

    v13 = &v7[16 * v9];
    v14 = *(v13 - 4);
    if (v14 == *v10)
    {
      *(v13 - 1) += *(v10 + 1);
    }

    else
    {
      if ((*v10 ^ v14) != 1)
      {
        goto LABEL_5;
      }

      *(v13 - 1) -= *(v10 + 1);
      *a3 += *(v10 + 1);
    }

LABEL_6:
    v10 += 16;
  }

  while (v10 != v8);
  v9 = v9;
  v15 = (v8 - v7) >> 4;
  if (v9 > v15)
  {
    std::vector<std::pair<int,long long>>::__append(&__p, v9 - v15);
    v7 = __p;
    v8 = v22;
    goto LABEL_17;
  }

LABEL_15:
  if (v15 > v9)
  {
    v8 = &v7[16 * v9];
    v22 = v8;
  }

LABEL_17:
  a1[1] = *a1;
  *(a2 + 8) = *a2;
  if (v7 != v8)
  {
    v16 = v7 + 8;
    do
    {
      v18 = *v16;
      if (*v16 < 1)
      {
        if (v18 < 0)
        {
          *a3 += v18;
          LODWORD(v20) = *(v16 - 2) ^ 1;
          std::vector<int>::push_back[abi:ne200100](a1, &v20);
          v20 = -*v16;
          std::vector<long long>::push_back[abi:ne200100](a2, &v20);
        }
      }

      else
      {
        LODWORD(v20) = *(v16 - 2);
        std::vector<int>::push_back[abi:ne200100](a1, &v20);
        std::vector<long long>::push_back[abi:ne200100](a2, v16);
      }

      v17 = (v16 + 1);
      v16 += 2;
    }

    while (v17 != v8);
    v7 = __p;
  }

  if (v7)
  {
    v22 = v7;
    operator delete(v7);
  }
}

void sub_23CC79470(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::CoreBasedOptimizer::PresolveObjectiveWithAtMostOne(uint64_t a1, int **a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *(*(a1 + 32) + 208) - *(*(a1 + 32) + 200);
  if (v3 << 27)
  {
    if (!((v3 >> 5) >> 61))
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  if (((a2[1] - *a2) >> 2) > 0)
  {
    v4 = **a2;
    v5 = **a3;
    __p = v5;
    if (v5 > 0)
    {
      *(8 * v4) = v5;
      operator new();
    }

    absl::lts_20240722::log_internal::MakeCheckOpString<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const&,long long>(&__p, 0, "coeff > 0");
  }

  *(*(a1 + 32) + 576) = 0;
  a2[1] = *a2;
  *(a3 + 8) = *a3;
  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  if (v11)
  {
    operator delete(v11);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_23CC79F34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, uint64_t a32, void *a33)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (v34)
  {
    operator delete(v34);
    if (!v35)
    {
LABEL_5:
      if (!a10)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }
  }

  else if (!v35)
  {
    goto LABEL_5;
  }

  operator delete(v35);
  if (!a10)
  {
LABEL_6:
    v37 = a30;
    if (!a30)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a10);
  v37 = a30;
  if (!a30)
  {
LABEL_7:
    v38 = a33;
    if (!a33)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(v37);
  v38 = a33;
  if (!a33)
  {
LABEL_8:
    if (!v33)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(v38);
  if (!v33)
  {
LABEL_9:
    _Unwind_Resume(exception_object);
  }

LABEL_15:
  operator delete(v33);
  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::CoreBasedOptimizer::Optimize(operations_research::sat::CoreBasedOptimizer *this)
{
  v1 = this;
  v270 = *MEMORY[0x277D85DE8];
  if (*(*this + 280))
  {
    goto LABEL_60;
  }

  v259 = 0uLL;
  v260 = 0;
  memset(__p, 0, 24);
  v3 = *(this + 9);
  v2 = *(this + 10);
  if (v3 == v2)
  {
    v254 = 0;
LABEL_54:
    operations_research::sat::PresolveBooleanLinearExpression(&v259, __p, &v254);
    operations_research::sat::CoreBasedOptimizer::PresolveObjectiveWithAtMostOne(v1, &v259, __p);
    v220 = operations_research::sat::CoreBasedOptimizer::OptimizeWithSatEncoding(v1, v259, (*(&v259 + 1) - v259) >> 2, 0, 0, __p[0].__begin_, (__p[0].__end_ - __p[0].__begin_) >> 3, v254);
LABEL_55:
    v46 = 0;
    begin = __p[0].__begin_;
    if (!__p[0].__begin_)
    {
      goto LABEL_57;
    }

LABEL_56:
    __p[0].__end_ = begin;
    operator delete(begin);
    goto LABEL_57;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 1;
  v224 = *(this + 10);
LABEL_4:
  v221 = v9;
  v223 = v7;
  v3 += 40;
  do
  {
    v11 = v3 - 40;
    v12 = *(v3 - 40);
    v13 = *(*(v1 + 5) + 40);
    v14 = 8 * v12;
    v15 = *(v13 + v14);
    v16 = *(v3 - 32);
    v17 = *(v13 + (v14 ^ 8));
    v8 = (v8 + v15 * v16);
    if (!(v15 + v17))
    {
      goto LABEL_7;
    }

    v233 = v8;
    v231 = *(v13 + (v14 ^ 8));
    if (v5 >= v6)
    {
      v22 = v5 - v4;
      v23 = (v5 - v4) >> 2;
      v24 = v23 + 1;
      __src = v4;
      if ((v23 + 1) >> 62)
      {
        v254 = v8;
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if ((v6 - v4) >> 1 > v24)
      {
        v24 = (v6 - v4) >> 1;
      }

      if (v6 - v4 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v25 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v25 = v24;
      }

      if (v25)
      {
        if (!(v25 >> 62))
        {
          operator new();
        }

        v254 = v233;
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v4 = 0;
      *(4 * v23) = v12;
      v225 = 0;
      v228 = (4 * v23 + 4);
      memcpy(0, __src, v22);
      v8 = v233;
      v17 = v231;
      end = __p[0].__end_;
      value = __p[0].__end_cap_.__value_;
      if (__p[0].__end_ >= __p[0].__end_cap_.__value_)
      {
LABEL_23:
        __srca = v4;
        v26 = __p[0].__begin_;
        v27 = end - __p[0].__begin_;
        v28 = (end - __p[0].__begin_) >> 3;
        v29 = v28 + 1;
        if ((v28 + 1) >> 61)
        {
          v254 = v233;
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v30 = value - __p[0].__begin_;
        if (v30 >> 2 > v29)
        {
          v29 = v30 >> 2;
        }

        if (v30 >= 0x7FFFFFFFFFFFFFF8)
        {
          v31 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v31 = v29;
        }

        if (v31)
        {
          if (!(v31 >> 61))
          {
            operator new();
          }

          v254 = v233;
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v32 = (end - __p[0].__begin_) >> 3;
        v33 = (8 * v28);
        v34 = (8 * v28 - 8 * v32);
        *v33 = v16;
        v35 = (v33 + 1);
        memcpy(v34, v26, v27);
        __p[0].__begin_ = v34;
        __p[0].__end_cap_.__value_ = 0;
        if (v26)
        {
          operator delete(v26);
        }

        v8 = v233;
        v4 = __srca;
        v20 = -v231;
        __p[0].__end_ = v35;
        v21 = -v231 - v15;
        if (v21 != 1)
        {
LABEL_47:
          v9 = 0;
          v2 = v224;
          v7 = v223 + v21;
          v6 = v225;
          v5 = v228;
          if (v3 != v224)
          {
            goto LABEL_4;
          }

          v254 = v8;
          goto LABEL_51;
        }

        goto LABEL_35;
      }
    }

    else
    {
      *v5 = v12;
      v225 = v6;
      v228 = (v5 + 1);
      end = __p[0].__end_;
      value = __p[0].__end_cap_.__value_;
      if (__p[0].__end_ >= __p[0].__end_cap_.__value_)
      {
        goto LABEL_23;
      }
    }

    *end = v16;
    v20 = -v17;
    __p[0].__end_ = end + 2;
    v21 = -v17 - v15;
    if (v21 != 1)
    {
      goto LABEL_47;
    }

LABEL_35:
    AssociatedLiteral = operations_research::sat::IntegerEncoder::GetOrCreateAssociatedLiteral(*(v1 + 6), v12, v20);
    v37 = *(&v259 + 1);
    if (*(&v259 + 1) < v260)
    {
      **(&v259 + 1) = AssociatedLiteral;
      v10 = (v37 + 4);
    }

    else
    {
      v38 = v259;
      v39 = *(&v259 + 1) - v259;
      v40 = (*(&v259 + 1) - v259) >> 2;
      v41 = v40 + 1;
      if ((v40 + 1) >> 62)
      {
        v254 = v8;
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      v42 = v260 - v259;
      if ((v260 - v259) >> 1 > v41)
      {
        v41 = v42 >> 1;
      }

      if (v42 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v43 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v43 = v41;
      }

      if (v43)
      {
        if (!(v43 >> 62))
        {
          operator new();
        }

        v254 = v8;
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v44 = (4 * v40);
      v45 = &v44[-((*(&v259 + 1) - v259) >> 2)];
      *v44 = AssociatedLiteral;
      v10 = v44 + 1;
      memcpy(v45, v38, v39);
      *&v259 = v45;
      v260 = 0;
      if (v38)
      {
        operator delete(v38);
      }
    }

    v2 = v224;
    v6 = v225;
    v5 = v228;
    *(&v259 + 1) = v10;
LABEL_7:
    v3 += 40;
  }

  while (v11 + 40 != v2);
  v254 = v8;
  if (v221)
  {
    goto LABEL_54;
  }

  v7 = v223;
LABEL_51:
  if (v7 < 100000000)
  {
    v220 = operations_research::sat::CoreBasedOptimizer::OptimizeWithSatEncoding(v1, 0, 0, v4, (v5 - v4) >> 2, __p[0].__begin_, (__p[0].__end_ - __p[0].__begin_) >> 3, v8);
    goto LABEL_55;
  }

  v46 = 1;
  begin = __p[0].__begin_;
  if (__p[0].__begin_)
  {
    goto LABEL_56;
  }

LABEL_57:
  if (v259)
  {
    *(&v259 + 1) = v259;
    operator delete(v259);
  }

  if ((v46 & 1) == 0)
  {
    goto LABEL_362;
  }

LABEL_60:
  v247 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,int,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_> const,int>>,256,false>>::EmptyNode(void)::empty_node;
  v248 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,int,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_> const,int>>,256,false>>::EmptyNode(void)::empty_node;
  v249 = 0;
  *(v1 + 137) = 0;
  v232 = v1;
LABEL_62:
  if ((operations_research::sat::CoreBasedOptimizer::PropagateObjectiveBounds(v1) & 1) == 0)
  {
    goto LABEL_358;
  }

  if (operations_research::TimeLimit::LimitReached(*(v1 + 3)))
  {
LABEL_359:
    v217 = 3;
    goto LABEL_360;
  }

  if (*(*v1 + 550) != 1)
  {
LABEL_67:
    v48 = *(v1 + 9);
    if (*(v1 + 10) == v48)
    {
      v57 = 0;
    }

    else
    {
      v49 = 0;
      v222 = 0;
      v50 = 0;
      LODWORD(v224) = 0;
      v51 = 0;
      do
      {
        v52 = (v48 + 40 * v49);
        v53 = *(v52 + 1);
        if (v53)
        {
          v54 = *(*(v1 + 5) + 40);
          v55 = 8 * *v52;
          v56 = *(v54 + v55);
          if (v56 + *(v54 + (v55 ^ 8)))
          {
            if (v53 >= *(v1 + 12))
            {
              operator new();
            }

            v222 = 1;
          }

          else
          {
            v51 += v56 * v53;
          }
        }

        v49 = ++v50;
        v48 = *(v1 + 9);
      }

      while (0xCCCCCCCCCCCCCCCDLL * ((*(v1 + 10) - v48) >> 3) > v50);
      v57 = v222;
      if (v222)
      {
        operations_research::sat::CoreBasedOptimizer::ComputeNextStratificationThreshold(v1);
        v58 = 4;
        goto LABEL_61;
      }
    }

    if ((v57 & 1) == 0)
    {
      if (dword_2810C0B68 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C0B60, dword_2810C0B68))
      {
        v191 = absl::lts_20240722::log_internal::LogMessage::LogMessage(&v259, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/optimization.cc", 1147);
        v192 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v191, 1);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v192, "Switching to linear scan...", 0x1BuLL);
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v259);
        v1 = v232;
      }

      if ((*(v1 + 136) & 1) == 0)
      {
        *(v1 + 136) = 1;
        v259 = 0uLL;
        v260 = 0;
        memset(__p, 0, 24);
        v59 = v259;
        v60 = -v259;
        v61 = -v259 >> 2;
        v62 = v61 + 1;
        if (!((v61 + 1) >> 62))
        {
          v63 = -v259;
          if (-v259 >> 1 > v62)
          {
            v62 = v63 >> 1;
          }

          if (v63 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v64 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v64 = v62;
          }

          if (v64)
          {
            if (!(v64 >> 62))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          *(4 * v61) = *(v1 + 16);
          memcpy(0, v59, v60);
          *&v259 = 0;
          v260 = 0;
          *(&v259 + 1) = 4 * v61 + 4;
          v95 = __p[0].__end_;
          if (__p[0].__end_ >= __p[0].__end_cap_.__value_)
          {
            v97 = __p[0].__begin_;
            v98 = __p[0].__end_ - __p[0].__begin_;
            v99 = (__p[0].__end_ - __p[0].__begin_) >> 3;
            v100 = v99 + 1;
            if ((v99 + 1) >> 61)
            {
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            v101 = __p[0].__end_cap_.__value_ - __p[0].__begin_;
            if (__p[0].__end_cap_.__value_ - __p[0].__begin_ > v100)
            {
              v100 = v101 >> 2;
            }

            if (v101 >= 0x7FFFFFFFFFFFFFF8)
            {
              v102 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v102 = v100;
            }

            if (v102)
            {
              if (!(v102 >> 61))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v103 = (8 * v99);
            v104 = &v103[-((__p[0].__end_ - __p[0].__begin_) >> 3)];
            *v103 = -1;
            v96 = (v103 + 1);
            memcpy(v104, v97, v98);
            __p[0].__begin_ = v104;
            __p[0].__end_ = v96;
            __p[0].__end_cap_.__value_ = 0;
            if (v97)
            {
              operator delete(v97);
            }
          }

          else
          {
            *__p[0].__end_ = -1;
            v96 = v95 + 2;
          }

          __p[0].__end_ = v96;
          v105 = *(v1 + 7);
          operations_research::sat::WeightedSumLowerOrEqual<std::vector<long long>>(&v259, __p, v258);
        }

        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      v220 = operations_research::sat::MinimizeIntegerVariableWithLinearScanAndLazyEncoding(*(v1 + 16), v1 + 104, *(v1 + 7));
      v58 = 1;
      goto LABEL_61;
    }

    if (dword_2810C0B80 < 1 || !absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C0B78, dword_2810C0B80))
    {
      goto LABEL_84;
    }

    v246 = 0;
    v194 = *(v1 + 9);
    v193 = *(v1 + 10);
    if (v194 == v193)
    {
LABEL_343:
      v205 = *(*(v1 + 5) + 40);
      v206 = 8 * *(v1 + 16);
      v207 = *(v205 + v206);
      v208 = *(v205 + (v206 ^ 8));
      v209 = -v208;
      if (v207 + v208)
      {
        if (v208 < 0)
        {
          v208 = -v208;
        }

        if (v207 >= 0)
        {
          v211 = v207;
        }

        else
        {
          v211 = -v207;
        }

        if (v208 <= v211)
        {
          v208 = v211;
        }

        v210 = vcvtpd_s64_f64((v209 - v207) * 100.0 / v208);
      }

      else
      {
        v210 = 0;
      }

      v245 = v210;
      if (dword_2810C0B98 >= 1)
      {
        v1 = v232;
        if (absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C0B90, dword_2810C0B98))
        {
          absl::lts_20240722::log_internal::LogMessage::LogMessage(v244, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/optimization.cc", 1179);
          v212 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v244, 1);
          *&v259 = "unscaled_next_obj_range:[";
          *(&v259 + 1) = 25;
          v214 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v207, &__p[0].__end_cap_, v213);
          __p[0].__begin_ = &__p[0].__end_cap_;
          __p[0].__end_ = (v214 - &__p[0].__end_cap_);
          v254 = ",";
          v255 = 1;
          v216 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v209, v253, v215);
          *&v252 = v253;
          *(&v252 + 1) = v216 - v253;
          *&v251 = "] gap:";
          *(&v251 + 1) = 6;
          v241 = *(v232 + 12);
          v242 = 0;
          v240 = *(*(v232 + 1) + 16);
          absl::lts_20240722::StrCat<int,char [2],char [14],unsigned long,char [8],long long,char [8],int,char [8],int>(&v259, __p, &v254, &v252, &v251, &v245, "%", " assumptions:", &v243, &v242, " strat:", &v241, " depth:", &v246, " BOOL: ", &v240);
          absl::lts_20240722::log_internal::LogMessage::operator<<(v212, &v243);
          if (SHIBYTE(v243.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v243.__r_.__value_.__l.__data_);
          }

          absl::lts_20240722::log_internal::LogMessage::~LogMessage(v244);
          v1 = v232;
        }
      }

LABEL_84:
      absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,int,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_> const,int>>,256,false>>::clear(&v247);
      v252 = 0uLL;
      v253[0] = 0;
      memset(&v239, 0, sizeof(v239));
      v236 = 0;
      v237 = 0;
      v238 = 0;
      v65 = *(v1 + 12);
      v66 = *(v1 + 7);
      *(&v252 + 1) = 0;
      v67 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(v66);
      v229 = operations_research::sat::Model::GetOrCreate<operations_research::TimeLimit>(v66);
      v226 = v66;
      while (1)
      {
        if (operations_research::TimeLimit::LimitReached(v229))
        {
          v58 = 3;
          v93 = v236;
          if (v236)
          {
            goto LABEL_162;
          }

LABEL_163:
          if (v239.__begin_)
          {
            v239.__end_ = v239.__begin_;
            operator delete(v239.__begin_);
          }

          if (v58 == 1)
          {
            v220 = 1;
            v94 = v252;
            if (v252)
            {
              goto LABEL_313;
            }
          }

          else
          {
            if (v58 != 2)
            {
              goto LABEL_191;
            }

            if (!operations_research::sat::CoreBasedOptimizer::ProcessSolution(v1))
            {
              goto LABEL_312;
            }

            if ((*(v1 + 137) & 1) == 0)
            {
              if (v252 == *(&v252 + 1))
              {
                operations_research::sat::CoreBasedOptimizer::ComputeNextStratificationThreshold(v1);
                if (*(v1 + 12))
                {
                  v58 = 4;
                }

                else
                {
                  v58 = 1;
                }

                v190 = v220;
                if (!*(v1 + 12))
                {
                  v190 = 1;
                }

                v220 = v190;
                v94 = v252;
                if (!v252)
                {
                  goto LABEL_61;
                }

                goto LABEL_313;
              }

LABEL_191:
              if (operations_research::sat::SatSolver::ResetToLevelZero(*(v1 + 1)))
              {
                v230 = *(&v252 + 1);
                v107 = v252;
                if (v252 == *(&v252 + 1))
                {
LABEL_193:
                  v108 = v220;
                  if (v58 == 3)
                  {
                    v108 = 3;
                  }

                  v220 = v108;
                  v58 = v58 == 3;
                  v94 = v252;
                  if (!v252)
                  {
                    goto LABEL_61;
                  }

                  goto LABEL_313;
                }

                while (1)
                {
                  v109 = *v107;
                  v110 = *(v107 + 1);
                  if ((v110 - *v107) != 4)
                  {
                    break;
                  }

                  if ((operations_research::sat::SatSolver::AddUnitClause(*(v1 + 1), *v109 ^ 1u) & 1) == 0)
                  {
                    v58 = 1;
                    v220 = 1;
                    v94 = v252;
                    if (!v252)
                    {
                      goto LABEL_61;
                    }

LABEL_313:
                    v185 = *(&v252 + 1);
                    v186 = v94;
                    if (*(&v252 + 1) != v94)
                    {
                      v187 = *(&v252 + 1);
                      do
                      {
                        v189 = *(v187 - 3);
                        v187 -= 24;
                        v188 = v189;
                        if (v189)
                        {
                          *(v185 - 2) = v188;
                          operator delete(v188);
                        }

                        v185 = v187;
                      }

                      while (v187 != v94);
                      v186 = v252;
                    }

                    *(&v252 + 1) = v94;
                    operator delete(v186);
                    goto LABEL_61;
                  }

LABEL_197:
                  v107 = (v107 + 24);
                  if (v107 == v230)
                  {
                    goto LABEL_193;
                  }
                }

                if (v109 == v110)
                {
                  v113 = 0;
                  v112 = 0;
                  v111 = 0;
                  v114 = 0x7FFFFFFFFFFFFFFELL;
                  v115 = 1;
LABEL_233:
                  if (dword_2810C0BB0 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C0BA8, dword_2810C0BB0))
                  {
                    absl::lts_20240722::log_internal::LogMessage::LogMessage(&v254, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/optimization.cc", 1266);
                    v184 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v254, 1);
                    *&v259 = (*(v107 + 1) - *v107) >> 2;
                    *(&v259 + 1) = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<unsigned long>;
                    v260 = v114;
                    v261 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<long long>;
                    v262 = v113;
                    v263 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<long long>;
                    v264 = v115;
                    v265 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<long long>;
                    v266 = v112;
                    v267 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<long long>;
                    v268 = v111;
                    v269 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<int>;
                    absl::lts_20240722::str_format_internal::FormatPack("core:%u weight:[%d,%d] domain:[%d,%d] depth:%d", 46, &v259, 6uLL, __p);
                    absl::lts_20240722::log_internal::LogMessage::operator<<(v184, __p);
                    if (SHIBYTE(__p[0].__end_cap_.__value_) < 0)
                    {
                      operator delete(__p[0].__begin_);
                    }

                    absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v254);
                    v1 = v232;
                  }

                  v227 = operations_research::sat::IntegerTrail::AddIntegerVariable(*(v1 + 5), v115, v112);
                  LODWORD(v259) = v227;
                  *(&v259 + 1) = v114;
                  LODWORD(v260) = v111;
                  v261 = 0;
                  v262 = 0;
                  std::vector<operations_research::sat::CoreBasedOptimizer::ObjectiveTerm>::push_back[abi:ne200100](v1 + 72, &v259);
                  *(*(v1 + 10) - 8) = v112;
                  v259 = 0uLL;
                  v260 = 0;
                  memset(__p, 0, 24);
                  v132 = *v107;
                  v133 = *(v107 + 1);
                  if (*v107 == v133)
                  {
                    v134 = 0;
                    v135 = 0;
                    goto LABEL_283;
                  }

LABEL_238:
                  v137 = *v132;
                  v138 = v247;
                  for (i = *(v247 + 10); !*(v138 + 10); i = *(v138 + 10))
                  {
LABEL_246:
                    if (*(v138 + 11))
                    {
                      while (i == *(v138 + 10))
                      {
                        LODWORD(i) = *(v138 + 8);
                        v138 = *v138;
                        if (*(v138 + 11))
                        {
                          goto LABEL_251;
                        }
                      }

                      if (v137 < SHIDWORD(v138[i + 1]))
                      {
LABEL_251:
                        v142 = *(v248 + 10);
LABEL_365:
                        absl::lts_20240722::base_internal::ThrowStdOutOfRange("absl::btree_map::at", v131);
                      }

                      if (v138 == v248 && i == *(v248 + 10))
                      {
                        goto LABEL_365;
                      }

                      v144 = *(v1 + 9) + 40 * SLODWORD(v138[i + 2]);
                      *(v144 + 8) -= v114;
                      v145 = *(&v259 + 1);
                      if (*(&v259 + 1) >= v260)
                      {
                        v147 = v259;
                        v148 = *(&v259 + 1) - v259;
                        v149 = (*(&v259 + 1) - v259) >> 2;
                        v150 = v149 + 1;
                        if ((v149 + 1) >> 62)
                        {
                          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                        }

                        v151 = v260 - v259;
                        if ((v260 - v259) >> 1 > v150)
                        {
                          v150 = v151 >> 1;
                        }

                        if (v151 >= 0x7FFFFFFFFFFFFFFCLL)
                        {
                          v152 = 0x3FFFFFFFFFFFFFFFLL;
                        }

                        else
                        {
                          v152 = v150;
                        }

                        if (v152)
                        {
                          if (!(v152 >> 62))
                          {
                            operator new();
                          }

                          std::__throw_bad_array_new_length[abi:ne200100]();
                        }

                        v153 = (4 * v149);
                        v154 = *v144;
                        v155 = &v153[-((*(&v259 + 1) - v259) >> 2)];
                        *v153 = v154;
                        v146 = v153 + 1;
                        memcpy(v155, v147, v148);
                        *&v259 = v155;
                        *(&v259 + 1) = v146;
                        v260 = 0;
                        if (v147)
                        {
                          operator delete(v147);
                        }
                      }

                      else
                      {
                        **(&v259 + 1) = *v144;
                        v146 = (v145 + 4);
                      }

                      *(&v259 + 1) = v146;
                      v156 = __p[0].__end_;
                      if (__p[0].__end_ < __p[0].__end_cap_.__value_)
                      {
                        *__p[0].__end_ = 1;
                        v136 = v156 + 2;
                      }

                      else
                      {
                        v157 = __p[0].__begin_;
                        v158 = __p[0].__end_ - __p[0].__begin_;
                        v159 = (__p[0].__end_ - __p[0].__begin_) >> 3;
                        v160 = v159 + 1;
                        if ((v159 + 1) >> 61)
                        {
                          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                        }

                        v161 = __p[0].__end_cap_.__value_ - __p[0].__begin_;
                        if (__p[0].__end_cap_.__value_ - __p[0].__begin_ > v160)
                        {
                          v160 = v161 >> 2;
                        }

                        if (v161 >= 0x7FFFFFFFFFFFFFF8)
                        {
                          v162 = 0x1FFFFFFFFFFFFFFFLL;
                        }

                        else
                        {
                          v162 = v160;
                        }

                        if (v162)
                        {
                          if (!(v162 >> 61))
                          {
                            operator new();
                          }

                          std::__throw_bad_array_new_length[abi:ne200100]();
                        }

                        *(8 * v159) = 1;
                        v136 = (8 * v159 + 8);
                        memcpy(0, v157, v158);
                        __p[0].__begin_ = 0;
                        __p[0].__end_ = v136;
                        __p[0].__end_cap_.__value_ = 0;
                        if (v157)
                        {
                          operator delete(v157);
                        }
                      }

                      __p[0].__end_ = v136;
                      if (++v132 == v133)
                      {
                        v134 = *(&v259 + 1);
                        v135 = v260;
                        if (*(&v259 + 1) < v260)
                        {
                          **(&v259 + 1) = v227;
                          v163 = (v134 + 4);
                          goto LABEL_294;
                        }

LABEL_283:
                        v164 = v259;
                        v165 = v134 - v259;
                        v166 = (v134 - v259) >> 2;
                        v167 = v166 + 1;
                        if ((v166 + 1) >> 62)
                        {
                          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                        }

                        v168 = v135 - v259;
                        if (v168 >> 1 > v167)
                        {
                          v167 = v168 >> 1;
                        }

                        if (v168 >= 0x7FFFFFFFFFFFFFFCLL)
                        {
                          v169 = 0x3FFFFFFFFFFFFFFFLL;
                        }

                        else
                        {
                          v169 = v167;
                        }

                        if (v169)
                        {
                          if (!(v169 >> 62))
                          {
                            operator new();
                          }

                          std::__throw_bad_array_new_length[abi:ne200100]();
                        }

                        v170 = v166;
                        v171 = (4 * v166);
                        v172 = &v171[-v170];
                        *v171 = v227;
                        v163 = v171 + 1;
                        memcpy(v172, v164, v165);
                        *&v259 = v172;
                        *(&v259 + 1) = v163;
                        v260 = 0;
                        if (v164)
                        {
                          operator delete(v164);
                        }

LABEL_294:
                        *(&v259 + 1) = v163;
                        v173 = __p[0].__end_;
                        if (__p[0].__end_ >= __p[0].__end_cap_.__value_)
                        {
                          v175 = __p[0].__begin_;
                          v176 = __p[0].__end_ - __p[0].__begin_;
                          v177 = (__p[0].__end_ - __p[0].__begin_) >> 3;
                          v178 = v177 + 1;
                          if ((v177 + 1) >> 61)
                          {
                            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                          }

                          v179 = __p[0].__end_cap_.__value_ - __p[0].__begin_;
                          if (__p[0].__end_cap_.__value_ - __p[0].__begin_ > v178)
                          {
                            v178 = v179 >> 2;
                          }

                          if (v179 >= 0x7FFFFFFFFFFFFFF8)
                          {
                            v180 = 0x1FFFFFFFFFFFFFFFLL;
                          }

                          else
                          {
                            v180 = v178;
                          }

                          if (v180)
                          {
                            if (!(v180 >> 61))
                            {
                              operator new();
                            }

                            std::__throw_bad_array_new_length[abi:ne200100]();
                          }

                          v181 = (8 * v177);
                          v182 = &v181[-((__p[0].__end_ - __p[0].__begin_) >> 3)];
                          *v181 = -1;
                          v174 = (v181 + 1);
                          memcpy(v182, v175, v176);
                          __p[0].__begin_ = v182;
                          __p[0].__end_ = v174;
                          __p[0].__end_cap_.__value_ = 0;
                          if (v175)
                          {
                            operator delete(v175);
                          }
                        }

                        else
                        {
                          *__p[0].__end_ = -1;
                          v174 = v173 + 2;
                        }

                        __p[0].__end_ = v174;
                        v183 = *(v1 + 7);
                        operations_research::sat::WeightedSumLowerOrEqual<std::vector<long long>>(&v259, __p, v250);
                      }

                      goto LABEL_238;
                    }

                    v138 = v138[i + 32];
                  }

                  v140 = 0;
                  do
                  {
                    v141 = (i + v140) >> 1;
                    if (SHIDWORD(v138[v141 + 1]) < v137)
                    {
                      v140 = v141 + 1;
                    }

                    else
                    {
                      i = (i + v140) >> 1;
                    }
                  }

                  while (v140 != i);
                  goto LABEL_246;
                }

                v111 = 0;
                v112 = 0;
                v113 = 0;
                v114 = 0x7FFFFFFFFFFFFFFELL;
                v115 = 1;
LABEL_203:
                v116 = *v109;
                v117 = v247;
                v118 = *(v247 + 10);
                if (*(v247 + 10))
                {
                  goto LABEL_206;
                }

                while (1)
                {
                  do
                  {
                    if (*(v117 + 11))
                    {
                      while (v118 == *(v117 + 10))
                      {
                        LODWORD(v118) = *(v117 + 8);
                        v117 = *v117;
                        if (*(v117 + 11))
                        {
                          v121 = *(v248 + 10);
                          v122 = v248;
                          v123 = v121;
                          goto LABEL_222;
                        }
                      }

                      v124 = v116 < SHIDWORD(v117[v118 + 1]);
                      v121 = *(v248 + 10);
                      if (v116 >= SHIDWORD(v117[v118 + 1]))
                      {
                        v122 = v117;
                      }

                      else
                      {
                        v122 = v248;
                      }

                      if (v124)
                      {
                        v123 = *(v248 + 10);
                      }

                      else
                      {
                        v123 = v118;
                      }

                      if (v122 != v248)
                      {
                        goto LABEL_223;
                      }

LABEL_222:
                      if (v123 == v121)
                      {
                        absl::lts_20240722::base_internal::ThrowStdOutOfRange("absl::btree_map::at", v106);
                      }

LABEL_223:
                      v125 = (*(v1 + 9) + 40 * SLODWORD(v122[v123 + 2]));
                      v126 = *(*(v1 + 5) + 40);
                      v127 = 8 * *v125;
                      v128 = *(v126 + v127);
                      if (*(v125 + 3) < v128)
                      {
                        goto LABEL_197;
                      }

                      v129 = *(v125 + 1);
                      if (v129 < v114)
                      {
                        v114 = *(v125 + 1);
                      }

                      if (v113 <= v129)
                      {
                        v113 = *(v125 + 1);
                      }

                      v130 = v125[4];
                      if (v111 <= v130 + 1)
                      {
                        v111 = v130 + 1;
                      }

                      v115 += v128;
                      v112 -= *(v126 + (v127 ^ 8));
                      if (++v109 == v110)
                      {
                        goto LABEL_233;
                      }

                      goto LABEL_203;
                    }

                    v117 = v117[v118 + 32];
                    v118 = *(v117 + 10);
                  }

                  while (!*(v117 + 10));
LABEL_206:
                  v119 = 0;
                  do
                  {
                    v120 = (v118 + v119) >> 1;
                    if (SHIDWORD(v117[v120 + 1]) < v116)
                    {
                      v119 = v120 + 1;
                    }

                    else
                    {
                      v118 = (v118 + v119) >> 1;
                    }
                  }

                  while (v119 != v118);
                }
              }

LABEL_312:
              v58 = 1;
              v220 = 1;
              v94 = v252;
              if (v252)
              {
                goto LABEL_313;
              }

              goto LABEL_61;
            }

            v220 = 3;
            v58 = 1;
            v94 = v252;
            if (v252)
            {
              goto LABEL_313;
            }
          }

LABEL_61:
          if ((v58 | 4) != 4)
          {
            goto LABEL_361;
          }

          goto LABEL_62;
        }

        v58 = operations_research::sat::ResetAndSolveIntegerProblem(&v239, v66);
        if (v58)
        {
          goto LABEL_161;
        }

        operations_research::sat::SatSolver::GetLastIncompatibleDecisions(v67, __p);
        if (*(operations_research::sat::SatSolver::parameters(v67) + 488) >= 1)
        {
          operations_research::sat::MinimizeCoreWithPropagation(v229, v67, __p);
        }

        v69 = __p[0].__begin_;
        v68 = __p[0].__end_;
        if ((__p[0].__end_ - __p[0].__begin_) == 4)
        {
          v70 = operations_research::sat::SatSolver::AddUnitClause(v67, *__p[0].__begin_ ^ 1u);
          v69 = __p[0].__begin_;
          if (!v70)
          {
            v73 = 1;
            LODWORD(v224) = 1;
            if (__p[0].__begin_)
            {
              goto LABEL_108;
            }

            goto LABEL_109;
          }

          v68 = __p[0].__end_;
        }

        if (v69 == v68)
        {
          LODWORD(v224) = v67[528];
          v73 = 1;
          if (!v69)
          {
            goto LABEL_109;
          }

LABEL_108:
          __p[0].__end_ = v69;
          operator delete(v69);
          goto LABEL_109;
        }

        v71 = *(&v252 + 1);
        if (*(&v252 + 1) >= v253[0])
        {
          v72 = std::vector<std::vector<operations_research::sat::Literal>>::__emplace_back_slow_path<std::vector<operations_research::sat::Literal> const&>(&v252, __p);
        }

        else
        {
          **(&v252 + 1) = 0;
          v71[1] = 0;
          v71[2] = 0;
          if (__p[0].__end_ != __p[0].__begin_)
          {
            if (((__p[0].__end_ - __p[0].__begin_) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          v72 = v71 + 3;
          v66 = v226;
        }

        *(&v252 + 1) = v72;
        v74 = operations_research::sat::SatSolver::parameters(v67);
        v69 = __p[0].__begin_;
        if (*(v74 + 549) != 1)
        {
          v73 = 2;
          if (__p[0].__begin_)
          {
            goto LABEL_108;
          }

          goto LABEL_109;
        }

        v75 = __p[0].__end_;
        v254 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::sat::Literal,std::less<operations_research::sat::Literal>,std::allocator<operations_research::sat::Literal>,256,false>>::EmptyNode(void)::empty_node;
        v255 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::sat::Literal,std::less<operations_research::sat::Literal>,std::allocator<operations_research::sat::Literal>,256,false>>::EmptyNode(void)::empty_node;
        v256 = 0;
        if (__p[0].__begin_ != __p[0].__end_)
        {
          do
          {
            absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::sat::Literal,std::less<operations_research::sat::Literal>,std::allocator<operations_research::sat::Literal>,256,false>>::insert_hint_unique<operations_research::sat::Literal,operations_research::sat::Literal&>(&v254, v255, v255[10], v69, v69, &v259);
            ++v69;
          }

          while (v69 != v75);
        }

        if (v239.__end_ != v239.__begin_)
        {
          break;
        }

LABEL_143:
        absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::sat::Literal,std::less<operations_research::sat::Literal>,std::allocator<operations_research::sat::Literal>,256,false>>::clear(&v254);
        v84 = v236;
        v85 = v239.__begin_;
        v86 = v239.__end_ - v239.__begin_;
        if (v239.__end_ == v239.__begin_)
        {
          v91 = 0;
        }

        else
        {
          v87 = 0;
          v88 = 0;
          v89 = 1;
          do
          {
            v90 = *&v84[8 * v87];
            if (v90 >= v65)
            {
              v85[v88] = v85[v87];
              *&v84[8 * v88++] = v90;
            }

            v87 = v89++;
          }

          while (v86 > v87);
          v91 = v88;
          if (v88 > v86)
          {
            std::vector<int>::__append(&v239, v88 - v86);
            v84 = v236;
            goto LABEL_153;
          }
        }

        if (v86 > v91)
        {
          v239.__end_ = &v85[v91];
        }

LABEL_153:
        v92 = (v237 - v84) >> 3;
        if (v91 <= v92)
        {
          if (v91 < v92)
          {
            v237 = &v84[8 * v91];
          }
        }

        else
        {
          std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::__append(&v236, v91 - v92);
        }

        operator delete(0);
        v73 = 0;
        v69 = __p[0].__begin_;
        v66 = v226;
        if (__p[0].__begin_)
        {
          goto LABEL_108;
        }

LABEL_109:
        if (v73)
        {
          v58 = v224;
          if (v73 == 2)
          {
LABEL_160:
            v58 = 0;
          }

LABEL_161:
          v93 = v236;
          if (!v236)
          {
            goto LABEL_163;
          }

LABEL_162:
          v237 = v93;
          operator delete(v93);
          goto LABEL_163;
        }

        if (v239.__begin_ == v239.__end_)
        {
          goto LABEL_160;
        }
      }

      v76 = 0;
      v77 = *v239.__begin_;
      v78 = v254;
      v79 = *(v254 + 10);
      if (*(v254 + 10))
      {
        goto LABEL_125;
      }

      while (1)
      {
        do
        {
          while (v78[11])
          {
            while (v79 == v78[10])
            {
              LODWORD(v79) = v78[8];
              v78 = *v78;
              if (v78[11])
              {
                v82 = v255;
LABEL_135:
                v82[10];
                goto LABEL_121;
              }
            }

            v82 = v255;
            if (v77 < *&v78[4 * v79 + 12])
            {
              goto LABEL_135;
            }

            if (v78 != v255 || v79 != v255[10])
            {
              operator new();
            }

LABEL_121:
            if (++v76 >= (v239.__end_ - v239.__begin_))
            {
              goto LABEL_143;
            }

            v77 = v239.__begin_[v76];
            v78 = v254;
            v79 = *(v254 + 10);
            if (*(v254 + 10))
            {
              goto LABEL_125;
            }
          }

          v78 = *&v78[8 * v79 + 256];
          v79 = v78[10];
        }

        while (!v78[10]);
LABEL_125:
        v80 = 0;
        do
        {
          v81 = (v79 + v80) >> 1;
          if (*&v78[4 * v81 + 12] < v77)
          {
            v80 = v81 + 1;
          }

          else
          {
            v79 = (v79 + v80) >> 1;
          }
        }

        while (v80 != v79);
      }
    }

    v195 = 0xCCCCCCCCCCCCCCDLL * (v193 - v194) - 8;
    if (v195 > 0x37)
    {
      v198 = (v195 >> 3) + 1;
      v197 = v194 + 40 * (v198 & 0x3FFFFFFFFFFFFFF8);
      v199 = (v194 + 176);
      v200 = 0uLL;
      v201 = v198 & 0x3FFFFFFFFFFFFFF8;
      v202 = 0uLL;
      do
      {
        v203.i32[0] = *(v199 - 40);
        v203.i32[1] = *(v199 - 30);
        v203.i32[2] = *(v199 - 20);
        v203.i32[3] = *(v199 - 10);
        v204.i32[0] = *v199;
        v204.i32[1] = v199[10];
        v204.i32[2] = v199[20];
        v204.i32[3] = v199[30];
        v200 = vmaxq_s32(v200, v203);
        v202 = vmaxq_s32(v202, v204);
        v199 += 80;
        v201 -= 8;
      }

      while (v201);
      v196 = vmaxvq_s32(vmaxq_s32(v200, v202));
      if (v198 == (v198 & 0x3FFFFFFFFFFFFFF8))
      {
LABEL_342:
        v246 = v196;
        goto LABEL_343;
      }
    }

    else
    {
      v196 = 0;
      v197 = *(v1 + 9);
    }

    do
    {
      if (v196 <= *(v197 + 16))
      {
        v196 = *(v197 + 16);
      }

      v197 += 40;
    }

    while (v197 != v193);
    goto LABEL_342;
  }

  if (operations_research::sat::CoreBasedOptimizer::CoverOptimization(v1))
  {
    if (*(v1 + 137))
    {
      goto LABEL_359;
    }

    goto LABEL_67;
  }

LABEL_358:
  v217 = 1;
LABEL_360:
  v220 = v217;
LABEL_361:
  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,int,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_> const,int>>,256,false>>::clear(&v247);
LABEL_362:
  v218 = *MEMORY[0x277D85DE8];
  return v220;
}

void sub_23CC7C384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, void *a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42, uint64_t a43, uint64_t a44, unsigned __int8 **a45)
{
  if (a41 < 0)
  {
    operator delete(__p);
  }

  absl::lts_20240722::log_internal::LogMessage::~LogMessage(&a42);
  if (a25)
  {
    operator delete(a25);
    if (!a26)
    {
LABEL_5:
      if (!a23)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if (!a26)
  {
    goto LABEL_5;
  }

  operator delete(a26);
  if (!a23)
  {
LABEL_7:
    absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,int,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_> const,int>>,256,false>>::clear(&a45);
    _Unwind_Resume(a1);
  }

LABEL_6:
  operator delete(a23);
  goto LABEL_7;
}

char *absl::lts_20240722::StrCat<int,char [2],char [14],unsigned long,char [8],long long,char [8],int,char [8],int>@<X0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, char *a3@<X2>, __int128 *a4@<X3>, _OWORD *a5@<X4>, unsigned int *a6@<X5>, const char *a7@<X6>, const char *a8@<X7>, std::string *a9@<X8>, unint64_t *a10, const char *a11, unint64_t *a12, const char *a13, unsigned int *a14, const char *a15, unsigned int *a16)
{
  v71 = *MEMORY[0x277D85DE8];
  v18 = *a2;
  v50[0] = *a1;
  v50[1] = v18;
  v19 = *a4;
  v50[2] = *a3;
  v50[3] = v19;
  v50[4] = *a5;
  v20 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*a6, v49, a3);
  v47 = v49;
  v48 = v20 - v49;
  v51 = v49;
  v52 = v20 - v49;
  v21 = strlen(a7);
  v53 = a7;
  v54 = v21;
  v22 = strlen(a8);
  v55 = a8;
  v56 = v22;
  v24 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*a10, v46, v23);
  v44 = v46;
  v45 = v24 - v46;
  v57 = v46;
  v58 = v24 - v46;
  v25 = strlen(a11);
  v59 = a11;
  v60 = v25;
  v27 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*a12, v43, v26);
  v41 = v43;
  v42 = v27 - v43;
  v61 = v43;
  v62 = v27 - v43;
  v28 = strlen(a13);
  v63 = a13;
  v64 = v28;
  v30 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*a14, v40, v29);
  v38 = v40;
  v39 = v30 - v40;
  v65 = v40;
  v66 = v30 - v40;
  v31 = strlen(a15);
  v67 = a15;
  v68 = v31;
  v36 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*a16, v37, v32) - v37;
  v69 = v37;
  v70 = v36;
  result = absl::lts_20240722::strings_internal::CatPieces(v50, 15, a9);
  v34 = *MEMORY[0x277D85DE8];
  return result;
}

void **std::deque<operations_research::sat::EncodingNode>::~deque[abi:ne200100](void **a1)
{
  std::deque<operations_research::sat::EncodingNode>::clear(a1);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 != v3)
  {
    do
    {
      v4 = *v2++;
      operator delete(v4);
    }

    while (v2 != v3);
    v2 = a1[1];
    v3 = a1[2];
  }

  if (v3 != v2)
  {
    do
    {
      --v3;
    }

    while (v3 != v2);
    a1[2] = v3;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::deque<operations_research::sat::EncodingNode>::clear(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    a1[5] = 0;
    v11 = v3 - v2;
    if (v11 < 3)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v4 = a1[4];
  v5 = &v2[v4 / 0x27];
  v6 = *v5 + 104 * (v4 % 0x27);
  v7 = v2[(a1[5] + v4) / 0x27] + 104 * ((a1[5] + v4) % 0x27);
  if (v6 != v7)
  {
    while (1)
    {
      v8 = *(v6 + 10);
      if (v8)
      {
        *(v6 + 11) = v8;
        operator delete(v8);
      }

      v9 = *(v6 + 9);
      if (v9 != v6 + 48)
      {
        break;
      }

      (*(*v9 + 32))(v9);
      v6 += 104;
      if (v6 - *v5 == 4056)
      {
        goto LABEL_13;
      }

LABEL_4:
      if (v6 == v7)
      {
        v2 = a1[1];
        v3 = a1[2];
        goto LABEL_15;
      }
    }

    if (v9)
    {
      (*(*v9 + 40))(v9);
    }

    v6 += 104;
    if (v6 - *v5 != 4056)
    {
      goto LABEL_4;
    }

LABEL_13:
    v10 = v5[1];
    ++v5;
    v6 = v10;
    goto LABEL_4;
  }

LABEL_15:
  a1[5] = 0;
  v11 = v3 - v2;
  if (v11 < 3)
  {
    goto LABEL_17;
  }

  do
  {
LABEL_16:
    operator delete(*v2);
    v12 = a1[2];
    v2 = (a1[1] + 8);
    a1[1] = v2;
    v11 = (v12 - v2) >> 3;
  }

  while (v11 > 2);
LABEL_17:
  if (v11 == 1)
  {
    v13 = 19;
  }

  else
  {
    if (v11 != 2)
    {
      return;
    }

    v13 = 39;
  }

  a1[4] = v13;
}

unsigned __int8 *absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::sat::Literal,std::less<operations_research::sat::Literal>,std::allocator<operations_research::sat::Literal>,256,false>>::insert_hint_unique<operations_research::sat::Literal,operations_research::sat::Literal&>@<X0>(unsigned __int8 *result@<X0>, unsigned __int8 *a2@<X1>, unint64_t a3@<X2>, int *a4@<X3>, _DWORD *a5@<X4>, uint64_t a6@<X8>)
{
  if (!*(result + 2))
  {
    goto LABEL_42;
  }

  v6 = *(result + 1);
  v7 = v6[10];
  if (v6 != a2 || a3 != v7)
  {
    v9 = *a4;
    v10 = *&a2[4 * a3 + 12];
    if (*a4 >= v10)
    {
      if (v10 >= v9)
      {
        *a6 = a2;
        *(a6 + 8) = a3;
        *(a6 + 16) = 0;
        return result;
      }

      if (a2[11])
      {
        v12 = (a3 + 1);
        a3 = a3 & 0xFFFFFFFF00000000 | v12;
        if (v12 == a2[10])
        {
          v13 = a2;
          while (1)
          {
            v14 = *v13;
            if (*(*v13 + 11))
            {
              break;
            }

            v15 = v13[8];
            a3 = a3 & 0xFFFFFFFF00000000 | v15;
            v13 = *v13;
            if (v15 != v14[10])
            {
              goto LABEL_37;
            }
          }

          a3 = a3 & 0xFFFFFFFF00000000 | v12;
        }

        v14 = a2;
      }

      else
      {
        v20 = &a2[8 * (a3 + 1) + 256];
        do
        {
          v14 = *v20;
          v21 = *(*v20 + 11);
          v20 = *v20 + 256;
        }

        while (!v21);
        a3 &= 0xFFFFFFFF00000000;
      }

LABEL_37:
      if ((v14 != v6 || a3 != v7) && v9 >= *&v14[4 * a3 + 12])
      {
        goto LABEL_42;
      }

      a2 = v14;
      goto LABEL_41;
    }
  }

  if (**result == a2 && a3 == 0)
  {
    goto LABEL_41;
  }

  if (!a2[11])
  {
      ;
    }

    if (*(i + 4 * (*(i + 10) - 1) + 12) >= *a4)
    {
      goto LABEL_42;
    }

LABEL_41:
    result = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::sat::Literal,std::less<operations_research::sat::Literal>,std::allocator<operations_research::sat::Literal>,256,false>>::internal_emplace<operations_research::sat::Literal&>(result, a2, a3, a5);
    *a6 = result;
    *(a6 + 8) = v23;
    *(a6 + 16) = 1;
    return result;
  }

  if (a3 - 1 < 0)
  {
    v17 = a2;
    while (1)
    {
      v18 = *v17;
      if (*(*v17 + 11))
      {
        break;
      }

      v19 = v17[8];
      v17 = *v17;
      if (v19)
      {
        if (*(v18 + 4 * (v19 - 1) + 12) >= *a4)
        {
          goto LABEL_42;
        }

        goto LABEL_41;
      }
    }
  }

  if (*&a2[4 * a3 + 8] < *a4)
  {
    goto LABEL_41;
  }

LABEL_42:

  return absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::sat::Literal,std::less<operations_research::sat::Literal>,std::allocator<operations_research::sat::Literal>,256,false>>::insert_unique<operations_research::sat::Literal,operations_research::sat::Literal&>(result, a4, a5, a6);
}

unsigned __int8 *absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::sat::Literal,std::less<operations_research::sat::Literal>,std::allocator<operations_research::sat::Literal>,256,false>>::internal_emplace<operations_research::sat::Literal&>(uint64_t a1, unsigned __int8 *a2, uint64_t a3, _DWORD *a4)
{
  i = a2;
  v31 = a3;
  v6 = a2[11];
  if (a2[11])
  {
    if (a2[10] == v6)
    {
      goto LABEL_3;
    }

LABEL_10:
    v7 = a2;
    v8 = a3;
    v9 = a2[10];
    v10 = v9 - a3;
    if (v9 <= a3)
    {
      goto LABEL_21;
    }

    goto LABEL_13;
  }

  a2 = *&a2[8 * a3 + 256];
  for (i = a2; !a2[11]; i = a2)
  {
    a2 = *&a2[8 * a2[10] + 256];
  }

  LOBYTE(a3) = a2[10];
  LODWORD(v31) = a3;
  v6 = a2[11];
  if (!a2[11])
  {
    v6 = 61;
  }

  if (a2[10] != v6)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v6 <= 0x3C)
  {
    operator new();
  }

  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::sat::Literal,std::less<operations_research::sat::Literal>,std::allocator<operations_research::sat::Literal>,256,false>>::rebalance_or_split(a1, &i);
  v7 = i;
  v8 = v31;
  v9 = i[10];
  v10 = v9 - v31;
  if (v9 > v31)
  {
LABEL_13:
    v11 = v10;
    if ((v10 & 0x3FFFFFFFFFFFFFFFLL) != 0)
    {
      v12 = &v7[4 * v8 + 12];
      v13 = v12 + 4 * v11;
      v14 = v13 + 4;
      v15 = 4 * v9;
      v16 = 4 * v9 - 4 * v8 - 4;
      if (v16 < 0x1C)
      {
        goto LABEL_18;
      }

      v17 = (v16 >> 2) + 1;
      v18 = 4 * (v17 & 0x7FFFFFFFFFFFFFF8);
      v14 -= v18;
      v13 -= v18;
      v19 = &v7[v15];
      v20 = v17 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v21 = *(v19 - 4);
        *(v19 - 1) = *(v19 - 20);
        *v19 = v21;
        v19 -= 32;
        v20 -= 8;
      }

      while (v20);
      if (v17 != (v17 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_18:
        v22 = (v14 - 4);
        do
        {
          v23 = *(v13 - 4);
          v13 -= 4;
          *v22-- = v23;
        }

        while (v13 != v12);
      }

      LODWORD(v9) = v7[10];
    }
  }

LABEL_21:
  *&v7[4 * v8 + 12] = *a4;
  v24 = v9 + 1;
  v7[10] = v9 + 1;
  if (!v7[11])
  {
    v25 = v8 + 1;
    if (v25 < v24)
    {
      v26 = v7 + 256;
      do
      {
        v27 = *&v26[8 * (v24 - 1)];
        *&v26[8 * v24] = v27;
        *(v27 + 8) = v24;
      }

      while (v25 < --v24);
    }
  }

  ++*(a1 + 16);
  return i;
}

unsigned __int8 *absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::sat::Literal,std::less<operations_research::sat::Literal>,std::allocator<operations_research::sat::Literal>,256,false>>::insert_unique<operations_research::sat::Literal,operations_research::sat::Literal&>@<X0>(unsigned __int8 *result@<X0>, int *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  if (!*(result + 2))
  {
    operator new();
  }

  v6 = *a2;
  v7 = *result;
  v8 = *(*result + 10);
  if (*(*result + 10))
  {
LABEL_4:
    v9 = 0;
    do
    {
      v10 = (v8 + v9) >> 1;
      if (*&v7[4 * v10 + 12] < v6)
      {
        v9 = v10 + 1;
      }

      else
      {
        v8 = (v8 + v9) >> 1;
      }
    }

    while (v9 != v8);
  }

  while (!v7[11])
  {
    v11 = &v7[8 * v8 + 256];
    v7 = *v11;
    v8 = *(*v11 + 10);
    if (*(*v11 + 10))
    {
      goto LABEL_4;
    }
  }

  v12 = v8;
  v13 = v7;
  while (v8 == v13[10])
  {
    LODWORD(v8) = v13[8];
    v13 = *v13;
    if (v13[11])
    {
      goto LABEL_17;
    }
  }

  if (v6 < *&v13[4 * v8 + 12])
  {
LABEL_17:
    result = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::sat::Literal,std::less<operations_research::sat::Literal>,std::allocator<operations_research::sat::Literal>,256,false>>::internal_emplace<operations_research::sat::Literal&>(result, v7, v12, a3);
    v13 = result;
    LODWORD(v8) = v14;
    v15 = 1;
    goto LABEL_19;
  }

  v15 = 0;
LABEL_19:
  *a4 = v13;
  *(a4 + 8) = v8;
  *(a4 + 16) = v15;
  return result;
}

uint64_t absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::sat::Literal,std::less<operations_research::sat::Literal>,std::allocator<operations_research::sat::Literal>,256,false>>::rebalance_or_split(unsigned __int8 **a1, unsigned __int8 **a2)
{
  v3 = *a2;
  v4 = **a2;
  if (*a2 == *a1)
  {
    operator new();
  }

  v5 = v3[8];
  if (v3[8])
  {
    v6 = *(v4 + 8 * (v5 - 1) + 256);
    v7 = v6[10];
    if (v7 <= 0x3C)
    {
      v8 = *(a2 + 8);
      v9 = (61 - v7) >> (v8 < 0x3D) <= 1u ? 1 : (61 - v7) >> (v8 < 0x3D);
      if (v8 >= v9 || (v9 + v7) <= 0x3Cu)
      {
        result = absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::set_params<operations_research::sat::Literal,std::less<operations_research::sat::Literal>,std::allocator<operations_research::sat::Literal>,256,false>>::rebalance_right_to_left(*(v4 + 8 * (v5 - 1) + 256), v9, v3);
        v18 = *(a2 + 8) - v9;
        *(a2 + 2) = v18;
        if (v18 >= 0)
        {
          return result;
        }

        v16 = v18 + v6[10] + 1;
LABEL_23:
        *(a2 + 2) = v16;
        *a2 = v6;
        return result;
      }
    }
  }

  v10 = *(v4 + 10);
  if (v5 >= v10 || (v6 = *(v4 + 8 * (v5 + 1) + 256), v11 = v6[10], v11 > 0x3C) || ((v12 = *(a2 + 2), (61 - v11) >> (v12 > 0) <= 1u) ? (v13 = 1) : (v13 = (61 - v11) >> (v12 > 0)), (v3[10] - v13) < v12 && (v13 + v11) > 0x3Cu))
  {
    if (v10 == 61)
    {
      v21 = v4;
      v22 = v5;
      absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::sat::Literal,std::less<operations_research::sat::Literal>,std::allocator<operations_research::sat::Literal>,256,false>>::rebalance_or_split(a1, &v21);
      v3 = *a2;
      v14 = **a2;
    }

    v15 = v3[8] + 1;
    if (v3[11])
    {
      operator new();
    }

    operator new();
  }

  result = absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::set_params<operations_research::sat::Literal,std::less<operations_research::sat::Literal>,std::allocator<operations_research::sat::Literal>,256,false>>::rebalance_left_to_right(v3, v13, *(v4 + 8 * (v5 + 1) + 256));
  v19 = *(a2 + 2);
  v20 = (*a2)[10];
  if (v19 > v20)
  {
    v16 = v19 + ~v20;
    goto LABEL_23;
  }

  return result;
}

uint64_t *absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::set_params<operations_research::sat::Literal,std::less<operations_research::sat::Literal>,std::allocator<operations_research::sat::Literal>,256,false>>::rebalance_right_to_left(uint64_t *result, unsigned int a2, uint64_t a3)
{
  v3 = *(result + 10);
  v4 = *(result + 8);
  v5 = *result;
  v6 = result + 4 * v3;
  *(v6 + 12) = *(*result + 4 * v4 + 12);
  v7 = v6 + 12;
  v8 = (a2 - 1);
  v9 = (a3 + 12);
  v10 = (a3 + 12 + 4 * v8);
  if ((v8 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v11 = (a2 + 0x3FFFFFFFFFFFFFFELL) & 0x3FFFFFFFFFFFFFFFLL;
    if (v11 >= 0xB)
    {
      v13 = result + 4 * v3;
      v12 = (a3 + 12);
      if ((v13 - a3 + 4) >= 0x20)
      {
        v14 = v11 + 1;
        v15 = v14 & 0x7FFFFFFFFFFFFFF8;
        v7 += v15 * 4;
        v12 = &v9[v15];
        v16 = (a3 + 28);
        v17 = (v13 + 32);
        v18 = v14 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v19 = *v16;
          *(v17 - 1) = *(v16 - 1);
          *v17 = v19;
          v16 += 2;
          v17 += 2;
          v18 -= 8;
        }

        while (v18);
        if (v14 == (v14 & 0x7FFFFFFFFFFFFFF8))
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      v12 = (a3 + 12);
    }

    v20 = (v7 + 4);
    do
    {
      v21 = *v12++;
      *v20++ = v21;
    }

    while (v12 != v10);
LABEL_10:
    v5 = *result;
    v4 = *(result + 8);
  }

  *(v5 + 4 * v4 + 12) = *v10;
  v22 = *(a3 + 10);
  v23 = a2;
  v24 = v22 - a2;
  if ((v24 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v25 = &v9[a2];
    v26 = 4 * v22 - 4 * a2 - 4;
    v27 = v25;
    if (v26 < 0x1C)
    {
      goto LABEL_16;
    }

    v28 = (v26 >> 2) + 1;
    v29 = v28 & 0x7FFFFFFFFFFFFFF8;
    v9 = (v9 + v29 * 4);
    v27 = &v25[v29];
    v30 = (a3 + 28);
    v31 = (a3 + 28 + 4 * a2);
    v32 = v28 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v33 = *v31;
      *(v30 - 1) = *(v31 - 1);
      *v30 = v33;
      v31 += 2;
      v30 += 2;
      v32 -= 8;
    }

    while (v32);
    if (v28 != (v28 & 0x7FFFFFFFFFFFFFF8))
    {
LABEL_16:
      v34 = &v25[v24];
      do
      {
        v35 = *v27++;
        *v9++ = v35;
      }

      while (v27 != v34);
    }
  }

  if (!*(result + 11))
  {
    if (a2)
    {
      v36 = (a3 + 256);
      v37 = 1;
      do
      {
        v38 = *(result + 10) + v37;
        v39 = *v36++;
        result[v38 + 32] = v39;
        *(v39 + 8) = v38;
        *v39 = result;
        ++v37;
        --v23;
      }

      while (v23);
    }

    if (*(a3 + 10) >= a2)
    {
      v40 = 0;
      v41 = a3 + 256;
      do
      {
        v42 = *(v41 + 8 * (v40 + a2));
        *(v41 + 8 * v40) = v42;
        *(v42 + 8) = v40;
        *v42 = a3;
        ++v40;
      }

      while ((*(a3 + 10) - a2) >= v40);
    }
  }

  *(result + 10) += a2;
  *(a3 + 10) -= a2;
  return result;
}

uint64_t absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::set_params<operations_research::sat::Literal,std::less<operations_research::sat::Literal>,std::allocator<operations_research::sat::Literal>,256,false>>::rebalance_left_to_right(uint64_t result, unsigned int a2, uint64_t a3)
{
  v3 = *(a3 + 10);
  v4 = (a3 + 12);
  if (*(a3 + 10))
  {
    v5 = &v4[v3];
    v6 = &v5[a2];
    v7 = (v3 - 1) & 0x3FFFFFFFFFFFFFFFLL;
    if (v7 < 7)
    {
      goto LABEL_6;
    }

    v8 = v7 + 1;
    v9 = 4 * (v8 & 0x7FFFFFFFFFFFFFF8);
    v6 = (v6 - v9);
    v5 = (v5 - v9);
    v10 = a3 + 4 * v3;
    v11 = (v10 + 4 * a2 - 20);
    v12 = (v10 - 4);
    v13 = v8 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v14 = *v12;
      *v11 = *(v12 - 1);
      v11[1] = v14;
      v11 -= 2;
      v12 -= 2;
      v13 -= 8;
    }

    while (v13);
    if (v8 != (v8 & 0x7FFFFFFFFFFFFFF8))
    {
LABEL_6:
      v15 = v6 - 1;
      do
      {
        v16 = *--v5;
        *v15-- = v16;
      }

      while (v5 != v4);
    }
  }

  v17 = (a2 - 1);
  v4[v17] = *(*result + 4 * *(result + 8) + 12);
  v18 = *(result + 10);
  v19 = result + 12;
  if (((a2 - 1) & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v20 = v19 + 4 * (v18 - (a2 - 1));
    v21 = (a2 + 0x3FFFFFFFFFFFFFFELL) & 0x3FFFFFFFFFFFFFFFLL;
    if (v21 >= 0xF)
    {
      v23 = 4 * *(result + 10);
      v22 = (v19 + 4 * (v18 - (a2 - 1)));
      if (4 * a2 + a3 - result - v23 - 4 >= 0x20)
      {
        v24 = v21 + 1;
        v25 = 4 * (v24 & 0x7FFFFFFFFFFFFFF8);
        v4 = (v4 + v25);
        v22 = (v20 + v25);
        v26 = (v23 - 4 * a2 + result + 32);
        v27 = (a3 + 28);
        v28 = v24 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v29 = *v26;
          *(v27 - 1) = *(v26 - 1);
          *v27 = v29;
          v26 += 2;
          v27 += 2;
          v28 -= 8;
        }

        while (v28);
        if (v24 == (v24 & 0x7FFFFFFFFFFFFFF8))
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      v22 = (v19 + 4 * (v18 - (a2 - 1)));
    }

    v30 = (v20 + v17 * 4);
    do
    {
      v31 = *v22++;
      *v4++ = v31;
    }

    while (v22 != v30);
LABEL_17:
    v18 = *(result + 10);
  }

  *(*result + 4 * *(result + 8) + 12) = *(v19 + 4 * (v18 - a2));
  if (!*(result + 11))
  {
    if (((*(a3 + 10) + 1) & 0x100) == 0)
    {
      v32 = a3 + 256;
      v33 = (*(a3 + 10) + 1);
      do
      {
        v34 = *(v32 + 8 * (v33 - 1));
        *(v32 + 8 * (v33 - 1 + a2)) = v34;
        *(v34 + 8) = v33 - 1 + a2;
        *v34 = a3;
        --v33;
      }

      while (v33);
    }

    if (a2)
    {
      v35 = 0;
      if ((a2 + 1) <= 2u)
      {
        v36 = 2;
      }

      else
      {
        v36 = (a2 + 1);
      }

      v37 = v36 - 1;
      do
      {
        v38 = *(result + 256 + 8 * (v35 + 1 - a2 + *(result + 10)));
        *(a3 + 8 * v35 + 256) = v38;
        *(v38 + 8) = v35;
        *v38 = a3;
        ++v35;
      }

      while (v37 != v35);
    }
  }

  *(result + 10) -= a2;
  *(a3 + 10) += a2;
  return result;
}

unsigned __int8 *absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::set_params<operations_research::sat::Literal,std::less<operations_research::sat::Literal>,std::allocator<operations_research::sat::Literal>,256,false>>::split(unsigned __int8 *result, int a2, uint64_t a3)
{
  if (a2 == 61)
  {
    LOBYTE(v3) = 0;
  }

  else if (a2)
  {
    v3 = result[10] >> 1;
  }

  else
  {
    LOBYTE(v3) = result[10] - 1;
  }

  *(a3 + 10) = v3;
  v4 = result[10] - v3;
  result[10] = v4;
  v5 = *(a3 + 10);
  v6 = result + 12;
  if (*(a3 + 10))
  {
    v7 = &v6[4 * v4];
    v8 = (a3 + 12);
    v9 = (v5 - 1) & 0x3FFFFFFFFFFFFFFFLL;
    if (v9 >= 7)
    {
      v11 = &result[4 * v4];
      v10 = &v6[4 * v4];
      if ((a3 - v11) >= 0x20)
      {
        v12 = v9 + 1;
        v13 = 4 * (v12 & 0x7FFFFFFFFFFFFFF8);
        v8 = (v8 + v13);
        v10 = &v7[v13];
        v14 = (v11 + 28);
        v15 = (a3 + 28);
        v16 = v12 & 0x7FFFFFFFFFFFFFF8;
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
        if (v12 == (v12 & 0x7FFFFFFFFFFFFFF8))
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      v10 = &v6[4 * v4];
    }

    v18 = &v7[4 * v5];
    do
    {
      v19 = *v10;
      v10 += 4;
      *v8++ = v19;
    }

    while (v10 != v18);
LABEL_15:
    v4 = result[10];
  }

  result[10] = v4 - 1;
  v20 = *result;
  v21 = result[8];
  v22 = (v4 - 1);
  v23 = *(*result + 10);
  v24 = v23 - v21;
  if (v23 > v21)
  {
    v25 = v24;
    if ((v24 & 0x3FFFFFFFFFFFFFFFLL) != 0)
    {
      v26 = v20 + 4 * result[8] + 12;
      v27 = v26 + 4 * v25;
      v28 = v27 + 4;
      v29 = 4 * v23;
      v30 = 4 * v23 - 4 * v21 - 4;
      if (v30 < 0x1C)
      {
        goto LABEL_22;
      }

      v31 = (v30 >> 2) + 1;
      v32 = 4 * (v31 & 0x7FFFFFFFFFFFFFF8);
      v28 -= v32;
      v27 -= v32;
      v33 = (v20 + v29);
      v34 = v31 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v35 = *(v33 - 4);
        *(v33 - 1) = *(v33 - 20);
        *v33 = v35;
        v33 -= 2;
        v34 -= 8;
      }

      while (v34);
      if (v31 != (v31 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_22:
        v36 = (v28 - 4);
        do
        {
          v37 = *(v27 - 4);
          v27 -= 4;
          *v36-- = v37;
        }

        while (v27 != v26);
      }

      LODWORD(v23) = *(v20 + 10);
    }
  }

  *(v20 + 4 * v21 + 12) = *&v6[4 * v22];
  v38 = v23 + 1;
  *(v20 + 10) = v23 + 1;
  if (!*(v20 + 11))
  {
    v39 = v21 + 1;
    if (v39 < v38)
    {
      v40 = v20 + 256;
      do
      {
        v41 = *(v40 + 8 * (v38 - 1));
        *(v40 + 8 * v38) = v41;
        *(v41 + 8) = v38;
      }

      while (v39 < --v38);
    }
  }

  *(*result + 8 * (result[8] + 1) + 256) = a3;
  v43 = result[11];
  if (!result[11])
  {
    v44 = result[10];
    do
    {
      v45 = *&result[8 * ++v44 + 256];
      *(a3 + 256 + 8 * v43) = v45;
      *(v45 + 8) = v43;
      *v45 = a3;
      ++v43;
    }

    while (*(a3 + 10) >= v43);
  }

  return result;
}

void absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::sat::Literal,std::less<operations_research::sat::Literal>,std::allocator<operations_research::sat::Literal>,256,false>>::clear(unsigned __int8 ***a1)
{
  if (!a1[2])
  {
    goto LABEL_4;
  }

  v2 = *a1;
  if (*(*a1 + 11) || !*(v2 + 10))
  {
    operator delete(v2);
    goto LABEL_4;
  }

  v3 = *v2;
  do
  {
    v2 = v2[32];
  }

  while (!*(v2 + 11));
  v4 = *(v2 + 8);
  v5 = *v2;
  while (1)
  {
    v6 = *&v5[8 * v4 + 256];
    if (!v6[11])
    {
      break;
    }

    v7 = v5;
    operator delete(*&v5[8 * v4 + 256]);
    v5 = v7;
    if (v4 >= v7[10])
    {
      goto LABEL_15;
    }

LABEL_9:
    ++v4;
  }

  do
  {
    v6 = *(v6 + 32);
  }

  while (!v6[11]);
  v4 = v6[8];
  v8 = *v6;
  operator delete(v6);
  v5 = v8;
  if (v4 < v8[10])
  {
    goto LABEL_9;
  }

LABEL_15:
  while (1)
  {
    v4 = v5[8];
    v9 = *v5;
    operator delete(v5);
    if (v9 == v3)
    {
      break;
    }

    v5 = v9;
    if (v4 < v9[10])
    {
      goto LABEL_9;
    }
  }

LABEL_4:
  *a1 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::sat::Literal,std::less<operations_research::sat::Literal>,std::allocator<operations_research::sat::Literal>,256,false>>::EmptyNode(void)::empty_node;
  a1[1] = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::sat::Literal,std::less<operations_research::sat::Literal>,std::allocator<operations_research::sat::Literal>,256,false>>::EmptyNode(void)::empty_node;
  a1[2] = 0;
}

void absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,int,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_> const,int>>,256,false>>::clear(unsigned __int8 ***a1)
{
  if (!a1[2])
  {
    goto LABEL_4;
  }

  v2 = *a1;
  if (*(*a1 + 11) || !*(v2 + 10))
  {
    operator delete(v2);
    goto LABEL_4;
  }

  v3 = *v2;
  do
  {
    v2 = v2[32];
  }

  while (!*(v2 + 11));
  v4 = *(v2 + 8);
  v5 = *v2;
  while (1)
  {
    v6 = *&v5[8 * v4 + 256];
    if (!v6[11])
    {
      break;
    }

    v7 = v5;
    operator delete(*&v5[8 * v4 + 256]);
    v5 = v7;
    if (v4 >= v7[10])
    {
      goto LABEL_15;
    }

LABEL_9:
    ++v4;
  }

  do
  {
    v6 = *(v6 + 32);
  }

  while (!v6[11]);
  v4 = v6[8];
  v8 = *v6;
  operator delete(v6);
  v5 = v8;
  if (v4 < v8[10])
  {
    goto LABEL_9;
  }

LABEL_15:
  while (1)
  {
    v4 = v5[8];
    v9 = *v5;
    operator delete(v5);
    if (v9 == v3)
    {
      break;
    }

    v5 = v9;
    if (v4 < v9[10])
    {
      goto LABEL_9;
    }
  }

LABEL_4:
  *a1 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,int,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_> const,int>>,256,false>>::EmptyNode(void)::empty_node;
  a1[1] = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,int,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_> const,int>>,256,false>>::EmptyNode(void)::empty_node;
  a1[2] = 0;
}

__n128 std::__function::__func<operations_research::sat::CoreBasedOptimizer::OptimizeWithSatEncoding(absl::lts_20240722::Span<operations_research::sat::Literal const>,absl::lts_20240722::Span<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const>,absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::Coefficient_integer_tag_> const>,operations_research::StrongInt64<operations_research::sat::Coefficient_integer_tag_>)::$_0,std::allocator<operations_research::sat::CoreBasedOptimizer::OptimizeWithSatEncoding(absl::lts_20240722::Span<operations_research::sat::Literal const>,absl::lts_20240722::Span<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const>,absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::Coefficient_integer_tag_> const>,operations_research::StrongInt64<operations_research::sat::Coefficient_integer_tag_>)::$_0>,operations_research::sat::Literal ()(int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F43F48;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::CoreBasedOptimizer::OptimizeWithSatEncoding(absl::lts_20240722::Span<operations_research::sat::Literal const>,absl::lts_20240722::Span<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const>,absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::Coefficient_integer_tag_> const>,operations_research::StrongInt64<operations_research::sat::Coefficient_integer_tag_>)::$_0,std::allocator<operations_research::sat::CoreBasedOptimizer::OptimizeWithSatEncoding(absl::lts_20240722::Span<operations_research::sat::Literal const>,absl::lts_20240722::Span<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const>,absl::lts_20240722::Span<operations_research::StrongInt64<operations_research::sat::Coefficient_integer_tag_> const>,operations_research::StrongInt64<operations_research::sat::Coefficient_integer_tag_>)::$_0>,operations_research::sat::Literal ()(int)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat18CoreBasedOptimizer23OptimizeWithSatEncodingEN4absl12lts_202407224SpanIKNS0_7LiteralEEENS4_IKNS_11StrongIndexINS0_26IntegerVariable_index_tag_EEEEENS4_IKNS_11StrongInt64INS0_24Coefficient_integer_tag_EEEEESF_E3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat18CoreBasedOptimizer23OptimizeWithSatEncodingEN4absl12lts_202407224SpanIKNS0_7LiteralEEENS4_IKNS_11StrongIndexINS0_26IntegerVariable_index_tag_EEEEENS4_IKNS_11StrongInt64INS0_24Coefficient_integer_tag_EEEEESF_E3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat18CoreBasedOptimizer23OptimizeWithSatEncodingEN4absl12lts_202407224SpanIKNS0_7LiteralEEENS4_IKNS_11StrongIndexINS0_26IntegerVariable_index_tag_EEEEENS4_IKNS_11StrongInt64INS0_24Coefficient_integer_tag_EEEEESF_E3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat18CoreBasedOptimizer23OptimizeWithSatEncodingEN4absl12lts_202407224SpanIKNS0_7LiteralEEENS4_IKNS_11StrongIndexINS0_26IntegerVariable_index_tag_EEEEENS4_IKNS_11StrongInt64INS0_24Coefficient_integer_tag_EEEEESF_E3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

unsigned __int8 *absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,int,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_> const,int>>,256,false>>::insert_unique<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::piecewise_construct_t const&,std::tuple<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>&&>,std::tuple<>>@<X0>(unsigned __int8 *result@<X0>, int *a2@<X1>, uint64_t a3@<X2>, _DWORD **a4@<X3>, uint64_t a5@<X8>)
{
  if (!*(result + 2))
  {
    operator new();
  }

  v7 = *a2;
  v8 = *result;
  v9 = *(*result + 10);
  if (*(*result + 10))
  {
LABEL_4:
    v10 = 0;
    do
    {
      v11 = (v9 + v10) >> 1;
      if (*&v8[8 * v11 + 12] < v7)
      {
        v10 = v11 + 1;
      }

      else
      {
        v9 = (v9 + v10) >> 1;
      }
    }

    while (v10 != v9);
  }

  while (!v8[11])
  {
    v12 = &v8[8 * v9 + 256];
    v8 = *v12;
    v9 = *(*v12 + 10);
    if (*(*v12 + 10))
    {
      goto LABEL_4;
    }
  }

  v13 = v9;
  v14 = v8;
  while (v9 == v14[10])
  {
    LODWORD(v9) = v14[8];
    v14 = *v14;
    if (v14[11])
    {
      goto LABEL_17;
    }
  }

  if (v7 < *&v14[8 * v9 + 12])
  {
LABEL_17:
    result = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,int,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_> const,int>>,256,false>>::internal_emplace<std::piecewise_construct_t const&,std::tuple<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>&&>,std::tuple<>>(result, v8, v13, a3, a4);
    v14 = result;
    LODWORD(v9) = v15;
    v16 = 1;
    goto LABEL_19;
  }

  v16 = 0;
LABEL_19:
  *a5 = v14;
  *(a5 + 8) = v9;
  *(a5 + 16) = v16;
  return result;
}

unsigned __int8 *absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,int,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_> const,int>>,256,false>>::internal_emplace<std::piecewise_construct_t const&,std::tuple<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>&&>,std::tuple<>>(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, _DWORD **a5)
{
  i = a2;
  v33 = a3;
  v7 = a2[11];
  if (a2[11])
  {
    if (a2[10] == v7)
    {
      goto LABEL_3;
    }

LABEL_10:
    v8 = a2;
    v9 = a3;
    v10 = a2[10];
    v11 = v10 - a3;
    if (v10 <= a3)
    {
      goto LABEL_21;
    }

    goto LABEL_13;
  }

  a2 = *&a2[8 * a3 + 256];
  for (i = a2; !a2[11]; i = a2)
  {
    a2 = *&a2[8 * a2[10] + 256];
  }

  LOBYTE(a3) = a2[10];
  LODWORD(v33) = a3;
  v7 = a2[11];
  if (!a2[11])
  {
    v7 = 30;
  }

  if (a2[10] != v7)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v7 <= 0x1D)
  {
    operator new();
  }

  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,int,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_> const,int>>,256,false>>::rebalance_or_split(a1, &i);
  v8 = i;
  v9 = v33;
  v10 = i[10];
  v11 = v10 - v33;
  if (v10 > v33)
  {
LABEL_13:
    v12 = v11;
    if ((v11 & 0x1FFFFFFFFFFFFFFFLL) != 0)
    {
      v13 = &v8[8 * v9 + 12];
      v14 = v13 + 8 * v12;
      v15 = v14 + 8;
      v16 = 8 * v10;
      v17 = 8 * v10 - 8 * v9 - 8;
      if (v17 < 0x18)
      {
        goto LABEL_18;
      }

      v18 = (v17 >> 3) + 1;
      v19 = 8 * (v18 & 0x3FFFFFFFFFFFFFFCLL);
      v15 -= v19;
      v14 -= v19;
      v20 = &v8[v16 - 4];
      v21 = v18 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v22 = *(v20 - 1);
        *(v20 + 8) = *v20;
        *(v20 - 8) = v22;
        v20 -= 32;
        v21 -= 4;
      }

      while (v21);
      if (v18 != (v18 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_18:
        v23 = (v15 - 8);
        do
        {
          v24 = *(v14 - 8);
          v14 -= 8;
          *v23-- = v24;
        }

        while (v14 != v13);
      }

      LODWORD(v10) = v8[10];
    }
  }

LABEL_21:
  v25 = &v8[8 * v9];
  *(v25 + 3) = **a5;
  *(v25 + 4) = 0;
  v26 = v10 + 1;
  v8[10] = v10 + 1;
  if (!v8[11])
  {
    v27 = v9 + 1;
    if (v27 < v26)
    {
      v28 = v8 + 256;
      do
      {
        v29 = *&v28[8 * (v26 - 1)];
        *&v28[8 * v26] = v29;
        *(v29 + 8) = v26;
      }

      while (v27 < --v26);
    }
  }

  ++*(a1 + 16);
  return i;
}

uint64_t absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,int,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_> const,int>>,256,false>>::rebalance_or_split(unsigned __int8 **a1, unsigned __int8 **a2)
{
  v3 = *a2;
  v4 = **a2;
  if (*a2 == *a1)
  {
    operator new();
  }

  v5 = v3[8];
  if (v3[8])
  {
    v6 = *(v4 + 8 * (v5 - 1) + 256);
    v7 = v6[10];
    if (v7 <= 0x1D)
    {
      v8 = *(a2 + 2);
      v9 = (30 - v7) >> ((v8 & 0xFEu) < 0x1E) <= 1u ? 1 : (30 - v7) >> ((v8 & 0xFEu) < 0x1E);
      v10 = (v9 + v7);
      if (v9 <= v8 || v10 <= 0x1D)
      {
        result = absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,int,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_> const,int>>,256,false>>::rebalance_right_to_left(*(v4 + 8 * (v5 - 1) + 256), v9, v3);
        v13 = *(a2 + 8) - v9;
        *(a2 + 2) = v13;
        if (v13 >= 0)
        {
          return result;
        }

        v24 = v13 + v6[10] + 1;
LABEL_30:
        *(a2 + 2) = v24;
        *a2 = v6;
        return result;
      }
    }
  }

  v14 = *(v4 + 10);
  if (v5 >= v14 || (v6 = *(v4 + 8 * (v5 + 1) + 256), v15 = v6[10], v15 > 0x1D) || ((v16 = *(a2 + 2), (30 - v15) >> (v16 > 0) <= 1u) ? (v17 = 1) : (v17 = (30 - v15) >> (v16 > 0)), (v18 = (v17 + v15), (v3[10] - v17) < v16) ? (v19 = v18 > 0x1D) : (v19 = 0), v19))
  {
    if (v14 == 30)
    {
      v25 = v4;
      v26 = v5;
      absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,int,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_> const,int>>,256,false>>::rebalance_or_split(a1, &v25);
      v3 = *a2;
      v22 = **a2;
    }

    v23 = v3[8] + 1;
    if (v3[11])
    {
      operator new();
    }

    operator new();
  }

  result = absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,int,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_> const,int>>,256,false>>::rebalance_left_to_right(v3, v17, *(v4 + 8 * (v5 + 1) + 256));
  v20 = *(a2 + 2);
  v21 = (*a2)[10];
  if (v20 > v21)
  {
    v24 = v20 + ~v21;
    goto LABEL_30;
  }

  return result;
}

uint64_t *absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,int,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_> const,int>>,256,false>>::rebalance_right_to_left(uint64_t *result, unsigned int a2, uint64_t a3)
{
  v3 = *(result + 10);
  v4 = *(result + 8);
  v5 = *result;
  v6 = &result[v3];
  *(v6 + 12) = *(*result + 8 * v4 + 12);
  v7 = v6 + 12;
  v8 = (a2 - 1);
  v9 = (a3 + 12);
  v10 = (a3 + 12 + 8 * v8);
  if ((v8 & 0x1FFFFFFFFFFFFFFFLL) != 0)
  {
    v11 = (a2 + 0x1FFFFFFFFFFFFFFELL) & 0x1FFFFFFFFFFFFFFFLL;
    if (v11 >= 9)
    {
      v13 = &result[v3];
      v12 = (a3 + 12);
      if (v13 - a3 + 8 >= 0x20)
      {
        v14 = v11 + 1;
        v15 = v14 & 0x3FFFFFFFFFFFFFFCLL;
        v7 += v15 * 8;
        v12 = &v9[v15];
        v16 = (a3 + 28);
        v17 = (v13 + 36);
        v18 = v14 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v19 = *v16;
          *(v17 - 1) = *(v16 - 1);
          *v17 = v19;
          v16 += 2;
          v17 += 2;
          v18 -= 4;
        }

        while (v18);
        if (v14 == (v14 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      v12 = (a3 + 12);
    }

    v20 = (v7 + 8);
    do
    {
      v21 = *v12++;
      *v20++ = v21;
    }

    while (v12 != v10);
LABEL_10:
    v5 = *result;
    v4 = *(result + 8);
  }

  *(v5 + 8 * v4 + 12) = *v10;
  v22 = *(a3 + 10);
  v23 = a2;
  v24 = v22 - a2;
  if ((v24 & 0x1FFFFFFFFFFFFFFFLL) != 0)
  {
    v25 = &v9[a2];
    v26 = 8 * v22 - 8 * a2 - 8;
    v27 = v25;
    if (v26 < 0x18)
    {
      goto LABEL_16;
    }

    v28 = (v26 >> 3) + 1;
    v29 = v28 & 0x3FFFFFFFFFFFFFFCLL;
    v9 = (v9 + v29 * 8);
    v27 = &v25[v29];
    v30 = (a3 + 28);
    v31 = (a3 + 28 + 8 * a2);
    v32 = v28 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v33 = *v31;
      *(v30 - 1) = *(v31 - 1);
      *v30 = v33;
      v31 += 2;
      v30 += 2;
      v32 -= 4;
    }

    while (v32);
    if (v28 != (v28 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_16:
      v34 = &v25[v24];
      do
      {
        v35 = *v27++;
        *v9++ = v35;
      }

      while (v27 != v34);
    }
  }

  if (!*(result + 11))
  {
    if (a2)
    {
      v36 = (a3 + 256);
      v37 = 1;
      do
      {
        v38 = *(result + 10) + v37;
        v39 = *v36++;
        result[v38 + 32] = v39;
        *(v39 + 8) = v38;
        *v39 = result;
        ++v37;
        --v23;
      }

      while (v23);
    }

    if (*(a3 + 10) >= a2)
    {
      v40 = 0;
      v41 = a3 + 256;
      do
      {
        v42 = *(v41 + 8 * (v40 + a2));
        *(v41 + 8 * v40) = v42;
        *(v42 + 8) = v40;
        *v42 = a3;
        ++v40;
      }

      while ((*(a3 + 10) - a2) >= v40);
    }
  }

  *(result + 10) += a2;
  *(a3 + 10) -= a2;
  return result;
}

uint64_t absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,int,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_> const,int>>,256,false>>::rebalance_left_to_right(uint64_t result, unsigned int a2, uint64_t a3)
{
  v3 = *(a3 + 10);
  v4 = (a3 + 12);
  if (*(a3 + 10))
  {
    v5 = &v4[v3];
    v6 = &v5[a2];
    v7 = (v3 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v7 < 3)
    {
      goto LABEL_6;
    }

    v8 = v7 + 1;
    v9 = 8 * (v8 & 0x3FFFFFFFFFFFFFFCLL);
    v6 = (v6 - v9);
    v5 = (v5 - v9);
    v10 = a3 + 8 * v3;
    v11 = (v10 + 8 * a2 - 20);
    v12 = (v10 - 4);
    v13 = v8 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v14 = *v12;
      *v11 = *(v12 - 1);
      v11[1] = v14;
      v11 -= 2;
      v12 -= 2;
      v13 -= 4;
    }

    while (v13);
    if (v8 != (v8 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_6:
      v15 = v6 - 1;
      do
      {
        v16 = *--v5;
        *v15-- = v16;
      }

      while (v5 != v4);
    }
  }

  v17 = (a2 - 1);
  v4[v17] = *(*result + 8 * *(result + 8) + 12);
  v18 = *(result + 10);
  v19 = result + 12;
  if (((a2 - 1) & 0x1FFFFFFFFFFFFFFFLL) != 0)
  {
    v20 = v19 + 8 * (v18 - (a2 - 1));
    v21 = (a2 + 0x1FFFFFFFFFFFFFFELL) & 0x1FFFFFFFFFFFFFFFLL;
    if (v21 >= 0xD)
    {
      v23 = 8 * *(result + 10);
      v22 = (v19 + 8 * (v18 - (a2 - 1)));
      if (8 * a2 + a3 - result - v23 - 8 >= 0x20)
      {
        v24 = v21 + 1;
        v25 = 8 * (v24 & 0x3FFFFFFFFFFFFFFCLL);
        v4 = (v4 + v25);
        v22 = (v20 + v25);
        v26 = (v23 - 8 * a2 + result + 36);
        v27 = (a3 + 28);
        v28 = v24 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v29 = *v26;
          *(v27 - 1) = *(v26 - 1);
          *v27 = v29;
          v26 += 2;
          v27 += 2;
          v28 -= 4;
        }

        while (v28);
        if (v24 == (v24 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      v22 = (v19 + 8 * (v18 - (a2 - 1)));
    }

    v30 = (v20 + v17 * 8);
    do
    {
      v31 = *v22++;
      *v4++ = v31;
    }

    while (v22 != v30);
LABEL_17:
    v18 = *(result + 10);
  }

  *(*result + 8 * *(result + 8) + 12) = *(v19 + 8 * (v18 - a2));
  if (!*(result + 11))
  {
    if (((*(a3 + 10) + 1) & 0x100) == 0)
    {
      v32 = a3 + 256;
      v33 = (*(a3 + 10) + 1);
      do
      {
        v34 = *(v32 + 8 * (v33 - 1));
        *(v32 + 8 * (v33 - 1 + a2)) = v34;
        *(v34 + 8) = v33 - 1 + a2;
        *v34 = a3;
        --v33;
      }

      while (v33);
    }

    if (a2)
    {
      v35 = 0;
      if ((a2 + 1) <= 2u)
      {
        v36 = 2;
      }

      else
      {
        v36 = (a2 + 1);
      }

      v37 = v36 - 1;
      do
      {
        v38 = *(result + 256 + 8 * (v35 + 1 - a2 + *(result + 10)));
        *(a3 + 8 * v35 + 256) = v38;
        *(v38 + 8) = v35;
        *v38 = a3;
        ++v35;
      }

      while (v37 != v35);
    }
  }

  *(result + 10) -= a2;
  *(a3 + 10) += a2;
  return result;
}

unsigned __int8 *absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,int,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_> const,int>>,256,false>>::split(unsigned __int8 *result, int a2, uint64_t a3)
{
  if (a2 == 30)
  {
    LOBYTE(v3) = 0;
  }

  else if (a2)
  {
    v3 = result[10] >> 1;
  }

  else
  {
    LOBYTE(v3) = result[10] - 1;
  }

  *(a3 + 10) = v3;
  v4 = result[10] - v3;
  result[10] = v4;
  v5 = *(a3 + 10);
  v6 = result + 12;
  if (*(a3 + 10))
  {
    v7 = &v6[8 * v4];
    v8 = (a3 + 12);
    v9 = (v5 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v9 >= 7)
    {
      v11 = &result[8 * v4];
      v10 = &v6[8 * v4];
      if ((a3 - v11) >= 0x20)
      {
        v12 = v9 + 1;
        v13 = 8 * (v12 & 0x3FFFFFFFFFFFFFFCLL);
        v8 = (v8 + v13);
        v10 = &v7[v13];
        v14 = (v11 + 28);
        v15 = (a3 + 28);
        v16 = v12 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v17 = *v14;
          *(v15 - 1) = *(v14 - 1);
          *v15 = v17;
          v14 += 2;
          v15 += 2;
          v16 -= 4;
        }

        while (v16);
        if (v12 == (v12 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      v10 = &v6[8 * v4];
    }

    v18 = &v7[8 * v5];
    do
    {
      v19 = *v10;
      v10 += 8;
      *v8++ = v19;
    }

    while (v10 != v18);
LABEL_15:
    v4 = result[10];
  }

  result[10] = v4 - 1;
  v20 = *result;
  v21 = result[8];
  v22 = (v4 - 1);
  v23 = *(*result + 10);
  v24 = v23 - v21;
  if (v23 > v21)
  {
    v25 = v24;
    if ((v24 & 0x1FFFFFFFFFFFFFFFLL) != 0)
    {
      v26 = v20 + 8 * result[8] + 12;
      v27 = v26 + 8 * v25;
      v28 = v27 + 8;
      v29 = 8 * v23;
      v30 = 8 * v23 - 8 * v21 - 8;
      if (v30 < 0x18)
      {
        goto LABEL_22;
      }

      v31 = (v30 >> 3) + 1;
      v32 = 8 * (v31 & 0x3FFFFFFFFFFFFFFCLL);
      v28 -= v32;
      v27 -= v32;
      v33 = (v29 + v20 - 4);
      v34 = v31 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v35 = *(v33 - 1);
        *(v33 + 8) = *v33;
        *(v33 - 8) = v35;
        v33 -= 2;
        v34 -= 4;
      }

      while (v34);
      if (v31 != (v31 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_22:
        v36 = (v28 - 8);
        do
        {
          v37 = *(v27 - 8);
          v27 -= 8;
          *v36-- = v37;
        }

        while (v27 != v26);
      }

      LODWORD(v23) = *(v20 + 10);
    }
  }

  *(v20 + 8 * v21 + 12) = *&v6[8 * v22];
  v38 = v23 + 1;
  *(v20 + 10) = v23 + 1;
  if (!*(v20 + 11))
  {
    v39 = v21 + 1;
    if (v39 < v38)
    {
      v40 = v20 + 256;
      do
      {
        v41 = *(v40 + 8 * (v38 - 1));
        *(v40 + 8 * v38) = v41;
        *(v41 + 8) = v38;
      }

      while (v39 < --v38);
    }
  }

  *(*result + 8 * (result[8] + 1) + 256) = a3;
  v43 = result[11];
  if (!result[11])
  {
    v44 = result[10];
    do
    {
      v45 = *&result[8 * ++v44 + 256];
      *(a3 + 256 + 8 * v43) = v45;
      *(v45 + 8) = v43;
      *v45 = a3;
      ++v43;
    }

    while (*(a3 + 10) >= v43);
  }

  return result;
}

void *operations_research::sat::ValidateParameters@<X0>(operations_research::sat *this@<X0>, const operations_research::sat::SatParameters *a2@<X1>, char *a3@<X2>, std::string *a4@<X8>)
{
  v62 = *MEMORY[0x277D85DE8];
  if ((*(this + 26) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    if ((*(this + 25) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      *&v61[0] = "parameter '";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "random_branches_ratio";
      *(&v60[0] + 1) = 21;
      *&v59[0] = "' is NaN or not finite";
      *(&v59[0] + 1) = 22;
      result = absl::lts_20240722::StrCat(v61, v60, v59, a4);
      goto LABEL_111;
    }

    if ((*(this + 30) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      *&v61[0] = "parameter '";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "initial_variables_activity";
      *(&v60[0] + 1) = 26;
      *&v59[0] = "' is NaN or not finite";
      *(&v59[0] + 1) = 22;
      result = absl::lts_20240722::StrCat(v61, v60, v59, a4);
      goto LABEL_111;
    }

    if ((*(this + 95) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      *&v61[0] = "parameter '";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "clause_cleanup_ratio";
      *(&v60[0] + 1) = 20;
      *&v59[0] = "' is NaN or not finite";
      *(&v59[0] + 1) = 22;
      result = absl::lts_20240722::StrCat(v61, v60, v59, a4);
      goto LABEL_111;
    }

    if ((*(this + 60) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      *&v61[0] = "parameter '";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "pb_cleanup_ratio";
      *(&v60[0] + 1) = 16;
      *&v59[0] = "' is NaN or not finite";
      *(&v59[0] + 1) = 22;
      result = absl::lts_20240722::StrCat(v61, v60, v59, a4);
      goto LABEL_111;
    }

    if ((*(this + 48) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      *&v61[0] = "parameter '";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "variable_activity_decay";
      *(&v60[0] + 1) = 23;
      *&v59[0] = "' is NaN or not finite";
      *(&v59[0] + 1) = 22;
      result = absl::lts_20240722::StrCat(v61, v60, v59, a4);
      goto LABEL_111;
    }

    if ((*(this + 49) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      *&v61[0] = "parameter '";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "max_variable_activity_value";
      *(&v60[0] + 1) = 27;
      *&v59[0] = "' is NaN or not finite";
      *(&v59[0] + 1) = 22;
      result = absl::lts_20240722::StrCat(v61, v60, v59, a4);
      goto LABEL_111;
    }

    if ((*(this + 53) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      *&v61[0] = "parameter '";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "glucose_max_decay";
      *(&v60[0] + 1) = 17;
      *&v59[0] = "' is NaN or not finite";
      *(&v59[0] + 1) = 22;
      result = absl::lts_20240722::StrCat(v61, v60, v59, a4);
      goto LABEL_111;
    }

    if ((*(this + 54) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      *&v61[0] = "parameter '";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "glucose_decay_increment";
      *(&v60[0] + 1) = 23;
      *&v59[0] = "' is NaN or not finite";
      *(&v59[0] + 1) = 22;
      result = absl::lts_20240722::StrCat(v61, v60, v59, a4);
      goto LABEL_111;
    }

    if ((*(this + 50) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      *&v61[0] = "parameter '";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "clause_activity_decay";
      *(&v60[0] + 1) = 21;
      *&v59[0] = "' is NaN or not finite";
      *(&v59[0] + 1) = 22;
      result = absl::lts_20240722::StrCat(v61, v60, v59, a4);
      goto LABEL_111;
    }

    if ((*(this + 52) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      *&v61[0] = "parameter '";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "max_clause_activity_value";
      *(&v60[0] + 1) = 25;
      *&v59[0] = "' is NaN or not finite";
      *(&v59[0] + 1) = 22;
      result = absl::lts_20240722::StrCat(v61, v60, v59, a4);
      goto LABEL_111;
    }

    if ((*(this + 65) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      *&v61[0] = "parameter '";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "restart_dl_average_ratio";
      *(&v60[0] + 1) = 24;
      *&v59[0] = "' is NaN or not finite";
      *(&v59[0] + 1) = 22;
      result = absl::lts_20240722::StrCat(v61, v60, v59, a4);
      goto LABEL_111;
    }

    if ((*(this + 69) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      *&v61[0] = "parameter '";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "restart_lbd_average_ratio";
      *(&v60[0] + 1) = 25;
      *&v59[0] = "' is NaN or not finite";
      *(&v59[0] + 1) = 22;
      result = absl::lts_20240722::StrCat(v61, v60, v59, a4);
      goto LABEL_111;
    }

    if ((*(this + 66) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      *&v61[0] = "parameter '";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "blocking_restart_multiplier";
      *(&v60[0] + 1) = 27;
      *&v59[0] = "' is NaN or not finite";
      *(&v59[0] + 1) = 22;
      result = absl::lts_20240722::StrCat(v61, v60, v59, a4);
      goto LABEL_111;
    }

    if ((*(this + 29) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      *&v61[0] = "parameter '";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "strategy_change_increase_ratio";
      *(&v60[0] + 1) = 30;
      *&v59[0] = "' is NaN or not finite";
      *(&v59[0] + 1) = 22;
      result = absl::lts_20240722::StrCat(v61, v60, v59, a4);
      goto LABEL_111;
    }

    if ((*(this + 91) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      *&v61[0] = "parameter '";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "absolute_gap_limit";
      *(&v60[0] + 1) = 18;
      *&v59[0] = "' is NaN or not finite";
      *(&v59[0] + 1) = 22;
      result = absl::lts_20240722::StrCat(v61, v60, v59, a4);
      goto LABEL_111;
    }

    if ((*(this + 37) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      *&v61[0] = "parameter '";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "relative_gap_limit";
      *(&v60[0] + 1) = 18;
      *&v59[0] = "' is NaN or not finite";
      *(&v59[0] + 1) = 22;
      result = absl::lts_20240722::StrCat(v61, v60, v59, a4);
      goto LABEL_111;
    }

    v5 = *(this + 104);
    if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      *&v61[0] = "parameter '";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "probing_deterministic_time_limit";
      *(&v60[0] + 1) = 32;
      *&v59[0] = "' is NaN or not finite";
      *(&v59[0] + 1) = 22;
      result = absl::lts_20240722::StrCat(v61, v60, v59, a4);
      goto LABEL_111;
    }

    v6 = *(this + 63);
    if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      *&v61[0] = "parameter '";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "presolve_probing_deterministic_time_limit";
      *(&v60[0] + 1) = 41;
      *&v59[0] = "' is NaN or not finite";
      *(&v59[0] + 1) = 22;
      result = absl::lts_20240722::StrCat(v61, v60, v59, a4);
      goto LABEL_111;
    }

    if ((*(this + 102) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      *&v61[0] = "parameter '";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "propagation_loop_detection_factor";
      *(&v60[0] + 1) = 33;
      *&v59[0] = "' is NaN or not finite";
      *(&v59[0] + 1) = 22;
      result = absl::lts_20240722::StrCat(v61, v60, v59, a4);
      goto LABEL_111;
    }

    if ((*(this + 83) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      *&v61[0] = "parameter '";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "merge_no_overlap_work_limit";
      *(&v60[0] + 1) = 27;
      *&v59[0] = "' is NaN or not finite";
      *(&v59[0] + 1) = 22;
      result = absl::lts_20240722::StrCat(v61, v60, v59, a4);
      goto LABEL_111;
    }

    if ((*(this + 84) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      *&v61[0] = "parameter '";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "merge_at_most_one_work_limit";
      *(&v60[0] + 1) = 28;
      *&v59[0] = "' is NaN or not finite";
      *(&v59[0] + 1) = 22;
      result = absl::lts_20240722::StrCat(v61, v60, v59, a4);
      goto LABEL_111;
    }

    if ((*(this + 74) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      *&v61[0] = "parameter '";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "min_orthogonality_for_lp_constraints";
      *(&v60[0] + 1) = 36;
      *&v59[0] = "' is NaN or not finite";
      *(&v59[0] + 1) = 22;
      result = absl::lts_20240722::StrCat(v61, v60, v59, a4);
      goto LABEL_111;
    }

    v7 = *(this + 79);
    if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      *&v61[0] = "parameter '";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "mip_var_scaling";
      *(&v60[0] + 1) = 15;
      *&v59[0] = "' is NaN or not finite";
      *(&v59[0] + 1) = 22;
      result = absl::lts_20240722::StrCat(v61, v60, v59, a4);
      goto LABEL_111;
    }

    if ((*(this + 88) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      *&v61[0] = "parameter '";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "cut_max_active_count_value";
      *(&v60[0] + 1) = 26;
      *&v59[0] = "' is NaN or not finite";
      *(&v59[0] + 1) = 22;
      result = absl::lts_20240722::StrCat(v61, v60, v59, a4);
      goto LABEL_111;
    }

    if ((*(this + 89) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      *&v61[0] = "parameter '";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "cut_active_count_decay";
      *(&v60[0] + 1) = 22;
      *&v59[0] = "' is NaN or not finite";
      *(&v59[0] + 1) = 22;
      result = absl::lts_20240722::StrCat(v61, v60, v59, a4);
      goto LABEL_111;
    }

    if ((*(this + 100) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      *&v61[0] = "parameter '";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "shaving_search_deterministic_time";
      *(&v60[0] + 1) = 33;
      *&v59[0] = "' is NaN or not finite";
      *(&v59[0] + 1) = 22;
      result = absl::lts_20240722::StrCat(v61, v60, v59, a4);
      goto LABEL_111;
    }

    if ((*(this + 117) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      *&v61[0] = "parameter '";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "inprocessing_dtime_ratio";
      *(&v60[0] + 1) = 24;
      *&v59[0] = "' is NaN or not finite";
      *(&v59[0] + 1) = 22;
      result = absl::lts_20240722::StrCat(v61, v60, v59, a4);
      goto LABEL_111;
    }

    if ((*(this + 118) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      *&v61[0] = "parameter '";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "inprocessing_probing_dtime";
      *(&v60[0] + 1) = 26;
      *&v59[0] = "' is NaN or not finite";
      *(&v59[0] + 1) = 22;
      result = absl::lts_20240722::StrCat(v61, v60, v59, a4);
      goto LABEL_111;
    }

    if ((*(this + 120) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      *&v61[0] = "parameter '";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "inprocessing_minimization_dtime";
      *(&v60[0] + 1) = 31;
      *&v59[0] = "' is NaN or not finite";
      *(&v59[0] + 1) = 22;
      result = absl::lts_20240722::StrCat(v61, v60, v59, a4);
      goto LABEL_111;
    }

    v8 = *(this + 77);
    if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      *&v61[0] = "parameter '";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "mip_max_bound";
      *(&v60[0] + 1) = 13;
      *&v59[0] = "' is NaN or not finite";
      *(&v59[0] + 1) = 22;
      result = absl::lts_20240722::StrCat(v61, v60, v59, a4);
      goto LABEL_111;
    }

    v9 = *(this + 80);
    if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      *&v61[0] = "parameter '";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "mip_wanted_precision";
      *(&v60[0] + 1) = 20;
      *&v59[0] = "' is NaN or not finite";
      *(&v59[0] + 1) = 22;
      result = absl::lts_20240722::StrCat(v61, v60, v59, a4);
      goto LABEL_111;
    }

    if ((*(this + 81) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      *&v61[0] = "parameter '";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "mip_check_precision";
      *(&v60[0] + 1) = 19;
      *&v59[0] = "' is NaN or not finite";
      *(&v59[0] + 1) = 22;
      result = absl::lts_20240722::StrCat(v61, v60, v59, a4);
      goto LABEL_111;
    }

    if ((*(this + 98) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      *&v61[0] = "parameter '";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "mip_max_valid_magnitude";
      *(&v60[0] + 1) = 23;
      *&v59[0] = "' is NaN or not finite";
      *(&v59[0] + 1) = 22;
      result = absl::lts_20240722::StrCat(v61, v60, v59, a4);
      goto LABEL_111;
    }

    if ((*(this + 105) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      *&v61[0] = "parameter '";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "mip_drop_tolerance";
      *(&v60[0] + 1) = 18;
      *&v59[0] = "' is NaN or not finite";
      *(&v59[0] + 1) = 22;
      result = absl::lts_20240722::StrCat(v61, v60, v59, a4);
      goto LABEL_111;
    }

    v10 = *(this + 107);
    if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      *&v61[0] = "parameter '";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "shared_tree_worker_objective_split_probability";
      *(&v60[0] + 1) = 46;
      *&v59[0] = "' is NaN or not finite";
      *(&v59[0] + 1) = 22;
      result = absl::lts_20240722::StrCat(v61, v60, v59, a4);
      goto LABEL_111;
    }

    v11 = *(this + 121);
    if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      *&v61[0] = "parameter '";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "shared_tree_open_leaves_per_worker";
      *(&v60[0] + 1) = 34;
      *&v59[0] = "' is NaN or not finite";
      *(&v59[0] + 1) = 22;
      result = absl::lts_20240722::StrCat(v61, v60, v59, a4);
      goto LABEL_111;
    }

    if (*(this + 233) <= 0)
    {
      *&v61[0] = "Parameters ";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "at_most_one_max_expansion_size";
      *(&v60[0] + 1) = 30;
      *&v59[0] = " must be positive";
      *(&v59[0] + 1) = 17;
      result = absl::lts_20240722::StrCat(v61, v60, v59, a4);
      goto LABEL_111;
    }

    v12 = *(this + 56);
    v13 = *(this + 67);
    v55 = 10000;
    v14 = *(this + 83);
    if (v14 >= 0x2711)
    {
      *&v61[0] = "parameter '";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "num_workers";
      *(&v60[0] + 1) = 11;
      *&v59[0] = "' should be in [";
      *(&v59[0] + 1) = 16;
      *&v57 = v58;
      *(&v57 + 1) = absl::lts_20240722::numbers_internal::FastIntToBuffer(0, v58, a3) - v58;
      *&v56[0] = ",";
      *(&v56[0] + 1) = 1;
      LODWORD(v54) = *(this + 83);
      result = absl::lts_20240722::StrCat<int,char [21],int>(v61, v60, v59, &v57, v56, &v55, "]. Current value is ", &v54, a4);
      goto LABEL_111;
    }

    v15 = *(this + 66);
    if (v15 >= 0x2711)
    {
      *&v61[0] = "parameter '";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "num_search_workers";
      *(&v60[0] + 1) = 18;
      *&v59[0] = "' should be in [";
      *(&v59[0] + 1) = 16;
      *&v57 = v58;
      *(&v57 + 1) = absl::lts_20240722::numbers_internal::FastIntToBuffer(0, v58, a3) - v58;
      *&v56[0] = ",";
      *(&v56[0] + 1) = 1;
      LODWORD(v54) = *(this + 66);
      result = absl::lts_20240722::StrCat<int,char [21],int>(v61, v60, v59, &v57, v56, &v55, "]. Current value is ", &v54, a4);
      goto LABEL_111;
    }

    v16 = *(this + 202);
    if (v16 >= 0x2711)
    {
      *&v61[0] = "parameter '";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "min_num_lns_workers";
      *(&v60[0] + 1) = 19;
      *&v59[0] = "' should be in [";
      *(&v59[0] + 1) = 16;
      *&v57 = v58;
      *(&v57 + 1) = absl::lts_20240722::numbers_internal::FastIntToBuffer(0, v58, a3) - v58;
      *&v56[0] = ",";
      *(&v56[0] + 1) = 1;
      LODWORD(v54) = *(this + 202);
      result = absl::lts_20240722::StrCat<int,char [21],int>(v61, v60, v59, &v57, v56, &v55, "]. Current value is ", &v54, a4);
      goto LABEL_111;
    }

    v17 = *(this + 86);
    if (v17 >= 0x2711)
    {
      *&v61[0] = "parameter '";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "shared_tree_num_workers";
      *(&v60[0] + 1) = 23;
      *&v59[0] = "' should be in [";
      *(&v59[0] + 1) = 16;
      *&v57 = v58;
      *(&v57 + 1) = absl::lts_20240722::numbers_internal::FastIntToBuffer(0, v58, a3) - v58;
      *&v56[0] = ",";
      *(&v56[0] + 1) = 1;
      LODWORD(v54) = *(this + 86);
      result = absl::lts_20240722::StrCat<int,char [21],int>(v61, v60, v59, &v57, v56, &v55, "]. Current value is ", &v54, a4);
      goto LABEL_111;
    }

    if (*(this + 69) >= 0x2711u)
    {
      *&v61[0] = "parameter '";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "interleave_batch_size";
      *(&v60[0] + 1) = 21;
      *&v59[0] = "' should be in [";
      *(&v59[0] + 1) = 16;
      *&v57 = v58;
      *(&v57 + 1) = absl::lts_20240722::numbers_internal::FastIntToBuffer(0, v58, a3) - v58;
      *&v56[0] = ",";
      *(&v56[0] + 1) = 1;
      LODWORD(v54) = *(this + 69);
      result = absl::lts_20240722::StrCat<int,char [21],int>(v61, v60, v59, &v57, v56, &v55, "]. Current value is ", &v54, a4);
      goto LABEL_111;
    }

    if (v11 < 1.0 || v11 > 10000.0)
    {
      *&v61[0] = "parameter '";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "shared_tree_open_leaves_per_worker";
      *(&v60[0] + 1) = 34;
      *&v59[0] = "' should be in [";
      *(&v59[0] + 1) = 16;
      *&v57 = v58;
      *(&v57 + 1) = absl::lts_20240722::numbers_internal::FastIntToBuffer(1, v58, a3) - v58;
      *&v56[0] = ",";
      *(&v56[0] + 1) = 1;
      v54 = *(this + 121);
      result = absl::lts_20240722::StrCat<int,char [21],double>(v61, v60, v59, &v57, v56, &v55, "]. Current value is ", &v54, a4);
      goto LABEL_111;
    }

    if ((*(this + 157) - 63) <= 0xFFFFFFC1)
    {
      *&v61[0] = "parameter '";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "mip_max_activity_exponent";
      *(&v60[0] + 1) = 25;
      *&v59[0] = "' should be in [";
      *(&v59[0] + 1) = 16;
      *&v57 = v58;
      *(&v57 + 1) = absl::lts_20240722::numbers_internal::FastIntToBuffer(1, v58, a3) - v58;
      *&v56[0] = ",";
      *(&v56[0] + 1) = 1;
      LODWORD(v54) = 62;
      LODWORD(v53) = *(this + 157);
      result = absl::lts_20240722::StrCat<int,char [21],int>(v61, v60, v59, &v57, v56, &v54, "]. Current value is ", &v53, a4);
      goto LABEL_111;
    }

    if (v8 < 0.0 || v8 > 1.0e17)
    {
      *&v61[0] = "parameter '";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "mip_max_bound";
      *(&v60[0] + 1) = 13;
      *&v59[0] = "' should be in [";
      *(&v59[0] + 1) = 16;
      *&v57 = v58;
      *(&v57 + 1) = absl::lts_20240722::numbers_internal::FastIntToBuffer(0, v58, a3) - v58;
      *&v56[0] = ",";
      *(&v56[0] + 1) = 1;
      v54 = 1.0e17;
      v53 = *(this + 77);
      result = absl::lts_20240722::StrCat<double,char [20],double>(v61, v60, v59, &v57, v56, &v54, "]. Current value is ", &v53, a4);
      goto LABEL_111;
    }

    if (*(this + 194) <= 0)
    {
      *&v61[0] = "parameter '";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "solution_pool_size";
      *(&v60[0] + 1) = 18;
      *&v59[0] = "' should be in [";
      *(&v59[0] + 1) = 16;
      *&v57 = v58;
      *(&v57 + 1) = absl::lts_20240722::numbers_internal::FastIntToBuffer(1, v58, a3) - v58;
      *&v56[0] = ",";
      *(&v56[0] + 1) = 1;
      LODWORD(v54) = 0x7FFFFFFF;
      LODWORD(v53) = *(this + 194);
      result = absl::lts_20240722::StrCat<int,char [21],int>(v61, v60, v59, &v57, v56, &v54, "]. Current value is ", &v53, a4);
      goto LABEL_111;
    }

    if (v10 < 0.0 || v10 > 1.0)
    {
      *&v61[0] = "parameter '";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "shared_tree_worker_objective_split_probability";
      *(&v60[0] + 1) = 46;
      *&v59[0] = "' should be in [";
      *(&v59[0] + 1) = 16;
      *&v57 = v58;
      *(&v57 + 1) = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v58, 0.0, a2);
      *&v56[0] = ",";
      *(&v56[0] + 1) = 1;
      v54 = 1.0;
      v53 = *(this + 107);
      result = absl::lts_20240722::StrCat<double,char [20],double>(v61, v60, v59, &v57, v56, &v54, "]. Current value is ", &v53, a4);
      goto LABEL_111;
    }

    v18 = *(this + 108);
    v19 = *(this + 45);
    v20 = *(this + 109);
    if (v18 < 0.0 || v18 > 1.0)
    {
      *&v61[0] = "parameter '";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "feasibility_jump_decay";
      *(&v60[0] + 1) = 22;
      *&v59[0] = "' should be in [";
      *(&v59[0] + 1) = 16;
      *&v57 = v58;
      *(&v57 + 1) = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v58, 0.0, a2);
      *&v56[0] = ",";
      *(&v56[0] + 1) = 1;
      v54 = 1.0;
      v53 = *(this + 108);
      result = absl::lts_20240722::StrCat<double,char [20],double>(v61, v60, v59, &v57, v56, &v54, "]. Current value is ", &v53, a4);
      goto LABEL_111;
    }

    if (v19 < 0.0 || v19 > 1.0)
    {
      *&v61[0] = "parameter '";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "feasibility_jump_var_randomization_probability";
      *(&v60[0] + 1) = 46;
      *&v59[0] = "' should be in [";
      *(&v59[0] + 1) = 16;
      *&v57 = v58;
      *(&v57 + 1) = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v58, 0.0, a2);
      *&v56[0] = ",";
      *(&v56[0] + 1) = 1;
      v54 = 1.0;
      v53 = *(this + 45);
      result = absl::lts_20240722::StrCat<double,char [20],double>(v61, v60, v59, &v57, v56, &v54, "]. Current value is ", &v53, a4);
      goto LABEL_111;
    }

    if (v20 < 0.0 || v20 > 1.0)
    {
      *&v61[0] = "parameter '";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "feasibility_jump_var_perburbation_range_ratio";
      *(&v60[0] + 1) = 45;
      *&v59[0] = "' should be in [";
      *(&v59[0] + 1) = 16;
      *&v57 = v58;
      *(&v57 + 1) = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v58, 0.0, a2);
      *&v56[0] = ",";
      *(&v56[0] + 1) = 1;
      v54 = 1.0;
      v53 = *(this + 109);
      result = absl::lts_20240722::StrCat<double,char [20],double>(v61, v60, v59, &v57, v56, &v54, "]. Current value is ", &v53, a4);
      goto LABEL_111;
    }

    v21 = *(this + 112);
    if (*(this + 89) >= 0x2711u)
    {
      *&v61[0] = "parameter '";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "num_violation_ls";
      *(&v60[0] + 1) = 16;
      *&v59[0] = "' should be in [";
      *(&v59[0] + 1) = 16;
      *&v57 = v58;
      *(&v57 + 1) = absl::lts_20240722::numbers_internal::FastIntToBuffer(0, v58, a3) - v58;
      *&v56[0] = ",";
      *(&v56[0] + 1) = 1;
      LODWORD(v54) = *(this + 89);
      result = absl::lts_20240722::StrCat<int,char [21],int>(v61, v60, v59, &v57, v56, &v55, "]. Current value is ", &v54, a4);
      goto LABEL_111;
    }

    if ((*(this + 220) - 1000000001) < 0xC4653600)
    {
      *&v61[0] = "parameter '";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "violation_ls_perturbation_period";
      *(&v60[0] + 1) = 32;
      *&v59[0] = "' should be in [";
      *(&v59[0] + 1) = 16;
      *&v57 = v58;
      *(&v57 + 1) = absl::lts_20240722::numbers_internal::FastIntToBuffer(1, v58, a3) - v58;
      *&v56[0] = ",";
      *(&v56[0] + 1) = 1;
      LODWORD(v54) = 1000000000;
      LODWORD(v53) = *(this + 220);
      result = absl::lts_20240722::StrCat<int,char [21],int>(v61, v60, v59, &v57, v56, &v54, "]. Current value is ", &v53, a4);
      goto LABEL_111;
    }

    if (v21 < 0.0 || v21 > 1.0)
    {
      *&v61[0] = "parameter '";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "violation_ls_compound_move_probability";
      *(&v60[0] + 1) = 38;
      *&v59[0] = "' should be in [";
      *(&v59[0] + 1) = 16;
      *&v57 = v58;
      *(&v57 + 1) = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v58, 0.0, a2);
      *&v56[0] = ",";
      *(&v56[0] + 1) = 1;
      v54 = 1.0;
      v53 = *(this + 112);
      result = absl::lts_20240722::StrCat<double,char [20],double>(v61, v60, v59, &v57, v56, &v54, "]. Current value is ", &v53, a4);
      goto LABEL_111;
    }

    if (*(this + 103) <= 0)
    {
      *&v61[0] = "Parameters ";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "glucose_decay_increment_period";
      *(&v60[0] + 1) = 30;
      *&v59[0] = " must be positive";
      *(&v59[0] + 1) = 17;
      result = absl::lts_20240722::StrCat(v61, v60, v59, a4);
      goto LABEL_111;
    }

    if (*(this + 213) <= 0)
    {
      *&v61[0] = "Parameters ";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "shared_tree_max_nodes_per_worker";
      *(&v60[0] + 1) = 32;
      *&v59[0] = " must be positive";
      *(&v59[0] + 1) = 17;
      result = absl::lts_20240722::StrCat(v61, v60, v59, a4);
      goto LABEL_111;
    }

    if (v11 <= 0.0)
    {
      *&v61[0] = "Parameters ";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "shared_tree_open_leaves_per_worker";
      *(&v60[0] + 1) = 34;
      *&v59[0] = " must be positive";
      *(&v59[0] + 1) = 17;
      result = absl::lts_20240722::StrCat(v61, v60, v59, a4);
      goto LABEL_111;
    }

    if (v7 <= 0.0)
    {
      *&v61[0] = "Parameters ";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "mip_var_scaling";
      *(&v60[0] + 1) = 15;
      *&v59[0] = " must be positive";
      *(&v59[0] + 1) = 17;
      result = absl::lts_20240722::StrCat(v61, v60, v59, a4);
      goto LABEL_111;
    }

    if ((*(this + 114) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      *&v61[0] = "parameter '";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "lp_primal_tolerance";
      *(&v60[0] + 1) = 19;
      *&v59[0] = "' is NaN or not finite";
      *(&v59[0] + 1) = 22;
      result = absl::lts_20240722::StrCat(v61, v60, v59, a4);
      goto LABEL_111;
    }

    if ((*(this + 115) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      *&v61[0] = "parameter '";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "lp_dual_tolerance";
      *(&v60[0] + 1) = 17;
      *&v59[0] = "' is NaN or not finite";
      *(&v59[0] + 1) = 22;
      result = absl::lts_20240722::StrCat(v61, v60, v59, a4);
      goto LABEL_111;
    }

    if (*(this + 114) < 0.0)
    {
      *&v61[0] = "Parameters ";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "lp_primal_tolerance";
      *(&v60[0] + 1) = 19;
      *&v59[0] = " must be non-negative";
      *(&v59[0] + 1) = 21;
      result = absl::lts_20240722::StrCat(v61, v60, v59, a4);
      goto LABEL_111;
    }

    if (*(this + 115) < 0.0)
    {
      *&v61[0] = "Parameters ";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "lp_dual_tolerance";
      *(&v60[0] + 1) = 17;
      *&v59[0] = " must be non-negative";
      *(&v59[0] + 1) = 21;
      result = absl::lts_20240722::StrCat(v61, v60, v59, a4);
      goto LABEL_111;
    }

    if (v9 < 0.0)
    {
      *&v61[0] = "Parameters ";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "mip_wanted_precision";
      *(&v60[0] + 1) = 20;
      *&v59[0] = " must be non-negative";
      *(&v59[0] + 1) = 21;
      result = absl::lts_20240722::StrCat(v61, v60, v59, a4);
      goto LABEL_111;
    }

    if (v12 < 0.0)
    {
      *&v61[0] = "Parameters ";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "max_time_in_seconds";
      *(&v60[0] + 1) = 19;
      *&v59[0] = " must be non-negative";
      *(&v59[0] + 1) = 21;
      result = absl::lts_20240722::StrCat(v61, v60, v59, a4);
      goto LABEL_111;
    }

    if (v13 < 0.0)
    {
      *&v61[0] = "Parameters ";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "max_deterministic_time";
      *(&v60[0] + 1) = 22;
      *&v59[0] = " must be non-negative";
      *(&v59[0] + 1) = 21;
      result = absl::lts_20240722::StrCat(v61, v60, v59, a4);
      goto LABEL_111;
    }

    if ((*(this + 156) & 0x80000000) != 0)
    {
      *&v61[0] = "Parameters ";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "new_constraints_batch_size";
      *(&v60[0] + 1) = 26;
      *&v59[0] = " must be non-negative";
      *(&v59[0] + 1) = 21;
      result = absl::lts_20240722::StrCat(v61, v60, v59, a4);
      goto LABEL_111;
    }

    if (v5 < 0.0)
    {
      *&v61[0] = "Parameters ";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "probing_deterministic_time_limit";
      *(&v60[0] + 1) = 32;
      *&v59[0] = " must be non-negative";
      *(&v59[0] + 1) = 21;
      result = absl::lts_20240722::StrCat(v61, v60, v59, a4);
      goto LABEL_111;
    }

    if (v6 < 0.0)
    {
      *&v61[0] = "Parameters ";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "presolve_probing_deterministic_time_limit";
      *(&v60[0] + 1) = 41;
      *&v59[0] = " must be non-negative";
      *(&v59[0] + 1) = 21;
      result = absl::lts_20240722::StrCat(v61, v60, v59, a4);
      goto LABEL_111;
    }

    if ((*(this + 143) & 0x80000000) != 0)
    {
      *&v61[0] = "Parameters ";
      *(&v61[0] + 1) = 11;
      *&v60[0] = "linearization_level";
      *(&v60[0] + 1) = 19;
      *&v59[0] = " must be non-negative";
      *(&v59[0] + 1) = 21;
      result = absl::lts_20240722::StrCat(v61, v60, v59, a4);
      goto LABEL_111;
    }

    if (*(this + 284) == 1)
    {
      if ((v15 | v14) >= 2)
      {
        v23 = "Enumerating all solutions does not work in parallel";
        goto LABEL_200;
      }

      if (*(this + 20) || *(this + 38) || *(this + 26))
      {
        v23 = "Enumerating all solutions does not work with custom subsolvers";
        goto LABEL_200;
      }
    }

    if (v14 && v15)
    {
      v23 = "Do not specify both num_search_workers and num_workers";
LABEL_200:
      result = std::string::basic_string[abi:ne200100]<0>(a4, v23);
      goto LABEL_111;
    }

    if (*(this + 26))
    {
      v24 = v17 + v16;
      if (v14 <= v15)
      {
        v14 = *(this + 66);
      }

      if (v24 > v14)
      {
        v23 = "Cannot have more shared tree + lns workers than total workers";
        goto LABEL_200;
      }
    }

    if (*(this + 323) == 1)
    {
      v23 = "use_shared_tree_search must only be set on workers' parameters";
      goto LABEL_200;
    }

    if (*(this + 284) && *(this + 280) == 1)
    {
      v23 = "Enumerating all solutions does not work with interleaved search";
      goto LABEL_200;
    }

    v25 = *(this + 15);
    if (v25)
    {
      v26 = (v25 + 7);
    }

    else
    {
      v26 = this + 120;
    }

    v27 = *(this + 32);
    if (v27)
    {
      v28 = 8 * v27;
      while (1)
      {
        v29 = *(*v26 + 176) & 0xFFFFFFFFFFFFFFFCLL;
        v30 = *(v29 + 23);
        if (v30 < 0)
        {
          v30 = *(v29 + 8);
        }

        if (!v30)
        {
          break;
        }

        v26 += 8;
        v28 -= 8;
        if (!v28)
        {
          goto LABEL_176;
        }
      }

      v23 = "New subsolver parameter defined without a name";
      goto LABEL_200;
    }

LABEL_176:
    operations_research::sat::GetNamedParameters(this, a2, &v57);
    v34 = *(this + 9);
    if (v34)
    {
      v35 = (v34 + 7);
    }

    else
    {
      v35 = (this + 72);
    }

    v36 = *(this + 20);
    if (v36)
    {
      v37 = 8 * v36;
      while (1)
      {
        v38 = *v35;
        if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(*v35, "core_or_no_lp") && (absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::sat::SatParameters>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::sat::SatParameters>>>::contains<std::string>(&v57, v38, v31, v32, v33) & 1) == 0)
        {
          break;
        }

        ++v35;
        v37 -= 8;
        if (!v37)
        {
          goto LABEL_184;
        }
      }

      *&v61[0] = "subsolver '";
      *(&v61[0] + 1) = 11;
      v49 = *(v38 + 23);
      if ((v49 & 0x80u) == 0)
      {
        v50 = v38;
      }

      else
      {
        v50 = *v38;
      }

      if ((v49 & 0x80u) != 0)
      {
        v49 = *(v38 + 8);
      }
    }

    else
    {
LABEL_184:
      v39 = *(this + 18);
      if (v39)
      {
        v40 = (v39 + 7);
      }

      else
      {
        v40 = (this + 144);
      }

      v41 = *(this + 38);
      if (v41)
      {
        v42 = 8 * v41;
        while (1)
        {
          v43 = *v40;
          if ((absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::sat::SatParameters>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::sat::SatParameters>>>::contains<std::string>(&v57, *v40, v31, v32, v33) & 1) == 0)
          {
            break;
          }

          ++v40;
          v42 -= 8;
          if (!v42)
          {
            goto LABEL_191;
          }
        }

        *&v61[0] = "subsolver '";
        *(&v61[0] + 1) = 11;
        v49 = *(v43 + 23);
        if ((v49 & 0x80u) == 0)
        {
          v50 = v43;
        }

        else
        {
          v50 = *v43;
        }

        if ((v49 & 0x80u) != 0)
        {
          v49 = *(v43 + 1);
        }
      }

      else
      {
LABEL_191:
        v44 = *(this + 12);
        if (v44)
        {
          v45 = (v44 + 7);
        }

        else
        {
          v45 = (this + 96);
        }

        v46 = *(this + 26);
        if (!v46)
        {
LABEL_198:
          std::string::basic_string[abi:ne200100]<0>(a4, &byte_23CE7F131);
LABEL_219:
          result = absl::lts_20240722::flat_hash_map<std::string,operations_research::sat::SatParameters,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::sat::SatParameters>>>::~flat_hash_map(&v57);
          goto LABEL_111;
        }

        v47 = 8 * v46;
        while (1)
        {
          v48 = *v45;
          if ((absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::sat::SatParameters>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::sat::SatParameters>>>::contains<std::string>(&v57, *v45, v31, v32, v33) & 1) == 0)
          {
            break;
          }

          ++v45;
          v47 -= 8;
          if (!v47)
          {
            goto LABEL_198;
          }
        }

        *&v61[0] = "subsolver '";
        *(&v61[0] + 1) = 11;
        v49 = *(v48 + 23);
        if ((v49 & 0x80u) == 0)
        {
          v50 = v48;
        }

        else
        {
          v50 = *v48;
        }

        if ((v49 & 0x80u) != 0)
        {
          v49 = *(v48 + 1);
        }
      }
    }

    *&v60[0] = v50;
    *(&v60[0] + 1) = v49;
    *&v59[0] = "' is not valid";
    *(&v59[0] + 1) = 14;
    absl::lts_20240722::StrCat(v61, v60, v59, a4);
    goto LABEL_219;
  }

  *&v61[0] = "parameter '";
  *(&v61[0] + 1) = 11;
  *&v60[0] = "random_polarity_ratio";
  *(&v60[0] + 1) = 21;
  *&v59[0] = "' is NaN or not finite";
  *(&v59[0] + 1) = 22;
  result = absl::lts_20240722::StrCat(v61, v60, v59, a4);
LABEL_111:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CC80DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  absl::lts_20240722::flat_hash_map<std::string,operations_research::sat::SatParameters,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::sat::SatParameters>>>::~flat_hash_map(va);
  _Unwind_Resume(a1);
}

void sub_23CC80DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  absl::lts_20240722::flat_hash_map<std::string,operations_research::sat::SatParameters,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::sat::SatParameters>>>::~flat_hash_map(va);
  _Unwind_Resume(a1);
}

void sub_23CC80DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  absl::lts_20240722::flat_hash_map<std::string,operations_research::sat::SatParameters,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::sat::SatParameters>>>::~flat_hash_map(va);
  _Unwind_Resume(a1);
}

void sub_23CC80E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  absl::lts_20240722::flat_hash_map<std::string,operations_research::sat::SatParameters,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::sat::SatParameters>>>::~flat_hash_map(va);
  _Unwind_Resume(a1);
}

void sub_23CC80E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  absl::lts_20240722::flat_hash_map<std::string,operations_research::sat::SatParameters,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::sat::SatParameters>>>::~flat_hash_map(va);
  _Unwind_Resume(a1);
}

void sub_23CC80E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  absl::lts_20240722::flat_hash_map<std::string,operations_research::sat::SatParameters,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::sat::SatParameters>>>::~flat_hash_map(va);
  _Unwind_Resume(a1);
}

void sub_23CC80E48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  absl::lts_20240722::flat_hash_map<std::string,operations_research::sat::SatParameters,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::sat::SatParameters>>>::~flat_hash_map(va);
  _Unwind_Resume(a1);
}

char *absl::lts_20240722::StrCat<int,char [21],int>@<X0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, char *a3@<X2>, __int128 *a4@<X3>, _OWORD *a5@<X4>, unsigned int *a6@<X5>, const char *a7@<X6>, unsigned int *a8@<X7>, std::string *a9@<X8>)
{
  v31 = *MEMORY[0x277D85DE8];
  v12 = *a2;
  v24[0] = *a1;
  v24[1] = v12;
  v13 = *a4;
  v24[2] = *a3;
  v24[3] = v13;
  v24[4] = *a5;
  v14 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*a6, v23, a3);
  v21 = v23;
  v22 = v14 - v23;
  v25 = v23;
  v26 = v14 - v23;
  v15 = strlen(a7);
  v27 = a7;
  v28 = v15;
  v19 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*a8, v20, v16) - v20;
  v29 = v20;
  v30 = v19;
  result = absl::lts_20240722::strings_internal::CatPieces(v24, 8, a9);
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

char *absl::lts_20240722::StrCat<int,char [21],double>@<X0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, char *a3@<X2>, __int128 *a4@<X3>, _OWORD *a5@<X4>, unsigned int *a6@<X5>, const char *a7@<X6>, long double *a8@<X7>, std::string *a9@<X8>)
{
  v29 = *MEMORY[0x277D85DE8];
  v12 = *a2;
  v22[0] = *a1;
  v22[1] = v12;
  v13 = *a4;
  v22[2] = *a3;
  v22[3] = v13;
  v22[4] = *a5;
  v14 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*a6, v21, a3);
  v20[4] = v21;
  v20[5] = v14 - v21;
  v23 = v21;
  v24 = v14 - v21;
  v15 = strlen(a7);
  v25 = a7;
  v26 = v15;
  v19 = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v20, *a8, v16);
  v27 = v20;
  v28 = v19;
  result = absl::lts_20240722::strings_internal::CatPieces(v22, 8, a9);
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

uint64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,operations_research::sat::SatParameters>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,operations_research::sat::SatParameters>>>::contains<std::string>(uint64_t *a1, absl::lts_20240722::hash_internal::MixingHashState *a2, uint64_t a3, unint64_t a4, const unint64_t *a5)
{
  v5 = a2;
  _X8 = a1[2];
  __asm { PRFM            #4, [X8] }

  v13 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v14 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v14 = v13;
  }

  v15 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, a2, v14, a4, a5);
  v16 = 0;
  v17 = (((v15 + v14) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v15 + v14));
  v18 = a1[2];
  v19 = vdup_n_s8(v17 & 0x7F);
  v20 = *(v5 + 23);
  if (v20 >= 0)
  {
    v21 = *(v5 + 23);
  }

  else
  {
    v21 = *(v5 + 1);
  }

  v22 = *a1;
  v23 = (v17 >> 7) ^ (v18 >> 12);
  if (v20 < 0)
  {
    v5 = *v5;
  }

  v24 = v23 & v22;
  v25 = *(v18 + (v23 & v22));
  v26 = vceq_s8(v25, v19);
  if (v26)
  {
LABEL_10:
    v27 = a1[3];
    while (1)
    {
      v28 = v27 + 1000 * ((v24 + (__clz(__rbit64(v26)) >> 3)) & v22);
      v29 = *(v28 + 23);
      v30 = v29;
      if ((v29 & 0x80u) != 0)
      {
        v29 = *(v28 + 8);
      }

      if (v29 == v21)
      {
        v31 = v30 >= 0 ? v28 : *v28;
        if (!memcmp(v31, v5, v21))
        {
          return 1;
        }
      }

      v26 &= ((v26 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v26)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
LABEL_19:
    while (!*&vceq_s8(v25, 0x8080808080808080))
    {
      v16 += 8;
      v24 = (v16 + v24) & v22;
      v25 = *(v18 + v24);
      v26 = vceq_s8(v25, v19);
      if (v26)
      {
        goto LABEL_10;
      }
    }

    return 0;
  }
}

uint64_t operations_research::sat::ComputeBooleanLinearExpressionCanonicalForm(__n128 **a1, void *a2, void *a3)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = 126 - 2 * __clz((v7 - v6) >> 4);
  *a2 = 0;
  *a3 = 0;
  if (v7 == v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(operations_research::sat::LiteralWithCoeff const&,operations_research::sat::LiteralWithCoeff const&),operations_research::sat::LiteralWithCoeff*,false>(v6, v7, &v45, v9, 1);
  v10 = *a1;
  v11 = a1[1];
  if (v11 == *a1)
  {
    v27 = 0;
    v31 = (v11 - v10) >> 4;
    v29 = v31 == 0;
    v30 = -v31;
    if (v30 == 0 || !v29)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 1;
  do
  {
    v18 = &v10[v12];
    v19 = v18->n128_u64[1];
    if (v19)
    {
      v20 = v18->n128_u64[0];
      if (!v14)
      {
        goto LABEL_7;
      }

      v21 = *v14;
      if ((*v14 ^ v20) > 1)
      {
        v13 -= *(v14 + 8) == 0;
LABEL_7:
        v16 = v13;
        v17 = &v10[v16];
        v17->n128_u64[0] = v20;
        v17->n128_u64[1] = v19;
        v10 = *a1;
        v11 = a1[1];
        v14 = &(*a1)[v16];
        ++v13;
        goto LABEL_8;
      }

      v22 = __OFSUB__(v20, v21);
      if (v20 == v21)
      {
        v23 = *(v14 + 8);
        if (((((v23 + v19) ^ v19) & ((v23 + v19) ^ v23) & 0x8000000000000000) != 0) != __OFSUB__(v20, v21))
        {
          return 0;
        }

        *(v14 + 8) = v23 + v19;
      }

      else
      {
        v24 = -v19;
        v25 = *(v14 + 8);
        if (((((v25 - v19) ^ -v19) & ((v25 - v19) ^ v25) & 0x8000000000000000) != 0) != v22)
        {
          return 0;
        }

        *(v14 + 8) = v25 - v19;
        v26 = *a2 - v19;
        if ((((v26 ^ v24) & (v26 ^ *a2) & 0x8000000000000000) != 0) != v22)
        {
          return 0;
        }

        *a2 = v26;
      }
    }

LABEL_8:
    v12 = v15++;
  }

  while (v12 < (v11 - v10) >> 4);
  if (v14)
  {
    v13 -= *(v14 + 8) == 0;
  }

  v27 = v13;
  v28 = (v11 - v10) >> 4;
  v29 = v27 >= v28;
  v30 = v27 - v28;
  if (v30 != 0 && v29)
  {
LABEL_22:
    std::vector<operations_research::sat::CapacityProfile::QueueElement>::__append(a1, v30);
    v10 = *a1;
    v11 = a1[1];
    goto LABEL_26;
  }

LABEL_24:
  if (!v29)
  {
    v11 = &v10[v27];
    a1[1] = v11;
  }

LABEL_26:
  v32 = (v11 - v10) >> 4;
  v33 = __OFSUB__(v11, v10);
  if (v11 == v10)
  {
LABEL_33:
    v42 = 126 - 2 * __clz(v32);
    if (v11 == v10)
    {
      v43 = 0;
    }

    else
    {
      v43 = v42;
    }

    std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(operations_research::sat::LiteralWithCoeff const&,operations_research::sat::LiteralWithCoeff const&),operations_research::sat::LiteralWithCoeff*,false>(v10, v11, &v45, v43, 1);
    return 1;
  }

  else
  {
    v34 = 0;
    v35 = 1;
    while (1)
    {
      v36 = &v10[v34];
      v37 = v36->n128_u64[1];
      if ((v37 & 0x8000000000000000) != 0)
      {
        v38 = -v37;
        v39 = *a2 - v37;
        if ((((v39 ^ v38) & (v39 ^ *a2) & 0x8000000000000000) != 0) != v33)
        {
          return 0;
        }

        v40 = v36->n128_u32[0];
        *a2 = v39;
        v36->n128_u64[1] = v38;
        v36->n128_u32[0] = v40 ^ 1;
        v37 = v38;
      }

      v41 = *a3 + v37;
      if ((((v41 ^ v37) & (v41 ^ *a3) & 0x8000000000000000) != 0) != v33)
      {
        return 0;
      }

      *a3 = v41;
      v34 = v35++;
      v33 = __OFSUB__(v32, v34);
      if (v32 <= v34)
      {
        goto LABEL_33;
      }
    }
  }
}

BOOL operations_research::sat::anonymous namespace::CoeffComparator(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = v2 == v3;
  v5 = v2 < v3;
  if (v4)
  {
    return *a1 < *a2;
  }

  else
  {
    return v5;
  }
}

uint64_t operations_research::sat::ComputeCanonicalRhs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 + a1 >= a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = a2 + a1;
  }

  if (a2 + a1 < 0)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3;
  }

  if (a2 <= 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = a3;
  }

  if ((((a2 + a1) ^ a2) & ((a2 + a1) ^ a1)) < 0)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

uint64_t operations_research::sat::ComputeNegatedCanonicalRhs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 > 0)
  {
    v3 = -1;
  }

  else
  {
    v3 = a3;
  }

  if ((((a2 + a1) ^ a2) & ((a2 + a1) ^ a1)) < 0)
  {
    return v3;
  }

  else
  {
    return a3 - ((a2 + a1) & ~((a2 + a1) >> 63));
  }
}

void operations_research::sat::MutableUpperBoundedLinearConstraint::ClearAndResize(operations_research::sat::MutableUpperBoundedLinearConstraint *this, int a2)
{
  v4 = *this;
  if (a2 != (*(this + 1) - *this) >> 3)
  {
    v13 = 0;
    std::vector<long long>::assign(this, a2, &v13);
    operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>::ClearAndResize(this + 40, a2);
    *(this + 3) = 0;
    *(this + 4) = 0;
    return;
  }

  v6 = *(this + 9);
  v5 = *(this + 10);
  if (v6 != v5)
  {
    if (&v5[-1].u8[4] == v6)
    {
      v7 = *(this + 9);
    }

    else
    {
      v8 = ((&v5[-1].u8[4] - v6) >> 2) + 1;
      v7 = (v6 + 4 * (v8 & 0x7FFFFFFFFFFFFFFELL));
      v9 = v8 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v10 = *v6++;
        v11 = vshrq_n_s64(vshll_n_s32(v10, 0x20uLL), 0x1DuLL);
        *(v4->i64 + v11.i64[0]) = 0;
        *(v4->i64 + v11.i64[1]) = 0;
        v9 -= 2;
      }

      while (v9);
      if (v8 == (v8 & 0x7FFFFFFFFFFFFFFELL))
      {
        goto LABEL_10;
      }
    }

    do
    {
      v12 = v7->i32[0];
      v7 = (v7 + 4);
      v4->i64[v12] = 0;
    }

    while (v7 != v5);
  }

LABEL_10:
  bzero(*(this + 6), *(this + 7) - *(this + 6));
  *(this + 10) = *(this + 9);
  *(this + 3) = 0;
  *(this + 4) = 0;
}

int64x2_t operations_research::sat::MutableUpperBoundedLinearConstraint::ReduceCoefficients(operations_research::sat::MutableUpperBoundedLinearConstraint *this)
{
  v3 = *(this + 24);
  v2 = (this + 24);
  v4 = v3;
  v5 = v3.i64[1] - v3.i64[0];
  if (v3.i64[1] <= v3.i64[0])
  {
    absl::lts_20240722::log_internal::MakeCheckOpString<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const&,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const&>(v2, this + 4, "rhs_ < max_sum_");
  }

  v6 = *(this + 9);
  v7 = *(this + 10);
  if (v6 == v7)
  {
    result = vsubq_s64(v4, vdupq_n_s64(0));
    *v2 = result;
  }

  else
  {
    v8 = 0;
    v9 = *this;
    do
    {
      v10 = *(v9 + 8 * *v6);
      if (v10 >= 0)
      {
        v11 = *(v9 + 8 * *v6);
      }

      else
      {
        v11 = -v10;
      }

      v12 = v11 - v5;
      if (v12 >= 1)
      {
        v8 += v12;
        if (v10 <= 0)
        {
          v13 = -v5;
        }

        else
        {
          v13 = v5;
        }

        *(v9 + 8 * *v6) = v13;
      }

      ++v6;
    }

    while (v6 != v7);
    result = vsubq_s64(*v2, vdupq_n_s64(v8));
    *v2 = result;
  }

  return result;
}

uint64_t operations_research::sat::MutableUpperBoundedLinearConstraint::ComputeSlackForTrailPrefix(operations_research::sat::MutableUpperBoundedLinearConstraint *this, const operations_research::sat::Trail *a2, int a3)
{
  v3 = *(this + 9);
  v4 = *(this + 10);
  if (v3 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      v6 = *v3;
      v7 = *(*this + 8 * *v3);
      if (v7 >= 0)
      {
        v8 = *(*this + 8 * v6);
      }

      else
      {
        v8 = -v7;
      }

      if (v7 && ((*(*(a2 + 3) + (((2 * v6) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> ((v7 < 1) | (2 * (v6 & 0x1F)))) & 1) != 0)
      {
        if (*(*(a2 + 12) + 4 + 8 * *v3) >= a3)
        {
          v9 = 0;
        }

        else
        {
          v9 = v8;
        }

        v5 += v9;
      }

      ++v3;
    }

    while (v3 != v4);
  }

  return *(this + 3) - v5;
}

uint64_t operations_research::sat::MutableUpperBoundedLinearConstraint::ReduceCoefficientsAndComputeSlackForTrailPrefix(operations_research::sat::MutableUpperBoundedLinearConstraint *this, const operations_research::sat::Trail *a2, int a3)
{
  v3 = *(this + 24);
  v4 = *(this + 9);
  v5 = *(this + 10);
  if (v4 == v5)
  {
    v7 = 0;
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = vsubq_s64(vdupq_laneq_s64(v3, 1), v3).u64[0];
    v9 = *this;
    v10 = *(a2 + 3);
    v11 = *(a2 + 12) + 4;
    if (v8 >= 0)
    {
      v12 = v8;
    }

    else
    {
      v12 = -v8;
    }

    do
    {
      v13 = *v4;
      v14 = 8 * *v4;
      v15 = *(v9 + v14);
      if (v15)
      {
        if (v15 >= 0)
        {
          v16 = *(v9 + 8 * *v4);
        }

        else
        {
          v16 = -v15;
        }

        v17 = v16 - v8;
        v21 = v16 - v8;
        if (((*(v10 + (((2 * v13) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> ((v15 < 1) | (2 * (v13 & 0x1F)))) & 1) != 0 && *(v11 + v14) < a3)
        {
          if (v17 >= 1)
          {
            v7 += v17;
            if (v15 <= 0)
            {
              v18 = -v8;
            }

            else
            {
              v18 = v8;
            }

            *(v9 + v14) = v18;
            v16 = v12;
          }

          v6 += v16;
        }

        else if (v17 >= 1)
        {
          operations_research::sat::MutableUpperBoundedLinearConstraint::ReduceCoefficientsAndComputeSlackForTrailPrefix(&v21);
        }
      }

      ++v4;
    }

    while (v4 != v5);
    v3 = *(this + 24);
  }

  v19 = vsubq_s64(v3, vdupq_n_s64(v7));
  *(this + 24) = v19;
  return v19.i64[0] - v6;
}

uint64_t *operations_research::sat::MutableUpperBoundedLinearConstraint::ReduceSlackTo(uint64_t *result, void *a2, int a3, uint64_t a4, uint64_t a5)
{
  v17 = a4;
  v18 = a5;
  if (a4 < a5)
  {
    operations_research::sat::MutableUpperBoundedLinearConstraint::ReduceSlackTo(&v18, &v17);
  }

  if (a5 < 0)
  {
    operations_research::sat::MutableUpperBoundedLinearConstraint::ReduceSlackTo(&v18);
  }

  v5 = *result;
  v6 = *(*result + 8 * (*(a2[6] + 4 * a3) >> 1));
  if (v6 < 0)
  {
    v6 = -v6;
  }

  v16 = v6;
  if (v6 <= a4)
  {
    operations_research::sat::MutableUpperBoundedLinearConstraint::ReduceSlackTo(&v17, &v16);
  }

  v7 = a4 - a5;
  if (a4 != a5)
  {
    result[3] -= v7;
    v8 = result[9];
    v9 = result[10];
    if (v8 != v9)
    {
      v10 = a2[3];
      v11 = a2[12] + 4;
      do
      {
        v12 = 8 * *v8;
        v13 = *(v5 + v12);
        if (v13 >= 0)
        {
          v14 = *(v5 + 8 * *v8);
        }

        else
        {
          v14 = -v13;
        }

        if (v13 && (((*(v10 + (((2 * *v8) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> ((v13 < 1) | (2 * (*v8 & 0x1F)))) & 1) == 0 || *(v11 + 8 * *v8) >= a3))
        {
          if (v14 <= v7)
          {
            result[4] -= v14;
            *(v5 + v12) = 0;
          }

          else
          {
            if (v13 <= 0)
            {
              v15 = a4 - a5;
            }

            else
            {
              v15 = a5 - a4;
            }

            *(v5 + 8 * *v8) = v15 + v13;
            result[4] -= v7;
          }
        }

        ++v8;
      }

      while (v8 != v9);
    }
  }

  return result;
}

double operations_research::sat::MutableUpperBoundedLinearConstraint::CopyIntoVector(void *a1, __int128 **a2)
{
  v3 = *a2;
  a2[1] = v3;
  v4 = a1[9];
  v5 = a1[10];
  if (v4 == v5)
  {
    v9 = v3;
  }

  else
  {
    do
    {
      v7 = *(*a1 + 8 * *v4);
      if (v7)
      {
        v8 = (v7 < 1) | (2 * *v4);
        if (v7 < 0)
        {
          v7 = -v7;
        }

        LODWORD(v13) = v8;
        *(&v13 + 1) = v7;
        std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](a2, &v13);
      }

      ++v4;
    }

    while (v4 != v5);
    v9 = *a2;
    v3 = a2[1];
  }

  v10 = 126 - 2 * __clz((v3 - v9) >> 4);
  if (v3 == v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  return std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(operations_research::sat::LiteralWithCoeff const&,operations_research::sat::LiteralWithCoeff const&),operations_research::sat::LiteralWithCoeff*,false>(v9, v3, &v13, v11, 1);
}

uint64_t operations_research::sat::UpperBoundedLinearConstraint::UpperBoundedLinearConstraint(uint64_t a1, unint64_t *a2)
{
  *a1 = 0;
  *(a1 + 4) = -1;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0u;
  v4 = a1 + 24;
  *(a1 + 72) = 0u;
  v5 = a1 + 72;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 88) = 0u;
  v6 = a2[1] - *a2;
  if (v6)
  {
    if (!((v6 >> 4) >> 62))
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v8 = *a2;
  v7 = a2[1];
  if (*a2 == v7)
  {
    v10 = 0;
    goto LABEL_14;
  }

  v9 = v7 - v8 - 16;
  if (v9 > 0x6F)
  {
    v13 = (v9 >> 4) + 1;
    v12 = &v8[v13 & 0x1FFFFFFFFFFFFFF8];
    v14 = v8 + 9;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = v13 & 0x1FFFFFFFFFFFFFF8;
    v18 = 0uLL;
    do
    {
      v19.i64[0] = *(v14 - 8);
      v19.i64[1] = *(v14 - 6);
      v20.i64[0] = v19.i64[1];
      v20.i64[1] = *(v14 - 4);
      v21.i64[0] = v20.i64[1];
      v21.i64[1] = *(v14 - 2);
      v22 = v14[2];
      v23 = v14[4];
      v11 = v14[6];
      v24 = *v14;
      v14 += 16;
      v25.i64[0] = v24;
      v25.i64[1] = v22;
      v26.i64[0] = v22;
      v26.i64[1] = v23;
      v27.i64[0] = v23;
      v27.i64[1] = v11;
      v16 = vsubq_s32(v16, vmvnq_s8(vuzp1q_s32(vceqq_s64(v19, vextq_s8(v15, v19, 8uLL)), vceqq_s64(v21, v20))));
      v18 = vsubq_s32(v18, vmvnq_s8(vuzp1q_s32(vceqq_s64(v25, vextq_s8(v21, v25, 8uLL)), vceqq_s64(v27, v26))));
      v15 = v27;
      v17 -= 8;
    }

    while (v17);
    v10 = vaddvq_s32(vaddq_s32(v18, v16));
    if (v13 == (v13 & 0x1FFFFFFFFFFFFFF8))
    {
      goto LABEL_14;
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = *a2;
  }

  do
  {
    v28 = *(v12 + 1);
    if (v28 != v11)
    {
      ++v10;
    }

    v12 += 16;
    v11 = v28;
  }

  while (v12 != v7);
LABEL_14:
  if (v10 > ((*(a1 + 40) - *(a1 + 24)) >> 3))
  {
    if ((v10 & 0x80000000) == 0)
    {
      v29 = *(a1 + 32);
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v30 = v10 + 1;
  if (v30 > (*(a1 + 64) - *(a1 + 48)) >> 2)
  {
    if ((v30 & 0x80000000) == 0)
    {
      v31 = *(a1 + 56);
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v32 = *a2;
  v33 = a2[1];
  if (*a2 != v33)
  {
    v34 = 0;
    do
    {
      v42 = *v32;
      v35 = *(&v42 + 1);
      if (*(&v42 + 1) != v34)
      {
        std::vector<long long>::push_back[abi:ne200100](v4, &v42 + 1);
        v41 = (*(a1 + 80) - *(a1 + 72)) >> 2;
        std::vector<int>::push_back[abi:ne200100](a1 + 48, &v41);
        v34 = v35;
      }

      std::vector<int>::push_back[abi:ne200100](v5, &v42);
      ++v32;
    }

    while (v32 != v33);
  }

  LODWORD(v42) = (*(a1 + 80) - *(a1 + 72)) >> 2;
  std::vector<int>::push_back[abi:ne200100](a1 + 48, &v42);
  v36 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed;
  v37 = *a2;
  v38 = a2[1];
  if (v38 > *a2)
  {
    do
    {
      v39 = *(v37 + 1) + ((((v36 + *v37) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v36 + *v37)));
      v36 = (((v39 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v39));
      v37 += 4;
    }

    while (v37 < v38);
  }

  *(a1 + 104) = (((v36 + ((v38 - *a2) >> 4)) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v36 + ((v38 - *a2) >> 4)));
  return a1;
}

void sub_23CC81F54(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    v1[10] = v5;
    operator delete(v5);
    v6 = v1[6];
    if (!v6)
    {
LABEL_3:
      v7 = *v2;
      if (!*v2)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v6 = v1[6];
    if (!v6)
    {
      goto LABEL_3;
    }
  }

  v1[7] = v6;
  operator delete(v6);
  v7 = *v2;
  if (!*v2)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  v1[4] = v7;
  operator delete(v7);
  _Unwind_Resume(exception_object);
}

void operations_research::sat::UpperBoundedLinearConstraint::AddToConflict(operations_research::sat::UpperBoundedLinearConstraint *this, operations_research::sat::MutableUpperBoundedLinearConstraint *a2)
{
  v4 = *(this + 9);
  v5 = *(this + 10);
  if (v4 != v5)
  {
    v6 = 0;
    v7 = 1;
    do
    {
      v8 = *v4++;
      operations_research::sat::MutableUpperBoundedLinearConstraint::AddTerm(a2, v8, *(*(this + 3) + 8 * v6));
      if (v7 == *(*(this + 6) + 4 * (v6 + 1)))
      {
        ++v6;
      }

      ++v7;
    }

    while (v4 != v5);
  }

  v9 = *(this + 12);
  v10 = v9;
  if (v9 < 0)
  {
    operations_research::sat::UpperBoundedLinearConstraint::AddToConflict(&v10);
  }

  *(a2 + 3) += v9;
}

void operations_research::sat::MutableUpperBoundedLinearConstraint::AddTerm(uint64_t *a1, int a2, uint64_t a3)
{
  v17 = a3;
  if (a3 < 1)
  {
    operations_research::sat::MutableUpperBoundedLinearConstraint::AddTerm(&v17);
  }

  v3 = a2 >> 1;
  if (a2)
  {
    v4 = -a3;
  }

  else
  {
    v4 = a3;
  }

  v5 = *a1;
  v6 = *(*a1 + 8 * v3);
  v7 = a2 & 0xFFFFFFFE;
  if (v6 < 1)
  {
    ++v7;
  }

  if (v7 == a2)
  {
    v8 = a1[4] + a3;
  }

  else
  {
    if (v6 < 0)
    {
      v6 = -v6;
    }

    if (v6 >= a3)
    {
      v6 = a3;
    }

    v9 = a1[4];
    a1[3] -= v6;
    v10 = *(v5 + 8 * v3);
    v11 = v10 + v4;
    if (v10 + v4 < 0)
    {
      v11 = -v11;
    }

    if (v10 < 0)
    {
      v10 = -v10;
    }

    v8 = v9 - v10 + v11;
  }

  a1[4] = v8;
  if (v8 < 0)
  {
    absl::lts_20240722::log_internal::MakeCheckOpString<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const&,long long>(a1 + 4, 0, "max_sum_ >= 0");
  }

  *(v5 + 8 * v3) += v4;
  v16[0] = a2 >> 1;
  v12 = v3 >> 6;
  v13 = a1[6];
  v14 = *(v13 + 8 * v12);
  v15 = 1 << v3;
  if ((v14 & v15) == 0)
  {
    *(v13 + 8 * v12) = v14 | v15;
    std::vector<int>::push_back[abi:ne200100]((a1 + 9), v16);
  }
}

void operations_research::sat::UpperBoundedLinearConstraint::InitializeRhs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a1 + 96) = a2;
  v5 = *(a5 + 8);
  operator new();
}

uint64_t operations_research::sat::UpperBoundedLinearConstraint::Propagate(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = *a3;
  v6 = *(a1 + 16);
  if ((v6 & 0x80000000) != 0)
  {
LABEL_8:
    v10 = *(*(a1 + 48) + 4 * (v6 + 1));
    if (v10 >= *(a1 + 20))
    {
      goto LABEL_20;
    }
  }

  else
  {
    v7 = *(a1 + 24);
    v5 += *(v7 + 8 * v6);
    do
    {
      if (*(v7 + 8 * v6) <= v5)
      {
        goto LABEL_8;
      }

      v8 = v6 - 1;
      *(a1 + 16) = v6 - 1;
    }

    while (v6-- > 0);
    v6 = v8;
    v10 = **(a1 + 48);
    if (v10 >= *(a1 + 20))
    {
LABEL_20:
      v22 = 1;
      if ((v6 & 0x80000000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_22;
    }
  }

  v11 = *(a4 + 24);
  v12 = -1;
  while (1)
  {
    v13 = *(*(a1 + 72) + 4 * v10);
    v14 = v13 >> 6;
    v15 = *(v11 + 8 * (v13 >> 6));
    if (((v15 >> (v13 & 0x3F ^ 1)) & 1) == 0)
    {
      if (((v15 >> (v13 & 0x3F)) & 1) == 0)
      {
        if (v12 < 0)
        {
          v19 = *(a4 + 12);
          if (*(a1 + 4) == -1)
          {
            *(a1 + 4) = v19;
          }

          v20 = *(a5 + 32) + 16 * v19;
          *v20 = a2;
          *(v20 + 8) = a1;
          v21 = *(a4 + 12);
          *(a4 + 8) = *(a4 + 8) & 0xFFFFFFF | (*a5 << 28);
          *(*(a4 + 48) + 4 * v21) = v13 ^ 1;
          *(*(a4 + 96) + 8 * (v13 >> 1)) = *(a4 + 8);
          v11 = *(a4 + 24);
          *(v11 + 8 * v14) |= 1 << (v13 ^ 1u);
          ++*(a4 + 12);
          v12 = *(*(a1 + 72) + 4 * v10) >> 1;
        }

        else
        {
          v16 = v13 >> 1;
          *(*(a4 + 128) + 4 * v16) = v12;
          v17 = *(a4 + 12);
          v18 = v13 ^ 1;
          *(a4 + 8) = *(a4 + 8) & 0xFFFFFFF | 0x30000000;
          *(*(a4 + 48) + 4 * v17) = v18;
          *(*(a4 + 96) + 8 * v16) = *(a4 + 8);
          v11 = *(a4 + 24);
          *(v11 + 8 * v14) |= 1 << v18;
          ++*(a4 + 12);
        }

        goto LABEL_11;
      }

      if (*(*(a4 + 96) + 8 * (v13 >> 1) + 4) > a2)
      {
        break;
      }
    }

LABEL_11:
    if (++v10 >= *(a1 + 20))
    {
      v6 = *(a1 + 16);
      goto LABEL_20;
    }
  }

  v25 = a1;
  v26 = a3;
  operations_research::sat::UpperBoundedLinearConstraint::FillReason(a1, a4, a2, v13 >> 1, (a5 + 8));
  v27 = *(*(v25 + 72) + 4 * v10) ^ 1;
  std::vector<int>::push_back[abi:ne200100](a5 + 8, &v27);
  a3 = v26;
  a1 = v25;
  v22 = 0;
  v6 = *(v25 + 16);
  if ((v6 & 0x80000000) != 0)
  {
    goto LABEL_22;
  }

LABEL_21:
  v5 -= *(*(a1 + 24) + 8 * v6);
LABEL_22:
  *a3 = v5;
  *(a1 + 20) = *(*(a1 + 48) + 4 * (v6 + 1));
  return v22;
}

void operations_research::sat::UpperBoundedLinearConstraint::FillReason(void *a1, void *a2, int a3, int a4, void *a5)
{
  a5[1] = *a5;
  v8 = a1[12];
  if (v8 == 1)
  {
    v33 = *(a2[6] + 4 * a3) ^ 1;
    std::vector<int>::push_back[abi:ne200100](a5, &v33);
  }

  else
  {
    v10 = (a1[10] - a1[9]) >> 2;
    v11 = (v10 - 1);
    if (v10 - 1 >= 0)
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = a1[3];
      v17 = ((a1[4] - v16) >> 3) - 1;
      do
      {
        v19 = *(a1[9] + 4 * v11);
        if (v19 >> 1 == a4)
        {
          v15 = *(v16 + 8 * v17);
        }

        else if ((*(a2[3] + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v19))
        {
          v20 = (a2[12] + 8 * (v19 >> 1));
          if (v20[1] <= a3)
          {
            if ((*v20 & 0xFFFFFFF) != 0)
            {
              v32 = v19 ^ 1;
              std::vector<int>::push_back[abi:ne200100](a5, &v32);
              v16 = a1[3];
              v14 = v17;
              v13 = v11;
            }

            v8 -= *(v16 + 8 * v17);
          }
        }

        v17 -= v11 == *(a1[6] + 4 * v17);
      }

      while (v11-- > 0);
      v21 = a5[1];
      if ((v21 - *a5) >= 5)
      {
        v22 = a1[3];
        if (a1[4] - v22 != 8)
        {
          v23 = v15 - v8;
          if (*(v22 + 8 * v14) < v15 - v8)
          {
            v24 = v13;
            v25 = a1[9];
            v26 = a1[10];
            if (v13 < ((v26 - v25) >> 2))
            {
              v27 = a1[6];
              do
              {
                v28 = *(v25 + 4 * v24);
                v29 = v14 + 1;
                if (v13 == *(v27 + 4 * (v14 + 1)))
                {
                  ++v14;
                  if (*(v22 + 8 * v29) >= v23)
                  {
                    break;
                  }
                }

                v30 = v21 - 4;
                if ((*(v21 - 4) ^ v28) == 1)
                {
                  v31 = *(v22 + 8 * v14);
                  v23 -= v31;
                  a5[1] = v30;
                  if (v31 >= v23)
                  {
                    return;
                  }

                  v26 = a1[10];
                  v21 = v30;
                }

                v24 = ++v13;
              }

              while (v13 < ((v26 - v25) >> 2));
            }
          }
        }
      }
    }
  }
}

void operations_research::sat::UpperBoundedLinearConstraint::ResolvePBConflict(operations_research::sat::UpperBoundedLinearConstraint *this, void *a2, int a3, operations_research::sat::MutableUpperBoundedLinearConstraint *a4, uint64_t *a5)
{
  v9 = a2[12];
  v10 = *(v9 + 8 * a3 + 4);
  v52 = 0;
  v11 = *(this + 9);
  v12 = *(this + 10);
  if (v11 == v12)
  {
    v13 = 0;
    v15 = 0;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = a2[3];
    v17 = v9 + 4;
    v18 = 1;
    do
    {
      v19 = *v11;
      LODWORD(v53) = v19;
      v20 = (v19 >> 1);
      if (a3 == v20)
      {
        if (*(*a4 + 8 * a3) >= 1)
        {
          v21 = 2 * a3;
        }

        else
        {
          v21 = 2 * a3 + 1;
        }

        LODWORD(v51) = v21;
        if (v19 == v21)
        {
          operations_research::sat::UpperBoundedLinearConstraint::ResolvePBConflict(&v53, &v51);
        }

        v13 = *(*(this + 3) + 8 * v14);
        v52 = v13;
      }

      else if (((*(v16 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v19) & 1) != 0 && *(v17 + 8 * v20) < v10)
      {
        v15 += *(*(this + 3) + 8 * v14);
      }

      if (v18 == *(*(this + 6) + 4 * (v14 + 1)))
      {
        ++v14;
      }

      ++v11;
      ++v18;
    }

    while (v11 != v12);
  }

  v22 = *(this + 12);
  v23 = v22 - v15;
  if (v22 < v15)
  {
    v25 = *(a4 + 9);
    v24 = *(a4 + 10);
    if (v25 != v24)
    {
      v26 = *a4;
      if (&v24[-1].u8[4] == v25)
      {
        v27 = *(a4 + 9);
      }

      else
      {
        v35 = ((&v24[-1].u8[4] - v25) >> 2) + 1;
        v27 = (v25 + 4 * (v35 & 0x7FFFFFFFFFFFFFFELL));
        v36 = v35 & 0x7FFFFFFFFFFFFFFELL;
        do
        {
          v37 = *v25++;
          v38 = vshrq_n_s64(vshll_n_s32(v37, 0x20uLL), 0x1DuLL);
          *(v26 + v38.i64[0]) = 0;
          *(v26 + v38.i64[1]) = 0;
          v36 -= 2;
        }

        while (v36);
        if (v35 == (v35 & 0x7FFFFFFFFFFFFFFELL))
        {
          goto LABEL_39;
        }
      }

      do
      {
        v39 = v27->i32[0];
        v27 = (v27 + 4);
        *(v26 + 8 * v39) = 0;
      }

      while (v27 != v24);
    }

LABEL_39:
    bzero(*(a4 + 6), *(a4 + 7) - *(a4 + 6));
    *(a4 + 10) = *(a4 + 9);
    *(a4 + 3) = 0;
    *(a4 + 4) = 0;
    operations_research::sat::UpperBoundedLinearConstraint::AddToConflict(this, a4);
    *a5 = *(this + 12) - v15;
    return;
  }

  v51 = v22 - v15;
  if (v22 - v15 < 0)
  {
    operations_research::sat::UpperBoundedLinearConstraint::ResolvePBConflict(&v51);
  }

  v28 = *(*a4 + 8 * a3);
  if (v28 < 0)
  {
    v28 = -v28;
  }

  v50 = v28;
  if (v28 >= v13)
  {
    v29 = v13;
  }

  else
  {
    v29 = v28;
  }

  v30 = *a5;
  if (*a5 >= v28)
  {
    operations_research::sat::UpperBoundedLinearConstraint::ResolvePBConflict(a5, &v50);
  }

  if (v23 >= v13)
  {
    operations_research::sat::UpperBoundedLinearConstraint::ResolvePBConflict(&v51, &v52);
  }

  v31 = v23 - v29 + v30;
  if (v31 < 0)
  {
    goto LABEL_61;
  }

  v48 = 0;
  v49 = 0;
  v32 = v13 <= v28 ? v28 : v13;
  if (v31 >= v32 - v29)
  {
    v48 = v30;
    v49 = v23;
    v33 = v30;
    v34 = v23;
    if (v30 < 0)
    {
      operations_research::sat::UpperBoundedLinearConstraint::ResolvePBConflict(&v48);
    }
  }

  else
  {
    v33 = v31 + 1;
    if (v13 >= v28)
    {
      v49 = v31 + 1;
      v34 = v31 + 1;
      v33 = 0;
    }

    else
    {
      v34 = 0;
      v48 = v31 + 1;
    }

    if (v33 > v30)
    {
      operations_research::sat::UpperBoundedLinearConstraint::ResolvePBConflict(&v48, a5);
    }
  }

  if (v33)
  {
    operations_research::sat::MutableUpperBoundedLinearConstraint::ReduceSlackTo(a4, a2, v10, v30, v30 - v33);
    *a5 -= v33;
  }

  if (v34 > v23)
  {
    operations_research::sat::UpperBoundedLinearConstraint::ResolvePBConflict(&v49, &v51);
  }

  if (!v34)
  {
LABEL_61:
    operations_research::sat::UpperBoundedLinearConstraint::AddToConflict(this, a4);
  }

  else
  {
    v40 = *(this + 9);
    v41 = *(this + 10);
    if (v40 != v41)
    {
      v42 = 0;
      v43 = 1;
      do
      {
        v45 = *v40;
        if ((*(a2[3] + ((*v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> *v40))
        {
          v46 = *(this + 3);
          if (*(a2[12] + 8 * (v45 >> 1) + 4) < v10)
          {
            v44 = *(v46 + 8 * v42);
          }

          else
          {
            v44 = *(v46 + 8 * v42) - v34;
            if (v44 < 1)
            {
              goto LABEL_52;
            }
          }
        }

        else
        {
          v44 = *(*(this + 3) + 8 * v42) - v34;
          if (v44 < 1)
          {
            goto LABEL_52;
          }
        }

        operations_research::sat::MutableUpperBoundedLinearConstraint::AddTerm(a4, v45, v44);
LABEL_52:
        if (v43 == *(*(this + 6) + 4 * (v42 + 1)))
        {
          ++v42;
        }

        ++v40;
        ++v43;
      }

      while (v40 != v41);
    }

    v47 = *(this + 12) - v34;
    v53 = v47;
    if (v47 < 0)
    {
      operations_research::sat::UpperBoundedLinearConstraint::AddToConflict(&v53);
    }

    *(a4 + 3) += v47;
  }
}

void operations_research::sat::PbConstraints::AddConstraint(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 40) == *(a1 + 48))
  {
    v6 = ((*(a4 + 56) - *(a4 + 48)) >> 1) & 0xFFFFFFFFFFFFFFFELL;
    v9 = *(a1 + 88);
    v8 = *(a1 + 96);
    v7 = a1 + 88;
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v9) >> 3);
    if (v6 <= v10)
    {
      if (v6 < v10)
      {
        v11 = v9 + 24 * v6;
        if (v8 != v11)
        {
          v12 = *(a1 + 96);
          do
          {
            v14 = *(v12 - 24);
            v12 -= 24;
            v13 = v14;
            if (v14)
            {
              *(v8 - 16) = v13;
              operator delete(v13);
            }

            v8 = v12;
          }

          while (v12 != v11);
        }

        *(a1 + 96) = v11;
      }
    }

    else
    {
      std::vector<std::vector<operations_research::sat::GenericLiteralWatcher::WatchData>>::__append(v7, v6 - v10);
    }

    v15 = *(a1 + 232);
    *(a1 + 200) = *(a1 + 32);
    v16 = ((*(a4 + 56) - *(a4 + 48)) >> 2);
    v17 = (*(a1 + 240) - v15) >> 4;
    if (v16 <= v17)
    {
      if (v16 < v17)
      {
        *(a1 + 240) = v15 + 16 * v16;
      }
    }

    else
    {
      std::vector<operations_research::sat::PbConstraintsEnqueueHelper::ReasonInfo>::__append(a1 + 232, v16 - v17);
    }

    *(a1 + 36) = *(a4 + 12);
  }

  operator new();
}

void sub_23CC833D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::unique_ptr<operations_research::sat::UpperBoundedLinearConstraint>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23CC833E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::unique_ptr<operations_research::sat::UpperBoundedLinearConstraint>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23CC833F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::unique_ptr<operations_research::sat::UpperBoundedLinearConstraint>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23CC8340C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::unique_ptr<operations_research::sat::UpperBoundedLinearConstraint>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23CC83420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::unique_ptr<operations_research::sat::UpperBoundedLinearConstraint>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23CC83434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::unique_ptr<operations_research::sat::UpperBoundedLinearConstraint>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23CC83460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::unique_ptr<operations_research::sat::UpperBoundedLinearConstraint>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23CC83474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::unique_ptr<operations_research::sat::UpperBoundedLinearConstraint>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23CC83488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::unique_ptr<operations_research::sat::UpperBoundedLinearConstraint>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<operations_research::sat::PbConstraints::ConstraintIndexWithCoeff>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
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

void *std::unique_ptr<operations_research::sat::UpperBoundedLinearConstraint>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[9];
    if (v3)
    {
      v1[10] = v3;
      operator delete(v3);
    }

    v4 = v1[6];
    if (v4)
    {
      v1[7] = v4;
      operator delete(v4);
    }

    v5 = v1[3];
    if (v5)
    {
      v1[4] = v5;
      operator delete(v5);
    }

    MEMORY[0x23EED9460](v1, 0x1030C40B4F52BC7);
    return v2;
  }

  return result;
}

void operations_research::sat::PbConstraints::AddLearnedConstraint(operations_research::sat::PbConstraints *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  operations_research::sat::PbConstraints::DeleteSomeLearnedConstraintIfNeeded(a1);
  v9 = *(a1 + 5);
  v8 = *(a1 + 6);
  operations_research::sat::PbConstraints::AddConstraint(a1, a2, a3, a4);
}

void operations_research::sat::PbConstraints::DeleteSomeLearnedConstraintIfNeeded(operations_research::sat::PbConstraints *this)
{
  v2 = *(this + 66);
  if (v2)
  {
    v3 = v2 - 1;
    *(this + 66) = v3;
    if (v3 <= 0)
    {
      v4 = *(this + 5);
      if (*(this + 6) != v4)
      {
        v5 = 0;
        v6 = 1;
        do
        {
          v7 = *(v4 + 8 * v5);
          if (*(v7 + 1) == 1 && *(v7 + 4) == -1)
          {
            operator new();
          }

          v5 = v6;
          v4 = *(this + 5);
          ++v6;
        }

        while (v5 < (*(this + 6) - v4) >> 3);
      }

      std::__sort<std::__less<double,double> &,double *>();
      v11 = *(this + 5);
      v12 = *(this + 6);
      v13 = ((v12 - v11) >> 3) - *(this + 65);
      if (v13 <= 0)
      {
        absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v13, 0, "num_constraints_to_delete > 0");
      }

      if (v12 != v11)
      {
        v14 = 0;
        v15 = (v12 - v11) >> 3;
        v16 = 1;
        do
        {
          v17 = *(v11 + 8 * v14);
          if (*(v17 + 1) == 1 && *(v17 + 4) == -1)
          {
            *v17 = 1;
          }

          v14 = v16++;
        }

        while (v15 > v14);
      }

      operations_research::sat::PbConstraints::DeleteConstraintMarkedForDeletion(this);
      v18 = (*(this + 6) - *(this + 5)) >> 3;
      v19 = *(this + 35);
      v20 = *(v19 + 476) + v18;
      *(this + 65) = v20;
      *(this + 66) = (v20 / *(v19 + 480)) - v18;
    }
  }

  else
  {
    v8 = (*(this + 6) - *(this + 5)) >> 3;
    v9 = *(this + 35);
    v10 = *(v9 + 476) + v8;
    *(this + 65) = v10;
    *(this + 66) = (v10 / *(v9 + 480)) - v8;
  }
}

void sub_23CC83A10(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::PbConstraints::PropagateNext(operations_research::sat::PbConstraints *this, operations_research::sat::Trail *a2)
{
  v2 = *(this + 9);
  v3 = *(*(a2 + 6) + 4 * v2);
  *(this + 9) = v2 + 1;
  v4 = (*(this + 11) + 24 * v3);
  v6 = *v4;
  v5 = v4[1];
  v7 = 1;
  *(this + 48) += (v5 - *v4) >> 4;
  if (v5 != v6)
  {
    v10 = 0;
    do
    {
      v11 = *(v6 + 4);
      v12 = (*(this + 8) + 8 * v11);
      v13 = *(v6 + 8);
      v14 = *v12 - v13 < 0;
      *v12 -= v13;
      if (v14 && (v10 & 1) == 0)
      {
        v15 = *(*(this + 5) + 8 * v11);
        *v6 = 1;
        ++*(this + 46);
        v16 = *(v15 + 20);
        v17 = operations_research::sat::UpperBoundedLinearConstraint::Propagate(v15, v2, v12, a2, this + 200);
        if ((v17 & 1) == 0)
        {
          *(a2 + 15) = 0;
          v18 = *(a2 + 9);
          *(a2 + 9) = *(this + 26);
          *(this + 26) = v18;
          v19 = *(a2 + 10);
          *(a2 + 10) = *(this + 27);
          *(this + 27) = v19;
          v20 = *(a2 + 11);
          *(a2 + 11) = *(this + 28);
          *(this + 28) = v20;
          v21 = *(v6 + 4);
          *(this + 64) = v21;
          v22 = *(this + 5);
          v23 = *(v22 + 8 * v21);
          if (*(v23 + 1) == 1)
          {
            v24 = *(*(this + 35) + 416);
            v25 = *(this + 34);
            v26 = *(v23 + 8) + v25;
            *(v23 + 8) = v26;
            if (v26 > v24)
            {
              v27 = 1.0 / v24;
              *(this + 34) = v27 * v25;
              v28 = *(this + 6) - v22;
              if (v28)
              {
                v29 = 0;
                v30 = v28 >> 3;
                v31 = 1;
                do
                {
                  *(*(v22 + 8 * v29) + 8) = v27 * *(*(v22 + 8 * v29) + 8);
                  v29 = v31++;
                }

                while (v30 > v29);
              }
            }
          }
        }

        v10 = v17 ^ 1;
        *(this + 47) += v16 - *(v15 + 20);
      }

      v6 += 16;
    }

    while (v6 != v5);
    v7 = v10 ^ 1;
  }

  return v7 & 1;
}

uint64_t operations_research::sat::PbConstraints::BumpActivity(uint64_t result, uint64_t a2)
{
  if (*(a2 + 1) == 1)
  {
    v2 = *(*(result + 280) + 416);
    v3 = *(result + 272);
    v4 = *(a2 + 8) + v3;
    *(a2 + 8) = v4;
    if (v4 > v2)
    {
      v5 = 1.0 / v2;
      *(result + 272) = v5 * v3;
      v6 = *(result + 40);
      v7 = *(result + 48) - v6;
      if (v7)
      {
        v8 = 0;
        v9 = v7 >> 3;
        v10 = 1;
        do
        {
          *(*(v6 + 8 * v8) + 8) = v5 * *(*(v6 + 8 * v8) + 8);
          v8 = v10++;
        }

        while (v9 > v8);
      }
    }
  }

  return result;
}

uint64_t operations_research::sat::PbConstraints::Propagate(operations_research::sat::PbConstraints *this, operations_research::sat::Trail *a2)
{
  v4 = *(a2 + 3);
  while (*(a2 + 3) == v4 && *(this + 9) < v4)
  {
    if ((operations_research::sat::PbConstraints::PropagateNext(this, a2) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void operations_research::sat::PbConstraints::Untrail(operations_research::sat::PbConstraints *this, const operations_research::sat::Trail *a2, int a3)
{
  operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>::ClearAndResize(this + 112, (*(this + 6) - *(this + 5)) >> 3);
  v5 = *(this + 9);
  while (v5 > a3)
  {
    *(this + 9) = --v5;
    v6 = (*(this + 11) + 24 * *(*(a2 + 6) + 4 * v5));
    v8 = *v6;
    v7 = v6[1];
    if (*v6 != v7)
    {
      do
      {
        v10 = *(v8 + 4);
        *(*(this + 8) + 8 * v10) += *(v8 + 8);
        if (*v8 == 1)
        {
          *v8 = 0;
          v11 = v10 >> 6;
          v12 = *(this + 15);
          v13 = *(v12 + 8 * v11);
          if ((v13 & (1 << v10)) == 0)
          {
            *(v12 + 8 * v11) = v13 | (1 << v10);
            v15 = *(this + 19);
            v14 = *(this + 20);
            if (v15 < v14)
            {
              *v15 = v10;
              v9 = v15 + 4;
            }

            else
            {
              v16 = *(this + 18);
              v17 = v15 - v16;
              v18 = (v15 - v16) >> 2;
              v19 = v18 + 1;
              if ((v18 + 1) >> 62)
              {
                std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
              }

              v20 = v14 - v16;
              if (v20 >> 1 > v19)
              {
                v19 = v20 >> 1;
              }

              if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v21 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v21 = v19;
              }

              if (v21)
              {
                if (!(v21 >> 62))
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v22 = (v15 - v16) >> 2;
              v23 = (4 * v18);
              v24 = (4 * v18 - 4 * v22);
              *v23 = v10;
              v9 = v23 + 1;
              memcpy(v24, v16, v17);
              *(this + 18) = v24;
              *(this + 19) = v9;
              *(this + 20) = 0;
              if (v16)
              {
                operator delete(v16);
              }
            }

            *(this + 19) = v9;
          }
        }

        v8 += 16;
      }

      while (v8 != v7);
      v5 = *(this + 9);
    }
  }

  v25 = *(this + 18);
  v26 = *(this + 19);
  if (v25 != v26)
  {
    v27 = *(this + 5);
    v28 = *(this + 8);
    do
    {
      v29 = *v25;
      v30 = *(v27 + 8 * v29);
      v31 = 8 * v29;
      v32 = *(v28 + v31);
      v33 = *(v30 + 16);
      v34 = *(v30 + 24);
      if ((v33 & 0x80000000) == 0)
      {
        v32 += *(v34 + 8 * v33);
      }

      v35 = (*(v30 + 32) - v34) >> 3;
      v36 = v33 + 1;
      v37 = (v33 + 1);
      if (v35 > v37 && *(v34 + 8 * v36) <= v32)
      {
        do
        {
          v33 = v36++;
          v37 = v36;
        }

        while (v35 > v36 && *(v34 + 8 * v36) <= v32);
        *(v30 + 16) = v33;
      }

      if ((v33 & 0x80000000) == 0)
      {
        v32 -= *(v34 + 8 * v33);
      }

      *(v28 + v31) = v32;
      *(v30 + 20) = *(*(v30 + 48) + 4 * v37);
      if (*(v30 + 4) >= a3)
      {
        *(v30 + 4) = -1;
      }

      ++v25;
    }

    while (v25 != v26);
  }
}

uint64_t operations_research::sat::PbConstraints::Reason(operations_research::sat::PbConstraints *this, const operations_research::sat::Trail *a2, int a3)
{
  v5 = *(this + 29) + 16 * a3;
  EmptyVectorToStoreReason = operations_research::sat::Trail::GetEmptyVectorToStoreReason(a2, a3);
  operations_research::sat::UpperBoundedLinearConstraint::FillReason(*(v5 + 8), a2, *v5, *(*(a2 + 6) + 4 * a3) >> 1, EmptyVectorToStoreReason);
  result = *EmptyVectorToStoreReason;
  v8 = (EmptyVectorToStoreReason[1] - *EmptyVectorToStoreReason) >> 2;
  return result;
}

void operations_research::sat::PbConstraints::DeleteConstraintMarkedForDeletion(operations_research::sat::PbConstraints *this)
{
  v2 = *(this + 6) - *(this + 5);
  if (v2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  std::vector<std::unique_ptr<operations_research::sat::UpperBoundedLinearConstraint>>::resize(this + 40, 0);
  v3 = *(this + 8);
  if ((*(this + 9) - v3) >> 3)
  {
    *(this + 9) = v3;
  }

  v4 = *(this + 11);
  if ((-1431655765 * ((*(this + 12) - v4) >> 3)) >= 1)
  {
    for (i = 0; i < (-1431655765 * ((*(this + 12) - v4) >> 3)); ++i)
    {
      v6 = (v4 + 24 * i);
      v7 = *v6;
      v8 = v6[1];
      if (v8 == *v6)
      {
        v10 = 0;
        if ((v8 - *v6) >> 4)
        {
LABEL_19:
          v6[1] = v7 + 16 * v10;
        }
      }

      else
      {
        v9 = 0;
        LODWORD(v10) = 0;
        v11 = 1;
        do
        {
          v13 = v7 + 16 * v9;
          v14 = *(4 * *(v13 + 4));
          if (v14 != -1)
          {
            v15 = 16 * v10;
            *(v7 + v15) = *v13;
            v7 = *v6;
            v8 = v6[1];
            *(*v6 + v15 + 4) = v14;
            LODWORD(v10) = v10 + 1;
          }

          v9 = v11;
          v12 = (v8 - v7) >> 4;
          ++v11;
        }

        while (v12 > v9);
        v10 = v10;
        if (v10 > v12)
        {
          std::vector<operations_research::sat::PbConstraints::ConstraintIndexWithCoeff>::__append(v6, v10 - v12);
        }

        else if (v12 > v10)
        {
          goto LABEL_19;
        }
      }

      v4 = *(this + 11);
    }
  }
}

void sub_23CC8444C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

double operations_research::sat::PbConstraints::UpdateActivityIncrement(operations_research::sat::PbConstraints *this)
{
  result = *(this + 34) * (1.0 / *(*(this + 35) + 400));
  *(this + 34) = result;
  return result;
}

void std::vector<std::unique_ptr<operations_research::sat::UpperBoundedLinearConstraint>>::resize(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = (v3 - *a1) >> 3;
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::unique_ptr<operations_research::sat::UpperBoundedLinearConstraint>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 8 * a2;
    while (v3 != v7)
    {
      v9 = *--v3;
      v8 = v9;
      *v3 = 0;
      if (v9)
      {
        v10 = v8[9];
        if (v10)
        {
          v8[10] = v10;
          operator delete(v10);
        }

        v11 = v8[6];
        if (v11)
        {
          v8[7] = v11;
          operator delete(v11);
        }

        v12 = v8[3];
        if (v12)
        {
          v8[4] = v12;
          operator delete(v12);
        }

        MEMORY[0x23EED9460](v8, 0x1030C40B4F52BC7);
      }
    }

    *(a1 + 8) = v7;
  }
}

void operations_research::sat::PbConstraints::~PbConstraints(operations_research::sat::PbConstraints *this)
{
  operations_research::sat::PbConstraints::~PbConstraints(this);

  JUMPOUT(0x23EED9460);
}

{
  *this = &unk_284F43FD8;
  operations_research::StatsGroup::~StatsGroup((this + 288));
  v2 = *(this + 29);
  if (v2)
  {
    *(this + 30) = v2;
    operator delete(v2);
  }

  v3 = *(this + 26);
  if (v3)
  {
    *(this + 27) = v3;
    operator delete(v3);
  }

  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,std::vector<long long>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,std::vector<long long>>>>::~raw_hash_set(this + 21);
  v4 = *(this + 18);
  if (v4)
  {
    *(this + 19) = v4;
    operator delete(v4);
  }

  v5 = *(this + 15);
  if (v5)
  {
    *(this + 16) = v5;
    operator delete(v5);
  }

  v6 = *(this + 11);
  if (v6)
  {
    v7 = *(this + 12);
    v8 = *(this + 11);
    if (v7 != v6)
    {
      v9 = *(this + 12);
      do
      {
        v11 = *(v9 - 24);
        v9 -= 24;
        v10 = v11;
        if (v11)
        {
          *(v7 - 16) = v10;
          operator delete(v10);
        }

        v7 = v9;
      }

      while (v9 != v6);
      v8 = *(this + 11);
    }

    *(this + 12) = v6;
    operator delete(v8);
  }

  v12 = *(this + 8);
  if (v12)
  {
    *(this + 9) = v12;
    operator delete(v12);
  }

  v13 = (this + 40);
  std::vector<std::unique_ptr<operations_research::sat::UpperBoundedLinearConstraint>>::__destroy_vector::operator()[abi:ne200100](&v13);
  *this = &unk_284F3BCC8;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void std::vector<std::unique_ptr<operations_research::sat::UpperBoundedLinearConstraint>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          v8 = v6[9];
          if (v8)
          {
            v6[10] = v8;
            operator delete(v8);
          }

          v9 = v6[6];
          if (v9)
          {
            v6[7] = v9;
            operator delete(v9);
          }

          v10 = v6[3];
          if (v10)
          {
            v6[4] = v10;
            operator delete(v10);
          }

          MEMORY[0x23EED9460](v6, 0x1030C40B4F52BC7);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<operations_research::sat::PbConstraintsEnqueueHelper::ReasonInfo>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 4)
  {
    if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0)
    {
      v11 = 16 * a2;
      bzero(*(a1 + 8), 16 * a2);
      v4 += v11;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = (v4 - *a1) >> 4;
    if ((v5 + a2) >> 60)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v6 = v3 - *a1;
    v7 = v6 >> 3;
    if (v6 >> 3 <= v5 + a2)
    {
      v7 = v5 + a2;
    }

    if (v6 >= 0x7FFFFFFFFFFFFFF0)
    {
      v8 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v7;
    }

    if (v8)
    {
      if (!(v8 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = (16 * v5);
    if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = 16 * a2;
      bzero(v12, 16 * a2);
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

double std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(operations_research::sat::LiteralWithCoeff const&,operations_research::sat::LiteralWithCoeff const&),operations_research::sat::LiteralWithCoeff*,false>(__n128 *a1, __int128 *a2, uint64_t (**a3)(__n128 *, __n128 *), uint64_t a4, char a5)
{
  while (2)
  {
    v10 = (a2 - 1);
    v57 = (a2 - 3);
    v58 = (a2 - 2);
    v11 = a1;
    while (1)
    {
      while (1)
      {
        a1 = v11;
        v12 = (a2 - v11) >> 4;
        if (v12 > 2)
        {
          if (v12 == 3)
          {
            v41 = (*a3)(v11 + 1, v11);
            v42 = (*a3)(a2 - 1, v11 + 1);
            if (v41)
            {
              if (v42)
              {
                goto LABEL_109;
              }

              v60 = *v11;
              *v11 = v11[1];
              v11[1] = v60;
              if (!(*a3)(a2 - 1, v11 + 1))
              {
                return result;
              }

              v60 = v11[1];
              v11[1] = *v10;
LABEL_110:
              result = v60.n128_f64[0];
              *v10 = v60;
              return result;
            }

            if (!v42)
            {
              return result;
            }

            v60 = v11[1];
            v11[1] = *v10;
            *v10 = v60;
LABEL_153:
            if ((*a3)(v11 + 1, v11))
            {
              v60 = *v11;
              *v11 = v11[1];
              result = v60.n128_f64[0];
              v11[1] = v60;
            }

            return result;
          }

          if (v12 != 4)
          {
            if (v12 == 5)
            {
              *&result = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(operations_research::sat::LiteralWithCoeff const&,operations_research::sat::LiteralWithCoeff const&),operations_research::sat::LiteralWithCoeff*,0>(v11, v11 + 1, v11 + 2, v11 + 3, a2 - 1, a3).n128_u64[0];
              return result;
            }

            goto LABEL_9;
          }

          v43 = (*a3)(v11 + 1, v11);
          v44 = (*a3)(v11 + 2, v11 + 1);
          if ((v43 & 1) == 0)
          {
            if (v44)
            {
              v60 = v11[1];
              v11[1] = v11[2];
              v11[2] = v60;
              if ((*a3)(v11 + 1, v11))
              {
                v60 = *v11;
                *v11 = v11[1];
                v11[1] = v60;
              }
            }

            goto LABEL_150;
          }

          if (v44)
          {
            v60 = *v11;
            *v11 = v11[2];
          }

          else
          {
            v60 = *v11;
            *v11 = v11[1];
            v11[1] = v60;
            if (!(*a3)(v11 + 2, v11 + 1))
            {
              goto LABEL_150;
            }

            v60 = v11[1];
            v11[1] = v11[2];
          }

          v11[2] = v60;
LABEL_150:
          if (!(*a3)(a2 - 1, v11 + 2))
          {
            return result;
          }

          v60 = v11[2];
          v11[2] = *v10;
          *v10 = v60;
          if (!(*a3)(v11 + 2, v11 + 1))
          {
            return result;
          }

          v60 = v11[1];
          v11[1] = v11[2];
          v11[2] = v60;
          goto LABEL_153;
        }

        if (v12 < 2)
        {
          return result;
        }

        if (v12 == 2)
        {
          if (!(*a3)(a2 - 1, v11))
          {
            return result;
          }

LABEL_109:
          v60 = *v11;
          *v11 = *v10;
          goto LABEL_110;
        }

LABEL_9:
        if (v12 <= 23)
        {
          v45 = &v11[1];
          v47 = v11 == a2 || v45 == a2;
          if (a5)
          {
            if (!v47)
            {
              v48 = 0;
              v49 = v11;
              do
              {
                v51 = v49;
                v49 = v45;
                if ((*a3)(v45, v51))
                {
                  v60 = *v49;
                  v52 = v48;
                  do
                  {
                    *(v11 + v52 + 16) = *(v11 + v52);
                    if (!v52)
                    {
                      v50 = v11;
                      goto LABEL_124;
                    }

                    v52 -= 16;
                  }

                  while (((*a3)(&v60, (v11 + v52)) & 1) != 0);
                  v50 = (v11 + v52 + 16);
LABEL_124:
                  result = v60.n128_f64[0];
                  *v50 = v60;
                }

                v45 = &v49[1];
                v48 += 16;
              }

              while (&v49[1] != a2);
            }
          }

          else if (!v47)
          {
            v53 = v11 - 1;
            do
            {
              v54 = a1;
              a1 = v45;
              if ((*a3)(v45, v54))
              {
                v60 = *a1;
                v55 = v53;
                do
                {
                  v55[2] = v55[1];
                  v56 = (*a3)(&v60, v55--);
                }

                while ((v56 & 1) != 0);
                result = v60.n128_f64[0];
                v55[2] = v60;
              }

              v45 = &a1[1];
              ++v53;
            }

            while (&a1[1] != a2);
          }

          return result;
        }

        if (!a4)
        {
          if (v11 != a2)
          {
            std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(operations_research::sat::LiteralWithCoeff const&,operations_research::sat::LiteralWithCoeff const&),operations_research::sat::LiteralWithCoeff*,operations_research::sat::LiteralWithCoeff*>(v11, a2, a2, a3);
          }

          return result;
        }

        v13 = &v11[v12 >> 1];
        v14 = *a3;
        if (v12 >= 0x81)
        {
          break;
        }

        v17 = v14(a1, &a1[v12 >> 1]);
        v18 = (*a3)(a2 - 1, a1);
        if (v17)
        {
          if (v18)
          {
            v60 = *v13;
            *v13 = *v10;
          }

          else
          {
            v60 = *v13;
            *v13 = *a1;
            *a1 = v60;
            if (!(*a3)(a2 - 1, a1))
            {
              goto LABEL_37;
            }

            v60 = *a1;
            *a1 = *v10;
          }

          *v10 = v60;
LABEL_37:
          --a4;
          if (a5)
          {
            goto LABEL_62;
          }

          goto LABEL_61;
        }

        if (!v18)
        {
          goto LABEL_37;
        }

        v60 = *a1;
        *a1 = *v10;
        *v10 = v60;
        if (!(*a3)(a1, v13))
        {
          goto LABEL_37;
        }

        v60 = *v13;
        *v13 = *a1;
        *a1 = v60;
        --a4;
        if (a5)
        {
          goto LABEL_62;
        }

LABEL_61:
        if ((*a3)(a1 - 1, a1))
        {
          goto LABEL_62;
        }

        v59 = *a1;
        if ((*a3)(&v59, a2 - 1))
        {
          v11 = a1;
          do
          {
            ++v11;
          }

          while (((*a3)(&v59, v11) & 1) == 0);
        }

        else
        {
          v35 = a1 + 1;
          do
          {
            v11 = v35;
            if (v35 >= a2)
            {
              break;
            }

            v36 = (*a3)(&v59, v35);
            v35 = v11 + 1;
          }

          while (!v36);
        }

        v37 = a2;
        if (v11 < a2)
        {
          v37 = a2;
          do
          {
            --v37;
          }

          while (((*a3)(&v59, v37) & 1) != 0);
        }

        while (v11 < v37)
        {
          v60 = *v11;
          *v11 = *v37;
          *v37 = v60;
          do
          {
            ++v11;
          }

          while (!(*a3)(&v59, v11));
          do
          {
            --v37;
          }

          while (((*a3)(&v59, v37) & 1) != 0);
        }

        v38 = v11 - 1;
        if (&v11[-1] != a1)
        {
          *a1 = *v38;
        }

        a5 = 0;
        result = v59.n128_f64[0];
        *v38 = v59;
      }

      v15 = v14(&a1[v12 >> 1], a1);
      v16 = (*a3)(a2 - 1, v13);
      if (v15)
      {
        if (v16)
        {
          v60 = *a1;
          *a1 = *v10;
        }

        else
        {
          v60 = *a1;
          *a1 = *v13;
          *v13 = v60;
          if (!(*a3)(a2 - 1, v13))
          {
            goto LABEL_28;
          }

          v60 = *v13;
          *v13 = *v10;
        }

        *v10 = v60;
      }

      else if (v16)
      {
        v60 = *v13;
        *v13 = *v10;
        *v10 = v60;
        if ((*a3)(v13, a1))
        {
          v60 = *a1;
          *a1 = *v13;
          *v13 = v60;
        }
      }

LABEL_28:
      v19 = v13 - 1;
      v20 = (*a3)(v13 - 1, a1 + 1);
      v21 = (*a3)(v58, v13 - 1);
      if (v20)
      {
        if (v21)
        {
          v60 = a1[1];
          v22 = (a2 - 2);
          a1[1] = *v58;
        }

        else
        {
          v60 = a1[1];
          a1[1] = *v19;
          *v19 = v60;
          if (!(*a3)(v58, v13 - 1))
          {
            goto LABEL_42;
          }

          v60 = *v19;
          v22 = (a2 - 2);
          *v19 = *v58;
        }

        *v22 = v60;
      }

      else if (v21)
      {
        v60 = *v19;
        *v19 = *v58;
        *v58 = v60;
        if ((*a3)(v13 - 1, a1 + 1))
        {
          v60 = a1[1];
          a1[1] = *v19;
          *v19 = v60;
        }
      }

LABEL_42:
      v23 = (*a3)(v13 + 1, a1 + 2);
      v24 = (*a3)(v57, v13 + 1);
      if (v23)
      {
        if (v24)
        {
          v60 = a1[2];
          v25 = (a2 - 3);
          a1[2] = *v57;
        }

        else
        {
          v60 = a1[2];
          a1[2] = v13[1];
          v13[1] = v60;
          if (!(*a3)(v57, v13 + 1))
          {
            goto LABEL_51;
          }

          v60 = v13[1];
          v25 = (a2 - 3);
          v13[1] = *v57;
        }

        *v25 = v60;
      }

      else if (v24)
      {
        v60 = v13[1];
        v13[1] = *v57;
        *v57 = v60;
        if ((*a3)(v13 + 1, a1 + 2))
        {
          v60 = a1[2];
          a1[2] = v13[1];
          v13[1] = v60;
        }
      }

LABEL_51:
      v26 = (*a3)(v13, v13 - 1);
      v27 = (*a3)(v13 + 1, v13);
      if (v26)
      {
        if (v27)
        {
          v60 = *v19;
          *v19 = v13[1];
        }

        else
        {
          v60 = *v19;
          *v19 = *v13;
          *v13 = v60;
          if (!(*a3)(v13 + 1, v13))
          {
            goto LABEL_60;
          }

          v60 = *v13;
          *v13 = v13[1];
        }

        v13[1] = v60;
      }

      else if (v27)
      {
        v60 = *v13;
        *v13 = v13[1];
        v13[1] = v60;
        if ((*a3)(v13, v13 - 1))
        {
          v60 = *v19;
          *v19 = *v13;
          *v13 = v60;
        }
      }

LABEL_60:
      v60 = *a1;
      *a1 = *v13;
      *v13 = v60;
      --a4;
      if ((a5 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_62:
      v28 = 0;
      v59 = *a1;
      do
      {
        ++v28;
      }

      while (((*a3)(&a1[v28], &v59) & 1) != 0);
      v29 = &a1[v28];
      v30 = a2;
      if (v28 == 1)
      {
        v30 = a2;
        do
        {
          if (v29 >= v30)
          {
            break;
          }

          --v30;
        }

        while (((*a3)(v30, &v59) & 1) == 0);
      }

      else
      {
        do
        {
          --v30;
        }

        while (!(*a3)(v30, &v59));
      }

      if (v29 >= v30)
      {
        v33 = v29 - 1;
        if (&v29[-1] == a1)
        {
          goto LABEL_80;
        }

LABEL_79:
        *a1 = *v33;
        goto LABEL_80;
      }

      v31 = &a1[v28];
      v32 = v30;
      do
      {
        v60 = *v31;
        *v31 = *v32;
        *v32 = v60;
        do
        {
          ++v31;
        }

        while (((*a3)(v31, &v59) & 1) != 0);
        do
        {
          --v32;
        }

        while (!(*a3)(v32, &v59));
      }

      while (v31 < v32);
      v33 = v31 - 1;
      if (v33 != a1)
      {
        goto LABEL_79;
      }

LABEL_80:
      *v33 = v59;
      if (v29 < v30)
      {
        goto LABEL_83;
      }

      v34 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(operations_research::sat::LiteralWithCoeff const&,operations_research::sat::LiteralWithCoeff const&),operations_research::sat::LiteralWithCoeff*>(a1, v33, a3);
      v11 = v33 + 1;
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(operations_research::sat::LiteralWithCoeff const&,operations_research::sat::LiteralWithCoeff const&),operations_research::sat::LiteralWithCoeff*>(v33 + 1, a2, a3))
      {
        break;
      }

      if ((v34 & 1) == 0)
      {
LABEL_83:
        std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(operations_research::sat::LiteralWithCoeff const&,operations_research::sat::LiteralWithCoeff const&),operations_research::sat::LiteralWithCoeff*,false>(a1, v33, a3, a4, a5 & 1);
        a5 = 0;
        v11 = v33 + 1;
      }
    }

    a2 = v33;
    if ((v34 & 1) == 0)
    {
      continue;
    }

    return result;
  }
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(operations_research::sat::LiteralWithCoeff const&,operations_research::sat::LiteralWithCoeff const&),operations_research::sat::LiteralWithCoeff*,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, uint64_t (**a6)(__n128 *, __n128 *))
{
  v12 = (*a6)(a2, a1);
  v13 = (*a6)(a3, a2);
  if (v12)
  {
    if (v13)
    {
      v14 = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = v14;
      goto LABEL_10;
    }

    v17 = *a1;
    *a1 = *a2;
    *a2 = v17;
    if ((*a6)(a3, a2))
    {
      v14 = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  else if (v13)
  {
    v15 = *a2;
    *a2 = *a3;
    *a3 = v15;
    if ((*a6)(a2, a1))
    {
      v16 = *a1;
      *a1 = *a2;
      *a2 = v16;
    }
  }

LABEL_10:
  if ((*a6)(a4, a3))
  {
    v18 = *a3;
    *a3 = *a4;
    *a4 = v18;
    if ((*a6)(a3, a2))
    {
      v19 = *a2;
      *a2 = *a3;
      *a3 = v19;
      if ((*a6)(a2, a1))
      {
        v20 = *a1;
        *a1 = *a2;
        *a2 = v20;
      }
    }
  }

  if ((*a6)(a5, a4))
  {
    v22 = *a4;
    *a4 = *a5;
    *a5 = v22;
    if ((*a6)(a4, a3))
    {
      v23 = *a3;
      *a3 = *a4;
      *a4 = v23;
      if ((*a6)(a3, a2))
      {
        v24 = *a2;
        *a2 = *a3;
        *a3 = v24;
        if ((*a6)(a2, a1))
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(operations_research::sat::LiteralWithCoeff const&,operations_research::sat::LiteralWithCoeff const&),operations_research::sat::LiteralWithCoeff*>(__n128 *a1, __n128 *a2, uint64_t (**a3)(__n128 *, __n128 *))
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v11 = a2 - 1;
      v12 = (*a3)(a1 + 1, a1);
      v13 = (*a3)(v11, a1 + 1);
      if (v12)
      {
        if (v13)
        {
          v14 = *a1;
          *a1 = *v11;
        }

        else
        {
          v32 = *a1;
          *a1 = a1[1];
          a1[1] = v32;
          if (!(*a3)(v11, a1 + 1))
          {
            goto LABEL_3;
          }

          v14 = a1[1];
          a1[1] = *v11;
        }

        *v11 = v14;
        v7 = 1;
        return v7 & 1;
      }

      if (!v13)
      {
        goto LABEL_3;
      }

      v26 = a1[1];
      a1[1] = *v11;
      *v11 = v26;
      if (!(*a3)(a1 + 1, a1))
      {
        goto LABEL_3;
      }

LABEL_53:
      v45 = *a1;
      *a1 = a1[1];
      a1[1] = v45;
      goto LABEL_3;
    }

    if (v6 != 4)
    {
      if (v6 == 5)
      {
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(operations_research::sat::LiteralWithCoeff const&,operations_research::sat::LiteralWithCoeff const&),operations_research::sat::LiteralWithCoeff*,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        v7 = 1;
        return v7 & 1;
      }

      goto LABEL_15;
    }

    v22 = a2 - 1;
    v23 = (*a3)(a1 + 1, a1);
    v24 = (*a3)(a1 + 2, a1 + 1);
    if (v23)
    {
      if (v24)
      {
        v25 = *a1;
        *a1 = a1[2];
LABEL_49:
        a1[2] = v25;
        goto LABEL_50;
      }

      v42 = *a1;
      *a1 = a1[1];
      a1[1] = v42;
      if ((*a3)(a1 + 2, a1 + 1))
      {
        v25 = a1[1];
        a1[1] = a1[2];
        goto LABEL_49;
      }
    }

    else if (v24)
    {
      v30 = a1[1];
      a1[1] = a1[2];
      a1[2] = v30;
      if ((*a3)(a1 + 1, a1))
      {
        v31 = *a1;
        *a1 = a1[1];
        a1[1] = v31;
      }
    }

LABEL_50:
    if (!(*a3)(v22, a1 + 2))
    {
      goto LABEL_3;
    }

    v43 = a1[2];
    a1[2] = *v22;
    *v22 = v43;
    if (!(*a3)(a1 + 2, a1 + 1))
    {
      goto LABEL_3;
    }

    v44 = a1[1];
    a1[1] = a1[2];
    a1[2] = v44;
    if (!(*a3)(a1 + 1, a1))
    {
      goto LABEL_3;
    }

    goto LABEL_53;
  }

  if (v6 < 2)
  {
LABEL_3:
    v7 = 1;
    return v7 & 1;
  }

  if (v6 == 2)
  {
    v9 = a2 - 1;
    if ((*a3)(a2 - 1, a1))
    {
      v10 = *a1;
      *a1 = *v9;
      *v9 = v10;
      v7 = 1;
      return v7 & 1;
    }

    goto LABEL_3;
  }

LABEL_15:
  v16 = (*a3)(a1 + 1, a1);
  v17 = a1 + 2;
  v15 = a1 + 2;
  v18 = (*a3)(a1 + 2, a1 + 1);
  if (v16)
  {
    if (v18)
    {
      v20 = *a1;
      v21 = a1 + 2;
      *a1 = *v15;
      *v15 = v20;
    }

    else
    {
      v33 = *a1;
      *a1 = a1[1];
      a1[1] = v33;
      v34 = (*a3)(a1 + 2, a1 + 1);
      v21 = a1 + 2;
      if (v34)
      {
        v35 = a1[1];
        a1[1] = *v17;
        *v17 = v35;
      }
    }
  }

  else
  {
    v21 = a1 + 2;
    if (v18)
    {
      v27 = a1[1];
      a1[1] = *v17;
      *v17 = v27;
      v28 = (*a3)(a1 + 1, a1);
      v21 = a1 + 2;
      if (v28)
      {
        v29 = *a1;
        *a1 = a1[1];
        a1[1] = v29;
      }
    }
  }

  v36 = a1 + 3;
  if (&a1[3] == a2)
  {
LABEL_45:
    v41 = 1;
  }

  else
  {
    v37 = 0;
    v38 = 0;
    while (!(*a3)(v36, v21))
    {
LABEL_38:
      v21 = v36;
      v37 += 16;
      if (++v36 == a2)
      {
        goto LABEL_45;
      }
    }

    v46[0] = *v36;
    v39 = v37;
    do
    {
      v40 = (a1 + v39);
      *(a1 + v39 + 48) = *(a1 + v39 + 32);
      if (v39 == -32)
      {
        *a1 = v46[0];
        if (++v38 != 8)
        {
          goto LABEL_38;
        }

        goto LABEL_44;
      }

      v39 -= 16;
    }

    while (((*a3)(v46, v40 + 1) & 1) != 0);
    *(a1 + v39 + 48) = v46[0];
    if (++v38 != 8)
    {
      goto LABEL_38;
    }

LABEL_44:
    v41 = 0;
    v19 = &v36[1] == a2;
  }

  v7 = v41 | v19;
  return v7 & 1;
}

__int128 *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(operations_research::sat::LiteralWithCoeff const&,operations_research::sat::LiteralWithCoeff const&),operations_research::sat::LiteralWithCoeff*,operations_research::sat::LiteralWithCoeff*>(__int128 *a1, __int128 *a2, __int128 *a3, unsigned int (**a4)(__int128 *, __int128 *))
{
  if (a1 == a2)
  {
    return a3;
  }

  v53 = v4;
  v54 = v5;
  v50 = a2;
  v48 = a3;
  v49 = a2 - a1;
  v8 = a2 - a1;
  v9 = v8 - 2;
  if (v8 >= 2)
  {
    v10 = v9 >> 1;
    v11 = v9 >> 1;
    do
    {
      v13 = 16 * v11;
      if (v10 >= (16 * v11) >> 4)
      {
        v14 = (v13 >> 3) | 1;
        v15 = &a1[v14];
        if ((v13 >> 3) + 2 < v8 && (*a4)(&a1[v14], v15 + 1))
        {
          ++v15;
          v14 = (v13 >> 3) + 2;
        }

        v16 = &a1[v13 / 0x10];
        if (((*a4)(v15, &a1[v13 / 0x10]) & 1) == 0)
        {
          v52 = *v16;
          do
          {
            v17 = v15;
            *v16 = *v15;
            if (v10 < v14)
            {
              break;
            }

            v18 = (2 * v14) | 1;
            v15 = &a1[v18];
            v19 = 2 * v14 + 2;
            if (v19 < v8 && (*a4)(&a1[v18], v15 + 1))
            {
              ++v15;
              v18 = v19;
            }

            v16 = v17;
            v14 = v18;
          }

          while (!(*a4)(v15, &v52));
          *v17 = v52;
        }
      }

      v12 = v11-- <= 0;
    }

    while (!v12);
  }

  i = v50;
  v21 = v48;
  if (v50 != v48)
  {
    if (v8 < 2)
    {
      i = v50;
      do
      {
        if ((*a4)(i, a1))
        {
          v22 = *i;
          *i = *a1;
          *a1 = v22;
        }

        ++i;
      }

      while (i != v48);
      goto LABEL_45;
    }

    v23 = a1 + 1;
    for (i = v50; i != v21; ++i)
    {
      if ((*a4)(i, a1))
      {
        v24 = *i;
        *i = *a1;
        *a1 = v24;
        if (v49 == 32)
        {
          v25 = v23;
          v26 = 1;
          if (((*a4)(v23, a1) & 1) == 0)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v27 = (*a4)(v23, a1 + 2);
          if (v27)
          {
            v25 = a1 + 2;
          }

          else
          {
            v25 = v23;
          }

          if (v27)
          {
            v26 = 2;
          }

          else
          {
            v26 = 1;
          }

          if (((*a4)(v25, a1) & 1) == 0)
          {
LABEL_38:
            v52 = *a1;
            v28 = a1;
            do
            {
              v30 = v25;
              *v28 = *v25;
              if (((v8 - 2) >> 1) < v26)
              {
                break;
              }

              v31 = (2 * v26) | 1;
              v25 = &a1[v31];
              v32 = 2 * v26 + 2;
              if (v32 < v8 && (*a4)(&a1[v31], v25 + 1))
              {
                ++v25;
                v31 = v32;
              }

              v29 = (*a4)(v25, &v52);
              v28 = v30;
              v26 = v31;
            }

            while (!v29);
            *v30 = v52;
            v23 = a1 + 1;
            v21 = v48;
          }
        }
      }
    }
  }

LABEL_45:
  if (v8 >= 2)
  {
    do
    {
      v34 = 0;
      v51 = *a1;
      v35 = a1;
      do
      {
        v36 = &v35[v34];
        v37 = v36 + 1;
        v38 = (2 * v34) | 1;
        v39 = 2 * v34 + 2;
        if (v39 < v8)
        {
          v40 = v36 + 2;
          if ((*a4)(v36 + 1, v36 + 2))
          {
            v37 = v40;
            v38 = v39;
          }
        }

        *v35 = *v37;
        v35 = v37;
        v34 = v38;
      }

      while (v38 <= ((v8 - 2) >> 1));
      v41 = v50 - 1;
      if (v37 == --v50)
      {
        *v37 = v51;
      }

      else
      {
        *v37 = *v41;
        *v41 = v51;
        v43 = (v37 - a1 + 16) >> 4;
        v12 = v43 < 2;
        v44 = v43 - 2;
        if (!v12)
        {
          v45 = v44 >> 1;
          v46 = &a1[v44 >> 1];
          if ((*a4)(v46, v37))
          {
            v52 = *v37;
            do
            {
              v47 = v46;
              *v37 = *v46;
              if (!v45)
              {
                break;
              }

              v45 = (v45 - 1) >> 1;
              v46 = &a1[v45];
              v37 = v47;
            }

            while (((*a4)(v46, &v52) & 1) != 0);
            *v47 = v52;
          }
        }
      }

      v12 = v8-- <= 2;
    }

    while (!v12);
  }

  return i;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,std::vector<operations_research::sat::UpperBoundedLinearConstraint *>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,std::vector<operations_research::sat::UpperBoundedLinearConstraint *>>>>::resize_impl(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8) & 1;
  v5 = 0;
  v2 = *(a1 + 16);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,32ul,false,false,8ul>(&v2, a1);
}

__n128 absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,std::vector<operations_research::sat::UpperBoundedLinearConstraint *>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,std::vector<operations_research::sat::UpperBoundedLinearConstraint *>>>>::transfer_slot_fn(uint64_t a1, void *a2, uint64_t a3)
{
  *a2 = *a3;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = 0;
  result = *(a3 + 8);
  *(a2 + 1) = result;
  a2[3] = *(a3 + 24);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  return result;
}

uint64_t std::__split_buffer<std::unique_ptr<operations_research::sat::UpperBoundedLinearConstraint>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *--v2;
    v4 = v5;
    *(a1 + 16) = v2;
    *v2 = 0;
    if (v5)
    {
      v6 = v4[9];
      if (v6)
      {
        v4[10] = v6;
        operator delete(v6);
      }

      v7 = v4[6];
      if (v7)
      {
        v4[7] = v7;
        operator delete(v7);
      }

      v8 = v4[3];
      if (v8)
      {
        v4[4] = v8;
        operator delete(v8);
      }

      MEMORY[0x23EED9460](v4, 0x1030C40B4F52BC7);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<std::unique_ptr<operations_research::sat::UpperBoundedLinearConstraint>>::__append(char **a1, unint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (a2 <= (v3 - v4) >> 3)
  {
    if ((a2 & 0x1FFFFFFFFFFFFFFFLL) != 0)
    {
      v11 = 8 * a2;
      bzero(a1[1], 8 * a2);
      v4 += v11;
    }

    a1[1] = v4;
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

    v17[4] = a1;
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
    v14 = a1[1] - *a1;
    v15 = &v12[-v14];
    memcpy(v15, *a1, v14);
    *a1 = v15;
    a1[1] = v10;
    v16 = a1[2];
    a1[2] = 0;
    v17[2] = v13;
    v17[3] = v16;
    v17[0] = v13;
    v17[1] = v13;
    std::__split_buffer<std::unique_ptr<operations_research::sat::UpperBoundedLinearConstraint>>::~__split_buffer(v17);
  }
}

void std::vector<operations_research::sat::PbConstraints::ConstraintIndexWithCoeff>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 4)
  {
    if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0)
    {
      v11 = 16 * a2;
      bzero(*(a1 + 8), 16 * a2);
      v4 += v11;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = (v4 - *a1) >> 4;
    if ((v5 + a2) >> 60)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v6 = v3 - *a1;
    v7 = v6 >> 3;
    if (v6 >> 3 <= v5 + a2)
    {
      v7 = v5 + a2;
    }

    if (v6 >= 0x7FFFFFFFFFFFFFF0)
    {
      v8 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v7;
    }

    if (v8)
    {
      if (!(v8 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = (16 * v5);
    if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = 16 * a2;
      bzero(v12, 16 * a2);
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

uint64_t operations_research::sat::PrecedenceRelations::Add(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  result = 0;
  v6 = a2;
  if (a2 != a3 && a4 - *(*(*(a1 + 24) + 152) + 24 * (a2 ^ 1)) > *(*(*(a1 + 24) + 152) + 24 * a3))
  {
    if (operations_research::sat::PrecedenceRelations::GetOffset(a1, a2, a3) >= a4)
    {
      return 0;
    }

    else
    {
      operations_research::sat::PrecedenceRelations::AddInternal(a1, v6, a3, a4);
      if (a2 <= a3)
      {
        v11 = a3;
      }

      else
      {
        v11 = a2;
      }

      if ((*(a1 + 160) & 1) == 0)
      {
        v12 = v11 | 1;
        if (v12 >= *(a1 + 40))
        {
          v13 = v12 + 1;
          *(a1 + 40) = v12 + 1;
          v14 = *(a1 + 64);
          v15 = *(a1 + 72);
          __x = 0;
          v16 = (v15 - v14) >> 2;
          if (v13 <= v16)
          {
            if (v13 < v16)
            {
              *(a1 + 72) = v14 + 4 * v13;
            }
          }

          else
          {
            std::vector<int>::__append((a1 + 64), v13 - v16, &__x);
          }
        }
      }

      return 1;
    }
  }

  return result;
}

unint64_t operations_research::sat::PrecedenceRelations::GetOffset(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a3 ^ 1u;
  v4 = v3 | (a2 << 32);
  v5 = v3 < a2;
  v6 = a2 | (v3 << 32);
  if (v5)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(a1 + 240);
  if (v8 > 1)
  {
    v9 = 0;
    v10 = HIDWORD(v7) + ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v7) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v7)));
    v11 = 0x9DDFEA08EB382D69 * v10;
    v12 = (v10 * 0x9DDFEA08EB382D69) >> 64;
    _X12 = *(a1 + 256);
    __asm { PRFM            #4, [X12] }

    v18 = v12 ^ v11;
    v19 = vdup_n_s8(v18 & 0x7F);
    v20 = ((v18 >> 7) ^ (_X12 >> 12)) & v8;
    v21 = *(_X12 + v20);
    v22 = vceq_s8(v21, v19);
    if (!v22)
    {
      goto LABEL_13;
    }

LABEL_8:
    while (1)
    {
      v23 = (v20 + (__clz(__rbit64(v22)) >> 3)) & v8;
      v24 = *(a1 + 264) + 16 * v23;
      if (*v24 == v7 && *(v24 + 4) == HIDWORD(v7))
      {
        break;
      }

      v22 &= ((v22 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v22)
      {
LABEL_13:
        while (!*&vceq_s8(v21, 0x8080808080808080))
        {
          v9 += 8;
          v20 = (v9 + v20) & v8;
          v21 = *(_X12 + v20);
          v22 = vceq_s8(v21, v19);
          if (v22)
          {
            goto LABEL_8;
          }
        }

        return 0x8000000000000002;
      }
    }

    if (!(_X12 + v23))
    {
      return 0x8000000000000002;
    }

    return -*(v24 + 8);
  }

  if (*(a1 + 248) >= 2uLL)
  {
    v27 = *(a1 + 256) == v7 && *(a1 + 260) == HIDWORD(v7);
    v28 = &absl::lts_20240722::container_internal::kSooControl;
    if (v27)
    {
      v24 = a1 + 256;
    }

    else
    {
      v28 = 0;
      v24 = 0;
    }

    if (v28)
    {
      return -*(v24 + 8);
    }
  }

  return 0x8000000000000002;
}

uint64_t operations_research::sat::PrecedenceRelations::AddInternal(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v4 = a2;
  v23 = a3;
  v6 = a3 ^ 1u;
  if (v6 >= a2)
  {
    v7 = a2 | (v6 << 32);
  }

  else
  {
    v7 = v6 | (a2 << 32);
  }

  v8 = -a4;
  v26 = v7;
  v27 = -a4;
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>::find_or_prepare_insert<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>(a1 + 240, &v26, v20);
  if (v22 == 1)
  {
    v9 = v21;
    *v21 = v26;
    v9[1] = v27;
  }

  v24 = v7;
  v25 = v8;
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>::find_or_prepare_insert<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>(a1 + 304, &v24, &v26);
  if (v28 != 1 || (v10 = v27, *v27 = v24, v10[1] = v25, (v28 & 1) == 0))
  {
    v11 = v27[1];
    if (v11 >= v8)
    {
      v11 = v8;
    }

    v27[1] = v11;
  }

  v12 = v22;
  if (v22 == 1)
  {
    if (v6 <= v4)
    {
      v13 = v4;
    }

    else
    {
      v13 = v6;
    }

    v14 = v13 + 1;
    v15 = *(a1 + 336);
    v16 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 344) - v15) >> 3);
    if (v14 > v16)
    {
      std::vector<std::vector<operations_research::sat::GenericLiteralWatcher::WatchData>>::__append(a1 + 336, v14 - v16);
      v15 = *(a1 + 336);
    }

    std::vector<int>::push_back[abi:ne200100](v15 + 24 * v4, &v23);
    v17 = *(a1 + 336) + 24 * (v23 ^ 1);
    LODWORD(v26) = v4 ^ 1;
    std::vector<int>::push_back[abi:ne200100](v17, &v26);
  }

  else
  {
    v18 = v21[1];
    if (v18 >= v8)
    {
      v18 = v8;
    }

    v21[1] = v18;
  }

  return v12;
}

void operations_research::sat::PrecedenceRelations::PushConditionalRelation(void *a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v56 = a2;
  v57 = a3;
  v55 = a6;
  if (a3 && (*(a1[2] + 8) & 0xFFFFFFF) != 0)
  {
    v7 = a4 << 32;
    v8 = a4 | (a5 << 32);
    v9 = a4;
    if (a4 > a5)
    {
      v8 = (a4 << 32) | a5;
    }

    v54 = v8;
    v49 = v8;
    v50 = a6;
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>::find_or_prepare_insert<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>((a1 + 38), &v49, v51);
    if (v53 != 1 || (v11 = v52, *v52 = v49, v11[1] = v50, (v53 & 1) == 0))
    {
      if (v55 >= v52[1])
      {
        return;
      }

      v52[1] = v55;
    }

    v12 = -1431655765 * ((a1[25] - a1[24]) >> 4);
    v49 = v54;
    LODWORD(v50) = v12;
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,int>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const,int>>>::find_or_prepare_insert<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>((a1 + 34), &v49, v51);
    if (v53 == 1 && (v13 = v52, *v52 = v49, *(v13 + 2) = v50, (v53 & 1) != 0))
    {
      v14 = a1[28];
      if (a1[27] == v14 || *(v14 - 8) != (*(a1[2] + 8) & 0xFFFFFFF))
      {
        v15 = -1431655765 * ((a1[25] - a1[24]) >> 4);
        LODWORD(v49) = *(a1[2] + 8) & 0xFFFFFFF;
        HIDWORD(v49) = v15;
        std::vector<long long>::push_back[abi:ne200100]((a1 + 27), &v49);
      }

      LODWORD(v49) = -1;
      v16 = a1[25];
      if (v16 >= a1[26])
      {
        v36 = std::vector<operations_research::sat::PrecedenceRelations::ConditionalEntry>::__emplace_back_slow_path<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> &,std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,absl::lts_20240722::Span<operations_research::sat::Literal const> &>(a1 + 24, &v49, &v55, &v54, &v56);
        v37 = v9;
        v38 = a5;
      }

      else
      {
        v18 = v54;
        v17 = v55;
        v20 = v56;
        v19 = v57;
        *v16 = -1;
        *(v16 + 8) = v17;
        *(v16 + 16) = v18;
        *(v16 + 24) = 0;
        v21 = (4 * v19) >> 2;
        if (v21 >= 5)
        {
          if (!(v21 >> 62))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v37 = v9;
        v38 = a5;
        if ((v19 & 0x3FFFFFFFFFFFFFFFLL) != 0)
        {
          v39 = v20;
          v40 = (4 * v19) >> 2;
          v41 = (v16 + 32);
          do
          {
            v42 = *v39++;
            *v41++ = v42;
            --v40;
          }

          while (v40);
        }

        *(v16 + 24) = (4 * v19) >> 1;
        v36 = v16 + 48;
        a1[25] = v16 + 48;
      }

      v43 = v38 << 32;
      a1[25] = v36;
      if (v37 <= v38)
      {
        v37 = v38;
      }

      v44 = v37 + 1;
      v45 = a1[45];
      v46 = 0xAAAAAAAAAAAAAAABLL * ((a1[46] - v45) >> 3);
      if (v44 > v46)
      {
        std::vector<std::vector<operations_research::sat::GenericLiteralWatcher::WatchData>>::__append((a1 + 45), v44 - v46);
        LODWORD(v38) = a5;
        v45 = a1[45];
      }

      LODWORD(v49) = v38 ^ 1;
      std::vector<int>::push_back[abi:ne200100](v45 + 24 * SHIDWORD(v7), &v49);
      v47 = a1[45] + 24 * SHIDWORD(v43);
      LODWORD(v49) = v9 ^ 1;
      std::vector<int>::push_back[abi:ne200100](v47, &v49);
    }

    else
    {
      v22 = *(v52 + 2);
      *(v52 + 2) = v12;
      v23 = a1[27];
      v48 = v22;
      v24 = a1[28];
      if (v23 == v24 || *(v24 - 8) != (*(a1[2] + 8) & 0xFFFFFFF))
      {
        v25 = -1431655765 * ((a1[25] - a1[24]) >> 4);
        LODWORD(v49) = *(a1[2] + 8) & 0xFFFFFFF;
        HIDWORD(v49) = v25;
        std::vector<long long>::push_back[abi:ne200100]((a1 + 27), &v49);
      }

      v26 = a1[25];
      if (v26 >= a1[26])
      {
        a1[25] = std::vector<operations_research::sat::PrecedenceRelations::ConditionalEntry>::__emplace_back_slow_path<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> &,std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,absl::lts_20240722::Span<operations_research::sat::Literal const> &>(a1 + 24, &v48, &v55, &v54, &v56);
      }

      else
      {
        v28 = v54;
        v27 = v55;
        v30 = v56;
        v29 = v57;
        *v26 = v22;
        *(v26 + 8) = v27;
        *(v26 + 16) = v28;
        *(v26 + 24) = 0;
        v31 = (4 * v29) >> 2;
        if (v31 >= 5)
        {
          if (!(v31 >> 62))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        if ((v29 & 0x3FFFFFFFFFFFFFFFLL) != 0)
        {
          v32 = v30;
          v33 = (4 * v29) >> 2;
          v34 = (v26 + 32);
          do
          {
            v35 = *v32++;
            *v34++ = v35;
            --v33;
          }

          while (v33);
        }

        *(v26 + 24) = (4 * v29) >> 1;
        a1[25] = v26 + 48;
        a1[25] = v26 + 48;
      }
    }
  }

  else
  {

    operations_research::sat::PrecedenceRelations::Add(a1, a4, a5 ^ 1, -a6);
  }
}