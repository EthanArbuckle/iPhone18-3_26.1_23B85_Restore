void sub_23CC86D24(_Unwind_Exception *exception_object)
{
  if (*(v2 + 24))
  {
    operator delete(*(v2 + 32));
  }

  *(v1 + 200) = v2;
  _Unwind_Resume(exception_object);
}

void operations_research::sat::PrecedenceRelations::SetLevel(operations_research::sat::PrecedenceRelations *this, int a2)
{
  v7 = *(this + 27);
  v6 = *(this + 28);
  if (v7 != v6)
  {
    v42 = v5;
    v43 = v4;
    v44 = v2;
    v45 = v3;
    v38 = a2;
    while (*(v6 - 8) > a2)
    {
      v9 = *(v6 - 4);
      v10 = *(this + 25);
      if (0xAAAAAAAAAAAAAAABLL * ((v10 - *(this + 24)) >> 4) > v9)
      {
        while (1)
        {
          v11 = *(v10 - 48);
          v12 = (v10 - 32);
          if (v11 == -1)
          {
            operations_research::sat::PrecedenceRelations::UpdateBestRelation(this, *v12, 0x7FFFFFFFFFFFFFFELL);
            v15 = *(this + 34);
            if (v15 > 1)
            {
              v16 = 0;
              _X10 = *(this + 36);
              __asm { PRFM            #4, [X10] }

              v22 = *(v10 - 32);
              v23 = *(v10 - 28);
              v24 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v22) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v22))) + v23;
              v25 = ((v24 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v24);
              v26 = vdup_n_s8(v25 & 0x7F);
              v27 = ((v25 >> 7) ^ (_X10 >> 12)) & v15;
              v28 = *(_X10 + v27);
              v29 = vceq_s8(v28, v26);
              if (!v29)
              {
                goto LABEL_25;
              }

              do
              {
LABEL_20:
                v30 = (v27 + (__clz(__rbit64(v29)) >> 3)) & v15;
                v31 = (*(this + 37) + 12 * v30);
                v33 = *v31;
                v32 = v31[1];
                if (v33 == v22 && v32 == v23)
                {
                  absl::lts_20240722::container_internal::EraseMetaOnly(this + 34, v30);
                  goto LABEL_29;
                }

                v29 &= ((v29 & 0x8080808080808080) - 1) & 0x8080808080808080;
              }

              while (v29);
LABEL_25:
              while (!*&vceq_s8(v28, 0x8080808080808080))
              {
                v16 += 8;
                v27 = (v16 + v27) & v15;
                v28 = *(_X10 + v27);
                v29 = vceq_s8(v28, v26);
                if (v29)
                {
                  goto LABEL_20;
                }
              }
            }

            else if (*(this + 35) >= 2uLL && *(this + 72) == *(v10 - 32) && *(this + 73) == *(v10 - 28))
            {
              *(this + 35) = 0;
            }

LABEL_29:
            v35 = *(this + 45);
            v36 = *(v10 - 28);
            v37 = v35 + 24 * *(v10 - 32);
            *(v37 + 8) -= 4;
            *(v35 + 24 * v36 + 8) -= 4;
            v14 = *(this + 25);
            if ((*(v14 - 24) & 1) == 0)
            {
              goto LABEL_8;
            }
          }

          else
          {
            absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,int>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const,int>>>::find_or_prepare_insert<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>(this + 272, (v10 - 32), v39);
            if (v41 == 1)
            {
              v13 = v40;
              *v40 = *v12;
              *(v13 + 8) = 0;
            }

            *(v40 + 8) = v11;
            operations_research::sat::PrecedenceRelations::UpdateBestRelation(this, *(v10 - 32), *(*(this + 24) + 48 * *(v10 - 48) + 8));
            v14 = *(this + 25);
            if ((*(v14 - 24) & 1) == 0)
            {
              goto LABEL_8;
            }
          }

          operator delete(*(v14 - 16));
LABEL_8:
          v10 = v14 - 48;
          *(this + 25) = v14 - 48;
          if (0xAAAAAAAAAAAAAAABLL * ((v14 - 48 - *(this + 24)) >> 4) <= v9)
          {
            v7 = *(this + 27);
            v6 = *(this + 28);
            a2 = v38;
            break;
          }
        }
      }

      v6 -= 8;
      *(this + 28) = v6;
      if (v7 == v6)
      {
        return;
      }
    }
  }
}

unint64_t *operations_research::sat::PrecedenceRelations::UpdateBestRelation(unint64_t *result, unint64_t a2, uint64_t a3)
{
  v3 = a3;
  v42 = a2;
  v4 = result[30];
  v5 = HIDWORD(a2);
  if (v4 > 1)
  {
    v6 = 0;
    v7 = v5 + ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a2)));
    v8 = 0x9DDFEA08EB382D69 * v7;
    v9 = (v7 * 0x9DDFEA08EB382D69) >> 64;
    _X11 = result[32];
    __asm { PRFM            #4, [X11] }

    v15 = v9 ^ v8;
    v16 = vdup_n_s8(v15 & 0x7F);
    v17 = ((v15 >> 7) ^ (_X11 >> 12)) & v4;
    v18 = *(_X11 + v17);
    v19 = vceq_s8(v18, v16);
    if (!v19)
    {
      goto LABEL_10;
    }

LABEL_5:
    while (1)
    {
      v20 = (v17 + (__clz(__rbit64(v19)) >> 3)) & v4;
      v21 = result[33] + 16 * v20;
      if (*v21 == a2 && *(v21 + 4) == HIDWORD(a2))
      {
        break;
      }

      v19 &= ((v19 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v19)
      {
LABEL_10:
        while (!*&vceq_s8(v18, 0x8080808080808080))
        {
          v6 += 8;
          v17 = (v6 + v17) & v4;
          v18 = *(_X11 + v17);
          v19 = vceq_s8(v18, v16);
          if (v19)
          {
            goto LABEL_5;
          }
        }

        goto LABEL_16;
      }
    }

    if (!(_X11 + v20))
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (result[31] < 2)
    {
      goto LABEL_16;
    }

    v25 = *(result + 64) == a2 && *(result + 65) == HIDWORD(a2);
    v26 = &absl::lts_20240722::container_internal::kSooControl;
    if (v25)
    {
      v21 = (result + 32);
    }

    else
    {
      v26 = 0;
      v21 = 0;
    }

    if (!v26)
    {
      goto LABEL_16;
    }
  }

  if (*(v21 + 8) < a3)
  {
    v3 = *(v21 + 8);
  }

LABEL_16:
  if (v3 == 0x7FFFFFFFFFFFFFFELL)
  {
    v23 = result[38];
    if (v23 > 1)
    {
      v27 = 0;
      v28 = v5 + ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a2)));
      _X12 = result[40];
      __asm { PRFM            #4, [X12] }

      v31 = ((v28 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v28);
      v32 = vdup_n_s8(v31 & 0x7F);
      v33 = ((v31 >> 7) ^ (_X12 >> 12)) & v23;
      v34 = *(_X12 + v33);
      v35 = vceq_s8(v34, v32);
      if (!v35)
      {
        goto LABEL_39;
      }

      do
      {
LABEL_34:
        v36 = (v33 + (__clz(__rbit64(v35)) >> 3)) & v23;
        v37 = (result[41] + 16 * v36);
        v39 = *v37;
        v38 = v37[1];
        if (v39 == a2 && v38 == HIDWORD(a2))
        {
          v41 = result + 38;

          return absl::lts_20240722::container_internal::EraseMetaOnly(v41, v36);
        }

        v35 &= ((v35 & 0x8080808080808080) - 1) & 0x8080808080808080;
      }

      while (v35);
LABEL_39:
      while (!*&vceq_s8(v34, 0x8080808080808080))
      {
        v27 += 8;
        v33 = (v27 + v33) & v23;
        v34 = *(_X12 + v33);
        v35 = vceq_s8(v34, v32);
        if (v35)
        {
          goto LABEL_34;
        }
      }
    }

    else if (result[39] >= 2 && result[40] == a2)
    {
      result[39] = 0;
    }
  }

  else
  {
    result = absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>::find_or_prepare_insert<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>((result + 38), &v42, v43);
    if (v45 == 1)
    {
      v24 = v44;
      *v44 = v42;
      v24[1] = 0;
    }

    v44[1] = v3;
  }

  return result;
}

uint64_t operations_research::sat::PrecedenceRelations::GetConditionalEnforcements(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a3 ^ 1u;
  if (v3 >= a2)
  {
    v4 = a2 | (v3 << 32);
  }

  else
  {
    v4 = v3 | (a2 << 32);
  }

  v5 = *(a1 + 272);
  if (v5 > 1)
  {
    v7 = 0;
    v8 = HIDWORD(v4) + ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v4) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v4)));
    v9 = 0x9DDFEA08EB382D69 * v8;
    v10 = (v8 * 0x9DDFEA08EB382D69) >> 64;
    _X12 = *(a1 + 288);
    __asm { PRFM            #4, [X12] }

    v16 = v10 ^ v9;
    v17 = vdup_n_s8(v16 & 0x7F);
    v18 = ((v16 >> 7) ^ (_X12 >> 12)) & v5;
    v19 = *(_X12 + v18);
    v20 = vceq_s8(v19, v17);
    if (!v20)
    {
      goto LABEL_17;
    }

LABEL_12:
    while (1)
    {
      v21 = (v18 + (__clz(__rbit64(v20)) >> 3)) & v5;
      v22 = (*(a1 + 296) + 12 * v21);
      if (*v22 == v4 && v22[1] == HIDWORD(v4))
      {
        break;
      }

      v20 &= ((v20 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v20)
      {
LABEL_17:
        while (!*&vceq_s8(v19, 0x8080808080808080))
        {
          v7 += 8;
          v18 = (v7 + v18) & v5;
          v19 = *(_X12 + v18);
          v20 = vceq_s8(v19, v17);
          if (v20)
          {
            goto LABEL_12;
          }
        }

        return 0;
      }
    }

    if (_X12 + v21)
    {
      goto LABEL_23;
    }

    return 0;
  }

  if (*(a1 + 280) < 2uLL)
  {
    return 0;
  }

  if (*(a1 + 288) != v4 || *(a1 + 292) != HIDWORD(v4))
  {
    return 0;
  }

  v22 = (a1 + 288);
  if (!&absl::lts_20240722::container_internal::kSooControl)
  {
    return 0;
  }

LABEL_23:
  v24 = *(a1 + 192) + 48 * v22[2];
  if (operations_research::sat::PrecedenceRelations::GetOffset(a1, a2, a3) >= -*(v24 + 8))
  {
    return 0;
  }

  v27 = *(v24 + 32);
  v26 = v24 + 32;
  v25 = v27;
  if (*(v26 - 8))
  {
    return v25;
  }

  else
  {
    return v26;
  }
}

unint64_t operations_research::sat::PrecedenceRelations::GetConditionalOffset(uint64_t a1, uint64_t a2, int a3)
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

  v8 = *(a1 + 304);
  if (v8 > 1)
  {
    v9 = 0;
    v10 = HIDWORD(v7) + ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v7) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v7)));
    v11 = 0x9DDFEA08EB382D69 * v10;
    v12 = (v10 * 0x9DDFEA08EB382D69) >> 64;
    _X12 = *(a1 + 320);
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
      v24 = *(a1 + 328) + 16 * v23;
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

  if (*(a1 + 312) >= 2uLL)
  {
    v27 = *(a1 + 320) == v7 && *(a1 + 324) == HIDWORD(v7);
    v28 = &absl::lts_20240722::container_internal::kSooControl;
    if (v27)
    {
      v24 = a1 + 320;
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

void operations_research::sat::PrecedenceRelations::Build(operations_research::sat::PrecedenceRelations *this)
{
  v133 = *MEMORY[0x277D85DE8];
  if ((*(this + 160) & 1) == 0)
  {
    *(this + 160) = 1;
    v2 = *(this + 10);
    v119 = 0;
    v120 = 0;
    v121 = 0;
    v125[0] = &v119;
    LOBYTE(v125[1]) = 0;
    if (v2)
    {
      if ((v2 & 0x80000000) == 0)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    if (*(this + 17) != *(this + 18))
    {
      absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v125, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/precedences.cc", 218);
      absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v125);
    }

    util::StaticGraph<int,int>::ReserveArcs(this + 32, *(this + 62) & 0xFFFFFFFE);
    if (*(this + 31) >= 2uLL)
    {
      if (*(this + 30) >= 2uLL)
      {
        v4 = *(this + 32);
        v3 = *(this + 33);
        if (*v4 <= -2)
        {
          do
          {
            v5 = __clz(__rbit64((*v4 | ~(*v4 >> 7)) & 0x101010101010101)) >> 3;
            v4 = (v4 + v5);
            v3 += v5;
          }

          while (*v4 < -1);
        }
      }

      else
      {
        v3 = (this + 256);
        v4 = &absl::lts_20240722::container_internal::kSooControl;
      }

      do
      {
        *v125 = *v3;
        v122 = -v125[1];
        if (v125[1] <= 0)
        {
          LODWORD(v124) = v125[0];
          v6 = HIDWORD(v125[0]) ^ 1;
          util::StaticGraph<int,int>::AddArc(this + 32, v125[0], HIDWORD(v125[0]) ^ 1);
          std::vector<long long>::push_back[abi:ne200100](this + 136, &v122);
          v7 = 0xAAAAAAAAAAAAAAABLL * ((v120 - v119) >> 3);
          if (SHIDWORD(v125[0]) >= v7)
          {
            absl::lts_20240722::log_internal::MakeCheckOpString<operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_> const&,unsigned long long>(v125 + 1, v7, "var_pair.second < before.size()");
          }

          std::vector<int>::push_back[abi:ne200100](v119 + 24 * v6, &v124);
          LODWORD(v124) = HIDWORD(v125[0]);
          v8 = LODWORD(v125[0]) ^ 1;
          util::StaticGraph<int,int>::AddArc(this + 32, SHIDWORD(v125[0]), LODWORD(v125[0]) ^ 1);
          std::vector<long long>::push_back[abi:ne200100](this + 136, &v122);
          v9 = 0xAAAAAAAAAAAAAAABLL * ((v120 - v119) >> 3);
          if (SHIDWORD(v125[0]) >= v9)
          {
            absl::lts_20240722::log_internal::MakeCheckOpString<operations_research::StrongIndex<operations_research::sat::BooleanVariable_index_tag_> const&,unsigned long long>(v125 + 1, v9, "var_pair.second < before.size()");
          }

          std::vector<int>::push_back[abi:ne200100](v119 + 24 * v8, &v124);
        }

        v11 = *(v4 + 1);
        v4 = (v4 + 1);
        LOBYTE(v10) = v11;
        ++v3;
        if (v11 <= -2)
        {
          do
          {
            v12 = __clz(__rbit64((*v4 | ~(*v4 >> 7)) & 0x101010101010101)) >> 3;
            v4 = (v4 + v12);
            v3 += v12;
            v10 = *v4;
          }

          while (v10 < -1);
        }
      }

      while (v10 != 255);
    }

    v116 = 0;
    v117 = 0;
    v118 = 0;
    util::StaticGraph<int,int>::Build(this + 32, &v116);
    if (v116 != v117)
    {
      if ((v117 - v116) < 0x7FFFFFFFFFFFFFFDLL)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v125[0] = 0;
    v125[1] = 0;
    v126 = 0;
    v122 = v125;
    v123 = 0;
    v127 = 0;
    v129 = 0;
    v130 = 0;
    v128 = 0;
    __p = 0u;
    v132 = 0u;
    if (*(this + 12) >= 1)
    {
      v13 = 0;
      do
      {
        util::internal::DenseIntTopologicalSorterTpl<true>::AddEdge(v125, *(*(this + 14) + 4 * v13), *(*(this + 11) + 4 * v13));
        ++v13;
      }

      while (v13 < *(this + 12));
    }

    v115 = 0;
    v114 = 0;
    *(this + 22) = *(this + 21);
    while (util::internal::DenseIntTopologicalSorterTpl<true>::GetNext(v125, &v115, &v114, 0))
    {
      LODWORD(v122) = v115;
      std::vector<int>::push_back[abi:ne200100](this + 168, &v122);
      if (v114 == 1)
      {
        *(this + 161) = 0;
        goto LABEL_123;
      }
    }

    v14 = v114;
    *(this + 161) = v114 ^ 1;
    if ((v14 & 1) == 0)
    {
      v15 = *(this + 21);
      v101 = *(this + 22);
      if (v15 != v101)
      {
        v16 = 0;
        v111 = (this + 256);
        v105 = (this + 320);
        while (1)
        {
          v102 = v15;
          v17 = *v15;
          v113 = *v15;
          if (++v16 >= 1000001)
          {
            goto LABEL_122;
          }

          v18 = *(this + 8);
          v19 = *(v18 + 4 * v17);
          v20 = v17 + 1;
          v21 = (v18 + 4 * v20);
          v22 = v20 < *(this + 10);
          v23 = (this + 48);
          if (v22)
          {
            v23 = v21;
          }

          v24 = *v23;
          v103 = v24;
          while (v19 != v24)
          {
            if (++v16 >= 1000001)
            {
              break;
            }

            v104 = v19;
            v108 = *(*(this + 17) + 8 * v19);
            v109 = *(*(this + 11) + 4 * v19);
            if (operations_research::sat::PrecedenceRelations::AddInternal(this, v113, v109, v108))
            {
              std::vector<int>::push_back[abi:ne200100](v119 + 24 * v109, &v113);
            }

            v26 = v119 + 24 * v113;
            v27 = *v26;
            v107 = *(v26 + 1);
            if (*v26 != v107)
            {
              v110 = v109 ^ 1;
              v106 = (v109 ^ 1) << 32;
              while (1)
              {
                v29 = *v27;
                v112 = *v27;
                if (v16 == 1000000)
                {
                  v16 = 1000001;
                  goto LABEL_37;
                }

                v30 = v113 ^ 1;
                v31 = v29 | (v30 << 32);
                v32 = __ROR8__(v31, 32);
                if (v29 > v30)
                {
                  v31 = v32;
                }

                v33 = *(this + 30);
                if (v33 > 1)
                {
                  v34 = 0;
                  v35 = HIDWORD(v31) + ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v31) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v31)));
                  v36 = ((v35 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v35);
                  v37 = vdup_n_s8(v36 & 0x7F);
                  _X12 = *v111;
                  __asm { PRFM            #4, [X12] }

                  v43 = ((v36 >> 7) ^ (*v111 >> 12)) & v33;
                  v44 = *(*v111 + v43);
                  v45 = vceq_s8(v44, v37);
                  if (!v45)
                  {
                    goto LABEL_60;
                  }

LABEL_55:
                  while (1)
                  {
                    v46 = (v43 + (__clz(__rbit64(v45)) >> 3)) & v33;
                    v47 = (*(this + 33) + 16 * v46);
                    v25 = *(v47 + 1);
                    if (*v47 == v31 && v25 == HIDWORD(v31))
                    {
                      break;
                    }

                    v45 &= ((v45 & 0x8080808080808080) - 1) & 0x8080808080808080;
                    if (!v45)
                    {
LABEL_60:
                      while (!*&vceq_s8(v44, 0x8080808080808080))
                      {
                        v34 += 8;
                        v43 = (v34 + v43) & v33;
                        v44 = *(_X12 + v43);
                        v45 = vceq_s8(v44, v37);
                        if (v45)
                        {
                          goto LABEL_55;
                        }
                      }

LABEL_149:
                      absl::lts_20240722::base_internal::ThrowStdOutOfRange("absl::container_internal::raw_hash_map<>::at", v25);
                    }
                  }

                  if (!(_X12 + v46))
                  {
                    goto LABEL_149;
                  }
                }

                else
                {
                  if (*(this + 31) < 2uLL)
                  {
                    goto LABEL_149;
                  }

                  v49 = *(this + 65) == HIDWORD(v31) && *(this + 64) == v31;
                  v50 = &absl::lts_20240722::container_internal::kSooControl;
                  if (!v49)
                  {
                    v50 = 0;
                  }

                  v47 = this + 256;
                  if (!v50)
                  {
                    goto LABEL_149;
                  }
                }

                v51 = *(v47 + 1) - v108;
                LODWORD(v122) = v109;
                v52 = __ROR8__(v106 | v29, 32);
                v53 = v110 >= v29 ? v106 | v29 : v52;
                if (v33 > 1)
                {
                  break;
                }

                if (*(this + 31) > 1uLL)
                {
                  if (*(this + 32) != v53)
                  {
                    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>::resize_impl(this + 240, 3);
                  }

                  v55 = 0;
                  v54 = this + 256;
                  v56 = *(this + 38);
                  if (v56 > 1)
                  {
                    goto LABEL_103;
                  }
                }

                else
                {
                  *(this + 31) = 2;
                  v54 = this + 256;
                  *v111 = v53;
                  *(this + 33) = v51;
                  v55 = 1;
                  v56 = *(this + 38);
                  if (v56 > 1)
                  {
                    goto LABEL_103;
                  }
                }

LABEL_88:
                if (*(this + 39) <= 1uLL)
                {
                  *(this + 39) = 2;
                  *v105 = v53;
                  *(this + 41) = v51;
                  if (!v55)
                  {
                    goto LABEL_44;
                  }

                  goto LABEL_115;
                }

                if (*(this + 80) != v53 || (v67 = this + 320, *(this + 81) != HIDWORD(v53)))
                {
                  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>::resize_impl(this + 304, 3);
                }

LABEL_96:
                v68 = *(v67 + 1);
                if (v68 >= v51)
                {
                  v68 = v51;
                }

                *(v67 + 1) = v68;
                if (!v55)
                {
LABEL_44:
                  v28 = *(v54 + 1);
                  if (v28 >= v51)
                  {
                    v28 = v51;
                  }

                  *(v54 + 1) = v28;
                  goto LABEL_47;
                }

LABEL_115:
                if (v110 <= v29)
                {
                  v82 = v29;
                }

                else
                {
                  v82 = v109 ^ 1;
                }

                v83 = v82 + 1;
                v84 = *(this + 42);
                v85 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 43) - v84) >> 3);
                if (v83 > v85)
                {
                  std::vector<std::vector<operations_research::sat::GenericLiteralWatcher::WatchData>>::__append(this + 336, v83 - v85);
                  v84 = *(this + 42);
                }

                std::vector<int>::push_back[abi:ne200100](v84 + 24 * v29, &v122);
                v86 = *(this + 42) + 24 * (v122 ^ 1);
                LODWORD(v124) = v29 ^ 1;
                std::vector<int>::push_back[abi:ne200100](v86, &v124);
                std::vector<int>::push_back[abi:ne200100](v119 + 24 * v109, &v112);
LABEL_47:
                ++v16;
                if (++v27 == v107)
                {
                  goto LABEL_37;
                }
              }

              v57 = 0;
              _X9 = *v111;
              __asm { PRFM            #4, [X9] }

              v60 = HIDWORD(v53) + ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v53) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v53)));
              v25 = ((v60 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v60);
              v61 = vdup_n_s8(v25 & 0x7F);
              v62 = ((v25 >> 7) ^ (*v111 >> 12)) & v33;
              v63 = *(*v111 + v62);
              v64 = vceq_s8(v63, v61);
              if (!v64)
              {
                goto LABEL_84;
              }

              do
              {
LABEL_79:
                v54 = (*(this + 33) + 16 * ((v62 + (__clz(__rbit64(v64)) >> 3)) & v33));
                if (*v54 == v53 && *(v54 + 1) == HIDWORD(v53))
                {
                  v55 = 0;
                  v56 = *(this + 38);
                  if (v56 > 1)
                  {
                    goto LABEL_103;
                  }

                  goto LABEL_88;
                }

                v64 &= ((v64 & 0x8080808080808080) - 1) & 0x8080808080808080;
              }

              while (v64);
LABEL_84:
              while (1)
              {
                v66 = vceq_s8(v63, 0x8080808080808080);
                if (v66)
                {
                  break;
                }

                v57 += 8;
                v62 = (v57 + v62) & v33;
                v63 = *(_X9 + v62);
                v64 = vceq_s8(v63, v61);
                if (v64)
                {
                  goto LABEL_79;
                }
              }

              inserted = absl::lts_20240722::container_internal::PrepareInsertNonSoo(this + 30, v25, (v62 + (__clz(__rbit64(v66)) >> 3)) & v33, v57, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>::GetPolicyFunctions(void)::value);
              v54 = (*(this + 33) + 16 * inserted);
              *v54 = v53;
              *(v54 + 1) = v51;
              v55 = 1;
              v56 = *(this + 38);
              if (v56 <= 1)
              {
                goto LABEL_88;
              }

LABEL_103:
              v70 = 0;
              _X9 = *v105;
              __asm { PRFM            #4, [X9] }

              v73 = HIDWORD(v53) + ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v53) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v53)));
              v25 = ((v73 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v73);
              v74 = vdup_n_s8(v25 & 0x7F);
              v75 = ((v25 >> 7) ^ (*v105 >> 12)) & v56;
              v76 = *(*v105 + v75);
              v77 = vceq_s8(v76, v74);
              if (!v77)
              {
                goto LABEL_109;
              }

LABEL_104:
              while (1)
              {
                v67 = (*(this + 41) + 16 * ((v75 + (__clz(__rbit64(v77)) >> 3)) & v56));
                if (*v67 == v53 && *(v67 + 1) == HIDWORD(v53))
                {
                  goto LABEL_96;
                }

                v77 &= ((v77 & 0x8080808080808080) - 1) & 0x8080808080808080;
                if (!v77)
                {
LABEL_109:
                  while (1)
                  {
                    v79 = vceq_s8(v76, 0x8080808080808080);
                    if (v79)
                    {
                      break;
                    }

                    v70 += 8;
                    v75 = (v70 + v75) & v56;
                    v76 = *(_X9 + v75);
                    v77 = vceq_s8(v76, v74);
                    if (v77)
                    {
                      goto LABEL_104;
                    }
                  }

                  v80 = absl::lts_20240722::container_internal::PrepareInsertNonSoo(this + 38, v25, (v75 + (__clz(__rbit64(v79)) >> 3)) & v56, v70, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>::GetPolicyFunctions(void)::value);
                  v81 = (*(this + 41) + 16 * v80);
                  *v81 = v53;
                  v81[1] = v51;
                  if (!v55)
                  {
                    goto LABEL_44;
                  }

                  goto LABEL_115;
                }
              }
            }

LABEL_37:
            v24 = v103;
            v19 = v104 + 1;
          }

          v15 = v102 + 1;
          if (v102 + 1 == v101)
          {
            goto LABEL_122;
          }
        }
      }

      v16 = 0;
LABEL_122:
      if (dword_2810BD5C0 >= 2 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&operations_research::sat::PrecedenceRelations::Build(void)::$_0::operator() const(void)::site, dword_2810BD5C0))
      {
        absl::lts_20240722::log_internal::LogMessage::LogMessage(&v122, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/precedences.cc", 307);
        v99 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v122, 2);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v99, "Full precedences. Work=", 0x17uLL);
        LODWORD(v124) = v16;
        v100 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v99, &v124);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v100, " Relations=", 0xBuLL);
        v124 = *(this + 31) >> 1;
        absl::lts_20240722::log_internal::LogMessage::operator<<<unsigned long,0>(v100, &v124);
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v122);
      }
    }

