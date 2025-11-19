void operations_research::IncrementalSort<std::__wrap_iter<operations_research::sat::TaskTime *>,std::less<operations_research::sat::TaskTime>>(int a1, __n128 *a2, __int128 *a3, int a4, __n128 a5)
{
  if (a3 - a2 >= 17)
  {
    v6 = (a3 - 1);
    if (a3 - 1 != a2)
    {
      v24 = (a3 - 2);
      v25 = (a3 - 1);
      do
      {
        if (v25->n128_u64[1] < v24->n128_u64[1])
        {
          a5 = *v25;
          *v25 = *v24;
          *v24 = a5;
          v6 = v25;
        }

        --v25;
        --v24;
      }

      while (v25 != a2);
    }

    v7 = &v6[1];
    if (&v6[1] != a3 && a1 >= 1)
    {
      v8 = v6 - 1;
      do
      {
        v10 = *v7;
        v9 = *(v7 + 1);
        --a1;
        if (v9 >= *(v7 - 1))
        {
          *v7 = v10;
          *(v7++ + 1) = v9;
          if (v7 == a3)
          {
            break;
          }
        }

        else
        {
          v11 = (v7 - 1);
          v12 = v8;
          v13 = v7;
          do
          {
            a5 = *v11;
            *v13-- = *v11;
            --a1;
            v11 = v12;
            v14 = v12->n128_i64[1];
            --v12;
          }

          while (v9 < v14);
          v13->n128_u64[0] = v10;
          v13->n128_u64[1] = v9;
          if (++v7 == a3)
          {
            break;
          }
        }

        ++v8;
      }

      while (a1 > 0);
    }

    if (v7 != a3)
    {
      v15 = (a3 - v6) >> 4;
      if (a4)
      {
        if (v15 < 129)
        {
          v23 = 0;
          v19 = 0;
        }

        else
        {
          v17 = v6;
          v18 = MEMORY[0x277D826F0];
          v19 = (a3 - v6) >> 4;
          while (1)
          {
            v20 = operator new(16 * v19, v18);
            if (v20)
            {
              break;
            }

            v21 = v19 >> 1;
            v22 = v19 > 1;
            v19 >>= 1;
            if (!v22)
            {
              v23 = 0;
              v19 = v21;
              goto LABEL_31;
            }
          }

          v23 = v20;
LABEL_31:
          v6 = v17;
        }

        std::__stable_sort<std::_ClassicAlgPolicy,std::less<operations_research::sat::TaskTime> &,std::__wrap_iter<operations_research::sat::TaskTime*>>(v6, a3, &v28, v15, v23, v19, a5);
        if (v23)
        {
          operator delete(v23);
        }
      }

      else
      {
        v26 = 126 - 2 * __clz(v15);
        if (v6 == a3)
        {
          v27 = 0;
        }

        else
        {
          v27 = v26;
        }

        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::TaskTime *,false>(v6, a3, &v28, v27, 1, a5);
      }
    }
  }
}

void sub_23CB88C1C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__stable_sort<std::_ClassicAlgPolicy,std::less<operations_research::sat::TaskTime> &,std::__wrap_iter<operations_research::sat::TaskTime*>>(uint64_t a1, __int128 *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      if (*(a2 - 1) < *(a1 + 8))
      {
        v7 = *a1;
        *a1 = *(a2 - 1);
        *(a2 - 1) = v7;
      }
    }

    else if (a4 > 128)
    {
      v18 = a4 >> 1;
      v19 = (a1 + 16 * (a4 >> 1));
      v20 = a4 - (a4 >> 1);
      if (a4 <= a6)
      {
        v28 = a5;
        v29.n128_f64[0] = std::__stable_sort_move<std::_ClassicAlgPolicy,std::less<operations_research::sat::TaskTime> &,std::__wrap_iter<operations_research::sat::TaskTime*>>(a1, (a1 + 16 * (a4 >> 1)), a3, a4 >> 1, a5, a7);
        v30 = v28 + 16 * v18;
        std::__stable_sort_move<std::_ClassicAlgPolicy,std::less<operations_research::sat::TaskTime> &,std::__wrap_iter<operations_research::sat::TaskTime*>>(v19, a2, a3, v20, v30, v29);
        v31 = v28 + 16 * a4;
        if ((a4 & 0x1FFFFFFFFFFFFFFELL) != 0)
        {
          v32 = v30;
          v33 = a1;
          while (v32 != v31)
          {
            if (*(v32 + 8) >= *(v28 + 8))
            {
              v34 = *v28;
              v28 += 16;
              *v33++ = v34;
              if (v28 == v30)
              {
                goto LABEL_34;
              }
            }

            else
            {
              v35 = *v32;
              v32 += 16;
              *v33++ = v35;
              if (v28 == v30)
              {
                goto LABEL_34;
              }
            }
          }

          while (v28 != v30)
          {
            v36 = *v28;
            v28 += 16;
            *v33++ = v36;
          }
        }

        else
        {
          v32 = v30;
          v33 = a1;
LABEL_34:
          while (v32 != v31)
          {
            v37 = *v32;
            v32 += 16;
            *v33++ = v37;
          }
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,std::less<operations_research::sat::TaskTime> &,std::__wrap_iter<operations_research::sat::TaskTime*>>(a1, a1 + 16 * (a4 >> 1), a3, a4 >> 1, a5, a6);
        std::__stable_sort<std::_ClassicAlgPolicy,std::less<operations_research::sat::TaskTime> &,std::__wrap_iter<operations_research::sat::TaskTime*>>(v19, a2, a3, v20, a5, a6);

        std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::TaskTime *>>(a1, v19, a2, a3, v18, v20, a5, a6);
      }
    }

    else if (a1 != a2)
    {
      v8 = (a1 + 16);
      if ((a1 + 16) != a2)
      {
        v9 = 0;
        v10 = a1;
        do
        {
          v12 = v10[1];
          v13 = v10[3];
          v10 = v8;
          if (v13 < v12)
          {
            v14 = *v8;
            v15 = v9;
            do
            {
              *(a1 + v15 + 16) = *(a1 + v15);
              if (!v15)
              {
                v11 = a1;
                goto LABEL_11;
              }

              v16 = *(a1 + v15 - 8);
              v15 -= 16;
            }

            while (v13 < v16);
            v11 = (a1 + v15 + 16);
LABEL_11:
            *v11 = v14;
            v11[1] = v13;
          }

          v8 = v10 + 2;
          v9 += 16;
        }

        while (v10 + 2 != a2);
      }
    }
  }
}

double std::__stable_sort_move<std::_ClassicAlgPolicy,std::less<operations_research::sat::TaskTime> &,std::__wrap_iter<operations_research::sat::TaskTime*>>(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  if (a4)
  {
    if (a4 == 2)
    {
      v6 = (a2 - 1);
      if (*(a2 - 1) >= *(a1 + 1))
      {
        *a5 = *a1;
        a6 = *v6;
      }

      else
      {
        *a5 = *v6;
        a6 = *a1;
      }

      *(a5 + 16) = a6;
    }

    else if (a4 == 1)
    {
      a6 = *a1;
      *a5 = *a1;
    }

    else if (a4 > 8)
    {
      v14 = a4 >> 1;
      v15 = 16 * (a4 >> 1);
      v16 = &a1[v15 / 0x10];
      v17 = a1;
      (std::__stable_sort<std::_ClassicAlgPolicy,std::less<operations_research::sat::TaskTime> &,std::__wrap_iter<operations_research::sat::TaskTime*>>)();
      std::__stable_sort<std::_ClassicAlgPolicy,std::less<operations_research::sat::TaskTime> &,std::__wrap_iter<operations_research::sat::TaskTime*>>(v16, a2, a3, a4 - v14, a5 + v15, a4 - v14);
      if (v15)
      {
        v22 = v16;
        v23 = a5;
        v24 = a2;
        v25 = v17;
        while (v22 != a2)
        {
          if (*(v22 + 1) >= *(v25 + 1))
          {
            v26 = *v25++;
            a6.n128_u64[0] = v26;
            *v23++ = v26;
            if (v25 == v16)
            {
              goto LABEL_32;
            }
          }

          else
          {
            v27 = *v22++;
            a6.n128_u64[0] = v27;
            *v23++ = v27;
            if (v25 == v16)
            {
              goto LABEL_32;
            }
          }
        }

        while (v25 != v16)
        {
          v28 = *v25++;
          a6.n128_u64[0] = v28;
          *v23++ = v28;
        }
      }

      else
      {
        v22 = v16;
        v23 = a5;
        v24 = a2;
LABEL_32:
        while (v22 != v24)
        {
          v29 = *v22++;
          a6.n128_u64[0] = v29;
          *v23++ = v29;
        }
      }
    }

    else if (a1 != a2)
    {
      a6 = *a1;
      *a5 = *a1;
      v7 = a1 + 1;
      if (a1 + 1 != a2)
      {
        v8 = 0;
        v9 = a5;
        do
        {
          v10 = a1;
          v11 = v9;
          a1 = v7;
          v12 = ++v9;
          if (*(v10 + 3) < *(v11 + 1))
          {
            *v9 = *v11;
            v12 = a5;
            if (v11 != a5)
            {
              v13 = v8;
              while (1)
              {
                v12 = (a5 + v13);
                if (*(v10 + 3) >= *(a5 + v13 - 8))
                {
                  break;
                }

                *v12 = *(v12 - 1);
                v13 -= 16;
                if (!v13)
                {
                  v12 = a5;
                  break;
                }
              }
            }
          }

          a6 = *a1;
          *v12 = *a1;
          v7 = a1 + 1;
          v8 += 16;
        }

        while (a1 + 1 != a2);
      }
    }
  }

  return a6.n128_f64[0];
}

unint64_t operations_research::sat::DratChecker::ClauseHash::operator()(uint64_t *a1, int a2)
{
  v2 = *a1;
  v3 = (*(*a1 + 8) + 56 * a2);
  v4 = v3[1];
  if (!v4)
  {
    return 0;
  }

  v5 = 0;
  result = 0;
  v7 = (*(v2 + 80) + 4 * *v3);
  v8 = 4 * v4;
  do
  {
    v9 = *v7++;
    v10 = (v5 + 0x1F73E299748A907ELL + v9) ^ (result >> 43);
    v11 = (v5 - v10 - 0x1F73E299748A907ELL) ^ (v10 << 9);
    v12 = (result - v10 - v11) ^ (v11 >> 8);
    v13 = (v10 - v11 - v12) ^ (v12 >> 38);
    v14 = (v11 - v12 - v13) ^ (v13 << 23);
    v15 = (v12 - v13 - v14) ^ (v14 >> 5);
    v16 = (v13 - v14 - v15) ^ (v15 >> 35);
    v17 = (v14 - v15 - v16) ^ (v16 << 49);
    v18 = (v15 - v16 - v17) ^ (v17 >> 11);
    v19 = (v16 - v17 - v18) ^ (v18 >> 12);
    result = (v18 - v19 - ((v17 - v18 - v19) ^ (v19 << 18))) ^ (((v17 - v18 - v19) ^ (v19 << 18)) >> 22);
    v5 = -result;
    v8 -= 4;
  }

  while (v8);
  return result;
}

