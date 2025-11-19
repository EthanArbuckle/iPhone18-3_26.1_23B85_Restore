float *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,Phase::SpatialModeler::EarlyReflectionDetector::FindEarlyReflections(int,BOOL,float)::$_1 &,Phase::SpatialModeler::EarlyReflectionDetector::AERpair *,0>(float *result, float *a2, float *a3, void *a4, void *a5)
{
  v5 = *a2;
  v6 = *a3;
  if (*a2 >= *result)
  {
    if (v6 < v5)
    {
      v7 = *a2;
      *a2 = *a3;
      *a3 = v7;
      if (*a2 >= *result)
      {
        goto LABEL_7;
      }

      v8 = *result;
      *result = *a2;
      *a2 = v8;
      v6 = *a3;
    }
  }

  else
  {
    v7 = *result;
    if (v6 < v5)
    {
      *result = *a3;
      *a3 = v7;
LABEL_7:
      v6 = *&v7;
      goto LABEL_10;
    }

    *result = *a2;
    *a2 = v7;
    v6 = *a3;
    if (*a3 < *&v7)
    {
      *a2 = *a3;
      *a3 = v7;
      v6 = *&v7;
    }
  }

LABEL_10:
  if (*a4 < v6)
  {
    v9 = *a3;
    *a3 = *a4;
    *a4 = v9;
    if (*a3 < *a2)
    {
      v10 = *a2;
      *a2 = *a3;
      *a3 = v10;
      if (*a2 < *result)
      {
        v11 = *result;
        *result = *a2;
        *a2 = v11;
      }
    }
  }

  if (*a5 < *a4)
  {
    v12 = *a4;
    *a4 = *a5;
    *a5 = v12;
    if (*a4 < *a3)
    {
      v13 = *a3;
      *a3 = *a4;
      *a4 = v13;
      if (*a3 < *a2)
      {
        v14 = *a2;
        *a2 = *a3;
        *a3 = v14;
        if (*a2 < *result)
        {
          v15 = *result;
          *result = *a2;
          *a2 = v15;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,Phase::SpatialModeler::EarlyReflectionDetector::FindEarlyReflections(int,BOOL,float)::$_1 &,Phase::SpatialModeler::EarlyReflectionDetector::AERpair *>(uint64_t a1, uint64_t a2)
{
  v2 = (a2 - a1) >> 3;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v4 = *(a1 + 8);
      v5 = *(a2 - 8);
      if (v4 >= *a1)
      {
        if (v5 < v4)
        {
          v16 = *(a1 + 8);
          *(a1 + 8) = *(a2 - 8);
          *(a2 - 8) = v16;
          if (*(a1 + 8) < *a1)
          {
            *a1 = vextq_s8(*a1, *a1, 8uLL);
          }
        }

        return 1;
      }

      v3 = *a1;
      if (v5 >= v4)
      {
        *a1 = *(a1 + 8);
        *(a1 + 8) = v3;
        if (*(a2 - 8) >= *&v3)
        {
          return 1;
        }

        *(a1 + 8) = *(a2 - 8);
        goto LABEL_13;
      }

LABEL_12:
      *a1 = *(a2 - 8);
LABEL_13:
      *(a2 - 8) = v3;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,Phase::SpatialModeler::EarlyReflectionDetector::FindEarlyReflections(int,BOOL,float)::$_1 &,Phase::SpatialModeler::EarlyReflectionDetector::AERpair *,0>(a1, (a1 + 8), (a1 + 16), (a1 + 24), (a2 - 8));
        return 1;
      }

      goto LABEL_14;
    }

    v11 = *(a1 + 8);
    v12 = *a1;
    v13 = *(a1 + 16);
    if (v11 >= *a1)
    {
      if (v13 < v11)
      {
        v21 = *(a1 + 8);
        v20 = *(a1 + 16);
        *(a1 + 8) = v20;
        *(a1 + 16) = v21;
        v13 = *&v21;
        if (v12 > *&v20)
        {
          v22 = *a1;
          *a1 = v20;
          *(a1 + 8) = v22;
        }
      }

      goto LABEL_48;
    }

    v14 = *a1;
    LODWORD(v15) = *a1;
    if (v13 >= v11)
    {
      *a1 = *(a1 + 8);
      *(a1 + 8) = v14;
      if (v13 >= v15)
      {
LABEL_48:
        if (*(a2 - 8) < v13)
        {
          v31 = *(a1 + 16);
          *(a1 + 16) = *(a2 - 8);
          *(a2 - 8) = v31;
          if (*(a1 + 16) < *(a1 + 8))
          {
            v33 = *(a1 + 8);
            v32 = *(a1 + 16);
            *(a1 + 8) = v32;
            *(a1 + 16) = v33;
            if (*a1 > *&v32)
            {
              v34 = *a1;
              *a1 = v32;
              *(a1 + 8) = v34;
            }
          }
        }

        return 1;
      }

      *(a1 + 8) = *(a1 + 16);
    }

    else
    {
      *a1 = *(a1 + 16);
    }

    *(a1 + 16) = v14;
    v13 = v15;
    goto LABEL_48;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    if (*(a2 - 8) < *a1)
    {
      v3 = *a1;
      goto LABEL_12;
    }

    return 1;
  }

LABEL_14:
  v6 = (a1 + 16);
  v7 = *(a1 + 16);
  v8 = *(a1 + 8);
  v9 = *a1;
  if (v8 >= *a1)
  {
    if (v7 < v8)
    {
      v18 = *(a1 + 8);
      v17 = *(a1 + 16);
      *(a1 + 8) = v17;
      *(a1 + 16) = v18;
      if (v9 > *&v17)
      {
        v19 = *a1;
        *a1 = v17;
        *(a1 + 8) = v19;
      }
    }
  }

  else
  {
    v10 = *a1;
    if (v7 >= v8)
    {
      *a1 = *(a1 + 8);
      *(a1 + 8) = v10;
      if (v7 >= *&v10)
      {
        goto LABEL_34;
      }

      *(a1 + 8) = *(a1 + 16);
    }

    else
    {
      *a1 = *(a1 + 16);
    }

    *(a1 + 16) = v10;
  }

LABEL_34:
  v23 = a1 + 24;
  if (a1 + 24 == a2)
  {
    return 1;
  }

  v24 = 0;
  v25 = 0;
  while (1)
  {
    v26 = *v23;
    if (*v23 < *v6)
    {
      v27 = *(v23 + 4);
      v28 = v24;
      while (1)
      {
        *(a1 + v28 + 24) = *(a1 + v28 + 16);
        if (v28 == -16)
        {
          break;
        }

        v29 = *(a1 + v28 + 8);
        v28 -= 8;
        if (v29 <= v26)
        {
          v30 = a1 + v28 + 24;
          goto LABEL_42;
        }
      }

      v30 = a1;
LABEL_42:
      *v30 = v26;
      *(v30 + 4) = v27;
      if (++v25 == 8)
      {
        return v23 + 8 == a2;
      }
    }

    v6 = v23;
    v24 += 8;
    v23 += 8;
    if (v23 == a2)
    {
      return 1;
    }
  }
}

uint64_t std::ofstream::~ofstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x23EE86040](a1 + 1);

  return std::ostream::~ostream();
}

uint64_t std::unordered_map<unsigned long long,Phase::SpatialModeler::AudibleEarlyReflection>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::AudibleEarlyReflection>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::AudibleEarlyReflection>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::AudibleEarlyReflection>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::AudibleEarlyReflection>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,Phase::SpatialModeler::AudibleEarlyReflection> const&>(a1, i + 2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::AudibleEarlyReflection>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::AudibleEarlyReflection>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::AudibleEarlyReflection>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::AudibleEarlyReflection>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,Phase::SpatialModeler::AudibleEarlyReflection> const&>(void *a1, unint64_t *a2)
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

void *std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::AudibleEarlyReflection>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::AudibleEarlyReflection>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::AudibleEarlyReflection>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::AudibleEarlyReflection>>>::__emplace_unique_key_args<unsigned long long,unsigned long long &,Phase::SpatialModeler::AudibleEarlyReflection const&>(void *a1, unint64_t *a2)
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

uint64_t Phase::SpatialModeler::EarlyReflectionsSimulationImpl::AllocClusterQueryState@<X0>(Phase::SpatialModeler::EarlyReflectionsSimulationImpl *this@<X0>, Phase::SpatialModeler::EarlyReflectionsSimulation *a2@<X1>, uint64_t *a3@<X8>)
{
  v13[4] = *MEMORY[0x277D85DE8];
  v6 = 1344;
  if (*(*(a2 + 11) + 48))
  {
    v6 = 26640;
  }

  v11 = 16;
  v10[0] = this + v6 + 25256;
  v10[1] = &v11;
  v9 = v10[0];
  Phase::details::Alloc<Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState,std::unique_ptr<Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState,std::function<void ()(void *)>> Phase::details::Alloc<Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState,Phase::SpatialModeler::SingleBlockAllocator>(Phase::SpatialModeler::SingleBlockAllocator &,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState,std::function<void ()(void *)>> Phase::details::Alloc<Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState,Phase::SpatialModeler::SingleBlockAllocator>(Phase::SpatialModeler::SingleBlockAllocator &,unsigned long)::{lambda(Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState*)#1} const&>(v10, &v9, &v12);
  v7 = v12;
  *(v12 + 72) = *(this + 3);
  *(v7 + 137808) = Phase::SpatialModeler::EarlyReflectionsSimulationImpl::RoomSimulationBegin;
  v12 = 0;
  *a3 = v7;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100]((a3 + 1), v13);
  std::unique_ptr<Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState,std::function<void ()(void *)>>::reset[abi:ne200100](&v12, 0);
  return std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v13);
}

uint64_t Phase::SpatialModeler::EarlyReflectionsSimulationImpl::RoomSimulationBegin@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, Phase::Logger *a4@<X8>)
{
  v189 = *MEMORY[0x277D85DE8];
  Instance = Phase::Logger::GetInstance(a1);
  v9 = os_signpost_id_generate(**(Instance + 224));
  v170 = v9;
  v10 = Phase::Logger::GetInstance(v9);
  if (*(v10 + 1272) == 1)
  {
    v11 = **(Phase::Logger::GetInstance(v10) + 1264);
    v12 = v11;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23A302000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v9, "Phase_RoomSimulation_EarlyReflectionsBegin", "EarlyReflectionsBegin", buf, 2u);
    }
  }

  v169 = &v170;
  Phase::SpatialModeler::RoomSimulationImpl::RoomSimulationBeginInitCommon(a1, a2, a3, v167);
  if (v168 == 2)
  {
    std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v166, v167);
    Phase::SpatialModeler::EarlyReflectionsSimulationImpl::RoomSimulationBegin(Phase::SpatialModeler::RoomSimulation &,Phase::SpatialModeler::Query &,Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState &)::$_0::operator()(a4, &v169, v166);
    v13 = v166;
LABEL_26:
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v13);
    return std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v167);
  }

  v14 = (a3 + 112804);
  v15 = a2[8];
  v16 = a2[11];
  Phase::SpatialModeler::RoomSimulationImpl::ParseOptionalProperties(a1, v15, v16, (a3 + 135520), (a3 + 112872), (a3 + 112860), buf);
  std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>>(v167, buf);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](buf);
  if (v168 == 2)
  {
    std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v165, v167);
    Phase::SpatialModeler::EarlyReflectionsSimulationImpl::RoomSimulationBegin(Phase::SpatialModeler::RoomSimulation &,Phase::SpatialModeler::Query &,Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState &)::$_0::operator()(a4, &v169, v165);
    v13 = v165;
    goto LABEL_26;
  }

  v17 = (a3 + 131680);
  v18 = *(v16 + 48);
  if (*(v16 + 48))
  {
    v19 = 26720;
  }

  else
  {
    v19 = 1424;
  }

  v20 = a1 + v19;
  if (*v14 <= 0.0)
  {
    v23 = 0;
    v24 = 113248;
    v25 = v19 + a1 + 516;
    do
    {
      v26 = v24;
      v27 = v25;
      v28 = 3;
      do
      {
        *(v27 - 5) = *(a3 + v26);
        *(v27 - 4) = *(a3 + v26 + 4);
        *(v27 - 3) = *(a3 + v26 + 8);
        *(v27 - 2) = *(a3 + v26 + 12);
        *(v27 - 1) = *(a3 + v26 + 16);
        *v27 = *(a3 + v26 + 20);
        v27 += 6;
        v26 += 24;
        --v28;
      }

      while (v28);
      ++v23;
      v25 += 72;
      v24 += 72;
    }

    while (v23 != 256);
    if (v20 + 496 != a3 + 113248)
    {
      std::vector<Phase::SpatialModeler::PhaseRoomSimulationSoundSource>::__assign_with_size[abi:ne200100]<Phase::SpatialModeler::PhaseRoomSimulationSoundSource*,Phase::SpatialModeler::PhaseRoomSimulationSoundSource*>(v20 + 18928, *v17, *(a3 + 131688), 0x6DB6DB6DB6DB6DB7 * ((*(a3 + 131688) - *v17) >> 3));
      std::vector<Phase::SpatialModeler::DirectivityHistogram *>::__assign_with_size[abi:ne200100]<Phase::SpatialModeler::DirectivityHistogram **,Phase::SpatialModeler::DirectivityHistogram **>((v20 + 18952), *(a3 + 131704), *(a3 + 131712), (*(a3 + 131712) - *(a3 + 131704)) >> 3);
      std::vector<Phase::SpatialModeler::DirectivityHistogram *>::__assign_with_size[abi:ne200100]<Phase::SpatialModeler::DirectivityHistogram **,Phase::SpatialModeler::DirectivityHistogram **>((v20 + 18976), *(a3 + 131728), *(a3 + 131736), (*(a3 + 131736) - *(a3 + 131728)) >> 3);
    }

    memcpy((v20 + 19008), (a3 + 131760), 0x160uLL);
    Phase::SpatialModeler::EarlyReflectionsSimulationImpl::ClusterEarlyReflections(v164, a1, a2, a3);
    Phase::SpatialModeler::EarlyReflectionsSimulationImpl::RoomSimulationBegin(Phase::SpatialModeler::RoomSimulation &,Phase::SpatialModeler::Query &,Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState &)::$_0::operator()(a4, &v169, v164);
    v13 = v164;
    goto LABEL_26;
  }

  if (v18)
  {
    v21 = (*(*a1 + 104))(a1, *v14);
    if (v21 && *(v21 + 19408))
    {
      Phase::SpatialModeler::RayTracerState::operator=(a1 + v19, v21);
      v22 = Phase::SpatialModeler::RoomSimulationImpl::CheckClusterQueryInput(a1, a2, v171);
      if (v172 == 2)
      {
        std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](v162, v171);
LABEL_162:
        std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v171);
        Phase::SpatialModeler::EarlyReflectionsSimulationImpl::RoomSimulationBegin(Phase::SpatialModeler::RoomSimulation &,Phase::SpatialModeler::Query &,Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState &)::$_0::operator()(a4, &v169, v162);
        v13 = v162;
        goto LABEL_26;
      }

      if (*(a1 + 46128))
      {
        v154 = a2[8];
        v46 = a2[11];
        v45 = a2[12];
        v47 = *(v46 + 40);
        *&v48 = 0x101010101010101;
        *(&v48 + 1) = 0x101010101010101;
        v188[0] = v48;
        v188[1] = v48;
        v49 = *(v46 + 144);
        v50 = *(v46 + 96);
        if (v47 <= 1)
        {
          v51 = 1;
        }

        else
        {
          v51 = v47;
        }

        v173[0] = *(v46 + 144);
        v175 = 8;
        v176 = v173;
        *v177 = &v175;
        Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingOutput,std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingOutput>(unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingOutput>(unsigned long,unsigned long)::{lambda(Phase::SpatialModeler::SubmixRoutingOutput*)#1} const&>(v49, &v176, __p);
        v52 = ((v51 - (v49 + v50)) & ((v51 - (v49 + v50)) >> 31)) + v49;
        v53 = __p[0];
        v153 = v50;
        v151 = v52 & ~(v52 >> 31);
        v54 = v50 + v151;
        __p[0] = 0;
        *buf = v53;
        std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](&buf[8], &__p[1]);
        *&buf[40] = v49;
        std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>>::reset[abi:ne200100](__p);
        std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&__p[1]);
        std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>>::operator=[abi:ne200100](v45 + 13, buf);
        v45[18] = *&buf[40];
        std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>>::reset[abi:ne200100](buf);
        std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&buf[8]);
        v176 = v54;
        v173[0] = 16;
        Phase::details::AllocArray<Phase::SpatialModeler::RenderGroup,std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::RenderGroup>(unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::RenderGroup>(unsigned long,unsigned long)::{lambda(Phase::SpatialModeler::RenderGroup*)#1} const&>(__p, v54, &v176, v173);
        v55 = __p[0];
        __p[0] = 0;
        *buf = v55;
        std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](&buf[8], &__p[1]);
        *&buf[40] = v54;
        std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>>::reset[abi:ne200100](__p);
        std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&__p[1]);
        std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>>::operator=[abi:ne200100](v45 + 1, buf);
        v45[6] = *&buf[40];
        std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>>::reset[abi:ne200100](buf);
        std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&buf[8]);
        v173[0] = v54;
        v175 = 1;
        v176 = v173;
        *v177 = &v175;
        Phase::details::AllocArray<BOOL,std::unique_ptr<BOOL [],std::function<void ()(void *)>> Phase::details::AllocArray<BOOL>(unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<BOOL [],std::function<void ()(void *)>> Phase::details::AllocArray<BOOL>(unsigned long,unsigned long)::{lambda(BOOL*)#1} const&>(v54, &v176, __p);
        v56 = __p[0];
        __p[0] = 0;
        *buf = v56;
        std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](&buf[8], &__p[1]);
        *&buf[40] = v54;
        std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](__p);
        std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&__p[1]);
        std::unique_ptr<BOOL [],std::function<void ()(void *)>>::operator=[abi:ne200100](v45 + 7, buf);
        v45[12] = *&buf[40];
        std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](buf);
        v57 = std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&buf[8]);
        v58 = *(v46 + 96);
        v150 = v54;
        if (v58)
        {
          v59 = v45[6];
          if (v58 >= v59)
          {
            v60 = v45[6];
          }

          else
          {
            v60 = *(v46 + 96);
          }

          if (v59)
          {
            v61 = 0;
            v62 = 0;
            do
            {
              v63 = (*(v46 + 56) + v61);
              v64 = v45[1] + v61;
              v65 = *v63;
              *(v64 + 16) = *(v63 + 2);
              *v64 = v65;
              *(v64 + 24) = *(v63 + 6);
              *(v64 + 28) = *(v63 + 7);
              *(v64 + 32) = *(v63 + 8);
              *(v64 + 36) = *(v63 + 9);
              *(v64 + 40) = *(v63 + 10);
              *(v64 + 44) = *(v63 + 11);
              *(v64 + 48) = *(v63 + 12);
              *(v64 + 52) = *(v63 + 13);
              v57 = memcpy((v64 + 56), v63 + 56, 0x109uLL);
              v66 = *(*(v46 + 56) + v61);
              if (v66 <= 0x1F)
              {
                *(v188 + v66) = 0;
              }

              *(v45[7] + v62++) = 0;
              v61 += 336;
            }

            while (v60 != v62);
            if (v60 < v45[6])
            {
              v67 = 336 * v60;
              do
              {
                v68 = (v45[1] + v67);
                *v68 = 0;
                v68[1] = 0;
                *(v45[7] + v60++) = 0;
                v67 += 336;
              }

              while (v60 < v45[6]);
            }
          }

          if (*(v46 + 96))
          {
            v69 = 0;
            v70 = 0;
            do
            {
              v71 = **(Phase::Logger::GetInstance(v57) + 1264);
              v72 = v71;
              v57 = os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG);
              if (v57)
              {
                v73 = *(*(v46 + 56) + v69);
                v74 = *(v46 + 96);
                *buf = 136316162;
                *&buf[4] = "EarlyReflectionsSimulationImpl.mm";
                *&buf[12] = 1024;
                *&buf[14] = 751;
                *&buf[18] = 2048;
                *&buf[20] = v70;
                *&buf[28] = 2048;
                *&buf[30] = v73;
                *&buf[38] = 2048;
                *&buf[40] = v74;
                _os_log_impl(&dword_23A302000, v71, OS_LOG_TYPE_DEBUG, "%25s:%-5d ClusterCachedEarlyReflections Previous render group exists; input render group index %zu id %llu, number of previous render groups %zu", buf, 0x30u);
              }

              ++v70;
              v69 += 336;
            }

            while (v70 < *(v46 + 96));
          }
        }

        else
        {
          Phase::SpatialModeler::getRendererIdsInERClusteringResults((a1 + 26720), buf);
          v79 = v45[6];
          v57 = *buf;
          v80 = (*&buf[8] - *buf) >> 4;
          if (v80 >= v79)
          {
            v80 = v45[6];
          }

          if (v80)
          {
            v81 = 0;
            v82 = 0;
            v83 = v80;
            do
            {
              *(v45[1] + v81) = *(v57 + v82);
              v57 = *buf;
              v84 = *(*buf + v82);
              if (v84 <= 0x1F)
              {
                *(v188 + v84) = 0;
              }

              v81 += 336;
              v82 += 16;
              --v83;
            }

            while (v83);
            v79 = v45[6];
          }

          if (v80 < v79)
          {
            v85 = 336 * v80;
            do
            {
              v86 = (v45[1] + v85);
              *v86 = 0;
              v86[1] = 0;
              ++v80;
              v85 += 336;
            }

            while (v80 < v45[6]);
            v57 = *buf;
          }

          if (v57)
          {
            *&buf[8] = v57;
            operator delete(v57);
          }
        }

        if (!*(v46 + 144))
        {
          v152 = 0;
LABEL_153:
          if (v152 <= v153 - 1)
          {
            v139 = v153 - 1;
          }

          else
          {
            v139 = v152;
          }

          if (v139 < v45[6])
          {
            v176 = (v139 + 1);
            v173[0] = 16;
            Phase::details::AllocArray<Phase::SpatialModeler::RenderGroup,std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::RenderGroup>(unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::RenderGroup>(unsigned long,unsigned long)::{lambda(Phase::SpatialModeler::RenderGroup*)#1} const&>(buf, v139 + 1, &v176, v173);
            v140 = *buf;
            *buf = 0;
            __p[0] = v140;
            std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](&__p[1], &buf[8]);
            v181 = v139 + 1;
            std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>>::reset[abi:ne200100](buf);
            std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&buf[8]);
            v174 = 1;
            v175 = v139 + 1;
            v173[0] = &v175;
            v173[1] = &v174;
            Phase::details::AllocArray<BOOL,std::unique_ptr<BOOL [],std::function<void ()(void *)>> Phase::details::AllocArray<BOOL>(unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<BOOL [],std::function<void ()(void *)>> Phase::details::AllocArray<BOOL>(unsigned long,unsigned long)::{lambda(BOOL*)#1} const&>(v139 + 1, v173, buf);
            v141 = *buf;
            *buf = 0;
            v176 = v141;
            std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](v177, &buf[8]);
            v178 = v139 + 1;
            std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](buf);
            std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&buf[8]);
            v142 = 0;
            v143 = v139 + 1;
            v144 = 56;
            do
            {
              v145 = (v45[1] + v144);
              v146 = __p[0] + v144;
              v147 = *(v145 - 7);
              *(v146 - 5) = *(v145 - 5);
              *(v146 - 56) = v147;
              *(v146 - 8) = *(v145 - 8);
              *(v146 - 7) = *(v145 - 7);
              *(v146 - 6) = *(v145 - 6);
              *(v146 - 5) = *(v145 - 5);
              *(v146 - 4) = *(v145 - 4);
              *(v146 - 3) = *(v145 - 3);
              *(v146 - 2) = *(v145 - 2);
              *(v146 - 1) = *(v145 - 1);
              memcpy(v146, v145, 0x109uLL);
              *(v176 + v142) = *(v45[7] + v142);
              ++v142;
              v144 += 336;
            }

            while (v143 != v142);
            v148 = __p[0];
            __p[0] = 0;
            *buf = v148;
            std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](&buf[8], &__p[1]);
            *&buf[40] = v181;
            std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>>::operator=[abi:ne200100](__p, v45 + 1);
            v181 = v45[6];
            std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>>::operator=[abi:ne200100](v45 + 1, buf);
            v45[6] = *&buf[40];
            std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>>::reset[abi:ne200100](buf);
            std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&buf[8]);
            v149 = v176;
            v176 = 0;
            *buf = v149;
            std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](&buf[8], v177);
            *&buf[40] = v178;
            std::unique_ptr<BOOL [],std::function<void ()(void *)>>::operator=[abi:ne200100](&v176, v45 + 7);
            v178 = v45[12];
            std::unique_ptr<BOOL [],std::function<void ()(void *)>>::operator=[abi:ne200100](v45 + 7, buf);
            v45[12] = *&buf[40];
            std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](buf);
            std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&buf[8]);
            std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](&v176);
            std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v177);
            std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>>::reset[abi:ne200100](__p);
            std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&__p[1]);
          }

          Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryCleanupCommon(a1, a2, a3);
          v138 = 1;
          goto LABEL_161;
        }

        v87 = 0;
        v152 = 0;
        v88 = 16;
        v89 = (a1 + 46120);
        v90 = v154;
        while (1)
        {
          v91 = *(v46 + 104);
          v92 = v91 + 304 * v87;
          v93 = *(v92 + 144);
          if (*(v90 + 184) <= v93)
          {
            break;
          }

          v94 = *(v154 + 168) + 24 * v93;
          if (*(v94 + 20) != HIDWORD(v93))
          {
            break;
          }

          v57 = *v94;
          if (!*v94 || *v57 != 3)
          {
            break;
          }

          v95 = v89[425].f32[0] - *(v57 + 72);
          v96 = vsub_f32(v89[424], *(v57 + 64));
          v97 = sqrtf(vaddv_f32(vmul_f32(v96, v96)) + (v95 * v95));
          if (v97 <= 1000000.0)
          {
            v98 = v97;
          }

          else
          {
            v98 = 1000000.0;
          }

          v99 = *(v92 + 140);
          if (v99)
          {
            v100 = (v91 + v88);
            v101 = -3.4028e38;
            do
            {
              v102 = *v100++;
              v103 = v102;
              if (v101 < v102)
              {
                v101 = v103;
              }

              --v99;
            }

            while (v99);
          }

          else
          {
            v101 = -3.4028e38;
          }

          v173[0] = *(*v89 + 16);
          *__p = xmmword_23A555530;
          LODWORD(v175) = 0;
          LODWORD(v174) = 2139095039;
          Phase::SpatialModeler::getClosestERClusterToSourceInClusteringResults(v57, (a1 + 26720), v173, __p, &v175, &v174);
          if (v151 < 1 || *&v174 < 0.005)
          {
            v119 = v45[13];
            v121 = (v119 + 16 * v87);
            *v121 = 0;
            v122 = v45[6];
            if (v122)
            {
              v120 = 0;
              v123 = v45[1];
              while (*v123 != __p[0] || *(v123 + 8) != __p[1])
              {
                ++v120;
                v123 += 336;
                if (v122 == v120)
                {
                  goto LABEL_132;
                }
              }

              *(v45[7] + v120) = 0;
              *(v123 + 320) = 1;
              *v121 = v120;
              v124 = v152;
              if (v152 <= v120)
              {
                v124 = v120;
              }

              v152 = v124;
            }

            else
            {
LABEL_132:
              v120 = 0;
            }
          }

          else if (v153 >= v150)
          {
            v119 = v45[13];
            *(v119 + 16 * v87) = v152;
            v120 = v152;
          }

          else
          {
            LODWORD(v151) = v151 - 1;
            NextAvailable = Phase::SpatialModeler::IndexStore<32ul,1ull,0ull>::GetNextAvailable(v188);
            v105 = (v45[1] + 336 * v153);
            *v105 = NextAvailable;
            v105[1] = 0;
            *(v45[13] + 16 * v87) = v153;
            v106 = v152;
            if (v152 <= v153)
            {
              v106 = v153;
            }

            v152 = v106;
            *&v176 = v101;
            *(&v176 + 1) = v101;
            v177[0] = v101;
            v107 = Phase::Subbands<float>::Subbands(buf, &v176, 3);
            v108 = (v45[1] + 336 * v153);
            v109 = *buf;
            v110 = *&buf[16];
            v111 = v183;
            v108[14] = *&buf[32];
            v108[15] = v111;
            v108[12] = v109;
            v108[13] = v110;
            v112 = v184;
            v113 = v185;
            v114 = v187;
            v108[18] = v186;
            v108[19] = v114;
            v108[16] = v112;
            v108[17] = v113;
            v115 = v45[1] + 336 * v153;
            *(v115 + 184) = v173[0];
            *(v115 + 320) = 1;
            *(v45[7] + v153) = 1;
            v116 = **(Phase::Logger::GetInstance(v107) + 1264);
            v117 = v116;
            v57 = os_log_type_enabled(v116, OS_LOG_TYPE_DEBUG);
            if (v57)
            {
              v118 = *(v45[1] + 336 * v153);
              *buf = 136315906;
              *&buf[4] = "EarlyReflectionsSimulationImpl.mm";
              *&buf[12] = 1024;
              *&buf[14] = 866;
              *&buf[18] = 2048;
              *&buf[20] = v118;
              *&buf[28] = 2048;
              *&buf[30] = v87;
              _os_log_impl(&dword_23A302000, v116, OS_LOG_TYPE_DEBUG, "%25s:%-5d ClusterCachedEarlyReflections setting NEW render group ID %llu to submix %llu", buf, 0x26u);
            }

            ++v153;
            v119 = v45[13];
            v120 = *(v119 + 16 * v87);
            v89 = (a1 + 46120);
          }

          v125 = (fmaxf(v98, 1.0) * -0.5) + -6.0;
          if (v125 >= *&v175)
          {
            v126 = *&v175;
          }

          else
          {
            v126 = (v125 + *&v175) * 0.5;
          }

          *(v119 + 16 * v87 + 8) = v126;
          if (v120 < v45[6])
          {
            v127 = **(Phase::Logger::GetInstance(v57) + 1264);
            v128 = v127;
            v57 = os_log_type_enabled(v127, OS_LOG_TYPE_DEBUG);
            if (v57)
            {
              v129 = *(*(v46 + 104) + 304 * v87);
              v130 = (v45[13] + 16 * v87);
              v132 = *v130;
              v131 = v130[1];
              v133 = *(v45[1] + 336 * v132);
              v134 = *(v46 + 48);
              *buf = 136316674;
              *&buf[4] = "EarlyReflectionsSimulationImpl.mm";
              *&buf[12] = 1024;
              *&buf[14] = 892;
              *&buf[18] = 2048;
              *&buf[20] = v129;
              *&buf[28] = 2048;
              *&buf[30] = v133;
              *&buf[38] = 2048;
              *&buf[40] = v132;
              LOWORD(v183) = 2048;
              *(&v183 + 2) = v131;
              WORD5(v183) = 1024;
              HIDWORD(v183) = v134;
              _os_log_impl(&dword_23A302000, v127, OS_LOG_TYPE_DEBUG, "%25s:%-5d ClusterCachedEarlyReflections end Submix %llu assigned to render group %llu at index %lu, send level %f attack query %d", buf, 0x40u);
            }

            v119 = v45[13];
            v126 = *(v119 + 16 * v87 + 8);
            v89 = (a1 + 46120);
          }

          v135 = v119 + 16 * v87;
          v90 = v154;
          if (*(v154 + 952))
          {
            v126 = v126 + (*(v154 + 976) * (0.0 - v126));
          }

          *(v135 + 8) = v126;
          ++v87;
          v88 += 304;
          if (v87 >= *(v46 + 144))
          {
            goto LABEL_153;
          }
        }

        v136 = **(Phase::Logger::GetInstance(v57) + 1264);
        v137 = v136;
        if (os_log_type_enabled(v136, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "EarlyReflectionsSimulationImpl.mm";
          *&buf[12] = 1024;
          *&buf[14] = 785;
          _os_log_impl(&dword_23A302000, v136, OS_LOG_TYPE_ERROR, "%25s:%-5d ClusterCachedEarlyReflections: Query input source not found in Geo Layer", buf, 0x12u);
        }

        v77 = a1 + 72;
        v78 = 6;
      }

      else
      {
        v75 = **(Phase::Logger::GetInstance(v22) + 1264);
        v76 = v75;
        if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "EarlyReflectionsSimulationImpl.mm";
          *&buf[12] = 1024;
          *&buf[14] = 700;
          _os_log_impl(&dword_23A302000, v75, OS_LOG_TYPE_ERROR, "%25s:%-5d ER attack graph called ClusterCachedEarlyReflections but mERClusteringResults is empty", buf, 0x12u);
        }

        v77 = a1 + 72;
        v78 = 4;
      }

      v162[0] = v78;
      v162[1] = v77;
      v138 = 2;
