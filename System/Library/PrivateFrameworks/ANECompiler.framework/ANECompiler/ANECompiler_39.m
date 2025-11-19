void sub_23CB1C04C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  v18 = *v16;
  if (*v16)
  {
    *(v16 + 8) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<operations_research::sat::Value(operations_research::sat::Literal)::{lambda(operations_research::sat::Model const&)#1},std::allocator<operations_research::sat::Value(operations_research::sat::Literal)::{lambda(operations_research::sat::Model const&)#1}>,long long ()(operations_research::sat::Model const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_284F3F3F0;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<operations_research::sat::Value(operations_research::sat::Literal)::{lambda(operations_research::sat::Model const&)#1},std::allocator<operations_research::sat::Value(operations_research::sat::Literal)::{lambda(operations_research::sat::Model const&)#1}>,long long ()(operations_research::sat::Model const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000023CE4505CLL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x800000023CE4505CLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000023CE4505CLL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023CE4505CLL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t operations_research::sat::Value(operations_research::sat::Literal)::{lambda(operations_research::sat::Model const&)#1}::operator()(int *a1, void *a2)
{
  v3 = a2[3];
  if (v3 > 1)
  {
    v7 = 0;
    _X11 = a2[5];
    __asm { PRFM            #4, [X11] }

    v14 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::Trail>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::Trail>(void)::d));
    v15 = (v14 >> 7) ^ (_X11 >> 12);
    v16 = vdup_n_s8(v14 & 0x7F);
    v17 = a2[6];
    v18 = v15 & v3;
    v19 = *(_X11 + v18);
    v2 = vceq_s8(v19, v16);
    if (!v2)
    {
      goto LABEL_9;
    }

    do
    {
LABEL_7:
      v20 = (v18 + (__clz(__rbit64(v2)) >> 3)) & v3;
      if (*(v17 + 16 * v20) == &gtl::FastTypeId<operations_research::sat::Trail>(void)::d)
      {
        v2 = v17 + 16 * v20;
        goto LABEL_13;
      }

      v2 &= ((v2 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v2);
LABEL_9:
    while (!*&vceq_s8(v19, 0x8080808080808080))
    {
      v7 += 8;
      v18 = (v7 + v18) & v3;
      v19 = *(_X11 + v18);
      v2 = vceq_s8(v19, v16);
      if (v2)
      {
        goto LABEL_7;
      }
    }
  }

  else if (a2[4] >= 2uLL)
  {
    v6 = a2[5];
    v4 = a2 + 5;
    v5 = v6;
    if (v6 == &gtl::FastTypeId<operations_research::sat::Trail>(void)::d)
    {
      v2 = v4;
    }

    else
    {
      v2 = v5;
    }
  }

LABEL_13:
  v21 = *a1;
  v22 = *(*(v2 + 8) + 24);
  if (((*(v22 + (((2 * (v21 >> 1)) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (2 * ((v21 >> 1) & 0x1Fu))) & 3) == 0)
  {
    operations_research::sat::Value(operations_research::sat::Literal)::{lambda(operations_research::sat::Model const&)#1}::operator()(&v25);
  }

  v23 = *a1;
  return (*(v22 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v21) & 1;
}

void *operations_research::sat::Model::Delete<operations_research::sat::HittingSetOptimizer>::~Delete(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 8);
  *v1 = &unk_284F3F480;
  v1[1] = 0;
  if (v2)
  {
    v3 = v1;
    operations_research::sat::HittingSetOptimizer::~HittingSetOptimizer(v2);
    MEMORY[0x23EED9460]();
    return v3;
  }

  return v1;
}

void operations_research::sat::Model::Delete<operations_research::sat::HittingSetOptimizer>::~Delete(void *a1)
{
  v1 = a1[1];
  *a1 = &unk_284F3F480;
  a1[1] = 0;
  if (v1)
  {
    operations_research::sat::HittingSetOptimizer::~HittingSetOptimizer(v1);
    MEMORY[0x23EED9460]();
  }

  JUMPOUT(0x23EED9460);
}

void operations_research::sat::HittingSetOptimizer::~HittingSetOptimizer(operations_research::sat::HittingSetOptimizer *this)
{
  v2 = *(this + 76);
  if (v2)
  {
    v3 = *(this + 77);
    v4 = *(this + 76);
    if (v3 != v2)
    {
      v5 = *(this + 77);
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
      v4 = *(this + 76);
    }

    *(this + 77) = v2;
    operator delete(v4);
  }

  v8 = *(this + 73);
  if (v8)
  {
    *(this + 74) = v8;
    operator delete(v8);
  }

  v9 = *(this + 70);
  if (v9)
  {
    *(this + 71) = v9;
    operator delete(v9);
  }

  v10 = *(this + 67);
  if (v10)
  {
    *(this + 68) = v10;
    operator delete(v10);
  }

  v11 = *(this + 63);
  if (v11)
  {
    *(this + 64) = v11;
    operator delete(v11);
  }

  v12 = *(this + 60);
  if (v12)
  {
    *(this + 61) = v12;
    operator delete(v12);
  }

  if (*(this + 56))
  {
    operator delete((*(this + 58) - (*(this + 57) & 1) - 8));
  }

  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<long long,std::vector<long long>>,absl::lts_20240722::hash_internal::Hash<long long>,std::equal_to<long long>,std::allocator<std::pair<long long const,std::vector<long long>>>>::~raw_hash_set(this + 52);
  operations_research::sat::LinearRelaxation::~LinearRelaxation((this + 344));
  operations_research::MPSolutionResponse::~MPSolutionResponse((this + 200));
  operations_research::MPModelRequest::~MPModelRequest((this + 128));
  v13 = *(this + 6);
  if (v13 == (this + 24))
  {
    (*(*v13 + 32))(v13);
  }

  else if (v13)
  {
    (*(*v13 + 40))(v13);
  }
}

void *operations_research::sat::Model::Delete<operations_research::sat::CoreBasedOptimizer>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F3F4B8;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[16];
    if (v3 == v1 + 13)
    {
      (*(*v3 + 32))(v3);
      v4 = v1[9];
      if (!v4)
      {
        goto LABEL_7;
      }
    }

    else
    {
      if (v3)
      {
        (*(*v3 + 40))(v3);
      }

      v4 = v1[9];
      if (!v4)
      {
        goto LABEL_7;
      }
    }

    v1[10] = v4;
    operator delete(v4);
LABEL_7:
    MEMORY[0x23EED9460](v1, 0x1020C409AA7E682);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::CoreBasedOptimizer>::~Delete(void *a1)
{
  v1 = a1[1];
  *a1 = &unk_284F3F4B8;
  a1[1] = 0;
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = v1[16];
  if (v2 == v1 + 13)
  {
    (*(*v2 + 32))(v2);
    v3 = v1[9];
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    v3 = v1[9];
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  v1[10] = v3;
  operator delete(v3);
LABEL_7:
  MEMORY[0x23EED9460](v1, 0x1020C409AA7E682);
LABEL_8:

  JUMPOUT(0x23EED9460);
}

uint64_t absl::lts_20240722::Cleanup<absl::lts_20240722::cleanup_internal::Tag,operations_research::sat::anonymous namespace::QuickSolveWithHint(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_0>::~Cleanup(uint64_t a1)
{
  if (*a1 == 1)
  {
    operations_research::sat::SatParameters::CopyFrom(*(a1 + 8), (a1 + 16));
    *a1 = 0;
    operations_research::sat::SatParameters::~SatParameters((a1 + 16));
  }

  return a1;
}

uint64_t std::__function::__func<operations_research::sat::ExcludeCurrentSolutionAndBacktrack(void)::{lambda(operations_research::sat::Model *)#1},std::allocator<operations_research::sat::ExcludeCurrentSolutionAndBacktrack(void)::{lambda(operations_research::sat::Model *)#1}>,void ()(operations_research::sat::Model *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000023CE4520ELL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x800000023CE4520ELL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000023CE4520ELL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023CE4520ELL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void operations_research::sat::ExcludeCurrentSolutionAndBacktrack(void)::{lambda(operations_research::sat::Model *)#1}::operator()(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a2);
  v4 = *(v3 + 74);
  if (v4)
  {
    if ((v4 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  operations_research::sat::SatSolver::Backtrack(v3, 0);
  v7 = &unk_284F3BBD8;
  v8 = 0;
  v9 = 0;
  v10 = &v7;
  v5 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a2);
  operations_research::sat::SatSolver::AddProblemClause(v5, v8, v9, 0);
  if (v10 == &v7)
  {
    (*(*v10 + 4))(v10);
  }

  else if (v10)
  {
    (*(*v10 + 5))();
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_23CB1CB18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::function<void ()(operations_research::sat::Model *)>::~function(va);
  if (v2)
  {
    operator delete(v2);
  }

  _Unwind_Resume(a1);
}

void operations_research::sat::anonymous namespace::SolveLoadedCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_0::operator()(uint64_t a1)
{
  if (*(*a1 + 16))
  {
    v2 = operations_research::sat::ComputeInnerObjective(*(*a1 + 128), __p);
    if (v2 < *(a1 + 24))
    {
      *(a1 + 24) = v2;
      operations_research::sat::SharedResponseManager::NewSolution(*(a1 + 16), __p, (v4 - __p) >> 3, *(a1 + 8), *(a1 + 8));
    }
  }

  else
  {
    operations_research::sat::SharedResponseManager::NewSolution(*(a1 + 16), __p, (v4 - __p) >> 3, *(a1 + 8), *(a1 + 8));
  }

  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }
}

void sub_23CB1CBE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::Model::GetOrCreate<operations_research::sat::SharedTreeWorker>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SharedTreeWorker>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SharedTreeWorker>(void)::d));
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
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::SharedTreeWorker>(void)::d)
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
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::SharedTreeWorker>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::SharedTreeWorker>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
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

uint64_t operations_research::sat::Model::GetOrCreate<operations_research::sat::LbTreeSearch>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::LbTreeSearch>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::LbTreeSearch>(void)::d));
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
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::LbTreeSearch>(void)::d)
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
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::LbTreeSearch>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::LbTreeSearch>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
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

uint64_t operations_research::sat::Model::Mutable<operations_research::sat::HittingSetOptimizer>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v9 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::HittingSetOptimizer>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::HittingSetOptimizer>(void)::d));
    v10 = vdup_n_s8(v9 & 0x7F);
    v11 = ((v9 >> 7) ^ (_X11 >> 12)) & v1;
    v12 = *(_X11 + v11);
    v13 = vceq_s8(v12, v10);
    if (!v13)
    {
      goto LABEL_8;
    }

LABEL_5:
    v14 = a1[6];
    while (1)
    {
      v15 = (v11 + (__clz(__rbit64(v13)) >> 3)) & v1;
      if (*(v14 + 16 * v15) == &gtl::FastTypeId<operations_research::sat::HittingSetOptimizer>(void)::d)
      {
        break;
      }

      v13 &= ((v13 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v13)
      {
LABEL_8:
        while (!*&vceq_s8(v12, 0x8080808080808080))
        {
          v2 += 8;
          v11 = (v2 + v11) & v1;
          v12 = *(_X11 + v11);
          v13 = vceq_s8(v12, v10);
          if (v13)
          {
            goto LABEL_5;
          }
        }

        return 0;
      }
    }

    v16 = (v14 + 16 * v15);
    if (!(_X11 + v15))
    {
      return 0;
    }

    return v16[1];
  }

  if (a1[4] >= 2uLL)
  {
    v19 = a1[5];
    v18 = a1 + 5;
    v20 = &absl::lts_20240722::container_internal::kSooControl;
    if (v19 == &gtl::FastTypeId<operations_research::sat::HittingSetOptimizer>(void)::d)
    {
      v16 = v18;
    }

    else
    {
      v20 = 0;
      v16 = 0;
    }

    if (v20)
    {
      return v16[1];
    }
  }

  return 0;
}

uint64_t operations_research::sat::Model::Mutable<operations_research::sat::CoreBasedOptimizer>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v9 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::CoreBasedOptimizer>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::CoreBasedOptimizer>(void)::d));
    v10 = vdup_n_s8(v9 & 0x7F);
    v11 = ((v9 >> 7) ^ (_X11 >> 12)) & v1;
    v12 = *(_X11 + v11);
    v13 = vceq_s8(v12, v10);
    if (!v13)
    {
      goto LABEL_8;
    }

LABEL_5:
    v14 = a1[6];
    while (1)
    {
      v15 = (v11 + (__clz(__rbit64(v13)) >> 3)) & v1;
      if (*(v14 + 16 * v15) == &gtl::FastTypeId<operations_research::sat::CoreBasedOptimizer>(void)::d)
      {
        break;
      }

      v13 &= ((v13 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v13)
      {
LABEL_8:
        while (!*&vceq_s8(v12, 0x8080808080808080))
        {
          v2 += 8;
          v11 = (v2 + v11) & v1;
          v12 = *(_X11 + v11);
          v13 = vceq_s8(v12, v10);
          if (v13)
          {
            goto LABEL_5;
          }
        }

        return 0;
      }
    }

    v16 = (v14 + 16 * v15);
    if (!(_X11 + v15))
    {
      return 0;
    }

    return v16[1];
  }

  if (a1[4] >= 2uLL)
  {
    v19 = a1[5];
    v18 = a1 + 5;
    v20 = &absl::lts_20240722::container_internal::kSooControl;
    if (v19 == &gtl::FastTypeId<operations_research::sat::CoreBasedOptimizer>(void)::d)
    {
      v16 = v18;
    }

    else
    {
      v20 = 0;
      v16 = 0;
    }

    if (v20)
    {
      return v16[1];
    }
  }

  return 0;
}

