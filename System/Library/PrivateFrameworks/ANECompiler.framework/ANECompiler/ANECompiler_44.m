__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::NonOverlappingRectanglesEnergyPropagator::GeneralizeExplanation(operations_research::sat::NonOverlappingRectanglesEnergyPropagator::Conflict const&)::$_1 &,operations_research::sat::OrthogonalPackingResult::Item *,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 result)
{
  v5 = a2[1].n128_u64[0] * a2->n128_u64[1];
  v6 = a3[1].n128_u64[0] * a3->n128_u64[1];
  if (v5 <= (a1[1].n128_u64[0] * a1->n128_u64[1]))
  {
    if (v6 > v5)
    {
      v9 = a2[1].n128_u64[0];
      result = *a2;
      v10 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v10;
      *a3 = result;
      a3[1].n128_u64[0] = v9;
      if ((a2[1].n128_u64[0] * a2->n128_u64[1]) > (a1[1].n128_u64[0] * a1->n128_u64[1]))
      {
        v11 = a1[1].n128_u64[0];
        result = *a1;
        v12 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v12;
        *a2 = result;
        a2[1].n128_u64[0] = v11;
      }
    }
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a1[1].n128_u64[0];
      result = *a1;
      v8 = a3[1].n128_u64[0];
      *a1 = *a3;
      a1[1].n128_u64[0] = v8;
LABEL_9:
      *a3 = result;
      a3[1].n128_u64[0] = v7;
      goto LABEL_10;
    }

    v13 = a1[1].n128_u64[0];
    result = *a1;
    v14 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v14;
    *a2 = result;
    a2[1].n128_u64[0] = v13;
    if ((a3[1].n128_u64[0] * a3->n128_u64[1]) > (a2[1].n128_u64[0] * a2->n128_u64[1]))
    {
      v7 = a2[1].n128_u64[0];
      result = *a2;
      v15 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v15;
      goto LABEL_9;
    }
  }

LABEL_10:
  if ((a4[1].n128_u64[0] * a4->n128_u64[1]) > (a3[1].n128_u64[0] * a3->n128_u64[1]))
  {
    v16 = a3[1].n128_u64[0];
    result = *a3;
    v17 = a4[1].n128_u64[0];
    *a3 = *a4;
    a3[1].n128_u64[0] = v17;
    *a4 = result;
    a4[1].n128_u64[0] = v16;
    if ((a3[1].n128_u64[0] * a3->n128_u64[1]) > (a2[1].n128_u64[0] * a2->n128_u64[1]))
    {
      v18 = a2[1].n128_u64[0];
      result = *a2;
      v19 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v19;
      *a3 = result;
      a3[1].n128_u64[0] = v18;
      if ((a2[1].n128_u64[0] * a2->n128_u64[1]) > (a1[1].n128_u64[0] * a1->n128_u64[1]))
      {
        v20 = a1[1].n128_u64[0];
        result = *a1;
        v21 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v21;
        *a2 = result;
        a2[1].n128_u64[0] = v20;
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::NonOverlappingRectanglesEnergyPropagator::GeneralizeExplanation(operations_research::sat::NonOverlappingRectanglesEnergyPropagator::Conflict const&)::$_1 &,operations_research::sat::OrthogonalPackingResult::Item *>(uint64_t a1, void *a2, __n128 a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v20 = (a2 - 3);
      v21 = *(a1 + 40) * *(a1 + 32);
      v22 = *(a2 - 1) * *(a2 - 2);
      if (v21 <= *(a1 + 16) * *(a1 + 8))
      {
        if (v22 > v21)
        {
          v32 = *(a1 + 40);
          v33 = *(a1 + 24);
          v34 = *(a2 - 1);
          *(a1 + 24) = *v20;
          *(a1 + 40) = v34;
          *v20 = v33;
          *(a2 - 1) = v32;
          if (*(a1 + 40) * *(a1 + 32) > *(a1 + 16) * *(a1 + 8))
          {
            v35 = *(a1 + 16);
            v36 = *a1;
            *a1 = *(a1 + 24);
            *(a1 + 16) = *(a1 + 40);
            *(a1 + 24) = v36;
            *(a1 + 40) = v35;
          }
        }

        return 1;
      }

      if (v22 <= v21)
      {
        v42 = *(a1 + 16);
        v43 = *a1;
        *a1 = *(a1 + 24);
        *(a1 + 24) = v43;
        v44 = *(a1 + 32);
        *(a1 + 16) = *(a1 + 40);
        *(a1 + 40) = v42;
        if (*(a2 - 1) * *(a2 - 2) <= *(a1 + 40) * v44)
        {
          return 1;
        }

        v23 = *(a1 + 40);
        v24 = *(a1 + 24);
        v45 = *(a2 - 1);
        *(a1 + 24) = *v20;
        *(a1 + 40) = v45;
      }

      else
      {
        v23 = *(a1 + 16);
        v24 = *a1;
        v25 = *(a2 - 1);
        *a1 = *v20;
        *(a1 + 16) = v25;
      }

      *v20 = v24;
      *(a2 - 1) = v23;
      return 1;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::NonOverlappingRectanglesEnergyPropagator::GeneralizeExplanation(operations_research::sat::NonOverlappingRectanglesEnergyPropagator::Conflict const&)::$_1 &,operations_research::sat::OrthogonalPackingResult::Item *,0>(a1, (a1 + 24), (a1 + 48), (a1 + 72), a3);
        if (*(a2 - 1) * *(a2 - 2) > *(a1 + 88) * *(a1 + 80))
        {
          v9 = *(a1 + 88);
          v10 = *(a1 + 72);
          v11 = *(a2 - 1);
          *(a1 + 72) = *(a2 - 3);
          *(a1 + 88) = v11;
          *(a2 - 3) = v10;
          *(a2 - 1) = v9;
          if (*(a1 + 88) * *(a1 + 80) > *(a1 + 64) * *(a1 + 56))
          {
            v12 = *(a1 + 48);
            *(a1 + 48) = *(a1 + 72);
            v14 = *(a1 + 56);
            v13 = *(a1 + 64);
            *(a1 + 64) = *(a1 + 88);
            *(a1 + 72) = v12;
            *(a1 + 88) = v13;
            if (*(a1 + 64) * v14 > *(a1 + 40) * *(a1 + 32))
            {
              v15 = *(a1 + 24);
              *(a1 + 24) = *(a1 + 48);
              v17 = *(a1 + 32);
              v16 = *(a1 + 40);
              *(a1 + 40) = *(a1 + 64);
              *(a1 + 48) = v15;
              *(a1 + 64) = v16;
              if (*(a1 + 40) * v17 > *(a1 + 16) * *(a1 + 8))
              {
                v18 = *(a1 + 16);
                v19 = *a1;
                *a1 = *(a1 + 24);
                *(a1 + 16) = *(a1 + 40);
                *(a1 + 24) = v19;
                *(a1 + 40) = v18;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::NonOverlappingRectanglesEnergyPropagator::GeneralizeExplanation(operations_research::sat::NonOverlappingRectanglesEnergyPropagator::Conflict const&)::$_1 &,operations_research::sat::OrthogonalPackingResult::Item *,0>(a1, (a1 + 24), (a1 + 48), (a2 - 3), a3);
    return 1;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    if (*(a2 - 1) * *(a2 - 2) > *(a1 + 16) * *(a1 + 8))
    {
      v4 = *(a1 + 16);
      v5 = *a1;
      v6 = *(a2 - 1);
      *a1 = *(a2 - 3);
      *(a1 + 16) = v6;
      *(a2 - 3) = v5;
      *(a2 - 1) = v4;
    }

    return 1;
  }

LABEL_17:
  v26 = (a1 + 48);
  v27 = *(a1 + 40) * *(a1 + 32);
  v28 = *(a1 + 16) * *(a1 + 8);
  v29 = *(a1 + 64) * *(a1 + 56);
  if (v27 <= v28)
  {
    if (v29 > v27)
    {
      v37 = *(a1 + 24);
      *(a1 + 24) = *v26;
      v39 = *(a1 + 32);
      v38 = *(a1 + 40);
      *(a1 + 40) = *(a1 + 64);
      *v26 = v37;
      *(a1 + 64) = v38;
      if (*(a1 + 40) * v39 > v28)
      {
        v40 = *(a1 + 16);
        v41 = *a1;
        *a1 = *(a1 + 24);
        *(a1 + 16) = *(a1 + 40);
        *(a1 + 24) = v41;
        *(a1 + 40) = v40;
      }
    }

    goto LABEL_34;
  }

  if (v29 > v27)
  {
    v30 = *(a1 + 16);
    v31 = *a1;
    *a1 = *v26;
    *(a1 + 16) = *(a1 + 64);
LABEL_33:
    *v26 = v31;
    *(a1 + 64) = v30;
    goto LABEL_34;
  }

  v47 = *(a1 + 16);
  v48 = *a1;
  *a1 = *(a1 + 24);
  *(a1 + 24) = v48;
  v49 = *(a1 + 32);
  *(a1 + 16) = *(a1 + 40);
  *(a1 + 40) = v47;
  if (v29 > *(a1 + 40) * v49)
  {
    v30 = *(a1 + 40);
    v31 = *(a1 + 24);
    *(a1 + 24) = *v26;
    *(a1 + 40) = *(a1 + 64);
    goto LABEL_33;
  }

LABEL_34:
  v50 = (a1 + 72);
  if ((a1 + 72) == a2)
  {
LABEL_44:
    v59 = 1;
  }

  else
  {
    v51 = 0;
    v52 = 0;
    while (1)
    {
      v53 = v50[1];
      v54 = v50[2];
      if (v54 * v53 > v26[2] * v26[1])
      {
        break;
      }

LABEL_37:
      v26 = v50;
      v51 += 24;
      v50 += 3;
      if (v50 == a2)
      {
        goto LABEL_44;
      }
    }

    v55 = *v50;
    v56 = v51;
    do
    {
      v57 = a1 + v56;
      *(v57 + 72) = *(a1 + v56 + 48);
      *(v57 + 88) = *(a1 + v56 + 64);
      if (v56 == -48)
      {
        *a1 = v55;
        *(a1 + 8) = v53;
        *(a1 + 16) = v54;
        if (++v52 != 8)
        {
          goto LABEL_37;
        }

        goto LABEL_43;
      }

      v56 -= 24;
    }

    while (v54 * v53 > *(v57 + 40) * *(v57 + 32));
    v58 = a1 + v56;
    *(v58 + 72) = v55;
    *(v58 + 80) = v53;
    *(a1 + v56 + 88) = v54;
    if (++v52 != 8)
    {
      goto LABEL_37;
    }

LABEL_43:
    v59 = 0;
    LODWORD(v50) = v50 + 3 == a2;
  }

  return (v59 | v50) & 1;
}

uint64_t absl::lts_20240722::container_internal::TypeErasedApplyToSlotFn<absl::lts_20240722::hash_internal::Hash<absl::lts_20240722::Span<int>>,absl::lts_20240722::Span<int>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const unint64_t *a5)
{
  v5 = *(a2 + 8);
  v6 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, *a2, 4 * v5, a4, a5);
  return (((v6 + v5) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v6 + v5));
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<absl::lts_20240722::Span<int>>,absl::lts_20240722::hash_internal::Hash<absl::lts_20240722::Span<int>>,std::equal_to<absl::lts_20240722::Span<int>>,std::allocator<absl::lts_20240722::Span<int>>>::resize_impl(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const unint64_t *a5)
{
  v7 = *a1;
  v9 = *a1 < 2uLL && *(a1 + 8) > 1uLL;
  if (v9)
  {
    absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, *(a1 + 16), 4 * *(a1 + 24), a4, a5);
    v11 = *a1;
    v10 = *(a1 + 8);
  }

  else
  {
    v10 = *(a1 + 8);
    v11 = *a1;
  }

  v13 = v11;
  v14 = v10 & 1;
  v15 = v7 < 2;
  v16 = v9;
  v12 = *(a1 + 16);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,16ul,true,true,8ul>(&v12, a1);
}

void operations_research::sat::GenerateNoOverlap2dEnergyCut(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, const void *a5, size_t a6, void *a7, uint64_t **a8, void *a9, void *a10, uint64_t a11)
{
  v153 = 0;
  v154 = 0;
  v155 = 0;
  if ((a4 & 0x3FFFFFFFFFFFFFFFLL) == 0)
  {
    return;
  }

  v11 = a8;
  v127 = a8[34];
  v15 = 4 * a4;
  do
  {
    v16 = *a3;
    v17 = (a10[16] + 24 * v16);
    v18 = *(v17 + 2);
    if (*v17 != -1)
    {
      v18 -= *(*(a10[4] + 40) + ((8 * *v17) ^ 8)) * *(v17 + 1);
    }

    if (v18)
    {
      v19 = (a9[16] + 24 * v16);
      v20 = *(v19 + 2);
      if (*v19 != -1)
      {
        v20 -= *(*(a9[4] + 40) + ((8 * *v19) ^ 8)) * *(v19 + 1);
      }

      if (v20)
      {
        v21 = a9[29];
        *v145 = *(a9[30] + 8 * v16);
        v22 = a9[31];
        *&v145[8] = -*(a9[32] + 8 * v16);
        *&v145[16] = *(v22 + 8 * v16);
        *&v145[24] = -*(a9[33] + 8 * v16);
        *&v145[32] = *(v21 + 8 * v16);
        memset(&v145[40], 0, 32);
        memset(v146, 0, sizeof(v146));
        *&v147[8] = 0;
        *&v147[16] = 0;
        *v147 = -1;
        *&v147[24] = -1;
        v152 = 0;
        v148 = 0u;
        v149 = 0u;
        v150 = 0u;
        memset(v151, 0, 17);
        *&v145[40] = *(a10[30] + 8 * v16);
        *&v145[48] = -*(a10[33] + 8 * v16);
        v23 = *(v17 + 2);
        *v147 = *v17;
        *&v147[16] = v23;
        v24 = a1 + 24 * v16;
        if (v146 != v24)
        {
          std::vector<operations_research::sat::OrthogonalPackingResult::Item>::__assign_with_size[abi:ne200100]<operations_research::sat::OrthogonalPackingResult::Item*,operations_research::sat::OrthogonalPackingResult::Item*>(v146, *v24, *(v24 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v24 + 8) - *v24) >> 3));
        }

        LODWORD(v25) = *(a9[19] + 4 * v16);
        if (v25 == -1 || ((*(*(a9[3] + 24) + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v25) & 1) != 0)
        {
          v25 = *(a10[19] + 4 * v16);
          if (v25 == -1)
          {
            LODWORD(v25) = -1;
          }

          else if ((*(*(a10[3] + 24) + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v25))
          {
            LODWORD(v25) = -1;
          }
        }

        *&v147[24] = v25;
        *&v145[56] = *(a10[29] + 8 * v16);
        *&v145[64] = *(*(a11 + 64) + 8 * v16);
        v151[16] = (*(*(a11 + 112) + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v16) & 1;
        v26 = a9[16] + 24 * v16;
        v27 = *(v26 + 16);
        v134 = *v26;
        v135 = v27;
        if (operations_research::sat::DiffnEnergyEvent::FillEnergyLp(v145, &v134, v127, a7))
        {
          v28 = v154;
          if (v154 >= v155)
          {
            v34 = std::vector<operations_research::sat::DiffnEnergyEvent>::__emplace_back_slow_path<operations_research::sat::DiffnEnergyEvent const&>(&v153, v145);
          }

          else
          {
            *v154 = *v145;
            v29 = *&v145[16];
            v30 = *&v145[32];
            v31 = *&v145[48];
            v28[8] = *&v145[64];
            *(v28 + 2) = v30;
            *(v28 + 3) = v31;
            v28[9] = 0.0;
            *(v28 + 1) = v29;
            v28[10] = 0.0;
            v28[11] = 0.0;
            if (v146[1] != v146[0])
            {
              if (0xAAAAAAAAAAAAAAABLL * ((v146[1] - v146[0]) >> 3) < 0xAAAAAAAAAAAAAABLL)
              {
                operator new();
              }

              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            v32 = *v147;
            *(v28 + 108) = *&v147[12];
            *(v28 + 6) = v32;
            operations_research::sat::LinearExpression::LinearExpression(v28 + 16, &v148);
            v33 = *&v151[8];
            *(v28 + 25) = v152;
            *(v28 + 23) = v33;
            v34 = (v28 + 26);
            v11 = a8;
          }

          v154 = v34;
        }

        if (*(&v149 + 1))
        {
          *&v150 = *(&v149 + 1);
          operator delete(*(&v149 + 1));
        }

        if (v148)
        {
          *(&v148 + 1) = v148;
          operator delete(v148);
        }

        if (v146[0])
        {
          v146[1] = v146[0];
          operator delete(v146[0]);
        }
      }
    }

    ++a3;
    v15 -= 4;
  }

  while (v15);
  v36 = v153;
  v35 = v154;
  if (v153 == v154)
  {
    goto LABEL_160;
  }

  v37 = 0.0;
  v38 = v153;
  do
  {
    v39 = *(v38 + 6) + *(v38 + 5);
    v40 = v39;
    if (v39 < 0x8000000000000003)
    {
      v40 = -INFINITY;
    }

    if (v39 > 0x7FFFFFFFFFFFFFFDLL)
    {
      v40 = INFINITY;
    }

    v37 = v37 + v40;
    v38 += 26;
  }

  while (v38 != v154);
  v41 = 0x4EC4EC4EC4EC4EC5 * ((v154 - v153) >> 4);
  v42 = vdupq_lane_s64(COERCE__INT64(v37 * 0.5 / v41), 0);
  v43 = vdupq_n_s64(0x7FFFFFFFFFFFFFFDuLL);
  v44 = vdupq_n_s64(0x8000000000000003);
  v45 = vdupq_n_s64(0xFFF0000000000000);
  v46 = vdupq_n_s64(0x7FF0000000000000uLL);
  v47 = v153;
  do
  {
    v47[25] = vaddvq_f64(vabdq_f64(vbslq_s8(vcgtq_s64(*(v47 + 5), v43), v46, vbslq_s8(vcgtq_s64(v44, *(v47 + 5)), v45, vcvtq_f64_s64(*(v47 + 5)))), v42));
    v47 += 26;
  }

  while (v47 != v35);
  *v145 = 5;
  memset(&v145[8], 0, 48);
  std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_0 &,operations_research::sat::DiffnEnergyEvent *,false>(v36, v35, 126 - 2 * __clz(v41), 1, 0.0);
  v48 = 0.0;
  if (v153 != v154)
  {
    v49 = v153;
    do
    {
      v48 = v48 + v49[23];
      v49 += 26;
    }

    while (v49 != v154);
  }

  v141 = 0;
  v142 = 0;
  v144 = 0;
  v143 = 0;
  if ((0x4EC4EC4EC4EC4EC5 * ((v154 - v153) >> 4)) < 2)
  {
    goto LABEL_143;
  }

  v50 = 0;
  v122 = (a7 + 5);
  v51 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d));
  v52 = vdup_n_s8(v51 & 0x7F);
  v121 = v51 >> 7;
  v53 = 1;
  while (2)
  {
    v55 = v53;
    operations_research::sat::CapacityProfile::Clear(&v141);
    v56 = &v153[26 * v50];
    v139 = 0;
    v140 = 0;
    v138 = 0;
    *&v134 = &v138;
    BYTE8(v134) = 0;
    if (v154 != v56)
    {
      if ((0x4EC4EC4EC4EC4EC5 * ((v154 - v56) >> 4)) < 0x13B13B13B13B13CLL)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v128 = v55;
    std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_1 &,operations_research::sat::DiffnEnergyEvent *,false>(0, 0, 0, 1);
    v57 = v138;
    if (v139 == v138)
    {
      goto LABEL_125;
    }

    v58 = 0;
    v129 = 0;
    v59 = 0;
    v60 = 0x7FFFFFFFFFFFFFFELL;
    v61 = 0.0;
    v62 = -1;
    v63 = 1;
    v64 = 1.0001;
    v65 = 0x8000000000000002;
    v66 = 0x8000000000000002;
    v67 = 0x7FFFFFFFFFFFFFFELL;
    do
    {
      v68 = &v57[208 * v58];
      v69 = *(v68 + 23);
      if (*v68 < v67)
      {
        v67 = *v68;
      }

      v70 = *(v68 + 3);
      if (v66 <= v70)
      {
        v66 = *(v68 + 3);
      }

      v71 = *(v68 + 5);
      v72 = *(v68 + 6);
      if (v71 < v60)
      {
        v60 = *(v68 + 5);
      }

      if (v65 <= v72)
      {
        v65 = *(v68 + 6);
      }

      operations_research::sat::CapacityProfile::AddRectangle(&v141, *v68, v70, v71, v72);
      v61 = v61 + v69;
      v58 = v63;
      if (0x4EC4EC4EC4EC4EC5 * ((v139 - v138) >> 4) > v63)
      {
        v74 = (v138 + 208 * v63);
        if (*v74 >= v67 && v74[3] <= v66 && v74[5] >= v60 && v74[6] <= v65)
        {
          goto LABEL_54;
        }
      }

      BoundingArea = operations_research::sat::CapacityProfile::GetBoundingArea(&v141, v73);
      v76 = (v65 - v60) * (v66 - v67);
      v77 = BoundingArea < v76;
      if (v76 >= BoundingArea)
      {
        v76 = BoundingArea;
      }

      v78 = v76;
      if (v76 < 0x8000000000000003)
      {
        v78 = -INFINITY;
      }

      if (v76 > 0x7FFFFFFFFFFFFFFDLL)
      {
        v78 = INFINITY;
      }

      if (v78 >= v48)
      {
        break;
      }

      v79 = v61 / v78;
      if (v79 > v64)
      {
        v62 = v63 - 1;
        v59 = v76;
        v129 = v77;
        v64 = v79;
      }

LABEL_54:
      v57 = v138;
      ++v63;
    }

    while (0x4EC4EC4EC4EC4EC5 * ((v139 - v138) >> 4) > v58);
    v11 = a8;
    if (v62 != -1)
    {
      v80 = a7[3];
      if (v80 > 1)
      {
        v82 = 0;
        _X9 = *v122;
        __asm { PRFM            #4, [X9] }

        v89 = (v121 ^ (*v122 >> 12)) & v80;
        v90 = *(*v122 + v89);
        v91 = vceq_s8(v90, v52);
        if (!v91)
        {
          goto LABEL_86;
        }

LABEL_83:
        v92 = a7[6];
        while (1)
        {
          v93 = (v89 + (__clz(__rbit64(v91)) >> 3)) & v80;
          if (*(v92 + 16 * v93) == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
          {
            break;
          }

          v91 &= ((v91 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v91)
          {
LABEL_86:
            while (!*&vceq_s8(v90, 0x8080808080808080))
            {
              v82 += 8;
              v89 = (v82 + v89) & v80;
              v90 = *&_X9[v89];
              v91 = vceq_s8(v90, v52);
              if (v91)
              {
                goto LABEL_83;
              }
            }

            goto LABEL_90;
          }
        }

        v94 = (v92 + 16 * v93);
        if (&_X9[v93])
        {
          goto LABEL_81;
        }

LABEL_90:
        v81 = 0;
      }

      else
      {
        if (a7[4] < 2uLL)
        {
          goto LABEL_90;
        }

        v94 = *v122;
        if (*v122 == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
        {
          v94 = v122;
        }

        v109 = &absl::lts_20240722::container_internal::kSooControl;
        if (*v122 != &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
        {
          v109 = 0;
        }

        if (!v109)
        {
          goto LABEL_90;
        }

LABEL_81:
        v81 = *(v94 + 1);
      }

      *&v134 = v81;
      *(&v134 + 1) = 0x8000000000000002;
      v135 = v59;
      v136 = 0u;
      v137 = 0u;
      if (v62 < 0)
      {
        v98 = 0;
        v97 = 0;
        v96 = 0;
        if (a6 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_174;
        }
      }

      else
      {
        v95 = 0;
        v96 = 0;
        v97 = 0;
        v98 = 0;
        do
        {
          v99 = v138 + 208 * v95;
          operations_research::sat::LinearConstraintBuilder::AddLinearExpression(&v134, (v99 + 128));
          v98 |= *(v99 + 30) != -1;
          v97 |= v99[192];
          v96 |= *(v99 + 8) > *(v99 + 7) * *(v99 + 4);
          ++v95;
        }

        while (v95 <= v62);
        if (a6 > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_174:
          std::string::__throw_length_error[abi:ne200100]();
        }
      }

      if (a6 >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = a6;
      if (a6)
      {
        memmove(&__dst, a5, a6);
        __dst.__r_.__value_.__s.__data_[a6] = 0;
        if (v98)
        {
LABEL_104:
          std::string::append(&__dst, "_optional");
        }
      }

      else
      {
        __dst.__r_.__value_.__s.__data_[0] = 0;
        if (v98)
        {
          goto LABEL_104;
        }
      }

      if (v97)
      {
        std::string::append(&__dst, "_quadratic");
      }

      if (v96)
      {
        std::string::append(&__dst, "_energy");
      }

      if (v129)
      {
        std::string::append(&__dst, "_precise");
      }

      operations_research::sat::LinearConstraintBuilder::Build(&v134, v130);
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst.__r_.__value_.__r.__words[0];
      }

      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __dst.__r_.__value_.__l.__size_;
      }

      operations_research::sat::TopNCuts::AddCut(v145, v130, p_dst, size, v127);
      v102 = v132;
      v132 = 0;
      if (v102)
      {
        MEMORY[0x23EED9440](v102, 0x1000C8000313F17);
      }

      v103 = v131;
      v131 = 0;
      if (v103)
      {
        MEMORY[0x23EED9440](v103, 0x1000C8052888210);
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        v104 = *(&v136 + 1);
        if (*(&v136 + 1))
        {
LABEL_123:
          *&v137 = v104;
          operator delete(v104);
        }
      }

      else
      {
        v104 = *(&v136 + 1);
        if (*(&v136 + 1))
        {
          goto LABEL_123;
        }
      }
    }

    v57 = v138;
LABEL_125:
    if (v57)
    {
      v105 = v139;
      v54 = v57;
      if (v139 != v57)
      {
        do
        {
          v106 = *(v105 - 7);
          if (v106)
          {
            *(v105 - 6) = v106;
            operator delete(v106);
          }

          v107 = *(v105 - 10);
          if (v107)
          {
            *(v105 - 9) = v107;
            operator delete(v107);
          }

          v108 = *(v105 - 17);
          if (v108)
          {
            *(v105 - 16) = v108;
            operator delete(v108);
          }

          v105 -= 208;
        }

        while (v105 != v57);
        v54 = v138;
      }

      v139 = v57;
      operator delete(v54);
    }

    v50 = v128;
    v53 = v128 + 1;
    if (0x4EC4EC4EC4EC4EC5 * ((v154 - v153) >> 4) > (v128 + 1))
    {
      continue;
    }

    break;
  }

LABEL_143:
  operations_research::sat::TopNCuts::TransferToManager(v145, v11);
  if (v141)
  {
    v142 = v141;
    operator delete(v141);
  }

  v110 = *&v145[32];
  if (*&v145[32])
  {
    v111 = *&v145[40];
    v112 = *&v145[32];
    if (*&v145[40] != *&v145[32])
    {
      do
      {
        v113 = *(v111 - 8);
        *(v111 - 8) = 0;
        if (v113)
        {
          MEMORY[0x23EED9440](v113, 0x1000C8000313F17);
        }

        v114 = *(v111 - 16);
        *(v111 - 16) = 0;
        if (v114)
        {
          MEMORY[0x23EED9440](v114, 0x1000C8052888210);
        }

        v115 = (v111 - 64);
        if (*(v111 - 41) < 0)
        {
          operator delete(*v115);
        }

        v111 -= 64;
      }

      while (v115 != v110);
      v112 = *&v145[32];
    }

    *&v145[40] = v110;
    operator delete(v112);
  }

  if (*&v145[8])
  {
    *&v145[16] = *&v145[8];
    operator delete(*&v145[8]);
  }

  v36 = v153;
LABEL_160:
  if (v36)
  {
    v116 = v154;
    v117 = v36;
    if (v154 != v36)
    {
      do
      {
        v118 = *(v116 - 7);
        if (v118)
        {
          *(v116 - 6) = v118;
          operator delete(v118);
        }

        v119 = *(v116 - 10);
        if (v119)
        {
          *(v116 - 9) = v119;
          operator delete(v119);
        }

        v120 = *(v116 - 17);
        if (v120)
        {
          *(v116 - 16) = v120;
          operator delete(v120);
        }

        v116 -= 26;
      }

      while (v116 != v36);
      v117 = v153;
    }

    v154 = v36;
    operator delete(v117);
  }
}

void sub_23CB6494C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  if (__p)
  {
    operator delete(__p);
  }

  operations_research::sat::TopNCuts::~TopNCuts(&a49);
  std::vector<operations_research::sat::DiffnEnergyEvent>::~vector[abi:ne200100]((v49 - 184));
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::DiffnEnergyEvent::FillEnergyLp(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v6 = a4[3];
  if (v6 > 1)
  {
    v8 = 0;
    _X11 = a4[5];
    __asm { PRFM            #4, [X11] }

    v15 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d));
    v16 = vdup_n_s8(v15 & 0x7F);
    v17 = ((v15 >> 7) ^ (_X11 >> 12)) & v6;
    v18 = *(_X11 + v17);
    v19 = vceq_s8(v18, v16);
    if (!v19)
    {
      goto LABEL_8;
    }

LABEL_5:
    v20 = a4[6];
    while (1)
    {
      v21 = (v17 + (__clz(__rbit64(v19)) >> 3)) & v6;
      if (*(v20 + 16 * v21) == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
      {
        break;
      }

      v19 &= ((v19 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v19)
      {
LABEL_8:
        while (!*&vceq_s8(v18, 0x8080808080808080))
        {
          v8 += 8;
          v17 = (v8 + v17) & v6;
          v18 = *(_X11 + v17);
          v19 = vceq_s8(v18, v16);
          if (v19)
          {
            goto LABEL_5;
          }
        }

        goto LABEL_3;
      }
    }

    v22 = (v20 + 16 * v21);
    v7 = (_X11 + v21);
    if (!(_X11 + v21))
    {
      goto LABEL_13;
    }

LABEL_12:
    v7 = v22[1];
    goto LABEL_13;
  }

  if (a4[4] < 2uLL)
  {
LABEL_3:
    v7 = 0;
    goto LABEL_13;
  }

  v22 = a4 + 5;
  v7 = &absl::lts_20240722::container_internal::kSooControl;
  if (a4[5] != &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
  {
    v7 = 0;
    v22 = 0;
  }

  if (v7)
  {
    goto LABEL_12;
  }

LABEL_13:
  v40 = v7;
  v41 = 0u;
  *v42 = 0u;
  v43 = 0u;
  if (*(a1 + 120) == -1)
  {
    v23 = *(a1 + 72);
    v24 = *(a1 + 80);
    if (v23 == v24)
    {
      *__p = *a2;
      v34 = *(a2 + 16);
      v38 = *(a1 + 96);
      v39 = *(a1 + 112);
      v27 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a4);
      operations_research::sat::LinearConstraintBuilder::AddQuadraticLowerBound(&v40, __p, &v38, v27, (a1 + 192));
      goto LABEL_25;
    }

    if (operations_research::sat::LinearConstraintBuilder::AddDecomposedProduct(&v40, *(a1 + 72), 0xAAAAAAAAAAAAAAABLL * ((v24 - v23) >> 3)))
    {
      goto LABEL_25;
    }

LABEL_18:
    v25 = 0;
    v26 = v42[1];
    if (!v42[1])
    {
      return v25;
    }

    goto LABEL_32;
  }

  if (!operations_research::sat::LinearConstraintBuilder::AddLiteralTerm(&v40, *(a1 + 120), *(a1 + 64)))
  {
    goto LABEL_18;
  }

LABEL_25:
  operations_research::sat::LinearConstraintBuilder::BuildExpression(&v40, __p);
  v28 = *(a1 + 128);
  if (v28)
  {
    *(a1 + 136) = v28;
    operator delete(v28);
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
  }

  v29 = *(a1 + 152);
  *(a1 + 128) = *__p;
  *(a1 + 144) = v34;
  __p[1] = 0;
  v34 = 0;
  __p[0] = 0;
  if (v29)
  {
    *(a1 + 160) = v29;
    operator delete(v29);
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
    v29 = __p[0];
  }

  *(a1 + 152) = v35;
  v30 = v36;
  v31 = v37;
  v36 = 0;
  v35 = 0uLL;
  *(a1 + 168) = v30;
  *(a1 + 176) = v31;
  if (v29)
  {
    __p[1] = v29;
    operator delete(v29);
  }

  *(a1 + 184) = operations_research::sat::LinearExpression::LpValue((a1 + 128), a3);
  v25 = 1;
  v26 = v42[1];
  if (v42[1])
  {
LABEL_32:
    *&v43 = v26;
    operator delete(v26);
  }

  return v25;
}

void sub_23CB64D10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::DiffnEnergyEvent::~DiffnEnergyEvent(operations_research::sat::DiffnEnergyEvent *this)
{
  v2 = *(this + 19);
  if (v2)
  {
    *(this + 20) = v2;
    operator delete(v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    *(this + 17) = v3;
    operator delete(v3);
  }

  v4 = *(this + 9);
  if (v4)
  {
    *(this + 10) = v4;
    operator delete(v4);
  }
}

void **std::vector<operations_research::sat::DiffnEnergyEvent>::~vector[abi:ne200100](void **a1)
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
        v5 = *(v3 - 7);
        if (v5)
        {
          *(v3 - 6) = v5;
          operator delete(v5);
        }

        v6 = *(v3 - 10);
        if (v6)
        {
          *(v3 - 9) = v6;
          operator delete(v6);
        }

        v7 = *(v3 - 17);
        if (v7)
        {
          *(v3 - 16) = v7;
          operator delete(v7);
        }

        v3 -= 208;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void operations_research::sat::CreateNoOverlap2dEnergyCutGenerator(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v36 = *MEMORY[0x277D85DE8];
  *(a7 + 8) = 0;
  v14 = a7 + 8;
  *(a7 + 16) = 0;
  *(a7 + 24) = 0;
  *(a7 + 56) = 0;
  *a7 = 1;
  operations_research::sat::AddIntegerVariableFromIntervals(a1, a6, a7 + 8);
  operations_research::sat::AddIntegerVariableFromIntervals(a2, a6, v14);
  v15 = *(a7 + 8);
  v16 = *(a7 + 16);
  v17 = 126 - 2 * __clz((v16 - v15) >> 2);
  if (v16 == v15)
  {
    v18 = 0;
  }

  else
  {
    v18 = v17;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,false>(v15, v16, v32, v18, 1);
  v20 = *(a7 + 8);
  v19 = *(a7 + 16);
  if (v20 != v19)
  {
    v21 = v20 + 1;
    do
    {
      if (v21 == v19)
      {
        goto LABEL_15;
      }

      v22 = *(v21 - 1);
      v23 = *v21++;
    }

    while (v22 != v23);
    v24 = v21 - 2;
    while (v21 != v19)
    {
      v25 = v22;
      v22 = *v21;
      if (v25 != *v21)
      {
        v24[1] = v22;
        ++v24;
      }

      ++v21;
    }

    if (v24 + 1 != v19)
    {
      *(a7 + 16) = v24 + 1;
    }
  }

LABEL_15:
  *&v28 = a1;
  *(&v28 + 1) = a2;
  *&v29 = a3;
  *(&v29 + 1) = a4;
  v30 = a6;
  memset(v31, 0, sizeof(v31));
  v27 = *a5;
  v26 = a5[1];
  *&v32[0] = v31;
  BYTE8(v32[0]) = 0;
  if (v26 != v27)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v26 - v27) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v32[0] = v28;
  v32[1] = v29;
  v33 = v30;
  memset(__p, 0, 24);
  __p[4] = __p;
  v35 = 0;
  operator new();
}

void sub_23CB652A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void **a26)
{
  v27[7] = v28;
  std::__exception_guard_exceptions<std::vector<std::vector<int>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a26);
  operator delete(v27);
  operations_research::sat::CreateNoOverlap2dEnergyCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::SchedulingDemandHelper *,std::vector<std::vector<operations_research::sat::LiteralValueValue>> const&,operations_research::sat::Model *)::$_0::~$_0(&a17);
  operations_research::sat::CreateNoOverlap2dEnergyCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::SchedulingDemandHelper *,std::vector<std::vector<operations_research::sat::LiteralValueValue>> const&,operations_research::sat::Model *)::$_0::~$_0(&a9);
  operations_research::sat::CutGenerator::~CutGenerator(v26);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::CreateNoOverlap2dEnergyCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::SchedulingDemandHelper *,std::vector<std::vector<operations_research::sat::LiteralValueValue>> const&,operations_research::sat::Model *)::$_0::~$_0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 40);
    if (v3 != v2)
    {
      v5 = *(a1 + 48);
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
      v4 = *(a1 + 40);
    }

    *(a1 + 48) = v2;
    operator delete(v4);
  }

  return a1;
}

std::string *operations_research::sat::AffineExpression::DebugString@<X0>(operations_research::sat::AffineExpression *this@<X0>, char *a2@<X2>, uint64_t a3@<X8>)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = *this;
  v6 = *(this + 2);
  if (v5 == -1)
  {
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    *(a3 + 23) = 22;
    v13 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v6, a3, a2);
    result = std::string::erase(a3, &v13[-a3], 0xFFFFFFFFFFFFFFFFLL);
  }

  else if (v6)
  {
    v7 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(this + 1), v21, a2);
    *&v20 = v21;
    *(&v20 + 1) = v7 - v21;
    v18 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*this, v19, v8) - v19;
    v9 = *(this + 2);
    v24 = "(";
    v25 = 1;
    v26 = v20;
    v27 = " * X";
    v28 = 4;
    v29 = v19;
    v30 = v18;
    v31 = " + ";
    v32 = 3;
    v11 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v9, v23, v10);
    *&v22 = v23;
    *(&v22 + 1) = v11 - v23;
    v33 = v23;
    v34 = v11 - v23;
    v35 = ")";
    v36 = 1;
    result = absl::lts_20240722::strings_internal::CatPieces(&v24, 7, a3);
  }

  else
  {
    v14 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(this + 1), v23, a2);
    *&v22 = v23;
    *(&v22 + 1) = v14 - v23;
    v16 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*this, v21, v15);
    *&v20 = v21;
    *(&v20 + 1) = v16 - v21;
    v24 = "(";
    v25 = 1;
    v26 = v22;
    v27 = " * X";
    v28 = 4;
    v29 = v21;
    v30 = v16 - v21;
    v31 = ")";
    v32 = 1;
    result = absl::lts_20240722::strings_internal::CatPieces(&v24, 5, a3);
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CB655A4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(const void *a1, unint64_t a2, uint64_t *a3, int a4, char a5, void *a6, uint64_t **a7)
{
  v7 = a3;
  v8 = *a3;
  v9 = a3[1];
  v10 = 126 - 2 * __clz(0xF0F0F0F0F0F0F0F1 * ((v9 - *a3) >> 3));
  _ZF = v9 == *a3;
  v145 = 5;
  v146 = 0u;
  v147 = 0u;
  v148 = 0u;
  if (_ZF)
  {
    v12 = 0;
  }

  else
  {
    v12 = v10;
  }

  std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::DiffnCtEvent*,false>(v8, v9, v12, 1);
  v13 = *v7;
  v14 = v7[1];
  if (0xF0F0F0F0F0F0F0F1 * ((v14 - *v7) >> 3) >= 2)
  {
    v15 = 0;
    v115 = a6 + 5;
    v16 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d));
    v17 = vdup_n_s8(v16 & 0x7F);
    v114 = v16 >> 7;
    v18 = 1;
    v121 = v7;
    do
    {
      if (v15 <= 0)
      {
        v123 = v18;
        v21 = v15;
        v20 = *(v13 + 136 * v15);
      }

      else
      {
        v19 = (v13 + 136 * v15);
        v20 = *v19;
        if (*v19 == *(v19 - 17))
        {
          goto LABEL_6;
        }

        v123 = v18;
        v21 = v15;
      }

      v22 = 0;
      v142 = 0;
      v143 = 0;
      v23 = v13 + 136 * v21;
      v144 = 0;
      *&v134 = &v142;
      BYTE8(v134) = 0;
      if (v14 != v23)
      {
        if (0xF0F0F0F0F0F0F0F1 * ((v14 - v23) >> 3) < 0x1E1E1E1E1E1E1E2)
        {
          operator new();
        }

        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      v125 = v15;
      if (v15 >= 1 && a4)
      {
        v24 = 0;
        v25 = 136 * v15;
        do
        {
          v26 = *v7;
          v27 = (*v7 + v24);
          if (*(v27 + 4) + *v27 > v20)
          {
            v134 = *v27;
            v28 = v27[1];
            v29 = v27[2];
            v30 = v27[3];
            v138 = *(v27 + 8);
            v136 = v29;
            v137 = v30;
            v135 = v28;
            v139 = 0uLL;
            v32 = *(v27 + 9);
            v31 = *(v27 + 10);
            if (v31 != v32)
            {
              if (0xAAAAAAAAAAAAAAABLL * ((v31 - v32) >> 3) <= 0xAAAAAAAAAAAAAAALL)
              {
                operator new();
              }

              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            v33 = *(v26 + v24 + 96);
            v34 = *(v26 + v24 + 112);
            *&v141[15] = *(v26 + v24 + 127);
            v140 = v33;
            *v141 = v34;
            v141[17] = 1;
            v35 = operations_research::sat::ComputeEnergyMinInWindow(v134, *(&v134 + 1), v135, *(&v135 + 1), v136, *(&v137 + 1), 0, 0, v20, *(&v135 + 1));
            *&v138 = v35;
            *&v136 = v136 - v20 + v134;
            *&v134 = v20;
            if (v35 > *(&v137 + 1) * v136)
            {
              v141[16] = 1;
            }

            if (v35 >= 1)
            {
              v36 = v143;
              if (v143 >= v144)
              {
                v42 = std::vector<operations_research::sat::DiffnCtEvent>::__emplace_back_slow_path<operations_research::sat::DiffnCtEvent const&>(&v142, &v134);
              }

              else
              {
                *v143 = v134;
                v37 = v135;
                v38 = v136;
                v39 = v137;
                *(v36 + 8) = v138;
                v36[2] = v38;
                v36[3] = v39;
                *(v36 + 9) = 0;
                v36[1] = v37;
                *(v36 + 10) = 0;
                *(v36 + 11) = 0;
                if (v139 != *(&v138 + 1))
                {
                  if (0xAAAAAAAAAAAAAAABLL * ((v139 - *(&v138 + 1)) >> 3) <= 0xAAAAAAAAAAAAAAALL)
                  {
                    operator new();
                  }

                  std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                }

                v40 = v140;
                v41 = *v141;
                *(v36 + 127) = *&v141[15];
                v36[6] = v40;
                v36[7] = v41;
                v42 = v36 + 136;
              }

              v143 = v42;
            }

            if (*(&v138 + 1))
            {
              *&v139 = *(&v138 + 1);
              operator delete(*(&v138 + 1));
            }
          }

          v24 += 136;
        }

        while (v25 != v24);
        v22 = v143;
        v15 = v125;
      }

      v43 = 126 - 2 * __clz(0xF0F0F0F0F0F0F0F1 * ((v22 - v142) >> 3));
      if (v22 == v142)
      {
        v44 = 0;
      }

      else
      {
        v44 = v43;
      }

      std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::DiffnCtEvent*,false>(v142, v22, v44, 1);
      LODWORD(v134) = 50;
      v136 = 0u;
      v137 = 0u;
      v138 = 0u;
      v139 = 0u;
      *&v140 = 0;
      operations_research::sat::MaxBoundedSubsetSum::Reset(&v134, 0);
      v45 = v142;
      if (v143 != v142)
      {
        v46 = 0;
        v47 = 0;
        v122 = 0;
        v48 = 0;
        v49 = 0;
        v50 = 0;
        v51 = 0x8000000000000002;
        v52 = 0x7FFFFFFFFFFFFFFELL;
        v53 = 1;
        v54 = 0.0;
        v124 = -1;
        v55 = 0.01;
        v56 = 0x7FFFFFFFFFFFFFFELL;
        while (1)
        {
          v57 = v45 + 136 * v46;
          v58 = *(v57 + 64);
          v59 = v58 * v58;
          if ((v58 * v58) >> 64 != (v58 * v58) >> 63)
          {
            v59 = 0x7FFFFFFFFFFFFFFFLL;
          }

          if (v59 - 0x7FFFFFFFFFFFFFFFLL < 2 || ((v60 = (v59 >> 63) + 0x7FFFFFFFFFFFFFFFLL, _VF = __OFADD__(v59, v50), v62 = v59 + v50, !_VF) ? (v50 = v62) : (v50 = v60), (v50 + 0x7FFFFFFFFFFFFFFFLL) >= 0xFFFFFFFFFFFFFFFELL))
          {
LABEL_100:
            v64 = v49;
            v75 = v124;
            v7 = v121;
            v15 = v125;
            if (v124 == -1)
            {
              break;
            }

            goto LABEL_101;
          }

          v48 += v58;
          v63 = v58;
          if (v58 < 0x8000000000000003)
          {
            v63 = -INFINITY;
          }

          if (v58 > 0x7FFFFFFFFFFFFFFDLL)
          {
            v63 = INFINITY;
          }

          v54 = v54 + *(v57 + 120) * v63;
          if (*v57 < v56)
          {
            v56 = *v57;
          }

          if (v47 <= 6 && (a5 & 1) != 0)
          {
LABEL_96:
            v64 = v49;
            v74 = v55;
            goto LABEL_97;
          }

          if (*(v57 + 40) < v52)
          {
            v52 = *(v57 + 40);
          }

          if (v51 <= *(v57 + 48))
          {
            v51 = *(v57 + 48);
          }

          if (*(v57 + 130) & v53)
          {
            v64 = v51 - v52;
            if (v47)
            {
              if (v64 != v135)
              {
                v53 = 0;
                goto LABEL_66;
              }
            }

            else
            {
              operations_research::sat::MaxBoundedSubsetSum::Reset(&v134, v51 - v52);
            }

            operations_research::sat::MaxBoundedSubsetSum::Add(&v134, *(v57 + 56));
            v53 = 1;
            v64 = *(&v135 + 1);
          }

          else
          {
            v53 = 0;
            v64 = v51 - v52;
          }

LABEL_66:
          v65 = v48 * v48;
          if ((v48 * v48) >> 64 != (v48 * v48) >> 63)
          {
            v65 = 0x7FFFFFFFFFFFFFFFLL;
          }

          if ((v65 - 0x7FFFFFFFFFFFFFFFLL) < 2)
          {
            goto LABEL_100;
          }

          _VF = __OFADD__(v50, v65);
          v66 = v50 + v65;
          if (_VF)
          {
            v66 = (v50 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
          }

          if ((v66 + 0x7FFFFFFFFFFFFFFFLL) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_100;
          }

          v67 = ((v64 ^ v48) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
          if ((v48 * v64) >> 64 == (v48 * v64) >> 63)
          {
            v67 = v48 * v64;
          }

          if ((v67 - 0x7FFFFFFFFFFFFFFFLL) < 2)
          {
            goto LABEL_100;
          }

          if ((v56 * v67) >> 64 == (v56 * v67) >> 63)
          {
            v68 = v56 * v67;
          }

          else
          {
            v68 = ((v67 ^ v56) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
          }

          if (v68 - 0x7FFFFFFFFFFFFFFFLL < 2)
          {
            v64 = v49;
            v75 = v124;
            v7 = v121;
            v15 = v125;
            if (v124 == -1)
            {
              break;
            }

LABEL_101:
            v76 = a6[3];
            if (v76 > 1)
            {
              v79 = 0;
              _X9 = *v115;
              __asm { PRFM            #4, [X9] }

              v84 = (v114 ^ (*v115 >> 12)) & v76;
              v85 = *(*v115 + v84);
              v86 = vceq_s8(v85, v17);
              if (!v86)
              {
                goto LABEL_109;
              }

LABEL_106:
              v87 = a6[6];
              while (1)
              {
                v88 = (v84 + (__clz(__rbit64(v86)) >> 3)) & v76;
                if (*(v87 + 16 * v88) == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
                {
                  break;
                }

                v86 &= ((v86 & 0x8080808080808080) - 1) & 0x8080808080808080;
                if (!v86)
                {
LABEL_109:
                  while (!*&vceq_s8(v85, 0x8080808080808080))
                  {
                    v79 += 8;
                    v84 = (v79 + v84) & v76;
                    v85 = *&_X9[v84];
                    v86 = vceq_s8(v85, v17);
                    if (v86)
                    {
                      goto LABEL_106;
                    }
                  }

                  goto LABEL_103;
                }
              }

              v89 = (v87 + 16 * v88);
              v77 = v122;
              if (&_X9[v88])
              {
                goto LABEL_104;
              }

              goto LABEL_113;
            }

            if (a6[4] < 2uLL)
            {
LABEL_103:
              v77 = v122;
              goto LABEL_113;
            }

            v89 = *v115;
            if (*v115 == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
            {
              v89 = (a6 + 5);
            }

            v107 = &absl::lts_20240722::container_internal::kSooControl;
            if (*v115 != &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
            {
              v107 = 0;
            }

            v77 = v122;
            if (v107)
            {
LABEL_104:
              v78 = *(v89 + 1);
            }

            else
            {
LABEL_113:
              v78 = 0;
            }

            v131[0] = v78;
            v131[1] = v77;
            v131[2] = 0x7FFFFFFFFFFFFFFELL;
            v132 = 0u;
            v133 = 0u;
            if (v75 < 0)
            {
              v92 = 0;
              v91 = 0;
              v97 = a2;
              if (a2 > 0x7FFFFFFFFFFFFFF7)
              {
                goto LABEL_186;
              }
            }

            else
            {
              v90 = 0;
              LOBYTE(v91) = 0;
              LOBYTE(v92) = 0;
              do
              {
                v93 = &v142[136 * v90];
                v94 = v93[129];
                v95 = v93[128];
                v96 = *(v93 + 6);
                __dst.__r_.__value_.__r.__words[2] = *(v93 + 14);
                *&__dst.__r_.__value_.__l.__data_ = v96;
                operations_research::sat::LinearConstraintBuilder::AddTerm(v131, &__dst, *(v93 + 8) * v64);
                v91 = v95 | v91 & 1;
                v92 = v94 | v92 & 1;
                ++v90;
              }

              while (v90 <= v75);
              v97 = a2;
              if (a2 > 0x7FFFFFFFFFFFFFF7)
              {
LABEL_186:
                std::string::__throw_length_error[abi:ne200100]();
              }
            }

            if (v97 >= 0x17)
            {
              operator new();
            }

            *(&__dst.__r_.__value_.__s + 23) = v97;
            v7 = v121;
            if (v97)
            {
              memmove(&__dst, a1, v97);
              __dst.__r_.__value_.__s.__data_[v97] = 0;
              if (v92)
              {
LABEL_127:
                std::string::append(&__dst, "_lifted");
              }
            }

            else
            {
              __dst.__r_.__value_.__s.__data_[0] = 0;
              if (v92)
              {
                goto LABEL_127;
              }
            }

            if (v91)
            {
              std::string::append(&__dst, "_energy");
            }

            operations_research::sat::LinearConstraintBuilder::Build(v131, v127);
            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_dst = &__dst;
            }

            else
            {
              p_dst = __dst.__r_.__value_.__r.__words[0];
            }

            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = __dst.__r_.__value_.__l.__size_;
            }

            operations_research::sat::TopNCuts::AddCut(&v145, v127, p_dst, size, a7[34]);
            v100 = v129;
            v129 = 0;
            v15 = v125;
            if (v100)
            {
              MEMORY[0x23EED9440](v100, 0x1000C8000313F17);
            }

            v101 = v128;
            v128 = 0;
            if (v101)
            {
              MEMORY[0x23EED9440](v101, 0x1000C8052888210);
            }

            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
              v102 = *(&v132 + 1);
              if (!*(&v132 + 1))
              {
                break;
              }
            }

            else
            {
              v102 = *(&v132 + 1);
              if (!*(&v132 + 1))
              {
                break;
              }
            }

            *&v133 = v102;
            operator delete(v102);
            break;
          }

          v69 = v66;
          v70 = v68 + v66 / 2;
          if (__OFADD__(v68, v69 / 2))
          {
            v70 = (v68 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
          }

          if ((v70 + 0x7FFFFFFFFFFFFFFFLL) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_100;
          }

          v71 = v70;
          v72 = -INFINITY;
          if (v70 < 0x8000000000000003)
          {
            v71 = -INFINITY;
          }

          if (v70 > 0x7FFFFFFFFFFFFFFDLL)
          {
            v71 = INFINITY;
          }

          v73 = v64;
          if (v64 < 0x8000000000000003)
          {
            v73 = -INFINITY;
          }

          if (v64 > 0x7FFFFFFFFFFFFFFDLL)
          {
            v73 = INFINITY;
          }

          if (v50 >= 0x8000000000000003)
          {
            v72 = v50;
          }

          if (v50 > 0x7FFFFFFFFFFFFFFDLL)
          {
            v72 = INFINITY;
          }

          v74 = (v71 / v73 - v54) / sqrt(v72);
          if (v74 <= v55)
          {
            goto LABEL_96;
          }

          v122 = v70;
          v124 = v47;
LABEL_97:
          v46 = ++v47;
          v45 = v142;
          v55 = v74;
          v49 = v64;
          if (0xF0F0F0F0F0F0F0F1 * ((v143 - v142) >> 3) <= v47)
          {
            v75 = v124;
            v7 = v121;
            v15 = v125;
            if (v124 == -1)
            {
              break;
            }

            goto LABEL_101;
          }
        }
      }

      if (v139)
      {
        *(&v139 + 1) = v139;
        operator delete(v139);
      }

      if (*(&v137 + 1))
      {
        operator delete(*(&v137 + 1));
      }

      if (v136)
      {
        *(&v136 + 1) = v136;
        operator delete(v136);
      }

      v103 = v142;
      if (v142)
      {
        v104 = v143;
        v105 = v142;
        if (v143 != v142)
        {
          do
          {
            v106 = *(v104 - 8);
            if (v106)
            {
              *(v104 - 7) = v106;
              operator delete(v106);
            }

            v104 = (v104 - 136);
          }

          while (v104 != v103);
          v105 = v142;
        }

        v143 = v103;
        operator delete(v105);
      }

      v13 = *v7;
      v14 = v7[1];
      v18 = v123;
LABEL_6:
      ++v18;
      ++v15;
    }

    while (0xF0F0F0F0F0F0F0F1 * ((v14 - v13) >> 3) > v18);
  }

  operations_research::sat::TopNCuts::TransferToManager(&v145, a7);
  v108 = *(&v147 + 1);
  if (*(&v147 + 1))
  {
    v109 = v148;
    v110 = *(&v147 + 1);
    if (v148 != *(&v147 + 1))
    {
      do
      {
        v111 = *(v109 - 8);
        *(v109 - 8) = 0;
        if (v111)
        {
          MEMORY[0x23EED9440](v111, 0x1000C8000313F17);
        }

        v112 = *(v109 - 16);
        *(v109 - 16) = 0;
        if (v112)
        {
          MEMORY[0x23EED9440](v112, 0x1000C8052888210);
        }

        v113 = (v109 - 64);
        if (*(v109 - 41) < 0)
        {
          operator delete(*v113);
        }

        v109 -= 64;
      }

      while (v113 != v108);
      v110 = *(&v147 + 1);
    }

    *&v148 = v108;
    operator delete(v110);
  }

  if (v146)
  {
    *(&v146 + 1) = v146;
    operator delete(v146);
  }
}

void sub_23CB6623C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, void *a53, void *a54, uint64_t a55)
{
  if (__p)
  {
    operator delete(__p);
  }

  operations_research::sat::MaxBoundedSubsetSum::~MaxBoundedSubsetSum(&a44);
  std::vector<operations_research::sat::DiffnCtEvent>::~vector[abi:ne200100]((v55 - 224));
  operations_research::sat::TopNCuts::~TopNCuts((v55 - 200));
  _Unwind_Resume(a1);
}

uint64_t std::vector<operations_research::sat::DiffnCtEvent>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<operations_research::sat::DiffnCtEvent>::__emplace_back_slow_path<operations_research::sat::DiffnCtEvent const&>(a1, a2);
    a1[1] = result;
  }

  else
  {
    *v3 = *a2;
    v4 = *(a2 + 16);
    v5 = *(a2 + 32);
    v6 = *(a2 + 48);
    *(v3 + 64) = *(a2 + 64);
    *(v3 + 32) = v5;
    *(v3 + 48) = v6;
    *(v3 + 72) = 0;
    *(v3 + 16) = v4;
    *(v3 + 80) = 0;
    *(v3 + 88) = 0;
    v8 = *(a2 + 72);
    v7 = *(a2 + 80);
    if (v7 != v8)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 3) < 0xAAAAAAAAAAAAAABLL)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v9 = *(a2 + 96);
    v10 = *(a2 + 112);
    *(v3 + 127) = *(a2 + 127);
    *(v3 + 96) = v9;
    *(v3 + 112) = v10;
    result = v3 + 136;
    a1[1] = v3 + 136;
    a1[1] = v3 + 136;
  }

  return result;
}