LABEL_161:
      v163 = v138;
      goto LABEL_162;
    }
  }

  else
  {
    Phase::SpatialModeler::RoomSimulationImpl::RoomSimulationBeginHandleSustainQueryCommon(a1, a2, a3, (a1 + v19));
    v31 = 0;
    do
    {
      v32 = *(v20 + 22808 + v31);
      if (v32)
      {
        break;
      }

      v33 = v31++ == 18;
    }

    while (!v33);
    if (v32)
    {
      goto LABEL_35;
    }

    if (*(v20 + 195))
    {
      goto LABEL_49;
    }

    v36 = 0;
    do
    {
      v37 = *(v20 + 22827 + v36);
      if (v37)
      {
        break;
      }

      v33 = v36++ == 18;
    }

    while (!v33);
    if (v37)
    {
LABEL_35:
      if (*(v20 + 25040) != 1 || *(v20 + 120) != *(a3 + 112872) || *(v20 + 52) != *v14)
      {
        v34 = **(Phase::Logger::GetInstance(v30) + 1264);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          Phase::SpatialModeler::RoomSimulationLogging::MakeInfoString(*(a1 + 32), __p);
          v35 = v180 >= 0 ? __p : __p[0];
          *buf = 136315650;
          *&buf[4] = "EarlyReflectionsSimulationImpl.mm";
          *&buf[12] = 1024;
          *&buf[14] = 203;
          *&buf[18] = 2080;
          *&buf[20] = v35;
          _os_log_impl(&dword_23A302000, v34, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s", buf, 0x1Cu);
          if (v180 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }

    else
    {
LABEL_49:
      v38 = 0;
      v39 = 113248;
      v40 = v19 + a1 + 516;
      do
      {
        v41 = v39;
        v42 = v40;
        v43 = 3;
        do
        {
          *(v42 - 5) = *(a3 + v41);
          *(v42 - 4) = *(a3 + v41 + 4);
          *(v42 - 3) = *(a3 + v41 + 8);
          *(v42 - 2) = *(a3 + v41 + 12);
          *(v42 - 1) = *(a3 + v41 + 16);
          *v42 = *(a3 + v41 + 20);
          v42 += 6;
          v41 += 24;
          --v43;
        }

        while (v43);
        ++v38;
        v40 += 72;
        v39 += 72;
      }

      while (v38 != 256);
      if (v20 + 496 != a3 + 113248)
      {
        std::vector<Phase::SpatialModeler::PhaseRoomSimulationSoundSource>::__assign_with_size[abi:ne200100]<Phase::SpatialModeler::PhaseRoomSimulationSoundSource*,Phase::SpatialModeler::PhaseRoomSimulationSoundSource*>(v20 + 18928, *v17, *(a3 + 131688), 0x6DB6DB6DB6DB6DB7 * ((*(a3 + 131688) - *v17) >> 3));
        std::vector<Phase::SpatialModeler::DirectivityHistogram *>::__assign_with_size[abi:ne200100]<Phase::SpatialModeler::DirectivityHistogram **,Phase::SpatialModeler::DirectivityHistogram **>((v20 + 18952), *(a3 + 131704), *(a3 + 131712), (*(a3 + 131712) - *(a3 + 131704)) >> 3);
        std::vector<Phase::SpatialModeler::DirectivityHistogram *>::__assign_with_size[abi:ne200100]<Phase::SpatialModeler::DirectivityHistogram **,Phase::SpatialModeler::DirectivityHistogram **>((v20 + 18976), *(a3 + 131728), *(a3 + 131736), (*(a3 + 131736) - *(a3 + 131728)) >> 3);
      }

      memcpy((v20 + 19008), (a3 + 131760), 0x160uLL);
      Phase::SpatialModeler::EarlyReflectionsSimulationImpl::ClusterEarlyReflections(v160, a1, a2, a3);
      Phase::SpatialModeler::EarlyReflectionsSimulationImpl::RoomSimulationBegin(Phase::SpatialModeler::RoomSimulation &,Phase::SpatialModeler::Query &,Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState &)::$_0::operator()(v161, &v169, v160);
      std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v161);
      std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v160);
    }
  }

  v44 = *(v15 + 216) && (*(v15 + 980) & 1) == 0 && *(a1 + 48) <= ((*(v20 + 20936) - *(v20 + 20928)) >> 2);
  Phase::SpatialModeler::RoomSimulationImpl::PrepareRayTrace(a3, a1 + v19, *(a1 + 60), v44);
  __p[0] = a3;
  v158 = 0;
  v159 = 0;
  v157 = 0;
  std::vector<Phase::Geometry::SceneQueryBatch *>::__init_with_size[abi:ne200100]<Phase::Geometry::SceneQueryBatch * const*,Phase::Geometry::SceneQueryBatch * const*>(&v157, __p, &__p[1], 1uLL);
  memset(buf, 0, 24);
  std::vector<Phase::Geometry::SceneQueryBatch *>::__init_with_size[abi:ne200100]<Phase::Geometry::SceneQueryBatch **,Phase::Geometry::SceneQueryBatch **>(buf, v157, v158, (v158 - v157) >> 3);
  if (v157)
  {
    v158 = v157;
    operator delete(v157);
  }

  memset(v155, 0, sizeof(v155));
  std::vector<Phase::Geometry::SceneQueryBatch *>::__init_with_size[abi:ne200100]<Phase::Geometry::SceneQueryBatch **,Phase::Geometry::SceneQueryBatch **>(v155, *buf, *&buf[8], (*&buf[8] - *buf) >> 3);
  v156 = 3;
  Phase::SpatialModeler::EarlyReflectionsSimulationImpl::RoomSimulationBegin(Phase::SpatialModeler::RoomSimulation &,Phase::SpatialModeler::Query &,Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState &)::$_0::operator()(a4, &v169, v155);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v155);
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  return std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v167);
}

void sub_23A3CC4D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>>::reset[abi:ne200100](&STACK[0x200]);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v58 + 8);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a58);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a52);
  _Unwind_Resume(a1);
}

void Phase::SpatialModeler::EarlyReflectionsSimulationImpl::RunClusterQuery(Phase::Logger *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a3)
  {
    v8 = 1344;
    if (*(*(a2 + 88) + 48))
    {
      v8 = 26640;
    }

    v9 = a1 + v8;
    if (*(a3 + 137808) == Phase::SpatialModeler::EarlyReflectionsSimulationImpl::RoomSimulationBegin)
    {
      Instance = Phase::Logger::GetInstance(a1);
      v11 = os_signpost_id_generate(**(Instance + 224));
      *(v9 + 2966) = v11;
      v12 = Phase::Logger::GetInstance(v11);
      if (*(v12 + 1272) == 1)
      {
        v13 = **(Phase::Logger::GetInstance(v12) + 1264);
        v14 = v13;
        v15 = *(v9 + 2966);
        if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_23A302000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v15, "Phase_RoomSimulation_ERClusterQuery", "EarlyReflectionsClusterQuery", buf, 2u);
        }
      }
    }

    v16 = (*(a3 + 137808))(a1, a2, a3);
    if (*(a4 + 24) == 1)
    {
      v17 = Phase::Logger::GetInstance(v16);
      if (*(v17 + 1272) == 1)
      {
        v18 = **(Phase::Logger::GetInstance(v17) + 1264);
        v19 = v18;
        v20 = *(v9 + 2966);
        if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
        {
          *v21 = 0;
          _os_signpost_emit_with_name_impl(&dword_23A302000, v19, OS_SIGNPOST_INTERVAL_END, v20, "Phase_RoomSimulation_ERClusterQuery", &unk_23A5C28A2, v21, 2u);
        }
      }
    }
  }

  else
  {
    *a4 = 1;
    *(a4 + 8) = a1 + 72;
    *(a4 + 24) = 2;
  }
}

void Phase::SpatialModeler::EarlyReflectionsSimulationImpl::RunSpatialQuery(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v118 = *MEMORY[0x277D85DE8];
  Instance = Phase::Logger::GetInstance(a1);
  v7 = os_signpost_id_generate(**(Instance + 224));
  v8 = Phase::Logger::GetInstance(v7);
  if (*(v8 + 232) == 1)
  {
    v9 = **(Phase::Logger::GetInstance(v8) + 224);
    v10 = v9;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23A302000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v7, "Phase_LateReverb_Spatial_Query_Begin", "EarlyReflectionsSimulation: Spatial Query Begin", buf, 2u);
    }
  }

  v11 = Phase::Logger::GetInstance(v8);
  v12 = os_signpost_id_generate(**(v11 + 224));
  v13 = Phase::Logger::GetInstance(v12);
  if (*(v13 + 1272) == 1)
  {
    v14 = **(Phase::Logger::GetInstance(v13) + 1264);
    v15 = v14;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23A302000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v12, "Phase_RoomSimulation_ERSpatialQuery", "EarlyReflectionsSpatialQuery", buf, 2u);
    }
  }

  v16 = Phase::Logger::GetInstance(v13);
  v17 = os_signpost_id_generate(**(v16 + 432));
  v18 = Phase::Logger::GetInstance(v17);
  if (*(v18 + 1272) == 1)
  {
    v19 = **(Phase::Logger::GetInstance(v18) + 1264);
    v20 = v19;
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23A302000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v17, "Phase_RoomSimulation_HandleResultsEarlyReflections", "EarlyReflectionsHandleResults", buf, 2u);
    }
  }

  v21 = Phase::SpatialModeler::RoomSimulationImpl::CheckSpatialQueryInput(a1, a2, v113);
  if (v114 == 2)
  {
    std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](a3, v113);
    goto LABEL_82;
  }

  v23 = a2[8];
  v24 = a2[11];
  v25 = *(v24 + 552);
  if (*(v23 + 184) <= v25 || (v26 = *(v23 + 168) + 24 * v25, *(v26 + 20) != HIDWORD(v25)) || (v27 = *v26) == 0 || v27->i32[0] != 2)
  {
    v27 = 0;
  }

  v112 = v27;
  v28 = a2[12];
  if (*(v24 + 208))
  {
    v29 = **(Phase::Logger::GetInstance(v21) + 1264);
    v30 = v29;
    v21 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
    if (v21)
    {
      *buf = 136315394;
      *&buf[4] = "EarlyReflectionsSimulationImpl.mm";
      *&buf[12] = 1024;
      *&buf[14] = 955;
      _os_log_impl(&dword_23A302000, v29, OS_LOG_TYPE_ERROR, "%25s:%-5d ER Spatial Query is called with an individual source but must be called with a cluster key.", buf, 0x12u);
    }
  }

  v31 = 1424;
  if (*(v24 + 48))
  {
    v31 = 26720;
  }

  v32 = a1 + v31;
  if (*(a1 + v31 + 19512) > 0.0)
  {
    v33 = *(v32 + 19016);
    if (v33)
    {
      if (*(v32 + 168) != 1)
      {
        goto LABEL_126;
      }

      v34 = 0;
      do
      {
        v35 = *(v32 + 22808 + v34);
        if (v35)
        {
          break;
        }

        v36 = v34++ == 18;
      }

      while (!v36);
      if (v35)
      {
        goto LABEL_126;
      }

      v37 = 0;
      do
      {
        v38 = *(v32 + 22827 + v37);
        if (v38)
        {
          break;
        }

        v36 = v37++ == 18;
      }

      while (!v36);
      if (v38)
      {
LABEL_126:
        v39 = (*(v32 + 19308) / (v33 - *(v32 + 64))) * 100.0;
        if (v39 > 3.0)
        {
          v40 = **(Phase::Logger::GetInstance(v21) + 1264);
          v41 = v40;
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "EarlyReflectionsSimulationImpl.mm";
            *&buf[12] = 1024;
            *&buf[14] = 971;
            *&buf[18] = 2048;
            *&buf[20] = v39;
            _os_log_impl(&dword_23A302000, v40, OS_LOG_TYPE_ERROR, "%25s:%-5d High energy loss: %.1f%%.\n", buf, 0x1Cu);
          }
        }
      }
    }
  }

  Phase::SpatialModeler::RoomSimulationLogging::logInvalidIntersections(v32, v22);
  v43 = *(v32 + 19392);
  if (!*&v43)
  {
    goto LABEL_60;
  }

  v44 = *(v24 + 376);
  v45 = vcnt_s8(v43);
  v45.i16[0] = vaddlv_u8(v45);
  if (v45.u32[0] > 1uLL)
  {
    v46 = *(v24 + 376);
    if (*&v43 <= v44)
    {
      v46 = v44 % *&v43;
    }
  }

  else
  {
    v46 = (*&v43 - 1) & v44;
  }

  v47 = *(*(v32 + 19384) + 8 * v46);
  if (!v47 || (v48 = *v47) == 0)
  {
LABEL_60:
    if (*(v24 + 208))
    {
      v50 = **(Phase::Logger::GetInstance(v42) + 1264);
      v51 = v50;
      if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_66;
      }

      v52 = *(v24 + 376);
      *buf = 136315650;
      *&buf[4] = "EarlyReflectionsSimulationImpl.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1058;
      *&buf[18] = 2048;
      *&buf[20] = v52;
      v53 = "%25s:%-5d No early directional metadata found for given cluster key %llu.";
    }

    else
    {
      v50 = **(Phase::Logger::GetInstance(v42) + 1264);
      v54 = v50;
      if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_66;
      }

      v55 = *(v24 + 208);
      *buf = 136315650;
      *&buf[4] = "EarlyReflectionsSimulationImpl.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1053;
      *&buf[18] = 2048;
      *&buf[20] = v55;
      v53 = "%25s:%-5d No early directional metadata found for given sound source handle %llu.";
    }

    _os_log_impl(&dword_23A302000, v50, OS_LOG_TYPE_ERROR, v53, buf, 0x1Cu);
    goto LABEL_66;
  }

  while (1)
  {
    v49 = v48[1];
    if (v49 == v44)
    {
      break;
    }

    if (v45.u32[0] > 1uLL)
    {
      if (v49 >= *&v43)
      {
        v49 %= *&v43;
      }
    }

    else
    {
      v49 &= *&v43 - 1;
    }

    if (v49 != v46)
    {
      goto LABEL_60;
    }

LABEL_59:
    v48 = *v48;
    if (!v48)
    {
      goto LABEL_60;
    }
  }

  if (v48[2] != v44)
  {
    goto LABEL_59;
  }

  v75 = Phase::SpatialModeler::CopyMetadata<float>((v48 + 8), v28);
  v76 = *(a1 + 48);
  memset(buf, 0, sizeof(buf));
  v117 = v76;
  v77 = Phase::Logger::GetInstance(v75);
  if (*(a1 + 48) == (*(v77 + 192) - *(v77 + 191)) >> 2)
  {
    v78 = Phase::Logger::GetInstance(v77);
    v79 = *(v78 + 191);
    v80 = Phase::Logger::GetInstance(v78);
    v82 = *(v80 + 1536);
    if (v82 != v79)
    {
      v80 = memmove(buf, v79, v82 - v79);
    }
  }

  else
  {
    if (v117)
    {
      bzero(buf, 4 * v117);
    }

    v83 = **(Phase::Logger::GetInstance(v77) + 1264);
    v84 = os_log_type_enabled(v83, OS_LOG_TYPE_ERROR);
    if (v84)
    {
      v85 = Phase::Logger::GetInstance(v84);
      v86 = (*(v85 + 1536) - *(v85 + 1528)) >> 2;
      v87 = *(a1 + 48);
      *v115 = 136315906;
      *&v115[4] = "EarlyReflectionsSimulationImpl.mm";
      *&v115[12] = 1024;
      *&v115[14] = 1005;
      *&v115[18] = 2048;
      *&v115[20] = v86;
      *&v115[28] = 2048;
      *&v115[30] = v87;
      _os_log_impl(&dword_23A302000, v83, OS_LOG_TYPE_ERROR, "%25s:%-5d Error setting phase_room_eq_er: Its sub-band count of %zu does not match the modeler internal sub-band count of %zu", v115, 0x26u);
    }
  }

  if ((*(v23 + 216) | 2) != 3)
  {
    goto LABEL_106;
  }

  v80 = Phase::Logger::GetInstance(v80);
  if (*(v80 + 1520) != 1 || (*(v23 + 980) & 1) != 0)
  {
    goto LABEL_106;
  }

  v88 = *(a1 + 48);
  switch(v88)
  {
    case 31:
      v90 = *(v23 + 632);
      *&v115[64] = *(v23 + 616);
      *&v115[80] = v90;
      *&v115[96] = *(v23 + 648);
      *&v115[108] = *(v23 + 660);
      v91 = *(v23 + 568);
      *v115 = *(v23 + 552);
      *&v115[16] = v91;
      v92 = *(v23 + 600);
      *&v115[32] = *(v23 + 584);
      *&v115[48] = v92;
      *&v115[124] = 31;
      goto LABEL_105;
    case 10:
      v89 = *(v23 + 324);
      *v115 = *(v23 + 308);
      *&v115[16] = v89;
      *&v115[32] = *(v23 + 340);
      memset(&v115[40], 0, 80);
      *&v115[120] = 0xA00000000;
LABEL_105:
      v81.n128_f32[0] = Phase::Subbands<float>::operator+=(buf, v115);
      goto LABEL_106;
    case 3:
      *v115 = *(v23 + 232);
      *&v115[8] = *(v23 + 240);
      *&v115[124] = 3;
      memset(&v115[12], 0, 112);
      goto LABEL_105;
  }

  v107 = **(Phase::Logger::GetInstance(v80) + 1264);
  v108 = v107;
  v80 = os_log_type_enabled(v107, OS_LOG_TYPE_ERROR);
  if (v80)
  {
    v109 = *(a1 + 48);
    *v115 = 136315650;
    *&v115[4] = "EarlyReflectionsSimulationImpl.mm";
    *&v115[12] = 1024;
    *&v115[14] = 1034;
    *&v115[18] = 2048;
    *&v115[20] = v109;
    _os_log_impl(&dword_23A302000, v107, OS_LOG_TYPE_ERROR, "%25s:%-5d Unsupported sub-band count: %zu\n", v115, 0x1Cu);
  }

LABEL_106:
  v110 = v17;
  v111 = a3;
  v93 = *(a1 + 48);
  if (v93)
  {
    v94 = buf;
    v95 = 1;
    do
    {
      v81.n128_f32[0] = __exp10f(*v94 / 20.0);
      *v94++ = v81.n128_f32[0];
    }

    while (v93 > v95++);
  }

  v97 = *(v28 + 104);
  if (v97)
  {
    v98 = *v97;
    if (*v97)
    {
      v99 = v97[1];
      if (v99)
      {
        if (v99 == v117)
        {
          if (v98 <= 4 * v99)
          {
            v105 = 0;
            do
            {
              v106 = *(v28 + 104) + 4 * *(*(v28 + 104) + 8) * v105 + 16;
              MEMORY[0x23EE87230](v106, 1, buf, 1, v106, 1, v99, v81);
              ++v105;
            }

            while (v98 != v105);
          }

          else
          {
            v100 = buf;
            v101 = 16;
            v102 = v97[1];
            do
            {
              MEMORY[0x23EE87290](*(v28 + 104) + v101, v99, v100, *(v28 + 104) + v101, v99, v98, v81);
              v100 += 4;
              v101 += 4;
              --v102;
            }

            while (v102);
          }
        }

        else
        {
          v103 = **(Phase::Logger::GetInstance(v80) + 240);
          v104 = v103;
          if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
          {
            *v115 = 136315394;
            *&v115[4] = "SpatialModelerQueryOutput.hpp";
            *&v115[12] = 1024;
            *&v115[14] = 415;
            _os_log_impl(&dword_23A302000, v103, OS_LOG_TYPE_ERROR, "%25s:%-5d Error in EqualizeMetadata: Given metadata and gains have different subband count.", v115, 0x12u);
          }
        }
      }
    }
  }

  v17 = v110;
  a3 = v111;
LABEL_66:
  Phase::SpatialModeler::SortMetadataByDelay<float>(v28);
  v58 = *(v23 + 952);
  if (v58)
  {
    v59 = *(v23 + 976);
    if (v59 > 0.0)
    {
      v60 = *(a1 + 1280);
      v61 = Phase::Logger::GetInstance(v56);
      Phase::SpatialModeler::SpaceBlending((v23 + 952), (v23 + 960), v60, 0, *(v61 + 1308), v28, *(a1 + 48), v59, -144.0, 1.0);
      *(a1 + 1296) = *(v23 + 976);
      v58 = *(v23 + 952);
    }
  }

  v62 = 0;
  *(a1 + 1288) = v58;
  do
  {
    v63 = *(v32 + 22846 + v62);
    if (v63)
    {
      break;
    }

    v36 = v62++ == 18;
  }

  while (!v36);
  if (v63)
  {
    v64 = v112[7].i32[1];
    v65 = -v112[7].f32[0];
    *buf = vneg_f32(v112[6]);
    *&buf[8] = v65;
    *&buf[12] = v64;
    Phase::SpatialModeler::RotateMetadata<float>(v28, buf);
    v66 = 1;
  }

  else
  {
    v66 = 0;
  }

  *(v28 + 4) = v66;
  Phase::SpatialModeler::ExecuteEarlyReflectionDebugCallbacks(v32, *(a1 + 16), v23, v57);
  *&buf[24] = 1;
  v68 = Phase::Logger::GetInstance(v67);
  if (*(v68 + 1272) == 1)
  {
    v69 = **(Phase::Logger::GetInstance(v68) + 1264);
    v70 = v69;
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v69))
    {
      *v115 = 0;
      _os_signpost_emit_with_name_impl(&dword_23A302000, v70, OS_SIGNPOST_INTERVAL_END, v17, "Phase_RoomSimulation_HandleResultsEarlyReflections", &unk_23A5C28A2, v115, 2u);
    }
  }

  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](a3, buf);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](buf);
LABEL_82:
  v71 = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v113);
  v72 = Phase::Logger::GetInstance(v71);
  if (*(v72 + 1272) == 1)
  {
    v73 = **(Phase::Logger::GetInstance(v72) + 1264);
    v74 = v73;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v73))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23A302000, v74, OS_SIGNPOST_INTERVAL_END, v12, "Phase_RoomSimulation_ERSpatialQuery", &unk_23A5C28A2, buf, 2u);
    }
  }
}

void sub_23A3CD3EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  if (a1 == a2)
  {
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 232) = *(a2 + 232);
    v9 = *(a2 + 336);
    *(a1 + 344) = *(a2 + 344);
    *(a1 + 336) = v9;
  }

  else
  {
    std::vector<Phase::SpatialModeler::RoomSimulationDebugger::DebugIntersection>::__assign_with_size[abi:ne200100]<Phase::SpatialModeler::RoomSimulationDebugger::DebugIntersection*,Phase::SpatialModeler::RoomSimulationDebugger::DebugIntersection*>((a1 + 32), *(a2 + 32), *(a2 + 40), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 40) - *(a2 + 32)) >> 2));
    *(a1 + 56) = *(a2 + 56);
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((a1 + 72), *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 2);
    v5 = *(a2 + 104);
    *(a1 + 96) = *(a2 + 96);
    std::vector<Phase::SpatialModeler::RoomSimulationDebugger::DebugImageSource>::__assign_with_size[abi:ne200100]<Phase::SpatialModeler::RoomSimulationDebugger::DebugImageSource*,Phase::SpatialModeler::RoomSimulationDebugger::DebugImageSource*>((a1 + 104), v5, *(a2 + 112), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 112) - v5) >> 3));
    v6 = *(a2 + 136);
    *(a1 + 128) = *(a2 + 128);
    std::vector<Phase::Vector<float,3ul>>::__assign_with_size[abi:ne200100]<Phase::Vector<float,3ul>*,Phase::Vector<float,3ul>*>((a1 + 136), v6, *(a2 + 144), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 144) - v6) >> 2));
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((a1 + 160), *(a2 + 160), *(a2 + 168), (*(a2 + 168) - *(a2 + 160)) >> 2);
    std::vector<std::vector<float>>::__assign_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>((a1 + 184), *(a2 + 184), *(a2 + 192), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 192) - *(a2 + 184)) >> 3));
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>((a1 + 208), *(a2 + 208), *(a2 + 216), *(a2 + 216) - *(a2 + 208));
    v7 = *(a2 + 240);
    *(a1 + 232) = *(a2 + 232);
    std::vector<Phase::Vector<float,3ul>>::__assign_with_size[abi:ne200100]<Phase::Vector<float,3ul>*,Phase::Vector<float,3ul>*>((a1 + 240), v7, *(a2 + 248), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 248) - v7) >> 2));
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((a1 + 264), *(a2 + 264), *(a2 + 272), (*(a2 + 272) - *(a2 + 264)) >> 2);
    std::vector<std::vector<float>>::__assign_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>((a1 + 288), *(a2 + 288), *(a2 + 296), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 296) - *(a2 + 288)) >> 3));
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>((a1 + 312), *(a2 + 312), *(a2 + 320), *(a2 + 320) - *(a2 + 312));
    v8 = *(a2 + 336);
    *(a1 + 344) = *(a2 + 344);
    *(a1 + 336) = v8;
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((a1 + 352), *(a2 + 352), *(a2 + 360), (*(a2 + 360) - *(a2 + 352)) >> 2);
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((a1 + 376), *(a2 + 376), *(a2 + 384), (*(a2 + 384) - *(a2 + 376)) >> 2);
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((a1 + 400), *(a2 + 400), *(a2 + 408), (*(a2 + 408) - *(a2 + 400)) >> 2);
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((a1 + 424), *(a2 + 424), *(a2 + 432), (*(a2 + 432) - *(a2 + 424)) >> 2);
  }

  return a1;
}

uint64_t Phase::SpatialModeler::EarlyReflectionsSimulationImpl::RoomSimulationBegin(Phase::SpatialModeler::RoomSimulation &,Phase::SpatialModeler::Query &,Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState &)::$_0::operator()(Phase::Logger *a1, os_signpost_id_t **a2, uint64_t a3)
{
  Instance = Phase::Logger::GetInstance(a1);
  if (*(Instance + 1272) == 1)
  {
    v7 = **(Phase::Logger::GetInstance(Instance) + 1264);
    v8 = v7;
    v9 = **a2;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      *v11 = 0;
      _os_signpost_emit_with_name_impl(&dword_23A302000, v8, OS_SIGNPOST_INTERVAL_END, v9, "Phase_RoomSimulation_EarlyReflectionsBegin", &unk_23A5C28A2, v11, 2u);
    }
  }

  return std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](a1, a3);
}