void operations_research::sat::ContinuousProber::~ContinuousProber(operations_research::sat::ContinuousProber *this)
{
  v2 = *(this + 166);
  if (v2)
  {
    *(this + 167) = v2;
    operator delete(v2);
  }

  v3 = *(this + 163);
  if (v3)
  {
    v4 = *(this + 164);
    v5 = *(this + 163);
    if (v4 != v3)
    {
      v6 = *(this + 164);
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
      v5 = *(this + 163);
    }

    *(this + 164) = v3;
    operator delete(v5);
  }

  if (*(this + 155) >= 2uLL)
  {
    operator delete((*(this + 157) - (*(this + 156) & 1) - 8));
    if (*(this + 151) < 2uLL)
    {
LABEL_13:
      operations_research::sat::SatParameters::~SatParameters((this + 120));
      v9 = *(this + 3);
      if (!v9)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if (*(this + 151) < 2uLL)
  {
    goto LABEL_13;
  }

  operator delete((*(this + 153) - (*(this + 152) & 1) - 8));
  operations_research::sat::SatParameters::~SatParameters((this + 120));
  v9 = *(this + 3);
  if (v9)
  {
LABEL_14:
    *(this + 4) = v9;
    operator delete(v9);
  }

LABEL_15:
  v10 = *this;
  if (*this)
  {
    *(this + 1) = v10;
    operator delete(v10);
  }
}

void *operations_research::sat::Model::Delete<operations_research::sat::SharedTreeWorker>::~Delete(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 8);
  *v1 = &unk_284F3F570;
  v1[1] = 0;
  if (v2)
  {
    v3 = v1;
    operations_research::sat::SharedTreeWorker::~SharedTreeWorker(v2);
    MEMORY[0x23EED9460]();
    return v3;
  }

  return v1;
}

void operations_research::sat::Model::Delete<operations_research::sat::SharedTreeWorker>::~Delete(void *a1)
{
  v1 = a1[1];
  *a1 = &unk_284F3F570;
  a1[1] = 0;
  if (v1)
  {
    operations_research::sat::SharedTreeWorker::~SharedTreeWorker(v1);
    MEMORY[0x23EED9460]();
  }

  JUMPOUT(0x23EED9460);
}

void operations_research::sat::SharedTreeWorker::~SharedTreeWorker(operations_research::sat::SharedTreeWorker *this)
{
  std::deque<int>::~deque[abi:ne200100](this + 312);
  v2 = *(this + 33);
  if (v2)
  {
    *(this + 34) = v2;
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
    *(this + 23) = v5;
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
}

__n128 std::__function::__func<operations_research::sat::anonymous namespace::SolveLoadedCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::anonymous namespace::SolveLoadedCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F3F5A8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::anonymous namespace::SolveLoadedCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::anonymous namespace::SolveLoadedCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat12_GLOBAL__N_118SolveLoadedCpModelERKNS0_12CpModelProtoEPNS0_5ModelEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat12_GLOBAL__N_118SolveLoadedCpModelERKNS0_12CpModelProtoEPNS0_5ModelEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat12_GLOBAL__N_118SolveLoadedCpModelERKNS0_12CpModelProtoEPNS0_5ModelEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat12_GLOBAL__N_118SolveLoadedCpModelERKNS0_12CpModelProtoEPNS0_5ModelEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *operations_research::sat::Model::Delete<operations_research::sat::LbTreeSearch>::~Delete(void *result)
{
  *result = &unk_284F3F628;
  v1 = result[1];
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    std::default_delete<operations_research::sat::LbTreeSearch>::operator()[abi:ne200100]((result + 1), v1);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::LbTreeSearch>::~Delete(void *a1)
{
  *a1 = &unk_284F3F628;
  v2 = a1[1];
  a1[1] = 0;
  if (v2)
  {
    std::default_delete<operations_research::sat::LbTreeSearch>::operator()[abi:ne200100]((a1 + 1), v2);
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

void std::default_delete<operations_research::sat::LbTreeSearch>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 224);
    if (v3 == a2 + 200)
    {
      (*(*v3 + 32))(v3);
      v4 = *(a2 + 176);
      if (v4)
      {
LABEL_6:
        *(a2 + 184) = v4;
        operator delete(v4);
      }
    }

    else
    {
      if (v3)
      {
        (*(*v3 + 40))(v3);
      }

      v4 = *(a2 + 176);
      if (v4)
      {
        goto LABEL_6;
      }
    }

    v5 = *(a2 + 152);
    if (v5)
    {
      *(a2 + 160) = v5;
      operator delete(v5);
    }

    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    JUMPOUT(0x23EED9460);
  }
}

void operations_research::sat::SharedStatTables::~SharedStatTables(operations_research::sat::SharedStatTables *this)
{
  v2 = *(this + 28);
  if (v2)
  {
    v3 = *(this + 29);
    v4 = *(this + 28);
    if (v3 != v2)
    {
      do
      {
        if (*(v3 - 1))
        {
          absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::clear_and_delete(*(v3 - 3));
        }

        v5 = v3 - 6;
        *(v3 - 3) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::EmptyNode(void)::empty_node;
        *(v3 - 2) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::EmptyNode(void)::empty_node;
        *(v3 - 1) = 0;
        if (*(v3 - 25) < 0)
        {
          operator delete(*v5);
        }

        v3 -= 6;
      }

      while (v5 != v2);
      v4 = *(this + 28);
    }

    *(this + 29) = v2;
    operator delete(v4);
  }

  v6 = *(this + 25);
  if (v6)
  {
    v7 = *(this + 26);
    v8 = *(this + 25);
    if (v7 != v6)
    {
      v9 = *(this + 26);
      do
      {
        v12 = *(v9 - 3);
        v9 -= 3;
        v11 = v12;
        if (v12)
        {
          v13 = *(v7 - 2);
          v10 = v11;
          if (v13 != v11)
          {
            do
            {
              v14 = *(v13 - 1);
              v13 -= 3;
              if (v14 < 0)
              {
                operator delete(*v13);
              }
            }

            while (v13 != v11);
            v10 = *v9;
          }

          *(v7 - 2) = v11;
          operator delete(v10);
        }

        v7 = v9;
      }

      while (v9 != v6);
      v8 = *(this + 25);
    }

    *(this + 26) = v6;
    operator delete(v8);
  }

  v15 = *(this + 22);
  if (v15)
  {
    v16 = *(this + 23);
    v17 = *(this + 22);
    if (v16 != v15)
    {
      v18 = *(this + 23);
      do
      {
        v21 = *(v18 - 3);
        v18 -= 3;
        v20 = v21;
        if (v21)
        {
          v22 = *(v16 - 2);
          v19 = v20;
          if (v22 != v20)
          {
            do
            {
              v23 = *(v22 - 1);
              v22 -= 3;
              if (v23 < 0)
              {
                operator delete(*v22);
              }
            }

            while (v22 != v20);
            v19 = *v18;
          }

          *(v16 - 2) = v20;
          operator delete(v19);
        }

        v16 = v18;
      }

      while (v18 != v15);
      v17 = *(this + 22);
    }

    *(this + 23) = v15;
    operator delete(v17);
  }

  v24 = *(this + 19);
  if (v24)
  {
    v25 = *(this + 20);
    v26 = *(this + 19);
    if (v25 != v24)
    {
      v27 = *(this + 20);
      do
      {
        v30 = *(v27 - 3);
        v27 -= 3;
        v29 = v30;
        if (v30)
        {
          v31 = *(v25 - 2);
          v28 = v29;
          if (v31 != v29)
          {
            do
            {
              v32 = *(v31 - 1);
              v31 -= 3;
              if (v32 < 0)
              {
                operator delete(*v31);
              }
            }

            while (v31 != v29);
            v28 = *v27;
          }

          *(v25 - 2) = v29;
          operator delete(v28);
        }

        v25 = v27;
      }

      while (v27 != v24);
      v26 = *(this + 19);
    }

    *(this + 20) = v24;
    operator delete(v26);
  }

  v33 = *(this + 16);
  if (v33)
  {
    v34 = *(this + 17);
    v35 = *(this + 16);
    if (v34 != v33)
    {
      v36 = *(this + 17);
      do
      {
        v39 = *(v36 - 3);
        v36 -= 3;
        v38 = v39;
        if (v39)
        {
          v40 = *(v34 - 2);
          v37 = v38;
          if (v40 != v38)
          {
            do
            {
              v41 = *(v40 - 1);
              v40 -= 3;
              if (v41 < 0)
              {
                operator delete(*v40);
              }
            }

            while (v40 != v38);
            v37 = *v36;
          }

          *(v34 - 2) = v38;
          operator delete(v37);
        }

        v34 = v36;
      }

      while (v36 != v33);
      v35 = *(this + 16);
    }

    *(this + 17) = v33;
    operator delete(v35);
  }

  v42 = *(this + 13);
  if (v42)
  {
    v43 = *(this + 14);
    v44 = *(this + 13);
    if (v43 != v42)
    {
      v45 = *(this + 14);
      do
      {
        v48 = *(v45 - 3);
        v45 -= 3;
        v47 = v48;
        if (v48)
        {
          v49 = *(v43 - 2);
          v46 = v47;
          if (v49 != v47)
          {
            do
            {
              v50 = *(v49 - 1);
              v49 -= 3;
              if (v50 < 0)
              {
                operator delete(*v49);
              }
            }

            while (v49 != v47);
            v46 = *v45;
          }

          *(v43 - 2) = v47;
          operator delete(v46);
        }

        v43 = v45;
      }

      while (v45 != v42);
      v44 = *(this + 13);
    }

    *(this + 14) = v42;
    operator delete(v44);
  }

  v51 = *(this + 10);
  if (v51)
  {
    v52 = *(this + 11);
    v53 = *(this + 10);
    if (v52 != v51)
    {
      v54 = *(this + 11);
      do
      {
        v57 = *(v54 - 3);
        v54 -= 3;
        v56 = v57;
        if (v57)
        {
          v58 = *(v52 - 2);
          v55 = v56;
          if (v58 != v56)
          {
            do
            {
              v59 = *(v58 - 1);
              v58 -= 3;
              if (v59 < 0)
              {
                operator delete(*v58);
              }
            }

            while (v58 != v56);
            v55 = *v54;
          }

          *(v52 - 2) = v56;
          operator delete(v55);
        }

        v52 = v54;
      }

      while (v54 != v51);
      v53 = *(this + 10);
    }

    *(this + 11) = v51;
    operator delete(v53);
  }

  v60 = *(this + 7);
  if (v60)
  {
    v61 = *(this + 8);
    v62 = *(this + 7);
    if (v61 != v60)
    {
      v63 = *(this + 8);
      do
      {
        v66 = *(v63 - 3);
        v63 -= 3;
        v65 = v66;
        if (v66)
        {
          v67 = *(v61 - 2);
          v64 = v65;
          if (v67 != v65)
          {
            do
            {
              v68 = *(v67 - 1);
              v67 -= 3;
              if (v68 < 0)
              {
                operator delete(*v67);
              }
            }

            while (v67 != v65);
            v64 = *v63;
          }

          *(v61 - 2) = v65;
          operator delete(v64);
        }

        v61 = v63;
      }

      while (v63 != v60);
      v62 = *(this + 7);
    }

    *(this + 8) = v60;
    operator delete(v62);
  }

  v69 = *(this + 4);
  if (v69)
  {
    v70 = *(this + 5);
    v71 = *(this + 4);
    if (v70 != v69)
    {
      v72 = *(this + 5);
      do
      {
        v75 = *(v72 - 3);
        v72 -= 3;
        v74 = v75;
        if (v75)
        {
          v76 = *(v70 - 2);
          v73 = v74;
          if (v76 != v74)
          {
            do
            {
              v77 = *(v76 - 1);
              v76 -= 3;
              if (v77 < 0)
              {
                operator delete(*v76);
              }
            }

            while (v76 != v74);
            v73 = *v72;
          }

          *(v70 - 2) = v74;
          operator delete(v73);
        }

        v70 = v72;
      }

      while (v72 != v69);
      v71 = *(this + 4);
    }

    *(this + 5) = v69;
    operator delete(v71);
  }

  v78 = *(this + 1);
  if (v78)
  {
    v79 = *(this + 2);
    v80 = *(this + 1);
    if (v79 != v78)
    {
      v81 = *(this + 2);
      do
      {
        v84 = *(v81 - 3);
        v81 -= 3;
        v83 = v84;
        if (v84)
        {
          v85 = *(v79 - 2);
          v82 = v83;
          if (v85 != v83)
          {
            do
            {
              v86 = *(v85 - 1);
              v85 -= 3;
              if (v86 < 0)
              {
                operator delete(*v85);
              }
            }

            while (v85 != v83);
            v82 = *v81;
          }

          *(v79 - 2) = v83;
          operator delete(v82);
        }

        v79 = v81;
      }

      while (v81 != v78);
      v80 = *(this + 1);
    }

    *(this + 2) = v78;
    operator delete(v80);
  }

  absl::lts_20240722::Mutex::~Mutex(this);
}

uint64_t *absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<char const*,int>,absl::lts_20240722::container_internal::HashEq<char const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<char const*,void>::Eq,std::allocator<std::pair<char const* const,int>>>::find_or_prepare_insert<char const*>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  if (*result > 1)
  {
    v6 = 0;
    _X10 = result[2];
    __asm { PRFM            #4, [X10] }

    v13 = *a2;
    v14 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2))) + *a2;
    v15 = ((v14 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v14);
    v16 = vdup_n_s8(v15 & 0x7F);
    v17 = ((v15 >> 7) ^ (_X10 >> 12)) & v3;
    v18 = *(_X10 + v17);
    v19 = vceq_s8(v18, v16);
    if (!v19)
    {
      goto LABEL_8;
    }

LABEL_5:
    v20 = result[3];
    do
    {
      v21 = (v17 + (__clz(__rbit64(v19)) >> 3)) & v3;
      if (*(v20 + 16 * v21) == v13)
      {
        *a3 = _X10 + v21;
        *(a3 + 8) = v20 + 16 * v21;
        *(a3 + 16) = 0;
        return result;
      }

      v19 &= ((v19 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v19);
LABEL_8:
    while (1)
    {
      v22 = vceq_s8(v18, 0x8080808080808080);
      if (v22)
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

    v23 = result;
    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(result, v15, (v17 + (__clz(__rbit64(v22)) >> 3)) & v3, v6, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<char const*,int>,absl::lts_20240722::container_internal::HashEq<char const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<char const*,void>::Eq,std::allocator<std::pair<char const* const,int>>>::GetPolicyFunctions(void)::value);
    v25 = v23[3] + 16 * result;
    *a3 = result + v23[2];
    *(a3 + 8) = v25;
    *(a3 + 16) = 1;
  }

  else
  {
    if (result[1] > 1)
    {
      v4 = result + 2;
      if (result[2] != *a2)
      {
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<char const*,int>,absl::lts_20240722::container_internal::HashEq<char const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<char const*,void>::Eq,std::allocator<std::pair<char const* const,int>>>::resize_impl(result, 3);
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

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<char const*,int>,absl::lts_20240722::container_internal::HashEq<char const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<char const*,void>::Eq,std::allocator<std::pair<char const* const,int>>>::resize_impl(uint64_t *a1, uint64_t a2)
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

unsigned __int8 *absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<long long,std::less<long long>,std::allocator<long long>,256,false>>::internal_emplace<long long>(uint64_t a1, unsigned __int8 *a2, uint64_t a3, void *a4)
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
    v6 = 30;
  }

  if (a2[10] != v6)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v6 <= 0x1D)
  {
    operator new();
  }

  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<long long,std::less<long long>,std::allocator<long long>,256,false>>::rebalance_or_split(a1, &i);
  v7 = i;
  v8 = v31;
  v9 = i[10];
  v10 = v9 - v31;
  if (v9 > v31)
  {
LABEL_13:
    v11 = v10;
    if ((v10 & 0x1FFFFFFFFFFFFFFFLL) != 0)
    {
      v12 = &v7[8 * v8 + 16];
      v13 = v12 + 8 * v11;
      v14 = v13 + 8;
      v15 = 8 * v9;
      v16 = 8 * v9 - 8 * v8 - 8;
      if (v16 < 0x18)
      {
        goto LABEL_18;
      }

      v17 = (v16 >> 3) + 1;
      v18 = 8 * (v17 & 0x3FFFFFFFFFFFFFFCLL);
      v14 -= v18;
      v13 -= v18;
      v19 = &v7[v15];
      v20 = v17 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v21 = *(v19 - 1);
        *(v19 + 8) = *v19;
        *(v19 - 8) = v21;
        v19 -= 32;
        v20 -= 4;
      }

      while (v20);
      if (v17 != (v17 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_18:
        v22 = (v14 - 8);
        do
        {
          v23 = *(v13 - 8);
          v13 -= 8;
          *v22-- = v23;
        }

        while (v13 != v12);
      }

      LODWORD(v9) = v7[10];
    }
  }

LABEL_21:
  *&v7[8 * v8 + 16] = *a4;
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

uint64_t absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<long long,std::less<long long>,std::allocator<long long>,256,false>>::rebalance_or_split(unsigned __int8 **a1, unsigned __int8 **a2)
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
        result = absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::set_params<long long,std::less<long long>,std::allocator<long long>,256,false>>::rebalance_right_to_left(*(v4 + 8 * (v5 - 1) + 256), v9, v3);
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
      absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<long long,std::less<long long>,std::allocator<long long>,256,false>>::rebalance_or_split(a1, &v25);
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

  result = absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::set_params<long long,std::less<long long>,std::allocator<long long>,256,false>>::rebalance_left_to_right(v3, v17, *(v4 + 8 * (v5 + 1) + 256));
  v20 = *(a2 + 2);
  v21 = (*a2)[10];
  if (v20 > v21)
  {
    v24 = v20 + ~v21;
    goto LABEL_30;
  }

  return result;
}

uint64_t *absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::set_params<long long,std::less<long long>,std::allocator<long long>,256,false>>::rebalance_right_to_left(uint64_t *result, unsigned int a2, uint64_t a3)
{
  v3 = *(result + 10);
  v4 = *(result + 8);
  v5 = *result;
  v6 = &result[v3];
  v6[2] = *(*result + 8 * v4 + 16);
  v7 = v6 + 2;
  v8 = (a2 - 1);
  v9 = (a3 + 16);
  v10 = (a3 + 16 + 8 * v8);
  if ((v8 & 0x1FFFFFFFFFFFFFFFLL) != 0)
  {
    v11 = (a2 + 0x1FFFFFFFFFFFFFFELL) & 0x1FFFFFFFFFFFFFFFLL;
    if (v11 >= 9)
    {
      v13 = &result[v3];
      v12 = (a3 + 16);
      if (v13 - a3 + 8 >= 0x20)
      {
        v14 = v11 + 1;
        v15 = v14 & 0x3FFFFFFFFFFFFFFCLL;
        v7 = (v7 + v15 * 8);
        v12 = &v9[v15];
        v16 = (a3 + 32);
        v17 = v13 + 5;
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
      v12 = (a3 + 16);
    }

    v20 = v7 + 1;
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

  *(v5 + 8 * v4 + 16) = *v10;
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
    v30 = (a3 + 32);
    v31 = (a3 + 32 + 8 * a2);
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

uint64_t absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::set_params<long long,std::less<long long>,std::allocator<long long>,256,false>>::rebalance_left_to_right(uint64_t result, unsigned int a2, uint64_t a3)
{
  v3 = *(a3 + 10);
  v4 = (a3 + 16);
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
    v10 = (a3 + 8 * v3);
    v11 = v8 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v12 = *v10;
      v13 = (v10 + 8 * a2);
      *(v13 - 1) = *(v10 - 1);
      *v13 = v12;
      v10 -= 2;
      v11 -= 4;
    }

    while (v11);
    if (v8 != (v8 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_6:
      v14 = v6 - 1;
      do
      {
        v15 = *--v5;
        *v14-- = v15;
      }

      while (v5 != v4);
    }
  }

  v16 = (a2 - 1);
  v4[v16] = *(*result + 8 * *(result + 8) + 16);
  v17 = *(result + 10);
  v18 = result + 16;
  if (((a2 - 1) & 0x1FFFFFFFFFFFFFFFLL) != 0)
  {
    v19 = v18 + 8 * (v17 - (a2 - 1));
    v20 = (a2 + 0x1FFFFFFFFFFFFFFELL) & 0x1FFFFFFFFFFFFFFFLL;
    if (v20 >= 0xD)
    {
      v22 = 8 * *(result + 10);
      v21 = (v18 + 8 * (v17 - (a2 - 1)));
      if (8 * a2 + a3 - result - v22 - 8 >= 0x20)
      {
        v23 = v20 + 1;
        v24 = 8 * (v23 & 0x3FFFFFFFFFFFFFFCLL);
        v4 = (v4 + v24);
        v21 = (v19 + v24);
        v25 = (v22 - 8 * a2 + result + 40);
        v26 = (a3 + 32);
        v27 = v23 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v28 = *v25;
          *(v26 - 1) = *(v25 - 1);
          *v26 = v28;
          v25 += 2;
          v26 += 2;
          v27 -= 4;
        }

        while (v27);
        if (v23 == (v23 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      v21 = (v18 + 8 * (v17 - (a2 - 1)));
    }

    v29 = (v19 + v16 * 8);
    do
    {
      v30 = *v21++;
      *v4++ = v30;
    }

    while (v21 != v29);
LABEL_17:
    v17 = *(result + 10);
  }

  *(*result + 8 * *(result + 8) + 16) = *(v18 + 8 * (v17 - a2));
  if (!*(result + 11))
  {
    if (((*(a3 + 10) + 1) & 0x100) == 0)
    {
      v31 = a3 + 256;
      v32 = (*(a3 + 10) + 1);
      do
      {
        v33 = *(v31 + 8 * (v32 - 1));
        *(v31 + 8 * (v32 - 1 + a2)) = v33;
        *(v33 + 8) = v32 - 1 + a2;
        *v33 = a3;
        --v32;
      }

      while (v32);
    }

    if (a2)
    {
      v34 = 0;
      if ((a2 + 1) <= 2u)
      {
        v35 = 2;
      }

      else
      {
        v35 = (a2 + 1);
      }

      v36 = v35 - 1;
      do
      {
        v37 = *(result + 256 + 8 * (v34 + 1 - a2 + *(result + 10)));
        *(a3 + 8 * v34 + 256) = v37;
        *(v37 + 8) = v34;
        *v37 = a3;
        ++v34;
      }

      while (v36 != v34);
    }
  }

  *(result + 10) -= a2;
  *(a3 + 10) += a2;
  return result;
}

unsigned __int8 *absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::set_params<long long,std::less<long long>,std::allocator<long long>,256,false>>::split(unsigned __int8 *result, int a2, uint64_t a3)
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
  v6 = result + 16;
  if (*(a3 + 10))
  {
    v7 = &v6[8 * v4];
    v8 = (a3 + 16);
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
        v14 = (v11 + 32);
        v15 = (a3 + 32);
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
      v26 = v20 + 8 * result[8] + 16;
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
      v33 = (v20 + v29);
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

  *(v20 + 8 * v21 + 16) = *&v6[8 * v22];
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

uint64_t absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>::insert_unique<operations_research::Domain,std::piecewise_construct_t const&,std::tuple<operations_research::Domain&&>,std::tuple<>>@<X0>(unsigned __int8 **a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  if (!a1[2])
  {
    operator new();
  }

  v10 = *a1;
  v11 = (*a1)[10];
  if ((*a1)[10])
  {
LABEL_4:
    v12 = 0;
    do
    {
      v13 = (v11 + v12) >> 1;
      if (operations_research::Domain::operator<(&v10[32 * v13 + 16], a2))
      {
        v12 = v13 + 1;
      }

      else
      {
        v11 = (v11 + v12) >> 1;
      }
    }

    while (v12 != v11);
  }

  while (!v10[11])
  {
    v10 = *&v10[8 * v11 + 240];
    v11 = v10[10];
    if (v10[10])
    {
      goto LABEL_4;
    }
  }

  v14 = v11;
  v15 = v11;
  v16 = v10;
  while (v15 == *(v16 + 10))
  {
    v15 = *(v16 + 8);
    v16 = *v16;
    if (*(v16 + 11))
    {
      goto LABEL_17;
    }
  }

  result = operations_research::Domain::operator<(a2, (v16 + 32 * v15 + 16));
  if (result)
  {
LABEL_17:
    result = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>::internal_emplace<std::piecewise_construct_t const&,std::tuple<operations_research::Domain&&>,std::tuple<>>(a1, v10, v14, a3, a4);
    v16 = result;
    v18 = 1;
    v15 = v19;
    goto LABEL_19;
  }

  v18 = 0;
LABEL_19:
  *a5 = v16;
  *(a5 + 8) = v15;
  *(a5 + 16) = v18;
  return result;
}

unsigned __int8 *absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>::internal_emplace<std::piecewise_construct_t const&,std::tuple<operations_research::Domain&&>,std::tuple<>>(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  i = a2;
  v25 = a3;
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

  LODWORD(v25) = v8[10];
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

    absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>::rebalance_or_split(a1, &i);
  }

LABEL_12:
  v9 = i;
  v10 = v25;
  v11 = i[10];
  v12 = v25;
  if (v11 > v25)
  {
    v12 = v25;
    if (((v11 - v25) & 0x7FFFFFFFFFFFFFFLL) != 0)
    {
      v13 = 32 * i[10];
      v14 = &i[v13 - 16];
      v15 = 32 * v25 - v13;
      do
      {
        *(v14 + 4) = *v14;
        *(v14 + 40) = *(v14 + 8);
        *v14 = 0;
        *(v14 + 14) = *(v14 + 6);
        v14 -= 32;
        v15 += 32;
      }

      while (v15);
    }
  }

  v16 = &v9[32 * v12];
  v17 = *a5;
  *(v16 + 2) = 0;
  *(v16 + 2) = *v17;
  *(v16 + 24) = *(v17 + 8);
  *v17 = 0;
  *(v16 + 10) = 0;
  v18 = ++v9[10];
  if (!v9[11])
  {
    v19 = v10 + 1;
    if (v19 < v18)
    {
      v20 = v9 + 240;
      do
      {
        v21 = *&v20[8 * (v18 - 1)];
        *&v20[8 * v18] = v21;
        *(v21 + 8) = v18;
      }

      while (v19 < --v18);
    }
  }

  ++*(a1 + 16);
  return i;
}

uint64_t absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>::rebalance_or_split(unsigned __int8 **a1, unsigned __int8 **a2)
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
        result = absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>::rebalance_right_to_left(*(v4 + 8 * (v5 - 1) + 240), v9, v3);
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
      absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>::rebalance_or_split(a1, &v25);
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

  result = absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>::rebalance_left_to_right(v3, v17, *(v4 + 8 * (v5 + 1) + 240));
  v20 = *(a2 + 2);
  v21 = (*a2)[10];
  if (v20 > v21)
  {
    v24 = v20 + ~v21;
    goto LABEL_30;
  }

  return result;
}

uint64_t *absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>::rebalance_right_to_left(uint64_t *result, unsigned int a2, uint64_t a3)
{
  v3 = *result;
  v4 = &result[4 * *(result + 10)];
  v5 = *result + 32 * *(result + 8);
  v4[2] = 0;
  v4[2] = *(v5 + 16);
  *(v4 + 3) = *(v5 + 24);
  *(v5 + 16) = 0;
  *(v4 + 10) = *(v5 + 40);
  v6 = (a2 - 1);
  v7 = a3 + 16;
  v8 = a3 + 16 + 32 * v6;
  if ((v6 & 0x7FFFFFFFFFFFFFFLL) != 0)
  {
    v9 = &result[4 * *(result + 10) + 6];
    do
    {
      *v9 = 0;
      *v9 = *v7;
      *(v9 + 8) = *(v7 + 8);
      *v7 = 0;
      *(v9 + 24) = *(v7 + 24);
      v7 += 32;
      v9 += 32;
    }

    while (v7 != v8);
    v3 = *result;
  }

  v10 = v3 + 32 * *(result + 8);
  *(v10 + 16) = 0;
  *(v10 + 16) = *v8;
  *(v10 + 24) = *(v8 + 8);
  *v8 = 0;
  *(v10 + 40) = *(v8 + 24);
  v11 = *(a3 + 10);
  v12 = a2;
  if (((v11 - a2) & 0x7FFFFFFFFFFFFFFLL) != 0)
  {
    v13 = 0;
    v14 = 32 * v11 - 32 * a2;
    v15 = a3 + 32 * a2;
    do
    {
      v16 = a3 + v13;
      *(v16 + 16) = 0;
      *(v16 + 16) = *(v15 + v13 + 16);
      *(v16 + 24) = *(v15 + v13 + 24);
      *(v15 + v13 + 16) = 0;
      *(v16 + 40) = *(v15 + v13 + 40);
      v13 += 32;
    }

    while (v14 != v13);
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
        result[v19 + 30] = v20;
        *(v20 + 8) = v19;
        *v20 = result;
        ++v18;
        --v12;
      }

      while (v12);
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

uint64_t absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>::rebalance_left_to_right(uint64_t result, unsigned int a2, uint64_t a3)
{
  v3 = a3 + 16;
  if (*(a3 + 10))
  {
    v4 = 0;
    v5 = 32 * *(a3 + 10);
    v6 = a3 + 32 * a2;
    v7 = a3;
    do
    {
      v8 = v6 + v5;
      *(v8 - 16) = 0;
      *(v8 - 16) = *(v7 + v5 - 16);
      *(v8 - 8) = *(v7 + v5 - 8);
      *(v7 + v5 - 16) = 0;
      *(v8 + 8) = *(v7 + v5 + 8);
      v6 -= 32;
      v7 -= 32;
      v4 += 32;
    }

    while (v5 != v4);
  }

  v9 = a2 - 1;
  v10 = 32 * v9;
  v11 = v3 + 32 * v9;
  v12 = *result + 32 * *(result + 8);
  *v11 = 0;
  *v11 = *(v12 + 16);
  *(v11 + 8) = *(v12 + 24);
  *(v12 + 16) = 0;
  *(v11 + 24) = *(v12 + 40);
  v13 = *(result + 10);
  v14 = result + 16;
  if ((v9 & 0x7FFFFFFFFFFFFFFLL) != 0)
  {
    v15 = v14 + 32 * (v13 - v9);
    v16 = v15 + v10;
    do
    {
      *v3 = 0;
      *v3 = *v15;
      *(v3 + 8) = *(v15 + 8);
      *v15 = 0;
      *(v3 + 24) = *(v15 + 24);
      v15 += 32;
      v3 += 32;
    }

    while (v15 != v16);
    LODWORD(v13) = *(result + 10);
  }

  v17 = *result + 32 * *(result + 8);
  v18 = v14 + 32 * (v13 - a2);
  *(v17 + 16) = 0;
  *(v17 + 16) = *v18;
  *(v17 + 24) = *(v18 + 8);
  *v18 = 0;
  *(v17 + 40) = *(v18 + 24);
  if (!*(result + 11))
  {
    if (((*(a3 + 10) + 1) & 0x100) == 0)
    {
      v19 = a3 + 240;
      v20 = (*(a3 + 10) + 1);
      do
      {
        v21 = *(v19 + 8 * (v20 - 1));
        *(v19 + 8 * (v20 - 1 + a2)) = v21;
        *(v21 + 8) = v20 - 1 + a2;
        *v21 = a3;
        --v20;
      }

      while (v20);
    }

    if (a2)
    {
      v22 = 0;
      if ((a2 + 1) <= 2u)
      {
        v23 = 2;
      }

      else
      {
        v23 = (a2 + 1);
      }

      v24 = v23 - 1;
      do
      {
        v25 = *(result + 240 + 8 * (v22 + 1 - a2 + *(result + 10)));
        *(a3 + 8 * v22 + 240) = v25;
        *(v25 + 8) = v22;
        *v25 = a3;
        ++v22;
      }

      while (v24 != v22);
    }
  }

  *(result + 10) -= a2;
  *(a3 + 10) += a2;
  return result;
}

void absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>::split(unsigned __int8 *a1, int a2, uint64_t a3)
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
    v10 = a3 + 16;
    do
    {
      *v10 = 0;
      *v10 = *v8;
      *(v10 + 8) = *(v8 + 8);
      *v8 = 0;
      *(v10 + 24) = *(v8 + 6);
      v8 += 32;
      v10 += 32;
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
  if (v15 > v13 && ((v15 - v13) & 0x7FFFFFFFFFFFFFFLL) != 0)
  {
    v16 = 32 * *(*a1 + 10);
    v17 = v16 + v12 - 16;
    v18 = 32 * v13 - v16;
    do
    {
      *(v17 + 32) = *v17;
      *(v17 + 40) = *(v17 + 8);
      *v17 = 0;
      *(v17 + 56) = *(v17 + 24);
      v17 -= 32;
      v18 += 32;
    }

    while (v18);
  }

  v19 = v12 + 32 * v13;
  *(v19 + 16) = 0;
  *(v19 + 16) = *v14;
  *(v19 + 24) = *(v14 + 8);
  *v14 = 0;
  *(v19 + 40) = *(v14 + 6);
  v20 = (*(v12 + 10))++ + 1;
  if (!*(v12 + 11))
  {
    v21 = v13 + 1;
    if (v21 < v20)
    {
      v22 = v12 + 240;
      do
      {
        v23 = *(v22 + 8 * (v20 - 1));
        *(v22 + 8 * v20) = v23;
        *(v23 + 8) = v20;
      }

      while (v21 < --v20);
    }
  }

  v25 = &v7[32 * a1[10]];
  if (*v25)
  {
    operator delete(*(v25 + 1));
  }

  *(*a1 + 8 * (a1[8] + 1) + 240) = a3;
  v26 = a1[11];
  if (!a1[11])
  {
    v27 = a1[10];
    do
    {
      v28 = *&a1[8 * ++v27 + 240];
      *(a3 + 240 + 8 * v26) = v28;
      *(v28 + 8) = v26;
      *v28 = a3;
      ++v26;
    }

    while (*(a3 + 10) >= v26);
  }
}

uint64_t absl::lts_20240722::strings_internal::ExtractStringification<operations_research::sat::DecisionStrategyProto_VariableSelectionStrategy>(uint64_t a1, int *a2)
{
  v3 = *a2;
  if (*a2 < 1)
  {
    if (!v3)
    {
      absl::lts_20240722::strings_internal::ExtractStringification<operations_research::sat::DecisionStrategyProto_VariableSelectionStrategy>();
    }

    v4 = (2 * ~v3) | 1;
  }

  else
  {
    v4 = 2 * v3 - 2;
  }

  operations_research::sat::AbslStringify<absl::lts_20240722::strings_internal::StringifySink>(a1, v4);
  v5 = *(a1 + 23);
  if (v5 >= 0)
  {
    result = a1;
  }

  else
  {
    result = *a1;
  }

  if (v5 >= 0)
  {
    v7 = *(a1 + 23);
  }

  else
  {
    v7 = *(a1 + 8);
  }

  return result;
}

void operations_research::sat::AbslStringify<absl::lts_20240722::strings_internal::StringifySink>(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = ~(a2 >> 1);
  }

  else
  {
    v3 = ((a2 >> 1) + 1);
  }

  v7 = v3;
  v8 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<int>;
  absl::lts_20240722::str_format_internal::FormatPack("%+d", 3, &v7, 1uLL, __p);
  v7 = __p;
  v8 = absl::lts_20240722::str_format_internal::FormatArgImpl::Dispatch<std::string>;
  absl::lts_20240722::str_format_internal::FormatUntyped(a1, absl::lts_20240722::str_format_internal::FormatRawSinkImpl::Flush<absl::lts_20240722::strings_internal::StringifySink>, "%s", 2, &v7, 1uLL);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_23CB1FDF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>::erase_range(uint64_t a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, uint64_t **a4@<X3>, uint64_t a5@<X4>, unint64_t *a6@<X8>)
{
  v6 = a3;
  v7 = a2;
  v55 = a4;
  v56 = a5;
  v10 = absl::lts_20240722::container_internal::btree_iterator<absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>,std::pair<operations_research::Domain const,int>&,std::pair<operations_research::Domain const,int>*>::operator-(&v55, a2, a3);
  if (!v10)
  {
    *a6 = 0;
LABEL_33:
    a6[1] = v7;
    a6[2] = v6;
    return;
  }

  v11 = *(a1 + 16);
  v12 = v10;
  if (v11 == v10)
  {
    absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>::clear_and_delete(*a1);
    *a1 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>::EmptyNode(void)::empty_node;
    *(a1 + 8) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>::EmptyNode(void)::empty_node;
    *(a1 + 16) = 0;
    *a6 = v12;
    a6[1] = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>::EmptyNode(void)::empty_node;
    *(a6 + 4) = 0;
    return;
  }

  v52 = v10;
  v53 = a6;
  if (v55 != v7)
  {
    v13 = v11 - v10;
    if (v11 >= v10)
    {
      v54 = v11 - v10;
      do
      {
        while (!v7[11])
        {
          v7 = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>::erase(a1, v7, v6);
          v6 = v6 & 0xFFFFFFFF00000000 | v32;
          v11 = *(a1 + 16);
          if (v11 <= v13)
          {
            goto LABEL_32;
          }
        }

        v15 = v11 - v13;
        v16 = v7[10];
        if ((v16 - v6) >= v15)
        {
          v17 = v15;
        }

        else
        {
          v17 = v16 - v6;
        }

        if (v17)
        {
          v18 = 32 * v17;
          v19 = &v7[32 * v6 + 24];
          do
          {
            if (*(v19 - 1))
            {
              operator delete(*v19);
            }

            v19 += 4;
            v18 -= 32;
          }

          while (v18);
          v16 = v7[10];
        }

        v20 = v17 + v6;
        v21 = (v17 + v6);
        v22 = (v16 - v21);
        if ((v22 & 0x7FFFFFFFFFFFFFFLL) != 0)
        {
          v23 = &v7[32 * v6 + 16];
          v24 = &v7[32 * v21 + 16];
          v25 = v24 + 32 * v22;
          do
          {
            *v23 = 0;
            *v23 = *v24;
            *(v23 + 8) = *(v24 + 8);
            *v24 = 0;
            *(v23 + 24) = *(v24 + 24);
            v24 += 32;
            v23 += 32;
          }

          while (v24 != v25);
        }

        if (!v7[11])
        {
          if (v17)
          {
            v26 = v6 + 1;
            v27 = -v17;
            do
            {
              absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>::clear_and_delete(*&v7[8 * v26++ + 240]);
            }

            while (!__CFADD__(v27++, 1));
          }

          v29 = v20 + 1;
          a6 = v53;
          if (v16 >= (v20 + 1))
          {
            v30 = v7 + 240;
            do
            {
              v31 = *&v30[8 * v29];
              *&v30[8 * (v29 - v17)] = v31;
              *(v31 + 8) = v29++ - v17;
            }

            while (v16 >= v29);
          }
        }

        v7[10] = v16 - v17;
        *(a1 + 16) -= v17;
        v7 = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>::rebalance_after_delete(a1, v7, v6);
        v13 = v54;
        v6 = v6 & 0xFFFFFFFF00000000 | v14;
        v11 = *(a1 + 16);
      }

      while (v11 > v54);
    }

LABEL_32:
    *a6 = v52;
    goto LABEL_33;
  }

  v33 = v56 - v6;
  v34 = &v7[32 * v6];
  v35 = (v56 - v6);
  if (v56 != v6)
  {
    v36 = 32 * v35;
    v37 = (v34 + 24);
    do
    {
      if (*(v37 - 1))
      {
        operator delete(*v37);
      }

      v37 += 4;
      v36 -= 32;
    }

    while (v36);
  }

  v38 = v7[10];
  v39 = v35 + v6;
  v40 = (v35 + v6);
  if (((v38 - v40) & 0x7FFFFFFFFFFFFFFLL) != 0)
  {
    v41 = 0;
    v42 = 32 * v40;
    v43 = 32 * v38 - 32 * v40;
    v44 = &v7[v42];
    do
    {
      v45 = &v34[v41];
      *(v45 + 2) = 0;
      *(v45 + 2) = *&v44[v41 + 16];
      *(v45 + 24) = *&v44[v41 + 24];
      *&v44[v41 + 16] = 0;
      *(v45 + 10) = *&v44[v41 + 40];
      v41 += 32;
    }

    while (v43 != v41);
  }

  if (!v7[11])
  {
    if (v33)
    {
      v46 = v6 + 1;
      do
      {
        absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>::clear_and_delete(*&v7[8 * v46++ + 240]);
        --v35;
      }

      while (v35);
    }

    v47 = v39 + 1;
    if (v38 >= (v39 + 1))
    {
      v48 = v7 + 240;
      do
      {
        v49 = *&v48[8 * v47];
        *&v48[8 * (v47 - v33)] = v49;
        *(v49 + 8) = v47++ - v33;
      }

      while (v38 >= v47);
    }
  }

  v7[10] = v38 - v33;
  *(a1 + 16) -= v52;
  v50 = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>::rebalance_after_delete(a1, v7, v6);
  *v53 = v52;
  v53[1] = v50;
  *(v53 + 4) = v51;
}

uint64_t absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>::equal_range<operations_research::Domain>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, unsigned __int8 **a3@<X8>)
{
  v4 = result;
  v6 = *result;
  v7 = *(*result + 10);
  if (*(*result + 10))
  {
    goto LABEL_4;
  }

  while (!v6[11])
  {
    v6 = *&v6[8 * v7 + 240];
    v7 = v6[10];
    if (v6[10])
    {
LABEL_4:
      v8 = 0;
      do
      {
        v9 = (v7 + v8) >> 1;
        result = operations_research::Domain::operator<(&v6[32 * v9 + 16], a2);
        if (result)
        {
          v8 = v9 + 1;
        }

        else
        {
          v7 = (v7 + v8) >> 1;
        }
      }

      while (v8 != v7);
    }
  }

  while (v7 == v6[10])
  {
    LODWORD(v7) = v6[8];
    v6 = *v6;
    if (v6[11])
    {
      v10 = *(v4 + 8);
      LODWORD(v11) = v10[10];
      goto LABEL_13;
    }
  }

  v10 = *(v4 + 8);
  LODWORD(v11) = v10[10];
  if (v6 == v10 && v7 == v11)
  {
LABEL_13:
    v11 = v11;
    v6 = v10;
LABEL_19:
    *a3 = v6;
    a3[1] = v11;
    a3[2] = v6;
    a3[3] = v11;
    return result;
  }

  result = operations_research::Domain::operator<(a2, &v6[32 * v7 + 16]);
  v11 = v7;
  if (result)
  {
    goto LABEL_19;
  }

  if (v6[11])
  {
    v13 = v7 + 1;
    if (v7 + 1 == v6[10])
    {
      v14 = v6;
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
          v13 = v16;
          goto LABEL_30;
        }
      }
    }

    v15 = v6;
  }

  else
  {
    v17 = &v6[8 * (v7 + 1) + 240];
    do
    {
      v15 = *v17;
      v18 = *(*v17 + 11);
      v17 = *v17 + 240;
    }

    while (!v18);
    v13 = 0;
  }

LABEL_30:
  *a3 = v6;
  a3[1] = v7;
  a3[2] = v15;
  *(a3 + 6) = v13;
  return result;
}

uint64_t absl::lts_20240722::container_internal::btree_iterator<absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>,std::pair<operations_research::Domain const,int>&,std::pair<operations_research::Domain const,int>*>::operator-(uint64_t ***a1, uint64_t *a2, int a3)
{
  v3 = *a1;
  if (*a1 != a2)
  {
    goto LABEL_2;
  }

  v6 = *(a1 + 2);
  if (*(v3 + 11))
  {
    return v6 - a3;
  }

  if (v6 == a3)
  {
    return 0;
  }

LABEL_2:
  v4 = a1[1];
  if (*(a2 + 11))
  {
    v5 = -a3;
  }

  else
  {
    a2 = a2[(a3 + 1) + 30];
    if (*(a2 + 11))
    {
      v5 = 1;
    }

    else
    {
      v5 = 1;
      do
      {
        a2 = a2[30];
      }

      while (!*(a2 + 11));
    }
  }

  v8 = *(a2 + 8);
  v9 = *a2;
  v4 = v4;
  while (1)
  {
    v10 = v9[v8 + 30];
    if (!*(v10 + 11))
    {
      do
      {
        v10 = v10[30];
      }

      while (!*(v10 + 11));
      v8 = *(v10 + 8);
      v9 = *v10;
    }

    if (v10 == v3)
    {
      return v4 + v5;
    }

    v11 = *(v10 + 10);
    if (v9 == v3 && v8 == v4)
    {
      goto LABEL_27;
    }

    if (v8 >= *(v9 + 10))
    {
      while (1)
      {
        v8 = *(v9 + 8);
        v9 = *v9;
        if (v9 == v3 && v4 == v8)
        {
          break;
        }

        if (v8 < *(v9 + 10))
        {
          goto LABEL_13;
        }
      }

LABEL_27:
      v4 = v11;
      return v4 + v5;
    }

LABEL_13:
    v5 += v11 + 1;
    ++v8;
  }
}

unsigned __int8 *absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>::rebalance_after_delete(unsigned __int8 **a1, unsigned __int8 *a2, unint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v19 = a2;
  v20 = a3;
  v6 = *a1;
  if (v6 == a2)
  {
    goto LABEL_8;
  }

  if (a2[10] > 2u)
  {
    goto LABEL_10;
  }

  v7 = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>::try_merge_or_rebalance(a1, &v19);
  v4 = v19;
  v3 = v3 & 0xFFFFFFFF00000000 | v20;
  if (!v7)
  {
    goto LABEL_10;
  }

  LODWORD(v20) = v19[8];
  v8 = *v19;
  v19 = v8;
  v6 = *a1;
  if (v8 == *a1)
  {
LABEL_8:
    if (v6[10])
    {
      if (a1[2])
      {
        goto LABEL_10;
      }
    }

    else if (v6[11])
    {
      a1[1] = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>::EmptyNode(void)::empty_node;
      *a1 = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>::EmptyNode(void)::empty_node;
      absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>::clear_and_delete(v6);
      if (a1[2])
      {
        goto LABEL_10;
      }
    }

    else
    {
      v18 = *(v6 + 30);
      *v18 = **v18;
      *a1 = v18;
      absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>::clear_and_delete(v6);
      if (a1[2])
      {
        goto LABEL_10;
      }
    }

    result = a1[1];
    v15 = result[10];
    return result;
  }

  while (v8[10] <= 2u && absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>::try_merge_or_rebalance(a1, &v19))
  {
    LODWORD(v20) = v19[8];
    v8 = *v19;
    v19 = v8;
    v6 = *a1;
    if (v8 == *a1)
    {
      goto LABEL_8;
    }
  }

LABEL_10:
  v9 = v4[10];
  if (v3 != v9)
  {
    return v4;
  }

  v10 = v3 & 0xFFFFFFFF00000000;
  if (v4[11])
  {
    v11 = v10 | v9;
    v12 = v4;
    while (1)
    {
      result = *v12;
      if (*(*v12 + 11))
      {
        break;
      }

      v14 = v12[8];
      v11 = v11 & 0xFFFFFFFF00000000 | v14;
      v12 = *v12;
      if (v14 != result[10])
      {
        return result;
      }
    }

    return v4;
  }

  v16 = &v4[8 * v9 + 240];
  do
  {
    result = *v16;
    v17 = *(*v16 + 11);
    v16 = *v16 + 240;
  }

  while (!v17);
  return result;
}

unsigned __int8 *absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>::erase(uint64_t a1, unsigned __int8 *i, unint64_t a3)
{
  v3 = a3;
  v4 = i + 16;
  v5 = &i[32 * a3 + 16];
  if (*v5)
  {
    v6 = a1;
    v7 = a3;
    v8 = i;
    operator delete(*(v5 + 8));
    i = v8;
    a1 = v6;
    a3 = v7;
  }

  v9 = i[11];
  if (i[11])
  {
    v10 = i[10];
    if (v10 != (a3 + 1))
    {
      v11 = (v10 - (a3 + 1));
      v12 = 32 * a3;
      v13 = 32 * v11;
      v14 = 32 * (a3 + 1);
      do
      {
        v15 = &i[v12];
        *(v15 + 2) = 0;
        *(v15 + 2) = *&i[v14 + 16];
        *(v15 + 24) = *&i[v14 + 24];
        *&i[v14 + 16] = 0;
        *(v15 + 10) = *&i[v14 + 40];
        v12 += 32;
        v14 += 32;
        v13 -= 32;
      }

      while (v13);
    }
  }

  else
  {
      ;
    }

    v16 = a3 << 32;
    a3 = a3 & 0xFFFFFFFF00000000 | (i[10] - 1);
    v17 = &v4[v16 >> 27];
    v18 = &i[(i[10] + 0xFFFFFFFFLL) << 32 >> 27];
    *v17 = 0;
    *v17 = *(v18 + 2);
    *(v17 + 8) = *(v18 + 24);
    *(v18 + 2) = 0;
    *(v17 + 6) = *(v18 + 10);
  }

  --i[10];
  --*(a1 + 16);
  result = absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>::rebalance_after_delete(a1, i, a3);
  if (!v9)
  {
    if (result[11])
    {
      if (v20 + 1 == result[10])
      {
        v21 = result;
        while (1)
        {
          v22 = *v21;
          if (*(*v21 + 11))
          {
            break;
          }

          v23 = v21[8];
          v21 = *v21;
          if (v23 != *(v22 + 10))
          {
            return v22;
          }
        }
      }
    }

    else
    {
      v24 = &result[8 * (v20 + 1) + 240];
      do
      {
        v22 = *v24;
        v25 = *(*v24 + 11);
        v24 = *v24 + 240;
      }

      while (!v25);
      return v22;
    }
  }

  return result;
}

uint64_t absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>::try_merge_or_rebalance(uint64_t a1, _DWORD *a2)
{
  v4 = *a2;
  v5 = **a2;
  v6 = *(*a2 + 8);
  if (*(*a2 + 8) && (v7 = *(v5 + 8 * (v6 - 1) + 240), v8 = *(v7 + 10) + 1, v8 + *(v4 + 10) <= 7))
  {
    a2[2] += v8;
    absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>::merge(v7, v4);
    if (*(a1 + 8) == v4)
    {
      *(a1 + 8) = v7;
    }

    *a2 = v7;
    return 1;
  }

  else
  {
    if (v6 >= *(v5 + 10))
    {
      goto LABEL_21;
    }

    v9 = *(v5 + 8 * (v6 + 1) + 240);
    v10 = *(v4 + 10);
    v11 = *(v9 + 10);
    if (v10 + v11 + 1 <= 7)
    {
      absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>::merge(*a2, *(v5 + 8 * (v6 + 1) + 240));
      if (*(a1 + 8) == v9)
      {
        *(a1 + 8) = v4;
      }

      return 1;
    }

    if (v11 < 4 || *(v4 + 10) && a2[2] < 1)
    {
LABEL_21:
      if (!*(*a2 + 8))
      {
        return 0;
      }

      v14 = *(v5 + 8 * (v6 - 1) + 240);
      v15 = *(v14 + 10);
      if (v15 < 4)
      {
        return 0;
      }

      v16 = *(v4 + 10);
      if (*(v4 + 10) && a2[2] >= v16)
      {
        return 0;
      }

      else
      {
        v17 = ((v15 - v16 + (((v15 - v16) & 0x8000) >> 15)) >> 1);
        v18 = (v15 - 1);
        if (v18 >= v17)
        {
          v19 = v17;
        }

        else
        {
          v19 = v18;
        }

        absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>::rebalance_left_to_right(v14, v19, v4);
        result = 0;
        a2[2] += v19;
      }
    }

    else
    {
      if ((v11 - 1) >= ((v11 - v10 + (((v11 - v10) & 0x8000) >> 15)) >> 1))
      {
        v13 = ((v11 - v10 + (((v11 - v10) & 0x8000) >> 15)) >> 1);
      }

      else
      {
        v13 = (v11 - 1);
      }

      absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>::rebalance_right_to_left(v4, v13, v9);
      return 0;
    }
  }

  return result;
}

void absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>::merge(uint64_t *a1, uint64_t a2)
{
  v2 = *a1 + 32 * *(a1 + 8);
  v3 = &a1[4 * *(a1 + 10)];
  v3[2] = 0;
  v3[2] = *(v2 + 16);
  *(v3 + 3) = *(v2 + 24);
  *(v2 + 16) = 0;
  *(v3 + 10) = *(v2 + 40);
  if (*(a2 + 10))
  {
    v4 = a2 + 16;
    v5 = a2 + 16 + 32 * *(a2 + 10);
    v6 = &a1[4 * *(a1 + 10) + 6];
    do
    {
      *v6 = 0;
      *v6 = *v4;
      *(v6 + 8) = *(v4 + 8);
      *v4 = 0;
      *(v6 + 24) = *(v4 + 24);
      v4 += 32;
      v6 += 32;
    }

    while (v4 != v5);
  }

  v7 = *(a1 + 11);
  if (*(a1 + 11))
  {
    LOBYTE(v8) = *(a2 + 10);
  }

  else
  {
    v9 = *(a1 + 10);
    do
    {
      ++v9;
      v10 = *(a2 + 240 + 8 * v7);
      a1[v9 + 30] = v10;
      *(v10 + 8) = v9;
      *v10 = a1;
      ++v7;
      v8 = *(a2 + 10);
    }

    while (v8 >= v7);
  }

  *(a1 + 10) += v8 + 1;
  *(a2 + 10) = 0;
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *a1 + 32 * v12;
  if (*(v13 + 16))
  {
    operator delete(*(v13 + 24));
  }

  v14 = *(v11 + 10);
  v15 = v12 + 1;
  v16 = (v12 + 1);
  if (((v14 - v16) & 0x7FFFFFFFFFFFFFFLL) != 0)
  {
    v17 = 0;
    v18 = 32 * v16;
    v19 = 32 * v14 - 32 * v16;
    v20 = v11 + v18;
    do
    {
      v21 = v13 + v17;
      *(v21 + 16) = 0;
      *(v21 + 16) = *(v20 + v17 + 16);
      *(v21 + 24) = *(v20 + v17 + 24);
      *(v20 + v17 + 16) = 0;
      *(v21 + 40) = *(v20 + v17 + 40);
      v17 += 32;
    }

    while (v19 != v17);
  }

  if (!*(v11 + 11))
  {
    v22 = v12 + 1;
    v23 = v11 + 240;
    absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<operations_research::Domain,int,std::less<operations_research::Domain>,std::allocator<std::pair<operations_research::Domain const,int>>,256,false>>::clear_and_delete(*(v11 + 240 + 8 * v22));
    v24 = v15 + 1;
    if (v14 >= (v15 + 1))
    {
      do
      {
        v25 = *(v23 + 8 * v24);
        *(v23 + 8 * (v24 - 1)) = v25;
        *(v25 + 8) = v24++ - 1;
      }

      while (v14 >= v24);
    }
  }

  *(v11 + 10) = v14 - 1;
}

std::string *absl::lts_20240722::strings_internal::JoinAlgorithm<absl::lts_20240722::container_internal::btree_iterator<absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::set_params<long long,std::less<long long>,std::allocator<long long>,256,false>> const,long long const&,long long const*>,absl::lts_20240722::strings_internal::AlphaNumFormatterImpl>@<X0>(std::string *result@<X0>, int a2@<W1>, std::string *a3@<X2>, int a4@<W3>, const std::string::value_type *a5@<X4>, std::string::size_type a6@<X5>, std::string *a7@<X8>)
{
  v11 = a2;
  v12 = result;
  v26 = *MEMORY[0x277D85DE8];
  a7->__r_.__value_.__r.__words[0] = 0;
  a7->__r_.__value_.__l.__size_ = 0;
  a7->__r_.__value_.__r.__words[2] = 0;
  if (result != a3 || a2 != a4)
  {
    v14 = 0;
    v15 = &byte_23CE7F131;
    while (1)
    {
      std::string::append(a7, v15, v14);
      v17 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v12->__r_.__value_.__r.__words[v11 + 2], v25, v16);
      v24[0] = v25;
      v24[1] = v17 - v25;
      result = absl::lts_20240722::StrAppend(a7, v24);
      if (v12->__r_.__value_.__s.__data_[11])
      {
        if (++v11 == v12->__r_.__value_.__s.__data_[10])
        {
          v18 = v12;
          while (1)
          {
            v19 = *v18;
            if (*(*v18 + 11))
            {
              break;
            }

            v20 = v18[8];
            v18 = *v18;
            if (v20 != v19->__r_.__value_.__s.__data_[10])
            {
              v11 = v20;
              v12 = v19;
              break;
            }
          }
        }
      }

      else
      {
        v21 = &v12[10].__r_.__value_.__r.__words[(v11 + 1) + 2];
        do
        {
          v12 = *v21;
          v22 = *(*v21 + 11);
          v21 = *v21 + 256;
        }

        while (!v22);
        v11 = 0;
      }

      v15 = a5;
      v14 = a6;
      if (v12 == a3)
      {
        v15 = a5;
        v14 = a6;
        if (v11 == a4)
        {
          break;
        }
      }
    }
  }

  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CB20D9C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,false>(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = a2 - v9;
    v13 = 0xAAAAAAAAAAAAAAABLL * (a2 - v9);
    v14 = v13 - 2;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return;
      }

      if (v13 == 2)
      {
        v35 = *(a2 - 3);
        v34 = a2 - 3;
        v33 = v35;
        v36 = *(v9 + 23);
        v37 = *(v34 + 23);
        if (v37 >= 0)
        {
          v38 = *(v34 + 23);
        }

        else
        {
          v38 = v34[1];
        }

        if (v37 >= 0)
        {
          v39 = v34;
        }

        else
        {
          v39 = v33;
        }

        if (v36 >= 0)
        {
          v40 = *(v9 + 23);
        }

        else
        {
          v40 = v9[1];
        }

        if (v36 >= 0)
        {
          v41 = v9;
        }

        else
        {
          v41 = *v9;
        }

        if (v40 >= v38)
        {
          v42 = v38;
        }

        else
        {
          v42 = v40;
        }

        v43 = memcmp(v39, v41, v42);
        v44 = v38 < v40;
        if (v43)
        {
          v44 = v43 < 0;
        }

        if (v44)
        {
          v51 = v9[2];
          v49 = *v9;
          v45 = *v34;
          v9[2] = v34[2];
          *v9 = v45;
          *v34 = v49;
          v34[2] = v51;
        }

        return;
      }

      goto LABEL_10;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(v9, (v9 + 3), v9 + 3, a2 - 3);
      return;
    }

    if (v13 == 5)
    {

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(v9, (v9 + 3), (v9 + 6), (v9 + 9), a2 - 3);
      return;
    }

LABEL_10:
    if (v12 <= 575)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(v9, a2);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(v9, a2);
      }

      return;
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {
        v46 = (v14 >> 1) + 1;
        v47 = &v9[3 * (v14 >> 1)];
        do
        {
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(v9, a3, 0xAAAAAAAAAAAAAAABLL * (a2 - v9), v47);
          v47 = (v47 - 24);
          --v46;
        }

        while (v46);

        std::__sort_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(v9, a2, a3);
      }

      return;
    }

    v15 = v13 >> 1;
    v16 = &v9[3 * (v13 >> 1)];
    if (v12 < 0xC01)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(v16, v9, a2 - 3);
      if (a5)
      {
        goto LABEL_34;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(v9, v16, a2 - 3);
      v17 = v9 + 3;
      v18 = 3 * v15;
      v19 = (24 * v15 + a1 - 24);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>((a1 + 24), v19, a2 - 6);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>((a1 + 48), &v17[v18], a2 - 9);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(v19, v16, &v17[v18]);
      v50 = *(a1 + 16);
      v48 = *a1;
      v20 = *v16;
      *(a1 + 16) = v16[2];
      *a1 = v20;
      v16[2] = v50;
      *v16 = v48;
      if (a5)
      {
        goto LABEL_34;
      }
    }

    v21 = *(a1 + 23);
    v22 = *(a1 - 1);
    if (v22 >= 0)
    {
      v23 = *(a1 - 1);
    }

    else
    {
      v23 = *(a1 - 16);
    }

    if (v22 >= 0)
    {
      v24 = (a1 - 24);
    }

    else
    {
      v24 = *(a1 - 24);
    }

    if (v21 >= 0)
    {
      v25 = *(a1 + 23);
    }

    else
    {
      v25 = *(a1 + 8);
    }

    if (v21 >= 0)
    {
      v26 = a1;
    }

    else
    {
      v26 = *a1;
    }

    if (v25 >= v23)
    {
      v27 = v23;
    }

    else
    {
      v27 = v25;
    }

    v28 = memcmp(v24, v26, v27);
    v29 = v23 < v25;
    if (v28)
    {
      v29 = v28 < 0;
    }

    if (!v29)
    {
      v9 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::string *,std::__less<void,void> &>(a1, a2);
      goto LABEL_39;
    }

LABEL_34:
    v30 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::string *,std::__less<void,void> &>(a1, a2);
    if ((v31 & 1) == 0)
    {
      goto LABEL_37;
    }

    v32 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(a1, v30);
    v9 = v30 + 3;
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>((v30 + 3), a2))
    {
      a4 = -v11;
      a2 = v30;
      if (v32)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if ((v32 & 1) == 0)
    {
LABEL_37:
      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,false>(a1, v30, a3, -v11, a5 & 1);
      v9 = v30 + 3;
LABEL_39:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(v9, v9 + 3, a2 - 3);
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(const void **a1, const void **a2, const void **a3)
{
  v6 = *(a1 + 23);
  v7 = *(a2 + 23);
  if (v7 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = a2[1];
  }

  if (v7 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v6 >= 0)
  {
    v10 = *(a1 + 23);
  }

  else
  {
    v10 = a1[1];
  }

  if (v6 >= 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = *a1;
  }

  if (v10 >= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  v13 = memcmp(v9, v11, v12);
  if (v13)
  {
    v14 = v13 < 0;
  }

  else
  {
    v14 = v8 < v10;
  }

  v15 = *(a3 + 23);
  if (v15 >= 0)
  {
    v16 = *(a3 + 23);
  }

  else
  {
    v16 = a3[1];
  }

  if (v15 >= 0)
  {
    v17 = a3;
  }

  else
  {
    v17 = *a3;
  }

  if (v8 >= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v8;
  }

  v19 = memcmp(v17, v9, v18);
  v20 = v16 < v8;
  if (v19)
  {
    v20 = v19 < 0;
  }

  if (v14)
  {
    if (v20)
    {
      v21 = a1[2];
      v22 = *a1;
      v23 = a3[2];
      *a1 = *a3;
      a1[2] = v23;
    }

    else
    {
      v39 = a1[2];
      v40 = *a1;
      v41 = a2[2];
      *a1 = *a2;
      a1[2] = v41;
      *a2 = v40;
      a2[2] = v39;
      v42 = HIBYTE(v39);
      v43 = *(a3 + 23);
      if (v43 >= 0)
      {
        v44 = *(a3 + 23);
      }

      else
      {
        v44 = a3[1];
      }

      if (v43 >= 0)
      {
        v45 = a3;
      }

      else
      {
        v45 = *a3;
      }

      if ((v42 & 0x80u) == 0)
      {
        v46 = v42;
      }

      else
      {
        v46 = a2[1];
      }

      if ((v42 & 0x80u) == 0)
      {
        v47 = a2;
      }

      else
      {
        v47 = *a2;
      }

      if (v46 >= v44)
      {
        v48 = v44;
      }

      else
      {
        v48 = v46;
      }

      v49 = memcmp(v45, v47, v48);
      v50 = v44 < v46;
      if (v49)
      {
        v50 = v49 < 0;
      }

      if (!v50)
      {
        return 1;
      }

      v21 = a2[2];
      v22 = *a2;
      v51 = a3[2];
      *a2 = *a3;
      a2[2] = v51;
    }

    *a3 = v22;
    a3[2] = v21;
    return 1;
  }

  if (v20)
  {
    v24 = a2[2];
    v25 = *a2;
    v26 = a3[2];
    *a2 = *a3;
    a2[2] = v26;
    *a3 = v25;
    a3[2] = v24;
    v27 = *(a1 + 23);
    v28 = *(a2 + 23);
    if (v28 >= 0)
    {
      v29 = *(a2 + 23);
    }

    else
    {
      v29 = a2[1];
    }

    if (v28 >= 0)
    {
      v30 = a2;
    }

    else
    {
      v30 = *a2;
    }

    if (v27 >= 0)
    {
      v31 = *(a1 + 23);
    }

    else
    {
      v31 = a1[1];
    }

    if (v27 >= 0)
    {
      v32 = a1;
    }

    else
    {
      v32 = *a1;
    }

    if (v31 >= v29)
    {
      v33 = v29;
    }

    else
    {
      v33 = v31;
    }

    v34 = memcmp(v30, v32, v33);
    v35 = v29 < v31;
    if (v34)
    {
      v35 = v34 < 0;
    }

    if (v35)
    {
      v36 = a1[2];
      v37 = *a1;
      v38 = a2[2];
      *a1 = *a2;
      a1[2] = v38;
      *a2 = v37;
      a2[2] = v36;
    }

    return 1;
  }

  return 0;
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(uint64_t a1, __int128 *a2, __int128 *a3, const void **a4)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(a1, a2, a3);
  v8 = *(a3 + 23);
  v9 = *(a4 + 23);
  if (v9 >= 0)
  {
    v10 = *(a4 + 23);
  }

  else
  {
    v10 = a4[1];
  }

  if (v9 >= 0)
  {
    v11 = a4;
  }

  else
  {
    v11 = *a4;
  }

  if (v8 >= 0)
  {
    v12 = *(a3 + 23);
  }

  else
  {
    v12 = *(a3 + 1);
  }

  if (v8 >= 0)
  {
    v13 = a3;
  }

  else
  {
    v13 = *a3;
  }

  if (v12 >= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = v12;
  }

  v15 = memcmp(v11, v13, v14);
  v17 = v10 < v12;
  if (v15)
  {
    v17 = v15 < 0;
  }

  if (v17)
  {
    v18 = *(a3 + 2);
    v19 = *a3;
    v20 = a4[2];
    *a3 = *a4;
    *(a3 + 2) = v20;
    *a4 = v19;
    a4[2] = v18;
    v21 = *(a2 + 23);
    v22 = *(a3 + 23);
    if (v22 >= 0)
    {
      v23 = *(a3 + 23);
    }

    else
    {
      v23 = *(a3 + 1);
    }

    if (v22 >= 0)
    {
      v24 = a3;
    }

    else
    {
      v24 = *a3;
    }

    if (v21 >= 0)
    {
      v25 = *(a2 + 23);
    }

    else
    {
      v25 = *(a2 + 1);
    }

    if (v21 >= 0)
    {
      v26 = a2;
    }

    else
    {
      v26 = *a2;
    }

    if (v25 >= v23)
    {
      v27 = v23;
    }

    else
    {
      v27 = v25;
    }

    v28 = memcmp(v24, v26, v27);
    v29 = v23 < v25;
    if (v28)
    {
      v29 = v28 < 0;
    }

    if (v29)
    {
      v30 = *(a2 + 2);
      v31 = *a2;
      v32 = *(a3 + 2);
      *a2 = *a3;
      *(a2 + 2) = v32;
      *a3 = v31;
      *(a3 + 2) = v30;
      v33 = *(a1 + 23);
      v34 = *(a2 + 23);
      if (v34 >= 0)
      {
        v35 = *(a2 + 23);
      }

      else
      {
        v35 = *(a2 + 1);
      }

      if (v34 >= 0)
      {
        v36 = a2;
      }

      else
      {
        v36 = *a2;
      }

      if (v33 >= 0)
      {
        v37 = *(a1 + 23);
      }

      else
      {
        v37 = *(a1 + 8);
      }

      if (v33 >= 0)
      {
        v38 = a1;
      }

      else
      {
        v38 = *a1;
      }

      if (v37 >= v35)
      {
        v39 = v35;
      }

      else
      {
        v39 = v37;
      }

      v40 = memcmp(v36, v38, v39);
      v41 = v35 < v37;
      if (v40)
      {
        v41 = v40 < 0;
      }

      if (v41)
      {
        v42 = *(a1 + 16);
        result = *a1;
        v43 = *(a2 + 2);
        *a1 = *a2;
        *(a1 + 16) = v43;
        *a2 = result;
        *(a2 + 2) = v42;
      }
    }
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, const void **a5)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(a1, a2, a3, a4);
  v10 = *(a4 + 23);
  v11 = *(a5 + 23);
  if (v11 >= 0)
  {
    v12 = *(a5 + 23);
  }

  else
  {
    v12 = a5[1];
  }

  if (v11 >= 0)
  {
    v13 = a5;
  }

  else
  {
    v13 = *a5;
  }

  if (v10 >= 0)
  {
    v14 = *(a4 + 23);
  }

  else
  {
    v14 = *(a4 + 1);
  }

  if (v10 >= 0)
  {
    v15 = a4;
  }

  else
  {
    v15 = *a4;
  }

  if (v14 >= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v14;
  }

  v17 = memcmp(v13, v15, v16);
  v19 = v12 < v14;
  if (v17)
  {
    v19 = v17 < 0;
  }

  if (v19)
  {
    v20 = *(a4 + 2);
    v21 = *a4;
    v22 = a5[2];
    *a4 = *a5;
    *(a4 + 2) = v22;
    *a5 = v21;
    a5[2] = v20;
    v23 = *(a3 + 23);
    v24 = *(a4 + 23);
    if (v24 >= 0)
    {
      v25 = *(a4 + 23);
    }

    else
    {
      v25 = *(a4 + 1);
    }

    if (v24 >= 0)
    {
      v26 = a4;
    }

    else
    {
      v26 = *a4;
    }

    if (v23 >= 0)
    {
      v27 = *(a3 + 23);
    }

    else
    {
      v27 = *(a3 + 8);
    }

    if (v23 >= 0)
    {
      v28 = a3;
    }

    else
    {
      v28 = *a3;
    }

    if (v27 >= v25)
    {
      v29 = v25;
    }

    else
    {
      v29 = v27;
    }

    v30 = memcmp(v26, v28, v29);
    v31 = v25 < v27;
    if (v30)
    {
      v31 = v30 < 0;
    }

    if (v31)
    {
      v32 = *(a3 + 16);
      v33 = *a3;
      v34 = *(a4 + 2);
      *a3 = *a4;
      *(a3 + 16) = v34;
      *a4 = v33;
      *(a4 + 2) = v32;
      v35 = *(a2 + 23);
      v36 = *(a3 + 23);
      if (v36 >= 0)
      {
        v37 = *(a3 + 23);
      }

      else
      {
        v37 = *(a3 + 8);
      }

      if (v36 >= 0)
      {
        v38 = a3;
      }

      else
      {
        v38 = *a3;
      }

      if (v35 >= 0)
      {
        v39 = *(a2 + 23);
      }

      else
      {
        v39 = *(a2 + 8);
      }

      if (v35 >= 0)
      {
        v40 = a2;
      }

      else
      {
        v40 = *a2;
      }

      if (v39 >= v37)
      {
        v41 = v37;
      }

      else
      {
        v41 = v39;
      }

      v42 = memcmp(v38, v40, v41);
      v43 = v37 < v39;
      if (v42)
      {
        v43 = v42 < 0;
      }

      if (v43)
      {
        v44 = *(a2 + 16);
        v45 = *a2;
        v46 = *(a3 + 16);
        *a2 = *a3;
        *(a2 + 16) = v46;
        *a3 = v45;
        *(a3 + 16) = v44;
        v47 = *(a1 + 23);
        v48 = *(a2 + 23);
        if (v48 >= 0)
        {
          v49 = *(a2 + 23);
        }

        else
        {
          v49 = *(a2 + 8);
        }

        if (v48 >= 0)
        {
          v50 = a2;
        }

        else
        {
          v50 = *a2;
        }

        if (v47 >= 0)
        {
          v51 = *(a1 + 23);
        }

        else
        {
          v51 = *(a1 + 8);
        }

        if (v47 >= 0)
        {
          v52 = a1;
        }

        else
        {
          v52 = *a1;
        }

        if (v51 >= v49)
        {
          v53 = v49;
        }

        else
        {
          v53 = v51;
        }

        v54 = memcmp(v50, v52, v53);
        v55 = v49 < v51;
        if (v54)
        {
          v55 = v54 < 0;
        }

        if (v55)
        {
          v56 = *(a1 + 16);
          result = *a1;
          v57 = *(a2 + 16);
          *a1 = *a2;
          *(a1 + 16) = v57;
          *a2 = result;
          *(a2 + 16) = v56;
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(uint64_t result, const void **a2)
{
  if (result != a2)
  {
    v35 = v2;
    v36 = v3;
    v5 = result;
    v6 = (result + 24);
    if ((result + 24) != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v10 = v8;
        v8 = v6;
        v11 = *(v10 + 23);
        v12 = *(v10 + 47);
        if (v12 >= 0)
        {
          v13 = *(v10 + 47);
        }

        else
        {
          v13 = v10[4];
        }

        if (v12 >= 0)
        {
          v14 = v6;
        }

        else
        {
          v14 = v10[3];
        }

        if (v11 >= 0)
        {
          v15 = *(v10 + 23);
        }

        else
        {
          v15 = v10[1];
        }

        if (v11 >= 0)
        {
          v16 = v10;
        }

        else
        {
          v16 = *v10;
        }

        if (v15 >= v13)
        {
          v17 = v13;
        }

        else
        {
          v17 = v15;
        }

        result = memcmp(v14, v16, v17);
        v18 = v13 < v15;
        if (result)
        {
          v18 = result < 0;
        }

        if (v18)
        {
          v34 = v8[2];
          v19 = v34;
          v33 = *v8;
          v8[1] = 0;
          v8[2] = 0;
          *v8 = 0;
          v20 = HIBYTE(v19);
          if ((v20 & 0x80u) == 0)
          {
            v21 = v20;
          }

          else
          {
            v21 = *(&v33 + 1);
          }

          if ((v20 & 0x80u) == 0)
          {
            v22 = &v33;
          }

          else
          {
            v22 = v33;
          }

          v23 = v7;
          do
          {
            v24 = v5 + v23;
            *(v24 + 24) = *(v5 + v23);
            *(v24 + 40) = *(v5 + v23 + 16);
            *(v24 + 23) = 0;
            *v24 = 0;
            if (!v23)
            {
              v9 = v5;
              goto LABEL_5;
            }

            v27 = *(v24 - 24);
            v25 = v24 - 24;
            v26 = v27;
            v28 = *(v25 + 23);
            if (v28 >= 0)
            {
              v29 = *(v25 + 23);
            }

            else
            {
              v29 = *(v25 + 8);
            }

            if (v28 >= 0)
            {
              v30 = v25;
            }

            else
            {
              v30 = v26;
            }

            if (v29 >= v21)
            {
              v31 = v21;
            }

            else
            {
              v31 = v29;
            }

            result = memcmp(v22, v30, v31);
            v32 = v21 < v29;
            if (result)
            {
              v32 = result < 0;
            }

            v23 -= 24;
          }

          while (v32);
          v9 = v5 + v23 + 24;
LABEL_5:
          *v9 = v33;
          *(v9 + 16) = v34;
        }

        v6 = v8 + 3;
        v7 += 24;
      }

      while (v8 + 3 != a2);
    }
  }

  return result;
}

const void **std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(const void **result, const void **a2)
{
  if (result != a2)
  {
    v32 = v2;
    v33 = v3;
    v5 = result;
    for (i = result + 3; v5 + 3 != a2; i = v5 + 3)
    {
      v7 = v5;
      v5 = i;
      v8 = *(v7 + 23);
      v9 = *(v7 + 47);
      if (v9 >= 0)
      {
        v10 = *(v7 + 47);
      }

      else
      {
        v10 = v7[4];
      }

      if (v9 >= 0)
      {
        v11 = i;
      }

      else
      {
        v11 = v7[3];
      }

      if (v8 >= 0)
      {
        v12 = *(v7 + 23);
      }

      else
      {
        v12 = v7[1];
      }

      if (v8 >= 0)
      {
        v13 = v7;
      }

      else
      {
        v13 = *v7;
      }

      if (v12 >= v10)
      {
        v14 = v10;
      }

      else
      {
        v14 = v12;
      }

      result = memcmp(v11, v13, v14);
      v15 = v10 < v12;
      if (result)
      {
        v15 = result < 0;
      }

      if (v15)
      {
        v31 = v5[2];
        v16 = v31;
        v30 = *v5;
        v5[1] = 0;
        v5[2] = 0;
        *v5 = 0;
        v17 = HIBYTE(v16);
        if ((v17 & 0x80u) == 0)
        {
          v18 = v17;
        }

        else
        {
          v18 = *(&v30 + 1);
        }

        if ((v17 & 0x80u) == 0)
        {
          v19 = &v30;
        }

        else
        {
          v19 = v30;
        }

        v20 = v5;
        do
        {
          v21 = v20 - 3;
          *v20 = *(v20 - 3);
          v20[2] = *(v20 - 1);
          *(v20 - 1) = 0;
          *(v20 - 24) = 0;
          v22 = *(v20 - 25);
          v23 = v20 - 6;
          v24 = *(v20 - 6);
          v25 = *(v20 - 5);
          if ((v22 & 0x80u) == 0)
          {
            v26 = v22;
          }

          else
          {
            v26 = v25;
          }

          if ((v22 & 0x80u) == 0)
          {
            v27 = v23;
          }

          else
          {
            v27 = v24;
          }

          if (v26 >= v18)
          {
            v28 = v18;
          }

          else
          {
            v28 = v26;
          }

          result = memcmp(v19, v27, v28);
          v29 = result < 0;
          if (!result)
          {
            v29 = v18 < v26;
          }

          v20 = v21;
        }

        while (v29);
        *v21 = v30;
        v21[2] = v31;
      }
    }
  }

  return result;
}

const void **std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::string *,std::__less<void,void> &>(const void **a1, const void **a2)
{
  v2 = a2;
  v58 = a1[2];
  v57 = *a1;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v4 = *(a2 - 1);
  if (SHIBYTE(v58) >= 0)
  {
    v5 = HIBYTE(v58);
  }

  else
  {
    v5 = *(&v57 + 1);
  }

  if (SHIBYTE(v58) >= 0)
  {
    v6 = &v57;
  }

  else
  {
    v6 = v57;
  }

  if (v4 >= 0)
  {
    v7 = *(a2 - 1);
  }

  else
  {
    v7 = *(a2 - 2);
  }

  if (v4 >= 0)
  {
    v8 = a2 - 3;
  }

  else
  {
    v8 = *(a2 - 3);
  }

  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v6, v8, v9);
  v11 = v5 < v7;
  if (v10)
  {
    v11 = v10 < 0;
  }

  if (v11)
  {
    v12 = a1 + 3;
    do
    {
      v13 = *(v12 + 23);
      if (v13 >= 0)
      {
        v14 = *(v12 + 23);
      }

      else
      {
        v14 = v12[1];
      }

      if (v13 >= 0)
      {
        v15 = v12;
      }

      else
      {
        v15 = *v12;
      }

      if (v14 >= v5)
      {
        v16 = v5;
      }

      else
      {
        v16 = v14;
      }

      v17 = memcmp(v6, v15, v16);
      v18 = v5 < v14;
      if (v17)
      {
        v18 = v17 < 0;
      }

      v12 += 3;
    }

    while (!v18);
    v19 = v12 - 3;
  }

  else
  {
    v20 = a1 + 3;
    do
    {
      v19 = v20;
      if (v20 >= v2)
      {
        break;
      }

      v21 = *(v20 + 23);
      if (v21 >= 0)
      {
        v22 = *(v20 + 23);
      }

      else
      {
        v22 = v20[1];
      }

      if (v21 >= 0)
      {
        v23 = v20;
      }

      else
      {
        v23 = *v20;
      }

      if (v22 >= v5)
      {
        v24 = v5;
      }

      else
      {
        v24 = v22;
      }

      v25 = memcmp(v6, v23, v24);
      v26 = v25 < 0;
      if (!v25)
      {
        v26 = v5 < v22;
      }

      v20 = v19 + 3;
    }

    while (!v26);
  }

  if (v19 < v2)
  {
    v27 = v2 - 3;
    do
    {
      v28 = *(v27 + 23);
      if (v28 >= 0)
      {
        v29 = *(v27 + 23);
      }

      else
      {
        v29 = v27[1];
      }

      if (v28 >= 0)
      {
        v30 = v27;
      }

      else
      {
        v30 = *v27;
      }

      if (v29 >= v5)
      {
        v31 = v5;
      }

      else
      {
        v31 = v29;
      }

      v32 = memcmp(v6, v30, v31);
      v33 = v5 < v29;
      if (v32)
      {
        v33 = v32 < 0;
      }

      v27 -= 3;
    }

    while (v33);
    v2 = v27 + 3;
  }

  for (; v19 < v2; v2 = v46 + 3)
  {
    v34 = *v19;
    v60 = v19[2];
    v59 = v34;
    v35 = *v2;
    v19[2] = v2[2];
    *v19 = v35;
    v36 = v19 + 3;
    v37 = v59;
    v2[2] = v60;
    *v2 = v37;
    if (SHIBYTE(v58) >= 0)
    {
      v38 = HIBYTE(v58);
    }

    else
    {
      v38 = *(&v57 + 1);
    }

    if (SHIBYTE(v58) >= 0)
    {
      v39 = &v57;
    }

    else
    {
      v39 = v57;
    }

    do
    {
      v40 = *(v36 + 23);
      if (v40 >= 0)
      {
        v41 = *(v36 + 23);
      }

      else
      {
        v41 = v36[1];
      }

      if (v40 >= 0)
      {
        v42 = v36;
      }

      else
      {
        v42 = *v36;
      }

      if (v41 >= v38)
      {
        v43 = v38;
      }

      else
      {
        v43 = v41;
      }

      v44 = memcmp(v39, v42, v43);
      v45 = v38 < v41;
      if (v44)
      {
        v45 = v44 < 0;
      }

      v36 += 3;
    }

    while (!v45);
    v19 = v36 - 3;
    v46 = v2 - 3;
    do
    {
      v47 = *(v46 + 23);
      if (v47 >= 0)
      {
        v48 = *(v46 + 23);
      }

      else
      {
        v48 = v46[1];
      }

      if (v47 >= 0)
      {
        v49 = v46;
      }

      else
      {
        v49 = *v46;
      }

      if (v48 >= v38)
      {
        v50 = v38;
      }

      else
      {
        v50 = v48;
      }

      v51 = memcmp(v39, v49, v50);
      v52 = v38 < v48;
      if (v51)
      {
        v52 = v51 < 0;
      }

      v46 -= 3;
    }

    while (v52);
  }

  v53 = (v19 - 3);
  if (v19 - 3 == a1)
  {
    if (*(v19 - 1) < 0)
    {
      operator delete(*v53);
    }
  }

  else
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v54 = *v53;
    a1[2] = *(v19 - 1);
    *a1 = v54;
    *(v19 - 1) = 0;
    *(v19 - 24) = 0;
  }

  v55 = v57;
  *(v19 - 1) = v58;
  *v53 = v55;
  return v19;
}

unint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::string *,std::__less<void,void> &>(__int128 *a1, uint64_t a2)
{
  v4 = 0;
  v57 = *(a1 + 2);
  v5 = v57;
  v56 = *a1;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = 0;
  v6 = HIBYTE(v5);
  if ((v6 & 0x80u) == 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = *(&v56 + 1);
  }

  if ((v6 & 0x80u) == 0)
  {
    v8 = &v56;
  }

  else
  {
    v8 = v56;
  }

  do
  {
    v9 = *(a1 + v4 + 47);
    if (v9 >= 0)
    {
      v10 = *(a1 + v4 + 47);
    }

    else
    {
      v10 = *(a1 + v4 + 32);
    }

    if (v9 >= 0)
    {
      v11 = a1 + v4 + 24;
    }

    else
    {
      v11 = *(a1 + v4 + 24);
    }

    if (v7 >= v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v7;
    }

    v13 = memcmp(v11, v8, v12);
    v14 = v10 < v7;
    if (v13)
    {
      v14 = v13 < 0;
    }

    v4 += 24;
  }

  while (v14);
  v15 = a1 + v4;
  if (v4 == 24)
  {
    v24 = (a2 - 24);
    while (1)
    {
      v23 = (v24 + 3);
      if (v15 >= (v24 + 3))
      {
        break;
      }

      v25 = *(v24 + 23);
      if (v25 >= 0)
      {
        v26 = *(v24 + 23);
      }

      else
      {
        v26 = v24[1];
      }

      if (v25 >= 0)
      {
        v27 = v24;
      }

      else
      {
        v27 = *v24;
      }

      if (v7 >= v26)
      {
        v28 = v26;
      }

      else
      {
        v28 = v7;
      }

      v29 = memcmp(v27, v8, v28);
      v30 = v26 < v7;
      if (v29)
      {
        v30 = v29 < 0;
      }

      v24 -= 3;
      if (v30)
      {
        v23 = (v24 + 3);
        break;
      }
    }
  }

  else
  {
    v16 = (a2 - 24);
    do
    {
      v17 = *(v16 + 23);
      if (v17 >= 0)
      {
        v18 = *(v16 + 23);
      }

      else
      {
        v18 = v16[1];
      }

      if (v17 >= 0)
      {
        v19 = v16;
      }

      else
      {
        v19 = *v16;
      }

      if (v7 >= v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = v7;
      }

      v21 = memcmp(v19, v8, v20);
      v22 = v18 < v7;
      if (v21)
      {
        v22 = v21 < 0;
      }

      v16 -= 3;
    }

    while (!v22);
    v23 = (v16 + 3);
  }

  if (v15 >= v23)
  {
    v31 = v15;
    v52 = v15 - 24;
    if ((v15 - 24) != a1)
    {
LABEL_84:
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      v53 = *v52;
      *(a1 + 2) = *(v52 + 16);
      *a1 = v53;
      *(v31 - 1) = 0;
      *(v31 - 24) = 0;
      goto LABEL_90;
    }
  }

  else
  {
    v31 = v15;
    v32 = v23;
    do
    {
      v33 = *v31;
      v59 = *(v31 + 16);
      v58 = v33;
      v34 = *v32;
      *(v31 + 16) = v32[2];
      *v31 = v34;
      v35 = (v31 + 24);
      v36 = v58;
      v32[2] = v59;
      *v32 = v36;
      if (v57 >= 0)
      {
        v37 = HIBYTE(v57);
      }

      else
      {
        v37 = *(&v56 + 1);
      }

      if (v57 >= 0)
      {
        v38 = &v56;
      }

      else
      {
        v38 = v56;
      }

      do
      {
        v39 = *(v35 + 23);
        if (v39 >= 0)
        {
          v40 = *(v35 + 23);
        }

        else
        {
          v40 = v35[1];
        }

        if (v39 >= 0)
        {
          v41 = v35;
        }

        else
        {
          v41 = *v35;
        }

        if (v37 >= v40)
        {
          v42 = v40;
        }

        else
        {
          v42 = v37;
        }

        v43 = memcmp(v41, v38, v42);
        v44 = v40 < v37;
        if (v43)
        {
          v44 = v43 < 0;
        }

        v35 += 3;
      }

      while (v44);
      v31 = (v35 - 3);
      v45 = v32 - 3;
      do
      {
        v46 = *(v45 + 23);
        if (v46 >= 0)
        {
          v47 = *(v45 + 23);
        }

        else
        {
          v47 = v45[1];
        }

        if (v46 >= 0)
        {
          v48 = v45;
        }

        else
        {
          v48 = *v45;
        }

        if (v37 >= v47)
        {
          v49 = v47;
        }

        else
        {
          v49 = v37;
        }

        v50 = memcmp(v48, v38, v49);
        v51 = v47 < v37;
        if (v50)
        {
          v51 = v50 < 0;
        }

        v45 -= 3;
      }

      while (!v51);
      v32 = v45 + 3;
    }

    while (v31 < v32);
    v52 = v31 - 24;
    if ((v31 - 24) != a1)
    {
      goto LABEL_84;
    }
  }

  if (*(v31 - 1) < 0)
  {
    operator delete(*v52);
  }

LABEL_90:
  v54 = v56;
  *(v52 + 16) = v57;
  *v52 = v54;
  return v52;
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(uint64_t a1, const void **a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(a1, (a1 + 24), a2 - 3);
        v5 = 1;
        return v5 & 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(a1, (a1 + 24), (a1 + 48), a2 - 3);
        v5 = 1;
        return v5 & 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(a1, a1 + 24, a1 + 48, (a1 + 72), a2 - 3);
        v5 = 1;
        return v5 & 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
LABEL_3:
      v5 = 1;
      return v5 & 1;
    }

    if (v4 == 2)
    {
      v7 = a2 - 3;
      v6 = *(a2 - 3);
      v8 = *(a1 + 23);
      v9 = *(a2 - 1);
      if (v9 >= 0)
      {
        v10 = *(a2 - 1);
      }

      else
      {
        v10 = *(a2 - 2);
      }

      if (v9 >= 0)
      {
        v11 = a2 - 3;
      }

      else
      {
        v11 = *(a2 - 3);
      }

      if (v8 >= 0)
      {
        v12 = *(a1 + 23);
      }

      else
      {
        v12 = *(a1 + 8);
      }

      if (v8 >= 0)
      {
        v13 = a1;
      }

      else
      {
        v13 = *a1;
      }

      if (v12 >= v10)
      {
        v14 = v10;
      }

      else
      {
        v14 = v12;
      }

      v15 = memcmp(v11, v13, v14);
      v16 = v10 < v12;
      if (v15)
      {
        v16 = v15 < 0;
      }

      if (v16)
      {
        v17 = *(a1 + 16);
        v18 = *a1;
        v19 = v7[2];
        *a1 = *v7;
        *(a1 + 16) = v19;
        *v7 = v18;
        v7[2] = v17;
        v5 = 1;
        return v5 & 1;
      }

      goto LABEL_3;
    }
  }

  v20 = (a1 + 48);
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(a1, (a1 + 24), (a1 + 48));
  v22 = (a1 + 72);
  if ((a1 + 72) == a2)
  {
LABEL_74:
    v48 = 1;
  }

  else
  {
    v23 = 0;
    v24 = 0;
    while (1)
    {
      v26 = *(v20 + 23);
      v27 = *(v22 + 23);
      if (v27 >= 0)
      {
        v28 = *(v22 + 23);
      }

      else
      {
        v28 = v22[1];
      }

      if (v27 >= 0)
      {
        v29 = v22;
      }

      else
      {
        v29 = *v22;
      }

      if (v26 >= 0)
      {
        v30 = *(v20 + 23);
      }

      else
      {
        v30 = v20[1];
      }

      if (v26 >= 0)
      {
        v31 = v20;
      }

      else
      {
        v31 = *v20;
      }

      if (v30 >= v28)
      {
        v32 = v28;
      }

      else
      {
        v32 = v30;
      }

      v33 = memcmp(v29, v31, v32);
      v34 = v28 < v30;
      v21 = v33 < 0;
      if (v33)
      {
        v34 = v33 < 0;
      }

      if (v34)
      {
        v50 = *v22;
        v51 = v22[2];
        v22[1] = 0;
        v22[2] = 0;
        *v22 = 0;
        v35 = v23;
        do
        {
          v36 = a1 + v35;
          *(v36 + 72) = *(a1 + v35 + 48);
          *(v36 + 88) = *(a1 + v35 + 64);
          *(v36 + 71) = 0;
          *(v36 + 48) = 0;
          if (v35 == -48)
          {
            v25 = a1;
            goto LABEL_32;
          }

          v39 = *(v36 + 24);
          v37 = v36 + 24;
          v38 = v39;
          v40 = *(v37 + 23);
          if (SHIBYTE(v51) >= 0)
          {
            v41 = HIBYTE(v51);
          }

          else
          {
            v41 = *(&v50 + 1);
          }

          if (SHIBYTE(v51) >= 0)
          {
            v42 = &v50;
          }

          else
          {
            v42 = v50;
          }

          if (v40 >= 0)
          {
            v43 = *(v37 + 23);
          }

          else
          {
            v43 = *(v37 + 8);
          }

          if (v40 >= 0)
          {
            v44 = v37;
          }

          else
          {
            v44 = v38;
          }

          if (v43 >= v41)
          {
            v45 = v41;
          }

          else
          {
            v45 = v43;
          }

          v46 = memcmp(v42, v44, v45);
          v47 = v41 < v43;
          if (v46)
          {
            v47 = v46 < 0;
          }

          v35 -= 24;
        }

        while (v47);
        v25 = a1 + v35 + 72;
LABEL_32:
        *v25 = v50;
        v21 = v51;
        *(v25 + 16) = v51;
        if (++v24 == 8)
        {
          break;
        }
      }

      v20 = v22;
      v23 += 24;
      v22 += 3;
      if (v22 == a2)
      {
        goto LABEL_74;
      }
    }

    v48 = 0;
    v21 = v22 + 3 == a2;
  }

  v5 = v48 | v21;
  return v5 & 1;
}

__n128 std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(uint64_t a1, uint64_t a2, uint64_t a3, __n128 *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v67 = v4;
    v68 = v5;
    v7 = a4;
    v8 = a1;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 3)))
    {
      v10 = a3;
      v11 = (0x5555555555555556 * ((a4 - a1) >> 3)) | 1;
      v12 = (a1 + 24 * v11);
      v13 = 0x5555555555555556 * ((a4 - a1) >> 3) + 2;
      if (v13 >= a3)
      {
        v25 = v12->n128_u64[0];
      }

      else
      {
        v14 = v12[2].n128_i8[15];
        v15 = v12[1].n128_i8[7];
        v61 = v12[1].n128_u64[1];
        v62 = v12->n128_u64[0];
        if (v15 >= 0)
        {
          v16 = v12[1].n128_u8[7];
        }

        else
        {
          v16 = v12->n128_u64[1];
        }

        if (v15 >= 0)
        {
          v17 = (a1 + 24 * v11);
        }

        else
        {
          v17 = v12->n128_u64[0];
        }

        v18 = v6 >> 1;
        if (v14 >= 0)
        {
          v19 = v12[2].n128_u8[15];
        }

        else
        {
          v19 = v12[2].n128_u64[0];
        }

        if (v14 >= 0)
        {
          v20 = &v12[1].n128_i8[8];
        }

        else
        {
          v20 = v12[1].n128_u64[1];
        }

        if (v19 >= v16)
        {
          v21 = v16;
        }

        else
        {
          v21 = v19;
        }

        v22 = memcmp(v17, v20, v21);
        v23 = v16 >= v19;
        v9 = v18;
        v24 = !v23;
        if (v22)
        {
          v24 = v22 < 0;
        }

        v48 = !v24;
        v25 = v62;
        if (!v48)
        {
          v25 = v61;
          v12 = (v12 + 24);
          v11 = v13;
        }
      }

      v26 = v7[1].n128_i8[7];
      v27 = v12[1].n128_i8[7];
      if (v27 >= 0)
      {
        v28 = v12[1].n128_u8[7];
      }

      else
      {
        v28 = v12->n128_u64[1];
      }

      if (v27 >= 0)
      {
        v29 = v12;
      }

      else
      {
        v29 = v25;
      }

      if (v26 >= 0)
      {
        v30 = v7[1].n128_u8[7];
      }

      else
      {
        v30 = v7->n128_u64[1];
      }

      if (v26 >= 0)
      {
        v31 = v7;
      }

      else
      {
        v31 = v7->n128_u64[0];
      }

      if (v30 >= v28)
      {
        v32 = v28;
      }

      else
      {
        v32 = v30;
      }

      v33 = memcmp(v29, v31, v32);
      v35 = v28 < v30;
      if (v33)
      {
        v35 = v33 < 0;
      }

      if (!v35)
      {
        v65 = *v7;
        v66 = v7[1].n128_i64[0];
        v7->n128_u64[1] = 0;
        v7[1].n128_u64[0] = 0;
        v7->n128_u64[0] = 0;
        v63 = v9;
        v64 = v10;
        do
        {
          v58 = v12;
          v59 = *v12;
          v7[1].n128_u64[0] = v12[1].n128_u64[0];
          *v7 = v59;
          v12[1].n128_u8[7] = 0;
          v12->n128_u8[0] = 0;
          if (v9 < v11)
          {
            break;
          }

          v60 = (2 * v11) | 1;
          v12 = (v8 + 24 * v60);
          v11 = 2 * v11 + 2;
          if (v11 < v10)
          {
            v36 = v12[2].n128_i8[15];
            v37 = v12[1].n128_u64[1];
            v38 = v12[1].n128_i8[7];
            v39 = v12->n128_u64[0];
            v40 = v8;
            if (v38 >= 0)
            {
              v41 = v12[1].n128_u8[7];
            }

            else
            {
              v41 = v12->n128_u64[1];
            }

            if (v38 >= 0)
            {
              v42 = v12;
            }

            else
            {
              v42 = v12->n128_u64[0];
            }

            if (v36 >= 0)
            {
              v43 = v12[2].n128_u8[15];
            }

            else
            {
              v43 = v12[2].n128_u64[0];
            }

            if (v36 >= 0)
            {
              v44 = &v12[1].n128_i8[8];
            }

            else
            {
              v44 = v12[1].n128_u64[1];
            }

            if (v43 >= v41)
            {
              v45 = v41;
            }

            else
            {
              v45 = v43;
            }

            v46 = memcmp(v42, v44, v45);
            v23 = v41 >= v43;
            v8 = v40;
            v47 = !v23;
            if (v46)
            {
              v47 = v46 < 0;
            }

            v48 = !v47;
            if (v47)
            {
              v49 = v37;
            }

            else
            {
              v49 = v39;
            }

            if (!v48)
            {
              v12 = (v12 + 24);
            }

            v9 = v63;
            v10 = v64;
            if (v48)
            {
              v11 = v60;
            }
          }

          else
          {
            v49 = v12->n128_u64[0];
            v11 = v60;
          }

          v50 = v12[1].n128_i8[7];
          v51 = v50 >= 0 ? v12[1].n128_u8[7] : v12->n128_u64[1];
          v52 = v50 >= 0 ? v12 : v49;
          v53 = v66 >= 0 ? HIBYTE(v66) : v65.n128_u64[1];
          v54 = v66 >= 0 ? &v65 : v65.n128_u64[0];
          v55 = v53 >= v51 ? v51 : v53;
          v56 = memcmp(v52, v54, v55);
          v57 = v51 < v53;
          if (v56)
          {
            v57 = v56 < 0;
          }

          v7 = v58;
        }

        while (!v57);
        result = v65;
        v58[1].n128_u64[0] = v66;
        *v58 = result;
      }
    }
  }

  return result;
}

