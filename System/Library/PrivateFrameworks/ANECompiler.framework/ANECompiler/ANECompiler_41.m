void sub_23CB3AEA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  std::function<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> ()(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)>::~function(&a25);
  std::function<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> ()(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)>::~function(&a31);
  _Unwind_Resume(a1);
}

void operations_research::sat::ImpliedBoundsProcessor::TryToExpandWithLowerImpliedbound(void *a1, unint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a5 + 16);
  v28 = 0u;
  memset(v29, 0, 24);
  v11 = v10 + 56 * a3;
  v27 = 0u;
  v25 = 0u;
  memset(v26, 0, 24);
  v24 = 0u;
  operations_research::sat::ImpliedBoundsProcessor::DecomposeWithImpliedLowerBound(a1, v11, a2, &v27, &v24, 0);
  if (v12)
  {
    if (a4)
    {
      v13 = *&v27;
      if (*&v27 > 0.5)
      {
        v14 = *(&v27 + 1);
        v15 = v28;
        *a5 -= v28 * *(&v27 + 1);
        *(v29 + 8) = vnegq_s64(*(v29 + 8));
        v16 = v15;
        if (v15 < 0x8000000000000003)
        {
          v16 = -INFINITY;
        }

        if (v15 > 0x7FFFFFFFFFFFFFFDLL)
        {
          v16 = INFINITY;
        }

        *&v27 = v16 - v13;
        *(&v28 + 1) = v15 - *(&v28 + 1);
        *(&v27 + 1) = -v14;
      }

      v17 = *&v24;
      v18 = v25;
      if (*&v24 > vcvtd_n_f64_s64(v25, 1uLL))
      {
        v19 = v25;
        v20 = *(&v24 + 1);
        v21 = *(&v25 + 1);
        *a5 -= *(&v24 + 1) * v25;
        *(v26 + 8) = vnegq_s64(*(v26 + 8));
        v22 = v18 - v21;
        if (v18 < 0x8000000000000003)
        {
          v19 = -INFINITY;
        }

        if (v18 > 0x7FFFFFFFFFFFFFFDLL)
        {
          v19 = INFINITY;
        }

        *&v24 = v19 - v17;
        *(&v25 + 1) = v22;
        *(&v24 + 1) = -v20;
      }
    }

    v23 = v25;
    *v11 = v24;
    *(v11 + 16) = v23;
    *(v11 + 32) = v26[0];
    *(v11 + 48) = *&v26[1];
    operations_research::sat::CutDataBuilder::AddOrMergeTerm(a6, &v27, a2, a5);
  }
}

unint64_t operations_research::sat::ImpliedBoundsProcessor::PostprocessWithImpliedBound(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v50 = 0;
  v10 = 0.0;
  memset(v49, 0, sizeof(v49));
  v48 = 0;
  memset(v47, 0, sizeof(v47));
  v46 = 0;
  memset(v45, 0, sizeof(v45));
  v44 = 0;
  memset(v43, 0, sizeof(v43));
  *a5 = 0;
  *(a5 + 4) = 0;
  v11 = *(a5 + 8);
  if (v11 > 1)
  {
    absl::lts_20240722::container_internal::ClearBackingArray((a5 + 8), &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,int>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,int>>>::GetPolicyFunctions(void)::value, v11 < 0x80, 1u);
    v12 = (a5 + 40);
    v13 = *(a5 + 40);
    if (v13 > 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *(a5 + 16) = 0;
    v12 = (a5 + 40);
    v13 = *(a5 + 40);
    if (v13 > 1)
    {
LABEL_3:
      absl::lts_20240722::container_internal::ClearBackingArray(v12, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,int>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,int>>>::GetPolicyFunctions(void)::value, v13 < 0x80, 1u);
      goto LABEL_6;
    }
  }

  *(a5 + 48) = 0;
LABEL_6:
  v14 = 0x6DB6DB6DB6DB6DB7 * ((*(a4 + 24) - *(a4 + 16)) >> 3);
  if (v14 >= 1)
  {
    v15 = 0;
    v41 = 0;
    v42 = 0;
    v16 = v14 & 0x7FFFFFFF;
    while (1)
    {
      v20 = *(a4 + 16);
      v21 = v20 + v15;
      if (*(v20 + v15 + 16) < 2 || *(v21 + 48))
      {
        goto LABEL_10;
      }

      *&v22 = operations_research::sat::ImpliedBoundsProcessor::DecomposeWithImpliedLowerBound(a1, v20 + v15, a3, v49, v47, *&v10);
      v24 = v23;
      if (v23)
      {
        v51[0] = *(&v49[0] + 1);
        v25 = *(a2 + 24);
        if (!v25 || (v26 = (*(*v25 + 48))(v25, v51, v22), v27 = *v49, v51[0] = *(&v47[0] + 1), (v28 = *(a2 + 24)) == 0))
        {
LABEL_27:
          std::__throw_bad_function_call[abi:ne200100]();
        }

        v29 = v26;
        v30 = (*(*v28 + 48))(v28, v51);
        v31 = *v47 * v30 + v29 * v27;
      }

      else
      {
        v51[0] = *(v20 + v15 + 8);
        v32 = *(a2 + 24);
        if (!v32)
        {
          goto LABEL_27;
        }

        v31 = *v21 * (*(*v32 + 48))(v32, v51, v22);
      }

      operations_research::sat::ImpliedBoundsProcessor::DecomposeWithImpliedUpperBound(a1, (v20 + v15), a3, v45, v43);
      if (!v33)
      {
        goto LABEL_23;
      }

      v51[0] = *(&v45[0] + 1);
      v34 = *(a2 + 24);
      if (!v34)
      {
        goto LABEL_27;
      }

      v35 = (*(*v34 + 48))(v34, v51);
      v36 = *v45;
      v51[0] = *(&v43[0] + 1);
      v37 = *(a2 + 24);
      if (!v37)
      {
        goto LABEL_27;
      }

      v38 = v35;
      v39 = (*(*v37 + 48))(v37, v51);
      v10 = *v43 * v39 + v38 * v36;
      if (v10 > v31 + 0.01)
      {
        v41 = (v41 + 1);
        v17 = v45;
        v18 = v43;
      }

      else
      {
LABEL_23:
        if (!v24)
        {
          goto LABEL_10;
        }

        ++v42;
        v17 = v49;
        v18 = v47;
      }

      v19 = v18[1];
      *v21 = *v18;
      *(v21 + 16) = v19;
      *(v21 + 32) = v18[2];
      *(v21 + 48) = *(v18 + 6);
      operations_research::sat::CutDataBuilder::AddOrMergeTerm(a5, v17, a3, a4);
LABEL_10:
      v15 += 56;
      if (!--v16)
      {
        return v42 | (v41 << 32);
      }
    }
  }

  return 0;
}

uint64_t operations_research::sat::anonymous namespace::ApplyWithPotentialBump(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v6 = *a3;
  v7 = a3[1];
  v8 = __modti3();
  v9 = (a2 & (v8 >> 63)) + v8;
  v56 = v9;
  v10 = *(a1 + 24);
  if (!v10)
  {
    goto LABEL_25;
  }

  v55 = (*(*v10 + 48))(v10, &v56);
  v56 = a2;
  v12 = *v3;
  v11 = v3[1];
  v13 = *(a1 + 24);
  if (!v13 || (v54 = v9, v14 = __modti3(), v15 = (a2 & (v14 >> 63)) + v14, v16 = (*(*v13 + 48))(v13, &v56), v56 = v15, (v17 = *(a1 + 24)) == 0))
  {
LABEL_25:
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v18 = v16;
  v19 = a2;
  v20 = v16 >> 63;
  v21 = v19;
  v22 = __divti3();
  *v3 = __PAIR128__(v23, v22) * __PAIR128__(v20, v18) + (*(*v17 + 48))(v17, &v56);
  v24 = v3[2];
  if (v3[3] == v24)
  {
    return 0;
  }

  v53 = v3;
  v25 = 0;
  v50 = 0;
  v26 = -1.0;
  v51 = -1;
  v27 = 1;
  v28 = v21;
  v29 = v54;
  v30 = v55;
  v52 = a1;
  do
  {
    v31 = v24 + 56 * v25;
    v56 = *(v31 + 8);
    v32 = *(a1 + 24);
    if (!v32)
    {
      goto LABEL_25;
    }

    v33 = (*(*v32 + 48))(v32, &v56);
    if (*(v31 + 16) == 1)
    {
      v34 = *(v31 + 8);
      if (v34 < 1)
      {
        v56 = v28;
        v38 = *(a1 + 24);
        if (!v38)
        {
          goto LABEL_25;
        }

        v39 = __modti3();
        v40 = v28;
        v41 = (v28 & (v39 >> 63)) + v39;
        v42 = (*(*v38 + 48))(v38, &v56);
        v56 = v41;
        v43 = *(a1 + 24);
        if (!v43)
        {
          goto LABEL_25;
        }

        v44 = v42;
        v45 = __divti3();
        v46 = (*(*v43 + 48))(v43, &v56) + v44 * v45;
        v28 = v40;
        a1 = v52;
        v3 = v53;
        v29 = v54;
        v30 = v55;
        v36 = v55 - v46;
        v37 = v55 - v46 - v33;
        if (v55 - v46 > v33)
        {
LABEL_16:
          v47 = v37;
          if (v37 < 0x8000000000000003)
          {
            v47 = -INFINITY;
          }

          if (v37 > 0x7FFFFFFFFFFFFFFDLL)
          {
            v47 = INFINITY;
          }

          v48 = v47 * *v31;
          if (v48 > v26)
          {
            v51 = v27 - 1;
            v50 = v36;
            v26 = v48;
          }
        }
      }

      else
      {
        v56 = v29 - v34;
        v35 = *(a1 + 24);
        if (!v35)
        {
          goto LABEL_25;
        }

        v36 = v30 - (*(*v35 + 48))(v35, &v56);
        v37 = v36 - v33;
        if (v36 > v33)
        {
          goto LABEL_16;
        }
      }
    }

    *(v31 + 8) = v33;
    v25 = v27;
    v24 = v3[2];
    ++v27;
  }

  while (0x6DB6DB6DB6DB6DB7 * ((v3[3] - v24) >> 3) > v25);
  if ((v51 & 0x80000000) == 0)
  {
    *(v24 + 56 * v51 + 8) = v50;
    return 1;
  }

  return 0;
}

void operations_research::sat::CoverCutHelper::~CoverCutHelper(operations_research::sat::CoverCutHelper *this)
{
  if (dword_2810BD6C8 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::sat::CoverCutHelper::~CoverCutHelper()::$_0::operator() const(void)::site, dword_2810BD6C8))
  {
    if (*(this + 28))
    {
      __p = 0;
      v10 = 0;
      v11 = 0;
      p_p = &__p;
      operations_research::sat::CoverCutHelper::~CoverCutHelper()::$_1::operator()(&p_p, "cover_cut/", 10, this + 38);
      operations_research::sat::CoverCutHelper::~CoverCutHelper()::$_1::operator()(&p_p, "flow_cut/", 9, this + 30);
      operations_research::sat::CoverCutHelper::~CoverCutHelper()::$_1::operator()(&p_p, "ls_cut/", 7, this + 46);
      operations_research::sat::SharedStatistics::AddStats(*(this + 28), __p, (v10 - __p) >> 5);
      v4 = __p;
      if (__p)
      {
        v5 = v10;
        v6 = __p;
        if (v10 != __p)
        {
          do
          {
            v7 = *(v5 - 9);
            v5 -= 4;
            if (v7 < 0)
            {
              operator delete(*v5);
            }
          }

          while (v5 != v4);
          v6 = __p;
        }

        v10 = v4;
        operator delete(v6);
      }
    }
  }

  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,256,false>>::clear(this + 25);
  if (*(this + 21) >= 2uLL)
  {
    operator delete((*(this + 23) - (*(this + 22) & 1) - 8));
    if (*(this + 17) < 2uLL)
    {
LABEL_4:
      v2 = *(this + 10);
      if (!v2)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if (*(this + 17) < 2uLL)
  {
    goto LABEL_4;
  }

  operator delete((*(this + 19) - (*(this + 18) & 1) - 8));
  v2 = *(this + 10);
  if (v2)
  {
LABEL_5:
    *(this + 11) = v2;
    operator delete(v2);
  }

LABEL_6:
  v3 = *(this + 2);
  if (v3)
  {
    *(this + 3) = v3;
    operator delete(v3);
  }
}

void operations_research::sat::CoverCutHelper::~CoverCutHelper()::$_1::operator()(uint64_t *a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v40 = a2;
  v41 = a3;
  v38 = "num_overflows";
  v39 = 13;
  absl::lts_20240722::StrCat(&v40, &v38, &v34);
  *__p = *&v34.__r_.__value_.__l.__data_;
  v9 = v34.__r_.__value_.__r.__words[2];
  memset(&v34, 0, sizeof(v34));
  v10 = a4[7];
  v36 = v9;
  v37 = v10;
  std::vector<std::pair<std::string,long long>>::push_back[abi:ne200100](v8, __p);
  if (SHIBYTE(v36) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v34.__r_.__value_.__l.__data_);
LABEL_3:
  v11 = *a1;
  v40 = a2;
  v41 = a3;
  v38 = "num_lifting";
  v39 = 11;
  absl::lts_20240722::StrCat(&v40, &v38, &v34);
  *__p = *&v34.__r_.__value_.__l.__data_;
  v12 = v34.__r_.__value_.__r.__words[2];
  memset(&v34, 0, sizeof(v34));
  v13 = a4[6];
  v36 = v12;
  v37 = v13;
  std::vector<std::pair<std::string,long long>>::push_back[abi:ne200100](v11, __p);
  if (SHIBYTE(v36) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(v34.__r_.__value_.__l.__data_);
LABEL_5:
  v14 = *a1;
  v40 = a2;
  v41 = a3;
  v38 = "num_initial_ib";
  v39 = 14;
  absl::lts_20240722::StrCat(&v40, &v38, &v34);
  *__p = *&v34.__r_.__value_.__l.__data_;
  v15 = v34.__r_.__value_.__r.__words[2];
  memset(&v34, 0, sizeof(v34));
  v16 = a4[1];
  v36 = v15;
  v37 = v16;
  std::vector<std::pair<std::string,long long>>::push_back[abi:ne200100](v14, __p);
  if (SHIBYTE(v36) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(v34.__r_.__value_.__l.__data_);
LABEL_7:
  v17 = *a1;
  v40 = a2;
  v41 = a3;
  v38 = "num_implied_lb";
  v39 = 14;
  absl::lts_20240722::StrCat(&v40, &v38, &v34);
  *__p = *&v34.__r_.__value_.__l.__data_;
  v18 = v34.__r_.__value_.__r.__words[2];
  memset(&v34, 0, sizeof(v34));
  v19 = a4[2];
  v36 = v18;
  v37 = v19;
  std::vector<std::pair<std::string,long long>>::push_back[abi:ne200100](v17, __p);
  if (SHIBYTE(v36) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }
  }

  else if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(v34.__r_.__value_.__l.__data_);
LABEL_9:
  v20 = *a1;
  v40 = a2;
  v41 = a3;
  v38 = "num_implied_ub";
  v39 = 14;
  absl::lts_20240722::StrCat(&v40, &v38, &v34);
  *__p = *&v34.__r_.__value_.__l.__data_;
  v21 = v34.__r_.__value_.__r.__words[2];
  memset(&v34, 0, sizeof(v34));
  v22 = a4[3];
  v36 = v21;
  v37 = v22;
  std::vector<std::pair<std::string,long long>>::push_back[abi:ne200100](v20, __p);
  if (SHIBYTE(v36) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

  operator delete(v34.__r_.__value_.__l.__data_);
LABEL_11:
  v23 = *a1;
  v40 = a2;
  v41 = a3;
  v38 = "num_bumps";
  v39 = 9;
  absl::lts_20240722::StrCat(&v40, &v38, &v34);
  *__p = *&v34.__r_.__value_.__l.__data_;
  v24 = v34.__r_.__value_.__r.__words[2];
  memset(&v34, 0, sizeof(v34));
  v25 = a4[5];
  v36 = v24;
  v37 = v25;
  std::vector<std::pair<std::string,long long>>::push_back[abi:ne200100](v23, __p);
  if (SHIBYTE(v36) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }
  }

  else if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_13;
  }

  operator delete(v34.__r_.__value_.__l.__data_);
LABEL_13:
  v26 = *a1;
  v40 = a2;
  v41 = a3;
  v38 = "num_cuts";
  v39 = 8;
  absl::lts_20240722::StrCat(&v40, &v38, &v34);
  *__p = *&v34.__r_.__value_.__l.__data_;
  v27 = v34.__r_.__value_.__r.__words[2];
  memset(&v34, 0, sizeof(v34));
  v28 = *a4;
  v36 = v27;
  v37 = v28;
  std::vector<std::pair<std::string,long long>>::push_back[abi:ne200100](v26, __p);
  if (SHIBYTE(v36) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(v34.__r_.__value_.__l.__data_);
LABEL_15:
  v29 = *a1;
  v40 = a2;
  v41 = a3;
  v38 = "num_merges";
  v39 = 10;
  absl::lts_20240722::StrCat(&v40, &v38, &v34);
  *__p = *&v34.__r_.__value_.__l.__data_;
  v30 = v34.__r_.__value_.__r.__words[2];
  memset(&v34, 0, sizeof(v34));
  v31 = a4[4];
  v36 = v30;
  v37 = v31;
  std::vector<std::pair<std::string,long long>>::push_back[abi:ne200100](v29, __p);
  if (SHIBYTE(v36) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_34:
    operator delete(v34.__r_.__value_.__l.__data_);
    v33 = *MEMORY[0x277D85DE8];
    return;
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_34;
  }

LABEL_17:
  v32 = *MEMORY[0x277D85DE8];
}

void sub_23CB3BE28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t operations_research::sat::CoverCutHelper::GetCoverSizeForBooleans(operations_research::sat::CoverCutHelper *this, int a2, __n128 a3)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    a3.n128_f64[0] = 1.0 - 1.0 / a2;
    do
    {
      v14 = *(this + 2);
      v15 = (v14 + 56 * v5);
      if (*v15 >= a3.n128_f64[0])
      {
        v6 = *(v15 + 6);
        v8 = v15[1];
        v7 = v15[2];
        v9 = (v14 + 56 * v4);
        v10 = *v15;
        v12 = v9[1];
        v11 = v9[2];
        v13 = *v9;
        *(v15 + 6) = *(v9 + 6);
        v15[1] = v12;
        v15[2] = v11;
        *v15 = v13;
        *v9 = v10;
        v9[1] = v8;
        v9[2] = v7;
        *(v9 + 6) = v6;
        ++v5;
        ++v4;
      }

      else if (*v15 >= 0.001)
      {
        ++v5;
      }

      else
      {
        --a2;
        v16 = *(v15 + 6);
        v18 = v15[1];
        v17 = v15[2];
        v19 = (v14 + 56 * a2);
        v20 = *v15;
        v22 = v19[1];
        v21 = v19[2];
        v23 = *v19;
        *(v15 + 6) = *(v19 + 6);
        v15[1] = v22;
        v15[2] = v21;
        *v15 = v23;
        *v19 = v20;
        v19[1] = v18;
        v19[2] = v17;
        *(v19 + 6) = v16;
      }
    }

    while (v5 < a2);
  }

  v24 = a2;
  v25 = *(this + 2);
  v26 = v25 + 56 * v4;
  v27 = 56 * a2;
  v28 = v25 + v27;
  v29 = 126 - 2 * __clz(0x6DB6DB6DB6DB6DB7 * ((v27 - 56 * v4) >> 3));
  if (a2 == v4)
  {
    v30 = 0;
  }

  else
  {
    v30 = v29;
  }

  v31 = a2;
  std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::CoverCutHelper::GetCoverSizeForBooleans(int)::$_0 &,operations_research::sat::CutTerm *,false>(v26, v28, v30, 1, a3);
  v32 = *(this + 1);
  v33 = -*this;
  v35 = -__PAIR128__(v34, *this) >> 64;
  if (v31 <= 0)
  {
LABEL_18:
    if (__PAIR128__(v35, v33) < 1)
    {
      return 0;
    }
  }

  else
  {
    v36 = 0;
    v37 = (*(this + 2) + 16);
    v38 = 0.0;
    while (1)
    {
      v39 = *v37;
      v38 = v38 + *v37 - *(v37 - 2);
      if (v38 > 0.9999)
      {
        break;
      }

      v40 = *(v37 - 1);
      v41 = (v40 * v39) >> 64;
      v42 = v40 * v39;
      v43 = __CFADD__(v42, v33);
      v33 += v42;
      v35 += v43 + v41;
      ++v36;
      v37 += 7;
      if (v24 == v36)
      {
        goto LABEL_18;
      }
    }

    v24 = v36;
    if (__PAIR128__(v35, v33) < 1)
    {
      return 0;
    }
  }

  if (!v24)
  {
    return 0;
  }
}

uint64_t operations_research::sat::CoverCutHelper::MinimizeCover<operations_research::sat::anonymous namespace::LargeCoeffFirst>(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v29[0] = a3;
  v29[1] = a4;
  if (__PAIR128__(a4, a3) < 1)
  {
  }

  v4 = a4;
  v5 = a3;
  v6 = a2;
  v8 = *(a1 + 16);
  v9 = a2;
  v10 = v8 + 56 * a2;
  v11 = 126 - 2 * __clz(v9);
  if (v6)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v6 >= 1)
  {
    v13 = 0;
    do
    {
      while (1)
      {
        v14 = *(a1 + 16);
        v15 = (v14 + 56 * v13);
        v17 = *(v15 + 1);
        v16 = *(v15 + 2);
        v18 = (v17 * v16) >> 64;
        v19 = v17 * v16;
        if (__PAIR128__(v18, v19) < __PAIR128__(v4, v5))
        {
          break;
        }

        if (++v13 >= v6)
        {
          return v6;
        }
      }

      v4 = (__PAIR128__(v4, v5) - __PAIR128__(v18, v19)) >> 64;
      v5 -= v19;
      v6 = (v6 - 1);
      v20 = *(v15 + 6);
      v22 = v15[1];
      v21 = v15[2];
      v23 = (v14 + 56 * v6);
      v24 = *v15;
      v26 = v23[1];
      v25 = v23[2];
      v27 = *v23;
      *(v15 + 6) = *(v23 + 6);
      v15[1] = v26;
      v15[2] = v25;
      *v15 = v27;
      *v23 = v24;
      v23[1] = v22;
      v23[2] = v21;
      *(v23 + 6) = v20;
    }

    while (v13 < v6);
  }

  return v6;
}

void sub_23CB3CB14(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23CB3D718(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void operations_research::sat::ExtendNegativeFunction(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v8[0] = -a2;
  v5 = *(a1 + 24);
  if (v5)
  {
    v8[1] = -(*(*v5 + 48))(v5, v8);
    v8[2] = a2;
    v7 = *(a1 + 24);
    if (v7)
    {
      if (v7 == a1)
      {
        v10 = v9;
        (*(*v7 + 24))(v7, v9);
      }

      else
      {
        v10 = (*(*v7 + 16))(v7);
      }
    }

    else
    {
      v10 = 0;
    }

    *(a3 + 24) = 0;
    operator new();
  }

  std::__throw_bad_function_call[abi:ne200100]();
}

void sub_23CB3DA18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::CoverCutHelper::TryWithLetchfordSouliLifting(operations_research::sat::CoverCutHelper *this, const operations_research::sat::CutData *a2, operations_research::sat::ImpliedBoundsProcessor *a3)
{
  *(this + 29) = 0;
  v6 = *a2;
  *this = *a2;
  if (this != a2)
  {
    std::vector<operations_research::sat::CutTerm>::__assign_with_size[abi:ne200100]<operations_research::sat::CutTerm*,operations_research::sat::CutTerm*>(this + 2, *(a2 + 2), *(a2 + 3), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 3) - *(a2 + 2)) >> 3));
  }

  v7 = *(a2 + 12);
  *(this + 5) = *(a2 + 5);
  *(this + 12) = v7;
  if ((*(this + 1) & 0x8000000000000000) != 0)
  {
    operations_research::sat::CoverCutHelper::TrySimpleKnapsack(this);
  }

  if (a3)
  {
    *(this + 32) = 0;
    *(this + 132) = 0;
    v8 = *(this + 17);
    if (v8 > 1)
    {
      absl::lts_20240722::container_internal::ClearBackingArray(this + 17, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,int>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,int>>>::GetPolicyFunctions(void)::value, v8 < 0x80, 1u);
      v9 = (this + 168);
      v10 = *(this + 21);
      if (v10 > 1)
      {
LABEL_7:
        absl::lts_20240722::container_internal::ClearBackingArray(v9, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,int>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,int>>>::GetPolicyFunctions(void)::value, v10 < 0x80, 1u);
        v11 = 0x6DB6DB6DB6DB6DB7 * ((*(this + 3) - *(this + 2)) >> 3);
        if (v11 < 1)
        {
          goto LABEL_16;
        }

        goto LABEL_11;
      }
    }

    else
    {
      *(this + 18) = 0;
      v9 = (this + 168);
      v10 = *(this + 21);
      if (v10 > 1)
      {
        goto LABEL_7;
      }
    }

    *(this + 22) = 0;
    v11 = 0x6DB6DB6DB6DB6DB7 * ((*(this + 3) - *(this + 2)) >> 3);
    if (v11 < 1)
    {
      goto LABEL_16;
    }

LABEL_11:
    v12 = 0;
    v13 = v11 & 0x7FFFFFFF;
    do
    {
      v14 = *(this + 2) + v12;
      if (*(v14 + 16) >= 2)
      {
        v65 = 0;
        v63 = 0u;
        v64 = 0u;
        v62 = 0u;
        v61 = 0;
        v59 = 0u;
        v60 = 0u;
        v58 = 0u;
        v6.n128_u64[0] = operations_research::sat::ImpliedBoundsProcessor::DecomposeWithImpliedLowerBound(a3, v14, 1uLL, &v62, &v58, 0);
        if (v15)
        {
          *v14 = v58;
          *(v14 + 16) = v59;
          *(v14 + 32) = v60;
          *(v14 + 48) = v61;
          operations_research::sat::CutDataBuilder::AddOrMergeTerm(this + 128, &v62, 1uLL, this);
          ++*(this + 47);
        }
      }

      v12 += 56;
      --v13;
    }

    while (v13);
  }

LABEL_16:
  v17 = *(this + 2);
  v16 = *(this + 3);
  v18 = (this + 16);
  if (v17 != v16)
  {
LABEL_17:
    while (*(v17 + 16) == 1)
    {
      v17 += 56;
      if (v17 == v16)
      {
        goto LABEL_26;
      }
    }

    v19 = v16;
    while (1)
    {
      v16 = v19 - 56;
      if (v19 - 56 == v17)
      {
        break;
      }

      v20 = *(v19 - 40);
      v19 -= 56;
      if (v20 == 1)
      {
        v21 = *v17;
        v22 = *(v17 + 16);
        v23 = *(v17 + 32);
        v65 = *(v17 + 48);
        v63 = v22;
        v64 = v23;
        v62 = v21;
        v24 = *v16;
        v25 = *(v16 + 16);
        v26 = *(v16 + 32);
        *(v17 + 48) = *(v16 + 48);
        *(v17 + 16) = v25;
        *(v17 + 32) = v26;
        *v17 = v24;
        v17 += 56;
        v6 = v62;
        v27 = v63;
        v28 = v64;
        *(v16 + 48) = v65;
        *(v16 + 16) = v27;
        *(v16 + 32) = v28;
        *v16 = v6;
        if (v16 != v17)
        {
          goto LABEL_17;
        }

        goto LABEL_26;
      }
    }
  }

  v16 = v17;
LABEL_26:
  v29 = -1227133513 * ((v16 - *v18) >> 3);
  if (!v29)
  {
    return 0;
  }

  result = operations_research::sat::CoverCutHelper::GetCoverSizeForBooleans(this, v29, v6);
  if (result)
  {
    v31 = *this;
    if (*this >= 0x8000000000000000)
    {
      result = 0;
      ++*(this + 53);
      return result;
    }

    v32 = result;
    v57 = 0;
    *&v58 = v31;
    v55 = (this + 16);
    v54 = result;
    v33 = 0;
    if (result < 1)
    {
      v38 = 0;
    }

    else
    {
      v34 = *v18;
      v35 = 8;
      v36 = result;
      do
      {
        if (*(v34 + v35 + 8) != 1)
        {
          absl::lts_20240722::log_internal::MakeCheckOpString<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const&,long long>((v34 + v35 + 8), 1, "cut_.terms[i].bound_diff == 1");
        }

        v39 = *(v34 + v35);
        if (v39 <= 0)
        {
          absl::lts_20240722::log_internal::MakeCheckOpString<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const&,long long>((v34 + v35), 0, "cut_.terms[i].coeff > 0");
        }

        v40 = v33;
        v41 = (v33 >> 3) + 1;
        if (v41 >> 61)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        if (v33 >> 3 != -1)
        {
          if (!(v41 >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v42 = (8 * (v33 >> 3));
        *v42 = v39;
        v33 = (v42 + 1);
        memcpy(0, 0, v40);
        v34 = *v55;
        v37 = *(*v55 + v35);
        v38 = v57 + v37;
        if (__OFADD__(v57, v37))
        {
          v38 = (v57 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
        }

        v57 = v38;
        v35 += 56;
        --v36;
      }

      while (v36);
      if ((v38 - 0x7FFFFFFFFFFFFFFFLL) < 2)
      {
        result = 0;
        ++*(this + 53);
        return result;
      }

      v32 = v54;
    }

    if (v38 <= v58)
    {
      absl::lts_20240722::log_internal::MakeCheckOpString<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const&,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const&>(&v57, &v58, "sum > rhs");
    }

    v43 = v33 >> 3;
    v44 = 126 - 2 * __clz(v33 >> 3);
    v56 = 0;
    if (v33)
    {
      v45 = v44;
    }

    else
    {
      v45 = 0;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> *,false>(0, v33, &v62, v45, 1);
    if (v32 <= 0)
    {
      v52 = 0;
      v49 = v56;
    }

    else
    {
      v46 = 0;
      v47 = v32;
      v48 = 0;
      while (1)
      {
        v49 = v43;
        v56 = v43;
        v51 = *v48++;
        v50 = v51;
        if (v46 + v51 * v43 > v58)
        {
          break;
        }

        v46 += v50;
        --v43;
        if (!--v47)
        {
          v52 = 0;
          goto LABEL_58;
        }
      }

      v52 = v58 - v46;
    }

LABEL_58:
    if (v49 < 1)
    {
      absl::lts_20240722::log_internal::MakeCheckOpString<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const&,long long>(&v56, 1, "q >= 1");
    }

    v53 = ((v52 ^ 1uLL) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
    if ((v52 * 1) >> 64 == v52 >> 63)
    {
      v53 = v52;
    }

    result = v53 < 0x7FFFFFFFFFFFFFFELL;
    if (v53 < 0x7FFFFFFFFFFFFFFELL)
    {
      operator new();
    }

    ++*(this + 53);
  }

  return result;
}

void sub_23CB3E4D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, void *a15)
{
  if (v15)
  {
    operator delete(v15);
  }

  v17 = a1;
  if (a15)
  {
    operator delete(a15);
    v17 = a1;
  }

  _Unwind_Resume(v17);
}

void operations_research::sat::BoolRLTCutHelper::~BoolRLTCutHelper(operations_research::sat::BoolRLTCutHelper *this)
{
  if (dword_2810BD620 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::sat::BoolRLTCutHelper::~BoolRLTCutHelper()::$_0::operator() const(void)::site, dword_2810BD620))
  {
    v4 = *(this + 21);
    operator new();
  }

  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    *(this + 5) = v3;
    operator delete(v3);
  }
}

unint64_t *operations_research::sat::BoolRLTCutHelper::Initialize(uint64_t a1, void *a2)
{
  result = operations_research::sat::ProductDetector::InitializeBooleanRLTCuts(*(a1 + 144), a2, *(a1 + 160));
  *a1 = *(*(a1 + 144) + 304) > 1uLL;
  return result;
}

uint64_t operations_research::sat::BoolRLTCutHelper::TrySimpleSeparation(operations_research::sat::BoolRLTCutHelper *this, const operations_research::sat::CutData *a2)
{
  if (*this != 1)
  {
    return 0;
  }

  ++*(this + 21);
  v42 = xmmword_23CE306D0;
  *(this + 5) = *(this + 4);
  *(this + 1) = *a2;
  v3 = *(a2 + 2);
  v2 = *(a2 + 3);
  if (v3 != v2)
  {
    v4 = (this + 16);
    v37 = *(this + 18);
    v35 = *(a2 + 3);
    v36 = this + 32;
    while (1)
    {
      v5 = v3[2];
      v6 = *v3;
      if (v5 == 1 || v6 > 0.000001)
      {
        if (v5 - v6 <= 0.000001)
        {
          *v4 -= v3[1] * v5;
        }

        else
        {
          UnderlyingLiteralOrNone = operations_research::sat::CutTerm::GetUnderlyingLiteralOrNone(v3);
          if (UnderlyingLiteralOrNone == -1)
          {
            goto LABEL_28;
          }

          v9 = 0;
          v10 = UnderlyingLiteralOrNone ^ 1u;
          _X9 = v37[39];
          __asm { PRFM            #4, [X9] }

          v17 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v10) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v10));
          v18 = v37[37];
          v19 = (v17 >> 7) ^ (_X9 >> 12);
          v20 = vdup_n_s8(v17 & 0x7F);
          v21 = v19 & v18;
          v22 = *(_X9 + (v19 & v18));
          v23 = vceq_s8(v22, v20);
          if (!v23)
          {
            goto LABEL_14;
          }

LABEL_11:
          v24 = v37[40];
          do
          {
            if (*(v24 + 32 * ((v21 + (__clz(__rbit64(v23)) >> 3)) & v18)) == v10)
            {
              v25 = 0;
              __asm { PRFM            #4, [X9] }

              v27 = v19 & v18;
              v28 = *(_X9 + v27);
              v29 = vceq_s8(v28, v20);
              if (!v29)
              {
                goto LABEL_20;
              }

              while (1)
              {
                do
                {
                  v30 = (v27 + (__clz(__rbit64(v29)) >> 3)) & v18;
                  if (*(v24 + 32 * v30) == v10)
                  {
                    v31 = v24 + 32 * v30;
                    v32 = *(v31 + 8);
                    v33 = *(v31 + 16);
                    while (v32 != v33)
                    {
                      v41 = *v32;
                      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>::find_or_prepare_insert<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>(&v42, &v41, v38);
                      if (v40)
                      {
                        *v39 = v41;
                        operator new();
                      }

                      ++v32;
                    }

                    goto LABEL_28;
                  }

                  v29 &= ((v29 & 0x8080808080808080) - 1) & 0x8080808080808080;
                }

                while (v29);
                do
                {
LABEL_20:
                  if (vceq_s8(v28, 0x8080808080808080))
                  {
                    absl::lts_20240722::base_internal::ThrowStdOutOfRange("absl::container_internal::raw_hash_map<>::at", v8);
                  }

                  v25 += 8;
                  v27 = (v25 + v27) & v18;
                  v28 = *(_X9 + v27);
                  v29 = vceq_s8(v28, v20);
                }

                while (!v29);
              }
            }

            v23 &= ((v23 & 0x8080808080808080) - 1) & 0x8080808080808080;
          }

          while (v23);
LABEL_14:
          while (!*&vceq_s8(v22, 0x8080808080808080))
          {
            v9 += 8;
            v21 = (v9 + v21) & v18;
            v22 = *(_X9 + v21);
            v23 = vceq_s8(v22, v20);
            if (v23)
            {
              goto LABEL_11;
            }
          }

LABEL_28:
          std::vector<operations_research::sat::CutTerm>::push_back[abi:ne200100](v36, v3);
          v2 = v35;
        }
      }

      v3 += 7;
      if (v3 == v2)
      {
        result = 0;
        goto LABEL_33;
      }
    }
  }

  result = 0;
LABEL_33:
  if (v42 >= 2)
  {
    operator delete((v43 - (BYTE8(v42) & 1) - 8));
    return 0;
  }

  return result;
}

void sub_23CB3EBE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unint64_t a19, uint64_t a20, uint64_t a21)
{
  if (v21)
  {
    operator delete(v21);
    if (a19 < 2)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (a19 < 2)
  {
    goto LABEL_3;
  }

  operator delete((a21 - (a20 & 1) - 8));
  _Unwind_Resume(exception_object);
}

BOOL operations_research::sat::BoolRLTCutHelper::TryProduct(uint64_t a1, int a2, unint64_t *a3)
{
  v5 = a1 + 96;
  *(a1 + 104) = *(a1 + 96);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v6 = *a3;
  v7 = a3[1];
  v8 = **(a1 + 160);
  if (a2)
  {
    v9 = 1.0 - *(v8 + ((8 * a2) & 0xFFFFFFFFFFFFFFF0));
    v10 = a3[2];
    v11 = a3[3];
    if (v10 == v11)
    {
      goto LABEL_30;
    }

    while (1)
    {
LABEL_8:
      v12 = *v10;
      v13 = *(v10 + 16);
      v14 = *(v10 + 32);
      *&v33[16] = *(v10 + 48);
      v32 = v13;
      *v33 = v14;
      v31 = v12;
      UnderlyingLiteralOrNone = operations_research::sat::CutTerm::GetUnderlyingLiteralOrNone(&v31);
      if (a2 != UnderlyingLiteralOrNone)
      {
        if ((a2 ^ UnderlyingLiteralOrNone) == 1)
        {
          goto LABEL_7;
        }

        v16 = v32 - *&v31;
        v17 = v9 - v16;
        if (v9 - v16 > 0.0)
        {
          v18 = v9 - v16;
        }

        else
        {
          v18 = 0.0;
        }

        if (UnderlyingLiteralOrNone == -1 || (v19 = operations_research::sat::ProductDetector::LiteralProductUpperBound(*(a1 + 144), a2, UnderlyingLiteralOrNone ^ 1), v19 == -1))
        {
LABEL_24:
          if (v17 <= 0.0)
          {
            goto LABEL_7;
          }

          v7 = (__PAIR128__(v7, v6) - v32 * *(&v31 + 1)) >> 64;
          v6 -= v32 * *(&v31 + 1);
          *&v33[8] = vnegq_s64(*&v33[8]);
          v25 = v32;
          if (v32 < 0x8000000000000003)
          {
            v25 = -INFINITY;
          }

          if (v32 > 0x7FFFFFFFFFFFFFFDLL)
          {
            v25 = INFINITY;
          }

          *&v31 = v25 - *&v31;
          *(&v32 + 1) = v32 - *(&v32 + 1);
          *(&v31 + 1) = -*(&v31 + 1);
          goto LABEL_6;
        }

        v20 = **(a1 + 160);
        if (v19)
        {
          v21 = 1.0 - *(v20 + ((8 * v19) & 0xFFFFFFFFFFFFFFF0));
          if (v9 - v21 <= v18)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v21 = *(v20 + 8 * v19);
          if (v9 - v21 <= v18)
          {
            goto LABEL_24;
          }
        }

        v22 = *(&v31 + 1);
        *&v33[8] = vnegq_s64(*&v33[8]);
        *(&v32 + 1) = v32 - *(&v32 + 1);
        *(&v31 + 1) = -*(&v31 + 1);
        *&v31 = v21;
        if (v32 != 1)
        {
          operations_research::sat::BoolRLTCutHelper::TryProduct(&v32);
        }

        v7 = (__PAIR128__(v7, v6) - v22) >> 64;
        v6 -= v22;
        v23 = v19 & 0xFFFFFFFE;
        if ((v19 & 1) == 0)
        {
          v23 = v19;
        }

        *v33 = v23;
        v24 = 1;
        if (v19)
        {
          v24 = -1;
        }

        *&v33[8] = v24;
        *&v33[16] = 0;
        *(&v32 + 1) = v19 & 1;
      }

LABEL_6:
      std::vector<operations_research::sat::CutTerm>::push_back[abi:ne200100](v5, &v31);
LABEL_7:
      v10 += 56;
      if (v10 == v11)
      {
        goto LABEL_30;
      }
    }
  }

  v9 = *(v8 + 8 * a2);
  v10 = a3[2];
  v11 = a3[3];
  if (v10 != v11)
  {
    goto LABEL_8;
  }

LABEL_30:
  v26 = v6 + 0x4000000000000;
  if (v6 < 0xFFFC000000000000)
  {
    v27 = v7;
  }

  else
  {
    v27 = v7 + 1;
  }

  if (__PAIR128__(v27, v26) < 0x8000000000001)
  {
    *(&v32 + 1) = a2 & 1;
    *v33 = 0;
    *&v31 = v9;
    v28 = 1;
    *(&v31 + 1) = -v6;
    *&v32 = 1;
    v29 = a2 & 0xFFFFFFFE;
    if (a2)
    {
      v28 = -1;
    }

    else
    {
      v29 = a2;
    }

    *v33 = v29;
    *&v33[8] = v28;
    *&v33[16] = 0;
    std::vector<operations_research::sat::CutTerm>::push_back[abi:ne200100](v5, &v31);
  }

  return __PAIR128__(v27, v26) < 0x8000000000001;
}

uint64_t operations_research::sat::ProductDetector::LiteralProductUpperBound(uint64_t a1, int a2, int a3)
{
  if (a3 <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = a3;
  }

  if (a3 >= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = a3;
  }

  v5 = *(a1 + 328);
  if (v5 > 1)
  {
    v6 = 0;
    v7 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v4) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v4))) + v3;
    v8 = 0x9DDFEA08EB382D69 * v7;
    v9 = (v7 * 0x9DDFEA08EB382D69) >> 64;
    _X12 = *(a1 + 344);
    __asm { PRFM            #4, [X12] }

    v15 = v9 ^ v8;
    v16 = vdup_n_s8(v15 & 0x7F);
    v17 = ((v15 >> 7) ^ (_X12 >> 12)) & v5;
    v18 = *(_X12 + v17);
    v19 = vceq_s8(v18, v16);
    if (!v19)
    {
      goto LABEL_16;
    }

LABEL_11:
    while (1)
    {
      v20 = (v17 + (__clz(__rbit64(v19)) >> 3)) & v5;
      v21 = (*(a1 + 352) + 12 * v20);
      if (*v21 == v4 && v21[1] == v3)
      {
        break;
      }

      v19 &= ((v19 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v19)
      {
LABEL_16:
        while (!*&vceq_s8(v18, 0x8080808080808080))
        {
          v6 += 8;
          v17 = (v6 + v17) & v5;
          v18 = *(_X12 + v17);
          v19 = vceq_s8(v18, v16);
          if (v19)
          {
            goto LABEL_11;
          }
        }

        return 0xFFFFFFFFLL;
      }
    }

    if (!(_X12 + v20))
    {
      return 0xFFFFFFFFLL;
    }

    return v21[2];
  }

  if (*(a1 + 336) >= 2uLL)
  {
    v24 = *(a1 + 344) == v4 && *(a1 + 348) == v3;
    v25 = &absl::lts_20240722::container_internal::kSooControl;
    if (v24)
    {
      v21 = (a1 + 344);
    }

    else
    {
      v25 = 0;
      v21 = 0;
    }

    if (v25)
    {
      return v21[2];
    }
  }

  return 0xFFFFFFFFLL;
}

