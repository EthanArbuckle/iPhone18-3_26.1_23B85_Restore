void sub_23CACF1C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, char a12, uint64_t a13)
{
  if (a11 >= 2)
  {
    v13 = a1;
    operator delete((a13 - (a12 & 1) - 8));
    a1 = v13;
  }

  _Unwind_Resume(a1);
}

int **operations_research::sat::SatPostsolver::Clause@<X0>(operations_research::sat::SatPostsolver *this@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v6 = *(this + 1);
  v7 = *(v6 + 4 * a2);
  v8 = a2 + 1;
  if (v8 >= (*(this + 2) - v6) >> 2)
  {
    v9 = *(this + 18);
    v10 = *(this + 8);
    v11 = *(this + 5);
    v12 = *(this + 6);
    v13 = (v11 + 8 * (v10 >> 10));
    if (v12 != v11)
    {
LABEL_3:
      v14 = *v13 + 4 * (v10 & 0x3FF);
      if (v7)
      {
        goto LABEL_4;
      }

LABEL_9:
      v16 = v13;
      if (v12 == v11)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v9 = *(v6 + 4 * v8);
    v10 = *(this + 8);
    v11 = *(this + 5);
    v12 = *(this + 6);
    v13 = (v11 + 8 * (v10 >> 10));
    if (v12 != v11)
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_4:
  v15 = v7 + ((v14 - *v13) >> 2);
  if (v15 < 1)
  {
    v18 = 1023 - v15;
    v16 = &v13[-8 * (v18 >> 10)];
    v14 = *v16 + 4 * (~v18 & 0x3FF);
    if (v12 == v11)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v16 = &v13[8 * (v15 >> 10)];
    v14 = *v16 + 4 * (v15 & 0x3FF);
    if (v12 == v11)
    {
LABEL_13:
      v17 = 0;
      if (!v9)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }
  }

LABEL_10:
  v17 = *v13 + 4 * (v10 & 0x3FF);
  if (!v9)
  {
LABEL_16:
    result = std::vector<operations_research::sat::Literal>::vector[abi:ne200100]<std::__deque_iterator<operations_research::sat::Literal,operations_research::sat::Literal const*,operations_research::sat::Literal const&,operations_research::sat::Literal const* const*,long,1024l>,0>(a3, v16, v14, v13, v17);
    v21 = *result;
    v22 = result[1];
    v23 = v22 - *result;
    if (v22 == *result)
    {
      return result;
    }

    goto LABEL_17;
  }

LABEL_14:
  v19 = ((v17 - *v13) >> 2) + v9;
  if (v19 >= 1)
  {
    v13 += 8 * (v19 >> 10);
    v17 = *v13 + 4 * (v19 & 0x3FF);
    goto LABEL_16;
  }

  result = std::vector<operations_research::sat::Literal>::vector[abi:ne200100]<std::__deque_iterator<operations_research::sat::Literal,operations_research::sat::Literal const*,operations_research::sat::Literal const&,operations_research::sat::Literal const* const*,long,1024l>,0>(a3, v16, v14, &v13[-8 * ((1023 - v19) >> 10)], *&v13[-8 * ((1023 - v19) >> 10)] + 4 * (~(1023 - v19) & 0x3FF));
  v21 = *result;
  v29 = result[1];
  v23 = v29 - *result;
  if (v29 == *result)
  {
    return result;
  }

LABEL_17:
  v24 = 0;
  v25 = v23 >> 2;
  v26 = *(*(this + 10) + 4 * a2);
  v27 = 1;
  while (v21[v24] != v26)
  {
    v24 = v27++;
    if (v25 <= v24)
    {
      return result;
    }
  }

  v28 = *v21;
  *v21 = v26;
  v21[v24] = v28;
  return result;
}

void *std::vector<operations_research::sat::Literal>::vector[abi:ne200100]<std::__deque_iterator<operations_research::sat::Literal,operations_research::sat::Literal const*,operations_research::sat::Literal const&,operations_research::sat::Literal const* const*,long,1024l>,0>(void *result, char *a2, uint64_t a3, char *a4, uint64_t a5)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a5 != a3)
  {
    v5 = ((a5 - *a4) >> 2) + ((a4 - a2) << 7);
    v6 = (a3 - *a2) >> 2;
    if (v5 != v6)
    {
      if (!((v5 - v6) >> 62))
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }
  }

  return result;
}