void std::__sort_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v33 = *MEMORY[0x277D85DE8];
  if (a2 - a1 >= 25)
  {
    v3 = a2;
    v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    do
    {
      while (1)
      {
        v7 = 0;
        v8 = a1;
        v29 = *a1;
        v31 = v3;
        *v32 = *(a1 + 8);
        *&v32[7] = *(a1 + 15);
        v30 = *(a1 + 23);
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *a1 = 0;
        do
        {
          v23 = v8 + 24 * v7;
          v21 = (v23 + 24);
          v24 = (2 * v7) | 1;
          v25 = 2 * v7 + 2;
          if (v25 < v4)
          {
            v11 = *(v23 + 48);
            v10 = v23 + 48;
            v9 = v11;
            v12 = *(v10 + 23);
            v13 = *(v10 - 1);
            if (v13 >= 0)
            {
              v14 = *(v10 - 1);
            }

            else
            {
              v14 = *(v10 - 16);
            }

            if (v13 >= 0)
            {
              v15 = v21;
            }

            else
            {
              v15 = *(v10 - 24);
            }

            if (v12 >= 0)
            {
              v16 = *(v10 + 23);
            }

            else
            {
              v16 = *(v10 + 8);
            }

            if (v12 >= 0)
            {
              v17 = v10;
            }

            else
            {
              v17 = v9;
            }

            if (v16 >= v14)
            {
              v18 = v14;
            }

            else
            {
              v18 = v16;
            }

            v19 = memcmp(v15, v17, v18);
            v20 = v14 < v16;
            if (v19)
            {
              v20 = v19 < 0;
            }

            if (v20)
            {
              v21 = v10;
              v7 = v25;
            }

            else
            {
              v7 = v24;
            }
          }

          else
          {
            v7 = (2 * v7) | 1;
          }

          v22 = *v21;
          *(v8 + 16) = *(v21 + 2);
          *v8 = v22;
          *(v21 + 23) = 0;
          *v21 = 0;
          v8 = v21;
        }

        while (v7 <= ((v4 - 2) >> 1));
        v3 = (v3 - 24);
        if (v21 == (v31 - 24))
        {
          break;
        }

        v5 = *v3;
        *(v21 + 2) = *(v31 - 1);
        *v21 = v5;
        *(v31 - 3) = v29;
        *(v31 - 2) = *v32;
        *(v31 - 9) = *&v32[7];
        *(v31 - 1) = v30;
        std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(a1, v21 + 24, a3, 0xAAAAAAAAAAAAAAABLL * ((v21 - a1 + 24) >> 3));
        v6 = v4-- <= 2;
        if (v6)
        {
          goto LABEL_32;
        }
      }

      *v21 = v29;
      *(v21 + 1) = *v32;
      *(v21 + 15) = *&v32[7];
      *(v21 + 23) = v30;
      v6 = v4-- <= 2;
    }

    while (!v6);
  }

