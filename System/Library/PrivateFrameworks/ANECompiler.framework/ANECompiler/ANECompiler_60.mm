int64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,double>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,double>>>::find_or_prepare_insert<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>@<X0>(int64_t result@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
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
    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(result, v14, (v16 + (__clz(__rbit64(v21)) >> 3)) & v3, v6, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,double>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,double>>>::GetPolicyFunctions(void)::value);
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
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,double>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,double>>>::resize_impl(result, 3);
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

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,double>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,double>>>::resize_impl(uint64_t a1, uint64_t a2)
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

double std::__stable_sort<std::_ClassicAlgPolicy,operations_research::sat::LinearConstraintManager::ChangeLp(operations_research::glop::BasisState *,int *)::$_2 &,std::__wrap_iter<std::pair<operations_research::StrongIndex<operations_research::sat::LinearConstraintManager::ConstraintIndex_index_tag_>,double> *>>(__n128 *a1, __n128 *a2, unint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      a6.n128_u64[0] = a2[-1].n128_u64[1];
      v6 = a1->n128_f64[1];
      if (a6.n128_f64[0] > v6)
      {
        v7 = a1->n128_u32[0];
        a1->n128_u32[0] = a2[-1].n128_u32[0];
        a2[-1].n128_u32[0] = v7;
        a1->n128_u64[1] = a6.n128_u64[0];
        a2[-1].n128_f64[1] = v6;
      }
    }

    else if (a3 <= 0)
    {
      if (a1 != a2)
      {
        v16 = a1 + 1;
        if (&a1[1] != a2)
        {
          v17 = 0;
          v18 = a1;
          do
          {
            a6.n128_u64[0] = v18[1].n128_u64[1];
            v20 = v18->n128_f64[1];
            v18 = v16;
            if (a6.n128_f64[0] > v20)
            {
              v21 = v16->n128_u32[0];
              v22 = v17;
              do
              {
                v23 = a1 + v22;
                *(v23 + 4) = *(a1->n128_u32 + v22);
                *(v23 + 3) = *(&a1->n128_u64[1] + v22);
                if (!v22)
                {
                  v19 = a1;
                  goto LABEL_15;
                }

                v22 -= 16;
              }

              while (a6.n128_f64[0] > *(v23 - 1));
              v19 = &a1[1] + v22;
LABEL_15:
              *v19 = v21;
              *(v19 + 8) = a6.n128_u64[0];
            }

            v16 = v18 + 1;
            v17 += 16;
          }

          while (&v18[1] != a2);
        }
      }
    }

    else
    {
      v9 = a3 >> 1;
      v10 = &a1[a3 >> 1];
      v11 = a3 - (a3 >> 1);
      if (a3 <= a5)
      {
        v26 = a4;
        v27.n128_f64[0] = std::__stable_sort_move<std::_ClassicAlgPolicy,operations_research::sat::LinearConstraintManager::ChangeLp(operations_research::glop::BasisState *,int *)::$_2 &,std::__wrap_iter<std::pair<operations_research::StrongIndex<operations_research::sat::LinearConstraintManager::ConstraintIndex_index_tag_>,double> *>>(a1, &a1[a3 >> 1], a3 >> 1, a4, a6);
        v28 = v26 + 16 * v9;
        a6.n128_f64[0] = std::__stable_sort_move<std::_ClassicAlgPolicy,operations_research::sat::LinearConstraintManager::ChangeLp(operations_research::glop::BasisState *,int *)::$_2 &,std::__wrap_iter<std::pair<operations_research::StrongIndex<operations_research::sat::LinearConstraintManager::ConstraintIndex_index_tag_>,double> *>>(v10, a2, v11, v28, v27);
        v29 = v26 + 16 * a3;
        if ((a3 & 0x1FFFFFFFFFFFFFFELL) != 0)
        {
          v30 = v28;
          v31 = a1;
          while (v30 != v29)
          {
            a6.n128_u64[0] = *(v30 + 8);
            v33 = *(v26 + 8);
            if (a6.n128_f64[0] <= v33)
            {
              v32 = v26;
              v26 += 16;
              a6.n128_f64[0] = v33;
            }

            else
            {
              v32 = v30;
              v30 += 16;
            }

            v31->n128_u32[0] = *v32;
            v31->n128_u64[1] = a6.n128_u64[0];
            ++v31;
            if (v26 == v28)
            {
              goto LABEL_31;
            }
          }

          if (v26 != v28)
          {
            v34 = 0;
            do
            {
              v35 = v26 + v34;
              v36 = &v31[v34 / 0x10];
              v36->n128_u32[0] = *(v26 + v34);
              a6.n128_u64[0] = *(v26 + v34 + 8);
              v36->n128_u64[1] = a6.n128_u64[0];
              v34 += 16;
            }

            while (v35 + 16 != v28);
          }
        }

        else
        {
          v30 = v28;
          v31 = a1;
LABEL_31:
          while (v30 != v29)
          {
            v31->n128_u32[0] = *v30;
            a6.n128_u64[0] = *(v30 + 8);
            v31->n128_u64[1] = a6.n128_u64[0];
            v30 += 16;
            ++v31;
          }
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,operations_research::sat::LinearConstraintManager::ChangeLp(operations_research::glop::BasisState *,int *)::$_2 &,std::__wrap_iter<std::pair<operations_research::StrongIndex<operations_research::sat::LinearConstraintManager::ConstraintIndex_index_tag_>,double> *>>(a1, &a1[a3 >> 1], a3 >> 1, a4, a5);
        std::__stable_sort<std::_ClassicAlgPolicy,operations_research::sat::LinearConstraintManager::ChangeLp(operations_research::glop::BasisState *,int *)::$_2 &,std::__wrap_iter<std::pair<operations_research::StrongIndex<operations_research::sat::LinearConstraintManager::ConstraintIndex_index_tag_>,double> *>>(v10, a2, v11, a4, a5);

        a6.n128_f64[0] = std::__inplace_merge<std::_ClassicAlgPolicy,operations_research::sat::LinearConstraintManager::ChangeLp(operations_research::glop::BasisState *,int *)::$_2 &,std::__wrap_iter<std::pair<operations_research::StrongIndex<operations_research::sat::LinearConstraintManager::ConstraintIndex_index_tag_>,double> *>>(a1, v10, a2, v9, v11, a4, a5, v15);
      }
    }
  }

  return a6.n128_f64[0];
}

double std::__stable_sort_move<std::_ClassicAlgPolicy,operations_research::sat::LinearConstraintManager::ChangeLp(operations_research::glop::BasisState *,int *)::$_2 &,std::__wrap_iter<std::pair<operations_research::StrongIndex<operations_research::sat::LinearConstraintManager::ConstraintIndex_index_tag_>,double> *>>(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  if (a3)
  {
    if (a3 == 2)
    {
      v5 = a2 - 1;
      if (a2[-1].n128_f64[1] <= a1->n128_f64[1])
      {
        *a4 = *a1;
        a5 = *v5;
      }

      else
      {
        *a4 = *v5;
        a5 = *a1;
      }

      *(a4 + 16) = a5;
    }

    else if (a3 == 1)
    {
      a5 = *a1;
      *a4 = *a1;
    }

    else if (a3 > 8)
    {
      v14 = a3 >> 1;
      v15 = 16 * (a3 >> 1);
      v16 = &a1[v15 / 0x10];
      v17 = a1;
      (std::__stable_sort<std::_ClassicAlgPolicy,operations_research::sat::LinearConstraintManager::ChangeLp(operations_research::glop::BasisState *,int *)::$_2 &,std::__wrap_iter<std::pair<operations_research::StrongIndex<operations_research::sat::LinearConstraintManager::ConstraintIndex_index_tag_>,double> *>>)();
      std::__stable_sort<std::_ClassicAlgPolicy,operations_research::sat::LinearConstraintManager::ChangeLp(operations_research::glop::BasisState *,int *)::$_2 &,std::__wrap_iter<std::pair<operations_research::StrongIndex<operations_research::sat::LinearConstraintManager::ConstraintIndex_index_tag_>,double> *>>(v16, a2, a3 - v14, a4 + v15, a3 - v14);
      if (v15)
      {
        v21 = v16;
        v22 = a4;
        v23 = a2;
        v24 = v17;
        while (v21 != a2)
        {
          if (v21->n128_f64[1] <= v24->n128_f64[1])
          {
            v25 = *v24++;
            a5.n128_u64[0] = v25;
            *v22++ = v25;
            if (v24 == v16)
            {
              goto LABEL_34;
            }
          }

          else
          {
            v26 = *v21++;
            a5.n128_u64[0] = v26;
            *v22++ = v26;
            if (v24 == v16)
            {
              goto LABEL_34;
            }
          }
        }

        while (v24 != v16)
        {
          v27 = *v24++;
          a5.n128_u64[0] = v27;
          *v22++ = v27;
        }
      }

      else
      {
        v21 = v16;
        v22 = a4;
        v23 = a2;
LABEL_34:
        while (v21 != v23)
        {
          v28 = *v21++;
          a5.n128_u64[0] = v28;
          *v22++ = v28;
        }
      }
    }

    else if (a1 != a2)
    {
      a5 = *a1;
      *a4 = *a1;
      v6 = a1 + 1;
      if (&a1[1] != a2)
      {
        v7 = 0;
        v8 = a4;
        do
        {
          while (1)
          {
            v9 = v6;
            v10 = v8 + 1;
            if (a1[1].n128_f64[1] > *(v8 + 1))
            {
              break;
            }

            a5 = *v6;
            *v10 = *v6++;
            v7 += 16;
            ++v8;
            a1 = v9;
            if (&v9[1] == a2)
            {
              return a5.n128_f64[0];
            }
          }

          *v10 = *v8;
          v11 = a4;
          if (v8 != a4)
          {
            v12 = v7;
            while (1)
            {
              v11 = a4 + v12;
              v13 = *(a4 + v12 - 8);
              if (a1[1].n128_f64[1] <= v13)
              {
                break;
              }

              *v11 = *(v11 - 16);
              *(v11 + 8) = v13;
              v12 -= 16;
              if (!v12)
              {
                v11 = a4;
                break;
              }
            }
          }

          *v11 = v9->n128_u32[0];
          a5.n128_u64[0] = a1[1].n128_u64[1];
          *(v11 + 8) = a5.n128_u64[0];
          v6 = v9 + 1;
          v7 += 16;
          v8 = v10;
          a1 = v9;
        }

        while (&v9[1] != a2);
      }
    }
  }

  return a5.n128_f64[0];
}

double std::__inplace_merge<std::_ClassicAlgPolicy,operations_research::sat::LinearConstraintManager::ChangeLp(operations_research::glop::BasisState *,int *)::$_2 &,std::__wrap_iter<std::pair<operations_research::StrongIndex<operations_research::sat::LinearConstraintManager::ConstraintIndex_index_tag_>,double> *>>(char *a1, int *a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __n128 a8)
{
  if (!a5)
  {
    return a8.n128_f64[0];
  }

  while (a5 > a7 && a4 > a7)
  {
    if (!a4)
    {
      return a8.n128_f64[0];
    }

    v10 = 0;
    a8.n128_u64[0] = *(a2 + 1);
    v11 = -a4;
    while (1)
    {
      v12 = &a1[v10];
      v13 = *&a1[v10 + 8];
      if (a8.n128_f64[0] > v13)
      {
        break;
      }

      v10 += 16;
      if (__CFADD__(v11++, 1))
      {
        return a8.n128_f64[0];
      }
    }

    v15 = -v11;
    if (-v11 >= a5)
    {
      if (v11 == -1)
      {
        v59 = &a1[v10];
        v60 = *v59;
        *v59 = *a2;
        *a2 = v60;
        *(v59 + 1) = a8.n128_u64[0];
        *(a2 + 1) = v13;
        return a8.n128_f64[0];
      }

      v24 = v15 / 2;
      v18 = &a1[16 * (v15 / 2) + v10];
      v17 = a2;
      if (a2 != a3)
      {
        v26 = (a3 - a2) >> 4;
        v17 = a2;
        do
        {
          v27 = v26 >> 1;
          v28 = &v17[4 * (v26 >> 1)];
          v29 = *(v28 + 1);
          v30 = v28 + 4;
          v26 += ~(v26 >> 1);
          if (v29 > *(v18 + 1))
          {
            v17 = v30;
          }

          else
          {
            v26 = v27;
          }
        }

        while (v26);
      }

      v16 = (v17 - a2) >> 4;
      v25 = v17;
      if (a2 != v18)
      {
LABEL_27:
        v25 = v18;
        if (a2 != v17)
        {
          v31 = *v18;
          *v18 = *a2;
          *a2 = v31;
          v32 = *(v18 + 1);
          *(v18 + 1) = a8.n128_u64[0];
          *(a2 + 1) = v32;
          v25 = v18 + 4;
          for (i = a2 + 4; i != v17; i += 4)
          {
            if (v25 == a2)
            {
              a2 = i;
            }

            v34 = *v25;
            *v25 = *i;
            *i = v34;
            v35 = *(v25 + 1);
            *(v25 + 1) = *(i + 1);
            *(i + 1) = v35;
            v25 += 4;
          }

          if (v25 != a2)
          {
            v36 = v25;
            v37 = a2;
            while (1)
            {
              v38 = *v36;
              *v36 = *v37;
              *v37 = v38;
              v39 = *(v36 + 1);
              *(v36 + 1) = *(v37 + 1);
              *(v37 + 1) = v39;
              v36 += 4;
              v37 += 4;
              v40 = v36 == a2;
              if (v37 == v17)
              {
                if (v36 == a2)
                {
                  break;
                }

                v37 = a2 + 4;
                while (1)
                {
                  v41 = *v36;
                  *v36 = *a2;
                  *a2 = v41;
                  v42 = *(v36 + 1);
                  *(v36 + 1) = *(a2 + 1);
                  *(a2 + 1) = v42;
                  v36 += 4;
                  v40 = v36 == a2;
                  if (v37 != v17)
                  {
                    break;
                  }

                  if (v36 == a2)
                  {
                    goto LABEL_41;
                  }
                }
              }

              if (v40)
              {
                a2 = v37;
              }
            }
          }
        }
      }
    }

    else
    {
      v16 = a5 / 2;
      v17 = &a2[4 * (a5 / 2)];
      v18 = a2;
      if (a2 - a1 != v10)
      {
        v19 = (a2 - a1 - v10) >> 4;
        v18 = &a1[v10];
        do
        {
          v20 = v19 >> 1;
          v21 = &v18[4 * (v19 >> 1)];
          v22 = *(v21 + 1);
          v23 = v21 + 4;
          v19 += ~(v19 >> 1);
          if (v22 < *(v17 + 1))
          {
            v19 = v20;
          }

          else
          {
            v18 = v23;
          }
        }

        while (v19);
      }

      v24 = (v18 - a1 - v10) >> 4;
      v25 = &a2[4 * (a5 / 2)];
      if (a2 != v18)
      {
        goto LABEL_27;
      }
    }

LABEL_41:
    v43 = a5 - v16;
    if (v24 + v16 >= a5 - (v24 + v16) - v11)
    {
      std::__inplace_merge<std::_ClassicAlgPolicy,operations_research::sat::LinearConstraintManager::ChangeLp(operations_research::glop::BasisState *,int *)::$_2 &,std::__wrap_iter<std::pair<operations_research::StrongIndex<operations_research::sat::LinearConstraintManager::ConstraintIndex_index_tag_>,double> *>>(v25, v17, a3, -(v24 + v11), a5 - v16, a6, a7);
      a2 = v18;
      a4 = v24;
      a3 = v25;
      a5 = v16;
      a1 = v12;
      if (!v16)
      {
        return a8.n128_f64[0];
      }
    }

    else
    {
      v44 = v18;
      v45 = a3;
      v46 = -(v24 + v11);
      std::__inplace_merge<std::_ClassicAlgPolicy,operations_research::sat::LinearConstraintManager::ChangeLp(operations_research::glop::BasisState *,int *)::$_2 &,std::__wrap_iter<std::pair<operations_research::StrongIndex<operations_research::sat::LinearConstraintManager::ConstraintIndex_index_tag_>,double> *>>(&a1[v10], v44, v25, v24, v16, a6, a7);
      a4 = v46;
      a3 = v45;
      a2 = v17;
      a5 = v43;
      a1 = v25;
      if (!v43)
      {
        return a8.n128_f64[0];
      }
    }
  }

  if (a4 <= a5)
  {
    if (a2 != a1)
    {
      v54 = 0;
      do
      {
        a8 = *&a1[v54];
        *(a6 + v54) = a8;
        v54 += 16;
      }

      while (&a1[v54] != a2);
      if (v54)
      {
        v55 = a6 + v54;
        v56 = a6 + v54 - 16;
        while (a2 != a3)
        {
          a8.n128_u64[0] = *(a2 + 1);
          v58 = *(a6 + 8);
          if (a8.n128_f64[0] <= v58)
          {
            v57 = a6;
            a6 += 16;
            a8.n128_f64[0] = v58;
          }

          else
          {
            v57 = a2;
            a2 += 4;
          }

          *a1 = *v57;
          *(a1 + 1) = a8.n128_u64[0];
          a1 += 16;
          if (v55 == a6)
          {
            return a8.n128_f64[0];
          }
        }

        v61 = 0;
        do
        {
          v62 = &a1[v61];
          v63 = a6 + v61;
          *v62 = *(a6 + v61);
          a8.n128_u64[0] = *(a6 + v61 + 8);
          *(v62 + 1) = a8.n128_u64[0];
          v61 += 16;
        }

        while (v56 != v63);
      }
    }
  }

  else if (a2 != a3)
  {
    v47 = 0;
    do
    {
      a8 = *&a2[v47];
      *(a6 + v47 * 4) = a8;
      v47 += 4;
    }

    while (&a2[v47] != a3);
    if (v47 * 4)
    {
      v48 = a6 + v47 * 4;
      v49 = a3 - 2;
      while (a2 != a1)
      {
        a8.n128_u64[0] = *(a2 - 1);
        v50 = *(v48 - 8);
        v51 = v50 <= a8.n128_f64[0];
        if (v50 > a8.n128_f64[0])
        {
          v52 = a2 - 4;
        }

        else
        {
          v52 = (v48 - 16);
        }

        if (v50 > a8.n128_f64[0])
        {
          a2 -= 4;
        }

        else
        {
          a8.n128_u64[0] = *(v48 - 8);
        }

        if (v51)
        {
          v48 -= 16;
        }

        *(v49 - 2) = *v52;
        *v49 = a8.n128_u64[0];
        v49 -= 4;
        if (v48 == a6)
        {
          return a8.n128_f64[0];
        }
      }

      while (v48 != a6)
      {
        v53 = *(v48 - 16);
        v48 -= 16;
        *(v49 - 2) = v53;
        a8.n128_u64[0] = *(v48 + 8);
        *v49 = a8.n128_u64[0];
        v49 -= 4;
      }
    }
  }

  return a8.n128_f64[0];
}