void sub_23CB664B8(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 80) = v5;
    operator delete(v5);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

void **std::vector<operations_research::sat::DiffnCtEvent>::~vector[abi:ne200100](void **a1)
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
        v5 = *(v3 - 8);
        if (v5)
        {
          *(v3 - 7) = v5;
          operator delete(v5);
        }

        v3 -= 136;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void operations_research::sat::CreateNoOverlap2dCompletionTimeCutGenerator(operations_research::sat *this@<X0>, operations_research::sat::SchedulingConstraintHelper *a2@<X1>, operations_research::sat::SchedulingConstraintHelper *a3@<X2>, uint64_t a4@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  *(a4 + 8) = 0;
  v8 = a4 + 8;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 56) = 0;
  *a4 = 1;
  operations_research::sat::AddIntegerVariableFromIntervals(this, a3, a4 + 8);
  operations_research::sat::AddIntegerVariableFromIntervals(a2, a3, v8);
  v9 = *(a4 + 8);
  v10 = *(a4 + 16);
  v11 = 126 - 2 * __clz((v10 - v9) >> 2);
  if (v10 == v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,false>(v9, v10, v20, v12, 1);
  v14 = *(a4 + 8);
  v13 = *(a4 + 16);
  if (v14 != v13)
  {
    v15 = v14 + 1;
    do
    {
      if (v15 == v13)
      {
        goto LABEL_15;
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
      *(a4 + 16) = v18 + 1;
    }
  }

LABEL_15:
  operations_research::sat::Model::GetOrCreate<operations_research::sat::ProductDecomposer>(a3);
  operator new();
}

uint64_t std::vector<operations_research::sat::DiffnEnergyEvent>::__emplace_back_slow_path<operations_research::sat::DiffnEnergyEvent const&>(uint64_t a1, uint64_t a2)
{
  v2 = 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 8) - *a1) >> 4) + 1;
  if (v2 > 0x13B13B13B13B13BLL)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (0x9D89D89D89D89D8ALL * ((*(a1 + 16) - *a1) >> 4) > v2)
  {
    v2 = 0x9D89D89D89D89D8ALL * ((*(a1 + 16) - *a1) >> 4);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 16) - *a1) >> 4)) >= 0x9D89D89D89D89DLL)
  {
    v5 = 0x13B13B13B13B13BLL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0x13B13B13B13B13BLL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v6 = 16 * ((*(a1 + 8) - *a1) >> 4);
  v7 = *(a2 + 48);
  *(v6 + 32) = *(a2 + 32);
  *(v6 + 48) = v7;
  v8 = *(a2 + 72);
  *(v6 + 64) = *(a2 + 64);
  v9 = *(a2 + 16);
  *v6 = *a2;
  *(v6 + 16) = v9;
  *(v6 + 72) = 0;
  *(v6 + 80) = 0;
  *(v6 + 88) = 0;
  v10 = *(a2 + 80);
  if (v10 != v8)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v10 - v8) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  *(v6 + 96) = *(a2 + 96);
  *(v6 + 108) = *(a2 + 108);
  operations_research::sat::LinearExpression::LinearExpression((v6 + 128), (a2 + 128));
  *(v6 + 184) = *(a2 + 184);
  *(v6 + 200) = *(a2 + 200);
  v11 = *(a1 + 8);
  v12 = v6 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<operations_research::sat::DiffnEnergyEvent>,operations_research::sat::DiffnEnergyEvent*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  *(a1 + 8) = v6 + 208;
  *(a1 + 16) = 0;
  if (v13)
  {
    operator delete(v13);
  }

  return v6 + 208;
}

void sub_23CB66994(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<operations_research::sat::DiffnEnergyEvent>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_23CB669A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 80) = v5;
    operator delete(v5);
  }

  std::__split_buffer<operations_research::sat::DiffnEnergyEvent>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<operations_research::sat::DiffnEnergyEvent>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 208;
    v4 = *(i - 56);
    if (v4)
    {
      *(i - 48) = v4;
      operator delete(v4);
    }

    v5 = *(i - 80);
    if (v5)
    {
      *(i - 72) = v5;
      operator delete(v5);
    }

    v6 = *(i - 136);
    if (v6)
    {
      *(i - 128) = v6;
      operator delete(v6);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<operations_research::sat::DiffnEnergyEvent>,operations_research::sat::DiffnEnergyEvent*>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 1);
      v8 = *(v6 + 3);
      v9 = v6[8];
      *(a4 + 32) = *(v6 + 2);
      *(a4 + 48) = v8;
      *(a4 + 16) = v7;
      *(a4 + 64) = v9;
      *(a4 + 72) = 0;
      *(a4 + 80) = 0;
      *(a4 + 88) = 0;
      *(a4 + 72) = *(v6 + 9);
      *(a4 + 88) = v6[11];
      v6[9] = 0;
      v6[10] = 0;
      v6[11] = 0;
      v10 = *(v6 + 6);
      *(a4 + 108) = *(v6 + 108);
      *(a4 + 96) = v10;
      *(a4 + 136) = 0;
      *(a4 + 144) = 0;
      *(a4 + 128) = 0;
      *(a4 + 128) = *(v6 + 8);
      *(a4 + 144) = v6[18];
      v6[16] = 0;
      v6[17] = 0;
      v6[18] = 0;
      *(a4 + 152) = 0;
      *(a4 + 160) = 0;
      *(a4 + 168) = 0;
      *(a4 + 152) = *(v6 + 19);
      v11 = v6[22];
      *(a4 + 168) = v6[21];
      v6[19] = 0;
      v6[20] = 0;
      v6[21] = 0;
      *(a4 + 176) = v11;
      v12 = *(v6 + 23);
      *(a4 + 200) = v6[25];
      *(a4 + 184) = v12;
      v6 += 26;
      a4 += 208;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v13 = v5[19];
      if (v13)
      {
        v5[20] = v13;
        operator delete(v13);
      }

      v14 = v5[16];
      if (v14)
      {
        v5[17] = v14;
        operator delete(v14);
      }

      v15 = v5[9];
      if (v15)
      {
        v5[10] = v15;
        operator delete(v15);
      }

      v5 += 26;
    }
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<operations_research::sat::DiffnEnergyEvent>,operations_research::sat::DiffnEnergyEvent*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 56);
      if (v5)
      {
        *(v3 - 48) = v5;
        operator delete(v5);
      }

      v6 = *(v3 - 80);
      if (v6)
      {
        *(v3 - 72) = v6;
        operator delete(v6);
      }

      v7 = *(v3 - 136);
      if (v7)
      {
        *(v3 - 128) = v7;
        operator delete(v7);
      }

      v3 -= 208;
    }
  }

  return a1;
}

