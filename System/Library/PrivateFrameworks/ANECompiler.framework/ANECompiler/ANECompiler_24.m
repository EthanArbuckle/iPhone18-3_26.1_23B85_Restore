void sub_23CA3F850(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p)
{
  if (__p)
  {
    v17 = a1;
    operator delete(__p);
    a1 = v17;
  }

  _Unwind_Resume(a1);
}

void operations_research::sat::anonymous namespace::AppendVarsFromAllIntervalIndices(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a2 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v9 = (a5 + 48);
    v10 = 4 * a2;
    do
    {
      v11 = (*v9 + 8 * *(a3 + 4 * *a1) + 7);
      if ((*v9 & 1) == 0)
      {
        v11 = v9;
      }

      operations_research::sat::UsedVariables(*v11, &__p);
      std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(a6, *(a6 + 8), __p, v13, (v13 - __p) >> 2);
      if (__p)
      {
        v13 = __p;
        operator delete(__p);
      }

      ++a1;
      v10 -= 4;
    }

    while (v10);
  }
}

void sub_23CA3F94C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::SchedulingResourceWindowsNeighborhoodGenerator::Generate(uint64_t a1@<X0>, const operations_research::sat::CpSolverResponse *a2@<X1>, __int128 *a3@<X2>, _BYTE *a4@<X8>)
{
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v33 = 0;
  v34 = 0uLL;
  v8 = *(a1 + 144);
  v9 = *(a1 + 152);
  if (v8 == v9)
  {
    v10 = 0;
LABEL_26:
    operations_research::sat::NeighborhoodGeneratorHelper::FullNeighborhood(*(a1 + 32), a4);
    goto LABEL_41;
  }

  v10 = 0;
  do
  {
    operations_research::sat::NeighborhoodGeneratorHelper::KeepActiveIntervals(*(a1 + 32), (v8[1] - *v8) >> 2, v28);
    if (v10)
    {
      *&v34 = v10;
      operator delete(v10);
    }

    v10 = *v28;
    v33 = *v28;
    v25 = *&v28[8];
    v34 = *&v28[8];
    v11 = *(*(a1 + 32) + 272);
    v26 = *a3;
    v27 = *(a3 + 2);
    std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v38, v39, v29, v30, (v30 - v29) >> 2);
    if (*(*(*(a1 + 32) + 264) + 327) == 1)
    {
      std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v38, v39, *v28, *&v28[8], (*&v28[8] - *v28) >> 2);
    }

    if (__p)
    {
      v32 = __p;
      operator delete(__p);
    }

    if (v29)
    {
      v30 = v29;
      operator delete(v29);
    }

    if (*v28)
    {
      *&v28[8] = *v28;
      operator delete(*v28);
    }

    v8 += 3;
  }

  while (v8 != v9);
  if (v38 == v39 && v35 == v36)
  {
    goto LABEL_26;
  }

  std::__sort<std::__less<int,int> &,int *>();
  v12 = v39;
  if (v38 != v39)
  {
    v13 = (v38 + 1);
    while (v13 != v39)
    {
      v14 = *(v13 - 1);
      v15 = *v13;
      v13 += 4;
      if (v14 == v15)
      {
        v16 = v13 - 8;
        while (v13 != v12)
        {
          v17 = v14;
          v14 = *v13;
          if (v17 != *v13)
          {
            *(v16 + 1) = v14;
            v16 += 4;
          }

          v13 += 4;
        }

        if (v16 + 4 != v12)
        {
          v39 = v16 + 4;
        }

        break;
      }
    }
  }

  std::__sort<std::__less<int,int> &,int *>();
  v18 = v35;
  v19 = v36;
  if (v35 != v36)
  {
    v20 = v35 + 1;
    while (v20 != v36)
    {
      v21 = *(v20 - 1);
      v22 = *v20++;
      if (v21 == v22)
      {
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
          v36 = v23 + 1;
        }

        break;
      }
    }
  }

  *v28 = *a3;
  *&v28[16] = *(a3 + 2);
  operations_research::sat::GenerateSchedulingNeighborhoodFromRelaxedIntervals(*(a1 + 32), v38, (v39 - v38) >> 2, v18, v19 - v18, a2, v28, a4);
LABEL_41:
  if (v10)
  {
    *&v34 = v10;
    operator delete(v10);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }
}

void sub_23CA3FCD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (v25)
  {
    operator delete(v25);
    v28 = *(v26 - 128);
    if (!v28)
    {
LABEL_3:
      v29 = *(v26 - 104);
      if (!v29)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v28 = *(v26 - 128);
    if (!v28)
    {
      goto LABEL_3;
    }
  }

  *(v26 - 120) = v28;
  operator delete(v28);
  v29 = *(v26 - 104);
  if (!v29)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  *(v26 - 96) = v29;
  operator delete(v29);
  _Unwind_Resume(exception_object);
}

void operations_research::sat::RandomRectanglesPackingNeighborhoodGenerator::Generate(uint64_t a1@<X0>, const operations_research::sat::CpSolverResponse *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  operations_research::sat::NeighborhoodGeneratorHelper::GetActiveRectangles(*(a1 + 32), a2, &__p);
  v12 = *a3;
  v13 = *(a3 + 16);
  v12 = xmmword_23CE306D0;
  v10 = __p;
  v11 = v15;
  if (__p != v15)
  {
    do
    {
      operations_research::sat::InsertVariablesFromConstraint<absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>>(*(*(a1 + 32) + 272), *v10, &v12);
      operations_research::sat::InsertVariablesFromConstraint<absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>>(*(*(a1 + 32) + 272), v10[1], &v12);
      v10 += 2;
    }

    while (v10 != v11);
  }

  operations_research::sat::NeighborhoodGeneratorHelper::FixGivenVariables(*(a1 + 32), a2, &v12, a4);
  if (v12 >= 2)
  {
    operator delete((v13 - (BYTE8(v12) & 1) - 8));
  }

  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }
}

void sub_23CA3FE5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (a9 >= 2)
  {
    operator delete((a11 - (a10 & 1) - 8));
    v16 = __p;
    if (!__p)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v16 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  operator delete(v16);
  _Unwind_Resume(exception_object);
}

void operations_research::sat::InsertVariablesFromConstraint<absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>>(uint64_t a1, int a2, int64_t a3)
{
  v5 = *(a1 + 48);
  v4 = (a1 + 48);
  v6 = v5 + 8 * a2 + 7;
  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = v4;
  }

  operations_research::sat::UsedVariables(*v7, &v14);
  v8 = v14;
  v9 = v15;
  if (v14 == v15)
  {
    if (!v14)
    {
      return;
    }

    goto LABEL_6;
  }

  do
  {
    v13 = *v8;
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(a3, &v13, v10);
    if (v12 == 1)
    {
      *v11 = v13;
    }

    ++v8;
  }

  while (v8 != v9);
  v8 = v14;
  if (v14)
  {
LABEL_6:
    v15 = v8;
    operator delete(v8);
  }
}

void sub_23CA3FF74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::RandomPrecedencesPackingNeighborhoodGenerator::Generate(uint64_t a1@<X0>, const operations_research::sat::CpSolverResponse *a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>, double a5@<D0>)
{
  operations_research::sat::NeighborhoodGeneratorHelper::GetActiveRectangles(*(a1 + 32), a2, &__p);
  v10 = *a3;
  v11 = *(a3 + 16);
  if (__p != v13)
  {
    operator new();
  }

  std::__sort<std::__less<int,int> &,int *>();
  v10 = *a3;
  v11 = *(a3 + 16);
  operations_research::sat::GenerateSchedulingNeighborhoodFromRelaxedIntervals(*(a1 + 32), 0, 0, 0, 0, a2, &v10, a4);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }
}

void sub_23CA402B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void operations_research::sat::SlicePackingNeighborhoodGenerator::Generate(uint64_t a1@<X0>, const operations_research::sat::CpSolverResponse *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  operations_research::sat::NeighborhoodGeneratorHelper::GetActiveRectangles(*(a1 + 32), a2, &v35);
  v28[0] = 0x3FE0000000000000;
  LOBYTE(v23) = 0;
  v8 = a3[1];
  if (v8 == absl::lts_20240722::BitGenRef::NotAMock)
  {
    v9 = 0.5;
  }

  else
  {
    if ((v8)(*a3, &absl::lts_20240722::base_internal::FastTypeTag<BOOL ()(absl::lts_20240722::bernoulli_distribution,std::tuple<double>)>::dummy_var, v28, &v23))
    {
      goto LABEL_8;
    }

    v9 = *v28;
  }

  do
  {
    v10 = (a3[2])(*a3);
    v11 = vcvtd_n_s64_f64(v9, 0x20uLL);
    if (v10 != v11)
    {
      break;
    }

    v9 = (v9 + v11 * -2.32830644e-10) * 4294967300.0;
  }

  while (v9 != 0.0);
LABEL_8:
  v33[0] = 0;
  v33[1] = 0;
  v34 = 0;
  v12 = v36;
  v22 = v35;
  v13 = (v36 - v35) >> 3;
  if (v36 != v35)
  {
    if (!(v13 >> 62))
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (v36 != v35)
  {
    operator new();
  }

  v34 = 0;
  v33[0] = 0;
  v14 = *(*(a1 + 32) + 272);
  v23 = *a3;
  v24 = a3[2];
  __p = 0;
  v26 = 0;
  v27 = 0;
  v15 = v29;
  v16 = v30;
  if (v29 != v30)
  {
    v17 = __p;
    do
    {
      v18 = *v15++;
      *&v17[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] &= ~(1 << v18);
    }

    while (v15 != v16);
  }

  v23 = xmmword_23CE306D0;
  if (v12 != v22)
  {
    v19 = 0;
    v20 = 1;
    do
    {
      if ((*(__p + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v19))
      {
        v21 = &v22[8 * v19];
        operations_research::sat::InsertVariablesFromConstraint<absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>>(*(*(a1 + 32) + 272), *v21, &v23);
        operations_research::sat::InsertVariablesFromConstraint<absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>>(*(*(a1 + 32) + 272), v21[1], &v23);
      }

      v19 = v20++;
    }

    while (v13 > v19);
  }

  operations_research::sat::NeighborhoodGeneratorHelper::FixGivenVariables(*(a1 + 32), a2, &v23, a4);
  if (v23 >= 2)
  {
    operator delete((v24 - (BYTE8(v23) & 1) - 8));
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }

  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  if (v28[0])
  {
    v28[1] = v28[0];
    operator delete(v28[0]);
  }

  if (v22)
  {
    operator delete(v22);
  }
}

void sub_23CA4076C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, char a23)
{
  v25 = *(v23 - 128);
  if (!v25)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(v25);
  _Unwind_Resume(exception_object);
}

void operations_research::sat::RoutingRandomNeighborhoodGenerator::Generate(uint64_t a1@<X0>, const operations_research::sat::CpSolverResponse *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v9 = a1;
  operations_research::sat::NeighborhoodGeneratorHelper::GetRoutingPaths(*(a1 + 32), a2, &v50);
  v47 = xmmword_23CE306D0;
  v11 = v50;
  v12 = v51;
  if (v50 == v51)
  {
    v33 = 0;
  }

  else
  {
    v42 = a3;
    v43 = v9;
    v5 = &v48;
    v13 = v50;
    do
    {
      v14 = *v13;
      v15 = *(v13 + 1);
      while (v14 != v15)
      {
        if (v47 > 1)
        {
          v20 = 0;
          _X9 = v48;
          __asm { PRFM            #4, [X9] }

          v29 = *v14;
          v30 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v29) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v29));
          v21 = (v30 >> 7) ^ (v48 >> 12);
          v31 = vdup_n_s8(v30 & 0x7F);
          while (1)
          {
            v16 = v21 & v47;
            v17 = *(v48 + v16);
            v18 = vceq_s8(v17, v31);
            if (v18)
            {
              break;
            }

LABEL_8:
            v19 = vceq_s8(v17, 0x8080808080808080);
            if (v19)
            {
              inserted = absl::lts_20240722::container_internal::PrepareInsertNonSoo(&v47, v30, (v16 + (__clz(__rbit64(v19)) >> 3)) & v47, v20, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::GetPolicyFunctions(void)::value);
              v32 = (v49 + 4 * inserted);
              goto LABEL_18;
            }

            v20 += 8;
            v21 = v20 + v16;
          }

          while (*(v49 + ((v16 + (__clz(__rbit64(v18)) >> 3)) & v47)) != v29)
          {
            v18 &= ((v18 & 0x8080808080808080) - 1) & 0x8080808080808080;
            if (!v18)
            {
              goto LABEL_8;
            }
          }
        }

        else if (*(&v47 + 1) > 1uLL)
        {
          if (v48 != *v14)
          {
            absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::resize_impl(&v47, 3);
          }
        }

        else
        {
          *(&v47 + 1) = 2;
          v32 = &v48;
LABEL_18:
          *v32 = *v14;
        }

        ++v14;
      }

      v13 += 24;
    }

    while (v13 != v12);
    if (*(&v47 + 1) < 2uLL)
    {
      v33 = 0;
      a3 = v42;
      v9 = v43;
    }

    else
    {
      a3 = v42;
      v9 = v43;
      if (v47 >= 2)
      {
        v33 = v48;
        v5 = v49;
        if (*v48 <= -2)
        {
          do
          {
            v34 = __clz(__rbit64((*v33 | ~(*v33 >> 7)) & 0x101010101010101)) >> 3;
            v33 = (v33 + v34);
            v5 = (v5 + 4 * v34);
          }

          while (*v33 < -1);
        }
      }

      else
      {
        v33 = &absl::lts_20240722::container_internal::kSooControl;
      }
    }
  }

  std::vector<int>::vector[abi:ne200100]<absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::iterator,0>(&__p, v33, v5, 0);
  std::__sort<std::__less<int,int> &,int *>();
  v44 = *a3;
  v45 = *(a3 + 2);
  begin = __p.__begin_;
  end = __p.__end_;
  if ((__p.__end_ - __p.__begin_) == 28)
  {
    v37 = 8;
  }

  else
  {
    v37 = (__p.__end_ - __p.__begin_ - 1) / 7 + __p.__end_ - __p.__begin_;
  }

  v38 = *(v9 + 32);
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::raw_hash_set(&v44, v37);
  while (begin != end)
  {
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(&v44, begin, v52);
    if (v54 == 1)
    {
      *v53 = *begin;
    }

    ++begin;
  }

  operations_research::sat::NeighborhoodGeneratorHelper::FixGivenVariables(v38, a2, &v44, a4);
  if (v44 >= 2)
  {
    operator delete((v45 - (BYTE8(v44) & 1) - 8));
  }

  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }

  if (v47 >= 2)
  {
    operator delete((v48 - (BYTE8(v47) & 1) - 8));
  }

  if (v11)
  {
    if (v11 != v12)
    {
      v39 = v12;
      do
      {
        v41 = *(v39 - 3);
        v39 -= 24;
        v40 = v41;
        if (v41)
        {
          *(v12 - 2) = v40;
          operator delete(v40);
        }

        v12 = v39;
      }

      while (v39 != v11);
    }

    operator delete(v11);
  }
}

void sub_23CA40C34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, unint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28)
{
  if (a15 >= 2)
  {
    operations_research::sat::PropagateAutomaton(&a15);
  }

  if (__p)
  {
    a21 = __p;
    operator delete(__p);
    if (a23 < 2)
    {
LABEL_5:
      std::vector<std::vector<int>>::~vector[abi:ne200100](&a28);
      _Unwind_Resume(a1);
    }
  }

  else if (a23 < 2)
  {
    goto LABEL_5;
  }

  operator delete((a25 - (a24 & 1) - 8));
  std::vector<std::vector<int>>::~vector[abi:ne200100](&a28);
  _Unwind_Resume(a1);
}

void operations_research::sat::RoutingPathNeighborhoodGenerator::Generate(uint64_t a1@<X0>, const operations_research::sat::CpSolverResponse *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  operations_research::sat::NeighborhoodGeneratorHelper::GetRoutingPaths(*(a1 + 32), a2, &v131);
  v7 = xmmword_23CE306D0;
  v128 = xmmword_23CE306D0;
  v8 = v131;
  v9 = v132;
  v117 = v131;
  if (v131 == v132)
  {
    v30 = 0;
    v31 = (0 * a5);
    v125 = xmmword_23CE306D0;
    if (!v31)
    {
      goto LABEL_97;
    }

    goto LABEL_23;
  }

  v10 = v131;
  do
  {
    v11 = v9;
    v12 = *v10;
    v13 = *(v10 + 1);
    while (v12 != v13)
    {
      if (v128 > 1)
      {
        v18 = 0;
        _X9 = v129;
        __asm { PRFM            #4, [X9] }

        v26 = *v12;
        v27 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v26) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v26));
        v19 = (v27 >> 7) ^ (v129 >> 12);
        v28 = vdup_n_s8(v27 & 0x7F);
        while (1)
        {
          v14 = v19 & v128;
          v15 = *(v129 + v14);
          v16 = vceq_s8(v15, v28);
          if (v16)
          {
            break;
          }

LABEL_8:
          v17 = vceq_s8(v15, 0x8080808080808080);
          if (v17)
          {
            inserted = absl::lts_20240722::container_internal::PrepareInsertNonSoo(&v128, v27, (v14 + (__clz(__rbit64(v17)) >> 3)) & v128, v18, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::GetPolicyFunctions(void)::value);
            v29 = &v130[inserted];
            goto LABEL_18;
          }

          v18 += 8;
          v19 = v18 + v14;
        }

        while (v130[(v14 + (__clz(__rbit64(v16)) >> 3)) & v128] != v26)
        {
          v16 &= ((v16 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v16)
          {
            goto LABEL_8;
          }
        }
      }

      else if (*(&v128 + 1) > 1uLL)
      {
        if (v129 != *v12)
        {
          absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::resize_impl(&v128, 3);
        }
      }

      else
      {
        *(&v128 + 1) = 2;
        v29 = &v129;
LABEL_18:
        *v29 = *v12;
      }

      ++v12;
    }

    v10 += 24;
    v9 = v11;
  }

  while (v10 != v11);
  v30 = *(&v128 + 1);
  v8 = v117;
  v7 = xmmword_23CE306D0;
  v31 = ((*(&v128 + 1) >> 1) * a5);
  v125 = xmmword_23CE306D0;
  if (v31)
  {
LABEL_23:
    v116 = v31;
    while (1)
    {
      v32 = -1431655765 * ((v9 - v8) >> 3);
      if (v32 - (v32 != 0x80000000) < 0)
      {
        v34 = 0;
      }

      else
      {
        LODWORD(v123) = 0;
        DWORD1(v123) = -1431655765 * ((v9 - v8) >> 3);
        v119 = 0;
        v33 = a3[1];
        if (v33 == absl::lts_20240722::BitGenRef::NotAMock)
        {
          v35 = 0;
        }

        else
        {
          if ((v33)(*a3, &absl::lts_20240722::base_internal::FastTypeTag<int ()(absl::lts_20240722::random_internal::UniformDistributionWrapper<int>,std::tuple<int,int>)>::dummy_var, &v123, &v119))
          {
            v34 = v119;
            goto LABEL_38;
          }

          v35 = v123;
          v32 = DWORD1(v123);
        }

        v36 = (a3[2])(*a3);
        v37 = v32 - v35 - (v32 != 0x80000000);
        v38 = v37 + 1;
        if (((v37 + 1) & v37) != 0)
        {
          v39 = v36 * v38;
          if (v38 > v39)
          {
              ;
            }
          }

          v40 = HIDWORD(v39);
        }

        else
        {
          LODWORD(v40) = v36 & v37;
        }

        v34 = v35 + v40;
      }

LABEL_38:
      v118 = v9;
      v41 = &v8[24 * v34];
      v43 = *v41;
      v42 = *(v41 + 1);
      *&v123 = 0x800000004;
      v119 = 0;
      v44 = a3[1];
      if (v44 == absl::lts_20240722::BitGenRef::NotAMock)
      {
        v46 = 4;
        v47 = 8;
      }

      else
      {
        if ((v44)(*a3, &absl::lts_20240722::base_internal::FastTypeTag<int ()(absl::lts_20240722::random_internal::UniformDistributionWrapper<int>,std::tuple<int,int>)>::dummy_var, &v123, &v119))
        {
          v45 = v119;
          goto LABEL_48;
        }

        v46 = v123;
        v47 = DWORD1(v123);
      }

      v48 = (a3[2])(*a3);
      v49 = v47 - v46 - (v47 != 0x80000000);
      v50 = v49 + 1;
      if (((v49 + 1) & v49) != 0)
      {
        v51 = v48 * v50;
        if (v50 > v51)
        {
            ;
          }
        }

        v52 = HIDWORD(v51);
      }

      else
      {
        LODWORD(v52) = v48 & v49;
      }

      v45 = v46 + v52;
LABEL_48:
      v53 = (v42 - v43) >> 2;
      if (v45 >= v53)
      {
        v54 = (v42 - v43) >> 2;
      }

      else
      {
        v54 = v45;
      }

      v55 = v53 - v54;
      if ((v53 - v54 - (v53 - v54 != 0x80000000)) < 0)
      {
        v57 = v54;
        v58 = 0;
        if (v54 > 0)
        {
          goto LABEL_65;
        }
      }

      else
      {
        LODWORD(v123) = 0;
        DWORD1(v123) = v53 - v54;
        v119 = 0;
        v56 = a3[1];
        if (v56 == absl::lts_20240722::BitGenRef::NotAMock)
        {
          v59 = 0;
        }

        else
        {
          if ((v56)(*a3, &absl::lts_20240722::base_internal::FastTypeTag<int ()(absl::lts_20240722::random_internal::UniformDistributionWrapper<int>,std::tuple<int,int>)>::dummy_var, &v123, &v119))
          {
            v57 = v119 + v54;
            v58 = v119;
            if (v119 < v119 + v54)
            {
              goto LABEL_65;
            }

            goto LABEL_80;
          }

          v59 = v123;
          v55 = DWORD1(v123);
        }

        v60 = (a3[2])(*a3);
        v61 = v55 - v59 - (v55 != 0x80000000);
        v62 = v61 + 1;
        if (((v61 + 1) & v61) != 0)
        {
          v63 = v60 * v62;
          if (v62 > v63)
          {
              ;
            }
          }

          v57 = v59 + HIDWORD(v63) + v54;
          v58 = v59 + HIDWORD(v63);
          if (v59 + HIDWORD(v63) < v57)
          {
LABEL_65:
            v65 = v57;
            v66 = v58;
            do
            {
              v74 = *v41;
              if (v125 > 1)
              {
                v71 = 0;
                _X9 = v126;
                __asm { PRFM            #4, [X9] }

                v77 = *&v74[4 * v66];
                v78 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v77) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v77));
                v72 = (v78 >> 7) ^ (v126 >> 12);
                v79 = vdup_n_s8(v78 & 0x7F);
                while (1)
                {
                  v67 = v72 & v125;
                  v68 = *(v126 + v67);
                  v69 = vceq_s8(v68, v79);
                  if (v69)
                  {
                    break;
                  }

LABEL_69:
                  v70 = vceq_s8(v68, 0x8080808080808080);
                  if (v70)
                  {
                    v73 = absl::lts_20240722::container_internal::PrepareInsertNonSoo(&v125, v78, (v67 + (__clz(__rbit64(v70)) >> 3)) & v125, v71, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::GetPolicyFunctions(void)::value);
                    v80 = (v127 + 4 * v73);
                    goto LABEL_78;
                  }

                  v71 += 8;
                  v72 = v71 + v67;
                }

                while (*(v127 + 4 * ((v67 + (__clz(__rbit64(v69)) >> 3)) & v125)) != v77)
                {
                  v69 &= ((v69 & 0x8080808080808080) - 1) & 0x8080808080808080;
                  if (!v69)
                  {
                    goto LABEL_69;
                  }
                }
              }

              else if (*(&v125 + 1) > 1uLL)
              {
                if (v126 != *&v74[4 * v66])
                {
                  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::resize_impl(&v125, 3);
                }
              }

              else
              {
                *(&v125 + 1) = 2;
                v80 = &v126;
LABEL_78:
                *v80 = *&v74[4 * v66];
              }

              ++v66;
            }

            while (v66 != v65);
          }
        }

        else
        {
          v64 = v59 + (v60 & v61);
          v57 = v64 + v54;
          v58 = v64;
          if (v64 < v64 + v54)
          {
            goto LABEL_65;
          }
        }
      }

LABEL_80:
      v81 = *v41;
      v82 = *(v41 + 1);
      if (v54)
      {
        v83 = &v81[4 * v58];
        v84 = &v83[4 * v54];
        v85 = v82 - v84;
        if (v82 != v84)
        {
          memmove(&v81[4 * v58], v84, v82 - v84);
          v81 = *v41;
        }

        v82 = &v83[v85];
        *(v41 + 1) = &v83[v85];
      }

      v8 = v117;
      v9 = v118;
      if (v81 == v82)
      {
        v86 = (v118 - 24);
        v87 = *v41;
        *v41 = *(v118 - 3);
        *v86 = v87;
        v88 = *(v41 + 1);
        *(v41 + 1) = *(v118 - 2);
        v86[1] = v88;
        v89 = *(v41 + 2);
        *(v41 + 2) = *(v118 - 1);
        v86[2] = v89;
        v90 = *(v118 - 3);
        if (v90)
        {
          *(v118 - 2) = v90;
          operator delete(v90);
        }

        v132 = v118 - 24;
        v9 = v118 - 24;
      }

      if (v116 <= *(&v125 + 1) >> 1)
      {
        v30 = *(&v128 + 1);
        v7 = xmmword_23CE306D0;
        break;
      }
    }
  }

LABEL_97:
  v123 = v7;
  if (v30 >= 2)
  {
    if (v128 >= 2)
    {
      v95 = v129;
      v94 = v130;
      if (*v129 <= -2)
      {
        do
        {
          v96 = __clz(__rbit64((*v95 | ~(*v95 >> 7)) & 0x101010101010101)) >> 3;
          v95 = (v95 + v96);
          v94 = (v94 + 4 * v96);
        }

        while (*v95 < -1);
      }
    }

    else
    {
      v94 = &v129;
      v95 = &absl::lts_20240722::container_internal::kSooControl;
    }

    do
    {
      v97 = *v94;
      v122 = *v94;
      if (v125 > 1)
      {
        v102 = 0;
        _X11 = v126;
        __asm { PRFM            #4, [X11] }

        v105 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v97) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v97));
        v106 = vdup_n_s8(v105 & 0x7F);
        v107 = ((v105 >> 7) ^ (v126 >> 12)) & v125;
        v108 = *(v126 + v107);
        v109 = vceq_s8(v108, v106);
        if (!v109)
        {
          goto LABEL_116;
        }

LABEL_114:
        while (*(v127 + 4 * ((v107 + (__clz(__rbit64(v109)) >> 3)) & v125)) != v97)
        {
          v109 &= ((v109 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v109)
          {
LABEL_116:
            while (!*&vceq_s8(v108, 0x8080808080808080))
            {
              v102 += 8;
              v107 = (v102 + v107) & v125;
              v108 = *(v126 + v107);
              v109 = vceq_s8(v108, v106);
              if (v109)
              {
                goto LABEL_114;
              }
            }

            goto LABEL_107;
          }
        }
      }

      else if (*(&v125 + 1) < 2uLL || v126 != v97)
      {
LABEL_107:
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(&v123, &v122, &v119);
        if (v121 == 1)
        {
          *v120 = v122;
        }
      }

      v100 = *(v95 + 1);
      v95 = (v95 + 1);
      LOBYTE(v99) = v100;
      v94 = (v94 + 4);
      if (v100 <= -2)
      {
        do
        {
          v101 = __clz(__rbit64((*v95 | ~(*v95 >> 7)) & 0x101010101010101)) >> 3;
          v95 = (v95 + v101);
          v94 = (v94 + 4 * v101);
          v99 = *v95;
        }

        while (v99 < -1);
      }
    }

    while (v99 != 255);
  }

  operations_research::sat::NeighborhoodGeneratorHelper::FixGivenVariables(*(a1 + 32), a2, &v123, a4);
  if (v123 >= 2)
  {
    operator delete((v124 - (BYTE8(v123) & 1) - 8));
    if (v125 < 2)
    {
LABEL_121:
      if (v128 < 2)
      {
        goto LABEL_122;
      }

      goto LABEL_126;
    }
  }

  else if (v125 < 2)
  {
    goto LABEL_121;
  }

  operator delete((v126 - (BYTE8(v125) & 1) - 8));
  if (v128 < 2)
  {
LABEL_122:
    if (!v8)
    {
      return;
    }

    goto LABEL_127;
  }