uint64_t std::vector<operations_research::sat::TopNCuts::CutCandidate>::__emplace_back_slow_path<operations_research::sat::TopNCuts::CutCandidate>(uint64_t *a1, uint64_t a2)
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

  v19 = a1;
  if (v6)
  {
    if (!(v6 >> 58))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v7 = v2 << 6;
  __p = 0;
  v16 = v7;
  *v7 = *a2;
  *(v7 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v7 + 24) = *(a2 + 24);
  *(v7 + 40) = *(a2 + 40);
  v8 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(v7 + 48) = v8;
  v17 = (v2 << 6) + 64;
  v18 = 0;
  std::vector<operations_research::sat::TopNCuts::CutCandidate>::__swap_out_circular_buffer(a1, &__p);
  v9 = a1[1];
  v10 = v16;
  for (i = v17; v17 != v10; i = v17)
  {
    v17 = i - 64;
    v12 = *(i - 8);
    *(i - 8) = 0;
    if (v12)
    {
      MEMORY[0x23EED9440](v12, 0x1000C8000313F17);
    }

    v13 = *(i - 16);
    *(i - 16) = 0;
    if (v13)
    {
      MEMORY[0x23EED9440](v13, 0x1000C8052888210);
    }

    if (*(i - 41) < 0)
    {
      operator delete(*(i - 64));
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_23CC38468(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<operations_research::sat::TopNCuts::CutCandidate>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<operations_research::sat::TopNCuts::CutCandidate>::__swap_out_circular_buffer(uint64_t *a1, void *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v4;
    do
    {
      v9 = *v7;
      *(v8 + 16) = *(v7 + 2);
      *v8 = v9;
      *(v7 + 1) = 0;
      *(v7 + 2) = 0;
      *v7 = 0;
      v10 = *(v7 + 24);
      *(v8 + 40) = *(v7 + 10);
      *(v8 + 24) = v10;
      v11 = v7[3];
      *(v7 + 6) = 0;
      *(v7 + 7) = 0;
      *(v8 + 48) = v11;
      v7 += 4;
      v8 += 64;
    }

    while (v7 != v4);
    do
    {
      v12 = *(v5 + 56);
      *(v5 + 56) = 0;
      if (v12)
      {
        MEMORY[0x23EED9440](v12, 0x1000C8000313F17);
      }

      v13 = *(v5 + 48);
      *(v5 + 48) = 0;
      if (v13)
      {
        MEMORY[0x23EED9440](v13, 0x1000C8052888210);
      }

      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 += 64;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v14 = *a1;
  *a1 = v6;
  a1[1] = v14;
  a2[1] = v14;
  v15 = a1[1];
  a1[1] = a2[2];
  a2[2] = v15;
  v16 = a1[2];
  a1[2] = a2[3];
  a2[3] = v16;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<operations_research::sat::TopNCuts::CutCandidate>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 64;
    v4 = *(i - 8);
    *(i - 8) = 0;
    if (v4)
    {
      MEMORY[0x23EED9440](v4, 0x1000C8000313F17);
    }

    v5 = *(i - 16);
    *(i - 16) = 0;
    if (v5)
    {
      MEMORY[0x23EED9440](v5, 0x1000C8052888210);
    }

    if (*(i - 41) < 0)
    {
      operator delete(*(i - 64));
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

operations_research::sat::LinearModel *operations_research::sat::LinearModel::LinearModel(operations_research::sat::LinearModel *this, const operations_research::sat::CpModelProto *a2)
{
  *this = a2;
  v2 = *(a2 + 14);
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  if (v2)
  {
    if ((v2 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v3 = 0uLL;
  *(this + 2) = 0u;
  *(this + 8) = 0;
  v207 = this + 32;
  *(this + 3) = 0u;
  v240[0] = 0;
  v240[1] = 0;
  v240[2] = &unk_23CE31C20;
  v239[0] = 0;
  v239[1] = 0;
  v239[2] = &unk_23CE31C20;
  v4 = *(a2 + 8);
  v237 = 0;
  v238 = 0;
  v236 = 0;
  v220 = &v236;
  LOBYTE(v221) = 0;
  if (v4)
  {
    if ((v4 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v5 = 0;
  v6 = 0;
  v232 = 0;
  v233 = 0;
  v234 = &unk_23CE31C20;
  if (*(a2 + 14) >= 1)
  {
    v7 = 0;
    v8 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed;
    while (1)
    {
      v10 = *(a2 + 6);
      v9 = a2 + 48;
      v11 = v10 + 8 * v7 + 7;
      if (v10)
      {
        v12 = v11;
      }

      else
      {
        v12 = v9;
      }

      v13 = *v12;
      v14 = *(*v12 + 60);
      if (v14 == 29)
      {
        operations_research::sat::BoolArgumentProto::BoolArgumentProto(&v220, 0, *(v13 + 48));
        v15 = 126 - 2 * __clz(v222);
        if (v222)
        {
          v16 = v15;
        }

        else
        {
          v16 = 0;
        }

        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,google::protobuf::internal::RepeatedIterator<int>,false>(v223, (v223 + 4 * v222), &v215, v16, 1);
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::sat::BoolArgumentProto>,absl::lts_20240722::hash_internal::Hash<operations_research::sat::BoolArgumentProto>,std::equal_to<operations_research::sat::BoolArgumentProto>,std::allocator<operations_research::sat::BoolArgumentProto>>::find_or_prepare_insert_non_soo<operations_research::sat::BoolArgumentProto>(v240, &v220, &v215);
        if (v217 != 1 || (operations_research::sat::BoolArgumentProto::BoolArgumentProto(v216, 0, &v220), (v217 & 1) == 0))
        {
          *(*(this + 1) + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v7;
          ++*(this + 14);
        }

        operations_research::sat::BoolArgumentProto::~BoolArgumentProto(&v220);
        v14 = *(v13 + 60);
      }

      if (v14 != 12)
      {
        goto LABEL_9;
      }

      if (*(v13 + 16) != 1)
      {
        goto LABEL_9;
      }

      v17 = *(v13 + 48);
      if (*(v17 + 16) != 1)
      {
        goto LABEL_9;
      }

      v18 = **(v13 + 24);
      v19 = **(v17 + 24);
      if (~v19 <= v19)
      {
        v20 = **(v17 + 24);
      }

      else
      {
        v20 = ~v19;
      }

      v21 = *this + 24;
      if (*v21)
      {
        v21 = *v21 + 8 * v20 + 7;
      }

      operations_research::Domain::FromFlatSpanOfIntervals(*(*v21 + 24), *(*v21 + 16), &v220, v3);
      v23 = &operations_research::sat::_LinearConstraintProto_default_instance_;
      if (*(v13 + 60) == 12)
      {
        v23 = *(v13 + 48);
      }

      operations_research::Domain::FromFlatSpanOfIntervals(v23[9], *(v23 + 16), &v226, v22);
      v24 = &operations_research::sat::_LinearConstraintProto_default_instance_;
      if (*(v13 + 60) == 12)
      {
        v24 = *(v13 + 48);
      }

      v25 = *v24[6];
      if (v19 >= 0)
      {
        v26 = v25;
      }

      else
      {
        v26 = -v25;
      }

      operations_research::Domain::InverseMultiplicationBy(&v226, v26, &v215);
      if (v226)
      {
        operator delete(__p);
      }

      operations_research::Domain::IntersectionWith(&v220, &v215, &v226);
      v27 = v20;
      if (!operations_research::Domain::IsEmpty(&v226) && operations_research::Domain::IsFixed(&v226))
      {
        v28 = v236;
        *&v230 = __PAIR64__(v18, v7);
        *(&v230 + 1) = operations_research::Domain::Min(&v226);
        v231 = 1;
        v29 = 0;
        _X8 = v234;
        __asm { PRFM            #4, [X8] }

        v36 = (((v8 + v18) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v8 + v18));
        v37 = vdup_n_s8(v36 & 0x7F);
        v38 = ((v36 >> 7) ^ (v234 >> 12)) & v232;
        v39 = *(v234 + v38);
        v40 = vceq_s8(v39, v37);
        if (!v40)
        {
          goto LABEL_43;
        }

        do
        {
LABEL_41:
          v41 = (v38 + (__clz(__rbit64(v40)) >> 3)) & v232;
          if (*(v235 + 32 * v41) == v18)
          {
            v43 = v8;
            v44 = v235 + 32 * v41;
            goto LABEL_48;
          }

          v40 &= ((v40 & 0x8080808080808080) - 1) & 0x8080808080808080;
        }

        while (v40);
LABEL_43:
        while (1)
        {
          v42 = vceq_s8(v39, 0x8080808080808080);
          if (v42)
          {
            break;
          }

          v29 += 8;
          v38 = (v29 + v38) & v232;
          v39 = *(v234 + v38);
          v40 = vceq_s8(v39, v37);
          if (v40)
          {
            goto LABEL_41;
          }
        }

        v43 = v8;
        v44 = v235 + 32 * inserted;
        *v44 = v18;
        *(v44 + 16) = 0;
        *(v44 + 24) = 0;
        *(v44 + 8) = 0;
LABEL_48:
        v46 = operations_research::Domain::Min(&v226);
        v48 = *(v44 + 16);
        v47 = *(v44 + 24);
        if (v48 >= v47)
        {
          v50 = *(v44 + 8);
          v51 = v48 - v50;
          v52 = 0xAAAAAAAAAAAAAAABLL * ((v48 - v50) >> 3);
          v53 = v52 + 1;
          if (v52 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          v54 = 0xAAAAAAAAAAAAAAABLL * ((v47 - v50) >> 3);
          if (2 * v54 > v53)
          {
            v53 = 2 * v54;
          }

          if (v54 >= 0x555555555555555)
          {
            v55 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v55 = v53;
          }

          if (v55)
          {
            if (v55 <= 0xAAAAAAAAAAAAAAALL)
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v56 = 24 * v52;
          *v56 = v20;
          *(v56 + 8) = v46;
          *(v56 + 16) = v7;
          v49 = 24 * v52 + 24;
          v57 = v56 - v51;
          memcpy((v56 - v51), v50, v51);
          *(v44 + 8) = v57;
          *(v44 + 16) = v49;
          *(v44 + 24) = 0;
          if (v50)
          {
            operator delete(v50);
          }
        }

        else
        {
          *v48 = v20;
          *(v48 + 8) = v46;
          v49 = v48 + 24;
          *(v48 + 16) = v7;
        }

        v8 = v43;
        *(v44 + 16) = v49;
      }

      if (v226)
      {
        operator delete(__p);
      }

      operations_research::Domain::Complement(&v215, &v230);
      operations_research::Domain::IntersectionWith(&v220, &v230, &v226);
      if (v230)
      {
        operator delete(*(&v230 + 1));
      }

      if (!operations_research::Domain::IsEmpty(&v226))
      {
        v58 = operations_research::Domain::Min(&v226);
        if (v58 == operations_research::Domain::Max(&v226))
        {
          v59 = v236;
          *&v230 = __PAIR64__(v18, v7);
          *(&v230 + 1) = operations_research::Domain::Min(&v226);
          v231 = 0;
        }
      }

      if (v226)
      {
        operator delete(__p);
        if ((v215 & 1) == 0)
        {
LABEL_71:
          if (v220)
          {
            goto LABEL_75;
          }

          goto LABEL_9;
        }
      }

      else if ((v215 & 1) == 0)
      {
        goto LABEL_71;
      }

      operator delete(v216);
      if (v220)
      {
LABEL_75:
        operator delete(v221);
      }

LABEL_9:
      ++v7;
      a2 = *this;
      if (v7 >= *(*this + 56))
      {
        v6 = v236;
        v5 = v237;
        break;
      }
    }
  }

  v226 = 0;
  __p = 0;
  v228 = &unk_23CE31C20;
  if (v5 != v6)
  {
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = this;
    while (1)
    {
      v64 = &v6[24 * v60];
      v65 = *v64;
      v66 = v64[1];
      if (*v64 != v66)
      {
        v68 = *v63 + 24;
        if (*v68)
        {
          v68 = *v68 + 8 * v60 + 7;
        }

        operations_research::Domain::FromFlatSpanOfIntervals(*(*v68 + 24), *(*v68 + 16), &v230, v67);
        if (v226)
        {
        }

        v69 = v62;
        v70 = *v64;
        v71 = v64[1];
        if (0xAAAAAAAAAAAAAAABLL * ((v71 - *v64) >> 3) >= 2)
        {
          v72 = 0;
          v73 = 1;
          v74 = 1;
          do
          {
            v83 = v70 + 24 * v72;
            v72 = v74;
            v84 = *(v83 + 8);
            v85 = v70 + 24 * v73;
            if (v84 == *(v85 + 8))
            {
              v86 = *(v83 + 4);
              if ((*(v85 + 4) ^ v86) == 0xFFFFFFFF && *(v83 + 16) && (*(v85 + 16) & 1) == 0)
              {
                v80 = 0;
                v87 = *v83;
                v88 = *v85;
                _X11 = v228;
                __asm { PRFM            #4, [X11] }

                v91 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v84) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v84));
                v81 = (v91 >> 7) ^ (v228 >> 12);
                v92 = vdup_n_s8(v91 & 0x7F);
                while (1)
                {
                  v75 = v81 & v226;
                  v76 = *(v228 + v75);
                  v77 = vceq_s8(v76, v92);
                  if (v77)
                  {
                    break;
                  }

LABEL_91:
                  v79 = vceq_s8(v76, 0x8080808080808080);
                  if (v79)
                  {
                    v78 = v229 + 24 * v82;
                    *v78 = *(v83 + 8);
                    *(v78 + 8) = 0;
                    *(v78 + 16) = 0;
                    v70 = *v64;
                    v71 = v64[1];
                    goto LABEL_94;
                  }

                  v80 += 8;
                  v81 = v80 + v75;
                }

                while (1)
                {
                  v78 = v229 + 24 * ((v75 + (__clz(__rbit64(v77)) >> 3)) & v226);
                  if (*v78 == v84)
                  {
                    break;
                  }

                  v77 &= ((v77 & 0x8080808080808080) - 1) & 0x8080808080808080;
                  if (!v77)
                  {
                    goto LABEL_91;
                  }
                }

LABEL_94:
                *(v78 + 8) = v86;
                *(v78 + 12) = v87;
                *(v78 + 16) = v88;
              }
            }

            v74 = v72 + 1;
            v73 = v72 + 1;
          }

          while (0xAAAAAAAAAAAAAAABLL * ((v71 - v70) >> 3) > v73);
        }

        v93 = __p;
        v62 = v69;
        v63 = this;
        if (operations_research::Domain::Size(&v230) == v93 >> 1)
        {
          if (__p < 2)
          {
            v97 = v69;
          }

          else
          {
            v94 = v228;
            v95 = v229;
            if (*v228 <= -2)
            {
              do
              {
                v96 = __clz(__rbit64((*v94 | ~(*v94 >> 7)) & 0x101010101010101)) >> 3;
                v94 = (v94 + v96);
                v95 += 24 * v96;
              }

              while (*v94 < -1);
            }

            v97 = v69;
            do
            {
              v98 = *(this + 1);
              *(v98 + ((*(v95 + 12) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << *(v95 + 12);
              *(v98 + ((*(v95 + 16) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << *(v95 + 16);
              *(this + 14) += 2;
              v99 = *(v95 + 8);
              v102 = v97 - v62;
              v103 = v62;
              v104 = (v97 - v62) >> 4;
              v105 = v104 + 1;
              __src = v103;
              if ((v104 + 1) >> 60)
              {
                std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
              }

              v106 = -v103;
              v107 = -v103 >> 3;
              if (v107 > v105)
              {
                v105 = v107;
              }

              if (v106 >= 0x7FFFFFFFFFFFFFF0)
              {
                v108 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v108 = v105;
              }

              if (v108)
              {
                if (!(v108 >> 60))
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v109 = 16 * v104;
              *v109 = *v95;
              *(v109 + 8) = v99;
              v97 = (16 * v104 + 16);
              memcpy(0, __src, v102);
              v62 = 0;
              v110 = *(v94 + 1);
              v94 = (v94 + 1);
              LOBYTE(v101) = v110;
              v95 += 24;
              if (v110 <= -2)
              {
                do
                {
                  v100 = __clz(__rbit64((*v94 | ~(*v94 >> 7)) & 0x101010101010101)) >> 3;
                  v94 = (v94 + v100);
                  v95 += 24 * v100;
                  v101 = *v94;
                }

                while (v101 < -1);
              }
            }

            while (v101 != 255);
          }

          v111 = 126 - 2 * __clz((v97 - v62) >> 4);
          if (v97 == v62)
          {
            v112 = 0;
          }

          else
          {
            v112 = v111;
          }

          std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<long long,int> *,false>(v62, v97, &v220, v112, 1);
          operations_research::sat::ConstraintProto::ConstraintProto(&v220, 0);
          operations_research::sat::ConstraintProto::ConstraintProto(&v215, 0);
          if (v225 == 12)
          {
            v113 = v224;
          }

          else
          {
            operations_research::sat::ConstraintProto::clear_constraint(&v220);
            v225 = 12;
            v114 = v221;
            if (v221)
            {
              v114 = *(v221 & 0xFFFFFFFFFFFFFFFELL);
            }

            v113 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v114);
            v224 = v113;
          }

          v116 = *(v113 + 16);
          v115 = *(v113 + 20);
          if (v116 == v115)
          {
            google::protobuf::RepeatedField<int>::Grow(v113 + 16, v115, (v115 + 1));
            v116 = *(v113 + 16);
          }

          v117 = *(v113 + 24);
          *(v113 + 16) = v116 + 1;
          *(v117 + 4 * v116) = v61;
          if (v225 == 12)
          {
            v118 = v224;
          }

          else
          {
            operations_research::sat::ConstraintProto::clear_constraint(&v220);
            v225 = 12;
            v119 = v221;
            if (v221)
            {
              v119 = *(v221 & 0xFFFFFFFFFFFFFFFELL);
            }

            v118 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v119);
            v224 = v118;
          }

          v121 = *(v118 + 40);
          v120 = *(v118 + 44);
          if (v121 == v120)
          {
            google::protobuf::RepeatedField<long long>::Grow(v118 + 40, v120);
            v121 = *(v118 + 40);
          }

          v208 = v61;
          __srca = v62;
          v122 = *(v118 + 48);
          *(v118 + 40) = v121 + 1;
          *(v122 + 8 * v121) = -1;
          if (v97 != v62)
          {
            v123 = 0;
            v124 = 0;
            v125 = 1;
            v126 = v62;
            while (1)
            {
              v131 = *v126;
              v132 = *(v126 + 8);
              if (v219 == 29)
              {
                v133 = v218;
                v135 = *(v218 + 4);
                v134 = *(v218 + 5);
                v136 = (v218 + 2);
                if (v135 == v134)
                {
                  goto LABEL_153;
                }
              }

              else
              {
                operations_research::sat::ConstraintProto::clear_constraint(&v215);
                v219 = 29;
                v141 = v216;
                if (v216)
                {
                  v141 = *(v216 & 0xFFFFFFFFFFFFFFFELL);
                }

                v133 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v141);
                v218 = v133;
                v135 = *(v133 + 4);
                v134 = *(v133 + 5);
                v136 = (v133 + 2);
                if (v135 == v134)
                {
LABEL_153:
                  google::protobuf::RepeatedField<int>::Grow(v136, v134, (v134 + 1));
                  v142 = *v136;
                  v143 = v133[3];
                  *(v133 + 4) = *v136 + 1;
                  *(v143 + 4 * v142) = v132;
                  v138 = v131;
                  if (v125)
                  {
                    goto LABEL_168;
                  }

LABEL_146:
                  v139 = v131 - v124;
                  if (v132 < 0)
                  {
                    if (v225 == 12)
                    {
                      v144 = v224;
                    }

                    else
                    {
                      operations_research::sat::ConstraintProto::clear_constraint(&v220);
                      v225 = 12;
                      v151 = v221;
                      if (v221)
                      {
                        v151 = *(v221 & 0xFFFFFFFFFFFFFFFELL);
                      }

                      v144 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v151);
                      v224 = v144;
                    }

                    v153 = *(v144 + 16);
                    v152 = *(v144 + 20);
                    if (v153 == v152)
                    {
                      google::protobuf::RepeatedField<int>::Grow(v144 + 16, v152, (v152 + 1));
                      v153 = *(v144 + 16);
                    }

                    v154 = *(v144 + 24);
                    *(v144 + 16) = v153 + 1;
                    *(v154 + 4 * v153) = ~v132;
                    if (v225 == 12)
                    {
                      v155 = v224;
                    }

                    else
                    {
                      operations_research::sat::ConstraintProto::clear_constraint(&v220);
                      v225 = 12;
                      v156 = v221;
                      if (v221)
                      {
                        v156 = *(v221 & 0xFFFFFFFFFFFFFFFELL);
                      }

                      v155 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v156);
                      v224 = v155;
                    }

                    v158 = *(v155 + 40);
                    v157 = *(v155 + 44);
                    if (v158 == v157)
                    {
                      google::protobuf::RepeatedField<long long>::Grow(v155 + 40, v157);
                      v158 = *(v155 + 40);
                    }

                    v159 = *(v155 + 48);
                    *(v155 + 40) = v158 + 1;
                    *(v159 + 8 * v158) = v124 - v131;
                    v138 = v139 + v123;
                    v131 = v124;
                    goto LABEL_168;
                  }

                  if (v225 == 12)
                  {
                    v140 = v224;
                  }

                  else
                  {
                    operations_research::sat::ConstraintProto::clear_constraint(&v220);
                    v225 = 12;
                    v145 = v221;
                    if (v221)
                    {
                      v145 = *(v221 & 0xFFFFFFFFFFFFFFFELL);
                    }

                    v140 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v145);
                    v224 = v140;
                  }

                  v147 = *(v140 + 16);
                  v146 = *(v140 + 20);
                  if (v147 == v146)
                  {
                    google::protobuf::RepeatedField<int>::Grow(v140 + 16, v146, (v146 + 1));
                    v147 = *(v140 + 16);
                  }

                  v148 = *(v140 + 24);
                  *(v140 + 16) = v147 + 1;
                  *(v148 + 4 * v147) = v132;
                  if (v225 == 12)
                  {
                    v127 = v224;
                    v129 = v224[10];
                    v128 = v224[11];
                    v130 = v224 + 10;
                    if (v129 == v128)
                    {
                      goto LABEL_183;
                    }
                  }

                  else
                  {
                    operations_research::sat::ConstraintProto::clear_constraint(&v220);
                    v225 = 12;
                    v149 = v221;
                    if (v221)
                    {
                      v149 = *(v221 & 0xFFFFFFFFFFFFFFFELL);
                    }

                    v127 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v149);
                    v224 = v127;
                    v129 = *(v127 + 40);
                    v128 = *(v127 + 44);
                    v130 = (v127 + 40);
                    if (v129 != v128)
                    {
                      goto LABEL_167;
                    }

LABEL_183:
                    google::protobuf::RepeatedField<long long>::Grow(v130, v128);
                    v129 = *v130;
                  }

LABEL_167:
                  v150 = *(v127 + 48);
                  *(v127 + 40) = v129 + 1;
                  *(v150 + 8 * v129) = v139;
                  v131 = v124;
                  v138 = v123;
                  goto LABEL_168;
                }
              }

              v137 = v133[3];
              *(v133 + 4) = v135 + 1;
              *(v137 + 4 * v135) = v132;
              v138 = v131;
              if ((v125 & 1) == 0)
              {
                goto LABEL_146;
              }

LABEL_168:
              v125 = 0;
              v126 += 16;
              v123 = v138;
              v124 = v131;
              if (v126 == v97)
              {
                goto LABEL_185;
              }
            }
          }

          v138 = 0;
LABEL_185:
          if (v225 == 12)
          {
            v160 = v224;
            v63 = this;
            v61 = v208;
            v62 = __srca;
          }

          else
          {
            v62 = __srca;
            operations_research::sat::ConstraintProto::clear_constraint(&v220);
            v63 = this;
            v61 = v208;
            v225 = 12;
            v161 = v221;
            if (v221)
            {
              v161 = *(v221 & 0xFFFFFFFFFFFFFFFELL);
            }

            v160 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v161);
            v224 = v160;
          }

          v163 = *(v160 + 64);
          v162 = *(v160 + 68);
          if (v163 == v162)
          {
            google::protobuf::RepeatedField<long long>::Grow(v160 + 64, v162);
            v163 = *(v160 + 64);
          }

          v164 = *(v160 + 72);
          *(v160 + 64) = v163 + 1;
          *(v164 + 8 * v163) = -v138;
          if (v225 == 12)
          {
            v165 = v224;
          }

          else
          {
            operations_research::sat::ConstraintProto::clear_constraint(&v220);
            v225 = 12;
            v166 = v221;
            if (v221)
            {
              v166 = *(v221 & 0xFFFFFFFFFFFFFFFELL);
            }

            v165 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v166);
            v224 = v165;
          }

          v168 = *(v165 + 64);
          v167 = *(v165 + 68);
          if (v168 == v167)
          {
            google::protobuf::RepeatedField<long long>::Grow(v165 + 64, v167);
            v168 = *(v165 + 64);
          }

          v169 = *(v165 + 72);
          *(v165 + 64) = v168 + 1;
          *(v169 + 8 * v168) = -v138;
          if (v225 == 12)
          {
            v170 = v224;
          }

          else
          {
            v170 = &operations_research::sat::_LinearConstraintProto_default_instance_;
          }

          absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::sat::LinearConstraintProto>,absl::lts_20240722::hash_internal::Hash<operations_research::sat::LinearConstraintProto>,std::equal_to<operations_research::sat::LinearConstraintProto>,std::allocator<operations_research::sat::LinearConstraintProto>>::find_or_prepare_insert_non_soo<operations_research::sat::LinearConstraintProto>(v239, v170, v212);
          if (v214 == 1)
          {
            operations_research::sat::LinearConstraintProto::LinearConstraintProto(v213, 0, v170);
            if (v214)
            {
              v171 = *(v63 + 5);
              if (v171 >= *(v63 + 6))
              {
                v172 = std::vector<operations_research::sat::ConstraintProto>::__emplace_back_slow_path<operations_research::sat::ConstraintProto const&>(v207, &v220);
              }

              else
              {
                operations_research::sat::ConstraintProto::ConstraintProto(*(v63 + 5), 0, &v220);
                v172 = v171 + 64;
                *(v63 + 5) = v171 + 64;
              }

              *(v63 + 5) = v172;
              ++*(v63 + 16);
            }
          }

          if (v219 == 29)
          {
            v173 = v218;
            v174 = v218[3];
          }

          else
          {
            operations_research::sat::ConstraintProto::clear_constraint(&v215);
            v219 = 29;
            v175 = v216;
            if (v216)
            {
              v175 = *(v216 & 0xFFFFFFFFFFFFFFFELL);
            }

            v173 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v175);
            v218 = v173;
            v174 = v173[3];
            if (v219 != 29)
            {
              operations_research::sat::ConstraintProto::clear_constraint(&v215);
              v219 = 29;
              v176 = v216;
              if (v216)
              {
                v176 = *(v216 & 0xFFFFFFFFFFFFFFFELL);
              }

              v173 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v176);
              v218 = v173;
            }
          }

          v177 = (v173[3] + 4 * *(v173 + 4));
          v178 = 126 - 2 * __clz(&v177[-v174] >> 2);
          if (v177 == v174)
          {
            v179 = 0;
          }

          else
          {
            v179 = v178;
          }

          std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,google::protobuf::internal::RepeatedIterator<int>,false>(v174, v177, v212, v179, 1);
          if (v219 == 29)
          {
            v180 = v218;
          }

          else
          {
            v180 = &operations_research::sat::_BoolArgumentProto_default_instance_;
          }

          absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::sat::BoolArgumentProto>,absl::lts_20240722::hash_internal::Hash<operations_research::sat::BoolArgumentProto>,std::equal_to<operations_research::sat::BoolArgumentProto>,std::allocator<operations_research::sat::BoolArgumentProto>>::find_or_prepare_insert_non_soo<operations_research::sat::BoolArgumentProto>(v240, v180, v212);
          if (v214 == 1)
          {
            operations_research::sat::BoolArgumentProto::BoolArgumentProto(v213, 0, v180);
            if (v214)
            {
              v181 = *(v63 + 5);
              if (v181 >= *(v63 + 6))
              {
                v182 = std::vector<operations_research::sat::ConstraintProto>::__emplace_back_slow_path<operations_research::sat::ConstraintProto const&>(v207, &v215);
              }

              else
              {
                operations_research::sat::ConstraintProto::ConstraintProto(*(v63 + 5), 0, &v215);
                v182 = v181 + 64;
                *(v63 + 5) = v181 + 64;
              }

              *(v63 + 5) = v182;
              ++*(v63 + 15);
            }
          }

          operations_research::sat::ConstraintProto::~ConstraintProto(&v215);
          operations_research::sat::ConstraintProto::~ConstraintProto(&v220);
        }

        if (v230)
        {
          operator delete(*(&v230 + 1));
        }

        v6 = v236;
        v5 = v237;
      }

      v60 = ++v61;
      if (0xAAAAAAAAAAAAAAABLL * ((v5 - v6) >> 3) <= v61)
      {
        goto LABEL_232;
      }
    }
  }

  v63 = this;
LABEL_232:
  if (dword_2810C07F0 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&_MergedGlobals_21, dword_2810C07F0))
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(&v220, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_model.cc", 232);
    v202 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v220, 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v202, "Linear model created:", 0x15uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v220);
    v63 = this;
  }

  if (dword_2810C0808 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C0800, dword_2810C0808))
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(&v220, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_model.cc", 233);
    v203 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v220, 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v203, "  #model constraints: ", 0x16uLL);
    LODWORD(v215) = *(*this + 56);
    absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v203, &v215);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v220);
    v63 = this;
  }

  if (dword_2810C0820 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C0818, dword_2810C0820))
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(&v220, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_model.cc", 234);
    v204 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v220, 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v204, "  #full encodings detected: ", 0x1CuLL);
    LODWORD(v215) = *(this + 16);
    absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v204, &v215);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v220);
    v63 = this;
  }

  if (dword_2810C0838 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C0830, dword_2810C0838))
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(&v220, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_model.cc", 235);
    v205 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v220, 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v205, "  #exactly_ones added: ", 0x17uLL);
    LODWORD(v215) = *(this + 15);
    absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v205, &v215);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v220);
    v63 = this;
  }

  if (dword_2810C0850 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C0848, dword_2810C0850))
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(&v220, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_model.cc", 236);
    v206 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v220, 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v206, "  #constraints ignored: ", 0x18uLL);
    LODWORD(v215) = *(this + 14);
    absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v206, &v215);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v220);
    v63 = this;
  }

  if (v226)
  {
    operator delete((v228 - (__p & 1) - 8));
  }

  if (v232)
  {
    v184 = v234;
    v183 = v235;
    if (v232 > 6)
    {
      if (v233 >= 2)
      {
        v197 = v233 >> 1;
        do
        {
          v198 = *v184 & 0x8080808080808080;
          if (v198 != 0x8080808080808080)
          {
            v199 = v198 ^ 0x8080808080808080;
            do
            {
              v200 = v183 + ((4 * __clz(__rbit64(v199))) & 0x1E0);
              v201 = *(v200 + 8);
              if (v201)
              {
                *(v200 + 16) = v201;
                operator delete(v201);
              }

              --v197;
              v199 &= v199 - 1;
            }

            while (v199);
          }

          ++v184;
          v183 += 256;
        }

        while (v197);
      }
    }

    else
    {
      v185 = *(v234 + v232) & 0x8080808080808080;
      if (v185 != 0x8080808080808080)
      {
        v186 = v235 - 32;
        v187 = v185 ^ 0x8080808080808080;
        do
        {
          v188 = v186 + ((4 * __clz(__rbit64(v187))) & 0x1E0);
          v189 = *(v188 + 8);
          if (v189)
          {
            *(v188 + 16) = v189;
            operator delete(v189);
          }

          v187 &= v187 - 1;
        }

        while (v187);
      }
    }

    operator delete((v234 - (v233 & 1) - 8));
  }

  v190 = v236;
  if (v236)
  {
    v191 = v237;
    v192 = v236;
    if (v237 != v236)
    {
      v193 = v237;
      do
      {
        v195 = *(v193 - 3);
        v193 -= 24;
        v194 = v195;
        if (v195)
        {
          *(v191 - 2) = v194;
          operator delete(v194);
        }

        v191 = v193;
      }

      while (v193 != v190);
      v192 = v236;
    }

    v237 = v190;
    operator delete(v192);
  }

  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::sat::LinearConstraintProto>,absl::lts_20240722::hash_internal::Hash<operations_research::sat::LinearConstraintProto>,std::equal_to<operations_research::sat::LinearConstraintProto>,std::allocator<operations_research::sat::LinearConstraintProto>>::~raw_hash_set(v239);
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::sat::BoolArgumentProto>,absl::lts_20240722::hash_internal::Hash<operations_research::sat::BoolArgumentProto>,std::equal_to<operations_research::sat::BoolArgumentProto>,std::allocator<operations_research::sat::BoolArgumentProto>>::~raw_hash_set(v240);
  return v63;
}

void sub_23CC39CC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, uint64_t a39, char a40, void *a41)
{
  if (v41)
  {
    operator delete(v41);
    if (!a36)
    {
      goto LABEL_6;
    }
  }

  else if (!a36)
  {
LABEL_6:
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,std::vector<long long>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,std::vector<long long>>>>::~raw_hash_set((v42 - 224));
    std::vector<std::vector<int>>::~vector[abi:ne200100]((v42 - 192));
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::sat::LinearConstraintProto>,absl::lts_20240722::hash_internal::Hash<operations_research::sat::LinearConstraintProto>,std::equal_to<operations_research::sat::LinearConstraintProto>,std::allocator<operations_research::sat::LinearConstraintProto>>::~raw_hash_set((v42 - 168));
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::sat::BoolArgumentProto>,absl::lts_20240722::hash_internal::Hash<operations_research::sat::BoolArgumentProto>,std::equal_to<operations_research::sat::BoolArgumentProto>,std::allocator<operations_research::sat::BoolArgumentProto>>::~raw_hash_set((v42 - 136));
    std::vector<operations_research::sat::ConstraintProto>::~vector[abi:ne200100](a11);
    if (*a10)
    {
      operator delete(*a10);
    }

    _Unwind_Resume(a1);
  }

  operator delete((a38 - (__p & 1) - 8));
  goto LABEL_6;
}

void std::vector<operations_research::sat::anonymous namespace::EqualityDetectionHelper>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
    v6 = v4 + 24;
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = v4 - *a1;
  v9 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3) + 1;
  if (v9 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v7) >> 3);
  if (2 * v10 > v9)
  {
    v9 = 2 * v10;
  }

  if (v10 >= 0x555555555555555)
  {
    v11 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (v11 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v12 = 8 * (v8 >> 3);
  *v12 = *a2;
  *(v12 + 16) = *(a2 + 2);
  v6 = v12 + 24;
  v13 = v12 - v8;
  memcpy((v12 - v8), v7, v8);
  *a1 = v13;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

unint64_t *absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::sat::LinearConstraintProto>,absl::lts_20240722::hash_internal::Hash<operations_research::sat::LinearConstraintProto>,std::equal_to<operations_research::sat::LinearConstraintProto>,std::allocator<operations_research::sat::LinearConstraintProto>>::~raw_hash_set(unint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v4 = a1[2];
    v3 = a1[3];
    if (v2 > 6)
    {
      v8 = a1[1];
      if (v8 >= 2)
      {
        v10 = v8 >> 1;
        do
        {
          v11 = *v4 & 0x8080808080808080;
          if (v11 != 0x8080808080808080)
          {
            v12 = v11 ^ 0x8080808080808080;
            do
            {
              operations_research::sat::LinearConstraintProto::~LinearConstraintProto((v3 + 88 * (__clz(__rbit64(v12)) >> 3)));
              --v10;
              v12 &= v12 - 1;
            }

            while (v12);
          }

          ++v4;
          v3 += 704;
        }

        while (v10);
      }
    }

    else
    {
      v5 = *(v4 + v2) & 0x8080808080808080;
      if (v5 != 0x8080808080808080)
      {
        v6 = v3 - 88;
        v7 = v5 ^ 0x8080808080808080;
        do
        {
          operations_research::sat::LinearConstraintProto::~LinearConstraintProto((v6 + 88 * (__clz(__rbit64(v7)) >> 3)));
          v7 &= v7 - 1;
        }

        while (v7);
      }
    }

    operator delete((a1[2] - (a1[1] & 1) - 8));
  }

  return a1;
}

unint64_t *absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::sat::BoolArgumentProto>,absl::lts_20240722::hash_internal::Hash<operations_research::sat::BoolArgumentProto>,std::equal_to<operations_research::sat::BoolArgumentProto>,std::allocator<operations_research::sat::BoolArgumentProto>>::~raw_hash_set(unint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v4 = a1[2];
    v3 = a1[3];
    if (v2 > 6)
    {
      v8 = a1[1];
      if (v8 >= 2)
      {
        v10 = v8 >> 1;
        do
        {
          v11 = *v4 & 0x8080808080808080;
          if (v11 != 0x8080808080808080)
          {
            v12 = v11 ^ 0x8080808080808080;
            do
            {
              operations_research::sat::BoolArgumentProto::~BoolArgumentProto((v3 + 40 * (__clz(__rbit64(v12)) >> 3)));
              --v10;
              v12 &= v12 - 1;
            }

            while (v12);
          }

          ++v4;
          v3 += 320;
        }

        while (v10);
      }
    }

    else
    {
      v5 = *(v4 + v2) & 0x8080808080808080;
      if (v5 != 0x8080808080808080)
      {
        v6 = v3 - 40;
        v7 = v5 ^ 0x8080808080808080;
        do
        {
          operations_research::sat::BoolArgumentProto::~BoolArgumentProto((v6 + 40 * (__clz(__rbit64(v7)) >> 3)));
          v7 &= v7 - 1;
        }

        while (v7);
      }
    }

    operator delete((a1[2] - (a1[1] & 1) - 8));
  }

  return a1;
}