void std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_0 &,operations_research::sat::DiffnEnergyEvent *,false>(uint64_t a1, unint64_t a2, uint64_t a3, char a4, double a5)
{
  v341 = *MEMORY[0x277D85DE8];
LABEL_2:
  v288 = a2;
  v291 = (a2 - 208);
  v243 = a2 - 624;
  v244 = a2 - 416;
  j = a1;
  while (1)
  {
    a1 = j;
    v9 = a2 - j;
    v10 = 0x4EC4EC4EC4EC4EC5 * ((a2 - j) >> 4);
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:
          v90 = *MEMORY[0x277D85DE8];

          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_0 &,operations_research::sat::DiffnEnergyEvent *,0>(a1, (a1 + 208), v291, a5);
          return;
        case 4:
          v89 = *MEMORY[0x277D85DE8];

          std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_0 &,operations_research::sat::DiffnEnergyEvent *,0>(a1, a1 + 208, a1 + 416, v291, a5);
          return;
        case 5:
          v88 = *MEMORY[0x277D85DE8];

          std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_0 &,operations_research::sat::DiffnEnergyEvent *,0>(a1, a1 + 208, a1 + 416, a1 + 624, v291, a5);
          return;
      }
    }

    else
    {
      if (v10 < 2)
      {
        goto LABEL_315;
      }

      if (v10 == 2)
      {
        v86 = *(a2 - 208);
        if (v86 >= *a1)
        {
          if (*a1 < v86)
          {
            goto LABEL_315;
          }

          v217 = *(a2 - 8);
          v218 = *(a1 + 200);
          if (v217 >= v218 && (v218 < v217 || *(a2 - 184) >= *(a1 + 24)))
          {
            goto LABEL_315;
          }
        }

        v87 = *MEMORY[0x277D85DE8];

        std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>(a1, (a2 - 208));
        return;
      }
    }

    if (v9 <= 4991)
    {
      break;
    }

    if (!a3)
    {
      if (a1 == a2)
      {
        goto LABEL_315;
      }

      v124 = (v10 - 2) >> 1;
      v293 = v124;
      while (1)
      {
        v125 = v124;
        v126 = 208 * v124;
        if (v293 < 0x4EC4EC4EC4EC4EC5 * (v126 >> 4))
        {
          goto LABEL_197;
        }

        v127 = (0x9D89D89D89D89D8ALL * (v126 >> 4)) | 1;
        v128 = a1 + 208 * v127;
        if ((0x9D89D89D89D89D8ALL * (v126 >> 4) + 2) < v10)
        {
          v129 = *(v128 + 208);
          if (*v128 < v129 || v129 >= *v128 && ((v153 = *(v128 + 200), v154 = *(v128 + 408), v153 < v154) || v154 >= v153 && *(v128 + 24) < *(v128 + 232)))
          {
            v128 += 208;
            v127 = 0x9D89D89D89D89D8ALL * (v126 >> 4) + 2;
          }
        }

        v130 = a1 + v126;
        v131 = *(a1 + v126);
        if (*v128 < v131)
        {
          goto LABEL_197;
        }

        v132 = *(v130 + 200);
        if (v131 < *v128)
        {
          break;
        }

        v152 = *(v128 + 200);
        if (v152 >= v132)
        {
          v133 = *(v130 + 24);
          if (v132 < v152 || *(v128 + 24) >= v133)
          {
            goto LABEL_206;
          }
        }

LABEL_197:
        v124 = v125 - 1;
        if (!v125)
        {
          v155 = 0x4EC4EC4EC4EC4EC5 * (v9 >> 4);
          v156 = v288;
          while (1)
          {
            v158 = 0;
            v159 = v156;
            v303 = *a1;
            v256 = *(a1 + 72);
            v318 = *(a1 + 64);
            v315 = *(a1 + 32);
            v317 = *(a1 + 48);
            v309 = *(a1 + 16);
            v248 = *(a1 + 88);
            v252 = *(a1 + 80);
            *(a1 + 80) = 0;
            *(a1 + 88) = 0;
            *(a1 + 72) = 0;
            *&v325[12] = *(a1 + 108);
            *v325 = *(a1 + 96);
            v272 = *(a1 + 128);
            v266 = *(a1 + 136);
            *(a1 + 128) = 0;
            *(a1 + 136) = 0;
            v260 = *(a1 + 144);
            v160 = *(a1 + 160);
            v289 = v160;
            v294 = *(a1 + 152);
            v285 = *(a1 + 168);
            *(a1 + 144) = 0;
            *(a1 + 152) = 0;
            *(a1 + 160) = 0;
            *(a1 + 168) = 0;
            v278 = *(a1 + 176);
            v298 = *(a1 + 200);
            v161 = a1;
            v297 = *(a1 + 184);
            do
            {
              v164 = v161 + 208 * v158;
              v165 = v164 + 208;
              v166 = 2 * v158;
              v158 = (2 * v158) | 1;
              v167 = v166 + 2;
              if (v167 < v155)
              {
                v168 = *(v164 + 208);
                v169 = *(v164 + 416);
                if (v168 < v169 || v169 >= v168 && ((v178 = *(v164 + 408), v179 = *(v164 + 616), v178 < v179) || v179 >= v178 && *(v164 + 232) < *(v164 + 440)))
                {
                  v165 = v164 + 416;
                  v158 = v167;
                }
              }

              *v161 = *v165;
              v170 = *(v165 + 16);
              v171 = *(v165 + 32);
              v172 = *(v165 + 48);
              *(v161 + 64) = *(v165 + 64);
              *(v161 + 32) = v171;
              *(v161 + 48) = v172;
              *(v161 + 16) = v170;
              v173 = *(v161 + 72);
              if (v173)
              {
                *(v161 + 80) = v173;
                operator delete(v173);
                *(v161 + 72) = 0;
                *(v161 + 80) = 0;
                *(v161 + 88) = 0;
              }

              v174 = (v165 + 72);
              *(v161 + 72) = *(v165 + 72);
              *(v161 + 88) = *(v165 + 88);
              *(v165 + 72) = 0;
              *(v165 + 80) = 0;
              *(v165 + 88) = 0;
              v175 = *(v165 + 96);
              v176 = *(v161 + 128);
              *(v161 + 108) = *(v165 + 108);
              *(v161 + 96) = v175;
              if (v176)
              {
                *(v161 + 136) = v176;
                operator delete(v176);
                *(v161 + 128) = 0;
                *(v161 + 136) = 0;
                *(v161 + 144) = 0;
              }

              *(v161 + 128) = *(v165 + 128);
              *(v161 + 144) = *(v165 + 144);
              *(v165 + 128) = 0;
              *(v165 + 136) = 0;
              *(v165 + 144) = 0;
              v177 = *(v161 + 152);
              if (v177)
              {
                *(v161 + 160) = v177;
                operator delete(v177);
                *(v161 + 152) = 0;
                *(v161 + 160) = 0;
                *(v161 + 168) = 0;
              }

              v162 = (v165 + 152);
              *(v161 + 152) = *(v165 + 152);
              *(v161 + 168) = *(v165 + 168);
              *(v165 + 152) = 0;
              *(v165 + 160) = 0;
              *(v165 + 168) = 0;
              *(v161 + 176) = *(v165 + 176);
              v163 = *(v165 + 184);
              *(v161 + 200) = *(v165 + 200);
              *(v161 + 184) = v163;
              v161 = v165;
            }

            while (v158 <= ((v155 - 2) >> 1));
            v156 = v159 - 13;
            if (v165 == v159 - 13)
            {
              *v165 = v303;
              *(v165 + 64) = v318;
              *(v165 + 32) = v315;
              *(v165 + 48) = v317;
              *(v165 + 16) = v309;
              v213 = *(v165 + 72);
              if (v213)
              {
                *(v165 + 80) = v213;
                operator delete(v213);
              }

              *(v165 + 72) = v256;
              *(v165 + 80) = v252;
              *(v165 + 88) = v248;
              *(v165 + 108) = *&v325[12];
              *(v165 + 96) = *v325;
              v214 = *(v165 + 128);
              if (v214)
              {
                *(v165 + 136) = v214;
                operator delete(v214);
              }

              *(v165 + 128) = v272;
              *(v165 + 136) = v266;
              *(v165 + 144) = v260;
              v215 = *(v165 + 152);
              if (v215)
              {
                *(v165 + 160) = v215;
                operator delete(v215);
              }

              *(v165 + 152) = v294;
              *(v165 + 160) = v289;
              *(v165 + 168) = v285;
              *(v165 + 176) = v278;
              *(v165 + 200) = v298;
              *(v165 + 184) = v297;
              goto LABEL_245;
            }

            *v165 = *v156;
            v180 = *(v159 - 12);
            v181 = *(v159 - 11);
            v182 = *(v159 - 10);
            *(v165 + 64) = *(v159 - 18);
            *(v165 + 32) = v181;
            *(v165 + 48) = v182;
            *(v165 + 16) = v180;
            v183 = *(v165 + 72);
            if (v183)
            {
              *(v165 + 80) = v183;
              operator delete(v183);
              *v174 = 0;
              *(v165 + 80) = 0;
              *(v165 + 88) = 0;
            }

            *(v165 + 72) = *(v159 - 136);
            *(v165 + 88) = *(v159 - 15);
            *(v159 - 16) = 0;
            *(v159 - 15) = 0;
            *(v159 - 17) = 0;
            v184 = *(v159 - 7);
            *(v165 + 108) = *(v159 - 100);
            *(v165 + 96) = v184;
            v185 = *(v165 + 128);
            if (v185)
            {
              *(v165 + 136) = v185;
              operator delete(v185);
              *(v165 + 128) = 0;
              *(v165 + 136) = 0;
              *(v165 + 144) = 0;
            }

            v186 = v159 - 5;
            *(v165 + 128) = *(v159 - 5);
            *(v165 + 144) = *(v159 - 8);
            *v186 = 0;
            v186[1] = 0;
            v186[2] = 0;
            v187 = *(v165 + 152);
            if (v187)
            {
              *(v165 + 160) = v187;
              operator delete(v187);
              *v162 = 0;
              *(v165 + 160) = 0;
              *(v165 + 168) = 0;
            }

            *(v165 + 152) = *(v159 - 56);
            *(v165 + 168) = *(v159 - 5);
            *(v159 - 7) = 0;
            *(v159 - 6) = 0;
            *(v159 - 5) = 0;
            *(v165 + 176) = *(v159 - 4);
            v188 = *(v159 - 24);
            *(v165 + 200) = *(v159 - 1);
            *(v165 + 184) = v188;
            *(v159 - 18) = v318;
            *(v159 - 11) = v315;
            *(v159 - 10) = v317;
            *(v159 - 12) = v309;
            *v156 = v303;
            v189 = *(v159 - 17);
            if (v189)
            {
              *(v159 - 16) = v189;
              operator delete(v189);
            }

            v190 = v159 - 7;
            *(v159 - 17) = v256;
            *(v159 - 16) = v252;
            *(v159 - 15) = v248;
            *(v190 + 12) = *&v325[12];
            *v190 = *v325;
            v191 = *(v159 - 10);
            if (v191)
            {
              *(v159 - 9) = v191;
              operator delete(v191);
            }

            *(v159 - 10) = v272;
            *(v159 - 9) = v266;
            *(v159 - 8) = v260;
            v192 = *(v159 - 7);
            if (v192)
            {
              *(v159 - 6) = v192;
              operator delete(v192);
            }

            v193 = v159 - 24;
            *(v159 - 7) = v294;
            *(v159 - 6) = v289;
            *(v159 - 5) = v285;
            *(v159 - 4) = v278;
            *(v193 + 2) = v298;
            *v193 = v297;
            v194 = v165 + 208 - a1;
            if (v194 >= 209)
            {
              v195 = (0x4EC4EC4EC4EC4EC5 * (v194 >> 4) - 2) >> 1;
              v196 = a1 + 208 * v195;
              v197 = *v165;
              if (*v196 < *v165)
              {
                v198 = *(v165 + 200);
LABEL_278:
                v320 = *(v165 + 8);
                v199 = *(v165 + 24);
                v340 = *(v165 + 64);
                v337 = *(v165 + 32);
                v339 = *(v165 + 48);
                v267 = *(v165 + 72);
                v261 = *(v165 + 88);
                *(v165 + 80) = 0;
                *(v165 + 88) = 0;
                *v174 = 0;
                *&v331[12] = *(v165 + 108);
                *v331 = *(v165 + 96);
                v279 = *(v165 + 128);
                v273 = *(v165 + 144);
                *(v165 + 128) = 0;
                *(v165 + 136) = 0;
                *(v165 + 144) = 0;
                v295 = *(v165 + 152);
                *v162 = 0;
                *(v165 + 160) = 0;
                v290 = *(v165 + 168);
                v286 = *(v165 + 176);
                *(v165 + 168) = 0;
                v319 = *(v165 + 184);
                while (1)
                {
                  v200 = v196;
                  *v165 = *v196;
                  v201 = *(v196 + 16);
                  v202 = *(v196 + 32);
                  v203 = *(v196 + 48);
                  *(v165 + 64) = *(v196 + 64);
                  *(v165 + 32) = v202;
                  *(v165 + 48) = v203;
                  *(v165 + 16) = v201;
                  v204 = *(v165 + 72);
                  if (v204)
                  {
                    *(v165 + 80) = v204;
                    operator delete(v204);
                    *(v165 + 72) = 0;
                    *(v165 + 80) = 0;
                    *(v165 + 88) = 0;
                  }

                  *(v165 + 72) = *(v200 + 72);
                  *(v165 + 88) = *(v200 + 88);
                  *(v200 + 72) = 0;
                  *(v200 + 80) = 0;
                  *(v200 + 88) = 0;
                  v205 = *(v200 + 96);
                  v206 = *(v165 + 128);
                  *(v165 + 108) = *(v200 + 108);
                  *(v165 + 96) = v205;
                  if (v206)
                  {
                    *(v165 + 136) = v206;
                    operator delete(v206);
                    *(v165 + 128) = 0;
                    *(v165 + 136) = 0;
                    *(v165 + 144) = 0;
                  }

                  *(v165 + 128) = *(v200 + 128);
                  *(v165 + 144) = *(v200 + 144);
                  *(v200 + 128) = 0;
                  *(v200 + 136) = 0;
                  *(v200 + 144) = 0;
                  v207 = *(v165 + 152);
                  if (v207)
                  {
                    *(v165 + 160) = v207;
                    operator delete(v207);
                    *(v165 + 152) = 0;
                    *(v165 + 160) = 0;
                    *(v165 + 168) = 0;
                  }

                  *(v165 + 152) = *(v200 + 152);
                  *(v165 + 168) = *(v200 + 168);
                  *(v200 + 152) = 0;
                  *(v200 + 160) = 0;
                  *(v200 + 168) = 0;
                  *(v165 + 176) = *(v200 + 176);
                  v208 = *(v200 + 184);
                  *(v165 + 200) = *(v200 + 200);
                  *(v165 + 184) = v208;
                  if (!v195)
                  {
                    break;
                  }

                  v195 = (v195 - 1) >> 1;
                  v196 = a1 + 208 * v195;
                  v165 = v200;
                  if (*v196 >= v197)
                  {
                    if (v197 < *v196)
                    {
                      break;
                    }

                    v209 = *(v196 + 200);
                    v165 = v200;
                    if (v209 >= v198)
                    {
                      if (v198 < v209)
                      {
                        break;
                      }

                      v165 = v200;
                      if (*(v196 + 24) >= v199)
                      {
                        break;
                      }
                    }
                  }
                }

                *v200 = v197;
                *(v200 + 8) = v320;
                *(v200 + 24) = v199;
                *(v200 + 32) = v337;
                *(v200 + 48) = v339;
                *(v200 + 64) = v340;
                v210 = *(v200 + 72);
                if (v210)
                {
                  *(v200 + 80) = v210;
                  operator delete(v210);
                }

                *(v200 + 72) = v267;
                *(v200 + 88) = v261;
                *(v200 + 96) = *v331;
                *(v200 + 108) = *&v331[12];
                v211 = *(v200 + 128);
                if (v211)
                {
                  *(v200 + 136) = v211;
                  operator delete(v211);
                }

                *(v200 + 128) = v279;
                *(v200 + 144) = v273;
                v212 = *(v200 + 152);
                if (v212)
                {
                  *(v200 + 160) = v212;
                  operator delete(v212);
                }

                *(v200 + 152) = v295;
                *(v200 + 168) = v290;
                *(v200 + 176) = v286;
                *(v200 + 184) = v319;
                *(v200 + 200) = v198;
                goto LABEL_245;
              }

              if (v197 >= *v196)
              {
                v216 = *(v196 + 200);
                v198 = *(v165 + 200);
                if (v216 < v198 || v198 >= v216 && *(v196 + 24) < *(v165 + 24))
                {
                  goto LABEL_278;
                }
              }
            }

LABEL_245:
            if (v155-- <= 2)
            {
              goto LABEL_315;
            }
          }
        }
      }

      v133 = *(v130 + 24);
LABEL_206:
      v284 = v133;
      v134 = 0;
      v330 = *(v130 + 8);
      v314 = *(v130 + 64);
      v302 = *(v130 + 32);
      v308 = *(v130 + 48);
      v251 = *(v130 + 72);
      v247 = *(v130 + 88);
      *(v130 + 72) = 0;
      *(v130 + 80) = 0;
      *(v130 + 88) = 0;
      *&v336[12] = *(v130 + 108);
      *v336 = *(v130 + 96);
      v259 = *(v130 + 128);
      v255 = *(v130 + 144);
      *(v130 + 128) = 0;
      *(v130 + 136) = 0;
      v277 = *(v130 + 152);
      *(v130 + 144) = 0;
      *(v130 + 152) = 0;
      v271 = *(v130 + 168);
      v265 = *(v130 + 176);
      *(v130 + 160) = 0;
      *(v130 + 168) = 0;
      v324 = *(v130 + 184);
      while (1)
      {
        *v130 = *v128;
        v135 = *(v128 + 16);
        v136 = *(v128 + 32);
        v137 = *(v128 + 48);
        *(v130 + 64) = *(v128 + 64);
        *(v130 + 32) = v136;
        *(v130 + 48) = v137;
        *(v130 + 16) = v135;
        if (v134)
        {
          *(v130 + 80) = v134;
          operator delete(v134);
          *(v130 + 72) = 0;
          *(v130 + 80) = 0;
          *(v130 + 88) = 0;
        }

        *(v130 + 72) = *(v128 + 72);
        *(v130 + 88) = *(v128 + 88);
        *(v128 + 72) = 0;
        *(v128 + 80) = 0;
        *(v128 + 88) = 0;
        v138 = *(v128 + 96);
        v139 = *(v130 + 128);
        *(v130 + 108) = *(v128 + 108);
        *(v130 + 96) = v138;
        if (v139)
        {
          *(v130 + 136) = v139;
          operator delete(v139);
          *(v130 + 128) = 0;
          *(v130 + 136) = 0;
          *(v130 + 144) = 0;
        }

        *(v130 + 128) = *(v128 + 128);
        *(v130 + 144) = *(v128 + 144);
        *(v128 + 128) = 0;
        *(v128 + 136) = 0;
        *(v128 + 144) = 0;
        v140 = *(v130 + 152);
        if (v140)
        {
          *(v130 + 160) = v140;
          operator delete(v140);
          *(v130 + 152) = 0;
          *(v130 + 160) = 0;
          *(v130 + 168) = 0;
        }

        *(v130 + 152) = *(v128 + 152);
        *(v130 + 168) = *(v128 + 168);
        *(v128 + 152) = 0;
        *(v128 + 160) = 0;
        *(v128 + 168) = 0;
        *(v130 + 176) = *(v128 + 176);
        v141 = *(v128 + 184);
        *(v130 + 200) = *(v128 + 200);
        *(v130 + 184) = v141;
        if (v293 < v127)
        {
          break;
        }

        v142 = 2 * v127;
        v127 = (2 * v127) | 1;
        v143 = a1 + 208 * v127;
        v144 = v142 + 2;
        if (v144 < v10)
        {
          v145 = *(v143 + 208);
          if (*v143 < v145 || v145 >= *v143 && ((v147 = *(v143 + 200), v148 = *(v143 + 408), v147 < v148) || v148 >= v147 && *(v143 + 24) < *(v143 + 232)))
          {
            v143 += 208;
            v127 = v144;
          }
        }

        if (*v143 < v131)
        {
          break;
        }

        if (v131 >= *v143)
        {
          v146 = *(v143 + 200);
          if (v146 < v132 || v132 >= v146 && *(v143 + 24) < v284)
          {
            break;
          }
        }

        v134 = *(v128 + 72);
        v130 = v128;
        v128 = v143;
      }

      *v128 = v131;
      *(v128 + 8) = v330;
      *(v128 + 24) = v284;
      *(v128 + 32) = v302;
      *(v128 + 48) = v308;
      *(v128 + 64) = v314;
      v149 = *(v128 + 72);
      if (v149)
      {
        *(v128 + 80) = v149;
        operator delete(v149);
      }

      *(v128 + 72) = v251;
      *(v128 + 88) = v247;
      *(v128 + 96) = *v336;
      *(v128 + 108) = *&v336[12];
      v150 = *(v128 + 128);
      if (v150)
      {
        *(v128 + 136) = v150;
        operator delete(v150);
      }

      *(v128 + 128) = v259;
      *(v128 + 144) = v255;
      v151 = *(v128 + 152);
      if (v151)
      {
        *(v128 + 160) = v151;
        operator delete(v151);
      }

      *(v128 + 152) = v277;
      *(v128 + 168) = v271;
      *(v128 + 176) = v265;
      *(v128 + 184) = v324;
      *(v128 + 200) = v132;
      goto LABEL_197;
    }

    v11 = v10 >> 1;
    v12 = (a1 + 208 * (v10 >> 1));
    if (v9 < 0x6801)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_0 &,operations_research::sat::DiffnEnergyEvent *,0>(v12, a1, v291, a5);
      --a3;
      v17 = *a1;
      if ((a4 & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_21:
      v22 = 0;
      v327 = *(a1 + 8);
      v23 = *(a1 + 24);
      v311 = *(a1 + 64);
      v299 = *(a1 + 32);
      v305 = *(a1 + 48);
      v249 = *(a1 + 72);
      v246 = *(a1 + 88);
      *(a1 + 72) = 0;
      *(a1 + 80) = 0;
      *(a1 + 88) = 0;
      *&v333[12] = *(a1 + 108);
      *v333 = *(a1 + 96);
      v24 = *(a1 + 128);
      v262 = *(a1 + 144);
      *(a1 + 128) = 0;
      *(a1 + 136) = 0;
      *(a1 + 144) = 0;
      v268 = v24;
      v274 = *(a1 + 152);
      *(a1 + 152) = 0;
      *(a1 + 160) = 0;
      v257 = *(a1 + 168);
      v253 = *(a1 + 176);
      *(a1 + 168) = 0;
      v321 = *(a1 + 184);
      v25 = *(a1 + 200);
      while (1)
      {
        v26 = a1 + v22;
        v27 = *(a1 + v22 + 208);
        if (v27 >= *&v17)
        {
          if (*&v17 < v27)
          {
            break;
          }

          v28 = *(v26 + 408);
          if (v28 >= v25 && (v25 < v28 || *(v26 + 232) >= v23))
          {
            break;
          }
        }

        v22 += 208;
      }

      v281 = a3;
      v29 = a1 + v22 + 208;
      if (v22)
      {
        v30 = v291;
        for (i = *v291; i >= *&v17; i = v32)
        {
          if (*&v17 >= i)
          {
            v33 = v30[25];
            if (v33 < v25 || v25 >= v33 && *(v30 + 3) < v23)
            {
              break;
            }
          }

          v32 = *(v30 - 26);
          v30 -= 26;
        }
      }

      else
      {
        v30 = v288;
        if (v29 < v288)
        {
          v30 = v291;
          v34 = *v291;
          if (*v291 >= *&v17)
          {
            v30 = v291;
            do
            {
              if (*&v17 < v34)
              {
                goto LABEL_74;
              }

              v58 = v30[25];
              if (v58 < v25)
              {
                break;
              }

              if (v25 < v58)
              {
LABEL_74:
                if (v29 >= v30)
                {
                  break;
                }
              }

              else if (v29 >= v30 || *(v30 + 3) < v23)
              {
                break;
              }

              v57 = *(v30 - 26);
              v30 -= 26;
              v34 = v57;
            }

            while (v57 >= *&v17);
          }
        }
      }

      j = v29;
      if (v29 < v30)
      {
        v35 = v30;
        do
        {
          std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>(j, v35);
          do
          {
            do
            {
              v37 = *(j + 208);
              j += 208;
              v36 = v37;
            }

            while (v37 < *&v17);
            if (*&v17 < v36)
            {
              break;
            }

            v38 = *(j + 200);
          }

          while (v38 < v25 || v25 >= v38 && *(j + 24) < v23);
          while (1)
          {
            v40 = *(v35 - 208);
            v35 -= 208;
            v39 = v40;
            if (v40 < *&v17)
            {
              break;
            }

            if (*&v17 >= v39)
            {
              v41 = *(v35 + 200);
              if (v41 < v25 || v25 >= v41 && *(v35 + 24) < v23)
              {
                break;
              }
            }
          }
        }

        while (j < v35);
      }

      if (j - 208 != a1)
      {
        *a1 = *(j - 208);
        v42 = *(j - 192);
        v43 = *(j - 176);
        v44 = *(j - 160);
        *(a1 + 64) = *(j - 144);
        *(a1 + 32) = v43;
        *(a1 + 48) = v44;
        *(a1 + 16) = v42;
        v45 = *(a1 + 72);
        if (v45)
        {
          *(a1 + 80) = v45;
          operator delete(v45);
          *(a1 + 72) = 0;
          *(a1 + 80) = 0;
          *(a1 + 88) = 0;
        }

        *(a1 + 72) = *(j - 136);
        *(a1 + 88) = *(j - 120);
        *(j - 128) = 0;
        *(j - 120) = 0;
        *(j - 136) = 0;
        v46 = *(j - 112);
        *(a1 + 108) = *(j - 100);
        *(a1 + 96) = v46;
        v47 = *(a1 + 128);
        if (v47)
        {
          *(a1 + 136) = v47;
          operator delete(v47);
          *(a1 + 128) = 0;
          *(a1 + 136) = 0;
          *(a1 + 144) = 0;
        }

        v48 = (j - 80);
        *(a1 + 128) = *(j - 80);
        *(a1 + 144) = *(j - 64);
        *v48 = 0;
        v48[1] = 0;
        v48[2] = 0;
        v49 = *(a1 + 152);
        if (v49)
        {
          *(a1 + 160) = v49;
          operator delete(v49);
          *(a1 + 152) = 0;
          *(a1 + 160) = 0;
          *(a1 + 168) = 0;
        }

        *(a1 + 152) = *(j - 56);
        *(a1 + 168) = *(j - 40);
        *(j - 56) = 0;
        *(j - 48) = 0;
        *(j - 40) = 0;
        *(a1 + 176) = *(j - 32);
        v50 = *(j - 24);
        *(a1 + 200) = *(j - 8);
        *(a1 + 184) = v50;
      }

      *(j - 208) = v17;
      *(j - 200) = v327;
      *(j - 184) = v23;
      *(j - 144) = v311;
      *(j - 176) = v299;
      *(j - 160) = v305;
      v51 = *(j - 136);
      if (v51)
      {
        *(j - 128) = v51;
        operator delete(v51);
      }

      *(j - 136) = v249;
      *(j - 120) = v246;
      *(j - 100) = *&v333[12];
      *(j - 112) = *v333;
      v52 = *(j - 80);
      a2 = v288;
      if (v52)
      {
        *(j - 72) = v52;
        operator delete(v52);
      }

      *(j - 80) = v268;
      *(j - 64) = v262;
      v53 = *(j - 56);
      if (v53)
      {
        *(j - 48) = v53;
        operator delete(v53);
      }

      *(j - 56) = v274;
      *(j - 40) = v257;
      *(j - 32) = v253;
      *(j - 24) = v321;
      *(j - 8) = v25;
      v54 = v29 >= v30;
      a3 = v281;
      if (v54)
      {
        v55 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_0 &,operations_research::sat::DiffnEnergyEvent *>(a1, j - 208, *&v321);
        if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_0 &,operations_research::sat::DiffnEnergyEvent *>(j, v288, v56))
        {
          a2 = j - 208;
          if (v55)
          {
            goto LABEL_315;
          }

          goto LABEL_2;
        }

        if (!v55)
        {
          goto LABEL_72;
        }
      }

      else
      {
LABEL_72:
        std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_0 &,operations_research::sat::DiffnEnergyEvent *,false>(a1, j - 208, v281, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v13 = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_0 &,operations_research::sat::DiffnEnergyEvent *,0>(a1, v12, v291, a5);
      v14 = 208 * v11;
      v15 = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_0 &,operations_research::sat::DiffnEnergyEvent *,0>((a1 + 208), (v14 + a1 - 208), v244, v13);
      v16 = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_0 &,operations_research::sat::DiffnEnergyEvent *,0>((a1 + 416), (a1 + 208 + v14), v243, v15);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_0 &,operations_research::sat::DiffnEnergyEvent *,0>((v14 + a1 - 208), v12, a1 + 208 + v14, v16);
      std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>(a1, v12);
      --a3;
      v17 = *a1;
      if (a4)
      {
        goto LABEL_21;
      }

LABEL_16:
      v18 = *(a1 - 208);
      if (v18 < *&v17)
      {
        goto LABEL_21;
      }

      v19 = *(a1 + 200);
      if (*&v17 < v18)
      {
        v21 = *(a1 + 24);
      }

      else
      {
        v20 = *(a1 - 8);
        if (v20 < v19)
        {
          goto LABEL_21;
        }

        v21 = *(a1 + 24);
        if (v19 >= v20 && *(a1 - 184) < v21)
        {
          goto LABEL_21;
        }
      }

      v328 = *(a1 + 8);
      v312 = *(a1 + 64);
      v300 = *(a1 + 32);
      v306 = *(a1 + 48);
      v254 = *(a1 + 72);
      v250 = *(a1 + 88);
      *(a1 + 72) = 0;
      *(a1 + 80) = 0;
      *(a1 + 88) = 0;
      *&v334[12] = *(a1 + 108);
      *v334 = *(a1 + 96);
      v263 = *(a1 + 128);
      v258 = *(a1 + 144);
      *(a1 + 136) = 0;
      *(a1 + 144) = 0;
      *(a1 + 128) = 0;
      v282 = *(a1 + 152);
      *(a1 + 152) = 0;
      *(a1 + 160) = 0;
      v275 = *(a1 + 168);
      v269 = *(a1 + 176);
      *(a1 + 168) = 0;
      v322 = *(a1 + 184);
      a2 = v288;
      v59 = *v291;
      if (*&v17 < *v291 || v59 >= *&v17 && ((v85 = *(v288 - 8), v19 < v85) || v85 >= v19 && v21 < *(v288 - 184)))
      {
        j = a1;
        while (1)
        {
          v61 = *(j + 208);
          j += 208;
          v60 = v61;
          if (*&v17 < v61)
          {
            break;
          }

          if (v60 >= *&v17)
          {
            v62 = *(j + 200);
            if (v19 < v62 || v62 >= v19 && v21 < *(j + 24))
            {
              break;
            }
          }
        }
      }

      else
      {
        for (j = a1 + 208; j < v288; j += 208)
        {
          if (*&v17 < *j)
          {
            break;
          }

          if (*j >= *&v17)
          {
            v63 = *(j + 200);
            if (v19 < v63 || v63 >= v19 && v21 < *(j + 24))
            {
              break;
            }
          }
        }
      }

      k = v288;
      if (j < v288)
      {
        for (k = v291; ; k -= 26)
        {
          if (*&v17 >= v59)
          {
            if (v59 < *&v17)
            {
              break;
            }

            v66 = k[25];
            if (v19 >= v66 && (v66 < v19 || v21 >= *(k + 3)))
            {
              break;
            }
          }

          v65 = *(k - 26);
          v59 = v65;
        }
      }

      while (j < k)
      {
        std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>(j, k);
        while (1)
        {
          v68 = *(j + 208);
          j += 208;
          v67 = v68;
          if (*&v17 < v68)
          {
            break;
          }

          if (v67 >= *&v17)
          {
            v69 = *(j + 200);
            if (v19 < v69 || v69 >= v19 && v21 < *(j + 24))
            {
              break;
            }
          }
        }

        do
        {
          do
          {
            v71 = *(k - 26);
            k -= 26;
            v70 = v71;
          }

          while (*&v17 < v71);
          if (v70 < *&v17)
          {
            break;
          }

          v72 = k[25];
        }

        while (v19 < v72 || v72 >= v19 && v21 < *(k + 3));
      }

      if (j - 208 != a1)
      {
        *a1 = *(j - 208);
        v73 = *(j - 192);
        v74 = *(j - 176);
        v75 = *(j - 160);
        *(a1 + 64) = *(j - 144);
        *(a1 + 32) = v74;
        *(a1 + 48) = v75;
        *(a1 + 16) = v73;
        v76 = *(a1 + 72);
        if (v76)
        {
          *(a1 + 80) = v76;
          operator delete(v76);
          *(a1 + 72) = 0;
          *(a1 + 80) = 0;
          *(a1 + 88) = 0;
        }

        *(a1 + 72) = *(j - 136);
        *(a1 + 88) = *(j - 120);
        *(j - 128) = 0;
        *(j - 120) = 0;
        *(j - 136) = 0;
        v77 = *(j - 112);
        *(a1 + 108) = *(j - 100);
        *(a1 + 96) = v77;
        v78 = *(a1 + 128);
        if (v78)
        {
          *(a1 + 136) = v78;
          operator delete(v78);
          *(a1 + 128) = 0;
          *(a1 + 136) = 0;
          *(a1 + 144) = 0;
        }

        v79 = (j - 80);
        *(a1 + 128) = *(j - 80);
        *(a1 + 144) = *(j - 64);
        *v79 = 0;
        v79[1] = 0;
        v79[2] = 0;
        v80 = *(a1 + 152);
        if (v80)
        {
          *(a1 + 160) = v80;
          operator delete(v80);
          *(a1 + 152) = 0;
          *(a1 + 160) = 0;
          *(a1 + 168) = 0;
        }

        *(a1 + 152) = *(j - 56);
        *(a1 + 168) = *(j - 40);
        *(j - 56) = 0;
        *(j - 48) = 0;
        *(j - 40) = 0;
        *(a1 + 176) = *(j - 32);
        v81 = *(j - 24);
        *(a1 + 200) = *(j - 8);
        *(a1 + 184) = v81;
      }

      *(j - 208) = v17;
      *(j - 200) = v328;
      *(j - 184) = v21;
      *(j - 144) = v312;
      *(j - 176) = v300;
      *(j - 160) = v306;
      v82 = *(j - 136);
      if (v82)
      {
        *(j - 128) = v82;
        operator delete(v82);
      }

      *(j - 136) = v254;
      *(j - 120) = v250;
      *(j - 100) = *&v334[12];
      *(j - 112) = *v334;
      v83 = *(j - 80);
      if (v83)
      {
        *(j - 72) = v83;
        operator delete(v83);
      }

      *(j - 80) = v263;
      *(j - 64) = v258;
      v84 = *(j - 56);
      if (v84)
      {
        *(j - 48) = v84;
        operator delete(v84);
      }

      a4 = 0;
      *(j - 56) = v282;
      *(j - 40) = v275;
      *(j - 32) = v269;
      a5 = *&v322;
      *(j - 24) = v322;
      *(j - 8) = v19;
    }
  }

  v91 = a1 + 208;
  v93 = a1 == a2 || v91 == a2;
  if (a4)
  {
    if (!v93)
    {
      v94 = 0;
      v95 = a1;
      do
      {
        v96 = v95;
        v95 = v91;
        v97 = *(v96 + 208);
        if (v97 < *v96 || *v96 >= v97 && ((v118 = *(v96 + 408), v119 = *(v96 + 200), v118 < v119) || v119 >= v118 && *(v96 + 232) < *(v96 + 24)))
        {
          v329 = *(v91 + 8);
          v98 = *(v91 + 24);
          v313 = *(v91 + 64);
          v301 = *(v91 + 32);
          v307 = *(v91 + 48);
          v99 = *(v96 + 280);
          v100 = *(v96 + 304);
          v264 = *(v96 + 288);
          *(v96 + 288) = 0;
          *(v96 + 296) = 0;
          *(v96 + 280) = 0;
          *&v335[12] = *(v96 + 316);
          *v335 = v100;
          v101 = *(v96 + 336);
          v270 = *(v96 + 344);
          *(v96 + 336) = 0;
          *(v96 + 344) = 0;
          v292 = *(v96 + 360);
          v283 = *(v96 + 368);
          *(v96 + 352) = 0;
          *(v96 + 360) = 0;
          *(v96 + 368) = 0;
          *(v96 + 376) = 0;
          v276 = *(v96 + 384);
          v323 = *(v96 + 392);
          v102 = *(v96 + 408);
          for (m = v94; ; m -= 208)
          {
            v104 = a1 + m;
            v105 = *(a1 + m + 48);
            *(v104 + 240) = *(a1 + m + 32);
            *(v104 + 256) = v105;
            *(v104 + 272) = *(a1 + m + 64);
            v106 = *(a1 + m + 16);
            *(v104 + 208) = *(a1 + m);
            *(v104 + 224) = v106;
            v107 = *(a1 + m + 280);
            if (v107)
            {
              *(v104 + 288) = v107;
              operator delete(v107);
              *(v104 + 288) = 0;
              *(v104 + 296) = 0;
            }

            *(v104 + 280) = *(v104 + 72);
            *(v104 + 296) = *(v104 + 88);
            *(v104 + 80) = 0;
            *(v104 + 88) = 0;
            *(v104 + 72) = 0;
            *(v104 + 304) = *(v104 + 96);
            *(v104 + 316) = *(v104 + 108);
            v108 = *(v104 + 336);
            if (v108)
            {
              v109 = a1 + m;
              *(a1 + m + 344) = v108;
              operator delete(v108);
              *(v109 + 344) = 0;
              *(v109 + 352) = 0;
            }

            *(v104 + 336) = *(v104 + 128);
            v110 = a1 + m;
            *(a1 + m + 352) = *(a1 + m + 144);
            *(v104 + 128) = 0;
            *(v104 + 136) = 0;
            *(v104 + 144) = 0;
            v111 = *(a1 + m + 360);
            if (v111)
            {
              *(v110 + 368) = v111;
              operator delete(v111);
              *(v110 + 368) = 0;
              *(v110 + 376) = 0;
            }

            *(v110 + 360) = *(v110 + 152);
            v112 = *(v110 + 168);
            v113 = *(v110 + 176);
            *(v110 + 160) = 0;
            *(v110 + 168) = 0;
            *(v110 + 152) = 0;
            *(v110 + 376) = v112;
            *(v110 + 384) = v113;
            *(v110 + 392) = *(v110 + 184);
            *(v110 + 408) = *(v110 + 200);
            if (!m)
            {
              break;
            }

            v114 = a1 + m;
            v115 = *(a1 + m - 208);
            if (v97 >= v115)
            {
              if (v115 < v97 || (v116 = *(v114 - 8), v102 >= v116) && (v116 < v102 || v98 >= *(v114 - 184)))
              {
                v117 = a1 + m;
                goto LABEL_188;
              }
            }
          }

          v117 = a1;
LABEL_188:
          v120 = a1 + m;
          *v117 = v97;
          *(v117 + 8) = v329;
          *(v117 + 24) = v98;
          *(v117 + 32) = v301;
          *(v117 + 48) = v307;
          *(v117 + 64) = v313;
          v121 = *(a1 + m + 72);
          if (v121)
          {
            *(v117 + 80) = v121;
            operator delete(v121);
            *(v120 + 80) = 0;
            *(v120 + 88) = 0;
          }

          *(v120 + 72) = v99;
          *(v117 + 80) = v264;
          *(v120 + 108) = *&v335[12];
          *(v120 + 96) = *v335;
          v122 = *(v120 + 128);
          if (v122)
          {
            *(v117 + 136) = v122;
            operator delete(v122);
            *(v120 + 136) = 0;
            *(v120 + 144) = 0;
          }

          *(v120 + 128) = v101;
          *(v117 + 136) = v270;
          v123 = *(v120 + 152);
          if (v123)
          {
            *(v117 + 160) = v123;
            operator delete(v123);
            *(v120 + 160) = 0;
            *(v120 + 168) = 0;
          }

          *(v120 + 152) = v292;
          *(v117 + 160) = v283;
          *(v117 + 176) = v276;
          *(v120 + 184) = v323;
          *(a1 + m + 200) = v102;
        }

        v91 = v95 + 208;
        v94 += 208;
      }

      while (v95 + 208 != v288);
    }
  }

  else if (!v93)
  {
    do
    {
      v220 = a1;
      a1 = v91;
      v221 = *(v220 + 208);
      if (v221 < *v220 || *v220 >= v221 && ((v241 = *(v220 + 408), v242 = *(v220 + 200), v241 < v242) || v242 >= v241 && *(v220 + 232) < *(v220 + 24)))
      {
        v332 = *(v91 + 8);
        v222 = *(v91 + 24);
        v316 = *(v91 + 64);
        v304 = *(v91 + 32);
        v310 = *(v91 + 48);
        v223 = *(v220 + 280);
        v224 = *(v220 + 296);
        *(v220 + 288) = 0;
        *(v220 + 296) = 0;
        *(v220 + 280) = 0;
        *&v338[12] = *(v220 + 316);
        *v338 = *(v220 + 304);
        v280 = v223;
        v287 = *(v220 + 336);
        v225 = *(v220 + 352);
        *(v220 + 336) = 0;
        *(v220 + 344) = 0;
        *(v220 + 352) = 0;
        v296 = *(v220 + 360);
        *(v220 + 360) = 0;
        *(v220 + 368) = 0;
        v226 = *(v220 + 376);
        v227 = *(v220 + 384);
        *(v220 + 376) = 0;
        v326 = *(v220 + 392);
        v228 = *(v220 + 408);
        while (1)
        {
          v229 = v220;
          v230 = *(v220 + 48);
          *(v220 + 240) = *(v220 + 32);
          *(v220 + 256) = v230;
          *(v220 + 272) = *(v220 + 64);
          v231 = *(v220 + 16);
          *(v220 + 208) = *v220;
          *(v220 + 224) = v231;
          v232 = *(v220 + 280);
          if (v232)
          {
            *(v220 + 288) = v232;
            operator delete(v232);
            *(v229 + 288) = 0;
            *(v229 + 296) = 0;
          }

          *(v229 + 280) = *(v229 + 72);
          *(v229 + 296) = *(v229 + 88);
          *(v229 + 80) = 0;
          *(v229 + 88) = 0;
          *(v229 + 72) = 0;
          *(v229 + 304) = *(v229 + 96);
          *(v229 + 316) = *(v229 + 108);
          v233 = *(v229 + 336);
          if (v233)
          {
            *(v229 + 344) = v233;
            operator delete(v233);
            *(v229 + 344) = 0;
            *(v229 + 352) = 0;
          }

          *(v229 + 336) = *(v229 + 128);
          *(v229 + 352) = *(v229 + 144);
          *(v229 + 136) = 0;
          *(v229 + 144) = 0;
          *(v229 + 128) = 0;
          v234 = *(v229 + 360);
          if (v234)
          {
            *(v229 + 368) = v234;
            operator delete(v234);
            *(v229 + 368) = 0;
            *(v229 + 376) = 0;
          }

          v220 = v229 - 208;
          v235 = *(v229 - 208);
          *(v229 + 360) = *(v229 + 152);
          v236 = *(v229 + 176);
          *(v229 + 376) = *(v229 + 168);
          *(v229 + 160) = 0;
          *(v229 + 168) = 0;
          *(v229 + 152) = 0;
          *(v229 + 384) = v236;
          *(v229 + 408) = *(v229 + 200);
          *(v229 + 392) = *(v229 + 184);
          if (v221 >= v235)
          {
            if (v235 < v221)
            {
              break;
            }

            v237 = *(v229 - 8);
            if (v228 >= v237 && (v237 < v228 || v222 >= *(v229 - 184)))
            {
              break;
            }
          }
        }

        *v229 = v221;
        *(v229 + 8) = v332;
        *(v229 + 24) = v222;
        *(v229 + 32) = v304;
        *(v229 + 48) = v310;
        *(v229 + 64) = v316;
        v238 = *(v229 + 72);
        if (v238)
        {
          *(v229 + 80) = v238;
          operator delete(v238);
        }

        *(v229 + 72) = v280;
        *(v229 + 88) = v224;
        *(v229 + 96) = *v338;
        *(v229 + 108) = *&v338[12];
        v239 = *(v229 + 128);
        if (v239)
        {
          *(v229 + 136) = v239;
          operator delete(v239);
        }

        *(v229 + 128) = v287;
        *(v229 + 144) = v225;
        v240 = *(v229 + 152);
        if (v240)
        {
          *(v229 + 160) = v240;
          operator delete(v240);
        }

        *(v229 + 152) = v296;
        *(v229 + 168) = v226;
        *(v229 + 176) = v227;
        *(v229 + 184) = v326;
        *(v229 + 200) = v228;
        a2 = v288;
      }

      v91 = a1 + 208;
    }

    while (a1 + 208 != a2);
  }

LABEL_315:
  v219 = *MEMORY[0x277D85DE8];
}

