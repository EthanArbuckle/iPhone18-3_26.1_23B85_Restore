void sub_23C93BE6C(_Unwind_Exception *a1)
{
  operations_research::sat::LinearExpr::~LinearExpr(&STACK[0x2A0]);
  v3 = STACK[0x218];
  if (STACK[0x218])
  {
    STACK[0x220] = v3;
    operator delete(v3);
  }

  v4 = *(v1 - 128);
  if (v4)
  {
    *(v1 - 120) = v4;
    operator delete(v4);
  }

  if (STACK[0x230])
  {
    operator delete(STACK[0x238]);
  }

  _Unwind_Resume(a1);
}

void ORToolsCpAllocator::FindMinMaxSchedule(CpGraph **this, uint64_t *a2, uint64_t *a3)
{
  *a2 = 0x7FFFFFFFFFFFFFFFLL;
  *a3 = 0x7FFFFFFFFFFFFFFFLL;
  CpGraph::GetLayers(this[2], 1, &v12);
  v6 = v12;
  v7 = v13;
  if (v12 != v13)
  {
    do
    {
      v8 = *v6;
      v11 = -1;
      CpGraph::GetLayerSchedule(this[2], v8, &v11);
      v9 = v11;
      v10 = *a2;
      if (v11 < *a2)
      {
        v10 = v11;
      }

      *a2 = v10;
      *a3 = v9;
      ++v6;
    }

    while (v6 != v7);
    v6 = v12;
  }

  if (v6)
  {
    v13 = v6;
    operator delete(v6);
  }
}

void sub_23C93C240(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t ORToolsCpAllocator::GetChainExecutionVariableMaxCycle(ORToolsCpAllocator *this, const LayerCycleAndFootprintEstimator *a2, const LayerCycleAndFootprintEstimator *a3)
{
  MaxCycleWithoutStall = LayerCycleAndFootprintEstimator::GetMaxCycleWithoutStall(a2, 0, 0);
  v6 = LayerCycleAndFootprintEstimator::GetMaxCycleWithoutStall(a3, 0, 0);
  if (MaxCycleWithoutStall <= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = MaxCycleWithoutStall;
  }

  return v7 + LayerCycleAndFootprintEstimator::GetOverheadCycles(a2);
}

uint64_t ORToolsCpAllocator::ExecuteDeferred(void)::$_0::~$_0(uint64_t a1)
{
  operations_research::sat::CpModelProto::~CpModelProto((a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t ORToolsCpAllocator::UpdateAllocationDecisionMap(ORToolsCpAllocator *this, const operations_research::sat::CpSolverResponse *a2)
{
  v4 = *(a2 + 66);
  if (v4 != 4 && v4 != 2)
  {
LABEL_70:
    ORToolsCpBasedAllocatorUtil::PrintSolverResult(this + 30, *(this + 2), this + 23, this + 8, this + 13, this + 18, a2);
    return 1;
  }

  CpGraph::GetTensors(*(this + 2), &__p);
  j = __p;
  v51 = v58;
  if (__p == v58)
  {
LABEL_68:
    if (j)
    {
      v58 = j;
      operator delete(j);
    }

    goto LABEL_70;
  }

  while (1)
  {
    v56 = *j;
    v7 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>>>::find<unsigned long long>(this + 3, &v56);
    if (v7 && (CpAllocUtils::IsL2Dependent(*(v7 + 24)) & 1) != 0)
    {
      goto LABEL_58;
    }

    v53 = &v56;
    v8 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 23, &v56);
    v9 = operations_research::sat::SolutionBooleanValue(a2, *v8[3], *(v8[3] + 8));
    v53 = &v56;
    v10 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 23, &v56);
    v11 = operations_research::sat::SolutionBooleanValue(a2, *(v10[3] + 16), *(v10[3] + 24));
    v53 = &v56;
    v12 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 23, &v56);
    v13 = operations_research::sat::SolutionBooleanValue(a2, *(v12[3] + 32), *(v12[3] + 40));
    if ((v9 ^ v11) == v13)
    {
      break;
    }

    v14 = *(this + 2);
    v53 = v56;
    v15 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((v14 + 64), &v53);
    v16 = (v14 + 104);
    if (v15)
    {
      v16 = v15 + 3;
    }

    if (v16[1] == *v16)
    {
      v18 = 0;
    }

    else
    {
      v59 = -1;
      v55 = -1;
      ORToolsCpAllocator::FindL2DepPair(this, v56, &v59, &v55);
      v53 = &v59;
      v17 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 8, &v59);
      v18 = operations_research::sat::SolutionBooleanValue(a2, *(v17[3] + 160), *(v17[3] + 168));
      LOBYTE(v9) = !v18 && v9;
    }

    v19 = *(this + 2);
    v53 = v56;
    v20 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((v19 + 24), &v53);
    v48 = v18;
    v49 = v13;
    v50 = v11;
    v52 = j;
    v21 = (v19 + 104);
    if (v20)
    {
      v21 = (v20 + 3);
    }

    v23 = *v21;
    v22 = v21[1];
    if (*v21 == v22)
    {
      v24 = 0;
      if (!v9)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v24 = 0;
      do
      {
        v25 = *v23;
        v54[0] = 0;
        v54[1] = 0;
        v53 = v54;
        if (CpAllocGraph::GetInPlacePorts(*(this + 2), v25, &v53))
        {
          for (i = 0; ; ++i)
          {
            v27 = *(this + 2);
            v59 = v25;
            v28 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((v27 + 64), &v59);
            v29 = (v27 + 104);
            if (v28)
            {
              v29 = v28 + 3;
            }

            if (i >= (v29[1] - *v29) >> 3)
            {
              break;
            }

            v30 = *(this + 2);
            v59 = v25;
            v31 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((v30 + 64), &v59);
            v32 = (v30 + 104);
            if (v31)
            {
              v32 = v31 + 3;
            }

            v33 = *(*v32 + 8 * i);
            v34 = v54[0];
            if (v33 == v56 && v54[0] != 0)
            {
              v36 = v54;
              do
              {
                v37 = v34[4];
                v38 = v37 >= i;
                v39 = v37 < i;
                if (v38)
                {
                  v36 = v34;
                }

                v34 = v34[v39];
              }

              while (v34);
              if (v36 != v54 && v36[4] <= i)
              {
                v55 = v25;
                v59 = &v55;
                v40 = (*(std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 8, &v55)[3] + 192) + 16 * i);
                v24 = operations_research::sat::SolutionBooleanValue(a2, *v40, v40[1]);
                LOBYTE(v9) = !v24 && v9;
              }
            }
          }
        }

        std::__tree<std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>>>::destroy(&v53, v54[0]);
        ++v23;
      }

      while (v23 != v22);
      if (!v9)
      {
LABEL_48:
        j = v52;
        if (v50)
        {
          v53 = &v56;
          v43 = std::__hash_table<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 3, &v56);
          v44 = 1;
          goto LABEL_57;
        }

        if (v49)
        {
          v53 = &v56;
          v43 = std::__hash_table<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 3, &v56);
          v44 = 2;
          goto LABEL_57;
        }

        if (v48 || v24)
        {
          if (!v24 && v48)
          {
            v45 = *(*(this + 2) + 432);
            if (!v45)
            {
LABEL_65:
              v53 = &v56;
              v43 = std::__hash_table<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 3, &v56);
              v44 = 3;
              goto LABEL_57;
            }

            while (1)
            {
              v46 = v45[4];
              if (v46 <= v56)
              {
                if (v46 >= v56)
                {
                  v53 = &v56;
                  v43 = std::__hash_table<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 3, &v56);
                  v44 = 7;
                  goto LABEL_57;
                }

                ++v45;
              }

              v45 = *v45;
              if (!v45)
              {
                goto LABEL_65;
              }
            }
          }

          v53 = &v56;
          v43 = std::__hash_table<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 3, &v56);
          if (v48 || !v24)
          {
            v44 = 5;
          }

          else
          {
            v44 = 4;
          }

LABEL_57:
          *(v43 + 24) = v44;
        }

        goto LABEL_58;
      }
    }

    v41 = *(*(this + 2) + 432);
    for (j = v52; v41; v41 = *v41)
    {
      v42 = v41[4];
      if (v42 <= v56)
      {
        if (v42 >= v56)
        {
          v53 = &v56;
          v43 = std::__hash_table<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 3, &v56);
          v44 = 6;
          goto LABEL_57;
        }

        ++v41;
      }
    }

    v53 = &v56;
    *(std::__hash_table<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 3, &v56) + 24) = 0;
LABEL_58:
    if (++j == v51)
    {
      j = __p;
      goto LABEL_68;
    }
  }

  if (__p)
  {
    v58 = __p;
    operator delete(__p);
  }

  return 0;
}

void sub_23C93C8A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *ORToolsCpAllocator::GetEarlyAllocationDecision(CpGraph **this, unint64_t a2, BOOL *a3, BOOL *a4)
{
  *a3 = 1;
  CpGraph::GetInputTensors(this[2], a2, &__p);
  v8 = __p;
  v9 = v15;
  while (v8 != v9)
  {
    v13 = *v8;
    v10 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>(this + 3, &v13);
    if (!v10 || *(v10 + 24))
    {
      *a3 = 0;
      break;
    }

    ++v8;
  }

  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  __p = CpGraph::GetOutputTensor(this[2], a2);
  result = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>(this + 3, &__p);
  if (result)
  {
    v12 = *(result + 24) == 0;
  }

  else
  {
    v12 = 0;
  }

  *a4 = v12;
  return result;
}

void sub_23C93C9D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ORToolsCpAllocator::VerifyParallelDecision(CpGraph **this, const operations_research::sat::CpSolverResponse *a2)
{
  v4 = this + 10;
  do
  {
    v4 = *v4;
    v5 = v4 == 0;
    if (!v4)
    {
      break;
    }

    v6 = operations_research::sat::SolutionBooleanValue(a2, *(v4[3] + 160), *(v4[3] + 168));
    v7 = operations_research::sat::SolutionBooleanValue(a2, *(v4[3] + 176), *(v4[3] + 184));
    OutputTensor = CpGraph::GetOutputTensor(this[2], v4[2]);
    v8 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>(this + 23, &OutputTensor);
    if (!v8)
    {
      return 0;
    }

    v9 = operations_research::sat::SolutionBooleanValue(a2, *(v8[3] + 32), *(v8[3] + 40));
    CpGraph::GetInputTensors(this[2], v4[2], &v16);
    v10 = v16;
    v11 = v17;
    if (v16 == v17)
    {
      v13 = 1;
      if (!v16)
      {
        continue;
      }
    }

    else
    {
      while (1)
      {
        v15 = *v10;
        v12 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>(this + 23, &v15);
        if (v12)
        {
          if (operations_research::sat::SolutionBooleanValue(a2, *(v12[3] + 32), *(v12[3] + 40)))
          {
            break;
          }
        }

        if (++v10 == v11)
        {
          v13 = 1;
          goto LABEL_12;
        }
      }

      v13 = 0;
LABEL_12:
      v10 = v16;
      if (!v16)
      {
        continue;
      }
    }

    v17 = v10;
    operator delete(v10);
  }

  while ((v13 & (!v6 && !v7 && !v9)) == operations_research::sat::SolutionBooleanValue(a2, *(v4[3] + 216), *(v4[3] + 224)));
  return v5;
}

void sub_23C93CB60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ORToolsTensorAllocationVariable const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

char *std::vector<operations_research::sat::BoolVar>::__insert_with_size[abi:ne200100]<std::__wrap_iter<operations_research::sat::BoolVar const*>,std::__wrap_iter<operations_research::sat::BoolVar const*>>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 4)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 4);
    if (v12 >> 60)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 3 > v12)
    {
      v12 = v14 >> 3;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 4;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<operations_research::sat::BoolVar>>(a1, v15);
    }

    v32 = 16 * v16;
    v33 = 16 * a5;
    v34 = (16 * v16);
    do
    {
      v35 = *v7++;
      *v34++ = v35;
      v33 -= 16;
    }

    while (v33);
    memcpy((v32 + 16 * a5), v5, a1[1] - v5);
    v36 = *a1;
    v37 = v32 + 16 * a5 + a1[1] - v5;
    a1[1] = v5;
    v38 = v5 - v36;
    v39 = (v32 - (v5 - v36));
    memcpy(v39, v36, v38);
    v40 = *a1;
    *a1 = v39;
    a1[1] = v37;
    a1[2] = 0;
    if (v40)
    {
      operator delete(v40);
    }

    return (16 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 4;
  if (v18 >= a5)
  {
    v23 = &__dst[16 * a5];
    v24 = &v10[-16 * a5];
    v25 = a1[1];
    while (v24 < v10)
    {
      v26 = *v24;
      v24 += 16;
      *v25++ = v26;
    }

    a1[1] = v25;
    if (v10 != v23)
    {
      memmove(v23, __dst, v10 - v23 - 4);
    }

    v31 = 16 * a5 - 4;
    goto LABEL_34;
  }

  v19 = &__src[v17];
  v20 = a1[1];
  v21 = v20;
  while (v19 != a4)
  {
    v22 = *v19;
    v19 += 16;
    *v21 = v22;
    v21 += 16;
    v20 += 16;
  }

  a1[1] = v20;
  if (v18 >= 1)
  {
    v27 = &__dst[16 * a5];
    v28 = &v20[-16 * a5];
    v29 = v20;
    while (v28 < v10)
    {
      v30 = *v28;
      v28 += 16;
      *v29 = v30;
      v29 += 16;
    }

    a1[1] = v29;
    if (v21 != v27)
    {
      memmove(&__dst[16 * a5], __dst, v20 - v27 - 4);
    }

    if (v10 != v5)
    {
      v31 = v17 - 4;
LABEL_34:
      memmove(v5, v7, v31);
    }
  }

  return v5;
}

operations_research::sat::CpModelProto *operations_research::sat::CpModelProto::CpModelProto(operations_research::sat::CpModelProto *a1, uint64_t a2, operations_research::sat::CpModelProto *a3)
{
  operations_research::sat::CpModelProto::CpModelProto(a1, a2);
  if (a1 != a3)
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
    }

    v6 = *(a3 + 1);
    if (v6)
    {
      v6 = *(v6 & 0xFFFFFFFFFFFFFFFELL);
    }

    if (v5 == v6)
    {
      operations_research::sat::CpModelProto::InternalSwap(a1, a3);
    }

    else
    {
      operations_research::sat::CpModelProto::CopyFrom(a1, a3);
    }
  }

  return a1;
}

uint64_t std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,CpAllocUtils::AllocationType> const&>(a1, i + 2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,CpAllocUtils::AllocationType> const&>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>>>::__deallocate_node(uint64_t a1, ORToolsLayerScheduleVariable **a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::unique_ptr<ORToolsLayerScheduleVariable>::reset[abi:ne200100](v2 + 3, 0);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsChainScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsChainScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsChainScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsChainScheduleVariable>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsChainScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsChainScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsChainScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsChainScheduleVariable>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsChainScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsChainScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsChainScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsChainScheduleVariable>>>>::__deallocate_node(uint64_t a1, ORToolsChainScheduleVariable **a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::unique_ptr<ORToolsChainScheduleVariable>::reset[abi:ne200100](v2 + 3, 0);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsL2DepScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsL2DepScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsL2DepScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsL2DepScheduleVariable>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsL2DepScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsL2DepScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsL2DepScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsL2DepScheduleVariable>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsL2DepScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsL2DepScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsL2DepScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsL2DepScheduleVariable>>>>::__deallocate_node(uint64_t a1, ORToolsL2DepScheduleVariable **a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::unique_ptr<ORToolsL2DepScheduleVariable>::reset[abi:ne200100](v2 + 3, 0);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>>>::__deallocate_node(uint64_t a1, ORToolsCpL2AccessVariable **a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::unique_ptr<ORToolsTensorAllocationVariable>::reset[abi:ne200100](v2 + 3, 0);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

ORToolsCpL2AccessVariable *std::unique_ptr<ORToolsTensorAllocationVariable>::reset[abi:ne200100](ORToolsCpL2AccessVariable **a1, ORToolsCpL2AccessVariable *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    ORToolsCpL2AccessVariable::~ORToolsCpL2AccessVariable(result);

    JUMPOUT(0x23EED9460);
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_23C93D598(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsTensorAllocationVariable>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::unique_ptr<ORToolsTensorAllocationVariable>::reset[abi:ne200100](v2 + 3, 0);
    }

    operator delete(v2);
  }

  return a1;
}

ORToolsLayerScheduleVariable *std::unique_ptr<ORToolsLayerScheduleVariable>::reset[abi:ne200100](ORToolsLayerScheduleVariable **a1, ORToolsLayerScheduleVariable *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    ORToolsLayerScheduleVariable::~ORToolsLayerScheduleVariable(result);

    JUMPOUT(0x23EED9460);
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_23C93D890(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::unique_ptr<ORToolsLayerScheduleVariable>::reset[abi:ne200100](v2 + 3, 0);
    }

    operator delete(v2);
  }

  return a1;
}

ORToolsChainScheduleVariable *std::unique_ptr<ORToolsChainScheduleVariable>::reset[abi:ne200100](ORToolsChainScheduleVariable **a1, ORToolsChainScheduleVariable *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    ORToolsChainScheduleVariable::~ORToolsChainScheduleVariable(result);

    JUMPOUT(0x23EED9460);
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsChainScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsChainScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsChainScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsChainScheduleVariable>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_23C93DB88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsChainScheduleVariable>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsChainScheduleVariable>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsChainScheduleVariable>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsChainScheduleVariable>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::unique_ptr<ORToolsChainScheduleVariable>::reset[abi:ne200100](v2 + 3, 0);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>>>::find<unsigned long long>(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

ORToolsL2DepScheduleVariable *std::unique_ptr<ORToolsL2DepScheduleVariable>::reset[abi:ne200100](ORToolsL2DepScheduleVariable **a1, ORToolsL2DepScheduleVariable *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    ORToolsL2DepScheduleVariable::~ORToolsL2DepScheduleVariable(result);

    JUMPOUT(0x23EED9460);
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsL2DepScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsL2DepScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsL2DepScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsL2DepScheduleVariable>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_23C93DF34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsL2DepScheduleVariable>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsL2DepScheduleVariable>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsL2DepScheduleVariable>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsL2DepScheduleVariable>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::unique_ptr<ORToolsL2DepScheduleVariable>::reset[abi:ne200100](v2 + 3, 0);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::set<unsigned long>::set[abi:ne200100]<std::__wrap_iter<unsigned long long *>>(void *result, uint64_t a2, uint64_t a3)
{
  result[1] = 0;
  result[2] = 0;
  *result = result + 1;
  if (a2 != a3)
  {
    std::__tree<unsigned long>::__emplace_hint_unique_impl<unsigned long long &>();
  }

  return result;
}

void *std::shared_ptr<ORToolsCpAllocator>::shared_ptr[abi:ne200100]<ORToolsCpAllocator,0>(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  if (!v3)
  {
    a1[1] = 0;
LABEL_5:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v4 = std::__shared_weak_count::lock(v3);
  a1[1] = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  return a1;
}

void std::__throw_bad_weak_ptr[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82830] + 16;
  __cxa_throw(exception, MEMORY[0x277D82708], MEMORY[0x277D82630]);
}

void *std::__function::__func<ORToolsCpAllocator::ExecuteDeferred(void)::$_0,std::allocator<ORToolsCpAllocator::ExecuteDeferred(void)::$_0>,std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)> ()(void)>::~__func(void *a1)
{
  *a1 = &unk_284F38A80;
  operations_research::sat::CpModelProto::~CpModelProto((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<ORToolsCpAllocator::ExecuteDeferred(void)::$_0,std::allocator<ORToolsCpAllocator::ExecuteDeferred(void)::$_0>,std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)> ()(void)>::~__func(void *a1)
{
  *a1 = &unk_284F38A80;
  operations_research::sat::CpModelProto::~CpModelProto((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x23EED9460);
}

void sub_23C93E2A4(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ORToolsCpAllocator::ExecuteDeferred(void)::$_0,std::allocator<ORToolsCpAllocator::ExecuteDeferred(void)::$_0>,std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)> ()(void)>::__clone(void *a1, void *a2)
{
  v3 = a1[1];
  v2 = a1[2];
  *a2 = &unk_284F38A80;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return operations_research::sat::CpModelProto::CpModelProto((a2 + 3), 0, (a1 + 3));
}

void sub_23C93E32C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ORToolsCpAllocator::ExecuteDeferred(void)::$_0,std::allocator<ORToolsCpAllocator::ExecuteDeferred(void)::$_0>,std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)> ()(void)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<ORToolsCpAllocator::ExecuteDeferred(void)::$_0,std::allocator<ORToolsCpAllocator::ExecuteDeferred(void)::$_0>,std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)> ()(void)>::destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void sub_23C93E474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  ORToolsCpAllocator::ExecuteDeferred(void)::$_0::operator() const(void)::{lambda(void)#1}::~(&a9);
  operations_research::sat::CpSolverResponse::~CpSolverResponse(&a45);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ORToolsCpAllocator::ExecuteDeferred(void)::$_0,std::allocator<ORToolsCpAllocator::ExecuteDeferred(void)::$_0>,std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__alloc_func<ORToolsCpAllocator::ExecuteDeferred(void)::$_0,std::allocator<ORToolsCpAllocator::ExecuteDeferred(void)::$_0>,std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)> ()(void)>::destroy[abi:ne200100](uint64_t a1)
{
  operations_research::sat::CpModelProto::~CpModelProto((a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

uint64_t ORToolsCpAllocator::ExecuteDeferred(void)::$_0::operator() const(void)::{lambda(void)#1}::~(uint64_t a1)
{
  operations_research::sat::CpSolverResponse::~CpSolverResponse((a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void *std::__function::__func<ORToolsCpAllocator::ExecuteDeferred(void)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<ORToolsCpAllocator::ExecuteDeferred(void)::$_0::operator() const(void)::{lambda(void)#1}>,std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>::~__func(void *a1)
{
  *a1 = &unk_284F38B00;
  operations_research::sat::CpSolverResponse::~CpSolverResponse((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<ORToolsCpAllocator::ExecuteDeferred(void)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<ORToolsCpAllocator::ExecuteDeferred(void)::$_0::operator() const(void)::{lambda(void)#1}>,std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>::~__func(void *a1)
{
  *a1 = &unk_284F38B00;
  operations_research::sat::CpSolverResponse::~CpSolverResponse((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x23EED9460);
}

void sub_23C93E6B8(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ORToolsCpAllocator::ExecuteDeferred(void)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<ORToolsCpAllocator::ExecuteDeferred(void)::$_0::operator() const(void)::{lambda(void)#1}>,std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>::__clone(void *a1, void *a2)
{
  v3 = a1[1];
  v2 = a1[2];
  *a2 = &unk_284F38B00;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return operations_research::sat::CpSolverResponse::CpSolverResponse((a2 + 3), 0, (a1 + 3));
}

void sub_23C93E740(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ORToolsCpAllocator::ExecuteDeferred(void)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<ORToolsCpAllocator::ExecuteDeferred(void)::$_0::operator() const(void)::{lambda(void)#1}>,std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<ORToolsCpAllocator::ExecuteDeferred(void)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<ORToolsCpAllocator::ExecuteDeferred(void)::$_0::operator() const(void)::{lambda(void)#1}>,std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>::destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<ORToolsCpAllocator::ExecuteDeferred(void)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<ORToolsCpAllocator::ExecuteDeferred(void)::$_0::operator() const(void)::{lambda(void)#1}>,std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>::operator()@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = ORToolsCpAllocator::UpdateAllocationDecisionMap(*(a1 + 8), (a1 + 24));
  if ((result & 1) == 0)
  {
    goto LABEL_9;
  }

  v5 = *(a1 + 288);
  if (v5 == 2)
  {
    result = *(a1 + 8);
    *(result + 816) = 1;
  }

  else
  {
    result = *(a1 + 8);
    *(result + 816) = v5 == 4;
    if (v5 != 4)
    {
      goto LABEL_9;
    }
  }

  result = ORToolsCpAllocator::VerifyParallelDecision(result, (a1 + 24));
  v6 = *(a1 + 8);
  if ((result & 1) == 0)
  {
    *(v6 + 816) = 0;
    goto LABEL_9;
  }

  if ((*(v6 + 816) & 1) == 0)
  {
LABEL_9:
    v7 = 0;
    *a2 = 0;
    goto LABEL_10;
  }

  result = std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>::unordered_map(a2, v6 + 24);
  v7 = 1;
LABEL_10:
  a2[40] = v7;
  return result;
}

uint64_t std::__function::__func<ORToolsCpAllocator::ExecuteDeferred(void)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<ORToolsCpAllocator::ExecuteDeferred(void)::$_0::operator() const(void)::{lambda(void)#1}>,std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

operations_research::sat::CpSolverResponse *operations_research::sat::CpSolverResponse::CpSolverResponse(operations_research::sat::CpSolverResponse *a1, uint64_t a2, operations_research::sat::CpSolverResponse *a3)
{
  operations_research::sat::CpSolverResponse::CpSolverResponse(a1, a2);
  if (a1 != a3)
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
    }

    v6 = *(a3 + 1);
    if (v6)
    {
      v6 = *(v6 & 0xFFFFFFFFFFFFFFFELL);
    }

    if (v5 == v6)
    {
      operations_research::sat::CpSolverResponse::InternalSwap(a1, a3);
    }

    else
    {
      operations_research::sat::CpSolverResponse::CopyFrom(a1, a3);
    }
  }

  return a1;
}

void std::__function::__alloc_func<ORToolsCpAllocator::ExecuteDeferred(void)::$_0::operator() const(void)::{lambda(void)#1},std::allocator<ORToolsCpAllocator::ExecuteDeferred(void)::$_0::operator() const(void)::{lambda(void)#1}>,std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>::destroy[abi:ne200100](uint64_t a1)
{
  operations_research::sat::CpSolverResponse::~CpSolverResponse((a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void ORToolsCpMemCacheAllocatorUtil::PrintRegion(void *a1, uint64_t a2, void *a3)
{
  if (a1[16])
  {
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "[Region", 7);
    if (*(a2 + 335) < 0)
    {
      std::string::__init_copy_ctor_external(&v40, *(a2 + 312), *(a2 + 320));
    }

    else
    {
      v40 = *(a2 + 312);
    }

    if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v40;
    }

    else
    {
      v7 = v40.__r_.__value_.__r.__words[0];
    }

    if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v40.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v40.__r_.__value_.__l.__size_;
    }

    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v7, size);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "]", 1);
    std::ios_base::getloc((v10 + *(*v10 - 24)));
    v11 = std::locale::use_facet(&v38, MEMORY[0x277D82680]);
    (v11->__vftable[2].~facet_0)(v11, 10);
    std::locale::~locale(&v38);
    std::ostream::put();
    std::ostream::flush();
    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    CpGraph::GetTensors(a2, &v40);
    v13 = v40.__r_.__value_.__l.__size_;
    v12 = v40.__r_.__value_.__r.__words[0];
    if (v40.__r_.__value_.__r.__words[0] != v40.__r_.__value_.__l.__size_)
    {
      v14 = MEMORY[0x277D82680];
      do
      {
        v39 = *v12;
        memset(&v38, 0, sizeof(v38));
        CpGraph::GetTensorName(a2, v39, &v38);
        __val = 0uLL;
        CpGraph::GetTensorLiverange(a2, v39, &__val);
        v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "tensor=", 7);
        if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = &v38;
        }

        else
        {
          v16 = v38.__r_.__value_.__r.__words[0];
        }

        if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v17 = HIBYTE(v38.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v17 = v38.__r_.__value_.__l.__size_;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v16, v17);
        v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "\n\tliverange=", 12);
        std::to_string(&v36, __val);
        if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v19 = &v36;
        }

        else
        {
          v19 = v36.__r_.__value_.__r.__words[0];
        }

        if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = HIBYTE(v36.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v20 = v36.__r_.__value_.__l.__size_;
        }

        v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v19, v20);
        v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " to ", 4);
        std::to_string(&__p, *(&__val + 1));
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
          v24 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v24 = __p.__r_.__value_.__l.__size_;
        }

        v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, p_p, v24);
        std::ios_base::getloc((v25 + *(*v25 - 24)));
        v26 = std::locale::use_facet(&v41, v14);
        (v26->__vftable[2].~facet_0)(v26, 10);
        std::locale::~locale(&v41);
        std::ostream::put();
        std::ostream::flush();
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v36.__r_.__value_.__l.__data_);
        }

        v27 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>(a3, &v39);
        if (v27)
        {
          v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "\t\tearly_decision = ", 19);
          v29 = *(v27 + 6);
          v30 = &byte_23CE7F131;
          if (v29 == 1)
          {
            v30 = "kNoAlloc";
          }

          if (v29)
          {
            v31 = v30;
          }

          else
          {
            v31 = "kAlloc";
          }

          std::string::basic_string[abi:ne200100]<0>(&v36, v31);
          if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v32 = &v36;
          }

          else
          {
            v32 = v36.__r_.__value_.__r.__words[0];
          }

          if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v33 = HIBYTE(v36.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v33 = v36.__r_.__value_.__l.__size_;
          }

          v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v32, v33);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "\n", 1);
          if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v36.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "\t\tearly_decision = unset\n", 25);
        }

        if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v38.__r_.__value_.__l.__data_);
        }

        ++v12;
      }

      while (v12 != v13);
      v12 = v40.__r_.__value_.__r.__words[0];
    }

    if (v12)
    {
      v40.__r_.__value_.__l.__size_ = v12;
      operator delete(v12);
    }
  }
}

void sub_23C93EF78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, std::locale a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  std::locale::~locale(&a23);
  if (a35 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ORToolsCpMemCacheAllocatorUtil::PrintConstraintProblem(void *a1, uint64_t a2, operations_research::sat *a3, CpGraph *a4, uint64_t a5)
{
  if (a1[16])
  {
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "[Variables] \n", 13);
    std::ios_base::getloc((v7 + *(*v7 - 24)));
    v8 = std::locale::use_facet(v42, MEMORY[0x277D82680]);
    (v8->__vftable[2].~facet_0)(v8, 10);
    std::locale::~locale(v42);
    std::ostream::put();
    std::ostream::flush();
    v9 = *(a2 + 24);
    if (v9)
    {
      v10 = (v9 + 7);
    }

    else
    {
      v10 = (a2 + 24);
    }

    if (*(a2 + 32))
    {
      v11 = MEMORY[0x277D82680];
      operations_research::sat::IntegerVariableProto::IntegerVariableProto(v42, 0, *v10);
      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "\nvars: ", 7);
      std::to_string(&v43, 0);
      if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = &v43;
      }

      else
      {
        v13 = v43.__r_.__value_.__r.__words[0];
      }

      if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v43.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v43.__r_.__value_.__l.__size_;
      }

      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v13, size);
      std::ios_base::getloc((v15 + *(*v15 - 24)));
      v16 = std::locale::use_facet(&v44, v11);
      (v16->__vftable[2].~facet_0)(v16, 10);
      std::locale::~locale(&v44);
      std::ostream::put();
      std::ostream::flush();
      if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v43.__r_.__value_.__l.__data_);
      }

      google::protobuf::Message::DebugString(&v43);
    }

    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "\n\n[Constraints] \n", 17);
    std::ios_base::getloc((v17 + *(*v17 - 24)));
    v18 = std::locale::use_facet(v42, MEMORY[0x277D82680]);
    (v18->__vftable[2].~facet_0)(v18, 10);
    std::locale::~locale(v42);
    std::ostream::put();
    std::ostream::flush();
    v20 = *(a2 + 48);
    v19 = a2 + 48;
    v21 = (v20 + 7);
    if (v20)
    {
      v22 = v21;
    }

    else
    {
      v22 = v19;
    }

    if (*(v19 + 8))
    {
      v23 = MEMORY[0x277D82680];
      operations_research::sat::ConstraintProto::ConstraintProto(v42, 0, *v22);
      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "\nconstraint id: ", 16);
      std::to_string(&v43, 0);
      if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = &v43;
      }

      else
      {
        v25 = v43.__r_.__value_.__r.__words[0];
      }

      if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v26 = HIBYTE(v43.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v26 = v43.__r_.__value_.__l.__size_;
      }

      v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, v25, v26);
      std::ios_base::getloc((v27 + *(*v27 - 24)));
      v28 = std::locale::use_facet(&v44, v23);
      (v28->__vftable[2].~facet_0)(v28, 10);
      std::locale::~locale(&v44);
      std::ostream::put();
      std::ostream::flush();
      if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v43.__r_.__value_.__l.__data_);
      }

      google::protobuf::Message::DebugString(&v43);
    }

    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "\n[Stats]", 8);
    std::ios_base::getloc((v29 + *(*v29 - 24)));
    v30 = std::locale::use_facet(v42, MEMORY[0x277D82680]);
    (v30->__vftable[2].~facet_0)(v30, 10);
    std::locale::~locale(v42);
    std::ostream::put();
    std::ostream::flush();
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "NodeCount=", 10);
    CpGraph::GetLayers(a4, 1, v42);
    v32 = MEMORY[0x23EED91A0](v31, (v42[0].__r_.__value_.__l.__size_ - v42[0].__r_.__value_.__r.__words[0]) >> 3);
    std::ios_base::getloc((v32 + *(*v32 - 24)));
    v33 = std::locale::use_facet(&v43, MEMORY[0x277D82680]);
    (v33->__vftable[2].~facet_0)(v33, 10);
    std::locale::~locale(&v43);
    std::ostream::put();
    std::ostream::flush();
    if (v42[0].__r_.__value_.__r.__words[0])
    {
      v42[0].__r_.__value_.__l.__size_ = v42[0].__r_.__value_.__r.__words[0];
      operator delete(v42[0].__r_.__value_.__l.__data_);
    }

    v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "RegionMaxCycle=", 15);
    v35 = MEMORY[0x23EED91A0](v34, a5);
    std::ios_base::getloc((v35 + *(*v35 - 24)));
    v36 = std::locale::use_facet(v42, MEMORY[0x277D82680]);
    (v36->__vftable[2].~facet_0)(v36, 10);
    std::locale::~locale(v42);
    std::ostream::put();
    std::ostream::flush();
    operations_research::sat::CpModelStats(a3, v42);
    if ((v42[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v37 = v42;
    }

    else
    {
      v37 = v42[0].__r_.__value_.__r.__words[0];
    }

    if ((v42[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v38 = HIBYTE(v42[0].__r_.__value_.__r.__words[2]);
    }

    else
    {
      v38 = v42[0].__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v37, v38);
    if (SHIBYTE(v42[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42[0].__r_.__value_.__l.__data_);
    }
  }
}

void sub_23C93F684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::locale a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ORToolsCpMemCacheAllocatorUtil::PrintSolverResult(void *a1, CpGraph *a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (a1[16])
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "\n\n<Schedule results>\n", 21);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "RESULT=", 7);
    v10 = *(a5 + 264);
    if (v10 > 4)
    {
      v11 = &byte_23CE7F131;
    }

    else
    {
      v11 = off_278BC2E78[v10];
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, v11);
    if ((v35 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v35 & 0x80u) == 0)
    {
      v13 = v35;
    }

    else
    {
      v13 = v34;
    }

    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, p_p, v13);
    std::ios_base::getloc((v14 + *(*v14 - 24)));
    v15 = std::locale::use_facet(v29, MEMORY[0x277D82680]);
    (v15->__vftable[2].~facet_0)(v15, 10);
    std::locale::~locale(v29);
    std::ostream::put();
    std::ostream::flush();
    if (v35 < 0)
    {
      operator delete(__p);
    }

    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "SolveTime=", 10);
    v17 = MEMORY[0x23EED9170](v16, *(a5 + 200));
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " secs", 5);
    std::ios_base::getloc((v18 + *(*v18 - 24)));
    v19 = std::locale::use_facet(&__p, MEMORY[0x277D82680]);
    (v19->__vftable[2].~facet_0)(v19, 10);
    std::locale::~locale(&__p);
    std::ostream::put();
    std::ostream::flush();
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "e2e network latency=", 20);
    v21 = MEMORY[0x23EED9170](v20, *(a5 + 144));
    std::ios_base::getloc((v21 + *(*v21 - 24)));
    v22 = std::locale::use_facet(&__p, MEMORY[0x277D82680]);
    (v22->__vftable[2].~facet_0)(v22, 10);
    std::locale::~locale(&__p);
    std::ostream::put();
    std::ostream::flush();
    v23 = *(a5 + 264);
    if (v23 == 2 || v23 == 4)
    {
      v32 = 0;
      CpGraph::GetLayers(a2, 1, &__p);
      v24 = __p;
      v25 = v34;
      if (__p != v34)
      {
        do
        {
          v31 = *v24;
          if (std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>(a4, &v31))
          {
            v26 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>(a4, &v31)[3];
            if (v26)
            {
              ORToolsCpMemCacheAllocatorUtil::GetEngineLayerResultString(a5, v26, &v32, v29);
              if ((v30 & 0x80u) == 0)
              {
                v27 = v29;
              }

              else
              {
                v27 = v29[0];
              }

              if ((v30 & 0x80u) == 0)
              {
                v28 = v30;
              }

              else
              {
                v28 = v29[1];
              }

              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v27, v28);
              if (v30 < 0)
              {
                operator delete(v29[0]);
              }
            }
          }

          ++v24;
        }

        while (v24 != v25);
        v24 = __p;
      }

      if (v24)
      {
        v34 = v24;
        operator delete(v24);
      }
    }
  }
}