uint64_t Phase::SpatialModeler::EarlyReflectionsSimulationImpl::ClusterEarlyReflections(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v153 = *MEMORY[0x277D85DE8];
  v8 = Phase::SpatialModeler::RoomSimulationImpl::CheckClusterQueryInput(a2, a3, v139);
  if (v140 == 2)
  {
    std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](a1, v139);
  }

  else
  {
    v122 = a4;
    v123 = a3;
    v124 = a1;
    v125 = a3[8];
    v126 = a2;
    v9 = a3[11];
    v10 = a3[12];
    v11 = *(v9 + 144);
    if (v11)
    {
      v12 = 0;
      v13 = 288;
      do
      {
        if (*(*(v9 + 104) + v13) < *(v9 + 96))
        {
          v14 = **(Phase::Logger::GetInstance(v8) + 1264);
          v8 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
          if (v8)
          {
            v15 = (*(v9 + 104) + v13);
            v16 = *(v15 - 36);
            v17 = *v15;
            v18 = *(*(v9 + 56) + 336 * v17);
            v19 = *(v9 + 48);
            *buf = 136316418;
            *&buf[4] = "EarlyReflectionsSimulationImpl.mm";
            *&buf[12] = 1024;
            *&buf[14] = 447;
            *&buf[18] = 2048;
            *&buf[20] = v16;
            *&buf[28] = 2048;
            *&buf[30] = v18;
            *&buf[38] = 2048;
            *&buf[40] = v17;
            LOWORD(v145) = 1024;
            *(&v145 + 2) = v19;
            _os_log_impl(&dword_23A302000, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d ClusterEarlyReflections begin Submix %llu assigned to render group %llu at index %lu, attack query %d", buf, 0x36u);
          }

          v11 = *(v9 + 144);
        }

        ++v12;
        v13 += 304;
      }

      while (v12 < v11);
    }

    v20 = 1424;
    if (*(v9 + 48))
    {
      v20 = 26720;
    }

    v21 = v126 + v20;
    v22 = *(v126 + v20 + 18936) - *(v126 + v20 + 18928);
    if (v22)
    {
      v128 = v21;
      v23 = fmax(*(*(v123 + 88) + 40), 1.0);
      v24 = v23;
      v25 = 0x6DB6DB6DB6DB6DB7 * (v22 >> 3);
      if (v25 >= v23)
      {
        v26 = v23;
      }

      else
      {
        v26 = v25;
      }

      memset(v132, 0, sizeof(v132));
      v133 = 1065353216;
      *v134 = 0u;
      v135 = 0u;
      v136 = 0u;
      *__p = 0u;
      v138 = 0;
      if (*(Phase::Logger::GetInstance(v8) + 1576))
      {
        Phase::SpatialModeler::ERClustering::AssignSourcesToExistingRenderers(v26, v9, v128, *(v126 + 48), v132, *(v126 + 40));
      }

      else
      {
        Phase::SpatialModeler::ERClustering::FindEarlyReflectionClusters((v128 + 18928), *(v126 + 40), *(v128 + 22576), v26, v128, *(v126 + 48), v132);
      }

      if (v26)
      {
        if (0x4EC4EC4EC4EC4EC5 * ((v136 - *(&v135 + 1)) >> 4) == v26)
        {
          v29 = v26;
        }

        else
        {
          v29 = 0x4EC4EC4EC4EC4EC5 * ((v136 - *(&v135 + 1)) >> 4);
        }

        v30 = *(v126 + 16);
        if (*(v30 + 3192) && (v31 = Phase::Geometry::SystemDebugger::GetFromSystem(v30)) != 0 && (*(v31 + 80) & 1) != 0 || *(v128 + 72) == 1)
        {
          Phase::SpatialModeler::GenerateEarlyScattering(v132, &v135 + 1, v128, *(v126 + 40), v128 + 22568, v9, *(v126 + 48));
        }

        v32 = *(v128 + 22496);
        if (v32 <= v29)
        {
          v32 = v29;
        }

        if (v32 >= v24)
        {
          v33 = v24;
        }

        else
        {
          v33 = v32;
        }

        __src = v33;
        v142 = 16;
        Phase::details::AllocArray<Phase::SpatialModeler::RenderGroup,std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::RenderGroup>(unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::RenderGroup>(unsigned long,unsigned long)::{lambda(Phase::SpatialModeler::RenderGroup*)#1} const&>(&v150, v33, &__src, &v142);
        v34 = v125;
        v35 = v150;
        *&v150 = 0;
        *buf = v35;
        std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](&buf[8], &v150 + 8);
        *&buf[40] = v33;
        std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>>::reset[abi:ne200100](&v150);
        std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v150 + 8);
        std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>>::operator=[abi:ne200100](v10 + 1, buf);
        v10[6] = *&buf[40];
        std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>>::reset[abi:ne200100](buf);
        std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&buf[8]);
        v36 = v10[6];
        v141 = 1;
        v142 = v36;
        __src = &v142;
        v130 = &v141;
        Phase::details::AllocArray<BOOL,std::unique_ptr<BOOL [],std::function<void ()(void *)>> Phase::details::AllocArray<BOOL>(unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<BOOL [],std::function<void ()(void *)>> Phase::details::AllocArray<BOOL>(unsigned long,unsigned long)::{lambda(BOOL*)#1} const&>(v36, &__src, &v150);
        v37 = v150;
        *&v150 = 0;
        *buf = v37;
        std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](&buf[8], &v150 + 8);
        *&buf[40] = v36;
        std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](&v150);
        std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v150 + 8);
        std::unique_ptr<BOOL [],std::function<void ()(void *)>>::operator=[abi:ne200100](v10 + 7, buf);
        v10[12] = *&buf[40];
        std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](buf);
        std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&buf[8]);
        Phase::SpatialModeler::evaluateRendererKeepAliveFlagsAndUpdateState(v128, v29, v24, v10 + 1, v10 + 7, __p, 15.0);
        v121 = v29;
        v38 = *(v9 + 144);
        v141 = 8;
        v142 = v38;
        __src = &v142;
        v130 = &v141;
        Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingOutput,std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingOutput>(unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingOutput>(unsigned long,unsigned long)::{lambda(Phase::SpatialModeler::SubmixRoutingOutput*)#1} const&>(v38, &__src, &v150);
        v39 = v150;
        *&v150 = 0;
        *buf = v39;
        std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](&buf[8], &v150 + 8);
        *&buf[40] = v38;
        std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>>::reset[abi:ne200100](&v150);
        std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v150 + 8);
        std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>>::operator=[abi:ne200100](v10 + 13, buf);
        v10[18] = *&buf[40];
        std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>>::reset[abi:ne200100](buf);
        std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&buf[8]);
        v40 = v10[18];
        if (v40)
        {
          v41 = (v40 + 1) & 0xFFFFFFFFFFFFFFFELL;
          v42 = vdupq_n_s64(v40 - 1);
          v43 = xmmword_23A554B70;
          v44 = (v10[13] + 16);
          v45 = vdupq_n_s64(2uLL);
          do
          {
            v46 = vmovn_s64(vcgeq_u64(v42, v43));
            if (v46.i8[0])
            {
              *(v44 - 2) = -1;
            }

            if (v46.i8[4])
            {
              *v44 = -1;
            }

            v43 = vaddq_s64(v43, v45);
            v44 += 4;
            v41 -= 2;
          }

          while (v41);
        }

        v120 = v29;
        if (*(v9 + 144))
        {
          v47 = 0;
          do
          {
            v48 = *(v9 + 104) + 304 * v47;
            SoundSourceHash = Phase::SpatialModeler::GetSoundSourceHash(*(v48 + 144), *(v128 + 22576), v48 + 160);
            if (*&v132[8])
            {
              v50 = vcnt_s8(*&v132[8]);
              v50.i16[0] = vaddlv_u8(v50);
              if (v50.u32[0] > 1uLL)
              {
                v51 = SoundSourceHash;
                if (SoundSourceHash >= *&v132[8])
                {
                  v51 = SoundSourceHash % *&v132[8];
                }
              }

              else
              {
                v51 = (*&v132[8] - 1) & SoundSourceHash;
              }

              v52 = *(*v132 + 8 * v51);
              if (v52)
              {
                for (i = *v52; i; i = *i)
                {
                  v54 = i[1];
                  if (v54 == SoundSourceHash)
                  {
                    if (i[2] == SoundSourceHash)
                    {
                      *(v10[13] + 16 * v47) = *(i + 3);
                      v58 = v10[13];
                      v64 = v58 + 16 * v47;
                      v65 = *(v64 + 8);
                      if (*(v125 + 952))
                      {
                        v65 = v65 + (*(v125 + 976) * (0.0 - v65));
                      }

                      *(v64 + 8) = v65;
                      goto LABEL_64;
                    }
                  }

                  else
                  {
                    if (v50.u32[0] > 1uLL)
                    {
                      if (v54 >= *&v132[8])
                      {
                        v54 %= *&v132[8];
                      }
                    }

                    else
                    {
                      v54 &= *&v132[8] - 1;
                    }

                    if (v54 != v51)
                    {
                      break;
                    }
                  }
                }
              }
            }

            v55 = (v10[13] + 16 * v47);
            *v55 = -1;
            v55[1] = 0;
            v56 = **(Phase::Logger::GetInstance(SoundSourceHash) + 1264);
            SoundSourceHash = os_log_type_enabled(v56, OS_LOG_TYPE_ERROR);
            if (SoundSourceHash)
            {
              v57 = *(v48 + 144);
              *buf = 136315650;
              *&buf[4] = "EarlyReflectionsSimulationImpl.mm";
              *&buf[12] = 1024;
              *&buf[14] = 574;
              *&buf[18] = 2048;
              *&buf[20] = v57;
              _os_log_impl(&dword_23A302000, v56, OS_LOG_TYPE_ERROR, "%25s:%-5d Query input source (%llu) not found in clustering results.", buf, 0x1Cu);
            }

            v58 = v10[13];
LABEL_64:
            if (*(v58 + 16 * v47) < v10[6])
            {
              v59 = **(Phase::Logger::GetInstance(SoundSourceHash) + 1264);
              if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
              {
                v60 = *(*(v9 + 104) + 304 * v47);
                v61 = *(v10[13] + 16 * v47);
                v62 = *(v10[1] + 336 * v61);
                v63 = *(v9 + 48);
                *buf = 136316418;
                *&buf[4] = "EarlyReflectionsSimulationImpl.mm";
                *&buf[12] = 1024;
                *&buf[14] = 584;
                *&buf[18] = 2048;
                *&buf[20] = v60;
                *&buf[28] = 2048;
                *&buf[30] = v62;
                *&buf[38] = 2048;
                *&buf[40] = v61;
                LOWORD(v145) = 1024;
                *(&v145 + 2) = v63;
                _os_log_impl(&dword_23A302000, v59, OS_LOG_TYPE_DEBUG, "%25s:%-5d ClusterEarlyReflections end Submix %llu assigned to render group %llu at index %lu, attack query %d", buf, 0x36u);
              }
            }

            ++v47;
          }

          while (v47 < *(v9 + 144));
        }

        v66 = v128;
        std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>>>::clear(v128 + 19384);
        if (v121 << 32)
        {
          v67 = 0;
          v68 = v120;
          if (v120 <= 1)
          {
            v68 = 1;
          }

          v127 = v68;
          v69 = 0uLL;
          do
          {
            __src = 0;
            v130 = 0;
            v131 = 0;
            v150 = v69;
            v151 = v69;
            v152 = 1065353216;
            if (*(v9 + 144))
            {
              v70 = 0;
              v71 = 0;
              v72 = -3.4028e38;
              while (1)
              {
                v73 = *(v9 + 104);
                v74 = v73 + 304 * v70;
                if (*(v10[13] + 16 * v70) == v67)
                {
                  v75 = Phase::SpatialModeler::GetSoundSourceHash(*(v74 + 144), *(v66 + 22576), v74 + 160);
                  v142 = v75;
                  v76 = v130;
                  if (v130 >= v131)
                  {
                    v78 = __src;
                    v79 = v130 - __src;
                    v80 = (v130 - __src) >> 3;
                    v81 = v80 + 1;
                    if ((v80 + 1) >> 61)
                    {
                      std::vector<Phase::SpatialModeler::OptionalPropertyDescription>::__throw_length_error[abi:ne200100]();
                    }

                    v82 = v131 - __src;
                    if ((v131 - __src) >> 2 > v81)
                    {
                      v81 = v82 >> 2;
                    }

                    v83 = v82 >= 0x7FFFFFFFFFFFFFF8;
                    v84 = 0x1FFFFFFFFFFFFFFFLL;
                    if (!v83)
                    {
                      v84 = v81;
                    }

                    if (v84)
                    {
                      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&__src, v84);
                    }

                    v85 = (8 * v80);
                    v86 = &v85[-((v130 - __src) >> 3)];
                    *v85 = v75;
                    v77 = v85 + 1;
                    memcpy(v86, v78, v79);
                    v75 = __src;
                    __src = v86;
                    v130 = v77;
                    v131 = 0;
                    if (v75)
                    {
                      operator delete(v75);
                    }

                    v34 = v125;
                    v66 = v128;
                  }

                  else
                  {
                    *v130 = v75;
                    v77 = v76 + 1;
                  }

                  v130 = v77;
                  v87 = *(v74 + 144);
                  if (*(v34 + 184) <= v87 || (v88 = *(v34 + 168) + 24 * v87, *(v88 + 20) != HIDWORD(v87)) || (v89 = *v88) == 0 || *v89 != 3)
                  {
                    v117 = **(Phase::Logger::GetInstance(v75) + 1264);
                    if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
                    {
                      v118 = *(v74 + 144);
                      *buf = 136315650;
                      *&buf[4] = "EarlyReflectionsSimulationImpl.mm";
                      *&buf[12] = 1024;
                      *&buf[14] = 616;
                      *&buf[18] = 2048;
                      *&buf[20] = v118;
                      _os_log_impl(&dword_23A302000, v117, OS_LOG_TYPE_ERROR, "%25s:%-5d Query input source (%llu) not found in Geo Layer.", buf, 0x1Cu);
                    }

                    *v124 = 6;
                    *(v124 + 8) = v126 + 72;
                    *(v124 + 24) = 2;
                    std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(&v150);
                    if (__src)
                    {
                      v130 = __src;
                      operator delete(__src);
                    }

                    goto LABEL_125;
                  }

                  v90 = *(v89 + 64);
                  v91 = *(v89 + 72);
                  v92 = *(v10[13] + 16 * v70 + 8);
                  *buf = &v142;
                  v93 = std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&v150, &v142);
                  v94 = v92;
                  v93[3] = v90;
                  *(v93 + 8) = v91;
                  *(v93 + 9) = v94;
                }

                v95 = *(v74 + 140);
                if (v95)
                {
                  v96 = (v73 + 304 * v71 + 16);
                  do
                  {
                    v97 = *v96++;
                    v98 = v97;
                    if (v72 < v97)
                    {
                      v72 = v98;
                    }

                    --v95;
                  }

                  while (v95);
                }

                v70 = ++v71;
                if (*(v9 + 144) <= v71)
                {
                  goto LABEL_104;
                }
              }
            }

            v72 = -3.4028e38;
LABEL_104:
            *&v142 = v72;
            *(&v142 + 1) = v72;
            v143 = v72;
            Phase::Subbands<float>::Subbands(buf, &v142, 3);
            v99 = (v10[1] + 336 * v67);
            v100 = *buf;
            v101 = *&buf[16];
            v102 = v145;
            v99[14] = *&buf[32];
            v99[15] = v102;
            v99[12] = v100;
            v99[13] = v101;
            v103 = v146;
            v104 = v147;
            v105 = v149;
            v99[18] = v148;
            v99[19] = v105;
            v99[16] = v103;
            v99[17] = v104;
            v142 = 0;
            if (v130 == __src)
            {
              ClusterHash = 0;
            }

            else
            {
              ClusterHash = Phase::SpatialModeler::GetClusterHash(&__src, *(v66 + 22576));
              v142 = ClusterHash;
            }

            *(v10[1] + 336 * v67 + 184) = ClusterHash;
            *buf = &v142;
            v107 = std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((v66 + 19384), &v142);
            if (v107 + 3 != &v150)
            {
              *(v107 + 14) = v152;
              std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>,void *> *>>(v107 + 3, v151, 0);
            }

            v108 = *(&v135 + 1);
            *buf = &v142;
            v109 = std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((v66 + 19384), &v142);
            Phase::SpatialModeler::CopyMetadata<float>(v108 + 208 * v67, (v109 + 8));
            v110 = v10[1];
            *buf = &v142;
            *(std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((v66 + 19384), &v142) + 17) = *(v110 + 336 * v67);
            v111 = v134[0];
            if (v67 < (v134[1] - v134[0]) >> 3)
            {
              *buf = &v142;
              v112 = std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((v66 + 19384), &v142);
              v113 = &v111[8 * v67];
              *(v112 + 72) = *v113;
              *(v112 + 73) = *(v113 + 1);
            }

            std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(&v150);
            if (__src)
            {
              v130 = __src;
              operator delete(__src);
            }

            ++v67;
            v69 = 0uLL;
          }

          while (v67 != v127);
        }

        if ((*(v9 + 48) & 1) == 0)
        {
          (*(*v126 + 96))(v126, v66);
          if ((*(v66 + 195) & 1) == 0)
          {
            Phase::SpatialModeler::RoomSimulation::StoreRayTracerStateToERtoLRModelerCache(v66, v114);
            Phase::SpatialModeler::RoomSimulationLogging::logInQuerySources((v9 + 104), "Cluster ER - ER after Store", 27);
            Phase::SpatialModeler::RoomSimulationLogging::logRayTracerStateStatus(v66, "Cluster ER - ER after Store", 27);
          }
        }

        Phase::SpatialModeler::checkSubmixRendererChange(v9, v10);
        Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryCleanupCommon(v126, v123, v122);
        *(v124 + 24) = 1;
        goto LABEL_125;
      }

      v115 = **(Phase::Logger::GetInstance(v27) + 1264);
      if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
      {
        v116 = 0x6DB6DB6DB6DB6DB7 * ((*(v128 + 18936) - *(v128 + 18928)) >> 3);
        *buf = 136315650;
        *&buf[4] = "EarlyReflectionsSimulationImpl.mm";
        *&buf[12] = 1024;
        *&buf[14] = 490;
        *&buf[18] = 2048;
        *&buf[20] = v116;
        _os_log_impl(&dword_23A302000, v115, OS_LOG_TYPE_ERROR, "%25s:%-5d FindEarlyReflectionClusters: numClusters 0 after processing %zu sources, this is invalid output, returning", buf, 0x1Cu);
      }

      *a1 = 4;
      *(a1 + 8) = v126 + 72;
      *(a1 + 24) = 2;
LABEL_125:
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      *buf = &v135 + 8;
      std::vector<Phase::SpatialModeler::DirectionalMetadataOutput<float>>::__destroy_vector::operator()[abi:ne200100](buf);
      if (v134[0])
      {
        v134[1] = v134[0];
        operator delete(v134[0]);
      }

      std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(v132);
    }

    else
    {
      v28 = **(Phase::Logger::GetInstance(v8) + 1264);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "EarlyReflectionsSimulationImpl.mm";
        *&buf[12] = 1024;
        *&buf[14] = 458;
        _os_log_impl(&dword_23A302000, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d ClusterEarlyReflections: persistingTracerState.mState.mSources.size() == 0, no simulated sources", buf, 0x12u);
      }

      *a1 = 3;
      *(a1 + 8) = v126 + 72;
      *(a1 + 24) = 2;
    }
  }

  return std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v139);
}

void sub_23A3CE5E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  Phase::SpatialModeler::ClusteringResult::~ClusteringResult(&a27);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a41);
  _Unwind_Resume(a1);
}

uint64_t Phase::SpatialModeler::EarlyReflectionsSimulationImpl::RoomSimulationFinish@<X0>(float32x2_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, Phase::Logger *a4@<X8>)
{
  v59 = *MEMORY[0x277D85DE8];
  Instance = Phase::Logger::GetInstance(a1);
  v9 = os_signpost_id_generate(**(Instance + 432));
  v49 = v9;
  v10 = Phase::Logger::GetInstance(v9);
  if (*(v10 + 1272) == 1)
  {
    v11 = **(Phase::Logger::GetInstance(v10) + 1264);
    v12 = v11;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23A302000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v9, "Phase_RoomSimulation_EarlyReflectionsFinish", "EarlyReflectionsFinish", buf, 2u);
    }
  }

  v48 = &v49;
  Phase::SpatialModeler::RoomSimulationImpl::RoomSimulationFinishCommonPreProcess(a1, a2, a3, v46);
  if (v47 == 2)
  {
    std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v45, v46);
    v13 = v45;
    Phase::SpatialModeler::EarlyReflectionsSimulationImpl::RoomSimulationFinish(Phase::SpatialModeler::RoomSimulation &,Phase::SpatialModeler::Query &,Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState &)::$_0::operator()(a4, &v48, v45);
    goto LABEL_35;
  }

  v14 = (a3 + 131768);
  v15 = a2[8];
  v16 = 178;
  if (*(a2[11] + 48))
  {
    v16 = 3340;
  }

  v17 = &a1[v16];
  if (*(a2[11] + 48))
  {
    Phase::SpatialModeler::RayTracerState::operator=(&a1[v16], a3 + 112752);
LABEL_31:
    if (*(v15 + 216))
    {
      v39 = *(v15 + 980) ^ 1;
    }

    else
    {
      v39 = 0;
    }

    *&v40 = Phase::SpatialModeler::RayTracerState::UpdateLaunchedRayHistory(v17, *v14);
    Phase::SpatialModeler::RoomSimulationImpl::RoomSimulationFinishHandleMatchReverbTimes((v39 & 1), (a3 + 112752), v17, v41, v40);
    Phase::SpatialModeler::EarlyReflectionsSimulationImpl::ClusterEarlyReflections(v43, a1, a2, a3);
    v13 = v43;
    Phase::SpatialModeler::EarlyReflectionsSimulationImpl::RoomSimulationFinish(Phase::SpatialModeler::RoomSimulation &,Phase::SpatialModeler::Query &,Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState &)::$_0::operator()(a4, &v48, v43);
    goto LABEL_35;
  }

  v18 = (a3 + 112872);
  if (!Phase::SpatialModeler::SimulationController::ShouldEnableListenerOutsideMitigation(&a1[10], (a3 + 112752), &a1[178], *(v15 + 980)) || *(a3 + 112945) != 1)
  {
    Phase::SpatialModeler::SimulationController::AdjustAggregationCoefficientsDefault(*v18, *v18, &a1[10], (a3 + 112760));
    if (v17[21].i8[0] == 1 && v17[21].i8[1] == 1)
    {
      Phase::SpatialModeler::SimulationController::AdjustAggregationCoefficientsDynamic(a1 + 10, &v17[2851], (a3 + 112760), *v18, *v18, v17[2628].f32[1], *v14);
    }

    v23 = (a3 + 132272);
    v24 = *(a3 + 132352);
    v55 = *(a3 + 132336);
    v56 = v24;
    v25 = *(a3 + 132384);
    v57 = *(a3 + 132368);
    v58 = v25;
    v26 = *(a3 + 132288);
    *buf = *(a3 + 132272);
    *&buf[16] = v26;
    v27 = *(a3 + 132320);
    v53 = *(a3 + 132304);
    v54 = v27;
    v28 = HIDWORD(v25);
    if (HIDWORD(v25))
    {
      v29 = *(a3 + 133680);
      if ((*(a3 + 133688) - v29) >> 2 == HIDWORD(v58))
      {
        v30 = buf;
        do
        {
          v31 = *v29++;
          *v30 = *v30 / v31;
          ++v30;
          --v28;
        }

        while (v28);
      }
    }

    v32 = *(a3 + 132256);
    v33 = *(a3 + 132396);
    if (v33)
    {
      v34 = 0.0;
      v35 = *(a3 + 132396);
      do
      {
        v36 = *v23++;
        v34 = v34 + v36;
        --v35;
      }

      while (v35);
      if (v33 != 1)
      {
        v34 = v34 / v33;
      }
    }

    else
    {
      v34 = 0.0;
    }

    v37 = *(a3 + 135552);
    v50 = *(a3 + 135544);
    v51 = v37;
    Phase::SpatialModeler::RoomChangeDetector::IncrementResultInternal<0ul,1ul,2ul,float,float,Phase::Vector<float,3ul>>(v32, v34, &a1[84], &a1[84], &v50);
    Phase::SpatialModeler::GetRoomChangeProbabilityEstimate(&a1[84]);
    *(a3 + 133788) = v38;
    Phase::SpatialModeler::RayTracerState::AggregateResultData(v17, (a3 + 112752), v15);
    Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView::operator=(&v17[2900], a3 + 135952);
    goto LABEL_31;
  }

  Phase::SpatialModeler::RayTracerState::UpdateResultData(v17, (a3 + 112752), v15);
  v20 = **(Phase::Logger::GetInstance(v19) + 1264);
  v21 = v20;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v22 = a1[2807].i32[0];
    *buf = 136315650;
    *&buf[4] = "EarlyReflectionsSimulationImpl.mm";
    *&buf[12] = 1024;
    *&buf[14] = 241;
    *&buf[18] = 1024;
    *&buf[20] = v22;
    _os_log_impl(&dword_23A302000, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d listenerOutsideMitigation ER: Listener is outside, mitigating by skipping aggregation, counter %u", buf, 0x18u);
  }

  Phase::SpatialModeler::EarlyReflectionsSimulationImpl::ClusterEarlyReflections(v44, a1, a2, a3);
  v13 = v44;
  Phase::SpatialModeler::EarlyReflectionsSimulationImpl::RoomSimulationFinish(Phase::SpatialModeler::RoomSimulation &,Phase::SpatialModeler::Query &,Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState &)::$_0::operator()(a4, &v48, v44);
LABEL_35:
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v13);
  return std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v46);
}

void sub_23A3CEAB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

uint64_t Phase::SpatialModeler::EarlyReflectionsSimulationImpl::RoomSimulationFinish(Phase::SpatialModeler::RoomSimulation &,Phase::SpatialModeler::Query &,Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState &)::$_0::operator()(Phase::Logger *a1, os_signpost_id_t **a2, uint64_t a3)
{
  Instance = Phase::Logger::GetInstance(a1);
  if (*(Instance + 1272) == 1)
  {
    v7 = **(Phase::Logger::GetInstance(Instance) + 1264);
    v8 = v7;
    v9 = **a2;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      *v11 = 0;
      _os_signpost_emit_with_name_impl(&dword_23A302000, v8, OS_SIGNPOST_INTERVAL_END, v9, "Phase_RoomSimulation_EarlyReflectionsFinish", &unk_23A5C28A2, v11, 2u);
    }
  }

  return std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](a1, a3);
}

uint64_t Phase::SpatialModeler::CopyMetadata<float>(uint64_t result, uint64_t a2)
{
  v36[4] = *MEMORY[0x277D85DE8];
  v2 = *(result + 104);
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      v5 = result;
      *(a2 + 204) = *(result + 204);
      v30 = 4;
      v31 = v3;
      v32 = &v31;
      v33[0] = &v30;
      Phase::details::AllocArray<Phase::Vector<float,3ul>,std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Vector<float,3ul>>(unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Vector<float,3ul>>(unsigned long,unsigned long)::{lambda(Phase::Vector<float,3ul>*)#1} const&>(v3, &v32, &v35);
      v6 = v35;
      v35 = 0;
      v32 = v6;
      std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](v33, v36);
      v34 = v3;
      std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](&v35);
      std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v36);
      std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::operator=[abi:ne200100]((a2 + 8), &v32);
      *(a2 + 48) = v34;
      std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](&v32);
      std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v33);
      v30 = 4;
      v31 = v3;
      v32 = &v31;
      v33[0] = &v30;
      Phase::details::AllocArray<float,std::unique_ptr<float [],std::function<void ()(void *)>> Phase::details::AllocArray<float>(unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<float [],std::function<void ()(void *)>> Phase::details::AllocArray<float>(unsigned long,unsigned long)::{lambda(float*)#1} const&>(v3, &v32, &v35);
      v7 = v35;
      v35 = 0;
      v32 = v7;
      std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](v33, v36);
      v34 = v3;
      std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](&v35);
      std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v36);
      std::unique_ptr<float [],std::function<void ()(void *)>>::operator=[abi:ne200100]((a2 + 56), &v32);
      *(a2 + 96) = v34;
      std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](&v32);
      std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v33);
      v8 = *(v5 + 104);
      if (v8)
      {
        v9 = *(v8 + 8);
      }

      else
      {
        v9 = 0;
      }

      Phase::AllocPackedSubbandArray<float>(v3, v9, &v32);
      std::unique_ptr<Phase::PackedSubbandArray<float>,std::function<void ()(void *)>>::operator=[abi:ne200100]((a2 + 104), &v32);
      std::unique_ptr<Phase::PackedSubbandArray<float>,std::function<void ()(void *)>>::reset[abi:ne200100](&v32, 0);
      std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v33);
      v30 = 1;
      v31 = v3;
      v32 = &v31;
      v33[0] = &v30;
      Phase::details::AllocArray<BOOL,std::unique_ptr<BOOL [],std::function<void ()(void *)>> Phase::details::AllocArray<BOOL>(unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<BOOL [],std::function<void ()(void *)>> Phase::details::AllocArray<BOOL>(unsigned long,unsigned long)::{lambda(BOOL*)#1} const&>(v3, &v32, &v35);
      v10 = v35;
      v35 = 0;
      v32 = v10;
      std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](v33, v36);
      v34 = v3;
      std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](&v35);
      std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v36);
      std::unique_ptr<BOOL [],std::function<void ()(void *)>>::operator=[abi:ne200100]((a2 + 144), &v32);
      *(a2 + 184) = v34;
      std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](&v32);
      std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v33);
      v11 = 0;
      v12 = *(v5 + 8);
      v13 = *(a2 + 8);
      v14 = *(v5 + 56);
      v15 = *(a2 + 56);
      v16 = *(v5 + 104);
      v17 = (v16 + 16);
      v18 = *(v16 + 8);
      v19 = *(a2 + 104);
      v20 = (v19 + 16);
      v21 = *(v19 + 8);
      v22 = *(v5 + 144);
      v23 = *(a2 + 144);
      result = 4 * v21;
      do
      {
        v24 = (v12 + 12 * v11);
        v25 = (v13 + 12 * v11);
        *v25 = *v24;
        v25[1] = v24[1];
        v25[2] = v24[2];
        *(v15 + 4 * v11) = *(v14 + 4 * v11);
        v26 = v17;
        v27 = v20;
        for (i = v18; i; --i)
        {
          v29 = *v26++;
          *v27++ = v29;
        }

        *(v23 + v11) = *(v22 + v11);
        ++v11;
        v20 = (v20 + result);
        v17 += v18;
      }

      while (v11 != v3);
      *(a2 + 201) = *(v5 + 201);
    }
  }

  return result;
}

uint64_t Phase::SpatialModeler::IndexStore<32ul,1ull,0ull>::GetNextAvailable(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  for (result = 1; result != 32; ++result)
  {
    if (*(a1 + result) == 1)
    {
      *(a1 + result) = 0;
      return result;
    }
  }

  v3 = **(Phase::Logger::GetInstance(0x20) + 1264);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315650;
    v5 = "RayTracingTypes.hpp";
    v6 = 1024;
    v7 = 700;
    v8 = 2048;
    v9 = 0;
    _os_log_impl(&dword_23A302000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d IndexStore: no indexes available, returning invalid value %llu", &v4, 0x1Cu);
  }

  return 0;
}

float32_t Phase::Subbands<float>::operator+=(float32x4_t *a1, float32x4_t *a2)
{
  v2 = a1[7].u32[3];
  if (v2)
  {
    if (v2 == 10)
    {
      v4 = vaddq_f32(*a1, *a2);
      v11 = vaddq_f32(a1[1], a2[1]);
      v12 = vaddq_f32(a1[2], a2[2]);
      *a1 = v4;
      a1[1] = v11;
      a1[2] = v12;
    }

    else if (v2 == 31)
    {
      v3 = vaddq_f32(a1[1], a2[1]);
      v4 = vaddq_f32(*a1, *a2);
      v5 = vaddq_f32(a1[3], a2[3]);
      v6 = vaddq_f32(a1[2], a2[2]);
      v7 = vaddq_f32(a1[5], a2[5]);
      v8 = vaddq_f32(a1[4], a2[4]);
      v9 = vaddq_f32(a1[6], a2[6]);
      v10 = vaddq_f32(a1[7], a2[7]);
      v10.i32[3] = HIDWORD(*&a1[7]);
      *a1 = v4;
      a1[1] = v3;
      a1[2] = v6;
      a1[3] = v5;
      a1[4] = v8;
      a1[5] = v7;
      a1[6] = v9;
      a1[7] = v10;
    }

    else
    {
      v13 = a1;
      do
      {
        v14 = a2->f32[0];
        a2 = (a2 + 4);
        v4.f32[0] = v14 + *v13;
        *v13++ = v4.f32[0];
        --v2;
      }

      while (v2);
    }
  }

  return v4.f32[0];
}

void Phase::SpatialModeler::SortMetadataByDelay<float>(uint64_t a1)
{
  v62 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 104);
  if (v1)
  {
    v2 = *v1;
    if (*v1 >= 2)
    {
      std::vector<unsigned long>::vector[abi:ne200100](&__p, *v1);
      v4 = __p;
      v5 = v44;
      if (__p != v44)
      {
        v6 = 0;
        v7 = (v44 - __p - 8) >> 3;
        v8 = vdupq_n_s64(v7);
        v9 = (v7 + 2) & 0x3FFFFFFFFFFFFFFELL;
        v10 = xmmword_23A554B70;
        v11 = vdupq_n_s64(2uLL);
        do
        {
          v12 = vmovn_s64(vcgeq_u64(v8, v10));
          if (v12.i8[0])
          {
            v4[v6] = v6;
          }

          if (v12.i8[4])
          {
            v4[v6 + 1] = v6 + 1;
          }

          v6 += 2;
          v10 = vaddq_s64(v10, v11);
        }

        while (v9 != v6);
      }

      v13 = 126 - 2 * __clz(v5 - v4);
      v59 = a1;
      if (v5 == v4)
      {
        v14 = 0;
      }

      else
      {
        v14 = v13;
      }

      std::__introsort<std::_ClassicAlgPolicy,void Phase::SpatialModeler::SortMetadataByDelay<float>(Phase::SpatialModeler::DirectionalMetadataOutput<float> &)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *,false>(v4, v5, &v59, v14, 1);
      v48 = v2;
      v51 = 4;
      v53 = &v48;
      v54[0] = &v51;
      Phase::details::AllocArray<Phase::Vector<float,3ul>,std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Vector<float,3ul>>(unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Vector<float,3ul>>(unsigned long,unsigned long)::{lambda(Phase::Vector<float,3ul>*)#1} const&>(v2, &v53, &v59);
      v15 = v59;
      v59 = 0;
      v56 = v15;
      std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](v57, v60);
      v58 = v2;
      std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](&v59);
      std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v60);
      v51 = v2;
      v45[0] = 4;
      v48 = &v51;
      v49[0] = v45;
      Phase::details::AllocArray<float,std::unique_ptr<float [],std::function<void ()(void *)>> Phase::details::AllocArray<float>(unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<float [],std::function<void ()(void *)>> Phase::details::AllocArray<float>(unsigned long,unsigned long)::{lambda(float*)#1} const&>(v2, &v48, &v59);
      v16 = v59;
      v59 = 0;
      v53 = v16;
      std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](v54, v60);
      v55 = v2;
      std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](&v59);
      std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v60);
      v17 = *(a1 + 104);
      if (v17)
      {
        v18 = *(v17 + 8);
      }

      else
      {
        v18 = 0;
      }

      Phase::AllocPackedSubbandArray<float>(v2, v18, &v51);
      v46 = 1;
      v47 = v2;
      v45[0] = &v47;
      v45[1] = &v46;
      Phase::details::AllocArray<BOOL,std::unique_ptr<BOOL [],std::function<void ()(void *)>> Phase::details::AllocArray<BOOL>(unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<BOOL [],std::function<void ()(void *)>> Phase::details::AllocArray<BOOL>(unsigned long,unsigned long)::{lambda(BOOL*)#1} const&>(v2, v45, &v59);
      v19 = v59;
      v59 = 0;
      v48 = v19;
      std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](v49, v60);
      v50 = v2;
      std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](&v59);
      std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v60);
      v20 = 0;
      v21 = *(a1 + 8);
      v22 = __p;
      v23 = v56;
      v24 = *(a1 + 56);
      v25 = v53;
      v26 = *(a1 + 104);
      v27 = v26 + 16;
      v28 = *(v26 + 8);
      v29 = (v51 + 16);
      v30 = *(a1 + 144);
      v31 = v48;
      v32 = 4 * *(v51 + 8);
      do
      {
        v33 = v22[v20];
        v34 = (v21 + 12 * v33);
        v35 = (v23 + 12 * v20);
        *v35 = *v34;
        v35[1] = v34[1];
        v35[2] = v34[2];
        *(v25 + 4 * v20) = *(v24 + 4 * v33);
        if (v28)
        {
          v36 = (v27 + 4 * v33 * v28);
          v37 = v29;
          v38 = v28;
          do
          {
            v39 = *v36++;
            *v37++ = v39;
            --v38;
          }

          while (v38);
        }

        *(v20 + v31) = *(v30 + v33);
        v20 = v20 + 1;
        v29 += v32;
      }

      while (v20 != v2);
      *(a1 + 8) = 0;
      v59 = v21;
      std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](v60, a1 + 16);
      v61 = *(a1 + 48);
      std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::operator=[abi:ne200100]((a1 + 8), &v56);
      *(a1 + 48) = v58;
      std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::operator=[abi:ne200100](&v56, &v59);
      v58 = v61;
      std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](&v59);
      std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v60);
      v40 = *(a1 + 56);
      *(a1 + 56) = 0;
      v59 = v40;
      std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](v60, a1 + 64);
      v61 = *(a1 + 96);
      std::unique_ptr<float [],std::function<void ()(void *)>>::operator=[abi:ne200100]((a1 + 56), &v53);
      *(a1 + 96) = v55;
      std::unique_ptr<float [],std::function<void ()(void *)>>::operator=[abi:ne200100](&v53, &v59);
      v55 = v61;
      std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](&v59);
      std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v60);
      v41 = *(a1 + 104);
      *(a1 + 104) = v51;
      v51 = v41;
      std::__function::__value_func<void ()(void *)>::swap[abi:ne200100]((a1 + 112), v52);
      v42 = *(a1 + 144);
      *(a1 + 144) = 0;
      v59 = v42;
      std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](v60, a1 + 152);
      v61 = *(a1 + 184);
      std::unique_ptr<BOOL [],std::function<void ()(void *)>>::operator=[abi:ne200100]((a1 + 144), &v48);
      *(a1 + 184) = v50;
      std::unique_ptr<BOOL [],std::function<void ()(void *)>>::operator=[abi:ne200100](&v48, &v59);
      v50 = v61;
      std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](&v59);
      std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v60);
      *(a1 + 201) = 1;
      std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](&v48);
      std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v49);
      std::unique_ptr<Phase::PackedSubbandArray<float>,std::function<void ()(void *)>>::reset[abi:ne200100](&v51, 0);
      std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v52);
      std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](&v53);
      std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v54);
      std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](&v56);
      std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v57);
      if (__p)
      {
        v44 = __p;
        operator delete(__p);
      }
    }
  }
}