LABEL_123:
    if (__p)
    {
      *(&__p + 1) = __p;
      operator delete(__p);
    }

    if (v128)
    {
      v129 = v128;
      operator delete(v128);
    }

    v87 = v125[0];
    if (v125[0])
    {
      v88 = v125[1];
      v89 = v125[0];
      if (v125[1] != v125[0])
      {
        v90 = v125[1];
        do
        {
          v91 = *(v90 - 24);
          v90 -= 3;
          if (v91)
          {
            operator delete(*(v88 - 2));
          }

          v88 = v90;
        }

        while (v90 != v87);
        v89 = v125[0];
      }

      v125[1] = v87;
      operator delete(v89);
    }

    if (v116)
    {
      v117 = v116;
      operator delete(v116);
    }

    v92 = v119;
    if (v119)
    {
      v93 = v120;
      v94 = v119;
      if (v120 != v119)
      {
        v95 = v120;
        do
        {
          v97 = *(v95 - 3);
          v95 -= 24;
          v96 = v97;
          if (v97)
          {
            *(v93 - 2) = v96;
            operator delete(v96);
          }

          v93 = v95;
        }

        while (v95 != v92);
        v94 = v119;
      }

      v120 = v92;
      operator delete(v94);
    }
  }

  v98 = *MEMORY[0x277D85DE8];
}

void sub_23CC883B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, void *a33)
{
  util::internal::DenseIntTopologicalSorterTpl<true>::~DenseIntTopologicalSorterTpl(&a33);
  if (__p)
  {
    operator delete(__p);
  }

  std::vector<std::vector<int>>::~vector[abi:ne200100](&a27);
  _Unwind_Resume(a1);
}

void **util::internal::DenseIntTopologicalSorterTpl<true>::~DenseIntTopologicalSorterTpl(void **a1)
{
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = a1[1];
    v6 = *a1;
    if (v5 != v4)
    {
      v7 = a1[1];
      do
      {
        v8 = *(v7 - 24);
        v7 -= 3;
        if (v8)
        {
          operator delete(*(v5 - 2));
        }

        v5 = v7;
      }

      while (v7 != v4);
      v6 = *a1;
    }

    a1[1] = v4;
    operator delete(v6);
  }

  return a1;
}

void operations_research::sat::PrecedenceRelations::ComputeFullPrecedences(operations_research::sat::PrecedenceRelations *this, char **a2, uint64_t *a3)
{
  v4 = *a3;
  for (i = a3[1]; i != v4; i -= 56)
  {
    v6 = *(i - 24);
    if (v6)
    {
      *(i - 16) = v6;
      operator delete(v6);
    }

    v7 = *(i - 48);
    if (v7)
    {
      *(i - 40) = v7;
      operator delete(v7);
    }
  }

  a3[1] = v4;
  if ((*(this + 160) & 1) == 0)
  {
    operations_research::sat::PrecedenceRelations::Build(this);
  }

  if (*(this + 161) == 1)
  {
    v244 = this;
    if (dword_27E25D1F8 >= 2 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&operations_research::sat::PrecedenceRelations::ComputeFullPrecedences(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::vector<operations_research::sat::FullIntegerPrecedence> *)::$_0::operator() const(void)::site, dword_27E25D1F8))
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(v250, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/precedences.cc", 318);
      v236 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v250, 2);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v236, "num_nodes: ", 0xBuLL);
      LODWORD(v261) = *(this + 10);
      v237 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v236, &v261);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v237, " num_arcs: ", 0xBuLL);
      LODWORD(v261) = *(this + 12);
      v238 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v237, &v261);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v238, " is_dag: ", 9uLL);
      LOBYTE(v261) = *(this + 161);
      absl::lts_20240722::log_internal::LogMessage::operator<<<BOOL,0>(v238, &v261);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(v250);
    }

    v261 = xmmword_23CE306D0;
    v9 = *a2;
    v8 = a2[1];
    v10 = v8 - *a2;
    if (v10 == 28)
    {
      v11 = 8;
    }

    else
    {
      v11 = ((v10 >> 2) - 1) / 7 + (v10 >> 2);
    }

    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>::raw_hash_set(&v258, v11);
    while (v9 != v8)
    {
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>::find_or_prepare_insert<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>(&v258, v9, v250);
      if (v250[16] == 1)
      {
        **&v250[8] = *v9;
      }

      v9 += 4;
    }

    v254 = 0;
    v255 = 0;
    v256 = &unk_23CE31C20;
    v252 = xmmword_23CE306D0;
    v12 = *(this + 21);
    v241 = *(this + 22);
    if (v12 != v241)
    {
      v240 = this + 48;
      while (1)
      {
        v242 = v12;
        v18 = *v12;
        v251 = *v12;
        if (v258 > 1)
        {
          v28 = 0;
          _X12 = v259;
          __asm { PRFM            #4, [X12] }

          v31 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v18) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v18));
          v21 = v31 >> 7;
          v22 = vdup_n_s8(v31 & 0x7F);
          v32 = ((v31 >> 7) ^ (v259 >> 12)) & v258;
          v33 = *(v259 + v32);
          v34 = vceq_s8(v33, v22);
          if (!v34)
          {
            goto LABEL_37;
          }

LABEL_35:
          while (*(v260 + 4 * ((v32 + (__clz(__rbit64(v34)) >> 3)) & v258)) != v18)
          {
            v34 &= ((v34 & 0x8080808080808080) - 1) & 0x8080808080808080;
            if (!v34)
            {
LABEL_37:
              while (!*&vceq_s8(v33, 0x8080808080808080))
              {
                v28 += 8;
                v32 = (v28 + v32) & v258;
                v33 = *(v259 + v32);
                v34 = vceq_s8(v33, v22);
                if (v34)
                {
                  goto LABEL_35;
                }
              }

              goto LABEL_33;
            }
          }
        }

        else if (*(&v258 + 1) < 2uLL || v259 != v18)
        {
          v20 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v18) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v18));
          v21 = v20 >> 7;
          v22 = vdup_n_s8(v20 & 0x7F);
LABEL_33:
          v16 = 0;
          _X11 = v256;
          __asm { PRFM            #4, [X11] }

          for (j = v21 ^ (v256 >> 12); ; j = v16 + v13)
          {
            v13 = j & v254;
            v14 = *(v256 + v13);
            v15 = vceq_s8(v14, v22);
            if (v15)
            {
              break;
            }

LABEL_25:
            if (vceq_s8(v14, 0x8080808080808080))
            {
              goto LABEL_253;
            }

            v16 += 8;
          }

          while (*(v257 + 40 * ((v13 + (__clz(__rbit64(v15)) >> 3)) & v254)) != v18)
          {
            v15 &= ((v15 & 0x8080808080808080) - 1) & 0x8080808080808080;
            if (!v15)
            {
              goto LABEL_25;
            }
          }
        }

        if (v252 > 1)
        {
          absl::lts_20240722::container_internal::ClearBackingArray(&v252, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>::GetPolicyFunctions(void)::value, v252 < 0x80, 1u);
          LODWORD(v18) = v251;
        }

        else
        {
          *(&v252 + 1) = 0;
        }

        v35 = 0;
        _X10 = v256;
        __asm { PRFM            #4, [X10] }

        v38 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v18) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v18));
        v39 = vdup_n_s8(v38 & 0x7F);
        v40 = ((v38 >> 7) ^ (v256 >> 12)) & v254;
        v41 = *(v256 + v40);
        v42 = vceq_s8(v41, v39);
        if (v42)
        {
LABEL_44:
          while (1)
          {
            v43 = v257 + 40 * ((v40 + (__clz(__rbit64(v42)) >> 3)) & v254);
            if (*v43 == v18)
            {
              break;
            }

            v42 &= ((v42 & 0x8080808080808080) - 1) & 0x8080808080808080;
            if (!v42)
            {
              goto LABEL_46;
            }
          }

          if (&v252 != (v43 + 8))
          {
            absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>::raw_hash_set(v250, (v43 + 8), &v252);
            if (v252 >= 2)
            {
              operator delete((v253 - (BYTE8(v252) & 1) - 8));
            }

            v252 = *v250;
            v253 = *&v250[16];
            LODWORD(v18) = v251;
          }
        }

        else
        {
LABEL_46:
          while (!*&vceq_s8(v41, 0x8080808080808080))
          {
            v35 += 8;
            v40 = (v35 + v40) & v254;
            v41 = *(v256 + v40);
            v42 = vceq_s8(v41, v39);
            if (v42)
            {
              goto LABEL_44;
            }
          }
        }

        v44 = *(this + 8);
        v45 = *(v44 + 4 * v18);
        v46 = v18 + 1;
        v47 = (v44 + 4 * v46);
        v48 = v46 < *(this + 10);
        v49 = v240;
        if (v48)
        {
          v49 = v47;
        }

        v50 = *v49;
        v246 = v50;
        while (v45 != v50)
        {
          v57 = *(*(this + 14) + 4 * v45);
          if (v251 != v57)
          {
            absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v251, v57, "tail_var.value() == graph_.Tail(arc)");
          }

          v58 = v45;
          v59 = *(*(this + 11) + 4 * v45);
          v249 = *(*(this + 17) + 8 * v45);
          v60 = *(&v252 + 1);
          if (*(&v252 + 1) > 1uLL)
          {
            goto LABEL_69;
          }

          if (v258 <= 1)
          {
            if (*(&v258 + 1) < 2uLL || v259 != v251)
            {
              goto LABEL_62;
            }

LABEL_69:
            v61 = 0;
            _X9 = v256;
            __asm { PRFM            #4, [X9] }

            v64 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v59) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v59));
            v247 = v64 >> 7;
            v248 = v59;
            v65 = vdup_n_s8(v64 & 0x7F);
            v245 = v64;
            v66 = ((v64 >> 7) ^ (v256 >> 12)) & v254;
            v67 = *(v256 + v66);
            v68 = vceq_s8(v67, v65);
            if (!v68)
            {
              goto LABEL_72;
            }

LABEL_70:
            while (1)
            {
              v69 = v257 + 40 * ((v66 + (__clz(__rbit64(v68)) >> 3)) & v254);
              if (*v69 == v59)
              {
                break;
              }

              v68 &= ((v68 & 0x8080808080808080) - 1) & 0x8080808080808080;
              if (!v68)
              {
LABEL_72:
                while (1)
                {
                  v70 = vceq_s8(v67, 0x8080808080808080);
                  if (v70)
                  {
                    break;
                  }

                  v61 += 8;
                  v66 = (v61 + v66) & v254;
                  v67 = *(v256 + v66);
                  v68 = vceq_s8(v67, v65);
                  if (v68)
                  {
                    goto LABEL_70;
                  }
                }

                inserted = absl::lts_20240722::container_internal::PrepareInsertNonSoo(&v254, v64, (v66 + (__clz(__rbit64(v70)) >> 3)) & v254, v61, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,absl::lts_20240722::flat_hash_map<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,absl::lts_20240722::flat_hash_map<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>>>>::GetPolicyFunctions(void)::value);
                v69 = v257 + 40 * inserted;
                *v69 = v59;
                *(v69 + 8) = xmmword_23CE306D0;
                v60 = *(&v252 + 1);
                break;
              }
            }

            if (v60 >= 2)
            {
              v72 = &absl::lts_20240722::container_internal::kSooControl;
              v73 = &v253;
              if (v252 >= 2)
              {
                v73 = *(&v253 + 1);
                v72 = v253;
                if (*v253 <= -2)
                {
                  do
                  {
                    v74 = __clz(__rbit64((*v72 | ~(*v72 >> 7)) & 0x101010101010101)) >> 3;
                    v72 = (v72 + v74);
                    v73 += 4 * v74;
                  }

                  while (*v72 < -1);
                }
              }

              v75 = (v69 + 24);
              v76 = (v69 + 32);
              do
              {
                v77 = *(v69 + 8);
                if (v77 > 1)
                {
                  v80 = 0;
                  _X9 = *v75;
                  __asm { PRFM            #4, [X9] }

                  v83 = *v73;
                  v84 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v83) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v83));
                  v85 = (v84 >> 7) ^ (*v75 >> 12);
                  v86 = vdup_n_s8(v84 & 0x7F);
                  v87 = v85 & v77;
                  v88 = *(*v75 + (v85 & v77));
                  v89 = vceq_s8(v88, v86);
                  if (!v89)
                  {
                    goto LABEL_88;
                  }

LABEL_85:
                  v90 = *v76;
                  while (*(v90 + 16 * ((v87 + (__clz(__rbit64(v89)) >> 3)) & v77)) != v83)
                  {
                    v89 &= ((v89 & 0x8080808080808080) - 1) & 0x8080808080808080;
                    if (!v89)
                    {
LABEL_88:
                      while (!*&vceq_s8(v88, 0x8080808080808080))
                      {
                        v80 += 8;
                        v87 = (v80 + v87) & v77;
                        v88 = *(_X9 + v87);
                        v89 = vceq_s8(v88, v86);
                        if (v89)
                        {
                          goto LABEL_85;
                        }
                      }

                      v103 = 0;
                      v78 = *(v73 + 1) + v249;
                      __asm { PRFM            #4, [X9] }

                      v105 = v85 & v77;
                      v106 = *(_X9 + v105);
                      v107 = vceq_s8(v106, v86);
                      if (!v107)
                      {
                        goto LABEL_107;
                      }

LABEL_104:
                      v108 = *v76;
                      while (1)
                      {
                        v109 = (v105 + (__clz(__rbit64(v107)) >> 3)) & v77;
                        if (*(v108 + 16 * v109) == v83)
                        {
                          break;
                        }

                        v107 &= ((v107 & 0x8080808080808080) - 1) & 0x8080808080808080;
                        if (!v107)
                        {
LABEL_107:
                          while (1)
                          {
                            v110 = vceq_s8(v106, 0x8080808080808080);
                            if (v110)
                            {
                              break;
                            }

                            v103 += 8;
                            v105 = (v103 + v105) & v77;
                            v106 = *(_X9 + v105);
                            v107 = vceq_s8(v106, v86);
                            if (v107)
                            {
                              goto LABEL_104;
                            }
                          }

                          v79 = *v76 + 16 * absl::lts_20240722::container_internal::PrepareInsertNonSoo((v69 + 8), v84, (v105 + (__clz(__rbit64(v110)) >> 3)) & v77, v103, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>::GetPolicyFunctions(void)::value);
                          goto LABEL_132;
                        }
                      }

                      *(v108 + 16 * v109 + 8) = v78;
                      v127 = *(v72 + 1);
                      v72 = (v72 + 1);
                      LOBYTE(v79) = v127;
                      v73 += 4;
                      if (v127 > -2)
                      {
                        goto LABEL_134;
                      }

                      goto LABEL_133;
                    }
                  }

                  v91 = 0;
                  v92 = *(v73 + 1);
                  __asm { PRFM            #4, [X9] }

                  v94 = v85 & v77;
                  v95 = *(_X9 + v94);
                  v96 = vceq_s8(v95, v86);
                  if (!v96)
                  {
                    goto LABEL_94;
                  }

                  do
                  {
LABEL_92:
                    v97 = (v94 + (__clz(__rbit64(v96)) >> 3)) & v77;
                    if (*(v90 + 16 * v97) == v83)
                    {
                      v102 = v90 + 16 * v97;
                      goto LABEL_112;
                    }

                    v96 &= ((v96 & 0x8080808080808080) - 1) & 0x8080808080808080;
                  }

                  while (v96);
LABEL_94:
                  while (1)
                  {
                    v98 = vceq_s8(v95, 0x8080808080808080);
                    if (v98)
                    {
                      break;
                    }

                    v91 += 8;
                    v94 = (v91 + v94) & v77;
                    v95 = *(_X9 + v94);
                    v96 = vceq_s8(v95, v86);
                    if (v96)
                    {
                      goto LABEL_92;
                    }
                  }

                  v111 = absl::lts_20240722::container_internal::PrepareInsertNonSoo((v69 + 8), v84, (v94 + (__clz(__rbit64(v98)) >> 3)) & v77, v91, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>::GetPolicyFunctions(void)::value);
                  v77 = *(v69 + 8);
                  v102 = *v76 + 16 * v111;
                  *v102 = *v73;
                  *(v102 + 8) = 0;
LABEL_112:
                  v99 = v92 + v249;
                  v113 = *(v102 + 8);
                  v101 = (v102 + 8);
                  v112 = v113;
                  v100 = v99 < v113;
                  if (v77 <= 1)
                  {
                    this = v244;
                    if (*(v69 + 16) >= 2uLL)
                    {
                      goto LABEL_99;
                    }

LABEL_114:
                    *(v69 + 16) = 2;
                    *(v69 + 24) = *v73;
                    *(v69 + 32) = 0;
                    v79 = v69 + 32;
                    if (!v100)
                    {
                      goto LABEL_116;
                    }

LABEL_115:
                    v99 = *v101;
                    goto LABEL_116;
                  }

                  v115 = 0;
                  _X9 = *v75;
                  __asm { PRFM            #4, [X9] }

                  v118 = *v73;
                  v119 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v118) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v118));
                  v120 = vdup_n_s8(v119 & 0x7F);
                  v121 = ((v119 >> 7) ^ (*v75 >> 12)) & v77;
                  v122 = *(*v75 + v121);
                  v123 = vceq_s8(v122, v120);
                  if (!v123)
                  {
                    goto LABEL_122;
                  }

LABEL_119:
                  v124 = *v76;
                  do
                  {
                    v125 = (v121 + (__clz(__rbit64(v123)) >> 3)) & v77;
                    if (*(v124 + 16 * v125) == v118)
                    {
                      v79 = v124 + 16 * v125 + 8;
                      v48 = v99 < v112;
                      this = v244;
                      if (v48)
                      {
                        goto LABEL_115;
                      }

                      goto LABEL_116;
                    }

                    v123 &= ((v123 & 0x8080808080808080) - 1) & 0x8080808080808080;
                  }

                  while (v123);
LABEL_122:
                  while (1)
                  {
                    v126 = vceq_s8(v122, 0x8080808080808080);
                    if (v126)
                    {
                      break;
                    }

                    v115 += 8;
                    v121 = (v115 + v121) & v77;
                    v122 = *(_X9 + v121);
                    v123 = vceq_s8(v122, v120);
                    if (v123)
                    {
                      goto LABEL_119;
                    }
                  }

                  v130 = absl::lts_20240722::container_internal::PrepareInsertNonSoo((v69 + 8), v119, (v121 + (__clz(__rbit64(v126)) >> 3)) & v77, v115, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>::GetPolicyFunctions(void)::value);
                  v131 = *v76;
                  v132 = 16 * v130;
                  *(v131 + v132) = *v73;
                  *(v131 + v132 + 8) = 0;
                  v79 = v131 + 16 * v130 + 8;
                  v48 = v99 < v112;
                  this = v244;
                  if (v48)
                  {
                    goto LABEL_115;
                  }
                }

                else
                {
                  if (*(v69 + 16) < 2uLL)
                  {
                    v78 = *(v73 + 1) + v249;
                    *(v69 + 16) = 2;
                    v79 = v69 + 24;
LABEL_132:
                    v128 = *v73;
                    v73 += 4;
                    *v79 = v128;
                    *(v79 + 8) = 0;
                    *(v79 + 8) = v78;
                    v129 = *(v72 + 1);
                    v72 = (v72 + 1);
                    LOBYTE(v79) = v129;
                    if (v129 > -2)
                    {
                      continue;
                    }

                    do
                    {
LABEL_133:
                      v79 = __clz(__rbit64((*v72 | ~(*v72 >> 7)) & 0x101010101010101)) >> 3;
                      v72 = (v72 + v79);
                      v73 += 4 * v79;
                      LODWORD(v79) = *v72;
                    }

                    while (v79 < -1);
                    continue;
                  }

                  v99 = *(v73 + 1) + v249;
                  if (*v75 != *v73)
                  {
                    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>::resize_impl(v69 + 8, 3);
                  }

                  v100 = v99 < *v76;
                  v101 = (v69 + 32);
                  if (*(v69 + 16) < 2uLL)
                  {
                    goto LABEL_114;
                  }

LABEL_99:
                  if (*v75 != *v73)
                  {
                    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>::resize_impl(v69 + 8, 3);
                  }

                  v79 = v69 + 32;
                  if (v100)
                  {
                    goto LABEL_115;
                  }
                }

LABEL_116:
                *v79 = v99;
                v114 = *(v72 + 1);
                v72 = (v72 + 1);
                LOBYTE(v79) = v114;
                v73 += 4;
                if (v114 <= -2)
                {
                  goto LABEL_133;
                }

LABEL_134:
                ;
              }

              while (v79 != 255);
            }

            if (v258 <= 1)
            {
              v133 = v248;
              if (*(&v258 + 1) >= 2uLL)
              {
                v134 = v259;
                if (v259 == v251)
                {
                  goto LABEL_141;
                }
              }

LABEL_172:
              if (((*(&v252 + 1) >> 1) + 1) >= *(v69 + 16) >> 1)
              {
                if (v261 > 1)
                {
                  v55 = 0;
                  _X10 = v262;
                  __asm { PRFM            #4, [X10] }

                  for (k = v247 ^ (v262 >> 12); ; k = v55 + v51)
                  {
                    v51 = k & v261;
                    v52 = *(v262 + v51);
                    v53 = vceq_s8(v52, v65);
                    if (v53)
                    {
                      break;
                    }

LABEL_59:
                    if (vceq_s8(v52, 0x8080808080808080))
                    {
                      goto LABEL_62;
                    }

                    v55 += 8;
                  }

                  while (1)
                  {
                    v54 = (v51 + (__clz(__rbit64(v53)) >> 3)) & v261;
                    if (*(v263 + 4 * v54) == v133)
                    {
                      break;
                    }

                    v53 &= ((v53 & 0x8080808080808080) - 1) & 0x8080808080808080;
                    if (!v53)
                    {
                      goto LABEL_59;
                    }
                  }

                  absl::lts_20240722::container_internal::EraseMetaOnly(&v261, v54);
                }

                else if (*(&v261 + 1) >= 2uLL && v262 == v133)
                {
                  *(&v261 + 1) = 0;
                }
              }

              else if (v261 > 1)
              {
                v167 = 0;
                _X9 = v262;
                __asm { PRFM            #4, [X9] }

                v170 = (v247 ^ (v262 >> 12)) & v261;
                v171 = *(v262 + v170);
                v172 = vceq_s8(v171, v65);
                if (!v172)
                {
                  goto LABEL_183;
                }

LABEL_181:
                while (*(v263 + 4 * ((v170 + (__clz(__rbit64(v172)) >> 3)) & v261)) != v133)
                {
                  v172 &= ((v172 & 0x8080808080808080) - 1) & 0x8080808080808080;
                  if (!v172)
                  {
LABEL_183:
                    while (1)
                    {
                      v173 = vceq_s8(v171, 0x8080808080808080);
                      if (v173)
                      {
                        break;
                      }

                      v167 += 8;
                      v170 = (v167 + v170) & v261;
                      v171 = *(v262 + v170);
                      v172 = vceq_s8(v171, v65);
                      if (v172)
                      {
                        goto LABEL_181;
                      }
                    }

                    v176 = absl::lts_20240722::container_internal::PrepareInsertNonSoo(&v261, v245, (v170 + (__clz(__rbit64(v173)) >> 3)) & v261, v167, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>::GetPolicyFunctions(void)::value);
                    *(v263 + 4 * v176) = v133;
                    goto LABEL_62;
                  }
                }
              }

              else if (*(&v261 + 1) > 1uLL)
              {
                if (v262 != v133)
                {
                  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>::resize_impl(&v261, 3);
                }
              }

              else
              {
                *(&v261 + 1) = 2;
                LODWORD(v262) = v133;
              }

              goto LABEL_62;
            }

            v142 = 0;
            _X11 = v259;
            __asm { PRFM            #4, [X11] }

            v134 = v251;
            v145 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v251) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v251));
            v146 = vdup_n_s8(v145 & 0x7F);
            v133 = v248;
            v147 = ((v145 >> 7) ^ (v259 >> 12)) & v258;
            v148 = *(v259 + v147);
            v149 = vceq_s8(v148, v146);
            if (!v149)
            {
              goto LABEL_153;
            }

LABEL_151:
            while (*(v260 + 4 * ((v147 + (__clz(__rbit64(v149)) >> 3)) & v258)) != v251)
            {
              v149 &= ((v149 & 0x8080808080808080) - 1) & 0x8080808080808080;
              if (!v149)
              {
LABEL_153:
                while (!*&vceq_s8(v148, 0x8080808080808080))
                {
                  v142 += 8;
                  v147 = (v142 + v147) & v258;
                  v148 = *(v259 + v147);
                  v149 = vceq_s8(v148, v146);
                  if (v149)
                  {
                    goto LABEL_151;
                  }
                }

                goto LABEL_172;
              }
            }

LABEL_141:
            v135 = *(v69 + 8);
            if (v135 > 1)
            {
              v158 = 0;
              _X11 = *(v69 + 24);
              __asm { PRFM            #4, [X11] }

              v161 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v134) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v134));
              v162 = vdup_n_s8(v161 & 0x7F);
              v163 = ((v161 >> 7) ^ (_X11 >> 12)) & v135;
              v164 = *(_X11 + v163);
              v165 = vceq_s8(v164, v162);
              if (!v165)
              {
                goto LABEL_165;
              }

LABEL_163:
              while (*(*(v69 + 32) + 16 * ((v163 + (__clz(__rbit64(v165)) >> 3)) & v135)) != v134)
              {
                v165 &= ((v165 & 0x8080808080808080) - 1) & 0x8080808080808080;
                if (!v165)
                {
LABEL_165:
                  while (!*&vceq_s8(v164, 0x8080808080808080))
                  {
                    v158 += 8;
                    v163 = (v158 + v163) & v135;
                    v164 = *(_X11 + v163);
                    v165 = vceq_s8(v164, v162);
                    if (v165)
                    {
                      goto LABEL_163;
                    }
                  }

                  goto LABEL_168;
                }
              }

LABEL_144:
              absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>::find_or_prepare_insert<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>(v69 + 8, &v251, v250);
              if (v250[16] == 1)
              {
                v136 = *&v250[8];
                **&v250[8] = v251;
                *(v136 + 8) = 0;
              }

              v137 = *&v250[8];
              v138 = *(*&v250[8] + 8);
              absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>::find_or_prepare_insert<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>(v69 + 8, &v251, v250);
              if (v250[16] == 1)
              {
                v139 = *&v250[8];
                **&v250[8] = v251;
                *(v139 + 8) = 0;
              }

              v140 = *&v250[8];
              v141 = v249;
              if (v249 < v138)
              {
                v141 = *(v137 + 8);
              }
            }

            else
            {
              if (*(v69 + 16) >= 2uLL && *(v69 + 24) == v134)
              {
                goto LABEL_144;
              }

LABEL_168:
              absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>::find_or_prepare_insert<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>(v69 + 8, &v251, v250);
              if (v250[16] == 1)
              {
                v166 = *&v250[8];
                **&v250[8] = v251;
                *(v166 + 8) = 0;
              }

              v140 = *&v250[8];
              v141 = v249;
            }

            *(v140 + 8) = v141;
            goto LABEL_172;
          }

          v150 = 0;
          _X12 = v259;
          __asm { PRFM            #4, [X12] }

          v153 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v251) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v251));
          v154 = vdup_n_s8(v153 & 0x7F);
          v155 = ((v153 >> 7) ^ (v259 >> 12)) & v258;
          v156 = *(v259 + v155);
          v157 = vceq_s8(v156, v154);
          if (!v157)
          {
            goto LABEL_159;
          }

          do
          {
LABEL_157:
            if (*(v260 + 4 * ((v155 + (__clz(__rbit64(v157)) >> 3)) & v258)) == v251)
            {
              goto LABEL_69;
            }

            v157 &= ((v157 & 0x8080808080808080) - 1) & 0x8080808080808080;
          }

          while (v157);