unint64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::sat::BoolArgumentProto>,absl::lts_20240722::hash_internal::Hash<operations_research::sat::BoolArgumentProto>,std::equal_to<operations_research::sat::BoolArgumentProto>,std::allocator<operations_research::sat::BoolArgumentProto>>::find_or_prepare_insert_non_soo<operations_research::sat::BoolArgumentProto>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  _X26 = a1[2];
  __asm { PRFM            #4, [X26] }

  v10 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed;
  v11 = *(a2 + 24);
  v12 = *(a2 + 16);
  v13 = *(a2 + 16);
  v14 = 4 * v12;
  if (v12)
  {
    v15 = 4 * v12;
    v16 = *(a2 + 24);
    do
    {
      v17 = *v16++;
      v10 = (((v10 + v17) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v10 + v17));
      v15 -= 4;
    }

    while (v15);
  }

  v18 = 0;
  v19 = *a1;
  v20 = vdup_n_s8(v10 & 0x7F);
  v21 = ((v10 >> 7) ^ (_X26 >> 12)) & *a1;
  v22 = *(_X26 + v21);
  for (i = vceq_s8(v22, v20); !i; i = vceq_s8(v22, v20))
  {
LABEL_13:
    v34 = vceq_s8(v22, 0x8080808080808080);
    if (v34)
    {
      v37 = a1;
      result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(a1, v10, (v21 + (__clz(__rbit64(v34)) >> 3)) & v19, v18, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::sat::BoolArgumentProto>,absl::lts_20240722::hash_internal::Hash<operations_research::sat::BoolArgumentProto>,std::equal_to<operations_research::sat::BoolArgumentProto>,std::allocator<operations_research::sat::BoolArgumentProto>>::GetPolicyFunctions(void)::value);
      v36 = v37[2] + result;
      v25 = v37[3] + 40 * result;
      v35 = 1;
      goto LABEL_18;
    }

    v18 += 8;
    v21 = (v18 + v21) & v19;
    v22 = *(_X26 + v21);
  }

  v24 = a1[3];
  v43 = a3;
  v40 = v18;
  v41 = a1;
  v38 = v24;
  v39 = v19;
  while (1)
  {
    v42 = (v21 + (__clz(__rbit64(i)) >> 3)) & v19;
    v25 = v24 + 40 * v42;
    if (*(v25 + 16) != v13)
    {
      goto LABEL_12;
    }

    v26 = *(v25 + 24);
    v27 = v14;
    result = memcmp(v26, v11, v14);
    v14 = v27;
    if (result)
    {
      goto LABEL_12;
    }

    v29 = v11;
    v30 = v12;
    if (v12 < 1)
    {
      break;
    }

    while (1)
    {
      v32 = *v26++;
      v31 = v32;
      v33 = *v29++;
      if (v31 != v33)
      {
        break;
      }

      if (!--v30)
      {
        goto LABEL_16;
      }
    }

LABEL_12:
    i &= ((i & 0x8080808080808080) - 1) & 0x8080808080808080;
    a3 = v43;
    v18 = v40;
    a1 = v41;
    v24 = v38;
    v19 = v39;
    if (!i)
    {
      goto LABEL_13;
    }
  }

LABEL_16:
  v35 = 0;
  a3 = v43;
  v36 = _X26 + v42;
LABEL_18:
  *a3 = v36;
  *(a3 + 8) = v25;
  *(a3 + 16) = v35;
  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::sat::BoolArgumentProto>,absl::lts_20240722::hash_internal::Hash<operations_research::sat::BoolArgumentProto>,std::equal_to<operations_research::sat::BoolArgumentProto>,std::allocator<operations_research::sat::BoolArgumentProto>>::resize_impl(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8) & 1;
  v5 = 0;
  v2 = *(a1 + 16);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,40ul,false,false,8ul>(&v2, a1);
}

void absl::lts_20240722::container_internal::common_policy_traits<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::sat::BoolArgumentProto>,void>::transfer_impl<std::allocator<operations_research::sat::BoolArgumentProto>>(uint64_t a1, void *a2, const operations_research::sat::BoolArgumentProto *a3)
{
  operations_research::sat::BoolArgumentProto::BoolArgumentProto(a2, 0);
  if (v4 != a3)
  {
    v5 = *(v4 + 1);
    if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
      v6 = *(a3 + 1);
      if ((v6 & 1) == 0)
      {
LABEL_4:
        if (v5 != v6)
        {
LABEL_5:
          operations_research::sat::BoolArgumentProto::CopyFrom(v4, a3);
          goto LABEL_9;
        }

        goto LABEL_8;
      }
    }

    else
    {
      v6 = *(a3 + 1);
      if ((v6 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    if (v5 != *(v6 & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_5;
    }

LABEL_8:
    operations_research::sat::BoolArgumentProto::InternalSwap(v4, a3);
  }

LABEL_9:

  operations_research::sat::BoolArgumentProto::~BoolArgumentProto(a3);
}

_UNKNOWN **absl::lts_20240722::container_internal::TypeErasedApplyToSlotFn<absl::lts_20240722::hash_internal::Hash<operations_research::sat::BoolArgumentProto>,operations_research::sat::BoolArgumentProto>(uint64_t a1, uint64_t a2)
{
  result = &absl::lts_20240722::hash_internal::MixingHashState::kSeed;
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = *(a2 + 24);
    v5 = 4 * v3;
    do
    {
      v6 = *v4++;
      result = ((((result + v6) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (result + v6)));
      v5 -= 4;
    }

    while (v5);
  }

  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,std::vector<operations_research::sat::anonymous namespace::VarValueCtIndex>>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::anonymous namespace::VarValueCtIndex>>>>::resize_impl(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8) & 1;
  v5 = 0;
  v2 = *(a1 + 16);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,32ul,false,false,8ul>(&v2, a1);
}

__n128 absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,std::vector<operations_research::sat::anonymous namespace::VarValueCtIndex>>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,std::vector<operations_research::sat::anonymous namespace::VarValueCtIndex>>>>::transfer_slot_fn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  result = *(a3 + 8);
  *(a2 + 8) = result;
  *(a2 + 24) = *(a3 + 24);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  return result;
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::anonymous namespace::EqualityDetectionHelper *,false>(unint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
LABEL_1:
  v8 = (a2 - 24);
  v186 = (a2 - 16);
  v9 = a1;
  while (1)
  {
    a1 = v9;
    v10 = a2 - v9;
    v11 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v9) >> 3);
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
        v74 = *(a2 - 20);
        if (~v74 > v74)
        {
          v74 = ~v74;
        }

        v75 = *(v9 + 4);
        if (~v75 > v75)
        {
          v75 = ~v75;
        }

        v76 = v74 < v75;
        if (v74 == v75 && (v77 = *(a2 - 16), v78 = *(v9 + 8), v76 = v77 < v78, v77 == v78))
        {
          if (*(a2 - 8) != 1 || (*(v9 + 16) & 1) != 0)
          {
            return;
          }
        }

        else if (!v76)
        {
          return;
        }

        v201 = *(v9 + 16);
        v195 = *v9;
        v135 = *v8;
        *(v9 + 16) = *(a2 - 8);
        *v9 = v135;
        *(a2 - 8) = v201;
        *v8 = v195;
        return;
      }
    }

    if (v10 <= 575)
    {
      break;
    }

    if (!a3)
    {
      if (v9 == a2)
      {
        return;
      }

      v100 = (v11 - 2) >> 1;
      v101 = v100;
LABEL_270:
      v103 = v101;
      v104 = 3 * v101;
      v105 = 0xAAAAAAAAAAAAAAABLL * ((24 * v101) >> 3);
      if (v100 < v105)
      {
        goto LABEL_269;
      }

      v106 = 2 * v105;
      v107 = (2 * v105) | 1;
      v102 = v9 + 24 * v107;
      v108 = v106 + 2;
      if (v108 >= v11)
      {
        goto LABEL_284;
      }

      v109 = *(v102 + 4);
      if (~v109 > v109)
      {
        v109 = ~v109;
      }

      v110 = *(v102 + 28);
      if (~v110 > v110)
      {
        v110 = ~v110;
      }

      v111 = v109 < v110;
      if (v109 == v110 && (v112 = *(v102 + 8), v113 = *(v102 + 32), v111 = v112 < v113, v112 == v113))
      {
        if (*(v102 + 16) != 1 || (*(v102 + 40) & 1) != 0)
        {
LABEL_284:
          v114 = v9 + 8 * v104;
          v115 = *(v102 + 4);
          if (~v115 <= v115)
          {
            v116 = *(v102 + 4);
          }

          else
          {
            v116 = ~v115;
          }

          v117 = *(v114 + 4);
          if (~v117 <= v117)
          {
            v118 = *(v114 + 4);
          }

          else
          {
            v118 = ~v117;
          }

          if (v116 == v118)
          {
            v119 = *(v102 + 8);
            v120 = *(v114 + 8);
            v121 = v119 < v120;
            if (v119 == v120)
            {
              if (*(v102 + 16) == 1 && (*(v114 + 16) & 1) == 0)
              {
                goto LABEL_269;
              }
            }

            else
            {
              v119 = *(v114 + 8);
              if (v121)
              {
                goto LABEL_269;
              }
            }
          }

          else
          {
            if (v116 < v118)
            {
              goto LABEL_269;
            }

            v119 = *(v114 + 8);
          }

          v122 = *v114;
          v123 = *(v114 + 16);
          *&v194[3] = *(v114 + 20);
          *v194 = *(v114 + 17);
          while (1)
          {
            v124 = *v102;
            *(v114 + 16) = *(v102 + 16);
            *v114 = v124;
            if (v100 < v107)
            {
              goto LABEL_268;
            }

            v114 = v102;
            v125 = 2 * v107;
            v107 = (2 * v107) | 1;
            v102 = v9 + 24 * v107;
            v126 = v125 + 2;
            if (v126 >= v11)
            {
              goto LABEL_314;
            }

            v127 = *(v102 + 4);
            if (~v127 > v127)
            {
              v127 = ~v127;
            }

            v128 = *(v102 + 28);
            if (~v128 > v128)
            {
              v128 = ~v128;
            }

            v129 = v127 < v128;
            if (v127 == v128 && (v130 = *(v102 + 8), v131 = *(v102 + 32), v129 = v130 < v131, v130 == v131))
            {
              if (*(v102 + 16) != 1 || (*(v102 + 40) & 1) != 0)
              {
                goto LABEL_314;
              }
            }

            else if (!v129)
            {
              goto LABEL_314;
            }

            v102 += 24;
            v107 = v126;
LABEL_314:
            v132 = *(v102 + 4);
            if (~v132 > v132)
            {
              v132 = ~v132;
            }

            v133 = v132 < v118;
            if (v132 == v118 && (v134 = *(v102 + 8), v133 = v134 < v119, v134 == v119))
            {
              if (*(v102 + 16) == 1 && (v123 & 1) == 0)
              {
LABEL_267:
                v102 = v114;
LABEL_268:
                *v102 = v122;
                *(v102 + 4) = v117;
                *(v102 + 8) = v119;
                *(v102 + 16) = v123;
                *(v102 + 17) = *v194;
                *(v102 + 20) = *&v194[3];
LABEL_269:
                v101 = v103 - 1;
                if (v103)
                {
                  goto LABEL_270;
                }

                v136 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 3);
                while (2)
                {
                  v137 = 0;
                  v202 = *(v9 + 16);
                  v196 = *v9;
                  v138 = v9;
LABEL_330:
                  v140 = v138;
                  v141 = v138 + 24 * v137;
                  v138 = v141 + 24;
                  v142 = 2 * v137;
                  v137 = (2 * v137) | 1;
                  v143 = v142 + 2;
                  if (v143 < v136)
                  {
                    v144 = *(v141 + 28);
                    if (~v144 > v144)
                    {
                      v144 = ~v144;
                    }

                    v145 = *(v141 + 52);
                    if (~v145 > v145)
                    {
                      v145 = ~v145;
                    }

                    v146 = v144 < v145;
                    if (v144 == v145 && (v147 = *(v141 + 32), v148 = *(v141 + 56), v146 = v147 < v148, v147 == v148))
                    {
                      if (*(v141 + 40) != 1 || (*(v141 + 64) & 1) != 0)
                      {
                        goto LABEL_329;
                      }
                    }

                    else if (!v146)
                    {
                      goto LABEL_329;
                    }

                    v138 = v141 + 48;
                    v137 = v143;
                  }

LABEL_329:
                  v139 = *v138;
                  v140[1].n128_u64[0] = *(v138 + 16);
                  *v140 = v139;
                  if (v137 > ((v136 - 2) >> 1))
                  {
                    a2 -= 24;
                    if (v138 == a2)
                    {
                      *(v138 + 16) = v202;
                      *v138 = v196;
                      goto LABEL_326;
                    }

                    v149 = *a2;
                    *(v138 + 16) = *(a2 + 16);
                    *v138 = v149;
                    *(a2 + 16) = v202;
                    *a2 = v196;
                    v150 = v138 - v9 + 24;
                    if (v150 >= 25)
                    {
                      v151 = 0xAAAAAAAAAAAAAAABLL * (v150 >> 3) - 2;
                      v152 = v151 >> 1;
                      v153 = v9 + 24 * (v151 >> 1);
                      v154 = *(v153 + 4);
                      if (~v154 <= v154)
                      {
                        v155 = *(v153 + 4);
                      }

                      else
                      {
                        v155 = ~v154;
                      }

                      v156 = *(v138 + 4);
                      if (~v156 <= v156)
                      {
                        v157 = *(v138 + 4);
                      }

                      else
                      {
                        v157 = ~v156;
                      }

                      if (v155 == v157)
                      {
                        v158 = *(v153 + 8);
                        v159 = *(v138 + 8);
                        v160 = v158 < v159;
                        if (v158 == v159)
                        {
                          if (*(v153 + 16) != 1 || (*(v138 + 16) & 1) != 0)
                          {
                            goto LABEL_326;
                          }
                        }

                        else
                        {
                          v158 = *(v138 + 8);
                          if (!v160)
                          {
                            goto LABEL_326;
                          }
                        }
                      }

                      else
                      {
                        if (v155 >= v157)
                        {
                          goto LABEL_326;
                        }

                        v158 = *(v138 + 8);
                      }

                      v161 = *v138;
                      v162 = *(v138 + 16);
                      *&v189[3] = *(v138 + 20);
                      *v189 = *(v138 + 17);
                      v163 = *v153;
                      *(v138 + 16) = *(v153 + 16);
                      *v138 = v163;
                      if (v151 >= 2)
                      {
                        if ((v162 & 1) == 0)
                        {
                          v164 = v9 + 24 * (v151 >> 1);
                          while (1)
                          {
                            v153 = v164;
                            v166 = v152 - 1;
                            v152 = (v152 - 1) >> 1;
                            v164 = v9 + 24 * v152;
                            v167 = *(v164 + 4);
                            if (~v167 > v167)
                            {
                              v167 = ~v167;
                            }

                            v168 = v167 < v157;
                            if (v167 == v157 && (v169 = *(v164 + 8), v168 = v169 < v158, v169 == v158))
                            {
                              if ((*(v164 + 16) & 1) == 0)
                              {
                                goto LABEL_361;
                              }
                            }

                            else if (!v168)
                            {
                              goto LABEL_361;
                            }

                            v165 = *v164;
                            *(v153 + 16) = *(v164 + 16);
                            *v153 = v165;
                            if (v166 <= 1)
                            {
                              goto LABEL_362;
                            }
                          }
                        }

                        while (1)
                        {
                          v171 = v152 - 1;
                          v152 = (v152 - 1) >> 1;
                          v164 = v9 + 24 * v152;
                          v172 = *(v164 + 4);
                          if (~v172 > v172)
                          {
                            v172 = ~v172;
                          }

                          if (v172 == v157)
                          {
                            if (*(v164 + 8) >= v158)
                            {
                              break;
                            }
                          }

                          else if (v172 >= v157)
                          {
                            break;
                          }

                          v170 = *v164;
                          *(v153 + 16) = *(v164 + 16);
                          *v153 = v170;
                          v153 = v9 + 24 * v152;
                          if (v171 < 2)
                          {
                            goto LABEL_362;
                          }
                        }
                      }

LABEL_361:
                      v164 = v153;
LABEL_362:
                      *v164 = v161;
                      *(v164 + 4) = v156;
                      *(v164 + 8) = v158;
                      *(v164 + 16) = v162;
                      *(v164 + 17) = *v189;
                      *(v164 + 20) = *&v189[3];
                    }

LABEL_326:
                    v28 = v136-- <= 2;
                    if (v28)
                    {
                      return;
                    }

                    continue;
                  }

                  goto LABEL_330;
                }
              }
            }

            else if (v133)
            {
              goto LABEL_267;
            }
          }
        }
      }

      else if (!v111)
      {
        goto LABEL_284;
      }

      v102 += 24;
      v107 = v108;
      goto LABEL_284;
    }

    v12 = v11 >> 1;
    v13 = (v9 + 24 * (v11 >> 1));
    if (v10 < 0xC01)
    {
      --a3;
      if (a4)
      {
LABEL_25:
        v19 = *(a1 + 4);
        if (~v19 <= v19)
        {
          v20 = *(a1 + 4);
        }

        else
        {
          v20 = ~v19;
        }

        goto LABEL_32;
      }
    }

    else
    {
      v14 = 24 * v12;
      v15 = (24 * v12 + a1 - 24);
      v198 = *(a1 + 16);
      v190 = *a1;
      v16 = v13[1].n128_u64[0];
      *a1 = *v13;
      *(a1 + 16) = v16;
      v13[1].n128_u64[0] = v198;
      *v13 = v190;
      --a3;
      if (a4)
      {
        goto LABEL_25;
      }
    }

    v17 = *(a1 - 20);
    if (~v17 <= v17)
    {
      v18 = *(a1 - 20);
    }

    else
    {
      v18 = ~v17;
    }

    v19 = *(a1 + 4);
    if (~v19 <= v19)
    {
      v20 = *(a1 + 4);
    }

    else
    {
      v20 = ~v19;
    }

    if (v18 != v20)
    {
      if (v18 >= v20)
      {
        v21 = *(a1 + 8);
        goto LABEL_115;
      }

      goto LABEL_32;
    }

    v21 = *(a1 - 16);
    v22 = *(a1 + 8);
    if (v21 != v22)
    {
      if (v21 >= v22)
      {
        v21 = *(a1 + 8);
        goto LABEL_115;
      }

      goto LABEL_32;
    }

    if (*(a1 - 8) == 1 && (*(a1 + 16) & 1) == 0)
    {
LABEL_32:
      v23 = *a1;
      v24 = *(a1 + 8);
      v25 = *(a1 + 16);
      *v187 = *(a1 + 17);
      *&v187[3] = *(a1 + 20);
      v26 = a1 + 24;
      if ((v25 & 1) == 0)
      {
        while (1)
        {
          v27 = *(v26 + 4);
          if (~v27 > v27)
          {
            v27 = ~v27;
          }

          v28 = v27 < v20;
          if (v27 == v20 && (v29 = *(v26 + 8), v28 = v29 < v24, v29 == v24))
          {
            if ((*(v26 + 16) & 1) == 0)
            {
              goto LABEL_49;
            }
          }

          else if (!v28)
          {
            goto LABEL_49;
          }

          v26 += 24;
        }
      }

      while (1)
      {
        v30 = *(v26 + 4);
        if (~v30 > v30)
        {
          v30 = ~v30;
        }

        if (v30 != v20)
        {
          break;
        }

        if (*(v26 + 8) >= v24)
        {
          goto LABEL_49;
        }

LABEL_44:
        v26 += 24;
      }

      if (v30 < v20)
      {
        goto LABEL_44;
      }

LABEL_49:
      if (v26 - 24 != a1)
      {
        i = a2 - 24;
        if (v25)
        {
          for (i = a2 - 24; ; i -= 24)
          {
            v35 = *(i + 4);
            if (~v35 > v35)
            {
              v35 = ~v35;
            }

            if (v35 == v20)
            {
              if (*(i + 8) < v24)
              {
                goto LABEL_82;
              }
            }

            else if (v35 < v20)
            {
              goto LABEL_82;
            }
          }
        }

        while (1)
        {
          v32 = *(i + 4);
          if (~v32 > v32)
          {
            v32 = ~v32;
          }

          v33 = v32 < v20;
          if (v32 == v20 && (v34 = *(i + 8), v33 = v34 < v24, v34 == v24))
          {
            if (*(i + 16))
            {
              goto LABEL_82;
            }
          }

          else if (v33)
          {
            goto LABEL_82;
          }

          i -= 24;
        }
      }

      i = a2;
      if (v26 < a2)
      {
        for (i = a2 - 24; ; i -= 24)
        {
          v36 = *(i + 4);
          if (~v36 > v36)
          {
            v36 = ~v36;
          }

          if (v36 == v20)
          {
            v37 = *(i + 8);
            if (v37 == v24)
            {
              if (v26 >= i || ((v25 | *(i + 16) ^ 1) & 1) == 0)
              {
                break;
              }
            }

            else if (v26 >= i || v37 < v24)
            {
              break;
            }
          }

          else if (v26 >= i || v36 < v20)
          {
            break;
          }
        }
      }

LABEL_82:
      v9 = v26;
      if (v26 < i)
      {
        v9 = v26;
        v38 = i;
        do
        {
          v199 = *(v9 + 16);
          v191 = *v9;
          v39 = *v38;
          *(v9 + 16) = v38[1].n128_u64[0];
          *v9 = v39;
          v38[1].n128_u64[0] = v199;
          *v38 = v191;
          if (v25)
          {
            do
            {
              while (1)
              {
                v9 += 24;
                v43 = *(v9 + 4);
                if (~v43 > v43)
                {
                  v43 = ~v43;
                }

                if (v43 != v20)
                {
                  break;
                }

                if (*(v9 + 8) >= v24)
                {
                  goto LABEL_102;
                }
              }
            }

            while (v43 < v20);
          }

          else
          {
            do
            {
              while (1)
              {
                v9 += 24;
                v40 = *(v9 + 4);
                if (~v40 > v40)
                {
                  v40 = ~v40;
                }

                v41 = v40 < v20;
                if (v40 == v20)
                {
                  v42 = *(v9 + 8);
                  v41 = v42 < v24;
                  if (v42 == v24)
                  {
                    break;
                  }
                }

                if (!v41)
                {
                  goto LABEL_102;
                }
              }
            }

            while ((*(v9 + 16) & 1) != 0);
          }

          do
          {
            while (1)
            {
LABEL_102:
              v38 = (v38 - 24);
              v44 = v38->n128_i32[1];
              if (~v44 > v44)
              {
                v44 = ~v44;
              }

              v45 = v44 < v20;
              if (v44 == v20)
              {
                v46 = v38->n128_i64[1];
                v45 = v46 < v24;
                if (v46 == v24)
                {
                  break;
                }
              }

              if (v45)
              {
                goto LABEL_84;
              }
            }
          }

          while ((v25 & 1) != 0 || (v38[1].n128_u8[0] & 1) == 0);
LABEL_84:
          ;
        }

        while (v9 < v38);
      }

      if (v9 - 24 != a1)
      {
        v47 = *(v9 - 24);
        *(a1 + 16) = *(v9 - 8);
        *a1 = v47;
      }

      *(v9 - 24) = v23;
      *(v9 - 20) = v19;
      *(v9 - 16) = v24;
      *(v9 - 8) = v25;
      *(v9 - 7) = *v187;
      *(v9 - 4) = *&v187[3];
      if (v26 < i)
      {
LABEL_114:
        a4 = 0;
      }

      else
      {
        {
          a2 = v9 - 24;
          if (v48)
          {
            return;
          }

          goto LABEL_1;
        }

        if ((v48 & 1) == 0)
        {
          goto LABEL_114;
        }
      }
    }

    else
    {
LABEL_115:
      v49 = *a1;
      v50 = *(a1 + 16);
      *v188 = *(a1 + 17);
      *&v188[3] = *(a1 + 20);
      v51 = *(a2 - 20);
      if (~v51 <= v51)
      {
        v52 = *(a2 - 20);
      }

      else
      {
        v52 = ~v51;
      }

      v53 = v20 < v52;
      if (v20 == v52 && (v53 = v21 < *v186, v21 == *v186))
      {
        if ((v50 & 1) != 0 && (*(a2 - 8) & 1) == 0)
        {
LABEL_122:
          v9 = a1 + 24;
          if ((v50 & 1) == 0)
          {
            while (1)
            {
              v57 = *(v9 + 4);
              if (~v57 > v57)
              {
                v57 = ~v57;
              }

              if (v20 == v57)
              {
                if (v21 < *(v9 + 8))
                {
                  goto LABEL_157;
                }
              }

              else if (v20 < v57)
              {
                goto LABEL_157;
              }

              v9 += 24;
            }
          }

          while (1)
          {
            v54 = *(v9 + 4);
            if (~v54 > v54)
            {
              v54 = ~v54;
            }

            v55 = v20 < v54;
            if (v20 == v54 && (v56 = *(v9 + 8), v55 = v21 < v56, v21 == v56))
            {
              if ((*(v9 + 16) & 1) == 0)
              {
                goto LABEL_157;
              }
            }

            else if (v55)
            {
              goto LABEL_157;
            }

            v9 += 24;
          }
        }
      }

      else if (v53)
      {
        goto LABEL_122;
      }

      v9 = a1 + 24;
      if (a1 + 24 < a2)
      {
        if ((v50 & 1) == 0)
        {
          while (1)
          {
            v61 = *(v9 + 4);
            if (~v61 > v61)
            {
              v61 = ~v61;
            }

            if (v20 == v61)
            {
              if (v21 < *(v9 + 8))
              {
                goto LABEL_157;
              }
            }

            else if (v20 < v61)
            {
              goto LABEL_157;
            }

            v9 += 24;
            if (v9 >= a2)
            {
              goto LABEL_157;
            }
          }
        }

        do
        {
          v58 = *(v9 + 4);
          if (~v58 > v58)
          {
            v58 = ~v58;
          }

          v59 = v20 < v58;
          if (v20 == v58 && (v60 = *(v9 + 8), v59 = v21 < v60, v21 == v60))
          {
            if ((*(v9 + 16) & 1) == 0)
            {
              break;
            }
          }

          else if (v59)
          {
            break;
          }

          v9 += 24;
        }

        while (v9 < a2);
      }

LABEL_157:
      v62 = a2;
      if (v9 >= a2)
      {
        goto LABEL_168;
      }

      for (j = a2 - 16; ; j -= 24)
      {
        if (~v51 > v51)
        {
          v51 = ~v51;
        }

        v64 = v20 < v51;
        if (v20 == v51)
        {
          v64 = v21 < *j;
          if (v21 == *j)
          {
            break;
          }
        }

        if (!v64)
        {
          goto LABEL_167;
        }

LABEL_161:
        v51 = *(j - 28);
      }

      if (((v50 ^ 1 | *(j + 8)) & 1) == 0)
      {
        goto LABEL_161;
      }

LABEL_167:
      v62 = j - 8;
LABEL_168:
      if (v9 < v62)
      {
LABEL_171:
        v200 = *(v9 + 16);
        v192 = *v9;
        v65 = *v62;
        *(v9 + 16) = *(v62 + 16);
        *v9 = v65;
        v9 += 24;
        *(v62 + 16) = v200;
        *v62 = v192;
        if (v50)
        {
          while (1)
          {
            v66 = *(v9 + 4);
            if (~v66 > v66)
            {
              v66 = ~v66;
            }

            v67 = v20 < v66;
            if (v20 == v66 && (v68 = *(v9 + 8), v67 = v21 < v68, v21 == v68))
            {
              if ((*(v9 + 16) & 1) == 0)
              {
                goto LABEL_190;
              }
            }

            else if (v67)
            {
              goto LABEL_190;
            }

            v9 += 24;
          }
        }

        while (1)
        {
          v69 = *(v9 + 4);
          if (~v69 > v69)
          {
            v69 = ~v69;
          }

          if (v20 == v69)
          {
            if (v21 < *(v9 + 8))
            {
              goto LABEL_190;
            }
          }

          else if (v20 < v69)
          {
            do
            {
              while (1)
              {
LABEL_190:
                v62 -= 24;
                v70 = *(v62 + 4);
                if (~v70 > v70)
                {
                  v70 = ~v70;
                }

                v71 = v20 < v70;
                if (v20 == v70)
                {
                  v72 = *(v62 + 8);
                  v71 = v21 < v72;
                  if (v21 == v72)
                  {
                    break;
                  }
                }

                if (!v71)
                {
                  goto LABEL_170;
                }
              }
            }

            while (((v50 ^ 1 | *(v62 + 16)) & 1) == 0);
LABEL_170:
            if (v9 >= v62)
            {
              break;
            }

            goto LABEL_171;
          }

          v9 += 24;
        }
      }

      if (v9 - 24 != a1)
      {
        v73 = *(v9 - 24);
        *(a1 + 16) = *(v9 - 8);
        *a1 = v73;
      }

      a4 = 0;
      *(v9 - 24) = v49;
      *(v9 - 20) = v19;
      *(v9 - 16) = v21;
      *(v9 - 8) = v50;
      *(v9 - 7) = *v188;
      *(v9 - 4) = *&v188[3];
    }
  }

  v79 = v9 + 24;
  v81 = v9 == a2 || v79 == a2;
  if ((a4 & 1) == 0)
  {
    if (v81)
    {
      return;
    }

    while (1)
    {
      v173 = a1;
      a1 = v79;
      v174 = *(v173 + 28);
      if (~v174 <= v174)
      {
        v175 = *(v173 + 28);
      }

      else
      {
        v175 = ~v174;
      }

      v176 = *(v173 + 4);
      if (~v176 > v176)
      {
        v176 = ~v176;
      }

      if (v175 == v176)
      {
        v177 = *(v173 + 32);
        v178 = *(v173 + 8);
        if (v177 == v178)
        {
          if (*(v173 + 40) != 1 || (*(v173 + 16) & 1) != 0)
          {
            goto LABEL_384;
          }
        }

        else if (v177 >= v178)
        {
          goto LABEL_384;
        }
      }

      else
      {
        if (v175 >= v176)
        {
          goto LABEL_384;
        }

        v177 = *(v173 + 32);
      }

      v179 = *a1;
      v180 = *(v173 + 40);
      *&v197[3] = *(v173 + 44);
      *v197 = *(v173 + 41);
      if (v180)
      {
        do
        {
          while (1)
          {
            v181 = v173;
            *(v173 + 24) = *v173;
            *(v173 + 40) = *(v173 + 16);
            v173 -= 24;
            v182 = *(v181 - 20);
            if (~v182 > v182)
            {
              v182 = ~v182;
            }

            v183 = v175 < v182;
            if (v175 == v182)
            {
              v184 = *(v181 - 16);
              v183 = v177 < v184;
              if (v177 == v184)
              {
                break;
              }
            }

            if (!v183)
            {
              goto LABEL_383;
            }
          }
        }

        while ((*(v181 - 8) & 1) == 0);
      }

      else
      {
        do
        {
          while (1)
          {
            v181 = v173;
            *(v173 + 24) = *v173;
            *(v173 + 40) = *(v173 + 16);
            v173 -= 24;
            v185 = *(v181 - 20);
            if (~v185 > v185)
            {
              v185 = ~v185;
            }

            if (v175 == v185)
            {
              break;
            }

            if (v175 >= v185)
            {
              goto LABEL_383;
            }
          }
        }

        while (v177 < *(v181 - 16));
      }

LABEL_383:
      *v181 = v179;
      *(v181 + 4) = v174;
      *(v181 + 8) = v177;
      *(v181 + 16) = v180;
      *(v181 + 17) = *v197;
      *(v181 + 20) = *&v197[3];
LABEL_384:
      v79 = a1 + 24;
      if (a1 + 24 == a2)
      {
        return;
      }
    }
  }

  if (v81)
  {
    return;
  }

  v82 = 0;
  v83 = v9;
  while (2)
  {
    v85 = v83;
    v83 = v79;
    v86 = *(v85 + 28);
    if (~v86 <= v86)
    {
      v87 = *(v85 + 28);
    }

    else
    {
      v87 = ~v86;
    }

    v88 = *(v85 + 4);
    if (~v88 > v88)
    {
      v88 = ~v88;
    }

    if (v87 == v88)
    {
      v89 = *(v85 + 32);
      v90 = *(v85 + 8);
      if (v89 == v90)
      {
        if (*(v85 + 40) != 1 || (*(v85 + 16) & 1) != 0)
        {
          goto LABEL_230;
        }
      }

      else if (v89 >= v90)
      {
        goto LABEL_230;
      }
    }

    else
    {
      if (v87 >= v88)
      {
        goto LABEL_230;
      }

      v89 = *(v85 + 32);
    }

    v91 = *(v85 + 24);
    v92 = *(v85 + 40);
    *&v193[3] = *(v85 + 44);
    *v193 = *(v85 + 41);
    *v83 = *v85;
    *(v83 + 16) = *(v85 + 16);
    v84 = v9;
    if (v85 == v9)
    {
      goto LABEL_229;
    }

    v93 = v82;
    v94 = v82;
    if (v92)
    {
      while (1)
      {
        v95 = v9 + v94;
        v96 = *(v9 + v94 - 20);
        if (~v96 > v96)
        {
          v96 = ~v96;
        }

        if (v87 == v96)
        {
          v97 = *(v95 - 16);
          if (v89 == v97)
          {
            if (*(v9 + v94 - 8))
            {
LABEL_263:
              v84 = v85;
              goto LABEL_229;
            }
          }

          else if (v89 >= v97)
          {
            v84 = v9 + v94;
            goto LABEL_229;
          }
        }

        else if (v87 >= v96)
        {
          goto LABEL_263;
        }

        v85 -= 24;
        *v95 = *(v95 - 24);
        *(v95 + 16) = *(v95 - 8);
        v94 -= 24;
        if (!v94)
        {
LABEL_228:
          v84 = v9;
          goto LABEL_229;
        }
      }
    }

    while (2)
    {
      v98 = v9 + v93;
      v99 = *(v9 + v93 - 20);
      if (~v99 > v99)
      {
        v99 = ~v99;
      }

      if (v87 != v99)
      {
        if (v87 >= v99)
        {
          goto LABEL_263;
        }

        goto LABEL_258;
      }

      if (v89 < *(v98 - 16))
      {
LABEL_258:
        v85 -= 24;
        *v98 = *(v98 - 24);
        *(v98 + 16) = *(v98 - 8);
        v93 -= 24;
        if (!v93)
        {
          goto LABEL_228;
        }

        continue;
      }

      break;
    }

    v84 = v9 + v93;
LABEL_229:
    *v84 = v91;
    *(v84 + 4) = v86;
    *(v84 + 8) = v89;
    *(v84 + 16) = v92;
    *(v84 + 17) = *v193;
    *(v84 + 20) = *&v193[3];
LABEL_230:
    v79 = v83 + 24;
    v82 += 24;
    if (v83 + 24 != a2)
    {
      continue;
    }

    break;
  }
}