uint64_t operations_research::sat::DratChecker::AddClause(uint64_t a1, char *__src, uint64_t a3)
{
  v6 = *(a1 + 88);
  v7 = (a1 + 80);
  v8 = &v6[-*(a1 + 80)];
  std::vector<operations_research::sat::Literal>::__insert_with_size[abi:ne200100]<operations_research::sat::Literal const*,operations_research::sat::Literal const*>(a1 + 80, v6, __src, &__src[4 * a3], (4 * a3) >> 2);
  v9 = v8 << 30 >> 30;
  v10 = v7[1];
  v11 = v9 + *v7;
  v12 = 126 - 2 * __clz((v10 - v11) >> 2);
  if (v10 == v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,false>(v11, v10, &v32, v13, 1);
  v14 = *v7;
  v15 = v7[1];
  v16 = v9 + *v7;
  if (v16 != v15)
  {
    v22 = (v16 + 4);
    while (v22 != v15)
    {
      v23 = *(v22 - 1);
      v24 = *v22++;
      if (v23 == v24)
      {
        v25 = v22 - 2;
        if (v22 - 2 != v15)
        {
          while (v22 != v15)
          {
            v26 = v23;
            v23 = *v22;
            if (v26 != *v22)
            {
              v25[1] = v23;
              ++v25;
            }

            ++v22;
          }

          if (v25 + 1 != v15)
          {
            v15 = v25 + 1;
            *(a1 + 88) = v25 + 1;
          }
        }

        break;
      }
    }
  }

  v17 = (v15 - v14) >> 2;
  for (i = v8 >> 2; v17 > i + 1; ++i)
  {
    v19 = *(v14 + 4 * (i + 1)) ^ *(v14 + 4 * i);
    if (v19 == 1)
    {
      operations_research::sat::DratChecker::AddClause(&v32);
    }
  }

  LODWORD(v32) = v8 >> 2;
  DWORD1(v32) = v17 - v32;
  *(&v32 + 1) = 0x1FFFFFFFFLL;
  v33 = 0x7FFFFFFF;
  v35 = 0;
  v36 = 0;
  __p = 0;
  v37 = 0;
  v20 = *(a1 + 16);
  if (v20 >= *(a1 + 24))
  {
    v27 = std::vector<operations_research::sat::DratChecker::Clause>::__emplace_back_slow_path<operations_research::sat::DratChecker::Clause>((a1 + 8), &v32);
    v28 = __p;
    *(a1 + 16) = v27;
    if (v28)
    {
      v35 = v28;
      operator delete(v28);
    }
  }

  else
  {
    v21 = v32;
    *(v20 + 16) = v33;
    *v20 = v21;
    *(v20 + 32) = 0;
    *(v20 + 40) = 0;
    *(v20 + 24) = 0;
    *(v20 + 48) = 0;
    *(a1 + 16) = v20 + 56;
  }

  if (a3)
  {
    v29 = *(*(a1 + 88) - 4) >> 1;
    if (*(a1 + 104) <= v29 + 1)
    {
      v30 = v29 + 1;
    }

    else
    {
      v30 = *(a1 + 104);
    }

    *(a1 + 104) = v30;
  }

  return -1227133513 * ((*(a1 + 16) - *(a1 + 8)) >> 3) - 1;
}

void sub_23CB893EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>,operations_research::sat::DratChecker::ClauseHash,operations_research::sat::DratChecker::ClauseEquiv,std::allocator<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>>::find<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>(uint64_t *a1, int *a2)
{
  if (*a1 > 1)
  {
    _X8 = a1[2];
    __asm { PRFM            #4, [X8] }

    v22 = operations_research::sat::DratChecker::ClauseHash::operator()(a1 + 4, *a2);

    return absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>,operations_research::sat::DratChecker::ClauseHash,operations_research::sat::DratChecker::ClauseEquiv,std::allocator<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>>::find_non_soo<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>(a1, a2, v22);
  }

  else
  {
    if (a1[1] < 2)
    {
      return 0;
    }

    v2 = a1[5];
    v3 = *(v2 + 8);
    v4 = (v3 + 56 * *(a1 + 4));
    v5 = v4[1];
    v6 = (v3 + 56 * *a2);
    v7 = v6[1];
    if (v5 != v7)
    {
      return 0;
    }

    v8 = *(v2 + 80);
    v9 = (v8 + 4 * *v4);
    v10 = (v8 + 4 * *v6);
    if ((v5 & 0x3FFFFFFFFFFFFFFFLL) != 0 && (v7 & 0x3FFFFFFFFFFFFFFFLL) != 0)
    {
      v23 = 4 * v5 - 4;
      v24 = 4 * v7 - 4;
      v25 = v9;
      v26 = v10;
      while (*v25 == *v26)
      {
        ++v25;
        ++v26;
        if (v23)
        {
          v23 -= 4;
          v27 = v24;
          v24 -= 4;
          if (v27)
          {
            continue;
          }
        }

        goto LABEL_10;
      }

      return 0;
    }

    v26 = (v8 + 4 * *v6);
    v25 = v9;
LABEL_10:
    v12 = &v10[v7];
    if (v25 == &v9[v5])
    {
      v13 = &absl::lts_20240722::container_internal::kSooControl;
    }

    else
    {
      v13 = 0;
    }

    if (v26 == v12)
    {
      return v13;
    }

    else
    {
      return 0;
    }
  }
}

void operations_research::sat::DratChecker::AddInferedClause(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = operations_research::sat::DratChecker::AddClause(a1, a2, a3);
  v22 = v6;
  if (*a1 == -1)
  {
    *a1 = v6;
    if (absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>,operations_research::sat::DratChecker::ClauseHash,operations_research::sat::DratChecker::ClauseEquiv,std::allocator<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>>::find<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>((a1 + 32), &v22))
    {
      goto LABEL_3;
    }

LABEL_11:
    if (a3)
    {
      v17 = *a2;
    }

    else
    {
      v17 = -1;
    }

    *(*(a1 + 8) + 56 * v22 + 8) = v17;
    if (*(a1 + 32) > 1uLL)
    {
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>,operations_research::sat::DratChecker::ClauseHash,operations_research::sat::DratChecker::ClauseEquiv,std::allocator<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>>::find_or_prepare_insert_non_soo<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>((a1 + 32), &v22, v19);
      if (v20 != 1)
      {
        return;
      }
    }

    else
    {
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>,operations_research::sat::DratChecker::ClauseHash,operations_research::sat::DratChecker::ClauseEquiv,std::allocator<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>>::find_or_prepare_insert_soo<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>(a1 + 32, &v22, v19);
      if (v20 != 1)
      {
        return;
      }
    }

    *v19[1] = v22;
    return;
  }

  if (!absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>,operations_research::sat::DratChecker::ClauseHash,operations_research::sat::DratChecker::ClauseEquiv,std::allocator<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>>::find<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>((a1 + 32), &v22))
  {
    goto LABEL_11;
  }

LABEL_3:
  v8 = *(a1 + 8);
  ++*(v8 + 56 * *v7 + 12);
  if (*v7 >= *a1 && a3 != 0)
  {
    v10 = v8 + 56 * *v7;
    v21 = *a2;
    v12 = *(v10 + 8);
    v11 = (v10 + 8);
    if (v12 != v21)
    {
      operations_research::sat::DratChecker::AddInferedClause(v11, &v21);
    }
  }

  v13 = *(a1 + 80);
  v14 = *(a1 + 16);
  v15 = *(v14 - 56);
  v16 = (*(a1 + 88) - v13) >> 2;
  if (v15 <= v16)
  {
    if (v15 < v16)
    {
      *(a1 + 88) = v13 + 4 * v15;
    }
  }

  else
  {
    std::vector<int>::__append((a1 + 80), v15 - v16);
    v14 = *(a1 + 16);
  }

  v18 = *(v14 - 32);
  if (v18)
  {
    *(v14 - 24) = v18;
    operator delete(v18);
  }

  *(a1 + 16) = v14 - 56;
}

void operations_research::sat::DratChecker::DeleteClause(uint64_t a1, char *a2, uint64_t a3)
{
  v17[0] = operations_research::sat::DratChecker::AddClause(a1, a2, a3);
  v4 = absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>,operations_research::sat::DratChecker::ClauseHash,operations_research::sat::DratChecker::ClauseEquiv,std::allocator<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>>::find<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>((a1 + 32), v17);
  if (v4)
  {
    v6 = *(a1 + 8);
    v7 = v6 + 56 * *v5;
    v8 = *(v7 + 12) - 1;
    *(v7 + 12) = v8;
    if (!v8)
    {
      v9 = *(a1 + 16);
      v10 = 0x6DB6DB6DB6DB6DB7 * ((v9 - v6) >> 3);
      *(v7 + 16) = v10 - 1;
      if (*(v9 - 52) >= 2)
      {
        v11 = v4;
        std::vector<int>::push_back[abi:ne200100](v6 + 56 * (v10 - 2) + 24, v5);
        v4 = v11;
      }

      if (*(a1 + 32) > 1uLL)
      {
        absl::lts_20240722::container_internal::EraseMetaOnly((a1 + 32), v4 - *(a1 + 48));
      }

      else
      {
        *(a1 + 40) = 0;
      }
    }
  }

  else
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v17, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/drat_checker.cc", 141);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v17, "Couldn't find deleted clause", 0x1CuLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v17);
  }

  v12 = *(a1 + 80);
  v13 = *(a1 + 16);
  v14 = *(v13 - 56);
  v15 = (*(a1 + 88) - v12) >> 2;
  if (v14 <= v15)
  {
    if (v14 < v15)
    {
      *(a1 + 88) = v12 + 4 * v14;
    }
  }

  else
  {
    std::vector<int>::__append((a1 + 80), v14 - v15);
    v13 = *(a1 + 16);
  }

  v16 = *(v13 - 32);
  if (v16)
  {
    *(v13 - 24) = v16;
    operator delete(v16);
  }

  *(a1 + 16) = v13 - 56;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>,operations_research::sat::DratChecker::ClauseHash,operations_research::sat::DratChecker::ClauseEquiv,std::allocator<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>>::resize_impl(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v7 = *a1 < 2uLL && v5 > 1;
  if (v7)
  {
    operations_research::sat::DratChecker::ClauseHash::operator()((a1 + 32), *(a1 + 16));
  }

  v9 = v4;
  v10 = v5 & 1;
  v11 = v4 < 2;
  v12 = v7;
  v8 = *(a1 + 16);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,4ul,true,true,4ul>(&v8, a1);
}

unint64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>,operations_research::sat::DratChecker::ClauseHash,operations_research::sat::DratChecker::ClauseEquiv,std::allocator<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>>::find_non_soo<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>(uint64_t *a1, int *a2, unint64_t a3)
{
  v3 = 0;
  v4 = a1[2];
  v5 = *a1;
  v6 = vdup_n_s8(a3 & 0x7F);
  v7 = *a2;
  v8 = ((v4 >> 12) ^ (a3 >> 7)) & *a1;
  v9 = *(v4 + v8);
  v10 = vceq_s8(v9, v6);
  if (v10)
  {
LABEL_2:
    v11 = a1[3];
    v12 = a1[5];
    v13 = *(v12 + 8);
    v14 = (v13 + 56 * v7);
    v15 = v14[1];
    if ((v15 & 0x3FFFFFFFFFFFFFFFLL) != 0)
    {
      v16 = *(v12 + 80);
      v17 = v16 + 4 * *v14;
      while (1)
      {
        v18 = (v8 + (__clz(__rbit64(v10)) >> 3)) & v5;
        v19 = (v13 + 56 * *(v11 + 4 * v18));
        v20 = v19[1];
        if (v20 == v15)
        {
          if ((v20 & 0x3FFFFFFFFFFFFFFFLL) != 0)
          {
            v21 = 0;
            v22 = v16 + 4 * *v19;
            while (*(v22 + v21) == *(v17 + v21))
            {
              v23 = v21 + 4;
              if (4 * v20 - 4 != v21)
              {
                v24 = 4 * v15 - 4 == v21;
                v21 += 4;
                if (!v24)
                {
                  continue;
                }
              }

              if (v23 == 4 * v20 && 4 * v15 == v23)
              {
                return v4 + v18;
              }

              break;
            }
          }

          else if (!v15)
          {
            return v4 + v18;
          }
        }

        v10 &= ((v10 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v10)
        {
          goto LABEL_16;
        }
      }
    }

    v25 = v13 + 4;
    while (1)
    {
      v18 = (v8 + (__clz(__rbit64(v10)) >> 3)) & v5;
      if (!(*(v25 + 56 * *(v11 + 4 * v18)) | v15))
      {
        return v4 + v18;
      }

      v10 &= ((v10 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v10)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_16:
    while (!*&vceq_s8(v9, 0x8080808080808080))
    {
      v3 += 8;
      v8 = (v3 + v8) & v5;
      v9 = *(v4 + v8);
      v10 = vceq_s8(v9, v6);
      if (v10)
      {
        goto LABEL_2;
      }
    }

    return 0;
  }
}

uint64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>,operations_research::sat::DratChecker::ClauseHash,operations_research::sat::DratChecker::ClauseEquiv,std::allocator<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>>::find_or_prepare_insert_soo<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>@<X0>(uint64_t result@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(result + 8) > 1uLL)
  {
    v4 = *(result + 40);
    v5 = *(v4 + 8);
    v6 = (v5 + 56 * *(result + 16));
    v7 = v6[1];
    v8 = (v5 + 56 * *a2);
    v9 = v8[1];
    if (v7 == v9)
    {
      v10 = *(v4 + 80);
      v11 = (v10 + 4 * *v6);
      v12 = (v10 + 4 * *v8);
      if ((v7 & 0x3FFFFFFFFFFFFFFFLL) == 0 || (v9 & 0x3FFFFFFFFFFFFFFFLL) == 0)
      {
        v17 = (v10 + 4 * *v8);
        v16 = v11;
LABEL_11:
        if (v17 == &v12[v9] && v16 == &v11[v7])
        {
          v3 = 0;
          goto LABEL_3;
        }
      }

      else
      {
        v14 = 4 * v7 - 4;
        v15 = 4 * v9 - 4;
        v16 = v11;
        v17 = v12;
        while (*v16 == *v17)
        {
          ++v16;
          ++v17;
          if (v14)
          {
            v14 -= 4;
            v18 = v15;
            v15 -= 4;
            if (v18)
            {
              continue;
            }
          }

          goto LABEL_11;
        }
      }
    }

    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>,operations_research::sat::DratChecker::ClauseHash,operations_research::sat::DratChecker::ClauseEquiv,std::allocator<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>>::resize_impl(result, 3);
  }

  *(result + 8) = 2;
  v3 = 1;
LABEL_3:
  *a3 = &absl::lts_20240722::container_internal::kSooControl;
  *(a3 + 8) = result + 16;
  *(a3 + 16) = v3;
  return result;
}

unint64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>,operations_research::sat::DratChecker::ClauseHash,operations_research::sat::DratChecker::ClauseEquiv,std::allocator<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>>::find_or_prepare_insert_non_soo<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>@<X0>(uint64_t *a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  _X21 = a1[2];
  __asm { PRFM            #4, [X21] }

  v11 = *a2;
  result = operations_research::sat::DratChecker::ClauseHash::operator()(a1 + 4, *a2);
  v13 = result;
  v14 = 0;
  v15 = *a1;
  v16 = vdup_n_s8(result & 0x7F);
  v17 = ((result >> 7) ^ (_X21 >> 12)) & *a1;
  v18 = *(_X21 + v17);
  v19 = vceq_s8(v18, v16);
  if (v19)
  {
LABEL_2:
    v20 = a1[3];
    v21 = a1[5];
    v22 = *(v21 + 8);
    v23 = (v22 + 56 * v11);
    v24 = v23[1];
    v25 = v24;
    if ((v24 & 0x3FFFFFFFFFFFFFFFLL) != 0)
    {
      v26 = *(v21 + 80);
      v27 = (v26 + 4 * *v23);
      v28 = &v27[v24];
      result = 4 * v25 - 4;
      while (1)
      {
        v29 = (v17 + (__clz(__rbit64(v19)) >> 3)) & v15;
        v30 = (v22 + 56 * *(v20 + 4 * v29));
        v31 = v30[1];
        if (v31 == v25)
        {
          v32 = (v26 + 4 * *v30);
          if ((v31 & 0x3FFFFFFFFFFFFFFFLL) != 0)
          {
            v33 = 4 * v31 - 4;
            v34 = 4 * v25 - 4;
            v35 = v32;
            v36 = v27;
            while (*v35 == *v36)
            {
              ++v35;
              ++v36;
              if (v33)
              {
                v33 -= 4;
                v37 = v34;
                v34 -= 4;
                if (v37)
                {
                  continue;
                }
              }

              goto LABEL_12;
            }
          }

          else
          {
            v36 = v27;
            v35 = v32;
LABEL_12:
            if (v36 == v28 && v35 == &v32[v31])
            {
              goto LABEL_21;
            }
          }
        }

        v19 &= ((v19 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v19)
        {
          goto LABEL_15;
        }
      }
    }

    while (1)
    {
      v29 = (v17 + (__clz(__rbit64(v19)) >> 3)) & v15;
      if (!(*(v22 + 56 * *(v20 + 4 * v29) + 4) | v24))
      {
        break;
      }

      v19 &= ((v19 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v19)
      {
        goto LABEL_15;
      }
    }

LABEL_21:
    v39 = 0;
    v40 = v20 + 4 * v29;
    v41 = _X21 + v29;
  }

  else
  {
LABEL_15:
    while (1)
    {
      v38 = vceq_s8(v18, 0x8080808080808080);
      if (v38)
      {
        break;
      }

      v14 += 8;
      v17 = (v14 + v17) & v15;
      v18 = *(_X21 + v17);
      v19 = vceq_s8(v18, v16);
      if (v19)
      {
        goto LABEL_2;
      }
    }

    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(a1, v13, (v17 + (__clz(__rbit64(v38)) >> 3)) & v15, v14, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>,operations_research::sat::DratChecker::ClauseHash,operations_research::sat::DratChecker::ClauseEquiv,std::allocator<operations_research::StrongIndex<operations_research::sat::ClauseIndex_index_tag_>>>::GetPolicyFunctions(void)::value);
    v41 = a1[2] + result;
    v40 = a1[3] + 4 * result;
    v39 = 1;
  }

  *a3 = v41;
  *(a3 + 8) = v40;
  *(a3 + 16) = v39;
  return result;
}

uint64_t std::vector<operations_research::sat::DratChecker::Clause>::__emplace_back_slow_path<operations_research::sat::DratChecker::Clause>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v5 = 0x492492492492492;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x492492492492492)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *(v6 + 24) = *(a2 + 24);
  *(v6 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(v6 + 48) = *(a2 + 48);
  v7 = 56 * v2 + 56;
  v8 = *a1;
  v9 = a1[1];
  v10 = v6 + *a1 - v9;
  if (*a1 != v9)
  {
    v11 = *a1;
    v12 = v6 + *a1 - v9;
    do
    {
      v13 = *v11;
      *(v12 + 16) = *(v11 + 4);
      *v12 = v13;
      *(v12 + 32) = 0;
      *(v12 + 40) = 0;
      *(v12 + 24) = *(v11 + 3);
      *(v12 + 40) = v11[5];
      v11[3] = 0;
      v11[4] = 0;
      v11[5] = 0;
      *(v12 + 48) = *(v11 + 24);
      v11 += 7;
      v12 += 56;
    }

    while (v11 != v9);
    do
    {
      v14 = v8[3];
      if (v14)
      {
        v8[4] = v14;
        operator delete(v14);
      }

      v8 += 7;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

void operations_research::sat::DratProofHandler::AddOneVariable(operations_research::sat::DratProofHandler *this)
{
  v1 = (*this)++;
  v2 = v1;
  std::vector<int>::push_back[abi:ne200100](this + 32, &v2);
}

uint64_t operations_research::sat::DratProofHandler::AddClause(uint64_t a1, int *a2, uint64_t a3)
{
  operations_research::sat::DratProofHandler::MapClause(a1, a2, a3);
  v4 = *(a1 + 56);
  if (v4)
  {
    operations_research::sat::DratChecker::AddInferedClause(v4, *(a1 + 8), (*(a1 + 16) - *(a1 + 8)) >> 2);
  }

  result = *(a1 + 64);
  if (result)
  {
    v6 = (*(a1 + 16) - *(a1 + 8)) >> 2;

    return operations_research::sat::DratWriter::AddClause();
  }

  return result;
}

unint64_t operations_research::sat::DratProofHandler::MapClause(void *a1, int *a2, uint64_t a3)
{
  v5 = (a1 + 1);
  v4 = a1[1];
  a1[2] = v4;
  if ((a3 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v7 = 4 * a3;
    do
    {
      v8 = *a2;
      v9 = *a2 >> 1;
      v17 = v9;
      v10 = a1[4];
      v11 = (a1[5] - v10) >> 2;
      if (v9 >= v11)
      {
        operations_research::sat::DratProofHandler::MapClause(&v17, v11);
      }

      v16[0] = 0;
      v16[0] = v8 & 1 | (2 * *(v10 + 4 * v9));
      std::vector<int>::push_back[abi:ne200100](v5, v16);
      ++a2;
      v7 -= 4;
    }

    while (v7);
    v12 = a1[1];
    v4 = a1[2];
  }

  else
  {
    v12 = v4;
  }

  v13 = 126 - 2 * __clz((v4 - v12) >> 2);
  if (v4 == v12)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  return std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::DratProofHandler::MapClause(absl::lts_20240722::Span<operations_research::sat::Literal const>)::$_0 &,operations_research::sat::Literal*,false>(v12, v4, v14, 1);
}

void operations_research::sat::DratProofHandler::DeleteClause(uint64_t a1, int *a2, uint64_t a3)
{
  operations_research::sat::DratProofHandler::MapClause(a1, a2, a3);
  v4 = *(a1 + 56);
  if (v4)
  {
    operations_research::sat::DratChecker::DeleteClause(v4, *(a1 + 8), (*(a1 + 16) - *(a1 + 8)) >> 2);
  }

  v5 = *(a1 + 64);
  if (v5)
  {
    v6 = *(a1 + 8);
    v7 = (*(a1 + 16) - v6) >> 2;

    operations_research::sat::DratWriter::DeleteClause(v5, v6, v7);
  }
}

void absl::lts_20240722::log_internal::MakeCheckOpString<operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_> const&,unsigned long long>(unsigned int *a1, uint64_t a2, char *a3)
{
  absl::lts_20240722::log_internal::CheckOpMessageBuilder::CheckOpMessageBuilder(&v6, a3);
  MEMORY[0x23EED9180](&v6, *a1);
  v5 = absl::lts_20240722::log_internal::CheckOpMessageBuilder::ForVar2(&v6);
  MEMORY[0x23EED91C0](v5, a2);
  absl::lts_20240722::log_internal::CheckOpMessageBuilder::NewString(&v6);
}

void sub_23CB8A4F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::DratProofHandler::MapClause(absl::lts_20240722::Span<operations_research::sat::Literal const>)::$_0 &,operations_research::sat::Literal*,false>(unint64_t result, int8x8_t *a2, uint64_t a3, char a4)
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
        v9 = (a2 - v8) >> 2;
        if (v9 > 2)
        {
          switch(v9)
          {
            case 3:
              v140 = *v8;
              v141 = vabs_s32(vbsl_s8(vceqz_s32(vand_s8(*v8, 0x100000001)), vsra_n_s32(0x100000001, *v8, 1uLL), vmvn_s8(vshr_n_s32(*v8, 1uLL))));
              v142 = a2[-1].i32[1];
              if (v142)
              {
                v143 = ~(v142 >> 1);
              }

              else
              {
                v143 = (v142 >> 1) + 1;
              }

              if (v143 < 0)
              {
                v143 = -v143;
              }

              if (v141.i32[1] <= v141.i32[0])
              {
                if (v143 > v141.i32[1])
                {
                  v8->i32[1] = v142;
                  a2[-1].i32[1] = v140.i32[1];
                  v200 = vabs_s32(vbsl_s8(vceqz_s32(vand_s8(*v8, 0x100000001)), vsra_n_s32(0x100000001, *v8, 1uLL), vmvn_s8(vshr_n_s32(*v8, 1uLL))));
                  if (vcgt_u32(vdup_lane_s32(v200, 1), v200).u8[0])
                  {
                    *v8 = vrev64_s32(*v8);
                  }
                }
              }

              else if (v143 <= v141.i32[1])
              {
                *v8 = vrev64_s32(v140);
                v206 = a2[-1].i32[1];
                if (v206)
                {
                  v207 = ~(v206 >> 1);
                }

                else
                {
                  v207 = (v206 >> 1) + 1;
                }

                if (v207 < 0)
                {
                  v207 = -v207;
                }

                if (v207 > v141.i32[0])
                {
                  v8->i32[1] = v206;
                  a2[-1].i32[1] = v140.i32[0];
                }
              }

              else
              {
                v8->i32[0] = v142;
                a2[-1].i32[1] = v140.i32[0];
              }

              return result;
            case 4:

              return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::DratProofHandler::MapClause(absl::lts_20240722::Span<operations_research::sat::Literal const>)::$_0 &,operations_research::sat::Literal*,0>(v8, v8 + 1, &v8[1], &a2[-1] + 1);
            case 5:

              return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::DratProofHandler::MapClause(absl::lts_20240722::Span<operations_research::sat::Literal const>)::$_0 &,operations_research::sat::Literal*,0>(v8, v8 + 1, &v8[1], &v8[1] + 1, &a2[-1] + 1);
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
            v136 = a2[-1].i32[1];
            v137 = v8->i32[0];
            if (v136)
            {
              v138 = ~(v136 >> 1);
            }

            else
            {
              v138 = (v136 >> 1) + 1;
            }

            if (v138 < 0)
            {
              v138 = -v138;
            }

            if (v137)
            {
              v139 = ~(v137 >> 1);
            }

            else
            {
              v139 = (v137 >> 1) + 1;
            }

            if (v139 < 0)
            {
              v139 = -v139;
            }

            if (v138 > v139)
            {
              v8->i32[0] = v136;
              a2[-1].i32[1] = v137;
            }

            return result;
          }
        }

        if (v9 <= 23)
        {
          v144 = (v8 + 4);
          v146 = v8 == a2 || v144 == a2;
          if (a4)
          {
            if (!v146)
            {
              v147 = 0;
              v148 = v8;
              do
              {
                v150 = *v148;
                v148 = v144;
                v151 = vabs_s32(vbsl_s8(vceqz_s32(vand_s8(v150, 0x100000001)), vsra_n_s32(0x100000001, v150, 1uLL), vmvn_s8(vshr_n_s32(v150, 1uLL))));
                if (v151.i32[1] > v151.i32[0])
                {
                  v152 = v150.i32[0];
                  v153 = v147;
                  do
                  {
                    *(&v8->i32[1] + v153) = v152;
                    if (!v153)
                    {
                      v149 = v8;
                      goto LABEL_335;
                    }

                    v152 = *(&v8->i32[-1] + v153);
                    if (v152)
                    {
                      v154 = ~(v152 >> 1);
                    }

                    else
                    {
                      v154 = (v152 >> 1) + 1;
                    }

                    if (v154 < 0)
                    {
                      v154 = -v154;
                    }

                    v153 -= 4;
                  }

                  while (v151.i32[1] > v154);
                  v149 = (v8 + v153 + 4);
LABEL_335:
                  v149->i32[0] = v150.i32[1];
                }

                v144 = (v148 + 4);
                v147 += 4;
              }

              while (&v148->u8[4] != a2);
            }
          }

          else if (!v146)
          {
            do
            {
              v201 = *v7;
              v7 = v144;
              v202 = vabs_s32(vbsl_s8(vceqz_s32(vand_s8(v201, 0x100000001)), vsra_n_s32(0x100000001, v201, 1uLL), vmvn_s8(vshr_n_s32(v201, 1uLL))));
              if (v202.i32[1] > v202.i32[0])
              {
                v203 = v201.i32[0];
                v204 = v7;
                do
                {
                  *v204 = v203;
                  v203 = *(v204 - 2);
                  if (v203)
                  {
                    v205 = ~(v203 >> 1);
                  }

                  else
                  {
                    v205 = (v203 >> 1) + 1;
                  }

                  if (v205 < 0)
                  {
                    v205 = -v205;
                  }

                  --v204;
                }

                while (v202.i32[1] > v205);
                *v204 = v201.i32[1];
              }

              v144 = (v7 + 4);
            }

            while (&v7->u8[4] != a2);
          }

          return result;
        }

        if (!a3)
        {
          if (v8 != a2)
          {
            v155 = (v9 - 2) >> 1;
            v156 = v155;
            do
            {
              v157 = v156;
              v158 = 4 * v156;
              if (v155 >= (4 * v156) >> 2)
              {
                v159 = (v158 >> 1) | 1;
                v160 = v8 + v159;
                v161 = *v160;
                if ((v158 >> 1) + 2 < v9)
                {
                  v162 = v160[1];
                  if (v161)
                  {
                    LODWORD(result) = ~(v161 >> 1);
                  }

                  else
                  {
                    LODWORD(result) = (v161 >> 1) + 1;
                  }

                  if ((result & 0x80000000) == 0)
                  {
                    result = result;
                  }

                  else
                  {
                    result = -result;
                  }

                  if (v162)
                  {
                    v163 = ~(v162 >> 1);
                  }

                  else
                  {
                    v163 = (v162 >> 1) + 1;
                  }

                  if (v163 < 0)
                  {
                    v163 = -v163;
                  }

                  if (result > v163)
                  {
                    v161 = v160[1];
                    ++v160;
                    v159 = (v158 >> 1) + 2;
                  }
                }

                v164 = (v8 + v158);
                v165 = v8->i32[v158 / 4];
                v166 = vabs_s32(vbsl_s8(vceqz_s32(vand_s8(__PAIR64__(v165, v161), 0x100000001)), vsra_n_s32(0x100000001, __PAIR64__(v165, v161), 1uLL), vmvn_s8(vshr_n_s32(__PAIR64__(v165, v161), 1uLL))));
                if (v166.i32[0] <= v166.i32[1])
                {
                  do
                  {
                    v171 = v160;
                    *v164 = v161;
                    if (v155 < v159)
                    {
                      break;
                    }

                    v172 = (2 * v159) | 1;
                    v160 = v8 + v172;
                    v159 = 2 * v159 + 2;
                    v161 = *v160;
                    if (v159 < v9)
                    {
                      v167 = v160[1];
                      if (v161)
                      {
                        v168 = ~(v161 >> 1);
                      }

                      else
                      {
                        v168 = (v161 >> 1) + 1;
                      }

                      if (v168 < 0)
                      {
                        v168 = -v168;
                      }

                      if (v167)
                      {
                        v169 = ~(v167 >> 1);
                      }

                      else
                      {
                        v169 = (v167 >> 1) + 1;
                      }

                      if (v169 < 0)
                      {
                        v169 = -v169;
                      }

                      if (v168 <= v169)
                      {
                        v159 = v172;
                      }

                      else
                      {
                        v161 = v160[1];
                        ++v160;
                      }
                    }

                    else
                    {
                      v159 = v172;
                    }

                    v170 = (v161 & 1) != 0 ? ~(v161 >> 1) : (v161 >> 1) + 1;
                    result = v170 >= 0 ? v170 : -v170;
                    v164 = v171;
                  }

                  while (result <= v166.i32[1]);
                  *v171 = v165;
                }
              }

              v156 = v157 - 1;
            }

            while (v157);
            do
            {
              v174 = 0;
              v175 = v8->i32[0];
              v176 = (v9 - 2) >> 1;
              v177 = v8;
              do
              {
                while (1)
                {
                  v184 = v177 + v174;
                  v183 = (v184 + 1);
                  v182 = v184[1];
                  v185 = (2 * v174) | 1;
                  v174 = 2 * v174 + 2;
                  if (v174 < v9)
                  {
                    break;
                  }

                  v174 = v185;
                  v177->i32[0] = v182;
                  v177 = (v184 + 1);
                  if (v185 > v176)
                  {
                    goto LABEL_411;
                  }
                }

                v180 = v184[2];
                v178 = (v184 + 2);
                v179 = v180;
                if (v182)
                {
                  LODWORD(result) = ~(v182 >> 1);
                }

                else
                {
                  LODWORD(result) = (v182 >> 1) + 1;
                }

                if ((result & 0x80000000) == 0)
                {
                  result = result;
                }

                else
                {
                  result = -result;
                }

                if (v179)
                {
                  v181 = ~(v179 >> 1);
                }

                else
                {
                  v181 = (v179 >> 1) + 1;
                }

                if (v181 < 0)
                {
                  v181 = -v181;
                }

                if (result <= v181)
                {
                  v174 = v185;
                }

                else
                {
                  v182 = v179;
                  v183 = v178;
                }

                v177->i32[0] = v182;
                v177 = v183;
              }

              while (v174 <= v176);
LABEL_411:
              a2 = (a2 - 4);
              if (v183 == a2)
              {
                v183->i32[0] = v175;
              }

              else
              {
                v183->i32[0] = a2->i32[0];
                a2->i32[0] = v175;
                v186 = (v183 - v8 + 4) >> 2;
                v173 = v186 < 2;
                v187 = v186 - 2;
                if (!v173)
                {
                  v188 = v187 >> 1;
                  v189 = v8 + v188;
                  v190 = *v189;
                  v191 = v183->i32[0];
                  v192 = *v189 >> 1;
                  if (*v189)
                  {
                    v193 = ~v192;
                  }

                  else
                  {
                    v193 = v192 + 1;
                  }

                  if (v193 >= 0)
                  {
                    v194 = v193;
                  }

                  else
                  {
                    v194 = -v193;
                  }

                  if (v191)
                  {
                    v195 = ~(v191 >> 1);
                  }

                  else
                  {
                    v195 = (v191 >> 1) + 1;
                  }

                  if (v195 < 0)
                  {
                    v195 = -v195;
                  }

                  if (v194 > v195)
                  {
                    do
                    {
                      v196 = v189;
                      v183->i32[0] = v190;
                      if (!v188)
                      {
                        break;
                      }

                      v188 = (v188 - 1) >> 1;
                      v189 = v8 + v188;
                      v190 = *v189;
                      v197 = *v189 >> 1;
                      v198 = (*v189 & 1) != 0 ? ~v197 : v197 + 1;
                      v199 = v198 >= 0 ? v198 : -v198;
                      v183 = v196;
                    }

                    while (v199 > v195);
                    *v196 = v191;
                  }
                }
              }

              v173 = v9-- <= 2;
            }

            while (!v173);
          }

          return result;
        }

        v10 = (v8 + 4 * (v9 >> 1));
        v11 = v10;
        v12 = a2[-1].i32[1];
        if (v12)
        {
          v13 = ~(v12 >> 1);
        }

        else
        {
          v13 = (v12 >> 1) + 1;
        }

        if ((v13 & 0x80000000) != 0)
        {
          v13 = -v13;
        }

        if (v9 < 0x81)
        {
          v20 = v8->i32[0];
          v21 = v11->i32[0];
          v22 = v8->i32[0] >> 1;
          if (v8->i32[0])
          {
            v23 = ~v22;
          }

          else
          {
            v23 = v22 + 1;
          }

          if (v23 >= 0)
          {
            v24 = v23;
          }

          else
          {
            v24 = -v23;
          }

          if (v21)
          {
            v25 = ~(v21 >> 1);
          }

          else
          {
            v25 = (v21 >> 1) + 1;
          }

          if (v25 < 0)
          {
            v25 = -v25;
          }

          if (v24 <= v25)
          {
            if (v13 > v24)
            {
              v8->i32[0] = v12;
              a2[-1].i32[1] = v20;
              v30 = v11->i32[0];
              v31 = v8->i32[0] >> 1;
              if (v8->i32[0])
              {
                v32 = ~v31;
              }

              else
              {
                v32 = v31 + 1;
              }

              if (v32 < 0)
              {
                v32 = -v32;
              }

              if (v30)
              {
                v33 = ~(v30 >> 1);
              }

              else
              {
                v33 = (v30 >> 1) + 1;
              }

              if (v33 < 0)
              {
                v33 = -v33;
              }

              if (v32 > v33)
              {
                v11->i32[0] = v8->i32[0];
                v8->i32[0] = v30;
                --a3;
                v34 = v30;
                v35 = v30 >> 1;
                if (a4)
                {
                  goto LABEL_122;
                }

                goto LABEL_185;
              }
            }

            goto LABEL_121;
          }

          if (v13 <= v24)
          {
            v11->i32[0] = v20;
            v8->i32[0] = v21;
            v50 = a2[-1].i32[1];
            if (v50)
            {
              v51 = ~(v50 >> 1);
            }

            else
            {
              v51 = (v50 >> 1) + 1;
            }

            if (v51 < 0)
            {
              v51 = -v51;
            }

            if (v51 <= v25)
            {
LABEL_121:
              --a3;
              v34 = v8->i32[0];
              v35 = v8->i32[0] >> 1;
              if (a4)
              {
                goto LABEL_122;
              }

              goto LABEL_185;
            }

            v8->i32[0] = v50;
          }

          else
          {
            v11->i32[0] = v12;
          }

          a2[-1].i32[1] = v21;
          goto LABEL_121;
        }

        v14 = v10->i32[0];
        v15 = v8->i32[0];
        v16 = v10->i32[0] >> 1;
        if (v10->i32[0])
        {
          v17 = ~v16;
        }

        else
        {
          v17 = v16 + 1;
        }

        if (v17 >= 0)
        {
          v18 = v17;
        }

        else
        {
          v18 = -v17;
        }

        if (v15)
        {
          v19 = ~(v15 >> 1);
        }

        else
        {
          v19 = (v15 >> 1) + 1;
        }

        if (v19 < 0)
        {
          v19 = -v19;
        }

        if (v18 <= v19)
        {
          if (v13 > v18)
          {
            v10->i32[0] = v12;
            a2[-1].i32[1] = v14;
            v26 = v8->i32[0];
            v27 = v10->i32[0] >> 1;
            if (v10->i32[0])
            {
              v28 = ~v27;
            }

            else
            {
              v28 = v27 + 1;
            }

            if (v28 < 0)
            {
              v28 = -v28;
            }

            if (v26)
            {
              v29 = ~(v26 >> 1);
            }

            else
            {
              v29 = (v26 >> 1) + 1;
            }

            if (v29 < 0)
            {
              v29 = -v29;
            }

            if (v28 > v29)
            {
              v8->i32[0] = v10->i32[0];
              v10->i32[0] = v26;
            }
          }
        }

        else
        {
          if (v13 > v18)
          {
            v8->i32[0] = v12;
LABEL_80:
            a2[-1].i32[1] = v15;
            goto LABEL_81;
          }

          v8->i32[0] = v14;
          v10->i32[0] = v15;
          v36 = a2[-1].i32[1];
          if (v36)
          {
            v37 = ~(v36 >> 1);
          }

          else
          {
            v37 = (v36 >> 1) + 1;
          }

          if (v37 < 0)
          {
            v37 = -v37;
          }

          if (v37 > v19)
          {
            v10->i32[0] = v36;
            goto LABEL_80;
          }
        }

LABEL_81:
        v38 = (v10 - 4);
        v39 = v10[-1].i32[1];
        v40 = v8->i32[1];
        if (v39)
        {
          v41 = ~(v39 >> 1);
        }

        else
        {
          v41 = (v39 >> 1) + 1;
        }

        if (v41 >= 0)
        {
          v42 = v41;
        }

        else
        {
          v42 = -v41;
        }

        if (v40)
        {
          v43 = ~(v40 >> 1);
        }

        else
        {
          v43 = (v40 >> 1) + 1;
        }

        if (v43 < 0)
        {
          v43 = -v43;
        }

        v44 = a2[-1].i32[0];
        if (v44)
        {
          v45 = ~(v44 >> 1);
        }

        else
        {
          v45 = (v44 >> 1) + 1;
        }

        if (v45 < 0)
        {
          v45 = -v45;
        }

        if (v42 <= v43)
        {
          if (v45 > v42)
          {
            v38->i32[0] = v44;
            a2[-1].i32[0] = v39;
            v46 = v8->i32[1];
            v47 = v38->i32[0] >> 1;
            if (v38->i32[0])
            {
              v48 = ~v47;
            }

            else
            {
              v48 = v47 + 1;
            }

            if (v48 < 0)
            {
              v48 = -v48;
            }

            if (v46)
            {
              v49 = ~(v46 >> 1);
            }

            else
            {
              v49 = (v46 >> 1) + 1;
            }

            if (v49 < 0)
            {
              v49 = -v49;
            }

            if (v48 > v49)
            {
              v8->i32[1] = v38->i32[0];
              v38->i32[0] = v46;
            }
          }
        }

        else
        {
          if (v45 > v42)
          {
            v8->i32[1] = v44;
LABEL_130:
            a2[-1].i32[0] = v40;
            goto LABEL_131;
          }

          v8->i32[1] = v39;
          v38->i32[0] = v40;
          v54 = a2[-1].i32[0];
          if (v54)
          {
            v55 = ~(v54 >> 1);
          }

          else
          {
            v55 = (v54 >> 1) + 1;
          }

          if (v55 < 0)
          {
            v55 = -v55;
          }

          if (v55 > v43)
          {
            v38->i32[0] = v54;
            goto LABEL_130;
          }
        }

LABEL_131:
        v58 = v10->i32[1];
        v56 = (v10 + 4);
        v57 = v58;
        v59 = v8[1].i32[0];
        v60 = v58 >> 1;
        v61 = ~(v58 >> 1);
        if (v58)
        {
          v62 = v61;
        }

        else
        {
          v62 = v60 + 1;
        }

        if (v62 >= 0)
        {
          v63 = v62;
        }

        else
        {
          v63 = -v62;
        }

        if (v59)
        {
          v64 = ~(v59 >> 1);
        }

        else
        {
          v64 = (v59 >> 1) + 1;
        }

        if (v64 < 0)
        {
          v64 = -v64;
        }

        v65 = a2[-2].i32[1];
        if (v65)
        {
          v66 = ~(v65 >> 1);
        }

        else
        {
          v66 = (v65 >> 1) + 1;
        }

        if (v66 < 0)
        {
          v66 = -v66;
        }

        if (v63 <= v64)
        {
          if (v66 > v63)
          {
            v56->i32[0] = v65;
            a2[-2].i32[1] = v57;
            v67 = v8[1].i32[0];
            v68 = v56->i32[0] >> 1;
            if (v56->i32[0])
            {
              v69 = ~v68;
            }

            else
            {
              v69 = v68 + 1;
            }

            if (v69 < 0)
            {
              v69 = -v69;
            }

            if (v67)
            {
              v70 = ~(v67 >> 1);
            }

            else
            {
              v70 = (v67 >> 1) + 1;
            }

            if (v70 < 0)
            {
              v70 = -v70;
            }

            if (v69 > v70)
            {
              v8[1].i32[0] = v56->i32[0];
              v56->i32[0] = v67;
            }
          }
        }

        else
        {
          if (v66 > v63)
          {
            v8[1].i32[0] = v65;
LABEL_170:
            a2[-2].i32[1] = v59;
            goto LABEL_171;
          }

          v8[1].i32[0] = v57;
          v56->i32[0] = v59;
          v71 = a2[-2].i32[1];
          if (v71)
          {
            v72 = ~(v71 >> 1);
          }

          else
          {
            v72 = (v71 >> 1) + 1;
          }

          if (v72 < 0)
          {
            v72 = -v72;
          }

          if (v72 > v64)
          {
            v56->i32[0] = v71;
            goto LABEL_170;
          }
        }

LABEL_171:
        v73 = v38->i32[0];
        v74 = (v38->i32[0] & 1) != 0 ? ~(v38->i32[0] >> 1) : (v38->i32[0] >> 1) + 1;
        v75 = v74 >= 0 ? v74 : -v74;
        v76 = *v11;
        v77 = vabs_s32(vbsl_s8(vceqz_s32(vand_s8(*v11, 0x100000001)), vsra_n_s32(0x100000001, *v11, 1uLL), vmvn_s8(vshr_n_s32(*v11, 1uLL))));
        v78 = *v11;
        if (v77.i32[0] <= v75)
        {
          if (v77.i32[1] <= v77.i32[0])
          {
            goto LABEL_184;
          }

          v11->i32[0] = v76.i32[1];
          v56->i32[0] = v78;
          v56 = v11;
          v78 = v73;
          if (v77.i32[1] > v75)
          {
            goto LABEL_183;
          }

          v78 = v76.i32[1];
        }

        else
        {
          if (v77.i32[1] > v77.i32[0])
          {
            goto LABEL_183;
          }

          v38->i32[0] = v78;
          v11->i32[0] = v73;
          if (v77.i32[1] > v75)
          {
            v78 = v76.i32[1];
            v38 = v11;
LABEL_183:
            v38->i32[0] = v76.i32[1];
            v56->i32[0] = v73;
            goto LABEL_184;
          }

          v78 = v73;
        }

LABEL_184:
        v79 = v8->i32[0];
        v8->i32[0] = v78;
        v11->i32[0] = v79;
        --a3;
        v34 = v8->i32[0];
        v35 = v8->i32[0] >> 1;
        if (a4)
        {
LABEL_122:
          v52 = v34 & 1;
          v53 = ~v35;
          break;
        }

LABEL_185:
        v80 = v8[-1].i32[1];
        if (v80)
        {
          v81 = ~(v80 >> 1);
        }

        else
        {
          v81 = (v80 >> 1) + 1;
        }

        if (v81 >= 0)
        {
          v82 = v81;
        }

        else
        {
          v82 = -v81;
        }

        v52 = v34 & 1;
        v53 = ~v35;
        if (v34)
        {
          v83 = ~v35;
        }

        else
        {
          v83 = v35 + 1;
        }

        if ((v83 & 0x80000000) != 0)
        {
          v83 = -v83;
        }

        if (v82 > v83)
        {
          break;
        }

        v111 = a2[-1].i32[1];
        if (v111)
        {
          v112 = ~(v111 >> 1);
        }

        else
        {
          v112 = (v111 >> 1) + 1;
        }

        if (v112 < 0)
        {
          v112 = -v112;
        }

        if (v83 <= v112)
        {
          v117 = (v8 + 4);
          do
          {
            v8 = v117;
            if (v117 >= a2)
            {
              break;
            }

            v117 = (v117 + 4);
            v118 = v8->i32[0] >> 1;
            if (v8->i32[0])
            {
              v119 = ~v118;
            }

            else
            {
              v119 = v118 + 1;
            }

            if (v119 < 0)
            {
              v119 = -v119;
            }
          }

          while (v83 <= v119);
        }

        else
        {
          do
          {
            v113 = v8->i32[1];
            v8 = (v8 + 4);
            v114 = v113 >> 1;
            v115 = ~(v113 >> 1);
            if (v113)
            {
              v116 = v115;
            }

            else
            {
              v116 = v114 + 1;
            }

            if (v116 < 0)
            {
              v116 = -v116;
            }
          }

          while (v83 <= v116);
        }

        v120 = a2;
        if (v8 < a2)
        {
          v120 = a2;
          do
          {
            v121 = v120[-1].i32[1];
            v120 = (v120 - 4);
            v122 = v121 >> 1;
            v123 = ~(v121 >> 1);
            if (v121)
            {
              v124 = v123;
            }

            else
            {
              v124 = v122 + 1;
            }

            if (v124 < 0)
            {
              v124 = -v124;
            }
          }

          while (v83 > v124);
        }

        if (v8 < v120)
        {
          v125 = v8->i32[0];
          v126 = v120->i32[0];
          do
          {
            v8->i32[0] = v126;
            v120->i32[0] = v125;
            do
            {
              v127 = v8->i32[1];
              v8 = (v8 + 4);
              v125 = v127;
              v128 = v127 >> 1;
              v129 = ~(v127 >> 1);
              if (v127)
              {
                v130 = v129;
              }

              else
              {
                v130 = v128 + 1;
              }

              if (v130 < 0)
              {
                v130 = -v130;
              }
            }

            while (v83 <= v130);
            do
            {
              v131 = v120[-1].i32[1];
              v120 = (v120 - 4);
              v126 = v131;
              v132 = v131 >> 1;
              v133 = ~(v131 >> 1);
              if (v131)
              {
                v134 = v133;
              }

              else
              {
                v134 = v132 + 1;
              }

              if (v134 < 0)
              {
                v134 = -v134;
              }
            }

            while (v83 > v134);
          }

          while (v8 < v120);
        }

        v135 = &v8[-1] + 1;
        if (&v8[-1].u8[4] != v7)
        {
          v7->i32[0] = *v135;
        }

        a4 = 0;
        *v135 = v34;
      }

      v84 = v35 + 1;
      v85 = 0;
      if (v52)
      {
        v84 = v53;
      }

      if ((v84 & 0x80000000) != 0)
      {
        v84 = -v84;
      }

      do
      {
        v86 = v8->i32[v85 + 1];
        if (v86)
        {
          v87 = ~(v86 >> 1);
        }

        else
        {
          v87 = (v86 >> 1) + 1;
        }

        if (v87 < 0)
        {
          v87 = -v87;
        }

        ++v85;
      }

      while (v87 > v84);
      v88 = (v8 + v85 * 4);
      v89 = a2;
      if (v85 == 1)
      {
        v89 = a2;
        do
        {
          if (v88 >= v89)
          {
            break;
          }

          v94 = v89[-1].i32[1];
          v89 = (v89 - 4);
          v95 = v94 >> 1;
          v96 = ~(v94 >> 1);
          if (v94)
          {
            v97 = v96;
          }

          else
          {
            v97 = v95 + 1;
          }

          if (v97 < 0)
          {
            v97 = -v97;
          }
        }

        while (v97 <= v84);
      }

      else
      {
        do
        {
          v90 = v89[-1].i32[1];
          v89 = (v89 - 4);
          v91 = v90 >> 1;
          v92 = ~(v90 >> 1);
          if (v90)
          {
            v93 = v92;
          }

          else
          {
            v93 = v91 + 1;
          }

          if (v93 < 0)
          {
            v93 = -v93;
          }
        }

        while (v93 <= v84);
      }

      if (v88 >= v89)
      {
        v109 = &v88[-1] + 1;
        if (&v88[-1].u8[4] == v8)
        {
          goto LABEL_243;
        }

LABEL_242:
        v8->i32[0] = *v109;
        goto LABEL_243;
      }

      v98 = v89->i32[0];
      v99 = v88;
      v100 = v89;
      do
      {
        *v99 = v98;
        *v100 = v86;
        do
        {
          v101 = v99[1];
          ++v99;
          v86 = v101;
          v102 = v101 >> 1;
          v103 = ~(v101 >> 1);
          if (v101)
          {
            v104 = v103;
          }

          else
          {
            v104 = v102 + 1;
          }

          if (v104 < 0)
          {
            v104 = -v104;
          }
        }

        while (v104 > v84);
        do
        {
          v105 = *--v100;
          v98 = v105;
          v106 = v105 >> 1;
          v107 = ~(v105 >> 1);
          if (v105)
          {
            v108 = v107;
          }

          else
          {
            v108 = v106 + 1;
          }

          if (v108 < 0)
          {
            v108 = -v108;
          }
        }

        while (v108 <= v84);
      }

      while (v99 < v100);
      v109 = v99 - 1;
      if (v99 - 1 != v8)
      {
        goto LABEL_242;
      }

LABEL_243:
      *v109 = v34;
      if (v88 < v89)
      {
        goto LABEL_246;
      }

      v110 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::DratProofHandler::MapClause(absl::lts_20240722::Span<operations_research::sat::Literal const>)::$_0 &,operations_research::sat::Literal*>(v8, v109);
      v8 = (v109 + 1);
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::DratProofHandler::MapClause(absl::lts_20240722::Span<operations_research::sat::Literal const>)::$_0 &,operations_research::sat::Literal*>((v109 + 1), a2);
      if (result)
      {
        break;
      }

      if (!v110)
      {
LABEL_246:
        result = std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::DratProofHandler::MapClause(absl::lts_20240722::Span<operations_research::sat::Literal const>)::$_0 &,operations_research::sat::Literal*,false>(v7, v109, a3, a4 & 1);
        a4 = 0;
        v8 = (v109 + 1);
      }
    }

    a2 = v109;
    if (!v110)
    {
      continue;
    }

    return result;
  }
}

int *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::DratProofHandler::MapClause(absl::lts_20240722::Span<operations_research::sat::Literal const>)::$_0 &,operations_research::sat::Literal*,0>(int *result, int *a2, int *a3, int *a4)
{
  v4 = *a2;
  v5 = *result;
  v6 = *a2 >> 1;
  v7 = ~v6;
  if (*a2)
  {
    v8 = ~(*a2 >> 1);
  }

  else
  {
    v8 = v6 + 1;
  }

  if (v8 >= 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = -v8;
  }

  v10 = *result & 1;
  v11 = v5 >> 1;
  v12 = ~(v5 >> 1);
  if (v5)
  {
    v13 = ~(v5 >> 1);
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0)
  {
    v14 = v13;
  }

  else
  {
    v14 = -v13;
  }

  v15 = *a3;
  v16 = *a3 >> 1;
  if (*a3)
  {
    v17 = ~v16;
  }

  else
  {
    v17 = v16 + 1;
  }

  if (v17 < 0)
  {
    v17 = -v17;
  }

  if (v9 <= v14)
  {
    if (v17 <= v9)
    {
      v18 = v16 + 1;
      v12 = ~v16;
      v10 = *a3 & 1;
    }

    else
    {
      *a2 = v15;
      *a3 = v4;
      v19 = *result;
      v20 = *a2 >> 1;
      if (*a2)
      {
        v21 = ~v20;
      }

      else
      {
        v21 = v20 + 1;
      }

      if (v21 < 0)
      {
        v21 = -v21;
      }

      if (v19)
      {
        v22 = ~(v19 >> 1);
      }

      else
      {
        v22 = (v19 >> 1) + 1;
      }

      if (v22 < 0)
      {
        v22 = -v22;
      }

      if (v21 <= v22)
      {
        v18 = v6 + 1;
        v12 = v7;
        v10 = v4 & 1;
        v15 = v4;
      }

      else
      {
        *result = *a2;
        *a2 = v19;
        v15 = *a3;
        v10 = *a3 & 1;
        v12 = ~(*a3 >> 1);
        v18 = (*a3 >> 1) + 1;
      }
    }
  }

  else
  {
    v18 = v11 + 1;
    if (v17 > v9)
    {
      *result = v15;
LABEL_41:
      *a3 = v5;
      v15 = v5;
      goto LABEL_45;
    }

    *result = v4;
    *a2 = v5;
    v15 = *a3;
    v23 = *a3 >> 1;
    if (*a3)
    {
      v24 = ~v23;
    }

    else
    {
      v24 = v23 + 1;
    }

    if (v24 < 0)
    {
      v24 = -v24;
    }

    if (v24 > v14)
    {
      *a2 = v15;
      goto LABEL_41;
    }

    v18 = v23 + 1;
    v12 = ~v23;
    v10 = *a3 & 1;
  }

LABEL_45:
  v25 = *a4 >> 1;
  if (*a4)
  {
    v26 = ~v25;
  }

  else
  {
    v26 = v25 + 1;
  }

  if (v26 < 0)
  {
    v26 = -v26;
  }

  if (v10)
  {
    v27 = v12;
  }

  else
  {
    v27 = v18;
  }

  if (v27 < 0)
  {
    v27 = -v27;
  }

  if (v26 > v27)
  {
    *a3 = *a4;
    *a4 = v15;
    v28 = *a2;
    v29 = *a3 >> 1;
    if (*a3)
    {
      v30 = ~v29;
    }

    else
    {
      v30 = v29 + 1;
    }

    if (v30 < 0)
    {
      v30 = -v30;
    }

    if (v28)
    {
      v31 = ~(v28 >> 1);
    }

    else
    {
      v31 = (v28 >> 1) + 1;
    }

    if (v31 < 0)
    {
      v31 = -v31;
    }

    if (v30 > v31)
    {
      *a2 = *a3;
      *a3 = v28;
      v32 = *result;
      v33 = *a2 >> 1;
      if (*a2)
      {
        v34 = ~v33;
      }

      else
      {
        v34 = v33 + 1;
      }

      if (v34 < 0)
      {
        v34 = -v34;
      }

      if (v32)
      {
        v35 = ~(v32 >> 1);
      }

      else
      {
        v35 = (v32 >> 1) + 1;
      }

      if (v35 < 0)
      {
        v35 = -v35;
      }

      if (v34 > v35)
      {
        *result = *a2;
        *a2 = v32;
      }
    }
  }

  return result;
}

int *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::DratProofHandler::MapClause(absl::lts_20240722::Span<operations_research::sat::Literal const>)::$_0 &,operations_research::sat::Literal*,0>(int *a1, int *a2, int *a3, int *a4, int *a5)
{
  result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::DratProofHandler::MapClause(absl::lts_20240722::Span<operations_research::sat::Literal const>)::$_0 &,operations_research::sat::Literal*,0>(a1, a2, a3, a4);
  v11 = *a4;
  v12 = *a5 >> 1;
  if (*a5)
  {
    v13 = ~v12;
  }

  else
  {
    v13 = v12 + 1;
  }

  if (v13 < 0)
  {
    v13 = -v13;
  }

  if (v11)
  {
    v14 = ~(v11 >> 1);
  }

  else
  {
    v14 = (v11 >> 1) + 1;
  }

  if (v14 < 0)
  {
    v14 = -v14;
  }

  if (v13 > v14)
  {
    *a4 = *a5;
    *a5 = v11;
    v15 = *a3;
    v16 = *a4 >> 1;
    if (*a4)
    {
      v17 = ~v16;
    }

    else
    {
      v17 = v16 + 1;
    }

    if (v17 < 0)
    {
      v17 = -v17;
    }

    if (v15)
    {
      v18 = ~(v15 >> 1);
    }

    else
    {
      v18 = (v15 >> 1) + 1;
    }

    if (v18 < 0)
    {
      v18 = -v18;
    }

    if (v17 > v18)
    {
      *a3 = *a4;
      *a4 = v15;
      v19 = *a2;
      v20 = *a3 >> 1;
      if (*a3)
      {
        v21 = ~v20;
      }

      else
      {
        v21 = v20 + 1;
      }

      if (v21 < 0)
      {
        v21 = -v21;
      }

      if (v19)
      {
        v22 = ~(v19 >> 1);
      }

      else
      {
        v22 = (v19 >> 1) + 1;
      }

      if (v22 < 0)
      {
        v22 = -v22;
      }

      if (v21 > v22)
      {
        *a2 = *a3;
        *a3 = v19;
        v23 = *a1;
        v24 = *a2 >> 1;
        if (*a2)
        {
          v25 = ~v24;
        }

        else
        {
          v25 = v24 + 1;
        }

        if (v25 < 0)
        {
          v25 = -v25;
        }

        if (v23)
        {
          v26 = ~(v23 >> 1);
        }

        else
        {
          v26 = (v23 >> 1) + 1;
        }

        if (v26 < 0)
        {
          v26 = -v26;
        }

        if (v25 > v26)
        {
          *a1 = *a2;
          *a2 = v23;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::DratProofHandler::MapClause(absl::lts_20240722::Span<operations_research::sat::Literal const>)::$_0 &,operations_research::sat::Literal*>(int8x8_t *a1, int8x8_t *a2)
{
  v2 = (a2 - a1) >> 2;
  if (v2 <= 2)
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v4 = a2[-1].i32[1];
      v5 = a1->i32[0];
      if (v4)
      {
        v6 = ~(v4 >> 1);
      }

      else
      {
        v6 = (v4 >> 1) + 1;
      }

      if (v6 < 0)
      {
        v6 = -v6;
      }

      if (v5)
      {
        v7 = ~(v5 >> 1);
      }

      else
      {
        v7 = (v5 >> 1) + 1;
      }

      if (v7 < 0)
      {
        v7 = -v7;
      }

      if (v6 <= v7)
      {
        return 1;
      }

      a1->i32[0] = v4;
      a2[-1].i32[1] = v5;
      return 1;
    }

LABEL_29:
    v13 = a1 + 1;
    v12 = a1->i32[0];
    v14 = *(a1 + 4);
    v15 = a1->i32[0] >> 1;
    if (a1->i32[0])
    {
      v16 = ~v15;
    }

    else
    {
      v16 = v15 + 1;
    }

    if (v16 < 0)
    {
      v16 = -v16;
    }

    v17 = vabs_s32(vbsl_s8(vceqz_s32(vand_s8(v14, 0x100000001)), vsra_n_s32(0x100000001, v14, 1uLL), vmvn_s8(vshr_n_s32(v14, 1uLL))));
    if (v17.i32[0] <= v16)
    {
      if (v17.i32[1] <= v17.i32[0])
      {
        goto LABEL_45;
      }

      a1->i32[1] = v14.i32[1];
      v13->i32[0] = v14.i32[0];
      v18 = a1;
      v19 = (a1 + 4);
    }

    else
    {
      v18 = a1;
      v19 = a1 + 1;
      if (v17.i32[1] > v17.i32[0])
      {
LABEL_44:
        v18->i32[0] = v14.i32[1];
        v19->i32[0] = v12;
LABEL_45:
        v21 = (a1 + 12);
        if (&a1[1].u8[4] == a2)
        {
          return 1;
        }

        v22 = 0;
        for (i = 12; ; i += 4)
        {
          v24 = *v13;
          v25 = vabs_s32(vbsl_s8(vceqz_s32(vand_s8(*v13, 0x100000001)), vsra_n_s32(0x100000001, *v13, 1uLL), vmvn_s8(vshr_n_s32(*v13, 1uLL))));
          if (v25.i32[1] > v25.i32[0])
          {
            break;
          }

LABEL_48:
          v13 = v21;
          v21 = (v21 + 4);
          if (v21 == a2)
          {
            return 1;
          }
        }

        v26 = *v13;
        v27 = i;
        do
        {
          *(a1->i32 + v27) = v26;
          v28 = v27 - 4;
          if (v27 == 4)
          {
            a1->i32[0] = v24.i32[1];
            if (++v22 != 8)
            {
              goto LABEL_48;
            }

            return &v21->u8[4] == a2;
          }

          v26 = *(a1[-1].i32 + v27);
          if (v26)
          {
            v29 = ~(v26 >> 1);
          }

          else
          {
            v29 = (v26 >> 1) + 1;
          }

          if (v29 >= 0)
          {
            v30 = v29;
          }

          else
          {
            v30 = -v29;
          }

          v27 = v28;
        }

        while (v25.i32[1] > v30);
        *(a1->i32 + v28) = v24.i32[1];
        if (++v22 != 8)
        {
          goto LABEL_48;
        }

        return &v21->u8[4] == a2;
      }

      a1->i32[0] = v14.i32[0];
      a1->i32[1] = v12;
      v18 = (a1 + 4);
      v19 = a1 + 1;
    }

    if (v17.i32[1] <= v16)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  if (v2 != 3)
  {
    if (v2 == 4)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::DratProofHandler::MapClause(absl::lts_20240722::Span<operations_research::sat::Literal const>)::$_0 &,operations_research::sat::Literal*,0>(a1, a1 + 1, &a1[1], &a2[-1] + 1);
      return 1;
    }

    if (v2 == 5)
    {
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::DratProofHandler::MapClause(absl::lts_20240722::Span<operations_research::sat::Literal const>)::$_0 &,operations_research::sat::Literal*,0>(a1, a1 + 1, &a1[1], &a1[1] + 1, &a2[-1] + 1);
      return 1;
    }

    goto LABEL_29;
  }

  v8 = *a1;
  v9 = vabs_s32(vbsl_s8(vceqz_s32(vand_s8(*a1, 0x100000001)), vsra_n_s32(0x100000001, *a1, 1uLL), vmvn_s8(vshr_n_s32(*a1, 1uLL))));
  v10 = a2[-1].i32[1];
  if (v10)
  {
    v11 = ~(v10 >> 1);
  }

  else
  {
    v11 = (v10 >> 1) + 1;
  }

  if (v11 < 0)
  {
    v11 = -v11;
  }

  if (v9.i32[1] <= v9.i32[0])
  {
    if (v11 <= v9.i32[1])
    {
      return 1;
    }

    a1->i32[1] = v10;
    a2[-1].i32[1] = v8.i32[1];
    v20 = vabs_s32(vbsl_s8(vceqz_s32(vand_s8(*a1, 0x100000001)), vsra_n_s32(0x100000001, *a1, 1uLL), vmvn_s8(vshr_n_s32(*a1, 1uLL))));
    if ((vcgt_u32(vdup_lane_s32(v20, 1), v20).u8[0] & 1) == 0)
    {
      return 1;
    }

    *a1 = vrev64_s32(*a1);
    return 1;
  }

  else if (v11 <= v9.i32[1])
  {
    *a1 = vrev64_s32(v8);
    v31 = a2[-1].i32[1];
    if (v31)
    {
      v32 = ~(v31 >> 1);
    }

    else
    {
      v32 = (v31 >> 1) + 1;
    }

    if (v32 < 0)
    {
      v32 = -v32;
    }

    if (v32 <= v9.i32[0])
    {
      return 1;
    }

    a1->i32[1] = v31;
    a2[-1].i32[1] = v8.i32[0];
    return 1;
  }

  else
  {
    a1->i32[0] = v10;
    a2[-1].i32[1] = v8.i32[0];
    return 1;
  }
}

void operations_research::sat::DratWriter::WriteClause(uint64_t a1, int *a2, uint64_t a3)
{
  v12[2] = *MEMORY[0x277D85DE8];
  if ((a3 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v5 = 4 * a3;
    do
    {
      v6 = *a2 >> 1;
      if (*a2)
      {
        v7 = ~v6;
      }

      else
      {
        v7 = (v6 + 1);
      }

      v12[0] = v7;
      v12[1] = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<int>;
      absl::lts_20240722::str_format_internal::AppendPack(a1 + 16, "%d ", 3, v12, 1uLL);
      ++a2;
      v5 -= 4;
    }

    while (v5);
  }

  std::string::append((a1 + 16), "0\n");
  if ((*(a1 + 39) & 0x80000000) == 0)
  {
    goto LABEL_12;
  }

  v8 = *(a1 + 24);
  if (v8 <= 0x2710)
  {
    goto LABEL_12;
  }

  file::WriteString(*(a1 + 16), v8, *(a1 + 8), 47802, &v11);
  if (v11 != 1)
  {
    absl::lts_20240722::status_internal::MakeCheckFailString();
  }

  if ((*(a1 + 39) & 0x80000000) == 0)
  {
    *(a1 + 16) = 0;
    *(a1 + 39) = 0;
LABEL_12:
    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  **(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v10 = *MEMORY[0x277D85DE8];
}

void sub_23CB8BC38(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void operations_research::sat::DratWriter::DeleteClause(uint64_t a1, int *a2, uint64_t a3)
{
  std::string::append((a1 + 16), "d ");

  operations_research::sat::DratWriter::WriteClause(a1, a2, a3);
}

void operations_research::glop::DualEdgeNorms::Stats::~Stats(operations_research::glop::DualEdgeNorms::Stats *this)
{
  *(this + 30) = &unk_284F3A5F8;
  if (*(this + 271) < 0)
  {
    operator delete(*(this + 31));
    *(this + 20) = &unk_284F3A5F8;
    if ((*(this + 191) & 0x80000000) == 0)
    {
LABEL_3:
      *(this + 10) = &unk_284F3A5F8;
      if ((*(this + 111) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    *(this + 20) = &unk_284F3A5F8;
    if ((*(this + 191) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(*(this + 21));
  *(this + 10) = &unk_284F3A5F8;
  if ((*(this + 111) & 0x80000000) == 0)
  {
LABEL_4:
    v2 = this;

    goto LABEL_6;
  }

LABEL_9:
  operator delete(*(this + 11));
  v2 = this;

LABEL_6:
  operations_research::StatsGroup::~StatsGroup(v2);
}

operations_research::glop::DualEdgeNorms *operations_research::glop::DualEdgeNorms::DualEdgeNorms(operations_research::glop::DualEdgeNorms *this, const operations_research::glop::BasisFactorization *a2)
{
  v4 = operations_research::glop::DualEdgeNorms::Stats::Stats(this);
  operations_research::glop::GlopParameters::GlopParameters(v4 + 320, 0);
  *(this + 81) = a2;
  *(this + 41) = 0u;
  *(this + 42) = 0u;
  *(this + 43) = 0u;
  *(this + 704) = 1;
  return this;
}

void operations_research::glop::DualEdgeNorms::ResizeOnNewRows(uint64_t a1, int a2)
{
  v7 = 0x3FF0000000000000;
  v2 = a2;
  v3 = *(a1 + 656);
  v4 = (*(a1 + 664) - v3) >> 3;
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {
    std::vector<double>::__append(a1 + 656, v6, &v7);
  }

  else if (!v5)
  {
    *(a1 + 664) = v3 + 8 * v2;
  }
}

uint64_t operations_research::glop::DualEdgeNorms::GetEdgeSquaredNorms(operations_research::glop::DualEdgeNorms *this)
{
  if (*(this + 704) == 1)
  {
    v2 = **(*(this + 81) + 496);
    v8 = 0;
    v3 = *(this + 82);
    v4 = (*(this + 83) - v3) >> 3;
    if (v2 <= v4)
    {
      if (v2 < v4)
      {
        *(this + 83) = v3 + 8 * v2;
      }
    }

    else
    {
      std::vector<double>::__append(this + 656, v2 - v4, &v8);
    }

    if (v2 >= 1)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*(this + 82) + 8 * i) = operations_research::glop::BasisFactorization::DualEdgeSquaredNorm(*(this + 81), i);
      }
    }

    *(this + 704) = 0;
  }

  result = *(this + 82);
  v7 = ((*(this + 83) - result) >> 3);
  return result;
}

__n128 operations_research::glop::DualEdgeNorms::UpdateDataOnBasisPermutation(uint64_t a1, void *a2)
{
  if ((*(a1 + 704) & 1) == 0)
  {
    v2 = (a1 + 680);
    operations_research::glop::ApplyPermutation<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,operations_research::glop::StrictITIVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double>>(a2, (a1 + 656), a1 + 680);
    v4 = *(a1 + 696);
    *(a1 + 696) = *(a1 + 672);
    result = *v2;
    *v2 = *(a1 + 656);
    *(a1 + 656) = result;
    *(a1 + 672) = v4;
  }

  return result;
}

BOOL operations_research::glop::DualEdgeNorms::TestPrecision(uint64_t a1, const operations_research::glop::ScatteredColumn *a2, operations_research::glop *this)
{
  if (*(a1 + 704))
  {
    return 1;
  }

  v3 = a2;
  v5 = operations_research::glop::SquaredNorm(this, a2);
  v6 = 8 * v3;
  v7 = *(*(a1 + 656) + v6);
  v8 = sqrt(v5);
  v9 = sqrt(v7);
  operations_research::RatioDistribution::Add(a1 + 160, (v8 - v9) / v8);
  if (fabs((v8 - v9) / v8) > *(a1 + 384))
  {
    if (dword_2810BFE60 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&_MergedGlobals_10, dword_2810BFE60))
    {
      v15 = v6;
      absl::lts_20240722::log_internal::LogMessage::LogMessage(v16, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/dual_edge_norms.cc", 67);
      v11 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v16, 1);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v11, "Recomputing edge norms: ", 0x18uLL);
      v17 = v8;
      v12 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v11, &v17);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v12, " vs ", 4uLL);
      v17 = v9;
      absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v12, &v17);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(v16);
      v6 = v15;
    }

    *(a1 + 704) = 1;
  }

  *(*(a1 + 656) + v6) = v5;
  if (v7 > v5 * 0.25)
  {
    return 1;
  }

  if (dword_2810BFE78 < 1)
  {
    return 0;
  }

  result = absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810BFE70, dword_2810BFE78);
  if (result)
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v16, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/dual_edge_norms.cc", 76);
    v13 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v16, 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v13, "Recomputing leaving row. Norm was ", 0x22uLL);
    v17 = v9;
    v14 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v13, &v17);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v14, " vs precise version ", 0x14uLL);
    v17 = v8;
    absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v14, &v17);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v16);
    return 0;
  }

  return result;
}

void sub_23CB8C1C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CB8C1D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t *operations_research::glop::DualEdgeNorms::UpdateBeforeBasisPivot(uint64_t *result, int a2, int a3, uint64_t *a4, operations_research::glop::ScatteredColumn *a5)
{
  if ((result[88] & 1) == 0)
  {
    v7 = result;
    result = operations_research::glop::BasisFactorization::RightSolveForTau(result[81], a5);
    v8 = *a4;
    v9 = 8 * a3;
    v10 = *(*a4 + v9);
    v11 = *(v7 + 656);
    v12 = *(v11 + v9) / (v10 * v10);
    v13 = a4[4];
    v14 = (a4[5] - v13) >> 2;
    if (v14 >= 1)
    {
      v15 = *result;
      v16 = -2.0 / v10;
      do
      {
        v18 = *v13++;
        v17 = v18;
        v19 = 8 * v18;
        v20 = *(v11 + v19) + *(v8 + v19) * (v16 * *(v15 + v19) + *(v8 + v19) * v12);
        if (v20 < 0.0001 && a3 != v17)
        {
          v20 = 0.0001;
        }

        *(v11 + v19) = v20;
        --v14;
      }

      while (v14);
    }

    *(v11 + 8 * a3) = v12;
  }

  return result;
}

operations_research::glop::DualEdgeNorms::Stats *operations_research::glop::DualEdgeNorms::Stats::Stats(operations_research::glop::DualEdgeNorms::Stats *this)
{
  *(this + 23) = 13;
  strcpy(this, "DualEdgeNorms");
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 9) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  *(this + 7) = this + 64;
  operations_research::DistributionStat::DistributionStat(this + 80, "tau_density", 0xBuLL, this);
  *(this + 10) = &unk_284F44D30;
  operations_research::DistributionStat::DistributionStat(this + 160, "edge_norms_accuracy", 0x13uLL, this);
  *(this + 20) = &unk_284F44D90;
  operations_research::DistributionStat::DistributionStat(this + 240, "lower_bounded_norms", 0x13uLL, this);
  *(this + 30) = &unk_284F44DF0;
  return this;
}

void sub_23CB8C3C4(_Unwind_Exception *a1)
{
  *(v1 + 160) = &unk_284F3A5F8;
  if (*(v1 + 191) < 0)
  {
    operator delete(*(v1 + 168));
    *(v1 + 80) = &unk_284F3A5F8;
    if ((*(v1 + 111) & 0x80000000) == 0)
    {
LABEL_3:
      operations_research::StatsGroup::~StatsGroup(v1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    *(v1 + 80) = &unk_284F3A5F8;
    if ((*(v1 + 111) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(*(v1 + 88));
  operations_research::StatsGroup::~StatsGroup(v1);
  _Unwind_Resume(a1);
}

void operations_research::glop::ApplyPermutation<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>,operations_research::glop::StrictITIVector<operations_research::StrongIndex<operations_research::glop::RowIndex_index_tag_>,double>>(void *a1, char **a2, uint64_t a3)
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
          v19 = *v16;
          v16 += 8;
          v20 = v19;
          LODWORD(v19) = *v15++;
          *(v18 + 8 * v19) = v20;
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
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v21, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/lp_data/permutation.h", 204, 2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v21, "result", 6uLL);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v21, " == NULL", 8uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v21);
  }
}

void operations_research::sat::EncodingNode::~EncodingNode(operations_research::sat::EncodingNode *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  v3 = *(this + 9);
  if (v3 == (this + 48))
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }
}

void *operations_research::sat::EncodingNode::LiteralNode@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 32) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *a3 = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = a2;
  *(a3 + 8) = 1;
  *(a3 + 12) = a1 >> 1;
  __src = a1;
  return std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal const*,operations_research::sat::Literal const*>((a3 + 80), &__src, &v5, 1uLL);
}

void operations_research::sat::EncodingNode::GenericNode(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 24) = 0;
  v6 = (a5 + 24);
  *(a5 + 72) = 0;
  v7 = (a5 + 72);
  *(a5 + 80) = 0;
  v8 = a5 + 80;
  *(a5 + 32) = 0;
  *(a5 + 40) = 0;
  *(a5 + 88) = 0;
  *(a5 + 96) = 0;
  *a5 = 0;
  *(a5 + 4) = a1;
  *(a5 + 12) = 0;
  *(a5 + 16) = 0;
  *(a5 + 8) = a2;
  v9 = (a5 + 72);
  v10 = *(a3 + 24);
  if (!v10)
  {
    goto LABEL_4;
  }

  if (v10 != a3)
  {
    *v7 = v10;
    v9 = (a3 + 24);
LABEL_4:
    *v9 = 0;
    goto LABEL_6;
  }

  *v7 = a5 + 48;
  v11 = a1;
  v12 = a4;
  (*(*v10 + 24))(v10);
  a1 = v11;
  a4 = v12;
LABEL_6:
  *v6 = a4;
  v14 = a1;
  if (!*v7)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v13 = (*(**v7 + 48))(*v7, &v14);
  std::vector<int>::push_back[abi:ne200100](v8, &v13);
  *(a5 + 12) = **(a5 + 80) >> 1;
}

uint64_t operations_research::sat::EncodingNode::literal(operations_research::sat::EncodingNode *this, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    operations_research::sat::EncodingNode::literal(a2);
  }

  v3 = *(this + 10);
  v4 = (*(this + 11) - v3) >> 2;
  if (v4 <= a2)
  {
    operations_research::sat::EncodingNode::literal(a2, v4);
  }

  return *(v3 + 4 * a2);
}

void operations_research::sat::EncodingNode::InitializeAmoNode(uint64_t a1, uint64_t a2, unint64_t a3, operations_research::sat::SatSolver *a4)
{
  if (a3 >= 2)
  {
    v5 = a1 + 80;
    if (*(a1 + 80) == *(a1 + 88))
    {
      v6 = *(a4 + 4);
      operations_research::sat::SatSolver::SetNumVariables(a4, v6 + 1);
      v7[0] = 2 * v6;
      std::vector<int>::push_back[abi:ne200100](v5, v7);
      *(a1 + 32) = 0u;
      *a1 = 0;
      *(a1 + 8) = 1;
      *(a1 + 12) = v6;
      operator new();
    }

    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v7, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/encoding.cc", 102);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v7, "Already initialized", 0x13uLL);
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v7);
  }

  operations_research::sat::EncodingNode::InitializeAmoNode(a3);
}