uint64_t ORToolsCpMemCacheAllocatorUtil::GetEngineLayerResultString@<X0>(ORToolsCpMemCacheAllocatorUtil *this@<X0>, const operations_research::sat::CpSolverResponse *a2@<X1>, const ORToolsMemCacheLayerScheduleVariable *a3@<X2>, _BYTE *a4@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v59);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v60, "sched=", 6);
  MEMORY[0x23EED91A0](v10, *(a2 + 15));
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v60, ", ", 2);
  if (*(a2 + 151) < 0)
  {
    std::string::__init_copy_ctor_external(&v55, *(a2 + 16), *(a2 + 17));
  }

  else
  {
    v55 = *(a2 + 128);
  }

  if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v55;
  }

  else
  {
    v12 = v55.__r_.__value_.__r.__words[0];
  }

  if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v55.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v55.__r_.__value_.__l.__size_;
  }

  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v12, size);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "\n", 1);
  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v60, "\tlayer_begin=", 13);
  std::to_string(&v55, *a3);
  if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v55;
  }

  else
  {
    v16 = v55.__r_.__value_.__r.__words[0];
  }

  if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(v55.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = v55.__r_.__value_.__l.__size_;
  }

  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v16, v17);
  std::ios_base::getloc((v18 + *(*v18 - 24)));
  v19 = std::locale::use_facet(&v58, MEMORY[0x277D82680]);
  (v19->__vftable[2].~facet_0)(v19, 10);
  std::locale::~locale(&v58);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v60, "\tlayer_end=", 11);
  v21 = *a3;
  operations_research::sat::LinearExpr::LinearExpr(&v55, *a2, *(a2 + 1));
  v23 = operations_research::sat::SolutionIntegerValue(this, &v55, v22);
  std::to_string(&v58, v23 + v21);
  if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = &v58;
  }

  else
  {
    v24 = v58.__r_.__value_.__r.__words[0];
  }

  if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v25 = v58.__r_.__value_.__l.__size_;
  }

  v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v24, v25);
  std::ios_base::getloc((v26 + *(*v26 - 24)));
  v27 = std::locale::use_facet(&v69, MEMORY[0x277D82680]);
  (v27->__vftable[2].~facet_0)(v27, 10);
  std::locale::~locale(&v69);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  if (__p)
  {
    v57 = __p;
    operator delete(__p);
  }

  if (v55.__r_.__value_.__r.__words[0])
  {
    v55.__r_.__value_.__l.__size_ = v55.__r_.__value_.__r.__words[0];
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  v53 = *(a2 + 32);
  if (v53 == 1)
  {
    v29 = *(a2 + 2);
    v28 = *(a2 + 3);
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v51 = v28;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v60, "\tsrc1: ", 7);
    if (v29)
    {
      *(&v60 + *(v60 - 24) + 8) |= 1u;
      v30 = operations_research::sat::SolutionBooleanValue(this, *v29, v29[1]);
      MEMORY[0x23EED9160](&v60, v30);
    }

    else
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v60, "don't care", 10);
    }

    std::ios_base::getloc((&v60 + *(v60 - 24)));
    v31 = std::locale::use_facet(&v55, MEMORY[0x277D82680]);
    (v31->__vftable[2].~facet_0)(v31, 10);
    std::locale::~locale(&v55);
    std::ostream::put();
    std::ostream::flush();
  }

  v52 = *(a2 + 56);
  if (v52 == 1)
  {
    v32 = *(a2 + 5);
    v33 = *(a2 + 6);
    if (v33)
    {
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v50 = v33;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v60, "\tsrc2: ", 7);
    if (v32)
    {
      *(&v60 + *(v60 - 24) + 8) |= 1u;
      v34 = operations_research::sat::SolutionBooleanValue(this, *v32, v32[1]);
      MEMORY[0x23EED9160](&v60, v34);
    }

    else
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v60, "don't care", 10);
    }

    std::ios_base::getloc((&v60 + *(v60 - 24)));
    v35 = std::locale::use_facet(&v55, MEMORY[0x277D82680]);
    v5 = (v35->__vftable[2].~facet_0)(v35, 10);
    std::locale::~locale(&v55);
    std::ostream::put();
    std::ostream::flush();
  }

  v36 = *(a2 + 80);
  if (v36 == 1)
  {
    v37 = *(a2 + 8);
    v5 = *(a2 + 9);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v60, "\tkernel: ", 9);
    if (v37)
    {
      *(&v60 + *(v60 - 24) + 8) |= 1u;
      v38 = operations_research::sat::SolutionBooleanValue(this, *v37, v37[1]);
      MEMORY[0x23EED9160](&v60, v38);
    }

    else
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v60, "don't care", 10);
    }

    std::ios_base::getloc((&v60 + *(v60 - 24)));
    v39 = std::locale::use_facet(&v55, MEMORY[0x277D82680]);
    v6 = (v39->__vftable[2].~facet_0)(v39, 10);
    std::locale::~locale(&v55);
    std::ostream::put();
    std::ostream::flush();
  }

  v40 = *(a2 + 104);
  if (v40 == 1)
  {
    v41 = *(a2 + 11);
    v6 = *(a2 + 12);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v60, "\tdst: ", 6);
    if (v41)
    {
      *(&v60 + *(v60 - 24) + 8) |= 1u;
      v42 = operations_research::sat::SolutionBooleanValue(this, *v41, v41[1]);
      MEMORY[0x23EED9160](&v60, v42);
    }

    else
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v60, "don't care", 10);
    }

    std::ios_base::getloc((&v60 + *(v60 - 24)));
    v43 = std::locale::use_facet(&v55, MEMORY[0x277D82680]);
    (v43->__vftable[2].~facet_0)(v43, 10);
    std::locale::~locale(&v55);
    std::ostream::put();
    std::ostream::flush();
  }

  operations_research::sat::LinearExpr::LinearExpr(&v55, *a2, *(a2 + 1));
  *a3 += operations_research::sat::SolutionIntegerValue(this, &v55, v44);
  if (__p)
  {
    v57 = __p;
    operator delete(__p);
  }

  if (v55.__r_.__value_.__r.__words[0])
  {
    v55.__r_.__value_.__l.__size_ = v55.__r_.__value_.__r.__words[0];
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  if ((v67 & 0x10) != 0)
  {
    v46 = v66;
    if (v66 < v63)
    {
      v66 = v63;
      v46 = v63;
    }

    locale = v62[4].__locale_;
  }

  else
  {
    if ((v67 & 8) == 0)
    {
      v45 = 0;
      a4[23] = 0;
      goto LABEL_77;
    }

    locale = v62[1].__locale_;
    v46 = v62[3].__locale_;
  }

  v45 = v46 - locale;
  if ((v46 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v45 >= 0x17)
  {
    operator new();
  }

  a4[23] = v45;
  if (v45)
  {
    memmove(a4, locale, v45);
  }

LABEL_77:
  a4[v45] = 0;
  if (v6 && v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v5 && v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v50 && v52)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  }

  if (v51 && v53)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v51);
  }

  v59[0] = *MEMORY[0x277D82818];
  v48 = *(MEMORY[0x277D82818] + 72);
  *(v59 + *(v59[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v60 = v48;
  v61 = MEMORY[0x277D82878] + 16;
  if (v65 < 0)
  {
    operator delete(v64);
  }

  v61 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v62);
  std::iostream::~basic_iostream();
  return MEMORY[0x23EED93A0](&v68);
}

void sub_23C940498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, std::locale a7, uint64_t a8, int a9, __int16 a10, char a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, ...)
{
  va_start(va, a39);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a24, MEMORY[0x277D82818]);
  MEMORY[0x23EED93A0](va);
  _Unwind_Resume(a1);
}

void ORToolsCpBasedMemCacheAllocatorUtil_CallCpAllocator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *MEMORY[0x277D85DE8];
  ORToolsCpMemCacheAllocator::ORToolsCpMemCacheAllocator(v3, a1, a3, a2);
  ORToolsCpMemCacheAllocator::Execute(v3);
}

void std::__hash_table<std::__hash_value_type<unsigned long long,CpAllocUtils::MemCacheAllocationType>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::MemCacheAllocationType>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::MemCacheAllocationType>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpAllocUtils::MemCacheAllocationType>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<unsigned long long,CpAllocUtils::MemCacheAllocationType>,void *> *>>(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        v9 = a2[2];
        v8[2] = v9;
        *(v8 + 6) = *(a2 + 6);
        v10 = *v8;
        v8[1] = v9;
        inserted = std::__hash_table<std::__hash_value_type<unsigned long long,CpAllocUtils::MemCacheAllocationType>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::MemCacheAllocationType>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::MemCacheAllocationType>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpAllocUtils::MemCacheAllocationType>>>::__node_insert_multi_prepare(a1, v9, v8 + 2);
        std::__hash_table<std::__hash_value_type<int,unsigned long>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned long>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned long>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned long>>>::__node_insert_multi_perform(a1, v8, inserted);
        a2 = *a2;
        v8 = v10;
        if (!v10)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v12 = *v8;
        operator delete(v8);
        v8 = v12;
      }

      while (v12);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,CpAllocUtils::MemCacheAllocationType>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::MemCacheAllocationType>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::MemCacheAllocationType>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpAllocUtils::MemCacheAllocationType>>>::__emplace_multi<std::pair<unsigned long long const,CpAllocUtils::MemCacheAllocationType> const&>();
  }
}