LABEL_126:
  operator delete((v129 - (BYTE8(v128) & 1) - 8));
  if (!v8)
  {
    return;
  }

LABEL_127:
  if (v9 != v8)
  {
    v110 = v9;
    do
    {
      v112 = *(v110 - 3);
      v110 -= 24;
      v111 = v112;
      if (v112)
      {
        *(v9 - 2) = v111;
        operator delete(v111);
      }

      v9 = v110;
    }

    while (v110 != v8);
  }

  operator delete(v8);
}

void sub_23CA4170C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, unint64_t a27, char a28, uint64_t a29)
{
  if (a27 < 2)
  {
    if (*(v29 - 160) >= 2uLL)
    {
      goto LABEL_6;
    }
  }

  else
  {
    operator delete((a29 - (a28 & 1) - 8));
    if (*(v29 - 160) >= 2uLL)
    {
LABEL_6:
      operator delete((*(v29 - 144) - (*(v29 - 152) & 1) - 8));
      std::vector<std::vector<int>>::~vector[abi:ne200100]((v29 - 128));
      _Unwind_Resume(a1);
    }
  }

  std::vector<std::vector<int>>::~vector[abi:ne200100]((v29 - 128));
  _Unwind_Resume(a1);
}

void operations_research::sat::RoutingFullPathNeighborhoodGenerator::Generate(uint64_t a1@<X0>, const operations_research::sat::CpSolverResponse *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  operations_research::sat::NeighborhoodGeneratorHelper::GetRoutingPaths(*(a1 + 32), a2, &v128);
  v11 = v128;
  v10 = v129;
  if (v128 != v129)
  {
    v114 = a1;
    v115 = a2;
    v125 = xmmword_23CE306D0;
    v12 = v128;
    do
    {
      v14 = *v12;
      v13 = v12[1];
      while (v14 != v13)
      {
        if (v125 > 1)
        {
          v19 = 0;
          _X9 = v126;
          __asm { PRFM            #4, [X9] }

          v27 = *v14;
          v28 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v27) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v27));
          v20 = (v28 >> 7) ^ (v126 >> 12);
          v29 = vdup_n_s8(v28 & 0x7F);
          while (1)
          {
            v15 = v20 & v125;
            v16 = *(v126 + v15);
            v17 = vceq_s8(v16, v29);
            if (v17)
            {
              break;
            }

LABEL_8:
            v18 = vceq_s8(v16, 0x8080808080808080);
            if (v18)
            {
              inserted = absl::lts_20240722::container_internal::PrepareInsertNonSoo(&v125, v28, (v15 + (__clz(__rbit64(v18)) >> 3)) & v125, v19, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::GetPolicyFunctions(void)::value);
              v30 = &v127[inserted];
              goto LABEL_18;
            }

            v19 += 8;
            v20 = v19 + v15;
          }

          while (v127[(v15 + (__clz(__rbit64(v17)) >> 3)) & v125] != v27)
          {
            v17 &= ((v17 & 0x8080808080808080) - 1) & 0x8080808080808080;
            if (!v17)
            {
              goto LABEL_8;
            }
          }
        }

        else if (*(&v125 + 1) > 1uLL)
        {
          if (v126 != *v14)
          {
            absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::resize_impl(&v125, 3);
          }
        }

        else
        {
          *(&v125 + 1) = 2;
          v30 = &v126;
LABEL_18:
          *v30 = *v14;
        }

        ++v14;
      }

      v12 += 3;
    }

    while (v12 != v10);
    v31 = ((*(&v125 + 1) >> 1) * a5);
    v122 = xmmword_23CE306D0;
    v32 = v11;
    do
    {
      v33 = *v32;
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(&v122, *v32, &v120);
      if (v121 == 1)
      {
        **(&v120 + 1) = *v33;
      }

      v34 = v32[1] - 1;
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(&v122, v34, &v120);
      if (v121 == 1)
      {
        **(&v120 + 1) = *v34;
      }

      v32 += 3;
    }

    while (v32 != v10);
    v112 = v31;
    v113 = a4;
    v35 = v11;
    do
    {
      v36 = v10;
      v38 = *v35;
      v37 = v35[1];
      v39 = v37 - *v35;
      if (v39 >= 2)
      {
        v40 = (v37 - 1);
        if (v37 - 1 > v38)
        {
          do
          {
            if (v39 != 1)
            {
              if (v39)
              {
                v41 = __clz(v39);
                if (((v39 << v41) & 0x7FFFFFFFFFFFFFFFLL) != 0)
                {
                  v42 = 64;
                }

                else
                {
                  v42 = 63;
                }

                v43 = v42 - v41;
                v44 = v43 >> 6;
                if ((v43 & 0x3F) != 0)
                {
                  ++v44;
                }

                if (v44 <= v43)
                {
                  v45 = 0xFFFFFFFFFFFFFFFFLL >> -(v43 / v44);
                }

                else
                {
                  v45 = 0;
                }

                do
                {
                  v46 = (a3[2])(*a3) & v45;
                }

                while (v46 >= v39);
              }

              else
              {
                v46 = (a3[2])(*a3);
              }

              if (v46)
              {
                v47 = *v38;
                *v38 = v38[v46];
                v38[v46] = v47;
              }
            }

            ++v38;
            --v39;
          }

          while (v38 < v40);
        }
      }

      v35 += 3;
      v10 = v36;
    }

    while (v35 != v36);
    v48 = -1431655765 * ((v36 - v11) >> 3);
    if (v48 - (v48 != 0x80000000) < 0)
    {
      v52 = 0;
      v50 = v113;
      v53 = v112;
      v54 = *(&v122 + 1);
      if (v112 > *(&v122 + 1) >> 1)
      {
        goto LABEL_131;
      }

      goto LABEL_54;
    }

    LODWORD(v120) = 0;
    DWORD1(v120) = -1431655765 * ((v36 - v11) >> 3);
    v116 = 0;
    v49 = a3[1];
    if (v49 == absl::lts_20240722::BitGenRef::NotAMock)
    {
      v101 = 0;
      v50 = v113;
    }

    else
    {
      v50 = v113;
      if ((v49)(*a3, &absl::lts_20240722::base_internal::FastTypeTag<int ()(absl::lts_20240722::random_internal::UniformDistributionWrapper<int>,std::tuple<int,int>)>::dummy_var, &v120, &v116))
      {
        v51 = v116;
        goto LABEL_130;
      }

      v101 = v120;
      v48 = DWORD1(v120);
    }

    v102 = (a3[2])(*a3);
    v103 = v48 - v101 - (v48 != 0x80000000);
    v104 = v103 + 1;
    if (((v103 + 1) & v103) != 0)
    {
      v105 = v102 * v104;
      if (v104 > v105)
      {
          ;
        }
      }

      v106 = HIDWORD(v105);
    }

    else
    {
      LODWORD(v106) = v102 & v103;
    }

    v51 = v101 + v106;
LABEL_130:
    v52 = v51;
    v53 = v112;
    v54 = *(&v122 + 1);
    if (v112 > *(&v122 + 1) >> 1)
    {
LABEL_131:
      v107 = &v11[3 * v52];
      v109 = v107[1];
      v108 = (v107 + 1);
      v55 = v109;
      do
      {
        if (v11[3 * v52] == v55)
        {
          break;
        }

        v110 = (v55 - 4);
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(&v122, (v55 - 4), &v120);
        if (v121 == 1)
        {
          **(&v120 + 1) = *v110;
        }

        v55 = *v108 - 4;
        *v108 = v55;
        v54 = *(&v122 + 1);
      }

      while (v53 > *(&v122 + 1) >> 1);
LABEL_55:
      v56 = &v11[3 * v52];
      v57 = *v56;
      if (*v56 == v55)
      {
        v58 = v10 - 3;
        *v56 = *(v10 - 3);
        *v58 = v57;
        v79 = v56[1];
        v56[1] = *(v10 - 2);
        v58[1] = v79;
        v80 = v56[2];
        v56[2] = *(v10 - 1);
        v58[2] = v80;
        v81 = *(v10 - 3);
        if (v81)
        {
          *(v10 - 2) = v81;
          operator delete(v81);
          v54 = *(&v122 + 1);
        }

        v129 = v10 - 3;
        if (v53 > v54 >> 1)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v58 = v10;
        if (v53 > v54 >> 1)
        {
LABEL_57:
          v10 = v58;
          while (1)
          {
            v62 = -1431655765 * ((v10 - v11) >> 3);
            if (v62 - (v62 != 0x80000000) >= 0)
            {
              break;
            }

            v66 = 0;
LABEL_77:
            v77 = v11[3 * v66 + 1] - 1;
            absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(&v122, v77, &v120);
            if (v121 == 1)
            {
              **(&v120 + 1) = *v77;
            }

            v59 = &v11[3 * v66];
            v60 = *v59;
            v61 = v59[1] - 4;
            v59[1] = v61;
            if (v60 == v61)
            {
              v67 = v10 - 3;
              *v59 = *(v10 - 3);
              *v67 = v60;
              v68 = v59[1];
              v59[1] = *(v10 - 2);
              v67[1] = v68;
              v69 = v59[2];
              v59[2] = *(v10 - 1);
              v67[2] = v69;
              v70 = *(v10 - 3);
              if (v70)
              {
                *(v10 - 2) = v70;
                operator delete(v70);
              }

              v129 = v10 - 3;
              v10 -= 3;
              if (v53 <= *(&v122 + 1) >> 1)
              {
                goto LABEL_86;
              }
            }

            else if (v53 <= *(&v122 + 1) >> 1)
            {
              goto LABEL_86;
            }
          }

          v63 = v10;
          LODWORD(v120) = 0;
          DWORD1(v120) = -1431655765 * ((v10 - v11) >> 3);
          v116 = 0;
          v64 = a3[1];
          if (v64 == absl::lts_20240722::BitGenRef::NotAMock)
          {
            v71 = 0;
          }

          else
          {
            if ((v64)(*a3, &absl::lts_20240722::base_internal::FastTypeTag<int ()(absl::lts_20240722::random_internal::UniformDistributionWrapper<int>,std::tuple<int,int>)>::dummy_var, &v120, &v116))
            {
              v65 = v116;
LABEL_76:
              v10 = v63;
              v66 = v65;
              goto LABEL_77;
            }

            v71 = v120;
            v62 = DWORD1(v120);
          }

          v72 = (a3[2])(*a3);
          v73 = v62 - v71 - (v62 != 0x80000000);
          v74 = v73 + 1;
          if (((v73 + 1) & v73) != 0)
          {
            v75 = v72 * v74;
            if (v74 > v75)
            {
                ;
              }
            }

            v76 = HIDWORD(v75);
          }

          else
          {
            LODWORD(v76) = v72 & v73;
          }

          v65 = v71 + v76;
          goto LABEL_76;
        }
      }

      v10 = v58;
LABEL_86:
      v120 = xmmword_23CE306D0;
      v82 = &v126;
      if (*(&v125 + 1) >= 2uLL)
      {
        if (v125 >= 2)
        {
          v83 = v126;
          v82 = v127;
          if (*v126 <= -2)
          {
            do
            {
              v84 = __clz(__rbit64((*v83 | ~(*v83 >> 7)) & 0x101010101010101)) >> 3;
              v83 = (v83 + v84);
              v82 = (v82 + 4 * v84);
            }

            while (*v83 < -1);
          }
        }

        else
        {
          v83 = &absl::lts_20240722::container_internal::kSooControl;
        }

        do
        {
          v85 = *v82;
          v119 = *v82;
          if (v122 > 1)
          {
            v90 = 0;
            _X11 = v123;
            __asm { PRFM            #4, [X11] }

            v93 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v85) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v85));
            v94 = vdup_n_s8(v93 & 0x7F);
            v95 = ((v93 >> 7) ^ (v123 >> 12)) & v122;
            v96 = *(v123 + v95);
            v97 = vceq_s8(v96, v94);
            if (!v97)
            {
              goto LABEL_105;
            }

LABEL_103:
            while (*(v124 + 4 * ((v95 + (__clz(__rbit64(v97)) >> 3)) & v122)) != v85)
            {
              v97 &= ((v97 & 0x8080808080808080) - 1) & 0x8080808080808080;
              if (!v97)
              {
LABEL_105:
                while (!*&vceq_s8(v96, 0x8080808080808080))
                {
                  v90 += 8;
                  v95 = (v90 + v95) & v122;
                  v96 = *(v123 + v95);
                  v97 = vceq_s8(v96, v94);
                  if (v97)
                  {
                    goto LABEL_103;
                  }
                }

                goto LABEL_96;
              }
            }
          }

          else if (*(&v122 + 1) < 2uLL || v123 != v85)
          {
LABEL_96:
            absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(&v120, &v119, &v116);
            if (v118 == 1)
            {
              *v117 = v119;
            }
          }

          v88 = *(v83 + 1);
          v83 = (v83 + 1);
          LOBYTE(v87) = v88;
          v82 = (v82 + 4);
          if (v88 <= -2)
          {
            do
            {
              v89 = __clz(__rbit64((*v83 | ~(*v83 >> 7)) & 0x101010101010101)) >> 3;
              v83 = (v83 + v89);
              v82 = (v82 + 4 * v89);
              v87 = *v83;
            }

            while (v87 < -1);
          }
        }

        while (v87 != 255);
      }

      operations_research::sat::NeighborhoodGeneratorHelper::FixGivenVariables(*(v114 + 32), v115, &v120, v50);
      if (v120 >= 2)
      {
        operator delete((v121 - (BYTE8(v120) & 1) - 8));
        if (v122 < 2)
        {
LABEL_110:
          if (v125 < 2)
          {
            goto LABEL_111;
          }

          goto LABEL_115;
        }
      }

      else if (v122 < 2)
      {
        goto LABEL_110;
      }

      operator delete((v123 - (BYTE8(v122) & 1) - 8));
      if (v125 < 2)
      {
LABEL_111:
        if (!v11)
        {
          return;
        }

        goto LABEL_116;
      }

LABEL_115:
      operator delete((v126 - (BYTE8(v125) & 1) - 8));
      if (!v11)
      {
        return;
      }

      goto LABEL_116;
    }

LABEL_54:
    v55 = v11[3 * v52 + 1];
    goto LABEL_55;
  }

  *a4 = 0;
  *(a4 + 2) = 0;
  operations_research::sat::CpModelProto::CpModelProto(a4 + 8, 0);
  *(a4 + 168) = 0;
  *(a4 + 176) = 0;
  *(a4 + 199) = 0u;
  *(a4 + 215) = 0u;
  *(a4 + 231) = 0;
  *a4 = 0;
  if (!v11)
  {
    return;
  }

LABEL_116:
  if (v10 != v11)
  {
    v98 = v10;
    do
    {
      v100 = *(v98 - 3);
      v98 -= 3;
      v99 = v100;
      if (v100)
      {
        *(v10 - 2) = v99;
        operator delete(v99);
      }

      v10 = v98;
    }

    while (v98 != v11);
  }

  operator delete(v11);
}

void sub_23CA42288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, unint64_t a27, char a28, uint64_t a29)
{
  if (a27 < 2)
  {
    if (*(v29 - 160) >= 2uLL)
    {
      goto LABEL_6;
    }
  }

  else
  {
    operator delete((a29 - (a28 & 1) - 8));
    if (*(v29 - 160) >= 2uLL)
    {
LABEL_6:
      operator delete((*(v29 - 144) - (*(v29 - 152) & 1) - 8));
      std::vector<std::vector<int>>::~vector[abi:ne200100]((v29 - 128));
      _Unwind_Resume(a1);
    }
  }

  std::vector<std::vector<int>>::~vector[abi:ne200100]((v29 - 128));
  _Unwind_Resume(a1);
}

BOOL operations_research::sat::RelaxationInducedNeighborhoodGenerator::ReadyToGenerate(atomic_ullong **this)
{
  if (operations_research::sat::SharedIncompleteSolutionManager::HasSolution(this[20]))
  {
    return 1;
  }

  v3 = this[19];
  absl::lts_20240722::Mutex::Lock(v3 + 4);
  v5 = v3[12];
  v4 = v3[13];
  absl::lts_20240722::Mutex::Unlock((v3 + 4));
  return ((v4 - v5) >> 6) > 0;
}

void operations_research::sat::RelaxationInducedNeighborhoodGenerator::Generate(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  operations_research::sat::NeighborhoodGeneratorHelper::FullNeighborhood(*(a1 + 32), a3);
  *a3 = 0;
  v6 = *(a1 + 144);
  v7 = *(a1 + 152);
  v8 = *(a1 + 160);
  *v42 = *a2;
  v43 = *(a2 + 16);
  operations_research::sat::GetRinsRensNeighborhood(v6, v7, v8, v42, &v44);
  if (v44 == v45 && (v9 = v46, v46 == v47))
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      v9 = v46;
    }

    if (v9)
    {
LABEL_52:
      v47 = v9;
      operator delete(v9);
    }
  }

  else
  {
    std::string::operator=((a3 + 176), &__p);
    v10 = *(a1 + 32);
    absl::lts_20240722::Mutex::ReaderLock((v10 + 256));
    v12 = v44;
    v13 = v45;
    if (v44 != v45)
    {
      v14 = (a3 + 32);
      do
      {
        v16 = *v12;
        if (v16 < *(a3 + 40) && ((*(*(*(a1 + 32) + 864) + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v16) & 1) != 0)
        {
          v17 = *v14 - 1;
          v18 = *v14 & 1;
          v19 = (v17 + 8 * v16 + 8);
          if (!v18)
          {
            v19 = (a3 + 32);
          }

          v20 = *v19;
          v21 = (*v19 + 16);
          if (*v21 < 1)
          {
LABEL_28:
            absl::lts_20240722::Mutex::ReaderUnlock((v10 + 256));
            goto LABEL_49;
          }

          v22 = 0;
          v23 = *(v12 + 1);
          v24 = *(v20 + 24);
          while (*(v24 + 8 * v22) > v23 || *(v24 + 8 * (v22 + 1)) < v23)
          {
            v22 += 2;
            if (v22 >= *v21)
            {
              goto LABEL_28;
            }
          }

          *(v20 + 16) = 0;
          if (*(v20 + 20))
          {
            v25 = 0;
          }

          else
          {
            google::protobuf::RepeatedField<long long>::Grow(v21, 0);
            v25 = *(v20 + 16);
            v24 = *(v20 + 24);
            v18 = *v14 & 1;
            v17 = *v14 - 1;
          }

          *v21 = v25 + 1;
          *(v24 + 8 * v25) = v23;
          v26 = v17 + 8 * v16 + 8;
          if (v18)
          {
            v27 = v26;
          }

          else
          {
            v27 = (a3 + 32);
          }

          v28 = *v27;
          v30 = (*v27 + 16);
          v29 = *v30;
          v31 = *(v28 + 20);
          if (*v30 == v31)
          {
            google::protobuf::RepeatedField<long long>::Grow(v30, v31);
            v29 = *v30;
          }

          v15 = *(v28 + 24);
          *(v28 + 16) = v29 + 1;
          *(v15 + 8 * v29) = v23;
          *(a3 + 1) = 1;
        }

        v12 += 4;
      }

      while (v12 != v13);
    }

    v32 = v46;
    v33 = v47;
    if (v46 != v47)
    {
      v34 = (a3 + 32);
      do
      {
        v35 = *v32;
        if (v35 < *(a3 + 40) && ((*(*(*(a1 + 32) + 864) + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v35) & 1) != 0)
        {
          v37 = *(v32 + 1);
          v36 = *(v32 + 2);
          if (*v34)
          {
            v38 = *v34 + 8 * v35 + 7;
          }

          else
          {
            v38 = a3 + 32;
          }

          operations_research::Domain::FromFlatSpanOfIntervals(*(*v38 + 24), *(*v38 + 16), v42, v11);
          operations_research::Domain::Domain(v40, v37, v36);
          operations_research::Domain::IntersectionWith(v42, v40, v41);
          if (v40[0])
          {
            operator delete(v40[1]);
          }

          if (operations_research::Domain::IsEmpty(v41))
          {
            operations_research::Domain::ClosestValue(v42, v37);
            operations_research::Domain::ClosestValue(v42, v36);
            operator new();
          }

          if (*v34)
          {
            v39 = (*v34 + 8 * v35 + 7);
          }

          else
          {
            v39 = (a3 + 32);
          }

          operations_research::sat::FillDomainInProto<operations_research::sat::IntegerVariableProto>(v42, *v39);
          *(a3 + 1) = 1;
          if (v41[0])
          {
            operator delete(v41[1]);
          }

          if (v42[0])
          {
            operator delete(v42[1]);
          }
        }

        v32 += 6;
      }

      while (v32 != v33);
    }

    *a3 = 1;
    absl::lts_20240722::Mutex::ReaderUnlock((v10 + 256));
LABEL_49:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v9 = v46;
    if (v46)
    {
      goto LABEL_52;
    }
  }

  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }
}

void sub_23CA42898(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16, void *a17, uint64_t a18, char a19, void *a20, uint64_t a21, uint64_t a22, void *a23)
{
  absl::lts_20240722::Mutex::ReaderUnlock((v24 + 256));
  operations_research::sat::ReducedDomainNeighborhood::~ReducedDomainNeighborhood(&a23);
  operations_research::sat::Neighborhood::~Neighborhood(v23);
  _Unwind_Resume(a1);
}

void operations_research::sat::ReducedDomainNeighborhood::~ReducedDomainNeighborhood(void **this)
{
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  v2 = this[3];
  if (v2)
  {
    this[4] = v2;
    operator delete(v2);
  }

  v3 = *this;
  if (*this)
  {
    this[1] = v3;
    operator delete(v3);
  }
}

void operations_research::sat::RelaxRandomVariablesGenerator::~RelaxRandomVariablesGenerator(operations_research::sat::RelaxRandomVariablesGenerator *this)
{
  *this = &unk_284F3C970;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  absl::lts_20240722::Mutex::~Mutex((this + 40));
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_284F3C970;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  absl::lts_20240722::Mutex::~Mutex((this + 40));
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x23EED9460);
}

void operations_research::sat::LocalBranchingLpBasedNeighborhoodGenerator::~LocalBranchingLpBasedNeighborhoodGenerator(operations_research::sat::LocalBranchingLpBasedNeighborhoodGenerator *this)
{
  *this = &unk_284F3CB60;
  v2 = this + 144;
  v3 = *(this + 21);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *this = &unk_284F3C970;
    v4 = *(this + 6);
    if (v4)
    {
LABEL_5:
      *(this + 7) = v4;
      operator delete(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *this = &unk_284F3C970;
    v4 = *(this + 6);
    if (v4)
    {
      goto LABEL_5;
    }
  }

  absl::lts_20240722::Mutex::~Mutex((this + 40));
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_284F3CB60;
  v2 = this + 144;
  v3 = *(this + 21);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    *this = &unk_284F3C970;
    v4 = *(this + 6);
    if (v4)
    {
LABEL_5:
      *(this + 7) = v4;
      operator delete(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    *this = &unk_284F3C970;
    v4 = *(this + 6);
    if (v4)
    {
      goto LABEL_5;
    }
  }

  absl::lts_20240722::Mutex::~Mutex((this + 40));
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x23EED9460);
}

void operations_research::sat::SchedulingResourceWindowsNeighborhoodGenerator::~SchedulingResourceWindowsNeighborhoodGenerator(operations_research::sat::SchedulingResourceWindowsNeighborhoodGenerator *this)
{
  *this = &unk_284F3CC80;
  v2 = *(this + 18);
  if (v2)
  {
    v3 = *(this + 19);
    v4 = *(this + 18);
    if (v3 != v2)
    {
      v5 = *(this + 19);
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
      v4 = *(this + 18);
    }

    *(this + 19) = v2;
    operator delete(v4);
  }

  *this = &unk_284F3C970;
  v8 = *(this + 6);
  if (v8)
  {
    *(this + 7) = v8;
    operator delete(v8);
  }

  absl::lts_20240722::Mutex::~Mutex((this + 40));
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  *this = &unk_284F3CC80;
  v2 = *(this + 18);
  if (v2)
  {
    v3 = *(this + 19);
    v4 = *(this + 18);
    if (v3 != v2)
    {
      v5 = *(this + 19);
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
      v4 = *(this + 18);
    }

    *(this + 19) = v2;
    operator delete(v4);
  }

  *this = &unk_284F3C970;
  v8 = *(this + 6);
  if (v8)
  {
    *(this + 7) = v8;
    operator delete(v8);
  }

  absl::lts_20240722::Mutex::~Mutex((this + 40));
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x23EED9460);
}

void operations_research::sat::RelaxationInducedNeighborhoodGenerator::~RelaxationInducedNeighborhoodGenerator(operations_research::sat::RelaxationInducedNeighborhoodGenerator *this)
{
  *this = &unk_284F3C970;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  absl::lts_20240722::Mutex::~Mutex((this + 40));
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  JUMPOUT(0x23EED9460);
}

void operations_research::sat::NeighborhoodGeneratorHelper::~NeighborhoodGeneratorHelper(operations_research::sat::NeighborhoodGeneratorHelper *this)
{
  operations_research::sat::NeighborhoodGeneratorHelper::~NeighborhoodGeneratorHelper(this);

  JUMPOUT(0x23EED9460);
}

{
  *this = &unk_284F3C930;
  absl::lts_20240722::Mutex::~Mutex((this + 960));
  v2 = *(this + 117);
  if (v2)
  {
    *(this + 118) = v2;
    operator delete(v2);
  }

  v3 = *(this + 114);
  if (v3)
  {
    *(this + 115) = v3;
    operator delete(v3);
  }

  v4 = *(this + 111);
  if (v4)
  {
    *(this + 112) = v4;
    operator delete(v4);
  }

  v5 = *(this + 108);
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(this + 105);
  if (v6)
  {
    *(this + 106) = v6;
    operator delete(v6);
  }

  v7 = *(this + 102);
  if (v7)
  {
    v8 = *(this + 103);
    v9 = *(this + 102);
    if (v8 != v7)
    {
      v10 = *(this + 103);
      do
      {
        v12 = *(v10 - 24);
        v10 -= 24;
        v11 = v12;
        if (v12)
        {
          *(v8 - 16) = v11;
          operator delete(v11);
        }

        v8 = v10;
      }

      while (v10 != v7);
      v9 = *(this + 102);
    }

    *(this + 103) = v7;
    operator delete(v9);
  }

  v13 = *(this + 99);
  if (v13)
  {
    *(this + 100) = v13;
    operator delete(v13);
  }

  v14 = *(this + 96);
  if (v14)
  {
    *(this + 97) = v14;
    operator delete(v14);
  }

  v15 = *(this + 93);
  if (v15)
  {
    *(this + 94) = v15;
    operator delete(v15);
  }

  v16 = *(this + 90);
  if (v16)
  {
    *(this + 91) = v16;
    operator delete(v16);
  }

  v17 = *(this + 87);
  if (v17)
  {
    *(this + 88) = v17;
    operator delete(v17);
  }

  v18 = *(this + 84);
  if (v18)
  {
    *(this + 85) = v18;
    operator delete(v18);
  }

  operations_research::sat::CpModelProto::~CpModelProto((this + 512));
  v19 = *(this + 61);
  if (v19)
  {
    operator delete(v19);
  }

  v20 = *(this + 58);
  if (v20)
  {
    v21 = *(this + 59);
    v22 = *(this + 58);
    if (v21 != v20)
    {
      v23 = *(this + 59);
      do
      {
        v25 = *(v23 - 24);
        v23 -= 24;
        v24 = v25;
        if (v25)
        {
          *(v21 - 16) = v24;
          operator delete(v24);
        }

        v21 = v23;
      }

      while (v23 != v20);
      v22 = *(this + 58);
    }

    *(this + 59) = v20;
    operator delete(v22);
  }

  operations_research::sat::CpModelProto::~CpModelProto((this + 304));
  absl::lts_20240722::Mutex::~Mutex((this + 256));
  *this = &unk_284F3CEE8;
  *(this + 19) = &unk_284F3A5F8;
  if (*(this + 183) < 0)
  {
    operator delete(*(this + 20));
    *(this + 6) = &unk_284F3A5F8;
    if ((*(this + 79) & 0x80000000) == 0)
    {
LABEL_43:
      if ((*(this + 31) & 0x80000000) == 0)
      {
        return;
      }

LABEL_47:
      operator delete(*(this + 1));
      return;
    }
  }

  else
  {
    *(this + 6) = &unk_284F3A5F8;
    if ((*(this + 79) & 0x80000000) == 0)
    {
      goto LABEL_43;
    }
  }

  operator delete(*(this + 7));
  if (*(this + 31) < 0)
  {
    goto LABEL_47;
  }
}