__n128 std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::anonymous namespace::EqualityDetectionHelper *,0>(__n128 *a1, __n128 *a2, __n128 *a3)
{
  v3 = a2->n128_i32[1];
  if (~v3 > v3)
  {
    v3 = ~v3;
  }

  v4 = a1->n128_i32[1];
  if (~v4 > v4)
  {
    v4 = ~v4;
  }

  v5 = v3 < v4;
  if (v3 == v4 && (v6 = a2->n128_i64[1], v7 = a1->n128_i64[1], v5 = v6 < v7, v6 == v7))
  {
    if (a2[1].n128_u8[0] == 1 && (a1[1].n128_u8[0] & 1) == 0)
    {
LABEL_9:
      v8 = a3->n128_i32[1];
      if (~v8 > v8)
      {
        v8 = ~v8;
      }

      v9 = v8 < v3;
      if (v8 == v3 && (v10 = a3->n128_i64[1], v11 = a2->n128_i64[1], v9 = v10 < v11, v10 == v11))
      {
        if (a3[1].n128_u8[0] == 1 && (a2[1].n128_u8[0] & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      else if (v9)
      {
LABEL_15:
        v12 = a1[1].n128_u64[0];
        result = *a1;
        v14 = a3[1].n128_u64[0];
        *a1 = *a3;
        a1[1].n128_u64[0] = v14;
        *a3 = result;
        a3[1].n128_u64[0] = v12;
        return result;
      }

      v26 = a1[1].n128_u64[0];
      result = *a1;
      v27 = a2[1].n128_u64[0];
      *a1 = *a2;
      a1[1].n128_u64[0] = v27;
      *a2 = result;
      a2[1].n128_u64[0] = v26;
      v28 = a3->n128_i32[1];
      if (~v28 > v28)
      {
        v28 = ~v28;
      }

      v29 = a2->n128_i32[1];
      if (~v29 > v29)
      {
        v29 = ~v29;
      }

      v30 = v28 < v29;
      if (v28 == v29 && (v31 = a3->n128_i64[1], v32 = a2->n128_i64[1], v30 = v31 < v32, v31 == v32))
      {
        if (a3[1].n128_u8[0] != 1 || (a2[1].n128_u8[0] & 1) != 0)
        {
          return result;
        }
      }

      else if (!v30)
      {
        return result;
      }

      v35 = a2[1].n128_u64[0];
      result = *a2;
      v36 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v36;
      *a3 = result;
      a3[1].n128_u64[0] = v35;
      return result;
    }
  }

  else if (v5)
  {
    goto LABEL_9;
  }

  v15 = a3->n128_i32[1];
  if (~v15 > v15)
  {
    v15 = ~v15;
  }

  v16 = v15 < v3;
  if (v15 != v3 || (v17 = a3->n128_i64[1], v18 = a2->n128_i64[1], v16 = v17 < v18, v17 != v18))
  {
    if (!v16)
    {
      return result;
    }

LABEL_26:
    v19 = a2[1].n128_u64[0];
    result = *a2;
    v20 = a3[1].n128_u64[0];
    *a2 = *a3;
    a2[1].n128_u64[0] = v20;
    *a3 = result;
    a3[1].n128_u64[0] = v19;
    v21 = a2->n128_i32[1];
    if (~v21 > v21)
    {
      v21 = ~v21;
    }

    v22 = a1->n128_i32[1];
    if (~v22 > v22)
    {
      v22 = ~v22;
    }

    v23 = v21 < v22;
    if (v21 == v22 && (v24 = a2->n128_i64[1], v25 = a1->n128_i64[1], v23 = v24 < v25, v24 == v25))
    {
      if (a2[1].n128_u8[0] != 1 || (a1[1].n128_u8[0] & 1) != 0)
      {
        return result;
      }
    }

    else if (!v23)
    {
      return result;
    }

    v33 = a1[1].n128_u64[0];
    result = *a1;
    v34 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v34;
    *a2 = result;
    a2[1].n128_u64[0] = v33;
    return result;
  }

  if (a3[1].n128_u8[0] == 1 && (a2[1].n128_u8[0] & 1) == 0)
  {
    goto LABEL_26;
  }

  return result;
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::anonymous namespace::EqualityDetectionHelper *,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4)
{
  v9 = a4->n128_i32[1];
  if (~v9 > v9)
  {
    v9 = ~v9;
  }

  v10 = a3->n128_i32[1];
  if (~v10 > v10)
  {
    v10 = ~v10;
  }

  v11 = v9 < v10;
  if (v9 != v10 || (v12 = a4->n128_i64[1], v13 = a3->n128_i64[1], v11 = v12 < v13, v12 != v13))
  {
    if (!v11)
    {
      return result;
    }

LABEL_12:
    v14 = a3[1].n128_u64[0];
    result = *a3;
    v15 = a4[1].n128_u64[0];
    *a3 = *a4;
    a3[1].n128_u64[0] = v15;
    *a4 = result;
    a4[1].n128_u64[0] = v14;
    v16 = a3->n128_i32[1];
    if (~v16 > v16)
    {
      v16 = ~v16;
    }

    v17 = a2->n128_i32[1];
    if (~v17 > v17)
    {
      v17 = ~v17;
    }

    v18 = v16 < v17;
    if (v16 == v17 && (v19 = a3->n128_i64[1], v20 = a2->n128_i64[1], v18 = v19 < v20, v19 == v20))
    {
      if (a3[1].n128_u8[0] != 1 || (a2[1].n128_u8[0] & 1) != 0)
      {
        return result;
      }
    }

    else if (!v18)
    {
      return result;
    }

    v21 = a2[1].n128_u64[0];
    result = *a2;
    v22 = a3[1].n128_u64[0];
    *a2 = *a3;
    a2[1].n128_u64[0] = v22;
    *a3 = result;
    a3[1].n128_u64[0] = v21;
    v23 = a2->n128_i32[1];
    if (~v23 > v23)
    {
      v23 = ~v23;
    }

    v24 = a1->n128_i32[1];
    if (~v24 > v24)
    {
      v24 = ~v24;
    }

    v25 = v23 < v24;
    if (v23 == v24 && (v26 = a2->n128_i64[1], v27 = a1->n128_i64[1], v25 = v26 < v27, v26 == v27))
    {
      if (a2[1].n128_u8[0] != 1 || (a1[1].n128_u8[0] & 1) != 0)
      {
        return result;
      }
    }

    else if (!v25)
    {
      return result;
    }

    v28 = a1[1].n128_u64[0];
    result = *a1;
    v29 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v29;
    *a2 = result;
    a2[1].n128_u64[0] = v28;
    return result;
  }

  if (a4[1].n128_u8[0] == 1 && (a3[1].n128_u8[0] & 1) == 0)
  {
    goto LABEL_12;
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::anonymous namespace::EqualityDetectionHelper *,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5)
{
  v11 = a5->n128_i32[1];
  if (~v11 > v11)
  {
    v11 = ~v11;
  }

  v12 = a4->n128_i32[1];
  if (~v12 > v12)
  {
    v12 = ~v12;
  }

  v13 = v11 < v12;
  if (v11 != v12 || (v14 = a5->n128_i64[1], v15 = a4->n128_i64[1], v13 = v14 < v15, v14 != v15))
  {
    if (!v13)
    {
      return result;
    }

LABEL_12:
    v16 = a4[1].n128_u64[0];
    result = *a4;
    v17 = a5[1].n128_u64[0];
    *a4 = *a5;
    a4[1].n128_u64[0] = v17;
    *a5 = result;
    a5[1].n128_u64[0] = v16;
    v18 = a4->n128_i32[1];
    if (~v18 > v18)
    {
      v18 = ~v18;
    }

    v19 = a3->n128_i32[1];
    if (~v19 > v19)
    {
      v19 = ~v19;
    }

    v20 = v18 < v19;
    if (v18 == v19 && (v21 = a4->n128_i64[1], v22 = a3->n128_i64[1], v20 = v21 < v22, v21 == v22))
    {
      if (a4[1].n128_u8[0] != 1 || (a3[1].n128_u8[0] & 1) != 0)
      {
        return result;
      }
    }

    else if (!v20)
    {
      return result;
    }

    v23 = a3[1].n128_u64[0];
    result = *a3;
    v24 = a4[1].n128_u64[0];
    *a3 = *a4;
    a3[1].n128_u64[0] = v24;
    *a4 = result;
    a4[1].n128_u64[0] = v23;
    v25 = a3->n128_i32[1];
    if (~v25 > v25)
    {
      v25 = ~v25;
    }

    v26 = a2->n128_i32[1];
    if (~v26 > v26)
    {
      v26 = ~v26;
    }

    v27 = v25 < v26;
    if (v25 == v26 && (v28 = a3->n128_i64[1], v29 = a2->n128_i64[1], v27 = v28 < v29, v28 == v29))
    {
      if (a3[1].n128_u8[0] != 1 || (a2[1].n128_u8[0] & 1) != 0)
      {
        return result;
      }
    }

    else if (!v27)
    {
      return result;
    }

    v30 = a2[1].n128_u64[0];
    result = *a2;
    v31 = a3[1].n128_u64[0];
    *a2 = *a3;
    a2[1].n128_u64[0] = v31;
    *a3 = result;
    a3[1].n128_u64[0] = v30;
    v32 = a2->n128_i32[1];
    if (~v32 > v32)
    {
      v32 = ~v32;
    }

    v33 = a1->n128_i32[1];
    if (~v33 > v33)
    {
      v33 = ~v33;
    }

    v34 = v32 < v33;
    if (v32 == v33 && (v35 = a2->n128_i64[1], v36 = a1->n128_i64[1], v34 = v35 < v36, v35 == v36))
    {
      if (a2[1].n128_u8[0] != 1 || (a1[1].n128_u8[0] & 1) != 0)
      {
        return result;
      }
    }

    else if (!v34)
    {
      return result;
    }

    v37 = a1[1].n128_u64[0];
    result = *a1;
    v38 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v38;
    *a2 = result;
    a2[1].n128_u64[0] = v37;
    return result;
  }

  if (a5[1].n128_u8[0] == 1 && (a4[1].n128_u8[0] & 1) == 0)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::anonymous namespace::EqualityDetectionHelper *>(int *a1, int *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        return 1;
      case 4:
        return 1;
      case 5:
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
      v4 = *(a2 - 5);
      if (~v4 > v4)
      {
        v4 = ~v4;
      }

      v5 = a1[1];
      if (~v5 > v5)
      {
        v5 = ~v5;
      }

      v6 = v4 < v5;
      if (v4 == v5 && (v7 = *(a2 - 2), v8 = *(a1 + 1), v6 = v7 < v8, v7 == v8))
      {
        if (*(a2 - 8) != 1 || (a1[4] & 1) != 0)
        {
          return 1;
        }
      }

      else if (!v6)
      {
        return 1;
      }

      v33 = (a2 - 6);
      v34 = *(a1 + 2);
      v35 = *a1;
      v36 = *(a2 - 1);
      *a1 = *(a2 - 6);
      *(a1 + 2) = v36;
      *v33 = v35;
      v33[1].n128_u64[0] = v34;
      return 1;
    }
  }

  v9 = a1 + 12;
  v13 = a1 + 18;
  if (a1 + 18 == a2)
  {
    goto LABEL_61;
  }

  v12 = a2;
  v14 = 0;
  v15 = 0;
  while (2)
  {
    v17 = v13[1];
    if (~v17 <= v17)
    {
      v18 = v13[1];
    }

    else
    {
      v18 = ~v17;
    }

    v19 = v9[1];
    if (~v19 > v19)
    {
      v19 = ~v19;
    }

    if (v18 == v19)
    {
      v20 = *(v13 + 1);
      v21 = *(v9 + 1);
      if (v20 == v21)
      {
        if (*(v13 + 16) != 1 || (v9[4] & 1) != 0)
        {
          goto LABEL_23;
        }
      }

      else if (v20 >= v21)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v18 >= v19)
      {
        goto LABEL_23;
      }

      v20 = *(v13 + 1);
    }

    v22 = *v13;
    v23 = *(v13 + 16);
    *v37 = *(v13 + 17);
    *&v37[3] = v13[5];
    *(v13 + 2) = *(v9 + 2);
    *v13 = *v9;
    v16 = a1;
    if (v9 == a1)
    {
      goto LABEL_22;
    }

    v24 = v14;
    v25 = v14;
    if (v23)
    {
      while (1)
      {
        v26 = a1 + v25;
        v27 = *(a1 + v25 + 28);
        if (~v27 > v27)
        {
          v27 = ~v27;
        }

        if (v18 == v27)
        {
          v28 = *(v26 + 32);
          if (v20 == v28)
          {
            if (*(a1 + v25 + 40))
            {
              goto LABEL_58;
            }
          }

          else if (v20 >= v28)
          {
LABEL_58:
            v16 = v9;
            goto LABEL_22;
          }
        }

        else if (v18 >= v27)
        {
          v31 = a1 + v25;
          goto LABEL_59;
        }

        v9 -= 6;
        *(v26 + 48) = *(v26 + 24);
        *(v26 + 64) = *(v26 + 40);
        v25 -= 24;
        if (v25 == -48)
        {
LABEL_21:
          v16 = a1;
          goto LABEL_22;
        }
      }
    }

    while (1)
    {
      v29 = a1 + v24;
      v30 = *(a1 + v24 + 28);
      if (~v30 > v30)
      {
        v30 = ~v30;
      }

      if (v18 != v30)
      {
        break;
      }

      if (v20 >= *(v29 + 32))
      {
        goto LABEL_58;
      }

LABEL_53:
      v9 -= 6;
      *(v29 + 48) = *(v29 + 24);
      *(v29 + 64) = *(v29 + 40);
      v24 -= 24;
      if (v24 == -48)
      {
        goto LABEL_21;
      }
    }

    if (v18 < v30)
    {
      goto LABEL_53;
    }

    v31 = a1 + v24;
LABEL_59:
    v16 = (v31 + 48);
LABEL_22:
    *v16 = v22;
    v16[1] = v17;
    *(v16 + 1) = v20;
    *(v16 + 16) = v23;
    *(v16 + 17) = *v37;
    v16[5] = *&v37[3];
    if (++v15 == 8)
    {
      v32 = 0;
      v12 = v13 + 6 == a2;
    }

    else
    {
LABEL_23:
      v9 = v13;
      v14 += 24;
      v13 += 6;
      if (v13 != a2)
      {
        continue;
      }

LABEL_61:
      v32 = 1;
    }

    return (v32 | v12) & 1;
  }
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,operations_research::sat::anonymous namespace::LitVarEncodingInfo>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,operations_research::sat::anonymous namespace::LitVarEncodingInfo>>>::resize_impl(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8) & 1;
  v5 = 0;
  v2 = *(a1 + 16);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,24ul,true,false,8ul>(&v2, a1);
}

unint64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::sat::LinearConstraintProto>,absl::lts_20240722::hash_internal::Hash<operations_research::sat::LinearConstraintProto>,std::equal_to<operations_research::sat::LinearConstraintProto>,std::allocator<operations_research::sat::LinearConstraintProto>>::find_or_prepare_insert_non_soo<operations_research::sat::LinearConstraintProto>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  _X13 = a1[2];
  __asm { PRFM            #4, [X13] }

  v9 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed;
  v10 = *(a2 + 24);
  v11 = *(a2 + 16);
  v12 = 4 * v11;
  v42 = v10;
  if (v11)
  {
    do
    {
      v13 = *v10++;
      v9 = (((v9 + v13) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v9 + v13));
      v12 -= 4;
    }

    while (v12);
  }

  v14 = *(a2 + 48);
  v15 = *(a2 + 40);
  v16 = 8 * v15;
  v41 = v14;
  if (v15)
  {
    do
    {
      v17 = *v14++;
      v9 = (((v17 + v9) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v17 + v9));
      v16 -= 8;
    }

    while (v16);
  }

  v18 = *(a2 + 72);
  v19 = *(a2 + 64);
  v39 = v18;
  v40 = *(a2 + 64);
  v38 = 8 * v19;
  if (v19)
  {
    v20 = 8 * v19;
    do
    {
      v21 = *v18++;
      v9 = (((v21 + v9) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v21 + v9));
      v20 -= 8;
    }

    while (v20);
  }

  v34 = a1[2];
  v35 = 0;
  v22 = *a1;
  v23 = vdup_n_s8(v9 & 0x7F);
  v24 = ((v9 >> 7) ^ (_X13 >> 12)) & *a1;
  v25 = *(_X13 + v24);
  v26 = vceq_s8(v25, v23);
  if (v26)
  {
LABEL_9:
    v27 = a1[3];
    while (1)
    {
      v28 = (v24 + (__clz(__rbit64(v26)) >> 3)) & v22;
      v29 = v27 + 88 * v28;
      if (*(v29 + 16) == v11 && !memcmp(*(v29 + 24), v42, 4 * v11) && *(v29 + 40) == v15 && !memcmp(*(v29 + 48), v41, 8 * v15) && *(v29 + 64) == v40)
      {
        result = memcmp(*(v29 + 72), v39, v38);
        if (!result)
        {
          break;
        }
      }

      v26 &= ((v26 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v26)
      {
        goto LABEL_18;
      }
    }

    v32 = 0;
    v33 = v34 + v28;
  }

  else
  {
LABEL_18:
    while (1)
    {
      v31 = vceq_s8(v25, 0x8080808080808080);
      if (v31)
      {
        break;
      }

      v35 += 8;
      v24 = (v35 + v24) & v22;
      v25 = *(v34 + v24);
      v26 = vceq_s8(v25, v23);
      if (v26)
      {
        goto LABEL_9;
      }
    }

    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(a1, v9, (v24 + (__clz(__rbit64(v31)) >> 3)) & v22, v35, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::sat::LinearConstraintProto>,absl::lts_20240722::hash_internal::Hash<operations_research::sat::LinearConstraintProto>,std::equal_to<operations_research::sat::LinearConstraintProto>,std::allocator<operations_research::sat::LinearConstraintProto>>::GetPolicyFunctions(void)::value);
    v33 = a1[2] + result;
    v29 = a1[3] + 88 * result;
    v32 = 1;
  }

  *a3 = v33;
  *(a3 + 8) = v29;
  *(a3 + 16) = v32;
  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::sat::LinearConstraintProto>,absl::lts_20240722::hash_internal::Hash<operations_research::sat::LinearConstraintProto>,std::equal_to<operations_research::sat::LinearConstraintProto>,std::allocator<operations_research::sat::LinearConstraintProto>>::resize_impl(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  v3 = *a1;
  v4 = *(a1 + 8) & 1;
  v5 = 0;
  v2 = *(a1 + 16);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,88ul,false,false,8ul>(&v2, a1);
}

uint64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::sat::LinearConstraintProto>,absl::lts_20240722::hash_internal::Hash<operations_research::sat::LinearConstraintProto>,std::equal_to<operations_research::sat::LinearConstraintProto>,std::allocator<operations_research::sat::LinearConstraintProto>>::resize_impl(absl::lts_20240722::container_internal::CommonFields &,unsigned long,absl::lts_20240722::container_internal::HashtablezInfoHandle)::{lambda(operations_research::sat::LinearConstraintProto*)#1}::operator()(uint64_t **a1, uint64_t a2)
{
  v2 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed;
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = *(a2 + 24);
    v5 = 4 * v3;
    do
    {
      v6 = *v4++;
      v2 = (((v2 + v6) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v2 + v6));
      v5 -= 4;
    }

    while (v5);
  }

  v7 = *(a2 + 40);
  if (v7)
  {
    v8 = *(a2 + 48);
    v9 = 8 * v7;
    do
    {
      v10 = *v8++;
      v2 = (((v10 + v2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v10 + v2));
      v9 -= 8;
    }

    while (v9);
  }

  v11 = *a1;
  v12 = *(a2 + 64);
  if (v12)
  {
    v13 = *(a2 + 72);
    v14 = 8 * v12;
    do
    {
      v15 = *v13++;
      v2 = (((v15 + v2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v15 + v2));
      v14 -= 8;
    }

    while (v14);
  }

  v16 = a1[1];
  v17 = v16[2];
  v18 = *v16;
  v19 = ((v17 >> 12) ^ (v2 >> 7)) & *v16;
  if (*(v17 + v19) >= -1)
  {
    v20 = 0;
    for (i = *(v17 + v19) & ~(*(v17 + v19) << 7) & 0x8080808080808080; !i; i = *(v17 + v19) & ~(*(v17 + v19) << 7) & 0x8080808080808080)
    {
      v20 += 8;
      v19 = (v20 + v19) & v18;
    }

    v19 = (v19 + (__clz(__rbit64(i)) >> 3)) & v18;
  }

  else
  {
    v20 = 0;
  }

  v22 = v2 & 0x7F;
  *(v17 + v19) = v22;
  *(v17 + ((v19 - 7) & v18) + (v18 & 7)) = v22;
  absl::lts_20240722::container_internal::common_policy_traits<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::sat::LinearConstraintProto>,void>::transfer_impl<std::allocator<operations_research::sat::LinearConstraintProto>>(*v11, *a1[2] + 88 * v19, a2);
  return v20;
}

void absl::lts_20240722::container_internal::common_policy_traits<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::sat::LinearConstraintProto>,void>::transfer_impl<std::allocator<operations_research::sat::LinearConstraintProto>>(uint64_t a1, uint64_t a2, const operations_research::sat::LinearConstraintProto *a3)
{
  operations_research::sat::LinearConstraintProto::LinearConstraintProto(a2, 0);
  if (v4 != a3)
  {
    v5 = *(v4 + 1);
    if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
      v6 = *(a3 + 1);
      if ((v6 & 1) == 0)
      {
LABEL_4:
        if (v5 != v6)
        {
LABEL_5:
          operations_research::sat::LinearConstraintProto::CopyFrom(v4, a3);
          goto LABEL_9;
        }

        goto LABEL_8;
      }
    }

    else
    {
      v6 = *(a3 + 1);
      if ((v6 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    if (v5 != *(v6 & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_5;
    }

LABEL_8:
    operations_research::sat::LinearConstraintProto::InternalSwap(v4, a3);
  }

LABEL_9:

  operations_research::sat::LinearConstraintProto::~LinearConstraintProto(a3);
}

_UNKNOWN **absl::lts_20240722::container_internal::TypeErasedApplyToSlotFn<absl::lts_20240722::hash_internal::Hash<operations_research::sat::LinearConstraintProto>,operations_research::sat::LinearConstraintProto>(uint64_t a1, uint64_t a2)
{
  result = &absl::lts_20240722::hash_internal::MixingHashState::kSeed;
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = *(a2 + 24);
    v5 = 4 * v3;
    do
    {
      v6 = *v4++;
      result = ((((result + v6) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (result + v6)));
      v5 -= 4;
    }

    while (v5);
  }

  v7 = *(a2 + 40);
  if (v7)
  {
    v8 = *(a2 + 48);
    v9 = 8 * v7;
    do
    {
      v10 = *v8++;
      result = ((((result + v10) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (result + v10)));
      v9 -= 8;
    }

    while (v9);
  }

  v11 = *(a2 + 64);
  if (v11)
  {
    v12 = *(a2 + 72);
    v13 = 8 * v11;
    do
    {
      v14 = *v12++;
      result = ((((result + v14) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (result + v14)));
      v13 -= 8;
    }

    while (v13);
  }

  return result;
}

uint64_t std::vector<operations_research::sat::ConstraintProto>::__emplace_back_slow_path<operations_research::sat::ConstraintProto const&>(uint64_t a1, const operations_research::sat::ConstraintProto *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v5 = *(a1 + 16) - *a1;
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

  v12 = v2 << 6;
  operations_research::sat::ConstraintProto::ConstraintProto((v2 << 6), 0, a2);
  v7 = (v2 << 6) + 64;
  v8 = *(a1 + 8);
  v9 = (v2 << 6) + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<operations_research::sat::ConstraintProto>,operations_research::sat::ConstraintProto*>(a1, *a1, v8, (v12 + *a1 - v8));
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v7;
}

void sub_23CC3CDF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<operations_research::sat::ConstraintProto>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<operations_research::sat::ConstraintProto>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 64;
    operations_research::sat::ConstraintProto::~ConstraintProto((i - 64));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<operations_research::sat::ConstraintProto>,operations_research::sat::ConstraintProto*>(uint64_t a1, operations_research::sat::ConstraintProto *a2, operations_research::sat::ConstraintProto *a3, operations_research::sat::ConstraintProto *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    while (1)
    {
      operations_research::sat::ConstraintProto::ConstraintProto(a4, 0);
      if (a4 == v7)
      {
        goto LABEL_4;
      }

      v8 = *(a4 + 1);
      if (v8)
      {
        v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
        v9 = *(v7 + 1);
        if (v9)
        {
LABEL_11:
          if (v8 != *(v9 & 0xFFFFFFFFFFFFFFFELL))
          {
LABEL_9:
            operations_research::sat::ConstraintProto::CopyFrom(a4, v7);
            goto LABEL_4;
          }

          goto LABEL_3;
        }
      }

      else
      {
        v9 = *(v7 + 1);
        if (v9)
        {
          goto LABEL_11;
        }
      }

      if (v8 != v9)
      {
        goto LABEL_9;
      }

LABEL_3:
      operations_research::sat::ConstraintProto::InternalSwap(a4, v7);
LABEL_4:
      v7 = (v7 + 64);
      a4 = (a4 + 64);
      if (v7 == a3)
      {
        while (v6 != a3)
        {
          operations_research::sat::ConstraintProto::~ConstraintProto(v6);
          v6 = (v6 + 64);
        }

        return;
      }
    }
  }
}

void operations_research::sat::ScatteredIntegerVector::ClearAndResize(int64x2_t **this, int a2)
{
  if (*this != 1)
  {
    v20 = 0;
    std::vector<long long>::assign(this + 7, a2, &v20);
    goto LABEL_14;
  }

  v4 = (this + 7);
  v5 = this[7];
  v7 = this[1];
  v6 = this[2];
  if (v7 != v6)
  {
    if ((&v6[-1].u64[1] + 4) == v7)
    {
      v8 = this[1];
      do
      {
LABEL_9:
        v13 = v8->i32[0];
        v8 = (v8 + 4);
        v5->i64[v13] = 0;
      }

      while (v8 != v6);
      goto LABEL_10;
    }

    v9 = ((&v6[-1].u64[1] + 4 - v7) >> 2) + 1;
    v8 = (v7 + 4 * (v9 & 0x7FFFFFFFFFFFFFFELL));
    v10 = v9 & 0x7FFFFFFFFFFFFFFELL;
    do
    {
      v11 = *v7++;
      v12 = vshrq_n_s64(vshll_n_s32(v11, 0x20uLL), 0x1DuLL);
      *(v5->i64 + v12.i64[0]) = 0;
      *(v5->i64 + v12.i64[1]) = 0;
      v10 -= 2;
    }

    while (v10);
    if (v9 != (v9 & 0x7FFFFFFFFFFFFFFELL))
    {
      goto LABEL_9;
    }
  }

LABEL_10:
  v20 = 0;
  v14 = (this[8] - v5) >> 3;
  v15 = a2 - v14;
  if (a2 <= v14)
  {
    if (a2 < v14)
    {
      this[8] = (v5 + 8 * a2);
    }
  }

  else
  {
    std::vector<unsigned long long>::__append(v4, v15, &v20);
  }

LABEL_14:
  v16 = this[1];
  v17 = this[2];
  if (v16 != v17)
  {
    v18 = this[4];
    do
    {
      v19 = v16->i32[0];
      v16 = (v16 + 4);
      *(v18->i64 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    }

    while (v16 != v17);
  }

  std::vector<BOOL>::resize((this + 4), a2, 1);
  this[2] = this[1];
  *this = 1;
}

uint64_t operations_research::sat::ScatteredIntegerVector::ConvertToLinearConstraint@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  if (*a1 != 1)
  {
    v16 = *(a1 + 56);
    v15 = *(a1 + 64);
    if (v16 != v15)
    {
      v17 = v15 - v16 - 8;
      if (v17 >= 0x38)
      {
        v25 = (v17 >> 3) + 1;
        v18 = (v16 + 8 * (v25 & 0x3FFFFFFFFFFFFFF8));
        v26 = v16 + 2;
        v27 = 0uLL;
        v28 = v25 & 0x3FFFFFFFFFFFFFF8;
        v29 = 0uLL;
        do
        {
          v30 = v26[-2];
          v31 = v26[-1];
          v32 = *v26;
          v33 = v26[1];
          v26 += 4;
          v27 = vsubq_s32(v27, vmvnq_s8(vuzp1q_s32(vceqzq_s64(v30), vceqzq_s64(v31))));
          v29 = vsubq_s32(v29, vmvnq_s8(vuzp1q_s32(vceqzq_s64(v32), vceqzq_s64(v33))));
          v28 -= 8;
        }

        while (v28);
        v13 = vaddvq_s32(vaddq_s32(v29, v27));
        if (v25 == (v25 & 0x3FFFFFFFFFFFFFF8))
        {
          goto LABEL_26;
        }
      }

      else
      {
        v13 = 0;
        v18 = *(a1 + 56);
      }

      do
      {
        v34 = v18->i64[0];
        v18 = (v18 + 8);
        if (v34)
        {
          ++v13;
        }
      }

      while (v18 != v15);
      goto LABEL_26;
    }

LABEL_8:
    v13 = 0;
    goto LABEL_26;
  }

  v11 = *(a1 + 8);
  v10 = *(a1 + 16);
  if (v11 == v10)
  {
    goto LABEL_8;
  }

  v12 = *(a1 + 56);
  v13 = 0;
  if (&v10[-1].u8[4] == v11)
  {
    v14 = *(a1 + 8);
    do
    {
LABEL_16:
      v24 = v14->i32[0];
      v14 = (v14 + 4);
      if (*(v12 + 8 * v24))
      {
        ++v13;
      }
    }

    while (v14 != v10);
    goto LABEL_26;
  }

  v19 = 0;
  v20 = ((&v10[-1].u8[4] - v11) >> 2) + 1;
  v14 = (v11 + 4 * (v20 & 0x7FFFFFFFFFFFFFFELL));
  v21 = v20 & 0x7FFFFFFFFFFFFFFELL;
  do
  {
    v22 = *v11++;
    v23 = vshrq_n_s64(vshll_n_s32(v22, 0x20uLL), 0x1DuLL);
    if (*(v12 + v23.i64[0]))
    {
      ++v13;
    }

    if (*(v12 + v23.i64[1]))
    {
      ++v19;
    }

    v21 -= 2;
  }

  while (v21);
  v13 += v19;
  if (v20 != (v20 & 0x7FFFFFFFFFFFFFFELL))
  {
    goto LABEL_16;
  }

LABEL_26:
  v35 = v13 + *(a4 + 16);
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *(a5 + 24) = 0;
  *(a5 + 32) = 0;
  operations_research::sat::LinearConstraint::resize(a5, v35);
  if (*a1 != 1)
  {
    v49 = *(a1 + 56);
    v50 = *(a1 + 64) - v49;
    if ((v50 >> 3) < 1)
    {
      v43 = 0;
    }

    else
    {
      v43 = 0;
      v51 = *(a5 + 24);
      v52 = *(a5 + 32);
      v53 = (v50 >> 3) & 0x7FFFFFFF;
      do
      {
        v55 = *v49++;
        v54 = v55;
        if (v55)
        {
          *(v51 + 4 * v43) = *a2;
          *(v52 + 8 * v43++) = v54;
        }

        ++a2;
        --v53;
      }

      while (v53);
    }

LABEL_41:
    *a5 = 0x8000000000000002;
    *(a5 + 8) = a3;
    if (*(a4 + 16) != 1)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  v37 = *(a1 + 8);
  v38 = *(a1 + 16);
  v39 = 126 - 2 * __clz((v38 - v37) >> 2);
  if (v38 == v37)
  {
    v40 = 0;
  }

  else
  {
    v40 = v39;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,false>(v37, v38, &v57, v40, 1);
  v41 = *(a1 + 8);
  v42 = *(a1 + 16);
  if (v41 != v42)
  {
    v43 = 0;
    v44 = *(a1 + 56);
    v45 = *(a5 + 24);
    v46 = *(a5 + 32);
    do
    {
      v47 = *v41;
      v48 = *(v44 + 8 * v47);
      if (v48)
      {
        *(v45 + 4 * v43) = a2[v47];
        *(v46 + 8 * v43++) = v48;
      }

      ++v41;
    }

    while (v41 != v42);
    goto LABEL_41;
  }

  v43 = 0;
  *a5 = 0x8000000000000002;
  *(a5 + 8) = a3;
  if (*(a4 + 16) == 1)
  {
LABEL_42:
    *(*(a5 + 24) + 4 * v43) += *a4;
    *(*(a5 + 32) + 8 * v43++) += *(a4 + 8);
  }

LABEL_43:
  if (v43 != v35)
  {
    absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v43, v35, "new_size == final_size");
  }

  return operations_research::sat::DivideByGCD(a5, v36);
}

unint64_t operations_research::sat::ScatteredIntegerVector::ConvertToCutData(unint64_t result, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v11 = result;
  *(a7 + 24) = *(a7 + 16);
  *a7 = a2;
  *(a7 + 8) = a3;
  if (*result == 1)
  {
    v12 = *(result + 8);
    v13 = v11[2];
    v14 = 126 - 2 * __clz((v13 - v12) >> 2);
    if (v13 == v12)
    {
      v15 = 0;
    }

    else
    {
      v15 = v14;
    }

    result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,false>(v12, v13, v24, v15, 1);
    v16 = v11[1];
    for (i = v11[2]; v16 != i; ++v16)
    {
      v18 = *v16;
      v19 = *(v11[7] + 8 * v18);
      if (v19)
      {
        result = operations_research::sat::CutData::AppendOneTerm(a7, *(*a4 + 4 * v18), v19, *(*(a6 + 152) + 24 * *(*a4 + 4 * v18)), -*(*(a6 + 152) + 24 * (*(*a4 + 4 * v18) ^ 1)), *(*a5 + 8 * v18));
        if ((result & 1) == 0)
        {
          operations_research::sat::ScatteredIntegerVector::ConvertToCutData(v24);
        }
      }
    }
  }

  else
  {
    v20 = *(result + 64) - *(result + 56);
    if ((v20 >> 3) >= 1)
    {
      v21 = 0;
      v22 = (v20 >> 3) & 0x7FFFFFFF;
      do
      {
        v23 = *(v11[7] + 8 * v21);
        if (v23)
        {
          result = operations_research::sat::CutData::AppendOneTerm(a7, *(*a4 + 4 * v21), v23, *(*(a6 + 152) + 24 * *(*a4 + 4 * v21)), -*(*(a6 + 152) + 24 * (*(*a4 + 4 * v21) ^ 1)), *(*a5 + 8 * v21));
          if ((result & 1) == 0)
          {
            operations_research::sat::ScatteredIntegerVector::ConvertToCutData(v24);
          }
        }

        ++v21;
      }

      while (v22 != v21);
    }
  }

  return result;
}

void operations_research::sat::LinearProgrammingConstraint::LinearProgrammingConstraint(uint64_t a1, operations_research::sat::Model *a2)
{
  *a1 = &unk_284F43918;
  *(a1 + 8) = &unk_284F43950;
  operations_research::sat::LinearConstraintManager::LinearConstraintManager((a1 + 16), a2);
  *(a1 + 328) = 10;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0;
  operations_research::glop::GlopParameters::GlopParameters(a1 + 568, 0);
  *(a1 + 912) = 0;
  *(a1 + 896) = 0u;
  operations_research::glop::LinearProgram::LinearProgram((a1 + 920));
  operations_research::glop::RevisedSimplex::RevisedSimplex((a1 + 1368));
  *(a1 + 21928) = 500;
  operations_research::glop::SparseMatrixScaler::SparseMatrixScaler((a1 + 21936));
  *(a1 + 21992) = 0x3FF0000000000000;
  *(a1 + 22000) = xmmword_23CE4C6D0;
  *(a1 + 22016) = 0x6400000064;
  *(a1 + 22024) = 0x412E848000000000;
  *(a1 + 22032) = 0u;
  *(a1 + 22048) = 0u;
  *(a1 + 22064) = 0u;
  *(a1 + 22080) = 0u;
  *(a1 + 22096) = 0u;
  *(a1 + 22112) = 0u;
  *(a1 + 22128) = 0u;
  *(a1 + 22144) = 0u;
  *(a1 + 22160) = 0u;
  *(a1 + 22176) = 0u;
  *(a1 + 22192) = 0;
  *(a1 + 22224) = 0u;
  *(a1 + 22240) = 0u;
  *(a1 + 22304) = 0u;
  *(a1 + 22288) = 0u;
  *(a1 + 22336) = 0;
  *(a1 + 22340) = 0;
  *(a1 + 22344) = 1;
  *(a1 + 22352) = 0;
  *(a1 + 22376) = 1;
  *(a1 + 22384) = 0;
  *(a1 + 22408) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,256,false>>::EmptyNode(void)::empty_node;
  *(a1 + 22416) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,256,false>>::EmptyNode(void)::empty_node;
  *(a1 + 22424) = 0u;
  *(a1 + 22440) = 0u;
  *(a1 + 22456) = 0u;
  *(a1 + 22472) = 0u;
  *(a1 + 22488) = 0u;
  *(a1 + 22504) = 0u;
  *(a1 + 22520) = 0u;
  *(a1 + 22536) = 0u;
  *(a1 + 22552) = 0u;
  *(a1 + 22568) = 0u;
  *(a1 + 22584) = 0u;
  *(a1 + 22600) = 0u;
  *(a1 + 22616) = 0u;
  *(a1 + 22632) = 0;
  *(a1 + 22700) = 0u;
  *(a1 + 22688) = 0u;
  *(a1 + 22672) = 0u;
  *(a1 + 22656) = 0u;
  *(a1 + 22720) = 0;
  *(a1 + 22812) = 0u;
  *(a1 + 22800) = 0u;
  *(a1 + 22784) = 0u;
  *(a1 + 22768) = 0u;
  *(a1 + 22752) = 0u;
  *(a1 + 22957) = 0u;
  *(a1 + 22944) = 0u;
  *(a1 + 22928) = 0u;
  *(a1 + 22912) = 0u;
  *(a1 + 22896) = 0u;
  *(a1 + 22880) = 0u;
  *(a1 + 22864) = 0u;
  *(a1 + 22848) = 0u;
  *(a1 + 22832) = 0u;
  *(a1 + 22976) = xmmword_23CE306D0;
  *(a1 + 23008) = xmmword_23CE306D0;
  *(a1 + 23040) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,256,false>>::EmptyNode(void)::empty_node;
  *(a1 + 23048) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,256,false>>::EmptyNode(void)::empty_node;
  *(a1 + 23056) = 0;
  *(a1 + 23104) = 0u;
  *(a1 + 23088) = 0u;
  *(a1 + 23328) = 0u;
  *(a1 + 23312) = 0u;
  *(a1 + 23280) = 0;
  *(a1 + 23264) = 0u;
  *(a1 + 23248) = 0u;
  *(a1 + 23232) = 0u;
  *(a1 + 23216) = 0u;
  *(a1 + 23200) = 0u;
  *(a1 + 23184) = 0u;
  *(a1 + 23168) = 0u;
  *(a1 + 23152) = 0u;
  *(a1 + 23136) = 0u;
  *(a1 + 23360) = 1;
  *(a1 + 23624) = 0u;
  *(a1 + 23640) = 0u;
  *(a1 + 23592) = 0u;
  *(a1 + 23608) = 0u;
  *(a1 + 23560) = 0u;
  *(a1 + 23576) = 0u;
  *(a1 + 23528) = 0u;
  *(a1 + 23544) = 0u;
  *(a1 + 23496) = 0u;
  *(a1 + 23512) = 0u;
  *(a1 + 23464) = 0u;
  *(a1 + 23480) = 0u;
  *(a1 + 23432) = 0u;
  *(a1 + 23448) = 0u;
  *(a1 + 23400) = 0u;
  *(a1 + 23416) = 0u;
  *(a1 + 23368) = 0u;
  *(a1 + 23384) = 0u;
  *(a1 + 23656) = xmmword_23CE306D0;
  *(a1 + 23688) = 0;
  *(a1 + 23692) = 0;
  *(a1 + 23696) = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(a2);
  *(a1 + 23704) = a2;
  *(a1 + 23712) = operations_research::sat::Model::GetOrCreate<operations_research::TimeLimit>(a2);
  *(a1 + 23720) = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a2);
  *(a1 + 23728) = operations_research::sat::Model::GetOrCreate<operations_research::sat::Trail>(a2);
  *(a1 + 23736) = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerEncoder>(a2);
  *(a1 + 23744) = operations_research::sat::Model::GetOrCreate<operations_research::sat::ProductDetector>(a2);
  *(a1 + 23752) = operations_research::sat::Model::GetOrCreate<operations_research::sat::ObjectiveDefinition>(a2);
  *(a1 + 23760) = operations_research::sat::Model::GetOrCreate<operations_research::sat::SharedStatistics>(a2);
  *(a1 + 23768) = operations_research::sat::Model::GetOrCreate<operations_research::sat::SharedResponseManager>(a2);
  *(a1 + 23776) = operations_research::sat::Model::GetOrCreate<operations_research::sat::ModelRandomGenerator>(a2);
  *(a1 + 23792) = 0;
  *(a1 + 23824) = 0u;
  *(a1 + 23840) = 0u;
  *(a1 + 23888) = 0u;
  *(a1 + 23904) = 0u;
  *(a1 + 23936) = operations_research::sat::Model::GetOrCreate<operations_research::sat::ProductDetector>(a2);
  *(a1 + 23944) = operations_research::sat::Model::GetOrCreate<operations_research::sat::SharedStatistics>(a2);
  *(a1 + 23952) = operations_research::sat::Model::GetOrCreate<operations_research::sat::ModelLpValues>(a2);
  *(a1 + 23960) = 0u;
  v4 = *(a1 + 23720);
  v5 = operations_research::sat::Model::GetOrCreate<operations_research::sat::ImpliedBounds>(a2);
  operations_research::sat::ImpliedBoundsProcessor::ImpliedBoundsProcessor(a1 + 23984, 0, 0, v4, v5);
  *(a1 + 24120) = operations_research::sat::Model::GetOrCreate<operations_research::sat::LinearProgrammingDispatcher>(a2);
  *(a1 + 24128) = 0u;
  *(a1 + 24144) = 0u;
  *(a1 + 24160) = 0u;
  *(a1 + 24176) = 0u;
  *(a1 + 24188) = 0u;
  *(a1 + 24208) = 0u;
  *(a1 + 24224) = 0u;
  *(a1 + 24240) = 0u;
  *(a1 + 24254) = 0;
  *(a1 + 24264) = 0u;
  *(a1 + 24280) = 0u;
  *(a1 + 24296) = 0u;
  *(a1 + 24309) = 0;
  *(a1 + 24328) = 0;
  *(a1 + 24344) = 0;
  *(a1 + 24336) = 0;
  *(a1 + 24352) = 0;
  *(a1 + 24360) = operations_research::sat::Model::GetOrCreate<operations_research::sat::ModelLpValues>(a2);
  *(a1 + 24368) = 0;
  *(a1 + 24376) = 0;
  *(a1 + 24392) = 0;
  *(a1 + 24384) = 0;
  *(a1 + 24400) = 0;
  *(a1 + 24404) = 0u;
  *(a1 + 24420) = 0u;
  *(a1 + 24436) = 0u;
  *(a1 + 24452) = 0u;
  *(a1 + 24468) = 0u;
  *(a1 + 24484) = 0u;
  *(a1 + 24500) = 0u;
  *(a1 + 24516) = 0u;
  *(a1 + 24536) = &unk_284F42178;
  *(a1 + 24648) = 0;
  *(a1 + 24544) = 0u;
  *(a1 + 24560) = 0u;
  *(a1 + 24576) = 0u;
  *(a1 + 24592) = 0u;
  *(a1 + 24608) = 0u;
  *(a1 + 24624) = 0u;
  *(a1 + 24640) = 0;
  v6.f64[0] = NAN;
  v6.f64[1] = NAN;
  v7 = vnegq_f64(v6);
  *(a1 + 24672) = v7;
  *(a1 + 24688) = v7;
  *(a1 + 24704) = v7;
  *(a1 + 24720) = v7;
  *(a1 + 24656) = xmmword_23CE4C6E0;
  *(a1 + 24736) = 0;
  *(a1 + 24816) = 0u;
  *(a1 + 24832) = 0u;
  *(a1 + 24848) = 0u;
  *(a1 + 24864) = 0u;
  *(a1 + 24880) = 0u;
  *(a1 + 24896) = 1;
  *(a1 + 596) = 1;
  *(a1 + 860) = 2;
  v8 = *(a1 + 584);
  *(a1 + 584) = vorr_s8(v8, 0x20000000000001);
  v9 = *(a1 + 23696);
  *(a1 + 640) = *(v9 + 912);
  *(a1 + 584) = v8.i32[0] | 0x801;
  *(a1 + 648) = *(v9 + 920);
  *(a1 + 584) = v8.i32[0] | 0x1801;
  if (*(v9 + 751) == 1)
  {
    *(a1 + 792) = 0;
    *(a1 + 588) = v8.i32[1] | 0x200010;
  }

  operations_research::glop::RevisedSimplex::SetParameters((a1 + 1368), (a1 + 568));
}

void sub_23CC3DD50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void **a11, void **a12, void **a13, void *a14)
{
  v20 = v14[3109];
  if (v20)
  {
    v14[3110] = v20;
    operator delete(v20);
    v21 = v14[3075];
    if (!v21)
    {
LABEL_3:
      operations_research::RevRepository<int>::~RevRepository(a10);
      v22 = v14[3063];
      if (!v22)
      {
        goto LABEL_4;
      }

      goto LABEL_66;
    }
  }

  else
  {
    v21 = v14[3075];
    if (!v21)
    {
      goto LABEL_3;
    }
  }

  v14[3076] = v21;
  operator delete(v21);
  operations_research::RevRepository<int>::~RevRepository(a10);
  v22 = v14[3063];
  if (!v22)
  {
LABEL_4:
    v23 = v14[3060];
    if (!v23)
    {
      goto LABEL_5;
    }

    goto LABEL_67;
  }

LABEL_66:
  v14[3064] = v22;
  operator delete(v22);
  v23 = v14[3060];
  if (!v23)
  {
LABEL_5:
    v24 = v14[3057];
    if (!v24)
    {
      goto LABEL_6;
    }

    goto LABEL_68;
  }

LABEL_67:
  v14[3061] = v23;
  operator delete(v23);
  v24 = v14[3057];
  if (!v24)
  {
LABEL_6:
    v25 = v14[3054];
    if (!v25)
    {
      goto LABEL_7;
    }

    goto LABEL_69;
  }

LABEL_68:
  v14[3058] = v24;
  operator delete(v24);
  v25 = v14[3054];
  if (!v25)
  {
LABEL_7:
    v26 = v14[3051];
    if (!v26)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_69:
  v14[3055] = v25;
  operator delete(v25);
  v26 = v14[3051];
  if (!v26)
  {
LABEL_9:
    std::vector<operations_research::sat::CutGenerator>::~vector[abi:ne200100](a11);
    v27 = *a13;
    if (*a13)
    {
      v14[3042] = v27;
      operator delete(v27);
      v28 = v14[3036];
      if (!v28)
      {
LABEL_11:
        v29 = *v16;
        if (!*v16)
        {
          goto LABEL_12;
        }

        goto LABEL_59;
      }
    }

    else
    {
      v28 = v14[3036];
      if (!v28)
      {
        goto LABEL_11;
      }
    }

    v14[3037] = v28;
    operator delete(v28);
    v29 = *v16;
    if (!*v16)
    {
LABEL_12:
      v30 = v14[3029];
      if (!v30)
      {
        goto LABEL_13;
      }

      goto LABEL_60;
    }

LABEL_59:
    v14[3034] = v29;
    operator delete(v29);
    v30 = v14[3029];
    if (!v30)
    {
LABEL_13:
      std::vector<std::unique_ptr<operations_research::sat::LinearConstraintPropagator<true>>>::~vector[abi:ne200100](a14);
      v31 = v14[3022];
      if (!v31)
      {
        goto LABEL_14;
      }

      goto LABEL_61;
    }

LABEL_60:
    v14[3030] = v30;
    operator delete(v30);
    std::vector<std::unique_ptr<operations_research::sat::LinearConstraintPropagator<true>>>::~vector[abi:ne200100](a14);
    v31 = v14[3022];
    if (!v31)
    {
LABEL_14:
      v32 = v14[3019];
      if (!v32)
      {
        goto LABEL_15;
      }

      goto LABEL_62;
    }

LABEL_61:
    v14[3023] = v31;
    operator delete(v31);
    v32 = v14[3019];
    if (!v32)
    {
LABEL_15:
      v33 = *a12;
      if (!*a12)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

LABEL_62:
    v14[3020] = v32;
    operator delete(v32);
    v33 = *a12;
    if (!*a12)
    {
LABEL_17:
      operations_research::sat::ImpliedBoundsProcessor::~ImpliedBoundsProcessor((v14 + v17));
      operations_research::sat::BoolRLTCutHelper::~BoolRLTCutHelper((v18 + 1456));
      if (*v15 >= 2uLL)
      {
        operator delete((v14[2959] - (v14[2958] & 1) - 8));
        v34 = v14[2954];
        if (!v34)
        {
LABEL_19:
          v35 = v14[2951];
          if (!v35)
          {
            goto LABEL_20;
          }

          goto LABEL_48;
        }
      }

      else
      {
        v34 = v14[2954];
        if (!v34)
        {
          goto LABEL_19;
        }
      }

      v14[2955] = v34;
      operator delete(v34);
      v35 = v14[2951];
      if (!v35)
      {
LABEL_20:
        v36 = v14[2948];
        if (!v36)
        {
          goto LABEL_21;
        }

        goto LABEL_49;
      }

LABEL_48:
      v14[2952] = v35;
      operator delete(v35);
      v36 = v14[2948];
      if (!v36)
      {
LABEL_21:
        v37 = v14[2945];
        if (!v37)
        {
          goto LABEL_22;
        }

        goto LABEL_50;
      }

LABEL_49:
      v14[2949] = v36;
      operator delete(v36);
      v37 = v14[2945];
      if (!v37)
      {
LABEL_22:
        v38 = v14[2942];
        if (!v38)
        {
          goto LABEL_23;
        }

        goto LABEL_51;
      }

LABEL_50:
      v14[2946] = v37;
      operator delete(v37);
      v38 = v14[2942];
      if (!v38)
      {
LABEL_23:
        v39 = v14[2939];
        if (!v39)
        {
          goto LABEL_24;
        }

        goto LABEL_52;
      }

LABEL_51:
      v14[2943] = v38;
      operator delete(v38);
      v39 = v14[2939];
      if (!v39)
      {
LABEL_24:
        v40 = v14[2936];
        if (!v40)
        {
          goto LABEL_25;
        }

        goto LABEL_53;
      }

LABEL_52:
      v14[2940] = v39;
      operator delete(v39);
      v40 = v14[2936];
      if (!v40)
      {
LABEL_25:
        v41 = v14[2933];
        if (!v41)
        {
          goto LABEL_26;
        }

        goto LABEL_54;
      }

LABEL_53:
      v14[2937] = v40;
      operator delete(v40);
      v41 = v14[2933];
      if (!v41)
      {
LABEL_26:
        v42 = v14[2930];
        if (!v42)
        {
          goto LABEL_27;
        }

        goto LABEL_55;
      }

LABEL_54:
      v14[2934] = v41;
      operator delete(v41);
      v42 = v14[2930];
      if (!v42)
      {
LABEL_27:
        operations_research::sat::ScatteredIntegerVector::~ScatteredIntegerVector((v18 + 1024));
        v43 = v14[2914];
        if (!v43)
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }

LABEL_55:
      v14[2931] = v42;
      operator delete(v42);
      operations_research::sat::ScatteredIntegerVector::~ScatteredIntegerVector((v18 + 1024));
      v43 = v14[2914];
      if (!v43)
      {
LABEL_29:
        operations_research::sat::IntegerRoundingCutHelper::~IntegerRoundingCutHelper((v14 + 2858));
        operations_research::sat::FlowCoverCutHelper::~FlowCoverCutHelper((v14 + 2830));
        operations_research::sat::CoverCutHelper::~CoverCutHelper((v14 + 2776));
        operations_research::sat::ZeroHalfCutHelper::~ZeroHalfCutHelper((v14 + 2751));
        operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>::~SparseBitset(v14 + 2742);
        operations_research::glop::RevisedSimplex::~RevisedSimplex((v14 + 171));
        operations_research::glop::LinearProgram::~LinearProgram((v14 + 115));
        v44 = v14[112];
        if (v44)
        {
          v14[113] = v44;
          operator delete(v44);
        }

        operations_research::glop::GlopParameters::~GlopParameters((v14 + 71));
        v45 = v14[68];
        if (v45)
        {
          v14[69] = v45;
          operator delete(v45);
          v46 = v14[65];
          if (!v46)
          {
LABEL_33:
            v47 = v14[60];
            if (!v47)
            {
              goto LABEL_34;
            }

            goto LABEL_41;
          }
        }

        else
        {
          v46 = v14[65];
          if (!v46)
          {
            goto LABEL_33;
          }
        }

        v14[66] = v46;
        operator delete(v46);
        v47 = v14[60];
        if (!v47)
        {
LABEL_34:
          v48 = v14[57];
          if (!v48)
          {
            goto LABEL_35;
          }

          goto LABEL_42;
        }

LABEL_41:
        v14[61] = v47;
        operator delete(v47);
        v48 = v14[57];
        if (!v48)
        {
LABEL_35:
          v49 = v14[54];
          if (!v49)
          {
            goto LABEL_36;
          }

          goto LABEL_43;
        }

LABEL_42:
        v14[58] = v48;
        operator delete(v48);
        v49 = v14[54];
        if (!v49)
        {
LABEL_36:
          v50 = v14[51];
          if (!v50)
          {
            goto LABEL_37;
          }

          goto LABEL_44;
        }

LABEL_43:
        v14[55] = v49;
        operator delete(v49);
        v50 = v14[51];
        if (!v50)
        {
LABEL_37:
          v51 = v14[48];
          if (!v51)
          {
            goto LABEL_38;
          }

          goto LABEL_45;
        }

LABEL_44:
        v14[52] = v50;
        operator delete(v50);
        v51 = v14[48];
        if (!v51)
        {
LABEL_38:
          operations_research::sat::TopNCuts::~TopNCuts((v14 + 41));
          operations_research::sat::LinearConstraintManager::~LinearConstraintManager((v14 + 2));
          _Unwind_Resume(a1);
        }

LABEL_45:
        v14[49] = v51;
        operator delete(v51);
        operations_research::sat::TopNCuts::~TopNCuts((v14 + 41));
        operations_research::sat::LinearConstraintManager::~LinearConstraintManager((v14 + 2));
        _Unwind_Resume(a1);
      }

LABEL_28:
      v14[2915] = v43;
      operator delete(v43);
      goto LABEL_29;
    }

LABEL_16:
    v14[3017] = v33;
    operator delete(v33);
    goto LABEL_17;
  }

LABEL_8:
  v14[3052] = v26;
  operator delete(v26);
  goto LABEL_9;
}

void **std::vector<operations_research::sat::CutGenerator>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (!*a1)
  {
    return a1;
  }

  v3 = a1[1];
  v4 = *a1;
  if (v3 == v2)
  {
    goto LABEL_13;
  }

  v5 = v3 - 32;
  do
  {
    v6 = *(v3 - 1);
    if (v3 - 32 == v6)
    {
      (*(*v6 + 32))(v6);
      v7 = *(v3 - 7);
      if (!v7)
      {
        goto LABEL_4;
      }

LABEL_11:
      *(v3 - 6) = v7;
      operator delete(v7);
      goto LABEL_4;
    }

    if (v6)
    {
      (*(*v6 + 40))(v6);
    }

    v7 = *(v3 - 7);
    if (v7)
    {
      goto LABEL_11;
    }

LABEL_4:
    v3 -= 64;
    v5 -= 64;
  }

  while (v3 != v2);
  v4 = *a1;
LABEL_13:
  a1[1] = v2;
  operator delete(v4);
  return a1;
}

void *std::vector<std::unique_ptr<operations_research::sat::LinearConstraintPropagator<true>>>::~vector[abi:ne200100](void *a1)
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

void operations_research::sat::ScatteredIntegerVector::~ScatteredIntegerVector(operations_research::sat::ScatteredIntegerVector *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    *(this + 2) = v4;
    operator delete(v4);
  }
}

uint64_t operations_research::sat::LinearProgrammingConstraint::AddLinearConstraint(uint64_t a1, __int128 *a2)
{
  v5 = *a2;
  v6 = *(a2 + 4);
  v2 = *(a2 + 24);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  v7 = v2;
  operations_research::sat::LinearConstraintManager::Add(a1 + 16, &v5, 0);
  v3 = *(&v7 + 1);
  *(&v7 + 1) = 0;
  if (v3)
  {
    MEMORY[0x23EED9440](v3, 0x1000C8000313F17);
  }

  result = v7;
  *&v7 = 0;
  if (result)
  {
    return MEMORY[0x23EED9440](result, 0x1000C8052888210);
  }

  return result;
}

void operations_research::sat::LinearProgrammingConstraint::SetObjectiveCoefficient(uint64_t a1, int a2, uint64_t a3)
{
  v3 = a1 + 20480;
  if (*(a1 + 24368) == 1)
  {
    operations_research::sat::LinearProgrammingConstraint::SetObjectiveCoefficient(&v28);
  }

  *(a1 + 23688) = 1;
  v6 = a2 & 0xFFFFFFFE;
  v7 = a2 & 0xFFFFFFFE;
  if (a2)
  {
    v8 = -a3;
  }

  else
  {
    v8 = a3;
  }

  operations_research::sat::LinearConstraintManager::SetObjectiveCoefficient(a1 + 16, a2 & 0xFFFFFFFE, v8);
  v10 = *(a1 + 23656);
  if (v10 > 1)
  {
    v11 = 0;
    _X10 = *(a1 + 23672);
    __asm { PRFM            #4, [X10] }

    v18 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v7) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v7));
    v19 = vdup_n_s8(v18 & 0x7F);
    v20 = ((v18 >> 7) ^ (_X10 >> 12)) & v10;
    v21 = *(_X10 + v20);
    v22 = vceq_s8(v21, v19);
    if (!v22)
    {
      goto LABEL_12;
    }

LABEL_9:
    v23 = *(a1 + 23680);
    while (1)
    {
      v24 = (v20 + (__clz(__rbit64(v22)) >> 3)) & v10;
      if (*(v23 + 8 * v24) == v6)
      {
        break;
      }

      v22 &= ((v22 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v22)
      {
LABEL_12:
        while (!*&vceq_s8(v21, 0x8080808080808080))
        {
          v11 += 8;
          v20 = (v11 + v20) & v10;
          v21 = *(_X10 + v20);
          v22 = vceq_s8(v21, v19);
          if (v22)
          {
            goto LABEL_9;
          }
        }

LABEL_25:
        absl::lts_20240722::base_internal::ThrowStdOutOfRange("absl::container_internal::raw_hash_map<>::at", v9);
      }
    }

    v25 = v23 + 8 * v24;
    if (!(_X10 + v24))
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (*(a1 + 23664) < 2uLL)
    {
      goto LABEL_25;
    }

    v25 = v3 + 3192;
    v27 = &absl::lts_20240722::container_internal::kSooControl;
    if (*(v3 + 3192) != v6)
    {
      v27 = 0;
    }

    if (!v27)
    {
      goto LABEL_25;
    }
  }

  LODWORD(v28) = *(v25 + 4);
  *(&v28 + 1) = v8;
  std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](a1 + 480, &v28);
  if (a3 >= 0)
  {
    v26 = a3;
  }

  else
  {
    v26 = -a3;
  }

  if (*(a1 + 512) > v26)
  {
    v26 = *(a1 + 512);
  }

  *(a1 + 512) = v26;
}

BOOL operations_research::sat::LinearProgrammingConstraint::CreateLpFromConstraintManager(operations_research::sat::LinearProgrammingConstraint *this)
{
  operations_research::glop::RevisedSimplex::NotifyThatMatrixIsChangedForNextSolve(this + 1368);
  *(this + 66) = *(this + 65);
  *(this + 49) = *(this + 48);
  *(this + 52) = *(this + 51);
  *(this + 69) = *(this + 68);
  v2 = *(this + 9);
  v126 = *(this + 10);
  if (v2 == v126)
  {
LABEL_62:
    operations_research::glop::LinearProgram::Clear((this + 920));
    if (*(this + 2955) != *(this + 2954))
    {
      v59 = 0;
      do
      {
        v129[0] = v59;
        LODWORD(v131) = operations_research::glop::LinearProgram::CreateNewVariable((this + 920));
        if (v59 != v131)
        {
          operations_research::sat::LinearProgrammingConstraint::CreateLpFromConstraintManager(v129, &v131);
        }

        ++v59;
      }

      while (v59 < ((*(this + 2955) - *(this + 2954)) >> 2));
    }

    *(this + 64) = 0;
    v60 = *(this + 60);
    v61 = *(this + 61);
    if (v60 == v61)
    {
      v76 = 0;
      v62 = 0;
      v77 = *(this + 60);
    }

    else
    {
      LODWORD(v62) = 0;
      do
      {
        while (1)
        {
          v70 = *v60;
          v71 = *(*(this + 2954) + 4 * v70);
          v72 = *(*(this + 2965) + 152);
          v73 = *(v72 + 24 * v71);
          v74 = *(v72 + 24 * (v71 ^ 1));
          v75 = *(v60 + 1);
          if (v73 + v74)
          {
            break;
          }

          *(this + 63) += v75 * v73;
          v60 += 4;
          if (v60 == v61)
          {
            goto LABEL_80;
          }
        }

        if (v75 >= 0)
        {
          v63 = *(v60 + 1);
        }

        else
        {
          v63 = -v75;
        }

        if (*(this + 64) > v63)
        {
          v63 = *(this + 64);
        }

        *(this + 64) = v63;
        v64 = v62 + 1;
        v65 = *(this + 60) + 16 * v62;
        *v65 = v70;
        v66 = *(v60 + 1);
        *(v65 + 8) = v66;
        v68 = *v60;
        v60 += 4;
        v67 = v68;
        v69 = v66;
        if (v66 < 0x8000000000000003)
        {
          v69 = -INFINITY;
        }

        if (v66 > 0x7FFFFFFFFFFFFFFDLL)
        {
          v69 = INFINITY;
        }

        operations_research::glop::LinearProgram::SetObjectiveCoefficient(this + 920, v67, v69);
        LODWORD(v62) = v64;
      }

      while (v60 != v61);
LABEL_80:
      v76 = *(this + 64);
      v62 = v62;
      v60 = *(this + 60);
      v77 = *(this + 61);
    }

    v79 = *(this + 63);
    if (v79 >= 0)
    {
      v80 = *(this + 63);
    }

    else
    {
      v80 = -v79;
    }

    if (v76 <= v80)
    {
      v76 = v80;
    }

    *(this + 64) = v76;
    v81 = (v77 - v60) >> 4;
    if (v62 <= v81)
    {
      if (v62 < v81)
      {
        *(this + 61) = &v60[4 * v62];
      }
    }

    else
    {
      std::vector<std::pair<int,long long>>::__append(this + 480, v62 - v81);
      v79 = *(this + 63);
    }

    v82 = v79;
    if (v79 < 0x8000000000000003)
    {
      v82 = -INFINITY;
    }

    if (v79 > 0x7FFFFFFFFFFFFFFDLL)
    {
      v82 = INFINITY;
    }

    operations_research::glop::LinearProgram::SetObjectiveOffset(this + 920, v82);
    v83 = *(this + 65);
    v84 = *(this + 66);
    if (v83 == v84)
    {
LABEL_121:
      *(this + 1329) = 1;
      v95 = *(this + 2955) - *(this + 2954);
      if ((v95 >> 2) >= 1)
      {
        v96 = 0;
        do
        {
          v97 = *(*(this + 2954) + 4 * v96);
          v98 = *(*(this + 2965) + 152);
          v99 = *(v98 + 24 * v97);
          v100 = v99;
          if (v99 < 0x8000000000000003)
          {
            v100 = -INFINITY;
          }

          if (v99 > 0x7FFFFFFFFFFFFFFDLL)
          {
            v100 = INFINITY;
          }

          v101 = -*(v98 + 24 * (v97 ^ 1));
          v102 = v101;
          if (v101 < 0x8000000000000003)
          {
            v102 = -INFINITY;
          }

          if (v101 > 0x7FFFFFFFFFFFFFFDLL)
          {
            v102 = INFINITY;
          }

          operations_research::glop::LinearProgram::SetVariableBounds(this + 920, v96++, v100, v102);
        }

        while (((v95 >> 2) & 0x7FFFFFFF) != v96);
      }

      operations_research::glop::LpScalingHelper::Scale((this + 21936), (this + 568), (this + 920));
      v103 = *(this + 2955) - *(this + 2954);
      if ((v103 >> 2) >= 1)
      {
        v104 = 0;
        v105 = (v103 >> 2) & 0x7FFFFFFF;
        do
        {
          v106 = *(*(this + 2965) + 40);
          v107 = 8 * *(*(this + 2954) + 4 * v104);
          v108 = *(v106 + v107);
          v109 = v108;
          if (v108 < 0x8000000000000003)
          {
            v109 = -INFINITY;
          }

          if (v108 <= 0x7FFFFFFFFFFFFFFDLL)
          {
            v110 = v109;
          }

          else
          {
            v110 = INFINITY;
          }

          v111 = -*(v106 + (v107 ^ 8));
          v112 = v111;
          if (v111 < 0x8000000000000003)
          {
            v112 = -INFINITY;
          }

          if (v111 <= 0x7FFFFFFFFFFFFFFDLL)
          {
            v113 = v112;
          }

          else
          {
            v113 = INFINITY;
          }

          v114 = operations_research::glop::LpScalingHelper::VariableScalingFactor(this + 21936, v104);
          operations_research::glop::LinearProgram::SetVariableBounds(this + 920, v104++, v114 * v110, v114 * v113);
        }

        while (v105 != v104);
      }

      if (*(*(this + 2962) + 274))
      {
        *(this + 2739) = *(this + 2738);
        if ((v95 >> 2) >= 1)
        {
          v115 = 0;
          do
          {
            v116 = *(*(this + 2954) + 4 * v115);
            v117 = *(*(this + 2965) + 152);
            v118 = *(v117 + 24 * v116);
            v119 = *(v117 + 24 * (v116 ^ 1));
            if (v118)
            {
              v120 = 0;
            }

            else
            {
              v120 = v119 == -1;
            }

            if (v120)
            {
              v121 = operations_research::glop::LpScalingHelper::VariableScalingFactor(this + 21936, v115);
              operations_research::glop::RevisedSimplex::SetIntegralityScale(this + 1368, v115, 1.0 / v121);
            }

            ++v115;
          }

          while (((v95 >> 2) & 0x7FFFFFFF) != v115);
        }
      }

      result = 1;
      *(this + 1329) = 1;
      if (dword_2810C0880 >= 3)
      {
        if (absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled3(&off_2810C0878, dword_2810C0880))
        {
          absl::lts_20240722::log_internal::LogMessage::LogMessage(v129, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_programming_constraint.cc", 487);
          v123 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v129, 3);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v123, "LP relaxation: ", 0xFuLL);
          operations_research::glop::LinearProgram::GetDimensionString((this + 920), v130);
          v124 = absl::lts_20240722::log_internal::LogMessage::operator<<(v123, v130);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v124, ". ", 2uLL);
          v131 = 0xCCCCCCCCCCCCCCCDLL * ((*(this + 7) - *(this + 6)) >> 4);
          v125 = absl::lts_20240722::log_internal::LogMessage::operator<<<unsigned long,0>(v124, &v131);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v125, " Managed constraints.", 0x15uLL);
          operations_research::sat::BruteForceOrthogonalPacking(v130, v129);
        }

        return 1;
      }

      return result;
    }

    while (1)
    {
      NewConstraint = operations_research::glop::LinearProgram::CreateNewConstraint((this + 920));
      if (*(v83 + 24))
      {
        v86 = -INFINITY;
        if ((*(v83 + 25) & 1) == 0)
        {
          goto LABEL_102;
        }
      }

      else
      {
        v86 = *v83;
        if (*v83 < 0x8000000000000003)
        {
          v86 = -INFINITY;
        }

        if (*v83 > 0x7FFFFFFFFFFFFFFDLL)
        {
          v86 = INFINITY;
        }

        if ((*(v83 + 25) & 1) == 0)
        {
LABEL_102:
          v87 = *(v83 + 8);
          v88 = v87;
          if (v87 < 0x8000000000000003)
          {
            v88 = -INFINITY;
          }

          if (v87 > 0x7FFFFFFFFFFFFFFDLL)
          {
            v88 = INFINITY;
          }

          goto LABEL_113;
        }
      }

      v88 = INFINITY;
LABEL_113:
      v89 = NewConstraint;
      operations_research::glop::LinearProgram::SetConstraintBounds(this + 920, NewConstraint, v86, v88);
      if (*(v83 + 20) >= 1)
      {
        v90 = 0;
        do
        {
          v91 = v90 + *(v83 + 16);
          v92 = *(*(this + 48) + 4 * v91);
          v93 = *(*(this + 51) + 8 * v91);
          v94 = v93;
          if (v93 < 0x8000000000000003)
          {
            v94 = -INFINITY;
          }

          if (v93 > 0x7FFFFFFFFFFFFFFDLL)
          {
            v94 = INFINITY;
          }

          operations_research::glop::LinearProgram::SetCoefficient(this + 920, v89, v92, v94);
          ++v90;
        }

        while (v90 < *(v83 + 20));
      }

      v83 += 32;
      if (v83 == v84)
      {
        goto LABEL_121;
      }
    }
  }

  v128 = (this + 23672);
  while (1)
  {
    v3 = 80 * *v2;
    v4 = *(this + 6) + v3;
    memset(v130, 0, sizeof(v130));
    std::vector<operations_research::sat::LinearProgrammingConstraint::LinearConstraintInternal>::push_back[abi:ne200100](this + 520, v130);
    v6 = *(this + 66);
    *(v6 - 32) = *v4;
    v7 = *(v4 + 8);
    *(v6 - 24) = v7;
    v8 = *(this + 6) + v3;
    *(v6 - 8) = *(v8 + 77);
    *(v6 - 7) = *(v8 + 76);
    if (*v4 > v7)
    {
      break;
    }

    v127 = v2;
    v9 = *(v4 + 16);
    *&v130[0] = 0;
    v10 = *v4;
    if (*v4 < 0)
    {
      v10 = -v10;
    }

    v11 = v10 & ~(v10 >> 63);
    *&v130[0] = v11;
    v12 = *(v4 + 8);
    if (v12 < 0)
    {
      v12 = -v12;
    }

    if (v11 <= v12)
    {
      v11 = v12;
    }

    *&v130[0] = v11;
    *(v6 - 16) = (*(this + 49) - *(this + 48)) >> 2;
    *(v6 - 12) = v9;
    if (v9 >= 1)
    {
      for (i = 0; i != v9; ++i)
      {
        v15 = *(v4 + 32);
        v16 = *(*(v4 + 24) + 4 * i);
        v17 = *(v15 + 8 * i);
        if (v17 >= 0)
        {
          v18 = *(v15 + 8 * i);
        }

        else
        {
          v18 = -v17;
        }

        if (*&v130[0] > v18)
        {
          v18 = *&v130[0];
        }

        *&v130[0] = v18;
        v19 = *(this + 2957);
        if (v19 > 1)
        {
          v20 = 0;
          _X10 = *v128;
          __asm { PRFM            #4, [X10] }

          v26 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v16) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v16));
          v27 = vdup_n_s8(v26 & 0x7F);
          v28 = ((v26 >> 7) ^ (*v128 >> 12)) & v19;
          v29 = *(*v128 + v28);
          v30 = vceq_s8(v29, v27);
          if (!v30)
          {
            goto LABEL_27;
          }

LABEL_24:
          v31 = *(this + 2960);
          while (1)
          {
            v32 = (v28 + (__clz(__rbit64(v30)) >> 3)) & v19;
            if (*(v31 + 8 * v32) == v16)
            {
              break;
            }

            v30 &= ((v30 & 0x8080808080808080) - 1) & 0x8080808080808080;
            if (!v30)
            {
LABEL_27:
              while (!*&vceq_s8(v29, 0x8080808080808080))
              {
                v20 += 8;
                v28 = (v20 + v28) & v19;
                v29 = *(_X10 + v28);
                v30 = vceq_s8(v29, v27);
                if (v30)
                {
                  goto LABEL_24;
                }
              }

LABEL_161:
              absl::lts_20240722::base_internal::ThrowStdOutOfRange("absl::container_internal::raw_hash_map<>::at", v5);
            }
          }

          v16 = v31 + 8 * v32;
          if (!(_X10 + v32))
          {
            goto LABEL_161;
          }
        }

        else
        {
          if (*(this + 2958) < 2uLL)
          {
            goto LABEL_161;
          }

          _ZF = *v128 == v16;
          if (*v128 == v16)
          {
            v16 = this + 23672;
          }

          v34 = &absl::lts_20240722::container_internal::kSooControl;
          if (!_ZF)
          {
            v34 = 0;
          }

          if (!v34)
          {
            goto LABEL_161;
          }
        }

        v35 = *(v16 + 4);
        v37 = *(this + 49);
        v36 = *(this + 50);
        if (v37 >= v36)
        {
          v39 = *(this + 48);
          v40 = v37 - v39;
          v41 = (v37 - v39) >> 2;
          v42 = v41 + 1;
          if ((v41 + 1) >> 62)
          {
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
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

LABEL_164:
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v45 = (v37 - v39) >> 2;
          v46 = (4 * v41);
          v47 = (4 * v41 - 4 * v45);
          *v46 = v35;
          v38 = v46 + 1;
          memcpy(v47, v39, v40);
          *(this + 48) = v47;
          *(this + 49) = v38;
          *(this + 50) = 0;
          if (v39)
          {
            operator delete(v39);
          }
        }

        else
        {
          *v37 = v35;
          v38 = v37 + 4;
        }

        *(this + 49) = v38;
        v49 = *(this + 52);
        v48 = *(this + 53);
        if (v49 < v48)
        {
          *v49 = v17;
          v14 = v49 + 1;
        }

        else
        {
          v50 = *(this + 51);
          v51 = v49 - v50;
          v52 = (v49 - v50) >> 3;
          v53 = v52 + 1;
          if ((v52 + 1) >> 61)
          {
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          v54 = v48 - v50;
          if (v54 >> 2 > v53)
          {
            v53 = v54 >> 2;
          }

          if (v54 >= 0x7FFFFFFFFFFFFFF8)
          {
            v55 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v55 = v53;
          }

          if (v55)
          {
            if (!(v55 >> 61))
            {
              operator new();
            }

            goto LABEL_164;
          }

          v56 = (v49 - v50) >> 3;
          v57 = (8 * v52);
          v58 = (8 * v52 - 8 * v56);
          *v57 = v17;
          v14 = v57 + 1;
          memcpy(v58, v50, v51);
          *(this + 51) = v58;
          *(this + 52) = v14;
          *(this + 53) = 0;
          if (v50)
          {
            operator delete(v50);
          }
        }

        *(this + 52) = v14;
      }
    }

    std::vector<long long>::push_back[abi:ne200100](this + 544, v130);
    v2 = v127 + 1;
    if (v127 + 1 == v126)
    {
      goto LABEL_62;
    }
  }

  if (dword_2810C0868 < 1)
  {
    return 0;
  }

  result = absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&_MergedGlobals_22, dword_2810C0868);
  if (result)
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v130, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_programming_constraint.cc", 380);
    v122 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v130, 1);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v122, "Trivial infeasible bound in an LP constraint", 0x2CuLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v130);
    return 0;
  }

  return result;
}