void sub_23C9407D4(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,CpAllocUtils::MemCacheAllocationType>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::MemCacheAllocationType>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::MemCacheAllocationType>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpAllocUtils::MemCacheAllocationType>>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    std::__hash_table<std::__hash_value_type<unsigned long long,CpAllocUtils::MemCacheAllocationType>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::MemCacheAllocationType>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::MemCacheAllocationType>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpAllocUtils::MemCacheAllocationType>>>::__rehash<false>(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = v16[1];
    if (v14.u32[0] > 1uLL)
    {
      v20 = v16[1];
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    v21 = v19 == a2 && v16[2] == *a3;
    v22 = v21 != (v17 & 1);
    v23 = v17 & v22;
    v17 |= v22;
  }

  while (v23 != 1);
  return result;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,CpAllocUtils::MemCacheAllocationType>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::MemCacheAllocationType>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::MemCacheAllocationType>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpAllocUtils::MemCacheAllocationType>>>::__rehash<false>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<unsigned long long,CpAllocUtils::MemCacheAllocationType>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::MemCacheAllocationType>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::MemCacheAllocationType>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpAllocUtils::MemCacheAllocationType>>>::__do_rehash<false>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<unsigned long long,CpAllocUtils::MemCacheAllocationType>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::MemCacheAllocationType>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::MemCacheAllocationType>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpAllocUtils::MemCacheAllocationType>>>::__do_rehash<false>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void ORToolsLayerScheduleVariable::ORToolsLayerScheduleVariable(uint64_t a1, operations_research::sat::CpModelBuilder *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, operations_research::Domain *a11)
{
  v55 = operations_research::sat::CpModelBuilder::NewConstant(a2, 0);
  v56 = v16;
  if (*(a4 + 23) >= 0)
  {
    v17 = *(a4 + 23);
  }

  else
  {
    v17 = *(a4 + 8);
  }

  std::string::basic_string[abi:ne200100](&__p, v17 + 12);
  if ((v54 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v17)
  {
    if (*(a4 + 23) >= 0)
    {
      v19 = a4;
    }

    else
    {
      v19 = *a4;
    }

    memmove(p_p, v19, v17);
  }

  strcpy(p_p + v17, ":layer_begin");
  if ((v54 & 0x80u) == 0)
  {
    v20 = &__p;
  }

  else
  {
    v20 = __p;
  }

  if ((v54 & 0x80u) == 0)
  {
    v21 = v54;
  }

  else
  {
    v21 = v53;
  }

  *a1 = operations_research::sat::IntVar::WithName(&v55, v20, v21);
  *(a1 + 8) = v22;
  if (v54 < 0)
  {
    operator delete(__p);
  }

  v55 = operations_research::sat::CpModelBuilder::NewIntVar(a2, a11);
  v56 = v23;
  if (*(a4 + 23) >= 0)
  {
    v24 = *(a4 + 23);
  }

  else
  {
    v24 = *(a4 + 8);
  }

  std::string::basic_string[abi:ne200100](&__p, v24 + 11);
  if ((v54 & 0x80u) == 0)
  {
    v25 = &__p;
  }

  else
  {
    v25 = __p;
  }

  if (v24)
  {
    if (*(a4 + 23) >= 0)
    {
      v26 = a4;
    }

    else
    {
      v26 = *a4;
    }

    memmove(v25, v26, v24);
  }

  strcpy(v25 + v24, ":layer_time");
  if ((v54 & 0x80u) == 0)
  {
    v27 = &__p;
  }

  else
  {
    v27 = __p;
  }

  if ((v54 & 0x80u) == 0)
  {
    v28 = v54;
  }

  else
  {
    v28 = v53;
  }

  *(a1 + 16) = operations_research::sat::IntVar::WithName(&v55, v27, v28);
  *(a1 + 24) = v29;
  if (v54 < 0)
  {
    operator delete(__p);
  }

  v55 = operations_research::sat::CpModelBuilder::NewIntVar(a2, a11);
  v56 = v30;
  if (*(a4 + 23) >= 0)
  {
    v31 = *(a4 + 23);
  }

  else
  {
    v31 = *(a4 + 8);
  }

  std::string::basic_string[abi:ne200100](&__p, v31 + 10);
  if ((v54 & 0x80u) == 0)
  {
    v32 = &__p;
  }

  else
  {
    v32 = __p;
  }

  if (v31)
  {
    if (*(a4 + 23) >= 0)
    {
      v33 = a4;
    }

    else
    {
      v33 = *a4;
    }

    memmove(v32, v33, v31);
  }

  strcpy(v32 + v31, ":layer_end");
  if ((v54 & 0x80u) == 0)
  {
    v34 = &__p;
  }

  else
  {
    v34 = __p;
  }

  if ((v54 & 0x80u) == 0)
  {
    v35 = v54;
  }

  else
  {
    v35 = v53;
  }

  *(a1 + 32) = operations_research::sat::IntVar::WithName(&v55, v34, v35);
  *(a1 + 40) = v36;
  if (v54 < 0)
  {
    operator delete(__p);
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v51, *a4, *(a4 + 8));
  }

  else
  {
    v51 = *a4;
  }

  ORToolsLayerScheduleVariable::CreateReadEndVariables(a2, &v51.__r_.__value_.__l.__data_, (a6[1] - *a6) >> 3, a11, (a1 + 48));
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  v55 = operations_research::sat::CpModelBuilder::NewIntVar(a2, a11);
  v56 = v37;
  if (*(a4 + 23) >= 0)
  {
    v38 = *(a4 + 23);
  }

  else
  {
    v38 = *(a4 + 8);
  }

  v39 = &__p;
  std::string::basic_string[abi:ne200100](&__p, v38 + 12);
  if ((v54 & 0x80u) != 0)
  {
    v39 = __p;
  }

  if (v38)
  {
    if (*(a4 + 23) >= 0)
    {
      v40 = a4;
    }

    else
    {
      v40 = *a4;
    }

    memmove(v39, v40, v38);
  }

  strcpy(v39 + v38, ":compute_end");
  if ((v54 & 0x80u) == 0)
  {
    v41 = &__p;
  }

  else
  {
    v41 = __p;
  }

  if ((v54 & 0x80u) == 0)
  {
    v42 = v54;
  }

  else
  {
    v42 = v53;
  }

  *(a1 + 72) = operations_research::sat::IntVar::WithName(&v55, v41, v42);
  *(a1 + 80) = v43;
  if (v54 < 0)
  {
    operator delete(__p);
  }

  v55 = operations_research::sat::CpModelBuilder::NewIntVar(a2, a11);
  v56 = v44;
  if (*(a4 + 23) >= 0)
  {
    v45 = *(a4 + 23);
  }

  else
  {
    v45 = *(a4 + 8);
  }

  v46 = &__p;
  std::string::basic_string[abi:ne200100](&__p, v45 + 10);
  if ((v54 & 0x80u) != 0)
  {
    v46 = __p;
  }

  if (v45)
  {
    if (*(a4 + 23) >= 0)
    {
      v47 = a4;
    }

    else
    {
      v47 = *a4;
    }

    memmove(v46, v47, v45);
  }

  strcpy(v46 + v45, ":write_end");
  if ((v54 & 0x80u) == 0)
  {
    v48 = &__p;
  }

  else
  {
    v48 = __p;
  }

  if ((v54 & 0x80u) == 0)
  {
    v49 = v54;
  }

  else
  {
    v49 = v53;
  }

  *(a1 + 88) = operations_research::sat::IntVar::WithName(&v55, v48, v49);
  *(a1 + 96) = v50;
  if (v54 < 0)
  {
    operator delete(__p);
  }

  ORToolsLayerScheduleVariable::CreateInputL2AccessVariables(a6, a7, (a1 + 104));
  operator new();
}

{
  ORToolsLayerScheduleVariable::ORToolsLayerScheduleVariable(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

void sub_23C94168C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  v29 = *(v27 + 192);
  if (v29)
  {
    *(v27 + 200) = v29;
    operator delete(v29);
  }

  std::unique_ptr<ORToolsCpL2AccessVariable>::~unique_ptr[abi:ne200100]((v27 + 136));
  std::unique_ptr<ORToolsCpComputeConstant>::~unique_ptr[abi:ne200100]((v27 + 128));
  std::vector<std::unique_ptr<ORToolsCpL2AccessVariable>>::__destroy_vector::operator()[abi:ne200100](&__p);
  v30 = *(v27 + 48);
  if (v30)
  {
    *(v27 + 56) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

void sub_23C941804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    JUMPOUT(0x23C941774);
  }

  JUMPOUT(0x23C941778);
}

void sub_23C941818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    JUMPOUT(0x23C941774);
  }

  JUMPOUT(0x23C941778);
}

void ORToolsLayerScheduleVariable::CreateReadEndVariables(operations_research::sat::CpModelBuilder *a1@<X1>, const void **a2@<X2>, unint64_t a3@<X3>, const operations_research::Domain *a4@<X4>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v27 = operations_research::sat::CpModelBuilder::NewIntVar(a1, a4);
  v28 = v10;
  if (*(a2 + 23) >= 0)
  {
    v11 = *(a2 + 23);
  }

  else
  {
    v11 = a2[1];
  }

  p_p = &__p;
  std::string::basic_string[abi:ne200100](&__p, v11 + 11);
  if ((v26 & 0x80u) != 0)
  {
    p_p = __p;
  }

  if (v11)
  {
    if (*(a2 + 23) >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    memmove(p_p, v13, v11);
  }

  strcpy(p_p + v11, ":read_end_0");
  if ((v26 & 0x80u) == 0)
  {
    v14 = &__p;
  }

  else
  {
    v14 = __p;
  }

  if ((v26 & 0x80u) == 0)
  {
    v15 = v26;
  }

  else
  {
    v15 = v25;
  }

  *&v29 = operations_research::sat::IntVar::WithName(&v27, v14, v15);
  DWORD2(v29) = v16;
  std::vector<operations_research::sat::IntVar>::push_back[abi:ne200100](a5, &v29);
  if (v26 < 0)
  {
    operator delete(__p);
  }

  if (a3 >= 2)
  {
    v27 = operations_research::sat::CpModelBuilder::NewIntVar(a1, a4);
    v28 = v17;
    if (*(a2 + 23) >= 0)
    {
      v18 = *(a2 + 23);
    }

    else
    {
      v18 = a2[1];
    }

    v19 = &__p;
    std::string::basic_string[abi:ne200100](&__p, v18 + 11);
    if ((v26 & 0x80u) != 0)
    {
      v19 = __p;
    }

    if (v18)
    {
      if (*(a2 + 23) >= 0)
      {
        v20 = a2;
      }

      else
      {
        v20 = *a2;
      }

      memmove(v19, v20, v18);
    }

    strcpy(v19 + v18, ":read_end_1");
    if ((v26 & 0x80u) == 0)
    {
      v21 = &__p;
    }

    else
    {
      v21 = __p;
    }

    if ((v26 & 0x80u) == 0)
    {
      v22 = v26;
    }

    else
    {
      v22 = v25;
    }

    *&v29 = operations_research::sat::IntVar::WithName(&v27, v21, v22);
    DWORD2(v29) = v23;
    std::vector<operations_research::sat::IntVar>::push_back[abi:ne200100](a5, &v29);
    if (v26 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_23C941A44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v16 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

void ORToolsLayerScheduleVariable::CreateInputL2AccessVariables(void *a1@<X2>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (a1[1] != *a1)
  {
    v3 = *a2;
    operator new();
  }
}

void sub_23C941C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  std::unique_ptr<ORToolsCpL2AccessVariable>::~unique_ptr[abi:ne200100](&a9);
  std::vector<std::unique_ptr<ORToolsCpL2AccessVariable>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void ORToolsLayerScheduleVariable::CreateInPlaceVariables(operations_research::sat::CpModelBuilder *a1@<X1>, const void **a2@<X2>, uint64_t *a3@<X3>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v6 = *a3;
  v7 = a3[1] - *a3;
  if (v7)
  {
    v11 = v7 >> 3;
    if (v11 <= 1)
    {
      v11 = 1;
    }

    while (!*(*v6 + 112))
    {
      v6 += 8;
      if (!--v11)
      {
        return;
      }
    }

    v12 = 0;
    v13 = 0;
    do
    {
      v41 = operations_research::sat::CpModelBuilder::NewBoolVar(a1);
      v42 = v14;
      if (*(a2 + 23) >= 0)
      {
        v15 = *(a2 + 23);
      }

      else
      {
        v15 = a2[1];
      }

      std::string::basic_string[abi:ne200100](&v33, v15 + 17);
      if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = &v33;
      }

      else
      {
        v16 = v33.__r_.__value_.__r.__words[0];
      }

      if (v15)
      {
        if (*(a2 + 23) >= 0)
        {
          v17 = a2;
        }

        else
        {
          v17 = *a2;
        }

        memmove(v16, v17, v15);
      }

      strcpy(v16 + v15, ":in_place_update_");
      std::to_string(&v40, v13);
      if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = &v40;
      }

      else
      {
        v18 = v40.__r_.__value_.__r.__words[0];
      }

      if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v40.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v40.__r_.__value_.__l.__size_;
      }

      v20 = std::string::append(&v33, v18, size);
      v21 = *&v20->__r_.__value_.__l.__data_;
      v37 = v20->__r_.__value_.__r.__words[2];
      *__p = v21;
      v20->__r_.__value_.__l.__size_ = 0;
      v20->__r_.__value_.__r.__words[2] = 0;
      v20->__r_.__value_.__r.__words[0] = 0;
      if (v37 >= 0)
      {
        v22 = __p;
      }

      else
      {
        v22 = __p[0];
      }

      if (v37 >= 0)
      {
        v23 = HIBYTE(v37);
      }

      else
      {
        v23 = __p[1];
      }

      v32.__r_.__value_.__r.__words[0] = operations_research::sat::BoolVar::WithName(&v41, v22, v23);
      LODWORD(v32.__r_.__value_.__r.__words[1]) = v24;
      std::vector<operations_research::sat::IntVar>::push_back[abi:ne200100](a4, &v32);
      if (SHIBYTE(v37) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v33.__r_.__value_.__l.__data_);
      }

      v25 = *a3;
      if (!*(*(*a3 + 8 * v13) + 112))
      {
        operations_research::sat::LinearExpr::LinearExpr(__p, *(*a4 + v12), *(*a4 + v12 + 8));
        v26 = operations_research::sat::CpModelBuilder::NewConstant(a1, 0);
        v4 = v4 & 0xFFFFFFFF00000000 | v27;
        operations_research::sat::LinearExpr::LinearExpr(&v33, v26, v4);
        v41 = operations_research::sat::CpModelBuilder::AddEquality(a1, __p, &v33);
        std::operator+<char>();
        v28 = std::string::append(&v32, "disable_inplace_allocation", 0x1AuLL);
        v29 = *&v28->__r_.__value_.__l.__data_;
        v40.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
        *&v40.__r_.__value_.__l.__data_ = v29;
        v28->__r_.__value_.__l.__size_ = 0;
        v28->__r_.__value_.__r.__words[2] = 0;
        v28->__r_.__value_.__r.__words[0] = 0;
        if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v30 = &v40;
        }

        else
        {
          v30 = v40.__r_.__value_.__r.__words[0];
        }

        if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v31 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v31 = v40.__r_.__value_.__l.__size_;
        }

        operations_research::sat::Constraint::WithName(&v41, v30, v31);
        if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v40.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v32.__r_.__value_.__l.__data_);
        }

        if (v34)
        {
          v35 = v34;
          operator delete(v34);
        }

        if (v33.__r_.__value_.__r.__words[0])
        {
          v33.__r_.__value_.__l.__size_ = v33.__r_.__value_.__r.__words[0];
          operator delete(v33.__r_.__value_.__l.__data_);
        }

        if (v38)
        {
          v39 = v38;
          operator delete(v38);
        }

        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        v25 = *a3;
      }

      ++v13;
      v12 += 16;
    }

    while (v13 < (a3[1] - v25) >> 3);
  }
}

void sub_23C941F64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  operations_research::sat::LinearExpr::~LinearExpr(&a15);
  operations_research::sat::LinearExpr::~LinearExpr(&a25);
  v32 = *v30;
  if (*v30)
  {
    *(v30 + 8) = v32;
    operator delete(v32);
  }

  _Unwind_Resume(a1);
}

void ORToolsLayerScheduleVariable::~ORToolsLayerScheduleVariable(ORToolsLayerScheduleVariable *this)
{
  if (*(this + 271) < 0)
  {
    operator delete(*(this + 31));
  }

  v2 = *(this + 24);
  if (v2)
  {
    *(this + 25) = v2;
    operator delete(v2);
  }

  std::unique_ptr<ORToolsCpL2AccessVariable>::~unique_ptr[abi:ne200100](this + 17);
  std::unique_ptr<ORToolsCpComputeConstant>::~unique_ptr[abi:ne200100](this + 16);
  v4 = (this + 104);
  std::vector<std::unique_ptr<ORToolsCpL2AccessVariable>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v3 = *(this + 6);
  if (v3)
  {
    *(this + 7) = v3;
    operator delete(v3);
  }
}