void operations_research::sat::CreatePositiveMultiplicationCutGenerator(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, void *a4@<X4>, uint64_t a5@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  *(a5 + 8) = 0;
  v9 = a5 + 8;
  *a5 = 0;
  *(a5 + 16) = 0;
  *(a5 + 24) = 0;
  *(a5 + 56) = 0;
  if (*a1 != -1)
  {
    std::vector<int>::push_back[abi:ne200100](v9, a1);
  }

  if (*a2 != -1)
  {
    std::vector<int>::push_back[abi:ne200100](v9, a2);
  }

  if (*a3 != -1)
  {
    std::vector<int>::push_back[abi:ne200100](v9, a3);
  }

  operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a4);
  operations_research::sat::Model::GetOrCreate<operations_research::sat::Trail>(a4);
  v10 = *a1;
  v11 = *(a1 + 2);
  v12 = *a2;
  v13 = *(a2 + 2);
  v14 = *a3;
  v15 = *(a3 + 2);
  operator new();
}

void operations_research::sat::ComputeHyperplanAboveSquare(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v10 = a5[3];
  if (v10 > 1)
  {
    v13 = 0;
    _X11 = a5[5];
    __asm { PRFM            #4, [X11] }

    v20 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d));
    v21 = vdup_n_s8(v20 & 0x7F);
    v22 = ((v20 >> 7) ^ (_X11 >> 12)) & v10;
    v23 = *(_X11 + v22);
    v24 = vceq_s8(v23, v21);
    if (!v24)
    {
      goto LABEL_8;
    }

LABEL_5:
    v25 = a5[6];
    while (1)
    {
      v26 = (v22 + (__clz(__rbit64(v24)) >> 3)) & v10;
      if (*(v25 + 16 * v26) == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
      {
        break;
      }

      v24 &= ((v24 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v24)
      {
LABEL_8:
        while (!*&vceq_s8(v23, 0x8080808080808080))
        {
          v13 += 8;
          v22 = (v13 + v22) & v10;
          v23 = *(_X11 + v22);
          v24 = vceq_s8(v23, v21);
          if (v24)
          {
            goto LABEL_5;
          }
        }

        goto LABEL_3;
      }
    }

    v27 = (v25 + 16 * v26);
    v11 = (_X11 + v26);
    v12 = -(a3 * a4);
    if (!(_X11 + v26))
    {
      goto LABEL_13;
    }

LABEL_12:
    v11 = v27[1];
    goto LABEL_13;
  }

  if (a5[4] < 2uLL)
  {
LABEL_3:
    v11 = 0;
    v12 = -(a3 * a4);
    goto LABEL_13;
  }

  v29 = a5[5];
  v28 = a5 + 5;
  v11 = &absl::lts_20240722::container_internal::kSooControl;
  if (v29 == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
  {
    v27 = v28;
  }

  else
  {
    v11 = 0;
    v27 = 0;
  }

  v12 = -(a3 * a4);
  if (v11)
  {
    goto LABEL_12;
  }

LABEL_13:
  v32[0] = v11;
  v32[1] = 0x8000000000000002;
  v32[2] = v12;
  *__p = 0u;
  v34 = 0u;
  v30 = *a2;
  v31 = *(a2 + 2);
  operations_research::sat::LinearConstraintBuilder::AddTerm(v32, &v30, 1);
  v30 = *a1;
  v31 = *(a1 + 2);
  operations_research::sat::LinearConstraintBuilder::AddTerm(v32, &v30, -(a3 + a4));
  operations_research::sat::LinearConstraintBuilder::Build(v32, a6);
  if (__p[1])
  {
    *&v34 = __p[1];
    operator delete(__p[1]);
  }
}

void sub_23CB3F4A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::ComputeHyperplanBelowSquare(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = ~a3;
  v9 = a4[3];
  if (v9 > 1)
  {
    v12 = 0;
    _X12 = a4[5];
    __asm { PRFM            #4, [X12] }

    v19 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d));
    v20 = vdup_n_s8(v19 & 0x7F);
    v21 = ((v19 >> 7) ^ (_X12 >> 12)) & v9;
    v22 = *(_X12 + v21);
    v23 = vceq_s8(v22, v20);
    if (!v23)
    {
      goto LABEL_8;
    }

LABEL_5:
    v24 = a4[6];
    while (1)
    {
      v25 = (v21 + (__clz(__rbit64(v23)) >> 3)) & v9;
      if (*(v24 + 16 * v25) == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
      {
        break;
      }

      v23 &= ((v23 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v23)
      {
LABEL_8:
        while (!*&vceq_s8(v22, 0x8080808080808080))
        {
          v12 += 8;
          v21 = (v12 + v21) & v9;
          v22 = *(_X12 + v21);
          v23 = vceq_s8(v22, v20);
          if (v23)
          {
            goto LABEL_5;
          }
        }

        goto LABEL_3;
      }
    }

    v26 = v24 + 16 * v25;
    v10 = (_X12 + v25);
    v11 = v8 * a3;
    if (!(_X12 + v25))
    {
      goto LABEL_13;
    }

LABEL_12:
    v10 = *(v26 + 8);
    goto LABEL_13;
  }

  if (a4[4] < 2uLL)
  {
LABEL_3:
    v10 = 0;
    v11 = v8 * a3;
    goto LABEL_13;
  }

  v28 = a4[5];
  v27 = a4 + 5;
  v10 = &absl::lts_20240722::container_internal::kSooControl;
  if (v28 == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
  {
    v26 = v27;
  }

  else
  {
    v10 = 0;
    v26 = ~a3;
  }

  v11 = v8 * a3;
  if (v10)
  {
    goto LABEL_12;
  }

LABEL_13:
  v31[0] = v10;
  v31[1] = v11;
  v31[2] = 0x7FFFFFFFFFFFFFFELL;
  *__p = 0u;
  v33 = 0u;
  v29 = *a2;
  v30 = *(a2 + 2);
  operations_research::sat::LinearConstraintBuilder::AddTerm(v31, &v29, 1);
  v29 = *a1;
  v30 = *(a1 + 2);
  operations_research::sat::LinearConstraintBuilder::AddTerm(v31, &v29, ~(2 * a3));
  operations_research::sat::LinearConstraintBuilder::Build(v31, a5);
  if (__p[1])
  {
    *&v33 = __p[1];
    operator delete(__p[1]);
  }
}

void sub_23CB3F69C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::CreateSquareCutGenerator(__int128 *a1@<X0>, __int128 *a2@<X1>, void *a3@<X3>, uint64_t a4@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  *(a4 + 8) = 0;
  v7 = a4 + 8;
  *a4 = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 56) = 0;
  if (*a2 != -1)
  {
    std::vector<int>::push_back[abi:ne200100](v7, a2);
  }

  if (*a1 != -1)
  {
    std::vector<int>::push_back[abi:ne200100](v7, a1);
  }

  operations_research::sat::Model::GetOrCreate<operations_research::sat::Trail>(a3);
  operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a3);
  v8 = *a1;
  v9 = *(a1 + 2);
  v10 = *a2;
  v11 = *(a2 + 2);
  operator new();
}

unsigned int **operations_research::sat::ImpliedBoundsProcessor::ComputeBestImpliedBound@<X0>(uint64_t *a1@<X0>, unsigned int a2@<W1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = 0;
  _X9 = a1[6];
  __asm { PRFM            #4, [X9] }

  v15 = a1 + 4;
  v14 = a1[4];
  result = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a2)));
  v17 = vdup_n_s8(result & 0x7F);
  v18 = ((result >> 7) ^ (_X9 >> 12)) & v14;
  v19 = *(_X9 + v18);
  v20 = vceq_s8(v19, v17);
  if (!v20)
  {
LABEL_4:
    while (!*&vceq_s8(v19, 0x8080808080808080))
    {
      v7 += 8;
      v18 = (v7 + v18) & v14;
      v19 = *(_X9 + v18);
      v20 = vceq_s8(v19, v17);
      if (v20)
      {
        goto LABEL_2;
      }
    }

    v63 = v15;
    v64 = result >> 7;
    v62 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a2));
    *(a4 + 24) = 0;
    *a4 = 0;
    *(a4 + 8) = 0;
    v23 = -1;
    *(a4 + 32) = -1;
    v24 = *(*(a1[15] + 152) + 24 * a2);
    result = operations_research::sat::ImpliedBounds::GetImpliedBounds(a1[16], a2);
    v26 = *result;
    v25 = result[1];
    if (*result == v25)
    {
      v51 = 0;
      v30 = 0;
LABEL_42:
      v52 = 0;
      *(a4 + 24) = v51;
      *a4 = v30;
      *(a4 + 32) = v23;
      _X9 = a1[6];
      __asm { PRFM            #4, [X9] }

      v55 = a1[4];
      v56 = (v64 ^ (_X9 >> 12)) & v55;
      v57 = *(_X9 + v56);
      v58 = vceq_s8(v57, v17);
      if (!v58)
      {
        goto LABEL_45;
      }

LABEL_43:
      while (1)
      {
        v59 = a1[7] + 48 * ((v56 + (__clz(__rbit64(v58)) >> 3)) & v55);
        if (*v59 == a2)
        {
          break;
        }

        v58 &= ((v58 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v58)
        {
LABEL_45:
          while (1)
          {
            v60 = vceq_s8(v57, 0x8080808080808080);
            if (v60)
            {
              break;
            }

            v52 += 8;
            v56 = (v52 + v56) & v55;
            v57 = *(_X9 + v56);
            v58 = vceq_s8(v57, v17);
            if (v58)
            {
              goto LABEL_43;
            }
          }

          result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(v63, v62, (v56 + (__clz(__rbit64(v60)) >> 3)) & v55, v52, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::sat::ImpliedBoundsProcessor::BestImpliedBoundInfo>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::sat::ImpliedBoundsProcessor::BestImpliedBoundInfo>>>::GetPolicyFunctions(void)::value);
          v59 = a1[7] + 48 * result;
          *v59 = a2;
          *(v59 + 40) = 0;
          *(v59 + 24) = 0u;
          *(v59 + 8) = 0u;
          *(v59 + 40) = -1;
          break;
        }
      }

      v61 = *(a4 + 16);
      *(v59 + 8) = *a4;
      *(v59 + 24) = v61;
      *(v59 + 40) = *(a4 + 32);
      return result;
    }

    v67 = 0;
    v27 = v24;
    if (v24 < 0x8000000000000003)
    {
      v27 = -INFINITY;
    }

    if (v24 <= 0x7FFFFFFFFFFFFFFDLL)
    {
      v28 = v27;
    }

    else
    {
      v28 = INFINITY;
    }

    v65 = *(a4 + 16);
    v66 = 0.0;
    v29 = INFINITY;
    v30 = 0;
    while (1)
    {
      v36 = *v26;
      v37 = *v26 & 0xFFFFFFFE;
      v38 = *a1;
      if (*a1 > 1)
      {
        break;
      }

      if (a1[1] >= 2 && *(a1 + 4) == v37)
      {
        goto LABEL_23;
      }

LABEL_38:
      v26 += 6;
      if (v26 == v25)
      {
        *(a4 + 8) = v66;
        *(a4 + 16) = v65;
        v51 = v67;
        goto LABEL_42;
      }
    }

    v34 = 0;
    _X12 = a1[2];
    __asm { PRFM            #4, [X12] }

    v48 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v37) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v37));
    v35 = (_X12 >> 12) ^ (v48 >> 7);
    v49 = vdup_n_s8(v48 & 0x7F);
    while (1)
    {
      v31 = v35 & v38;
      v32 = *(_X12 + v31);
      v33 = vceq_s8(v32, v49);
      if (v33)
      {
        break;
      }

LABEL_18:
      if (vceq_s8(v32, 0x8080808080808080))
      {
        goto LABEL_38;
      }

      v34 += 8;
      v35 = v34 + v31;
    }

    while (*(a1[3] + 4 * ((v31 + (__clz(__rbit64(v33)) >> 3)) & v38)) != v37)
    {
      v33 &= ((v33 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v33)
      {
        goto LABEL_18;
      }
    }

LABEL_23:
    v39 = *(v26 + 1);
    v40 = v39 - v24;
    v69 = v39 - v24;
    if (v39 - v24 < 0)
    {
      *(a4 + 16) = v65;
      *(a4 + 24) = v67;
      *a4 = v30;
      *(a4 + 8) = v66;
      *(a4 + 32) = v23;
      absl::lts_20240722::log_internal::MakeCheckOpString<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const&,long long>(&v69, 0, "diff >= 0");
    }

    v41 = 1.0 - *(*a3 + 8 * v36);
    if (*(v26 + 16))
    {
      v41 = *(*a3 + 8 * v36);
    }

    v42 = *(*a3 + 8 * a2);
    v43 = v40;
    if (v40 > 0x7FFFFFFFFFFFFFFDLL)
    {
      v43 = INFINITY;
    }

    v44 = v42 - v28 - v41 * v43;
    if (v44 < -0.0001)
    {
      v45 = *v26;
      if (*(v26 + 16) == 1)
      {
        operator new();
      }

      operator new();
    }

    if (v44 + 0.0001 < v29 || (v44 < v29 + 0.0001 ? (v50 = v39 <= v67) : (v50 = 1), !v50))
    {
      v65 = *(v26 + 16);
      v66 = v41;
      v23 = v36;
      v30 = *(*a3 + 8 * a2);
      v67 = v39;
      v29 = v42 - v28 - v41 * v43;
    }

    goto LABEL_38;
  }

LABEL_2:
  while (1)
  {
    v21 = a1[7] + 48 * ((v18 + (__clz(__rbit64(v20)) >> 3)) & v14);
    if (*v21 == a2)
    {
      break;
    }

    v20 &= ((v20 & 0x8080808080808080) - 1) & 0x8080808080808080;
    if (!v20)
    {
      goto LABEL_4;
    }
  }

  v22 = *(v21 + 24);
  *a4 = *(v21 + 8);
  *(a4 + 16) = v22;
  *(a4 + 32) = *(v21 + 40);
  return result;
}

void sub_23CB4005C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  *(a2 + 16) = a7;
  *(a2 + 24) = a9;
  *a2 = v19;
  *(a2 + 8) = a8;
  *(a2 + 32) = v18;
  operations_research::sat::LinearConstraint::~LinearConstraint(va);
  _Unwind_Resume(a1);
}

void sub_23CB400C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  *(a2 + 16) = a7;
  *(a2 + 24) = a9;
  *a2 = v14;
  *(a2 + 8) = a8;
  *(a2 + 32) = v13;
  operations_research::sat::LinearConstraint::~LinearConstraint(va);
  operator delete(v12);
  operations_research::sat::LinearConstraint::~LinearConstraint(va1);
  _Unwind_Resume(a1);
}

void sub_23CB40104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14, uint64_t a15, uint64_t a16)
{
  *(a9 + 16) = a14;
  *(a9 + 24) = a16;
  *a9 = v16;
  *(a9 + 8) = a15;
  JUMPOUT(0x23CB40124);
}

uint64_t *operations_research::sat::ImpliedBoundsProcessor::RecomputeCacheAndSeparateSomeImpliedBoundCuts(uint64_t *a1, void *a2)
{
  v6 = a1[4];
  result = a1 + 4;
  v5 = v6;
  if (v6)
  {
    result = absl::lts_20240722::container_internal::ClearBackingArray(result, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::sat::ImpliedBoundsProcessor::BestImpliedBoundInfo>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::sat::ImpliedBoundsProcessor::BestImpliedBoundInfo>>>::GetPolicyFunctions(void)::value, v5 < 0x80, 0);
  }

  v7 = a1[16];
  v8 = *(v7 + 176);
  v9 = *(v7 + 184);
  while (v8 != v9)
  {
    v15 = *v8 & 0xFFFFFFFE;
    v16 = *a1;
    if (*a1 > 1)
    {
      v13 = 0;
      _X11 = a1[2];
      __asm { PRFM            #4, [X11] }

      v23 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v15) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v15));
      v14 = (v23 >> 7) ^ (_X11 >> 12);
      v24 = vdup_n_s8(v23 & 0x7F);
      while (1)
      {
        v10 = v14 & v16;
        v11 = *(_X11 + v10);
        v12 = vceq_s8(v11, v24);
        if (v12)
        {
          break;
        }

LABEL_8:
        if (vceq_s8(v11, 0x8080808080808080))
        {
          goto LABEL_14;
        }

        v13 += 8;
        v14 = v13 + v10;
      }

      while (*(a1[3] + 4 * ((v10 + (__clz(__rbit64(v12)) >> 3)) & v16)) != v15)
      {
        v12 &= ((v12 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v12)
        {
          goto LABEL_8;
        }
      }
    }

    else if (a1[1] < 2 || *(a1 + 4) != v15)
    {
      goto LABEL_14;
    }

    result = operations_research::sat::ImpliedBoundsProcessor::ComputeBestImpliedBound(a1, *v8, a2, v25);
LABEL_14:
    ++v8;
  }

  return result;
}