void sub_23CC3F094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CC3F0A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CC3F0BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CC3F0D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  absl::lts_20240722::log_internal::LogMessage::~LogMessage(&a13);
  _Unwind_Resume(a1);
}

void operations_research::sat::LinearProgrammingConstraint::FillReducedCostReasonIn(void *a1, void *a2, void *a3)
{
  a3[1] = *a3;
  v5 = a1[2955] - a1[2954];
  if ((v5 >> 2) >= 1)
  {
    v7 = 0;
    v8 = (v5 >> 2) & 0x7FFFFFFF;
    do
    {
      v10 = *(*a2 + 8 * v7);
      if (v10 > 0.000001)
      {
        v9 = *(*(a1[2965] + 40) + 8 * *(a1[2954] + 4 * v7));
        *&v13 = *(a1[2954] + 4 * v7);
        *(&v13 + 1) = v9;
      }

      else
      {
        if (v10 >= -0.000001)
        {
          goto LABEL_5;
        }

        v11 = *(a1[2954] + 4 * v7);
        v12 = *(*(a1[2965] + 40) + ((8 * v11) ^ 8));
        if (v12 - 1 > 0x7FFFFFFFFFFFFFFDLL)
        {
          v12 = 0x7FFFFFFFFFFFFFFFLL;
        }

        *&v13 = v11 ^ 1;
        *(&v13 + 1) = v12;
      }

      std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](a3, &v13);
LABEL_5:
      ++v7;
    }

    while (v8 != v7);
  }

  operations_research::sat::IntegerTrail::RemoveLevelZeroBounds(a1[2965], a3);
}