void sub_23CACF4B0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<long long,int>>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 4)
  {
    if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0)
    {
      v14 = v4 + 16 * a2;
      if (((a2 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_36;
      }

      v15 = ((a2 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v16 = v4 + 16 * (v15 & 0x1FFFFFFFFFFFFFFELL);
      v17 = v4 + 16;
      v18 = v15 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v17 - 16) = 0;
        *v17 = 0;
        *(v17 - 8) = 0;
        *(v17 + 8) = 0;
        v17 += 32;
        v18 -= 2;
      }

      while (v18);
      v4 = v16;
      if (v15 != (v15 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_36:
        do
        {
          *v4 = 0;
          *(v4 + 8) = 0;
          v4 += 16;
        }

        while (v4 != v14);
      }

      v4 = v14;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = (v4 - *a1) >> 4;
    v6 = v5 + a2;
    if ((v5 + a2) >> 60)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v7 = v3 - *a1;
    if (v7 >> 3 > v6)
    {
      v6 = v7 >> 3;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF0)
    {
      v8 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (!(v8 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v19 = 16 * v5;
    if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = v19 + 16 * a2;
      v10 = 16 * v5;
      if (((a2 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_37;
      }

      v11 = ((a2 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = v19 + 16 * (v11 & 0x1FFFFFFFFFFFFFFELL);
      v12 = v19 + 16;
      v13 = v11 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v12 - 16) = 0;
        *v12 = 0;
        *(v12 - 8) = 0;
        *(v12 + 8) = 0;
        v12 += 32;
        v13 -= 2;
      }

      while (v13);
      if (v11 != (v11 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_37:
        do
        {
          *v10 = 0;
          *(v10 + 8) = 0;
          v10 += 16;
        }

        while (v10 != v9);
      }
    }

    else
    {
      v9 = 16 * v5;
    }

    v20 = *a1;
    v21 = *(a1 + 8) - *a1;
    v22 = v19 - v21;
    memcpy((v19 - v21), *a1, v21);
    *a1 = v22;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v20)
    {

      operator delete(v20);
    }
  }
}

__n128 std::__function::__func<operations_research::sat::CpModelPresolver::ProcessSetPPC(void)::$_0,std::allocator<operations_research::sat::CpModelPresolver::ProcessSetPPC(void)::$_0>,void ()(int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F3E0B0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<operations_research::sat::CpModelPresolver::ProcessSetPPC(void)::$_0,std::allocator<operations_research::sat::CpModelPresolver::ProcessSetPPC(void)::$_0>,void ()(int,int)>::operator()(uint64_t a1, int *a2, int *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a1 + 16);
  ++**(a1 + 8);
  v25 = 0;
  v24 = 0;
  v7 = *(*v6 + 4 * v4);
  v8 = *(*v6 + 4 * v5);
  *(*(a1 + 24) + 40) += *(*(*(a1 + 32) + 24) + 4 * v4) + *(*(*(a1 + 32) + 24) + 4 * v5);
  v9 = *(a1 + 40);
  if (operations_research::sat::CpModelPresolver::ProcessSetPPCSubset(v9, v7, v8, *(a1 + 48), &v25 + 1, &v25, &v24))
  {
    if (HIBYTE(v25) == 1)
    {
      v16 = **(v9 + 8);
      v18 = *(v16 + 48);
      v17 = (v16 + 48);
      v19 = v18 + 8 * v7 + 7;
      if (v18)
      {
        v17 = v19;
      }

      operations_research::sat::ConstraintProto::Clear(*v17);
      operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(v9 + 8), v7);
      *(*(a1 + 24) + 57) = 1;
      if (v25 != 1)
      {
LABEL_4:
        if (v24 != 1)
        {
          return;
        }

LABEL_18:
        operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(v9 + 8), v8);
        *(*(a1 + 24) + 58) = 1;
        return;
      }
    }

    else if (v25 != 1)
    {
      goto LABEL_4;
    }

    v20 = **(v9 + 8);
    v22 = *(v20 + 48);
    v21 = (v20 + 48);
    v23 = v22 + 8 * v8 + 7;
    if (v22)
    {
      v21 = v23;
    }

    operations_research::sat::ConstraintProto::Clear(*v21);
    operations_research::sat::PresolveContext::UpdateConstraintVariableUsage(*(v9 + 8), v8);
    *(*(a1 + 24) + 58) = 1;
    if (v24 == 1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v10 = *(a1 + 24);
    *(v10 + 56) = 1;
    *(v10 + 72) = *(v10 + 64);
    v12 = *(v10 + 88);
    v11 = *(v10 + 96);
    if (v11 != v12)
    {
      v13 = *(v10 + 96);
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

      while (v13 != v12);
    }

    *(v10 + 96) = v12;
    *(v10 + 144) = 0;
  }
}

uint64_t std::__function::__func<operations_research::sat::CpModelPresolver::ProcessSetPPC(void)::$_0,std::allocator<operations_research::sat::CpModelPresolver::ProcessSetPPC(void)::$_0>,void ()(int,int)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat16CpModelPresolver13ProcessSetPPCEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat16CpModelPresolver13ProcessSetPPCEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat16CpModelPresolver13ProcessSetPPCEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat16CpModelPresolver13ProcessSetPPCEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

unsigned __int8 *absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<long long,std::vector<int>,std::less<long long>,std::allocator<std::pair<long long const,std::vector<int>>>,256,false>>::internal_emplace<std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, void **a5)
{
  i = a2;
  v26 = a3;
  v7 = a2[11];
  if (a2[11])
  {
    if (a2[10] != v7)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v8 = *&a2[8 * a3 + 240];
  for (i = v8; !v8[11]; i = v8)
  {
    v8 = *&v8[8 * v8[10] + 240];
  }

  LODWORD(v26) = v8[10];
  v7 = v8[11];
  if (!v8[11])
  {
    v7 = 7;
  }

  if (v8[10] == v7)
  {
LABEL_9:
    if (v7 <= 6)
    {
      operator new();
    }

    absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<long long,std::vector<int>,std::less<long long>,std::allocator<std::pair<long long const,std::vector<int>>>,256,false>>::rebalance_or_split(a1, &i);
  }

LABEL_12:
  v9 = i;
  v10 = v26;
  v11 = v26;
  v12 = i[10];
  if (v12 > v26)
  {
    v13 = (v12 - v26);
    v10 = v26;
    if ((v13 & 0x7FFFFFFFFFFFFFFLL) != 0)
    {
      v14 = &i[32 * v26 + 16 + 32 * v13];
      v15 = 32 * v26 - 32 * v12;
      v16 = v14;
      do
      {
        v17 = *(v16 - 4);
        v16 -= 32;
        *(v14 + 8) = *(v14 - 24);
        *(v14 + 3) = *(v14 - 1);
        *(v14 - 3) = 0;
        *(v14 - 2) = 0;
        *(v14 - 1) = 0;
        *v14 = v17;
        v14 = v16;
        v15 += 32;
      }

      while (v15);
      LODWORD(v12) = v9[10];
    }
  }

  v18 = &v9[32 * v10];
  *(v18 + 2) = **a5;
  *(v18 + 3) = 0;
  *(v18 + 4) = 0;
  *(v18 + 5) = 0;
  v19 = v12 + 1;
  v9[10] = v12 + 1;
  if (!v9[11])
  {
    v20 = v11 + 1;
    if (v20 < v19)
    {
      v21 = v9 + 240;
      do
      {
        v22 = *&v21[8 * (v19 - 1)];
        *&v21[8 * v19] = v22;
        *(v22 + 8) = v19;
      }

      while (v20 < --v19);
    }
  }

  ++*(a1 + 16);
  return i;
}

uint64_t absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<long long,std::vector<int>,std::less<long long>,std::allocator<std::pair<long long const,std::vector<int>>>,256,false>>::rebalance_or_split(unsigned __int8 **a1, unsigned __int8 **a2)
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
    v6 = *(v4 + 8 * (v5 - 1) + 240);
    v7 = v6[10];
    if (v7 <= 6)
    {
      v8 = *(a2 + 8);
      v9 = (7 - v7) >> (v8 < 7) <= 1u ? 1 : (7 - v7) >> (v8 < 7);
      v10 = (v9 + v7);
      if (v8 >= v9 || v10 <= 6)
      {
        result = absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<long long,std::vector<int>,std::less<long long>,std::allocator<std::pair<long long const,std::vector<int>>>,256,false>>::rebalance_right_to_left(*(v4 + 8 * (v5 - 1) + 240), v9, v3);
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
  if (v5 >= v14 || (v6 = *(v4 + 8 * (v5 + 1) + 240), v15 = v6[10], v15 > 6) || ((v16 = *(a2 + 2), (7 - v15) >> (v16 > 0) <= 1u) ? (v17 = 1) : (v17 = (7 - v15) >> (v16 > 0)), (v18 = (v17 + v15), (v3[10] - v17) < v16) ? (v19 = v18 > 6) : (v19 = 0), v19))
  {
    if (v14 == 7)
    {
      v25 = v4;
      v26 = v5;
      absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<long long,std::vector<int>,std::less<long long>,std::allocator<std::pair<long long const,std::vector<int>>>,256,false>>::rebalance_or_split(a1, &v25);
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

  result = absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<long long,std::vector<int>,std::less<long long>,std::allocator<std::pair<long long const,std::vector<int>>>,256,false>>::rebalance_left_to_right(v3, v17, *(v4 + 8 * (v5 + 1) + 240));
  v20 = *(a2 + 2);
  v21 = (*a2)[10];
  if (v20 > v21)
  {
    v24 = v20 + ~v21;
    goto LABEL_30;
  }

  return result;
}

uint64_t absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<long long,std::vector<int>,std::less<long long>,std::allocator<std::pair<long long const,std::vector<int>>>,256,false>>::rebalance_right_to_left(uint64_t result, unsigned int a2, uint64_t a3)
{
  v3 = (result + 32 * *(result + 10));
  v4 = *result + 32 * *(result + 8);
  v3[2] = *(v4 + 16);
  v3[3] = 0;
  v3[4] = 0;
  v3[5] = 0;
  *(v3 + 3) = *(v4 + 24);
  v3[5] = *(v4 + 40);
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  v5 = (a2 - 1);
  v6 = a3 + 16;
  v7 = a3 + 16 + 32 * v5;
  if ((v5 & 0x7FFFFFFFFFFFFFFLL) != 0)
  {
    v8 = (result + 32 * *(result + 10) + 72);
    do
    {
      *(v8 - 3) = *v6;
      *(v8 - 2) = 0;
      *(v8 - 1) = 0;
      *v8 = 0;
      *(v8 - 1) = *(v6 + 8);
      *v8 = *(v6 + 24);
      v8 += 4;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      v6 += 32;
    }

    while (v6 != v7);
  }

  v9 = (*result + 32 * *(result + 8));
  v9[2] = *v7;
  v9[3] = 0;
  v9[4] = 0;
  v9[5] = 0;
  *(v9 + 3) = *(v7 + 8);
  v9[5] = *(v7 + 24);
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 8) = 0;
  v10 = *(a3 + 10);
  v11 = a2;
  if (((v10 - a2) & 0x7FFFFFFFFFFFFFFLL) != 0)
  {
    v12 = 0;
    v13 = 32 * v10 - 32 * a2;
    v14 = a3 + 32 * a2;
    do
    {
      v15 = (a3 + v12);
      v16 = (v14 + v12);
      v15[2] = *(v14 + v12 + 16);
      v15[3] = 0;
      v15[4] = 0;
      v15[5] = 0;
      *(v15 + 3) = *(v14 + v12 + 24);
      v15[5] = *(v14 + v12 + 40);
      v16[4] = 0;
      v16[5] = 0;
      v16[3] = 0;
      v12 += 32;
    }

    while (v13 != v12);
  }

  if (!*(result + 11))
  {
    if (a2)
    {
      v17 = (a3 + 240);
      v18 = 1;
      do
      {
        v19 = *(result + 10) + v18;
        v20 = *v17++;
        *(result + 240 + 8 * v19) = v20;
        *(v20 + 8) = v19;
        *v20 = result;
        ++v18;
        --v11;
      }

      while (v11);
    }

    if (*(a3 + 10) >= a2)
    {
      v21 = 0;
      v22 = a3 + 240;
      do
      {
        v23 = *(v22 + 8 * (v21 + a2));
        *(v22 + 8 * v21) = v23;
        *(v23 + 8) = v21;
        *v23 = a3;
        ++v21;
      }

      while ((*(a3 + 10) - a2) >= v21);
    }
  }

  *(result + 10) += a2;
  *(a3 + 10) -= a2;
  return result;
}

uint64_t absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<long long,std::vector<int>,std::less<long long>,std::allocator<std::pair<long long const,std::vector<int>>>,256,false>>::rebalance_left_to_right(uint64_t result, unsigned int a2, uint64_t a3)
{
  v3 = (a3 + 16);
  if (*(a3 + 10))
  {
    v4 = 0;
    v5 = 32 * *(a3 + 10);
    v6 = a3 + 32 * a2;
    v7 = a3;
    do
    {
      v8 = (v6 + v5);
      v9 = (v7 + v5);
      *(v8 - 2) = *(v7 + v5 - 16);
      *(v8 - 1) = 0;
      *v8 = 0;
      v8[1] = 0;
      *(v8 - 1) = *(v7 + v5 - 8);
      v8[1] = *(v7 + v5 + 8);
      *(v9 - 1) = 0;
      *v9 = 0;
      v9[1] = 0;
      v6 -= 32;
      v7 -= 32;
      v4 += 32;
    }

    while (v5 != v4);
  }

  v10 = a2 - 1;
  v11 = 32 * v10;
  v12 = &v3[4 * v10];
  v13 = *result + 32 * *(result + 8);
  *v12 = *(v13 + 16);
  v12[1] = 0;
  v12[2] = 0;
  v12[3] = 0;
  *(v12 + 1) = *(v13 + 24);
  v12[3] = *(v13 + 40);
  *(v13 + 24) = 0;
  *(v13 + 32) = 0;
  *(v13 + 40) = 0;
  v14 = *(result + 10);
  v15 = result + 16;
  if ((v10 & 0x7FFFFFFFFFFFFFFLL) != 0)
  {
    v16 = v15 + 32 * (v14 - v10);
    v17 = v16 + v11;
    do
    {
      *v3 = *v16;
      v3[1] = 0;
      v3[2] = 0;
      v3[3] = 0;
      *(v3 + 1) = *(v16 + 8);
      v3[3] = *(v16 + 24);
      *(v16 + 8) = 0;
      *(v16 + 16) = 0;
      *(v16 + 24) = 0;
      v16 += 32;
      v3 += 4;
    }

    while (v16 != v17);
    LODWORD(v14) = *(result + 10);
  }

  v18 = (*result + 32 * *(result + 8));
  v19 = v15 + 32 * (v14 - a2);
  v18[2] = *v19;
  v18[3] = 0;
  v18[4] = 0;
  v18[5] = 0;
  *(v18 + 3) = *(v19 + 8);
  v18[5] = *(v19 + 24);
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 8) = 0;
  if (!*(result + 11))
  {
    if (((*(a3 + 10) + 1) & 0x100) == 0)
    {
      v20 = a3 + 240;
      v21 = (*(a3 + 10) + 1);
      do
      {
        v22 = *(v20 + 8 * (v21 - 1));
        *(v20 + 8 * (v21 - 1 + a2)) = v22;
        *(v22 + 8) = v21 - 1 + a2;
        *v22 = a3;
        --v21;
      }

      while (v21);
    }

    if (a2)
    {
      v23 = 0;
      if ((a2 + 1) <= 2u)
      {
        v24 = 2;
      }

      else
      {
        v24 = (a2 + 1);
      }

      v25 = v24 - 1;
      do
      {
        v26 = *(result + 240 + 8 * (v23 + 1 - a2 + *(result + 10)));
        *(a3 + 8 * v23 + 240) = v26;
        *(v26 + 8) = v23;
        *v26 = a3;
        ++v23;
      }

      while (v25 != v23);
    }
  }

  *(result + 10) -= a2;
  *(a3 + 10) += a2;
  return result;
}

void absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<long long,std::vector<int>,std::less<long long>,std::allocator<std::pair<long long const,std::vector<int>>>,256,false>>::split(unsigned __int8 *a1, int a2, uint64_t a3)
{
  if (a2 == 7)
  {
    LOBYTE(v5) = 0;
  }

  else if (a2)
  {
    v5 = a1[10] >> 1;
  }

  else
  {
    LOBYTE(v5) = a1[10] - 1;
  }

  *(a3 + 10) = v5;
  v6 = a1[10] - v5;
  a1[10] = v6;
  v7 = a1 + 16;
  if (*(a3 + 10))
  {
    v8 = &v7[32 * v6];
    v9 = &v8[32 * *(a3 + 10)];
    v10 = (a3 + 16);
    do
    {
      *v10 = *v8;
      v10[1] = 0;
      v10[2] = 0;
      v10[3] = 0;
      *(v10 + 1) = *(v8 + 8);
      v10[3] = *(v8 + 3);
      *(v8 + 1) = 0;
      *(v8 + 2) = 0;
      *(v8 + 3) = 0;
      v8 += 32;
      v10 += 4;
    }

    while (v8 != v9);
    v6 = a1[10];
  }

  v11 = v6 - 1;
  a1[10] = v6 - 1;
  v12 = *a1;
  v13 = a1[8];
  v14 = &v7[32 * v11];
  v15 = *(*a1 + 10);
  v16 = v15 - v13;
  if (v15 > v13 && (v16 & 0x7FFFFFFFFFFFFFFLL) != 0)
  {
    v17 = v12 + 32 * v13 + 16 + 32 * v16;
    v18 = 32 * v13 - 32 * v15;
    v19 = v17;
    do
    {
      v20 = *(v19 - 32);
      v19 -= 32;
      *(v17 + 8) = *(v17 - 24);
      *(v17 + 24) = *(v17 - 8);
      *(v17 - 24) = 0;
      *(v17 - 16) = 0;
      *(v17 - 8) = 0;
      *v17 = v20;
      v17 = v19;
      v18 += 32;
    }

    while (v18);
  }

  v21 = (v12 + 32 * v13);
  v21[2] = *v14;
  v21[3] = 0;
  v21[4] = 0;
  v21[5] = 0;
  *(v21 + 3) = *(v14 + 8);
  v21[5] = *(v14 + 3);
  *(v14 + 1) = 0;
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  v22 = (*(v12 + 10))++ + 1;
  if (!*(v12 + 11))
  {
    v23 = v13 + 1;
    if (v23 < v22)
    {
      v24 = v12 + 240;
      do
      {
        v25 = *(v24 + 8 * (v22 - 1));
        *(v24 + 8 * v22) = v25;
        *(v25 + 8) = v22;
      }

      while (v23 < --v22);
    }
  }

  v27 = &v7[32 * a1[10]];
  v28 = *(v27 + 1);
  if (v28)
  {
    *(v27 + 2) = v28;
    operator delete(v28);
  }

  *(*a1 + 8 * (a1[8] + 1) + 240) = a3;
  v29 = a1[11];
  if (!a1[11])
  {
    v30 = a1[10];
    do
    {
      v31 = *&a1[8 * ++v30 + 240];
      *(a3 + 240 + 8 * v29) = v31;
      *(v31 + 8) = v29;
      *v31 = a3;
      ++v29;
    }

    while (*(a3 + 10) >= v29);
  }
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,int> *,false>(uint64_t result, unint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 4;
    if (v12 <= 2)
    {
      break;
    }

    switch(v12)
    {
      case 3uLL:

        return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,int> *,0>(v9, (v9 + 16), a2 - 2);
      case 4uLL:
        result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,int> *,0>(v9, (v9 + 16), (v9 + 32));
        v26 = *(a2 - 2);
        v27 = *(v9 + 32);
        if (v26 >= v27)
        {
          if (v27 < v26)
          {
            return result;
          }

          v29 = *(a2 - 2);
          v28 = *(v9 + 40);
          if (v29 >= v28)
          {
            return result;
          }
        }

        else
        {
          v28 = *(v9 + 40);
          v29 = *(a2 - 2);
        }

        *(v9 + 32) = v26;
        *(a2 - 2) = v27;
        *(v9 + 40) = v29;
        *(a2 - 2) = v28;
        v30 = *(v9 + 32);
        v31 = *(v9 + 16);
        if (v30 >= v31)
        {
          if (v31 < v30)
          {
            return result;
          }

          v33 = *(v9 + 40);
          v32 = *(v9 + 24);
          if (v33 >= v32)
          {
            return result;
          }
        }

        else
        {
          v32 = *(v9 + 24);
          v33 = *(v9 + 40);
        }

        *(v9 + 16) = v30;
        *(v9 + 32) = v31;
        *(v9 + 24) = v33;
        *(v9 + 40) = v32;
        v34 = *v9;
        if (v30 >= *v9)
        {
          if (v34 < v30)
          {
            return result;
          }

          v35 = *(v9 + 8);
          if (v33 >= v35)
          {
            return result;
          }
        }

        else
        {
          v35 = *(v9 + 8);
        }

        *v9 = v30;
        *(v9 + 16) = v34;
        *(v9 + 8) = v33;
        *(v9 + 24) = v35;
        return result;
      case 5uLL:

        return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,int> *,0>(v9, v9 + 16, v9 + 32, v9 + 48, a2 - 2);
    }

LABEL_11:
    if (v12 <= 23)
    {
      v36 = (v9 + 16);
      v38 = v9 == a2 || v36 == a2;
      if (a5)
      {
        if (v38)
        {
          return result;
        }

        v39 = 0;
        v40 = v9;
LABEL_56:
        v42 = v40;
        v40 = v36;
        v43 = *(v42 + 16);
        v44 = *v42;
        if (v43 >= *v42)
        {
          if (v44 < v43)
          {
            goto LABEL_55;
          }

          v45 = *(v42 + 24);
          v46 = *(v42 + 8);
          if (v45 >= v46)
          {
            goto LABEL_55;
          }
        }

        else
        {
          v45 = *(v42 + 24);
          v46 = *(v42 + 8);
        }

        *(v42 + 16) = v44;
        *(v40 + 8) = v46;
        v41 = v9;
        if (v42 == v9)
        {
          goto LABEL_54;
        }

        v47 = v39;
        while (1)
        {
          v50 = *(v9 + v47 - 16);
          if (v43 < v50)
          {
            v48 = *(v9 + v47 - 8);
          }

          else
          {
            if (v50 < v43)
            {
              v41 = v9 + v47;
LABEL_54:
              *v41 = v43;
              *(v41 + 8) = v45;
LABEL_55:
              v36 = (v40 + 16);
              v39 += 16;
              if ((v40 + 16) == a2)
              {
                return result;
              }

              goto LABEL_56;
            }

            v48 = *(v9 + v47 - 8);
            if (v45 >= v48)
            {
              v41 = v42;
              goto LABEL_54;
            }
          }

          v42 -= 16;
          v49 = v9 + v47;
          *v49 = v50;
          *(v49 + 8) = v48;
          v47 -= 16;
          if (!v47)
          {
            v41 = v9;
            goto LABEL_54;
          }
        }
      }

      if (v38)
      {
        return result;
      }

      for (i = v9 + 8; ; i += 16)
      {
        v56 = v8;
        v8 = v36;
        v57 = *(v56 + 16);
        v58 = *v56;
        if (v57 < *v56)
        {
          break;
        }

        if (v58 >= v57)
        {
          v59 = *(v56 + 24);
          if (v59 < *(v56 + 8))
          {
            goto LABEL_87;
          }
        }

LABEL_84:
        v36 = (v8 + 16);
        if ((v8 + 16) == a2)
        {
          return result;
        }
      }

      v59 = *(v56 + 24);
LABEL_87:
      for (j = i; ; j -= 16)
      {
        *(j + 8) = v58;
        *(j + 16) = *j;
        v58 = *(j - 24);
        if (v57 >= v58 && (v58 < v57 || v59 >= *(j - 16)))
        {
          break;
        }
      }

      *(j - 8) = v57;
      *j = v59;
      goto LABEL_84;
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {
        v51 = (v12 - 2) >> 1;
        v52 = v51 + 1;
        v53 = (v9 + 16 * v51);
        do
        {
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,int> *>(v9, a3, (a2 - v9) >> 4, v53);
          v53 -= 2;
          --v52;
        }

        while (v52);
        do
        {
          result = std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::pair<unsigned long long,int> *>(v9, a2, a3, v12);
          a2 -= 2;
        }

        while (v12-- > 2);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = v9 + 16 * (v12 >> 1);
    if (v12 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,int> *,0>((v8 + 16 * (v12 >> 1)), v8, a2 - 2);
      if (a5)
      {
        goto LABEL_20;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,int> *,0>(v8, (v8 + 16 * (v12 >> 1)), a2 - 2);
      v15 = 16 * v13;
      v16 = (16 * v13 + v8 - 16);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,int> *,0>((v8 + 16), v16, a2 - 4);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,int> *,0>((v8 + 32), (v8 + 16 + v15), a2 - 6);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,int> *,0>(v16, v14, (v8 + 16 + v15));
      v17 = *v8;
      *v8 = *v14;
      *v14 = v17;
      LODWORD(v17) = *(v8 + 8);
      *(v8 + 8) = *(v14 + 8);
      *(v14 + 8) = v17;
      if (a5)
      {
        goto LABEL_20;
      }
    }

    v18 = *(v8 - 16);
    if (v18 >= *v8 && (*v8 < v18 || *(v8 - 8) >= *(v8 + 8)))
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<unsigned long long,int> *,std::__less<void,void> &>(v8, a2);
      v9 = result;
LABEL_25:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }

LABEL_20:
    v19 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<unsigned long long,int> *,std::__less<void,void> &>(v8, a2);
    if ((v20 & 1) == 0)
    {
      goto LABEL_23;
    }

    v21 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,int> *>(v8, v19);
    v9 = v19 + 16;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,int> *>(v19 + 16, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v19;
      if (v21)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v21)
    {
LABEL_23:
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,int> *,false>(v8, v19, a3, -v11, a5 & 1);
      v9 = v19 + 16;
      goto LABEL_25;
    }
  }

  if (v12 < 2)
  {
    return result;
  }

  if (v12 != 2)
  {
    goto LABEL_11;
  }

  v22 = *(a2 - 2);
  v23 = *v9;
  if (v22 < *v9)
  {
    v24 = *(v9 + 8);
    v25 = *(a2 - 2);
LABEL_30:
    *v9 = v22;
    *(a2 - 2) = v23;
    *(v9 + 8) = v25;
    *(a2 - 2) = v24;
    return result;
  }

  if (v23 >= v22)
  {
    v25 = *(a2 - 2);
    v24 = *(v9 + 8);
    if (v25 < v24)
    {
      goto LABEL_30;
    }
  }

  return result;
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,int> *,0>(unint64_t *a1, unint64_t *a2, unint64_t *a3)
{
  v3 = *a2;
  v4 = *a1;
  if (*a2 < *a1 || v4 >= v3 && *(a2 + 2) < *(a1 + 2))
  {
    v5 = *a3;
    if (*a3 < v3)
    {
      v6 = *(a3 + 2);
LABEL_4:
      *a1 = v5;
      *a3 = v4;
      v7 = *(a1 + 2);
      *(a1 + 2) = v6;
      *(a3 + 2) = v7;
      return 1;
    }

    if (v3 >= v5)
    {
      v6 = *(a3 + 2);
      v16 = *(a2 + 2);
      if (v6 < v16)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v16 = *(a2 + 2);
    }

    *a1 = v3;
    *a2 = v4;
    v17 = *(a1 + 2);
    *(a1 + 2) = v16;
    *(a2 + 2) = v17;
    v18 = *a3;
    if (*a3 >= v4)
    {
      if (v4 < v18)
      {
        return 1;
      }

      v19 = *(a3 + 2);
      if (v19 >= v17)
      {
        return 1;
      }
    }

    else
    {
      v19 = *(a3 + 2);
    }

    *a2 = v18;
    *a3 = v4;
    *(a2 + 2) = v19;
    result = 1;
    *(a3 + 2) = v17;
    return result;
  }

  v9 = *a3;
  if (*a3 < v3)
  {
    v10 = *(a2 + 2);
    v11 = *(a3 + 2);
LABEL_9:
    *a2 = v9;
    *a3 = v3;
    *(a2 + 2) = v11;
    *(a3 + 2) = v10;
    v12 = *a2;
    v13 = *a1;
    if (*a2 < *a1)
    {
      v14 = *(a1 + 2);
      v15 = *(a2 + 2);
LABEL_11:
      *a1 = v12;
      *a2 = v13;
      *(a1 + 2) = v15;
      result = 1;
      *(a2 + 2) = v14;
      return result;
    }

    if (v13 >= v12)
    {
      v15 = *(a2 + 2);
      v14 = *(a1 + 2);
      if (v15 < v14)
      {
        goto LABEL_11;
      }
    }

    return 1;
  }

  if (v3 < v9)
  {
    return 0;
  }

  v11 = *(a3 + 2);
  v10 = *(a2 + 2);
  if (v11 < v10)
  {
    goto LABEL_9;
  }

  return 0;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,int> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,int> *,0>(a1, a2, a3);
  v11 = *a4;
  v12 = *a3;
  if (*a4 >= *a3)
  {
    if (v12 < v11)
    {
      goto LABEL_16;
    }

    v14 = *(a4 + 8);
    v13 = *(a3 + 8);
    if (v14 >= v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v13 = *(a3 + 8);
    v14 = *(a4 + 8);
  }

  *a3 = v11;
  *a4 = v12;
  *(a3 + 8) = v14;
  *(a4 + 8) = v13;
  v15 = *a3;
  v16 = *a2;
  if (*a3 >= *a2)
  {
    if (v16 < v15)
    {
      goto LABEL_16;
    }

    v18 = *(a3 + 8);
    v17 = *(a2 + 8);
    if (v18 >= v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v17 = *(a2 + 8);
    v18 = *(a3 + 8);
  }

  *a2 = v15;
  *a3 = v16;
  *(a2 + 8) = v18;
  *(a3 + 8) = v17;
  v19 = *a2;
  v20 = *a1;
  if (*a2 < *a1)
  {
    v21 = *(a1 + 8);
    v22 = *(a2 + 8);
LABEL_7:
    *a1 = v19;
    *a2 = v20;
    *(a1 + 8) = v22;
    *(a2 + 8) = v21;
    goto LABEL_16;
  }

  if (v20 >= v19)
  {
    v22 = *(a2 + 8);
    v21 = *(a1 + 8);
    if (v22 < v21)
    {
      goto LABEL_7;
    }
  }

LABEL_16:
  v23 = *a5;
  v24 = *a4;
  if (*a5 >= *a4)
  {
    if (v24 < v23)
    {
      return result;
    }

    v26 = *(a5 + 2);
    v25 = *(a4 + 8);
    if (v26 >= v25)
    {
      return result;
    }
  }

  else
  {
    v25 = *(a4 + 8);
    v26 = *(a5 + 2);
  }

  *a4 = v23;
  *a5 = v24;
  *(a4 + 8) = v26;
  *(a5 + 2) = v25;
  v27 = *a4;
  v28 = *a3;
  if (*a4 >= *a3)
  {
    if (v28 < v27)
    {
      return result;
    }

    v30 = *(a4 + 8);
    v29 = *(a3 + 8);
    if (v30 >= v29)
    {
      return result;
    }
  }

  else
  {
    v29 = *(a3 + 8);
    v30 = *(a4 + 8);
  }

  *a3 = v27;
  *a4 = v28;
  *(a3 + 8) = v30;
  *(a4 + 8) = v29;
  v31 = *a3;
  v32 = *a2;
  if (*a3 >= *a2)
  {
    if (v32 < v31)
    {
      return result;
    }

    v34 = *(a3 + 8);
    v33 = *(a2 + 8);
    if (v34 >= v33)
    {
      return result;
    }
  }

  else
  {
    v33 = *(a2 + 8);
    v34 = *(a3 + 8);
  }

  *a2 = v31;
  *a3 = v32;
  *(a2 + 8) = v34;
  *(a3 + 8) = v33;
  v35 = *a2;
  v36 = *a1;
  if (*a2 < *a1)
  {
    v37 = *(a1 + 8);
    v38 = *(a2 + 8);
LABEL_24:
    *a1 = v35;
    *a2 = v36;
    *(a1 + 8) = v38;
    *(a2 + 8) = v37;
    return result;
  }

  if (v36 >= v35)
  {
    v38 = *(a2 + 8);
    v37 = *(a1 + 8);
    if (v38 < v37)
    {
      goto LABEL_24;
    }
  }

  return result;
}

unint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<unsigned long long,int> *,std::__less<void,void> &>(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = *(a2 - 2);
  if (*a1 < v4 || v4 >= v2 && v3 < *(a2 - 2))
  {
    i = a1;
    do
    {
      v7 = i[2];
      i += 2;
      v6 = v7;
    }

    while (v2 >= v7 && (v6 < v2 || v3 >= *(i + 2)));
  }

  else
  {
      ;
    }
  }

  if (i < a2)
  {
    for (a2 -= 2; v2 < v4 || v4 >= v2 && v3 < *(a2 + 2); a2 -= 2)
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
      v11 = i[2];
      i += 2;
      v9 = v11;
      v12 = *(i - 2);
      *(i - 2) = *(a2 + 2);
      *(a2 + 2) = v12;
      while (v2 >= v9 && (v9 < v2 || v3 >= *(i + 2)))
      {
        v13 = i[2];
        i += 2;
        v9 = v13;
      }

      do
      {
        do
        {
          v14 = *(a2 - 2);
          a2 -= 2;
          v10 = v14;
        }

        while (v2 < v14);
      }

      while (v10 >= v2 && v3 < *(a2 + 2));
    }

    while (i < a2);
  }

  if (i - 2 != a1)
  {
    *a1 = *(i - 2);
    *(a1 + 2) = *(i - 2);
  }

  *(i - 2) = v2;
  *(i - 2) = v3;
  return i;
}

unint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<unsigned long long,int> *,std::__less<void,void> &>(unint64_t *a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *(a1 + 2);
  while (1)
  {
    v5 = a1[v2 + 2];
    if (v5 >= v3 && (v3 < v5 || SLODWORD(a1[v2 + 3]) >= v4))
    {
      break;
    }

    v2 += 2;
  }

  v6 = &a1[v2 + 2];
  if (v2 * 8)
  {
    do
    {
      v8 = *(a2 - 16);
      a2 -= 16;
      v7 = v8;
    }

    while (v8 >= v3 && (v3 < v7 || *(a2 + 8) >= v4));
  }

  else
  {
LABEL_19:
    if (v6 < a2)
    {
      do
      {
        v10 = *(a2 - 16);
        a2 -= 16;
        v9 = v10;
        if (v10 < v3)
        {
          break;
        }

        if (v3 < v9)
        {
          goto LABEL_19;
        }
      }

      while (*(a2 + 8) >= v4 && v6 < a2);
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
      v15 = *(v13 + 8);
      *(v13 + 8) = *(v14 + 8);
      *(v14 + 8) = v15;
      do
      {
        do
        {
          v16 = *(v13 + 16);
          v13 += 16;
          v5 = v16;
        }

        while (v16 < v3);
      }

      while (v3 >= v5 && *(v13 + 8) < v4);
      do
      {
        v17 = *(v14 - 16);
        v14 -= 16;
        v12 = v17;
      }

      while (v17 >= v3 && (v3 < v12 || *(v14 + 8) >= v4));
    }

    while (v13 < v14);
  }

  if ((v13 - 16) != a1)
  {
    *a1 = *(v13 - 16);
    *(a1 + 2) = *(v13 - 8);
  }

  *(v13 - 16) = v3;
  *(v13 - 8) = v4;
  return v13 - 16;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,int> *>(uint64_t a1, uint64_t a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,int> *,0>(a1, (a1 + 16), (a2 - 16));
        return 1;
      case 4:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,int> *,0>(a1, (a1 + 16), (a1 + 32));
        v25 = *(a2 - 16);
        v26 = *(a1 + 32);
        if (v25 >= v26)
        {
          if (v26 < v25)
          {
            return 1;
          }

          v28 = *(a2 - 8);
          v27 = *(a1 + 40);
          if (v28 >= v27)
          {
            return 1;
          }
        }

        else
        {
          v27 = *(a1 + 40);
          v28 = *(a2 - 8);
        }

        *(a1 + 32) = v25;
        *(a2 - 16) = v26;
        *(a1 + 40) = v28;
        *(a2 - 8) = v27;
        v29 = *(a1 + 32);
        v30 = *(a1 + 16);
        if (v29 >= v30)
        {
          if (v30 < v29)
          {
            return 1;
          }

          v32 = *(a1 + 40);
          v31 = *(a1 + 24);
          if (v32 >= v31)
          {
            return 1;
          }
        }

        else
        {
          v31 = *(a1 + 24);
          v32 = *(a1 + 40);
        }

        *(a1 + 16) = v29;
        *(a1 + 32) = v30;
        *(a1 + 24) = v32;
        *(a1 + 40) = v31;
        v33 = *a1;
        if (v29 >= *a1)
        {
          if (v33 < v29)
          {
            return 1;
          }

          v34 = *(a1 + 8);
          if (v32 >= v34)
          {
            return 1;
          }
        }

        else
        {
          v34 = *(a1 + 8);
        }

        *a1 = v29;
        *(a1 + 16) = v33;
        *(a1 + 8) = v32;
        *(a1 + 24) = v34;
        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,int> *,0>(a1, a1 + 16, a1 + 32, a1 + 48, (a2 - 16));
        return 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v4 = *(a2 - 16);
      v5 = *a1;
      if (v4 >= *a1)
      {
        if (v5 < v4)
        {
          return 1;
        }

        v7 = *(a2 - 8);
        v6 = *(a1 + 8);
        if (v7 >= v6)
        {
          return 1;
        }
      }

      else
      {
        v6 = *(a1 + 8);
        v7 = *(a2 - 8);
      }

      *a1 = v4;
      *(a2 - 16) = v5;
      *(a1 + 8) = v7;
      *(a2 - 8) = v6;
      return 1;
    }
  }

  v8 = a1 + 32;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,int> *,0>(a1, (a1 + 16), (a1 + 32));
  v11 = a1 + 48;
  if (a1 + 48 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (2)
  {
    v15 = *v11;
    v16 = *v8;
    if (*v11 >= *v8)
    {
      if (v16 < v15)
      {
        goto LABEL_17;
      }

      v17 = *(v11 + 8);
      v18 = *(v8 + 8);
      if (v17 >= v18)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v17 = *(v11 + 8);
      v18 = *(v8 + 8);
    }

    *v11 = v16;
    *(v11 + 8) = v18;
    v14 = a1;
    if (v8 == a1)
    {
      goto LABEL_16;
    }

    v19 = v12;
    while (1)
    {
      v21 = a1 + v19;
      v22 = *(a1 + v19 + 16);
      if (v15 < v22)
      {
        v20 = *(v21 + 24);
        goto LABEL_23;
      }

      if (v22 < v15)
      {
        break;
      }

      v20 = *(a1 + v19 + 24);
      if (v17 >= v20)
      {
        v14 = a1 + v19 + 32;
        goto LABEL_16;
      }

LABEL_23:
      v8 -= 16;
      *(v21 + 32) = v22;
      *(a1 + v19 + 40) = v20;
      v19 -= 16;
      if (v19 == -32)
      {
        v14 = a1;
        goto LABEL_16;
      }
    }

    v14 = v8;
LABEL_16:
    *v14 = v15;
    *(v14 + 8) = v17;
    if (++v13 != 8)
    {
LABEL_17:
      v8 = v11;
      v12 += 16;
      v11 += 16;
      if (v11 == a2)
      {
        return 1;
      }

      continue;
    }

    return v11 + 16 == a2;
  }
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned long long,int> *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = v8[2];
        if (*v8 < v10 || v10 >= *v8 && *(v8 + 2) < *(v8 + 6))
        {
          v8 += 2;
          v7 = v9;
        }
      }

      v11 = *v8;
      v12 = *a4;
      if (*v8 >= *a4)
      {
        if (v12 >= v11)
        {
          v14 = *(v8 + 2);
          v13 = *(a4 + 2);
          if (v14 < v13)
          {
            return result;
          }
        }

        else
        {
          v13 = *(a4 + 2);
          v14 = *(v8 + 2);
        }

        *a4 = v11;
        *(a4 + 2) = v14;
        if (v5 >= v7)
        {
          while (1)
          {
            v17 = 2 * v7;
            v7 = (2 * v7) | 1;
            v15 = (result + 16 * v7);
            v18 = v17 + 2;
            if (v18 < a3)
            {
              v19 = v15[2];
              if (*v15 < v19 || v19 >= *v15 && *(v15 + 2) < *(v15 + 6))
              {
                v15 += 2;
                v7 = v18;
              }
            }

            v20 = *v15;
            if (*v15 < v12)
            {
              break;
            }

            if (v12 < v20)
            {
              v16 = *(v15 + 2);
            }

            else
            {
              v16 = *(v15 + 2);
              if (v16 < v13)
              {
                break;
              }
            }

            *v8 = v20;
            *(v8 + 2) = v16;
            v8 = v15;
            if (v5 < v7)
            {
              goto LABEL_14;
            }
          }
        }

        v15 = v8;
LABEL_14:
        *v15 = v12;
        *(v15 + 2) = v13;
      }
    }
  }

  return result;
}

unint64_t *std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::pair<unsigned long long,int> *>(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = 0;
    v5 = *result;
    v6 = *(result + 2);
    v7 = result;
    do
    {
      v8 = v7;
      v9 = &v7[2 * v4];
      v7 = (v9 + 2);
      v10 = 2 * v4;
      v4 = (2 * v4) | 1;
      v11 = v10 + 2;
      if (v11 < a4)
      {
        v12 = v9[4];
        v13 = v9[2];
        if (v13 < v12 || v12 >= v13 && *(v9 + 6) < *(v9 + 10))
        {
          v7 = (v9 + 4);
          v4 = v11;
        }
      }

      *v8 = *v7;
      *(v8 + 2) = *(v7 + 2);
    }

    while (v4 <= ((a4 - 2) >> 1));
    if (v7 == (a2 - 16))
    {
      *v7 = v5;
      *(v7 + 2) = v6;
      return result;
    }

    *v7 = *(a2 - 16);
    *(v7 + 2) = *(a2 - 8);
    *(a2 - 16) = v5;
    *(a2 - 8) = v6;
    v14 = (v7 - result + 16) >> 4;
    v15 = v14 - 2;
    if (v14 < 2)
    {
      return result;
    }

    v16 = v15 >> 1;
    v17 = &result[2 * (v15 >> 1)];
    v18 = *v17;
    v19 = *v7;
    if (*v17 >= *v7)
    {
      if (v19 < v18)
      {
        return result;
      }

      v21 = *(v17 + 2);
      v20 = *(v7 + 2);
      if (v21 >= v20)
      {
        return result;
      }
    }

    else
    {
      v20 = *(v7 + 2);
      v21 = *(v17 + 2);
    }

    *v7 = v18;
    *(v7 + 2) = v21;
    if (v15 >= 2)
    {
      while (1)
      {
        v24 = v16 - 1;
        v16 = (v16 - 1) >> 1;
        v22 = &result[2 * v16];
        v25 = *v22;
        if (*v22 < v19)
        {
          v23 = *(v22 + 2);
        }

        else
        {
          if (v19 < v25)
          {
            break;
          }

          v23 = *(v22 + 2);
          if (v23 >= v20)
          {
            break;
          }
        }

        *v17 = v25;
        *(v17 + 2) = v23;
        v17 = &result[2 * v16];
        if (v24 <= 1)
        {
          goto LABEL_16;
        }
      }
    }

    v22 = v17;
LABEL_16:
    *v22 = v19;
    *(v22 + 2) = v20;
  }

  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,operations_research::Domain>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,operations_research::Domain>>>::resize_impl(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8) & 1;
  v5 = 0;
  v2 = *(a1 + 16);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,32ul,false,false,8ul>(&v2, a1);
}

__n128 absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,operations_research::Domain>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,operations_research::Domain>>>::transfer_slot_fn(uint64_t a1, __n128 *a2, __n128 *a3)
{
  a2->n128_u32[0] = a3->n128_u32[0];
  a2->n128_u64[1] = 0;
  a2->n128_u64[1] = a3->n128_u64[1];
  result = a3[1];
  a2[1] = result;
  a3->n128_u64[1] = 0;
  return result;
}

char *std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::InclusionDetector<operations_research::sat::CpModelPresolver::DetectDominatedLinearConstraints(void)::Storage>::Candidate *>>(char *result, char *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      v5 = *(a2 - 2);
      v6 = *(result + 1);
      if (v5 < v6 || (v6 >= v5 ? (v7 = *(a2 - 1) < *(result + 2)) : (v7 = 0), v7))
      {
        v8 = a2 - 12;
        v9 = *(result + 2);
        v10 = *result;
        v11 = *(a2 - 1);
        *result = *(a2 - 12);
        *(result + 2) = v11;
        *v8 = v10;
        *(v8 + 2) = v9;
      }
    }

    else if (a3 > 128)
    {
      v28 = a3 >> 1;
      v29 = 12 * (a3 >> 1);
      v30 = a3 - (a3 >> 1);
      v31 = &result[v29];
      if (a3 <= a5)
      {
        v35 = result;
        v37 = a4;
        std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::InclusionDetector<operations_research::sat::CpModelPresolver::DetectDominatedLinearConstraints(void)::Storage>::Candidate *>>(result, v31, a3 >> 1, a4);
        v38 = v37 + 12 * v28;
        result = std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::InclusionDetector<operations_research::sat::CpModelPresolver::DetectDominatedLinearConstraints(void)::Storage>::Candidate *>>(&v35[v29], a2, v30, v38);
        v39 = v37 + 12 * a3;
        if (v29)
        {
          v40 = v38;
          v41 = v35;
          while (v40 != v39)
          {
            v43 = *(v40 + 4);
            v44 = *(v37 + 4);
            if (v43 < v44 || (v44 >= v43 ? (v45 = *(v40 + 8) < *(v37 + 8)) : (v45 = 0), v45))
            {
              v42 = *v40;
              *(v41 + 2) = *(v40 + 8);
              *v41 = v42;
              v41 += 12;
              v40 += 12;
              if (v37 == v38)
              {
                goto LABEL_53;
              }
            }

            else
            {
              v46 = *v37;
              *(v41 + 2) = *(v37 + 8);
              *v41 = v46;
              v41 += 12;
              v37 += 12;
              if (v37 == v38)
              {
                goto LABEL_53;
              }
            }
          }

          while (v37 != v38)
          {
            v47 = *v37;
            *(v41 + 2) = *(v37 + 8);
            *v41 = v47;
            v41 += 12;
            v37 += 12;
          }
        }

        else
        {
          v40 = v38;
          v41 = v35;
LABEL_53:
          while (v40 != v39)
          {
            v48 = *v40;
            *(v41 + 2) = *(v40 + 8);
            *v41 = v48;
            v41 += 12;
            v40 += 12;
          }
        }
      }

      else
      {
        v32 = result;
        std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::InclusionDetector<operations_research::sat::CpModelPresolver::DetectDominatedLinearConstraints(void)::Storage>::Candidate *>>(result, v31, a3 >> 1, a4, a5);
        std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::InclusionDetector<operations_research::sat::CpModelPresolver::DetectDominatedLinearConstraints(void)::Storage>::Candidate *>>(&v32[v29], a2, v30, a4, a5);

        return std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::InclusionDetector<operations_research::sat::CpModelPresolver::DetectDominatedLinearConstraints(void)::Storage>::Candidate *>>(v32, &v32[v29], a2, v28, v30, a4, a5);
      }
    }

    else if (result != a2)
    {
      v12 = result + 12;
      if (result + 12 != a2)
      {
        v13 = 0;
        v14 = result;
        do
        {
          v16 = v12;
          v17 = *(v14 + 4);
          v18 = *(v14 + 5);
          v19 = *(v14 + 1);
          if (v17 < v19 || (v19 >= v17 ? (v20 = v18 < *(v14 + 2)) : (v20 = 0), v20))
          {
            v21 = *v16;
            v22 = *v14;
            *(v16 + 2) = *(v14 + 2);
            *v16 = v22;
            if (v14 == result)
            {
LABEL_15:
              v15 = result;
            }

            else
            {
              v23 = v13;
              while (1)
              {
                v24 = &result[v23];
                v25 = *&result[v23 - 8];
                if (v17 >= v25 && (v25 < v17 || v18 >= *(v24 - 1)))
                {
                  break;
                }

                *v24 = *(v24 - 12);
                *(v24 + 2) = *(v24 - 1);
                v23 -= 12;
                if (!v23)
                {
                  goto LABEL_15;
                }
              }

              v15 = &result[v23];
            }

            *v15 = v21;
            *(v15 + 1) = v17;
            *(v15 + 2) = v18;
          }

          v12 = v16 + 12;
          v13 += 12;
          v14 = v16;
        }

        while (v16 + 12 != a2);
      }
    }
  }

  return result;
}

uint64_t std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::InclusionDetector<operations_research::sat::CpModelPresolver::DetectDominatedLinearConstraints(void)::Storage>::Candidate *>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    if (a3 == 2)
    {
      v5 = (a2 - 12);
      v6 = *(a2 - 8);
      v7 = *(result + 4);
      if (v6 < v7 || (v7 >= v6 ? (v8 = *(a2 - 4) < *(result + 8)) : (v8 = 0), v8))
      {
        v28 = *v5;
        *(a4 + 8) = *(a2 - 4);
        *a4 = v28;
        v29 = *result;
        *(a4 + 20) = *(result + 8);
        *(a4 + 12) = v29;
      }

      else
      {
        v9 = *result;
        *(a4 + 8) = *(result + 8);
        *a4 = v9;
        v10 = *v5;
        *(a4 + 20) = *(a2 - 4);
        *(a4 + 12) = v10;
      }
    }

    else if (a3 == 1)
    {
      v4 = *result;
      *(a4 + 8) = *(result + 8);
      *a4 = v4;
    }

    else if (a3 > 8)
    {
      v30 = a3 >> 1;
      v31 = 12 * (a3 >> 1);
      v32 = v31 + result;
      v33 = result;
      (std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::InclusionDetector<operations_research::sat::CpModelPresolver::DetectDominatedLinearConstraints(void)::Storage>::Candidate *>>)();
      result = std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::InclusionDetector<operations_research::sat::CpModelPresolver::DetectDominatedLinearConstraints(void)::Storage>::Candidate *>>(v32, a2, a3 - v30, a4 + v31, a3 - v30);
      if (v31)
      {
        v37 = v32;
        v38 = a4;
        v39 = a2;
        v40 = v33;
        while (v37 != a2)
        {
          v42 = *(v37 + 4);
          v43 = *(v40 + 4);
          if (v42 < v43 || (v43 >= v42 ? (v44 = *(v37 + 8) < *(v40 + 8)) : (v44 = 0), v44))
          {
            v41 = *v37;
            *(v38 + 8) = *(v37 + 8);
            *v38 = v41;
            v38 += 12;
            v37 += 12;
            if (v40 == v32)
            {
              goto LABEL_51;
            }
          }

          else
          {
            v45 = *v40;
            *(v38 + 8) = *(v40 + 8);
            *v38 = v45;
            v38 += 12;
            v40 += 12;
            if (v40 == v32)
            {
              goto LABEL_51;
            }
          }
        }

        while (v40 != v32)
        {
          v46 = *v40;
          *(v38 + 8) = *(v40 + 8);
          *v38 = v46;
          v38 += 12;
          v40 += 12;
        }
      }

      else
      {
        v37 = v32;
        v38 = a4;
        v39 = a2;
LABEL_51:
        while (v37 != v39)
        {
          v47 = *v37;
          *(v38 + 8) = *(v37 + 8);
          *v38 = v47;
          v38 += 12;
          v37 += 12;
        }
      }
    }

    else if (result != a2)
    {
      v11 = *result;
      *(a4 + 8) = *(result + 8);
      *a4 = v11;
      v12 = result + 12;
      if (result + 12 != a2)
      {
        v13 = 0;
        v14 = a4;
        do
        {
          v17 = v12;
          v18 = v14 + 12;
          v19 = *(result + 16);
          v20 = *(v14 + 4);
          if (v19 < v20 || (v20 >= v19 ? (v21 = *(result + 20) < *(v14 + 8)) : (v21 = 0), v21))
          {
            *v18 = *v14;
            *(v14 + 20) = *(v14 + 8);
            v15 = a4;
            if (v14 != a4)
            {
              v23 = v13;
              while (1)
              {
                v24 = a4 + v23;
                v25 = *(result + 16);
                v26 = *(a4 + v23 - 8);
                if (v25 >= v26 && (v26 < v25 || *(result + 20) >= *(v24 - 4)))
                {
                  break;
                }

                *v24 = *(v24 - 12);
                *(v24 + 8) = *(v24 - 4);
                v23 -= 12;
                if (!v23)
                {
                  v15 = a4;
                  goto LABEL_17;
                }
              }

              v15 = a4 + v23;
            }

LABEL_17:
            v16 = *v17;
            *(v15 + 8) = *(v17 + 8);
            *v15 = v16;
          }

          else
          {
            v22 = *v17;
            *(v18 + 8) = *(v17 + 8);
            *v18 = v22;
          }

          v12 = v17 + 12;
          v13 += 12;
          v14 = v18;
          result = v17;
        }

        while (v17 + 12 != a2);
      }
    }
  }

  return result;
}

char *std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::InclusionDetector<operations_research::sat::CpModelPresolver::DetectDominatedLinearConstraints(void)::Storage>::Candidate *>>(char *result, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a5)
  {
    return result;
  }

  v82 = a7;
  v83 = a6;
  while (a5 > a7 && a4 > a7)
  {
    if (!a4)
    {
      return result;
    }

    v8 = 0;
    v9 = *(a2 + 1);
    v10 = -a4;
    while (1)
    {
      v11 = &result[v8];
      v12 = *&result[v8 + 4];
      if (v9 < v12)
      {
        break;
      }

      if (v12 >= v9 && *(a2 + 2) < *(v11 + 2))
      {
        break;
      }

      v8 += 12;
      if (__CFADD__(v10++, 1))
      {
        return result;
      }
    }

    v15 = -v10;
    if (-v10 < a5)
    {
      v16 = a5 / 2;
      v17 = &a2[12 * (a5 / 2)];
      v18 = a2;
      if (a2 - result != v8)
      {
        v24 = *(v17 + 1);
        v25 = 0xAAAAAAAAAAAAAAABLL * ((a2 - result - v8) >> 2);
        v18 = &result[v8];
        do
        {
          v26 = v25 >> 1;
          v27 = &v18[12 * (v25 >> 1)];
          v28 = *(v27 + 1);
          if (v28 <= v24 && (v28 < v24 || *(v27 + 2) <= *(v17 + 2)))
          {
            v18 = v27 + 12;
            v26 = v25 + ~v26;
          }

          v25 = v26;
        }

        while (v26);
      }

      v19 = 0xAAAAAAAAAAAAAAABLL * ((v18 - result - v8) >> 2);
      v20 = &a2[12 * (a5 / 2)];
      v21 = a2 - v18;
      if (a2 == v18)
      {
        goto LABEL_62;
      }

LABEL_22:
      v20 = v18;
      if (a2 != v17)
      {
        if (v18 + 12 == a2)
        {
          v89 = *(v18 + 2);
          v84 = *v18;
          v22 = v17 - a2;
          v78 = a3;
          v80 = result;
          v23 = a5;
          memmove(v18, a2, v17 - a2);
          a7 = v82;
          a6 = v83;
          a3 = v78;
          result = v80;
          a5 = v23;
          v20 = &v18[v22];
          *v20 = v84;
          *(v20 + 2) = v89;
        }

        else if (a2 + 12 == v17)
        {
          v20 = v18 + 12;
          v85 = *(v17 - 12);
          v90 = *(v17 - 1);
          if (v17 - 12 != v18)
          {
            v79 = a3;
            v81 = result;
            v36 = a5;
            memmove(v18 + 12, v18, v17 - 12 - v18);
            a7 = v82;
            a6 = v83;
            a3 = v79;
            result = v81;
            a5 = v36;
          }

          *(v18 + 2) = v90;
          *v18 = v85;
        }

        else
        {
          v37 = 0xAAAAAAAAAAAAAAABLL * ((v17 - a2) >> 2);
          if (0xAAAAAAAAAAAAAAABLL * (v21 >> 2) == v37)
          {
            v38 = v18 + 12;
            v39 = a2 + 12;
            do
            {
              v91 = *(v38 - 1);
              v86 = *(v38 - 12);
              v40 = *(v39 - 12);
              *(v38 - 1) = *(v39 - 1);
              *(v38 - 12) = v40;
              *(v39 - 12) = v86;
              *(v39 - 1) = v91;
              if (v38 == a2)
              {
                break;
              }

              v38 += 12;
              v41 = v39 == v17;
              v39 += 12;
            }

            while (!v41);
            v20 = a2;
          }

          else
          {
            v42 = 0xAAAAAAAAAAAAAAABLL * (v21 >> 2);
            do
            {
              v43 = v42;
              v42 = v37;
              v37 = v43 % v37;
            }

            while (v37);
            v44 = &v18[12 * v42];
            do
            {
              v45 = *(v44 - 12);
              v44 -= 12;
              v87 = v45;
              v92 = *(v44 + 2);
              v46 = &v44[v21];
              v47 = v44;
              do
              {
                v48 = v46;
                v49 = *v46;
                *(v47 + 2) = *(v48 + 2);
                *v47 = v49;
                v46 = v48 + 4 * (v21 >> 2);
                if (v21 >= v17 - v48)
                {
                  v46 = &a2[-(v17 - v48)];
                }

                v47 = v48;
              }

              while (v46 != v44);
              *(v48 + 2) = v92;
              *v48 = v87;
            }

            while (v44 != v18);
            v20 = &v18[v17 - a2];
          }
        }
      }

      goto LABEL_62;
    }

    if (v10 == -1)
    {
      v73 = &result[v8];
      v93 = *&result[v8 + 8];
      v88 = *&result[v8];
      v74 = *a2;
      *(v73 + 2) = *(a2 + 2);
      *v73 = v74;
      *a2 = v88;
      *(a2 + 2) = v93;
      return result;
    }

    v19 = v15 / 2;
    v18 = &result[12 * (v15 / 2) + v8];
    v17 = a2;
    if (a2 != a3)
    {
      v30 = *(v18 + 1);
      v31 = 0xAAAAAAAAAAAAAAABLL * ((a3 - a2) >> 2);
      v17 = a2;
      do
      {
        v32 = v31 >> 1;
        v33 = &v17[12 * (v31 >> 1)];
        v34 = *(v33 + 1);
        if (v34 < v30 || (v34 <= v30 ? (v35 = *(v33 + 2) < *(v18 + 2)) : (v35 = 0), v35))
        {
          v17 = v33 + 12;
          v32 = v31 + ~v32;
        }

        v31 = v32;
      }

      while (v32);
    }

    v16 = 0xAAAAAAAAAAAAAAABLL * ((v17 - a2) >> 2);
    v20 = v17;
    v21 = a2 - v18;
    if (a2 != v18)
    {
      goto LABEL_22;
    }

LABEL_62:
    v50 = a5 - v16;
    if (v19 + v16 >= a5 - (v19 + v16) - v10)
    {
      std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::InclusionDetector<operations_research::sat::CpModelPresolver::DetectDominatedLinearConstraints(void)::Storage>::Candidate *>>(v20, v17, a3, -v10 - v19, a5 - v16, a6, a7);
      a2 = v18;
      a4 = v19;
      a3 = v20;
      a5 = v16;
      result = v11;
      a7 = v82;
      a6 = v83;
      if (!v16)
      {
        return result;
      }
    }

    else
    {
      v51 = &result[v8];
      v52 = -v10 - v19;
      v53 = a3;
      std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::InclusionDetector<operations_research::sat::CpModelPresolver::DetectDominatedLinearConstraints(void)::Storage>::Candidate *>>(v51, v18, v20, v19, v16, a6, a7);
      a3 = v53;
      a4 = v52;
      a2 = v17;
      a5 = v50;
      result = v20;
      a7 = v82;
      a6 = v83;
      if (!v50)
      {
        return result;
      }
    }
  }

  if (a4 <= a5)
  {
    if (a2 != result)
    {
      v63 = 0;
      v64 = -a6;
      do
      {
        v65 = (a6 + v63);
        v66 = *&result[v63];
        *(v65 + 2) = *&result[v63 + 8];
        *v65 = v66;
        v64 -= 12;
        v63 += 12;
      }

      while (&result[v63] != a2);
      if (v63)
      {
        v67 = (a6 + v63);
        while (a2 != a3)
        {
          v69 = *(a2 + 1);
          v70 = *(a6 + 4);
          if (v69 < v70 || (v70 >= v69 ? (v71 = *(a2 + 2) < *(a6 + 8)) : (v71 = 0), v71))
          {
            v68 = *a2;
            *(result + 2) = *(a2 + 2);
            *result = v68;
            result += 12;
            a2 += 12;
            if (v67 == a6)
            {
              return result;
            }
          }

          else
          {
            v72 = *a6;
            *(result + 2) = *(a6 + 8);
            *result = v72;
            result += 12;
            a6 += 12;
            if (v67 == a6)
            {
              return result;
            }
          }
        }

        return memmove(result, a6, -(a6 + v64));
      }
    }
  }

  else if (a2 != a3)
  {
    v54 = 0;
    do
    {
      v55 = (a6 + v54);
      v56 = *&a2[v54];
      *(v55 + 2) = *&a2[v54 + 8];
      *v55 = v56;
      v54 += 12;
    }

    while (&a2[v54] != a3);
    if (v54)
    {
      v57 = (a6 + v54);
      while (a2 != result)
      {
        v59 = a2 - 12;
        v61 = *(a2 - 2);
        v62 = *(v57 - 2);
        if (v62 >= v61)
        {
          v58 = v61 >= v62 && *(v57 - 1) < *(a2 - 1);
          if (v58)
          {
            a2 -= 12;
          }

          else
          {
            v59 = (v57 - 3);
          }

          if (!v58)
          {
            v57 -= 3;
          }
        }

        else
        {
          a2 -= 12;
        }

        v60 = *(v59 + 2);
        *(a3 - 12) = *v59;
        a3 -= 12;
        *(a3 + 2) = v60;
        if (v57 == a6)
        {
          return result;
        }
      }

      if (v57 != a6)
      {
        v75 = -12;
        do
        {
          v76 = *(v57 - 3);
          v57 -= 3;
          v77 = &a3[v75];
          *(v77 + 2) = v57[2];
          *v77 = v76;
          v75 -= 12;
        }

        while (v57 != a6);
      }
    }
  }

  return result;
}