double std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_0 &,operations_research::sat::DiffnEnergyEvent *,0>(double *a1, uint64_t *a2, uint64_t a3, double result)
{
  v5 = *a2;
  if (*a2 < *a1 || *a1 >= v5 && ((result = *(a2 + 25), v9 = a1[25], result < v9) || v9 >= result && a2[3] < *(a1 + 3)))
  {
    if (*a3 < v5 || v5 >= *a3 && ((v11 = *(a3 + 200), v12 = *(a2 + 25), v11 < v12) || v12 >= v11 && *(a3 + 24) < a2[3]))
    {
      v6 = a3;
    }

    else
    {
      *&result = std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>(a1, a2).n128_u64[0];
      v6 = a3;
      if (*a3 >= *a2)
      {
        if (*a2 < *a3)
        {
          return result;
        }

        result = *(a3 + 200);
        v14 = *(a2 + 25);
        if (result >= v14 && (v14 < result || *(a3 + 24) >= a2[3]))
        {
          return result;
        }
      }

      a1 = a2;
    }

LABEL_5:
    *&result = std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>(a1, v6).n128_u64[0];
    return result;
  }

  if (*a3 < v5 || v5 >= *a3 && ((result = *(a3 + 200), v10 = *(a2 + 25), result < v10) || v10 >= result && *(a3 + 24) < a2[3]))
  {
    v7 = a1;
    *&result = std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>(a2, a3).n128_u64[0];
    a1 = v7;
    if (*a2 < *v7 || *v7 >= *a2 && ((result = *(a2 + 25), v13 = v7[25], result < v13) || v13 >= result && a2[3] < *(v7 + 3)))
    {
      v6 = a2;

      goto LABEL_5;
    }
  }

  return result;
}

double std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_0 &,operations_research::sat::DiffnEnergyEvent *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_0 &,operations_research::sat::DiffnEnergyEvent *,0>(a1, a2, a3, a5);
  if (*a4 < *a3 || *a3 >= *a4 && ((result = *(a4 + 200), v10 = *(a3 + 200), result < v10) || v10 >= result && *(a4 + 24) < *(a3 + 24)))
  {
    *&result = std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>(a3, a4).n128_u64[0];
    if (*a3 < *a2 || *a2 >= *a3 && ((result = *(a3 + 200), v11 = *(a2 + 200), result < v11) || v11 >= result && *(a3 + 24) < *(a2 + 24)))
    {
      *&result = std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>(a2, a3).n128_u64[0];
      if (*a2 < *a1 || *a1 >= *a2 && ((result = *(a2 + 200), v12 = *(a1 + 200), result < v12) || v12 >= result && *(a2 + 24) < *(a1 + 24)))
      {

        *&result = std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>(a1, a2).n128_u64[0];
      }
    }
  }

  return result;
}