LABEL_32:
  v26 = *MEMORY[0x277D85DE8];
}

double std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a4 - 2;
  if (a4 >= 2)
  {
    v36 = v4;
    v37 = v5;
    v8 = v6 >> 1;
    v9 = (a1 + 24 * (v6 >> 1));
    v11 = (a2 - 24);
    v10 = *(a2 - 24);
    v12 = *(a2 - 1);
    v13 = *(v9 + 23);
    if (v13 >= 0)
    {
      v14 = *(v9 + 23);
    }

    else
    {
      v14 = v9[1];
    }

    if (v13 >= 0)
    {
      v15 = v9;
    }

    else
    {
      v15 = *v9;
    }

    if (v12 >= 0)
    {
      v16 = *(a2 - 1);
    }

    else
    {
      v16 = *(a2 - 16);
    }

    if (v12 >= 0)
    {
      v17 = (a2 - 24);
    }

    else
    {
      v17 = *(a2 - 24);
    }

    if (v16 >= v14)
    {
      v18 = v14;
    }

    else
    {
      v18 = v16;
    }

    v19 = memcmp(v15, v17, v18);
    v21 = v14 < v16;
    if (v19)
    {
      v21 = v19 < 0;
    }

    if (v21)
    {
      v35 = v11[2];
      v22 = v35;
      v34 = *v11;
      v11[1] = 0;
      v11[2] = 0;
      *v11 = 0;
      v23 = HIBYTE(v22);
      if (v23 >= 0)
      {
        v24 = v23;
      }

      else
      {
        v24 = *(&v34 + 1);
      }

      if (v23 >= 0)
      {
        v25 = &v34;
      }

      else
      {
        v25 = v34;
      }

      do
      {
        v26 = v9;
        v27 = *v9;
        v11[2] = v9[2];
        *v11 = v27;
        *(v9 + 23) = 0;
        *v9 = 0;
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = (a1 + 24 * v8);
        v28 = *(v9 + 23);
        v29 = v28 >= 0 ? *(v9 + 23) : v9[1];
        v30 = v28 >= 0 ? (a1 + 24 * v8) : *v9;
        v31 = (v24 >= v29 ? v29 : v24);
        v32 = memcmp(v30, v25, v31);
        v33 = v29 < v24;
        if (v32)
        {
          v33 = v32 < 0;
        }

        v11 = v26;
      }

      while (v33);
      result = *&v34;
      *v26 = v34;
      v26[2] = v35;
    }
  }

  return result;
}