void ORToolsLayerScheduleVariable::CreateLayerConstraint(uint64_t a1, operations_research::sat::CpModelBuilder *a2, uint64_t *a3, void *a4, const operations_research::Domain *a5)
{
  v200[1] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 104);
  if (*(a1 + 112) - v7 < 9uLL)
  {
    v11 = *v7;
    v189 = *(v11 + 256);
    LODWORD(v190) = *(v11 + 264);
    v12 = *(a1 + 136);
    v191 = *(v12 + 256);
    LODWORD(v192) = *(v12 + 264);
    __p[1] = 0;
    v186 = 0;
    __p[0] = 0;
    std::vector<operations_research::sat::BoolVar>::__init_with_size[abi:ne200100]<operations_research::sat::BoolVar const*,operations_research::sat::BoolVar const*>(__p, &v189, &v193, 2uLL);
  }

  else
  {
    v8 = *v7;
    LODWORD(v195) = *(*v7 + 264);
    v194 = *(v8 + 256);
    v9 = v7[1];
    v196 = *(v9 + 256);
    LODWORD(v197) = *(v9 + 264);
    v10 = *(a1 + 136);
    v198 = *(v10 + 256);
    v199 = *(v10 + 264);
    __p[1] = 0;
    v186 = 0;
    __p[0] = 0;
    std::vector<operations_research::sat::BoolVar>::__init_with_size[abi:ne200100]<operations_research::sat::BoolVar const*,operations_research::sat::BoolVar const*>(__p, &v194, v200, 3uLL);
  }

  BooleanOr = ORToolsCpBasedAllocatorUtil::CreateBooleanOr(a2, __p);
  v15 = v14;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v194 = *(a1 + 160);
  LODWORD(v195) = *(a1 + 168);
  v196 = *(a1 + 176);
  LODWORD(v197) = *(a1 + 184);
  v190 = 0;
  v191 = 0;
  v189 = 0;
  std::vector<operations_research::sat::BoolVar>::__init_with_size[abi:ne200100]<operations_research::sat::BoolVar const*,operations_research::sat::BoolVar const*>(&v189, &v194, &v198, 2uLL);
  v16 = ORToolsCpBasedAllocatorUtil::CreateBooleanOr(a2, &v189);
  v18 = v17;
  if (v189)
  {
    v190 = v189;
    operator delete(v189);
  }

  operations_research::sat::BoolVar::BoolVar(__p, ~v15, BooleanOr);
  v194 = __p[0];
  LODWORD(v195) = __p[1];
  operations_research::sat::BoolVar::BoolVar(__p, ~v18, v16);
  v196 = __p[0];
  LODWORD(v197) = __p[1];
  v190 = 0;
  v191 = 0;
  v189 = 0;
  std::vector<operations_research::sat::BoolVar>::__init_with_size[abi:ne200100]<operations_research::sat::BoolVar const*,operations_research::sat::BoolVar const*>(&v189, &v194, &v198, 2uLL);
  v182.__r_.__value_.__r.__words[0] = ORToolsCpBasedAllocatorUtil::CreateBooleanAnd(a2, &v189);
  LODWORD(v182.__r_.__value_.__r.__words[1]) = v19;
  if (*(a1 + 271) >= 0)
  {
    v20 = *(a1 + 271);
  }

  else
  {
    v20 = *(a1 + 256);
  }

  v21 = __p;
  std::string::basic_string[abi:ne200100](__p, v20 + 12);
  if (v186 < 0)
  {
    v21 = __p[0];
  }

  if (v20)
  {
    if (*(a1 + 271) >= 0)
    {
      v22 = (a1 + 248);
    }

    else
    {
      v22 = *(a1 + 248);
    }

    memmove(v21, v22, v20);
  }

  strcpy(v21 + v20, ":no_parallel");
  if (v186 >= 0)
  {
    v23 = __p;
  }

  else
  {
    v23 = __p[0];
  }

  if (v186 >= 0)
  {
    v24 = HIBYTE(v186);
  }

  else
  {
    v24 = __p[1];
  }

  v166 = operations_research::sat::BoolVar::WithName(&v182, v23, v24);
  v26 = v25;
  v27 = v25;
  if (SHIBYTE(v186) < 0)
  {
    operator delete(__p[0]);
  }

  v165 = v26;
  if (v189)
  {
    v190 = v189;
    operator delete(v189);
  }

  operations_research::sat::LinearExpr::LinearExpr(&v194, v166, v27);
  operations_research::sat::LinearExpr::LinearExpr(&v189, *(a1 + 216), *(a1 + 224));
  operations_research::sat::CpModelBuilder::AddEquality(a2, &v194, &v189);
  if (v192)
  {
    v193 = v192;
    operator delete(v192);
  }

  if (v189)
  {
    v190 = v189;
    operator delete(v189);
  }

  if (v197)
  {
    v198 = v197;
    operator delete(v197);
  }

  if (v194)
  {
    v195 = v194;
    operator delete(v194);
  }

  operations_research::sat::LinearExpr::LinearExpr(&v194, *(a1 + 16), *(a1 + 24));
  __p[0] = *(a1 + 32);
  LODWORD(__p[1]) = *(a1 + 40);
  v186 = *a1;
  LODWORD(v187) = *(a1 + 8);
  *&v184.__r_.__value_.__l.__data_ = xmmword_23CE306C0;
  operations_research::sat::LinearExpr::WeightedSum(__p, 2, 2, &v189);
  v179.__r_.__value_.__r.__words[0] = operations_research::sat::CpModelBuilder::AddEquality(a2, &v194, &v189);
  if (*(a1 + 271) >= 0)
  {
    v28 = *(a1 + 271);
  }

  else
  {
    v28 = *(a1 + 256);
  }

  v29 = &v182;
  std::string::basic_string[abi:ne200100](&v182, v28 + 15);
  if ((v182.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v29 = v182.__r_.__value_.__r.__words[0];
  }

  if (v28)
  {
    if (*(a1 + 271) >= 0)
    {
      v30 = (a1 + 248);
    }

    else
    {
      v30 = *(a1 + 248);
    }

    memmove(v29, v30, v28);
  }

  strcpy(v29 + v28, ":layer_interval");
  if ((v182.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v31 = &v182;
  }

  else
  {
    v31 = v182.__r_.__value_.__r.__words[0];
  }

  if ((v182.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v182.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v182.__r_.__value_.__l.__size_;
  }

  operations_research::sat::Constraint::WithName(&v179, v31, size);
  if (SHIBYTE(v182.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v182.__r_.__value_.__l.__data_);
  }

  if (v192)
  {
    v193 = v192;
    operator delete(v192);
  }

  if (v189)
  {
    v190 = v189;
    operator delete(v189);
  }

  if (v197)
  {
    v198 = v197;
    operator delete(v197);
  }

  if (v194)
  {
    v195 = v194;
    operator delete(v194);
  }

  operations_research::sat::LinearExpr::LinearExpr(&v194, *a1, *(a1 + 8));
  v33 = operations_research::sat::CpModelBuilder::NewConstant(a2, 0);
  operations_research::sat::LinearExpr::LinearExpr(&v189, v33, v34);
  operations_research::sat::LinearExpr::LinearExpr(__p, *(a1 + 32), *(a1 + 40));
  operations_research::sat::CpModelBuilder::NewOptionalIntervalVar(a2, &v194, &v189, __p, BooleanOr, v15);
  if (v187)
  {
    v188 = v187;
    operator delete(v187);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v192)
  {
    v193 = v192;
    operator delete(v192);
  }

  if (v189)
  {
    v190 = v189;
    operator delete(v189);
  }

  if (v197)
  {
    v198 = v197;
    operator delete(v197);
  }

  if (v194)
  {
    v195 = v194;
    operator delete(v194);
  }

  if (*(a1 + 56) != *(a1 + 48))
  {
    v35 = 0;
    v36 = 0;
    do
    {
      operations_research::sat::LinearExpr::LinearExpr(&v194, *a1, *(a1 + 8));
      v37 = *(*(a1 + 104) + 8 * v36);
      operations_research::sat::LinearExpr::LinearExpr(&v189, *v37, v37[1]);
      operations_research::sat::LinearExpr::LinearExpr(__p, *(*(a1 + 48) + v35), *(*(a1 + 48) + v35 + 8));
      v38 = *(*(a1 + 104) + 8 * v36);
      v182.__r_.__value_.__r.__words[0] = *(v38 + 224);
      LODWORD(v182.__r_.__value_.__r.__words[1]) = *(v38 + 232);
      v182.__r_.__value_.__r.__words[2] = v166;
      v183 = v26;
      memset(&v184, 0, sizeof(v184));
      std::vector<operations_research::sat::BoolVar>::__init_with_size[abi:ne200100]<operations_research::sat::BoolVar const*,operations_research::sat::BoolVar const*>(&v184, &v182, &v184, 2uLL);
      BooleanAnd = ORToolsCpBasedAllocatorUtil::CreateBooleanAnd(a2, &v184);
      v180 = operations_research::sat::CpModelBuilder::NewOptionalIntervalVar(a2, &v194, &v189, __p, BooleanAnd, v40);
      v181 = v41;
      if (*(a1 + 271) >= 0)
      {
        v42 = *(a1 + 271);
      }

      else
      {
        v42 = *(a1 + 256);
      }

      std::string::basic_string[abi:ne200100](&v178, v42 + 29);
      if ((v178.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v43 = &v178;
      }

      else
      {
        v43 = v178.__r_.__value_.__r.__words[0];
      }

      if (v42)
      {
        if (*(a1 + 271) >= 0)
        {
          v44 = (a1 + 248);
        }

        else
        {
          v44 = *(a1 + 248);
        }

        memmove(v43, v44, v42);
      }

      strcpy(v43 + v42, ":resident_read_time_interval_");
      std::to_string(&v177, v36);
      if ((v177.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v45 = &v177;
      }

      else
      {
        v45 = v177.__r_.__value_.__r.__words[0];
      }

      if ((v177.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v46 = HIBYTE(v177.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v46 = v177.__r_.__value_.__l.__size_;
      }

      v47 = std::string::append(&v178, v45, v46);
      v48 = *&v47->__r_.__value_.__l.__data_;
      v179.__r_.__value_.__r.__words[2] = v47->__r_.__value_.__r.__words[2];
      *&v179.__r_.__value_.__l.__data_ = v48;
      v47->__r_.__value_.__l.__size_ = 0;
      v47->__r_.__value_.__r.__words[2] = 0;
      v47->__r_.__value_.__r.__words[0] = 0;
      if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v49 = &v179;
      }

      else
      {
        v49 = v179.__r_.__value_.__r.__words[0];
      }

      if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v50 = HIBYTE(v179.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v50 = v179.__r_.__value_.__l.__size_;
      }

      operations_research::sat::IntervalVar::WithName(&v180, v49, v50);
      if (SHIBYTE(v179.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v179.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v177.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v177.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v178.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v178.__r_.__value_.__l.__data_);
      }

      if (v184.__r_.__value_.__r.__words[0])
      {
        v184.__r_.__value_.__l.__size_ = v184.__r_.__value_.__r.__words[0];
        operator delete(v184.__r_.__value_.__l.__data_);
      }

      if (v187)
      {
        v188 = v187;
        operator delete(v187);
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v192)
      {
        v193 = v192;
        operator delete(v192);
      }

      if (v189)
      {
        v190 = v189;
        operator delete(v189);
      }

      if (v197)
      {
        v198 = v197;
        operator delete(v197);
      }

      if (v194)
      {
        v195 = v194;
        operator delete(v194);
      }

      operations_research::sat::LinearExpr::LinearExpr(&v194, *a1, *(a1 + 8));
      v51 = *(*(a1 + 104) + 8 * v36);
      operations_research::sat::LinearExpr::LinearExpr(&v189, *(v51 + 16), *(v51 + 24));
      operations_research::sat::LinearExpr::LinearExpr(__p, *(*(a1 + 48) + v35), *(*(a1 + 48) + v35 + 8));
      v52 = *(*(a1 + 104) + 8 * v36);
      v182.__r_.__value_.__r.__words[0] = *(v52 + 240);
      LODWORD(v182.__r_.__value_.__r.__words[1]) = *(v52 + 248);
      v182.__r_.__value_.__r.__words[2] = v166;
      v183 = v26;
      memset(&v184, 0, sizeof(v184));
      std::vector<operations_research::sat::BoolVar>::__init_with_size[abi:ne200100]<operations_research::sat::BoolVar const*,operations_research::sat::BoolVar const*>(&v184, &v182, &v184, 2uLL);
      v53 = ORToolsCpBasedAllocatorUtil::CreateBooleanAnd(a2, &v184);
      v180 = operations_research::sat::CpModelBuilder::NewOptionalIntervalVar(a2, &v194, &v189, __p, v53, v54);
      v181 = v55;
      if (*(a1 + 271) >= 0)
      {
        v56 = *(a1 + 271);
      }

      else
      {
        v56 = *(a1 + 256);
      }

      std::string::basic_string[abi:ne200100](&v178, v56 + 32);
      if ((v178.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v57 = &v178;
      }

      else
      {
        v57 = v178.__r_.__value_.__r.__words[0];
      }

      if (v56)
      {
        if (*(a1 + 271) >= 0)
        {
          v58 = (a1 + 248);
        }

        else
        {
          v58 = *(a1 + 248);
        }

        memmove(v57, v58, v56);
      }

      strcpy(v57 + v56, ":nonresident_read_time_interval_");
      std::to_string(&v177, v36);
      if ((v177.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v59 = &v177;
      }

      else
      {
        v59 = v177.__r_.__value_.__r.__words[0];
      }

      if ((v177.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v60 = HIBYTE(v177.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v60 = v177.__r_.__value_.__l.__size_;
      }

      v61 = std::string::append(&v178, v59, v60);
      v62 = *&v61->__r_.__value_.__l.__data_;
      v179.__r_.__value_.__r.__words[2] = v61->__r_.__value_.__r.__words[2];
      *&v179.__r_.__value_.__l.__data_ = v62;
      v61->__r_.__value_.__l.__size_ = 0;
      v61->__r_.__value_.__r.__words[2] = 0;
      v61->__r_.__value_.__r.__words[0] = 0;
      if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v63 = &v179;
      }

      else
      {
        v63 = v179.__r_.__value_.__r.__words[0];
      }

      if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v64 = HIBYTE(v179.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v64 = v179.__r_.__value_.__l.__size_;
      }

      operations_research::sat::IntervalVar::WithName(&v180, v63, v64);
      if (SHIBYTE(v179.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v179.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v177.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v177.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v178.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v178.__r_.__value_.__l.__data_);
      }

      if (v184.__r_.__value_.__r.__words[0])
      {
        v184.__r_.__value_.__l.__size_ = v184.__r_.__value_.__r.__words[0];
        operator delete(v184.__r_.__value_.__l.__data_);
      }

      if (v187)
      {
        v188 = v187;
        operator delete(v187);
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v192)
      {
        v193 = v192;
        operator delete(v192);
      }

      if (v189)
      {
        v190 = v189;
        operator delete(v189);
      }

      if (v197)
      {
        v198 = v197;
        operator delete(v197);
      }

      if (v194)
      {
        v195 = v194;
        operator delete(v194);
      }

      ++v36;
      v35 += 16;
    }

    while (v36 < (*(a1 + 56) - *(a1 + 48)) >> 4);
  }

  operations_research::sat::LinearExpr::LinearExpr(&v194, *a1, *(a1 + 8));
  operations_research::sat::LinearExpr::LinearExpr(&v189, **(a1 + 128), *(*(a1 + 128) + 8));
  operations_research::sat::LinearExpr::LinearExpr(__p, *(a1 + 72), *(a1 + 80));
  v65 = **(a1 + 104);
  v182.__r_.__value_.__r.__words[0] = *(v65 + 224);
  LODWORD(v182.__r_.__value_.__r.__words[1]) = *(v65 + 232);
  v182.__r_.__value_.__r.__words[2] = v166;
  v183 = v26;
  memset(&v184, 0, sizeof(v184));
  std::vector<operations_research::sat::BoolVar>::__init_with_size[abi:ne200100]<operations_research::sat::BoolVar const*,operations_research::sat::BoolVar const*>(&v184, &v182, &v184, 2uLL);
  v66 = ORToolsCpBasedAllocatorUtil::CreateBooleanAnd(a2, &v184);
  v178.__r_.__value_.__r.__words[0] = operations_research::sat::CpModelBuilder::NewOptionalIntervalVar(a2, &v194, &v189, __p, v66, v67);
  LODWORD(v178.__r_.__value_.__r.__words[1]) = v68;
  if (*(a1 + 271) >= 0)
  {
    v69 = *(a1 + 271);
  }

  else
  {
    v69 = *(a1 + 256);
  }

  v70 = &v179;
  std::string::basic_string[abi:ne200100](&v179, v69 + 31);
  if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v70 = v179.__r_.__value_.__r.__words[0];
  }

  if (v69)
  {
    if (*(a1 + 271) >= 0)
    {
      v71 = (a1 + 248);
    }

    else
    {
      v71 = *(a1 + 248);
    }

    memmove(v70, v71, v69);
  }

  strcpy(v70 + v69, ":compute_resident_time_interval");
  if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v72 = &v179;
  }

  else
  {
    v72 = v179.__r_.__value_.__r.__words[0];
  }

  if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v73 = HIBYTE(v179.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v73 = v179.__r_.__value_.__l.__size_;
  }

  operations_research::sat::IntervalVar::WithName(&v178, v72, v73);
  if (SHIBYTE(v179.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v179.__r_.__value_.__l.__data_);
  }

  if (v184.__r_.__value_.__r.__words[0])
  {
    v184.__r_.__value_.__l.__size_ = v184.__r_.__value_.__r.__words[0];
    operator delete(v184.__r_.__value_.__l.__data_);
  }

  if (v187)
  {
    v188 = v187;
    operator delete(v187);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v192)
  {
    v193 = v192;
    operator delete(v192);
  }

  if (v189)
  {
    v190 = v189;
    operator delete(v189);
  }

  if (v197)
  {
    v198 = v197;
    operator delete(v197);
  }

  if (v194)
  {
    v195 = v194;
    operator delete(v194);
  }

  operations_research::sat::LinearExpr::LinearExpr(&v194, *a1, *(a1 + 8));
  operations_research::sat::LinearExpr::LinearExpr(&v189, *(*(a1 + 128) + 16), *(*(a1 + 128) + 24));
  operations_research::sat::LinearExpr::LinearExpr(__p, *(a1 + 72), *(a1 + 80));
  v74 = **(a1 + 104);
  v182.__r_.__value_.__r.__words[0] = *(v74 + 240);
  LODWORD(v182.__r_.__value_.__r.__words[1]) = *(v74 + 248);
  v182.__r_.__value_.__r.__words[2] = v166;
  v183 = v26;
  memset(&v184, 0, sizeof(v184));
  std::vector<operations_research::sat::BoolVar>::__init_with_size[abi:ne200100]<operations_research::sat::BoolVar const*,operations_research::sat::BoolVar const*>(&v184, &v182, &v184, 2uLL);
  v75 = ORToolsCpBasedAllocatorUtil::CreateBooleanAnd(a2, &v184);
  v178.__r_.__value_.__r.__words[0] = operations_research::sat::CpModelBuilder::NewOptionalIntervalVar(a2, &v194, &v189, __p, v75, v76);
  LODWORD(v178.__r_.__value_.__r.__words[1]) = v77;
  if (*(a1 + 271) >= 0)
  {
    v78 = *(a1 + 271);
  }

  else
  {
    v78 = *(a1 + 256);
  }

  v79 = &v179;
  std::string::basic_string[abi:ne200100](&v179, v78 + 34);
  if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v79 = v179.__r_.__value_.__r.__words[0];
  }

  if (v78)
  {
    if (*(a1 + 271) >= 0)
    {
      v80 = (a1 + 248);
    }

    else
    {
      v80 = *(a1 + 248);
    }

    memmove(v79, v80, v78);
  }

  strcpy(v79 + v78, ":compute_nonresident_time_interval");
  if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v81 = &v179;
  }

  else
  {
    v81 = v179.__r_.__value_.__r.__words[0];
  }

  if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v82 = HIBYTE(v179.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v82 = v179.__r_.__value_.__l.__size_;
  }

  operations_research::sat::IntervalVar::WithName(&v178, v81, v82);
  if (SHIBYTE(v179.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v179.__r_.__value_.__l.__data_);
  }

  if (v184.__r_.__value_.__r.__words[0])
  {
    v184.__r_.__value_.__l.__size_ = v184.__r_.__value_.__r.__words[0];
    operator delete(v184.__r_.__value_.__l.__data_);
  }

  if (v187)
  {
    v188 = v187;
    operator delete(v187);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v192)
  {
    v193 = v192;
    operator delete(v192);
  }

  if (v189)
  {
    v190 = v189;
    operator delete(v189);
  }

  if (v197)
  {
    v198 = v197;
    operator delete(v197);
  }

  if (v194)
  {
    v195 = v194;
    operator delete(v194);
  }

  operations_research::sat::LinearExpr::LinearExpr(&v194, *a1, *(a1 + 8));
  operations_research::sat::LinearExpr::LinearExpr(&v189, **(a1 + 136), *(*(a1 + 136) + 8));
  operations_research::sat::LinearExpr::LinearExpr(__p, *(a1 + 88), *(a1 + 96));
  v83 = *(a1 + 136);
  v182.__r_.__value_.__r.__words[0] = *(v83 + 224);
  LODWORD(v182.__r_.__value_.__r.__words[1]) = *(v83 + 232);
  v182.__r_.__value_.__r.__words[2] = v166;
  v183 = v26;
  memset(&v184, 0, sizeof(v184));
  std::vector<operations_research::sat::BoolVar>::__init_with_size[abi:ne200100]<operations_research::sat::BoolVar const*,operations_research::sat::BoolVar const*>(&v184, &v182, &v184, 2uLL);
  v84 = ORToolsCpBasedAllocatorUtil::CreateBooleanAnd(a2, &v184);
  v178.__r_.__value_.__r.__words[0] = operations_research::sat::CpModelBuilder::NewOptionalIntervalVar(a2, &v194, &v189, __p, v84, v85);
  LODWORD(v178.__r_.__value_.__r.__words[1]) = v86;
  if (*(a1 + 271) >= 0)
  {
    v87 = *(a1 + 271);
  }

  else
  {
    v87 = *(a1 + 256);
  }

  v88 = &v179;
  std::string::basic_string[abi:ne200100](&v179, v87 + 29);
  if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v88 = v179.__r_.__value_.__r.__words[0];
  }

  if (v87)
  {
    if (*(a1 + 271) >= 0)
    {
      v89 = (a1 + 248);
    }

    else
    {
      v89 = *(a1 + 248);
    }

    memmove(v88, v89, v87);
  }

  strcpy(v88 + v87, ":resident_write_time_interval");
  if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v90 = &v179;
  }

  else
  {
    v90 = v179.__r_.__value_.__r.__words[0];
  }

  if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v91 = HIBYTE(v179.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v91 = v179.__r_.__value_.__l.__size_;
  }

  operations_research::sat::IntervalVar::WithName(&v178, v90, v91);
  if (SHIBYTE(v179.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v179.__r_.__value_.__l.__data_);
  }

  if (v184.__r_.__value_.__r.__words[0])
  {
    v184.__r_.__value_.__l.__size_ = v184.__r_.__value_.__r.__words[0];
    operator delete(v184.__r_.__value_.__l.__data_);
  }

  if (v187)
  {
    v188 = v187;
    operator delete(v187);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v192)
  {
    v193 = v192;
    operator delete(v192);
  }

  if (v189)
  {
    v190 = v189;
    operator delete(v189);
  }

  if (v197)
  {
    v198 = v197;
    operator delete(v197);
  }

  if (v194)
  {
    v195 = v194;
    operator delete(v194);
  }

  operations_research::sat::LinearExpr::LinearExpr(&v194, *a1, *(a1 + 8));
  operations_research::sat::LinearExpr::LinearExpr(&v189, *(*(a1 + 136) + 16), *(*(a1 + 136) + 24));
  operations_research::sat::LinearExpr::LinearExpr(__p, *(a1 + 88), *(a1 + 96));
  v92 = *(a1 + 136);
  v182.__r_.__value_.__r.__words[0] = *(v92 + 240);
  LODWORD(v182.__r_.__value_.__r.__words[1]) = *(v92 + 248);
  v182.__r_.__value_.__r.__words[2] = v166;
  v183 = v26;
  memset(&v184, 0, sizeof(v184));
  std::vector<operations_research::sat::BoolVar>::__init_with_size[abi:ne200100]<operations_research::sat::BoolVar const*,operations_research::sat::BoolVar const*>(&v184, &v182, &v184, 2uLL);
  v93 = ORToolsCpBasedAllocatorUtil::CreateBooleanAnd(a2, &v184);
  v178.__r_.__value_.__r.__words[0] = operations_research::sat::CpModelBuilder::NewOptionalIntervalVar(a2, &v194, &v189, __p, v93, v94);
  LODWORD(v178.__r_.__value_.__r.__words[1]) = v95;
  if (*(a1 + 271) >= 0)
  {
    v96 = *(a1 + 271);
  }

  else
  {
    v96 = *(a1 + 256);
  }

  v97 = &v179;
  std::string::basic_string[abi:ne200100](&v179, v96 + 32);
  if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v97 = v179.__r_.__value_.__r.__words[0];
  }

  if (v96)
  {
    if (*(a1 + 271) >= 0)
    {
      v98 = (a1 + 248);
    }

    else
    {
      v98 = *(a1 + 248);
    }

    memmove(v97, v98, v96);
  }

  strcpy(v97 + v96, ":nonresident_write_time_interval");
  if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v99 = &v179;
  }

  else
  {
    v99 = v179.__r_.__value_.__r.__words[0];
  }

  if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v100 = HIBYTE(v179.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v100 = v179.__r_.__value_.__l.__size_;
  }

  operations_research::sat::IntervalVar::WithName(&v178, v99, v100);
  if (SHIBYTE(v179.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v179.__r_.__value_.__l.__data_);
  }

  if (v184.__r_.__value_.__r.__words[0])
  {
    v184.__r_.__value_.__l.__size_ = v184.__r_.__value_.__r.__words[0];
    operator delete(v184.__r_.__value_.__l.__data_);
  }

  if (v187)
  {
    v188 = v187;
    operator delete(v187);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v192)
  {
    v193 = v192;
    operator delete(v192);
  }

  if (v189)
  {
    v190 = v189;
    operator delete(v189);
  }

  if (v197)
  {
    v198 = v197;
    operator delete(v197);
  }

  if (v194)
  {
    v195 = v194;
    operator delete(v194);
  }

  v164 = operations_research::sat::CpModelBuilder::NewIntVar(a2, a5);
  v162 = v101;
  v102 = *(a1 + 48);
  if (*(a1 + 56) != v102)
  {
    v103 = 0;
    v104 = 0;
    do
    {
      operations_research::sat::LinearExpr::LinearExpr(&v194, *(v102 + v103), *(v102 + v103 + 8));
      operations_research::sat::LinearExpr::LinearExpr(&v189, v164, v162);
      v178.__r_.__value_.__r.__words[0] = operations_research::sat::CpModelBuilder::AddLessOrEqual(a2, &v194, &v189);
      if (*(a1 + 271) >= 0)
      {
        v105 = *(a1 + 271);
      }

      else
      {
        v105 = *(a1 + 256);
      }

      std::string::basic_string[abi:ne200100](&v184, v105 + 6);
      if ((v184.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v106 = &v184;
      }

      else
      {
        v106 = v184.__r_.__value_.__r.__words[0];
      }

      if (v105)
      {
        if (*(a1 + 271) >= 0)
        {
          v107 = (a1 + 248);
        }

        else
        {
          v107 = *(a1 + 248);
        }

        memmove(v106, v107, v105);
      }

      strcpy(v106 + v105, ":read_");
      std::to_string(&v179, v104);
      if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v108 = &v179;
      }

      else
      {
        v108 = v179.__r_.__value_.__r.__words[0];
      }

      if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v109 = HIBYTE(v179.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v109 = v179.__r_.__value_.__l.__size_;
      }

      v110 = std::string::append(&v184, v108, v109);
      v111 = *&v110->__r_.__value_.__l.__data_;
      v182.__r_.__value_.__r.__words[2] = v110->__r_.__value_.__r.__words[2];
      *&v182.__r_.__value_.__l.__data_ = v111;
      v110->__r_.__value_.__l.__size_ = 0;
      v110->__r_.__value_.__r.__words[2] = 0;
      v110->__r_.__value_.__r.__words[0] = 0;
      v112 = std::string::append(&v182, "_end_constraint", 0xFuLL);
      v113 = *&v112->__r_.__value_.__l.__data_;
      v186 = v112->__r_.__value_.__r.__words[2];
      *__p = v113;
      v112->__r_.__value_.__l.__size_ = 0;
      v112->__r_.__value_.__r.__words[2] = 0;
      v112->__r_.__value_.__r.__words[0] = 0;
      if (v186 >= 0)
      {
        v114 = __p;
      }

      else
      {
        v114 = __p[0];
      }

      if (v186 >= 0)
      {
        v115 = HIBYTE(v186);
      }

      else
      {
        v115 = __p[1];
      }

      operations_research::sat::Constraint::WithName(&v178, v114, v115);
      if (SHIBYTE(v186) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v182.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v182.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v179.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v179.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v184.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v184.__r_.__value_.__l.__data_);
      }

      if (v192)
      {
        v193 = v192;
        operator delete(v192);
      }

      if (v189)
      {
        v190 = v189;
        operator delete(v189);
      }

      if (v197)
      {
        v198 = v197;
        operator delete(v197);
      }

      if (v194)
      {
        v195 = v194;
        operator delete(v194);
      }

      ++v104;
      v102 = *(a1 + 48);
      v103 += 16;
    }

    while (v104 < (*(a1 + 56) - v102) >> 4);
  }

  operations_research::sat::LinearExpr::LinearExpr(&v194, *(a1 + 72), *(a1 + 80));
  operations_research::sat::LinearExpr::LinearExpr(&v189, v164, v162);
  v182.__r_.__value_.__r.__words[0] = operations_research::sat::CpModelBuilder::AddLessOrEqual(a2, &v194, &v189);
  if (*(a1 + 271) >= 0)
  {
    v116 = *(a1 + 271);
  }

  else
  {
    v116 = *(a1 + 256);
  }

  v117 = __p;
  std::string::basic_string[abi:ne200100](__p, v116 + 23);
  if (v186 < 0)
  {
    v117 = __p[0];
  }

  if (v116)
  {
    if (*(a1 + 271) >= 0)
    {
      v118 = (a1 + 248);
    }

    else
    {
      v118 = *(a1 + 248);
    }

    memmove(v117, v118, v116);
  }

  strcpy(v117 + v116, ":compute_end_constraint");
  if (v186 >= 0)
  {
    v119 = __p;
  }

  else
  {
    v119 = __p[0];
  }

  if (v186 >= 0)
  {
    v120 = HIBYTE(v186);
  }

  else
  {
    v120 = __p[1];
  }

  operations_research::sat::Constraint::WithName(&v182, v119, v120);
  if (SHIBYTE(v186) < 0)
  {
    operator delete(__p[0]);
  }

  if (v192)
  {
    v193 = v192;
    operator delete(v192);
  }

  if (v189)
  {
    v190 = v189;
    operator delete(v189);
  }

  if (v197)
  {
    v198 = v197;
    operator delete(v197);
  }

  if (v194)
  {
    v195 = v194;
    operator delete(v194);
  }

  operations_research::sat::LinearExpr::LinearExpr(&v194, *(a1 + 88), *(a1 + 96));
  operations_research::sat::LinearExpr::LinearExpr(&v189, v164, v162);
  v182.__r_.__value_.__r.__words[0] = operations_research::sat::CpModelBuilder::AddLessOrEqual(a2, &v194, &v189);
  if (*(a1 + 271) >= 0)
  {
    v121 = *(a1 + 271);
  }

  else
  {
    v121 = *(a1 + 256);
  }

  v122 = __p;
  std::string::basic_string[abi:ne200100](__p, v121 + 21);
  if (v186 < 0)
  {
    v122 = __p[0];
  }

  if (v121)
  {
    if (*(a1 + 271) >= 0)
    {
      v123 = (a1 + 248);
    }

    else
    {
      v123 = *(a1 + 248);
    }

    memmove(v122, v123, v121);
  }

  strcpy(v122 + v121, ":write_end_constraint");
  if (v186 >= 0)
  {
    v124 = __p;
  }

  else
  {
    v124 = __p[0];
  }

  if (v186 >= 0)
  {
    v125 = HIBYTE(v186);
  }

  else
  {
    v125 = __p[1];
  }

  operations_research::sat::Constraint::WithName(&v182, v124, v125);
  if (SHIBYTE(v186) < 0)
  {
    operator delete(__p[0]);
  }

  if (v192)
  {
    v193 = v192;
    operator delete(v192);
  }

  if (v189)
  {
    v190 = v189;
    operator delete(v189);
  }

  if (v197)
  {
    v198 = v197;
    operator delete(v197);
  }

  if (v194)
  {
    v195 = v194;
    operator delete(v194);
  }

  memset(&v182, 0, sizeof(v182));
  memset(&v184, 0, sizeof(v184));
  v126 = *(a1 + 104);
  if (*(a1 + 112) == v126)
  {
    v130 = 0;
  }

  else
  {
    v127 = 0;
    do
    {
      v194 = v166;
      LODWORD(v195) = v165;
      v128 = v126[v127];
      LODWORD(v197) = *(v128 + 248);
      v196 = *(v128 + 240);
      v190 = 0;
      v191 = 0;
      v189 = 0;
      std::vector<operations_research::sat::BoolVar>::__init_with_size[abi:ne200100]<operations_research::sat::BoolVar const*,operations_research::sat::BoolVar const*>(&v189, &v194, &v198, 2uLL);
      __p[0] = ORToolsCpBasedAllocatorUtil::CreateBooleanAnd(a2, &v189);
      LODWORD(__p[1]) = v129;
      std::vector<operations_research::sat::IntVar>::push_back[abi:ne200100](&v182, __p);
      if (v189)
      {
        v190 = v189;
        operator delete(v189);
      }

      v194 = *(*(*a4 + 8 * v127) + 120);
      std::vector<long long>::push_back[abi:ne200100](&v184.__r_.__value_.__l.__data_, &v194);
      ++v127;
      v126 = *(a1 + 104);
      v130 = (*(a1 + 112) - v126) >> 3;
    }

    while (v130 > v127);
  }

  if (v130 > 1)
  {
    v194 = v166;
    LODWORD(v195) = v165;
    v131 = *v126;
    LODWORD(v197) = *(*v126 + 248);
    v196 = *(v131 + 240);
    v132 = v126[1];
    v199 = *(v132 + 248);
    v198 = *(v132 + 240);
    v189 = 0;
    v190 = 0;
    v191 = 0;
    std::vector<operations_research::sat::BoolVar>::__init_with_size[abi:ne200100]<operations_research::sat::BoolVar const*,operations_research::sat::BoolVar const*>(&v189, &v194, v200, 3uLL);
    __p[0] = ORToolsCpBasedAllocatorUtil::CreateBooleanAnd(a2, &v189);
    LODWORD(__p[1]) = v133;
    std::vector<operations_research::sat::IntVar>::push_back[abi:ne200100](&v182, __p);
    if (v189)
    {
      v190 = v189;
      operator delete(v189);
    }

    v194 = 1;
    std::vector<long long>::push_back[abi:ne200100](&v184.__r_.__value_.__l.__data_, &v194);
  }

  operations_research::sat::LinearExpr::LinearExpr(&v194, *(a1 + 144), *(a1 + 152));
  operations_research::sat::LinearExpr::WeightedSum(v182.__r_.__value_.__l.__data_, (v182.__r_.__value_.__l.__size_ - v182.__r_.__value_.__r.__words[0]) >> 4, v184.__r_.__value_.__l.__data_, (v184.__r_.__value_.__l.__size_ - v184.__r_.__value_.__r.__words[0]) >> 3, &v189);
  operations_research::sat::CpModelBuilder::AddEquality(a2, &v194, &v189);
  if (v192)
  {
    v193 = v192;
    operator delete(v192);
  }

  if (v189)
  {
    v190 = v189;
    operator delete(v189);
  }

  if (v197)
  {
    v198 = v197;
    operator delete(v197);
  }

  if (v194)
  {
    v195 = v194;
    operator delete(v194);
  }

  operations_research::sat::LinearExpr::LinearExpr(&v194, v164, v162);
  operations_research::sat::LinearExpr::LinearExpr(&v189, *(a1 + 144), *(a1 + 152));
  operations_research::sat::LinearExpr::LinearExpr(__p, *(a1 + 32), *(a1 + 40));
  operations_research::sat::CpModelBuilder::NewIntervalVar(a2, &v194, &v189, __p);
  if (v187)
  {
    v188 = v187;
    operator delete(v187);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v192)
  {
    v193 = v192;
    operator delete(v192);
  }

  if (v189)
  {
    v190 = v189;
    operator delete(v189);
  }

  if (v197)
  {
    v198 = v197;
    operator delete(v197);
  }

  if (v194)
  {
    v195 = v194;
    operator delete(v194);
  }

  v134 = *(a1 + 104);
  if (*(a1 + 112) != v134)
  {
    v135 = 0;
    do
    {
      v136 = *(a1 + 240);
      v137 = *(v134 + 8 * v135);
      v194 = *(v137 + 240);
      LODWORD(v195) = *(v137 + 248);
      v196 = v166;
      LODWORD(v197) = v165;
      v190 = 0;
      v191 = 0;
      v189 = 0;
      std::vector<operations_research::sat::BoolVar>::__init_with_size[abi:ne200100]<operations_research::sat::BoolVar const*,operations_research::sat::BoolVar const*>(&v189, &v194, &v198, 2uLL);
      v138 = ORToolsCpBasedAllocatorUtil::CreateBooleanAnd(a2, &v189);
      v140 = v139;
      if (*(a1 + 271) >= 0)
      {
        v141 = *(a1 + 271);
      }

      else
      {
        v141 = *(a1 + 256);
      }

      std::string::basic_string[abi:ne200100](v175, v141 + 35);
      if (v176 >= 0)
      {
        v142 = v175;
      }

      else
      {
        v142 = v175[0];
      }

      if (v141)
      {
        if (*(a1 + 271) >= 0)
        {
          v143 = (a1 + 248);
        }

        else
        {
          v143 = *(a1 + 248);
        }

        memmove(v142, v143, v141);
      }

      strcpy(v142 + v141, ":nonresident_read_pressure_interval");
      OptionalClosedInterval = ORToolsCpBasedAllocatorUtil::CreateOptionalClosedInterval(a2, v136, v136, v138, v140, v175);
      v146 = v145;
      if (v176 < 0)
      {
        operator delete(v175[0]);
      }

      if (v189)
      {
        v190 = v189;
        operator delete(v189);
      }

      v147 = *(*(a1 + 104) + 8 * v135);
      operations_research::sat::LinearExpr::LinearExpr(v172, *(v147 + 128), *(v147 + 136));
      operations_research::sat::CumulativeConstraint::AddDemand(a3, OptionalClosedInterval, v146, v172);
      if (v173)
      {
        v174 = v173;
        operator delete(v173);
      }

      if (v172[0])
      {
        v172[1] = v172[0];
        operator delete(v172[0]);
      }

      ++v135;
      v134 = *(a1 + 104);
    }

    while (v135 < (*(a1 + 112) - v134) >> 3);
  }

  v148 = *(a1 + 240);
  v149 = *(a1 + 136);
  v194 = *(v149 + 240);
  LODWORD(v195) = *(v149 + 248);
  v196 = v166;
  LODWORD(v197) = v165;
  v190 = 0;
  v191 = 0;
  v189 = 0;
  std::vector<operations_research::sat::BoolVar>::__init_with_size[abi:ne200100]<operations_research::sat::BoolVar const*,operations_research::sat::BoolVar const*>(&v189, &v194, &v198, 2uLL);
  v150 = ORToolsCpBasedAllocatorUtil::CreateBooleanAnd(a2, &v189);
  v152 = v151;
  if (*(a1 + 271) >= 0)
  {
    v153 = *(a1 + 271);
  }

  else
  {
    v153 = *(a1 + 256);
  }

  v154 = v170;
  std::string::basic_string[abi:ne200100](v170, v153 + 36);
  if (v171 < 0)
  {
    v154 = v170[0];
  }

  if (v153)
  {
    if (*(a1 + 271) >= 0)
    {
      v155 = (a1 + 248);
    }

    else
    {
      v155 = *(a1 + 248);
    }

    memmove(v154, v155, v153);
  }

  strcpy(v154 + v153, ":nonresident_write_pressure_interval");
  v156 = ORToolsCpBasedAllocatorUtil::CreateOptionalClosedInterval(a2, v148, v148, v150, v152, v170);
  v158 = v157;
  if (v171 < 0)
  {
    operator delete(v170[0]);
  }

  if (v189)
  {
    v190 = v189;
    operator delete(v189);
  }

  operations_research::sat::LinearExpr::LinearExpr(v167, *(*(a1 + 136) + 128), *(*(a1 + 136) + 136));
  operations_research::sat::CumulativeConstraint::AddDemand(a3, v156, v158, v167);
  if (v168)
  {
    v169 = v168;
    operator delete(v168);
  }

  if (v167[0])
  {
    v167[1] = v167[0];
    operator delete(v167[0]);
  }

  ORToolsLayerScheduleVariable::CreateInplaceAllocationConstraints(a1, a2);
  if (v184.__r_.__value_.__r.__words[0])
  {
    v184.__r_.__value_.__l.__size_ = v184.__r_.__value_.__r.__words[0];
    operator delete(v184.__r_.__value_.__l.__data_);
  }

  if (v182.__r_.__value_.__r.__words[0])
  {
    v182.__r_.__value_.__l.__size_ = v182.__r_.__value_.__r.__words[0];
    operator delete(v182.__r_.__value_.__l.__data_);
  }

  v159 = *MEMORY[0x277D85DE8];
}

void sub_23C943B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a49)
  {
    operator delete(a49);
  }

  _Unwind_Resume(a1);
}