LABEL_159:
          while (!*&vceq_s8(v156, 0x8080808080808080))
          {
            v150 += 8;
            v155 = (v150 + v155) & v258;
            v156 = *(v259 + v155);
            v157 = vceq_s8(v156, v154);
            if (v157)
            {
              goto LABEL_157;
            }
          }

LABEL_62:
          v45 = v58 + 1;
          v50 = v246;
        }

        if (v261 > 1)
        {
          v215 = 0;
          _X11 = v262;
          __asm { PRFM            #4, [X11] }

          v177 = v251;
          v218 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v251) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v251));
          v219 = vdup_n_s8(v218 & 0x7F);
          v220 = ((v218 >> 7) ^ (v262 >> 12)) & v261;
          v221 = *(v262 + v220);
          v222 = vceq_s8(v221, v219);
          if (!v222)
          {
            goto LABEL_244;
          }

          do
          {
LABEL_242:
            if (*(v263 + 4 * ((v220 + (__clz(__rbit64(v222)) >> 3)) & v261)) == v251)
            {
              goto LABEL_193;
            }

            v222 &= ((v222 & 0x8080808080808080) - 1) & 0x8080808080808080;
          }

          while (v222);
LABEL_244:
          while (!*&vceq_s8(v221, 0x8080808080808080))
          {
            v215 += 8;
            v220 = (v215 + v220) & v261;
            v221 = *(v262 + v220);
            v222 = vceq_s8(v221, v219);
            if (v222)
            {
              goto LABEL_242;
            }
          }
        }

        else if (*(&v261 + 1) >= 2uLL)
        {
          v177 = v262;
          if (v262 == v251)
          {
LABEL_193:
            if ((*(&v252 + 1) & 0xFFFFFFFFFFFFFFFELL) != 2)
            {
              memset(&v250[8], 0, 48);
              *v250 = v177;
              v179 = *a2;
              v178 = a2[1];
              if (v178 != *a2)
              {
                v180 = 0;
                v181 = 0;
                while (v252 > 1)
                {
                  v183 = 0;
                  _X11 = v253;
                  __asm { PRFM            #4, [X11] }

                  v186 = *&v179[4 * v180];
                  v187 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v186) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v186));
                  v188 = vdup_n_s8(v187 & 0x7F);
                  v189 = ((v187 >> 7) ^ (v253 >> 12)) & v252;
                  v190 = *(v253 + v189);
                  v191 = vceq_s8(v190, v188);
                  if (!v191)
                  {
                    goto LABEL_205;
                  }

                  do
                  {
LABEL_203:
                    v192 = (v189 + (__clz(__rbit64(v191)) >> 3)) & v252;
                    if (*(*(&v253 + 1) + 16 * v192) == v186)
                    {
                      v193 = (*(&v253 + 1) + 16 * v192);
                      if (!(v253 + v192))
                      {
                        goto LABEL_198;
                      }

                      goto LABEL_216;
                    }

                    v191 &= ((v191 & 0x8080808080808080) - 1) & 0x8080808080808080;
                  }

                  while (v191);
LABEL_205:
                  while (!*&vceq_s8(v190, 0x8080808080808080))
                  {
                    v183 += 8;
                    v189 = (v183 + v189) & v252;
                    v190 = *(v253 + v189);
                    v191 = vceq_s8(v190, v188);
                    if (v191)
                    {
                      goto LABEL_203;
                    }
                  }

LABEL_198:
                  v180 = ++v181;
                  if (v181 >= ((v178 - v179) >> 2))
                  {
                    goto LABEL_247;
                  }
                }

                if (*(&v252 + 1) < 2uLL)
                {
                  goto LABEL_198;
                }

                v194 = *&v179[4 * v180];
                if (v253 == v194)
                {
                  v193 = &v253;
                }

                else
                {
                  v193 = v178;
                }

                v195 = &absl::lts_20240722::container_internal::kSooControl;
                if (v253 != v194)
                {
                  v195 = 0;
                }

                if (!v195)
                {
                  goto LABEL_198;
                }

LABEL_216:
                v196 = *&v250[16];
                if (*&v250[16] < *&v250[24])
                {
                  **&v250[16] = v181;
                  v197 = (v196 + 4);
                  goto LABEL_229;
                }

                v198 = *&v250[8];
                v199 = *&v250[16] - *&v250[8];
                v200 = (*&v250[16] - *&v250[8]) >> 2;
                v201 = v200 + 1;
                if ((v200 + 1) >> 62)
                {
                  std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                }

                v202 = *&v250[24] - *&v250[8];
                if ((*&v250[24] - *&v250[8]) >> 1 > v201)
                {
                  v201 = v202 >> 1;
                }

                if (v202 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v203 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v203 = v201;
                }

                if (v203)
                {
                  if (!(v203 >> 62))
                  {
                    operator new();
                  }

LABEL_280:
                  std::__throw_bad_array_new_length[abi:ne200100]();
                }

                v204 = (4 * v200);
                v205 = &v204[-((*&v250[16] - *&v250[8]) >> 2)];
                *v204 = v181;
                v197 = v204 + 1;
                memcpy(v205, v198, v199);
                *&v250[8] = v205;
                *&v250[16] = v197;
                if (v198)
                {
                  operator delete(v198);
                }

LABEL_229:
                *&v250[16] = v197;
                v206 = *&v250[40];
                if (*&v250[40] < *&v250[48])
                {
                  **&v250[40] = *(v193 + 1);
                  v182 = (v206 + 8);
                }

                else
                {
                  v207 = *&v250[32];
                  v208 = *&v250[40] - *&v250[32];
                  v209 = (*&v250[40] - *&v250[32]) >> 3;
                  v210 = v209 + 1;
                  if ((v209 + 1) >> 61)
                  {
                    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                  }

                  v211 = *&v250[48] - *&v250[32];
                  if ((*&v250[48] - *&v250[32]) >> 2 > v210)
                  {
                    v210 = v211 >> 2;
                  }

                  if (v211 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v212 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v212 = v210;
                  }

                  if (v212)
                  {
                    if (!(v212 >> 61))
                    {
                      operator new();
                    }

                    goto LABEL_280;
                  }

                  v213 = (8 * v209);
                  v214 = &v213[-((*&v250[40] - *&v250[32]) >> 3)];
                  *v213 = *(v193 + 1);
                  v182 = v213 + 1;
                  memcpy(v214, v207, v208);
                  *&v250[32] = v214;
                  *&v250[40] = v182;
                  *&v250[48] = 0;
                  if (v207)
                  {
                    operator delete(v207);
                  }
                }

                *&v250[40] = v182;
                v179 = *a2;
                v178 = a2[1];
                goto LABEL_198;
              }

LABEL_247:
              v223 = a3[1];
              if (v223 >= a3[2])
              {
                v224 = std::vector<operations_research::sat::FullIntegerPrecedence>::__emplace_back_slow_path<operations_research::sat::FullIntegerPrecedence>(a3, v250);
                v225 = *&v250[32];
                a3[1] = v224;
                if (v225)
                {
                  *&v250[40] = v225;
                  operator delete(v225);
                }
              }

              else
              {
                *v223 = *v250;
                *(v223 + 24) = 0;
                *(v223 + 32) = 0;
                *(v223 + 8) = 0;
                *(v223 + 16) = 0;
                *(v223 + 8) = *&v250[8];
                *(v223 + 24) = *&v250[24];
                *&v250[8] = 0;
                *&v250[16] = 0;
                *(v223 + 40) = 0;
                *(v223 + 48) = 0;
                *(v223 + 32) = *&v250[32];
                *(v223 + 48) = *&v250[48];
                memset(&v250[24], 0, 32);
                a3[1] = v223 + 56;
              }

              if (*&v250[8])
              {
                *&v250[16] = *&v250[8];
                operator delete(*&v250[8]);
              }
            }
          }
        }

LABEL_253:
        v12 = v242 + 1;
        if (v242 + 1 == v241)
        {
          if (v252 >= 2)
          {
            operator delete((v253 - (BYTE8(v252) & 1) - 8));
          }

          break;
        }
      }
    }

    if (v254)
    {
      v227 = v256;
      v226 = v257;
      if (v254 > 6)
      {
        if (v255 >= 2)
        {
          v232 = v255 >> 1;
          do
          {
            v233 = *v227 & 0x8080808080808080;
            if (v233 != 0x8080808080808080)
            {
              v234 = v233 ^ 0x8080808080808080;
              do
              {
                v235 = (v226 + 40 * (__clz(__rbit64(v234)) >> 3));
                if (v235[1] >= 2uLL)
                {
                  operator delete((v235[3] - (v235[2] & 1) - 8));
                }

                --v232;
                v234 &= v234 - 1;
              }

              while (v234);
            }

            ++v227;
            v226 += 320;
          }

          while (v232);
        }
      }

      else
      {
        v228 = *(v256 + v254) & 0x8080808080808080;
        if (v228 != 0x8080808080808080)
        {
          v229 = v257 - 40;
          v230 = v228 ^ 0x8080808080808080;
          do
          {
            v231 = (v229 + 40 * (__clz(__rbit64(v230)) >> 3));
            if (v231[1] >= 2uLL)
            {
              operator delete((v231[3] - (v231[2] & 1) - 8));
            }

            v230 &= v230 - 1;
          }

          while (v230);
        }
      }

      operator delete((v256 - (v255 & 1) - 8));
    }

    if (v258 >= 2)
    {
      operator delete((v259 - (BYTE8(v258) & 1) - 8));
    }

    if (v261 >= 2)
    {
      operator delete((v262 - (BYTE8(v261) & 1) - 8));
    }
  }
}

void sub_23CC89C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_23CC89C98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  if (*(v35 - 144) >= 2uLL)
  {
    operator delete((*(v35 - 128) - (*(v35 - 136) & 1) - 8));
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::PrecedenceRelations::CollectPrecedences(std::vector<int> *a1, uint64_t *a2, void *a3)
{
  v5 = 0xAAAAAAAAAAAAAAABLL * ((a1[14].__end_ - a1[14].__begin_) >> 3);
  if (v5 <= 0xAAAAAAAAAAAAAAABLL * ((a1[15].__end_ - a1[15].__begin_) >> 3))
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((a1[15].__end_ - a1[15].__begin_) >> 3);
  }

  v6 = v5 + 1;
  begin = a1[17].__begin_;
  v8 = a1[17].__end_ - begin;
  if (v6 <= v8)
  {
    if (v6 < v8)
    {
      a1[17].__end_ = &begin[v6];
    }
  }

  else
  {
    std::vector<int>::__append(a1 + 17, v6 - v8);
  }

  v9 = a1[18].__begin_;
  v10 = a1[18].__end_ - v9;
  if (v6 <= v10)
  {
    if (v6 < v10)
    {
      a1[18].__end_ = &v9[v6];
    }
  }

  else
  {
    std::vector<int>::__append(a1 + 18, v6 - v10);
  }

  v11 = a1[16].__begin_;
  v12 = a1[16].__end_ - v11;
  if (v6 <= v12)
  {
    if (v6 < v12)
    {
      a1[16].__end_ = &v11[v6];
    }
  }

  else
  {
    std::vector<int>::__append(a1 + 16, v6 - v12);
    v11 = a1[16].__begin_;
  }

  v13 = a1[19].__begin_;
  a1[19].__end_ = v13;
  v14 = a1[17].__begin_;
  v15 = *a2;
  if (a2[1] == *a2)
  {
    v18 = 0;
    goto LABEL_76;
  }

  v71 = a3;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = a1[18].__begin_;
  v76 = v19;
  v77 = v11;
  do
  {
    v20 = *(v15 + 4 * v16);
    v21 = a1[14].__begin_;
    v73 = v20;
    if (v20 < (-1431655765 * ((a1[14].__end_ - v21) >> 3)))
    {
      v22 = &v21[6 * v20];
      v24 = *v22;
      v23 = v22[1];
      if (v23 != *v22)
      {
        v78 = v17 << 32;
        v74 = v22[1];
        do
        {
          v26 = *v24;
          if (v14[v26])
          {
            if (v19[v26] == v17)
            {
              goto LABEL_23;
            }

            value = a1[19].__end_cap_.__value_;
            if (v13 >= value)
            {
LABEL_29:
              v28 = a1[19].__begin_;
              v29 = v13 - v28;
              v30 = (v13 - v28) >> 3;
              v31 = v30 + 1;
              if ((v30 + 1) >> 61)
              {
LABEL_89:
                std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
              }

              v32 = value - v28;
              if (v32 >> 2 > v31)
              {
                v31 = v32 >> 2;
              }

              if (v32 >= 0x7FFFFFFFFFFFFFF8)
              {
                v33 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v33 = v31;
              }

              if (v33)
              {
                if (!(v33 >> 61))
                {
                  operator new();
                }

                goto LABEL_90;
              }

              v34 = v30;
              v35 = (8 * v30);
              v36 = &v35[-v34];
              *v35 = v78 | v26;
              v13 = (v35 + 1);
              memcpy(v36, v28, v29);
              a1[19].__begin_ = v36;
              a1[19].__end_ = v13;
              a1[19].__end_cap_.__value_ = 0;
              if (v28)
              {
                operator delete(v28);
              }

              v19 = v76;
              v11 = v77;
              v23 = v74;
              goto LABEL_22;
            }
          }

          else
          {
            v11[v18++] = v26;
            value = a1[19].__end_cap_.__value_;
            if (v13 >= value)
            {
              goto LABEL_29;
            }
          }

          *v13 = v78 | v26;
          v13 += 2;
LABEL_22:
          v25 = v14[v26];
          a1[19].__end_ = v13;
          v14[v26] = v25 + 1;
          v19[v26] = v17;
LABEL_23:
          ++v24;
        }

        while (v24 != v23);
      }
    }

    v37 = a1[15].__begin_;
    if (v73 < (-1431655765 * ((a1[15].__end_ - v37) >> 3)))
    {
      v38 = &v37[6 * v73];
      v40 = *v38;
      v39 = v38[1];
      if (v39 != *v38)
      {
        v79 = v17 << 32;
        v75 = v38[1];
        do
        {
          v42 = *v40;
          if (v14[v42])
          {
            if (v19[v42] == v17)
            {
              goto LABEL_46;
            }

            v43 = a1[19].__end_cap_.__value_;
            if (v13 >= v43)
            {
LABEL_52:
              v44 = a1[19].__begin_;
              v45 = v13 - v44;
              v46 = (v13 - v44) >> 3;
              v47 = v46 + 1;
              if ((v46 + 1) >> 61)
              {
                goto LABEL_89;
              }

              v48 = v43 - v44;
              if (v48 >> 2 > v47)
              {
                v47 = v48 >> 2;
              }

              if (v48 >= 0x7FFFFFFFFFFFFFF8)
              {
                v49 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v49 = v47;
              }

              if (v49)
              {
                if (!(v49 >> 61))
                {
                  operator new();
                }

LABEL_90:
                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v50 = v46;
              v51 = (8 * v46);
              v52 = &v51[-v50];
              *v51 = v79 | v42;
              v13 = (v51 + 1);
              memcpy(v52, v44, v45);
              a1[19].__begin_ = v52;
              a1[19].__end_ = v13;
              a1[19].__end_cap_.__value_ = 0;
              if (v44)
              {
                operator delete(v44);
              }

              v19 = v76;
              v11 = v77;
              v39 = v75;
              goto LABEL_45;
            }
          }

          else
          {
            v11[v18++] = v42;
            v43 = a1[19].__end_cap_.__value_;
            if (v13 >= v43)
            {
              goto LABEL_52;
            }
          }

          *v13 = v79 | v42;
          v13 += 2;
LABEL_45:
          v41 = v14[v42];
          a1[19].__end_ = v13;
          v14[v42] = v41 + 1;
          v19[v42] = v17;
LABEL_46:
          ++v40;
        }

        while (v40 != v39);
      }
    }

    v17 = (v17 + 1);
    v16 = v17;
    v15 = *a2;
  }

  while (v17 < ((a2[1] - *a2) >> 2));
  if (v18 < 1)
  {
    a3 = v71;
LABEL_76:
    v60 = 0;
    v64 = 0;
    v61 = a3 + 1;
    v62 = *a3;
    if (!((a3[1] - *a3) >> 3))
    {
      goto LABEL_78;
    }

LABEL_77:
    *v61 = v62 + 8 * v60;
    goto LABEL_78;
  }

  v53 = 0;
  v54 = v18;
  v55 = v11;
  a3 = v71;
  do
  {
    v57 = *v55++;
    v56 = v57;
    v58 = v14[v57];
    if (v58 <= 1)
    {
      v59 = -1;
    }

    else
    {
      v59 = v53;
    }

    if (v58 <= 1)
    {
      v58 = 0;
    }

    v53 += v58;
    v14[v56] = v59;
    --v54;
  }

  while (v54);
  v60 = v53;
  v61 = v71 + 1;
  v62 = *v71;
  v63 = (v71[1] - *v71) >> 3;
  if (v53 <= v63)
  {
    v64 = 1;
    if (v63 <= v60)
    {
      goto LABEL_78;
    }

    goto LABEL_77;
  }

  std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::__append(v71, v53 - v63);
  v64 = 1;
LABEL_78:
  v65 = a1[19].__begin_;
  end = a1[19].__end_;
  while (v65 != end)
  {
    v67 = *v65;
    v68 = v14[v67];
    v14[v67] = v68 + 1;
    if ((v68 & 0x80000000) == 0)
    {
      *(*a3 + 8 * v68) = *v65;
    }

    v65 += 2;
  }

  if (v64)
  {
    v69 = v18;
    do
    {
      v70 = *v11++;
      v14[v70] = 0;
      --v69;
    }

    while (v69);
  }
}

void operations_research::sat::PrecedencesPropagator::~PrecedencesPropagator(operations_research::sat::PrecedencesPropagator *this)
{
  *this = &unk_284F44060;
  *(this + 5) = &unk_284F440A8;
  if (dword_27E25D210 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::sat::PrecedencesPropagator::~PrecedencesPropagator()::$_0::operator() const(void)::site, dword_27E25D210) && *(this + 9))
  {
    v32 = *(this + 61);
    operator new();
  }

  v2 = *(this + 58);
  if (v2)
  {
    *(this + 59) = v2;
    operator delete(v2);
  }

  v3 = *(this + 55);
  if (v3)
  {
    *(this + 56) = v3;
    operator delete(v3);
  }

  v4 = *(this + 52);
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(this + 49);
  if (v5)
  {
    operator delete(v5);
  }

  std::deque<int>::~deque[abi:ne200100](this + 344);
  v6 = *(this + 40);
  if (v6)
  {
    *(this + 41) = v6;
    operator delete(v6);
  }

  v7 = *(this + 37);
  if (v7)
  {
    *(this + 38) = v7;
    operator delete(v7);
  }

  v8 = *(this + 34);
  if (v8)
  {
    *(this + 35) = v8;
    operator delete(v8);
  }

  v9 = *(this + 31);
  if (v9)
  {
    v10 = *(this + 32);
    v11 = *(this + 31);
    if (v10 != v9)
    {
      v12 = *(this + 32);
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
      v11 = *(this + 31);
    }

    *(this + 32) = v9;
    operator delete(v11);
  }

  v14 = *(this + 28);
  if (v14)
  {
    v15 = *(this + 29);
    v16 = *(this + 28);
    if (v15 != v14)
    {
      do
      {
        if (*(v15 - 40))
        {
          operator delete(*(v15 - 32));
        }

        v15 -= 64;
      }

      while (v15 != v14);
      v16 = *(this + 28);
    }

    *(this + 29) = v14;
    operator delete(v16);
  }

  v17 = *(this + 25);
  if (v17)
  {
    v18 = *(this + 26);
    v19 = *(this + 25);
    if (v18 != v17)
    {
      v20 = *(this + 26);
      do
      {
        v21 = *(v20 - 32);
        v20 -= 32;
        if (v21)
        {
          operator delete(*(v18 - 24));
        }

        v18 = v20;
      }

      while (v20 != v17);
      v19 = *(this + 25);
    }

    *(this + 26) = v17;
    operator delete(v19);
  }

  v22 = *(this + 22);
  if (v22)
  {
    v23 = *(this + 23);
    v24 = *(this + 22);
    if (v23 != v22)
    {
      do
      {
        if (*(v23 - 40))
        {
          operator delete(*(v23 - 32));
        }

        v23 -= 64;
      }

      while (v23 != v22);
      v24 = *(this + 22);
    }

    *(this + 23) = v22;
    operator delete(v24);
  }

  v25 = *(this + 19);
  if (v25)
  {
    v26 = *(this + 20);
    v27 = *(this + 19);
    if (v26 != v25)
    {
      v28 = *(this + 20);
      do
      {
        v29 = *(v28 - 32);
        v28 -= 32;
        if (v29)
        {
          operator delete(*(v26 - 24));
        }

        v26 = v28;
      }

      while (v28 != v25);
      v27 = *(this + 19);
    }

    *(this + 20) = v25;
    operator delete(v27);
  }

  v30 = *(this + 16);
  if (v30)
  {
    *(this + 17) = v30;
    operator delete(v30);
  }

  v31 = *(this + 13);
  if (v31)
  {
    *(this + 14) = v31;
    operator delete(v31);
  }

  *this = &unk_284F3BCC8;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  operations_research::sat::PrecedencesPropagator::~PrecedencesPropagator(this);

  JUMPOUT(0x23EED9460);
}

void non-virtual thunk tooperations_research::sat::PrecedencesPropagator::~PrecedencesPropagator(operations_research::sat::PrecedencesPropagator *this)
{
  operations_research::sat::PrecedencesPropagator::~PrecedencesPropagator((this - 40));
}

{
  operations_research::sat::PrecedencesPropagator::~PrecedencesPropagator((this - 40));

  JUMPOUT(0x23EED9460);
}

uint64_t operations_research::sat::PrecedencesPropagator::Propagate(operations_research::sat::PrecedencesPropagator *this)
{
  v2 = *(this + 9);
  for (i = *(this + 7); ; i = *(this + 7))
  {
    if (v2 >= *(i + 12))
    {
      operations_research::sat::PrecedencesPropagator::InitializeBFQueueWithModifiedNodes(this);
      result = operations_research::sat::PrecedencesPropagator::BellmanFordTarjan(this, *(this + 7));
      if (result)
      {
        operations_research::sat::PrecedencesPropagator::PropagateOptionalArcs(this, *(this + 7));
        operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>::ClearAndResize(this + 96, (*(*(this + 8) + 48) - *(*(this + 8) + 40)) >> 3);
        return 1;
      }

      return result;
    }

    *(this + 9) = v2 + 1;
    v4 = *(*(i + 48) + 4 * v2);
    v5 = *(this + 31);
    if (v4 < ((*(this + 32) - v5) >> 5))
    {
      v6 = 32 * v4;
      v8 = (v5 + v6 + 8);
      v7 = *(v5 + v6);
      if (v7)
      {
        v8 = *v8;
      }

      if ((v7 & 0x7FFFFFFFFFFFFFFELL) != 0)
      {
        v9 = 4 * (v7 >> 1);
        do
        {
          v28 = *v8;
          v10 = *(this + 34);
          v11 = 4 * *v8;
          v12 = *(v10 + v11) - 1;
          *(v10 + v11) = v12;
          if (!v12)
          {
            v13 = (*(this + 22) + (v28 << 6));
            if (v13[4] == -1)
            {
              v14 = *(v13 + 3);
              if (v14)
              {
                v15 = *(v13 + 4);
              }

              else
              {
                v15 = (v13 + 8);
              }

              operations_research::sat::PrecedenceRelations::PushConditionalRelation(*(this + 6), v15, v14 >> 1, *v13, v13[1] ^ 1, -*(v13 + 1));
            }

            v16 = (*(this + 19) + 32 * *v13);
            v18 = v16 + 1;
            v17 = *v16;
            if (*v16)
            {
              v18 = v16[1];
              v19 = v16[2];
            }

            else
            {
              v19 = 6;
            }

            if (v17 >> 1 == v19)
            {
              absl::lts_20240722::inlined_vector_internal::Storage<operations_research::sat::Literal,6ul,std::allocator<operations_research::sat::Literal>>::EmplaceBackSlow<operations_research::sat::Literal const&>(v16);
            }

            *(v18 + (v17 >> 1)) = v28;
            *v16 = v17 + 2;
          }

          ++v8;
          v9 -= 4;
        }

        while (v9);
        v5 = *(this + 31);
        v7 = *(v5 + v6);
      }

      v20 = (v5 + v6 + 8);
      if (v7)
      {
        v20 = *v20;
      }

      if ((v7 & 0x7FFFFFFFFFFFFFFELL) != 0)
      {
        break;
      }
    }

LABEL_2:
    v2 = *(this + 9);
  }

  v21 = 4 * (v7 >> 1);
  while (1)
  {
    if (*(*(this + 34) + 4 * *v20) <= 0)
    {
      v22 = (*(this + 22) + (*v20 << 6));
      v23 = *(*(this + 8) + 40);
      v24 = v22[4];
      v25 = v24 == -1 ? 0 : *(v23 + 8 * v24);
      v26 = *(v22 + 1) + *(v23 + 8 * *v22) + v25;
      if (v26 > *(v23 + 8 * v22[1]))
      {
        result = operations_research::sat::PrecedencesPropagator::EnqueueAndCheck(this, v22, v26);
        if (!result)
        {
          return result;
        }
      }
    }

    ++v20;
    v21 -= 4;
    if (!v21)
    {
      goto LABEL_2;
    }
  }
}

uint64_t operations_research::sat::PrecedencesPropagator::EnqueueAndCheck(uint64_t a1, int *a2, uint64_t a3)
{
  ++*(a1 + 496);
  *(a1 + 304) = *(a1 + 296);
  v6 = *(a2 + 3);
  if (v6)
  {
    v7 = *(a2 + 4);
  }

  else
  {
    v7 = a2 + 8;
  }

  if ((v6 & 0x7FFFFFFFFFFFFFFELL) != 0)
  {
    v8 = 4 * (v6 >> 1);
    do
    {
      v9 = *v7++;
      LODWORD(v25) = v9 ^ 1;
      std::vector<int>::push_back[abi:ne200100](a1 + 296, &v25);
      v8 -= 4;
    }

    while (v8);
  }

  *(a1 + 328) = *(a1 + 320);
  v10 = *(*(*(a1 + 64) + 40) + 8 * *a2);
  *&v25 = *a2;
  *(&v25 + 1) = v10;
  std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](a1 + 320, &v25);
  v11 = a2[4];
  if (v11 != -1)
  {
    v12 = *(*(*(a1 + 64) + 40) + 8 * v11);
    *&v25 = a2[4];
    *(&v25 + 1) = v12;
    std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](a1 + 320, &v25);
  }

  v13 = *(a1 + 64);
  v14 = a2[1];
  v15 = *(*(v13 + 40) + ((8 * v14) ^ 8));
  if (-v15 >= a3)
  {
    return operations_research::sat::IntegerTrail::Enqueue(v13, v14, a3, *(a1 + 296), (*(a1 + 304) - *(a1 + 296)) >> 2, *(a1 + 320), (*(a1 + 328) - *(a1 + 320)) >> 4);
  }

  v16 = v15 - 1;
  if (v15 - 1 > 0x7FFFFFFFFFFFFFFDLL)
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  *&v25 = v14 ^ 1;
  *(&v25 + 1) = v15;
  std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](a1 + 320, &v25);
  v17 = *(a1 + 328) - *(a1 + 320);
  if (v17)
  {
    if (!((v17 >> 4) >> 61))
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  operations_research::sat::IntegerTrail::RelaxLinearReason(*(a1 + 64), v16 + a3, 0, 0, (a1 + 320));
  v19 = *(a1 + 64);
  v20 = *(a1 + 296);
  v21 = *(a1 + 304);
  v22 = *(a1 + 320);
  v23 = *(a1 + 328);
  v24 = *(v19 + 840);
  *(v24 + 120) = 0;
  std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal const*,operations_research::sat::Literal const*>((v24 + 72), v20, v21, (v21 - v20) >> 2);
  operations_research::sat::IntegerTrail::MergeReasonInto(v19, v22, (v23 - v22) >> 4, (v24 + 72));
  return 0;
}

