int *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveAtMostOrExactlyOne(operations_research::sat::ConstraintProto *)::$_0 &,std::pair<int,long long> *,0>(int *result, int *a2, int *a3, int *a4, int *a5)
{
  v5 = *(a2 + 1);
  v6 = *(result + 1);
  v7 = *(a3 + 1);
  if (v5 < v6)
  {
    v8 = *result;
    if (v7 >= v5)
    {
      *result = *a2;
      *a2 = v8;
      *(result + 1) = v5;
      *(a2 + 1) = v6;
      v5 = *(a3 + 1);
      if (v5 >= v6)
      {
        goto LABEL_11;
      }

      *a2 = *a3;
      *a3 = v8;
      *(a2 + 1) = v5;
    }

    else
    {
      *result = *a3;
      *a3 = v8;
      *(result + 1) = v7;
    }

    *(a3 + 1) = v6;
    v5 = v6;
LABEL_11:
    v13 = *(a4 + 1);
    if (v13 >= v5)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (v7 >= v5)
  {
    v5 = *(a3 + 1);
    v13 = *(a4 + 1);
    if (v13 >= v7)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v9 = *a2;
    *a2 = *a3;
    *a3 = v9;
    *(a2 + 1) = v7;
    *(a3 + 1) = v5;
    v10 = *(a2 + 1);
    v11 = *(result + 1);
    if (v10 >= v11)
    {
      goto LABEL_11;
    }

    v12 = *result;
    *result = *a2;
    *a2 = v12;
    *(result + 1) = v10;
    *(a2 + 1) = v11;
    v5 = *(a3 + 1);
    v13 = *(a4 + 1);
    if (v13 >= v5)
    {
      goto LABEL_16;
    }
  }

LABEL_12:
  v14 = *a3;
  *a3 = *a4;
  *a4 = v14;
  *(a3 + 1) = v13;
  *(a4 + 1) = v5;
  v15 = *(a3 + 1);
  v16 = *(a2 + 1);
  if (v15 < v16)
  {
    v17 = *a2;
    *a2 = *a3;
    *a3 = v17;
    *(a2 + 1) = v15;
    *(a3 + 1) = v16;
    v18 = *(a2 + 1);
    v19 = *(result + 1);
    if (v18 < v19)
    {
      v20 = *result;
      *result = *a2;
      *a2 = v20;
      *(result + 1) = v18;
      *(a2 + 1) = v19;
    }
  }

LABEL_16:
  v21 = *(a5 + 1);
  v22 = *(a4 + 1);
  if (v21 < v22)
  {
    v23 = *a4;
    *a4 = *a5;
    *a5 = v23;
    *(a4 + 1) = v21;
    *(a5 + 1) = v22;
    v24 = *(a4 + 1);
    v25 = *(a3 + 1);
    if (v24 < v25)
    {
      v26 = *a3;
      *a3 = *a4;
      *a4 = v26;
      *(a3 + 1) = v24;
      *(a4 + 1) = v25;
      v27 = *(a3 + 1);
      v28 = *(a2 + 1);
      if (v27 < v28)
      {
        v29 = *a2;
        *a2 = *a3;
        *a3 = v29;
        *(a2 + 1) = v27;
        *(a3 + 1) = v28;
        v30 = *(a2 + 1);
        v31 = *(result + 1);
        if (v30 < v31)
        {
          v32 = *result;
          *result = *a2;
          *a2 = v32;
          *(result + 1) = v30;
          *(a2 + 1) = v31;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveAtMostOrExactlyOne(operations_research::sat::ConstraintProto *)::$_0 &,std::pair<int,long long> *>(uint64_t a1, int *a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v7 = *(a1 + 24);
      v8 = *(a1 + 8);
      v9 = *(a2 - 1);
      if (v7 >= v8)
      {
        if (v9 >= v7)
        {
          return 1;
        }

        v23 = *(a1 + 16);
        *(a1 + 16) = *(a2 - 4);
        *(a2 - 4) = v23;
        *(a1 + 24) = v9;
        *(a2 - 1) = v7;
        v24 = *(a1 + 24);
        v25 = *(a1 + 8);
        if (v24 >= v25)
        {
          return 1;
        }

        v26 = *a1;
        *a1 = *(a1 + 16);
        *(a1 + 16) = v26;
        *(a1 + 8) = v24;
        *(a1 + 24) = v25;
        return 1;
      }

      else
      {
        v10 = *a1;
        if (v9 >= v7)
        {
          *a1 = *(a1 + 16);
          *(a1 + 16) = v10;
          *(a1 + 8) = v7;
          *(a1 + 24) = v8;
          v33 = *(a2 - 1);
          if (v33 >= v8)
          {
            return 1;
          }

          *(a1 + 16) = *(a2 - 4);
          *(a2 - 4) = v10;
          *(a1 + 24) = v33;
          *(a2 - 1) = v8;
          return 1;
        }

        else
        {
          *a1 = *(a2 - 4);
          *(a2 - 4) = v10;
          *(a1 + 8) = v9;
          *(a2 - 1) = v8;
          return 1;
        }
      }
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveAtMostOrExactlyOne(operations_research::sat::ConstraintProto *)::$_0 &,std::pair<int,long long> *,0>(a1, (a1 + 16), (a1 + 32), (a1 + 48), a2 - 4);
        return 1;
      }

LABEL_14:
      v11 = *(a1 + 24);
      v13 = (a1 + 8);
      v12 = *(a1 + 8);
      v15 = (a1 + 40);
      v14 = *(a1 + 40);
      if (v11 >= v12)
      {
        if (v14 >= v11 || (v27 = *(a1 + 16), v28 = *(a1 + 32), *(a1 + 16) = v28, *(a1 + 32) = v27, *(a1 + 24) = v14, *(a1 + 40) = v11, v14 >= v12))
        {
LABEL_34:
          v34 = (a1 + 48);
          if ((a1 + 48) == a2)
          {
            return 1;
          }

          v35 = 0;
          v36 = 0;
          v37 = (a1 + 32);
          while (1)
          {
            v38 = *(v34 + 1);
            if (v38 < *(v37 + 1))
            {
              break;
            }

LABEL_37:
            v37 = v34;
            v35 += 16;
            v34 += 4;
            if (v34 == a2)
            {
              return 1;
            }
          }

          v39 = *v34;
          v40 = v35;
          do
          {
            v41 = a1 + v40;
            *(v41 + 48) = *(a1 + v40 + 32);
            *(v41 + 56) = *(a1 + v40 + 40);
            if (v40 == -32)
            {
              *a1 = v39;
              *(a1 + 8) = v38;
              if (++v36 != 8)
              {
                goto LABEL_37;
              }

              return v34 + 4 == a2;
            }

            v40 -= 16;
          }

          while (v38 < *(v41 + 24));
          v42 = a1 + v40;
          *(v42 + 48) = v39;
          *(v42 + 56) = v38;
          if (++v36 != 8)
          {
            goto LABEL_37;
          }

          return v34 + 4 == a2;
        }

        v29 = *a1;
        *a1 = v28;
        *(a1 + 16) = v29;
        v15 = (a1 + 24);
      }

      else
      {
        v16 = *a1;
        if (v14 >= v11)
        {
          *a1 = *(a1 + 16);
          *(a1 + 16) = v16;
          *(a1 + 8) = v11;
          *(a1 + 24) = v12;
          if (v14 >= v12)
          {
            goto LABEL_34;
          }

          *(a1 + 16) = *(a1 + 32);
          *(a1 + 32) = v16;
          v13 = (a1 + 24);
        }

        else
        {
          *a1 = *(a1 + 32);
          *(a1 + 32) = v16;
        }
      }

      *v13 = v14;
      *v15 = v12;
      goto LABEL_34;
    }

    v17 = (a1 + 24);
    v18 = *(a1 + 24);
    v20 = (a1 + 8);
    v19 = *(a1 + 8);
    v21 = *(a1 + 40);
    if (v18 >= v19)
    {
      if (v21 >= v18)
      {
        goto LABEL_50;
      }

      v30 = *(a1 + 16);
      v31 = *(a1 + 32);
      *(a1 + 16) = v31;
      *(a1 + 32) = v30;
      *(a1 + 24) = v21;
      *(a1 + 40) = v18;
      if (v21 >= v19)
      {
        goto LABEL_49;
      }

      v32 = *a1;
      *a1 = v31;
      *(a1 + 16) = v32;
    }

    else
    {
      v22 = *a1;
      if (v21 >= v18)
      {
        *a1 = *(a1 + 16);
        *(a1 + 16) = v22;
        *(a1 + 8) = v18;
        *(a1 + 24) = v19;
        if (v21 >= v19)
        {
          goto LABEL_50;
        }

        *(a1 + 16) = *(a1 + 32);
        *(a1 + 32) = v22;
        v20 = (a1 + 24);
      }

      else
      {
        *a1 = *(a1 + 32);
        *(a1 + 32) = v22;
      }

      v17 = (a1 + 40);
      v18 = v19;
    }

    *v20 = v21;
    *v17 = v19;
LABEL_49:
    v21 = v18;
LABEL_50:
    v43 = *(a2 - 1);
    if (v43 >= v21)
    {
      return 1;
    }

    v44 = *(a1 + 32);
    *(a1 + 32) = *(a2 - 4);
    *(a2 - 4) = v44;
    *(a1 + 40) = v43;
    *(a2 - 1) = v21;
    v45 = *(a1 + 40);
    v46 = *(a1 + 24);
    if (v45 >= v46)
    {
      return 1;
    }

    v47 = *(a1 + 16);
    v48 = *(a1 + 32);
    *(a1 + 16) = v48;
    *(a1 + 32) = v47;
    *(a1 + 24) = v45;
    *(a1 + 40) = v46;
    v49 = *(a1 + 8);
    if (v45 >= v49)
    {
      return 1;
    }

    v50 = *a1;
    *a1 = v48;
    *(a1 + 16) = v50;
    *(a1 + 8) = v45;
    *(a1 + 24) = v49;
    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 != 2)
  {
    goto LABEL_14;
  }

  v4 = *(a2 - 1);
  v5 = *(a1 + 8);
  if (v4 >= v5)
  {
    return 1;
  }

  v6 = *a1;
  *a1 = *(a2 - 4);
  *(a2 - 4) = v6;
  *(a1 + 8) = v4;
  *(a2 - 1) = v5;
  return 1;
}

void std::vector<std::pair<int,long long>>::__append(uint64_t a1, unint64_t a2)
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

__n128 std::__function::__func<operations_research::sat::CpModelPresolver::ExploitEquivalenceRelations(int,operations_research::sat::ConstraintProto *)::$_0,std::allocator<operations_research::sat::CpModelPresolver::ExploitEquivalenceRelations(int,operations_research::sat::ConstraintProto *)::$_0>,void ()(int *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F3DD88;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::CpModelPresolver::ExploitEquivalenceRelations(int,operations_research::sat::ConstraintProto *)::$_0,std::allocator<operations_research::sat::CpModelPresolver::ExploitEquivalenceRelations(int,operations_research::sat::ConstraintProto *)::$_0>,void ()(int *)>::operator()(uint64_t a1, unsigned int **a2)
{
  v3 = *a2;
  result = operations_research::sat::PresolveContext::GetLiteralRepresentative(*(*(a1 + 16) + 8), **a2);
  if (result != *v3)
  {
    **(a1 + 8) = 1;
    *v3 = result;
  }

  return result;
}

uint64_t std::__function::__func<operations_research::sat::CpModelPresolver::ExploitEquivalenceRelations(int,operations_research::sat::ConstraintProto *)::$_0,std::allocator<operations_research::sat::CpModelPresolver::ExploitEquivalenceRelations(int,operations_research::sat::ConstraintProto *)::$_0>,void ()(int *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat16CpModelPresolver27ExploitEquivalenceRelationsEiPNS0_15ConstraintProtoEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat16CpModelPresolver27ExploitEquivalenceRelationsEiPNS0_15ConstraintProtoEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat16CpModelPresolver27ExploitEquivalenceRelationsEiPNS0_15ConstraintProtoEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat16CpModelPresolver27ExploitEquivalenceRelationsEiPNS0_15ConstraintProtoEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t absl::lts_20240722::container_internal::btree_iterator<absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::set_params<int,std::less<int>,std::allocator<int>,256,false>> const,int const&,int const*>::operator-(uint64_t *a1, uint64_t *a2, int a3)
{
  v3 = *a1;
  if (*a1 == a2)
  {
    LODWORD(v4) = *(a1 + 2);
    if (*(v3 + 11))
    {
      return v4 - a3;
    }

    if (v4 == a3)
    {
      return 0;
    }
  }

  else
  {
    LODWORD(v4) = *(a1 + 2);
  }

  if (*(a2 + 11))
  {
    v5 = -a3;
  }

  else
  {
    a2 = a2[(a3 + 1) + 32];
    if (*(a2 + 11))
    {
      v5 = 1;
    }

    else
    {
      v5 = 1;
      do
      {
        a2 = a2[32];
      }

      while (!*(a2 + 11));
    }
  }

  v7 = *(a2 + 8);
  v8 = *a2;
  v4 = v4;
  while (1)
  {
    v9 = v8[v7 + 32];
    if (!*(v9 + 11))
    {
      do
      {
        v9 = v9[32];
      }

      while (!*(v9 + 11));
      v7 = *(v9 + 8);
      v8 = *v9;
    }

    if (v9 == v3)
    {
      return v4 + v5;
    }

    v10 = *(v9 + 10);
    if (v8 == v3 && v7 == v4)
    {
      goto LABEL_28;
    }

    if (v7 >= *(v8 + 10))
    {
      while (1)
      {
        v7 = *(v8 + 8);
        v8 = *v8;
        if (v8 == v3 && v7 == v4)
        {
          break;
        }

        if (v7 < *(v8 + 10))
        {
          goto LABEL_14;
        }
      }

LABEL_28:
      v4 = v10;
      return v4 + v5;
    }

LABEL_14:
    v5 += v10 + 1;
    ++v7;
  }
}

char *std::__stable_sort<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::TryToReduceCoefficientsOfLinearConstraint(int,operations_research::sat::ConstraintProto *)::$_0 &,std::__wrap_iter<operations_research::sat::CpModelPresolver::RdEntry *>>(char *result, char *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      v6 = *(a2 - 3);
      v5 = a2 - 24;
      if (v6 > *result)
      {
        v7 = *(result + 2);
        v8 = *result;
        v9 = *(v5 + 2);
        *result = *v5;
        *(result + 2) = v9;
        *v5 = v8;
        *(v5 + 2) = v7;
      }
    }

    else if (a3 > 128)
    {
      v19 = a3 >> 1;
      v20 = 24 * (a3 >> 1);
      v21 = a3 - (a3 >> 1);
      v22 = &result[v20];
      if (a3 <= a5)
      {
        v26 = result;
        v28 = a4;
        std::__stable_sort_move<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::TryToReduceCoefficientsOfLinearConstraint(int,operations_research::sat::ConstraintProto *)::$_0 &,std::__wrap_iter<operations_research::sat::CpModelPresolver::RdEntry *>>(result, v22, a3 >> 1, a4);
        v29 = v28 + 24 * v19;
        result = std::__stable_sort_move<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::TryToReduceCoefficientsOfLinearConstraint(int,operations_research::sat::ConstraintProto *)::$_0 &,std::__wrap_iter<operations_research::sat::CpModelPresolver::RdEntry *>>(&v26[v20], a2, v21, v29);
        v30 = v28 + 24 * a3;
        if (v20)
        {
          v31 = v29;
          v32 = v26;
          while (v31 != v30)
          {
            if (*v31 <= *v28)
            {
              v33 = *v28;
              *(v32 + 2) = *(v28 + 16);
              *v32 = v33;
              v32 += 24;
              v28 += 24;
              if (v28 == v29)
              {
                goto LABEL_34;
              }
            }

            else
            {
              v34 = *v31;
              *(v32 + 2) = *(v31 + 16);
              *v32 = v34;
              v32 += 24;
              v31 += 24;
              if (v28 == v29)
              {
                goto LABEL_34;
              }
            }
          }

          while (v28 != v29)
          {
            v35 = *v28;
            *(v32 + 2) = *(v28 + 16);
            *v32 = v35;
            v32 += 24;
            v28 += 24;
          }
        }

        else
        {
          v31 = v29;
          v32 = v26;
LABEL_34:
          while (v31 != v30)
          {
            v36 = *v31;
            *(v32 + 2) = *(v31 + 16);
            *v32 = v36;
            v32 += 24;
            v31 += 24;
          }
        }
      }

      else
      {
        v23 = result;
        std::__stable_sort<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::TryToReduceCoefficientsOfLinearConstraint(int,operations_research::sat::ConstraintProto *)::$_0 &,std::__wrap_iter<operations_research::sat::CpModelPresolver::RdEntry *>>(result, v22, a3 >> 1, a4, a5);
        std::__stable_sort<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::TryToReduceCoefficientsOfLinearConstraint(int,operations_research::sat::ConstraintProto *)::$_0 &,std::__wrap_iter<operations_research::sat::CpModelPresolver::RdEntry *>>(&v23[v20], a2, v21, a4, a5);

        return std::__inplace_merge<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::TryToReduceCoefficientsOfLinearConstraint(int,operations_research::sat::ConstraintProto *)::$_0 &,std::__wrap_iter<operations_research::sat::CpModelPresolver::RdEntry *>>(v23, &v23[v20], a2, v19, v21, a4, a5);
      }
    }

    else if (result != a2)
    {
      v10 = result + 24;
      if (result + 24 != a2)
      {
        v11 = 0;
        v12 = result;
        do
        {
          v14 = v10;
          v15 = *v10;
          if (v15 > *v12)
          {
            v37 = *(v12 + 2);
            v16 = v11;
            do
            {
              v17 = &result[v16];
              *(v17 + 24) = *&result[v16];
              *(v17 + 5) = *&result[v16 + 16];
              if (!v16)
              {
                v13 = result;
                goto LABEL_11;
              }

              v16 -= 24;
            }

            while (v15 > *(v17 - 3));
            v13 = &result[v16 + 24];
LABEL_11:
            *v13 = v15;
            *(v13 + 8) = v37;
          }

          v10 = v14 + 3;
          v11 += 24;
          v12 = v14;
        }

        while (v14 + 3 != a2);
      }
    }
  }

  return result;
}

uint64_t std::__stable_sort_move<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::TryToReduceCoefficientsOfLinearConstraint(int,operations_research::sat::ConstraintProto *)::$_0 &,std::__wrap_iter<operations_research::sat::CpModelPresolver::RdEntry *>>(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    if (a3 == 2)
    {
      v6 = *(a2 - 3);
      v5 = a2 - 3;
      if (v6 <= *result)
      {
        v19 = *result;
        *(a4 + 16) = *(result + 16);
        *a4 = v19;
        v8 = *v5;
        v9 = v5[2];
      }

      else
      {
        v7 = *v5;
        *(a4 + 16) = v5[2];
        *a4 = v7;
        v8 = *result;
        v9 = *(result + 16);
      }

      *(a4 + 40) = v9;
      *(a4 + 24) = v8;
    }

    else if (a3 == 1)
    {
      v4 = *result;
      *(a4 + 16) = *(result + 16);
      *a4 = v4;
    }

    else if (a3 > 8)
    {
      v20 = a3 >> 1;
      v21 = 24 * (a3 >> 1);
      v22 = v21 + result;
      v23 = result;
      (std::__stable_sort<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::TryToReduceCoefficientsOfLinearConstraint(int,operations_research::sat::ConstraintProto *)::$_0 &,std::__wrap_iter<operations_research::sat::CpModelPresolver::RdEntry *>>)();
      result = std::__stable_sort<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::TryToReduceCoefficientsOfLinearConstraint(int,operations_research::sat::ConstraintProto *)::$_0 &,std::__wrap_iter<operations_research::sat::CpModelPresolver::RdEntry *>>(v22, a2, a3 - v20, a4 + v21, a3 - v20);
      if (v21)
      {
        v27 = v22;
        v28 = a4;
        v29 = a2;
        v30 = v23;
        while (v27 != a2)
        {
          if (*v27 <= *v30)
          {
            v31 = *v30;
            *(v28 + 16) = *(v30 + 16);
            *v28 = v31;
            v28 += 24;
            v30 += 24;
            if (v30 == v22)
            {
              goto LABEL_33;
            }
          }

          else
          {
            v32 = *v27;
            *(v28 + 16) = v27[2];
            *v28 = v32;
            v28 += 24;
            v27 += 3;
            if (v30 == v22)
            {
              goto LABEL_33;
            }
          }
        }

        while (v30 != v22)
        {
          v33 = *v30;
          *(v28 + 16) = *(v30 + 16);
          *v28 = v33;
          v28 += 24;
          v30 += 24;
        }
      }

      else
      {
        v27 = v22;
        v28 = a4;
        v29 = a2;
LABEL_33:
        while (v27 != v29)
        {
          v34 = *v27;
          *(v28 + 16) = v27[2];
          *v28 = v34;
          v28 += 24;
          v27 += 3;
        }
      }
    }

    else if (result != a2)
    {
      v10 = *result;
      *(a4 + 16) = *(result + 16);
      *a4 = v10;
      v11 = (result + 24);
      if ((result + 24) != a2)
      {
        v12 = 0;
        v13 = a4;
        do
        {
          v15 = v13;
          v16 = *v13;
          v13 += 3;
          v17 = v13;
          if (*v11 > v16)
          {
            *v13 = *v15;
            v13[2] = v15[2];
            v17 = a4;
            if (v15 != a4)
            {
              v18 = v12;
              while (1)
              {
                v17 = (a4 + v18);
                if (*v11 <= *(a4 + v18 - 24))
                {
                  break;
                }

                *v17 = *(a4 + v18 - 24);
                v17[2] = *(a4 + v18 - 8);
                v18 -= 24;
                if (!v18)
                {
                  v17 = a4;
                  break;
                }
              }
            }
          }

          v14 = *v11;
          v17[2] = v11[2];
          *v17 = v14;
          v11 += 3;
          v12 += 24;
        }

        while (v11 != a2);
      }
    }
  }

  return result;
}

char *std::__inplace_merge<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::TryToReduceCoefficientsOfLinearConstraint(int,operations_research::sat::ConstraintProto *)::$_0 &,std::__wrap_iter<operations_research::sat::CpModelPresolver::RdEntry *>>(char *result, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a5)
  {
    v9 = result;
    while (a5 > a7 && a4 > a7)
    {
      if (!a4)
      {
        return result;
      }

      v10 = 0;
      v11 = -a4;
      while (*a2 <= *&v9[v10])
      {
        v10 += 24;
        if (__CFADD__(v11++, 1))
        {
          return result;
        }
      }

      v59 = a3;
      __src = a6;
      v57 = &v9[v10];
      v58 = a7;
      if (-v11 >= a5)
      {
        if (v11 == -1)
        {
          v50 = &v9[v10];
          v62 = *&v9[v10 + 16];
          v61 = *&v9[v10];
          v51 = *a2;
          *(v50 + 2) = *(a2 + 2);
          *v50 = v51;
          *a2 = v61;
          *(a2 + 2) = v62;
          return result;
        }

        v21 = -v11 / 2;
        v14 = a2;
        if (a2 != a3)
        {
          v22 = 0xAAAAAAAAAAAAAAABLL * ((a3 - a2) >> 3);
          v14 = a2;
          do
          {
            v23 = v22 >> 1;
            v24 = &v14[24 * (v22 >> 1)];
            v26 = *v24;
            v25 = v24 + 24;
            v22 += ~(v22 >> 1);
            if (v26 > *&v9[24 * v21 + v10])
            {
              v14 = v25;
            }

            else
            {
              v22 = v23;
            }
          }

          while (v22);
        }

        v13 = 0xAAAAAAAAAAAAAAABLL * ((v14 - a2) >> 3);
        v15 = &v9[24 * v21 + v10];
      }

      else
      {
        v13 = a5 / 2;
        v14 = &a2[24 * (a5 / 2)];
        v15 = a2;
        if (a2 - v9 != v10)
        {
          v16 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v9 - v10) >> 3);
          v15 = &v9[v10];
          do
          {
            v17 = v16 >> 1;
            v18 = &v15[24 * (v16 >> 1)];
            v20 = *v18;
            v19 = v18 + 24;
            v16 += ~(v16 >> 1);
            if (v20 < *v14)
            {
              v16 = v17;
            }

            else
            {
              v15 = v19;
            }
          }

          while (v16);
        }

        v21 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v9 - v10) >> 3);
      }

      a4 = -(v21 + v11);
      v27 = a5 - v13;
      v28 = a5;
      v29 = v21;
      v30 = std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<operations_research::sat::CpModelPresolver::RdEntry *>,std::__wrap_iter<operations_research::sat::CpModelPresolver::RdEntry *>>(v15, a2, v14);
      v31 = v29;
      v32 = v30;
      if (v31 + v13 >= v28 - (v31 + v13) - v11)
      {
        a6 = __src;
        v33 = v31;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::TryToReduceCoefficientsOfLinearConstraint(int,operations_research::sat::ConstraintProto *)::$_0 &,std::__wrap_iter<operations_research::sat::CpModelPresolver::RdEntry *>>(v30, v14, v59, a4, v27, __src, v58);
        a4 = v33;
        a7 = v58;
        a3 = v32;
        v9 = v57;
        a5 = v13;
        a2 = v15;
        if (!v13)
        {
          return result;
        }
      }

      else
      {
        a6 = __src;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::TryToReduceCoefficientsOfLinearConstraint(int,operations_research::sat::ConstraintProto *)::$_0 &,std::__wrap_iter<operations_research::sat::CpModelPresolver::RdEntry *>>(&v9[v10], v15, v30, v31, v13, __src, v58);
        a7 = v58;
        v9 = v32;
        a3 = v59;
        a5 = v27;
        a2 = v14;
        if (!v27)
        {
          return result;
        }
      }
    }

    if (a4 <= a5)
    {
      if (a2 != v9)
      {
        v43 = 0;
        v44 = -a6;
        do
        {
          v45 = (a6 + v43);
          v46 = *&v9[v43];
          *(v45 + 2) = *&v9[v43 + 16];
          *v45 = v46;
          v44 -= 24;
          v43 += 24;
        }

        while (&v9[v43] != a2);
        if (v43)
        {
          v47 = (a6 + v43);
          while (a2 != a3)
          {
            if (*a2 <= *a6)
            {
              v48 = *a6;
              *(v9 + 2) = *(a6 + 16);
              *v9 = v48;
              v9 += 24;
              a6 += 24;
              if (v47 == a6)
              {
                return result;
              }
            }

            else
            {
              v49 = *a2;
              *(v9 + 2) = *(a2 + 2);
              *v9 = v49;
              v9 += 24;
              a2 += 24;
              if (v47 == a6)
              {
                return result;
              }
            }
          }

          return memmove(v9, a6, -(a6 + v44));
        }
      }
    }

    else if (a2 != a3)
    {
      v34 = 0;
      do
      {
        v35 = (a6 + v34);
        v36 = *&a2[v34];
        *(v35 + 2) = *&a2[v34 + 16];
        *v35 = v36;
        v34 += 24;
      }

      while (&a2[v34] != a3);
      if (v34)
      {
        v37 = (a6 + v34);
        while (a2 != v9)
        {
          v38 = *(a2 - 3);
          v39 = *(v37 - 3);
          v40 = v39 <= v38;
          if (v39 <= v38)
          {
            v41 = v37 - 24;
          }

          else
          {
            v41 = a2 - 24;
          }

          v42 = *v41;
          *(a3 - 1) = *(v41 + 2);
          *(a3 - 24) = v42;
          a3 -= 24;
          if (v40)
          {
            v37 -= 24;
          }

          else
          {
            a2 -= 24;
          }

          if (v37 == a6)
          {
            return result;
          }
        }

        if (v37 != a6)
        {
          v52 = -24;
          do
          {
            v53 = *(v37 - 24);
            v54 = *(v37 - 1);
            v55 = v37 - 24;
            v56 = &a3[v52];
            *(v56 + 2) = v54;
            *v56 = v53;
            v52 -= 24;
            v37 = v55;
          }

          while (v55 != a6);
        }
      }
    }
  }

  return result;
}