void ORToolsLayerScheduleVariable::CreateInplaceAllocationConstraints(uint64_t a1, operations_research::sat::CpModelBuilder *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 192);
  v5 = *(a1 + 200) - v4;
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = v4 + v6;
      v9 = *v8;
      v44 = *(v8 + 8);
      v42 = 2;
      v43 = v9;
      operations_research::sat::LinearExpr::WeightedSum(&v43, 1uLL, &v42, 1, &v33);
      v10 = *(*(a1 + 104) + 8 * v7);
      v38 = *(v10 + 224);
      v39 = *(v10 + 232);
      v11 = *(a1 + 136);
      v40 = *(v11 + 224);
      v41 = *(v11 + 232);
      operations_research::sat::LinearExpr::Sum(&v38, 2, &v29);
      v37 = operations_research::sat::CpModelBuilder::AddLessOrEqual(a2, &v33, &v29);
      if (*(a1 + 271) >= 0)
      {
        v12 = *(a1 + 271);
      }

      else
      {
        v12 = *(a1 + 256);
      }

      std::string::basic_string[abi:ne200100](&__p, v12 + 24);
      if ((v28 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (v12)
      {
        if (*(a1 + 271) >= 0)
        {
          v14 = (a1 + 248);
        }

        else
        {
          v14 = *(a1 + 248);
        }

        memmove(p_p, v14, v12);
      }

      strcpy(p_p + v12, ":in_place_var_constraint");
      if ((v28 & 0x80u) == 0)
      {
        v15 = &__p;
      }

      else
      {
        v15 = __p;
      }

      if ((v28 & 0x80u) == 0)
      {
        v16 = v28;
      }

      else
      {
        v16 = v27;
      }

      operations_research::sat::Constraint::WithName(&v37, v15, v16);
      if (v28 < 0)
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

      if (v35)
      {
        v36 = v35;
        operator delete(v35);
      }

      if (v33)
      {
        v34 = v33;
        operator delete(v33);
      }

      ++v7;
      v4 = *(a1 + 192);
      v5 = *(a1 + 200) - v4;
      v6 += 16;
    }

    while (v7 < v5 >> 4);
  }

  if ((v5 >> 4) > 1)
  {
    v17 = *v4;
    v39 = *(v4 + 8);
    v38 = v17;
    LODWORD(v17) = *(v4 + 24);
    v40 = *(v4 + 16);
    v41 = v17;
    operations_research::sat::LinearExpr::Sum(&v38, 2, &v33);
    v18 = operations_research::sat::CpModelBuilder::NewConstant(a2, 1);
    operations_research::sat::LinearExpr::LinearExpr(&v29, v18, v19);
    v43 = operations_research::sat::CpModelBuilder::AddLessOrEqual(a2, &v33, &v29);
    if (*(a1 + 271) >= 0)
    {
      v20 = *(a1 + 271);
    }

    else
    {
      v20 = *(a1 + 256);
    }

    v21 = &__p;
    std::string::basic_string[abi:ne200100](&__p, v20 + 14);
    if ((v28 & 0x80u) != 0)
    {
      v21 = __p;
    }

    if (v20)
    {
      if (*(a1 + 271) >= 0)
      {
        v22 = (a1 + 248);
      }

      else
      {
        v22 = *(a1 + 248);
      }

      memmove(v21, v22, v20);
    }

    strcpy(v21 + v20, ":mutex_inplace");
    if ((v28 & 0x80u) == 0)
    {
      v23 = &__p;
    }

    else
    {
      v23 = __p;
    }

    if ((v28 & 0x80u) == 0)
    {
      v24 = v28;
    }

    else
    {
      v24 = v27;
    }

    operations_research::sat::Constraint::WithName(&v43, v23, v24);
    if (v28 < 0)
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

    if (v35)
    {
      v36 = v35;
      operator delete(v35);
    }

    if (v33)
    {
      v34 = v33;
      operator delete(v33);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

void sub_23C944224(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  operations_research::sat::LinearExpr::~LinearExpr(&a15);
  operations_research::sat::LinearExpr::~LinearExpr(&a22);
  _Unwind_Resume(a1);
}

void CpAllocGraph::~CpAllocGraph(CpAllocGraph *this)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,std::set<unsigned long>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::set<unsigned long>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::set<unsigned long>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::set<unsigned long>>>>::~__hash_table(this + 488);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 448);
  std::__tree<std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>>>::destroy(this + 424, *(this + 54));
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 384);
  std::__tree<std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>>>::destroy(this + 360, *(this + 46));
  std::__tree<std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>>>::destroy(this + 336, *(this + 43));

  CpGraph::~CpGraph(this);
}

BOOL CpAllocGraph::GetInPlacePorts(uint64_t a1, unint64_t a2, uint64_t **a3)
{
  v7 = a2;
  v4 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((a1 + 488), &v7);
  v5 = v4;
  if (v4 && v4 + 3 != a3)
  {
    std::__tree<unsigned long>::__assign_multi<std::__tree_const_iterator<unsigned long,std::__tree_node<unsigned long,void *> *,long>>(a3, v4[3], v4 + 4);
  }

  return v5 != 0;
}

BOOL CpAllocGraph::GetLayerBehavior(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = a2;
  v4 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((a1 + 448), &v6);
  if (v4)
  {
    *a3 = v4[3];
  }

  return v4 != 0;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,std::set<unsigned long>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::set<unsigned long>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::set<unsigned long>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::set<unsigned long>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,std::set<unsigned long>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::set<unsigned long>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::set<unsigned long>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::set<unsigned long>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,std::set<unsigned long>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::set<unsigned long>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::set<unsigned long>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::set<unsigned long>>>>::__deallocate_node(uint64_t a1, void **a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__tree<std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>>>::destroy((v2 + 3), v2[4]);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t **std::__tree<unsigned long>::__assign_multi<std::__tree_const_iterator<unsigned long,std::__tree_node<unsigned long,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = std::__tree<unsigned long>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v8[4] = v9[4];
          std::__tree<unsigned long>::__node_insert_multi(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = std::__tree<unsigned long>::_DetachedTreeCache::__detach_next(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = std::__tree<unsigned long>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v12);
  }

  if (a2 != a3)
  {
    std::__tree<unsigned long>::__emplace_multi<unsigned long const&>();
  }

  return result;
}

void sub_23C944574(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<unsigned long>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<unsigned long>::__node_insert_multi(uint64_t **a1, uint64_t *a2)
{
  v3 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (a2[4] >= v4[4])
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = a1 + 1;
  }

LABEL_8:
  std::__tree<unsigned long long>::__insert_node_at(a1, v3, v5, a2);
  return a2;
}

void *std::__tree<unsigned long>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t std::__tree<unsigned long>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>>>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CpTransposeUtils::TransposeType>>>::destroy(*a1, v2);
  }

  return a1;
}

uint64_t ORToolsTensorMemCacheAllocationVariable::ORToolsTensorMemCacheAllocationVariable(uint64_t a1, operations_research::sat::CpModelBuilder *a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v23 = operations_research::sat::CpModelBuilder::FalseVar(a2);
    v24 = v5;
    std::operator+<char>();
    v6 = std::string::append(&v20, ":no_alloc", 9uLL);
    v7 = *&v6->__r_.__value_.__l.__data_;
    v22 = v6->__r_.__value_.__r.__words[2];
    *__p = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    if (v22 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    if (v22 >= 0)
    {
      v9 = HIBYTE(v22);
    }

    else
    {
      v9 = __p[1];
    }

    v10 = operations_research::sat::BoolVar::WithName(&v23, v8, v9);
  }

  else
  {
    v18 = operations_research::sat::CpModelBuilder::NewBoolVar(a2);
    v19 = v12;
    std::operator+<char>();
    v13 = std::string::append(&v20, ":m$_resident_decision", 0x15uLL);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v22 = v13->__r_.__value_.__r.__words[2];
    *__p = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    if (v22 >= 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    if (v22 >= 0)
    {
      v16 = HIBYTE(v22);
    }

    else
    {
      v16 = __p[1];
    }

    v10 = operations_research::sat::BoolVar::WithName(&v18, v15, v16);
  }

  *a1 = v10;
  *(a1 + 8) = v11;
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_23C94488C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ORToolsMemCacheLayerScheduleVariable::ORToolsMemCacheLayerScheduleVariable(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *a1 = 0;
  *(a1 + 8) = 0x80000000;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  if (*(a6 + 16) == 1)
  {
    v10 = *(a6 + 8);
    *(a1 + 16) = *a6;
    *(a1 + 24) = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 32) = 1;
  }

  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  if (*(a7 + 16) == 1)
  {
    v11 = *(a7 + 8);
    *(a1 + 40) = *a7;
    *(a1 + 48) = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 56) = 1;
  }

  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  if (*(a8 + 16) == 1)
  {
    v12 = *(a8 + 8);
    *(a1 + 64) = *a8;
    *(a1 + 72) = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 80) = 1;
  }

  *(a1 + 88) = 0;
  *(a1 + 104) = 0;
  if (*(a9 + 16) == 1)
  {
    v13 = *(a9 + 8);
    *(a1 + 88) = *a9;
    *(a1 + 96) = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 104) = 1;
  }

  *(a1 + 112) = a3;
  *(a1 + 120) = a5;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 128), *a4, *(a4 + 1));
  }

  else
  {
    v14 = *a4;
    *(a1 + 144) = *(a4 + 2);
    *(a1 + 128) = v14;
  }

  return a1;
}

{
  return ORToolsMemCacheLayerScheduleVariable::ORToolsMemCacheLayerScheduleVariable(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

void sub_23C944A24(_Unwind_Exception *a1)
{
  if (*(v1 + 104) == 1)
  {
    v6 = *(v1 + 96);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  ORToolsMemCacheLayerScheduleVariable::ORToolsMemCacheLayerScheduleVariable(v4, v1, v3, v2);
  _Unwind_Resume(a1);
}

void ORToolsMemCacheLayerScheduleVariable::~ORToolsMemCacheLayerScheduleVariable(void **this)
{
  if (*(this + 151) < 0)
  {
    operator delete(this[16]);
  }

  if (*(this + 104) == 1)
  {
    v2 = this[12];
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }
  }

  if (*(this + 80) == 1)
  {
    v3 = this[9];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  if (*(this + 56) == 1)
  {
    v4 = this[6];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  if (*(this + 32) == 1)
  {
    v5 = this[3];
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void ORToolsMemCacheLayerScheduleVariable::GetNameAndVarVector(uint64_t a1, _DWORD *a2, std::string *this, void *a4)
{
  a4[1] = *a4;
  v8 = a2[2];
  if (v8 == 1)
  {
    std::string::append(this, "_dst_noalloc", 0xCuLL);
    if ((*(a1 + 104) & 1) == 0)
    {
      goto LABEL_26;
    }

    operations_research::sat::BoolVar::BoolVar(&v11, ~*(*(a1 + 88) + 8), **(a1 + 88));
    std::vector<operations_research::sat::IntVar>::push_back[abi:ne200100](a4, &v11);
  }

  else if (!v8)
  {
    std::string::append(this, "_dst_alloc", 0xAuLL);
    if ((*(a1 + 104) & 1) == 0)
    {
      goto LABEL_26;
    }

    std::vector<operations_research::sat::IntVar>::push_back[abi:ne200100](a4, *(a1 + 88));
  }

  if (*a2 == 1)
  {
    std::string::append(this, "_src1_noalloc", 0xDuLL);
    if ((*(a1 + 32) & 1) == 0)
    {
      goto LABEL_26;
    }

    operations_research::sat::BoolVar::BoolVar(&v11, ~*(*(a1 + 16) + 8), **(a1 + 16));
    std::vector<operations_research::sat::IntVar>::push_back[abi:ne200100](a4, &v11);
  }

  else if (!*a2)
  {
    std::string::append(this, "_src1_alloc", 0xBuLL);
    if ((*(a1 + 32) & 1) == 0)
    {
      goto LABEL_26;
    }

    std::vector<operations_research::sat::IntVar>::push_back[abi:ne200100](a4, *(a1 + 16));
  }

  v9 = a2[1];
  if (v9 == 1)
  {
    std::string::append(this, "_src2_noalloc", 0xDuLL);
    if ((*(a1 + 56) & 1) == 0)
    {
      goto LABEL_26;
    }

    operations_research::sat::BoolVar::BoolVar(&v11, ~*(*(a1 + 40) + 8), **(a1 + 40));
    std::vector<operations_research::sat::IntVar>::push_back[abi:ne200100](a4, &v11);
  }

  else if (!v9)
  {
    std::string::append(this, "_src2_alloc", 0xBuLL);
    if ((*(a1 + 56) & 1) == 0)
    {
      goto LABEL_26;
    }

    std::vector<operations_research::sat::IntVar>::push_back[abi:ne200100](a4, *(a1 + 40));
  }

  v10 = a2[3];
  if (v10 == 1)
  {
    std::string::append(this, "_kernel_noalloc", 0xFuLL);
    if ((*(a1 + 80) & 1) == 0)
    {
      goto LABEL_26;
    }

    operations_research::sat::BoolVar::BoolVar(&v11, ~*(*(a1 + 64) + 8), **(a1 + 64));
    std::vector<operations_research::sat::IntVar>::push_back[abi:ne200100](a4, &v11);
  }

  else if (!v10)
  {
    std::string::append(this, "_kernel_alloc", 0xDuLL);
    if (*(a1 + 80))
    {
      std::vector<operations_research::sat::IntVar>::push_back[abi:ne200100](a4, *(a1 + 64));
      return;
    }

LABEL_26:
    std::__throw_bad_optional_access[abi:ne200100]();
  }
}

uint64_t ORToolsMemCacheLayerScheduleVariable::CreateLayerConstraint(uint64_t a1, operations_research::sat::CpModelBuilder *a2, uint64_t a3)
{
  v118 = *MEMORY[0x277D85DE8];
  v115.__r_.__value_.__r.__words[0] = 0x100000000;
  v114[0] = 0;
  v114[1] = 0;
  v113 = 0;
  std::vector<CpAllocUtils::MemCacheAllocationType>::__init_with_size[abi:ne200100]<CpAllocUtils::MemCacheAllocationType const*,CpAllocUtils::MemCacheAllocationType const*>(&v113, &v115, &v115.__r_.__value_.__l.__size_, 2uLL);
  LODWORD(v115.__r_.__value_.__l.__data_) = 2;
  v112[0] = 0;
  v112[1] = 0;
  v111 = 0;
  std::vector<CpAllocUtils::MemCacheAllocationType>::__init_with_size[abi:ne200100]<CpAllocUtils::MemCacheAllocationType const*,CpAllocUtils::MemCacheAllocationType const*>(&v111, &v115, v115.__r_.__value_.__r.__words + 4, 1uLL);
  v78 = *(a1 + 32);
  v80 = *(a1 + 56);
  v83 = *(a1 + 80);
  v5 = *(a1 + 104);
  v108 = 0;
  v109 = 0;
  v110 = 0;
  v105 = 0;
  v106 = 0;
  v107 = 0;
  v102 = 0;
  v103 = 0;
  v104 = 0;
  v6 = v5 == 0;
  if (v5)
  {
    v7 = &v113;
  }

  else
  {
    v7 = &v111;
  }

  v8 = *v7;
  v9 = v114;
  if (v6)
  {
    v9 = v112;
  }

  v77 = *v9;
  if (v8 == *v9)
  {
    v64 = 0;
    v63 = 0;
  }

  else
  {
    v10 = v8;
    do
    {
      v79 = v10;
      v11 = *v10;
      *&v12 = 0x200000002;
      *(&v12 + 1) = 0x200000002;
      v101 = v12;
      if (v11 <= 1)
      {
        DWORD2(v101) = v11;
      }

      if (v78)
      {
        v13 = &v113;
      }

      else
      {
        v13 = &v111;
      }

      v14 = *v13;
      v15 = v114;
      if (!v78)
      {
        v15 = v112;
      }

      v16 = *v15;
      v81 = v16;
      while (v14 != v16)
      {
        v82 = v14;
        if (*v14 == 1)
        {
          LODWORD(v101) = 1;
        }

        else if (!*v14)
        {
          LODWORD(v101) = 0;
        }

        if (v80)
        {
          v17 = &v113;
        }

        else
        {
          v17 = &v111;
        }

        v18 = *v17;
        v19 = v114;
        if (!v80)
        {
          v19 = v112;
        }

        v20 = *v19;
        v84 = v20;
        while (v18 != v20)
        {
          v85 = v18;
          if (*v18 <= 1u)
          {
            DWORD1(v101) = *v18;
          }

          if (v83)
          {
            v21 = &v113;
          }

          else
          {
            v21 = &v111;
          }

          v22 = *v21;
          v23 = v114;
          if (!v83)
          {
            v23 = v112;
          }

          v24 = *v23;
          while (v22 != v24)
          {
            if (*v22 <= 1u)
            {
              HIDWORD(v101) = *v22;
            }

            memset(&v115, 0, sizeof(v115));
            v87 = 0;
            v88 = 0;
            v89 = 0;
            ORToolsMemCacheLayerScheduleVariable::GetNameAndVarVector(a1, &v101, &v115, &v87);
            Latency = MemCacheLayerLatencyInfo::GetLatency(a3, &v101);
            v26 = Latency;
            v27 = v109;
            if (v109 >= v110)
            {
              v29 = v108;
              v30 = v109 - v108;
              v31 = (v109 - v108) >> 3;
              v32 = v31 + 1;
              if ((v31 + 1) >> 61)
              {
                std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
              }

              v33 = v110 - v108;
              if ((v110 - v108) >> 2 > v32)
              {
                v32 = v33 >> 2;
              }

              v34 = v33 >= 0x7FFFFFFFFFFFFFF8;
              v35 = 0x1FFFFFFFFFFFFFFFLL;
              if (!v34)
              {
                v35 = v32;
              }

              if (v35)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(&v108, v35);
              }

              *(8 * v31) = Latency;
              v28 = 8 * v31 + 8;
              memcpy(0, v29, v30);
              v36 = v108;
              v108 = 0;
              v109 = v28;
              v110 = 0;
              if (v36)
              {
                operator delete(v36);
              }
            }

            else
            {
              *v109 = Latency;
              v28 = (v27 + 8);
            }

            v109 = v28;
            v95.__r_.__value_.__r.__words[0] = operations_research::sat::CpModelBuilder::NewConstant(a2, v26);
            LODWORD(v95.__r_.__value_.__r.__words[1]) = v37;
            std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 128), &v115.__r_.__value_.__l.__data_, &__p);
            if (v100 >= 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p;
            }

            if (v100 >= 0)
            {
              v39 = HIBYTE(v100);
            }

            else
            {
              v39 = *(&__p + 1);
            }

            v40 = operations_research::sat::IntVar::WithName(&v95, p_p, v39);
            v42 = v41;
            if (SHIBYTE(v100) < 0)
            {
              operator delete(__p);
            }

            v43 = v106;
            if (v106 >= v107)
            {
              v45 = (v106 - v105) >> 4;
              v46 = v45 + 1;
              if ((v45 + 1) >> 60)
              {
                std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
              }

              v47 = v107 - v105;
              if ((v107 - v105) >> 3 > v46)
              {
                v46 = v47 >> 3;
              }

              if (v47 >= 0x7FFFFFFFFFFFFFF0)
              {
                v48 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v48 = v46;
              }

              if (v48)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<operations_research::sat::BoolVar>>(&v105, v48);
              }

              v49 = 16 * v45;
              *v49 = v40;
              *(v49 + 8) = v42;
              v44 = 16 * v45 + 16;
              v50 = (16 * v45 - (v106 - v105));
              memcpy(v50, v105, v106 - v105);
              v51 = v105;
              v105 = v50;
              v106 = v44;
              v107 = 0;
              if (v51)
              {
                operator delete(v51);
              }
            }

            else
            {
              *v106 = v40;
              *(v43 + 2) = v42;
              v44 = (v43 + 16);
            }

            v106 = v44;
            BooleanAnd = ORToolsCpBasedAllocatorUtil::CreateBooleanAnd(a2, &v87);
            v97 = v52;
            if (*(a1 + 151) >= 0)
            {
              v53 = *(a1 + 151);
            }

            else
            {
              v53 = *(a1 + 136);
            }

            std::string::basic_string[abi:ne200100](&v95, v53 + 6);
            if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v54 = &v95;
            }

            else
            {
              v54 = v95.__r_.__value_.__r.__words[0];
            }

            if (v53)
            {
              if (*(a1 + 151) >= 0)
              {
                v55 = (a1 + 128);
              }

              else
              {
                v55 = *(a1 + 128);
              }

              memmove(v54, v55, v53);
            }

            strcpy(v54 + v53, ":BOOL_");
            if ((v115.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v56 = &v115;
            }

            else
            {
              v56 = v115.__r_.__value_.__r.__words[0];
            }

            if ((v115.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v115.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v115.__r_.__value_.__l.__size_;
            }

            v58 = std::string::append(&v95, v56, size);
            v59 = *&v58->__r_.__value_.__l.__data_;
            v100 = v58->__r_.__value_.__r.__words[2];
            __p = v59;
            v58->__r_.__value_.__l.__size_ = 0;
            v58->__r_.__value_.__r.__words[2] = 0;
            v58->__r_.__value_.__r.__words[0] = 0;
            if (v100 >= 0)
            {
              v60 = &__p;
            }

            else
            {
              v60 = __p;
            }

            if (v100 >= 0)
            {
              v61 = HIBYTE(v100);
            }

            else
            {
              v61 = *(&__p + 1);
            }

            *&v98 = operations_research::sat::BoolVar::WithName(&BooleanAnd, v60, v61);
            DWORD2(v98) = v62;
            if (SHIBYTE(v100) < 0)
            {
              operator delete(__p);
            }

            if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v95.__r_.__value_.__l.__data_);
            }

            std::vector<operations_research::sat::IntVar>::push_back[abi:ne200100](&v102, &v98);
            if (v87)
            {
              v88 = v87;
              operator delete(v87);
            }

            if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v115.__r_.__value_.__l.__data_);
            }

            ++v22;
          }

          v20 = v84;
          v18 = v85 + 1;
        }

        v16 = v81;
        v14 = v82 + 1;
      }

      v10 = v79 + 1;
    }

    while (v79 + 1 != v77);
    v63 = v108;
    v64 = v109;
  }

  v93 = 0;
  v94 = 0;
  v92 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v92, v63, v64, (v64 - v63) >> 3);
  operations_research::Domain::FromValues(&v92, &__p);
  if (v92)
  {
    v93 = v92;
    operator delete(v92);
  }

  v87 = operations_research::sat::CpModelBuilder::NewIntVar(a2, &__p);
  LODWORD(v88) = v65;
  if (*(a1 + 151) >= 0)
  {
    v66 = *(a1 + 151);
  }

  else
  {
    v66 = *(a1 + 136);
  }

  v67 = &v115;
  std::string::basic_string[abi:ne200100](&v115, v66 + 11);
  if ((v115.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v67 = v115.__r_.__value_.__r.__words[0];
  }

  if (v66)
  {
    if (*(a1 + 151) >= 0)
    {
      v68 = (a1 + 128);
    }

    else
    {
      v68 = *(a1 + 128);
    }

    memmove(v67, v68, v66);
  }

  strcpy(v67 + v66, ":layer_time");
  if ((v115.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v69 = &v115;
  }

  else
  {
    v69 = v115.__r_.__value_.__r.__words[0];
  }

  if ((v115.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v70 = HIBYTE(v115.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v70 = v115.__r_.__value_.__l.__size_;
  }

  *a1 = operations_research::sat::IntVar::WithName(&v87, v69, v70);
  *(a1 + 8) = v71;
  if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v115.__r_.__value_.__l.__data_);
  }

  v72 = v102;
  if (v103 != v102)
  {
    v73 = 0;
    v74 = 0;
    do
    {
      operations_research::sat::LinearExpr::LinearExpr(&v115, *a1, *(a1 + 8));
      operations_research::sat::LinearExpr::LinearExpr(&v87, *(v105 + v73), *(v105 + v73 + 8));
      v95.__r_.__value_.__r.__words[0] = operations_research::sat::CpModelBuilder::AddEquality(a2, &v115, &v87);
      operations_research::sat::Constraint::OnlyEnforceIf(&v95, *(v102 + v73), *(v102 + v73 + 8));
      if (v90)
      {
        v91 = v90;
        operator delete(v90);
      }

      if (v87)
      {
        v88 = v87;
        operator delete(v87);
      }

      if (v116)
      {
        v117 = v116;
        operator delete(v116);
      }

      if (v115.__r_.__value_.__r.__words[0])
      {
        v115.__r_.__value_.__l.__size_ = v115.__r_.__value_.__r.__words[0];
        operator delete(v115.__r_.__value_.__l.__data_);
      }

      ++v74;
      v72 = v102;
      v73 += 16;
    }

    while (v74 < (v103 - v102) >> 4);
  }

  if (__p)
  {
    operator delete(*(&__p + 1));
    v72 = v102;
  }

  if (v72)
  {
    v103 = v72;
    operator delete(v72);
  }

  if (v105)
  {
    v106 = v105;
    operator delete(v105);
  }

  if (v108)
  {
    v109 = v108;
    operator delete(v108);
  }

  if (v111)
  {
    v112[0] = v111;
    operator delete(v111);
  }

  if (v113)
  {
    v114[0] = v113;
    operator delete(v113);
  }

  v75 = *MEMORY[0x277D85DE8];
  return 1;
}

void sub_23C94552C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, void *__p, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53)
{
  if (*(v53 - 137) < 0)
  {
    operator delete(*(v53 - 160));
  }

  if (a40)
  {
    operator delete(__p);
  }

  if (a49)
  {
    operator delete(a49);
  }

  if (a52)
  {
    operator delete(a52);
  }

  v55 = *(v53 - 240);
  if (v55)
  {
    *(v53 - 232) = v55;
    operator delete(v55);
  }

  v56 = *(v53 - 216);
  if (v56)
  {
    *(v53 - 208) = v56;
    operator delete(v56);
  }

  v57 = *(v53 - 192);
  if (v57)
  {
    *(v53 - 184) = v57;
    operator delete(v57);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82908] + 16;
  __cxa_throw(exception, MEMORY[0x277D82770], MEMORY[0x277D82618]);
}