void sub_23A3CF53C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  std::unique_ptr<Phase::PackedSubbandArray<float>,std::function<void ()(void *)>>::reset[abi:ne200100](&a23, 0);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&a24);
  std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](&a28);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v29 + 8);
  std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100]((v30 - 184));
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v28 + 8);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void Phase::SpatialModeler::RotateMetadata<float>(uint64_t a1, float *a2)
{
  v2 = *(a1 + 104);
  if (v2 && *v2)
  {
    v5 = *(a1 + 204);
    if (!v5)
    {
      Phase::SpatialModeler::ConvertMetadataSphericalToCartesian<float>(a1);
    }

    v6 = 0;
    for (i = 0; ; ++i)
    {
      v8 = *(a1 + 104);
      if (v8)
      {
        v8 = *v8;
      }

      if (i >= v8)
      {
        break;
      }

      Phase::operator*<float>(a2, (*(a1 + 8) + v6), v10);
      v9 = (*(a1 + 8) + v6);
      *v9 = v10[0];
      v9[1] = v10[1];
      v9[2] = v10[2];
      v6 += 12;
    }

    if (!v5)
    {
      Phase::SpatialModeler::ConvertMetadataCartesianToSpherical<float>(a1);
    }
  }
}

uint64_t std::vector<Phase::SpatialModeler::PhaseRoomSimulationSoundSource>::__assign_with_size[abi:ne200100]<Phase::SpatialModeler::PhaseRoomSimulationSoundSource*,Phase::SpatialModeler::PhaseRoomSimulationSoundSource*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *(a1 + 16);
  v9 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((v8 - *a1) >> 3) < a4)
  {
    if (v9)
    {
      *(a1 + 8) = v9;
      operator delete(v9);
      v8 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    if (a4 <= 0x492492492492492)
    {
      v10 = 0x6DB6DB6DB6DB6DB7 * (v8 >> 3);
      v11 = 2 * v10;
      if (2 * v10 <= a4)
      {
        v11 = a4;
      }

      if (v10 >= 0x249249249249249)
      {
        v12 = 0x492492492492492;
      }

      else
      {
        v12 = v11;
      }

      std::vector<Phase::SpatialModeler::PhaseRoomSimulationSoundSource>::__vallocate[abi:ne200100](a1, v12);
    }

    std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
  }

  v13 = *(a1 + 8) - v9;
  if (0x6DB6DB6DB6DB6DB7 * (v13 >> 3) >= a4)
  {
    result = std::__copy_impl::operator()[abi:ne200100]<Phase::SpatialModeler::PhaseRoomSimulationSoundSource *,Phase::SpatialModeler::PhaseRoomSimulationSoundSource *,Phase::SpatialModeler::PhaseRoomSimulationSoundSource *>(&v17, a2, a3, v9);
    *(a1 + 8) = v15;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<Phase::SpatialModeler::PhaseRoomSimulationSoundSource *,Phase::SpatialModeler::PhaseRoomSimulationSoundSource *,Phase::SpatialModeler::PhaseRoomSimulationSoundSource *>(&v16, a2, a2 + v13, v9);
    result = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<Phase::SpatialModeler::PhaseRoomSimulationSoundSource>,Phase::SpatialModeler::PhaseRoomSimulationSoundSource*,Phase::SpatialModeler::PhaseRoomSimulationSoundSource*,Phase::SpatialModeler::PhaseRoomSimulationSoundSource*>(a1, a2 + v13, a3, *(a1 + 8));
    *(a1 + 8) = result;
  }

  return result;
}

void std::vector<Phase::SpatialModeler::PhaseRoomSimulationSoundSource>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::SpatialModeler::PhaseRoomSimulationSoundSource>>(a1, a2);
  }

  std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<Phase::SpatialModeler::PhaseRoomSimulationSoundSource>,Phase::SpatialModeler::PhaseRoomSimulationSoundSource*,Phase::SpatialModeler::PhaseRoomSimulationSoundSource*,Phase::SpatialModeler::PhaseRoomSimulationSoundSource*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = a4;
  while (a2 != a3)
  {
    *result = *a2;
    *(result + 8) = *(a2 + 8);
    *(result + 12) = *(a2 + 12);
    *(result + 16) = *(a2 + 16);
    *(result + 20) = *(a2 + 20);
    *(result + 24) = *(a2 + 24);
    *(result + 28) = *(a2 + 28);
    *(result + 32) = *(a2 + 32);
    *(result + 36) = *(a2 + 36);
    *(result + 40) = *(a2 + 40);
    a2 += 56;
    result += 56;
  }

  return result;
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<Phase::SpatialModeler::PhaseRoomSimulationSoundSource *,Phase::SpatialModeler::PhaseRoomSimulationSoundSource *,Phase::SpatialModeler::PhaseRoomSimulationSoundSource *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = a2;
  if (a2 != a3)
  {
    do
    {
      *a4 = *result;
      *(a4 + 8) = *(result + 8);
      *(a4 + 12) = *(result + 12);
      *(a4 + 16) = *(result + 16);
      *(a4 + 20) = *(result + 20);
      *(a4 + 24) = *(result + 24);
      *(a4 + 28) = *(result + 28);
      *(a4 + 32) = *(result + 32);
      *(a4 + 36) = *(result + 36);
      *(a4 + 40) = *(result + 40);
      result += 56;
      a4 += 56;
    }

    while (result != a3);
    return a3;
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::SpatialModeler::PhaseRoomSimulationSoundSource>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<Phase::SpatialModeler::DirectivityHistogram *>::__assign_with_size[abi:ne200100]<Phase::SpatialModeler::DirectivityHistogram **,Phase::SpatialModeler::DirectivityHistogram **>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<Phase::Geometry::SceneQueryBatch *>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

uint64_t Phase::SpatialModeler::RoomChangeDetector::IncrementResultInternal<0ul,1ul,2ul,float,float,Phase::Vector<float,3ul>>(float a1, float a2, uint64_t a3, int *a4, uint64_t a5)
{
  *&a4[a4[8]] = a1;
  Phase::SpatialModeler::ParameterHistory<float,8>::Increment(a4);
  *&a4[a4[22] + 14] = a2;
  Phase::SpatialModeler::ParameterHistory<float,8>::Increment((a4 + 14));
  LODWORD(v9) = *(a5 + 8);
  v10 = &a4[3 * a4[34] + 28];
  v11 = *a5;
  *v10 = *a5;
  *(v10 + 8) = LODWORD(v9);

  return Phase::SpatialModeler::ParameterHistory<Phase::Vector<float,3ul>,2>::Increment((a4 + 28), v9, v11, v8);
}

float Phase::SpatialModeler::ParameterHistory<float,8>::Increment(uint64_t a1)
{
  v1 = ((*(a1 + 52) - (*(a1 + 48) + 1)) & ((*(a1 + 52) - (*(a1 + 48) + 1)) >> 31)) + *(a1 + 48) + 1;
  *(a1 + 48) = v1;
  v2 = *(a1 + 32);
  v3 = v1;
  v4 = (v2 + 1) & 7;
  if (v2 + 1 <= 0)
  {
    v4 = -(-(v2 + 1) & 7);
  }

  result = *(a1 + 44) + ((*(a1 + 4 * v2) - *(a1 + 44)) / v3);
  *(a1 + 44) = result;
  *(a1 + 32) = v4;
  *(a1 + 36) = v2;
  *(a1 + 40) += ((7 - *(a1 + 40)) & ((7 - *(a1 + 40)) >> 31)) + 1;
  return result;
}

uint64_t Phase::SpatialModeler::ParameterHistory<Phase::Vector<float,3ul>,2>::Increment(uint64_t result, double a2, double a3, double a4)
{
  v4 = ((*(result + 52) - (*(result + 48) + 1)) & ((*(result + 52) - (*(result + 48) + 1)) >> 31)) + *(result + 48) + 1;
  *(result + 48) = v4;
  v5 = *(result + 24);
  v6 = (result + 12 * v5);
  v7 = *(result + 44);
  *&a4 = v4;
  v8 = (v6[1].f32[0] - v7) / v4;
  *(result + 36) = vadd_f32(*(result + 36), vdiv_f32(vsub_f32(*v6, *(result + 36)), vdup_lane_s32(*&a4, 0)));
  *(result + 44) = v7 + v8;
  v9 = (v5 + 1) & 1;
  if (v5 < -1)
  {
    v9 = -v9;
  }

  *(result + 24) = v9;
  *(result + 28) = v5;
  *(result + 32) += ((1 - *(result + 32)) & ((1 - *(result + 32)) >> 31)) + 1;
  return result;
}

void *std::vector<Phase::SpatialModeler::RoomSimulationDebugger::DebugIntersection>::__assign_with_size[abi:ne200100]<Phase::SpatialModeler::RoomSimulationDebugger::DebugIntersection*,Phase::SpatialModeler::RoomSimulationDebugger::DebugIntersection*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x6DB6DB6DB6DB6DB7 * ((v7 - *result) >> 2) < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (a4 <= 0x924924924924924)
    {
      v9 = 0x6DB6DB6DB6DB6DB7 * (v7 >> 2);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x492492492492492)
      {
        v11 = 0x924924924924924;
      }

      else
      {
        v11 = v10;
      }

      std::vector<Phase::SpatialModeler::RoomSimulationDebugger::DebugIntersection>::__vallocate[abi:ne200100](v6, v11);
    }

    std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0x6DB6DB6DB6DB6DB7 * ((v12 - v8) >> 2) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

void std::vector<Phase::SpatialModeler::RoomSimulationDebugger::DebugIntersection>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x924924924924925)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::SpatialModeler::RoomSimulationDebugger::DebugIntersection>>(a1, a2);
  }

  std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::SpatialModeler::RoomSimulationDebugger::DebugIntersection>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x924924924924925)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<Phase::SpatialModeler::RoomSimulationDebugger::DebugImageSource>::__assign_with_size[abi:ne200100]<Phase::SpatialModeler::RoomSimulationDebugger::DebugImageSource*,Phase::SpatialModeler::RoomSimulationDebugger::DebugImageSource*>(uint64_t *a1, char **a2, char **a3, unint64_t a4)
{
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) < a4)
  {
    std::vector<Phase::SpatialModeler::RoomSimulationDebugger::DebugImageSource>::__vdeallocate(a1);
    if (a4 <= 0x666666666666666)
    {
      v9 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
      {
        v10 = 0x666666666666666;
      }

      else
      {
        v10 = v9;
      }

      std::vector<Phase::SpatialModeler::RoomSimulationDebugger::DebugImageSource>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1] - v8;
  if (0xCCCCCCCCCCCCCCCDLL * (v11 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<Phase::SpatialModeler::RoomSimulationDebugger::DebugImageSource *,Phase::SpatialModeler::RoomSimulationDebugger::DebugImageSource *,Phase::SpatialModeler::RoomSimulationDebugger::DebugImageSource *>(&v17, a2, a3, v8);
    v13 = v12;
    v14 = a1[1];
    if (v14 != v12)
    {
      do
      {
        v15 = *(v14 - 24);
        if (v15)
        {
          *(v14 - 16) = v15;
          operator delete(v15);
        }

        v14 -= 40;
      }

      while (v14 != v13);
    }

    a1[1] = v13;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<Phase::SpatialModeler::RoomSimulationDebugger::DebugImageSource *,Phase::SpatialModeler::RoomSimulationDebugger::DebugImageSource *,Phase::SpatialModeler::RoomSimulationDebugger::DebugImageSource *>(&v16, a2, (a2 + v11), v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<Phase::SpatialModeler::RoomSimulationDebugger::DebugImageSource>,Phase::SpatialModeler::RoomSimulationDebugger::DebugImageSource*,Phase::SpatialModeler::RoomSimulationDebugger::DebugImageSource*,Phase::SpatialModeler::RoomSimulationDebugger::DebugImageSource*>(a1, a2 + v11, a3, a1[1]);
  }
}

void std::vector<Phase::SpatialModeler::RoomSimulationDebugger::DebugImageSource>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<Phase::SpatialModeler::RoomSimulationDebugger::DebugImageSource>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<Phase::SpatialModeler::RoomSimulationDebugger::DebugImageSource>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::SpatialModeler::RoomSimulationDebugger::DebugImageSource>>(a1, a2);
  }

  std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<Phase::SpatialModeler::RoomSimulationDebugger::DebugImageSource>,Phase::SpatialModeler::RoomSimulationDebugger::DebugImageSource*,Phase::SpatialModeler::RoomSimulationDebugger::DebugImageSource*,Phase::SpatialModeler::RoomSimulationDebugger::DebugImageSource*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = *v6;
      *(v4 + 4) = *(v6 + 4);
      v7 = *(v6 + 8);
      *(v4 + 16) = 0;
      v8 = v4 + 16;
      *(v8 - 8) = v7;
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      std::vector<Phase::Vector<float,3ul>>::__init_with_size[abi:ne200100]<Phase::Vector<float,3ul>*,Phase::Vector<float,3ul>*>(v8, *(v6 + 16), *(v6 + 24), 0xAAAAAAAAAAAAAAABLL * ((*(v6 + 24) - *(v6 + 16)) >> 2));
      v6 += 40;
      v4 = v13 + 40;
      v13 += 40;
    }

    while (v6 != a3);
  }

  v11 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<Phase::SpatialModeler::RoomSimulationDebugger::DebugImageSource>,Phase::SpatialModeler::RoomSimulationDebugger::DebugImageSource*>>::~__exception_guard_exceptions[abi:ne200100](v10);
  return v4;
}

char **std::__copy_impl::operator()[abi:ne200100]<Phase::SpatialModeler::RoomSimulationDebugger::DebugImageSource *,Phase::SpatialModeler::RoomSimulationDebugger::DebugImageSource *,Phase::SpatialModeler::RoomSimulationDebugger::DebugImageSource *>(uint64_t a1, char **a2, char **a3, uint64_t a4)
{
  result = a2;
  if (a2 != a3)
  {
    v7 = a2 + 2;
    do
    {
      v8 = v7 - 2;
      *a4 = *(v7 - 4);
      *(a4 + 4) = *(v7 - 3);
      *(a4 + 8) = *(v7 - 2);
      if (a4 != v7 - 2)
      {
        std::vector<Phase::Vector<float,3ul>>::__assign_with_size[abi:ne200100]<Phase::Vector<float,3ul>*,Phase::Vector<float,3ul>*>((a4 + 16), *v7, v7[1], 0xAAAAAAAAAAAAAAABLL * ((v7[1] - *v7) >> 2));
      }

      a4 += 40;
      v7 += 5;
    }

    while (v8 + 5 != a3);
    return a3;
  }

  return result;
}

char *std::vector<Phase::Vector<float,3ul>>::__assign_with_size[abi:ne200100]<Phase::Vector<float,3ul>*,Phase::Vector<float,3ul>*>(char **a1, char *a2, char *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - result) >> 2) < a4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0x1555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 2);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0xAAAAAAAAAAAAAAALL)
      {
        v11 = 0x1555555555555555;
      }

      else
      {
        v11 = v10;
      }

      std::vector<Phase::Vector<float,3ul>>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - result) >> 2) >= a4)
  {
    while (v5 != a3)
    {
      *result = *v5;
      *(result + 1) = *(v5 + 1);
      *(result + 2) = *(v5 + 2);
      v5 += 12;
      result += 12;
    }

    a1[1] = result;
  }

  else
  {
    v13 = &a2[v12 - result];
    if (v12 != result)
    {
      v14 = result;
      v15 = a2;
      do
      {
        *v14 = *v15;
        *(v14 + 1) = *(v15 + 1);
        *(v14 + 2) = *(v15 + 2);
        v15 += 12;
        v14 += 12;
      }

      while (v15 != v13);
    }

    if (v13 == a3)
    {
      v17 = v12;
    }

    else
    {
      v16 = a2 - result;
      v17 = v12;
      do
      {
        v18 = &v17[v16];
        *v12 = *&v17[v16];
        *(v12 + 1) = *&v17[v16 + 4];
        *(v12 + 2) = *&v17[v16 + 8];
        v12 += 12;
        v17 += 12;
      }

      while (v18 + 12 != a3);
    }

    a1[1] = v17;
  }

  return result;
}

void std::vector<std::vector<float>>::__assign_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(uint64_t *a1, char **a2, char **a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    std::vector<std::vector<float>>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::vector<float>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1] - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<float> *,std::vector<float> *,std::vector<float> *>(&v19, a2, a3, v8);
    v13 = v12;
    v14 = a1[1];
    if (v14 != v12)
    {
      v15 = a1[1];
      do
      {
        v17 = *(v15 - 24);
        v15 -= 24;
        v16 = v17;
        if (v17)
        {
          *(v14 - 16) = v16;
          operator delete(v16);
        }

        v14 = v15;
      }

      while (v15 != v13);
    }

    a1[1] = v13;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<float> *,std::vector<float> *,std::vector<float> *>(&v18, a2, (a2 + v11), v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<float>>,std::vector<float>*,std::vector<float>*,std::vector<float>*>(a1, (a2 + v11), a3, a1[1]);
  }
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<float>>,std::vector<float>*,std::vector<float>*,std::vector<float>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v4, *v6, v6[1], (v6[1] - *v6) >> 2);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<float>>,std::vector<float>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<float>>,std::vector<float>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<float>>,std::vector<float>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<float>>,std::vector<float>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 24);
      v3 -= 24;
      v4 = v5;
      if (v5)
      {
        *(v1 - 16) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

char **std::__copy_impl::operator()[abi:ne200100]<std::vector<float> *,std::vector<float> *,std::vector<float> *>(int a1, char **a2, char **a3, char **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a4, *v5, v5[1], (v5[1] - *v5) >> 2);
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void *std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (v7 - *result < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      v9 = 2 * v7;
      if (2 * v7 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<unsigned char>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (v11 - v8 >= a4)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

uint64_t std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>>::__generic_construct[abi:ne200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1> const&>(a1, a2);
  return a1;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>>::__generic_construct[abi:ne200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1> const&>(uint64_t a1, uint64_t a2)
{
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::SpatialModeler::ReturnSuccess,Phase::SpatialModeler::ReturnError,Phase::SpatialModeler::WaitOnSceneQueries,Phase::SpatialModeler::ClaimOrWaitOnToken,Phase::SpatialModeler::ReleaseToken>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
  v5 = *(a2 + 24);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_284D337E0[v5])(&v6, a2);
    *(a1 + 24) = v5;
  }

  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJNS_9monostateEN5Phase14SpatialModeler13ReturnSuccessENSA_11ReturnErrorENSA_18WaitOnSceneQueriesENSA_18ClaimOrWaitOnTokenENSA_12ReleaseTokenEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISG_LNS0_6_TraitE1EEEEEvRSH_OT_EUlSQ_E_JRKNS0_6__baseILSK_1EJS8_SB_SC_SD_SE_SF_EEEEEEDcSP_DpT0_(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJNS_9monostateEN5Phase14SpatialModeler13ReturnSuccessENSA_11ReturnErrorENSA_18WaitOnSceneQueriesENSA_18ClaimOrWaitOnTokenENSA_12ReleaseTokenEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISG_LNS0_6_TraitE1EEEEEvRSH_OT_EUlSQ_E_JRKNS0_6__baseILSK_1EJS8_SB_SC_SD_SE_SF_EEEEEEDcSP_DpT0_(void **a1, uint64_t *a2)
{
  v2 = *a1;
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return std::vector<Phase::Geometry::SceneQueryBatch *>::__init_with_size[abi:ne200100]<Phase::Geometry::SceneQueryBatch **,Phase::Geometry::SceneQueryBatch **>(v2, *a2, a2[1], (a2[1] - *a2) >> 3);
}

void Phase::SpatialModeler::ClusteringResult::~ClusteringResult(Phase::SpatialModeler::ClusteringResult *this)
{
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  v4 = (this + 64);
  std::vector<Phase::SpatialModeler::DirectionalMetadataOutput<float>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v3 = *(this + 5);
  if (v3)
  {
    *(this + 6) = v3;
    operator delete(v3);
  }

  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(this);
}

uint64_t Phase::details::Alloc<Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState,std::unique_ptr<Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState,std::function<void ()(void *)>> Phase::details::Alloc<Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState,Phase::SpatialModeler::SingleBlockAllocator>(Phase::SpatialModeler::SingleBlockAllocator &,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState,std::function<void ()(void *)>> Phase::details::Alloc<Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState,Phase::SpatialModeler::SingleBlockAllocator>(Phase::SpatialModeler::SingleBlockAllocator &,unsigned long)::{lambda(Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState*)#1} const&>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v19[4] = *MEMORY[0x277D85DE8];
  v5 = Phase::SpatialModeler::SingleBlockAllocator::Alloc(*a1, 137856, **(a1 + 8));
  bzero(v5, 0x21A80uLL);
  v6 = 0;
  *(v5 + 72) = 0xFFFFFFFFLL;
  *(v5 + 80) = 0x80;
  *(v5 + 92) = 0;
  *(v5 + 84) = 0;
  *(v5 + 100) = 0;
  v7 = vneg_f32(0x80000000800000);
  do
  {
    v8 = v5 + v6;
    *(v8 + 136) = 0;
    *(v8 + 128) = 0;
    *(v8 + 112) = 0uLL;
    *(v8 + 140) = v7;
    *(v8 + 148) = -1;
    *(v8 + 152) = 0;
    *(v8 + 176) = 0;
    *(v8 + 160) = 0uLL;
    *(v8 + 180) = -1;
    *(v8 + 188) = 0;
    *(v8 + 192) = 1065353216;
    *(v8 + 208) = 0uLL;
    *(v8 + 224) = 0uLL;
    *(v8 + 240) = 0uLL;
    *(v8 + 256) = 0uLL;
    *(v8 + 272) = 0uLL;
    *(v8 + 288) = 0uLL;
    *(v8 + 304) = 0uLL;
    *(v8 + 320) = 0uLL;
    *(v8 + 336) = 0uLL;
    *(v8 + 352) = 0uLL;
    *(v8 + 368) = 0uLL;
    *(v8 + 384) = 0uLL;
    *(v8 + 400) = 0uLL;
    *(v8 + 416) = 0uLL;
    v6 += 352;
    *(v8 + 432) = 0uLL;
    *(v8 + 448) = 0uLL;
  }

  while (v6 != 90112);
  v9 = 90224;
  v10 = 90252;
  v11 = 90260;
  v12 = 90280;
  v13 = 90288;
  v14 = 22528;
  v15 = vneg_f32(0x80000000800000);
  do
  {
    v16 = v5 + v9;
    *v16 = 0;
    *(v16 + 8) = 0;
    *(v16 + 24) = 0;
    *(v16 + 16) = 0;
    *(v5 + v10) = v15;
    *(v5 + v11) = -1;
    *(v16 + 40) = 0;
    *(v16 + 48) = 0;
    *(v5 + v13) = 0;
    v13 += 88;
    *(v5 + v12) = -1;
    v12 += 88;
    v10 += 88;
    v11 += 88;
    v9 += 88;
    *(v16 + 72) = 0;
    *(v16 + 80) = 0;
    v14 -= 88;
  }

  while (v14);
  Phase::SpatialModeler::RayTracerState::RayTracerState((v5 + 112752));
  *(v5 + 137808) = 0;
  *(v5 + 137832) = 0;
  *(v5 + 137816) = xmmword_23A5549F0;
  *(v5 + 137840) = 0x3F80000000000000;
  v17 = *a2;
  v19[0] = &unk_284D33820;
  v19[1] = v17;
  v19[3] = v19;
  *a3 = v5;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100]((a3 + 1), v19);
  return std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v19);
}

uint64_t Phase::SpatialModeler::SingleBlockAllocator::Alloc(atomic_uchar *this, uint64_t a2, unint64_t a3)
{
  if (a3 >= 0x11)
  {
    std::terminate();
  }

  if (atomic_exchange(this, 1u))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "SingleBlockAllocator::Alloc does not support concurrent allocations.");
  }

  std::vector<unsigned __int128>::resize(this + 1, (a2 + 15) >> 4);
  return *(this + 1);
}

void std::vector<unsigned __int128>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    std::vector<unsigned __int128>::__append(a1, a2 - v2);
  }
}

void std::vector<unsigned __int128>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 4);
    if (v8 >> 60)
    {
      std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::UniqueObjectId>>(a1, v10);
    }

    v11 = (16 * (v7 >> 4));
    bzero(v11, 16 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[16 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

Phase::SpatialModeler::RayTracerState *Phase::SpatialModeler::RayTracerState::RayTracerState(Phase::SpatialModeler::RayTracerState *this)
{
  *(this + 8) = xmmword_23A5554C0;
  v2 = this + 23664;
  v3 = this + 19416;
  *(this + 24) = xmmword_23A5554D0;
  *(this + 40) = xmmword_23A5554E0;
  *(this + 7) = vdup_n_s32(0x3E4CCCCDu);
  *(this + 8) = 0x800000000100;
  *(this + 72) = 0;
  *(this + 19) = 1000593162;
  *(this + 5) = xmmword_23A5554F0;
  *(this + 12) = 1000;
  *(this + 104) = xmmword_23A555500;
  *(this + 15) = 0x4040000040800000;
  *(this + 32) = 1167867904;
  *(this + 33) = 0x1000000;
  *(this + 136) = xmmword_23A555510;
  *(this + 38) = 4;
  *(this + 156) = 1;
  *(this + 20) = 0xC2700000C1D00000;
  *(this + 42) = 16777473;
  *(this + 172) = 0x4E20000003E8;
  *(this + 180) = 1;
  *(this + 23) = 0x430300003DDB22D1;
  *(this + 48) = 256;
  *(this + 27) = 0u;
  *(this + 28) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 116) = 1135312896;
  *(this + 59) = 0;
  *(this + 120) = 1065353216;
  *(this + 4756) = 0;
  *(this + 1188) = 0u;
  *(this + 1190) = 0u;
  *(this + 1191) = 0u;
  *(this + 1192) = 0u;
  *(this + 1193) = 0u;
  *(this + 1194) = 0u;
  *(this + 1195) = 0u;
  *(this + 1196) = 0u;
  *(this + 1197) = 0u;
  *(this + 1198) = 0u;
  *(this + 1199) = 0u;
  *(this + 1200) = 0u;
  *(this + 1201) = 0u;
  *(this + 1202) = 0u;
  *(this + 1203) = 0u;
  *(this + 1204) = 0u;
  *(this + 1205) = 0u;
  *(this + 1206) = 0u;
  *(this + 1207) = 0u;
  *(this + 1208) = 0u;
  *(this + 1209) = 0u;
  bzero(this + 496, 0x4848uLL);
  *(this + 19368) = 0u;
  *(this + 2420) = this + 19368;
  *(this + 19384) = 0u;
  *(this + 19400) = 0u;
  *v3 = 1065353216;
  *(this + 1214) = 0u;
  *(this + 1215) = 0u;
  *(v3 + 10) = 1065353216;
  *(this + 19464) = 0u;
  *(this + 19480) = 0u;
  *(v3 + 20) = 1065353216;
  *(this + 2438) = 0;
  *(v3 + 24) = 0;
  *(this + 1310) = 0u;
  bzero(this + 19520, 0x598uLL);
  *(this + 2619) = this + 20960;
  *(this + 1311) = 0u;
  *(this + 1312) = 0u;
  *(this + 2679) = 0;
  *(v3 + 506) = 0;
  *(v3 + 508) = 0;
  v3[2036] = 0;
  *(this + 2682) = 0;
  *(this + 22164) = 0;
  bzero(this + 21472, 0x2A4uLL);
  *(this + 22488) = 0u;
  *(this + 21032) = 0u;
  *(this + 21048) = 0u;
  *(this + 21064) = 0u;
  *(this + 21080) = 0u;
  *(this + 21096) = 0u;
  *(this + 21112) = 0u;
  *(this + 21128) = 0u;
  *(this + 21144) = 0u;
  *(this + 21160) = 0u;
  *(this + 21176) = 0u;
  *(this + 21192) = 0u;
  *(this + 21208) = 0u;
  *(this + 21224) = 0u;
  *(this + 21240) = 0u;
  *(this + 21256) = 0u;
  *(this + 21272) = 0u;
  *(this + 21288) = 0u;
  *(this + 21304) = 0u;
  *(this + 21320) = 0u;
  *(this + 21336) = 0u;
  *(this + 21352) = 0u;
  *(this + 21368) = 0u;
  *(this + 21384) = 0u;
  *(this + 21400) = 0u;
  *(this + 2677) = 0;
  *(this + 2810) = this + 22488;
  *(this + 1407) = 0u;
  *(this + 2813) = this + 22512;
  v3[3112] = 1;
  *(v3 + 779) = 1097859072;
  v4.i64[0] = 0x101010101010101;
  v4.i64[1] = 0x101010101010101;
  *(this + 22536) = v4;
  *(this + 22552) = v4;
  *(v3 + 788) = 2;
  *(this + 22596) = 1065353216;
  *(this + 1411) = 0u;
  *(this + 22604) = 0;
  *(this + 22612) = xmmword_23A555520;
  *(this + 22628) = 1065353216;
  *(this + 5648) = 0;
  *(this + 22636) = 0;
  *(v3 + 807) = 1065353216;
  v3[3232] = 0;
  *(this + 2838) = 0;
  *(this + 1418) = 0u;
  *(this + 1417) = 0u;
  *(this + 1416) = 0u;
  *(this + 2839) = 0xFFFFFFFFLL;
  *(this + 2840) = 0x3FB999999999999ALL;
  *(v3 + 828) = 0;
  *(this + 22732) = 0;
  *(this + 2843) = 0x3FF0000000000000;
  *(this + 1422) = 0u;
  *(this + 1423) = 0u;
  *(this + 22788) = 1065353216;
  *(this + 22796) = 0;
  *(this + 5696) = 0;
  *(v3 + 847) = 1065353216;
  *(this + 22808) = 0u;
  *(this + 22824) = 0u;
  *(this + 22840) = 0u;
  *(this + 22856) = 0u;
  *(this + 22870) = 0u;
  *(this + 1446) = 0u;
  *(this + 1445) = 0u;
  *(this + 1444) = 0u;
  *(this + 1443) = 0u;
  *(this + 1442) = 0u;
  *(this + 1441) = 0u;
  *(this + 1440) = 0u;
  *(this + 1439) = 0u;
  *(this + 1438) = 0u;
  *(this + 1437) = 0u;
  *(this + 1436) = 0u;
  *(this + 1435) = 0u;
  *(this + 1434) = 0u;
  *(this + 1433) = 0u;
  *(this + 1432) = 0u;
  *(this + 1431) = 0u;
  *(v3 + 934) = 1;
  *(this + 2896) = 0;
  *(v3 + 940) = 1065353216;
  *(this + 2906) = 0;
  *(this + 1452) = 0u;
  *(this + 23272) = 0u;
  *(this + 23304) = 0u;
  *(this + 2911) = 0;
  *(this + 2915) = 0;
  *(this + 23336) = 0u;
  *(this + 23352) = 0u;
  *(this + 23368) = 0u;
  *(this + 23384) = 0u;
  *(this + 23400) = 0u;
  *(this + 23416) = 0u;
  *(this + 1470) = 0u;
  *(this + 1469) = 0u;
  *(this + 1468) = 0u;
  *(this + 1467) = 0u;
  *(this + 1466) = 0u;
  *(this + 1465) = 0u;
  *(this + 1477) = 0u;
  *(this + 1476) = 0u;
  *(this + 1475) = 0u;
  *(this + 1474) = 0u;
  *(this + 1473) = 0u;
  *(this + 1472) = 0u;
  *v2 = 0;
  *(this + 2902) = 0;
  *(this + 1450) = 0u;
  *(this + 1449) = 0u;
  v4.i64[0] = 0x3F0000003FLL;
  v4.i64[1] = 0x3F0000003FLL;
  v5 = vnegq_f32(v4);
  *(v2 + 4) = v5;
  *(v2 + 20) = v5;
  *(v2 + 36) = v5;
  *(v2 + 52) = v5;
  *(v2 + 68) = vneg_f32(0x3F0000003FLL);
  bzero(this + 23744, 0x508uLL);
  *(v2 + 688) = 0;
  *(this + 3131) = 0;
  return this;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRSpatialResult>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRSpatialResult>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRSpatialResult>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRSpatialResult>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRSpatialResult>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRSpatialResult>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRSpatialResult>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRSpatialResult>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRSpatialResult>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRSpatialResult>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRSpatialResult>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRSpatialResult>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[4];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRClusterResult>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRClusterResult>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRClusterResult>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRClusterResult>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRClusterResult>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRClusterResult>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRClusterResult>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRClusterResult>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRClusterResult>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRClusterResult>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRClusterResult>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRClusterResult>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<unsigned long long const,Phase::SpatialModeler::SingleLRClusterResult>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__destroy_at[abi:ne200100]<std::pair<unsigned long long const,Phase::SpatialModeler::SingleLRClusterResult>,0>(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(a1 + 8);
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](v2 + 26);
      std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100]((v2 + 27));
      std::unique_ptr<Phase::PackedSubbandArray<float>,std::function<void ()(void *)>>::reset[abi:ne200100](v2 + 21, 0);
      std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100]((v2 + 22));
      std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](v2 + 15);
      std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100]((v2 + 16));
      std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](v2 + 9);
      std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100]((v2 + 10));
      std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__tree<std::__value_type<unsigned long long,Phase::SpatialModeler::SourceListenerResult>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,Phase::SpatialModeler::SourceListenerResult>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,Phase::SpatialModeler::SourceListenerResult>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned long long,Phase::SpatialModeler::SourceListenerResult>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,Phase::SpatialModeler::SourceListenerResult>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,Phase::SpatialModeler::SourceListenerResult>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned long long,Phase::SpatialModeler::SourceListenerResult>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,Phase::SpatialModeler::SourceListenerResult>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,Phase::SpatialModeler::SourceListenerResult>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<unsigned long long const,Phase::SpatialModeler::SourceListenerResult>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<unsigned long long const,Phase::SpatialModeler::SourceListenerResult>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void Phase::Geometry::Listener::~Listener(Phase::Geometry::Listener *this)
{
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }

  v3 = *(this + 12);
  if (v3)
  {
    *(this + 13) = v3;
    operator delete(v3);
  }
}