int8x8_t operations_research::sat::ImpliedBoundsProcessor::DecomposeWithImpliedLowerBound(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, int8x8_t result)
{
  if (*(a2 + 16) >= 2 && *(a2 + 48) == 0)
  {
    v7 = *(a2 + 40);
    if (v7 >= 0)
    {
      v8 = *(a2 + 40);
    }

    else
    {
      v8 = -v7;
    }

    v37 = v8;
    if (v8 != 1)
    {
      operations_research::sat::ImpliedBoundsProcessor::DecomposeWithImpliedLowerBound(&v37);
    }

    v9 = 0;
    v10 = *(a2 + 32) ^ (v7 < 1);
    _X10 = a1[6];
    __asm { PRFM            #4, [X10] }

    v16 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v10) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v10));
    v17 = a1[4];
    result = vdup_n_s8(v16 & 0x7F);
    v18 = ((v16 >> 7) ^ (_X10 >> 12)) & v17;
    v19 = *(_X10 + v18);
    v20 = vceq_s8(v19, result);
    if (v20)
    {
LABEL_11:
      while (1)
      {
        v21 = a1[7] + 48 * ((v18 + (__clz(__rbit64(v20)) >> 3)) & v17);
        if (*v21 == v10)
        {
          break;
        }

        v20 &= ((v20 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v20)
        {
          goto LABEL_13;
        }
      }

      v22 = *(v21 + 40);
      if (v22 != -1)
      {
        if (*(*(a1[15] + 40) + 8 * v22) + *(*(a1[15] + 40) + ((8 * v22) ^ 8)))
        {
          v23 = *(a2 + 24);
          v24 = v23 + *(v21 + 32);
          if (v24 >= 1)
          {
            v25 = *(a2 + 8);
            v26 = v25 * v24;
            v27 = (v25 * v24) >> 64 == (v25 * v24) >> 63 ? v25 * v24 : (v25 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
            v28 = (a3 * v27) >> 64 == (a3 * v27) >> 63 ? a3 * v27 : ((v27 ^ a3) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
            if (v28 - 0x7FFFFFFFFFFFFFFFLL >= 2)
            {
              v29 = *(v21 + 8);
              v30 = *(v21 + 16);
              v31 = *(v21 + 24);
              v32 = -v23;
              *(a4 + 32) = v22;
              *(a4 + 8) = v26;
              *(a4 + 16) = 1;
              *a4 = v30;
              if (v31)
              {
                v33 = 1;
              }

              else
              {
                v33 = -1;
              }

              *(a4 + 40) = v33;
              *(a4 + 48) = 0;
              *(a4 + 24) = (v31 & 1) == 0;
              *(a5 + 32) = *(a2 + 32);
              *(a5 + 40) = *(a2 + 40);
              *(a5 + 36) = *(a4 + 32);
              *(a5 + 48) = -(v24 * *(a4 + 40));
              *(a5 + 24) = *(a2 + 24) - *(a4 + 24) * v24;
              v34 = v24;
              if (v24 > 0x7FFFFFFFFFFFFFFDLL)
              {
                v34 = INFINITY;
              }

              v35 = v30 * v34;
              v36 = v32;
              if (v32 < 0x8000000000000003)
              {
                v36 = -INFINITY;
              }

              if (v32 > 0x7FFFFFFFFFFFFFFDLL)
              {
                v36 = INFINITY;
              }

              *&result = v29 - v36 - v35;
              *a5 = *&result;
              *(a5 + 8) = *(a2 + 8);
              *(a5 + 16) = *(a2 + 16);
            }
          }
        }
      }
    }

    else
    {
LABEL_13:
      while (!*&vceq_s8(v19, 0x8080808080808080))
      {
        v9 += 8;
        v18 = (v9 + v18) & v17;
        v19 = *(_X10 + v18);
        v20 = vceq_s8(v19, result);
        if (v20)
        {
          goto LABEL_11;
        }
      }
    }
  }

  return result;
}

void operations_research::sat::ImpliedBoundsProcessor::DecomposeWithImpliedUpperBound(void *a1, __int128 *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = a2[1];
  v24 = *a2;
  v25 = v13;
  *v26 = a2[2];
  *&v26[16] = *(a2 + 6);
  v8 = v13;
  v9 = -(v13 * *(&v24 + 1));
  v10 = -__PAIR128__(v5, v13 * *(&v24 + 1)) >> 64;
  *&v26[8] = vnegq_s64(*&v26[8]);
  v11 = v13 < 0x8000000000000003;
  v12 = -INFINITY;
  *&v13 = v13;
  if (!v11)
  {
    v12 = *&v13;
  }

  if (v8 > 0x7FFFFFFFFFFFFFFDLL)
  {
    v12 = INFINITY;
  }

  *&v24 = v12 - *&v24;
  *(&v25 + 1) = v8 - *(&v13 + 1);
  *(&v24 + 1) = -*(&v24 + 1);
  operations_research::sat::ImpliedBoundsProcessor::DecomposeWithImpliedLowerBound(a1, &v24, a3, a4, a5, *&v24);
  if (v14)
  {
    v15 = *(a4 + 8);
    v16 = v15 >= 0 ? *(a4 + 8) : -v15;
    v17 = vabsq_s64(*(a2 + 8));
    v18 = (v17.i64[1] * v17.i64[0]) >> 64 == (v17.i64[1] * v17.i64[0]) >> 63 ? v17.i64[1] * v17.i64[0] : ((v17.i64[0] ^ v17.i64[1]) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
    if (v16 == v18)
    {
      v19 = *(a4 + 16);
      v20 = *(a4 + 24);
      v27 = __PAIR128__(v10, v9) - v19 * v15;
      *(a4 + 40) = vnegq_s64(*(a4 + 40));
      v21 = v19;
      *(a4 + 24) = v19 - v20;
      if (v19 < 0x8000000000000003)
      {
        v21 = -INFINITY;
      }

      if (v19 > 0x7FFFFFFFFFFFFFFDLL)
      {
        v21 = INFINITY;
      }

      *a4 = v21 - *a4;
      *(a4 + 8) = -v15;
      v23 = 0uLL;
      if (v10 != (v19 * v15) >> 64 || v9 != v19 * v15)
      {
        operations_research::sat::ImpliedBoundsProcessor::DecomposeWithImpliedUpperBound(&v27, &v23);
      }
    }
  }
}

void operations_research::sat::FlowCoverCutHelper::~FlowCoverCutHelper(operations_research::sat::FlowCoverCutHelper *this)
{
  if (dword_2810BD5D8 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::sat::FlowCoverCutHelper::~FlowCoverCutHelper()::$_0::operator() const(void)::site, dword_2810BD5D8) && *(this + 26))
  {
    v7 = *(this + 27);
    operator new();
  }

  v2 = *(this + 25);
  *(this + 25) = 0;
  if (v2)
  {
    MEMORY[0x23EED9440](v2, 0x1000C8000313F17);
  }

  v3 = *(this + 24);
  *(this + 24) = 0;
  if (v3)
  {
    MEMORY[0x23EED9440](v3, 0x1000C8052888210);
  }

  v4 = *(this + 18);
  if (v4)
  {
    *(this + 19) = v4;
    operator delete(v4);
  }

  v5 = *(this + 5);
  if (v5)
  {
    *(this + 6) = v5;
    operator delete(v5);
  }

  v6 = *(this + 2);
  if (v6)
  {
    *(this + 3) = v6;
    operator delete(v6);
  }
}

void operations_research::sat::SumOfAllDiffLowerBounder::Add(operations_research::sat::SumOfAllDiffLowerBounder *this, const operations_research::sat::AffineExpression *a2, int a3, const operations_research::sat::IntegerTrail *a4)
{
  v8 = *(a2 + 2);
  if (*a2 != -1)
  {
    v8 += *(*(a4 + 19) + 24 * *a2) * *(a2 + 1);
  }

  v56 = v8;
  std::vector<long long>::push_back[abi:ne200100](this + 24, &v56);
  v9 = *a2;
  if (*a2 == -1)
  {
    v13 = *(a2 + 2);
    v56 = v13;
    if (!*(this + 2))
    {
      goto LABEL_8;
    }

LABEL_9:
    v14 = *this;
    v15 = *(*this + 10);
    if (!*(*this + 10))
    {
      goto LABEL_15;
    }

LABEL_10:
    v16 = 0;
    do
    {
      v17 = (v15 + v16) >> 1;
      if (*&v14[8 * v17 + 16] < v13)
      {
        v16 = v17 + 1;
      }

      else
      {
        v15 = (v15 + v16) >> 1;
      }
    }

    while (v16 != v15);
LABEL_15:
    while (!v14[11])
    {
      v14 = *&v14[8 * v15 + 256];
      v15 = v14[10];
      if (v14[10])
      {
        goto LABEL_10;
      }
    }

    v18 = v15;
    v19 = v14;
    while (v15 == v19[10])
    {
      LODWORD(v15) = v19[8];
      v19 = *v19;
      if (v19[11])
      {
        goto LABEL_23;
      }
    }

    if (v13 >= *&v19[8 * v15 + 16])
    {
      return;
    }

LABEL_23:
    absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<long long,std::less<long long>,std::allocator<long long>,256,false>>::internal_emplace<long long>(this, v14, v18, &v56);
    return;
  }

  v10 = *(a4 + 5);
  v11 = 8 * v9;
  v12 = *(v10 + v11);
  if (!(v12 + *(v10 + (v11 ^ 8))))
  {
    v13 = *(a2 + 2) + v12 * *(a2 + 1);
    v56 = v13;
    if (!*(this + 2))
    {
LABEL_8:
      operator new();
    }

    goto LABEL_9;
  }

  if (*(a2 + 1) < 1)
  {
    v24 = operations_research::sat::IntegerTrail::InitialVariableDomain(a4, v9);
    operations_research::Domain::Negation(v24, &v54);
    v56 = 0;
    v25 = v54;
    if (v54 >= 2)
    {
      if (v54)
      {
        absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::InitFrom(&v56, &v54);
        v25 = v54;
      }

      else
      {
        v56 = v54;
        *v57 = *__p;
      }
    }

    if (v25)
    {
      operator delete(__p[0]);
    }

    if (v56 > 1)
    {
      v39 = v56 & 1;
      v40 = v57;
      if (v56)
      {
        v40 = v57[0];
      }

      v41 = *v40;
      if (v56)
      {
        v42 = v57[0];
      }

      else
      {
        v42 = v57;
      }

      if ((v56 & 0x1FFFFFFFFFFFFFFELL) != 0)
      {
        v43 = 0;
        v44 = &v42[2 * (v56 >> 1)];
        if (a3 <= 1)
        {
          v45 = 1;
        }

        else
        {
          v45 = a3;
        }

        v46 = v45 - 1;
        do
        {
          v47 = -(*(a2 + 2) + *(a2 + 1) * v41);
          v54 = v47;
          if (!*(this + 2))
          {
            operator new();
          }

          v48 = *this;
          v49 = *(*this + 10);
          if (*(*this + 10))
          {
LABEL_88:
            v50 = 0;
            do
            {
              v51 = (v49 + v50) >> 1;
              if (*&v48[8 * v51 + 16] < v47)
              {
                v50 = v51 + 1;
              }

              else
              {
                v49 = (v49 + v50) >> 1;
              }
            }

            while (v50 != v49);
          }

          while (!v48[11])
          {
            v48 = *&v48[8 * v49 + 256];
            v49 = v48[10];
            if (v48[10])
            {
              goto LABEL_88;
            }
          }

          v52 = v49;
          v53 = v48;
          while (v49 == v53[10])
          {
            LODWORD(v49) = v53[8];
            v53 = *v53;
            if (v53[11])
            {
              goto LABEL_101;
            }
          }

          if (v47 >= *&v53[8 * v49 + 16])
          {
            goto LABEL_102;
          }

LABEL_101:
          absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<long long,std::less<long long>,std::allocator<long long>,256,false>>::internal_emplace<long long>(this, v48, v52, &v54);
LABEL_102:
          if (v43 == v46)
          {
            break;
          }

          if (v41 == v42[1])
          {
            v42 += 2;
            if (v42 != v44)
            {
              v41 = *v42;
            }
          }

          else
          {
            v41 = v41 + 1;
          }

          ++v43;
        }

        while (v42 != v44);
        v39 = v56 & 1;
      }
    }

    else
    {
      v39 = v56;
    }

    if (v39)
    {
      operator delete(v57[0]);
    }
  }

  else
  {
    v20 = operations_research::sat::IntegerTrail::InitialVariableDomain(a4, v9);
    v21 = *v20;
    if (*v20 > 1)
    {
      v27 = (v20 + 1);
      v26 = v20[1];
      if (v21)
      {
        v27 = v20[1];
      }

      v22 = *v27;
      if (v21)
      {
        v23 = v20[1];
      }

      else
      {
        v23 = (v20 + 1);
      }

      if ((v21 & 0x1FFFFFFFFFFFFFFELL) == 0)
      {
        return;
      }
    }

    else
    {
      v22 = 0;
      if (v21)
      {
        v23 = v20[1];
      }

      else
      {
        v23 = (v20 + 1);
      }

      if ((v21 & 0x1FFFFFFFFFFFFFFELL) == 0)
      {
        return;
      }
    }

    v28 = 0;
    v29 = &v23[2 * (v21 >> 1)];
    if (a3 <= 1)
    {
      v30 = 1;
    }

    else
    {
      v30 = a3;
    }

    v31 = v30 - 1;
    do
    {
      v32 = *(a2 + 2) + *(a2 + 1) * v22;
      v56 = v32;
      if (!*(this + 2))
      {
        operator new();
      }

      v33 = *this;
      v34 = *(*this + 10);
      if (*(*this + 10))
      {
LABEL_50:
        v35 = 0;
        do
        {
          v36 = (v34 + v35) >> 1;
          if (*&v33[8 * v36 + 16] < v32)
          {
            v35 = v36 + 1;
          }

          else
          {
            v34 = (v34 + v35) >> 1;
          }
        }

        while (v35 != v34);
      }

      while (!v33[11])
      {
        v33 = *&v33[8 * v34 + 256];
        v34 = v33[10];
        if (v33[10])
        {
          goto LABEL_50;
        }
      }

      v37 = v34;
      v38 = v33;
      while (v34 == v38[10])
      {
        LODWORD(v34) = v38[8];
        v38 = *v38;
        if (v38[11])
        {
          goto LABEL_63;
        }
      }

      if (v32 >= *&v38[8 * v34 + 16])
      {
        goto LABEL_64;
      }

LABEL_63:
      absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<long long,std::less<long long>,std::allocator<long long>,256,false>>::internal_emplace<long long>(this, v33, v37, &v56);
LABEL_64:
      if (v28 == v31)
      {
        break;
      }

      if (v22 == v23[1])
      {
        v23 += 2;
        if (v23 != v29)
        {
          v22 = *v23;
        }
      }

      else
      {
        ++v22;
      }

      ++v28;
    }

    while (v23 != v29);
  }
}

void sub_23CB40D5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *__p)
{
  if (a12)
  {
    operator delete(__p);
  }

  operations_research::sat::LinearIncrementalEvaluator::ReduceBounds(&a9);
  _Unwind_Resume(a1);
}

void sub_23CB40D80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *__p)
{
  if (a12)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::SumOfAllDiffLowerBounder::GetBestLowerBound(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = **a1;
  v6 = v4[10];
  if (v5 == v4 && v6 == 0)
  {
    v9 = 0;
    v11 = *(a1 + 24);
    v12 = *(a1 + 32);
    v13 = (v12 - v11) >> 3;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = *(a1 + 24);
    v12 = *(a1 + 32);
    v13 = (v12 - v11) >> 3;
    do
    {
      v9 += *&v5[8 * v10 + 16];
      if (v13 <= ++v8)
      {
        break;
      }

      if (v5[11])
      {
        if (++v10 == v5[10])
        {
          v14 = v5;
          while (1)
          {
            v15 = *v14;
            if (*(*v14 + 11))
            {
              break;
            }

            v16 = v14[8];
            v14 = *v14;
            if (v16 != v15[10])
            {
              v5 = v15;
              v10 = v16;
              break;
            }
          }
        }
      }

      else
      {
        v17 = &v5[8 * (v10 + 1) + 256];
        do
        {
          v5 = *v17;
          v18 = *(*v17 + 11);
          v17 = *v17 + 256;
        }

        while (!v18);
        v10 = 0;
      }
    }

    while (v5 != v4 || v10 != v6);
  }

  v19 = 126 - 2 * __clz(v13);
  if (v12 == v11)
  {
    v20 = 0;
  }

  else
  {
    v20 = v19;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> *,false>(v11, v12, &v31, v20, 1);
  v21 = *(a1 + 24);
  v22 = *(a1 + 32);
  if (v21 == v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = 0;
    v24 = 0x8000000000000002;
    do
    {
      v26 = *v21++;
      v25 = v26;
      if ((v24 + 1) > v26)
      {
        ++v24;
      }

      else
      {
        v24 = v25;
      }

      v23 += v24;
    }

    while (v21 != v22);
  }

  v27 = "e";
  if (v23 > v9)
  {
    v27 = "a";
  }

  if (v9 <= v23)
  {
    v28 = v27;
  }

  else
  {
    v28 = "d";
  }

  if (v9 <= v23)
  {
    v29 = v23;
  }

  else
  {
    v29 = v9;
  }

  MEMORY[0x23EED9020](a2, v28);
  return v29;
}

void operations_research::sat::CreateAllDifferentCutGenerator(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 56) = 0;
  v6 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a2);
  v7 = *a1;
  v8 = *(a1 + 8);
  while (v7 != v8)
  {
    if (*v7 != -1)
    {
      if (*(*(v6 + 40) + 8 * *v7) + *(*(v6 + 40) + ((8 * *v7) ^ 8)))
      {
        std::vector<int>::push_back[abi:ne200100](a3 + 8, v7);
      }
    }

    v7 += 6;
  }

  v9 = *(a3 + 8);
  v10 = *(a3 + 16);
  v11 = 126 - 2 * __clz((v10 - v9) >> 2);
  if (v10 == v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,false>(v9, v10, v21, v12, 1);
  v14 = *(a3 + 8);
  v13 = *(a3 + 16);
  if (v14 != v13)
  {
    v15 = v14 + 1;
    do
    {
      if (v15 == v13)
      {
        goto LABEL_21;
      }

      v16 = *(v15 - 1);
      v17 = *v15++;
    }

    while (v16 != v17);
    v18 = v15 - 2;
    while (v15 != v13)
    {
      v19 = v16;
      v16 = *v15;
      if (v19 != *v15)
      {
        v18[1] = v16;
        ++v18;
      }

      ++v15;
    }

    if (v18 + 1 != v13)
    {
      *(a3 + 16) = v18 + 1;
    }
  }

LABEL_21:
  operations_research::sat::Model::GetOrCreate<operations_research::sat::Trail>(a2);
  v20 = *(a1 + 8);
  if (v20 != *a1)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v20 - *a1) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  operator new();
}

void sub_23CB41370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  operations_research::sat::CutGenerator::~CutGenerator(v4);
  _Unwind_Resume(a1);
}

void sub_23CB4138C(_Unwind_Exception *a1)
{
  operator delete(v2);
  operations_research::sat::CutGenerator::~CutGenerator(v1);
  _Unwind_Resume(a1);
}

void sub_23CB413A8(_Unwind_Exception *a1)
{
  if (v3)
  {
    operator delete(v3);
    if (!v2)
    {
LABEL_3:
      operations_research::sat::CutGenerator::~CutGenerator(v1);
      _Unwind_Resume(a1);
    }
  }

  else if (!v2)
  {
    goto LABEL_3;
  }

  operator delete(v2);
  operations_research::sat::CutGenerator::~CutGenerator(v1);
  _Unwind_Resume(a1);
}

