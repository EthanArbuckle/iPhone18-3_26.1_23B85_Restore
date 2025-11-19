uint64_t operations_research::sat::Model::GetOrCreate<operations_research::sat::RevIntegerValueRepository>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::RevIntegerValueRepository>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::RevIntegerValueRepository>(void)::d));
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
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::RevIntegerValueRepository>(void)::d)
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
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::RevIntegerValueRepository>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::RevIntegerValueRepository>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
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

void sub_23CBFF224(_Unwind_Exception *a1)
{
  v4 = operations_research::RevRepository<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::~RevRepository(v1);
  MEMORY[0x23EED9460](v4, v2);
  _Unwind_Resume(a1);
}

void operations_research::sat::LinearConstraintPropagator<false>::LinearConstraintPropagator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  *a1 = &unk_284F42208;
  *(a1 + 8) = a8;
  *(a1 + 16) = operations_research::sat::Model::GetOrCreate<operations_research::sat::LinearConstraintPropagator<false>::Shared>(a9);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 44) = a5;
  operator new[]();
}

{
  operations_research::sat::LinearConstraintPropagator<false>::LinearConstraintPropagator(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

void sub_23CBFF4E8(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    v2[10] = v5;
    operator delete(v5);
    v6 = v2[8];
    v2[8] = 0;
    if (!v6)
    {
LABEL_3:
      v7 = v2[7];
      v2[7] = 0;
      if (!v7)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v6 = v2[8];
    v2[8] = 0;
    if (!v6)
    {
      goto LABEL_3;
    }
  }

  MEMORY[0x23EED9440](v6, 0x1000C8000313F17);
  v7 = v2[7];
  v2[7] = 0;
  if (!v7)
  {
LABEL_4:
    v8 = v2[6];
    v2[6] = 0;
    if (!v8)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  MEMORY[0x23EED9440](v7, 0x1000C8000313F17);
  v8 = v2[6];
  v2[6] = 0;
  if (!v8)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  MEMORY[0x23EED9440](v8, v1);
  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::Model::GetOrCreate<operations_research::sat::LinearConstraintPropagator<false>::Shared>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::LinearConstraintPropagator<false>::Shared>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::LinearConstraintPropagator<false>::Shared>(void)::d));
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
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::LinearConstraintPropagator<false>::Shared>(void)::d)
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
        operations_research::sat::Model::MyNew<operations_research::sat::LinearConstraintPropagator<true>::Shared>();
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
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::LinearConstraintPropagator<false>::Shared>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::LinearConstraintPropagator<false>::Shared>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
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

uint64_t operations_research::sat::LinearConstraintPropagator<false>::Propagate(uint64_t a1)
{
  v69 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 72);
  v3 = *(a1 + 80);
  if (v2 != v3)
  {
    v4 = 0;
    v5 = -1;
    while (1)
    {
      v6 = *v2;
      v7 = v6 ^ 1;
      v8 = *(*(**(a1 + 16) + 8) + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8));
      if ((v8 >> (v7 & 0x3F ^ 1u)))
      {
        goto LABEL_56;
      }

      if ((v8 & (1 << (v7 & 0x3F))) == 0)
      {
        v5 = v7;
        ++v4;
      }

      if (++v2 == v3)
      {
        if (v4 > 1)
        {
          goto LABEL_56;
        }

        v9 = v5 ^ 1;
        goto LABEL_10;
      }
    }
  }

  v4 = 0;
  v9 = -2;
LABEL_10:
  v11 = (a1 + 40);
  LODWORD(v10) = *(a1 + 40);
  v13 = (a1 + 32);
  v12 = *(a1 + 32);
  v14 = *(a1 + 44);
  if (v10 >= v14)
  {
    v15 = 0;
    v19 = *(a1 + 16);
  }

  else
  {
    v15 = 0;
    v16 = v10;
    v17 = *(a1 + 48);
    v18 = *(a1 + 56);
    v19 = *(a1 + 16);
    v20 = *(v19[1] + 40);
    do
    {
      while (1)
      {
        v23 = *(v17 + 4 * v16);
        v24 = *(v18 + 8 * v16);
        v25 = 8 * v23;
        v26 = *(v20 + v25);
        v27 = *(v20 + (v25 ^ 8));
        if (v26 + v27)
        {
          break;
        }

        *(v17 + 4 * v16) = *(v17 + 4 * v10);
        *(v17 + 4 * v10) = v23;
        *(v18 + 8 * v16) = *(v18 + 8 * v10);
        *(v18 + 8 * v10) = v24;
        v21 = *(a1 + 64);
        v22 = *(v21 + 8 * v16);
        *(v21 + 8 * v16) = *(v21 + 8 * v10);
        *(v21 + 8 * v10) = v22;
        LODWORD(v10) = v10 + 1;
        v12 += v26 * v24;
        v14 = *(a1 + 44);
        if (++v16 >= v14)
        {
          goto LABEL_17;
        }
      }

      *(*(a1 + 64) + 8 * v16) = (-v27 - v26) * v24;
      v15 += v26 * v24;
      ++v16;
    }

    while (v16 < v14);
  }

LABEL_17:
  *(v19[2] + 112) = (v14 - v10) * 0.000000005 + *(v19[2] + 112);
  if ((*(a1 + 24) & 1) != 0 && v10 != *v11)
  {
    v28 = v19[4];
    if (*(v28 + 16) != *(v28 + 24))
    {
      v29 = *(a1 + 32);
      *&v66 = a1 + 32;
      *(&v66 + 1) = v29;
      std::vector<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> *,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>::push_back[abi:ne200100](v28 + 40, &v66);
      v19 = *(a1 + 16);
    }

    v30 = v19[3];
    if (*(v30 + 16) != *(v30 + 24))
    {
      *&v66 = a1 + 40;
      DWORD2(v66) = *v11;
      std::vector<std::pair<int *,int>>::push_back[abi:ne200100](v30 + 40, &v66);
    }

    *v11 = v10;
    *v13 = v12;
  }

  v31 = *(a1 + 8) - v15 - v12;
  if (v31 >= 0)
  {
    if (v4 != 1)
    {
      v32 = *(a1 + 44);
      if (v10 < v32)
      {
        v10 = v10;
        while (1)
        {
          if (*(*(a1 + 64) + 8 * v10) > v31)
          {
            v33 = *(*(a1 + 48) + 4 * v10);
            v34 = *(*(a1 + 56) + 8 * v10);
            v35 = *(*(a1 + 16) + 8);
            v36 = v31 / v34 + *(*(v35 + 40) + 8 * v33);
            v37 = v34 + v34 * (v31 / v34) + ~v31;
            v67[0] = &unk_284F42628;
            v67[1] = a1;
            if (v36 >= 0x8000000000000002)
            {
              v38 = -v36;
            }

            else
            {
              v38 = 0x7FFFFFFFFFFFFFFFLL;
            }

            v67[2] = v37;
            v68 = v67;
            v39 = operations_research::sat::IntegerTrail::Enqueue(v35, v33 ^ 1, v38, v67);
            if (v68 == v67)
            {
              (*(*v68 + 32))(v68);
              if (!v39)
              {
                goto LABEL_52;
              }
            }

            else
            {
              if (v68)
              {
                (*(*v68 + 40))();
              }

              if (!v39)
              {
                goto LABEL_52;
              }
            }

            v32 = *(a1 + 44);
          }

          if (++v10 >= v32)
          {
            goto LABEL_56;
          }
        }
      }
    }

    goto LABEL_56;
  }

  v40 = *(a1 + 16);
  *(v40 + 48) = *(v40 + 40);
  v41 = *(v40 + 64);
  *(v40 + 72) = v41;
  v42 = *(a1 + 44);
  if (v42 < 1)
  {
    v52 = v41;
  }

  else
  {
    v43 = 0;
    for (i = 0; i < v42; ++i)
    {
      v45 = *(*(a1 + 48) + 4 * i);
      v46 = *(a1 + 16);
      v47 = *(v46 + 8);
      v48 = *(*(v47 + 64) + 4 * v45);
      v50 = v47 + 40;
      v49 = *(v47 + 40);
      if (v48 >= (*(v50 + 8) - v49) >> 3)
      {
        v51 = *(v49 + 8 * v45);
        *&v66 = *(*(a1 + 48) + 4 * i);
        *(&v66 + 1) = v51;
        std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](v46 + 40, &v66);
        std::vector<long long>::push_back[abi:ne200100](*(a1 + 16) + 64, (*(a1 + 56) + v43));
        v42 = *(a1 + 44);
      }

      v43 += 8;
    }

    v40 = *(a1 + 16);
    v52 = *(v40 + 64);
    v41 = *(v40 + 72);
  }

  operations_research::sat::IntegerTrail::RelaxLinearReason(*(v40 + 8), ~v31, v52, (v41 - v52) >> 3, (v40 + 40));
  if (v4 == 1)
  {
    v54 = *(a1 + 72);
    v53 = *(a1 + 80);
    v55 = v53 - v54;
    if (v53 != v54)
    {
      if ((v55 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    if (4 != v55)
    {
      memmove((v54 - v53), (4 - (v53 - v54)), v53 - v54 - 4);
    }

    operations_research::sat::IntegerTrail::EnqueueLiteral(*(*(a1 + 16) + 8), v9, v55, (-v55 - 4) >> 2, *(*(a1 + 16) + 40), (*(*(a1 + 16) + 48) - *(*(a1 + 16) + 40)) >> 4);
LABEL_56:
    result = 1;
    v65 = *MEMORY[0x277D85DE8];
    return result;
  }

  v56 = *(a1 + 16);
  v57 = v56[1];
  v58 = *(a1 + 72);
  v59 = *(a1 + 80);
  v60 = v56[5];
  v61 = v56[6];
  v62 = *(v57 + 840);
  *(v62 + 120) = 0;
  std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal const*,operations_research::sat::Literal const*>((v62 + 72), v58, v59, (v59 - v58) >> 2);
  operations_research::sat::IntegerTrail::MergeReasonInto(v57, v60, (v61 - v60) >> 4, (v62 + 72));
LABEL_52:
  result = 0;
  v64 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CBFFD10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (v12)
  {
    operator delete(v12);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::LinearConstraintPropagator<false>::RegisterWith(uint64_t a1, void *a2)
{
  *(a1 + 24) = 1;
  v4 = operations_research::sat::GenericLiteralWatcher::Register(a2, a1);
  v5 = *(a1 + 44);
  if (v5 >= 1)
  {
    for (i = 0; i < v5; ++i)
    {
      v7 = *(*(a1 + 48) + 4 * i);
      if (v7 != -1)
      {
        v9 = a2[11];
        v8 = a2[12];
        v10 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v9) >> 3);
        if (v10 <= v7)
        {
          v11 = v7 + 1;
          if (v11 <= v10)
          {
            if (v11 < v10)
            {
              v12 = v9 + 24 * v11;
              if (v8 != v12)
              {
                v13 = a2[12];
                do
                {
                  v15 = *(v13 - 24);
                  v13 -= 24;
                  v14 = v15;
                  if (v15)
                  {
                    *(v8 - 16) = v14;
                    operator delete(v14);
                  }

                  v8 = v13;
                }

                while (v13 != v12);
              }

              a2[12] = v12;
            }
          }

          else
          {
            std::vector<std::vector<operations_research::sat::GenericLiteralWatcher::WatchData>>::__append((a2 + 11), v11 - v10);
          }
        }

        v31 = v4 | 0xFFFFFFFF00000000;
        v16 = (a2[11] + 24 * v7);
        v17 = v16[1];
        if (*v16 == v17 || *(v17 - 8) != v4 || *(v17 - 4) != -1)
        {
          std::vector<long long>::push_back[abi:ne200100](v16, &v31);
        }

        v5 = *(a1 + 44);
      }
    }
  }

  v19 = *(a1 + 72);
  for (j = *(a1 + 80); v19 != j; ++v19)
  {
    v21 = *v19 ^ 1;
    v23 = a2[8];
    v22 = a2[9];
    v24 = (v22 - v23) >> 3;
    v25 = 0xAAAAAAAAAAAAAAABLL * v24;
    if (v21 >= -1431655765 * v24)
    {
      v26 = v21 + 1;
      if (v26 > v25)
      {
        std::vector<std::vector<operations_research::sat::GenericLiteralWatcher::WatchData>>::__append((a2 + 8), v26 - v25);
      }

      else if (v26 < v25)
      {
        v27 = v23 + 24 * v26;
        if (v22 != v27)
        {
          v28 = a2[9];
          do
          {
            v30 = *(v28 - 24);
            v28 -= 24;
            v29 = v30;
            if (v30)
            {
              *(v22 - 16) = v29;
              operator delete(v29);
            }

            v22 = v28;
          }

          while (v28 != v27);
        }

        a2[9] = v27;
      }
    }

    v20 = a2[8] + 24 * v21;
    v31 = v4 | 0xFFFFFFFF00000000;
    std::vector<long long>::push_back[abi:ne200100](v20, &v31);
  }
}

uint64_t operations_research::sat::LevelZeroEquality::LevelZeroEquality(uint64_t a1, unsigned int a2, void *a3, void *a4, void *a5)
{
  *a1 = &unk_284F42238;
  *(a1 + 16) = 0;
  *(a1 + 8) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v8 = a3[1];
  if (v8 != *a3)
  {
    if (((v8 - *a3) & 0x8000000000000000) == 0)
    {
      v9 = v8 - *a3;
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v10 = a4[1] - *a4;
  if (v10)
  {
    if ((v10 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 64) = 1;
  *(a1 + 72) = operations_research::sat::Model::GetOrCreate<operations_research::sat::Trail>(a5);
  *(a1 + 80) = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a5);
  v11 = operations_research::sat::Model::GetOrCreate<operations_research::sat::GenericLiteralWatcher>(a5);
  v12 = operations_research::sat::GenericLiteralWatcher::Register(v11, a1);
  operations_research::sat::GenericLiteralWatcher::SetPropagatorPriority(v11, v12, 2);
  operations_research::sat::GenericLiteralWatcher::WatchIntegerVariable(v11, a2, v12, 0xFFFFFFFF);
  v13 = *(a1 + 16);
  for (i = *(a1 + 24); v13 != i; ++v13)
  {
    operations_research::sat::GenericLiteralWatcher::WatchIntegerVariable(v11, *v13, v12, 0xFFFFFFFF);
  }

  return a1;
}

{
  return operations_research::sat::LevelZeroEquality::LevelZeroEquality(a1, a2, a3, a4, a5);
}

void sub_23CC000F4(_Unwind_Exception *exception_object)
{
  v5 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v5;
    operator delete(v5);
    v6 = *v3;
    if (!*v3)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v6 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 24) = v6;
  operator delete(v6);
  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::LevelZeroEquality::Propagate(operations_research::sat::LevelZeroEquality *this)
{
  if ((*(*(this + 9) + 8) & 0xFFFFFFF) != 0)
  {
    return 1;
  }

  v2 = *(this + 2);
  v3 = *(this + 3);
  v4 = v3 - v2;
  if (v3 == v2)
  {
    return 1;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = v4 >> 2;
  v10 = *(*(this + 10) + 40);
  do
  {
    while (1)
    {
      v11 = 8 * *(v2 + 4 * v5);
      v12 = *(v10 + v11);
      v13 = *(*(this + 5) + 8 * v5);
      if (v12 + *(v10 + (v11 ^ 8)))
      {
        break;
      }

      v8 += v13 * v12;
      v5 = ++v7;
      if (v9 <= v7)
      {
        goto LABEL_17;
      }
    }

    if (v13)
    {
      if (v13 >= 0)
      {
        v14 = v13;
      }

      else
      {
        v14 = -v13;
      }

      do
      {
        v15 = v14;
        v14 = v6 % v14;
        v6 = v15;
      }

      while (v14);
      if (v15 == 1)
      {
        v6 = 1;
        if (*(this + 8) >= 1)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v15 = v6;
    }

    v6 = v15;
    v5 = ++v7;
  }

  while (v9 > v7);
LABEL_17:
  if (!v6)
  {
    return 1;
  }

  if (*(this + 8) < v6)
  {
LABEL_21:
    if (dword_27E25D018 >= 1)
    {
      v30 = this;
      IsEnabled1 = absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::sat::LevelZeroEquality::Propagate(void)::$_0::operator() const(void)::site, dword_27E25D018);
      this = v30;
      if (IsEnabled1)
      {
        v29 = v8;
        absl::lts_20240722::log_internal::LogMessage::LogMessage(v31, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/integer_expr.cc", 529);
        v28 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v31, 1);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v28, "Objective gcd: ", 0xFuLL);
        v32 = v6;
        absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v28, &v32);
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(v31);
        v8 = v29;
        this = v30;
      }
    }
  }

LABEL_22:
  if (*(this + 8) > v6)
  {
    operations_research::sat::LevelZeroEquality::Propagate(v6, this + 8);
  }

  *(this + 8) = v6;
  v16 = *(this + 10);
  v17 = *(this + 2);
  v18 = *(v16 + 40);
  v19 = 8 * v17;
  v20 = *(v18 + v19);
  v21 = (v6 & (((v20 - v8) % v6) >> 63)) + (v20 - v8) % v6;
  if (v21)
  {
    v22 = this;
    result = operations_research::sat::IntegerTrail::Enqueue(*(this + 10), v17, v20 + v6 - v21, 0, 0, 0, 0);
    if (!result)
    {
      return result;
    }

    v16 = *(v22 + 10);
    v17 = *(v22 + 2);
    v18 = *(v16 + 40);
    v19 = 8 * v17;
  }

  v23 = -*(v18 + (v19 ^ 8));
  v24 = (v6 & (((v23 - v8) % v6) >> 63)) + (v23 - v8) % v6;
  if (!v24)
  {
    return 1;
  }

  v25 = v23 - v24;
  v26 = v25 >= 0x8000000000000002 ? -v25 : 0x7FFFFFFFFFFFFFFFLL;
  result = operations_research::sat::IntegerTrail::Enqueue(v16, v17 ^ 1, v26, 0, 0, 0, 0);
  if (result)
  {
    return 1;
  }

  return result;
}

void sub_23CC003D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::LinMinPropagator::LinMinPropagator(uint64_t a1, uint64_t *a2, int a3, void *a4)
{
  *a1 = &unk_284F42268;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::vector<operations_research::sat::LinearExpression>::__init_with_size[abi:ne200100]<operations_research::sat::LinearExpression*,operations_research::sat::LinearExpression*>(a1 + 8, *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 3));
  *(a1 + 40) = 0;
  *(a1 + 32) = a3;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a4;
  *(a1 + 72) = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a4);
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  return a1;
}

void sub_23CC004B0(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 48) = v5;
    operator delete(v5);
  }

  std::vector<operations_research::sat::LinearExpression>::~vector[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::LinMinPropagator::PropagateLinearUpperBound(uint64_t a1, void *a2, uint64_t **a3, uint64_t a4)
{
  v7 = a1;
  v52 = *MEMORY[0x277D85DE8];
  v8 = a2[1] - *a2;
  v9 = *(a1 + 80);
  v10 = (a1 + 80);
  v11 = v8 >> 2;
  v12 = (v8 >> 2);
  v13 = (*(a1 + 88) - v9) >> 3;
  if (v12 <= v13)
  {
    if (v12 < v13)
    {
      *(a1 + 88) = v9 + 8 * v12;
    }
  }

  else
  {
    std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::__append(a1 + 80, v12 - v13);
  }

  v14 = (v8 >> 2) & 0x7FFFFFFF;
  if (v11 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = 0;
    v16 = *a2;
    v17 = *a3;
    v18 = *(v7 + 80);
    v19 = *(*(v7 + 72) + 40);
    v20 = v14;
    do
    {
      v22 = *v17++;
      v21 = v22;
      LODWORD(v22) = *v16++;
      v23 = 8 * v22;
      v24 = *(v19 + v23);
      *v18++ = -(v21 * (*(v19 + (v23 ^ 8)) + v24));
      v15 += v24 * v21;
      --v20;
    }

    while (v20);
  }

  v25 = operations_research::sat::Model::GetOrCreate<operations_research::TimeLimit>(*(v7 + 64));
  *(v25 + 112) = v11 * 0.000000001 + *(v25 + 112);
  v26 = a4 - v15;
  v48 = v14;
  v49 = v7;
  if (a4 - v15 < 0)
  {
    v30 = a3;
    v31 = (v7 + 128);
    *(v7 + 136) = *(v7 + 128);
    v33 = v7 + 104;
    v32 = *(v7 + 104);
    *(v7 + 112) = v32;
    if (v11 < 1)
    {
      v42 = v32;
    }

    else
    {
      v34 = 0;
      v35 = 0;
      do
      {
        v36 = *(*a2 + 4 * v35);
        v37 = *(v7 + 72);
        v38 = *(*(v37 + 64) + 4 * v36);
        v40 = v37 + 40;
        v39 = *(v37 + 40);
        if (v38 >= (*(v40 + 8) - v39) >> 3)
        {
          v41 = *(v39 + 8 * v36);
          *&v50 = *(*a2 + 4 * v35);
          *(&v50 + 1) = v41;
          std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](v31, &v50);
          std::vector<long long>::push_back[abi:ne200100](v33, &(*v30)[v34]);
          v14 = v48;
          v7 = v49;
        }

        ++v35;
        ++v34;
      }

      while (v14 != v35);
      v42 = *(v7 + 104);
      v32 = *(v7 + 112);
    }

    operations_research::sat::IntegerTrail::RelaxLinearReason(*(v7 + 72), ~v26, v42, (v32 - v42) >> 3, v31);
    std::vector<operations_research::sat::IntegerLiteral>::__insert_with_size[abi:ne200100]<std::__wrap_iter<operations_research::sat::IntegerLiteral*>,std::__wrap_iter<operations_research::sat::IntegerLiteral*>>(v31, *(v49 + 136), *(v49 + 152), *(v49 + 160), (*(v49 + 160) - *(v49 + 152)) >> 4);
    v43 = *(v7 + 72);
    v44 = *(v49 + 128);
    v45 = *(v49 + 136);
    v46 = *(v43 + 840);
    *(v46 + 120) = 0;
    std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal const*,operations_research::sat::Literal const*>((v46 + 72), 0, 0, 0);
    operations_research::sat::IntegerTrail::MergeReasonInto(v43, v44, (v45 - v44) >> 4, (v46 + 72));
    result = 0;
    v47 = *MEMORY[0x277D85DE8];
  }

  else
  {
    if (v11 >= 1)
    {
      v27 = 0;
      do
      {
        if (*(*v10 + 8 * v27) > v26)
        {
          *(*(*(v7 + 72) + 40) + 8 * *(*a2 + 4 * v27));
          (*a3)[v27];
          v51 = 0;
          operator new();
        }

        ++v27;
      }

      while (v14 != v27);
    }

    result = 1;
    v29 = *MEMORY[0x277D85DE8];
  }

  return result;
}

void sub_23CC008C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::function<void ()(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)>::~function(va);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::LinMinPropagator::Propagate(operations_research::sat::LinMinPropagator *this)
{
  v3 = *(this + 1);
  if (v3 == *(this + 2))
  {
    return 1;
  }

  v32 = v1;
  v33 = v2;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = this + 40;
  v30 = *(*(*(this + 9) + 40) + ((8 * *(this + 8)) ^ 8));
  v9 = -v30;
  *(this + 6) = *(this + 5);
  v10 = 0x7FFFFFFFFFFFFFFELL;
  v11 = 1;
  do
  {
    *&v31 = operations_research::sat::LinearExpression::Min((v3 + 56 * v5), *(this + 9));
    std::vector<long long>::push_back[abi:ne200100](v8, &v31);
    if (v31 < v10)
    {
      v10 = v31;
    }

    if (v31 <= v9)
    {
      v7 = v11 - 1;
      ++v6;
    }

    v5 = v11;
    v3 = *(this + 1);
    v12 = *(this + 2);
    ++v11;
  }

  while (0x6DB6DB6DB6DB6DB7 * ((v12 - v3) >> 3) > v5);
  v13 = *(this + 9);
  v14 = *(this + 8);
  if (v10 <= v9)
  {
    v15 = v10;
  }

  else
  {
    v15 = 1 - v30;
  }

  if (v15 > *(*(v13 + 40) + 8 * v14))
  {
    v16 = *(this + 16);
    *(this + 17) = v16;
    if (v12 == v3)
    {
      v20 = v16;
    }

    else
    {
      v17 = 0;
      v18 = 1;
      do
      {
        v19 = v3 + 56 * v17;
        operations_research::sat::IntegerTrail::AppendRelaxedLinearReason(*(this + 9), *(*(this + 5) + 8 * v17) - v15, *(v19 + 24), (*(v19 + 32) - *(v19 + 24)) >> 3, *v19, (*(v19 + 8) - *v19) >> 2, this + 128);
        v17 = v18;
        v3 = *(this + 1);
        ++v18;
      }

      while (0x6DB6DB6DB6DB6DB7 * ((*(this + 2) - v3) >> 3) > v17);
      v13 = *(this + 9);
      v14 = *(this + 8);
      v20 = *(this + 16);
      v16 = *(this + 17);
    }

    if ((operations_research::sat::IntegerTrail::Enqueue(v13, v14, v15, 0, 0, v20, (v16 - v20) >> 4) & 1) == 0)
    {
      return 0;
    }
  }

  if (v6 != 1 || operations_research::sat::LinearExpression::Max((*(this + 1) + 56 * v7), *(this + 9)) <= v9)
  {
    return 1;
  }

  if (*(this + 44))
  {
    v22 = *(this + 1);
  }

  else
  {
    *(this + 20) = *(this + 19);
    v23 = *(this + 8);
    v24 = *(*(*(this + 9) + 40) + ((8 * v23) ^ 8));
    if (v24 - 1 > 0x7FFFFFFFFFFFFFFDLL)
    {
      v24 = 0x7FFFFFFFFFFFFFFFLL;
    }

    *&v31 = v23 ^ 1;
    *(&v31 + 1) = v24;
    std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](this + 152, &v31);
    v22 = *(this + 1);
    v25 = *(this + 2);
    if (v25 != v22)
    {
      v26 = 0;
      v27 = 1;
      v28 = v7;
      do
      {
        if (v28)
        {
          v29 = v22 + 56 * v26;
          operations_research::sat::IntegerTrail::AppendRelaxedLinearReason(*(this + 9), v30 - 1 + *(*(this + 5) + 8 * v26), *(v29 + 24), (*(v29 + 32) - *(v29 + 24)) >> 3, *v29, (*(v29 + 8) - *v29) >> 2, this + 152);
          v22 = *(this + 1);
          v25 = *(this + 2);
        }

        v26 = v27;
        --v28;
        ++v27;
      }

      while (0x6DB6DB6DB6DB6DB7 * ((v25 - v22) >> 3) > v26);
    }

    *(this + 44) = 1;
  }

  return operations_research::sat::LinMinPropagator::PropagateLinearUpperBound(this, (v22 + 56 * v7), (v22 + 56 * v7 + 24), v9 - *(v22 + 56 * v7 + 48));
}