void Phase::SpatialModeler::RayTracerState::Results::~Results(Phase::SpatialModeler::RayTracerState::Results *this)
{
  std::__tree<Phase::SpatialCategory>::destroy(this + 1592, *(this + 200));
  v2 = *(this + 196);
  if (v2)
  {
    *(this + 197) = v2;
    operator delete(v2);
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRSpatialResult>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRSpatialResult>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRSpatialResult>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRSpatialResult>>>::~__hash_table(this + 104);
  std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRClusterResult>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRClusterResult>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRClusterResult>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRClusterResult>>>::~__hash_table(this + 64);
  std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>>>::~__hash_table(this + 24);
  std::__tree<std::__value_type<unsigned long long,Phase::SpatialModeler::SourceListenerResult>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,Phase::SpatialModeler::SourceListenerResult>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,Phase::SpatialModeler::SourceListenerResult>>>::destroy(this, *(this + 1));
}

void Phase::SpatialModeler::RayTracerState::State::~State(Phase::SpatialModeler::RayTracerState::State *this)
{
  v2 = *(this + 2310);
  if (v2)
  {
    *(this + 2311) = v2;
    operator delete(v2);
  }

  v3 = *(this + 2307);
  if (v3)
  {
    *(this + 2308) = v3;
    operator delete(v3);
  }

  v4 = *(this + 2304);
  if (v4)
  {
    *(this + 2305) = v4;
    operator delete(v4);
  }
}

void Phase::Geometry::SceneQueryBatch::~SceneQueryBatch(Phase::Geometry::SceneQueryBatch *this)
{
  std::__function::__value_func<void ()(Phase::Geometry::SceneQueryBatch *)>::~__value_func[abi:ne200100](this + 24);
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

uint64_t std::__function::__func<std::unique_ptr<Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState,std::function<void ()(void *)>> Phase::details::Alloc<Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState,std::unique_ptr<Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState,std::function<void ()(void *)>> Phase::details::Alloc<Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState,Phase::SpatialModeler::SingleBlockAllocator>(Phase::SpatialModeler::SingleBlockAllocator &,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState,std::function<void ()(void *)>> Phase::details::Alloc<Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState,Phase::SpatialModeler::SingleBlockAllocator>(Phase::SpatialModeler::SingleBlockAllocator &,unsigned long)::{lambda(Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState*)#1} const&>(Phase::SpatialModeler::SingleBlockAllocator&&,std::unique_ptr<Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState,std::function<void ()(void *)>> Phase::details::Alloc<Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState,Phase::SpatialModeler::SingleBlockAllocator>(Phase::SpatialModeler::SingleBlockAllocator &,unsigned long)::{lambda(Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState*)#1} const&)::{lambda(void *)#1},std::allocator<std::unique_ptr<Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState,std::function<void ()(void *)>> Phase::details::Alloc<Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState,std::unique_ptr<Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState,std::function<void ()(void *)>> Phase::details::Alloc<Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState,Phase::SpatialModeler::SingleBlockAllocator>(Phase::SpatialModeler::SingleBlockAllocator &,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState,std::function<void ()(void *)>> Phase::details::Alloc<Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState,Phase::SpatialModeler::SingleBlockAllocator>(Phase::SpatialModeler::SingleBlockAllocator &,unsigned long)::{lambda(Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState*)#1} const&>(Phase::SpatialModeler::SingleBlockAllocator&&,std::unique_ptr<Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState,std::function<void ()(void *)>> Phase::details::Alloc<Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState,Phase::SpatialModeler::SingleBlockAllocator>(Phase::SpatialModeler::SingleBlockAllocator &,unsigned long)::{lambda(Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState*)#1} const&)::{lambda(void *)#1}>,void ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D33820;
  a2[1] = v2;
  return result;
}

void std::__function::__func<std::unique_ptr<Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState,std::function<void ()(void *)>> Phase::details::Alloc<Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState,std::unique_ptr<Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState,std::function<void ()(void *)>> Phase::details::Alloc<Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState,Phase::SpatialModeler::SingleBlockAllocator>(Phase::SpatialModeler::SingleBlockAllocator &,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState,std::function<void ()(void *)>> Phase::details::Alloc<Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState,Phase::SpatialModeler::SingleBlockAllocator>(Phase::SpatialModeler::SingleBlockAllocator &,unsigned long)::{lambda(Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState*)#1} const&>(Phase::SpatialModeler::SingleBlockAllocator&&,std::unique_ptr<Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState,std::function<void ()(void *)>> Phase::details::Alloc<Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState,Phase::SpatialModeler::SingleBlockAllocator>(Phase::SpatialModeler::SingleBlockAllocator &,unsigned long)::{lambda(Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState*)#1} const&)::{lambda(void *)#1},std::allocator<std::unique_ptr<Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState,std::function<void ()(void *)>> Phase::details::Alloc<Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState,std::unique_ptr<Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState,std::function<void ()(void *)>> Phase::details::Alloc<Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState,Phase::SpatialModeler::SingleBlockAllocator>(Phase::SpatialModeler::SingleBlockAllocator &,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState,std::function<void ()(void *)>> Phase::details::Alloc<Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState,Phase::SpatialModeler::SingleBlockAllocator>(Phase::SpatialModeler::SingleBlockAllocator &,unsigned long)::{lambda(Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState*)#1} const&>(Phase::SpatialModeler::SingleBlockAllocator&&,std::unique_ptr<Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState,std::function<void ()(void *)>> Phase::details::Alloc<Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState,Phase::SpatialModeler::SingleBlockAllocator>(Phase::SpatialModeler::SingleBlockAllocator &,unsigned long)::{lambda(Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState*)#1} const&)::{lambda(void *)#1}>,void ()(void *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  Phase::SpatialModeler::RayTracerState::~RayTracerState((*a2 + 112752));
  std::__function::__value_func<void ()(Phase::Geometry::SceneQueryBatch *)>::~__value_func[abi:ne200100](v3 + 24);
  v4 = *(v3 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  atomic_store(0, *(a1 + 8));
}

uint64_t *std::unique_ptr<Phase::SpatialModeler::RoomSimulationImpl::ClusterQueryState,std::function<void ()(void *)>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return std::function<void ()(void *)>::operator()((result + 1), v3);
  }

  return result;
}

uint64_t Phase::details::AllocArray<Phase::SpatialModeler::RenderGroup,std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::RenderGroup>(unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::RenderGroup>(unsigned long,unsigned long)::{lambda(Phase::SpatialModeler::RenderGroup*)#1} const&>(Phase::Logger *a1, uint64_t a2, void *a3, std::align_val_t *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v12 = **(Phase::Logger::GetInstance(a1) + 128);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v14 = 136315394;
      *&v14[4] = "ManagedPtr.hpp";
      v15 = 1024;
      v16 = 229;
      _os_log_impl(&dword_23A302000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [inCount == 0 is true]: Attempting to allocate an array of 0 elements", v14, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Attempting to allocate an array of 0 elements");
  }

  v6 = operator new(336 * *a3, *a4);
  v7 = &v6[336 * a2];
  v8 = v6;
  do
  {
    v9 = 0;
    *(v8 + 8) = 0;
    *v8 = 0u;
    *(v8 + 1) = 0u;
    *(v8 + 36) = 1065353216;
    *(v8 + 44) = 0;
    *(v8 + 13) = 1065353216;
    do
    {
      v10 = &v8[v9];
      *(v10 + 14) = 0;
      *(v10 + 8) = 0;
      v9 += 16;
    }

    while (v9 != 128);
    *(v8 + 23) = 0;
    memset(v14, 0, sizeof(v14));
    Phase::Subbands<float>::Subbands((v8 + 192), v14, 3);
    v8[320] = 0;
    v8 += 336;
  }

  while (v8 != v7);
  *v14 = &unk_284D33868;
  v14[8] = 0;
  v17 = v14;
  *a1 = v6;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](a1 + 8, v14);
  return std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v14);
}

uint64_t _ZNKSt3__110__function6__funcIZN5Phase7details10AllocArrayINS2_14SpatialModeler11RenderGroupERKZNS3_10AllocArrayIS6_EENS_10unique_ptrIA_T_NS_8functionIFvPvEEEEEmmEUlvE_RKZNS7_IS6_EESF_mmEUlPS9_E_EESF_mOT0_OT1_EUlSC_E_NS_9allocatorISR_EESD_E7__cloneEPNS0_6__baseISD_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_284D33868;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t Phase::details::AllocArray<BOOL,std::unique_ptr<BOOL [],std::function<void ()(void *)>> Phase::details::AllocArray<BOOL>(unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<BOOL [],std::function<void ()(void *)>> Phase::details::AllocArray<BOOL>(unsigned long,unsigned long)::{lambda(BOOL*)#1} const&>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v6 = **(Phase::Logger::GetInstance(0) + 128);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 136315394;
      *&v8[4] = "ManagedPtr.hpp";
      v9 = 1024;
      v10 = 229;
      _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [inCount == 0 is true]: Attempting to allocate an array of 0 elements", v8, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Attempting to allocate an array of 0 elements");
  }

  v4 = operator new(**a2, **(a2 + 8));
  *v8 = &unk_284D33940;
  v8[8] = 0;
  v11 = v8;
  *a3 = v4;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100]((a3 + 1), v8);
  return std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v8);
}

uint64_t _ZNKSt3__110__function6__funcIZN5Phase7details10AllocArrayIbRKZNS3_10AllocArrayIbEENS_10unique_ptrIA_T_NS_8functionIFvPvEEEEEmmEUlvE_RKZNS5_IbEESD_mmEUlPS7_E_EESD_mOT0_OT1_EUlSA_E_NS_9allocatorISP_EESB_E7__cloneEPNS0_6__baseISB_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_284D33940;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingOutput,std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingOutput>(unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingOutput>(unsigned long,unsigned long)::{lambda(Phase::SpatialModeler::SubmixRoutingOutput*)#1} const&>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v8 = **(Phase::Logger::GetInstance(0) + 128);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 136315394;
      *&v10[4] = "ManagedPtr.hpp";
      v11 = 1024;
      v12 = 229;
      _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [inCount == 0 is true]: Attempting to allocate an array of 0 elements", v10, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Attempting to allocate an array of 0 elements");
  }

  v5 = operator new(16 * **a2, **(a2 + 8));
  v6 = v5;
  do
  {
    *v6 = -1;
    v6[1] = 0;
    v6 += 2;
  }

  while (v6 != &v5[2 * a1]);
  *v10 = &unk_284D338B0;
  v10[8] = 0;
  v13 = v10;
  *a3 = v5;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100]((a3 + 1), v10);
  return std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v10);
}

uint64_t _ZNKSt3__110__function6__funcIZN5Phase7details10AllocArrayINS2_14SpatialModeler19SubmixRoutingOutputERKZNS3_10AllocArrayIS6_EENS_10unique_ptrIA_T_NS_8functionIFvPvEEEEEmmEUlvE_RKZNS7_IS6_EESF_mmEUlPS9_E_EESF_mOT0_OT1_EUlSC_E_NS_9allocatorISR_EESD_E7__cloneEPNS0_6__baseISD_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_284D338B0;
  *(a2 + 8) = *(result + 8);
  return result;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
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

void *std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
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

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>,void *>>>::operator()[abi:ne200100](uint64_t a1, uint64_t *__p)
{
  if (*(a1 + 8) == 1)
  {
    std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](__p + 26);
    std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100]((__p + 27));
    std::unique_ptr<Phase::PackedSubbandArray<float>,std::function<void ()(void *)>>::reset[abi:ne200100](__p + 21, 0);
    std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100]((__p + 22));
    std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](__p + 15);
    std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100]((__p + 16));
    std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](__p + 9);
    std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100]((__p + 10));
    std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table((__p + 3));
  }

  if (__p)
  {

    operator delete(__p);
  }
}

void std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>,void *> *>>(void *a1, uint64_t *a2, uint64_t *a3)
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
        *(v8 + 7) = *(a2 + 7);
        *(v8 + 8) = *(a2 + 8);
        *(v8 + 9) = *(a2 + 9);
        v10 = *v8;
        v8[1] = v9;
        inserted = std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>>>::__node_insert_multi_prepare(a1, v9, v8 + 2);
        std::__hash_table<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,std::__unordered_map_hasher<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,true>,std::__unordered_map_equal<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,true>,std::allocator<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>>>::__node_insert_multi_perform(a1, v8, inserted);
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
    std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>>>::__emplace_multi<std::pair<unsigned long long const,Phase::SpatialModeler::ClusteredSourceInfo> const&>();
  }
}

void sub_23A3D2560(void *a1)
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

void *std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, void *a3)
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

    std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>>>::__rehash<false>(a1, v13);
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

void std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>>>::__rehash<false>(uint64_t a1, size_t __n)
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

      std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>>>::__do_rehash<false>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>>>::__do_rehash<false>(uint64_t a1, unint64_t a2)
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

uint64_t Phase::AllocPackedSubbandArray<float>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void **a3@<X8>)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v8[0] = &unk_284D338F8;
  v8[3] = v8;
  *a3 = operator new(4 * a1 * a2 + 16, 8uLL);
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100]((a3 + 1), v8);
  result = std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v8);
  v7 = *a3;
  *v7 = a1;
  v7[1] = a2;
  return result;
}