void operations_research::sat::CreateLinMaxCutGenerator(int a1@<W0>, uint64_t *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v35 = *MEMORY[0x277D85DE8];
  *a5 = 0;
  *(a5 + 8) = 0;
  v10 = a5 + 8;
  *(a5 + 16) = 0;
  *(a5 + 24) = 0;
  *(a5 + 56) = 0;
  __dst[0] = 0;
  __dst[1] = 0;
  v32 = 0;
  __src = a1;
  std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal const*,operations_research::sat::Literal const*>((a5 + 8), &__src, &__src_4, 1uLL);
  v11 = -1227133513 * ((a2[1] - *a2) >> 3);
  if (v11 < 1)
  {
    v15 = 0uLL;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = v11 & 0x7FFFFFFF;
    do
    {
      std::vector<int>::push_back[abi:ne200100](v10, (*a3 + v12));
      std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(__dst, __dst[1], *(*a2 + v13), *(*a2 + v13 + 8), (*(*a2 + v13 + 8) - *(*a2 + v13)) >> 2);
      v13 += 56;
      v12 += 4;
      --v14;
    }

    while (v14);
    v15 = *__dst;
  }

  v16 = 126 - 2 * __clz((*(&v15 + 1) - v15) >> 2);
  if (*(&v15 + 1) == v15)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,false>(v15, *(&v15 + 1), &__src, v17, 1);
  v18 = __dst[0];
  v19 = __dst[1];
  if (__dst[0] != __dst[1])
  {
    v20 = (__dst[0] + 4);
    do
    {
      if (v20 == __dst[1])
      {
        goto LABEL_20;
      }

      v21 = *(v20 - 1);
      v22 = *v20++;
    }

    while (v21 != v22);
    v23 = v20 - 2;
    while (v20 != v19)
    {
      v24 = v21;
      v21 = *v20;
      if (v24 != *v20)
      {
        v23[1] = v21;
        ++v23;
      }

      ++v20;
    }

    if (v23 + 1 != v19)
    {
      v19 = v23 + 1;
      __dst[1] = v23 + 1;
    }
  }

LABEL_20:
  std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>>(v10, *(a5 + 16), v18, v19, (v19 - v18) >> 2);
  v25 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a4);
  memset(v27, 0, 24);
  if (__dst[1] != __dst[0])
  {
    if (((__dst[1] - __dst[0]) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  memset(&v27[3], 0, 24);
  v26 = a3[1] - *a3;
  if (v26)
  {
    if ((v26 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v28 = a1;
  v29 = v11;
  memset(v30, 0, 24);
  std::vector<operations_research::sat::LinearExpression>::__init_with_size[abi:ne200100]<operations_research::sat::LinearExpression*,operations_research::sat::LinearExpression*>(v30, *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3));
  v30[3] = v25;
  v30[4] = a4;
  operations_research::sat::CreateLinMaxCutGenerator(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,std::vector<operations_research::sat::LinearExpression> const&,std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,operations_research::sat::Model *)::$_0::$_0(&__src, v27);
  operator new();
}

void sub_23CB41934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  operator delete(v26);
  operations_research::sat::IsEqualToMinOf(operations_research::sat::LinearExpression const&,std::vector<operations_research::sat::LinearExpression> const&)::{lambda(operations_research::sat::Model *)#1}::~Model(&a25);
  operations_research::sat::IsEqualToMinOf(operations_research::sat::LinearExpression const&,std::vector<operations_research::sat::LinearExpression> const&)::{lambda(operations_research::sat::Model *)#1}::~Model(&a9);
  if (!__p)
  {
    operations_research::sat::CutGenerator::~CutGenerator(v25);
    _Unwind_Resume(a1);
  }

  a22 = __p;
  operator delete(__p);
  operations_research::sat::CutGenerator::~CutGenerator(v25);
  _Unwind_Resume(a1);
}

BOOL operations_research::sat::BuildMaxAffineUpConstraint(uint64_t *a1, int a2, char **a3, void *a4, operations_research::sat::LinearConstraintBuilder *a5)
{
  v9 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a4);
  v10 = *(v9 + 152);
  v11 = *(v10 + 24 * a2);
  v12 = -*(v10 + 24 * (a2 ^ 1));
  v14 = *a3;
  v13 = a3[1];
  v15 = 0x8000000000000002;
  v16 = 0x8000000000000002;
  if (*a3 != v13)
  {
    v17 = v13 - v14 - 16;
    v18 = (v17 >> 4) + 1;
    v15 = 0x8000000000000002;
    v19 = *a3;
    if (v17 <= 0xF)
    {
      goto LABEL_15;
    }

    v19 = &v14[16 * (v18 & 0x1FFFFFFFFFFFFFFELL)];
    v20 = (v14 + 16);
    v21 = v18 & 0x1FFFFFFFFFFFFFFELL;
    v22 = 0x8000000000000002;
    v23 = 0x8000000000000002;
    do
    {
      v24 = *(v20 - 2);
      v25 = *(v20 - 1);
      v26 = *v20;
      v27 = v20[1];
      v20 += 4;
      v28 = v25 + v24 * v11;
      if (v22 <= v28)
      {
        v22 = v28;
      }

      if (v23 <= (v27 + v26 * v11))
      {
        v23 = v27 + v26 * v11;
      }

      v21 -= 2;
    }

    while (v21);
    v15 = v22 <= v23 ? v23 : v22;
    if (v18 != (v18 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_15:
      do
      {
        v30 = *v19;
        v29 = *(v19 + 1);
        v19 += 16;
        v31 = v29 + v30 * v11;
        if (v15 <= v31)
        {
          v15 = v31;
        }
      }

      while (v19 != v13);
    }

    v16 = 0x8000000000000002;
    if (v17 < 0x10)
    {
      goto LABEL_28;
    }

    v32 = &v14[16 * (v18 & 0x1FFFFFFFFFFFFFFELL)];
    v33 = (v14 + 16);
    v34 = v18 & 0x1FFFFFFFFFFFFFFELL;
    v35 = 0x8000000000000002;
    do
    {
      v36 = *(v33 - 2);
      v37 = *(v33 - 1);
      v38 = *v33;
      v39 = v33[1];
      v33 += 4;
      v40 = v37 + v36 * v12;
      if (v16 <= v40)
      {
        v16 = v40;
      }

      if (v35 <= (v39 + v38 * v12))
      {
        v35 = v39 + v38 * v12;
      }

      v34 -= 2;
    }

    while (v34);
    if (v16 <= v35)
    {
      v16 = v35;
    }

    v14 = v32;
    if (v18 != (v18 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_28:
      do
      {
        v41 = *v14;
        v42 = *(v14 + 1);
        v14 += 16;
        v43 = v42 + v41 * v12;
        if (v16 <= v43)
        {
          v16 = v43;
        }
      }

      while (v14 != v13);
    }
  }

  v44 = v12 - v11;
  v45 = (v12 - v11) * v15;
  if (((v12 - v11) * v15) >> 64 != v45 >> 63)
  {
    v45 = ((v15 ^ (v12 - v11)) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
  }

  if ((v45 - 0x7FFFFFFFFFFFFFFFLL) < 2)
  {
    return 0;
  }

  v46 = ((v16 ^ v44) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
  if ((v44 * v16) >> 64 == (v44 * v16) >> 63)
  {
    v46 = v44 * v16;
  }

  if ((v46 - 0x7FFFFFFFFFFFFFFFLL) < 2)
  {
    return 0;
  }

  v47 = v16 - v15;
  v48 = (v16 - v15) * v11;
  if (((v16 - v15) * v11) >> 64 != v48 >> 63)
  {
    v48 = (((v16 - v15) ^ v11) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
  }

  if ((v48 - 0x7FFFFFFFFFFFFFFFLL) < 2)
  {
    return 0;
  }

  v49 = (v47 * v12) >> 64 == (v47 * v12) >> 63 ? v47 * v12 : ((v47 ^ v12) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
  if (v49 - 0x7FFFFFFFFFFFFFFFLL < 2)
  {
    return 0;
  }

  v50 = a1[6];
  if (v50 < 0)
  {
    v50 = -v50;
  }

  v51 = a1[1] - *a1;
  if (v51)
  {
    v52 = 0;
    v53 = v51 >> 2;
    v54 = 1;
    do
    {
      v55 = *(*a1 + 4 * v52);
      v56 = *(v10 + 24 * v55);
      v57 = *(v10 + 24 * (v55 ^ 1));
      if (v56 < 0)
      {
        v56 = -v56;
      }

      if (v57 < 0)
      {
        v57 = -v57;
      }

      if (v56 > v57)
      {
        v57 = v56;
      }

      v58 = *(a1[3] + 8 * v52);
      if (v58 < 0)
      {
        v58 = -v58;
      }

      if ((v57 * v58) >> 64 == (v57 * v58) >> 63)
      {
        v59 = v57 * v58;
      }

      else
      {
        v59 = ((v58 ^ v57) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
      }

      v60 = __OFADD__(v59, v50);
      v50 += v59;
      if (v60)
      {
        v50 = (v59 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
      }

      v52 = v54++;
    }

    while (v53 > v52);
  }

  if ((v50 - 0x7FFFFFFFFFFFFFFFLL) < 2)
  {
    return 0;
  }

  v61 = (v50 * v44) >> 64 == (v50 * v44) >> 63 ? v50 * v44 : ((v50 ^ v44) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
  if (v61 - 0x7FFFFFFFFFFFFFFFLL < 2)
  {
    return 0;
  }

  *(a5 + 1) = 0x8000000000000002;
  *(a5 + 2) = v15 * v44 - v47 * v11;
  v62 = v9;
  operations_research::sat::LinearConstraintBuilder::AddLinearExpression(a5, a1, v44);
  operations_research::sat::LinearConstraintBuilder::AddTerm(a5, a2, -v47);
  operations_research::sat::LinearConstraintBuilder::Build(a5, v68);
  v64 = operations_research::sat::ValidateLinearConstraintForOverflow(v68, v62, v63);
  operations_research::sat::LinearConstraint::~LinearConstraint(v68);
  if (v64)
  {
    return 1;
  }

  if (dword_27E25CCF8 < 2)
  {
    return 0;
  }

  result = absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&operations_research::sat::BuildMaxAffineUpConstraint(operations_research::sat::LinearExpression const&,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,std::vector<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>> const&,operations_research::sat::Model *,operations_research::sat::LinearConstraintBuilder *)::$_0::operator() const(void)::site, dword_27E25CCF8);
  if (result)
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v67, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cuts.cc", 2911);
    v66 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v67, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v66, "Linear constraint can cause overflow: ", 0x26uLL);
    operations_research::sat::LinearConstraintBuilder::Build(a5, v68);
    absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::sat::LinearConstraint,0>(v66, v68);
    operations_research::sat::LinearConstraint::~LinearConstraint(v68);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v67);
    return 0;
  }

  return result;
}

void sub_23CB41E50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  operations_research::sat::LinearConstraint::~LinearConstraint(va1);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CB41E6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CB41E80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CB41E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  operations_research::sat::LinearConstraint::~LinearConstraint(va);
  _Unwind_Resume(a1);
}

uint64_t absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::sat::LinearConstraint,0>(uint64_t a1, operations_research::sat::LinearConstraint *a2)
{
  absl::lts_20240722::log_internal::LogMessage::OstreamView::OstreamView(v9, *(a1 + 8));
  v4 = absl::lts_20240722::log_internal::LogMessage::OstreamView::stream(v9);
  operations_research::sat::LinearConstraint::DebugString(a2, v5, &v10);
  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v10;
  }

  else
  {
    v6 = v10.__r_.__value_.__r.__words[0];
  }

  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v10.__r_.__value_.__l.__size_;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, size);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(v9);
  return a1;
}

void sub_23CB41F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 - 33) < 0)
  {
    operator delete(*(v9 - 56));
    absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(&a9);
    _Unwind_Resume(a1);
  }

  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(&a9);
  _Unwind_Resume(a1);
}

void operations_research::sat::CreateMaxAffineCutGenerator(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v43 = *MEMORY[0x277D85DE8];
  v32 = a2;
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 0;
  *(a6 + 56) = 0;
  if (a6 + 8 != a1)
  {
    std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal*,operations_research::sat::Literal*>((a6 + 8), *a1, *(a1 + 8), (*(a1 + 8) - *a1) >> 2);
  }

  std::vector<int>::push_back[abi:ne200100](a6 + 8, &v32);
  v11 = *(a6 + 8);
  v12 = *(a6 + 16);
  v13 = 126 - 2 * __clz((v12 - v11) >> 2);
  if (v12 == v11)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,false>(v11, v12, v33, v14, 1);
  v16 = *(a6 + 8);
  v15 = *(a6 + 16);
  if (v16 != v15)
  {
    v17 = v16 + 1;
    do
    {
      if (v17 == v15)
      {
        goto LABEL_17;
      }

      v18 = *(v17 - 1);
      v19 = *v17++;
    }

    while (v18 != v19);
    v20 = v17 - 2;
    while (v17 != v15)
    {
      v21 = v18;
      v18 = *v17;
      if (v21 != *v17)
      {
        v20[1] = v18;
        ++v20;
      }

      ++v17;
    }

    if (v20 + 1 != v15)
    {
      *(a6 + 16) = v20 + 1;
    }
  }

LABEL_17:
  v22 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a5);
  v23 = *(a1 + 8);
  if (v23 != *a1)
  {
    if (((v23 - *a1) & 0x8000000000000000) == 0)
    {
      v24 = v23 - *a1;
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v26 = *(a1 + 24);
  v25 = *(a1 + 32);
  if (v25 != v26)
  {
    if (((v25 - v26) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v28 = *(a1 + 48);
  v29 = v32;
  v27 = a3[1] - *a3;
  if (v27)
  {
    if ((v27 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v30, *a4, *(a4 + 8));
  }

  else
  {
    v30 = *a4;
  }

  *&v31 = v22;
  *(&v31 + 1) = a5;
  *v33 = 0uLL;
  v34 = 0;
  v36 = 0;
  v37 = v28;
  v35 = 0uLL;
  v38 = v29;
  __p[0] = 0;
  __p[1] = 0;
  v40 = 0;
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v41, v30.__r_.__value_.__l.__data_, v30.__r_.__value_.__l.__size_);
  }

  else
  {
    v41 = v30;
  }

  v42 = v31;
  operator new();
}

void sub_23CB424AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  v40 = v37[9];
  if (v40)
  {
    v37[10] = v40;
    operator delete(v40);
  }

  operations_research::sat::LinearExpr::~LinearExpr(v38);
  operator delete(v37);
  operations_research::sat::CreateMaxAffineCutGenerator(operations_research::sat::LinearExpression,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,std::vector<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,std::string,operations_research::sat::Model *)::$_0::~$_0(&a27);
  operations_research::sat::CreateMaxAffineCutGenerator(operations_research::sat::LinearExpression,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,std::vector<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,std::string,operations_research::sat::Model *)::$_0::~$_0(&a9);
  operations_research::sat::CutGenerator::~CutGenerator(v36);
  _Unwind_Resume(a1);
}

void sub_23CB4255C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
    operations_research::sat::CutGenerator::~CutGenerator(v13);
    _Unwind_Resume(a1);
  }

  operations_research::sat::CutGenerator::~CutGenerator(v13);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::CreateMaxAffineCutGenerator(operations_research::sat::LinearExpression,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,std::vector<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,std::string,operations_research::sat::Model *)::$_0::~$_0(uint64_t a1)
{
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
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

void operations_research::sat::CreateCliqueCutGenerator(signed int **a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v31 = *MEMORY[0x277D85DE8];
  v22 = xmmword_23CE306D0;
  v21 = xmmword_23CE306D0;
  v5 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a2);
  v12 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerEncoder>(a2);
  v7 = *a1;
  v6 = a1[1];
  if (*a1 != v6)
  {
    do
    {
      v8 = *(v5 + 40);
      v9 = 8 * *v7;
      if (!*(v8 + v9) && *(v8 + (v9 ^ 8)) == -1)
      {
        LODWORD(v13[0]) = operations_research::sat::IntegerEncoder::GetAssociatedLiteral(v12, *v7, 1);
        if (LODWORD(v13[0]) != -1)
        {
          operator new();
        }
      }

      ++v7;
    }

    while (v7 != v6);
  }

  *a3 = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 8) = 0;
  *(a3 + 56) = 0;
  std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal*,operations_research::sat::Literal*>((a3 + 8), 0, 0, 0);
  v10 = operations_research::sat::Model::GetOrCreate<operations_research::sat::BinaryImplicationGraph>(a2);
  v13[0] = 0;
  v13[1] = 0;
  v14 = 0;
  v15[0] = 0;
  v15[1] = 0;
  v16 = 0;
  v17 = v10;
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_> const,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>>::raw_hash_set(&v18, &v22);
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_> const,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>>::raw_hash_set(&v19, &v21);
  v24 = v14;
  v26 = v16;
  v27 = v17;
  *v23 = *v13;
  v13[0] = 0;
  v13[1] = 0;
  v20 = a2;
  v14 = 0;
  __p = *v15;
  v15[1] = 0;
  v16 = 0;
  v15[0] = 0;
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::raw_hash_set(&v28, &v18);
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::raw_hash_set(&v29, &v19);
  v30 = v20;
  operator new();
}

void sub_23CB42D14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, operations_research::sat::CutGenerator *a12, uint64_t a13, uint64_t a14, void *__p, void *a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, unint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, unint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  if (a33 >= 2)
  {
    operator delete((a35 - (a34 & 1) - 8));
    if (a37 < 2)
    {
LABEL_3:
      if (!__p)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (a37 < 2)
  {
    goto LABEL_3;
  }

  operator delete((a39 - (a38 & 1) - 8));
  if (!__p)
  {
LABEL_4:
    if (!a16)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(__p);
  if (!a16)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(a16);
  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::CreateCliqueCutGenerator(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,operations_research::sat::Model *)::$_0::~$_0(uint64_t a1)
{
  if (*(a1 + 88) >= 2uLL)
  {
    operator delete((*(a1 + 104) - (*(a1 + 96) & 1) - 8));
    if (*(a1 + 56) < 2uLL)
    {
LABEL_3:
      v2 = *(a1 + 24);
      if (!v2)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (*(a1 + 56) < 2uLL)
  {
    goto LABEL_3;
  }

  operator delete((*(a1 + 72) - (*(a1 + 64) & 1) - 8));
  v2 = *(a1 + 24);
  if (v2)
  {
LABEL_4:
    *(a1 + 32) = v2;
    operator delete(v2);
  }

LABEL_5:
  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

char *std::vector<operations_research::sat::CutTerm>::__assign_with_size[abi:ne200100]<operations_research::sat::CutTerm*,operations_research::sat::CutTerm*>(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((v6 - result) >> 3) < a4)
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

    if (a4 <= 0x492492492492492)
    {
      v9 = 0x6DB6DB6DB6DB6DB7 * (v6 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x249249249249249)
      {
        v11 = 0x492492492492492;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= 0x492492492492492)
      {
        operator new();
      }
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (0x6DB6DB6DB6DB6DB7 * ((v12 - result) >> 3) >= a4)
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

void absl::lts_20240722::log_internal::MakeCheckOpString<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const&,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const&>(void *a1, void *a2, char *a3)
{
  absl::lts_20240722::log_internal::CheckOpMessageBuilder::CheckOpMessageBuilder(&v6, a3);
  MEMORY[0x23EED91B0](&v6, *a1);
  v5 = absl::lts_20240722::log_internal::CheckOpMessageBuilder::ForVar2(&v6);
  MEMORY[0x23EED91B0](v5, *a2);
  absl::lts_20240722::log_internal::CheckOpMessageBuilder::NewString(&v6);
}

void sub_23CB431EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::ExtendNegativeFunction(std::function<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> ()(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::{lambda(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)#1}::~function(uint64_t a1)
{
  v2 = a1 + 16;
  v3 = *(a1 + 40);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    return a1;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    return a1;
  }
}

void *std::__function::__func<operations_research::sat::ExtendNegativeFunction(std::function<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> ()(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::{lambda(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)#1},std::allocator<operations_research::sat::ExtendNegativeFunction(std::function<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> ()(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::{lambda(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)#1}>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> ()(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)>::~__func(void *a1)
{
  *a1 = &unk_284F40290;
  v2 = a1 + 3;
  v3 = a1[6];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    return a1;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    return a1;
  }
}

void std::__function::__func<operations_research::sat::ExtendNegativeFunction(std::function<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> ()(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::{lambda(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)#1},std::allocator<operations_research::sat::ExtendNegativeFunction(std::function<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> ()(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::{lambda(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)#1}>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> ()(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)>::~__func(void *a1)
{
  *a1 = &unk_284F40290;
  v1 = a1 + 3;
  v2 = a1[6];
  if (v2 == v1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  JUMPOUT(0x23EED9460);
}

uint64_t std::__function::__func<operations_research::sat::ExtendNegativeFunction(std::function<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> ()(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::{lambda(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)#1},std::allocator<operations_research::sat::ExtendNegativeFunction(std::function<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> ()(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::{lambda(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)#1}>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> ()(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_284F40290;
  *(a2 + 8) = *(result + 8);
  v3 = *(result + 48);
  if (v3)
  {
    if (v3 == result + 24)
    {
      *(a2 + 48) = a2 + 24;
      v4 = *(**(result + 48) + 24);

      return v4();
    }

    else
    {
      result = (*(*v3 + 16))(*(result + 48));
      *(a2 + 48) = result;
    }
  }

  else
  {
    *(a2 + 48) = 0;
  }

  return result;
}

uint64_t std::__function::__func<operations_research::sat::ExtendNegativeFunction(std::function<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> ()(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::{lambda(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)#1},std::allocator<operations_research::sat::ExtendNegativeFunction(std::function<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> ()(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::{lambda(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)#1}>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> ()(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)>::destroy(uint64_t a1)
{
  v1 = a1 + 24;
  result = *(a1 + 48);
  if (result == v1)
  {
    return (*(*result + 32))();
  }

  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void std::__function::__func<operations_research::sat::ExtendNegativeFunction(std::function<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> ()(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::{lambda(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)#1},std::allocator<operations_research::sat::ExtendNegativeFunction(std::function<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> ()(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::{lambda(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)#1}>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> ()(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)>::destroy_deallocate(char *__p)
{
  v2 = __p + 24;
  v3 = *(__p + 6);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = __p;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = __p;
  }

  operator delete(v4);
}

uint64_t std::__function::__func<operations_research::sat::ExtendNegativeFunction(std::function<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> ()(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::{lambda(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)#1},std::allocator<operations_research::sat::ExtendNegativeFunction(std::function<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> ()(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::{lambda(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)#1}>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> ()(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)>::operator()(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v5 = a1[1];
  v4 = a1[2];
  v6 = *a2 % v4;
  if (v6 < 0)
  {
    v4 = 0;
  }

  v9 = v6 - v4;
  v7 = a1[6];
  if (!v7)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v7 + 48))(v7, &v9) + v5 + (v3 / a1[2] - (v3 / a1[2] * a1[2] > v3)) * a1[1];
}

uint64_t std::__function::__func<operations_research::sat::ExtendNegativeFunction(std::function<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> ()(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::{lambda(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)#1},std::allocator<operations_research::sat::ExtendNegativeFunction(std::function<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> ()(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::{lambda(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)#1}>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> ()(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000023CE46A88)
  {
    return a1 + 8;
  }

  if (((v2 & 0x800000023CE46A88 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000023CE46A88))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023CE46A88 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void absl::lts_20240722::log_internal::MakeCheckOpString<absl::lts_20240722::int128 const&,absl::lts_20240722::int128 const&>(unint64_t *a1, unint64_t *a2, char *a3)
{
  absl::lts_20240722::log_internal::CheckOpMessageBuilder::CheckOpMessageBuilder(&v6, a3);
  absl::lts_20240722::operator<<(&v6, *a1, a1[1]);
  v5 = absl::lts_20240722::log_internal::CheckOpMessageBuilder::ForVar2(&v6);
  absl::lts_20240722::operator<<(v5, *a2, a2[1]);
  absl::lts_20240722::log_internal::CheckOpMessageBuilder::NewString(&v6);
}

void sub_23CB4396C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t *absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_> const,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>>::raw_hash_set(uint64_t *a1, unint64_t *a2)
{
  v4 = a2[1] >> 1;
  if (v4 == 7)
  {
    v5 = 8;
  }

  else
  {
    v5 = (v4 - 1) / 7 + v4;
  }

  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_> const,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>>::raw_hash_set(a1, v5);
  v6 = a2[1];
  if (v6 >= 2)
  {
    if (v6 > 3)
    {
      v10 = v6 >> 1;
      v11 = *a1;
      if (*a1 > 8)
      {
        v24 = *a2;
        v27 = a2 + 2;
        v25 = a2[2];
        v26 = v27[1];
        if (v24 >= 7)
        {
          v47 = v6 >> 1;
          do
          {
            v48 = *v25 & 0x8080808080808080;
            if (v48 != 0x8080808080808080)
            {
              v49 = v48 ^ 0x8080808080808080;
              do
              {
                v50 = __clz(__rbit64(v49)) >> 3;
                v51 = (v26 + 8 * v50);
                first_non = absl::lts_20240722::container_internal::find_first_non_full<void>(a1, (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *v51) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *v51)));
                v53 = *(v25 + v50);
                v54 = a1[2];
                *(v54 + first_non) = v53;
                *(v54 + (*a1 & (first_non - 7)) + (*a1 & 7)) = v53;
                v55 = (a1[3] + 8 * first_non);
                *v55 = *v51;
                v55[1] = v51[1];
                --v47;
                v49 &= v49 - 1;
              }

              while (v49);
            }

            ++v25;
            v26 += 64;
          }

          while (v47);
        }

        else
        {
          v28 = *(v25 + v24) & 0x8080808080808080;
          if (v28 != 0x8080808080808080)
          {
            v29 = v25 - 1;
            v30 = v26 - 8;
            v31 = v28 ^ 0x8080808080808080;
            do
            {
              v32 = __clz(__rbit64(v31)) >> 3;
              v33 = (v30 + 8 * v32);
              v34 = absl::lts_20240722::container_internal::find_first_non_full<void>(a1, (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *v33) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *v33)));
              v35 = v29[v32];
              v36 = a1[2];
              *(v36 + v34) = v35;
              *(v36 + (*a1 & (v34 - 7)) + (*a1 & 7)) = v35;
              v37 = (a1[3] + 8 * v34);
              *v37 = *v33;
              v37[1] = v33[1];
              v31 &= v31 - 1;
            }

            while (v31);
          }
        }
      }

      else
      {
        v12 = (a1[2] >> 12) | 1;
        v14 = a2[2];
        v13 = a2[3];
        if (*a2 >= 7)
        {
          v40 = *a1;
          do
          {
            v41 = *v14 & 0x8080808080808080;
            if (v41 != 0x8080808080808080)
            {
              v42 = v41 ^ 0x8080808080808080;
              do
              {
                v43 = __clz(__rbit64(v42)) >> 3;
                v44 = (v13 + 8 * v43);
                LOBYTE(v43) = *(v14 + v43);
                v40 = (v40 + v12) & v11;
                v45 = a1[2];
                *(v45 + v40) = v43;
                *(v45 + (v11 & (v40 - 7)) + (v11 & 7)) = v43;
                v46 = (a1[3] + 8 * v40);
                *v46 = *v44;
                v46[1] = v44[1];
                --v10;
                v42 &= v42 - 1;
              }

              while (v42);
            }

            ++v14;
            v13 += 64;
          }

          while (v10);
        }

        else
        {
          v15 = *(v14 + *a2) & 0x8080808080808080;
          if (v15 != 0x8080808080808080)
          {
            v16 = v14 - 1;
            v17 = v13 - 8;
            v18 = v15 ^ 0x8080808080808080;
            v19 = *a1;
            do
            {
              v20 = __clz(__rbit64(v18)) >> 3;
              v21 = (v17 + 8 * v20);
              v19 = (v19 + v12) & v11;
              LOBYTE(v20) = v16[v20];
              v22 = a1[2];
              *(v22 + v19) = v20;
              *(v22 + (v11 & (v19 - 7)) + (v11 & 7)) = v20;
              v23 = (a1[3] + 8 * v19);
              *v23 = *v21;
              v23[1] = v21[1];
              v18 &= v18 - 1;
            }

            while (v18);
          }
        }
      }

      v38 = a1[2];
      a1[1] = v6 & 0xFFFFFFFFFFFFFFFELL | a1[1] & 1;
      *(v38 - 8) -= v6 >> 1;
    }

    else
    {
      a1[1] = 2;
      v7 = a2 + 2;
      if (*a2 >= 2)
      {
        v8 = a2[2];
        v7 = a2[3];
        if (*v8 <= -2)
        {
          do
          {
            v9 = __clz(__rbit64((*v8 | ~(*v8 >> 7)) & 0x101010101010101)) >> 3;
            v8 = (v8 + v9);
            v7 += 2 * v9;
          }

          while (*v8 < -1);
        }
      }

      *(a1 + 4) = *v7;
      *(a1 + 5) = v7[1];
    }
  }

  return a1;
}

void sub_23CB43D80(_Unwind_Exception *exception_object)
{
  if (*v1 >= 2uLL)
  {
    operator delete((v1[2] - (v1[1] & 1) - 8));
  }

  _Unwind_Resume(exception_object);
}

double absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_> const,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>>::raw_hash_set(_OWORD *a1, unint64_t a2)
{
  *&result = 1;
  *a1 = xmmword_23CE306D0;
  if (a2 >= 2)
  {
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_> const,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>>::resize_impl(a1, 0xFFFFFFFFFFFFFFFFLL >> __clz(a2));
  }

  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_> const,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>>::resize_impl(uint64_t a1, uint64_t a2)
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

std::string *absl::lts_20240722::strings_internal::ExtractStringification<absl::lts_20240722::int128>(std::string *a1, void *a2)
{
  v3 = a2[1];
  v10[0] = *a2;
  v10[1] = v3;
  absl::lts_20240722::int128::ToString(v10, &__p);
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

  absl::lts_20240722::strings_internal::StringifySink::Append(a1, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v6 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if (v6 >= 0)
  {
    result = a1;
  }

  else
  {
    result = a1->__r_.__value_.__r.__words[0];
  }

  if (v6 >= 0)
  {
    v8 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v8 = a1->__r_.__value_.__l.__size_;
  }

  return result;
}

void sub_23CB44144(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::CutData::Canonicalize(void)::$_0 &,operations_research::sat::CutTerm *,false>(uint64_t a1, unint64_t a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v8 = (a2 - 56);
  v9 = (a2 - 112);
  v10 = (a2 - 168);
  v11 = a1;
  while (1)
  {
    a1 = v11;
    v12 = a2 - v11;
    v13 = 0x6DB6DB6DB6DB6DB7 * ((a2 - v11) >> 3);
    if (v13 > 2)
    {
      break;
    }

    if (v13 < 2)
    {
      return result;
    }

    if (v13 == 2)
    {
      v134 = *(a2 - 56);
      v133 = a2 - 56;
      result.n128_f64[0] = v134;
      if (v134 <= *v11)
      {
        return result;
      }

LABEL_108:
      v356 = *(v11 + 48);
      v282 = *(v11 + 16);
      v319 = *(v11 + 32);
      v245 = *v11;
      v138 = *v133;
      v139 = *(v133 + 16);
      v140 = *(v133 + 32);
      *(v11 + 48) = *(v133 + 48);
      *(v11 + 16) = v139;
      *(v11 + 32) = v140;
      *v11 = v138;
LABEL_109:
      result = v245;
      *(v133 + 48) = v356;
      *(v133 + 16) = v282;
      *(v133 + 32) = v319;
      *v133 = v245;
      return result;
    }

LABEL_9:
    if (v12 <= 1343)
    {
      v145 = v11 + 56;
      v147 = v11 == a2 || v145 == a2;
      if (a4)
      {
        if (!v147)
        {
          v148 = 0;
          v149 = v11;
          do
          {
            v151 = v145;
            result.n128_u64[0] = *(v149 + 56);
            if (result.n128_f64[0] > *v149)
            {
              v152 = *(v149 + 80);
              v284 = v152;
              v321 = *(v149 + 96);
              v247 = *(v149 + 64);
              v153 = v148;
              do
              {
                v154 = v11 + v153;
                v155 = *(v11 + v153 + 16);
                *(v154 + 56) = *(v11 + v153);
                *(v154 + 72) = v155;
                *(v154 + 88) = *(v11 + v153 + 32);
                *(v154 + 104) = *(v11 + v153 + 48);
                if (!v153)
                {
                  v150 = v11;
                  goto LABEL_123;
                }

                v153 -= 56;
              }

              while (result.n128_f64[0] > *(v154 - 56));
              v150 = v11 + v153 + 56;
LABEL_123:
              *v150 = result.n128_u64[0];
              result = v247;
              *(v150 + 40) = v321;
              *(v150 + 24) = v284;
              *(v150 + 8) = v247;
            }

            v145 = v151 + 56;
            v148 += 56;
            v149 = v151;
          }

          while (v151 + 56 != a2);
        }
      }

      else if (!v147)
      {
        do
        {
          v197 = v145;
          result.n128_u64[0] = *(a1 + 56);
          if (result.n128_f64[0] > *a1)
          {
            v198 = *(a1 + 80);
            v290 = v198;
            v327 = *(a1 + 96);
            v253 = *(a1 + 64);
            v199 = v145;
            do
            {
              v200 = *(v199 - 40);
              *v199 = *(v199 - 56);
              *(v199 + 16) = v200;
              *(v199 + 32) = *(v199 - 24);
              *(v199 + 48) = *(v199 - 8);
              v201 = *(v199 - 112);
              v199 -= 56;
            }

            while (result.n128_f64[0] > v201);
            *v199 = result.n128_u64[0];
            result = v253;
            *(v199 + 40) = v327;
            *(v199 + 24) = v290;
            *(v199 + 8) = v253;
          }

          v145 += 56;
          a1 = v197;
        }

        while (v197 + 56 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v11 != a2)
      {
        v156 = (v13 - 2) >> 1;
        v157 = v156;
        do
        {
          if (v156 >= 0x6DB6DB6DB6DB6DB7 * ((56 * v157) >> 3))
          {
            v159 = (0xDB6DB6DB6DB6DB6ELL * ((56 * v157) >> 3)) | 1;
            v160 = v11 + 56 * v159;
            if ((0xDB6DB6DB6DB6DB6ELL * ((56 * v157) >> 3) + 2) < v13 && *v160 > *(v160 + 56))
            {
              v160 += 56;
              v159 = 0xDB6DB6DB6DB6DB6ELL * ((56 * v157) >> 3) + 2;
            }

            v161 = v11 + 56 * v157;
            v162 = *v161;
            if (*v160 <= *v161)
            {
              v163 = *(v161 + 24);
              v285 = v163;
              v322 = *(v161 + 40);
              v248 = *(v161 + 8);
              do
              {
                v164 = v161;
                v161 = v160;
                v165 = *v160;
                v166 = *(v160 + 16);
                v167 = *(v160 + 32);
                *(v164 + 48) = *(v160 + 48);
                *(v164 + 16) = v166;
                *(v164 + 32) = v167;
                *v164 = v165;
                if (v156 < v159)
                {
                  break;
                }

                v168 = 2 * v159;
                v159 = (2 * v159) | 1;
                v160 = v11 + 56 * v159;
                v169 = v168 + 2;
                if (v169 < v13 && *v160 > *(v160 + 56))
                {
                  v160 += 56;
                  v159 = v169;
                }
              }

              while (*v160 <= v162);
              *v161 = v162;
              *(v161 + 40) = v322;
              *(v161 + 24) = v285;
              *(v161 + 8) = v248;
            }
          }

          v158 = v157-- <= 0;
        }

        while (!v158);
        v170 = 0x6DB6DB6DB6DB6DB7 * (v12 >> 3);
        do
        {
          v171 = 0;
          v358 = *(v11 + 48);
          v286 = *(v11 + 16);
          v323 = *(v11 + 32);
          v249 = *v11;
          v172 = v11;
          do
          {
            v176 = v172;
            v177 = v172 + 56 * v171;
            v172 = v177 + 56;
            v178 = 2 * v171;
            v171 = (2 * v171) | 1;
            v179 = v178 + 2;
            if (v179 < v170)
            {
              v181 = *(v177 + 112);
              v180 = v177 + 112;
              if (*(v180 - 56) > v181)
              {
                v172 = v180;
                v171 = v179;
              }
            }

            v173 = *v172;
            v174 = *(v172 + 16);
            v175 = *(v172 + 32);
            *(v176 + 48) = *(v172 + 48);
            *(v176 + 16) = v174;
            *(v176 + 32) = v175;
            *v176 = v173;
          }

          while (v171 <= ((v170 - 2) >> 1));
          a2 -= 56;
          if (v172 == a2)
          {
            result = v249;
            *(v172 + 48) = v358;
            *(v172 + 16) = v286;
            *(v172 + 32) = v323;
            *v172 = v249;
          }

          else
          {
            v182 = *a2;
            v183 = *(a2 + 16);
            v184 = *(a2 + 32);
            *(v172 + 48) = *(a2 + 48);
            *(v172 + 16) = v183;
            *(v172 + 32) = v184;
            *v172 = v182;
            result = v249;
            *(a2 + 48) = v358;
            *(a2 + 16) = v286;
            *(a2 + 32) = v323;
            *a2 = v249;
            v185 = v172 - v11 + 56;
            if (v185 >= 57)
            {
              v186 = (0x6DB6DB6DB6DB6DB7 * (v185 >> 3) - 2) >> 1;
              v187 = v11 + 56 * v186;
              result.n128_u64[0] = *v172;
              if (*v187 > *v172)
              {
                v188 = *(v172 + 24);
                v218 = v188;
                v221 = *(v172 + 40);
                v215 = *(v172 + 8);
                do
                {
                  v189 = v172;
                  v172 = v187;
                  v190 = *v187;
                  v191 = *(v187 + 16);
                  v192 = *(v187 + 32);
                  *(v189 + 48) = *(v187 + 48);
                  *(v189 + 16) = v191;
                  *(v189 + 32) = v192;
                  *v189 = v190;
                  if (!v186)
                  {
                    break;
                  }

                  v186 = (v186 - 1) >> 1;
                  v187 = v11 + 56 * v186;
                }

                while (*v187 > result.n128_f64[0]);
                *v172 = result.n128_u64[0];
                result = v215;
                *(v172 + 40) = v221;
                *(v172 + 24) = v218;
                *(v172 + 8) = v215;
              }
            }
          }

          v158 = v170-- <= 2;
        }

        while (!v158);
      }

      return result;
    }

    v14 = v13 >> 1;
    v15 = v11 + 56 * (v13 >> 1);
    v16 = *v8;
    if (v12 < 0x1C01)
    {
      v21 = *v11;
      if (*v11 > *v15)
      {
        if (v16 > v21)
        {
          v334 = *(v15 + 48);
          v260 = *(v15 + 16);
          v297 = *(v15 + 32);
          v223 = *v15;
          v22 = *v8;
          v23 = *(a2 - 40);
          v24 = *(a2 - 24);
          *(v15 + 48) = *(a2 - 8);
          *(v15 + 16) = v23;
          *(v15 + 32) = v24;
          *v15 = v22;
          goto LABEL_36;
        }

        v343 = *(v15 + 48);
        v269 = *(v15 + 16);
        v306 = *(v15 + 32);
        v232 = *v15;
        v59 = *v11;
        v60 = *(v11 + 16);
        v61 = *(v11 + 32);
        *(v15 + 48) = *(v11 + 48);
        *(v15 + 16) = v60;
        *(v15 + 32) = v61;
        *v15 = v59;
        *(v11 + 48) = v343;
        *(v11 + 16) = v269;
        *(v11 + 32) = v306;
        *v11 = v232;
        if (*v8 > *v11)
        {
          v334 = *(v11 + 48);
          v260 = *(v11 + 16);
          v297 = *(v11 + 32);
          v223 = *v11;
          v62 = *v8;
          v63 = *(a2 - 40);
          v64 = *(a2 - 24);
          *(v11 + 48) = *(a2 - 8);
          *(v11 + 16) = v63;
          *(v11 + 32) = v64;
          *v11 = v62;
LABEL_36:
          *(a2 - 8) = v334;
          *(a2 - 40) = v260;
          *(a2 - 24) = v297;
          *v8 = v223;
        }

LABEL_37:
        --a3;
        v37 = *v11;
        if (a4)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v16 <= v21)
      {
        goto LABEL_37;
      }

      v337 = *(v11 + 48);
      v263 = *(v11 + 16);
      v300 = *(v11 + 32);
      v226 = *v11;
      v31 = *v8;
      v32 = *(a2 - 40);
      v33 = *(a2 - 24);
      *(v11 + 48) = *(a2 - 8);
      *(v11 + 16) = v32;
      *(v11 + 32) = v33;
      *v11 = v31;
      *(a2 - 8) = v337;
      *(a2 - 40) = v263;
      *(a2 - 24) = v300;
      *v8 = v226;
      if (*v11 <= *v15)
      {
        goto LABEL_37;
      }

      v338 = *(v15 + 48);
      v264 = *(v15 + 16);
      v301 = *(v15 + 32);
      v227 = *v15;
      v34 = *v11;
      v35 = *(v11 + 16);
      v36 = *(v11 + 32);
      *(v15 + 48) = *(v11 + 48);
      *(v15 + 16) = v35;
      *(v15 + 32) = v36;
      *v15 = v34;
      *(v11 + 48) = v338;
      *(v11 + 16) = v264;
      *(v11 + 32) = v301;
      *v11 = v227;
      --a3;
      v37 = *v11;
      if (a4)
      {
        goto LABEL_62;
      }

LABEL_61:
      if (*(v11 - 56) > v37)
      {
        goto LABEL_62;
      }

      v120 = *(v11 + 24);
      v217 = v120;
      v220 = *(v11 + 40);
      v214 = *(v11 + 8);
      if (v37 <= *v8)
      {
        v122 = v11 + 56;
        do
        {
          v11 = v122;
          if (v122 >= a2)
          {
            break;
          }

          v122 += 56;
        }

        while (v37 <= *v11);
      }

      else
      {
        do
        {
          v121 = *(v11 + 56);
          v11 += 56;
        }

        while (v37 <= v121);
      }

      v123 = a2;
      if (v11 < a2)
      {
        v123 = a2;
        do
        {
          v124 = *(v123 - 56);
          v123 -= 56;
        }

        while (v37 > v124);
      }

      while (v11 < v123)
      {
        v355 = *(v11 + 48);
        v281 = *(v11 + 16);
        v318 = *(v11 + 32);
        v244 = *v11;
        v125 = *v123;
        v126 = *(v123 + 16);
        v127 = *(v123 + 32);
        *(v11 + 48) = *(v123 + 48);
        *(v11 + 16) = v126;
        *(v11 + 32) = v127;
        *v11 = v125;
        *(v123 + 48) = v355;
        *(v123 + 16) = v281;
        *(v123 + 32) = v318;
        *v123 = v244;
        do
        {
          v128 = *(v11 + 56);
          v11 += 56;
        }

        while (v37 <= v128);
        do
        {
          v129 = *(v123 - 56);
          v123 -= 56;
        }

        while (v37 > v129);
      }

      if (v11 - 56 != a1)
      {
        v130 = *(v11 - 56);
        v131 = *(v11 - 40);
        v132 = *(v11 - 24);
        *(a1 + 48) = *(v11 - 8);
        *(a1 + 16) = v131;
        *(a1 + 32) = v132;
        *a1 = v130;
      }

      a4 = 0;
      *(v11 - 56) = v37;
      result = v214;
      *(v11 - 32) = v217;
      *(v11 - 16) = v220;
      *(v11 - 48) = v214;
    }

    else
    {
      v17 = *v15;
      if (*v15 <= *v11)
      {
        if (v16 > v17)
        {
          v335 = *(v15 + 48);
          v261 = *(v15 + 16);
          v298 = *(v15 + 32);
          v224 = *v15;
          v25 = *v8;
          v26 = *(a2 - 40);
          v27 = *(a2 - 24);
          *(v15 + 48) = *(a2 - 8);
          *(v15 + 16) = v26;
          *(v15 + 32) = v27;
          *v15 = v25;
          *(a2 - 8) = v335;
          *(a2 - 40) = v261;
          *(a2 - 24) = v298;
          *v8 = v224;
          if (*v15 > *v11)
          {
            v336 = *(v11 + 48);
            v262 = *(v11 + 16);
            v299 = *(v11 + 32);
            v225 = *v11;
            v28 = *v15;
            v29 = *(v15 + 16);
            v30 = *(v15 + 32);
            *(v11 + 48) = *(v15 + 48);
            *(v11 + 16) = v29;
            *(v11 + 32) = v30;
            *v11 = v28;
            *(v15 + 48) = v336;
            *(v15 + 16) = v262;
            *(v15 + 32) = v299;
            *v15 = v225;
          }
        }
      }

      else
      {
        if (v16 <= v17)
        {
          v339 = *(v11 + 48);
          v265 = *(v11 + 16);
          v302 = *(v11 + 32);
          v228 = *v11;
          v38 = *v15;
          v39 = *(v15 + 16);
          v40 = *(v15 + 32);
          *(v11 + 48) = *(v15 + 48);
          *(v11 + 16) = v39;
          *(v11 + 32) = v40;
          *v11 = v38;
          *(v15 + 48) = v339;
          *(v15 + 16) = v265;
          *(v15 + 32) = v302;
          *v15 = v228;
          if (*v8 <= *v15)
          {
            goto LABEL_28;
          }

          v333 = *(v15 + 48);
          v259 = *(v15 + 16);
          v296 = *(v15 + 32);
          v222 = *v15;
          v41 = *v8;
          v42 = *(a2 - 40);
          v43 = *(a2 - 24);
          *(v15 + 48) = *(a2 - 8);
          *(v15 + 16) = v42;
          *(v15 + 32) = v43;
          *v15 = v41;
        }

        else
        {
          v333 = *(v11 + 48);
          v259 = *(v11 + 16);
          v296 = *(v11 + 32);
          v222 = *v11;
          v18 = *v8;
          v19 = *(a2 - 40);
          v20 = *(a2 - 24);
          *(v11 + 48) = *(a2 - 8);
          *(v11 + 16) = v19;
          *(v11 + 32) = v20;
          *v11 = v18;
        }

        *(a2 - 8) = v333;
        *(a2 - 40) = v259;
        *(a2 - 24) = v296;
        *v8 = v222;
      }

LABEL_28:
      v44 = (v11 + 56);
      v45 = v11 + 56 * v14;
      v47 = *(v45 - 56);
      v46 = v45 - 56;
      v48 = v47;
      v49 = *v9;
      if (v47 <= *(v11 + 56))
      {
        if (v49 > v48)
        {
          v341 = *(v46 + 48);
          v267 = *(v46 + 16);
          v304 = *(v46 + 32);
          v230 = *v46;
          v53 = *v9;
          v54 = *(a2 - 96);
          v55 = *(a2 - 80);
          *(v46 + 48) = *(a2 - 64);
          *(v46 + 16) = v54;
          *(v46 + 32) = v55;
          *v46 = v53;
          *(a2 - 64) = v341;
          *(a2 - 96) = v267;
          *(a2 - 80) = v304;
          *v9 = v230;
          if (*v46 > *v44)
          {
            v342 = *(v11 + 104);
            v268 = *(v11 + 72);
            v305 = *(v11 + 88);
            v231 = *v44;
            v56 = *v46;
            v57 = *(v46 + 16);
            v58 = *(v46 + 32);
            *(v11 + 104) = *(v46 + 48);
            *(v11 + 72) = v57;
            *(v11 + 88) = v58;
            *v44 = v56;
            *(v46 + 48) = v342;
            *(v46 + 16) = v268;
            *(v46 + 32) = v305;
            *v46 = v231;
          }
        }
      }

      else
      {
        if (v49 <= v48)
        {
          v344 = *(v11 + 104);
          v270 = *(v11 + 72);
          v307 = *(v11 + 88);
          v233 = *v44;
          v65 = *v46;
          v66 = *(v46 + 16);
          v67 = *(v46 + 32);
          *(v11 + 104) = *(v46 + 48);
          *(v11 + 72) = v66;
          *(v11 + 88) = v67;
          *v44 = v65;
          *(v46 + 48) = v344;
          *(v46 + 16) = v270;
          *(v46 + 32) = v307;
          *v46 = v233;
          if (*v9 <= *v46)
          {
            goto LABEL_42;
          }

          v340 = *(v46 + 48);
          v266 = *(v46 + 16);
          v303 = *(v46 + 32);
          v229 = *v46;
          v68 = *v9;
          v69 = *(a2 - 96);
          v70 = *(a2 - 80);
          *(v46 + 48) = *(a2 - 64);
          *(v46 + 16) = v69;
          *(v46 + 32) = v70;
          *v46 = v68;
        }

        else
        {
          v340 = *(v11 + 104);
          v266 = *(v11 + 72);
          v303 = *(v11 + 88);
          v229 = *v44;
          v50 = *v9;
          v51 = *(a2 - 96);
          v52 = *(a2 - 80);
          *(v11 + 104) = *(a2 - 64);
          *(v11 + 72) = v51;
          *(v11 + 88) = v52;
          *v44 = v50;
        }

        *(a2 - 64) = v340;
        *(a2 - 96) = v266;
        *(a2 - 80) = v303;
        *v9 = v229;
      }

LABEL_42:
      v71 = (v11 + 112);
      v72 = v11 + 56 * v14;
      v74 = *(v72 + 56);
      v73 = v72 + 56;
      v75 = v74;
      v76 = *v10;
      if (v74 <= *(v11 + 112))
      {
        if (v76 > v75)
        {
          v346 = *(v73 + 48);
          v272 = *(v73 + 16);
          v309 = *(v73 + 32);
          v235 = *v73;
          v80 = *v10;
          v81 = *(a2 - 152);
          v82 = *(a2 - 136);
          *(v73 + 48) = *(a2 - 120);
          *(v73 + 16) = v81;
          *(v73 + 32) = v82;
          *v73 = v80;
          *(a2 - 120) = v346;
          *(a2 - 152) = v272;
          *(a2 - 136) = v309;
          *v10 = v235;
          if (*v73 > *v71)
          {
            v347 = *(v11 + 160);
            v273 = *(v11 + 128);
            v310 = *(v11 + 144);
            v236 = *v71;
            v83 = *v73;
            v84 = *(v73 + 16);
            v85 = *(v73 + 32);
            *(v11 + 160) = *(v73 + 48);
            *(v11 + 128) = v84;
            *(v11 + 144) = v85;
            *v71 = v83;
            *(v73 + 48) = v347;
            *(v73 + 16) = v273;
            *(v73 + 32) = v310;
            *v73 = v236;
          }
        }
      }

      else
      {
        if (v76 <= v75)
        {
          v348 = *(v11 + 160);
          v274 = *(v11 + 128);
          v311 = *(v11 + 144);
          v237 = *v71;
          v86 = *v73;
          v87 = *(v73 + 16);
          v88 = *(v73 + 32);
          *(v11 + 160) = *(v73 + 48);
          *(v11 + 128) = v87;
          *(v11 + 144) = v88;
          *v71 = v86;
          *(v73 + 48) = v348;
          *(v73 + 16) = v274;
          *(v73 + 32) = v311;
          *v73 = v237;
          if (*v10 <= *v73)
          {
            goto LABEL_51;
          }

          v345 = *(v73 + 48);
          v271 = *(v73 + 16);
          v308 = *(v73 + 32);
          v234 = *v73;
          v89 = *v10;
          v90 = *(a2 - 152);
          v91 = *(a2 - 136);
          *(v73 + 48) = *(a2 - 120);
          *(v73 + 16) = v90;
          *(v73 + 32) = v91;
          *v73 = v89;
        }

        else
        {
          v345 = *(v11 + 160);
          v271 = *(v11 + 128);
          v308 = *(v11 + 144);
          v234 = *v71;
          v77 = *v10;
          v78 = *(a2 - 152);
          v79 = *(a2 - 136);
          *(v11 + 160) = *(a2 - 120);
          *(v11 + 128) = v78;
          *(v11 + 144) = v79;
          *v71 = v77;
        }

        *(a2 - 120) = v345;
        *(a2 - 152) = v271;
        *(a2 - 136) = v308;
        *v10 = v234;
      }

LABEL_51:
      v92 = *v15;
      v93 = *v73;
      if (*v15 <= *v46)
      {
        if (v93 > v92)
        {
          v350 = *(v15 + 48);
          v276 = *(v15 + 16);
          v313 = *(v15 + 32);
          v239 = *v15;
          v95 = *(v73 + 16);
          *v15 = *v73;
          *(v15 + 16) = v95;
          *(v15 + 32) = *(v73 + 32);
          *(v15 + 48) = *(v73 + 48);
          *(v73 + 16) = v276;
          *(v73 + 32) = v313;
          *(v73 + 48) = v350;
          *v73 = v239;
          if (*v15 > *v46)
          {
            v351 = *(v46 + 48);
            v277 = *(v46 + 16);
            v314 = *(v46 + 32);
            v240 = *v46;
            v96 = *(v15 + 16);
            *v46 = *v15;
            *(v46 + 16) = v96;
            *(v46 + 32) = *(v15 + 32);
            *(v46 + 48) = *(v15 + 48);
            *(v15 + 16) = v277;
            *(v15 + 32) = v314;
            *(v15 + 48) = v351;
            *v15 = v240;
          }
        }
      }

      else
      {
        if (v93 <= v92)
        {
          v352 = *(v46 + 48);
          v278 = *(v46 + 16);
          v315 = *(v46 + 32);
          v241 = *v46;
          v97 = *(v15 + 16);
          *v46 = *v15;
          *(v46 + 16) = v97;
          *(v46 + 32) = *(v15 + 32);
          *(v46 + 48) = *(v15 + 48);
          *(v15 + 16) = v278;
          *(v15 + 32) = v315;
          *(v15 + 48) = v352;
          *v15 = v241;
          if (*v73 <= *v15)
          {
            goto LABEL_60;
          }

          v349 = *(v15 + 48);
          v275 = *(v15 + 16);
          v312 = *(v15 + 32);
          v238 = *v15;
          v98 = *(v73 + 16);
          *v15 = *v73;
          *(v15 + 16) = v98;
          *(v15 + 32) = *(v73 + 32);
          *(v15 + 48) = *(v73 + 48);
        }

        else
        {
          v349 = *(v46 + 48);
          v275 = *(v46 + 16);
          v312 = *(v46 + 32);
          v238 = *v46;
          v94 = *(v73 + 16);
          *v46 = *v73;
          *(v46 + 16) = v94;
          *(v46 + 32) = *(v73 + 32);
          *(v46 + 48) = *(v73 + 48);
        }

        *(v73 + 16) = v275;
        *(v73 + 32) = v312;
        *(v73 + 48) = v349;
        *v73 = v238;
      }

LABEL_60:
      v353 = *(v11 + 48);
      v279 = *(v11 + 16);
      v316 = *(v11 + 32);
      v242 = *v11;
      v99 = *v15;
      v100 = *(v15 + 16);
      v101 = *(v15 + 32);
      *(v11 + 48) = *(v15 + 48);
      *(v11 + 16) = v100;
      *(v11 + 32) = v101;
      *v11 = v99;
      *(v15 + 48) = v353;
      *(v15 + 16) = v279;
      *(v15 + 32) = v316;
      *v15 = v242;
      --a3;
      v37 = *v11;
      if ((a4 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_62:
      v102 = 0;
      v103 = *(v11 + 24);
      v216 = v103;
      v219 = *(v11 + 40);
      v213 = *(v11 + 8);
      do
      {
        v104 = *(v11 + v102 + 56);
        v102 += 56;
      }

      while (v104 > v37);
      v105 = v11 + v102;
      v106 = a2;
      if (v102 == 56)
      {
        v106 = a2;
        do
        {
          if (v105 >= v106)
          {
            break;
          }

          v108 = *(v106 - 56);
          v106 -= 56;
        }

        while (v108 <= v37);
      }

      else
      {
        do
        {
          v107 = *(v106 - 56);
          v106 -= 56;
        }

        while (v107 <= v37);
      }

      v11 += v102;
      if (v105 < v106)
      {
        v109 = v106;
        do
        {
          v354 = *(v11 + 48);
          v280 = *(v11 + 16);
          v317 = *(v11 + 32);
          v243 = *v11;
          v110 = *v109;
          v111 = *(v109 + 16);
          v112 = *(v109 + 32);
          *(v11 + 48) = *(v109 + 48);
          *(v11 + 16) = v111;
          *(v11 + 32) = v112;
          *v11 = v110;
          *(v109 + 48) = v354;
          *(v109 + 16) = v280;
          *(v109 + 32) = v317;
          *v109 = v243;
          do
          {
            v113 = *(v11 + 56);
            v11 += 56;
          }

          while (v113 > v37);
          do
          {
            v114 = *(v109 - 56);
            v109 -= 56;
          }

          while (v114 <= v37);
        }

        while (v11 < v109);
      }

      if (v11 - 56 != a1)
      {
        v115 = *(v11 - 56);
        v116 = *(v11 - 40);
        v117 = *(v11 - 24);
        *(a1 + 48) = *(v11 - 8);
        *(a1 + 16) = v116;
        *(a1 + 32) = v117;
        *a1 = v115;
      }

      *(v11 - 56) = v37;
      *(v11 - 32) = v216;
      *(v11 - 16) = v219;
      *(v11 - 48) = v213;
      if (v105 < v106)
      {
        goto LABEL_81;
      }

      v118 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CutData::Canonicalize(void)::$_0 &,operations_research::sat::CutTerm *>(a1, v11 - 56, v213);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CutData::Canonicalize(void)::$_0 &,operations_research::sat::CutTerm *>(v11, a2, v119))
      {
        a2 = v11 - 56;
        if (!v118)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v118)
      {
LABEL_81:
        std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::CutData::Canonicalize(void)::$_0 &,operations_research::sat::CutTerm *,false>(a1, v11 - 56, a3, a4 & 1);
        a4 = 0;
      }
    }
  }

  if (v13 != 3)
  {
    if (v13 == 4)
    {
      v135 = v11 + 56;
      v141 = *(v11 + 56);
      v142 = (v11 + 112);
      v143 = *(v11 + 112);
      if (v141 <= *v11)
      {
        if (v143 > v141)
        {
          v360 = *(v11 + 104);
          v288 = *(v11 + 72);
          v325 = *(v11 + 88);
          v251 = *v135;
          v195 = *(v11 + 128);
          *v135 = *v142;
          *(v11 + 72) = v195;
          *(v11 + 88) = *(v11 + 144);
          *(v11 + 104) = *(v11 + 160);
          *(v11 + 128) = v288;
          *(v11 + 144) = v325;
          *(v11 + 160) = v360;
          *v142 = v251;
          if (*(v11 + 56) > *v11)
          {
            v361 = *(v11 + 48);
            v289 = *(v11 + 16);
            v326 = *(v11 + 32);
            v252 = *v11;
            v196 = *(v11 + 72);
            *v11 = *v135;
            *(v11 + 16) = v196;
            *(v11 + 32) = *(v11 + 88);
            *(v11 + 48) = *(v11 + 104);
            *(v11 + 72) = v289;
            *(v11 + 88) = v326;
            *(v11 + 104) = v361;
            *v135 = v252;
          }
        }
      }

      else
      {
        if (v143 > v141)
        {
          v357 = *(v11 + 48);
          v283 = *(v11 + 16);
          v320 = *(v11 + 32);
          v246 = *v11;
          v144 = *(v11 + 128);
          *v11 = *v142;
          *(v11 + 16) = v144;
          *(v11 + 32) = *(v11 + 144);
          *(v11 + 48) = *(v11 + 160);
          goto LABEL_176;
        }

        v363 = *(v11 + 48);
        v292 = *(v11 + 16);
        v329 = *(v11 + 32);
        v255 = *v11;
        v206 = *(v11 + 72);
        *v11 = *v135;
        *(v11 + 16) = v206;
        *(v11 + 32) = *(v11 + 88);
        *(v11 + 48) = *(v11 + 104);
        *(v11 + 72) = v292;
        *(v11 + 88) = v329;
        *(v11 + 104) = v363;
        *v135 = v255;
        if (*(v11 + 112) > *(v11 + 56))
        {
          v357 = *(v11 + 104);
          v283 = *(v11 + 72);
          v320 = *(v11 + 88);
          v246 = *v135;
          v207 = *(v11 + 128);
          *v135 = *v142;
          *(v11 + 72) = v207;
          *(v11 + 88) = *(v11 + 144);
          *(v11 + 104) = *(v11 + 160);
LABEL_176:
          *(v11 + 128) = v283;
          *(v11 + 144) = v320;
          *(v11 + 160) = v357;
          *v142 = v246;
        }
      }

      result.n128_f64[0] = *v8;
      if (*v8 <= v142->n128_f64[0])
      {
        return result;
      }

      v364 = *(v11 + 160);
      v293 = *(v11 + 128);
      v330 = *(v11 + 144);
      v256 = *v142;
      result = *v8;
      v208 = *(a2 - 40);
      v209 = *(a2 - 24);
      *(v11 + 160) = *(a2 - 8);
      *(v11 + 128) = v208;
      *(v11 + 144) = v209;
      *v142 = result;
      *(a2 - 8) = v364;
      *(a2 - 40) = v293;
      *(a2 - 24) = v330;
      *v8 = v256;
      result.n128_u64[0] = v142->n128_u64[0];
      if (v142->n128_f64[0] <= *v135)
      {
        return result;
      }

      v365 = *(v11 + 104);
      v294 = *(v11 + 72);
      v331 = *(v11 + 88);
      v257 = *v135;
      v210 = *(v11 + 128);
      *v135 = *v142;
      *(v11 + 72) = v210;
      *(v11 + 88) = *(v11 + 144);
      *(v11 + 104) = *(v11 + 160);
      *(v11 + 128) = v294;
      *(v11 + 144) = v331;
      *(v11 + 160) = v365;
      *v142 = v257;
LABEL_180:
      result.n128_u64[0] = *(v11 + 56);
      if (result.n128_f64[0] > *v11)
      {
        v366 = *(v11 + 48);
        v295 = *(v11 + 16);
        v332 = *(v11 + 32);
        v258 = *v11;
        v211 = *(v135 + 16);
        *v11 = *v135;
        *(v11 + 16) = v211;
        *(v11 + 32) = *(v135 + 32);
        *(v11 + 48) = *(v135 + 48);
        result = v332;
        *(v135 + 16) = v295;
        *(v135 + 32) = v332;
        *(v135 + 48) = v366;
        *v135 = v258;
      }

      return result;
    }

    if (v13 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CutData::Canonicalize(void)::$_0 &,operations_research::sat::CutTerm *,0>(v11, (v11 + 56), (v11 + 112), (v11 + 168), (a2 - 56), result).n128_u64[0];
      return result;
    }

    goto LABEL_9;
  }

  v135 = v11 + 56;
  result.n128_u64[0] = *(v11 + 56);
  v136 = *(a2 - 56);
  v133 = a2 - 56;
  v137 = v136;
  if (result.n128_f64[0] <= *v11)
  {
    if (v137 <= result.n128_f64[0])
    {
      return result;
    }

    v359 = *(v11 + 104);
    v287 = *(v11 + 72);
    v324 = *(v11 + 88);
    v250 = *v135;
    result = *v133;
    v193 = *(v133 + 16);
    v194 = *(v133 + 32);
    *(v11 + 104) = *(v133 + 48);
    *(v11 + 72) = v193;
    *(v11 + 88) = v194;
    *v135 = result;
    *(v133 + 48) = v359;
    *(v133 + 16) = v287;
    *(v133 + 32) = v324;
    *v133 = v250;
    goto LABEL_180;
  }

  if (v137 > result.n128_f64[0])
  {
    goto LABEL_108;
  }

  v362 = *(v11 + 48);
  v291 = *(v11 + 16);
  v328 = *(v11 + 32);
  v254 = *v11;
  v202 = *(v11 + 72);
  *v11 = *v135;
  *(v11 + 16) = v202;
  *(v11 + 32) = *(v11 + 88);
  *(v11 + 48) = *(v11 + 104);
  *(v11 + 72) = v291;
  *(v11 + 88) = v328;
  *(v11 + 104) = v362;
  *v135 = v254;
  result.n128_u64[0] = *v133;
  if (*v133 > *(v11 + 56))
  {
    v356 = *(v11 + 104);
    v282 = *(v11 + 72);
    v319 = *(v11 + 88);
    v245 = *v135;
    v203 = *v133;
    v204 = *(v133 + 16);
    v205 = *(v133 + 32);
    *(v11 + 104) = *(v133 + 48);
    *(v11 + 72) = v204;
    *(v11 + 88) = v205;
    *v135 = v203;
    goto LABEL_109;
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CutData::Canonicalize(void)::$_0 &,operations_research::sat::CutTerm *,0>(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5, __n128 result)
{
  v6 = *a2;
  v7 = *a3;
  if (*a2 <= *a1)
  {
    if (v7 > v6)
    {
      v14 = *(a2 + 6);
      v15 = a2[1];
      result = a2[2];
      v16 = *a2;
      v18 = a3[1];
      v17 = a3[2];
      v19 = *a3;
      *(a2 + 6) = *(a3 + 6);
      a2[1] = v18;
      a2[2] = v17;
      *a2 = v19;
      *a3 = v16;
      a3[1] = v15;
      a3[2] = result;
      *(a3 + 6) = v14;
      if (*a2 > *a1)
      {
        v20 = *(a1 + 6);
        v21 = a1[1];
        result = a1[2];
        v22 = *a1;
        v24 = a2[1];
        v23 = a2[2];
        v25 = *a2;
        *(a1 + 6) = *(a2 + 6);
        a1[1] = v24;
        a1[2] = v23;
        *a1 = v25;
        *a2 = v22;
        a2[1] = v21;
        a2[2] = result;
        *(a2 + 6) = v20;
      }
    }
  }

  else
  {
    if (v7 > v6)
    {
      v8 = *(a1 + 6);
      v9 = a1[1];
      result = a1[2];
      v10 = *a1;
      v12 = a3[1];
      v11 = a3[2];
      v13 = *a3;
      *(a1 + 6) = *(a3 + 6);
      a1[1] = v12;
      a1[2] = v11;
      *a1 = v13;
LABEL_9:
      *a3 = v10;
      a3[1] = v9;
      a3[2] = result;
      *(a3 + 6) = v8;
      goto LABEL_10;
    }

    v26 = *(a1 + 6);
    v27 = a1[1];
    result = a1[2];
    v28 = *a1;
    v30 = a2[1];
    v29 = a2[2];
    v31 = *a2;
    *(a1 + 6) = *(a2 + 6);
    a1[1] = v30;
    a1[2] = v29;
    *a1 = v31;
    *a2 = v28;
    a2[1] = v27;
    a2[2] = result;
    *(a2 + 6) = v26;
    if (*a3 > *a2)
    {
      v8 = *(a2 + 6);
      v9 = a2[1];
      result = a2[2];
      v10 = *a2;
      v33 = a3[1];
      v32 = a3[2];
      v34 = *a3;
      *(a2 + 6) = *(a3 + 6);
      a2[1] = v33;
      a2[2] = v32;
      *a2 = v34;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4 > *a3)
  {
    v35 = *(a3 + 6);
    v36 = a3[1];
    result = a3[2];
    v37 = *a3;
    v39 = a4[1];
    v38 = a4[2];
    v40 = *a4;
    *(a3 + 6) = *(a4 + 6);
    a3[1] = v39;
    a3[2] = v38;
    *a3 = v40;
    *a4 = v37;
    a4[1] = v36;
    a4[2] = result;
    *(a4 + 6) = v35;
    if (*a3 > *a2)
    {
      v41 = *(a2 + 6);
      v42 = a2[1];
      result = a2[2];
      v43 = *a2;
      v45 = a3[1];
      v44 = a3[2];
      v46 = *a3;
      *(a2 + 6) = *(a3 + 6);
      a2[1] = v45;
      a2[2] = v44;
      *a2 = v46;
      *a3 = v43;
      a3[1] = v42;
      a3[2] = result;
      *(a3 + 6) = v41;
      if (*a2 > *a1)
      {
        v47 = *(a1 + 6);
        v48 = a1[1];
        result = a1[2];
        v49 = *a1;
        v51 = a2[1];
        v50 = a2[2];
        v52 = *a2;
        *(a1 + 6) = *(a2 + 6);
        a1[1] = v51;
        a1[2] = v50;
        *a1 = v52;
        *a2 = v49;
        a2[1] = v48;
        a2[2] = result;
        *(a2 + 6) = v47;
      }
    }
  }

  result.n128_u64[0] = *a5;
  if (*a5 > *a4)
  {
    v53 = *(a4 + 6);
    v54 = a4[1];
    result = a4[2];
    v55 = *a4;
    v57 = a5[1];
    v56 = a5[2];
    v58 = *a5;
    *(a4 + 6) = *(a5 + 6);
    a4[1] = v57;
    a4[2] = v56;
    *a4 = v58;
    *a5 = v55;
    a5[1] = v54;
    a5[2] = result;
    *(a5 + 6) = v53;
    result.n128_u64[0] = *a4;
    if (*a4 > *a3)
    {
      v59 = *(a3 + 6);
      v60 = a3[1];
      result = a3[2];
      v61 = *a3;
      v63 = a4[1];
      v62 = a4[2];
      v64 = *a4;
      *(a3 + 6) = *(a4 + 6);
      a3[1] = v63;
      a3[2] = v62;
      *a3 = v64;
      *a4 = v61;
      a4[1] = v60;
      a4[2] = result;
      *(a4 + 6) = v59;
      result.n128_u64[0] = *a3;
      if (*a3 > *a2)
      {
        v65 = *(a2 + 6);
        v66 = a2[1];
        result = a2[2];
        v67 = *a2;
        v69 = a3[1];
        v68 = a3[2];
        v70 = *a3;
        *(a2 + 6) = *(a3 + 6);
        a2[1] = v69;
        a2[2] = v68;
        *a2 = v70;
        *a3 = v67;
        a3[1] = v66;
        a3[2] = result;
        *(a3 + 6) = v65;
        result.n128_u64[0] = *a2;
        if (*a2 > *a1)
        {
          v71 = *(a1 + 6);
          v72 = a1[1];
          result = a1[2];
          v73 = *a1;
          v75 = a2[1];
          v74 = a2[2];
          v76 = *a2;
          *(a1 + 6) = *(a2 + 6);
          a1[1] = v75;
          a1[2] = v74;
          *a1 = v76;
          *a2 = v73;
          a2[1] = v72;
          a2[2] = result;
          *(a2 + 6) = v71;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CutData::Canonicalize(void)::$_0 &,operations_research::sat::CutTerm *>(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 3);
  if (v3 <= 2)
  {
    if (v3 < 2)
    {
      return 1;
    }

    if (v3 == 2)
    {
      v6 = *(a2 - 56);
      v5 = (a2 - 56);
      if (v6 <= *a1)
      {
        return 1;
      }

      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (v3 != 3)
  {
    if (v3 != 4)
    {
      if (v3 == 5)
      {
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CutData::Canonicalize(void)::$_0 &,operations_research::sat::CutTerm *,0>(a1, (a1 + 56), (a1 + 112), (a1 + 168), (a2 - 56), a3);
        return 1;
      }

LABEL_14:
      v18 = (a1 + 112);
      v19 = *(a1 + 112);
      v20 = (a1 + 56);
      v21 = *(a1 + 56);
      v22 = *a1;
      if (v21 <= *a1)
      {
        if (v19 > v21)
        {
          v45 = *(a1 + 104);
          v47 = *(a1 + 72);
          v46 = *(a1 + 88);
          v48 = *v20;
          v49 = *(a1 + 128);
          *v20 = *v18;
          *(a1 + 72) = v49;
          *(a1 + 88) = *(a1 + 144);
          *(a1 + 104) = *(a1 + 160);
          *v18 = v48;
          *(a1 + 128) = v47;
          *(a1 + 144) = v46;
          *(a1 + 160) = v45;
          if (*v20 > v22)
          {
            v50 = *(a1 + 48);
            v52 = *(a1 + 16);
            v51 = *(a1 + 32);
            v53 = *a1;
            v54 = *(a1 + 72);
            *a1 = *v20;
            *(a1 + 16) = v54;
            *(a1 + 32) = *(a1 + 88);
            *(a1 + 48) = *(a1 + 104);
            *v20 = v53;
            *(a1 + 72) = v52;
            *(a1 + 88) = v51;
            *(a1 + 104) = v50;
          }
        }
      }

      else if (v19 <= v21)
      {
        v77 = *(a1 + 48);
        v79 = *(a1 + 16);
        v78 = *(a1 + 32);
        v80 = *a1;
        v81 = *(a1 + 72);
        *a1 = *v20;
        *(a1 + 16) = v81;
        *(a1 + 32) = *(a1 + 88);
        *(a1 + 48) = *(a1 + 104);
        *v20 = v80;
        *(a1 + 72) = v79;
        *(a1 + 88) = v78;
        *(a1 + 104) = v77;
        if (v19 > *(a1 + 56))
        {
          v82 = *(a1 + 104);
          v84 = *(a1 + 72);
          v83 = *(a1 + 88);
          v85 = *v20;
          v86 = *(a1 + 128);
          *v20 = *v18;
          *(a1 + 72) = v86;
          *(a1 + 88) = *(a1 + 144);
          *(a1 + 104) = *(a1 + 160);
          *v18 = v85;
          *(a1 + 128) = v84;
          *(a1 + 144) = v83;
          *(a1 + 160) = v82;
        }
      }

      else
      {
        v23 = *(a1 + 48);
        v25 = *(a1 + 16);
        v24 = *(a1 + 32);
        v26 = *a1;
        v27 = *(a1 + 128);
        *a1 = *v18;
        *(a1 + 16) = v27;
        *(a1 + 32) = *(a1 + 144);
        *(a1 + 48) = *(a1 + 160);
        *v18 = v26;
        *(a1 + 128) = v25;
        *(a1 + 144) = v24;
        *(a1 + 160) = v23;
      }

      v87 = a1 + 168;
      if (a1 + 168 == a2)
      {
        return 1;
      }

      v88 = 0;
      v89 = 0;
      while (1)
      {
        v91 = *v87;
        if (*v87 > *v18)
        {
          v118 = *(v87 + 8);
          v119 = *(v87 + 24);
          v120 = *(v87 + 40);
          v92 = v88;
          do
          {
            v93 = a1 + v92;
            v94 = *(a1 + v92 + 128);
            *(v93 + 168) = *(a1 + v92 + 112);
            *(v93 + 184) = v94;
            *(v93 + 200) = *(a1 + v92 + 144);
            *(v93 + 216) = *(a1 + v92 + 160);
            if (v92 == -112)
            {
              v90 = a1;
              goto LABEL_36;
            }

            v92 -= 56;
          }

          while (v91 > *(v93 + 56));
          v90 = a1 + v92 + 168;
LABEL_36:
          *v90 = v91;
          *(v90 + 8) = v118;
          *(v90 + 24) = v119;
          *(v90 + 40) = v120;
          if (++v89 == 8)
          {
            return v87 + 56 == a2;
          }
        }

        v18 = v87;
        v88 += 56;
        v87 += 56;
        if (v87 == a2)
        {
          return 1;
        }
      }
    }

    v7 = a1 + 56;
    v28 = *(a1 + 56);
    v29 = (a1 + 112);
    v30 = *(a1 + 112);
    v31 = (a2 - 56);
    v32 = *a1;
    if (v28 <= *a1)
    {
      if (v30 > v28)
      {
        v55 = *(a1 + 104);
        v57 = *(a1 + 72);
        v56 = *(a1 + 88);
        v58 = *v7;
        v59 = *(a1 + 128);
        *v7 = *v29;
        *(a1 + 72) = v59;
        *(a1 + 88) = *(a1 + 144);
        *(a1 + 104) = *(a1 + 160);
        *v29 = v58;
        *(a1 + 128) = v57;
        *(a1 + 144) = v56;
        *(a1 + 160) = v55;
        if (*v7 > v32)
        {
          v60 = *(a1 + 48);
          v62 = *(a1 + 16);
          v61 = *(a1 + 32);
          v63 = *a1;
          v64 = *(a1 + 72);
          *a1 = *v7;
          *(a1 + 16) = v64;
          *(a1 + 32) = *(a1 + 88);
          *(a1 + 48) = *(a1 + 104);
          *v7 = v63;
          *(a1 + 72) = v62;
          *(a1 + 88) = v61;
          *(a1 + 104) = v60;
        }
      }
    }

    else
    {
      if (v30 > v28)
      {
        v33 = *(a1 + 48);
        v35 = *(a1 + 16);
        v34 = *(a1 + 32);
        v36 = *a1;
        v37 = *(a1 + 128);
        *a1 = *v29;
        *(a1 + 16) = v37;
        *(a1 + 32) = *(a1 + 144);
        *(a1 + 48) = *(a1 + 160);
LABEL_46:
        *v29 = v36;
        *(a1 + 128) = v35;
        *(a1 + 144) = v34;
        *(a1 + 160) = v33;
        goto LABEL_47;
      }

      v95 = *(a1 + 48);
      v97 = *(a1 + 16);
      v96 = *(a1 + 32);
      v98 = *a1;
      v99 = *(a1 + 72);
      *a1 = *v7;
      *(a1 + 16) = v99;
      *(a1 + 32) = *(a1 + 88);
      *(a1 + 48) = *(a1 + 104);
      *v7 = v98;
      *(a1 + 72) = v97;
      *(a1 + 88) = v96;
      *(a1 + 104) = v95;
      if (v30 > *(a1 + 56))
      {
        v33 = *(a1 + 104);
        v35 = *(a1 + 72);
        v34 = *(a1 + 88);
        v36 = *v7;
        v100 = *(a1 + 128);
        *v7 = *v29;
        *(a1 + 72) = v100;
        *(a1 + 88) = *(a1 + 144);
        *(a1 + 104) = *(a1 + 160);
        goto LABEL_46;
      }
    }

LABEL_47:
    if (*v31 <= *v29)
    {
      return 1;
    }

    v101 = *(a1 + 160);
    v103 = *(a1 + 128);
    v102 = *(a1 + 144);
    v104 = *v29;
    v106 = *(a2 - 40);
    v105 = *(a2 - 24);
    v107 = *v31;
    *(a1 + 160) = *(a2 - 8);
    *(a1 + 128) = v106;
    *(a1 + 144) = v105;
    *v29 = v107;
    *v31 = v104;
    *(a2 - 40) = v103;
    *(a2 - 24) = v102;
    *(a2 - 8) = v101;
    if (*v29 <= *v7)
    {
      return 1;
    }

    v108 = *(a1 + 104);
    v110 = *(a1 + 72);
    v109 = *(a1 + 88);
    v111 = *v7;
    v112 = *(a1 + 128);
    *v7 = *v29;
    *(a1 + 72) = v112;
    *(a1 + 88) = *(a1 + 144);
    *(a1 + 104) = *(a1 + 160);
    *v29 = v111;
    *(a1 + 128) = v110;
    *(a1 + 144) = v109;
    *(a1 + 160) = v108;
    if (*(a1 + 56) <= *a1)
    {
      return 1;
    }

    goto LABEL_50;
  }

  v7 = a1 + 56;
  v8 = *(a1 + 56);
  v9 = *(a2 - 56);
  v5 = (a2 - 56);
  v10 = v9;
  if (v8 <= *a1)
  {
    if (v10 <= v8)
    {
      return 1;
    }

    v38 = *(a1 + 104);
    v40 = *(a1 + 72);
    v39 = *(a1 + 88);
    v41 = *v7;
    v43 = v5[1];
    v42 = v5[2];
    v44 = *v5;
    *(a1 + 104) = *(v5 + 6);
    *(a1 + 72) = v43;
    *(a1 + 88) = v42;
    *v7 = v44;
    *v5 = v41;
    v5[1] = v40;
    v5[2] = v39;
    *(v5 + 6) = v38;
    if (*(a1 + 56) <= *a1)
    {
      return 1;
    }

LABEL_50:
    v113 = *(a1 + 48);
    v115 = *(a1 + 16);
    v114 = *(a1 + 32);
    v116 = *a1;
    v117 = *(v7 + 16);
    *a1 = *v7;
    *(a1 + 16) = v117;
    *(a1 + 32) = *(v7 + 32);
    *(a1 + 48) = *(v7 + 48);
    *v7 = v116;
    *(v7 + 16) = v115;
    *(v7 + 32) = v114;
    *(v7 + 48) = v113;
    return 1;
  }

  if (v10 > v8)
  {
LABEL_13:
    v11 = *(a1 + 48);
    v13 = *(a1 + 16);
    v12 = *(a1 + 32);
    v14 = *a1;
    v16 = v5[1];
    v15 = v5[2];
    v17 = *v5;
    *(a1 + 48) = *(v5 + 6);
    *(a1 + 16) = v16;
    *(a1 + 32) = v15;
    *a1 = v17;
    *v5 = v14;
    v5[1] = v13;
    v5[2] = v12;
    *(v5 + 6) = v11;
    return 1;
  }

  v65 = *(a1 + 48);
  v67 = *(a1 + 16);
  v66 = *(a1 + 32);
  v68 = *a1;
  v69 = *(a1 + 72);
  *a1 = *v7;
  *(a1 + 16) = v69;
  *(a1 + 32) = *(a1 + 88);
  *(a1 + 48) = *(a1 + 104);
  *v7 = v68;
  *(a1 + 72) = v67;
  *(a1 + 88) = v66;
  *(a1 + 104) = v65;
  if (*v5 <= *(a1 + 56))
  {
    return 1;
  }

  v70 = *(a1 + 104);
  v72 = *(a1 + 72);
  v71 = *(a1 + 88);
  v73 = *v7;
  v75 = v5[1];
  v74 = v5[2];
  v76 = *v5;
  *(a1 + 104) = *(v5 + 6);
  *(a1 + 72) = v75;
  *(a1 + 88) = v74;
  *v7 = v76;
  *v5 = v73;
  v5[1] = v72;
  v5[2] = v71;
  *(v5 + 6) = v70;
  return 1;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,int>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,int>>>::resize_impl(uint64_t a1, uint64_t a2)
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

int64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,int>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,int>>>::find_or_prepare_insert<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>@<X0>(int64_t result@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
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
    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(result, v14, (v16 + (__clz(__rbit64(v21)) >> 3)) & v3, v6, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,int>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,int>>>::GetPolicyFunctions(void)::value);
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
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,int>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,int>>>::resize_impl(result, 3);
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

unsigned __int8 *absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,256,false>>::insert_unique<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,std::piecewise_construct_t const&,std::tuple<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const&>,std::tuple<>>@<X0>(unsigned __int8 *result@<X0>, int *a2@<X1>, uint64_t a3@<X2>, _DWORD **a4@<X3>, uint64_t a5@<X8>)
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
      if (*&v8[16 * v11 + 16] < v7)
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

  if (v7 < *&v14[16 * v9 + 16])
  {
LABEL_17:
    result = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,256,false>>::internal_emplace<std::piecewise_construct_t const&,std::tuple<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const&>,std::tuple<>>(result, v8, v13, a3, a4);
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

unsigned __int8 *absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,256,false>>::internal_emplace<std::piecewise_construct_t const&,std::tuple<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const&>,std::tuple<>>(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, _DWORD **a5)
{
  i = a2;
  v22 = a3;
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
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  a2 = *&a2[8 * a3 + 256];
  for (i = a2; !a2[11]; i = a2)
  {
    a2 = *&a2[8 * a2[10] + 256];
  }

  LOBYTE(a3) = a2[10];
  LODWORD(v22) = a3;
  v7 = a2[11];
  if (!a2[11])
  {
    v7 = 15;
  }

  if (a2[10] != v7)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v7 <= 0xE)
  {
    operator new();
  }

  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<long long,long long,std::less<long long>,std::allocator<std::pair<long long const,long long>>,256,false>>::rebalance_or_split(a1, &i);
  v8 = i;
  v9 = v22;
  v10 = i[10];
  v11 = v10 - v22;
  if (v10 > v22)
  {
LABEL_13:
    if ((v11 & 0xFFFFFFFFFFFFFFFLL) != 0)
    {
      v12 = &v8[16 * v9 + 16 + 16 * v11];
      v13 = 16 * v9 - 16 * v10;
      do
      {
        *v12 = *(v12 - 1);
        v12 -= 16;
        v13 += 16;
      }

      while (v13);
      LODWORD(v10) = v8[10];
    }
  }

LABEL_17:
  v14 = &v8[16 * v9];
  *(v14 + 4) = **a5;
  *(v14 + 3) = 0;
  v15 = v10 + 1;
  v8[10] = v15;
  if (!v8[11])
  {
    v16 = v9 + 1;
    if (v16 < v15)
    {
      v17 = v8 + 256;
      do
      {
        v18 = *&v17[8 * (v15 - 1)];
        *&v17[8 * v15] = v18;
        *(v18 + 8) = v15;
      }

      while (v16 < --v15);
    }
  }

  ++*(a1 + 16);
  return i;
}

__n128 std::__function::__func<operations_research::sat::GetSuperAdditiveRoundingFunction(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_0,std::allocator<operations_research::sat::GetSuperAdditiveRoundingFunction(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_0>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> ()(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F40350;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::GetSuperAdditiveRoundingFunction(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_0,std::allocator<operations_research::sat::GetSuperAdditiveRoundingFunction(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_0>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> ()(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat32GetSuperAdditiveRoundingFunctionENS_11StrongInt64INS0_25IntegerValue_integer_tag_EEES3_S3_S3_E3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat32GetSuperAdditiveRoundingFunctionENS_11StrongInt64INS0_25IntegerValue_integer_tag_EEES3_S3_S3_E3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat32GetSuperAdditiveRoundingFunctionENS_11StrongInt64INS0_25IntegerValue_integer_tag_EEES3_S3_S3_E3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat32GetSuperAdditiveRoundingFunctionENS_11StrongInt64INS0_25IntegerValue_integer_tag_EEES3_S3_S3_E3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 std::__function::__func<operations_research::sat::GetSuperAdditiveRoundingFunction(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_1,std::allocator<operations_research::sat::GetSuperAdditiveRoundingFunction(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_1>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> ()(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F403D0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::GetSuperAdditiveRoundingFunction(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_1,std::allocator<operations_research::sat::GetSuperAdditiveRoundingFunction(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_1>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> ()(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)>::operator()(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[3] * *a2;
  return ((v3 % v2 - a1[2] + (v2 & ((v3 % v2) >> 63))) & ~((v3 % v2 - a1[2] + (v2 & ((v3 % v2) >> 63))) >> 63)) + (v3 / v2 - (v3 / v2 * v2 > v3)) * a1[1];
}

uint64_t std::__function::__func<operations_research::sat::GetSuperAdditiveRoundingFunction(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_1,std::allocator<operations_research::sat::GetSuperAdditiveRoundingFunction(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_1>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> ()(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat32GetSuperAdditiveRoundingFunctionENS_11StrongInt64INS0_25IntegerValue_integer_tag_EEES3_S3_S3_E3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat32GetSuperAdditiveRoundingFunctionENS_11StrongInt64INS0_25IntegerValue_integer_tag_EEES3_S3_S3_E3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat32GetSuperAdditiveRoundingFunctionENS_11StrongInt64INS0_25IntegerValue_integer_tag_EEES3_S3_S3_E3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat32GetSuperAdditiveRoundingFunctionENS_11StrongInt64INS0_25IntegerValue_integer_tag_EEES3_S3_S3_E3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 std::__function::__func<operations_research::sat::GetSuperAdditiveRoundingFunction(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_2,std::allocator<operations_research::sat::GetSuperAdditiveRoundingFunction(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_2>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> ()(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F40450;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::GetSuperAdditiveRoundingFunction(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_2,std::allocator<operations_research::sat::GetSuperAdditiveRoundingFunction(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_2>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> ()(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[1] * *a2;
  v4 = v3 / v2 - (v3 / v2 * v2 > v3);
  v5 = a1[3];
  v6 = ((v2 & ((v3 % v2) >> 63)) + v3 % v2) * v5;
  return v6 / v2 + v4 * v5 - (v6 / v2 * v2 > v6);
}

uint64_t std::__function::__func<operations_research::sat::GetSuperAdditiveRoundingFunction(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_2,std::allocator<operations_research::sat::GetSuperAdditiveRoundingFunction(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_2>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> ()(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat32GetSuperAdditiveRoundingFunctionENS_11StrongInt64INS0_25IntegerValue_integer_tag_EEES3_S3_S3_E3$_2")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat32GetSuperAdditiveRoundingFunctionENS_11StrongInt64INS0_25IntegerValue_integer_tag_EEES3_S3_S3_E3$_2" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat32GetSuperAdditiveRoundingFunctionENS_11StrongInt64INS0_25IntegerValue_integer_tag_EEES3_S3_S3_E3$_2"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat32GetSuperAdditiveRoundingFunctionENS_11StrongInt64INS0_25IntegerValue_integer_tag_EEES3_S3_S3_E3$_2" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 std::__function::__func<operations_research::sat::GetSuperAdditiveRoundingFunction(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_3,std::allocator<operations_research::sat::GetSuperAdditiveRoundingFunction(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_3>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> ()(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F404D0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::GetSuperAdditiveRoundingFunction(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_3,std::allocator<operations_research::sat::GetSuperAdditiveRoundingFunction(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_3>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> ()(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)>::operator()(void *a1, void *a2)
{
  v2 = a1[3] * *a2;
  v4 = a1[4];
  v3 = a1[5];
  v5 = v2 / v4;
  v6 = v2 % v4 - a1[2] + (v4 & ((v2 % v4) >> 63));
  if (v6 < 1)
  {
    return (v5 - (v5 * v4 > v2)) * v3;
  }

  v7 = (v3 - 1) * v6;
  v8 = a1[1];
  if (v7 / v8 * v8 >= v7)
  {
    v9 = v7 / v8;
  }

  else
  {
    v9 = v7 / v8 + 1;
  }

  return v9 + (v5 - (v5 * v4 > v2)) * v3;
}

uint64_t std::__function::__func<operations_research::sat::GetSuperAdditiveRoundingFunction(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_3,std::allocator<operations_research::sat::GetSuperAdditiveRoundingFunction(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_3>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> ()(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat32GetSuperAdditiveRoundingFunctionENS_11StrongInt64INS0_25IntegerValue_integer_tag_EEES3_S3_S3_E3$_3")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat32GetSuperAdditiveRoundingFunctionENS_11StrongInt64INS0_25IntegerValue_integer_tag_EEES3_S3_S3_E3$_3" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat32GetSuperAdditiveRoundingFunctionENS_11StrongInt64INS0_25IntegerValue_integer_tag_EEES3_S3_S3_E3$_3"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat32GetSuperAdditiveRoundingFunctionENS_11StrongInt64INS0_25IntegerValue_integer_tag_EEES3_S3_S3_E3$_3" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__func<operations_research::sat::GetSuperAdditiveStrengtheningFunction(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_0,std::allocator<operations_research::sat::GetSuperAdditiveStrengtheningFunction(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_0>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> ()(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F40550;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::GetSuperAdditiveStrengtheningFunction(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_0,std::allocator<operations_research::sat::GetSuperAdditiveStrengtheningFunction(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_0>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> ()(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)>::operator()(uint64_t a1, void *a2)
{
  v2 = -*(a1 + 8);
  v4 = __OFSUB__(*a2, v2);
  v3 = *a2 == v2;
  v5 = -2;
  if (!(((*a2 + *(a1 + 8)) < 0) ^ v4 | v3))
  {
    v5 = -1;
  }

  return v5 & (*a2 >> 63);
}

uint64_t std::__function::__func<operations_research::sat::GetSuperAdditiveStrengtheningFunction(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_0,std::allocator<operations_research::sat::GetSuperAdditiveStrengtheningFunction(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_0>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> ()(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat37GetSuperAdditiveStrengtheningFunctionENS_11StrongInt64INS0_25IntegerValue_integer_tag_EEES3_E3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat37GetSuperAdditiveStrengtheningFunctionENS_11StrongInt64INS0_25IntegerValue_integer_tag_EEES3_E3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat37GetSuperAdditiveStrengtheningFunctionENS_11StrongInt64INS0_25IntegerValue_integer_tag_EEES3_E3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat37GetSuperAdditiveStrengtheningFunctionENS_11StrongInt64INS0_25IntegerValue_integer_tag_EEES3_E3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 std::__function::__func<operations_research::sat::GetSuperAdditiveStrengtheningFunction(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_1,std::allocator<operations_research::sat::GetSuperAdditiveStrengtheningFunction(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_1>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> ()(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F405D0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::GetSuperAdditiveStrengtheningFunction(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_1,std::allocator<operations_research::sat::GetSuperAdditiveStrengtheningFunction(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_1>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> ()(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)>::operator()(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if ((*a2 & 0x8000000000000000) == 0)
  {
    return 0;
  }

  v3 = -a1[1];
  if (v2 <= v3)
  {
    return v3;
  }

  v3 = -a1[3];
  if (v2 <= v3)
  {
    return v3;
  }

  v4 = a1[2];
  if (-v4 < v2)
  {
    return -v4;
  }

  else
  {
    return *a2;
  }
}

uint64_t std::__function::__func<operations_research::sat::GetSuperAdditiveStrengtheningFunction(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_1,std::allocator<operations_research::sat::GetSuperAdditiveStrengtheningFunction(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_1>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> ()(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat37GetSuperAdditiveStrengtheningFunctionENS_11StrongInt64INS0_25IntegerValue_integer_tag_EEES3_E3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat37GetSuperAdditiveStrengtheningFunctionENS_11StrongInt64INS0_25IntegerValue_integer_tag_EEES3_E3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat37GetSuperAdditiveStrengtheningFunctionENS_11StrongInt64INS0_25IntegerValue_integer_tag_EEES3_E3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat37GetSuperAdditiveStrengtheningFunctionENS_11StrongInt64INS0_25IntegerValue_integer_tag_EEES3_E3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__func<operations_research::sat::GetSuperAdditiveStrengtheningMirFunction(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_0,std::allocator<operations_research::sat::GetSuperAdditiveStrengtheningMirFunction(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_0>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> ()(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F40650;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::GetSuperAdditiveStrengtheningMirFunction(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_0,std::allocator<operations_research::sat::GetSuperAdditiveStrengtheningMirFunction(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_0>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> ()(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  if (-v2 > *a2)
  {
    v3 = -v2;
  }

  else
  {
    v3 = *a2;
  }

  return v3 & (*a2 >> 63);
}

uint64_t std::__function::__func<operations_research::sat::GetSuperAdditiveStrengtheningMirFunction(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_0,std::allocator<operations_research::sat::GetSuperAdditiveStrengtheningMirFunction(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_0>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> ()(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat40GetSuperAdditiveStrengtheningMirFunctionENS_11StrongInt64INS0_25IntegerValue_integer_tag_EEES3_E3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat40GetSuperAdditiveStrengtheningMirFunctionENS_11StrongInt64INS0_25IntegerValue_integer_tag_EEES3_E3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat40GetSuperAdditiveStrengtheningMirFunctionENS_11StrongInt64INS0_25IntegerValue_integer_tag_EEES3_E3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat40GetSuperAdditiveStrengtheningMirFunctionENS_11StrongInt64INS0_25IntegerValue_integer_tag_EEES3_E3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__func<operations_research::sat::GetSuperAdditiveStrengtheningMirFunction(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_1,std::allocator<operations_research::sat::GetSuperAdditiveStrengtheningMirFunction(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_1>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> ()(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat40GetSuperAdditiveStrengtheningMirFunctionENS_11StrongInt64INS0_25IntegerValue_integer_tag_EEES3_E3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat40GetSuperAdditiveStrengtheningMirFunctionENS_11StrongInt64INS0_25IntegerValue_integer_tag_EEES3_E3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat40GetSuperAdditiveStrengtheningMirFunctionENS_11StrongInt64INS0_25IntegerValue_integer_tag_EEES3_E3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat40GetSuperAdditiveStrengtheningMirFunctionENS_11StrongInt64INS0_25IntegerValue_integer_tag_EEES3_E3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 std::__function::__func<operations_research::sat::GetSuperAdditiveStrengtheningMirFunction(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_2,std::allocator<operations_research::sat::GetSuperAdditiveStrengtheningMirFunction(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_2>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> ()(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F40750;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::GetSuperAdditiveStrengtheningMirFunction(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_2,std::allocator<operations_research::sat::GetSuperAdditiveStrengtheningMirFunction(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_2>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> ()(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if ((*a2 & 0x8000000000000000) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v2 <= -v4)
  {
    return -v5;
  }

  else
  {
    return (v5 - 1) * v2 / (v4 - 1) - ((v5 - 1) * v2 / (v4 - 1) * (v4 - 1) > (v5 - 1) * v2);
  }
}

uint64_t std::__function::__func<operations_research::sat::GetSuperAdditiveStrengtheningMirFunction(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_2,std::allocator<operations_research::sat::GetSuperAdditiveStrengtheningMirFunction(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_2>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> ()(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat40GetSuperAdditiveStrengtheningMirFunctionENS_11StrongInt64INS0_25IntegerValue_integer_tag_EEES3_E3$_2")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat40GetSuperAdditiveStrengtheningMirFunctionENS_11StrongInt64INS0_25IntegerValue_integer_tag_EEES3_E3$_2" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat40GetSuperAdditiveStrengtheningMirFunctionENS_11StrongInt64INS0_25IntegerValue_integer_tag_EEES3_E3$_2"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat40GetSuperAdditiveStrengtheningMirFunctionENS_11StrongInt64INS0_25IntegerValue_integer_tag_EEES3_E3$_2" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::greater<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> &,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>*,false>(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      v74 = *(a2 - 1);
      v75 = *v10;
      if (v74 > *v10)
      {
        *v10 = v74;
        *(a2 - 1) = v75;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v86 = v10 + 1;
      v88 = v10 == a2 || v86 == a2;
      if (a5)
      {
        if (!v88)
        {
          v89 = 0;
          v90 = v10;
          do
          {
            v93 = *v90;
            v92 = v90[1];
            v90 = v86;
            if (v92 > v93)
            {
              v94 = v89;
              do
              {
                *(v10 + v94 + 8) = v93;
                if (!v94)
                {
                  v91 = v10;
                  goto LABEL_128;
                }

                v93 = *(v10 + v94 - 8);
                v94 -= 8;
              }

              while (v92 > v93);
              v91 = (v10 + v94 + 8);
LABEL_128:
              *v91 = v92;
            }

            v86 = v90 + 1;
            v89 += 8;
          }

          while (v90 + 1 != a2);
        }
      }

      else if (!v88)
      {
        do
        {
          v100 = *v9;
          v99 = v9[1];
          v9 = v86;
          if (v99 > v100)
          {
            do
            {
              *v86 = v100;
              v100 = *(v86 - 2);
              --v86;
            }

            while (v99 > v100);
            *v86 = v99;
          }

          v86 = v9 + 1;
        }

        while (v9 + 1 != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> &,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>*,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>*>(v10, a2, a2);
      }

      return result;
    }

    v12 = &v10[v11 >> 1];
    v13 = v12;
    v14 = *(a2 - 1);
    if (v11 < 0x81)
    {
      v17 = *v10;
      v18 = *v12;
      if (*v10 > *v13)
      {
        if (v14 > v17)
        {
          *v13 = v14;
          goto LABEL_37;
        }

        *v13 = v17;
        *v10 = v18;
        v28 = *(a2 - 1);
        if (v28 > v18)
        {
          *v10 = v28;
LABEL_37:
          *(a2 - 1) = v18;
        }

LABEL_38:
        --a4;
        v21 = *v10;
        if (a5)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v14 <= v17)
      {
        goto LABEL_38;
      }

      *v10 = v14;
      *(a2 - 1) = v17;
      v20 = *v13;
      if (*v10 <= *v13)
      {
        goto LABEL_38;
      }

      *v13 = *v10;
      *v10 = v20;
      --a4;
      v21 = v20;
      if (a5)
      {
        goto LABEL_62;
      }

LABEL_61:
      if (*(v10 - 1) > v21)
      {
        goto LABEL_62;
      }

      if (v21 <= *(a2 - 1))
      {
        v57 = v10 + 1;
        do
        {
          v10 = v57;
          if (v57 >= a2)
          {
            break;
          }

          ++v57;
        }

        while (v21 <= *v10);
      }

      else
      {
        do
        {
          v56 = v10[1];
          ++v10;
        }

        while (v21 <= v56);
      }

      v58 = a2;
      if (v10 < a2)
      {
        v58 = a2;
        do
        {
          v59 = *--v58;
        }

        while (v21 > v59);
      }

      if (v10 < v58)
      {
        v60 = *v10;
        v61 = *v58;
        do
        {
          *v10 = v61;
          *v58 = v60;
          do
          {
            v62 = v10[1];
            ++v10;
            v60 = v62;
          }

          while (v21 <= v62);
          do
          {
            v63 = *--v58;
            v61 = v63;
          }

          while (v21 > v63);
        }

        while (v10 < v58);
      }

      v64 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v64;
      }

      a5 = 0;
      *v64 = v21;
    }

    else
    {
      v15 = *v12;
      v16 = *v10;
      if (*v12 <= *v10)
      {
        if (v14 > v15)
        {
          *v12 = v14;
          *(a2 - 1) = v15;
          v19 = *v10;
          if (*v12 > *v10)
          {
            *v10 = *v12;
            *v12 = v19;
          }
        }
      }

      else
      {
        if (v14 <= v15)
        {
          *v10 = v15;
          *v12 = v16;
          v22 = *(a2 - 1);
          if (v22 <= v16)
          {
            goto LABEL_29;
          }

          *v12 = v22;
        }

        else
        {
          *v10 = v14;
        }

        *(a2 - 1) = v16;
      }

LABEL_29:
      v23 = v12 - 1;
      v24 = *(v12 - 1);
      v25 = v10[1];
      v26 = *(a2 - 2);
      if (v24 <= v25)
      {
        if (v26 > v24)
        {
          *v23 = v26;
          *(a2 - 2) = v24;
          v27 = v10[1];
          if (*v23 > v27)
          {
            v10[1] = *v23;
            *v23 = v27;
          }
        }
      }

      else
      {
        if (v26 <= v24)
        {
          v10[1] = v24;
          *v23 = v25;
          v29 = *(a2 - 2);
          if (v29 <= v25)
          {
            goto LABEL_43;
          }

          *v23 = v29;
        }

        else
        {
          v10[1] = v26;
        }

        *(a2 - 2) = v25;
      }

LABEL_43:
      v32 = v12[1];
      v30 = v12 + 1;
      v31 = v32;
      v33 = v10[2];
      v34 = *(a2 - 3);
      if (v32 <= v33)
      {
        if (v34 > v31)
        {
          *v30 = v34;
          *(a2 - 3) = v31;
          v35 = v10[2];
          if (*v30 > v35)
          {
            v10[2] = *v30;
            *v30 = v35;
          }
        }
      }

      else
      {
        if (v34 <= v31)
        {
          v10[2] = v31;
          *v30 = v33;
          v36 = *(a2 - 3);
          if (v36 <= v33)
          {
            goto LABEL_52;
          }

          *v30 = v36;
        }

        else
        {
          v10[2] = v34;
        }

        *(a2 - 3) = v33;
      }

LABEL_52:
      v37 = *v13;
      v38 = *v23;
      v39 = *v30;
      if (*v13 <= *v23)
      {
        if (v39 <= v37)
        {
          goto LABEL_60;
        }

        *v13 = v39;
        *v30 = v37;
        v30 = v13;
        v37 = v38;
        if (v39 > v38)
        {
LABEL_59:
          *v23 = v39;
          *v30 = v38;
LABEL_60:
          v41 = *v10;
          *v10 = v37;
          *v13 = v41;
          --a4;
          v21 = *v10;
          if ((a5 & 1) == 0)
          {
            goto LABEL_61;
          }

          goto LABEL_62;
        }

        v55 = *v10;
        *v10 = v39;
        *v13 = v55;
        --a4;
        v21 = *v10;
        if (a5)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v39 > v37)
      {
        goto LABEL_59;
      }

      *v23 = v37;
      *v13 = v38;
      v23 = v13;
      v37 = v39;
      if (v39 > v38)
      {
        goto LABEL_59;
      }

      v40 = *v10;
      *v10 = v38;
      *v13 = v40;
      --a4;
      v21 = *v10;
      if ((a5 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_62:
      v42 = 0;
      do
      {
        v43 = v10[++v42];
      }

      while (v43 > v21);
      v44 = &v10[v42];
      v45 = a2;
      if (v42 == 1)
      {
        v45 = a2;
        do
        {
          if (v44 >= v45)
          {
            break;
          }

          v47 = *--v45;
        }

        while (v47 <= v21);
      }

      else
      {
        do
        {
          v46 = *--v45;
        }

        while (v46 <= v21);
      }

      if (v44 >= v45)
      {
        v53 = v44 - 1;
        if (v44 - 1 == v10)
        {
          goto LABEL_80;
        }

LABEL_79:
        *v10 = *v53;
        goto LABEL_80;
      }

      v48 = *v45;
      v49 = &v10[v42];
      v50 = v45;
      do
      {
        *v49 = v48;
        *v50 = v43;
        do
        {
          v51 = v49[1];
          ++v49;
          v43 = v51;
        }

        while (v51 > v21);
        do
        {
          v52 = *--v50;
          v48 = v52;
        }

        while (v52 <= v21);
      }

      while (v49 < v50);
      v53 = v49 - 1;
      if (v49 - 1 != v10)
      {
        goto LABEL_79;
      }

LABEL_80:
      *v53 = v21;
      if (v44 < v45)
      {
        goto LABEL_83;
      }

      v54 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> &,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>*>(v10, v53);
      v10 = v53 + 1;
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> &,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>*>(v53 + 1, a2);
      if (result)
      {
        a2 = v53;
        if (!v54)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v54)
      {
LABEL_83:
        result = std::__introsort<std::_ClassicAlgPolicy,std::greater<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> &,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>*,false>(v9, v53, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v53 + 1;
      }
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {
      v79 = v10 + 1;
      v80 = v10[1];
      v81 = v10 + 2;
      v82 = v10[2];
      v83 = *v10;
      if (v80 <= *v10)
      {
        if (v82 > v80)
        {
          *v79 = v82;
          *v81 = v80;
          v84 = v10;
          v85 = v10 + 1;
          result = v80;
          if (v82 > v83)
          {
            goto LABEL_148;
          }

          goto LABEL_149;
        }

LABEL_157:
        v80 = v82;
        v98 = *(a2 - 1);
        if (v98 <= v80)
        {
          return result;
        }
      }

      else
      {
        v84 = v10;
        v85 = v10 + 2;
        result = *v10;
        if (v82 <= v80)
        {
          *v10 = v80;
          v10[1] = v83;
          v84 = v10 + 1;
          v85 = v10 + 2;
          result = v83;
          if (v82 <= v83)
          {
            goto LABEL_157;
          }
        }

LABEL_148:
        *v84 = v82;
        *v85 = v83;
        v80 = result;
LABEL_149:
        v98 = *(a2 - 1);
        if (v98 <= v80)
        {
          return result;
        }
      }

      *v81 = v98;
      *(a2 - 1) = v80;
      v101 = *v81;
      v102 = *v79;
      if (v101 > v102)
      {
        v10[1] = v101;
        v10[2] = v102;
        v103 = *v10;
        if (v101 > *v10)
        {
          *v10 = v101;
          v10[1] = v103;
        }
      }

      return result;
    }

    if (v11 == 5)
    {
      v65 = v10 + 1;
      v66 = v10[1];
      v68 = v10 + 2;
      v67 = v10[2];
      v69 = *v10;
      if (v66 <= *v10)
      {
        if (v67 <= v66)
        {
          v72 = *v10;
          v69 = v10[1];
          v95 = v10[3];
          if (v95 <= v67)
          {
            goto LABEL_167;
          }
        }

        else
        {
          v70 = v10;
          v71 = v10 + 1;
          *v65 = v67;
          *v68 = v66;
          v72 = v67;
          result = v69;
          v73 = v66;
          if (v67 > v69)
          {
            goto LABEL_162;
          }

          v72 = v69;
          v69 = v67;
          v67 = v66;
          v95 = v10[3];
          if (v95 <= v67)
          {
            goto LABEL_167;
          }
        }
      }

      else
      {
        if (v67 > v66)
        {
          v70 = v10;
          v71 = v10 + 2;
          v72 = v10[2];
          result = v10[1];
          v73 = *v10;
          goto LABEL_162;
        }

        v70 = v10 + 1;
        v71 = v10 + 2;
        *v10 = v66;
        v10[1] = v69;
        v72 = v66;
        result = v67;
        v73 = v69;
        if (v67 > v69)
        {
LABEL_162:
          *v70 = v67;
          *v71 = v69;
          v69 = result;
          v67 = v73;
          v95 = v10[3];
          if (v95 > v73)
          {
            goto LABEL_163;
          }

LABEL_167:
          v67 = v95;
LABEL_168:
          v104 = *(a2 - 1);
          if (v104 <= v67)
          {
            return result;
          }

          v10[3] = v104;
          *(a2 - 1) = v67;
          v105 = v10[2];
          v96 = v10[3];
          if (v96 <= v105)
          {
            return result;
          }

          v10[2] = v96;
          v10[3] = v105;
          v106 = v10[1];
          if (v96 <= v106)
          {
            return result;
          }

          v10[1] = v96;
          v10[2] = v106;
          v97 = *v10;
          if (v96 <= *v10)
          {
            return result;
          }

LABEL_172:
          *v10 = v96;
          v10[1] = v97;
          return result;
        }

        v72 = v66;
        v95 = v10[3];
        if (v95 <= v67)
        {
          goto LABEL_167;
        }
      }

LABEL_163:
      v10[2] = v95;
      v10[3] = v67;
      if (v95 > v69)
      {
        *v65 = v95;
        *v68 = v69;
        if (v95 > v72)
        {
          *v10 = v95;
          v10[1] = v72;
        }
      }

      goto LABEL_168;
    }

    goto LABEL_10;
  }

  v76 = *v10;
  v77 = v10[1];
  v78 = *(a2 - 1);
  if (v77 > *v10)
  {
    if (v78 <= v77)
    {
      *v10 = v77;
      v10[1] = v76;
      v107 = *(a2 - 1);
      if (v107 <= v76)
      {
        return result;
      }

      v10[1] = v107;
    }

    else
    {
      *v10 = v78;
    }

    *(a2 - 1) = v76;
    return result;
  }

  if (v78 > v77)
  {
    v10[1] = v78;
    *(a2 - 1) = v77;
    v97 = *v10;
    v96 = v10[1];
    if (v96 > *v10)
    {
      goto LABEL_172;
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> &,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>*>(void *a1, uint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v16 = *a1;
      v17 = a1[1];
      v18 = *(a2 - 1);
      if (v17 > *a1)
      {
        if (v18 <= v17)
        {
          *a1 = v17;
          a1[1] = v16;
          v47 = *(a2 - 1);
          if (v47 <= v16)
          {
            return 1;
          }

          a1[1] = v47;
          *(a2 - 1) = v16;
          return 1;
        }

        else
        {
          *a1 = v18;
          *(a2 - 1) = v16;
          return 1;
        }
      }

      if (v18 <= v17)
      {
        return 1;
      }

      a1[1] = v18;
      *(a2 - 1) = v17;
      v34 = *a1;
      v33 = a1[1];
      if (v33 <= *a1)
      {
        return 1;
      }

LABEL_67:
      *a1 = v33;
      a1[1] = v34;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_16;
      }

      v4 = a1 + 1;
      v5 = a1[1];
      v7 = a1 + 2;
      v6 = a1[2];
      v8 = *a1;
      if (v5 <= *a1)
      {
        if (v6 <= v5)
        {
          v11 = *a1;
          v8 = a1[1];
          v42 = a1[3];
          if (v42 > v6)
          {
            goto LABEL_58;
          }

          goto LABEL_62;
        }

        v9 = a1;
        v10 = a1 + 1;
        *v4 = v6;
        *v7 = v5;
        v11 = v6;
        v12 = v8;
        v13 = v5;
        if (v6 <= v8)
        {
          v11 = v8;
          v8 = v6;
          v6 = v5;
          v42 = a1[3];
          if (v42 > v6)
          {
LABEL_58:
            a1[2] = v42;
            a1[3] = v6;
            if (v42 > v8)
            {
              *v4 = v42;
              *v7 = v8;
              if (v42 > v11)
              {
                *a1 = v42;
                a1[1] = v11;
              }
            }

LABEL_63:
            v48 = *(a2 - 1);
            if (v48 <= v6)
            {
              return 1;
            }

            a1[3] = v48;
            *(a2 - 1) = v6;
            v49 = a1[2];
            v33 = a1[3];
            if (v33 <= v49)
            {
              return 1;
            }

            a1[2] = v33;
            a1[3] = v49;
            v50 = a1[1];
            if (v33 <= v50)
            {
              return 1;
            }

            a1[1] = v33;
            a1[2] = v50;
            v34 = *a1;
            if (v33 <= *a1)
            {
              return 1;
            }

            goto LABEL_67;
          }

LABEL_62:
          v6 = v42;
          goto LABEL_63;
        }
      }

      else if (v6 <= v5)
      {
        v9 = a1 + 1;
        v10 = a1 + 2;
        *a1 = v5;
        a1[1] = v8;
        v11 = v5;
        v12 = v6;
        v13 = v8;
        if (v6 <= v8)
        {
          v11 = v5;
          v42 = a1[3];
          if (v42 > v6)
          {
            goto LABEL_58;
          }

          goto LABEL_62;
        }
      }

      else
      {
        v9 = a1;
        v10 = a1 + 2;
        v11 = a1[2];
        v12 = a1[1];
        v13 = *a1;
      }

      *v9 = v6;
      *v10 = v8;
      v8 = v12;
      v6 = v13;
      v42 = a1[3];
      if (v42 > v13)
      {
        goto LABEL_58;
      }

      goto LABEL_62;
    }

    v25 = a1 + 1;
    v26 = a1[1];
    v27 = a1 + 2;
    v28 = a1[2];
    v29 = *a1;
    if (v26 <= *a1)
    {
      if (v28 <= v26)
      {
        goto LABEL_50;
      }

      *v25 = v28;
      *v27 = v26;
      v30 = a1;
      v31 = a1 + 1;
      v32 = v26;
      if (v28 <= v29)
      {
LABEL_48:
        v43 = *(a2 - 1);
        if (v43 <= v26)
        {
          return 1;
        }

        goto LABEL_51;
      }
    }

    else
    {
      v30 = a1;
      v31 = a1 + 2;
      v32 = *a1;
      if (v28 <= v26)
      {
        *a1 = v26;
        a1[1] = v29;
        v30 = a1 + 1;
        v31 = a1 + 2;
        v32 = v29;
        if (v28 <= v29)
        {
LABEL_50:
          v26 = v28;
          v43 = *(a2 - 1);
          if (v43 <= v26)
          {
            return 1;
          }

LABEL_51:
          *v27 = v43;
          *(a2 - 1) = v26;
          v44 = *v27;
          v45 = *v25;
          if (v44 <= v45)
          {
            return 1;
          }

          a1[1] = v44;
          a1[2] = v45;
          v46 = *a1;
          if (v44 <= *a1)
          {
            return 1;
          }

          *a1 = v44;
          a1[1] = v46;
          return 1;
        }
      }
    }

    *v30 = v28;
    *v31 = v29;
    v26 = v32;
    goto LABEL_48;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 != 2)
  {
LABEL_16:
    v20 = a1 + 2;
    v19 = a1[2];
    v21 = a1[1];
    v22 = *a1;
    if (v21 <= *a1)
    {
      if (v19 <= v21)
      {
        goto LABEL_30;
      }

      a1[1] = v19;
      *v20 = v21;
      v23 = a1;
      v24 = a1 + 1;
    }

    else
    {
      v23 = a1;
      v24 = a1 + 2;
      if (v19 > v21)
      {
LABEL_29:
        *v23 = v19;
        *v24 = v22;
LABEL_30:
        v35 = a1 + 3;
        if (a1 + 3 == a2)
        {
          return 1;
        }

        v36 = 0;
        for (i = 24; ; i += 8)
        {
          v38 = *v35;
          v39 = *v20;
          if (*v35 > v39)
          {
            break;
          }

LABEL_33:
          v20 = v35++;
          if (v35 == a2)
          {
            return 1;
          }
        }

        v40 = i;
        do
        {
          *(a1 + v40) = v39;
          v41 = v40 - 8;
          if (v40 == 8)
          {
            *a1 = v38;
            if (++v36 != 8)
            {
              goto LABEL_33;
            }

            return v35 + 1 == a2;
          }

          v39 = *(a1 + v40 - 16);
          v40 -= 8;
        }

        while (v38 > v39);
        *(a1 + v41) = v38;
        if (++v36 != 8)
        {
          goto LABEL_33;
        }

        return v35 + 1 == a2;
      }

      *a1 = v21;
      a1[1] = v22;
      v23 = a1 + 1;
      v24 = a1 + 2;
    }

    if (v19 <= v22)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v14 = *(a2 - 1);
  v15 = *a1;
  if (v14 <= *a1)
  {
    return 1;
  }

  *a1 = v14;
  *(a2 - 1) = v15;
  return 1;
}

uint64_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> &,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>*,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>*>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  if (a1 == a2)
  {
    return a3;
  }

  v3 = a2 - a1;
  if (v3 >= 2)
  {
    v4 = (v3 - 2) >> 1;
    v5 = v4;
    do
    {
      v6 = 8 * v5;
      if (v4 >= (8 * v5) >> 3)
      {
        v7 = (v6 >> 2) | 1;
        v8 = &a1[v7];
        if ((v6 >> 2) + 2 >= v3)
        {
          v9 = *v8;
          v11 = &a1[v6 / 8];
          v12 = a1[v5];
          if (*v8 <= v12)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v9 = *v8;
          v10 = v8[1];
          if (*v8 >= v10)
          {
            v9 = v8[1];
          }

          if (*v8 > v10)
          {
            ++v8;
            v7 = (v6 >> 2) + 2;
          }

          v11 = &a1[v6 / 8];
          v12 = a1[v5];
          if (v9 <= v12)
          {
LABEL_22:
            while (1)
            {
              *v11 = v9;
              v11 = v8;
              if (v4 < v7)
              {
                break;
              }

              v14 = (2 * v7) | 1;
              v8 = &a1[v14];
              v7 = 2 * v7 + 2;
              if (v7 < v3)
              {
                v9 = *v8;
                v13 = v8[1];
                if (*v8 >= v13)
                {
                  v9 = v8[1];
                }

                if (*v8 <= v13)
                {
                  v7 = v14;
                }

                else
                {
                  ++v8;
                }

                if (v9 > v12)
                {
                  break;
                }
              }

              else
              {
                v9 = *v8;
                v7 = v14;
                if (*v8 > v12)
                {
                  break;
                }
              }
            }

            *v11 = v12;
          }
        }
      }

      v23 = v5-- <= 0;
    }

    while (!v23);
  }

  i = a2;
  if (a2 != a3)
  {
    if (v3 < 2)
    {
      v16 = *a1;
      i = a2;
      do
      {
        v17 = *i;
        if (*i > v16)
        {
          *i = v16;
          *a1 = v17;
          v16 = v17;
        }

        ++i;
      }

      while (i != a3);
      goto LABEL_59;
    }

    v18 = a1 + 2;
    for (i = a2; i != a3; ++i)
    {
      v19 = *i;
      if (*i > *a1)
      {
        *i = *a1;
        *a1 = v19;
        v20 = a1[1];
        if (a2 - a1 == 16)
        {
          v21 = a1 + 1;
          v22 = 1;
          if (v20 <= v19)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v23 = v20 <= *v18;
          if (v20 >= *v18)
          {
            v20 = *v18;
          }

          if (v23)
          {
            v21 = a1 + 1;
          }

          else
          {
            v21 = a1 + 2;
          }

          if (v23)
          {
            v22 = 1;
          }

          else
          {
            v22 = 2;
          }

          if (v20 <= v19)
          {
LABEL_48:
            v24 = a1;
            while (1)
            {
              *v24 = v20;
              v24 = v21;
              if (((v3 - 2) >> 1) < v22)
              {
                break;
              }

              v26 = (2 * v22) | 1;
              v21 = &a1[v26];
              v22 = 2 * v22 + 2;
              if (v22 < v3)
              {
                v20 = *v21;
                v25 = v21[1];
                if (*v21 >= v25)
                {
                  v20 = v21[1];
                }

                if (*v21 <= v25)
                {
                  v22 = v26;
                }

                else
                {
                  ++v21;
                }

                if (v20 > v19)
                {
                  break;
                }
              }

              else
              {
                v20 = *v21;
                v22 = v26;
                if (*v21 > v19)
                {
                  break;
                }
              }
            }

            *v24 = v19;
          }
        }
      }
    }
  }

LABEL_59:
  if (v3 >= 2)
  {
    do
    {
      v28 = 0;
      v29 = *a1;
      v30 = (v3 - 2) >> 1;
      v31 = a1;
      do
      {
        while (1)
        {
          v38 = &v31[v28];
          v37 = v38 + 1;
          v39 = (2 * v28) | 1;
          v28 = 2 * v28 + 2;
          if (v28 < v3)
          {
            break;
          }

          v28 = v39;
          *v31 = *v37;
          v31 = v38 + 1;
          if (v39 > v30)
          {
            goto LABEL_73;
          }
        }

        v34 = v38[2];
        v33 = v38 + 2;
        v32 = v34;
        v35 = *(v33 - 1);
        v36 = v35 <= v34;
        if (v35 < v34)
        {
          v32 = *(v33 - 1);
        }

        if (v36)
        {
          v28 = v39;
        }

        else
        {
          v37 = v33;
        }

        *v31 = v32;
        v31 = v37;
      }

      while (v28 <= v30);
LABEL_73:
      if (v37 == --a2)
      {
        *v37 = v29;
      }

      else
      {
        *v37 = *a2;
        *a2 = v29;
        v40 = (v37 - a1 + 8) >> 3;
        v23 = v40 < 2;
        v41 = v40 - 2;
        if (!v23)
        {
          v42 = v41 >> 1;
          v43 = &a1[v42];
          v44 = *v43;
          v45 = *v37;
          if (*v43 > *v37)
          {
            do
            {
              *v37 = v44;
              v37 = v43;
              if (!v42)
              {
                break;
              }

              v42 = (v42 - 1) >> 1;
              v43 = &a1[v42];
              v44 = *v43;
            }

            while (*v43 > v45);
            *v37 = v45;
          }
        }
      }

      v23 = v3-- <= 2;
    }

    while (!v23);
  }

  return i;
}

char *std::vector<std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>::__assign_with_size[abi:ne200100]<std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>*,std::pair<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>*>(uint64_t a1, uint64_t a2, __int128 *a3, unint64_t a4)
{
  v4 = a2;
  v6 = *(a1 + 16);
  result = *a1;
  if (a4 > (v6 - result) >> 4)
  {
    if (result)
    {
      *(a1 + 8) = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
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

  v12 = *(a1 + 8);
  if (a4 <= (v12 - result) >> 4)
  {
    while (v4 != a3)
    {
      *result = *v4;
      *(result + 1) = *(v4 + 8);
      v4 += 16;
      result += 16;
    }

    *(a1 + 8) = result;
  }

  else
  {
    v13 = (a2 + v12 - result);
    if (v12 != result)
    {
      do
      {
        *result = *v4;
        *(result + 1) = *(v4 + 8);
        v4 += 16;
        result += 16;
      }

      while (v4 != v13);
    }

    if (v13 == a3)
    {
      *(a1 + 8) = v12;
    }

    else
    {
      v14 = v12;
      do
      {
        v15 = *v13++;
        *v12 = v15;
        v12 += 16;
        v14 += 16;
      }

      while (v13 != a3);
      *(a1 + 8) = v14;
    }
  }

  return result;
}

void *std::__function::__value_func<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> ()(operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)>::swap[abi:ne200100](void *result, void *a2)
{
  v8[3] = *MEMORY[0x277D85DE8];
  if (a2 == result)
  {
LABEL_8:
    v6 = *MEMORY[0x277D85DE8];
    return result;
  }

  v3 = result;
  result = result[3];
  v4 = a2[3];
  if (result != v3)
  {
    if (v4 != a2)
    {
      v3[3] = v4;
      a2[3] = result;
      v5 = *MEMORY[0x277D85DE8];
      return result;
    }

    (*(*v4 + 24))(a2[3], v3);
    result = (*(*a2[3] + 32))(a2[3]);
    a2[3] = v3[3];
    v3[3] = v3;
    goto LABEL_8;
  }

  if (v4 == a2)
  {
    (*(*result + 24))(result, v8);
    (*(*v3[3] + 32))(v3[3]);
    v3[3] = 0;
    (*(*a2[3] + 24))(a2[3], v3);
    (*(*a2[3] + 32))(a2[3]);
    a2[3] = 0;
    v3[3] = v3;
    (*(v8[0] + 24))(v8, a2);
    result = (*(v8[0] + 32))(v8);
  }

  else
  {
    (*(*result + 24))(result, a2);
    result = (*(*v3[3] + 32))(v3[3]);
    v3[3] = a2[3];
  }

  a2[3] = a2;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CB487C0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

__n128 std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::CoverCutHelper::GetCoverSizeForBooleans(int)::$_0 &,operations_research::sat::CutTerm *,false>(uint64_t a1, unint64_t a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v8 = (a2 - 56);
  v9 = (a2 - 112);
  v10 = (a2 - 168);
  v11 = a1;
  while (1)
  {
    a1 = v11;
    v12 = a2 - v11;
    v13 = 0x6DB6DB6DB6DB6DB7 * ((a2 - v11) >> 3);
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v207 = *(a2 - 56);
        v206 = a2 - 56;
        result.n128_f64[0] = v207;
        v208 = *(v206 + 8) < *(v11 + 8);
        v209 = v207 > *v11;
        if (result.n128_f64[0] != *v11)
        {
          v208 = v209;
        }

        if (v208)
        {
          v451 = *(v11 + 48);
          v379 = *(v11 + 16);
          v415 = *(v11 + 32);
          v343 = *v11;
          v210 = *v206;
          v211 = *(v206 + 16);
          v212 = *(v206 + 32);
          *(v11 + 48) = *(v206 + 48);
          *(v11 + 16) = v211;
          *(v11 + 32) = v212;
          *v11 = v210;
          result = v343;
          *(v206 + 48) = v451;
          *(v206 + 16) = v379;
          *(v206 + 32) = v415;
          *v206 = v343;
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

      result.n128_u64[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CoverCutHelper::GetCoverSizeForBooleans(int)::$_0 &,operations_research::sat::CutTerm *,0>(v11, (v11 + 56), (v11 + 112), (a2 - 56), result).n128_u64[0];
      return result;
    }

    if (v13 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CoverCutHelper::GetCoverSizeForBooleans(int)::$_0 &,operations_research::sat::CutTerm *,0>(v11, (v11 + 56), (v11 + 112), (v11 + 168), result);
      v192 = *(a2 - 56);
      v191 = a2 - 56;
      result.n128_f64[0] = v192;
      v193 = *(v11 + 168);
      v194 = *(v191 + 8) < *(v11 + 176);
      v195 = v192 > v193;
      if (v192 != v193)
      {
        v194 = v195;
      }

      if (v194)
      {
        v447 = *(v11 + 216);
        v375 = *(v11 + 184);
        v411 = *(v11 + 200);
        v339 = *(v11 + 168);
        result = *v191;
        v196 = *(v191 + 16);
        v197 = *(v191 + 32);
        *(v11 + 216) = *(v191 + 48);
        *(v11 + 200) = v197;
        *(v11 + 184) = v196;
        *(v11 + 168) = result;
        *(v191 + 48) = v447;
        *(v191 + 16) = v375;
        *(v191 + 32) = v411;
        *v191 = v339;
        result.n128_u64[0] = *(v11 + 168);
        v198 = *(v11 + 112);
        v199 = *(v11 + 176) < *(v11 + 120);
        if (result.n128_f64[0] != v198)
        {
          v199 = result.n128_f64[0] > v198;
        }

        if (v199)
        {
          v448 = *(v11 + 160);
          v376 = *(v11 + 128);
          v412 = *(v11 + 144);
          v340 = *(v11 + 112);
          v200 = *(v11 + 184);
          *(v11 + 112) = *(v11 + 168);
          *(v11 + 128) = v200;
          *(v11 + 144) = *(v11 + 200);
          *(v11 + 160) = *(v11 + 216);
          *(v11 + 184) = v376;
          *(v11 + 200) = v412;
          *(v11 + 216) = v448;
          *(v11 + 168) = v340;
          result.n128_u64[0] = *(v11 + 112);
          v201 = *(v11 + 56);
          v202 = *(v11 + 120) < *(v11 + 64);
          if (result.n128_f64[0] != v201)
          {
            v202 = result.n128_f64[0] > v201;
          }

          if (v202)
          {
            v449 = *(v11 + 104);
            v377 = *(v11 + 72);
            v413 = *(v11 + 88);
            v341 = *(v11 + 56);
            v203 = *(v11 + 128);
            *(v11 + 56) = *(v11 + 112);
            *(v11 + 72) = v203;
            *(v11 + 88) = *(v11 + 144);
            *(v11 + 104) = *(v11 + 160);
            *(v11 + 128) = v377;
            *(v11 + 144) = v413;
            *(v11 + 160) = v449;
            *(v11 + 112) = v341;
            result.n128_u64[0] = *(v11 + 56);
            v204 = *(v11 + 64) < *(v11 + 8);
            if (result.n128_f64[0] != *v11)
            {
              v204 = result.n128_f64[0] > *v11;
            }

            if (v204)
            {
              v450 = *(v11 + 48);
              v378 = *(v11 + 16);
              v414 = *(v11 + 32);
              v342 = *v11;
              v205 = *(v11 + 72);
              *v11 = *(v11 + 56);
              *(v11 + 16) = v205;
              *(v11 + 32) = *(v11 + 88);
              *(v11 + 48) = *(v11 + 104);
              result = v414;
              *(v11 + 72) = v378;
              *(v11 + 88) = v414;
              *(v11 + 104) = v450;
              *(v11 + 56) = v342;
            }
          }
        }
      }

      return result;
    }

LABEL_9:
    if (v12 <= 1343)
    {
      v222 = v11 + 56;
      v224 = v11 == a2 || v222 == a2;
      if (a4)
      {
        if (!v224)
        {
          v225 = 0;
          v226 = v11;
          do
          {
            v228 = v222;
            result.n128_u64[0] = *(v226 + 56);
            v229 = *(v226 + 64);
            v230 = v229 < *(v226 + 8);
            if (result.n128_f64[0] != *v226)
            {
              v230 = result.n128_f64[0] > *v226;
            }

            if (v230)
            {
              v417 = *(v226 + 104);
              v345 = *(v226 + 72);
              v381 = *(v226 + 88);
              v231 = v225;
              do
              {
                v232 = v11 + v231;
                v233 = *(v11 + v231 + 16);
                *(v232 + 56) = *(v11 + v231);
                *(v232 + 72) = v233;
                *(v232 + 88) = *(v11 + v231 + 32);
                *(v232 + 104) = *(v11 + v231 + 48);
                if (!v231)
                {
                  v227 = v11;
                  goto LABEL_202;
                }

                v234 = *(v232 - 56);
                v235 = v229 < *(v232 - 48);
                if (result.n128_f64[0] != v234)
                {
                  v235 = result.n128_f64[0] > v234;
                }

                v231 -= 56;
              }

              while (v235);
              v227 = v11 + v231 + 56;
LABEL_202:
              *v227 = result.n128_u64[0];
              *(v227 + 8) = v229;
              result = v381;
              *(v227 + 16) = v345;
              *(v227 + 32) = v381;
              *(v227 + 48) = v417;
            }

            v222 = v228 + 56;
            v225 += 56;
            v226 = v228;
          }

          while (v228 + 56 != a2);
        }
      }

      else if (!v224)
      {
        v292 = v11 + 72;
        do
        {
          v293 = v222;
          result.n128_u64[0] = *(a1 + 56);
          v294 = *(a1 + 64);
          v295 = v294 < *(a1 + 8);
          if (result.n128_f64[0] != *a1)
          {
            v295 = result.n128_f64[0] > *a1;
          }

          if (v295)
          {
            v422 = *(a1 + 104);
            v350 = *(a1 + 72);
            v386 = *(a1 + 88);
            v296 = v292;
            do
            {
              v297 = *(v296 - 56);
              *(v296 - 16) = *(v296 - 72);
              *v296 = v297;
              *(v296 + 16) = *(v296 - 40);
              *(v296 + 32) = *(v296 - 24);
              v298 = *(v296 - 128);
              v299 = v294 < *(v296 - 120);
              if (result.n128_f64[0] != v298)
              {
                v299 = result.n128_f64[0] > v298;
              }

              v296 -= 56;
            }

            while (v299);
            *(v296 - 16) = result.n128_u64[0];
            *(v296 - 8) = v294;
            result = v350;
            *(v296 + 32) = v422;
            *v296 = v350;
            *(v296 + 16) = v386;
          }

          v222 = v293 + 56;
          v292 += 56;
          a1 = v293;
        }

        while (v293 + 56 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v11 != a2)
      {
        v236 = (v13 - 2) >> 1;
        v237 = v236;
        do
        {
          v238 = v237;
          v239 = 56 * v237;
          v240 = 0x6DB6DB6DB6DB6DB7 * ((56 * v237) >> 3);
          if (v236 >= v240)
          {
            v241 = 2 * v240;
            v242 = (2 * v240) | 1;
            v243 = v11 + 56 * v242;
            v244 = v241 + 2;
            if (v244 >= v13)
            {
              v245 = *v243;
            }

            else
            {
              v245 = *(v243 + 56);
              v246 = *(v243 + 8) < *(v243 + 64);
              if (*v243 != v245)
              {
                v246 = *v243 > v245;
              }

              if (v246)
              {
                v243 += 56;
              }

              else
              {
                v245 = *v243;
              }

              if (v246)
              {
                v242 = v244;
              }
            }

            v247 = v11 + v239;
            v248 = *v247;
            v249 = *(v247 + 8);
            v250 = *(v243 + 8) < v249;
            if (v245 != *v247)
            {
              v250 = v245 > *v247;
            }

            if (!v250)
            {
              v418 = *(v247 + 48);
              v346 = *(v247 + 16);
              v382 = *(v247 + 32);
              do
              {
                v255 = v247;
                v247 = v243;
                v256 = *v243;
                v257 = *(v243 + 16);
                v258 = *(v243 + 32);
                *(v255 + 48) = *(v243 + 48);
                *(v255 + 16) = v257;
                *(v255 + 32) = v258;
                *v255 = v256;
                if (v236 < v242)
                {
                  break;
                }

                v259 = (2 * v242) | 1;
                v243 = v11 + 56 * v259;
                v242 = 2 * v242 + 2;
                if (v242 < v13)
                {
                  v251 = *v243;
                  v252 = *(v243 + 56);
                  v253 = *(v243 + 8) < *(v243 + 64);
                  if (*v243 != v252)
                  {
                    v253 = *v243 > v252;
                  }

                  if (v253)
                  {
                    v251 = *(v243 + 56);
                    v243 += 56;
                  }

                  else
                  {
                    v242 = v259;
                  }
                }

                else
                {
                  v251 = *v243;
                  v242 = v259;
                }

                v254 = *(v243 + 8) < v249;
                if (v251 != v248)
                {
                  v254 = v251 > v248;
                }
              }

              while (!v254);
              *v247 = v248;
              *(v247 + 8) = v249;
              *(v247 + 16) = v346;
              *(v247 + 32) = v382;
              *(v247 + 48) = v418;
            }
          }

          v237 = v238 - 1;
        }

        while (v238);
        v260 = 0x6DB6DB6DB6DB6DB7 * (v12 >> 3);
        do
        {
          v262 = 0;
          v453 = *(v11 + 48);
          v383 = *(v11 + 16);
          v419 = *(v11 + 32);
          v347 = *v11;
          v263 = v11;
          do
          {
            v273 = v263 + 56 * v262;
            v269 = v273 + 56;
            v274 = (2 * v262) | 1;
            v262 = 2 * v262 + 2;
            if (v262 < v260)
            {
              v265 = *(v273 + 112);
              v264 = v273 + 112;
              v266 = *(v264 - 56);
              v267 = *(v264 - 48) < *(v264 + 8);
              v268 = v266 > v265;
              if (v266 != v265)
              {
                v267 = v268;
              }

              if (v267)
              {
                v269 = v264;
              }

              else
              {
                v262 = v274;
              }
            }

            else
            {
              v262 = v274;
            }

            v270 = *v269;
            v271 = *(v269 + 16);
            v272 = *(v269 + 32);
            *(v263 + 48) = *(v269 + 48);
            *(v263 + 16) = v271;
            *(v263 + 32) = v272;
            *v263 = v270;
            v263 = v269;
          }

          while (v262 <= ((v260 - 2) >> 1));
          a2 -= 56;
          if (v269 == a2)
          {
            result = v347;
            *(v269 + 48) = v453;
            *(v269 + 16) = v383;
            *(v269 + 32) = v419;
            *v269 = v347;
          }

          else
          {
            v275 = *a2;
            v276 = *(a2 + 16);
            v277 = *(a2 + 32);
            *(v269 + 48) = *(a2 + 48);
            *(v269 + 16) = v276;
            *(v269 + 32) = v277;
            *v269 = v275;
            result = v347;
            *(a2 + 48) = v453;
            *(a2 + 16) = v383;
            *(a2 + 32) = v419;
            *a2 = v347;
            v278 = v269 - v11 + 56;
            if (v278 >= 57)
            {
              v279 = (0x6DB6DB6DB6DB6DB7 * (v278 >> 3) - 2) >> 1;
              v280 = v11 + 56 * v279;
              result.n128_u64[0] = *v269;
              v281 = *(v269 + 8);
              v282 = *(v280 + 8) < v281;
              if (*v280 != *v269)
              {
                v282 = *v280 > *v269;
              }

              if (v282)
              {
                v315 = *(v269 + 48);
                v309 = *(v269 + 16);
                v312 = *(v269 + 32);
                do
                {
                  v283 = v269;
                  v269 = v280;
                  v284 = *v280;
                  v285 = *(v280 + 16);
                  v286 = *(v280 + 32);
                  *(v283 + 48) = *(v280 + 48);
                  *(v283 + 16) = v285;
                  *(v283 + 32) = v286;
                  *v283 = v284;
                  if (!v279)
                  {
                    break;
                  }

                  v279 = (v279 - 1) >> 1;
                  v280 = v11 + 56 * v279;
                  v287 = *(v280 + 8) < v281;
                  if (*v280 != result.n128_f64[0])
                  {
                    v287 = *v280 > result.n128_f64[0];
                  }
                }

                while (v287);
                *v269 = result.n128_u64[0];
                *(v269 + 8) = v281;
                result = v312;
                *(v269 + 16) = v309;
                *(v269 + 32) = v312;
                *(v269 + 48) = v315;
              }
            }
          }
        }

        while (v260-- > 2);
      }

      return result;
    }

    v14 = v13 >> 1;
    v15 = v11 + 56 * (v13 >> 1);
    v16 = *(a2 - 56);
    v17 = *(a2 - 48);
    if (v12 < 0x1C01)
    {
      v25 = *v11;
      v26 = *(v11 + 8);
      v27 = v26 < *(v15 + 8);
      if (*v11 != *v15)
      {
        v27 = *v11 > *v15;
      }

      v28 = v17 < v26;
      if (v16 != v25)
      {
        v28 = v16 > v25;
      }

      if (v27)
      {
        if (v28)
        {
          v425 = *(v15 + 48);
          v353 = *(v15 + 16);
          v389 = *(v15 + 32);
          v317 = *v15;
          v29 = *v8;
          v30 = *(a2 - 40);
          v31 = *(a2 - 24);
          *(v15 + 48) = *(a2 - 8);
          *(v15 + 16) = v30;
          *(v15 + 32) = v31;
          *v15 = v29;
          goto LABEL_58;
        }

        v434 = *(v15 + 48);
        v362 = *(v15 + 16);
        v398 = *(v15 + 32);
        v326 = *v15;
        v77 = *v11;
        v78 = *(v11 + 16);
        v79 = *(v11 + 32);
        *(v15 + 48) = *(v11 + 48);
        *(v15 + 16) = v78;
        *(v15 + 32) = v79;
        *v15 = v77;
        *(v11 + 48) = v434;
        *(v11 + 16) = v362;
        *(v11 + 32) = v398;
        *v11 = v326;
        v80 = *(a2 - 56);
        v81 = *(a2 - 48) < *(v11 + 8);
        if (v80 != *v11)
        {
          v81 = v80 > *v11;
        }

        if (v81)
        {
          v425 = *(v11 + 48);
          v353 = *(v11 + 16);
          v389 = *(v11 + 32);
          v317 = *v11;
          v82 = *v8;
          v83 = *(a2 - 40);
          v84 = *(a2 - 24);
          *(v11 + 48) = *(a2 - 8);
          *(v11 + 16) = v83;
          *(v11 + 32) = v84;
          *v11 = v82;
LABEL_58:
          *(a2 - 8) = v425;
          *(a2 - 40) = v353;
          *(a2 - 24) = v389;
          *v8 = v317;
        }
      }

      else if (v28)
      {
        v428 = *(v11 + 48);
        v356 = *(v11 + 16);
        v392 = *(v11 + 32);
        v320 = *v11;
        v39 = *v8;
        v40 = *(a2 - 40);
        v41 = *(a2 - 24);
        *(v11 + 48) = *(a2 - 8);
        *(v11 + 16) = v40;
        *(v11 + 32) = v41;
        *v11 = v39;
        *(a2 - 8) = v428;
        *(a2 - 40) = v356;
        *(a2 - 24) = v392;
        *v8 = v320;
        v42 = *(v11 + 8) < *(v15 + 8);
        if (*v11 != *v15)
        {
          v42 = *v11 > *v15;
        }

        if (v42)
        {
          v429 = *(v15 + 48);
          v357 = *(v15 + 16);
          v393 = *(v15 + 32);
          v321 = *v15;
          v43 = *v11;
          v44 = *(v11 + 16);
          v45 = *(v11 + 32);
          *(v15 + 48) = *(v11 + 48);
          *(v15 + 16) = v44;
          *(v15 + 32) = v45;
          *v15 = v43;
          *(v11 + 48) = v429;
          *(v11 + 16) = v357;
          *(v11 + 32) = v393;
          *v11 = v321;
          --a3;
          v46 = *v11;
          if (a4)
          {
            goto LABEL_60;
          }

          goto LABEL_101;
        }
      }

      --a3;
      v46 = *v11;
      if (a4)
      {
        goto LABEL_60;
      }

      goto LABEL_101;
    }

    v18 = *v15;
    v19 = *(v15 + 8);
    v20 = v19 < *(v11 + 8);
    if (*v15 != *v11)
    {
      v20 = *v15 > *v11;
    }

    v21 = v17 < v19;
    if (v16 != v18)
    {
      v21 = v16 > v18;
    }

    if (v20)
    {
      if (v21)
      {
        v424 = *(v11 + 48);
        v352 = *(v11 + 16);
        v388 = *(v11 + 32);
        v316 = *v11;
        v22 = *v8;
        v23 = *(a2 - 40);
        v24 = *(a2 - 24);
        *(v11 + 48) = *(a2 - 8);
        *(v11 + 16) = v23;
        *(v11 + 32) = v24;
        *v11 = v22;
LABEL_41:
        *(a2 - 8) = v424;
        *(a2 - 40) = v352;
        *(a2 - 24) = v388;
        *v8 = v316;
        goto LABEL_42;
      }

      v430 = *(v11 + 48);
      v358 = *(v11 + 16);
      v394 = *(v11 + 32);
      v322 = *v11;
      v47 = *v15;
      v48 = *(v15 + 16);
      v49 = *(v15 + 32);
      *(v11 + 48) = *(v15 + 48);
      *(v11 + 16) = v48;
      *(v11 + 32) = v49;
      *v11 = v47;
      *(v15 + 48) = v430;
      *(v15 + 16) = v358;
      *(v15 + 32) = v394;
      *v15 = v322;
      v50 = *(a2 - 56);
      v51 = *(a2 - 48) < *(v15 + 8);
      if (v50 != *v15)
      {
        v51 = v50 > *v15;
      }

      if (v51)
      {
        v424 = *(v15 + 48);
        v352 = *(v15 + 16);
        v388 = *(v15 + 32);
        v316 = *v15;
        v52 = *v8;
        v53 = *(a2 - 40);
        v54 = *(a2 - 24);
        *(v15 + 48) = *(a2 - 8);
        *(v15 + 16) = v53;
        *(v15 + 32) = v54;
        *v15 = v52;
        goto LABEL_41;
      }
    }

    else if (v21)
    {
      v426 = *(v15 + 48);
      v354 = *(v15 + 16);
      v390 = *(v15 + 32);
      v318 = *v15;
      v32 = *v8;
      v33 = *(a2 - 40);
      v34 = *(a2 - 24);
      *(v15 + 48) = *(a2 - 8);
      *(v15 + 16) = v33;
      *(v15 + 32) = v34;
      *v15 = v32;
      *(a2 - 8) = v426;
      *(a2 - 40) = v354;
      *(a2 - 24) = v390;
      *v8 = v318;
      v35 = *(v15 + 8) < *(v11 + 8);
      if (*v15 != *v11)
      {
        v35 = *v15 > *v11;
      }

      if (v35)
      {
        v427 = *(v11 + 48);
        v355 = *(v11 + 16);
        v391 = *(v11 + 32);
        v319 = *v11;
        v36 = *v15;
        v37 = *(v15 + 16);
        v38 = *(v15 + 32);
        *(v11 + 48) = *(v15 + 48);
        *(v11 + 16) = v37;
        *(v11 + 32) = v38;
        *v11 = v36;
        *(v15 + 48) = v427;
        *(v15 + 16) = v355;
        *(v15 + 32) = v391;
        *v15 = v319;
      }
    }

LABEL_42:
    v55 = (v11 + 56);
    v56 = *(v11 + 56);
    v57 = v11 + 56 * v14;
    v59 = *(v57 - 56);
    v58 = v57 - 56;
    v60 = v59;
    v61 = *(v58 + 8);
    v62 = v61 < *(v11 + 64);
    v63 = v59 > v56;
    if (v59 != v56)
    {
      v62 = v63;
    }

    v64 = *(a2 - 112);
    v65 = *(a2 - 104) < v61;
    if (v64 != v60)
    {
      v65 = v64 > v60;
    }

    if (v62)
    {
      if (v65)
      {
        v431 = *(v11 + 104);
        v359 = *(v11 + 72);
        v395 = *(v11 + 88);
        v323 = *v55;
        v66 = *v9;
        v67 = *(a2 - 96);
        v68 = *(a2 - 80);
        *(v11 + 104) = *(a2 - 64);
        *(v11 + 72) = v67;
        *(v11 + 88) = v68;
        *v55 = v66;
LABEL_65:
        *(a2 - 64) = v431;
        *(a2 - 96) = v359;
        *(a2 - 80) = v395;
        *v9 = v323;
        goto LABEL_66;
      }

      v435 = *(v11 + 104);
      v363 = *(v11 + 72);
      v399 = *(v11 + 88);
      v327 = *v55;
      v86 = *v58;
      v87 = *(v58 + 16);
      v88 = *(v58 + 32);
      *(v11 + 104) = *(v58 + 48);
      *(v11 + 72) = v87;
      *(v11 + 88) = v88;
      *v55 = v86;
      *(v58 + 48) = v435;
      *(v58 + 16) = v363;
      *(v58 + 32) = v399;
      *v58 = v327;
      v89 = *(a2 - 112);
      v90 = *(a2 - 104) < *(v58 + 8);
      if (v89 != *v58)
      {
        v90 = v89 > *v58;
      }

      if (v90)
      {
        v431 = *(v58 + 48);
        v359 = *(v58 + 16);
        v395 = *(v58 + 32);
        v323 = *v58;
        v91 = *v9;
        v92 = *(a2 - 96);
        v93 = *(a2 - 80);
        *(v58 + 48) = *(a2 - 64);
        *(v58 + 16) = v92;
        *(v58 + 32) = v93;
        *v58 = v91;
        goto LABEL_65;
      }
    }

    else if (v65)
    {
      v432 = *(v58 + 48);
      v360 = *(v58 + 16);
      v396 = *(v58 + 32);
      v324 = *v58;
      v69 = *v9;
      v70 = *(a2 - 96);
      v71 = *(a2 - 80);
      *(v58 + 48) = *(a2 - 64);
      *(v58 + 16) = v70;
      *(v58 + 32) = v71;
      *v58 = v69;
      *(a2 - 64) = v432;
      *(a2 - 96) = v360;
      *(a2 - 80) = v396;
      *v9 = v324;
      v72 = *(v11 + 56);
      v73 = *(v58 + 8) < *(v11 + 64);
      if (*v58 != v72)
      {
        v73 = *v58 > v72;
      }

      if (v73)
      {
        v433 = *(v11 + 104);
        v361 = *(v11 + 72);
        v397 = *(v11 + 88);
        v325 = *v55;
        v74 = *v58;
        v75 = *(v58 + 16);
        v76 = *(v58 + 32);
        *(v11 + 104) = *(v58 + 48);
        *(v11 + 72) = v75;
        *(v11 + 88) = v76;
        *v55 = v74;
        *(v58 + 48) = v433;
        *(v58 + 16) = v361;
        *(v58 + 32) = v397;
        *v58 = v325;
      }
    }

LABEL_66:
    v94 = (v11 + 112);
    v95 = *(v11 + 112);
    v96 = v11 + 56 * v14;
    v98 = *(v96 + 56);
    v97 = v96 + 56;
    v99 = v98;
    v100 = *(v97 + 8);
    v101 = v100 < *(v11 + 120);
    v102 = v98 > v95;
    if (v98 != v95)
    {
      v101 = v102;
    }

    v103 = *(a2 - 168);
    v104 = *(a2 - 160) < v100;
    if (v103 != v99)
    {
      v104 = v103 > v99;
    }

    if (v101)
    {
      if (v104)
      {
        v436 = *(v11 + 160);
        v364 = *(v11 + 128);
        v400 = *(v11 + 144);
        v328 = *v94;
        v105 = *v10;
        v106 = *(a2 - 152);
        v107 = *(a2 - 136);
        *(v11 + 160) = *(a2 - 120);
        *(v11 + 128) = v106;
        *(v11 + 144) = v107;
        *v94 = v105;
LABEL_82:
        *(a2 - 120) = v436;
        *(a2 - 152) = v364;
        *(a2 - 136) = v400;
        *v10 = v328;
        goto LABEL_83;
      }

      v439 = *(v11 + 160);
      v367 = *(v11 + 128);
      v403 = *(v11 + 144);
      v331 = *v94;
      v116 = *v97;
      v117 = *(v97 + 16);
      v118 = *(v97 + 32);
      *(v11 + 160) = *(v97 + 48);
      *(v11 + 128) = v117;
      *(v11 + 144) = v118;
      *v94 = v116;
      *(v97 + 48) = v439;
      *(v97 + 16) = v367;
      *(v97 + 32) = v403;
      *v97 = v331;
      v119 = *(a2 - 168);
      v120 = *(a2 - 160) < *(v97 + 8);
      if (v119 != *v97)
      {
        v120 = v119 > *v97;
      }

      if (v120)
      {
        v436 = *(v97 + 48);
        v364 = *(v97 + 16);
        v400 = *(v97 + 32);
        v328 = *v97;
        v121 = *v10;
        v122 = *(a2 - 152);
        v123 = *(a2 - 136);
        *(v97 + 48) = *(a2 - 120);
        *(v97 + 16) = v122;
        *(v97 + 32) = v123;
        *v97 = v121;
        goto LABEL_82;
      }
    }

    else if (v104)
    {
      v437 = *(v97 + 48);
      v365 = *(v97 + 16);
      v401 = *(v97 + 32);
      v329 = *v97;
      v108 = *v10;
      v109 = *(a2 - 152);
      v110 = *(a2 - 136);
      *(v97 + 48) = *(a2 - 120);
      *(v97 + 16) = v109;
      *(v97 + 32) = v110;
      *v97 = v108;
      *(a2 - 120) = v437;
      *(a2 - 152) = v365;
      *(a2 - 136) = v401;
      *v10 = v329;
      v111 = *(v11 + 112);
      v112 = *(v97 + 8) < *(v11 + 120);
      if (*v97 != v111)
      {
        v112 = *v97 > v111;
      }

      if (v112)
      {
        v438 = *(v11 + 160);
        v366 = *(v11 + 128);
        v402 = *(v11 + 144);
        v330 = *v94;
        v113 = *v97;
        v114 = *(v97 + 16);
        v115 = *(v97 + 32);
        *(v11 + 160) = *(v97 + 48);
        *(v11 + 128) = v114;
        *(v11 + 144) = v115;
        *v94 = v113;
        *(v97 + 48) = v438;
        *(v97 + 16) = v366;
        *(v97 + 32) = v402;
        *v97 = v330;
      }
    }

LABEL_83:
    v124 = *v15;
    v125 = *(v15 + 8);
    v126 = v125 < *(v58 + 8);
    if (*v15 != *v58)
    {
      v126 = *v15 > *v58;
    }

    v127 = *(v97 + 8) < v125;
    if (*v97 != v124)
    {
      v127 = *v97 > v124;
    }

    if (v126)
    {
      if (v127)
      {
        v440 = *(v58 + 48);
        v368 = *(v58 + 16);
        v404 = *(v58 + 32);
        v332 = *v58;
        v128 = *(v97 + 16);
        *v58 = *v97;
        *(v58 + 16) = v128;
        *(v58 + 32) = *(v97 + 32);
        *(v58 + 48) = *(v97 + 48);
LABEL_99:
        *(v97 + 16) = v368;
        *(v97 + 32) = v404;
        *(v97 + 48) = v440;
        *v97 = v332;
        goto LABEL_100;
      }

      v443 = *(v58 + 48);
      v371 = *(v58 + 16);
      v407 = *(v58 + 32);
      v335 = *v58;
      v132 = *(v15 + 16);
      *v58 = *v15;
      *(v58 + 16) = v132;
      *(v58 + 32) = *(v15 + 32);
      *(v58 + 48) = *(v15 + 48);
      *(v15 + 16) = v371;
      *(v15 + 32) = v407;
      *(v15 + 48) = v443;
      *v15 = v335;
      v133 = *(v97 + 8) < *(v15 + 8);
      if (*v97 != *v15)
      {
        v133 = *v97 > *v15;
      }

      if (v133)
      {
        v440 = *(v15 + 48);
        v368 = *(v15 + 16);
        v404 = *(v15 + 32);
        v332 = *v15;
        v134 = *(v97 + 16);
        *v15 = *v97;
        *(v15 + 16) = v134;
        *(v15 + 32) = *(v97 + 32);
        *(v15 + 48) = *(v97 + 48);
        goto LABEL_99;
      }
    }

    else if (v127)
    {
      v441 = *(v15 + 48);
      v369 = *(v15 + 16);
      v405 = *(v15 + 32);
      v333 = *v15;
      v129 = *(v97 + 16);
      *v15 = *v97;
      *(v15 + 16) = v129;
      *(v15 + 32) = *(v97 + 32);
      *(v15 + 48) = *(v97 + 48);
      *(v97 + 16) = v369;
      *(v97 + 32) = v405;
      *(v97 + 48) = v441;
      *v97 = v333;
      v130 = *(v15 + 8) < *(v58 + 8);
      if (*v15 != *v58)
      {
        v130 = *v15 > *v58;
      }

      if (v130)
      {
        v442 = *(v58 + 48);
        v370 = *(v58 + 16);
        v406 = *(v58 + 32);
        v334 = *v58;
        v131 = *(v15 + 16);
        *v58 = *v15;
        *(v58 + 16) = v131;
        *(v58 + 32) = *(v15 + 32);
        *(v58 + 48) = *(v15 + 48);
        *(v15 + 16) = v370;
        *(v15 + 32) = v406;
        *(v15 + 48) = v442;
        *v15 = v334;
      }
    }

LABEL_100:
    v444 = *(v11 + 48);
    v372 = *(v11 + 16);
    v408 = *(v11 + 32);
    v336 = *v11;
    v135 = *v15;
    v136 = *(v15 + 16);
    v137 = *(v15 + 32);
    *(v11 + 48) = *(v15 + 48);
    *(v11 + 16) = v136;
    *(v11 + 32) = v137;
    *v11 = v135;
    *(v15 + 48) = v444;
    *(v15 + 16) = v372;
    *(v15 + 32) = v408;
    *v15 = v336;
    --a3;
    v46 = *v11;
    if (a4)
    {
LABEL_60:
      v85 = *(v11 + 8);
      goto LABEL_104;
    }

LABEL_101:
    v138 = *(v11 - 56);
    v85 = *(v11 + 8);
    v139 = *(v11 - 48) < v85;
    if (v138 != v46)
    {
      v139 = v138 > v46;
    }

    if (v139)
    {
LABEL_104:
      v140 = 0;
      v307 = *(v11 + 16);
      v310 = *(v11 + 32);
      v313 = *(v11 + 48);
      do
      {
        v141 = *(v11 + v140 + 56);
        v142 = *(v11 + v140 + 64) < v85;
        if (v141 != v46)
        {
          v142 = v141 > v46;
        }

        v140 += 56;
      }

      while (v142);
      v143 = v11 + v140;
      v144 = a2;
      if (v140 == 56)
      {
        v144 = a2;
        do
        {
          if (v143 >= v144)
          {
            break;
          }

          v148 = *(v144 - 56);
          v144 -= 56;
          v149 = *(v144 + 8) < v85;
          v150 = v148 > v46;
          if (v148 != v46)
          {
            v149 = v150;
          }
        }

        while (!v149);
      }

      else
      {
        do
        {
          v145 = *(v144 - 56);
          v144 -= 56;
          v146 = *(v144 + 8) < v85;
          v147 = v145 > v46;
          if (v145 != v46)
          {
            v146 = v147;
          }
        }

        while (!v146);
      }

      v11 = v143;
      if (v143 < v144)
      {
        v151 = v144;
        do
        {
          v445 = *(v11 + 48);
          v373 = *(v11 + 16);
          v409 = *(v11 + 32);
          v337 = *v11;
          v152 = *v151;
          v153 = *(v151 + 16);
          v154 = *(v151 + 32);
          *(v11 + 48) = *(v151 + 48);
          *(v11 + 16) = v153;
          *(v11 + 32) = v154;
          *v11 = v152;
          *(v151 + 48) = v445;
          *(v151 + 16) = v373;
          *(v151 + 32) = v409;
          *v151 = v337;
          do
          {
            v155 = *(v11 + 56);
            v11 += 56;
            v156 = *(v11 + 8) < v85;
            v157 = v155 > v46;
            if (v155 != v46)
            {
              v156 = v157;
            }
          }

          while (v156);
          do
          {
            v158 = *(v151 - 56);
            v151 -= 56;
            v159 = *(v151 + 8) < v85;
            v160 = v158 > v46;
            if (v158 != v46)
            {
              v159 = v160;
            }
          }

          while (!v159);
        }

        while (v11 < v151);
      }

      if (v11 - 56 != a1)
      {
        v161 = *(v11 - 56);
        v162 = *(v11 - 40);
        v163 = *(v11 - 24);
        *(a1 + 48) = *(v11 - 8);
        *(a1 + 16) = v162;
        *(a1 + 32) = v163;
        *a1 = v161;
      }

      *(v11 - 56) = v46;
      *(v11 - 48) = v85;
      *(v11 - 8) = v313;
      *(v11 - 24) = v310;
      *(v11 - 40) = v307;
      if (v143 < v144)
      {
        goto LABEL_133;
      }

      v164 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CoverCutHelper::GetCoverSizeForBooleans(int)::$_0 &,operations_research::sat::CutTerm *>(a1, v11 - 56, v307);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CoverCutHelper::GetCoverSizeForBooleans(int)::$_0 &,operations_research::sat::CutTerm *>(v11, a2, v165))
      {
        a2 = v11 - 56;
        if ((v164 & 1) == 0)
        {
          goto LABEL_1;
        }

        return result;
      }

      if ((v164 & 1) == 0)
      {
LABEL_133:
        std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::CoverCutHelper::GetCoverSizeForBooleans(int)::$_0 &,operations_research::sat::CutTerm *,false>(a1, v11 - 56, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v308 = *(v11 + 16);
      v311 = *(v11 + 32);
      v314 = *(v11 + 48);
      v166 = *(a2 - 56);
      v167 = v85 < *(a2 - 48);
      if (v46 != v166)
      {
        v167 = v46 > v166;
      }

      if (v167)
      {
        do
        {
          v168 = *(v11 + 56);
          v11 += 56;
          v169 = v85 < *(v11 + 8);
          v170 = v46 > v168;
          if (v46 != v168)
          {
            v169 = v170;
          }
        }

        while (!v169);
      }

      else
      {
        v171 = v11 + 56;
        do
        {
          v11 = v171;
          if (v171 >= a2)
          {
            break;
          }

          v172 = *v171;
          v173 = v85 < *(v171 + 8);
          v174 = v46 > v172;
          if (v46 == v172)
          {
            v174 = v173;
          }

          v171 = v11 + 56;
        }

        while (!v174);
      }

      v175 = a2;
      if (v11 < a2)
      {
        v175 = a2;
        do
        {
          v176 = *(v175 - 56);
          v175 -= 56;
          v177 = v85 < *(v175 + 8);
          v178 = v46 > v176;
          if (v46 != v176)
          {
            v177 = v178;
          }
        }

        while (v177);
      }

      while (v11 < v175)
      {
        v446 = *(v11 + 48);
        v374 = *(v11 + 16);
        v410 = *(v11 + 32);
        v338 = *v11;
        v179 = *v175;
        v180 = *(v175 + 16);
        v181 = *(v175 + 32);
        *(v11 + 48) = *(v175 + 48);
        *(v11 + 16) = v180;
        *(v11 + 32) = v181;
        *v11 = v179;
        *(v175 + 48) = v446;
        *(v175 + 16) = v374;
        *(v175 + 32) = v410;
        *v175 = v338;
        do
        {
          v182 = *(v11 + 56);
          v11 += 56;
          v183 = v85 < *(v11 + 8);
          v184 = v46 > v182;
          if (v46 != v182)
          {
            v183 = v184;
          }
        }

        while (!v183);
        do
        {
          v185 = *(v175 - 56);
          v175 -= 56;
          v186 = v85 < *(v175 + 8);
          v187 = v46 > v185;
          if (v46 != v185)
          {
            v186 = v187;
          }
        }

        while (v186);
      }

      if (v11 - 56 != a1)
      {
        v188 = *(v11 - 56);
        v189 = *(v11 - 40);
        v190 = *(v11 - 24);
        *(a1 + 48) = *(v11 - 8);
        *(a1 + 16) = v189;
        *(a1 + 32) = v190;
        *a1 = v188;
      }

      a4 = 0;
      *(v11 - 56) = v46;
      *(v11 - 48) = v85;
      result = v308;
      *(v11 - 8) = v314;
      *(v11 - 24) = v311;
      *(v11 - 40) = v308;
    }
  }

  v213 = (v11 + 56);
  result.n128_u64[0] = *(v11 + 56);
  v214 = (a2 - 56);
  v215 = *(a2 - 56);
  v216 = *(v11 + 64);
  v217 = v216 < *(v11 + 8);
  if (result.n128_f64[0] != *v11)
  {
    v217 = result.n128_f64[0] > *v11;
  }

  v218 = *(a2 - 48) < v216;
  if (v215 != result.n128_f64[0])
  {
    v218 = v215 > result.n128_f64[0];
  }

  if (v217)
  {
    if (v218)
    {
      v452 = *(v11 + 48);
      v380 = *(v11 + 16);
      v416 = *(v11 + 32);
      v344 = *v11;
      v219 = *v214;
      v220 = *(a2 - 40);
      v221 = *(a2 - 24);
      *(v11 + 48) = *(a2 - 8);
      *(v11 + 16) = v220;
      *(v11 + 32) = v221;
      *v11 = v219;
    }

    else
    {
      v456 = *(v11 + 48);
      v387 = *(v11 + 16);
      v423 = *(v11 + 32);
      v351 = *v11;
      v300 = *(v11 + 72);
      *v11 = *v213;
      *(v11 + 16) = v300;
      *(v11 + 32) = *(v11 + 88);
      *(v11 + 48) = *(v11 + 104);
      *(v11 + 72) = v387;
      *(v11 + 88) = v423;
      *(v11 + 104) = v456;
      *v213 = v351;
      result.n128_u64[0] = *(a2 - 56);
      v301 = *(v11 + 56);
      v302 = *(a2 - 48) < *(v11 + 64);
      if (result.n128_f64[0] != v301)
      {
        v302 = result.n128_f64[0] > v301;
      }

      if (!v302)
      {
        return result;
      }

      v452 = *(v11 + 104);
      v380 = *(v11 + 72);
      v416 = *(v11 + 88);
      v344 = *v213;
      v303 = *v214;
      v304 = *(a2 - 40);
      v305 = *(a2 - 24);
      *(v11 + 104) = *(a2 - 8);
      *(v11 + 72) = v304;
      *(v11 + 88) = v305;
      *v213 = v303;
    }

    result = v344;
    *(a2 - 8) = v452;
    *(a2 - 40) = v380;
    *(a2 - 24) = v416;
    *v214 = v344;
    return result;
  }

  if (v218)
  {
    v454 = *(v11 + 104);
    v384 = *(v11 + 72);
    v420 = *(v11 + 88);
    v348 = *v213;
    result = *v214;
    v288 = *(a2 - 40);
    v289 = *(a2 - 24);
    *(v11 + 104) = *(a2 - 8);
    *(v11 + 72) = v288;
    *(v11 + 88) = v289;
    *v213 = result;
    *(a2 - 8) = v454;
    *(a2 - 40) = v384;
    *(a2 - 24) = v420;
    *v214 = v348;
    result.n128_u64[0] = *(v11 + 56);
    v290 = *(v11 + 64) < *(v11 + 8);
    if (result.n128_f64[0] != *v11)
    {
      v290 = result.n128_f64[0] > *v11;
    }

    if (v290)
    {
      v455 = *(v11 + 48);
      v385 = *(v11 + 16);
      v421 = *(v11 + 32);
      v349 = *v11;
      v291 = *(v11 + 72);
      *v11 = *v213;
      *(v11 + 16) = v291;
      *(v11 + 32) = *(v11 + 88);
      *(v11 + 48) = *(v11 + 104);
      result = v421;
      *(v11 + 72) = v385;
      *(v11 + 88) = v421;
      *(v11 + 104) = v455;
      *v213 = v349;
    }
  }

  return result;
}