void operations_research::sat::LinearProgrammingConstraint::RegisterWith(operations_research::sat::LinearProgrammingConstraint *this, operations_research::sat::Model *a2)
{
  v4 = this + 20480;
  *(this + 24368) = 1;
  v5 = operations_research::sat::Model::GetOrCreate<operations_research::sat::LinearProgrammingConstraintCollection>(a2);
  v29 = this;
  std::vector<absl::lts_20240722::LogSink *>::push_back[abi:ne200100](v5, &v29);
  v6 = *(this + 60);
  v7 = *(this + 61);
  v8 = 126 - 2 * __clz((v7 - v6) >> 4);
  if (v7 == v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,long long> *,false>(v6, v7, &v29, v9, 1);
  if ((*(*(this + 2962) + 726) & 1) == 0 && (*(this + 7) - *(this + 6)) <= 79999999)
  {
    operations_research::sat::LinearConstraintManager::AddAllConstraintsToLp((this + 16));
  }

  if (operations_research::sat::LinearProgrammingConstraint::CreateLpFromConstraintManager(this))
  {
    v10 = operations_research::sat::Model::GetOrCreate<operations_research::sat::GenericLiteralWatcher>(a2);
    v11 = operations_research::sat::GenericLiteralWatcher::Register(v10, this);
    v12 = *(this + 2955) - *(this + 2954);
    if ((v12 >> 2) >= 1)
    {
      v13 = 0;
      v14 = (v12 >> 2) & 0x7FFFFFFF;
      do
      {
        operations_research::sat::GenericLiteralWatcher::WatchIntegerVariable(v10, *(*(this + 2954) + 4 * v13), v11, v13);
        ++v13;
      }

      while (v14 != v13);
    }

    if (v4[3208])
    {
      v15 = *(v4 + 803);
      if ((~v15 & 0xFFFFFFFE) != 0)
      {
        v16 = (v15 << 32) ^ 0x100000000;
        v17 = v16 >> 32;
        v19 = *(v10 + 11);
        v18 = *(v10 + 12);
        v20 = 0xAAAAAAAAAAAAAAABLL * ((v18 - v19) >> 3);
        if (v20 <= v16 >> 32)
        {
          v21 = (v16 + 0x100000000) >> 32;
          if (v21 <= v20)
          {
            if (v21 < v20)
            {
              v22 = v19 + 24 * v21;
              if (v18 != v22)
              {
                v23 = *(v10 + 12);
                do
                {
                  v25 = *(v23 - 24);
                  v23 -= 24;
                  v24 = v25;
                  if (v25)
                  {
                    *(v18 - 16) = v24;
                    operator delete(v24);
                  }

                  v18 = v23;
                }

                while (v23 != v22);
              }

              *(v10 + 12) = v22;
            }
          }

          else
          {
            std::vector<std::vector<operations_research::sat::GenericLiteralWatcher::WatchData>>::__append(v10 + 88, v21 - v20);
          }
        }

        v29 = (v11 | 0xFFFFFFFF00000000);
        v26 = (*(v10 + 11) + 24 * v17);
        v27 = v26[1];
        if (*v26 == v27 || *(v27 - 8) != v11 || *(v27 - 4) != -1)
        {
          std::vector<long long>::push_back[abi:ne200100](v26, &v29);
        }
      }
    }

    operations_research::sat::GenericLiteralWatcher::SetPropagatorPriority(v10, v11, 2);
    operations_research::sat::GenericLiteralWatcher::AlwaysCallAtLevelZero(v10, v11);
    v28 = *(this + 2965);
    v29 = (this + 8);
    std::vector<absl::lts_20240722::LogSink *>::push_back[abi:ne200100](v28 + 768, &v29);
    operations_research::sat::GenericLiteralWatcher::RegisterReversibleInt(v10, v11, this + 6050);
  }

  else
  {
    *(operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a2) + 528) = 1;
  }
}