void *std::vector<unsigned long>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_23A3D2B98(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,void Phase::SpatialModeler::SortMetadataByDelay<float>(Phase::SpatialModeler::DirectionalMetadataOutput<float> &)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *,false>(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t a4, char a5)
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
    v12 = a2 - v9;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v66 = *(a2 - 1);
        v67 = *v9;
        if (*(*(*a3 + 56) + 4 * v66) < *(*(*a3 + 56) + 4 * *v9))
        {
          *v9 = v66;
          *(a2 - 1) = v67;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      v68 = v9 + 1;
      v69 = v9[1];
      v70 = v9 + 2;
      v71 = v9[2];
      v72 = *(*a3 + 56);
      v73 = *(v72 + 4 * v69);
      v74 = *v9;
      v75 = *(v72 + 4 * *v9);
      v76 = *(v72 + 4 * v71);
      if (v73 >= v75)
      {
        if (v76 >= v73)
        {
          goto LABEL_101;
        }

        *v68 = v71;
        *v70 = v69;
        v77 = v9;
        v78 = (v9 + 1);
        result = v69;
        if (v76 < v75)
        {
          goto LABEL_97;
        }
      }

      else
      {
        v77 = v9;
        v78 = (v9 + 2);
        result = *v9;
        if (v76 >= v73)
        {
          *v9 = v69;
          v9[1] = v74;
          v77 = v9 + 1;
          v78 = (v9 + 2);
          result = v74;
          if (v76 >= v75)
          {
LABEL_101:
            v69 = v71;
            goto LABEL_102;
          }
        }

LABEL_97:
        *v77 = v71;
        *v78 = v74;
        v69 = result;
      }

LABEL_102:
      v81 = *(a2 - 1);
      if (*(v72 + 4 * v81) < *(v72 + 4 * v69))
      {
        *v70 = v81;
        *(a2 - 1) = v69;
        v82 = *v70;
        v83 = *v68;
        v84 = *(v72 + 4 * v82);
        if (v84 < *(v72 + 4 * v83))
        {
          v9[1] = v82;
          v9[2] = v83;
          v85 = *v9;
          if (v84 < *(v72 + 4 * *v9))
          {
            *v9 = v82;
            v9[1] = v85;
          }
        }
      }

      return result;
    }

    if (v12 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,void Phase::SpatialModeler::SortMetadataByDelay<float>(Phase::SpatialModeler::DirectionalMetadataOutput<float> &)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *,0>(v9, v9 + 1, v9 + 2, v9 + 3, a2 - 1, a3);
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,void Phase::SpatialModeler::SortMetadataByDelay<float>(Phase::SpatialModeler::DirectionalMetadataOutput<float> &)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(v9, a2, a3);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,void Phase::SpatialModeler::SortMetadataByDelay<float>(Phase::SpatialModeler::DirectionalMetadataOutput<float> &)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(v9, a2, a3);
      }
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,void Phase::SpatialModeler::SortMetadataByDelay<float>(Phase::SpatialModeler::DirectionalMetadataOutput<float> &)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *,unsigned long *>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = &v9[v12 >> 1];
    v14 = v13;
    v15 = *(*a3 + 56);
    v16 = *(a2 - 1);
    v17 = *(v15 + 4 * v16);
    if (v12 >= 0x81)
    {
      v18 = *v13;
      v19 = *v9;
      v20 = *(v15 + 4 * *v13);
      v21 = *(v15 + 4 * *v9);
      if (v20 >= v21)
      {
        if (v17 < v20)
        {
          *v13 = v16;
          *(a2 - 1) = v18;
          v26 = *v9;
          if (*(v15 + 4 * *v13) < *(v15 + 4 * *v9))
          {
            *v9 = *v13;
            *v13 = v26;
          }
        }
      }

      else
      {
        if (v17 < v20)
        {
          *v9 = v16;
          goto LABEL_29;
        }

        *v9 = v18;
        *v13 = v19;
        v28 = *(a2 - 1);
        if (*(v15 + 4 * v28) < v21)
        {
          *v13 = v28;
LABEL_29:
          *(a2 - 1) = v19;
        }
      }

      v29 = v13 - 1;
      v30 = *(v13 - 1);
      v31 = v9[1];
      v32 = *(v15 + 4 * v30);
      v33 = *(v15 + 4 * v31);
      v34 = *(a2 - 2);
      v35 = *(v15 + 4 * v34);
      if (v32 >= v33)
      {
        if (v35 < v32)
        {
          *v29 = v34;
          *(a2 - 2) = v30;
          v36 = v9[1];
          if (*(v15 + 4 * *v29) < *(v15 + 4 * v36))
          {
            v9[1] = *v29;
            *v29 = v36;
          }
        }
      }

      else
      {
        if (v35 < v32)
        {
          v9[1] = v34;
          goto LABEL_43;
        }

        v9[1] = v30;
        *v29 = v31;
        v38 = *(a2 - 2);
        if (*(v15 + 4 * v38) < v33)
        {
          *v29 = v38;
LABEL_43:
          *(a2 - 2) = v31;
        }
      }

      v41 = v13[1];
      v39 = v13 + 1;
      v40 = v41;
      v42 = v9[2];
      v43 = *(v15 + 4 * v41);
      v44 = *(v15 + 4 * v42);
      v45 = *(a2 - 3);
      v46 = *(v15 + 4 * v45);
      if (v43 >= v44)
      {
        if (v46 < v43)
        {
          *v39 = v45;
          *(a2 - 3) = v40;
          v47 = v9[2];
          if (*(v15 + 4 * *v39) < *(v15 + 4 * v47))
          {
            v9[2] = *v39;
            *v39 = v47;
          }
        }
      }

      else
      {
        if (v46 < v43)
        {
          v9[2] = v45;
          goto LABEL_52;
        }

        v9[2] = v40;
        *v39 = v42;
        v48 = *(a2 - 3);
        if (*(v15 + 4 * v48) < v44)
        {
          *v39 = v48;
LABEL_52:
          *(a2 - 3) = v42;
        }
      }

      v49 = *v14;
      v50 = *v29;
      v51 = *(v15 + 4 * *v14);
      v52 = *(v15 + 4 * *v29);
      v53 = *v39;
      v54 = *(v15 + 4 * *v39);
      if (v51 >= v52)
      {
        if (v54 < v51)
        {
          *v14 = v53;
          *v39 = v49;
          v39 = v14;
          v49 = v50;
          if (v54 < v52)
          {
            goto LABEL_59;
          }

          v49 = v53;
        }
      }

      else
      {
        if (v54 >= v51)
        {
          *v29 = v49;
          *v14 = v50;
          v29 = v14;
          v49 = v53;
          if (v54 >= v52)
          {
            v49 = v50;
            goto LABEL_60;
          }
        }

LABEL_59:
        *v29 = v53;
        *v39 = v50;
      }

LABEL_60:
      v55 = *v9;
      *v9 = v49;
      *v14 = v55;
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    v22 = *v9;
    v23 = *v13;
    v24 = *(v15 + 4 * *v9);
    v25 = *(v15 + 4 * *v14);
    if (v24 < v25)
    {
      if (v17 < v24)
      {
        *v14 = v16;
        goto LABEL_38;
      }

      *v14 = v22;
      *v9 = v23;
      v37 = *(a2 - 1);
      if (*(v15 + 4 * v37) < v25)
      {
        *v9 = v37;
LABEL_38:
        *(a2 - 1) = v23;
      }

LABEL_39:
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v17 >= v24)
    {
      goto LABEL_39;
    }

    *v9 = v16;
    *(a2 - 1) = v22;
    v27 = *v14;
    if (*(v15 + 4 * *v9) >= *(v15 + 4 * *v14))
    {
      goto LABEL_39;
    }

    *v14 = *v9;
    *v9 = v27;
    if (a5)
    {
      goto LABEL_62;
    }

LABEL_61:
    if (*(v15 + 4 * *(v9 - 1)) >= *(v15 + 4 * *v9))
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,unsigned long *,void Phase::SpatialModeler::SortMetadataByDelay<float>(Phase::SpatialModeler::DirectionalMetadataOutput<float> &)::{lambda(unsigned long,unsigned long)#1} &>(v9, a2, a3);
      v9 = result;
      goto LABEL_69;
    }

LABEL_62:
    v56 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,unsigned long *,void Phase::SpatialModeler::SortMetadataByDelay<float>(Phase::SpatialModeler::DirectionalMetadataOutput<float> &)::{lambda(unsigned long,unsigned long)#1} &>(v9, a2, a3);
    if ((v57 & 1) == 0)
    {
      goto LABEL_67;
    }

    v58 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,void Phase::SpatialModeler::SortMetadataByDelay<float>(Phase::SpatialModeler::DirectionalMetadataOutput<float> &)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(v9, v56, a3);
    v9 = v56 + 1;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,void Phase::SpatialModeler::SortMetadataByDelay<float>(Phase::SpatialModeler::DirectionalMetadataOutput<float> &)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(v56 + 1, a2, a3);
    if (result)
    {
      a4 = -v11;
      a2 = v56;
      if (v58)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v58)
    {
LABEL_67:
      result = std::__introsort<std::_ClassicAlgPolicy,void Phase::SpatialModeler::SortMetadataByDelay<float>(Phase::SpatialModeler::DirectionalMetadataOutput<float> &)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *,false>(v8, v56, a3, -v11, a5 & 1);
      v9 = v56 + 1;
LABEL_69:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v59 = *v9;
  v60 = v9[1];
  v61 = *(*a3 + 56);
  v62 = *(v61 + 4 * v60);
  v63 = *(v61 + 4 * *v9);
  v64 = *(a2 - 1);
  v65 = *(v61 + 4 * v64);
  if (v62 >= v63)
  {
    if (v65 < v62)
    {
      v9[1] = v64;
      *(a2 - 1) = v60;
      v80 = *v9;
      v79 = v9[1];
      if (*(v61 + 4 * v79) < *(v61 + 4 * *v9))
      {
        *v9 = v79;
        v9[1] = v80;
      }
    }
  }

  else
  {
    if (v65 >= v62)
    {
      *v9 = v60;
      v9[1] = v59;
      v86 = *(a2 - 1);
      if (*(v61 + 4 * v86) >= v63)
      {
        return result;
      }

      v9[1] = v86;
    }

    else
    {
      *v9 = v64;
    }

    *(a2 - 1) = v59;
  }

  return result;
}

uint64_t *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,void Phase::SpatialModeler::SortMetadataByDelay<float>(Phase::SpatialModeler::DirectionalMetadataOutput<float> &)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v6 = *a2;
  v7 = *result;
  v8 = *(*a6 + 56);
  v9 = *(v8 + 4 * *a2);
  v10 = *(v8 + 4 * *result);
  v11 = *a3;
  v12 = *(v8 + 4 * *a3);
  if (v9 >= v10)
  {
    if (v12 >= v9)
    {
      v6 = *a3;
    }

    else
    {
      *a2 = v11;
      *a3 = v6;
      v13 = *result;
      if (*(v8 + 4 * *a2) < *(v8 + 4 * *result))
      {
        *result = *a2;
        *a2 = v13;
        v6 = *a3;
      }
    }
  }

  else
  {
    if (v12 < v9)
    {
      *result = v11;
LABEL_9:
      *a3 = v7;
      v6 = v7;
      goto LABEL_11;
    }

    *result = v6;
    *a2 = v7;
    v6 = *a3;
    if (*(v8 + 4 * *a3) < v10)
    {
      *a2 = v6;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (*(v8 + 4 * *a4) < *(v8 + 4 * v6))
  {
    *a3 = *a4;
    *a4 = v6;
    v14 = *a2;
    if (*(v8 + 4 * *a3) < *(v8 + 4 * *a2))
    {
      *a2 = *a3;
      *a3 = v14;
      v15 = *result;
      if (*(v8 + 4 * *a2) < *(v8 + 4 * *result))
      {
        *result = *a2;
        *a2 = v15;
      }
    }
  }

  v16 = *a4;
  if (*(v8 + 4 * *a5) < *(v8 + 4 * *a4))
  {
    *a4 = *a5;
    *a5 = v16;
    v17 = *a3;
    if (*(v8 + 4 * *a4) < *(v8 + 4 * *a3))
    {
      *a3 = *a4;
      *a4 = v17;
      v18 = *a2;
      if (*(v8 + 4 * *a3) < *(v8 + 4 * *a2))
      {
        *a2 = *a3;
        *a3 = v18;
        v19 = *result;
        if (*(v8 + 4 * *a2) < *(v8 + 4 * *result))
        {
          *result = *a2;
          *a2 = v19;
        }
      }
    }
  }

  return result;
}

uint64_t *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,void Phase::SpatialModeler::SortMetadataByDelay<float>(Phase::SpatialModeler::DirectionalMetadataOutput<float> &)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(uint64_t *result, uint64_t *a2, uint64_t a3)
{
  if (result != a2)
  {
    v3 = result + 1;
    if (result + 1 != a2)
    {
      v4 = *(*a3 + 56);
      v5 = 8;
      v6 = result;
      do
      {
        v8 = *v6;
        v7 = v6[1];
        v6 = v3;
        v9 = *(v4 + 4 * v7);
        if (v9 < *(v4 + 4 * v8))
        {
          v10 = v5;
          while (1)
          {
            *(result + v10) = v8;
            v11 = v10 - 8;
            if (v10 == 8)
            {
              break;
            }

            v8 = *(result + v10 - 16);
            v10 -= 8;
            if (v9 >= *(v4 + 4 * v8))
            {
              v12 = (result + v11);
              goto LABEL_10;
            }
          }

          v12 = result;
LABEL_10:
          *v12 = v7;
        }

        v3 = v6 + 1;
        v5 += 8;
      }

      while (v6 + 1 != a2);
    }
  }

  return result;
}

uint64_t *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,void Phase::SpatialModeler::SortMetadataByDelay<float>(Phase::SpatialModeler::DirectionalMetadataOutput<float> &)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(uint64_t *result, uint64_t *a2, uint64_t a3)
{
  if (result != a2)
  {
    v3 = result + 1;
    if (result + 1 != a2)
    {
      v4 = *(*a3 + 56);
      do
      {
        v6 = *result;
        v5 = result[1];
        result = v3;
        v7 = *(v4 + 4 * v5);
        if (v7 < *(v4 + 4 * v6))
        {
          do
          {
            *v3 = v6;
            v6 = *(v3 - 2);
            --v3;
          }

          while (v7 < *(v4 + 4 * v6));
          *v3 = v5;
        }

        v3 = result + 1;
      }

      while (result + 1 != a2);
    }
  }

  return result;
}

uint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,unsigned long *,void Phase::SpatialModeler::SortMetadataByDelay<float>(Phase::SpatialModeler::DirectionalMetadataOutput<float> &)::{lambda(unsigned long,unsigned long)#1} &>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a3 + 56);
  v5 = *(v4 + 4 * *a1);
  if (v5 >= *(v4 + 4 * *(a2 - 1)))
  {
    v8 = a1 + 1;
    do
    {
      v6 = v8;
      if (v8 >= a2)
      {
        break;
      }

      ++v8;
    }

    while (v5 >= *(v4 + 4 * *v6));
  }

  else
  {
    v6 = a1;
    do
    {
      v7 = v6[1];
      ++v6;
    }

    while (v5 >= *(v4 + 4 * v7));
  }

  if (v6 < a2)
  {
    do
    {
      v9 = *--a2;
    }

    while (v5 < *(v4 + 4 * v9));
  }

  if (v6 < a2)
  {
    v10 = *v6;
    v11 = *a2;
    do
    {
      *v6 = v11;
      *a2 = v10;
      do
      {
        v12 = v6[1];
        ++v6;
        v10 = v12;
      }

      while (v5 >= *(v4 + 4 * v12));
      do
      {
        v13 = *--a2;
        v11 = v13;
      }

      while (v5 < *(v4 + 4 * v13));
    }

    while (v6 < a2);
  }

  if (v6 - 1 != a1)
  {
    *a1 = *(v6 - 1);
  }

  *(v6 - 1) = v3;
  return v6;
}

uint64_t *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,unsigned long *,void Phase::SpatialModeler::SortMetadataByDelay<float>(Phase::SpatialModeler::DirectionalMetadataOutput<float> &)::{lambda(unsigned long,unsigned long)#1} &>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = 0;
  v4 = *a1;
  v5 = *(*a3 + 56);
  v6 = *(v5 + 4 * *a1);
  do
  {
    v7 = a1[++v3];
  }

  while (*(v5 + 4 * v7) < v6);
  v8 = &a1[v3];
  v9 = &a1[v3 - 1];
  if (v3 == 1)
  {
    do
    {
      if (v8 >= a2)
      {
        break;
      }

      v11 = *--a2;
    }

    while (*(v5 + 4 * v11) >= v6);
  }

  else
  {
    do
    {
      v10 = *--a2;
    }

    while (*(v5 + 4 * v10) >= v6);
  }

  if (v8 < a2)
  {
    v12 = *a2;
    v13 = &a1[v3];
    v14 = a2;
    do
    {
      *v13 = v12;
      *v14 = v7;
      do
      {
        v15 = v13[1];
        ++v13;
        v7 = v15;
      }

      while (*(v5 + 4 * v15) < v6);
      do
      {
        v16 = *--v14;
        v12 = v16;
      }

      while (*(v5 + 4 * v16) >= v6);
    }

    while (v13 < v14);
    v9 = v13 - 1;
  }

  if (v9 != a1)
  {
    *a1 = *v9;
  }

  *v9 = v4;
  return v9;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,void Phase::SpatialModeler::SortMetadataByDelay<float>(Phase::SpatialModeler::DirectionalMetadataOutput<float> &)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = *a1;
      v7 = a1[1];
      v8 = *(*a3 + 56);
      v9 = *(v8 + 4 * v7);
      v10 = *(v8 + 4 * *a1);
      v11 = *(a2 - 1);
      v12 = *(v8 + 4 * v11);
      if (v9 >= v10)
      {
        if (v12 < v9)
        {
          a1[1] = v11;
          *(a2 - 1) = v7;
          v36 = *a1;
          v35 = a1[1];
          if (*(v8 + 4 * v35) < *(v8 + 4 * *a1))
          {
            *a1 = v35;
            a1[1] = v36;
          }
        }

        return 1;
      }

      if (v12 >= v9)
      {
        *a1 = v7;
        a1[1] = v6;
        v51 = *(a2 - 1);
        if (*(v8 + 4 * v51) >= v10)
        {
          return 1;
        }

        a1[1] = v51;
      }

      else
      {
        *a1 = v11;
      }

      *(a2 - 1) = v6;
      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,void Phase::SpatialModeler::SortMetadataByDelay<float>(Phase::SpatialModeler::DirectionalMetadataOutput<float> &)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
    }

    v23 = a1 + 1;
    v24 = a1[1];
    v25 = a1 + 2;
    v26 = a1[2];
    v27 = *(*a3 + 56);
    v28 = *(v27 + 4 * v24);
    v29 = *a1;
    v30 = *(v27 + 4 * *a1);
    v31 = *(v27 + 4 * v26);
    if (v28 >= v30)
    {
      if (v31 >= v28)
      {
LABEL_41:
        v24 = v26;
        goto LABEL_42;
      }

      *v23 = v26;
      *v25 = v24;
      v32 = a1;
      v33 = a1 + 1;
      v34 = v24;
      if (v31 >= v30)
      {
LABEL_42:
        v46 = *(a2 - 1);
        if (*(v27 + 4 * v46) < *(v27 + 4 * v24))
        {
          *v25 = v46;
          *(a2 - 1) = v24;
          v47 = *v25;
          v48 = *v23;
          v49 = *(v27 + 4 * v47);
          if (v49 < *(v27 + 4 * v48))
          {
            a1[1] = v47;
            a1[2] = v48;
            v50 = *a1;
            if (v49 < *(v27 + 4 * *a1))
            {
              *a1 = v47;
              a1[1] = v50;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v32 = a1;
      v33 = a1 + 2;
      v34 = *a1;
      if (v31 >= v28)
      {
        *a1 = v24;
        a1[1] = v29;
        v32 = a1 + 1;
        v33 = a1 + 2;
        v34 = v29;
        if (v31 >= v30)
        {
          goto LABEL_41;
        }
      }
    }

    *v32 = v26;
    *v33 = v29;
    v24 = v34;
    goto LABEL_42;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v4 = *(a2 - 1);
    v5 = *a1;
    if (*(*(*a3 + 56) + 4 * v4) < *(*(*a3 + 56) + 4 * *a1))
    {
      *a1 = v4;
      *(a2 - 1) = v5;
    }

    return 1;
  }

LABEL_13:
  v14 = a1 + 2;
  v13 = a1[2];
  v15 = a1[1];
  v16 = *(*a3 + 56);
  v17 = *(v16 + 4 * v15);
  v18 = *a1;
  v19 = *(v16 + 4 * *a1);
  v20 = *(v16 + 4 * v13);
  if (v17 < v19)
  {
    v21 = a1;
    v22 = a1 + 2;
    if (v20 >= v17)
    {
      *a1 = v15;
      a1[1] = v18;
      v21 = a1 + 1;
      v22 = a1 + 2;
      if (v20 >= v19)
      {
        goto LABEL_27;
      }
    }

LABEL_26:
    *v21 = v13;
    *v22 = v18;
    goto LABEL_27;
  }

  if (v20 < v17)
  {
    a1[1] = v13;
    *v14 = v15;
    v21 = a1;
    v22 = a1 + 1;
    if (v20 < v19)
    {
      goto LABEL_26;
    }
  }

LABEL_27:
  v37 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v38 = 0;
  for (i = 24; ; i += 8)
  {
    v40 = *v37;
    v41 = *v14;
    v42 = *(v16 + 4 * *v37);
    if (v42 < *(v16 + 4 * v41))
    {
      v43 = i;
      while (1)
      {
        *(a1 + v43) = v41;
        v44 = v43 - 8;
        if (v43 == 8)
        {
          break;
        }

        v41 = *(a1 + v43 - 16);
        v43 -= 8;
        if (v42 >= *(v16 + 4 * v41))
        {
          v45 = (a1 + v44);
          goto LABEL_35;
        }
      }

      v45 = a1;
LABEL_35:
      *v45 = v40;
      if (++v38 == 8)
      {
        break;
      }
    }

    v14 = v37++;
    if (v37 == a2)
    {
      return 1;
    }
  }

  return v37 + 1 == a2;
}

uint64_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,void Phase::SpatialModeler::SortMetadataByDelay<float>(Phase::SpatialModeler::DirectionalMetadataOutput<float> &)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *,unsigned long *>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,void Phase::SpatialModeler::SortMetadataByDelay<float>(Phase::SpatialModeler::DirectionalMetadataOutput<float> &)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = *v12;
        if (*(*(*a4 + 56) + 4 * *v12) < *(*(*a4 + 56) + 4 * *a1))
        {
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,void Phase::SpatialModeler::SortMetadataByDelay<float>(Phase::SpatialModeler::DirectionalMetadataOutput<float> &)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v14 = a2 - 1;
      do
      {
        v15 = *a1;
        v16 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,void Phase::SpatialModeler::SortMetadataByDelay<float>(Phase::SpatialModeler::DirectionalMetadataOutput<float> &)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(a1, a4, v8);
        if (v14 == v16)
        {
          *v16 = v15;
        }

        else
        {
          *v16 = *v14;
          *v14 = v15;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,void Phase::SpatialModeler::SortMetadataByDelay<float>(Phase::SpatialModeler::DirectionalMetadataOutput<float> &)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(a1, (v16 + 1), a4, v16 + 1 - a1);
        }

        --v14;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,void Phase::SpatialModeler::SortMetadataByDelay<float>(Phase::SpatialModeler::DirectionalMetadataOutput<float> &)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 3)
    {
      v6 = v4 >> 2;
      v7 = (v4 >> 2) + 1;
      v8 = (result + 8 * v7);
      v9 = v6 + 2;
      v10 = *a2;
      if (v9 >= a3)
      {
        v11 = *(v10 + 56);
      }

      else
      {
        v11 = *(v10 + 56);
        if (*(v11 + 4 * *v8) < *(v11 + 4 * v8[1]))
        {
          ++v8;
          v7 = v9;
        }
      }

      v12 = *v8;
      v13 = *a4;
      v14 = *(v11 + 4 * *a4);
      if (*(v11 + 4 * *v8) >= v14)
      {
        do
        {
          v15 = v8;
          *a4 = v12;
          if (v5 < v7)
          {
            break;
          }

          v16 = 2 * v7;
          v7 = (2 * v7) | 1;
          v8 = (result + 8 * v7);
          v17 = v16 + 2;
          if (v17 < a3 && *(v11 + 4 * *v8) < *(v11 + 4 * v8[1]))
          {
            ++v8;
            v7 = v17;
          }

          v12 = *v8;
          a4 = v15;
        }

        while (*(v11 + 4 * *v8) >= v14);
        *v15 = v13;
      }
    }
  }

  return result;
}

void *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,void Phase::SpatialModeler::SortMetadataByDelay<float>(Phase::SpatialModeler::DirectionalMetadataOutput<float> &)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(void *result, uint64_t *a2, uint64_t a3)
{
  v3 = 0;
  v4 = *a2;
  do
  {
    v5 = result;
    v6 = &result[v3];
    result = v6 + 1;
    v7 = 2 * v3;
    v3 = (2 * v3) | 1;
    v8 = v7 + 2;
    if (v8 < a3)
    {
      v10 = v6[2];
      v9 = v6 + 2;
      if (*(*(v4 + 56) + 4 * *(v9 - 1)) < *(*(v4 + 56) + 4 * v10))
      {
        result = v9;
        v3 = v8;
      }
    }

    *v5 = *result;
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,void Phase::SpatialModeler::SortMetadataByDelay<float>(Phase::SpatialModeler::DirectionalMetadataOutput<float> &)::{lambda(unsigned long,unsigned long)#1} &,unsigned long *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 8 * v4);
    v6 = *v5;
    v9 = *(a2 - 8);
    v7 = (a2 - 8);
    v8 = v9;
    v10 = *(*a3 + 56);
    v11 = *(v10 + 4 * v9);
    if (*(v10 + 4 * *v5) < v11)
    {
      do
      {
        v12 = v5;
        *v7 = v6;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 8 * v4);
        v6 = *v5;
        v7 = v12;
      }

      while (*(v10 + 4 * *v5) < v11);
      *v12 = v8;
    }
  }

  return result;
}

void *std::__function::__value_func<void ()(void *)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_23A3D3EDC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void Phase::SpatialModeler::ConvertMetadataSphericalToCartesian<float>(uint64_t a1)
{
  if (*(a1 + 204) != 1)
  {
    v2 = *(a1 + 104);
    if (v2)
    {
      v3 = *v2;
      if (*v2)
      {
        v4 = (*(a1 + 8) + 8);
        do
        {
          v5 = *(v4 - 1);
          v6 = (180.0 - *v4) - (floorf((180.0 - *v4) / 360.0) * 360.0);
          if (v6 >= 360.0)
          {
            v7 = nextafterf(360.0, 0.0);
          }

          else
          {
            v7 = v6 + 0.0;
          }

          v8 = v5 * 0.017453;
          v9 = v7 * 0.017453;
          v10 = *(v4 - 2);
          v11 = __sincosf_stret(v8);
          v12 = __sincosf_stret(v9);
          *(v4 - 2) = v12.__sinval * (v11.__sinval * v10);
          *(v4 - 1) = v11.__cosval * v10;
          *v4 = v12.__cosval * (v11.__sinval * v10);
          v4 += 3;
          --v3;
        }

        while (v3);
        *(a1 + 204) = 1;
      }
    }
  }
}

void Phase::SpatialModeler::ConvertMetadataCartesianToSpherical<float>(uint64_t a1)
{
  if (*(a1 + 204))
  {
    v2 = *(a1 + 104);
    if (v2)
    {
      v3 = *v2;
      if (*v2)
      {
        v4 = (*(a1 + 8) + 8);
        do
        {
          v6 = *(v4 - 2);
          v5 = *(v4 - 1);
          v7 = *v4;
          v8 = sqrtf(((v6 * v6) + (v5 * v5)) + (v7 * v7));
          v9 = acosf(v5 / v8);
          v10 = atan2f(v6, v7);
          v11 = (180.0 - (v10 * 57.296)) - (floorf((180.0 - (v10 * 57.296)) / 360.0) * 360.0);
          if (v11 >= 360.0)
          {
            v12 = nextafterf(360.0, 0.0);
          }

          else
          {
            v12 = v11 + 0.0;
          }

          *(v4 - 2) = v8;
          *(v4 - 1) = v9 * 57.296;
          *v4 = v12;
          v4 += 3;
          --v3;
        }

        while (v3);
        *(a1 + 204) = 0;
      }
    }
  }
}

void Phase::SpatialModeler::EarlyReflectionsSimulation::GetSupportedQueryDescs(void *a1@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  v12[23] = 4;
  strcpy(v12, "CULL");
  v13 = 0;
  v14 = 0x100000001;
  v15 = 1;
  memset(v16, 0, sizeof(v16));
  std::vector<unsigned int>::resize(v16, 7uLL);
  v3 = 0;
  v4 = *v16;
  do
  {
    *(v4 + v3 * 4) = Phase::SpatialModeler::EarlyReflectionsSimulationPrivate::sCullQueryPropertyUIDs[v3];
    ++v3;
  }

  while (v3 != 7);
  v17[23] = 7;
  strcpy(v17, "CLUSTER");
  v18 = 1;
  v19 = 0x200000003;
  v20 = 1;
  memset(v21, 0, sizeof(v21));
  std::vector<unsigned int>::resize(v21, 7uLL);
  v5 = 0;
  v6 = *v21;
  do
  {
    *(v6 + v5 * 4) = Phase::SpatialModeler::EarlyReflectionsSimulationPrivate::sClusterQueryPropertyUIDs[v5];
    ++v5;
  }

  while (v5 != 7);
  v22[23] = 7;
  strcpy(v22, "SPATIAL");
  v23 = 2;
  v24 = 0x300000002;
  v25 = 2;
  memset(v26, 0, sizeof(v26));
  std::vector<unsigned int>::resize(v26, 7uLL);
  v7 = 0;
  v8 = *v26;
  do
  {
    *(v8 + v7 * 4) = Phase::SpatialModeler::EarlyReflectionsSimulationPrivate::sSpatialQueryPropertyUIDs[v7];
    ++v7;
  }

  while (v7 != 7);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<Phase::SpatialModeler::QueryDesc>::__init_with_size[abi:ne200100]<Phase::SpatialModeler::QueryDesc const*,Phase::SpatialModeler::QueryDesc const*>(a1, v12, &v27, 3uLL);
  for (i = 0; i != -240; i -= 80)
  {
    v10 = &v12[i];
    v11 = *&v26[i];
    if (v11)
    {
      *(v10 + 27) = v11;
      operator delete(v11);
    }

    if (v10[183] < 0)
    {
      operator delete(*(v10 + 20));
    }
  }
}

void sub_23A3D4310(_Unwind_Exception *a1)
{
  v3 = (v1 + 160);
  v4 = -240;
  do
  {
    Phase::SpatialModeler::QueryDesc::~QueryDesc(v3);
    v3 = (v5 - 80);
    v4 += 80;
  }

  while (v4);
  _Unwind_Resume(a1);
}

uint64_t Phase::SpatialModeler::EarlyReflectionsSimulation::GetEntityShapeTemplates@<X0>(Phase::SpatialModeler::EarlyReflectionsSimulation *this@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v5 = 0;
  memset(v6, 0, sizeof(v6));
  v7 = 1065353216;
  v8 = 4;
  v3 = *(Phase::Logger::GetInstance(this) + 1280);
  if (!v3)
  {
    v3 = 3;
  }

  v5 = v3;
  if (v3 > 3)
  {
    __assert_rtn("GetEntityShapeTemplates", "EarlyReflectionsSimulationModeler.cpp", 238, "occluderTemplate.mShapeType > Geometry::DefaultShapeType::Invalid && occluderTemplate.mShapeType < Geometry::DefaultShapeType::Count");
  }

  a2[1] = std::vector<Phase::SpatialModeler::EntityShapeTemplate>::__emplace_back_slow_path<Phase::SpatialModeler::EntityShapeTemplate const&>(a2, &v5);
  return std::__hash_table<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,std::__unordered_map_hasher<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,true>,std::__unordered_map_equal<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,true>,std::allocator<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>>>::~__hash_table(v6);
}

void sub_23A3D4424(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__hash_table<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,std::__unordered_map_hasher<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,true>,std::__unordered_map_equal<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,true>,std::allocator<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>>>::~__hash_table(v2 + 8);
  std::vector<Phase::SpatialModeler::EntityShapeTemplate>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void Phase::SpatialModeler::EarlyReflectionsSimulation::Init(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  *(a1 + 40) = a2[3];
  *(a1 + 32) = 2;
  *(a1 + 60) = Phase::Geometry::SceneQueryTypeRegistry::DeriveNewType((*(a1 + 16) + 2720), 3u);
  *(a1 + 64) = Phase::Geometry::SceneQueryTypeRegistry::DeriveNewType((*(a1 + 16) + 2720), 3u);
  Phase::Geometry::System::GetCurrentState(*(a1 + 16), &v12);
  v4 = a2[1];
  if (v4)
  {
    v5 = *v4;
    *(a1 + 1072) = v4[1];
    *(a1 + 1056) = v5;
    v6 = v4[2];
    v7 = v4[3];
    v8 = v4[4];
    *(a1 + 1136) = v4[5];
    *(a1 + 1120) = v8;
    *(a1 + 1104) = v7;
    *(a1 + 1088) = v6;
    v9 = v4[6];
    v10 = v4[7];
    v11 = v4[8];
    *(a1 + 1200) = *(v4 + 36);
    *(a1 + 1184) = v11;
    *(a1 + 1168) = v10;
    *(a1 + 1152) = v9;
  }

  Phase::SpatialModeler::RoomSimulationConfig::ReadDefaultsWriteFlags((a1 + 1056));
  *(a1 + 1280) = *a2;
  operator new();
}

void sub_23A3D47EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::SpatialModeler::EarlyReflectionsSimulation::Shutdown(Phase::SpatialModeler::EarlyReflectionsSimulation *this)
{
  v2 = *(this + 164);
  *(this + 164) = 0;
  if (v2)
  {
    std::default_delete<caulk::concurrent::multi_buffer<Phase::SpatialModeler::RayTracerState,3>>::operator()[abi:ne200100](this + 1312, v2);
    v1 = vars8;
  }

  return Phase::SpatialModeler::RoomSimulation::DeinitERtoLRModelerCache(this);
}

uint64_t Phase::SpatialModeler::EarlyReflectionsSimulation::RunQuery@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2[10];
  if (v3 > 2)
  {
    *a3 = 2;
    *(a3 + 8) = result + 72;
    *(a3 + 24) = 2;
  }

  else
  {
    v4 = a2[11];
    if (v4 && (v5 = Phase::SpatialModeler::EarlyReflectionsSimulationPrivate::QueryTable[v3], *(v5 + 4) == *v4))
    {
      v6 = a2[12];
      if (v6 && *(v5 + 5) == *v6)
      {
        return (*(v5 + 8))();
      }

      v7 = result + 72;
      v8 = 4;
    }

    else
    {
      v7 = result + 72;
      v8 = 3;
    }

    *a3 = v8;
    *(a3 + 8) = v7;
    *(a3 + 24) = 2;
  }

  return result;
}

uint64_t Phase::SpatialModeler::EarlyReflectionsSimulation::AllocateQueryState@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v2 = *(a1 + 80);
  if (v2 <= 2)
  {
    v3 = *(Phase::SpatialModeler::EarlyReflectionsSimulationPrivate::QueryTable[v2] + 7);
    if (v3)
    {
      return v3();
    }
  }

  *a2 = 0;
  a2[4] = 0;
  return result;
}

std::string *Phase::SpatialModeler::EarlyReflectionsSimulation::GetGraphDescription@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  if (a1 == 2)
  {
    std::string::__assign_external(a2, "EarlyReflectionsSimSpatialQueryGraph", 0x24uLL);
    std::vector<Phase::SpatialModeler::GraphDescriptionNode>::resize((a2 + 24), 1uLL);
    v4 = *(a2 + 24);
    result = std::string::__assign_external(v4, "FullEarlyReflectionsSimSpatialGraph", 0x23uLL);
  }

  else if (a1 == 1)
  {
    std::string::__assign_external(a2, "EarlyReflectionsSimClusterQueryGraph", 0x24uLL);
    std::vector<Phase::SpatialModeler::GraphDescriptionNode>::resize((a2 + 24), 1uLL);
    v4 = *(a2 + 24);
    result = std::string::__assign_external(v4, "FullEarlyReflectionsSimClusterGraph", 0x23uLL);
  }

  else
  {
    if (a1)
    {
      return result;
    }

    std::string::__assign_external(a2, "EarlyReflectionsSimCullQueryGraph", 0x21uLL);
    std::vector<Phase::SpatialModeler::GraphDescriptionNode>::resize((a2 + 24), 1uLL);
    v4 = *(a2 + 24);
    result = std::string::__assign_external(v4, "FullEarlyReflectionsSimCullGraph", 0x20uLL);
  }

  v4[1].__r_.__value_.__r.__words[0] = 0xFFFFFFFFLL;
  return result;
}

void Phase::SpatialModeler::EarlyReflectionsSimulation::StoreRayTracerStateToCache(Phase::SpatialModeler::EarlyReflectionsSimulation *this, const Phase::SpatialModeler::RayTracerState *a2)
{
  v2 = MEMORY[0x28223BE20](this);
  v5[3133] = *MEMORY[0x277D85DE8];
  v3 = *(v2 + 1312);
  Phase::SpatialModeler::RayTracerState::RayTracerState(v5, v4);
  caulk::concurrent::multi_buffer<Phase::SpatialModeler::RayTracerState,3>::write(v3, v5);
  Phase::SpatialModeler::RayTracerState::~RayTracerState(v5);
}

unsigned int *caulk::concurrent::multi_buffer<Phase::SpatialModeler::RayTracerState,3>::write(unsigned int *a1, const Phase::SpatialModeler::RayTracerState *a2)
{
  v11 = 0;
  if (a1[1] == 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = a1[1];
  }

  for (i = atomic_load(a1); ; i = atomic_load(a1))
  {
    v6 = v4 == i || v4 == HIWORD(i);
    if (!v6)
    {
      break;
    }

    caulk::concurrent::details::spinloop::spin(&v11);
    if (v4 == 2)
    {
      v4 = 0;
    }

    else
    {
      ++v4;
    }
  }

  v7 = &a1[6268 * v4];
  std::optional<Phase::SpatialModeler::RayTracerState>::operator=[abi:ne200100]<Phase::SpatialModeler::RayTracerState&,void>((v7 + 4), a2);
  v8 = i;
  atomic_compare_exchange_strong(a1, &v8, i | (v4 << 16));
  if (v8 != i)
  {
    v9 = v8;
    do
    {
      atomic_compare_exchange_strong(a1, &v9, v8 | (v4 << 16));
      v6 = v9 == v8;
      v8 = v9;
    }

    while (!v6);
  }

  a1[1] = v4 + 1;
  return v7 + 4;
}

unsigned int *caulk::concurrent::multi_buffer<Phase::SpatialModeler::RayTracerState,3>::read_if (unsigned int *result)
{
  v1 = atomic_load(result);
  v2 = HIWORD(v1);
  if (HIWORD(v1) == 0xFFFF)
  {
    LOWORD(v3) = v1;
LABEL_6:
    v2 = v3;
    if (v3 == 0xFFFF)
    {
      return 0;
    }
  }

  else
  {
    v3 = v1;
    while (1)
    {
      atomic_compare_exchange_strong(result, &v3, v2 | 0xFFFF0000);
      if (v3 == v1)
      {
        break;
      }

      v2 = HIWORD(v3);
      v1 = v3;
      if (HIWORD(v3) == 0xFFFF)
      {
        goto LABEL_6;
      }
    }
  }

  v4 = &result[6268 * v2];
  if (v4[6268])
  {
    return v4 + 4;
  }

  __break(1u);
  return result;
}

void Phase::SpatialModeler::EarlyReflectionsSimulation::~EarlyReflectionsSimulation(Phase::SpatialModeler::EarlyReflectionsSimulation *this)
{
  Phase::SpatialModeler::RoomSimulation::~RoomSimulation(this);

  JUMPOUT(0x23EE864A0);
}

void Phase::SpatialModeler::RoomSimulation::~RoomSimulation(Phase::SpatialModeler::RoomSimulation *this)
{
  v2 = (this + 49152);
  *this = &unk_284D33AE0;
  v3 = *(this + 6495);
  v2[351] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = v2[350];
  v2[350] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = v2[349];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = v2[344];
  if (v6)
  {
    v2[345] = v6;
    operator delete(v6);
  }

  v7 = v2[335];
  if (v7)
  {
    v2[336] = v7;
    operator delete(v7);
  }

  v8 = v2[332];
  if (v8)
  {
    v2[333] = v8;
    operator delete(v8);
  }

  v9 = v2[329];
  if (v9)
  {
    v2[330] = v9;
    operator delete(v9);
  }

  Phase::SpatialModeler::RayTracerState::~RayTracerState(this + 3340);
  std::mutex::~mutex((this + 26640));
  v10 = *(this + 3326);
  if (v10)
  {
    *(this + 3327) = v10;
    operator delete(v10);
  }

  v11 = *(this + 3317);
  if (v11)
  {
    *(this + 3318) = v11;
    operator delete(v11);
  }

  v12 = *(this + 3314);
  if (v12)
  {
    *(this + 3315) = v12;
    operator delete(v12);
  }

  v13 = *(this + 3311);
  if (v13)
  {
    *(this + 3312) = v13;
    operator delete(v13);
  }

  Phase::SpatialModeler::RayTracerState::~RayTracerState(this + 178);
  std::mutex::~mutex(this + 21);
  Phase::SpatialModeler::HistogramPtrStack::Clear((this + 1328));
  v14 = *(this + 164);
  *(this + 164) = 0;
  if (v14)
  {
    std::default_delete<caulk::concurrent::multi_buffer<Phase::SpatialModeler::RayTracerState,3>>::operator()[abi:ne200100](this + 1312, v14);
  }

  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(this + 120);
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(this + 80);
  std::error_category::~error_category(this + 9);
  *this = &unk_284D2F570;
  std::error_category::~error_category(this + 1);
}

void Phase::SpatialModeler::HistogramPtrStack::Clear(Phase::SpatialModeler::HistogramPtrStack *this)
{
  atomic_fetch_add(Phase::SpatialModeler::HistogramPtrStack::sIsClearingPoolFlag, 1u);
  do
  {
    Phase::SpatialModeler::HistogramPtrStack::Pop(&v2);
    v1 = v2;
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  while (v1);
  atomic_fetch_add(Phase::SpatialModeler::HistogramPtrStack::sIsClearingPoolFlag, 0xFFFFFFFF);
}

void Phase::SpatialModeler::HistogramPtrStack::Pop(unint64_t *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  v3 = caulk::concurrent::stack<caulk::alloc::free_block,caulk::concurrent::intrusive_single_link_node<caulk::alloc::free_block>>::pop();
  if (v3)
  {
    v4 = v3[1];
    v5 = v3[2];
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v6 = v3[2];
      *a1 = v4;
      a1[1] = v5;
      if (v6)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }
    }

    else
    {
      *a1 = v4;
      a1[1] = 0;
    }
  }
}

void std::default_delete<caulk::concurrent::multi_buffer<Phase::SpatialModeler::RayTracerState,3>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = 75216;
    for (i = 50160; ; i -= 25072)
    {
      if (*(a2 + v3) == 1)
      {
        Phase::SpatialModeler::RayTracerState::~RayTracerState((a2 + i));
      }

      v3 -= 25072;
      if (!v3)
      {

        JUMPOUT(0x23EE864A0);
      }
    }
  }
}

uint64_t caulk::concurrent::details::spinloop::spin(uint64_t this)
{
  v1 = *this + 1;
  *this = v1;
  if (v1 == 100)
  {
    v2 = this;
    this = sched_yield();
    *v2 = 0;
  }

  return this;
}

Phase::SpatialModeler::RayTracerState *std::optional<Phase::SpatialModeler::RayTracerState>::operator=[abi:ne200100]<Phase::SpatialModeler::RayTracerState&,void>(Phase::SpatialModeler::RayTracerState *a1, const Phase::SpatialModeler::RayTracerState *a2)
{
  if (*(a1 + 25056) == 1)
  {
    Phase::SpatialModeler::RayTracerState::operator=(a1, a2);
  }

  else
  {
    Phase::SpatialModeler::RayTracerState::RayTracerState(a1, a2);
    *(a1 + 25056) = 1;
  }

  return a1;
}

void Phase::SpatialModeler::GenerateEarlyScattering(std::__shared_weak_count *a1, uint64_t *a2, Phase::SpatialModeler::RayTracerState *this, double a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v146 = *MEMORY[0x277D85DE8];
  if (!a1[1].__vftable)
  {
    return;
  }

  v7 = a4;
  v9 = a1;
  v10 = 0;
  v111 = (this + 19512);
  v11 = a4;
  v110 = v11;
  v109 = a1;
  do
  {
    shared_weak_owners = v9->__shared_weak_owners_;
    if (!shared_weak_owners)
    {
      goto LABEL_89;
    }

    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 3.4028e38;
    do
    {
      if (shared_weak_owners[3] != v10)
      {
        goto LABEL_37;
      }

      v17 = v9->__shared_weak_owners_;
      Phase::SpatialModeler::RayTracerState::GetSourceListenerResult(this, (v17 + 16), &v118);
      if (v120)
      {
        if (!v14)
        {
          Phase::SpatialModeler::RayTracerState::CopyDirectivityHistogram(this, &v120, &v143);
          v14 = v143;
          v29 = v144[0];
          v143 = 0;
          v144[0] = 0;
          if (v15)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v15);
            if (v144[0])
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v144[0]);
            }
          }

          ++v13;
          v15 = v29;
          goto LABEL_33;
        }

        Phase::SpatialModeler::DirectivityHistogram::operator+=(v14, v120);
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v18 = *(this + 2367);
        v19 = *(this + 2366);
        v20 = v18 - v19;
        if (v18 == v19)
        {
LABEL_23:
          v28 = 0;
          if (v15)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v21 = 0;
          v22 = *(a6 + 144);
          v23 = 0x6DB6DB6DB6DB6DB7 * (v20 >> 3);
          if (v23 <= 1)
          {
            v23 = 1;
          }

          while (1)
          {
            v24 = (v19 + 56 * v21);
            if (*(v17 + 16) == *v24 && v22)
            {
              v25 = 0;
              v26 = v24[6];
              v27 = (*(a6 + 104) + 152);
              while (*(v27 - 1) != v26)
              {
                ++v25;
                v27 += 304;
                if (v22 == v25)
                {
                  goto LABEL_22;
                }
              }

              if ((v25 & 0x8000000000000000) == 0 && (*v27 & 1) == 0 && v14[10] < 0.000029155)
              {
                break;
              }
            }

LABEL_22:
            if (++v21 == v23)
            {
              goto LABEL_23;
            }
          }

          v28 = 1;
          if (!v15)
          {
            goto LABEL_25;
          }

LABEL_24:
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }

LABEL_25:
        ++v13;
        if ((v28 & 1) == 0 && *(v120 + 40) < v16)
        {
          v16 = *(v120 + 40);
        }
      }

LABEL_33:
      if (v121)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v121);
      }

      a1 = v119;
      if (v119)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v119);
      }