double std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_0 &,operations_research::sat::DiffnEnergyEvent *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_0 &,operations_research::sat::DiffnEnergyEvent *,0>(a1, a2, a3, a4, a6);
  if (*a5 < *a4 || *a4 >= *a5 && ((result = *(a5 + 200), v12 = *(a4 + 200), result < v12) || v12 >= result && *(a5 + 24) < *(a4 + 24)))
  {
    *&result = std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>(a4, a5).n128_u64[0];
    if (*a4 < *a3 || *a3 >= *a4 && ((result = *(a4 + 200), v13 = *(a3 + 200), result < v13) || v13 >= result && *(a4 + 24) < *(a3 + 24)))
    {
      *&result = std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>(a3, a4).n128_u64[0];
      if (*a3 < *a2 || *a2 >= *a3 && ((result = *(a3 + 200), v14 = *(a2 + 200), result < v14) || v14 >= result && *(a3 + 24) < *(a2 + 24)))
      {
        *&result = std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>(a2, a3).n128_u64[0];
        if (*a2 < *a1 || *a1 >= *a2 && ((result = *(a2 + 200), v15 = *(a1 + 200), result < v15) || v15 >= result && *(a2 + 24) < *(a1 + 24)))
        {

          *&result = std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>(a1, a2).n128_u64[0];
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_0 &,operations_research::sat::DiffnEnergyEvent *>(uint64_t a1, uint64_t a2, double a3)
{
  v3 = a2;
  v62 = *MEMORY[0x277D85DE8];
  v5 = 0x4EC4EC4EC4EC4EC5 * ((a2 - a1) >> 4);
  if (v5 > 2)
  {
    switch(v5)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_0 &,operations_research::sat::DiffnEnergyEvent *,0>(a1, (a1 + 208), a2 - 208, a3);
        result = 1;
        v12 = *MEMORY[0x277D85DE8];
        return result;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_0 &,operations_research::sat::DiffnEnergyEvent *,0>(a1, a1 + 208, a1 + 416, a2 - 208, a3);
        result = 1;
        v44 = *MEMORY[0x277D85DE8];
        return result;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_0 &,operations_research::sat::DiffnEnergyEvent *,0>(a1, a1 + 208, a1 + 416, a1 + 624, a2 - 208, a3);
        result = 1;
        v8 = *MEMORY[0x277D85DE8];
        return result;
    }
  }

  else
  {
    if (v5 < 2)
    {
      goto LABEL_3;
    }

    if (v5 == 2)
    {
      v9 = (a2 - 208);
      v10 = *(v3 - 208);
      if (v10 < *a1 || *a1 >= v10 && ((v45 = *(v3 - 8), v46 = *(a1 + 200), v45 < v46) || v46 >= v45 && *(v3 - 184) < *(a1 + 24)))
      {
        std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>(a1, v9);
        result = 1;
        v11 = *MEMORY[0x277D85DE8];
        return result;
      }

LABEL_3:
      result = 1;
      v7 = *MEMORY[0x277D85DE8];
      return result;
    }
  }

  v13 = a1 + 416;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_0 &,operations_research::sat::DiffnEnergyEvent *,0>(a1, (a1 + 208), a1 + 416, a3);
  v14 = a1 + 624;
  if (a1 + 624 == v3)
  {
    goto LABEL_3;
  }

  v15 = 0;
  v16 = 0;
  v17 = 0uLL;
  v48 = v3;
  while (1)
  {
    v18 = *v14;
    if (*v14 < *v13)
    {
      break;
    }

    if (*v13 >= v18)
    {
      v19 = *(v14 + 200);
      v39 = *(v13 + 200);
      if (v19 < v39 || v39 >= v19 && *(v14 + 24) < *(v13 + 24))
      {
        goto LABEL_18;
      }
    }

LABEL_15:
    v13 = v14;
    v15 += 208;
    v14 += 208;
    if (v14 == v3)
    {
      goto LABEL_3;
    }
  }

  v19 = *(v14 + 200);
LABEL_18:
  v20 = 0;
  v21 = *(v14 + 8);
  v22 = *(v14 + 24);
  v57 = *(v14 + 32);
  v58 = *(v14 + 48);
  v50 = *(v14 + 72);
  v59 = *(v14 + 64);
  v23 = *(v14 + 96);
  v49 = *(v14 + 80);
  *(v14 + 72) = 0;
  *(v14 + 80) = 0;
  *(v14 + 88) = 0;
  *&v61[12] = *(v14 + 108);
  v60 = v21;
  *v61 = v23;
  v24 = *(v14 + 128);
  v51 = *(v14 + 136);
  *(v14 + 128) = 0;
  *(v14 + 136) = 0;
  v55 = *(v14 + 152);
  v54 = *(v14 + 160);
  *(v14 + 144) = 0;
  *(v14 + 152) = 0;
  *(v14 + 160) = 0;
  *(v14 + 168) = 0;
  v52 = v24;
  v53 = *(v14 + 176);
  v25 = v15;
  v56 = *(v14 + 184);
  while (1)
  {
    v26 = a1 + v25;
    v27 = *(a1 + v25 + 464);
    *(v26 + 656) = *(a1 + v25 + 448);
    *(v26 + 672) = v27;
    *(v26 + 688) = *(a1 + v25 + 480);
    v28 = *(a1 + v25 + 432);
    *(v26 + 624) = *(a1 + v25 + 416);
    *(v26 + 640) = v28;
    if (v20)
    {
      *(v26 + 704) = v20;
      operator delete(v20);
      v17 = 0uLL;
      *(v26 + 704) = 0u;
    }

    v29 = (v26 + 488);
    *(v26 + 696) = *(v26 + 488);
    *(v26 + 712) = *(v26 + 504);
    *(v26 + 496) = 0;
    *(v26 + 504) = 0;
    *(v26 + 488) = 0;
    *(v26 + 720) = *(v26 + 512);
    *(v26 + 732) = *(v26 + 524);
    v30 = *(v26 + 752);
    if (v30)
    {
      v31 = (a1 + v25 + 760);
      *v31 = v30;
      operator delete(v30);
      v17 = 0uLL;
      *v31 = 0u;
    }

    v32 = (v26 + 544);
    *(v26 + 752) = *(v26 + 544);
    v33 = a1 + v25;
    *(a1 + v25 + 768) = *(a1 + v25 + 560);
    *v32 = 0;
    v32[1] = 0;
    v32[2] = 0;
    v34 = *(a1 + v25 + 776);
    if (v34)
    {
      *(v33 + 784) = v34;
      operator delete(v34);
      v17 = 0uLL;
      *(v33 + 784) = 0u;
    }

    *(v33 + 776) = *(v33 + 568);
    *(v33 + 792) = *(v33 + 584);
    *(v33 + 584) = 0;
    *(v33 + 568) = v17;
    *(v33 + 800) = *(v33 + 592);
    *(v33 + 824) = *(v33 + 616);
    *(v33 + 808) = *(v33 + 600);
    if (v25 == -416)
    {
      break;
    }

    v35 = a1 + v25;
    v36 = *(a1 + v25 + 208);
    if (v18 >= v36)
    {
      if (v36 < v18 || (v37 = *(v35 + 408), v19 >= v37) && (v37 < v19 || v22 >= *(v35 + 232)))
      {
        v38 = a1 + v25 + 416;
        goto LABEL_39;
      }
    }

    v20 = *v29;
    v25 -= 208;
  }

  v38 = a1;
LABEL_39:
  v40 = a1 + v25;
  *v38 = v18;
  *(v38 + 8) = v60;
  *(v38 + 24) = v22;
  *(v38 + 32) = v57;
  *(v38 + 48) = v58;
  *(v38 + 64) = v59;
  v41 = *(a1 + v25 + 488);
  if (v41)
  {
    *(v38 + 80) = v41;
    operator delete(v41);
    *(v40 + 496) = 0;
    *(v40 + 504) = 0;
  }

  *(v40 + 488) = v50;
  *(v38 + 80) = v49;
  *(v40 + 512) = *v61;
  *(v40 + 524) = *&v61[12];
  v42 = *(v40 + 544);
  v3 = v48;
  if (v42)
  {
    *(v38 + 136) = v42;
    operator delete(v42);
    *(v40 + 552) = 0;
    *(v40 + 560) = 0;
  }

  *(v40 + 544) = v52;
  *(v38 + 136) = v51;
  v43 = *(v40 + 568);
  if (v43)
  {
    *(v38 + 160) = v43;
    operator delete(v43);
    *(v40 + 576) = 0;
    *(v40 + 584) = 0;
  }

  *(v40 + 568) = v55;
  *(v38 + 160) = v54;
  *(v38 + 176) = v53;
  *(v40 + 600) = v56;
  *(a1 + v25 + 616) = v19;
  ++v16;
  v17 = 0uLL;
  if (v16 != 8)
  {
    goto LABEL_15;
  }

  result = v14 + 208 == v48;
  v47 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>(__int128 *a1, __int128 *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v33 = a1[2];
  v34 = a1[3];
  v35 = *(a1 + 8);
  v31 = *a1;
  v32 = a1[1];
  v4 = *(a1 + 72);
  v5 = *(a1 + 11);
  *(a1 + 9) = 0;
  *(a1 + 10) = 0;
  *(a1 + 11) = 0;
  *&v36[12] = *(a1 + 108);
  *v36 = a1[6];
  v6 = a1 + 8;
  v26 = v4;
  v27 = a1[8];
  v7 = *(a1 + 18);
  *(a1 + 16) = 0;
  *(a1 + 17) = 0;
  *(a1 + 18) = 0;
  v8 = a1 + 19;
  v9 = *(a1 + 152);
  *(a1 + 19) = 0;
  v10 = *(a1 + 21);
  v11 = *(a1 + 22);
  *(a1 + 20) = 0;
  *(a1 + 21) = 0;
  v30 = *(a1 + 25);
  v28 = v9;
  v29 = *(a1 + 184);
  *a1 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  v14 = a2[3];
  *(a1 + 8) = *(a2 + 8);
  a1[2] = v13;
  a1[3] = v14;
  a1[1] = v12;
  v15 = *(a2 + 11);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 11) = v15;
  *(a2 + 10) = 0;
  *(a2 + 11) = 0;
  *(a2 + 9) = 0;
  v16 = a2[6];
  *(a1 + 108) = *(a2 + 108);
  a1[6] = v16;
  v17 = *(a1 + 16);
  if (v17)
  {
    *(a1 + 17) = v17;
    operator delete(v17);
    *v6 = 0;
    v6[1] = 0;
    v6[2] = 0;
  }

  a1[8] = a2[8];
  *(a1 + 18) = *(a2 + 18);
  *(a2 + 16) = 0;
  *(a2 + 17) = 0;
  *(a2 + 18) = 0;
  v18 = *(a1 + 19);
  if (v18)
  {
    *(a1 + 20) = v18;
    operator delete(v18);
    *v8 = 0;
    v8[1] = 0;
    v8[2] = 0;
  }

  *(a1 + 152) = *(a2 + 152);
  v19 = *(a2 + 22);
  *(a1 + 21) = *(a2 + 21);
  *(a2 + 19) = 0;
  *(a2 + 20) = 0;
  *(a2 + 21) = 0;
  *(a1 + 22) = v19;
  v20 = *(a2 + 184);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 184) = v20;
  a2[2] = v33;
  a2[3] = v34;
  *(a2 + 8) = v35;
  *a2 = v31;
  a2[1] = v32;
  v21 = *(a2 + 9);
  if (v21)
  {
    *(a2 + 10) = v21;
    operator delete(v21);
  }

  *(a2 + 72) = v26;
  *(a2 + 11) = v5;
  a2[6] = *v36;
  *(a2 + 108) = *&v36[12];
  v22 = *(a2 + 16);
  if (v22)
  {
    *(a2 + 17) = v22;
    operator delete(v22);
  }

  a2[8] = v27;
  *(a2 + 18) = v7;
  v23 = *(a2 + 19);
  if (v23)
  {
    *(a2 + 20) = v23;
    operator delete(v23);
  }

  result = v29;
  *(a2 + 152) = v28;
  *(a2 + 21) = v10;
  *(a2 + 22) = v11;
  *(a2 + 184) = v29;
  *(a2 + 25) = v30;
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

void ***std::__exception_guard_exceptions<std::vector<operations_research::sat::DiffnEnergyEvent>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 7);
          if (v6)
          {
            *(v4 - 6) = v6;
            operator delete(v6);
          }

          v7 = *(v4 - 10);
          if (v7)
          {
            *(v4 - 9) = v7;
            operator delete(v7);
          }

          v8 = *(v4 - 17);
          if (v8)
          {
            *(v4 - 16) = v8;
            operator delete(v8);
          }

          v4 -= 208;
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<operations_research::sat::DiffnEnergyEvent>,operations_research::sat::DiffnEnergyEvent*,operations_research::sat::DiffnEnergyEvent*,operations_research::sat::DiffnEnergyEvent*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v16 = a4;
  if (a2 != a3)
  {
    v6 = a2 + 128;
    do
    {
      *v4 = *(v6 - 128);
      v7 = *(v6 - 112);
      v8 = *(v6 - 96);
      v9 = *(v6 - 80);
      *(v4 + 64) = *(v6 - 64);
      *(v4 + 32) = v8;
      *(v4 + 48) = v9;
      *(v4 + 72) = 0;
      *(v4 + 16) = v7;
      *(v4 + 80) = 0;
      *(v4 + 88) = 0;
      v11 = *(v6 - 56);
      v10 = *(v6 - 48);
      if (v10 != v11)
      {
        if (0xAAAAAAAAAAAAAAABLL * ((v10 - v11) >> 3) < 0xAAAAAAAAAAAAAABLL)
        {
          operator new();
        }

        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      v12 = v6 - 128;
      v13 = *(v6 - 32);
      *(v4 + 108) = *(v6 - 20);
      *(v4 + 96) = v13;
      operations_research::sat::LinearExpression::LinearExpression((v4 + 128), v6);
      v14 = *(v6 + 56);
      *(v4 + 200) = *(v6 + 72);
      *(v4 + 184) = v14;
      v4 = v16 + 208;
      v16 += 208;
      v6 += 208;
    }

    while (v12 + 208 != a3);
  }

  return v4;
}

void sub_23CB69688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *v10;
  if (*v10)
  {
    *(v9 + 80) = v12;
    operator delete(v12);
  }

  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<operations_research::sat::DiffnEnergyEvent>,operations_research::sat::DiffnEnergyEvent*>>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_1 &,operations_research::sat::DiffnEnergyEvent *,false>(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v335 = *MEMORY[0x277D85DE8];
LABEL_2:
  v276 = (a2 - 208);
  v235 = a2 - 624;
  v236 = a2 - 416;
  v237 = a2 - 392;
  i = a1;
  v282 = a2;
  while (1)
  {
    a1 = i;
    v8 = a2 - i;
    v9 = 0x4EC4EC4EC4EC4EC5 * ((a2 - i) >> 4);
    if (v9 > 2)
    {
      switch(v9)
      {
        case 3:
          v87 = *MEMORY[0x277D85DE8];

          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_1 &,operations_research::sat::DiffnEnergyEvent *,0>(a1, a1 + 208, v276);
          return;
        case 4:
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_1 &,operations_research::sat::DiffnEnergyEvent *,0>(a1, a1 + 208, a1 + 416);
          v78 = *(a2 - 184);
          v79 = *(a1 + 440);
          if (v78 < v79 || v79 >= v78 && *(a2 - 8) < *(a1 + 616))
          {
            std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>((a1 + 416), v276);
            v80 = *(a1 + 440);
            v81 = *(a1 + 232);
            if (v80 < v81 || v81 >= v80 && *(a1 + 616) < *(a1 + 408))
            {
              std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>((a1 + 208), (a1 + 416));
              v82 = *(a1 + 232);
              v83 = *(a1 + 24);
              if (v82 < v83 || v83 >= v82 && *(a1 + 408) < *(a1 + 200))
              {
                v84 = *MEMORY[0x277D85DE8];
                v85 = (a1 + 208);
                v86 = a1;
                goto LABEL_132;
              }
            }
          }

          goto LABEL_305;
        case 5:
          v91 = *MEMORY[0x277D85DE8];

          std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_1 &,operations_research::sat::DiffnEnergyEvent *,0>(a1, a1 + 208, a1 + 416, a1 + 624, v276);
          return;
      }

      goto LABEL_10;
    }

    if (v9 < 2)
    {
      goto LABEL_305;
    }

    if (v9 == 2)
    {
      break;
    }

LABEL_10:
    if (v8 <= 4991)
    {
      v92 = a1 + 208;
      v94 = a1 == a2 || v92 == a2;
      if (a4)
      {
        if (!v94)
        {
          v95 = 0;
          v96 = a1;
          do
          {
            v97 = v96;
            v96 = v92;
            v98 = *(v97 + 232);
            v99 = *(v97 + 24);
            if (v98 < v99 || v99 >= v98 && *(v97 + 408) < *(v97 + 200))
            {
              v100 = *(v96 + 24);
              v324 = *(v96 + 16);
              v318 = *v96;
              v301 = *(v96 + 64);
              v289 = *(v96 + 32);
              v295 = *(v96 + 48);
              v101 = *(v97 + 280);
              v102 = *(v97 + 304);
              v258 = *(v97 + 288);
              *(v97 + 288) = 0;
              *(v97 + 296) = 0;
              *(v97 + 280) = 0;
              *&v329[12] = *(v97 + 316);
              *v329 = v102;
              v103 = *(v97 + 336);
              v104 = *(v97 + 344);
              *(v97 + 336) = 0;
              *(v97 + 344) = 0;
              v277 = *(v97 + 360);
              v265 = v104;
              v271 = *(v97 + 368);
              *(v97 + 352) = 0;
              *(v97 + 360) = 0;
              *(v97 + 368) = 0;
              *(v97 + 376) = 0;
              v105 = *(v97 + 384);
              v312 = *(v97 + 392);
              v106 = v95;
              v107 = *(v97 + 408);
              while (1)
              {
                v108 = a1 + v106;
                v109 = *(a1 + v106 + 48);
                *(v108 + 240) = *(a1 + v106 + 32);
                *(v108 + 256) = v109;
                *(v108 + 272) = *(a1 + v106 + 64);
                v110 = *(a1 + v106 + 16);
                *(v108 + 208) = *(a1 + v106);
                *(v108 + 224) = v110;
                v111 = *(a1 + v106 + 280);
                if (v111)
                {
                  *(v108 + 288) = v111;
                  operator delete(v111);
                  *(v108 + 288) = 0;
                  *(v108 + 296) = 0;
                }

                *(v108 + 280) = *(v108 + 72);
                *(v108 + 296) = *(v108 + 88);
                *(v108 + 80) = 0;
                *(v108 + 88) = 0;
                *(v108 + 72) = 0;
                *(v108 + 304) = *(v108 + 96);
                *(v108 + 316) = *(v108 + 108);
                v112 = *(v108 + 336);
                if (v112)
                {
                  v113 = a1 + v106;
                  *(a1 + v106 + 344) = v112;
                  operator delete(v112);
                  *(v113 + 344) = 0;
                  *(v113 + 352) = 0;
                }

                *(v108 + 336) = *(v108 + 128);
                v114 = a1 + v106;
                *(a1 + v106 + 352) = *(a1 + v106 + 144);
                *(v108 + 128) = 0;
                *(v108 + 136) = 0;
                *(v108 + 144) = 0;
                v115 = *(a1 + v106 + 360);
                if (v115)
                {
                  *(v114 + 368) = v115;
                  operator delete(v115);
                  *(v114 + 368) = 0;
                  *(v114 + 376) = 0;
                }

                *(v114 + 360) = *(v114 + 152);
                v116 = *(v114 + 168);
                v117 = *(v114 + 176);
                *(v114 + 160) = 0;
                *(v114 + 168) = 0;
                *(v114 + 152) = 0;
                *(v114 + 376) = v116;
                *(v114 + 384) = v117;
                *(v114 + 392) = *(v114 + 184);
                *(v114 + 408) = *(v114 + 200);
                if (!v106)
                {
                  break;
                }

                v118 = *(a1 + v106 - 184);
                if (v100 >= v118 && (v118 < v100 || v107 >= *(a1 + v106 - 8)))
                {
                  v119 = a1 + v106;
                  goto LABEL_167;
                }

                v106 -= 208;
              }

              v119 = a1;
LABEL_167:
              v120 = a1 + v106;
              *v119 = v318;
              *(v119 + 16) = v324;
              *(v119 + 24) = v100;
              *(v119 + 32) = v289;
              *(v119 + 48) = v295;
              *(v119 + 64) = v301;
              v121 = *(a1 + v106 + 72);
              if (v121)
              {
                *(v119 + 80) = v121;
                operator delete(v121);
                *(v120 + 80) = 0;
                *(v120 + 88) = 0;
              }

              *(v120 + 72) = v101;
              *(v119 + 80) = v258;
              *(v120 + 108) = *&v329[12];
              *(v120 + 96) = *v329;
              v122 = *(v120 + 128);
              if (v122)
              {
                *(v119 + 136) = v122;
                operator delete(v122);
                *(v120 + 136) = 0;
                *(v120 + 144) = 0;
              }

              *(v120 + 128) = v103;
              *(v119 + 136) = v265;
              v123 = *(v120 + 152);
              if (v123)
              {
                *(v119 + 160) = v123;
                operator delete(v123);
                *(v120 + 160) = 0;
                *(v120 + 168) = 0;
              }

              *(v120 + 152) = v277;
              *(v119 + 160) = v271;
              *(v119 + 176) = v105;
              *(v120 + 184) = v312;
              *(a1 + v106 + 200) = v107;
              a2 = v282;
            }

            v92 = v96 + 208;
            v95 += 208;
          }

          while (v96 + 208 != a2);
        }
      }

      else if (!v94)
      {
        v213 = a1 + 392;
        do
        {
          v214 = a1;
          a1 = v92;
          v215 = *(v214 + 232);
          v216 = *(v214 + 24);
          if (v215 < v216 || v216 >= v215 && *(v214 + 408) < *(v214 + 200))
          {
            v217 = *(a1 + 24);
            v326 = *(a1 + 16);
            v321 = *a1;
            v304 = *(a1 + 64);
            v292 = *(a1 + 32);
            v298 = *(a1 + 48);
            v250 = *(v214 + 280);
            v245 = *(v214 + 296);
            *(v214 + 288) = 0;
            *(v214 + 296) = 0;
            *(v214 + 280) = 0;
            *&v332[12] = *(v214 + 316);
            *v332 = *(v214 + 304);
            v262 = *(v214 + 336);
            v255 = *(v214 + 352);
            *(v214 + 336) = 0;
            *(v214 + 344) = 0;
            *(v214 + 352) = 0;
            v281 = *(v214 + 360);
            *(v214 + 360) = 0;
            *(v214 + 368) = 0;
            v275 = *(v214 + 376);
            v269 = *(v214 + 384);
            *(v214 + 376) = 0;
            v315 = *(v214 + 392);
            v218 = v213;
            v219 = *(v214 + 408);
            while (1)
            {
              v220 = *(v218 - 392);
              *(v218 - 168) = *(v218 - 376);
              v221 = *(v218 - 344);
              *(v218 - 152) = *(v218 - 360);
              *(v218 - 136) = v221;
              *(v218 - 120) = *(v218 - 328);
              *(v218 - 184) = v220;
              v222 = *(v218 - 112);
              if (v222)
              {
                *(v218 - 104) = v222;
                operator delete(v222);
                *(v218 - 104) = 0;
                *(v218 - 96) = 0;
              }

              v223 = (v218 - 320);
              *(v218 - 112) = *(v218 - 320);
              *(v218 - 96) = *(v218 - 304);
              v223[2] = 0;
              *(v218 - 312) = 0;
              *v223 = 0;
              *(v218 - 88) = *(v218 - 296);
              *(v218 - 76) = *(v218 - 284);
              v224 = *(v218 - 56);
              if (v224)
              {
                *(v218 - 48) = v224;
                operator delete(v224);
                *(v218 - 48) = 0;
                *(v218 - 40) = 0;
              }

              v225 = (v218 - 264);
              *(v218 - 56) = *(v218 - 264);
              *(v218 - 40) = *(v218 - 248);
              v225[1] = 0;
              v225[2] = 0;
              *v225 = 0;
              v226 = *(v218 - 32);
              if (v226)
              {
                *(v218 - 24) = v226;
                operator delete(v226);
                *(v218 - 24) = 0;
                *(v218 - 16) = 0;
              }

              *(v218 - 32) = *(v218 - 240);
              v227 = *(v218 - 224);
              v228 = *(v218 - 216);
              *(v218 - 232) = 0;
              *(v218 - 224) = 0;
              *(v218 - 240) = 0;
              *(v218 - 16) = v227;
              *(v218 - 8) = v228;
              *v218 = *(v218 - 208);
              *(v218 + 16) = *(v218 - 192);
              v229 = *(v218 - 576);
              if (v217 >= v229 && (v229 < v217 || v219 >= *(v218 - 400)))
              {
                break;
              }

              v218 -= 208;
            }

            *(v218 - 376) = v326;
            *(v218 - 392) = v321;
            *(v218 - 368) = v217;
            v230 = v218 - 360;
            *(v230 + 32) = v304;
            *v230 = v292;
            *(v230 + 16) = v298;
            v231 = *v223;
            if (*v223)
            {
              *(v218 - 312) = v231;
              operator delete(v231);
            }

            *v223 = v250;
            *(v218 - 304) = v245;
            *(v218 - 284) = *&v332[12];
            *(v218 - 296) = *v332;
            v232 = *v225;
            a2 = v282;
            if (*v225)
            {
              *(v218 - 256) = v232;
              operator delete(v232);
            }

            *v225 = v262;
            *(v218 - 248) = v255;
            v233 = *(v218 - 240);
            if (v233)
            {
              *(v218 - 232) = v233;
              operator delete(v233);
            }

            *(v218 - 240) = v281;
            *(v218 - 224) = v275;
            *(v218 - 216) = v269;
            *(v218 - 208) = v315;
            *(v218 - 192) = v219;
          }

          v92 = a1 + 208;
          v213 += 208;
        }

        while (a1 + 208 != a2);
      }

LABEL_305:
      v234 = *MEMORY[0x277D85DE8];
      return;
    }

    if (!a3)
    {
      if (a1 == a2)
      {
        goto LABEL_305;
      }

      v124 = (v9 - 2) >> 1;
      v278 = v124;
      while (2)
      {
        v125 = v124;
        v126 = 208 * v124;
        if (v278 >= 0x4EC4EC4EC4EC4EC5 * (v126 >> 4))
        {
          v127 = (0x9D89D89D89D89D8ALL * (v126 >> 4)) | 1;
          v128 = a1 + 208 * v127;
          if ((0x9D89D89D89D89D8ALL * (v126 >> 4) + 2) < v9)
          {
            v129 = *(v128 + 24);
            v130 = *(v128 + 232);
            if (v129 < v130 || v130 >= v129 && *(v128 + 200) < *(v128 + 408))
            {
              v128 += 208;
              v127 = 0x9D89D89D89D89D8ALL * (v126 >> 4) + 2;
            }
          }

          v131 = a1 + v126;
          v132 = *(v128 + 24);
          v133 = *(v131 + 24);
          if (v132 >= v133)
          {
            if (v133 >= v132)
            {
              v134 = *(v131 + 200);
              if (*(v128 + 200) >= v134)
              {
                goto LABEL_187;
              }
            }

            else
            {
              v134 = *(v131 + 200);
LABEL_187:
              v135 = 0;
              v325 = *(v131 + 16);
              v319 = *v131;
              v302 = *(v131 + 64);
              v290 = *(v131 + 32);
              v296 = *(v131 + 48);
              v243 = *(v131 + 72);
              v240 = *(v131 + 88);
              *(v131 + 72) = 0;
              *(v131 + 80) = 0;
              *(v131 + 88) = 0;
              *&v330[12] = *(v131 + 108);
              *v330 = *(v131 + 96);
              v253 = *(v131 + 128);
              v248 = *(v131 + 144);
              *(v131 + 128) = 0;
              *(v131 + 136) = 0;
              v272 = *(v131 + 152);
              *(v131 + 144) = 0;
              *(v131 + 152) = 0;
              v266 = *(v131 + 168);
              v259 = *(v131 + 176);
              *(v131 + 160) = 0;
              *(v131 + 168) = 0;
              v313 = *(v131 + 184);
              while (1)
              {
                *v131 = *v128;
                v136 = *(v128 + 16);
                v137 = *(v128 + 32);
                v138 = *(v128 + 48);
                *(v131 + 64) = *(v128 + 64);
                *(v131 + 32) = v137;
                *(v131 + 48) = v138;
                *(v131 + 16) = v136;
                if (v135)
                {
                  *(v131 + 80) = v135;
                  operator delete(v135);
                  *(v131 + 72) = 0;
                  *(v131 + 80) = 0;
                  *(v131 + 88) = 0;
                }

                *(v131 + 72) = *(v128 + 72);
                *(v131 + 88) = *(v128 + 88);
                *(v128 + 72) = 0;
                *(v128 + 80) = 0;
                *(v128 + 88) = 0;
                v139 = *(v128 + 96);
                v140 = *(v131 + 128);
                *(v131 + 108) = *(v128 + 108);
                *(v131 + 96) = v139;
                if (v140)
                {
                  *(v131 + 136) = v140;
                  operator delete(v140);
                  *(v131 + 128) = 0;
                  *(v131 + 136) = 0;
                  *(v131 + 144) = 0;
                }

                *(v131 + 128) = *(v128 + 128);
                *(v131 + 144) = *(v128 + 144);
                *(v128 + 128) = 0;
                *(v128 + 136) = 0;
                *(v128 + 144) = 0;
                v141 = *(v131 + 152);
                if (v141)
                {
                  *(v131 + 160) = v141;
                  operator delete(v141);
                  *(v131 + 152) = 0;
                  *(v131 + 160) = 0;
                  *(v131 + 168) = 0;
                }

                *(v131 + 152) = *(v128 + 152);
                *(v131 + 168) = *(v128 + 168);
                *(v128 + 152) = 0;
                *(v128 + 160) = 0;
                *(v128 + 168) = 0;
                *(v131 + 176) = *(v128 + 176);
                v142 = *(v128 + 184);
                *(v131 + 200) = *(v128 + 200);
                *(v131 + 184) = v142;
                if (v278 < v127)
                {
                  break;
                }

                v143 = 2 * v127;
                v127 = (2 * v127) | 1;
                v144 = a1 + 208 * v127;
                v145 = v143 + 2;
                if (v145 < v9)
                {
                  v146 = *(v144 + 24);
                  v147 = *(v144 + 232);
                  if (v146 < v147 || v147 >= v146 && *(v144 + 200) < *(v144 + 408))
                  {
                    v144 += 208;
                    v127 = v145;
                  }
                }

                v148 = *(v144 + 24);
                if (v148 < v133 || v133 >= v148 && *(v144 + 200) < v134)
                {
                  break;
                }

                v135 = *(v128 + 72);
                v131 = v128;
                v128 = v144;
              }

              *v128 = v319;
              *(v128 + 16) = v325;
              *(v128 + 24) = v133;
              *(v128 + 32) = v290;
              *(v128 + 48) = v296;
              *(v128 + 64) = v302;
              v149 = *(v128 + 72);
              if (v149)
              {
                *(v128 + 80) = v149;
                operator delete(v149);
              }

              *(v128 + 72) = v243;
              *(v128 + 88) = v240;
              *(v128 + 96) = *v330;
              *(v128 + 108) = *&v330[12];
              v150 = *(v128 + 128);
              if (v150)
              {
                *(v128 + 136) = v150;
                operator delete(v150);
              }

              *(v128 + 128) = v253;
              *(v128 + 144) = v248;
              v151 = *(v128 + 152);
              if (v151)
              {
                *(v128 + 160) = v151;
                operator delete(v151);
              }

              *(v128 + 152) = v272;
              *(v128 + 168) = v266;
              *(v128 + 176) = v259;
              *(v128 + 184) = v313;
              *(v128 + 200) = v134;
            }
          }
        }

        v124 = v125 - 1;
        if (v125)
        {
          continue;
        }

        break;
      }

      v152 = 0x4EC4EC4EC4EC4EC5 * (v8 >> 4);
      v153 = v282;
      while (2)
      {
        v155 = 0;
        v291 = *a1;
        v244 = *(a1 + 72);
        v306 = *(a1 + 64);
        v303 = *(a1 + 32);
        v305 = *(a1 + 48);
        v297 = *(a1 + 16);
        v156 = *(a1 + 88);
        v241 = *(a1 + 80);
        *(a1 + 80) = 0;
        *(a1 + 88) = 0;
        *(a1 + 72) = 0;
        *&v314[12] = *(a1 + 108);
        *v314 = *(a1 + 96);
        v260 = *(a1 + 128);
        v254 = *(a1 + 136);
        *(a1 + 128) = 0;
        *(a1 + 136) = 0;
        v249 = *(a1 + 144);
        v283 = *(a1 + 152);
        v279 = *(a1 + 160);
        v273 = *(a1 + 168);
        *(a1 + 144) = 0;
        *(a1 + 152) = 0;
        *(a1 + 160) = 0;
        *(a1 + 168) = 0;
        v267 = *(a1 + 176);
        v286 = *(a1 + 200);
        v157 = a1;
        v285 = *(a1 + 184);
        do
        {
          v160 = v157 + 208 * v155;
          v161 = v160 + 208;
          v162 = 2 * v155;
          v155 = (2 * v155) | 1;
          v163 = v162 + 2;
          if (v163 < v152)
          {
            v164 = *(v160 + 232);
            v165 = *(v160 + 440);
            if (v164 < v165 || v165 >= v164 && *(v160 + 408) < *(v160 + 616))
            {
              v161 = v160 + 416;
              v155 = v163;
            }
          }

          *v157 = *v161;
          v166 = *(v161 + 16);
          v167 = *(v161 + 32);
          v168 = *(v161 + 48);
          *(v157 + 64) = *(v161 + 64);
          *(v157 + 32) = v167;
          *(v157 + 48) = v168;
          *(v157 + 16) = v166;
          v169 = *(v157 + 72);
          if (v169)
          {
            *(v157 + 80) = v169;
            operator delete(v169);
            *(v157 + 72) = 0;
            *(v157 + 80) = 0;
            *(v157 + 88) = 0;
          }

          v170 = (v161 + 72);
          *(v157 + 72) = *(v161 + 72);
          *(v157 + 88) = *(v161 + 88);
          *(v161 + 72) = 0;
          *(v161 + 80) = 0;
          *(v161 + 88) = 0;
          v171 = *(v161 + 96);
          v172 = *(v157 + 128);
          *(v157 + 108) = *(v161 + 108);
          *(v157 + 96) = v171;
          if (v172)
          {
            *(v157 + 136) = v172;
            operator delete(v172);
            *(v157 + 128) = 0;
            *(v157 + 136) = 0;
            *(v157 + 144) = 0;
          }

          *(v157 + 128) = *(v161 + 128);
          *(v157 + 144) = *(v161 + 144);
          *(v161 + 128) = 0;
          *(v161 + 136) = 0;
          *(v161 + 144) = 0;
          v173 = *(v157 + 152);
          if (v173)
          {
            *(v157 + 160) = v173;
            operator delete(v173);
            *(v157 + 152) = 0;
            *(v157 + 160) = 0;
            *(v157 + 168) = 0;
          }

          v158 = (v161 + 152);
          *(v157 + 152) = *(v161 + 152);
          *(v157 + 168) = *(v161 + 168);
          *(v161 + 152) = 0;
          *(v161 + 160) = 0;
          *(v161 + 168) = 0;
          *(v157 + 176) = *(v161 + 176);
          v159 = *(v161 + 184);
          *(v157 + 200) = *(v161 + 200);
          *(v157 + 184) = v159;
          v157 = v161;
        }

        while (v155 <= ((v152 - 2) >> 1));
        v174 = v153 - 13;
        if (v161 == v153 - 13)
        {
          *v161 = v291;
          *(v161 + 64) = v306;
          *(v161 + 32) = v303;
          *(v161 + 48) = v305;
          *(v161 + 16) = v297;
          v210 = *(v161 + 72);
          if (v210)
          {
            *(v161 + 80) = v210;
            operator delete(v210);
          }

          *(v161 + 72) = v244;
          *(v161 + 80) = v241;
          *(v161 + 88) = v156;
          *(v161 + 108) = *&v314[12];
          *(v161 + 96) = *v314;
          v211 = *(v161 + 128);
          if (v211)
          {
            *(v161 + 136) = v211;
            operator delete(v211);
          }

          *(v161 + 128) = v260;
          *(v161 + 136) = v254;
          *(v161 + 144) = v249;
          v212 = *(v161 + 152);
          if (v212)
          {
            *(v161 + 160) = v212;
            operator delete(v212);
          }

          *(v161 + 152) = v283;
          *(v161 + 160) = v279;
          *(v161 + 168) = v273;
          *(v161 + 176) = v267;
          *(v161 + 200) = v286;
          *(v161 + 184) = v285;
        }

        else
        {
          *v161 = *(v153 - 13);
          v175 = *(v153 - 12);
          v176 = *(v153 - 11);
          v177 = *(v153 - 10);
          *(v161 + 64) = *(v153 - 18);
          *(v161 + 32) = v176;
          *(v161 + 48) = v177;
          *(v161 + 16) = v175;
          v178 = *(v161 + 72);
          if (v178)
          {
            *(v161 + 80) = v178;
            operator delete(v178);
            *v170 = 0;
            *(v161 + 80) = 0;
            *(v161 + 88) = 0;
          }

          *(v161 + 72) = *(v153 - 136);
          *(v161 + 88) = *(v153 - 15);
          *(v153 - 16) = 0;
          *(v153 - 15) = 0;
          *(v153 - 17) = 0;
          v179 = *(v153 - 7);
          *(v161 + 108) = *(v153 - 100);
          *(v161 + 96) = v179;
          v180 = *(v161 + 128);
          if (v180)
          {
            *(v161 + 136) = v180;
            operator delete(v180);
            *(v161 + 128) = 0;
            *(v161 + 136) = 0;
            *(v161 + 144) = 0;
          }

          v181 = v153 - 5;
          *(v161 + 128) = *(v153 - 5);
          *(v161 + 144) = *(v153 - 8);
          *v181 = 0;
          v181[1] = 0;
          v181[2] = 0;
          v182 = *(v161 + 152);
          if (v182)
          {
            *(v161 + 160) = v182;
            operator delete(v182);
            *v158 = 0;
            *(v161 + 160) = 0;
            *(v161 + 168) = 0;
          }

          *(v161 + 152) = *(v153 - 56);
          *(v161 + 168) = *(v153 - 5);
          *(v153 - 7) = 0;
          *(v153 - 6) = 0;
          *(v153 - 5) = 0;
          *(v161 + 176) = *(v153 - 4);
          v183 = *(v153 - 24);
          *(v161 + 200) = *(v153 - 1);
          *(v161 + 184) = v183;
          *(v153 - 18) = v306;
          *(v153 - 11) = v303;
          *(v153 - 10) = v305;
          *(v153 - 12) = v297;
          *v174 = v291;
          v184 = *(v153 - 17);
          if (v184)
          {
            *(v153 - 16) = v184;
            operator delete(v184);
          }

          v185 = v153 - 7;
          *(v153 - 17) = v244;
          *(v153 - 16) = v241;
          *(v153 - 15) = v156;
          *(v185 + 12) = *&v314[12];
          *v185 = *v314;
          v186 = *(v153 - 10);
          if (v186)
          {
            *(v153 - 9) = v186;
            operator delete(v186);
          }

          *(v153 - 10) = v260;
          *(v153 - 9) = v254;
          *(v153 - 8) = v249;
          v187 = *(v153 - 7);
          if (v187)
          {
            *(v153 - 6) = v187;
            operator delete(v187);
          }

          v188 = v153 - 24;
          *(v153 - 7) = v283;
          *(v153 - 6) = v279;
          *(v153 - 5) = v273;
          *(v153 - 4) = v267;
          *(v188 + 2) = v286;
          *v188 = v285;
          v189 = v161 + 208 - a1;
          if (v189 >= 209)
          {
            v190 = (0x4EC4EC4EC4EC4EC5 * (v189 >> 4) - 2) >> 1;
            v191 = a1 + 208 * v190;
            v192 = *(v191 + 24);
            v193 = *(v161 + 24);
            if (v192 >= v193)
            {
              if (v193 >= v192)
              {
                v194 = *(v161 + 200);
                if (*(v191 + 200) < v194)
                {
                  goto LABEL_242;
                }
              }
            }

            else
            {
              v194 = *(v161 + 200);
LABEL_242:
              v309 = *(v161 + 16);
              v308 = *v161;
              v334 = *(v161 + 64);
              v331 = *(v161 + 32);
              v333 = *(v161 + 48);
              v261 = *(v161 + 72);
              v195 = *(v161 + 88);
              *(v161 + 80) = 0;
              *(v161 + 88) = 0;
              *v170 = 0;
              *&v320[12] = *(v161 + 108);
              *v320 = *(v161 + 96);
              v274 = *(v161 + 128);
              v268 = *(v161 + 144);
              *(v161 + 128) = 0;
              *(v161 + 136) = 0;
              *(v161 + 144) = 0;
              v284 = *(v161 + 152);
              *v158 = 0;
              *(v161 + 160) = 0;
              v196 = *(v161 + 176);
              v280 = *(v161 + 168);
              *(v161 + 168) = 0;
              v307 = *(v161 + 184);
              while (1)
              {
                v197 = v191;
                *v161 = *v191;
                v198 = *(v191 + 16);
                v199 = *(v191 + 32);
                v200 = *(v191 + 48);
                *(v161 + 64) = *(v191 + 64);
                *(v161 + 32) = v199;
                *(v161 + 48) = v200;
                *(v161 + 16) = v198;
                v201 = *(v161 + 72);
                if (v201)
                {
                  *(v161 + 80) = v201;
                  operator delete(v201);
                  *(v161 + 72) = 0;
                  *(v161 + 80) = 0;
                  *(v161 + 88) = 0;
                }

                *(v161 + 72) = *(v197 + 72);
                *(v161 + 88) = *(v197 + 88);
                *(v197 + 72) = 0;
                *(v197 + 80) = 0;
                *(v197 + 88) = 0;
                v202 = *(v197 + 96);
                v203 = *(v161 + 128);
                *(v161 + 108) = *(v197 + 108);
                *(v161 + 96) = v202;
                if (v203)
                {
                  *(v161 + 136) = v203;
                  operator delete(v203);
                  *(v161 + 128) = 0;
                  *(v161 + 136) = 0;
                  *(v161 + 144) = 0;
                }

                *(v161 + 128) = *(v197 + 128);
                *(v161 + 144) = *(v197 + 144);
                *(v197 + 128) = 0;
                *(v197 + 136) = 0;
                *(v197 + 144) = 0;
                v204 = *(v161 + 152);
                if (v204)
                {
                  *(v161 + 160) = v204;
                  operator delete(v204);
                  *(v161 + 152) = 0;
                  *(v161 + 160) = 0;
                  *(v161 + 168) = 0;
                }

                *(v161 + 152) = *(v197 + 152);
                *(v161 + 168) = *(v197 + 168);
                *(v197 + 152) = 0;
                *(v197 + 160) = 0;
                *(v197 + 168) = 0;
                *(v161 + 176) = *(v197 + 176);
                v205 = *(v197 + 184);
                *(v161 + 200) = *(v197 + 200);
                *(v161 + 184) = v205;
                if (!v190)
                {
                  break;
                }

                v190 = (v190 - 1) >> 1;
                v191 = a1 + 208 * v190;
                v206 = *(v191 + 24);
                v161 = v197;
                if (v206 >= v193)
                {
                  if (v193 < v206)
                  {
                    break;
                  }

                  v161 = v197;
                  if (*(v191 + 200) >= v194)
                  {
                    break;
                  }
                }
              }

              *v197 = v308;
              *(v197 + 16) = v309;
              *(v197 + 24) = v193;
              *(v197 + 32) = v331;
              *(v197 + 48) = v333;
              *(v197 + 64) = v334;
              v207 = *(v197 + 72);
              if (v207)
              {
                *(v197 + 80) = v207;
                operator delete(v207);
              }

              *(v197 + 72) = v261;
              *(v197 + 88) = v195;
              *(v197 + 96) = *v320;
              *(v197 + 108) = *&v320[12];
              v208 = *(v197 + 128);
              if (v208)
              {
                *(v197 + 136) = v208;
                operator delete(v208);
              }

              *(v197 + 128) = v274;
              *(v197 + 144) = v268;
              v209 = *(v197 + 152);
              if (v209)
              {
                *(v197 + 160) = v209;
                operator delete(v209);
              }

              *(v197 + 152) = v284;
              *(v197 + 168) = v280;
              *(v197 + 176) = v196;
              *(v197 + 184) = v307;
              *(v197 + 200) = v194;
            }
          }
        }

        v154 = v152-- <= 2;
        v153 = v174;
        if (v154)
        {
          goto LABEL_305;
        }

        continue;
      }
    }

    v10 = v9 >> 1;
    v11 = (a1 + 208 * (v9 >> 1));
    if (v8 < 0x6801)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_1 &,operations_research::sat::DiffnEnergyEvent *,0>(v11, a1, v276);
      v270 = a3 - 1;
      if ((a4 & 1) == 0)
      {
        goto LABEL_14;
      }

LABEL_21:
      v14 = *(a1 + 24);
LABEL_22:
      v23 = 0;
      v323 = *(a1 + 16);
      v317 = *a1;
      v300 = *(a1 + 64);
      v288 = *(a1 + 32);
      v294 = *(a1 + 48);
      v239 = *(a1 + 72);
      v24 = *(a1 + 88);
      *(a1 + 72) = 0;
      *(a1 + 80) = 0;
      *(a1 + 88) = 0;
      *v328 = *(a1 + 96);
      *&v328[12] = *(a1 + 108);
      v25 = *(a1 + 128);
      v252 = *(a1 + 144);
      *(a1 + 128) = 0;
      *(a1 + 136) = 0;
      *(a1 + 144) = 0;
      v257 = v25;
      v264 = *(a1 + 152);
      *(a1 + 152) = 0;
      *(a1 + 160) = 0;
      v247 = *(a1 + 168);
      v242 = *(a1 + 176);
      *(a1 + 168) = 0;
      v311 = *(a1 + 184);
      v26 = *(a1 + 200);
      while (1)
      {
        v27 = *(a1 + v23 + 232);
        if (v27 >= v14 && (v14 < v27 || *(a1 + v23 + 408) >= v26))
        {
          break;
        }

        v23 += 208;
      }

      v28 = a1 + v23 + 208;
      if (v23)
      {
        v29 = *(v282 - 184);
        v30 = v237;
        v31 = v276;
        if (v29 >= v14)
        {
          do
          {
            if (v14 >= v29 && *(v30 + 48) < v26)
            {
              break;
            }

            v32 = *v30;
            v30 -= 26;
            v29 = v32;
          }

          while (v32 >= v14);
LABEL_33:
          v31 = (v30 + 23);
        }
      }

      else
      {
        v31 = v282;
        if (v28 < v282)
        {
          v33 = *(v282 - 184);
          v31 = v276;
          if (v33 >= v14)
          {
            v30 = v237;
            v31 = v276;
            while (1)
            {
              v54 = (v30 + 23);
              if (v14 < v33)
              {
                if (v28 >= v54)
                {
                  goto LABEL_33;
                }
              }

              else if (v28 >= v54 || *(v30 + 48) < v26)
              {
                break;
              }

              v31 -= 13;
              v53 = *v30;
              v30 -= 26;
              v33 = v53;
              if (v53 < v14)
              {
                goto LABEL_33;
              }
            }
          }
        }
      }

      i = v28;
      if (v28 < v31)
      {
        v34 = v31;
        do
        {
          while (1)
          {
            std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>(i, v34);
            do
            {
              do
              {
                i += 208;
                v35 = *(i + 24);
              }

              while (v35 < v14);
            }

            while (v14 >= v35 && *(i + 200) < v26);
            v36 = *(v34 - 23);
            if (v36 >= v14)
            {
              break;
            }

            v34 -= 13;
            if (i >= v34)
            {
              goto LABEL_49;
            }
          }

          v37 = v34 - 392;
          do
          {
            if (v14 >= v36 && *(v37 + 48) < v26)
            {
              break;
            }

            v38 = *v37;
            v37 -= 208;
            v36 = v38;
          }

          while (v38 >= v14);
          v34 = (v37 + 184);
        }

        while (i < (v37 + 184));
      }

LABEL_49:
      v39 = (i - 208);
      if (i - 208 != a1)
      {
        *a1 = *v39;
        v40 = *(i - 192);
        v41 = *(i - 176);
        v42 = *(i - 160);
        *(a1 + 64) = *(i - 144);
        *(a1 + 32) = v41;
        *(a1 + 48) = v42;
        *(a1 + 16) = v40;
        v43 = *(a1 + 72);
        if (v43)
        {
          *(a1 + 80) = v43;
          operator delete(v43);
          *(a1 + 72) = 0;
          *(a1 + 80) = 0;
          *(a1 + 88) = 0;
        }

        *(a1 + 72) = *(i - 136);
        *(a1 + 88) = *(i - 120);
        *(i - 128) = 0;
        *(i - 120) = 0;
        *(i - 136) = 0;
        v44 = *(i - 112);
        *(a1 + 108) = *(i - 100);
        *(a1 + 96) = v44;
        v45 = *(a1 + 128);
        if (v45)
        {
          *(a1 + 136) = v45;
          operator delete(v45);
          *(a1 + 128) = 0;
          *(a1 + 136) = 0;
          *(a1 + 144) = 0;
        }

        v46 = (i - 80);
        *(a1 + 128) = *(i - 80);
        *(a1 + 144) = *(i - 64);
        *v46 = 0;
        v46[1] = 0;
        v46[2] = 0;
        v47 = *(a1 + 152);
        if (v47)
        {
          *(a1 + 160) = v47;
          operator delete(v47);
          *(a1 + 152) = 0;
          *(a1 + 160) = 0;
          *(a1 + 168) = 0;
        }

        *(a1 + 152) = *(i - 56);
        *(a1 + 168) = *(i - 40);
        *(i - 56) = 0;
        *(i - 48) = 0;
        *(i - 40) = 0;
        *(a1 + 176) = *(i - 32);
        v48 = *(i - 24);
        *(a1 + 200) = *(i - 8);
        *(a1 + 184) = v48;
      }

      *(i - 192) = v323;
      *v39 = v317;
      *(i - 184) = v14;
      *(i - 144) = v300;
      *(i - 176) = v288;
      *(i - 160) = v294;
      v49 = *(i - 136);
      if (v49)
      {
        *(i - 128) = v49;
        operator delete(v49);
      }

      *(i - 136) = v239;
      *(i - 120) = v24;
      *(i - 100) = *&v328[12];
      *(i - 112) = *v328;
      v50 = *(i - 80);
      a3 = v270;
      if (v50)
      {
        *(i - 72) = v50;
        operator delete(v50);
      }

      *(i - 80) = v257;
      *(i - 64) = v252;
      v51 = *(i - 56);
      a2 = v282;
      if (v51)
      {
        *(i - 48) = v51;
        operator delete(v51);
      }

      *(i - 56) = v264;
      *(i - 40) = v247;
      *(i - 32) = v242;
      *(i - 24) = v311;
      *(i - 8) = v26;
      if (v28 < v31)
      {
        goto LABEL_66;
      }

      v52 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_1 &,operations_research::sat::DiffnEnergyEvent *>(a1, i - 208);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_1 &,operations_research::sat::DiffnEnergyEvent *>(i, v282))
      {
        a2 = i - 208;
        if (v52)
        {
          goto LABEL_305;
        }

        goto LABEL_2;
      }

      if (!v52)
      {
LABEL_66:
        std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_1 &,operations_research::sat::DiffnEnergyEvent *,false>(a1, i - 208, v270, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_1 &,operations_research::sat::DiffnEnergyEvent *,0>(a1, v11, v276);
      v12 = 208 * v10;
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_1 &,operations_research::sat::DiffnEnergyEvent *,0>(a1 + 208, v12 + a1 - 208, v236);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_1 &,operations_research::sat::DiffnEnergyEvent *,0>(a1 + 416, a1 + 208 + v12, v235);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_1 &,operations_research::sat::DiffnEnergyEvent *,0>(v12 + a1 - 208, v11, a1 + 208 + v12);
      std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>(a1, v11);
      v270 = a3 - 1;
      if (a4)
      {
        goto LABEL_21;
      }

LABEL_14:
      v13 = *(a1 - 184);
      v14 = *(a1 + 24);
      if (v13 < v14)
      {
        goto LABEL_22;
      }

      v15 = *(a1 + 200);
      if (v14 >= v13 && *(a1 - 8) < v15)
      {
        goto LABEL_22;
      }

      v322 = *(a1 + 16);
      v316 = *a1;
      v299 = *(a1 + 64);
      v287 = *(a1 + 32);
      v293 = *(a1 + 48);
      v16 = *(a1 + 72);
      v17 = *(a1 + 88);
      *(a1 + 72) = 0;
      *(a1 + 80) = 0;
      *(a1 + 88) = 0;
      *v327 = *(a1 + 96);
      *&v327[12] = *(a1 + 108);
      v251 = v16;
      v256 = *(a1 + 128);
      v18 = *(a1 + 144);
      *(a1 + 128) = 0;
      *(a1 + 136) = 0;
      *(a1 + 144) = 0;
      v263 = *(a1 + 152);
      *(a1 + 152) = 0;
      *(a1 + 160) = 0;
      v19 = *(a1 + 168);
      v20 = *(a1 + 176);
      *(a1 + 168) = 0;
      v310 = *(a1 + 184);
      v21 = *(v282 - 184);
      v246 = v17;
      if (v14 < v21 || v21 >= v14 && v15 < *(v282 - 8))
      {
        v22 = *(a1 + 232);
        if (v14 >= *&v22)
        {
          v56 = (a1 + 440);
          do
          {
            if (*&v22 >= v14 && v15 < *(v56 - 4))
            {
              break;
            }

            v57 = *v56;
            v56 += 26;
            v22 = v57;
          }

          while (v14 >= *&v57);
          i = (v56 - 29);
        }

        else
        {
          i = a1 + 208;
        }
      }

      else
      {
        for (i = a1 + 208; i < v282; i += 208)
        {
          v55 = *(i + 24);
          if (v14 < v55 || v55 >= v14 && v15 < *(i + 200))
          {
            break;
          }
        }
      }

      v58 = v282;
      if (i < v282)
      {
        for (j = v237; v14 < v21 || v21 >= v14 && v15 < j[48]; j -= 26)
        {
          v60 = *j;
          v21 = *&v60;
        }

        v58 = (j + 23);
      }

      while (i < v58)
      {
        std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>(i, v58);
        v61 = *(i + 232);
        if (v14 >= *&v61)
        {
          v62 = (i + 440);
          do
          {
            if (*&v61 >= v14 && v15 < *(v62 - 4))
            {
              break;
            }

            v63 = *v62;
            v62 += 26;
            v61 = v63;
          }

          while (v14 >= *&v63);
          i = (v62 - 29);
        }

        else
        {
          i += 208;
        }

        do
        {
          do
          {
            v58 -= 208;
            v64 = *(v58 + 24);
          }

          while (v14 < v64);
        }

        while (v64 >= v14 && v15 < *(v58 + 200));
      }

      v65 = (i - 208);
      if (i - 208 != a1)
      {
        *a1 = *v65;
        v66 = *(i - 192);
        v67 = *(i - 176);
        v68 = *(i - 160);
        *(a1 + 64) = *(i - 144);
        *(a1 + 32) = v67;
        *(a1 + 48) = v68;
        *(a1 + 16) = v66;
        v69 = *(a1 + 72);
        if (v69)
        {
          *(a1 + 80) = v69;
          operator delete(v69);
          *(a1 + 72) = 0;
          *(a1 + 80) = 0;
          *(a1 + 88) = 0;
        }

        *(a1 + 72) = *(i - 136);
        *(a1 + 88) = *(i - 120);
        *(i - 128) = 0;
        *(i - 120) = 0;
        *(i - 136) = 0;
        v70 = *(i - 112);
        *(a1 + 108) = *(i - 100);
        *(a1 + 96) = v70;
        v71 = *(a1 + 128);
        if (v71)
        {
          *(a1 + 136) = v71;
          operator delete(v71);
          *(a1 + 128) = 0;
          *(a1 + 136) = 0;
          *(a1 + 144) = 0;
        }

        v72 = (i - 80);
        *(a1 + 128) = *(i - 80);
        *(a1 + 144) = *(i - 64);
        *v72 = 0;
        v72[1] = 0;
        v72[2] = 0;
        v73 = *(a1 + 152);
        if (v73)
        {
          *(a1 + 160) = v73;
          operator delete(v73);
          *(a1 + 152) = 0;
          *(a1 + 160) = 0;
          *(a1 + 168) = 0;
        }

        *(a1 + 152) = *(i - 56);
        *(a1 + 168) = *(i - 40);
        *(i - 56) = 0;
        *(i - 48) = 0;
        *(i - 40) = 0;
        *(a1 + 176) = *(i - 32);
        v74 = *(i - 24);
        *(a1 + 200) = *(i - 8);
        *(a1 + 184) = v74;
      }

      *(i - 192) = v322;
      *v65 = v316;
      *(i - 184) = v14;
      *(i - 144) = v299;
      *(i - 176) = v287;
      *(i - 160) = v293;
      v75 = *(i - 136);
      if (v75)
      {
        *(i - 128) = v75;
        operator delete(v75);
      }

      *(i - 136) = v251;
      *(i - 120) = v246;
      *(i - 100) = *&v327[12];
      *(i - 112) = *v327;
      v76 = *(i - 80);
      a2 = v282;
      a3 = v270;
      if (v76)
      {
        *(i - 72) = v76;
        operator delete(v76);
      }

      *(i - 80) = v256;
      *(i - 64) = v18;
      v77 = *(i - 56);
      if (v77)
      {
        *(i - 48) = v77;
        operator delete(v77);
      }

      a4 = 0;
      *(i - 56) = v263;
      *(i - 40) = v19;
      *(i - 32) = v20;
      *(i - 24) = v310;
      *(i - 8) = v15;
    }
  }

  v88 = *(a2 - 184);
  v89 = *(a1 + 24);
  if (v88 >= v89 && (v89 < v88 || *(a2 - 8) >= *(a1 + 200)))
  {
    goto LABEL_305;
  }

  v90 = *MEMORY[0x277D85DE8];
  v86 = a1;
  v85 = v276;
LABEL_132:

  std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>(v86, v85);
}

double std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_1 &,operations_research::sat::DiffnEnergyEvent *,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 24);
  v5 = *(a1 + 24);
  if (v4 < v5 || v5 >= v4 && (result = *(a2 + 200), result < *(a1 + 200)))
  {
    v6 = *(a3 + 24);
    if (v6 < v4 || v4 >= v6 && *(a3 + 200) < *(a2 + 200))
    {
      v7 = a3;
    }

    else
    {
      *&result = std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>(a1, a2).n128_u64[0];
      v7 = a3;
      v14 = *(a3 + 24);
      v15 = *(a2 + 24);
      if (v14 >= v15)
      {
        if (v15 < v14)
        {
          return result;
        }

        result = *(a3 + 200);
        if (result >= *(a2 + 200))
        {
          return result;
        }
      }

      a1 = a2;
    }

LABEL_5:
    *&result = std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>(a1, v7).n128_u64[0];
    return result;
  }

  v9 = *(a3 + 24);
  if (v9 < v4 || v4 >= v9 && (result = *(a3 + 200), result < *(a2 + 200)))
  {
    v10 = a1;
    *&result = std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>(a2, a3).n128_u64[0];
    a1 = v10;
    v11 = *(a2 + 24);
    v12 = *(v10 + 24);
    if (v11 < v12 || v12 >= v11 && (result = *(a2 + 200), result < *(v10 + 200)))
    {
      v7 = a2;

      goto LABEL_5;
    }
  }

  return result;
}