operations_research::sat::PresolveContext *operations_research::sat::PresolveContext::PresolveContext(operations_research::sat::PresolveContext *this, operations_research::sat::Model *a2, operations_research::sat::CpModelProto *a3, operations_research::sat::CpModelProto *a4)
{
  *this = a3;
  *(this + 1) = a4;
  *(this + 16) = 0;
  *(this + 56) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = xmmword_23CE306D0;
  *(this + 34) = 0;
  *(this + 45) = 0;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 48) = 0;
  *(this + 248) = 0u;
  *(this + 11) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 260) = 0u;
  *(this + 46) = &unk_23CE31C20;
  *(this + 48) = operations_research::sat::Model::GetOrCreate<operations_research::SolverLogger>(a2);
  *(this + 49) = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(a2);
  *(this + 50) = operations_research::sat::Model::GetOrCreate<operations_research::TimeLimit>(a2);
  *(this + 51) = operations_research::sat::Model::GetOrCreate<operations_research::sat::ModelRandomGenerator>(a2);
  *(this + 416) = 0;
  *(this + 53) = 0;
  *(this + 27) = 0u;
  *(this + 448) = 0;
  *(this + 504) = 0;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  *(this + 32) = xmmword_23CE306D0;
  *(this + 73) = 0;
  *(this + 50) = 0u;
  *(this + 69) = 0;
  *(this + 35) = 0u;
  *(this + 576) = 0;
  *(this + 792) = 0;
  *(this + 648) = 0u;
  *(this + 664) = 0u;
  *(this + 680) = 0u;
  *(this + 696) = 0u;
  *(this + 712) = 0u;
  *(this + 728) = 0u;
  *(this + 744) = 0u;
  *(this + 760) = 0u;
  *(this + 776) = 0u;
  *(this + 102) = &unk_23CE31C20;
  *(this + 52) = 0u;
  *(this + 106) = &unk_23CE31C20;
  *(this + 54) = 0u;
  *(this + 110) = &unk_23CE31C20;
  *(this + 56) = 0u;
  *(this + 57) = 0u;
  *(this + 58) = 0u;
  *(this + 59) = 0u;
  *(this + 60) = 0u;
  *(this + 61) = 0u;
  *(this + 62) = 0u;
  *(this + 63) = 0u;
  *(this + 64) = xmmword_23CE306D0;
  *(this + 66) = 0u;
  *(this + 134) = &unk_23CE31C20;
  *(this + 68) = 0u;
  *(this + 138) = &unk_23CE31C20;
  *(this + 70) = 0u;
  *(this + 142) = &unk_23CE31C20;
  *(this + 1176) = 0;
  *(this + 72) = 0u;
  *(this + 146) = 0;
  return this;
}

void sub_23CA43158(_Unwind_Exception *a1)
{
  operations_research::sat::DomainDeductions::~DomainDeductions(v6);
  operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>::~SparseBitset(v5);
  operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>::~SparseBitset(v4);
  if (v1[13] >= 2uLL)
  {
    operator delete((v1[15] - (v1[14] & 1) - 8));
    std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>::~vector[abi:ne200100](v3);
    std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>::~vector[abi:ne200100](v2);
    v8 = v1[4];
    if (!v8)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>::~vector[abi:ne200100](v3);
    std::vector<absl::lts_20240722::InlinedVector<long long,2ul,std::allocator<long long>>>::~vector[abi:ne200100](v2);
    v8 = v1[4];
    if (!v8)
    {
      goto LABEL_3;
    }
  }

  v1[5] = v8;
  operator delete(v8);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::Model::GetOrCreate<operations_research::SolverLogger>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::SolverLogger>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::SolverLogger>(void)::d));
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
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::SolverLogger>(void)::d)
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
    _ZF = v17 == &gtl::FastTypeId<operations_research::SolverLogger>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::SolverLogger>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
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

void operations_research::sat::DomainDeductions::~DomainDeductions(operations_research::sat::DomainDeductions *this)
{
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::DomainDeductions::Index_index_tag_>,int>,operations_research::Domain>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::DomainDeductions::Index_index_tag_>,int>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::DomainDeductions::Index_index_tag_>,int>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::DomainDeductions::Index_index_tag_>,int> const,operations_research::Domain>>>::~raw_hash_set(this + 13);
  v2 = *(this + 10);
  if (v2)
  {
    v3 = *(this + 11);
    v4 = *(this + 10);
    if (v3 != v2)
    {
      v5 = *(this + 11);
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
      v4 = *(this + 10);
    }

    *(this + 11) = v2;
    operator delete(v4);
  }

  v8 = *(this + 7);
  if (v8)
  {
    *(this + 8) = v8;
    operator delete(v8);
  }

  v9 = *(this + 4);
  if (v9)
  {
    *(this + 5) = v9;
    operator delete(v9);
  }

  v10 = *this;
  if (*this)
  {
    *(this + 1) = v10;
    operator delete(v10);
  }
}