LABEL_37:
      shared_weak_owners = *shared_weak_owners;
    }

    while (shared_weak_owners);
    if (v16 < 3.4028e38)
    {
      v14[10] = v16;
    }

    if (v13 >= 2)
    {
      *&a4 = v13;
      a1 = Phase::SpatialModeler::DirectivityHistogram::operator/=(v14, a4);
    }

    if (v14)
    {
      v30 = v14[10];
      v31 = *(this + 116);
      v32 = *(this + 135);
      LODWORD(v118) = 3;
      BYTE4(v118) = 1;
      v119 = 0;
      v131 = 0;
      v123 = 0;
      v124 = 0;
      v122 = 0;
      v125[4] = 0;
      v126 = 0;
      v125[3] = 0;
      v127[3] = 0;
      v128 = 0;
      memset(&v129[24], 0, 24);
      v130 = 0;
      v33 = *v111;
      v34 = *(this + 32);
      v36 = *(this + 26);
      v35 = *(this + 27);
      Instance = Phase::Logger::GetInstance(a1);
      if (v32)
      {
        v38 = 0;
      }

      else
      {
        v38 = (v30 * v7);
      }

      v39 = v30 * v31;
      if (v30 <= 0.0)
      {
        v39 = 1.0;
      }

      v40 = log10f(((1.0 / (v39 * v39)) * v36) + 1.0e-15) * 10.0;
      v41 = expf(((*(Instance + 1284) * 10.0) / 10.0) * 0.11513);
      Phase::SpatialModeler::generateDirectionalMetadataLR(v14, v38, &v118, a7, v33, v31, v110, v40, v34, 0.0, v35, v41);
      v42 = *a2;
      if (v126)
      {
        v43 = *v126;
        if (*v126)
        {
          v44 = v42 + 208 * v10;
          if (*(v44 + 204) != v131)
          {
            goto LABEL_91;
          }

          v45 = v126[1];
          if (!v45)
          {
            goto LABEL_91;
          }

          v46 = *(v44 + 104);
          if (v46)
          {
            v47 = v46[1];
            if (!v47 || v47 == v45)
            {
              v48 = *v46;
              goto LABEL_60;
            }

LABEL_91:
            std::terminate();
          }

          v48 = 0;
LABEL_60:
          v132 = (v48 + v43);
          v135 = 4;
          v137 = &v132;
          v138[0] = &v135;
          Phase::details::AllocArray<Phase::Vector<float,3ul>,std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Vector<float,3ul>>(unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Vector<float,3ul>>(unsigned long,unsigned long)::{lambda(Phase::Vector<float,3ul>*)#1} const&>(v48 + v43, &v137, &v143);
          v49 = v143;
          v143 = 0;
          v140 = v49;
          std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](v141, v144);
          v142 = v48 + v43;
          std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](&v143);
          std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v144);
          v135 = v48 + v43;
          v115[0] = 4;
          v132 = &v135;
          v133[0] = v115;
          Phase::details::AllocArray<float,std::unique_ptr<float [],std::function<void ()(void *)>> Phase::details::AllocArray<float>(unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<float [],std::function<void ()(void *)>> Phase::details::AllocArray<float>(unsigned long,unsigned long)::{lambda(float*)#1} const&>(v48 + v43, &v132, &v143);
          v50 = v143;
          v143 = 0;
          v137 = v50;
          std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](v138, v144);
          v139 = v48 + v43;
          std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](&v143);
          std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v144);
          if (v126)
          {
            v51 = v126[1];
          }

          else
          {
            v51 = 0;
          }

          Phase::AllocPackedSubbandArray<float>(v48 + v43, v51, &v135);
          v116 = 1;
          v117 = v48 + v43;
          v115[0] = &v117;
          v115[1] = &v116;
          Phase::details::AllocArray<BOOL,std::unique_ptr<BOOL [],std::function<void ()(void *)>> Phase::details::AllocArray<BOOL>(unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<BOOL [],std::function<void ()(void *)>> Phase::details::AllocArray<BOOL>(unsigned long,unsigned long)::{lambda(BOOL*)#1} const&>(v48 + v43, v115, &v143);
          v52 = v143;
          v143 = 0;
          v132 = v52;
          std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](v133, v144);
          v134 = v48 + v43;
          std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](&v143);
          std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v144);
          v53 = v140;
          v54 = v137;
          v55 = v135;
          if (v48)
          {
            v56 = 0;
            v57 = *(v44 + 8);
            v58 = *(v44 + 56);
            v59 = *(v44 + 104);
            v60 = (v59 + 16);
            v61 = *(v59 + 8);
            v62 = (v135 + 16);
            v63 = *(v135 + 8);
            v64 = *(v44 + 144);
            v65 = v132;
            do
            {
              v66 = (v57 + 12 * v56);
              v67 = (v53 + 12 * v56);
              *v67 = *v66;
              v67[1] = v66[1];
              v67[2] = v66[2];
              *(v54 + 4 * v56) = *(v58 + 4 * v56);
              v68 = v60;
              v69 = v62;
              for (i = v61; i; --i)
              {
                v71 = *v68++;
                *v69++ = v71;
              }

              *(v65 + v56) = *(v64 + v56);
              ++v56;
              v62 += 4 * v63;
              v60 += v61;
            }

            while (v56 != v48);
          }

          else
          {
            v63 = *(v135 + 8);
            v65 = v132;
          }

          v72 = 0;
          v73 = v119;
          v74 = v124;
          v75 = (v126 + 2);
          v76 = v126[1];
          v77 = 4 * v63;
          v78 = v55 + v77 * v48;
          v79 = v128;
          v80 = (v78 + 16);
          do
          {
            v81 = (v73 + 12 * v72);
            v82 = (v53 + 12 * (v72 + v48));
            *v82 = *v81;
            v82[1] = v81[1];
            v82[2] = v81[2];
            *(v54 + 4 * (v72 + v48)) = *(v74 + 4 * v72);
            v83 = v75;
            v84 = v80;
            for (j = v76; j; --j)
            {
              v86 = *v83++;
              *v84++ = v86;
            }

            *(v65 + v72 + v48) = *(v79 + v72);
            ++v72;
            v80 = (v80 + v77);
            v75 += v76;
          }

          while (v72 != v43);
          v87 = *(v44 + 8);
          *(v44 + 8) = 0;
          v143 = v87;
          std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](v144, v44 + 16);
          v145 = *(v44 + 48);
          std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::operator=[abi:ne200100]((v44 + 8), &v140);
          *(v44 + 48) = v142;
          std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::operator=[abi:ne200100](&v140, &v143);
          v142 = v145;
          std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](&v143);
          std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v144);
          v88 = *(v44 + 56);
          *(v44 + 56) = 0;
          v143 = v88;
          std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](v144, v44 + 64);
          v145 = *(v44 + 96);
          std::unique_ptr<float [],std::function<void ()(void *)>>::operator=[abi:ne200100]((v44 + 56), &v137);
          *(v44 + 96) = v139;
          std::unique_ptr<float [],std::function<void ()(void *)>>::operator=[abi:ne200100](&v137, &v143);
          v139 = v145;
          std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](&v143);
          std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v144);
          v89 = *(v44 + 104);
          *(v44 + 104) = v135;
          v135 = v89;
          std::__function::__value_func<void ()(void *)>::swap[abi:ne200100]((v44 + 112), v136);
          v91 = *(v44 + 144);
          v90 = v44 + 144;
          *v90 = 0;
          v143 = v91;
          std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](v144, v90 + 8);
          v145 = *(v90 + 40);
          std::unique_ptr<BOOL [],std::function<void ()(void *)>>::operator=[abi:ne200100](v90, &v132);
          *(v90 + 40) = v134;
          std::unique_ptr<BOOL [],std::function<void ()(void *)>>::operator=[abi:ne200100](&v132, &v143);
          v134 = v145;
          std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](&v143);
          std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v144);
          *(v90 + 57) = 0;
          std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](&v132);
          std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v133);
          std::unique_ptr<Phase::PackedSubbandArray<float>,std::function<void ()(void *)>>::reset[abi:ne200100](&v135, 0);
          std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v136);
          std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](&v137);
          std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v138);
          std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](&v140);
          std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v141);
          v42 = *a2;
        }
      }

      Phase::SpatialModeler::SortMetadataByDelay<float>(v42 + 208 * v10);
      v92 = (*a2 + 208 * v10);
      v93 = v92[6];
      if (v93)
      {
        v94 = 0;
        v95 = 0;
        v96 = *(this + 19);
        v97 = ((v96 + v96) * v7);
        v98 = *(this + 27) - v96;
        v99 = v97 >> 1;
        v100 = v92[7];
        v101 = v97 + -1.0;
        do
        {
          v102 = *(v100 + 4 * v95) - v98;
          if (v102 >= 0.0 && v102 < *(this + 19))
          {
            v104 = cosf(((v99 + (v102 * v7)) * 6.2832) / v101);
            v105 = v92[13];
            v106 = *(v105 + 8);
            if (v106)
            {
              v107 = (1.0 - v104) * 0.5;
              v108 = (v105 + v106 * v94 + 16);
              do
              {
                *v108 = v107 * *v108;
                ++v108;
                --v106;
              }

              while (v106);
            }
          }

          ++v95;
          v94 += 4;
        }

        while (v93 > v95);
      }

      std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](&v128);
      std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v129);
      std::unique_ptr<Phase::PackedSubbandArray<float>,std::function<void ()(void *)>>::reset[abi:ne200100](&v126, 0);
      std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v127);
      std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](&v124);
      std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v125);
      std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](&v119);
      a1 = std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v120);
      v9 = v109;
    }

    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

LABEL_89:
    v10 = (v10 + 1);
  }

  while (v10 < v9[1].__vftable);
}

void sub_23A3D5A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  std::unique_ptr<Phase::PackedSubbandArray<float>,std::function<void ()(void *)>>::reset[abi:ne200100](&a56, 0);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&a57);
  std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](&a61);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&a62);
  std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100]((v63 - 256));
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v63 - 248);
  Phase::SpatialModeler::DirectionalMetadataOutput<float>::~DirectionalMetadataOutput(&a24);
  if (v62)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v62);
  }

  _Unwind_Resume(a1);
}

uint64_t *Phase::SpatialModeler::DirectionalMetadataOutput<float>::~DirectionalMetadataOutput(uint64_t *a1)
{
  std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](a1 + 18);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100]((a1 + 19));
  std::unique_ptr<Phase::PackedSubbandArray<float>,std::function<void ()(void *)>>::reset[abi:ne200100](a1 + 13, 0);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100]((a1 + 14));
  std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](a1 + 7);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100]((a1 + 8));
  std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](a1 + 1);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100]((a1 + 2));
  return a1;
}

uint64_t Phase::SpatialModeler::EnergyHistogram::resizeEnergyHistogram(Phase::SpatialModeler::EnergyHistogram *this, float a2, int a3, float a4, float a5)
{
  *(this + 4) = a4;
  *(this + 5) = a2;
  *(this + 10) = a5;
  v6 = vcvtms_u32_f32(a2 / a4) + 1;
  if (*(this + 7) != a3 || v6 != *(this + 6))
  {
    *(this + 6) = v6;
    *(this + 7) = a3;
    free(*(this + 1));
    *(this + 1) = malloc_type_malloc(4 * (*(this + 7) * *(this + 6)), 0x100004052888210uLL);
  }

  return 0;
}

void **Phase::SpatialModeler::EnergyHistogram::operator=(void **this, uint64_t a2)
{
  if (a2 != this)
  {
    Phase::SpatialModeler::EnergyHistogram::resizeEnergyHistogram(this, *(a2 + 20), *(a2 + 28), *(a2 + 16), *(a2 + 40));
    memcpy(this[1], *(a2 + 8), 4 * (*(this + 7) * *(this + 6)));
    *(this + 36) = *(a2 + 36);
    *(this + 11) = *(a2 + 44);
    *(this + 12) = *(a2 + 48);
    *(this + 13) = *(a2 + 52);
    *(this + 14) = *(a2 + 56);
    *(this + 15) = *(a2 + 60);
    *(this + 16) = *(a2 + 64);
    *(this + 17) = *(a2 + 68);
    *(this + 18) = *(a2 + 72);
    *(this + 19) = *(a2 + 76);
    *(this + 10) = *(a2 + 40);
    *(this + 8) = *(a2 + 32);
  }

  return this;
}

void Phase::SpatialModeler::EnergyHistogram::~EnergyHistogram(void **this)
{
  *this = &unk_284D33B60;
  free(this[1]);
}

{
  *this = &unk_284D33B60;
  free(this[1]);

  JUMPOUT(0x23EE864A0);
}

float Phase::SpatialModeler::EnergyHistogram::addEnergy_TS(uint64_t a1, unsigned int a2, uint64_t a3)
{
  result = 0.0;
  if (*(a1 + 24) > a2)
  {
    LODWORD(v4) = *(a3 + 124);
    if (v4)
    {
      v5 = 0.0;
      v6 = a3;
      v7 = *(a3 + 124);
      do
      {
        v8 = *v6++;
        v5 = v5 + v8;
        --v7;
      }

      while (v7);
      result = 0.0;
      if (v5 > 1.1755e-38)
      {
        v9 = *(a1 + 28);
        if (v9 >= v4)
        {
          v4 = v4;
        }

        else
        {
          v4 = v9;
        }

        if (v4 >= 1)
        {
          v10 = (*(a1 + 8) + 4 * v9 * a2);
          do
          {
            v11 = *a3;
            a3 += 4;
            *v10 = v11 + *v10;
            ++v10;
            --v4;
          }

          while (v4);
        }

        *(a1 + 36) = 0;
        v12 = *(a1 + 44);
        if ((v12 + 1) < 0xC350)
        {
          v13 = v12 + 1;
        }

        else
        {
          v13 = 50000;
        }

        *(a1 + 44) = v13;
        return v5;
      }
    }
  }

  return result;
}

float Phase::SpatialModeler::EnergyHistogram::getTemporalEnergyEnvelope_Band@<S0>(Phase::SpatialModeler::EnergyHistogram *this@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v5 = std::vector<float>::vector[abi:ne200100](a3, *(this + 6));
  if ((*(this + 36) & 1) == 0)
  {
    v7 = *(this + 7);
    if (v7 > a2)
    {
      v8 = *(this + 6);
      if (v8)
      {
        v9 = (*(this + 1) + 4 * a2);
        v10 = *v5;
        v11 = 4 * v7;
        do
        {
          result = *v9;
          *v10++ = *v9;
          v9 = (v9 + v11);
          --v8;
        }

        while (v8);
      }
    }
  }

  return result;
}

uint64_t Phase::SpatialModeler::EnergyHistogram::setEnergy(uint64_t this, float a2, unsigned int a3, unsigned int a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(this + 28);
  if (v4 <= a3 || *(this + 24) <= a4)
  {
    v6 = **(Phase::Logger::GetInstance(this) + 1264);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v10 = "EnergyHistogram.cpp";
      v11 = 1024;
      v12 = 246;
      v13 = 1024;
      v14 = a3;
      v15 = 1024;
      v16 = a4;
      _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument): Invalid band (%i) of timestep (%i) selected.\\n", buf, 0x1Eu);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Invalid band (%i) of timestep (%i) selected.\n");
  }

  if (a2 > 1.1755e-38)
  {
    *(*(this + 8) + 4 * (a3 + v4 * a4)) = a2;
    *(this + 36) = 0;
  }

  return this;
}

uint64_t Phase::SpatialModeler::EnergyHistogram::operator+=(uint64_t result, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (vabds_f32(*(result + 16), *(a2 + 16)) > 0.000001 || (v2 = *(result + 28), v2 != *(a2 + 28)))
  {
    v9 = **(Phase::Logger::GetInstance(result) + 1264);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "EnergyHistogram.cpp";
      v13 = 1024;
      v14 = 317;
      _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument): Histograms have unequal resolution, they cannot be added.\\n", &v11, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Histograms have unequal resolution, they cannot be added.\n");
  }

  v3 = *(a2 + 24);
  if (v3 >= *(result + 24))
  {
    v3 = *(result + 24);
  }

  v4 = v3 * v2;
  if (v4)
  {
    v5 = *(a2 + 8);
    v6 = *(result + 8);
    do
    {
      v7 = *v5++;
      *v6 = v7 + *v6;
      ++v6;
      --v4;
    }

    while (v4);
  }

  *(result + 36) &= *(a2 + 36);
  v8 = *(a2 + 44) + *(result + 44);
  if (v8 >= 0xC350)
  {
    v8 = 50000;
  }

  *(result + 44) = v8;
  return result;
}

uint64_t Phase::SpatialModeler::EnergyHistogram::operator*=(uint64_t a1, double a2)
{
  if (*&a2 == 0.0)
  {
    v11 = *(a1 + 8);
    if (v11)
    {
      bzero(v11, 4 * (*(a1 + 28) * *(a1 + 24)));
    }

    *(a1 + 36) = 1;
    *(a1 + 44) = 0;
  }

  else
  {
    v3 = (*(a1 + 28) * *(a1 + 24));
    if (v3)
    {
      v4 = (v3 + 3) & 0x1FFFFFFFCLL;
      v5 = vdupq_n_s64(v3 - 1);
      v6 = xmmword_23A554B60;
      v7 = xmmword_23A554B70;
      v8 = (*(a1 + 8) + 8);
      v9 = vdupq_n_s64(4uLL);
      do
      {
        v10 = vmovn_s64(vcgeq_u64(v5, v7));
        if (vuzp1_s16(v10, *&a2).u8[0])
        {
          *(v8 - 2) = *(v8 - 2) * *&a2;
        }

        if (vuzp1_s16(v10, *&a2).i8[2])
        {
          *(v8 - 1) = *(v8 - 1) * *&a2;
        }

        if (vuzp1_s16(*&a2, vmovn_s64(vcgeq_u64(v5, *&v6))).i32[1])
        {
          *v8 = *v8 * *&a2;
          v8[1] = v8[1] * *&a2;
        }

        v6 = vaddq_s64(v6, v9);
        v7 = vaddq_s64(v7, v9);
        v8 += 4;
        v4 -= 4;
      }

      while (v4);
    }
  }

  return a1;
}

uint64_t Phase::SpatialModeler::EnergyHistogram::MultiplyAdd(uint64_t this, const Phase::SpatialModeler::EnergyHistogram *a2, float a3)
{
  v16 = *MEMORY[0x277D85DE8];
  if (vabds_f32(*(this + 16), *(a2 + 4)) > 0.000001 || (v3 = *(this + 28), v3 != *(a2 + 7)))
  {
    v10 = **(Phase::Logger::GetInstance(this) + 1264);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "EnergyHistogram.cpp";
      v14 = 1024;
      v15 = 385;
      _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument): Histograms have unequal resolution, they cannot be multiply added.\\n", &v12, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Histograms have unequal resolution, they cannot be multiply added.\n");
  }

  v4 = *(a2 + 6);
  if (v4 >= *(this + 24))
  {
    v4 = *(this + 24);
  }

  v5 = v4 * v3;
  if (v5)
  {
    v6 = *(a2 + 1);
    v7 = *(this + 8);
    do
    {
      v8 = *v6++;
      *v7 = *v7 + (v8 * a3);
      ++v7;
      --v5;
    }

    while (v5);
  }

  *(this + 36) &= *(a2 + 36);
  v9 = *(a2 + 11) + *(this + 44);
  if (v9 >= 0xC350)
  {
    v9 = 50000;
  }

  *(this + 44) = v9;
  return this;
}

uint64_t Phase::EQSphere::eq_point_set_polar(unsigned int a1, unsigned int a2, uint64_t **a3, int32x2_t a4)
{
  if (a2 != 1)
  {
    if (!a2)
    {
      std::vector<std::vector<float>>::resize(a3, 0);
      return 0;
    }

    __p = 0;
    v102 = 0;
    v103 = 0;
    memset(&v100, 0, sizeof(v100));
    if (a1 == 1)
    {
      std::vector<float>::resize(&__p, a2);
      std::vector<unsigned int>::resize(&v100, a2);
      v11 = 0;
      v12 = __p;
      begin = v100.__begin_;
      do
      {
        v12[v11] = (((v11 + 1) + (v11 + 1)) * 3.1416) / a2;
        begin[v11++] = 1;
      }

      while (a2 != v11);
    }

    else
    {
      if (a2 == 2)
      {
        v14 = 0;
        a4.i32[0] = 1070141403;
        v88 = a4;
      }

      else
      {
        v15 = 12.566 / a2;
        v16 = asinf(sqrtf(v15 / 3.1416) * 0.5);
        *v17.i32 = v16 + v16;
        v18 = sqrtf(v15);
        v88 = v17;
        if (v18 <= 0.0)
        {
          v14 = 0;
        }

        else if (((3.14159265 - (*v17.i32 + *v17.i32)) / v18 + 0.5) <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = ((3.14159265 - (*v17.i32 + *v17.i32)) / v18 + 0.5);
        }
      }

      v104 = 0;
      v105 = 0;
      v106 = 0;
      std::vector<float>::resize(&v104, v14 + 2);
      v20 = v104;
      *v104 = 1065353216;
      if (v14)
      {
        v21 = 0;
        v22 = 12.566 / a2;
        *v19.i32 = ((*v88.i32 * -2.0) + 3.1416) / v14;
        v89 = vdupq_n_s64(v14 - 1);
        v23 = vdup_lane_s32(v19, 0);
        v24 = vdup_lane_s32(v88, 0);
        v25 = 0x100000000;
        v26 = vdup_n_s32(0x41490FDBu);
        v27 = (v20 + 2);
        do
        {
          v95 = vmovn_s64(vcgeq_u64(v89, vorrq_s8(vdupq_n_s64(v21), xmmword_23A554B70)));
          v28 = v21 + 1;
          v21 += 2;
          v29 = vmla_f32(v24, v23, vcvt_f32_u32(__PAIR64__(v21, v28)));
          v30 = vmul_f32(vmla_f32(v24, v23, vcvt_f32_u32(v25)), 0x3F0000003F000000);
          v91 = v30.f32[0];
          v93 = sinf(v30.f32[1]);
          v31.f32[0] = sinf(v91);
          v31.f32[1] = v93;
          v94 = v31;
          v32 = vmul_f32(v29, 0x3F0000003F000000);
          v90 = v32.f32[0];
          v92 = sinf(v32.f32[1]);
          v33.f32[0] = sinf(v90);
          v33.f32[1] = v92;
          if (v95.i8[0])
          {
            *(v27 - 1) = ((12.566 * vmul_f32(v33, v33).f32[0]) - (12.566 * vmul_f32(v94, v94).f32[0])) / v22;
          }

          if (v95.i8[4])
          {
            v34 = vzip2_s32(v33, v94);
            v35 = vmul_f32(vmul_f32(v34, v34), v26);
            *v27 = vsub_f32(v35, vdup_lane_s32(v35, 1)).f32[0] / v22;
          }

          v25 = vadd_s32(v25, 0x200000002);
          v27 += 2;
        }

        while (v21 != ((v14 + 1) & 0x1FFFFFFFELL));
      }

      v20[v14 + 1] = 1065353216;
      std::vector<unsigned int>::resize(&v100, (v105 - v20) >> 2);
      v36 = v104;
      v37 = v100.__begin_;
      if (v105 != v104)
      {
        v38 = 0;
        v39 = (v105 - v104) >> 2;
        v40 = 0.0;
        do
        {
          v41 = v40 + *&v36[v38];
          v42 = (v41 + 0.5);
          v37[v38] = v42;
          v40 = v41 - v42;
          ++v38;
        }

        while (v39 > v38);
      }

      std::vector<float>::resize(&__p, v100.__end_ - v37);
      v43 = __p;
      *__p = v88.i32[0];
      v44 = v100.__end_ - v100.__begin_;
      v45 = (v44 - 2);
      if (v44 != 2)
      {
        v46 = (v43 + 4);
        v47 = v100.__begin_ + 1;
        v48 = 1;
        do
        {
          v49 = *v47++;
          v48 += v49;
          v50 = asinf(sqrtf(((12.566 / a2) * v48) / 3.1416) * 0.5);
          *v46++ = v50 + v50;
          --v45;
        }

        while (v45);
      }

      *&v43[4 * (v44 - 1)] = 1078530011;
      if (v104)
      {
        v105 = v104;
        operator delete(v104);
      }
    }

    v51 = a1 - 1;
    if (!v51)
    {
      std::vector<std::vector<float>>::resize(a3, 1uLL);
      v52 = __p;
      if (((v102 - __p) & 0x3FFFFFFFCLL) != 0)
      {
        v53 = 0;
        do
        {
          v54 = v52[v53] - 3.14159265 / a2;
          *&v104 = v54;
          std::vector<float>::push_back[abi:ne200100](*a3, &v104);
          ++v53;
          v52 = __p;
        }

        while (v53 < ((v102 - __p) >> 2));
      }

LABEL_67:
      if (v100.__begin_)
      {
        v100.__end_ = v100.__begin_;
        operator delete(v100.__begin_);
      }

      if (__p)
      {
        v102 = __p;
        operator delete(__p);
      }

      return 0;
    }

    v56 = v100.__begin_;
    end = v100.__end_;
    std::vector<std::vector<float>>::resize(a3, 2uLL);
    std::vector<float>::resize(*a3, a2);
    std::vector<float>::resize(*a3 + 3, a2);
    v57 = (end - v56) >> 2;
    v58 = (v57 - 2);
    if (v57 == 2)
    {
      v85 = 1;
LABEL_66:
      v86 = *a3;
      *(**a3 + 4 * v85) = 0;
      *(v86[3] + 4 * v85) = 1078530011;
      goto LABEL_67;
    }

    v59 = 0;
    v60 = 2;
    v61 = 0.0;
    while (1)
    {
      v62 = *(__p + v59);
      v63 = v59 + 1;
      v64 = *(__p + v59 + 1);
      v65 = v100.__begin_[v59 + 1];
      v104 = 0;
      v105 = 0;
      v106 = 0;
      Phase::EQSphere::eq_point_set_polar(v51, v65, &v104);
      v98 = 0;
      v99 = 0;
      v97 = 0;
      if (*(v104 + 1) == *v104)
      {
        break;
      }

      v66 = 1;
      do
      {
        v96 = v66;
        std::vector<unsigned int>::push_back[abi:ne200100](&v97, &v96);
        v67 = *v104;
        v68 = (*(v104 + 1) - *v104) >> 2;
        v69 = v68 > v66++;
      }

      while (v69);
      v70 = v97;
      v71 = (v98 - v97) >> 2;
      if (v98 == v97)
      {
        goto LABEL_51;
      }

      v72 = 0;
      v73 = **a3;
      do
      {
        v74 = *(v67 + 4 * v72) + (v61 * 6.2832);
        if (v74 >= 6.28318531)
        {
          v74 = v74 + -6.2832;
        }

        *(v73 + 4 * (v60 - 2 + *(v70 + v72++))) = v74;
      }

      while (v71 > v72);
      v75 = 0;
LABEL_52:
      v76 = v100.__begin_[(v59 + 2)];
      if (v65 >= v76)
      {
        v77 = v65;
        v78 = v76;
        v79 = v65;
        if (v65 <= v76)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v77 = v76;
        v78 = v65;
      }

      do
      {
        v79 = v78;
        v78 = v77 % v78;
        v77 = v79;
      }

      while (v78);
LABEL_56:
      if (v75)
      {
        v60 += v68;
        if (!v70)
        {
          goto LABEL_63;
        }
      }

      else
      {
        v80 = (*a3)[3];
        v81 = 1;
        v82 = v70;
        do
        {
          v83 = *v82;
          v82 = (v82 + 4);
          *(v80 + 4 * (v60 - 2 + v83)) = (v62 + v64) * 0.5;
          v69 = v71 > v81++;
        }

        while (v69);
        v60 += v68;
      }

      v98 = v70;
      operator delete(v70);
LABEL_63:
      v84 = v61 + ((((1.0 / v76) - (1.0 / v65)) * 0.5) + (v79 / ((v65 + v65) * v76)));
      v61 = v84 - v84;
      v97 = &v104;
      std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v97);
      v59 = v63;
      if (v63 == v58)
      {
        v85 = (v60 - 1);
        goto LABEL_66;
      }
    }

    v71 = 0;
    v70 = 0;
    LODWORD(v68) = 0;
LABEL_51:
    v75 = 1;
    goto LABEL_52;
  }

  v7 = a1;
  std::vector<std::vector<float>>::resize(a3, a1);
  if (a1)
  {
    v8 = 0;
    v9 = 24 * v7;
    do
    {
      v10 = *a3;
      LODWORD(v104) = 0;
      std::vector<float>::push_back[abi:ne200100](&v10[v8 / 8], &v104);
      v8 += 24;
    }

    while (v9 != v8);
  }

  return 0;
}

void sub_23A3D6BA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, void *a30, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a30)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 2;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 4 * a2;
    }
  }

  else
  {
    std::vector<float>::__append(a1, a2 - v2);
  }
}

void std::vector<float>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 2)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 4 * a2);
      v5 += 4 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[4 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

id Phase::GetPreferredTuningDirectory(Phase *this)
{
  v24 = *MEMORY[0x277D85DE8];
  v1 = Phase::gPreferredTuningDirectory;
  if (!Phase::gPreferredTuningDirectory)
  {
    v2 = objc_alloc_init(MEMORY[0x277CCAA00]);
    AcousticID = Phase::Controller::DeviceInfo::GetAcousticID(v2);
    if ((AcousticID & 0x100000000) != 0)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"/Library/Audio/Tunings/%d/PHASE/Voice", AcousticID];
      v17 = 0;
      if ([(Phase::Controller::DeviceInfo *)v2 fileExistsAtPath:v4 isDirectory:&v17])
      {
        if (v17 == 1)
        {
          objc_storeStrong(&Phase::gPreferredTuningDirectory, v4);
          v6 = **(Phase::Logger::GetInstance(v5) + 928);
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v19 = "ExternalStreamManager.mm";
            v20 = 1024;
            v21 = 49;
            v22 = 2112;
            v23 = v4;
            _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d using AID-specific tuning directory %@", buf, 0x1Cu);
          }
        }
      }
    }

    if (Phase::gPreferredTuningDirectory)
    {
      goto LABEL_16;
    }

    v17 = 0;
    v7 = [(Phase::Controller::DeviceInfo *)v2 fileExistsAtPath:@"/Library/Audio/Tunings/Generic/PHASE/Voice" isDirectory:&v17];
    if (v7 && v17 == 1)
    {
      v8 = Phase::gPreferredTuningDirectory;
      Phase::gPreferredTuningDirectory = @"/Library/Audio/Tunings/Generic/PHASE/Voice";

      v10 = **(Phase::Logger::GetInstance(v9) + 928);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v19 = "ExternalStreamManager.mm";
        v20 = 1024;
        v21 = 61;
        v22 = 2112;
        v23 = @"/Library/Audio/Tunings/Generic/PHASE/Voice";
        v11 = "%25s:%-5d using generic tuning directory %@";
        v12 = v10;
        v13 = OS_LOG_TYPE_DEFAULT;
        v14 = 28;
LABEL_15:
        _os_log_impl(&dword_23A302000, v12, v13, v11, buf, v14);
      }
    }

    else
    {
      v15 = **(Phase::Logger::GetInstance(v7) + 928);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v19 = "ExternalStreamManager.mm";
        v20 = 1024;
        v21 = 65;
        v11 = "%25s:%-5d cannot find tuning directory";
        v12 = v15;
        v13 = OS_LOG_TYPE_ERROR;
        v14 = 18;
        goto LABEL_15;
      }
    }

LABEL_16:

    v1 = Phase::gPreferredTuningDirectory;
  }

  return v1;
}

void sub_23A3D7FC4(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_27DF97AF8);

  _Unwind_Resume(a1);
}

void sub_23A3D8528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14)
{
  __cxa_guard_abort(&qword_27DF97AF8);

  _Unwind_Resume(a1);
}

void sub_23A3D8AB0(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_27DF97AF8);

  _Unwind_Resume(a1);
}

void sub_23A3D8EE4(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_27DF97AF8);

  _Unwind_Resume(a1);
}

void sub_23A3DA60C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  __cxa_guard_abort(&qword_27DF97AF8);

  _Unwind_Resume(a1);
}

void sub_23A3DB318(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_27DF97AF8);

  _Unwind_Resume(a1);
}

void sub_23A3DB838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  __cxa_guard_abort(&qword_27DF97AF8);

  _Unwind_Resume(a1);
}

void sub_23A3DBE0C(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_27DF97AF8);

  _Unwind_Resume(a1);
}

void sub_23A3DC48C(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_27DF97AF8);

  _Unwind_Resume(a1);
}

void sub_23A3DC9E0(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_27DF97AF8);

  _Unwind_Resume(a1);
}

void sub_23A3DCE20(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_27DF97AF8);

  _Unwind_Resume(a1);
}

void sub_23A3DD290(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_27DF97AF8);

  _Unwind_Resume(a1);
}

void sub_23A3DD700(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_27DF97AF8);

  _Unwind_Resume(a1);
}

void sub_23A3DDB70(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_27DF97AF8);

  _Unwind_Resume(a1);
}

void sub_23A3DEB6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  __cxa_guard_abort(&qword_27DF97AF8);

  _Unwind_Resume(a1);
}

void sub_23A3DF2F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(NSUUID *,NSUUID *,BOOL)>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(NSUUID *,NSUUID *,BOOL)>,void *>>>>::~unique_ptr[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void sub_23A3DF718(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_27DF97AF8);

  _Unwind_Resume(a1);
}

void sub_23A3DFCB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  __cxa_guard_abort(&qword_27DF97AF8);

  _Unwind_Resume(a1);
}

void sub_23A3E0068(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2 + 48);
    __cxa_end_catch();
    JUMPOUT(0x23A3DFF78);
  }

  _Unwind_Resume(exception_object);
}

void sub_23A3E030C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2 + 48);
    __cxa_end_catch();
    JUMPOUT(0x23A3E0218);
  }

  _Unwind_Resume(exception_object);
}

void sub_23A3E0A0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  _Unwind_Resume(a1);
}

Phase::Logger *Phase::Envelope<float>::Envelope(Phase::Logger *a1, float *a2, float *a3)
{
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  Phase::Envelope<float>::InitializeFromSingleSegment(a1, a2, a3);
  return a1;
}

void sub_23A3E0BAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<Phase::Envelope<float>::SegmentInternal,std::allocator<Phase::Envelope<float>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void applesauce::CF::DictionaryRef::~DictionaryRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void Phase::ExternalStreamSessionCommandExecutor::~ExternalStreamSessionCommandExecutor(Phase::ExternalStreamSessionCommandExecutor *this)
{
  Phase::Commandable<128,Phase::LockFreeQueueMPSC>::~Commandable(this);

  JUMPOUT(0x23EE864A0);
}

void sub_23A3E0EF4(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<Phase::Controller::StreamRenderer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284D33C40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(NSUUID *,NSUUID *,BOOL)>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,void({block_pointer} {__strong})(NSUUID *,NSUUID *,BOOL)>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

Phase::FIRFilterUtils *Phase::FIRFilterUtils::FIRFilterUtils(Phase::FIRFilterUtils *this, Phase::DFTUtils *a2, int a3)
{
  *&v14[12] = *MEMORY[0x277D85DE8];
  *&v10 = 0x447A000043FA0000;
  DWORD2(v10) = 1167867904;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(this, &v10, &v10 + 12, 3uLL);
  *(this + 3) = 0;
  v10 = xmmword_23A555670;
  v11 = unk_23A555680;
  *&v12[0] = 0x467A000045FA0000;
  *(this + 4) = 0;
  *(this + 5) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(this + 24, &v10, v12 + 8, 0xAuLL);
  v12[2] = xmmword_23A5556D8;
  v12[3] = unk_23A5556E8;
  *v13 = xmmword_23A5556F8;
  *&v13[12] = *(&xmmword_23A5556F8 + 12);
  v10 = xmmword_23A555698;
  v11 = unk_23A5556A8;
  v12[0] = xmmword_23A5556B8;
  v12[1] = unk_23A5556C8;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(this + 48, &v10, v14, 0x1FuLL);
  v6 = 0;
  *(this + 9) = a2;
  v7 = *a2;
  *(this + 20) = *a2 / 2 + 1;
  *(this + 21) = a3;
  *(this + 22) = v7;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 12) = 0;
  do
  {
    v8 = this + v6;
    *(v8 + 15) = 0;
    *(v8 + 32) = 0;
    *(v8 + 18) = 0;
    *(v8 + 19) = 0;
    *(v8 + 17) = 0;
    *(v8 + 11) = 0uLL;
    *(v8 + 12) = 0uLL;
    *(v8 + 13) = 0uLL;
    *(v8 + 14) = 0uLL;
    v6 += 128;
    *(v8 + 30) = 0;
  }

  while (v6 != 384);
  return this;
}