double std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_1 &,operations_research::sat::DiffnEnergyEvent *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_1 &,operations_research::sat::DiffnEnergyEvent *,0>(a1, a2, a3);
  v11 = *(a4 + 24);
  v12 = *(a3 + 24);
  if (v11 < v12 || v12 >= v11 && (result = *(a4 + 200), result < *(a3 + 200)))
  {
    *&result = std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>(a3, a4).n128_u64[0];
    v13 = *(a3 + 24);
    v14 = *(a2 + 24);
    if (v13 < v14 || v14 >= v13 && (result = *(a3 + 200), result < *(a2 + 200)))
    {
      *&result = std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>(a2, a3).n128_u64[0];
      v15 = *(a2 + 24);
      v16 = *(a1 + 24);
      if (v15 < v16 || v16 >= v15 && (result = *(a2 + 200), result < *(a1 + 200)))
      {
        *&result = std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>(a1, a2).n128_u64[0];
      }
    }
  }

  v17 = *(a5 + 24);
  v18 = *(a4 + 24);
  if (v17 < v18 || v18 >= v17 && (result = *(a5 + 200), result < *(a4 + 200)))
  {
    *&result = std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>(a4, a5).n128_u64[0];
    v19 = *(a4 + 24);
    v20 = *(a3 + 24);
    if (v19 < v20 || v20 >= v19 && (result = *(a4 + 200), result < *(a3 + 200)))
    {
      *&result = std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>(a3, a4).n128_u64[0];
      v21 = *(a3 + 24);
      v22 = *(a2 + 24);
      if (v21 < v22 || v22 >= v21 && (result = *(a3 + 200), result < *(a2 + 200)))
      {
        *&result = std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>(a2, a3).n128_u64[0];
        v23 = *(a2 + 24);
        v24 = *(a1 + 24);
        if (v23 < v24 || v24 >= v23 && (result = *(a2 + 200), result < *(a1 + 200)))
        {

          *&result = std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>(a1, a2).n128_u64[0];
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_1 &,operations_research::sat::DiffnEnergyEvent *>(uint64_t a1, uint64_t a2)
{
  v57 = *MEMORY[0x277D85DE8];
  v4 = 0x4EC4EC4EC4EC4EC5 * ((a2 - a1) >> 4);
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = *(a2 - 184);
        v6 = *(a1 + 24);
        if (v5 >= v6 && (v6 < v5 || *(a2 - 8) >= *(a1 + 200)))
        {
          goto LABEL_57;
        }

        v7 = (a2 - 208);
        goto LABEL_44;
      }

      goto LABEL_11;
    }

LABEL_57:
    result = 1;
    goto LABEL_58;
  }

  switch(v4)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_1 &,operations_research::sat::DiffnEnergyEvent *,0>(a1, a1 + 208, a2 - 208);
      goto LABEL_57;
    case 4:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_1 &,operations_research::sat::DiffnEnergyEvent *,0>(a1, a1 + 208, a1 + 416);
      v35 = *(a2 - 184);
      v36 = *(a1 + 440);
      if (v35 >= v36 && (v36 < v35 || *(a2 - 8) >= *(a1 + 616)))
      {
        goto LABEL_57;
      }

      std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>((a1 + 416), (a2 - 208));
      v37 = *(a1 + 440);
      v38 = *(a1 + 232);
      if (v37 >= v38 && (v38 < v37 || *(a1 + 616) >= *(a1 + 408)))
      {
        goto LABEL_57;
      }

      std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>((a1 + 208), (a1 + 416));
      v39 = *(a1 + 232);
      v40 = *(a1 + 24);
      if (v39 >= v40 && (v40 < v39 || *(a1 + 408) >= *(a1 + 200)))
      {
        goto LABEL_57;
      }

      v7 = (a1 + 208);
LABEL_44:
      std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>(a1, v7);
      goto LABEL_57;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_1 &,operations_research::sat::DiffnEnergyEvent *,0>(a1, a1 + 208, a1 + 416, a1 + 624, a2 - 208);
      goto LABEL_57;
  }

LABEL_11:
  v8 = a1 + 416;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_1 &,operations_research::sat::DiffnEnergyEvent *,0>(a1, a1 + 208, a1 + 416);
  v9 = a1 + 624;
  if (a1 + 624 == a2)
  {
    goto LABEL_57;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0uLL;
  while (1)
  {
    v13 = *(v9 + 24);
    v14 = *(v8 + 24);
    if (v13 < v14)
    {
      break;
    }

    if (v14 >= v13)
    {
      v15 = *(v9 + 200);
      if (v15 < *(v8 + 200))
      {
        goto LABEL_17;
      }
    }

LABEL_14:
    v8 = v9;
    v10 += 208;
    v9 += 208;
    if (v9 == a2)
    {
      goto LABEL_57;
    }
  }

  v15 = *(v9 + 200);
LABEL_17:
  v16 = 0;
  v54 = *v9;
  v55 = *(v9 + 16);
  v51 = *(v9 + 32);
  v52 = *(v9 + 48);
  v44 = *(v9 + 72);
  v53 = *(v9 + 64);
  v17 = *(v9 + 96);
  v43 = *(v9 + 80);
  *(v9 + 72) = 0;
  *(v9 + 80) = 0;
  *(v9 + 88) = 0;
  *&v56[12] = *(v9 + 108);
  *v56 = v17;
  v18 = *(v9 + 128);
  v45 = *(v9 + 136);
  *(v9 + 128) = 0;
  *(v9 + 136) = 0;
  v49 = *(v9 + 152);
  v48 = *(v9 + 160);
  *(v9 + 144) = 0;
  *(v9 + 152) = 0;
  *(v9 + 160) = 0;
  *(v9 + 168) = 0;
  v46 = v18;
  v47 = *(v9 + 176);
  v19 = v10;
  v50 = *(v9 + 184);
  while (1)
  {
    v20 = a1 + v19;
    v21 = *(a1 + v19 + 464);
    *(v20 + 656) = *(a1 + v19 + 448);
    *(v20 + 672) = v21;
    *(v20 + 688) = *(a1 + v19 + 480);
    v22 = *(a1 + v19 + 432);
    *(v20 + 624) = *(a1 + v19 + 416);
    *(v20 + 640) = v22;
    if (v16)
    {
      *(v20 + 704) = v16;
      operator delete(v16);
      v12 = 0uLL;
      *(v20 + 704) = 0u;
    }

    v23 = (v20 + 488);
    *(v20 + 696) = *(v20 + 488);
    *(v20 + 712) = *(v20 + 504);
    *(v20 + 496) = 0;
    *(v20 + 504) = 0;
    *(v20 + 488) = 0;
    *(v20 + 720) = *(v20 + 512);
    *(v20 + 732) = *(v20 + 524);
    v24 = *(v20 + 752);
    if (v24)
    {
      v25 = (a1 + v19 + 760);
      *v25 = v24;
      operator delete(v24);
      v12 = 0uLL;
      *v25 = 0u;
    }

    v26 = (v20 + 544);
    *(v20 + 752) = *(v20 + 544);
    v27 = a1 + v19;
    *(a1 + v19 + 768) = *(a1 + v19 + 560);
    *v26 = 0;
    v26[1] = 0;
    v26[2] = 0;
    v28 = *(a1 + v19 + 776);
    if (v28)
    {
      *(v27 + 784) = v28;
      operator delete(v28);
      v12 = 0uLL;
      *(v27 + 784) = 0u;
    }

    *(v27 + 776) = *(v27 + 568);
    *(v27 + 792) = *(v27 + 584);
    *(v27 + 584) = 0;
    *(v27 + 568) = v12;
    *(v27 + 800) = *(v27 + 592);
    *(v27 + 824) = *(v27 + 616);
    *(v27 + 808) = *(v27 + 600);
    if (v19 == -416)
    {
      break;
    }

    v29 = *(a1 + v19 + 232);
    if (v13 >= v29 && (v29 < v13 || v15 >= *(a1 + v19 + 408)))
    {
      v30 = a1 + v19 + 416;
      goto LABEL_34;
    }

    v16 = *v23;
    v19 -= 208;
  }

  v30 = a1;
LABEL_34:
  v31 = a1 + v19;
  *v30 = v54;
  *(v30 + 16) = v55;
  *(v30 + 24) = v13;
  *(v30 + 32) = v51;
  *(v30 + 48) = v52;
  *(v30 + 64) = v53;
  v32 = *(a1 + v19 + 488);
  if (v32)
  {
    *(v30 + 80) = v32;
    operator delete(v32);
    v12 = 0uLL;
    *(v31 + 496) = 0;
    *(v31 + 504) = 0;
  }

  *(v31 + 488) = v44;
  *(v30 + 80) = v43;
  *(v31 + 512) = *v56;
  *(v31 + 524) = *&v56[12];
  v33 = *(v31 + 544);
  if (v33)
  {
    *(v30 + 136) = v33;
    operator delete(v33);
    v12 = 0uLL;
    *(v31 + 552) = 0;
    *(v31 + 560) = 0;
  }

  *(v31 + 544) = v46;
  *(v30 + 136) = v45;
  v34 = *(v31 + 568);
  if (v34)
  {
    *(v30 + 160) = v34;
    operator delete(v34);
    v12 = 0uLL;
    *(v31 + 576) = 0;
    *(v31 + 584) = 0;
  }

  *(v31 + 568) = v49;
  *(v30 + 160) = v48;
  *(v30 + 176) = v47;
  *(v31 + 600) = v50;
  *(a1 + v19 + 616) = v15;
  if (++v11 != 8)
  {
    goto LABEL_14;
  }

  result = v9 + 208 == a2;
LABEL_58:
  v42 = *MEMORY[0x277D85DE8];
  return result;
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<operations_research::sat::LiteralValueValue>>,std::vector<operations_research::sat::LiteralValueValue>*,std::vector<operations_research::sat::LiteralValueValue>*,std::vector<operations_research::sat::LiteralValueValue>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      v6 = v5[1];
      if (v6 != *v5)
      {
        if (0xAAAAAAAAAAAAAAABLL * ((v6 - *v5) >> 3) < 0xAAAAAAAAAAAAAABLL)
        {
          operator new();
        }

        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_23CB6BB9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v11;
    operator delete(v11);
  }

  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<operations_research::sat::Literal>>,std::vector<operations_research::sat::Literal>*>>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__function::__func<operations_research::sat::CreateNoOverlap2dEnergyCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::SchedulingDemandHelper *,std::vector<std::vector<operations_research::sat::LiteralValueValue>> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateNoOverlap2dEnergyCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::SchedulingDemandHelper *,std::vector<std::vector<operations_research::sat::LiteralValueValue>> const&,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::~__func(void *a1)
{
  *a1 = &unk_284F40CF0;
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[7];
    v4 = a1[6];
    if (v3 != v2)
    {
      v5 = a1[7];
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
      v4 = a1[6];
    }

    a1[7] = v2;
    operator delete(v4);
  }

  return a1;
}

void std::__function::__func<operations_research::sat::CreateNoOverlap2dEnergyCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::SchedulingDemandHelper *,std::vector<std::vector<operations_research::sat::LiteralValueValue>> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateNoOverlap2dEnergyCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::SchedulingDemandHelper *,std::vector<std::vector<operations_research::sat::LiteralValueValue>> const&,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::~__func(void *a1)
{
  *a1 = &unk_284F40CF0;
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[7];
    v4 = a1[6];
    if (v3 != v2)
    {
      v5 = a1[7];
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
      v4 = a1[6];
    }

    a1[7] = v2;
    operator delete(v4);
  }

  JUMPOUT(0x23EED9460);
}

void sub_23CB6BE24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  v9[7] = v10;
  std::__exception_guard_exceptions<std::vector<std::vector<int>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_23CB6BE44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  std::__exception_guard_exceptions<std::vector<std::vector<int>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<operations_research::sat::CreateNoOverlap2dEnergyCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::SchedulingDemandHelper *,std::vector<std::vector<operations_research::sat::LiteralValueValue>> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateNoOverlap2dEnergyCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::SchedulingDemandHelper *,std::vector<std::vector<operations_research::sat::LiteralValueValue>> const&,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F40CF0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 48) = 0;
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  if (v6 != v5)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_23CB6BF58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 56) = v10;
  std::__exception_guard_exceptions<std::vector<std::vector<int>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::__function::__func<operations_research::sat::CreateNoOverlap2dEnergyCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::SchedulingDemandHelper *,std::vector<std::vector<operations_research::sat::LiteralValueValue>> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateNoOverlap2dEnergyCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::SchedulingDemandHelper *,std::vector<std::vector<operations_research::sat::LiteralValueValue>> const&,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 48);
    if (v3 != v1)
    {
      v5 = v3;
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

      while (v5 != v1);
      v4 = *(a1 + 48);
    }

    *(a1 + 56) = v1;

    operator delete(v4);
  }
}