char *std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<operations_research::sat::CpModelPresolver::RdEntry *>,std::__wrap_iter<operations_research::sat::CpModelPresolver::RdEntry *>>(char *__src, char *a2, char *a3)
{
  v4 = a3;
  v5 = a2 - __src;
  if (a2 != __src)
  {
    v6 = a3 - a2;
    if (a3 == a2)
    {
      return __src;
    }

    else if (__src + 24 == a2)
    {
      v28 = *__src;
      v31 = *(__src + 2);
      v7 = __src;
      memmove(__src, __src + 24, v6);
      v4 = v7 + v6;
      *v4 = v28;
      *(v4 + 2) = v31;
    }

    else if (a2 + 24 == a3)
    {
      v4 = __src + 24;
      v29 = *(a3 - 24);
      v32 = *(a3 - 1);
      v8 = a3 - 24 - __src;
      if (a3 - 24 != __src)
      {
        v9 = __src;
        memmove(__src + 24, __src, v8);
        __src = v9;
      }

      *__src = v29;
      *(__src + 2) = v32;
    }

    else
    {
      v10 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
      if (0xAAAAAAAAAAAAAAABLL * (v5 >> 3) == v10)
      {
        v11 = __src + 24;
        v12 = a2 + 24;
        do
        {
          v13 = *(v11 - 1);
          v14 = *(v11 - 24);
          v15 = *(v12 - 1);
          *(v11 - 24) = *(v12 - 24);
          *(v11 - 1) = v15;
          *(v12 - 24) = v14;
          *(v12 - 1) = v13;
          if (v11 == a2)
          {
            break;
          }

          v11 += 24;
          v16 = v12 == a3;
          v12 += 24;
        }

        while (!v16);
        return a2;
      }

      else
      {
        v17 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
        do
        {
          v18 = v17;
          v17 = v10;
          v10 = v18 % v10;
        }

        while (v10);
        v19 = &__src[24 * v17];
        do
        {
          v20 = *(v19 - 24);
          v21 = *(v19 - 1);
          v19 -= 24;
          v30 = v20;
          v33 = v21;
          v22 = &v19[v5];
          v23 = v19;
          do
          {
            v24 = v22;
            v25 = *v22;
            *(v23 + 2) = *(v22 + 2);
            *v23 = v25;
            v26 = a3 - v22;
            v22 += 8 * (v5 >> 3);
            if (v5 >= v26)
            {
              v22 = &a2[-v26];
            }

            v23 = v24;
          }

          while (v22 != v19);
          *(v24 + 2) = v33;
          *v24 = v30;
        }

        while (v19 != __src);
        return &__src[v6];
      }
    }
  }

  return v4;
}