void *operations_research::sat::Model::Delete<operations_research::sat::SharedResponseManager>::~Delete(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 8);
  *v1 = &unk_284F3F690;
  v1[1] = 0;
  if (v2)
  {
    v3 = v1;
    operations_research::sat::SharedResponseManager::~SharedResponseManager(v2);
    MEMORY[0x23EED9460]();
    return v3;
  }

  return v1;
}

void operations_research::sat::Model::Delete<operations_research::sat::SharedResponseManager>::~Delete(void *a1)
{
  v1 = a1[1];
  *a1 = &unk_284F3F690;
  a1[1] = 0;
  if (v1)
  {
    operations_research::sat::SharedResponseManager::~SharedResponseManager(v1);
    MEMORY[0x23EED9460]();
  }

  JUMPOUT(0x23EED9460);
}

void operations_research::sat::SharedResponseManager::~SharedResponseManager(operations_research::sat::SharedResponseManager *this)
{
  v2 = *(this + 86);
  if (v2)
  {
    *(this + 87) = v2;
    operator delete(v2);
  }

  v3 = *(this + 82);
  if (v3)
  {
    v4 = *(this + 83);
    v5 = *(this + 82);
    if (v4 != v3)
    {
      do
      {
        operations_research::sat::CpSolverResponse::~CpSolverResponse((v4 - 272));
      }

      while (v4 != v3);
      v5 = *(this + 82);
    }

    *(this + 83) = v3;
    operator delete(v5);
  }

  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::string,int>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::pair<std::string const,int>>>::~raw_hash_set(this + 77);
  if (*(this + 75))
  {
    absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::clear_and_delete(*(this + 73));
  }

  *(this + 74) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::EmptyNode(void)::empty_node;
  *(this + 73) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::EmptyNode(void)::empty_node;
  *(this + 75) = 0;
  if (*(this + 72))
  {
    absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::clear_and_delete(*(this + 70));
  }

  *(this + 71) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::EmptyNode(void)::empty_node;
  *(this + 70) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::EmptyNode(void)::empty_node;
  *(this + 72) = 0;
  if (*(this + 69))
  {
    absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::clear_and_delete(*(this + 67));
  }

  *(this + 68) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::EmptyNode(void)::empty_node;
  *(this + 67) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::EmptyNode(void)::empty_node;
  *(this + 69) = 0;
  if (*(this + 66))
  {
    absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::clear_and_delete(*(this + 64));
  }

  *(this + 65) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::EmptyNode(void)::empty_node;
  *(this + 64) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::EmptyNode(void)::empty_node;
  *(this + 66) = 0;
  if (*(this + 511) < 0)
  {
    operator delete(*(this + 61));
  }

  v6 = *(this + 58);
  if (v6)
  {
    v7 = *(this + 59);
    v8 = *(this + 58);
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
      v8 = *(this + 58);
    }

    *(this + 59) = v6;
    operator delete(v8);
  }

  v11 = *(this + 55);
  if (v11)
  {
    v12 = *(this + 56);
    v13 = *(this + 55);
    if (v12 != v11)
    {
      v14 = v12 - 32;
      do
      {
        v15 = *(v12 - 8);
        v12 -= 32;
        if (v12 == v15)
        {
          (*(*v15 + 32))(v15);
        }

        else if (v15)
        {
          (*(*v15 + 40))(v15);
        }

        v14 -= 32;
      }

      while (v12 != v11);
      v13 = *(this + 55);
    }

    *(this + 56) = v11;
    operator delete(v13);
  }

  v16 = *(this + 52);
  if (v16)
  {
    v17 = *(this + 53);
    v18 = *(this + 52);
    if (v17 != v16)
    {
      v19 = v17 - 32;
      do
      {
        v20 = *(v17 - 8);
        v17 -= 32;
        if (v17 == v20)
        {
          (*(*v20 + 32))(v20);
        }

        else if (v20)
        {
          (*(*v20 + 40))(v20);
        }

        v19 -= 32;
      }

      while (v17 != v16);
      v18 = *(this + 52);
    }

    *(this + 53) = v16;
    operator delete(v18);
  }

  v21 = *(this + 49);
  if (v21)
  {
    v22 = *(this + 50);
    v23 = *(this + 49);
    if (v22 != v21)
    {
      v24 = v22 - 32;
      do
      {
        v25 = *(v22 - 8);
        if (v22 - 32 == v25)
        {
          (*(*v25 + 32))(v25);
        }

        else if (v25)
        {
          (*(*v25 + 40))(v25);
        }

        v22 -= 40;
        v24 -= 40;
      }

      while (v22 != v21);
      v23 = *(this + 49);
    }

    *(this + 50) = v21;
    operator delete(v23);
  }

  v26 = *(this + 45);
  if (v26)
  {
    v27 = *(this + 46);
    v28 = *(this + 45);
    if (v27 != v26)
    {
      v29 = v27 - 32;
      do
      {
        v30 = *(v27 - 8);
        if (v27 - 32 == v30)
        {
          (*(*v30 + 32))(v30);
        }

        else if (v30)
        {
          (*(*v30 + 40))(v30);
        }

        v27 -= 40;
        v29 -= 40;
      }

      while (v27 != v26);
      v28 = *(this + 45);
    }

    *(this + 46) = v26;
    operator delete(v28);
  }

  v31 = *(this + 41);
  if (v31)
  {
    v32 = *(this + 42);
    v33 = *(this + 41);
    if (v32 != v31)
    {
      v34 = v32 - 32;
      do
      {
        v35 = *(v32 - 8);
        if (v32 - 32 == v35)
        {
          (*(*v35 + 32))(v35);
        }

        else if (v35)
        {
          (*(*v35 + 40))(v35);
        }

        v32 -= 40;
        v34 -= 40;
      }

      while (v32 != v31);
      v33 = *(this + 41);
    }

    *(this + 42) = v31;
    operator delete(v33);
  }

  operations_research::sat::SharedSolutionRepository<double>::~SharedSolutionRepository(this + 88);
  v36 = *(this + 8);
  if (v36)
  {
    *(this + 9) = v36;
    operator delete(v36);
  }

  absl::lts_20240722::Mutex::~Mutex((this + 32));
}

void *operations_research::sat::Model::Delete<operations_research::sat::SolutionObservers>::~Delete(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 8);
  *v1 = &unk_284F3F6C8;
  v1[1] = 0;
  if (v2)
  {
    v3 = v1;
    operations_research::sat::SolutionObservers::~SolutionObservers(v2);
    MEMORY[0x23EED9460]();
    return v3;
  }

  return v1;
}

void operations_research::sat::Model::Delete<operations_research::sat::SolutionObservers>::~Delete(void *a1)
{
  v1 = a1[1];
  *a1 = &unk_284F3F6C8;
  a1[1] = 0;
  if (v1)
  {
    operations_research::sat::SolutionObservers::~SolutionObservers(v1);
    MEMORY[0x23EED9460]();
  }

  JUMPOUT(0x23EED9460);
}

void operations_research::sat::SolutionObservers::~SolutionObservers(operations_research::sat::SolutionObservers *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    v3 = *(this + 7);
    v4 = *(this + 6);
    if (v3 != v2)
    {
      v5 = v3 - 32;
      do
      {
        v6 = *(v3 - 8);
        v3 -= 32;
        if (v3 == v6)
        {
          (*(*v6 + 32))(v6);
        }

        else if (v6)
        {
          (*(*v6 + 40))(v6);
        }

        v5 -= 32;
      }

      while (v3 != v2);
      v4 = *(this + 6);
    }

    *(this + 7) = v2;
    operator delete(v4);
  }

  v7 = *(this + 3);
  if (v7)
  {
    v8 = *(this + 4);
    v9 = *(this + 3);
    if (v8 != v7)
    {
      v10 = v8 - 32;
      do
      {
        v11 = *(v8 - 8);
        v8 -= 32;
        if (v8 == v11)
        {
          (*(*v11 + 32))(v11);
        }

        else if (v11)
        {
          (*(*v11 + 40))(v11);
        }

        v10 -= 32;
      }

      while (v8 != v7);
      v9 = *(this + 3);
    }

    *(this + 4) = v7;
    operator delete(v9);
  }

  v12 = *this;
  if (*this)
  {
    v13 = *(this + 1);
    v14 = *this;
    if (v13 != v12)
    {
      v15 = v13 - 32;
      do
      {
        v16 = *(v13 - 8);
        v13 -= 32;
        if (v13 == v16)
        {
          (*(*v16 + 32))(v16);
        }

        else if (v16)
        {
          (*(*v16 + 40))(v16);
        }

        v15 -= 32;
      }

      while (v13 != v12);
      v14 = *this;
    }

    *(this + 1) = v12;
    operator delete(v14);
  }
}

void *std::__function::__func<operations_research::sat::NewSatParameters(operations_research::sat::SatParameters const&)::$_0,std::allocator<operations_research::sat::NewSatParameters(operations_research::sat::SatParameters const&)::$_0>,operations_research::sat::SatParameters ()(operations_research::sat::Model *)>::~__func(void *a1)
{
  *a1 = &unk_284F3F700;
  operations_research::sat::SatParameters::~SatParameters((a1 + 1));
  return a1;
}

void std::__function::__func<operations_research::sat::NewSatParameters(operations_research::sat::SatParameters const&)::$_0,std::allocator<operations_research::sat::NewSatParameters(operations_research::sat::SatParameters const&)::$_0>,operations_research::sat::SatParameters ()(operations_research::sat::Model *)>::~__func(void *a1)
{
  *a1 = &unk_284F3F700;
  operations_research::sat::SatParameters::~SatParameters((a1 + 1));

  JUMPOUT(0x23EED9460);
}