uint64_t std::vector<CpAllocUtils::MemCacheAllocationType>::__init_with_size[abi:ne200100]<CpAllocUtils::MemCacheAllocationType const*,CpAllocUtils::MemCacheAllocationType const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<CpAllocUtils::MemCacheAllocationType>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23C945738(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<CpAllocUtils::MemCacheAllocationType>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<CpAllocUtils::MemCacheAllocationType>>(a1, a2);
  }

  std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23C9457F0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void ORToolsChainScheduleVariable::ORToolsChainScheduleVariable(uint64_t a1, operations_research::sat::CpModelBuilder *a2, uint64_t a3, const void **a4, uint64_t a5, void *a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, operations_research::Domain *a21)
{
  v85 = operations_research::sat::CpModelBuilder::NewConstant(a2, 0);
  v86 = v26;
  if (*(a4 + 23) >= 0)
  {
    v27 = *(a4 + 23);
  }

  else
  {
    v27 = a4[1];
  }

  std::string::basic_string[abi:ne200100](&__p, v27 + 12);
  if ((v84 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v27)
  {
    if (*(a4 + 23) >= 0)
    {
      v29 = a4;
    }

    else
    {
      v29 = *a4;
    }

    memmove(p_p, v29, v27);
  }

  strcpy(p_p + v27, ":chain_begin");
  if ((v84 & 0x80u) == 0)
  {
    v30 = &__p;
  }

  else
  {
    v30 = __p;
  }

  if ((v84 & 0x80u) == 0)
  {
    v31 = v84;
  }

  else
  {
    v31 = v83;
  }

  *a1 = operations_research::sat::IntVar::WithName(&v85, v30, v31);
  *(a1 + 8) = v32;
  if (v84 < 0)
  {
    operator delete(__p);
  }

  v85 = operations_research::sat::CpModelBuilder::NewIntVar(a2, a21);
  v86 = v33;
  if (*(a4 + 23) >= 0)
  {
    v34 = *(a4 + 23);
  }

  else
  {
    v34 = a4[1];
  }

  std::string::basic_string[abi:ne200100](&__p, v34 + 11);
  if ((v84 & 0x80u) == 0)
  {
    v35 = &__p;
  }

  else
  {
    v35 = __p;
  }

  if (v34)
  {
    if (*(a4 + 23) >= 0)
    {
      v36 = a4;
    }

    else
    {
      v36 = *a4;
    }

    memmove(v35, v36, v34);
  }

  strcpy(v35 + v34, ":chain_time");
  if ((v84 & 0x80u) == 0)
  {
    v37 = &__p;
  }

  else
  {
    v37 = __p;
  }

  if ((v84 & 0x80u) == 0)
  {
    v38 = v84;
  }

  else
  {
    v38 = v83;
  }

  *(a1 + 16) = operations_research::sat::IntVar::WithName(&v85, v37, v38);
  *(a1 + 24) = v39;
  if (v84 < 0)
  {
    operator delete(__p);
  }

  v85 = operations_research::sat::CpModelBuilder::NewIntVar(a2, a21);
  v86 = v40;
  if (*(a4 + 23) >= 0)
  {
    v41 = *(a4 + 23);
  }

  else
  {
    v41 = a4[1];
  }

  std::string::basic_string[abi:ne200100](&__p, v41 + 10);
  if ((v84 & 0x80u) == 0)
  {
    v42 = &__p;
  }

  else
  {
    v42 = __p;
  }

  if (v41)
  {
    if (*(a4 + 23) >= 0)
    {
      v43 = a4;
    }

    else
    {
      v43 = *a4;
    }

    memmove(v42, v43, v41);
  }

  strcpy(v42 + v41, ":chain_end");
  if ((v84 & 0x80u) == 0)
  {
    v44 = &__p;
  }

  else
  {
    v44 = __p;
  }

  if ((v84 & 0x80u) == 0)
  {
    v45 = v84;
  }

  else
  {
    v45 = v83;
  }

  *(a1 + 32) = operations_research::sat::IntVar::WithName(&v85, v44, v45);
  *(a1 + 40) = v46;
  if (v84 < 0)
  {
    operator delete(__p);
  }

  ORToolsChainScheduleVariable::CreateReadEndVariables(a2, a4, (a6[1] - *a6) >> 3, a21, (a1 + 48));
  v85 = operations_research::sat::CpModelBuilder::NewIntVar(a2, a21);
  v86 = v47;
  if (*(a4 + 23) >= 0)
  {
    v48 = *(a4 + 23);
  }

  else
  {
    v48 = a4[1];
  }

  v49 = &__p;
  std::string::basic_string[abi:ne200100](&__p, v48 + 21);
  if ((v84 & 0x80u) != 0)
  {
    v49 = __p;
  }

  if (v48)
  {
    if (*(a4 + 23) >= 0)
    {
      v50 = a4;
    }

    else
    {
      v50 = *a4;
    }

    memmove(v49, v50, v48);
  }

  strcpy(v49 + v48, ":producer_compute_end");
  if ((v84 & 0x80u) == 0)
  {
    v51 = &__p;
  }

  else
  {
    v51 = __p;
  }

  if ((v84 & 0x80u) == 0)
  {
    v52 = v84;
  }

  else
  {
    v52 = v83;
  }

  *(a1 + 72) = operations_research::sat::IntVar::WithName(&v85, v51, v52);
  *(a1 + 80) = v53;
  if (v84 < 0)
  {
    operator delete(__p);
  }

  v85 = operations_research::sat::CpModelBuilder::NewIntVar(a2, a21);
  v86 = v54;
  if (*(a4 + 23) >= 0)
  {
    v55 = *(a4 + 23);
  }

  else
  {
    v55 = a4[1];
  }

  v56 = &__p;
  std::string::basic_string[abi:ne200100](&__p, v55 + 19);
  if ((v84 & 0x80u) != 0)
  {
    v56 = __p;
  }

  if (v55)
  {
    if (*(a4 + 23) >= 0)
    {
      v57 = a4;
    }

    else
    {
      v57 = *a4;
    }

    memmove(v56, v57, v55);
  }

  strcpy(v56 + v55, ":prodcuer_write_end");
  if ((v84 & 0x80u) == 0)
  {
    v58 = &__p;
  }

  else
  {
    v58 = __p;
  }

  if ((v84 & 0x80u) == 0)
  {
    v59 = v84;
  }

  else
  {
    v59 = v83;
  }

  *(a1 + 88) = operations_research::sat::IntVar::WithName(&v85, v58, v59);
  *(a1 + 96) = v60;
  if (v84 < 0)
  {
    operator delete(__p);
  }

  ORToolsChainScheduleVariable::CreateReadEndVariables(a2, a13, (a15[1] - *a15) >> 3, a21, (a1 + 104));
  v85 = operations_research::sat::CpModelBuilder::NewIntVar(a2, a21);
  v86 = v61;
  if (*(a13 + 23) >= 0)
  {
    v62 = *(a13 + 23);
  }

  else
  {
    v62 = *(a13 + 8);
  }

  v63 = &__p;
  std::string::basic_string[abi:ne200100](&__p, v62 + 21);
  if ((v84 & 0x80u) != 0)
  {
    v63 = __p;
  }

  if (v62)
  {
    if (*(a13 + 23) >= 0)
    {
      v64 = a13;
    }

    else
    {
      v64 = *a13;
    }

    memmove(v63, v64, v62);
  }

  strcpy(v63 + v62, ":consumer_compute_end");
  if ((v84 & 0x80u) == 0)
  {
    v65 = &__p;
  }

  else
  {
    v65 = __p;
  }

  if ((v84 & 0x80u) == 0)
  {
    v66 = v84;
  }

  else
  {
    v66 = v83;
  }

  *(a1 + 128) = operations_research::sat::IntVar::WithName(&v85, v65, v66);
  *(a1 + 136) = v67;
  if (v84 < 0)
  {
    operator delete(__p);
  }

  v85 = operations_research::sat::CpModelBuilder::NewIntVar(a2, a21);
  v86 = v68;
  if (*(a13 + 23) >= 0)
  {
    v69 = *(a13 + 23);
  }

  else
  {
    v69 = *(a13 + 8);
  }

  v70 = &__p;
  std::string::basic_string[abi:ne200100](&__p, v69 + 19);
  if ((v84 & 0x80u) != 0)
  {
    v70 = __p;
  }

  if (v69)
  {
    if (*(a13 + 23) >= 0)
    {
      v71 = a13;
    }

    else
    {
      v71 = *a13;
    }

    memmove(v70, v71, v69);
  }

  strcpy(v70 + v69, ":consumer_write_end");
  if ((v84 & 0x80u) == 0)
  {
    v72 = &__p;
  }

  else
  {
    v72 = __p;
  }

  if ((v84 & 0x80u) == 0)
  {
    v73 = v84;
  }

  else
  {
    v73 = v83;
  }

  *(a1 + 144) = operations_research::sat::IntVar::WithName(&v85, v72, v73);
  *(a1 + 152) = v74;
  if (v84 < 0)
  {
    operator delete(__p);
  }

  v85 = operations_research::sat::CpModelBuilder::NewIntVar(a2, a21);
  v86 = v75;
  if (*(a4 + 23) >= 0)
  {
    v76 = *(a4 + 23);
  }

  else
  {
    v76 = a4[1];
  }

  v77 = &__p;
  std::string::basic_string[abi:ne200100](&__p, v76 + 29);
  if ((v84 & 0x80u) != 0)
  {
    v77 = __p;
  }

  if (v76)
  {
    if (*(a4 + 23) >= 0)
    {
      v78 = a4;
    }

    else
    {
      v78 = *a4;
    }

    memmove(v77, v78, v76);
  }

  strcpy(v77 + v76, ":pipeline_stall_overhead_time");
  if ((v84 & 0x80u) == 0)
  {
    v79 = &__p;
  }

  else
  {
    v79 = __p;
  }

  if ((v84 & 0x80u) == 0)
  {
    v80 = v84;
  }

  else
  {
    v80 = v83;
  }

  *(a1 + 160) = operations_research::sat::IntVar::WithName(&v85, v79, v80);
  *(a1 + 168) = v81;
  if (v84 < 0)
  {
    operator delete(__p);
  }

  ORToolsChainScheduleVariable::CreateInputL2AccessVariables(a6, a7, (a1 + 176));
  operator new();
}

{
  ORToolsChainScheduleVariable::ORToolsChainScheduleVariable(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

void sub_23C946244(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 343) < 0)
  {
    operator delete(*(v17 + 320));
  }

  v19 = *(v17 + 280);
  if (v19)
  {
    *(v17 + 288) = v19;
    operator delete(v19);
  }

  v20 = *(v17 + 256);
  if (v20)
  {
    *(v17 + 264) = v20;
    operator delete(v20);
  }

  std::unique_ptr<ORToolsCpL2AccessVariable>::~unique_ptr[abi:ne200100]((v17 + 248));
  std::unique_ptr<ORToolsCpComputeConstant>::~unique_ptr[abi:ne200100]((v17 + 240));
  std::vector<std::unique_ptr<ORToolsCpL2AccessVariable>>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::unique_ptr<ORToolsCpL2AccessVariable>::~unique_ptr[abi:ne200100]((v17 + 208));
  std::unique_ptr<ORToolsCpComputeConstant>::~unique_ptr[abi:ne200100]((v17 + 200));
  std::vector<std::unique_ptr<ORToolsCpL2AccessVariable>>::__destroy_vector::operator()[abi:ne200100](&__p);
  v21 = *(v17 + 104);
  if (v21)
  {
    *(v17 + 112) = v21;
    operator delete(v21);
  }

  v22 = *(v17 + 48);
  if (v22)
  {
    *(v17 + 56) = v22;
    operator delete(v22);
  }

  _Unwind_Resume(a1);
}

void sub_23C946448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    JUMPOUT(0x23C94643CLL);
  }

  JUMPOUT(0x23C946440);
}