double operations_research::sat::LinearProgrammingConstraint::SetLevel(operations_research::sat::LinearProgrammingConstraint *this, int a2)
{
  v4 = this + 20480;
  if (a2)
  {
    v5 = *(this + 6050);
    v6 = *(this + 3027);
    v7 = *(this + 3026);
    v8 = (v6 - v7) >> 3;
    v9 = v5 >= v8;
    v10 = v5 - v8;
    if (v5 > v8)
    {
      std::vector<std::unique_ptr<operations_research::SparsePermutation>>::__append(this + 24208, v10);
      goto LABEL_11;
    }
  }

  else
  {
    v5 = 0;
    *(this + 6050) = 0;
    v6 = *(this + 3027);
    v7 = *(this + 3026);
    v12 = (v6 - v7) >> 3;
    v9 = v12 == 0;
    v10 = -v12;
  }

  if (!v9)
  {
    v13 = (v7 + 8 * v5);
    while (v6 != v13)
    {
      v15 = *--v6;
      v14 = v15;
      *v6 = 0;
      if (v15)
      {
        (*(*v14 + 8))(v14, v10);
      }
    }

    *(this + 3027) = v13;
  }

LABEL_11:
  v16 = *(v4 + 930);
  v17 = *(this + 3029);
  v18 = (*(this + 3030) - v17) >> 3;
  if (v16 <= v18)
  {
    if (v16 < v18)
    {
      *(this + 3030) = v17 + 8 * v16;
      v19 = v4[3780];
      if (v19 == 1)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v19 = v4[3780];
      if (v19 == 1)
      {
        goto LABEL_22;
      }
    }

LABEL_16:
    if (*(v4 + 958) > a2)
    {
      goto LABEL_26;
    }

    goto LABEL_17;
  }

  std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::__append(this + 24232, v16 - v18);
  v19 = v4[3780];
  if (v19 != 1)
  {
    goto LABEL_16;
  }

LABEL_22:
  if (*(v4 + 944) <= a2)
  {
    LOBYTE(v19) = 1;
    if (*(v4 + 958) > a2)
    {
      goto LABEL_26;
    }

LABEL_17:
    *(v4 + 958) = a2;
    if (a2)
    {
      LOBYTE(v19) = 1;
    }

    if ((v19 & 1) == 0)
    {
      goto LABEL_29;
    }

    return result;
  }

  LOBYTE(v19) = 0;
  v4[3780] = 0;
  if (*(v4 + 958) <= a2)
  {
    goto LABEL_17;
  }

LABEL_26:
  v4[3836] = 0;
  *(this + 3040) = 0xFFF0000000000000;
  *(v4 + 958) = a2;
  if (a2)
  {
    LOBYTE(v19) = 1;
  }

  if ((v19 & 1) == 0)
  {
LABEL_29:
    v20 = *(this + 3041);
    v21 = *(this + 3042);
    if (v20 != v21)
    {
      v4[3780] = 1;
      std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(this + 3033, v20, v21, (v21 - v20) >> 3);
      *(v4 + 944) = 0;
      v22 = *(this + 3033);
      v23 = *(this + 3034) - v22;
      if (v23)
      {
        v24 = 0;
        v25 = v23 >> 3;
        v26 = *(this + 2954);
        v27 = **(this + 3045);
        v28 = 1;
        do
        {
          v29 = *(v22 + 8 * v24);
          v30 = *(v26 + 4 * v24);
          *(v27 + 8 * v30) = v29;
          result = -v29;
          *(v27 + 8 * (v30 ^ 1)) = result;
          v24 = v28++;
        }

        while (v25 > v24);
      }
    }
  }

  return result;
}

void operations_research::sat::LinearProgrammingConstraint::AddCutGenerator(uint64_t *a1, uint64_t a2)
{
  v3 = a1[3048];
  if (v3 >= a1[3049])
  {
    std::vector<operations_research::sat::CutGenerator>::__emplace_back_slow_path<operations_research::sat::CutGenerator>(a1 + 3047, a2);
    a1[3048] = v6;
    return;
  }

  *v3 = *a2;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 8) = 0;
  v4 = a2 + 56;
  v5 = *(a2 + 56);
  *(v3 + 8) = *(a2 + 8);
  *(v3 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  if (!v5)
  {
    v4 = v3 + 56;
    goto LABEL_7;
  }

  if (v5 != a2 + 32)
  {
    *(v3 + 56) = v5;
LABEL_7:
    *v4 = 0;
    a1[3048] = v3 + 64;
    return;
  }

  *(v3 + 56) = v3 + 32;
  (*(**v4 + 24))();
  a1[3048] = v3 + 64;
}

uint64_t operations_research::sat::LinearProgrammingConstraint::IncrementalPropagate(uint64_t a1, int **a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  if (*(a1 + 24896) != 1)
  {
    return 1;
  }

  v6 = *(a1 + 24240);
  if (*(a1 + 24232) != v6)
  {
    v7 = *(v6 - 8);
    if (v7 >= 10000001)
    {
      a3.n128_f64[0] = v7 + -10000000.0;
      a5.n128_u64[0] = 0x4059000000000000;
      a4.n128_f64[0] = (-1431655765 * ((*(*(a1 + 23720) + 160) - *(*(a1 + 23720) + 152)) >> 3)) * 100.0;
      if (a3.n128_f64[0] > a4.n128_f64[0])
      {
        return 1;
      }
    }
  }

  if (*(a1 + 24260) == 1 && ((*(*(a1 + 23728) + 8) & 0xFFFFFFF) != 0 || *(a1 + 24352) == 1))
  {
    v8 = *a2;
    v9 = a2[1];
    if (*a2 != v9)
    {
      v10 = *(*(a1 + 23720) + 40);
      a3.n128_u64[0] = 0xBF1A36E2EB1C432DLL;
      a4.n128_u64[0] = 0xFFF0000000000000;
      a5.n128_u64[0] = 0x3F1A36E2EB1C432DLL;
      a6.n128_u64[0] = 0x7FF0000000000000;
      while (1)
      {
        v11 = *v8;
        v12 = 8 * *(*(a1 + 23632) + 4 * v11);
        v13 = *(v10 + v12);
        v14 = v13 + -0.0001;
        v15 = -*(v10 + (v12 ^ 8));
        if (v13 < 0x8000000000000003)
        {
          v14 = -INFINITY;
        }

        v16 = v15 + 0.0001;
        if (v15 < 0x8000000000000003)
        {
          v16 = -INFINITY;
        }

        v17 = *(*(a1 + 24264) + 8 * v11);
        if (v13 > 0x7FFFFFFFFFFFFFFDLL)
        {
          v14 = INFINITY;
        }

        if (v15 > 0x7FFFFFFFFFFFFFFDLL)
        {
          v16 = INFINITY;
        }

        if (v17 < v14 || v17 > v16)
        {
          break;
        }

        if (++v8 == v9)
        {
          return 1;
        }
      }

      return (*(*a1 + 16))(a3, a4, a5, a6);
    }

    return 1;
  }

  return (*(*a1 + 16))(a3, a4, a5, a6);
}

double operations_research::sat::LinearProgrammingConstraint::GetSolutionValue(void *a1, const char *a2)
{
  v2 = a1[2957];
  if (v2 > 1)
  {
    v3 = 0;
    v4 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed + a2;
    v5 = 0x9DDFEA08EB382D69 * v4;
    v6 = (v4 * 0x9DDFEA08EB382D69) >> 64;
    _X10 = a1[2959];
    __asm { PRFM            #4, [X10] }

    v13 = v6 ^ v5;
    v14 = vdup_n_s8(v13 & 0x7F);
    v15 = ((v13 >> 7) ^ (_X10 >> 12)) & v2;
    v16 = *(_X10 + v15);
    v17 = vceq_s8(v16, v14);
    if (!v17)
    {
      goto LABEL_8;
    }

LABEL_5:
    v18 = a1[2960];
    while (1)
    {
      v19 = (v15 + (__clz(__rbit64(v17)) >> 3)) & v2;
      if (*(v18 + 8 * v19) == a2)
      {
        break;
      }

      v17 &= ((v17 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v17)
      {
LABEL_8:
        while (!*&vceq_s8(v16, 0x8080808080808080))
        {
          v3 += 8;
          v15 = (v3 + v15) & v2;
          v16 = *(_X10 + v15);
          v17 = vceq_s8(v16, v14);
          if (v17)
          {
            goto LABEL_5;
          }
        }

LABEL_16:
        absl::lts_20240722::base_internal::ThrowStdOutOfRange("absl::container_internal::raw_hash_map<>::at", a2);
      }
    }

    v20 = (v18 + 8 * v19);
    if (!(_X10 + v19))
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (a1[2958] < 2uLL)
    {
      goto LABEL_16;
    }

    v20 = a1 + 2959;
    v22 = &absl::lts_20240722::container_internal::kSooControl;
    if (*(a1 + 5918) != a2)
    {
      v22 = 0;
    }

    if (!v22)
    {
      goto LABEL_16;
    }
  }

  return *(a1[3033] + 8 * *(v20 + 1));
}

BOOL operations_research::sat::LinearProgrammingConstraint::SolveLp(operations_research::sat::LinearProgrammingConstraint *this)
{
  v2 = this + 24256;
  if ((*(*(this + 2966) + 8) & 0xFFFFFFF) == 0)
  {
    *(this + 24352) = 0;
  }

  operations_research::glop::RevisedSimplex::Solve((this + 1368), (this + 920), *(this + 2964), &v35);
  *(this + 3081) += operations_research::glop::RevisedSimplex::GetNumberOfIterations((this + 1368));
  v3 = v35;
  if (v35)
  {
    if (dword_2810C0898 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C0890, dword_2810C0898))
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(v32, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_programming_constraint.cc", 678);
      v22 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v32, 1);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v22, "The LP solver encountered an error: ", 0x24uLL);
      absl::lts_20240722::log_internal::LogMessage::operator<<(v22, &__p);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(v32);
    }

    operations_research::glop::RevisedSimplex::ClearStateForNextSolve(this + 171);
  }

  else
  {
    ProblemNumCols = operations_research::glop::RevisedSimplex::GetProblemNumCols((this + 1368));
    if (ProblemNumCols < 1)
    {
      v8 = 0.0;
    }

    else
    {
      v5 = 0;
      v6 = 0;
      v7 = ProblemNumCols;
      do
      {
        if (operations_research::glop::RevisedSimplex::GetReducedCost(this + 1368, v5) == 0.0 && operations_research::glop::RevisedSimplex::GetVariableStatus(this + 1368, v5))
        {
          ++v6;
        }

        ++v5;
      }

      while (v7 != v5);
      v8 = v6;
    }

    v2[384] = operations_research::glop::RevisedSimplex::GetProblemNumCols((this + 1368)) * 0.3 <= v8;
    operations_research::sat::IncrementalAverage::AddData((this + 24624), v8);
    if (*(this + 3078) >= 1000.0 && dword_2810C08B0 >= 2 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&off_2810C08A8, dword_2810C08B0))
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(v32, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_programming_constraint.cc", 684);
      v30 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v32, 2);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v30, "High average degeneracy: ", 0x19uLL);
      v34[0] = *(this + 3078);
      absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v30, v34);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(v32);
    }

    operations_research::glop::RevisedSimplex::NotifyThatMatrixIsUnchangedForNextSolve(this + 1368);
    ProblemStatus = operations_research::glop::RevisedSimplex::GetProblemStatus((this + 1368));
    v10 = ProblemStatus;
    v11 = *(this + 3109);
    v12 = (*(this + 3110) - v11) >> 3;
    if (v12 <= ProblemStatus)
    {
      if (ProblemStatus + 1 <= v12)
      {
        if (ProblemStatus + 1 < v12)
        {
          *(this + 3110) = v11 + 8 * (ProblemStatus + 1);
        }
      }

      else
      {
        std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::__append(this + 24872, ProblemStatus + 1 - v12);
        v11 = *(this + 3109);
      }
    }

    ++*(this + 3104);
    ++*(v11 + 8 * v10);
    if (dword_2810C08C8 >= 2 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&off_2810C08C0, dword_2810C08C8))
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(v34, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_programming_constraint.cc", 698);
      v23 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v34, 2);
      operations_research::glop::LinearProgram::GetDimensionString((this + 920), v32);
      v24 = absl::lts_20240722::log_internal::LogMessage::operator<<(v23, v32);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v24, " lvl:", 5uLL);
      LODWORD(ObjectiveValue) = *(*(this + 2966) + 8) & 0xFFFFFFF;
      v25 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v24, &ObjectiveValue);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v25, " ", 1uLL);
      v31 = operations_research::glop::RevisedSimplex::GetProblemStatus((this + 1368));
      v26 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::glop::ProblemStatus,0>(v25, &v31);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v26, " iter:", 6uLL);
      ObjectiveValue = COERCE_DOUBLE(operations_research::glop::RevisedSimplex::GetNumberOfIterations((this + 1368)));
      v27 = absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v26, &ObjectiveValue);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v27, " obj:", 5uLL);
      ObjectiveValue = operations_research::glop::RevisedSimplex::GetObjectiveValue((this + 1368));
      v28 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v27, &ObjectiveValue);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v28, " scaled:", 8uLL);
      v29 = *(this + 2969);
      ObjectiveValue = (operations_research::glop::RevisedSimplex::GetObjectiveValue((this + 1368)) + v29[1]) * *v29;
      absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v28, &ObjectiveValue);
      if (v33 < 0)
      {
        operator delete(v32[0]);
      }

      absl::lts_20240722::log_internal::LogMessage::~LogMessage(v34);
    }

    if (!operations_research::glop::RevisedSimplex::GetProblemStatus((this + 1368)) || operations_research::glop::RevisedSimplex::GetProblemStatus((this + 1368)) == 8)
    {
      *(this + 3040) = operations_research::glop::RevisedSimplex::GetObjectiveValue((this + 1368));
    }

    v2[60] = operations_research::glop::RevisedSimplex::GetProblemStatus((this + 1368)) == 0;
    if (!operations_research::glop::RevisedSimplex::GetProblemStatus((this + 1368)))
    {
      v2[4] = 1;
      v13 = *(*(this + 2966) + 8) & 0xFFFFFFF;
      *v2 = v13;
      v14 = *(this + 2955) - *(this + 2954);
      if ((v14 >> 2) >= 1)
      {
        v15 = 0;
        v16 = (v14 >> 2) & 0x7FFFFFFF;
        do
        {
          VariableValue = operations_research::glop::RevisedSimplex::GetVariableValue(this + 1368, v15);
          v18 = operations_research::glop::LpScalingHelper::UnscaleVariableValue(this + 21936, v15, VariableValue);
          *(*(this + 3033) + 8 * v15) = v18;
          v19 = *(*(this + 2954) + 4 * v15);
          v20 = **(this + 3045);
          *(v20 + 8 * v19) = v18;
          *(v20 + 8 * (v19 ^ 1)) = -v18;
          ++v15;
        }

        while (v16 != v15);
        v13 = *v2;
      }

      if (!v13)
      {
        std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(this + 3041, *(this + 3033), *(this + 3034), (*(this + 3034) - *(this + 3033)) >> 3);
      }
    }
  }

  if (v37 < 0)
  {
    operator delete(__p);
  }

  return v3 == 0;
}

void sub_23CC3FF7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::LinearProgrammingConstraint::AnalyzeLp(operations_research::sat::LinearProgrammingConstraint *this)
{
  if (operations_research::glop::RevisedSimplex::GetProblemStatus((this + 1368)) == 5)
  {
    if (*(*(this + 2962) + 751) == 1)
    {

      return operations_research::sat::LinearProgrammingConstraint::PropagateExactDualRay(this);
    }

    else
    {
      DualRayRowCombination = operations_research::glop::RevisedSimplex::GetDualRayRowCombination((this + 1368));
      operations_research::sat::LinearProgrammingConstraint::FillReducedCostReasonIn(this, DualRayRowCombination, this + 3016);
      v15 = *(this + 2965);
      v16 = *(this + 3016);
      v17 = (*(this + 3017) - v16) >> 4;
      v18 = *(v15 + 840);
      v19 = *(v18 + 72);
      v18 += 72;
      *(v18 + 48) = 0;
      *(v18 + 8) = v19;
      operations_research::sat::IntegerTrail::MergeReasonInto(v15, v16, v17, v18);
      return 0;
    }
  }

  operations_research::sat::LinearProgrammingConstraint::UpdateSimplexIterationLimit(this, 10, 1000);
  if (*(this + 23688) != 1 || operations_research::glop::RevisedSimplex::GetProblemStatus((this + 1368)) && operations_research::glop::RevisedSimplex::GetProblemStatus((this + 1368)) != 8)
  {
    goto LABEL_45;
  }

  if (*(*(this + 2962) + 751) == 1)
  {
    result = operations_research::sat::LinearProgrammingConstraint::PropagateExactLpReason(this);
    if (!result)
    {
      return result;
    }

    if (dword_2810C08E0 >= 2 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&off_2810C08D8, dword_2810C08E0))
    {
      v3 = vcvtpd_s64_f64(operations_research::glop::RevisedSimplex::GetObjectiveValue((this + 1368)) + -0.0001);
      v4 = *(*(*(this + 2965) + 40) + 8 * *(this + 5923));
      v5 = v3 - v4;
      if (v3 > v4 && dword_2810C08F8 > 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&off_2810C08F0, dword_2810C08F8))
      {
        absl::lts_20240722::log_internal::LogMessage::LogMessage(&v40, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_programming_constraint.cc", 763);
        v6 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v40, 2);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v6, "LP objective [ ", 0xFuLL);
        v7 = v4;
        if (v4 < 0x8000000000000003)
        {
          v7 = -INFINITY;
        }

        if (v4 > 0x7FFFFFFFFFFFFFFDLL)
        {
          v7 = INFINITY;
        }

        v41 = v7;
        v8 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v6, &v41);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v8, ", ", 2uLL);
        v9 = -*(*(*(this + 2965) + 40) + ((8 * *(this + 5923)) ^ 8));
        v10 = v9;
        if (v9 < 0x8000000000000003)
        {
          v10 = -INFINITY;
        }

        if (v9 > 0x7FFFFFFFFFFFFFFDLL)
        {
          v10 = INFINITY;
        }

        v41 = v10;
        v11 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v8, &v41);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v11, " ] approx_lb += ", 0x10uLL);
        v12 = v5;
        if (v5 < 0x8000000000000003)
        {
          v12 = -INFINITY;
        }

        if (v5 > 0x7FFFFFFFFFFFFFFDLL)
        {
          v12 = INFINITY;
        }

        v41 = v12;
        v13 = absl::lts_20240722::log_internal::LogMessage::operator<<<double,0>(v11, &v41);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v13, " gap: ", 6uLL);
        v39 = -(v4 + *(*(*(this + 2965) + 40) + ((8 * *(this + 5923)) ^ 8)));
        absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongInt64<operations_research::sat::Coefficient_integer_tag_>,0>(v13, &v39);
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v40);
      }
    }

    goto LABEL_45;
  }

  ReducedCosts = operations_research::glop::RevisedSimplex::GetReducedCosts((this + 1368));
  operations_research::sat::LinearProgrammingConstraint::FillReducedCostReasonIn(this, ReducedCosts, this + 3016);
  v21 = -*(*(*(this + 2965) + 40) + ((8 * *(this + 5923)) ^ 8));
  v22 = v21;
  if (v21 < 0x8000000000000003)
  {
    v22 = -INFINITY;
  }

  if (v21 <= 0x7FFFFFFFFFFFFFFDLL)
  {
    v23 = v22;
  }

  else
  {
    v23 = INFINITY;
  }

  ObjectiveValue = operations_research::glop::RevisedSimplex::GetObjectiveValue((this + 1368));
  operations_research::sat::LinearProgrammingConstraint::ReducedCostStrengtheningDeductions(this, v23 - ObjectiveValue);
  if (*(this + 3019) != *(this + 3020))
  {
    std::vector<operations_research::sat::IntegerLiteral>::__assign_with_size[abi:ne200100]<operations_research::sat::IntegerLiteral*,operations_research::sat::IntegerLiteral*>(this + 3022, *(this + 3016), *(this + 3017), (*(this + 3017) - *(this + 3016)) >> 4);
    v25 = *(this + 5923);
    v26 = *(*(*(this + 2965) + 40) + ((8 * v25) ^ 8));
    if (v26 - 1 > 0x7FFFFFFFFFFFFFFDLL)
    {
      v26 = 0x7FFFFFFFFFFFFFFFLL;
    }

    *&v40 = v25 ^ 1;
    *(&v40 + 1) = v26;
    std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](this + 24176, &v40);
  }

  v27 = vcvtpd_s64_f64(ObjectiveValue + -0.0001);
  v28 = *(this + 2965);
  v29 = *(this + 5923);
  if (*(*(v28 + 40) + 8 * v29) >= v27 || (result = operations_research::sat::IntegerTrail::Enqueue(v28, v29, v27, 0, 0, *(this + 3016), (*(this + 3017) - *(this + 3016)) >> 4), result))
  {
    v30 = *(this + 3019);
    v31 = *(this + 3020);
    if (v30 == v31)
    {
LABEL_45:
      if (!operations_research::glop::RevisedSimplex::GetProblemStatus((this + 1368)))
      {
        if ((*(this + 24260) & 1) == 0)
        {
          operations_research::sat::LinearProgrammingConstraint::AnalyzeLp(&v40);
        }

        *(this + 24261) = 1;
        v33 = *(this + 2955) - *(this + 2954);
        if ((v33 >> 2) >= 1)
        {
          v34 = 0;
          v35 = (v33 >> 2) & 0x7FFFFFFF;
          do
          {
            ReducedCost = operations_research::glop::RevisedSimplex::GetReducedCost(this + 1368, v34);
            *(*(this + 3036) + 8 * v34) = operations_research::glop::LpScalingHelper::UnscaleReducedCost(this + 21936, v34, ReducedCost);
            v37 = *(*(this + 3033) + 8 * v34);
            if (vabdd_f64(v37, round(v37)) > 0.0001)
            {
              *(this + 24261) = 0;
            }

            ++v34;
          }

          while (v35 != v34);
        }

        if (*(this + 24400))
        {
          operations_research::sat::LinearProgrammingConstraint::UpdateAverageReducedCosts(this);
        }
      }

      if (*(this + 23688) == 1)
      {
        v38 = *(this + 5923);
        if (*(*(this + 2969) + 16) == v38 && (*(*(this + 2966) + 8) & 0xFFFFFFF) == 0)
        {
          operations_research::sat::SharedResponseManager::UpdateInnerObjectiveBounds(*(this + 2971), *(this + 2963), *(*(*(this + 2965) + 40) + 8 * v38), -*(*(*(this + 2965) + 40) + ((8 * v38) ^ 8)));
        }
      }

      return 1;
    }

    v32 = -1431655765 * ((*(*(this + 2965) + 160) - *(*(this + 2965) + 152)) >> 3);
    while ((operations_research::sat::IntegerTrail::Enqueue(*(this + 2965), *v30, v30[1], 0, 0, *(this + 3022), (*(this + 3023) - *(this + 3022)) >> 4, v32) & 1) != 0)
    {
      v30 += 2;
      if (v30 == v31)
      {
        goto LABEL_45;
      }
    }

    return 0;
  }

  return result;
}

void sub_23CC405D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CC405E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::LinearProgrammingConstraint::PropagateExactDualRay(operations_research::sat::LinearProgrammingConstraint *this)
{
  v66 = *MEMORY[0x277D85DE8];
  v55[0] = 0;
  DualRay = operations_research::glop::RevisedSimplex::GetDualRay((this + 1368));
  v3 = DualRay[1];
  if (v3 != *DualRay)
  {
    if (((v3 - *DualRay) & 0x8000000000000000) == 0)
    {
      v4 = v3 - *DualRay;
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  *(this + 2946) = *(this + 2945);
  operations_research::sat::LinearProgrammingConstraint::ScaleLpMultiplier(this, 0, 1, this + 2945, v55, 0x7FFFFFFFFFFFFFFFLL, &v57);
  v5 = *(this + 2948);
  if (v5)
  {
    *(this + 2949) = v5;
    operator delete(v5);
    *(this + 2948) = 0;
    *(this + 2949) = 0;
    *(this + 2950) = 0;
  }

  v6 = v57;
  *(this + 2948) = v57;
  v7 = v58;
  *(this + 23592) = v58;
  if (v55[0])
  {
    v54 = 0;
    if ((operations_research::sat::LinearProgrammingConstraint::ComputeNewLinearConstraint<false>(this, v6, (v7 - v6) >> 4, this + 2920, &v54) & 1) == 0)
    {
      v18 = absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v57, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_programming_constraint.cc", 2297);
      absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongInt64<operations_research::sat::Coefficient_integer_tag_>,0>(v18, v55);
      absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(&v57);
    }

    operations_research::sat::LinearProgrammingConstraint::AdjustNewLinearConstraint(this, this + 2948, this + 23360, &v54);
    v8 = *(this + 2954);
    v9 = (*(this + 2955) - v8) >> 2;
    LOBYTE(v57) = 0;
    BYTE8(v58) = 0;
    operations_research::sat::ScatteredIntegerVector::ConvertToLinearConstraint(this + 23360, v8, v54, &v57, v51);
    memset(&__p, 0, sizeof(__p));
    if (dword_2810C09D0 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C09C8, dword_2810C09D0))
    {
      v19 = v52;
      if (v52 < 1)
      {
        v20 = 0;
        v21 = 0;
      }

      else
      {
        v20 = 0;
        v21 = 0;
        v23 = *(&v53 + 1);
        v22 = v53;
        v24 = *(*(this + 2965) + 40);
        do
        {
          while (1)
          {
            v30 = *v23++;
            v29 = v30;
            LODWORD(v30) = *v22++;
            v31 = 8 * v30;
            if (v29 < 1)
            {
              break;
            }

            v25 = *(v24 + v31);
            v26 = (v25 * v29) >> 64;
            v27 = v25 * v29;
            v28 = __CFADD__(v27, v20);
            v20 += v27;
            v21 += v28 + v26;
            if (!--v19)
            {
              goto LABEL_37;
            }
          }

          v32 = -*(v24 + (v31 ^ 8));
          v33 = (v32 * v29) >> 64;
          v34 = v32 * v29;
          v28 = __CFADD__(v34, v20);
          v20 += v34;
          v21 += v28 + v33;
          --v19;
        }

        while (v19);
      }

LABEL_37:
      v48[0] = v20;
      v48[1] = v21;
      memset(&v47, 0, sizeof(v47));
      v39 = absl::lts_20240722::strings_internal::ExtractStringification<absl::lts_20240722::int128>(&v47, v48);
      v41 = v40;
      v43 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v51[1], v56, v42);
      v55[1] = v56;
      v55[2] = v43 - v56;
      v57 = "LP exact dual ray not infeasible,";
      *&v58 = 33;
      *(&v58 + 1) = " implied_lb: ";
      v59 = 13;
      v60 = v39;
      v61 = v41;
      v62 = " ub: ";
      v63 = 5;
      v64 = v56;
      v65 = v43 - v56;
      absl::lts_20240722::strings_internal::CatPieces(&v57, 5, &v49);
      __p = v49;
      *(&v49.__r_.__value_.__s + 23) = 0;
      v49.__r_.__value_.__s.__data_[0] = 0;
      if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v47.__r_.__value_.__l.__data_);
      }
    }

    v44 = *v51;
    v45 = v52;
    v10 = v53;
    v53 = 0uLL;
    v46 = v10;
    v11 = operations_research::sat::LinearProgrammingConstraint::PropagateLpConstraint(this, &v44);
    v12 = *(&v46 + 1);
    *(&v46 + 1) = 0;
    if (v12)
    {
      MEMORY[0x23EED9440](v12, 0x1000C8000313F17);
    }

    v13 = v46;
    *&v46 = 0;
    if (v13)
    {
      MEMORY[0x23EED9440](v13, 0x1000C8052888210);
    }

    if ((v11 & 1) != 0 && dword_2810C09E8 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C09E0, dword_2810C09E8))
    {
      v37 = absl::lts_20240722::log_internal::LogMessage::LogMessage(&v57, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_programming_constraint.cc", 2318);
      v38 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v37, 1);
      absl::lts_20240722::log_internal::LogMessage::operator<<(v38, &__p);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v57);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v14 = *(&v53 + 1);
    *(&v53 + 1) = 0;
    if (v14)
    {
      MEMORY[0x23EED9440](v14, 0x1000C8000313F17);
    }

    v15 = v53;
    *&v53 = 0;
    if (v15)
    {
      MEMORY[0x23EED9440](v15, 0x1000C8052888210);
    }
  }

  else
  {
    if (dword_2810C09B8 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C09B0, dword_2810C09B8))
    {
      v35 = absl::lts_20240722::log_internal::LogMessage::LogMessage(&v57, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_programming_constraint.cc", 2291);
      v36 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v35, 1);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v36, "Isse while computing the exact dual ray reason. Aborting.", 0x39uLL);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v57);
    }

    v11 = 1;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v11;
}

void sub_23CC40AF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, char a33)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  operations_research::sat::LinearConstraint::~LinearConstraint(&a33);
  v35 = a1;
  if (v33)
  {
    operator delete(v33);
    v35 = a1;
  }

  _Unwind_Resume(v35);
}