void std::vector<operations_research::Domain>::__append(void ***a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * (v4 - v3) >= a2)
  {
    if (!(24 * a2))
    {
LABEL_27:
      a1[1] = v3;
      return;
    }

    v16 = &v3[3 * a2];
    v17 = (a2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v17)
    {
      v18 = v17 + 1;
      v19 = (v17 + 1) & 0x3FFFFFFFFFFFFFFELL;
      v20 = &v3[3 * v19];
      v21 = v19;
      do
      {
        *v3 = 0;
        v3[3] = 0;
        v3 += 6;
        v21 -= 2;
      }

      while (v21);
      if (v18 == v19)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v20 = a1[1];
    }

    do
    {
      *v20 = 0;
      v20 += 3;
    }

    while (v20 != v16);
LABEL_26:
    v3 = v16;
    goto LABEL_27;
  }

  v5 = 0xAAAAAAAAAAAAAAABLL * (v3 - *a1);
  v6 = v5 + a2;
  if (v5 + a2 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v7 = 0xAAAAAAAAAAAAAAABLL * (v4 - *a1);
  if (2 * v7 > v6)
  {
    v6 = 2 * v7;
  }

  if (v7 >= 0x555555555555555)
  {
    v8 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v8 = v6;
  }

  if (v8)
  {
    if (v8 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v22 = 24 * v5;
  if (24 * a2)
  {
    v9 = v22 + 24 * a2;
    v10 = (a2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v10)
    {
      v11 = v10 + 1;
      v12 = (v10 + 1) & 0x3FFFFFFFFFFFFFFELL;
      v13 = (v22 + 24 * v12);
      v14 = v22;
      v15 = v12;
      do
      {
        *v14 = 0;
        v14[3] = 0;
        v14 += 6;
        v15 -= 2;
      }

      while (v15);
      if (v11 == v12)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v13 = v22;
    }

    do
    {
      *v13 = 0;
      v13 += 3;
    }

    while (v13 != v9);
  }

  else
  {
    v9 = 24 * v5;
  }

LABEL_30:
  v23 = *a1;
  v24 = a1[1];
  v25 = v22 + *a1 - v24;
  if (v24 != *a1)
  {
    v26 = *a1;
    v27 = v25;
    do
    {
      *v27 = 0;
      *v27 = *v26;
      *(v27 + 8) = *(v26 + 1);
      *v26 = 0;
      v26 += 3;
      v27 += 24;
    }

    while (v26 != v24);
    do
    {
      if (*v23)
      {
        operator delete(v23[1]);
      }

      v23 += 3;
    }

    while (v23 != v24);
    v23 = *a1;
  }

  *a1 = v25;
  a1[1] = v9;
  a1[2] = 0;
  if (v23)
  {

    operator delete(v23);
  }
}

void *std::vector<std::vector<long long>>::__emplace_back_slow_path<std::vector<long long> const&>(uint64_t a1, void *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v4 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v5 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v5[1] = 0;
  v5[2] = 0;
  *v5 = 0;
  v6 = a2[1] - *a2;
  if (v6)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v7 = v5 + 3;
  v8 = *a1;
  v9 = *(a1 + 8) - *a1;
  v10 = v5 - v9;
  memcpy(v10, *a1, v9);
  *a1 = v10;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

void sub_23CAC675C(_Unwind_Exception *a1, uint64_t a2, ...)
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

const void **std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::vector<long long> *>,std::__wrap_iter<std::vector<long long> *>,std::__equal_to &>(const void **a1, const void **a2)
{
  result = a2;
  if (a1 != a2)
  {
    v5 = a1 + 3;
    result = a2;
    if (a1 + 3 != a2)
    {
      v6 = *a1;
      while (1)
      {
        v7 = *(v5 - 2) - v6;
        v8 = *v5;
        if (v7 == v5[1] - *v5 && !memcmp(v6, *v5, v7))
        {
          break;
        }

        v5 += 3;
        v6 = v8;
        if (v5 == a2)
        {
          return a2;
        }
      }

      v9 = v5 - 3;
      result = a2;
      if (v5 - 3 != a2)
      {
        v10 = v5 + 3;
        if (v9 + 6 == a2)
        {
          v11 = v9;
        }

        else
        {
          do
          {
            while (1)
            {
              v12 = v9[1] - *v9;
              v13 = *v10;
              if (v12 != v10[1] - *v10)
              {
                break;
              }

              v16 = *v10;
              v14 = memcmp(*v9, *v10, v12);
              v13 = v16;
              if (v14)
              {
                break;
              }

              v11 = v9;
              v10 += 3;
              if (v10 == a2)
              {
                return v11 + 3;
              }
            }

            v11 = v9 + 3;
            v15 = v9[3];
            if (v15)
            {
              v9[4] = v15;
              operator delete(v15);
              *v11 = 0;
              v9[4] = 0;
              v9[5] = 0;
              v13 = *v10;
            }

            *(v9 + 3) = v13;
            v9[5] = v10[2];
            *v10 = 0;
            v10[1] = 0;
            v10[2] = 0;
            v9 += 3;
            v10 += 3;
          }

          while (v10 != a2);
        }

        return v11 + 3;
      }
    }
  }

  return result;
}

void *std::vector<long long>::__assign_with_size[abi:ne200100]<absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::iterator,absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::iterator>(uint64_t a1, void *a2, uint64_t *a3, void *a4, uint64_t a5, unint64_t a6)
{
  v6 = a2;
  v8 = *(a1 + 16);
  result = *a1;
  if (a6 > (v8 - result) >> 3)
  {
    if (result)
    {
      *(a1 + 8) = result;
      v10 = a6;
      operator delete(result);
      a6 = v10;
      v8 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    if (!(a6 >> 61))
    {
      v11 = v8 >> 2;
      if (v8 >> 2 <= a6)
      {
        v11 = a6;
      }

      v12 = v8 >= 0x7FFFFFFFFFFFFFF8;
      v13 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v12)
      {
        v13 = v11;
      }

      if (!(v13 >> 61))
      {
        operator new();
      }
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v14 = *(a1 + 8);
  v15 = v14 - result;
  if (v15 < a6)
  {
    if (v15 <= 0)
    {
      v17 = a2;
      v16 = a3;
    }

    else
    {
      v16 = a3;
      v17 = a2;
      do
      {
        v20 = *(v17 + 1);
        v17 = (v17 + 1);
        LOBYTE(v19) = v20;
        ++v16;
        if (v20 <= -2)
        {
          do
          {
            v21 = __clz(__rbit64((*v17 | ~(*v17 >> 7)) & 0x101010101010101)) >> 3;
            v17 = (v17 + v21);
            v16 += v21;
            v19 = *v17;
          }

          while (v19 < -1);
        }

        if (v19 == 255)
        {
          v17 = 0;
        }
      }

      while (v15-- > 1);
      if (a2 != v17)
      {
        do
        {
          v25 = *a3++;
          *result = v25;
          LODWORD(v25) = *(v6 + 1);
          v6 = (v6 + 1);
          v26 = v25;
          if (v25 <= -2)
          {
            do
            {
              v27 = __clz(__rbit64((*v6 | ~(*v6 >> 7)) & 0x101010101010101)) >> 3;
              v6 = (v6 + v27);
              a3 += v27;
            }

            while (*v6 < -1);
            v26 = *v6;
          }

          if (v26 == 255)
          {
            v6 = 0;
          }

          ++result;
        }

        while (v6 != v17);
        if (v17 == a4)
        {
          goto LABEL_40;
        }

        goto LABEL_44;
      }
    }

    if (a2 == a4)
    {
LABEL_40:
      *(a1 + 8) = v14;
      return result;
    }

    do
    {
LABEL_44:
      v28 = *v16++;
      *v14 = v28;
      LODWORD(v28) = *(v17 + 1);
      v17 = (v17 + 1);
      v29 = v28;
      if (v28 <= -2)
      {
        do
        {
          v30 = __clz(__rbit64((*v17 | ~(*v17 >> 7)) & 0x101010101010101)) >> 3;
          v17 = (v17 + v30);
          v16 += v30;
        }

        while (*v17 < -1);
        v29 = *v17;
      }

      if (v29 == 255)
      {
        v17 = 0;
      }

      ++v14;
    }

    while (v17 != a4);
    goto LABEL_40;
  }

  while (v6 != a4)
  {
    v22 = *a3++;
    *result = v22;
    LODWORD(v22) = *(v6 + 1);
    v6 = (v6 + 1);
    v23 = v22;
    if (v22 <= -2)
    {
      do
      {
        v24 = __clz(__rbit64((*v6 | ~(*v6 >> 7)) & 0x101010101010101)) >> 3;
        v6 = (v6 + v24);
        a3 += v24;
      }

      while (*v6 < -1);
      v23 = *v6;
    }

    if (v23 == 255)
    {
      v6 = 0;
    }

    ++result;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t std::__set_difference[abi:ne200100]<std::__less<void,void>,std::__wrap_iter<std::vector<long long> *> &,std::__wrap_iter<std::vector<long long> *> &,std::__wrap_iter<std::vector<long long> *> &,std::__wrap_iter<std::vector<long long> *> &,std::__wrap_iter<std::vector<long long> *> &>(uint64_t *a1, uint64_t *a2, char ***a3, char ***a4, char ***a5)
{
  v6 = *a1;
  v7 = *a2;
  if (*a1 == *a2)
  {
LABEL_30:
    v26 = *a5;
    return v6;
  }

  else
  {
    v10 = *a3;
    if (*a3 != *a4)
    {
      while (1)
      {
        v13 = *v6;
        v14 = *(v6 + 8);
        v15 = *v10;
        v16 = v10[1];
        v17 = (v14 - *v6) >> 3;
        v18 = (v16 - *v10) >> 3;
        if (v18 >= v17)
        {
          v18 = (v14 - *v6) >> 3;
        }

        v19 = *v10;
        v20 = *v6;
        if ((v18 & 0x1FFFFFFFFFFFFFFFLL) != 0)
        {
          v21 = 8 * v18;
          v19 = *v10;
          v20 = *v6;
          while (*v20 == *v19)
          {
            v20 += 8;
            v19 += 8;
            v21 -= 8;
            if (!v21)
            {
              v20 = &v13[8 * v18];
              break;
            }
          }
        }

        if (v19 != v16 && (v20 == v14 || *v20 < *v19))
        {
          break;
        }

        if ((v18 & 0x1FFFFFFFFFFFFFFFLL) != 0)
        {
          v23 = 8 * v18;
          v24 = &v15[8 * v18];
          while (*v15 == *v13)
          {
            v15 += 8;
            v13 += 8;
            v23 -= 8;
            if (!v23)
            {
              v15 = v24;
              break;
            }
          }
        }

        if (v13 == v14)
        {
          v22 = a3;
          goto LABEL_25;
        }

        if (v15 != v16)
        {
          v25 = *v15;
          v22 = a3;
          if (v25 >= *v13)
          {
            goto LABEL_25;
          }

          goto LABEL_26;
        }

        *a3 = v10 + 3;
        v6 = *a1;
        v7 = *a2;
        if (*a1 == *a2)
        {
          goto LABEL_30;
        }

LABEL_27:
        v10 = *a3;
        if (*a3 == *a4)
        {
          goto LABEL_32;
        }
      }

      v22 = a5;
      if (*a5 != v6)
      {
        std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(*a5, v13, v14, v17);
        v6 = *a1;
        v22 = a5;
      }

LABEL_25:
      *a1 = v6 + 24;
      v10 = *v22;
LABEL_26:
      *v22 = v10 + 3;
      v6 = *a1;
      v7 = *a2;
      if (*a1 == *a2)
      {
        goto LABEL_30;
      }

      goto LABEL_27;
    }

LABEL_32:
    v28 = *a5;
    while (v6 != v7)
    {
      if (v6 != v28)
      {
        std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(v28, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 3);
      }

      v6 += 24;
      v28 += 3;
    }
  }

  return v7;
}

void std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveAllDiff(operations_research::sat::ConstraintProto *)::$_0 &,operations_research::sat::LinearExpressionProto *,false>(uint64_t a1, char *a2, google::protobuf::Message *a3, char a4)
{
  v5 = a3;
LABEL_2:
  v8 = a2 - 80;
  i = a1;
  while (1)
  {
    a1 = i;
    v10 = &a2[-i];
    v11 = 0xCCCCCCCCCCCCCCCDLL * (&a2[-i] >> 4);
    v12 = v11 - 2;
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3uLL:
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveAllDiff(operations_research::sat::ConstraintProto *)::$_0 &,operations_research::sat::LinearExpressionProto *,0>(i, (i + 80), (a2 - 80));
          return;
        case 4uLL:
          std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveAllDiff(operations_research::sat::ConstraintProto *)::$_0 &,operations_research::sat::LinearExpressionProto *,0>(i, i + 80, i + 160, (a2 - 80));
          return;
        case 5uLL:
          std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveAllDiff(operations_research::sat::ConstraintProto *)::$_0 &,operations_research::sat::LinearExpressionProto *,0>(i, i + 80, i + 160, i + 240, (a2 - 80));
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
        v152 = **(a2 - 7);
        v153 = **(i + 24);
        v154 = **(a2 - 4);
        v155 = *(i + 48);
        v156 = *v155;
        if (v154 >= 0)
        {
          v157 = **(a2 - 4);
        }

        else
        {
          v157 = -v154;
        }

        if (v156 >= 0)
        {
          v158 = *v155;
        }

        else
        {
          v158 = -v156;
        }

        v159 = *(a2 - 2);
        v160 = *(i + 64);
        if (v159 >= 0)
        {
          v161 = *(a2 - 2);
        }

        else
        {
          v161 = -v159;
        }

        if (v160 >= 0)
        {
          v162 = *(i + 64);
        }

        else
        {
          v162 = -v160;
        }

        if (v152 < v153)
        {
          goto LABEL_389;
        }

        if (v153 < v152)
        {
          return;
        }

        if (v157 < v158)
        {
          goto LABEL_389;
        }

        if (v158 < v157)
        {
          return;
        }

        if (v154 < v156)
        {
          goto LABEL_389;
        }

        if (v156 < v154)
        {
          return;
        }

        if (v161 < v162)
        {
LABEL_389:
          if (v8 == i)
          {
            return;
          }
        }

        else if (v8 == i || v159 >= v160 || v162 < v161)
        {
          return;
        }

        v163 = *(i + 8);
        if (v163)
        {
          v163 = *(v163 & 0xFFFFFFFFFFFFFFFELL);
          v164 = *(a2 - 9);
          if (v164)
          {
            goto LABEL_841;
          }

LABEL_392:
          v165 = i;
          v166 = (a2 - 80);
          if (v163 == v164)
          {
LABEL_842:
            operations_research::sat::LinearExpressionProto::InternalSwap(v165, v166);
            return;
          }
        }

        else
        {
          v164 = *(a2 - 9);
          if ((v164 & 1) == 0)
          {
            goto LABEL_392;
          }

LABEL_841:
          v165 = i;
          v166 = (a2 - 80);
          if (v163 == *(v164 & 0xFFFFFFFFFFFFFFFELL))
          {
            goto LABEL_842;
          }
        }

        google::protobuf::internal::GenericSwap(v165, v166, a3);
        return;
      }
    }

    if (v10 <= 1919)
    {
      break;
    }

    if (!v5)
    {
      if (i == a2)
      {
        return;
      }

      v199 = v12 >> 1;
      v200 = v12 >> 1;
LABEL_481:
      v201 = v200;
      v202 = 5 * v200;
      if (v199 < (0xCCCCCCCCCCCCCCCDLL * ((16 * v202) >> 4)))
      {
        goto LABEL_480;
      }

      v203 = (0x999999999999999ALL * ((16 * v202) >> 4)) | 1;
      v204 = a1 + 80 * v203;
      if ((0x999999999999999ALL * ((16 * v202) >> 4) + 2) < v11)
      {
        v205 = **(v204 + 24);
        v206 = **(v204 + 104);
        v207 = **(v204 + 48);
        v208 = *(v204 + 128);
        v209 = *v208;
        v210 = v207 >= 0 ? **(v204 + 48) : -v207;
        v211 = v209 >= 0 ? *v208 : -v209;
        v212 = *(v204 + 64);
        v213 = *(v204 + 144);
        v214 = v212 >= 0 ? *(v204 + 64) : -v212;
        v215 = v213 >= 0 ? *(v204 + 144) : -v213;
        if (v205 < v206 || v206 >= v205 && (v210 < v211 || v211 >= v210 && (v207 < v209 || v209 >= v207 && (v214 < v215 || (v212 < v213 ? (v231 = v215 < v214) : (v231 = 1), !v231)))))
        {
          v204 += 80;
          v203 = 0x999999999999999ALL * ((16 * v202) >> 4) + 2;
        }
      }

      v216 = a1 + 16 * v202;
      v217 = **(v204 + 24);
      v218 = **(v216 + 24);
      v219 = **(v204 + 48);
      v220 = *(v216 + 48);
      v221 = *v220;
      v222 = v219 >= 0 ? **(v204 + 48) : -v219;
      v223 = v221 >= 0 ? *v220 : -v221;
      v224 = *(v204 + 64);
      v225 = *(v216 + 64);
      v226 = v224 >= 0 ? *(v204 + 64) : -v224;
      v227 = v225 >= 0 ? *(v216 + 64) : -v225;
      if (v217 < v218)
      {
        goto LABEL_480;
      }

      if (v218 >= v217)
      {
        if (v222 < v223)
        {
          goto LABEL_480;
        }

        if (v223 >= v222)
        {
          if (v219 < v221)
          {
            goto LABEL_480;
          }

          if (v221 >= v219)
          {
            if (v226 < v227)
            {
              goto LABEL_480;
            }

            if (v224 < v225 && v227 >= v226)
            {
              goto LABEL_480;
            }
          }
        }
      }

      operations_research::sat::LinearExpressionProto::LinearExpressionProto(v357, 0);
      if (v357 == v216)
      {
        goto LABEL_542;
      }

      v228 = v358;
      if (v358)
      {
        v228 = *(v358 & 0xFFFFFFFFFFFFFFFELL);
        v229 = *(v216 + 8);
        if ((v229 & 1) == 0)
        {
LABEL_515:
          if (v228 != v229)
          {
LABEL_516:
            operations_research::sat::LinearExpressionProto::CopyFrom(v357, v216);
            goto LABEL_542;
          }

          goto LABEL_541;
        }
      }

      else
      {
        v229 = *(v216 + 8);
        if ((v229 & 1) == 0)
        {
          goto LABEL_515;
        }
      }

      if (v228 != *(v229 & 0xFFFFFFFFFFFFFFFELL))
      {
        goto LABEL_516;
      }

LABEL_541:
      operations_research::sat::LinearExpressionProto::InternalSwap(v357, v216);
      while (1)
      {
LABEL_542:
        v232 = v204;
        if (v216 == v204)
        {
          goto LABEL_550;
        }

        v233 = *(v216 + 8);
        if (v233)
        {
          v233 = *(v233 & 0xFFFFFFFFFFFFFFFELL);
          v234 = *(v204 + 8);
          if ((v234 & 1) == 0)
          {
LABEL_545:
            if (v233 != v234)
            {
              goto LABEL_546;
            }

            goto LABEL_549;
          }
        }

        else
        {
          v234 = *(v204 + 8);
          if ((v234 & 1) == 0)
          {
            goto LABEL_545;
          }
        }

        if (v233 != *(v234 & 0xFFFFFFFFFFFFFFFELL))
        {
LABEL_546:
          operations_research::sat::LinearExpressionProto::CopyFrom(v216, v204);
          goto LABEL_550;
        }

LABEL_549:
        operations_research::sat::LinearExpressionProto::InternalSwap(v216, v204);
LABEL_550:
        if (v199 >= v203)
        {
          v235 = 2 * v203;
          v203 = (2 * v203) | 1;
          v204 = a1 + 80 * v203;
          v236 = v235 + 2;
          if (v236 < v11)
          {
            v237 = **(v204 + 24);
            v238 = **(v204 + 104);
            v239 = **(v204 + 48);
            v240 = *(v204 + 128);
            v241 = *v240;
            v242 = v239 >= 0 ? **(v204 + 48) : -v239;
            v243 = v241 >= 0 ? *v240 : -v241;
            v244 = *(v204 + 64);
            v245 = *(v204 + 144);
            v246 = v244 >= 0 ? *(v204 + 64) : -v244;
            v247 = v245 >= 0 ? *(v204 + 144) : -v245;
            if (v237 < v238 || v238 >= v237 && (v242 < v243 || v243 >= v242 && (v239 < v241 || v241 >= v239 && (v246 < v247 || (v244 < v245 ? (v259 = v247 < v246) : (v259 = 1), !v259)))))
            {
              v204 += 80;
              v203 = v236;
            }
          }

          v248 = **(v204 + 24);
          v249 = *v359;
          v250 = *(v204 + 48);
          v251 = *v250;
          v252 = *v360;
          v253 = *v250 >= 0 ? *v250 : -v251;
          v254 = v252 >= 0 ? *v360 : -v252;
          v255 = *(v204 + 64);
          v256 = v255 >= 0 ? *(v204 + 64) : -v255;
          v257 = v361 >= 0 ? v361 : -v361;
          if (v248 >= v249)
          {
            v216 = v232;
            if (v249 < v248)
            {
              continue;
            }

            if (v253 >= v254)
            {
              v216 = v232;
              if (v254 < v253)
              {
                continue;
              }

              if (v251 >= v252)
              {
                v216 = v232;
                if (v252 < v251)
                {
                  continue;
                }

                if (v256 >= v257)
                {
                  v258 = v255 >= v361 || v257 < v256;
                  v216 = v232;
                  if (v258)
                  {
                    continue;
                  }
                }
              }
            }
          }
        }

        if (v232 != v357)
        {
          v260 = *(v232 + 1);
          if (v260)
          {
            v260 = *(v260 & 0xFFFFFFFFFFFFFFFELL);
            v261 = v358;
            if (v358)
            {
              goto LABEL_608;
            }

LABEL_605:
            if (v260 != v261)
            {
              goto LABEL_606;
            }

LABEL_478:
            operations_research::sat::LinearExpressionProto::InternalSwap(v232, v357);
          }

          else
          {
            v261 = v358;
            if ((v358 & 1) == 0)
            {
              goto LABEL_605;
            }

LABEL_608:
            if (v260 == *(v261 & 0xFFFFFFFFFFFFFFFELL))
            {
              goto LABEL_478;
            }

LABEL_606:
            operations_research::sat::LinearExpressionProto::CopyFrom(v232, v357);
          }
        }

        operations_research::sat::LinearExpressionProto::~LinearExpressionProto(v357);
LABEL_480:
        v200 = v201 - 1;
        if (v201)
        {
          goto LABEL_481;
        }

        v262 = 0xCCCCCCCCCCCCCCCDLL * (v10 >> 4);
        while (2)
        {
          v263 = a2;
          operations_research::sat::LinearExpressionProto::LinearExpressionProto(v355, 0);
          if (v355 != a1)
          {
            v264 = v356;
            if (v356)
            {
              v264 = *(v356 & 0xFFFFFFFFFFFFFFFELL);
              v265 = *(a1 + 8);
              if (v265)
              {
                goto LABEL_620;
              }

LABEL_617:
              if (v264 != v265)
              {
                goto LABEL_618;
              }

LABEL_621:
              operations_research::sat::LinearExpressionProto::InternalSwap(v355, a1);
            }

            else
            {
              v265 = *(a1 + 8);
              if ((v265 & 1) == 0)
              {
                goto LABEL_617;
              }

LABEL_620:
              if (v264 == *(v265 & 0xFFFFFFFFFFFFFFFELL))
              {
                goto LABEL_621;
              }

LABEL_618:
              operations_research::sat::LinearExpressionProto::CopyFrom(v355, a1);
            }
          }

          v266 = 0;
          v267 = a1;
LABEL_625:
          v268 = v267;
          v269 = v267 + 80 * v266;
          v267 = v269 + 80;
          v270 = 2 * v266;
          v266 = (2 * v266) | 1;
          v271 = v270 + 2;
          if (v271 < v262)
          {
            v272 = **(v269 + 104);
            v273 = **(v269 + 184);
            v274 = **(v269 + 128);
            v275 = *(v269 + 208);
            v276 = *v275;
            v277 = v274 >= 0 ? **(v269 + 128) : -v274;
            v278 = v276 >= 0 ? *v275 : -v276;
            v279 = *(v269 + 144);
            v280 = *(v269 + 224);
            v281 = v279 >= 0 ? *(v269 + 144) : -v279;
            v282 = v280 >= 0 ? *(v269 + 224) : -v280;
            if (v272 < v273 || v273 >= v272 && (v277 < v278 || v278 >= v277 && (v274 < v276 || v276 >= v274 && (v281 < v282 || (v279 < v280 ? (v285 = v282 < v281) : (v285 = 1), !v285)))))
            {
              v267 = v269 + 160;
              v266 = v271;
            }
          }

          if (v268 != v267)
          {
            v283 = *(v268 + 1);
            if (v283)
            {
              v283 = *(v283 & 0xFFFFFFFFFFFFFFFELL);
              v284 = *(v267 + 8);
              if (v284)
              {
                goto LABEL_658;
              }

LABEL_644:
              if (v283 != v284)
              {
                goto LABEL_645;
              }

LABEL_623:
              operations_research::sat::LinearExpressionProto::InternalSwap(v268, v267);
            }

            else
            {
              v284 = *(v267 + 8);
              if ((v284 & 1) == 0)
              {
                goto LABEL_644;
              }

LABEL_658:
              if (v283 == *(v284 & 0xFFFFFFFFFFFFFFFELL))
              {
                goto LABEL_623;
              }

LABEL_645:
              operations_research::sat::LinearExpressionProto::CopyFrom(v268, v267);
            }
          }

          if (v266 > ((v262 - 2) >> 1))
          {
            a2 -= 80;
            if (v267 == v263 - 80)
            {
              if (v267 == v355)
              {
                goto LABEL_613;
              }

              v288 = *(v267 + 8);
              if (v288)
              {
                v288 = *(v288 & 0xFFFFFFFFFFFFFFFELL);
                v289 = v356;
                if (v356)
                {
                  goto LABEL_712;
                }

LABEL_668:
                if (v288 == v289)
                {
LABEL_713:
                  operations_research::sat::LinearExpressionProto::InternalSwap(v267, v355);
                  goto LABEL_613;
                }
              }

              else
              {
                v289 = v356;
                if ((v356 & 1) == 0)
                {
                  goto LABEL_668;
                }

LABEL_712:
                if (v288 == *(v289 & 0xFFFFFFFFFFFFFFFELL))
                {
                  goto LABEL_713;
                }
              }

              operations_research::sat::LinearExpressionProto::CopyFrom(v267, v355);
              goto LABEL_613;
            }

            v286 = *(v267 + 8);
            if (v286)
            {
              v286 = *(v286 & 0xFFFFFFFFFFFFFFFELL);
              v287 = *(v263 - 9);
              if (v287)
              {
                goto LABEL_671;
              }

LABEL_663:
              if (v286 != v287)
              {
                goto LABEL_664;
              }

LABEL_672:
              operations_research::sat::LinearExpressionProto::InternalSwap(v267, (v263 - 80));
            }

            else
            {
              v287 = *(v263 - 9);
              if ((v287 & 1) == 0)
              {
                goto LABEL_663;
              }

LABEL_671:
              if (v286 == *(v287 & 0xFFFFFFFFFFFFFFFELL))
              {
                goto LABEL_672;
              }

LABEL_664:
              operations_research::sat::LinearExpressionProto::CopyFrom(v267, (v263 - 80));
            }

            if (a2 != v355)
            {
              v290 = *(v263 - 9);
              if (v290)
              {
                v290 = *(v290 & 0xFFFFFFFFFFFFFFFELL);
                v291 = v356;
                if (v356)
                {
                  goto LABEL_679;
                }

LABEL_676:
                if (v290 != v291)
                {
                  goto LABEL_677;
                }

LABEL_680:
                operations_research::sat::LinearExpressionProto::InternalSwap((v263 - 80), v355);
              }

              else
              {
                v291 = v356;
                if ((v356 & 1) == 0)
                {
                  goto LABEL_676;
                }

LABEL_679:
                if (v290 == *(v291 & 0xFFFFFFFFFFFFFFFELL))
                {
                  goto LABEL_680;
                }

LABEL_677:
                operations_research::sat::LinearExpressionProto::CopyFrom((v263 - 80), v355);
              }
            }

            v292 = v267 + 80 - a1;
            if (v292 < 81)
            {
              goto LABEL_613;
            }

            v293 = (-2 - 0x3333333333333333 * (v292 >> 4)) >> 1;
            v294 = a1 + 80 * v293;
            v295 = **(v294 + 24);
            v296 = **(v267 + 24);
            v297 = **(v294 + 48);
            v298 = *(v267 + 48);
            v299 = *v298;
            v300 = v297 >= 0 ? **(v294 + 48) : -v297;
            v301 = v299 >= 0 ? *v298 : -v299;
            v302 = *(v294 + 64);
            v303 = *(v267 + 64);
            v304 = v302 >= 0 ? *(v294 + 64) : -v302;
            v305 = v303 >= 0 ? *(v267 + 64) : -v303;
            if (v295 >= v296)
            {
              if (v296 < v295)
              {
                goto LABEL_613;
              }

              if (v300 >= v301)
              {
                if (v301 < v300)
                {
                  goto LABEL_613;
                }

                if (v297 >= v299)
                {
                  if (v299 < v297)
                  {
                    goto LABEL_613;
                  }

                  if (v304 >= v305 && (v302 >= v303 || v305 < v304))
                  {
                    goto LABEL_613;
                  }
                }
              }
            }

            operations_research::sat::LinearExpressionProto::LinearExpressionProto(v357, 0);
            if (v357 == v267)
            {
              goto LABEL_717;
            }

            v306 = v358;
            if ((v358 & 1) == 0)
            {
              v307 = *(v267 + 8);
              if ((v307 & 1) == 0)
              {
                goto LABEL_698;
              }

LABEL_715:
              if (v306 == *(v307 & 0xFFFFFFFFFFFFFFFELL))
              {
                goto LABEL_716;
              }

LABEL_699:
              operations_research::sat::LinearExpressionProto::CopyFrom(v357, v267);
              goto LABEL_717;
            }

            v306 = *(v358 & 0xFFFFFFFFFFFFFFFELL);
            v307 = *(v267 + 8);
            if (v307)
            {
              goto LABEL_715;
            }

LABEL_698:
            if (v306 != v307)
            {
              goto LABEL_699;
            }

LABEL_716:
            operations_research::sat::LinearExpressionProto::InternalSwap(v357, v267);
LABEL_717:
            while (2)
            {
              v309 = v294;
              if (v267 != v294)
              {
                v310 = *(v267 + 8);
                if (v310)
                {
                  v310 = *(v310 & 0xFFFFFFFFFFFFFFFELL);
                  v311 = *(v294 + 8);
                  if (v311)
                  {
                    goto LABEL_723;
                  }

LABEL_720:
                  if (v310 != v311)
                  {
                    goto LABEL_721;
                  }

LABEL_724:
                  operations_research::sat::LinearExpressionProto::InternalSwap(v267, v294);
                }

                else
                {
                  v311 = *(v294 + 8);
                  if ((v311 & 1) == 0)
                  {
                    goto LABEL_720;
                  }

LABEL_723:
                  if (v310 == *(v311 & 0xFFFFFFFFFFFFFFFELL))
                  {
                    goto LABEL_724;
                  }

LABEL_721:
                  operations_research::sat::LinearExpressionProto::CopyFrom(v267, v294);
                }
              }

              if (v293)
              {
                v293 = (v293 - 1) >> 1;
                v294 = a1 + 80 * v293;
                v312 = **(v294 + 24);
                v313 = *v359;
                v314 = *(v294 + 48);
                v315 = *v314;
                v316 = *v360;
                v317 = *v314 >= 0 ? *v314 : -v315;
                v318 = v316 >= 0 ? *v360 : -v316;
                v319 = *(v294 + 64);
                v320 = v319 >= 0 ? *(v294 + 64) : -v319;
                v321 = v361 >= 0 ? v361 : -v361;
                v267 = v309;
                if (v312 < v313)
                {
                  continue;
                }

                if (v313 >= v312)
                {
                  v267 = v309;
                  if (v317 < v318)
                  {
                    continue;
                  }

                  if (v318 >= v317)
                  {
                    v267 = v309;
                    if (v315 < v316)
                    {
                      continue;
                    }

                    if (v316 >= v315)
                    {
                      v267 = v309;
                      if (v320 < v321)
                      {
                        continue;
                      }

                      v322 = v319 >= v361 || v321 < v320;
                      v267 = v309;
                      if (!v322)
                      {
                        continue;
                      }
                    }
                  }
                }
              }

              break;
            }

            if (v309 != v357)
            {
              v323 = *(v309 + 1);
              if (v323)
              {
                v323 = *(v323 & 0xFFFFFFFFFFFFFFFELL);
                v324 = v358;
                if (v358)
                {
                  goto LABEL_756;
                }

LABEL_753:
                if (v323 != v324)
                {
                  goto LABEL_754;
                }

LABEL_611:
                operations_research::sat::LinearExpressionProto::InternalSwap(v309, v357);
              }

              else
              {
                v324 = v358;
                if ((v358 & 1) == 0)
                {
                  goto LABEL_753;
                }

LABEL_756:
                if (v323 == *(v324 & 0xFFFFFFFFFFFFFFFELL))
                {
                  goto LABEL_611;
                }

LABEL_754:
                operations_research::sat::LinearExpressionProto::CopyFrom(v309, v357);
              }
            }

            operations_research::sat::LinearExpressionProto::~LinearExpressionProto(v357);
LABEL_613:
            operations_research::sat::LinearExpressionProto::~LinearExpressionProto(v355);
            v92 = v262-- <= 2;
            if (v92)
            {
              return;
            }

            continue;
          }

          goto LABEL_625;
        }
      }
    }

    v13 = v11 >> 1;
    v14 = i + 80 * (v11 >> 1);
    if (v10 < 0x2801)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveAllDiff(operations_research::sat::ConstraintProto *)::$_0 &,operations_research::sat::LinearExpressionProto *,0>((a1 + 80 * (v11 >> 1)), a1, (a2 - 80));
      v5 = (v5 - 1);
      if (a4)
      {
        goto LABEL_48;
      }

      goto LABEL_19;
    }

    std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveAllDiff(operations_research::sat::ConstraintProto *)::$_0 &,operations_research::sat::LinearExpressionProto *,0>(a1, (a1 + 80 * (v11 >> 1)), (a2 - 80));
    v15 = 80 * v13;
    v16 = (80 * v13 + a1 - 80);
    std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveAllDiff(operations_research::sat::ConstraintProto *)::$_0 &,operations_research::sat::LinearExpressionProto *,0>((a1 + 80), v16, (a2 - 160));
    std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveAllDiff(operations_research::sat::ConstraintProto *)::$_0 &,operations_research::sat::LinearExpressionProto *,0>((a1 + 160), (a1 + 80 + v15), (a2 - 240));
    std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveAllDiff(operations_research::sat::ConstraintProto *)::$_0 &,operations_research::sat::LinearExpressionProto *,0>(v16, (a1 + 80 * (v11 >> 1)), (a1 + 80 + v15));
    v18 = *(a1 + 8);
    if (v18)
    {
      v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
      v19 = *(v14 + 8);
      if ((v19 & 1) == 0)
      {
LABEL_15:
        v20 = a1;
        v21 = (a1 + 80 * (v11 >> 1));
        if (v18 == v19)
        {
          goto LABEL_47;
        }

        goto LABEL_16;
      }
    }

    else
    {
      v19 = *(v14 + 8);
      if ((v19 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v20 = a1;
    v21 = (a1 + 80 * (v11 >> 1));
    if (v18 == *(v19 & 0xFFFFFFFFFFFFFFFELL))
    {
LABEL_47:
      operations_research::sat::LinearExpressionProto::InternalSwap(v20, v21);
      v5 = (v5 - 1);
      if (a4)
      {
        goto LABEL_48;
      }

      goto LABEL_19;
    }

LABEL_16:
    google::protobuf::internal::GenericSwap(v20, v21, v17);
    v5 = (v5 - 1);
    if (a4)
    {
      goto LABEL_48;
    }

LABEL_19:
    v22 = **(a1 - 56);
    v23 = **(a1 + 24);
    v24 = **(a1 - 32);
    v25 = *(a1 + 48);
    v26 = *v25;
    if (v24 >= 0)
    {
      v27 = **(a1 - 32);
    }

    else
    {
      v27 = -v24;
    }

    if (v26 >= 0)
    {
      v28 = *v25;
    }

    else
    {
      v28 = -v26;
    }

    v29 = *(a1 - 16);
    v30 = *(a1 + 64);
    if (v29 >= 0)
    {
      v31 = *(a1 - 16);
    }

    else
    {
      v31 = -v29;
    }

    if (v30 >= 0)
    {
      v32 = *(a1 + 64);
    }

    else
    {
      v32 = -v30;
    }

    if (v22 < v23 || v23 >= v22 && (v27 < v28 || v28 >= v27 && (v24 < v26 || v26 >= v24 && (v31 < v32 || v29 < v30 && v32 >= v31))))
    {
LABEL_48:
      operations_research::sat::LinearExpressionProto::LinearExpressionProto(v357, 0);
      if (v357 != a1)
      {
        v37 = v358;
        if (v358)
        {
          v37 = *(v358 & 0xFFFFFFFFFFFFFFFELL);
          v38 = *(a1 + 8);
          if ((v38 & 1) == 0)
          {
LABEL_51:
            if (v37 == v38)
            {
              goto LABEL_55;
            }

LABEL_52:
            operations_research::sat::LinearExpressionProto::CopyFrom(v357, a1);
            goto LABEL_56;
          }
        }

        else
        {
          v38 = *(a1 + 8);
          if ((v38 & 1) == 0)
          {
            goto LABEL_51;
          }
        }

        if (v37 == *(v38 & 0xFFFFFFFFFFFFFFFELL))
        {
LABEL_55:
          operations_research::sat::LinearExpressionProto::InternalSwap(v357, a1);
          goto LABEL_56;
        }

        goto LABEL_52;
      }

LABEL_56:
      v39 = 0;
      v40 = *v359;
      v41 = *v360;
      if (*v360 >= 0)
      {
        v42 = *v360;
      }

      else
      {
        v42 = -v41;
      }

      if (v361 >= 0)
      {
        v43 = v361;
      }

      else
      {
        v43 = -v361;
      }

      while (1)
      {
        v44 = **(a1 + v39 + 104);
        v45 = **(a1 + v39 + 128);
        v46 = v45 >= 0 ? **(a1 + v39 + 128) : -v45;
        v47 = *(a1 + v39 + 144);
        v48 = v47 >= 0 ? *(a1 + v39 + 144) : -v47;
        if (v44 >= v40 && (v40 < v44 || v46 >= v42 && (v42 < v46 || v45 >= v41 && (v41 < v45 || v48 >= v43 && (v47 >= v361 || v43 < v48)))))
        {
          break;
        }

        v39 += 80;
      }

      v49 = a1 + v39 + 80;
      if (v39)
      {
        v50 = **(a2 - 7);
        v51 = (a2 - 80);
        if (v50 >= v40)
        {
          v52 = *(a2 - 2);
          if (v52 >= 0)
          {
            v53 = *(a2 - 2);
          }

          else
          {
            v53 = -v52;
          }

          v54 = *(a2 - 4);
          v55 = *v54;
          if (*v54 >= 0)
          {
            v56 = *v54;
          }

          else
          {
            v56 = -v55;
          }

          v57 = a2 - 136;
          v51 = (a2 - 80);
          do
          {
            if (v40 >= v50)
            {
              if (v56 < v42)
              {
                goto LABEL_105;
              }

              if (v42 >= v56)
              {
                if (v55 < v41)
                {
                  goto LABEL_105;
                }

                if (v41 >= v55)
                {
                  if (v53 < v43)
                  {
                    goto LABEL_105;
                  }

                  if (v43 >= v53 && v52 < v361)
                  {
                    break;
                  }
                }
              }
            }

            v51 = (v51 - 80);
            v50 = **v57;
            v58 = *(v57 + 3);
            v55 = *v58;
            v56 = *v58 >= 0 ? *v58 : -v55;
            v52 = *(v57 + 5);
            v53 = v52 >= 0 ? *(v57 + 5) : -v52;
            v57 -= 80;
          }

          while (v50 >= v40);
LABEL_102:
          v51 = (v57 + 56);
        }
      }

      else
      {
        v51 = a2;
        if (v49 < a2)
        {
          v59 = **(a2 - 7);
          v51 = (a2 - 80);
          if (v59 >= v40)
          {
            v85 = *(a2 - 2);
            if (v85 >= 0)
            {
              v86 = *(a2 - 2);
            }

            else
            {
              v86 = -v85;
            }

            v87 = *(a2 - 4);
            v88 = *v87;
            if (*v87 >= 0)
            {
              v89 = *v87;
            }

            else
            {
              v89 = -v88;
            }

            v57 = a2 - 136;
            v51 = (a2 - 80);
            while (1)
            {
              v90 = (v57 + 56);
              if (v40 < v59)
              {
                goto LABEL_179;
              }

              if (v89 < v42)
              {
                break;
              }

              if (v42 < v89)
              {
                goto LABEL_179;
              }

              if (v88 < v41)
              {
                break;
              }

              if (v41 >= v88)
              {
                if (v86 < v43)
                {
                  break;
                }

                v92 = v85 >= v361 || v43 < v86;
                v93 = v92;
                if (v49 >= v90 || !v93)
                {
                  break;
                }
              }

              else
              {
LABEL_179:
                if (v49 >= v90)
                {
                  goto LABEL_102;
                }
              }

              v51 = (v51 - 80);
              v59 = **v57;
              v91 = *(v57 + 3);
              v88 = *v91;
              if (*v91 >= 0)
              {
                v89 = *v91;
              }

              else
              {
                v89 = -v88;
              }

              v85 = *(v57 + 5);
              if (v85 >= 0)
              {
                v86 = *(v57 + 5);
              }

              else
              {
                v86 = -v85;
              }

              v57 -= 80;
              if (v59 < v40)
              {
                goto LABEL_102;
              }
            }
          }
        }
      }

LABEL_105:
      i = v49;
      if (v49 < v51)
      {
        v60 = v51;
        do
        {
          v62 = *(i + 8);
          if (v62)
          {
            v62 = *(v62 & 0xFFFFFFFFFFFFFFFELL);
            v63 = *(v60 + 1);
            if ((v63 & 1) == 0)
            {
LABEL_111:
              if (v62 != v63)
              {
                goto LABEL_112;
              }

              goto LABEL_115;
            }
          }

          else
          {
            v63 = *(v60 + 1);
            if ((v63 & 1) == 0)
            {
              goto LABEL_111;
            }
          }

          if (v62 != *(v63 & 0xFFFFFFFFFFFFFFFELL))
          {
LABEL_112:
            google::protobuf::internal::GenericSwap(i, v60, v36);
            goto LABEL_116;
          }

LABEL_115:
          operations_research::sat::LinearExpressionProto::InternalSwap(i, v60);
LABEL_116:
          v64 = *v359;
          v65 = *v360;
          if (*v360 >= 0)
          {
            v66 = *v360;
          }

          else
          {
            v66 = -v65;
          }

          if (v361 >= 0)
          {
            v67 = v361;
          }

          else
          {
            v67 = -v361;
          }

          v68 = i + 80;
          do
          {
            i = v68;
            v69 = **(v68 + 24);
            v70 = *(v68 + 48);
            v71 = *v70;
            if (*v70 >= 0)
            {
              v72 = *v70;
            }

            else
            {
              v72 = -v71;
            }

            v73 = *(i + 64);
            if (v73 >= 0)
            {
              v74 = *(i + 64);
            }

            else
            {
              v74 = -v73;
            }

            v68 = i + 80;
          }

          while (v69 < v64 || v64 >= v69 && (v72 < v66 || v66 >= v72 && (v71 < v65 || v65 >= v71 && (v74 < v67 || v73 < v361 && v67 >= v74))));
          v61 = (v60 - 80);
          v75 = **(v60 - 7);
          if (v75 >= v64)
          {
            v76 = *(v60 - 2);
            if (v76 >= 0)
            {
              v77 = *(v60 - 2);
            }

            else
            {
              v77 = -v76;
            }

            v78 = *(v60 - 4);
            v79 = *v78;
            if (*v78 >= 0)
            {
              v80 = *v78;
            }

            else
            {
              v80 = -v79;
            }

            v81 = (v60 - 136);
            do
            {
              if (v64 >= v75)
              {
                if (v80 < v66)
                {
                  goto LABEL_108;
                }

                if (v66 >= v80)
                {
                  if (v79 < v65)
                  {
                    goto LABEL_108;
                  }

                  if (v65 >= v79)
                  {
                    if (v77 < v67)
                    {
                      break;
                    }

                    if (v67 >= v77 && v76 < v361)
                    {
                      goto LABEL_108;
                    }
                  }
                }
              }

              v61 = (v61 - 80);
              v75 = **v81;
              v82 = v81[3];
              v79 = *v82;
              if (*v82 >= 0)
              {
                v80 = *v82;
              }

              else
              {
                v80 = -v79;
              }

              v76 = v81[5];
              if (v76 >= 0)
              {
                v77 = v81[5];
              }

              else
              {
                v77 = -v76;
              }

              v81 -= 10;
            }

            while (v75 >= v64);
            v61 = (v81 + 7);
          }

LABEL_108:
          v60 = v61;
        }

        while (i < v61);
      }

      if (i - 80 != a1)
      {
        v83 = *(a1 + 8);
        if (v83)
        {
          v83 = *(v83 & 0xFFFFFFFFFFFFFFFELL);
          v84 = *(i - 72);
          if ((v84 & 1) == 0)
          {
            goto LABEL_165;
          }
        }

        else
        {
          v84 = *(i - 72);
          if ((v84 & 1) == 0)
          {
LABEL_165:
            if (v83 != v84)
            {
              goto LABEL_166;
            }

LABEL_200:
            operations_research::sat::LinearExpressionProto::InternalSwap(a1, (i - 80));
            goto LABEL_201;
          }
        }

        if (v83 != *(v84 & 0xFFFFFFFFFFFFFFFELL))
        {
LABEL_166:
          operations_research::sat::LinearExpressionProto::CopyFrom(a1, (i - 80));
          goto LABEL_201;
        }

        goto LABEL_200;
      }

LABEL_201:
      if ((i - 80) == v357)
      {
        goto LABEL_209;
      }

      v94 = *(i - 72);
      if (v94)
      {
        v94 = *(v94 & 0xFFFFFFFFFFFFFFFELL);
        v95 = v358;
        if ((v358 & 1) == 0)
        {
LABEL_204:
          if (v94 != v95)
          {
            goto LABEL_205;
          }

          goto LABEL_208;
        }
      }

      else
      {
        v95 = v358;
        if ((v358 & 1) == 0)
        {
          goto LABEL_204;
        }
      }

      if (v94 != *(v95 & 0xFFFFFFFFFFFFFFFELL))
      {
LABEL_205:
        operations_research::sat::LinearExpressionProto::CopyFrom((i - 80), v357);
        goto LABEL_209;
      }

LABEL_208:
      operations_research::sat::LinearExpressionProto::InternalSwap(i - 80, v357);
LABEL_209:
      operations_research::sat::LinearExpressionProto::~LinearExpressionProto(v357);
      if (v49 < v51)
      {
        goto LABEL_212;
      }

      v97 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveAllDiff(operations_research::sat::ConstraintProto *)::$_0 &,operations_research::sat::LinearExpressionProto *>(a1, i - 80, v96);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveAllDiff(operations_research::sat::ConstraintProto *)::$_0 &,operations_research::sat::LinearExpressionProto *>(i, a2, v98))
      {
        a2 = (i - 80);
        if (v97)
        {
          return;
        }

        goto LABEL_2;
      }

      if ((v97 & 1) == 0)
      {
LABEL_212:
        std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveAllDiff(operations_research::sat::ConstraintProto *)::$_0 &,operations_research::sat::LinearExpressionProto *,false>(a1, i - 80, v5, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      operations_research::sat::LinearExpressionProto::LinearExpressionProto(v357, 0);
      if (v357 != a1)
      {
        v34 = v358;
        if (v358)
        {
          v34 = *(v358 & 0xFFFFFFFFFFFFFFFELL);
          v35 = *(a1 + 8);
          if ((v35 & 1) == 0)
          {
LABEL_43:
            if (v34 == v35)
            {
              goto LABEL_215;
            }

LABEL_44:
            operations_research::sat::LinearExpressionProto::CopyFrom(v357, a1);
            goto LABEL_216;
          }
        }

        else
        {
          v35 = *(a1 + 8);
          if ((v35 & 1) == 0)
          {
            goto LABEL_43;
          }
        }

        if (v34 == *(v35 & 0xFFFFFFFFFFFFFFFELL))
        {
LABEL_215:
          operations_research::sat::LinearExpressionProto::InternalSwap(v357, a1);
          goto LABEL_216;
        }

        goto LABEL_44;
      }

LABEL_216:
      v99 = *v359;
      v100 = **(a2 - 7);
      v101 = *v360;
      v102 = **(a2 - 4);
      if (*v360 >= 0)
      {
        v103 = *v360;
      }

      else
      {
        v103 = -v101;
      }

      if (v102 >= 0)
      {
        v104 = **(a2 - 4);
      }

      else
      {
        v104 = -v102;
      }

      v105 = *(a2 - 2);
      if (v361 >= 0)
      {
        v106 = v361;
      }

      else
      {
        v106 = -v361;
      }

      if (v105 >= 0)
      {
        v107 = *(a2 - 2);
      }

      else
      {
        v107 = -v105;
      }

      if (v99 < v100 || v100 >= v99 && (v103 < v104 || v104 >= v103 && (v101 < v102 || v102 >= v101 && (v106 < v107 || v361 < v105 && v107 >= v106))))
      {
        i = a1 + 80;
        v33 = **(a1 + 104);
        if (v99 >= v33)
        {
          v108 = *(a1 + 144);
          if (v108 >= 0)
          {
            v109 = *(a1 + 144);
          }

          else
          {
            v109 = -v108;
          }

          v110 = *(a1 + 128);
          v111 = *v110;
          if (*v110 >= 0)
          {
            v112 = *v110;
          }

          else
          {
            v112 = -v111;
          }

          v113 = (a1 + 224);
          do
          {
            if (v33 >= v99)
            {
              if (v103 < v112)
              {
                goto LABEL_253;
              }

              if (v112 >= v103)
              {
                if (v101 < v111)
                {
                  goto LABEL_253;
                }

                if (v111 >= v101)
                {
                  if (v106 < v109)
                  {
                    goto LABEL_253;
                  }

                  if (v109 >= v106 && v361 < v108)
                  {
                    break;
                  }
                }
              }
            }

            i += 80;
            v33 = **(v113 - 5);
            v114 = *(v113 - 2);
            v111 = *v114;
            v112 = *v114 >= 0 ? *v114 : -v111;
            v115 = *v113;
            v113 += 10;
            v108 = v115;
            v109 = v115 >= 0 ? v108 : -v108;
          }

          while (v99 >= v33);
          i = (v113 - 18);
        }
      }

      else
      {
        for (i = a1 + 80; i < a2; i += 80)
        {
          v33 = **(i + 24);
          v145 = *(i + 48);
          v146 = *v145;
          v147 = *v145 >= 0 ? *v145 : -v146;
          v148 = *(i + 64);
          v149 = v148 >= 0 ? *(i + 64) : -v148;
          if (v99 < v33 || v33 >= v99 && (v103 < v147 || v147 >= v103 && (v101 < v146 || v146 >= v101 && (v106 < v149 || v361 < v148 && v149 >= v106))))
          {
            break;
          }
        }
      }

LABEL_253:
      v116 = a2;
      if (i < a2)
      {
        for (j = a2 - 136; ; j -= 80)
        {
          v118 = v102 >= 0 ? v102 : -v102;
          v119 = v105 >= 0 ? v105 : -v105;
          if (v99 >= v100 && (v100 < v99 || v103 >= v118 && (v118 < v103 || v101 >= v102 && (v102 < v101 || v106 >= v119 && (v361 >= v105 || v119 < v106)))))
          {
            break;
          }

          v100 = **j;
          v102 = **(j + 3);
          v105 = *(j + 5);
        }

        v116 = (j + 56);
      }

      while (i < v116)
      {
        v120 = *(i + 8);
        if (v120)
        {
          v120 = *(v120 & 0xFFFFFFFFFFFFFFFELL);
          v121 = *(v116 + 1);
          if ((v121 & 1) == 0)
          {
LABEL_274:
            if (v120 != v121)
            {
              goto LABEL_275;
            }

            goto LABEL_278;
          }
        }

        else
        {
          v121 = *(v116 + 1);
          if ((v121 & 1) == 0)
          {
            goto LABEL_274;
          }
        }

        if (v120 != *(v121 & 0xFFFFFFFFFFFFFFFELL))
        {
LABEL_275:
          google::protobuf::internal::GenericSwap(i, v116, v33);
          goto LABEL_279;
        }

LABEL_278:
        operations_research::sat::LinearExpressionProto::InternalSwap(i, v116);
LABEL_279:
        v122 = *v359;
        v123 = *v360;
        if (*v360 >= 0)
        {
          v124 = *v360;
        }

        else
        {
          v124 = -v123;
        }

        if (v361 >= 0)
        {
          v125 = v361;
        }

        else
        {
          v125 = -v361;
        }

        v126 = i + 80;
        v127 = **(i + 104);
        if (v122 >= v127)
        {
          v128 = *(i + 144);
          if (v128 >= 0)
          {
            v129 = *(i + 144);
          }

          else
          {
            v129 = -v128;
          }

          v130 = *(i + 128);
          v131 = *v130;
          if (*v130 >= 0)
          {
            v132 = *v130;
          }

          else
          {
            v132 = -v131;
          }

          v133 = (i + 224);
          do
          {
            if (v127 >= v122)
            {
              if (v124 < v132)
              {
                goto LABEL_286;
              }

              if (v132 >= v124)
              {
                if (v123 < v131)
                {
                  goto LABEL_286;
                }

                if (v131 >= v123)
                {
                  if (v125 < v129)
                  {
                    break;
                  }

                  if (v129 >= v125 && v361 < v128)
                  {
                    goto LABEL_286;
                  }
                }
              }
            }

            v126 += 80;
            v127 = **(v133 - 5);
            v134 = *(v133 - 2);
            v131 = *v134;
            if (*v134 >= 0)
            {
              v132 = *v134;
            }

            else
            {
              v132 = -v131;
            }

            v135 = *v133;
            v133 += 10;
            v128 = v135;
            if (v135 >= 0)
            {
              v129 = v128;
            }

            else
            {
              v129 = -v128;
            }
          }

          while (v122 >= v127);
          i = (v133 - 18);
        }

        else
        {
LABEL_286:
          i = v126;
        }

        v136 = (v116 - 80);
        do
        {
          v116 = v136;
          v137 = **(v136 + 3);
          v138 = *(v136 + 6);
          v139 = *v138;
          if (*v138 >= 0)
          {
            v140 = *v138;
          }

          else
          {
            v140 = -v139;
          }

          v141 = *(v116 + 8);
          if (v141 >= 0)
          {
            v142 = *(v116 + 8);
          }

          else
          {
            v142 = -v141;
          }

          v136 = (v116 - 80);
        }

        while (v122 < v137 || v137 >= v122 && (v124 < v140 || v140 >= v124 && (v123 < v139 || v139 >= v123 && (v125 < v142 || v361 < v141 && v142 >= v125))));
      }

      if (i - 80 != a1)
      {
        v143 = *(a1 + 8);
        if (v143)
        {
          v143 = *(v143 & 0xFFFFFFFFFFFFFFFELL);
          v144 = *(i - 72);
          if (v144)
          {
            goto LABEL_362;
          }

LABEL_331:
          if (v143 != v144)
          {
            goto LABEL_332;
          }

LABEL_363:
          operations_research::sat::LinearExpressionProto::InternalSwap(a1, (i - 80));
        }

        else
        {
          v144 = *(i - 72);
          if ((v144 & 1) == 0)
          {
            goto LABEL_331;
          }

LABEL_362:
          if (v143 == *(v144 & 0xFFFFFFFFFFFFFFFELL))
          {
            goto LABEL_363;
          }

LABEL_332:
          operations_research::sat::LinearExpressionProto::CopyFrom(a1, (i - 80));
        }
      }

      if ((i - 80) != v357)
      {
        v150 = *(i - 72);
        if (v150)
        {
          v150 = *(v150 & 0xFFFFFFFFFFFFFFFELL);
          v151 = v358;
          if (v358)
          {
            goto LABEL_370;
          }

LABEL_367:
          if (v150 != v151)
          {
            goto LABEL_368;
          }

LABEL_371:
          operations_research::sat::LinearExpressionProto::InternalSwap(i - 80, v357);
        }

        else
        {
          v151 = v358;
          if ((v358 & 1) == 0)
          {
            goto LABEL_367;
          }

LABEL_370:
          if (v150 == *(v151 & 0xFFFFFFFFFFFFFFFELL))
          {
            goto LABEL_371;
          }

LABEL_368:
          operations_research::sat::LinearExpressionProto::CopyFrom((i - 80), v357);
        }
      }

      operations_research::sat::LinearExpressionProto::~LinearExpressionProto(v357);
      a4 = 0;
    }
  }

  if ((a4 & 1) == 0)
  {
    if (i == a2)
    {
      return;
    }

    v325 = i + 80;
    if ((i + 80) == a2)
    {
      return;
    }

LABEL_774:
    v326 = a1;
    a1 = v325;
    v327 = **(v326 + 104);
    v328 = **(v326 + 24);
    v329 = **(v326 + 128);
    v330 = *(v326 + 48);
    v331 = *v330;
    if (v329 >= 0)
    {
      v332 = **(v326 + 128);
    }

    else
    {
      v332 = -v329;
    }

    if (v331 >= 0)
    {
      v333 = *v330;
    }

    else
    {
      v333 = -v331;
    }

    v334 = *(v326 + 144);
    v335 = *(v326 + 64);
    if (v334 >= 0)
    {
      v336 = *(v326 + 144);
    }

    else
    {
      v336 = -v334;
    }

    if (v335 >= 0)
    {
      v337 = *(v326 + 64);
    }

    else
    {
      v337 = -v335;
    }

    if (v327 >= v328 && (v328 < v327 || v332 >= v333 && (v333 < v332 || v329 >= v331 && (v331 < v329 || v336 >= v337 && (v334 >= v335 || v337 < v336)))))
    {
      goto LABEL_773;
    }

    operations_research::sat::LinearExpressionProto::LinearExpressionProto(v357, 0);
    if (v357 == a1)
    {
      goto LABEL_804;
    }

    v338 = v358;
    if (v358)
    {
      v338 = *(v358 & 0xFFFFFFFFFFFFFFFELL);
      v339 = *(v326 + 88);
      if ((v339 & 1) == 0)
      {
LABEL_790:
        if (v338 != v339)
        {
LABEL_791:
          operations_research::sat::LinearExpressionProto::CopyFrom(v357, a1);
          goto LABEL_804;
        }

        goto LABEL_803;
      }
    }

    else
    {
      v339 = *(v326 + 88);
      if ((v339 & 1) == 0)
      {
        goto LABEL_790;
      }
    }

    if (v338 != *(v339 & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_791;
    }

LABEL_803:
    operations_research::sat::LinearExpressionProto::InternalSwap(v357, a1);
    while (1)
    {
LABEL_804:
      v340 = v326;
      v341 = *(v326 + 88);
      if (v341)
      {
        v341 = *(v341 & 0xFFFFFFFFFFFFFFFELL);
        v342 = *(v326 + 8);
        if ((v342 & 1) == 0)
        {
LABEL_806:
          if (v341 == v342)
          {
            goto LABEL_810;
          }

          goto LABEL_807;
        }
      }

      else
      {
        v342 = *(v326 + 8);
        if ((v342 & 1) == 0)
        {
          goto LABEL_806;
        }
      }

      if (v341 == *(v342 & 0xFFFFFFFFFFFFFFFELL))
      {
LABEL_810:
        operations_research::sat::LinearExpressionProto::InternalSwap(v326 + 80, v326);
        goto LABEL_811;
      }

LABEL_807:
      operations_research::sat::LinearExpressionProto::CopyFrom((v326 + 80), v326);
LABEL_811:
      v326 -= 80;
      v343 = *v359;
      v344 = **(v340 - 7);
      v345 = *v360;
      v346 = *(v340 - 4);
      v347 = *v346;
      if (*v360 >= 0)
      {
        v348 = *v360;
      }

      else
      {
        v348 = -v345;
      }

      if (v347 >= 0)
      {
        v349 = *v346;
      }

      else
      {
        v349 = -v347;
      }

      v350 = *(v340 - 2);
      if (v361 >= 0)
      {
        v351 = v361;
      }

      else
      {
        v351 = -v361;
      }

      if (v350 >= 0)
      {
        v352 = *(v340 - 2);
      }

      else
      {
        v352 = -v350;
      }

      if (v343 >= v344 && (v344 < v343 || v348 >= v349 && (v349 < v348 || v345 >= v347 && (v347 < v345 || v351 >= v352 && (v361 >= v350 || v352 < v351)))))
      {
        if (v340 != v357)
        {
          v353 = *(v340 + 1);
          if (v353)
          {
            v353 = *(v353 & 0xFFFFFFFFFFFFFFFELL);
            v354 = v358;
            if (v358)
            {
              goto LABEL_838;
            }

LABEL_835:
            if (v353 != v354)
            {
              goto LABEL_836;
            }

LABEL_771:
            operations_research::sat::LinearExpressionProto::InternalSwap(v340, v357);
          }

          else
          {
            v354 = v358;
            if ((v358 & 1) == 0)
            {
              goto LABEL_835;
            }

LABEL_838:
            if (v353 == *(v354 & 0xFFFFFFFFFFFFFFFELL))
            {
              goto LABEL_771;
            }

LABEL_836:
            operations_research::sat::LinearExpressionProto::CopyFrom(v340, v357);
          }
        }

        operations_research::sat::LinearExpressionProto::~LinearExpressionProto(v357);
LABEL_773:
        v325 = a1 + 80;
        if ((a1 + 80) == a2)
        {
          return;
        }

        goto LABEL_774;
      }
    }
  }

  if (i == a2)
  {
    return;
  }

  v167 = (i + 80);
  if ((i + 80) == a2)
  {
    return;
  }

  v168 = 0;
  v169 = i;
  while (2)
  {
    v170 = v169;
    v169 = v167;
    v171 = **(v170 + 104);
    v172 = **(v170 + 24);
    v173 = **(v170 + 128);
    v174 = *(v170 + 48);
    v175 = *v174;
    if (v173 >= 0)
    {
      v176 = **(v170 + 128);
    }

    else
    {
      v176 = -v173;
    }

    if (v175 >= 0)
    {
      v177 = *v174;
    }

    else
    {
      v177 = -v175;
    }

    v178 = *(v170 + 144);
    v179 = *(v170 + 64);
    if (v178 >= 0)
    {
      v180 = *(v170 + 144);
    }

    else
    {
      v180 = -v178;
    }

    if (v179 >= 0)
    {
      v181 = *(v170 + 64);
    }

    else
    {
      v181 = -v179;
    }

    if (v171 >= v172 && (v172 < v171 || v176 >= v177 && (v177 < v176 || v173 >= v175 && (v175 < v173 || v180 >= v181 && (v178 >= v179 || v181 < v180)))))
    {
      goto LABEL_402;
    }

    operations_research::sat::LinearExpressionProto::LinearExpressionProto(v357, 0);
    if (v357 != v169)
    {
      v182 = v358;
      if (v358)
      {
        v182 = *(v358 & 0xFFFFFFFFFFFFFFFELL);
        v183 = *(v170 + 88);
        if (v183)
        {
          goto LABEL_431;
        }

LABEL_419:
        if (v182 != v183)
        {
          goto LABEL_420;
        }

LABEL_432:
        operations_research::sat::LinearExpressionProto::InternalSwap(v357, v169);
      }

      else
      {
        v183 = *(v170 + 88);
        if ((v183 & 1) == 0)
        {
          goto LABEL_419;
        }

LABEL_431:
        if (v182 == *(v183 & 0xFFFFFFFFFFFFFFFELL))
        {
          goto LABEL_432;
        }

LABEL_420:
        operations_research::sat::LinearExpressionProto::CopyFrom(v357, v169);
      }
    }

    v184 = v168;
    while (2)
    {
      v185 = i + v184;
      v186 = *(i + v184 + 88);
      if (v186)
      {
        v186 = *(v186 & 0xFFFFFFFFFFFFFFFELL);
        v187 = *(i + v184 + 8);
        if (v187)
        {
          goto LABEL_440;
        }

LABEL_437:
        if (v186 != v187)
        {
          goto LABEL_438;
        }

LABEL_441:
        operations_research::sat::LinearExpressionProto::InternalSwap(v185 + 80, v185);
      }

      else
      {
        v187 = *(i + v184 + 8);
        if ((v187 & 1) == 0)
        {
          goto LABEL_437;
        }

LABEL_440:
        if (v186 == *(v187 & 0xFFFFFFFFFFFFFFFELL))
        {
          goto LABEL_441;
        }

LABEL_438:
        operations_research::sat::LinearExpressionProto::CopyFrom((v185 + 80), v185);
      }

      if (v184)
      {
        v188 = *v359;
        v189 = **(i + v184 - 56);
        v190 = *v360;
        v191 = **(i + v184 - 32);
        if (*v360 >= 0)
        {
          v192 = *v360;
        }

        else
        {
          v192 = -v190;
        }

        if (v191 >= 0)
        {
          v193 = **(i + v184 - 32);
        }

        else
        {
          v193 = -v191;
        }

        v194 = *(i + v184 - 16);
        if (v361 >= 0)
        {
          v195 = v361;
        }

        else
        {
          v195 = -v361;
        }

        if (v194 >= 0)
        {
          v196 = *(i + v184 - 16);
        }

        else
        {
          v196 = -v194;
        }

        if (v188 >= v189)
        {
          if (v189 < v188)
          {
            goto LABEL_466;
          }

          if (v192 >= v193)
          {
            if (v193 < v192)
            {
              goto LABEL_466;
            }

            if (v190 >= v191)
            {
              if (v191 < v190)
              {
                v170 = i + v184;
                if ((i + v184) == v357)
                {
                  goto LABEL_401;
                }

LABEL_467:
                v197 = *(v170 + 8);
                if (v197)
                {
                  v197 = *(v197 & 0xFFFFFFFFFFFFFFFELL);
                  v198 = v358;
                  if (v358)
                  {
                    goto LABEL_474;
                  }

LABEL_469:
                  if (v197 == v198)
                  {
LABEL_400:
                    operations_research::sat::LinearExpressionProto::InternalSwap(v170, v357);
                    goto LABEL_401;
                  }
                }

                else
                {
                  v198 = v358;
                  if ((v358 & 1) == 0)
                  {
                    goto LABEL_469;
                  }

LABEL_474:
                  if (v197 == *(v198 & 0xFFFFFFFFFFFFFFFELL))
                  {
                    goto LABEL_400;
                  }
                }

                operations_research::sat::LinearExpressionProto::CopyFrom(v170, v357);
                goto LABEL_401;
              }

              if (v195 >= v196 && (v361 >= v194 || v196 < v195))
              {
                goto LABEL_466;
              }
            }
          }
        }

        v170 -= 80;
        v184 -= 80;
        continue;
      }

      break;
    }

    v170 = i;
LABEL_466:
    if (v170 != v357)
    {
      goto LABEL_467;
    }

LABEL_401:
    operations_research::sat::LinearExpressionProto::~LinearExpressionProto(v357);
LABEL_402:
    v167 = (v169 + 80);
    v168 += 80;
    if (v169 + 80 != a2)
    {
      continue;
    }

    break;
  }
}

void sub_23CAC8B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  operations_research::sat::LinearExpressionProto::~LinearExpressionProto(va);
  _Unwind_Resume(a1);
}

void sub_23CAC8BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  operations_research::sat::LinearExpressionProto::~LinearExpressionProto(va);
  _Unwind_Resume(a1);
}

void std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveAllDiff(operations_research::sat::ConstraintProto *)::$_0 &,operations_research::sat::LinearExpressionProto *,0>(operations_research::sat::LinearExpressionProto *a1, operations_research::sat::LinearExpressionProto *this, operations_research::sat::LinearExpressionProto *a3)
{
  v3 = **(this + 3);
  v4 = **(a1 + 3);
  v5 = **(this + 6);
  v6 = **(a1 + 6);
  if (v5 >= 0)
  {
    v7 = **(this + 6);
  }

  else
  {
    v7 = -v5;
  }

  if (v6 >= 0)
  {
    v8 = **(a1 + 6);
  }

  else
  {
    v8 = -v6;
  }

  v9 = *(this + 8);
  v10 = *(a1 + 8);
  if (v9 >= 0)
  {
    v11 = *(this + 8);
  }

  else
  {
    v11 = -v9;
  }

  if (v10 >= 0)
  {
    v12 = *(a1 + 8);
  }

  else
  {
    v12 = -v10;
  }

  if (v3 >= v4 && (v4 < v3 || v7 >= v8 && (v8 < v7 || v5 >= v6 && (v6 < v5 || v11 >= v12 && (v9 >= v10 || v12 < v11)))))
  {
    v21 = **(a3 + 3);
    v22 = *(a3 + 6);
    v23 = *v22;
    if (*v22 >= 0)
    {
      v24 = *v22;
    }

    else
    {
      v24 = -v23;
    }

    v25 = *(a3 + 8);
    if (v25 >= 0)
    {
      v26 = *(a3 + 8);
    }

    else
    {
      v26 = -v25;
    }

    if (v21 >= v3 && (v3 < v21 || v24 >= v7 && (v7 < v24 || v23 >= v5 && (v5 < v23 || v26 >= v11 && (v25 >= v9 || v11 < v26)))))
    {
      return;
    }

    if (a3 == this)
    {
LABEL_76:
      v37 = **(this + 3);
      v38 = **(a1 + 3);
      v39 = **(this + 6);
      v40 = *(a1 + 6);
      v41 = *v40;
      if (v39 >= 0)
      {
        v42 = **(this + 6);
      }

      else
      {
        v42 = -v39;
      }

      if (v41 >= 0)
      {
        v43 = *v40;
      }

      else
      {
        v43 = -v41;
      }

      v44 = *(this + 8);
      v45 = *(a1 + 8);
      if (v44 >= 0)
      {
        v46 = *(this + 8);
      }

      else
      {
        v46 = -v44;
      }

      if (v45 >= 0)
      {
        v47 = *(a1 + 8);
      }

      else
      {
        v47 = -v45;
      }

      if (v37 < v38)
      {
        goto LABEL_89;
      }

      if (v38 < v37)
      {
        return;
      }

      if (v42 < v43)
      {
        goto LABEL_89;
      }

      if (v43 < v42)
      {
        return;
      }

      if (v39 < v41)
      {
        goto LABEL_89;
      }

      if (v41 < v39)
      {
        return;
      }

      if (v46 < v47)
      {
LABEL_89:
        if (this == a1)
        {
          return;
        }
      }

      else if (this == a1 || v44 >= v45 || v47 < v46)
      {
        return;
      }

      v48 = *(a1 + 1);
      if (v48)
      {
        v48 = *(v48 & 0xFFFFFFFFFFFFFFFELL);
        v49 = *(this + 1);
        if ((v49 & 1) == 0)
        {
LABEL_92:
          if (v48 != v49)
          {
            goto LABEL_93;
          }

LABEL_127:

          operations_research::sat::LinearExpressionProto::InternalSwap(a1, this);
          return;
        }
      }

      else
      {
        v49 = *(this + 1);
        if ((v49 & 1) == 0)
        {
          goto LABEL_92;
        }
      }

      if (v48 != *(v49 & 0xFFFFFFFFFFFFFFFELL))
      {
        goto LABEL_93;
      }

      goto LABEL_127;
    }

    v27 = *(this + 1);
    if (v27)
    {
      v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
      v28 = *(a3 + 1);
      if ((v28 & 1) == 0)
      {
LABEL_37:
        v29 = a1;
        v30 = this;
        v31 = this;
        v32 = a3;
        if (v27 != v28)
        {
LABEL_38:
          google::protobuf::internal::GenericSwap(v30, v32, a3);
LABEL_75:
          this = v31;
          a1 = v29;
          goto LABEL_76;
        }

LABEL_74:
        operations_research::sat::LinearExpressionProto::InternalSwap(v30, v32);
        goto LABEL_75;
      }
    }

    else
    {
      v28 = *(a3 + 1);
      if ((v28 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    v29 = a1;
    v30 = this;
    v31 = this;
    v32 = a3;
    if (v27 != *(v28 & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_38;
    }

    goto LABEL_74;
  }

  v13 = **(a3 + 3);
  v14 = *(a3 + 6);
  v15 = *v14;
  if (*v14 >= 0)
  {
    v16 = *v14;
  }

  else
  {
    v16 = -v15;
  }

  v17 = *(a3 + 8);
  if (v17 >= 0)
  {
    v18 = *(a3 + 8);
  }

  else
  {
    v18 = -v17;
  }

  if (v13 >= v3 && (v3 < v13 || v16 >= v7 && (v7 < v16 || v15 >= v5 && (v5 < v15 || v18 >= v11 && (v17 >= v9 || v11 < v18)))))
  {
    if (this == a1)
    {
LABEL_110:
      v50 = **(a3 + 3);
      v51 = **(this + 3);
      v52 = **(a3 + 6);
      v53 = *(this + 6);
      v54 = *v53;
      if (v52 >= 0)
      {
        v55 = **(a3 + 6);
      }

      else
      {
        v55 = -v52;
      }

      if (v54 >= 0)
      {
        v56 = *v53;
      }

      else
      {
        v56 = -v54;
      }

      v57 = *(a3 + 8);
      v58 = *(this + 8);
      if (v57 >= 0)
      {
        v59 = *(a3 + 8);
      }

      else
      {
        v59 = -v57;
      }

      if (v58 >= 0)
      {
        v60 = *(this + 8);
      }

      else
      {
        v60 = -v58;
      }

      if (v50 < v51)
      {
        goto LABEL_123;
      }

      if (v51 < v50)
      {
        return;
      }

      if (v55 < v56)
      {
        goto LABEL_123;
      }

      if (v56 < v55)
      {
        return;
      }

      if (v52 < v54)
      {
        goto LABEL_123;
      }

      if (v54 < v52)
      {
        return;
      }

      if (v59 < v60)
      {
LABEL_123:
        if (a3 == this)
        {
          return;
        }
      }

      else if (a3 == this || v57 >= v58 || v60 < v59)
      {
        return;
      }

      v61 = *(this + 1);
      if (v61)
      {
        v61 = *(v61 & 0xFFFFFFFFFFFFFFFELL);
        v62 = *(a3 + 1);
        if ((v62 & 1) == 0)
        {
LABEL_126:
          a1 = this;
          this = a3;
          if (v61 != v62)
          {
            goto LABEL_93;
          }

          goto LABEL_127;
        }
      }

      else
      {
        v62 = *(a3 + 1);
        if ((v62 & 1) == 0)
        {
          goto LABEL_126;
        }
      }

      a1 = this;
      this = a3;
      if (v61 != *(v62 & 0xFFFFFFFFFFFFFFFELL))
      {
        goto LABEL_93;
      }

      goto LABEL_127;
    }

    v33 = *(a1 + 1);
    if (v33)
    {
      v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
      v34 = *(this + 1);
      if ((v34 & 1) == 0)
      {
LABEL_43:
        v35 = a3;
        v36 = this;
        if (v33 != v34)
        {
LABEL_44:
          google::protobuf::internal::GenericSwap(a1, this, a3);
LABEL_109:
          this = v36;
          a3 = v35;
          goto LABEL_110;
        }

LABEL_108:
        operations_research::sat::LinearExpressionProto::InternalSwap(a1, this);
        goto LABEL_109;
      }
    }

    else
    {
      v34 = *(this + 1);
      if ((v34 & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    v35 = a3;
    v36 = this;
    if (v33 != *(v34 & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_44;
    }

    goto LABEL_108;
  }

  if (a3 == a1)
  {
    return;
  }

  v19 = *(a1 + 1);
  if (v19)
  {
    v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
    v20 = *(a3 + 1);
    if ((v20 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v20 = *(a3 + 1);
    if ((v20 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
LABEL_24:
  this = a3;
  if (v19 == v20)
  {
    goto LABEL_127;
  }

LABEL_93:

  google::protobuf::internal::GenericSwap(a1, this, a3);
}

void std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveAllDiff(operations_research::sat::ConstraintProto *)::$_0 &,operations_research::sat::LinearExpressionProto *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveAllDiff(operations_research::sat::ConstraintProto *)::$_0 &,operations_research::sat::LinearExpressionProto *,0>(a1, a2, a3);
  v9 = **(a4 + 24);
  v10 = **(a3 + 24);
  v11 = **(a4 + 48);
  v12 = *(a3 + 48);
  v13 = *v12;
  if (v11 >= 0)
  {
    v14 = **(a4 + 48);
  }

  else
  {
    v14 = -v11;
  }

  if (v13 >= 0)
  {
    v15 = *v12;
  }

  else
  {
    v15 = -v13;
  }

  v16 = *(a4 + 64);
  v17 = *(a3 + 64);
  if (v16 >= 0)
  {
    v18 = *(a4 + 64);
  }

  else
  {
    v18 = -v16;
  }

  if (v17 >= 0)
  {
    v19 = *(a3 + 64);
  }

  else
  {
    v19 = -v17;
  }

  if (v9 >= v10 && (v10 < v9 || v14 >= v15 && (v15 < v14 || v11 >= v13 && (v13 < v11 || v18 >= v19 && (v16 >= v17 || v19 < v18)))))
  {
    return;
  }

  if (a4 != a3)
  {
    v20 = *(a3 + 8);
    if (v20)
    {
      v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
      v21 = *(a4 + 8);
      if ((v21 & 1) == 0)
      {
LABEL_17:
        v22 = a3;
        v23 = a4;
        if (v20 != v21)
        {
LABEL_18:
          google::protobuf::internal::GenericSwap(v22, v23, v8);
          goto LABEL_31;
        }

        goto LABEL_30;
      }
    }

    else
    {
      v21 = *(a4 + 8);
      if ((v21 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v22 = a3;
    v23 = a4;
    if (v20 != *(v21 & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_18;
    }

LABEL_30:
    operations_research::sat::LinearExpressionProto::InternalSwap(v22, v23);
  }

LABEL_31:
  v24 = **(a3 + 24);
  v25 = **(a2 + 24);
  v26 = **(a3 + 48);
  v27 = *(a2 + 48);
  v28 = *v27;
  if (v26 >= 0)
  {
    v29 = **(a3 + 48);
  }

  else
  {
    v29 = -v26;
  }

  if (v28 >= 0)
  {
    v30 = *v27;
  }

  else
  {
    v30 = -v28;
  }

  v31 = *(a3 + 64);
  v32 = *(a2 + 64);
  if (v31 >= 0)
  {
    v33 = *(a3 + 64);
  }

  else
  {
    v33 = -v31;
  }

  if (v32 >= 0)
  {
    v34 = *(a2 + 64);
  }

  else
  {
    v34 = -v32;
  }

  if (v24 >= v25 && (v25 < v24 || v29 >= v30 && (v30 < v29 || v26 >= v28 && (v28 < v26 || v33 >= v34 && (v31 >= v32 || v34 < v33)))))
  {
    return;
  }

  if (a3 != a2)
  {
    v35 = *(a2 + 8);
    if (v35)
    {
      v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
      v36 = *(a3 + 8);
      if ((v36 & 1) == 0)
      {
LABEL_47:
        v37 = a2;
        v38 = a3;
        if (v35 != v36)
        {
LABEL_48:
          google::protobuf::internal::GenericSwap(v37, v38, v8);
          goto LABEL_61;
        }

LABEL_60:
        operations_research::sat::LinearExpressionProto::InternalSwap(v37, v38);
        goto LABEL_61;
      }
    }

    else
    {
      v36 = *(a3 + 8);
      if ((v36 & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    v37 = a2;
    v38 = a3;
    if (v35 != *(v36 & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_48;
    }

    goto LABEL_60;
  }

LABEL_61:
  v39 = **(a2 + 24);
  v40 = **(a1 + 24);
  v41 = **(a2 + 48);
  v42 = *(a1 + 48);
  v43 = *v42;
  if (v41 >= 0)
  {
    v44 = **(a2 + 48);
  }

  else
  {
    v44 = -v41;
  }

  if (v43 >= 0)
  {
    v45 = *v42;
  }

  else
  {
    v45 = -v43;
  }

  v46 = *(a2 + 64);
  v47 = *(a1 + 64);
  if (v46 >= 0)
  {
    v48 = *(a2 + 64);
  }

  else
  {
    v48 = -v46;
  }

  if (v47 >= 0)
  {
    v49 = *(a1 + 64);
  }

  else
  {
    v49 = -v47;
  }

  if (v39 < v40)
  {
    goto LABEL_74;
  }

  if (v40 < v39)
  {
    return;
  }

  if (v44 < v45)
  {
    goto LABEL_74;
  }

  if (v45 < v44)
  {
    return;
  }

  if (v41 < v43)
  {
    goto LABEL_74;
  }

  if (v43 < v41)
  {
    return;
  }

  if (v48 < v49)
  {
LABEL_74:
    if (a2 == a1)
    {
      return;
    }
  }

  else if (a2 == a1 || v46 >= v47 || v49 < v48)
  {
    return;
  }

  v50 = *(a1 + 8);
  if ((v50 & 1) == 0)
  {
    v51 = *(a2 + 8);
    if ((v51 & 1) == 0)
    {
      goto LABEL_77;
    }

LABEL_93:
    v52 = a1;
    v53 = a2;
    if (v50 != *(v51 & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_78;
    }

    goto LABEL_94;
  }

  v50 = *(v50 & 0xFFFFFFFFFFFFFFFELL);
  v51 = *(a2 + 8);
  if (v51)
  {
    goto LABEL_93;
  }

LABEL_77:
  v52 = a1;
  v53 = a2;
  if (v50 != v51)
  {
LABEL_78:

    google::protobuf::internal::GenericSwap(v52, v53, v8);
    return;
  }

LABEL_94:

  operations_research::sat::LinearExpressionProto::InternalSwap(v52, v53);
}

void std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveAllDiff(operations_research::sat::ConstraintProto *)::$_0 &,operations_research::sat::LinearExpressionProto *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveAllDiff(operations_research::sat::ConstraintProto *)::$_0 &,operations_research::sat::LinearExpressionProto *,0>(a1, a2, a3, a4);
  v11 = **(a5 + 24);
  v12 = **(a4 + 24);
  v13 = **(a5 + 48);
  v14 = *(a4 + 48);
  v15 = *v14;
  if (v13 >= 0)
  {
    v16 = **(a5 + 48);
  }

  else
  {
    v16 = -v13;
  }

  if (v15 >= 0)
  {
    v17 = *v14;
  }

  else
  {
    v17 = -v15;
  }

  v18 = *(a5 + 64);
  v19 = *(a4 + 64);
  if (v18 >= 0)
  {
    v20 = *(a5 + 64);
  }

  else
  {
    v20 = -v18;
  }

  if (v19 >= 0)
  {
    v21 = *(a4 + 64);
  }

  else
  {
    v21 = -v19;
  }

  if (v11 >= v12 && (v12 < v11 || v16 >= v17 && (v17 < v16 || v13 >= v15 && (v15 < v13 || v20 >= v21 && (v18 >= v19 || v21 < v20)))))
  {
    return;
  }

  if (a5 != a4)
  {
    v22 = *(a4 + 8);
    if (v22)
    {
      v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
      v23 = *(a5 + 8);
      if ((v23 & 1) == 0)
      {
LABEL_17:
        v24 = a4;
        v25 = a5;
        if (v22 != v23)
        {
LABEL_18:
          google::protobuf::internal::GenericSwap(v24, v25, v10);
          goto LABEL_31;
        }

        goto LABEL_30;
      }
    }

    else
    {
      v23 = *(a5 + 8);
      if ((v23 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v24 = a4;
    v25 = a5;
    if (v22 != *(v23 & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_18;
    }

LABEL_30:
    operations_research::sat::LinearExpressionProto::InternalSwap(v24, v25);
  }

LABEL_31:
  v26 = **(a4 + 24);
  v27 = **(a3 + 24);
  v28 = **(a4 + 48);
  v29 = *(a3 + 48);
  v30 = *v29;
  if (v28 >= 0)
  {
    v31 = **(a4 + 48);
  }

  else
  {
    v31 = -v28;
  }

  if (v30 >= 0)
  {
    v32 = *v29;
  }

  else
  {
    v32 = -v30;
  }

  v33 = *(a4 + 64);
  v34 = *(a3 + 64);
  if (v33 >= 0)
  {
    v35 = *(a4 + 64);
  }

  else
  {
    v35 = -v33;
  }

  if (v34 >= 0)
  {
    v36 = *(a3 + 64);
  }

  else
  {
    v36 = -v34;
  }

  if (v26 >= v27 && (v27 < v26 || v31 >= v32 && (v32 < v31 || v28 >= v30 && (v30 < v28 || v35 >= v36 && (v33 >= v34 || v36 < v35)))))
  {
    return;
  }

  if (a4 != a3)
  {
    v37 = *(a3 + 8);
    if (v37)
    {
      v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
      v38 = *(a4 + 8);
      if ((v38 & 1) == 0)
      {
LABEL_47:
        v39 = a3;
        v40 = a4;
        if (v37 != v38)
        {
LABEL_48:
          google::protobuf::internal::GenericSwap(v39, v40, v10);
          goto LABEL_61;
        }

        goto LABEL_60;
      }
    }

    else
    {
      v38 = *(a4 + 8);
      if ((v38 & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    v39 = a3;
    v40 = a4;
    if (v37 != *(v38 & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_48;
    }

LABEL_60:
    operations_research::sat::LinearExpressionProto::InternalSwap(v39, v40);
  }

LABEL_61:
  v41 = **(a3 + 24);
  v42 = **(a2 + 24);
  v43 = **(a3 + 48);
  v44 = *(a2 + 48);
  v45 = *v44;
  if (v43 >= 0)
  {
    v46 = **(a3 + 48);
  }

  else
  {
    v46 = -v43;
  }

  if (v45 >= 0)
  {
    v47 = *v44;
  }

  else
  {
    v47 = -v45;
  }

  v48 = *(a3 + 64);
  v49 = *(a2 + 64);
  if (v48 >= 0)
  {
    v50 = *(a3 + 64);
  }

  else
  {
    v50 = -v48;
  }

  if (v49 >= 0)
  {
    v51 = *(a2 + 64);
  }

  else
  {
    v51 = -v49;
  }

  if (v41 >= v42 && (v42 < v41 || v46 >= v47 && (v47 < v46 || v43 >= v45 && (v45 < v43 || v50 >= v51 && (v48 >= v49 || v51 < v50)))))
  {
    return;
  }

  if (a3 != a2)
  {
    v52 = *(a2 + 8);
    if (v52)
    {
      v52 = *(v52 & 0xFFFFFFFFFFFFFFFELL);
      v53 = *(a3 + 8);
      if ((v53 & 1) == 0)
      {
LABEL_77:
        v54 = a2;
        v55 = a3;
        if (v52 != v53)
        {
LABEL_78:
          google::protobuf::internal::GenericSwap(v54, v55, v10);
          goto LABEL_91;
        }

LABEL_90:
        operations_research::sat::LinearExpressionProto::InternalSwap(v54, v55);
        goto LABEL_91;
      }
    }

    else
    {
      v53 = *(a3 + 8);
      if ((v53 & 1) == 0)
      {
        goto LABEL_77;
      }
    }

    v54 = a2;
    v55 = a3;
    if (v52 != *(v53 & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_78;
    }

    goto LABEL_90;
  }

LABEL_91:
  v56 = **(a2 + 24);
  v57 = **(a1 + 24);
  v58 = **(a2 + 48);
  v59 = *(a1 + 48);
  v60 = *v59;
  if (v58 >= 0)
  {
    v61 = **(a2 + 48);
  }

  else
  {
    v61 = -v58;
  }

  if (v60 >= 0)
  {
    v62 = *v59;
  }

  else
  {
    v62 = -v60;
  }

  v63 = *(a2 + 64);
  v64 = *(a1 + 64);
  if (v63 >= 0)
  {
    v65 = *(a2 + 64);
  }

  else
  {
    v65 = -v63;
  }

  if (v64 >= 0)
  {
    v66 = *(a1 + 64);
  }

  else
  {
    v66 = -v64;
  }

  if (v56 < v57)
  {
    goto LABEL_104;
  }

  if (v57 < v56)
  {
    return;
  }

  if (v61 < v62)
  {
    goto LABEL_104;
  }

  if (v62 < v61)
  {
    return;
  }

  if (v58 < v60)
  {
    goto LABEL_104;
  }

  if (v60 < v58)
  {
    return;
  }

  if (v65 < v66)
  {
LABEL_104:
    if (a2 == a1)
    {
      return;
    }
  }

  else if (a2 == a1 || v63 >= v64 || v66 < v65)
  {
    return;
  }

  v67 = *(a1 + 8);
  if ((v67 & 1) == 0)
  {
    v68 = *(a2 + 8);
    if ((v68 & 1) == 0)
    {
      goto LABEL_107;
    }

LABEL_123:
    v69 = a1;
    v70 = a2;
    if (v67 != *(v68 & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_108;
    }

    goto LABEL_124;
  }

  v67 = *(v67 & 0xFFFFFFFFFFFFFFFELL);
  v68 = *(a2 + 8);
  if (v68)
  {
    goto LABEL_123;
  }

LABEL_107:
  v69 = a1;
  v70 = a2;
  if (v67 != v68)
  {
LABEL_108:

    google::protobuf::internal::GenericSwap(v69, v70, v10);
    return;
  }

LABEL_124:

  operations_research::sat::LinearExpressionProto::InternalSwap(v69, v70);
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveAllDiff(operations_research::sat::ConstraintProto *)::$_0 &,operations_research::sat::LinearExpressionProto *>(uint64_t a1, uint64_t a2, google::protobuf::Message *a3)
{
  v4 = a1;
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 4);
  if (v5 > 2)
  {
    switch(v5)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveAllDiff(operations_research::sat::ConstraintProto *)::$_0 &,operations_research::sat::LinearExpressionProto *,0>(a1, (a1 + 80), (a2 - 80));
        v6 = 1;
        return v6 & 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveAllDiff(operations_research::sat::ConstraintProto *)::$_0 &,operations_research::sat::LinearExpressionProto *,0>(a1, a1 + 80, a1 + 160, a2 - 80);
        v6 = 1;
        return v6 & 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveAllDiff(operations_research::sat::ConstraintProto *)::$_0 &,operations_research::sat::LinearExpressionProto *,0>(a1, a1 + 80, a1 + 160, a1 + 240, a2 - 80);
        v6 = 1;
        return v6 & 1;
    }
  }

  else
  {
    if (v5 < 2)
    {
LABEL_3:
      v6 = 1;
      return v6 & 1;
    }

    if (v5 == 2)
    {
      v7 = (a2 - 80);
      v8 = **(a2 - 56);
      v9 = **(a1 + 24);
      v10 = **(a2 - 32);
      v11 = *(a1 + 48);
      v12 = *v11;
      if (v10 >= 0)
      {
        v13 = **(a2 - 32);
      }

      else
      {
        v13 = -v10;
      }

      if (v12 >= 0)
      {
        v14 = *v11;
      }

      else
      {
        v14 = -v12;
      }

      v15 = *(a2 - 16);
      v16 = *(a1 + 64);
      if (v15 >= 0)
      {
        v17 = *(a2 - 16);
      }

      else
      {
        v17 = -v15;
      }

      if (v16 >= 0)
      {
        v18 = *(a1 + 64);
      }

      else
      {
        v18 = -v16;
      }

      if (v8 < v9)
      {
        goto LABEL_22;
      }

      if (v9 < v8)
      {
        goto LABEL_3;
      }

      if (v13 < v14)
      {
        goto LABEL_22;
      }

      if (v14 < v13)
      {
        goto LABEL_3;
      }

      if (v10 < v12)
      {
        goto LABEL_22;
      }

      if (v12 < v10)
      {
        goto LABEL_3;
      }

      if (v17 < v18)
      {
LABEL_22:
        if (v7 == a1)
        {
          goto LABEL_3;
        }
      }

      else
      {
        v6 = 1;
        if (v7 == a1 || v15 >= v16 || v18 < v17)
        {
          return v6 & 1;
        }
      }

      v19 = *(a1 + 8);
      if (v19)
      {
        v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
        v20 = *(a2 - 72);
        if ((v20 & 1) == 0)
        {
LABEL_25:
          if (v19 != v20)
          {
LABEL_26:
            google::protobuf::internal::GenericSwap(a1, v7, a3);
            v6 = 1;
            return v6 & 1;
          }

LABEL_123:
          operations_research::sat::LinearExpressionProto::InternalSwap(a1, v7);
          v6 = 1;
          return v6 & 1;
        }
      }

      else
      {
        v20 = *(a2 - 72);
        if ((v20 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      if (v19 != *(v20 & 0xFFFFFFFFFFFFFFFELL))
      {
        goto LABEL_26;
      }

      goto LABEL_123;
    }
  }

  v21 = a1 + 160;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveAllDiff(operations_research::sat::ConstraintProto *)::$_0 &,operations_research::sat::LinearExpressionProto *,0>(a1, (a1 + 80), (a1 + 160));
  v22 = v4 + 240;
  if (v4 + 240 == a2)
  {
LABEL_107:
    v53 = 1;
    goto LABEL_119;
  }

  v23 = 0;
  v24 = 0;
  while (1)
  {
    v25 = **(v22 + 24);
    v26 = **(v21 + 24);
    v27 = **(v22 + 48);
    v28 = *(v21 + 48);
    v29 = *v28;
    v30 = v27 >= 0 ? **(v22 + 48) : -v27;
    v31 = v29 >= 0 ? *v28 : -v29;
    v32 = *(v22 + 64);
    v33 = *(v21 + 64);
    v34 = v32 >= 0 ? *(v22 + 64) : -v32;
    v35 = v33 >= 0 ? *(v21 + 64) : -v33;
    if (v25 < v26 || v26 >= v25 && (v30 < v31 || v31 >= v30 && (v27 < v29 || v29 >= v27 && (v34 < v35 || v32 < v33 && v35 >= v34))))
    {
      break;
    }

LABEL_30:
    v21 = v22;
    v23 += 80;
    v22 += 80;
    if (v22 == a2)
    {
      goto LABEL_107;
    }
  }

  operations_research::sat::LinearExpressionProto::LinearExpressionProto(&v55, 0);
  if (&v55 == v22)
  {
    goto LABEL_61;
  }

  v36 = v56;
  if ((v56 & 1) == 0)
  {
    v37 = *(v22 + 8);
    if ((v37 & 1) == 0)
    {
      goto LABEL_47;
    }

LABEL_59:
    if (v36 != *(v37 & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_48;
    }

LABEL_60:
    operations_research::sat::LinearExpressionProto::InternalSwap(&v55, v22);
    goto LABEL_61;
  }

  v36 = *(v56 & 0xFFFFFFFFFFFFFFFELL);
  v37 = *(v22 + 8);
  if (v37)
  {
    goto LABEL_59;
  }

LABEL_47:
  if (v36 == v37)
  {
    goto LABEL_60;
  }

LABEL_48:
  operations_research::sat::LinearExpressionProto::CopyFrom(&v55, v22);
LABEL_61:
  for (i = v23; ; i -= 80)
  {
    v39 = v4 + i;
    v40 = *(v4 + i + 248);
    if (v40)
    {
      v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
      v41 = *(v4 + i + 168);
      if ((v41 & 1) == 0)
      {
LABEL_65:
        if (v40 != v41)
        {
          goto LABEL_66;
        }

        goto LABEL_69;
      }
    }

    else
    {
      v41 = *(v4 + i + 168);
      if ((v41 & 1) == 0)
      {
        goto LABEL_65;
      }
    }

    if (v40 != *(v41 & 0xFFFFFFFFFFFFFFFELL))
    {
LABEL_66:
      operations_research::sat::LinearExpressionProto::CopyFrom((v39 + 240), (v39 + 160));
      goto LABEL_70;
    }

LABEL_69:
    operations_research::sat::LinearExpressionProto::InternalSwap(v39 + 240, (v39 + 160));
LABEL_70:
    if (i == -160)
    {
      v21 = v4;
LABEL_94:
      if (v21 == &v55)
      {
        goto LABEL_104;
      }

LABEL_95:
      v51 = *(v21 + 8);
      if (v51)
      {
        v51 = *(v51 & 0xFFFFFFFFFFFFFFFELL);
        v52 = v56;
        if ((v56 & 1) == 0)
        {
LABEL_97:
          if (v51 != v52)
          {
LABEL_98:
            operations_research::sat::LinearExpressionProto::CopyFrom(v21, &v55);
            goto LABEL_104;
          }

LABEL_103:
          operations_research::sat::LinearExpressionProto::InternalSwap(v21, &v55);
          goto LABEL_104;
        }
      }

      else
      {
        v52 = v56;
        if ((v56 & 1) == 0)
        {
          goto LABEL_97;
        }
      }

      if (v51 != *(v52 & 0xFFFFFFFFFFFFFFFELL))
      {
        goto LABEL_98;
      }

      goto LABEL_103;
    }

    v42 = *v57;
    v43 = **(v4 + i + 104);
    v44 = *v58;
    v45 = **(v4 + i + 128);
    if (*v58 >= 0)
    {
      v46 = *v58;
    }

    else
    {
      v46 = -v44;
    }

    if (v45 >= 0)
    {
      v47 = **(v4 + i + 128);
    }

    else
    {
      v47 = -v45;
    }

    v48 = *(v4 + i + 144);
    if (v59 >= 0)
    {
      v49 = v59;
    }

    else
    {
      v49 = -v59;
    }

    if (v48 >= 0)
    {
      v50 = *(v4 + i + 144);
    }

    else
    {
      v50 = -v48;
    }

    if (v42 < v43)
    {
      goto LABEL_62;
    }

    if (v43 < v42)
    {
      goto LABEL_94;
    }

    if (v46 < v47)
    {
      goto LABEL_62;
    }

    if (v47 < v46)
    {
      goto LABEL_94;
    }

    if (v44 < v45)
    {
      goto LABEL_62;
    }

    if (v45 < v44)
    {
      break;
    }

    if (v49 >= v50 && (v59 >= v48 || v50 < v49))
    {
      goto LABEL_94;
    }

LABEL_62:
    v21 -= 80;
  }

  v21 = v4 + i + 160;
  if (v21 != &v55)
  {
    goto LABEL_95;
  }

LABEL_104:
  if (++v24 != 8)
  {
    operations_research::sat::LinearExpressionProto::~LinearExpressionProto(&v55);
    goto LABEL_30;
  }

  LOBYTE(v4) = v22 + 80 == a2;
  operations_research::sat::LinearExpressionProto::~LinearExpressionProto(&v55);
  v53 = 0;
LABEL_119:
  v6 = v53 | v4;
  return v6 & 1;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,std::vector<operations_research::sat::LinearExpressionProto>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,std::vector<operations_research::sat::LinearExpressionProto>>>>::resize_impl(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8) & 1;
  v5 = 0;
  v2 = *(a1 + 16);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,32ul,false,false,8ul>(&v2, a1);
}

__n128 absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,std::vector<operations_research::sat::LinearExpressionProto>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,std::vector<operations_research::sat::LinearExpressionProto>>>>::transfer_slot_fn(uint64_t a1, void *a2, uint64_t a3)
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

uint64_t std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveNoOverlap(operations_research::sat::ConstraintProto *)::$_0 &,int *,false>(uint64_t result, int *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v7 = result;
  while (2)
  {
    v8 = a2;
    v238 = a2 - 1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v9 = v8 - v7;
          if (v9 > 2)
          {
            switch(v9)
            {
              case 3:

                return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveNoOverlap(operations_research::sat::ConstraintProto *)::$_0 &,int *,0>(v7, v7 + 1, v238, a3);
              case 4:

                return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveNoOverlap(operations_research::sat::ConstraintProto *)::$_0 &,int *,0>(v7, v7 + 1, v7 + 2, v238, a3);
              case 5:

                return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveNoOverlap(operations_research::sat::ConstraintProto *)::$_0 &,int *,0>(v7, v7 + 1, v7 + 2, v7 + 3, v238, a3);
            }
          }

          else
          {
            if (v9 < 2)
            {
              return result;
            }

            v8 = a2;
            if (v9 == 2)
            {
              v109 = *(a2 - 1);
              v110 = *v7;
              v111 = *a3;
              started = operations_research::sat::PresolveContext::StartMin(*(*a3 + 8), v109);
              v113 = operations_research::sat::PresolveContext::EndMax(*(v111 + 8), v109);
              v114 = operations_research::sat::PresolveContext::StartMin(*(v111 + 8), v110);
              result = operations_research::sat::PresolveContext::EndMax(*(v111 + 8), v110);
              if (started < v114 || (v114 >= started ? (v115 = v113 < result) : (v115 = 0), v115))
              {
                v116 = *v7;
                *v7 = *(a2 - 1);
                *(a2 - 1) = v116;
              }

              return result;
            }
          }

          v237 = v7;
          if (v9 <= 23)
          {
            v117 = v7 + 1;
            v118 = v7 == v8 || v117 == v8;
            v119 = v118;
            if (a5)
            {
              if ((v119 & 1) == 0)
              {
                v120 = 0;
                v121 = v7;
                do
                {
                  v123 = v117;
                  v125 = *v121;
                  v124 = v121[1];
                  v126 = *a3;
                  v127 = operations_research::sat::PresolveContext::StartMin(*(*a3 + 8), v124);
                  v128 = operations_research::sat::PresolveContext::EndMax(*(v126 + 8), v124);
                  v129 = operations_research::sat::PresolveContext::StartMin(*(v126 + 8), v125);
                  result = operations_research::sat::PresolveContext::EndMax(*(v126 + 8), v125);
                  if (v127 < v129 || (v129 >= v127 ? (v130 = v128 < result) : (v130 = 0), v130))
                  {
                    v131 = v121[1];
                    v121[1] = *v121;
                    v122 = v7;
                    if (v121 != v7)
                    {
                      v246 = v123;
                      v132 = v120;
                      while (1)
                      {
                        v133 = (v7 + v132);
                        v134 = *(v133 - 1);
                        v135 = *a3;
                        v136 = operations_research::sat::PresolveContext::StartMin(*(*a3 + 8), v131);
                        v137 = operations_research::sat::PresolveContext::EndMax(*(v135 + 8), v131);
                        v138 = operations_research::sat::PresolveContext::StartMin(*(v135 + 8), v134);
                        result = operations_research::sat::PresolveContext::EndMax(*(v135 + 8), v134);
                        if (v136 >= v138 && (v138 < v136 || v137 >= result))
                        {
                          break;
                        }

                        *v133 = *(v133 - 1);
                        v132 -= 4;
                        v7 = v237;
                        if (!v132)
                        {
                          v122 = v237;
                          goto LABEL_140;
                        }
                      }

                      v7 = v237;
                      v122 = (v237 + v132);
LABEL_140:
                      v123 = v246;
                    }

                    *v122 = v131;
                  }

                  v117 = v123 + 1;
                  v120 += 4;
                  v121 = v123;
                }

                while (v123 + 1 != a2);
              }
            }

            else if ((v119 & 1) == 0)
            {
              do
              {
                v216 = v117;
                v218 = *v7;
                v217 = v7[1];
                v219 = *a3;
                v220 = operations_research::sat::PresolveContext::StartMin(*(*a3 + 8), v217);
                v221 = operations_research::sat::PresolveContext::EndMax(*(v219 + 8), v217);
                v222 = operations_research::sat::PresolveContext::StartMin(*(v219 + 8), v218);
                result = operations_research::sat::PresolveContext::EndMax(*(v219 + 8), v218);
                if (v220 < v222 || (v222 >= v220 ? (v223 = v221 < result) : (v223 = 0), v223))
                {
                  v224 = *v216;
                  do
                  {
                    do
                    {
                      v225 = v7;
                      v7[1] = *v7;
                      v226 = *--v7;
                      v227 = *a3;
                      v228 = operations_research::sat::PresolveContext::StartMin(*(*a3 + 8), v224);
                      v229 = operations_research::sat::PresolveContext::EndMax(*(v227 + 8), v224);
                      v230 = operations_research::sat::PresolveContext::StartMin(*(v227 + 8), v226);
                      result = operations_research::sat::PresolveContext::EndMax(*(v227 + 8), v226);
                    }

                    while (v228 < v230);
                  }

                  while (v230 >= v228 && v229 < result);
                  *v225 = v224;
                }

                v117 = v216 + 1;
                v7 = v216;
              }

              while (v216 + 1 != a2);
            }

            return result;
          }

          if (!a4)
          {
            if (v7 != v8)
            {
              v140 = (v9 - 2) >> 1;
              v141 = v140;
              v243 = v9;
              v234 = v140;
              do
              {
                v142 = v141;
                v143 = 4 * v141;
                if (v140 >= (4 * v141) >> 2)
                {
                  v232 = v141;
                  v247 = (v143 >> 1) | 1;
                  v144 = &v7[v247];
                  if ((v143 >> 1) + 2 < v9)
                  {
                    v145 = *v144;
                    v146 = v144[1];
                    v147 = *a3;
                    *v239 = operations_research::sat::PresolveContext::StartMin(*(*a3 + 8), *v144);
                    v148 = operations_research::sat::PresolveContext::EndMax(*(v147 + 8), v145);
                    v149 = operations_research::sat::PresolveContext::StartMin(*(v147 + 8), v146);
                    v150 = operations_research::sat::PresolveContext::EndMax(*(v147 + 8), v146);
                    if (*v239 < v149 || (v149 >= *v239 ? (v151 = v148 < v150) : (v151 = 0), v151))
                    {
                      ++v144;
                      v247 = (v143 >> 1) + 2;
                    }
                  }

                  v152 = &v7[v143 / 4];
                  v153 = *v144;
                  v154 = *v152;
                  v155 = *a3;
                  v156 = operations_research::sat::PresolveContext::StartMin(*(*a3 + 8), *v144);
                  v157 = operations_research::sat::PresolveContext::EndMax(*(v155 + 8), v153);
                  v158 = operations_research::sat::PresolveContext::StartMin(*(v155 + 8), v154);
                  result = operations_research::sat::PresolveContext::EndMax(*(v155 + 8), v154);
                  v9 = v243;
                  v142 = v232;
                  v140 = v234;
                  if (v156 >= v158 && (v158 < v156 || v157 >= result))
                  {
                    v240 = *v152;
                    v160 = v247;
                    do
                    {
                      v161 = v144;
                      *v152 = *v144;
                      if (v140 < v160)
                      {
                        break;
                      }

                      v248 = (2 * v160) | 1;
                      v144 = &v7[v248];
                      v162 = 2 * v160 + 2;
                      if (v162 < v9)
                      {
                        v163 = *v144;
                        v164 = v144[1];
                        v165 = *a3;
                        v166 = operations_research::sat::PresolveContext::StartMin(*(*a3 + 8), *v144);
                        v167 = operations_research::sat::PresolveContext::EndMax(*(v165 + 8), v163);
                        v168 = operations_research::sat::PresolveContext::StartMin(*(v165 + 8), v164);
                        v169 = *(v165 + 8);
                        v7 = v237;
                        v170 = v164;
                        v140 = v234;
                        v171 = operations_research::sat::PresolveContext::EndMax(v169, v170);
                        if (v166 < v168 || (v168 >= v166 ? (v172 = v167 < v171) : (v172 = 0), v172))
                        {
                          ++v144;
                          v248 = v162;
                        }
                      }

                      v173 = *v144;
                      v174 = *a3;
                      v175 = operations_research::sat::PresolveContext::StartMin(*(*a3 + 8), *v144);
                      v176 = operations_research::sat::PresolveContext::EndMax(*(v174 + 8), v173);
                      v177 = operations_research::sat::PresolveContext::StartMin(*(v174 + 8), v240);
                      result = operations_research::sat::PresolveContext::EndMax(*(v174 + 8), v240);
                      v9 = v243;
                      v160 = v248;
                      if (v175 < v177)
                      {
                        break;
                      }

                      v178 = v177 >= v175 && v176 < result;
                      v152 = v161;
                    }

                    while (!v178);
                    *v161 = v240;
                    v142 = v232;
                  }
                }

                v141 = v142 - 1;
              }

              while (v142);
              do
              {
                v179 = 0;
                v235 = *v7;
                v180 = (v9 - 2) >> 1;
                v181 = v7;
                *v241 = v180;
                v244 = v9;
                do
                {
                  v182 = v181;
                  v183 = &v181[v179];
                  v181 = v183 + 1;
                  v184 = 2 * v179;
                  v179 = (2 * v179) | 1;
                  v185 = v184 + 2;
                  if (v184 + 2 < v9)
                  {
                    v187 = v183[2];
                    v186 = v183 + 2;
                    v188 = *(v186 - 1);
                    v189 = *a3;
                    v249 = v181;
                    v190 = operations_research::sat::PresolveContext::StartMin(*(*a3 + 8), v188);
                    v191 = operations_research::sat::PresolveContext::EndMax(*(v189 + 8), v188);
                    v192 = operations_research::sat::PresolveContext::StartMin(*(v189 + 8), v187);
                    v193 = *(v189 + 8);
                    v9 = v244;
                    result = operations_research::sat::PresolveContext::EndMax(v193, v187);
                    v180 = *v241;
                    v181 = v249;
                    if (v190 < v192 || (v192 >= v190 ? (v194 = v191 < result) : (v194 = 0), v194))
                    {
                      v181 = v186;
                      v179 = v185;
                    }
                  }

                  *v182 = *v181;
                }

                while (v179 <= v180);
                v195 = a2 - 1;
                v118 = v181 == --a2;
                if (v118)
                {
                  *v181 = v235;
                }

                else
                {
                  *v181 = *v195;
                  *v195 = v235;
                  v196 = (v181 - v237 + 4) >> 2;
                  v197 = v196 - 2;
                  if (v196 >= 2)
                  {
                    v198 = v197 >> 1;
                    v199 = &v237[v197 >> 1];
                    v200 = *v199;
                    v201 = *v181;
                    v202 = *a3;
                    v250 = v181;
                    v203 = operations_research::sat::PresolveContext::StartMin(*(*a3 + 8), *v199);
                    v204 = operations_research::sat::PresolveContext::EndMax(*(v202 + 8), v200);
                    v205 = operations_research::sat::PresolveContext::StartMin(*(v202 + 8), v201);
                    result = operations_research::sat::PresolveContext::EndMax(*(v202 + 8), v201);
                    if (v203 < v205 || (v205 >= v203 ? (v206 = v204 < result) : (v206 = 0), v206))
                    {
                      v207 = *v250;
                      *v250 = *v199;
                      if (v197 >= 2)
                      {
                        while (1)
                        {
                          v208 = v198 - 1;
                          v198 = (v198 - 1) >> 1;
                          v209 = &v237[v198];
                          v210 = *v209;
                          v211 = *a3;
                          v212 = operations_research::sat::PresolveContext::StartMin(*(*a3 + 8), *v209);
                          v213 = operations_research::sat::PresolveContext::EndMax(*(v211 + 8), v210);
                          v214 = operations_research::sat::PresolveContext::StartMin(*(v211 + 8), v207);
                          result = operations_research::sat::PresolveContext::EndMax(*(v211 + 8), v207);
                          if (v212 >= v214 && (v214 < v212 || v213 >= result))
                          {
                            break;
                          }

                          *v199 = *v209;
                          v199 = &v237[v198];
                          if (v208 <= 1)
                          {
                            goto LABEL_222;
                          }
                        }
                      }

                      v209 = v199;
LABEL_222:
                      *v209 = v207;
                      v9 = v244;
                    }
                  }
                }

                v27 = v9-- <= 2;
                v7 = v237;
              }

              while (!v27);
            }

            return result;
          }

          if (v9 < 0x81)
          {
            break;
          }

          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveNoOverlap(operations_research::sat::ConstraintProto *)::$_0 &,int *,0>(v7, &v7[v9 >> 1], v238, a3);
          v10 = v9 >> 1;
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveNoOverlap(operations_research::sat::ConstraintProto *)::$_0 &,int *,0>(v7 + 1, &v7[v10 - 1], a2 - 2, a3);
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveNoOverlap(operations_research::sat::ConstraintProto *)::$_0 &,int *,0>(v7 + 2, &v7[v10 + 1], a2 - 3, a3);
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveNoOverlap(operations_research::sat::ConstraintProto *)::$_0 &,int *,0>(&v7[v10 - 1], &v7[v10], &v7[v10 + 1], a3);
          v11 = *v7;
          *v7 = v7[v10];
          v7[v10] = v11;
          v242 = a4 - 1;
          if (a5)
          {
            goto LABEL_19;
          }

LABEL_16:
          v12 = *(v7 - 1);
          v13 = *v7;
          v14 = *a3;
          v15 = operations_research::sat::PresolveContext::StartMin(*(*a3 + 8), v12);
          v16 = operations_research::sat::PresolveContext::EndMax(*(v14 + 8), v12);
          v17 = operations_research::sat::PresolveContext::StartMin(*(v14 + 8), v13);
          v18 = operations_research::sat::PresolveContext::EndMax(*(v14 + 8), v13);
          if (v15 < v17 || v17 >= v15 && v16 < v18)
          {
            goto LABEL_19;
          }

          v66 = *v7;
          v67 = *v238;
          v68 = *a3;
          v69 = operations_research::sat::PresolveContext::StartMin(*(*a3 + 8), v66);
          v70 = operations_research::sat::PresolveContext::EndMax(*(v68 + 8), v66);
          v71 = operations_research::sat::PresolveContext::StartMin(*(v68 + 8), v67);
          result = operations_research::sat::PresolveContext::EndMax(*(v68 + 8), v67);
          if (v69 >= v71 && (v71 < v69 || v70 >= result))
          {
            v102 = v237 + 1;
            do
            {
              v7 = v102;
              if (v102 >= v8)
              {
                break;
              }

              v103 = *v102;
              v104 = *a3;
              v105 = operations_research::sat::PresolveContext::StartMin(*(*a3 + 8), v66);
              v106 = operations_research::sat::PresolveContext::EndMax(*(v104 + 8), v66);
              v107 = operations_research::sat::PresolveContext::StartMin(*(v104 + 8), v103);
              result = operations_research::sat::PresolveContext::EndMax(*(v104 + 8), v103);
              if (v105 < v107)
              {
                break;
              }

              v102 = v7 + 1;
            }

            while (v107 < v105 || v106 >= result);
          }

          else
          {
            v72 = v237 + 1;
            do
            {
              v7 = v72;
              v73 = *v72;
              v74 = *a3;
              v75 = operations_research::sat::PresolveContext::StartMin(*(*a3 + 8), v66);
              v76 = operations_research::sat::PresolveContext::EndMax(*(v74 + 8), v66);
              v77 = operations_research::sat::PresolveContext::StartMin(*(v74 + 8), v73);
              result = operations_research::sat::PresolveContext::EndMax(*(v74 + 8), v73);
              if (v75 < v77)
              {
                break;
              }

              v72 = v7 + 1;
            }

            while (v77 < v75 || v76 >= result);
          }

          i = v8;
          if (v7 < v8)
          {
            for (i = a2 - 1; ; --i)
            {
              v80 = *i;
              v81 = *a3;
              v82 = operations_research::sat::PresolveContext::StartMin(*(*a3 + 8), v66);
              v83 = operations_research::sat::PresolveContext::EndMax(*(v81 + 8), v66);
              v84 = operations_research::sat::PresolveContext::StartMin(*(v81 + 8), v80);
              result = operations_research::sat::PresolveContext::EndMax(*(v81 + 8), v80);
              if (v82 >= v84 && (v84 < v82 || v83 >= result))
              {
                break;
              }
            }
          }

          while (v7 < i)
          {
            v86 = *v7;
            *v7 = *i;
            *i = v86;
            v87 = v7 + 1;
            do
            {
              v7 = v87;
              v88 = *v87;
              v89 = *a3;
              v90 = operations_research::sat::PresolveContext::StartMin(*(*a3 + 8), v66);
              v91 = operations_research::sat::PresolveContext::EndMax(*(v89 + 8), v66);
              v92 = operations_research::sat::PresolveContext::StartMin(*(v89 + 8), v88);
              v93 = operations_research::sat::PresolveContext::EndMax(*(v89 + 8), v88);
              if (v90 < v92)
              {
                break;
              }

              v87 = v7 + 1;
            }

            while (v92 < v90 || v91 >= v93);
            do
            {
              do
              {
                v95 = *--i;
                v96 = *a3;
                v97 = operations_research::sat::PresolveContext::StartMin(*(*a3 + 8), v66);
                v98 = operations_research::sat::PresolveContext::EndMax(*(v96 + 8), v66);
                v99 = operations_research::sat::PresolveContext::StartMin(*(v96 + 8), v95);
                result = operations_research::sat::PresolveContext::EndMax(*(v96 + 8), v95);
              }

              while (v97 < v99);
            }

            while (v99 >= v97 && v98 < result);
          }

          v101 = v7 - 1;
          if (v7 - 1 != v237)
          {
            *v237 = *v101;
          }

          a5 = 0;
          *v101 = v66;
          a4 = v242;
        }

        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveNoOverlap(operations_research::sat::ConstraintProto *)::$_0 &,int *,0>(&v7[v9 >> 1], v7, v238, a3);
        v242 = a4 - 1;
        if ((a5 & 1) == 0)
        {
          goto LABEL_16;
        }

LABEL_19:
        v19 = 0;
        v20 = *v7;
        while (1)
        {
          v21 = v7[v19 + 1];
          v22 = *a3;
          v23 = operations_research::sat::PresolveContext::StartMin(*(*a3 + 8), v21);
          v24 = operations_research::sat::PresolveContext::EndMax(*(v22 + 8), v21);
          v25 = operations_research::sat::PresolveContext::StartMin(*(v22 + 8), v20);
          v26 = operations_research::sat::PresolveContext::EndMax(*(v22 + 8), v20);
          if (v23 >= v25)
          {
            v27 = v25 >= v23 && v24 < v26;
            if (!v27)
            {
              break;
            }
          }

          ++v19;
        }

        v28 = &v7[v19];
        v245 = &v7[v19 + 1];
        v29 = a2 - 1;
        if (v19 * 4)
        {
          do
          {
            v30 = v29;
            v31 = *v29;
            v32 = *a3;
            v33 = operations_research::sat::PresolveContext::StartMin(*(*a3 + 8), *v29);
            v34 = operations_research::sat::PresolveContext::EndMax(*(v32 + 8), v31);
            v35 = operations_research::sat::PresolveContext::StartMin(*(v32 + 8), v20);
            v36 = operations_research::sat::PresolveContext::EndMax(*(v32 + 8), v20);
            if (v33 < v35)
            {
              break;
            }

            v29 = v30 - 1;
          }

          while (v35 < v33 || v34 >= v36);
LABEL_42:
          if (v245 < v30)
          {
            v47 = v245;
            v48 = v30;
            do
            {
              v49 = *v47;
              *v47++ = *v48;
              *v48 = v49;
              while (1)
              {
                v50 = *v47;
                v51 = *a3;
                v52 = operations_research::sat::PresolveContext::StartMin(*(*a3 + 8), *v47);
                v53 = operations_research::sat::PresolveContext::EndMax(*(v51 + 8), v50);
                v54 = operations_research::sat::PresolveContext::StartMin(*(v51 + 8), v20);
                v55 = operations_research::sat::PresolveContext::EndMax(*(v51 + 8), v20);
                if (v52 >= v54 && (v54 < v52 || v53 >= v55))
                {
                  break;
                }

                ++v47;
              }

              v57 = v48 - 1;
              do
              {
                v48 = v57;
                v58 = *v57;
                v59 = *a3;
                v60 = operations_research::sat::PresolveContext::StartMin(*(*a3 + 8), *v57);
                v61 = operations_research::sat::PresolveContext::EndMax(*(v59 + 8), v58);
                v62 = operations_research::sat::PresolveContext::StartMin(*(v59 + 8), v20);
                v63 = operations_research::sat::PresolveContext::EndMax(*(v59 + 8), v20);
                if (v60 < v62)
                {
                  break;
                }

                v57 = v48 - 1;
              }

              while (v62 < v60 || v61 >= v63);
            }

            while (v47 < v48);
            v28 = v47 - 1;
            v8 = a2;
          }
        }

        else
        {
          v38 = a2 - 1;
          while (1)
          {
            v30 = v38;
            v39 = v38 + 1;
            if (v245 >= v39)
            {
              break;
            }

            v40 = *v30;
            v41 = *a3;
            v42 = operations_research::sat::PresolveContext::StartMin(*(*a3 + 8), *v30);
            v43 = operations_research::sat::PresolveContext::EndMax(*(v41 + 8), v40);
            v44 = operations_research::sat::PresolveContext::StartMin(*(v41 + 8), v20);
            v45 = operations_research::sat::PresolveContext::EndMax(*(v41 + 8), v20);
            if (v42 >= v44)
            {
              v38 = v30 - 1;
              if (v44 < v42 || v43 >= v45)
              {
                continue;
              }
            }

            goto LABEL_42;
          }

          v30 = v39;
        }

        if (v28 != v237)
        {
          *v237 = *v28;
        }

        *v28 = v20;
        a4 = v242;
        if (v245 >= v30)
        {
          break;
        }

LABEL_66:
        result = std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveNoOverlap(operations_research::sat::ConstraintProto *)::$_0 &,int *,false>(v237, v28, a3, v242, a5 & 1);
        a5 = 0;
        v7 = v28 + 1;
      }

      v65 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveNoOverlap(operations_research::sat::ConstraintProto *)::$_0 &,int *>(v237, v28, a3);
      v7 = v28 + 1;
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveNoOverlap(operations_research::sat::ConstraintProto *)::$_0 &,int *>(v28 + 1, v8, a3);
      if (result)
      {
        break;
      }

      if ((v65 & 1) == 0)
      {
        goto LABEL_66;
      }
    }

    a2 = v28;
    v7 = v237;
    if ((v65 & 1) == 0)
    {
      continue;
    }

    return result;
  }
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveNoOverlap(operations_research::sat::ConstraintProto *)::$_0 &,int *,0>(int *a1, int *a2, int *a3, uint64_t *a4)
{
  v6 = a2;
  v7 = a1;
  v8 = *a2;
  v9 = *a1;
  v10 = *a4;
  started = operations_research::sat::PresolveContext::StartMin(*(*a4 + 8), *a2);
  v12 = operations_research::sat::PresolveContext::EndMax(*(v10 + 8), v8);
  v13 = operations_research::sat::PresolveContext::StartMin(*(v10 + 8), v9);
  v14 = operations_research::sat::PresolveContext::EndMax(*(v10 + 8), v9);
  if (started < v13 || (v13 >= started ? (v15 = v12 < v14) : (v15 = 0), v15))
  {
    v31 = *a3;
    v32 = *v6;
    v33 = *a4;
    v34 = operations_research::sat::PresolveContext::StartMin(*(*a4 + 8), *a3);
    v35 = operations_research::sat::PresolveContext::EndMax(*(v33 + 8), v31);
    v36 = operations_research::sat::PresolveContext::StartMin(*(v33 + 8), v32);
    result = operations_research::sat::PresolveContext::EndMax(*(v33 + 8), v32);
    if (v34 >= v36 && (v36 < v34 || v35 >= result))
    {
      v38 = *v7;
      *v7 = *v6;
      *v6 = v38;
      v39 = *a3;
      v40 = *a4;
      v41 = operations_research::sat::PresolveContext::StartMin(*(*a4 + 8), *a3);
      v42 = operations_research::sat::PresolveContext::EndMax(*(v40 + 8), v39);
      v43 = operations_research::sat::PresolveContext::StartMin(*(v40 + 8), v38);
      result = operations_research::sat::PresolveContext::EndMax(*(v40 + 8), v38);
      if (v41 >= v43)
      {
        if (v43 < v41)
        {
          return result;
        }

        v7 = v6;
        v6 = a3;
        if (v42 >= result)
        {
          return result;
        }

LABEL_24:
        v44 = *v7;
        *v7 = *v6;
        *v6 = v44;
        return result;
      }

      v7 = v6;
    }

    v6 = a3;
    goto LABEL_24;
  }

  v16 = *a3;
  v17 = *v6;
  v18 = *a4;
  v19 = operations_research::sat::PresolveContext::StartMin(*(*a4 + 8), *a3);
  v20 = operations_research::sat::PresolveContext::EndMax(*(v18 + 8), v16);
  v21 = operations_research::sat::PresolveContext::StartMin(*(v18 + 8), v17);
  result = operations_research::sat::PresolveContext::EndMax(*(v18 + 8), v17);
  if (v19 < v21 || (v21 >= v19 ? (v23 = v20 < result) : (v23 = 0), v23))
  {
    v24 = *v6;
    *v6 = *a3;
    *a3 = v24;
    v25 = *v6;
    v26 = *v7;
    v27 = *a4;
    v28 = operations_research::sat::PresolveContext::StartMin(*(*a4 + 8), *v6);
    v29 = operations_research::sat::PresolveContext::EndMax(*(v27 + 8), v25);
    v30 = operations_research::sat::PresolveContext::StartMin(*(v27 + 8), v26);
    result = operations_research::sat::PresolveContext::EndMax(*(v27 + 8), v26);
    if (v28 < v30 || v30 >= v28 && v29 < result)
    {
      goto LABEL_24;
    }
  }

  return result;
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveNoOverlap(operations_research::sat::ConstraintProto *)::$_0 &,int *,0>(int *a1, int *a2, int *a3, int *a4, uint64_t *a5)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveNoOverlap(operations_research::sat::ConstraintProto *)::$_0 &,int *,0>(a1, a2, a3, a5);
  v10 = *a4;
  v11 = *a3;
  v12 = *a5;
  started = operations_research::sat::PresolveContext::StartMin(*(*a5 + 8), *a4);
  v14 = operations_research::sat::PresolveContext::EndMax(*(v12 + 8), v10);
  v15 = operations_research::sat::PresolveContext::StartMin(*(v12 + 8), v11);
  result = operations_research::sat::PresolveContext::EndMax(*(v12 + 8), v11);
  if (started < v15 || (v15 >= started ? (v17 = v14 < result) : (v17 = 0), v17))
  {
    v18 = *a3;
    *a3 = *a4;
    *a4 = v18;
    v19 = *a3;
    v20 = *a2;
    v21 = *a5;
    v22 = operations_research::sat::PresolveContext::StartMin(*(*a5 + 8), *a3);
    v23 = operations_research::sat::PresolveContext::EndMax(*(v21 + 8), v19);
    v24 = operations_research::sat::PresolveContext::StartMin(*(v21 + 8), v20);
    result = operations_research::sat::PresolveContext::EndMax(*(v21 + 8), v20);
    if (v22 < v24 || (v24 >= v22 ? (v25 = v23 < result) : (v25 = 0), v25))
    {
      v26 = *a2;
      *a2 = *a3;
      *a3 = v26;
      v27 = *a2;
      v28 = *a1;
      v29 = *a5;
      v30 = operations_research::sat::PresolveContext::StartMin(*(*a5 + 8), *a2);
      v31 = operations_research::sat::PresolveContext::EndMax(*(v29 + 8), v27);
      v32 = operations_research::sat::PresolveContext::StartMin(*(v29 + 8), v28);
      result = operations_research::sat::PresolveContext::EndMax(*(v29 + 8), v28);
      if (v30 < v32 || v32 >= v30 && v31 < result)
      {
        v33 = *a1;
        *a1 = *a2;
        *a2 = v33;
      }
    }
  }

  return result;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveNoOverlap(operations_research::sat::ConstraintProto *)::$_0 &,int *,0>(int *a1, int *a2, int *a3, int *a4, int *a5, uint64_t *a6)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveNoOverlap(operations_research::sat::ConstraintProto *)::$_0 &,int *,0>(a1, a2, a3, a4, a6);
  v11 = *a5;
  v12 = *a4;
  v13 = *a6;
  started = operations_research::sat::PresolveContext::StartMin(*(*a6 + 8), *a5);
  v15 = operations_research::sat::PresolveContext::EndMax(*(v13 + 8), v11);
  v16 = operations_research::sat::PresolveContext::StartMin(*(v13 + 8), v12);
  result = operations_research::sat::PresolveContext::EndMax(*(v13 + 8), v12);
  if (started < v16 || (v16 >= started ? (v18 = v15 < result) : (v18 = 0), v18))
  {
    v19 = *a4;
    *a4 = *a5;
    *a5 = v19;
    v20 = *a4;
    v21 = *a3;
    v22 = *a6;
    v23 = operations_research::sat::PresolveContext::StartMin(*(*a6 + 8), *a4);
    v24 = operations_research::sat::PresolveContext::EndMax(*(v22 + 8), v20);
    v25 = operations_research::sat::PresolveContext::StartMin(*(v22 + 8), v21);
    result = operations_research::sat::PresolveContext::EndMax(*(v22 + 8), v21);
    if (v23 < v25 || (v25 >= v23 ? (v26 = v24 < result) : (v26 = 0), v26))
    {
      v27 = *a3;
      *a3 = *a4;
      *a4 = v27;
      v28 = *a3;
      v29 = *a2;
      v30 = *a6;
      v31 = operations_research::sat::PresolveContext::StartMin(*(*a6 + 8), *a3);
      v32 = operations_research::sat::PresolveContext::EndMax(*(v30 + 8), v28);
      v33 = operations_research::sat::PresolveContext::StartMin(*(v30 + 8), v29);
      result = operations_research::sat::PresolveContext::EndMax(*(v30 + 8), v29);
      if (v31 < v33 || v33 >= v31 && v32 < result)
      {
        v34 = *a2;
        *a2 = *a3;
        *a3 = v34;
        v35 = *a2;
        v36 = *a1;
        v37 = *a6;
        v38 = operations_research::sat::PresolveContext::StartMin(*(*a6 + 8), *a2);
        v39 = operations_research::sat::PresolveContext::EndMax(*(v37 + 8), v35);
        v40 = operations_research::sat::PresolveContext::StartMin(*(v37 + 8), v36);
        result = operations_research::sat::PresolveContext::EndMax(*(v37 + 8), v36);
        if (v38 < v40 || v40 >= v38 && v39 < result)
        {
          v41 = *a1;
          *a1 = *a2;
          *a2 = v41;
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveNoOverlap(operations_research::sat::ConstraintProto *)::$_0 &,int *>(int *a1, int *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveNoOverlap(operations_research::sat::ConstraintProto *)::$_0 &,int *,0>(a1, a1 + 1, a2 - 1, a3);
        v7 = 1;
        return v7 & 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveNoOverlap(operations_research::sat::ConstraintProto *)::$_0 &,int *,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        v7 = 1;
        return v7 & 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveNoOverlap(operations_research::sat::ConstraintProto *)::$_0 &,int *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        v7 = 1;
        return v7 & 1;
    }
  }

  else
  {
    if (v6 < 2)
    {
LABEL_3:
      v7 = 1;
      return v7 & 1;
    }

    if (v6 == 2)
    {
      v8 = *(a2 - 1);
      v9 = *a1;
      v10 = *a3;
      started = operations_research::sat::PresolveContext::StartMin(*(*a3 + 8), v8);
      v12 = operations_research::sat::PresolveContext::EndMax(*(v10 + 8), v8);
      v13 = operations_research::sat::PresolveContext::StartMin(*(v10 + 8), v9);
      v14 = operations_research::sat::PresolveContext::EndMax(*(v10 + 8), v9);
      if (started < v13 || (v13 >= started ? (v15 = v12 < v14) : (v15 = 0), v15))
      {
        v16 = *a1;
        *a1 = *(v4 - 1);
        *(v4 - 1) = v16;
        v7 = 1;
        return v7 & 1;
      }

      goto LABEL_3;
    }
  }

  v17 = a1 + 2;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::CpModelPresolver::PresolveNoOverlap(operations_research::sat::ConstraintProto *)::$_0 &,int *,0>(a1, a1 + 1, a1 + 2, a3);
  v19 = a1 + 3;
  if (a1 + 3 == v4)
  {
LABEL_39:
    v38 = 1;
  }

  else
  {
    v43 = 0;
    v42 = 0;
    v40 = v4;
    while (1)
    {
      v21 = *v19;
      v22 = *v17;
      v23 = *a3;
      v24 = operations_research::sat::PresolveContext::StartMin(*(*a3 + 8), *v19);
      v25 = operations_research::sat::PresolveContext::EndMax(*(v23 + 8), v21);
      v26 = operations_research::sat::PresolveContext::StartMin(*(v23 + 8), v22);
      v27 = operations_research::sat::PresolveContext::EndMax(*(v23 + 8), v22);
      if (v24 < v26 || (v26 >= v24 ? (v28 = v25 < v27) : (v28 = 0), v28))
      {
        v29 = *v19;
        *v19 = *v17;
        v20 = a1;
        if (v17 != a1)
        {
          v41 = v19;
          v30 = v43;
          while (1)
          {
            v31 = *(a1 + v30 + 4);
            v32 = *a3;
            v33 = operations_research::sat::PresolveContext::StartMin(*(*a3 + 8), v29);
            v34 = operations_research::sat::PresolveContext::EndMax(*(v32 + 8), v29);
            v35 = operations_research::sat::PresolveContext::StartMin(*(v32 + 8), v31);
            v36 = operations_research::sat::PresolveContext::EndMax(*(v32 + 8), v31);
            if (v33 >= v35 && (v35 < v33 || v34 >= v36))
            {
              break;
            }

            *(a1 + v30 + 8) = *(a1 + v30 + 4);
            v30 -= 4;
            if (v30 == -8)
            {
              v20 = a1;
              goto LABEL_20;
            }
          }

          v20 = (a1 + v30 + 8);
LABEL_20:
          v4 = v40;
          v19 = v41;
        }

        *v20 = v29;
        if (++v42 == 8)
        {
          break;
        }
      }

      v17 = v19;
      v18 = v43 + 4;
      v43 += 4;
      if (++v19 == v4)
      {
        goto LABEL_39;
      }
    }

    v38 = 0;
    v18 = v19 + 1 == v4;
  }

  v7 = v38 | v18;
  return v7 & 1;
}

uint64_t *absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,long long>>>::find_or_prepare_insert<long long>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  if (*result > 1)
  {
    v6 = 0;
    _X10 = result[2];
    __asm { PRFM            #4, [X10] }

    v13 = *a2;
    v14 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2));
    v15 = vdup_n_s8(v14 & 0x7F);
    v16 = ((v14 >> 7) ^ (_X10 >> 12)) & v3;
    v17 = *(_X10 + v16);
    v18 = vceq_s8(v17, v15);
    if (!v18)
    {
      goto LABEL_8;
    }

LABEL_5:
    v19 = result[3];
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
    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(result, v14, (v16 + (__clz(__rbit64(v21)) >> 3)) & v3, v6, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,long long>>>::GetPolicyFunctions(void)::value);
    v24 = v22[3] + 16 * result;
    *a3 = result + v22[2];
    *(a3 + 8) = v24;
    *(a3 + 16) = 1;
  }

  else
  {
    if (result[1] > 1)
    {
      v4 = result + 2;
      if (result[2] != *a2)
      {
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,long long>>>::resize_impl(result, 3);
      }

      v5 = 0;
    }

    else
    {
      result[1] = 2;
      v4 = result + 2;
      v5 = 1;
    }

    *a3 = &absl::lts_20240722::container_internal::kSooControl;
    *(a3 + 8) = v4;
    *(a3 + 16) = v5;
  }

  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,long long>>>::resize_impl(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = *a1 < 2 && v3 > 1;
  v6 = a1[2];
  v9 = v3 & 1;
  v10 = v2 < 2;
  v11 = v5;
  v7 = a1[3];
  v8[0] = v6;
  v8[1] = v7;
  v8[2] = v2;
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,16ul,true,true,8ul>(v8, a1);
}

void ***std::__exception_guard_exceptions<std::vector<operations_research::sat::LinearExpressionProto>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = v2;
      if (v4 != v2)
      {
        do
        {
          operations_research::sat::LinearExpressionProto::~LinearExpressionProto((v4 - 80));
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

uint64_t *absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::tuple<int,long long,long long,int>>,absl::lts_20240722::hash_internal::Hash<std::tuple<int,long long,long long,int>>,std::equal_to<std::tuple<int,long long,long long,int>>,std::allocator<std::tuple<int,long long,long long,int>>>::find_or_prepare_insert_non_soo<std::tuple<int,long long,long long,int>>@<X0>(uint64_t *result@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 0;
  _X9 = result[2];
  __asm { PRFM            #4, [X9] }

  v9 = *a2;
  v10 = *(a2 + 1);
  v11 = *(a2 + 2);
  v12 = v10 + ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v9) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v9)));
  v13 = v11 + (((v12 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v12));
  v14 = ((v13 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v13);
  v15 = a2[6];
  v16 = (((v14 + v15) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v14 + v15));
  v17 = *result;
  v18 = vdup_n_s8(v16 & 0x7F);
  v19 = ((v16 >> 7) ^ (_X9 >> 12)) & *result;
  v20 = *(_X9 + v19);
  v21 = vceq_s8(v20, v18);
  if (v21)
  {
LABEL_2:
    while (1)
    {
      v22 = (v19 + (__clz(__rbit64(v21)) >> 3)) & v17;
      v23 = result[3] + 32 * v22;
      _ZF = *v23 == v9 && *(v23 + 8) == v10;
      if (_ZF && *(v23 + 16) == v11 && *(v23 + 24) == v15)
      {
        break;
      }

      v21 &= ((v21 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v21)
      {
        goto LABEL_10;
      }
    }

    *a3 = _X9 + v22;
    *(a3 + 8) = v23;
    *(a3 + 16) = 0;
  }

  else
  {
LABEL_10:
    while (1)
    {
      v25 = vceq_s8(v20, 0x8080808080808080);
      if (v25)
      {
        break;
      }

      v3 += 8;
      v19 = (v3 + v19) & v17;
      v20 = *(_X9 + v19);
      v21 = vceq_s8(v20, v18);
      if (v21)
      {
        goto LABEL_2;
      }
    }

    v26 = result;
    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(result, v16, (v19 + (__clz(__rbit64(v25)) >> 3)) & v17, v3, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::tuple<int,long long,long long,int>>,absl::lts_20240722::hash_internal::Hash<std::tuple<int,long long,long long,int>>,std::equal_to<std::tuple<int,long long,long long,int>>,std::allocator<std::tuple<int,long long,long long,int>>>::GetPolicyFunctions(void)::value);
    v28 = v26[3] + 32 * result;
    *a3 = result + v26[2];
    *(a3 + 8) = v28;
    *(a3 + 16) = 1;
  }

  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::tuple<int,long long,long long,int>>,absl::lts_20240722::hash_internal::Hash<std::tuple<int,long long,long long,int>>,std::equal_to<std::tuple<int,long long,long long,int>>,std::allocator<std::tuple<int,long long,long long,int>>>::resize_impl(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8) & 1;
  v5 = 0;
  v2 = *(a1 + 16);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,32ul,false,false,8ul>(&v2, a1);
}

uint64_t absl::lts_20240722::container_internal::TypeErasedApplyToSlotFn<absl::lts_20240722::hash_internal::Hash<std::tuple<int,long long,long long,int>>,std::tuple<int,long long,long long,int>>(uint64_t a1, unsigned int *a2)
{
  v2 = *(a2 + 1) + ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2)));
  v3 = *(a2 + 2) + (((v2 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v2));
  v4 = (((v3 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v3)) + a2[6];
  return ((v4 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v4);
}

__n128 absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::tuple<int,long long,long long,int>>,absl::lts_20240722::hash_internal::Hash<std::tuple<int,long long,long long,int>>,std::equal_to<std::tuple<int,long long,long long,int>>,std::allocator<std::tuple<int,long long,long long,int>>>::transfer_slot_fn(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *a2 = *a3;
  a2[1] = v4;
  return result;
}

void *operations_research::sat::Model::Delete<operations_research::sat::Prober>::~Delete(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 8);
  *v1 = &unk_284F3DE98;
  v1[1] = 0;
  if (v2)
  {
    v3 = v1;
    operations_research::sat::Prober::~Prober(v2);
    MEMORY[0x23EED9460]();
    return v3;
  }

  return v1;
}

void operations_research::sat::Model::Delete<operations_research::sat::Prober>::~Delete(void *a1)
{
  v1 = a1[1];
  *a1 = &unk_284F3DE98;
  a1[1] = 0;
  if (v1)
  {
    operations_research::sat::Prober::~Prober(v1);
    MEMORY[0x23EED9460]();
  }

  JUMPOUT(0x23EED9460);
}

void operations_research::sat::Prober::~Prober(operations_research::sat::Prober *this)
{
  v2 = this + 312;
  v3 = *(this + 42);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,256,false>>::clear(this + 33);
  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,256,false>>::clear(this + 30);
  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,256,false>>::clear(this + 27);
  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,256,false>>::clear(this + 24);
  v4 = *(this + 21);
  if (v4)
  {
    *(this + 22) = v4;
    operator delete(v4);
  }

  v5 = *(this + 18);
  if (v5)
  {
    *(this + 19) = v5;
    operator delete(v5);
  }

  v6 = *(this + 15);
  if (v6)
  {
    *(this + 16) = v6;
    operator delete(v6);
  }

  v7 = *(this + 12);
  if (v7)
  {
    *(this + 13) = v7;
    operator delete(v7);
  }

  v8 = *(this + 9);
  if (v8)
  {
    *(this + 10) = v8;
    operator delete(v8);
  }
}

void absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,256,false>>::clear(unsigned __int8 ***a1)
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
  *a1 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,256,false>>::EmptyNode(void)::empty_node;
  a1[1] = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>,256,false>>::EmptyNode(void)::empty_node;
  a1[2] = 0;
}

__n128 std::__function::__func<operations_research::sat::CpModelPresolver::Probe(void)::$_0,std::allocator<operations_research::sat::CpModelPresolver::Probe(void)::$_0>,void ()(operations_research::sat::Literal)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F3DED0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<operations_research::sat::CpModelPresolver::Probe(void)::$_0,std::allocator<operations_research::sat::CpModelPresolver::Probe(void)::$_0>,void ()(operations_research::sat::Literal)>::operator()(uint64_t a1, int *a2)
{
  v2 = **(a1 + 8);
  v3 = *(v2 + 64);
  if (v3 < 1.0)
  {
    v5 = *(**(a1 + 16) + 72);
    if (*a2 >> 1 < ((*(**(a1 + 16) + 80) - v5) >> 2))
    {
      v6 = *(v5 + 4 * (*a2 >> 1));
      if ((v6 & 0x80000000) == 0)
      {
        v7 = *(a1 + 24);
        v8 = (*(*(v7 + 8) + 672) + 32 * v6);
        v9 = v8[1];
        *(v2 + 64) = v3 + (v9 >> 1) * 0.000000005;
        if (v9 >= 2)
        {
          v10 = v8 + 2;
          if (*v8 >= 2uLL)
          {
            v11 = v8[2];
            v10 = v8[3];
            if (*v11 <= -2)
            {
              do
              {
                v12 = __clz(__rbit64((*v11 | ~(*v11 >> 7)) & 0x101010101010101)) >> 3;
                v11 = (v11 + v12);
                v10 += v12;
              }

              while (*v11 < -1);
            }
          }

          else
          {
            v11 = &absl::lts_20240722::container_internal::kSooControl;
          }

          while (1)
          {
            if ((*v10 & 0x80000000) != 0)
            {
              goto LABEL_98;
            }

            v13 = (**(v7 + 8) + 48);
            if (*v13)
            {
              v13 = (*v13 + 8 * *v10 + 7);
            }

            v14 = *v13;
            v16 = (*v13 + 16);
            v15 = *v16;
            if (v15 >= 3)
            {
              v17 = 0;
              v18 = 0;
              v19 = 0;
              v20 = 0;
              v21 = 0;
              *(**(a1 + 8) + 64) = *(**(a1 + 8) + 64) + v15 * 0.000000005;
              v86 = v14;
              v22 = *(v14 + 24);
              v23 = &v22[v15];
              v24 = *(**(a1 + 16) + 48);
              v25 = *(*(a1 + 32) + 8);
              v26 = v22;
              while (1)
              {
                while (1)
                {
                  v27 = *v26;
                  v28 = ~v27 <= v27 ? *v26 : ~v27;
                  HIDWORD(v29) = *(v24 + 4 * v28);
                  LODWORD(v29) = *v26;
                  v30 = *(v25 + (((v29 >> 31) >> 3) & 0x1FFFFFFFFFFFFFF8));
                  v31 = (v29 >> 31) & 0x3F;
                  if (v28 == v6)
                  {
                    break;
                  }

                  if ((v30 >> (v31 ^ 1u)))
                  {
                    v20 = 1;
                    v18 = *v26++;
                    if (v26 == v23)
                    {
LABEL_55:
                      if ((v19 & 1) == 0)
                      {
                        goto LABEL_98;
                      }

                      v27 = v17;
                      if ((v20 & 1) == 0)
                      {
                        goto LABEL_25;
                      }

                      goto LABEL_57;
                    }
                  }

                  else
                  {
                    v21 |= v30 >> v31;
                    if (++v26 == v23)
                    {
                      goto LABEL_55;
                    }
                  }
                }

                if (((v30 >> v31) & 1) == 0)
                {
                  goto LABEL_98;
                }

                ++v26;
                v19 = 1;
                v17 = v27;
                if (v26 == v23)
                {
                  if ((v20 & 1) == 0)
                  {
LABEL_25:
                    if (v21)
                    {
                      v32 = 0;
                      v33 = 4 * v15;
                      for (i = v22; ; ++i)
                      {
                        v35 = *i;
                        if (~*i <= *i)
                        {
                          v36 = *i;
                        }

                        else
                        {
                          v36 = ~v35;
                        }

                        if (v36 == v6 || (HIDWORD(v37) = *(v24 + 4 * v36), LODWORD(v37) = *i, ((*(v25 + (((v37 >> 31) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v37 >> 31)) & 1) == 0))
                        {
                          v22[v32++] = v35;
                        }

                        v33 -= 4;
                        if (!v33)
                        {
                          if (*v16 > v32)
                          {
                            *v16 = v32;
                          }

                          operator new();
                        }
                      }
                    }

                    goto LABEL_98;
                  }

LABEL_57:
                  operations_research::sat::ConstraintProto::Clear(v86);
                  v55 = HIDWORD(*v16);
                  v56 = *v16;
                  if (v56 == v55)
                  {
                    google::protobuf::RepeatedField<int>::Grow(v16, v55, (v55 + 1));
                    v56 = *v16;
                  }

                  v57 = *(v86 + 3);
                  *(v86 + 4) = v56 + 1;
                  *(v57 + 4 * v56) = v27;
                  if (*(v86 + 15) == 4)
                  {
                    v58 = *(v86 + 6);
                  }

                  else
                  {
                    operations_research::sat::ConstraintProto::clear_constraint(v86);
                    *(v86 + 15) = 4;
                    v60 = *(v86 + 1);
                    if (v60)
                    {
                      v60 = *(v60 & 0xFFFFFFFFFFFFFFFELL);
                    }

                    v58 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v60);
                    *(v86 + 6) = v58;
                  }

                  v61 = v58[2];
                  v62 = v61;
                  if (v61 == HIDWORD(v61))
                  {
                    google::protobuf::RepeatedField<int>::Grow(v58 + 2, HIDWORD(v61), (HIDWORD(v61) + 1));
                    v62 = *(v58 + 4);
                  }

                  v63 = v58[3];
                  *(v58 + 4) = v62 + 1;
                  *(v63 + 4 * v62) = ~v18;
                  v64 = *(v7 + 8);
                  operator new();
                }
              }
            }

            if (*(v14 + 60) == 3)
            {
              v38 = *(*(v14 + 48) + 16);
              if (v38 >= 3)
              {
                *(**(a1 + 8) + 64) = *(**(a1 + 8) + 64) + v38 * 0.000000005;
                v39 = *(v14 + 60);
                v40 = &operations_research::sat::_BoolArgumentProto_default_instance_;
                if (v39 == 3)
                {
                  v40 = *(v14 + 48);
                }

                v41 = *(v40 + 4);
                if (v41)
                {
                  break;
                }
              }
            }

LABEL_98:
            v83 = *(v11 + 1);
            v11 = (v11 + 1);
            LOBYTE(v82) = v83;
            ++v10;
            if (v83 <= -2)
            {
              do
              {
                v84 = __clz(__rbit64((*v11 | ~(*v11 >> 7)) & 0x101010101010101)) >> 3;
                v11 = (v11 + v84);
                v10 += v84;
                v82 = *v11;
              }

              while (v82 < -1);
            }

            if (v82 == 255)
            {
              goto LABEL_104;
            }
          }

          v87 = v14;
          v42 = 0;
          v43 = 0;
          v44 = 0;
          v45 = 0;
          v46 = 0;
          v47 = v40[3];
          v48 = &v47[v41];
          do
          {
            while (1)
            {
              while (1)
              {
                v49 = *v47;
                v50 = ~v49 <= v49 ? *v47 : ~v49;
                HIDWORD(v51) = *(*(**(a1 + 16) + 48) + 4 * v50);
                LODWORD(v51) = *v47;
                v52 = *(*(*(a1 + 32) + 8) + (((v51 >> 31) >> 3) & 0x1FFFFFFFFFFFFFF8));
                v53 = (v51 >> 31) & 0x3F;
                if (v50 != v6)
                {
                  break;
                }

                if (((v52 >> (v53 ^ 1u)) & 1) == 0)
                {
                  goto LABEL_98;
                }

                ++v47;
                v46 = 1;
                v42 = v49;
                if (v47 == v48)
                {
                  if ((v45 & 1) == 0)
                  {
                    goto LABEL_52;
                  }

LABEL_63:
                  if (v39 == 3)
                  {
                    v59 = *(v87 + 6);
                  }

                  else
                  {
                    operations_research::sat::ConstraintProto::clear_constraint(v87);
                    *(v87 + 15) = 3;
                    v65 = *(v87 + 1);
                    if (v65)
                    {
                      v65 = *(v65 & 0xFFFFFFFFFFFFFFFELL);
                    }

                    v59 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v65);
                    *(v87 + 6) = v59;
                  }

                  *(v59 + 4) = 0;
                  v66 = *(v59 + 5);
                  if (v66)
                  {
                    v67 = v59[3];
                    v68 = 1;
                    *(v59 + 4) = 1;
                    *v67 = v49;
                    if (v66 != 1)
                    {
                      goto LABEL_79;
                    }

LABEL_103:
                    google::protobuf::RepeatedField<int>::Grow(v59 + 2, v66, (v66 + 1));
                    v68 = *(v59 + 4);
                    v67 = v59[3];
                  }

                  else
                  {
                    google::protobuf::RepeatedField<int>::Grow(v59 + 2, v66, 1);
                    v85 = *(v59 + 4);
                    v66 = *(v59 + 5);
                    v67 = v59[3];
                    v68 = v85 + 1;
                    *(v59 + 4) = v85 + 1;
                    v67[v85] = v49;
                    if (v85 + 1 == v66)
                    {
                      goto LABEL_103;
                    }
                  }

LABEL_79:
                  *(v59 + 4) = v68 + 1;
                  v67[v68] = v43;
                  v69 = *(v7 + 8);
                  operator new();
                }
              }

              if ((v52 >> v53))
              {
                break;
              }

              v44 |= v52 >> (v53 ^ 1u);
              if (++v47 == v48)
              {
                goto LABEL_61;
              }
            }

            v45 = 1;
            v43 = *v47++;
          }

          while (v47 != v48);
LABEL_61:
          if ((v46 & 1) == 0)
          {
            goto LABEL_98;
          }

          v49 = v42;
          if (v45)
          {
            goto LABEL_63;
          }

LABEL_52:
          if ((v44 & 1) == 0)
          {
            goto LABEL_98;
          }

          if (v39 == 3)
          {
            v54 = *(v87 + 6);
          }

          else
          {
            operations_research::sat::ConstraintProto::clear_constraint(v87);
            *(v87 + 15) = 3;
            v70 = *(v87 + 1);
            if (v70)
            {
              v70 = *(v70 & 0xFFFFFFFFFFFFFFFELL);
            }

            v54 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v70);
            *(v87 + 6) = v54;
            v71 = &operations_research::sat::_BoolArgumentProto_default_instance_;
            if (*(v87 + 15) != 3)
            {
LABEL_84:
              v72 = *(v71 + 4);
              if (v72)
              {
                v73 = 0;
                v74 = v71[3];
                v75 = *(a1 + 32);
                v76 = 4 * v72;
                v77 = *(a1 + 16);
                do
                {
                  v78 = *v74;
                  if (~*v74 <= *v74)
                  {
                    v79 = *v74;
                  }

                  else
                  {
                    v79 = ~v78;
                  }

                  if (v79 == v6 || (HIDWORD(v80) = *(*(*v77 + 48) + 4 * v79), LODWORD(v80) = *v74, ((*(*(v75 + 8) + (((v80 >> 31) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> ((v80 >> 31) & 0x3F ^ 1)) & 1) == 0))
                  {
                    *(v54[3] + 4 * v73++) = v78;
                  }

                  ++v74;
                  v76 -= 4;
                }

                while (v76);
              }

              else
              {
                v73 = 0;
              }

              if (*(v54 + 4) > v73)
              {
                *(v54 + 4) = v73;
              }

              v81 = *(v7 + 8);
              operator new();
            }
          }

          v71 = v54;
          goto LABEL_84;
        }

LABEL_104:
        std::__sort<std::__less<int,int> &,int *>();
      }
    }
  }
}

void sub_23CACD0F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<operations_research::sat::CpModelPresolver::Probe(void)::$_0,std::allocator<operations_research::sat::CpModelPresolver::Probe(void)::$_0>,void ()(operations_research::sat::Literal)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat16CpModelPresolver5ProbeEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat16CpModelPresolver5ProbeEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat16CpModelPresolver5ProbeEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat16CpModelPresolver5ProbeEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

operations_research::sat::Inprocessing *operations_research::sat::Inprocessing::Inprocessing(operations_research::sat::Inprocessing *this, operations_research::sat::Model *a2)
{
  *this = operations_research::sat::Model::GetOrCreate<operations_research::sat::Trail>(a2) + 16;
  *(this + 1) = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(a2);
  *(this + 2) = operations_research::sat::Model::GetOrCreate<operations_research::sat::BinaryImplicationGraph>(a2);
  *(this + 3) = operations_research::sat::Model::GetOrCreate<operations_research::sat::ClauseManager>(a2);
  *(this + 4) = operations_research::sat::Model::GetOrCreate<operations_research::sat::Trail>(a2);
  *(this + 5) = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatDecisionPolicy>(a2);
  *(this + 6) = operations_research::sat::Model::GetOrCreate<operations_research::TimeLimit>(a2);
  *(this + 7) = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a2);
  *(this + 8) = operations_research::sat::Model::GetOrCreate<operations_research::sat::LinearProgrammingConstraintCollection>(a2);
  *(this + 9) = operations_research::sat::Model::GetOrCreate<operations_research::sat::StampingSimplifier>(a2);
  *(this + 10) = operations_research::sat::Model::GetOrCreate<operations_research::sat::BlockedClauseSimplifier>(a2);
  *(this + 11) = operations_research::sat::Model::GetOrCreate<operations_research::sat::BoundedVariableElimination>(a2);
  *(this + 12) = operations_research::sat::Model::GetOrCreate<operations_research::sat::PostsolveClauses>(a2);
  *(this + 13) = operations_research::sat::Model::GetOrCreate<operations_research::SolverLogger>(a2);
  *(this + 112) = 1;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 17) = a2;
  return this;
}

uint64_t operations_research::sat::Model::GetOrCreate<operations_research::sat::ClauseManager>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::ClauseManager>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::ClauseManager>(void)::d));
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
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::ClauseManager>(void)::d)
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
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::ClauseManager>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::ClauseManager>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
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

uint64_t operations_research::sat::Model::GetOrCreate<operations_research::sat::SatDecisionPolicy>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SatDecisionPolicy>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SatDecisionPolicy>(void)::d));
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
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::SatDecisionPolicy>(void)::d)
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
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::SatDecisionPolicy>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::SatDecisionPolicy>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
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

uint64_t operations_research::sat::Model::GetOrCreate<operations_research::sat::StampingSimplifier>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::StampingSimplifier>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::StampingSimplifier>(void)::d));
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
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::StampingSimplifier>(void)::d)
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
        operations_research::sat::Model::MyNew<operations_research::sat::StampingSimplifier>();
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
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::StampingSimplifier>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::StampingSimplifier>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
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

uint64_t operations_research::sat::Model::GetOrCreate<operations_research::sat::BlockedClauseSimplifier>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::BlockedClauseSimplifier>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::BlockedClauseSimplifier>(void)::d));
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
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::BlockedClauseSimplifier>(void)::d)
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
        operations_research::sat::Model::MyNew<operations_research::sat::BlockedClauseSimplifier>();
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
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::BlockedClauseSimplifier>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::BlockedClauseSimplifier>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
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

uint64_t operations_research::sat::Model::GetOrCreate<operations_research::sat::BoundedVariableElimination>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::BoundedVariableElimination>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::BoundedVariableElimination>(void)::d));
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
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::BoundedVariableElimination>(void)::d)
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
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::BoundedVariableElimination>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::BoundedVariableElimination>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
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

void *operations_research::sat::Model::Delete<operations_research::sat::ClauseManager>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F3DF60;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::ClauseManager>::~Delete(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_284F3DF60;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

void *operations_research::sat::Model::Delete<operations_research::sat::SatDecisionPolicy>::~Delete(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 8);
  *v1 = &unk_284F3DF98;
  v1[1] = 0;
  if (v2)
  {
    v3 = v1;
    operations_research::sat::SatDecisionPolicy::~SatDecisionPolicy(v2);
    MEMORY[0x23EED9460]();
    return v3;
  }

  return v1;
}

void operations_research::sat::Model::Delete<operations_research::sat::SatDecisionPolicy>::~Delete(void *a1)
{
  v1 = a1[1];
  *a1 = &unk_284F3DF98;
  a1[1] = 0;
  if (v1)
  {
    operations_research::sat::SatDecisionPolicy::~SatDecisionPolicy(v1);
    MEMORY[0x23EED9460]();
  }

  JUMPOUT(0x23EED9460);
}

void operations_research::sat::SatDecisionPolicy::~SatDecisionPolicy(operations_research::sat::SatDecisionPolicy *this)
{
  v2 = *(this + 51);
  if (v2)
  {
    *(this + 52) = v2;
    operator delete(v2);
  }

  v3 = *(this + 48);
  if (v3)
  {
    *(this + 49) = v3;
    operator delete(v3);
  }

  v4 = *(this + 42);
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(this + 39);
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(this + 36);
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(this + 32);
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(this + 29);
  if (v8)
  {
    operator delete(v8);
  }

  v9 = *(this + 26);
  if (v9)
  {
    *(this + 27) = v9;
    operator delete(v9);
  }

  v10 = *(this + 23);
  if (v10)
  {
    *(this + 24) = v10;
    operator delete(v10);
  }

  v11 = *(this + 20);
  if (v11)
  {
    *(this + 21) = v11;
    operator delete(v11);
  }

  v12 = *(this + 16);
  if (v12)
  {
    *(this + 17) = v12;
    operator delete(v12);
  }

  v13 = *(this + 12);
  if (v13)
  {
    *(this + 13) = v13;
    operator delete(v13);
  }

  v14 = *(this + 8);
  if (v14)
  {
    *(this + 9) = v14;
    operator delete(v14);
  }

  v15 = *(this + 5);
  if (v15)
  {
    *(this + 6) = v15;
    operator delete(v15);
  }
}

void *operations_research::sat::Model::Delete<operations_research::sat::StampingSimplifier>::~Delete(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 8);
  *v1 = &unk_284F3DFD0;
  v1[1] = 0;
  if (v2)
  {
    v3 = v1;
    operations_research::sat::StampingSimplifier::~StampingSimplifier(v2);
    MEMORY[0x23EED9460]();
    return v3;
  }

  return v1;
}

void operations_research::sat::Model::Delete<operations_research::sat::StampingSimplifier>::~Delete(void *a1)
{
  v1 = a1[1];
  *a1 = &unk_284F3DFD0;
  a1[1] = 0;
  if (v1)
  {
    operations_research::sat::StampingSimplifier::~StampingSimplifier(v1);
    MEMORY[0x23EED9460]();
  }

  JUMPOUT(0x23EED9460);
}

void operations_research::sat::StampingSimplifier::~StampingSimplifier(operations_research::sat::StampingSimplifier *this)
{
  v2 = *(this + 31);
  if (v2)
  {
    *(this + 32) = v2;
    operator delete(v2);
  }

  v3 = *(this + 28);
  if (v3)
  {
    *(this + 29) = v3;
    operator delete(v3);
  }

  v4 = *(this + 25);
  if (v4)
  {
    *(this + 26) = v4;
    operator delete(v4);
  }

  v5 = *(this + 22);
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(this + 19);
  if (v6)
  {
    *(this + 20) = v6;
    operator delete(v6);
  }

  v7 = *(this + 16);
  if (v7)
  {
    *(this + 17) = v7;
    operator delete(v7);
  }

  v8 = *(this + 13);
  if (v8)
  {
    *(this + 14) = v8;
    operator delete(v8);
  }

  v9 = *(this + 10);
  if (v9)
  {
    *(this + 11) = v9;
    operator delete(v9);
  }
}

void *operations_research::sat::Model::Delete<operations_research::sat::BlockedClauseSimplifier>::~Delete(void *result)
{
  *result = &unk_284F3E008;
  v1 = result[1];
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    std::default_delete<operations_research::sat::BlockedClauseSimplifier>::operator()[abi:ne200100]((result + 1), v1);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::BlockedClauseSimplifier>::~Delete(void *a1)
{
  *a1 = &unk_284F3E008;
  v2 = a1[1];
  a1[1] = 0;
  if (v2)
  {
    std::default_delete<operations_research::sat::BlockedClauseSimplifier>::operator()[abi:ne200100]((a1 + 1), v2);
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

void std::default_delete<operations_research::sat::BlockedClauseSimplifier>::operator()[abi:ne200100](uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2[23];
    if (v3)
    {
      v4 = a2[24];
      v5 = a2[23];
      if (v4 != v3)
      {
        v6 = a2[24];
        do
        {
          v8 = *(v6 - 24);
          v6 -= 24;
          v7 = v8;
          if (v8)
          {
            *(v4 - 16) = v7;
            operator delete(v7);
          }

          v4 = v6;
        }

        while (v6 != v3);
        v5 = a2[23];
      }

      a2[24] = v3;
      operator delete(v5);
    }

    v9 = a2[20];
    if (v9)
    {
      a2[21] = v9;
      operator delete(v9);
    }

    std::deque<int>::~deque[abi:ne200100]((a2 + 14));
    v10 = a2[11];
    if (v10)
    {
      operator delete(v10);
    }

    v11 = a2[8];
    if (v11)
    {
      operator delete(v11);
    }

    JUMPOUT(0x23EED9460);
  }
}

operations_research::sat::BoundedVariableElimination *operations_research::sat::BoundedVariableElimination::BoundedVariableElimination(operations_research::sat::BoundedVariableElimination *this, operations_research::sat::Model *a2)
{
  *this = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(a2);
  *(this + 1) = operations_research::sat::Model::GetOrCreate<operations_research::sat::Trail>(a2) + 16;
  *(this + 2) = operations_research::sat::Model::GetOrCreate<operations_research::sat::BinaryImplicationGraph>(a2);
  *(this + 3) = operations_research::sat::Model::GetOrCreate<operations_research::sat::ClauseManager>(a2);
  *(this + 4) = operations_research::sat::Model::GetOrCreate<operations_research::sat::PostsolveClauses>(a2);
  *(this + 5) = operations_research::sat::Model::GetOrCreate<operations_research::sat::Trail>(a2);
  v4 = operations_research::sat::Model::GetOrCreate<operations_research::TimeLimit>(a2);
  *(this + 136) = 0u;
  *(this + 6) = v4;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 14) = 0;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 46) = 0;
  std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::__append(this + 192, 1uLL);
  v5 = *(this + 27);
  if (*(this + 28) != v5)
  {
    *(this + 28) = v5;
  }

  *(this + 44) = 0;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 15) = 0u;
  return this;
}

void sub_23CACEC20(_Unwind_Exception *exception_object)
{
  v5 = v1[27];
  if (v5)
  {
    v1[28] = v5;
    operator delete(v5);
    v6 = *v2;
    if (!*v2)
    {
LABEL_3:
      v7 = v1[20];
      if (!v7)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
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

  v1[25] = v6;
  operator delete(v6);
  v7 = v1[20];
  if (!v7)
  {
LABEL_4:
    v8 = *v3;
    if (!*v3)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  v1[21] = v7;
  operator delete(v7);
  v8 = *v3;
  if (!*v3)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(v8);
  _Unwind_Resume(exception_object);
}

void *operations_research::sat::Model::Delete<operations_research::sat::BoundedVariableElimination>::~Delete(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 8);
  *v1 = &unk_284F3E040;
  v1[1] = 0;
  if (v2)
  {
    v3 = v1;
    operations_research::sat::BoundedVariableElimination::~BoundedVariableElimination(v2);
    MEMORY[0x23EED9460]();
    return v3;
  }

  return v1;
}

void operations_research::sat::Model::Delete<operations_research::sat::BoundedVariableElimination>::~Delete(void *a1)
{
  v1 = a1[1];
  *a1 = &unk_284F3E040;
  a1[1] = 0;
  if (v1)
  {
    operations_research::sat::BoundedVariableElimination::~BoundedVariableElimination(v1);
    MEMORY[0x23EED9460]();
  }

  JUMPOUT(0x23EED9460);
}

void operations_research::sat::BoundedVariableElimination::~BoundedVariableElimination(operations_research::sat::BoundedVariableElimination *this)
{
  v2 = *(this + 42);
  if (v2)
  {
    *(this + 43) = v2;
    operator delete(v2);
  }

  v3 = *(this + 39);
  if (v3)
  {
    v4 = *(this + 40);
    v5 = *(this + 39);
    if (v4 != v3)
    {
      v6 = *(this + 40);
      do
      {
        v8 = *(v6 - 24);
        v6 -= 24;
        v7 = v8;
        if (v8)
        {
          *(v4 - 16) = v7;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v3);
      v5 = *(this + 39);
    }

    *(this + 40) = v3;
    operator delete(v5);
  }

  v9 = *(this + 36);
  if (v9)
  {
    *(this + 37) = v9;
    operator delete(v9);
  }

  v10 = *(this + 33);
  if (v10)
  {
    *(this + 34) = v10;
    operator delete(v10);
  }

  v11 = *(this + 30);
  if (v11)
  {
    operator delete(v11);
  }

  v12 = *(this + 27);
  if (v12)
  {
    *(this + 28) = v12;
    operator delete(v12);
  }

  v13 = *(this + 24);
  if (v13)
  {
    *(this + 25) = v13;
    operator delete(v13);
  }

  v14 = *(this + 20);
  if (v14)
  {
    *(this + 21) = v14;
    operator delete(v14);
  }

  v15 = *(this + 17);
  if (v15)
  {
    operator delete(v15);
  }
}

void *operations_research::sat::Model::Delete<operations_research::sat::Inprocessing>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F3E078;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    MEMORY[0x23EED9460](v1, 0x1060C402409D54DLL);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::Inprocessing>::~Delete(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_284F3E078;
  a1[1] = 0;
  if (v2)
  {
    MEMORY[0x23EED9460](v2, 0x1060C402409D54DLL);
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

void operations_research::sat::BinaryImplicationGraph::ExtractAllBinaryClauses<operations_research::sat::SatPresolver>(uint64_t a1, uint64_t a2)
{
  v35 = xmmword_23CE306D0;
  v3 = *(a1 + 200);
  v2 = *(a1 + 208);
  if (((v2 - v3) >> 5) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = (v3 + 32 * v6);
      v10 = *v7;
      v9 = (v7 + 1);
      v8 = v10;
      if (v10)
      {
        v9 = *v9;
      }

      if ((v8 & 0x7FFFFFFFFFFFFFFELL) != 0)
      {
        v11 = v6 ^ 1;
        v12 = &v9[v8 >> 1];
        do
        {
          v25 = *v9;
          if (v11 < v25)
          {
            if (v35 > 1)
            {
              v22 = 0;
              _X9 = v36;
              __asm { PRFM            #4, [X9] }

              v13 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v11) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v11));
              v31 = (((v13 + v25) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v13 + v25));
              v23 = (v31 >> 7) ^ (v36 >> 12);
              v32 = vdup_n_s8(v31 & 0x7F);
              while (1)
              {
                v14 = v23 & v35;
                v15 = *(v36 + v14);
                v16 = vceq_s8(v15, v32);
                if (v16)
                {
                  break;
                }

LABEL_14:
                v21 = vceq_s8(v15, 0x8080808080808080);
                if (v21)
                {
                  inserted = absl::lts_20240722::container_internal::PrepareInsertNonSoo(&v35, v31, (v14 + (__clz(__rbit64(v21)) >> 3)) & v35, v22, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>>::GetPolicyFunctions(void)::value);
                  v34 = (v37 + 8 * inserted);
                  goto LABEL_27;
                }

                v22 += 8;
                v23 = v22 + v14;
              }

              while (1)
              {
                v17 = (v37 + 8 * ((v14 + (__clz(__rbit64(v16)) >> 3)) & v35));
                v19 = *v17;
                v18 = v17[1];
                if (v19 == v11 && v18 == v25)
                {
                  break;
                }

                v16 &= ((v16 & 0x8080808080808080) - 1) & 0x8080808080808080;
                if (!v16)
                {
                  goto LABEL_14;
                }
              }
            }

            else if (*(&v35 + 1) > 1uLL)
            {
              if (v36 != v11 || HIDWORD(v36) != v25)
              {
                absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>,operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>>::resize_impl(&v35, 3);
              }
            }

            else
            {
              *(&v35 + 1) = 2;
              v34 = &v36;
LABEL_27:
              *v34 = v11 | (v25 << 32);
              operations_research::sat::SatPresolver::AddBinaryClause(a2, v6 ^ 1, v25);
            }
          }

          ++v9;
        }

        while (v9 != v12);
        v3 = *(a1 + 200);
        v2 = *(a1 + 208);
      }

      ++v6;
    }

    while (v6 < ((v2 - v3) >> 5));
    if (v35 >= 2)
    {
      operator delete((v36 - (BYTE8(v35) & 1) - 8));
    }
  }
}