void std::__function::__func<operations_research::sat::NewSatParameters(operations_research::sat::SatParameters const&)::$_0,std::allocator<operations_research::sat::NewSatParameters(operations_research::sat::SatParameters const&)::$_0>,operations_research::sat::SatParameters ()(operations_research::sat::Model *)>::destroy_deallocate(uint64_t a1)
{
  operations_research::sat::SatParameters::~SatParameters((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<operations_research::sat::NewSatParameters(operations_research::sat::SatParameters const&)::$_0,std::allocator<operations_research::sat::NewSatParameters(operations_research::sat::SatParameters const&)::$_0>,operations_research::sat::SatParameters ()(operations_research::sat::Model *)>::operator()@<X0>(uint64_t a1@<X0>, void **a2@<X1>, operations_research::sat::SatParameters *a3@<X8>)
{
  v5 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(*a2);
  operations_research::sat::SatParameters::CopyFrom(v5, (a1 + 8));

  return operations_research::sat::SatParameters::SatParameters(a3, 0, (a1 + 8));
}

uint64_t std::__function::__func<operations_research::sat::NewSatParameters(operations_research::sat::SatParameters const&)::$_0,std::allocator<operations_research::sat::NewSatParameters(operations_research::sat::SatParameters const&)::$_0>,operations_research::sat::SatParameters ()(operations_research::sat::Model *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat16NewSatParametersERKNS0_13SatParametersEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat16NewSatParametersERKNS0_13SatParametersEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat16NewSatParametersERKNS0_13SatParametersEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat16NewSatParametersERKNS0_13SatParametersEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *operations_research::sat::Model::Delete<operations_research::sat::ModelSharedTimeLimit>::~Delete(void *a1)
{
  v1 = a1;
  v2 = a1[1];
  *v1 = &unk_284F3F790;
  v1[1] = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v2 + 3) == (v2 + 16))
    {
      *(*(v2 + 1) + 120) = 0;
    }

    absl::lts_20240722::Mutex::~Mutex(v2);
    MEMORY[0x23EED9460]();
    return v3;
  }

  return v1;
}

void operations_research::sat::Model::Delete<operations_research::sat::ModelSharedTimeLimit>::~Delete(void *a1)
{
  v3 = a1[1];
  *a1 = &unk_284F3F790;
  a1[1] = 0;
  if (v3)
  {
    if (*(v3 + 3) == (v3 + 16))
    {
      *(*(v3 + 1) + 120) = 0;
    }

    absl::lts_20240722::Mutex::~Mutex(v3);
    MEMORY[0x23EED9460]();
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

void *operations_research::sat::Model::Delete<WallTimer>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F3F7C8;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    MEMORY[0x23EED9460](v1, 0x1000C406CB41D2ELL);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<WallTimer>::~Delete(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_284F3F7C8;
  a1[1] = 0;
  if (v2)
  {
    MEMORY[0x23EED9460](v2, 0x1000C406CB41D2ELL);
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

uint64_t std::__function::__func<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_0>,void ()(std::string const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F3F800;
  a2[1] = v2;
  return result;
}

std::string *std::__function::__func<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_0>,void ()(std::string const&)>::operator()(uint64_t a1, uint64_t *a2)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) == 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v8[0] = v4;
  v8[1] = v3;
  v7[0] = "\n";
  v7[1] = 1;
  result = absl::lts_20240722::StrAppend(v2, v8, v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__func<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_0>,void ()(std::string const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat12SolveCpModelERKNS0_12CpModelProtoEPNS0_5ModelEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat12SolveCpModelERKNS0_12CpModelProtoEPNS0_5ModelEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat12SolveCpModelERKNS0_12CpModelProtoEPNS0_5ModelEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat12SolveCpModelERKNS0_12CpModelProtoEPNS0_5ModelEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void std::__function::__func<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_1,std::allocator<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_1>,void ()(operations_research::sat::CpSolverResponse *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v17[6] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  explicit = atomic_load_explicit(&off_2810BDC48, memory_order_acquire);
  if ((~explicit & 3) != 0)
  {
    absl::lts_20240722::flags_internal::FlagImpl::Read(&FLAGS_cp_model_dump_prefix, &v16);
  }

  else
  {
    v4 = explicit & 0xFFFFFFFFFFFFFFFCLL;
    if (*(v4 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v16, *v4, *(v4 + 8));
    }

    else
    {
      v5 = *v4;
      v16.__r_.__value_.__r.__words[2] = *(v4 + 16);
      *&v16.__r_.__value_.__l.__data_ = v5;
    }
  }

  __p = v16;
  size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
  p_p = &__p;
  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v16.__r_.__value_.__l.__size_;
    p_p = v16.__r_.__value_.__r.__words[0];
  }

  v17[0] = p_p;
  v17[1] = size;
  v16.__r_.__value_.__r.__words[0] = "response.pb.txt";
  v16.__r_.__value_.__l.__size_ = 15;
  absl::lts_20240722::StrCat(v17, &v16, &v15);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v8 = absl::lts_20240722::log_internal::LogMessage::LogMessage(v17, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_solver.cc", 3801);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v8, "Dumping response proto to '", 0x1BuLL);
  v9 = absl::lts_20240722::log_internal::LogMessage::operator<<(v17, &v15);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v9, "'.", 2uLL);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(v17);
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v15;
  }

  else
  {
    v10 = v15.__r_.__value_.__r.__words[0];
  }

  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = HIBYTE(v15.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v11 = v15.__r_.__value_.__l.__size_;
  }

  if (!operations_research::sat::WriteModelProtoToFile<operations_research::sat::CpModelProto>(v2, v10, v11))
  {
    v13 = absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v17, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_solver.cc", 3802);
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v13);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_23CB24108(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    v26 = a1;
    operator delete(__p);
    a1 = v26;
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_1,std::allocator<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_1>,void ()(operations_research::sat::CpSolverResponse *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat12SolveCpModelERKNS0_12CpModelProtoEPNS0_5ModelEE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat12SolveCpModelERKNS0_12CpModelProtoEPNS0_5ModelEE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat12SolveCpModelERKNS0_12CpModelProtoEPNS0_5ModelEE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat12SolveCpModelERKNS0_12CpModelProtoEPNS0_5ModelEE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 std::__function::__func<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_2,std::allocator<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_2>,void ()(operations_research::sat::CpSolverResponse *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F3F910;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_2,std::allocator<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_2>,void ()(operations_research::sat::CpSolverResponse *)>::operator()(void *a1, unint64_t **a2)
{
  v3 = *a2;
  v4 = a1[1];
  if (*v4 != 1)
  {
    goto LABEL_20;
  }

  v5 = *(a1[2] + 16);
  v6 = (v5 & 1) != 0 || (v5 & 8) != 0;
  operations_research::sat::CpSolverResponseStats(v3, v6, &__p);
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

  if (size >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (size >= 0x17)
  {
    operator new();
  }

  v14 = size;
  if (size)
  {
    memmove(&__dst, p_p, size);
  }

  *(&__dst + size) = 0;
  operations_research::SolverLogger::LogInfo(v4, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_solver.cc", 3814, &__dst);
  if (v14 < 0)
  {
    operator delete(__dst);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_28;
    }

LABEL_20:
    v9 = a1[3];
    v10 = *(v9 + 23);
    if ((v10 & 0x8000000000000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_20;
  }

LABEL_28:
  operator delete(__p.__r_.__value_.__l.__data_);
  v9 = a1[3];
  v10 = *(v9 + 23);
  if (v10 < 0)
  {
LABEL_21:
    v10 = *(v9 + 8);
  }

LABEL_22:
  if (v10)
  {
    v11 = v3[1];
    if (v11)
    {
      v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set<>(v3 + 16, v9, v11);
  }
}

void sub_23CB24428(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_2,std::allocator<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_2>,void ()(operations_research::sat::CpSolverResponse *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat12SolveCpModelERKNS0_12CpModelProtoEPNS0_5ModelEE3$_2")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat12SolveCpModelERKNS0_12CpModelProtoEPNS0_5ModelEE3$_2" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat12SolveCpModelERKNS0_12CpModelProtoEPNS0_5ModelEE3$_2"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat12SolveCpModelERKNS0_12CpModelProtoEPNS0_5ModelEE3$_2" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 std::__function::__func<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_3,std::allocator<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_3>,void ()(operations_research::sat::CpSolverResponse *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F3F990;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_3,std::allocator<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_3>,void ()(operations_research::sat::CpSolverResponse *)>::operator()(absl::lts_20240722 *CurrentTimeNanos, uint64_t *a2)
{
  v2 = CurrentTimeNanos;
  v3 = *a2;
  v4 = **(CurrentTimeNanos + 1);
  if (*v4 == 1)
  {
    CurrentTimeNanos = absl::lts_20240722::GetCurrentTimeNanos(CurrentTimeNanos);
    v5 = CurrentTimeNanos + *(v4 + 16) - *(v4 + 8);
  }

  else
  {
    v5 = *(v4 + 16);
  }

  *(v3 + 200) = v5 * 0.000000001;
  v6 = **(v2 + 2);
  if (*v6 == 1)
  {
    v7 = absl::lts_20240722::GetCurrentTimeNanos(CurrentTimeNanos) - *(v6 + 8) + *(v6 + 16);
  }

  else
  {
    v7 = *(v6 + 16);
  }

  *(v3 + 208) = v7 * 0.000000001;
  v8 = **(v2 + 3);
  absl::lts_20240722::Mutex::ReaderLock(v8);
  v9 = *(*(v8 + 1) + 112);
  absl::lts_20240722::Mutex::ReaderUnlock(v8);
  *(v3 + 216) = v9;
}

uint64_t std::__function::__func<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_3,std::allocator<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_3>,void ()(operations_research::sat::CpSolverResponse *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat12SolveCpModelERKNS0_12CpModelProtoEPNS0_5ModelEE3$_3")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat12SolveCpModelERKNS0_12CpModelProtoEPNS0_5ModelEE3$_3" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat12SolveCpModelERKNS0_12CpModelProtoEPNS0_5ModelEE3$_3"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat12SolveCpModelERKNS0_12CpModelProtoEPNS0_5ModelEE3$_3" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *operations_research::sat::Model::Delete<operations_research::SigintHandler>::~Delete(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 8);
  *v1 = &unk_284F3FA10;
  v1[1] = 0;
  if (v2)
  {
    v3 = v1;
    operations_research::SigintHandler::~SigintHandler(v2);
    MEMORY[0x23EED9460]();
    return v3;
  }

  return v1;
}

void operations_research::sat::Model::Delete<operations_research::SigintHandler>::~Delete(void *a1)
{
  v1 = a1[1];
  *a1 = &unk_284F3FA10;
  a1[1] = 0;
  if (v1)
  {
    operations_research::SigintHandler::~SigintHandler(v1);
    MEMORY[0x23EED9460]();
  }

  JUMPOUT(0x23EED9460);
}

uint64_t std::__function::__func<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_4,std::allocator<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_4>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F3FA48;
  a2[1] = v2;
  return result;
}

void std::__function::__func<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_4,std::allocator<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_4>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = **(a1 + 8);
  absl::lts_20240722::Mutex::Lock(v1);
  atomic_store(1u, *(v1 + 24));
  absl::lts_20240722::Mutex::Unlock(v1);
}

uint64_t std::__function::__func<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_4,std::allocator<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_4>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat12SolveCpModelERKNS0_12CpModelProtoEPNS0_5ModelEE3$_4")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat12SolveCpModelERKNS0_12CpModelProtoEPNS0_5ModelEE3$_4" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat12SolveCpModelERKNS0_12CpModelProtoEPNS0_5ModelEE3$_4"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat12SolveCpModelERKNS0_12CpModelProtoEPNS0_5ModelEE3$_4" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 std::__function::__func<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_5,std::allocator<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_5>,void ()(operations_research::sat::CpSolverResponse *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F3FAC8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_5,std::allocator<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_5>,void ()(operations_research::sat::CpSolverResponse *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  if (!*(*a2 + 24))
  {
    goto LABEL_27;
  }

  if (*(*(a1 + 16) + 152))
  {
    v4 = *(*(a1 + 16) + 152);
  }

  else
  {
    v4 = &operations_research::sat::_FloatObjectiveProto_default_instance_;
  }

  v5 = *(v4 + 7);
  v6 = *(v4 + 4);
  if (v6 >= 1)
  {
    v7 = v4[6];
    v8 = v4[3];
    v9 = *(v2 + 32);
    if (v6 == 1)
    {
      v10 = 0;
LABEL_11:
      v14 = v6 - v10;
      v15 = v8 + v10;
      v16 = &v7[v10];
      do
      {
        v17 = *v16++;
        v18 = v17;
        v19 = *v15++;
        v5 = v5 + v18 * *(v9 + 8 * v19);
        --v14;
      }

      while (v14);
      goto LABEL_13;
    }

    v10 = v6 & 0x7FFFFFFE;
    v11 = (v7 + 1);
    v12 = v8 + 1;
    v13 = v10;
    do
    {
      v5 = v5 + *(v11 - 1) * *(v9 + 8 * *(v12 - 1)) + *v11 * *(v9 + 8 * *v12);
      v11 += 2;
      v12 += 2;
      v13 -= 2;
    }

    while (v13);
    if (v10 != v6)
    {
      goto LABEL_11;
    }
  }

LABEL_13:
  *(v2 + 144) = v5;
  v20 = *(a1 + 24);
  if ((*(v20 + 16) & 1) == 0)
  {
    goto LABEL_27;
  }

  v21 = *(v20 + 128);
  *(v2 + 16) |= 1u;
  v22 = *(v2 + 136);
  if (!v22)
  {
    v24 = *(v2 + 8);
    if (v24)
    {
      v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::Arena::DefaultConstruct<operations_research::sat::CpObjectiveProto>(v24);
    *(v2 + 136) = v25;
    operations_research::sat::CpObjectiveProto::CopyFrom(v25, v21);
    if (*(*(a1 + 8) + 695) != 1)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  operations_research::sat::CpObjectiveProto::CopyFrom(v22, v21);
  if (*(*(a1 + 8) + 695) == 1)
  {
LABEL_20:
    if ((*(v21 + 128) & 1) == 0)
    {
      operations_research::sat::ComputeTrueObjectiveLowerBound(*(a1 + 16), v21, *(v2 + 248));
    }
  }

LABEL_22:
  if (*(v2 + 264) == 4)
  {
    v26 = vabdd_f64(*(v2 + 144), *(v2 + 152));
    if (v26 > *(*(a1 + 8) + 728))
    {
      v27 = **(a1 + 32);
      if (*v27 == 1)
      {
        v28 = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v37, v26, v23);
        *&v36 = v37;
        *(&v36 + 1) = v28;
        v30 = absl::lts_20240722::numbers_internal::SixDigitsToBuffer(v35, *(*(a1 + 8) + 728), v29);
        v33 = v35;
        v34 = v30;
        v38[0] = "[Scaling] Warning: OPTIMAL was reported, yet the objective gap (";
        v38[1] = 64;
        v39 = v36;
        v40 = ") is greater than requested absolute limit (";
        v41 = 44;
        v42 = v35;
        v43 = v30;
        v44 = ").";
        v45 = 2;
        absl::lts_20240722::strings_internal::CatPieces(v38, 5, v32);
        operations_research::SolverLogger::LogInfo(v27, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_solver.cc", 4045, v32);
        if (SHIBYTE(v32[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v32[0].__r_.__value_.__l.__data_);
        }
      }
    }
  }

LABEL_27:
  v31 = *MEMORY[0x277D85DE8];
}

void sub_23CB24EE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_5,std::allocator<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_5>,void ()(operations_research::sat::CpSolverResponse *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat12SolveCpModelERKNS0_12CpModelProtoEPNS0_5ModelEE3$_5")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat12SolveCpModelERKNS0_12CpModelProtoEPNS0_5ModelEE3$_5" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat12SolveCpModelERKNS0_12CpModelProtoEPNS0_5ModelEE3$_5"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat12SolveCpModelERKNS0_12CpModelProtoEPNS0_5ModelEE3$_5" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__func<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_6,std::allocator<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_6>,void ()(operations_research::sat::CpSolverResponse *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F3FB48;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_6,std::allocator<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_6>,void ()(operations_research::sat::CpSolverResponse *)>::operator()(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = (v2 + 96);
  v5 = (*a2 + 72);
  if (*(*a2 + 264) == 3 && v5 != v4)
  {
    *v5 = 0;
    v7 = *v4;
    if (v7)
    {
      if (*(v3 + 76) < v7)
      {
        v24 = v7;
        v22 = v3;
        v23 = v2;
        result = google::protobuf::RepeatedField<int>::Grow(v5, 0, v7);
        v2 = v23;
        v7 = v24;
        v8 = *v5;
        v9 = *(v22 + 80);
        *(v22 + 72) = v8 + v24;
        if (v24 < 1)
        {
          return result;
        }
      }

      else
      {
        v8 = 0;
        v9 = *(v3 + 80);
        *(v3 + 72) = v7;
        if (v7 < 1)
        {
          return result;
        }
      }

      v10 = *(v2 + 104);
      v11 = (v9 + 4 * v8);
      if (v7 < 8)
      {
        goto LABEL_15;
      }

      v12 = 4 * v8 + v9;
      if ((v12 - v10) < 0x20)
      {
        goto LABEL_15;
      }

      v13 = v7;
      v14 = v7 & 0x7FFFFFF8;
      LODWORD(v7) = v7 - (v7 & 0x7FFFFFF8);
      v11 += v14;
      v15 = &v10[v14];
      v16 = (v10 + 4);
      v17 = (v12 + 16);
      v18 = v14;
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
      v10 = v15;
      if (v14 != v13)
      {
LABEL_15:
        v20 = v7 + 1;
        do
        {
          v21 = *v10++;
          *v11++ = v21;
          --v20;
        }

        while (v20 > 1);
      }
    }
  }

  return result;
}

uint64_t std::__function::__func<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_6,std::allocator<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_6>,void ()(operations_research::sat::CpSolverResponse *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat12SolveCpModelERKNS0_12CpModelProtoEPNS0_5ModelEE3$_6")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat12SolveCpModelERKNS0_12CpModelProtoEPNS0_5ModelEE3$_6" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat12SolveCpModelERKNS0_12CpModelProtoEPNS0_5ModelEE3$_6"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat12SolveCpModelERKNS0_12CpModelProtoEPNS0_5ModelEE3$_6" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 std::__function::__func<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_7,std::allocator<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_7>,void ()(std::vector<long long> *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F3FBC8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_7,std::allocator<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_7>,void ()(std::vector<long long> *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = a1;
  v3 = *a2;
  v4 = *(a1 + 40);
  v47 = *(a1 + 24);
  v5 = **(a1 + 32);
  v6 = operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(v5);
  v7 = operations_research::sat::Model::GetOrCreate<operations_research::sat::PostsolveClauses>(v5);
  v9 = v7;
  v10 = v7[1];
  v11 = v7[2];
  if (v11 == v10)
  {
    v7[5] = 0;
    v36 = 0;
  }

  else
  {
    v45 = v2;
    v46 = v3;
    v12 = v7[4];
    v13 = v10[v12 / 0xAA] + 24 * (v12 % 0xAA);
    v44 = v7 + 5;
    v14 = v10[(v7[5] + v12) / 0xAA] + 24 * ((v7[5] + v12) % 0xAA);
    if (v13 != v14)
    {
      v15 = &v10[v12 / 0xAA];
      while (1)
      {
        v16 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((v47 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
        v17 = v16;
        if (*(v16 + 60) == 3)
        {
          v18 = *(v16 + 48);
          v19 = *v13;
          v20 = *(v13 + 8);
          if (*v13 != v20)
          {
            goto LABEL_10;
          }
        }

        else
        {
          operations_research::sat::ConstraintProto::clear_constraint(v16);
          *(v17 + 60) = 3;
          v21 = *(v17 + 8);
          if (v21)
          {
            v18 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(*(v21 & 0xFFFFFFFFFFFFFFFELL));
            *(v17 + 48) = v18;
            v19 = *v13;
            v20 = *(v13 + 8);
            if (*v13 != v20)
            {
              do
              {
LABEL_10:
                v22 = *v19;
                v23 = *(v6 + 72);
                if (*v19 >> 1 >= ((*(v6 + 80) - v23) >> 2) || (v24 = *(v23 + 4 * (v22 >> 1)), v24 == -1))
                {
                  std::__function::__func<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_7,std::allocator<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_7>,void ()(std::vector<long long> *)>::operator()();
                }

                v25 = *(*v4 + 4 * v24);
                v8.n128_u64[0] = v18[2];
                v26 = v8.n128_u32[0];
                if (v8.n128_u32[0] == v8.n128_u32[1])
                {
                  v43 = v18;
                  google::protobuf::RepeatedField<int>::Grow(v18 + 2, v8.n128_u32[1], v8.n128_u32[1] + 1);
                  v18 = v43;
                  v26 = *(v43 + 4);
                }

                v27 = v18[3];
                *(v18 + 4) = v26 + 1;
                *(v27 + 4 * v26) = v25 ^ -(v22 & 1);
                ++v19;
              }

              while (v19 != v20);
            }
          }

          else
          {
            v18 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::BoolArgumentProto>(v21);
            *(v17 + 48) = v18;
            v19 = *v13;
            v20 = *(v13 + 8);
            if (*v13 != v20)
            {
              goto LABEL_10;
            }
          }
        }

        v13 += 24;
        if (v13 - *v15 == 4080)
        {
          v28 = v15[1];
          ++v15;
          v13 = v28;
        }

        if (v13 == v14)
        {
          v10 = v9[1];
          v11 = v9[2];
          break;
        }
      }
    }

    v2 = v45;
    v3 = v46;
    if (v11 != v10)
    {
      v29 = v9[4];
      v30 = &v10[v29 / 0xAA];
      v31 = *v30;
      v32 = *v30 + 24 * (v29 % 0xAA);
      v33 = v10[(v9[5] + v29) / 0xAA] + 24 * ((v9[5] + v29) % 0xAA);
      if (v32 != v33)
      {
        do
        {
          v34 = *v32;
          if (*v32)
          {
            *(v32 + 8) = v34;
            operator delete(v34);
            v31 = *v30;
          }

          v32 += 24;
          if (v32 - v31 == 4080)
          {
            v35 = v30[1];
            ++v30;
            v31 = v35;
            v32 = v35;
          }
        }

        while (v32 != v33);
        v10 = v9[1];
        v11 = v9[2];
      }
    }

    *v44 = 0;
    v36 = v11 - v10;
    if (v36 >= 3)
    {
      do
      {
        operator delete(*v10);
        v37 = v9[2];
        v10 = (v9[1] + 8);
        v9[1] = v10;
        v36 = (v37 - v10) >> 3;
      }

      while (v36 > 2);
    }
  }

  if (v36 == 1)
  {
    v38 = 85;
  }

  else
  {
    if (v36 != 2)
    {
      goto LABEL_37;
    }

    v38 = 170;
  }

  v9[4] = v38;
LABEL_37:
  v39 = *(v2[1] + 32);
  v40 = v2[3];
  v41 = v2[5];
  v42 = *(v2[2] + 281);
}

uint64_t std::__function::__func<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_7,std::allocator<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_7>,void ()(std::vector<long long> *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat12SolveCpModelERKNS0_12CpModelProtoEPNS0_5ModelEE3$_7")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat12SolveCpModelERKNS0_12CpModelProtoEPNS0_5ModelEE3$_7" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat12SolveCpModelERKNS0_12CpModelProtoEPNS0_5ModelEE3$_7"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat12SolveCpModelERKNS0_12CpModelProtoEPNS0_5ModelEE3$_7" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 std::__function::__func<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_8,std::allocator<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_8>,void ()(operations_research::sat::CpSolverResponse *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F3FC58;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

std::string *std::__function::__func<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_8,std::allocator<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_8>,void ()(operations_research::sat::CpSolverResponse *)>::operator()(std::string *result, uint64_t *a2)
{
  v2 = result;
  v3 = *a2;
  v4 = *(*a2 + 72);
  if (v4)
  {
    v5 = *(v3 + 80);
    size = result[1].__r_.__value_.__l.__size_;
    v7 = 4 * v4;
    do
    {
      while (1)
      {
        v8 = *v5;
        if ((v8 & 0x80000000) == 0)
        {
          break;
        }

        *v5++ = ~*(*size + 4 * ~v8);
        v7 -= 4;
        if (!v7)
        {
          goto LABEL_6;
        }
      }

      *v5++ = *(*size + 4 * v8);
      v7 -= 4;
    }

    while (v7);
  }

LABEL_6:
  v9 = *(v3 + 24);
  if (v9)
  {
    if ((v9 & 0x80000000) == 0)
    {
      v10 = result->__r_.__value_.__l.__size_;
      v11 = *(v3 + 32);
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (*(result->__r_.__value_.__r.__words[2] + 286) == 1)
  {
    v12 = *(result->__r_.__value_.__l.__size_ + 32);
    if (*(result[1].__r_.__value_.__r.__words[0] + 32) >= v12 && v12 >= 1)
    {
      v14 = 0;
      v15 = 8;
      do
      {
        data = v2[1].__r_.__value_.__l.__data_;
        v18 = *(data + 3);
        v17 = (data + 24);
        v19 = v18 + v15 - 1;
        if (v18)
        {
          v17 = v19;
        }

        v20 = *v17;
        v21 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((v3 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::IntegerVariableProto>);
        result = operations_research::sat::IntegerVariableProto::CopyFrom(v21, v20);
        ++v14;
        v15 += 8;
      }

      while (v14 < *(v2->__r_.__value_.__l.__size_ + 32));
    }
  }

  return result;
}

uint64_t std::__function::__func<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_8,std::allocator<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_8>,void ()(operations_research::sat::CpSolverResponse *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat12SolveCpModelERKNS0_12CpModelProtoEPNS0_5ModelEE3$_8")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat12SolveCpModelERKNS0_12CpModelProtoEPNS0_5ModelEE3$_8" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat12SolveCpModelERKNS0_12CpModelProtoEPNS0_5ModelEE3$_8"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat12SolveCpModelERKNS0_12CpModelProtoEPNS0_5ModelEE3$_8" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__func<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_9,std::allocator<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_9>,void ()(operations_research::sat::CpSolverResponse *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F3FCD8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_9,std::allocator<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_9>,void ()(operations_research::sat::CpSolverResponse *)>::operator()(uint64_t result, uint64_t a2)
{
  v2 = *(*a2 + 24);
  if (v2)
  {
    if ((v2 & 0x80000000) == 0)
    {
      v3 = *(result + 8);
      v4 = *(*a2 + 32);
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t std::__function::__func<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_9,std::allocator<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_9>,void ()(operations_research::sat::CpSolverResponse *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat12SolveCpModelERKNS0_12CpModelProtoEPNS0_5ModelEE3$_9")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat12SolveCpModelERKNS0_12CpModelProtoEPNS0_5ModelEE3$_9" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat12SolveCpModelERKNS0_12CpModelProtoEPNS0_5ModelEE3$_9"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat12SolveCpModelERKNS0_12CpModelProtoEPNS0_5ModelEE3$_9" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 std::__function::__func<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_10,std::allocator<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_10>,void ()(operations_research::sat::CpSolverResponse *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F3FD58;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_10,std::allocator<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_10>,void ()(operations_research::sat::CpSolverResponse *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(*a2 + 24);
  if (v4 >= 1)
  {
    v5 = *(*(a1 + 8) + 32);
    if (v4 > v5)
    {
      *(v3 + 24) = v5;
    }

    explicit = atomic_load_explicit(&qword_2810BDD68, memory_order_acquire);
    if (explicit)
    {
      if ((explicit & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else if ((absl::lts_20240722::flags_internal::FlagImpl::ReadOneBool(&FLAGS_cp_model_check_intermediate_solutions) & 1) == 0)
    {
      goto LABEL_10;
    }

    v7 = *(v3 + 24);
    if (v7)
    {
      if ((v7 & 0x80000000) == 0)
      {
        v8 = *(v3 + 32);
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    if (!operations_research::sat::SolutionIsFeasible(*(a1 + 8), 0, 0, 0, 0))
    {
      absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v10, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_solver.cc", 4170);
      absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v10);
    }
  }

LABEL_10:
  if (*(*(a1 + 16) + 286) == 1)
  {
    v9 = *(a1 + 8);
    if (v3 + 48 != v9 + 24)
    {
      if (*(v3 + 56) >= 1)
      {
        google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>((v3 + 48));
      }

      if (*(v9 + 32))
      {

        google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage((v3 + 48), (v9 + 24), google::protobuf::Arena::CopyConstruct<operations_research::sat::IntegerVariableProto>);
      }
    }
  }
}

void sub_23CB25F70(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_10,std::allocator<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_10>,void ()(operations_research::sat::CpSolverResponse *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat12SolveCpModelERKNS0_12CpModelProtoEPNS0_5ModelEE4$_10")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat12SolveCpModelERKNS0_12CpModelProtoEPNS0_5ModelEE4$_10" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat12SolveCpModelERKNS0_12CpModelProtoEPNS0_5ModelEE4$_10"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat12SolveCpModelERKNS0_12CpModelProtoEPNS0_5ModelEE4$_10" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__func<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_11,std::allocator<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_11>,void ()(operations_research::sat::CpSolverResponse const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F3FDD8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_11,std::allocator<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_11>,void ()(operations_research::sat::CpSolverResponse const&)>::operator()(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  v3 = *v2;
  v4 = v2[1];
  if (*v2 != v4)
  {
    do
    {
      v6 = *(v3 + 24);
      if (!v6)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      result = (*(*v6 + 48))(v6, a2);
      v3 += 32;
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t std::__function::__func<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_11,std::allocator<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_11>,void ()(operations_research::sat::CpSolverResponse const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat12SolveCpModelERKNS0_12CpModelProtoEPNS0_5ModelEE4$_11")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat12SolveCpModelERKNS0_12CpModelProtoEPNS0_5ModelEE4$_11" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat12SolveCpModelERKNS0_12CpModelProtoEPNS0_5ModelEE4$_11"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat12SolveCpModelERKNS0_12CpModelProtoEPNS0_5ModelEE4$_11" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__func<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_12,std::allocator<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_12>,void ()(operations_research::sat::CpSolverResponse const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F3FE58;
  a2[1] = v2;
  return result;
}

void std::__function::__func<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_12,std::allocator<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_12>,void ()(operations_research::sat::CpSolverResponse const&)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  absl::lts_20240722::Mutex::Lock(v1);
  atomic_store(1u, *(v1 + 24));
  absl::lts_20240722::Mutex::Unlock(v1);
}

uint64_t std::__function::__func<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_12,std::allocator<operations_research::sat::SolveCpModel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_12>,void ()(operations_research::sat::CpSolverResponse const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat12SolveCpModelERKNS0_12CpModelProtoEPNS0_5ModelEE4$_12")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat12SolveCpModelERKNS0_12CpModelProtoEPNS0_5ModelEE4$_12" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat12SolveCpModelERKNS0_12CpModelProtoEPNS0_5ModelEE4$_12"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat12SolveCpModelERKNS0_12CpModelProtoEPNS0_5ModelEE4$_12" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *operations_research::sat::Model::Delete<operations_research::sat::LinearModel>::~Delete(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_284F3FED8;
  a1[1] = 0;
  if (v2)
  {
    v3 = v2[4];
    if (v3)
    {
      v4 = v2[5];
      v5 = v2[4];
      if (v4 != v3)
      {
        do
        {
          operations_research::sat::ConstraintProto::~ConstraintProto((v4 - 64));
        }

        while (v4 != v3);
        v5 = v2[4];
      }

      v2[5] = v3;
      operator delete(v5);
    }

    v6 = v2[1];
    if (v6)
    {
      operator delete(v6);
    }

    MEMORY[0x23EED9460](v2, 0x1070C4026CC119ALL);
  }

  return a1;
}

void operations_research::sat::Model::Delete<operations_research::sat::LinearModel>::~Delete(void *a1)
{
  v1 = a1[1];
  *a1 = &unk_284F3FED8;
  a1[1] = 0;
  if (v1)
  {
    v2 = v1[4];
    if (v2)
    {
      v3 = v1[5];
      v4 = v1[4];
      if (v3 != v2)
      {
        do
        {
          operations_research::sat::ConstraintProto::~ConstraintProto((v3 - 64));
        }

        while (v3 != v2);
        v4 = v1[4];
      }

      v1[5] = v2;
      operator delete(v4);
    }

    v5 = v1[1];
    if (v5)
    {
      operator delete(v5);
    }

    MEMORY[0x23EED9460](v1, 0x1070C4026CC119ALL);
  }

  JUMPOUT(0x23EED9460);
}

uint64_t OUTLINED_FUNCTION_1_1(uint64_t a1, uint64_t a2)
{

  return absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(a1, a2, 184);
}

uint64_t operations_research::sat::FindCpModelSymmetries(uint64_t result, uint64_t a2, void *a3, _BYTE *a4)
{
  v19[441] = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    operations_research::sat::FindCpModelSymmetries(v19);
  }

  v7 = result;
  v9 = *a3;
  v8 = a3[1];
  if (v8 != *a3)
  {
    do
    {
      v11 = *--v8;
      v10 = v11;
      *v8 = 0;
      if (v11)
      {
        v12 = v10[4];
        if (v12)
        {
          v10[5] = v12;
          operator delete(v12);
        }

        v13 = v10[1];
        if (v13)
        {
          v10[2] = v13;
          operator delete(v13);
        }

        result = MEMORY[0x23EED9460](v10, 0x1010C40738DD8B8);
      }
    }

    while (v8 != v9);
  }

  a3[1] = v9;
  if (*(v7 + 756) > 2 || *(a2 + 32) <= 1000000 || *(a2 + 56) <= 1000000)
  {
    memset(v18, 0, sizeof(v18));
  }

  if (*a4 == 1)
  {
    operator new();
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23CB26E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (a49 < 0)
  {
    operator delete(__p);
  }

  (*(*v49 + 8))(v49);
  if (a23)
  {
    operator delete(a23);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void operations_research::sat::anonymous namespace::GenerateGraphForSymmetryDetection<util::StaticGraph<int,int>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a3)
  {
    v3 = *(a2 + 32);
    operator new();
  }
}

void sub_23CB2A1D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, unint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, unint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, unint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  operator delete(v67);
  if (a33 >= 2)
  {
    operator delete((a35 - (a34 & 1) - 8));
    if (a45 < 2)
    {
LABEL_3:
      if (!a65)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if (a45 < 2)
  {
    goto LABEL_3;
  }

  operator delete((a47 - (a46 & 1) - 8));
  if (!a65)
  {
LABEL_4:
    v69 = a50;
    if (!a50)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete((a67 - (a66 & 1) - 8));
  v69 = a50;
  if (!a50)
  {
LABEL_5:
    v70 = __p;
    if (!__p)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(v69);
  v70 = __p;
  if (!__p)
  {
LABEL_6:
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::vector<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>>,operations_research::sat::SchedulingConstraintHelper *>,absl::lts_20240722::hash_internal::Hash<std::vector<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>>>,std::equal_to<std::vector<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>>>,std::allocator<std::pair<std::vector<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>> const,operations_research::sat::SchedulingConstraintHelper *>>>::~raw_hash_set(&a56);
    v71 = a60;
    a60 = 0;
    if (!v71)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(v70);
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::vector<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>>,operations_research::sat::SchedulingConstraintHelper *>,absl::lts_20240722::hash_internal::Hash<std::vector<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>>>,std::equal_to<std::vector<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>>>,std::allocator<std::pair<std::vector<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>> const,operations_research::sat::SchedulingConstraintHelper *>>>::~raw_hash_set(&a56);
  v71 = a60;
  a60 = 0;
  if (!v71)
  {
LABEL_7:
    _Unwind_Resume(a1);
  }

LABEL_13:
  (*(*v71 + 8))(v71);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<operations_research::TimeLimit>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 40);
    if (v3)
    {
      *(v1 + 48) = v3;
      operator delete(v3);
    }

    MEMORY[0x23EED9460](v1, 0x1030C4094DBD242);
    return v2;
  }

  return result;
}

void operations_research::sat::DetectAndAddSymmetryToProto(operations_research::sat *this, const operations_research::sat::SatParameters *a2, operations_research::sat::CpModelProto *a3, operations_research::SolverLogger *a4)
{
  v73[6] = *MEMORY[0x277D85DE8];
  *(a2 + 4) |= 4u;
  v7 = *(a2 + 18);
  if (!v7)
  {
    v8 = *(a2 + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::Arena::DefaultConstruct<operations_research::sat::SymmetryProto>(v8);
    v7 = v9;
    *(a2 + 18) = v9;
  }

  operations_research::sat::SymmetryProto::Clear(v7);
  v65 = 0;
  v66 = 0;
  v67 = 0;
  operations_research::sat::FindCpModelSymmetries(this, a2, &v65, a3);
  v10 = v65;
  v11 = v66;
  if (v65 == v66)
  {
    v47 = *(a2 + 18);
    if (v47)
    {
      operations_research::sat::SymmetryProto::Clear(v47);
    }

    *(a2 + 4) &= ~4u;
    goto LABEL_48;
  }

  v61 = a3;
  do
  {
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((v7 + 16), google::protobuf::Arena::DefaultConstruct<operations_research::sat::SparsePermutationProto>);
    v13 = *(*v10 + 40) - *(*v10 + 32);
    if ((v13 >> 2) >= 1)
    {
      v14 = 0;
      v15 = (v13 >> 2) & 0x7FFFFFFF;
      do
      {
        v16 = *(*v10 + 32);
        if (v14)
        {
          v17 = 4 * v16[v14 - 1];
          v18 = *(v12 + 16);
          v19 = 4 * v16[v14];
          if (v17 != v19)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v17 = 0;
          v18 = *(v12 + 16);
          v19 = 4 * *v16;
          if (v19)
          {
LABEL_18:
            v24 = *(*v10 + 8);
            v25 = (v19 + v24);
            v26 = (v17 + v24);
            v27 = *(v12 + 20);
            v28 = v18;
            do
            {
              v29 = *v26;
              if (v28 == v27)
              {
                v31 = v12;
                google::protobuf::RepeatedField<int>::Grow(v12 + 16, v28, (v28 + 1));
                v12 = v31;
                LODWORD(v28) = *(v31 + 16);
                v27 = *(v31 + 20);
              }

              v30 = *(v12 + 24);
              v20 = v28 + 1;
              *(v12 + 16) = v28 + 1;
              *(v30 + 4 * v28) = v29;
              ++v26;
              v28 = (v28 + 1);
            }

            while (v26 != v25);
            goto LABEL_13;
          }
        }

        v20 = v18;
LABEL_13:
        v22 = *(v12 + 40);
        v21 = *(v12 + 44);
        if (v22 == v21)
        {
          v32 = v12;
          google::protobuf::RepeatedField<int>::Grow(v12 + 40, v21, (v21 + 1));
          v12 = v32;
          v22 = *(v32 + 40);
        }

        v23 = *(v12 + 48);
        *(v12 + 40) = v22 + 1;
        *(v23 + 4 * v22) = v20 - v18;
        ++v14;
      }

      while (v14 != v15);
    }

    v10 += 8;
  }

  while (v10 != v11);
  operations_research::sat::BasicOrbitopeExtraction(v65, (v66 - v65) >> 3, &v63);
  v34 = v63;
  if (v63 != v64)
  {
    if (*v61 == 1)
    {
      v73[0] = "[Symmetry] Found orbitope of size ";
      v73[1] = 34;
      v35 = absl::lts_20240722::numbers_internal::FastIntToBuffer(0xAAAAAAAAAAAAAAABLL * ((v64 - v63) >> 3), v72, v33);
      v71[0] = v72;
      v71[1] = v35 - v72;
      v70[0] = " x ";
      v70[1] = 3;
      v37 = absl::lts_20240722::numbers_internal::FastIntToBuffer((*(v63 + 1) - *v63) >> 2, v69, v36);
      v68[0] = v69;
      v68[1] = v37 - v69;
      absl::lts_20240722::StrCat(v73, v71, v70, v68, &__p);
      operations_research::SolverLogger::LogInfo(v61, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_symmetries.cc", 640, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v38 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((v7 + 40), google::protobuf::Arena::DefaultConstruct<operations_research::sat::DenseMatrixProto>);
    v34 = v63;
    v39 = v64;
    *(v38 + 36) = -1431655765 * ((v64 - v63) >> 3);
    *(v38 + 40) = (v34[1] - *v34) >> 2;
    if (v39 == v34)
    {
LABEL_41:
      v48 = v64;
      v49 = v34;
      if (v64 != v34)
      {
        v50 = v64;
        do
        {
          v52 = *(v50 - 3);
          v50 -= 3;
          v51 = v52;
          if (v52)
          {
            *(v48 - 2) = v51;
            operator delete(v51);
          }

          v48 = v50;
        }

        while (v50 != v34);
        v49 = v63;
      }

      v64 = v34;
      operator delete(v49);
      goto LABEL_48;
    }

    do
    {
      v40 = *v34;
      v41 = v34[1];
      if (*v34 != v41)
      {
        v42 = *(v38 + 16);
        v43 = *(v38 + 20);
        do
        {
          v44 = *v40;
          if (v42 == v43)
          {
            v46 = v38;
            google::protobuf::RepeatedField<int>::Grow(v38 + 16, v42, (v42 + 1));
            v38 = v46;
            LODWORD(v42) = *(v46 + 16);
            v43 = *(v46 + 20);
          }

          v45 = *(v38 + 24);
          *(v38 + 16) = v42 + 1;
          *(v45 + 4 * v42) = v44;
          ++v40;
          v42 = (v42 + 1);
        }

        while (v40 != v41);
      }

      v34 += 3;
    }

    while (v34 != v39);
    v34 = v63;
  }

  if (v34)
  {
    goto LABEL_41;
  }

LABEL_48:
  v53 = v65;
  if (v65)
  {
    v54 = v66;
    v55 = v65;
    if (v66 != v65)
    {
      do
      {
        v57 = *(v54 - 1);
        v54 -= 8;
        v56 = v57;
        *v54 = 0;
        if (v57)
        {
          v58 = v56[4];
          if (v58)
          {
            v56[5] = v58;
            operator delete(v58);
          }

          v59 = v56[1];
          if (v59)
          {
            v56[2] = v59;
            operator delete(v59);
          }

          MEMORY[0x23EED9460](v56, 0x1010C40738DD8B8);
        }
      }

      while (v54 != v53);
      v55 = v65;
    }

    v66 = v53;
    operator delete(v55);
  }

  v60 = *MEMORY[0x277D85DE8];
}

void sub_23CB2AAAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  std::vector<std::vector<int>>::~vector[abi:ne200100](&a16);
  std::vector<std::unique_ptr<operations_research::SparsePermutation>>::~vector[abi:ne200100](&a19);
  _Unwind_Resume(a1);
}

void sub_23CB2AB00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::vector<std::unique_ptr<operations_research::SparsePermutation>>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23CB2AB14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::vector<std::unique_ptr<operations_research::SparsePermutation>>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23CB2AB28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::vector<std::unique_ptr<operations_research::SparsePermutation>>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23CB2AB3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::vector<std::unique_ptr<operations_research::SparsePermutation>>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::vector<std::unique_ptr<operations_research::SparsePermutation>>::~vector[abi:ne200100](void *a1)
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
          v7 = v5[4];
          if (v7)
          {
            v5[5] = v7;
            operator delete(v7);
          }

          v8 = v5[1];
          if (v8)
          {
            v5[2] = v8;
            operator delete(v8);
          }

          MEMORY[0x23EED9460](v5, 0x1010C40738DD8B8);
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

uint64_t operations_research::sat::DetectAndExploitSymmetriesInPresolve(operations_research::sat *this, operations_research::sat::PresolveContext *a2)
{
  v301 = *MEMORY[0x277D85DE8];
  v2 = *(this + 49);
  v3 = *this;
  if (*(*this + 16))
  {
    v4 = this;
    operations_research::sat::PresolveContext::WriteObjectiveToProto(this);
    this = v4;
  }

  v279 = this;
  operations_research::sat::PresolveContext::WriteVariableDomainsToProto(this);
  v5 = *(v3 + 56);
  v273 = *(v3 + 32);
  if (v273 < 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    do
    {
      if (!operations_research::sat::PresolveContext::IsFixed(v279, v7) && (operations_research::sat::PresolveContext::VariableWasRemoved(v279, v7) & 1) == 0 && !operations_research::sat::PresolveContext::VariableIsNotUsedAnymore(v279, v7))
      {
        operations_research::sat::PresolveContext::GetAffineRelation(v279, v7, __x);
        if (v7 != __x[0])
        {
          v232 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*v279 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
          v233 = v232;
          if (*(v232 + 60) == 12)
          {
            v234 = *(v232 + 48);
          }

          else
          {
            operations_research::sat::ConstraintProto::clear_constraint(v232);
            *(v233 + 60) = 12;
            v235 = *(v233 + 8);
            if (v235)
            {
              v235 = *(v235 & 0xFFFFFFFFFFFFFFFELL);
            }

            v234 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v235);
            *(v233 + 48) = v234;
          }

          v237 = *(v234 + 16);
          v236 = *(v234 + 20);
          if (v237 == v236)
          {
            google::protobuf::RepeatedField<int>::Grow(v234 + 16, v236, (v236 + 1));
            v237 = *(v234 + 16);
            LODWORD(v236) = *(v234 + 20);
          }

          v238 = *(v234 + 24);
          v239 = (v237 + 1);
          *(v234 + 16) = v239;
          *(v238 + 4 * v237) = v7;
          v240 = *(v234 + 40);
          if (v240 == *(v234 + 44))
          {
            google::protobuf::RepeatedField<long long>::Grow(v234 + 40, *(v234 + 44));
            v240 = *(v234 + 40);
            v239 = *(v234 + 16);
            LODWORD(v236) = *(v234 + 20);
          }

          v241 = *(v234 + 48);
          *(v234 + 40) = v240 + 1;
          *(v241 + 8 * v240) = 1;
          v242 = __x[0];
          if (v239 == v236)
          {
            google::protobuf::RepeatedField<int>::Grow(v234 + 16, v239, (v239 + 1));
            LODWORD(v239) = *(v234 + 16);
          }

          v243 = *(v234 + 24);
          *(v234 + 16) = v239 + 1;
          *(v243 + 4 * v239) = v242;
          v244 = v294;
          v246 = *(v234 + 40);
          v245 = *(v234 + 44);
          if (v246 == v245)
          {
            google::protobuf::RepeatedField<long long>::Grow(v234 + 40, v245);
            v246 = *(v234 + 40);
          }

          v247 = *(v234 + 64);
          v248 = *(v234 + 48);
          *(v234 + 40) = v246 + 1;
          *(v248 + 8 * v246) = -v244;
          v249 = *v295;
          v250 = *(v234 + 68);
          if (v247 == v250)
          {
            google::protobuf::RepeatedField<long long>::Grow(v234 + 64, v250);
            v247 = *(v234 + 64);
            v250 = *(v234 + 68);
          }

          v251 = *(v234 + 72);
          v252 = v247 + 1;
          *(v234 + 64) = v247 + 1;
          *(v251 + 8 * v247) = v249;
          v253 = *v295;
          if (v247 + 1 == v250)
          {
            google::protobuf::RepeatedField<long long>::Grow(v234 + 64, v250);
            v252 = *(v234 + 64);
            v251 = *(v234 + 72);
          }

          ++v6;
          *(v234 + 64) = v252 + 1;
          *(v251 + 8 * v252) = v253;
        }
      }

      ++v7;
    }

    while (v273 != v7);
  }

  v284 = 0;
  v285 = 0;
  v286 = 0;
  operations_research::sat::FindCpModelSymmetries(v2, v3, &v284, *(v279 + 48));
  v9 = v273;
  v10 = (*v279 + 48);
  if (*v10)
  {
    v11 = *v10 + 7;
  }

  else
  {
    v11 = *v279 + 48;
  }

  if (v6 >= 1)
  {
    if (!*(*v279 + 64))
    {
      v12 = (v11 + 8 * v5);
      v13 = v6 & 0x7FFFFFFF;
      do
      {
        google::protobuf::internal::InternalOutOfLineDeleteMessageLite(*v12++, v8);
        --v13;
      }

      while (v13);
    }

    google::protobuf::internal::RepeatedPtrFieldBase::CloseGap(v10, v5, v6);
  }

  v15 = v284;
  v14 = v285;
  if (v284 == v285)
  {
    if (!v284)
    {
      goto LABEL_400;
    }

    goto LABEL_389;
  }

  if (*(v3 + 56) < 1)
  {
    v17 = 0;
    v20 = v279;
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v18 = (v3 + 48);
    v19 = 8;
    v20 = v279;
    do
    {
      if (*v18)
      {
        v21 = (*v18 + v19 - 1);
      }

      else
      {
        v21 = (v3 + 48);
      }

      v22 = *v21;
      if (*(v22 + 60) == 26)
      {
        v23 = *(v22 + 48) + 16;
        v24 = (v17 >> 3) + 1;
        if (v24 >> 61)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        if (v17 >> 3 != -1)
        {
          if (!(v24 >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v25 = (8 * (v17 >> 3));
        *v25 = v23;
        memcpy(0, 0, v17);
        v20 = v279;
        v17 = (v25 + 1);
      }

      if (*v18)
      {
        v26 = (*v18 + v19 - 1);
      }

      else
      {
        v26 = (v3 + 48);
      }

      v27 = *v26;
      if (*(v27 + 60) == 29)
      {
        v28 = *(v27 + 48) + 16;
        v29 = (v17 >> 3) + 1;
        if (v29 >> 61)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        if (v17 >> 3 != -1)
        {
          if (!(v29 >> 61))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v30 = (8 * (v17 >> 3));
        *v30 = v28;
        memcpy(0, 0, v17);
        v20 = v279;
        v17 = (v30 + 1);
      }

      ++v16;
      v19 += 8;
    }

    while (v16 < *(v3 + 56));
    v15 = v284;
    v14 = v285;
    v9 = v273;
  }

  operations_research::sat::GetOrbits(v9, v15, (v14 - v15) >> 3, &v282);
  memset(&v281, 0, sizeof(v281));
  if (v9 < 1)
  {
    v33 = 0;
    v274 = 0;
    v35 = -1;
  }

  else
  {
    begin = 0;
    v33 = 0;
    v34 = 0;
    v274 = 0;
    v35 = -1;
    do
    {
      v39 = *(v282 + v34);
      if (v39 != -1)
      {
        v40 = v281.__end_ - v33;
        if (v40 <= v39)
        {
          v41 = v39 + 1;
          __x[0] = 0;
          if (v41 <= v40)
          {
            if (v41 < v40)
            {
              v281.__end_ = &v33[v41];
            }
          }

          else
          {
            std::vector<int>::__append(&v281, v41 - v40, __x);
            begin = v281.__begin_;
          }

          v33 = begin;
        }

        v36 = v33[v39];
        v33[v39] = v36 + 1;
        v37 = v274;
        v38 = v36 + 1 <= v274;
        if (v36 + 1 > v274)
        {
          v37 = v36 + 1;
        }

        v274 = v37;
        if (!v38)
        {
          v35 = v34;
        }
      }

      v34 = (v34 + 1);
    }

    while (v9 != v34);
  }

  v268 = v17;
  v277 = v35;
  if (**(v20 + 48))
  {
    memset(&v290, 0, sizeof(v290));
    end = v281.__end_;
    if (v33 == v281.__end_)
    {
      v43 = 0;
      v54 = 0;
    }

    else
    {
      v43 = 0;
      do
      {
        while (1)
        {
          while (1)
          {
            v44 = *v33;
            if (*v33)
            {
              break;
            }

            if (++v33 == end)
            {
              goto LABEL_75;
            }
          }

          if (v43 >= v290.__end_cap_.__value_)
          {
            break;
          }

          *v43++ = v44;
          v290.__end_ = v43;
          if (++v33 == end)
          {
            goto LABEL_75;
          }
        }

        v45 = v290.__begin_;
        v46 = v43 - v290.__begin_;
        v47 = v43 - v290.__begin_;
        v48 = v47 + 1;
        if ((v47 + 1) >> 62)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v49 = v290.__end_cap_.__value_ - v290.__begin_;
        if ((v290.__end_cap_.__value_ - v290.__begin_) >> 1 > v48)
        {
          v48 = v49 >> 1;
        }

        if (v49 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v50 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v48;
        }

        if (v50)
        {
          if (!(v50 >> 62))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v51 = v47;
        v52 = (4 * v47);
        v53 = &v52[-v51];
        *v52 = v44;
        v43 = v52 + 1;
        memcpy(v53, v45, v46);
        v290.__begin_ = v53;
        v290.__end_ = v43;
        v290.__end_cap_.__value_ = 0;
        if (v45)
        {
          operator delete(v45);
        }

        LODWORD(v9) = v273;
        v35 = v277;
        v290.__end_ = v43;
        ++v33;
      }

      while (v33 != end);
LABEL_75:
      v54 = v290.__begin_;
      v20 = v279;
    }

    v55 = 126 - 2 * __clz(v43 - v54);
    if (v43 == v54)
    {
      v56 = 0;
    }

    else
    {
      v56 = v55;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::greater<int> &,int *,true>(v54, v43, __x, v56, 1);
    v57 = v290.__end_ - v290.__begin_;
    v58 = (v290.__end_ - v290.__begin_);
    if (v58 >= 11)
    {
      if (v58 > 9)
      {
        if (v57 != 40)
        {
          v290.__end_ = v290.__begin_ + 10;
        }
      }

      else
      {
        std::vector<int>::__append(&v290, 10 - v58);
      }
    }

    v59 = *(v20 + 48);
    if (*v59 == 1)
    {
      v60 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v58, v292, v31);
      *&v291 = v292;
      *(&v291 + 1) = v60 - v292;
      absl::lts_20240722::strings_internal::JoinAlgorithm<std::__wrap_iter<int const*>,absl::lts_20240722::strings_internal::AlphaNumFormatterImpl>(v290.__begin_, v290.__end_, ",", 1uLL, v288);
      size = HIBYTE(v288[0].__r_.__value_.__r.__words[2]);
      if ((v288[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v62 = v288;
      }

      else
      {
        v62 = v288[0].__r_.__value_.__r.__words[0];
      }

      if ((v288[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v288[0].__r_.__value_.__l.__size_;
      }

      v63 = &byte_23CE7F131;
      *__x = "[Symmetry] ";
      v294 = 11;
      *v295 = v291;
      if ((v57 >> 2) > (v290.__end_ - v290.__begin_))
      {
        v63 = ",...";
      }

      *&v295[16] = " orbits with sizes: ";
      v296 = 20;
      v297 = v62;
      v298 = size;
      v299 = v63;
      v300 = 4 * ((v57 >> 2) > (v290.__end_ - v290.__begin_));
      absl::lts_20240722::strings_internal::CatPieces(__x, 5, __p);
      LODWORD(v9) = v273;
      operations_research::SolverLogger::LogInfo(v59, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_symmetries.cc", 817, __p);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v288[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v288[0].__r_.__value_.__l.__data_);
      }
    }

    if (v290.__begin_)
    {
      v290.__end_ = v290.__begin_;
      operator delete(v290.__begin_);
    }
  }

  if (v274 < 3 || operations_research::sat::PresolveContext::IsFixed(v20, v35) || !operations_research::sat::PresolveContext::CanBeUsedAsLiteral(v20, v35))
  {
    v73 = 0;
    if (!v9)
    {
      goto LABEL_166;
    }

LABEL_111:
    if ((v9 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  *__x = 0;
  v294 = 0;
  *&v295[8] = xmmword_23CE306D0;
  *v295 = 0;
  v298 = 0;
  v299 = 0;
  v300 = 0;
  if ((operations_research::sat::LoadModelForProbing(v20, __x, v31) & 1) == 0)
  {
    goto LABEL_164;
  }

  v64 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(__x);
  v65 = operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(__x);
  v66 = v65;
  v67 = ~v35 <= v35 ? v35 : ~v35;
  HIDWORD(v69) = *(*(v65 + 48) + 4 * v67);
  LODWORD(v69) = v35;
  v68 = v69 >> 31;
  v70 = *(v64 + 216);
  if (((*(*(v70 + 24) + ((v68 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> ((v69 >> 31) & 0x3E)) & 3) == 0 && (operations_research::sat::SatSolver::EnqueueDecisionAndBackjumpOnConflict(v64, v68), *(v64 + 296) == 1) && ((v283 - v282) >> 2) >= 1)
  {
    v72 = 0;
    v73 = 0;
    v9 = 0;
    v74 = ((v283 - v282) >> 2) & 0x7FFFFFFF;
    v75 = *(v282 + v35);
    __src = v66;
    do
    {
      if (*(v282 + v72) == v75)
      {
        v9 = (v9 + 1);
        v225 = *(*(v66 + 48) + 4 * v72);
        if ((*(*(v70 + 24) + (((2 * v225) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> ((2 * (v225 & 0x1F)) | 1u)))
        {
          v226 = v73 >> 2;
          if (((v73 >> 2) + 1) >> 62)
          {
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          if (v73 >> 2 != -1)
          {
            if (!(((v73 >> 2) + 1) >> 62))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          *(4 * v226) = v72;
          v227 = 4 * v226 + 4;
          memcpy(0, 0, v73);
          v35 = v277;
          v73 = v227;
          v66 = __src;
        }
      }

      ++v72;
    }

    while (v74 != v72);
    if (v73)
    {
      v20 = v279;
      v228 = *(v279 + 48);
      v17 = v268;
      if (*v228 == 1)
      {
        *&v291 = "[Symmetry] Num fixable by binary propagation in orbit: ";
        *(&v291 + 1) = 55;
        v229 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v73 >> 2, &v290.__end_cap_, v71);
        v290.__begin_ = &v290.__end_cap_;
        v290.__end_ = (v229 - &v290.__end_cap_);
        __p[0].__r_.__value_.__r.__words[0] = " / ";
        __p[0].__r_.__value_.__l.__size_ = 3;
        v231 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v9, &v288[0].__r_.__value_.__s.__data_[16], v230);
        v288[0].__r_.__value_.__r.__words[0] = &v288[0].__r_.__value_.__r.__words[2];
        v288[0].__r_.__value_.__l.__size_ = v231 - &v288[0].__r_.__value_.__r.__words[2];
        absl::lts_20240722::StrCat(&v291, &v290, __p, v288, &v287);
        operations_research::SolverLogger::LogInfo(v228, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_symmetries.cc", 718, &v287);
        LODWORD(v9) = v273;
        if (SHIBYTE(v287.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v287.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        LODWORD(v9) = v273;
      }
    }

    else
    {
      v20 = v279;
      LODWORD(v9) = v273;
      v17 = v268;
    }
  }

  else
  {
LABEL_164:
    v73 = 0;
  }

  operations_research::sat::Model::~Model(__x);
  if (v9)
  {
    goto LABEL_111;
  }

LABEL_166:
  if (!v17)
  {
    v99 = v73 >> 2;
    if (v73 >> 2 <= (v73 >> 2))
    {
      goto LABEL_171;
    }

    goto LABEL_168;
  }

  v269 = v73;
  v76 = 0;
  for (i = 0; i != v17; ++i)
  {
    v78 = **i;
    if (v78)
    {
      v275 = v73;
      v278 = v35;
      v79 = 0;
      v271 = *i;
      v80 = *(*i + 1);
      v81 = 4 * v78;
      v82 = 0;
      v272 = i;
      do
      {
        v84 = *v80;
        if ((v84 & 0x80000000) == 0 && !operations_research::sat::PresolveContext::IsFixed(v20, *v80))
        {
          v85 = *(v282 + v84);
          if (v85 != -1)
          {
            if (!*(4 * v85))
            {
              if (v82 < v76)
              {
                *v82 = v85;
                v82 += 4;
              }

              else
              {
                v86 = v82;
                v87 = v82 >> 2;
                v88 = v87 + 1;
                if ((v87 + 1) >> 62)
                {
                  std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                }

                if (v76 >> 1 > v88)
                {
                  v88 = v76 >> 1;
                }

                if (v88)
                {
                  if (!(v88 >> 62))
                  {
                    operator new();
                  }

                  std::__throw_bad_array_new_length[abi:ne200100]();
                }

                v89 = (4 * v87);
                *v89 = v85;
                v82 = (v89 + 1);
                memcpy(0, 0, v86);
                v76 = 0;
                i = v272;
              }
            }

            v83 = *(4 * v85);
            if (v83 > 0)
            {
              ++v79;
            }

            *(4 * v85) = v83 + 1;
          }

          v20 = v279;
        }

        ++v80;
        v81 -= 4;
      }

      while (v81);
      if (v79 <= (v275 >> 2))
      {
        v97 = 0;
        if (v82)
        {
          v17 = v268;
          v35 = v278;
          do
          {
            v98 = *v97++;
            *(4 * v98) = 0;
          }

          while (v97 != v82);
        }

        else
        {
          v17 = v268;
          v35 = v278;
        }

        v73 = v275;
      }

      else
      {
        v90 = *v271;
        if (v90)
        {
          v276 = v76;
          v91 = *(v271 + 1);
          v92 = 4 * v90;
          v35 = -1;
          v73 = 0;
          do
          {
            while (1)
            {
              while (1)
              {
                v93 = *v91;
                if ((*v91 & 0x80000000) == 0 && !operations_research::sat::PresolveContext::IsFixed(v20, *v91))
                {
                  v94 = *(v282 + v93);
                  if (v94 != -1)
                  {
                    break;
                  }
                }

                ++v91;
                v92 -= 4;
                if (!v92)
                {
                  goto LABEL_114;
                }
              }

              if (v35 == -1 || v281.__begin_[v94] > v281.__begin_[*(v282 + v35)])
              {
                v35 = v93;
              }

              if (!*(4 * v94))
              {
                break;
              }

              *(4 * v94) = 0;
              ++v91;
              v92 -= 4;
              if (!v92)
              {
                goto LABEL_114;
              }
            }

            v95 = v73;
            v96 = v73 >> 2;
            if (((v73 >> 2) + 1) >> 62)
            {
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            if (v73 >> 2 != -1)
            {
              if (!(((v73 >> 2) + 1) >> 62))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            *(4 * v96) = v93;
            v73 = 4 * v96 + 4;
            memcpy(0, 0, v95);
            v20 = v279;
            *(4 * v94) = 0;
            ++v91;
            v92 -= 4;
          }

          while (v92);
LABEL_114:
          v17 = v268;
          v76 = v276;
        }

        else
        {
          v35 = -1;
          v73 = 0;
          v17 = v268;
        }
      }
    }
  }

  v99 = v73 >> 2;
  if (v73 >> 2 > (v269 >> 2))
  {
LABEL_168:
    v100 = *(v20 + 48);
    if (*v100 == 1)
    {
      *__x = "[Symmetry] Num fixable by intersecting at_most_one with orbits: ";
      v294 = 64;
      v101 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v99, v292, v31);
      *&v291 = v292;
      *(&v291 + 1) = v101 - v292;
      v290.__begin_ = " largest_orbit: ";
      v290.__end_ = 16;
      v103 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v274, &__p[0].__r_.__value_.__s.__data_[16], v102);
      __p[0].__r_.__value_.__r.__words[0] = &__p[0].__r_.__value_.__r.__words[2];
      __p[0].__r_.__value_.__l.__size_ = v103 - &__p[0].__r_.__value_.__r.__words[2];
      absl::lts_20240722::StrCat(__x, &v291, &v290, __p, v288);
      operations_research::SolverLogger::LogInfo(v100, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_symmetries.cc", 890, v288);
      if (SHIBYTE(v288[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v288[0].__r_.__value_.__l.__data_);
      }
    }
  }

LABEL_171:
  operations_research::sat::BasicOrbitopeExtraction(v284, (v285 - v284) >> 3, v288);
  v105 = v288[0].__r_.__value_.__l.__size_;
  v106 = v288[0].__r_.__value_.__r.__words[0];
  if (v288[0].__r_.__value_.__r.__words[0] != v288[0].__r_.__value_.__l.__size_)
  {
    v107 = *(v20 + 48);
    if (*v107 == 1)
    {
      *__x = "[Symmetry] Found orbitope of size ";
      v294 = 34;
      v108 = absl::lts_20240722::numbers_internal::FastIntToBuffer(0xAAAAAAAAAAAAAAABLL * ((v288[0].__r_.__value_.__l.__size_ - v288[0].__r_.__value_.__r.__words[0]) >> 3), v292, v104);
      *&v291 = v292;
      *(&v291 + 1) = v108 - v292;
      v290.__begin_ = " x ";
      v290.__end_ = 3;
      v110 = absl::lts_20240722::numbers_internal::FastIntToBuffer((*(v288[0].__r_.__value_.__r.__words[0] + 8) - *v288[0].__r_.__value_.__l.__data_) >> 2, &__p[0].__r_.__value_.__r.__words[2], v109);
      __p[0].__r_.__value_.__r.__words[0] = &__p[0].__r_.__value_.__r.__words[2];
      __p[0].__r_.__value_.__l.__size_ = v110 - &__p[0].__r_.__value_.__r.__words[2];
      absl::lts_20240722::StrCat(__x, &v291, &v290, __p, &v287);
      operations_research::SolverLogger::LogInfo(v107, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_symmetries.cc", 912, &v287);
      if (SHIBYTE(v287.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v287.__r_.__value_.__l.__data_);
      }

      v105 = v288[0].__r_.__value_.__l.__size_;
      v106 = v288[0].__r_.__value_.__r.__words[0];
    }
  }

  if (v106 == v105)
  {
    if (!v73)
    {
      if (!v106)
      {
        goto LABEL_384;
      }

      goto LABEL_377;
    }

    goto LABEL_236;
  }

  if (*(*v279 + 16))
  {
    v111 = *(v279 + 65);
    v112 = v111 >> 1;
    v113 = v106[1] - *v106;
    if (v113 == (v111 >> 1))
    {
      v114 = *(v279 + 64);
      if (v114 > 1)
      {
        v116 = 0;
        _X12 = *(v279 + 66);
        v118 = v106;
        do
        {
          v122 = 0;
          __asm { PRFM            #4, [X12] }

          v129 = **v118;
          v130 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v129) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v129));
          v123 = (_X12 >> 12) ^ (v130 >> 7);
          v131 = vdup_n_s8(v130 & 0x7F);
          while (1)
          {
            v119 = v123 & v114;
            v120 = *(_X12 + v119);
            v121 = vceq_s8(v120, v131);
            if (v121)
            {
              break;
            }

LABEL_191:
            if (vceq_s8(v120, 0x8080808080808080))
            {
              goto LABEL_194;
            }

            v122 += 8;
            v123 = v122 + v119;
          }

          while (*(*(v279 + 67) + 16 * ((v119 + (__clz(__rbit64(v121)) >> 3)) & v114)) != v129)
          {
            v121 &= ((v121 & 0x8080808080808080) - 1) & 0x8080808080808080;
            if (!v121)
            {
              goto LABEL_191;
            }
          }

          ++v116;
LABEL_194:
          v118 += 3;
        }

        while (v118 != v105);
      }

      else if (v111 > 1)
      {
        v116 = 0;
        v132 = v106;
        do
        {
          v133 = *v132;
          v132 += 3;
          if (*(v279 + 132) == *v133)
          {
            ++v116;
          }
        }

        while (v132 != v105);
      }

      else
      {
        v115 = v106;
        do
        {
          v115 += 3;
        }

        while (v115 != v105);
        v116 = 0;
      }

      if (v116 == 1)
      {
        operations_research::sat::PresolveContext::WriteObjectiveToProto(v279);
        if (*(*v279 + 128))
        {
          v134 = *(*v279 + 128);
        }

        else
        {
          v134 = &operations_research::sat::_CpObjectiveProto_default_instance_;
        }

        v135 = *(v134 + 4);
        if (v135 != v112)
        {
          absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v113, v135, "num_objective_terms == obj.vars().size()");
        }

        if (v112 < 2)
        {
LABEL_337:
          operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(v279);
          operator new();
        }

        v136 = 0;
        v137 = (v111 >> 1) - 1;
        while (1)
        {
          v138 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*v279 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
          v139 = v138;
          if (*(v138 + 60) == 12)
          {
            v140 = *(v138 + 48);
          }

          else
          {
            operations_research::sat::ConstraintProto::clear_constraint(v138);
            *(v139 + 60) = 12;
            v141 = *(v139 + 8);
            if (v141)
            {
              v141 = *(v141 & 0xFFFFFFFFFFFFFFFELL);
            }

            v140 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v141);
            *(v139 + 48) = v140;
          }

          v142 = v134[3];
          v143 = *(v142 + v136);
          v145 = *(v140 + 16);
          v144 = *(v140 + 20);
          if (v145 == v144)
          {
            google::protobuf::RepeatedField<int>::Grow(v140 + 16, v144, (v144 + 1));
            v145 = *(v140 + 16);
            v144 = *(v140 + 20);
            v142 = v134[3];
          }

          v146 = *(v140 + 24);
          v147 = v145 + 1;
          *(v140 + 16) = v145 + 1;
          *(v146 + 4 * v145) = v143;
          v148 = *(v142 + v136 + 1);
          if (v145 + 1 == v144)
          {
            google::protobuf::RepeatedField<int>::Grow(v140 + 16, v144, (v144 + 1));
            v147 = *(v140 + 16);
            v146 = *(v140 + 24);
          }

          *(v140 + 16) = v147 + 1;
          *(v146 + 4 * v147) = v148;
          v150 = *(v140 + 40);
          v149 = *(v140 + 44);
          if (v150 == v149)
          {
            google::protobuf::RepeatedField<long long>::Grow(v140 + 40, v149);
            v158 = *(v140 + 40);
            v149 = *(v140 + 44);
            v151 = *(v140 + 48);
            v152 = v158 + 1;
            *(v140 + 40) = v158 + 1;
            *(v151 + 8 * v158) = 1;
            if (v158 + 1 == v149)
            {
LABEL_223:
              google::protobuf::RepeatedField<long long>::Grow(v140 + 40, v149);
              v152 = *(v140 + 40);
              v151 = *(v140 + 48);
            }
          }

          else
          {
            v151 = *(v140 + 48);
            v152 = v150 + 1;
            *(v140 + 40) = v150 + 1;
            *(v151 + 8 * v150) = 1;
            if (v150 + 1 == v149)
            {
              goto LABEL_223;
            }
          }

          v154 = (v140 + 64);
          v153 = *(v140 + 64);
          *(v140 + 40) = v152 + 1;
          *(v151 + 8 * v152) = -1;
          v155 = *(v140 + 68);
          if (v153 == v155)
          {
            google::protobuf::RepeatedField<long long>::Grow(v140 + 64, v155);
            v159 = *(v140 + 64);
            v155 = *(v140 + 68);
            v156 = *(v140 + 72);
            v157 = v159 + 1;
            *(v140 + 64) = v159 + 1;
            *(v156 + 8 * v159) = 0;
            if (v159 + 1 != v155)
            {
              goto LABEL_220;
            }

LABEL_225:
            google::protobuf::RepeatedField<long long>::Grow(v140 + 64, v155);
            v160 = *(v140 + 64);
            v161 = *(v140 + 72);
            *v154 = v160 + 1;
            *(v161 + 8 * v160) = 0x7FFFFFFFFFFFFFFFLL;
            if (v137 == ++v136)
            {
              goto LABEL_337;
            }
          }

          else
          {
            v156 = *(v140 + 72);
            v157 = v153 + 1;
            *(v140 + 64) = v153 + 1;
            *(v156 + 8 * v153) = 0;
            if (v153 + 1 == v155)
            {
              goto LABEL_225;
            }

LABEL_220:
            *v154 = v157 + 1;
            *(v156 + 8 * v157) = 0x7FFFFFFFFFFFFFFFLL;
            if (v137 == ++v136)
            {
              goto LABEL_337;
            }
          }
        }
      }
    }
  }

  v162 = (v106[1] - *v106) >> 2;
  if (v162 >= 2)
  {
    v163 = 0;
    v164 = 0;
    v165 = 0xAAAAAAAAAAAAAAABLL * ((v105 - v106) >> 3);
    v166 = v162 - 1;
    v167 = v279;
    v168 = v268;
    do
    {
      if (v165 <= v163)
      {
        break;
      }

      v164 += v166;
      ++v163;
      --v166;
    }

    while (v166);
    if (v99 <= v164)
    {
      goto LABEL_232;
    }

LABEL_236:
    if (v73)
    {
      *(v282 + MEMORY[0]);
      operator new();
    }

    if (v281.__begin_[*(v282 + v35)] > 1)
    {
      operator new();
    }

    goto LABEL_376;
  }

  v167 = v279;
  v168 = v268;
  if (v99)
  {
    goto LABEL_236;
  }

LABEL_232:
  if (v273)
  {
    if ((v273 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (v168)
  {
    for (j = 0; j != v168; ++j)
    {
      v170 = *j;
      v171 = **j;
      if (v171)
      {
        v172 = *(v170 + 1);
        v173 = 4 * v171;
        v174 = v172;
        do
        {
          v175 = *v174;
          if (~*v174 > *v174)
          {
            v175 = ~v175;
          }

          if (*(4 * v175) == 1)
          {
            absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(1, 1, "tmp_sizes[var] != 1");
          }

          *(4 * v175) = 1;
          ++v174;
          v173 -= 4;
        }

        while (v173);
        v176 = *v170;
        if (v176)
        {
          v177 = 4 * v176;
          do
          {
            v179 = *v172++;
            v178 = v179;
            if (~v179 > v179)
            {
              v178 = ~v178;
            }

            *(4 * v178) = 0;
            v177 -= 4;
          }

          while (v177);
        }
      }
    }
  }

  if (v288[0].__r_.__value_.__r.__words[0] != v288[0].__r_.__value_.__l.__size_)
  {
    v267 = *(v288[0].__r_.__value_.__r.__words[0] + 8) - *v288[0].__r_.__value_.__l.__data_;
    if ((v267 >> 2) >= 2)
    {
      operations_research::sat::GetOrbitopeOrbits(v273, v288[0].__r_.__value_.__l.__data_, 0xAAAAAAAAAAAAAAABLL * ((v288[0].__r_.__value_.__l.__size_ - v288[0].__r_.__value_.__r.__words[0]) >> 3), __x);
      *v292 = 0;
      v291 = 0uLL;
      if (v288[0].__r_.__value_.__l.__size_ != v288[0].__r_.__value_.__r.__words[0])
      {
        if (((v288[0].__r_.__value_.__l.__size_ - v288[0].__r_.__value_.__r.__words[0]) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      memset(&v290, 0, sizeof(v290));
      if (v168)
      {
        v180 = 0;
        do
        {
          v270 = v180;
          v181 = *v180;
          v182 = **v180;
          if (v182)
          {
            v183 = *(v181 + 1);
            v184 = 4 * v182;
            do
            {
              v185 = *v183;
              if (!operations_research::sat::PresolveContext::IsFixed(v167, *v183))
              {
                if (~v185 <= v185)
                {
                  v186 = v185;
                }

                else
                {
                  v186 = ~v185;
                }

                v187 = *(*__x + 4 * v186);
                if (v187 != -1)
                {
                  if (!*(4 * v187))
                  {
                    operator new();
                  }

                  ++*(4 * v187);
                  if ((v185 & 0x80000000) == 0)
                  {
                    ++*(4 * v187);
                  }
                }

                v167 = v279;
              }

              ++v183;
              v184 -= 4;
            }

            while (v184);
            v168 = v268;
          }

          v180 = v270 + 1;
        }

        while (v270 + 1 != v168);
        v188 = *(&v291 + 1);
        if (!*(&v291 + 1))
        {
LABEL_286:
          operator new();
        }
      }

      else
      {
        v188 = *(&v291 + 1);
        if (!*(&v291 + 1))
        {
          goto LABEL_286;
        }
      }

      v189 = 0;
      v190 = 0;
      do
      {
        if (((*(v291 + ((v189 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v189) & 1) != 0 && (v267 >> 2) >= 2)
        {
          operations_research::sat::PresolveContext::StoreBooleanEqualityRelation(v167, **(v288[0].__r_.__value_.__r.__words[0] + 24 * v189), *(*(v288[0].__r_.__value_.__r.__words[0] + 24 * v189) + 4));
          operator new();
        }

        v189 = ++v190;
      }

      while (v188 > v190);
      goto LABEL_286;
    }
  }

  if (v288[0].__r_.__value_.__l.__size_ - v288[0].__r_.__value_.__r.__words[0] == 24)
  {
    if (((*(v288[0].__r_.__value_.__r.__words[0] + 8) - *v288[0].__r_.__value_.__l.__data_) >> 2) >= 2)
    {
      if (operations_research::sat::PresolveContext::CanBeUsedAsLiteral(v167, **v288[0].__r_.__value_.__l.__data_) && operations_research::sat::PresolveContext::CanBeUsedAsLiteral(v167, *(*v288[0].__r_.__value_.__l.__data_ + 4)))
      {
        operations_research::sat::PresolveContext::AddImplication(v167, *(*v288[0].__r_.__value_.__l.__data_ + 4), **v288[0].__r_.__value_.__l.__data_);
        operator new();
      }

      v191 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite((*v167 + 48), google::protobuf::Arena::DefaultConstruct<operations_research::sat::ConstraintProto>);
      v192 = v191;
      if (*(v191 + 60) == 12)
      {
        v193 = *(v191 + 48);
      }

      else
      {
        operations_research::sat::ConstraintProto::clear_constraint(v191);
        *(v192 + 60) = 12;
        v194 = *(v192 + 8);
        if (v194)
        {
          v194 = *(v194 & 0xFFFFFFFFFFFFFFFELL);
        }

        v193 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v194);
        *(v192 + 48) = v193;
      }

      v196 = *(v193 + 40);
      v195 = *(v193 + 44);
      if (v196 == v195)
      {
        google::protobuf::RepeatedField<long long>::Grow(v193 + 40, v195);
        v196 = *(v193 + 40);
      }

      v197 = *(v193 + 48);
      *(v193 + 40) = v196 + 1;
      *(v197 + 8 * v196) = 1;
      if (*(v192 + 60) == 12)
      {
        v198 = *(v192 + 48);
      }

      else
      {
        operations_research::sat::ConstraintProto::clear_constraint(v192);
        *(v192 + 60) = 12;
        v199 = *(v192 + 8);
        if (v199)
        {
          v199 = *(v199 & 0xFFFFFFFFFFFFFFFELL);
        }

        v198 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v199);
        *(v192 + 48) = v198;
      }

      v200 = **v288[0].__r_.__value_.__l.__data_;
      v202 = *(v198 + 16);
      v201 = *(v198 + 20);
      if (v202 == v201)
      {
        google::protobuf::RepeatedField<int>::Grow(v198 + 16, v201, (v201 + 1));
        v202 = *(v198 + 16);
      }

      v203 = *(v198 + 24);
      *(v198 + 16) = v202 + 1;
      *(v203 + 4 * v202) = v200;
      if (*(v192 + 60) == 12)
      {
        v204 = *(v192 + 48);
      }

      else
      {
        operations_research::sat::ConstraintProto::clear_constraint(v192);
        *(v192 + 60) = 12;
        v205 = *(v192 + 8);
        if (v205)
        {
          v205 = *(v205 & 0xFFFFFFFFFFFFFFFELL);
        }

        v204 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v205);
        *(v192 + 48) = v204;
      }

      v207 = *(v204 + 40);
      v206 = *(v204 + 44);
      if (v207 == v206)
      {
        google::protobuf::RepeatedField<long long>::Grow(v204 + 40, v206);
        v207 = *(v204 + 40);
      }

      v208 = *(v204 + 48);
      *(v204 + 40) = v207 + 1;
      *(v208 + 8 * v207) = -1;
      if (*(v192 + 60) == 12)
      {
        v209 = *(v192 + 48);
      }

      else
      {
        operations_research::sat::ConstraintProto::clear_constraint(v192);
        *(v192 + 60) = 12;
        v210 = *(v192 + 8);
        if (v210)
        {
          v210 = *(v210 & 0xFFFFFFFFFFFFFFFELL);
        }

        v209 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v210);
        *(v192 + 48) = v209;
      }

      v211 = *(*v288[0].__r_.__value_.__l.__data_ + 4);
      v213 = *(v209 + 16);
      v212 = *(v209 + 20);
      if (v213 == v212)
      {
        google::protobuf::RepeatedField<int>::Grow(v209 + 16, v212, (v212 + 1));
        v213 = *(v209 + 16);
      }

      v214 = *(v209 + 24);
      *(v209 + 16) = v213 + 1;
      *(v214 + 4 * v213) = v211;
      if (*(v192 + 60) == 12)
      {
        v215 = *(v192 + 48);
      }

      else
      {
        operations_research::sat::ConstraintProto::clear_constraint(v192);
        *(v192 + 60) = 12;
        v216 = *(v192 + 8);
        if (v216)
        {
          v216 = *(v216 & 0xFFFFFFFFFFFFFFFELL);
        }

        v215 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v216);
        *(v192 + 48) = v215;
      }

      v218 = *(v215 + 64);
      v217 = *(v215 + 68);
      if (v218 == v217)
      {
        google::protobuf::RepeatedField<long long>::Grow(v215 + 64, v217);
        v218 = *(v215 + 64);
      }

      v219 = *(v215 + 72);
      *(v215 + 64) = v218 + 1;
      *(v219 + 8 * v218) = 0;
      if (*(v192 + 60) == 12)
      {
        v220 = *(v192 + 48);
      }

      else
      {
        operations_research::sat::ConstraintProto::clear_constraint(v192);
        *(v192 + 60) = 12;
        v221 = *(v192 + 8);
        if (v221)
        {
          v221 = *(v221 & 0xFFFFFFFFFFFFFFFELL);
        }

        v220 = google::protobuf::Arena::DefaultConstruct<operations_research::sat::LinearConstraintProto>(v221);
        *(v192 + 48) = v220;
      }

      v223 = *(v220 + 64);
      v222 = *(v220 + 68);
      if (v223 == v222)
      {
        google::protobuf::RepeatedField<long long>::Grow(v220 + 64, v222);
        v223 = *(v220 + 64);
      }

      v224 = *(v220 + 72);
      *(v220 + 64) = v223 + 1;
      *(v224 + 8 * v223) = 0x7FFFFFFFFFFFFFFFLL;
      operator new();
    }

    operations_research::sat::PresolveContext::UpdateNewConstraintsVariableUsage(v167);
  }

LABEL_376:
  v106 = v288[0].__r_.__value_.__r.__words[0];
  if (!v288[0].__r_.__value_.__r.__words[0])
  {
    goto LABEL_384;
  }

LABEL_377:
  v254 = v288[0].__r_.__value_.__l.__size_;
  v255 = v106;
  if (v288[0].__r_.__value_.__l.__size_ != v106)
  {
    v256 = v288[0].__r_.__value_.__l.__size_;
    do
    {
      v258 = *(v256 - 24);
      v256 -= 24;
      v257 = v258;
      if (v258)
      {
        *(v254 - 16) = v257;
        operator delete(v257);
      }

      v254 = v256;
    }

    while (v256 != v106);
    v255 = v288[0].__r_.__value_.__r.__words[0];
  }

  v288[0].__r_.__value_.__l.__size_ = v106;
  operator delete(v255);
LABEL_384:
  if (v281.__begin_)
  {
    v281.__end_ = v281.__begin_;
    operator delete(v281.__begin_);
  }

  if (v282)
  {
    v283 = v282;
    operator delete(v282);
  }

  v15 = v284;
  if (v284)
  {
LABEL_389:
    v259 = v285;
    v260 = v15;
    if (v285 != v15)
    {
      do
      {
        v262 = *--v259;
        v261 = v262;
        *v259 = 0;
        if (v262)
        {
          v263 = v261[4];
          if (v263)
          {
            v261[5] = v263;
            operator delete(v263);
          }

          v264 = v261[1];
          if (v264)
          {
            v261[2] = v264;
            operator delete(v264);
          }

          MEMORY[0x23EED9460](v261, 0x1010C40738DD8B8);
        }
      }

      while (v259 != v15);
      v260 = v284;
    }

    v285 = v15;
    operator delete(v260);
  }

LABEL_400:
  v265 = *MEMORY[0x277D85DE8];
  return 1;
}