uint64_t operations_research::sat::LinearProgrammingConstraint::UpdateSimplexIterationLimit(uint64_t this, uint64_t a2, uint64_t a3)
{
  if (*(*(this + 23696) + 572) >= 2)
  {
    v5 = this;
    ProblemNumCols = operations_research::glop::RevisedSimplex::GetProblemNumCols((this + 1368));
    if (ProblemNumCols < 1)
    {
      v8 = 0;
    }

    else
    {
      v7 = 0;
      v8 = 0;
      v9 = ProblemNumCols;
      do
      {
        if (operations_research::glop::RevisedSimplex::GetReducedCost(v5 + 1368, v7) == 0.0 && operations_research::glop::RevisedSimplex::GetVariableStatus(v5 + 1368, v7))
        {
          ++v8;
        }

        ++v7;
      }

      while (v9 != v7);
    }

    *(v5 + 24640) = operations_research::glop::RevisedSimplex::GetProblemNumCols((v5 + 1368)) * 0.3 <= v8;
    this = operations_research::glop::RevisedSimplex::GetProblemNumCols((v5 + 1368));
    if (this >= 1)
    {
      v10 = this;
      v11 = 10 * v8 / this;
      this = operations_research::glop::RevisedSimplex::GetProblemStatus((v5 + 1368));
      if (this == 8)
      {
        if (*(v5 + 24640) == 1)
        {
          if (v11 <= 1)
          {
            v12 = 1;
          }

          else
          {
            v12 = v11;
          }

LABEL_22:
          v13 = *(v5 + 21928) / v12;
          goto LABEL_24;
        }

        v13 = 2 * *(v5 + 21928);
      }

      else
      {
        this = operations_research::glop::RevisedSimplex::GetProblemStatus((v5 + 1368));
        if (!this)
        {
          if (*(v5 + 24640) != 1)
          {
            v13 = v10 / 0x28;
            goto LABEL_24;
          }

          v12 = 2 * v11;
          if (2 * v11 <= 1)
          {
            v12 = 1;
          }

          goto LABEL_22;
        }

        v13 = *(v5 + 21928);
      }

LABEL_24:
      if (v13 >= a3)
      {
        v13 = a3;
      }

      if (v13 <= a2)
      {
        v13 = a2;
      }

      *(v5 + 21928) = v13;
    }
  }

  return this;
}

uint64_t operations_research::sat::LinearProgrammingConstraint::PropagateExactLpReason(operations_research::sat::LinearProgrammingConstraint *this)
{
  *(this + 3017) = *(this + 3016);
  *(this + 3020) = *(this + 3019);
  *(this + 3023) = *(this + 3022);
  ProblemNumRows = operations_research::glop::RevisedSimplex::GetProblemNumRows((this + 1368));
  *(this + 2946) = *(this + 2945);
  if (ProblemNumRows < 1)
  {
    return 1;
  }

  v4 = 0;
  v5 = ProblemNumRows;
  do
  {
    DualValue = operations_research::glop::RevisedSimplex::GetDualValue(this + 1368, v4);
    if (fabs(DualValue) >= 1.0e-12)
    {
      *v70 = v4;
      *&v70[8] = -DualValue;
      std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](this + 23560, v70);
    }

    ++v4;
  }

  while (v5 != v4);
  if (*(this + 2945) == *(this + 2946))
  {
    return 1;
  }

  v8 = *(this + 2957);
  if (v8 <= 1)
  {
    if (*(this + 2958) < 2uLL || *(this + 5918) != *(this + 5923))
    {
      goto LABEL_19;
    }

    v9 = *(this + 60);
    v10 = *(this + 61) - v9;
    if (v10 == 16)
    {
      v11 = (this + 23672);
      if (!&absl::lts_20240722::container_internal::kSooControl)
      {
        goto LABEL_12;
      }

LABEL_29:
      if (*v9 != v11[1])
      {
        operations_research::sat::LinearProgrammingConstraint::PropagateExactLpReason(v9, v11 + 1);
      }

      v68[0] = 1;
      if (*(v9 + 8) != 1)
      {
        operations_research::sat::LinearProgrammingConstraint::PropagateExactLpReason((v9 + 8), v68);
      }

      v25 = 0;
      goto LABEL_32;
    }

    goto LABEL_69;
  }

  v12 = 0;
  _X13 = *(this + 2959);
  __asm { PRFM            #4, [X13] }

  v19 = *(this + 5923);
  v20 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v19) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v19));
  v21 = vdup_n_s8(v20 & 0x7F);
  v22 = ((v20 >> 7) ^ (_X13 >> 12)) & v8;
  v23 = *(_X13 + v22);
  v24 = vceq_s8(v23, v21);
  if (!v24)
  {
    goto LABEL_16;
  }

  do
  {
LABEL_14:
    if (*(*(this + 2960) + 8 * ((v22 + (__clz(__rbit64(v24)) >> 3)) & v8)) == v19)
    {
      v9 = *(this + 60);
      v10 = *(this + 61) - v9;
      if (v10 == 16)
      {
        v26 = 0;
        _X8 = *(this + 2959);
        __asm { PRFM            #4, [X8] }

        v29 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v19) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v19));
        v30 = vdup_n_s8(v29 & 0x7F);
        v31 = ((v29 >> 7) ^ (_X8 >> 12)) & v8;
        v32 = *(_X8 + v31);
        v33 = vceq_s8(v32, v30);
        if (!v33)
        {
          goto LABEL_25;
        }

LABEL_22:
        v34 = *(this + 2960);
        while (1)
        {
          v35 = (v31 + (__clz(__rbit64(v33)) >> 3)) & v8;
          if (*(v34 + 8 * v35) == v19)
          {
            break;
          }

          v33 &= ((v33 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v33)
          {
LABEL_25:
            while (!*&vceq_s8(v32, 0x8080808080808080))
            {
              v26 += 8;
              v31 = (v26 + v31) & v8;
              v32 = *(_X8 + v31);
              v33 = vceq_s8(v32, v30);
              if (v33)
              {
                goto LABEL_22;
              }
            }

LABEL_12:
            absl::lts_20240722::base_internal::ThrowStdOutOfRange("absl::container_internal::raw_hash_map<>::at", v6);
          }
        }

        v11 = (v34 + 8 * v35);
        if (!(_X8 + v35))
        {
          goto LABEL_12;
        }

        goto LABEL_29;
      }

LABEL_69:
      operations_research::sat::LinearProgrammingConstraint::PropagateExactLpReason(v10);
    }

    v24 &= ((v24 & 0x8080808080808080) - 1) & 0x8080808080808080;
  }

  while (v24);
LABEL_16:
  while (!*&vceq_s8(v23, 0x8080808080808080))
  {
    v12 += 8;
    v22 = (v12 + v22) & v8;
    v23 = *(_X13 + v22);
    v24 = vceq_s8(v23, v21);
    if (v24)
    {
      goto LABEL_14;
    }
  }

LABEL_19:
  v25 = 1;
LABEL_32:
  v73 = 0;
  operations_research::sat::LinearProgrammingConstraint::ScaleLpMultiplier(this, v25, 1, this + 2945, &v73, 0x7FFFFFFFFFFFFFFFLL, v70);
  v36 = *(this + 2948);
  if (v36)
  {
    *(this + 2949) = v36;
    operator delete(v36);
    *(this + 2948) = 0;
    *(this + 2949) = 0;
    *(this + 2950) = 0;
  }

  v37 = *v70;
  *(this + 2948) = *v70;
  v38 = *&v70[8];
  *(this + 23592) = *&v70[8];
  v39 = v73;
  if (!v73)
  {
    if (dword_2810C0988 > 0 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C0980, dword_2810C0988))
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(v70, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_programming_constraint.cc", 2229);
      v63 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v70, 1);
      LOBYTE(v68[0]) = operations_research::glop::RevisedSimplex::GetProblemStatus((this + 1368));
      absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::glop::ProblemStatus,0>(v63, v68);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(v70);
    }

    if (dword_2810C09A0 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&off_2810C0998, dword_2810C09A0))
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(v70, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/linear_programming_constraint.cc", 2230);
      v64 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v70, 1);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v64, "Issue while computing the exact LP reason. Aborting.", 0x34uLL);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(v70);
    }

    return 1;
  }

  v72 = 0;
  if ((operations_research::sat::LinearProgrammingConstraint::ComputeNewLinearConstraint<false>(this, v37, (v38 - v37) >> 4, this + 2920, &v72) & 1) == 0)
  {
    operations_research::sat::LinearProgrammingConstraint::PropagateExactLpReason(v70);
  }

  if (v25)
  {
    v40 = *(this + 54);
    *(this + 55) = v40;
    v41 = *(this + 57);
    *(this + 58) = v41;
    v42 = *(this + 60);
    v43 = *(this + 61);
    if (v42 == v43)
    {
      v46 = v41;
      v45 = v40;
    }

    else
    {
      do
      {
        v44 = *v42++;
        *v70 = v44;
        std::vector<int>::push_back[abi:ne200100](this + 432, v70);
        std::vector<long long>::push_back[abi:ne200100](this + 456, &v70[8]);
      }

      while (v42 != v43);
      v45 = *(this + 54);
      v40 = *(this + 55);
      v46 = *(this + 57);
      v47 = *(this + 58);
    }

    if ((operations_research::sat::ScatteredIntegerVector::AddLinearExpressionMultiple<false>(this + 23360, v39, v45, v40 - v45, v46) & 1) == 0)
    {
      operations_research::sat::LinearProgrammingConstraint::PropagateExactLpReason(v70);
    }

    v1 = -v39;
    v53 = *(this + 63);
    if ((-v39 * v53) >> 64 == -(v39 * v53) >> 63)
    {
      v54 = -(v39 * v53);
    }

    else
    {
      v54 = ((v53 ^ -v39) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v54 - 0x7FFFFFFFFFFFFFFFLL < 2)
    {
      goto LABEL_68;
    }

    v55 = (v54 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
    _VF = __OFADD__(v54, v72);
    v56 = v54 + v72;
    if (_VF)
    {
      v56 = v55;
    }

    if ((v56 + 0x7FFFFFFFFFFFFFFFLL) >= 0xFFFFFFFFFFFFFFFELL)
    {
LABEL_68:
      operations_research::sat::LinearProgrammingConstraint::PropagateExactLpReason(v70);
    }

    v72 = v56;
    v52 = *(this + 5923) & 0xFFFFFF00;
    v51 = *(this + 5923);
    v50 = 1;
  }

  else
  {
    v50 = 0;
    v51 = 0;
    v52 = 0;
  }

  operations_research::sat::LinearProgrammingConstraint::AdjustNewLinearConstraint(this, this + 2948, this + 23360, &v72);
  v57 = *(this + 2954);
  v58 = (*(this + 2955) - v57) >> 2;
  LODWORD(v68[0]) = v52 | v51;
  v68[1] = v1;
  v69 = v50;
  operations_research::sat::ScatteredIntegerVector::ConvertToLinearConstraint(this + 23360, v57, v72, v68, v70);
  if (*&v70[16])
  {
    v65 = *v70;
    v66 = *&v70[16];
    v59 = v71;
    v71 = 0uLL;
    v67 = v59;
    v48 = operations_research::sat::LinearProgrammingConstraint::PropagateLpConstraint(this, &v65);
    if (*(&v67 + 1))
    {
      MEMORY[0x23EED9440](*(&v67 + 1), 0x1000C8000313F17);
    }

    if (v67)
    {
      MEMORY[0x23EED9440](v67, 0x1000C8052888210);
    }

    v60 = *(&v71 + 1);
    *(&v71 + 1) = 0;
    if (v60)
    {
LABEL_62:
      MEMORY[0x23EED9440](v60, 0x1000C8000313F17);
    }
  }

  else
  {
    v62 = *(this + 2966);
    v62[15] = 0;
    v62[10] = v62[9];
    v48 = *&v70[8] >= 0;
    v60 = *(&v71 + 1);
    *(&v71 + 1) = 0;
    if (v60)
    {
      goto LABEL_62;
    }
  }

  v61 = v71;
  *&v71 = 0;
  if (v61)
  {
    MEMORY[0x23EED9440](v61, 0x1000C8052888210);
  }

  return v48;
}

void sub_23CC413C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CC413DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CC413F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CC41404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  operations_research::sat::LinearConstraint::~LinearConstraint(&a9);
  operations_research::sat::LinearConstraint::~LinearConstraint(&a17);
  _Unwind_Resume(a1);
}

void operations_research::sat::LinearProgrammingConstraint::ReducedCostStrengtheningDeductions(operations_research::sat::LinearProgrammingConstraint *this, double a2)
{
  *(this + 3020) = *(this + 3019);
  v10 = *(this + 2955) - *(this + 2954);
  if ((v10 >> 2) >= 1)
  {
    v27 = v9;
    v28 = v8;
    v29 = v7;
    v30 = v6;
    v31 = v5;
    v32 = v4;
    v33 = v2;
    v34 = v3;
    v12 = 0;
    v13 = (v10 >> 2) & 0x7FFFFFFF;
    v14 = a2 / *(this + 165);
    do
    {
      v15 = *(*(this + 2954) + 4 * v12);
      ReducedCost = operations_research::glop::RevisedSimplex::GetReducedCost(this + 1368, v12);
      VariableValue = operations_research::glop::RevisedSimplex::GetVariableValue(this + 1368, v12);
      if (ReducedCost != 0.0)
      {
        v18 = operations_research::glop::LpScalingHelper::UnscaleVariableValue(this + 21936, v12, VariableValue + v14 / ReducedCost);
        if (ReducedCost <= 0.000001)
        {
          if (ReducedCost >= -0.000001)
          {
            goto LABEL_4;
          }

          v23 = *(*(*(this + 2965) + 40) + 8 * v15);
          v24 = v23;
          if (v23 < 0x8000000000000003)
          {
            v24 = -INFINITY;
          }

          if (v23 > 0x7FFFFFFFFFFFFFFDLL)
          {
            v24 = INFINITY;
          }

          v25 = ceil(v18 + -0.0001);
          if (v25 <= v24)
          {
            goto LABEL_4;
          }

          v22 = v25;
          *&v26 = v15;
        }

        else
        {
          v19 = -*(*(*(this + 2965) + 40) + ((8 * v15) ^ 8));
          v20 = v19;
          if (v19 < 0x8000000000000003)
          {
            v20 = -INFINITY;
          }

          if (v19 > 0x7FFFFFFFFFFFFFFDLL)
          {
            v20 = INFINITY;
          }

          v21 = floor(v18 + 0.0001);
          if (v21 >= v20)
          {
            goto LABEL_4;
          }

          if (v21 >= 0x8000000000000002)
          {
            v22 = -v21;
          }

          else
          {
            v22 = 0x7FFFFFFFFFFFFFFFLL;
          }

          *&v26 = v15 ^ 1;
        }

        *(&v26 + 1) = v22;
        std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](this + 24152, &v26);
      }

LABEL_4:
      ++v12;
    }

    while (v13 != v12);
  }
}

uint64_t operations_research::sat::LinearProgrammingConstraint::UpdateAverageReducedCosts(std::vector<int> *this)
{
  p_end = &this[853].__end_;
  v3 = this[985].__begin_ - this[984].__end_cap_.__value_;
  v4 = v3 >> 2;
  v5 = (this[1018].__end_ - this[1018].__begin_) >> 3;
  v6 = (v3 >> 2);
  if (v6 > v5)
  {
    *&v59 = 0;
    std::vector<double>::__append(&this[1018], v6 - v5, &v59);
    LODWORD(v59) = 0;
    begin = this[1020].__begin_;
    v8 = this[1020].__end_ - begin;
    if (v6 <= v8)
    {
      if (v6 < v8)
      {
        this[1020].__end_ = &begin[v6];
      }
    }

    else
    {
      std::vector<int>::__append(this + 1020, v6 - v8, &v59);
    }

    *&v59 = 0;
    v9 = this[1017].__begin_;
    v10 = (this[1017].__end_ - v9) >> 3;
    if (v6 <= v10)
    {
      if (v6 < v10)
      {
        this[1017].__end_ = &v9[2 * v6];
      }
    }

    else
    {
      std::vector<double>::__append(&this[1017], v6 - v10, &v59);
    }

    LODWORD(v59) = 0;
    v11 = this[1019].__begin_;
    v12 = this[1019].__end_ - v11;
    if (v6 <= v12)
    {
      if (v6 < v12)
      {
        this[1019].__end_ = &v11[v6];
      }
    }

    else
    {
      std::vector<int>::__append(this + 1019, v6 - v12, &v59);
    }

    *&v59 = 0;
    v13 = this[1021].__begin_;
    v14 = (this[1021].__end_ - v13) >> 3;
    if (v6 <= v14)
    {
      if (v6 < v14)
      {
        this[1021].__end_ = &v13[2 * v6];
      }
    }

    else
    {
      std::vector<double>::__append(&this[1021], v6 - v14, &v59);
    }
  }

  v15 = *(p_end + 981) + 1;
  *(p_end + 981) = v15;
  v16 = (v3 >> 2) & 0x7FFFFFFF;
  if (v15 == 10000)
  {
    if (v4 >= 1)
    {
      v17 = this[1017].__begin_;
      v18 = this[1019].__begin_;
      v19 = this[1018].__begin_;
      v20 = this[1020].__begin_;
      if (v16 > 3)
      {
        v21 = 0;
        _CF = v18 >= v20 + 4 * v16 || v20 >= v18 + 4 * v16;
        v23 = !_CF;
        if ((v19 >= v17 + 8 * v16 || v17 >= v19 + 8 * v16) && (v23 & 1) == 0)
        {
          v25 = (v3 >> 2) & 3;
          v21 = v16 - v25;
          __asm { FMOV            V0.2D, #0.5 }

          v30 = v16 - v25;
          v31 = this[1020].__begin_;
          v32 = this[1018].__begin_;
          v33 = this[1019].__begin_;
          v34 = this[1017].__begin_;
          do
          {
            v35 = vmulq_f64(v34[1], _Q0);
            *v34 = vmulq_f64(*v34, _Q0);
            v34[1] = v35;
            v34 += 2;
            *v33 = vshrq_n_s32(vsraq_n_u32(*v33, *v33, 0x1FuLL), 1uLL);
            ++v33;
            v36 = vmulq_f64(v32[1], _Q0);
            *v32 = vmulq_f64(*v32, _Q0);
            v32[1] = v36;
            v32 += 2;
            *v31 = vshrq_n_s32(vsraq_n_u32(*v31, *v31, 0x1FuLL), 1uLL);
            ++v31;
            v30 -= 4;
          }

          while (v30);
          if (!v25)
          {
            goto LABEL_40;
          }
        }
      }

      else
      {
        v21 = 0;
      }

      v37 = (v20 + 4 * v21);
      v38 = (v19 + 8 * v21);
      v39 = (v18 + 4 * v21);
      v40 = (v17 + 8 * v21);
      v41 = v21 - v16;
      do
      {
        *v40 = *v40 * 0.5;
        ++v40;
        *v39++ /= 2;
        *v38 = *v38 * 0.5;
        ++v38;
        *v37++ /= 2;
        _CF = __CFADD__(v41++, 1);
      }

      while (!_CF);
    }

LABEL_40:
    *(p_end + 981) = 0;
  }

  if (v4 >= 1)
  {
    v42 = 0;
    value = this[984].__end_cap_.__value_;
    v44 = *(this[988].__end_ + 5);
    do
    {
      v46 = 8 * value[v42];
      if (*(v44 + v46) + *(v44 + (v46 ^ 8)))
      {
        v47 = *&this[1012].__begin_[2 * v42];
        if (fabs(v47) >= 0.0001)
        {
          if (v47 < 0.0)
          {
            *&this[1018].__begin_[2 * v42] = *&this[1018].__begin_[2 * v42] - v47;
            v45 = this + 1020;
          }

          else
          {
            *&this[1017].__begin_[2 * v42] = v47 + *&this[1017].__begin_[2 * v42];
            v45 = this + 1019;
          }

          ++v45->__begin_[v42];
        }
      }

      ++v42;
    }

    while (v16 != v42);
  }

  operations_research::RevRepository<int>::SetLevel(&this[1022].__end_, 0);
  operations_research::RevRepository<int>::SetLevel(&this[1022].__end_, this[988].__end_cap_.__value_[2] & 0xFFFFFFF);
  *(p_end + 1012) = 0;
  end = this[1025].__begin_;
  this[1025].__end_ = end;
  if (v4 >= 1)
  {
    v49 = 0;
    while (1)
    {
      v50 = this[1019].__begin_[v49];
      if (v50 < 1)
      {
        v51 = 0.0;
        v52 = this[1020].__begin_[v49];
        if (v52 <= 0)
        {
LABEL_61:
          v54 = this[1021].__begin_;
          v53 = 0.0;
          goto LABEL_62;
        }
      }

      else
      {
        v51 = *&this[1017].__begin_[2 * v49] / v50;
        v52 = this[1020].__begin_[v49];
        if (v52 <= 0)
        {
          goto LABEL_61;
        }
      }

      v53 = *&this[1018].__begin_[2 * v49] / v52;
      v54 = this[1021].__begin_;
      if (v50 >= 1)
      {
        if (v53 < v51)
        {
          v51 = v53;
        }

        *&v54[2 * v49] = v51;
        if (v51 <= 0.0)
        {
          goto LABEL_52;
        }

LABEL_63:
        *&v59 = -v51;
        DWORD2(v59) = v49;
        std::vector<operations_research::sat::ProbingRectangle::IntervalPoint>::push_back[abi:ne200100](&this[1025], &v59);
        goto LABEL_52;
      }

LABEL_62:
      v51 = (v51 + v53) * 0.5;
      *&v54[2 * v49] = v51;
      if (v51 > 0.0)
      {
        goto LABEL_63;
      }

LABEL_52:
      if (v16 == ++v49)
      {
        v55 = this[1025].__begin_;
        end = this[1025].__end_;
        goto LABEL_66;
      }
    }
  }

  v55 = end;
LABEL_66:
  v56 = 126 - 2 * __clz((end - v55) >> 4);
  if (end == v55)
  {
    v57 = 0;
  }

  else
  {
    v57 = v56;
  }

  return std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<double,int> *,false>(v55, end, &v59, v57, 1);
}

uint64_t operations_research::sat::LinearProgrammingConstraint::PreprocessCut(uint64_t a1, int a2, operations_research::sat::CutData *this)
{
  operations_research::sat::CutData::ComplementForPositiveCoefficients(this);
  v6 = *(this + 1);
  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_15;
  }

  v62 = a2;
  v7 = *this;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v9 = vnegq_f64(v8);
  *(a1 + 24672) = v9;
  *(a1 + 24688) = v9;
  *(a1 + 24704) = v9;
  *(a1 + 24720) = v9;
  *(a1 + 24656) = xmmword_23CE4C6E0;
  *(a1 + 24736) = 0;
  v10 = *(this + 2);
  v60 = (this + 16);
  v11 = *(this + 3);
  if (v10 == v11)
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
    v13 = (a1 + 24736);
    if (__PAIR128__(v6, v7) >= 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_16;
    }
  }

  else
  {
    do
    {
      operations_research::sat::FirstFewValues<10>::Add(a1 + 24656, *(v10 + 8));
      v10 += 56;
    }

    while (v10 != v11);
    v7 = *this;
    v12 = *(a1 + 24728);
    v13 = (a1 + 24736);
    if (*this >= v12)
    {
      goto LABEL_16;
    }
  }

  if (v12 > v7)
  {
    v14 = 10;
    v15 = (a1 + 24656);
    do
    {
      v16 = v14 >> 1;
      v17 = &v15[v14 >> 1];
      v19 = *v17;
      v18 = v17 + 1;
      v14 += ~(v14 >> 1);
      if (v19 < v7)
      {
        v15 = v18;
      }

      else
      {
        v14 = v16;
      }
    }

    while (v14);
    if (v15 == v13 || *v15 > v7)
    {
LABEL_15:
      v20 = 0;
      *(a1 + 23280) = 1;
      return v20 & 1;
    }
  }

LABEL_16:
  v21 = *(this + 2);
  v63 = *(this + 3);
  if (v21 == v63)
  {
    v20 = 0;
  }

  else
  {
    v61 = 0;
    v64 = 0;
    do
    {
      while (1)
      {
        v27 = *(v21 + 8);
        v25 = *(v21 + 16);
        v28 = (v25 * v27) >> 64;
        v29 = v25 * v27;
        v65 = v25;
        v31 = *this;
        v30 = *(this + 1);
        if (*this >= v25 * v27)
        {
          v34 = v25;
        }

        else
        {
          v32 = *this;
          v33 = *(this + 1);
          v34 = __divti3();
          v65 = v34;
          v28 = (v34 * v27) >> 64;
          v29 = v34 * v27;
        }

        v36 = (__PAIR128__(v30, v31) - __PAIR128__(v28, v29)) >> 64;
        v35 = v31 - v29;
        v37 = *(a1 + 24728);
        if (__PAIR128__(v36, v35) < v37)
        {
          do
          {
            if (v37 <= v35)
            {
              break;
            }

            v38 = (a1 + 24656);
            v39 = 10;
            do
            {
              v40 = v39 >> 1;
              v41 = &v38[v39 >> 1];
              v43 = *v41;
              v42 = v41 + 1;
              v39 += ~(v39 >> 1);
              if (v43 < v35)
              {
                v38 = v42;
              }

              else
              {
                v39 = v40;
              }
            }

            while (v39);
            if (v38 != v13 && *v38 <= v35)
            {
              break;
            }

            ++*(a1 + 24824);
            if (v34-- < 1)
            {
              operations_research::sat::LinearProgrammingConstraint::PreprocessCut(&v65);
            }

            v65 = v34;
            v36 = (__PAIR128__(v36, v35) + v27) >> 64;
            v35 += v27;
          }

          while (__PAIR128__(v36, v35) < v37);
          v25 = *(v21 + 16);
        }

        if (v34 < v25)
        {
          *(v21 + 16) = v34;
          v24 = *(v21 + 32);
          if (v24 >= v62)
          {
            v46 = *(*(a1 + 23512) + 4 * ((v24 - v62) / 2));
            v47 = *(v21 + 40);
            if (v47 == 1)
            {
              v48 = v34 - *(v21 + 24);
              if (operations_research::sat::LinearConstraintManager::UpdateConstraintUb(a1 + 16, v46, v48))
              {
                *(*(a1 + 520) + 32 * v46 + 8) = v48;
              }
            }

            else
            {
              if (v47 != -1)
              {
                operations_research::sat::LinearProgrammingConstraint::PreprocessCut(v21);
              }

              v49 = *(v21 + 24) - v34;
              if (operations_research::sat::LinearConstraintManager::UpdateConstraintLb(a1 + 16, v46, v49))
              {
                *(*(a1 + 520) + 32 * v46) = v49;
              }
            }
          }

          else
          {
            ++*(a1 + 24816);
            v45 = *(v21 + 40);
            if (v45 == 1)
            {
              v22 = *(a1 + 23720);
              if (*(v21 + 16) - *(v21 + 24) >= 0x8000000000000002)
              {
                v23 = *(v21 + 24) - *(v21 + 16);
              }

              else
              {
                v23 = 0x7FFFFFFFFFFFFFFFLL;
              }

              v24 ^= 1uLL;
            }

            else
            {
              if (v45 != -1)
              {
                operations_research::sat::LinearProgrammingConstraint::PreprocessCut(v21);
              }

              v22 = *(a1 + 23720);
              v23 = *(v21 + 24) - *(v21 + 16);
            }

            if ((operations_research::sat::IntegerTrail::Enqueue(v22, v24, v23, 0, 0, 0, 0) & 1) == 0)
            {
              goto LABEL_15;
            }
          }

          v25 = *(v21 + 16);
        }

        if (!v25)
        {
          break;
        }

        v26 = *v21;
        v21 += 56;
        v64 |= v26 > 0.01;
        if (v21 == v63)
        {
          goto LABEL_54;
        }
      }

      v61 = 1;
      v21 += 56;
    }

    while (v21 != v63);
LABEL_54:
    if (v61)
    {
      v50 = *(this + 2);
      v51 = *(this + 3);
      if (v50 != v51)
      {
        v52 = 0;
        do
        {
          if (*(v50 + 2))
          {
            v53 = *v60 + 56 * v52++;
            v54 = *v50;
            v55 = v50[1];
            v56 = v50[2];
            *(v53 + 48) = *(v50 + 6);
            *(v53 + 16) = v55;
            *(v53 + 32) = v56;
            *v53 = v54;
          }

          v50 = (v50 + 56);
        }

        while (v50 != v51);
        v57 = *(this + 2);
        v58 = 0x6DB6DB6DB6DB6DB7 * ((*(this + 3) - v57) >> 3);
        if (v52 <= v58)
        {
          if (v52 < v58)
          {
            *(this + 3) = v57 + 56 * v52;
          }
        }

        else
        {
          std::vector<operations_research::sat::CutTerm>::__append(v60, v52 - v58);
        }
      }
    }

    v20 = v64;
  }

  return v20 & 1;
}