__n128 std::__function::__func<operations_research::sat::CpModelPresolver::DetectDominatedLinearConstraints(void)::$_0,std::allocator<operations_research::sat::CpModelPresolver::DetectDominatedLinearConstraints(void)::$_0>,void ()(int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F3E160;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<operations_research::sat::CpModelPresolver::DetectDominatedLinearConstraints(void)::$_0,std::allocator<operations_research::sat::CpModelPresolver::DetectDominatedLinearConstraints(void)::$_0>,void ()(int,int)>::operator()(uint64_t a1, int *a2, unsigned int *a3)
{
  v4 = *a2;
  v5 = *a3;
  v201 = *a3;
  v202 = v4;
  v6 = *(a1 + 16);
  ++**(a1 + 8);
  v7 = **(v6 + 8);
  v9 = *(v7 + 48);
  v8 = v7 + 48;
  v10 = v9 + 8 * v4 + 7;
  if ((v9 & 1) == 0)
  {
    v10 = v8;
  }

  v11 = *v10;
  if (*(*v10 + 60) == 12)
  {
    v12 = *(v11 + 48);
    v13 = *(a1 + 24);
    v14 = *v13;
    if (*v13 > 1)
    {
LABEL_5:
      absl::lts_20240722::container_internal::ClearBackingArray(v13, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,long long>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,long long>>>::GetPolicyFunctions(void)::value, v14 < 0x80, 1u);
      goto LABEL_8;
    }
  }

  else
  {
    v12 = &operations_research::sat::_LinearConstraintProto_default_instance_;
    v13 = *(a1 + 24);
    v14 = *v13;
    if (*v13 > 1)
    {
      goto LABEL_5;
    }
  }

  v13[1] = 0;
LABEL_8:
  v15 = *(v12 + 4);
  *(*(a1 + 32) + 40) += v15;
  if (v15 >= 1)
  {
    v16 = 0;
    do
    {
      v17 = v12[6][v16];
      v18 = *(a1 + 24);
      LODWORD(v203) = *(v12[3] + v16);
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,long long>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,long long>>>::find_or_prepare_insert<int>(v18, &v203, &v205);
      if (v207 == 1)
      {
        v19 = v206;
        *v206 = v203;
        v19[1] = 0;
      }

      v206[1] = v17;
      ++v16;
    }

    while (v16 < *(v12 + 4));
    v5 = v201;
  }

  v20 = **(v6 + 8);
  v22 = *(v20 + 48);
  v21 = v20 + 48;
  v23 = v22 + 8 * v5 + 7;
  if (v22)
  {
    v21 = v23;
  }

  v193 = v6;
  v190 = v12;
  v191 = v11;
  v189 = *v21;
  if (*(*v21 + 60) == 12)
  {
    v24 = *(*v21 + 48);
  }

  else
  {
    v24 = &operations_research::sat::_LinearConstraintProto_default_instance_;
  }

  v25 = a1;
  v26 = *(v24 + 4);
  *(*(a1 + 32) + 40) += v26;
  v194 = v24;
  if (v26 < 1)
  {
    v29 = 0;
    v28 = 0;
    v195 = 0;
    v196 = 1;
    v30 = 0x8000000000000000;
    v31 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v27 = 0;
    v195 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0x8000000000000000;
    v196 = 1;
    v31 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      while (1)
      {
        v32 = *(v24[3] + v27);
        v33 = v24[6][v27];
        v34 = *(v25 + 24);
        v35 = *v34;
        if (*v34 > 1uLL)
        {
          v38 = 0;
          _X11 = v34[2];
          __asm { PRFM            #4, [X11] }

          v44 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v32) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v32));
          v45 = vdup_n_s8(v44 & 0x7F);
          v46 = ((_X11 >> 12) ^ (v44 >> 7)) & v35;
          v47 = *(_X11 + v46);
          v48 = vceq_s8(v47, v45);
          if (!v48)
          {
            goto LABEL_31;
          }

LABEL_28:
          v49 = v34[3];
          while (1)
          {
            v50 = (v46 + (__clz(__rbit64(v48)) >> 3)) & v35;
            if (*(v49 + 16 * v50) == v32)
            {
              break;
            }

            v48 &= ((v48 & 0x8080808080808080) - 1) & 0x8080808080808080;
            if (!v48)
            {
LABEL_31:
              while (!*&vceq_s8(v47, 0x8080808080808080))
              {
                v38 += 8;
                v46 = (v38 + v46) & v35;
                v47 = *(_X11 + v46);
                v48 = vceq_s8(v47, v45);
                if (v48)
                {
                  goto LABEL_28;
                }
              }

              goto LABEL_60;
            }
          }

          v36 = (v49 + 16 * v50);
          if (_X11 + v50)
          {
            goto LABEL_35;
          }
        }

        else if (v34[1] >= 2uLL)
        {
          v37 = *(v34 + 4);
          v36 = v34 + 2;
          if (v37 == v32)
          {
            if (&absl::lts_20240722::container_internal::kSooControl)
            {
LABEL_35:
              v51 = v36[1];
              v52 = v33 / v51;
              if (v31 >= v33 / v51)
              {
                v53 = v33 / v51;
              }

              else
              {
                v53 = v31;
              }

              if (v52 <= v30)
              {
                v54 = v30;
              }

              else
              {
                v54 = v33 / v51;
              }

              if (v52 > 0)
              {
                v31 = v53;
              }

              else
              {
                v30 = v54;
              }

              v55 = v33 % v51;
              v56 = v195;
              if (v195)
              {
                v57 = v195;
              }

              else
              {
                v57 = v33 / v51;
              }

              v58 = v195 == v52 || v195 == 0;
              _ZF = v55 == 0;
              if (v55)
              {
                v60 = v195;
              }

              else
              {
                v60 = v57;
              }

              if (!_ZF)
              {
                v58 = 0;
              }

              if (v196)
              {
                v56 = v60;
              }

              v195 = v56;
              if ((v196 & 1) == 0)
              {
                v58 = 0;
              }

              v196 = v58;
              v33 -= v51;
            }
          }
        }

LABEL_60:
        if (v33)
        {
          break;
        }

        v24 = v194;
        if (++v27 >= v26)
        {
          goto LABEL_85;
        }
      }

      v61 = *(v193 + 8);
      if (v33 < 1)
      {
        v67 = operations_research::sat::PresolveContext::MaxOf(v61, v32);
        v68 = ((v67 ^ v33) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
        if ((v33 * v67) >> 64 == (v33 * v67) >> 63)
        {
          v68 = v33 * v67;
        }

        _VF = __OFADD__(v28, v68);
        v69 = v28 + v68;
        if (_VF)
        {
          v28 = (v28 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v28 = v69;
        }

        v66 = operations_research::sat::PresolveContext::MinOf(v61, v32);
        v65 = v66 ^ v33;
      }

      else
      {
        v62 = operations_research::sat::PresolveContext::MinOf(v61, v32);
        v63 = (v62 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
        if ((v33 * v62) >> 64 == (v33 * v62) >> 63)
        {
          v63 = v33 * v62;
        }

        _VF = __OFADD__(v28, v63);
        v64 = v28 + v63;
        if (_VF)
        {
          v28 = (v28 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v28 = v64;
        }

        v65 = operations_research::sat::PresolveContext::MaxOf(v61, v32);
        v66 = v65;
      }

      if ((v33 * v66) >> 64 == (v33 * v66) >> 63)
      {
        v70 = v33 * v66;
      }

      else
      {
        v70 = (v65 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
      }

      _VF = __OFADD__(v29, v70);
      v71 = v29 + v70;
      if (_VF)
      {
        v29 = (v29 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v29 = v71;
      }

      v24 = v194;
      LODWORD(v26) = *(v194 + 4);
      ++v27;
    }

    while (v27 < v26);
  }

LABEL_85:
  operations_research::Domain::Domain(v200, v28, v29);
  operations_research::Domain::FromFlatSpanOfIntervals(v190[9], *(v190 + 16), v199, v72);
  operations_research::Domain::FromFlatSpanOfIntervals(v24[9], *(v24 + 16), v198, v73);
  v75 = v25;
  if (!*(v191 + 16))
  {
    operations_research::Domain::AdditionWith(v199, v200, &v203, v74);
    v77 = 0;
    v78 = *(v25 + 40);
    _X8 = v78[2];
    __asm { PRFM            #4, [X8] }

    v81 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v201) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v201));
    v82 = *v78;
    v83 = vdup_n_s8(v81 & 0x7F);
    v84 = ((v81 >> 7) ^ (_X8 >> 12)) & *v78;
    v85 = *(_X8 + v84);
    v86 = vceq_s8(v85, v83);
    if (!v86)
    {
      goto LABEL_99;
    }

LABEL_96:
    v87 = v78[3];
    do
    {
      v88 = (v84 + (__clz(__rbit64(v86)) >> 3)) & v82;
      if (*(v87 + 32 * v88) == v201)
      {
        v104 = (v87 + 32 * v88);
        goto LABEL_112;
      }

      v86 &= ((v86 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v86);
LABEL_99:
    while (1)
    {
      v89 = vceq_s8(v85, 0x8080808080808080);
      if (v89)
      {
        break;
      }

      v77 += 8;
      v84 = (v77 + v84) & v82;
      v85 = *(_X8 + v84);
      v86 = vceq_s8(v85, v83);
      if (v86)
      {
        goto LABEL_96;
      }
    }

    v104 = (v78[3] + 32 * absl::lts_20240722::container_internal::PrepareInsertNonSoo(*(v25 + 40), v81, (v84 + (__clz(__rbit64(v89)) >> 3)) & v82, v77, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,operations_research::Domain>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,operations_research::Domain>>>::GetPolicyFunctions(void)::value));
    *v104 = v201;
    *(v104 + 1) = 0;
LABEL_112:
    operations_research::Domain::IntersectionWith(&v203, (v104 + 2), &v205);
    if (v203)
    {
      operator delete(v204);
    }

    if (operations_research::Domain::IsIncludedIn(&v205, v198))
    {
      v106 = *(v193 + 8);
      operator new();
    }

    if (v205)
    {
      operator delete(v206);
    }
  }

  if (!*(v189 + 16))
  {
    operations_research::Domain::Negation(v200, v197);
    operations_research::Domain::AdditionWith(v198, v197, &v203, v90);
    v91 = 0;
    v92 = *(v25 + 40);
    _X8 = v92[2];
    __asm { PRFM            #4, [X8] }

    v95 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v202) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v202));
    v96 = *v92;
    v97 = vdup_n_s8(v95 & 0x7F);
    v98 = ((v95 >> 7) ^ (_X8 >> 12)) & *v92;
    v99 = *(_X8 + v98);
    v100 = vceq_s8(v99, v97);
    if (!v100)
    {
      goto LABEL_106;
    }

LABEL_103:
    v101 = v92[3];
    do
    {
      v102 = (v98 + (__clz(__rbit64(v100)) >> 3)) & v96;
      if (*(v101 + 32 * v102) == v202)
      {
        v105 = (v101 + 32 * v102);
        goto LABEL_182;
      }

      v100 &= ((v100 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v100);
LABEL_106:
    while (1)
    {
      v103 = vceq_s8(v99, 0x8080808080808080);
      if (v103)
      {
        break;
      }

      v91 += 8;
      v98 = (v91 + v98) & v96;
      v99 = *(_X8 + v98);
      v100 = vceq_s8(v99, v97);
      if (v100)
      {
        goto LABEL_103;
      }
    }

    v105 = (v92[3] + 32 * absl::lts_20240722::container_internal::PrepareInsertNonSoo(*(v25 + 40), v95, (v98 + (__clz(__rbit64(v103)) >> 3)) & v96, v91, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,operations_research::Domain>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,operations_research::Domain>>>::GetPolicyFunctions(void)::value));
    *v105 = v202;
    *(v105 + 1) = 0;
LABEL_182:
    operations_research::Domain::IntersectionWith(&v203, (v105 + 2), &v205);
    if (v203)
    {
      operator delete(v204);
    }

    if (v197[0])
    {
      operator delete(v197[1]);
    }

    if (operations_research::Domain::IsIncludedIn(&v205, v199))
    {
      v155 = *(v193 + 8);
      operator new();
    }

    if (v205)
    {
      operator delete(v206);
    }
  }

  if (operations_research::Domain::IsFixed(v199) && !*(v191 + 16))
  {
    v107 = v30 <= -v31 ? v31 : v30;
    v188 = v107;
    if (v31 == 0x7FFFFFFFFFFFFFFFLL || v30 == 0x8000000000000000)
    {
      goto LABEL_193;
    }

    v108 = operations_research::Domain::Min(v199);
    v109 = (v188 * v108) >> 64 == (v188 * v108) >> 63 ? v188 * v108 : ((v108 ^ v188) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
    v110 = *(v24 + 4);
    if (v110 < 1)
    {
      v192 = 0;
      v112 = 0;
      v113 = v109;
    }

    else
    {
      v111 = 0;
      v112 = 0;
      v192 = 0;
      v113 = v109;
      do
      {
        v119 = *(v194[3] + v111);
        v120 = *(v75 + 24);
        v121 = *v120;
        if (*v120 > 1uLL)
        {
          v122 = 0;
          _X11 = v120[2];
          __asm { PRFM            #4, [X11] }

          v125 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v119) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v119));
          v126 = vdup_n_s8(v125 & 0x7F);
          v127 = ((_X11 >> 12) ^ (v125 >> 7)) & v121;
          v128 = *(_X11 + v127);
          v129 = vceq_s8(v128, v126);
          if (!v129)
          {
            goto LABEL_148;
          }

LABEL_145:
          v130 = v120[3];
          while (1)
          {
            v131 = (v127 + (__clz(__rbit64(v129)) >> 3)) & v121;
            if (*(v130 + 16 * v131) == v119)
            {
              break;
            }

            v129 &= ((v129 & 0x8080808080808080) - 1) & 0x8080808080808080;
            if (!v129)
            {
LABEL_148:
              while (!*&vceq_s8(v128, 0x8080808080808080))
              {
                v122 += 8;
                v127 = (v122 + v127) & v121;
                v128 = *(_X11 + v127);
                v129 = vceq_s8(v128, v126);
                if (v129)
                {
                  goto LABEL_145;
                }
              }

              goto LABEL_140;
            }
          }

          v132 = (v130 + 16 * v131);
          if (_X11 + v131)
          {
            goto LABEL_156;
          }
        }

        else if (v120[1] >= 2uLL)
        {
          v133 = *(v120 + 4);
          v132 = v120 + 2;
          v134 = &absl::lts_20240722::container_internal::kSooControl;
          if (v133 != v119)
          {
            v134 = 0;
            v132 = v110;
          }

          if (v134)
          {
LABEL_156:
            v135 = v194[6][v111];
            v136 = v132[1];
            v137 = *(v193 + 8);
            if (v135 < 1)
            {
              v143 = operations_research::sat::PresolveContext::MaxOf(*(v193 + 8), *(v194[3] + v111));
              v141 = operations_research::sat::PresolveContext::MinOf(v137, v119);
              v144 = v135 * v143;
              if ((v135 * v143) >> 64 != (v135 * v143) >> 63)
              {
                v144 = ((v143 ^ v135) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
              }

              _VF = __OFADD__(v112, v144);
              v145 = v112 + v144;
              if (_VF)
              {
                v112 = (v112 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v112 = v145;
              }

              v142 = v141 ^ v135;
            }

            else
            {
              v138 = operations_research::sat::PresolveContext::MinOf(*(v193 + 8), *(v194[3] + v111));
              v139 = (v138 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
              if ((v135 * v138) >> 64 == (v135 * v138) >> 63)
              {
                v139 = v135 * v138;
              }

              _VF = __OFADD__(v112, v139);
              v140 = v112 + v139;
              if (_VF)
              {
                v112 = (v112 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v112 = v140;
              }

              v141 = operations_research::sat::PresolveContext::MaxOf(v137, v119);
              v142 = v141;
            }

            v146 = (v142 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
            if ((v135 * v141) >> 64 == (v135 * v141) >> 63)
            {
              v146 = v135 * v141;
            }

            _VF = __OFADD__(v192, v146);
            v147 = v192 + v146;
            if (_VF)
            {
              v147 = (v192 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
            }

            v192 = v147;
            v148 = v135 - v136 * v188;
            v149 = *(v193 + 8);
            if (v148 < 1)
            {
              v154 = operations_research::sat::PresolveContext::MaxOf(*(v193 + 8), v119);
              v153 = operations_research::sat::PresolveContext::MinOf(v149, v119);
              v114 = v148 * v154;
              if ((v148 * v154) >> 64 != (v148 * v154) >> 63)
              {
                v114 = ((v154 ^ v148) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
              }

              _VF = __OFADD__(v113, v114);
              v115 = v113 + v114;
              if (_VF)
              {
                v113 = (v113 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v113 = v115;
              }

              v116 = v153 ^ v148;
            }

            else
            {
              v150 = operations_research::sat::PresolveContext::MinOf(*(v193 + 8), v119);
              v151 = (v150 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
              if ((v148 * v150) >> 64 == (v148 * v150) >> 63)
              {
                v151 = v148 * v150;
              }

              _VF = __OFADD__(v113, v151);
              v152 = v113 + v151;
              if (_VF)
              {
                v113 = (v113 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v113 = v152;
              }

              v153 = operations_research::sat::PresolveContext::MaxOf(v149, v119);
              v116 = v153;
            }

            v117 = (v116 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
            if ((v148 * v153) >> 64 == (v148 * v153) >> 63)
            {
              v117 = v148 * v153;
            }

            _VF = __OFADD__(v109, v117);
            v118 = v109 + v117;
            if (_VF)
            {
              v109 = (v109 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v109 = v118;
            }

            v110 = *(v194 + 4);
            v75 = v25;
          }
        }

LABEL_140:
        ++v111;
      }

      while (v111 < v110);
    }

    v156 = v113 < v112;
    v24 = v194;
    if (!v156 && v109 <= v192)
    {
LABEL_193:
      v157 = *(v193 + 8);
      operator new();
    }
  }

  if ((v196 & 1) != 0 && !*(v191 + 16) && !*(v189 + 16))
  {
    if (!v195)
    {
      absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(0, 0, "factor != 0");
    }

    operations_research::sat::ConstraintProto::Clear((v193 + 168));
    if (*(v193 + 228) == 12)
    {
      v76 = *(v193 + 216);
    }

    else
    {
      operations_research::sat::ConstraintProto::clear_constraint(v193 + 168);
      *(v193 + 228) = 12;
      v158 = *(v193 + 176);
      if (v158)
      {
        v158 = *(v158 & 0xFFFFFFFFFFFFFFFELL);
      }

      v76 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v158);
      *(v193 + 216) = v76;
    }

    v159 = *(v24 + 4);
    if (v159 >= 1)
    {
      for (i = 0; i < v159; ++i)
      {
        v166 = *(v24[3] + i);
        v167 = v24[6][i];
        v168 = *(v75 + 24);
        v169 = *v168;
        if (*v168 > 1uLL)
        {
          v164 = 0;
          _X12 = v168[2];
          __asm { PRFM            #4, [X12] }

          v178 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v166) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v166));
          v165 = (_X12 >> 12) ^ (v178 >> 7);
          v179 = vdup_n_s8(v178 & 0x7F);
          while (1)
          {
            v161 = v165 & v169;
            v162 = *(_X12 + v161);
            v163 = vceq_s8(v162, v179);
            if (v163)
            {
              break;
            }

LABEL_210:
            if (vceq_s8(v162, 0x8080808080808080))
            {
              goto LABEL_215;
            }

            v164 += 8;
            v165 = v164 + v161;
          }

          while (*(v168[3] + 16 * ((v161 + (__clz(__rbit64(v163)) >> 3)) & v169)) != v166)
          {
            v163 &= ((v163 & 0x8080808080808080) - 1) & 0x8080808080808080;
            if (!v163)
            {
              goto LABEL_210;
            }
          }
        }

        else if (v168[1] < 2uLL || *(v168 + 4) != v166)
        {
LABEL_215:
          v170 = *(v76 + 16);
          v171 = v170;
          if (v170 == HIDWORD(v170))
          {
            google::protobuf::RepeatedField<int>::Grow(v76 + 16, HIDWORD(v170), (HIDWORD(v170) + 1));
            v171 = *(v76 + 16);
          }

          v172 = *(v76 + 24);
          *(v76 + 16) = v171 + 1;
          *(v172 + 4 * v171) = v166;
          v174 = *(v76 + 40);
          v173 = *(v76 + 44);
          if (v174 == v173)
          {
            google::protobuf::RepeatedField<long long>::Grow(v76 + 40, v173);
            v174 = *(v76 + 40);
          }

          v175 = *(v76 + 48);
          *(v76 + 40) = v174 + 1;
          *(v175 + 8 * v174) = v167;
          v159 = *(v24 + 4);
        }
      }
    }

    operations_research::Domain::MultiplicationBy(v199, 0, -v195, &v203);
    operations_research::Domain::AdditionWith(v198, &v203, &v205, v180);
    operations_research::sat::FillDomainInProto<operations_research::sat::LinearConstraintProto>(&v205, v76);
    if (v205)
    {
      operator delete(v206);
    }

    if (v203)
    {
      operator delete(v204);
    }

    operations_research::sat::CpModelPresolver::PropagateDomainsInLinear(v193, -1, (v193 + 168));
    if (*(*(v193 + 8) + 416) == 1)
    {
      v181 = *(v75 + 32);
      *(v181 + 56) = 1;
      *(v181 + 72) = *(v181 + 64);
      v183 = *(v181 + 88);
      v182 = *(v181 + 96);
      if (v182 != v183)
      {
        v184 = *(v181 + 96);
        do
        {
          v186 = *(v184 - 24);
          v184 -= 24;
          v185 = v186;
          if (v186)
          {
            *(v182 - 16) = v185;
            operator delete(v185);
          }

          v182 = v184;
        }

        while (v184 != v183);
      }

      *(v181 + 96) = v183;
      *(v181 + 144) = 0;
    }

    if (operations_research::Domain::IsFixed(v198))
    {
      v187 = *(v193 + 8);
      if (*(v190 + 4) + 1 == *(v24 + 4))
      {
        operator new();
      }

      operator new();
    }
  }

  if (v198[0])
  {
    operator delete(v198[1]);
    if ((v199[0] & 1) == 0)
    {
LABEL_196:
      if ((v200[0] & 1) == 0)
      {
        return;
      }

      goto LABEL_197;
    }
  }

  else if ((v199[0] & 1) == 0)
  {
    goto LABEL_196;
  }

  operator delete(v199[1]);
  if (v200[0])
  {
LABEL_197:
    operator delete(v200[1]);
  }
}

void sub_23CAD3A98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, void *a22, uint64_t a23, char a24, void *__p, uint64_t a26, char a27, void *a28, uint64_t a29, char a30, void *a31)
{
  if (a24)
  {
    operator delete(__p);
    if ((a27 & 1) == 0)
    {
LABEL_3:
      if ((a30 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a27 & 1) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a28);
  if ((a30 & 1) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(a31);
  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<operations_research::sat::CpModelPresolver::DetectDominatedLinearConstraints(void)::$_0,std::allocator<operations_research::sat::CpModelPresolver::DetectDominatedLinearConstraints(void)::$_0>,void ()(int,int)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat16CpModelPresolver32DetectDominatedLinearConstraintsEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat16CpModelPresolver32DetectDominatedLinearConstraintsEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat16CpModelPresolver32DetectDominatedLinearConstraintsEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat16CpModelPresolver32DetectDominatedLinearConstraintsEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,long long> *,false>(uint64_t result, int *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 4;
    if (v12 <= 2)
    {
      break;
    }

    switch(v12)
    {
      case 3uLL:

        return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,long long> *,0>(v9, (v9 + 16), a2 - 4);
      case 4uLL:
        result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,long long> *,0>(v9, (v9 + 16), (v9 + 32));
        v27 = *(a2 - 4);
        v28 = *(v9 + 32);
        if (v27 >= v28)
        {
          if (v28 < v27)
          {
            return result;
          }

          v30 = *(a2 - 1);
          v29 = *(v9 + 40);
          if (v30 >= v29)
          {
            return result;
          }
        }

        else
        {
          v29 = *(v9 + 40);
          v30 = *(a2 - 1);
        }

        *(v9 + 32) = v27;
        *(a2 - 4) = v28;
        *(v9 + 40) = v30;
        *(a2 - 1) = v29;
        v31 = *(v9 + 32);
        v32 = *(v9 + 16);
        if (v31 >= v32)
        {
          if (v32 < v31)
          {
            return result;
          }

          v34 = *(v9 + 40);
          v33 = *(v9 + 24);
          if (v34 >= v33)
          {
            return result;
          }
        }

        else
        {
          v33 = *(v9 + 24);
          v34 = *(v9 + 40);
        }

        *(v9 + 16) = v31;
        *(v9 + 32) = v32;
        *(v9 + 24) = v34;
        *(v9 + 40) = v33;
        v35 = *v9;
        if (v31 >= *v9)
        {
          if (v35 < v31)
          {
            return result;
          }

          v36 = *(v9 + 8);
          if (v34 >= v36)
          {
            return result;
          }
        }

        else
        {
          v36 = *(v9 + 8);
        }

        *v9 = v31;
        *(v9 + 16) = v35;
        *(v9 + 8) = v34;
        *(v9 + 24) = v36;
        return result;
      case 5uLL:

        return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,long long> *,0>(v9, v9 + 16, v9 + 32, v9 + 48, a2 - 4);
    }

LABEL_11:
    if (v12 <= 23)
    {
      v37 = (v9 + 16);
      v39 = v9 == a2 || v37 == a2;
      if (a5)
      {
        if (v39)
        {
          return result;
        }

        v40 = 0;
        v41 = v9;
LABEL_56:
        v43 = v41;
        v41 = v37;
        v44 = *(v43 + 16);
        v45 = *v43;
        if (v44 >= *v43)
        {
          if (v45 < v44)
          {
            goto LABEL_55;
          }

          v46 = *(v43 + 24);
          v47 = *(v43 + 8);
          if (v46 >= v47)
          {
            goto LABEL_55;
          }
        }

        else
        {
          v46 = *(v43 + 24);
          v47 = *(v43 + 8);
        }

        *(v43 + 16) = v45;
        *(v41 + 8) = v47;
        v42 = v9;
        if (v43 == v9)
        {
          goto LABEL_54;
        }

        v48 = v40;
        while (1)
        {
          v51 = *(v9 + v48 - 16);
          if (v44 < v51)
          {
            v49 = *(v9 + v48 - 8);
          }

          else
          {
            if (v51 < v44)
            {
              v42 = v9 + v48;
LABEL_54:
              *v42 = v44;
              *(v42 + 8) = v46;
LABEL_55:
              v37 = (v41 + 16);
              v40 += 16;
              if ((v41 + 16) == a2)
              {
                return result;
              }

              goto LABEL_56;
            }

            v49 = *(v9 + v48 - 8);
            if (v46 >= v49)
            {
              v42 = v43;
              goto LABEL_54;
            }
          }

          v43 -= 16;
          v50 = v9 + v48;
          *v50 = v51;
          *(v50 + 8) = v49;
          v48 -= 16;
          if (!v48)
          {
            v42 = v9;
            goto LABEL_54;
          }
        }
      }

      if (v39)
      {
        return result;
      }

      for (i = v9 + 8; ; i += 16)
      {
        v57 = v8;
        v8 = v37;
        v58 = *(v57 + 16);
        v59 = *v57;
        if (v58 < *v57)
        {
          break;
        }

        if (v59 >= v58)
        {
          v60 = *(v57 + 24);
          if (v60 < *(v57 + 8))
          {
            goto LABEL_87;
          }
        }

LABEL_84:
        v37 = (v8 + 16);
        if ((v8 + 16) == a2)
        {
          return result;
        }
      }

      v60 = *(v57 + 24);
LABEL_87:
      for (j = i; ; j -= 16)
      {
        *(j + 8) = v59;
        *(j + 16) = *j;
        v59 = *(j - 24);
        if (v58 >= v59 && (v59 < v58 || v60 >= *(j - 16)))
        {
          break;
        }
      }

      *(j - 8) = v58;
      *j = v60;
      goto LABEL_84;
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {
        v52 = (v12 - 2) >> 1;
        v53 = v52 + 1;
        v54 = (v9 + 16 * v52);
        do
        {
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,long long> *>(v9, a3, (a2 - v9) >> 4, v54);
          v54 -= 4;
          --v53;
        }

        while (v53);
        do
        {
          result = std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::pair<int,long long> *>(v9, a2, a3, v12);
          a2 -= 4;
        }

        while (v12-- > 2);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = v9 + 16 * (v12 >> 1);
    if (v12 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,long long> *,0>((v8 + 16 * (v12 >> 1)), v8, a2 - 4);
      if (a5)
      {
        goto LABEL_20;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,long long> *,0>(v8, (v8 + 16 * (v12 >> 1)), a2 - 4);
      v15 = 16 * v13;
      v16 = (16 * v13 + v8 - 16);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,long long> *,0>((v8 + 16), v16, a2 - 8);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,long long> *,0>((v8 + 32), (v8 + 16 + v15), a2 - 12);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,long long> *,0>(v16, v14, (v8 + 16 + v15));
      v17 = *v8;
      *v8 = *v14;
      *v14 = v17;
      v18 = *(v8 + 8);
      *(v8 + 8) = *(v14 + 8);
      *(v14 + 8) = v18;
      if (a5)
      {
        goto LABEL_20;
      }
    }

    v19 = *(v8 - 16);
    if (v19 >= *v8 && (*v8 < v19 || *(v8 - 8) >= *(v8 + 8)))
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<int,long long> *,std::__less<void,void> &>(v8, a2);
      v9 = result;
LABEL_25:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }

LABEL_20:
    v20 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<int,long long> *,std::__less<void,void> &>(v8, a2);
    if ((v21 & 1) == 0)
    {
      goto LABEL_23;
    }

    v22 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,long long> *>(v8, v20);
    v9 = v20 + 16;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,long long> *>(v20 + 16, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v20;
      if (v22)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v22)
    {
LABEL_23:
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,long long> *,false>(v8, v20, a3, -v11, a5 & 1);
      v9 = v20 + 16;
      goto LABEL_25;
    }
  }

  if (v12 < 2)
  {
    return result;
  }

  if (v12 != 2)
  {
    goto LABEL_11;
  }

  v23 = *(a2 - 4);
  v24 = *v9;
  if (v23 < *v9)
  {
    v25 = *(v9 + 8);
    v26 = *(a2 - 1);
LABEL_30:
    *v9 = v23;
    *(a2 - 4) = v24;
    *(v9 + 8) = v26;
    *(a2 - 1) = v25;
    return result;
  }

  if (v24 >= v23)
  {
    v26 = *(a2 - 1);
    v25 = *(v9 + 8);
    if (v26 < v25)
    {
      goto LABEL_30;
    }
  }

  return result;
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,long long> *,0>(int *a1, int *a2, int *a3)
{
  v3 = *a2;
  v4 = *a1;
  if (*a2 < *a1 || v4 >= v3 && *(a2 + 1) < *(a1 + 1))
  {
    v5 = *a3;
    if (*a3 < v3)
    {
      v6 = *(a3 + 1);
LABEL_4:
      *a1 = v5;
      *a3 = v4;
      v7 = *(a1 + 1);
      *(a1 + 1) = v6;
      *(a3 + 1) = v7;
      return 1;
    }

    if (v3 >= v5)
    {
      v6 = *(a3 + 1);
      v16 = *(a2 + 1);
      if (v6 < v16)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v16 = *(a2 + 1);
    }

    *a1 = v3;
    *a2 = v4;
    v17 = *(a1 + 1);
    *(a1 + 1) = v16;
    *(a2 + 1) = v17;
    v18 = *a3;
    if (*a3 >= v4)
    {
      if (v4 < v18)
      {
        return 1;
      }

      v19 = *(a3 + 1);
      if (v19 >= v17)
      {
        return 1;
      }
    }

    else
    {
      v19 = *(a3 + 1);
    }

    *a2 = v18;
    *a3 = v4;
    *(a2 + 1) = v19;
    result = 1;
    *(a3 + 1) = v17;
    return result;
  }

  v9 = *a3;
  if (*a3 < v3)
  {
    v10 = *(a2 + 1);
    v11 = *(a3 + 1);
LABEL_9:
    *a2 = v9;
    *a3 = v3;
    *(a2 + 1) = v11;
    *(a3 + 1) = v10;
    v12 = *a2;
    v13 = *a1;
    if (*a2 < *a1)
    {
      v14 = *(a1 + 1);
      v15 = *(a2 + 1);
LABEL_11:
      *a1 = v12;
      *a2 = v13;
      *(a1 + 1) = v15;
      result = 1;
      *(a2 + 1) = v14;
      return result;
    }

    if (v13 >= v12)
    {
      v15 = *(a2 + 1);
      v14 = *(a1 + 1);
      if (v15 < v14)
      {
        goto LABEL_11;
      }
    }

    return 1;
  }

  if (v3 < v9)
  {
    return 0;
  }

  v11 = *(a3 + 1);
  v10 = *(a2 + 1);
  if (v11 < v10)
  {
    goto LABEL_9;
  }

  return 0;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,long long> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,long long> *,0>(a1, a2, a3);
  v11 = *a4;
  v12 = *a3;
  if (*a4 >= *a3)
  {
    if (v12 < v11)
    {
      goto LABEL_16;
    }

    v14 = *(a4 + 8);
    v13 = *(a3 + 8);
    if (v14 >= v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v13 = *(a3 + 8);
    v14 = *(a4 + 8);
  }

  *a3 = v11;
  *a4 = v12;
  *(a3 + 8) = v14;
  *(a4 + 8) = v13;
  v15 = *a3;
  v16 = *a2;
  if (*a3 >= *a2)
  {
    if (v16 < v15)
    {
      goto LABEL_16;
    }

    v18 = *(a3 + 8);
    v17 = *(a2 + 8);
    if (v18 >= v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v17 = *(a2 + 8);
    v18 = *(a3 + 8);
  }

  *a2 = v15;
  *a3 = v16;
  *(a2 + 8) = v18;
  *(a3 + 8) = v17;
  v19 = *a2;
  v20 = *a1;
  if (*a2 < *a1)
  {
    v21 = *(a1 + 8);
    v22 = *(a2 + 8);
LABEL_7:
    *a1 = v19;
    *a2 = v20;
    *(a1 + 8) = v22;
    *(a2 + 8) = v21;
    goto LABEL_16;
  }

  if (v20 >= v19)
  {
    v22 = *(a2 + 8);
    v21 = *(a1 + 8);
    if (v22 < v21)
    {
      goto LABEL_7;
    }
  }

LABEL_16:
  v23 = *a5;
  v24 = *a4;
  if (*a5 >= *a4)
  {
    if (v24 < v23)
    {
      return result;
    }

    v26 = *(a5 + 1);
    v25 = *(a4 + 8);
    if (v26 >= v25)
    {
      return result;
    }
  }

  else
  {
    v25 = *(a4 + 8);
    v26 = *(a5 + 1);
  }

  *a4 = v23;
  *a5 = v24;
  *(a4 + 8) = v26;
  *(a5 + 1) = v25;
  v27 = *a4;
  v28 = *a3;
  if (*a4 >= *a3)
  {
    if (v28 < v27)
    {
      return result;
    }

    v30 = *(a4 + 8);
    v29 = *(a3 + 8);
    if (v30 >= v29)
    {
      return result;
    }
  }

  else
  {
    v29 = *(a3 + 8);
    v30 = *(a4 + 8);
  }

  *a3 = v27;
  *a4 = v28;
  *(a3 + 8) = v30;
  *(a4 + 8) = v29;
  v31 = *a3;
  v32 = *a2;
  if (*a3 >= *a2)
  {
    if (v32 < v31)
    {
      return result;
    }

    v34 = *(a3 + 8);
    v33 = *(a2 + 8);
    if (v34 >= v33)
    {
      return result;
    }
  }

  else
  {
    v33 = *(a2 + 8);
    v34 = *(a3 + 8);
  }

  *a2 = v31;
  *a3 = v32;
  *(a2 + 8) = v34;
  *(a3 + 8) = v33;
  v35 = *a2;
  v36 = *a1;
  if (*a2 < *a1)
  {
    v37 = *(a1 + 8);
    v38 = *(a2 + 8);
LABEL_24:
    *a1 = v35;
    *a2 = v36;
    *(a1 + 8) = v38;
    *(a2 + 8) = v37;
    return result;
  }

  if (v36 >= v35)
  {
    v38 = *(a2 + 8);
    v37 = *(a1 + 8);
    if (v38 < v37)
    {
      goto LABEL_24;
    }
  }

  return result;
}

int *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<int,long long> *,std::__less<void,void> &>(int *a1, int *a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a2 - 4);
  if (*a1 < v4 || v4 >= v2 && v3 < *(a2 - 1))
  {
    i = a1;
    do
    {
      v7 = i[4];
      i += 4;
      v6 = v7;
    }

    while (v2 >= v7 && (v6 < v2 || v3 >= *(i + 1)));
  }

  else
  {
      ;
    }
  }

  if (i < a2)
  {
    for (a2 -= 4; v2 < v4 || v4 >= v2 && v3 < *(a2 + 1); a2 -= 4)
    {
      v8 = *(a2 - 4);
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
      v11 = i[4];
      i += 4;
      v9 = v11;
      v12 = *(i - 1);
      *(i - 1) = *(a2 + 1);
      *(a2 + 1) = v12;
      while (v2 >= v9 && (v9 < v2 || v3 >= *(i + 1)))
      {
        v13 = i[4];
        i += 4;
        v9 = v13;
      }

      do
      {
        do
        {
          v14 = *(a2 - 4);
          a2 -= 4;
          v10 = v14;
        }

        while (v2 < v14);
      }

      while (v10 >= v2 && v3 < *(a2 + 1));
    }

    while (i < a2);
  }

  if (i - 4 != a1)
  {
    *a1 = *(i - 4);
    *(a1 + 1) = *(i - 1);
  }

  *(i - 4) = v2;
  *(i - 1) = v3;
  return i;
}

unint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<int,long long> *,std::__less<void,void> &>(int *a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *(a1 + 1);
  while (1)
  {
    v5 = a1[v2 + 4];
    if (v5 >= v3 && (v3 < v5 || *&a1[v2 + 6] >= v4))
    {
      break;
    }

    v2 += 4;
  }

  v6 = &a1[v2 + 4];
  if (v2 * 4)
  {
    do
    {
      v8 = *(a2 - 16);
      a2 -= 16;
      v7 = v8;
    }

    while (v8 >= v3 && (v3 < v7 || *(a2 + 8) >= v4));
  }

  else
  {
LABEL_19:
    if (v6 < a2)
    {
      do
      {
        v10 = *(a2 - 16);
        a2 -= 16;
        v9 = v10;
        if (v10 < v3)
        {
          break;
        }

        if (v3 < v9)
        {
          goto LABEL_19;
        }
      }

      while (*(a2 + 8) >= v4 && v6 < a2);
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
      v15 = *(v13 + 8);
      *(v13 + 8) = *(v14 + 8);
      *(v14 + 8) = v15;
      do
      {
        do
        {
          v16 = *(v13 + 16);
          v13 += 16;
          v5 = v16;
        }

        while (v16 < v3);
      }

      while (v3 >= v5 && *(v13 + 8) < v4);
      do
      {
        v17 = *(v14 - 16);
        v14 -= 16;
        v12 = v17;
      }

      while (v17 >= v3 && (v3 < v12 || *(v14 + 8) >= v4));
    }

    while (v13 < v14);
  }

  if ((v13 - 16) != a1)
  {
    *a1 = *(v13 - 16);
    *(a1 + 1) = *(v13 - 8);
  }

  *(v13 - 16) = v3;
  *(v13 - 8) = v4;
  return v13 - 16;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,long long> *>(uint64_t a1, uint64_t a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,long long> *,0>(a1, (a1 + 16), (a2 - 16));
        return 1;
      case 4:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,long long> *,0>(a1, (a1 + 16), (a1 + 32));
        v25 = *(a2 - 16);
        v26 = *(a1 + 32);
        if (v25 >= v26)
        {
          if (v26 < v25)
          {
            return 1;
          }

          v28 = *(a2 - 8);
          v27 = *(a1 + 40);
          if (v28 >= v27)
          {
            return 1;
          }
        }

        else
        {
          v27 = *(a1 + 40);
          v28 = *(a2 - 8);
        }

        *(a1 + 32) = v25;
        *(a2 - 16) = v26;
        *(a1 + 40) = v28;
        *(a2 - 8) = v27;
        v29 = *(a1 + 32);
        v30 = *(a1 + 16);
        if (v29 >= v30)
        {
          if (v30 < v29)
          {
            return 1;
          }

          v32 = *(a1 + 40);
          v31 = *(a1 + 24);
          if (v32 >= v31)
          {
            return 1;
          }
        }

        else
        {
          v31 = *(a1 + 24);
          v32 = *(a1 + 40);
        }

        *(a1 + 16) = v29;
        *(a1 + 32) = v30;
        *(a1 + 24) = v32;
        *(a1 + 40) = v31;
        v33 = *a1;
        if (v29 >= *a1)
        {
          if (v33 < v29)
          {
            return 1;
          }

          v34 = *(a1 + 8);
          if (v32 >= v34)
          {
            return 1;
          }
        }

        else
        {
          v34 = *(a1 + 8);
        }

        *a1 = v29;
        *(a1 + 16) = v33;
        *(a1 + 8) = v32;
        *(a1 + 24) = v34;
        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,long long> *,0>(a1, a1 + 16, a1 + 32, a1 + 48, (a2 - 16));
        return 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v4 = *(a2 - 16);
      v5 = *a1;
      if (v4 >= *a1)
      {
        if (v5 < v4)
        {
          return 1;
        }

        v7 = *(a2 - 8);
        v6 = *(a1 + 8);
        if (v7 >= v6)
        {
          return 1;
        }
      }

      else
      {
        v6 = *(a1 + 8);
        v7 = *(a2 - 8);
      }

      *a1 = v4;
      *(a2 - 16) = v5;
      *(a1 + 8) = v7;
      *(a2 - 8) = v6;
      return 1;
    }
  }

  v8 = a1 + 32;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,long long> *,0>(a1, (a1 + 16), (a1 + 32));
  v11 = a1 + 48;
  if (a1 + 48 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (2)
  {
    v15 = *v11;
    v16 = *v8;
    if (*v11 >= *v8)
    {
      if (v16 < v15)
      {
        goto LABEL_17;
      }

      v17 = *(v11 + 8);
      v18 = *(v8 + 8);
      if (v17 >= v18)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v17 = *(v11 + 8);
      v18 = *(v8 + 8);
    }

    *v11 = v16;
    *(v11 + 8) = v18;
    v14 = a1;
    if (v8 == a1)
    {
      goto LABEL_16;
    }

    v19 = v12;
    while (1)
    {
      v21 = a1 + v19;
      v22 = *(a1 + v19 + 16);
      if (v15 < v22)
      {
        v20 = *(v21 + 24);
        goto LABEL_23;
      }

      if (v22 < v15)
      {
        break;
      }

      v20 = *(a1 + v19 + 24);
      if (v17 >= v20)
      {
        v14 = a1 + v19 + 32;
        goto LABEL_16;
      }

LABEL_23:
      v8 -= 16;
      *(v21 + 32) = v22;
      *(a1 + v19 + 40) = v20;
      v19 -= 16;
      if (v19 == -32)
      {
        v14 = a1;
        goto LABEL_16;
      }
    }

    v14 = v8;
LABEL_16:
    *v14 = v15;
    *(v14 + 8) = v17;
    if (++v13 != 8)
    {
LABEL_17:
      v8 = v11;
      v12 += 16;
      v11 += 16;
      if (v11 == a2)
      {
        return 1;
      }

      continue;
    }

    return v11 + 16 == a2;
  }
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,long long> *>(uint64_t result, uint64_t a2, uint64_t a3, int *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = v8[4];
        if (*v8 < v10 || v10 >= *v8 && *(v8 + 1) < *(v8 + 3))
        {
          v8 += 4;
          v7 = v9;
        }
      }

      v11 = *v8;
      v12 = *a4;
      if (*v8 >= *a4)
      {
        if (v12 >= v11)
        {
          v14 = *(v8 + 1);
          v13 = *(a4 + 1);
          if (v14 < v13)
          {
            return result;
          }
        }

        else
        {
          v13 = *(a4 + 1);
          v14 = *(v8 + 1);
        }

        *a4 = v11;
        *(a4 + 1) = v14;
        if (v5 >= v7)
        {
          while (1)
          {
            v16 = 2 * v7;
            v7 = (2 * v7) | 1;
            v15 = (result + 16 * v7);
            v17 = v16 + 2;
            if (v17 < a3)
            {
              v18 = v15[4];
              if (*v15 < v18 || v18 >= *v15 && *(v15 + 1) < *(v15 + 3))
              {
                v15 += 4;
                v7 = v17;
              }
            }

            v19 = *v15;
            if (*v15 < v12)
            {
              break;
            }

            v20 = *(v15 + 1);
            if (v12 >= v19 && v20 < v13)
            {
              break;
            }

            *v8 = v19;
            *(v8 + 1) = v20;
            v8 = v15;
            if (v5 < v7)
            {
              goto LABEL_14;
            }
          }
        }

        v15 = v8;
LABEL_14:
        *v15 = v12;
        *(v15 + 1) = v13;
      }
    }
  }

  return result;
}

int *std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::pair<int,long long> *>(int *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = 0;
    v5 = *result;
    v6 = *(result + 1);
    v7 = result;
    do
    {
      v8 = v7;
      v9 = &v7[4 * v4];
      v7 = v9 + 4;
      v10 = 2 * v4;
      v4 = (2 * v4) | 1;
      v11 = v10 + 2;
      if (v11 < a4)
      {
        v12 = v9[8];
        v13 = v9[4];
        if (v13 < v12 || v12 >= v13 && *(v9 + 3) < *(v9 + 5))
        {
          v7 = v9 + 8;
          v4 = v11;
        }
      }

      *v8 = *v7;
      *(v8 + 1) = *(v7 + 1);
    }

    while (v4 <= ((a4 - 2) >> 1));
    if (v7 == (a2 - 16))
    {
      *v7 = v5;
      *(v7 + 1) = v6;
      return result;
    }

    *v7 = *(a2 - 16);
    *(v7 + 1) = *(a2 - 8);
    *(a2 - 16) = v5;
    *(a2 - 8) = v6;
    v14 = (v7 - result + 16) >> 4;
    v15 = v14 - 2;
    if (v14 < 2)
    {
      return result;
    }

    v16 = v15 >> 1;
    v17 = &result[4 * (v15 >> 1)];
    v18 = *v17;
    v19 = *v7;
    if (*v17 >= *v7)
    {
      if (v19 < v18)
      {
        return result;
      }

      v21 = *(v17 + 1);
      v20 = *(v7 + 1);
      if (v21 >= v20)
      {
        return result;
      }
    }

    else
    {
      v20 = *(v7 + 1);
      v21 = *(v17 + 1);
    }

    *v7 = v18;
    *(v7 + 1) = v21;
    if (v15 >= 2)
    {
      while (1)
      {
        v24 = v16 - 1;
        v16 = (v16 - 1) >> 1;
        v22 = &result[4 * v16];
        v25 = *v22;
        if (*v22 < v19)
        {
          v23 = *(v22 + 1);
        }

        else
        {
          if (v19 < v25)
          {
            break;
          }

          v23 = *(v22 + 1);
          if (v23 >= v20)
          {
            break;
          }
        }

        *v17 = v25;
        *(v17 + 1) = v23;
        v17 = &result[4 * v16];
        if (v24 <= 1)
        {
          goto LABEL_16;
        }
      }
    }

    v22 = v17;
LABEL_16:
    *v22 = v19;
    *(v22 + 1) = v20;
  }

  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,BOOL>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,BOOL>>>::resize_impl(uint64_t a1, uint64_t a2)
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

int64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,BOOL>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,BOOL>>>::find_or_prepare_insert<int>@<X0>(int64_t result@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
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
    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(result, v14, (v16 + (__clz(__rbit64(v21)) >> 3)) & v3, v6, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,BOOL>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,BOOL>>>::GetPolicyFunctions(void)::value);
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
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,BOOL>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,BOOL>>>::resize_impl(result, 3);
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

__n128 std::__function::__func<operations_research::sat::CpModelPresolver::ExtractEncodingFromLinear(void)::$_0,std::allocator<operations_research::sat::CpModelPresolver::ExtractEncodingFromLinear(void)::$_0>,void ()(int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F3E210;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<operations_research::sat::CpModelPresolver::ExtractEncodingFromLinear(void)::$_0,std::allocator<operations_research::sat::CpModelPresolver::ExtractEncodingFromLinear(void)::$_0>,void ()(int,int)>::operator()(uint64_t a1, int *a2, int *a3)
{
  v3 = *a2;
  v4 = **(a1 + 8);
  v5 = *(v4 + 4 * v3);
  v6 = *(*(a1 + 16) + 8);
  v7 = *(*v6 + 48);
  v8 = v7 + 8 * *(v4 + 4 * *a3) + 7;
  if ((v7 & 1) == 0)
  {
    v8 = *v6 + 48;
  }

  v9 = *(*v8 + 60) == 26;
  v10 = 24;
  if (v9)
  {
    v10 = 16;
  }

  ++**(a1 + 8 + v10);
  **(a1 + 40) += *(*(*(a1 + 48) + 24) + 4 * v3);
  operator new();
}

void sub_23CAD56A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<operations_research::sat::CpModelPresolver::ExtractEncodingFromLinear(void)::$_0,std::allocator<operations_research::sat::CpModelPresolver::ExtractEncodingFromLinear(void)::$_0>,void ()(int,int)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat16CpModelPresolver25ExtractEncodingFromLinearEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat16CpModelPresolver25ExtractEncodingFromLinearEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat16CpModelPresolver25ExtractEncodingFromLinearEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat16CpModelPresolver25ExtractEncodingFromLinearEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *std::__function::__func<operations_research::sat::CpModelPresolver::MaybeTransferLinear1ToAnotherVariable(int)::$_0,std::allocator<operations_research::sat::CpModelPresolver::MaybeTransferLinear1ToAnotherVariable(int)::$_0>,std::pair<int,operations_research::Domain> ()(operations_research::Domain const&)>::~__func(void *a1)
{
  *a1 = &unk_284F3E290;
  operations_research::sat::LinearExpressionProto::~LinearExpressionProto((a1 + 11));
  operations_research::sat::LinearExpressionProto::~LinearExpressionProto((a1 + 1));
  return a1;
}

void std::__function::__func<operations_research::sat::CpModelPresolver::MaybeTransferLinear1ToAnotherVariable(int)::$_0,std::allocator<operations_research::sat::CpModelPresolver::MaybeTransferLinear1ToAnotherVariable(int)::$_0>,std::pair<int,operations_research::Domain> ()(operations_research::Domain const&)>::~__func(void *a1)
{
  *a1 = &unk_284F3E290;
  operations_research::sat::LinearExpressionProto::~LinearExpressionProto((a1 + 11));
  operations_research::sat::LinearExpressionProto::~LinearExpressionProto((a1 + 1));

  JUMPOUT(0x23EED9460);
}

void sub_23CAD5878(_Unwind_Exception *a1)
{
  operations_research::sat::LinearExpressionProto::~LinearExpressionProto(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<operations_research::sat::CpModelPresolver::MaybeTransferLinear1ToAnotherVariable(int)::$_0,std::allocator<operations_research::sat::CpModelPresolver::MaybeTransferLinear1ToAnotherVariable(int)::$_0>,std::pair<int,operations_research::Domain> ()(operations_research::Domain const&)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_284F3E290;
  v3 = (a2 + 11);
  operations_research::sat::LinearExpressionProto::LinearExpressionProto((a2 + 1), 0, (a1 + 8));
  return operations_research::sat::LinearExpressionProto::LinearExpressionProto(v3, 0, (a1 + 88));
}

void std::__function::__func<operations_research::sat::CpModelPresolver::MaybeTransferLinear1ToAnotherVariable(int)::$_0,std::allocator<operations_research::sat::CpModelPresolver::MaybeTransferLinear1ToAnotherVariable(int)::$_0>,std::pair<int,operations_research::Domain> ()(operations_research::Domain const&)>::destroy(uint64_t a1)
{
  operations_research::sat::LinearExpressionProto::~LinearExpressionProto((a1 + 88));

  operations_research::sat::LinearExpressionProto::~LinearExpressionProto((a1 + 8));
}

void std::__function::__func<operations_research::sat::CpModelPresolver::MaybeTransferLinear1ToAnotherVariable(int)::$_0,std::allocator<operations_research::sat::CpModelPresolver::MaybeTransferLinear1ToAnotherVariable(int)::$_0>,std::pair<int,operations_research::Domain> ()(operations_research::Domain const&)>::destroy_deallocate(uint64_t a1)
{
  operations_research::sat::LinearExpressionProto::~LinearExpressionProto((a1 + 88));
  operations_research::sat::LinearExpressionProto::~LinearExpressionProto((a1 + 8));

  operator delete(a1);
}

void std::__function::__func<operations_research::sat::CpModelPresolver::MaybeTransferLinear1ToAnotherVariable(int)::$_0,std::allocator<operations_research::sat::CpModelPresolver::MaybeTransferLinear1ToAnotherVariable(int)::$_0>,std::pair<int,operations_research::Domain> ()(operations_research::Domain const&)>::operator()(operations_research::Domain *this@<X1>, uint64_t a2@<X0>, uint64_t a3@<X8>)
{
  operations_research::Domain::ContinuousMultiplicationBy(this, **(a2 + 56), &v13);
  operations_research::Domain::Domain(&v11, *(a2 + 72));
  operations_research::Domain::AdditionWith(&v13, &v11, &v15, v5);
  if (v11)
  {
    operator delete(__p[0]);
  }

  if (v13)
  {
    operator delete(v14);
  }

  v6 = operations_research::Domain::Max(&v15);
  operations_research::Domain::Domain(&v11, 0, v6);
  operations_research::Domain::IntersectionWith(&v15, &v11, &v13);
  if (v15)
  {
    operator delete(v16);
  }

  v15 = v13;
  v16 = v14;
  v13 = 0;
  if (v11)
  {
    operator delete(__p[0]);
  }

  operations_research::Domain::Negation(&v15, &v11);
  operations_research::Domain::UnionWith(&v15, &v11, &v13);
  if (v11)
  {
    operator delete(__p[0]);
  }

  operations_research::Domain::Domain(v9, -*(a2 + 152));
  operations_research::Domain::AdditionWith(&v13, v9, v10, v7);
  operations_research::Domain::InverseMultiplicationBy(v10, **(a2 + 136), &v11);
  if (v10[0])
  {
    operator delete(v10[1]);
  }

  if (v9[0])
  {
    operator delete(v9[1]);
  }

  *a3 = **(a2 + 112);
  *(a3 + 8) = 0;
  v8 = v11;
  if (v11 < 2)
  {
LABEL_18:
    if ((v8 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_23;
  }

  if ((v11 & 1) == 0)
  {
    *(a3 + 8) = v11;
    *(a3 + 16) = *__p;
    goto LABEL_18;
  }

  absl::lts_20240722::inlined_vector_internal::Storage<operations_research::ClosedInterval,1ul,std::allocator<operations_research::ClosedInterval>>::InitFrom((a3 + 8), &v11);
  if ((v11 & 1) == 0)
  {
LABEL_19:
    if ((v13 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(__p[0]);
  if ((v13 & 1) == 0)
  {
LABEL_20:
    if ((v15 & 1) == 0)
    {
      return;
    }

LABEL_25:
    operator delete(v16);
    return;
  }

LABEL_24:
  operator delete(v14);
  if (v15)
  {
    goto LABEL_25;
  }
}

void sub_23CAD5B94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, void *a14, uint64_t a15, char a16, void *__p)
{
  v20 = v18;
  if (*v20)
  {
    operator delete(*(v17 + 16));
  }

  if (a16)
  {
    operator delete(__p);
  }

  if (*(v19 - 64))
  {
    operator delete(*(v19 - 56));
  }

  if (*(v19 - 40))
  {
    operator delete(*(v19 - 32));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<operations_research::sat::CpModelPresolver::MaybeTransferLinear1ToAnotherVariable(int)::$_0,std::allocator<operations_research::sat::CpModelPresolver::MaybeTransferLinear1ToAnotherVariable(int)::$_0>,std::pair<int,operations_research::Domain> ()(operations_research::Domain const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat16CpModelPresolver37MaybeTransferLinear1ToAnotherVariableEiE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat16CpModelPresolver37MaybeTransferLinear1ToAnotherVariableEiE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat16CpModelPresolver37MaybeTransferLinear1ToAnotherVariableEiE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat16CpModelPresolver37MaybeTransferLinear1ToAnotherVariableEiE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *std::__function::__value_func<std::pair<int,operations_research::Domain> ()(operations_research::Domain const&)>::swap[abi:ne200100](void *result, void *a2)
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

void sub_23CAD5F64(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,std::vector<int>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,std::vector<int>>>>::resize_impl(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8) & 1;
  v5 = 0;
  v2 = *(a1 + 16);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,32ul,false,false,8ul>(&v2, a1);
}

__n128 absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,std::vector<int>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,std::vector<int>>>>::transfer_slot_fn(uint64_t a1, void *a2, uint64_t a3)
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

char **std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__deque_iterator<int,int *,int &,int **,long,1024l>,false>(char **result, int *a2, int **a3, int *a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a4 == a2)
  {
    return result;
  }

  v135 = v7;
  v136 = v8;
  v11 = a4;
  v13 = a2;
  v14 = result;
  v15 = a6 - 1;
  while (1)
  {
    v16 = *a3;
    v17 = v11 - *a3;
    v18 = *v14;
    v19 = v13 - *v14;
    v20 = v19 >> 2;
    v21 = v17 + ((a3 - v14) << 7) - (v19 >> 2);
    if (v21 > 2)
    {
      break;
    }

    if (v21 < 2)
    {
      return result;
    }

    if (v21 == 2)
    {
      if (v11 == v16)
      {
        v11 = *(a3 - 1) + 1024;
      }

      v81 = *(v11 - 1);
      v82 = *v13;
      if (v81 < *v13)
      {
        *v13 = v81;
        *(v11 - 1) = v82;
      }

      return result;
    }

LABEL_10:
    if (v21 <= 23)
    {
      if (a7)
      {
        if (v13 == v11)
        {
          return result;
        }

        v84 = v13 + 1;
        while (2)
        {
          if (v84 - v18 == 4096)
          {
            v85 = *(v14 + 1);
            v14 += 8;
            v18 = v85;
            v84 = v85;
          }

          if (v84 == v11)
          {
            return result;
          }

          v86 = v14;
          if (v84 == v18)
          {
            v86 = v14 - 8;
            v87 = (*(v14 - 1) + 4092);
            v88 = *v87;
            v89 = *v84;
            if (*v84 < *v87)
            {
LABEL_136:
              v90 = v84;
              while (1)
              {
                v91 = v87;
                *v90 = v88;
                if (v87 == v13)
                {
                  break;
                }

                if (v87 == *v86)
                {
                  v92 = *(v86 - 1);
                  v86 -= 8;
                  v87 = (v92 + 4092);
                  v88 = *(v92 + 4092);
                  v90 = v91;
                  if (v89 >= v88)
                  {
                    break;
                  }
                }

                else
                {
                  --v87;
                  v88 = *(v91 - 1);
                  v90 = v91;
                  if (v89 >= v88)
                  {
                    break;
                  }
                }
              }

              *v91 = v89;
            }
          }

          else
          {
            v87 = v84 - 1;
            v88 = *(v84 - 1);
            v89 = *v84;
            if (*v84 < v88)
            {
              goto LABEL_136;
            }
          }

          ++v84;
          continue;
        }
      }

      if (v13 == v11)
      {
        return result;
      }

      if (v20 < 0)
      {
        v118 = 1022 - v20;
        v94 = ~v118;
        v95 = &v14[-8 * (v118 >> 10)];
      }

      else
      {
        v94 = v20 + 1;
        v95 = &v14[8 * ((v20 + 1) >> 10)];
      }

      v119 = *v95;
      v120 = (*v95 + 4 * (v94 & 0x3FF));
      if (v120 == v11)
      {
        return result;
      }

      while (2)
      {
        v121 = (v120 - v119) >> 2;
        if (v121 < 2)
        {
          v124 = 1024 - v121;
          v122 = ~v124;
          v123 = &v95[-8 * (v124 >> 10)];
        }

        else
        {
          v122 = v121 - 1;
          v123 = &v95[8 * ((v121 - 1) >> 10)];
        }

        v125 = *v123;
        v126 = (*v123 + 4 * (v122 & 0x3FF));
        v127 = *v120;
        v128 = *v126;
        if (*v120 < *v126)
        {
          result = v120;
          do
          {
            while (1)
            {
              v130 = v126;
              *result = v128;
              if (v126 != v125)
              {
                break;
              }

              v129 = *(v123 - 1);
              v123 -= 8;
              v125 = v129;
              v126 = v129 + 1023;
              v128 = v129[1023];
              result = v130;
              if (v127 >= v128)
              {
                goto LABEL_214;
              }
            }

            --v126;
            v128 = *(v130 - 1);
            result = v130;
          }

          while (v127 < v128);
LABEL_214:
          *v130 = v127;
          v120 = (v120 + 4);
          if (v120 - v119 == 4096)
          {
LABEL_215:
            v131 = *(v95 + 1);
            v95 += 8;
            v119 = v131;
            v120 = v131;
          }
        }

        else
        {
          v120 = (v120 + 4);
          if (v120 - v119 == 4096)
          {
            goto LABEL_215;
          }
        }

        if (v120 == v11)
        {
          return result;
        }

        continue;
      }
    }

    if (v15 == -1)
    {
      if (v13 != v11)
      {
        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__deque_iterator<int,int *,int &,int **,long,1024l>,std::__deque_iterator<int,int *,int &,int **,long,1024l>>(v14, v13, a3, v11, a3, v11, a5);
      }

      return result;
    }

    v22 = v21 >> 1;
    v23 = v20 + (v21 >> 1);
    if (v21 < 0x81)
    {
      if (v23 < 1)
      {
        v31 = (*&v14[-8 * ((1023 - v23) >> 10)] + 4 * (~(1023 - v23) & 0x3FF));
        if (v17 < 2)
        {
          goto LABEL_31;
        }

LABEL_21:
        v32 = &(*(a3 + (((v17 - 1) >> 7) & 0x1FFFFFFFFFFFFF8)))[(v17 - 1) & 0x3FF];
        v33 = *v13;
        v34 = *v31;
        v35 = *v32;
        if (*v13 >= *v31)
        {
          goto LABEL_22;
        }

LABEL_32:
        if (v35 >= v33)
        {
          *v31 = v33;
          *v13 = v34;
          if (*v32 >= v34)
          {
            goto LABEL_52;
          }

          *v13 = *v32;
        }

        else
        {
          *v31 = v35;
        }

        *v32 = v34;
      }

      else
      {
        v31 = (*&v14[(v23 >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * (v23 & 0x3FF));
        if (v17 >= 2)
        {
          goto LABEL_21;
        }

LABEL_31:
        v32 = &a3[-((1024 - v17) >> 10)][~(1024 - v17) & 0x3FF];
        v33 = *v13;
        v34 = *v31;
        v35 = *v32;
        if (*v13 < *v31)
        {
          goto LABEL_32;
        }

LABEL_22:
        if (v35 < v33)
        {
          *v13 = v35;
          *v32 = v33;
          v36 = *v31;
          if (*v13 < *v31)
          {
            *v31 = *v13;
            *v13 = v36;
            if (a7)
            {
              goto LABEL_97;
            }

            goto LABEL_92;
          }
        }
      }

LABEL_52:
      if (a7)
      {
        goto LABEL_97;
      }

      goto LABEL_92;
    }

    if (v23 < 1)
    {
      v24 = (*&v14[-8 * ((1023 - v23) >> 10)] + 4 * (~(1023 - v23) & 0x3FF));
      v25 = v17 - 2;
      if (v17 >= 2)
      {
LABEL_15:
        v26 = &(*(a3 + (((v17 - 1) >> 7) & 0x1FFFFFFFFFFFFF8)))[(v17 - 1) & 0x3FF];
        v27 = *v24;
        v28 = *v13;
        v29 = *v26;
        if (*v24 >= *v13)
        {
          goto LABEL_16;
        }

        goto LABEL_28;
      }
    }

    else
    {
      v24 = (*&v14[(v23 >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * (v23 & 0x3FF));
      v25 = v17 - 2;
      if (v17 >= 2)
      {
        goto LABEL_15;
      }
    }

    v26 = &a3[-((1024 - v17) >> 10)][~(1024 - v17) & 0x3FF];
    v27 = *v24;
    v28 = *v13;
    v29 = *v26;
    if (*v24 >= *v13)
    {
LABEL_16:
      if (v29 < v27)
      {
        *v24 = v29;
        *v26 = v27;
        v30 = *v13;
        if (*v24 < *v13)
        {
          *v13 = *v24;
          *v24 = v30;
        }
      }

      goto LABEL_37;
    }

LABEL_28:
    if (v29 >= v27)
    {
      *v13 = v27;
      *v24 = v28;
      if (*v26 >= v28)
      {
        goto LABEL_37;
      }

      *v24 = *v26;
    }

    else
    {
      *v13 = v29;
    }

    *v26 = v28;
LABEL_37:
    if (v20 < 0)
    {
      v37 = (*&v14[-8 * ((1022 - v20) >> 10)] + 4 * (~(1022 - v20) & 0x3FF));
      v38 = v22 + v20 - 1;
      v39 = v38 >> 7;
      if (v38 >= 1)
      {
LABEL_39:
        v40 = (*&v14[v39 & 0x1FFFFFFFFFFFFF8] + 4 * (v38 & 0x3FF));
        v41 = v17 - 3;
        if (v17 >= 3)
        {
          goto LABEL_40;
        }

        goto LABEL_46;
      }
    }

    else
    {
      v37 = (*&v14[((v20 + 1) >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * ((v20 + 1) & 0x3FF));
      v38 = v22 + v20 - 1;
      v39 = v38 >> 7;
      if (v38 >= 1)
      {
        goto LABEL_39;
      }
    }

    v40 = (*&v14[-8 * ((1023 - v38) >> 10)] + 4 * (~(1023 - v38) & 0x3FF));
    v41 = v17 - 3;
    if (v17 >= 3)
    {
LABEL_40:
      v42 = &(*(a3 + ((v25 >> 7) & 0x1FFFFFFFFFFFFF8)))[v25 & 0x3FF];
      v43 = *v40;
      v44 = *v37;
      v45 = *v42;
      if (*v40 >= *v37)
      {
        goto LABEL_41;
      }

      goto LABEL_47;
    }

LABEL_46:
    v42 = &a3[-((1025 - v17) >> 10)][~(1025 - v17) & 0x3FF];
    v43 = *v40;
    v44 = *v37;
    v45 = *v42;
    if (*v40 >= *v37)
    {
LABEL_41:
      if (v45 < v43)
      {
        *v40 = v45;
        *v42 = v43;
        v46 = *v37;
        if (*v40 < *v37)
        {
          *v37 = *v40;
          *v40 = v46;
        }
      }

      goto LABEL_57;
    }

LABEL_47:
    if (v45 >= v43)
    {
      *v37 = v43;
      *v40 = v44;
      if (*v42 >= v44)
      {
        goto LABEL_57;
      }

      *v40 = *v42;
    }

    else
    {
      *v37 = v45;
    }

    *v42 = v44;
LABEL_57:
    if (v20 < -1)
    {
      v47 = (*&v14[-8 * ((1021 - v20) >> 10)] + 4 * (~(1021 - v20) & 0x3FF));
      v48 = v22 + v20 + 1;
      v49 = v48 >> 7;
      if (v48 < 1)
      {
LABEL_59:
        v50 = (*&v14[-8 * ((1023 - v48) >> 10)] + 4 * (~(1023 - v48) & 0x3FF));
        if (v17 < 4)
        {
          goto LABEL_60;
        }

        goto LABEL_63;
      }
    }

    else
    {
      v47 = (*&v14[((v20 + 2) >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * ((v20 + 2) & 0x3FF));
      v48 = v22 + v20 + 1;
      v49 = v48 >> 7;
      if (v48 < 1)
      {
        goto LABEL_59;
      }
    }

    v50 = (*&v14[v49 & 0x1FFFFFFFFFFFFF8] + 4 * (v48 & 0x3FF));
    if (v17 < 4)
    {
LABEL_60:
      v51 = 1026 - v17;
      LOWORD(v41) = ~v51;
      v52 = a3[-(v51 >> 10)];
      goto LABEL_64;
    }

LABEL_63:
    v52 = *(a3 + ((v41 >> 7) & 0x1FFFFFFFFFFFFF8));
LABEL_64:
    v53 = &v52[v41 & 0x3FF];
    v54 = *v50;
    v55 = *v47;
    v56 = *v53;
    if (*v50 >= *v47)
    {
      if (v56 < v54)
      {
        *v50 = v56;
        *v53 = v54;
        v57 = *v47;
        if (*v50 < *v47)
        {
          *v47 = *v50;
          *v50 = v57;
        }
      }
    }

    else
    {
      if (v56 >= v54)
      {
        *v47 = v54;
        *v50 = v55;
        if (*v53 >= v55)
        {
          goto LABEL_73;
        }

        *v50 = *v53;
      }

      else
      {
        *v47 = v56;
      }

      *v53 = v55;
    }

LABEL_73:
    if (v38 < 1)
    {
      v58 = (*&v14[-8 * ((1023 - v38) >> 10)] + 4 * (~(1023 - v38) & 0x3FF));
      if (v23 >= 1)
      {
LABEL_75:
        v59 = (*&v14[(v23 >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * (v23 & 0x3FF));
        if (v48 >= 1)
        {
          goto LABEL_76;
        }

        goto LABEL_81;
      }
    }

    else
    {
      v58 = (*&v14[v39 & 0x1FFFFFFFFFFFFF8] + 4 * (v38 & 0x3FF));
      if (v23 >= 1)
      {
        goto LABEL_75;
      }
    }

    v59 = (*&v14[-8 * ((1023 - v23) >> 10)] + 4 * (~(1023 - v23) & 0x3FF));
    if (v48 >= 1)
    {
LABEL_76:
      v60 = (*&v14[v49 & 0x1FFFFFFFFFFFFF8] + 4 * (v48 & 0x3FF));
      v61 = *v59;
      v62 = *v58;
      v63 = *v60;
      if (*v59 >= *v58)
      {
        goto LABEL_82;
      }

      goto LABEL_77;
    }

LABEL_81:
    v60 = (*&v14[-8 * ((1023 - v48) >> 10)] + 4 * (~(1023 - v48) & 0x3FF));
    v61 = *v59;
    v62 = *v58;
    v63 = *v60;
    if (*v59 >= *v58)
    {
LABEL_82:
      if (v63 < v61)
      {
        *v59 = v63;
        *v60 = v61;
        v64 = *v58;
        if (*v59 < *v58)
        {
          *v58 = *v59;
          *v59 = v64;
        }
      }

      goto LABEL_88;
    }

LABEL_77:
    if (v63 >= v61)
    {
      *v58 = v61;
      *v59 = v62;
      if (*v60 >= v62)
      {
        goto LABEL_88;
      }

      *v59 = *v60;
    }

    else
    {
      *v58 = v63;
    }

    *v60 = v62;
LABEL_88:
    if (v23 < 1)
    {
      v67 = (*&v14[-8 * ((1023 - v23) >> 10)] + 4 * (~(1023 - v23) & 0x3FF));
      v68 = *v13;
      *v13 = *v67;
      *v67 = v68;
      if (a7)
      {
        goto LABEL_97;
      }
    }

    else
    {
      v65 = (*&v14[(v23 >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * (v23 & 0x3FF));
      v66 = *v13;
      *v13 = *v65;
      *v65 = v66;
      if (a7)
      {
        goto LABEL_97;
      }
    }

LABEL_92:
    if (v20 < 2)
    {
      if (*(*&v14[-8 * ((1024 - v20) >> 10)] + 4 * (~(1024 - v20) & 0x3FF)) >= *v13)
      {
        goto LABEL_94;
      }

LABEL_97:
      std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::__deque_iterator<int,int *,int &,int **,long,1024l>,std::__less<void,void> &>(v14, v13, a3, v11, &v132);
      v70 = v132;
      v71 = v133;
      if (v134 != 1)
      {
        goto LABEL_105;
      }

      v72 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__deque_iterator<int,int *,int &,int **,long,1024l>>(v14, v13, v132, v133);
      v73 = (v71 - *v70) >> 2;
      if (v73 < 0)
      {
        result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__deque_iterator<int,int *,int &,int **,long,1024l>>(&v70[-8 * ((1022 - v73) >> 10)], (*&v70[-8 * ((1022 - v73) >> 10)] + 4 * (~(1022 - v73) & 0x3FF)), a3, v11);
        if (!result)
        {
          goto LABEL_104;
        }

LABEL_100:
        a3 = v70;
        v11 = v71;
        if (v72)
        {
          return result;
        }

        --v15;
        if (v71 == v13)
        {
          return result;
        }
      }

      else
      {
        result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__deque_iterator<int,int *,int &,int **,long,1024l>>(&v70[8 * ((v73 + 1) >> 10)], (*&v70[8 * ((v73 + 1) >> 10)] + 4 * ((v73 + 1) & 0x3FF)), a3, v11);
        if (result)
        {
          goto LABEL_100;
        }

LABEL_104:
        if (!v72)
        {
LABEL_105:
          result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__deque_iterator<int,int *,int &,int **,long,1024l>,false>(v14, v13, v70, v71, a5, v15, a7 & 1);
          a7 = 0;
        }

        v13 = (v71 + 4);
        if (v71 + 4 - *v70 == 4096)
        {
          v74 = *(v70 + 1);
          v70 += 8;
          v13 = v74;
        }

        v14 = v70;
        --v15;
        if (v11 == v13)
        {
          return result;
        }
      }
    }

    else
    {
      if (*(*&v14[((v20 - 1) >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * ((v20 - 1) & 0x3FF)) < *v13)
      {
        goto LABEL_97;
      }

LABEL_94:
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::__deque_iterator<int,int *,int &,int **,long,1024l>,std::__less<void,void> &>(v14, v13, a3, v11);
      v14 = result;
      v13 = v69;
      a7 = 0;
      --v15;
      if (v11 == v69)
      {
        return result;
      }
    }
  }

  if (v21 == 3)
  {
    if (v20 < 0)
    {
      v75 = (*&v14[-8 * ((1022 - v20) >> 10)] + 4 * (~(1022 - v20) & 0x3FF));
      if (v11 != v16)
      {
LABEL_113:
        v76 = *v75;
        v77 = *v13;
        v78 = *(v11 - 1);
        if (*v75 >= *v13)
        {
          if (v78 < v76)
          {
            *v75 = v78;
            *(v11 - 1) = v76;
            v93 = *v13;
            if (*v75 < *v13)
            {
              *v13 = *v75;
              *v75 = v93;
            }
          }
        }

        else if (v78 >= v76)
        {
          *v13 = v76;
          *v75 = v77;
          v108 = *(v11 - 1);
          if (v108 < v77)
          {
            *v75 = v108;
            *(v11 - 1) = v77;
          }
        }

        else
        {
          *v13 = v78;
          *(v11 - 1) = v77;
        }

        return result;
      }
    }

    else
    {
      v75 = (*&v14[((v20 + 1) >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * ((v20 + 1) & 0x3FF));
      if (v11 != v16)
      {
        goto LABEL_113;
      }
    }

    v11 = *(a3 - 1) + 1024;
    goto LABEL_113;
  }

  if (v21 == 4)
  {
    if (v20 < 0)
    {
      v79 = (*&v14[-8 * ((1022 - v20) >> 10)] + 4 * (~(1022 - v20) & 0x3FF));
      if (v19 != -4)
      {
        v103 = (*&v14[-8 * ((1021 - v20) >> 10)] + 4 * (~(1021 - v20) & 0x3FF));
        if (v11 != v16)
        {
LABEL_167:
          v104 = *v79;
          v105 = *v13;
          v106 = *v103;
          if (*v79 >= *v13)
          {
            if (v106 >= v104)
            {
              v104 = *v103;
            }

            else
            {
              *v79 = v106;
              *v103 = v104;
              v107 = *v13;
              if (*v79 < *v13)
              {
                *v13 = *v79;
                *v79 = v107;
                v104 = *v103;
              }
            }

            goto LABEL_191;
          }

          if (v106 >= v104)
          {
            *v13 = v104;
            *v79 = v105;
            v104 = *v103;
            if (*v103 >= v105)
            {
              goto LABEL_191;
            }

            *v79 = v104;
          }

          else
          {
            *v13 = v106;
          }

          *v103 = v105;
          v104 = v105;
LABEL_191:
          v115 = *(v11 - 1);
          if (v115 >= v104)
          {
            return result;
          }

          *v103 = v115;
          *(v11 - 1) = v104;
          v116 = *v79;
          if (*v103 >= *v79)
          {
            return result;
          }

          *v79 = *v103;
          *v103 = v116;
          goto LABEL_194;
        }

LABEL_166:
        v11 = *(a3 - 1) + 1024;
        goto LABEL_167;
      }

      v83 = 1;
    }

    else
    {
      v79 = (*&v14[((v20 + 1) >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * ((v20 + 1) & 0x3FF));
      v83 = v20 + 2;
    }

    v103 = (*&v14[(v83 >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * (v83 & 0x3FF));
    if (v11 != v16)
    {
      goto LABEL_167;
    }

    goto LABEL_166;
  }

  if (v21 != 5)
  {
    goto LABEL_10;
  }

  if ((v20 & 0x8000000000000000) == 0)
  {
    v79 = (*&v14[((v20 + 1) >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * ((v20 + 1) & 0x3FF));
    v80 = v20 + 2;
    goto LABEL_154;
  }

  v79 = (*&v14[-8 * ((1022 - v20) >> 10)] + 4 * (~(1022 - v20) & 0x3FF));
  if (v19 == -4)
  {
    v80 = 1;
LABEL_154:
    v96 = (*&v14[(v80 >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * (v80 & 0x3FF));
    v97 = v20 + 3;
LABEL_155:
    v98 = (*&v14[(v97 >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * (v97 & 0x3FF));
    if (v11 == v16)
    {
      goto LABEL_156;
    }
  }

  else
  {
    v96 = (*&v14[-8 * ((1021 - v20) >> 10)] + 4 * (~(1021 - v20) & 0x3FF));
    if (v20 >= 0xFFFFFFFFFFFFFFFELL)
    {
      v97 = 1;
      goto LABEL_155;
    }

    v98 = (*&v14[-8 * ((1020 - v20) >> 10)] + 4 * (~(1020 - v20) & 0x3FF));
    if (v11 == v16)
    {
LABEL_156:
      v11 = *(a3 - 1) + 1024;
    }
  }

  v99 = *v79;
  v100 = *v13;
  v101 = *v96;
  if (*v79 >= *v13)
  {
    if (v101 >= v99)
    {
      v99 = *v96;
    }

    else
    {
      *v79 = v101;
      *v96 = v99;
      v102 = *v13;
      if (*v79 < *v13)
      {
        *v13 = *v79;
        *v79 = v102;
        v99 = *v96;
      }
    }
  }

  else
  {
    if (v101 < v99)
    {
      *v13 = v101;
      goto LABEL_177;
    }

    *v13 = v99;
    *v79 = v100;
    v99 = *v96;
    if (*v96 < v100)
    {
      *v79 = v99;
LABEL_177:
      *v96 = v100;
      v99 = v100;
    }
  }

  if (*v98 < v99)
  {
    *v96 = *v98;
    *v98 = v99;
    v109 = *v79;
    if (*v96 < *v79)
    {
      *v79 = *v96;
      *v96 = v109;
      v110 = *v13;
      if (*v79 < *v13)
      {
        *v13 = *v79;
        *v79 = v110;
      }
    }
  }

  v111 = *(v11 - 1);
  v112 = *v98;
  if (v111 < *v98)
  {
    *v98 = v111;
    *(v11 - 1) = v112;
    v113 = *v96;
    if (*v98 < *v96)
    {
      *v96 = *v98;
      *v98 = v113;
      v114 = *v79;
      if (*v96 < *v79)
      {
        *v79 = *v96;
        *v96 = v114;
LABEL_194:
        v117 = *v13;
        if (*v79 < *v13)
        {
          *v13 = *v79;
          *v79 = v117;
        }
      }
    }
  }

  return result;
}

char **std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::__deque_iterator<int,int *,int &,int **,long,1024l>,std::__less<void,void> &>(char **result, char *a2, char **a3, char *a4)
{
  v4 = *a2;
  v5 = *a3;
  v6 = (a4 - *a3) >> 2;
  if (v6 < 2)
  {
    v7 = *result;
    if (v4 >= *&a3[-((1024 - v6) >> 10)][4 * (~(1024 - v6) & 0x3FF)])
    {
LABEL_3:
      v8 = a2;
      do
      {
        v8 += 4;
        if (v8 - v7 == 4096)
        {
          v9 = result[1];
          ++result;
          v7 = v9;
          v8 = v9;
        }
      }

      while ((result < a3 || result == a3 && v8 < a4) && v4 >= *v8);
      goto LABEL_10;
    }
  }

  else
  {
    v7 = *result;
    if (v4 >= *&(*(a3 + (((v6 - 1) >> 7) & 0x1FFFFFFFFFFFFF8)))[4 * ((v6 - 1) & 0x3FF)])
    {
      goto LABEL_3;
    }
  }

  v8 = a2;
  do
  {
    v8 += 4;
    if (v8 - v7 == 4096)
    {
      v18 = result[1];
      ++result;
      v7 = v18;
      v8 = v18;
    }
  }

  while (v4 >= *v8);
LABEL_10:
  if (result < a3 || result == a3 && v8 < a4)
  {
    do
    {
      if (a4 == v5)
      {
        v11 = *--a3;
        v5 = v11;
        a4 = v11 + 4096;
      }

      v10 = *(a4 - 1);
      a4 -= 4;
    }

    while (v4 < v10);
  }

  while (result < a3 || result == a3 && v8 < a4)
  {
    v12 = *v8;
    *v8 = *a4;
    *a4 = v12;
    do
    {
      v8 += 4;
      if (v8 - v7 == 4096)
      {
        v13 = result[1];
        ++result;
        v7 = v13;
        v8 = v13;
      }
    }

    while (v4 >= *v8);
    do
    {
      if (a4 == v5)
      {
        v15 = *--a3;
        v5 = v15;
        a4 = v15 + 4096;
      }

      v14 = *(a4 - 1);
      a4 -= 4;
    }

    while (v4 < v14);
  }

  v16 = (v8 - v7) >> 2;
  if (v16 >= 2)
  {
    v17 = &(*(result + (((v16 - 1) >> 7) & 0x1FFFFFFFFFFFFF8)))[4 * ((v16 - 1) & 0x3FF)];
    if (v17 == a2)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  v17 = &result[-((1024 - v16) >> 10)][4 * (~(1024 - v16) & 0x3FF)];
  if (v17 != a2)
  {
LABEL_36:
    *a2 = *v17;
  }

LABEL_37:
  *v17 = v4;
  return result;
}

char **std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::__deque_iterator<int,int *,int &,int **,long,1024l>,std::__less<void,void> &>@<X0>(char **result@<X0>, char *a2@<X1>, char **a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a2;
  v6 = *result;
  v7 = a2;
  do
  {
    v7 += 4;
    if (v7 - v6 == 4096)
    {
      v9 = result[1];
      ++result;
      v6 = v9;
      v7 = v9;
    }

    v8 = *v7;
  }

  while (*v7 < v5);
  v10 = (v7 - v6) >> 2;
  if (v10 >= 2)
  {
    if (&(*(result + (((v10 - 1) >> 7) & 0x1FFFFFFFFFFFFF8)))[4 * ((v10 - 1) & 0x3FF)] == a2)
    {
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  if (&result[-((1024 - v10) >> 10)][4 * (~(1024 - v10) & 0x3FF)] != a2)
  {
LABEL_9:
    v11 = *a3;
    do
    {
      if (a4 == v11)
      {
        v13 = *--a3;
        v11 = v13;
        a4 = v13 + 4096;
      }

      v12 = *(a4 - 1);
      a4 -= 4;
    }

    while (v12 >= v5);
    goto LABEL_20;
  }

LABEL_15:
  while (result < a3 || result == a3 && v7 < a4)
  {
    if (a4 == *a3)
    {
      v15 = *--a3;
      a4 = (v15 + 4092);
      if (*(v15 + 4092) < v5)
      {
        break;
      }
    }

    else
    {
      v14 = *(a4 - 1);
      a4 -= 4;
      if (v14 < v5)
      {
        break;
      }
    }
  }

LABEL_20:
  v17 = result != a3 || v7 >= a4;
  if (result < a3)
  {
    v17 = 0;
  }

  while (result < a3 || result == a3 && v7 < a4)
  {
    *v7 = *a4;
    *a4 = v8;
    do
    {
      v7 += 4;
      if (v7 - v6 == 4096)
      {
        v18 = result[1];
        ++result;
        v6 = v18;
        v7 = v18;
      }

      v8 = *v7;
    }

    while (*v7 < v5);
    v19 = *a3;
    do
    {
      if (a4 == v19)
      {
        v21 = *--a3;
        v19 = v21;
        a4 = v21 + 4096;
      }

      v20 = *(a4 - 1);
      a4 -= 4;
    }

    while (v20 >= v5);
  }

  v22 = (v7 - v6) >> 2;
  if (v22 >= 2)
  {
    v23 = v22 - 1;
    v24 = &result[(v22 - 1) >> 10];
    v25 = &(*v24)[4 * (v23 & 0x3FF)];
    if (v25 == a2)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  v26 = 1024 - v22;
  v27 = ~v26;
  v24 = &result[-(v26 >> 10)];
  v25 = &(*v24)[4 * (v27 & 0x3FF)];
  if (v25 != a2)
  {
LABEL_43:
    *a2 = *v25;
  }

LABEL_44:
  *v25 = v5;
  *a5 = v24;
  *(a5 + 8) = v25;
  *(a5 + 16) = v17;
  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__deque_iterator<int,int *,int &,int **,long,1024l>>(char *a1, int *a2, char *a3, uint64_t a4)
{
  if (a4 == a2)
  {
    return 1;
  }

  v4 = *a3;
  v5 = a2 - *a1;
  v6 = v5 >> 2;
  v7 = ((a4 - *a3) >> 2) + ((a3 - a1) << 7) - (v5 >> 2);
  if (v7 > 2)
  {
    if (v7 != 3)
    {
      if (v7 != 4)
      {
        if (v7 != 5)
        {
          goto LABEL_22;
        }

        if (v6 < 0)
        {
          v9 = (*&a1[-8 * ((1022 - v6) >> 10)] + 4 * (~(1022 - v6) & 0x3FF));
          if (v5 != -4)
          {
            v27 = (*&a1[-8 * ((1021 - v6) >> 10)] + 4 * (~(1021 - v6) & 0x3FF));
            if (v6 < 0xFFFFFFFFFFFFFFFELL)
            {
              v29 = (*&a1[-8 * ((1020 - v6) >> 10)] + 4 * (~(1020 - v6) & 0x3FF));
              if (v4 != a4)
              {
LABEL_41:
                v30 = *v9;
                v31 = *a2;
                v32 = *v27;
                if (*v9 >= *a2)
                {
                  if (v32 >= v30)
                  {
                    v30 = *v27;
                  }

                  else
                  {
                    *v9 = v32;
                    *v27 = v30;
                    v33 = *a2;
                    if (*v9 < *a2)
                    {
                      *a2 = *v9;
                      *v9 = v33;
                      v30 = *v27;
                    }
                  }

                  goto LABEL_85;
                }

                if (v32 >= v30)
                {
                  *a2 = v30;
                  *v9 = v31;
                  v30 = *v27;
                  if (*v27 >= v31)
                  {
                    goto LABEL_85;
                  }

                  *v9 = v30;
                }

                else
                {
                  *a2 = v32;
                }

                *v27 = v31;
                v30 = v31;
LABEL_85:
                if (*v29 < v30)
                {
                  *v27 = *v29;
                  *v29 = v30;
                  v55 = *v9;
                  if (*v27 < *v9)
                  {
                    *v9 = *v27;
                    *v27 = v55;
                    v56 = *a2;
                    if (*v9 < *a2)
                    {
                      *a2 = *v9;
                      *v9 = v56;
                    }
                  }
                }

                v57 = *(a4 - 4);
                v58 = *v29;
                if (v57 >= *v29)
                {
                  return 1;
                }

                *v29 = v57;
                *(a4 - 4) = v58;
                v59 = *v27;
                if (*v29 >= *v27)
                {
                  return 1;
                }

                *v27 = *v29;
                *v29 = v59;
LABEL_98:
                v61 = *v9;
                if (*v27 >= *v9)
                {
                  return 1;
                }

                *v9 = *v27;
                *v27 = v61;
                goto LABEL_100;
              }

LABEL_40:
              a4 = *(a3 - 1) + 4096;
              goto LABEL_41;
            }

            v28 = 1;
LABEL_39:
            v29 = (*&a1[(v28 >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * (v28 & 0x3FF));
            if (v4 != a4)
            {
              goto LABEL_41;
            }

            goto LABEL_40;
          }

          v10 = 1;
        }

        else
        {
          v9 = (*&a1[((v6 + 1) >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * ((v6 + 1) & 0x3FF));
          v10 = v6 + 2;
        }

        v27 = (*&a1[(v10 >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * (v10 & 0x3FF));
        v28 = v6 + 3;
        goto LABEL_39;
      }

      if (v6 < 0)
      {
        v9 = (*&a1[-8 * ((1022 - v6) >> 10)] + 4 * (~(1022 - v6) & 0x3FF));
        if (v5 != -4)
        {
          v27 = (*&a1[-8 * ((1021 - v6) >> 10)] + 4 * (~(1021 - v6) & 0x3FF));
          if (v4 != a4)
          {
LABEL_51:
            v34 = *v9;
            v35 = *a2;
            v36 = *v27;
            if (*v9 >= *a2)
            {
              if (v36 >= v34)
              {
                v34 = *v27;
              }

              else
              {
                *v9 = v36;
                *v27 = v34;
                v37 = *a2;
                if (*v9 < *a2)
                {
                  *a2 = *v9;
                  *v9 = v37;
                  v34 = *v27;
                }
              }

              goto LABEL_96;
            }

            if (v36 >= v34)
            {
              *a2 = v34;
              *v9 = v35;
              v34 = *v27;
              if (*v27 >= v35)
              {
LABEL_96:
                v60 = *(a4 - 4);
                if (v60 >= v34)
                {
                  return 1;
                }

                *v27 = v60;
                *(a4 - 4) = v34;
                goto LABEL_98;
              }

              *v9 = v34;
            }

            else
            {
              *a2 = v36;
            }

            *v27 = v35;
            v34 = v35;
            goto LABEL_96;
          }

LABEL_50:
          a4 = *(a3 - 1) + 4096;
          goto LABEL_51;
        }

        v22 = 1;
      }

      else
      {
        v9 = (*&a1[((v6 + 1) >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * ((v6 + 1) & 0x3FF));
        v22 = v6 + 2;
      }

      v27 = (*&a1[(v22 >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * (v22 & 0x3FF));
      if (v4 != a4)
      {
        goto LABEL_51;
      }

      goto LABEL_50;
    }

    if (v6 < 0)
    {
      v9 = (*&a1[-8 * ((1022 - v6) >> 10)] + 4 * (~(1022 - v6) & 0x3FF));
      if (v4 != a4)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v9 = (*&a1[((v6 + 1) >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * ((v6 + 1) & 0x3FF));
      if (v4 != a4)
      {
LABEL_19:
        v13 = *v9;
        v14 = *a2;
        v15 = *(a4 - 4);
        if (*v9 < *a2)
        {
          if (v15 >= v13)
          {
            *a2 = v13;
            *v9 = v14;
            v38 = *(a4 - 4);
            if (v38 < v14)
            {
              *v9 = v38;
              *(a4 - 4) = v14;
            }
          }

          else
          {
            *a2 = v15;
            *(a4 - 4) = v14;
          }

          return 1;
        }

        if (v15 >= v13)
        {
          return 1;
        }

        *v9 = v15;
        *(a4 - 4) = v13;
LABEL_100:
        v62 = *a2;
        if (*v9 < *a2)
        {
          *a2 = *v9;
          *v9 = v62;
        }

        return 1;
      }
    }

    a4 = *(a3 - 1) + 4096;
    goto LABEL_19;
  }

  if (v7 < 2)
  {
    return 1;
  }

  if (v7 == 2)
  {
    if (v4 == a4)
    {
      a4 = *(a3 - 1) + 4096;
    }

    v11 = *(a4 - 4);
    v12 = *a2;
    if (v11 < *a2)
    {
      *a2 = v11;
      *(a4 - 4) = v12;
    }

    return 1;
  }

LABEL_22:
  if (v6 <= -2)
  {
    v16 = &a1[-8 * ((1021 - v6) >> 10)];
    v17 = *v16;
    v18 = (*v16 + 4 * (~(1021 - v6) & 0x3FF));
    v21 = 1022 - v6;
  }

  else
  {
    v16 = &a1[8 * ((v6 + 2) >> 10)];
    v17 = *v16;
    v18 = (*v16 + 4 * ((v6 + 2) & 0x3FF));
    v19 = __CFADD__(v6, 1);
    v20 = v6 + 1;
    if (!v19)
    {
      v23 = (*&a1[(v20 >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * (v20 & 0x3FF));
      v24 = *v23;
      v25 = *a2;
      v26 = *v18;
      if (*v23 >= *a2)
      {
        goto LABEL_60;
      }

      goto LABEL_32;
    }

    v21 = 1023;
  }

  v23 = (*&a1[-8 * (v21 >> 10)] + 4 * (~v21 & 0x3FF));
  v24 = *v23;
  v25 = *a2;
  v26 = *v18;
  if (*v23 >= *a2)
  {
LABEL_60:
    if (v26 < v24)
    {
      *v23 = v26;
      *v18 = v24;
      v39 = *a2;
      if (*v23 < *a2)
      {
        *a2 = *v23;
        *v23 = v39;
      }
    }

    goto LABEL_66;
  }

LABEL_32:
  if (v26 >= v24)
  {
    *a2 = v24;
    *v23 = v25;
    if (*v18 >= v25)
    {
      goto LABEL_66;
    }

    *v23 = *v18;
  }

  else
  {
    *a2 = v26;
  }

  *v18 = v25;
LABEL_66:
  v40 = v18 - v17;
  if (v40 < 0)
  {
    v45 = 1022 - v40;
    v42 = &v16[-8 * (v45 >> 10)];
    v43 = *v42;
    v44 = (*v42 + 4 * (~v45 & 0x3FFLL));
    if (v44 == a4)
    {
      return 1;
    }
  }

  else
  {
    v41 = v40 + 1;
    v42 = &v16[8 * (v41 >> 10)];
    v43 = *v42;
    v44 = (*v42 + 4 * (v41 & 0x3FF));
    if (v44 == a4)
    {
      return 1;
    }
  }

  v46 = 0;
  while (1)
  {
    v47 = v44;
    v48 = v42;
    v49 = v43;
    v50 = *v44;
    v51 = *v18;
    if (v50 < *v18)
    {
      v52 = v47;
      while (1)
      {
        v54 = v18;
        *v52 = v51;
        if (v18 == a2)
        {
          break;
        }

        if (v18 == v17)
        {
          v53 = *(v16 - 1);
          v16 -= 8;
          v17 = v53;
          v18 = v53 + 1023;
          v51 = v53[1023];
          v52 = v54;
          if (v50 >= v51)
          {
            break;
          }
        }

        else
        {
          --v18;
          v51 = *(v54 - 1);
          v52 = v54;
          if (v50 >= v51)
          {
            break;
          }
        }
      }

      *v54 = v50;
      if (++v46 == 8)
      {
        break;
      }
    }

    v44 = v47 + 1;
    v43 = v49;
    v42 = v48;
    if ((v47 + 1) - v49 == 4096)
    {
      v42 = v48 + 8;
      v43 = *(v48 + 1);
      v44 = v43;
    }

    result = 1;
    v17 = v49;
    v16 = v48;
    v18 = v47;
    if (v44 == a4)
    {
      return result;
    }
  }

  v63 = v47 + 1;
  if ((v47 + 1) - v49 == 4096)
  {
    v63 = *(v48 + 1);
  }

  return v63 == a4;
}

int **std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__deque_iterator<int,int *,int &,int **,long,1024l>,std::__deque_iterator<int,int *,int &,int **,long,1024l>>(char *a1, int *a2, int **a3, int *a4, int **a5, int *a6, uint64_t a7)
{
  if (a2 == a4)
  {
    return a5;
  }

  v10 = a4;
  v11 = a3;
  v14 = (a3 - a1) << 7;
  v15 = *a3;
  v16 = v14 + a4 - *a3 - ((a2 - *a1) >> 2);
  v17 = v16 - 2;
  if (v16 >= 2)
  {
    v39 = (a3 - a1) << 7;
    v18 = v17 >> 1;
    v19 = 1023 - (v17 >> 1);
    do
    {
      if (v18)
      {
        v23 = (a2 - *a1) >> 2;
        v24 = v18 + v23;
        if (v18 + v23 < 1)
        {
          v27 = v19 - v23;
          v28 = v19 - v23 + 1023;
          if (v27 >= 0)
          {
            v28 = v27;
          }

          v21 = &a1[-8 * (v28 >> 10)];
          v25 = *v21;
          v29 = v27 & 0x3FF;
          v31 = -v27;
          v30 = v31 < 0;
          v32 = v31 & 0x3FF;
          if (v30)
          {
            v33 = v29;
          }

          else
          {
            v33 = -v32;
          }

          v26 = 1023 - v33;
        }

        else
        {
          v21 = &a1[8 * (v24 >> 10)];
          v25 = *v21;
          v26 = v24 & 0x3FF;
        }

        v20 = (v25 + 4 * v26);
      }

      else
      {
        v20 = a2;
        v21 = a1;
      }

      std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__deque_iterator<int,int *,int &,int **,long,1024l>>(a1, a2, a7, v16, v21, v20);
      ++v19;
      v22 = v18-- <= 0;
    }

    while (!v22);
    v15 = *v11;
    v14 = v39;
    v16 = v39 + ((v10 - *v11) >> 2) - ((a2 - *a1) >> 2);
  }

  if (v10 == a6)
  {
    a5 = v11;
    if (v16 < 2)
    {
      return a5;
    }

    goto LABEL_31;
  }

  v34 = v10;
  a5 = v11;
  do
  {
    v35 = *v34;
    if (*v34 < *a2)
    {
      *v34++ = *a2;
      *a2 = v35;
      std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__deque_iterator<int,int *,int &,int **,long,1024l>>(a1, a2, a7, v16, a1, a2);
      v15 = *a5;
      if (v34 - *a5 != 4096)
      {
        continue;
      }
    }

    else if (++v34 - v15 != 4096)
    {
      continue;
    }

    v36 = a5[1];
    ++a5;
    v15 = v36;
    v34 = v36;
  }

  while (v34 != a6);
  v16 = v14 + ((v10 - *v11) >> 2) - ((a2 - *a1) >> 2);
  if (v16 < 2)
  {
    return a5;
  }

  do
  {
LABEL_31:
    std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::__deque_iterator<int,int *,int &,int **,long,1024l>>(a1, a2, v11, v10, a7, v16);
    if (v10 == *v11)
    {
      v38 = *--v11;
      v10 = v38 + 4096;
    }

    v10 -= 4;
    v22 = v16-- <= 2;
  }

  while (!v22);
  return a5;
}

char *std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__deque_iterator<int,int *,int &,int **,long,1024l>>(char *result, int *a2, uint64_t a3, uint64_t a4, char *a5, int *a6)
{
  if (a6 == a2)
  {
    v6 = 0;
    v7 = a4 - 2;
    if (a4 < 2)
    {
      return result;
    }
  }

  else
  {
    v6 = ((a6 - *a5) >> 2) + ((a5 - result) << 7) - ((a2 - *result) >> 2);
    v7 = a4 - 2;
    if (a4 < 2)
    {
      return result;
    }
  }

  v8 = v7 >> 1;
  if (v8 >= v6)
  {
    v9 = 2 * v6;
    v10 = (2 * v6) | 1;
    v11 = (a2 - *result) >> 2;
    v12 = v11 + v10;
    if (v11 + v10 < 1)
    {
      v20 = 1023 - v12;
      v21 = 2046 - v12;
      if (v20 >= 0)
      {
        v21 = v20;
      }

      v13 = &result[-8 * (v21 >> 10)];
      v14 = *v13;
      v22 = v20 & 0x3FF;
      v24 = -v20;
      v23 = v24 < 0;
      v25 = v24 & 0x3FF;
      if (!v23)
      {
        v22 = -v25;
      }

      v15 = (v14 + 4 * (1023 - v22));
      v16 = v9 + 2;
      if (v16 < a4)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v13 = &result[8 * (v12 >> 10)];
      v14 = *v13;
      v15 = (*v13 + 4 * (v12 & 0x3FF));
      v16 = v9 + 2;
      if (v16 < a4)
      {
LABEL_8:
        v17 = (v15 - v14) >> 2;
        if (v17 < 0)
        {
          if (*v15 < *(*&v13[-8 * ((1022 - v17) >> 10)] + 4 * (~(1022 - v17) & 0x3FF)))
          {
LABEL_10:
            if ((++v15 - v14) == 4096)
            {
              v15 = *(v13 + 1);
              v18 = *v15;
              v19 = *a6;
              if (*v15 >= *a6)
              {
                goto LABEL_26;
              }

              return result;
            }

            goto LABEL_19;
          }
        }

        else if (*v15 < *(*&v13[((v17 + 1) >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * ((v17 + 1) & 0x3FF)))
        {
          goto LABEL_10;
        }

        v16 = v10;
        v18 = *v15;
        v19 = *a6;
        if (*v15 < *a6)
        {
          return result;
        }

        while (1)
        {
LABEL_26:
          *a6 = v18;
          a6 = v15;
          if (v8 < v16)
          {
LABEL_41:
            *a6 = v19;
            return result;
          }

          v26 = (2 * v16) | 1;
          v27 = v26 + v11;
          if (v26 + v11 < 1)
          {
            v30 = 1023 - v27;
            v31 = 2046 - v27;
            if (v30 >= 0)
            {
              v31 = v30;
            }

            v28 = &result[-8 * (v31 >> 10)];
            v29 = *v28;
            v32 = v30 & 0x3FF;
            v33 = -v30;
            v23 = v33 < 0;
            v34 = v33 & 0x3FF;
            if (!v23)
            {
              v32 = -v34;
            }

            v15 = (v29 + 4 * (1023 - v32));
            v16 = 2 * v16 + 2;
            if (v16 >= a4)
            {
              goto LABEL_24;
            }
          }

          else
          {
            v28 = &result[8 * (v27 >> 10)];
            v29 = *v28;
            v15 = (*v28 + 4 * (v27 & 0x3FF));
            v16 = 2 * v16 + 2;
            if (v16 >= a4)
            {
              goto LABEL_24;
            }
          }

          v35 = (v15 - v29) >> 2;
          if (v35 < 0)
          {
            if (*v15 < *(*&v28[-8 * ((1022 - v35) >> 10)] + 4 * (~(1022 - v35) & 0x3FF)))
            {
LABEL_39:
              if ((++v15 - v29) == 4096)
              {
                v15 = *(v28 + 1);
              }

              goto LABEL_25;
            }
          }

          else if (*v15 < *(*&v28[((v35 + 1) >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * ((v35 + 1) & 0x3FF)))
          {
            goto LABEL_39;
          }

LABEL_24:
          v16 = v26;
LABEL_25:
          v18 = *v15;
          if (*v15 < v19)
          {
            goto LABEL_41;
          }
        }
      }
    }

    v16 = v10;
LABEL_19:
    v18 = *v15;
    v19 = *a6;
    if (*v15 >= *a6)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::__deque_iterator<int,int *,int &,int **,long,1024l>>(char *result, _DWORD *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6 < 2)
  {
    return result;
  }

  v6 = 0;
  v7 = *a2;
  v8 = a2;
  v9 = result;
  do
  {
    v10 = v8;
    if (v6 == -1)
    {
      v11 = -1;
      v6 = 0;
    }

    else
    {
      v12 = v6 + 1 + ((v8 - *v9) >> 2);
      if (v12 < 1)
      {
        v13 = 1023 - v12;
        v14 = 2046 - v12;
        if (v13 >= 0)
        {
          v14 = v13;
        }

        v9 -= 8 * (v14 >> 10);
        v15 = v13 & 0x3FF;
        v17 = -v13;
        v16 = v17 < 0;
        v18 = v17 & 0x3FF;
        if (v16)
        {
          v19 = v15;
        }

        else
        {
          v19 = -v18;
        }

        v8 = (*v9 + 4 * (1023 - v19));
        v11 = (2 * v6) | 1;
        v6 = 2 * v6 + 2;
        if (v6 >= a6)
        {
LABEL_3:
          v6 = v11;
          goto LABEL_4;
        }
      }

      else
      {
        v9 += 8 * (v12 >> 10);
        v8 = (*v9 + 4 * (v12 & 0x3FF));
        v11 = (2 * v6) | 1;
        v6 = 2 * v6 + 2;
        if (v6 >= a6)
        {
          goto LABEL_3;
        }
      }
    }

    v20 = (v8 - *v9) >> 2;
    if (v20 < 0)
    {
      if (*v8 >= *(*&v9[-8 * ((1022 - v20) >> 10)] + 4 * (~(1022 - v20) & 0x3FF)))
      {
        goto LABEL_3;
      }
    }

    else if (*v8 >= *(*&v9[((v20 + 1) >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * ((v20 + 1) & 0x3FF)))
    {
      goto LABEL_3;
    }

    if ((++v8 - *v9) == 4096)
    {
      v21 = *(v9 + 1);
      v9 += 8;
      v8 = v21;
    }

LABEL_4:
    *v10 = *v8;
  }

  while (v6 <= ((a6 - 2) >> 1));
  if (*a3 != a4)
  {
    v22 = (a4 - 4);
    if (v8 != (a4 - 4))
    {
      goto LABEL_25;
    }

LABEL_34:
    *v8 = v7;
    return result;
  }

  v22 = (*(a3 - 1) + 4092);
  if (v8 == v22)
  {
    goto LABEL_34;
  }

LABEL_25:
  *v8 = *v22;
  v23 = v8 + 1;
  v24 = *v9;
  if ((v23 - *v9) == 4096)
  {
    v25 = *(v9 + 1);
    v9 += 8;
    v24 = v25;
    v23 = v25;
  }

  *v22 = v7;
  if (v23 != a2)
  {
    v26 = (a2 - *result) >> 2;
    v27 = v23 - v24 + ((v9 - result) << 7) - v26;
    v28 = v27 - 2;
    if (v27 >= 2)
    {
      v29 = v28 >> 1;
      v30 = a2;
      if (v28 >= 2)
      {
        v44 = v26 + v29;
        if ((v26 + v29) < 1)
        {
          v30 = (*&result[-8 * ((1023 - v44) >> 10)] + 4 * (~(1023 - v44) & 0x3FF));
          if (v24 != v23)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v30 = (*&result[(v44 >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * (v44 & 0x3FF));
          if (v24 != v23)
          {
            goto LABEL_31;
          }
        }
      }

      else if (v24 != v23)
      {
LABEL_31:
        v33 = *(v23 - 1);
        v31 = v23 - 1;
        v32 = v33;
        v34 = *v30;
        if (*v30 >= v33)
        {
          return result;
        }

        do
        {
LABEL_42:
          *v31 = v34;
          v31 = v30;
          if (!v29)
          {
            break;
          }

          v42 = (v29 - 1) >> 1;
          v30 = a2;
          if (v29 >= 3)
          {
            v43 = v26 + v42;
            if ((v26 + v42) < 1)
            {
              v35 = 1023 - v43;
              v36 = 2046 - v43;
              if (v35 >= 0)
              {
                v36 = v35;
              }

              v37 = *&result[-8 * (v36 >> 10)];
              v38 = v35 & 0x3FF;
              v39 = -v35;
              v16 = v39 < 0;
              v40 = v39 & 0x3FF;
              if (v16)
              {
                v41 = v38;
              }

              else
              {
                v41 = -v40;
              }

              v30 = (v37 + 4 * (1023 - v41));
            }

            else
            {
              v30 = (*&result[(v43 >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * (v43 & 0x3FF));
            }
          }

          v34 = *v30;
          v29 = v42;
        }

        while (*v30 < v32);
        *v31 = v32;
        return result;
      }

      v31 = (*(v9 - 1) + 4092);
      v32 = *v31;
      v34 = *v30;
      if (*v30 >= *v31)
      {
        return result;
      }

      goto LABEL_42;
    }
  }

  return result;
}

char *std::__shuffle[abi:ne200100]<std::_ClassicAlgPolicy,std::__deque_iterator<int,int *,int &,int **,long,1024l>,std::__deque_iterator<int,int *,int &,int **,long,1024l>,operations_research::sat::ModelRandomGenerator &>(char **a1, char *a2, char *a3, uint64_t a4, void *a5)
{
  if (a4 != a2)
  {
    v6 = a2;
    v7 = a1;
    v8 = *a1;
    v9 = ((a4 - *a3) >> 2) + ((a3 - a1) << 7) - ((a2 - *a1) >> 2);
    if (v9 >= 2)
    {
      v11 = a3;
      if (*a3 == a4)
      {
        v11 = a3 - 8;
        v12 = *(a3 - 1) + 4096;
      }

      else
      {
        v12 = a4;
      }

      v13 = v12 - 4;
      while (1)
      {
        v24 = v9;
        v25 = v7 == v11;
        if (v6 >= v13)
        {
          v25 = 0;
        }

        if (v7 >= v11 && !v25)
        {
          return a3;
        }

        --v9;
        if (v24 != 1)
        {
          if (!v24)
          {
            v31 = (a5[2])(*a5);
            v8 = *v7;
            if (!v31)
            {
              goto LABEL_14;
            }

LABEL_33:
            v32 = v31 + ((v6 - v8) >> 2);
            if (v32 < 1)
            {
              v14 = 1023 - v32;
              v15 = 2046 - v32;
              if (v14 >= 0)
              {
                v15 = v14;
              }

              v16 = v7[-(v15 >> 10)];
              v17 = v14 & 0x3FF;
              v19 = -v14;
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

              v22 = &v16[4 * (1023 - v21)];
            }

            else
            {
              v22 = &(*(v7 + ((v32 >> 7) & 0x1FFFFFFFFFFFFF8)))[4 * (v32 & 0x3FF)];
            }

            v23 = *v6;
            *v6 = *v22;
            *v22 = v23;
            goto LABEL_14;
          }

          v26 = __clz(v24);
          v27 = 63;
          if (((v24 << v26) & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            v27 = 64;
          }

          v28 = v27 - v26;
          v29 = v28 >> 6;
          if ((v28 & 0x3F) != 0)
          {
            ++v29;
          }

          if (v29 <= v28)
          {
            v30 = 0xFFFFFFFFFFFFFFFFLL >> -(v28 / v29);
          }

          else
          {
            v30 = 0;
          }

          do
          {
            v31 = (a5[2])(*a5) & v30;
          }

          while (v31 >= v24);
          v8 = *v7;
          if (v31)
          {
            goto LABEL_33;
          }
        }

LABEL_14:
        v6 += 4;
        if (v6 - v8 == 4096)
        {
          v33 = v7[1];
          ++v7;
          v8 = v33;
          v6 = v33;
        }
      }
    }
  }

  return a3;
}

void std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveToFixPoint(void)::$_0 &,std::__deque_iterator<int,int *,int &,int **,long,1024l>,false>(unint64_t a1, int *a2, char *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4 == a2)
  {
    return;
  }

  v9 = a4;
  v11 = a2;
  while (1)
  {
    v16 = *a3;
    v17 = (v9 - *a3) >> 2;
    v18 = *a1;
    v19 = v11 - *a1;
    v20 = v19 >> 2;
    v21 = v17 + (&a3[-a1] << 7) - (v19 >> 2);
    if (v21 > 2)
    {
      if (v21 != 3)
      {
        if (v21 != 4)
        {
          if (v21 != 5)
          {
            goto LABEL_14;
          }

          if ((v20 & 0x8000000000000000) != 0)
          {
            v161 = (a1 - 8 * ((1022 - v20) >> 10));
            v162 = (*v161 + 4 * (~(1022 - v20) & 0x3FF));
            if (v19 != -4)
            {
              v306 = (a1 - 8 * ((1021 - v20) >> 10));
              v307 = (*v306 + 4 * (~(1021 - v20) & 0x3FF));
              if (v20 < 0xFFFFFFFFFFFFFFFELL)
              {
                v337 = 1020 - v20;
                v309 = (a1 - 8 * (v337 >> 10));
                v310 = (*v309 + 4 * (~v337 & 0x3FF));
                if (v9 != v16)
                {
                  goto LABEL_393;
                }

                goto LABEL_392;
              }

              v308 = 1;
LABEL_391:
              v309 = (a1 + 8 * (v308 >> 10));
              v310 = (*v309 + 4 * (v308 & 0x3FF));
              if (v9 != v16)
              {
LABEL_393:
                std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveToFixPoint(void)::$_0 &,std::__deque_iterator<int,int *,int &,int **,long,1024l>,0>(a1, v11, v161, v162, v306, v307, v309, v310, a3, (v9 - 4), a5);
                return;
              }

LABEL_392:
              v311 = *(a3 - 1);
              a3 -= 8;
              v9 = v311 + 4096;
              goto LABEL_393;
            }

            v163 = 1;
          }

          else
          {
            v161 = (a1 + 8 * ((v20 + 1) >> 10));
            v162 = (*v161 + 4 * ((v20 + 1) & 0x3FF));
            v163 = v20 + 2;
          }

          v306 = (a1 + 8 * (v163 >> 10));
          v307 = (*v306 + 4 * (v163 & 0x3FF));
          v308 = v20 + 3;
          goto LABEL_391;
        }

        if ((v20 & 0x8000000000000000) != 0)
        {
          v164 = (a1 - 8 * ((1022 - v20) >> 10));
          v165 = (*v164 + 4 * (~(1022 - v20) & 0x3FF));
          if (v19 != -4)
          {
            v315 = 1021 - v20;
            v312 = (a1 - 8 * (v315 >> 10));
            v313 = (*v312 + 4 * (~v315 & 0x3FF));
            if (v9 != v16)
            {
              goto LABEL_398;
            }

            goto LABEL_397;
          }

          v166 = 1;
        }

        else
        {
          v164 = (a1 + 8 * ((v20 + 1) >> 10));
          v165 = (*v164 + 4 * ((v20 + 1) & 0x3FF));
          v166 = v20 + 2;
        }

        v312 = (a1 + 8 * (v166 >> 10));
        v313 = (*v312 + 4 * (v166 & 0x3FF));
        if (v9 != v16)
        {
LABEL_398:
          std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveToFixPoint(void)::$_0 &,std::__deque_iterator<int,int *,int &,int **,long,1024l>,0>(a1, v11, v164, v165, v312, v313, a3, (v9 - 4), a5);
          return;
        }

LABEL_397:
        v314 = *(a3 - 1);
        a3 -= 8;
        v9 = v314 + 4096;
        goto LABEL_398;
      }

      if ((v20 & 0x8000000000000000) != 0)
      {
        v305 = 1022 - v20;
        v157 = (a1 - 8 * (v305 >> 10));
        v158 = (*v157 + 4 * (~v305 & 0x3FF));
        if (v9 != v16)
        {
          goto LABEL_204;
        }
      }

      else
      {
        v156 = v20 + 1;
        v157 = (a1 + 8 * (v156 >> 10));
        v158 = (*v157 + 4 * (v156 & 0x3FF));
        if (v9 != v16)
        {
LABEL_204:
          v160 = *(*(*a5 + 8) + 648);

          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveToFixPoint(void)::$_0 &,std::__deque_iterator<int,int *,int &,int **,long,1024l>,0>(a1, v11, v157, v158, a3, (v9 - 4), v160);
          return;
        }
      }

      v159 = *(a3 - 1);
      a3 -= 8;
      v9 = v159 + 4096;
      goto LABEL_204;
    }

    if (v21 < 2)
    {
      return;
    }

    if (v21 == 2)
    {
      if (v9 == v16)
      {
        v9 = *(a3 - 1) + 4096;
      }

      v167 = *(v9 - 4);
      v168 = *v11;
      v169 = *(*(*a5 + 8) + 648);
      v170 = (*(v169 + 24 * v167 + 8) - *(v169 + 24 * v167)) >> 2;
      v171 = (*(v169 + 24 * *v11 + 8) - *(v169 + 24 * *v11)) >> 2;
      if (v170 < v171 || v167 < v168 && v170 == v171)
      {
        *v11 = v167;
        *(v9 - 4) = v168;
      }

      return;
    }

LABEL_14:
    if (v21 <= 23)
    {
      break;
    }

    if (!a6)
    {
      if (v11 == v9)
      {
        return;
      }

      v194 = (v21 - 2) >> 1;
      v195 = v194;
      while (2)
      {
        if (v195)
        {
          v197 = v195 + v20;
          if ((v195 + v20) < 1)
          {
            v217 = 1023 - v197;
            v218 = 2046 - v197;
            if (v217 >= 0)
            {
              v218 = v217;
            }

            v198 = (a1 - 8 * (v218 >> 10));
            v219 = v217 & 0x3FF;
            v220 = -v217;
            v213 = v220 < 0;
            v221 = v220 & 0x3FF;
            if (v213)
            {
              v222 = v219;
            }

            else
            {
              v222 = -v221;
            }

            v199 = (*v198 + 4 * (1023 - v222));
            v200 = *a5;
            if (v199 == v11)
            {
              goto LABEL_272;
            }

LABEL_254:
            v201 = ((v198 - a1) << 7) - v20 + ((v199 - *v198) >> 2);
            if (v194 < v201)
            {
              goto LABEL_250;
            }

            v202 = (2 * v201) | 1;
            v203 = v202 + v20;
            if ((v202 + v20) < 1)
            {
              goto LABEL_260;
            }
          }

          else
          {
            v198 = (a1 + 8 * (v197 >> 10));
            v199 = (*v198 + 4 * (v197 & 0x3FF));
            v200 = *a5;
            if (v199 != v11)
            {
              goto LABEL_254;
            }

LABEL_272:
            v201 = 0;
            v202 = 1;
            v203 = v20 + 1;
            if ((v20 + 1) < 1)
            {
LABEL_260:
              v210 = 1023 - v203;
              v211 = 2046 - v203;
              if (v210 >= 0)
              {
                v211 = v210;
              }

              v204 = (a1 - 8 * (v211 >> 10));
              v205 = *v204;
              v212 = v210 & 0x3FF;
              v214 = -v210;
              v213 = v214 < 0;
              v215 = v214 & 0x3FF;
              if (!v213)
              {
                v212 = -v215;
              }

              v206 = (v205 + 4 * (1023 - v212));
              v207 = 2 * v201 + 2;
              if (v207 >= v21)
              {
LABEL_265:
                v216 = *(*(v200 + 8) + 648);
                goto LABEL_284;
              }

LABEL_257:
              v208 = (v206 - v205) >> 2;
              if (v208 < 0)
              {
                v209 = (v204[-((1022 - v208) >> 10)] + 4 * (~(1022 - v208) & 0x3FF));
              }

              else
              {
                v209 = (*(v204 + (((v208 + 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v208 + 1) & 0x3FF));
              }

              v223 = *v206;
              v224 = *v209;
              v216 = *(*(v200 + 8) + 648);
              v225 = (*(v216 + 24 * v223 + 8) - *(v216 + 24 * v223)) >> 2;
              v226 = (*(v216 + 24 * v224 + 8) - *(v216 + 24 * v224)) >> 2;
              if (v225 < v226 || (v223 < v224 ? (v227 = v225 == v226) : (v227 = 0), v227))
              {
                if ((++v206 - v205) == 4096)
                {
                  v206 = v204[1];
                }

                v202 = v207;
              }

LABEL_284:
              v228 = *v206;
              v229 = *v199;
              v230 = (*(v216 + 24 * v228 + 8) - *(v216 + 24 * v228)) >> 2;
              v231 = (*(v216 + 24 * *v199 + 8) - *(v216 + 24 * *v199)) >> 2;
              if (v230 >= v231 && (v228 >= v229 || v230 != v231))
              {
                while (2)
                {
                  *v199 = v228;
                  v199 = v206;
                  if (v194 < v202)
                  {
LABEL_249:
                    *v199 = v229;
                    break;
                  }

                  v233 = (2 * v202) | 1;
                  v234 = v233 + v20;
                  if ((v233 + v20) < 1)
                  {
                    v237 = 1023 - v234;
                    v238 = 2046 - v234;
                    if (v237 >= 0)
                    {
                      v238 = v237;
                    }

                    v235 = (a1 - 8 * (v238 >> 10));
                    v236 = *v235;
                    v239 = v237 & 0x3FF;
                    v240 = -v237;
                    v213 = v240 < 0;
                    v241 = v240 & 0x3FF;
                    if (!v213)
                    {
                      v239 = -v241;
                    }

                    v206 = (v236 + 4 * (1023 - v239));
                    v202 = 2 * v202 + 2;
                    if (v202 >= v21)
                    {
                      goto LABEL_306;
                    }

LABEL_298:
                    v242 = (v206 - v236) >> 2;
                    if (v242 < 0)
                    {
                      v243 = (v235[-((1022 - v242) >> 10)] + 4 * (~(1022 - v242) & 0x3FF));
                    }

                    else
                    {
                      v243 = (*(v235 + (((v242 + 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v242 + 1) & 0x3FF));
                    }

                    v244 = *v206;
                    v245 = *v243;
                    v246 = (*(v216 + 24 * v244 + 8) - *(v216 + 24 * v244)) >> 2;
                    v247 = (*(v216 + 24 * v245 + 8) - *(v216 + 24 * v245)) >> 2;
                    if (v246 >= v247 && (v244 >= v245 || v246 != v247))
                    {
                      goto LABEL_306;
                    }

                    if ((++v206 - v236) == 4096)
                    {
                      v206 = v235[1];
                    }
                  }

                  else
                  {
                    v235 = (a1 + 8 * (v234 >> 10));
                    v236 = *v235;
                    v206 = (*v235 + 4 * (v234 & 0x3FF));
                    v202 = 2 * v202 + 2;
                    if (v202 < v21)
                    {
                      goto LABEL_298;
                    }

LABEL_306:
                    v202 = v233;
                  }

                  v228 = *v206;
                  v249 = (*(v216 + 24 * *v206 + 8) - *(v216 + 24 * *v206)) >> 2;
                  if (v249 < v231)
                  {
                    goto LABEL_249;
                  }

                  if (v228 < v229 && v249 == v231)
                  {
                    goto LABEL_249;
                  }

                  continue;
                }
              }

LABEL_250:
              v196 = v195-- <= 0;
              if (!v196)
              {
                continue;
              }

              while (2)
              {
                v251 = 0;
                v252 = *v11;
                v253 = *a5;
                v254 = v11;
                v255 = a1;
LABEL_321:
                v256 = v254;
                if (v251 == -1)
                {
                  v257 = -1;
                  v251 = 0;
                  if (v21 > 0)
                  {
                    goto LABEL_333;
                  }

LABEL_319:
                  v251 = v257;
                }

                else
                {
                  v258 = v251 + 1 + ((v254 - *v255) >> 2);
                  if (v258 < 1)
                  {
                    v259 = 1023 - v258;
                    v260 = 2046 - v258;
                    if (v259 >= 0)
                    {
                      v260 = v259;
                    }

                    v255 -= v260 >> 10;
                    v261 = v259 & 0x3FF;
                    v262 = -v259;
                    v213 = v262 < 0;
                    v263 = v262 & 0x3FF;
                    if (v213)
                    {
                      v264 = v261;
                    }

                    else
                    {
                      v264 = -v263;
                    }

                    v254 = (*v255 + 4 * (1023 - v264));
                    v257 = (2 * v251) | 1;
                    v251 = 2 * v251 + 2;
                    if (v251 >= v21)
                    {
                      goto LABEL_319;
                    }
                  }

                  else
                  {
                    v255 += v258 >> 10;
                    v254 = (*v255 + 4 * (v258 & 0x3FF));
                    v257 = (2 * v251) | 1;
                    v251 = 2 * v251 + 2;
                    if (v251 >= v21)
                    {
                      goto LABEL_319;
                    }
                  }

LABEL_333:
                  v265 = (v254 - *v255) >> 2;
                  if (v265 < 0)
                  {
                    v266 = (v255[-((1022 - v265) >> 10)] + 4 * (~(1022 - v265) & 0x3FF));
                  }

                  else
                  {
                    v266 = (*(v255 + (((v265 + 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v265 + 1) & 0x3FF));
                  }

                  v267 = *v254;
                  v268 = *v266;
                  v269 = *(*(v253 + 8) + 648);
                  v270 = (*(v269 + 24 * v267 + 8) - *(v269 + 24 * v267)) >> 2;
                  v271 = (*(v269 + 24 * v268 + 8) - *(v269 + 24 * v268)) >> 2;
                  if (v270 >= v271 && (v267 >= v268 || v270 != v271))
                  {
                    goto LABEL_319;
                  }

                  if ((++v254 - *v255) == 4096)
                  {
                    v273 = v255[1];
                    ++v255;
                    v254 = v273;
                  }
                }

                *v256 = *v254;
                if (v251 > ((v21 - 2) >> 1))
                {
                  if (v16 != v9)
                  {
                    v274 = (v9 - 4);
                    if (v254 != (v9 - 4))
                    {
                      goto LABEL_346;
                    }

LABEL_378:
                    *v254 = v252;
                    goto LABEL_379;
                  }

                  v274 = (*(a3 - 1) + 4092);
                  if (v254 == v274)
                  {
                    goto LABEL_378;
                  }

LABEL_346:
                  *v254 = *v274;
                  v275 = (v254 + 1);
                  v276 = *v255;
                  if (v275 - *v255 == 4096)
                  {
                    v277 = v255[1];
                    ++v255;
                    v276 = v277;
                    v275 = v277;
                  }

                  *v274 = v252;
                  if (v275 != v11)
                  {
                    v278 = ((v275 - v276) >> 2) - v20 + ((v255 - a1) << 7);
                    v279 = v278 - 2;
                    if (v278 >= 2)
                    {
                      v280 = v279 >> 1;
                      v281 = v11;
                      if (v279 < 2)
                      {
                        goto LABEL_353;
                      }

                      v282 = v280 + v20;
                      if ((v280 + v20) < 1)
                      {
                        v281 = (*(a1 - 8 * ((1023 - v282) >> 10)) + 4 * (~(1023 - v282) & 0x3FF));
                        if (v276 == v275)
                        {
                          goto LABEL_354;
                        }
                      }

                      else
                      {
                        v281 = (*(a1 + ((v282 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v282 & 0x3FF));
LABEL_353:
                        if (v276 == v275)
                        {
LABEL_354:
                          v275 = *(v255 - 1) + 4096;
                        }
                      }

                      v283 = *v281;
                      v284 = *(v275 - 4);
                      v285 = *(*(*a5 + 8) + 648);
                      v286 = (*(v285 + 24 * v283 + 8) - *(v285 + 24 * v283)) >> 2;
                      v287 = (*(v285 + 24 * v284 + 8) - *(v285 + 24 * v284)) >> 2;
                      if (v286 < v287 || v283 < v284 && v286 == v287)
                      {
                        *(v275 - 4) = v283;
                        if (v279 >= 2)
                        {
                          while (1)
                          {
                            v288 = v280 - 1;
                            v289 = (v280 - 1) >> 1;
                            v290 = v11;
                            if (v280 >= 3)
                            {
                              v291 = v289 + v20;
                              if ((v289 + v20) < 1)
                              {
                                v292 = 1023 - v291;
                                v293 = 2046 - v291;
                                if (v292 >= 0)
                                {
                                  v293 = v292;
                                }

                                v294 = *(a1 - 8 * (v293 >> 10));
                                v295 = v292 & 0x3FF;
                                v296 = -v292;
                                v213 = v296 < 0;
                                v297 = v296 & 0x3FF;
                                if (v213)
                                {
                                  v298 = v295;
                                }

                                else
                                {
                                  v298 = -v297;
                                }

                                v290 = (v294 + 4 * (1023 - v298));
                              }

                              else
                              {
                                v290 = (*(a1 + ((v291 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v291 & 0x3FF));
                              }
                            }

                            v299 = *v290;
                            v300 = (*(v285 + 24 * *v290 + 8) - *(v285 + 24 * *v290)) >> 2;
                            if (v300 >= v287 && (v299 >= v284 || v300 != v287))
                            {
                              break;
                            }

                            *v281 = v299;
                            v280 = v289;
                            v281 = v290;
                            if (v288 <= 1)
                            {
                              goto LABEL_376;
                            }
                          }
                        }

                        v290 = v281;
LABEL_376:
                        *v290 = v284;
                      }
                    }
                  }

LABEL_379:
                  if (v16 == v9)
                  {
                    v302 = *(a3 - 1);
                    a3 -= 8;
                    v16 = v302;
                    v9 = (v302 + 1024);
                  }

                  v9 -= 4;
                  v196 = v21-- <= 2;
                  if (v196)
                  {
                    return;
                  }

                  continue;
                }

                goto LABEL_321;
              }
            }
          }
        }

        else
        {
          v201 = 0;
          v200 = *a5;
          v199 = v11;
          v202 = 1;
          v203 = v20 + 1;
          if ((v20 + 1) < 1)
          {
            goto LABEL_260;
          }
        }

        break;
      }

      v204 = (a1 + 8 * (v203 >> 10));
      v205 = *v204;
      v206 = (*v204 + 4 * (v203 & 0x3FF));
      v207 = 2 * v201 + 2;
      if (v207 >= v21)
      {
        goto LABEL_265;
      }

      goto LABEL_257;
    }

    v22 = v21 >> 1;
    v23 = v20 + (v21 >> 1);
    if (v21 < 0x81)
    {
      if (v23 < 1)
      {
        v45 = 1023 - v23;
        v28 = (a1 - 8 * (v45 >> 10));
        v29 = (*v28 + 4 * (~v45 & 0x3FF));
        if (v17 < 2)
        {
          goto LABEL_30;
        }

LABEL_22:
        v30 = &a3[8 * ((v17 - 1) >> 10)];
        v31 = (*v30 + 4 * ((v17 - 1) & 0x3FF));
      }

      else
      {
        v28 = (a1 + 8 * (v23 >> 10));
        v29 = (*v28 + 4 * (v23 & 0x3FF));
        if (v17 >= 2)
        {
          goto LABEL_22;
        }

LABEL_30:
        v30 = &a3[-8 * ((1024 - v17) >> 10)];
        v31 = (*v30 + 4 * (~(1024 - v17) & 0x3FF));
      }

      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveToFixPoint(void)::$_0 &,std::__deque_iterator<int,int *,int &,int **,long,1024l>,0>(v28, v29, a1, v11, v30, v31, *(*(*a5 + 8) + 648));
      --a6;
      if (a7)
      {
        goto LABEL_61;
      }

      goto LABEL_32;
    }

    if (v23 < 1)
    {
      v32 = 1023 - v23;
      v24 = (a1 - 8 * (v32 >> 10));
      v25 = (*v24 + 4 * (~v32 & 0x3FF));
      if (v17 >= 2)
      {
LABEL_19:
        v26 = &a3[8 * ((v17 - 1) >> 10)];
        v27 = (*v26 + 4 * ((v17 - 1) & 0x3FF));
        goto LABEL_25;
      }
    }

    else
    {
      v24 = (a1 + 8 * (v23 >> 10));
      v25 = (*v24 + 4 * (v23 & 0x3FF));
      if (v17 >= 2)
      {
        goto LABEL_19;
      }
    }

    v26 = &a3[-8 * ((1024 - v17) >> 10)];
    v27 = (*v26 + 4 * (~(1024 - v17) & 0x3FF));
LABEL_25:
    std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveToFixPoint(void)::$_0 &,std::__deque_iterator<int,int *,int &,int **,long,1024l>,0>(a1, v11, v24, v25, v26, v27, *(*(*a5 + 8) + 648));
    v33 = a7;
    v34 = (v11 - *a1) >> 2;
    if (v34 < 0)
    {
      v35 = (a1 - 8 * ((1022 - v34) >> 10));
      v36 = (*v35 + 4 * (~(1022 - v34) & 0x3FF));
      v37 = v22 - 1;
      v38 = v34 + v22 - 1;
      if (v38 >= 1)
      {
LABEL_27:
        v39 = (a1 + 8 * (v38 >> 10));
        v40 = (*v39 + 4 * (v38 & 0x3FF));
        v41 = (v9 - *a3) >> 2;
        if (v41 >= 3)
        {
          goto LABEL_28;
        }

        goto LABEL_42;
      }
    }

    else
    {
      v35 = (a1 + 8 * ((v34 + 1) >> 10));
      v36 = (*v35 + 4 * ((v34 + 1) & 0x3FF));
      v37 = v22 - 1;
      v38 = v34 + v22 - 1;
      if (v38 >= 1)
      {
        goto LABEL_27;
      }
    }

    v57 = 1023 - v38;
    v39 = (a1 - 8 * (v57 >> 10));
    v40 = (*v39 + 4 * (~v57 & 0x3FF));
    v41 = (v9 - *a3) >> 2;
    if (v41 >= 3)
    {
LABEL_28:
      v42 = v41 - 2;
      v43 = &a3[8 * (v42 >> 10)];
      v44 = (*v43 + 4 * (v42 & 0x3FF));
      goto LABEL_43;
    }

LABEL_42:
    v58 = 1025 - v41;
    v43 = &a3[-8 * (v58 >> 10)];
    v44 = (*v43 + 4 * (~v58 & 0x3FF));
LABEL_43:
    std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveToFixPoint(void)::$_0 &,std::__deque_iterator<int,int *,int &,int **,long,1024l>,0>(v35, v36, v39, v40, v43, v44, *(*(*a5 + 8) + 648));
    v59 = (v11 - *a1) >> 2;
    if (v59 < -1)
    {
      v60 = (a1 - 8 * ((1021 - v59) >> 10));
      v61 = (*v60 + 4 * (~(1021 - v59) & 0x3FF));
      v62 = v22 + 1;
      v63 = v59 + v22 + 1;
      if (v63 < 1)
      {
LABEL_45:
        v64 = 1023 - v63;
        v65 = (a1 - 8 * (v64 >> 10));
        v66 = (*v65 + 4 * (~v64 & 0x3FF));
        v67 = (v9 - *a3) >> 2;
        if (v67 < 4)
        {
          goto LABEL_46;
        }

        goto LABEL_49;
      }
    }

    else
    {
      v60 = (a1 + 8 * ((v59 + 2) >> 10));
      v61 = (*v60 + 4 * ((v59 + 2) & 0x3FF));
      v62 = v22 + 1;
      v63 = v59 + v22 + 1;
      if (v63 < 1)
      {
        goto LABEL_45;
      }
    }

    v65 = (a1 + 8 * (v63 >> 10));
    v66 = (*v65 + 4 * (v63 & 0x3FF));
    v67 = (v9 - *a3) >> 2;
    if (v67 < 4)
    {
LABEL_46:
      v68 = 1026 - v67;
      v69 = &a3[-8 * (v68 >> 10)];
      v70 = (*v69 + 4 * (~v68 & 0x3FF));
      goto LABEL_50;
    }

LABEL_49:
    v71 = v67 - 3;
    v69 = &a3[8 * (v71 >> 10)];
    v70 = (*v69 + 4 * (v71 & 0x3FF));
LABEL_50:
    std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveToFixPoint(void)::$_0 &,std::__deque_iterator<int,int *,int &,int **,long,1024l>,0>(v60, v61, v65, v66, v69, v70, *(*(*a5 + 8) + 648));
    v72 = (v11 - *a1) >> 2;
    v73 = v72 + v37;
    if ((v72 + v37) < 1)
    {
      v82 = 1023 - v73;
      v74 = (a1 - 8 * (v82 >> 10));
      v75 = (*v74 + 4 * (~v82 & 0x3FF));
      a7 = v33;
      v76 = v72 + v22;
      if ((v72 + v22) >= 1)
      {
LABEL_52:
        v77 = (a1 + 8 * (v76 >> 10));
        v78 = (*v77 + 4 * (v76 & 0x3FF));
        v79 = v72 + v62;
        if (v79 >= 1)
        {
          goto LABEL_53;
        }

        goto LABEL_56;
      }
    }

    else
    {
      v74 = (a1 + 8 * (v73 >> 10));
      v75 = (*v74 + 4 * (v73 & 0x3FF));
      a7 = v33;
      v76 = v72 + v22;
      if ((v72 + v22) >= 1)
      {
        goto LABEL_52;
      }
    }

    v83 = 1023 - v76;
    v77 = (a1 - 8 * (v83 >> 10));
    v78 = (*v77 + 4 * (~v83 & 0x3FF));
    v79 = v72 + v62;
    if (v79 >= 1)
    {
LABEL_53:
      v80 = (a1 + 8 * (v79 >> 10));
      v81 = (*v80 + 4 * (v79 & 0x3FF));
      goto LABEL_57;
    }

LABEL_56:
    v84 = 1023 - v79;
    v80 = (a1 - 8 * (v84 >> 10));
    v81 = (*v80 + 4 * (~v84 & 0x3FF));
LABEL_57:
    std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveToFixPoint(void)::$_0 &,std::__deque_iterator<int,int *,int &,int **,long,1024l>,0>(v74, v75, v77, v78, v80, v81, *(*(*a5 + 8) + 648));
    v85 = v22 + ((v11 - *a1) >> 2);
    if (v85 < 1)
    {
      v88 = (*(a1 - 8 * ((1023 - v85) >> 10)) + 4 * (~(1023 - v85) & 0x3FF));
      v89 = *v11;
      *v11 = *v88;
      *v88 = v89;
      --a6;
      if (a7)
      {
LABEL_61:
        v51 = *(*(*a5 + 8) + 648);
        v46 = *a1;
        v53 = (*(v51 + 24 * *v11 + 8) - *(v51 + 24 * *v11)) >> 2;
        v50 = *v11;
        goto LABEL_62;
      }
    }

    else
    {
      v86 = (*(a1 + ((v85 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v85 & 0x3FF));
      v87 = *v11;
      *v11 = *v86;
      *v86 = v87;
      --a6;
      if (a7)
      {
        goto LABEL_61;
      }
    }

LABEL_32:
    v46 = *a1;
    v47 = (v11 - *a1) >> 2;
    if (v47 < 2)
    {
      v48 = (*(a1 - 8 * ((1024 - v47) >> 10)) + 4 * (~(1024 - v47) & 0x3FF));
    }

    else
    {
      v48 = (*(a1 + (((v47 - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v47 - 1) & 0x3FF));
    }

    v49 = *v48;
    v50 = *v11;
    v51 = *(*(*a5 + 8) + 648);
    v52 = (*(v51 + 24 * v49 + 8) - *(v51 + 24 * v49)) >> 2;
    v53 = (*(v51 + 24 * v50 + 8) - *(v51 + 24 * v50)) >> 2;
    if (v52 >= v53 && (v49 >= v50 || v52 != v53))
    {
      v54 = *a3;
      v55 = (v9 - *a3) >> 2;
      if (v55 < 2)
      {
        v56 = (*&a3[-8 * ((1024 - v55) >> 10)] + 4 * (~(1024 - v55) & 0x3FF));
      }

      else
      {
        v56 = (*&a3[((v55 - 1) >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * ((v55 - 1) & 0x3FF));
      }

      v130 = *v56;
      v131 = (*(v51 + 24 * v130 + 8) - *(v51 + 24 * v130)) >> 2;
      if (v53 < v131 || v50 < v130 && v53 == v131)
      {
        v13 = v11;
        do
        {
          if (++v13 - v46 == 4096)
          {
            v132 = *(a1 + 8);
            a1 += 8;
            v46 = v132;
            v13 = v132;
          }

          v133 = (*(v51 + 24 * *v13 + 8) - *(v51 + 24 * *v13)) >> 2;
          if (v53 < v133)
          {
            break;
          }
        }

        while (v50 >= *v13 || v53 != v133);
      }

      else
      {
        v13 = v11;
        do
        {
          if (++v13 - v46 == 4096)
          {
            v135 = *(a1 + 8);
            a1 += 8;
            v46 = v135;
            v13 = v135;
          }

          if (a1 >= a3 && (a1 != a3 || v13 >= v9))
          {
            break;
          }

          v136 = (*(v51 + 24 * *v13 + 8) - *(v51 + 24 * *v13)) >> 2;
          if (v53 < v136)
          {
            break;
          }
        }

        while (v50 >= *v13 || v53 != v136);
      }

      if (a1 < a3 || a1 == a3 && v13 < v9)
      {
        v138 = a3;
        v139 = v9;
        do
        {
          if (v139 == v54)
          {
            v140 = *(v138 - 1);
            v138 -= 8;
            v54 = v140;
            v139 = v140 + 1024;
          }

          v142 = *--v139;
          v141 = v142;
          v143 = (*(v51 + 24 * v142 + 8) - *(v51 + 24 * v142)) >> 2;
        }

        while (v53 < v143 || v50 < v141 && v53 == v143);
      }

      else
      {
        v138 = a3;
        v139 = v9;
      }

      while (a1 < v138 || a1 == v138 && v13 < v139)
      {
        v145 = *v13;
        *v13 = *v139;
        *v139 = v145;
        do
        {
          if (++v13 - v46 == 4096)
          {
            v146 = *(a1 + 8);
            a1 += 8;
            v46 = v146;
            v13 = v146;
          }

          v147 = (*(v51 + 24 * *v13 + 8) - *(v51 + 24 * *v13)) >> 2;
          if (v53 < v147)
          {
            break;
          }
        }

        while (v50 >= *v13 || v53 != v147);
        do
        {
          if (v139 == v54)
          {
            v149 = *(v138 - 1);
            v138 -= 8;
            v54 = v149;
            v139 = v149 + 1024;
          }

          v151 = *--v139;
          v150 = v151;
          v152 = (*(v51 + 24 * v151 + 8) - *(v51 + 24 * v151)) >> 2;
        }

        while (v53 < v152 || v50 < v150 && v53 == v152);
      }

      v154 = (v13 - v46) >> 2;
      if (v154 < 2)
      {
        v155 = (*(a1 - 8 * ((1024 - v154) >> 10)) + 4 * (~(1024 - v154) & 0x3FF));
        if (v155 != v11)
        {
          goto LABEL_199;
        }
      }

      else
      {
        v155 = (*(a1 + (((v154 - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v154 - 1) & 0x3FF));
        if (v155 == v11)
        {
          goto LABEL_200;
        }

LABEL_199:
        *v11 = *v155;
      }

LABEL_200:
      a7 = 0;
      *v155 = v50;
      goto LABEL_6;
    }

LABEL_62:
    v90 = a1;
    v91 = v11;
    do
    {
      if (++v91 - v46 == 4096)
      {
        v92 = v90[1];
        ++v90;
        v46 = v92;
        v91 = v92;
      }

      v93 = *v91;
      v94 = (*(v51 + 24 * *v91 + 8) - *(v51 + 24 * *v91)) >> 2;
    }

    while (v53 > v94 || v93 < v50 && v53 == v94);
    v96 = (v91 - v46) >> 2;
    if (v96 < 2)
    {
      v106 = v90[-((1024 - v96) >> 10)] + 4 * (~(1024 - v96) & 0x3FF);
      v98 = a3;
      v99 = v9;
      if (v106 != v11)
      {
LABEL_72:
        v100 = *a3;
        v98 = a3;
        v99 = v9;
        do
        {
          if (v99 == v100)
          {
            v101 = *(v98 - 1);
            v98 -= 8;
            v100 = v101;
            v99 = v101 + 1024;
          }

          v103 = *--v99;
          v102 = v103;
          v104 = (*(v51 + 24 * v103 + 8) - *(v51 + 24 * v103)) >> 2;
          if (v53 > v104)
          {
            break;
          }
        }

        while (v102 >= v50 || v53 != v104);
        goto LABEL_91;
      }
    }

    else
    {
      v97 = *(v90 + (((v96 - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v96 - 1) & 0x3FF);
      v98 = a3;
      v99 = v9;
      if (v97 != v11)
      {
        goto LABEL_72;
      }
    }

    do
    {
      if (v90 >= v98 && (v90 != v98 || v91 >= v99))
      {
        break;
      }

      if (v99 == *v98)
      {
        v107 = *(v98 - 1);
        v98 -= 8;
        v99 = (v107 + 4096);
      }

      v109 = *--v99;
      v108 = v109;
      v110 = (*(v51 + 24 * v109 + 8) - *(v51 + 24 * v109)) >> 2;
      if (v53 > v110)
      {
        break;
      }
    }

    while (v108 >= v50 || v53 != v110);
LABEL_91:
    v112 = v90 != v98 || v91 >= v99;
    if (v90 < v98)
    {
      v112 = 0;
    }

    while (v90 < v98 || v90 == v98 && v91 < v99)
    {
      *v91 = *v99;
      *v99 = v93;
      do
      {
        if (++v91 - v46 == 4096)
        {
          v113 = v90[1];
          ++v90;
          v46 = v113;
          v91 = v113;
        }

        v93 = *v91;
        v114 = (*(v51 + 24 * *v91 + 8) - *(v51 + 24 * *v91)) >> 2;
      }

      while (v53 > v114 || v93 < v50 && v53 == v114);
      v116 = *v98;
      do
      {
        if (v99 == v116)
        {
          v117 = *(v98 - 1);
          v98 -= 8;
          v116 = v117;
          v99 = v117 + 1024;
        }

        v119 = *--v99;
        v118 = v119;
        v120 = (*(v51 + 24 * v119 + 8) - *(v51 + 24 * v119)) >> 2;
        if (v53 > v120)
        {
          break;
        }
      }

      while (v118 >= v50 || v53 != v120);
    }

    v122 = a7;
    v123 = (v91 - v46) >> 2;
    if (v123 >= 2)
    {
      v124 = v123 - 1;
      v14 = &v90[v124 >> 10];
      v125 = (*v14 + 4 * (v124 & 0x3FF));
      if (v125 == v11)
      {
        goto LABEL_125;
      }

LABEL_124:
      *v11 = *v125;
      goto LABEL_125;
    }

    v126 = 1024 - v123;
    v14 = &v90[-(v126 >> 10)];
    v125 = (*v14 + 4 * (~v126 & 0x3FF));
    if (v125 != v11)
    {
      goto LABEL_124;
    }

LABEL_125:
    *v125 = v50;
    if (!v112)
    {
      goto LABEL_135;
    }

    v127 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveToFixPoint(void)::$_0 &,std::__deque_iterator<int,int *,int &,int **,long,1024l>>(a1, v11, v14, v125, a5);
    v128 = (v125 - *v14) >> 2;
    if (v128 < 0)
    {
      if (!std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveToFixPoint(void)::$_0 &,std::__deque_iterator<int,int *,int &,int **,long,1024l>>((v14 - 8 * ((1022 - v128) >> 10)), (*(v14 - 8 * ((1022 - v128) >> 10)) + 4 * (~(1022 - v128) & 0x3FF)), a3, v9, a5))
      {
LABEL_131:
        if (v127)
        {
          v13 = v125 + 1;
          if ((v125 - *v14 + 4) == 4096)
          {
            v129 = *(v14 + 8);
            v14 += 8;
            v13 = v129;
          }

          a1 = v14;
          a7 = v122;
          goto LABEL_6;
        }

LABEL_135:
        std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveToFixPoint(void)::$_0 &,std::__deque_iterator<int,int *,int &,int **,long,1024l>,false>(a1, v11, v14, v125, a5, a6, v122 & 1);
        v13 = v125 + 1;
        if ((v125 - *v14 + 4) == 4096)
        {
          a7 = 0;
          v15 = *(v14 + 8);
          v14 += 8;
          v13 = v15;
        }

        else
        {
          a7 = 0;
        }

        a1 = v14;
        goto LABEL_6;
      }
    }

    else if (!std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveToFixPoint(void)::$_0 &,std::__deque_iterator<int,int *,int &,int **,long,1024l>>((v14 + 8 * ((v128 + 1) >> 10)), (*(v14 + 8 * ((v128 + 1) >> 10)) + 4 * ((v128 + 1) & 0x3FF)), a3, v9, a5))
    {
      goto LABEL_131;
    }

    a3 = v14;
    v9 = v125;
    v13 = v11;
    a7 = v122;
    if (v127)
    {
      return;
    }

LABEL_6:
    v11 = v13;
    if (v9 == v13)
    {
      return;
    }
  }

  v172 = *a5;
  if ((a7 & 1) == 0)
  {
    if (v11 == v9)
    {
      return;
    }

    if ((v20 & 0x8000000000000000) != 0)
    {
      v303 = ~(1022 - v20);
      v304 = (a1 - 8 * ((1022 - v20) >> 10));
    }

    else
    {
      v303 = v20 + 1;
      v304 = (a1 + 8 * ((v20 + 1) >> 10));
    }

    v316 = *v304;
    v317 = &(*v304)[4 * (v303 & 0x3FF)];
    if (v317 == v9)
    {
      return;
    }

    v318 = *(*(v172 + 8) + 648);
    while (1)
    {
      v319 = (v317 - v316) >> 2;
      if (v319 < 2)
      {
        v322 = 1024 - v319;
        v320 = ~v322;
        v321 = &v304[-(v322 >> 10)];
      }

      else
      {
        v320 = v319 - 1;
        v321 = &v304[(v319 - 1) >> 10];
      }

      v323 = *v321;
      v324 = &(*v321)[v320 & 0x3FF];
      v325 = *v317;
      v326 = *v324;
      v327 = (*(v318 + 24 * v325 + 8) - *(v318 + 24 * v325)) >> 2;
      v328 = (*(v318 + 24 * *v324 + 8) - *(v318 + 24 * *v324)) >> 2;
      if (v327 < v328)
      {
        break;
      }

      if (v325 < v326 && v327 == v328)
      {
        break;
      }

      v317 += 4;
      if (v317 - v316 == 4096)
      {
        goto LABEL_426;
      }

LABEL_406:
      if (v317 == v9)
      {
        return;
      }
    }

    v330 = v317;
    while (1)
    {
      v331 = v324;
      *v330 = v326;
      if (v324 == v323)
      {
        v332 = *--v321;
        v323 = v332;
        v324 = v332 + 1024;
      }

      v333 = *--v324;
      v326 = v333;
      v334 = (*(v318 + 24 * v333 + 8) - *(v318 + 24 * v333)) >> 2;
      v330 = v331;
      if (v327 >= v334)
      {
        v335 = v325 < v326 && v327 == v334;
        v330 = v331;
        if (!v335)
        {
          break;
        }
      }
    }

    *v331 = v325;
    v317 += 4;
    if (v317 - v316 != 4096)
    {
      goto LABEL_406;
    }

LABEL_426:
    v336 = v304[1];
    ++v304;
    v316 = v336;
    v317 = v336;
    goto LABEL_406;
  }

  if (v11 != v9)
  {
    v173 = v11 + 1;
    if ((v11 + 1) - v18 == 4096)
    {
      v174 = *(a1 + 8);
      a1 += 8;
      v18 = v174;
      v173 = v174;
    }

    if (v173 != v9)
    {
      v175 = *(*(v172 + 8) + 648);
      while (1)
      {
        v176 = a1;
        v177 = v173;
        if (v173 == v18)
        {
          v176 = (a1 - 8);
          v177 = *(a1 - 8) + 4096;
        }

        v180 = *(v177 - 4);
        v178 = (v177 - 4);
        v179 = v180;
        v181 = *v173;
        v182 = (*(v175 + 24 * v181 + 8) - *(v175 + 24 * v181)) >> 2;
        v183 = (*(v175 + 24 * v180 + 8) - *(v175 + 24 * v180)) >> 2;
        if (v182 < v183)
        {
          break;
        }

        if (v181 < v179 && v182 == v183)
        {
          break;
        }

        if (++v173 - v18 == 4096)
        {
          goto LABEL_246;
        }

LABEL_223:
        if (v173 == v9)
        {
          return;
        }
      }

      *v173 = v179;
      if (v178 != v11)
      {
        v185 = *v176;
        while (1)
        {
          if (v178 == v185)
          {
            v187 = *--v176;
            v185 = v187;
            v186 = v187 + 1024;
          }

          else
          {
            v186 = v178;
          }

          v190 = *(v186 - 1);
          v189 = v186 - 1;
          v188 = v190;
          v191 = (*(v175 + 24 * v190 + 8) - *(v175 + 24 * v190)) >> 2;
          if (v182 >= v191 && (v181 >= v188 || v182 != v191))
          {
            break;
          }

          *v178 = v188;
          v178 = v189;
          if (v189 == v11)
          {
            goto LABEL_245;
          }
        }
      }

      v189 = v178;
LABEL_245:
      *v189 = v181;
      if (++v173 - v18 != 4096)
      {
        goto LABEL_223;
      }

LABEL_246:
      v193 = *(a1 + 8);
      a1 += 8;
      v18 = v193;
      v173 = v193;
      goto LABEL_223;
    }
  }
}