void ORToolsChainScheduleVariable::CreateReadEndVariables(operations_research::sat::CpModelBuilder *a1@<X1>, const void **a2@<X2>, uint64_t a3@<X3>, const operations_research::Domain *a4@<X4>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v27 = operations_research::sat::CpModelBuilder::NewIntVar(a1, a4);
  v28 = v10;
  if (*(a2 + 23) >= 0)
  {
    v11 = *(a2 + 23);
  }

  else
  {
    v11 = a2[1];
  }

  p_p = &__p;
  std::string::basic_string[abi:ne200100](&__p, v11 + 11);
  if ((v26 & 0x80u) != 0)
  {
    p_p = __p;
  }

  if (v11)
  {
    if (*(a2 + 23) >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    memmove(p_p, v13, v11);
  }

  strcpy(p_p + v11, ":read_end_0");
  if ((v26 & 0x80u) == 0)
  {
    v14 = &__p;
  }

  else
  {
    v14 = __p;
  }

  if ((v26 & 0x80u) == 0)
  {
    v15 = v26;
  }

  else
  {
    v15 = v25;
  }

  *&v29 = operations_research::sat::IntVar::WithName(&v27, v14, v15);
  DWORD2(v29) = v16;
  std::vector<operations_research::sat::IntVar>::push_back[abi:ne200100](a5, &v29);
  if (v26 < 0)
  {
    operator delete(__p);
  }

  if (a3 == 2)
  {
    v27 = operations_research::sat::CpModelBuilder::NewIntVar(a1, a4);
    v28 = v17;
    if (*(a2 + 23) >= 0)
    {
      v18 = *(a2 + 23);
    }

    else
    {
      v18 = a2[1];
    }

    v19 = &__p;
    std::string::basic_string[abi:ne200100](&__p, v18 + 11);
    if ((v26 & 0x80u) != 0)
    {
      v19 = __p;
    }

    if (v18)
    {
      if (*(a2 + 23) >= 0)
      {
        v20 = a2;
      }

      else
      {
        v20 = *a2;
      }

      memmove(v19, v20, v18);
    }

    strcpy(v19 + v18, ":read_end_1");
    if ((v26 & 0x80u) == 0)
    {
      v21 = &__p;
    }

    else
    {
      v21 = __p;
    }

    if ((v26 & 0x80u) == 0)
    {
      v22 = v26;
    }

    else
    {
      v22 = v25;
    }

    *&v29 = operations_research::sat::IntVar::WithName(&v27, v21, v22);
    DWORD2(v29) = v23;
    std::vector<operations_research::sat::IntVar>::push_back[abi:ne200100](a5, &v29);
    if (v26 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_23C946674(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v16 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

void ORToolsChainScheduleVariable::CreateInputL2AccessVariables(void *a1@<X2>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (a1[1] != *a1)
  {
    v3 = *a2;
    operator new();
  }
}

void sub_23C946844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  std::unique_ptr<ORToolsCpL2AccessVariable>::~unique_ptr[abi:ne200100](&a9);
  std::vector<std::unique_ptr<ORToolsCpL2AccessVariable>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void ORToolsChainScheduleVariable::~ORToolsChainScheduleVariable(ORToolsChainScheduleVariable *this)
{
  if (*(this + 367) < 0)
  {
    operator delete(*(this + 43));
  }

  if (*(this + 343) < 0)
  {
    operator delete(*(this + 40));
  }

  v2 = *(this + 35);
  if (v2)
  {
    *(this + 36) = v2;
    operator delete(v2);
  }

  v3 = *(this + 32);
  if (v3)
  {
    *(this + 33) = v3;
    operator delete(v3);
  }

  std::unique_ptr<ORToolsCpL2AccessVariable>::~unique_ptr[abi:ne200100](this + 31);
  std::unique_ptr<ORToolsCpComputeConstant>::~unique_ptr[abi:ne200100](this + 30);
  v6 = (this + 216);
  std::vector<std::unique_ptr<ORToolsCpL2AccessVariable>>::__destroy_vector::operator()[abi:ne200100](&v6);
  std::unique_ptr<ORToolsCpL2AccessVariable>::~unique_ptr[abi:ne200100](this + 26);
  std::unique_ptr<ORToolsCpComputeConstant>::~unique_ptr[abi:ne200100](this + 25);
  v6 = (this + 176);
  std::vector<std::unique_ptr<ORToolsCpL2AccessVariable>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v4 = *(this + 13);
  if (v4)
  {
    *(this + 14) = v4;
    operator delete(v4);
  }

  v5 = *(this + 6);
  if (v5)
  {
    *(this + 7) = v5;
    operator delete(v5);
  }
}

void ORToolsChainScheduleVariable::CreateLayerConstraint(uint64_t a1, operations_research::sat::CpModelBuilder *a2, uint64_t *a3, void *a4, uint64_t a5, const operations_research::Domain *a6)
{
  v359[1] = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 208);
  v298 = *(v10 + 256);
  v299 = *(v10 + 264);
  v11 = operations_research::sat::BoolVar::BoolVar(&v353, ~v299, v298);
  v12 = v353;
  v13 = v354;
  operations_research::sat::LinearExpr::LinearExpr(v11, *(a1 + 16), *(a1 + 24));
  *&v349 = *(a1 + 32);
  DWORD2(v349) = *(a1 + 40);
  v350 = *a1;
  LODWORD(v351) = *(a1 + 8);
  *&v348.__r_.__value_.__l.__data_ = xmmword_23CE306C0;
  operations_research::sat::LinearExpr::WeightedSum(&v349, 2, 2, &v341);
  v300 = a2;
  v338.__r_.__value_.__r.__words[0] = operations_research::sat::CpModelBuilder::AddEquality(a2, &v353, &v341);
  if (*(a1 + 343) >= 0)
  {
    v14 = *(a1 + 343);
  }

  else
  {
    v14 = *(a1 + 328);
  }

  std::string::basic_string[abi:ne200100](&__p, v14 + 15);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (v14)
  {
    if (*(a1 + 343) >= 0)
    {
      v16 = (a1 + 320);
    }

    else
    {
      v16 = *(a1 + 320);
    }

    memmove(p_p, v16, v14);
  }

  v297 = (a1 + 320);
  strcpy(p_p + v14, ":chain_interval");
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &__p;
  }

  else
  {
    v17 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  operations_research::sat::Constraint::WithName(&v338, v17, size);
  v19 = v300;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v344)
  {
    v345 = v344;
    operator delete(v344);
  }

  if (v341)
  {
    v342 = v341;
    operator delete(v341);
  }

  if (v356)
  {
    v357 = v356;
    operator delete(v356);
  }

  if (v353)
  {
    v354 = v353;
    operator delete(v353);
  }

  operations_research::sat::LinearExpr::LinearExpr(&v353, *a1, *(a1 + 8));
  v20 = operations_research::sat::CpModelBuilder::NewConstant(v300, 0);
  operations_research::sat::LinearExpr::LinearExpr(&v341, v20, v21);
  operations_research::sat::LinearExpr::LinearExpr(&v349, *(a1 + 32), *(a1 + 40));
  operations_research::sat::CpModelBuilder::NewOptionalIntervalVar(v300, &v353, &v341, &v349, v12, v13);
  if (v351)
  {
    v352 = v351;
    operator delete(v351);
  }

  if (v349)
  {
    *(&v349 + 1) = v349;
    operator delete(v349);
  }

  if (v344)
  {
    v345 = v344;
    operator delete(v344);
  }

  if (v341)
  {
    v342 = v341;
    operator delete(v341);
  }

  if (v356)
  {
    v357 = v356;
    operator delete(v356);
  }

  if (v353)
  {
    v354 = v353;
    operator delete(v353);
  }

  if (*(a1 + 184) != *(a1 + 176))
  {
    v22 = 0;
    v12 = 0;
    v7 = ":chain_producer_resident_read_time_interval";
    v6 = &v338;
    do
    {
      operations_research::sat::LinearExpr::LinearExpr(&v353, *a1, *(a1 + 8));
      v23 = *(*(a1 + 176) + 8 * v12);
      operations_research::sat::LinearExpr::LinearExpr(&v341, *v23, v23[1]);
      operations_research::sat::LinearExpr::LinearExpr(&v349, *(*(a1 + 48) + v22), *(*(a1 + 48) + v22 + 8));
      v24 = *(*(a1 + 176) + 8 * v12);
      __p.__r_.__value_.__r.__words[0] = *(v24 + 224);
      LODWORD(__p.__r_.__value_.__r.__words[1]) = *(v24 + 232);
      __p.__r_.__value_.__r.__words[2] = v298;
      v347 = v299;
      memset(&v348, 0, sizeof(v348));
      std::vector<operations_research::sat::BoolVar>::__init_with_size[abi:ne200100]<operations_research::sat::BoolVar const*,operations_research::sat::BoolVar const*>(&v348, &__p, &v348, 2uLL);
      BooleanAnd = ORToolsCpBasedAllocatorUtil::CreateBooleanAnd(v19, &v348);
      v339 = operations_research::sat::CpModelBuilder::NewOptionalIntervalVar(v19, &v353, &v341, &v349, BooleanAnd, v26);
      v340 = v27;
      if (*(a1 + 343) >= 0)
      {
        v28 = *(a1 + 343);
      }

      else
      {
        v28 = *(a1 + 328);
      }

      std::string::basic_string[abi:ne200100](&v337, v28 + 43);
      if ((v337.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &v337;
      }

      else
      {
        v29 = v337.__r_.__value_.__r.__words[0];
      }

      if (v28)
      {
        if (*(a1 + 343) >= 0)
        {
          v30 = v297;
        }

        else
        {
          v30 = *(a1 + 320);
        }

        memmove(v29, v30, v28);
      }

      strcpy(v29 + v28, ":chain_producer_resident_read_time_interval");
      std::to_string(&v336, v12);
      if ((v336.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v31 = &v336;
      }

      else
      {
        v31 = v336.__r_.__value_.__r.__words[0];
      }

      if ((v336.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v32 = HIBYTE(v336.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v32 = v336.__r_.__value_.__l.__size_;
      }

      v33 = std::string::append(&v337, v31, v32);
      v34 = v300;
      v35 = *&v33->__r_.__value_.__l.__data_;
      v338.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
      *&v338.__r_.__value_.__l.__data_ = v35;
      v33->__r_.__value_.__l.__size_ = 0;
      v33->__r_.__value_.__r.__words[2] = 0;
      v33->__r_.__value_.__r.__words[0] = 0;
      if ((v338.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v36 = &v338;
      }

      else
      {
        v36 = v338.__r_.__value_.__r.__words[0];
      }

      if ((v338.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v37 = HIBYTE(v338.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v37 = v338.__r_.__value_.__l.__size_;
      }

      operations_research::sat::IntervalVar::WithName(&v339, v36, v37);
      if (SHIBYTE(v338.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v338.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v336.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v336.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v337.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v337.__r_.__value_.__l.__data_);
      }

      if (v348.__r_.__value_.__r.__words[0])
      {
        v348.__r_.__value_.__l.__size_ = v348.__r_.__value_.__r.__words[0];
        operator delete(v348.__r_.__value_.__l.__data_);
      }

      if (v351)
      {
        v352 = v351;
        operator delete(v351);
      }

      if (v349)
      {
        *(&v349 + 1) = v349;
        operator delete(v349);
      }

      if (v344)
      {
        v345 = v344;
        operator delete(v344);
      }

      if (v341)
      {
        v342 = v341;
        operator delete(v341);
      }

      if (v356)
      {
        v357 = v356;
        operator delete(v356);
      }

      if (v353)
      {
        v354 = v353;
        operator delete(v353);
      }

      operations_research::sat::LinearExpr::LinearExpr(&v353, *a1, *(a1 + 8));
      v38 = *(*(a1 + 176) + 8 * v12);
      operations_research::sat::LinearExpr::LinearExpr(&v341, *(v38 + 32), *(v38 + 40));
      operations_research::sat::LinearExpr::LinearExpr(&v349, *(*(a1 + 48) + v22), *(*(a1 + 48) + v22 + 8));
      v39 = *(*(a1 + 176) + 8 * v12);
      __p.__r_.__value_.__r.__words[0] = *(v39 + 240);
      LODWORD(__p.__r_.__value_.__r.__words[1]) = *(v39 + 248);
      __p.__r_.__value_.__r.__words[2] = v298;
      v347 = v299;
      memset(&v348, 0, sizeof(v348));
      std::vector<operations_research::sat::BoolVar>::__init_with_size[abi:ne200100]<operations_research::sat::BoolVar const*,operations_research::sat::BoolVar const*>(&v348, &__p, &v348, 2uLL);
      v40 = ORToolsCpBasedAllocatorUtil::CreateBooleanAnd(v34, &v348);
      v339 = operations_research::sat::CpModelBuilder::NewOptionalIntervalVar(v34, &v353, &v341, &v349, v40, v41);
      v340 = v42;
      if (*(a1 + 343) >= 0)
      {
        v43 = *(a1 + 343);
      }

      else
      {
        v43 = *(a1 + 328);
      }

      std::string::basic_string[abi:ne200100](&v337, v43 + 46);
      if ((v337.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v44 = &v337;
      }

      else
      {
        v44 = v337.__r_.__value_.__r.__words[0];
      }

      if (v43)
      {
        if (*(a1 + 343) >= 0)
        {
          v45 = v297;
        }

        else
        {
          v45 = *(a1 + 320);
        }

        memmove(v44, v45, v43);
      }

      strcpy(v44 + v43, ":chain_producer_nonresident_read_time_interval");
      std::to_string(&v336, v12);
      if ((v336.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v46 = &v336;
      }

      else
      {
        v46 = v336.__r_.__value_.__r.__words[0];
      }

      if ((v336.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v47 = HIBYTE(v336.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v47 = v336.__r_.__value_.__l.__size_;
      }

      v48 = std::string::append(&v337, v46, v47);
      v19 = v300;
      v49 = *&v48->__r_.__value_.__l.__data_;
      v338.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
      *&v338.__r_.__value_.__l.__data_ = v49;
      v48->__r_.__value_.__l.__size_ = 0;
      v48->__r_.__value_.__r.__words[2] = 0;
      v48->__r_.__value_.__r.__words[0] = 0;
      if ((v338.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v50 = &v338;
      }

      else
      {
        v50 = v338.__r_.__value_.__r.__words[0];
      }

      if ((v338.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v51 = HIBYTE(v338.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v51 = v338.__r_.__value_.__l.__size_;
      }

      operations_research::sat::IntervalVar::WithName(&v339, v50, v51);
      if (SHIBYTE(v338.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v338.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v336.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v336.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v337.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v337.__r_.__value_.__l.__data_);
      }

      if (v348.__r_.__value_.__r.__words[0])
      {
        v348.__r_.__value_.__l.__size_ = v348.__r_.__value_.__r.__words[0];
        operator delete(v348.__r_.__value_.__l.__data_);
      }

      if (v351)
      {
        v352 = v351;
        operator delete(v351);
      }

      if (v349)
      {
        *(&v349 + 1) = v349;
        operator delete(v349);
      }

      if (v344)
      {
        v345 = v344;
        operator delete(v344);
      }

      if (v341)
      {
        v342 = v341;
        operator delete(v341);
      }

      if (v356)
      {
        v357 = v356;
        operator delete(v356);
      }

      if (v353)
      {
        v354 = v353;
        operator delete(v353);
      }

      ++v12;
      v22 += 16;
    }

    while (v12 < (*(a1 + 184) - *(a1 + 176)) >> 3);
  }

  operations_research::sat::LinearExpr::LinearExpr(&v353, *a1, *(a1 + 8));
  operations_research::sat::LinearExpr::LinearExpr(&v341, *(*(a1 + 200) + 56), *(*(a1 + 200) + 64));
  operations_research::sat::LinearExpr::LinearExpr(&v349, *(a1 + 72), *(a1 + 80));
  v348.__r_.__value_.__r.__words[0] = operations_research::sat::CpModelBuilder::NewOptionalIntervalVar(v19, &v353, &v341, &v349, v298, v299);
  LODWORD(v348.__r_.__value_.__r.__words[1]) = v52;
  if (*(a1 + 343) >= 0)
  {
    v53 = *(a1 + 343);
  }

  else
  {
    v53 = *(a1 + 328);
  }

  std::string::basic_string[abi:ne200100](&__p, v53 + 37);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v54 = &__p;
  }

  else
  {
    v54 = __p.__r_.__value_.__r.__words[0];
  }

  if (v53)
  {
    if (*(a1 + 343) >= 0)
    {
      v55 = v297;
    }

    else
    {
      v55 = *(a1 + 320);
    }

    memmove(v54, v55, v53);
  }

  strcpy(v54 + v53, ":chain_producer_compute_time_interval");
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v56 = &__p;
  }

  else
  {
    v56 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v57 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v57 = __p.__r_.__value_.__l.__size_;
  }

  operations_research::sat::IntervalVar::WithName(&v348, v56, v57);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v351)
  {
    v352 = v351;
    operator delete(v351);
  }

  if (v349)
  {
    *(&v349 + 1) = v349;
    operator delete(v349);
  }

  if (v344)
  {
    v345 = v344;
    operator delete(v344);
  }

  if (v341)
  {
    v342 = v341;
    operator delete(v341);
  }

  if (v356)
  {
    v357 = v356;
    operator delete(v356);
  }

  if (v353)
  {
    v354 = v353;
    operator delete(v353);
  }

  operations_research::sat::LinearExpr::LinearExpr(&v353, *a1, *(a1 + 8));
  operations_research::sat::LinearExpr::LinearExpr(&v341, *(*(a1 + 208) + 96), *(*(a1 + 208) + 104));
  operations_research::sat::LinearExpr::LinearExpr(&v349, *(a1 + 88), *(a1 + 96));
  v348.__r_.__value_.__r.__words[0] = operations_research::sat::CpModelBuilder::NewOptionalIntervalVar(v300, &v353, &v341, &v349, v298, v299);
  LODWORD(v348.__r_.__value_.__r.__words[1]) = v58;
  if (*(a1 + 343) >= 0)
  {
    v59 = *(a1 + 343);
  }

  else
  {
    v59 = *(a1 + 328);
  }

  std::string::basic_string[abi:ne200100](&__p, v59 + 30);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v60 = &__p;
  }

  else
  {
    v60 = __p.__r_.__value_.__r.__words[0];
  }

  if (v59)
  {
    if (*(a1 + 343) >= 0)
    {
      v61 = v297;
    }

    else
    {
      v61 = *(a1 + 320);
    }

    memmove(v60, v61, v59);
  }

  strcpy(v60 + v59, ":chain_producer_write_interval");
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v62 = &__p;
  }

  else
  {
    v62 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v63 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v63 = __p.__r_.__value_.__l.__size_;
  }

  operations_research::sat::IntervalVar::WithName(&v348, v62, v63);
  v64 = v300;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v351)
  {
    v352 = v351;
    operator delete(v351);
  }

  if (v349)
  {
    *(&v349 + 1) = v349;
    operator delete(v349);
  }

  if (v344)
  {
    v345 = v344;
    operator delete(v344);
  }

  if (v341)
  {
    v342 = v341;
    operator delete(v341);
  }

  if (v356)
  {
    v357 = v356;
    operator delete(v356);
  }

  if (v353)
  {
    v354 = v353;
    operator delete(v353);
  }

  if (*(a1 + 224) != *(a1 + 216))
  {
    v65 = 0;
    v66 = 0;
    v6 = a1 + 344;
    do
    {
      if (v66 == *(a1 + 384))
      {
        operations_research::sat::LinearExpr::LinearExpr(&v353, *a1, *(a1 + 8));
        v67 = *(*(a1 + 216) + 8 * v66);
        operations_research::sat::LinearExpr::LinearExpr(&v341, *(v67 + 96), *(v67 + 104));
        operations_research::sat::LinearExpr::LinearExpr(&v349, *(*(a1 + 104) + v65), *(*(a1 + 104) + v65 + 8));
        v337.__r_.__value_.__r.__words[0] = operations_research::sat::CpModelBuilder::NewOptionalIntervalVar(v64, &v353, &v341, &v349, v298, v299);
        LODWORD(v337.__r_.__value_.__r.__words[1]) = v68;
        if (*(a1 + 367) >= 0)
        {
          v69 = *(a1 + 367);
        }

        else
        {
          v69 = *(a1 + 352);
        }

        std::string::basic_string[abi:ne200100](&v348, v69 + 39);
        if ((v348.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v70 = &v348;
        }

        else
        {
          v70 = v348.__r_.__value_.__r.__words[0];
        }

        if (v69)
        {
          if (*(a1 + 367) >= 0)
          {
            v71 = (a1 + 344);
          }

          else
          {
            v71 = *(a1 + 344);
          }

          memmove(v70, v71, v69);
        }

        strcpy(v70 + v69, ":chain_consumer_resident_read_interval_");
        std::to_string(&v338, v66);
        if ((v338.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v72 = &v338;
        }

        else
        {
          v72 = v338.__r_.__value_.__r.__words[0];
        }

        if ((v338.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v73 = HIBYTE(v338.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v73 = v338.__r_.__value_.__l.__size_;
        }

        v74 = std::string::append(&v348, v72, v73);
        v64 = v300;
        v75 = *&v74->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v74->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v75;
        v74->__r_.__value_.__l.__size_ = 0;
        v74->__r_.__value_.__r.__words[2] = 0;
        v74->__r_.__value_.__r.__words[0] = 0;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v76 = &__p;
        }

        else
        {
          v76 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v77 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v77 = __p.__r_.__value_.__l.__size_;
        }

        operations_research::sat::IntervalVar::WithName(&v337, v76, v77);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v338.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v338.__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(v348.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_298;
        }

        v78 = v348.__r_.__value_.__r.__words[0];
      }

      else
      {
        operations_research::sat::LinearExpr::LinearExpr(&v353, *a1, *(a1 + 8));
        v79 = *(*(a1 + 216) + 8 * v66);
        operations_research::sat::LinearExpr::LinearExpr(&v341, *v79, v79[1]);
        operations_research::sat::LinearExpr::LinearExpr(&v349, *(*(a1 + 104) + v65), *(*(a1 + 104) + v65 + 8));
        v80 = *(*(a1 + 216) + 8 * v66);
        __p.__r_.__value_.__r.__words[0] = *(v80 + 224);
        LODWORD(__p.__r_.__value_.__r.__words[1]) = *(v80 + 232);
        __p.__r_.__value_.__r.__words[2] = v298;
        v347 = v299;
        memset(&v348, 0, sizeof(v348));
        std::vector<operations_research::sat::BoolVar>::__init_with_size[abi:ne200100]<operations_research::sat::BoolVar const*,operations_research::sat::BoolVar const*>(&v348, &__p, &v348, 2uLL);
        v81 = ORToolsCpBasedAllocatorUtil::CreateBooleanAnd(v64, &v348);
        v7 = v7 & 0xFFFFFFFF00000000 | v82;
        v339 = operations_research::sat::CpModelBuilder::NewOptionalIntervalVar(v64, &v353, &v341, &v349, v81, v7);
        v340 = v83;
        if (*(a1 + 367) >= 0)
        {
          v84 = *(a1 + 367);
        }

        else
        {
          v84 = *(a1 + 352);
        }

        std::string::basic_string[abi:ne200100](&v337, v84 + 42);
        if ((v337.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v85 = &v337;
        }

        else
        {
          v85 = v337.__r_.__value_.__r.__words[0];
        }

        if (v84)
        {
          if (*(a1 + 367) >= 0)
          {
            v86 = (a1 + 344);
          }

          else
          {
            v86 = *(a1 + 344);
          }

          memmove(v85, v86, v84);
        }

        qmemcpy(v296, "nonresident_read:chain_consumer_", sizeof(v296));
        strcpy(v85 + v84, ":chain_consumer_nonresident_read_interval_");
        std::to_string(&v336, v66);
        if ((v336.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v87 = &v336;
        }

        else
        {
          v87 = v336.__r_.__value_.__r.__words[0];
        }

        if ((v336.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v88 = HIBYTE(v336.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v88 = v336.__r_.__value_.__l.__size_;
        }

        v89 = std::string::append(&v337, v87, v88);
        v90 = v300;
        v91 = *&v89->__r_.__value_.__l.__data_;
        v338.__r_.__value_.__r.__words[2] = v89->__r_.__value_.__r.__words[2];
        *&v338.__r_.__value_.__l.__data_ = v91;
        v89->__r_.__value_.__l.__size_ = 0;
        v89->__r_.__value_.__r.__words[2] = 0;
        v89->__r_.__value_.__r.__words[0] = 0;
        if ((v338.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v92 = &v338;
        }

        else
        {
          v92 = v338.__r_.__value_.__r.__words[0];
        }

        if ((v338.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v93 = HIBYTE(v338.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v93 = v338.__r_.__value_.__l.__size_;
        }

        operations_research::sat::IntervalVar::WithName(&v339, v92, v93);
        if (SHIBYTE(v338.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v338.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v336.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v336.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v337.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v337.__r_.__value_.__l.__data_);
        }

        if (v348.__r_.__value_.__r.__words[0])
        {
          v348.__r_.__value_.__l.__size_ = v348.__r_.__value_.__r.__words[0];
          operator delete(v348.__r_.__value_.__l.__data_);
        }

        if (v351)
        {
          v352 = v351;
          operator delete(v351);
        }

        if (v349)
        {
          *(&v349 + 1) = v349;
          operator delete(v349);
        }

        if (v344)
        {
          v345 = v344;
          operator delete(v344);
        }

        if (v341)
        {
          v342 = v341;
          operator delete(v341);
        }

        if (v356)
        {
          v357 = v356;
          operator delete(v356);
        }

        if (v353)
        {
          v354 = v353;
          operator delete(v353);
        }

        operations_research::sat::LinearExpr::LinearExpr(&v353, *a1, *(a1 + 8));
        v94 = *(*(a1 + 216) + 8 * v66);
        operations_research::sat::LinearExpr::LinearExpr(&v341, *(v94 + 48), *(v94 + 56));
        operations_research::sat::LinearExpr::LinearExpr(&v349, *(*(a1 + 104) + v65), *(*(a1 + 104) + v65 + 8));
        v95 = *(*(a1 + 216) + 8 * v66);
        __p.__r_.__value_.__r.__words[0] = *(v95 + 240);
        LODWORD(__p.__r_.__value_.__r.__words[1]) = *(v95 + 248);
        __p.__r_.__value_.__r.__words[2] = v298;
        v347 = v299;
        memset(&v348, 0, sizeof(v348));
        std::vector<operations_research::sat::BoolVar>::__init_with_size[abi:ne200100]<operations_research::sat::BoolVar const*,operations_research::sat::BoolVar const*>(&v348, &__p, &v348, 2uLL);
        v96 = ORToolsCpBasedAllocatorUtil::CreateBooleanAnd(v90, &v348);
        v12 = v12 & 0xFFFFFFFF00000000 | v97;
        v339 = operations_research::sat::CpModelBuilder::NewOptionalIntervalVar(v90, &v353, &v341, &v349, v96, v12);
        v340 = v98;
        if (*(a1 + 367) >= 0)
        {
          v99 = *(a1 + 367);
        }

        else
        {
          v99 = *(a1 + 352);
        }

        std::string::basic_string[abi:ne200100](&v337, v99 + 42);
        if ((v337.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v100 = &v337;
        }

        else
        {
          v100 = v337.__r_.__value_.__r.__words[0];
        }

        if (v99)
        {
          if (*(a1 + 367) >= 0)
          {
            v101 = (a1 + 344);
          }

          else
          {
            v101 = *(a1 + 344);
          }

          memmove(v100, v101, v99);
        }

        v102 = (v100 + v99);
        *v102 = v296[1];
        v102[1] = v296[0];
        strcpy(&v100[1].__r_.__value_.__s.__data_[v99 + 2], "t_read_interval_");
        std::to_string(&v336, v66);
        if ((v336.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v103 = &v336;
        }

        else
        {
          v103 = v336.__r_.__value_.__r.__words[0];
        }

        if ((v336.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v104 = HIBYTE(v336.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v104 = v336.__r_.__value_.__l.__size_;
        }

        v105 = std::string::append(&v337, v103, v104);
        v64 = v300;
        v106 = *&v105->__r_.__value_.__l.__data_;
        v338.__r_.__value_.__r.__words[2] = v105->__r_.__value_.__r.__words[2];
        *&v338.__r_.__value_.__l.__data_ = v106;
        v105->__r_.__value_.__l.__size_ = 0;
        v105->__r_.__value_.__r.__words[2] = 0;
        v105->__r_.__value_.__r.__words[0] = 0;
        if ((v338.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v107 = &v338;
        }

        else
        {
          v107 = v338.__r_.__value_.__r.__words[0];
        }

        if ((v338.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v108 = HIBYTE(v338.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v108 = v338.__r_.__value_.__l.__size_;
        }

        operations_research::sat::IntervalVar::WithName(&v339, v107, v108);
        if (SHIBYTE(v338.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v338.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v336.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v336.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v337.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v337.__r_.__value_.__l.__data_);
        }

        v78 = v348.__r_.__value_.__r.__words[0];
        if (!v348.__r_.__value_.__r.__words[0])
        {
          goto LABEL_298;
        }

        v348.__r_.__value_.__l.__size_ = v348.__r_.__value_.__r.__words[0];
      }

      operator delete(v78);
LABEL_298:
      if (v351)
      {
        v352 = v351;
        operator delete(v351);
      }

      if (v349)
      {
        *(&v349 + 1) = v349;
        operator delete(v349);
      }

      if (v344)
      {
        v345 = v344;
        operator delete(v344);
      }

      if (v341)
      {
        v342 = v341;
        operator delete(v341);
      }

      if (v356)
      {
        v357 = v356;
        operator delete(v356);
      }

      if (v353)
      {
        v354 = v353;
        operator delete(v353);
      }

      ++v66;
      v65 += 16;
    }

    while (v66 < (*(a1 + 224) - *(a1 + 216)) >> 3);
  }

  operations_research::sat::LinearExpr::LinearExpr(&v353, *a1, *(a1 + 8));
  v109 = (*(*(a1 + 240) + 32) + 16 * *(a1 + 384));
  operations_research::sat::LinearExpr::LinearExpr(&v341, *v109, v109[1]);
  operations_research::sat::LinearExpr::LinearExpr(&v349, *(a1 + 128), *(a1 + 136));
  v348.__r_.__value_.__r.__words[0] = operations_research::sat::CpModelBuilder::NewOptionalIntervalVar(v64, &v353, &v341, &v349, v298, v299);
  LODWORD(v348.__r_.__value_.__r.__words[1]) = v110;
  if (*(a1 + 367) >= 0)
  {
    v111 = *(a1 + 367);
  }

  else
  {
    v111 = *(a1 + 352);
  }

  std::string::basic_string[abi:ne200100](&__p, v111 + 41);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v112 = &__p;
  }

  else
  {
    v112 = __p.__r_.__value_.__r.__words[0];
  }

  if (v111)
  {
    if (*(a1 + 367) >= 0)
    {
      v113 = (a1 + 344);
    }

    else
    {
      v113 = *(a1 + 344);
    }

    memmove(v112, v113, v111);
  }

  strcpy(v112 + v111, ":chain_consumer_compute_resident_interval");
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v114 = &__p;
  }

  else
  {
    v114 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v115 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v115 = __p.__r_.__value_.__l.__size_;
  }

  operations_research::sat::IntervalVar::WithName(&v348, v114, v115);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v351)
  {
    v352 = v351;
    operator delete(v351);
  }

  if (v349)
  {
    *(&v349 + 1) = v349;
    operator delete(v349);
  }

  if (v344)
  {
    v345 = v344;
    operator delete(v344);
  }

  if (v341)
  {
    v342 = v341;
    operator delete(v341);
  }

  if (v356)
  {
    v357 = v356;
    operator delete(v356);
  }

  if (v353)
  {
    v354 = v353;
    operator delete(v353);
  }

  operations_research::sat::LinearExpr::LinearExpr(&v353, *a1, *(a1 + 8));
  operations_research::sat::LinearExpr::LinearExpr(&v341, **(a1 + 248), *(*(a1 + 248) + 8));
  operations_research::sat::LinearExpr::LinearExpr(&v349, *(a1 + 144), *(a1 + 152));
  v116 = *(a1 + 248);
  __p.__r_.__value_.__r.__words[0] = *(v116 + 224);
  LODWORD(__p.__r_.__value_.__r.__words[1]) = *(v116 + 232);
  __p.__r_.__value_.__r.__words[2] = v298;
  v347 = v299;
  memset(&v348, 0, sizeof(v348));
  std::vector<operations_research::sat::BoolVar>::__init_with_size[abi:ne200100]<operations_research::sat::BoolVar const*,operations_research::sat::BoolVar const*>(&v348, &__p, &v348, 2uLL);
  v117 = ORToolsCpBasedAllocatorUtil::CreateBooleanAnd(v300, &v348);
  v337.__r_.__value_.__r.__words[0] = operations_research::sat::CpModelBuilder::NewOptionalIntervalVar(v300, &v353, &v341, &v349, v117, v118);
  LODWORD(v337.__r_.__value_.__r.__words[1]) = v119;
  if (*(a1 + 367) >= 0)
  {
    v120 = *(a1 + 367);
  }

  else
  {
    v120 = *(a1 + 352);
  }

  std::string::basic_string[abi:ne200100](&v338, v120 + 44);
  if ((v338.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v121 = &v338;
  }

  else
  {
    v121 = v338.__r_.__value_.__r.__words[0];
  }

  if (v120)
  {
    if (*(a1 + 367) >= 0)
    {
      v122 = (a1 + 344);
    }

    else
    {
      v122 = *(a1 + 344);
    }

    memmove(v121, v122, v120);
  }

  strcpy(v121 + v120, ":chain_consumer_resident_write_time_interval");
  if ((v338.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v123 = &v338;
  }

  else
  {
    v123 = v338.__r_.__value_.__r.__words[0];
  }

  if ((v338.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v124 = HIBYTE(v338.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v124 = v338.__r_.__value_.__l.__size_;
  }

  operations_research::sat::IntervalVar::WithName(&v337, v123, v124);
  if (SHIBYTE(v338.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v338.__r_.__value_.__l.__data_);
  }

  if (v348.__r_.__value_.__r.__words[0])
  {
    v348.__r_.__value_.__l.__size_ = v348.__r_.__value_.__r.__words[0];
    operator delete(v348.__r_.__value_.__l.__data_);
  }

  if (v351)
  {
    v352 = v351;
    operator delete(v351);
  }

  if (v349)
  {
    *(&v349 + 1) = v349;
    operator delete(v349);
  }

  if (v344)
  {
    v345 = v344;
    operator delete(v344);
  }

  if (v341)
  {
    v342 = v341;
    operator delete(v341);
  }

  if (v356)
  {
    v357 = v356;
    operator delete(v356);
  }

  if (v353)
  {
    v354 = v353;
    operator delete(v353);
  }

  operations_research::sat::LinearExpr::LinearExpr(&v353, *a1, *(a1 + 8));
  operations_research::sat::LinearExpr::LinearExpr(&v341, *(*(a1 + 248) + 48), *(*(a1 + 248) + 56));
  operations_research::sat::LinearExpr::LinearExpr(&v349, *(a1 + 144), *(a1 + 152));
  v125 = *(a1 + 248);
  __p.__r_.__value_.__r.__words[0] = *(v125 + 240);
  LODWORD(__p.__r_.__value_.__r.__words[1]) = *(v125 + 248);
  __p.__r_.__value_.__r.__words[2] = v298;
  v347 = v299;
  memset(&v348, 0, sizeof(v348));
  std::vector<operations_research::sat::BoolVar>::__init_with_size[abi:ne200100]<operations_research::sat::BoolVar const*,operations_research::sat::BoolVar const*>(&v348, &__p, &v348, 2uLL);
  v126 = ORToolsCpBasedAllocatorUtil::CreateBooleanAnd(v300, &v348);
  v337.__r_.__value_.__r.__words[0] = operations_research::sat::CpModelBuilder::NewOptionalIntervalVar(v300, &v353, &v341, &v349, v126, v127);
  LODWORD(v337.__r_.__value_.__r.__words[1]) = v128;
  if (*(a1 + 367) >= 0)
  {
    v129 = *(a1 + 367);
  }

  else
  {
    v129 = *(a1 + 352);
  }

  std::string::basic_string[abi:ne200100](&v338, v129 + 47);
  if ((v338.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v130 = &v338;
  }

  else
  {
    v130 = v338.__r_.__value_.__r.__words[0];
  }

  if (v129)
  {
    if (*(a1 + 367) >= 0)
    {
      v131 = (a1 + 344);
    }

    else
    {
      v131 = *(a1 + 344);
    }

    memmove(v130, v131, v129);
  }

  strcpy(v130 + v129, ":chain_consumer_nonresident_write_time_interval");
  if ((v338.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v132 = &v338;
  }

  else
  {
    v132 = v338.__r_.__value_.__r.__words[0];
  }

  if ((v338.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v133 = HIBYTE(v338.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v133 = v338.__r_.__value_.__l.__size_;
  }

  operations_research::sat::IntervalVar::WithName(&v337, v132, v133);
  v134 = v300;
  if (SHIBYTE(v338.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v338.__r_.__value_.__l.__data_);
  }

  if (v348.__r_.__value_.__r.__words[0])
  {
    v348.__r_.__value_.__l.__size_ = v348.__r_.__value_.__r.__words[0];
    operator delete(v348.__r_.__value_.__l.__data_);
  }

  if (v351)
  {
    v352 = v351;
    operator delete(v351);
  }

  if (v349)
  {
    *(&v349 + 1) = v349;
    operator delete(v349);
  }

  if (v344)
  {
    v345 = v344;
    operator delete(v344);
  }

  if (v341)
  {
    v342 = v341;
    operator delete(v341);
  }

  if (v356)
  {
    v357 = v356;
    operator delete(v356);
  }

  if (v353)
  {
    v354 = v353;
    operator delete(v353);
  }

  *&v296[1] = operations_research::sat::CpModelBuilder::NewIntVar(v300, a6);
  *&v296[0] = v135;
  v136 = *(a1 + 48);
  if (*(a1 + 56) != v136)
  {
    v137 = 0;
    v12 = 0;
    v6 = &v338;
    do
    {
      operations_research::sat::LinearExpr::LinearExpr(&v353, *(v136 + v137), *(v136 + v137 + 8));
      operations_research::sat::LinearExpr::LinearExpr(&v341, *&v296[1], *&v296[0]);
      v337.__r_.__value_.__r.__words[0] = operations_research::sat::CpModelBuilder::AddLessOrEqual(v134, &v353, &v341);
      if (*(a1 + 343) >= 0)
      {
        v138 = *(a1 + 343);
      }

      else
      {
        v138 = *(a1 + 328);
      }

      std::string::basic_string[abi:ne200100](&v348, v138 + 21);
      if ((v348.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v139 = &v348;
      }

      else
      {
        v139 = v348.__r_.__value_.__r.__words[0];
      }

      if (v138)
      {
        if (*(a1 + 343) >= 0)
        {
          v140 = v297;
        }

        else
        {
          v140 = *(a1 + 320);
        }

        memmove(v139, v140, v138);
      }

      strcpy(v139 + v138, ":chain_producer_read_");
      std::to_string(&v338, v12);
      if ((v338.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v141 = &v338;
      }

      else
      {
        v141 = v338.__r_.__value_.__r.__words[0];
      }

      if ((v338.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v142 = HIBYTE(v338.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v142 = v338.__r_.__value_.__l.__size_;
      }

      v143 = std::string::append(&v348, v141, v142);
      v134 = v300;
      v144 = *&v143->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v143->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v144;
      v143->__r_.__value_.__l.__size_ = 0;
      v143->__r_.__value_.__r.__words[2] = 0;
      v143->__r_.__value_.__r.__words[0] = 0;
      v145 = std::string::append(&__p, "_end_constraint", 0xFuLL);
      v146 = *&v145->__r_.__value_.__l.__data_;
      v350 = v145->__r_.__value_.__r.__words[2];
      v349 = v146;
      v145->__r_.__value_.__l.__size_ = 0;
      v145->__r_.__value_.__r.__words[2] = 0;
      v145->__r_.__value_.__r.__words[0] = 0;
      if (v350 >= 0)
      {
        v147 = &v349;
      }

      else
      {
        v147 = v349;
      }

      if (v350 >= 0)
      {
        v148 = HIBYTE(v350);
      }

      else
      {
        v148 = *(&v349 + 1);
      }

      operations_research::sat::Constraint::WithName(&v337, v147, v148);
      if (SHIBYTE(v350) < 0)
      {
        operator delete(v349);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v338.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v338.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v348.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v348.__r_.__value_.__l.__data_);
      }

      if (v344)
      {
        v345 = v344;
        operator delete(v344);
      }

      if (v341)
      {
        v342 = v341;
        operator delete(v341);
      }

      if (v356)
      {
        v357 = v356;
        operator delete(v356);
      }

      if (v353)
      {
        v354 = v353;
        operator delete(v353);
      }

      ++v12;
      v136 = *(a1 + 48);
      v137 += 16;
    }

    while (v12 < (*(a1 + 56) - v136) >> 4);
  }

  operations_research::sat::LinearExpr::LinearExpr(&v353, *(a1 + 72), *(a1 + 80));
  operations_research::sat::LinearExpr::LinearExpr(&v341, *&v296[1], *&v296[0]);
  __p.__r_.__value_.__r.__words[0] = operations_research::sat::CpModelBuilder::AddLessOrEqual(v134, &v353, &v341);
  if (*(a1 + 343) >= 0)
  {
    v149 = *(a1 + 343);
  }

  else
  {
    v149 = *(a1 + 328);
  }

  std::string::basic_string[abi:ne200100](&v349, v149 + 38);
  if (v350 >= 0)
  {
    v150 = &v349;
  }

  else
  {
    v150 = v349;
  }

  if (v149)
  {
    if (*(a1 + 343) >= 0)
    {
      v151 = v297;
    }

    else
    {
      v151 = *(a1 + 320);
    }

    memmove(v150, v151, v149);
  }

  strcpy(v150 + v149, ":chain_producer_compute_end_constraint");
  if (v350 >= 0)
  {
    v152 = &v349;
  }

  else
  {
    v152 = v349;
  }

  if (v350 >= 0)
  {
    v153 = HIBYTE(v350);
  }

  else
  {
    v153 = *(&v349 + 1);
  }

  operations_research::sat::Constraint::WithName(&__p, v152, v153);
  if (SHIBYTE(v350) < 0)
  {
    operator delete(v349);
  }

  if (v344)
  {
    v345 = v344;
    operator delete(v344);
  }

  if (v341)
  {
    v342 = v341;
    operator delete(v341);
  }

  if (v356)
  {
    v357 = v356;
    operator delete(v356);
  }

  if (v353)
  {
    v354 = v353;
    operator delete(v353);
  }

  operations_research::sat::LinearExpr::LinearExpr(&v353, *(a1 + 88), *(a1 + 96));
  operations_research::sat::LinearExpr::LinearExpr(&v341, *&v296[1], *&v296[0]);
  __p.__r_.__value_.__r.__words[0] = operations_research::sat::CpModelBuilder::AddLessOrEqual(v300, &v353, &v341);
  if (*(a1 + 343) >= 0)
  {
    v154 = *(a1 + 343);
  }

  else
  {
    v154 = *(a1 + 328);
  }

  std::string::basic_string[abi:ne200100](&v349, v154 + 36);
  if (v350 >= 0)
  {
    v155 = &v349;
  }

  else
  {
    v155 = v349;
  }

  if (v154)
  {
    if (*(a1 + 343) >= 0)
    {
      v156 = v297;
    }

    else
    {
      v156 = *(a1 + 320);
    }

    memmove(v155, v156, v154);
  }

  strcpy(v155 + v154, ":chain_producer_write_end_constraint");
  if (v350 >= 0)
  {
    v157 = &v349;
  }

  else
  {
    v157 = v349;
  }

  if (v350 >= 0)
  {
    v158 = HIBYTE(v350);
  }

  else
  {
    v158 = *(&v349 + 1);
  }

  operations_research::sat::Constraint::WithName(&__p, v157, v158);
  v159 = v300;
  if (SHIBYTE(v350) < 0)
  {
    operator delete(v349);
  }

  if (v344)
  {
    v345 = v344;
    operator delete(v344);
  }

  if (v341)
  {
    v342 = v341;
    operator delete(v341);
  }

  if (v356)
  {
    v357 = v356;
    operator delete(v356);
  }

  if (v353)
  {
    v354 = v353;
    operator delete(v353);
  }

  v160 = *(a1 + 104);
  if (*(a1 + 112) != v160)
  {
    v161 = 0;
    v12 = 0;
    v6 = &v338;
    do
    {
      operations_research::sat::LinearExpr::LinearExpr(&v353, *(v160 + v161), *(v160 + v161 + 8));
      operations_research::sat::LinearExpr::LinearExpr(&v341, *&v296[1], *&v296[0]);
      v337.__r_.__value_.__r.__words[0] = operations_research::sat::CpModelBuilder::AddLessOrEqual(v159, &v353, &v341);
      if (*(a1 + 367) >= 0)
      {
        v162 = *(a1 + 367);
      }

      else
      {
        v162 = *(a1 + 352);
      }

      std::string::basic_string[abi:ne200100](&v348, v162 + 21);
      if ((v348.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v163 = &v348;
      }

      else
      {
        v163 = v348.__r_.__value_.__r.__words[0];
      }

      if (v162)
      {
        if (*(a1 + 367) >= 0)
        {
          v164 = (a1 + 344);
        }

        else
        {
          v164 = *(a1 + 344);
        }

        memmove(v163, v164, v162);
      }

      strcpy(v163 + v162, ":chain_consumer_read_");
      std::to_string(&v338, v12);
      if ((v338.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v165 = &v338;
      }

      else
      {
        v165 = v338.__r_.__value_.__r.__words[0];
      }

      if ((v338.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v166 = HIBYTE(v338.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v166 = v338.__r_.__value_.__l.__size_;
      }

      v167 = std::string::append(&v348, v165, v166);
      v159 = v300;
      v168 = *&v167->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v167->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v168;
      v167->__r_.__value_.__l.__size_ = 0;
      v167->__r_.__value_.__r.__words[2] = 0;
      v167->__r_.__value_.__r.__words[0] = 0;
      v169 = std::string::append(&__p, "_end_constraint", 0xFuLL);
      v170 = *&v169->__r_.__value_.__l.__data_;
      v350 = v169->__r_.__value_.__r.__words[2];
      v349 = v170;
      v169->__r_.__value_.__l.__size_ = 0;
      v169->__r_.__value_.__r.__words[2] = 0;
      v169->__r_.__value_.__r.__words[0] = 0;
      if (v350 >= 0)
      {
        v171 = &v349;
      }

      else
      {
        v171 = v349;
      }

      if (v350 >= 0)
      {
        v172 = HIBYTE(v350);
      }

      else
      {
        v172 = *(&v349 + 1);
      }

      operations_research::sat::Constraint::WithName(&v337, v171, v172);
      if (SHIBYTE(v350) < 0)
      {
        operator delete(v349);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v338.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v338.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v348.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v348.__r_.__value_.__l.__data_);
      }

      if (v344)
      {
        v345 = v344;
        operator delete(v344);
      }

      if (v341)
      {
        v342 = v341;
        operator delete(v341);
      }

      if (v356)
      {
        v357 = v356;
        operator delete(v356);
      }

      if (v353)
      {
        v354 = v353;
        operator delete(v353);
      }

      ++v12;
      v160 = *(a1 + 104);
      v161 += 16;
    }

    while (v12 < (*(a1 + 112) - v160) >> 4);
  }

  operations_research::sat::LinearExpr::LinearExpr(&v353, *(a1 + 128), *(a1 + 136));
  operations_research::sat::LinearExpr::LinearExpr(&v341, *&v296[1], *&v296[0]);
  __p.__r_.__value_.__r.__words[0] = operations_research::sat::CpModelBuilder::AddLessOrEqual(v159, &v353, &v341);
  if (*(a1 + 367) >= 0)
  {
    v173 = *(a1 + 367);
  }

  else
  {
    v173 = *(a1 + 352);
  }

  std::string::basic_string[abi:ne200100](&v349, v173 + 38);
  if (v350 >= 0)
  {
    v174 = &v349;
  }

  else
  {
    v174 = v349;
  }

  if (v173)
  {
    if (*(a1 + 367) >= 0)
    {
      v175 = (a1 + 344);
    }

    else
    {
      v175 = *(a1 + 344);
    }

    memmove(v174, v175, v173);
  }

  strcpy(v174 + v173, ":chain_consumer_compute_end_constraint");
  if (v350 >= 0)
  {
    v176 = &v349;
  }

  else
  {
    v176 = v349;
  }

  if (v350 >= 0)
  {
    v177 = HIBYTE(v350);
  }

  else
  {
    v177 = *(&v349 + 1);
  }

  operations_research::sat::Constraint::WithName(&__p, v176, v177);
  if (SHIBYTE(v350) < 0)
  {
    operator delete(v349);
  }

  if (v344)
  {
    v345 = v344;
    operator delete(v344);
  }

  if (v341)
  {
    v342 = v341;
    operator delete(v341);
  }

  if (v356)
  {
    v357 = v356;
    operator delete(v356);
  }

  if (v353)
  {
    v354 = v353;
    operator delete(v353);
  }

  operations_research::sat::LinearExpr::LinearExpr(&v353, *(a1 + 144), *(a1 + 152));
  operations_research::sat::LinearExpr::LinearExpr(&v341, *&v296[1], *&v296[0]);
  __p.__r_.__value_.__r.__words[0] = operations_research::sat::CpModelBuilder::AddLessOrEqual(v300, &v353, &v341);
  if (*(a1 + 367) >= 0)
  {
    v178 = *(a1 + 367);
  }

  else
  {
    v178 = *(a1 + 352);
  }

  std::string::basic_string[abi:ne200100](&v349, v178 + 36);
  if (v350 >= 0)
  {
    v179 = &v349;
  }

  else
  {
    v179 = v349;
  }

  if (v178)
  {
    if (*(a1 + 367) >= 0)
    {
      v180 = (a1 + 344);
    }

    else
    {
      v180 = *(a1 + 344);
    }

    memmove(v179, v180, v178);
  }

  strcpy(v179 + v178, ":chain_consumer_write_end_constraint");
  if (v350 >= 0)
  {
    v181 = &v349;
  }

  else
  {
    v181 = v349;
  }

  if (v350 >= 0)
  {
    v182 = HIBYTE(v350);
  }

  else
  {
    v182 = *(&v349 + 1);
  }

  operations_research::sat::Constraint::WithName(&__p, v181, v182);
  v183 = v300;
  if (SHIBYTE(v350) < 0)
  {
    operator delete(v349);
  }

  if (v344)
  {
    v345 = v344;
    operator delete(v344);
  }

  if (v341)
  {
    v342 = v341;
    operator delete(v341);
  }

  if (v356)
  {
    v357 = v356;
    operator delete(v356);
  }

  if (v353)
  {
    v354 = v353;
    operator delete(v353);
  }

  memset(&__p, 0, sizeof(__p));
  memset(&v348, 0, sizeof(v348));
  v184 = *(a1 + 176);
  if (*(a1 + 184) == v184)
  {
    v189 = 0;
    v188 = 0;
  }

  else
  {
    v185 = 0;
    do
    {
      v353 = v298;
      LODWORD(v354) = v299;
      v186 = *(v184 + 8 * v185);
      LODWORD(v356) = *(v186 + 248);
      v355 = *(v186 + 240);
      v343 = 0;
      v342 = 0;
      v341 = 0;
      std::vector<operations_research::sat::BoolVar>::__init_with_size[abi:ne200100]<operations_research::sat::BoolVar const*,operations_research::sat::BoolVar const*>(&v341, &v353, &v357, 2uLL);
      *&v349 = ORToolsCpBasedAllocatorUtil::CreateBooleanAnd(v300, &v341);
      DWORD2(v349) = v187;
      std::vector<operations_research::sat::IntVar>::push_back[abi:ne200100](&__p, &v349);
      if (v341)
      {
        v342 = v341;
        operator delete(v341);
      }

      v353 = *(*(*a4 + 8 * v185) + 120);
      std::vector<long long>::push_back[abi:ne200100](&v348.__r_.__value_.__l.__data_, &v353);
      ++v185;
      v184 = *(a1 + 176);
    }

    while (v185 < (*(a1 + 184) - v184) >> 3);
    v188 = __p.__r_.__value_.__r.__words[2];
    v189 = __p.__r_.__value_.__l.__size_;
    if (__p.__r_.__value_.__l.__size_ < __p.__r_.__value_.__r.__words[2])
    {
      *__p.__r_.__value_.__l.__size_ = v298;
      *(v189 + 8) = v299;
      v190 = v189 + 16;
      goto LABEL_619;
    }
  }

  v191 = (v189 - __p.__r_.__value_.__r.__words[0]) >> 4;
  v192 = v191 + 1;
  if ((v191 + 1) >> 60)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v193 = v188 - __p.__r_.__value_.__r.__words[0];
  if (v193 >> 3 > v192)
  {
    v192 = v193 >> 3;
  }

  if (v193 >= 0x7FFFFFFFFFFFFFF0)
  {
    v194 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v194 = v192;
  }

  if (v194)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<operations_research::sat::BoolVar>>(&__p, v194);
  }

  v195 = (16 * v191);
  *v195 = v298;
  v195[1] = v299;
  v190 = 16 * v191 + 16;
  v196 = 16 * v191 - (__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]);
  memcpy(v195 - (__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]);
  v197 = __p.__r_.__value_.__r.__words[0];
  __p.__r_.__value_.__r.__words[0] = v196;
  *&__p.__r_.__value_.__r.__words[1] = v190;
  if (v197)
  {
    operator delete(v197);
  }

  v183 = v300;
LABEL_619:
  __p.__r_.__value_.__l.__size_ = v190;
  v353 = *(a5 + 128);
  std::vector<long long>::push_back[abi:ne200100](&v348.__r_.__value_.__l.__data_, &v353);
  v198 = *(a1 + 176);
  if (*(a1 + 184) - v198 >= 9uLL)
  {
    v353 = v298;
    LODWORD(v354) = v299;
    v199 = *v198;
    LODWORD(v356) = *(*v198 + 248);
    v355 = *(v199 + 240);
    v200 = v198[1];
    v358 = *(v200 + 248);
    v357 = *(v200 + 240);
    v341 = 0;
    v342 = 0;
    v343 = 0;
    std::vector<operations_research::sat::BoolVar>::__init_with_size[abi:ne200100]<operations_research::sat::BoolVar const*,operations_research::sat::BoolVar const*>(&v341, &v353, v359, 3uLL);
    *&v349 = ORToolsCpBasedAllocatorUtil::CreateBooleanAnd(v183, &v341);
    DWORD2(v349) = v201;
    std::vector<operations_research::sat::IntVar>::push_back[abi:ne200100](&__p, &v349);
    if (v341)
    {
      v342 = v341;
      operator delete(v341);
    }

    v353 = 1;
    std::vector<long long>::push_back[abi:ne200100](&v348.__r_.__value_.__l.__data_, &v353);
  }

  operations_research::sat::LinearExpr::LinearExpr(&v353, *(a1 + 160), *(a1 + 168));
  operations_research::sat::LinearExpr::WeightedSum(__p.__r_.__value_.__l.__data_, (__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 4, v348.__r_.__value_.__l.__data_, (v348.__r_.__value_.__l.__size_ - v348.__r_.__value_.__r.__words[0]) >> 3, &v341);
  operations_research::sat::CpModelBuilder::AddEquality(v183, &v353, &v341);
  if (v344)
  {
    v345 = v344;
    operator delete(v344);
  }

  if (v341)
  {
    v342 = v341;
    operator delete(v341);
  }

  if (v356)
  {
    v357 = v356;
    operator delete(v356);
  }

  if (v353)
  {
    v354 = v353;
    operator delete(v353);
  }

  operations_research::sat::LinearExpr::LinearExpr(&v353, *&v296[1], *&v296[0]);
  operations_research::sat::LinearExpr::LinearExpr(&v341, *(a1 + 160), *(a1 + 168));
  operations_research::sat::LinearExpr::LinearExpr(&v349, *(a1 + 32), *(a1 + 40));
  operations_research::sat::CpModelBuilder::NewIntervalVar(v183, &v353, &v341, &v349);
  if (v351)
  {
    v352 = v351;
    operator delete(v351);
  }

  if (v349)
  {
    *(&v349 + 1) = v349;
    operator delete(v349);
  }

  if (v344)
  {
    v345 = v344;
    operator delete(v344);
  }

  if (v341)
  {
    v342 = v341;
    operator delete(v341);
  }

  if (v356)
  {
    v357 = v356;
    operator delete(v356);
  }

  if (v353)
  {
    v354 = v353;
    operator delete(v353);
  }

  v202 = *(a1 + 176);
  if (*(a1 + 184) != v202)
  {
    v203 = 0;
    do
    {
      v204 = *(a1 + 368);
      v205 = *(a1 + 376);
      v206 = *(v202 + 8 * v203);
      v353 = *(v206 + 240);
      LODWORD(v354) = *(v206 + 248);
      v355 = v298;
      LODWORD(v356) = v299;
      v343 = 0;
      v341 = 0;
      v342 = 0;
      std::vector<operations_research::sat::BoolVar>::__init_with_size[abi:ne200100]<operations_research::sat::BoolVar const*,operations_research::sat::BoolVar const*>(&v341, &v353, &v357, 2uLL);
      v207 = ORToolsCpBasedAllocatorUtil::CreateBooleanAnd(v183, &v341);
      v209 = v208;
      if (*(a1 + 343) >= 0)
      {
        v210 = *(a1 + 343);
      }

      else
      {
        v210 = *(a1 + 328);
      }

      std::string::basic_string[abi:ne200100](v334, v210 + 50);
      if (v335 >= 0)
      {
        v211 = v334;
      }

      else
      {
        v211 = v334[0];
      }

      if (v210)
      {
        if (*(a1 + 343) >= 0)
        {
          v212 = v297;
        }

        else
        {
          v212 = *(a1 + 320);
        }

        memmove(v211, v212, v210);
      }

      strcpy(v211 + v210, ":chain_producer_nonresident_read_pressure_interval");
      v183 = v300;
      OptionalClosedInterval = ORToolsCpBasedAllocatorUtil::CreateOptionalClosedInterval(v300, v204, v205, v207, v209, v334);
      v215 = v214;
      if (v335 < 0)
      {
        operator delete(v334[0]);
      }

      if (v341)
      {
        v342 = v341;
        operator delete(v341);
      }

      v216 = *(*(a1 + 176) + 8 * v203);
      operations_research::sat::LinearExpr::LinearExpr(v331, *(v216 + 144), *(v216 + 152));
      operations_research::sat::CumulativeConstraint::AddDemand(a3, OptionalClosedInterval, v215, v331);
      if (v332)
      {
        v333 = v332;
        operator delete(v332);
      }

      if (v331[0])
      {
        v331[1] = v331[0];
        operator delete(v331[0]);
      }

      if (*(a1 + 392) == 1)
      {
        v217 = *(a1 + 376);
        v218 = *(*(a1 + 176) + 8 * v203);
        v353 = *(v218 + 224);
        LODWORD(v354) = *(v218 + 232);
        v355 = v298;
        LODWORD(v356) = v299;
        v343 = 0;
        v341 = 0;
        v342 = 0;
        std::vector<operations_research::sat::BoolVar>::__init_with_size[abi:ne200100]<operations_research::sat::BoolVar const*,operations_research::sat::BoolVar const*>(&v341, &v353, &v357, 2uLL);
        v219 = ORToolsCpBasedAllocatorUtil::CreateBooleanAnd(v300, &v341);
        v221 = v220;
        if (*(a1 + 343) >= 0)
        {
          v222 = *(a1 + 343);
        }

        else
        {
          v222 = *(a1 + 328);
        }

        std::string::basic_string[abi:ne200100](v329, v222 + 47);
        if (v330 >= 0)
        {
          v223 = v329;
        }

        else
        {
          v223 = v329[0];
        }

        if (v222)
        {
          if (*(a1 + 343) >= 0)
          {
            v224 = v297;
          }

          else
          {
            v224 = *(a1 + 320);
          }

          memmove(v223, v224, v222);
        }

        v6 = v6 & 0xFFFFFFFF00000000 | v221;
        strcpy(v223 + v222, ":chain_producer_resident_read_pressure_interval");
        v183 = v300;
        v225 = ORToolsCpBasedAllocatorUtil::CreateOptionalClosedInterval(v300, v217, v217, v219, v6, v329);
        v227 = v226;
        if (v330 < 0)
        {
          operator delete(v329[0]);
        }

        if (v341)
        {
          v342 = v341;
          operator delete(v341);
        }

        v228 = *(*(a1 + 176) + 8 * v203);
        operations_research::sat::LinearExpr::LinearExpr(v326, *(v228 + 112), *(v228 + 120));
        v12 = v12 & 0xFFFFFFFF00000000 | v227;
        operations_research::sat::CumulativeConstraint::AddDemand(a3, v225, v12, v326);
        if (v327)
        {
          v328 = v327;
          operator delete(v327);
        }

        if (v326[0])
        {
          v326[1] = v326[0];
          operator delete(v326[0]);
        }
      }

      ++v203;
      v202 = *(a1 + 176);
    }

    while (v203 < (*(a1 + 184) - v202) >> 3);
  }

  v229 = *(a1 + 368);
  v230 = *(a1 + 376);
  if (*(a1 + 343) >= 0)
  {
    v231 = *(a1 + 343);
  }

  else
  {
    v231 = *(a1 + 328);
  }

  std::string::basic_string[abi:ne200100](v324, v231 + 45);
  if (v325 >= 0)
  {
    v232 = v324;
  }

  else
  {
    v232 = v324[0];
  }

  if (v231)
  {
    if (*(a1 + 343) >= 0)
    {
      v233 = v297;
    }

    else
    {
      v233 = *(a1 + 320);
    }

    memmove(v232, v233, v231);
  }

  strcpy(v232 + v231, ":chain_producer_chain_write_pressure_interval");
  v234 = ORToolsCpBasedAllocatorUtil::CreateOptionalClosedInterval(v300, v229, v230, v298, v299, v324);
  v236 = v235;
  if (v325 < 0)
  {
    operator delete(v324[0]);
  }

  operations_research::sat::LinearExpr::LinearExpr(v321, *(*(a1 + 208) + 208), *(*(a1 + 208) + 216));
  operations_research::sat::CumulativeConstraint::AddDemand(a3, v234, v236, v321);
  if (v322)
  {
    v323 = v322;
    operator delete(v322);
  }

  v237 = v300;
  if (v321[0])
  {
    v321[1] = v321[0];
    operator delete(v321[0]);
  }

  v238 = *(a1 + 216);
  if (*(a1 + 224) != v238)
  {
    v239 = 0;
    do
    {
      if (v239 != *(a1 + 384))
      {
        v240 = *(a1 + 368);
        v241 = *(a1 + 376);
        v242 = *(v238 + 8 * v239);
        v353 = *(v242 + 240);
        LODWORD(v354) = *(v242 + 248);
        v355 = v298;
        LODWORD(v356) = v299;
        v343 = 0;
        v341 = 0;
        v342 = 0;
        std::vector<operations_research::sat::BoolVar>::__init_with_size[abi:ne200100]<operations_research::sat::BoolVar const*,operations_research::sat::BoolVar const*>(&v341, &v353, &v357, 2uLL);
        v243 = ORToolsCpBasedAllocatorUtil::CreateBooleanAnd(v237, &v341);
        v245 = v244;
        if (*(a1 + 367) >= 0)
        {
          v246 = *(a1 + 367);
        }

        else
        {
          v246 = *(a1 + 352);
        }

        std::string::basic_string[abi:ne200100](v319, v246 + 50);
        if (v320 >= 0)
        {
          v247 = v319;
        }

        else
        {
          v247 = v319[0];
        }

        if (v246)
        {
          if (*(a1 + 367) >= 0)
          {
            v248 = (a1 + 344);
          }

          else
          {
            v248 = *(a1 + 344);
          }

          memmove(v247, v248, v246);
        }

        v230 = v230 & 0xFFFFFFFF00000000 | v245;
        strcpy(v247 + v246, ":chain_consumer_nonresident_read_pressure_interval");
        v237 = v300;
        v249 = ORToolsCpBasedAllocatorUtil::CreateOptionalClosedInterval(v300, v240, v241, v243, v230, v319);
        v251 = v250;
        if (v320 < 0)
        {
          operator delete(v319[0]);
        }

        if (v341)
        {
          v342 = v341;
          operator delete(v341);
        }

        v252 = *(*(a1 + 216) + 8 * v239);
        operations_research::sat::LinearExpr::LinearExpr(v316, *(v252 + 160), *(v252 + 168));
        v229 = v229 & 0xFFFFFFFF00000000 | v251;
        operations_research::sat::CumulativeConstraint::AddDemand(a3, v249, v229, v316);
        if (v317)
        {
          v318 = v317;
          operator delete(v317);
        }

        if (v316[0])
        {
          v316[1] = v316[0];
          operator delete(v316[0]);
        }
      }

      ++v239;
      v238 = *(a1 + 216);
    }

    while (v239 < (*(a1 + 224) - v238) >> 3);
  }

  v253 = *(a1 + 368);
  v254 = *(a1 + 376);
  v255 = *(a1 + 248);
  v353 = *(v255 + 240);
  LODWORD(v354) = *(v255 + 248);
  v355 = v298;
  LODWORD(v356) = v299;
  v343 = 0;
  v341 = 0;
  v342 = 0;
  std::vector<operations_research::sat::BoolVar>::__init_with_size[abi:ne200100]<operations_research::sat::BoolVar const*,operations_research::sat::BoolVar const*>(&v341, &v353, &v357, 2uLL);
  v256 = ORToolsCpBasedAllocatorUtil::CreateBooleanAnd(v237, &v341);
  v258 = v257;
  if (*(a1 + 367) >= 0)
  {
    v259 = *(a1 + 367);
  }

  else
  {
    v259 = *(a1 + 352);
  }

  std::string::basic_string[abi:ne200100](v314, v259 + 51);
  if (v315 >= 0)
  {
    v260 = v314;
  }

  else
  {
    v260 = v314[0];
  }

  if (v259)
  {
    if (*(a1 + 367) >= 0)
    {
      v261 = (a1 + 344);
    }

    else
    {
      v261 = *(a1 + 344);
    }

    memmove(v260, v261, v259);
  }

  strcpy(v260 + v259, ":chain_consumer_nonresident_write_pressure_interval");
  v262 = ORToolsCpBasedAllocatorUtil::CreateOptionalClosedInterval(v300, v253, v254, v256, v258, v314);
  v264 = v263;
  if (v315 < 0)
  {
    operator delete(v314[0]);
  }

  if (v341)
  {
    v342 = v341;
    operator delete(v341);
  }

  operations_research::sat::LinearExpr::LinearExpr(v311, *(*(a1 + 248) + 160), *(*(a1 + 248) + 168));
  operations_research::sat::CumulativeConstraint::AddDemand(a3, v262, v264, v311);
  if (v312)
  {
    v313 = v312;
    operator delete(v312);
  }

  if (v311[0])
  {
    v311[1] = v311[0];
    operator delete(v311[0]);
  }

  if (*(a1 + 393) == 1)
  {
    v265 = *(a1 + 384) == 0;
    v266 = *(a1 + 280);
    if (v265 >= (*(a1 + 288) - v266) >> 4 || *(a1 + 224) - *(a1 + 216) < 9uLL)
    {
      v280 = *(a1 + 368);
      v281 = *(a1 + 248);
      v353 = *(v281 + 224);
      LODWORD(v354) = *(v281 + 232);
      v355 = v298;
      LODWORD(v356) = v299;
      v343 = 0;
      v341 = 0;
      v342 = 0;
      std::vector<operations_research::sat::BoolVar>::__init_with_size[abi:ne200100]<operations_research::sat::BoolVar const*,operations_research::sat::BoolVar const*>(&v341, &v353, &v357, 2uLL);
      v282 = ORToolsCpBasedAllocatorUtil::CreateBooleanAnd(v300, &v341);
      v284 = v283;
      if (*(a1 + 367) >= 0)
      {
        v285 = *(a1 + 367);
      }

      else
      {
        v285 = *(a1 + 352);
      }

      std::string::basic_string[abi:ne200100](v304, v285 + 48);
      if (v305 >= 0)
      {
        v286 = v304;
      }

      else
      {
        v286 = v304[0];
      }

      if (v285)
      {
        if (*(a1 + 367) >= 0)
        {
          v287 = (a1 + 344);
        }

        else
        {
          v287 = *(a1 + 344);
        }

        memmove(v286, v287, v285);
      }

      strcpy(v286 + v285, ":chain_consumer_resident_write_pressure_interval");
      v288 = ORToolsCpBasedAllocatorUtil::CreateOptionalClosedInterval(v300, v280, v280, v282, v284, v304);
      v290 = v289;
      if (v305 < 0)
      {
        operator delete(v304[0]);
      }

      if (v341)
      {
        v342 = v341;
        operator delete(v341);
      }

      operations_research::sat::LinearExpr::LinearExpr(v301, *(*(a1 + 248) + 112), *(*(a1 + 248) + 120));
      operations_research::sat::CumulativeConstraint::AddDemand(a3, v288, v290, v301);
      if (v302)
      {
        v303 = v302;
        operator delete(v302);
      }

      v278 = v301[0];
      if (v301[0])
      {
        v279 = v301;
        goto LABEL_785;
      }
    }

    else
    {
      v267 = *(a1 + 368);
      v268 = *(a1 + 248);
      v353 = *(v268 + 224);
      LODWORD(v354) = *(v268 + 232);
      v355 = v298;
      LODWORD(v356) = v299;
      operations_research::sat::BoolVar::BoolVar(&v349, ~*(v266 + 16 * v265 + 8), *(v266 + 16 * v265));
      v357 = v349;
      v358 = DWORD2(v349);
      v343 = 0;
      v341 = 0;
      v342 = 0;
      std::vector<operations_research::sat::BoolVar>::__init_with_size[abi:ne200100]<operations_research::sat::BoolVar const*,operations_research::sat::BoolVar const*>(&v341, &v353, v359, 3uLL);
      v269 = ORToolsCpBasedAllocatorUtil::CreateBooleanAnd(v300, &v341);
      v271 = v270;
      if (*(a1 + 367) >= 0)
      {
        v272 = *(a1 + 367);
      }

      else
      {
        v272 = *(a1 + 352);
      }

      std::string::basic_string[abi:ne200100](v309, v272 + 59);
      if (v310 >= 0)
      {
        v273 = v309;
      }

      else
      {
        v273 = v309[0];
      }

      if (v272)
      {
        if (*(a1 + 367) >= 0)
        {
          v274 = (a1 + 344);
        }

        else
        {
          v274 = *(a1 + 344);
        }

        memmove(v273, v274, v272);
      }

      strcpy(v273 + v272, ":chain_consumer_inplacable_resident_write_pressure_interval");
      v275 = ORToolsCpBasedAllocatorUtil::CreateOptionalClosedInterval(v300, v267, v267, v269, v271, v309);
      v277 = v276;
      if (v310 < 0)
      {
        operator delete(v309[0]);
      }

      if (v341)
      {
        v342 = v341;
        operator delete(v341);
      }

      operations_research::sat::LinearExpr::LinearExpr(v306, *(*(a1 + 248) + 112), *(*(a1 + 248) + 120));
      operations_research::sat::CumulativeConstraint::AddDemand(a3, v275, v277, v306);
      if (v307)
      {
        v308 = v307;
        operator delete(v307);
      }

      v278 = v306[0];
      if (v306[0])
      {
        v279 = v306;
LABEL_785:
        v279[1] = v278;
        operator delete(v278);
      }
    }
  }

  if (v348.__r_.__value_.__r.__words[0])
  {
    v348.__r_.__value_.__l.__size_ = v348.__r_.__value_.__r.__words[0];
    operator delete(v348.__r_.__value_.__l.__data_);
  }

  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v291 = *MEMORY[0x277D85DE8];
}