void sub_23A3E1904(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void Phase::FIRFilterUtils::ConstructFIREqFilter(int *a1, int a2, uint64_t a3, int a4, float *__C, float *a6, DSPComplex *a7)
{
  v31 = *MEMORY[0x277D85DE8];
  vDSP_vclr(__C, 1, a1[20]);
  vDSP_vclr(a6, 1, a1[20]);
  v14 = (*(a3 + 8) - *a3) >> 2;
  switch(v14)
  {
    case 3:
      v15 = 0;
      break;
    case 31:
      v15 = 2;
      break;
    case 10:
      v15 = 1;
      break;
    default:
      v21 = **(Phase::Logger::GetInstance(v13) + 624);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = (*(a3 + 8) - *a3) >> 2;
        *buf = 136315650;
        *&buf[4] = "FIRFilterUtils.cpp";
        v27 = 1024;
        v28 = 76;
        v29 = 2048;
        v30 = v22;
        _os_log_impl(&dword_23A302000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Given third octave filter must have 3, 10 or 31 bands (it has %lu coefficients", buf, 0x1Cu);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Given third octave filter must have 3, 10 or 31 bands (it has %lu coefficients");
  }

  *buf = a1;
  *&buf[8] = v15;
  if (atomic_load_explicit(&a1[2 * v15 + 24], memory_order_acquire) != -1)
  {
    v25 = buf;
    v24 = &v25;
    std::__call_once(&a1[2 * v15 + 24], &v24, std::__call_once_proxy[abi:ne200100]<std::tuple<Phase::FIRFilterUtils::InterpolateMagnitudeFromThirdOctaveBands(std::vector<float> const&,std::vector<float> const&,float *)::$_0 &&>>);
  }

  Phase::LookupInterpolator::InterpolateWithFractions(&a1[32 * v15 + 30], *a3, __C);
  if (a2)
  {
    if (a2 != 1)
    {
      v19 = **(Phase::Logger::GetInstance(v16) + 624);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "FIRFilterUtils.cpp";
        v27 = 1024;
        v28 = 53;
        v29 = 1024;
        LODWORD(v30) = a2;
        _os_log_impl(&dword_23A302000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument): FIR filter phase type requested is not supported. (FIRPhaseType: %d)", buf, 0x18u);
      }

      v20 = __cxa_allocate_exception(0x10uLL);
      std::invalid_argument::invalid_argument[abi:ne200100](v20, "FIR filter phase type requested is not supported. (FIRPhaseType: %d)");
    }

    v18.realp = __C;
    v18.imagp = a6;

    Phase::FIRFilterUtils::ConstructMinimumPhaseInPlace(a1, v18, a7, v17);
  }
}

uint64_t Phase::FIRFilterUtils::ConstructMinimumPhaseInPlace(Phase::FIRFilterUtils *this, DSPSplitComplex a2, DSPComplex *a3, float *a4)
{
  v4 = a3;
  imagp = a2.imagp;
  realp = a2.realp;
  v28 = *MEMORY[0x277D85DE8];
  __Z = a2;
  v8 = *(this + 20);
  if (!a3)
  {
    MEMORY[0x28223BE20](this);
    v4 = (&v22 - v9);
    bzero(&v22 - v9, v10);
  }

  v25 = v8;
  v26 = 0x800000;
  vDSP_vabs(realp, 1, realp, 1, v8);
  MEMORY[0x23EE87270](realp, 1, &v26, realp, 1, v8);
  vvlogf(realp, realp, &v25);
  v11 = *(this + 9);
  *imagp = realp[*v11 / 2];
  vDSP_DFT_Execute(*(v11 + 16), realp, imagp, realp, imagp);
  v24 = 1.0 / **(this + 9);
  vDSP_ztoc(&__Z, 1, v4, 2, *(this + 20));
  MEMORY[0x23EE87290](v4, 1, &v24, v4, 1, *(this + 22));
  v12 = *(this + 22);
  v13 = v12 / 10.0;
  v14 = (v12 + ~v13) / 2;
  v23 = 0x40000000;
  MEMORY[0x23EE87290](&v4->imag, 1, &v23, &v4->imag, 1, v14 - 1);
  if (v13)
  {
    v15 = 0;
    v16 = v14;
    v17 = v13;
    do
    {
      *(&v4->real + v16) = *(&v4->real + v16) * (cosf(((1.0 / v13) * v15) * 3.1416) + 1.0);
      ++v16;
      ++v15;
      --v17;
    }

    while (v17);
  }

  vDSP_vclr(v4 + v14 + v13, 1, *(this + 22) - (v14 + v13));
  Phase::DFTUtils::ProcessDFT(*(this + 9), v4, &__Z, 0.5);
  v18 = __Z.realp;
  v19 = __Z.imagp;
  v20 = **(this + 9) / 2;
  __Z.realp[v20] = *__Z.imagp;
  v19[v20] = 0.0;
  *v19 = 0.0;
  vvexpf(v18, v18, &v25);
  vvcosf(v4, __Z.imagp, &v25);
  vvsinf(__Z.imagp, __Z.imagp, &v25);
  MEMORY[0x23EE87230](__Z.realp, 1, __Z.imagp, 1, __Z.imagp, 1, v25);
  return MEMORY[0x23EE87230](__Z.realp, 1, v4, 1, __Z.realp, 1, v25);
}

void Phase::FIRFilterUtils::GetFrequencyVectorOfDFTBins(int *a1, void *a2)
{
  std::vector<float>::resize(a2, a1[20]);
  v4 = a2[1];
  v5 = v4 - *a2;
  if (v4 != *a2)
  {
    v6 = 0;
    v7 = v5 >> 2;
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v8 = vdupq_n_s64(v7 - 1);
    v9 = xmmword_23A554B60;
    v10 = xmmword_23A554B70;
    v11 = a1[21] / a1[22];
    v12 = vdupq_n_s64(4uLL);
    v13 = (v7 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v14 = (*a2 + 8);
    do
    {
      v15 = vmovn_s64(vcgeq_u64(v8, v10));
      if (vuzp1_s16(v15, *v8.i8).u8[0])
      {
        *(v14 - 2) = v11 * v6;
      }

      if (vuzp1_s16(v15, *&v8).i8[2])
      {
        *(v14 - 1) = v11 * (v6 + 1);
      }

      if (vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, *&v9))).i32[1])
      {
        *v14 = v11 * (v6 + 2);
        v14[1] = v11 * (v6 + 3);
      }

      v6 += 4;
      v9 = vaddq_s64(v9, v12);
      v10 = vaddq_s64(v10, v12);
      v14 += 4;
    }

    while (v13 != v6);
  }
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<Phase::FIRFilterUtils::InterpolateMagnitudeFromThirdOctaveBands(std::vector<float> const&,std::vector<float> const&,float *)::$_0 &&>>(uint64_t ***a1)
{
  v1 = **a1;
  v2 = *v1;
  v3 = *(v1 + 2);
  switch(v3)
  {
    case 2:
      Phase::LookupInterpolator::Initialize((v2 + 376), *(v2 + 84), *(v2 + 88), 0x1Fu, *(v2 + 48));
      break;
    case 1:
      Phase::LookupInterpolator::Initialize((v2 + 248), *(v2 + 84), *(v2 + 88), 0xAu, *(v2 + 24));
      break;
    case 0:
      Phase::LookupInterpolator::Initialize((v2 + 120), *(v2 + 84), *(v2 + 88), 3u, *v2);
      break;
  }
}

void Phase::SpatialModeler::generateDirectionalMetadataER(void *a1, double a2, double a3, double a4, double a5, float a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v63 = *MEMORY[0x277D85DE8];
  if (a9)
  {
    v10 = a1;
    v11 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 5);
    if (v11 >= 1)
    {
      v12 = a10;
      v15 = *(*a1 + 140);
      v46 = v11 & 0x7FFFFFFF;
      Phase::SpatialModeler::AllocMetadata<float>(a9, v46, a10);
      v17 = 0;
      v45 = 4 * v12;
      v52 = 16;
      v53 = 0;
      v51 = v12;
      v47 = v15;
      while (1)
      {
        if (v17 >= (954437177 * ((v10[1] - *v10) >> 5)))
        {
LABEL_47:
          *(a9 + 201) = 0;
          *(a9 + 204) = 0;
          return;
        }

        v18 = (*v10 + 288 * v17);
        v19 = v18[2];
        v20 = (180.0 - v18[1]) - (floorf((180.0 - v18[1]) / 360.0) * 360.0);
        if (v20 >= 360.0)
        {
          v21 = nextafterf(360.0, 0.0);
        }

        else
        {
          v21 = v20 + 0.0;
        }

        v22 = *(a9 + 8) + 12 * v17;
        *v22 = 1065353216;
        *(v22 + 4) = 90.0 - v19;
        *(v22 + 8) = v21;
        v23 = v18[3] - v18[66];
        v24 = *(a9 + 56);
        if (v23 < 0.0)
        {
          v23 = 0.0;
        }

        *(v24 + 4 * v17) = v23;
        *(*(a9 + 144) + v17) = 0;
        v25 = v18[67];
        v49 = v18[59];
        v50 = v18[58];
        v48 = v18[68];
        v26 = v18[60];
        v27 = v18[69];
        v28 = v18 + 4;
        v54 = 0;
        v55 = 0;
        v56 = 0;
        if (v15 != v12)
        {
          break;
        }

        v29 = 0;
LABEL_36:
        v36 = v10;
        v37 = *(a9 + 104);
        v38 = *(v37 + 8);
        if (*(v24 + 4 * v17) == 0.0)
        {
          if (v12)
          {
            bzero((v37 + 4 * v38 * v17 + 16), v45);
          }
        }

        else if (v12)
        {
          v39 = 1.0 / sqrtf((((v50 - v25) * (v50 - v25)) + ((v49 - v48) * (v49 - v48))) + ((v26 - v27) * (v26 - v27)));
          v40 = (*v10 + 288 * v17);
          v41 = v51;
          v42 = (*v10 + v52);
          v43 = (v37 + v38 * v53 + 16);
          do
          {
            v44 = fminf(fmaxf(v40[36], 0.0), 10.0) / 10.0;
            *v43 = ((v39 * fabsf(*v28)) * sqrtf((v44 * v44) * fminf(fmaxf(fmaxf(Phase::SpatialModeler::EarlyReflectionDetector::GetLastPathAngleError(v40, v16) + -0.86603, 0.0) / 0.040282, 0.0), 1.0))) * a6;
            if (*v42 < 0.0)
            {
              *(*(a9 + 144) + v17) = 1;
            }

            ++v42;
            ++v43;
            ++v28;
            --v41;
          }

          while (v41);
        }

        if (v29)
        {
          v55 = v29;
          operator delete(v29);
        }

        ++v17;
        v12 = v51;
        v52 += 288;
        v53 += 4;
        v10 = v36;
        v15 = v47;
        if (v17 == v46)
        {
          goto LABEL_47;
        }
      }

      std::vector<float>::resize(&v54, v12);
      switch(v15)
      {
        case 0x1F:
          v30 = 1;
          v31 = &Phase::sThirdOctaveBandFrequencies;
          break;
        case 0xA:
          v30 = 1;
          v31 = &Phase::sOctaveBandFrequencies;
          break;
        case 3:
          v30 = 1;
          v31 = &Phase::sThreeBandFrequencies;
          break;
        default:
          v30 = 0;
          v31 = 0;
          break;
      }

      v32 = v54;
      switch(v12)
      {
        case 3uLL:
          v33 = &Phase::sThreeBandFrequencies;
          if (v30)
          {
            goto LABEL_25;
          }

          break;
        case 0x1FuLL:
          v33 = &Phase::sThirdOctaveBandFrequencies;
          if (v30)
          {
            goto LABEL_25;
          }

          break;
        case 0xAuLL:
          v33 = &Phase::sOctaveBandFrequencies;
          if (!v30)
          {
            break;
          }

LABEL_25:
          Phase::GetValuesFromFrequencyResponse<float const*,float const*,float const*,float *,&float Phase::Square<float>,&float Phase::SquareRoot<float>>(v31, &v31[v15], (v18 + 4), &v28[v15], v33, &v33[v12], v54);
LABEL_35:
          v29 = v54;
          v24 = *(a9 + 56);
          v28 = v54;
          goto LABEL_36;
        default:
          break;
      }

      if ((Phase::SpatialModeler::convertSubbandCountMagnitudes(unsigned long,unsigned long,float const*,float *)::loggedOnce & 1) == 0)
      {
        v34 = **(Phase::Logger::GetInstance(v31) + 1264);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          if (v30)
          {
            v35 = v12;
          }

          else
          {
            v35 = v15;
          }

          v58 = "GeneratePlaneWaveList.hpp";
          v59 = 1024;
          v60 = 177;
          v61 = 2048;
          v62 = v35;
          _os_log_impl(&dword_23A302000, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d Unsupported subband count: %zu\n", buf, 0x1Cu);
        }

        Phase::SpatialModeler::convertSubbandCountMagnitudes(unsigned long,unsigned long,float const*,float *)::loggedOnce = 1;
      }

      bzero(v32, v45);
      goto LABEL_35;
    }
  }
}

void sub_23A3E25B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::SpatialModeler::AllocMetadata<float>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v18[4] = *MEMORY[0x277D85DE8];
  v12 = 4;
  v13 = a2;
  v14 = &v13;
  v15[0] = &v12;
  Phase::details::AllocArray<Phase::Vector<float,3ul>,std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Vector<float,3ul>>(unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Vector<float,3ul>>(unsigned long,unsigned long)::{lambda(Phase::Vector<float,3ul>*)#1} const&>(a2, &v14, &v17);
  v6 = v17;
  v17 = 0;
  v14 = v6;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](v15, v18);
  v16 = a2;
  std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](&v17);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v18);
  std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::operator=[abi:ne200100](a1 + 1, &v14);
  a1[6] = v16;
  std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](&v14);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v15);
  v12 = 4;
  v13 = a2;
  v14 = &v13;
  v15[0] = &v12;
  Phase::details::AllocArray<float,std::unique_ptr<float [],std::function<void ()(void *)>> Phase::details::AllocArray<float>(unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<float [],std::function<void ()(void *)>> Phase::details::AllocArray<float>(unsigned long,unsigned long)::{lambda(float*)#1} const&>(a2, &v14, &v17);
  v7 = v17;
  v17 = 0;
  v14 = v7;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](v15, v18);
  v16 = a2;
  std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](&v17);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v18);
  std::unique_ptr<float [],std::function<void ()(void *)>>::operator=[abi:ne200100](a1 + 7, &v14);
  a1[12] = v16;
  std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](&v14);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v15);
  v8 = operator new(4 * a2 * a3 + 16, 8uLL);
  v17 = &unk_284D338F8;
  v18[2] = &v17;
  v14 = v8;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](v15, &v17);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v17);
  v9 = v14;
  *v14 = a2;
  *(v9 + 8) = a3;
  std::unique_ptr<Phase::PackedSubbandArray<float>,std::function<void ()(void *)>>::operator=[abi:ne200100](a1 + 13, &v14);
  std::unique_ptr<Phase::PackedSubbandArray<float>,std::function<void ()(void *)>>::reset[abi:ne200100](&v14, 0);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v15);
  v12 = 1;
  v13 = a2;
  v14 = &v13;
  v15[0] = &v12;
  Phase::details::AllocArray<BOOL,std::unique_ptr<BOOL [],std::function<void ()(void *)>> Phase::details::AllocArray<BOOL>(unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<BOOL [],std::function<void ()(void *)>> Phase::details::AllocArray<BOOL>(unsigned long,unsigned long)::{lambda(BOOL*)#1} const&>(a2, &v14, &v17);
  v10 = v17;
  v17 = 0;
  v14 = v10;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](v15, v18);
  v16 = a2;
  std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](&v17);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v18);
  std::unique_ptr<BOOL [],std::function<void ()(void *)>>::operator=[abi:ne200100](a1 + 18, &v14);
  a1[23] = v16;
  std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](&v14);
  return std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v15);
}

void Phase::SpatialModeler::generateDirectionalMetadataLR(Phase::SpatialModeler::DirectivityHistogram *a1, int a2, uint64_t *a3, uint64_t a4, float a5, float a6, float a7, float a8, float a9, float a10, float a11, float a12)
{
  Phase::SpatialModeler::DirectivityHistogram::updateWasHitVector(a1);
  switch(a4)
  {
    case 31:
      v24 = 0;
      v25 = 0;
      v26 = 0;
      Phase::SpatialModeler::computePlaneWaveList_RayTracing<Phase::SpatialModeler::PhaseSpatialModelerMetadata_ThirdOctave>(a1, 1, 0xFFD9u, a2, &v24, a5, a6, a7, a8, a9, a10, a11, a12);
      Phase::SpatialModeler::convertRayTracingPlaneWaveListToDirectionalMetadata<Phase::SpatialModeler::PhaseSpatialModelerMetadata_ThirdOctave>(&v24, a3, 1);
      v27 = &v24;
      std::vector<Phase::SpatialModeler::PhaseSpatialModelerMetadata_ThirdOctave>::__destroy_vector::operator()[abi:ne200100](&v27);
      break;
    case 10:
      v24 = 0;
      v25 = 0;
      v26 = 0;
      Phase::SpatialModeler::computePlaneWaveList_RayTracing<Phase::SpatialModeler::PhaseSpatialModelerMetadata_Octave>(a1, 1, 0xFFD9u, a2, &v24, a5, a6, a7, a8, a9, a10, a11, a12);
      Phase::SpatialModeler::convertRayTracingPlaneWaveListToDirectionalMetadata<Phase::SpatialModeler::PhaseSpatialModelerMetadata_Octave>(&v24, a3, 1);
      v27 = &v24;
      std::vector<Phase::SpatialModeler::PhaseSpatialModelerMetadata_Octave>::__destroy_vector::operator()[abi:ne200100](&v27);
      break;
    case 3:
      v24 = 0;
      v25 = 0;
      v26 = 0;
      Phase::SpatialModeler::computePlaneWaveList_RayTracing<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>(a1, 1, 0xFFD9u, a2, &v24, a5, a6, a7, a8, a9, a10, a11, a12);
      Phase::SpatialModeler::convertRayTracingPlaneWaveListToDirectionalMetadata<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>(&v24, a3, 1);
      v27 = &v24;
      std::vector<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>::__destroy_vector::operator()[abi:ne200100](&v27);
      break;
  }
}

void sub_23A3E2A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void Phase::SpatialModeler::computePlaneWaveList_RayTracing<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>(uint64_t a1, char a2, unsigned int a3, int a4, void *a5, float a6, float a7, float a8, float a9, float a10, float a11, float a12, float a13)
{
  v125 = *MEMORY[0x277D85DE8];
  v19 = fabsf(a9) / -20.0;
  v21 = *(a1 + 16);
  v20 = *(a1 + 20);
  __p[0] = 0;
  __p[1] = 0;
  v120 = 0;
  v117 = 0;
  v118 = 0;
  v115 = 0;
  v116 = 0;
  if (v20 < a12)
  {
    v22 = v20;
  }

  else
  {
    v22 = a12;
  }

  v122 = 0;
  memset(v121, 0, sizeof(v121));
  v23 = __exp10f(v19);
  v112 = a1;
  v102 = *(a1 + 28);
  if (v102 == 3)
  {
    goto LABEL_22;
  }

  for (i = 0; i != 72; i += 24)
  {
    std::vector<float>::resize((v121 + i), 3uLL);
  }

  v26 = *(v112 + 7);
  if (*(v112 + 36) & 1 | (*(v112 + 6) == 0))
  {
    v27 = &Phase::SpatialModeler::EnergyHistogram::s_emptyTS;
  }

  else
  {
    v27 = *(v112 + 1);
  }

  v28 = *&v121[0];
  switch(v26)
  {
    case 0x1F:
      v30 = &Phase::sThirdOctaveBandFrequencies;
      goto LABEL_16;
    case 0xA:
      v30 = Phase::sOctaveBandFrequencies;
LABEL_16:
      Phase::GetValuesFromFrequencyResponse<float const*,float const*,float const*,float *,&float Phase::Square<float>,&float Phase::SquareRoot<float>>(v30, &v30[v26], v27, &v27[v26], Phase::sThreeBandFrequencies, Phase::sOctaveBandFrequencies, *&v121[0]);
      break;
    case 3:
      v29 = *v27;
      *(*&v121[0] + 8) = v27[2];
      *v28 = v29;
      break;
    default:
      if ((Phase::SpatialModeler::convertSubbandCountMagnitudes(unsigned long,unsigned long,float const*,float *)::loggedOnce & 1) == 0)
      {
        v31 = **(Phase::Logger::GetInstance(v25) + 1264);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "GeneratePlaneWaveList.hpp";
          *&buf[12] = 1024;
          *&buf[14] = 177;
          *&buf[18] = 2048;
          *&buf[20] = v26;
          _os_log_impl(&dword_23A302000, v31, OS_LOG_TYPE_ERROR, "%25s:%-5d Unsupported subband count: %zu\n", buf, 0x1Cu);
        }

        Phase::SpatialModeler::convertSubbandCountMagnitudes(unsigned long,unsigned long,float const*,float *)::loggedOnce = 1;
      }

      *(v28 + 8) = 0;
      *v28 = 0;
      break;
  }

LABEL_22:
  v33 = *a5;
  v32 = a5[1];
  v111 = a5;
  if (v32 != *a5)
  {
    v34 = v32 - 32;
    v35 = (v32 - 32);
    v36 = (v32 - 32);
    do
    {
      v37 = *v36;
      v36 -= 4;
      (*(v37 + 16))(v35);
      v34 -= 32;
      v38 = v35 == v33;
      v35 = v36;
    }

    while (!v38);
  }

  *(v111 + 8) = v33;
  if ((a2 & 1) == 0)
  {
    a3 = time(0);
  }

  srand(a3);
  v39 = vcvtps_u32_f32(a8 * a11);
  v114 = v39;
  v107 = vcvtps_u32_f32(v22 * a8);
  v40 = v102;
  if (v39 < v107)
  {
    v41 = 0;
    v42 = v21 * a8;
    v101 = a7 * 12.5663706 * a7 * a7;
    v108 = 0.0;
    do
    {
      if (v39 % 50 == 1)
      {
        v43 = a10;
        if (a6 >= 0.00000011921)
        {
          v43 = v101 * (v39 / a8) * (v39 / a8) / a6;
          if (v43 > a10)
          {
            v43 = a10;
          }
        }

        v108 = (1.0 / a8) * v43;
      }

      v44 = rand();
      if (vcvts_n_f32_s32(v44, 0x1FuLL) < v108)
      {
        std::vector<int>::push_back[abi:ne200100](&v115, &v114);
      }

      v45 = v39 / v42;
      v46 = v45;
      if (v41 >= v45)
      {
        goto LABEL_140;
      }

      v47 = &Phase::SpatialModeler::EnergyHistogram::s_emptyTS;
      if (v40 == 3)
      {
        v48 = v115;
        v49 = (v116 - v115) >> 2;
        if (v49)
        {
          v50 = *(v112 + 6);
          v51 = *(v112 + 7);
          if (v50 <= v41)
          {
            v52 = 1;
          }

          else
          {
            v52 = *(v112 + 36);
          }

          v53 = *(v112 + 1);
          if (v52)
          {
            v54 = &Phase::SpatialModeler::EnergyHistogram::s_emptyTS;
          }

          else
          {
            v54 = (v53 + 4 * v51 * v41);
          }

          if (v50 <= v46)
          {
            v62 = (v53 + 4 * v51 * (v50 - 1));
            if (*(v112 + 36))
            {
              v63 = &Phase::SpatialModeler::EnergyHistogram::s_emptyTS;
            }

            else
            {
              v63 = v62;
            }

            if (v50)
            {
              v55 = v63;
            }

            else
            {
              v55 = &Phase::SpatialModeler::EnergyHistogram::s_emptyTS;
            }
          }

          else if (v50 <= v46 || (*(v112 + 36) & 1) != 0)
          {
            v55 = &Phase::SpatialModeler::EnergyHistogram::s_emptyTS;
          }

          else
          {
            v55 = (v53 + 4 * v51 * v46);
          }

          goto LABEL_79;
        }

        v41 = v45;
        goto LABEL_140;
      }

      v56 = *(v112 + 7);
      if (*(v112 + 36) & 1 | (*(v112 + 6) <= v46))
      {
        v57 = &Phase::SpatialModeler::EnergyHistogram::s_emptyTS;
      }

      else
      {
        v57 = (*(v112 + 1) + 4 * v56 * v46);
      }

      v58 = v45;
      v59 = v121 + 3 * (v46 % 3);
      v60 = *v59;
      if (v56 == 31)
      {
        v64 = &Phase::sThirdOctaveBandFrequencies;
      }

      else
      {
        if (v56 != 10)
        {
          if (v56 == 3)
          {
            v61 = *v57;
            *(v60 + 8) = v57[2];
            *v60 = v61;
          }

          else
          {
            if ((Phase::SpatialModeler::convertSubbandCountMagnitudes(unsigned long,unsigned long,float const*,float *)::loggedOnce & 1) == 0)
            {
              v65 = **(Phase::Logger::GetInstance(v44) + 1264);
              if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                *&buf[4] = "GeneratePlaneWaveList.hpp";
                *&buf[12] = 1024;
                *&buf[14] = 177;
                *&buf[18] = 2048;
                *&buf[20] = v56;
                _os_log_impl(&dword_23A302000, v65, OS_LOG_TYPE_ERROR, "%25s:%-5d Unsupported subband count: %zu\n", buf, 0x1Cu);
              }

              Phase::SpatialModeler::convertSubbandCountMagnitudes(unsigned long,unsigned long,float const*,float *)::loggedOnce = 1;
            }

            *(v60 + 8) = 0;
            *v60 = 0;
          }

          goto LABEL_72;
        }

        v64 = Phase::sOctaveBandFrequencies;
      }

      Phase::GetValuesFromFrequencyResponse<float const*,float const*,float const*,float *,&float Phase::Square<float>,&float Phase::SquareRoot<float>>(v64, &v64[v56], v57, &v57[v56], Phase::sThreeBandFrequencies, Phase::sOctaveBandFrequencies, *v59);
LABEL_72:
      v48 = v115;
      v49 = (v116 - v115) >> 2;
      if (v49)
      {
        v54 = *(v121 + 3 * (v41 % 3));
        v50 = *(v112 + 6);
        if (v50 <= v58)
        {
          v55 = *(v121 + 3 * ((v50 - 1) % 3));
        }

        else
        {
          v55 = *v59;
        }

        v46 = v58;
LABEL_79:
        v66 = v41 - 1;
        if (v41 < 1)
        {
          if (v40 == 3)
          {
            if (!((v50 == 0) | *(v112 + 36) & 1))
            {
              v47 = *(v112 + 1);
            }
          }

          else
          {
            v47 = *&v121[0];
          }
        }

        else if (v40 == 3)
        {
          if ((*(v112 + 36) & 1) == 0 && v50 > v66)
          {
            v47 = (*(v112 + 1) + 4 * *(v112 + 7) * v66);
          }
        }

        else
        {
          v47 = *(v121 + 3 * (v66 % 3));
        }

        v67 = 1.0;
        if (v49 != 1)
        {
          v67 = sqrtf(1.0 / v49);
        }

        v68 = 0;
        v69 = v67 * a13;
        v70 = (((*(v112 + 4) * v41) * a8) + 0.5);
        v105 = v46;
        while (*&v47[v68] <= 1.1755e-37 && *&v54[v68] <= 1.1755e-37 && *&v55[v68] <= 1.1755e-37)
        {
          v68 += 4;
          if (v68 == 12)
          {
            goto LABEL_139;
          }
        }

        v71 = 0;
        if (v49 <= 1)
        {
          v72 = 1;
        }

        else
        {
          v72 = v49;
        }

        do
        {
          v73 = rand();
          if (v73 >= 0)
          {
            v74 = v73 & 1;
          }

          else
          {
            v74 = -(v73 & 1);
          }

          v75 = *(v115 + v71);
          v76 = rand();
          v77 = (v75 - v70) / v42;
          if (v77 < 0.0)
          {
            v77 = 0.0;
          }

          if (v77 <= 1.0)
          {
            v78 = v77;
          }

          else
          {
            v78 = 1.0;
          }

          std::vector<float>::vector[abi:ne200100](buf, 3uLL);
          v79 = vcvts_n_f32_s32(v76, 0x1FuLL);
          v80 = *buf;
          v81 = 0;
          if (v78 >= 0.5)
          {
            v83 = (v79 * ((v78 + -0.5) + (v78 + -0.5))) * (v79 * ((v78 + -0.5) + (v78 + -0.5)));
            do
            {
              *(v80 + v81) = (v83 * *&v55[v81]) + ((1.0 - v83) * *&v54[v81]);
              v81 += 4;
            }

            while (v81 != 12);
          }

          else
          {
            v82 = (v79 * ((0.5 - v78) + (0.5 - v78))) * (v79 * ((0.5 - v78) + (0.5 - v78)));
            do
            {
              *(v80 + v81) = (v82 * *&v47[v81]) + ((1.0 - v82) * *&v54[v81]);
              v81 += 4;
            }

            while (v81 != 12);
          }

          if (__p[0])
          {
            operator delete(__p[0]);
          }

          v113 = *buf;
          *__p = *buf;
          v120 = *&buf[16];
          v84 = rand();
          v85 = rand();
          if (!Phase::SpatialModeler::DirectivityHistogram::findImpactAngle_TS(v112, v41, &v118 + 1, &v118, vcvts_n_f32_s32(v84, 0x1FuLL), vcvts_n_f32_s32(v85, 0x1FuLL)))
          {
            v86 = 0;
            v87 = *(v115 + v71);
            v88 = v113;
            do
            {
              *(v113 + v86) = v69 * (sqrtf(*(v113 + v86)) * (2 * v74 - 1));
              v86 += 4;
            }

            while (v86 != 12);
            if (v113 != *(&v113 + 1))
            {
              v89 = (v87 - a4) & ~((v87 - a4) >> 31);
              while (fabsf(*v88) <= v23)
              {
                if (++v88 == *(&v113 + 1))
                {
                  goto LABEL_118;
                }
              }

              v90 = v89 / a8;
              v92 = *(v111 + 8);
              v91 = *(v111 + 16);
              if (v92 >= v91)
              {
                v95 = (v92 - *v111) >> 5;
                if ((v95 + 1) >> 59)
                {
                  std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
                }

                v96 = v91 - *v111;
                v97 = v96 >> 4;
                if (v96 >> 4 <= (v95 + 1))
                {
                  v97 = v95 + 1;
                }

                if (v96 >= 0x7FFFFFFFFFFFFFE0)
                {
                  v98 = 0x7FFFFFFFFFFFFFFLL;
                }

                else
                {
                  v98 = v97;
                }

                v124 = v111;
                if (v98)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>>(v111, v98);
                }

                *buf = 0;
                *&buf[8] = 32 * v95;
                *&buf[16] = 32 * v95;
                *&buf[24] = 0;
                Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band::PhaseSpatialModelerMetadata_3Band(32 * v95, __p, *&v118, *(&v118 + 1), v90);
                *&buf[16] += 32;
                std::vector<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>::__swap_out_circular_buffer(v111, buf);
                v94 = v111;
                v93 = *(v111 + 8);
                std::__split_buffer<Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band>::~__split_buffer(buf);
              }

              else
              {
                Phase::SpatialModeler::PhaseSpatialModelerMetadata_3Band::PhaseSpatialModelerMetadata_3Band(*(v111 + 8), __p, *&v118, *(&v118 + 1), v89 / a8);
                v93 = v92 + 32;
                v94 = v111;
                *(v111 + 8) = v93;
              }

              *(v94 + 8) = v93;
            }
          }

LABEL_118:
          ++v71;
        }

        while (v71 != v72);
        v48 = v115;
        v40 = v102;
LABEL_139:
        v116 = v48;
        v41 = v105;
        goto LABEL_140;
      }

      v41 = v58;
LABEL_140:
      v39 = v114 + 1;
      v114 = v39;
    }

    while (v39 < v107);
  }

  for (j = 0; j != -72; j -= 24)
  {
    v100 = *(&v121[3] + j);
    if (v100)
    {
      *(&v121[3] + j + 8) = v100;
      operator delete(v100);
    }
  }

  if (v115)
  {
    v116 = v115;
    operator delete(v115);
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }
}