void std::__function::__func<operations_research::sat::CreateNoOverlap2dEnergyCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::SchedulingDemandHelper *,std::vector<std::vector<operations_research::sat::LiteralValueValue>> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateNoOverlap2dEnergyCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::SchedulingDemandHelper *,std::vector<std::vector<operations_research::sat::LiteralValueValue>> const&,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::destroy_deallocate(void *__p)
{
  v2 = __p[6];
  if (v2)
  {
    v3 = __p[7];
    v4 = __p[6];
    if (v3 != v2)
    {
      v5 = __p[7];
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
      v4 = __p[6];
    }

    __p[7] = v2;
    operator delete(v4);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<operations_research::sat::CreateNoOverlap2dEnergyCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::SchedulingDemandHelper *,std::vector<std::vector<operations_research::sat::LiteralValueValue>> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateNoOverlap2dEnergyCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::SchedulingDemandHelper *,std::vector<std::vector<operations_research::sat::LiteralValueValue>> const&,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  result = operations_research::sat::SchedulingConstraintHelper::SynchronizeAndSetTimeDirection(*(a1 + 8), 1);
  if (result)
  {
    result = operations_research::sat::SchedulingConstraintHelper::SynchronizeAndSetTimeDirection(*(a1 + 16), 1);
    if (result)
    {
      operations_research::sat::SchedulingDemandHelper::CacheAllEnergyValues(*(a1 + 24));
      operations_research::sat::SchedulingDemandHelper::CacheAllEnergyValues(*(a1 + 32));
      v5 = 0xAAAAAAAAAAAAAAABLL * ((*(*(a1 + 8) + 88) - *(*(a1 + 8) + 80)) >> 3);
      v6 = 0xAAAAAAAB00000000 * ((*(*(a1 + 8) + 88) - *(*(a1 + 8) + 80)) >> 3);
      if (v6)
      {
        if ((v6 & 0x8000000000000000) == 0)
        {
          v7 = (0x1555555560 * ((*(*(a1 + 8) + 88) - *(*(a1 + 8) + 80)) >> 3)) & 0x1FFFFFFFFFLL;
          operator new();
        }

        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (v5 >= 1)
      {
        v8 = 0;
        v9 = 16;
        do
        {
          v10 = *(a1 + 16);
          v11 = *(v10[19] + 4 * v8);
          v12 = v11;
          if (v11 == -1 || ((*(*(v10[3] + 24) + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v11 & 0x3F ^ 1u)) & 1) == 0)
          {
            v13 = *(a1 + 8);
            v14 = *(v13[19] + 4 * v8);
            if (v14 == -1 || (v12 != -1 ? (v15 = (*(*(v13[3] + 24) + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) & (1 << v14)) == 0) : (v15 = 0), !v15 || (v14 != v12 ? (v16 = (*(*(v10[3] + 24) + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) & (1 << v12)) == 0) : (v16 = 0), !v16)))
            {
              *(v9 - 16) = *(v13[30] + 8 * v8);
              *(v9 - 8) = -*(v13[33] + 8 * v8);
              *v9 = *(v10[30] + 8 * v8);
              *(v9 + 8) = -*(v10[33] + 8 * v8);
              operator new();
            }
          }

          ++v8;
          v9 += 32;
        }

        while ((v5 & 0x7FFFFFFF) != v8);
      }

      return 1;
    }
  }

  return result;
}

void sub_23CB6C488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
    if (!v15)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v15)
  {
    goto LABEL_3;
  }

  operator delete(v15);
  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<operations_research::sat::CreateNoOverlap2dEnergyCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::SchedulingDemandHelper *,std::vector<std::vector<operations_research::sat::LiteralValueValue>> const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::CreateNoOverlap2dEnergyCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::SchedulingDemandHelper *,std::vector<std::vector<operations_research::sat::LiteralValueValue>> const&,operations_research::sat::Model *)::$_0>,BOOL ()(operations_research::sat::LinearConstraintManager *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat35CreateNoOverlap2dEnergyCutGeneratorEPNS0_26SchedulingConstraintHelperES2_PNS0_22SchedulingDemandHelperES4_RKNSt3__16vectorINS6_INS0_17LiteralValueValueENS5_9allocatorIS7_EEEENS8_ISA_EEEEPNS0_5ModelEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat35CreateNoOverlap2dEnergyCutGeneratorEPNS0_26SchedulingConstraintHelperES2_PNS0_22SchedulingDemandHelperES4_RKNSt3__16vectorINS6_INS0_17LiteralValueValueENS5_9allocatorIS7_EEEENS8_ISA_EEEEPNS0_5ModelEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat35CreateNoOverlap2dEnergyCutGeneratorEPNS0_26SchedulingConstraintHelperES2_PNS0_22SchedulingDemandHelperES4_RKNSt3__16vectorINS6_INS0_17LiteralValueValueENS5_9allocatorIS7_EEEENS8_ISA_EEEEPNS0_5ModelEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat35CreateNoOverlap2dEnergyCutGeneratorEPNS0_26SchedulingConstraintHelperES2_PNS0_22SchedulingDemandHelperES4_RKNSt3__16vectorINS6_INS0_17LiteralValueValueENS5_9allocatorIS7_EEEENS8_ISA_EEEEPNS0_5ModelEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::DiffnCtEvent*,false>(uint64_t a1, _OWORD *a2, uint64_t a3, char a4)
{
LABEL_1:
  v243 = (a2 - 136);
  v230 = (a2 - 408);
  v231 = a2 - 17;
  i = a1;
  v249 = a2;
  while (1)
  {
    a1 = i;
    v8 = a2 - i;
    v9 = 0xF0F0F0F0F0F0F0F1 * ((a2 - i) >> 3);
    if (v9 > 2)
    {
      switch(v9)
      {
        case 3:

          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::DiffnCtEvent*,0>(i, (i + 136), v243);
          return;
        case 4:

          std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::DiffnCtEvent*,0>(i, (i + 136), (i + 272), v243);
          return;
        case 5:

          std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::DiffnCtEvent*,0>(i, i + 136, i + 272, i + 408, v243);
          return;
      }
    }

    else
    {
      if (v9 < 2)
      {
        return;
      }

      if (v9 == 2)
      {
        v98 = (a2 - 136);
        v99 = *(a2 - 17);
        if (v99 < *i || *i >= v99 && ((v210 = *(a2 - 10), v211 = *(i + 56), v210 < v211) || v211 >= v210 && *(a2 - 2) < *(i + 120)))
        {
          v305 = *i;
          v334 = *(i + 64);
          v321 = *(i + 32);
          v329 = *(i + 48);
          v313 = *(i + 16);
          v100 = *(i + 72);
          v101 = *(i + 88);
          *(i + 72) = 0;
          *(i + 80) = 0;
          *(i + 88) = 0;
          v274 = *(i + 96);
          *v282 = *(i + 112);
          *&v282[15] = *(i + 127);
          v103 = *(a2 - 104);
          v102 = *(a2 - 88);
          v104 = *(a2 - 120);
          *(i + 64) = *(a2 - 9);
          *(i + 32) = v103;
          *(i + 48) = v102;
          *(i + 16) = v104;
          *i = *v98;
          *(i + 72) = *(a2 - 4);
          *(i + 88) = *(a2 - 6);
          *(a2 - 7) = 0;
          *(a2 - 6) = 0;
          *(a2 - 8) = 0;
          v105 = *(a2 - 40);
          v106 = *(a2 - 24);
          *(i + 127) = *(a2 - 9);
          *(i + 96) = v105;
          *(i + 112) = v106;
          *v98 = v305;
          *(a2 - 9) = v334;
          *(a2 - 104) = v321;
          *(a2 - 88) = v329;
          *(a2 - 120) = v313;
          v107 = *(a2 - 8);
          if (v107)
          {
            *(a2 - 7) = v107;
            v254 = v100;
            operator delete(v107);
            v100 = v254;
          }

          *(a2 - 4) = v100;
          *(a2 - 6) = v101;
          *(a2 - 9) = *&v282[15];
          *(a2 - 40) = v274;
          *(a2 - 24) = *v282;
        }

        return;
      }
    }

    if (v8 <= 3263)
    {
      break;
    }

    if (!a3)
    {
      if (i == a2)
      {
        return;
      }

      v133 = (v9 - 2) >> 1;
      v134 = v133;
      while (2)
      {
        v135 = v134;
        v136 = 17 * v134;
        v137 = 0xF0F0F0F0F0F0F0F1 * ((136 * v134) >> 3);
        if (v133 >= v137)
        {
          v138 = 2 * v137;
          v139 = (2 * v137) | 1;
          v140 = a1 + 136 * v139;
          v141 = v138 + 2;
          if (v141 < v9)
          {
            v142 = *(v140 + 136);
            if (*v140 < v142 || v142 >= *v140 && ((v163 = *(v140 + 56), v164 = *(v140 + 192), v163 < v164) || v164 >= v163 && *(v140 + 120) < *(v140 + 256)))
            {
              v140 += 136;
              v139 = v141;
            }
          }

          v143 = a1 + 8 * v136;
          v144 = *v143;
          if (*v140 >= *v143)
          {
            v145 = *(v143 + 56);
            if (v144 >= *v140)
            {
              v162 = *(v140 + 56);
              if (v162 >= v145)
              {
                v146 = *(v143 + 120);
                if (v145 < v162 || *(v140 + 120) >= v146)
                {
                  goto LABEL_190;
                }
              }
            }

            else
            {
              v146 = *(v143 + 120);
LABEL_190:
              v147 = 0;
              v315 = *(v143 + 24);
              v323 = *(v143 + 40);
              v307 = *(v143 + 8);
              v237 = *(v143 + 64);
              v245 = *(v143 + 72);
              v240 = *(v143 + 88);
              *(v143 + 72) = 0;
              *(v143 + 80) = 0;
              *(v143 + 88) = 0;
              v284 = *(v143 + 112);
              v276 = *(v143 + 96);
              v297 = *(v143 + 130);
              v293 = *(v143 + 128);
              while (1)
              {
                v148 = v140;
                *v143 = *v140;
                v149 = *(v140 + 16);
                v150 = *(v140 + 32);
                v151 = *(v140 + 48);
                *(v143 + 64) = *(v140 + 64);
                *(v143 + 32) = v150;
                *(v143 + 48) = v151;
                *(v143 + 16) = v149;
                if (v147)
                {
                  *(v143 + 80) = v147;
                  v152 = v145;
                  operator delete(v147);
                  v145 = v152;
                  v133 = (v9 - 2) >> 1;
                  *(v143 + 72) = 0;
                  *(v143 + 80) = 0;
                  *(v143 + 88) = 0;
                }

                *(v143 + 72) = *(v148 + 72);
                *(v143 + 88) = *(v148 + 88);
                *(v148 + 72) = 0;
                *(v148 + 80) = 0;
                *(v148 + 88) = 0;
                v153 = *(v148 + 96);
                v154 = *(v148 + 112);
                *(v143 + 127) = *(v148 + 127);
                *(v143 + 96) = v153;
                *(v143 + 112) = v154;
                if (v133 < v139)
                {
                  break;
                }

                v155 = 2 * v139;
                v139 = (2 * v139) | 1;
                v140 = a1 + 136 * v139;
                v156 = v155 + 2;
                if (v156 < v9)
                {
                  v157 = *(v140 + 136);
                  if (*v140 < v157 || v157 >= *v140 && ((v159 = *(v140 + 56), v160 = *(v140 + 192), v159 < v160) || v160 >= v159 && *(v140 + 120) < *(v140 + 256)))
                  {
                    v140 += 136;
                    v139 = v156;
                  }
                }

                if (*v140 < v144)
                {
                  break;
                }

                if (v144 >= *v140)
                {
                  v158 = *(v140 + 56);
                  if (v158 < v145 || v145 >= v158 && *(v140 + 120) < v146)
                  {
                    break;
                  }
                }

                v147 = *(v148 + 72);
                v143 = v148;
              }

              *v148 = v144;
              *(v148 + 40) = v323;
              *(v148 + 24) = v315;
              *(v148 + 8) = v307;
              *(v148 + 56) = v145;
              *(v148 + 64) = v237;
              v161 = *(v148 + 72);
              if (v161)
              {
                *(v148 + 80) = v161;
                operator delete(v161);
                v133 = (v9 - 2) >> 1;
              }

              *(v148 + 72) = v245;
              *(v148 + 88) = v240;
              *(v148 + 96) = v276;
              *(v148 + 112) = v284;
              *(v148 + 120) = v146;
              *(v148 + 128) = v293;
              *(v148 + 130) = v297;
              a2 = v249;
            }
          }
        }

        v134 = v135 - 1;
        if (v135)
        {
          continue;
        }

        break;
      }

      v165 = 0xF0F0F0F0F0F0F0F1 * (v8 >> 3);
      while (2)
      {
        v167 = 0;
        v308 = *a1;
        v256 = *(a1 + 72);
        v335 = *(a1 + 64);
        v324 = *(a1 + 32);
        v330 = *(a1 + 48);
        v316 = *(a1 + 16);
        v246 = *(a1 + 80);
        v241 = *(a1 + 88);
        *(a1 + 80) = 0;
        *(a1 + 88) = 0;
        *(a1 + 72) = 0;
        *&v301[15] = *(a1 + 127);
        v168 = a1;
        v294 = *(a1 + 96);
        *v301 = *(a1 + 112);
        do
        {
          v172 = v168 + 136 * v167;
          v173 = v172 + 136;
          v174 = 2 * v167;
          v167 = (2 * v167) | 1;
          v175 = v174 + 2;
          if (v175 < v165)
          {
            v176 = *(v172 + 136);
            v177 = *(v172 + 272);
            if (v176 < v177 || v177 >= v176 && ((v182 = *(v172 + 192), v183 = *(v172 + 328), v182 < v183) || v183 >= v182 && *(v172 + 256) < *(v172 + 392)))
            {
              v173 = v172 + 272;
              v167 = v175;
            }
          }

          *v168 = *v173;
          v178 = *(v173 + 16);
          v179 = *(v173 + 32);
          v180 = *(v173 + 48);
          *(v168 + 64) = *(v173 + 64);
          *(v168 + 32) = v179;
          *(v168 + 48) = v180;
          *(v168 + 16) = v178;
          v181 = *(v168 + 72);
          if (v181)
          {
            *(v168 + 80) = v181;
            operator delete(v181);
            *(v168 + 72) = 0;
            *(v168 + 80) = 0;
            *(v168 + 88) = 0;
          }

          v169 = (v173 + 72);
          *(v168 + 72) = *(v173 + 72);
          *(v168 + 88) = *(v173 + 88);
          *(v173 + 72) = 0;
          *(v173 + 80) = 0;
          *(v173 + 88) = 0;
          v170 = *(v173 + 96);
          v171 = *(v173 + 112);
          *(v168 + 127) = *(v173 + 127);
          *(v168 + 96) = v170;
          *(v168 + 112) = v171;
          v168 = v173;
        }

        while (v167 <= ((v165 - 2) >> 1));
        v250 = (a2 - 136);
        if (v173 == (a2 - 136))
        {
          *v173 = v308;
          *(v173 + 64) = v335;
          *(v173 + 32) = v324;
          *(v173 + 48) = v330;
          *(v173 + 16) = v316;
          v208 = *(v173 + 72);
          if (v208)
          {
            *(v173 + 80) = v208;
            operator delete(v208);
          }

          *(v173 + 72) = v256;
          *(v173 + 80) = v246;
          *(v173 + 88) = v241;
          *(v173 + 127) = *&v301[15];
          *(v173 + 112) = *v301;
          *(v173 + 96) = v294;
        }

        else
        {
          *v173 = *(a2 - 136);
          v184 = *(a2 - 120);
          v185 = *(a2 - 104);
          v186 = *(a2 - 88);
          *(v173 + 64) = *(a2 - 9);
          *(v173 + 32) = v185;
          *(v173 + 48) = v186;
          *(v173 + 16) = v184;
          v187 = *(v173 + 72);
          if (v187)
          {
            *(v173 + 80) = v187;
            operator delete(v187);
            *v169 = 0;
            *(v173 + 80) = 0;
            *(v173 + 88) = 0;
          }

          *(v173 + 72) = *(a2 - 4);
          *(v173 + 88) = *(a2 - 6);
          *(a2 - 8) = 0;
          *(a2 - 7) = 0;
          *(a2 - 6) = 0;
          v188 = *(a2 - 40);
          v189 = *(a2 - 24);
          *(v173 + 127) = *(a2 - 9);
          *(v173 + 112) = v189;
          *(v173 + 96) = v188;
          *(a2 - 9) = v335;
          *(a2 - 104) = v324;
          *(a2 - 88) = v330;
          *(a2 - 120) = v316;
          *v250 = v308;
          v190 = *(a2 - 8);
          if (v190)
          {
            *(a2 - 7) = v190;
            operator delete(v190);
          }

          v191 = a2 - 40;
          *(a2 - 8) = v256;
          *(a2 - 7) = v246;
          *(a2 - 6) = v241;
          *(v191 + 31) = *&v301[15];
          *v191 = v294;
          *(v191 + 1) = *v301;
          v192 = v173 + 136 - a1;
          if (v192 >= 137)
          {
            v193 = (-2 - 0xF0F0F0F0F0F0F0FLL * (v192 >> 3)) >> 1;
            v194 = a1 + 136 * v193;
            v195 = *v173;
            if (*v194 >= *v173)
            {
              if (v195 >= *v194)
              {
                v209 = *(v194 + 56);
                v196 = *(v173 + 56);
                if (v209 < v196 || v196 >= v209 && *(v194 + 120) < *(v173 + 120))
                {
                  goto LABEL_242;
                }
              }
            }

            else
            {
              v196 = *(v173 + 56);
LABEL_242:
              v197 = *(v173 + 24);
              v285 = v197;
              v289 = *(v173 + 40);
              v277 = *(v173 + 8);
              v242 = *(v173 + 64);
              v257 = *(v173 + 72);
              v247 = *(v173 + 88);
              *(v173 + 80) = 0;
              *(v173 + 88) = 0;
              *v169 = 0;
              v270 = *(v173 + 112);
              v267 = *(v173 + 96);
              v198 = *(v173 + 120);
              v264 = *(v173 + 130);
              v261 = *(v173 + 128);
              while (1)
              {
                v199 = v194;
                *v173 = *v194;
                v200 = *(v194 + 16);
                v201 = *(v194 + 32);
                v202 = *(v194 + 48);
                *(v173 + 64) = *(v194 + 64);
                *(v173 + 32) = v201;
                *(v173 + 48) = v202;
                *(v173 + 16) = v200;
                v203 = *(v173 + 72);
                if (v203)
                {
                  *(v173 + 80) = v203;
                  operator delete(v203);
                  *(v173 + 72) = 0;
                  *(v173 + 80) = 0;
                  *(v173 + 88) = 0;
                }

                *(v173 + 72) = *(v199 + 72);
                *(v173 + 88) = *(v199 + 88);
                *(v199 + 72) = 0;
                *(v199 + 80) = 0;
                *(v199 + 88) = 0;
                v204 = *(v199 + 96);
                v205 = *(v199 + 112);
                *(v173 + 127) = *(v199 + 127);
                *(v173 + 96) = v204;
                *(v173 + 112) = v205;
                if (!v193)
                {
                  break;
                }

                v193 = (v193 - 1) >> 1;
                v194 = a1 + 136 * v193;
                v173 = v199;
                if (*v194 >= v195)
                {
                  if (v195 < *v194)
                  {
                    break;
                  }

                  v206 = *(v194 + 56);
                  v173 = v199;
                  if (v206 >= v196)
                  {
                    if (v196 < v206)
                    {
                      break;
                    }

                    v173 = v199;
                    if (*(v194 + 120) >= v198)
                    {
                      break;
                    }
                  }
                }
              }

              *v199 = v195;
              *(v199 + 40) = v289;
              *(v199 + 24) = v285;
              *(v199 + 8) = v277;
              *(v199 + 56) = v196;
              *(v199 + 64) = v242;
              v207 = *(v199 + 72);
              if (v207)
              {
                *(v199 + 80) = v207;
                operator delete(v207);
              }

              *(v199 + 72) = v257;
              *(v199 + 88) = v247;
              *(v199 + 96) = v267;
              *(v199 + 112) = v270;
              *(v199 + 120) = v198;
              *(v199 + 128) = v261;
              *(v199 + 130) = v264;
            }
          }
        }

        v166 = v165-- <= 2;
        a2 = v250;
        if (v166)
        {
          return;
        }

        continue;
      }
    }

    v10 = v9 >> 1;
    v11 = i + 136 * v10;
    if (v8 < 0x4401)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::DiffnCtEvent*,0>((a1 + 136 * v10), a1, v243);
      --a3;
      v20 = *a1;
      if (a4)
      {
        goto LABEL_22;
      }

LABEL_17:
      v21 = *(a1 - 136);
      if (v21 < v20)
      {
        goto LABEL_22;
      }

      v22 = *(a1 + 56);
      if (v20 < v21)
      {
        v24 = *(a1 + 120);
      }

      else
      {
        v23 = *(a1 - 80);
        if (v23 < v22)
        {
          goto LABEL_22;
        }

        v24 = *(a1 + 120);
        if (v22 >= v23 && *(a1 - 16) < v24)
        {
          goto LABEL_22;
        }
      }

      v239 = *(a1 + 72);
      v65 = *(a1 + 24);
      v281 = v65;
      v288 = *(a1 + 40);
      v273 = *(a1 + 8);
      v66 = *(a1 + 64);
      v236 = *(a1 + 88);
      *(a1 + 72) = 0;
      *(a1 + 80) = 0;
      *(a1 + 88) = 0;
      v266 = *(a1 + 96);
      v269 = *(a1 + 112);
      v263 = *(a1 + 130);
      v260 = *(a1 + 128);
      v67 = *v243;
      if (v20 < *v243 || v67 >= v20 && ((v97 = *(a2 - 10), v22 < v97) || v97 >= v22 && v24 < *(a2 - 2)))
      {
        i = a1;
        while (1)
        {
          v69 = *(i + 136);
          i += 136;
          v68 = v69;
          if (v20 < v69)
          {
            break;
          }

          if (v68 >= v20)
          {
            v70 = *(i + 56);
            if (v22 < v70 || v70 >= v22 && v24 < *(i + 120))
            {
              break;
            }
          }
        }
      }

      else
      {
        for (i = a1 + 136; i < a2; i += 136)
        {
          if (v20 < *i)
          {
            break;
          }

          if (*i >= v20)
          {
            v71 = *(i + 56);
            if (v22 < v71 || v71 >= v22 && v24 < *(i + 120))
            {
              break;
            }
          }
        }
      }

      j = a2;
      if (i < a2)
      {
        for (j = v243; ; j = (j - 136))
        {
          if (v20 >= v67)
          {
            if (v67 < v20)
            {
              break;
            }

            v74 = *(j + 7);
            if (v22 >= v74 && (v74 < v22 || v24 >= *(j + 15)))
            {
              break;
            }
          }

          v73 = *(j - 17);
          v67 = v73;
        }
      }

      while (i < j)
      {
        v304 = *i;
        v333 = *(i + 64);
        v320 = *(i + 32);
        v328 = *(i + 48);
        v312 = *(i + 16);
        v75 = *(i + 72);
        v76 = *(i + 88);
        *(i + 72) = 0;
        *(i + 80) = 0;
        *(i + 88) = 0;
        v291 = *(i + 96);
        *v300 = *(i + 112);
        *&v300[15] = *(i + 127);
        v78 = j[2];
        v77 = j[3];
        v79 = j[1];
        *(i + 64) = *(j + 8);
        *(i + 32) = v78;
        *(i + 48) = v77;
        *(i + 16) = v79;
        *i = *j;
        *(i + 72) = *(j + 72);
        *(i + 88) = *(j + 11);
        *(j + 9) = 0;
        *(j + 10) = 0;
        *(j + 11) = 0;
        v80 = j[6];
        v81 = j[7];
        *(i + 127) = *(j + 127);
        *(i + 96) = v80;
        *(i + 112) = v81;
        *j = v304;
        *(j + 8) = v333;
        j[2] = v320;
        j[3] = v328;
        j[1] = v312;
        v82 = *(j + 9);
        if (v82)
        {
          *(j + 10) = v82;
          v253 = v75;
          operator delete(v82);
          v75 = v253;
        }

        *(j + 72) = v75;
        *(j + 11) = v76;
        j[6] = v291;
        j[7] = *v300;
        *(j + 127) = *&v300[15];
        v84 = *(i + 136);
        i += 136;
        v83 = v84;
        if (v20 >= v84)
        {
          a2 = v249;
          do
          {
            if (v83 >= v20)
            {
              v89 = *(i + 56);
              if (v22 < v89 || v89 >= v22 && v24 < *(i + 120))
              {
                break;
              }
            }

            v88 = *(i + 136);
            i += 136;
            v83 = v88;
          }

          while (v20 >= v88);
        }

        else
        {
          a2 = v249;
        }

        do
        {
          do
          {
            v86 = *(j - 17);
            j = (j - 136);
            v85 = v86;
          }

          while (v20 < v86);
          if (v85 < v20)
          {
            break;
          }

          v87 = *(j + 7);
        }

        while (v22 < v87 || v87 >= v22 && v24 < *(j + 15));
      }

      if (i - 136 != a1)
      {
        *a1 = *(i - 136);
        v90 = *(i - 120);
        v91 = *(i - 104);
        v92 = *(i - 88);
        *(a1 + 64) = *(i - 72);
        *(a1 + 32) = v91;
        *(a1 + 48) = v92;
        *(a1 + 16) = v90;
        v93 = *(a1 + 72);
        if (v93)
        {
          *(a1 + 80) = v93;
          operator delete(v93);
          *(a1 + 72) = 0;
          *(a1 + 80) = 0;
          *(a1 + 88) = 0;
        }

        *(a1 + 72) = *(i - 64);
        *(a1 + 88) = *(i - 48);
        *(i - 64) = 0;
        *(i - 56) = 0;
        *(i - 48) = 0;
        v94 = *(i - 40);
        v95 = *(i - 24);
        *(a1 + 127) = *(i - 9);
        *(a1 + 112) = v95;
        *(a1 + 96) = v94;
      }

      *(i - 136) = v20;
      *(i - 112) = v281;
      *(i - 96) = v288;
      *(i - 128) = v273;
      *(i - 80) = v22;
      *(i - 72) = v66;
      v96 = *(i - 64);
      if (v96)
      {
        *(i - 56) = v96;
        operator delete(v96);
      }

      a4 = 0;
      *(i - 64) = v239;
      *(i - 48) = v236;
      *(i - 24) = v269;
      *(i - 40) = v266;
      *(i - 16) = v24;
      *(i - 6) = v263;
      *(i - 8) = v260;
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::DiffnCtEvent*,0>(a1, (a1 + 136 * v10), v243);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::DiffnCtEvent*,0>((a1 + 136), (136 * v10 + a1 - 136), v231);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::DiffnCtEvent*,0>((a1 + 272), (a1 + 136 + 136 * v10), v230);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::DiffnCtEvent*,0>((136 * v10 + a1 - 136), (a1 + 136 * v10), (a1 + 136 + 136 * v10));
      v302 = *a1;
      v331 = *(a1 + 64);
      v318 = *(a1 + 32);
      v326 = *(a1 + 48);
      v310 = *(a1 + 16);
      v12 = *(a1 + 72);
      v13 = *(a1 + 88);
      *(a1 + 72) = 0;
      *(a1 + 80) = 0;
      *(a1 + 88) = 0;
      v271 = *(a1 + 96);
      *v279 = *(a1 + 112);
      *&v279[15] = *(a1 + 127);
      v15 = *(v11 + 32);
      v14 = *(v11 + 48);
      v16 = *(v11 + 16);
      *(a1 + 64) = *(v11 + 64);
      *(a1 + 32) = v15;
      *(a1 + 48) = v14;
      *(a1 + 16) = v16;
      *a1 = *v11;
      *(a1 + 72) = *(v11 + 72);
      *(a1 + 88) = *(v11 + 88);
      *(v11 + 80) = 0;
      *(v11 + 88) = 0;
      *(v11 + 72) = 0;
      v17 = *(v11 + 96);
      v18 = *(v11 + 112);
      *(a1 + 127) = *(v11 + 127);
      *(a1 + 96) = v17;
      *(a1 + 112) = v18;
      *v11 = v302;
      *(v11 + 64) = v331;
      *(v11 + 32) = v318;
      *(v11 + 48) = v326;
      *(v11 + 16) = v310;
      v19 = *(v11 + 72);
      if (v19)
      {
        *(v11 + 80) = v19;
        v251 = v12;
        operator delete(v19);
        v12 = v251;
      }

      *(v11 + 72) = v12;
      *(v11 + 88) = v13;
      *(v11 + 127) = *&v279[15];
      *(v11 + 96) = v271;
      *(v11 + 112) = *v279;
      --a3;
      v20 = *a1;
      if ((a4 & 1) == 0)
      {
        goto LABEL_17;
      }

LABEL_22:
      v25 = 0;
      v235 = *(a1 + 72);
      v26 = *(a1 + 24);
      v27 = *(a1 + 56);
      v280 = v26;
      v287 = *(a1 + 40);
      v272 = *(a1 + 8);
      v234 = *(a1 + 88);
      *(a1 + 72) = 0;
      *(a1 + 80) = 0;
      *(a1 + 88) = 0;
      v265 = *(a1 + 96);
      v268 = *(a1 + 112);
      v262 = *(a1 + 130);
      v259 = *(a1 + 128);
      v233 = v27;
      v28 = v27;
      v29 = *(a1 + 120);
      while (1)
      {
        v30 = a1 + v25;
        v31 = *(a1 + v25 + 136);
        if (v31 >= v20)
        {
          if (v20 < v31)
          {
            break;
          }

          v32 = *(v30 + 192);
          if (v32 >= v27 && (v27 < v32 || *(v30 + 256) >= v29))
          {
            break;
          }
        }

        v25 += 136;
      }

      v238 = a3;
      v33 = a1 + v25 + 136;
      if (v25)
      {
        v34 = v243;
        for (k = *v243; k >= v20; k = v36)
        {
          if (v20 >= k)
          {
            v37 = *(v34 + 7);
            if (v37 < v27 || v27 >= v37 && *(v34 + 15) < v29)
            {
              break;
            }
          }

          v36 = *(v34 - 17);
          v34 = (v34 - 136);
        }
      }

      else
      {
        v34 = a2;
        if (v33 < a2)
        {
          v34 = v243;
          v38 = *v243;
          if (*v243 >= v20)
          {
            v34 = v243;
            do
            {
              if (v20 < v38)
              {
                goto LABEL_69;
              }

              v64 = *(v34 + 7);
              if (v64 < v27)
              {
                break;
              }

              if (v27 < v64)
              {
LABEL_69:
                if (v33 >= v34)
                {
                  break;
                }
              }

              else if (v33 >= v34 || *(v34 + 15) < v29)
              {
                break;
              }

              v63 = *(v34 - 17);
              v34 = (v34 - 136);
              v38 = v63;
            }

            while (v63 >= v20);
          }
        }
      }

      i = v33;
      if (v33 < v34)
      {
        v39 = v34;
        do
        {
          v303 = *i;
          v332 = *(i + 64);
          v319 = *(i + 32);
          v327 = *(i + 48);
          v311 = *(i + 16);
          v40 = *(i + 72);
          v41 = *(i + 88);
          *(i + 72) = 0;
          *(i + 80) = 0;
          *(i + 88) = 0;
          v290 = *(i + 96);
          *v299 = *(i + 112);
          *&v299[15] = *(i + 127);
          v43 = *(v39 + 32);
          v42 = *(v39 + 48);
          v44 = *(v39 + 16);
          *(i + 64) = *(v39 + 64);
          *(i + 32) = v43;
          *(i + 48) = v42;
          *(i + 16) = v44;
          *i = *v39;
          *(i + 72) = *(v39 + 72);
          *(i + 88) = *(v39 + 88);
          *(v39 + 72) = 0;
          *(v39 + 80) = 0;
          *(v39 + 88) = 0;
          v45 = *(v39 + 96);
          v46 = *(v39 + 112);
          *(i + 127) = *(v39 + 127);
          *(i + 96) = v45;
          *(i + 112) = v46;
          *v39 = v303;
          *(v39 + 64) = v332;
          *(v39 + 32) = v319;
          *(v39 + 48) = v327;
          *(v39 + 16) = v311;
          v47 = *(v39 + 72);
          if (v47)
          {
            *(v39 + 80) = v47;
            v252 = v40;
            operator delete(v47);
            v40 = v252;
          }

          *(v39 + 72) = v40;
          *(v39 + 88) = v41;
          *(v39 + 96) = v290;
          *(v39 + 112) = *v299;
          *(v39 + 127) = *&v299[15];
          do
          {
            do
            {
              v49 = *(i + 136);
              i += 136;
              v48 = v49;
            }

            while (v49 < v20);
            if (v20 < v48)
            {
              break;
            }

            v50 = *(i + 56);
          }

          while (v50 < v28 || v28 >= v50 && *(i + 120) < v29);
          while (1)
          {
            v52 = *(v39 - 136);
            v39 -= 136;
            v51 = v52;
            if (v52 < v20)
            {
              break;
            }

            if (v20 >= v51)
            {
              v53 = *(v39 + 56);
              if (v53 < v28 || v28 >= v53 && *(v39 + 120) < v29)
              {
                break;
              }
            }
          }
        }

        while (i < v39);
      }

      a2 = v249;
      if (i - 136 != a1)
      {
        *a1 = *(i - 136);
        v54 = *(i - 120);
        v55 = *(i - 104);
        v56 = *(i - 88);
        *(a1 + 64) = *(i - 72);
        *(a1 + 32) = v55;
        *(a1 + 48) = v56;
        *(a1 + 16) = v54;
        v57 = *(a1 + 72);
        if (v57)
        {
          *(a1 + 80) = v57;
          operator delete(v57);
          *(a1 + 72) = 0;
          *(a1 + 80) = 0;
          *(a1 + 88) = 0;
        }

        *(a1 + 72) = *(i - 64);
        *(a1 + 88) = *(i - 48);
        *(i - 64) = 0;
        *(i - 56) = 0;
        *(i - 48) = 0;
        v58 = *(i - 40);
        v59 = *(i - 24);
        *(a1 + 127) = *(i - 9);
        *(a1 + 112) = v59;
        *(a1 + 96) = v58;
      }

      *(i - 136) = v20;
      *(i - 128) = v272;
      *(i - 112) = v280;
      *(i - 96) = v287;
      *(i - 80) = v233;
      v60 = *(i - 64);
      if (v60)
      {
        *(i - 56) = v60;
        operator delete(v60);
      }

      *(i - 64) = v235;
      *(i - 48) = v234;
      *(i - 24) = v268;
      *(i - 40) = v265;
      *(i - 16) = v29;
      *(i - 6) = v262;
      *(i - 8) = v259;
      v61 = v33 >= v34;
      a3 = v238;
      if (!v61)
      {
        goto LABEL_67;
      }

      v62 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::DiffnCtEvent*>(a1, i - 136);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::DiffnCtEvent*>(i, v249))
      {
        a2 = (i - 136);
        if (v62)
        {
          return;
        }

        goto LABEL_1;
      }

      if ((v62 & 1) == 0)
      {
LABEL_67:
        std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::DiffnCtEvent*,false>(a1, i - 136, v238, a4 & 1);
        a4 = 0;
      }
    }
  }

  v108 = i + 136;
  v110 = i == a2 || v108 == a2;
  if (a4)
  {
    if (!v110)
    {
      v111 = 0;
      v112 = i;
      do
      {
        v113 = v112;
        v112 = v108;
        v114 = *(v113 + 136);
        if (v114 < *v113 || *v113 >= v114 && ((v129 = *(v113 + 192), v130 = *(v113 + 56), v129 < v130) || v130 >= v129 && *(v113 + 256) < *(v113 + 120)))
        {
          v314 = *(v113 + 160);
          v322 = *(v113 + 176);
          v306 = *(v113 + 144);
          v115 = *(v113 + 192);
          v116 = *(v113 + 208);
          v255 = *(v113 + 216);
          *(v113 + 208) = 0;
          *(v113 + 216) = 0;
          *(v113 + 224) = 0;
          v283 = *(v113 + 248);
          v275 = *(v113 + 232);
          v117 = *(v113 + 256);
          v296 = *(v113 + 266);
          v292 = *(v113 + 264);
          v244 = v115;
          v118 = v115;
          for (m = v111; ; m -= 136)
          {
            v120 = a1 + m;
            v121 = *(a1 + m);
            *(v120 + 152) = *(a1 + m + 16);
            v122 = *(a1 + m + 48);
            *(v120 + 168) = *(a1 + m + 32);
            *(v120 + 184) = v122;
            *(v120 + 200) = *(a1 + m + 64);
            *(v120 + 136) = v121;
            v123 = *(a1 + m + 208);
            if (v123)
            {
              *(v120 + 216) = v123;
              operator delete(v123);
              *(v120 + 216) = 0;
              *(v120 + 224) = 0;
            }

            *(v120 + 208) = *(v120 + 72);
            *(v120 + 224) = *(v120 + 88);
            *(v120 + 80) = 0;
            *(v120 + 88) = 0;
            *(v120 + 72) = 0;
            v124 = *(v120 + 112);
            *(v120 + 232) = *(v120 + 96);
            *(v120 + 248) = v124;
            *(v120 + 263) = *(v120 + 127);
            if (!m)
            {
              break;
            }

            v125 = a1 + m;
            v126 = *(a1 + m - 136);
            if (v114 >= v126)
            {
              if (v126 < v114 || (v127 = *(v125 - 80), v118 >= v127) && (v127 < v118 || v117 >= *(v125 - 16)))
              {
                v128 = a1 + m;
                goto LABEL_176;
              }
            }
          }

          v128 = a1;
LABEL_176:
          v131 = a1 + m;
          *v128 = v114;
          *(v128 + 40) = v322;
          *(v128 + 24) = v314;
          *(v128 + 8) = v306;
          *(v128 + 56) = v244;
          v132 = *(v131 + 72);
          if (v132)
          {
            *(v128 + 80) = v132;
            operator delete(v132);
            *(v131 + 80) = 0;
            *(v131 + 88) = 0;
          }

          *(v131 + 72) = v116;
          *(v128 + 80) = v255;
          *(v131 + 112) = v283;
          *(v131 + 96) = v275;
          *(v128 + 120) = v117;
          *(v128 + 128) = v292;
          *(v128 + 130) = v296;
        }

        v108 = v112 + 136;
        v111 += 136;
      }

      while (v112 + 136 != v249);
    }
  }

  else if (!v110)
  {
    v212 = i + 232;
    do
    {
      v214 = a1;
      a1 = v108;
      v215 = *(v214 + 136);
      if (v215 < *v214 || *v214 >= v215 && ((v228 = *(v214 + 192), v229 = *(v214 + 56), v228 < v229) || v229 >= v228 && *(v214 + 256) < *(v214 + 120)))
      {
        v317 = *(v214 + 160);
        v325 = *(v214 + 176);
        v309 = *(v214 + 144);
        v216 = *(v214 + 192);
        v258 = *(v214 + 208);
        v217 = *(v214 + 224);
        *(v214 + 208) = 0;
        *(v214 + 216) = 0;
        *(v214 + 224) = 0;
        v286 = *(v214 + 248);
        v278 = *(v214 + 232);
        v218 = *(v214 + 256);
        v298 = *(v214 + 266);
        v295 = *(v214 + 264);
        v248 = v216;
        v219 = v216;
        for (n = v212; ; n -= 136)
        {
          v221 = *(n - 216);
          v222 = *(n - 184);
          *(n - 64) = *(n - 200);
          *(n - 48) = v222;
          *(n - 32) = *(n - 168);
          *(n - 96) = *(n - 232);
          *(n - 80) = v221;
          v223 = *(n - 24);
          if (v223)
          {
            *(n - 16) = v223;
            operator delete(v223);
            *(n - 16) = 0;
            *(n - 8) = 0;
          }

          *(n - 24) = *(n - 160);
          *(n - 8) = *(n - 144);
          *(n - 152) = 0;
          *(n - 144) = 0;
          *(n - 160) = 0;
          v224 = *(n - 120);
          *n = *(n - 136);
          *(n + 16) = v224;
          *(n + 31) = *(n - 105);
          v225 = *(n - 368);
          if (v215 >= v225)
          {
            if (v225 < v215)
            {
              break;
            }

            v226 = *(n - 312);
            if (v219 >= v226 && (v226 < v219 || v218 >= *(n - 248)))
            {
              break;
            }
          }
        }

        *(n - 232) = v215;
        *(n - 224) = v309;
        *(n - 208) = v317;
        *(n - 192) = v325;
        *(n - 176) = v248;
        v227 = *(n - 160);
        if (v227)
        {
          *(n - 152) = v227;
          operator delete(v227);
        }

        v213 = n - 136;
        *(n - 160) = v258;
        *(n - 144) = v217;
        *(v213 + 16) = v286;
        *v213 = v278;
        *(n - 112) = v218;
        *(n - 102) = v298;
        *(n - 104) = v295;
        a2 = v249;
      }

      v108 = a1 + 136;
      v212 += 136;
    }

    while ((a1 + 136) != a2);
  }
}