void *operations_research::sat::Model::Delete<operations_research::SolverLogger>::~Delete(void *result)
{
  *result = &unk_284F3CF28;
  v1 = result[1];
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    std::default_delete<operations_research::SolverLogger>::operator()[abi:ne200100]((result + 1), v1);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::SolverLogger>::~Delete(void *a1)
{
  *a1 = &unk_284F3CF28;
  v2 = a1[1];
  a1[1] = 0;
  if (v2)
  {
    std::default_delete<operations_research::SolverLogger>::operator()[abi:ne200100]((a1 + 1), v2);
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

void std::default_delete<operations_research::SolverLogger>::operator()[abi:ne200100](uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2[9];
    if (v3)
    {
      v4 = a2[10];
      v5 = a2[9];
      if (v4 != v3)
      {
        do
        {
          if (*(v4 - 1) < 0)
          {
            operator delete(*(v4 - 24));
          }

          v4 -= 40;
        }

        while (v4 != v3);
        v5 = a2[9];
      }

      a2[10] = v3;
      operator delete(v5);
    }

    v6 = a2[1];
    if (v6)
    {
      v7 = a2[2];
      v8 = a2[1];
      if (v7 != v6)
      {
        v9 = v7 - 32;
        do
        {
          v10 = *(v7 - 8);
          v7 -= 32;
          if (v7 == v10)
          {
            (*(*v10 + 32))(v10);
          }

          else if (v10)
          {
            (*(*v10 + 40))(v10);
          }

          v9 -= 32;
        }

        while (v7 != v6);
        v8 = a2[1];
      }

      a2[2] = v6;
      operator delete(v8);
    }

    JUMPOUT(0x23EED9460);
  }
}

unint64_t *absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,int>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,int>>>::~raw_hash_set(unint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v4 = a1[2];
    v3 = a1[3];
    if (v2 > 6)
    {
      v9 = a1[1];
      if (v9 >= 2)
      {
        v11 = v9 >> 1;
        do
        {
          v12 = *v4 & 0x8080808080808080;
          if (v12 != 0x8080808080808080)
          {
            v13 = v12 ^ 0x8080808080808080;
            do
            {
              v14 = v3 + ((4 * __clz(__rbit64(v13))) & 0x1E0);
              if (*(v14 + 23) < 0)
              {
                operator delete(*v14);
              }

              --v11;
              v13 &= v13 - 1;
            }

            while (v13);
          }

          ++v4;
          v3 += 256;
        }

        while (v11);
      }
    }

    else
    {
      v5 = *(v4 + v2) & 0x8080808080808080;
      if (v5 != 0x8080808080808080)
      {
        v6 = v3 - 32;
        v7 = v5 ^ 0x8080808080808080;
        do
        {
          v8 = v6 + ((4 * __clz(__rbit64(v7))) & 0x1E0);
          if (*(v8 + 23) < 0)
          {
            operator delete(*v8);
          }

          v7 &= v7 - 1;
        }

        while (v7);
      }
    }

    operator delete((a1[2] - (a1[1] & 1) - 8));
  }

  return a1;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,absl::lts_20240722::flat_hash_map<long long,absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>>>>>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,absl::lts_20240722::flat_hash_map<long long,absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>>>>>>>::destroy_slots(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  if (*a1 > 6uLL)
  {
    v6 = a1[1];
    if (v6 >= 2)
    {
      v7 = v6 >> 1;
      do
      {
        v25 = v1;
        v8 = *v1 & 0x8080808080808080;
        if (v8 != 0x8080808080808080)
        {
          v9 = v8 ^ 0x8080808080808080;
          do
          {
            v10 = v2 + 40 * (__clz(__rbit64(v9)) >> 3);
            v13 = *(v10 + 8);
            v12 = (v10 + 8);
            v11 = v13;
            if (v13)
            {
              v15 = v12[2];
              v14 = v12[3];
              if (v11 > 6)
              {
                v20 = v12[1];
                if (v20 >= 2)
                {
                  v21 = v20 >> 1;
                  do
                  {
                    v22 = *v15 & 0x8080808080808080;
                    if (v22 != 0x8080808080808080)
                    {
                      v23 = v22 ^ 0x8080808080808080;
                      do
                      {
                        v24 = (v14 + 40 * (__clz(__rbit64(v23)) >> 3));
                        if (v24[1] >= 2uLL)
                        {
                          operator delete((v24[3] - (v24[2] & 1) - 8));
                        }

                        --v21;
                        v23 &= v23 - 1;
                      }

                      while (v23);
                    }

                    ++v15;
                    v14 += 320;
                  }

                  while (v21);
                }
              }

              else
              {
                v16 = *(v15 + v11) & 0x8080808080808080;
                if (v16 != 0x8080808080808080)
                {
                  v17 = v14 - 40;
                  v18 = v16 ^ 0x8080808080808080;
                  do
                  {
                    v19 = (v17 + 40 * (__clz(__rbit64(v18)) >> 3));
                    if (v19[1] >= 2uLL)
                    {
                      operator delete((v19[3] - (v19[2] & 1) - 8));
                    }

                    v18 &= v18 - 1;
                  }

                  while (v18);
                }
              }

              operator delete((v12[2] - (v12[1] & 1) - 8));
            }

            --v7;
            v9 &= v9 - 1;
          }

          while (v9);
        }

        v1 = v25 + 1;
        v2 += 320;
      }

      while (v7);
    }
  }

  else
  {
    v3 = *(v1 + *a1) & 0x8080808080808080;
    if (v3 != 0x8080808080808080)
    {
      v4 = v2 - 40;
      v5 = v3 ^ 0x8080808080808080;
      do
      {
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>>>>::destructor_impl((v4 + 40 * (__clz(__rbit64(v5)) >> 3) + 8));
        v5 &= v5 - 1;
      }

      while (v5);
    }
  }
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>>>>::destructor_impl(unint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v4 = a1[2];
    v3 = a1[3];
    if (v1 > 6)
    {
      v9 = a1[1];
      if (v9 >= 2)
      {
        v11 = v9 >> 1;
        do
        {
          v12 = *v4 & 0x8080808080808080;
          if (v12 != 0x8080808080808080)
          {
            v13 = v12 ^ 0x8080808080808080;
            do
            {
              v14 = (v3 + 40 * (__clz(__rbit64(v13)) >> 3));
              if (v14[1] >= 2uLL)
              {
                operator delete((v14[3] - (v14[2] & 1) - 8));
              }

              --v11;
              v13 &= v13 - 1;
            }

            while (v13);
          }

          ++v4;
          v3 += 320;
        }

        while (v11);
      }
    }

    else
    {
      v5 = *(v4 + v1) & 0x8080808080808080;
      if (v5 != 0x8080808080808080)
      {
        v6 = v3 - 40;
        v7 = v5 ^ 0x8080808080808080;
        do
        {
          v8 = (v6 + 40 * (__clz(__rbit64(v7)) >> 3));
          if (v8[1] >= 2uLL)
          {
            operator delete((v8[3] - (v8[2] & 1) - 8));
          }

          v7 &= v7 - 1;
        }

        while (v7);
      }
    }

    v10 = (a1[2] - (a1[1] & 1) - 8);

    operator delete(v10);
  }
}

unint64_t *absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::DomainDeductions::Index_index_tag_>,int>,operations_research::Domain>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::DomainDeductions::Index_index_tag_>,int>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::DomainDeductions::Index_index_tag_>,int>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::DomainDeductions::Index_index_tag_>,int> const,operations_research::Domain>>>::~raw_hash_set(unint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v4 = a1[2];
    v3 = a1[3];
    if (v2 > 6)
    {
      v9 = a1[1];
      if (v9 >= 2)
      {
        v11 = v9 >> 1;
        do
        {
          v12 = *v4 & 0x8080808080808080;
          if (v12 != 0x8080808080808080)
          {
            v13 = v12 ^ 0x8080808080808080;
            do
            {
              v14 = v3 + ((4 * __clz(__rbit64(v13))) & 0x1E0);
              if (*(v14 + 8))
              {
                operator delete(*(v14 + 16));
              }

              --v11;
              v13 &= v13 - 1;
            }

            while (v13);
          }

          ++v4;
          v3 += 256;
        }

        while (v11);
      }
    }

    else
    {
      v5 = *(v4 + v2) & 0x8080808080808080;
      if (v5 != 0x8080808080808080)
      {
        v6 = v3 - 32;
        v7 = v5 ^ 0x8080808080808080;
        do
        {
          v8 = v6 + ((4 * __clz(__rbit64(v7))) & 0x1E0);
          if (*(v8 + 8))
          {
            operator delete(*(v8 + 16));
          }

          v7 &= v7 - 1;
        }

        while (v7);
      }
    }

    operator delete((a1[2] - (a1[1] & 1) - 8));
  }

  return a1;
}

void operations_research::sat::ModelCopy::~ModelCopy(operations_research::sat::ModelCopy *this)
{
  if (*(this + 22) >= 2uLL)
  {
    operator delete((*(this + 24) - (*(this + 23) & 1) - 8));
  }

  v2 = *(this + 19);
  if (v2)
  {
    *(this + 20) = v2;
    operator delete(v2);
  }

  if (*(this + 15) >= 2uLL)
  {
    operator delete((*(this + 17) - (*(this + 16) & 1) - 8));
  }

  v3 = *(this + 12);
  if (v3)
  {
    *(this + 13) = v3;
    operator delete(v3);
  }

  if (*(this + 7) >= 2uLL)
  {
    operator delete((*(this + 9) - (*(this + 8) & 1) - 8));
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

void operations_research::sat::PresolveContext::~PresolveContext(operations_research::sat::PresolveContext *this)
{
  v2 = *(this + 144);
  if (v2)
  {
    *(this + 145) = v2;
    operator delete(v2);
  }

  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,int>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,int>>>::~raw_hash_set(this + 140);
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,int>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,int>>>::~raw_hash_set(this + 136);
  if (*(this + 132))
  {
    operator delete((*(this + 134) - (*(this + 133) & 1) - 8));
  }

  if (*(this + 128) >= 2uLL)
  {
    operator delete((*(this + 130) - (*(this + 129) & 1) - 8));
  }

  v3 = *(this + 125);
  if (v3)
  {
    *(this + 126) = v3;
    operator delete(v3);
  }

  v4 = *(this + 122);
  if (v4)
  {
    *(this + 123) = v4;
    operator delete(v4);
  }

  v5 = *(this + 119);
  if (v5)
  {
    *(this + 120) = v5;
    operator delete(v5);
  }

  v6 = *(this + 116);
  if (v6)
  {
    *(this + 117) = v6;
    operator delete(v6);
  }

  v7 = *(this + 113);
  if (v7)
  {
    *(this + 114) = v7;
    operator delete(v7);
  }

  if (*(this + 108))
  {
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,absl::lts_20240722::flat_hash_map<long long,absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>>>>>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,absl::lts_20240722::flat_hash_map<long long,absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>>>>>>>::destroy_slots(this + 108);
    operator delete((*(this + 110) - (*(this + 109) & 1) - 8));
  }

  if (*(this + 104))
  {
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,absl::lts_20240722::flat_hash_map<long long,absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>>>>>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,absl::lts_20240722::flat_hash_map<long long,absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>>>>>>>::destroy_slots(this + 104);
    operator delete((*(this + 106) - (*(this + 105) & 1) - 8));
  }

  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,absl::lts_20240722::flat_hash_set<int,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>>>>::destructor_impl(this + 100);
  v8 = *(this + 96);
  if (v8)
  {
    *(this + 97) = v8;
    operator delete(v8);
  }

  v9 = *(this + 93);
  if (v9)
  {
    v10 = *(this + 94);
    v11 = *(this + 93);
    if (v10 != v9)
    {
      v12 = *(this + 94);
      do
      {
        v14 = *(v12 - 24);
        v12 -= 24;
        v13 = v14;
        if (v14)
        {
          *(v10 - 16) = v13;
          operator delete(v13);
        }

        v10 = v12;
      }

      while (v12 != v9);
      v11 = *(this + 93);
    }

    *(this + 94) = v9;
    operator delete(v11);
  }

  v15 = *(this + 90);
  if (v15)
  {
    *(this + 91) = v15;
    operator delete(v15);
  }

  v16 = *(this + 87);
  if (v16)
  {
    *(this + 88) = v16;
    operator delete(v16);
  }

  v17 = *(this + 84);
  if (v17)
  {
    v18 = *(this + 85);
    v19 = *(this + 84);
    if (v18 != v17)
    {
      v20 = *(this + 85);
      do
      {
        v21 = *(v20 - 32);
        v20 -= 32;
        if (v21 >= 2)
        {
          operator delete((*(v18 - 16) - (*(v18 - 24) & 1) - 8));
        }

        v18 = v20;
      }

      while (v20 != v17);
      v19 = *(this + 84);
    }

    *(this + 85) = v17;
    operator delete(v19);
  }

  v22 = *(this + 81);
  if (v22)
  {
    v23 = *(this + 82);
    v24 = *(this + 81);
    if (v23 != v22)
    {
      v25 = *(this + 82);
      do
      {
        v27 = *(v25 - 24);
        v25 -= 24;
        v26 = v27;
        if (v27)
        {
          *(v23 - 16) = v26;
          operator delete(v26);
        }

        v23 = v25;
      }

      while (v25 != v22);
      v24 = *(this + 81);
    }

    *(this + 82) = v22;
    operator delete(v24);
  }

  if (*(this + 584))
  {
    operator delete(*(this + 74));
  }

  v28 = *(this + 69);
  if (v28)
  {
    *(this + 70) = v28;
    operator delete(v28);
  }

  if (*(this + 64) >= 2uLL)
  {
    operator delete((*(this + 66) - (*(this + 65) & 1) - 8));
  }

  v29 = *(this + 60);
  if (v29)
  {
    *(this + 61) = v29;
    operator delete(v29);
  }

  v30 = *(this + 57);
  if (v30)
  {
    operator delete(v30);
  }

  v31 = *(this + 53);
  if (v31)
  {
    v32 = *(this + 54);
    v33 = *(this + 53);
    if (v32 != v31)
    {
      v34 = *(this + 54);
      do
      {
        v35 = *(v34 - 24);
        v34 -= 24;
        if (v35)
        {
          operator delete(*(v32 - 16));
        }

        v32 = v34;
      }

      while (v34 != v31);
      v33 = *(this + 53);
    }

    *(this + 54) = v31;
    operator delete(v33);
  }

  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::DomainDeductions::Index_index_tag_>,int>,operations_research::Domain>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::DomainDeductions::Index_index_tag_>,int>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::DomainDeductions::Index_index_tag_>,int>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::DomainDeductions::Index_index_tag_>,int> const,operations_research::Domain>>>::~raw_hash_set(this + 44);
  v36 = *(this + 41);
  if (v36)
  {
    v37 = *(this + 42);
    v38 = *(this + 41);
    if (v37 != v36)
    {
      v39 = *(this + 42);
      do
      {
        v41 = *(v39 - 24);
        v39 -= 24;
        v40 = v41;
        if (v41)
        {
          *(v37 - 16) = v40;
          operator delete(v40);
        }

        v37 = v39;
      }

      while (v39 != v36);
      v38 = *(this + 41);
    }

    *(this + 42) = v36;
    operator delete(v38);
  }

  v42 = *(this + 38);
  if (v42)
  {
    *(this + 39) = v42;
    operator delete(v42);
  }

  v43 = *(this + 35);
  if (v43)
  {
    *(this + 36) = v43;
    operator delete(v43);
  }

  v44 = *(this + 31);
  if (v44)
  {
    *(this + 32) = v44;
    operator delete(v44);
  }

  v45 = *(this + 28);
  if (v45)
  {
    *(this + 29) = v45;
    operator delete(v45);
  }

  v46 = *(this + 25);
  if (v46)
  {
    *(this + 26) = v46;
    operator delete(v46);
  }

  v47 = *(this + 21);
  if (v47)
  {
    *(this + 22) = v47;
    operator delete(v47);
  }

  v48 = *(this + 18);
  if (v48)
  {
    *(this + 19) = v48;
    operator delete(v48);
  }

  if (*(this + 13) >= 2uLL)
  {
    operator delete((*(this + 15) - (*(this + 14) & 1) - 8));
  }

  v49 = *(this + 10);
  if (v49)
  {
    v50 = *(this + 11);
    v51 = *(this + 10);
    if (v50 != v49)
    {
      v52 = *(this + 11);
      do
      {
        v53 = *(v52 - 24);
        v52 -= 24;
        if (v53)
        {
          operator delete(*(v50 - 16));
        }

        v50 = v52;
      }

      while (v52 != v49);
      v51 = *(this + 10);
    }

    *(this + 11) = v49;
    operator delete(v51);
  }

  v54 = *(this + 7);
  if (v54)
  {
    v55 = *(this + 8);
    v56 = *(this + 7);
    if (v55 != v54)
    {
      v57 = *(this + 8);
      do
      {
        v58 = *(v57 - 24);
        v57 -= 24;
        if (v58)
        {
          operator delete(*(v55 - 16));
        }

        v55 = v57;
      }

      while (v57 != v54);
      v56 = *(this + 7);
    }

    *(this + 8) = v54;
    operator delete(v56);
  }

  v59 = *(this + 4);
  if (v59)
  {
    *(this + 5) = v59;
    operator delete(v59);
  }
}

unint64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::vector<int>>,absl::lts_20240722::hash_internal::Hash<std::vector<int>>,std::equal_to<std::vector<int>>,std::allocator<std::vector<int>>>::EmplaceDecomposable::operator()<std::vector<int>,std::vector<int> const&>@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, unint64_t a4@<X3>, const unint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a1;
  _X8 = (*a1)[2];
  __asm { PRFM            #4, [X8] }

  v16 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, *a2, *(a2 + 8) - *a2, a4, a5);
  v17 = 0;
  v18 = *a2;
  v19 = *(a2 + 8) - *a2;
  v20 = (((v16 + (v19 >> 2)) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v16 + (v19 >> 2)));
  v21 = v9[2];
  v22 = *v9;
  v23 = vdup_n_s8(v20 & 0x7F);
  v24 = ((v20 >> 7) ^ (v21 >> 12)) & *v9;
  v25 = *(v21 + v24);
  v26 = vceq_s8(v25, v23);
  if (v26)
  {
LABEL_2:
    v27 = v9[3];
    v37 = v17;
    v38 = a3;
    v39 = a6;
    v36 = v27;
    while (1)
    {
      v28 = (v24 + (__clz(__rbit64(v26)) >> 3)) & v22;
      v29 = v27 + 24 * v28;
      if (*(v29 + 8) - *v29 == v19)
      {
        result = memcmp(*v29, v18, v19);
        if (!result)
        {
          break;
        }
      }

      v26 &= ((v26 & 0x8080808080808080) - 1) & 0x8080808080808080;
      v17 = v37;
      a3 = v38;
      a6 = v39;
      v27 = v36;
      if (!v26)
      {
        goto LABEL_6;
      }
    }

    *v39 = v21 + v28;
    *(v39 + 8) = v29;
    *(v39 + 16) = 0;
  }

  else
  {
LABEL_6:
    while (1)
    {
      v31 = vceq_s8(v25, 0x8080808080808080);
      if (v31)
      {
        break;
      }

      v17 += 8;
      v24 = (v17 + v24) & v22;
      v25 = *(v21 + v24);
      v26 = vceq_s8(v25, v23);
      if (v26)
      {
        goto LABEL_2;
      }
    }

    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(v9, v20, (v24 + (__clz(__rbit64(v31)) >> 3)) & v22, v17, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::vector<int>>,absl::lts_20240722::hash_internal::Hash<std::vector<int>>,std::equal_to<std::vector<int>>,std::allocator<std::vector<int>>>::GetPolicyFunctions(void)::value);
    v32 = v9[2] + result;
    v33 = (v9[3] + 24 * result);
    *a6 = v32;
    *(a6 + 8) = v33;
    *(a6 + 16) = 1;
    v33[1] = 0;
    v33[2] = 0;
    *v33 = 0;
    v34 = a3[1];
    if (v34 != *a3)
    {
      if (((v34 - *a3) & 0x8000000000000000) == 0)
      {
        v35 = v34 - *a3;
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }
  }

  return result;
}

void sub_23CA444E4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::vector<int>>,absl::lts_20240722::hash_internal::Hash<std::vector<int>>,std::equal_to<std::vector<int>>,std::allocator<std::vector<int>>>::resize_impl(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8) & 1;
  v5 = 0;
  v2 = *(a1 + 16);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,24ul,false,false,8ul>(&v2, a1);
}

__n128 absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::vector<int>>,absl::lts_20240722::hash_internal::Hash<std::vector<int>>,std::equal_to<std::vector<int>>,std::allocator<std::vector<int>>>::transfer_slot_fn(uint64_t a1, __n128 *a2, __n128 *a3)
{
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  result = *a3;
  *a2 = *a3;
  a2[1].n128_u64[0] = a3[1].n128_u64[0];
  a3->n128_u64[0] = 0;
  a3->n128_u64[1] = 0;
  a3[1].n128_u64[0] = 0;
  return result;
}

unint64_t *absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::vector<int>>,absl::lts_20240722::hash_internal::Hash<std::vector<int>>,std::equal_to<std::vector<int>>,std::allocator<std::vector<int>>>::~raw_hash_set(unint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v4 = a1[2];
    v3 = a1[3];
    if (v2 > 6)
    {
      v10 = a1[1];
      if (v10 >= 2)
      {
        v12 = v10 >> 1;
        do
        {
          v13 = *v4 & 0x8080808080808080;
          if (v13 != 0x8080808080808080)
          {
            v14 = v13 ^ 0x8080808080808080;
            do
            {
              v15 = v3 + 24 * (__clz(__rbit64(v14)) >> 3);
              v16 = *v15;
              if (*v15)
              {
                *(v15 + 8) = v16;
                operator delete(v16);
              }

              --v12;
              v14 &= v14 - 1;
            }

            while (v14);
          }

          ++v4;
          v3 += 192;
        }

        while (v12);
      }
    }

    else
    {
      v5 = *(v4 + v2) & 0x8080808080808080;
      if (v5 != 0x8080808080808080)
      {
        v6 = v3 - 24;
        v7 = v5 ^ 0x8080808080808080;
        do
        {
          v8 = v6 + 24 * (__clz(__rbit64(v7)) >> 3);
          v9 = *v8;
          if (*v8)
          {
            *(v8 + 8) = v9;
            operator delete(v9);
          }

          v7 &= v7 - 1;
        }

        while (v7);
      }
    }

    operator delete((a1[2] - (a1[1] & 1) - 8));
  }

  return a1;
}

__int128 *std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::anonymous namespace::Demand *,false>(__int128 *result, __int128 *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 2;
  i = v7;
  while (1)
  {
    v7 = i;
    v10 = (a2 - i) >> 5;
    if (v10 <= 2)
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v67 = *(a2 - 3);
        v68 = *(i + 8);
        if (v67 < v68 || v68 >= v67 && ((v151 = *(a2 - 1), v152 = *(i + 24), v151 < v152) || v152 >= v151 && *(a2 - 2) < *(i + 16)))
        {
          v173 = *i;
          v181 = *(i + 16);
          v69 = *(a2 - 1);
          *i = *v8;
          *(i + 16) = v69;
          *v8 = v173;
          *(a2 - 1) = v181;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v10 == 3)
    {
      break;
    }

    if (v10 == 4)
    {
      v70 = *(a2 - 3);
      v71 = *(i + 72);
      if (v70 < v71 || v71 >= v70 && ((v153 = *(a2 - 1), v154 = *(i + 88), v153 < v154) || v154 >= v153 && *(a2 - 2) < *(i + 80)))
      {
        v174 = *(i + 64);
        v182 = *(i + 80);
        v72 = *(a2 - 1);
        *(i + 64) = *v8;
        *(i + 80) = v72;
        *v8 = v174;
        *(a2 - 1) = v182;
        v73 = *(i + 72);
        v74 = *(i + 40);
        if (v73 < v74 || v74 >= v73 && ((v166 = *(i + 88), v167 = *(i + 56), v166 < v167) || v167 >= v166 && *(i + 80) < *(i + 48)))
        {
          v175 = *(i + 32);
          v183 = *(i + 48);
          v75 = *(i + 80);
          *(i + 32) = *(i + 64);
          *(i + 48) = v75;
          *(i + 64) = v175;
          *(i + 80) = v183;
          v76 = *(i + 40);
          v77 = *(i + 8);
          if (v76 < v77 || v77 >= v76 && ((v168 = *(i + 56), v169 = *(i + 24), v168 < v169) || v169 >= v168 && *(i + 48) < *(i + 16)))
          {
            v176 = *i;
            v184 = *(i + 16);
            v78 = *(i + 48);
            *i = *(i + 32);
            *(i + 16) = v78;
            *(i + 32) = v176;
            *(i + 48) = v184;
          }
        }
      }

      return result;
    }

    if (v10 == 5)
    {
    }

LABEL_10:
    if (v10 <= 23)
    {
      v79 = (i + 32);
      v81 = i == a2 || v79 == a2;
      if (a4)
      {
        if (v81)
        {
          return result;
        }

        v82 = 0;
        v83 = i;
LABEL_152:
        v85 = v83;
        v83 = v79;
        v86 = v85[5];
        v87 = v85[1];
        if (v86 >= v87)
        {
          if (v87 < v86)
          {
            goto LABEL_151;
          }

          v88 = v85[7];
          v97 = v85[3];
          if (v88 >= v97 && (v97 < v88 || v85[6] >= v85[2]))
          {
            goto LABEL_151;
          }
        }

        else
        {
          v88 = v85[7];
        }

        v89 = v85[4];
        v90 = v85[6];
        v91 = *(v85 + 1);
        *v83 = *v85;
        v83[1] = v91;
        v84 = i;
        if (v85 == i)
        {
          goto LABEL_150;
        }

        v92 = v82;
        while (1)
        {
          v94 = (i + v92);
          v95 = *(i + v92 - 24);
          if (v86 >= v95)
          {
            if (v95 < v86)
            {
              goto LABEL_162;
            }

            v96 = *(v94 - 1);
            if (v88 >= v96)
            {
              if (v96 < v88)
              {
                v84 = (i + v92);
LABEL_150:
                *v84 = v89;
                v84[1] = v86;
                v84[2] = v90;
                v84[3] = v88;
LABEL_151:
                v79 = v83 + 2;
                v82 += 32;
                if (v83 + 2 == a2)
                {
                  return result;
                }

                goto LABEL_152;
              }

              if (v90 >= *(v94 - 2))
              {
LABEL_162:
                v84 = v85;
                goto LABEL_150;
              }
            }
          }

          v85 -= 4;
          v93 = *(v94 - 1);
          *v94 = *(v94 - 2);
          v94[1] = v93;
          v92 -= 32;
          if (!v92)
          {
            v84 = i;
            goto LABEL_150;
          }
        }
      }

      if (v81)
      {
        return result;
      }

      while (2)
      {
        v155 = v7;
        v7 = v79;
        v156 = *(v155 + 40);
        v157 = *(v155 + 8);
        if (v156 >= v157)
        {
          if (v157 >= v156)
          {
            v158 = *(v155 + 56);
            v165 = *(v155 + 24);
            if (v158 < v165 || v165 >= v158 && *(v155 + 48) < *(v155 + 16))
            {
              goto LABEL_253;
            }
          }
        }

        else
        {
          v158 = *(v155 + 56);
LABEL_253:
          v159 = *v7;
          v160 = *(v155 + 48);
          do
          {
            do
            {
              v161 = v155;
              v162 = *(v155 + 16);
              *(v155 + 32) = *v155;
              *(v155 + 48) = v162;
              v155 -= 32;
              v163 = *(v161 - 3);
            }

            while (v156 < v163);
            if (v163 < v156)
            {
              break;
            }

            v164 = *(v161 - 1);
          }

          while (v158 < v164 || v164 >= v158 && v160 < *(v161 - 2));
          *v161 = v159;
          v161[1] = v156;
          v161[2] = v160;
          v161[3] = v158;
        }

        v79 = (v7 + 32);
        if ((v7 + 32) == a2)
        {
          return result;
        }

        continue;
      }
    }

    if (!a3)
    {
      if (i == a2)
      {
        return result;
      }

      v98 = (v10 - 2) >> 1;
      v99 = v98;
      while (2)
      {
        v101 = v99;
        v102 = 32 * v99;
        if (v98 >= (32 * v99) >> 5)
        {
          v103 = (v102 >> 4) | 1;
          v100 = (i + 32 * v103);
          if ((v102 >> 4) + 2 < v10)
          {
            v104 = v100[1];
            v105 = v100[5];
            if (v104 < v105 || v105 >= v104 && ((v120 = v100[3], v121 = v100[7], v120 < v121) || v121 >= v120 && v100[2] < v100[6]))
            {
              v100 += 4;
              v103 = (v102 >> 4) + 2;
            }
          }

          v106 = (i + v102);
          v107 = v100[1];
          v108 = *(i + v102 + 8);
          if (v107 >= v108)
          {
            v109 = v106[3];
            if (v108 >= v107)
            {
              v119 = v100[3];
              if (v119 >= v109)
              {
                v110 = v106[2];
                if (v109 < v119 || v100[2] >= v110)
                {
                  goto LABEL_182;
                }
              }
            }

            else
            {
              v110 = v106[2];
LABEL_182:
              v111 = *v106;
              while (1)
              {
                v112 = *(v100 + 1);
                *v106 = *v100;
                *(v106 + 1) = v112;
                if (v98 < v103)
                {
                  goto LABEL_172;
                }

                v106 = v100;
                v113 = 2 * v103;
                v103 = (2 * v103) | 1;
                v100 = (i + 32 * v103);
                v114 = v113 + 2;
                if (v114 < v10)
                {
                  v115 = v100[1];
                  v116 = v100[5];
                  if (v115 < v116 || v116 >= v115 && ((v117 = v100[3], v118 = v100[7], v117 < v118) || v118 >= v117 && v100[2] < v100[6]))
                  {
                    v100 += 4;
                    v103 = v114;
                  }
                }

                result = v100[1];
                if (result < v108)
                {
                  break;
                }

                if (v108 >= result)
                {
                  result = v100[3];
                  if (result < v109)
                  {
                    break;
                  }

                  if (v109 >= result)
                  {
                    result = v100[2];
                    if (result < v110)
                    {
                      break;
                    }
                  }
                }
              }

              v100 = v106;
LABEL_172:
              *v100 = v111;
              v100[1] = v108;
              v100[2] = v110;
              v100[3] = v109;
            }
          }
        }

        v99 = v101 - 1;
        if (v101)
        {
          continue;
        }

        break;
      }

      while (2)
      {
        v123 = 0;
        v177 = *i;
        v185 = *(i + 16);
        v124 = i;
        do
        {
          v126 = v124;
          v127 = &v124[2 * v123];
          v124 = v127 + 2;
          v128 = 2 * v123;
          v123 = (2 * v123) | 1;
          v129 = v128 + 2;
          if (v129 < v10)
          {
            v130 = *(v127 + 5);
            v131 = *(v127 + 9);
            if (v130 < v131 || v131 >= v130 && ((v132 = *(v127 + 7), v133 = *(v127 + 11), v132 < v133) || v133 >= v132 && *(v127 + 6) < *(v127 + 10)))
            {
              v124 = v127 + 4;
              v123 = v129;
            }
          }

          v125 = v124[1];
          *v126 = *v124;
          v126[1] = v125;
        }

        while (v123 <= ((v10 - 2) >> 1));
        a2 -= 2;
        if (v124 == a2)
        {
          *v124 = v177;
          v124[1] = v185;
        }

        else
        {
          v134 = a2[1];
          *v124 = *a2;
          v124[1] = v134;
          *a2 = v177;
          a2[1] = v185;
          v135 = (v124 - i + 32) >> 5;
          v136 = v135 - 2;
          if (v135 >= 2)
          {
            v137 = v136 >> 1;
            v138 = (i + 32 * (v136 >> 1));
            v139 = *(v138 + 1);
            v140 = *(v124 + 1);
            if (v139 < v140)
            {
              v141 = *(v124 + 3);
              goto LABEL_222;
            }

            if (v140 >= v139)
            {
              v150 = *(v138 + 3);
              v141 = *(v124 + 3);
              if (v150 < v141 || v141 >= v150 && *(v138 + 2) < *(v124 + 2))
              {
LABEL_222:
                v142 = *v124;
                v143 = *(v124 + 2);
                v144 = v138[1];
                *v124 = *v138;
                v124[1] = v144;
                if (v136 >= 2)
                {
                  while (1)
                  {
                    v146 = v138;
                    v147 = v137 - 1;
                    v137 = (v137 - 1) >> 1;
                    v138 = (i + 32 * v137);
                    v148 = *(v138 + 1);
                    if (v148 >= v140)
                    {
                      if (v140 < v148)
                      {
                        break;
                      }

                      v149 = *(v138 + 3);
                      if (v149 >= v141 && (v141 < v149 || *(v138 + 2) >= v143))
                      {
                        break;
                      }
                    }

                    v145 = v138[1];
                    *v146 = *v138;
                    v146[1] = v145;
                    if (v147 <= 1)
                    {
                      goto LABEL_231;
                    }
                  }

                  v138 = v146;
                }

LABEL_231:
                *v138 = v142;
                *(v138 + 1) = v140;
                *(v138 + 2) = v143;
                *(v138 + 3) = v141;
              }
            }
          }
        }

        if (v10-- <= 2)
        {
          return result;
        }

        continue;
      }
    }

    v11 = v10 >> 1;
    v12 = (i + 32 * (v10 >> 1));
    if (v10 < 0x81)
    {
      --a3;
      if (a4)
      {
LABEL_21:
        v17 = *(v7 + 8);
        goto LABEL_22;
      }
    }

    else
    {
      v13 = 32 * v11;
      v14 = (32 * v11 + v7 - 32);
      v170 = *v7;
      v178 = *(v7 + 16);
      v15 = v12[1];
      *v7 = *v12;
      *(v7 + 16) = v15;
      *v12 = v170;
      v12[1] = v178;
      --a3;
      if (a4)
      {
        goto LABEL_21;
      }
    }

    v16 = *(v7 - 24);
    v17 = *(v7 + 8);
    if (v16 < v17)
    {
      goto LABEL_22;
    }

    v18 = *(v7 + 24);
    if (v17 < v16)
    {
      v20 = *(v7 + 16);
      goto LABEL_75;
    }

    v19 = *(v7 - 8);
    if (v19 < v18 || (v20 = *(v7 + 16), v18 >= v19) && *(v7 - 16) < v20)
    {
LABEL_22:
      v21 = 0;
      v22 = *v7;
      v23 = *(v7 + 16);
      v24 = *(v7 + 24);
      while (1)
      {
        v25 = v7 + v21;
        v26 = *(v7 + v21 + 40);
        if (v26 >= v17)
        {
          if (v17 < v26)
          {
            break;
          }

          v27 = *(v25 + 56);
          if (v27 >= v24 && (v24 < v27 || *(v25 + 48) >= v23))
          {
            break;
          }
        }

        v21 += 32;
      }

      v28 = v7 + v21 + 32;
      if (v21)
      {
        v29 = *(a2 - 3);
        v30 = a2 - 1;
        v31 = a2 - 2;
        if (v29 >= v17)
        {
          do
          {
            if (v17 >= v29)
            {
              v32 = *(v30 + 1);
              if (v32 < v24)
              {
                goto LABEL_50;
              }

              if (v24 >= v32 && *v30 < v23)
              {
                break;
              }
            }

            v31 -= 2;
            v29 = *(v30 - 5);
            v30 -= 2;
          }

          while (v29 >= v17);
LABEL_37:
          v31 = v30 - 1;
        }
      }

      else
      {
        v31 = a2;
        if (v28 < a2)
        {
          v33 = *(a2 - 3);
          v31 = a2 - 2;
          if (v33 >= v17)
          {
            v30 = a2 - 1;
            v31 = a2 - 2;
            while (1)
            {
              v34 = v30 - 1;
              if (v17 < v33)
              {
                goto LABEL_41;
              }

              v35 = *(v30 + 1);
              if (v35 < v24)
              {
                break;
              }

              if (v24 < v35)
              {
LABEL_41:
                if (v28 >= v34)
                {
                  v31 = v30 - 1;
                  break;
                }
              }

              else if (v28 >= v34 || *v30 < v23)
              {
                break;
              }

              v31 -= 2;
              v33 = *(v30 - 5);
              v30 -= 2;
              if (v33 < v17)
              {
                goto LABEL_37;
              }
            }
          }
        }
      }

LABEL_50:
      i = v28;
      if (v28 < v31)
      {
        v36 = v31;
        do
        {
          v171 = *i;
          v179 = *(i + 16);
          v38 = v36[1];
          *i = *v36;
          *(i + 16) = v38;
          *v36 = v171;
          v36[1] = v179;
          do
          {
            do
            {
              i += 32;
              v39 = *(i + 8);
            }

            while (v39 < v17);
            if (v17 < v39)
            {
              break;
            }

            v40 = *(i + 24);
          }

          while (v40 < v24 || v24 >= v40 && *(i + 16) < v23);
          v37 = v36 - 2;
          v41 = *(v36 - 3);
          if (v41 >= v17)
          {
            v42 = v36 - 1;
            while (1)
            {
              if (v17 >= v41)
              {
                v43 = *(v42 + 1);
                if (v43 < v24)
                {
LABEL_52:
                  v37 = v42 - 1;
                  break;
                }

                if (v24 >= v43 && *v42 < v23)
                {
                  break;
                }
              }

              v37 -= 2;
              v41 = *(v42 - 5);
              v42 -= 2;
              if (v41 < v17)
              {
                goto LABEL_52;
              }
            }
          }

          v36 = v37;
        }

        while (i < v37);
      }

      if (i - 32 != v7)
      {
        v44 = *(i - 16);
        *v7 = *(i - 32);
        *(v7 + 16) = v44;
      }

      *(i - 32) = v22;
      *(i - 24) = v17;
      *(i - 16) = v23;
      *(i - 8) = v24;
      if (v28 < v31)
      {
        goto LABEL_73;
      }

      if (result)
      {
        a2 = (i - 32);
        if (v45)
        {
          return result;
        }

        goto LABEL_2;
      }

      if ((v45 & 1) == 0)
      {
LABEL_73:
        a4 = 0;
      }
    }

    else
    {
LABEL_75:
      v46 = *v7;
      v47 = *(a2 - 3);
      if (v17 < v47 || v47 >= v17 && ((v66 = *(a2 - 1), v18 < v66) || v66 >= v18 && v20 < *(a2 - 2)))
      {
        i = v7 + 32;
        v48 = *(v7 + 40);
        if (v17 >= v48)
        {
          v49 = (v7 + 72);
          do
          {
            if (v48 >= v17)
            {
              v51 = *(v49 - 2);
              if (v18 < v51)
              {
                goto LABEL_84;
              }

              if (v51 >= v18 && v20 < *(v49 - 3))
              {
                break;
              }
            }

            i += 32;
            v50 = *v49;
            v49 += 4;
            v48 = v50;
          }

          while (v17 >= v50);
          i = (v49 - 5);
        }
      }

      else
      {
        for (i = v7 + 32; i < a2; i += 32)
        {
          v64 = *(i + 8);
          if (v17 < v64)
          {
            break;
          }

          if (v64 >= v17)
          {
            v65 = *(i + 24);
            if (v18 < v65 || v65 >= v18 && v20 < *(i + 16))
            {
              break;
            }
          }
        }
      }

LABEL_84:
      v52 = a2;
      if (i < a2)
      {
        for (j = a2 - 1; ; j -= 2)
        {
          if (v17 >= v47)
          {
            if (v47 < v17)
            {
              break;
            }

            v54 = *(j + 1);
            if (v18 >= v54 && (v54 < v18 || v20 >= *j))
            {
              break;
            }
          }

          v47 = *(j - 5);
        }

        v52 = j - 1;
      }

      while (i < v52)
      {
        v172 = *i;
        v180 = *(i + 16);
        v55 = v52[1];
        *i = *v52;
        *(i + 16) = v55;
        *v52 = v172;
        v52[1] = v180;
        v56 = i + 32;
        v57 = *(i + 40);
        if (v17 >= v57)
        {
          v58 = (i + 72);
          while (1)
          {
            if (v57 >= v17)
            {
              v60 = *(v58 - 2);
              if (v18 < v60)
              {
LABEL_102:
                i = (v58 - 5);
                goto LABEL_103;
              }

              if (v60 >= v18 && v20 < *(v58 - 3))
              {
                i = v56;
                goto LABEL_103;
              }
            }

            v56 += 32;
            v59 = *v58;
            v58 += 4;
            v57 = v59;
            if (v17 < v59)
            {
              goto LABEL_102;
            }
          }
        }

        i += 32;
        do
        {
          do
          {
LABEL_103:
            v52 -= 2;
            v61 = *(v52 + 1);
          }

          while (v17 < v61);
          if (v61 < v17)
          {
            break;
          }

          v62 = *(v52 + 3);
        }

        while (v18 < v62 || v62 >= v18 && v20 < *(v52 + 2));
      }

      if (i - 32 != v7)
      {
        v63 = *(i - 16);
        *v7 = *(i - 32);
        *(v7 + 16) = v63;
      }

      a4 = 0;
      *(i - 32) = v46;
      *(i - 24) = v17;
      *(i - 16) = v20;
      *(i - 8) = v18;
    }
  }
}

__int128 *std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::anonymous namespace::Demand *,0>(__int128 *result, __int128 *a2, __int128 *a3)
{
  v3 = *(a2 + 1);
  v4 = *(result + 1);
  if (v3 < v4 || v4 >= v3 && ((v24 = *(a2 + 3), v25 = *(result + 3), v24 < v25) || v25 >= v24 && *(a2 + 2) < *(result + 2)))
  {
    v5 = *(a3 + 1);
    if (v5 < v3 || v3 >= v5 && ((v28 = *(a3 + 3), v29 = *(a2 + 3), v28 < v29) || v29 >= v28 && *(a3 + 2) < *(a2 + 2)))
    {
      v7 = *result;
      v6 = result[1];
      v8 = a3[1];
      *result = *a3;
      result[1] = v8;
    }

    else
    {
      v19 = *result;
      v18 = result[1];
      v20 = a2[1];
      *result = *a2;
      result[1] = v20;
      *a2 = v19;
      a2[1] = v18;
      v21 = *(a3 + 1);
      v22 = *(a2 + 1);
      if (v21 >= v22)
      {
        if (v22 < v21)
        {
          return result;
        }

        v32 = *(a3 + 3);
        v33 = *(a2 + 3);
        if (v32 >= v33 && (v33 < v32 || *(a3 + 2) >= *(a2 + 2)))
        {
          return result;
        }
      }

      v7 = *a2;
      v6 = a2[1];
      v23 = a3[1];
      *a2 = *a3;
      a2[1] = v23;
    }

    *a3 = v7;
    a3[1] = v6;
    return result;
  }

  v9 = *(a3 + 1);
  if (v9 < v3 || v3 >= v9 && ((v26 = *(a3 + 3), v27 = *(a2 + 3), v26 < v27) || v27 >= v26 && *(a3 + 2) < *(a2 + 2)))
  {
    v11 = *a2;
    v10 = a2[1];
    v12 = a3[1];
    *a2 = *a3;
    a2[1] = v12;
    *a3 = v11;
    a3[1] = v10;
    v13 = *(a2 + 1);
    v14 = *(result + 1);
    if (v13 < v14 || v14 >= v13 && ((v30 = *(a2 + 3), v31 = *(result + 3), v30 < v31) || v31 >= v30 && *(a2 + 2) < *(result + 2)))
    {
      v16 = *result;
      v15 = result[1];
      v17 = a2[1];
      *result = *a2;
      result[1] = v17;
      *a2 = v16;
      a2[1] = v15;
    }
  }

  return result;
}

__int128 *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::anonymous namespace::Demand *,0>(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  v11 = *(a4 + 1);
  v12 = *(a3 + 8);
  if (v11 < v12 || v12 >= v11 && ((v26 = *(a4 + 3), v27 = *(a3 + 24), v26 < v27) || v27 >= v26 && *(a4 + 2) < *(a3 + 16)))
  {
    v14 = *a3;
    v13 = *(a3 + 16);
    v15 = a4[1];
    *a3 = *a4;
    *(a3 + 16) = v15;
    *a4 = v14;
    a4[1] = v13;
    v16 = *(a3 + 8);
    v17 = *(a2 + 8);
    if (v16 < v17 || v17 >= v16 && ((v28 = *(a3 + 24), v29 = *(a2 + 24), v28 < v29) || v29 >= v28 && *(a3 + 16) < *(a2 + 16)))
    {
      v19 = *a2;
      v18 = *(a2 + 16);
      v20 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v20;
      *a3 = v19;
      *(a3 + 16) = v18;
      v21 = *(a2 + 8);
      v22 = *(a1 + 8);
      if (v21 < v22 || v22 >= v21 && ((v58 = *(a2 + 24), v59 = *(a1 + 24), v58 < v59) || v59 >= v58 && *(a2 + 16) < *(a1 + 16)))
      {
        v24 = *a1;
        v23 = *(a1 + 16);
        v25 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v25;
        *a2 = v24;
        *(a2 + 16) = v23;
      }
    }
  }

  v30 = *(a5 + 1);
  v31 = *(a4 + 1);
  if (v30 < v31 || v31 >= v30 && ((v50 = *(a5 + 3), v51 = *(a4 + 3), v50 < v51) || v51 >= v50 && *(a5 + 2) < *(a4 + 2)))
  {
    v33 = *a4;
    v32 = a4[1];
    v34 = a5[1];
    *a4 = *a5;
    a4[1] = v34;
    *a5 = v33;
    a5[1] = v32;
    v35 = *(a4 + 1);
    v36 = *(a3 + 8);
    if (v35 < v36 || v36 >= v35 && ((v52 = *(a4 + 3), v53 = *(a3 + 24), v52 < v53) || v53 >= v52 && *(a4 + 2) < *(a3 + 16)))
    {
      v38 = *a3;
      v37 = *(a3 + 16);
      v39 = a4[1];
      *a3 = *a4;
      *(a3 + 16) = v39;
      *a4 = v38;
      a4[1] = v37;
      v40 = *(a3 + 8);
      v41 = *(a2 + 8);
      if (v40 < v41 || v41 >= v40 && ((v54 = *(a3 + 24), v55 = *(a2 + 24), v54 < v55) || v55 >= v54 && *(a3 + 16) < *(a2 + 16)))
      {
        v43 = *a2;
        v42 = *(a2 + 16);
        v44 = *(a3 + 16);
        *a2 = *a3;
        *(a2 + 16) = v44;
        *a3 = v43;
        *(a3 + 16) = v42;
        v45 = *(a2 + 8);
        v46 = *(a1 + 8);
        if (v45 < v46 || v46 >= v45 && ((v56 = *(a2 + 24), v57 = *(a1 + 24), v56 < v57) || v57 >= v56 && *(a2 + 16) < *(a1 + 16)))
        {
          v48 = *a1;
          v47 = *(a1 + 16);
          v49 = *(a2 + 16);
          *a1 = *a2;
          *(a1 + 16) = v49;
          *a2 = v48;
          *(a2 + 16) = v47;
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::anonymous namespace::Demand *>(uint64_t a1, void *a2)
{
  v2 = (a2 - a1) >> 5;
  if (v2 <= 2)
  {
    if (v2 >= 2)
    {
      if (v2 == 2)
      {
        v3 = *(a2 - 3);
        v4 = *(a1 + 8);
        if (v3 < v4 || v4 >= v3 && ((v48 = *(a2 - 1), v49 = *(a1 + 24), v48 < v49) || v49 >= v48 && *(a2 - 2) < *(a1 + 16)))
        {
          v5 = (a2 - 4);
          v7 = *a1;
          v6 = *(a1 + 16);
          v8 = *(a2 - 1);
          *a1 = *(a2 - 2);
          *(a1 + 16) = v8;
          *v5 = v7;
          v5[1] = v6;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v2)
  {
    case 3:
      return 1;
    case 4:
      v31 = *(a2 - 3);
      v32 = *(a1 + 72);
      if (v31 < v32 || v32 >= v31 && ((v50 = *(a2 - 1), v51 = *(a1 + 88), v50 < v51) || v51 >= v50 && *(a2 - 2) < *(a1 + 80)))
      {
        v34 = *(a1 + 64);
        v33 = *(a1 + 80);
        v36 = *(a2 - 1);
        v35 = a2 - 4;
        *(a1 + 64) = *(a2 - 2);
        *(a1 + 80) = v36;
        *v35 = v34;
        v35[1] = v33;
        v37 = *(a1 + 72);
        v38 = *(a1 + 40);
        if (v37 < v38 || v38 >= v37 && ((v52 = *(a1 + 88), v53 = *(a1 + 56), v52 < v53) || v53 >= v52 && *(a1 + 80) < *(a1 + 48)))
        {
          v40 = *(a1 + 32);
          v39 = *(a1 + 48);
          v41 = *(a1 + 80);
          *(a1 + 32) = *(a1 + 64);
          *(a1 + 48) = v41;
          *(a1 + 64) = v40;
          *(a1 + 80) = v39;
          v42 = *(a1 + 40);
          v43 = *(a1 + 8);
          if (v42 < v43 || v43 >= v42 && ((v55 = *(a1 + 56), v56 = *(a1 + 24), v55 < v56) || v56 >= v55 && *(a1 + 48) < *(a1 + 16)))
          {
            v45 = *a1;
            v44 = *(a1 + 16);
            v46 = *(a1 + 48);
            *a1 = *(a1 + 32);
            *(a1 + 16) = v46;
            *(a1 + 32) = v45;
            *(a1 + 48) = v44;
          }
        }
      }

      return 1;
    case 5:
      return 1;
  }

LABEL_11:
  v9 = (a1 + 64);
  v13 = (a1 + 96);
  if ((a1 + 96) == a2)
  {
LABEL_37:
    v47 = 1;
    return (v47 | v12) & 1;
  }

  v12 = a2;
  v14 = 0;
  v15 = 0;
  while (2)
  {
    v17 = v13[1];
    v18 = v9[1];
    if (v17 >= v18)
    {
      if (v18 < v17)
      {
        goto LABEL_15;
      }

      v19 = v13[3];
      v28 = v9[3];
      if (v19 >= v28 && (v28 < v19 || v13[2] >= v9[2]))
      {
        goto LABEL_15;
      }
    }

    else
    {
      v19 = v13[3];
    }

    v20 = *v13;
    v21 = v13[2];
    v22 = *(v9 + 1);
    *v13 = *v9;
    *(v13 + 1) = v22;
    v16 = a1;
    if (v9 == a1)
    {
      goto LABEL_14;
    }

    v23 = v14;
    while (1)
    {
      v25 = a1 + v23;
      v26 = *(a1 + v23 + 40);
      if (v17 >= v26)
      {
        if (v26 < v17)
        {
          goto LABEL_32;
        }

        v27 = *(v25 + 56);
        if (v19 >= v27)
        {
          break;
        }
      }

LABEL_20:
      v9 -= 4;
      v24 = *(v25 + 48);
      *(v25 + 64) = *(v25 + 32);
      *(v25 + 80) = v24;
      v23 -= 32;
      if (v23 == -64)
      {
        v16 = a1;
        goto LABEL_14;
      }
    }

    if (v27 >= v19)
    {
      if (v21 >= *(v25 + 48))
      {
        v16 = (a1 + v23 + 64);
        goto LABEL_14;
      }

      goto LABEL_20;
    }

LABEL_32:
    v16 = v9;
LABEL_14:
    *v16 = v20;
    v16[1] = v17;
    v16[2] = v21;
    v16[3] = v19;
    if (++v15 != 8)
    {
LABEL_15:
      v9 = v13;
      v14 += 32;
      v13 += 4;
      if (v13 == a2)
      {
        goto LABEL_37;
      }

      continue;
    }

    break;
  }

  v47 = 0;
  v12 = v13 + 4 == a2;
  return (v47 | v12) & 1;
}

__n128 std::deque<std::pair<std::vector<operations_research::sat::anonymous namespace::Demand>,long long>>::emplace_back<std::vector<operations_research::sat::anonymous namespace::Demand>,long long const&>(void *a1, __n128 *a2, unint64_t *a3)
{
  v7 = a1[1];
  v6 = a1[2];
  if (v6 == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 16 * (v6 - v7) - 1;
  }

  v9 = a1[4];
  if (v8 == a1[5] + v9)
  {
    v10 = v9 >= 0x80;
    v11 = v9 - 128;
    if (!v10)
    {
      v12 = a1[3];
      v13 = v12 - *a1;
      if (v6 - v7 < v13)
      {
        operator new();
      }

      v14 = v13 >> 2;
      if (v12 == *a1)
      {
        v15 = 1;
      }

      else
      {
        v15 = v14;
      }

      if (!(v15 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    a1[4] = v11;
    v19 = *v7;
    a1[1] = v7 + 8;
    std::__split_buffer<std::vector<operations_research::sat::Literal> *,std::allocator<std::vector<operations_research::sat::Literal> *>>::emplace_back<std::vector<operations_research::sat::Literal> *&>(a1, &v19);
  }

  v16 = a1[5] + a1[4];
  v17 = (*(a1[1] + ((v16 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v16 & 0x7F));
  v17->n128_u64[0] = 0;
  v17->n128_u64[1] = 0;
  v17[1].n128_u64[0] = 0;
  result = *a2;
  *v17 = *a2;
  v17[1].n128_u64[0] = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  v17[1].n128_u64[1] = *a3;
  ++a1[5];
  return result;
}

void sub_23CA46430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  operator delete(__p);
  operator delete(v9);
  _Unwind_Resume(a1);
}

uint64_t std::deque<std::pair<std::vector<operations_research::sat::anonymous namespace::Demand>,long long>>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 == v2)
  {
    v3 = *(a1 + 8);
    *(a1 + 40) = 0;
    v11 = 0;
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = &v2[v4 >> 7];
    v6 = *v5;
    v7 = *v5 + 32 * (v4 & 0x7F);
    v8 = *(v2 + (((*(a1 + 40) + v4) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(a1 + 40) + v4) & 0x7F);
    if (v7 != v8)
    {
      do
      {
        v9 = *v7;
        if (*v7)
        {
          *(v7 + 8) = v9;
          operator delete(v9);
          v6 = *v5;
        }

        v7 += 32;
        if (v7 - v6 == 4096)
        {
          v10 = v5[1];
          ++v5;
          v6 = v10;
          v7 = v10;
        }
      }

      while (v7 != v8);
      v2 = *(a1 + 8);
      v3 = *(a1 + 16);
    }

    *(a1 + 40) = 0;
    v11 = v3 - v2;
    if (v11 >= 3)
    {
      do
      {
        operator delete(*v2);
        v3 = *(a1 + 16);
        v2 = (*(a1 + 8) + 8);
        *(a1 + 8) = v2;
        v11 = v3 - v2;
      }

      while (v11 > 2);
    }
  }

  if (v11 == 1)
  {
    v12 = 64;
    goto LABEL_17;
  }

  if (v11 == 2)
  {
    v12 = 128;
LABEL_17:
    *(a1 + 32) = v12;
  }

  if (v2 != v3)
  {
    do
    {
      v13 = *v2++;
      operator delete(v13);
    }

    while (v2 != v3);
    v15 = *(a1 + 8);
    v14 = *(a1 + 16);
    if (v14 != v15)
    {
      do
      {
        v14 -= 8;
      }

      while (v14 != v15);
      *(a1 + 16) = v14;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void operations_research::sat::anonymous namespace::InsertRectanglePredecences(void *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0;
    do
    {
      v4 = (v3 >> 3) + 1;
      if (v4 >> 61)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (v3 >> 3 != -1)
      {
        if (!(v4 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v5 = (8 * (v3 >> 3));
      *v5 = v1[4] - 1;
      v6 = v5 + 1;
      memcpy(0, 0, v3);
      v3 = v6;
      v1 += 5;
    }

    while (v1 != v2);
  }

  std::__sort<std::__less<long long,long long> &,long long *>();
  if (v3)
  {
    v7 = 8;
    while (v7 != v3)
    {
      v8 = *(v7 - 8);
      v9 = *v7;
      v7 += 8;
      if (v8 == v9)
      {
        v10 = v7 - 16;
        while (v7 != v3)
        {
          v11 = v8;
          v8 = *v7;
          if (v11 != *v7)
          {
            *(v10 + 8) = v8;
            v10 += 8;
          }

          v7 += 8;
        }

        if (v10 + 8 != v3)
        {
          v3 = v10 + 8;
        }

        break;
      }
    }
  }

  if (v3)
  {
    v12 = 0;
    v19 = v3;
    do
    {
      v14 = *a1;
      v13 = a1[1];
      v21 = v12;
      if (*a1 != v13)
      {
        v15 = *v12;
        v22 = a1[1];
        do
        {
          if (v14[3] <= v15 && v14[4] > v15)
          {
            v17 = v14[1];
            v18 = v14[2];
            operator new();
          }

          v14 += 5;
        }

        while (v14 != v13);
      }

      v12 = v21 + 1;
    }

    while (v21 + 1 != v19);
  }
}

void sub_23CA46B74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

__n128 std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::anonymous namespace::Rectangle *,false>(uint64_t a1, unint64_t a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = (a2 - 40);
  v10 = (a2 - 80);
  v11 = (a2 - 120);
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    v14 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - v12) >> 3);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return result;
      }

      if (v14 == 2)
      {
        v175 = *(a2 - 32);
        v176 = *(v12 + 8);
        if (v175 >= v176 && (v176 < v175 || *(a2 - 24) >= *(v12 + 16)))
        {
          return result;
        }

LABEL_240:
        v381 = *(v12 + 32);
        v316 = *v12;
        v350 = *(v12 + 16);
        v181 = *v9;
        v182 = *(a2 - 24);
        *(v12 + 32) = *(a2 - 8);
        *v12 = v181;
        *(v12 + 16) = v182;
LABEL_241:
        result = v316;
        *(a2 - 8) = v381;
        *v9 = v316;
        *(a2 - 24) = v350;
        return result;
      }

      goto LABEL_9;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {

      return result;
    }

    if (v14 == 5)
    {
      v183 = *(a2 - 32);
      v184 = *(v12 + 128);
      if (v183 >= v184 && (v184 < v183 || *(a2 - 24) >= *(v12 + 136)))
      {
        return result;
      }

      v382 = *(v12 + 152);
      v317 = *(v12 + 120);
      v351 = *(v12 + 136);
      v185 = *v9;
      v186 = *(a2 - 24);
      *(v12 + 152) = *(a2 - 8);
      *(v12 + 136) = v186;
      *(v12 + 120) = v185;
      result = v317;
      *(a2 - 8) = v382;
      *v9 = v317;
      *(a2 - 24) = v351;
      v187 = *(v12 + 128);
      v188 = *(v12 + 88);
      if (v187 >= v188 && (v188 < v187 || *(v12 + 136) >= *(v12 + 96)))
      {
        return result;
      }

      v383 = *(v12 + 112);
      v318 = *(v12 + 80);
      v352 = *(v12 + 96);
      v189 = *(v12 + 136);
      *(v12 + 80) = *(v12 + 120);
      *(v12 + 96) = v189;
      *(v12 + 112) = *(v12 + 152);
      result = v318;
      *(v12 + 136) = v352;
      *(v12 + 152) = v383;
      *(v12 + 120) = v318;
      v190 = *(v12 + 88);
      v191 = *(v12 + 48);
      if (v190 >= v191 && (v191 < v190 || *(v12 + 96) >= *(v12 + 56)))
      {
        return result;
      }

      v384 = *(v12 + 72);
      v319 = *(v12 + 40);
      v353 = *(v12 + 56);
      v192 = *(v12 + 96);
      *(v12 + 40) = *(v12 + 80);
      *(v12 + 56) = v192;
      *(v12 + 72) = *(v12 + 112);
      result = v319;
      *(v12 + 112) = v384;
      *(v12 + 80) = v319;
      *(v12 + 96) = v353;
      v193 = *(v12 + 48);
      v194 = *(v12 + 8);
      if (v193 < v194)
      {
LABEL_371:
        v387 = *(v12 + 32);
        v325 = *v12;
        v356 = *(v12 + 16);
        v284 = *(v12 + 56);
        *v12 = *(v12 + 40);
        *(v12 + 16) = v284;
        *(v12 + 32) = *(v12 + 72);
        result = v325;
        *(v12 + 56) = v356;
        *(v12 + 72) = v387;
        *(v12 + 40) = v325;
        return result;
      }

LABEL_369:
      if (v194 < v193 || *(v12 + 56) >= *(v12 + 16))
      {
        return result;
      }

      goto LABEL_371;
    }

LABEL_9:
    if (v13 <= 959)
    {
      v195 = (v12 + 40);
      v197 = v12 == a2 || v195 == a2;
      if (a4)
      {
        if (!v197)
        {
          v198 = 0;
          v199 = v12;
          do
          {
            v201 = v195;
            v202 = *(v199 + 48);
            v203 = *(v199 + 56);
            v204 = *(v199 + 8);
            if (v202 < v204 || (v204 >= v202 ? (v205 = v203 < *(v199 + 16)) : (v205 = 0), v205))
            {
              v206 = *(v199 + 40);
              v320 = *(v199 + 64);
              v201[4] = *(v199 + 32);
              v207 = *(v199 + 16);
              *v201 = *v199;
              *(v201 + 1) = v207;
              v200 = v12;
              if (v199 != v12)
              {
                v208 = v198;
                while (1)
                {
                  v210 = v12 + v208;
                  v211 = *(v12 + v208 - 32);
                  if (v202 >= v211 && (v211 < v202 || v203 >= *(v210 - 24)))
                  {
                    break;
                  }

                  v209 = *(v210 - 24);
                  *v210 = *(v210 - 40);
                  *(v210 + 16) = v209;
                  *(v210 + 32) = *(v210 - 8);
                  v208 -= 40;
                  if (!v208)
                  {
                    v200 = v12;
                    goto LABEL_266;
                  }
                }

                v200 = v12 + v208;
              }

LABEL_266:
              *v200 = v206;
              *(v200 + 8) = v202;
              *(v200 + 16) = v203;
              result = v320;
              *(v200 + 24) = v320;
            }

            v195 = v201 + 5;
            v198 += 40;
            v199 = v201;
          }

          while (v201 + 5 != a2);
        }
      }

      else if (!v197)
      {
        do
        {
          v271 = v195;
          v272 = *(a1 + 48);
          v273 = *(a1 + 56);
          v274 = *(a1 + 8);
          if (v272 < v274 || (v274 >= v272 ? (v275 = v273 < *(a1 + 16)) : (v275 = 0), v275))
          {
            v276 = *v271;
            v323 = *(a1 + 64);
            do
            {
              do
              {
                v277 = a1;
                v278 = *(a1 + 16);
                *(a1 + 40) = *a1;
                *(a1 + 56) = v278;
                *(a1 + 72) = *(a1 + 32);
                a1 -= 40;
                v279 = *(v277 - 32);
              }

              while (v272 < v279);
            }

            while (v279 >= v272 && v273 < *(v277 - 24));
            *v277 = v276;
            *(v277 + 8) = v272;
            *(v277 + 16) = v273;
            result = v323;
            *(v277 + 24) = v323;
          }

          v195 = v271 + 5;
          a1 = v271;
        }

        while (v271 + 5 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v213 = (v14 - 2) >> 1;
        v214 = v213;
        do
        {
          v215 = v214;
          v216 = 5 * v214;
          if (v213 >= (0xCCCCCCCCCCCCCCCDLL * ((40 * v214) >> 3)))
          {
            v217 = 0x999999999999999ALL * ((40 * v214) >> 3);
            v218 = v217 | 1;
            v219 = v12 + 40 * (v217 | 1);
            v220 = v217 + 2;
            if (v220 < v14)
            {
              v221 = *(v219 + 8);
              v222 = *(v219 + 48);
              if (v221 < v222 || (v222 >= v221 ? (v223 = *(v219 + 16) < *(v219 + 56)) : (v223 = 0), v223))
              {
                v219 += 40;
                v218 = v220;
              }
            }

            v224 = v12 + 8 * v216;
            v225 = *(v219 + 8);
            v226 = *(v224 + 8);
            if (v225 >= v226)
            {
              v227 = *(v224 + 16);
              if (v226 < v225 || *(v219 + 16) >= v227)
              {
                v229 = *v224;
                v321 = *(v224 + 24);
                do
                {
                  v230 = v224;
                  v224 = v219;
                  v231 = *v219;
                  v232 = *(v219 + 16);
                  *(v230 + 32) = *(v219 + 32);
                  *v230 = v231;
                  *(v230 + 16) = v232;
                  if (v213 < v218)
                  {
                    break;
                  }

                  v233 = 2 * v218;
                  v218 = (2 * v218) | 1;
                  v219 = v12 + 40 * v218;
                  v234 = v233 + 2;
                  if (v234 < v14)
                  {
                    v235 = *(v219 + 8);
                    v236 = *(v219 + 48);
                    if (v235 < v236 || (v236 >= v235 ? (v237 = *(v219 + 16) < *(v219 + 56)) : (v237 = 0), v237))
                    {
                      v219 += 40;
                      v218 = v234;
                    }
                  }

                  v238 = *(v219 + 8);
                  if (v238 < v226)
                  {
                    break;
                  }
                }

                while (v226 < v238 || *(v219 + 16) >= v227);
                *v224 = v229;
                *(v224 + 8) = v226;
                *(v224 + 16) = v227;
                *(v224 + 24) = v321;
              }
            }
          }

          v214 = v215 - 1;
        }

        while (v215);
        v240 = 0xCCCCCCCCCCCCCCCDLL * (v13 >> 3);
        do
        {
          v241 = 0;
          v385 = *(v12 + 32);
          v322 = *v12;
          v354 = *(v12 + 16);
          v242 = v12;
          do
          {
            v245 = v242;
            v246 = &v242[5 * v241];
            v242 = v246 + 5;
            v247 = 2 * v241;
            v241 = (2 * v241) | 1;
            v248 = v247 + 2;
            if (v248 < v240)
            {
              v249 = v246[6];
              v250 = v246[11];
              if (v249 < v250 || (v250 >= v249 ? (v251 = v246[7] < v246[12]) : (v251 = 0), v251))
              {
                v242 = v246 + 10;
                v241 = v248;
              }
            }

            v243 = *v242;
            v244 = *(v242 + 1);
            v245[4] = v242[4];
            *v245 = v243;
            *(v245 + 1) = v244;
          }

          while (v241 <= ((v240 - 2) >> 1));
          a2 -= 40;
          if (v242 == a2)
          {
            result = v322;
            v242[4] = v385;
            *v242 = v322;
            *(v242 + 1) = v354;
          }

          else
          {
            v252 = *a2;
            v253 = *(a2 + 16);
            v242[4] = *(a2 + 32);
            *v242 = v252;
            *(v242 + 1) = v253;
            result = v322;
            *(a2 + 32) = v385;
            *a2 = v322;
            *(a2 + 16) = v354;
            v254 = v242 - v12 + 40;
            if (v254 >= 41)
            {
              v255 = -2 - 0x3333333333333333 * (v254 >> 3);
              v256 = v255 >> 1;
              v257 = v12 + 40 * (v255 >> 1);
              v258 = *(v257 + 8);
              v259 = v242[1];
              v260 = v242[2];
              if (v258 < v259 || (v259 >= v258 ? (v261 = *(v257 + 16) < v260) : (v261 = 0), v261))
              {
                v262 = *v242;
                v292 = *(v242 + 3);
                v263 = *v257;
                v264 = *(v257 + 16);
                v242[4] = *(v257 + 32);
                *v242 = v263;
                *(v242 + 1) = v264;
                if (v255 >= 2)
                {
                  while (1)
                  {
                    v267 = v256 - 1;
                    v256 = (v256 - 1) >> 1;
                    v268 = v12 + 40 * v256;
                    v269 = *(v268 + 8);
                    if (v269 >= v259 && (v259 < v269 || *(v268 + 16) >= v260))
                    {
                      break;
                    }

                    v265 = *v268;
                    v266 = *(v268 + 16);
                    *(v257 + 32) = *(v268 + 32);
                    *v257 = v265;
                    *(v257 + 16) = v266;
                    v257 = v12 + 40 * v256;
                    if (v267 <= 1)
                    {
                      goto LABEL_348;
                    }
                  }
                }

                v268 = v257;
LABEL_348:
                *v268 = v262;
                *(v268 + 8) = v259;
                *(v268 + 16) = v260;
                result = v292;
                *(v268 + 24) = v292;
              }
            }
          }

          v20 = v240-- <= 2;
        }

        while (!v20);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = v12 + 40 * (v14 >> 1);
    if (v13 >= 0x1401)
    {
      v18 = *(v16 + 8);
      v17 = *(v16 + 16);
      v19 = *(v12 + 8);
      if (v18 < v19 || (v19 >= v18 ? (v20 = v17 < *(v12 + 16)) : (v20 = 0), v20))
      {
        v42 = *(a2 - 32);
        if (v42 < v18 || (v18 >= v42 ? (v43 = *(a2 - 24) < v17) : (v43 = 0), v43))
        {
          v363 = *(v12 + 32);
          v298 = *v12;
          v332 = *(v12 + 16);
          v54 = *v9;
          v55 = *(a2 - 24);
          *(v12 + 32) = *(a2 - 8);
          *v12 = v54;
          *(v12 + 16) = v55;
        }

        else
        {
          v362 = *(v12 + 32);
          v297 = *v12;
          v331 = *(v12 + 16);
          v44 = *v16;
          v45 = *(v16 + 16);
          *(v12 + 32) = *(v16 + 32);
          *v12 = v44;
          *(v12 + 16) = v45;
          *(v16 + 32) = v362;
          *v16 = v297;
          *(v16 + 16) = v331;
          v46 = *(a2 - 32);
          v47 = *(v16 + 8);
          if (v46 >= v47 && (v47 < v46 || *(a2 - 24) >= *(v16 + 16)))
          {
            goto LABEL_64;
          }

          v363 = *(v16 + 32);
          v298 = *v16;
          v332 = *(v16 + 16);
          v49 = *v9;
          v50 = *(a2 - 24);
          *(v16 + 32) = *(a2 - 8);
          *v16 = v49;
          *(v16 + 16) = v50;
        }

        *(a2 - 8) = v363;
        *v9 = v298;
        *(a2 - 24) = v332;
        goto LABEL_64;
      }

      v21 = *(a2 - 32);
      if (v21 < v18 || (v18 >= v21 ? (v22 = *(a2 - 24) < v17) : (v22 = 0), v22))
      {
        v358 = *(v16 + 32);
        v293 = *v16;
        v327 = *(v16 + 16);
        v23 = *v9;
        v24 = *(a2 - 24);
        *(v16 + 32) = *(a2 - 8);
        *v16 = v23;
        *(v16 + 16) = v24;
        *(a2 - 8) = v358;
        *v9 = v293;
        *(a2 - 24) = v327;
        v25 = *(v16 + 8);
        v26 = *(v12 + 8);
        if (v25 < v26 || (v26 >= v25 ? (v27 = *(v16 + 16) < *(v12 + 16)) : (v27 = 0), v27))
        {
          v359 = *(v12 + 32);
          v294 = *v12;
          v328 = *(v12 + 16);
          v28 = *v16;
          v29 = *(v16 + 16);
          *(v12 + 32) = *(v16 + 32);
          *v12 = v28;
          *(v12 + 16) = v29;
          *(v16 + 32) = v359;
          *v16 = v294;
          *(v16 + 16) = v328;
        }
      }

LABEL_64:
      v56 = v12 + 40 * v15;
      v57 = v56 - 40;
      v59 = *(v56 - 32);
      v58 = *(v56 - 24);
      v60 = *(v12 + 48);
      if (v59 < v60 || (v60 >= v59 ? (v61 = v58 < *(v12 + 56)) : (v61 = 0), v61))
      {
        v70 = *(a2 - 72);
        if (v70 < v59 || (v59 >= v70 ? (v71 = *(a2 - 64) < v58) : (v71 = 0), v71))
        {
          v368 = *(v12 + 72);
          v303 = *(v12 + 40);
          v337 = *(v12 + 56);
          v78 = *v10;
          v79 = *(a2 - 64);
          *(v12 + 72) = *(a2 - 48);
          *(v12 + 56) = v79;
          *(v12 + 40) = v78;
        }

        else
        {
          v367 = *(v12 + 72);
          v302 = *(v12 + 40);
          v336 = *(v12 + 56);
          v72 = *v57;
          v73 = *(v57 + 16);
          *(v12 + 72) = *(v57 + 32);
          *(v12 + 56) = v73;
          *(v12 + 40) = v72;
          *(v57 + 32) = v367;
          *v57 = v302;
          *(v57 + 16) = v336;
          v74 = *(a2 - 72);
          v75 = *(v57 + 8);
          if (v74 >= v75 && (v75 < v74 || *(a2 - 64) >= *(v57 + 16)))
          {
            goto LABEL_90;
          }

          v368 = *(v57 + 32);
          v303 = *v57;
          v337 = *(v57 + 16);
          v76 = *v10;
          v77 = *(a2 - 64);
          *(v57 + 32) = *(a2 - 48);
          *v57 = v76;
          *(v57 + 16) = v77;
        }

        *(a2 - 48) = v368;
        *v10 = v303;
        *(a2 - 64) = v337;
        goto LABEL_90;
      }

      v62 = *(a2 - 72);
      if (v62 < v59 || (v59 >= v62 ? (v63 = *(a2 - 64) < v58) : (v63 = 0), v63))
      {
        v365 = *(v57 + 32);
        v300 = *v57;
        v334 = *(v57 + 16);
        v64 = *v10;
        v65 = *(a2 - 64);
        *(v57 + 32) = *(a2 - 48);
        *v57 = v64;
        *(v57 + 16) = v65;
        *(a2 - 48) = v365;
        *v10 = v300;
        *(a2 - 64) = v334;
        v66 = *(v57 + 8);
        v67 = *(v12 + 48);
        if (v66 < v67 || v67 >= v66 && *(v57 + 16) < *(v12 + 56))
        {
          v366 = *(v12 + 72);
          v301 = *(v12 + 40);
          v335 = *(v12 + 56);
          v68 = *v57;
          v69 = *(v57 + 16);
          *(v12 + 72) = *(v57 + 32);
          *(v12 + 56) = v69;
          *(v12 + 40) = v68;
          *(v57 + 32) = v366;
          *v57 = v301;
          *(v57 + 16) = v335;
        }
      }

LABEL_90:
      v80 = v12 + 40 * v15;
      v82 = *(v80 + 48);
      v81 = *(v80 + 56);
      v83 = *(v12 + 88);
      if (v82 >= v83 && (v83 < v82 || v81 >= *(v12 + 96)))
      {
        v125 = *(a2 - 112);
        if (v125 < v82 || v82 >= v125 && *(a2 - 104) < v81)
        {
          v373 = *(v80 + 72);
          v308 = *(v80 + 40);
          v342 = *(v80 + 56);
          v126 = *v11;
          v127 = *(a2 - 104);
          *(v80 + 72) = *(a2 - 88);
          *(v80 + 56) = v127;
          *(v80 + 40) = v126;
          *(a2 - 88) = v373;
          *v11 = v308;
          *(a2 - 104) = v342;
          v128 = *(v80 + 48);
          v129 = *(v12 + 88);
          if (v128 < v129 || v129 >= v128 && *(v80 + 56) < *(v12 + 96))
          {
            v374 = *(v12 + 112);
            v309 = *(v12 + 80);
            v343 = *(v12 + 96);
            v130 = *(v80 + 40);
            v131 = *(v80 + 56);
            *(v12 + 112) = *(v80 + 72);
            *(v12 + 80) = v130;
            *(v12 + 96) = v131;
            *(v80 + 72) = v374;
            *(v80 + 56) = v343;
            *(v80 + 40) = v309;
          }
        }
      }

      else
      {
        v84 = *(a2 - 112);
        if (v84 < v82 || v82 >= v84 && *(a2 - 104) < v81)
        {
          v369 = *(v12 + 112);
          v304 = *(v12 + 80);
          v338 = *(v12 + 96);
          v85 = *v11;
          v86 = *(a2 - 104);
          *(v12 + 112) = *(a2 - 88);
          *(v12 + 80) = v85;
          *(v12 + 96) = v86;
          goto LABEL_97;
        }

        v378 = *(v12 + 112);
        v313 = *(v12 + 80);
        v347 = *(v12 + 96);
        v142 = *(v80 + 40);
        v143 = *(v80 + 56);
        *(v12 + 112) = *(v80 + 72);
        *(v12 + 80) = v142;
        *(v12 + 96) = v143;
        *(v80 + 72) = v378;
        *(v80 + 56) = v347;
        *(v80 + 40) = v313;
        v144 = *(a2 - 112);
        v145 = *(v80 + 48);
        if (v144 < v145 || v145 >= v144 && *(a2 - 104) < *(v80 + 56))
        {
          v369 = *(v80 + 72);
          v304 = *(v80 + 40);
          v338 = *(v80 + 56);
          v146 = *v11;
          v147 = *(a2 - 104);
          *(v80 + 72) = *(a2 - 88);
          *(v80 + 56) = v147;
          *(v80 + 40) = v146;
LABEL_97:
          *(a2 - 88) = v369;
          *v11 = v304;
          *(a2 - 104) = v338;
        }
      }

      v88 = *(v16 + 8);
      v87 = *(v16 + 16);
      v89 = *(v57 + 8);
      if (v88 < v89)
      {
        v90 = *(v80 + 48);
        goto LABEL_102;
      }

      v90 = *(v80 + 48);
      if (v89 < v88 || v87 >= *(v57 + 16))
      {
        if (v90 < v88 || v88 >= v90 && *(v80 + 56) < v87)
        {
          v375 = *(v16 + 32);
          v310 = *v16;
          v344 = *(v16 + 16);
          v132 = *(v80 + 56);
          *v16 = *(v80 + 40);
          *(v16 + 16) = v132;
          *(v16 + 32) = *(v80 + 72);
          *(v80 + 56) = v344;
          *(v80 + 72) = v375;
          *(v80 + 40) = v310;
          v133 = *(v16 + 8);
          v134 = *(v57 + 8);
          if (v133 < v134 || v134 >= v133 && *(v16 + 16) < *(v57 + 16))
          {
            v376 = *(v57 + 32);
            v311 = *v57;
            v345 = *(v57 + 16);
            v135 = *(v16 + 16);
            *v57 = *v16;
            *(v57 + 16) = v135;
            *(v57 + 32) = *(v16 + 32);
            *(v16 + 32) = v376;
            *v16 = v311;
            *(v16 + 16) = v345;
          }
        }
      }

      else
      {
LABEL_102:
        if (v90 < v88 || v88 >= v90 && *(v80 + 56) < v87)
        {
          v370 = *(v57 + 32);
          v305 = *v57;
          v339 = *(v57 + 16);
          v91 = *(v80 + 56);
          *v57 = *(v80 + 40);
          *(v57 + 16) = v91;
          *(v57 + 32) = *(v80 + 72);
          goto LABEL_106;
        }

        v379 = *(v57 + 32);
        v314 = *v57;
        v348 = *(v57 + 16);
        v148 = *(v16 + 16);
        *v57 = *v16;
        *(v57 + 16) = v148;
        *(v57 + 32) = *(v16 + 32);
        *(v16 + 32) = v379;
        *v16 = v314;
        *(v16 + 16) = v348;
        v149 = *(v80 + 48);
        v150 = *(v16 + 8);
        if (v149 < v150 || v150 >= v149 && *(v80 + 56) < *(v16 + 16))
        {
          v370 = *(v16 + 32);
          v305 = *v16;
          v339 = *(v16 + 16);
          v151 = *(v80 + 56);
          *v16 = *(v80 + 40);
          *(v16 + 16) = v151;
          *(v16 + 32) = *(v80 + 72);
LABEL_106:
          *(v80 + 56) = v339;
          *(v80 + 72) = v370;
          *(v80 + 40) = v305;
        }
      }

      v371 = *(v12 + 32);
      v306 = *v12;
      v340 = *(v12 + 16);
      v92 = *v16;
      v93 = *(v16 + 16);
      *(v12 + 32) = *(v16 + 32);
      *v12 = v92;
      *(v12 + 16) = v93;
      *(v16 + 32) = v371;
      *v16 = v306;
      *(v16 + 16) = v340;
      goto LABEL_108;
    }

    v31 = *(v12 + 8);
    v30 = *(v12 + 16);
    v32 = *(v16 + 8);
    if (v31 >= v32 && (v32 < v31 || v30 >= *(v16 + 16)))
    {
      v34 = *(a2 - 32);
      if (v34 < v31 || v31 >= v34 && *(a2 - 24) < v30)
      {
        v360 = *(v12 + 32);
        v295 = *v12;
        v329 = *(v12 + 16);
        v35 = *v9;
        v36 = *(a2 - 24);
        *(v12 + 32) = *(a2 - 8);
        *v12 = v35;
        *(v12 + 16) = v36;
        *(a2 - 8) = v360;
        *v9 = v295;
        *(a2 - 24) = v329;
        v37 = *(v12 + 8);
        v38 = *(v16 + 8);
        if (v37 < v38 || (v38 >= v37 ? (v39 = *(v12 + 16) < *(v16 + 16)) : (v39 = 0), v39))
        {
          v361 = *(v16 + 32);
          v296 = *v16;
          v330 = *(v16 + 16);
          v40 = *v12;
          v41 = *(v12 + 16);
          *(v16 + 32) = *(v12 + 32);
          *v16 = v40;
          *(v16 + 16) = v41;
          *(v12 + 32) = v361;
          *v12 = v296;
          *(v12 + 16) = v330;
        }
      }

      goto LABEL_108;
    }

    v51 = *(a2 - 32);
    if (v51 >= v31 && (v31 < v51 || *(a2 - 24) >= v30))
    {
      v377 = *(v16 + 32);
      v312 = *v16;
      v346 = *(v16 + 16);
      v136 = *v12;
      v137 = *(v12 + 16);
      *(v16 + 32) = *(v12 + 32);
      *v16 = v136;
      *(v16 + 16) = v137;
      *(v12 + 32) = v377;
      *v12 = v312;
      *(v12 + 16) = v346;
      v138 = *(a2 - 32);
      v139 = *(v12 + 8);
      if (v138 >= v139 && (v139 < v138 || *(a2 - 24) >= *(v12 + 16)))
      {
        goto LABEL_108;
      }

      v364 = *(v12 + 32);
      v299 = *v12;
      v333 = *(v12 + 16);
      v140 = *v9;
      v141 = *(a2 - 24);
      *(v12 + 32) = *(a2 - 8);
      *v12 = v140;
      *(v12 + 16) = v141;
    }

    else
    {
      v364 = *(v16 + 32);
      v299 = *v16;
      v333 = *(v16 + 16);
      v52 = *v9;
      v53 = *(a2 - 24);
      *(v16 + 32) = *(a2 - 8);
      *v16 = v52;
      *(v16 + 16) = v53;
    }

    *(a2 - 8) = v364;
    *v9 = v299;
    *(a2 - 24) = v333;
LABEL_108:
    --a3;
    if (a4)
    {
      v94 = *(v12 + 8);
LABEL_113:
      v97 = 0;
      v98 = *v12;
      v99 = *(v12 + 16);
      v290 = *(v12 + 24);
      while (1)
      {
        v100 = *(v12 + v97 + 48);
        if (v100 >= v94 && (v94 < v100 || *(v12 + v97 + 56) >= v99))
        {
          break;
        }

        v97 += 40;
      }

      v102 = v12 + v97 + 40;
      v103 = a2 - 40;
      if (v97)
      {
        do
        {
          v104 = v103;
          v105 = *(v103 + 8);
          if (v105 < v94)
          {
            break;
          }

          v106 = *(v103 + 16);
          v103 -= 40;
        }

        while (v94 < v105 || v106 >= v99);
LABEL_136:
        v12 = v102;
        if (v102 < v104)
        {
          v112 = v104;
          do
          {
            v372 = *(v12 + 32);
            v307 = *v12;
            v341 = *(v12 + 16);
            v113 = *v112;
            v114 = *(v112 + 16);
            *(v12 + 32) = *(v112 + 32);
            *v12 = v113;
            *(v12 + 16) = v114;
            *(v112 + 32) = v372;
            *v112 = v307;
            *(v112 + 16) = v341;
            do
            {
              do
              {
                v12 += 40;
                v115 = *(v12 + 8);
              }

              while (v115 < v94);
            }

            while (v94 >= v115 && *(v12 + 16) < v99);
            v117 = v112 - 40;
            do
            {
              v112 = v117;
              v118 = *(v117 + 8);
              if (v118 < v94)
              {
                break;
              }

              v119 = *(v117 + 16);
              v117 -= 40;
            }

            while (v94 < v118 || v119 >= v99);
          }

          while (v12 < v112);
        }
      }

      else
      {
        v108 = a2 - 40;
        while (1)
        {
          v104 = v108;
          v109 = v108 + 40;
          if (v102 >= v109)
          {
            break;
          }

          v110 = *(v104 + 8);
          if (v110 >= v94)
          {
            v108 = v104 - 40;
            if (v94 < v110 || *(v104 + 16) >= v99)
            {
              continue;
            }
          }

          goto LABEL_136;
        }

        v104 = v109;
        v12 = v102;
      }

      if (v12 - 40 != a1)
      {
        v121 = *(v12 - 40);
        v122 = *(v12 - 24);
        *(a1 + 32) = *(v12 - 8);
        *a1 = v121;
        *(a1 + 16) = v122;
      }

      *(v12 - 40) = v98;
      *(v12 - 32) = v94;
      *(v12 - 24) = v99;
      *(v12 - 16) = v290;
      if (v102 < v104)
      {
        goto LABEL_159;
      }

      {
        a2 = v12 - 40;
        if ((v123 & 1) == 0)
        {
          goto LABEL_1;
        }

        return result;
      }

      if ((v123 & 1) == 0)
      {
LABEL_159:
        a4 = 0;
      }
    }

    else
    {
      v95 = *(v12 - 32);
      v94 = *(v12 + 8);
      if (v95 < v94)
      {
        goto LABEL_113;
      }

      v96 = *(v12 + 16);
      if (v94 >= v95 && *(v12 - 24) < v96)
      {
        goto LABEL_113;
      }

      v152 = *v12;
      v291 = *(v12 + 24);
      v153 = *(a2 - 32);
      if (v94 >= v153 && (v153 < v94 || v96 >= *(a2 - 24)))
      {
        v171 = v12 + 40;
        do
        {
          v12 = v171;
          if (v171 >= a2)
          {
            break;
          }

          v172 = *(v171 + 8);
          if (v94 < v172)
          {
            break;
          }

          v173 = *(v171 + 16);
          v171 += 40;
        }

        while (v172 < v94 || v96 >= v173);
      }

      else
      {
        v154 = v12 + 40;
        do
        {
          v12 = v154;
          v155 = *(v154 + 8);
          if (v94 < v155)
          {
            break;
          }

          v156 = *(v154 + 16);
          v154 += 40;
        }

        while (v155 < v94 || v96 >= v156);
      }

      v158 = a2;
      if (v12 < a2)
      {
        for (i = (a2 - 72); v94 < v153 || v153 >= v94 && v96 < i[6]; i -= 5)
        {
          v160 = *i;
          v153 = v160;
        }

        v158 = i + 4;
      }

      while (v12 < v158)
      {
        v380 = *(v12 + 32);
        v315 = *v12;
        v349 = *(v12 + 16);
        v161 = *v158;
        v162 = *(v158 + 1);
        *(v12 + 32) = v158[4];
        *v12 = v161;
        *(v12 + 16) = v162;
        v158[4] = v380;
        *v158 = v315;
        *(v158 + 1) = v349;
        v163 = v12 + 40;
        do
        {
          v12 = v163;
          v164 = *(v163 + 8);
          if (v94 < v164)
          {
            break;
          }

          v165 = *(v163 + 16);
          v163 += 40;
        }

        while (v164 < v94 || v96 >= v165);
        do
        {
          do
          {
            v158 -= 5;
            v167 = v158[1];
          }

          while (v94 < v167);
        }

        while (v167 >= v94 && v96 < v158[2]);
      }

      if (v12 - 40 != a1)
      {
        v169 = *(v12 - 40);
        v170 = *(v12 - 24);
        *(a1 + 32) = *(v12 - 8);
        *a1 = v169;
        *(a1 + 16) = v170;
      }

      a4 = 0;
      *(v12 - 40) = v152;
      *(v12 - 32) = v94;
      *(v12 - 24) = v96;
      result = v291;
      *(v12 - 16) = v291;
    }
  }

  v178 = *(v12 + 48);
  v177 = *(v12 + 56);
  v179 = *(v12 + 8);
  if (v178 >= v179 && (v179 < v178 || v177 >= *(v12 + 16)))
  {
    v281 = *(a2 - 32);
    if (v281 >= v178 && (v178 < v281 || *(a2 - 24) >= v177))
    {
      return result;
    }

    v386 = *(v12 + 72);
    v324 = *(v12 + 40);
    v355 = *(v12 + 56);
    v282 = *v9;
    v283 = *(a2 - 24);
    *(v12 + 72) = *(a2 - 8);
    *(v12 + 56) = v283;
    *(v12 + 40) = v282;
    result = v324;
    *(a2 - 8) = v386;
    *v9 = v324;
    *(a2 - 24) = v355;
    v193 = *(v12 + 48);
    v194 = *(v12 + 8);
    if (v193 < v194)
    {
      goto LABEL_371;
    }

    goto LABEL_369;
  }

  v180 = *(a2 - 32);
  if (v180 < v178 || v178 >= v180 && *(a2 - 24) < v177)
  {
    goto LABEL_240;
  }

  v388 = *(v12 + 32);
  v326 = *v12;
  v357 = *(v12 + 16);
  v285 = *(v12 + 56);
  *v12 = *(v12 + 40);
  *(v12 + 16) = v285;
  *(v12 + 32) = *(v12 + 72);
  result = v326;
  *(v12 + 56) = v357;
  *(v12 + 72) = v388;
  *(v12 + 40) = v326;
  v286 = *(a2 - 32);
  v287 = *(v12 + 48);
  if (v286 < v287 || v287 >= v286 && *(a2 - 24) < *(v12 + 56))
  {
    v381 = *(v12 + 72);
    v316 = *(v12 + 40);
    v350 = *(v12 + 56);
    v288 = *v9;
    v289 = *(a2 - 24);
    *(v12 + 72) = *(a2 - 8);
    *(v12 + 56) = v289;
    *(v12 + 40) = v288;
    goto LABEL_241;
  }

  return result;
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::anonymous namespace::Rectangle *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 result)
{
  v6 = *(a2 + 8);
  v5 = *(a2 + 16);
  v7 = *(a1 + 8);
  if (v6 < v7 || (v7 >= v6 ? (v8 = v5 < *(a1 + 16)) : (v8 = 0), v8))
  {
    v21 = *(a3 + 8);
    if (v21 < v6 || (v6 >= v21 ? (v22 = *(a3 + 16) < v5) : (v22 = 0), v22))
    {
      result = *a1;
      v29 = *(a1 + 16);
      v30 = *(a1 + 32);
      v33 = *(a3 + 32);
      v34 = *(a3 + 16);
      *a1 = *a3;
      *(a1 + 16) = v34;
      *(a1 + 32) = v33;
    }

    else
    {
      result = *a1;
      v23 = *(a1 + 16);
      v24 = *(a1 + 32);
      v25 = *(a2 + 32);
      v26 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v26;
      *(a1 + 32) = v25;
      *(a2 + 32) = v24;
      *a2 = result;
      *(a2 + 16) = v23;
      v27 = *(a3 + 8);
      v28 = *(a2 + 8);
      if (v27 >= v28 && (v28 < v27 || *(a3 + 16) >= *(a2 + 16)))
      {
        goto LABEL_27;
      }

      result = *a2;
      v29 = *(a2 + 16);
      v30 = *(a2 + 32);
      v31 = *(a3 + 32);
      v32 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v32;
      *(a2 + 32) = v31;
    }

    *(a3 + 32) = v30;
    *a3 = result;
    *(a3 + 16) = v29;
  }

  else
  {
    v9 = *(a3 + 8);
    if (v9 < v6 || (v6 >= v9 ? (v10 = *(a3 + 16) < v5) : (v10 = 0), v10))
    {
      result = *a2;
      v11 = *(a2 + 16);
      v12 = *(a2 + 32);
      v13 = *(a3 + 32);
      v14 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v14;
      *(a2 + 32) = v13;
      *(a3 + 32) = v12;
      *a3 = result;
      *(a3 + 16) = v11;
      v15 = *(a2 + 8);
      v16 = *(a1 + 8);
      if (v15 < v16 || v16 >= v15 && *(a2 + 16) < *(a1 + 16))
      {
        result = *a1;
        v17 = *(a1 + 16);
        v18 = *(a1 + 32);
        v19 = *(a2 + 32);
        v20 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v20;
        *(a1 + 32) = v19;
        *(a2 + 32) = v18;
        *a2 = result;
        *(a2 + 16) = v17;
      }
    }
  }

LABEL_27:
  v35 = *(a4 + 8);
  v36 = *(a3 + 8);
  if (v35 < v36 || v36 >= v35 && *(a4 + 16) < *(a3 + 16))
  {
    result = *a3;
    v37 = *(a3 + 16);
    v38 = *(a3 + 32);
    v39 = *(a4 + 32);
    v40 = *(a4 + 16);
    *a3 = *a4;
    *(a3 + 16) = v40;
    *(a3 + 32) = v39;
    *(a4 + 32) = v38;
    *a4 = result;
    *(a4 + 16) = v37;
    v41 = *(a3 + 8);
    v42 = *(a2 + 8);
    if (v41 < v42 || v42 >= v41 && *(a3 + 16) < *(a2 + 16))
    {
      result = *a2;
      v43 = *(a2 + 16);
      v44 = *(a2 + 32);
      v45 = *(a3 + 32);
      v46 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v46;
      *(a2 + 32) = v45;
      *(a3 + 32) = v44;
      *a3 = result;
      *(a3 + 16) = v43;
      v47 = *(a2 + 8);
      v48 = *(a1 + 8);
      if (v47 < v48 || v48 >= v47 && *(a2 + 16) < *(a1 + 16))
      {
        result = *a1;
        v49 = *(a1 + 16);
        v50 = *(a1 + 32);
        v51 = *(a2 + 32);
        v52 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v52;
        *(a1 + 32) = v51;
        *(a2 + 32) = v50;
        *a2 = result;
        *(a2 + 16) = v49;
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::anonymous namespace::Rectangle *>(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v3 <= 2)
  {
    if (v3 < 2)
    {
      return 1;
    }

    if (v3 == 2)
    {
      v33 = *(a2 - 32);
      v34 = *(a1 + 8);
      if (v33 >= v34 && (v34 < v33 || *(a2 - 24) >= *(a1 + 16)))
      {
        return 1;
      }

      v35 = a2 - 40;
      v36 = *a1;
      v37 = *(a1 + 16);
      v38 = *(a1 + 32);
      v39 = *(a2 - 8);
      v40 = *(a2 - 24);
      *a1 = *(a2 - 40);
      *(a1 + 16) = v40;
      *(a1 + 32) = v39;
      *(v35 + 32) = v38;
      *v35 = v36;
      *(v35 + 16) = v37;
      return 1;
    }

    goto LABEL_33;
  }

  switch(v3)
  {
    case 3:
      v41 = (a2 - 40);
      v43 = *(a1 + 48);
      v42 = *(a1 + 56);
      v44 = *(a1 + 8);
      if (v43 >= v44 && (v44 < v43 || v42 >= *(a1 + 16)))
      {
        v78 = *(a2 - 32);
        if (v78 >= v43 && (v43 < v78 || *(a2 - 24) >= v42))
        {
          return 1;
        }

        v79 = *(a1 + 40);
        v80 = *(a1 + 56);
        v81 = *(a1 + 72);
        v82 = *(a2 - 8);
        v83 = *(a2 - 24);
        *(a1 + 40) = *v41;
        *(a1 + 56) = v83;
        *(a1 + 72) = v82;
        *(a2 - 8) = v81;
        *v41 = v79;
        *(a2 - 24) = v80;
        v84 = *(a1 + 48);
        v85 = *(a1 + 8);
        if (v84 >= v85 && (v85 < v84 || *(a1 + 56) >= *(a1 + 16)))
        {
          return 1;
        }

        v86 = *(a1 + 32);
        v88 = *a1;
        v87 = *(a1 + 16);
        v89 = *(a1 + 56);
        *a1 = *(a1 + 40);
        *(a1 + 16) = v89;
        *(a1 + 32) = *(a1 + 72);
        *(a1 + 40) = v88;
        *(a1 + 56) = v87;
        *(a1 + 72) = v86;
        return 1;
      }

      else
      {
        v45 = *(a2 - 32);
        if (v45 >= v43 && (v43 < v45 || *(a2 - 24) >= v42))
        {
          v100 = *(a1 + 32);
          v102 = *a1;
          v101 = *(a1 + 16);
          v103 = *(a1 + 56);
          *a1 = *(a1 + 40);
          *(a1 + 16) = v103;
          *(a1 + 32) = *(a1 + 72);
          *(a1 + 40) = v102;
          *(a1 + 56) = v101;
          *(a1 + 72) = v100;
          v104 = *(a2 - 32);
          v105 = *(a1 + 48);
          if (v104 >= v105 && (v105 < v104 || *(a2 - 24) >= *(a1 + 56)))
          {
            return 1;
          }

          v46 = *(a1 + 40);
          v47 = *(a1 + 56);
          v48 = *(a1 + 72);
          v106 = *(a2 - 8);
          v107 = *(a2 - 24);
          *(a1 + 40) = *v41;
          *(a1 + 56) = v107;
          *(a1 + 72) = v106;
        }

        else
        {
          v46 = *a1;
          v47 = *(a1 + 16);
          v48 = *(a1 + 32);
          v49 = *(a2 - 8);
          v50 = *(a2 - 24);
          *a1 = *v41;
          *(a1 + 16) = v50;
          *(a1 + 32) = v49;
        }

        *(a2 - 8) = v48;
        *v41 = v46;
        *(a2 - 24) = v47;
        return 1;
      }

    case 4:
      return 1;
    case 5:
      v7 = *(a2 - 32);
      v8 = *(a1 + 128);
      if (v7 >= v8 && (v8 < v7 || *(a2 - 24) >= *(a1 + 136)))
      {
        return 1;
      }

      v9 = a2 - 40;
      v10 = *(a1 + 120);
      v11 = *(a1 + 136);
      v12 = *(a1 + 152);
      v13 = *(a2 - 8);
      v14 = *(a2 - 24);
      *(a1 + 120) = *(a2 - 40);
      *(a1 + 136) = v14;
      *(a1 + 152) = v13;
      *(v9 + 32) = v12;
      *v9 = v10;
      *(v9 + 16) = v11;
      v15 = *(a1 + 128);
      v16 = *(a1 + 88);
      if (v15 >= v16 && (v16 < v15 || *(a1 + 136) >= *(a1 + 96)))
      {
        return 1;
      }

      v17 = *(a1 + 112);
      v19 = *(a1 + 80);
      v18 = *(a1 + 96);
      v20 = *(a1 + 136);
      *(a1 + 80) = *(a1 + 120);
      *(a1 + 96) = v20;
      *(a1 + 112) = *(a1 + 152);
      *(a1 + 120) = v19;
      *(a1 + 136) = v18;
      *(a1 + 152) = v17;
      v21 = *(a1 + 88);
      v22 = *(a1 + 48);
      if (v21 >= v22 && (v22 < v21 || *(a1 + 96) >= *(a1 + 56)))
      {
        return 1;
      }

      v23 = *(a1 + 72);
      v24 = *(a1 + 40);
      v25 = *(a1 + 96);
      *(a1 + 40) = *(a1 + 80);
      v26 = *(a1 + 56);
      *(a1 + 56) = v25;
      *(a1 + 72) = *(a1 + 112);
      *(a1 + 80) = v24;
      *(a1 + 96) = v26;
      *(a1 + 112) = v23;
      v27 = *(a1 + 48);
      v28 = *(a1 + 8);
      if (v27 >= v28 && (v28 < v27 || *(a1 + 56) >= *(a1 + 16)))
      {
        return 1;
      }

      v29 = *(a1 + 32);
      v31 = *a1;
      v30 = *(a1 + 16);
      v32 = *(a1 + 56);
      *a1 = *(a1 + 40);
      *(a1 + 16) = v32;
      *(a1 + 32) = *(a1 + 72);
      *(a1 + 40) = v31;
      *(a1 + 56) = v30;
      *(a1 + 72) = v29;
      return 1;
    default:
LABEL_33:
      v51 = a1 + 80;
      v53 = *(a1 + 48);
      v52 = *(a1 + 56);
      v54 = *(a1 + 8);
      if (v53 >= v54)
      {
        v55 = *(a1 + 16);
        if (v54 < v53 || v52 >= v55)
        {
          v90 = *(a1 + 88);
          if (v90 < v53 || v53 >= v90 && *(a1 + 96) < v52)
          {
            v91 = *(a1 + 72);
            v92 = *(a1 + 56);
            v93 = *(a1 + 40);
            v94 = *(a1 + 96);
            *(a1 + 40) = *v51;
            *(a1 + 56) = v94;
            *(a1 + 72) = *(a1 + 112);
            *v51 = v93;
            *(a1 + 96) = v92;
            *(a1 + 112) = v91;
            v95 = *(a1 + 48);
            if (v95 < v54 || v54 >= v95 && *(a1 + 56) < v55)
            {
              v96 = *(a1 + 32);
              v98 = *a1;
              v97 = *(a1 + 16);
              v99 = *(a1 + 56);
              *a1 = *(a1 + 40);
              *(a1 + 16) = v99;
              *(a1 + 32) = *(a1 + 72);
              *(a1 + 40) = v98;
              *(a1 + 56) = v97;
              *(a1 + 72) = v96;
            }
          }

          goto LABEL_41;
        }
      }

      v56 = *(a1 + 88);
      if (v56 >= v53 && ((v57 = *(a1 + 96), v53 < v56) || v57 >= v52))
      {
        v108 = *(a1 + 32);
        v110 = *a1;
        v109 = *(a1 + 16);
        v111 = *(a1 + 56);
        *a1 = *(a1 + 40);
        *(a1 + 16) = v111;
        *(a1 + 32) = *(a1 + 72);
        *(a1 + 40) = v110;
        *(a1 + 56) = v109;
        *(a1 + 72) = v108;
        v112 = *(a1 + 48);
        if (v56 >= v112 && (v112 < v56 || v57 >= *(a1 + 56)))
        {
          goto LABEL_41;
        }

        v58 = *(a1 + 72);
        v59 = *(a1 + 56);
        v60 = *(a1 + 40);
        v113 = *(a1 + 96);
        *(a1 + 40) = *v51;
        *(a1 + 56) = v113;
        *(a1 + 72) = *(a1 + 112);
      }

      else
      {
        v58 = *(a1 + 32);
        v60 = *a1;
        v59 = *(a1 + 16);
        v61 = *(a1 + 96);
        *a1 = *v51;
        *(a1 + 16) = v61;
        *(a1 + 32) = *(a1 + 112);
      }

      *v51 = v60;
      *(a1 + 96) = v59;
      *(a1 + 112) = v58;
LABEL_41:
      v62 = a1 + 120;
      if (a1 + 120 == a2)
      {
LABEL_63:
        v77 = 1;
      }

      else
      {
        v63 = 0;
        v64 = 0;
        while (1)
        {
          v66 = *(v51 + 8);
          v67 = *(v62 + 8);
          v68 = *(v62 + 16);
          if (v67 < v66 || (v66 >= v67 ? (v69 = v68 < *(v51 + 16)) : (v69 = 0), v69))
          {
            v70 = *v62;
            v114 = *(v62 + 24);
            *(v62 + 32) = *(v51 + 32);
            v71 = *(v51 + 16);
            *v62 = *v51;
            *(v62 + 16) = v71;
            v65 = a1;
            if (v51 != a1)
            {
              v72 = v63;
              while (1)
              {
                v74 = a1 + v72;
                v75 = *(a1 + v72 + 48);
                if (v67 >= v75 && (v75 < v67 || v68 >= *(v74 + 56)))
                {
                  break;
                }

                v73 = *(v74 + 56);
                *(v74 + 80) = *(v74 + 40);
                *(v74 + 96) = v73;
                *(v74 + 112) = *(v74 + 72);
                v72 -= 40;
                if (v72 == -80)
                {
                  v65 = a1;
                  goto LABEL_44;
                }
              }

              v65 = a1 + v72 + 80;
            }

LABEL_44:
            *v65 = v70;
            *(v65 + 8) = v67;
            *(v65 + 16) = v68;
            *(v65 + 24) = v114;
            if (++v64 == 8)
            {
              break;
            }
          }

          v51 = v62;
          v63 += 40;
          v62 += 40;
          if (v62 == a2)
          {
            goto LABEL_63;
          }
        }

        v77 = 0;
        LODWORD(v62) = v62 + 40 == a2;
      }

      return (v77 | v62) & 1;
  }
}

uint64_t operations_research::TimeLimit::MergeWithGlobalTimeLimit(uint64_t this, operations_research::TimeLimit *a2)
{
  if (!a2)
  {
    return this;
  }

  v3 = this;
  v4 = *(this + 16);
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = INFINITY;
    v6 = *(a2 + 2);
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_29;
    }

    goto LABEL_17;
  }

  this = absl::lts_20240722::GetCurrentTimeNanos(this);
  v7 = v4 - this;
  if (v4 - this < 0)
  {
    v5 = 0.0;
    v6 = *(a2 + 2);
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_29;
    }

    goto LABEL_17;
  }

  explicit = atomic_load_explicit(&qword_2810BD7F8, memory_order_acquire);
  if (explicit)
  {
    if (explicit)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v17 = v4 - this;
    this = absl::lts_20240722::flags_internal::FlagImpl::ReadOneBool(&FLAGS_time_limit_use_usertime);
    v7 = v17;
    if (this)
    {
LABEL_8:
      v9 = *(v3 + 96);
      if (*(v3 + 72) == 1)
      {
        this = absl::lts_20240722::GetCurrentTimeNanos(this);
        v10 = this - *(v3 + 80) + *(v3 + 88);
      }

      else
      {
        v10 = *(v3 + 88);
      }

      if (v9 + v10 * -0.000000001 >= 0.0)
      {
        v5 = v9 + v10 * -0.000000001;
      }

      else
      {
        v5 = 0.0;
      }

      v6 = *(a2 + 2);
      if (v6 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_29;
      }

      goto LABEL_17;
    }
  }

  v5 = v7 * 0.000000001;
  v6 = *(a2 + 2);
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_29:
    v16 = INFINITY;
    goto LABEL_32;
  }

LABEL_17:
  CurrentTimeNanos = absl::lts_20240722::GetCurrentTimeNanos(this);
  v12 = v6 - CurrentTimeNanos;
  if ((v6 - CurrentTimeNanos) >= 0)
  {
    v13 = atomic_load_explicit(&qword_2810BD7F8, memory_order_acquire);
    if (v13)
    {
      if (v13)
      {
        goto LABEL_20;
      }
    }

    else
    {
      CurrentTimeNanos = absl::lts_20240722::flags_internal::FlagImpl::ReadOneBool(&FLAGS_time_limit_use_usertime);
      if (CurrentTimeNanos)
      {
LABEL_20:
        v14 = *(a2 + 12);
        if (*(a2 + 72) == 1)
        {
          v15 = absl::lts_20240722::GetCurrentTimeNanos(CurrentTimeNanos) - *(a2 + 10) + *(a2 + 11);
        }

        else
        {
          v15 = *(a2 + 11);
        }

        v16 = v14 + v15 * -0.000000001;
        if (v16 < 0.0)
        {
          v16 = 0.0;
        }

        goto LABEL_32;
      }
    }

    v16 = v12 * 0.000000001;
    goto LABEL_32;
  }

  v16 = 0.0;
LABEL_32:
  if (v16 >= v5)
  {
    v16 = v5;
  }

  v18 = fmax(*(v3 + 104) - *(v3 + 112), 0.0);
  v19 = fmax(*(a2 + 13) - *(a2 + 14), 0.0);
  if (v19 < v18)
  {
    v18 = v19;
  }

  this = operations_research::TimeLimit::ResetTimers(v3, v16, v18);
  v20 = *(a2 + 15);
  if (v20)
  {
    *(v3 + 120) = v20;
  }

  return this;
}

unint64_t operations_research::TimeLimit::ResetTimers(operations_research::TimeLimit *this, double a2, double a3)
{
  v4 = this;
  *(this + 14) = 0;
  *(this + 13) = a3;
  explicit = atomic_load_explicit(&qword_2810BD7F8, memory_order_acquire);
  if (explicit)
  {
    if ((explicit & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  this = absl::lts_20240722::flags_internal::FlagImpl::ReadOneBool(&FLAGS_time_limit_use_usertime);
  if (this)
  {
LABEL_3:
    *(v4 + 72) = 1;
    this = absl::lts_20240722::GetCurrentTimeNanos(this);
    *(v4 + 10) = this;
    *(v4 + 12) = a2;
  }

LABEL_4:
  CurrentTimeNanos = absl::lts_20240722::GetCurrentTimeNanos(this);
  *v4 = CurrentTimeNanos;
  *(v4 + 1) = CurrentTimeNanos;
  if (a2 >= 0.0)
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
    v12 = -1;
    v13 = a2;
    v14 = vcvtad_u64_f64((a2 - a2) * 4000000000.0);
    if (v14 > 0xEE6B27FF)
    {
      ++v13;
      v14 += 294967296;
    }

    if (a2 < 9.22337204e18)
    {
      v7 = v13;
      v12 = v14;
    }
  }

  else
  {
    v7 = 0x8000000000000000;
    if (a2 <= -9.22337204e18)
    {
      v12 = -1;
    }

    else
    {
      v8 = -a2;
      v9 = vcvtad_u64_f64((-a2 - v8) * 4000000000.0);
      if (v9 > 0xEE6B27FF)
      {
        ++v8;
        v9 += 294967296;
      }

      v10 = (v8 >> 63) ^ 0x8000000000000000;
      if (v8 == 0x8000000000000000)
      {
        v7 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v7 = -v8;
      }

      if (v8 == 0x8000000000000000)
      {
        v11 = -1;
      }

      else
      {
        v11 = 0;
      }

      if (v9)
      {
        v7 = ~v8;
        v12 = -294967296 - v9;
      }

      else
      {
        v12 = v11;
      }

      if (v9 == -1)
      {
        v7 = v10;
        v12 = -1;
      }
    }
  }

  if (CurrentTimeNanos % 1000000000 >= 0)
  {
    v15 = 4 * (CurrentTimeNanos % 1000000000);
  }

  else
  {
    LODWORD(v15) = 4 * (CurrentTimeNanos % 1000000000) - 294967296;
  }

  v19 = v7;
  v20 = v12;
  v16 = absl::lts_20240722::Duration::operator+=(&v19, CurrentTimeNanos / 1000000000 + ((CurrentTimeNanos % 1000000000) >> 61), v15 & 0xFFFFFFFC);
  v17 = *(v16 + 2);
  v19 = *v16;
  v20 = v17;
  result = absl::lts_20240722::IDivDuration(v19, v17, 0, 4, &v19);
  *(v4 + 2) = result;
  return result;
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::anonymous namespace::StartEndIndex *,false>(uint64_t a1, __int128 *a2, uint64_t a3, char a4, __n128 a5)
{
LABEL_1:
  v9 = (a2 - 2);
  j = a1;
  while (1)
  {
    a1 = j;
    v11 = (a2 - j) >> 5;
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3:

          return;
        case 4:

          return;
        case 5:

          return;
      }
    }

    else
    {
      if (v11 < 2)
      {
        return;
      }

      if (v11 == 2)
      {
        v78 = a2 - 2;
        v79 = *(a2 - 4);
        if (v79 < *j || *j >= v79 && ((v164 = *(a2 - 3), v165 = *(j + 8), v164 < v165) || v165 >= v164 && ((v166 = *(a2 - 1), v167 = *(j + 24), v166 < v167) || v167 >= v166 && *(a2 - 4) < *(j + 16))))
        {
          v184 = *j;
          v189 = *(j + 16);
          v80 = *(a2 - 1);
          *j = *v78;
          *(j + 16) = v80;
          *v78 = v184;
          *(a2 - 1) = v189;
        }

        return;
      }
    }

    if (v11 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (j == a2)
      {
        return;
      }

      v102 = (v11 - 2) >> 1;
      v103 = v102;
      while (2)
      {
        v105 = v103;
        v106 = 32 * v103;
        if (v102 >= (32 * v103) >> 5)
        {
          v107 = (v106 >> 4) | 1;
          v104 = (j + 32 * v107);
          if ((v106 >> 4) + 2 < v11)
          {
            v108 = *(v104 + 4);
            if (*v104 < v108 || v108 >= *v104 && ((v128 = *(v104 + 1), v129 = *(v104 + 5), v128 < v129) || v129 >= v128 && ((v130 = *(v104 + 3), v131 = *(v104 + 7), v130 < v131) || v131 >= v130 && *(v104 + 4) < *(v104 + 12))))
            {
              v104 += 2;
              v107 = (v106 >> 4) + 2;
            }
          }

          v109 = j + v106;
          v110 = *(j + v106);
          if (*v104 >= v110)
          {
            v111 = *(v109 + 8);
            if (v110 < *v104)
            {
              v112 = *(v109 + 24);
              goto LABEL_201;
            }

            v126 = *(v104 + 1);
            if (v126 >= v111)
            {
              v112 = *(v109 + 24);
              if (v111 < v126 || (v127 = *(v104 + 3), v127 >= v112) && (v112 < v127 || *(v104 + 4) >= *(v109 + 16)))
              {
LABEL_201:
                v113 = *(v109 + 16);
                v114 = v104[1];
                *v109 = *v104;
                *(v109 + 16) = v114;
                if (v102 >= v107)
                {
                  while (1)
                  {
                    v116 = v104;
                    v117 = 2 * v107;
                    v107 = (2 * v107) | 1;
                    v104 = (j + 32 * v107);
                    v118 = v117 + 2;
                    if (v118 < v11)
                    {
                      v119 = *(v104 + 4);
                      if (*v104 < v119 || v119 >= *v104 && ((v122 = *(v104 + 1), v123 = *(v104 + 5), v122 < v123) || v123 >= v122 && ((v124 = *(v104 + 3), v125 = *(v104 + 7), v124 < v125) || v125 >= v124 && *(v104 + 4) < *(v104 + 12))))
                      {
                        v104 += 2;
                        v107 = v118;
                      }
                    }

                    if (*v104 < v110)
                    {
                      break;
                    }

                    if (v110 >= *v104)
                    {
                      v120 = *(v104 + 1);
                      if (v120 < v111)
                      {
                        break;
                      }

                      if (v111 >= v120)
                      {
                        v121 = *(v104 + 3);
                        if (v121 < v112 || v112 >= v121 && *(v104 + 4) < v113)
                        {
                          break;
                        }
                      }
                    }

                    v115 = v104[1];
                    *v116 = *v104;
                    v116[1] = v115;
                    if (v102 < v107)
                    {
                      goto LABEL_191;
                    }
                  }

                  v104 = v116;
                }

LABEL_191:
                *v104 = v110;
                *(v104 + 1) = v111;
                *(v104 + 2) = v113;
                *(v104 + 3) = v112;
              }
            }
          }
        }

        v103 = v105 - 1;
        if (v105)
        {
          continue;
        }

        break;
      }

      while (2)
      {
        v133 = 0;
        v185 = *j;
        v190 = *(j + 16);
        v134 = j;
        do
        {
          v136 = v134;
          v137 = v134 + 32 * v133;
          v134 = v137 + 32;
          v138 = 2 * v133;
          v133 = (2 * v133) | 1;
          v139 = v138 + 2;
          if (v139 < v11)
          {
            v140 = *(v137 + 64);
            v141 = *(v137 + 32);
            if (v141 < v140 || v140 >= v141 && ((v142 = *(v137 + 40), v143 = *(v137 + 72), v142 < v143) || v143 >= v142 && ((v144 = *(v137 + 56), v145 = *(v137 + 88), v144 < v145) || v145 >= v144 && *(v137 + 48) < *(v137 + 80))))
            {
              v134 = v137 + 64;
              v133 = v139;
            }
          }

          v135 = *(v134 + 16);
          *v136 = *v134;
          v136[1] = v135;
        }

        while (v133 <= ((v11 - 2) >> 1));
        a2 -= 2;
        if (v134 == a2)
        {
          *v134 = v185;
          *(v134 + 16) = v190;
        }

        else
        {
          v146 = a2[1];
          *v134 = *a2;
          *(v134 + 16) = v146;
          *a2 = v185;
          a2[1] = v190;
          v147 = (v134 - j + 32) >> 5;
          v148 = v147 - 2;
          if (v147 >= 2)
          {
            v149 = v148 >> 1;
            v150 = (j + 32 * (v148 >> 1));
            v151 = *v134;
            if (*v150 < *v134)
            {
              v152 = *(v134 + 8);
              goto LABEL_252;
            }

            if (v151 >= *v150)
            {
              v161 = *(v150 + 1);
              v152 = *(v134 + 8);
              if (v161 < v152 || v152 >= v161 && ((v162 = *(v150 + 3), v163 = *(v134 + 24), v162 < v163) || v163 >= v162 && *(v150 + 4) < *(v134 + 16)))
              {
LABEL_252:
                v154 = *(v134 + 16);
                v153 = *(v134 + 24);
                v155 = v150[1];
                *v134 = *v150;
                *(v134 + 16) = v155;
                if (v148 >= 2)
                {
                  while (1)
                  {
                    v157 = v150;
                    v158 = v149 - 1;
                    v149 = (v149 - 1) >> 1;
                    v150 = (j + 32 * v149);
                    if (*v150 >= v151)
                    {
                      if (v151 < *v150)
                      {
                        break;
                      }

                      v159 = *(v150 + 1);
                      if (v159 >= v152)
                      {
                        if (v152 < v159)
                        {
                          break;
                        }

                        v160 = *(v150 + 3);
                        if (v160 >= v153 && (v153 < v160 || *(v150 + 4) >= v154))
                        {
                          break;
                        }
                      }
                    }

                    v156 = v150[1];
                    *v157 = *v150;
                    v157[1] = v156;
                    if (v158 <= 1)
                    {
                      goto LABEL_263;
                    }
                  }

                  v150 = v157;
                }

LABEL_263:
                *v150 = v151;
                *(v150 + 1) = v152;
                *(v150 + 2) = v154;
                *(v150 + 3) = v153;
              }
            }
          }
        }

        if (v11-- <= 2)
        {
          return;
        }

        continue;
      }
    }

    v12 = v11 >> 1;
    v13 = (j + 32 * (v11 >> 1));
    if (v11 < 0x81)
    {
      --a3;
      v19 = *a1;
      if ((a4 & 1) == 0)
      {
        goto LABEL_15;
      }

LABEL_22:
      v24 = 0;
      v25 = *(a1 + 8);
      a5.n128_u64[0] = *(a1 + 16);
      v26 = *(a1 + 24);
      while (1)
      {
        v27 = a1 + v24;
        v28 = *(a1 + v24 + 32);
        if (v28 >= v19)
        {
          if (v19 < v28)
          {
            break;
          }

          v29 = *(v27 + 40);
          if (v29 >= v25)
          {
            if (v25 < v29)
            {
              break;
            }

            v30 = *(v27 + 56);
            if (v30 >= v26 && (v26 < v30 || *(v27 + 48) >= a5.n128_i32[0]))
            {
              break;
            }
          }
        }

        v24 += 32;
      }

      v31 = a1 + v24 + 32;
      if (v24)
      {
        v32 = *v9;
        for (i = a2 - 2; v32 >= v19; i -= 2)
        {
          if (v19 >= v32)
          {
            v35 = *(i + 1);
            if (v35 < v25)
            {
              break;
            }

            if (v25 >= v35)
            {
              v36 = *(i + 3);
              if (v36 < v26 || v26 >= v36 && *(i + 4) < a5.n128_i32[0])
              {
                break;
              }
            }
          }

          v34 = *(i - 4);
          v32 = v34;
        }
      }

      else
      {
        i = a2;
        if (v31 < a2)
        {
          v37 = *v9;
          i = a2 - 2;
          if (*v9 >= v19)
          {
            i = a2 - 2;
            do
            {
              if (v19 < v37)
              {
                goto LABEL_75;
              }

              v51 = *(i + 1);
              if (v51 < v25)
              {
                break;
              }

              if (v25 < v51)
              {
                goto LABEL_75;
              }

              v52 = *(i + 3);
              if (v52 < v26)
              {
                break;
              }

              if (v26 >= v52)
              {
                if (v31 >= i || *(i + 4) < a5.n128_i32[0])
                {
                  break;
                }
              }

              else
              {
LABEL_75:
                if (v31 >= i)
                {
                  break;
                }
              }

              v53 = *(i - 4);
              i -= 2;
              v37 = v53;
            }

            while (v53 >= v19);
          }
        }
      }

      j = v31;
      if (v31 < i)
      {
        v38 = i;
        do
        {
          v182 = *j;
          v187 = *(j + 16);
          v39 = *(v38 + 16);
          *j = *v38;
          *(j + 16) = v39;
          *v38 = v182;
          *(v38 + 16) = v187;
          while (1)
          {
            do
            {
              v41 = *(j + 32);
              j += 32;
              v40 = v41;
            }

            while (v41 < v19);
            if (v19 < v40)
            {
              break;
            }

            v42 = *(j + 8);
            if (v42 >= v25)
            {
              if (v25 < v42)
              {
                break;
              }

              v43 = *(j + 24);
              if (v43 >= v26 && (v26 < v43 || *(j + 16) >= a5.n128_i32[0]))
              {
                break;
              }
            }
          }

          while (1)
          {
            v45 = *(v38 - 32);
            v38 -= 32;
            v44 = v45;
            if (v45 < v19)
            {
              break;
            }

            if (v19 >= v44)
            {
              v46 = *(v38 + 8);
              if (v46 < v25)
              {
                break;
              }

              if (v25 >= v46)
              {
                v47 = *(v38 + 24);
                if (v47 < v26 || v26 >= v47 && *(v38 + 16) < a5.n128_i32[0])
                {
                  break;
                }
              }
            }
          }
        }

        while (j < v38);
      }

      if (j - 32 != a1)
      {
        v48 = *(j - 16);
        *a1 = *(j - 32);
        *(a1 + 16) = v48;
      }

      *(j - 32) = v19;
      *(j - 24) = v25;
      *(j - 16) = a5.n128_u64[0];
      *(j - 8) = v26;
      if (v31 < i)
      {
        goto LABEL_68;
      }

      {
        a2 = (j - 32);
        if (started)
        {
          return;
        }

        goto LABEL_1;
      }

      if ((started & 1) == 0)
      {
LABEL_68:
        a4 = 0;
      }
    }

    else
    {
      v15 = 32 * v12;
      v16 = (32 * v12 + a1 - 32);
      v181 = *a1;
      v186 = *(a1 + 16);
      a5 = v13[1];
      *a1 = *v13;
      *(a1 + 16) = a5;
      a5.n128_u64[1] = v181.n128_u64[1];
      *v13 = v181;
      v13[1] = v186;
      --a3;
      v19 = *a1;
      if (a4)
      {
        goto LABEL_22;
      }

LABEL_15:
      v20 = *(a1 - 32);
      if (v20 < v19)
      {
        goto LABEL_22;
      }

      v21 = *(a1 + 8);
      if (v19 < v20)
      {
        a5.n128_u64[0] = *(a1 + 24);
      }

      else
      {
        v22 = *(a1 - 24);
        if (v22 < v21)
        {
          goto LABEL_22;
        }

        a5.n128_u64[0] = *(a1 + 24);
        if (v21 >= v22)
        {
          v23 = *(a1 - 8);
          if (v23 < a5.n128_f64[0] || a5.n128_f64[0] >= v23 && *(a1 - 16) < *(a1 + 16))
          {
            goto LABEL_22;
          }
        }
      }

      v54 = *(a1 + 16);
      v55 = *v9;
      if (v19 < *v9 || v55 >= v19 && ((v76 = *(a2 - 3), v21 < v76) || v76 >= v21 && ((v77 = *(a2 - 1), a5.n128_f64[0] < v77) || v77 >= a5.n128_f64[0] && v54 < *(a2 - 4))))
      {
        j = a1 + 32;
        v56 = *(a1 + 32);
        if (v19 >= v56)
        {
          do
          {
            if (v56 >= v19)
            {
              v58 = *(j + 8);
              if (v21 < v58)
              {
                break;
              }

              if (v58 >= v21)
              {
                v59 = *(j + 24);
                if (a5.n128_f64[0] < v59 || v59 >= a5.n128_f64[0] && v54 < *(j + 16))
                {
                  break;
                }
              }
            }

            v57 = *(j + 32);
            j += 32;
            v56 = v57;
          }

          while (v19 >= v57);
        }
      }

      else
      {
        for (j = a1 + 32; j < a2; j += 32)
        {
          if (v19 < *j)
          {
            break;
          }

          if (*j >= v19)
          {
            v60 = *(j + 8);
            if (v21 < v60)
            {
              break;
            }

            if (v60 >= v21)
            {
              v61 = *(j + 24);
              if (a5.n128_f64[0] < v61 || v61 >= a5.n128_f64[0] && v54 < *(j + 16))
              {
                break;
              }
            }
          }
        }
      }

      k = a2;
      if (j < a2)
      {
        for (k = a2 - 2; ; k -= 2)
        {
          if (v19 >= v55)
          {
            if (v55 < v19)
            {
              break;
            }

            v64 = *(k + 1);
            if (v21 >= v64)
            {
              if (v64 < v21)
              {
                break;
              }

              v65 = *(k + 3);
              if (a5.n128_f64[0] >= v65 && (v65 < a5.n128_f64[0] || v54 >= *(k + 4)))
              {
                break;
              }
            }
          }

          v63 = *(k - 4);
          v55 = v63;
        }
      }

      while (j < k)
      {
        v183 = *j;
        v188 = *(j + 16);
        v66 = k[1];
        *j = *k;
        *(j + 16) = v66;
        *k = v183;
        k[1] = v188;
        while (1)
        {
          v68 = *(j + 32);
          j += 32;
          v67 = v68;
          if (v19 < v68)
          {
            break;
          }

          if (v67 >= v19)
          {
            v69 = *(j + 8);
            if (v21 < v69)
            {
              break;
            }

            if (v69 >= v21)
            {
              v70 = *(j + 24);
              if (a5.n128_f64[0] < v70 || v70 >= a5.n128_f64[0] && v54 < *(j + 16))
              {
                break;
              }
            }
          }
        }

        while (1)
        {
          do
          {
            v72 = *(k - 4);
            k -= 2;
            v71 = v72;
          }

          while (v19 < v72);
          if (v71 < v19)
          {
            break;
          }

          v73 = *(k + 1);
          if (v21 >= v73)
          {
            if (v73 < v21)
            {
              break;
            }

            v74 = *(k + 3);
            if (a5.n128_f64[0] >= v74 && (v74 < a5.n128_f64[0] || v54 >= *(k + 4)))
            {
              break;
            }
          }
        }
      }

      if (j - 32 != a1)
      {
        v75 = *(j - 16);
        *a1 = *(j - 32);
        *(a1 + 16) = v75;
      }

      a4 = 0;
      *(j - 32) = v19;
      *(j - 24) = v21;
      *(j - 16) = v54;
      *(j - 8) = a5.n128_u64[0];
    }
  }

  v81 = (j + 32);
  v83 = j == a2 || v81 == a2;
  if (a4)
  {
    if (v83)
    {
      return;
    }

    v84 = 0;
    v85 = j;
LABEL_167:
    v87 = v85;
    v85 = v81;
    v88 = *(v87 + 4);
    if (v88 >= *v87)
    {
      if (*v87 < v88)
      {
        goto LABEL_166;
      }

      v89 = *(v87 + 5);
      v99 = *(v87 + 1);
      if (v89 >= v99)
      {
        if (v99 < v89)
        {
          goto LABEL_166;
        }

        v100 = *(v87 + 7);
        v101 = *(v87 + 3);
        if (v100 >= v101 && (v101 < v100 || *(v87 + 12) >= *(v87 + 4)))
        {
          goto LABEL_166;
        }
      }
    }

    else
    {
      v89 = *(v87 + 5);
    }

    v91 = *(v87 + 6);
    v90 = *(v87 + 7);
    v92 = v87[1];
    *v85 = *v87;
    v85[1] = v92;
    v86 = j;
    if (v87 == j)
    {
      goto LABEL_165;
    }

    v93 = v84;
    while (1)
    {
      v95 = (j + v93);
      v96 = *(j + v93 - 32);
      if (v88 >= v96)
      {
        if (v96 < v88)
        {
          goto LABEL_179;
        }

        v97 = *(v95 - 3);
        if (v89 >= v97)
        {
          if (v97 < v89)
          {
            goto LABEL_179;
          }

          v98 = *(v95 - 1);
          if (v90 >= v98)
          {
            if (v98 < v90)
            {
              v86 = j + v93;
LABEL_165:
              *v86 = v88;
              *(v86 + 8) = v89;
              *(v86 + 16) = v91;
              *(v86 + 24) = v90;
LABEL_166:
              v81 = v85 + 2;
              v84 += 32;
              if (v85 + 2 == a2)
              {
                return;
              }

              goto LABEL_167;
            }

            if (v91 >= *(v95 - 4))
            {
LABEL_179:
              v86 = v87;
              goto LABEL_165;
            }
          }
        }
      }

      v87 -= 2;
      v94 = *(j + v93 - 16);
      *v95 = *(j + v93 - 32);
      v95[1] = v94;
      v93 -= 32;
      if (!v93)
      {
        v86 = j;
        goto LABEL_165;
      }
    }
  }

  if (!v83)
  {
    while (1)
    {
      v168 = a1;
      a1 = v81;
      v169 = *(v168 + 32);
      if (v169 < *v168)
      {
        break;
      }

      if (*v168 >= v169)
      {
        v170 = *(v168 + 40);
        v178 = *(v168 + 8);
        if (v170 < v178)
        {
          goto LABEL_284;
        }

        if (v178 >= v170)
        {
          v179 = *(v168 + 56);
          v180 = *(v168 + 24);
          if (v179 < v180 || v180 >= v179 && *(v168 + 48) < *(v168 + 16))
          {
            goto LABEL_284;
          }
        }
      }

LABEL_281:
      v81 = (a1 + 32);
      if ((a1 + 32) == a2)
      {
        return;
      }
    }

    v170 = *(v168 + 40);
LABEL_284:
    v171 = *(v168 + 48);
    v172 = *(v168 + 56);
    for (m = a1; ; m -= 2)
    {
      v174 = *(m - 1);
      *m = *(m - 2);
      m[1] = v174;
      v175 = *(m - 8);
      if (v169 >= v175)
      {
        if (v175 < v169)
        {
          break;
        }

        v176 = *(m - 7);
        if (v170 >= v176)
        {
          if (v176 < v170)
          {
            break;
          }

          v177 = *(m - 5);
          if (v172 >= v177 && (v177 < v172 || v171 >= *(m - 12)))
          {
            break;
          }
        }
      }
    }

    *(m - 4) = v169;
    *(m - 3) = v170;
    *(m - 2) = v171;
    *(m - 1) = v172;
    goto LABEL_281;
  }
}

double std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::anonymous namespace::StartEndIndex *,0>(__int128 *a1, uint64_t *a2, __int128 *a3, __n128 a4)
{
  v4 = *a2;
  if (*a2 < *a1 || *a1 >= v4 && ((v14 = a2[1], v15 = *(a1 + 1), v14 < v15) || v15 >= v14 && ((a4.n128_u64[0] = a2[3], v16 = *(a1 + 3), a4.n128_f64[0] < v16) || v16 >= a4.n128_f64[0] && *(a2 + 4) < *(a1 + 4))))
  {
    if (*a3 < v4 || v4 >= *a3 && ((v20 = *(a3 + 1), v21 = a2[1], v20 < v21) || v21 >= v20 && ((v22 = *(a3 + 3), v23 = *(a2 + 3), v22 < v23) || v23 >= v22 && *(a3 + 4) < *(a2 + 4))))
    {
      v5 = *a1;
      a4 = a1[1];
      v6 = a3[1];
      *a1 = *a3;
      a1[1] = v6;
    }

    else
    {
      v11 = *a1;
      a4 = a1[1];
      v12 = *(a2 + 1);
      *a1 = *a2;
      a1[1] = v12;
      *a2 = v11;
      *(a2 + 1) = a4;
      if (*a3 >= *a2)
      {
        if (*a2 < *a3)
        {
          return a4.n128_f64[0];
        }

        v27 = *(a3 + 1);
        v28 = a2[1];
        if (v27 >= v28)
        {
          if (v28 < v27)
          {
            return a4.n128_f64[0];
          }

          a4.n128_u64[0] = *(a3 + 3);
          v29 = *(a2 + 3);
          if (a4.n128_f64[0] >= v29 && (v29 < a4.n128_f64[0] || *(a3 + 4) >= *(a2 + 4)))
          {
            return a4.n128_f64[0];
          }
        }
      }

      v5 = *a2;
      a4 = *(a2 + 1);
      v13 = a3[1];
      *a2 = *a3;
      *(a2 + 1) = v13;
    }

    *a3 = v5;
    a3[1] = a4;
    return a4.n128_f64[0];
  }

  if (*a3 < v4 || v4 >= *a3 && ((v17 = *(a3 + 1), v18 = a2[1], v17 < v18) || v18 >= v17 && ((a4.n128_u64[0] = *(a3 + 3), v19 = *(a2 + 3), a4.n128_f64[0] < v19) || v19 >= a4.n128_f64[0] && *(a3 + 4) < *(a2 + 4))))
  {
    v7 = *a2;
    a4 = *(a2 + 1);
    v8 = a3[1];
    *a2 = *a3;
    *(a2 + 1) = v8;
    *a3 = v7;
    a3[1] = a4;
    if (*a2 < *a1 || *a1 >= *a2 && ((v24 = a2[1], v25 = *(a1 + 1), v24 < v25) || v25 >= v24 && ((a4.n128_u64[0] = a2[3], v26 = *(a1 + 3), a4.n128_f64[0] < v26) || v26 >= a4.n128_f64[0] && *(a2 + 4) < *(a1 + 4))))
    {
      v9 = *a1;
      a4 = a1[1];
      v10 = *(a2 + 1);
      *a1 = *a2;
      a1[1] = v10;
      *a2 = v9;
      *(a2 + 1) = a4;
    }
  }

  return a4.n128_f64[0];
}

double std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::anonymous namespace::StartEndIndex *,0>(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4, __n128 a5)
{
  if (*a4 < *a3 || *a3 >= *a4 && ((v16 = *(a4 + 1), v17 = *(a3 + 1), v16 < v17) || v17 >= v16 && ((*&v9 = *(a4 + 3), v18 = *(a3 + 3), *&v9 < v18) || v18 >= *&v9 && *(a4 + 4) < *(a3 + 4))))
  {
    v10 = *a3;
    v9 = a3[1];
    v11 = a4[1];
    *a3 = *a4;
    a3[1] = v11;
    *a4 = v10;
    a4[1] = v9;
    if (*a3 < *a2 || *a2 >= *a3 && ((v19 = *(a3 + 1), v20 = *(a2 + 1), v19 < v20) || v20 >= v19 && ((*&v9 = *(a3 + 3), v21 = *(a2 + 3), *&v9 < v21) || v21 >= *&v9 && *(a3 + 4) < *(a2 + 4))))
    {
      v12 = *a2;
      v9 = a2[1];
      v13 = a3[1];
      *a2 = *a3;
      a2[1] = v13;
      *a3 = v12;
      a3[1] = v9;
      if (*a2 < *a1 || *a1 >= *a2 && ((v22 = *(a2 + 1), v23 = *(a1 + 8), v22 < v23) || v23 >= v22 && ((*&v9 = *(a2 + 3), v24 = *(a1 + 24), *&v9 < v24) || v24 >= *&v9 && *(a2 + 4) < *(a1 + 16))))
      {
        v14 = *a1;
        v9 = *(a1 + 16);
        v15 = a2[1];
        *a1 = *a2;
        *(a1 + 16) = v15;
        *a2 = v14;
        a2[1] = v9;
      }
    }
  }

  return *&v9;
}

double std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::anonymous namespace::StartEndIndex *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  if (*a5 < *a4 || *a4 >= *a5 && ((v20 = *(a5 + 8), v21 = *(a4 + 8), v20 < v21) || v21 >= v20 && ((*&v11 = *(a5 + 24), v22 = *(a4 + 24), *&v11 < v22) || v22 >= *&v11 && *(a5 + 16) < *(a4 + 16))))
  {
    v12 = *a4;
    v11 = *(a4 + 16);
    v13 = *(a5 + 16);
    *a4 = *a5;
    *(a4 + 16) = v13;
    *a5 = v12;
    *(a5 + 16) = v11;
    if (*a4 < *a3 || *a3 >= *a4 && ((v23 = *(a4 + 8), v24 = *(a3 + 8), v23 < v24) || v24 >= v23 && ((*&v11 = *(a4 + 24), v25 = *(a3 + 24), *&v11 < v25) || v25 >= *&v11 && *(a4 + 16) < *(a3 + 16))))
    {
      v14 = *a3;
      v11 = *(a3 + 16);
      v15 = *(a4 + 16);
      *a3 = *a4;
      *(a3 + 16) = v15;
      *a4 = v14;
      *(a4 + 16) = v11;
      if (*a3 < *a2 || *a2 >= *a3 && ((v26 = *(a3 + 8), v27 = *(a2 + 8), v26 < v27) || v27 >= v26 && ((*&v11 = *(a3 + 24), v28 = *(a2 + 24), *&v11 < v28) || v28 >= *&v11 && *(a3 + 16) < *(a2 + 16))))
      {
        v16 = *a2;
        v11 = *(a2 + 16);
        v17 = *(a3 + 16);
        *a2 = *a3;
        *(a2 + 16) = v17;
        *a3 = v16;
        *(a3 + 16) = v11;
        if (*a2 < *a1 || *a1 >= *a2 && ((v29 = *(a2 + 8), v30 = *(a1 + 8), v29 < v30) || v30 >= v29 && ((*&v11 = *(a2 + 24), v31 = *(a1 + 24), *&v11 < v31) || v31 >= *&v11 && *(a2 + 16) < *(a1 + 16))))
        {
          v18 = *a1;
          v11 = *(a1 + 16);
          v19 = *(a2 + 16);
          *a1 = *a2;
          *(a1 + 16) = v19;
          *a2 = v18;
          *(a2 + 16) = v11;
        }
      }
    }
  }

  return *&v11;
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::anonymous namespace::StartEndIndex *>(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = (a2 - a1) >> 5;
  if (v3 <= 2)
  {
    if (v3 >= 2)
    {
      if (v3 == 2)
      {
        v4 = (a2 - 32);
        v5 = *(a2 - 32);
        if (v5 < *a1 || *a1 >= v5 && ((v33 = *(a2 - 24), v34 = *(a1 + 8), v33 < v34) || v34 >= v33 && ((v35 = *(a2 - 8), v36 = *(a1 + 24), v35 < v36) || v36 >= v35 && *(a2 - 16) < *(a1 + 16))))
        {
          v7 = *a1;
          v6 = *(a1 + 16);
          v8 = *(a2 - 16);
          *a1 = *v4;
          *(a1 + 16) = v8;
          *v4 = v7;
          *(a2 - 16) = v6;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v3)
  {
    case 3:
      return 1;
    case 4:
      return 1;
    case 5:
      return 1;
  }

LABEL_11:
  v9 = a1 + 64;
  v13 = a1 + 96;
  if (a1 + 96 == a2)
  {
LABEL_39:
    v32 = 1;
    return (v32 | v12) & 1;
  }

  v12 = a2;
  v14 = 0;
  v15 = 0;
  while (2)
  {
    v17 = *v13;
    if (*v13 >= *v9)
    {
      if (*v9 < v17)
      {
        goto LABEL_15;
      }

      v18 = *(v13 + 8);
      v28 = *(v9 + 8);
      if (v18 >= v28)
      {
        if (v28 < v18)
        {
          goto LABEL_15;
        }

        v29 = *(v13 + 24);
        v30 = *(v9 + 24);
        if (v29 >= v30 && (v30 < v29 || *(v13 + 16) >= *(v9 + 16)))
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      v18 = *(v13 + 8);
    }

    v20 = *(v13 + 16);
    v19 = *(v13 + 24);
    v21 = *(v9 + 16);
    *v13 = *v9;
    *(v13 + 16) = v21;
    v16 = a1;
    if (v9 == a1)
    {
      goto LABEL_14;
    }

    v22 = v14;
    while (1)
    {
      v24 = a1 + v22;
      v25 = *(a1 + v22 + 32);
      if (v17 >= v25)
      {
        if (v25 < v17)
        {
          goto LABEL_36;
        }

        v26 = *(v24 + 40);
        if (v18 >= v26)
        {
          if (v26 < v18)
          {
            goto LABEL_36;
          }

          v27 = *(v24 + 56);
          if (v19 >= v27)
          {
            break;
          }
        }
      }

LABEL_20:
      v9 -= 32;
      v23 = *(a1 + v22 + 48);
      *(v24 + 64) = *(a1 + v22 + 32);
      *(v24 + 80) = v23;
      v22 -= 32;
      if (v22 == -64)
      {
        v16 = a1;
        goto LABEL_14;
      }
    }

    if (v27 >= v19)
    {
      if (v20 >= *(v24 + 48))
      {
        v16 = a1 + v22 + 64;
        goto LABEL_14;
      }

      goto LABEL_20;
    }

LABEL_36:
    v16 = v9;
LABEL_14:
    *v16 = v17;
    *(v16 + 8) = v18;
    *(v16 + 16) = v20;
    *(v16 + 24) = v19;
    if (++v15 != 8)
    {
LABEL_15:
      v9 = v13;
      v14 += 32;
      v13 += 32;
      if (v13 == a2)
      {
        goto LABEL_39;
      }

      continue;
    }

    break;
  }

  v32 = 0;
  v12 = v13 + 32 == a2;
  return (v32 | v12) & 1;
}

double std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::anonymous namespace::PartitionIndicesAroundRandomTimeWindow(std::vector<int> const&,operations_research::sat::CpModelProto const&,operations_research::sat::CpSolverResponse const&,double,absl::lts_20240722::BitGenRef)::$_0 &,operations_research::sat::anonymous namespace::StartEndIndex *,false>(uint64_t a1, __int128 *a2, uint64_t a3, char a4, __n128 a5)
{
LABEL_1:
  v9 = a2 - 2;
  i = a1;
  while (1)
  {
    a1 = i;
    v11 = (a2 - i) >> 5;
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3:

          return a5.n128_f64[0];
        case 4:
          v72 = *(a2 - 3);
          v73 = *(i + 72);
          if (v72 < v73 || v73 >= v72 && ((a5.n128_u64[0] = *(a2 - 1), v156 = *(i + 88), a5.n128_f64[0] < v156) || v156 >= a5.n128_f64[0] && *(a2 - 4) < *(i + 80)))
          {
            v173 = *(i + 64);
            v181 = *(i + 80);
            v74 = *(a2 - 1);
            *(i + 64) = *v9;
            *(i + 80) = v74;
            a5.n128_u64[0] = v173;
            *v9 = v173;
            *(a2 - 1) = v181;
            v75 = *(i + 72);
            v76 = *(i + 40);
            if (v75 < v76 || v76 >= v75 && ((a5.n128_u64[0] = *(i + 88), v166 = *(i + 56), a5.n128_f64[0] < v166) || v166 >= a5.n128_f64[0] && *(i + 80) < *(i + 48)))
            {
              v174 = *(i + 32);
              v182 = *(i + 48);
              v77 = *(i + 80);
              *(i + 32) = *(i + 64);
              *(i + 48) = v77;
              a5.n128_u64[0] = v174;
              *(i + 64) = v174;
              *(i + 80) = v182;
              v78 = *(i + 40);
              v79 = *(i + 8);
              if (v78 < v79 || v79 >= v78 && ((a5.n128_u64[0] = *(i + 56), v167 = *(i + 24), a5.n128_f64[0] < v167) || v167 >= a5.n128_f64[0] && *(i + 48) < *(i + 16)))
              {
                v175 = *i;
                v183 = *(i + 16);
                v80 = *(i + 48);
                *i = *(i + 32);
                *(i + 16) = v80;
                a5.n128_u64[0] = v175;
                *(i + 32) = v175;
                *(i + 48) = v183;
              }
            }
          }

          return a5.n128_f64[0];
        case 5:

          return a5.n128_f64[0];
      }
    }

    else
    {
      if (v11 < 2)
      {
        return a5.n128_f64[0];
      }

      if (v11 == 2)
      {
        v69 = *(a2 - 3);
        v70 = *(i + 8);
        if (v69 < v70 || v70 >= v69 && ((a5.n128_u64[0] = *(a2 - 1), v155 = *(i + 24), a5.n128_f64[0] < v155) || v155 >= a5.n128_f64[0] && *(a2 - 4) < *(i + 16)))
        {
          v172 = *i;
          v180 = *(i + 16);
          v71 = *(a2 - 1);
          *i = *v9;
          *(i + 16) = v71;
          a5.n128_u64[0] = v172;
          *v9 = v172;
          *(a2 - 1) = v180;
        }

        return a5.n128_f64[0];
      }
    }

    if (v11 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (i == a2)
      {
        return a5.n128_f64[0];
      }

      v99 = (v11 - 2) >> 1;
      v100 = v99;
      do
      {
        v102 = v100;
        v103 = 32 * v100;
        if (v99 >= (32 * v100) >> 5)
        {
          v104 = (v103 >> 4) | 1;
          v101 = (i + 32 * v104);
          if ((v103 >> 4) + 2 < v11)
          {
            v105 = *(v101 + 1);
            v106 = *(v101 + 5);
            if (v105 < v106 || v106 >= v105 && ((v125 = *(v101 + 3), v126 = *(v101 + 7), v125 < v126) || v126 >= v125 && *(v101 + 4) < *(v101 + 12)))
            {
              v101 += 2;
              v104 = (v103 >> 4) + 2;
            }
          }

          v107 = i + v103;
          v108 = *(v101 + 1);
          v109 = *(i + v103 + 8);
          if (v108 >= v109)
          {
            v110 = *(v107 + 24);
            if (v109 < v108 || (v124 = *(v101 + 3), v124 >= v110) && (v110 < v124 || *(v101 + 4) >= *(v107 + 16)))
            {
              v111 = *v107;
              v112 = *(v107 + 16);
              v113 = v101[1];
              *v107 = *v101;
              *(v107 + 16) = v113;
              if (v99 >= v104)
              {
                while (1)
                {
                  v115 = v101;
                  v116 = 2 * v104;
                  v104 = (2 * v104) | 1;
                  v101 = (i + 32 * v104);
                  v117 = v116 + 2;
                  if (v117 < v11)
                  {
                    v118 = *(v101 + 1);
                    v119 = *(v101 + 5);
                    if (v118 < v119 || v119 >= v118 && ((v122 = *(v101 + 3), v123 = *(v101 + 7), v122 < v123) || v123 >= v122 && *(v101 + 4) < *(v101 + 12)))
                    {
                      v101 += 2;
                      v104 = v117;
                    }
                  }

                  v120 = *(v101 + 1);
                  if (v120 < v109)
                  {
                    break;
                  }

                  if (v109 >= v120)
                  {
                    v121 = *(v101 + 3);
                    if (v121 < v110 || v110 >= v121 && *(v101 + 4) < v112)
                    {
                      break;
                    }
                  }

                  v114 = v101[1];
                  *v115 = *v101;
                  v115[1] = v114;
                  if (v99 < v104)
                  {
                    goto LABEL_171;
                  }
                }

                v101 = v115;
              }

LABEL_171:
              *v101 = v111;
              *(v101 + 1) = v109;
              *(v101 + 2) = v112;
              *(v101 + 3) = v110;
            }
          }
        }

        v100 = v102 - 1;
      }

      while (v102);
      while (2)
      {
        v128 = 0;
        v176 = *i;
        v184 = *(i + 16);
        v129 = i;
        do
        {
          v131 = v129;
          v132 = v129 + 32 * v128;
          v129 = v132 + 32;
          v133 = 2 * v128;
          v128 = (2 * v128) | 1;
          v134 = v133 + 2;
          if (v134 < v11)
          {
            v135 = *(v132 + 40);
            v136 = *(v132 + 72);
            if (v135 < v136 || v136 >= v135 && ((v137 = *(v132 + 56), v138 = *(v132 + 88), v137 < v138) || v138 >= v137 && *(v132 + 48) < *(v132 + 80)))
            {
              v129 = v132 + 64;
              v128 = v134;
            }
          }

          v130 = *(v129 + 16);
          *v131 = *v129;
          v131[1] = v130;
        }

        while (v128 <= ((v11 - 2) >> 1));
        a2 -= 2;
        if (v129 == a2)
        {
          a5.n128_u64[0] = v176;
          *v129 = v176;
          *(v129 + 16) = v184;
        }

        else
        {
          v139 = a2[1];
          *v129 = *a2;
          *(v129 + 16) = v139;
          a5.n128_u64[0] = v176;
          *a2 = v176;
          a2[1] = v184;
          v140 = (v129 - i + 32) >> 5;
          v141 = v140 - 2;
          if (v140 >= 2)
          {
            v142 = v141 >> 1;
            v143 = (i + 32 * (v141 >> 1));
            v144 = *(v143 + 1);
            v145 = *(v129 + 8);
            if (v144 < v145)
            {
              a5.n128_u64[0] = *(v129 + 24);
              goto LABEL_221;
            }

            if (v145 >= v144)
            {
              v154 = *(v143 + 3);
              a5.n128_u64[0] = *(v129 + 24);
              if (v154 < a5.n128_f64[0] || a5.n128_f64[0] >= v154 && *(v143 + 4) < *(v129 + 16))
              {
LABEL_221:
                v146 = *v129;
                v147 = *(v129 + 16);
                v148 = v143[1];
                *v129 = *v143;
                *(v129 + 16) = v148;
                if (v141 >= 2)
                {
                  while (1)
                  {
                    v150 = v143;
                    v151 = v142 - 1;
                    v142 = (v142 - 1) >> 1;
                    v143 = (i + 32 * v142);
                    v152 = *(v143 + 1);
                    if (v152 >= v145)
                    {
                      if (v145 < v152)
                      {
                        break;
                      }

                      v153 = *(v143 + 3);
                      if (v153 >= a5.n128_f64[0] && (a5.n128_f64[0] < v153 || *(v143 + 4) >= v147))
                      {
                        break;
                      }
                    }

                    v149 = v143[1];
                    *v150 = *v143;
                    v150[1] = v149;
                    if (v151 <= 1)
                    {
                      goto LABEL_230;
                    }
                  }

                  v143 = v150;
                }

LABEL_230:
                *v143 = v146;
                *(v143 + 1) = v145;
                *(v143 + 2) = v147;
                *(v143 + 3) = a5.n128_u64[0];
              }
            }
          }
        }

        if (v11-- <= 2)
        {
          return a5.n128_f64[0];
        }

        continue;
      }
    }

    v12 = v11 >> 1;
    v13 = i + 32 * (v11 >> 1);
    if (v11 < 0x81)
    {
      --a3;
      if ((a4 & 1) == 0)
      {
        goto LABEL_13;
      }

LABEL_22:
      v20 = *(a1 + 8);
LABEL_23:
      v27 = 0;
      v28 = *a1;
      a5.n128_u64[0] = *(a1 + 16);
      v29 = *(a1 + 24);
      while (1)
      {
        v30 = a1 + v27;
        v31 = *(a1 + v27 + 40);
        if (v31 >= v20)
        {
          if (v20 < v31)
          {
            break;
          }

          v32 = *(v30 + 56);
          if (v32 >= v29 && (v29 < v32 || *(v30 + 48) >= a5.n128_i32[0]))
          {
            break;
          }
        }

        v27 += 32;
      }

      v33 = a1 + v27 + 32;
      if (v27)
      {
        v34 = *(a2 - 3);
        v35 = (a2 - 1);
        v36 = a2 - 2;
        if (v34 >= v20)
        {
          do
          {
            if (v20 >= v34)
            {
              v37 = v35[1];
              if (v37 < v29)
              {
                goto LABEL_57;
              }

              if (v29 >= v37 && *v35 < a5.n128_i32[0])
              {
                break;
              }
            }

            v36 -= 2;
            v34 = *(v35 - 5);
            v35 -= 4;
          }

          while (v34 >= v20);
LABEL_38:
          v36 = (v35 - 2);
        }
      }

      else
      {
        v36 = a2;
        if (v33 < a2)
        {
          v38 = *(a2 - 3);
          v36 = a2 - 2;
          if (v38 >= v20)
          {
            v35 = (a2 - 1);
            v36 = a2 - 2;
            while (1)
            {
              v39 = (v35 - 2);
              if (v20 < v38)
              {
                goto LABEL_42;
              }

              v40 = v35[1];
              if (v40 < v29)
              {
                break;
              }

              if (v29 < v40)
              {
LABEL_42:
                if (v33 >= v39)
                {
                  v36 = (v35 - 2);
                  break;
                }
              }

              else if (v33 >= v39 || *v35 < a5.n128_i32[0])
              {
                break;
              }

              v36 -= 2;
              v38 = *(v35 - 5);
              v35 -= 4;
              if (v38 < v20)
              {
                goto LABEL_38;
              }
            }
          }
        }
      }

LABEL_57:
      i = v33;
      if (v33 < v36)
      {
        v43 = v36;
        do
        {
          v170 = *i;
          v178 = *(i + 16);
          v45 = v43[1];
          *i = *v43;
          *(i + 16) = v45;
          *v43 = v170;
          v43[1] = v178;
          do
          {
            do
            {
              i += 32;
              v46 = *(i + 8);
            }

            while (v46 < v20);
            if (v20 < v46)
            {
              break;
            }

            v47 = *(i + 24);
          }

          while (v47 < v29 || v29 >= v47 && *(i + 16) < a5.n128_i32[0]);
          v44 = v43 - 2;
          v48 = *(v43 - 3);
          if (v48 >= v20)
          {
            v49 = (v43 - 1);
            while (1)
            {
              if (v20 >= v48)
              {
                v50 = v49[1];
                if (v50 < v29)
                {
LABEL_59:
                  v44 = (v49 - 2);
                  break;
                }

                if (v29 >= v50 && *v49 < a5.n128_i32[0])
                {
                  break;
                }
              }

              v44 -= 2;
              v48 = *(v49 - 5);
              v49 -= 4;
              if (v48 < v20)
              {
                goto LABEL_59;
              }
            }
          }

          v43 = v44;
        }

        while (i < v44);
      }

      if (i - 32 != a1)
      {
        v51 = *(i - 16);
        *a1 = *(i - 32);
        *(a1 + 16) = v51;
      }

      *(i - 32) = v28;
      *(i - 24) = v20;
      *(i - 16) = a5.n128_u64[0];
      *(i - 8) = v29;
      if (v33 < v36)
      {
        goto LABEL_80;
      }

      {
        a2 = (i - 32);
        if (started)
        {
          return a5.n128_f64[0];
        }

        goto LABEL_1;
      }

      if ((started & 1) == 0)
      {
LABEL_80:
        a4 = 0;
      }
    }

    else
    {
      v15 = 32 * v12;
      v16 = (32 * v12 + a1 - 32);
      v169 = *a1;
      v177 = *(a1 + 16);
      a5 = *(v13 + 16);
      *a1 = *v13;
      *(a1 + 16) = a5;
      a5.n128_u64[1] = *(&v169 + 1);
      *v13 = v169;
      *(v13 + 16) = v177;
      --a3;
      if (a4)
      {
        goto LABEL_22;
      }

LABEL_13:
      v19 = *(a1 - 24);
      v20 = *(a1 + 8);
      if (v19 < v20)
      {
        goto LABEL_23;
      }

      a5.n128_u64[0] = *(a1 + 24);
      if (v20 >= v19)
      {
        v21 = *(a1 - 8);
        if (v21 < a5.n128_f64[0] || a5.n128_f64[0] >= v21 && *(a1 - 16) < *(a1 + 16))
        {
          goto LABEL_23;
        }
      }

      v22 = *a1;
      v23 = *(a1 + 16);
      v24 = *(a2 - 3);
      if (v20 < v24 || v24 >= v20 && ((v68 = *(a2 - 1), a5.n128_f64[0] < v68) || v68 >= a5.n128_f64[0] && v23 < *(a2 - 4)))
      {
        i = a1 + 32;
        v25 = *(a1 + 40);
        if (v20 >= *&v25)
        {
          v26 = (a1 + 72);
          do
          {
            if (*&v25 >= v20)
            {
              v42 = *(v26 - 2);
              if (a5.n128_f64[0] < v42)
              {
                goto LABEL_90;
              }

              if (v42 >= a5.n128_f64[0] && v23 < *(v26 - 6))
              {
                break;
              }
            }

            i += 32;
            v41 = *v26;
            v26 += 4;
            v25 = v41;
          }

          while (v20 >= *&v41);
          i = (v26 - 5);
        }
      }

      else
      {
        for (i = a1 + 32; i < a2; i += 32)
        {
          v54 = *(i + 8);
          if (v20 < v54)
          {
            break;
          }

          if (v54 >= v20)
          {
            v55 = *(i + 24);
            if (a5.n128_f64[0] < v55 || v55 >= a5.n128_f64[0] && v23 < *(i + 16))
            {
              break;
            }
          }
        }
      }

LABEL_90:
      v56 = a2;
      if (i < a2)
      {
        for (j = (a2 - 1); ; j -= 4)
        {
          if (v20 >= v24)
          {
            if (v24 < v20)
            {
              break;
            }

            v58 = j[1];
            if (a5.n128_f64[0] >= v58 && (v58 < a5.n128_f64[0] || v23 >= *j))
            {
              break;
            }
          }

          v24 = *(j - 5);
        }

        v56 = (j - 2);
      }

      if (i < v56)
      {
LABEL_102:
        v171 = *i;
        v179 = *(i + 16);
        v59 = v56[1];
        *i = *v56;
        *(i + 16) = v59;
        *v56 = v171;
        v56[1] = v179;
        v60 = i + 32;
        v61 = *(i + 40);
        if (v20 < *&v61)
        {
          i += 32;
          goto LABEL_112;
        }

        v62 = (i + 72);
        while (1)
        {
          if (*&v61 >= v20)
          {
            v64 = *(v62 - 2);
            if (a5.n128_f64[0] < v64)
            {
LABEL_111:
              i = (v62 - 5);
              do
              {
                do
                {
LABEL_112:
                  v56 -= 2;
                  v65 = *(v56 + 1);
                }

                while (v20 < v65);
                if (v65 < v20)
                {
                  break;
                }

                v66 = *(v56 + 3);
              }

              while (a5.n128_f64[0] < v66 || v66 >= a5.n128_f64[0] && v23 < *(v56 + 4));
              if (i >= v56)
              {
                break;
              }

              goto LABEL_102;
            }

            if (v64 >= a5.n128_f64[0] && v23 < *(v62 - 6))
            {
              i = v60;
              goto LABEL_112;
            }
          }

          v60 += 32;
          v63 = *v62;
          v62 += 4;
          v61 = v63;
          if (v20 < *&v63)
          {
            goto LABEL_111;
          }
        }
      }

      if (i - 32 != a1)
      {
        v67 = *(i - 16);
        *a1 = *(i - 32);
        *(a1 + 16) = v67;
      }

      a4 = 0;
      *(i - 32) = v22;
      *(i - 24) = v20;
      *(i - 16) = v23;
      *(i - 8) = a5.n128_u64[0];
    }
  }

  v81 = (i + 32);
  v83 = i == a2 || v81 == a2;
  if (a4)
  {
    if (v83)
    {
      return a5.n128_f64[0];
    }

    v84 = 0;
    v85 = i;
LABEL_151:
    v87 = v85;
    v85 = v81;
    v88 = *(v87 + 5);
    v89 = *(v87 + 1);
    if (v88 >= v89)
    {
      if (v89 < v88)
      {
        goto LABEL_150;
      }

      a5.n128_u64[0] = *(v87 + 7);
      v98 = *(v87 + 3);
      if (a5.n128_f64[0] >= v98 && (v98 < a5.n128_f64[0] || *(v87 + 12) >= *(v87 + 4)))
      {
        goto LABEL_150;
      }
    }

    else
    {
      a5.n128_u64[0] = *(v87 + 7);
    }

    v90 = *(v87 + 4);
    v91 = *(v87 + 6);
    v92 = v87[1];
    *v85 = *v87;
    v85[1] = v92;
    v86 = i;
    if (v87 == i)
    {
      goto LABEL_149;
    }

    v93 = v84;
    while (1)
    {
      v95 = (i + v93);
      v96 = *(i + v93 - 24);
      if (v88 >= v96)
      {
        if (v96 < v88)
        {
          goto LABEL_161;
        }

        v97 = *(v95 - 1);
        if (a5.n128_f64[0] >= v97)
        {
          if (v97 < a5.n128_f64[0])
          {
            v86 = (i + v93);
LABEL_149:
            *v86 = v90;
            v86[1] = v88;
            v86[2] = v91;
            v86[3] = a5.n128_u64[0];
LABEL_150:
            v81 = v85 + 2;
            v84 += 32;
            if (v85 + 2 == a2)
            {
              return a5.n128_f64[0];
            }

            goto LABEL_151;
          }

          if (v91 >= *(v95 - 4))
          {
LABEL_161:
            v86 = v87;
            goto LABEL_149;
          }
        }
      }

      v87 -= 2;
      v94 = *(v95 - 1);
      *v95 = *(v95 - 2);
      *(v95 + 1) = v94;
      v93 -= 32;
      if (!v93)
      {
        v86 = i;
        goto LABEL_149;
      }
    }
  }

  if (!v83)
  {
    while (1)
    {
      v157 = a1;
      a1 = v81;
      v158 = *(v157 + 40);
      v159 = *(v157 + 8);
      if (v158 < v159)
      {
        break;
      }

      if (v159 >= v158)
      {
        a5.n128_u64[0] = *(v157 + 56);
        v165 = *(v157 + 24);
        if (a5.n128_f64[0] < v165 || v165 >= a5.n128_f64[0] && *(v157 + 48) < *(v157 + 16))
        {
          goto LABEL_252;
        }
      }

LABEL_249:
      v81 = (a1 + 32);
      if ((a1 + 32) == a2)
      {
        return a5.n128_f64[0];
      }
    }

    a5.n128_u64[0] = *(v157 + 56);
LABEL_252:
    v160 = *v81;
    v161 = *(v157 + 48);
    while (1)
    {
      v162 = *(v81 - 1);
      *v81 = *(v81 - 2);
      v81[1] = v162;
      v163 = *(v81 - 7);
      if (v158 >= v163)
      {
        if (v163 < v158)
        {
          break;
        }

        v164 = *(v81 - 5);
        if (a5.n128_f64[0] >= v164 && (v164 < a5.n128_f64[0] || v161 >= *(v81 - 12)))
        {
          break;
        }
      }

      v81 -= 2;
    }

    *(v81 - 4) = v160;
    *(v81 - 3) = v158;
    *(v81 - 2) = v161;
    *(v81 - 1) = a5.n128_u64[0];
    goto LABEL_249;
  }

  return a5.n128_f64[0];
}