void operations_research::sat::LinMinPropagator::RegisterWith(operations_research::sat::LinMinPropagator *this, operations_research::sat::GenericLiteralWatcher *a2)
{
  v4 = operations_research::sat::GenericLiteralWatcher::Register(a2, this);
  v5 = *(this + 1);
  v54 = this;
  v55 = *(this + 2);
  v56 = v4;
  if (v5 != v55)
  {
    v6 = *&v4 | 0xFFFFFFFF00000000;
    while (1)
    {
      v7 = *v5;
      if (v5[1] != *v5)
      {
        break;
      }

LABEL_3:
      v5 += 7;
      if (v5 == v55)
      {
        goto LABEL_59;
      }
    }

    v8 = 0;
    v9 = 0;
    while (1)
    {
      v11 = *(v7 + 4 * v8);
      if (*(v5[3] + 8 * v8) < 1)
      {
        if ((~v11 & 0xFFFFFFFE) == 0)
        {
          goto LABEL_8;
        }

        v18 = (v11 << 32) ^ 0x100000000;
        v11 = v18 >> 32;
        v12 = *(a2 + 11);
        v13 = *(a2 + 12);
        v19 = 0xAAAAAAAAAAAAAAABLL * (&v13[-v12] >> 3);
        if (v19 > v18 >> 32)
        {
          goto LABEL_44;
        }

        v15 = (v18 + 0x100000000) >> 32;
        v16 = v15 - v19;
        if (v15 > v19)
        {
          v17 = *(a2 + 13);
          if (0xAAAAAAAAAAAAAAABLL * ((v17 - v13) >> 3) < v16)
          {
            if (v15 <= 0xAAAAAAAAAAAAAAALL)
            {
              goto LABEL_21;
            }

            goto LABEL_77;
          }

          goto LABEL_34;
        }

        if (v15 < v19)
        {
          v22 = (v12 + 24 * v15);
          if (v13 != v22)
          {
            v26 = *(a2 + 12);
            do
            {
              v28 = *(v26 - 3);
              v26 -= 24;
              v27 = v28;
              if (v28)
              {
                *(v13 - 2) = v27;
                operator delete(v27);
              }

              v13 = v26;
            }

            while (v26 != v22);
          }

          goto LABEL_43;
        }
      }

      else
      {
        if (v11 == -1)
        {
          goto LABEL_8;
        }

        v12 = *(a2 + 11);
        v13 = *(a2 + 12);
        v14 = 0xAAAAAAAAAAAAAAABLL * (&v13[-v12] >> 3);
        if (v14 <= v11)
        {
          v15 = v11 + 1;
          v16 = v15 - v14;
          if (v15 > v14)
          {
            v17 = *(a2 + 13);
            if (0xAAAAAAAAAAAAAAABLL * ((v17 - v13) >> 3) < v16)
            {
              if (v15 <= 0xAAAAAAAAAAAAAAALL)
              {
LABEL_21:
                v20 = 0xAAAAAAAAAAAAAAABLL * ((v17 - v12) >> 3);
                if (2 * v20 > v15)
                {
                  v15 = 2 * v20;
                }

                if (v20 >= 0x555555555555555)
                {
                  v21 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v21 = v15;
                }

                if (v21 <= 0xAAAAAAAAAAAAAAALL)
                {
                  operator new();
                }

                goto LABEL_76;
              }

LABEL_77:
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

LABEL_34:
            if (24 * v16)
            {
              bzero(v13, 24 * v16);
              v13 += 24 * v16;
            }

            *(a2 + 12) = v13;
            goto LABEL_44;
          }

          if (v15 < v14)
          {
            v22 = (v12 + 24 * v15);
            if (v13 != v22)
            {
              v23 = *(a2 + 12);
              do
              {
                v25 = *(v23 - 3);
                v23 -= 24;
                v24 = v25;
                if (v25)
                {
                  *(v13 - 2) = v24;
                  operator delete(v24);
                }

                v13 = v23;
              }

              while (v23 != v22);
            }

LABEL_43:
            *(a2 + 12) = v22;
          }
        }
      }

LABEL_44:
      v29 = *(a2 + 11) + 24 * v11;
      v30 = *v29;
      v31 = *(v29 + 8);
      if (*v29 == v31 || *(v31 - 2) != v56 || *(v31 - 1) != -1)
      {
        v32 = *(v29 + 16);
        if (v31 < v32)
        {
          *v31 = v6;
          v10 = v31 + 1;
        }

        else
        {
          v33 = v31 - v30;
          v34 = (v31 - v30) >> 3;
          v35 = v34 + 1;
          if ((v34 + 1) >> 61)
          {
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          v36 = v32 - v30;
          if (v36 >> 2 > v35)
          {
            v35 = v36 >> 2;
          }

          if (v36 >= 0x7FFFFFFFFFFFFFF8)
          {
            v37 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v37 = v35;
          }

          if (v37)
          {
            if (!(v37 >> 61))
            {
              operator new();
            }

LABEL_76:
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v38 = (v31 - v30) >> 3;
          v39 = (8 * v34);
          v40 = (8 * v34 - 8 * v38);
          *v39 = v6;
          v10 = v39 + 1;
          memcpy(v40, v30, v33);
          *v29 = v40;
          *(v29 + 8) = v10;
          *(v29 + 16) = 0;
          if (v30)
          {
            operator delete(v30);
          }
        }

        *(v29 + 8) = v10;
      }

LABEL_8:
      v8 = ++v9;
      v7 = *v5;
      if (v9 >= ((v5[1] - *v5) >> 2))
      {
        goto LABEL_3;
      }
    }
  }

LABEL_59:
  v41 = *(v54 + 8);
  if ((~v41 & 0xFFFFFFFE) != 0)
  {
    v42 = (v41 << 32) ^ 0x100000000;
    v43 = v42 >> 32;
    v45 = *(a2 + 11);
    v44 = *(a2 + 12);
    v46 = 0xAAAAAAAAAAAAAAABLL * ((v44 - v45) >> 3);
    if (v46 <= v42 >> 32)
    {
      v47 = (v42 + 0x100000000) >> 32;
      if (v47 <= v46)
      {
        if (v47 < v46)
        {
          v48 = v45 + 24 * v47;
          if (v44 != v48)
          {
            v49 = *(a2 + 12);
            do
            {
              v51 = *(v49 - 24);
              v49 -= 24;
              v50 = v51;
              if (v51)
              {
                *(v44 - 16) = v50;
                operator delete(v50);
              }

              v44 = v49;
            }

            while (v49 != v48);
          }

          *(a2 + 12) = v48;
        }
      }

      else
      {
        std::vector<std::vector<operations_research::sat::GenericLiteralWatcher::WatchData>>::__append(a2 + 88, v47 - v46);
      }
    }

    v57 = v56 | 0xFFFFFFFF00000000;
    v52 = (*(a2 + 11) + 24 * v43);
    v53 = v52[1];
    if (*v52 == v53 || *(v53 - 8) != v56 || *(v53 - 4) != -1)
    {
      std::vector<long long>::push_back[abi:ne200100](v52, &v57);
    }
  }

  operations_research::sat::GenericLiteralWatcher::RegisterReversibleInt(a2, v56, v54 + 44);
}

__n128 operations_research::sat::ProductPropagator::ProductPropagator(uint64_t a1, __int128 *a2, __int128 *a3, __n128 *a4, uint64_t a5)
{
  *a1 = &unk_284F42298;
  v5 = *a2;
  *(a1 + 24) = *(a2 + 2);
  *(a1 + 8) = v5;
  v6 = *a3;
  *(a1 + 48) = *(a3 + 2);
  *(a1 + 32) = v6;
  result = *a4;
  v8 = a4[1].n128_u64[0];
  *(a1 + 56) = *a4;
  *(a1 + 72) = v8;
  *(a1 + 80) = a5;
  return result;
}

uint64_t operations_research::sat::ProductPropagator::CanonicalizeCases(operations_research::sat::ProductPropagator *this)
{
  v41 = *MEMORY[0x277D85DE8];
  v1 = *(this + 10);
  v2 = *(this + 2);
  v4 = *(this + 2);
  v3 = *(this + 3);
  if (v2 == -1)
  {
    v2 = -1;
    if (v3 >= 1)
    {
      goto LABEL_13;
    }

    v4 = 0;
    v3 = -v3;
    *(this + 2) = -1;
    *(this + 2) = 0;
    *(this + 3) = v3;
    v5 = *(this + 14);
    if (v5 != -1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (v3 - *(v1[5] + ((8 * v2) ^ 8)) * v4 > 0)
    {
      goto LABEL_13;
    }

    v2 ^= (v4 >> 63) ^ 1;
    if (v4 < 0)
    {
      v4 = -v4;
    }

    v3 = -v3;
    *(this + 2) = v2;
    *(this + 2) = v4;
    *(this + 3) = v3;
    v5 = *(this + 14);
    if (v5 != -1)
    {
LABEL_6:
      v6 = *(this + 8);
      v5 ^= (v6 >> 63) ^ 1;
      if (v6 < 0)
      {
        v6 = -v6;
      }

      goto LABEL_12;
    }
  }

  v6 = 0;
LABEL_12:
  v7 = -*(this + 9);
  *(this + 14) = v5;
  *(this + 8) = v6;
  *(this + 9) = v7;
LABEL_13:
  v8 = *(this + 8);
  v10 = *(this + 5);
  v9 = *(this + 6);
  if (v8 == -1)
  {
    v8 = -1;
    if (v9 >= 1)
    {
      goto LABEL_25;
    }

    v10 = 0;
    v9 = -v9;
    *(this + 8) = -1;
    *(this + 5) = 0;
    *(this + 6) = v9;
    v11 = *(this + 14);
    if (v11 != -1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v9 - *(v1[5] + ((8 * v8) ^ 8)) * v10 > 0)
    {
      goto LABEL_25;
    }

    v8 ^= (v10 >> 63) ^ 1;
    if (v10 < 0)
    {
      v10 = -v10;
    }

    v9 = -v9;
    *(this + 8) = v8;
    *(this + 5) = v10;
    *(this + 6) = v9;
    v11 = *(this + 14);
    if (v11 != -1)
    {
LABEL_18:
      v12 = *(this + 8);
      v11 ^= (v12 >> 63) ^ 1;
      if (v12 < 0)
      {
        v12 = -v12;
      }

      goto LABEL_24;
    }
  }

  v12 = 0;
LABEL_24:
  v13 = -*(this + 9);
  *(this + 14) = v11;
  *(this + 8) = v12;
  *(this + 9) = v13;
LABEL_25:
  v14 = v3;
  if (v2 != -1)
  {
    v14 = v3 + *(v1[5] + 8 * v2) * v4;
  }

  if (v14 < 0)
  {
    goto LABEL_43;
  }

  v15 = v9;
  if (v8 != -1)
  {
    v15 = v9 + *(v1[5] + 8 * v8) * v10;
  }

  if (v15 < 0)
  {
LABEL_43:
    v25 = *(this + 14);
    v27 = *(this + 8);
    v26 = *(this + 9);
    if (v25 == -1)
    {
      if (v26 <= 0)
      {
        goto LABEL_47;
      }
    }

    else if (v26 - *(v1[5] + ((8 * v25) ^ 8)) * v27 <= 0)
    {
LABEL_47:
      if (v2 == -1)
      {
        if (v3 < 0)
        {
          v29 = 0;
          v28 = -1;
          goto LABEL_74;
        }
      }

      else if (v3 + *(v1[5] + 8 * v2) * v4 < 0)
      {
        v28 = v2 ^ (v4 >> 63) ^ 1;
        if (v4 >= 0)
        {
          v29 = v4;
        }

        else
        {
          v29 = -v4;
        }

LABEL_74:
        *(this + 2) = v28;
        *(this + 2) = v29;
        *(this + 3) = -v3;
        if (v25 != -1)
        {
LABEL_75:
          v35 = v25 ^ (v27 >> 63) ^ 1;
          if (v27 >= 0)
          {
            v34 = v27;
          }

          else
          {
            v34 = -v27;
          }

          goto LABEL_78;
        }

LABEL_72:
        v34 = 0;
        v35 = -1;
LABEL_78:
        *(this + 14) = v35;
        *(this + 8) = v34;
        *(this + 9) = -v26;
        goto LABEL_79;
      }

      if (v8 == -1)
      {
        *(this + 8) = -1;
        *(this + 5) = 0;
        *(this + 6) = -v9;
        if (v25 != -1)
        {
          goto LABEL_75;
        }
      }

      else
      {
        if (v10 >= 0)
        {
          v33 = v10;
        }

        else
        {
          v33 = -v10;
        }

        *(this + 8) = v8 ^ (v10 >> 63) ^ 1;
        *(this + 5) = v33;
        *(this + 6) = -v9;
        if (v25 != -1)
        {
          goto LABEL_75;
        }
      }

      goto LABEL_72;
    }

LABEL_79:
    result = 1;
    goto LABEL_80;
  }

  v16 = *(this + 14);
  if (v16 != -1)
  {
    v17 = *(this + 8);
    v18 = -*(this + 9);
    if (v18 / v17 * v17 >= v18)
    {
      v19 = v18 / v17;
    }

    else
    {
      v19 = v18 / v17 + 1;
    }

    if (v2 != -1)
    {
      goto LABEL_36;
    }

LABEL_56:
    v30 = v3 < 0;
    v31 = 1;
    if (!v30)
    {
      v31 = -1;
    }

    v37 = 0xFFFFFFFFLL;
    v38 = v31;
    if (v8 != -1)
    {
      goto LABEL_40;
    }

LABEL_59:
    if (v9 < 0)
    {
      v24 = 1;
    }

    else
    {
      v24 = -1;
    }

    v22 = 0xFFFFFFFFLL;
    goto LABEL_63;
  }

  if (*(this + 9) < 0)
  {
    v19 = 1;
  }

  else
  {
    v19 = -1;
  }

  v16 = 0xFFFFFFFFLL;
  if (v2 == -1)
  {
    goto LABEL_56;
  }

LABEL_36:
  v20 = -v3;
  if (v20 / v4 * v4 >= v20)
  {
    v21 = v20 / v4;
  }

  else
  {
    v21 = v20 / v4 + 1;
  }

  v37 = v2;
  v38 = v21;
  if (v8 == -1)
  {
    goto LABEL_59;
  }

LABEL_40:
  v22 = v8;
  v23 = -v9 / v10;
  if (v23 * v10 >= -v9)
  {
    v24 = -v9 / v10;
  }

  else
  {
    v24 = v23 + 1;
  }

LABEL_63:
  v39 = v22;
  v40 = v24;
  result = operations_research::sat::IntegerTrail::SafeEnqueue(v1, v16, v19, &v37, 2);
LABEL_80:
  v36 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t operations_research::sat::ProductPropagator::PropagateWhenAllNonNegative(operations_research::sat::ProductPropagator *this)
{
  v100 = *MEMORY[0x277D85DE8];
  v3 = (this + 8);
  v2 = *(this + 2);
  v4 = *(this + 10);
  v6 = *(v3 + 1);
  v5 = *(v3 + 2);
  v7 = v5;
  if (v2 != -1)
  {
    v7 = v5 - *(v4[5] + ((8 * v2) ^ 8)) * v6;
  }

  v8 = *(this + 8);
  v9 = *(this + 5);
  v10 = *(this + 6);
  if (v8 == -1)
  {
    v11 = *(this + 6);
  }

  else
  {
    v11 = v10 - *(v4[5] + ((8 * v8) ^ 8)) * v9;
  }

  if ((v7 * v11) >> 64 == (v7 * v11) >> 63)
  {
    v12 = v7 * v11;
  }

  else
  {
    v12 = ((v11 ^ v7) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
  }

  v13 = *(this + 14);
  v14 = *(this + 9);
  if (v13 != -1)
  {
    v15 = *(this + 8);
    if (v12 >= v14 - *(v4[5] + ((8 * v13) ^ 8)) * v15)
    {
      goto LABEL_41;
    }

    v16 = (v12 - v14) / v15 - ((v12 - v14) / v15 * v15 > v12 - v14);
    if (v16 >= 0x8000000000000002)
    {
      v17 = -v16;
    }

    else
    {
      v17 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v18 = v13 ^ 1u;
    if (v2 != -1)
    {
      goto LABEL_15;
    }

LABEL_30:
    v93 = 0xFFFFFFFFLL;
    v94 = -1;
    if (v8 != -1)
    {
      goto LABEL_18;
    }

LABEL_31:
    *&v95 = 0xFFFFFFFFLL;
    *(&v95 + 1) = -1;
    if (v2 != -1)
    {
      goto LABEL_21;
    }

LABEL_32:
    if (v5 < 0)
    {
      v25 = 1;
    }

    else
    {
      v25 = -1;
    }

    v96 = 0xFFFFFFFFLL;
    v97 = v25;
    if (v8 != -1)
    {
      goto LABEL_25;
    }

LABEL_36:
    v24 = 1;
    if (v10 >= 0)
    {
      v24 = -1;
    }

    v8 = 0xFFFFFFFFLL;
    goto LABEL_39;
  }

  if (v12 >= v14)
  {
    goto LABEL_41;
  }

  v17 = 1;
  v18 = 0xFFFFFFFFLL;
  if (v2 == -1)
  {
    goto LABEL_30;
  }

LABEL_15:
  v19 = *(v4[5] + ((8 * v2) ^ 8));
  if (v19 - 1 > 0x7FFFFFFFFFFFFFFDLL)
  {
    v19 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v93 = v2 ^ 1;
  v94 = v19;
  if (v8 == -1)
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = *(v4[5] + ((8 * v8) ^ 8));
  if (v20 - 1 > 0x7FFFFFFFFFFFFFFDLL)
  {
    v20 = 0x7FFFFFFFFFFFFFFFLL;
  }

  *&v95 = v8 ^ 1;
  *(&v95 + 1) = v20;
  if (v2 == -1)
  {
    goto LABEL_32;
  }

LABEL_21:
  v21 = -v5;
  if (v21 / v6 * v6 >= v21)
  {
    v22 = v21 / v6;
  }

  else
  {
    v22 = v21 / v6 + 1;
  }

  v96 = v2;
  v97 = v22;
  if (v8 == -1)
  {
    goto LABEL_36;
  }

LABEL_25:
  v23 = -v10 / v9;
  if (v23 * v9 >= -v10)
  {
    v24 = -v10 / v9;
  }

  else
  {
    v24 = v23 + 1;
  }

LABEL_39:
  v98 = v8;
  v99 = v24;
  result = operations_research::sat::IntegerTrail::SafeEnqueue(v4, v18, v17, &v93, 4);
  if (!result)
  {
    goto LABEL_153;
  }

  v4 = *(this + 10);
  LODWORD(v2) = *(this + 2);
  v5 = *(this + 3);
LABEL_41:
  if (v2 != -1)
  {
    v5 += *(v4[5] + 8 * v2) * *(this + 2);
  }

  v27 = *(this + 8);
  v28 = *(this + 6);
  if (v27 != -1)
  {
    v28 += *(v4[5] + 8 * v27) * *(this + 5);
  }

  if ((v5 * v28) >> 64 == (v5 * v28) >> 63)
  {
    v29 = v5 * v28;
  }

  else
  {
    v29 = ((v28 ^ v5) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
  }

  v30 = *(this + 14);
  v31 = *(this + 9);
  if (v30 == -1)
  {
    if (v29 > v31)
    {
      v93 = 0xFFFFFFFFLL;
      v94 = -1;
      if (v2 != -1)
      {
        goto LABEL_53;
      }

      goto LABEL_57;
    }

    goto LABEL_70;
  }

  v32 = *(this + 8);
  v33 = v4[5];
  v34 = *(v33 + ((8 * v30) ^ 8));
  if (v29 > v31 - v34 * v32)
  {
    v35 = 0x7FFFFFFFFFFFFFFFLL;
    if (v34 - 1 <= 0x7FFFFFFFFFFFFFFDLL)
    {
      v35 = v34;
    }

    v93 = v30 ^ 1;
    v94 = v35;
    if (v2 != -1)
    {
LABEL_53:
      v36 = *(v4[5] + 8 * v2);
      *&v95 = v2;
      *(&v95 + 1) = v36;
      if (v27 != -1)
      {
LABEL_54:
        v37 = *(v4[5] + 8 * v27);
LABEL_59:
        v96 = v27;
        v97 = v37;
        v38 = v4[105];
        v39 = *(v38 + 72);
        v38 += 72;
        *(v38 + 48) = 0;
        *(v38 + 8) = v39;
        operations_research::sat::IntegerTrail::MergeReasonInto(v4, &v93, 3, v38);
        result = 0;
        v40 = *MEMORY[0x277D85DE8];
        return result;
      }

LABEL_58:
      v37 = -1;
      v27 = 0xFFFFFFFFLL;
      goto LABEL_59;
    }

LABEL_57:
    *&v95 = 0xFFFFFFFFLL;
    *(&v95 + 1) = -1;
    if (v27 != -1)
    {
      goto LABEL_54;
    }

    goto LABEL_58;
  }

  if (v29 > v31 + *(v33 + 8 * v30) * v32)
  {
    v41 = v29 - v31;
    if (v41 / v32 * v32 >= v41)
    {
      v42 = v41 / v32;
    }

    else
    {
      v42 = v41 / v32 + 1;
    }

    if (v2 == -1)
    {
      v93 = 0xFFFFFFFFLL;
      v94 = -1;
      if (v27 != -1)
      {
        goto LABEL_66;
      }
    }

    else
    {
      v43 = *(v33 + 8 * v2);
      v93 = v2;
      v94 = v43;
      if (v27 != -1)
      {
LABEL_66:
        v44 = *(v33 + 8 * v27);
        goto LABEL_69;
      }
    }

    v44 = -1;
    v27 = 0xFFFFFFFFLL;
LABEL_69:
    *&v95 = v27;
    *(&v95 + 1) = v44;
    result = operations_research::sat::IntegerTrail::SafeEnqueue(v4, v30, v42, &v93, 2);
    if (result)
    {
      goto LABEL_70;
    }

LABEL_153:
    v91 = *MEMORY[0x277D85DE8];
    return result;
  }

LABEL_70:
  v45 = 1;
  do
  {
    while (1)
    {
      v46 = v45;
      v47 = (v45 & 1) == 0;
      v48 = (v45 & 1) != 0 ? 8 : 32;
      v49 = v47 ? (this + 32) : v3;
      v50 = *(this + v48);
      v52 = *(v49 + 1);
      v51 = *(v49 + 2);
      v53 = v47 ? 8 : 32;
      v54 = v47 ? v3 : (this + 32);
      v55 = *(this + 10);
      if (v50 == -1)
      {
        v56 = v51;
        v57 = *(this + v53);
        v59 = *(v54 + 1);
        v58 = *(v54 + 2);
        if (v57 != -1)
        {
LABEL_86:
          v60 = v58 + *(v55[5] + 8 * v57) * v59;
          v61 = *(this + 14);
          v62 = *(this + 8);
          v63 = *(this + 9);
          if (v61 != -1)
          {
            goto LABEL_87;
          }

          goto LABEL_90;
        }
      }

      else
      {
        v56 = v51 - *(v55[5] + ((8 * v50) ^ 8)) * v52;
        v57 = *(this + v53);
        v59 = *(v54 + 1);
        v58 = *(v54 + 2);
        if (v57 != -1)
        {
          goto LABEL_86;
        }
      }

      v60 = v58;
      v61 = *(this + 14);
      v62 = *(this + 8);
      v63 = *(this + 9);
      if (v61 != -1)
      {
LABEL_87:
        v64 = v55[5];
        v65 = 8 * v61;
        v66 = v63 + *(v64 + v65) * v62;
        v67 = v63 - *(v64 + (v65 ^ 8)) * v62;
        goto LABEL_91;
      }

LABEL_90:
      v66 = v63;
      v67 = v63;
LABEL_91:
      v68 = ((v60 ^ v56) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
      if ((v56 * v60) >> 64 == (v56 * v60) >> 63)
      {
        v68 = v56 * v60;
      }

      if (v68 <= v67)
      {
        break;
      }

      v69 = v67 / v60 - (v67 / v60 * v60 > v67);
      v70 = (v69 - v51) / v52 - ((v69 - v51) / v52 * v52 > v69 - v51);
      if (v70 >= 0x8000000000000002)
      {
        v71 = -v70;
      }

      else
      {
        v71 = 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v69 < v51)
      {
        v72 = 1;
      }

      else
      {
        v72 = -1;
      }

      if (v50 == -1)
      {
        v73 = 0xFFFFFFFFLL;
      }

      else
      {
        v73 = v50 ^ 1;
      }

      if (v50 == -1)
      {
        v74 = v72;
      }

      else
      {
        v74 = v71;
      }

      if (v57 == -1)
      {
        v93 = 0xFFFFFFFFLL;
        v94 = -1;
        if (v61 != -1)
        {
LABEL_108:
          v76 = *(v55[5] + ((8 * v61) ^ 8));
          if (v76 - 1 > 0x7FFFFFFFFFFFFFFDLL)
          {
            v76 = 0x7FFFFFFFFFFFFFFFLL;
          }

          *&v95 = v61 ^ 1;
          *(&v95 + 1) = v76;
          v77 = -v63 / v62;
          if (v77 * v62 >= -v63)
          {
            v78 = -v63 / v62;
          }

          else
          {
            v78 = v77 + 1;
          }

          goto LABEL_144;
        }
      }

      else
      {
        v75 = *(v55[5] + 8 * v57);
        v93 = v57;
        v94 = v75;
        if (v61 != -1)
        {
          goto LABEL_108;
        }
      }

      v95 = xmmword_23CE49C10;
      if (v63 < 0)
      {
        v78 = 1;
      }

      else
      {
        v78 = -1;
      }

      v61 = 0xFFFFFFFFLL;
LABEL_144:
      v96 = v61;
      v97 = v78;
      result = operations_research::sat::IntegerTrail::SafeEnqueue(v55, v73, v74, &v93, 3);
LABEL_152:
      v45 = 0;
      if ((result & v46 & 1) == 0)
      {
        goto LABEL_153;
      }
    }

    if (v68 < v66 && v56 != 0)
    {
      v80 = v66 / v56;
      if (v66 / v56 * v56 < v66)
      {
        ++v80;
      }

      v81 = (v80 - v58) / v59;
      if (v81 * v59 >= v80 - v58)
      {
        v82 = (v80 - v58) / v59;
      }

      else
      {
        v82 = v81 + 1;
      }

      if (v80 > v58)
      {
        v83 = 1;
      }

      else
      {
        v83 = -1;
      }

      if (v57 == -1)
      {
        v84 = 0xFFFFFFFFLL;
      }

      else
      {
        v84 = v57;
      }

      if (v57 == -1)
      {
        v85 = v83;
      }

      else
      {
        v85 = v82;
      }

      if (v50 == -1)
      {
        v93 = 0xFFFFFFFFLL;
        v94 = -1;
        if (v61 != -1)
        {
          goto LABEL_135;
        }
      }

      else
      {
        v86 = *(v55[5] + ((8 * v50) ^ 8));
        if (v86 - 1 > 0x7FFFFFFFFFFFFFFDLL)
        {
          v86 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v93 = v50 ^ 1;
        v94 = v86;
        if (v61 != -1)
        {
LABEL_135:
          v87 = *(v55[5] + 8 * v61);
          *&v95 = v61;
          *(&v95 + 1) = v87;
          if (v50 != -1)
          {
LABEL_136:
            v88 = -v51;
            v89 = -v51 / v52;
            if (v89 * v52 >= v88)
            {
              v90 = v89;
            }

            else
            {
              v90 = v89 + 1;
            }

LABEL_151:
            v96 = v50;
            v97 = v90;
            result = operations_research::sat::IntegerTrail::SafeEnqueue(v55, v84, v85, &v93, 3);
            goto LABEL_152;
          }

LABEL_147:
          if (v51 < 0)
          {
            v90 = 1;
          }

          else
          {
            v90 = -1;
          }

          v50 = 0xFFFFFFFFLL;
          goto LABEL_151;
        }
      }

      *&v95 = 0xFFFFFFFFLL;
      *(&v95 + 1) = -1;
      if (v50 != -1)
      {
        goto LABEL_136;
      }

      goto LABEL_147;
    }

    v45 = 0;
  }

  while ((v46 & 1) != 0);
  result = 1;
  v92 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t operations_research::sat::ProductPropagator::PropagateMaxOnPositiveProduct(uint64_t a1, unsigned int *a2, unsigned int *a3, uint64_t a4, uint64_t a5)
{
  v53 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 80);
  v7 = *a2;
  v9 = *(a2 + 1);
  v8 = *(a2 + 2);
  if (v7 == -1)
  {
    v10 = *(a2 + 2);
    if (v8 < 1)
    {
      goto LABEL_77;
    }
  }

  else
  {
    v10 = v8 - *(v6[5] + ((8 * v7) ^ 8)) * v9;
    if (v10 < 1)
    {
      goto LABEL_77;
    }
  }

  if (v10 < a4)
  {
    v11 = a4 / v10;
    if ((a4 / v10 * v10) < a4)
    {
      ++v11;
    }

    v12 = *a3;
    v13 = *(a3 + 2);
    if (v12 == -1)
    {
      if (v11 > v13)
      {
        if (v13 > 0)
        {
          v15 = 1;
        }

        else
        {
          v15 = -1;
        }

        v16 = 0xFFFFFFFFLL;
        v17 = *(a1 + 56);
        if (v17 != -1)
        {
LABEL_14:
          v18 = *(v6[5] + 8 * v17);
          v47 = v17;
          v48 = v18;
          if (v7 != -1)
          {
            goto LABEL_15;
          }

          goto LABEL_46;
        }

LABEL_45:
        v47 = 0xFFFFFFFFLL;
        v48 = -1;
        if (v7 != -1)
        {
LABEL_15:
          v19 = *(v6[5] + ((8 * v7) ^ 8));
          if (v19 - 1 > 0x7FFFFFFFFFFFFFFDLL)
          {
            v19 = 0x7FFFFFFFFFFFFFFFLL;
          }

          v49 = v7 ^ 1;
          v50 = v19;
          if (v12 != -1)
          {
            goto LABEL_18;
          }

          goto LABEL_47;
        }

LABEL_46:
        v49 = 0xFFFFFFFFLL;
        v50 = -1;
        if (v12 != -1)
        {
LABEL_18:
          v20 = *(v6[5] + ((8 * v12) ^ 8));
          if (v20 - 1 > 0x7FFFFFFFFFFFFFFDLL)
          {
            v20 = 0x7FFFFFFFFFFFFFFFLL;
          }

          v21 = v12 ^ 1;
          goto LABEL_48;
        }

LABEL_47:
        v20 = -1;
        v21 = 0xFFFFFFFFLL;
LABEL_48:
        v51 = v21;
        v52 = v20;
        result = operations_research::sat::IntegerTrail::SafeEnqueue(v6, v16, v15, &v47, 3);
        goto LABEL_78;
      }
    }

    else
    {
      v14 = *(a3 + 1);
      if (v11 > v13 - *(v6[5] + ((8 * v12) ^ 8)) * v14)
      {
        if (-v13 / v14 - (-v13 / v14 * v14 > -v13) >= 0x8000000000000002)
        {
          v15 = (-v13 / v14 * v14 > -v13) - -v13 / v14;
        }

        else
        {
          v15 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v16 = v12 ^ 1;
        v17 = *(a1 + 56);
        if (v17 != -1)
        {
          goto LABEL_14;
        }

        goto LABEL_45;
      }
    }

    v37 = a5 / v11 - (a5 / v11 * v11 > a5);
    if (v7 == -1)
    {
      if (v37 >= v8)
      {
        goto LABEL_77;
      }

      v39 = 1;
      v40 = 0xFFFFFFFFLL;
      v41 = *(a1 + 56);
      if (v41 != -1)
      {
        goto LABEL_55;
      }
    }

    else
    {
      if (v37 >= v8 - *(v6[5] + ((8 * v7) ^ 8)) * v9)
      {
        goto LABEL_77;
      }

      v38 = (v37 - v8) / v9 - ((v37 - v8) / v9 * v9 > v37 - v8);
      if (v38 >= 0x8000000000000002)
      {
        v39 = -v38;
      }

      else
      {
        v39 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v40 = v7 ^ 1;
      v41 = *(a1 + 56);
      if (v41 != -1)
      {
LABEL_55:
        v42 = *(v6[5] + 8 * v41);
        v47 = v41;
        v48 = v42;
        if (v7 != -1)
        {
          goto LABEL_56;
        }

        goto LABEL_74;
      }
    }

    v47 = 0xFFFFFFFFLL;
    v48 = -1;
    if (v7 != -1)
    {
LABEL_56:
      v43 = *(v6[5] + ((8 * v7) ^ 8));
      if (v43 - 1 > 0x7FFFFFFFFFFFFFFDLL)
      {
        v43 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v49 = v7 ^ 1;
      v50 = v43;
      if (v41 != -1)
      {
        goto LABEL_59;
      }

      goto LABEL_75;
    }

LABEL_74:
    v49 = 0xFFFFFFFFLL;
    v50 = -1;
    if (v41 != -1)
    {
LABEL_59:
      v44 = *(v6[5] + ((8 * v41) ^ 8));
      if (v44 - 1 > 0x7FFFFFFFFFFFFFFDLL)
      {
        v44 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v45 = v41 ^ 1;
LABEL_76:
      v51 = v45;
      v52 = v44;
      result = operations_research::sat::IntegerTrail::SafeEnqueue(v6, v40, v39, &v47, 3);
      if (!result)
      {
        goto LABEL_78;
      }

LABEL_77:
      result = 1;
      goto LABEL_78;
    }

LABEL_75:
    v44 = -1;
    v45 = 0xFFFFFFFFLL;
    goto LABEL_76;
  }

  if (v10 <= a5)
  {
    goto LABEL_77;
  }

  v22 = (a5 - v8) / v9 - ((a5 - v8) / v9 * v9 > a5 - v8);
  if (v22 >= 0x8000000000000002)
  {
    v23 = -v22;
  }

  else
  {
    v23 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v24 = a5 < v8;
  v25 = 1;
  if (!v24)
  {
    v25 = -1;
  }

  v26 = v7 == -1 ? 0xFFFFFFFFLL : v7 ^ 1;
  v27 = v7 == -1 ? v25 : v23;
  v28 = *(a1 + 56);
  v29 = *(a1 + 72);
  if (v28 == -1)
  {
    v31 = a5 < v29 ? 1 : -1;
    v35 = v29 < 1 ? 1 : -1;
    v32 = 0xFFFFFFFFLL;
    v28 = 0xFFFFFFFFLL;
  }

  else
  {
    v30 = *(a1 + 64);
    v31 = (a5 - v29) / v30 - ((a5 - v29) / v30 * v30 > a5 - v29) >= 0x8000000000000002 ? ((a5 - v29) / v30 * v30 > a5 - v29) - (a5 - v29) / v30 : 0x7FFFFFFFFFFFFFFFLL;
    v32 = v28 ^ 1;
    v33 = 1 - v29;
    v34 = (1 - v29) / v30;
    v35 = v34 * v30 >= v33 ? v34 : v34 + 1;
  }

  v47 = v32;
  v48 = v31;
  v49 = v28;
  v50 = v35;
  result = operations_research::sat::IntegerTrail::SafeEnqueue(v6, v26, v27, &v47, 2);
  if (result)
  {
    goto LABEL_77;
  }

LABEL_78:
  v46 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t operations_research::sat::ProductPropagator::Propagate(operations_research::sat::ProductPropagator *this)
{
  v170 = *MEMORY[0x277D85DE8];
  result = operations_research::sat::ProductPropagator::CanonicalizeCases(this);
  if (!result)
  {
LABEL_322:
    v152 = *MEMORY[0x277D85DE8];
    return result;
  }

  v3 = *(this + 2);
  v4 = *(this + 10);
  v6 = *(this + 2);
  v5 = *(this + 3);
  v157 = (this + 8);
  v7 = v5;
  if (v3 != -1)
  {
    v7 = v5 + *(v4[5] + 8 * v3) * v6;
  }

  v8 = *(this + 8);
  v156 = (this + 32);
  v10 = *(this + 5);
  v9 = *(this + 6);
  v11 = v9;
  if (v8 != -1)
  {
    v11 = v9 + *(v4[5] + 8 * v8) * v10;
  }

  if ((v7 & 0x8000000000000000) != 0 || (v11 & 0x8000000000000000) != 0)
  {
    if (v3 != -1)
    {
      v5 -= *(v4[5] + ((8 * v3) ^ 8)) * v6;
    }

    if (v8 != -1)
    {
      v9 -= *(v4[5] + ((8 * v8) ^ 8)) * v10;
    }

    if ((v5 * v9) >> 64 == (v5 * v9) >> 63)
    {
      v13 = v5 * v9;
    }

    else
    {
      v13 = ((v9 ^ v5) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
    }

    if ((v5 * v11) >> 64 == (v5 * v11) >> 63)
    {
      v14 = v5 * v11;
    }

    else
    {
      v14 = ((v5 ^ v11) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
    }

    if ((v7 * v9) >> 64 == (v7 * v9) >> 63)
    {
      v15 = v7 * v9;
    }

    else
    {
      v15 = ((v9 ^ v7) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
    }

    if ((v7 * v11) >> 64 == (v7 * v11) >> 63)
    {
      v16 = v7 * v11;
    }

    else
    {
      v16 = ((v11 ^ v7) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v13 <= v14)
    {
      v17 = v14;
    }

    else
    {
      v17 = v13;
    }

    if (v17 <= v15)
    {
      v17 = v15;
    }

    if (v17 <= v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = v17;
    }

    v19 = *(this + 14);
    v20 = *(this + 8);
    v21 = *(this + 9);
    if (v19 == -1)
    {
      v24 = 0xFFFFFFFFLL;
      if (v18 >= v21)
      {
        LODWORD(v19) = -1;
        goto LABEL_58;
      }

      v23 = 1;
      if (v3 != -1)
      {
LABEL_41:
        v25 = *(v4[5] + 8 * v3);
        v162 = *(this + 2);
        v163 = v25;
        if (v8 != -1)
        {
          goto LABEL_42;
        }

        goto LABEL_52;
      }
    }

    else
    {
      if (v18 >= v21 - *(v4[5] + ((8 * v19) ^ 8)) * v20)
      {
        goto LABEL_58;
      }

      v22 = (v18 - v21) / v20 - ((v18 - v21) / v20 * v20 > v18 - v21);
      if (v22 >= 0x8000000000000002)
      {
        v23 = -v22;
      }

      else
      {
        v23 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v24 = v19 ^ 1;
      if (v3 != -1)
      {
        goto LABEL_41;
      }
    }

    v162 = 0xFFFFFFFFLL;
    v163 = -1;
    if (v8 != -1)
    {
LABEL_42:
      v26 = *(v4[5] + 8 * v8);
      v164 = v8;
      v165 = v26;
      if (v3 != -1)
      {
        goto LABEL_43;
      }

      goto LABEL_53;
    }

LABEL_52:
    v164 = 0xFFFFFFFFLL;
    v165 = -1;
    if (v3 != -1)
    {
LABEL_43:
      v27 = *(v4[5] + ((8 * v3) ^ 8));
      if (v27 - 1 > 0x7FFFFFFFFFFFFFFDLL)
      {
        v27 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v166 = v3 ^ 1;
      v167 = v27;
      if (v8 != -1)
      {
        goto LABEL_46;
      }

      goto LABEL_54;
    }

LABEL_53:
    v166 = 0xFFFFFFFFLL;
    v167 = -1;
    if (v8 != -1)
    {
LABEL_46:
      v28 = *(v4[5] + ((8 * v8) ^ 8));
      if (v28 - 1 > 0x7FFFFFFFFFFFFFFDLL)
      {
        v28 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v29 = v8 ^ 1;
      goto LABEL_55;
    }

LABEL_54:
    v28 = -1;
    v29 = 0xFFFFFFFFLL;
LABEL_55:
    v168 = v29;
    v169 = v28;
    result = operations_research::sat::IntegerTrail::SafeEnqueue(v4, v24, v23, &v162, 4);
    if (!result)
    {
      goto LABEL_322;
    }

    v21 = *(this + 9);
    v4 = *(this + 10);
    LODWORD(v19) = *(this + 14);
    v20 = *(this + 8);
LABEL_58:
    if (v14 >= v13)
    {
      v30 = v13;
    }

    else
    {
      v30 = v14;
    }

    if (v15 < v30)
    {
      v30 = v15;
    }

    if (v16 < v30)
    {
      v30 = v16;
    }

    if (v19 == -1)
    {
      if (v30 <= v21)
      {
        goto LABEL_89;
      }

      v33 = 1;
      v31 = 0xFFFFFFFFLL;
      v34 = *v157;
      if (v34 != -1)
      {
LABEL_71:
        v35 = *(v4[5] + 8 * v34);
        v162 = v34;
        v163 = v35;
        v36 = *v156;
        if (v36 != -1)
        {
          goto LABEL_72;
        }

        goto LABEL_82;
      }
    }

    else
    {
      v31 = v19;
      if (v30 <= v21 + *(v4[5] + 8 * v19) * v20)
      {
        goto LABEL_87;
      }

      v32 = v30 - v21;
      if (v32 / v20 * v20 >= v32)
      {
        v33 = v32 / v20;
      }

      else
      {
        v33 = v32 / v20 + 1;
      }

      v34 = *v157;
      if (v34 != -1)
      {
        goto LABEL_71;
      }
    }

    v162 = 0xFFFFFFFFLL;
    v163 = -1;
    v36 = *v156;
    if (v36 != -1)
    {
LABEL_72:
      v37 = *(v4[5] + 8 * v36);
      v164 = v36;
      v165 = v37;
      if (v34 != -1)
      {
        goto LABEL_73;
      }

      goto LABEL_83;
    }

LABEL_82:
    v164 = 0xFFFFFFFFLL;
    v165 = -1;
    if (v34 != -1)
    {
LABEL_73:
      v38 = *(v4[5] + ((8 * v34) ^ 8));
      if (v38 - 1 > 0x7FFFFFFFFFFFFFFDLL)
      {
        v38 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v166 = v34 ^ 1;
      v167 = v38;
      if (v36 != -1)
      {
        goto LABEL_76;
      }

      goto LABEL_84;
    }

LABEL_83:
    v166 = 0xFFFFFFFFLL;
    v167 = -1;
    if (v36 != -1)
    {
LABEL_76:
      v39 = *(v4[5] + ((8 * v36) ^ 8));
      if (v39 - 1 > 0x7FFFFFFFFFFFFFFDLL)
      {
        v39 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v40 = v36 ^ 1;
LABEL_85:
      v168 = v40;
      v169 = v39;
      result = operations_research::sat::IntegerTrail::SafeEnqueue(v4, v31, v33, &v162, 4);
      if (!result)
      {
        goto LABEL_322;
      }

      v21 = *(this + 9);
      v4 = *(this + 10);
      LODWORD(v19) = *(this + 14);
      v20 = *(this + 8);
      if (v19 != -1)
      {
LABEL_87:
        v41 = 0;
        v42 = v19;
        v43 = v4[5];
        v44 = 8 * v19;
        v45 = v21 + *(v43 + v44) * v20;
        v161 = v45;
        v46 = v21 - *(v43 + (v44 ^ 8)) * v20;
        v154 = v45;
        v155 = v46;
        if (v45 < 1)
        {
          goto LABEL_164;
        }

        goto LABEL_90;
      }

LABEL_89:
      v161 = v21;
      v41 = 1;
      v42 = 0xFFFFFFFFLL;
      v45 = v21;
      v46 = v21;
      v154 = v21;
      v155 = v21;
      if (v21 < 1)
      {
        goto LABEL_164;
      }

LABEL_90:
      v47 = *(this + 2);
      v48 = *(this + 2);
      v49 = *(this + 3);
      if (v47 == -1)
      {
        if (v49)
        {
          goto LABEL_114;
        }

        v51 = 1;
        v52 = 0xFFFFFFFFLL;
        if (v41)
        {
          goto LABEL_96;
        }
      }

      else
      {
        if (v49 + v48 * *(v4[5] + 8 * v47))
        {
          goto LABEL_114;
        }

        v50 = (1 - v49) / v48;
        if (v50 * v48 >= 1 - v49)
        {
          v51 = (1 - v49) / v48;
        }

        else
        {
          v51 = v50 + 1;
        }

        v52 = *(this + 2);
        if (v41)
        {
LABEL_96:
          if (v21 < 1)
          {
            v53 = 1;
          }

          else
          {
            v53 = -1;
          }

          v42 = 0xFFFFFFFFLL;
          goto LABEL_105;
        }
      }

      v54 = 1 - v21;
      if (v54 / v20 * v20 >= v54)
      {
        v53 = v54 / v20;
      }

      else
      {
        v53 = v54 / v20 + 1;
      }

LABEL_105:
      v162 = v42;
      v163 = v53;
      if (v47 == -1)
      {
        v56 = 1;
        if (v49 >= 0)
        {
          v56 = -1;
        }

        v47 = 0xFFFFFFFFLL;
      }

      else
      {
        v55 = -v49 / v48;
        if (v55 * v48 >= -v49)
        {
          v56 = -v49 / v48;
        }

        else
        {
          v56 = v55 + 1;
        }
      }

      v164 = v47;
      v165 = v56;
      result = operations_research::sat::IntegerTrail::SafeEnqueue(v4, v52, v51, &v162, 2);
      if (!result)
      {
        goto LABEL_322;
      }

      v4 = *(this + 10);
      v45 = v154;
      v46 = v155;
LABEL_114:
      v57 = *(this + 8);
      v58 = *(this + 5);
      v59 = *(this + 6);
      if (v57 == -1)
      {
        if (v59)
        {
          goto LABEL_140;
        }

        v61 = 1;
        v62 = 0xFFFFFFFFLL;
      }

      else
      {
        if (v59 + v58 * *(v4[5] + 8 * v57))
        {
          goto LABEL_140;
        }

        v60 = (1 - v59) / v58;
        if (v60 * v58 >= 1 - v59)
        {
          v61 = (1 - v59) / v58;
        }

        else
        {
          v61 = v60 + 1;
        }

        v62 = *(this + 8);
      }

      v63 = *(this + 14);
      if (v63 == -1)
      {
        if (*(this + 9) < 1)
        {
          v66 = 1;
        }

        else
        {
          v66 = -1;
        }

        v63 = 0xFFFFFFFFLL;
      }

      else
      {
        v64 = *(this + 8);
        v65 = 1 - *(this + 9);
        if (v65 / v64 * v64 >= v65)
        {
          v66 = v65 / v64;
        }

        else
        {
          v66 = v65 / v64 + 1;
        }
      }

      v162 = v63;
      v163 = v66;
      if (v57 == -1)
      {
        if (v59 < 0)
        {
          v68 = 1;
        }

        else
        {
          v68 = -1;
        }

        v57 = 0xFFFFFFFFLL;
      }

      else
      {
        v67 = -v59;
        if (v67 / v58 * v58 >= v67)
        {
          v68 = v67 / v58;
        }

        else
        {
          v68 = v67 / v58 + 1;
        }
      }

      v164 = v57;
      v165 = v68;
      result = operations_research::sat::IntegerTrail::SafeEnqueue(v4, v62, v61, &v162, 2);
      if (!result)
      {
        goto LABEL_322;
      }

      v4 = *(this + 10);
      v45 = v154;
      v46 = v155;
LABEL_140:
      v69 = *(this + 2);
      v70 = *(this + 2);
      v71 = *(this + 3);
      if (v69 == -1)
      {
        v72 = *(this + 8);
        v73 = *(this + 5);
        v74 = *(this + 6);
        v75 = v72 == -1;
        if ((v71 & 0x8000000000000000) == 0)
        {
          goto LABEL_142;
        }
      }

      else
      {
        v72 = *(this + 8);
        v73 = *(this + 5);
        v74 = *(this + 6);
        v75 = v72 == -1;
        if (((v71 + *(v4[5] + 8 * v69) * v70) & 0x8000000000000000) == 0)
        {
LABEL_142:
          if (v75)
          {
            v77 = 1;
            if (v74 < 1)
            {
              v72 = 0xFFFFFFFFLL;
LABEL_153:
              if (v69 == -1)
              {
                v79 = 1;
                if (v71 >= 0)
                {
                  v79 = -1;
                }

                v69 = 0xFFFFFFFFLL;
              }

              else
              {
                v78 = -v71;
                if (v78 / v70 * v70 >= v78)
                {
                  v79 = v78 / v70;
                }

                else
                {
                  v79 = v78 / v70 + 1;
                }
              }

              v162 = v69;
              v163 = v79;
              v141 = *(this + 14);
              if (v141 == -1)
              {
                if (*(this + 9) < 1)
                {
                  v144 = 1;
                }

                else
                {
                  v144 = -1;
                }

                v141 = 0xFFFFFFFFLL;
              }

              else
              {
                v142 = *(this + 8);
                v143 = 1 - *(this + 9);
                if (v143 / v142 * v142 >= v143)
                {
                  v144 = v143 / v142;
                }

                else
                {
                  v144 = v143 / v142 + 1;
                }
              }

              v164 = v141;
              v165 = v144;
              result = operations_research::sat::IntegerTrail::SafeEnqueue(v4, v72, v77, &v162, 2);
              goto LABEL_322;
            }

LABEL_158:
            if (v69 == -1)
            {
              if (v71 < 1)
              {
                v81 = 1;
                v69 = 0xFFFFFFFFLL;
LABEL_305:
                if (v77)
                {
                  if (v74 < 0)
                  {
                    v145 = 1;
                  }

                  else
                  {
                    v145 = -1;
                  }

                  v72 = 0xFFFFFFFFLL;
                }

                else
                {
                  v146 = -v74;
                  v147 = -v74 / v73;
                  if (v147 * v73 >= v146)
                  {
                    v145 = v147;
                  }

                  else
                  {
                    v145 = v147 + 1;
                  }
                }

                v162 = v72;
                v163 = v145;
                v148 = *(this + 14);
                if (v148 == -1)
                {
                  if (*(this + 9) < 1)
                  {
                    v151 = 1;
                  }

                  else
                  {
                    v151 = -1;
                  }

                  v148 = 0xFFFFFFFFLL;
                }

                else
                {
                  v149 = *(this + 8);
                  v150 = 1 - *(this + 9);
                  if (v150 / v149 * v149 >= v150)
                  {
                    v151 = v150 / v149;
                  }

                  else
                  {
                    v151 = v150 / v149 + 1;
                  }
                }

                v164 = v148;
                v165 = v151;
                result = operations_research::sat::IntegerTrail::SafeEnqueue(v4, v69, v81, &v162, 2);
                goto LABEL_322;
              }
            }

            else if (v71 + *(v4[5] + 8 * v69) * v70 <= 0)
            {
              v80 = 1 - v71;
              if (v80 / v70 * v70 >= v80)
              {
                v81 = v80 / v70;
              }

              else
              {
                v81 = v80 / v70 + 1;
              }

              goto LABEL_305;
            }

LABEL_164:
            v82 = 1;
            while (1)
            {
              while (1)
              {
                v83 = v82;
                v84 = (v82 & 1) == 0;
                v85 = 32;
                if (v82)
                {
                  v86 = 8;
                }

                else
                {
                  v86 = 32;
                }

                v87 = this + 8;
                if (v82)
                {
                  v88 = this + 8;
                }

                else
                {
                  v88 = this + 32;
                }

                if (v84)
                {
                  v85 = 8;
                }

                if (!v84)
                {
                  v87 = this + 32;
                }

                v89 = *(this + v85);
                v91 = *(v87 + 1);
                v90 = *(v87 + 2);
                v92 = *(this + 10);
                v93 = v89;
                v94 = v90;
                v95 = v90;
                if (v89 != -1)
                {
                  v96 = v92[5];
                  v97 = 8 * v89;
                  v94 = v90 - *(v96 + (v97 ^ 8)) * v91;
                  v95 = v90 + *(v96 + v97) * v91;
                }

                v98 = *(this + v86);
                v100 = *(v88 + 1);
                v99 = *(v88 + 2);
                if (v45 > 0)
                {
                  break;
                }

                if (v95 < 1)
                {
                  goto LABEL_165;
                }

LABEL_184:
                v101 = v161;
                if ((v161 & 0x8000000000000000) == 0)
                {
                  v124 = -v99 / v100;
                  if (v124 * v100 >= -v99)
                  {
                    v125 = -v99 / v100;
                  }

                  else
                  {
                    v125 = v124 + 1;
                  }

                  v126 = 1;
                  if (v99 >= 0)
                  {
                    v126 = -1;
                  }

                  if (v98 == -1)
                  {
                    v127 = 0xFFFFFFFFLL;
                  }

                  else
                  {
                    v127 = v98;
                  }

                  if (v98 == -1)
                  {
                    v128 = v126;
                  }

                  else
                  {
                    v128 = v125;
                  }

                  v129 = *(this + 14);
                  if (v129 == -1)
                  {
                    if (*(this + 9) < 0)
                    {
                      v132 = 1;
                    }

                    else
                    {
                      v132 = -1;
                    }

                    v129 = 0xFFFFFFFFLL;
                  }

                  else
                  {
                    v130 = *(this + 8);
                    v131 = -*(this + 9);
                    if (v131 / v130 * v130 >= v131)
                    {
                      v132 = v131 / v130;
                    }

                    else
                    {
                      v132 = v131 / v130 + 1;
                    }
                  }

                  v162 = v129;
                  v163 = v132;
                  if (v89 == -1)
                  {
                    v134 = 1;
                    if (v90 >= 1)
                    {
                      v134 = -1;
                    }

                    v93 = 0xFFFFFFFFLL;
                  }

                  else
                  {
                    v133 = (1 - v90) / v91;
                    if (v133 * v91 >= 1 - v90)
                    {
                      v134 = (1 - v90) / v91;
                    }

                    else
                    {
                      v134 = v133 + 1;
                    }
                  }

                  goto LABEL_270;
                }

                if (v46 <= 0)
                {
                  if (v98 == -1)
                  {
                    if (v99 > 0)
                    {
                      v128 = 1;
                    }

                    else
                    {
                      v128 = -1;
                    }

                    v127 = 0xFFFFFFFFLL;
                  }

                  else
                  {
                    if (-v99 / v100 - (-v99 / v100 * v100 > -v99) >= 0x8000000000000002)
                    {
                      v128 = (-v99 / v100 * v100 > -v99) - -v99 / v100;
                    }

                    else
                    {
                      v128 = 0x7FFFFFFFFFFFFFFFLL;
                    }

                    v127 = v98 ^ 1;
                  }

                  v135 = *(this + 14);
                  v136 = *(this + 9);
                  if (v135 == -1)
                  {
                    if (v136 > 0)
                    {
                      v138 = 1;
                    }

                    else
                    {
                      v138 = -1;
                    }

                    v139 = 0xFFFFFFFFLL;
                  }

                  else
                  {
                    v137 = -v136 / *(this + 8) - (-v136 / *(this + 8) * *(this + 8) > -v136);
                    if (v137 >= 0x8000000000000002)
                    {
                      v138 = -v137;
                    }

                    else
                    {
                      v138 = 0x7FFFFFFFFFFFFFFFLL;
                    }

                    v139 = v135 ^ 1;
                  }

                  v162 = v139;
                  v163 = v138;
                  if (v89 == -1)
                  {
                    v134 = 1;
                    if (v90 >= 1)
                    {
                      v134 = -1;
                    }

                    v93 = 0xFFFFFFFFLL;
                  }

                  else
                  {
                    v140 = (1 - v90) / v91;
                    if (v140 * v91 >= 1 - v90)
                    {
                      v134 = (1 - v90) / v91;
                    }

                    else
                    {
                      v134 = v140 + 1;
                    }
                  }

LABEL_270:
                  v164 = v93;
                  v165 = v134;
                  result = operations_research::sat::IntegerTrail::SafeEnqueue(v92, v127, v128, &v162, 2);
                  goto LABEL_322;
                }

                v102 = v46 / v95 - ((v46 / v95 * v95) > v46);
                v103 = v98;
                if (v98 == -1)
                {
                  if (v102 >= v99)
                  {
                    if (((v161 > -(-v161 / v95 * v95)) - -v161 / v95) > v99)
                    {
                      goto LABEL_232;
                    }

                    goto LABEL_165;
                  }

                  v107 = 0xFFFFFFFFLL;
                  v106 = 1;
                  v108 = *(this + 14);
                  if (v108 == -1)
                  {
LABEL_216:
                    v162 = 0xFFFFFFFFLL;
                    v163 = -1;
                    if (v89 == -1)
                    {
                      goto LABEL_217;
                    }

LABEL_195:
                    v110 = *(v92[5] + 8 * v89);
                    v111 = v89;
LABEL_218:
                    v164 = v111;
                    v165 = v110;
                    result = operations_research::sat::IntegerTrail::SafeEnqueue(v92, v107, v106, &v162, 2);
                    if (!result)
                    {
                      goto LABEL_322;
                    }

                    v92 = *(this + 10);
                    v118 = (v101 > -(-v101 / v95 * v95)) - -v101 / v95;
                    v45 = v154;
                    if (v103 == -1)
                    {
                      v46 = v155;
                      if (v118 > v99)
                      {
LABEL_232:
                        v103 = 0xFFFFFFFFLL;
                        v120 = 1;
                        v121 = *(this + 14);
                        if (v121 == -1)
                        {
                          goto LABEL_233;
                        }

LABEL_227:
                        v122 = *(v92[5] + 8 * v121);
                        v162 = v121;
                        v163 = v122;
                        if (v93 != -1)
                        {
                          goto LABEL_228;
                        }

LABEL_234:
                        v123 = -1;
                        v93 = 0xFFFFFFFFLL;
                        goto LABEL_235;
                      }
                    }

                    else
                    {
                      v46 = v155;
                      if (v118 > v99 + *(v92[5] + 8 * v103) * v100)
                      {
                        goto LABEL_223;
                      }
                    }

                    goto LABEL_165;
                  }

LABEL_192:
                  v109 = *(v92[5] + ((8 * v108) ^ 8));
                  if (v109 - 1 > 0x7FFFFFFFFFFFFFFDLL)
                  {
                    v109 = 0x7FFFFFFFFFFFFFFFLL;
                  }

                  v162 = v108 ^ 1;
                  v163 = v109;
                  if (v89 != -1)
                  {
                    goto LABEL_195;
                  }

LABEL_217:
                  v110 = -1;
                  v111 = 0xFFFFFFFFLL;
                  goto LABEL_218;
                }

                v104 = v92[5];
                if (v102 < v99 - *(v104 + ((8 * v98) ^ 8)) * v100)
                {
                  v105 = (v102 - v99) / v100 - ((v102 - v99) / v100 * v100 > v102 - v99);
                  if (v105 >= 0x8000000000000002)
                  {
                    v106 = -v105;
                  }

                  else
                  {
                    v106 = 0x7FFFFFFFFFFFFFFFLL;
                  }

                  v107 = v98 ^ 1;
                  v108 = *(this + 14);
                  if (v108 == -1)
                  {
                    goto LABEL_216;
                  }

                  goto LABEL_192;
                }

                v118 = (v161 > -(-v161 / v95 * v95)) - -v161 / v95;
                if (v118 > v99 + *(v104 + 8 * v98) * v100)
                {
LABEL_223:
                  v119 = v118 - v99;
                  if (v119 / v100 * v100 >= v119)
                  {
                    v120 = v119 / v100;
                  }

                  else
                  {
                    v120 = v119 / v100 + 1;
                  }

                  v121 = *(this + 14);
                  if (v121 != -1)
                  {
                    goto LABEL_227;
                  }

LABEL_233:
                  v162 = 0xFFFFFFFFLL;
                  v163 = -1;
                  if (v93 == -1)
                  {
                    goto LABEL_234;
                  }

LABEL_228:
                  v123 = *(v92[5] + 8 * v93);
LABEL_235:
                  v164 = v93;
                  v165 = v123;
                  result = operations_research::sat::IntegerTrail::SafeEnqueue(v92, v103, v120, &v162, 2);
                  goto LABEL_236;
                }

LABEL_165:
                v82 = 0;
                if ((v83 & 1) == 0)
                {
                  result = 1;
                  goto LABEL_322;
                }
              }

              if ((v95 & 0x8000000000000000) == 0)
              {
                if (!v95)
                {
                  goto LABEL_165;
                }

                goto LABEL_184;
              }

              if (v94 < 1)
              {
                goto LABEL_165;
              }

              v112 = v161;
              if (v161 < 1)
              {
                operations_research::sat::ProductPropagator::Propagate(&v161);
              }

              v153 = *(this + v86);
              v162 = *(this + v86);
              v163 = v100;
              v164 = v99;
              v158 = v89;
              v159 = v91;
              v160 = v90;
              if ((operations_research::sat::ProductPropagator::PropagateMaxOnPositiveProduct(this, &v162, &v158, v161, v46) & 1) == 0)
              {
                result = 0;
                goto LABEL_322;
              }

              if (v100 >= 0)
              {
                v113 = v100;
              }

              else
              {
                v113 = -v100;
              }

              if (v153 == -1)
              {
                v114 = -1;
              }

              else
              {
                v114 = v153 ^ (v100 >> 63) ^ 1;
              }

              if (v153 == -1)
              {
                v115 = 0;
              }

              else
              {
                v115 = v113;
              }

              LODWORD(v162) = v114;
              v163 = v115;
              v164 = -v99;
              v116 = v93 ^ (v91 >> 63) ^ 1;
              if (v91 >= 0)
              {
                v117 = v91;
              }

              else
              {
                v117 = -v91;
              }

              if (v93 == -1)
              {
                v116 = -1;
                v117 = 0;
              }

              LODWORD(v158) = v116;
              v159 = v117;
              v160 = -v90;
              result = operations_research::sat::ProductPropagator::PropagateMaxOnPositiveProduct(this, &v162, &v158, v112, v155);
LABEL_236:
              v82 = 0;
              v45 = v154;
              v46 = v155;
              if ((result & v83 & 1) == 0)
              {
                goto LABEL_322;
              }
            }
          }

          if (v74 + *(v4[5] + 8 * v72) * v73 <= 0)
          {
            v76 = 1 - v74;
            if (v76 / v73 * v73 >= v76)
            {
              v77 = v76 / v73;
            }

            else
            {
              v77 = v76 / v73 + 1;
            }

            goto LABEL_153;
          }

LABEL_149:
          LODWORD(v77) = 0;
          if (v74 + *(v4[5] + 8 * v72) * v73 < 0)
          {
            goto LABEL_164;
          }

          goto LABEL_158;
        }
      }

      if (v75)
      {
        LODWORD(v77) = 1;
        if (v74 < 0)
        {
          goto LABEL_164;
        }

        goto LABEL_158;
      }

      goto LABEL_149;
    }

LABEL_84:
    v39 = -1;
    v40 = 0xFFFFFFFFLL;
    goto LABEL_85;
  }

  v12 = *MEMORY[0x277D85DE8];

  return operations_research::sat::ProductPropagator::PropagateWhenAllNonNegative(this);
}

uint64_t operations_research::sat::ProductPropagator::RegisterWith(operations_research::sat::ProductPropagator *this, operations_research::sat::GenericLiteralWatcher *a2)
{
  v4 = operations_research::sat::GenericLiteralWatcher::Register(a2, this);
  operations_research::sat::GenericLiteralWatcher::WatchIntegerVariable(a2, *(this + 2), v4, 0xFFFFFFFF);
  operations_research::sat::GenericLiteralWatcher::WatchIntegerVariable(a2, *(this + 8), v4, 0xFFFFFFFF);
  operations_research::sat::GenericLiteralWatcher::WatchIntegerVariable(a2, *(this + 14), v4, 0xFFFFFFFF);

  return operations_research::sat::GenericLiteralWatcher::NotifyThatPropagatorMayNotReachFixedPointInOnePass(a2, v4);
}

uint64_t operations_research::sat::SquarePropagator::SquarePropagator(uint64_t result, int *a2, uint64_t a3, uint64_t a4)
{
  *result = &unk_284F422C8;
  v4 = *a2;
  *(result + 24) = *(a2 + 2);
  *(result + 8) = v4;
  v5 = *(a3 + 16);
  *(result + 32) = *a3;
  *(result + 48) = v5;
  *(result + 56) = a4;
  v6 = *(a2 + 2);
  if (*a2 != -1)
  {
    v6 += *(*(a4 + 152) + 24 * *a2) * *(a2 + 1);
  }

  v7 = v6;
  if (v6 < 0)
  {
    operations_research::sat::SquarePropagator::SquarePropagator(&v7);
  }

  return result;
}

uint64_t operations_research::sat::SquarePropagator::Propagate(operations_research::sat::SquarePropagator *this)
{
  v66 = *MEMORY[0x277D85DE8];
  v2 = *(this + 7);
  v3 = *(this + 2);
  v5 = *(this + 2);
  v4 = *(this + 3);
  if (v3 == -1)
  {
    v6 = *(this + 3);
    v7 = *(this + 8);
    v8 = *(this + 6);
    v9 = v4 * v4;
    v10 = (v4 * v4) >> 64;
    if (v7 != -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = v4 + *(v2[5] + 8 * v3) * v5;
    v7 = *(this + 8);
    v8 = *(this + 6);
    v9 = v6 * v6;
    v10 = (v6 * v6) >> 64;
    if (v7 != -1)
    {
LABEL_3:
      v11 = *(this + 5);
      if (v10 != v9 >> 63)
      {
        v9 = 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v9 > v8 + *(v2[5] + 8 * v7) * v11)
      {
        v12 = v9 - v8;
        if (v12 / v11 * v11 >= v12)
        {
          v13 = v12 / v11;
        }

        else
        {
          v13 = v12 / v11 + 1;
        }

        goto LABEL_14;
      }

      v8 = (v8 + *(v2[5] + 8 * v7) * v11);
      goto LABEL_27;
    }
  }

  if (v10 != v9 >> 63)
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v9 > v8)
  {
    v13 = 1;
    v7 = 0xFFFFFFFFLL;
LABEL_14:
    v14 = (v6 - v4) / v5;
    if (v14 * v5 >= v6 - v4)
    {
      v15 = (v6 - v4) / v5;
    }

    else
    {
      v15 = v14 + 1;
    }

    v17 = __OFSUB__(v6, v4);
    v19 = v6 == v4;
    v16 = v6 - v4 < 0;
    v18 = 1;
    if (v16 ^ v17 | v19)
    {
      v18 = -1;
    }

    v19 = v3 == -1;
    if (v3 == -1)
    {
      v3 = 0xFFFFFFFFLL;
    }

    if (v19)
    {
      v15 = v18;
    }

    v64 = v3;
    v65 = v15;
    if ((operations_research::sat::IntegerTrail::SafeEnqueue(v2, v7, v13, &v64, 1) & 1) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_46;
  }

LABEL_27:
  if (v9 >= v8)
  {
    goto LABEL_46;
  }

  v20 = operations_research::sat::CeilSquareRoot(v8);
  v21 = *(this + 7);
  v22 = *(this + 2);
  if (v22 == -1)
  {
    if (*(this + 3) < v20)
    {
      v25 = 1;
    }

    else
    {
      v25 = -1;
    }

    v22 = 0xFFFFFFFFLL;
    v26 = (v20 - 1) * (v20 - 1) + 1;
    v27 = *(this + 8);
    if (v27 != -1)
    {
LABEL_33:
      v28 = *(this + 5);
      v29 = v26 - *(this + 6);
      if (v29 / v28 * v28 >= v29)
      {
        v30 = v29 / v28;
      }

      else
      {
        v30 = v29 / v28 + 1;
      }

      v64 = v27;
      v65 = v30;
      result = operations_research::sat::IntegerTrail::SafeEnqueue(v21, v22, v25, &v64, 1);
      if (!result)
      {
        goto LABEL_92;
      }

      goto LABEL_46;
    }
  }

  else
  {
    v23 = *(this + 2);
    v24 = v20 - *(this + 3);
    if (v24 / v23 * v23 >= v24)
    {
      v25 = v24 / v23;
    }

    else
    {
      v25 = v24 / v23 + 1;
    }

    v26 = (v20 - 1) * (v20 - 1) + 1;
    v27 = *(this + 8);
    if (v27 != -1)
    {
      goto LABEL_33;
    }
  }

  if (*(this + 6) < v26)
  {
    v32 = 1;
  }

  else
  {
    v32 = -1;
  }

  v64 = 0xFFFFFFFFLL;
  v65 = v32;
  result = operations_research::sat::IntegerTrail::SafeEnqueue(v21, v22, v25, &v64, 1);
  if (!result)
  {
    goto LABEL_92;
  }

LABEL_46:
  v33 = *(this + 7);
  v34 = *(this + 2);
  v35 = *(this + 2);
  v36 = *(this + 3);
  if (v34 == -1)
  {
    v37 = *(this + 3);
    v38 = *(this + 8);
    v39 = *(this + 6);
    if (v38 != -1)
    {
      goto LABEL_48;
    }

LABEL_61:
    v41 = 0x7FFFFFFFFFFFFFFFLL;
    if ((v37 * v37) >> 64 == (v37 * v37) >> 63)
    {
      v41 = v37 * v37;
    }

    if (v41 < v39)
    {
      if (v39 > v37 * v37)
      {
        v43 = 1;
      }

      else
      {
        v43 = -1;
      }

      v44 = 0xFFFFFFFFLL;
      if (v34 != -1)
      {
LABEL_55:
        if ((v37 - v36) / v35 - ((v37 - v36) / v35 * v35 > v37 - v36) >= 0x8000000000000002)
        {
          v45 = ((v37 - v36) / v35 * v35 > v37 - v36) - (v37 - v36) / v35;
        }

        else
        {
          v45 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v64 = v34 ^ 1;
        v65 = v45;
        if (operations_research::sat::IntegerTrail::SafeEnqueue(v33, v44, v43, &v64, 1))
        {
          goto LABEL_91;
        }

LABEL_71:
        result = 0;
        goto LABEL_92;
      }

LABEL_68:
      v46 = 1;
      if (v37 >= v36)
      {
        v46 = -1;
      }

      v64 = 0xFFFFFFFFLL;
      v65 = v46;
      if (operations_research::sat::IntegerTrail::SafeEnqueue(v33, v44, v43, &v64, 1))
      {
        goto LABEL_91;
      }

      goto LABEL_71;
    }

    goto LABEL_73;
  }

  v37 = v36 - *(v33[5] + ((8 * v34) ^ 8)) * v35;
  v38 = *(this + 8);
  v39 = *(this + 6);
  if (v38 == -1)
  {
    goto LABEL_61;
  }

LABEL_48:
  v40 = *(this + 5);
  v41 = v37 * v37;
  if ((v37 * v37) >> 64 != (v37 * v37) >> 63)
  {
    v41 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v41 < v39 - *(v33[5] + ((8 * v38) ^ 8)) * v40)
  {
    v42 = (v41 - v39) / v40 - ((v41 - v39) / v40 * v40 > v41 - v39);
    if (v42 >= 0x8000000000000002)
    {
      v43 = -v42;
    }

    else
    {
      v43 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v44 = v38 ^ 1u;
    if (v34 != -1)
    {
      goto LABEL_55;
    }

    goto LABEL_68;
  }

  v39 = (v39 - *(v33[5] + ((8 * v38) ^ 8)) * v40);
LABEL_73:
  if (v41 <= v39)
  {
LABEL_91:
    result = 1;
    goto LABEL_92;
  }

  v47 = operations_research::sat::FloorSquareRoot(v39);
  v48 = *(this + 7);
  v49 = *(this + 2);
  v50 = *(this + 3);
  if (v49 == -1)
  {
    if (v47 < v50)
    {
      v52 = 1;
    }

    else
    {
      v52 = -1;
    }

    v53 = 0xFFFFFFFFLL;
  }

  else
  {
    v51 = (v47 - v50) / *(this + 2) - ((v47 - v50) / *(this + 2) * *(this + 2) > v47 - v50);
    if (v51 >= 0x8000000000000002)
    {
      v52 = -v51;
    }

    else
    {
      v52 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v53 = v49 ^ 1;
  }

  v54 = v47 + 1;
  v55 = (v54 * v54) >> 64;
  v56 = v54 * v54;
  if (v55 == v56 >> 63)
  {
    v57 = v56 - 1;
  }

  else
  {
    v57 = 0x7FFFFFFFFFFFFFFELL;
  }

  v58 = *(this + 8);
  v59 = *(this + 6);
  if (v58 == -1)
  {
    if (v57 < v59)
    {
      v63 = 1;
    }

    else
    {
      v63 = -1;
    }

    v64 = 0xFFFFFFFFLL;
    v65 = v63;
    result = operations_research::sat::IntegerTrail::SafeEnqueue(v48, v53, v52, &v64, 1);
    if (result)
    {
      goto LABEL_91;
    }
  }

  else
  {
    v60 = (v57 - v59) / *(this + 5) - ((v57 - v59) / *(this + 5) * *(this + 5) > v57 - v59);
    if (v60 >= 0x8000000000000002)
    {
      v61 = -v60;
    }

    else
    {
      v61 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v64 = v58 ^ 1;
    v65 = v61;
    result = operations_research::sat::IntegerTrail::SafeEnqueue(v48, v53, v52, &v64, 1);
    if (result)
    {
      goto LABEL_91;
    }
  }

LABEL_92:
  v62 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t operations_research::sat::SquarePropagator::RegisterWith(operations_research::sat::SquarePropagator *this, operations_research::sat::GenericLiteralWatcher *a2)
{
  v4 = operations_research::sat::GenericLiteralWatcher::Register(a2, this);
  operations_research::sat::GenericLiteralWatcher::WatchIntegerVariable(a2, *(this + 2), v4, 0xFFFFFFFF);
  operations_research::sat::GenericLiteralWatcher::WatchIntegerVariable(a2, *(this + 8), v4, 0xFFFFFFFF);

  return operations_research::sat::GenericLiteralWatcher::NotifyThatPropagatorMayNotReachFixedPointInOnePass(a2, v4);
}

uint64_t operations_research::sat::DivisionPropagator::DivisionPropagator(uint64_t result, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  *result = &unk_284F422F8;
  v5 = *a2;
  *(result + 24) = *(a2 + 2);
  *(result + 8) = v5;
  v6 = *a3;
  *(result + 48) = *(a3 + 2);
  *(result + 32) = v6;
  v7 = *a4;
  *(result + 72) = *(a4 + 2);
  *(result + 56) = v7;
  if (*a3 == -1)
  {
    v10 = 0;
    v9 = -1;
  }

  else
  {
    v8 = *(a3 + 1);
    v9 = *a3 ^ (v8 >> 63) ^ 1;
    if (v8 >= 0)
    {
      v10 = *(a3 + 1);
    }

    else
    {
      v10 = -v8;
    }
  }

  v11 = -*(a3 + 2);
  *(result + 80) = v9;
  *(result + 88) = v10;
  *(result + 96) = v11;
  v12 = *a2;
  if (*a2 == -1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(a2 + 1);
    v12 ^= (v13 >> 63) ^ 1;
    if (v13 < 0)
    {
      v13 = -v13;
    }
  }

  v14 = -*(a2 + 2);
  *(result + 104) = v12;
  *(result + 112) = v13;
  *(result + 120) = v14;
  if (*a4 == -1)
  {
    v18 = -*(a4 + 2);
    *(result + 128) = -1;
    *(result + 136) = 0;
    *(result + 144) = v18;
    *(result + 152) = a5;
  }

  else
  {
    v15 = *(a4 + 1);
    v16 = *a4 ^ (v15 >> 63) ^ 1;
    if (v15 < 0)
    {
      v15 = -v15;
    }

    v17 = -*(a4 + 2);
    *(result + 128) = v16;
    *(result + 136) = v15;
    *(result + 144) = v17;
    *(result + 152) = a5;
  }

  return result;
}

uint64_t operations_research::sat::DivisionPropagator::Propagate(operations_research::sat::DivisionPropagator *this)
{
  v2 = *(this + 19);
  v3 = *(this + 8);
  v4 = *(this + 5);
  v5 = *(this + 6);
  if (v3 != -1)
  {
    v6 = *(v2 + 40);
    v7 = 8 * v3;
    if (v5 + *(v6 + v7) * v4 < 0 && v5 - *(v6 + (v7 ^ 8)) * v4 > 0)
    {
      return 1;
    }
  }

  v9 = *(this + 2);
  v8 = *(this + 3);
  v10 = *(this + 2);
  v11 = *(this + 3);
  v12 = *(this + 6);
  if (v3 != -1)
  {
    v12 = v5 - *(*(v2 + 40) + ((8 * v3) ^ 8)) * v4;
  }

  if (v12 < 0)
  {
    v3 = *(this + 20);
    v13 = *(this + 21);
    v33 = *(this + 2);
    v34 = *(this + 2);
    v32 = *(this + 3);
    v14 = *(this + 3);
    v9 = *(this + 26);
    v8 = *(this + 27);
    v10 = *(this + 14);
    v4 = *(this + 11);
    v5 = *(this + 12);
    v11 = *(this + 15);
  }

  else
  {
    v13 = *(this + 9);
    v33 = *(this + 14);
    v34 = *(this + 26);
    v32 = *(this + 27);
    v14 = *(this + 15);
  }

  v41 = v9;
  v42 = v8;
  v43 = v10;
  v44 = v11;
  v37 = v3;
  v38 = v13;
  v39 = v4;
  v40 = v5;
  v35 = *(this + 56);
  v36 = *(this + 9);
  result = operations_research::sat::DivisionPropagator::PropagateSigns(this, &v41, &v37, &v35);
  if (result)
  {
    v16 = *(this + 19);
    v17 = v11;
    if (v9 != -1)
    {
      v17 = v11 - *(*(v16 + 40) + ((8 * v9) ^ 8)) * v10;
    }

    v18 = v34;
    v19 = v14;
    if ((v17 & 0x8000000000000000) == 0)
    {
      v20 = *(this + 14);
      v21 = *(this + 9);
      if (v20 != -1)
      {
        v21 -= *(*(v16 + 40) + ((8 * v20) ^ 8)) * *(this + 8);
      }

      if ((v21 & 0x8000000000000000) == 0)
      {
        v41 = v9;
        v42 = v8;
        v43 = v10;
        v44 = v11;
        v37 = v3;
        v38 = v13;
        v39 = v4;
        v40 = v5;
        v35 = *(this + 56);
        v36 = *(this + 9);
        result = operations_research::sat::DivisionPropagator::PropagateUpperBounds(this, &v41, &v37, &v35);
        if (!result)
        {
          return result;
        }

        v16 = *(this + 19);
        v18 = v34;
        v19 = v14;
      }
    }

    v22 = v19;
    if (v18 != -1)
    {
      v22 = v19 - *(*(v16 + 40) + ((8 * v18) ^ 8)) * v33;
    }

    if ((v22 & 0x8000000000000000) == 0)
    {
      v23 = *(this + 32);
      v24 = *(this + 18);
      if (v23 != -1)
      {
        v24 -= *(*(v16 + 40) + ((8 * v23) ^ 8)) * *(this + 17);
      }

      if ((v24 & 0x8000000000000000) == 0)
      {
        v41 = v18;
        v42 = v32;
        v43 = v33;
        v44 = v19;
        v37 = v3;
        v38 = v13;
        v39 = v4;
        v40 = v5;
        v35 = *(this + 8);
        v36 = *(this + 18);
        result = operations_research::sat::DivisionPropagator::PropagateUpperBounds(this, &v41, &v37, &v35);
        if (!result)
        {
          return result;
        }

        v16 = *(this + 19);
        v18 = v34;
        v19 = v14;
      }
    }

    v25 = v11;
    if (v9 != -1)
    {
      v25 = v11 + *(*(v16 + 40) + 8 * v9) * v10;
    }

    if ((v25 & 0x8000000000000000) == 0)
    {
      v26 = *(this + 14);
      v27 = *(this + 9);
      if (v26 != -1)
      {
        v27 += *(*(v16 + 40) + 8 * v26) * *(this + 8);
      }

      if ((v27 & 0x8000000000000000) == 0)
      {
        v41 = v9;
        v42 = v8;
        v43 = v10;
        v44 = v11;
        v37 = v3;
        v38 = v13;
        v39 = v4;
        v40 = v5;
        v35 = *(this + 56);
        v28 = *(this + 9);
LABEL_41:
        v36 = v28;
        return operations_research::sat::DivisionPropagator::PropagatePositiveDomains(this, &v41, &v37, &v35);
      }
    }

    v29 = v19;
    if (v18 != -1)
    {
      v29 = v19 + *(*(v16 + 40) + 8 * v18) * v33;
    }

    if ((v29 & 0x8000000000000000) == 0)
    {
      v30 = *(this + 32);
      v31 = *(this + 18);
      if (v30 != -1)
      {
        v31 += *(*(v16 + 40) + 8 * v30) * *(this + 17);
      }

      if ((v31 & 0x8000000000000000) == 0)
      {
        v41 = v18;
        v42 = v32;
        v43 = v33;
        v44 = v19;
        v37 = v3;
        v38 = v13;
        v39 = v4;
        v40 = v5;
        v35 = *(this + 8);
        v28 = *(this + 18);
        goto LABEL_41;
      }
    }

    return 1;
  }

  return result;
}

uint64_t operations_research::sat::DivisionPropagator::PropagateSigns(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  v89 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 152);
  v9 = *a2;
  v10 = *(a2 + 1);
  v11 = *(a2 + 2);
  if (v9 == -1)
  {
    v14 = *(a2 + 2);
    v15 = v14;
    v16 = *a4;
    v18 = *(a4 + 1);
    v17 = *(a4 + 2);
    if (v16 != -1)
    {
LABEL_3:
      v19 = v8[5];
      v20 = 8 * v16;
      v21 = v17 + *(v19 + v20) * v18;
      v22 = v17 - *(v19 + (v20 ^ 8)) * v18;
      if ((v14 & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_10:
      if (v21 < 1)
      {
        goto LABEL_67;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v12 = v8[5];
    v13 = 8 * v9;
    v14 = v11 + *(v12 + v13) * v10;
    v15 = v11 - *(v12 + (v13 ^ 8)) * v10;
    v16 = *a4;
    v18 = *(a4 + 1);
    v17 = *(a4 + 2);
    if (v16 != -1)
    {
      goto LABEL_3;
    }
  }

  v21 = v17;
  v22 = v17;
  if (v14 < 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v21 & 0x8000000000000000) == 0)
  {
    if (v14 || !v21)
    {
      goto LABEL_67;
    }

    v8 = *(a1 + 152);
    LODWORD(v9) = *a2;
LABEL_11:
    if (v9 == -1)
    {
      if (*(a2 + 2) < 1)
      {
        v26 = 1;
      }

      else
      {
        v26 = -1;
      }

      v23 = 0xFFFFFFFFLL;
      v27 = *a4;
      if (v27 != -1)
      {
LABEL_16:
        v28 = *(a4 + 1);
        v29 = 1 - *(a4 + 2);
        if (v29 / v28 * v28 >= v29)
        {
          v30 = v29 / v28;
        }

        else
        {
          v30 = v29 / v28 + 1;
        }

        v85 = v27;
        v86 = v30;
        v31 = *a3;
        if (v31 != -1)
        {
          goto LABEL_20;
        }

        goto LABEL_54;
      }
    }

    else
    {
      v23 = v9;
      v24 = *(a2 + 1);
      v25 = 1 - *(a2 + 2);
      if (v25 / v24 * v24 >= v25)
      {
        v26 = v25 / v24;
      }

      else
      {
        v26 = v25 / v24 + 1;
      }

      v27 = *a4;
      if (v27 != -1)
      {
        goto LABEL_16;
      }
    }

    if (*(a4 + 2) < 1)
    {
      v48 = 1;
    }

    else
    {
      v48 = -1;
    }

    v85 = 0xFFFFFFFFLL;
    v86 = v48;
    v31 = *a3;
    if (v31 != -1)
    {
LABEL_20:
      v32 = *(a3 + 1);
      v33 = 1 - *(a3 + 2);
      if (v33 / v32 * v32 >= v33)
      {
        v34 = v33 / v32;
      }

      else
      {
        v34 = v33 / v32 + 1;
      }

      v87 = v31;
      v88 = v34;
      result = operations_research::sat::IntegerTrail::SafeEnqueue(v8, v23, v26, &v85, 2);
      if (!result)
      {
        goto LABEL_70;
      }

      goto LABEL_67;
    }

LABEL_54:
    if (*(a3 + 2) < 1)
    {
      v49 = 1;
    }

    else
    {
      v49 = -1;
    }

    v87 = 0xFFFFFFFFLL;
    v88 = v49;
    result = operations_research::sat::IntegerTrail::SafeEnqueue(v8, v23, v26, &v85, 2);
    if (!result)
    {
      goto LABEL_70;
    }

    goto LABEL_67;
  }

  v36 = -v17 / v18;
  if (v36 * v18 >= -v17)
  {
    v37 = -v17 / v18;
  }

  else
  {
    v37 = v36 + 1;
  }

  v38 = v17 < 0;
  v39 = 1;
  if (!v38)
  {
    v39 = -1;
  }

  if (v16 == -1)
  {
    v40 = 0xFFFFFFFFLL;
  }

  else
  {
    v40 = v16;
  }

  if (v16 == -1)
  {
    v41 = v39;
  }

  else
  {
    v41 = v37;
  }

  if (v9 != -1)
  {
    v42 = -v11;
    if (v42 / v10 * v10 >= v42)
    {
      v43 = v42 / v10;
    }

    else
    {
      v43 = v42 / v10 + 1;
    }

    v85 = v9;
    v86 = v43;
    v44 = *a3;
    if (v44 != -1)
    {
      goto LABEL_41;
    }

LABEL_63:
    if (*(a3 + 2) < 1)
    {
      v51 = 1;
    }

    else
    {
      v51 = -1;
    }

    v87 = 0xFFFFFFFFLL;
    v88 = v51;
    if ((operations_research::sat::IntegerTrail::SafeEnqueue(v8, v40, v41, &v85, 2) & 1) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_67;
  }

  if (v11 < 0)
  {
    v50 = 1;
  }

  else
  {
    v50 = -1;
  }

  v85 = 0xFFFFFFFFLL;
  v86 = v50;
  v44 = *a3;
  if (v44 == -1)
  {
    goto LABEL_63;
  }

LABEL_41:
  v45 = *(a3 + 1);
  v46 = 1 - *(a3 + 2);
  if (v46 / v45 * v45 >= v46)
  {
    v47 = v46 / v45;
  }

  else
  {
    v47 = v46 / v45 + 1;
  }

  v87 = v44;
  v88 = v47;
  if ((operations_research::sat::IntegerTrail::SafeEnqueue(v8, v40, v41, &v85, 2) & 1) == 0)
  {
    goto LABEL_118;
  }

LABEL_67:
  if (v15 > 0)
  {
    if ((v22 & 0x8000000000000000) == 0)
    {
LABEL_69:
      result = 1;
LABEL_70:
      v52 = *MEMORY[0x277D85DE8];
      return result;
    }

LABEL_87:
    v67 = *a2;
    v68 = *(a2 + 2);
    if (v67 == -1)
    {
      v70 = (v68 >> 63) | 1;
      v71 = 0xFFFFFFFFLL;
      v72 = *(a1 + 152);
      v73 = *a4;
      v74 = *(a4 + 2);
      if (v73 != -1)
      {
        goto LABEL_92;
      }
    }

    else
    {
      v69 = ~v68 / *(a2 + 1) - (~v68 / *(a2 + 1) * *(a2 + 1) > ~v68);
      if (v69 >= 0x8000000000000002)
      {
        v70 = -v69;
      }

      else
      {
        v70 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v71 = v67 ^ 1;
      v72 = *(a1 + 152);
      v73 = *a4;
      v74 = *(a4 + 2);
      if (v73 != -1)
      {
LABEL_92:
        v75 = ~v74 / *(a4 + 1) - (~v74 / *(a4 + 1) * *(a4 + 1) > ~v74);
        v76 = 0x7FFFFFFFFFFFFFFFLL;
        if (v75 >= 0x8000000000000002)
        {
          v76 = -v75;
        }

        v85 = v73 ^ 1;
        v86 = v76;
        v77 = *a3;
        if (v77 != -1)
        {
LABEL_95:
          v78 = *(a3 + 1);
          v79 = 1 - *(a3 + 2);
          if (v79 / v78 * v78 >= v79)
          {
            v80 = v79 / v78;
          }

          else
          {
            v80 = v79 / v78 + 1;
          }

          v87 = v77;
          v88 = v80;
          result = operations_research::sat::IntegerTrail::SafeEnqueue(v72, v71, v70, &v85, 2);
          if (!result)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        }

LABEL_102:
        if (*(a3 + 2) < 1)
        {
          v81 = 1;
        }

        else
        {
          v81 = -1;
        }

        v87 = 0xFFFFFFFFLL;
        v88 = v81;
        result = operations_research::sat::IntegerTrail::SafeEnqueue(v72, v71, v70, &v85, 2);
        if (!result)
        {
          goto LABEL_70;
        }

        goto LABEL_69;
      }
    }

    v85 = 0xFFFFFFFFLL;
    v86 = (v74 >> 63) | 1;
    v77 = *a3;
    if (v77 != -1)
    {
      goto LABEL_95;
    }

    goto LABEL_102;
  }

  if (v22 < 1)
  {
    if (v15 || !v22)
    {
      goto LABEL_69;
    }

    goto LABEL_87;
  }

  v53 = *a4;
  v54 = *(a4 + 2);
  if (v53 == -1)
  {
    if (v54 > 0)
    {
      v56 = 1;
    }

    else
    {
      v56 = -1;
    }

    v57 = 0xFFFFFFFFLL;
    v58 = *(a1 + 152);
    v59 = *a2;
    v60 = *(a2 + 2);
    if (v59 != -1)
    {
LABEL_77:
      v61 = -v60 / *(a2 + 1) - (-v60 / *(a2 + 1) * *(a2 + 1) > -v60);
      v62 = 0x7FFFFFFFFFFFFFFFLL;
      if (v61 >= 0x8000000000000002)
      {
        v62 = -v61;
      }

      v85 = v59 ^ 1;
      v86 = v62;
      v63 = *a3;
      if (v63 != -1)
      {
        goto LABEL_80;
      }

LABEL_114:
      if (*(a3 + 2) < 1)
      {
        v83 = 1;
      }

      else
      {
        v83 = -1;
      }

      v87 = 0xFFFFFFFFLL;
      v88 = v83;
      if (operations_research::sat::IntegerTrail::SafeEnqueue(v58, v57, v56, &v85, 2))
      {
        goto LABEL_69;
      }

      goto LABEL_118;
    }
  }

  else
  {
    v55 = -v54 / *(a4 + 1) - (-v54 / *(a4 + 1) * *(a4 + 1) > -v54);
    if (v55 >= 0x8000000000000002)
    {
      v56 = -v55;
    }

    else
    {
      v56 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v57 = v53 ^ 1;
    v58 = *(a1 + 152);
    v59 = *a2;
    v60 = *(a2 + 2);
    if (v59 != -1)
    {
      goto LABEL_77;
    }
  }

  v82 = 1;
  if (v60 <= 0)
  {
    v82 = -1;
  }

  v85 = 0xFFFFFFFFLL;
  v86 = v82;
  v63 = *a3;
  if (v63 == -1)
  {
    goto LABEL_114;
  }

LABEL_80:
  v64 = *(a3 + 1);
  v65 = 1 - *(a3 + 2);
  if (v65 / v64 * v64 >= v65)
  {
    v66 = v65 / v64;
  }

  else
  {
    v66 = v65 / v64 + 1;
  }

  v87 = v63;
  v88 = v66;
  if (operations_research::sat::IntegerTrail::SafeEnqueue(v58, v57, v56, &v85, 2))
  {
    goto LABEL_69;
  }

LABEL_118:
  result = 0;
  v84 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t operations_research::sat::DivisionPropagator::PropagateUpperBounds(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  v64 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 152);
  v9 = *a2;
  v10 = *(a2 + 1);
  v11 = *(a2 + 2);
  if (v9 == -1)
  {
    v12 = *(a2 + 2);
    v13 = *a3;
    v14 = *(a3 + 1);
    v15 = *(a3 + 2);
    if (v13 != -1)
    {
LABEL_3:
      v16 = v8[5];
      v17 = 8 * v13;
      v18 = v15 + *(v16 + v17) * v14;
      v19 = v15 - *(v16 + (v17 ^ 8)) * v14;
      v20 = *a4;
      v21 = *(a4 + 2);
      if (*a4 != -1)
      {
        goto LABEL_4;
      }

LABEL_20:
      if (v21 <= v12 / v18)
      {
        goto LABEL_32;
      }

      v25 = 1;
      v26 = 0xFFFFFFFFLL;
      if (v9 != -1)
      {
        goto LABEL_9;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v12 = v11 - *(v8[5] + ((8 * v9) ^ 8)) * v10;
    v13 = *a3;
    v14 = *(a3 + 1);
    v15 = *(a3 + 2);
    if (v13 != -1)
    {
      goto LABEL_3;
    }
  }

  v18 = v15;
  v19 = v15;
  v20 = *a4;
  v21 = *(a4 + 2);
  if (*a4 == -1)
  {
    goto LABEL_20;
  }

LABEL_4:
  v22 = *(a4 + 1);
  v23 = v21 - *(v8[5] + ((8 * v20) ^ 8)) * v22;
  if (v23 <= v12 / v18)
  {
    v21 -= *(v8[5] + ((8 * v20) ^ 8)) * v22;
    goto LABEL_32;
  }

  v24 = (v12 / v18 - v21) / v22 - ((v12 / v18 - v21) / v22 * v22 > v12 / v18 - v21);
  if (v24 >= 0x8000000000000002)
  {
    v25 = -v24;
  }

  else
  {
    v25 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v26 = v20 ^ 1u;
  v21 = v23;
  if (v9 != -1)
  {
LABEL_9:
    v27 = (v12 - v11) / v10 - ((v12 - v11) / v10 * v10 > v12 - v11);
    if (v27 >= 0x8000000000000002)
    {
      v28 = -v27;
    }

    else
    {
      v28 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v58 = v9 ^ 1;
    v59 = v28;
    if (v13 != -1)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

LABEL_22:
  if (v12 < v11)
  {
    v32 = 1;
  }

  else
  {
    v32 = -1;
  }

  v58 = 0xFFFFFFFFLL;
  v59 = v32;
  if (v13 != -1)
  {
LABEL_13:
    v29 = v18 - v15;
    if (v29 / v14 * v14 >= v29)
    {
      v30 = v29 / v14;
    }

    else
    {
      v30 = v29 / v14 + 1;
    }

    v60 = v13;
    v61 = v30;
    result = operations_research::sat::IntegerTrail::SafeEnqueue(v8, v26, v25, &v58, 2);
    if (!result)
    {
      goto LABEL_55;
    }

LABEL_32:
    if (((v21 + 1) * v19) >> 64 == ((v21 + 1) * v19) >> 63)
    {
      v34 = (v21 + 1) * v19;
    }

    else
    {
      v34 = (((v21 + 1) ^ v19) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
    }

    v35 = (v34 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
    v36 = __OFSUB__(v34, 1);
    v37 = v34 - 1;
    if (!v36)
    {
      v35 = v37;
    }

    if (v12 <= v35)
    {
      goto LABEL_54;
    }

    v38 = *a2;
    v39 = *(a2 + 2);
    if (v38 == -1)
    {
      if (v35 < v39)
      {
        v41 = 1;
      }

      else
      {
        v41 = -1;
      }

      v42 = 0xFFFFFFFFLL;
      v43 = *(a1 + 152);
      v44 = *a3;
      v45 = *(a3 + 2);
      if (v44 != -1)
      {
LABEL_43:
        v46 = *(a3 + 1);
        if ((v19 - v45) / v46 - ((v19 - v45) / v46 * v46 > v19 - v45) >= 0x8000000000000002)
        {
          v47 = ((v19 - v45) / v46 * v46 > v19 - v45) - (v19 - v45) / v46;
        }

        else
        {
          v47 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v48 = 1 - v45;
        if (v48 / v46 * v46 >= v48)
        {
          v49 = v48 / v46;
        }

        else
        {
          v49 = v48 / v46 + 1;
        }

        v58 = v44 ^ 1;
        v59 = v47;
        v60 = v44;
        v61 = v49;
        v50 = *a4;
        v51 = *(a4 + 2);
        if (v50 != -1)
        {
          goto LABEL_50;
        }

        goto LABEL_67;
      }
    }

    else
    {
      v40 = (v35 - v39) / *(a2 + 1) - ((v35 - v39) / *(a2 + 1) * *(a2 + 1) > v35 - v39);
      if (v40 >= 0x8000000000000002)
      {
        v41 = -v40;
      }

      else
      {
        v41 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v42 = v38 ^ 1;
      v43 = *(a1 + 152);
      v44 = *a3;
      v45 = *(a3 + 2);
      if (v44 != -1)
      {
        goto LABEL_43;
      }
    }

    if (v19 < v45)
    {
      v55 = 1;
    }

    else
    {
      v55 = -1;
    }

    if (v45 < 1)
    {
      v56 = 1;
    }

    else
    {
      v56 = -1;
    }

    v58 = 0xFFFFFFFFLL;
    v59 = v55;
    v60 = 0xFFFFFFFFLL;
    v61 = v56;
    v50 = *a4;
    v51 = *(a4 + 2);
    if (v50 != -1)
    {
LABEL_50:
      v52 = (v21 - v51) / *(a4 + 1) - ((v21 - v51) / *(a4 + 1) * *(a4 + 1) > v21 - v51);
      if (v52 >= 0x8000000000000002)
      {
        v53 = -v52;
      }

      else
      {
        v53 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v62 = v50 ^ 1;
      v63 = v53;
      result = operations_research::sat::IntegerTrail::SafeEnqueue(v43, v42, v41, &v58, 3);
      if (!result)
      {
        goto LABEL_55;
      }

      goto LABEL_54;
    }

LABEL_67:
    if (v21 < v51)
    {
      v57 = 1;
    }

    else
    {
      v57 = -1;
    }

    v62 = 0xFFFFFFFFLL;
    v63 = v57;
    result = operations_research::sat::IntegerTrail::SafeEnqueue(v43, v42, v41, &v58, 3);
    if (!result)
    {
      goto LABEL_55;
    }

LABEL_54:
    result = 1;
    goto LABEL_55;
  }

LABEL_26:
  if (v18 > v15)
  {
    v33 = 1;
  }

  else
  {
    v33 = -1;
  }

  v60 = 0xFFFFFFFFLL;
  v61 = v33;
  result = operations_research::sat::IntegerTrail::SafeEnqueue(v8, v26, v25, &v58, 2);
  if (result)
  {
    goto LABEL_32;
  }

LABEL_55:
  v54 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t operations_research::sat::DivisionPropagator::PropagatePositiveDomains(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  v117 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 152);
  v9 = *a2;
  v10 = *(a2 + 1);
  v11 = *(a2 + 2);
  if (v9 == -1)
  {
    v14 = *(a2 + 2);
    v15 = v14;
    v16 = *a3;
    v18 = *(a3 + 1);
    v17 = *(a3 + 2);
    if (v16 != -1)
    {
LABEL_3:
      v19 = v8[5];
      v20 = 8 * v16;
      v21 = v17 + *(v19 + v20) * v18;
      v22 = v17 - *(v19 + (v20 ^ 8)) * v18;
      v23 = *a4;
      v24 = *(a4 + 2);
      v25 = v14 / v22;
      if (v23 != -1)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v12 = v8[5];
    v13 = 8 * v9;
    v14 = v11 + *(v12 + v13) * v10;
    v15 = v11 - *(v12 + (v13 ^ 8)) * v10;
    v16 = *a3;
    v18 = *(a3 + 1);
    v17 = *(a3 + 2);
    if (v16 != -1)
    {
      goto LABEL_3;
    }
  }

  v21 = v17;
  v22 = v17;
  v23 = *a4;
  v24 = *(a4 + 2);
  v25 = v14 / v17;
  if (v23 != -1)
  {
LABEL_4:
    v26 = *(a4 + 1);
    v27 = v8[5];
    v28 = 8 * v23;
    v29 = v24 + *(v27 + v28) * v26;
    v30 = v24 - *(v27 + (v28 ^ 8)) * v26;
    if (v29 >= v25)
    {
      v24 += *(v27 + 8 * v23) * v26;
      goto LABEL_39;
    }

    v31 = v25 - v24;
    if (v31 / v26 * v26 >= v31)
    {
      v32 = v31 / v26;
    }

    else
    {
      v32 = v31 / v26 + 1;
    }

    v24 = v29;
    if (v9 != -1)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_23:
  if (v24 >= v25)
  {
    v30 = v24;
    goto LABEL_39;
  }

  v32 = 1;
  v23 = 0xFFFFFFFFLL;
  v30 = v24;
  if (v9 != -1)
  {
LABEL_9:
    v33 = v14 - v11;
    if (v33 / v10 * v10 >= v33)
    {
      v34 = v33 / v10;
    }

    else
    {
      v34 = v33 / v10 + 1;
    }

    v109 = v9;
    v110 = v34;
    if (v16 != -1)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_25:
  if (v14 > v11)
  {
    v39 = 1;
  }

  else
  {
    v39 = -1;
  }

  v109 = 0xFFFFFFFFLL;
  v110 = v39;
  if (v16 != -1)
  {
LABEL_13:
    if ((v22 - v17) / v18 - ((v22 - v17) / v18 * v18 > v22 - v17) >= 0x8000000000000002)
    {
      v35 = ((v22 - v17) / v18 * v18 > v22 - v17) - (v22 - v17) / v18;
    }

    else
    {
      v35 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v36 = 1 - v17;
    if (v36 / v18 * v18 >= v36)
    {
      v37 = v36 / v18;
    }

    else
    {
      v37 = v36 / v18 + 1;
    }

    v111 = v16 ^ 1;
    v112 = v35;
    v113 = v16;
    v114 = v37;
    result = operations_research::sat::IntegerTrail::SafeEnqueue(v8, v23, v32, &v109, 3);
    if (!result)
    {
      goto LABEL_133;
    }

LABEL_39:
    v42 = ((v24 ^ v21) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
    if ((v21 * v24) >> 64 == (v21 * v24) >> 63)
    {
      v42 = v21 * v24;
    }

    if (v14 >= v42)
    {
      goto LABEL_68;
    }

    v43 = *a2;
    if (v43 == -1)
    {
      if (*(a2 + 2) < v42)
      {
        v46 = 1;
      }

      else
      {
        v46 = -1;
      }

      v43 = 0xFFFFFFFFLL;
      v47 = *(a1 + 152);
      v48 = *a3;
      if (v48 != -1)
      {
LABEL_47:
        v49 = *(a3 + 1);
        v50 = v21 - *(a3 + 2);
        if (v50 / v49 * v49 >= v50)
        {
          v51 = v50 / v49;
        }

        else
        {
          v51 = v50 / v49 + 1;
        }

        v109 = v48;
        v110 = v51;
        v52 = *a4;
        if (v52 != -1)
        {
          goto LABEL_51;
        }

        goto LABEL_64;
      }
    }

    else
    {
      v44 = *(a2 + 1);
      v45 = v42 - *(a2 + 2);
      if (v45 / v44 * v44 >= v45)
      {
        v46 = v45 / v44;
      }

      else
      {
        v46 = v45 / v44 + 1;
      }

      v47 = *(a1 + 152);
      v48 = *a3;
      if (v48 != -1)
      {
        goto LABEL_47;
      }
    }

    if (*(a3 + 2) < v21)
    {
      v56 = 1;
    }

    else
    {
      v56 = -1;
    }

    v109 = 0xFFFFFFFFLL;
    v110 = v56;
    v52 = *a4;
    if (v52 != -1)
    {
LABEL_51:
      v53 = *(a4 + 1);
      v54 = v24 - *(a4 + 2);
      if (v54 / v53 * v53 >= v54)
      {
        v55 = v54 / v53;
      }

      else
      {
        v55 = v54 / v53 + 1;
      }

      v111 = v52;
      v112 = v55;
      result = operations_research::sat::IntegerTrail::SafeEnqueue(v47, v43, v46, &v109, 2);
      if (!result)
      {
        goto LABEL_133;
      }

      goto LABEL_68;
    }

LABEL_64:
    if (*(a4 + 2) < v24)
    {
      v57 = 1;
    }

    else
    {
      v57 = -1;
    }

    v111 = 0xFFFFFFFFLL;
    v112 = v57;
    result = operations_research::sat::IntegerTrail::SafeEnqueue(v47, v43, v46, &v109, 2);
    if (!result)
    {
      goto LABEL_133;
    }

LABEL_68:
    if (v24 < 1)
    {
      goto LABEL_109;
    }

    v58 = v15 / v24;
    if (v22 <= v15 / v24)
    {
      goto LABEL_109;
    }

    v59 = *a3;
    v60 = *(a3 + 2);
    if (v59 == -1)
    {
      if (v58 < v60)
      {
        v62 = 1;
      }

      else
      {
        v62 = -1;
      }

      v63 = 0xFFFFFFFFLL;
      v64 = *a2;
      v65 = *(a2 + 2);
      if (v64 != -1)
      {
LABEL_75:
        v66 = *(a2 + 1);
        v67 = (v15 - v65) / v66;
        v68 = 0x7FFFFFFFFFFFFFFFLL;
        if (v67 - (v67 * v66 > v15 - v65) >= 0x8000000000000002)
        {
          v68 = (v67 * v66 > v15 - v65) - v67;
        }

        v69 = -v65;
        if (v69 / v66 * v66 >= v69)
        {
          v70 = v69 / v66;
        }

        else
        {
          v70 = v69 / v66 + 1;
        }

        v71 = *(a1 + 152);
        v109 = v64 ^ 1;
        v110 = v68;
        v111 = v64;
        v112 = v70;
        v72 = *a4;
        if (v72 != -1)
        {
LABEL_81:
          v73 = *(a4 + 1);
          v74 = v24 - *(a4 + 2);
          if (v74 / v73 * v73 >= v74)
          {
            v75 = v74 / v73;
          }

          else
          {
            v75 = v74 / v73 + 1;
          }

          v113 = v72;
          v114 = v75;
          if (v59 != -1)
          {
            goto LABEL_85;
          }

          goto LABEL_105;
        }

LABEL_101:
        if (*(a4 + 2) < v24)
        {
          v81 = 1;
        }

        else
        {
          v81 = -1;
        }

        v113 = 0xFFFFFFFFLL;
        v114 = v81;
        if (v59 != -1)
        {
LABEL_85:
          v76 = 1 - v60;
          v77 = *(a3 + 1);
          if (v76 / v77 * v77 >= v76)
          {
            v78 = v76 / v77;
          }

          else
          {
            v78 = v76 / v77 + 1;
          }

          v115 = v59;
          v116 = v78;
          result = operations_research::sat::IntegerTrail::SafeEnqueue(v71, v63, v62, &v109, 4);
          if (!result)
          {
            goto LABEL_133;
          }

          goto LABEL_109;
        }

LABEL_105:
        if (v60 < 1)
        {
          v82 = 1;
        }

        else
        {
          v82 = -1;
        }

        v115 = 0xFFFFFFFFLL;
        v116 = v82;
        result = operations_research::sat::IntegerTrail::SafeEnqueue(v71, v63, v62, &v109, 4);
        if (!result)
        {
          goto LABEL_133;
        }

LABEL_109:
        v83 = (v14 + 1) / (v30 + 1);
        if (v83 * (v30 + 1) < v14 + 1)
        {
          ++v83;
        }

        if (v21 >= v83)
        {
          goto LABEL_132;
        }

        v84 = *a3;
        if (v84 == -1)
        {
          v85 = *(a3 + 2);
          if (v85 < v83)
          {
            v88 = 1;
          }

          else
          {
            v88 = -1;
          }

          v89 = 0xFFFFFFFFLL;
          v90 = *a2;
          if (v90 != -1)
          {
LABEL_117:
            v91 = *(a2 + 1);
            v92 = v14 - *(a2 + 2);
            if (v92 / v91 * v91 >= v92)
            {
              v93 = v92 / v91;
            }

            else
            {
              v93 = v92 / v91 + 1;
            }

            v94 = *(a1 + 152);
            v109 = v90;
            v110 = v93;
            v95 = *a4;
            v96 = *(a4 + 2);
            if (v95 != -1)
            {
              goto LABEL_121;
            }

            goto LABEL_142;
          }
        }

        else
        {
          v86 = *(a3 + 1);
          v85 = *(a3 + 2);
          v87 = v83 - v85;
          if (v87 / v86 * v86 >= v87)
          {
            v88 = v87 / v86;
          }

          else
          {
            v88 = v87 / v86 + 1;
          }

          v89 = *a3;
          v90 = *a2;
          if (v90 != -1)
          {
            goto LABEL_117;
          }
        }

        if (*(a2 + 2) < v14)
        {
          v105 = 1;
        }

        else
        {
          v105 = -1;
        }

        v94 = *(a1 + 152);
        v109 = 0xFFFFFFFFLL;
        v110 = v105;
        v95 = *a4;
        v96 = *(a4 + 2);
        if (v95 != -1)
        {
LABEL_121:
          v97 = *(a4 + 1);
          if ((v30 - v96) / v97 - ((v30 - v96) / v97 * v97 > v30 - v96) >= 0x8000000000000002)
          {
            v98 = ((v30 - v96) / v97 * v97 > v30 - v96) - (v30 - v96) / v97;
          }

          else
          {
            v98 = 0x7FFFFFFFFFFFFFFFLL;
          }

          v99 = -v96;
          if (v99 / v97 * v97 >= v99)
          {
            v100 = v99 / v97;
          }

          else
          {
            v100 = v99 / v97 + 1;
          }

          v111 = v95 ^ 1;
          v112 = v98;
          v113 = v95;
          v114 = v100;
          if (v84 != -1)
          {
            goto LABEL_128;
          }

          goto LABEL_149;
        }

LABEL_142:
        if (v30 < v96)
        {
          v106 = 1;
        }

        else
        {
          v106 = -1;
        }

        if (v96 < 0)
        {
          v107 = 1;
        }

        else
        {
          v107 = -1;
        }

        v111 = 0xFFFFFFFFLL;
        v112 = v106;
        v113 = 0xFFFFFFFFLL;
        v114 = v107;
        if (v84 != -1)
        {
LABEL_128:
          v101 = 1 - v85;
          v102 = *(a3 + 1);
          if (v101 / v102 * v102 >= v101)
          {
            v103 = v101 / v102;
          }

          else
          {
            v103 = v101 / v102 + 1;
          }

          v115 = v84;
          v116 = v103;
          result = operations_research::sat::IntegerTrail::SafeEnqueue(v94, v89, v88, &v109, 4);
          if (!result)
          {
            goto LABEL_133;
          }

          goto LABEL_132;
        }

LABEL_149:
        if (v85 < 1)
        {
          v108 = 1;
        }

        else
        {
          v108 = -1;
        }

        v115 = 0xFFFFFFFFLL;
        v116 = v108;
        result = operations_research::sat::IntegerTrail::SafeEnqueue(v94, v89, v88, &v109, 4);
        if (!result)
        {
          goto LABEL_133;
        }

LABEL_132:
        result = 1;
        goto LABEL_133;
      }
    }

    else
    {
      v61 = (v58 - v60) / *(a3 + 1) - ((v58 - v60) / *(a3 + 1) * *(a3 + 1) > v58 - v60);
      if (v61 >= 0x8000000000000002)
      {
        v62 = -v61;
      }

      else
      {
        v62 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v63 = v59 ^ 1;
      v64 = *a2;
      v65 = *(a2 + 2);
      if (v64 != -1)
      {
        goto LABEL_75;
      }
    }

    if (v15 < v65)
    {
      v79 = 1;
    }

    else
    {
      v79 = -1;
    }

    if (v65 < 0)
    {
      v80 = 1;
    }

    else
    {
      v80 = -1;
    }

    v71 = *(a1 + 152);
    v109 = 0xFFFFFFFFLL;
    v110 = v79;
    v111 = 0xFFFFFFFFLL;
    v112 = v80;
    v72 = *a4;
    if (v72 != -1)
    {
      goto LABEL_81;
    }

    goto LABEL_101;
  }

LABEL_29:
  if (v22 < v17)
  {
    v40 = 1;
  }

  else
  {
    v40 = -1;
  }

  if (v17 < 1)
  {
    v41 = 1;
  }

  else
  {
    v41 = -1;
  }

  v111 = 0xFFFFFFFFLL;
  v112 = v40;
  v113 = 0xFFFFFFFFLL;
  v114 = v41;
  result = operations_research::sat::IntegerTrail::SafeEnqueue(v8, v23, v32, &v109, 3);
  if (result)
  {
    goto LABEL_39;
  }

LABEL_133:
  v104 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 operations_research::sat::FixedDivisionPropagator::FixedDivisionPropagator(uint64_t a1, uint64_t a2, uint64_t a3, __n128 *a4, uint64_t a5)
{
  *a1 = &unk_284F42328;
  v5 = *(a2 + 16);
  *(a1 + 8) = *a2;
  *(a1 + 24) = v5;
  *(a1 + 32) = a3;
  result = *a4;
  v7 = a4[1].n128_u64[0];
  *(a1 + 40) = *a4;
  *(a1 + 56) = v7;
  *(a1 + 64) = a5;
  if (a3 <= 0)
  {
    operations_research::sat::FixedDivisionPropagator::FixedDivisionPropagator((a1 + 32));
  }

  return result;
}

uint64_t operations_research::sat::FixedDivisionPropagator::Propagate(operations_research::sat::FixedDivisionPropagator *this)
{
  v53 = *MEMORY[0x277D85DE8];
  v2 = *(this + 8);
  v3 = *(this + 2);
  v4 = *(this + 3);
  if (v3 == -1)
  {
    v8 = *(this + 3);
    v9 = v8;
    v49 = v8;
    v50 = v4;
    v10 = *(this + 10);
    v11 = *(this + 7);
    if (v10 != -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *(this + 2);
    v6 = v2[5];
    v7 = 8 * v3;
    v8 = v4 + *(v6 + v7) * v5;
    v50 = v8;
    v9 = v4 - *(v6 + (v7 ^ 8)) * v5;
    v49 = v9;
    v10 = *(this + 10);
    v11 = *(this + 7);
    if (v10 != -1)
    {
LABEL_3:
      v12 = *(this + 6);
      v13 = v2[5];
      v14 = 8 * v10;
      v15 = v11 + *(v13 + v14) * v12;
      v16 = v11 - *(v13 + (v14 ^ 8)) * v12;
      v18 = (this + 32);
      v17 = *(this + 4);
      v19 = v9 / v17;
      if (v9 / v17 < v16)
      {
        if ((v19 - v11) / v12 - ((v19 - v11) / v12 * v12 > v19 - v11) >= 0x8000000000000002)
        {
          v20 = ((v19 - v11) / v12 * v12 > v19 - v11) - (v19 - v11) / v12;
        }

        else
        {
          v20 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v21 = v10 ^ 1;
        if (v3 != -1)
        {
          goto LABEL_8;
        }

        goto LABEL_14;
      }

      v11 = v16;
      if (v19 <= v16)
      {
        goto LABEL_40;
      }

      goto LABEL_20;
    }
  }

  v18 = (this + 32);
  v17 = *(this + 4);
  if (v9 / v17 < v11)
  {
    v20 = 1;
    v21 = 0xFFFFFFFFLL;
    v15 = v11;
    if (v3 != -1)
    {
LABEL_8:
      v22 = *(v2[5] + ((8 * v3) ^ 8));
      if (v22 - 1 > 0x7FFFFFFFFFFFFFFDLL)
      {
        v22 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v23 = v3 ^ 1;
LABEL_15:
      v51 = v23;
      v52 = v22;
      if ((operations_research::sat::IntegerTrail::SafeEnqueue(v2, v21, v20, &v51, 1) & 1) == 0)
      {
        goto LABEL_72;
      }

      goto LABEL_40;
    }

LABEL_14:
    v22 = -1;
    v23 = 0xFFFFFFFFLL;
    goto LABEL_15;
  }

  v15 = v11;
  if (v9 / v17 <= v11)
  {
    goto LABEL_40;
  }

LABEL_20:
  v24 = (v17 >> 63) ^ 0x8000000000000000;
  if ((v11 * v17) >> 64 == (v11 * v17) >> 63)
  {
    v24 = v11 * v17;
  }

  v25 = v17 + v17 * v11 - 1;
  if (v11 >= 0)
  {
    v26 = v25;
  }

  else
  {
    v26 = v24;
  }

  v48 = v26;
  if (v26 >= v9)
  {
    operations_research::sat::FixedDivisionPropagator::Propagate(&v48, &v49);
  }

  if (v3 == -1)
  {
    if (v26 < v4)
    {
      v28 = 1;
    }

    else
    {
      v28 = -1;
    }

    v29 = 0xFFFFFFFFLL;
    if (v10 != -1)
    {
      goto LABEL_31;
    }

LABEL_38:
    v30 = -1;
    v31 = 0xFFFFFFFFLL;
    goto LABEL_39;
  }

  v27 = (v26 - v4) / *(this + 2) - ((v26 - v4) / *(this + 2) * *(this + 2) > v26 - v4);
  if (v27 >= 0x8000000000000002)
  {
    v28 = -v27;
  }

  else
  {
    v28 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v29 = v3 ^ 1;
  if (v10 == -1)
  {
    goto LABEL_38;
  }

LABEL_31:
  v30 = *(v2[5] + ((8 * v10) ^ 8));
  if (v30 - 1 > 0x7FFFFFFFFFFFFFFDLL)
  {
    v30 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v31 = v10 ^ 1;
LABEL_39:
  v51 = v31;
  v52 = v30;
  if ((operations_research::sat::IntegerTrail::SafeEnqueue(v2, v29, v28, &v51, 1) & 1) == 0)
  {
    goto LABEL_72;
  }

LABEL_40:
  v32 = *v18;
  v33 = v8 / *v18;
  if (v33 <= v15)
  {
    if (v33 >= v15)
    {
LABEL_71:
      result = 1;
      v46 = *MEMORY[0x277D85DE8];
      return result;
    }

    v41 = v32 * (v15 - 1) + 1;
    if ((v15 * v32) >> 64 == (v15 * v32) >> 63)
    {
      v42 = v15 * v32;
    }

    else
    {
      v42 = (v32 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v15 >= 1)
    {
      v41 = v42;
    }

    v48 = v41;
    if (v41 <= v8)
    {
      operations_research::sat::FixedDivisionPropagator::Propagate(&v48, &v50);
    }

    v34 = *(this + 8);
    v35 = *(this + 2);
    if (v35 == -1)
    {
      if (*(this + 3) < v41)
      {
        v38 = 1;
      }

      else
      {
        v38 = -1;
      }

      v35 = 0xFFFFFFFFLL;
      v39 = *(this + 10);
      if (v39 != -1)
      {
        goto LABEL_59;
      }
    }

    else
    {
      v43 = *(this + 2);
      v44 = v41 - *(this + 3);
      if (v44 / v43 * v43 >= v44)
      {
        v38 = v44 / v43;
      }

      else
      {
        v38 = v44 / v43 + 1;
      }

      v39 = *(this + 10);
      if (v39 != -1)
      {
LABEL_59:
        v40 = *(v34[5] + 8 * v39);
        goto LABEL_70;
      }
    }

    v40 = -1;
    v39 = 0xFFFFFFFFLL;
    goto LABEL_70;
  }

  v34 = *(this + 8);
  v35 = *(this + 10);
  if (v35 == -1)
  {
    if (*(this + 7) < v33)
    {
      v38 = 1;
    }

    else
    {
      v38 = -1;
    }

    v35 = 0xFFFFFFFFLL;
    v39 = *(this + 2);
    if (v39 != -1)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v36 = *(this + 6);
    v37 = v33 - *(this + 7);
    if (v37 / v36 * v36 >= v37)
    {
      v38 = v37 / v36;
    }

    else
    {
      v38 = v37 / v36 + 1;
    }

    v39 = *(this + 2);
    if (v39 != -1)
    {
LABEL_46:
      v40 = *(v34[5] + 8 * v39);
      goto LABEL_70;
    }
  }

  v40 = -1;
  v39 = 0xFFFFFFFFLL;
LABEL_70:
  v51 = v39;
  v52 = v40;
  if (operations_research::sat::IntegerTrail::SafeEnqueue(v34, v35, v38, &v51, 1))
  {
    goto LABEL_71;
  }

LABEL_72:
  result = 0;
  v47 = *MEMORY[0x277D85DE8];
  return result;
}

void operations_research::sat::FixedDivisionPropagator::RegisterWith(operations_research::sat::FixedDivisionPropagator *this, operations_research::sat::GenericLiteralWatcher *a2)
{
  v4 = operations_research::sat::GenericLiteralWatcher::Register(a2, this);
  operations_research::sat::GenericLiteralWatcher::WatchIntegerVariable(a2, *(this + 2), v4, 0xFFFFFFFF);
  v5 = *(this + 10);

  operations_research::sat::GenericLiteralWatcher::WatchIntegerVariable(a2, v5, v4, 0xFFFFFFFF);
}

__n128 operations_research::sat::FixedModuloPropagator::FixedModuloPropagator(uint64_t a1, uint64_t a2, uint64_t a3, __n128 *a4, uint64_t a5)
{
  *a1 = &unk_284F42358;
  v5 = *(a2 + 16);
  *(a1 + 8) = *a2;
  *(a1 + 24) = v5;
  *(a1 + 32) = a3;
  result = *a4;
  *(a1 + 56) = a4[1].n128_u64[0];
  *(a1 + 40) = result;
  *(a1 + 64) = -1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = -1;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = a5;
  if (a3 <= 0)
  {
    operations_research::sat::FixedModuloPropagator::FixedModuloPropagator((a1 + 32));
  }

  return result;
}

uint64_t operations_research::sat::FixedModuloPropagator::Propagate(operations_research::sat::FixedModuloPropagator *this)
{
  result = operations_research::sat::FixedModuloPropagator::PropagateSignsAndTargetRange(this);
  if (!result)
  {
    return result;
  }

  result = operations_research::sat::FixedModuloPropagator::PropagateOuterBounds(this);
  if (!result)
  {
    return result;
  }

  v3 = *(this + 2);
  v4 = *(this + 3);
  if (v3 != -1)
  {
    v5 = *(this + 2);
    v6 = *(*(this + 14) + 40);
    v7 = 8 * v3;
    if (v4 + *(v6 + v7) * v5 < 0)
    {
      if (v4 - *(v6 + (v7 ^ 8)) * v5 < 1)
      {
        v8 = v3 ^ (v5 >> 63) ^ 1;
        if (v5 >= 0)
        {
          v9 = *(this + 2);
        }

        else
        {
          v9 = -v5;
        }

        goto LABEL_14;
      }

      return 1;
    }

LABEL_10:
    v15 = *(this + 8);
    v16 = *(this + 3);
    v13 = *(this + 40);
    v14 = *(this + 7);
    return (operations_research::sat::FixedModuloPropagator::PropagateBoundsWhenExprIsPositive(this, &v15, &v13) & 1) != 0;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    goto LABEL_10;
  }

  v9 = 0;
  v8 = -1;
LABEL_14:
  LODWORD(v15) = v8;
  *(&v15 + 1) = v9;
  v16 = -v4;
  v10 = *(this + 10);
  if (v10 == -1)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(this + 6);
    v10 ^= (v11 >> 63) ^ 1;
    if (v11 < 0)
    {
      v11 = -v11;
    }
  }

  v12 = -*(this + 7);
  LODWORD(v13) = v10;
  *(&v13 + 1) = v11;
  v14 = v12;
  result = operations_research::sat::FixedModuloPropagator::PropagateBoundsWhenExprIsPositive(this, &v15, &v13);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t operations_research::sat::FixedModuloPropagator::PropagateSignsAndTargetRange(operations_research::sat::FixedModuloPropagator *this)
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = *(this + 14);
  v3 = *(this + 10);
  v4 = *(this + 7);
  if (v3 == -1)
  {
    v7 = (this + 32);
    v11 = *(this + 4);
    if (v4 < v11)
    {
      goto LABEL_21;
    }

    if (v4 > v11 - 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = -1;
    }

    result = operations_research::sat::IntegerTrail::SafeEnqueue(v2, 0xFFFFFFFFLL, v12, 0, 0);
    if (!result)
    {
      goto LABEL_53;
    }
  }

  else
  {
    v5 = *(this + 6);
    v7 = (this + 32);
    v6 = *(this + 4);
    if (v4 - *(v2[5] + ((8 * v3) ^ 8)) * v5 < v6)
    {
      goto LABEL_15;
    }

    v8 = (v6 + ~v4) / v5 - ((v6 + ~v4) / v5 * v5 > v6 + ~v4);
    if (v8 >= 0x8000000000000002)
    {
      v9 = -v8;
    }

    else
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    result = operations_research::sat::IntegerTrail::SafeEnqueue(v2, v3 ^ 1, v9, 0, 0);
    if (!result)
    {
      goto LABEL_53;
    }
  }

  v2 = *(this + 14);
  LODWORD(v3) = *(this + 10);
  v4 = *(this + 7);
  if (v3 != -1)
  {
    v5 = *(this + 6);
LABEL_15:
    if (v4 + *(v2[5] + 8 * v3) * v5 <= -*v7)
    {
      v13 = 1 - v4 - *v7;
      if (v13 / v5 * v5 >= v13)
      {
        v14 = v13 / v5;
      }

      else
      {
        v14 = v13 / v5 + 1;
      }

      result = operations_research::sat::IntegerTrail::SafeEnqueue(v2, v3, v14, 0, 0);
      if (!result)
      {
        goto LABEL_53;
      }

LABEL_26:
      v2 = *(this + 14);
      goto LABEL_27;
    }

    goto LABEL_27;
  }

LABEL_21:
  if (v4 <= -*v7)
  {
    if (v4 < 1 - *v7)
    {
      v15 = 1;
    }

    else
    {
      v15 = -1;
    }

    result = operations_research::sat::IntegerTrail::SafeEnqueue(v2, 0xFFFFFFFFLL, v15, 0, 0);
    if (!result)
    {
      goto LABEL_53;
    }

    goto LABEL_26;
  }

LABEL_27:
  v16 = *(this + 2);
  v17 = *(this + 2);
  v18 = *(this + 3);
  v19 = v18;
  if (v16 != -1)
  {
    v19 = v18 + *(v2[5] + 8 * v16) * v17;
  }

  if (v19 < 0)
  {
LABEL_49:
    v30 = v18;
    if (v16 != -1)
    {
      v30 = v18 - *(v2[5] + ((8 * v16) ^ 8)) * v17;
    }

    if (v30 > 0)
    {
      goto LABEL_52;
    }

    v32 = *(this + 10);
    v33 = *(this + 7);
    if (v32 == -1)
    {
      if (v33 <= 0)
      {
        goto LABEL_52;
      }

      v36 = 1;
      v37 = 0xFFFFFFFFLL;
      if (v16 != -1)
      {
LABEL_60:
        v38 = -v18 / v17 - (-v18 / v17 * v17 > -v18);
        if (v38 >= 0x8000000000000002)
        {
          v39 = -v38;
        }

        else
        {
          v39 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v41 = v16 ^ 1;
        v42 = v39;
        result = operations_research::sat::IntegerTrail::SafeEnqueue(v2, v37, v36, &v41, 1);
        if (!result)
        {
          goto LABEL_53;
        }

        goto LABEL_52;
      }
    }

    else
    {
      v34 = *(this + 6);
      if (v33 - *(v2[5] + ((8 * v32) ^ 8)) * v34 < 1)
      {
        goto LABEL_52;
      }

      v35 = -v33 / v34 - (-v33 / v34 * v34 > -v33);
      if (v35 >= 0x8000000000000002)
      {
        v36 = -v35;
      }

      else
      {
        v36 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v37 = v32 ^ 1u;
      if (v16 != -1)
      {
        goto LABEL_60;
      }
    }

    if (v18 > 0)
    {
      v40 = 1;
    }

    else
    {
      v40 = -1;
    }

    v41 = 0xFFFFFFFFLL;
    v42 = v40;
    result = operations_research::sat::IntegerTrail::SafeEnqueue(v2, v37, v36, &v41, 1);
    if (!result)
    {
      goto LABEL_53;
    }

LABEL_52:
    result = 1;
    goto LABEL_53;
  }

  v20 = *(this + 10);
  v21 = *(this + 7);
  if (v20 == -1)
  {
    if ((v21 & 0x8000000000000000) == 0)
    {
      goto LABEL_49;
    }

    v24 = 1;
    v20 = 0xFFFFFFFFLL;
  }

  else
  {
    v22 = *(this + 6);
    if (((v21 + *(v2[5] + 8 * v20) * v22) & 0x8000000000000000) == 0)
    {
      goto LABEL_49;
    }

    v23 = -v21;
    if (v23 / v22 * v22 >= v23)
    {
      v24 = v23 / v22;
    }

    else
    {
      v24 = v23 / v22 + 1;
    }
  }

  v25 = -v18 / v17;
  if (v25 * v17 >= -v18)
  {
    v26 = -v18 / v17;
  }

  else
  {
    v26 = v25 + 1;
  }

  v27 = v18 < 0;
  v28 = 1;
  if (!v27)
  {
    v28 = -1;
  }

  v29 = v16 == -1;
  if (v16 == -1)
  {
    v16 = 0xFFFFFFFFLL;
  }

  if (v29)
  {
    v26 = v28;
  }

  v41 = v16;
  v42 = v26;
  result = operations_research::sat::IntegerTrail::SafeEnqueue(v2, v20, v24, &v41, 1);
  if (result)
  {
    v2 = *(this + 14);
    LODWORD(v16) = *(this + 2);
    v17 = *(this + 2);
    v18 = *(this + 3);
    goto LABEL_49;
  }

LABEL_53:
  v31 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t operations_research::sat::FixedModuloPropagator::PropagateOuterBounds(operations_research::sat::FixedModuloPropagator *this)
{
  v98 = *MEMORY[0x277D85DE8];
  v2 = *(this + 14);
  v3 = *(this + 2);
  v5 = *(this + 2);
  v4 = *(this + 3);
  if (v3 == -1)
  {
    v8 = *(this + 3);
    v9 = v8;
    v10 = *(this + 10);
    v11 = *(this + 7);
    if (v10 != -1)
    {
LABEL_3:
      v12 = *(this + 6);
      v13 = v2[5];
      v14 = 8 * v10;
      v15 = v11 - *(v13 + (v14 ^ 8)) * v12;
      v11 += *(v13 + v14) * v12;
      v16 = *(this + 4);
      v17 = v9 % v16;
      if (v9 % v16 > v15)
      {
        goto LABEL_4;
      }

LABEL_25:
      v27 = v8 % v16;
      if (v8 % v16 >= v11)
      {
        goto LABEL_36;
      }

      goto LABEL_26;
    }
  }

  else
  {
    v6 = v2[5];
    v7 = 8 * v3;
    v8 = v4 + *(v6 + v7) * v5;
    v9 = v4 - *(v6 + (v7 ^ 8)) * v5;
    v10 = *(this + 10);
    v11 = *(this + 7);
    if (v10 != -1)
    {
      goto LABEL_3;
    }
  }

  v15 = v11;
  v16 = *(this + 4);
  v17 = v9 % v16;
  if (v9 % v16 <= v11)
  {
    goto LABEL_25;
  }

LABEL_4:
  v18 = v9 - v17 + v15;
  if ((v18 - v4) / v5 - ((v18 - v4) / v5 * v5 > v18 - v4) >= 0x8000000000000002)
  {
    v19 = ((v18 - v4) / v5 * v5 > v18 - v4) - (v18 - v4) / v5;
  }

  else
  {
    v19 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v20 = v18 < v4;
  v21 = 1;
  if (!v20)
  {
    v21 = -1;
  }

  if (v3 == -1)
  {
    v22 = 0xFFFFFFFFLL;
  }

  else
  {
    v22 = v3 ^ 1;
  }

  if (v3 == -1)
  {
    v23 = v21;
  }

  else
  {
    v23 = v19;
  }

  if (v10 == -1)
  {
    *&v92 = 0xFFFFFFFFLL;
    *(&v92 + 1) = -1;
    if (v3 != -1)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v24 = *(v2[5] + ((8 * v10) ^ 8));
    if (v24 - 1 > 0x7FFFFFFFFFFFFFFDLL)
    {
      v24 = 0x7FFFFFFFFFFFFFFFLL;
    }

    *&v92 = v10 ^ 1;
    *(&v92 + 1) = v24;
    if (v3 != -1)
    {
LABEL_19:
      v25 = *(v2[5] + ((8 * v3) ^ 8));
      if (v25 - 1 > 0x7FFFFFFFFFFFFFFDLL)
      {
        v25 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v93 = v3 ^ 1;
      v94 = v25;
      result = operations_research::sat::IntegerTrail::SafeEnqueue(v2, v22, v23, &v92, 2);
      if (!result)
      {
        goto LABEL_115;
      }

      goto LABEL_35;
    }
  }

  v93 = 0xFFFFFFFFLL;
  v94 = -1;
  result = operations_research::sat::IntegerTrail::SafeEnqueue(v2, v22, v23, &v92, 2);
  if (!result)
  {
    goto LABEL_115;
  }

LABEL_35:
  v16 = *(this + 4);
  v27 = v8 % v16;
  if (v8 % v16 >= v11)
  {
LABEL_36:
    v37 = v8 / v16;
    v38 = v9 / v16;
    if (v8 / v16 == v9 / v16)
    {
      goto LABEL_37;
    }

LABEL_55:
    if (!v37 && v11 < 0)
    {
      if (v11 >= v8)
      {
        goto LABEL_114;
      }

      v56 = *(this + 14);
      v57 = *(this + 10);
      if (v57 == -1)
      {
        if (*(this + 7) < v8)
        {
          v60 = 1;
        }

        else
        {
          v60 = -1;
        }

        v57 = 0xFFFFFFFFLL;
        *&v92 = 0xFFFFFFFFLL;
        *(&v92 + 1) = -1;
        v62 = *(this + 2);
        if (v62 != -1)
        {
LABEL_63:
          v63 = *(v56[5] + 8 * v62);
          v93 = v62;
          v94 = v63;
          if ((operations_research::sat::IntegerTrail::SafeEnqueue(v56, v57, v60, &v92, 2) & 1) == 0)
          {
            goto LABEL_116;
          }

LABEL_114:
          result = 1;
          goto LABEL_115;
        }
      }

      else
      {
        v58 = *(this + 6);
        v59 = v8 - *(this + 7);
        if (v59 / v58 * v58 >= v59)
        {
          v60 = v59 / v58;
        }

        else
        {
          v60 = v59 / v58 + 1;
        }

        v61 = *(v56[5] + 8 * v57);
        *&v92 = *(this + 10);
        *(&v92 + 1) = v61;
        v62 = *(this + 2);
        if (v62 != -1)
        {
          goto LABEL_63;
        }
      }

      v93 = 0xFFFFFFFFLL;
      v94 = -1;
      if ((operations_research::sat::IntegerTrail::SafeEnqueue(v56, v57, v60, &v92, 2) & 1) == 0)
      {
        goto LABEL_116;
      }

      goto LABEL_114;
    }

    if (v15 <= v9 || v15 < 1 || v38)
    {
      goto LABEL_114;
    }

    v64 = *(this + 14);
    v65 = *(this + 10);
    v66 = *(this + 7);
    if (v65 == -1)
    {
      if (v9 < v66)
      {
        v68 = 1;
      }

      else
      {
        v68 = -1;
      }

      v69 = 0xFFFFFFFFLL;
      *&v92 = 0xFFFFFFFFLL;
      *(&v92 + 1) = -1;
      v71 = *(this + 2);
      if (v71 != -1)
      {
        goto LABEL_75;
      }
    }

    else
    {
      v67 = (v9 - v66) / *(this + 6) - ((v9 - v66) / *(this + 6) * *(this + 6) > v9 - v66);
      if (v67 >= 0x8000000000000002)
      {
        v68 = -v67;
      }

      else
      {
        v68 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v69 = v65 ^ 1;
      v70 = *(v64[5] + ((8 * v65) ^ 8));
      if (v70 - 1 > 0x7FFFFFFFFFFFFFFDLL)
      {
        v70 = 0x7FFFFFFFFFFFFFFFLL;
      }

      *&v92 = v69;
      *(&v92 + 1) = v70;
      v71 = *(this + 2);
      if (v71 != -1)
      {
LABEL_75:
        v72 = 0x7FFFFFFFFFFFFFFFLL;
        if (*(v64[5] + ((8 * v71) ^ 8)) - 1 <= 0x7FFFFFFFFFFFFFFDLL)
        {
          v72 = *(v64[5] + ((8 * v71) ^ 8));
        }

        v93 = v71 ^ 1;
        v94 = v72;
        result = operations_research::sat::IntegerTrail::SafeEnqueue(v64, v69, v68, &v92, 2);
        if (!result)
        {
          goto LABEL_115;
        }

        goto LABEL_114;
      }
    }

    v93 = 0xFFFFFFFFLL;
    v94 = -1;
    result = operations_research::sat::IntegerTrail::SafeEnqueue(v64, v69, v68, &v92, 2);
    if (!result)
    {
      goto LABEL_115;
    }

    goto LABEL_114;
  }

LABEL_26:
  v28 = *(this + 14);
  v29 = v8 - v27 + v11;
  v30 = *(this + 2);
  if (v30 == -1)
  {
    if (*(this + 3) < v29)
    {
      v33 = 1;
    }

    else
    {
      v33 = -1;
    }

    v30 = 0xFFFFFFFFLL;
    *&v92 = 0xFFFFFFFFLL;
    *(&v92 + 1) = -1;
    v35 = *(this + 10);
    if (v35 != -1)
    {
LABEL_31:
      v36 = *(v28[5] + 8 * v35);
      v93 = v35;
      v94 = v36;
      result = operations_research::sat::IntegerTrail::SafeEnqueue(v28, v30, v33, &v92, 2);
      if (!result)
      {
        goto LABEL_115;
      }

      goto LABEL_54;
    }
  }

  else
  {
    v31 = *(this + 2);
    v32 = v29 - *(this + 3);
    if (v32 / v31 * v31 >= v32)
    {
      v33 = v32 / v31;
    }

    else
    {
      v33 = v32 / v31 + 1;
    }

    v34 = *(v28[5] + 8 * v30);
    *&v92 = *(this + 2);
    *(&v92 + 1) = v34;
    v35 = *(this + 10);
    if (v35 != -1)
    {
      goto LABEL_31;
    }
  }

  v93 = 0xFFFFFFFFLL;
  v94 = -1;
  result = operations_research::sat::IntegerTrail::SafeEnqueue(v28, v30, v33, &v92, 2);
  if (!result)
  {
    goto LABEL_115;
  }

LABEL_54:
  v16 = *(this + 4);
  v37 = v8 / v16;
  v38 = v9 / v16;
  if (v8 / v16 != v9 / v16)
  {
    goto LABEL_55;
  }

LABEL_37:
  v39 = v8 - v37 * v16;
  if (v11 >= v39)
  {
    goto LABEL_85;
  }

  v40 = *(this + 14);
  v41 = *(this + 10);
  if (v41 == -1)
  {
    if (*(this + 7) < v39)
    {
      v49 = 1;
    }

    else
    {
      v49 = -1;
    }

    v41 = 0xFFFFFFFFLL;
    v92 = xmmword_23CE49C10;
    v93 = 0xFFFFFFFFLL;
    v94 = -1;
    v50 = *(this + 2);
    if (v50 != -1)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v42 = *(this + 6);
    v43 = v39 - *(this + 7);
    v44 = v43 / v42;
    v45 = v40[5];
    v46 = 8 * v41;
    v47 = *(v45 + v46);
    v20 = v43 / v42 * v42 < v43;
    *&v92 = *(this + 10);
    *(&v92 + 1) = v47;
    v48 = *(v45 + (v46 ^ 8));
    if (v20)
    {
      v49 = v44 + 1;
    }

    else
    {
      v49 = v44;
    }

    if (v48 - 1 > 0x7FFFFFFFFFFFFFFDLL)
    {
      v48 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v93 = v41 ^ 1;
    v94 = v48;
    v50 = *(this + 2);
    if (v50 != -1)
    {
LABEL_45:
      v51 = v40[5];
      v52 = 8 * v50;
      v53 = *(v51 + v52);
      *&v95 = v50;
      *(&v95 + 1) = v53;
      v54 = *(v51 + (v52 ^ 8));
      v55 = 0x7FFFFFFFFFFFFFFFLL;
      if (v54 - 1 <= 0x7FFFFFFFFFFFFFFDLL)
      {
        v55 = v54;
      }

      v96 = v50 ^ 1;
      v97 = v55;
      result = operations_research::sat::IntegerTrail::SafeEnqueue(v40, v41, v49, &v92, 4);
      if (!result)
      {
        goto LABEL_115;
      }

      goto LABEL_84;
    }
  }

  v95 = xmmword_23CE49C10;
  v96 = 0xFFFFFFFFLL;
  v97 = -1;
  result = operations_research::sat::IntegerTrail::SafeEnqueue(v40, v41, v49, &v92, 4);
  if (!result)
  {
LABEL_115:
    v90 = *MEMORY[0x277D85DE8];
    return result;
  }

LABEL_84:
  v16 = *(this + 4);
LABEL_85:
  v73 = v9 % v16;
  if (v15 <= v9 % v16)
  {
    goto LABEL_114;
  }

  v74 = *(this + 14);
  v75 = *(this + 10);
  v76 = *(this + 7);
  if (v75 == -1)
  {
    if (v73 < v76)
    {
      v78 = 1;
    }

    else
    {
      v78 = -1;
    }

    v79 = 0xFFFFFFFFLL;
    v92 = xmmword_23CE49C10;
    v93 = 0xFFFFFFFFLL;
    v94 = -1;
    v84 = *(this + 2);
    if (v84 != -1)
    {
      goto LABEL_93;
    }

    goto LABEL_101;
  }

  v77 = (v73 - v76) / *(this + 6) - ((v73 - v76) / *(this + 6) * *(this + 6) > v73 - v76);
  if (v77 >= 0x8000000000000002)
  {
    v78 = -v77;
  }

  else
  {
    v78 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v79 = v75 ^ 1;
  v80 = v74[5];
  v81 = 8 * v75;
  v82 = *(v80 + v81);
  *&v92 = *(this + 10);
  *(&v92 + 1) = v82;
  v83 = *(v80 + (v81 ^ 8));
  if (v83 - 1 > 0x7FFFFFFFFFFFFFFDLL)
  {
    v83 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v93 = v79;
  v94 = v83;
  v84 = *(this + 2);
  if (v84 == -1)
  {
LABEL_101:
    v95 = xmmword_23CE49C10;
    v96 = 0xFFFFFFFFLL;
    v97 = -1;
    if ((operations_research::sat::IntegerTrail::SafeEnqueue(v74, v79, v78, &v92, 4) & 1) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_114;
  }

LABEL_93:
  v85 = v74[5];
  v86 = 8 * v84;
  v87 = *(v85 + v86);
  *&v95 = v84;
  *(&v95 + 1) = v87;
  v88 = *(v85 + (v86 ^ 8));
  v89 = 0x7FFFFFFFFFFFFFFFLL;
  if (v88 - 1 <= 0x7FFFFFFFFFFFFFFDLL)
  {
    v89 = v88;
  }

  v96 = v84 ^ 1;
  v97 = v89;
  if (operations_research::sat::IntegerTrail::SafeEnqueue(v74, v79, v78, &v92, 4))
  {
    goto LABEL_114;
  }

LABEL_116:
  result = 0;
  v91 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t operations_research::sat::FixedModuloPropagator::PropagateBoundsWhenExprIsPositive(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v3 = a1;
  v54 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 112);
  v5 = *a3;
  v6 = *(a3 + 2);
  if (v5 == -1)
  {
    v10 = *(a3 + 2);
    if (v6)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v7 = *(a3 + 1);
    v8 = v4[5];
    v9 = 8 * v5;
    v10 = v6 - *(v8 + (v9 ^ 8)) * v7;
    v6 += *(v8 + v9) * v7;
    if (v6)
    {
      goto LABEL_6;
    }
  }

  if (v10 == *(v3 + 32) - 1)
  {
    goto LABEL_36;
  }

LABEL_6:
  v11 = *a2;
  v12 = *(a2 + 1);
  v13 = *(a2 + 2);
  if (v11 == -1)
  {
    v16 = *(a2 + 2);
    v18 = *(v3 + 32);
    v19 = v13 / v18;
    if (v13 % v18 >= v6)
    {
LABEL_8:
      v20 = v16 / v18;
      if (v16 % v18 <= v10)
      {
        goto LABEL_36;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v14 = v4[5];
    v15 = 8 * v11;
    v16 = v13 + *(v14 + v15) * v12;
    v17 = v13 - *(v14 + (v15 ^ 8)) * v12;
    v18 = *(v3 + 32);
    v19 = v17 / v18;
    if (v17 % v18 >= v6)
    {
      goto LABEL_8;
    }
  }

  v21 = v10 + (v19 - 1) * v18;
  if (v11 == -1)
  {
    v23 = 1;
    if (v21 >= v13)
    {
      v23 = -1;
    }

    v24 = 0xFFFFFFFFLL;
    *&v50 = 0xFFFFFFFFLL;
    *(&v50 + 1) = -1;
    v26 = v3;
    v27 = a2;
    v28 = a3;
    if (v5 != -1)
    {
      goto LABEL_18;
    }

LABEL_24:
    v51 = xmmword_23CE49C10;
    v32 = -1;
    v33 = 0xFFFFFFFFLL;
    goto LABEL_25;
  }

  v22 = (v21 - v13) / v12 - ((v21 - v13) / v12 * v12 > v21 - v13);
  if (v22 >= 0x8000000000000002)
  {
    v23 = -v22;
  }

  else
  {
    v23 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v24 = v11 ^ 1;
  v25 = *(v4[5] + ((8 * v11) ^ 8));
  if (v25 - 1 > 0x7FFFFFFFFFFFFFFDLL)
  {
    v25 = 0x7FFFFFFFFFFFFFFFLL;
  }

  *&v50 = v24;
  *(&v50 + 1) = v25;
  v26 = v3;
  v27 = a2;
  v28 = a3;
  if (v5 == -1)
  {
    goto LABEL_24;
  }

LABEL_18:
  v29 = v4[5];
  v30 = 8 * v5;
  v31 = *(v29 + v30);
  *&v51 = v5;
  *(&v51 + 1) = v31;
  v32 = *(v29 + (v30 ^ 8));
  if (v32 - 1 > 0x7FFFFFFFFFFFFFFDLL)
  {
    v32 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v33 = v5 ^ 1;
LABEL_25:
  v52 = v33;
  v53 = v32;
  result = operations_research::sat::IntegerTrail::SafeEnqueue(v4, v24, v23, &v50, 3);
  if (!result)
  {
    goto LABEL_37;
  }

  v3 = v26;
  v18 = *(v26 + 32);
  a3 = v28;
  a2 = v27;
  v20 = v16 / v18;
  if (v16 % v18 <= v10)
  {
LABEL_36:
    result = 1;
    goto LABEL_37;
  }

LABEL_27:
  v35 = *(v3 + 112);
  v36 = v18 + v18 * v20 + v6;
  v37 = *a2;
  if (v37 != -1)
  {
    v38 = *(a2 + 1);
    v39 = v36 - *(a2 + 2);
    if (v39 / v38 * v38 >= v39)
    {
      v40 = v39 / v38;
    }

    else
    {
      v40 = v39 / v38 + 1;
    }

    v41 = *a2;
    v42 = *a3;
    if (v42 != -1)
    {
      goto LABEL_32;
    }

LABEL_41:
    v50 = xmmword_23CE49C10;
    *&v51 = 0xFFFFFFFFLL;
    *(&v51 + 1) = -1;
    if (v37 != -1)
    {
      goto LABEL_35;
    }

LABEL_42:
    v52 = 0xFFFFFFFFLL;
    v53 = -1;
    result = operations_research::sat::IntegerTrail::SafeEnqueue(v35, v41, v40, &v50, 3);
    if (!result)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  v49 = *(a2 + 2) < v36;
  v40 = 1;
  if (!v49)
  {
    v40 = -1;
  }

  v41 = 0xFFFFFFFFLL;
  v42 = *a3;
  if (v42 == -1)
  {
    goto LABEL_41;
  }

LABEL_32:
  v43 = v35[5];
  v44 = 8 * v42;
  v45 = *(v43 + v44);
  *&v50 = v42;
  *(&v50 + 1) = v45;
  v46 = *(v43 + (v44 ^ 8));
  if (v46 - 1 > 0x7FFFFFFFFFFFFFFDLL)
  {
    v46 = 0x7FFFFFFFFFFFFFFFLL;
  }

  *&v51 = v42 ^ 1;
  *(&v51 + 1) = v46;
  if (v37 == -1)
  {
    goto LABEL_42;
  }

LABEL_35:
  v47 = *(v35[5] + 8 * v37);
  v52 = v37;
  v53 = v47;
  result = operations_research::sat::IntegerTrail::SafeEnqueue(v35, v41, v40, &v50, 3);
  if (result)
  {
    goto LABEL_36;
  }

LABEL_37:
  v48 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t operations_research::sat::FixedModuloPropagator::RegisterWith(operations_research::sat::FixedModuloPropagator *this, operations_research::sat::GenericLiteralWatcher *a2)
{
  v4 = operations_research::sat::GenericLiteralWatcher::Register(a2, this);
  operations_research::sat::GenericLiteralWatcher::WatchIntegerVariable(a2, *(this + 2), v4, 0xFFFFFFFF);
  operations_research::sat::GenericLiteralWatcher::WatchIntegerVariable(a2, *(this + 10), v4, 0xFFFFFFFF);

  return operations_research::sat::GenericLiteralWatcher::NotifyThatPropagatorMayNotReachFixedPointInOnePass(a2, v4);
}

void *operations_research::sat::LinearConstraintPropagator<true>::~LinearConstraintPropagator(void *a1)
{
  *a1 = &unk_284F421D8;
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[8];
  a1[8] = 0;
  if (v3)
  {
    MEMORY[0x23EED9440](v3, 0x1000C8000313F17);
  }

  v4 = a1[7];
  a1[7] = 0;
  if (v4)
  {
    MEMORY[0x23EED9440](v4, 0x1000C8000313F17);
  }

  v5 = a1[6];
  a1[6] = 0;
  if (v5)
  {
    MEMORY[0x23EED9440](v5, 0x1000C8052888210);
  }

  return a1;
}

void operations_research::sat::LinearConstraintPropagator<true>::~LinearConstraintPropagator(void *a1)
{
  *a1 = &unk_284F421D8;
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[8];
  a1[8] = 0;
  if (v3)
  {
    MEMORY[0x23EED9440](v3, 0x1000C8000313F17);
  }

  v4 = a1[7];
  a1[7] = 0;
  if (v4)
  {
    MEMORY[0x23EED9440](v4, 0x1000C8000313F17);
  }

  v5 = a1[6];
  a1[6] = 0;
  if (v5)
  {
    MEMORY[0x23EED9440](v5, 0x1000C8052888210);
  }

  JUMPOUT(0x23EED9460);
}

void *operations_research::sat::LinearConstraintPropagator<false>::~LinearConstraintPropagator(void *a1)
{
  *a1 = &unk_284F42208;
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[8];
  a1[8] = 0;
  if (v3)
  {
    MEMORY[0x23EED9440](v3, 0x1000C8000313F17);
  }

  v4 = a1[7];
  a1[7] = 0;
  if (v4)
  {
    MEMORY[0x23EED9440](v4, 0x1000C8000313F17);
  }

  v5 = a1[6];
  a1[6] = 0;
  if (v5)
  {
    MEMORY[0x23EED9440](v5, 0x1000C8052888210);
  }

  return a1;
}

void operations_research::sat::LinearConstraintPropagator<false>::~LinearConstraintPropagator(void *a1)
{
  *a1 = &unk_284F42208;
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[8];
  a1[8] = 0;
  if (v3)
  {
    MEMORY[0x23EED9440](v3, 0x1000C8000313F17);
  }

  v4 = a1[7];
  a1[7] = 0;
  if (v4)
  {
    MEMORY[0x23EED9440](v4, 0x1000C8000313F17);
  }

  v5 = a1[6];
  a1[6] = 0;
  if (v5)
  {
    MEMORY[0x23EED9440](v5, 0x1000C8052888210);
  }

  JUMPOUT(0x23EED9460);
}

void operations_research::sat::LevelZeroEquality::~LevelZeroEquality(operations_research::sat::LevelZeroEquality *this)
{
  *this = &unk_284F42238;
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    *(this + 3) = v3;
    operator delete(v3);
  }
}

{
  *this = &unk_284F42238;
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    *(this + 3) = v3;
    operator delete(v3);
  }

  JUMPOUT(0x23EED9460);
}

void operations_research::sat::LinMinPropagator::~LinMinPropagator(operations_research::sat::LinMinPropagator *this)
{
  operations_research::sat::LinMinPropagator::~LinMinPropagator(this);

  JUMPOUT(0x23EED9460);
}

{
  *this = &unk_284F42268;
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

  v4 = *(this + 13);
  if (v4)
  {
    *(this + 14) = v4;
    operator delete(v4);
  }

  v5 = *(this + 10);
  if (v5)
  {
    *(this + 11) = v5;
    operator delete(v5);
  }

  v6 = *(this + 5);
  if (v6)
  {
    *(this + 6) = v6;
    operator delete(v6);
  }

  v7 = *(this + 1);
  if (v7)
  {
    v8 = *(this + 2);
    v9 = *(this + 1);
    if (v8 != v7)
    {
      do
      {
        v10 = *(v8 - 32);
        if (v10)
        {
          *(v8 - 24) = v10;
          operator delete(v10);
        }

        v11 = v8 - 56;
        v12 = *(v8 - 56);
        if (v12)
        {
          *(v8 - 48) = v12;
          operator delete(v12);
        }

        v8 -= 56;
      }

      while (v11 != v7);
      v9 = *(this + 1);
    }

    *(this + 2) = v7;
    operator delete(v9);
  }
}

void *operations_research::sat::Model::Delete<operations_research::sat::LinearConstraintPropagator<true>::Shared>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F42470;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[8];
    if (v3)
    {
      v1[9] = v3;
      operator delete(v3);
    }

    v4 = v1[5];
    if (v4)
    {
      v1[6] = v4;
      operator delete(v4);
    }

    MEMORY[0x23EED9460](v1, 0x60C406CE0E7A5);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::LinearConstraintPropagator<true>::Shared>::~Delete(void *a1)
{
  v1 = a1[1];
  *a1 = &unk_284F42470;
  a1[1] = 0;
  if (v1)
  {
    v2 = v1[8];
    if (v2)
    {
      v1[9] = v2;
      operator delete(v2);
    }

    v3 = v1[5];
    if (v3)
    {
      v1[6] = v3;
      operator delete(v3);
    }

    MEMORY[0x23EED9460](v1, 0x60C406CE0E7A5);
  }

  JUMPOUT(0x23EED9460);
}

void std::vector<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> *,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
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

void std::vector<std::pair<int *,int>>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
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

__n128 std::__function::__func<operations_research::sat::LinearConstraintPropagator<true>::Propagate(void)::{lambda(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)#1},std::allocator<operations_research::sat::LinearConstraintPropagator<true>::Propagate(void)::{lambda(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)#1}>,void ()(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F424A8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::LinearConstraintPropagator<true>::Propagate(void)::{lambda(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)#1},std::allocator<operations_research::sat::LinearConstraintPropagator<true>::Propagate(void)::{lambda(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)#1}>,void ()(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000023CE49F1FLL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x800000023CE49F1FLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000023CE49F1FLL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023CE49F1FLL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void operations_research::sat::LinearConstraintPropagator<true>::Propagate(void)::{lambda(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)#1}::operator()(void *a1, int a2, int a3, int a4, char **a5, std::vector<int> *this)
{
  v10 = *a1;
  if ((*a1 + 72) != a5)
  {
    std::vector<operations_research::sat::Literal>::__assign_with_size[abi:ne200100]<operations_research::sat::Literal*,operations_research::sat::Literal*>(a5, *(v10 + 72), *(v10 + 80), (*(v10 + 80) - *(v10 + 72)) >> 2);
  }

  this->__end_ = this->__begin_;
  *(*(v10 + 16) + 72) = *(*(v10 + 16) + 64);
  v11 = *(v10 + 44);
  if (v11 >= 1)
  {
    v12 = 0;
    v13 = 0;
    v14 = a2 & 0xFFFFFFFE;
    do
    {
      v15 = *(*(v10 + 48) + 4 * v13);
      if (v14 != (v15 & 0xFFFFFFFE))
      {
        TrailIndexOfVarBefore = operations_research::sat::IntegerTrail::FindTrailIndexOfVarBefore(*(*(v10 + 16) + 8), v15, a4);
        if ((TrailIndexOfVarBefore & 0x80000000) == 0)
        {
          std::vector<int>::push_back[abi:ne200100](this, &TrailIndexOfVarBefore);
          if (a1[1] >= 1)
          {
            std::vector<long long>::push_back[abi:ne200100](*(v10 + 16) + 64, (*(v10 + 56) + v12));
          }
        }

        v11 = *(v10 + 44);
      }

      ++v13;
      v12 += 8;
    }

    while (v13 < v11);
  }

  v16 = a1[1];
  if (v16 > 0)
  {
    operations_research::sat::IntegerTrail::RelaxLinearReason(*(*(v10 + 16) + 8), v16, *(*(v10 + 16) + 64), (*(*(v10 + 16) + 72) - *(*(v10 + 16) + 64)) >> 3, this);
  }
}

void *operations_research::RevRepository<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::~RevRepository(void *a1)
{
  *a1 = &unk_284F42590;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  return a1;
}

void operations_research::sat::RevIntegerValueRepository::~RevIntegerValueRepository(operations_research::sat::RevIntegerValueRepository *this)
{
  *this = &unk_284F42590;
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    *(this + 3) = v3;
    operator delete(v3);
  }

  JUMPOUT(0x23EED9460);
}

void operations_research::RevRepository<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::SetLevel(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24) - v2;
  if ((v3 >> 2) != a2)
  {
    ++*(a1 + 8);
    v4 = a2;
    if ((v3 >> 2) <= a2)
    {
      __x = (*(a1 + 48) - *(a1 + 40)) >> 4;
      v10 = v3 >> 2;
      v11 = a2 - v10;
      if (v4 <= v10)
      {
        if (v4 < v10)
        {
          *(a1 + 24) = v2 + 4 * v4;
        }
      }

      else
      {
        std::vector<int>::__append((a1 + 16), v11, &__x);
      }
    }

    else
    {
      v5 = (v2 + 4 * a2);
      v6 = *v5;
      v7 = v3 >> 2;
      v8 = a2 - v7;
      if (v4 <= v7)
      {
        if (v4 < v7)
        {
          *(a1 + 24) = v5;
        }
      }

      else
      {
        v9 = a1;
        std::vector<int>::__append((a1 + 16), v8);
        a1 = v9;
      }

      v12 = *(a1 + 40);
      v13 = (*(a1 + 48) - v12) >> 4;
      for (i = v13 - 1; i >= v6; --i)
      {
        **(v12 + 16 * i) = *(v12 + 16 * i + 8);
      }

      if (v6 <= v13)
      {
        if (v6 < v13)
        {
          *(a1 + 48) = v12 + 16 * v6;
        }
      }

      else
      {
        v15 = a1 + 40;

        std::vector<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> *,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>::__append(v15, v6 - v13);
      }
    }
  }
}

void std::vector<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> *,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>::__append(uint64_t a1, unint64_t a2)
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

void *operations_research::sat::Model::Delete<operations_research::sat::RevIntegerValueRepository>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F425B8;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::RevIntegerValueRepository>::~Delete(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_284F425B8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

void *operations_research::sat::Model::Delete<operations_research::sat::LinearConstraintPropagator<false>::Shared>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F425F0;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[8];
    if (v3)
    {
      v1[9] = v3;
      operator delete(v3);
    }

    v4 = v1[5];
    if (v4)
    {
      v1[6] = v4;
      operator delete(v4);
    }

    MEMORY[0x23EED9460](v1, 0x60C406CE0E7A5);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::LinearConstraintPropagator<false>::Shared>::~Delete(void *a1)
{
  v1 = a1[1];
  *a1 = &unk_284F425F0;
  a1[1] = 0;
  if (v1)
  {
    v2 = v1[8];
    if (v2)
    {
      v1[9] = v2;
      operator delete(v2);
    }

    v3 = v1[5];
    if (v3)
    {
      v1[6] = v3;
      operator delete(v3);
    }

    MEMORY[0x23EED9460](v1, 0x60C406CE0E7A5);
  }

  JUMPOUT(0x23EED9460);
}

__n128 std::__function::__func<operations_research::sat::LinearConstraintPropagator<false>::Propagate(void)::{lambda(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)#1},std::allocator<operations_research::sat::LinearConstraintPropagator<false>::Propagate(void)::{lambda(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)#1}>,void ()(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F42628;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::LinearConstraintPropagator<false>::Propagate(void)::{lambda(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)#1},std::allocator<operations_research::sat::LinearConstraintPropagator<false>::Propagate(void)::{lambda(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)#1}>,void ()(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000023CE4A158)
  {
    return a1 + 8;
  }

  if (((v2 & 0x800000023CE4A158 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000023CE4A158))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023CE4A158 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

char *std::vector<operations_research::sat::IntegerLiteral>::__insert_with_size[abi:ne200100]<std::__wrap_iter<operations_research::sat::IntegerLiteral*>,std::__wrap_iter<operations_research::sat::IntegerLiteral*>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v6 = __src;
  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (a5 > (v8 - v9) >> 4)
  {
    v10 = *a1;
    v11 = a5 + ((v9 - *a1) >> 4);
    if (v11 >> 60)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v12 = v8 - v10;
    if (v12 >> 3 > v11)
    {
      v11 = v12 >> 3;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF0)
    {
      v13 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      if (!(v13 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v28 = 16 * ((__dst - v10) >> 4);
    v29 = v28;
    if ((a5 & 0xFFFFFFFFFFFFFFFLL) != 0)
    {
      v30 = 16 * a5;
      v31 = v28;
      v29 = (v28 + 16 * a5);
      do
      {
        v32 = *v6;
        v6 += 16;
        *v31++ = v32;
        v30 -= 16;
      }

      while (v30);
    }

    v33 = *(a1 + 8) - __dst;
    memcpy(v29, __dst, v33);
    v34 = &v29[v33];
    *(a1 + 8) = v5;
    v35 = *a1;
    v36 = &v5[-*a1];
    v37 = v28 - v36;
    memcpy((v28 - v36), *a1, v36);
    *a1 = v37;
    *(a1 + 8) = v34;
    *(a1 + 16) = 0;
    if (v35)
    {
      operator delete(v35);
    }

    return v28;
  }

  v14 = v9 - __dst;
  v15 = (v9 - __dst) >> 4;
  if (v15 < a5)
  {
    v16 = a4 - &__src[v14];
    if (a4 != &__src[v14])
    {
      v17 = a5;
      v18 = a4;
      memmove(*(a1 + 8), &__src[v14], a4 - &__src[v14]);
      a4 = v18;
      a5 = v17;
    }

    v19 = (v9 + v16);
    *(a1 + 8) = v9 + v16;
    if (v15 < 1)
    {
      return v5;
    }

    v20 = &v5[16 * a5];
    v21 = v9 + v16;
    if (&v19[-16 * a5] < v9)
    {
      v22 = &v5[a4];
      v23 = &v5[a4 + -16 * a5];
      do
      {
        *(v22 - v6) = *(v23 - v6);
        v23 += 16;
        v22 += 16;
      }

      while (v23 - v6 < v9);
      v21 = v22 - v6;
    }

    *(a1 + 8) = v21;
    if (v19 != v20)
    {
      memmove(&v5[16 * a5], v5, v19 - v20);
    }

    if (v9 == v5)
    {
      return v5;
    }

LABEL_29:
    memmove(v5, v6, v14);
    return v5;
  }

  v14 = 16 * a5;
  v24 = &__dst[16 * a5];
  v25 = (v9 - 16 * a5);
  for (i = *(a1 + 8); v25 < v9; ++i)
  {
    v27 = *v25++;
    *i = v27;
  }

  *(a1 + 8) = i;
  if (v9 != v24)
  {
    memmove(&__dst[16 * a5], __dst, v9 - v24);
  }

  if (v14)
  {
    goto LABEL_29;
  }

  return v5;
}

__n128 std::__function::__func<operations_research::sat::LinMinPropagator::PropagateLinearUpperBound(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> const&,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_0,std::allocator<operations_research::sat::LinMinPropagator::PropagateLinearUpperBound(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> const&,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_0>,void ()(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F426A8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<operations_research::sat::LinMinPropagator::PropagateLinearUpperBound(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> const&,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_0,std::allocator<operations_research::sat::LinMinPropagator::PropagateLinearUpperBound(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> const&,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_0>,void ()(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)>::operator()(uint64_t a1, uint64_t *a2, int *a3, void **a4, std::vector<int> **a5)
{
  v6 = *a2;
  v7 = *a3;
  v8 = *a5;
  (*a4)[1] = **a4;
  v8->__end_ = v8->__begin_;
  v9 = *(a1 + 8);
  v10 = *(*(a1 + 16) + 8) - **(a1 + 16);
  if ((v10 >> 2) < 1)
  {
    v15 = *(a1 + 32);
    if (v15 <= 0)
    {
      goto LABEL_12;
    }

LABEL_11:
    operations_research::sat::IntegerTrail::RelaxLinearReason(v9[9], v15, 0, 0, v8);
    goto LABEL_12;
  }

  v19 = v8;
  v11 = 0;
  v12 = v6 & 0xFFFFFFFE;
  v13 = (v10 >> 2) & 0x7FFFFFFF;
  do
  {
    v14 = *(**(a1 + 16) + 4 * v11);
    if (v12 != (v14 & 0xFFFFFFFE))
    {
      TrailIndexOfVarBefore = operations_research::sat::IntegerTrail::FindTrailIndexOfVarBefore(v9[9], v14, v7);
      if ((TrailIndexOfVarBefore & 0x80000000) == 0)
      {
        std::vector<int>::push_back[abi:ne200100](v19, &TrailIndexOfVarBefore);
        if (*(a1 + 32) >= 1)
        {
          v18 = **(a1 + 24);
          operator new();
        }
      }
    }

    ++v11;
  }

  while (v13 != v11);
  v8 = v19;
  v15 = *(a1 + 32);
  if (v15 > 0)
  {
    goto LABEL_11;
  }

LABEL_12:
  v16 = v9[19];
  v17 = v9[20];
  while (v16 != v17)
  {
    v20 = operations_research::sat::IntegerTrail::FindTrailIndexOfVarBefore(v9[9], *v16, v7);
    if ((v20 & 0x80000000) == 0)
    {
      std::vector<int>::push_back[abi:ne200100](v8, &v20);
    }

    v16 += 4;
  }
}

void sub_23CC07B9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  __pa = v10;
  if (__pa)
  {
    operator delete(__pa);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<operations_research::sat::LinMinPropagator::PropagateLinearUpperBound(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> const&,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_0,std::allocator<operations_research::sat::LinMinPropagator::PropagateLinearUpperBound(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&,std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>> const&,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>)::$_0>,void ()(operations_research::sat::IntegerLiteral,int,std::vector<operations_research::sat::Literal> *,std::vector<int> *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat16LinMinPropagator25PropagateLinearUpperBoundERKNSt3__16vectorINS_11StrongIndexINS0_26IntegerVariable_index_tag_EEENS2_9allocatorIS6_EEEERKNS3_INS_11StrongInt64INS0_25IntegerValue_integer_tag_EEENS7_ISE_EEEESE_E3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat16LinMinPropagator25PropagateLinearUpperBoundERKNSt3__16vectorINS_11StrongIndexINS0_26IntegerVariable_index_tag_EEENS2_9allocatorIS6_EEEERKNS3_INS_11StrongInt64INS0_25IntegerValue_integer_tag_EEENS7_ISE_EEEESE_E3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat16LinMinPropagator25PropagateLinearUpperBoundERKNSt3__16vectorINS_11StrongIndexINS0_26IntegerVariable_index_tag_EEENS2_9allocatorIS6_EEEERKNS3_INS_11StrongInt64INS0_25IntegerValue_integer_tag_EEENS7_ISE_EEEESE_E3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat16LinMinPropagator25PropagateLinearUpperBoundERKNSt3__16vectorINS_11StrongIndexINS0_26IntegerVariable_index_tag_EEENS2_9allocatorIS6_EEEERKNS3_INS_11StrongInt64INS0_25IntegerValue_integer_tag_EEENS7_ISE_EEEESE_E3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t operations_research::sat::ChooseBestObjectiveValue(unsigned int a1, void *a2)
{
  v4 = operations_research::sat::Model::GetOrCreate<operations_research::sat::ObjectiveDefinition>(a2);
  v5 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a2);
  v6 = v4[9];
  if (v6 > 1)
  {
    v8 = 0;
    _X9 = v4[11];
    __asm { PRFM            #4, [X9] }

    v15 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a1) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a1));
    v16 = vdup_n_s8(v15 & 0x7F);
    v17 = ((_X9 >> 12) ^ (v15 >> 7)) & v6;
    v18 = *(_X9 + v17);
    v19 = vceq_s8(v18, v16);
    if (!v19)
    {
      goto LABEL_7;
    }

LABEL_5:
    while (*(v4[12] + 4 * ((v17 + (__clz(__rbit64(v19)) >> 3)) & v6)) != a1)
    {
      v19 &= ((v19 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v19)
      {
LABEL_7:
        while (!*&vceq_s8(v18, 0x8080808080808080))
        {
          v8 += 8;
          v17 = (v8 + v17) & v6;
          v18 = *(_X9 + v17);
          v19 = vceq_s8(v18, v16);
          if (v19)
          {
            goto LABEL_5;
          }
        }

        v22 = 0;
        v23 = a1 ^ 1;
        __asm { PRFM            #4, [X9] }

        v25 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v23) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v23));
        v26 = vdup_n_s8(v25 & 0x7F);
        v27 = ((_X9 >> 12) ^ (v25 >> 7)) & v6;
        v28 = *(_X9 + v27);
        v29 = vceq_s8(v28, v26);
        if (!v29)
        {
          goto LABEL_18;
        }

LABEL_16:
        while (*(v4[12] + 4 * ((v27 + (__clz(__rbit64(v29)) >> 3)) & v6)) != v23)
        {
          v29 &= ((v29 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v29)
          {
LABEL_18:
            while (!*&vceq_s8(v28, 0x8080808080808080))
            {
              v22 += 8;
              v27 = (v22 + v27) & v6;
              v28 = *(_X9 + v27);
              v29 = vceq_s8(v28, v26);
              if (v29)
              {
                goto LABEL_16;
              }
            }

            return 0xFFFFFFFFLL;
          }
        }

        goto LABEL_22;
      }
    }

LABEL_11:
    if (*(*(v5 + 40) + 8 * a1) + *(*(v5 + 40) + ((8 * a1) ^ 8)))
    {
      return a1 ^ 1;
    }

    else
    {
      return -1;
    }
  }

  if (v4[10] < 2uLL)
  {
    return 0xFFFFFFFFLL;
  }

  v20 = *(v4 + 22);
  if (v20 == a1)
  {
    goto LABEL_11;
  }

  LODWORD(v23) = a1 ^ 1;
  if (v20 != (a1 ^ 1))
  {
    return 0xFFFFFFFFLL;
  }

LABEL_22:
  if (*(*(v5 + 40) + 8 * v23) + *(*(v5 + 40) + ((8 * v23) ^ 8)))
  {
    return a1;
  }

  else
  {
    return -1;
  }
}

uint64_t operations_research::sat::SplitAroundGivenValue(unsigned int a1, uint64_t a2, void *a3)
{
  v6 = *(operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a3) + 40);
  v7 = 8 * a1;
  v8 = *(v6 + v7);
  v9 = -*(v6 + (v7 ^ 8));
  v10 = operations_research::sat::Model::GetOrCreate<operations_research::sat::ObjectiveDefinition>(a3);
  v11 = v8 > a2;
  v12 = v8 < a2;
  if (v9 <= a2)
  {
    v11 = 1;
  }

  if (v9 < a2)
  {
    v12 = 0;
  }

  v13 = v10[9];
  if (v13 > 1)
  {
    v15 = 0;
    v16 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a1) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a1));
    v17 = vdup_n_s8(v16 & 0x7F);
    _X14 = v10[11];
    __asm { PRFM            #4, [X14] }

    v24 = ((v16 >> 7) ^ (_X14 >> 12)) & v13;
    v25 = *(_X14 + v24);
    v26 = vceq_s8(v25, v17);
    if (!v26)
    {
      goto LABEL_13;
    }

LABEL_11:
    while (*(v10[12] + 4 * ((v24 + (__clz(__rbit64(v26)) >> 3)) & v13)) != a1)
    {
      v26 &= ((v26 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v26)
      {
LABEL_13:
        while (!*&vceq_s8(v25, 0x8080808080808080))
        {
          v15 += 8;
          v24 = (v15 + v24) & v13;
          v25 = *(_X14 + v24);
          v26 = vceq_s8(v25, v17);
          if (v26)
          {
            goto LABEL_11;
          }
        }

        goto LABEL_17;
      }
    }

    if (!v11)
    {
      goto LABEL_23;
    }

LABEL_17:
    v27 = 0;
    v28 = a1 ^ 1;
    _X15 = v10[11];
    __asm { PRFM            #4, [X15] }

    v31 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v28) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v28));
    v32 = vdup_n_s8(v31 & 0x7F);
    v33 = ((v31 >> 7) ^ (_X15 >> 12)) & v13;
    v34 = *(_X15 + v33);
    v35 = vceq_s8(v34, v32);
    if (!v35)
    {
      goto LABEL_20;
    }

LABEL_18:
    while (*(v10[12] + 4 * ((v33 + (__clz(__rbit64(v35)) >> 3)) & v13)) != v28)
    {
      v35 &= ((v35 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v35)
      {
LABEL_20:
        while (!*&vceq_s8(v34, 0x8080808080808080))
        {
          v27 += 8;
          v33 = (v27 + v33) & v13;
          v34 = *(_X15 + v33);
          v35 = vceq_s8(v34, v32);
          if (v35)
          {
            goto LABEL_18;
          }
        }

        goto LABEL_25;
      }
    }

    if (v12)
    {
      return a1;
    }
  }

  else if (v10[10] >= 2uLL)
  {
    v14 = *(v10 + 22);
    if (v14 == a1 && !v11)
    {
LABEL_23:
      a1 ^= 1u;
      return a1;
    }

    if ((v14 ^ a1) == 1 && v12)
    {
      return a1;
    }
  }

LABEL_25:
  _ZF = !v12;
  v36 = -1;
  if (!_ZF)
  {
    v36 = a1;
  }

  if (v11)
  {
    return v36;
  }

  else
  {
    a1 ^= 1u;
  }

  return a1;
}

uint64_t operations_research::sat::SplitAroundLpValue(int a1, void *a2)
{
  v4 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(a2);
  v5 = operations_research::sat::Model::GetOrCreate<operations_research::sat::LinearProgrammingDispatcher>(a2);
  v6 = a1 & 0xFFFFFFFE;
  v7 = *v5;
  if (*v5 > 1uLL)
  {
    v9 = 0;
    v10 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed + (a1 & 0xFFFFFFFE);
    v11 = 0x9DDFEA08EB382D69 * v10;
    v12 = (v10 * 0x9DDFEA08EB382D69) >> 64;
    _X11 = v5[2];
    __asm { PRFM            #4, [X11] }

    v19 = v12 ^ v11;
    v20 = vdup_n_s8(v19 & 0x7F);
    v21 = ((v19 >> 7) ^ (_X11 >> 12)) & v7;
    v22 = *(_X11 + v21);
    v23 = vceq_s8(v22, v20);
    if (!v23)
    {
      goto LABEL_8;
    }

LABEL_5:
    v24 = v5[3];
    while (1)
    {
      v25 = (v21 + (__clz(__rbit64(v23)) >> 3)) & v7;
      if (*(v24 + 16 * v25) == v6)
      {
        break;
      }

      v23 &= ((v23 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v23)
      {
LABEL_8:
        while (!*&vceq_s8(v22, 0x8080808080808080))
        {
          v9 += 8;
          v21 = (v9 + v21) & v7;
          v22 = *(_X11 + v21);
          v23 = vceq_s8(v22, v20);
          if (v23)
          {
            goto LABEL_5;
          }
        }

        goto LABEL_3;
      }
    }

    v26 = (v24 + 16 * v25);
    v8 = _X11 + v25;
    if (_X11 + v25)
    {
      goto LABEL_17;
    }
  }

  else if (v5[1] >= 2uLL)
  {
    v28 = *(v5 + 4);
    v27 = v5 + 2;
    _ZF = v28 == v6;
    v8 = &absl::lts_20240722::container_internal::kSooControl;
    if (_ZF)
    {
      v26 = v27;
    }

    else
    {
      v8 = 0;
      v26 = 0;
    }

    if (v8)
    {
LABEL_17:
      v29 = v26[1];
      if (v29 && *(v29 + 24260) == 1 && ((*(v4 + 692) & 1) != 0 || *(v29 + 24261) == 1))
      {
        SolutionValue = operations_research::sat::LinearProgrammingConstraint::GetSolutionValue(v29, (a1 & 0xFFFFFFFE));
        return operations_research::sat::SplitAroundGivenValue(a1 & 0xFFFFFFFE, llround(SolutionValue), a2);
      }

      v8 = 0;
    }
  }

  else
  {
LABEL_3:
    v8 = 0;
  }

  return v8 | 0xFFFFFFFF;
}