__n128 std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::DiffnCtEvent*,0>(__int128 *a1, uint64_t *a2, __int128 *a3)
{
  v4 = *a2;
  if (*a2 >= *a1)
  {
    if (*a1 < v4 || (v53 = a2[7], v54 = *(a1 + 7), v53 >= v54) && (v54 < v53 || (result.n128_u64[0] = a2[15], result.n128_f64[0] >= *(a1 + 15))))
    {
      if (*a3 < v4 || v4 >= *a3 && ((v55 = *(a3 + 7), v56 = a2[7], v55 < v56) || v56 >= v55 && (result.n128_u64[0] = *(a3 + 15), result.n128_f64[0] < *(a2 + 15))))
      {
        v85 = *(a2 + 2);
        v90 = *(a2 + 3);
        v95 = a2[8];
        v75 = *a2;
        v80 = *(a2 + 1);
        v13 = a2 + 9;
        v14 = *(a2 + 9);
        v15 = a2[11];
        a2[9] = 0;
        a2[10] = 0;
        a2[11] = 0;
        *&v71[15] = *(a2 + 127);
        v67 = *(a2 + 6);
        *v71 = *(a2 + 7);
        *a2 = *a3;
        v16 = a3[1];
        v17 = a3[2];
        v18 = a3[3];
        a2[8] = *(a3 + 8);
        *(a2 + 2) = v17;
        *(a2 + 3) = v18;
        *(a2 + 1) = v16;
        *(a2 + 9) = *(a3 + 72);
        a2[11] = *(a3 + 11);
        *(a3 + 9) = 0;
        *(a3 + 10) = 0;
        *(a3 + 11) = 0;
        v19 = a3[6];
        v20 = a3[7];
        *(a2 + 127) = *(a3 + 127);
        *(a2 + 6) = v19;
        *(a2 + 7) = v20;
        a3[2] = v85;
        a3[3] = v90;
        *(a3 + 8) = v95;
        *a3 = v75;
        a3[1] = v80;
        v21 = *(a3 + 9);
        if (v21)
        {
          *(a3 + 10) = v21;
          v22 = a1;
          v23 = a2;
          v64 = v14;
          operator delete(v21);
          v14 = v64;
          a1 = v22;
          a2 = v23;
        }

        *(a3 + 72) = v14;
        *(a3 + 11) = v15;
        result = v67;
        a3[6] = v67;
        a3[7] = *v71;
        *(a3 + 127) = *&v71[15];
        if (*a2 < *a1 || *a1 >= *a2 && ((v59 = a2[7], v60 = *(a1 + 7), v59 < v60) || v60 >= v59 && (result.n128_u64[0] = a2[15], result.n128_f64[0] < *(a1 + 15))))
        {
          v86 = a1[2];
          v91 = a1[3];
          v96 = *(a1 + 8);
          v76 = *a1;
          v81 = a1[1];
          v25 = *(a1 + 72);
          v26 = *(a1 + 11);
          *(a1 + 9) = 0;
          *(a1 + 10) = 0;
          *(a1 + 11) = 0;
          *&v72[15] = *(a1 + 127);
          v68 = a1[6];
          *v72 = a1[7];
          *a1 = *a2;
          v27 = *(a2 + 1);
          v28 = *(a2 + 2);
          v29 = *(a2 + 3);
          *(a1 + 8) = a2[8];
          a1[2] = v28;
          a1[3] = v29;
          a1[1] = v27;
          *(a1 + 72) = *(a2 + 9);
          *(a1 + 11) = a2[11];
          *v13 = 0;
          v13[1] = 0;
          v13[2] = 0;
          v30 = *(a2 + 6);
          v31 = *(a2 + 7);
          *(a1 + 127) = *(a2 + 127);
          a1[6] = v30;
          a1[7] = v31;
          *(a2 + 2) = v86;
          *(a2 + 3) = v91;
          a2[8] = v96;
          *a2 = v76;
          *(a2 + 1) = v81;
          v32 = a2[9];
          if (v32)
          {
            a2[10] = v32;
            v33 = a2;
            v65 = v25;
            operator delete(v32);
            v25 = v65;
            a2 = v33;
          }

          *(a2 + 9) = v25;
          a2[11] = v26;
          result = v68;
          *(a2 + 6) = v68;
          *(a2 + 7) = *v72;
          *(a2 + 127) = *&v72[15];
        }
      }

      return result;
    }
  }

  if (*a3 < v4 || v4 >= *a3 && ((v57 = *(a3 + 7), v58 = a2[7], v57 < v58) || v58 >= v57 && *(a3 + 15) < *(a2 + 15)))
  {
    v84 = a1[2];
    v89 = a1[3];
    v94 = *(a1 + 8);
    v74 = *a1;
    v79 = a1[1];
    v5 = *(a1 + 72);
    v6 = *(a1 + 11);
    *(a1 + 9) = 0;
    *(a1 + 10) = 0;
    *(a1 + 11) = 0;
    *&v70[15] = *(a1 + 127);
    v66 = a1[6];
    *v70 = a1[7];
    *a1 = *a3;
    v7 = a3[1];
    v8 = a3[2];
    v9 = a3[3];
    *(a1 + 8) = *(a3 + 8);
    a1[2] = v8;
    a1[3] = v9;
    a1[1] = v7;
    *(a1 + 72) = *(a3 + 72);
    *(a1 + 11) = *(a3 + 11);
    *(a3 + 9) = 0;
    *(a3 + 10) = 0;
    *(a3 + 11) = 0;
    v10 = a3[6];
    v11 = a3[7];
    *(a1 + 127) = *(a3 + 127);
    a1[6] = v10;
    a1[7] = v11;
    a3[2] = v84;
    a3[3] = v89;
    *(a3 + 8) = v94;
    *a3 = v74;
    a3[1] = v79;
    v12 = *(a3 + 9);
    if (v12)
    {
      *(a3 + 10) = v12;
      v63 = v5;
      operator delete(v12);
      v5 = v63;
    }

    *(a3 + 72) = v5;
    *(a3 + 11) = v6;
LABEL_22:
    result = v66;
    a3[6] = v66;
    a3[7] = *v70;
    *(a3 + 127) = *&v70[15];
    return result;
  }

  v87 = a1[2];
  v92 = a1[3];
  v34 = *(a1 + 9);
  v97 = *(a1 + 8);
  v77 = *a1;
  v82 = a1[1];
  v35 = *(a1 + 10);
  v36 = *(a1 + 11);
  *(a1 + 9) = 0;
  *(a1 + 10) = 0;
  *(a1 + 11) = 0;
  *a1 = *a2;
  v37 = *(a2 + 1);
  v38 = *(a2 + 3);
  v39 = a2[8];
  a1[2] = *(a2 + 2);
  a1[3] = v38;
  v40 = a1[6];
  v41 = a1[7];
  *&v73[15] = *(a1 + 127);
  *(a1 + 8) = v39;
  a1[1] = v37;
  v42 = a2 + 9;
  v69 = v40;
  *v73 = v41;
  *(a1 + 72) = *(a2 + 9);
  *(a1 + 11) = a2[11];
  a2[9] = 0;
  a2[10] = 0;
  a2[11] = 0;
  v43 = *(a2 + 6);
  v44 = *(a2 + 7);
  *(a1 + 127) = *(a2 + 127);
  a1[6] = v43;
  a1[7] = v44;
  *(a2 + 2) = v87;
  *(a2 + 3) = v92;
  a2[8] = v97;
  *a2 = v77;
  *(a2 + 1) = v82;
  v45 = a2[9];
  if (v45)
  {
    a2[10] = v45;
    v46 = a2;
    operator delete(v45);
    a2 = v46;
  }

  a2[9] = v34;
  a2[10] = v35;
  a2[11] = v36;
  result = v69;
  *(a2 + 6) = v69;
  *(a2 + 7) = *v73;
  *(a2 + 127) = *&v73[15];
  if (*a3 < *a2 || *a2 >= *a3 && ((v61 = *(a3 + 7), v62 = a2[7], v61 < v62) || v62 >= v61 && (result.n128_u64[0] = *(a3 + 15), result.n128_f64[0] < *(a2 + 15))))
  {
    v88 = *(a2 + 2);
    v93 = *(a2 + 3);
    v98 = a2[8];
    v78 = *a2;
    v83 = *(a2 + 1);
    v42[1] = 0;
    v42[2] = 0;
    *v42 = 0;
    *&v70[15] = *(a2 + 127);
    v66 = *(a2 + 6);
    *v70 = *(a2 + 7);
    *a2 = *a3;
    v47 = a3[1];
    v48 = a3[2];
    v49 = a3[3];
    a2[8] = *(a3 + 8);
    *(a2 + 2) = v48;
    *(a2 + 3) = v49;
    *(a2 + 1) = v47;
    *(a2 + 9) = *(a3 + 72);
    a2[11] = *(a3 + 11);
    *(a3 + 9) = 0;
    *(a3 + 10) = 0;
    *(a3 + 11) = 0;
    v50 = a3[6];
    v51 = a3[7];
    *(a2 + 127) = *(a3 + 127);
    *(a2 + 6) = v50;
    *(a2 + 7) = v51;
    a3[2] = v88;
    a3[3] = v93;
    *(a3 + 8) = v98;
    *a3 = v78;
    a3[1] = v83;
    v52 = *(a3 + 9);
    if (v52)
    {
      *(a3 + 10) = v52;
      operator delete(v52);
    }

    *(a3 + 9) = v34;
    *(a3 + 10) = v35;
    *(a3 + 11) = v36;
    goto LABEL_22;
  }

  return result;
}

double std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::DiffnCtEvent*,0>(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4)
{
  *&result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::DiffnCtEvent*,0>(a1, a2, a3).n128_u64[0];
  if (*a4 < *a3 || *a3 >= *a4 && ((v33 = *(a4 + 7), v34 = *(a3 + 7), v33 < v34) || v34 >= v33 && (result = *(a4 + 15), result < *(a3 + 15))))
  {
    v54 = a3[2];
    v57 = a3[3];
    v60 = *(a3 + 8);
    v48 = *a3;
    v51 = a3[1];
    v9 = *(a3 + 72);
    v10 = *(a3 + 11);
    *(a3 + 9) = 0;
    *(a3 + 10) = 0;
    *(a3 + 11) = 0;
    *&v45[15] = *(a3 + 127);
    v42 = a3[6];
    *v45 = a3[7];
    *a3 = *a4;
    v11 = a4[1];
    v12 = a4[2];
    v13 = a4[3];
    *(a3 + 8) = *(a4 + 8);
    a3[2] = v12;
    a3[3] = v13;
    a3[1] = v11;
    *(a3 + 72) = *(a4 + 72);
    *(a3 + 11) = *(a4 + 11);
    *(a4 + 9) = 0;
    *(a4 + 10) = 0;
    *(a4 + 11) = 0;
    v14 = a4[6];
    v15 = a4[7];
    *(a3 + 127) = *(a4 + 127);
    a3[6] = v14;
    a3[7] = v15;
    a4[2] = v54;
    a4[3] = v57;
    *(a4 + 8) = v60;
    *a4 = v48;
    a4[1] = v51;
    v16 = *(a4 + 9);
    if (v16)
    {
      *(a4 + 10) = v16;
      v39 = v9;
      operator delete(v16);
      v9 = v39;
    }

    *(a4 + 72) = v9;
    *(a4 + 11) = v10;
    result = *&v42;
    a4[6] = v42;
    a4[7] = *v45;
    *(a4 + 127) = *&v45[15];
    if (*a3 < *a2 || *a2 >= *a3 && ((v35 = *(a3 + 7), v36 = *(a2 + 7), v35 < v36) || v36 >= v35 && (result = *(a3 + 15), result < *(a2 + 15))))
    {
      v55 = a2[2];
      v58 = a2[3];
      v61 = *(a2 + 8);
      v49 = *a2;
      v52 = a2[1];
      v17 = *(a2 + 72);
      v18 = *(a2 + 11);
      *(a2 + 9) = 0;
      *(a2 + 10) = 0;
      *(a2 + 11) = 0;
      *&v46[15] = *(a2 + 127);
      v43 = a2[6];
      *v46 = a2[7];
      *a2 = *a3;
      v19 = a3[1];
      v20 = a3[2];
      v21 = a3[3];
      *(a2 + 8) = *(a3 + 8);
      a2[2] = v20;
      a2[3] = v21;
      a2[1] = v19;
      *(a2 + 72) = *(a3 + 72);
      *(a2 + 11) = *(a3 + 11);
      *(a3 + 9) = 0;
      *(a3 + 10) = 0;
      *(a3 + 11) = 0;
      v22 = a3[6];
      v23 = a3[7];
      *(a2 + 127) = *(a3 + 127);
      a2[6] = v22;
      a2[7] = v23;
      a3[2] = v55;
      a3[3] = v58;
      *(a3 + 8) = v61;
      *a3 = v49;
      a3[1] = v52;
      v24 = *(a3 + 9);
      if (v24)
      {
        *(a3 + 10) = v24;
        v40 = v17;
        operator delete(v24);
        v17 = v40;
      }

      *(a3 + 72) = v17;
      *(a3 + 11) = v18;
      result = *&v43;
      a3[6] = v43;
      a3[7] = *v46;
      *(a3 + 127) = *&v46[15];
      if (*a2 < *a1 || *a1 >= *a2 && ((v37 = *(a2 + 7), v38 = *(a1 + 56), v37 < v38) || v38 >= v37 && (result = *(a2 + 15), result < *(a1 + 120))))
      {
        v56 = *(a1 + 32);
        v59 = *(a1 + 48);
        v62 = *(a1 + 64);
        v50 = *a1;
        v53 = *(a1 + 16);
        v25 = *(a1 + 72);
        v26 = *(a1 + 88);
        *(a1 + 72) = 0;
        *(a1 + 80) = 0;
        *(a1 + 88) = 0;
        *&v47[15] = *(a1 + 127);
        v44 = *(a1 + 96);
        *v47 = *(a1 + 112);
        *a1 = *a2;
        v27 = a2[1];
        v28 = a2[2];
        v29 = a2[3];
        *(a1 + 64) = *(a2 + 8);
        *(a1 + 32) = v28;
        *(a1 + 48) = v29;
        *(a1 + 16) = v27;
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 88) = *(a2 + 11);
        *(a2 + 9) = 0;
        *(a2 + 10) = 0;
        *(a2 + 11) = 0;
        v30 = a2[6];
        v31 = a2[7];
        *(a1 + 127) = *(a2 + 127);
        *(a1 + 96) = v30;
        *(a1 + 112) = v31;
        a2[2] = v56;
        a2[3] = v59;
        *(a2 + 8) = v62;
        *a2 = v50;
        a2[1] = v53;
        v32 = *(a2 + 9);
        if (v32)
        {
          *(a2 + 10) = v32;
          v41 = v25;
          operator delete(v32);
          v25 = v41;
        }

        *(a2 + 72) = v25;
        *(a2 + 11) = v26;
        result = *&v44;
        a2[6] = v44;
        a2[7] = *v47;
        *(a2 + 127) = *&v47[15];
      }
    }
  }

  return result;
}

double std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::DiffnCtEvent*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::DiffnCtEvent*,0>(a1, a2, a3, a4);
  if (*a5 < *a4 || *a4 >= *a5 && ((v43 = *(a5 + 56), v44 = *(a4 + 56), v43 < v44) || v44 >= v43 && (result = *(a5 + 120), result < *(a4 + 120))))
  {
    v71 = *(a4 + 32);
    v75 = *(a4 + 48);
    v79 = *(a4 + 64);
    v63 = *a4;
    v67 = *(a4 + 16);
    v11 = *(a4 + 72);
    v12 = *(a4 + 88);
    *(a4 + 72) = 0;
    *(a4 + 80) = 0;
    *(a4 + 88) = 0;
    *&v59[15] = *(a4 + 127);
    v55 = *(a4 + 96);
    *v59 = *(a4 + 112);
    *a4 = *a5;
    v13 = *(a5 + 16);
    v14 = *(a5 + 32);
    v15 = *(a5 + 48);
    *(a4 + 64) = *(a5 + 64);
    *(a4 + 32) = v14;
    *(a4 + 48) = v15;
    *(a4 + 16) = v13;
    *(a4 + 72) = *(a5 + 72);
    *(a4 + 88) = *(a5 + 88);
    *(a5 + 72) = 0;
    *(a5 + 80) = 0;
    *(a5 + 88) = 0;
    v16 = *(a5 + 96);
    v17 = *(a5 + 112);
    *(a4 + 127) = *(a5 + 127);
    *(a4 + 96) = v16;
    *(a4 + 112) = v17;
    *(a5 + 32) = v71;
    *(a5 + 48) = v75;
    *(a5 + 64) = v79;
    *a5 = v63;
    *(a5 + 16) = v67;
    v18 = *(a5 + 72);
    if (v18)
    {
      *(a5 + 80) = v18;
      v51 = v11;
      operator delete(v18);
      v11 = v51;
    }

    *(a5 + 72) = v11;
    *(a5 + 88) = v12;
    result = *&v55;
    *(a5 + 96) = v55;
    *(a5 + 112) = *v59;
    *(a5 + 127) = *&v59[15];
    if (*a4 < *a3 || *a3 >= *a4 && ((v45 = *(a4 + 56), v46 = *(a3 + 56), v45 < v46) || v46 >= v45 && (result = *(a4 + 120), result < *(a3 + 120))))
    {
      v72 = *(a3 + 32);
      v76 = *(a3 + 48);
      v80 = *(a3 + 64);
      v64 = *a3;
      v68 = *(a3 + 16);
      v19 = *(a3 + 72);
      v20 = *(a3 + 88);
      *(a3 + 72) = 0;
      *(a3 + 80) = 0;
      *(a3 + 88) = 0;
      *&v60[15] = *(a3 + 127);
      v56 = *(a3 + 96);
      *v60 = *(a3 + 112);
      *a3 = *a4;
      v21 = *(a4 + 16);
      v22 = *(a4 + 32);
      v23 = *(a4 + 48);
      *(a3 + 64) = *(a4 + 64);
      *(a3 + 32) = v22;
      *(a3 + 48) = v23;
      *(a3 + 16) = v21;
      *(a3 + 72) = *(a4 + 72);
      *(a3 + 88) = *(a4 + 88);
      *(a4 + 72) = 0;
      *(a4 + 80) = 0;
      *(a4 + 88) = 0;
      v24 = *(a4 + 96);
      v25 = *(a4 + 112);
      *(a3 + 127) = *(a4 + 127);
      *(a3 + 96) = v24;
      *(a3 + 112) = v25;
      *(a4 + 32) = v72;
      *(a4 + 48) = v76;
      *(a4 + 64) = v80;
      *a4 = v64;
      *(a4 + 16) = v68;
      v26 = *(a4 + 72);
      if (v26)
      {
        *(a4 + 80) = v26;
        v52 = v19;
        operator delete(v26);
        v19 = v52;
      }

      *(a4 + 72) = v19;
      *(a4 + 88) = v20;
      result = *&v56;
      *(a4 + 96) = v56;
      *(a4 + 112) = *v60;
      *(a4 + 127) = *&v60[15];
      if (*a3 < *a2 || *a2 >= *a3 && ((v47 = *(a3 + 56), v48 = *(a2 + 56), v47 < v48) || v48 >= v47 && (result = *(a3 + 120), result < *(a2 + 120))))
      {
        v73 = *(a2 + 32);
        v77 = *(a2 + 48);
        v81 = *(a2 + 64);
        v65 = *a2;
        v69 = *(a2 + 16);
        v27 = *(a2 + 72);
        v28 = *(a2 + 88);
        *(a2 + 72) = 0;
        *(a2 + 80) = 0;
        *(a2 + 88) = 0;
        *&v61[15] = *(a2 + 127);
        v57 = *(a2 + 96);
        *v61 = *(a2 + 112);
        *a2 = *a3;
        v29 = *(a3 + 16);
        v30 = *(a3 + 32);
        v31 = *(a3 + 48);
        *(a2 + 64) = *(a3 + 64);
        *(a2 + 32) = v30;
        *(a2 + 48) = v31;
        *(a2 + 16) = v29;
        *(a2 + 72) = *(a3 + 72);
        *(a2 + 88) = *(a3 + 88);
        *(a3 + 72) = 0;
        *(a3 + 80) = 0;
        *(a3 + 88) = 0;
        v32 = *(a3 + 96);
        v33 = *(a3 + 112);
        *(a2 + 127) = *(a3 + 127);
        *(a2 + 96) = v32;
        *(a2 + 112) = v33;
        *(a3 + 32) = v73;
        *(a3 + 48) = v77;
        *(a3 + 64) = v81;
        *a3 = v65;
        *(a3 + 16) = v69;
        v34 = *(a3 + 72);
        if (v34)
        {
          *(a3 + 80) = v34;
          v53 = v27;
          operator delete(v34);
          v27 = v53;
        }

        *(a3 + 72) = v27;
        *(a3 + 88) = v28;
        result = *&v57;
        *(a3 + 96) = v57;
        *(a3 + 112) = *v61;
        *(a3 + 127) = *&v61[15];
        if (*a2 < *a1 || *a1 >= *a2 && ((v49 = *(a2 + 56), v50 = *(a1 + 56), v49 < v50) || v50 >= v49 && (result = *(a2 + 120), result < *(a1 + 120))))
        {
          v74 = *(a1 + 32);
          v78 = *(a1 + 48);
          v82 = *(a1 + 64);
          v66 = *a1;
          v70 = *(a1 + 16);
          v35 = *(a1 + 72);
          v36 = *(a1 + 88);
          *(a1 + 72) = 0;
          *(a1 + 80) = 0;
          *(a1 + 88) = 0;
          *&v62[15] = *(a1 + 127);
          v58 = *(a1 + 96);
          *v62 = *(a1 + 112);
          *a1 = *a2;
          v37 = *(a2 + 16);
          v38 = *(a2 + 32);
          v39 = *(a2 + 48);
          *(a1 + 64) = *(a2 + 64);
          *(a1 + 32) = v38;
          *(a1 + 48) = v39;
          *(a1 + 16) = v37;
          *(a1 + 72) = *(a2 + 72);
          *(a1 + 88) = *(a2 + 88);
          *(a2 + 72) = 0;
          *(a2 + 80) = 0;
          *(a2 + 88) = 0;
          v40 = *(a2 + 96);
          v41 = *(a2 + 112);
          *(a1 + 127) = *(a2 + 127);
          *(a1 + 96) = v40;
          *(a1 + 112) = v41;
          *(a2 + 32) = v74;
          *(a2 + 48) = v78;
          *(a2 + 64) = v82;
          *a2 = v66;
          *(a2 + 16) = v70;
          v42 = *(a2 + 72);
          if (v42)
          {
            *(a2 + 80) = v42;
            v54 = v35;
            operator delete(v42);
            v35 = v54;
          }

          *(a2 + 72) = v35;
          *(a2 + 88) = v36;
          result = *&v58;
          *(a2 + 96) = v58;
          *(a2 + 112) = *v62;
          *(a2 + 127) = *&v62[15];
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::DiffnCtEvent*>(uint64_t a1, uint64_t a2)
{
  v3 = 0xF0F0F0F0F0F0F0F1 * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::DiffnCtEvent*,0>(a1, (a1 + 136), (a2 - 136));
        v4 = 1;
        return v4 & 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::DiffnCtEvent*,0>(a1, (a1 + 136), (a1 + 272), (a2 - 136));
        v4 = 1;
        return v4 & 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::DiffnCtEvent*,0>(a1, a1 + 136, a1 + 272, a1 + 408, a2 - 136);
        v4 = 1;
        return v4 & 1;
    }
  }

  else
  {
    if (v3 < 2)
    {
      goto LABEL_3;
    }

    if (v3 == 2)
    {
      v5 = (a2 - 136);
      v6 = *(a2 - 136);
      if (v6 < *a1 || *a1 >= v6 && ((v44 = *(a2 - 80), v45 = *(a1 + 56), v44 < v45) || v45 >= v44 && *(a2 - 16) < *(a1 + 120)))
      {
        v60 = *(a1 + 32);
        v62 = *(a1 + 48);
        v63 = *(a1 + 64);
        v56 = *a1;
        v58 = *(a1 + 16);
        v7 = *(a1 + 72);
        v8 = *(a1 + 88);
        *(a1 + 72) = 0;
        *(a1 + 80) = 0;
        *(a1 + 88) = 0;
        *&v54[15] = *(a1 + 127);
        v52 = *(a1 + 96);
        *v54 = *(a1 + 112);
        *a1 = *v5;
        v9 = *(a2 - 120);
        v10 = *(a2 - 104);
        v11 = *(a2 - 88);
        *(a1 + 64) = *(a2 - 72);
        *(a1 + 32) = v10;
        *(a1 + 48) = v11;
        *(a1 + 16) = v9;
        *(a1 + 72) = *(a2 - 64);
        *(a1 + 88) = *(a2 - 48);
        *(a2 - 64) = 0;
        *(a2 - 56) = 0;
        *(a2 - 48) = 0;
        v12 = a2 - 40;
        v13 = *(a2 - 40);
        v14 = *(a2 - 24);
        *(a1 + 127) = *(a2 - 9);
        *(a1 + 96) = v13;
        *(a1 + 112) = v14;
        *(a2 - 104) = v60;
        *(a2 - 88) = v62;
        *(a2 - 72) = v63;
        *v5 = v56;
        *(a2 - 120) = v58;
        v15 = *(a2 - 64);
        if (v15)
        {
          *(a2 - 56) = v15;
          v16 = a2;
          v48 = v7;
          operator delete(v15);
          v7 = v48;
          a2 = v16;
        }

        *(a2 - 64) = v7;
        *(a2 - 48) = v8;
        *v12 = v52;
        *(v12 + 16) = *v54;
        *(v12 + 31) = *&v54[15];
        v4 = 1;
        return v4 & 1;
      }

LABEL_3:
      v4 = 1;
      return v4 & 1;
    }
  }

  v17 = a1 + 272;
  v18 = a2;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::DiffnCtEvent*,0>(a1, (a1 + 136), (a1 + 272));
  v20 = a1 + 408;
  if (a1 + 408 == v18)
  {
LABEL_40:
    v43 = 1;
    goto LABEL_47;
  }

  v21 = v18;
  v22 = 0;
  v23 = 0;
  v47 = v18;
  while (1)
  {
    v24 = *v20;
    if (*v20 < *v17)
    {
      break;
    }

    if (*v17 >= v24)
    {
      v25 = *(v20 + 56);
      v40 = *(v17 + 56);
      if (v25 < v40 || v40 >= v25 && *(v20 + 120) < *(v17 + 120))
      {
        goto LABEL_20;
      }
    }

LABEL_17:
    v17 = v20;
    v22 += 136;
    v20 += 136;
    if (v20 == v21)
    {
      goto LABEL_40;
    }
  }

  v25 = *(v20 + 56);
LABEL_20:
  v26 = 0;
  v57 = *(v20 + 8);
  v59 = *(v20 + 24);
  v61 = *(v20 + 40);
  v28 = *(v20 + 64);
  v27 = *(v20 + 72);
  v29 = *(v20 + 96);
  v49 = *(v20 + 80);
  *(v20 + 72) = 0;
  *(v20 + 80) = 0;
  *(v20 + 88) = 0;
  v53 = v29;
  v55 = *(v20 + 112);
  v51 = *(v20 + 130);
  v50 = *(v20 + 128);
  v30 = v22;
  v31 = *(v20 + 120);
  while (1)
  {
    v32 = a1 + v30;
    v33 = (a1 + v30 + 408);
    v34 = *(a1 + v30 + 320);
    v33[2] = *(a1 + v30 + 304);
    v33[3] = v34;
    *(a1 + v30 + 472) = *(a1 + v30 + 336);
    v35 = *(a1 + v30 + 288);
    *v33 = *(a1 + v30 + 272);
    v33[1] = v35;
    if (v26)
    {
      *(v32 + 488) = v26;
      operator delete(v26);
      *(v32 + 488) = 0;
      *(v32 + 496) = 0;
    }

    *(v32 + 480) = *(v32 + 344);
    *(v32 + 496) = *(v32 + 360);
    *(v32 + 352) = 0;
    *(v32 + 360) = 0;
    *(v32 + 344) = 0;
    LOBYTE(v19) = v32 - 8;
    v36 = *(v32 + 384);
    *(v32 + 504) = *(v32 + 368);
    *(v32 + 520) = v36;
    *(v32 + 535) = *(v32 + 399);
    if (v30 == -272)
    {
      break;
    }

    v19 = a1 + v30;
    v37 = *(a1 + v30 + 136);
    if (v24 >= v37)
    {
      if (v37 < v24 || (v38 = *(v19 + 192), v25 >= v38) && (v38 < v25 || v31 >= *(v19 + 256)))
      {
        v39 = a1 + v30 + 272;
        goto LABEL_37;
      }
    }

    v26 = *(v32 + 344);
    v30 -= 136;
  }

  v39 = a1;
LABEL_37:
  v41 = a1 + v30;
  *v39 = v24;
  *(v39 + 8) = v57;
  *(v39 + 24) = v59;
  *(v39 + 40) = v61;
  *(v39 + 56) = v25;
  *(v39 + 64) = v28;
  v42 = *(v41 + 344);
  if (v42)
  {
    *(v39 + 80) = v42;
    operator delete(v42);
    *(v41 + 352) = 0;
    *(v41 + 360) = 0;
  }

  *(v41 + 344) = v27;
  *(v39 + 80) = v49;
  *(v41 + 368) = v53;
  *(v41 + 384) = v55;
  *(v39 + 120) = v31;
  *(v39 + 128) = v50;
  ++v23;
  *(v39 + 130) = v51;
  v21 = v47;
  if (v23 != 8)
  {
    goto LABEL_17;
  }

  v43 = 0;
  LOBYTE(v19) = v20 + 136 == v47;
LABEL_47:
  v4 = v43 | v19;
  return v4 & 1;
}

void ***std::__exception_guard_exceptions<std::vector<operations_research::sat::DiffnCtEvent>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 8);
          if (v6)
          {
            *(v4 - 7) = v6;
            operator delete(v6);
          }

          v4 -= 136;
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}