void sub_23CC8AC60(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::PrecedencesPropagator::InitializeBFQueueWithModifiedNodes(operations_research::sat::PrecedencesPropagator *this)
{
  v2 = *(this + 20) - *(this + 19);
  std::vector<BOOL>::resize(this + 392, (v2 >> 5), 0);
  v3 = *(this + 44);
  v4 = *(this + 45);
  if (v4 == v3)
  {
    v9 = (this + 384);
  }

  else
  {
    v5 = *(this + 47);
    v6 = &v3[v5 >> 10];
    v7 = *v6;
    v8 = (*v6 + 4 * (v5 & 0x3FF));
    v9 = (this + 384);
    v10 = *(v3 + (((*(this + 48) + v5) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(this + 48) + v5) & 0x3FF);
    if (v8 != v10)
    {
      v11 = *(this + 49);
      do
      {
        v12 = *v8++;
        *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v12);
        if (v8 - v7 == 4096)
        {
          v13 = v6[1];
          ++v6;
          v7 = v13;
          v8 = v13;
        }
      }

      while (v8 != v10);
    }
  }

  *v9 = 0;
  v14 = v4 - v3;
  if (v14 >= 3)
  {
    do
    {
      operator delete(*v3);
      v4 = *(this + 45);
      v3 = (*(this + 44) + 8);
      *(this + 44) = v3;
      v14 = v4 - v3;
    }

    while (v14 > 2);
  }

  if (v14 == 1)
  {
    v15 = 512;
  }

  else
  {
    if (v14 != 2)
    {
      goto LABEL_15;
    }

    v15 = 1024;
  }

  *(this + 47) = v15;
LABEL_15:
  v16 = *(this + 16);
  v17 = *(this + 17);
  if (v16 != v17)
  {
    v18 = v2 >> 5;
    do
    {
      v19 = *v16;
      if (*v16 < v18)
      {
        if (v4 == v3)
        {
          v20 = 0;
        }

        else
        {
          v20 = ((v4 - v3) << 7) - 1;
        }

        v21 = *(this + 48);
        v22 = v21 + *(this + 47);
        if (v20 == v22)
        {
          std::deque<int>::__add_back_capacity(this + 43);
          v3 = *(this + 44);
          v4 = *(this + 45);
          v21 = *(this + 48);
          v22 = *(this + 47) + v21;
        }

        (*(v3 + ((v22 >> 7) & 0x1FFFFFFFFFFFFF8)))[v22 & 0x3FF] = v19;
        *v9 = v21 + 1;
        *(*(this + 49) + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      }

      ++v16;
    }

    while (v16 != v17);
  }
}

uint64_t operations_research::sat::PrecedencesPropagator::BellmanFordTarjan(operations_research::sat::PrecedencesPropagator *this, operations_research::sat::Trail *a2)
{
  v117 = *MEMORY[0x277D85DE8];
  v3 = ((*(this + 20) - *(this + 19)) >> 5);
  std::vector<BOOL>::resize(this + 416, v3, 0);
  __x[0] = -1;
  v4 = *(this + 55);
  v5 = (*(this + 56) - v4) >> 2;
  if (v3 <= v5)
  {
    if (v3 < v5)
    {
      *(this + 56) = v4 + 4 * v3;
      v116 = this;
      v6 = 1;
      v115 = 1;
      v7 = *(this + 48);
      if (!v7)
      {
LABEL_7:
        v8 = *(this + 16);
        v9 = *(this + 17);
        if (v8 != v9)
        {
          goto LABEL_110;
        }

        goto LABEL_115;
      }

      goto LABEL_11;
    }
  }

  else
  {
    std::vector<int>::__append((this + 440), v3 - v5, __x);
  }

  v116 = this;
  v6 = 1;
  v115 = 1;
  v7 = *(this + 48);
  if (!v7)
  {
    goto LABEL_7;
  }

  while (1)
  {
LABEL_11:
    v11 = *(this + 44);
    v12 = (*(v11 + ((*(this + 47) >> 7) & 0x1FFFFFFFFFFFFF8)))[*(this + 47) & 0x3FFLL];
    v13 = *(this + 47) + 1;
    *(this + 47) = v13;
    *(this + 48) = v7 - 1;
    if (v13 >= 0x800)
    {
      operator delete(*v11);
      *(this + 44) += 8;
      *(this + 47) -= 1024;
    }

    v10 = (v12 >> 3) & 0x1FFFFFFFFFFFFFF8;
    *(*(this + 49) + v10) &= ~(1 << v12);
    if ((*(*(this + 52) + v10) & (1 << v12)) == 0)
    {
      v14 = (*(this + 19) + 32 * v12);
      v17 = *v14;
      v16 = (v14 + 1);
      v15 = v17;
      if (v17)
      {
        v16 = *v16;
      }

      if ((v15 & 0x7FFFFFFFFFFFFFFELL) != 0)
      {
        break;
      }
    }

LABEL_10:
    v7 = *(this + 48);
    if (!v7)
    {
      v6 = 1;
      v8 = *(this + 16);
      v9 = *(this + 17);
      if (v8 != v9)
      {
        goto LABEL_110;
      }

      goto LABEL_115;
    }
  }

  v18 = *(*(*(this + 8) + 40) + 8 * v12);
  v19 = &v16[v15 >> 1];
  while (1)
  {
    v20 = *v16;
    v21 = *v16 << 6;
    v22 = *(this + 22) + v21;
    v23 = *(v22 + 16);
    v24 = *(this + 8);
    if (v23 == -1)
    {
      v26 = 0;
      v25 = *(v24 + 40);
    }

    else
    {
      v25 = *(v24 + 40);
      v26 = *(v25 + 8 * v23);
    }

    v27 = *(v22 + 8) + v18 + v26;
    if (v27 > *(v25 + 8 * *(v22 + 4)))
    {
      break;
    }

LABEL_18:
    if (++v16 == v19)
    {
      goto LABEL_10;
    }
  }

  if ((operations_research::sat::PrecedencesPropagator::EnqueueAndCheck(this, (*(this + 22) + v21), *(v22 + 8) + v18 + v26) & 1) == 0)
  {
    goto LABEL_107;
  }

  if (!operations_research::sat::PrecedencesPropagator::DisassembleSubtree(this, *(v22 + 4), *v22, this + 52))
  {
    v36 = *(v22 + 4);
    v37 = *(this + 55);
    v38 = *(v37 + 4 * v36);
    if (v38 != -1)
    {
      *(*(this + 22) + (v38 << 6) + 56) = 0;
    }

    v39 = *(*(*(this + 8) + 40) + 8 * v36);
    if (v39 == v27)
    {
      *(*(this + 22) + v21 + 56) = 1;
    }

    else
    {
      v20 = -1;
    }

    *(v37 + 4 * v36) = v20;
    v40 = *(v22 + 4);
    v41 = (v40 >> 3) & 0x1FFFFFFFFFFFFFF8;
    *(*(this + 52) + v41) &= ~(1 << v40);
    v42 = *(this + 49);
    v43 = *(v42 + v41) & (1 << v40);
    if (v39 >= v27 && v43 == 0)
    {
      v45 = *(this + 22);
      v46 = *(this + 45);
      v47 = *(this + 44);
      if (v46 == v47)
      {
        v48 = 0;
      }

      else
      {
        v48 = ((v46 - v47) << 7) - 1;
      }

      v49 = *(this + 48);
      v50 = v49 + *(this + 47);
      if (v48 == v50)
      {
        std::deque<int>::__add_back_capacity(this + 43);
        v47 = *(this + 44);
        v49 = *(this + 48);
        v50 = *(this + 47) + v49;
        v42 = *(this + 49);
      }

      *(*(v47 + ((v50 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v50 & 0x3FF)) = v40;
      *(this + 48) = v49 + 1;
      *(v42 + ((*(v22 + 4) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << *(v22 + 4);
    }

    goto LABEL_18;
  }

  *__x = 0;
  v112 = 0;
  v113 = 0;
  operations_research::sat::PrecedencesPropagator::AnalyzePositiveCycle(this, v20, v28, __x, this + 37, this + 40);
  v29 = *__x;
  v30 = v112;
  if (*__x == v112)
  {
    ++*(this + 61);
    v51 = *(this + 8);
    v52 = *(this + 37);
    v53 = *(this + 38);
    v54 = *(this + 40);
    v55 = *(this + 41);
    v56 = *(v51 + 840);
    *(v56 + 120) = 0;
    std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal const*,operations_research::sat::Literal const*>((v56 + 72), v52, v53, (v53 - v52) >> 2);
    operations_research::sat::IntegerTrail::MergeReasonInto(v51, v54, (v55 - v54) >> 4, (v56 + 72));
    v57 = 0;
    if (v29)
    {
      goto LABEL_62;
    }

    goto LABEL_63;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,false>(*__x, v112, &v114, 126 - 2 * __clz((v112 - *__x) >> 2), 1);
  v31 = v29 + 1;
  while (v31 != v30)
  {
    v33 = *(v31 - 1);
    v32 = *v31++;
    if (v33 == v32)
    {
      v34 = v31 - 2;
      while (v31 != v30)
      {
        v35 = v32;
        v32 = *v31;
        if (v35 != *v31)
        {
          v34[1] = v32;
          ++v34;
        }

        ++v31;
      }

      if (v34 + 1 != v30)
      {
        v30 = v34 + 1;
        v112 = v34 + 1;
      }

      break;
    }
  }

  if (v29 == v30)
  {
    goto LABEL_61;
  }

  v58 = v29;
  while (2)
  {
    v59 = *v58;
    if ((*(*(*(this + 7) + 24) + ((v59 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v59 & 0x3F ^ 1u)))
    {
      v63 = *(this + 38);
      v62 = *(this + 39);
      if (v63 >= v62)
      {
        v65 = *(this + 37);
        v66 = v63 - v65;
        v67 = (v63 - v65) >> 2;
        v68 = v67 + 1;
        if ((v67 + 1) >> 62)
        {
          goto LABEL_116;
        }

        v69 = v62 - v65;
        if (v69 >> 1 > v68)
        {
          v68 = v69 >> 1;
        }

        if (v69 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v70 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v70 = v68;
        }

        if (v70)
        {
          if (!(v70 >> 62))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v71 = (v63 - v65) >> 2;
        v72 = (4 * v67);
        v73 = (4 * v67 - 4 * v71);
        *v72 = v59;
        v64 = (v72 + 1);
        memcpy(v73, v65, v66);
        *(this + 37) = v73;
        *(this + 38) = v64;
        *(this + 39) = 0;
        if (v65)
        {
          operator delete(v65);
        }
      }

      else
      {
        *v63 = v59;
        v64 = v63 + 4;
      }

      *(this + 38) = v64;
      v74 = *(this + 8);
      v75 = *(this + 37);
      v76 = *(this + 40);
      v77 = *(this + 41);
      v78 = *(v74 + 840);
      *(v78 + 120) = 0;
      v79 = *(v78 + 72);
      v80 = v64 - v75;
      v81 = *(v78 + 88);
      if (v81 - v79 < (v64 - v75))
      {
        if (v79)
        {
          *(v78 + 80) = v79;
          operator delete(v79);
          v81 = 0;
          *(v78 + 72) = 0;
          *(v78 + 80) = 0;
          *(v78 + 88) = 0;
        }

        v82 = v80 >> 2;
        if (!((v80 >> 2) >> 62))
        {
          if (v81 >> 1 > v82)
          {
            v82 = v81 >> 1;
          }

          if (v81 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v83 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v83 = v82;
          }

          if (!(v83 >> 62))
          {
            operator new();
          }
        }

LABEL_116:
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      v84 = *(v78 + 80);
      v85 = v84 - v79;
      if (v84 - v79 >= v80)
      {
        if (v64 != v75)
        {
          v110 = v74;
          v89 = v76;
          v90 = v77;
          memmove(v79, v75, v80);
          v77 = v90;
          v76 = v89;
          v74 = v110;
        }

        v91 = &v79[v80];
LABEL_105:
        *(v78 + 80) = v91;
        operations_research::sat::IntegerTrail::MergeReasonInto(v74, v76, (v77 - v76) >> 4, (v78 + 72));
        v57 = 0;
        if (v29)
        {
          goto LABEL_62;
        }

        goto LABEL_63;
      }

      if (v84 == v79)
      {
        v86 = *(v78 + 80);
        v87 = &v75[v85];
        v88 = v86;
        if (&v75[v85] == v64)
        {
          goto LABEL_104;
        }
      }

      else
      {
        v108 = v76;
        v109 = v74;
        __src = v75;
        v107 = v77;
        memmove(v79, v75, v84 - v79);
        v85 = v84 - v79;
        v75 = __src;
        v77 = v107;
        v76 = v108;
        v74 = v109;
        v86 = *(v78 + 80);
        v87 = &__src[v84 - v79];
        v88 = v86;
        if (v87 == v64)
        {
          goto LABEL_104;
        }
      }

      v92 = &v79[v64] - &v84[v75] - 4;
      if (v92 >= 0x1C)
      {
        v88 = v86;
        if ((&v79[v86] - &v84[v75]) >= 0x20)
        {
          v93 = (v92 >> 2) + 1;
          v94 = 4 * (v93 & 0x7FFFFFFFFFFFFFF8);
          v87 += v94;
          v88 = (v86 + v94);
          v95 = (v86 + 16);
          v96 = &v75[v85 + 16];
          v97 = v93 & 0x7FFFFFFFFFFFFFF8;
          do
          {
            v98 = *v96;
            *(v95 - 1) = *(v96 - 1);
            *v95 = v98;
            v95 += 2;
            v96 += 32;
            v97 -= 8;
          }

          while (v97);
          if (v93 == (v93 & 0x7FFFFFFFFFFFFFF8))
          {
            goto LABEL_104;
          }
        }
      }

      else
      {
        v88 = v86;
      }

      do
      {
        v99 = *v87;
        v87 += 4;
        *v88 = v99;
        v88 += 4;
      }

      while (v87 != v64);
LABEL_104:
      v91 = v88;
      goto LABEL_105;
    }

    if (++v58 != v30)
    {
      continue;
    }

    break;
  }

  v60 = v29;
  do
  {
    v61 = *v60;
    if (((*(*(*(this + 7) + 24) + ((v61 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v61) & 1) == 0)
    {
      operations_research::sat::IntegerTrail::EnqueueLiteral(*(this + 8), v61, *(this + 37), (*(this + 38) - *(this + 37)) >> 2, *(this + 40), (*(this + 41) - *(this + 40)) >> 4);
    }

    ++v60;
  }

  while (v60 != v30);
LABEL_61:
  v57 = 1;
  if (v29)
  {
LABEL_62:
    operator delete(v29);
  }

LABEL_63:
  if (v57)
  {
    goto LABEL_18;
  }

LABEL_107:
  v6 = 0;
  v8 = *(this + 16);
  v9 = *(this + 17);
  if (v8 == v9)
  {
    goto LABEL_115;
  }

LABEL_110:
  v100 = (*(this + 20) - *(this + 19)) >> 5;
  do
  {
    v101 = *v8;
    if (v101 < v100)
    {
      v102 = *(this + 55);
      v103 = *(v102 + 4 * v101);
      if (v103 != -1)
      {
        *(*(this + 22) + (v103 << 6) + 56) = 0;
        *(v102 + 4 * v101) = -1;
        *(*(this + 52) + ((v101 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v101);
      }
    }

    ++v8;
  }

  while (v8 != v9);
LABEL_115:
  v104 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_23CC8B748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  absl::lts_20240722::Cleanup<absl::lts_20240722::cleanup_internal::Tag,operations_research::sat::PrecedencesPropagator::BellmanFordTarjan(operations_research::sat::Trail *)::$_0>::~Cleanup(va);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::PrecedencesPropagator::PropagateOptionalArcs(uint64_t this, operations_research::sat::Trail *a2)
{
  v3 = *(this + 128);
  v61 = *(this + 136);
  if (v3 != v61)
  {
    v4 = this;
    v62 = a2;
    do
    {
      v64 = v3;
      v5 = *v3;
      v6 = *(v4 + 200);
      if (v5 < ((*(v4 + 208) - v6) >> 5))
      {
        v7 = (v6 + 32 * v5);
        v10 = *v7;
        v9 = (v7 + 1);
        v8 = v10;
        if (v10)
        {
          v9 = *v9;
        }

        if ((v8 & 0x7FFFFFFFFFFFFFFELL) != 0)
        {
          v11 = &v9[v8 >> 1];
          v63 = v11;
          do
          {
            v13 = (*(v4 + 224) + (*v9 << 6));
            v14 = *(v13 + 3);
            v15 = (v13 + 8);
            v16 = (v13 + 8);
            if (v14)
            {
              v16 = *v15;
            }

            if ((v14 & 0x7FFFFFFFFFFFFFFELL) != 0)
            {
              v17 = 0;
              v18 = 4 * (v14 >> 1);
              do
              {
                v20 = *v16++;
                v19 = v20;
                if (((1 << v20) & *(*(a2 + 3) + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8))) == 0)
                {
                  v2 = v19;
                  ++v17;
                }

                v18 -= 4;
              }

              while (v18);
              if (v17 == 1 && ((*(*(a2 + 3) + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v2 & 0x3F ^ 1u)) & 1) == 0)
              {
                v21 = *(*(v4 + 64) + 40);
                v22 = v13[4];
                if (v22 == -1)
                {
                  v23 = 0;
                }

                else
                {
                  v23 = *(v21 + 8 * v22);
                }

                v24 = *v13;
                v25 = *(v21 + 8 * v24);
                if (*(v13 + 1) + v25 + v23 > -*(v21 + ((8 * v13[1]) ^ 8)))
                {
                  v26 = *(v4 + 320);
                  *(v4 + 328) = v26;
                  v27 = *(v4 + 336);
                  if (v26 >= v27)
                  {
                    v29 = v27 - v26;
                    v30 = v29 >> 3;
                    if ((v29 >> 3) <= 1)
                    {
                      v30 = 1;
                    }

                    v31 = v29 >= 0x7FFFFFFFFFFFFFF0;
                    v32 = 0xFFFFFFFFFFFFFFFLL;
                    if (!v31)
                    {
                      v32 = v30;
                    }

                    if (!(v32 >> 60))
                    {
                      operator new();
                    }

LABEL_75:
                    std::__throw_bad_array_new_length[abi:ne200100]();
                  }

                  *v26 = v24;
                  v26[1] = v25;
                  v28 = v26 + 2;
                  *(v4 + 328) = v28;
                  v33 = v13[1];
                  if (*(*(*(v4 + 64) + 40) + ((8 * v33) ^ 8)) - 1 <= 0x7FFFFFFFFFFFFFFDLL)
                  {
                    v34 = *(*(*(v4 + 64) + 40) + ((8 * v33) ^ 8));
                  }

                  else
                  {
                    v34 = 0x7FFFFFFFFFFFFFFFLL;
                  }

                  v35 = v33 ^ 1;
                  v36 = *(v4 + 336);
                  if (v28 >= v36)
                  {
                    v38 = *(v4 + 320);
                    v39 = v28 - v38;
                    v40 = (v28 - v38) >> 4;
                    v41 = v40 + 1;
                    if ((v40 + 1) >> 60)
                    {
                      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                    }

                    v42 = v36 - v38;
                    if (v42 >> 3 > v41)
                    {
                      v41 = v42 >> 3;
                    }

                    if (v42 >= 0x7FFFFFFFFFFFFFF0)
                    {
                      v43 = 0xFFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v43 = v41;
                    }

                    if (v43)
                    {
                      if (!(v43 >> 60))
                      {
                        operator new();
                      }

                      goto LABEL_75;
                    }

                    v44 = (16 * v40);
                    *v44 = v35;
                    v44[1] = v34;
                    v37 = 16 * v40 + 16;
                    memcpy(0, v38, v39);
                    *(v4 + 320) = 0;
                    *(v4 + 328) = v37;
                    *(v4 + 336) = 0;
                    if (v38)
                    {
                      operator delete(v38);
                    }
                  }

                  else
                  {
                    *v28 = v35;
                    v28[1] = v34;
                    v37 = (v28 + 2);
                  }

                  *(v4 + 328) = v37;
                  v45 = v13[4];
                  if (v45 != -1)
                  {
                    v46 = *(*(*(v4 + 64) + 40) + 8 * v45);
                    *&v65 = v13[4];
                    *(&v65 + 1) = v46;
                    std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](v4 + 320, &v65);
                  }

                  v47 = *(v4 + 296);
                  *(v4 + 304) = v47;
                  v48 = *(v13 + 3);
                  if (v48)
                  {
                    v15 = *v15;
                  }

                  if ((v48 & 0x7FFFFFFFFFFFFFFELL) != 0)
                  {
                    v49 = 4 * (v48 >> 1);
                    do
                    {
                      if (*v15 != v2)
                      {
                        v50 = *v15 ^ 1;
                        v51 = *(v4 + 312);
                        if (v47 < v51)
                        {
                          *v47++ = v50;
                        }

                        else
                        {
                          v52 = *(v4 + 296);
                          v53 = v47 - v52;
                          v54 = (v47 - v52) >> 2;
                          v55 = v54 + 1;
                          if ((v54 + 1) >> 62)
                          {
                            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                          }

                          v56 = v51 - v52;
                          if (v56 >> 1 > v55)
                          {
                            v55 = v56 >> 1;
                          }

                          if (v56 >= 0x7FFFFFFFFFFFFFFCLL)
                          {
                            v57 = 0x3FFFFFFFFFFFFFFFLL;
                          }

                          else
                          {
                            v57 = v55;
                          }

                          if (v57)
                          {
                            if (!(v57 >> 62))
                            {
                              operator new();
                            }

                            goto LABEL_75;
                          }

                          v58 = v54;
                          v59 = (4 * v54);
                          v60 = &v59[-v58];
                          *v59 = v50;
                          v47 = v59 + 1;
                          memcpy(v60, v52, v53);
                          *(v4 + 296) = v60;
                          *(v4 + 304) = v47;
                          *(v4 + 312) = 0;
                          if (v52)
                          {
                            operator delete(v52);
                          }
                        }

                        *(v4 + 304) = v47;
                      }

                      ++v15;
                      v49 -= 4;
                    }

                    while (v49);
                    v12 = *(v4 + 296);
                  }

                  else
                  {
                    v12 = v47;
                  }

                  ++*(v4 + 504);
                  this = operations_research::sat::IntegerTrail::EnqueueLiteral(*(v4 + 64), v2 ^ 1u, v12, (v47 - v12) >> 2, *(v4 + 320), (*(v4 + 328) - *(v4 + 320)) >> 4);
                }

                a2 = v62;
                v11 = v63;
              }
            }

            ++v9;
          }

          while (v9 != v11);
        }
      }

      v3 = v64 + 1;
    }

    while (v64 + 1 != v61);
  }

  return this;
}

void operations_research::sat::PrecedencesPropagator::Untrail(operations_research::sat::PrecedencesPropagator *this, const operations_research::sat::Trail *a2, int a3)
{
  v6 = *(this + 9);
  if (v6 > a3)
  {
    operations_research::SparseBitset<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>::ClearAndResize(this + 96, (*(*(this + 8) + 48) - *(*(this + 8) + 40)) >> 3);
    v6 = *(this + 9);
  }

  if (v6 > a3)
  {
    v7 = *(a2 + 6);
    v8 = *(this + 31);
    v9 = (*(this + 32) - v8) >> 5;
    do
    {
      *(this + 9) = --v6;
      v10 = *(v7 + 4 * v6);
      if (v10 < v9)
      {
        v11 = (v8 + 32 * v10);
        v14 = *v11;
        v12 = (v11 + 1);
        v13 = v14;
        if (v14)
        {
          v12 = *v12;
        }

        if ((v13 & 0x7FFFFFFFFFFFFFFELL) != 0)
        {
          v15 = *(this + 34);
          v16 = 4 * (v13 >> 1);
          do
          {
            v17 = *v12;
            v18 = 4 * *v12;
            v19 = *(v15 + v18);
            *(v15 + v18) = v19 + 1;
            if (!v19)
            {
              v20 = 32 * *(*(this + 22) + (v17 << 6));
              *(*(this + 19) + v20) -= 2;
            }

            ++v12;
            v16 -= 4;
          }

          while (v16);
          v6 = *(this + 9);
        }
      }
    }

    while (v6 > a3);
  }
}

void operations_research::sat::PrecedencesPropagator::AdjustSizeFor(uint64_t a1, int a2)
{
  v2 = a2 | 1;
  v4 = *(a1 + 152);
  v3 = *(a1 + 160);
  v5 = (a1 + 152);
  v6 = v3 - v4;
  v7 = (v3 - v4) >> 5;
  if (v7 <= (a2 | 1))
  {
    v9 = v6 >> 5;
    if (v2 >= (v6 >> 5))
    {
      do
      {
        if (v9 != -1)
        {
          v10 = *(a1 + 88);
          v11 = *(a1 + 80);
          v13 = (v11 + 88);
          v12 = *(v11 + 88);
          v14 = *(v11 + 96);
          v15 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v12) >> 3);
          if (v15 <= v9)
          {
            v16 = v9 + 1;
            if (v16 <= v15)
            {
              if (v16 < v15)
              {
                v17 = v12 + 24 * v16;
                if (v14 != v17)
                {
                  v18 = *(v11 + 96);
                  do
                  {
                    v20 = *(v18 - 24);
                    v18 -= 24;
                    v19 = v20;
                    if (v20)
                    {
                      *(v14 - 16) = v19;
                      operator delete(v19);
                    }

                    v14 = v18;
                  }

                  while (v18 != v17);
                }

                *(v11 + 96) = v17;
              }
            }

            else
            {
              std::vector<std::vector<operations_research::sat::GenericLiteralWatcher::WatchData>>::__append(v13, v16 - v15);
            }
          }

          v33 = v10 | 0xFFFFFFFF00000000;
          v21 = (*v13 + 24 * v9);
          v22 = v21[1];
          if (*v21 == v22 || *(v22 - 8) != v10 || *(v22 - 4) != -1)
          {
            std::vector<long long>::push_back[abi:ne200100](v21, &v33);
          }
        }

        LODWORD(v9) = v9 + 1;
      }

      while (v9 <= v2);
      v4 = *(a1 + 152);
      v3 = *(a1 + 160);
      v7 = (v3 - v4) >> 5;
    }

    v23 = v2 + 1;
    if (v23 <= v7)
    {
      if (v23 < v7)
      {
        v24 = v4 + 32 * v23;
        if (v3 != v24)
        {
          v25 = v3;
          do
          {
            v26 = *(v25 - 32);
            v25 -= 32;
            if (v26)
            {
              operator delete(*(v3 - 24));
            }

            v3 = v25;
          }

          while (v25 != v24);
        }

        *(a1 + 160) = v24;
      }
    }

    else
    {
      std::vector<absl::lts_20240722::InlinedVector<operations_research::sat::Literal,6ul,std::allocator<operations_research::sat::Literal>>>::__append(v5, v23 - v7);
    }

    v28 = *(a1 + 200);
    v27 = *(a1 + 208);
    v29 = (v27 - v28) >> 5;
    if (v23 <= v29)
    {
      if (v23 < v29)
      {
        v30 = v28 + 32 * v23;
        if (v27 != v30)
        {
          v31 = *(a1 + 208);
          do
          {
            v32 = *(v31 - 32);
            v31 -= 32;
            if (v32)
            {
              operator delete(*(v27 - 24));
            }

            v27 = v31;
          }

          while (v31 != v30);
        }

        *(a1 + 208) = v30;
      }
    }

    else
    {
      std::vector<absl::lts_20240722::InlinedVector<operations_research::sat::Literal,6ul,std::allocator<operations_research::sat::Literal>>>::__append((a1 + 200), v23 - v29);
    }
  }
}

void operations_research::sat::PrecedencesPropagator::AddArc(void *a1, int a2, int a3, uint64_t a4, int a5, int *a6, uint64_t a7)
{
  v8 = a6;
  v92 = *MEMORY[0x277D85DE8];
  v82 = a2;
  v81 = a4;
  v80 = a5;
  v79[0] = a6;
  v79[1] = a7;
  operations_research::sat::PrecedencesPropagator::AdjustSizeFor(a1, a2);
  operations_research::sat::PrecedencesPropagator::AdjustSizeFor(a1, a3);
  if (a5 != -1)
  {
    operations_research::sat::PrecedencesPropagator::AdjustSizeFor(a1, a5);
  }

  v89 = 0;
  if ((a7 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v13 = 4 * a7;
    do
    {
      v14 = *v8;
      LODWORD(v83) = *v8;
      v15 = v89;
      if (v89)
      {
        v16 = *(&v90 + 1);
      }

      else
      {
        v16 = 6;
      }

      if (v89 >> 1 == v16)
      {
        absl::lts_20240722::inlined_vector_internal::Storage<operations_research::sat::Literal,6ul,std::allocator<operations_research::sat::Literal>>::EmplaceBackSlow<operations_research::sat::Literal const&>(&v89);
      }

      v17 = v90;
      if ((v89 & 1) == 0)
      {
        v17 = &v90;
      }

      *(v17 + (v89 >> 1)) = v14;
      v89 = v15 + 2;
      ++v8;
      v13 -= 4;
    }

    while (v13);
    v18 = v89;
    v12 = v90;
  }

  else
  {
    v18 = 0;
  }

  if (v18)
  {
    v19 = v12;
  }

  else
  {
    v19 = &v90;
  }

  v20 = 126 - 2 * __clz((2 * v18) >> 2);
  if ((v18 & 0x7FFFFFFFFFFFFFFELL) != 0)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,false>(v19, (v19 + ((2 * v18) & 0xFFFFFFFFFFFFFFFCLL)), &v83, v21, 1);
  v22 = v89;
  if (v89)
  {
    v23 = v90;
  }

  else
  {
    v23 = &v90;
  }

  v24 = v89 >> 1;
  v25 = &v23[4 * (v89 >> 1)];
  if ((v89 & 0x7FFFFFFFFFFFFFFELL) != 0)
  {
    v23 += 4;
    v26 = 4 * v24 - 4;
    while (v26)
    {
      v28 = *(v23 - 1);
      v27 = *v23;
      v23 += 4;
      v26 -= 4;
      if (v28 == v27)
      {
        v23 -= 8;
        goto LABEL_30;
      }
    }
  }

  if (v23 != v25)
  {
LABEL_30:
    v29 = v23 + 8;
    if (v23 + 8 != v25)
    {
      v30 = *v23;
      do
      {
        v31 = v30;
        v30 = *v29;
        if (v31 != *v29)
        {
          *(v23 + 1) = v30;
          v23 += 4;
        }

        v29 += 4;
      }

      while (v29 != v25);
    }

    v25 = v23 + 4;
  }

  if (v22)
  {
    v33 = v90;
    v32 = (v90 + 4 * v24);
  }

  else
  {
    v32 = &v90 + 4 * v24;
    v33 = &v90;
  }

  if (v25 != v32)
  {
    v34 = v32 - v25;
    v35 = ((v25 - v33) >> 2) + ((v32 - v25) >> 2);
    memmove(v25, &v33[4 * v35], 4 * (v24 - v35));
    v22 = v89 - (v34 >> 1);
    v89 = v22;
  }

  v36 = a1[7];
  if ((*(v36 + 8) & 0xFFFFFFF) != 0)
  {
    if (v82 != a3)
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

  if (v22)
  {
    v37 = v90;
  }

  else
  {
    v37 = &v90;
  }

  if ((v22 & 0x7FFFFFFFFFFFFFFELL) == 0)
  {
    v47 = 0;
    goto LABEL_71;
  }

  v38 = 0;
  v39 = v22 >> 1;
  v40 = *(v36 + 24);
  v41 = 4 * (v22 >> 1);
  while (1)
  {
    v43 = *v37;
    v44 = *(v40 + ((*v37 >> 3) & 0x1FFFFFFFFFFFFFF8));
    if (((v44 >> *v37) & 1) == 0)
    {
      break;
    }

LABEL_52:
    ++v37;
    v41 -= 4;
    if (!v41)
    {
      if (v22)
      {
        v46 = v90;
      }

      else
      {
        v46 = &v90;
      }

      v47 = v38;
      v48 = 6;
      if (v22)
      {
        v48 = *(&v90 + 1);
      }

      if (v47 > v39)
      {
        if (v48 < v47)
        {
          v49 = 2 * v48;
          if (v49 <= v47)
          {
            v50 = v47;
          }

          else
          {
            v50 = v49;
          }

          if (!(v50 >> 62))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        bzero(v46 + 4 * v39, 4 * (v47 - v39));
        v89 = v89 & 1 | (2 * v47);
        if (v82 != a3)
        {
LABEL_73:
          v51 = v80;
          if (v80 == -1)
          {
            v51 = -1;
            v54 = v89;
            if (v89 < 2)
            {
              goto LABEL_77;
            }
          }

          else
          {
            v52 = *(a1[8] + 152);
            v53 = *(v52 + 24 * v80);
            if (!(v53 + *(v52 + 24 * (v80 ^ 1))))
            {
              v81 += v53;
              v51 = -1;
              v80 = -1;
            }

            v54 = v89;
            if (v89 < 2)
            {
LABEL_77:
              if (v51 != -1)
              {
                goto LABEL_78;
              }

              goto LABEL_106;
            }
          }

          v55 = a1[29];
          v78 = (v55 - a1[28]) >> 6;
          *&v83 = __PAIR64__(a3, v82);
          *(&v83 + 1) = v81;
          v84 = v51;
          v85 = 0;
          if (v54)
          {
            absl::lts_20240722::inlined_vector_internal::Storage<operations_research::sat::Literal,6ul,std::allocator<operations_research::sat::Literal>>::InitFrom(&v85, &v89);
            v55 = a1[29];
            v58 = a1[30];
            v88 = 0;
            if (v55 < v58)
            {
              goto LABEL_82;
            }
          }

          else
          {
            v85 = v54;
            *__p = v90;
            v87 = v91;
            v88 = 0;
            if (v55 < a1[30])
            {
LABEL_82:
              v56 = v83;
              *(v55 + 16) = v84;
              *v55 = v56;
              *(v55 + 24) = 0;
              *(v55 + 24) = v85;
              v57 = *__p;
              *(v55 + 48) = v87;
              *(v55 + 32) = v57;
              v85 = 0;
              *(v55 + 56) = v88;
              a1[29] = v55 + 64;
              goto LABEL_86;
            }
          }

          v59 = std::vector<operations_research::sat::PrecedencesPropagator::ArcInfo>::__emplace_back_slow_path<operations_research::sat::PrecedencesPropagator::ArcInfo>(a1 + 28, &v83);
          v60 = v85;
          a1[29] = v59;
          if (v60)
          {
            operator delete(__p[0]);
          }

LABEL_86:
          v61 = a1[25];
          v62 = (v61 + 32 * v82);
          v64 = v62 + 1;
          v63 = *v62;
          if (*v62)
          {
            v64 = v62[1];
            v65 = v62[2];
          }

          else
          {
            v65 = 6;
          }

          if (v63 >> 1 == v65)
          {
            absl::lts_20240722::inlined_vector_internal::Storage<operations_research::sat::Literal,6ul,std::allocator<operations_research::sat::Literal>>::EmplaceBackSlow<operations_research::sat::Literal const&>(v62);
          }

          *(v64 + (v63 >> 1)) = v78;
          *v62 = v63 + 2;
          v66 = (v61 + ((32 * a3) ^ 0x20));
          v68 = v66 + 1;
          v67 = *v66;
          if (*v66)
          {
            v68 = v66[1];
            v69 = v66[2];
          }

          else
          {
            v69 = 6;
          }

          if (v67 >> 1 == v69)
          {
            absl::lts_20240722::inlined_vector_internal::Storage<operations_research::sat::Literal,6ul,std::allocator<operations_research::sat::Literal>>::EmplaceBackSlow<operations_research::sat::Literal const&>(v66);
          }

          *(v68 + (v67 >> 1)) = v78;
          *v66 = v67 + 2;
          if (v80 != -1)
          {
            v74 = (a1[25] + 32 * v80);
            v76 = v74 + 1;
            v75 = *v74;
            if (*v74)
            {
              v76 = v74[1];
              v77 = v74[2];
            }

            else
            {
              v77 = 6;
            }

            if (v75 >> 1 == v77)
            {
              absl::lts_20240722::inlined_vector_internal::Storage<operations_research::sat::Literal,6ul,std::allocator<operations_research::sat::Literal>>::EmplaceBackSlow<operations_research::sat::Literal const&>(v74);
            }

            *(v76 + (v75 >> 1)) = v78;
            *v74 = v75 + 2;
          }

          if (v80 != -1)
          {
LABEL_78:
            operator new();
          }

LABEL_106:
          operator new();
        }

LABEL_72:
        if (dword_27E25D228 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::sat::PrecedencesPropagator::AddArc(operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,absl::lts_20240722::Span<operations_research::sat::Literal const>)::$_0::operator() const(void)::site, dword_27E25D228))
        {
          absl::lts_20240722::log_internal::LogMessage::LogMessage(&v83, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/precedences.cc", 649);
          v70 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(&v83, 1);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v70, "Self arc! This could be presolved. ", 0x23uLL);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v70, "var:", 4uLL);
          v71 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,0>(v70, &v82);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v71, " offset:", 8uLL);
          v72 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongInt64<operations_research::sat::Coefficient_integer_tag_>,0>(v71, &v81);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v72, " offset_var:", 0xCuLL);
          v73 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,0>(v72, &v80);
          absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v73, " conditioned_by:", 0x10uLL);
          absl::lts_20240722::log_internal::LogMessage::operator<<<absl::lts_20240722::Span<operations_research::sat::Literal const>,0>(v73, v79);
          absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v83);
        }

        goto LABEL_73;
      }

LABEL_71:
      v89 = v22 & 1 | (2 * v47);
      if (v82 != a3)
      {
        goto LABEL_73;
      }

      goto LABEL_72;
    }
  }

  if (((v44 >> (v43 & 0x3F ^ 1u)) & 1) == 0)
  {
    v42 = v90;
    if ((v22 & 1) == 0)
    {
      v42 = &v90;
    }

    *(v42 + v38++) = v43;
    goto LABEL_52;
  }

  if (v89)
  {
    operator delete(v90);
  }

  v45 = *MEMORY[0x277D85DE8];
}

void sub_23CC8CE88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, char a26, void *a27)
{
  if ((*(v27 - 128) & 1) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(*(v27 - 120));
  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::PrecedencesPropagator::DisassembleSubtree(void *a1, int a2, int a3, void *a4)
{
  v28 = a2;
  a1[59] = a1[58];
  std::vector<int>::push_back[abi:ne200100]((a1 + 58), &v28);
  v7 = a1[58];
  v8 = a1[59];
  while (v7 != v8)
  {
    v9 = *(v8 - 1);
    v8 -= 4;
    a1[59] = v8;
    v10 = (a1[19] + 32 * v9);
    v13 = *v10;
    v12 = (v10 + 1);
    v11 = v13;
    if (v13)
    {
      v12 = *v12;
    }

    if ((v11 & 0x7FFFFFFFFFFFFFFELL) != 0)
    {
      v14 = 4 * (v11 >> 1);
      while (1)
      {
        v15 = a1[22] + (*v12 << 6);
        if (*(v15 + 56) == 1)
        {
          *(v15 + 56) = 0;
          v16 = *(v15 + 4);
          if (v16 == a3)
          {
            return 1;
          }

          *(*a4 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
          v17 = a1[60];
          if (v8 < v17)
          {
            *v8 = v16;
            v8 += 4;
          }

          else
          {
            v18 = a1[58];
            v19 = v8 - v18;
            v20 = (v8 - v18) >> 2;
            v21 = v20 + 1;
            if ((v20 + 1) >> 62)
            {
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            v22 = v17 - v18;
            if (v22 >> 1 > v21)
            {
              v21 = v22 >> 1;
            }

            if (v22 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v23 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v23 = v21;
            }

            if (v23)
            {
              if (!(v23 >> 62))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v24 = v20;
            v25 = (4 * v20);
            v26 = &v25[-v24];
            *v25 = v16;
            v8 = (v25 + 1);
            memcpy(v26, v18, v19);
            a1[58] = v26;
            a1[59] = v8;
            a1[60] = 0;
            if (v18)
            {
              operator delete(v18);
            }
          }

          a1[59] = v8;
        }

        ++v12;
        v14 -= 4;
        if (!v14)
        {
          v7 = a1[58];
          break;
        }
      }
    }
  }

  return 0;
}

void operations_research::sat::PrecedencesPropagator::AnalyzePositiveCycle(void *a1, int a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  a4[1] = *a4;
  a5[1] = *a5;
  a6[1] = *a6;
  v6 = a1[20] - a1[19];
  v7 = *(a1[22] + (a2 << 6) + 4);
  v8 = a2;
  operator new();
}

void sub_23CC8D608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (v17)
  {
    v18 = a1;
    operator delete(v17);
    a1 = v18;
  }

  _Unwind_Resume(a1);
}

uint64_t absl::lts_20240722::Cleanup<absl::lts_20240722::cleanup_internal::Tag,operations_research::sat::PrecedencesPropagator::BellmanFordTarjan(operations_research::sat::Trail *)::$_0>::~Cleanup(uint64_t result)
{
  if (*result == 1)
  {
    v1 = *(result + 8);
    v2 = v1[16];
    v3 = v1[17];
    if (v2 != v3)
    {
      v4 = (v1[20] - v1[19]) >> 5;
      do
      {
        v5 = *v2;
        if (v5 < v4)
        {
          v6 = v1[55];
          v7 = *(v6 + 4 * v5);
          if (v7 != -1)
          {
            *(v1[22] + (v7 << 6) + 56) = 0;
            *(v6 + 4 * v5) = -1;
            *(v1[52] + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v5);
          }
        }

        ++v2;
      }

      while (v2 != v3);
    }

    *result = 0;
  }

  return result;
}

void operations_research::sat::GreaterThanAtLeastOneOfDetector::Add(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v21) = a2;
  *(&v21 + 1) = a3;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = a7;
  v26 = a8;
  if (a3 != -1 && (a3 & 1) != 0)
  {
    DWORD2(v21) = a3 & 0xFFFFFFFE;
    v22 = -a4;
  }

  if (a5 != -1 && (a5 & 1) != 0)
  {
    LODWORD(v23) = a5 & 0xFFFFFFFE;
    v24 = -a6;
  }

  v20 = -1227133513 * ((a1[1] - *a1) >> 3);
  std::vector<operations_research::sat::GreaterThanAtLeastOneOfDetector::Relation>::push_back[abi:ne200100](a1, &v21);
  v11 = a1[3];
  v10 = a1[4];
  v12 = (v10 - v11) >> 3;
  v13 = 0xAAAAAAAAAAAAAAABLL * v12;
  v14 = a2 << 32;
  if (a2 >= -1431655765 * v12)
  {
    v15 = (v14 + 0x100000000) >> 32;
    if (v15 <= v13)
    {
      if (v15 < v13)
      {
        v16 = v11 + 24 * v15;
        if (v10 != v16)
        {
          v17 = a1[4];
          do
          {
            v19 = *(v17 - 24);
            v17 -= 24;
            v18 = v19;
            if (v19)
            {
              *(v10 - 16) = v18;
              operator delete(v18);
            }

            v10 = v17;
          }

          while (v17 != v16);
        }

        a1[4] = v16;
      }
    }

    else
    {
      std::vector<std::vector<int>>::__append((a1 + 3), v15 - v13);
    }
  }

  std::vector<int>::push_back[abi:ne200100](a1[3] + 24 * SHIDWORD(v14), &v20);
}

void std::vector<operations_research::sat::GreaterThanAtLeastOneOfDetector::Relation>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    v6 = a2[1];
    v7 = a2[2];
    *(v3 + 48) = *(a2 + 6);
    *(v3 + 16) = v6;
    *(v3 + 32) = v7;
    *v3 = v5;
    v8 = v3 + 56;
LABEL_3:
    *(a1 + 8) = v8;
    return;
  }

  v9 = *a1;
  v10 = v3 - *a1;
  v11 = 0x6DB6DB6DB6DB6DB7 * (v10 >> 3) + 1;
  if (v11 > 0x492492492492492)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v12 = 0x6DB6DB6DB6DB6DB7 * ((v4 - v9) >> 3);
  if (2 * v12 > v11)
  {
    v11 = 2 * v12;
  }

  if (v12 >= 0x249249249249249)
  {
    v13 = 0x492492492492492;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    if (v13 <= 0x492492492492492)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v14 = 8 * (v10 >> 3);
  v15 = a2[1];
  *v14 = *a2;
  *(v14 + 16) = v15;
  *(v14 + 32) = a2[2];
  *(v14 + 48) = *(a2 + 6);
  v8 = v14 + 56;
  v16 = v14 - v10;
  memcpy((v14 - v10), v9, v10);
  *a1 = v16;
  *(a1 + 8) = v8;
  *(a1 + 16) = 0;
  if (!v9)
  {
    goto LABEL_3;
  }

  operator delete(v9);
  *(a1 + 8) = v8;
}

BOOL operations_research::sat::GreaterThanAtLeastOneOfDetector::AddRelationFromIndices(void *a1, int a2, unsigned int *a3, uint64_t a4, int *a5, uint64_t a6, void *a7)
{
  LODWORD(v10) = a2;
  v73 = xmmword_23CE306D0;
  v59 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a7);
  if ((a6 & 0x3FFFFFFFFFFFFFFFLL) == 0)
  {
    __srca = 0;
    v40 = a4;
    if ((a4 & 0x3FFFFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_52;
    }

LABEL_70:
    v56 = *(&v73 + 1);
    if (*(&v73 + 1) < 4uLL)
    {
      goto LABEL_72;
    }

LABEL_71:
    operator new();
  }

  v11 = 0;
  v64 = 0;
  v65 = 0;
  v61 = *(*(v59 + 152) + 24 * v10);
  v12 = v10 & 0xFFFFFFFE;
  v66 = v10 & 0xFFFFFFFE;
  v13 = 4 * a6;
  v14 = 0;
  v60 = v10;
  do
  {
    v15 = *a1 + 56 * *a5;
    v17 = *(v15 + 16);
    v16 = *(v15 + 32);
    v18 = *v15;
    v72 = *(v15 + 48);
    *&v71[16] = v17;
    *&v71[32] = v16;
    *v71 = v18;
    v19 = DWORD2(v18);
    if (v66 != DWORD2(v18))
    {
      v20 = *(v15 + 8);
      *&v71[8] = *(v15 + 24);
      *&v71[24] = v20;
      v19 = *&v71[8];
    }

    v68 = v12;
    if (v19 != v12)
    {
      absl::lts_20240722::log_internal::MakeCheckOpString<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_> const&,operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_> const&>(&v71[8], &v68, "r.a.var == PositiveVariable(var)");
    }

    if (((v10 & 1) == 0) != (*&v71[16] == 1))
    {
      if (v72 > 0x7FFFFFFFFFFFFFFDLL)
      {
        goto LABEL_4;
      }

      v21 = -v72;
      v22 = *&v71[24] ^ (*&v71[32] >> 63);
      if (*&v71[32] >= 0)
      {
        v23 = *&v71[32];
      }

      else
      {
        v23 = -*&v71[32];
      }

      if (v11 < v65)
      {
        goto LABEL_28;
      }

      v24 = v14;
      v25 = v11 - v14;
      v26 = 0xAAAAAAAAAAAAAAABLL * (v25 >> 3);
      v27 = v26 + 1;
      __src = v24;
      if (v26 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      v28 = 0xAAAAAAAAAAAAAAABLL * ((v65 - v24) >> 3);
      if (2 * v28 > v27)
      {
        v27 = 2 * v28;
      }

      if (v28 >= 0x555555555555555)
      {
        v29 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v29 = v27;
      }

      if (v29)
      {
        if (v29 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }
    }

    else
    {
      v21 = *&v71[40];
      if (*&v71[40] < 0x8000000000000003)
      {
        goto LABEL_4;
      }

      v22 = *&v71[24] ^ (*&v71[32] > 0);
      if (*&v71[32] >= 0)
      {
        v23 = *&v71[32];
      }

      else
      {
        v23 = -*&v71[32];
      }

      if (v11 < v65)
      {
LABEL_28:
        *v11 = v22;
        *(v11 + 8) = v23;
        *(v11 + 16) = v21;
        v11 += 24;
        v30 = v11 - 24;
        v31 = *(v11 - 24);
        v32 = *(v11 - 8);
        if (v31 == -1)
        {
          goto LABEL_30;
        }

        goto LABEL_29;
      }

      v33 = v14;
      v25 = v11 - v14;
      v26 = 0xAAAAAAAAAAAAAAABLL * (v25 >> 3);
      v34 = v26 + 1;
      __src = v33;
      if (v26 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      v35 = 0xAAAAAAAAAAAAAAABLL * ((v65 - v33) >> 3);
      if (2 * v35 > v34)
      {
        v34 = 2 * v35;
      }

      if (v35 >= 0x555555555555555)
      {
        v29 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v29 = v34;
      }

      if (v29)
      {
        if (v29 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }
    }

    v38 = 24 * v26;
    *v38 = v22;
    v65 = 24 * v29;
    *(v38 + 8) = v23;
    *(v38 + 16) = v21;
    v11 = 24 * v26 + 24;
    v39 = v38 - v25;
    memcpy((v38 - v25), __src, v25);
    if (__src)
    {
      operator delete(__src);
    }

    v14 = v39;
    LOBYTE(v10) = v60;
    v30 = v11 - 24;
    v31 = *(v11 - 24);
    v32 = *(v11 - 8);
    if (v31 == -1)
    {
      goto LABEL_30;
    }

LABEL_29:
    v32 -= *(*(v59 + 152) + 24 * (v31 ^ 1)) * *(v11 - 16);
LABEL_30:
    if (v61 >= v32)
    {
      v11 = v30;
    }

    else
    {
      v10 = v14;
      v36 = v64;
      v37 = v64 >> 2;
      if (((v64 >> 2) + 1) >> 62)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (v64 >> 2 != -1)
      {
        if (!(((v64 >> 2) + 1) >> 62))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      *(4 * v37) = *v71;
      v64 = 4 * v37 + 4;
      memcpy(0, 0, v36);
      v14 = v10;
      LOBYTE(v10) = v60;
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>::find_or_prepare_insert<operations_research::sat::Literal>(&v73, v71, &v68);
      if (v70 == 1)
      {
        *v69 = *v71;
      }
    }

LABEL_4:
    ++a5;
    v13 -= 4;
  }

  while (v13);
  __srca = v14;
  v40 = a4;
  if ((a4 & 0x3FFFFFFFFFFFFFFFLL) == 0)
  {
    goto LABEL_70;
  }

LABEL_52:
  v41 = &a3[v40];
  do
  {
    v47 = *a3;
    if (v73 > 1)
    {
      v45 = 0;
      _X11 = v74;
      __asm { PRFM            #4, [X11] }

      v54 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v47) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v47));
      v46 = (v54 >> 7) ^ (v74 >> 12);
      v55 = vdup_n_s8(v54 & 0x7F);
      while (1)
      {
        v42 = v46 & v73;
        v43 = *(v74 + v42);
        v44 = vceq_s8(v43, v55);
        if (v44)
        {
          break;
        }

LABEL_56:
        if (vceq_s8(v43, 0x8080808080808080))
        {
          goto LABEL_63;
        }

        v45 += 8;
        v46 = v45 + v42;
      }

      while (*(v75 + 4 * ((v42 + (__clz(__rbit64(v44)) >> 3)) & v73)) != v47)
      {
        v44 &= ((v44 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v44)
        {
          goto LABEL_56;
        }
      }
    }

    else if (*(&v73 + 1) < 2uLL || v74 != v47)
    {
LABEL_63:
      operator new();
    }

    ++a3;
  }

  while (a3 != v41);
  v56 = *(&v73 + 1);
  if (*(&v73 + 1) >= 4uLL)
  {
    goto LABEL_71;
  }

LABEL_72:
  if (v73 >= 2)
  {
    operator delete((v74 - (BYTE8(v73) & 1) - 8));
  }

  if (__srca)
  {
    operator delete(__srca);
  }

  return v56 > 3;
}

void sub_23CC8E1B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19)
{
  MEMORY[0x23EED9460](v20, 0x10A1C4030526E8DLL);
  if (v19)
  {
    operator delete(v19);
  }

  if (*(v21 - 160) >= 2uLL)
  {
    operator delete((*(v21 - 144) - (*(v21 - 152) & 1) - 8));
    v23 = __p;
    if (!__p)
    {
LABEL_5:
      if (!a19)
      {
        goto LABEL_6;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v23 = __p;
    if (!__p)
    {
      goto LABEL_5;
    }
  }

  operator delete(v23);
  if (!a19)
  {
LABEL_6:
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(a19);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::GreaterThanAtLeastOneOfDetector::AddGreaterThanAtLeastOneOfConstraintsFromClause(void *a1, signed int *a2, unint64_t a3, void *a4)
{
  v7 = *(operations_research::sat::Model::GetOrCreate<operations_research::sat::Trail>(a4) + 8) & 0xFFFFFFF;
  if (v7)
  {
    operations_research::sat::GreaterThanAtLeastOneOfDetector::AddGreaterThanAtLeastOneOfConstraintsFromClause(v7);
  }

  if (a3 < 2 || (a3 & 0x3FFFFFFFFFFFFFFFLL) == 0)
  {
    return 0;
  }

  v8 = 0;
  v9 = a2;
  v33 = &a2[a3];
  v34 = a1;
  do
  {
    v35 = v9;
    v10 = *v9;
    v11 = a1[3];
    if (v10 < (-1431655765 * ((a1[4] - v11) >> 3)))
    {
      v12 = (v11 + 24 * v10);
      v14 = *v12;
      v13 = v12[1];
      if (*v12 != v13)
      {
        while (1)
        {
          v15 = *v14;
          v16 = *a1 + 56 * *v14;
          v17 = *(v16 + 8);
          if (v17 == -1)
          {
            goto LABEL_14;
          }

          v18 = *(v16 + 16);
          if (v18 < 0)
          {
            v18 = -v18;
          }

          if (v18 == 1)
          {
            v23 = v8;
            v24 = v8 >> 3;
            if ((v24 + 1) >> 61)
            {
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            if (v24 != -1)
            {
              if (!((v24 + 1) >> 61))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            MEMORY[0xFFFFFFFFFFFFFFF8] = v17 | (v15 << 32);
            v8 = 0;
            memcpy(0, 0, v23);
            a1 = v34;
            v19 = *(v16 + 24);
            if (v19 == -1)
            {
              goto LABEL_9;
            }

LABEL_15:
            v20 = *(v16 + 32);
            if (v20 < 0)
            {
              v20 = -v20;
            }

            if (v20 != 1)
            {
              goto LABEL_9;
            }

            v21 = v8;
            v22 = v8 >> 3;
            if (((v8 >> 3) + 1) >> 61)
            {
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            if (v8 >> 3 != -1)
            {
              if (!(((v8 >> 3) + 1) >> 61))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            *(8 * v22) = v19 | (v15 << 32);
            v8 = 8 * v22 + 8;
            memcpy(0, 0, v21);
            a1 = v34;
            if (++v14 == v13)
            {
              break;
            }
          }

          else
          {
LABEL_14:
            v19 = *(v16 + 24);
            if (v19 != -1)
            {
              goto LABEL_15;
            }

LABEL_9:
            if (++v14 == v13)
            {
              break;
            }
          }
        }
      }
    }

    v9 = v35 + 1;
  }

  while (v35 + 1 != v33);
  if ((v8 >> 3) < 2)
  {
    return 0;
  }

  if (v8 >> 3 < 1)
  {
    v31 = 0;
    v27 = 0;
  }

  else
  {
    v26 = MEMORY[0x277D826F0];
    v27 = v8 >> 3;
    while (1)
    {
      v28 = operator new(8 * v27, v26);
      if (v28)
      {
        break;
      }

      v29 = v27 >> 1;
      v30 = v27 > 1;
      v27 >>= 1;
      if (!v30)
      {
        v31 = 0;
        v27 = v29;
        goto LABEL_40;
      }
    }

    v31 = v28;
  }

LABEL_40:
  std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,int> *>>(0, v8, v36, v8 >> 3, v31, v27);
  if (v31)
  {
    operator delete(v31);
  }

  v32 = v8 >> 3;
  do
  {
    if (v32)
    {
      operator new();
    }

    v32 = v8 >> 3;
  }

  while (v8 >> 3);
  operator delete(0);
  return 0;
}

void sub_23CC8E918(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    operator delete(v2);
    if (!v1)
    {
      goto LABEL_5;
    }
  }

  else if (!v1)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

  operator delete(v1);
  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::GreaterThanAtLeastOneOfDetector::AddGreaterThanAtLeastOneOfConstraintsWithClauseAutoDetection(operations_research::sat::GreaterThanAtLeastOneOfDetector *this, operations_research::sat::Model *a2)
{
  v4 = operations_research::sat::Model::GetOrCreate<operations_research::TimeLimit>(a2);
  v5 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a2);
  v6 = v5;
  v76 = 0;
  v77 = 0;
  v78 = 0;
  LODWORD(v79) = 0;
  v7 = *this;
  v70 = v4;
  if (*(this + 1) == *this)
  {
    v29 = 0;
    v30 = 0;
  }

  else
  {
    v8 = v5;
    v9 = 0;
    do
    {
      v10 = v7 + 56 * v9;
      v11 = *(v10 + 8);
      if (v11 != -1)
      {
        v12 = *(v10 + 16);
        if (v12 < 0)
        {
          v12 = -v12;
        }

        if (v12 == 1)
        {
          v13 = v77;
          v14 = 0xAAAAAAAAAAAAAAABLL * ((v77 - v76) >> 3);
          if (v11 >= v14)
          {
            v15 = v11 + 1;
            if (v15 <= v14)
            {
              if (v15 < v14)
              {
                v16 = v76 + 24 * v15;
                if (v77 != v16)
                {
                  v17 = v77;
                  do
                  {
                    v19 = *(v17 - 3);
                    v17 -= 24;
                    v18 = v19;
                    if (v19)
                    {
                      *(v13 - 2) = v18;
                      operator delete(v18);
                    }

                    v13 = v17;
                  }

                  while (v17 != v16);
                }

                v77 = v16;
              }
            }

            else
            {
              std::vector<std::vector<int>>::__append(&v76, v15 - v14);
            }
          }

          std::vector<int>::push_back[abi:ne200100](v76 + 24 * *(v10 + 8), &v79);
        }
      }

      v20 = *(v10 + 24);
      if (v20 != -1)
      {
        v21 = *(v10 + 32);
        if (v21 < 0)
        {
          v21 = -v21;
        }

        if (v21 == 1)
        {
          v22 = v77;
          v23 = 0xAAAAAAAAAAAAAAABLL * ((v77 - v76) >> 3);
          if (v20 >= v23)
          {
            v24 = v20 + 1;
            if (v24 > v23)
            {
              std::vector<std::vector<int>>::__append(&v76, v24 - v23);
            }

            else if (v24 < v23)
            {
              v25 = v76 + 24 * v24;
              if (v77 != v25)
              {
                v26 = v77;
                do
                {
                  v28 = *(v26 - 3);
                  v26 -= 24;
                  v27 = v28;
                  if (v28)
                  {
                    *(v22 - 2) = v27;
                    operator delete(v27);
                  }

                  v22 = v26;
                }

                while (v26 != v25);
              }

              v77 = v25;
            }
          }

          std::vector<int>::push_back[abi:ne200100](v76 + 24 * *(v10 + 24), &v79);
        }
      }

      LODWORD(v79) = v79 + 1;
      v9 = v79;
      v7 = *this;
    }

    while (0x6DB6DB6DB6DB6DB7 * ((*(this + 1) - *this) >> 3) > v79);
    v29 = v76;
    v30 = v77;
    v6 = v8;
    v4 = v70;
  }

  if ((-1431655765 * ((v30 - v29) >> 3)) >= 1)
  {
    v31 = 0;
    v32 = 0;
    v68 = v6;
    while (1)
    {
      if (*&v29[24 * v31 + 8] - *&v29[24 * v31] < 5uLL)
      {
        v33 = v32;
        goto LABEL_39;
      }

      if (operations_research::TimeLimit::LimitReached(v4))
      {
        goto LABEL_91;
      }

      operations_research::sat::SatSolver::Backtrack(v6, 0);
      if (*(v6 + 528))
      {
        goto LABEL_91;
      }

      v34 = v76 + 24 * v31;
      v35 = *v34;
      v36 = *(v34 + 1);
      while (1)
      {
        if (v35 == v36)
        {
          __p = 0;
          v39 = 0;
          goto LABEL_51;
        }

        v37 = *(*this + 56 * *v35);
        if (((*(*(*(v6 + 216) + 24) + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v37 & 0x3F ^ 1)) & 1) == 0)
        {
          break;
        }

LABEL_44:
        ++v35;
      }

      v38 = operations_research::sat::SatSolver::EnqueueDecisionAndBacktrackOnConflict(v6, v37 ^ 1, 0);
      if (v38)
      {
        break;
      }

      operations_research::sat::SatSolver::GetLastIncompatibleDecisions(v6, &v79);
      v39 = v80;
      __p = v79;
      if (v79 != v80)
      {
        v54 = v80 - v79 - 4;
        v55 = v79;
        if (v54 <= 0x1B)
        {
          goto LABEL_102;
        }

        v56 = (v54 >> 2) + 1;
        v55 = (v79 + 4 * (v56 & 0x7FFFFFFFFFFFFFF8));
        v57 = v79 + 1;
        v58 = v56 & 0x7FFFFFFFFFFFFFF8;
        v59.i64[0] = 0x100000001;
        v59.i64[1] = 0x100000001;
        do
        {
          v60 = veorq_s8(*v57, v59);
          v57[-1] = veorq_s8(v57[-1], v59);
          *v57 = v60;
          v57 += 2;
          v58 -= 8;
        }

        while (v58);
        if (v56 != (v56 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_102:
          do
          {
            v55->i32[0] ^= 1u;
            v55 = (v55 + 4);
          }

          while (v55 != v39);
        }
      }

LABEL_51:
      operations_research::sat::SatSolver::Backtrack(v6, 0);
      v71 = (v39 - __p) >> 2;
      if (v71 >= 2)
      {
        v69 = v32;
        v73 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::sat::Literal,std::less<operations_research::sat::Literal>,std::allocator<operations_research::sat::Literal>,256,false>>::EmptyNode(void)::empty_node;
        v74 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::sat::Literal,std::less<operations_research::sat::Literal>,std::allocator<operations_research::sat::Literal>,256,false>>::EmptyNode(void)::empty_node;
        v75 = 0;
        if (__p != v39)
        {
          v41 = __p;
          do
          {
            absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::sat::Literal,std::less<operations_research::sat::Literal>,std::allocator<operations_research::sat::Literal>,256,false>>::insert_hint_unique<operations_research::sat::Literal,operations_research::sat::Literal&>(&v73, v74, v74[10], v41, v41, &v79);
            ++v41;
          }

          while (v41 != v39);
        }

        v42 = v76 + 24 * v31;
        v44 = *v42;
        v43 = *(v42 + 1);
        if (*v42 != v43)
        {
          do
          {
            v45 = *(*this + 56 * *v44);
            v46 = v73;
            v47 = *(v73 + 10);
            if (!*(v73 + 10))
            {
              goto LABEL_67;
            }

LABEL_62:
            v48 = 0;
            do
            {
              v49 = (v47 + v48) >> 1;
              if (*&v46[4 * v49 + 12] < v45)
              {
                v48 = v49 + 1;
              }

              else
              {
                v47 = (v47 + v48) >> 1;
              }
            }

            while (v48 != v47);
LABEL_67:
            while (!v46[11])
            {
              v46 = *&v46[8 * v47 + 256];
              v47 = v46[10];
              if (v46[10])
              {
                goto LABEL_62;
              }
            }

            while (v47 == v46[10])
            {
              LODWORD(v47) = v46[8];
              v46 = *v46;
              if (v46[11])
              {
                v50 = v74;
LABEL_74:
                v50[10];
                goto LABEL_60;
              }
            }

            v50 = v74;
            if (v45 < *&v46[4 * v47 + 12])
            {
              goto LABEL_74;
            }

            if (v46 != v74 || v47 != v74[10])
            {
              operator new();
            }

LABEL_60:
            ++v44;
          }

          while (v44 != v43);
        }

        v52 = operations_research::sat::GreaterThanAtLeastOneOfDetector::AddRelationFromIndices(this, v31, __p, v71, 0, 0, a2);
        v53 = operations_research::sat::GreaterThanAtLeastOneOfDetector::AddRelationFromIndices(this, v31 ^ 1, __p, v71, 0, 0, a2);
        absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::sat::Literal,std::less<operations_research::sat::Literal>,std::allocator<operations_research::sat::Literal>,256,false>>::clear(&v73);
        v33 = (v69 + v52 + v53);
        v6 = v68;
        v4 = v70;
        v40 = __p;
        if (__p)
        {
LABEL_53:
          operator delete(v40);
        }
      }

      else
      {
        v33 = v32;
        v40 = __p;
        if (__p)
        {
          goto LABEL_53;
        }
      }

LABEL_39:
      ++v31;
      v29 = v76;
      v32 = v33;
      if (v31 >= (-1431655765 * ((v77 - v76) >> 3)))
      {
        goto LABEL_90;
      }
    }

    if (v38 == 1)
    {
      goto LABEL_91;
    }

    goto LABEL_44;
  }

  v33 = 0;
LABEL_90:
  operations_research::sat::SatSolver::Backtrack(v6, 0);
  v32 = v33;
LABEL_91:
  v61 = v76;
  if (v76)
  {
    v62 = v77;
    v63 = v76;
    if (v77 != v76)
    {
      v64 = v77;
      do
      {
        v66 = *(v64 - 3);
        v64 -= 24;
        v65 = v66;
        if (v66)
        {
          *(v62 - 2) = v65;
          operator delete(v65);
        }

        v62 = v64;
      }

      while (v64 != v61);
      v63 = v76;
    }

    v77 = v61;
    operator delete(v63);
  }

  return v32;
}

void sub_23CC8F0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::sat::Literal,std::less<operations_research::sat::Literal>,std::allocator<operations_research::sat::Literal>,256,false>>::clear(va);
  JUMPOUT(0x23CC8F104);
}

absl::lts_20240722::numbers_internal *operations_research::sat::GreaterThanAtLeastOneOfDetector::AddGreaterThanAtLeastOneOfConstraints(operations_research::sat::GreaterThanAtLeastOneOfDetector *this, operations_research::sat::Model *a2, char a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = operations_research::sat::Model::GetOrCreate<operations_research::TimeLimit>(a2);
  v7 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a2);
  v8 = operations_research::sat::Model::GetOrCreate<operations_research::sat::ClauseManager>(a2);
  v10 = operations_research::sat::Model::GetOrCreate<operations_research::SolverLogger>(a2);
  if (*v10 != 1)
  {
    goto LABEL_3;
  }

  v36 = "[Precedences] num_relations=";
  v37 = 28;
  v11 = absl::lts_20240722::numbers_internal::FastIntToBuffer(0x6DB6DB6DB6DB6DB7 * ((*(this + 1) - *this) >> 3), v35, v9);
  v33 = v35;
  v34 = v11 - v35;
  v31 = " num_clauses=";
  v32 = 13;
  v13 = absl::lts_20240722::numbers_internal::FastIntToBuffer((*(v8 + 288) - *(v8 + 280)) >> 3, &v30[0].__r_.__value_.__r.__words[2], v12);
  v30[0].__r_.__value_.__r.__words[0] = &v30[0].__r_.__value_.__r.__words[2];
  v30[0].__r_.__value_.__l.__size_ = v13 - &v30[0].__r_.__value_.__r.__words[2];
  absl::lts_20240722::StrCat(&v36, &v33, &v31, v30, &__p);
  operations_research::SolverLogger::LogInfo(v10, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/precedences.cc", 1326, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (a3)
    {
      goto LABEL_13;
    }
  }

  else
  {
LABEL_3:
    if (a3)
    {
LABEL_13:
      v16 = operations_research::sat::GreaterThanAtLeastOneOfDetector::AddGreaterThanAtLeastOneOfConstraintsWithClauseAutoDetection(this, a2);
      goto LABEL_14;
    }
  }

  v15 = *(v8 + 280);
  v14 = *(v8 + 288);
  if ((v14 - v15) > 0x7A11FF)
  {
    goto LABEL_13;
  }

  if (v15 == v14)
  {
    v16 = 0;
    v18 = *(v7 + 16);
    if ((v18 - 1) <= 0xF423E)
    {
LABEL_29:
      v28 = 1;
      while ((operations_research::TimeLimit::LimitReached(v6) & 1) == 0 && (*(v7 + 528) & 1) == 0)
      {
        LODWORD(v36) = v28 - 1;
        HIDWORD(v36) = v28;
        v16 = (operations_research::sat::GreaterThanAtLeastOneOfDetector::AddGreaterThanAtLeastOneOfConstraintsFromClause(this, &v36, 2uLL, a2) + v16);
        v28 += 2;
        if (!--v18)
        {
          goto LABEL_14;
        }
      }

      goto LABEL_27;
    }

LABEL_14:
    if (v16 >= 1 && *v10 == 1)
    {
      v36 = "[Precedences] Added ";
      v37 = 20;
      v19 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v16, v35, v9);
      v33 = v35;
      v34 = v19 - v35;
      v31 = " GreaterThanAtLeastOneOf() constraints.";
      v32 = 39;
      absl::lts_20240722::StrCat(&v36, &v33, &v31, v30);
      operations_research::SolverLogger::LogInfo(v10, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/precedences.cc", 1374, v30);
      if (SHIBYTE(v30[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v30[0].__r_.__value_.__l.__data_);
      }
    }

    v20 = *this;
    *(this + 1) = 0;
    *(this + 2) = 0;
    *this = 0;
    if (v20)
    {
      operator delete(v20);
    }

    v22 = *(this + 3);
    v21 = *(this + 4);
    *(this + 3) = 0;
    *(this + 4) = 0;
    *(this + 5) = 0;
    if (v22)
    {
      if (v21 != v22)
      {
        v23 = v21;
        do
        {
          v25 = *(v23 - 3);
          v23 -= 24;
          v24 = v25;
          if (v25)
          {
            *(v21 - 2) = v24;
            operator delete(v24);
          }

          v21 = v23;
        }

        while (v23 != v22);
      }

      operator delete(v22);
    }

    goto LABEL_27;
  }

  v16 = 0;
  while (1)
  {
    v17 = *v15;
    if (operations_research::TimeLimit::LimitReached(v6) & 1) != 0 || (*(v7 + 528))
    {
      break;
    }

    v16 = (operations_research::sat::GreaterThanAtLeastOneOfDetector::AddGreaterThanAtLeastOneOfConstraintsFromClause(this, v17 + 1, *v17, a2) + v16);
    if (++v15 == v14)
    {
      v18 = *(v7 + 16);
      if ((v18 - 1) > 0xF423E)
      {
        goto LABEL_14;
      }

      goto LABEL_29;
    }
  }

LABEL_27:
  v26 = *MEMORY[0x277D85DE8];
  return v16;
}

void sub_23CC8F480(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::PrecedenceRelations::~PrecedenceRelations(operations_research::sat::PrecedenceRelations *this)
{
  operations_research::sat::PrecedenceRelations::~PrecedenceRelations(this);

  JUMPOUT(0x23EED9460);
}

{
  *this = &unk_284F440D8;
  v2 = *(this + 57);
  if (v2)
  {
    *(this + 58) = v2;
    operator delete(v2);
  }

  v3 = *(this + 54);
  if (v3)
  {
    *(this + 55) = v3;
    operator delete(v3);
  }

  v4 = *(this + 51);
  if (v4)
  {
    *(this + 52) = v4;
    operator delete(v4);
  }

  v5 = *(this + 48);
  if (v5)
  {
    *(this + 49) = v5;
    operator delete(v5);
  }

  v6 = *(this + 45);
  if (v6)
  {
    v7 = *(this + 46);
    v8 = *(this + 45);
    if (v7 != v6)
    {
      v9 = *(this + 46);
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
      v8 = *(this + 45);
    }

    *(this + 46) = v6;
    operator delete(v8);
  }

  v12 = *(this + 42);
  if (v12)
  {
    v13 = *(this + 43);
    v14 = *(this + 42);
    if (v13 != v12)
    {
      v15 = *(this + 43);
      do
      {
        v17 = *(v15 - 24);
        v15 -= 24;
        v16 = v17;
        if (v17)
        {
          *(v13 - 16) = v16;
          operator delete(v16);
        }

        v13 = v15;
      }

      while (v15 != v12);
      v14 = *(this + 42);
    }

    *(this + 43) = v12;
    operator delete(v14);
  }

  if (*(this + 38) >= 2uLL)
  {
    operator delete((*(this + 40) - (*(this + 39) & 1) - 8));
    if (*(this + 34) < 2uLL)
    {
LABEL_27:
      if (*(this + 30) < 2uLL)
      {
        goto LABEL_28;
      }

      goto LABEL_38;
    }
  }

  else if (*(this + 34) < 2uLL)
  {
    goto LABEL_27;
  }

  operator delete((*(this + 36) - (*(this + 35) & 1) - 8));
  if (*(this + 30) < 2uLL)
  {
LABEL_28:
    v18 = *(this + 27);
    if (!v18)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_38:
  operator delete((*(this + 32) - (*(this + 31) & 1) - 8));
  v18 = *(this + 27);
  if (v18)
  {
LABEL_29:
    *(this + 28) = v18;
    operator delete(v18);
  }

LABEL_30:
  v19 = *(this + 24);
  if (v19)
  {
    v20 = *(this + 25);
    v21 = *(this + 24);
    if (v20 != v19)
    {
      do
      {
        if (*(v20 - 24))
        {
          operator delete(*(v20 - 16));
        }

        v20 -= 48;
      }

      while (v20 != v19);
      v21 = *(this + 24);
    }

    *(this + 25) = v19;
    operator delete(v21);
  }

  v22 = *(this + 21);
  if (v22)
  {
    *(this + 22) = v22;
    operator delete(v22);
  }

  v23 = *(this + 17);
  if (v23)
  {
    *(this + 18) = v23;
    operator delete(v23);
  }

  *(this + 4) = &unk_284F3BF70;
  v24 = *(this + 14);
  if (v24)
  {
    *(this + 15) = v24;
    operator delete(v24);
  }

  v25 = *(this + 11);
  if (v25)
  {
    *(this + 12) = v25;
    operator delete(v25);
  }

  v26 = *(this + 8);
  if (v26)
  {
    *(this + 9) = v26;
    operator delete(v26);
  }
}

unint64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>::find_or_prepare_insert<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>@<X0>(unint64_t result@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  if (*result > 1uLL)
  {
    v6 = 0;
    _X10 = *(result + 16);
    __asm { PRFM            #4, [X10] }

    v12 = *a2;
    v13 = a2[1];
    v14 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v12) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v12))) + v13;
    v15 = ((v14 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v14);
    v16 = vdup_n_s8(v15 & 0x7F);
    v17 = ((v15 >> 7) ^ (_X10 >> 12)) & v3;
    v18 = *(_X10 + v17);
    v19 = vceq_s8(v18, v16);
    if (!v19)
    {
      goto LABEL_10;
    }

    do
    {
LABEL_5:
      v20 = (v17 + (__clz(__rbit64(v19)) >> 3)) & v3;
      v21 = (*(result + 24) + 16 * v20);
      if (*v21 == v12 && v21[1] == v13)
      {
        *a3 = _X10 + v20;
        *(a3 + 8) = v21;
        *(a3 + 16) = 0;
        return result;
      }

      v19 &= ((v19 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v19);
LABEL_10:
    while (1)
    {
      v23 = vceq_s8(v18, 0x8080808080808080);
      if (v23)
      {
        break;
      }

      v6 += 8;
      v17 = (v6 + v17) & v3;
      v18 = *(_X10 + v17);
      v19 = vceq_s8(v18, v16);
      if (v19)
      {
        goto LABEL_5;
      }
    }

    v25 = result;
    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(result, v15, (v17 + (__clz(__rbit64(v23)) >> 3)) & v3, v6, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>::GetPolicyFunctions(void)::value);
    v27 = *(v25 + 24) + 16 * result;
    *a3 = *(v25 + 16) + result;
    *(a3 + 8) = v27;
    *(a3 + 16) = 1;
  }

  else
  {
    if (*(result + 8) > 1uLL)
    {
      v4 = result + 16;
      if (*(result + 16) != *a2 || *(result + 20) != a2[1])
      {
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>::resize_impl(result, 3);
      }

      v5 = 0;
    }

    else
    {
      *(result + 8) = 2;
      v4 = result + 16;
      v5 = 1;
    }

    *a3 = &absl::lts_20240722::container_internal::kSooControl;
    *(a3 + 8) = v4;
    *(a3 + 16) = v5;
  }

  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>::resize_impl(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *a1 < 2uLL && v3 > 1;
  if (v5)
  {
    v6 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *(a1 + 16)) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *(a1 + 16)))) + *(a1 + 20);
  }

  v8 = *a1;
  v9 = v3 & 1;
  v10 = v2 < 2;
  v11 = v5;
  v7 = *(a1 + 16);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,16ul,false,true,8ul>(&v7, a1);
}

__n128 absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>::transfer_slot_fn(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t *absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>::raw_hash_set(uint64_t *a1, unint64_t *a2, uint64_t a3)
{
  v5 = a2[1] >> 1;
  if (v5 == 7)
  {
    v6 = 8;
  }

  else
  {
    v6 = (v5 - 1) / 7 + v5;
  }

  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>::raw_hash_set(a1, v6, a2, a2, a3);
  v7 = a2[1];
  if (v7 >= 2)
  {
    if (v7 > 3)
    {
      v11 = v7 >> 1;
      v12 = *a1;
      if (*a1 > 8)
      {
        v25 = *a2;
        v28 = a2 + 2;
        v26 = a2[2];
        v27 = v28[1];
        if (v25 >= 7)
        {
          v48 = v7 >> 1;
          do
          {
            v49 = *v26 & 0x8080808080808080;
            if (v49 != 0x8080808080808080)
            {
              v50 = v49 ^ 0x8080808080808080;
              do
              {
                v51 = __clz(__rbit64(v50)) >> 3;
                v52 = (v27 + 16 * v51);
                first_non = absl::lts_20240722::container_internal::find_first_non_full<void>(a1, (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *v52) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *v52)));
                v54 = *(v26 + v51);
                v55 = a1[2];
                *(v55 + first_non) = v54;
                *(v55 + (*a1 & (first_non - 7)) + (*a1 & 7)) = v54;
                v56 = a1[3] + 16 * first_non;
                *v56 = *v52;
                *(v56 + 8) = *(v52 + 1);
                --v48;
                v50 &= v50 - 1;
              }

              while (v50);
            }

            ++v26;
            v27 += 128;
          }

          while (v48);
        }

        else
        {
          v29 = *(v26 + v25) & 0x8080808080808080;
          if (v29 != 0x8080808080808080)
          {
            v30 = v26 - 1;
            v31 = v27 - 16;
            v32 = v29 ^ 0x8080808080808080;
            do
            {
              v33 = __clz(__rbit64(v32)) >> 3;
              v34 = (v31 + 16 * v33);
              v35 = absl::lts_20240722::container_internal::find_first_non_full<void>(a1, (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *v34) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *v34)));
              v36 = v30[v33];
              v37 = a1[2];
              *(v37 + v35) = v36;
              *(v37 + (*a1 & (v35 - 7)) + (*a1 & 7)) = v36;
              v38 = a1[3] + 16 * v35;
              *v38 = *v34;
              *(v38 + 8) = *(v34 + 1);
              v32 &= v32 - 1;
            }

            while (v32);
          }
        }
      }

      else
      {
        v13 = (a1[2] >> 12) | 1;
        v15 = a2[2];
        v14 = a2[3];
        if (*a2 >= 7)
        {
          v41 = *a1;
          do
          {
            v42 = *v15 & 0x8080808080808080;
            if (v42 != 0x8080808080808080)
            {
              v43 = v42 ^ 0x8080808080808080;
              do
              {
                v44 = __clz(__rbit64(v43)) >> 3;
                v45 = v14 + 16 * v44;
                LOBYTE(v44) = *(v15 + v44);
                v41 = (v41 + v13) & v12;
                v46 = a1[2];
                *(v46 + v41) = v44;
                *(v46 + (v12 & (v41 - 7)) + (v12 & 7)) = v44;
                v47 = a1[3] + 16 * v41;
                *v47 = *v45;
                *(v47 + 8) = *(v45 + 8);
                --v11;
                v43 &= v43 - 1;
              }

              while (v43);
            }

            ++v15;
            v14 += 128;
          }

          while (v11);
        }

        else
        {
          v16 = *(v15 + *a2) & 0x8080808080808080;
          if (v16 != 0x8080808080808080)
          {
            v17 = v15 - 1;
            v18 = v14 - 16;
            v19 = v16 ^ 0x8080808080808080;
            v20 = *a1;
            do
            {
              v21 = __clz(__rbit64(v19)) >> 3;
              v22 = v18 + 16 * v21;
              v20 = (v20 + v13) & v12;
              LOBYTE(v21) = v17[v21];
              v23 = a1[2];
              *(v23 + v20) = v21;
              *(v23 + (v12 & (v20 - 7)) + (v12 & 7)) = v21;
              v24 = a1[3] + 16 * v20;
              *v24 = *v22;
              *(v24 + 8) = *(v22 + 8);
              v19 &= v19 - 1;
            }

            while (v19);
          }
        }
      }

      v39 = a1[2];
      a1[1] = v7 & 0xFFFFFFFFFFFFFFFELL | a1[1] & 1;
      *(v39 - 8) -= v7 >> 1;
    }

    else
    {
      a1[1] = 2;
      v8 = a2 + 2;
      if (*a2 >= 2)
      {
        v9 = a2[2];
        v8 = a2[3];
        if (*v9 <= -2)
        {
          do
          {
            v10 = __clz(__rbit64((*v9 | ~(*v9 >> 7)) & 0x101010101010101)) >> 3;
            v9 = (v9 + v10);
            v8 += 2 * v10;
          }

          while (*v9 < -1);
        }
      }

      *(a1 + 4) = *v8;
      a1[3] = v8[1];
    }
  }

  return a1;
}

void sub_23CC8FE90(_Unwind_Exception *exception_object)
{
  if (*v1 >= 2uLL)
  {
    operator delete((v1[2] - (v1[1] & 1) - 8));
  }

  _Unwind_Resume(exception_object);
}

double absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>::raw_hash_set(_OWORD *a1, unint64_t a2)
{
  *&result = 1;
  *a1 = xmmword_23CE306D0;
  if (a2 >= 2)
  {
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>::resize_impl(a1, 0xFFFFFFFFFFFFFFFFLL >> __clz(a2));
  }

  return result;
}

unint64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,int>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const,int>>>::find_or_prepare_insert<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>@<X0>(unint64_t result@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  if (*result > 1uLL)
  {
    v6 = 0;
    _X10 = *(result + 16);
    __asm { PRFM            #4, [X10] }

    v12 = *a2;
    v13 = a2[1];
    v14 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v12) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v12))) + v13;
    v15 = ((v14 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v14);
    v16 = vdup_n_s8(v15 & 0x7F);
    v17 = ((v15 >> 7) ^ (_X10 >> 12)) & v3;
    v18 = *(_X10 + v17);
    v19 = vceq_s8(v18, v16);
    if (!v19)
    {
      goto LABEL_10;
    }

    do
    {
LABEL_5:
      v20 = (v17 + (__clz(__rbit64(v19)) >> 3)) & v3;
      v21 = (*(result + 24) + 12 * v20);
      if (*v21 == v12 && v21[1] == v13)
      {
        *a3 = _X10 + v20;
        *(a3 + 8) = v21;
        *(a3 + 16) = 0;
        return result;
      }

      v19 &= ((v19 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v19);
LABEL_10:
    while (1)
    {
      v23 = vceq_s8(v18, 0x8080808080808080);
      if (v23)
      {
        break;
      }

      v6 += 8;
      v17 = (v6 + v17) & v3;
      v18 = *(_X10 + v17);
      v19 = vceq_s8(v18, v16);
      if (v19)
      {
        goto LABEL_5;
      }
    }

    v25 = result;
    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(result, v15, (v17 + (__clz(__rbit64(v23)) >> 3)) & v3, v6, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,int>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const,int>>>::GetPolicyFunctions(void)::value);
    v27 = *(v25 + 24) + 12 * result;
    *a3 = *(v25 + 16) + result;
    *(a3 + 8) = v27;
    *(a3 + 16) = 1;
  }

  else
  {
    if (*(result + 8) > 1uLL)
    {
      v4 = result + 16;
      if (*(result + 16) != *a2 || *(result + 20) != a2[1])
      {
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,int>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const,int>>>::resize_impl(result, 3);
      }

      v5 = 0;
    }

    else
    {
      *(result + 8) = 2;
      v4 = result + 16;
      v5 = 1;
    }

    *a3 = &absl::lts_20240722::container_internal::kSooControl;
    *(a3 + 8) = v4;
    *(a3 + 16) = v5;
  }

  return result;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,int>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const,int>>>::resize_impl(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *a1 < 2uLL && v3 > 1;
  if (v5)
  {
    v6 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *(a1 + 16)) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *(a1 + 16)))) + *(a1 + 20);
  }

  v8 = *a1;
  v9 = v3 & 1;
  v10 = v2 < 2;
  v11 = v5;
  if (v5)
  {
    *&v7 = *(a1 + 16);
    DWORD2(v7) = *(a1 + 24);
  }

  else
  {
    v7 = *(a1 + 16);
  }

  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,12ul,false,true,4ul>(&v7, a1);
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,int>,absl::lts_20240722::hash_internal::Hash<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::equal_to<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>>,std::allocator<std::pair<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const,int>>>::transfer_slot_fn(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  *(a2 + 8) = *(a3 + 2);
  *a2 = v3;
}

uint64_t std::vector<operations_research::sat::PrecedenceRelations::ConditionalEntry>::__emplace_back_slow_path<int,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> &,std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,absl::lts_20240722::Span<operations_research::sat::Literal const> &>(uint64_t *a1, _DWORD *a2, uint64_t *a3, uint64_t *a4, int **a5)
{
  v5 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v6 = v5 + 1;
  if (v5 + 1 > 0x555555555555555)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v6)
  {
    v6 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
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

  v9 = 16 * ((a1[1] - *a1) >> 4);
  v10 = *a3;
  v11 = *a4;
  v13 = *a5;
  v12 = a5[1];
  *v9 = *a2;
  *(v9 + 8) = v10;
  *(v9 + 16) = v11;
  *(v9 + 24) = 0;
  v14 = (4 * v12) >> 2;
  if (v14 >= 5)
  {
    if (!(v14 >> 62))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  if ((v12 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v15 = v13;
    v16 = (4 * v12) >> 2;
    v17 = (v9 + 32);
    do
    {
      v18 = *v15++;
      *v17++ = v18;
      --v16;
    }

    while (v16);
  }

  *(48 * v5 + 0x18) = (4 * v12) >> 1;
  v19 = *a1;
  v20 = a1[1];
  v21 = v9 + *a1 - v20;
  if (*a1 != v20)
  {
    v22 = *a1;
    v23 = v9 + *a1 - v20;
    do
    {
      v24 = *(v22 + 16);
      *v23 = *v22;
      *(v23 + 16) = v24;
      *(v23 + 24) = 0;
      *(v23 + 24) = *(v22 + 24);
      *(v23 + 32) = *(v22 + 32);
      *(v22 + 24) = 0;
      v22 += 48;
      v23 += 48;
    }

    while (v22 != v20);
    do
    {
      if (*(v19 + 24))
      {
        operator delete(*(v19 + 32));
      }

      v19 += 48;
    }

    while (v19 != v20);
    v19 = *a1;
  }

  *a1 = v21;
  a1[1] = v9 + 48;
  a1[2] = 0;
  if (v19)
  {
    operator delete(v19);
  }

  return v9 + 48;
}

void sub_23CC90A10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 24))
  {
    operator delete(*(v2 + 32));
  }

  std::__split_buffer<operations_research::sat::PrecedenceRelations::ConditionalEntry>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<operations_research::sat::PrecedenceRelations::ConditionalEntry>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v5 = v2 - 48;
      *(a1 + 16) = v2 - 48;
      if (*(v2 - 24))
      {
        operator delete(*(v2 - 16));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,absl::lts_20240722::flat_hash_map<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,absl::lts_20240722::flat_hash_map<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>>>>::resize_impl(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8) & 1;
  v5 = 0;
  v2 = *(a1 + 16);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,40ul,false,false,8ul>(&v2, a1);
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,absl::lts_20240722::flat_hash_map<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,absl::lts_20240722::flat_hash_map<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>>,std::allocator<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>>>>::transfer_slot_fn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<long long>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>::raw_hash_set((a2 + 8), (a3 + 8));
  if (*(a3 + 8) >= 2uLL)
  {
    v4 = (*(a3 + 24) - (*(a3 + 16) & 1) - 8);

    operator delete(v4);
  }
}

uint64_t std::vector<operations_research::sat::FullIntegerPrecedence>::__emplace_back_slow_path<operations_research::sat::FullIntegerPrecedence>(void *a1, uint64_t a2)
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

  v17 = a1;
  if (v5)
  {
    if (v5 <= 0x492492492492492)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v6 = 56 * v2;
  *v6 = *a2;
  __p = 0;
  v14 = 56 * v2;
  *(v6 + 8) = *(a2 + 8);
  *(v6 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v6 + 32) = *(a2 + 32);
  *(v6 + 48) = *(a2 + 48);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v15 = 56 * v2 + 56;
  v16 = 0;
  std::vector<operations_research::sat::FullIntegerPrecedence>::__swap_out_circular_buffer(a1, &__p);
  v7 = a1[1];
  v8 = v14;
  while (1)
  {
    v9 = v15;
    if (v15 == v8)
    {
      break;
    }

    v15 -= 56;
    v10 = *(v9 - 24);
    if (v10)
    {
      *(v9 - 16) = v10;
      operator delete(v10);
    }

    v11 = *(v9 - 48);
    if (v11)
    {
      *(v9 - 40) = v11;
      operator delete(v11);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v7;
}

void sub_23CC90EBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<operations_research::sat::FullIntegerPrecedence>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<operations_research::sat::FullIntegerPrecedence>::__swap_out_circular_buffer(void *a1, void *a2)
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
      *v8 = *v7;
      *(v8 + 16) = 0;
      *(v8 + 24) = 0;
      *(v8 + 8) = 0;
      *(v8 + 8) = *(v7 + 1);
      *(v8 + 24) = v7[3];
      v7[1] = 0;
      v7[2] = 0;
      v7[3] = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 32) = *(v7 + 2);
      *(v8 + 48) = v7[6];
      v7[4] = 0;
      v7[5] = 0;
      v7[6] = 0;
      v7 += 7;
      v8 += 56;
    }

    while (v7 != v4);
    do
    {
      v9 = v5[4];
      if (v9)
      {
        v5[5] = v9;
        operator delete(v9);
      }

      v10 = v5[1];
      if (v10)
      {
        v5[2] = v10;
        operator delete(v10);
      }

      v5 += 7;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v11 = *a1;
  *a1 = v6;
  a1[1] = v11;
  a2[1] = v11;
  v12 = a1[1];
  a1[1] = a2[2];
  a2[2] = v12;
  v13 = a1[2];
  a1[2] = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<operations_research::sat::FullIntegerPrecedence>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }

    v5 = *(i - 48);
    if (v5)
    {
      *(i - 40) = v5;
      operator delete(v5);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::vector<operations_research::sat::PrecedencesPropagator::ArcInfo>::__emplace_back_slow_path<operations_research::sat::PrecedencesPropagator::ArcInfo>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v3 - *a1) >> 6;
  v5 = v4 + 1;
  if ((v4 + 1) >> 58)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v7 = a1[2] - v2;
  if (v7 >> 5 > v5)
  {
    v5 = v7 >> 5;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFC0)
  {
    v8 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v5;
  }

  if (v8)
  {
    if (!(v8 >> 58))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v9 = (v3 - *a1) >> 6;
  v10 = v4 << 6;
  *v10 = *a2;
  *(v10 + 16) = *(a2 + 16);
  *(v10 + 24) = *(a2 + 24);
  *(v10 + 32) = *(a2 + 32);
  *(v10 + 48) = *(a2 + 48);
  v11 = (v4 << 6) + 64;
  *(a2 + 24) = 0;
  v12 = v10 - (v9 << 6);
  *(v10 + 56) = *(a2 + 56);
  if (v2 != v3)
  {
    v13 = v2;
    v14 = v12;
    do
    {
      v15 = *v13;
      *(v14 + 16) = *(v13 + 4);
      *v14 = v15;
      *(v14 + 24) = *(v13 + 3);
      v16 = v13[2];
      *(v14 + 48) = *(v13 + 6);
      *(v14 + 32) = v16;
      *(v13 + 3) = 0;
      *(v14 + 56) = *(v13 + 56);
      v13 += 4;
      v14 += 64;
    }

    while (v13 != v3);
    do
    {
      if (*(v2 + 24))
      {
        operator delete(*(v2 + 4));
      }

      v2 += 4;
    }

    while (v2 != v3);
    v2 = *a1;
  }

  *a1 = v12;
  a1[1] = v11;
  a1[2] = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return v11;
}

void *absl::lts_20240722::inlined_vector_internal::Storage<operations_research::sat::Literal,6ul,std::allocator<operations_research::sat::Literal>>::InitFrom(void *a1, void *a2)
{
  v4 = *a2 >> 1;
  if (*a2)
  {
    if ((*a2 & 0x8000000000000000) == 0)
    {
      if (v4 > 0xC)
      {
        v5 = *a2 >> 1;
      }

      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  result = memcpy(a1 + 1, a2 + 1, 4 * v4);
  *a1 = *a2;
  return result;
}

int64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>::find_or_prepare_insert<operations_research::sat::Literal>@<X0>(int64_t result@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
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
      if (*(v19 + 4 * v20) == v13)
      {
        *a3 = _X10 + v20;
        *(a3 + 8) = v19 + 4 * v20;
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
    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(result, v14, (v16 + (__clz(__rbit64(v21)) >> 3)) & v3, v6, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>::GetPolicyFunctions(void)::value);
    v24 = *(v22 + 24) + 4 * result;
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
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::equal_to<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>,std::allocator<operations_research::StrongIndex<operations_research::sat::LiteralIndex_index_tag_>>>::resize_impl(result, 3);
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

__n128 std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,int> *>>(__n128 *a1, uint64_t *a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t a6)
{
  if (a4 < 2)
  {
    return result;
  }

  if (a4 == 2)
  {
    v6 = *(a2 - 2);
    v7 = a1->n128_u32[0];
    if (v6 < a1->n128_u32[0] || v7 >= v6 && *(a2 - 1) < a1->n128_u32[1])
    {
      a1->n128_u32[0] = v6;
      *(a2 - 2) = v7;
      v8 = a1->n128_i32[1];
      a1->n128_u32[1] = *(a2 - 1);
      *(a2 - 1) = v8;
    }

    return result;
  }

  if (a4 <= 0)
  {
    if (a1 == a2)
    {
      return result;
    }

    v19 = &a1->n128_u32[2];
    if (&a1->n128_i8[8] == a2)
    {
      return result;
    }

    v20 = 0;
    v21 = a1;
LABEL_19:
    v22 = v21;
    v21 = v19;
    v23 = *v19;
    v24 = *v22;
    if (v23 >= *v22 && (v24 < v23 || v22[3] >= v22[1]))
    {
      goto LABEL_18;
    }

    v25 = v21->n128_u32[0];
    v26 = v21->n128_i32[1];
    v21->n128_u32[0] = v24;
    v21->n128_u32[1] = v22[1];
    if (v22 == a1)
    {
LABEL_16:
      v22 = a1;
      goto LABEL_17;
    }

    v27 = v20;
    while (1)
    {
      v30 = *(&a1->n128_i32[-2] + v27);
      if (v30 > v25)
      {
        v28 = *(&a1->n128_i32[-1] + v27);
      }

      else
      {
        if (v30 < v25)
        {
          v22 = (a1 + v27);
LABEL_17:
          *v22 = v25;
          v22[1] = v26;
LABEL_18:
          v19 = &v21->n128_u32[2];
          v20 += 8;
          if (&v21->n128_i8[8] != a2)
          {
            goto LABEL_19;
          }

          return result;
        }

        v28 = *(&a1->n128_i32[-1] + v27);
        if (v28 <= v26)
        {
          goto LABEL_17;
        }
      }

      v22 -= 2;
      v29 = (a1 + v27);
      v29->n128_u32[0] = v30;
      v29->n128_u32[1] = v28;
      v27 -= 8;
      if (!v27)
      {
        goto LABEL_16;
      }
    }
  }

  v10 = a4 >> 1;
  v11 = 8 * (a4 >> 1);
  v12 = a4 - (a4 >> 1);
  v13 = (a1 + v11);
  if (a4 <= a6)
  {
    std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,int> *>>(a1, v13, a3, a4 >> 1, a5);
    v35 = &a5[v10];
    std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,int> *>>((a1 + v11), a2, a3, v12, v35);
    v36 = &a5[a4];
    if ((a4 & 0x3FFFFFFFFFFFFFFELL) != 0)
    {
      v37 = v35;
      v38 = a5;
      v39 = a1;
      while (v37 != v36)
      {
        v40 = *v37;
        v41 = *v38;
        if (*v37 < *v38 || v41 >= v40 && *(v37 + 1) < *(v38 + 1))
        {
          v39->n128_u32[0] = v40;
          v39->n128_u32[1] = *(v37++ + 1);
          v39 = (v39 + 8);
          if (v38 == v35)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v39->n128_u32[0] = v41;
          v39->n128_u32[1] = *(v38++ + 1);
          v39 = (v39 + 8);
          if (v38 == v35)
          {
            goto LABEL_42;
          }
        }
      }

      if (v38 != v35)
      {
        v45 = &a5[v11 / 8] - v38 - 8;
        if (v45 >= 0x118)
        {
          v57 = v45 & 0xFFFFFFFFFFFFFFF8;
          v58 = v39 + (v45 & 0xFFFFFFFFFFFFFFF8);
          if (v58 < v39)
          {
            v46 = v38;
          }

          else if (v58 + 4 < &v39->n128_i8[4])
          {
            v46 = v38;
          }

          else if (v39 >= (v38 + v57 + 8) || v38 >= (&v39->n128_i64[1] + v57))
          {
            v59 = v39 + 2;
            v60 = (v45 >> 3) + 1;
            v61 = v60 & 0x3FFFFFFFFFFFFFF8;
            v46 = &v38[v61];
            v39 = (v39 + v61 * 8);
            v62 = (v38 + 4);
            v63 = v60 & 0x3FFFFFFFFFFFFFF8;
            do
            {
              v64 = v62[-2];
              result = v62[-1];
              v66 = *v62;
              v65 = v62[1];
              v62 += 4;
              v59[-2] = v64;
              v59[-1] = result;
              *v59 = v66;
              v59[1] = v65;
              v59 += 4;
              v63 -= 8;
            }

            while (v63);
            if (v60 == (v60 & 0x3FFFFFFFFFFFFFF8))
            {
              return result;
            }
          }

          else
          {
            v46 = v38;
          }
        }

        else
        {
          v46 = v38;
        }

        do
        {
          v39->n128_u32[0] = *v46;
          v39->n128_u32[1] = *(v46++ + 1);
          v39 = (v39 + 8);
        }

        while (v46 != v35);
      }
    }

    else
    {
      v37 = v35;
      v39 = a1;
LABEL_42:
      if (v37 != v36)
      {
        v42 = v36 - v37 - 8;
        if (v42 <= 0xF7 || (v47 = v42 & 0xFFFFFFFFFFFFFFF8, (v39 + (v42 & 0xFFFFFFFFFFFFFFF8)) < v39) || &v39->n128_u8[v47 + 4] < &v39->n128_u8[4] || (v48 = v47 + 8, v39 < (v37 + v48)) && v37 < (v39 + v48))
        {
          v43 = v37;
          v44 = v39;
        }

        else
        {
          v49 = (v42 >> 3) + 1;
          v50 = v49 & 0x3FFFFFFFFFFFFFF8;
          v43 = &v37[v50];
          v44 = (v39 + v50 * 8);
          v51 = v39 + 2;
          v52 = (v37 + 4);
          v53 = v49 & 0x3FFFFFFFFFFFFFF8;
          do
          {
            v54 = v52[-2];
            result = v52[-1];
            v56 = *v52;
            v55 = v52[1];
            v52 += 4;
            v51[-2] = v54;
            v51[-1] = result;
            *v51 = v56;
            v51[1] = v55;
            v51 += 4;
            v53 -= 8;
          }

          while (v53);
          if (v49 == (v49 & 0x3FFFFFFFFFFFFFF8))
          {
            return result;
          }
        }

        do
        {
          v44->n128_u32[0] = *v43;
          v44->n128_u32[1] = *(v43++ + 1);
          v44 = (v44 + 8);
        }

        while (v43 != v36);
      }
    }
  }

  else
  {
    std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,int> *>>(a1, v13, a3, a4 >> 1, a5, a6);
    std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,int> *>>(a1 + v11, a2, a3, v12, a5, a6);

    std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,int> *>>(a1, a1 + v11, a2, a3, v10, v12, a5, a6);
  }

  return result;
}

uint64_t *std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,int> *>>(uint64_t *result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (a4)
  {
    if (a4 == 1)
    {
      v5 = result;
LABEL_30:
      *a5 = *v5;
      return result;
    }

    if (a4 == 2)
    {
      v5 = a2 - 1;
      v6 = *(a2 - 2);
      if (v6 < *result || *result >= v6 && *(a2 - 1) < *(result + 1))
      {
        v7 = result;
        result = v5;
        v5 = v7;
      }

      *a5++ = *result;
      goto LABEL_30;
    }

    if (a4 > 8)
    {
      v20 = a4 >> 1;
      v21 = a4 >> 1;
      v22 = &result[v21];
      v23 = result;
      v27 = a5;
      (std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,int> *>>)();
      result = std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,int> *>>(v22, a2, a3, a4 - v20, &v27[v21], a4 - v20);
      if (v21 * 8)
      {
        v28 = v27;
        v29 = v27;
        v30 = v22;
        v31 = a2;
        v32 = v23;
        while (v30 != a2)
        {
          if (*v30 < *v32 || *v32 >= *v30 && *(v30 + 1) < *(v32 + 1))
          {
            v33 = *v30++;
            *v28++ = v33;
            v29 += 8;
            if (v32 == v22)
            {
              goto LABEL_42;
            }
          }

          else
          {
            v34 = *v32++;
            *v28++ = v34;
            v29 += 8;
            if (v32 == v22)
            {
              goto LABEL_42;
            }
          }
        }

        if (v32 != v22)
        {
          v44 = v22 - v32 - 8;
          if (v44 >= 0x38)
          {
            if ((v29 - v32) >= 0x20)
            {
              v47 = v28 + 2;
              v48 = (v44 >> 3) + 1;
              v49 = v48 & 0x3FFFFFFFFFFFFFFCLL;
              v28 = (v28 + v49 * 8);
              v45 = &v32[v49];
              v50 = (v32 + 2);
              v51 = v48 & 0x3FFFFFFFFFFFFFFCLL;
              do
              {
                v52 = *v50;
                *(v47 - 1) = *(v50 - 1);
                *v47 = v52;
                v50 += 2;
                v47 += 2;
                v51 -= 4;
              }

              while (v51);
              if (v48 == (v48 & 0x3FFFFFFFFFFFFFFCLL))
              {
                return result;
              }
            }

            else
            {
              v45 = v32;
            }
          }

          else
          {
            v45 = v32;
          }

          do
          {
            v53 = *v45++;
            *v28++ = v53;
          }

          while (v45 != v22);
        }
      }

      else
      {
        v30 = v22;
        v28 = v27;
        v31 = a2;
LABEL_42:
        if (v30 != v31)
        {
          v35 = v31 - v30 - 8;
          if (v35 < 0x18 || (v28 - v30) < 0x20)
          {
            v38 = v28;
            v39 = v30;
          }

          else
          {
            v36 = (v35 >> 3) + 1;
            v37 = v36 & 0x3FFFFFFFFFFFFFFCLL;
            v38 = &v28[v37];
            v39 = &v30[v37];
            v40 = (v30 + 2);
            v41 = v28 + 2;
            v42 = v36 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v43 = *v40;
              *(v41 - 1) = *(v40 - 1);
              *v41 = v43;
              v40 += 2;
              v41 += 2;
              v42 -= 4;
            }

            while (v42);
            if (v36 == (v36 & 0x3FFFFFFFFFFFFFFCLL))
            {
              return result;
            }
          }

          do
          {
            v46 = *v39++;
            *v38++ = v46;
          }

          while (v39 != v31);
        }
      }
    }

    else if (result != a2)
    {
      v8 = result + 1;
      *a5 = *result;
      if (result + 1 != a2)
      {
        v9 = 0;
        v10 = a5;
        v11 = a5;
        do
        {
          v13 = v8;
          v15 = *v11++;
          v14 = v15;
          if (*v13 >= v15 && (v14 < *v13 || *(result + 3) >= *(v10 + 1)))
          {
            *v11 = *v13;
            goto LABEL_13;
          }

          v10[1] = *v10;
          v12 = a5;
          if (v10 == a5)
          {
            goto LABEL_12;
          }

          v16 = v9;
          while (1)
          {
            v19 = *(a5 + v16 - 8);
            if (*v13 < v19)
            {
              v17 = *(a5 + v16 - 4);
              goto LABEL_18;
            }

            if (v19 < *v13)
            {
              break;
            }

            v17 = *(a5 + v16 - 4);
            if (*(result + 3) >= v17)
            {
              v12 = v10;
              goto LABEL_12;
            }

LABEL_18:
            --v10;
            v18 = (a5 + v16);
            *v18 = v19;
            v18[1] = v17;
            v16 -= 8;
            if (!v16)
            {
              v12 = a5;
              goto LABEL_12;
            }
          }

          v12 = (a5 + v16);
LABEL_12:
          *v12 = *v13;
          *(v12 + 1) = *(result + 3);
LABEL_13:
          v8 = v13 + 1;
          v9 += 8;
          v10 = v11;
          result = v13;
        }

        while (v13 + 1 != a2);
      }
    }
  }

  return result;
}

char *std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,int> *>>(char *result, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a6)
  {
    return result;
  }

  while (a6 > a8 && a5 > a8)
  {
    if (!a5)
    {
      return result;
    }

    v11 = 0;
    v12 = *a2;
    v13 = -a5;
    while (1)
    {
      v15 = *&result[v11];
      if (v12 < v15 || v15 >= v12 && *(a2 + 1) < *&result[v11 + 4])
      {
        break;
      }

      v11 += 8;
      if (__CFADD__(v13++, 1))
      {
        return result;
      }
    }

    v16 = -v13;
    v17 = &result[v11];
    if (-v13 >= a6)
    {
      if (v13 == -1)
      {
        v47 = &result[v11];
        *v47 = v12;
        *a2 = v15;
        v48 = *(v47 + 1);
        *(v47 + 1) = *(a2 + 1);
        *(a2 + 1) = v48;
        return result;
      }

      v21 = v16 / 2;
      v20 = &result[8 * (v16 / 2) + v11];
      v19 = a2;
      if (a2 != a3)
      {
        v43 = (a3 - a2) >> 3;
        v44 = *v20;
        v19 = a2;
        do
        {
          v45 = v43 >> 1;
          v46 = &v19[8 * (v43 >> 1)];
          if (*v46 < v44 || v44 >= *v46 && *(v46 + 1) < *(v20 + 1))
          {
            v19 = v46 + 8;
            v45 = v43 + ~v45;
          }

          v43 = v45;
        }

        while (v45);
      }

      v18 = (v19 - a2) >> 3;
      v22 = v19;
      if (a2 != v20)
      {
LABEL_17:
        v22 = v20;
        if (a2 != v19)
        {
          v23 = *v20;
          *v20 = v12;
          *a2 = v23;
          v24 = *(v20 + 1);
          *(v20 + 1) = *(a2 + 1);
          *(a2 + 1) = v24;
          v22 = v20 + 8;
          for (i = a2 + 8; i != v19; i += 8)
          {
            if (v22 == a2)
            {
              a2 = i;
            }

            v26 = *v22;
            *v22 = *i;
            *i = v26;
            v27 = *(v22 + 1);
            *(v22 + 1) = *(i + 1);
            *(i + 1) = v27;
            v22 += 8;
          }

          if (v22 != a2)
          {
            v28 = v22;
            v29 = a2;
            while (1)
            {
              v30 = *v28;
              *v28 = *v29;
              *v29 = v30;
              v31 = *(v28 + 1);
              *(v28 + 1) = *(v29 + 1);
              *(v29 + 1) = v31;
              v28 += 8;
              v29 += 8;
              v32 = v28 == a2;
              if (v29 == v19)
              {
                if (v28 == a2)
                {
                  break;
                }

                v29 = a2 + 8;
                while (1)
                {
                  v33 = *v28;
                  *v28 = *a2;
                  *a2 = v33;
                  v34 = *(v28 + 1);
                  *(v28 + 1) = *(a2 + 1);
                  *(a2 + 1) = v34;
                  v28 += 8;
                  v32 = v28 == a2;
                  if (v29 != v19)
                  {
                    break;
                  }

                  if (v28 == a2)
                  {
                    goto LABEL_31;
                  }
                }
              }

              if (v32)
              {
                a2 = v29;
              }
            }
          }
        }
      }
    }

    else
    {
      v18 = a6 / 2;
      v19 = &a2[8 * (a6 / 2)];
      v20 = a2;
      if (a2 - result != v11)
      {
        v39 = (a2 - result - v11) >> 3;
        v40 = *v19;
        v20 = &result[v11];
        do
        {
          v41 = v39 >> 1;
          v42 = &v20[8 * (v39 >> 1)];
          if (v40 >= *v42 && (*v42 < v40 || *(v19 + 1) >= *(v42 + 1)))
          {
            v20 = v42 + 8;
            v41 = v39 + ~v41;
          }

          v39 = v41;
        }

        while (v41);
      }

      v21 = (v20 - result - v11) >> 3;
      v22 = &a2[8 * (a6 / 2)];
      if (a2 != v20)
      {
        goto LABEL_17;
      }
    }

LABEL_31:
    v35 = a6 - v18;
    if (v21 + v18 >= a6 - (v21 + v18) - v13)
    {
      std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,int> *>>(v22, v19);
      a2 = v20;
      a5 = v21;
      a3 = v22;
      a6 = v18;
      result = v17;
      if (!v18)
      {
        return result;
      }
    }

    else
    {
      v36 = v20;
      v37 = a3;
      v38 = -v13 - v21;
      std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,int> *>>(&result[v11], v36);
      a5 = v38;
      a3 = v37;
      a2 = v19;
      a6 = v35;
      result = v22;
      if (!v35)
      {
        return result;
      }
    }
  }

  return std::__buffered_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,int> *>>(result, a2, a3, a4, a5, a6, a7);
}

char *std::__buffered_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<std::pair<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,int> *>>(char *result, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a5 <= a6)
  {
    if (result == a2)
    {
      return result;
    }

    v16 = a2 - result - 8;
    if (v16 < 0x18)
    {
      v17 = a7;
      v18 = result;
    }

    else
    {
      v17 = a7;
      v18 = result;
      if ((a7 - result) > 0x1F)
      {
        v19 = (v16 >> 3) + 1;
        v20 = 8 * (v19 & 0x3FFFFFFFFFFFFFFCLL);
        v17 = (a7 + v20);
        v18 = &result[v20];
        v21 = (result + 16);
        v22 = (a7 + 16);
        v23 = v19 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v24 = *v21;
          *(v22 - 1) = *(v21 - 1);
          *v22 = v24;
          v21 += 2;
          v22 += 2;
          v23 -= 4;
        }

        while (v23);
        if (v19 == (v19 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_32:
          v35 = v17 - 1;
          if (v17 == a7)
          {
            return result;
          }

          v36 = a7;
          while (a2 != a3)
          {
            v37 = *a2;
            v38 = *v36;
            if (*a2 < *v36 || v38 >= v37 && *(a2 + 1) < v36[1])
            {
              *result = v37;
              *(result + 1) = *(a2 + 1);
              a2 += 8;
              result += 8;
              if (v36 == v17)
              {
                return result;
              }
            }

            else
            {
              *result = v38;
              *(result + 1) = v36[1];
              v36 += 2;
              result += 8;
              if (v36 == v17)
              {
                return result;
              }
            }
          }

          v39 = (v16 & 0xFFFFFFFFFFFFFFF8) + a7 - v36;
          if (v39 >= 0x138)
          {
            v41 = &result[v39 & 0xFFFFFFFFFFFFFFF8];
            if (v41 >= result && v41 + 4 >= result + 4)
            {
              if (result >= v36 + (v39 & 0xFFFFFFFFFFFFFFF8) + 8 || v36 >= v41 + 2)
              {
                v43 = (v39 >> 3) + 1;
                v44 = result + 32;
                v45 = 2 * (v43 & 0x3FFFFFFFFFFFFFF8);
                result += v45 * 4;
                v40 = &v36[v45];
                v46 = (v36 + 8);
                v47 = v43 & 0x3FFFFFFFFFFFFFF8;
                do
                {
                  v49 = *(v46 - 2);
                  v48 = *(v46 - 1);
                  v51 = *v46;
                  v50 = v46[1];
                  v46 += 4;
                  *(v44 - 2) = v49;
                  *(v44 - 1) = v48;
                  *v44 = v51;
                  v44[1] = v50;
                  v44 += 4;
                  v47 -= 8;
                }

                while (v47);
                if (v43 == (v43 & 0x3FFFFFFFFFFFFFF8))
                {
                  return result;
                }
              }

              else
              {
                v40 = v36;
              }
            }

            else
            {
              v40 = v36;
            }
          }

          else
          {
            v40 = v36;
          }

          do
          {
            *result = *v40;
            *(result + 1) = v40[1];
            result += 8;
            v52 = v40 == v35;
            v40 += 2;
          }

          while (!v52);
          return result;
        }
      }
    }

    do
    {
      v34 = *v18;
      v18 += 8;
      *v17++ = v34;
    }

    while (v18 != a2);
    goto LABEL_32;
  }

  if (a2 == a3)
  {
    return result;
  }

  v7 = a3 - a2 - 8;
  if (v7 < 0x18)
  {
    v8 = a7;
    v9 = a2;
    do
    {
LABEL_17:
      v25 = *v9;
      v9 += 8;
      *v8 = v25;
      v8 += 8;
    }

    while (v9 != a3);
    goto LABEL_18;
  }

  v8 = a7;
  v9 = a2;
  if ((a7 - a2) <= 0x1F)
  {
    goto LABEL_17;
  }

  v10 = (v7 >> 3) + 1;
  v11 = 8 * (v10 & 0x3FFFFFFFFFFFFFFCLL);
  v8 = a7 + v11;
  v9 = &a2[v11];
  v12 = (a2 + 16);
  v13 = (a7 + 16);
  v14 = v10 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v15 = *v12;
    *(v13 - 1) = *(v12 - 1);
    *v13 = v15;
    v12 += 2;
    v13 += 2;
    v14 -= 4;
  }

  while (v14);
  if (v10 != (v10 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_17;
  }

LABEL_18:
  if (v8 != a7)
  {
    v26 = a3 - 4;
    while (a2 != result)
    {
      v28 = *(a2 - 2);
      v29 = v8 - 8;
      v30 = *(v8 - 8);
      if (v30 < v28 || v28 >= v30 && *(v8 - 4) < *(a2 - 1))
      {
        v27 = a2;
        a2 -= 8;
        *(v26 - 1) = v28;
        *v26 = *(v27 - 1);
        v26 -= 8;
        if (v8 == a7)
        {
          return result;
        }
      }

      else
      {
        v31 = *(v8 - 8);
        v32 = v8;
        v8 -= 8;
        *(v26 - 1) = v31;
        *v26 = *(v32 - 4);
        v26 -= 8;
        if (v29 == a7)
        {
          return result;
        }
      }
    }

    while (v8 != a7)
    {
      v33 = *(v8 - 8);
      v8 -= 8;
      *(v26 - 1) = v33;
      *v26 = *(v8 + 4);
      v26 -= 8;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_0_12(uint64_t a1@<X8>)
{
  v2 = (*(a1 + 24) - (*(a1 + 16) & 1) - 8);

  operator delete(v2);
}

unint64_t AbslFlagHelpGenForcp_model_debug_postsolve::NonConst@<X0>(_BYTE *a1@<X8>)
{
  result = strlen(absl::lts_20240722::flags_internal::kStrippedFlagHelp);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a1[23] = result;
  if (result)
  {
    result = memcpy(a1, absl::lts_20240722::flags_internal::kStrippedFlagHelp, result);
    a1[v4] = 0;
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

uint64_t operations_research::sat::PresolveContext::GetLiteralRepresentative(operations_research::sat::PresolveContext *this, uint64_t a2)
{
  v2 = a2;
  if (~a2 <= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = ~a2;
  }

  operations_research::sat::PresolveContext::GetAffineRelation(this, v4, &v12);
  if (operations_research::Domain::Min((*(this + 53) + 24 * v4)) < 0 || operations_research::Domain::Max((*(this + 53) + 24 * v4)) >= 2)
  {
    operations_research::sat::PresolveContext::GetLiteralRepresentative(v11);
  }

  v5 = v12;
  v6 = ~v12;
  if (~v12 <= v12)
  {
    v7 = v12;
  }

  else
  {
    v7 = ~v12;
  }

  if ((operations_research::Domain::Min((*(this + 53) + 24 * v7)) & 0x8000000000000000) == 0 && operations_research::Domain::Max((*(this + 53) + 24 * v7)) <= 1)
  {
    if (v14)
    {
      v8 = v13 + v14 == 1;
    }

    else
    {
      v8 = 1;
    }

    v9 = v8;
    if ((v2 & 0x80000000) != 0)
    {
      if (v9)
      {
        return v6;
      }

      else
      {
        return v5;
      }
    }

    else if (v9)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  return v2;
}

uint64_t operations_research::sat::PresolveContext::NewIntVar(operations_research::sat::PresolveContext *this, const operations_research::Domain *a2)
{
  v4 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*this + 24), google::protobuf::Arena::DefaultConstruct<operations_research::sat::IntegerVariableProto>);
  operations_research::sat::FillDomainInProto<operations_research::sat::IntegerVariableProto>(a2, v4);
  operations_research::sat::PresolveContext::InitializeNewDomains(this);
  return (*(*this + 32) - 1);
}

void operations_research::sat::PresolveContext::InitializeNewDomains(operations_research::sat::PresolveContext *this)
{
  v1 = *(*this + 32);
  if (0xAAAAAAAAAAAAAAABLL * ((*(this + 54) - *(this + 53)) >> 3) != v1)
  {
    operations_research::SparseBitset<int>::Resize(this + 136, v1);
    operations_research::SparseBitset<int>::Resize(this + 192, v1);
    v4 = *(this + 85);
    v5 = *(this + 84);
    v6 = (v4 - v5) >> 5;
    if (v1 <= v6)
    {
      if (v1 < v6)
      {
        v7 = v5 + 32 * v1;
        if (v4 != v7)
        {
          v8 = *(this + 85);
          do
          {
            v9 = *(v8 - 32);
            v8 -= 32;
            if (v9 >= 2)
            {
              operator delete((*(v4 - 16) - (*(v4 - 24) & 1) - 8));
            }

            v4 = v8;
          }

          while (v8 != v7);
        }

        *(this + 85) = v7;
      }
    }

    else
    {
      std::vector<absl::lts_20240722::flat_hash_set<long long,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<long long>>>::__append(this + 84, v1 - v6);
    }

    v10 = *(this + 90);
    v11 = (*(this + 91) - v10) >> 2;
    if (v1 <= v11)
    {
      if (v1 < v11)
      {
        *(this + 91) = v10 + 4 * v1;
      }
    }

    else
    {
      std::vector<int>::__append(this + 30, v1 - v11);
    }

    v12 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 54) - *(this + 53)) >> 3);
    if (v1 <= v12)
    {
LABEL_27:
      v23 = 0;
      v21 = *(this + 60);
      v22 = (*(this + 61) - v21) >> 3;
      if (v1 <= v22)
      {
        if (v1 < v22)
        {
          *(this + 61) = v21 + 8 * v1;
        }
      }

      else
      {
        std::vector<unsigned long long>::__append(this + 480, v1 - v22, &v23);
      }

      std::vector<BOOL>::resize(this + 456, v1, 0);
    }

    else
    {
      v13 = v12;
      v14 = 8 * v12 + 8;
      while (1)
      {
        LODWORD(v23) = v13;
        v15 = *(this + 18);
        v16 = *(v15 + 8 * (v13 >> 6));
        if ((v16 & (1 << v13)) == 0)
        {
          *(v15 + 8 * (v13 >> 6)) = v16 | (1 << v13);
          std::vector<int>::push_back[abi:ne200100](this + 168, &v23);
        }

        v17 = *this + 24;
        if (*v17)
        {
          v17 = *v17 + v14 - 1;
        }

        operations_research::Domain::FromFlatSpanOfIntervals(*(*v17 + 24), *(*v17 + 16), &v23, v3);
        v18 = *(this + 54);
        if (v18 >= *(this + 55))
        {
          v19 = std::vector<operations_research::Domain>::__emplace_back_slow_path<operations_research::Domain>(this + 424, &v23);
          v20 = v23;
          *(this + 54) = v19;
          if (v20)
          {
            operator delete(__p);
            v19 = *(this + 54);
          }
        }

        else
        {
          *v18 = 0;
          *v18 = v23;
          *(v18 + 8) = __p;
          v19 = v18 + 24;
          *(this + 54) = v18 + 24;
        }

        if (operations_research::Domain::IsEmpty((v19 - 24)))
        {
          break;
        }

        ++v13;
        v14 += 8;
        if (v1 == v13)
        {
          goto LABEL_27;
        }
      }

      *(this + 416) = 1;
    }
  }
}

void sub_23CC927FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p)
{
  if (a10)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::PresolveContext::NewIntVarWithDefinition(uint64_t a1, uint64_t *a2, int *a3, uint64_t a4)
{
  v8 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*a1 + 24), google::protobuf::Arena::DefaultConstruct<operations_research::sat::IntegerVariableProto>);
  operations_research::sat::FillDomainInProto<operations_research::sat::IntegerVariableProto>(a2, v8);
  operations_research::sat::PresolveContext::InitializeNewDomains(a1);
  result = (*(*a1 + 32) - 1);
  if (*(a1 + 448) == 1)
  {
    if ((a4 & 0xFFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = 0;
      v11 = &a3[4 * a4];
      while (1)
      {
        v12 = *a3;
        if ((v12 & 0x80000000) != 0)
        {
          operations_research::sat::PresolveContext::NewIntVarWithDefinition(*a3);
        }

        v13 = *(a1 + 480);
        v14 = (*(a1 + 488) - v13) >> 3;
        if (v14 < v12)
        {
          operations_research::sat::PresolveContext::NewIntVarWithDefinition(*a3, v14);
        }

        v15 = *(a1 + 456);
        if (((*(v15 + ((v12 >> 3) & 0x1FFFFFF8)) >> v12) & 1) == 0)
        {
          break;
        }

        v10 += *(v13 + 8 * v12) * *(a3 + 1);
        a3 += 4;
        if (a3 == v11)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      v10 = 0;
      v15 = *(a1 + 456);
      v13 = *(a1 + 480);
LABEL_10:
      *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      *(v13 + 8 * result) = v10;
    }
  }

  return result;
}

uint64_t operations_research::sat::PresolveContext::NewBoolVar(operations_research::sat::PresolveContext *this)
{
  operations_research::Domain::Domain(v5, 0, 1);
  v2 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*this + 24), google::protobuf::Arena::DefaultConstruct<operations_research::sat::IntegerVariableProto>);
  operations_research::sat::FillDomainInProto<operations_research::sat::IntegerVariableProto>(v5, v2);
  operations_research::sat::PresolveContext::InitializeNewDomains(this);
  v3 = *(*this + 32);
  if (v5[0])
  {
    operator delete(v5[1]);
  }

  return (v3 - 1);
}

void sub_23CC929C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p)
{
  if (a10)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::PresolveContext::NewBoolVarWithClause(uint64_t a1, int *a2, uint64_t a3)
{
  result = operations_research::sat::PresolveContext::NewBoolVar(a1);
  if (*(a1 + 448) != 1)
  {
    return result;
  }

  v7 = *(a1 + 456);
  if ((a3 & 0x3FFFFFFFFFFFFFFFLL) == 0)
  {
    goto LABEL_19;
  }

  v8 = &a2[a3];
  v9 = 1;
  while (1)
  {
    while (1)
    {
      v10 = *a2;
      v11 = ~*a2 <= *a2 ? *a2 : ~v10;
      v12 = v11;
      if ((*(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v11))
      {
        break;
      }

      v9 = 0;
      if (++a2 == v8)
      {
        return result;
      }
    }

    v13 = *(a1 + 480);
    v14 = *(v13 + 8 * v12);
    if (v10 < 0)
    {
      break;
    }

    if (v14 == 1)
    {
      v15 = result;
      v16 = (result >> 3) & 0x1FFFFFFFFFFFFFF8;
      goto LABEL_18;
    }

LABEL_5:
    if (++a2 == v8)
    {
      if (v9)
      {
        goto LABEL_19;
      }

      return result;
    }
  }

  if (v14)
  {
    goto LABEL_5;
  }

  v15 = result;
  v16 = (result >> 3) & 0x1FFFFFFFFFFFFFF8;
LABEL_18:
  *(v7 + v16) |= 1 << v15;
  *(v13 + 8 * result) = 1;
  if ((v9 & 1) == 0)
  {
    return result;
  }

LABEL_19:
  v17 = result >> 6;
  v18 = *(v7 + 8 * v17);
  if ((v18 & (1 << result)) == 0)
  {
    *(v7 + 8 * v17) = v18 | (1 << result);
    *(*(a1 + 480) + 8 * result) = 0;
  }

  return result;
}

uint64_t operations_research::sat::PresolveContext::GetTrueLiteral(operations_research::sat::PresolveContext *this)
{
  if ((*(this + 792) & 1) == 0)
  {
    *(this + 792) = 1;
    operations_research::Domain::Domain(v4, 1);
    v2 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*this + 24), google::protobuf::Arena::DefaultConstruct<operations_research::sat::IntegerVariableProto>);
    operations_research::sat::FillDomainInProto<operations_research::sat::IntegerVariableProto>(v4, v2);
    operations_research::sat::PresolveContext::InitializeNewDomains(this);
    *(this + 199) = *(*this + 32) - 1;
    if (v4[0])
    {
      operator delete(v4[1]);
    }
  }

  return *(this + 199);
}

void sub_23CC92BB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p)
{
  if (a10)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *operations_research::sat::PresolveContext::AddImplication(int *this, int a2, int a3)
{
  if (a2 != a3)
  {
    v5 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*this + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
    v6 = v5;
    v7 = (v5 + 16);
    v8 = *(v5 + 16);
    v9 = v8;
    if (v8 == HIDWORD(v8))
    {
      google::protobuf::RepeatedField<int>::Grow(v5 + 16, HIDWORD(v8), (HIDWORD(v8) + 1));
      v9 = *v7;
    }

    v10 = *(v6 + 24);
    *(v6 + 16) = v9 + 1;
    *(v10 + 4 * v9) = a2;
    if (*(v6 + 60) == 4)
    {
      this = *(v6 + 48);
    }

    else
    {
      operations_research::sat::ConstraintProto::clear_constraint(v6);
      *(v6 + 60) = 4;
      v11 = *(v6 + 8);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      this = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v11);
      *(v6 + 48) = this;
    }

    v12 = this + 4;
    v13 = *(this + 2);
    v14 = v13;
    if (v13 == HIDWORD(v13))
    {
      v16 = this;
      google::protobuf::RepeatedField<int>::Grow(this + 4, HIDWORD(v13), (HIDWORD(v13) + 1));
      this = v16;
      v14 = *v12;
    }

    v15 = *(this + 3);
    this[4] = v14 + 1;
    *(v15 + 4 * v14) = a3;
  }

  return this;
}

uint64_t operations_research::sat::PresolveContext::AddImplyInDomain(operations_research::sat::PresolveContext *this, unsigned int a2, unsigned int a3, const operations_research::Domain *a4)
{
  v7 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*this + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
  v8 = (v7 + 16);
  v9 = *(v7 + 16);
  if (*(v7 + 16) <= 0)
  {
    if (*(v7 + 20) < 1)
    {
      google::protobuf::RepeatedField<int>::Grow(v8, v9, 1);
      LODWORD(v9) = *(v7 + 16);
      v10 = *(v7 + 24);
      *(v7 + 16) = 1;
      if (v9 == 1)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v10 = *(v7 + 24);
      *(v7 + 16) = 1;
    }

    v11 = 4 * v9;
    v12 = v10 + v11;
    v13 = -v9 & 0x3FFFFFFFFFFFFFFFLL;
    if (v13 < 7)
    {
      goto LABEL_11;
    }

    v14 = v13 + 1;
    v12 += 4 * (v14 & 0x7FFFFFFFFFFFFFF8);
    v15 = vdupq_n_s32(a2);
    v16 = (v11 + v10 + 16);
    v17 = v14 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v16[-1] = v15;
      *v16 = v15;
      v16 += 2;
      v17 -= 8;
    }

    while (v17);
    if (v14 != (v14 & 0x7FFFFFFFFFFFFFF8))
    {
LABEL_11:
      v18 = v12 - 4;
      do
      {
        *(v18 + 4) = a2;
        v18 += 4;
      }

      while (v18 != v10);
    }
  }

  else if (v9 != 1)
  {
    *v8 = 1;
  }

LABEL_13:
  if (*(v7 + 60) == 12)
  {
    v19 = *(v7 + 48);
    v20 = (v19 + 16);
    v21 = *(v19 + 16);
    if (*(v19 + 16) > 0)
    {
LABEL_15:
      if (v21 != 1)
      {
        *v20 = 1;
      }

      goto LABEL_29;
    }
  }

  else
  {
    operations_research::sat::ConstraintProto::clear_constraint(v7);
    *(v7 + 60) = 12;
    v22 = *(v7 + 8);
    if (v22)
    {
      v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
    }

    v19 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v22);
    *(v7 + 48) = v19;
    v20 = (v19 + 16);
    v21 = *(v19 + 16);
    if (*(v19 + 16) > 0)
    {
      goto LABEL_15;
    }
  }

  if (*(v19 + 20) < 1)
  {
    google::protobuf::RepeatedField<int>::Grow(v20, v21, 1);
    LODWORD(v21) = *(v19 + 16);
    v23 = *(v19 + 24);
    *(v19 + 16) = 1;
    if (v21 == 1)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v23 = *(v19 + 24);
    *(v19 + 16) = 1;
  }

  v24 = 4 * v21;
  v25 = v23 + v24;
  v26 = -v21 & 0x3FFFFFFFFFFFFFFFLL;
  if (v26 < 7)
  {
    goto LABEL_27;
  }

  v27 = v26 + 1;
  v25 += 4 * (v27 & 0x7FFFFFFFFFFFFFF8);
  v28 = vdupq_n_s32(a3);
  v29 = (v24 + v23 + 16);
  v30 = v27 & 0x7FFFFFFFFFFFFFF8;
  do
  {
    v29[-1] = v28;
    *v29 = v28;
    v29 += 2;
    v30 -= 8;
  }

  while (v30);
  if (v27 != (v27 & 0x7FFFFFFFFFFFFFF8))
  {
LABEL_27:
    v31 = v25 - 4;
    do
    {
      *(v31 + 4) = a3;
      v31 += 4;
    }

    while (v31 != v23);
  }

LABEL_29:
  v32 = (v19 + 40);
  v33 = *(v19 + 40);
  if (v33 <= 0)
  {
    if (*(v19 + 44) < 1)
    {
      google::protobuf::RepeatedField<long long>::Grow(v32, v33);
      LODWORD(v33) = *(v19 + 40);
      v34 = *(v19 + 48);
      *(v19 + 40) = 1;
      if (v33 == 1)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v34 = *(v19 + 48);
      *(v19 + 40) = 1;
    }

    memset_pattern16((v34 + 8 * v33), &unk_23CE4D740, 8 - 8 * v33);
  }

  else if (v33 != 1)
  {
    *v32 = 1;
  }

LABEL_36:

  return operations_research::sat::FillDomainInProto<operations_research::sat::LinearConstraintProto>(a4, v19);
}

BOOL operations_research::sat::PresolveContext::IsFixed(operations_research::sat::PresolveContext *this, int a2)
{
  if (~a2 <= a2)
  {
    v2 = a2;
  }

  else
  {
    v2 = ~a2;
  }

  return operations_research::Domain::IsFixed((*(this + 53) + 24 * v2));
}

BOOL operations_research::sat::PresolveContext::CanBeUsedAsLiteral(operations_research::sat::PresolveContext *this, int a2)
{
  if (~a2 <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = ~a2;
  }

  return (operations_research::Domain::Min((*(this + 53) + 24 * v3)) & 0x8000000000000000) == 0 && operations_research::Domain::Max((*(this + 53) + 24 * v3)) < 2;
}

BOOL operations_research::sat::PresolveContext::LiteralIsTrue(operations_research::sat::PresolveContext *this, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    return operations_research::Domain::Max((*(this + 53) + 24 * ~a2)) == 0;
  }

  else
  {
    return operations_research::Domain::Min((*(this + 53) + 24 * a2)) == 1;
  }
}

BOOL operations_research::sat::PresolveContext::LiteralIsFalse(operations_research::sat::PresolveContext *this, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    return operations_research::Domain::Min((*(this + 53) + 24 * ~a2)) == 1;
  }

  else
  {
    return operations_research::Domain::Max((*(this + 53) + 24 * a2)) == 0;
  }
}

uint64_t operations_research::sat::PresolveContext::MinOf(operations_research::sat::PresolveContext *this, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    return -operations_research::Domain::Max((*(this + 53) + 24 * ~a2));
  }

  v3 = (*(this + 53) + 24 * a2);

  return operations_research::Domain::Min(v3);
}

uint64_t operations_research::sat::PresolveContext::MaxOf(operations_research::sat::PresolveContext *this, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    return -operations_research::Domain::Min((*(this + 53) + 24 * ~a2));
  }

  v3 = (*(this + 53) + 24 * a2);

  return operations_research::Domain::Max(v3);
}

uint64_t operations_research::sat::PresolveContext::FixedValue(operations_research::sat::PresolveContext *this, int a2)
{
  if (~a2 <= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = ~a2;
  }

  if (!operations_research::Domain::IsFixed((*(this + 53) + 24 * v4)))
  {
    operations_research::sat::PresolveContext::FixedValue(&v6);
  }

  result = operations_research::Domain::Min((*(this + 53) + 24 * v4));
  if (a2 < 0)
  {
    return -result;
  }

  return result;
}