void sub_23CB8CB5C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::EncodingNode::InitializeLazyNode(operations_research::sat::EncodingNode *this, operations_research::sat::EncodingNode *a2, operations_research::sat::EncodingNode *a3, operations_research::sat::SatSolver *a4)
{
  if (*(this + 10) != *(this + 11))
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v23, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/encoding.cc", 128);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v23, "Already initialized", 0x13uLL);
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v23);
  }

  v7 = *(a4 + 4);
  operations_research::sat::SatSolver::SetNumVariables(a4, v7 + 1);
  v9 = *(this + 11);
  v8 = *(this + 12);
  if (v9 >= v8)
  {
    v11 = *(this + 10);
    v12 = v9 - v11;
    v13 = (v9 - v11) >> 2;
    v14 = v13 + 1;
    if ((v13 + 1) >> 62)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v15 = v8 - v11;
    if (v15 >> 1 > v14)
    {
      v14 = v15 >> 1;
    }

    if (v15 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v16 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      if (!(v16 >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v17 = v13;
    v18 = (4 * v13);
    v19 = 2 * v7;
    v20 = &v18[-v17];
    *v18 = v19;
    v10 = v18 + 1;
    memcpy(v20, v11, v12);
    *(this + 10) = v20;
    *(this + 11) = v10;
    *(this + 12) = 0;
    if (v11)
    {
      operator delete(v11);
    }
  }

  else
  {
    *v9 = 2 * v7;
    v10 = v9 + 4;
  }

  *(this + 11) = v10;
  *(this + 4) = a2;
  *(this + 5) = a3;
  *(this + 4) = vadd_s32(*(a3 + 4), *(a2 + 4));
  v21 = *a2;
  if (*a2 <= *a3)
  {
    v21 = *a3;
  }

  *this = v21 + 1;
  v22 = *(a3 + 3);
  if (v22 >= *(a2 + 3))
  {
    v22 = *(a2 + 3);
  }

  *(this + 3) = v22;
}

uint64_t operations_research::sat::EncodingNode::InitializeLazyCoreNode(uint64_t result, uint64_t a2, int *a3, int *a4)
{
  if (*(result + 80) != *(result + 88))
  {
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v10, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/encoding.cc", 144);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v10, "Already initialized", 0x13uLL);
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v10);
  }

  v4 = a3[1];
  v5 = a4[1];
  v6 = a4[2] + a3[2];
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  v7 = v5 + v4;
  *(result + 16) = v7;
  *(result + 4) = v7 + 1;
  *(result + 8) = v6;
  v8 = *a3;
  if (*a3 <= *a4)
  {
    v8 = *a4;
  }

  *result = v8 + 1;
  v9 = a4[3];
  if (v9 >= a3[3])
  {
    v9 = a3[3];
  }

  *(result + 12) = v9;
  return result;
}

BOOL operations_research::sat::EncodingNode::IncreaseCurrentUB(operations_research::sat::EncodingNode *this, operations_research::sat::SatSolver *a2)
{
  v2 = *(this + 10);
  v3 = *(this + 11);
  v4 = v3 - v2;
  v5 = *(this + 2);
  v6 = *(this + 1) + ((v3 - v2) >> 2);
  if (v6 == v5)
  {
    return v6 != v5;
  }

  v9 = *(this + 9);
  if (!v9)
  {
    if (!a2)
    {
      operations_research::sat::EncodingNode::IncreaseCurrentUB();
    }

    v16 = *(a2 + 4);
    v17 = *(this + 12);
    if (v3 >= v17)
    {
      v25 = (v4 >> 2) + 1;
      if (v25 >> 62)
      {
        goto LABEL_37;
      }

      v26 = v17 - v2;
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

LABEL_38:
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v31 = (4 * (v4 >> 2));
      *v31 = 2 * v16;
      v18 = v31 + 1;
      memcpy(0, v2, v4);
      *(this + 10) = 0;
      *(this + 11) = v18;
      *(this + 12) = 0;
      if (v2)
      {
        operator delete(v2);
      }
    }

    else
    {
      *v3 = 2 * v16;
      v18 = v3 + 4;
    }

    *(this + 11) = v18;
    operations_research::sat::SatSolver::SetNumVariables(a2, *(a2 + 4) + 1);
    v14 = *(this + 10);
    v13 = *(this + 11);
    v15 = v13 - v14;
    if (v13 - v14 < 5)
    {
      return v6 != v5;
    }

LABEL_34:
    operations_research::sat::SatSolver::AddBinaryClause(a2, *(v13 - 1) ^ 1, *&v15[v14 - 8]);
    return v6 != v5;
  }

  v33[0] = v6;
  v10 = (*(*v9 + 48))(v9, v33);
  v12 = *(this + 11);
  v11 = *(this + 12);
  if (v12 < v11)
  {
    *v12 = v10;
    v13 = v12 + 4;
    *(this + 11) = v13;
    v14 = *(this + 10);
    v15 = v13 - v14;
    if (v13 - v14 < 5)
    {
      return v6 != v5;
    }

    goto LABEL_34;
  }

  v19 = *(this + 10);
  v20 = v12 - v19;
  v21 = (v12 - v19) >> 2;
  v22 = v21 + 1;
  if ((v21 + 1) >> 62)
  {
LABEL_37:
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v23 = v11 - v19;
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

    goto LABEL_38;
  }

  v28 = (v12 - v19) >> 2;
  v29 = (4 * v21);
  v30 = (4 * v21 - 4 * v28);
  *v29 = v10;
  v13 = v29 + 1;
  memcpy(v30, v19, v20);
  *(this + 10) = v30;
  *(this + 11) = v13;
  *(this + 12) = 0;
  if (v19)
  {
    operator delete(v19);
  }

  *(this + 11) = v13;
  v14 = *(this + 10);
  v15 = v13 - v14;
  if (v13 - v14 >= 5)
  {
    goto LABEL_34;
  }

  return v6 != v5;
}

uint64_t operations_research::sat::EncodingNode::Reduce(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 80);
  v2 = *(a1 + 88);
  if (v3 != v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = *(*(a2 + 216) + 24);
    do
    {
      if (((*(v6 + ((v3[v4] >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v3[v4]) & 1) == 0)
      {
        break;
      }

      ++v5;
      ++*(a1 + 4);
      v4 = v5;
    }

    while (v2 - v3 > v5);
    if (v5)
    {
      v7 = &v3[v4];
      v8 = v2 - v7;
      if (v2 == v7)
      {
        v11 = v3;
      }

      else
      {
        v9 = a1;
        v10 = a2;
        memmove(v3, &v3[v4], v2 - v7);
        a2 = v10;
        a1 = v9;
        v11 = *(v9 + 80);
      }

      v2 = (v3 + v8);
      *(a1 + 88) = v3 + v8;
      v3 = v11;
    }

    if (v3 != v2)
    {
      v12 = *(*(a2 + 216) + 24);
      v13 = v2 - 1;
      v14 = (v2 - 1) - v3;
      do
      {
        if (((*(v12 + ((*v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (*v13 & 0x3F ^ 1u)) & 1) == 0)
        {
          break;
        }

        *(a1 + 88) = v13;
        *(a1 + 8) = *(a1 + 4) + (v14 >> 2);
        v14 -= 4;
      }

      while (v13-- != v3);
    }
  }

  v16 = *(a1 + 16);
  v17 = *(a1 + 4);
  v18 = __OFSUB__(v17, v16);
  v19 = v17 - v16;
  if ((v19 < 0) ^ v18 | (v19 == 0))
  {
    return 0;
  }

  v20 = *(a1 + 24) * v19;
  *(a1 + 16) = v17;
  return v20;
}

void operations_research::sat::EncodingNode::ApplyWeightUpperBound(operations_research::sat::EncodingNode *this, uint64_t a2, uint64_t a3)
{
  v4 = *(this + 3);
  if (v4 < 1)
  {
    operations_research::sat::EncodingNode::ApplyWeightUpperBound(this + 3);
  }

  v5 = a2 / v4;
  if (v5 <= 0x3FFFFFFF)
  {
    v6 = (*(this + 4) + v5 - *(this + 1)) & ~((*(this + 4) + v5 - *(this + 1)) >> 31);
    if (v6 < ((*(this + 11) - *(this + 10)) >> 2))
    {
      v8 = (*(this + 4) + v5 - *(this + 1)) & ~((*(this + 4) + v5 - *(this + 1)) >> 31);
      while (1)
      {
        v9 = operations_research::sat::EncodingNode::literal(this, v8);
        if ((operations_research::sat::SatSolver::AddUnitClause(a3, v9 ^ 1u) & 1) == 0)
        {
          break;
        }

        ++v8;
        v10 = *(this + 10);
        v11 = *(this + 11) - v10;
        if (v8 >= (v11 >> 2))
        {
          v12 = v11 >> 2;
          if (v6 <= v12)
          {
            if (v6 < v12)
            {
              *(this + 11) = v10 + 4 * v6;
            }
          }

          else
          {
            std::vector<int>::__append((this + 80), v6 - v12);
          }

          *(this + 2) = *(this + 1) + v6;
          return;
        }
      }
    }
  }
}

void operations_research::sat::EncodingNode::TransformToBoolean(operations_research::sat::EncodingNode *this, operations_research::sat::SatSolver *a2, operations_research::sat::SatSolver *a3)
{
  v5 = (this + 80);
  v6 = (*(this + 11) - *(this + 10)) >> 2;
  if (v6 < 2)
  {
    if (*(this + 1) + v6 != *(this + 2))
    {
      operations_research::sat::IncreaseNodeSize(this, a2, a3);
      v12 = *(this + 10);
      v13 = *(this + 11) - v12;
      if ((v13 & 0x3FFFFFFFCLL) != 8)
      {
        operations_research::sat::EncodingNode::TransformToBoolean(v13);
      }

      v14 = v13 >> 2;
      if (v14 <= 1)
      {
        operations_research::sat::EncodingNode::TransformToBoolean(v14);
      }

      if (operations_research::sat::SatSolver::AddUnitClause(a2, *(v12 + 4) ^ 1u))
      {
        v9 = *(this + 10);
        v15 = (*(this + 11) - v9) >> 2;
        if (*(this + 11) == v9)
        {
          v16 = 1 - v15;
LABEL_17:
          std::vector<int>::__append(v5, v16);
        }

        else if (v15 >= 2)
        {
LABEL_14:
          *(this + 11) = v9 + 4;
        }

LABEL_18:
        *(this + 2) = *(this + 1) + 1;
      }
    }
  }

  else
  {
    v7 = 1;
    while (1)
    {
      v8 = operations_research::sat::EncodingNode::literal(this, v7);
      if ((operations_research::sat::SatSolver::AddUnitClause(a2, v8 ^ 1u) & 1) == 0)
      {
        break;
      }

      ++v7;
      v9 = *(this + 10);
      v10 = *(this + 11);
      if (v7 >= ((v10 - v9) >> 2))
      {
        v11 = (v10 - v9) >> 2;
        if (v10 == v9)
        {
          v16 = 1 - v11;
          goto LABEL_17;
        }

        if (v11 >= 2)
        {
          goto LABEL_14;
        }

        goto LABEL_18;
      }
    }
  }
}

BOOL operations_research::sat::IncreaseNodeSize(operations_research::sat *this, operations_research::sat::EncodingNode *a2, operations_research::sat::SatSolver *a3)
{
  result = operations_research::sat::EncodingNode::IncreaseCurrentUB(this, a2);
  if (result)
  {
    operator new();
  }

  return result;
}

uint64_t operations_research::sat::EncodingNode::GetAssumption(operations_research::sat::EncodingNode *this, operations_research::sat::SatSolver *a2, operations_research::sat::SatSolver *a3)
{
  if (!*(this + 3) || (v4 = *(this + 4), v4 >= *(this + 2)))
  {
    operations_research::sat::EncodingNode::GetAssumption(&v10);
  }

  v5 = *(this + 1);
  v6 = (v4 - v5);
  if (v4 - v5 < 0)
  {
    absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v6, 0, "index >= 0");
  }

  for (i = *(this + 10); v6 >= (*(this + 11) - i) >> 2; i = *(this + 10))
  {
    operations_research::sat::IncreaseNodeSize(this, a2, a3);
  }

  return *(i + 4 * v6) ^ 1u;
}

uint64_t operations_research::sat::LazyMerge@<X0>(int **this@<X0>, int **a2@<X1>, operations_research::sat::EncodingNode *a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = xmmword_23CE48D30;
  *(a4 + 16) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 24) = 0;
  *(a4 + 72) = 0u;
  *(a4 + 88) = 0u;
  operations_research::sat::EncodingNode::InitializeLazyNode(a4, this, a2, a3);
  v9 = this[10];
  if (this[11] == v9)
  {
    absl::lts_20240722::log_internal::MakeCheckOpString<long long,unsigned long long>(0, 0, "i < literals_.size()");
  }

  v10 = *(a4 + 80);
  if (*(a4 + 88) == v10)
  {
    absl::lts_20240722::log_internal::MakeCheckOpString<long long,unsigned long long>(0, 0, "i < literals_.size()");
  }

  operations_research::sat::SatSolver::AddBinaryClause(a3, *v9 ^ 1, *v10);
  v11 = a2[10];
  if (a2[11] == v11)
  {
    absl::lts_20240722::log_internal::MakeCheckOpString<long long,unsigned long long>(0, 0, "i < literals_.size()");
  }

  operations_research::sat::SatSolver::AddBinaryClause(a3, *v11 ^ 1, *v10);
  v12 = this[10];
  if (this[11] == v12)
  {
    absl::lts_20240722::log_internal::MakeCheckOpString<long long,unsigned long long>(0, 0, "i < literals_.size()");
  }

  v13 = a2[10];
  if (a2[11] == v13)
  {
    absl::lts_20240722::log_internal::MakeCheckOpString<long long,unsigned long long>(0, 0, "i < literals_.size()");
  }

  return operations_research::sat::SatSolver::AddTernaryClause(a3, *v10 ^ 1u, *v12, *v13);
}

__n128 std::deque<operations_research::sat::EncodingNode>::push_back(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 39 * ((v5 - v6) >> 3) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    std::deque<operations_research::sat::EncodingNode>::__add_back_capacity(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  v9 = *(v6 + 8 * (v8 / 0x27)) + 104 * (v8 % 0x27);
  v10 = *a2;
  v11 = a2[2];
  *(v9 + 16) = a2[1];
  *(v9 + 32) = v11;
  *v9 = v10;
  v12 = a2 + 72;
  v13 = *(a2 + 9);
  if (v13)
  {
    if (v13 == a2 + 3)
    {
      *(v9 + 72) = v9 + 48;
      (*(**v12 + 24))();
      goto LABEL_11;
    }

    *(v9 + 72) = v13;
  }

  else
  {
    v12 = v9 + 72;
  }

  *v12 = 0;
LABEL_11:
  *(v9 + 80) = 0;
  *(v9 + 88) = 0;
  *(v9 + 96) = 0;
  result = a2[5];
  *(v9 + 80) = result;
  *(v9 + 96) = *(a2 + 12);
  *(a2 + 10) = 0;
  *(a2 + 11) = 0;
  *(a2 + 12) = 0;
  ++*(a1 + 40);
  return result;
}

void operations_research::sat::LazyMergeAllNodeWithPQAndIncreaseLb(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v2 = a2[1];
  v5 = 0;
  v6 = 0;
  v4 = 0;
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  absl::lts_20240722::log_internal::MakeCheckOpString<unsigned long long,long long>(0, 2, "pq.size() == 2");
}

void sub_23CB8E830(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p)
{
  operations_research::sat::EncodingNode::~EncodingNode(&a11);
  v26 = a1;
  if (__p)
  {
    operator delete(__p);
    v26 = a1;
  }

  _Unwind_Resume(v26);
}

uint64_t std::priority_queue<operations_research::sat::EncodingNode *,std::vector<operations_research::sat::EncodingNode *>,operations_research::sat::anonymous namespace::SortEncodingNodePointers>::pop(uint64_t result)
{
  v2 = *result;
  v1 = *(result + 8);
  v3 = (v1 - *result) >> 3;
  if (v3 < 2)
  {
    goto LABEL_22;
  }

  v4 = 0;
  v5 = *v2;
  v6 = *result;
  do
  {
    v7 = v6;
    v6 += 8 * v4 + 8;
    v8 = 2 * v4;
    v4 = (2 * v4) | 1;
    v9 = v8 + 2;
    if (v9 < v3)
    {
      v10 = *(v6 + 1);
      v11 = **v6;
      if (v11 > *v10 || v11 == *v10 && v10[3] > *(*v6 + 12))
      {
        v6 += 8;
        v4 = v9;
      }
    }

    *v7 = *v6;
  }

  while (v4 <= ((v3 - 2) >> 1));
  v12 = (v1 - 8);
  if (v6 == (v1 - 8))
  {
    *v6 = v5;
LABEL_22:
    *(result + 8) = v1 - 8;
    return result;
  }

  *v6 = *v12;
  *v12 = v5;
  v13 = (v6 - v2 + 8) >> 3;
  v14 = v13 - 2;
  if (v13 < 2)
  {
    goto LABEL_22;
  }

  v15 = v14 >> 1;
  v16 = &v2[8 * (v14 >> 1)];
  v17 = *v16;
  v18 = *v6;
  v19 = **v16;
  v20 = **v6;
  if (v19 <= v20 && (v19 != v20 || v18[3] <= v17[3]))
  {
    goto LABEL_22;
  }

  *v6 = v17;
  if (v14 < 2)
  {
LABEL_26:
    *v16 = v18;
    *(result + 8) = v1 - 8;
  }

  else
  {
    v21 = &v2[8 * (v14 >> 1)];
    while (1)
    {
      v22 = v15 - 1;
      v15 = (v15 - 1) >> 1;
      v16 = &v2[8 * v15];
      v23 = *v16;
      v24 = **v16;
      if (v24 <= v20)
      {
        if (v24 != v20)
        {
          v16 = v21;
          goto LABEL_26;
        }

        if (v18[3] <= v23[3])
        {
          break;
        }
      }

      *v21 = v23;
      v21 = &v2[8 * v15];
      if (v22 <= 1)
      {
        goto LABEL_26;
      }
    }

    *v21 = v18;
    *(result + 8) = v1 - 8;
  }

  return result;
}

void operations_research::sat::ReduceNodes(uint64_t a1, uint64_t *a2, uint64_t **a3, operations_research::sat::SatSolver *this)
{
  operations_research::sat::SatSolver::Backtrack(this, 0);
  v8 = *a3;
  v9 = a3[1];
  if (*a3 != v9)
  {
    do
    {
      v10 = *v8++;
      *a2 += operations_research::sat::EncodingNode::Reduce(v10, this);
    }

    while (v8 != v9);
  }

  if (a1 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = *a2;
    v14 = *a3;
    v15 = a1 - v13;
    if (v15 < 0)
    {
      a3[1] = v14;
      return;
    }

    v16 = a3[1];
    while (v14 != v16)
    {
      v17 = *v14++;
      operations_research::sat::EncodingNode::ApplyWeightUpperBound(v17, v15, this);
    }
  }

  v12 = *a3;
  v11 = a3[1];
  if (*a3 != v11)
  {
    while (*(*v12 + 24) && *(*v12 + 16) < *(*v12 + 8))
    {
      if (++v12 == v11)
      {
        goto LABEL_22;
      }
    }

    if (v12 != v11)
    {
      for (i = v12 + 1; i != v11; ++i)
      {
        v19 = *i;
        if (*(*i + 24) && *(v19 + 16) < *(v19 + 8))
        {
          *v12++ = v19;
        }
      }
    }
  }

  if (v12 != v11)
  {
    a3[1] = v12;
  }

LABEL_22:
  v20 = *(operations_research::sat::SatSolver::parameters(this) + 216);
  if (v20 == 2)
  {
    v21 = *a3;
    v22 = a3[1];
    v23 = 126 - 2 * __clz((v22 - *a3) >> 3);
    v24 = v22 == *a3;
    goto LABEL_26;
  }

  if (v20 == 1)
  {
    v21 = *a3;
    v22 = a3[1];
    v23 = 126 - 2 * __clz((v22 - *a3) >> 3);
    v24 = v22 == *a3;
LABEL_26:
    v33 = v25;
    if (v24)
    {
      v26 = 0;
    }

    else
    {
      v26 = v23;
    }

    std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(operations_research::sat::EncodingNode const*,operations_research::sat::EncodingNode const*),operations_research::sat::EncodingNode**,false>(v21, v22, &v33, v26, 1);
  }

  if (*(operations_research::sat::SatSolver::parameters(this) + 283) == 1)
  {
    v28 = *a3;
    v27 = a3[1];
    if (*a3 != v27)
    {
      v29 = v27 - 1;
      if (v29 > v28)
      {
        v30 = (v28 + 1);
        do
        {
          v31 = *(v30 - 8);
          *(v30 - 8) = *v29;
          *v29-- = v31;
          v32 = v30 >= v29;
          v30 += 8;
        }

        while (!v32);
      }
    }
  }
}

void operations_research::sat::ExtractAssumptions(operations_research::sat::SatSolver *a1@<X2>, uint64_t a2@<X0>, operations_research::sat::EncodingNode ***a3@<X1>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v4 = *a3;
  v5 = a3[1];
  if (*a3 != v5)
  {
    do
    {
      if (*(*v4 + 3) >= a2)
      {
        Assumption = operations_research::sat::EncodingNode::GetAssumption(*v4, a1, a1);
        std::vector<int>::push_back[abi:ne200100](a4, &Assumption);
      }

      ++v4;
    }

    while (v4 != v5);
  }
}

void sub_23CB8ED04(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::ComputeCoreMinWeight(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1] - *a2;
  if (!v3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = v3 >> 2;
  v8 = *a1;
  v9 = (a1[1] - *a1) >> 3;
  result = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    for (i = v5; ; i = v5)
    {
      if (v9 <= i)
      {
        operations_research::sat::ComputeCoreMinWeight(i, v9);
      }

      v12 = *(v8 + 8 * i);
      v13 = *(v12 + 16) - *(v12 + 4);
      v14 = *(v12 + 80);
      if (v13 < (*(v12 + 88) - v14) >> 2 && (*(v14 + 4 * v13) ^ *(v2 + 4 * v4)) == 1)
      {
        break;
      }

      ++v5;
    }

    v15 = *(v12 + 24);
    if (v15 < result)
    {
      result = v15;
    }

    v4 = ++v6;
  }

  while (v7 > v6);
  return result;
}

uint64_t operations_research::sat::MaxNodeWeightSmallerThan(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 == v3)
  {
    return 0;
  }

  result = 0;
  do
  {
    v5 = *(*v2 + 24);
    v7 = v5;
    if (v5 < 1)
    {
      operations_research::sat::MaxNodeWeightSmallerThan(&v7);
    }

    if (result <= v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = result;
    }

    if (v5 < a2)
    {
      result = v6;
    }

    v2 += 8;
  }

  while (v2 != v3);
  return result;
}

uint64_t operations_research::sat::ObjectiveEncoder::ProcessCore(uint64_t a1, _DWORD *a2, unint64_t a3, uint64_t a4, uint64_t a5, std::string *a6)
{
  v169 = *MEMORY[0x277D85DE8];
  if (!operations_research::sat::SatSolver::ResetToLevelZero(*(a1 + 88)))
  {
    v14 = 0;
    goto LABEL_7;
  }

  if (a3 == 1)
  {
    v10 = *(a1 + 88);
    v11 = *MEMORY[0x277D85DE8];
    v12 = *a2 ^ 1;

    return operations_research::sat::SatSolver::AddUnitClause(v10, v12);
  }

  v141 = a5;
  v142 = a3;
  v139 = a6;
  v153 = 0;
  v154 = 0;
  v155 = 0;
  v16 = 0;
  if (!a3)
  {
    v49 = 0;
    goto LABEL_52;
  }

  v17 = 0;
  v18 = 0;
  v19 = 0;
  while (2)
  {
    v144 = v19;
    while (1)
    {
      v20 = v18;
      v21 = *(a1 + 8);
      v22 = *(v21 + 8 * v18);
      v23 = *(v22 + 16);
      v24 = *(v22 + 4);
      v25 = v23 - v24;
      v26 = *(v22 + 80);
      if (v25 < (*(v22 + 88) - v26) >> 2)
      {
        break;
      }

      v29 = (*(a1 + 16) - v21) >> 3;
      if (v29 <= v20)
      {
LABEL_50:
        absl::lts_20240722::log_internal::MakeCheckOpString<long long,unsigned long long>(v20, v29, "index < nodes_.size()");
      }

LABEL_17:
      v30 = v16;
      v31 = v16 >> 3;
      if ((v31 + 1) >> 61)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (v31 != -1)
      {
        if (!((v31 + 1) >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      MEMORY[0xFFFFFFFFFFFFFFF8] = v22;
      v16 = 0;
      memcpy(0, 0, v30);
      v18 = v20 + 1;
    }

    v27 = *(v26 + 4 * v25) ^ a2[v17];
    v28 = *(a1 + 16);
    if (v27 != 1)
    {
      v29 = (v28 - v21) >> 3;
      if (v29 <= v20)
      {
        goto LABEL_50;
      }

      goto LABEL_17;
    }

    v32 = (v28 - v21) >> 3;
    if (v32 <= v20)
    {
      absl::lts_20240722::log_internal::MakeCheckOpString<long long,unsigned long long>(v20, v32, "index < nodes_.size()");
    }

    if ((*a1 & 1) != 0 && *(v22 + 8) > v24 + 1)
    {
      *(v22 + 16) = v23 + 1;
      if (!(((v16 >> 3) + 1) >> 61))
      {
        if (v16 >> 3 != -1)
        {
          if (!(((v16 >> 3) + 1) >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        *(8 * (v16 >> 3)) = v22;
        memcpy(0, 0, v16);
        v33 = a2[v17];
        v34 = *(v22 + 24);
        v163 = 0;
        v164 = 0;
        v167 = 0u;
        v168 = 0u;
        *v161 = 0;
        v162 = v34;
        *&v161[8] = 1;
        *&v161[12] = (v33 >> 1);
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v35 = v154;
    if (v154 < v155)
    {
      *v154 = v22;
      v36 = v35 + 8;
      goto LABEL_43;
    }

    v37 = v153;
    v38 = v154 - v153;
    v39 = (v154 - v153) >> 3;
    v40 = v39 + 1;
    if ((v39 + 1) >> 61)
    {
      goto LABEL_212;
    }

    v41 = v155 - v153;
    if ((v155 - v153) >> 2 > v40)
    {
      v40 = v41 >> 2;
    }

    if (v41 >= 0x7FFFFFFFFFFFFFF8)
    {
      v42 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v42 = v40;
    }

    if (v42)
    {
      if (!(v42 >> 61))
      {
        operator new();
      }

LABEL_214:
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v43 = (8 * v39);
    v44 = &v43[-((v154 - v153) >> 3)];
    *v43 = v22;
    v36 = (v43 + 1);
    memcpy(v44, v37, v38);
    v153 = v44;
    v154 = v36;
    v155 = 0;
    if (v37)
    {
      operator delete(v37);
    }

LABEL_43:
    v154 = v36;
    v45 = *(v22 + 24);
    v115 = v45 <= a4;
    v46 = v45 - a4;
    if (!v115)
    {
      *(v22 + 16) = *(v22 + 4);
      *(v22 + 24) = v46;
      v47 = v16;
      v48 = v16 >> 3;
      if (!(((v16 >> 3) + 1) >> 61))
      {
        if (v16 >> 3 != -1)
        {
          if (!(((v16 >> 3) + 1) >> 61))
          {
            operator new();
          }

          goto LABEL_214;
        }

        *(8 * v48) = v22;
        v16 = 8 * v48 + 8;
        memcpy(0, 0, v47);
        goto LABEL_10;
      }

LABEL_212:
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

LABEL_10:
    v18 = v20 + 1;
    v19 = v144 + 1;
    v17 = v144 + 1;
    if (v142 > v17)
    {
      continue;
    }

    break;
  }

  v49 = v20 + 1;
LABEL_52:
  v50 = *(a1 + 8);
  v51 = v49;
  v140 = (a1 + 8);
  if (v49 < ((*(a1 + 16) - v50) >> 3))
  {
    v52 = v49 + 1;
    do
    {
      v53 = v16;
      v54 = v16 >> 3;
      if ((v54 + 1) >> 61)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (v54 != -1)
      {
        if (!((v54 + 1) >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      MEMORY[0xFFFFFFFFFFFFFFF8] = *(v50 + 8 * v51);
      v16 = 0;
      memcpy(0, 0, v53);
      v51 = v52;
      v50 = *(a1 + 8);
      ++v52;
    }

    while (v51 < (*(a1 + 16) - v50) >> 3);
  }

  std::vector<operations_research::sat::EncodingNode *>::__assign_with_size[abi:ne200100]<operations_research::sat::EncodingNode **,operations_research::sat::EncodingNode **>(v140, 0, v16, v16 >> 3);
  v56 = v153;
  if (v141 < 2 * a4)
  {
    v57 = v142;
    v58 = v154;
    if (v153 != v154)
    {
      do
      {
LABEL_61:
        operations_research::sat::EncodingNode::TransformToBoolean(*v56++, *(a1 + 88), v55);
      }

      while (v56 != v58);
    }

LABEL_62:
    *v161 = " exo";
    *&v161[8] = 4;
    absl::lts_20240722::StrAppend(v139, v161);
    v163 = 0;
    v164 = 0;
    v167 = 0u;
    v168 = 0u;
    *v161 = xmmword_23CE48D20;
    *&v161[16] = 0;
    v162 = a4;
    v59 = std::deque<operations_research::sat::EncodingNode>::push_back(a1 + 32, v161);
    if (*(&v167 + 1))
    {
      *&v168 = *(&v167 + 1);
      operator delete(*(&v167 + 1));
    }

    if (v167 == &v165)
    {
      (*(*v167 + 32))(v167, v59);
    }

    else if (v167)
    {
      (*(*v167 + 40))(v59);
    }

    v91 = *(a1 + 72) + *(a1 + 64) - 1;
    *v161 = *(*(a1 + 40) + 8 * (v91 / 0x27)) + 104 * (v91 % 0x27);
    std::vector<absl::lts_20240722::LogSink *>::push_back[abi:ne200100](v140, v161);
    memset(v161, 0, sizeof(v161));
    if (v57)
    {
      if (!(v57 >> 60))
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    operations_research::sat::SatSolver::AddLinearConstraint(*(a1 + 88), 1, 1, 1, 1, v161);
    v14 = *(*(a1 + 88) + 528) ^ 1;
    if (*v161)
    {
      *&v161[8] = *v161;
      operator delete(*v161);
      v92 = v153;
      if (!v153)
      {
        goto LABEL_7;
      }

LABEL_203:
      v154 = v92;
      operator delete(v92);
      goto LABEL_7;
    }

LABEL_202:
    v92 = v153;
    if (!v153)
    {
      goto LABEL_7;
    }

    goto LABEL_203;
  }

  v150 = 0;
  v151 = 0;
  v152 = 0;
  v147 = xmmword_23CE306D0;
  v60 = v154;
  if (v154 != v153)
  {
    v61 = 0;
    v62 = 0;
    v63 = 0;
    while (1)
    {
      v69 = v56[v62];
      v70 = *(v69 + 10);
      v71 = *(v69 + 11);
      if (((v71 - v70) & 0x3FFFFFFFCLL) != 4)
      {
        goto LABEL_81;
      }

      v72 = *(v69 + 1);
      if (*(v69 + 2) != v72 + 1 || *(v69 + 4) != v72)
      {
        goto LABEL_81;
      }

      if (v71 == v70)
      {
        absl::lts_20240722::log_internal::MakeCheckOpString<long long,unsigned long long>(0, v71 - v70, "i < literals_.size()");
      }

      v73 = *v70;
      if (v147 > 1)
      {
        v67 = 0;
        _X12 = v148;
        __asm { PRFM            #4, [X12] }

        v80 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v73) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v73));
        v68 = (v80 >> 7) ^ (v148 >> 12);
        v81 = vdup_n_s8(v80 & 0x7F);
        while (1)
        {
          v64 = v68 & v147;
          v65 = *(v148 + v64);
          v66 = vceq_s8(v65, v81);
          if (v66)
          {
            break;
          }

LABEL_72:
          if (vceq_s8(v65, 0x8080808080808080))
          {
            goto LABEL_84;
          }

          v67 += 8;
          v68 = v67 + v64;
        }

        while (*(v149 + 8 * ((v64 + (__clz(__rbit64(v66)) >> 3)) & v147)) != v73)
        {
          v66 &= ((v66 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v66)
          {
            goto LABEL_72;
          }
        }

        goto LABEL_81;
      }

      if (*(&v147 + 1) < 2uLL || v148 != v73)
      {
LABEL_84:
        LODWORD(__p) = v73;
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,int>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_> const,int>>>::find_or_prepare_insert<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>(&v147, &__p, v161);
        if (v161[16] == 1)
        {
          **&v161[8] = __p;
        }

        *(*&v161[8] + 4) = v63;
        v82 = *(v69 + 10);
        if (*(v69 + 11) == v82)
        {
          absl::lts_20240722::log_internal::MakeCheckOpString<long long,unsigned long long>(0, 0, "i < literals_.size()");
        }

        v83 = *v82;
        v84 = v151;
        if (v151 >= v152)
        {
          v85 = v150;
          v86 = v151 - v150;
          v87 = (v151 - v150) >> 2;
          v88 = v87 + 1;
          if ((v87 + 1) >> 62)
          {
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          v89 = v152 - v150;
          if ((v152 - v150) >> 1 > v88)
          {
            v88 = v89 >> 1;
          }

          if (v89 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v90 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v90 = v88;
          }

          if (v90)
          {
            if (!(v90 >> 62))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          *(4 * v87) = v83;
          v61 = 4 * v87 + 4;
          memcpy(0, v85, v86);
          v150 = 0;
          v151 = v61;
          v152 = 0;
          if (v85)
          {
            operator delete(v85);
          }
        }

        else
        {
          *v151 = v83;
          v61 = (v84 + 4);
        }

        v151 = v61;
        v56 = v153;
        v60 = v154;
        v62 = ++v63;
        if (v63 >= ((v154 - v153) >> 3))
        {
          goto LABEL_110;
        }
      }

      else
      {
LABEL_81:
        v62 = ++v63;
        if (v63 >= ((v60 - v56) >> 3))
        {
          goto LABEL_110;
        }
      }
    }
  }

  v61 = 0;
LABEL_110:
  memset(&v146, 0, sizeof(v146));
  v57 = v142;
  if (*(*(a1 + 80) + 488) >= 2)
  {
    v93 = v61 - v150;
    if ((((v61 - v150) >> 2) - 2) <= 0x129)
    {
      v94 = *(*(a1 + 88) + 216);
      v95 = v93 >> 2;
      std::vector<std::vector<int>>::vector[abi:ne200100](v161, v93 >> 2);
      LODWORD(__p) = 0;
      do
      {
        if ((operations_research::sat::SatSolver::ResetToLevelZero(*(a1 + 88)) & 1) == 0)
        {
          goto LABEL_139;
        }

        if (operations_research::sat::SatSolver::EnqueueDecisionIfNotConflicting(*(a1 + 88), *(v150 + __p)))
        {
          v96 = 0;
          LODWORD(v156) = 0;
          do
          {
            if (__p != v96 && ((*(*(v94 + 24) + ((*(v150 + v96) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (*(v150 + v96) & 0x3F ^ 1u)) & 1) != 0)
            {
              std::vector<int>::push_back[abi:ne200100](*v161 + 24 * __p, &v156);
              std::vector<int>::push_back[abi:ne200100](*v161 + 24 * v156, &__p);
              v96 = v156;
            }

            LODWORD(v156) = ++v96;
          }

          while (v96 < v95);
        }

        LODWORD(__p) = __p + 1;
      }

      while (__p < v95);
      if ((operations_research::sat::SatSolver::ResetToLevelZero(*(a1 + 88)) & 1) == 0)
      {
LABEL_139:
        std::vector<std::vector<int>>::~vector[abi:ne200100](v161);
        v111 = 0;
        v100 = 0;
        goto LABEL_191;
      }

      v101 = *v161;
      v102 = *&v161[8];
      while (v101 != v102)
      {
        v103 = *v101;
        v104 = v101[1];
        std::__sort<std::__less<int,int> &,int *>();
        v105 = v101[1];
        if (*v101 != v105)
        {
          v106 = (*v101 + 4);
          while (v106 != v105)
          {
            v107 = *(v106 - 1);
            v108 = *v106++;
            if (v107 == v108)
            {
              v109 = v106 - 2;
              while (v106 != v105)
              {
                v110 = v107;
                v107 = *v106;
                if (v110 != *v106)
                {
                  v109[1] = v107;
                  ++v109;
                }

                ++v106;
              }

              if (v109 + 1 != v105)
              {
                v101[1] = v109 + 1;
              }

              break;
            }
          }
        }

        v101 += 3;
      }

      *&v156 = *(a1 + 104);
      *(&v156 + 1) = absl::lts_20240722::BitGenRef::MockCall<operations_research::sat::ModelRandomGenerator>;
      v157 = absl::lts_20240722::BitGenRef::ImplFn<operations_research::sat::ModelRandomGenerator>;
      operations_research::sat::AtMostOneDecomposition(&v146, v161, &v156, &__p);
      if (v146.__begin_ != v146.__end_)
      {
        operator new();
      }

      std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal*,operations_research::sat::Literal*>(&v150, 0, 0, 0);
      v112 = __p;
      v57 = v142;
      if (__p == v159)
      {
        v99 = 0;
      }

      else
      {
        v99 = 0;
        do
        {
          v113 = v112[1];
          if (v113 != 1)
          {
            operator new();
          }

          v57 = v142;
          v112 += 2;
        }

        while (v112 != v159);
      }

      if (__p)
      {
        v159 = __p;
        operator delete(__p);
      }

      std::vector<std::vector<int>>::~vector[abi:ne200100](v161);
      v98 = 0;
LABEL_151:
      if (v99 != v98)
      {
        if ((v99[1] & 0x3FFFFFFFFFFFFFFFLL) == 0)
        {
          memset(v161, 0, sizeof(v161));
          v166 = 0;
          v165 = 0u;
          *&v161[8] = 1;
          v163 = 0;
          v164 = 0;
          v162 = 0;
          v167 = 0u;
          v168 = 0u;
          v128 = std::deque<operations_research::sat::EncodingNode>::push_back(a1 + 32, v161);
          if (*(&v167 + 1))
          {
            *&v168 = *(&v167 + 1);
            operator delete(*(&v167 + 1));
          }

          if (v167 == &v165)
          {
            (*(*v167 + 32))(v167, v128);
          }

          else if (v167)
          {
            (*(*v167 + 40))(v128);
          }

          v129 = *(a1 + 72) + *(a1 + 64) - 1;
          operations_research::sat::EncodingNode::InitializeAmoNode(*(*(a1 + 40) + 8 * (v129 / 0x27)) + 104 * (v129 % 0x27), 0, 0, *(a1 + 88));
        }

        v114 = **v99;
        if (v147 > 1)
        {
          v118 = 0;
          _X10 = v148;
          __asm { PRFM            #4, [X10] }

          v121 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v114) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v114));
          v122 = vdup_n_s8(v121 & 0x7F);
          v123 = ((v121 >> 7) ^ (v148 >> 12)) & v147;
          v124 = *(v148 + v123);
          v125 = vceq_s8(v124, v122);
          if (!v125)
          {
            goto LABEL_164;
          }

LABEL_162:
          while (1)
          {
            v126 = (v123 + (__clz(__rbit64(v125)) >> 3)) & v147;
            if (*(v149 + 8 * v126) == v114)
            {
              break;
            }

            v125 &= ((v125 & 0x8080808080808080) - 1) & 0x8080808080808080;
            if (!v125)
            {
LABEL_164:
              while (!*&vceq_s8(v124, 0x8080808080808080))
              {
                v118 += 8;
                v123 = (v118 + v123) & v147;
                v124 = *(v148 + v123);
                v125 = vceq_s8(v124, v122);
                if (v125)
                {
                  goto LABEL_162;
                }
              }

LABEL_211:
              absl::lts_20240722::base_internal::ThrowStdOutOfRange("absl::container_internal::raw_hash_map<>::at", v97);
            }
          }

          v117 = (v149 + 8 * v126);
          if (!(v148 + v126))
          {
            goto LABEL_211;
          }
        }

        else
        {
          v115 = v148 == v114 && *(&v147 + 1) > 1uLL;
          v116 = &absl::lts_20240722::container_internal::kSooControl;
          if (!v115)
          {
            v116 = 0;
          }

          v117 = &v148;
          if (!v116)
          {
            goto LABEL_211;
          }
        }

        v127 = *(v117 + 1);
        operator new();
      }

      v130 = v153;
      v131 = v154;
      if (v153 == v154)
      {
        v132 = 0;
        v134 = (v154 - v153) >> 3;
      }

      else
      {
        LODWORD(v132) = 0;
        v133 = v153;
        do
        {
          if (*v133)
          {
            *&v130[8 * v132] = *v133;
            LODWORD(v132) = v132 + 1;
          }

          v133 += 8;
        }

        while (v133 != v131);
        v132 = v132;
        v134 = (v131 - v130) >> 3;
        if (v132 > v134)
        {
          std::vector<std::unique_ptr<operations_research::SparsePermutation>>::__append(&v153, v132 - v134);
          goto LABEL_188;
        }
      }

      if (v134 > v132)
      {
        v154 = &v130[8 * v132];
      }

LABEL_188:
      v100 = 0;
      if (!v99)
      {
        goto LABEL_190;
      }

      goto LABEL_189;
    }
  }

  operations_research::sat::BinaryImplicationGraph::HeuristicAmoPartition(*(a1 + 96), &v150, v161);
  v99 = *v161;
  v98 = *&v161[8];
  if (*&v161[8] - *v161 != 16 || *(*v161 + 8) != v142)
  {
    goto LABEL_151;
  }

  v100 = 1;
LABEL_189:
  operator delete(v99);
LABEL_190:
  v111 = 1;
LABEL_191:
  if (v146.__begin_)
  {
    v146.__end_ = v146.__begin_;
    operator delete(v146.__begin_);
  }

  if (v147 >= 2)
  {
    operator delete((v148 - (BYTE8(v147) & 1) - 8));
  }

  if (v150)
  {
    v151 = v150;
    operator delete(v150);
  }

  if ((v111 & 1) == 0)
  {
    v14 = 0;
    goto LABEL_202;
  }

  if (v100)
  {
    v56 = v153;
    v58 = v154;
    if (v153 != v154)
    {
      goto LABEL_61;
    }

    goto LABEL_62;
  }

  v135 = *(a1 + 88);
  operations_research::sat::LazyMergeAllNodeWithPQAndIncreaseLb(a4, &v153);
  *v161 = v136;
  std::vector<absl::lts_20240722::LogSink *>::push_back[abi:ne200100](v140, v161);
  *v161 = " d:";
  *&v161[8] = 3;
  v138 = absl::lts_20240722::numbers_internal::FastIntToBuffer(**(*(a1 + 16) - 8), v160, v137);
  __p = v160;
  v159 = (v138 - v160);
  absl::lts_20240722::StrAppend(v139, v161, &__p);
  v14 = *(*(a1 + 88) + 528) ^ 1;
  v92 = v153;
  if (v153)
  {
    goto LABEL_203;
  }

LABEL_7:
  v15 = *MEMORY[0x277D85DE8];
  return v14 & 1;
}

void sub_23CB90754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, unint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50)
{
  if (v50)
  {
    operator delete(v50);
  }

  if (__p)
  {
    operator delete(__p);
  }

  std::vector<std::vector<int>>::~vector[abi:ne200100]((v51 - 224));
  if (a24)
  {
    operator delete(a24);
    if (a27 < 2)
    {
LABEL_7:
      v53 = a31;
      if (!a31)
      {
LABEL_12:
        if (a34)
        {
          operator delete(a34);
        }

        _Unwind_Resume(a1);
      }

LABEL_11:
      operator delete(v53);
      goto LABEL_12;
    }
  }

  else if (a27 < 2)
  {
    goto LABEL_7;
  }

  operator delete((a29 - (a28 & 1) - 8));
  v53 = a31;
  if (!a31)
  {
    goto LABEL_12;
  }

  goto LABEL_11;
}

void *std::vector<std::vector<int>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void *std::deque<operations_research::sat::EncodingNode>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x27;
  v3 = v1 - 39;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<std::vector<operations_research::sat::Literal> *,std::allocator<std::vector<operations_research::sat::Literal> *>>::emplace_back<std::vector<operations_research::sat::Literal> *&>(a1, &v11);
}

void sub_23CB90DD4(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(operations_research::sat::EncodingNode const*,operations_research::sat::EncodingNode const*),operations_research::sat::EncodingNode**,false>(uint64_t result, char *a2, unsigned int (**a3)(uint64_t), uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = (a2 - v10) >> 3;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        result = (*a3)(*(a2 - 1), v10->i64[0]);
        if (result)
        {
          v78 = v10->i64[0];
          v10->i64[0] = *(a2 - 1);
LABEL_108:
          *(a2 - 1) = v78;
          return result;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {

      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(operations_research::sat::EncodingNode const*,operations_research::sat::EncodingNode const*),operations_research::sat::EncodingNode**,0>(v10, &v10->i64[1], v10[1].i64, a2 - 1, a3);
    }

    if (v11 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(operations_research::sat::EncodingNode const*,operations_research::sat::EncodingNode const*),operations_research::sat::EncodingNode**,0>(v10, &v10->i64[1], v10[1].i64, &v10[1].i64[1], a3);
      result = (*a3)(*(a2 - 1), v10[1].i64[1]);
      if (!result)
      {
        return result;
      }

      v72 = v10[1].i64[1];
      v10[1].i64[1] = *(a2 - 1);
      *(a2 - 1) = v72;
      result = (*a3)(v10[1].i64[1], v10[1].i64[0]);
      if (!result)
      {
        return result;
      }

      v73 = v10[1].i64[0];
      v74 = v10->i64[1];
      v10[1].i64[0] = v10[1].i64[1];
      v10[1].i64[1] = v73;
      result = (*a3)();
      if (!result)
      {
        return result;
      }

      v76 = v10->i64[1];
      v75 = v10[1].i64[0];
      v77 = v10->i64[0];
      v10->i64[1] = v75;
      v10[1].i64[0] = v76;
      result = (*a3)(v75, v77);
      goto LABEL_138;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v81 = &v10->i8[8];
      v83 = v10 == a2 || v81 == a2;
      if (a5)
      {
        if (!v83)
        {
          v84 = 0;
          v85 = v10;
          do
          {
            v88 = *v85;
            v87 = v85[1];
            v85 = v81;
            result = (*a3)(v87, v88);
            if (result)
            {
              v89 = *v85;
              v90 = v84;
              do
              {
                *(&v9->i64[1] + v90) = *(v9->i64 + v90);
                if (!v90)
                {
                  v86 = v9;
                  goto LABEL_125;
                }

                result = (*a3)(v89, *(&v9->i64[-1] + v90));
                v90 -= 8;
              }

              while ((result & 1) != 0);
              v86 = (&v9->i64[1] + v90);
LABEL_125:
              *v86 = v89;
            }

            v81 = (v85 + 1);
            v84 += 8;
          }

          while (v85 + 1 != a2);
        }
      }

      else if (!v83)
      {
        do
        {
          v93 = v9->i64[0];
          v92 = v9->i64[1];
          v9 = v81;
          result = (*a3)(v92, v93);
          if (result)
          {
            v94 = v9->i64[0];
            v95 = v9;
            do
            {
              v96 = v95;
              v97 = *--v95;
              *v96 = v97;
              result = (*a3)(v94, *(v96 - 2));
            }

            while ((result & 1) != 0);
            *v95 = v94;
          }

          v81 = &v9->i8[8];
        }

        while (&v9->u64[1] != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(operations_research::sat::EncodingNode const*,operations_research::sat::EncodingNode const*),operations_research::sat::EncodingNode**,operations_research::sat::EncodingNode**>(v10->i8, a2, a2, a3);
      }

      return result;
    }

    v12 = v11 >> 1;
    v13 = *a3;
    if (v11 < 0x81)
    {
      v17 = (v13)(v9->i64[0], v9->i64[v12]);
      v18 = (*a3)(*(a2 - 1), v9->i64[0]);
      if (v17)
      {
        v19 = v9->i64[v12];
        if (!v18)
        {
          v9->i64[v12] = v9->i64[0];
          v9->i64[0] = v19;
          if ((*a3)(*(a2 - 1)))
          {
            v32 = v9->i64[0];
            v9->i64[0] = *(a2 - 1);
            *(a2 - 1) = v32;
          }

LABEL_37:
          --a4;
          v20 = v9->i64[0];
          if (a5)
          {
            goto LABEL_60;
          }

          goto LABEL_59;
        }

        v9->i64[v12] = *(a2 - 1);
        *(a2 - 1) = v19;
        --a4;
        v20 = v9->i64[0];
        if (a5)
        {
          goto LABEL_60;
        }
      }

      else
      {
        if (!v18)
        {
          goto LABEL_37;
        }

        v23 = v9->i64[0];
        v9->i64[0] = *(a2 - 1);
        *(a2 - 1) = v23;
        if (!(*a3)(v9->i64[0], v9->i64[v12]))
        {
          goto LABEL_37;
        }

        v24 = v9->i64[v12];
        v9->i64[v12] = v9->i64[0];
        v9->i64[0] = v24;
        --a4;
        v20 = v24;
        if (a5)
        {
          goto LABEL_60;
        }
      }

LABEL_59:
      v50 = (*a3)(v9[-1].i64[1], v20);
      v20 = v9->i64[0];
      if (v50)
      {
        goto LABEL_60;
      }

      result = (*a3)(v9->i64[0], *(a2 - 1));
      if (result)
      {
        v10 = v9;
        do
        {
          v64 = v10->i64[1];
          v10 = (v10 + 8);
          result = (*a3)(v20, v64);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v65 = &v9->u64[1];
        do
        {
          v10 = v65;
          if (v65 >= a2)
          {
            break;
          }

          v65 = (v65 + 8);
          result = (*a3)(v20, v10->i64[0]);
        }

        while (!result);
      }

      v66 = a2;
      if (v10 < a2)
      {
        v66 = a2;
        do
        {
          v67 = v66[-1].i64[1];
          v66 = (v66 - 8);
          result = (*a3)(v20, v67);
        }

        while ((result & 1) != 0);
      }

      while (v10 < v66)
      {
        v68 = v10->i64[0];
        v10->i64[0] = v66->i64[0];
        v66->i64[0] = v68;
        do
        {
          v69 = v10->i64[1];
          v10 = (v10 + 8);
        }

        while (!(*a3)(v20, v69));
        do
        {
          v70 = v66[-1].i64[1];
          v66 = (v66 - 8);
          result = (*a3)(v20, v70);
        }

        while ((result & 1) != 0);
      }

      v71 = &v10[-1].i64[1];
      if (&v10[-1].u64[1] != v9)
      {
        v9->i64[0] = *v71;
      }

      a5 = 0;
      *v71 = v20;
    }

    else
    {
      v14 = (v13)(v9->i64[v12], v9->i64[0]);
      v15 = (*a3)(*(a2 - 1), v9->i64[v12]);
      if (v14)
      {
        v16 = v9->i64[0];
        if (v15)
        {
          v9->i64[0] = *(a2 - 1);
          *(a2 - 1) = v16;
        }

        else
        {
          v9->i64[0] = v9->i64[v12];
          v9->i64[v12] = v16;
          if ((*a3)(*(a2 - 1)))
          {
            v25 = v9->i64[v12];
            v9->i64[v12] = *(a2 - 1);
            *(a2 - 1) = v25;
          }
        }
      }

      else if (v15)
      {
        v21 = v9->i64[v12];
        v9->i64[v12] = *(a2 - 1);
        *(a2 - 1) = v21;
        if ((*a3)(v9->i64[v12], v9->i64[0]))
        {
          v22 = v9->i64[0];
          v9->i64[0] = v9->i64[v12];
          v9->i64[v12] = v22;
        }
      }

      v26 = v12 - 1;
      v27 = (*a3)(v9->i64[v12 - 1], v9->i64[1]);
      v28 = (*a3)(*(a2 - 2), v9->i64[v12 - 1]);
      if (v27)
      {
        v29 = v9->i64[1];
        if (v28)
        {
          v9->i64[1] = *(a2 - 2);
          *(a2 - 2) = v29;
        }

        else
        {
          v9->i64[1] = v9->i64[v26];
          v9->i64[v26] = v29;
          if ((*a3)(*(a2 - 2)))
          {
            v33 = v9->i64[v26];
            v9->i64[v26] = *(a2 - 2);
            *(a2 - 2) = v33;
          }
        }
      }

      else if (v28)
      {
        v30 = v9->i64[v26];
        v9->i64[v26] = *(a2 - 2);
        *(a2 - 2) = v30;
        if ((*a3)(v9->i64[v26], v9->i64[1]))
        {
          v31 = v9->i64[1];
          v9->i64[1] = v9->i64[v26];
          v9->i64[v26] = v31;
        }
      }

      v34 = v12 + 1;
      v35 = (*a3)(v9->i64[v12 + 1], v9[1].i64[0]);
      v36 = (*a3)(*(a2 - 3), v9->i64[v12 + 1]);
      if (v35)
      {
        v37 = v9[1].i64[0];
        if (v36)
        {
          v9[1].i64[0] = *(a2 - 3);
          *(a2 - 3) = v37;
        }

        else
        {
          v9[1].i64[0] = v9->i64[v34];
          v9->i64[v34] = v37;
          if ((*a3)(*(a2 - 3)))
          {
            v40 = v9->i64[v34];
            v9->i64[v34] = *(a2 - 3);
            *(a2 - 3) = v40;
          }
        }
      }

      else if (v36)
      {
        v38 = v9->i64[v34];
        v9->i64[v34] = *(a2 - 3);
        *(a2 - 3) = v38;
        if ((*a3)(v9->i64[v34], v9[1].i64[0]))
        {
          v39 = v9[1].i64[0];
          v9[1].i64[0] = v9->i64[v34];
          v9->i64[v34] = v39;
        }
      }

      v41 = (*a3)(v9->i64[v12], v9->i64[v26]);
      v42 = (*a3)(v9->i64[v34], v9->i64[v12]);
      if (v41)
      {
        v43 = v9->i64[v26];
        if (v42)
        {
          v9->i64[v26] = v9->i64[v34];
          v9->i64[v34] = v43;
          v44 = v9->i64[v12];
          goto LABEL_58;
        }

        v9->i64[v26] = v9->i64[v12];
        v9->i64[v12] = v43;
        v48 = (*a3)(v9->i64[v34]);
        v44 = v9->i64[v12];
        if (v48)
        {
          v47 = v9->i64[v34];
          v9->i64[v12] = v47;
          v9->i64[v34] = v44;
          goto LABEL_57;
        }
      }

      else
      {
        v44 = v9->i64[v12];
        if (v42)
        {
          v9->i64[v12] = v9->i64[v34];
          v9->i64[v34] = v44;
          v45 = v9->i64[v26];
          v46 = (*a3)();
          v44 = v9->i64[v12];
          if (v46)
          {
            v47 = v9->i64[v26];
            v9->i64[v26] = v44;
            v9->i64[v12] = v47;
LABEL_57:
            v44 = v47;
          }
        }
      }

LABEL_58:
      v49 = v9->i64[0];
      v9->i64[0] = v44;
      v9->i64[v12] = v49;
      --a4;
      v20 = v9->i64[0];
      if ((a5 & 1) == 0)
      {
        goto LABEL_59;
      }

LABEL_60:
      v51 = 0;
      do
      {
        v52 = (*a3)(v9->i64[++v51], v20);
      }

      while ((v52 & 1) != 0);
      v53 = &v9->i8[v51 * 8];
      v54 = a2;
      if (v51 == 1)
      {
        v54 = a2;
        do
        {
          if (v53 >= v54)
          {
            break;
          }

          v56 = *(v54 - 1);
          v54 -= 8;
        }

        while (((*a3)(v56, v20) & 1) == 0);
      }

      else
      {
        do
        {
          v55 = *(v54 - 1);
          v54 -= 8;
        }

        while (!(*a3)(v55, v20));
      }

      if (v53 >= v54)
      {
        v62 = (v53 - 8);
        if (v53 - 8 == v9)
        {
          goto LABEL_78;
        }

LABEL_77:
        v9->i64[0] = v62->i64[0];
        goto LABEL_78;
      }

      v57 = &v9->i64[v51];
      v58 = v54;
      do
      {
        v59 = *v57;
        *v57 = *v58;
        *v58 = v59;
        do
        {
          v60 = v57[1];
          ++v57;
        }

        while (((*a3)(v60, v20) & 1) != 0);
        do
        {
          v61 = *(v58 - 1);
          v58 -= 8;
        }

        while (!(*a3)(v61, v20));
      }

      while (v57 < v58);
      v62 = (v57 - 1);
      if (v62 != v9)
      {
        goto LABEL_77;
      }

LABEL_78:
      v62->i64[0] = v20;
      if (v53 < v54)
      {
        goto LABEL_81;
      }

      v63 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(operations_research::sat::EncodingNode const*,operations_research::sat::EncodingNode const*),operations_research::sat::EncodingNode**>(v9, v62, a3);
      v10 = &v62->u64[1];
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(operations_research::sat::EncodingNode const*,operations_research::sat::EncodingNode const*),operations_research::sat::EncodingNode**>(&v62->i64[1], a2, a3);
      if (result)
      {
        a2 = v62;
        if ((v63 & 1) == 0)
        {
          goto LABEL_2;
        }

        return result;
      }

      if ((v63 & 1) == 0)
      {
LABEL_81:
        result = std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(operations_research::sat::EncodingNode const*,operations_research::sat::EncodingNode const*),operations_research::sat::EncodingNode**,false>(v9, v62, a3, a4, a5 & 1);
        a5 = 0;
        v10 = &v62->u64[1];
      }
    }
  }

  v79 = (*a3)(v10->i64[1], v10->i64[0]);
  result = (*a3)(*(a2 - 1), v10->i64[1]);
  if ((v79 & 1) == 0)
  {
    if (!result)
    {
      return result;
    }

    v91 = v10->i64[1];
    v10->i64[1] = *(a2 - 1);
    *(a2 - 1) = v91;
    result = (*a3)(v10->i64[1], v10->i64[0]);
LABEL_138:
    if (result)
    {
      *v10 = vextq_s8(*v10, *v10, 8uLL);
    }

    return result;
  }

  v80 = v10->i64[0];
  if (result)
  {
    v10->i64[0] = *(a2 - 1);
    *(a2 - 1) = v80;
  }

  else
  {
    v10->i64[0] = v10->i64[1];
    v10->i64[1] = v80;
    result = (*a3)(*(a2 - 1));
    if (result)
    {
      v78 = v10->i64[1];
      v10->i64[1] = *(a2 - 1);
      goto LABEL_108;
    }
  }

  return result;
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(operations_research::sat::EncodingNode const*,operations_research::sat::EncodingNode const*),operations_research::sat::EncodingNode**,0>(void *a1, void *a2, void *a3, void *a4, unsigned int (**a5)(void))
{
  v10 = (*a5)(*a2, *a1);
  v11 = (*a5)(*a3, *a2);
  if (v10)
  {
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
      *a3 = v12;
    }

    else
    {
      *a1 = *a2;
      *a2 = v12;
      if ((*a5)(*a3))
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
      }
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    if ((*a5)(*a2, *a1))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

  result = (*a5)(*a4, *a3);
  if (result)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    result = (*a5)(*a3, *a2);
    if (result)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      result = (*a5)(*a2, *a1);
      if (result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(operations_research::sat::EncodingNode const*,operations_research::sat::EncodingNode const*),operations_research::sat::EncodingNode**>(void *a1, void *a2, unsigned int (**a3)(uint64_t))
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v14 = (*a3)(a1[1], *a1);
        v15 = (*a3)(*(a2 - 1), a1[1]);
        if (v14)
        {
          v16 = *a1;
          if (v15)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v16;
            v7 = 1;
            return v7 & 1;
          }

          *a1 = a1[1];
          a1[1] = v16;
          if (!(*a3)(*(a2 - 1)))
          {
            goto LABEL_3;
          }

          v13 = a1[1];
          a1[1] = *(a2 - 1);
          goto LABEL_15;
        }

        if (!v15)
        {
          goto LABEL_3;
        }

        v22 = a1[1];
        a1[1] = *(a2 - 1);
        *(a2 - 1) = v22;
        if (!(*a3)(a1[1], *a1))
        {
          goto LABEL_3;
        }

        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(operations_research::sat::EncodingNode const*,operations_research::sat::EncodingNode const*),operations_research::sat::EncodingNode**,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        v7 = 1;
        return v7 & 1;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(operations_research::sat::EncodingNode const*,operations_research::sat::EncodingNode const*),operations_research::sat::EncodingNode**,0>(a1, a1 + 1, a1 + 2, a1 + 3, a3);
        if (!(*a3)(*(a2 - 1), a1[3]))
        {
          goto LABEL_3;
        }

        v8 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v8;
        if (!(*a3)(a1[3], a1[2]))
        {
          goto LABEL_3;
        }

        v9 = a1[2];
        v10 = a1[1];
        a1[2] = a1[3];
        a1[3] = v9;
        if (!(*a3)())
        {
          goto LABEL_3;
        }

        v11 = a1[1];
        v12 = *a1;
        a1[1] = a1[2];
        a1[2] = v11;
        if (!(*a3)())
        {
          goto LABEL_3;
        }

        break;
      default:
        goto LABEL_19;
    }

    *a1 = vextq_s8(*a1, *a1, 8uLL);
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
    if (!(*a3)(*(a2 - 1), *a1))
    {
      goto LABEL_3;
    }

    v13 = *a1;
    *a1 = *(a2 - 1);
LABEL_15:
    *(a2 - 1) = v13;
    v7 = 1;
    return v7 & 1;
  }

LABEL_19:
  v17 = (*a3)(a1[1], *a1);
  v18 = a1 + 2;
  v19 = (*a3)(a1[2], a1[1]);
  if (v17)
  {
    v21 = *a1;
    if (v19)
    {
      *a1 = a1[2];
      a1[2] = v21;
    }

    else
    {
      v25 = a1[2];
      *a1 = a1[1];
      a1[1] = v21;
      if ((*a3)(v25))
      {
        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
      }
    }
  }

  else if (v19)
  {
    v23 = a1[1];
    v24 = *a1;
    a1[1] = a1[2];
    a1[2] = v23;
    if ((*a3)())
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v26 = a1 + 3;
  if (a1 + 3 == a2)
  {
LABEL_43:
    v32 = 1;
  }

  else
  {
    v27 = 0;
    v28 = 0;
    while (!(*a3)(*v26, *v18))
    {
LABEL_36:
      v18 = v26;
      v27 += 8;
      if (++v26 == a2)
      {
        goto LABEL_43;
      }
    }

    v29 = *v26;
    v30 = v27;
    do
    {
      v31 = a1 + v30;
      v20 = *(a1 + v30 + 16);
      *(a1 + v30 + 24) = v20;
      if (v30 == -16)
      {
        *a1 = v29;
        if (++v28 != 8)
        {
          goto LABEL_36;
        }

        goto LABEL_42;
      }

      v30 -= 8;
    }

    while (((*a3)(v29, *(v31 + 1)) & 1) != 0);
    *(a1 + v30 + 24) = v29;
    if (++v28 != 8)
    {
      goto LABEL_36;
    }

LABEL_42:
    v32 = 0;
    LOBYTE(v20) = v26 + 1 == a2;
  }

  v7 = v32 | v20;
  return v7 & 1;
}

char *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(operations_research::sat::EncodingNode const*,operations_research::sat::EncodingNode const*),operations_research::sat::EncodingNode**,operations_research::sat::EncodingNode**>(char *a1, char *a2, char *a3, unsigned int (**a4)(void, uint64_t))
{
  if (a1 == a2)
  {
    return a3;
  }

  v48 = a3;
  v49 = a2 - a1;
  v6 = (a2 - a1) >> 3;
  v7 = v6 - 2;
  if (v6 >= 2)
  {
    v8 = v7 >> 1;
    v52 = v7 >> 1;
    do
    {
      v10 = 8 * v8;
      if (v52 >= (8 * v8) >> 3)
      {
        v11 = (v10 >> 2) | 1;
        v12 = &a1[8 * v11];
        if ((v10 >> 2) + 2 < v6 && (*a4)(*v12, *(v12 + 1)))
        {
          v12 += 8;
          v11 = (v10 >> 2) + 2;
        }

        v13 = &a1[v10];
        if (((*a4)(*v12, *&a1[8 * v8]) & 1) == 0)
        {
          v14 = *v13;
          do
          {
            v15 = v12;
            *v13 = *v12;
            if (v52 < v11)
            {
              break;
            }

            v16 = (2 * v11) | 1;
            v12 = &a1[8 * v16];
            v17 = 2 * v11 + 2;
            if (v17 < v6 && (*a4)(*v12, *(v12 + 1)))
            {
              v12 += 8;
              v16 = v17;
            }

            v13 = v15;
            v11 = v16;
          }

          while (!(*a4)(*v12, v14));
          *v15 = v14;
        }
      }

      v9 = v8-- <= 0;
    }

    while (!v9);
  }

  v18 = a2;
  i = a2;
  v20 = v48;
  if (a2 != v48)
  {
    if (v6 < 2)
    {
      i = a2;
      do
      {
        if ((*a4)(*i, *a1))
        {
          v21 = *i;
          *i = *a1;
          *a1 = v21;
        }

        i += 8;
      }

      while (i != v48);
      goto LABEL_45;
    }

    for (i = a2; i != v20; i += 8)
    {
      if ((*a4)(*i, *a1))
      {
        v22 = *i;
        *i = *a1;
        *a1 = v22;
        if (v49 == 16)
        {
          v23 = a1 + 8;
          v24 = 1;
          if (((*a4)(*(a1 + 1)) & 1) == 0)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v25 = (*a4)(*(a1 + 1), *(a1 + 2));
          if (v25)
          {
            v23 = a1 + 16;
          }

          else
          {
            v23 = a1 + 8;
          }

          if (v25)
          {
            v24 = 2;
          }

          else
          {
            v24 = 1;
          }

          if (((*a4)(*v23, *a1) & 1) == 0)
          {
LABEL_38:
            v26 = *a1;
            v27 = a1;
            do
            {
              v29 = v23;
              *v27 = *v23;
              if (((v6 - 2) >> 1) < v24)
              {
                break;
              }

              v30 = (2 * v24) | 1;
              v23 = &a1[8 * v30];
              v31 = 2 * v24 + 2;
              if (v31 < v6 && (*a4)(*v23, *(v23 + 1)))
              {
                v23 += 8;
                v30 = v31;
              }

              v28 = (*a4)(*v23, v26);
              v27 = v29;
              v24 = v30;
            }

            while (!v28);
            *v29 = v26;
            v18 = a2;
            v20 = v48;
          }
        }
      }
    }
  }

LABEL_45:
  if (v6 >= 2)
  {
    do
    {
      v33 = 0;
      v51 = v18;
      v53 = *a1;
      v34 = (v6 - 2) >> 1;
      v35 = a1;
      do
      {
        while (1)
        {
          v39 = &v35[8 * v33];
          v38 = v39 + 8;
          v40 = (2 * v33) | 1;
          v41 = 2 * v33 + 2;
          if (v41 < v6)
          {
            break;
          }

          v33 = (2 * v33) | 1;
          *v35 = *v38;
          v35 = v39 + 8;
          if (v40 > v34)
          {
            goto LABEL_57;
          }
        }

        v37 = *(v39 + 2);
        v36 = v39 + 16;
        if ((*a4)(*(v36 - 1), v37))
        {
          v38 = v36;
          v33 = v41;
        }

        else
        {
          v33 = v40;
        }

        *v35 = *v38;
        v35 = v38;
      }

      while (v33 <= v34);
LABEL_57:
      v18 = v51 - 8;
      if (v38 == v51 - 8)
      {
        *v38 = v53;
      }

      else
      {
        *v38 = *v18;
        *v18 = v53;
        v42 = (v38 - a1 + 8) >> 3;
        v9 = v42 < 2;
        v43 = v42 - 2;
        if (!v9)
        {
          v44 = v43 >> 1;
          v45 = &a1[8 * (v43 >> 1)];
          if ((*a4)(*v45, *v38))
          {
            v46 = *v38;
            do
            {
              v47 = v45;
              *v38 = *v45;
              if (!v44)
              {
                break;
              }

              v44 = (v44 - 1) >> 1;
              v45 = &a1[8 * v44];
              v38 = v47;
            }

            while (((*a4)(*v45, v46) & 1) != 0);
            *v47 = v46;
          }
        }
      }

      v9 = v6-- <= 2;
    }

    while (!v9);
  }

  return i;
}

char *std::vector<operations_research::sat::EncodingNode *>::__assign_with_size[abi:ne200100]<operations_research::sat::EncodingNode **,operations_research::sat::EncodingNode **>(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 3)
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

    if (!(a4 >> 61))
    {
      v9 = v6 >> 2;
      if (v6 >> 2 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFF8;
      v11 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 3)
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

uint64_t operations_research::glop::EnteringVariable::EnteringVariable(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  v5 = *(a3 + 16);
  *(a1 + 8) = *a3;
  *(a1 + 24) = v5;
  *(a1 + 32) = a4;
  operations_research::glop::GlopParameters::GlopParameters(a1 + 40, 0);
  *(a1 + 391) = 16;
  strcpy((a1 + 368), "EnteringVariable");
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 432) = 0;
  *(a1 + 440) = 0;
  *(a1 + 416) = 0;
  *(a1 + 424) = a1 + 432;
  operations_research::DistributionStat::DistributionStat(a1 + 448, "num_perfect_ties", 0x10uLL, a1 + 368);
  *(a1 + 448) = &unk_284F44DF0;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0;
  return a1;
}

void sub_23CB9222C(_Unwind_Exception *a1)
{
  operations_research::StatsGroup::~StatsGroup((v1 + 368));
  operations_research::glop::GlopParameters::~GlopParameters((v1 + 40));
  _Unwind_Resume(a1);
}

uint64_t operations_research::glop::EnteringVariable::DualChooseEnteringColumn@<X0>(operations_research::glop::UpdateRow *this@<X2>, uint64_t a2@<X0>, int a3@<W1>, void *a4@<X3>, _DWORD *a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  if (!a5)
  {
    operator new();
  }

  v12 = *operations_research::glop::UpdateRow::GetCoefficients(this);
  ReducedCosts = operations_research::glop::ReducedCosts::GetReducedCosts(*(a2 + 32));
  *(a2 + 560) = *(a2 + 552);
  operations_research::glop::UpdateRow::GetNonZeroPositions(this);
  v15 = *(a2 + 552);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 568) - v15) >> 3) < v14)
  {
    if (v14 < 0xAAAAAAAAAAAAAABLL)
    {
      v16 = *(a2 + 560) - v15;
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v17 = *(operations_research::glop::VariablesInfo::GetCanDecreaseBitRow(*a2) + 8);
  v18 = *(operations_research::glop::VariablesInfo::GetCanIncreaseBitRow(*a2) + 8);
  v19 = *(operations_research::glop::VariablesInfo::GetNonBasicBoxedVariables(*a2) + 8);
  v20 = 128;
  if (a3)
  {
    v20 = 152;
  }

  v21 = *(a2 + v20);
  v22 = fabs(a7) - v21;
  v23 = *(*(a2 + 32) + 872);
  v24 = *(a2 + 136) * v23;
  v25 = v23 * *(a2 + 272);
  operations_research::glop::UpdateRow::GetNonZeroPositions(this);
  *(a2 + 576) += 10 * v26;
  NonZeroPositions = operations_research::glop::UpdateRow::GetNonZeroPositions(this);
  if ((v28 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v29 = NonZeroPositions;
    v30 = 4 * v28;
    v31 = 1.79769313e308;
    do
    {
      v32 = *v29;
      v33 = *(v12 + 8 * v32);
      if (a7 <= 0.0)
      {
        v33 = -v33;
      }

      v34 = v32 >> 6;
      v35 = 1 << v32;
      if ((*(v17 + 8 * (v32 >> 6)) & (1 << v32)) == 0 || v33 <= v21)
      {
        if ((*(v18 + 8 * v34) & v35) != 0 && v33 < -v21)
        {
          v38 = *(ReducedCosts + 8 * v32);
          if (v38 <= -(v33 * v31))
          {
            v33 = -v33;
LABEL_27:
            LODWORD(__p[0]) = *v29;
            *&__p[1] = v38 / v33;
            v71 = v33;
            v39 = v38 / v33 + v24 / v33;
            if (v25 / v33 >= v39)
            {
              v39 = v25 / v33;
            }

            if (v39 < v31 && ((*(v19 + 8 * v34) & v35) == 0 || v33 * (*(*(*a2 + 32) + 8 * v32) - *(*(*a2 + 8) + 8 * v32)) >= v22))
            {
              v31 = v39;
            }

            std::vector<operations_research::sat::OrthogonalPackingResult::Item>::push_back[abi:ne200100](a2 + 552, __p);
          }
        }
      }

      else
      {
        v38 = -*(ReducedCosts + 8 * v32);
        if (v31 * v33 >= v38)
        {
          goto LABEL_27;
        }
      }

      ++v29;
      v30 -= 4;
    }

    while (v30);
  }

  v40 = *(a2 + 552);
  v41 = *(a2 + 560);
  if (v41 - v40 >= 25)
  {
    v42 = 0xAAAAAAAAAAAAAAABLL * ((v41 - v40) >> 3);
    v43 = (v42 - 2) >> 1;
    v44 = v43 + 1;
    v45 = (v40 + 24 * v43);
    do
    {
      std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::glop::EnteringVariable::ColWithRatio *>>(v40, __p, v42, v45);
      v45 -= 3;
      --v44;
    }

    while (v44);
    v40 = *(a2 + 552);
    v41 = *(a2 + 560);
  }

  *a5 = -1;
  a4[1] = *a4;
  *(a2 + 536) = *(a2 + 528);
  v46 = -1.0;
  if (v40 != v41)
  {
    v47 = 0.0;
    v48 = 1.79769313e308;
    while (1)
    {
      v51 = *(v40 + 16);
      *__p = *v40;
      v71 = v51;
      v50 = *&__p[1];
      if (*&__p[1] > v48)
      {
        goto LABEL_57;
      }

      if (v22 <= 0.0)
      {
        break;
      }

      v49 = v71;
      if (((*(v19 + ((SLODWORD(__p[0]) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> SLOBYTE(__p[0])) & 1) != 0 && (v22 = v22 - (*(*(*a2 + 32) + 8 * SLODWORD(__p[0])) - *(*(*a2 + 8) + 8 * SLODWORD(__p[0]))) * v71, v22 > 0.0))
      {
        std::vector<int>::push_back[abi:ne200100](a4, __p);
        std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::__wrap_iter<operations_research::glop::EnteringVariable::ColWithRatio *>>(*(a2 + 552), *(a2 + 560), v69, 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 560) - *(a2 + 552)) >> 3));
        v41 = *(a2 + 560) - 24;
        *(a2 + 560) = v41;
        v40 = *(a2 + 552);
        if (v40 == v41)
        {
          goto LABEL_57;
        }
      }

      else
      {
LABEL_49:
        if (v49 >= v46)
        {
          v52 = v25 / v49;
          if (v25 / v49 < *&__p[1] + v24 / v49)
          {
            v52 = *&__p[1] + v24 / v49;
          }

          if (v52 < v48)
          {
            v48 = v52;
          }

          if (v49 != v46 || *&__p[1] != v47)
          {
            *(a2 + 536) = *(a2 + 528);
            *a5 = __p[0];
            goto LABEL_41;
          }

          std::vector<int>::push_back[abi:ne200100](a2 + 528, __p);
          v40 = *(a2 + 552);
          v41 = *(a2 + 560);
        }

        v49 = v46;
        v50 = v47;
LABEL_41:
        std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::__wrap_iter<operations_research::glop::EnteringVariable::ColWithRatio *>>(v40, v41, v69, 0xAAAAAAAAAAAAAAABLL * ((v41 - v40) >> 3));
        v46 = v49;
        v47 = v50;
        v41 = *(a2 + 560) - 24;
        *(a2 + 560) = v41;
        v40 = *(a2 + 552);
        if (v40 == v41)
        {
          goto LABEL_57;
        }
      }
    }

    v49 = v71;
    goto LABEL_49;
  }

LABEL_57:
  if (*(a2 + 528) == *(a2 + 536))
  {
    if (*a5 == -1)
    {
      return operations_research::glop::Status::Status(a6);
    }
  }

  else
  {
    std::vector<int>::push_back[abi:ne200100](a2 + 528, a5);
    v53 = (*(a2 + 536) - *(a2 + 528)) >> 2;
    if (v53 == 1)
    {
      v54 = 0;
    }

    else if (v53)
    {
      v55 = __clz(v53);
      v56 = -32;
      if (((v53 << v55) & 0x7FFFFFFF) == 0)
      {
        v56 = -31;
      }

      v57 = 0xFFFFFFFFFFFFFFFFLL >> (v56 + (v55 | 0x40u));
      do
      {
        v54 = (*(a2 + 24))(*(a2 + 8)) & v57;
      }

      while (v53 <= v54);
    }

    else
    {
      v54 = (*(a2 + 24))(*(a2 + 8));
    }

    v58 = *(*(a2 + 528) + 4 * v54);
    *a5 = v58;
    if (v58 == -1)
    {
      return operations_research::glop::Status::Status(a6);
    }
  }

  v59 = *(a2 + 152);
  if (v46 < v59)
  {
    v60 = *a4;
    v61 = a4[1];
    if (*a4 != v61)
    {
      v62 = ((v61 - v60) >> 2) - 1;
      while ((v62 & 0x80000000) == 0)
      {
        v63 = *(v60 + 4 * (v62-- & 0x7FFFFFFF));
        if (fabs(*(v12 + 8 * v63)) >= v59)
        {
          if (dword_27E25CD78 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::glop::EnteringVariable::DualChooseEnteringColumn(BOOL,operations_research::glop::UpdateRow const&,double,std::vector<operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>> *,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_>*)::$_0::operator() const(void)::site, dword_27E25CD78))
          {
            absl::lts_20240722::log_internal::LogMessage::LogMessage(__p, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/glop/entering_variable.cc", 235);
            v65 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(__p, 1);
            absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v65, "Used bound flip to avoid bad pivot. Before: ", 0x2CuLL);
            v69[0] = v46;
            v66 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v65, v69);
            absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v66, " now: ", 6uLL);
            v69[0] = fabs(*(v12 + 8 * v63));
            absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v66, v69);
            absl::lts_20240722::log_internal::LogMessage::~LogMessage(__p);
          }

          *a5 = v63;
          return operations_research::glop::Status::Status(a6);
        }
      }
    }
  }

  return operations_research::glop::Status::Status(a6);
}

void sub_23CB9299C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CB929B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::glop::EnteringVariable::DualPhaseIChooseEnteringColumn@<X0>(operations_research::glop::UpdateRow *this@<X2>, uint64_t a2@<X0>, int a3@<W1>, _DWORD *a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  if (!a4)
  {
    operator new();
  }

  v12 = *operations_research::glop::UpdateRow::GetCoefficients(this);
  ReducedCosts = operations_research::glop::ReducedCosts::GetReducedCosts(*(a2 + 32));
  *(a2 + 560) = *(a2 + 552);
  operations_research::glop::UpdateRow::GetNonZeroPositions(this);
  v15 = *(a2 + 552);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 568) - v15) >> 3) < v14)
  {
    if (v14 < 0xAAAAAAAAAAAAAABLL)
    {
      v16 = *(a2 + 560) - v15;
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v17 = 128;
  if (a3)
  {
    v17 = 152;
  }

  v18 = *(a2 + v17);
  v19 = *(*(a2 + 32) + 872);
  v20 = *(a2 + 136);
  v21 = *(a2 + 272);
  v22 = *(operations_research::glop::VariablesInfo::GetCanDecreaseBitRow(*a2) + 8);
  v23 = *(operations_research::glop::VariablesInfo::GetCanIncreaseBitRow(*a2) + 8);
  operations_research::glop::VariablesInfo::GetTypeRow(*a2);
  operations_research::glop::UpdateRow::GetNonZeroPositions(this);
  *(a2 + 576) += 10 * v24;
  NonZeroPositions = operations_research::glop::UpdateRow::GetNonZeroPositions(this);
  if ((v26 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v27 = NonZeroPositions;
    v28 = v19 * v20;
    v29 = v19 * v21;
    for (i = 4 * v26; i; i -= 4)
    {
      v32 = *v27;
      v33 = *(v12 + 8 * *v27);
      v34 = fabs(v33);
      if (v34 < v18)
      {
        goto LABEL_11;
      }

      v35 = -v33;
      if (a6 > 0.0)
      {
        v35 = *(v12 + 8 * *v27);
      }

      v36 = *(ReducedCosts + 8 * v32);
      v37 = fabs(v36);
      if (v37 <= v19)
      {
        if (v35 > 0.0 && ((*(v22 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v32) & 1) == 0 || v35 < 0.0 && ((*(v23 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
        {
          goto LABEL_11;
        }

        if (v35 * v36 > 0.0)
        {
          v31 = v28 - v37;
          if (v29 >= v31)
          {
            v31 = v29;
          }

          goto LABEL_10;
        }
      }

      else if (v35 * v36 > 0.0)
      {
        goto LABEL_11;
      }

      v31 = v28 + v37;
LABEL_10:
      LODWORD(__p[0]) = *v27;
      *&__p[1] = v31 / v34;
      v54 = v34;
      std::vector<operations_research::sat::OrthogonalPackingResult::Item>::push_back[abi:ne200100](a2 + 552, __p);
LABEL_11:
      ++v27;
    }
  }

  v38 = *(a2 + 552);
  v39 = *(a2 + 560);
  if (v39 - v38 >= 25)
  {
    v40 = 0xAAAAAAAAAAAAAAABLL * ((v39 - v38) >> 3);
    v41 = (v40 - 2) >> 1;
    v42 = v41 + 1;
    v43 = (v38 + 24 * v41);
    do
    {
      std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::glop::EnteringVariable::ColWithRatio *>>(v38, __p, v40, v43);
      v43 -= 3;
      --v42;
    }

    while (v42);
    v38 = *(a2 + 552);
    v39 = *(a2 + 560);
  }

  *a4 = -1;
  if (v38 != v39)
  {
    v44 = fabs(a6);
    v45 = -1.0;
    v46 = 0.0;
    do
    {
      v47 = *v38;
      v49 = *(v38 + 8);
      v48 = *(v38 + 16);
      if (v49 > v45 && v48 >= v46)
      {
        *a4 = v47;
        v45 = v49;
        v46 = v48;
      }

      v44 = v44 - v48;
      v51 = v47 >> 6;
      if ((*(v22 + 8 * v51) & (1 << v47)) != 0 && (*(v23 + 8 * v51) & (1 << v47)) != 0 && fabs(*(ReducedCosts + 8 * v47)) > v18)
      {
        v44 = v44 - v48;
      }

      if (v44 <= 0.0)
      {
        break;
      }

      std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::__wrap_iter<operations_research::glop::EnteringVariable::ColWithRatio *>>(v38, v39, __p, 0xAAAAAAAAAAAAAAABLL * ((v39 - v38) >> 3));
      v39 = *(a2 + 560) - 24;
      *(a2 + 560) = v39;
      v38 = *(a2 + 552);
    }

    while (v38 != v39);
  }

  return operations_research::glop::Status::Status(a5);
}

void sub_23CB92E9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if ((a24 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::glop::EnteringVariable::ColWithRatio *>>(uint64_t result, uint64_t a2, uint64_t a3, double *a4)
{
  if (a3 >= 2)
  {
    v4 = (a3 - 2) >> 1;
    if (v4 >= (0xAAAAAAAAAAAAAAABLL * ((a4 - result) >> 3)))
    {
      v5 = (0x5555555555555556 * ((a4 - result) >> 3)) | 1;
      v6 = (result + 24 * v5);
      if (0x5555555555555556 * ((a4 - result) >> 3) + 2 < a3)
      {
        v7 = *(v6 + 1);
        v8 = *(v6 + 4);
        if (v7 != v8)
        {
          if (v7 <= v8)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        v9 = *(v6 + 2);
        v10 = *(v6 + 5);
        if (v9 != v10)
        {
          if (v9 >= v10)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        if (*v6 > *(v6 + 6))
        {
LABEL_8:
          v6 = (v6 + 24);
          v5 = 0x5555555555555556 * ((a4 - result) >> 3) + 2;
        }
      }

LABEL_9:
      v11 = *(v6 + 1);
      v12 = a4[1];
      if (v11 == v12)
      {
        v13 = *(v6 + 2);
        v14 = a4[2];
        if (v13 == v14)
        {
          if (*v6 > *a4)
          {
            return result;
          }
        }

        else if (v13 < v14)
        {
          return result;
        }
      }

      else
      {
        if (v11 > v12)
        {
          return result;
        }

        v14 = a4[2];
      }

      v15 = *a4;
      v16 = *v6;
      a4[2] = *(v6 + 2);
      *a4 = v16;
      if (v4 < v5)
      {
LABEL_17:
        *v6 = v15;
        *(v6 + 1) = v12;
        *(v6 + 2) = v14;
        return result;
      }

      while (1)
      {
        v18 = v6;
        v19 = 2 * v5;
        v5 = (2 * v5) | 1;
        v6 = (result + 24 * v5);
        v20 = v19 + 2;
        if (v20 >= a3)
        {
          goto LABEL_26;
        }

        v21 = *(v6 + 1);
        v22 = *(v6 + 4);
        if (v21 == v22)
        {
          v23 = *(v6 + 2);
          v24 = *(v6 + 5);
          if (v23 == v24)
          {
            if (*v6 <= *(v6 + 6))
            {
              goto LABEL_26;
            }

LABEL_25:
            v6 = (v6 + 24);
            v5 = v20;
            goto LABEL_26;
          }

          if (v23 < v24)
          {
            goto LABEL_25;
          }
        }

        else if (v21 > v22)
        {
          goto LABEL_25;
        }

LABEL_26:
        v25 = *(v6 + 1);
        if (v25 == v12)
        {
          v26 = *(v6 + 2);
          if (v26 == v14)
          {
            if (*v6 > SLODWORD(v15))
            {
              goto LABEL_38;
            }
          }

          else if (v26 < v14)
          {
LABEL_38:
            *v18 = v15;
            v18[1] = v12;
            v18[2] = v14;
            return result;
          }
        }

        else if (v25 > v12)
        {
          goto LABEL_38;
        }

        v17 = *v6;
        v18[2] = *(v6 + 2);
        *v18 = v17;
        if (v4 < v5)
        {
          goto LABEL_17;
        }
      }
    }
  }

  return result;
}

__int128 *std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::__wrap_iter<operations_research::glop::EnteringVariable::ColWithRatio *>>(__int128 *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 < 2)
  {
    return result;
  }

  v4 = 0;
  v32 = *result;
  v33 = *(result + 2);
  v5 = result;
  do
  {
    v7 = v5;
    v5 = (v5 + 24 * v4 + 24);
    v8 = 2 * v4;
    v4 = (2 * v4) | 1;
    v9 = v8 + 2;
    if (v9 >= a4)
    {
      goto LABEL_4;
    }

    v10 = *(v5 + 1);
    v11 = *(v5 + 4);
    v12 = v10 <= v11;
    if (v10 != v11)
    {
      goto LABEL_9;
    }

    v13 = *(v5 + 2);
    v14 = *(v5 + 5);
    if (v13 == v14)
    {
      v12 = *v5 <= *(v5 + 6);
LABEL_9:
      if (!v12)
      {
        goto LABEL_3;
      }

      goto LABEL_4;
    }

    if (v13 < v14)
    {
LABEL_3:
      v5 = (v5 + 24);
      v4 = v9;
    }

LABEL_4:
    v6 = *v5;
    *(v7 + 2) = *(v5 + 2);
    *v7 = v6;
  }

  while (v4 <= ((a4 - 2) >> 1));
  v15 = (a2 - 24);
  if (v5 == (a2 - 24))
  {
    *(v5 + 2) = v33;
    *v5 = v32;
    return result;
  }

  v16 = *v15;
  *(v5 + 2) = *(a2 - 8);
  *v5 = v16;
  *v15 = v32;
  *(a2 - 8) = v33;
  v17 = v5 - result + 24;
  if (v17 < 25)
  {
    return result;
  }

  v18 = 0xAAAAAAAAAAAAAAABLL * (v17 >> 3) - 2;
  v19 = v18 >> 1;
  v20 = result + 3 * (v18 >> 1);
  v21 = v20[1];
  v22 = *(v5 + 1);
  if (v21 == v22)
  {
    v23 = v20[2];
    v24 = *(v5 + 2);
    if (v23 == v24)
    {
      if (*v20 <= *v5)
      {
        return result;
      }
    }

    else if (v23 >= v24)
    {
      return result;
    }
  }

  else
  {
    if (v21 <= v22)
    {
      return result;
    }

    v24 = *(v5 + 2);
  }

  v25 = *v5;
  v26 = *v20;
  *(v5 + 2) = v20[2];
  *v5 = v26;
  if (v18 < 2)
  {
    goto LABEL_34;
  }

  v27 = result + 3 * (v18 >> 1);
  while (2)
  {
    v29 = v19 - 1;
    v19 = (v19 - 1) >> 1;
    v20 = result + 3 * v19;
    v30 = v20[1];
    if (v30 != v22)
    {
      if (v30 <= v22)
      {
        break;
      }

      goto LABEL_27;
    }

    v31 = v20[2];
    if (v31 == v24)
    {
      if (*v20 <= v25)
      {
        break;
      }

      goto LABEL_27;
    }

    if (v31 < v24)
    {
LABEL_27:
      v28 = *v20;
      v27[2] = v20[2];
      *v27 = v28;
      v27 = result + 3 * v19;
      if (v29 <= 1)
      {
        goto LABEL_34;
      }

      continue;
    }

    break;
  }

  v20 = v27;
LABEL_34:
  *v20 = v25;
  v20[1] = v22;
  v20[2] = v24;
  return result;
}

uint64_t operations_research::sat::JumpTable::JumpTable(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(0);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = absl::lts_20240722::internal_any_invocable::EmptyManager;
  *(a2 + 24) = 0;
  *(a1 + 96) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  return a1;
}

void operations_research::sat::FeasibilityJumpSolver::~FeasibilityJumpSolver(atomic_ullong **this)
{
  *this = &unk_284F412D0;
  operations_research::sat::SharedStatTables::AddTimingStat(this[159], this);
}

{
  operations_research::sat::FeasibilityJumpSolver::~FeasibilityJumpSolver(this);
}

void operations_research::sat::FeasibilityJumpSolver::Initialize(operations_research::sat::FeasibilityJumpSolver *this)
{
  *(this + 4088) = 1;
  v1 = **(this + 32);
  if (*(this + 288))
  {
    operator new();
  }

  operator new();
}

void operations_research::sat::FeasibilityJumpSolver::ResetCurrentSolution(operations_research::sat::FeasibilityJumpSolver *this)
{
  v2 = *(**(this + 32) + 32);
  v3 = *(this + 78);
  v4 = *(this + 142);
  v5 = *(this + 512);
  v6 = (v5 + 896);
  v7 = *(v5 + 896);
  v8 = (*(v5 + 904) - v7) >> 3;
  if (v2 <= v8)
  {
    if (v2 < v8)
    {
      *(v5 + 904) = v7 + 8 * v2;
    }
  }

  else
  {
    std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::__append(v5 + 896, v2 - v8);
  }

  v9 = 1.0 - v3;
  if (v2 >= 1)
  {
    for (i = 0; i != v2; ++i)
    {
      if (operations_research::Domain::IsFixed((*(this + 513) + 24 * i)))
      {
        v11 = operations_research::Domain::Min((*(this + 513) + 24 * i));
      }

      else
      {
        if (*(this + 577))
        {
          *&v50 = v9;
          v53 = 0;
          v12 = *(this + 161);
          v13 = v9;
          if (v12 == absl::lts_20240722::BitGenRef::NotAMock)
          {
            goto LABEL_16;
          }

          if ((v12)(*(this + 160), &absl::lts_20240722::base_internal::FastTypeTag<BOOL ()(absl::lts_20240722::bernoulli_distribution,std::tuple<double>)>::dummy_var, &v50, &v53))
          {
            if ((v53 & 1) == 0)
            {
              goto LABEL_21;
            }
          }

          else
          {
            v13 = *&v50;
LABEL_16:
            while (1)
            {
              v14 = vcvtd_n_s64_f64(v13, 0x20uLL);
              v15 = (*(this + 162))(*(this + 160));
              if (v15 != v14)
              {
                break;
              }

              v13 = (v13 + v14 * -2.32830644e-10) * 4294967300.0;
              if (v13 == 0.0)
              {
                goto LABEL_21;
              }
            }

            if (v15 >= v14)
            {
LABEL_21:
              v16 = (*(this + 513) + 24 * i);
              v50 = this + 1280;
              v51 = absl::lts_20240722::BitGenRef::MockCall<operations_research::sat::ModelRandomGenerator>;
              v52 = absl::lts_20240722::BitGenRef::ImplFn<operations_research::sat::ModelRandomGenerator>;
              goto LABEL_8;
            }
          }
        }

        v11 = operations_research::Domain::SmallestValue((*(this + 513) + 24 * i));
      }

LABEL_8:
      *(*v6 + 8 * i) = v11;
    }
  }

  if (*(**(this + 32) + 16))
  {
    v17 = (this + 1280);
    *&v50 = 0.5;
    v53 = 0;
    v18 = *(this + 161);
    if (v18 == absl::lts_20240722::BitGenRef::NotAMock)
    {
      v19 = 0.5;
      goto LABEL_29;
    }

    if ((v18)(*v17, &absl::lts_20240722::base_internal::FastTypeTag<BOOL ()(absl::lts_20240722::bernoulli_distribution,std::tuple<double>)>::dummy_var, &v50, &v53))
    {
      if ((v53 & 1) == 0)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v19 = *&v50;
LABEL_29:
      while (1)
      {
        v20 = vcvtd_n_s64_f64(v19, 0x20uLL);
        v21 = (*(this + 162))(*(this + 160));
        if (v21 != v20)
        {
          break;
        }

        v19 = (v19 + v20 * -2.32830644e-10) * 4294967300.0;
        if (v19 == 0.0)
        {
          goto LABEL_69;
        }
      }

      if (v21 >= v20)
      {
        goto LABEL_69;
      }
    }

    v22 = *(**(this + 32) + 128);
    if (!v22)
    {
      v22 = &operations_research::sat::_CpObjectiveProto_default_instance_;
    }

    v23 = *(v22 + 4);
    if (v23 >= 1)
    {
      for (j = 0; j != v23; ++j)
      {
        v26 = *(**(this + 32) + 128);
        if (!v26)
        {
          v26 = &operations_research::sat::_CpObjectiveProto_default_instance_;
        }

        v27 = *(v26[3] + j);
        if (operations_research::Domain::IsFixed((*(this + 513) + 24 * v27)))
        {
          continue;
        }

        v28 = *(**(this + 32) + 128);
        if (!v28)
        {
          v28 = &operations_research::sat::_CpObjectiveProto_default_instance_;
        }

        v29 = v28[6][j];
        v30 = *(this + 577);
        if (v29 < 1)
        {
          if (v30)
          {
            *&v50 = v9;
            v53 = 0;
            v33 = *(this + 161);
            v34 = v9;
            if (v33 == absl::lts_20240722::BitGenRef::NotAMock)
            {
              goto LABEL_63;
            }

            if ((v33)(*v17, &absl::lts_20240722::base_internal::FastTypeTag<BOOL ()(absl::lts_20240722::bernoulli_distribution,std::tuple<double>)>::dummy_var, &v50, &v53))
            {
              if ((v53 & 1) == 0)
              {
                goto LABEL_68;
              }
            }

            else
            {
              v34 = *&v50;
LABEL_63:
              while (1)
              {
                v38 = vcvtd_n_s64_f64(v34, 0x20uLL);
                v39 = (*(this + 162))(*(this + 160));
                if (v39 != v38)
                {
                  break;
                }

                v34 = (v34 + v38 * -2.32830644e-10) * 4294967300.0;
                if (v34 == 0.0)
                {
                  goto LABEL_68;
                }
              }

              if (v39 >= v38)
              {
LABEL_68:
                v40 = (*(this + 513) + 24 * v27);
                v50 = this + 1280;
                v51 = absl::lts_20240722::BitGenRef::MockCall<operations_research::sat::ModelRandomGenerator>;
                v52 = absl::lts_20240722::BitGenRef::ImplFn<operations_research::sat::ModelRandomGenerator>;
                goto LABEL_38;
              }
            }
          }

          v25 = operations_research::Domain::Max((*(this + 513) + 24 * v27));
        }

        else
        {
          if (v30)
          {
            *&v50 = v9;
            v53 = 0;
            v31 = *(this + 161);
            v32 = v9;
            if (v31 == absl::lts_20240722::BitGenRef::NotAMock)
            {
              goto LABEL_57;
            }

            if ((v31)(*v17, &absl::lts_20240722::base_internal::FastTypeTag<BOOL ()(absl::lts_20240722::bernoulli_distribution,std::tuple<double>)>::dummy_var, &v50, &v53))
            {
              if ((v53 & 1) == 0)
              {
                goto LABEL_61;
              }
            }

            else
            {
              v32 = *&v50;
LABEL_57:
              while (1)
              {
                v35 = vcvtd_n_s64_f64(v32, 0x20uLL);
                v36 = (*(this + 162))(*(this + 160));
                if (v36 != v35)
                {
                  break;
                }

                v32 = (v32 + v35 * -2.32830644e-10) * 4294967300.0;
                if (v32 == 0.0)
                {
                  goto LABEL_61;
                }
              }

              if (v36 >= v35)
              {
LABEL_61:
                v37 = (*(this + 513) + 24 * v27);
                v50 = this + 1280;
                v51 = absl::lts_20240722::BitGenRef::MockCall<operations_research::sat::ModelRandomGenerator>;
                v52 = absl::lts_20240722::BitGenRef::ImplFn<operations_research::sat::ModelRandomGenerator>;
                goto LABEL_38;
              }
            }
          }

          v25 = operations_research::Domain::Min((*(this + 513) + 24 * v27));
        }

LABEL_38:
        *(*v6 + 8 * v27) = v25;
      }
    }
  }

LABEL_69:
  if (!*(this + 577))
  {
    v41 = **(this + 32);
    if ((*(v41 + 16) & 2) != 0)
    {
      v42 = *(v41 + 136);
      v43 = *(v42 + 16);
      if (v43 >= 1)
      {
        v44 = *(v42 + 48);
        v45 = *(v42 + 24);
        v46 = *v6;
        do
        {
          v48 = *v44++;
          v47 = v48;
          v49 = *v45++;
          *(v46 + 8 * v49) = v47;
          --v43;
        }

        while (v43);
      }
    }
  }
}

uint64_t operations_research::sat::anonymous namespace::RandomValueNearValue(operations_research::Domain *a1, uint64_t a2, void *a3, double a4)
{
  if (operations_research::Domain::Min(a1) >= a2)
  {
    *v24 = *a3;
    v25 = a3[2];
  }

  if (operations_research::Domain::Max(a1) <= a2)
  {
    *v24 = *a3;
    v25 = a3[2];
  }

  v8 = operations_research::Domain::Max(a1);
  operations_research::Domain::Domain(__p, a2 + 1, v8);
  operations_research::Domain::IntersectionWith(a1, __p, v24);
  if (__p[0])
  {
    operator delete(__p[1]);
  }

  v9 = operations_research::Domain::Size(v24);
  v10 = v9 / (operations_research::Domain::Size(a1) - 1);
  *__p = v10;
  LOBYTE(v21[0]) = 0;
  v11 = a3[1];
  if (v11 == absl::lts_20240722::BitGenRef::NotAMock)
  {
LABEL_12:
    while (1)
    {
      v13 = (a3[2])(*a3);
      v14 = vcvtd_n_s64_f64(v10, 0x20uLL);
      if (v13 != v14)
      {
        break;
      }

      v10 = (v10 + v14 * -2.32830644e-10) * 4294967300.0;
      if (v10 == 0.0)
      {
        goto LABEL_17;
      }
    }

    if (v13 >= v14)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (!(v11)(*a3, &absl::lts_20240722::base_internal::FastTypeTag<BOOL ()(absl::lts_20240722::bernoulli_distribution,std::tuple<double>)>::dummy_var, __p, v21))
    {
      v10 = *__p;
      goto LABEL_12;
    }

    if ((v21[0] & 1) == 0)
    {
LABEL_17:
      v15 = operations_research::Domain::Min(a1);
      operations_research::Domain::Domain(v21, v15, a2 - 1);
      operations_research::Domain::IntersectionWith(a1, v21, __p);
      v19 = *a3;
      v20 = a3[2];
      if (__p[0])
      {
        v16 = result;
        operator delete(__p[1]);
        result = v16;
      }

      if (v21[0])
      {
        v17 = result;
        operator delete(v21[1]);
        result = v17;
      }

      goto LABEL_21;
    }
  }

  *__p = *a3;
  v23 = a3[2];
LABEL_21:
  if (v24[0])
  {
    v18 = result;
    operator delete(v24[1]);
    return v18;
  }

  return result;
}

void sub_23CB947DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *a13, uint64_t a14, char a15, void *__p, uint64_t a17, uint64_t a18, char a19, void *a20)
{
  if (a15)
  {
    operator delete(__p);
    if ((a12 & 1) == 0)
    {
LABEL_3:
      if ((a19 & 1) == 0)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      operator delete(a20);
      goto LABEL_8;
    }
  }

  else if ((a12 & 1) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a13);
  if ((a19 & 1) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

uint64_t operations_research::sat::anonymous namespace::RandomValueNearMin(operations_research::Domain *a1, void *a2, double a3)
{
  if (operations_research::Domain::Size(a1) != 1)
  {
    if (operations_research::Domain::Size(a1) == 2)
    {
      v7 = 1.0 - a3;
      v19 = v7;
      LOBYTE(v25) = 0;
      v8 = a2[1];
      if (v8 == absl::lts_20240722::BitGenRef::NotAMock)
      {
        goto LABEL_15;
      }

      if ((v8)(*a2, &absl::lts_20240722::base_internal::FastTypeTag<BOOL ()(absl::lts_20240722::bernoulli_distribution,std::tuple<double>)>::dummy_var, &v19, &v25))
      {
        if ((LOBYTE(v25) & 1) == 0)
        {
          return operations_research::Domain::Max(a1);
        }
      }

      else
      {
        v7 = v19;
LABEL_15:
        while (1)
        {
          v15 = vcvtd_n_s64_f64(v7, 0x20uLL);
          v16 = (a2[2])(*a2);
          if (v16 != v15)
          {
            break;
          }

          v7 = (v7 + v15 * -2.32830644e-10) * 4294967300.0;
          if (v7 == 0.0)
          {
            return operations_research::Domain::Max(a1);
          }
        }

        if (v16 >= v15)
        {
          return operations_research::Domain::Max(a1);
        }
      }

      return operations_research::Domain::Min(a1);
    }

    v9 = operations_research::Domain::Max(a1);
    v10 = vcvtpd_s64_f64((v9 - operations_research::Domain::Min(a1)) * a3);
    v11 = operations_research::Domain::Min(a1);
    v25 = 0.0;
    v26 = v10;
    v27 = 2;
    v24 = 0;
    v12 = a2[1];
    if (v12 == absl::lts_20240722::BitGenRef::NotAMock)
    {
      v14 = 0.0;
      v19 = 0.0;
      v20 = v10;
      v21 = 2;
      v22 = v10;
    }

    else
    {
      if ((v12)(*a2, &absl::lts_20240722::base_internal::FastTypeTag<long long ()(absl::lts_20240722::log_uniform_int_distribution<long long>,std::tuple<long long,long long,long long>)>::dummy_var, &v25, &v24))
      {
        v13 = v24;
        return operations_research::Domain::ValueAtOrBefore(a1, v13 + v11);
      }

      v14 = v25;
      v19 = v25;
      v20 = v26;
      v10 = v26 - *&v25;
      v21 = v27;
      v22 = v26 - *&v25;
      if (v27 != 2)
      {
        v18 = 1.0 / log(v27);
        v17 = vcvtpd_s64_f64(v18 * log(v10 + 0.5));
        goto LABEL_24;
      }
    }

    v17 = 64 - __clz(v10);
LABEL_24:
    v23 = v17;
    v13 = absl::lts_20240722::log_uniform_int_distribution<long long>::Generate<absl::lts_20240722::BitGenRef>(&v19, a2, &v19) + *&v14;
    return operations_research::Domain::ValueAtOrBefore(a1, v13 + v11);
  }

  return operations_research::Domain::Min(a1);
}

uint64_t operations_research::sat::anonymous namespace::RandomValueNearMax(operations_research::Domain *a1, void *a2, double a3)
{
  if (operations_research::Domain::Size(a1) != 1)
  {
    if (operations_research::Domain::Size(a1) == 2)
    {
      v7 = 1.0 - a3;
      v19 = v7;
      LOBYTE(v25) = 0;
      v8 = a2[1];
      if (v8 == absl::lts_20240722::BitGenRef::NotAMock)
      {
        goto LABEL_15;
      }

      if ((v8)(*a2, &absl::lts_20240722::base_internal::FastTypeTag<BOOL ()(absl::lts_20240722::bernoulli_distribution,std::tuple<double>)>::dummy_var, &v19, &v25))
      {
        if ((LOBYTE(v25) & 1) == 0)
        {
          return operations_research::Domain::Min(a1);
        }
      }

      else
      {
        v7 = v19;
LABEL_15:
        while (1)
        {
          v15 = vcvtd_n_s64_f64(v7, 0x20uLL);
          v16 = (a2[2])(*a2);
          if (v16 != v15)
          {
            break;
          }

          v7 = (v7 + v15 * -2.32830644e-10) * 4294967300.0;
          if (v7 == 0.0)
          {
            return operations_research::Domain::Min(a1);
          }
        }

        if (v16 >= v15)
        {
          return operations_research::Domain::Min(a1);
        }
      }

      return operations_research::Domain::Max(a1);
    }

    v9 = operations_research::Domain::Max(a1);
    v10 = vcvtpd_s64_f64((v9 - operations_research::Domain::Min(a1)) * a3);
    v11 = operations_research::Domain::Max(a1);
    v25 = 0.0;
    v26 = v10;
    v27 = 2;
    v24 = 0;
    v12 = a2[1];
    if (v12 == absl::lts_20240722::BitGenRef::NotAMock)
    {
      v14 = 0.0;
      v19 = 0.0;
      v20 = v10;
      v21 = 2;
      v22 = v10;
    }

    else
    {
      if ((v12)(*a2, &absl::lts_20240722::base_internal::FastTypeTag<long long ()(absl::lts_20240722::log_uniform_int_distribution<long long>,std::tuple<long long,long long,long long>)>::dummy_var, &v25, &v24))
      {
        v13 = v24;
        return operations_research::Domain::ValueAtOrAfter(a1, v11 - v13);
      }

      v14 = v25;
      v19 = v25;
      v20 = v26;
      v10 = v26 - *&v25;
      v21 = v27;
      v22 = v26 - *&v25;
      if (v27 != 2)
      {
        v18 = 1.0 / log(v27);
        v17 = vcvtpd_s64_f64(v18 * log(v10 + 0.5));
        goto LABEL_24;
      }
    }

    v17 = 64 - __clz(v10);
LABEL_24:
    v23 = v17;
    v13 = absl::lts_20240722::log_uniform_int_distribution<long long>::Generate<absl::lts_20240722::BitGenRef>(&v19, a2, &v19) + *&v14;
    return operations_research::Domain::ValueAtOrAfter(a1, v11 - v13);
  }

  return operations_research::Domain::Min(a1);
}

uint64_t operations_research::sat::FeasibilityJumpSolver::PerturbateCurrentSolution(uint64_t this)
{
  v1 = *(**(this + 256) + 32);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = 0;
    v4 = *(this + 624);
    v5 = *(this + 1136);
    v6 = (this + 1280);
    v7 = *(this + 4096);
    do
    {
      this = operations_research::Domain::IsFixed((*(v2 + 4104) + 24 * v3));
      if ((this & 1) == 0)
      {
        *v13 = v4;
        v14 = 0;
        v10 = *(v2 + 1288);
        v11 = v4;
        if (v10 == absl::lts_20240722::BitGenRef::NotAMock)
        {
          goto LABEL_11;
        }

        this = (v10)(*v6, &absl::lts_20240722::base_internal::FastTypeTag<BOOL ()(absl::lts_20240722::bernoulli_distribution,std::tuple<double>)>::dummy_var, v13, &v14);
        if (this)
        {
          if ((v14 & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        else
        {
          v11 = *v13;
LABEL_11:
          while (1)
          {
            v12 = vcvtd_n_s64_f64(v11, 0x20uLL);
            this = (*(v2 + 1296))(*(v2 + 1280));
            if (this != v12)
            {
              break;
            }

            v11 = (v11 + v12 * -2.32830644e-10) * 4294967300.0;
            if (v11 == 0.0)
            {
              goto LABEL_4;
            }
          }

          if (this >= v12)
          {
            goto LABEL_4;
          }
        }

        v8 = (*(v2 + 4104) + 24 * v3);
        v9 = *(*(v7 + 896) + 8 * v3);
        v13[0] = v6;
        v13[1] = absl::lts_20240722::BitGenRef::MockCall<operations_research::sat::ModelRandomGenerator>;
        v13[2] = absl::lts_20240722::BitGenRef::ImplFn<operations_research::sat::ModelRandomGenerator>;
        *(*(v7 + 896) + 8 * v3) = this;
      }

LABEL_4:
      ++v3;
    }

    while (v3 != v1);
  }

  return this;
}

void operations_research::sat::FeasibilityJumpSolver::OneLineStats(operations_research::sat::FeasibilityJumpSolver *this@<X0>, char *a2@<X2>, std::string *a3@<X8>)
{
  v82 = *MEMORY[0x277D85DE8];
  memset(&v54, 0, sizeof(v54));
  v5 = *(this + 584);
  if (v5 > 1)
  {
    v59 = " #restarts:";
    v60 = 11;
    *&v57 = v58;
    *(&v57 + 1) = absl::lts_20240722::numbers_internal::FastIntToBuffer(v5 - 1, v58, a2) - v58;
    absl::lts_20240722::StrAppend(&v54, &v59, &v57);
  }

  v6 = *(this + 585);
  if (v6 >= 1)
  {
    v59 = " #solutions_imported:";
    v60 = 21;
    v7 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v6, v58, a2);
    *&v57 = v58;
    *(&v57 + 1) = v7 - v58;
    absl::lts_20240722::StrAppend(&v54, &v59, &v57);
  }

  v8 = *(this + 583);
  if (v8 >= 1)
  {
    v59 = " #perturbations:";
    v60 = 16;
    v9 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v8, v58, a2);
    *&v57 = v58;
    *(&v57 + 1) = v9 - v58;
    absl::lts_20240722::StrAppend(&v54, &v59, &v57);
  }

  v10 = *(this + 580);
  if (*(this + 4632) != 0)
  {
    v59 = " #gen_moves:";
    v60 = 12;
    operations_research::sat::FormatCounter(v10, a2, &v52);
    size = HIBYTE(v52.__r_.__value_.__r.__words[2]);
    if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v52;
    }

    else
    {
      v14 = v52.__r_.__value_.__r.__words[0];
    }

    if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v52.__r_.__value_.__l.__size_;
    }

    *&v57 = v14;
    *(&v57 + 1) = size;
    v56[0].__r_.__value_.__r.__words[0] = " #gen_evals:";
    v56[0].__r_.__value_.__l.__size_ = 12;
    operations_research::sat::FormatCounter(*(this + 579), v12, &__p);
    v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v15 = __p.__r_.__value_.__l.__size_;
    }

    v55[0].__r_.__value_.__r.__words[0] = p_p;
    v55[0].__r_.__value_.__l.__size_ = v15;
    absl::lts_20240722::StrCat(&v59, &v57, v56, v55, &v53);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_22:
        v11 = *(this + 581);
        if (v11)
        {
          goto LABEL_27;
        }

        goto LABEL_23;
      }
    }

    else if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    operator delete(v52.__r_.__value_.__l.__data_);
    v11 = *(this + 581);
    if (v11)
    {
      goto LABEL_27;
    }

    goto LABEL_23;
  }

  *(&v53.__r_.__value_.__s + 23) = 0;
  v53.__r_.__value_.__s.__data_[0] = 0;
  v11 = *(this + 581);
  if (v11)
  {
    goto LABEL_27;
  }

LABEL_23:
  if (!*(*(this + 588) + 56))
  {
    *(&v52.__r_.__value_.__s + 23) = 0;
    v52.__r_.__value_.__s.__data_[0] = 0;
    goto LABEL_39;
  }

LABEL_27:
  v59 = " #comp_moves:";
  v60 = 13;
  operations_research::sat::FormatCounter(v11, a2, &__p);
  v18 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &__p;
  }

  else
  {
    v19 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v18 = __p.__r_.__value_.__l.__size_;
  }

  *&v57 = v19;
  *(&v57 + 1) = v18;
  v56[0].__r_.__value_.__r.__words[0] = " #backtracks:";
  v56[0].__r_.__value_.__l.__size_ = 13;
  operations_research::sat::FormatCounter(*(*(this + 588) + 56), v17, &v50);
  v20 = HIBYTE(v50.__r_.__value_.__r.__words[2]);
  if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v50;
  }

  else
  {
    v21 = v50.__r_.__value_.__r.__words[0];
  }

  if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v20 = v50.__r_.__value_.__l.__size_;
  }

  v55[0].__r_.__value_.__r.__words[0] = v21;
  v55[0].__r_.__value_.__l.__size_ = v20;
  absl::lts_20240722::StrCat(&v59, &v57, v56, v55, &v52);
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_39;
    }
  }

  else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_39;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
LABEL_39:
  if (!operations_research::sat::LsEvaluator::NumInfeasibleConstraints(*(this + 512)))
  {
    *(&__p.__r_.__value_.__s + 23) = 0;
    __p.__r_.__value_.__s.__data_[0] = 0;
    goto LABEL_58;
  }

  v59 = " #good_moves:";
  v60 = 13;
  operations_research::sat::FormatCounter(((*(this + 568) - *(this + 567)) >> 2), v22, &v50);
  v23 = HIBYTE(v50.__r_.__value_.__r.__words[2]);
  if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = &v50;
  }

  else
  {
    v24 = v50.__r_.__value_.__r.__words[0];
  }

  if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v23 = v50.__r_.__value_.__l.__size_;
  }

  *&v57 = v24;
  *(&v57 + 1) = v23;
  v56[0].__r_.__value_.__r.__words[0] = " #inf_cts:";
  v56[0].__r_.__value_.__l.__size_ = 10;
  v25 = operations_research::sat::LsEvaluator::NumInfeasibleConstraints(*(this + 512));
  operations_research::sat::FormatCounter(v25, v26, &v49);
  v27 = HIBYTE(v49.__r_.__value_.__r.__words[2]);
  if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = &v49;
  }

  else
  {
    v28 = v49.__r_.__value_.__r.__words[0];
  }

  if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v27 = v49.__r_.__value_.__l.__size_;
  }

  v55[0].__r_.__value_.__r.__words[0] = v28;
  v55[0].__r_.__value_.__l.__size_ = v27;
  absl::lts_20240722::StrCat(&v59, &v57, v56, v55, &__p);
  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v50.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_58;
    }
  }

  else if ((SHIBYTE(v50.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_58;
  }

  operator delete(v50.__r_.__value_.__l.__data_);
LABEL_58:
  v29 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(this + 577), v58, v22);
  *&v57 = v58;
  *(&v57 + 1) = v29 - v58;
  if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v31 = &v54;
  }

  else
  {
    v31 = v54.__r_.__value_.__r.__words[0];
  }

  if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v32 = HIBYTE(v54.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v32 = v54.__r_.__value_.__l.__size_;
  }

  v33 = v56;
  operations_research::sat::FormatCounter(*(this + 582), v30, v56);
  if ((v56[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v35 = HIBYTE(v56[0].__r_.__value_.__r.__words[2]);
  }

  else
  {
    v35 = v56[0].__r_.__value_.__l.__size_;
    v33 = v56[0].__r_.__value_.__r.__words[0];
  }

  operations_research::sat::FormatCounter(*(this + 578), v34, v55);
  operations_research::sat::FormatCounter(*(this + 586), v36, &v50);
  v59 = "batch:";
  v60 = 6;
  v61 = v57;
  v62 = v31;
  v63 = v32;
  v64 = " #lin_moves:";
  v65 = 12;
  v66 = v33;
  v67 = v35;
  v68 = " #lin_evals:";
  v69 = 12;
  v37 = HIBYTE(v55[0].__r_.__value_.__r.__words[2]);
  v38 = v55;
  if ((v55[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v37 = v55[0].__r_.__value_.__l.__size_;
    v38 = v55[0].__r_.__value_.__r.__words[0];
  }

  v70 = v38;
  v71 = v37;
  v39 = HIBYTE(v53.__r_.__value_.__r.__words[2]);
  v40 = &v53;
  if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v39 = v53.__r_.__value_.__l.__size_;
    v40 = v53.__r_.__value_.__r.__words[0];
  }

  v72 = v40;
  v73 = v39;
  v41 = HIBYTE(v52.__r_.__value_.__r.__words[2]);
  v42 = &v52;
  if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v41 = v52.__r_.__value_.__l.__size_;
    v42 = v52.__r_.__value_.__r.__words[0];
  }

  v74 = v42;
  v75 = v41;
  v43 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v44 = &__p;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v43 = __p.__r_.__value_.__l.__size_;
    v44 = __p.__r_.__value_.__r.__words[0];
  }

  v76 = v44;
  v77 = v43;
  v78 = " #weight_updates:";
  v79 = 17;
  v45 = HIBYTE(v50.__r_.__value_.__r.__words[2]);
  if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v46 = &v50;
  }

  else
  {
    v46 = v50.__r_.__value_.__r.__words[0];
  }

  if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v45 = v50.__r_.__value_.__l.__size_;
  }

  v80 = v46;
  v81 = v45;
  absl::lts_20240722::strings_internal::CatPieces(&v59, 12, a3);
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v55[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_82:
      if ((SHIBYTE(v56[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_83;
      }

      goto LABEL_90;
    }
  }

  else if ((SHIBYTE(v55[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_82;
  }

  operator delete(v55[0].__r_.__value_.__l.__data_);
  if ((SHIBYTE(v56[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_83:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_91;
  }

LABEL_90:
  operator delete(v56[0].__r_.__value_.__l.__data_);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_84:
    if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_92;
  }

LABEL_91:
  operator delete(__p.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_85:
    if ((SHIBYTE(v53.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_86;
    }

LABEL_93:
    operator delete(v53.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v54.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_94;
  }

LABEL_92:
  operator delete(v52.__r_.__value_.__l.__data_);
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_93;
  }

LABEL_86:
  if ((SHIBYTE(v54.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_87:
    v47 = *MEMORY[0x277D85DE8];
    return;
  }

LABEL_94:
  operator delete(v54.__r_.__value_.__l.__data_);
  v48 = *MEMORY[0x277D85DE8];
}

void sub_23CB954B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::FeasibilityJumpSolver::GenerateTask@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  atomic_store(1u, (this + 4090));
  *a2 = &unk_284F41328;
  a2[1] = this;
  a2[3] = a2;
  return this;
}

uint64_t operations_research::sat::FeasibilityJumpSolver::ComputeLinearJump(operations_research::sat::FeasibilityJumpSolver *this, int a2)
{
  v62[11] = *MEMORY[0x277D85DE8];
  v4 = *(this + 512);
  if (operations_research::Domain::IsFixed((*(this + 513) + 24 * a2)))
  {
    result = 0;
    v6 = *MEMORY[0x277D85DE8];
    return result;
  }

  v7 = (v4 + 896);
  v8 = a2;
  ++*(this + 578);
  v9 = (*(this + 513) + 24 * a2);
  if (((*(*(this + 516) + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
  {
    v26 = *(this + 512);
    v27 = operations_research::Domain::ValueAtOrBefore(v9, *(*v7 + 8 * a2) - 1);
    v28 = operations_research::Domain::ValueAtOrAfter((*(this + 513) + 24 * a2), *(*v7 + 8 * a2) + 1);
    if (operations_research::Domain::Contains((*(this + 513) + 24 * a2), v27))
    {
      v29 = 4408;
      if (*(this + 4609))
      {
        v29 = 4432;
      }

      v30 = (this + v29);
      v31 = *v30;
      v32 = (v30[1] - *v30) >> 3;
      v33 = v27 - *(*v7 + 8 * a2);
      ++*(this + 587);
      v34 = operations_research::sat::LinearIncrementalEvaluator::WeightedViolationDelta((*(this + 512) + 176), v31, v32, a2, v33);
      v35 = *(this + 512);
      v36 = 0.0;
      if (*(*v35 + 16))
      {
        v38 = v35 + 30;
        v37 = v35[30];
        if (0xAAAAAAAAAAAAAAABLL * ((v38[1] - v37) >> 3) > a2)
        {
          v39 = (v37 + 24 * a2);
          v40 = *v39;
          if (*v39 != v39[1] && !*v40)
          {
            v36 = (*(v40 + 8) * v33);
          }
        }
      }

      v41 = v34 + v36 * 1.08420217e-19;
      if (v41 < 0.0)
      {
        v42 = *(this + 513);
        operations_research::Domain::Domain(&v60, 0x8000000000000000, v27 - 1);
        operations_research::Domain::IntersectionWith((v42 + 24 * a2), &v60, v62);
        if (v60)
        {
          operator delete(__p[0]);
        }

        if (!operations_research::Domain::IsEmpty(v62))
        {
          operations_research::sat::LinearIncrementalEvaluator::SlopeBreakpoints((v26 + 176), v62, a2, *(*v7 + 8 * a2), &v60);
          v43 = *(this + 573);
          if (v43)
          {
            *(this + 574) = v43;
            operator delete(v43);
            *(this + 573) = 0;
            *(this + 574) = 0;
            *(this + 575) = 0;
          }

          *(this + 573) = v60;
          *(this + 287) = *__p;
          v62[10] = 0;
          operator new();
        }

LABEL_51:
        if (v62[0])
        {
          operator delete(v62[1]);
        }

LABEL_53:
        result = v27 - *(*v7 + 8 * a2);
        v59 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    else
    {
      v41 = INFINITY;
    }

    if (operations_research::Domain::Contains((*(this + 513) + 24 * a2), v28))
    {
      v44 = 4408;
      if (*(this + 4609))
      {
        v44 = 4432;
      }

      v45 = (this + v44);
      v46 = *v45;
      v47 = (v45[1] - *v45) >> 3;
      v48 = v28 - *(*v7 + 8 * a2);
      ++*(this + 587);
      v49 = operations_research::sat::LinearIncrementalEvaluator::WeightedViolationDelta((*(this + 512) + 176), v46, v47, a2, v48);
      v50 = *(this + 512);
      v51 = 0.0;
      if (*(*v50 + 16))
      {
        v53 = v50 + 30;
        v52 = v50[30];
        if (0xAAAAAAAAAAAAAAABLL * ((v53[1] - v52) >> 3) > a2)
        {
          v54 = (v52 + 24 * a2);
          v55 = *v54;
          if (*v54 != v54[1] && !*v55)
          {
            v51 = (*(v55 + 8) * v48);
          }
        }
      }

      v56 = v49 + v51 * 1.08420217e-19;
      if (v56 < 0.0)
      {
        v57 = *(this + 513);
        operations_research::Domain::Domain(&v60, v28 + 1, 0x7FFFFFFFFFFFFFFFLL);
        operations_research::Domain::IntersectionWith((v57 + 24 * a2), &v60, v62);
        if (v60)
        {
          operator delete(__p[0]);
        }

        if (!operations_research::Domain::IsEmpty(v62))
        {
          operations_research::sat::LinearIncrementalEvaluator::SlopeBreakpoints((v26 + 176), v62, a2, *(*v7 + 8 * a2), &v60);
          v58 = *(this + 573);
          if (v58)
          {
            *(this + 574) = v58;
            operator delete(v58);
            *(this + 573) = 0;
            *(this + 574) = 0;
            *(this + 575) = 0;
          }

          *(this + 573) = v60;
          *(this + 287) = *__p;
          v62[6] = 0;
          operator new();
        }

        v27 = v28;
        goto LABEL_51;
      }
    }

    else
    {
      v56 = INFINITY;
    }

    if (v41 >= v56)
    {
      v27 = v28;
    }

    goto LABEL_53;
  }

  v10 = operations_research::Domain::Min(v9);
  v11 = operations_research::Domain::Max((*(this + 513) + 24 * a2));
  if (*(*v7 + 8 * a2) == v10)
  {
    v12 = v11 - v10;
  }

  else
  {
    v12 = v10 - v11;
  }

  v13 = 4408;
  if (*(this + 4609))
  {
    v13 = 4432;
  }

  v14 = (this + v13);
  v15 = *v14;
  v16 = (v14[1] - *v14) >> 3;
  ++*(this + 587);
  v17 = a2;
  v18 = v12;
  operations_research::sat::LinearIncrementalEvaluator::WeightedViolationDelta((*(this + 512) + 176), v15, v16, v17, v12);
  v19 = *(this + 512);
  if ((*(*v19 + 16) & 1) != 0 && (v21 = v19 + 30, v20 = v19[30], 0xAAAAAAAAAAAAAAABLL * ((v21[1] - v20) >> 3) > v8))
  {
    v22 = (v20 + 24 * v8);
    v23 = *v22;
    result = v18;
    if (*v22 != v22[1] && !*v23)
    {
      v24 = (*(v23 + 8) * v18);
    }
  }

  else
  {
    result = v18;
  }

  v25 = *MEMORY[0x277D85DE8];
  return result;
}