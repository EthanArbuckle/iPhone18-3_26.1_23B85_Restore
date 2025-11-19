void sub_23A4C4EE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, char a12)
{
  if ((a12 & 1) == 0)
  {
    free(a11);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<Phase::StringId>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        if ((*(v4 - 1) & 1) == 0)
        {
          free(*(v4 - 2));
        }

        *(v4 - 3) = 0;
        *(v4 - 2) = &str_20;
        *(v4 - 8) = 1;
        v4 -= 3;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void Phase::Controller::ProfileRegistryException::DuplicateEntry::~DuplicateEntry(std::logic_error *this)
{
  std::logic_error::~logic_error(this);

  JUMPOUT(0x23EE864A0);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Profile>,void *>>>::operator()[abi:ne200100](char a1, uint64_t a2)
{
  if (a1)
  {
    std::__hash_table<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Category>,std::__unordered_map_hasher<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Category>,std::hash<Phase::StringId>,std::equal_to<Phase::StringId>,true>,std::__unordered_map_equal<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Category>,std::equal_to<Phase::StringId>,std::hash<Phase::StringId>,true>,std::allocator<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Category>>>::~__hash_table(a2 + 88);
    if ((*(a2 + 56) & 1) == 0)
    {
      free(*(a2 + 48));
    }

    *(a2 + 40) = 0;
    *(a2 + 48) = &str_20;
    *(a2 + 56) = 1;
    if ((*(a2 + 32) & 1) == 0)
    {
      free(*(a2 + 24));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void *std::__hash_table<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Profile>,std::__unordered_map_hasher<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Profile>,std::hash<Phase::StringId>,std::equal_to<Phase::StringId>,true>,std::__unordered_map_equal<Phase::StringId,std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Profile>,std::equal_to<Phase::StringId>,std::hash<Phase::StringId>,true>,std::allocator<std::__hash_value_type<Phase::StringId,Phase::Controller::ProfileRegistry::Profile>>>::find<Phase::StringId>(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  v5 = v4.u32[0];
  if (v4.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (v3 >= *&v2)
    {
      v6 = v3 % *&v2;
    }
  }

  else
  {
    v6 = (*&v2 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7)
  {
    return 0;
  }

  v8 = *v7;
  if (*v7)
  {
    v9 = a2[1];
    do
    {
      v10 = v8[1];
      if (v3 == v10)
      {
        if (v8[2] == v3)
        {
          v11 = v8[3];
          if (v11 == v9 || !strcmp(v11, v9))
          {
            return v8;
          }
        }
      }

      else
      {
        if (v5 > 1)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v6)
        {
          return 0;
        }
      }

      v8 = *v8;
    }

    while (v8);
  }

  return v8;
}

Phase::SpatialModeler::RayTracerState *Phase::SpatialModeler::RayTracerState::RayTracerState(Phase::SpatialModeler::RayTracerState *this, const Phase::SpatialModeler::RayTracerState *a2)
{
  *(this + 8) = xmmword_23A5554C0;
  v4 = a2 + 22776;
  *(this + 24) = xmmword_23A5554D0;
  v5 = this + 23664;
  v6 = this + 19416;
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
  *(this + 13) = 0u;
  v34 = this + 208;
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
  *(this + 14) = 0u;
  *(this + 116) = 1135312896;
  *(this + 59) = 0;
  *(this + 120) = 1065353216;
  __dst = this + 19008;
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
  *v6 = 1065353216;
  *(this + 1214) = 0u;
  *(this + 1215) = 0u;
  *(v6 + 10) = 1065353216;
  *(this + 19464) = 0u;
  *(this + 19480) = 0u;
  *(v6 + 20) = 1065353216;
  *(this + 2438) = 0;
  *(v6 + 24) = 0;
  *(this + 1310) = 0u;
  bzero(this + 19520, 0x598uLL);
  *(this + 2619) = this + 20960;
  *(this + 1311) = 0u;
  *(this + 1312) = 0u;
  *(this + 2679) = 0;
  *(v6 + 506) = 0;
  *(v6 + 508) = 0;
  v6[2036] = 0;
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
  v6[3112] = 1;
  *(v6 + 779) = 1097859072;
  v7.i64[0] = 0x101010101010101;
  v7.i64[1] = 0x101010101010101;
  *(this + 22536) = v7;
  *(this + 22552) = v7;
  *(v6 + 788) = 2;
  *(this + 1411) = 0u;
  *(this + 5648) = 0;
  *(this + 22596) = 1065353216;
  *(this + 22604) = 0;
  *(this + 22612) = xmmword_23A555520;
  *(this + 22628) = 1065353216;
  *(this + 22636) = 0;
  *(v6 + 807) = 1065353216;
  v6[3232] = 0;
  *(this + 2838) = 0;
  *(this + 1418) = 0u;
  *(this + 1417) = 0u;
  *(this + 1416) = 0u;
  *(this + 2839) = 0xFFFFFFFFLL;
  *(this + 2840) = 0x3FB999999999999ALL;
  *(v6 + 828) = 0;
  *(this + 22732) = 0;
  *(this + 2843) = 0x3FF0000000000000;
  *(this + 1422) = 0u;
  *(this + 1423) = 0u;
  *(this + 5696) = 0;
  *(this + 22788) = 1065353216;
  *(this + 22796) = 0;
  *(v6 + 847) = 1065353216;
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
  *(v6 + 934) = 1;
  *(this + 2896) = 0;
  *(v6 + 940) = 1065353216;
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
  *v5 = 0;
  *(this + 2902) = 0;
  *(this + 1450) = 0u;
  *(this + 1449) = 0u;
  v7.i64[0] = 0x3F0000003FLL;
  v7.i64[1] = 0x3F0000003FLL;
  v8 = vnegq_f32(v7);
  *(v5 + 4) = v8;
  *(v5 + 20) = v8;
  *(v5 + 36) = v8;
  *(v5 + 52) = v8;
  *(v5 + 68) = vneg_f32(0x3F0000003FLL);
  bzero(this + 23744, 0x508uLL);
  v9 = 0;
  v10 = 0;
  *(v5 + 688) = 0;
  *(this + 3131) = 0;
  *this = *a2;
  v11 = *(a2 + 8);
  v12 = *(a2 + 24);
  *(this + 5) = *(a2 + 5);
  *(this + 24) = v12;
  *(this + 8) = v11;
  v13 = *(a2 + 8);
  v15 = *(a2 + 5);
  v14 = *(a2 + 6);
  *(this + 7) = *(a2 + 7);
  *(this + 8) = v13;
  *(this + 5) = v15;
  *(this + 6) = v14;
  v17 = *(a2 + 10);
  v16 = *(a2 + 11);
  v18 = *(a2 + 9);
  *(this + 48) = *(a2 + 48);
  *(this + 10) = v17;
  *(this + 11) = v16;
  *(this + 9) = v18;
  v19 = *(a2 + 4);
  *(this + 3) = *(a2 + 3);
  *(this + 4) = v19;
  do
  {
    v20 = v9;
    v21 = 3;
    do
    {
      v22 = (this + v20);
      v22[124] = *(a2 + v20 + 496);
      v22[125] = *(a2 + v20 + 500);
      v22[126] = *(a2 + v20 + 504);
      v22[127] = *(a2 + v20 + 508);
      v22[128] = *(a2 + v20 + 512);
      v22[129] = *(a2 + v20 + 516);
      v20 += 24;
      --v21;
    }

    while (v21);
    ++v10;
    v9 += 72;
  }

  while (v10 != 256);
  if (this != a2)
  {
    std::vector<Phase::SpatialModeler::PhaseRoomSimulationSoundSource>::__assign_with_size[abi:ne200100]<Phase::SpatialModeler::PhaseRoomSimulationSoundSource*,Phase::SpatialModeler::PhaseRoomSimulationSoundSource*>(this + 18928, *(a2 + 2366), *(a2 + 2367), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 2367) - *(a2 + 2366)) >> 3));
    std::vector<Phase::SpatialModeler::DirectivityHistogram *>::__assign_with_size[abi:ne200100]<Phase::SpatialModeler::DirectivityHistogram **,Phase::SpatialModeler::DirectivityHistogram **>(this + 2369, *(a2 + 2369), *(a2 + 2370), (*(a2 + 2370) - *(a2 + 2369)) >> 3);
    std::vector<Phase::SpatialModeler::DirectivityHistogram *>::__assign_with_size[abi:ne200100]<Phase::SpatialModeler::DirectivityHistogram **,Phase::SpatialModeler::DirectivityHistogram **>(this + 2372, *(a2 + 2372), *(a2 + 2373), (*(a2 + 2373) - *(a2 + 2372)) >> 3);
  }

  memcpy(__dst, a2 + 19008, 0x160uLL);
  memcpy(v34, a2 + 208, 0x114uLL);
  std::__tree<std::__value_type<unsigned long long,Phase::SpatialModeler::SourceListenerResult>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,Phase::SpatialModeler::SourceListenerResult>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,Phase::SpatialModeler::SourceListenerResult>>>::destroy(this + 19360, *(this + 2421));
  *(this + 2420) = this + 19368;
  *(this + 19368) = 0u;
  std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>>>::clear(this + 19384);
  std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRClusterResult>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRClusterResult>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRClusterResult>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRClusterResult>>>::clear(this + 19424);
  Phase::SpatialModeler::RayTracerState::CopySourceListenerResults(this, a2);
  Phase::SpatialModeler::RayTracerState::CopyERClusteringResults(this, *(a2 + 2425));
  Phase::SpatialModeler::RayTracerState::CopyLRClusteringResults(this, *(a2 + 2430));
  Phase::SpatialModeler::RayTracerState::CopyRoomStatResults(this, a2);
  v23 = *(a2 + 1315);
  v24 = *(a2 + 1316);
  v25 = *(a2 + 1318);
  *(this + 1317) = *(a2 + 1317);
  *(this + 1318) = v25;
  *(this + 1315) = v23;
  *(this + 1316) = v24;
  v26 = *(a2 + 1319);
  v27 = *(a2 + 1320);
  v28 = *(a2 + 1322);
  *(this + 1321) = *(a2 + 1321);
  *(this + 1322) = v28;
  *(this + 1319) = v26;
  *(this + 1320) = v27;
  v29 = *(a2 + 2679);
  *(this + 5360) = *(a2 + 5360);
  *(this + 2679) = v29;
  *(v6 + 127) = *(a2 + 21448);
  Phase::Geometry::Listener::operator=((v6 + 3152), a2 + 22568);
  *(this + 2846) = *(a2 + 2846);
  *(v6 + 840) = *v4;
  *(v6 + 841) = *(v4 + 1);
  *(v6 + 842) = *(v4 + 2);
  *(v6 + 843) = *(v4 + 3);
  *(v6 + 844) = *(v4 + 4);
  *(v6 + 845) = *(v4 + 5);
  *(v6 + 846) = *(v4 + 6);
  *(v6 + 847) = *(v4 + 7);
  Phase::SpatialModeler::ImportanceSampling::operator=(this + 2896, a2 + 23168);
  Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView::operator=(this + 23200, a2 + 23200);
  *(v5 + 688) = *(v4 + 1132);
  *(this + 3131) = *(a2 + 3131);
  if (this != a2)
  {
    std::__tree<std::__value_type<unsigned long long,Phase::SpatialModeler::RendererInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,Phase::SpatialModeler::RendererInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,Phase::SpatialModeler::RendererInfo>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<unsigned long long,Phase::SpatialModeler::RendererInfo>,std::__tree_node<std::__value_type<unsigned long long,Phase::SpatialModeler::RendererInfo>,void *> *,long>>(this + 2810, *(a2 + 2810), a2 + 2811);
    std::__tree<std::__value_type<unsigned long long,Phase::SpatialModeler::RendererInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,Phase::SpatialModeler::RendererInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,Phase::SpatialModeler::RendererInfo>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<unsigned long long,Phase::SpatialModeler::RendererInfo>,std::__tree_node<std::__value_type<unsigned long long,Phase::SpatialModeler::RendererInfo>,void *> *,long>>(this + 2813, *(a2 + 2813), a2 + 2814);
  }

  v30 = *(a2 + 1408);
  v31 = *(a2 + 1409);
  *(v6 + 393) = *(a2 + 2820);
  *(v6 + 3112) = v30;
  *(v6 + 3128) = v31;
  return this;
}

void sub_23A4C59E8(_Unwind_Exception *a1)
{
  Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView::~RoomSimulationDebugView((v1 + 23200));
  Phase::SpatialModeler::ImportanceSampling::~ImportanceSampling((v1 + v4));
  Phase::Geometry::Listener::~Listener((v3 + 3152));
  Phase::SpatialModeler::RendererStates::~RendererStates((v1 + 22480));
  Phase::SpatialModeler::RayTracerState::Results::~Results((v1 + v2));
  Phase::SpatialModeler::RayTracerState::State::~State((v1 + 496));
  _Unwind_Resume(a1);
}

void Phase::SpatialModeler::RayTracerState::CopySourceListenerResults(Phase::SpatialModeler::RayTracerState *this, const Phase::SpatialModeler::RayTracerState *a2)
{
  v2 = *(a2 + 2420);
  v3 = a2 + 19368;
  if (v2 != a2 + 19368)
  {
    do
    {
      v5 = *(v2 + 4);
      v6 = *(v2 + 5);
      v15 = v5;
      v16 = v6;
      v7 = *(v2 + 6);
      v17 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = *(v2 + 8);
      v18 = *(v2 + 7);
      v19 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v20 = *(v2 + 18);
      *&v14 = &v15;
      v9 = std::__tree<std::__value_type<unsigned long long,Phase::SpatialModeler::SourceListenerResult>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,Phase::SpatialModeler::SourceListenerResult>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,Phase::SpatialModeler::SourceListenerResult>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 19360, v5);
      if (v16)
      {
        std::allocate_shared[abi:ne200100]<Phase::SpatialModeler::EarlyReflectionDetector,std::allocator<Phase::SpatialModeler::EarlyReflectionDetector>,Phase::SpatialModeler::EarlyReflectionDetector&,0>();
      }

      if (v18)
      {
        Phase::SpatialModeler::RayTracerState::CopyDirectivityHistogram(this, &v18, &v14);
        v10 = v9[8];
        *(v9 + 7) = v14;
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }
      }

      *(v9 + 18) = v20;
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }

      v11 = *(v2 + 1);
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = *(v2 + 2);
          v13 = *v12 == v2;
          v2 = v12;
        }

        while (!v13);
      }

      v2 = v12;
    }

    while (v12 != v3);
  }
}

void sub_23A4C5B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::pair<unsigned long long const,Phase::SpatialModeler::SourceListenerResult>::~pair(va);
  _Unwind_Resume(a1);
}

__n128 Phase::SpatialModeler::RayTracerState::CopyERClusteringResults(Phase::SpatialModeler::RayTracerState *this, const Phase::SpatialModeler::RayTracerState *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v4 = std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 2423, v2 + 2);
      if (*(v2 + 21))
      {
        Phase::SpatialModeler::CopyMetadata<float>(v2 + 64, &v4[4]);
      }

      if (v2 != v4)
      {
        v4[3].n128_u32[2] = *(v2 + 14);
        std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>,void *> *>>(&v4[1].n128_u64[1], *(v2 + 5), 0);
      }

      result = *(v2 + 17);
      v4[17] = result;
      v2 = *v2;
    }

    while (v2);
  }

  return result;
}

float Phase::SpatialModeler::RayTracerState::CopyLRClusteringResults(Phase::SpatialModeler::RayTracerState *this, const Phase::SpatialModeler::RayTracerState *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      *&v7 = v2 + 16;
      v4 = std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRClusterResult>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRClusterResult>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRClusterResult>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRClusterResult>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 2428, v2 + 2);
      if (*(v2 + 8))
      {
        Phase::SpatialModeler::RayTracerState::CopyDirectivityHistogram(this, v2 + 8, &v7);
        v5 = *(v4 + 9);
        *(v4 + 4) = v7;
        if (v5)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v5);
        }
      }

      if (v2 != v4)
      {
        *(v4 + 14) = *(v2 + 14);
        std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::ClusteredSourceInfo>,void *> *>>(v4 + 3, *(v2 + 5), 0);
      }

      *(v4 + 88) = *(v2 + 88);
      result = *(v2 + 20);
      *(v4 + 20) = result;
      v2 = *v2;
    }

    while (v2);
  }

  return result;
}

float Phase::SpatialModeler::RayTracerState::CopyRoomStatResults(Phase::SpatialModeler::RayTracerState *this, const Phase::SpatialModeler::RayTracerState *a2)
{
  v4 = this + 20480;
  i = a2 + 20480;
  memcpy(this + 19504, a2 + 19504, 0x590uLL);
  if (this == a2)
  {
    v27 = *(a2 + 1315);
    v28 = *(a2 + 1316);
    v29 = *(a2 + 1317);
    *(this + 1318) = *(a2 + 1318);
    *(this + 1317) = v29;
    *(this + 1316) = v28;
    *(this + 1315) = v27;
    v30 = *(a2 + 1319);
    v31 = *(a2 + 1320);
    v32 = *(a2 + 1321);
    *(this + 1322) = *(a2 + 1322);
    *(this + 1321) = v32;
    *(this + 1320) = v31;
    *(this + 1319) = v30;
    v33 = *(a2 + 2679);
    *(this + 5360) = *(a2 + 5360);
    *(this + 2679) = v33;
    *(this + 21448) = *(a2 + 21448);
  }

  else
  {
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(this + 2616, *(a2 + 2616), *(a2 + 2617), (*(a2 + 2617) - *(a2 + 2616)) >> 2);
    v6 = *(a2 + 1315);
    v7 = *(a2 + 1316);
    v8 = *(a2 + 1317);
    *(this + 1318) = *(a2 + 1318);
    *(this + 1317) = v8;
    *(this + 1316) = v7;
    *(this + 1315) = v6;
    v9 = *(a2 + 1319);
    v10 = *(a2 + 1320);
    v11 = *(a2 + 1321);
    *(this + 1322) = *(a2 + 1322);
    *(this + 1321) = v11;
    *(this + 1320) = v10;
    *(this + 1319) = v9;
    v12 = *(a2 + 2679);
    *(this + 5360) = *(a2 + 5360);
    *(this + 2679) = v12;
    *(this + 21448) = *(a2 + 21448);
    v13 = *(a2 + 2619);
    v14 = a2 + 20960;
    if (*(this + 2621))
    {
      v38 = i;
      v15 = *(this + 2619);
      v16 = (this + 20960);
      *(this + 2619) = this + 20960;
      *(*(this + 2620) + 16) = 0;
      *(this + 1310) = 0u;
      if (*(v15 + 8))
      {
        v17 = *(v15 + 8);
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        v37 = v4;
        v18 = std::__tree<std::__value_type<unsigned long long,Phase::SpatialModeler::RendererInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,Phase::SpatialModeler::RendererInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,Phase::SpatialModeler::RendererInfo>>>::_DetachedTreeCache::__detach_next(v17);
        if (v13 == v14)
        {
          v20 = v17;
        }

        else
        {
          v19 = v13;
          do
          {
            v20 = v18;
            v21 = *(v19 + 4);
            *(v17 + 32) = v21;
            *(v17 + 40) = *(v19 + 10);
            v22 = *v16;
            v23 = (this + 20960);
            v24 = (this + 20960);
            if (*v16)
            {
              do
              {
                while (1)
                {
                  v23 = v22;
                  if (v21 >= v22[4])
                  {
                    break;
                  }

                  v22 = *v22;
                  v24 = v23;
                  if (!*v23)
                  {
                    goto LABEL_15;
                  }
                }

                v22 = v22[1];
              }

              while (v22);
              v24 = v23 + 1;
            }

LABEL_15:
            std::__tree<Phase::SpatialCategory>::__insert_node_at(this + 2619, v23, v24, v17);
            if (v18)
            {
              v18 = std::__tree<std::__value_type<unsigned long long,Phase::SpatialModeler::RendererInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,Phase::SpatialModeler::RendererInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,Phase::SpatialModeler::RendererInfo>>>::_DetachedTreeCache::__detach_next(v18);
            }

            else
            {
              v18 = 0;
            }

            v25 = *(v19 + 1);
            if (v25)
            {
              do
              {
                v13 = v25;
                v25 = *v25;
              }

              while (v25);
            }

            else
            {
              do
              {
                v13 = *(v19 + 2);
                v26 = *v13 == v19;
                v19 = v13;
              }

              while (!v26);
            }

            if (!v20)
            {
              break;
            }

            v17 = v20;
            v19 = v13;
          }

          while (v13 != v14);
        }

        std::__tree<Phase::SpatialCategory>::destroy(this + 20952, v20);
        if (v18)
        {
          v34 = v18[2];
          v4 = v37;
          for (i = v38; v34; v34 = v34[2])
          {
            v18 = v34;
          }

          std::__tree<Phase::SpatialCategory>::destroy(this + 20952, v18);
        }

        else
        {
          v4 = v37;
          i = v38;
        }
      }

      else
      {
        std::__tree<Phase::SpatialCategory>::destroy(this + 20952, 0);
        i = v38;
      }
    }

    if (v13 != v14)
    {
      operator new();
    }
  }

  *(v4 + 124) = *(i + 124);
  *(v4 + 125) = *(i + 125);
  *(v4 + 126) = *(i + 126);
  *(v4 + 127) = *(i + 127);
  *(v4 + 128) = *(i + 128);
  *(v4 + 129) = *(i + 129);
  v35 = *(a2 + 21016);
  *(this + 21000) = *(a2 + 21000);
  *(this + 21016) = v35;
  *(v4 + 138) = *(i + 138);
  result = *(i + 139);
  *(v4 + 139) = result;
  return result;
}

void Phase::SpatialModeler::RayTracerState::~RayTracerState(void **this)
{
  Phase::SpatialModeler::RayTracerState::FreeSourceListenerResultsDirectivityHistograms(this);
  Phase::SpatialModeler::RayTracerState::FreeLRClusteringResultsDirectivityHistograms(this);
  Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView::~RoomSimulationDebugView((this + 2900));
  free(this[2898]);
  free(this[2899]);
  v2 = this[2836];
  if (v2)
  {
    this[2837] = v2;
    operator delete(v2);
  }

  v3 = this[2833];
  if (v3)
  {
    this[2834] = v3;
    operator delete(v3);
  }

  std::__tree<Phase::SpatialCategory>::destroy((this + 2813), this[2814]);
  std::__tree<Phase::SpatialCategory>::destroy((this + 2810), this[2811]);
  std::__tree<Phase::SpatialCategory>::destroy((this + 2619), this[2620]);
  v4 = this[2616];
  if (v4)
  {
    this[2617] = v4;
    operator delete(v4);
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRSpatialResult>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRSpatialResult>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRSpatialResult>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRSpatialResult>>>::~__hash_table((this + 2433));
  std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRClusterResult>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRClusterResult>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRClusterResult>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRClusterResult>>>::~__hash_table((this + 2428));
  std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>>>::~__hash_table((this + 2423));
  std::__tree<std::__value_type<unsigned long long,Phase::SpatialModeler::SourceListenerResult>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,Phase::SpatialModeler::SourceListenerResult>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,Phase::SpatialModeler::SourceListenerResult>>>::destroy((this + 2420), this[2421]);
  v5 = this[2372];
  if (v5)
  {
    this[2373] = v5;
    operator delete(v5);
  }

  v6 = this[2369];
  if (v6)
  {
    this[2370] = v6;
    operator delete(v6);
  }

  v7 = this[2366];
  if (v7)
  {
    this[2367] = v7;
    operator delete(v7);
  }
}

void Phase::SpatialModeler::RayTracerState::FreeSourceListenerResultsDirectivityHistograms(Phase::SpatialModeler::RayTracerState *this)
{
  if (*this)
  {
    v2 = *(this + 2420);
    v3 = this + 19368;
    if (v2 != this + 19368)
    {
      do
      {
        if (*(v2 + 7))
        {
          Phase::SpatialModeler::RayTracerState::FreeDirectivityHistogram(this, v2 + 7);
        }

        v4 = *(v2 + 1);
        if (v4)
        {
          do
          {
            v5 = v4;
            v4 = *v4;
          }

          while (v4);
        }

        else
        {
          do
          {
            v5 = *(v2 + 2);
            v6 = *v5 == v2;
            v2 = v5;
          }

          while (!v6);
        }

        v2 = v5;
      }

      while (v5 != v3);
    }
  }
}

void Phase::SpatialModeler::RayTracerState::FreeLRClusteringResultsDirectivityHistograms(Phase::SpatialModeler::RayTracerState *this)
{
  if (*this)
  {
    for (i = *(this + 2430); i; i = *i)
    {
      if (i[8])
      {
        Phase::SpatialModeler::RayTracerState::FreeDirectivityHistogram(this, i + 8);
      }
    }
  }
}

uint64_t Phase::SpatialModeler::RayTracerState::operator=(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = 0;
  *a1 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v7;
  *(a1 + 8) = v6;
  v8 = *(a2 + 128);
  v10 = *(a2 + 80);
  v9 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v8;
  *(a1 + 80) = v10;
  *(a1 + 96) = v9;
  v12 = *(a2 + 160);
  v11 = *(a2 + 176);
  v13 = *(a2 + 144);
  *(a1 + 192) = *(a2 + 192);
  v14 = a1 + 22776;
  v15 = a2 + 22776;
  *(a1 + 160) = v12;
  *(a1 + 176) = v11;
  *(a1 + 144) = v13;
  v16 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v16;
  do
  {
    v17 = v4;
    v18 = 3;
    do
    {
      v19 = (a1 + v17);
      v19[124] = *(a2 + v17 + 496);
      v19[125] = *(a2 + v17 + 500);
      v19[126] = *(a2 + v17 + 504);
      v19[127] = *(a2 + v17 + 508);
      v19[128] = *(a2 + v17 + 512);
      v19[129] = *(a2 + v17 + 516);
      v17 += 24;
      --v18;
    }

    while (v18);
    ++v5;
    v4 += 72;
  }

  while (v5 != 256);
  if (a1 != a2)
  {
    std::vector<Phase::SpatialModeler::PhaseRoomSimulationSoundSource>::__assign_with_size[abi:ne200100]<Phase::SpatialModeler::PhaseRoomSimulationSoundSource*,Phase::SpatialModeler::PhaseRoomSimulationSoundSource*>(a1 + 18928, *(a2 + 18928), *(a2 + 18936), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 18936) - *(a2 + 18928)) >> 3));
    std::vector<Phase::SpatialModeler::DirectivityHistogram *>::__assign_with_size[abi:ne200100]<Phase::SpatialModeler::DirectivityHistogram **,Phase::SpatialModeler::DirectivityHistogram **>((a1 + 18952), *(a2 + 18952), *(a2 + 18960), (*(a2 + 18960) - *(a2 + 18952)) >> 3);
    std::vector<Phase::SpatialModeler::DirectivityHistogram *>::__assign_with_size[abi:ne200100]<Phase::SpatialModeler::DirectivityHistogram **,Phase::SpatialModeler::DirectivityHistogram **>((a1 + 18976), *(a2 + 18976), *(a2 + 18984), (*(a2 + 18984) - *(a2 + 18976)) >> 3);
  }

  memcpy((a1 + 19008), (a2 + 19008), 0x160uLL);
  memcpy((a1 + 208), (a2 + 208), 0x114uLL);
  Phase::Geometry::Listener::operator=(a1 + 22568, a2 + 22568);
  *(a1 + 22768) = *(a2 + 22768);
  *v14 = *v15;
  *(v14 + 4) = *(v15 + 4);
  *(v14 + 8) = *(v15 + 8);
  *(v14 + 12) = *(v15 + 12);
  *(v14 + 16) = *(v15 + 16);
  *(v14 + 20) = *(v15 + 20);
  *(v14 + 24) = *(v15 + 24);
  *(v14 + 28) = *(v15 + 28);
  Phase::SpatialModeler::RayTracerState::FreeSourceListenerResultsDirectivityHistograms(a1);
  Phase::SpatialModeler::RayTracerState::FreeLRClusteringResultsDirectivityHistograms(a1);
  std::__tree<std::__value_type<unsigned long long,Phase::SpatialModeler::SourceListenerResult>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,Phase::SpatialModeler::SourceListenerResult>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,Phase::SpatialModeler::SourceListenerResult>>>::destroy(a1 + 19360, *(a1 + 19368));
  *(a1 + 19360) = a1 + 19368;
  *(a1 + 19368) = 0u;
  std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>>>::clear(a1 + 19384);
  std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRClusterResult>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRClusterResult>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRClusterResult>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRClusterResult>>>::clear(a1 + 19424);
  Phase::SpatialModeler::RayTracerState::CopySourceListenerResults(a1, a2);
  Phase::SpatialModeler::RayTracerState::CopyERClusteringResults(a1, *(a2 + 19400));
  Phase::SpatialModeler::RayTracerState::CopyLRClusteringResults(a1, *(a2 + 19440));
  Phase::SpatialModeler::RayTracerState::CopyRoomStatResults(a1, a2);
  v20 = *(a2 + 21040);
  v21 = *(a2 + 21056);
  v22 = *(a2 + 21072);
  *(a1 + 21088) = *(a2 + 21088);
  *(a1 + 21072) = v22;
  *(a1 + 21056) = v21;
  *(a1 + 21040) = v20;
  v23 = *(a2 + 21104);
  v24 = *(a2 + 21120);
  v25 = *(a2 + 21136);
  *(a1 + 21152) = *(a2 + 21152);
  *(a1 + 21136) = v25;
  *(a1 + 21120) = v24;
  *(a1 + 21104) = v23;
  v26 = *(a2 + 21432);
  *(a1 + 21440) = *(a2 + 21440);
  *(a1 + 21432) = v26;
  *(a1 + 21448) = *(a2 + 21448);
  Phase::SpatialModeler::ImportanceSampling::operator=((a1 + 23168), a2 + 23168);
  Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView::operator=(a1 + 23200, a2 + 23200);
  *(v14 + 2264) = *(v15 + 2264);
  *(a1 + 25048) = *(a2 + 25048);
  if (a1 != a2)
  {
    std::__tree<std::__value_type<unsigned long long,Phase::SpatialModeler::RendererInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,Phase::SpatialModeler::RendererInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,Phase::SpatialModeler::RendererInfo>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<unsigned long long,Phase::SpatialModeler::RendererInfo>,std::__tree_node<std::__value_type<unsigned long long,Phase::SpatialModeler::RendererInfo>,void *> *,long>>((a1 + 22480), *(a2 + 22480), (a2 + 22488));
    std::__tree<std::__value_type<unsigned long long,Phase::SpatialModeler::RendererInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,Phase::SpatialModeler::RendererInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,Phase::SpatialModeler::RendererInfo>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<unsigned long long,Phase::SpatialModeler::RendererInfo>,std::__tree_node<std::__value_type<unsigned long long,Phase::SpatialModeler::RendererInfo>,void *> *,long>>((a1 + 22504), *(a2 + 22504), (a2 + 22512));
  }

  v27 = *(a2 + 22528);
  v28 = *(a2 + 22544);
  *(a1 + 22560) = *(a2 + 22560);
  *(a1 + 22544) = v28;
  *(a1 + 22528) = v27;
  return a1;
}

void Phase::SpatialModeler::RayTracerState::CopyDirectivityHistogram(Phase::Logger *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*a2)
  {
    *a3 = 0;
    a3[1] = 0;
    if (!*a1 || (Phase::SpatialModeler::HistogramPtrStack::Pop(v8), v6 = *v8, v5 = *&v8[8], *a3 = *v8, a3[1] = v5, !v6))
    {
      _ZNSt3__115allocate_sharedB8ne200100IN5Phase14SpatialModeler20DirectivityHistogramENS_9allocatorIS3_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
    }

    Phase::SpatialModeler::DirectivityHistogram::operator=(v6, *a2);
  }

  else
  {
    v7 = **(Phase::Logger::GetInstance(a1) + 1264);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 136315394;
      *&v8[4] = "RayTracerState.cpp";
      *&v8[12] = 1024;
      *&v8[14] = 1400;
      _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Copying a nullptr DirectivityHistogram.", v8, 0x12u);
    }

    *a3 = 0;
    a3[1] = 0;
  }
}

void sub_23A4C677C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void Phase::SpatialModeler::RayTracerState::CopyStateAndAssignToModelerInstance(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = 0;
  v11 = 0;
  v47 = *MEMORY[0x277D85DE8];
  *a1 = a2;
  v12 = *(a5 + 8);
  v13 = *(a5 + 24);
  *(a1 + 40) = *(a5 + 40);
  *(a1 + 24) = v13;
  *(a1 + 8) = v12;
  v14 = *(a5 + 128);
  v16 = *(a5 + 80);
  v15 = *(a5 + 96);
  *(a1 + 112) = *(a5 + 112);
  *(a1 + 128) = v14;
  *(a1 + 80) = v16;
  *(a1 + 96) = v15;
  v18 = *(a5 + 160);
  v17 = *(a5 + 176);
  v19 = *(a5 + 144);
  *(a1 + 192) = *(a5 + 192);
  v20 = a1 + 22776;
  v21 = a5 + 22776;
  *(a1 + 160) = v18;
  *(a1 + 176) = v17;
  *(a1 + 144) = v19;
  v22 = *(a5 + 64);
  *(a1 + 48) = *(a5 + 48);
  *(a1 + 64) = v22;
  do
  {
    v23 = v10;
    v24 = 3;
    do
    {
      v25 = (a1 + v23);
      v25[124] = *(a5 + v23 + 496);
      v25[125] = *(a5 + v23 + 500);
      v25[126] = *(a5 + v23 + 504);
      v25[127] = *(a5 + v23 + 508);
      v25[128] = *(a5 + v23 + 512);
      v25[129] = *(a5 + v23 + 516);
      v23 += 24;
      --v24;
    }

    while (v24);
    ++v11;
    v10 += 72;
  }

  while (v11 != 256);
  if (a1 != a5)
  {
    std::vector<Phase::SpatialModeler::PhaseRoomSimulationSoundSource>::__assign_with_size[abi:ne200100]<Phase::SpatialModeler::PhaseRoomSimulationSoundSource*,Phase::SpatialModeler::PhaseRoomSimulationSoundSource*>(a1 + 18928, *(a5 + 18928), *(a5 + 18936), 0x6DB6DB6DB6DB6DB7 * ((*(a5 + 18936) - *(a5 + 18928)) >> 3));
    std::vector<Phase::SpatialModeler::DirectivityHistogram *>::__assign_with_size[abi:ne200100]<Phase::SpatialModeler::DirectivityHistogram **,Phase::SpatialModeler::DirectivityHistogram **>((a1 + 18952), *(a5 + 18952), *(a5 + 18960), (*(a5 + 18960) - *(a5 + 18952)) >> 3);
    std::vector<Phase::SpatialModeler::DirectivityHistogram *>::__assign_with_size[abi:ne200100]<Phase::SpatialModeler::DirectivityHistogram **,Phase::SpatialModeler::DirectivityHistogram **>((a1 + 18976), *(a5 + 18976), *(a5 + 18984), (*(a5 + 18984) - *(a5 + 18976)) >> 3);
  }

  memcpy((a1 + 19008), (a5 + 19008), 0x160uLL);
  memcpy((a1 + 208), (a5 + 208), 0x114uLL);
  Phase::Geometry::Listener::operator=(a1 + 22568, a5 + 22568);
  *(a1 + 22768) = *(a5 + 22768);
  *v20 = *v21;
  *(v20 + 4) = *(v21 + 4);
  *(v20 + 8) = *(v21 + 8);
  *(v20 + 12) = *(v21 + 12);
  *(v20 + 16) = *(v21 + 16);
  *(v20 + 20) = *(v21 + 20);
  *(v20 + 24) = *(v21 + 24);
  *(v20 + 28) = *(v21 + 28);
  Phase::SpatialModeler::RayTracerState::FreeSourceListenerResultsDirectivityHistograms(a1);
  std::__tree<std::__value_type<unsigned long long,Phase::SpatialModeler::SourceListenerResult>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,Phase::SpatialModeler::SourceListenerResult>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,Phase::SpatialModeler::SourceListenerResult>>>::destroy(a1 + 19360, *(a1 + 19368));
  *(a1 + 19360) = a1 + 19368;
  *(a1 + 19368) = 0u;
  std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleERClusterResult>>>::clear(a1 + 19384);
  Phase::SpatialModeler::RayTracerState::CopySourceListenerResults(a1, a5);
  Phase::SpatialModeler::RayTracerState::CopyERClusteringResults(a1, *(a5 + 19400));
  Phase::SpatialModeler::RayTracerState::CopyRoomStatResults(a1, a5);
  v26 = *(a5 + 21040);
  v27 = *(a5 + 21056);
  v28 = *(a5 + 21072);
  *(a1 + 21088) = *(a5 + 21088);
  *(a1 + 21072) = v28;
  *(a1 + 21056) = v27;
  *(a1 + 21040) = v26;
  v29 = *(a5 + 21104);
  v30 = *(a5 + 21120);
  v31 = *(a5 + 21136);
  *(a1 + 21152) = *(a5 + 21152);
  *(a1 + 21136) = v31;
  *(a1 + 21120) = v30;
  *(a1 + 21104) = v29;
  v32 = *(a5 + 21432);
  *(a1 + 21440) = *(a5 + 21440);
  *(a1 + 21432) = v32;
  *(a1 + 21448) = *(a5 + 21448);
  Phase::SpatialModeler::ImportanceSampling::operator=((a1 + 23168), a5 + 23168);
  v33 = Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView::operator=(a1 + 23200, a5 + 23200);
  *(v20 + 2264) = *(v21 + 2264);
  *(a1 + 25048) = *(a5 + 25048);
  *(a1 + 18936) = *(a1 + 18928);
  if (a3 && a3[5])
  {
    v34 = *a3;
    do
    {
      v35 = *(v34 + 144);
      if (*(a6 + 184) > v35 && (v36 = *(a6 + 168) + 24 * v35, *(v36 + 20) == HIDWORD(v35)) && (v37 = *v36) != 0 && *v37 == 3)
      {
        if (*(v34 + 208) == 3)
        {
          v38 = *(v34 + 216);
        }

        else
        {
          v38 = 0;
        }

        v41 = *(v37 + 8);
        v42 = *(v37 + 64);
        *&buf[8] = *(v37 + 48);
        *buf = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *(a4 + 8)) ^ ((0xC6A4A7935BD1E995 * *(a4 + 8)) >> 47))) ^ (0x35A98F4D286A90B9 * ((0xC6A4A7935BD1E995 * v41) ^ ((0xC6A4A7935BD1E995 * v41) >> 47)) + 3864292196u)) + 3864292196u) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v38) ^ ((0xC6A4A7935BD1E995 * v38) >> 47)))) + 3864292196u;
        *&buf[24] = v42;
        v45 = v38;
        v46 = v41;
        std::vector<Phase::SpatialModeler::PhaseRoomSimulationSoundSource>::push_back[abi:ne200100]((a1 + 18928), buf);
      }

      else
      {
        v39 = **(Phase::Logger::GetInstance(v33) + 1264);
        v33 = os_log_type_enabled(v39, OS_LOG_TYPE_ERROR);
        if (v33)
        {
          v40 = *(v34 + 144);
          *buf = 136315650;
          *&buf[4] = "RayTracerState.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 272;
          *&buf[18] = 2048;
          *&buf[20] = v40;
          _os_log_impl(&dword_23A302000, v39, OS_LOG_TYPE_ERROR, "%25s:%-5d Source provided to cluster query (%llu) was not found in the Geometry Layer", buf, 0x1Cu);
        }
      }

      v34 += 304;
    }

    while (v34 != *a3 + 304 * a3[5]);
  }
}

void std::vector<Phase::SpatialModeler::PhaseRoomSimulationSoundSource>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v4 >= v5)
  {
    v7 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 3);
    v8 = v7 + 1;
    if ((v7 + 1) > 0x492492492492492)
    {
      std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0x6DB6DB6DB6DB6DB7 * ((v5 - *a1) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x249249249249249)
    {
      v10 = 0x492492492492492;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::SpatialModeler::PhaseRoomSimulationSoundSource>>(a1, v10);
    }

    v11 = 56 * v7;
    *v11 = *a2;
    *(v11 + 8) = *(a2 + 8);
    *(v11 + 12) = *(a2 + 12);
    *(v11 + 16) = *(a2 + 16);
    *(v11 + 20) = *(a2 + 20);
    *(v11 + 24) = *(a2 + 24);
    *(v11 + 28) = *(a2 + 28);
    *(v11 + 32) = *(a2 + 32);
    *(v11 + 36) = *(a2 + 36);
    *(v11 + 40) = *(a2 + 40);
    v6 = 56 * v7 + 56;
    v12 = *a1;
    v13 = a1[1];
    v14 = 56 * v7 + *a1 - v13;
    if (v13 != *a1)
    {
      v15 = 56 * v7 + *a1 - v13;
      do
      {
        *v15 = *v12;
        *(v15 + 8) = *(v12 + 2);
        *(v15 + 12) = *(v12 + 3);
        *(v15 + 16) = *(v12 + 4);
        *(v15 + 20) = *(v12 + 5);
        *(v15 + 24) = *(v12 + 6);
        *(v15 + 28) = *(v12 + 7);
        *(v15 + 32) = *(v12 + 8);
        *(v15 + 36) = *(v12 + 9);
        *(v15 + 40) = *(v12 + 40);
        v12 += 56;
        v15 += 56;
      }

      while (v12 != v13);
      v12 = *a1;
    }

    *a1 = v14;
    a1[1] = v6;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v4 = *a2;
    *(v4 + 8) = *(a2 + 8);
    *(v4 + 12) = *(a2 + 12);
    *(v4 + 16) = *(a2 + 16);
    *(v4 + 20) = *(a2 + 20);
    *(v4 + 24) = *(a2 + 24);
    *(v4 + 28) = *(a2 + 28);
    *(v4 + 32) = *(a2 + 32);
    *(v4 + 36) = *(a2 + 36);
    *(v4 + 40) = *(a2 + 40);
    v6 = v4 + 56;
  }

  a1[1] = v6;
}

void Phase::SpatialModeler::RayTracerState::InitRayTracerState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, Phase::SpatialModeler::RayTracerState *this)
{
  v130 = *MEMORY[0x277D85DE8];
  *a1 = a2;
  v11 = *(a2 + 1072);
  *(a1 + 48) = *(a2 + 1056);
  *(a1 + 64) = v11;
  v12 = *(a2 + 1088);
  v13 = *(a2 + 1104);
  v14 = *(a2 + 1136);
  *(a1 + 112) = *(a2 + 1120);
  *(a1 + 128) = v14;
  *(a1 + 80) = v12;
  *(a1 + 96) = v13;
  v15 = *(a2 + 1152);
  v16 = *(a2 + 1168);
  v17 = *(a2 + 1184);
  *(a1 + 192) = *(a2 + 1200);
  *(a1 + 160) = v16;
  *(a1 + 176) = v17;
  *(a1 + 144) = v15;
  v18 = (a1 + 208);
  *(a1 + 480) = this;
  v127 = 0u;
  memset(v128, 0, 28);
  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v122 = 0u;
  if (this == 31)
  {
    v126 = xmmword_23A597A50;
    v127 = unk_23A597A60;
    *v128 = xmmword_23A597A70;
    *&v128[12] = *(&xmmword_23A597A70 + 12);
    v122 = Phase::sThirdOctaveBandFrequencies;
    v123 = unk_23A597A20;
    v19 = 31;
    v124 = xmmword_23A597A30;
    v125 = unk_23A597A40;
  }

  else if (this == 10)
  {
    memset(&buf[40], 0, 84);
    *&buf[32] = 0x467A000045FA0000;
    *buf = Phase::sOctaveBandFrequencies;
    *&buf[16] = unk_23A5979F4;
    *&v128[12] = *&buf[108];
    v127 = *&buf[80];
    *v128 = *&buf[96];
    v125 = *&buf[48];
    v126 = *&buf[64];
    v123 = unk_23A5979F4;
    v124 = *&buf[32];
    v19 = 10;
    v122 = Phase::sOctaveBandFrequencies;
  }

  else if (this == 3)
  {
    memset(&buf[12], 0, 112);
    *&buf[8] = 1165623296;
    *buf = 0x447A0000437A0000;
    v126 = *&buf[64];
    v127 = *&buf[80];
    *v128 = *&buf[96];
    *&v128[12] = 0uLL;
    v124 = *&buf[32];
    v125 = *&buf[48];
    v19 = 3;
    v122 = *buf;
    v123 = *&buf[16];
  }

  else
  {
    v20 = **(Phase::Logger::GetInstance(a1) + 1264);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "RayTracerState.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 499;
      *&buf[18] = 2048;
      *&buf[20] = this;
      _os_log_impl(&dword_23A302000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d Unsupported sub-band count: %zu\n", buf, 0x1Cu);
    }

    v19 = 0;
  }

  v21 = v127;
  v18[4] = v126;
  v18[5] = v21;
  v18[6] = *v128;
  *(v18 + 108) = *&v128[12];
  v22 = v123;
  *v18 = v122;
  v18[1] = v22;
  v23 = v125;
  v18[2] = v124;
  v18[3] = v23;
  *(a1 + 332) = v19;
  *(a1 + 472) = Phase::SpatialModeler::RayTracerState::GetSubbandIndex(this);
  v25 = *(a3 + 200);
  v114 = this;
  if (*(a3 + 112) > v25 && (v26 = *(a3 + 96) + 24 * v25, *(v26 + 20) == HIDWORD(v25)) && (v27 = *v26) != 0 && *v27 == 1 && (v28 = **(v27 + 40), v29 = *(v28 + 224), *&buf[64] = *(v28 + 208), *&buf[80] = v29, v30 = *(v28 + 256), *&buf[96] = *(v28 + 240), *&buf[112] = v30, v31 = *(v28 + 160), *buf = *(v28 + 144), *&buf[16] = v31, v32 = *(v28 + 192), *&buf[32] = *(v28 + 176), *&buf[48] = v32, *(v28 + 140) == this) && Phase::operator==<float>(v28 + 16, v18))
  {
    v33 = *&buf[124];
    v122 = 0u;
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    v127 = 0u;
    memset(v128, 0, 28);
    *&v128[28] = *&buf[124];
    if (*&buf[124])
    {
      bzero(&v122, 4 * *&buf[124]);
      v34 = (a1 + 336);
      v35 = v127;
      *(a1 + 400) = v126;
      *(a1 + 416) = v35;
      v36 = *&v128[16];
      *(a1 + 432) = *v128;
      *(a1 + 448) = v36;
      v37 = v123;
      *(a1 + 336) = v122;
      *(a1 + 352) = v37;
      v38 = v125;
      v39 = buf;
      *(a1 + 368) = v124;
      *(a1 + 384) = v38;
      do
      {
        v40 = *v39;
        v39 += 4;
        *v34++ = fabsf(v40);
        --v33;
      }

      while (v33);
    }

    else
    {
      v109 = v127;
      *(a1 + 400) = v126;
      *(a1 + 416) = v109;
      v110 = *&v128[16];
      *(a1 + 432) = *v128;
      *(a1 + 448) = v110;
      v111 = v123;
      *(a1 + 336) = v122;
      *(a1 + 352) = v111;
      v112 = v125;
      *(a1 + 368) = v124;
      *(a1 + 384) = v112;
    }

    v51 = *(v28 + 272);
  }

  else
  {
    v41 = *(a1 + 332);
    if (v41)
    {
      v42 = (a1 + 336);
      v43.i32[1] = -984514560;
      v44 = *(a1 + 332);
      do
      {
        v24.i32[0] = *(a2 + 1220);
        v43.f32[0] = *(v42 - 32) * *(v42 - 32);
        v116 = v24;
        v119 = v43;
        v45 = (101.32 / (*(a2 + 1260) / 1000.0)) * 1.84e-11;
        v46 = fabsf(sqrtf(*v24.i32 / 293.16));
        if ((*v24.i32 / 293.16) == -INFINITY)
        {
          v47 = INFINITY;
        }

        else
        {
          v47 = v46;
        }

        v48 = powf(*v24.i32 / 293.16, -2.5);
        v49 = vdiv_f32(0xC5518000C50BF19ALL, vdup_lane_s32(v116, 0));
        v115 = v49.f32[0];
        v117 = expf(v49.f32[1]);
        v50.f32[0] = expf(v115);
        v24.i32[1] = v119.i32[1];
        v50.f32[1] = v117;
        v43 = vdiv_f32(vmul_f32(v50, 0x3DDAB9F53C516334), vadd_f32(*(a2 + 1268), vdiv_f32(vdup_lane_s32(v119, 0), *(a2 + 1268))));
        *v42++ = ((*v119.i32 * ((v48 * vaddv_f32(v43)) + (v45 * v47))) * 8.6859) / 4.3429;
        --v44;
      }

      while (v44);
    }

    *(a1 + 460) = v41;
    v51 = *(a2 + 1276);
  }

  *(a1 + 464) = v51;
  v118 = a3;
  Phase::SpatialModeler::GetFullSceneAABB(a3, buf);
  *(a1 + 20976) = *buf;
  *(a1 + 20992) = *&buf[16];
  *(a1 + 18936) = *(a1 + 18928);
  if (a4)
  {
    if (a4[5])
    {
      v53 = *a4;
      v113 = (a1 + 19368);
      do
      {
        v54 = *(v53 + 144);
        if (*(v118 + 184) > v54 && (v55 = *(v118 + 168) + 24 * v54, *(v55 + 20) == HIDWORD(v54)) && (v56 = *v55) != 0 && *v56 == 3)
        {
          if (*(v53 + 208) == 3)
          {
            v57 = *(v53 + 216);
          }

          else
          {
            v57 = 0;
          }

          v60 = *(v56 + 8);
          v61 = *(v56 + 64);
          *&buf[8] = *(v56 + 48);
          v62 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *(a5 + 8)) ^ ((0xC6A4A7935BD1E995 * *(a5 + 8)) >> 47))) ^ (0x35A98F4D286A90B9 * ((0xC6A4A7935BD1E995 * v60) ^ ((0xC6A4A7935BD1E995 * v60) >> 47)) + 3864292196u)) + 3864292196u) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v57) ^ ((0xC6A4A7935BD1E995 * v57) >> 47)))) + 3864292196u;
          *&buf[24] = v61;
          *buf = v62;
          *&buf[40] = v57;
          *&buf[48] = v60;
          v121[0] = v62;
          v63 = *v113;
          if (!*v113)
          {
            goto LABEL_49;
          }

          v64 = (a1 + 19368);
          do
          {
            v65 = v63[4];
            v66 = v65 >= v62;
            v67 = v65 < v62;
            if (v66)
            {
              v64 = v63;
            }

            v63 = v63[v67];
          }

          while (v63);
          if (v64 == v113 || v62 < v64[4])
          {
LABEL_49:
            std::vector<Phase::SpatialModeler::PhaseRoomSimulationSoundSource>::push_back[abi:ne200100]((a1 + 18928), buf);
            LODWORD(v124) = 0;
            v122 = 0u;
            v123 = 0u;
            v121[1] = v121;
            v68 = std::__tree<std::__value_type<unsigned long long,Phase::SpatialModeler::SourceListenerResult>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,Phase::SpatialModeler::SourceListenerResult>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,Phase::SpatialModeler::SourceListenerResult>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a1 + 19360, v121[0]);
            v69 = v68[6];
            v68[5] = 0;
            v68[6] = 0;
            if (v69)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v69);
            }

            v52 = v68[8];
            v68[7] = 0;
            v68[8] = 0;
            if (v52)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v52);
            }

            *(v68 + 18) = 0;
          }
        }

        else
        {
          v58 = **(Phase::Logger::GetInstance(v52) + 1264);
          v52 = os_log_type_enabled(v58, OS_LOG_TYPE_ERROR);
          if (v52)
          {
            v59 = *(v53 + 144);
            *buf = 136315650;
            *&buf[4] = "RayTracerState.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 372;
            *&buf[18] = 2048;
            *&buf[20] = v59;
            _os_log_impl(&dword_23A302000, v58, OS_LOG_TYPE_ERROR, "%25s:%-5d Source provided to cluster query (%llu) was not found in the Geometry Layer", buf, 0x1Cu);
          }
        }

        v53 += 304;
      }

      while (v53 != *a4 + 304 * a4[5]);
    }
  }

  else
  {
    v70 = *(a3 + 168);
    v71 = *(a3 + 184);
    v72 = &v70[3 * v71];
    if (v71)
    {
      v73 = *v70;
      if (!*v70)
      {
        v74 = v70 + 3;
        while (1)
        {
          v70 = v74;
          if (v74 >= v72)
          {
            break;
          }

          v74 += 3;
          v73 = *v70;
          if (*v70)
          {
            goto LABEL_62;
          }
        }

        v73 = 0;
      }

LABEL_62:
      v75 = v72;
    }

    else
    {
      v73 = 0;
      v75 = *(a3 + 168);
    }

    if (v70 != v72)
    {
      v76 = (a1 + 19368);
      do
      {
        if (v73 && *v73 == 3)
        {
          v77 = *(*(a3 + 168) + 24 * v73[2]);
          v78 = *(v77 + 8);
          v79 = *(v77 + 64);
          *&buf[8] = *(v77 + 48);
          v80 = 0x35A98F4D286A90B9 * ((0x35A98F4D286A90B9 * ((0xC6A4A7935BD1E995 * v78) ^ ((0xC6A4A7935BD1E995 * v78) >> 47)) + 3864292196u) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *(a5 + 8)) ^ ((0xC6A4A7935BD1E995 * *(a5 + 8)) >> 47)))) - 0x34CB3A51FC270F68;
          *&buf[24] = v79;
          *buf = v80;
          *&buf[40] = 0;
          *&buf[48] = v78;
          v81 = *v76;
          if (!*v76)
          {
            goto LABEL_75;
          }

          v82 = (a1 + 19368);
          do
          {
            v83 = v81[4];
            v66 = v83 >= v80;
            v84 = v83 < v80;
            if (v66)
            {
              v82 = v81;
            }

            v81 = v81[v84];
          }

          while (v81);
          if (v82 == v76 || v80 < v82[4])
          {
LABEL_75:
            std::vector<Phase::SpatialModeler::PhaseRoomSimulationSoundSource>::push_back[abi:ne200100]((a1 + 18928), buf);
            LODWORD(v124) = 0;
            v122 = 0u;
            v123 = 0u;
            v85 = *v76;
            if (!*v76)
            {
LABEL_81:
              operator new();
            }

            while (1)
            {
              while (1)
              {
                v86 = v85;
                v87 = v85[4];
                if (v87 <= v80)
                {
                  break;
                }

                v85 = *v86;
                if (!*v86)
                {
                  goto LABEL_81;
                }
              }

              if (v87 >= v80)
              {
                break;
              }

              v85 = v86[1];
              if (!v85)
              {
                goto LABEL_81;
              }
            }

            v88 = v86[6];
            v86[5] = 0;
            v86[6] = 0;
            if (v88)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v88);
            }

            v89 = v86[8];
            v86[7] = 0;
            v86[8] = 0;
            if (v89)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v89);
            }

            *(v86 + 18) = 0;
          }
        }

        if (v70 < v75)
        {
          v90 = v70 + 3;
          while (1)
          {
            v70 = v90;
            if (v90 >= v75)
            {
              break;
            }

            v90 += 3;
            v73 = *v70;
            if (*v70)
            {
              goto LABEL_93;
            }
          }

          v73 = 0;
        }

LABEL_93:
        ;
      }

      while (v70 != v72);
    }
  }

  *(a1 + 18960) = *(a1 + 18952);
  *(a1 + 18984) = *(a1 + 18976);
  v91 = *(a1 + 18928);
  if (*(a1 + 18936) != v91)
  {
    v92 = v91[4].f32[0] - *(a5 + 72);
    v93 = vsub_f32(v91[3], *(a5 + 64));
    Phase::SpatialModeler::RayTracerState::CreateDirectivityHistogram(a1, *(a1 + 112), *(a1 + 116), sqrtf(vaddv_f32(vmul_f32(v93, v93)) + (v92 * v92)) / *(a1 + 464), v114, &v122);
    v94 = v122;
    v95 = *(a5 + 64);
    *(v122 + 48) = *(a5 + 48);
    *(v94 + 64) = v95;
    operator new();
  }

  *(a1 + 22776) = *(a5 + 48);
  *(a1 + 22780) = *(a5 + 52);
  *(a1 + 22784) = *(a5 + 56);
  *(a1 + 22788) = *(a5 + 60);
  *(a1 + 22792) = *(a5 + 64);
  *(a1 + 22796) = *(a5 + 68);
  *(a1 + 22800) = *(a5 + 72);
  *(a1 + 22804) = *(a5 + 76);
  Phase::Geometry::Listener::operator=(a1 + 22568, a5);
  *(a1 + 22768) = 0;
  Phase::SpatialModeler::ImportanceSampling::init((a1 + 23168), (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 18936) - *(a1 + 18928)) >> 3)), 1.0);
  memset(buf, 0, 124);
  *&buf[124] = v114;
  if (v114)
  {
    bzero(buf, 4 * v114);
    v96 = *&buf[80];
    *(a1 + 19104) = *&buf[64];
    *(a1 + 19120) = v96;
    v97 = *&buf[112];
    *(a1 + 19136) = *&buf[96];
    *(a1 + 19152) = v97;
    v98 = *&buf[16];
    *(a1 + 19040) = *buf;
    *(a1 + 19056) = v98;
    v99 = *&buf[48];
    *(a1 + 19072) = *&buf[32];
    *(a1 + 19088) = v99;
    memset(buf, 0, 124);
    bzero(buf, 4 * v114);
  }

  else
  {
    v100 = *&buf[80];
    *(a1 + 19104) = *&buf[64];
    *(a1 + 19120) = v100;
    v101 = *&buf[112];
    *(a1 + 19136) = *&buf[96];
    *(a1 + 19152) = v101;
    v102 = *&buf[16];
    *(a1 + 19040) = *buf;
    *(a1 + 19056) = v102;
    v103 = *&buf[48];
    *(a1 + 19072) = *&buf[32];
    *(a1 + 19088) = v103;
    memset(buf, 0, 124);
  }

  *&buf[124] = v114;
  v104 = *&buf[80];
  *(a1 + 19232) = *&buf[64];
  *(a1 + 19248) = v104;
  v105 = *&buf[112];
  *(a1 + 19264) = *&buf[96];
  v106 = *&buf[16];
  *(a1 + 19168) = *buf;
  *(a1 + 19184) = v106;
  v107 = *&buf[48];
  *(a1 + 19200) = *&buf[32];
  *(a1 + 19216) = v107;
  *(a1 + 19280) = v105;
  *(a1 + 19312) = std::chrono::steady_clock::now();
  *(a1 + 25040) = 1;
  *(a1 + 25048) = std::chrono::steady_clock::now();
  if (*(a1 + 80) > 3uLL || *(a1 + 64) >= 0x101u)
  {
    std::terminate();
  }

  v108 = fminf(fmaxf(__exp10f(((-1.0 / *(a1 + 120)) / *(a1 + 32)) * 6.0), 0.0), 1.0);
  *(a1 + 8) = v108;
  *(a1 + 12) = 1.0 - v108;
}

uint64_t Phase::SpatialModeler::RayTracerState::GetSubbandIndex(Phase::SpatialModeler::RayTracerState *this)
{
  v2 = 0;
  v16 = *MEMORY[0x277D85DE8];
  v7 = xmmword_23A5979C0;
  v8 = 31;
  v3 = &v9;
  while (*(&v7 + v2) != this)
  {
    v2 += 8;
    if (v2 == 24)
    {
      goto LABEL_6;
    }
  }

  v3 = &v7 + v2;
LABEL_6:
  if (v3 - &v7 == 24)
  {
    v5 = **(Phase::Logger::GetInstance(this) + 1264);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v11 = "RayTracerState.cpp";
      v12 = 1024;
      v13 = 520;
      v14 = 2048;
      v15 = this;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [indexMinusOne == sTargetSubbandCounts.size() is true]: Unsupported Subband Count: %zu", buf, 0x1Cu);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Unsupported Subband Count: %zu");
  }

  return ((v3 - &v7) >> 3) + 1;
}

uint64_t Phase::operator==<float>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 124);
  if (v2 != *(a2 + 124))
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = 0;
  while (v2 - 1 != v3)
  {
    v4 = *(a1 + 4 + 4 * v3);
    v5 = *(a2 + 4 + 4 * v3++);
    if (v4 != v5)
    {
      return v3 >= v2;
    }
  }

  v3 = *(a1 + 124);
  return v3 >= v2;
}

uint64_t Phase::SpatialModeler::RayTracerState::CreateDirectivityHistogram@<X0>(Phase::SpatialModeler::RayTracerState *this@<X0>, float a2@<S0>, float a3@<S1>, float a4@<S2>, uint64_t a5@<X1>, void *a6@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  *a6 = 0;
  a6[1] = 0;
  if (!*this)
  {
    goto LABEL_11;
  }

  Phase::SpatialModeler::HistogramPtrStack::Pop(v17);
  v14 = *v17;
  v13 = *&v17[8];
  *a6 = *v17;
  a6[1] = v13;
  if (!v14)
  {
    goto LABEL_11;
  }

  if (*(v14 + 20) != a2 || *(v14 + 28) != a5 || *(v14 + 16) != a3)
  {
    v16 = **(Phase::Logger::GetInstance(v12) + 1264);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v17 = 136315394;
      *&v17[4] = "RayTracerState.cpp";
      *&v17[12] = 1024;
      *&v17[14] = 1359;
      _os_log_impl(&dword_23A302000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d DirectivityHistogram format changed.\n", v17, 0x12u);
    }

    Phase::SpatialModeler::HistogramPtrStack::Clear((*this + 1328));
    *a6 = 0;
    a6[1] = 0;
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

LABEL_11:
    _ZNSt3__115allocate_sharedB8ne200100IN5Phase14SpatialModeler20DirectivityHistogramENS_9allocatorIS3_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  result = Phase::SpatialModeler::DirectivityHistogram::resetDirectivityHistogram(v14, 1);
  *(v14 + 40) = a4;
  *(v14 + 32) = 1065353216;
  return result;
}

void sub_23A4C81B4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void Phase::SpatialModeler::RayTracerState::NextRay(unsigned int *a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*a1)
  {
    v4 = a1 + 4754;
    (*(**(*a1 + 51960) + 16))(&v12);
    v5 = a1[83];
    *(a2 + 56) = 0;
    *(a2 + 68) = -1;
    *(a2 + 76) = 0;
    *(a2 + 80) = 1065353216;
    if (v5)
    {
      memset_pattern16((a2 + 96), &unk_23A597970, 4 * v5);
      memset_pattern16((a2 + 224), &unk_23A597970, 4 * v5);
    }

    *(a2 + 220) = v5;
    *(a2 + 348) = v5;
    *a2 = v4[944];
    *(a2 + 4) = v4[945];
    *(a2 + 8) = v4[946];
    *(a2 + 12) = 0;
    *(a2 + 28) = 1176256512;
    v6 = v13;
    v7 = 90.0 - *&v13;
    *(a2 + 60) = HIDWORD(v13);
    *(a2 + 64) = v7;
    if (*(&v6 + 1) < 0.0 || *(&v6 + 1) > 360.0 || v7 < -90.0 || v7 > 90.0)
    {
      std::terminate();
    }

    v8 = *&v12;
    v9 = __sincosf_stret(*&v6 * 0.017453);
    v10 = __sincosf_stret(*(&v6 + 1) * 0.017453);
    *(a2 + 16) = v10.__sinval * (v9.__sinval * v8);
    *(a2 + 20) = v9.__cosval * v8;
    *(a2 + 24) = v10.__cosval * (v9.__sinval * v8);
    ++*v4;
  }

  else
  {
    v11 = **(Phase::Logger::GetInstance(a1) + 1264);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "RayTracerState.cpp";
      v14 = 1024;
      v15 = 531;
      _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Modeler instance not set in state", &v12, 0x12u);
    }
  }
}

void Phase::SpatialModeler::RayTracerState::UpdateResultData(Phase::SpatialModeler::RayTracerState *this, Phase::SpatialModeler::RayTracerState *a2, Phase::Geometry::SystemState *a3)
{
  v5 = (this + 20480);
  v6 = (a2 + 20480);
  v7 = *(a2 + 8);
  v8 = *(a2 + 24);
  *(this + 5) = *(a2 + 5);
  *(this + 24) = v8;
  *(this + 8) = v7;
  v9 = *(a2 + 8);
  v11 = *(a2 + 5);
  v10 = *(a2 + 6);
  *(this + 7) = *(a2 + 7);
  *(this + 8) = v9;
  *(this + 5) = v11;
  *(this + 6) = v10;
  v13 = *(a2 + 10);
  v12 = *(a2 + 11);
  v14 = *(a2 + 9);
  *(this + 48) = *(a2 + 48);
  *(this + 10) = v13;
  *(this + 11) = v12;
  *(this + 9) = v14;
  v15 = *(a2 + 4);
  *(this + 3) = *(a2 + 3);
  *(this + 4) = v15;
  memcpy(this + 208, a2 + 208, 0x114uLL);
  if (this != a2)
  {
    std::vector<Phase::SpatialModeler::PhaseRoomSimulationSoundSource>::__assign_with_size[abi:ne200100]<Phase::SpatialModeler::PhaseRoomSimulationSoundSource*,Phase::SpatialModeler::PhaseRoomSimulationSoundSource*>(this + 18928, *(a2 + 2366), *(a2 + 2367), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 2367) - *(a2 + 2366)) >> 3));
  }

  memcpy(this + 19008, a2 + 19008, 0x160uLL);
  Phase::Geometry::Listener::operator=(this + 22568, a2 + 22568);
  *(this + 2846) = *(a2 + 2846);
  v5[574] = v6[574];
  v5[575] = v6[575];
  v5[576] = v6[576];
  v5[577] = v6[577];
  v5[578] = v6[578];
  v5[579] = v6[579];
  v5[580] = v6[580];
  v5[581] = v6[581];
  Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView::operator=(this + 23200, a2 + 23200);
  v16 = *(this + 2420);
  if (v16 != (this + 19368))
  {
    v17 = (a2 + 19368);
    do
    {
      v18 = *v17;
      if (!*v17)
      {
        goto LABEL_13;
      }

      v19 = v16[4];
      v20 = v17;
      do
      {
        v21 = v18[4];
        v22 = v21 >= v19;
        v23 = v21 < v19;
        if (v22)
        {
          v20 = v18;
        }

        v18 = v18[v23];
      }

      while (v18);
      if (v20 != v17 && v19 >= v20[4])
      {
        v28 = v16[1];
        if (v28)
        {
          do
          {
            v26 = v28;
            v28 = *v28;
          }

          while (v28);
        }

        else
        {
          do
          {
            v26 = v16[2];
            v27 = *v26 == v16;
            v16 = v26;
          }

          while (!v27);
        }
      }

      else
      {
LABEL_13:
        Phase::SpatialModeler::RayTracerState::FreeDirectivityHistogram(this, v16 + 7);
        v24 = v16[1];
        v25 = v16;
        if (v24)
        {
          do
          {
            v26 = v24;
            v24 = *v24;
          }

          while (v24);
        }

        else
        {
          do
          {
            v26 = *(v25 + 2);
            v27 = *v26 == v25;
            v25 = v26;
          }

          while (!v27);
        }

        if (*(this + 2420) == v16)
        {
          *(this + 2420) = v26;
        }

        --*(this + 2422);
        std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 2421), v16);
        std::__destroy_at[abi:ne200100]<std::pair<unsigned long long const,Phase::SpatialModeler::SourceListenerResult>,0>((v16 + 4));
        operator delete(v16);
      }

      v16 = v26;
    }

    while (v26 != (this + 19368));
  }
}

void Phase::SpatialModeler::RayTracerState::FreeDirectivityHistogram(Phase::Logger *a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  if (!*a2)
  {
    v5 = **(Phase::Logger::GetInstance(a1) + 1264);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v22 = 136315394;
    v23 = "RayTracerState.cpp";
    v24 = 1024;
    v25 = 1426;
    v6 = "%25s:%-5d Trying to free a nullptr DirectivityHistogram.";
    goto LABEL_8;
  }

  v4 = a2[1];
  if (v4)
  {
    if (v4->__shared_owners_ >= 1)
    {
      v5 = **(Phase::Logger::GetInstance(a1) + 1264);
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v22 = 136315394;
      v23 = "RayTracerState.cpp";
      v24 = 1024;
      v25 = 1415;
      v6 = "%25s:%-5d Cannot free DirectivityHistogram still in use\n";
LABEL_8:
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, v6, &v22, 0x12u);
      return;
    }

    if (!*a1)
    {
      goto LABEL_17;
    }

    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    _X0 = v2 + 53;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v2[53] = 0;
    v2[54] = v2;
    v2[55] = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    if (!*a1)
    {
      *a2 = 0;
      a2[1] = 0;
      return;
    }

    _X0 = v2 + 53;
    v2[53] = 0;
    v2[54] = v2;
    v2[55] = 0;
  }

  _X4 = 0;
  _X5 = 0;
  __asm { CASPAL          X4, X5, X4, X5, [X9] }

  atomic_store(_X4, _X0);
  _X6 = _X0;
  _X3 = 0;
  __asm { CASPAL          X2, X3, X6, X7, [X9] }

  if (_X2 != _X4)
  {
    do
    {
      atomic_store(_X2, _X0);
      _X5 = 0;
      __asm { CASPAL          X4, X5, X0, X1, [X9] }

      v20 = _X4 ^ _X2;
      _X2 = _X4;
    }

    while (v20);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

LABEL_17:
  v21 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  if (v21)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }
}

void Phase::SpatialModeler::RayTracerState::AggregateResultData(Phase::SpatialModeler::RayTracerState *this, Phase::SpatialModeler::RayTracerState *a2, Phase::Geometry::SystemState *a3)
{
  v123 = *MEMORY[0x277D85DE8];
  v113 = (a2 + 19016);
  v111 = (this + 19504);
  v6 = *(a2 + 6);
  v5 = *(a2 + 7);
  if (*(*this + 32) == 2 && *(this + 195) == 1 && *(this + 72) == 1)
  {
    v6 = *(a2 + 4);
    v5 = *(a2 + 5);
  }

  Phase::SpatialModeler::RayTracerState::UpdateResultData(this, a2, a3);
  if (*(this + 168) != 1 || (*(this + 169) & 1) == 0)
  {
    v8 = v111[381] / *v113;
    if (v8 == 0.0)
    {
      v5 = 1.0;
      v6 = 0.0;
    }

    if (v8 > 2.0)
    {
      v5 = v5 * (1.0 / fminf(fmaxf(v8, 2.0), 100.0));
      v6 = 1.0 - v5;
    }
  }

  v9 = *(a2 + 2420);
  if (v9 != (a2 + 19368))
  {
    v10 = (this + 19368);
    v11 = vdupq_n_s64(4uLL);
    v112 = v11;
    do
    {
      v12 = *(v9 + 4);
      *&v115[0] = v12;
      v13 = *v10;
      if (!*v10)
      {
        goto LABEL_21;
      }

      v14 = (this + 19368);
      do
      {
        v15 = *(v13 + 4);
        v16 = v15 >= v12;
        v17 = v15 < v12;
        if (v16)
        {
          v14 = v13;
        }

        v13 = *&v13[8 * v17];
      }

      while (v13);
      if (v14 == v10 || v12 < v14[4])
      {
LABEL_21:
        std::allocate_shared[abi:ne200100]<Phase::SpatialModeler::EarlyReflectionDetector,std::allocator<Phase::SpatialModeler::EarlyReflectionDetector>,Phase::SpatialModeler::EarlyReflectionDetector&,0>();
      }

      v21 = v14[7];
      if (!v21)
      {
        v53 = **(Phase::Logger::GetInstance(IsHistogramEnergyLowerThanTheoreticalPrediction) + 1264);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "RayTracerState.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 820;
          _os_log_impl(&dword_23A302000, v53, OS_LOG_TYPE_ERROR, "%25s:%-5d Sound source found, but no histogram initialized", buf, 0x12u);
        }

        Phase::SpatialModeler::RayTracerState::CopyDirectivityHistogram(this, v9 + 7, buf);
        IsHistogramEnergyLowerThanTheoreticalPrediction = v14[8];
        v11.i32[1] = *&buf[4];
        *(v14 + 7) = *buf;
        if (!IsHistogramEnergyLowerThanTheoreticalPrediction)
        {
          goto LABEL_86;
        }

        goto LABEL_85;
      }

      v22 = v14[8];
      if (v22)
      {
        atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
      }

      IsHistogramEnergyLowerThanTheoreticalPrediction = *(v9 + 7);
      if (IsHistogramEnergyLowerThanTheoreticalPrediction)
      {
        if (!*(this + 156))
        {
          goto LABEL_68;
        }

        v11.i32[0] = *(this + 40);
        IsHistogramEnergyLowerThanTheoreticalPrediction = Phase::SpatialModeler::IsHistogramEnergyLowerThanTheoreticalPrediction(IsHistogramEnergyLowerThanTheoreticalPrediction, this + 20800, *v11.i64);
        if (!IsHistogramEnergyLowerThanTheoreticalPrediction)
        {
          goto LABEL_68;
        }

        v23 = *(v9 + 7);
        v24.i64[0] = 0;
        if ((*(v23 + 36) & 1) == 0)
        {
          v25 = (*(v23 + 28) * *(v23 + 24));
          if (v25)
          {
            v26 = *(v23 + 8);
            v27 = (v25 + 3) & 0x1FFFFFFFCLL;
            v28 = vdupq_n_s64(v25 - 1);
            v29 = (v26 + 8);
            v30 = xmmword_23A554B70;
            v31 = xmmword_23A554B60;
            v32 = xmmword_23A555020;
            do
            {
              v33 = v32;
              v34 = vcgeq_u64(v28, v30);
              v35 = vmovn_s64(v34);
              *v32.f32 = vuzp1_s16(v35, *v28.i8);
              if (v32.i8[0])
              {
                v32.i32[0] = *(v29 - 2);
              }

              if (vuzp1_s16(v35, *&v28).i8[2])
              {
                v32.i32[1] = *(v29 - 1);
              }

              v36 = vcgeq_u64(v28, v31);
              if (vuzp1_s16(*&v28, vmovn_s64(*&v36)).i32[1])
              {
                v32.i64[1] = *v29;
              }

              v32 = vaddq_f32(v33, v32);
              v37 = vdupq_n_s64(4uLL);
              v31 = vaddq_s64(v31, v37);
              v30 = vaddq_s64(v30, v37);
              v29 += 2;
              v27 -= 4;
            }

            while (v27);
            v24 = vbslq_s8(vuzp1q_s32(v34, v36), v32, v33);
            *v24.i32 = (vaddv_f32(*v24.i8) + *&v24.i32[2]) + *&v24.i32[3];
          }
        }

        v38 = v14[7];
        if ((v38[36] & 1) != 0 || (v39 = (*(v38 + 7) * *(v38 + 6)), !v39))
        {
          v52 = 1.1755e-38;
        }

        else
        {
          v40 = *(v38 + 1);
          v41 = (v39 + 3) & 0x1FFFFFFFCLL;
          v42 = vdupq_n_s64(v39 - 1);
          v43 = (v40 + 8);
          v44 = xmmword_23A554B70;
          v45 = xmmword_23A554B60;
          v46 = xmmword_23A555020;
          do
          {
            v47 = v46;
            v48 = vcgeq_u64(v42, v44);
            v49 = vmovn_s64(v48);
            *v46.f32 = vuzp1_s16(v49, *v24.i8);
            if (v46.i8[0])
            {
              v46.i32[0] = *(v43 - 2);
            }

            if (vuzp1_s16(v49, *&v24).i8[2])
            {
              v46.i32[1] = *(v43 - 1);
            }

            v50 = vcgeq_u64(v42, v45);
            if (vuzp1_s16(*&v24, vmovn_s64(*&v50)).i32[1])
            {
              v46.i64[1] = *v43;
            }

            v46 = vaddq_f32(v47, v46);
            v45 = vaddq_s64(v45, v112);
            v44 = vaddq_s64(v44, v112);
            v43 += 2;
            v41 -= 4;
          }

          while (v41);
          v51 = vbslq_s8(vuzp1q_s32(v48, v50), v46, v47);
          v52 = ((vaddv_f32(*v51.i8) + *&v51.i32[2]) + *&v51.i32[3]) + 1.1755e-38;
        }

        v54 = (*v24.i32 / v52) + 1.1755e-38;
        v55 = 1;
        if (v54 <= 0.0)
        {
          v54 = COERCE_FLOAT(1);
        }

        if ((((logf(v54) * 4.3429) / 10.0) * 10.0) > -3.0)
        {
LABEL_68:
          if (*(v21 + 32) <= 1.0 || *(a2 + 192) == 1)
          {
            *v11.i32 = v6;
            Phase::SpatialModeler::DirectivityHistogram::operator*=(v21, *v11.i64);
            *&v56 = v5;
            Phase::SpatialModeler::DirectivityHistogram::operator*=(*(v9 + 7), v56);
            Phase::SpatialModeler::DirectivityHistogram::operator+=(v21, *(v9 + 7));
            Phase::SpatialModeler::DirectivityHistogram::updateWasHitVector(v21);
            v55 = 0;
            *(v14 + 18) = (v6 * *(v14 + 18)) + *v113;
          }

          else
          {
            v55 = 0;
          }
        }

        v57 = v14[7];
        v58 = *(v9 + 7);
        *(v57 + 10) = *(v58 + 40);
        v11 = *(v58 + 48);
        v59 = *(v58 + 64);
        *(v57 + 3) = v11;
        *(v57 + 4) = v59;
        if (*(this + 156))
        {
          if (v55)
          {
LABEL_73:
            v60 = *(v21 + 32);
            if (sqrtf(v60) >= (*(v21 + 40) * *(this + 116)))
            {
              goto LABEL_83;
            }

            v61 = fminf(v60 * 3.0, 256.0);
            goto LABEL_82;
          }

          v61 = *(v21 + 32);
          if (v61 <= 1.0)
          {
            v62 = v61 < 1.0;
          }

          else
          {
            v61 = v61 * 0.33333;
            v62 = 1;
          }

          if (v62)
          {
            if (v61 < 1.0)
            {
              v61 = 1.0;
            }

LABEL_82:
            *(v21 + 32) = v61;
          }
        }
      }

      else if (*(this + 156))
      {
        goto LABEL_73;
      }

LABEL_83:
      if (v22)
      {
        IsHistogramEnergyLowerThanTheoreticalPrediction = v22;
LABEL_85:
        std::__shared_weak_count::__release_shared[abi:ne200100](IsHistogramEnergyLowerThanTheoreticalPrediction);
      }

LABEL_86:
      v63 = v14[5];
      if (!v63)
      {
        std::allocate_shared[abi:ne200100]<Phase::SpatialModeler::EarlyReflectionDetector,std::allocator<Phase::SpatialModeler::EarlyReflectionDetector>,Phase::SpatialModeler::EarlyReflectionDetector&,0>();
      }

      v64 = *(v63 + 2);
      if (v64)
      {
        v65 = *(a2 + 2);
        do
        {
          v64[44] = v65 * v64[44];
          v64 = *v64;
        }

        while (v64);
      }

      v66 = *(v9 + 5);
      v67 = *(v66 + 16);
      if (v67)
      {
        v68 = *(a2 + 3);
        v69 = *(v66 + 16);
        do
        {
          v69[44] = v68 * v69[44];
          v69 = *v69;
        }

        while (v69);
        do
        {
          Phase::SpatialModeler::EarlyReflectionDetector::AddToScoreBoard(v63, (v67 + 4));
          v67 = *v67;
        }

        while (v67);
      }

      v18 = *(v9 + 1);
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = *(v9 + 2);
          v20 = *v19 == v9;
          v9 = v19;
        }

        while (!v20);
      }

      v9 = v19;
    }

    while (v19 != (a2 + 19368));
  }

  v70 = *(this + 2619);
  v71 = (this + 20960);
  if (v70 != (this + 20960))
  {
    do
    {
      v72 = v70[4];
      if (*(a3 + 40) > v72 && (v73 = *(a3 + 18) + 24 * v72, *(v73 + 20) == HIDWORD(v72)) && *v73)
      {
        v74 = v70[1];
        if (v74)
        {
          do
          {
            v75 = v74;
            v74 = *v74;
          }

          while (v74);
        }

        else
        {
          do
          {
            v75 = v70[2];
            v20 = *v75 == v70;
            v70 = v75;
          }

          while (!v20);
        }
      }

      else
      {
        v75 = std::__tree<std::weak_ptr<Phase::Job>,std::owner_less<std::weak_ptr<Phase::Job>>,std::allocator<std::weak_ptr<Phase::Job>>>::__remove_node_pointer(this + 2619, v70);
        operator delete(v70);
      }

      v70 = v75;
    }

    while (v75 != v71);
    v70 = *(this + 2619);
  }

  if (v70 != v71)
  {
    v76 = v70;
    do
    {
      *(v76 + 10) = v6 * *(v76 + 10);
      v77 = v76[1];
      if (v77)
      {
        do
        {
          v78 = v77;
          v77 = *v77;
        }

        while (v77);
      }

      else
      {
        do
        {
          v78 = v76[2];
          v20 = *v78 == v76;
          v76 = v78;
        }

        while (!v20);
      }

      v76 = v78;
    }

    while (v78 != v71);
  }

  v79 = *(a2 + 2619);
  if (v79 != (a2 + 20960))
  {
    do
    {
      v80 = *(v79 + 10);
      if (v80 > 0.0)
      {
        v81 = *v71;
        if (!*v71)
        {
LABEL_126:
          operator new();
        }

        v82 = *(v79 + 4);
        while (1)
        {
          while (1)
          {
            v83 = v81;
            v84 = *(v81 + 32);
            if (v84 <= v82)
            {
              break;
            }

            v81 = *v83;
            if (!*v83)
            {
              goto LABEL_126;
            }
          }

          if (v84 >= v82)
          {
            break;
          }

          v81 = *(v83 + 8);
          if (!v81)
          {
            goto LABEL_126;
          }
        }

        *(v83 + 40) = v80;
      }

      v85 = *(v79 + 1);
      if (v85)
      {
        do
        {
          v86 = v85;
          v85 = *v85;
        }

        while (v85);
      }

      else
      {
        do
        {
          v86 = *(v79 + 2);
          v20 = *v86 == v79;
          v79 = v86;
        }

        while (!v20);
      }

      v79 = v86;
    }

    while (v86 != (a2 + 20960));
    v70 = *(this + 2619);
  }

  if (v70 != v71)
  {
    do
    {
      if (*(v70 + 10) >= *(a2 + 11))
      {
        v88 = v70[1];
        if (v88)
        {
          do
          {
            v87 = v88;
            v88 = *v88;
          }

          while (v88);
        }

        else
        {
          do
          {
            v87 = v70[2];
            v20 = *v87 == v70;
            v70 = v87;
          }

          while (!v20);
        }
      }

      else
      {
        v87 = std::__tree<std::weak_ptr<Phase::Job>,std::owner_less<std::weak_ptr<Phase::Job>>,std::allocator<std::weak_ptr<Phase::Job>>>::__remove_node_pointer(this + 2619, v70);
        operator delete(v70);
      }

      v70 = v87;
    }

    while (v87 != v71);
  }

  Phase::SpatialModeler::countSurfaceArea(a3, this + 2619, *(this + 83), this + 2616, this + 4877, this + 4912, *(this + 34), *(this + 35));
  Phase::SpatialModeler::RayTracerState::UpdateLocalMeanFreePathAndMeanAbsorption(a2, v89);
  Phase::SpatialModeler::RayTracerState::UpdateLocalVolumeEstimate(a2, a3);
  *v111 = (v5 * v113[122]) + (*v111 * v6);
  v91 = *(v113 + 157);
  if (v91)
  {
    v92 = (a2 + 19520);
    v93 = (this + 19520);
    v94 = *(v111 + 35);
    if (v94)
    {
      v95 = 0;
      v96 = 4 * v94;
      memset(v116, 0, 124);
      do
      {
        *(v116 + v95) = v6 * *(v93 + v95);
        v95 += 4;
      }

      while (v96 != v95);
      v97 = 0;
      v98 = 4 * v91;
      memset(v115, 0, 124);
      do
      {
        *(v115 + v97) = v5 * *(v92 + v97);
        v97 += 4;
      }

      while (v98 != v97);
      v99 = 0;
      v121 = 0u;
      memset(v122, 0, 28);
      v119 = 0u;
      v120 = 0u;
      v118 = 0u;
      memset(buf, 0, sizeof(buf));
      *&v122[28] = v94;
      do
      {
        *&buf[v99] = *(v116 + v99) + *(v115 + v99);
        v99 += 4;
      }

      while (v96 != v99);
      v100 = v121;
      *(this + 1224) = v120;
      *(this + 1225) = v100;
      v101 = *&v122[16];
      *(this + 1226) = *v122;
      *(this + 1227) = v101;
      v102 = *&buf[16];
      *v93 = *buf;
      *(this + 1221) = v102;
      v103 = v119;
      *(this + 1222) = v118;
      *(this + 1223) = v103;
    }

    else
    {
      v105 = *v92;
      v106 = *(a2 + 1221);
      v107 = *(a2 + 1223);
      *(this + 1222) = *(a2 + 1222);
      *(this + 1223) = v107;
      *v93 = v105;
      *(this + 1221) = v106;
      v108 = *(a2 + 1224);
      v109 = *(a2 + 1225);
      v110 = *(a2 + 1227);
      *(this + 1226) = *(a2 + 1226);
      *(this + 1227) = v110;
      *(this + 1224) = v108;
      *(this + 1225) = v109;
    }
  }

  else
  {
    v104 = **(Phase::Logger::GetInstance(v90) + 1264);
    if (os_log_type_enabled(v104, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "RayTracerState.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 727;
      _os_log_impl(&dword_23A302000, v104, OS_LOG_TYPE_DEBUG, "%25s:%-5d RoomStats of new state empty.", buf, 0x12u);
    }
  }

  Phase::SpatialModeler::RayTracerState::UpdateLocalVolumeEstimate(this, a3);
  Phase::SpatialModeler::RayTracerState::UpdateLocalRT60Estimate(this);
  Phase::SpatialModeler::RayTracerState::calculateTotalEarlyAndLateEnergy(this, this + 1292, this + 1300, a3);
  v111[383] = v113[505];
}

void sub_23A4C942C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56)
{
  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  }

  _Unwind_Resume(exception_object);
}

void Phase::SpatialModeler::RayTracerState::UpdateLocalMeanFreePathAndMeanAbsorption(Phase::SpatialModeler::RayTracerState *this, int16x4_t a2)
{
  if (*(this + 4826))
  {
    v2 = *(this + 4824);
    v3 = *(this + 4825);
    if (v3 + v2)
    {
      v4 = *(this + 4756);
      if (!v3 || (v5 = v3, v3 <= 0x12B) && (v2 / v5) >= 3.0)
      {
        v5 = (v3 + v2);
        v4 = v4 + (*(this + 4755) * 1.1);
      }

      v6 = v4 / v5;
    }

    else
    {
      v6 = 0.0;
    }

    *(this + 4876) = v6;
    Phase::SpatialModeler::GetMeanAbsorptionEstimateFromFirstAndHigherOrderTotalAbsorption(this + 19040, this + 19168, v2, v3, this + 1220);
  }

  else
  {
    *(this + 4876) = 0;
    v7 = *(this + 4911);
    if (v7)
    {
      a2.i32[0] = *(this + 14);
      v8 = (v7 + 3) & 0x1FFFFFFFCLL;
      v9 = vdupq_n_s64(v7 - 1);
      v10 = xmmword_23A554B60;
      v11 = xmmword_23A554B70;
      v12 = (this + 19532);
      v13 = vdupq_n_s64(4uLL);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v9, v11));
        if (vuzp1_s16(v14, a2).u8[0])
        {
          *(v12 - 3) = a2.i32[0];
        }

        if (vuzp1_s16(v14, a2).i8[2])
        {
          *(v12 - 2) = a2.i32[0];
        }

        if (vuzp1_s16(a2, vmovn_s64(vcgeq_u64(v9, *&v10))).i32[1])
        {
          *(v12 - 1) = a2.i32[0];
          *v12 = a2.i32[0];
        }

        v10 = vaddq_s64(v10, v13);
        v11 = vaddq_s64(v11, v13);
        v12 += 4;
        v8 -= 4;
      }

      while (v8);
    }
  }
}

void Phase::SpatialModeler::RayTracerState::UpdateLocalVolumeEstimate(Phase::SpatialModeler::RayTracerState *this, Phase::Geometry::SystemState *a2)
{
  v2 = this + 19304;
  if (*(this + 4826))
  {
    v3 = *(this + 4876);
    if (v3 <= 0.0 || (v4 = *(this + 4877), v4 <= 0.0))
    {
      v5 = 3.4028e38;
    }

    else
    {
      v5 = (v3 * v4) * 0.25;
    }

    *(this + 4878) = v5;
  }

  else
  {
    if (*(this + 4877) <= 0.0)
    {
      v10 = vsub_f32(*(this + 20992), *(this + 20980));
      v11 = vmuls_lane_f32((*(this + 5247) - *(this + 5244)) * v10.f32[0], v10, 1);
      v12 = fabsf(v11);
      v13 = LODWORD(v11) & 0x7FFFFFFF;
      v8 = 0;
      if (v13 < 2139095040)
      {
        *v8.i32 = v12;
      }

      v9 = *v8.i32 + *v8.i32;
      *(this + 4877) = *v8.i32 + *v8.i32;
    }

    else
    {
      Phase::SpatialModeler::GetHitShapesAABB(a2, this + 20952, &v23);
      v7 = vsub_f32(v26, v24);
      *v8.i32 = fabsf(vmuls_lane_f32((v25 - v23) * v7.f32[0], v7, 1));
      v9 = *(v2 + 51);
    }

    *(v2 + 52) = v8.i32[0];
    v14 = 0.0;
    if (v9 > 0.0)
    {
      v14 = (*v8.i32 * 4.0) / v9;
    }

    *(v2 + 50) = v14;
    v15 = *(v2 + 85);
    if (v15)
    {
      v8.i32[0] = *(this + 14);
      v16 = (v15 + 3) & 0x1FFFFFFFCLL;
      v17 = vdupq_n_s64(v15 - 1);
      v18 = xmmword_23A554B60;
      v19 = xmmword_23A554B70;
      v20 = v2 + 228;
      v21 = vdupq_n_s64(4uLL);
      do
      {
        v22 = vmovn_s64(vcgeq_u64(v17, v19));
        if (vuzp1_s16(v22, v8).u8[0])
        {
          *(v20 - 3) = v8.i32[0];
        }

        if (vuzp1_s16(v22, v8).i8[2])
        {
          *(v20 - 2) = v8.i32[0];
        }

        if (vuzp1_s16(v8, vmovn_s64(vcgeq_u64(v17, *&v18))).i32[1])
        {
          *(v20 - 1) = v8.i32[0];
          *v20 = v8.i32[0];
        }

        v18 = vaddq_s64(v18, v21);
        v19 = vaddq_s64(v19, v21);
        v20 += 4;
        v16 -= 4;
      }

      while (v16);
    }
  }
}

double Phase::SpatialModeler::RayTracerState::UpdateLocalRT60Estimate(Phase::SpatialModeler::RayTracerState *this)
{
  v2 = *(this + 83);
  v3 = this + 0x4000;
  v4 = 0uLL;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  memset(v55, 0, 28);
  HIDWORD(v55[1]) = v2;
  if (v2)
  {
    bzero(&v49, 4 * v2);
    v4 = 0uLL;
  }

  v5 = v54;
  *(v3 + 216) = v53;
  *(v3 + 217) = v5;
  v6 = v55[1];
  *(v3 + 218) = v55[0];
  *(v3 + 219) = v6;
  v7 = v50;
  *(v3 + 212) = v49;
  *(v3 + 213) = v7;
  v8 = v52;
  *(v3 + 214) = v51;
  *(v3 + 215) = v8;
  *(v55 + 12) = v4;
  v54 = v4;
  v55[0] = v4;
  v52 = v4;
  v53 = v4;
  v50 = v4;
  v51 = v4;
  v49 = v4;
  HIDWORD(v55[1]) = v2;
  if (v2)
  {
    bzero(&v49, 4 * v2);
    v9 = v54;
    *(this + 1248) = v53;
    *(this + 1249) = v9;
    v10 = v55[1];
    *(this + 1250) = v55[0];
    *(this + 1251) = v10;
    v11 = v50;
    *(this + 1244) = v49;
    *(this + 1245) = v11;
    v12 = v52;
    *(this + 1246) = v51;
    *(this + 1247) = v12;
    v54 = 0u;
    memset(v55, 0, 28);
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v49 = 0u;
    HIDWORD(v55[1]) = v2;
    bzero(&v49, 4 * v2);
    v13 = v54;
    *(this + 1256) = v53;
    *(this + 1257) = v13;
    v14 = v55[1];
    *(this + 1258) = v55[0];
    *(this + 1259) = v14;
    v15 = v50;
    *(this + 1252) = v49;
    *(this + 1253) = v15;
    v16 = v52;
    *(this + 1254) = v51;
    *(this + 1255) = v16;
    v54 = 0u;
    memset(v55, 0, 28);
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v49 = 0u;
    HIDWORD(v55[1]) = v2;
    bzero(&v49, 4 * v2);
  }

  else
  {
    v17 = v54;
    *(this + 1248) = v53;
    *(this + 1249) = v17;
    v18 = v55[1];
    *(this + 1250) = v55[0];
    *(this + 1251) = v18;
    v19 = v50;
    *(this + 1244) = v49;
    *(this + 1245) = v19;
    v20 = v52;
    *(this + 1246) = v51;
    *(this + 1247) = v20;
    *(this + 1259) = 0u;
    *(this + 1258) = 0u;
    *(this + 1257) = 0u;
    *(this + 1256) = 0u;
    *(this + 1255) = 0u;
    *(this + 1254) = 0u;
    *(this + 1253) = 0u;
    *(this + 1252) = 0u;
    memset(v55, 0, sizeof(v55));
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
  }

  v21 = v54;
  *(this + 1288) = v53;
  *(this + 1289) = v21;
  v22 = v55[1];
  *(this + 1290) = v55[0];
  *(this + 1291) = v22;
  v23 = v50;
  *(this + 1284) = v49;
  *(this + 1285) = v23;
  v24 = v52;
  *(this + 1286) = v51;
  *(this + 1287) = v24;
  v25 = *(v3 + 879);
  v26 = *(v3 + 780);
  if (v25)
  {
    v27 = 0;
    v28 = (v3 + 3392);
    v29 = *(this + 115);
    v30 = (v26 * 6.0) * 2.3026;
    do
    {
      v31 = 0.0;
      if (v27 < v29)
      {
        v31 = *(this + v27 + 84);
      }

      v32 = *(v28 - 64);
      if (v32 <= 0.0)
      {
        v32 = *(this + 14);
      }

      if (v26 > 0.0)
      {
        v33 = 1.0;
        v34 = fminf(fmaxf(v32, 1.0e-10), 1.0);
        v35 = *(this + 116);
        v36 = logf(1.0 - v34);
        *v28 = v30 / (-(v36 - (v31 * v26)) * v35);
        v28[32] = v30 / -(v36 * v35);
        v37 = *(this + 2616);
        if (v27 < (*(this + 2617) - v37) >> 2)
        {
          if (*(v37 + 4 * v27) > 0.0)
          {
            v33 = *(v37 + 4 * v27);
          }

          else
          {
            v33 = 1.0;
          }
        }

        v28[64] = v30 / (v35 * -(logf(1.0 - (v34 / v33)) - (v31 * v26)));
      }

      ++v27;
      ++v28;
    }

    while (v25 != v27);
  }

  v38 = Phase::SpatialModeler::TRAP::CalculateSeatbeltReverbTimeAndConfidenceFromMFP((this + 20288), this + 20416, v26);
  v39 = Phase::SpatialModeler::TRAP::TP(v38);
  v40 = 0;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  memset(v55, 0, 28);
  v41 = xmmword_23A554B70;
  v42 = *(v39 + 112);
  v43 = vdupq_n_s64(2uLL);
  HIDWORD(v55[1]) = 10;
  do
  {
    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xAuLL), v41)).u8[0])
    {
      *(&v49 + v40) = v42;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xAuLL), *&v41)).i32[1])
    {
      *(&v49 + v40 + 4) = v42;
    }

    v41 = vaddq_s64(v41, v43);
    v40 += 8;
  }

  while (v40 != 40);
  v44 = v54;
  *(this + 1264) = v53;
  *(this + 1265) = v44;
  v45 = v55[1];
  *(this + 1266) = v55[0];
  *(this + 1267) = v45;
  v46 = v50;
  *(this + 1260) = v49;
  *(this + 1261) = v46;
  result = *&v51;
  v48 = v52;
  *(this + 1262) = v51;
  *(this + 1263) = v48;
  return result;
}

float Phase::SpatialModeler::RayTracerState::UpdateLaunchedRayHistory(Phase::SpatialModeler::RayTracerState *this, unsigned int a2)
{
  v2 = *(this + 5250);
  v3 = (this + 21008);
  *(this + v2 + 5252) = a2;
  *(this + 5250) = (v2 + 1) % 5u;
  LODWORD(v2) = *(this + 5251);
  v4 = __CFADD__(v2, 1);
  v5 = v2 + 1;
  v6 = v4;
  if (v5 >= 5)
  {
    v5 = 5;
  }

  *(this + 5251) = v5;
  v7 = 0.0;
  if ((v6 & 1) == 0)
  {
    v8 = 4 * v5;
    do
    {
      v9 = *v3++;
      v7 = v7 + v9;
      v8 -= 4;
    }

    while (v8);
  }

  result = v7 / v5;
  *(this + 5257) = result;
  return result;
}

float Phase::SpatialModeler::RayTracerState::GetSourceListenerResult@<S0>(Phase::SpatialModeler::RayTracerState *this@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(this + 2421);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = *a2;
  v5 = this + 19368;
  do
  {
    v6 = *(v3 + 4);
    v7 = v6 >= v4;
    v8 = v6 < v4;
    if (v7)
    {
      v5 = v3;
    }

    v3 = *&v3[8 * v8];
  }

  while (v3);
  if (v5 != this + 19368 && v4 >= *(v5 + 4))
  {
    v10 = *(v5 + 6);
    *a3 = *(v5 + 5);
    *(a3 + 8) = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    v11 = *(v5 + 8);
    *(a3 + 16) = *(v5 + 7);
    *(a3 + 24) = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    result = *(v5 + 18);
    *(a3 + 32) = result;
  }

  else
  {
LABEL_9:
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

float Phase::SpatialModeler::RayTracerState::GetSourceListenerResult@<S0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  SoundSourceHash = Phase::SpatialModeler::GetSoundSourceHash(*a2, *a3, a4);
  v8 = *(a1 + 19368);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = a1 + 19368;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= SoundSourceHash;
    v12 = v10 < SoundSourceHash;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 != a1 + 19368 && SoundSourceHash >= *(v9 + 32))
  {
    v14 = *(v9 + 48);
    *a5 = *(v9 + 40);
    *(a5 + 8) = v14;
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }

    v15 = *(v9 + 64);
    *(a5 + 16) = *(v9 + 56);
    *(a5 + 24) = v15;
    if (v15)
    {
      atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
    }

    result = *(v9 + 72);
    *(a5 + 32) = result;
  }

  else
  {
LABEL_9:
    *(a5 + 32) = 0;
    result = 0.0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  return result;
}

void Phase::SpatialModeler::RayTracerState::calculateTotalSpecularEarlyEnergy(Phase::SpatialModeler::RayTracerState *this@<X0>, char *a2@<X8>)
{
  v3 = a2;
  v4 = *(this + 83);
  *a2 = 0u;
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *(a2 + 3) = 0u;
  *(a2 + 4) = 0u;
  *(a2 + 5) = 0u;
  *(a2 + 6) = 0u;
  *(a2 + 108) = 0u;
  *(a2 + 31) = v4;
  if (v4)
  {
    bzero(a2, 4 * v4);
  }

  v5 = *(this + 2420);
  if (v5 != (this + 19368))
  {
    v6 = 0;
    do
    {
      EarlyReflections = Phase::SpatialModeler::EarlyReflectionDetector::FindEarlyReflections(*(v5 + 5), *(this + 22), 0, 343.0);
      v8 = *EarlyReflections;
      v9 = *(EarlyReflections + 1);
      if (*EarlyReflections != v9)
      {
        v10 = *(this + 116);
        v11 = *EarlyReflections;
        do
        {
          if (v4)
          {
            v12 = 1.0 / (v10 * *(v11 + 12));
            v13 = 16;
            v14 = v3;
            v15 = v4;
            do
            {
              v16 = fabsf(*(v11 + v13));
              *v14 = *v14 + ((v12 * v16) * (v12 * v16));
              ++v14;
              v13 += 4;
              --v15;
            }

            while (v15);
          }

          v11 += 288;
        }

        while (v11 != v9);
      }

      if (v9 != v8)
      {
        ++v6;
      }

      v17 = *(v5 + 1);
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = *(v5 + 2);
          v19 = *v18 == v5;
          v5 = v18;
        }

        while (!v19);
      }

      v5 = v18;
    }

    while (v18 != (this + 19368));
    if (v6 > 1 && v4)
    {
      do
      {
        *v3 = (1.0 / v6) * *v3;
        ++v3;
        --v4;
      }

      while (v4);
    }
  }
}

double Phase::SpatialModeler::RayTracerState::calculateTotalEarlyAndLateEnergy(unsigned int *a1, _OWORD *a2, _OWORD *a3, Phase::Geometry::SystemState *a4)
{
  v7 = a1[83];
  Phase::SpatialModeler::RayTracerState::predictTotalRoomEnergy(a1, a4, v32);
  Phase::SpatialModeler::RayTracerState::calculateTotalSpecularEarlyEnergy(a1, &v25);
  v8 = v30;
  a2[4] = v29;
  a2[5] = v8;
  v9 = *&v31[16];
  a2[6] = *v31;
  a2[7] = v9;
  v10 = v26;
  *a2 = v25;
  a2[1] = v10;
  v11 = v28;
  a2[2] = v27;
  a2[3] = v11;
  v30 = 0u;
  memset(v31, 0, 28);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  *&v31[28] = v7;
  if (v7)
  {
    bzero(&v25, 4 * v7);
    v12 = v30;
    a3[4] = v29;
    a3[5] = v12;
    v13 = *&v31[16];
    a3[6] = *v31;
    a3[7] = v13;
    v14 = v26;
    *a3 = v25;
    a3[1] = v14;
    v15 = v28;
    v16 = v32;
    a3[2] = v27;
    a3[3] = v15;
    result = 0.0;
    do
    {
      v18 = *v16++;
      v19 = v18;
      v20 = *a2;
      a2 = (a2 + 4);
      *a3 = fmaxf(v19 - v20, 0.0);
      a3 = (a3 + 4);
      --v7;
    }

    while (v7);
  }

  else
  {
    v21 = v30;
    a3[4] = v29;
    a3[5] = v21;
    v22 = *&v31[16];
    a3[6] = *v31;
    a3[7] = v22;
    v23 = v26;
    *a3 = v25;
    a3[1] = v23;
    result = *&v27;
    v24 = v28;
    a3[2] = v27;
    a3[3] = v24;
  }

  return result;
}

void Phase::SpatialModeler::RayTracerState::predictTotalRoomEnergy(Phase::SpatialModeler::RayTracerState *this@<X0>, Phase::Geometry::SystemState *a2@<X1>, _OWORD *a3@<X8>)
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = *(this + 83);
  v43 = 0u;
  memset(v44, 0, 28);
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  __b = 0u;
  *&v44[28] = v6;
  if (v6)
  {
    bzero(&__b, 4 * v6);
  }

  v7 = *(this + 2366);
  if (*(this + 2367) != v7)
  {
    if (*(this + 180))
    {
      if (v6)
      {
        memset_pattern16(&__b, &unk_23A597970, 4 * v6);
      }

      Phase::SpatialModeler::CalculateSoundPowerRelativeToOmni(&__b, *(*this + 51936), v6);
    }

    else
    {
      v8 = 0;
      do
      {
        Phase::SpatialModeler::getSoundPowerRelativeToOmni(a2, *(v7 + 56 * v8 + 40), v6, v37);
        v9 = *&v44[28];
        memset(buf, 0, sizeof(buf));
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        memset(v50, 0, 28);
        *&v50[28] = *&v44[28];
        if (*&v44[28])
        {
          v10 = buf;
          v11 = v37;
          p_b = &__b;
          do
          {
            v13 = *p_b++;
            v14 = v13;
            v15 = *v11++;
            *v10 = v14 + v15;
            v10 += 4;
            --v9;
          }

          while (v9);
        }

        v42 = v48;
        v43 = v49;
        *v44 = *v50;
        *&v44[16] = *&v50[16];
        __b = *buf;
        v39 = *&buf[16];
        v40 = v46;
        v41 = v47;
        ++v8;
        v7 = *(this + 2366);
        v16 = 0x6DB6DB6DB6DB6DB7 * ((*(this + 2367) - v7) >> 3);
      }

      while (v8 < v16);
      v17 = *&v44[28];
      memset(buf, 0, sizeof(buf));
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      memset(v50, 0, 28);
      *&v50[28] = *&v44[28];
      if (*&v44[28])
      {
        v18 = 1.0 / v16;
        v19 = buf;
        v20 = &__b;
        do
        {
          v21 = *v20++;
          *v19 = v18 * v21;
          v19 += 4;
          --v17;
        }

        while (v17);
      }

      v42 = v48;
      v43 = v49;
      *v44 = *v50;
      *&v44[16] = *&v50[16];
      __b = *buf;
      v39 = *&buf[16];
      v40 = v46;
      v41 = v47;
    }
  }

  *(a3 + 108) = 0u;
  a3[5] = 0u;
  a3[6] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  *(a3 + 31) = v6;
  if (v6)
  {
    v22 = (this + 0x4000);
    bzero(a3, 4 * v6);
    v23 = v22 + 848;
    v24 = v22[782] + 1.0e-10;
    v25 = &__b;
    do
    {
      v26 = *v25++;
      v27 = v26;
      v28 = *v23++;
      *a3 = ((v27 * 308.0) * v28) / v24;
      a3 = (a3 + 4);
      --v6;
    }

    while (v6);
  }

  v29 = *&v44[28];
  v30 = *&__b;
  if (*&v44[28] <= 1uLL)
  {
    v30 = 0.0;
  }

  if (*&v44[28])
  {
    v31 = &__b;
    do
    {
      v32 = *v31++;
      v33 = v32;
      if (v30 < v32)
      {
        v30 = v33;
      }

      --v29;
    }

    while (v29);
  }

  v34 = v30 + 1.0e-15;
  if ((log10f(v34) * 10.0) < -60.0)
  {
    v36 = **(Phase::Logger::GetInstance(v35) + 1264);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "RayTracerState.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1111;
      _os_log_impl(&dword_23A302000, v36, OS_LOG_TYPE_DEBUG, "%25s:%-5d The source(s) directivity reduced sound power by more than 60dB.", buf, 0x12u);
    }
  }
}

void Phase::SpatialModeler::RayTracerState::GetSumSharedReverbEnergy(Phase::SpatialModeler::RayTracerState *this@<X0>, _OWORD *a2@<X8>)
{
  if (*this)
  {
    v4 = *(*this + 48);
    *a2 = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    a2[3] = 0u;
    a2[4] = 0u;
    a2[5] = 0u;
    a2[6] = 0u;
    *(a2 + 108) = 0u;
    *(a2 + 31) = v4;
    if (v4)
    {
      bzero(a2, 4 * v4);
    }
  }

  else
  {
    LODWORD(v4) = 0;
    a2[6] = 0u;
    a2[7] = 0u;
    a2[4] = 0u;
    a2[5] = 0u;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
  }

  for (i = *(this + 2430); i; i = *i)
  {
    if (v4)
    {
      v6 = i[8];
      if (v6)
      {
        v7 = 0;
        v8 = 0;
        v9 = *(v6 + 36);
        do
        {
          v10 = 0.0;
          if ((v9 & 1) == 0)
          {
            v11 = *(v6 + 24);
            if (v11)
            {
              v12 = (*(v6 + 8) + v7);
              do
              {
                v10 = v10 + *v12;
                v12 += *(v6 + 28);
                --v11;
              }

              while (v11);
            }
          }

          *(a2 + v8) = v10 + *(a2 + v8);
          ++v8;
          v7 += 4;
        }

        while (v8 != v4);
      }
    }
  }
}

float Phase::SpatialModeler::RayTracerState::GetSharedEnergyReFixedDb(Phase::SpatialModeler::RayTracerState *this, unint64_t *a2)
{
  v3 = std::__hash_table<std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>>>::find<unsigned long long>(this + 2428, a2);
  if (!v3)
  {
    return *(this + 41);
  }

  v4 = v3;
  v5 = *(this + 41);
  v6 = expf(((v5 * 10.0) / 10.0) * 0.23026) * *(this + 83);
  v7 = v4[20];
  if (v7 >= v6)
  {
    v8 = v7 / *(this + 120);
    if (v8 <= 0.0)
    {
      v8 = COERCE_FLOAT(1);
    }

    return ((logf(v8) * 4.3429) / 10.0) * 10.0;
  }

  return v5;
}

void Phase::SpatialModeler::GetMeanAbsorptionEstimateFromFirstAndHigherOrderTotalAbsorption(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, _OWORD *a5)
{
  v9 = a1;
  v10 = *(a1 + 124);
  __b = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  memset(v72, 0, 28);
  *&v72[28] = v10;
  if (v10)
  {
    memset_pattern16(&__b, &unk_23A597960, 4 * v10);
  }

  if (a4 + a3)
  {
    if (a4 < 0x3E9)
    {
      v22 = 0uLL;
      v64 = 0u;
      memset(v65, 0, 28);
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v59 = 0u;
      *&v65[28] = v10;
      if (v10)
      {
        memset_pattern16(&v59, &unk_23A597960, 4 * v10);
        v22 = 0uLL;
      }

      v23 = a4;
      v24 = *(a2 + 124);
      v52 = v22;
      v53 = v22;
      v54 = v22;
      v55 = v22;
      v56 = v22;
      v57 = v22;
      *v58 = v22;
      *&v58[12] = v22;
      *&v58[28] = v24;
      if (v24)
      {
        memset_pattern16(&v52, &unk_23A597960, 4 * v24);
      }

      v25 = a3;
      if (a3)
      {
        v50 = 0u;
        memset(v51, 0, 28);
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v45 = 0u;
        *&v51[28] = v10;
        if (v10)
        {
          v26 = &v45;
          do
          {
            v27 = *v9++;
            *v26++ = v27 / v25;
            --v10;
          }

          while (v10);
        }

        v63 = v49;
        v64 = v50;
        *v65 = *v51;
        *&v65[16] = *&v51[16];
        v59 = v45;
        v60 = v46;
        v61 = v47;
        v62 = v48;
      }

      if (a4)
      {
        v50 = 0u;
        memset(v51, 0, 28);
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v45 = 0u;
        *&v51[28] = v24;
        if (v24)
        {
          v28 = &v45;
          do
          {
            v29 = *a2;
            a2 += 4;
            *v28++ = v29 / v23;
            --v24;
          }

          while (v24);
        }

        v56 = v49;
        v57 = v50;
        *v58 = *v51;
        *&v58[16] = *&v51[16];
        v52 = v45;
        v53 = v46;
        v54 = v47;
        v55 = v48;
      }

      v30 = (v25 / (a4 + a3)) * ((v23 / -1000.0) + 1.0);
      v31 = *&v65[28];
      if (*&v65[28])
      {
        v32 = &v59;
        v33 = *&v65[28];
        do
        {
          *v32 = v30 * *v32;
          ++v32;
          --v33;
        }

        while (v33);
      }

      v34 = *&v58[28];
      if (*&v58[28])
      {
        v35 = &v52;
        do
        {
          *v35 = (1.0 - v30) * *v35;
          ++v35;
          --v34;
        }

        while (v34);
      }

      v50 = 0u;
      memset(v51, 0, 28);
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v45 = 0u;
      *&v51[28] = v31;
      if (v31)
      {
        v36 = &v45;
        v37 = &v52;
        v38 = &v59;
        do
        {
          v39 = *v38++;
          v40 = v39;
          v41 = *v37++;
          *v36++ = v40 + v41;
          --v31;
        }

        while (v31);
      }

      v42 = v50;
      a5[4] = v49;
      a5[5] = v42;
      v43 = *&v51[16];
      a5[6] = *v51;
      a5[7] = v43;
      v44 = v46;
      *a5 = v45;
      a5[1] = v44;
      v17 = v47;
      v18 = v48;
    }

    else
    {
      v11 = *(a2 + 124);
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      memset(v65, 0, 28);
      *&v65[28] = v11;
      if (v11)
      {
        v12 = &v59;
        do
        {
          v13 = *a2;
          a2 += 4;
          *v12++ = v13 / a4;
          --v11;
        }

        while (v11);
      }

      v14 = v64;
      a5[4] = v63;
      a5[5] = v14;
      v15 = *&v65[16];
      a5[6] = *v65;
      a5[7] = v15;
      v16 = v60;
      *a5 = v59;
      a5[1] = v16;
      v17 = v61;
      v18 = v62;
    }
  }

  else
  {
    v19 = v71;
    a5[4] = v70;
    a5[5] = v19;
    v20 = *&v72[16];
    a5[6] = *v72;
    a5[7] = v20;
    v21 = v67;
    *a5 = __b;
    a5[1] = v21;
    v17 = v68;
    v18 = v69;
  }

  a5[2] = v17;
  a5[3] = v18;
}

double Phase::SpatialModeler::RayTracerState::CalculateRoomStats(Phase::SpatialModeler::RayTracerState *this, Phase::Geometry::SystemState *a2)
{
  Phase::SpatialModeler::countSurfaceArea(a2, this + 2619, *(this + 83), this + 2616, this + 4877, this + 4912, *(this + 34), *(this + 35));
  Phase::SpatialModeler::RayTracerState::UpdateLocalMeanFreePathAndMeanAbsorption(this, v4);
  Phase::SpatialModeler::RayTracerState::UpdateLocalVolumeEstimate(this, a2);
  Phase::SpatialModeler::RayTracerState::UpdateLocalRT60Estimate(this);

  return Phase::SpatialModeler::RayTracerState::calculateTotalEarlyAndLateEnergy(this, this + 1292, this + 1300, a2);
}

float Phase::SpatialModeler::RayTracerState::getSumOfActiveRays(Phase::SpatialModeler::RayTracerState *this)
{
  v1 = *(this + 2420);
  if (v1 == (this + 19368))
  {
    return *(this + 4754);
  }

  result = 0.0;
  do
  {
    v3 = *(v1 + 7);
    if (v3 && (*(v3 + 36) & 1) == 0)
    {
      result = result + *(v1 + 18);
    }

    v4 = *(v1 + 1);
    if (v4)
    {
      do
      {
        v5 = v4;
        v4 = *v4;
      }

      while (v4);
    }

    else
    {
      do
      {
        v5 = *(v1 + 2);
        v6 = *v5 == v1;
        v1 = v5;
      }

      while (!v6);
    }

    v1 = v5;
  }

  while (v5 != (this + 19368));
  if (result == 0.0)
  {
    return *(this + 4754);
  }

  return result;
}

float Phase::SpatialModeler::RayTracerState::getMinNumberOfActiveRaysAmongSources(Phase::SpatialModeler::RayTracerState *this)
{
  v1 = *(this + 2420);
  if (v1 == (this + 19368))
  {
    result = 3.4028e38;
  }

  else
  {
    result = 3.4028e38;
    do
    {
      v3 = *(v1 + 7);
      if (v3 && (*(v3 + 36) & 1) == 0)
      {
        result = fminf(*(v1 + 18), result);
      }

      v4 = *(v1 + 1);
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = *(v1 + 2);
          v6 = *v5 == v1;
          v1 = v5;
        }

        while (!v6);
      }

      v1 = v5;
    }

    while (v5 != (this + 19368));
  }

  if (result > 3.4e37)
  {
    return 0.0;
  }

  return result;
}

void Phase::SpatialModeler::RayTracerState::descriptionString(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  memset(&v8, 0, sizeof(v8));
  memset(&__p, 0, sizeof(__p));
  if (*a1)
  {
    if (*(*a1 + 32) == 2)
    {
      v5 = "ER ";
    }

    else
    {
      v5 = "LR ";
    }

    std::string::__assign_external(&v8, v5);
    if (a2)
    {
      if (*(a2 + 48))
      {
        v6 = "Attack";
      }

      else
      {
        v6 = "Sustain";
      }
    }

    else
    {
      v6 = "";
    }

    std::string::__assign_external(&__p, v6);
  }

  else
  {
    *(&v8.__r_.__value_.__s + 23) = 13;
    strcpy(&v8, "Uninitialized");
    *(&__p.__r_.__value_.__s + 23) = 3;
    LODWORD(__p.__r_.__value_.__l.__data_) = 4271950;
  }

  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v8.__r_.__value_.__l.__data_, &__p.__r_.__value_.__l.__data_, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

void sub_23A4CAA78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **std::__tree<std::__value_type<unsigned long long,Phase::SpatialModeler::RendererInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,Phase::SpatialModeler::RendererInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,Phase::SpatialModeler::RendererInfo>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<unsigned long long,Phase::SpatialModeler::RendererInfo>,std::__tree_node<std::__value_type<unsigned long long,Phase::SpatialModeler::RendererInfo>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v8 = result + 1;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v9 = v6[1];
    }

    else
    {
      v9 = v6;
    }

    v21 = result;
    v22 = v9;
    v23 = v9;
    if (v9)
    {
      v10 = std::__tree<std::__value_type<unsigned long long,Phase::SpatialModeler::RendererInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,Phase::SpatialModeler::RendererInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,Phase::SpatialModeler::RendererInfo>>>::_DetachedTreeCache::__detach_next(v9);
      v22 = v10;
      if (a2 != a3)
      {
        v11 = a2;
        do
        {
          v12 = v10;
          v13 = v11[4];
          *(v9 + 32) = v13;
          v14 = *(v11 + 5);
          v15 = *(v11 + 7);
          *(v9 + 72) = v11[9];
          *(v9 + 56) = v15;
          *(v9 + 40) = v14;
          v16 = *v8;
          v17 = v5 + 1;
          v18 = v5 + 1;
          if (*v8)
          {
            do
            {
              while (1)
              {
                v17 = v16;
                if (v13 >= v16[4])
                {
                  break;
                }

                v16 = *v16;
                v18 = v17;
                if (!*v17)
                {
                  goto LABEL_14;
                }
              }

              v16 = v16[1];
            }

            while (v16);
            v18 = v17 + 1;
          }

LABEL_14:
          std::__tree<Phase::SpatialCategory>::__insert_node_at(v5, v17, v18, v9);
          if (v12)
          {
            v10 = std::__tree<std::__value_type<unsigned long long,Phase::SpatialModeler::RendererInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,Phase::SpatialModeler::RendererInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,Phase::SpatialModeler::RendererInfo>>>::_DetachedTreeCache::__detach_next(v12);
          }

          else
          {
            v10 = 0;
          }

          v19 = v11[1];
          if (v19)
          {
            do
            {
              a2 = v19;
              v19 = *v19;
            }

            while (v19);
          }

          else
          {
            do
            {
              a2 = v11[2];
              v20 = *a2 == v11;
              v11 = a2;
            }

            while (!v20);
          }

          if (!v12)
          {
            break;
          }

          v9 = v12;
          v11 = a2;
        }

        while (a2 != a3);
        v22 = v10;
        v23 = v12;
      }
    }

    result = std::__tree<std::__value_type<unsigned long long,Phase::SpatialModeler::RendererInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,Phase::SpatialModeler::RendererInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,Phase::SpatialModeler::RendererInfo>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v21);
  }

  if (a2 != a3)
  {
    operator new();
  }

  return result;
}

void *std::__tree<std::__value_type<unsigned long long,Phase::SpatialModeler::RendererInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,Phase::SpatialModeler::RendererInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,Phase::SpatialModeler::RendererInfo>>>::_DetachedTreeCache::__detach_next(uint64_t a1)
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

uint64_t std::__tree<std::__value_type<unsigned long long,Phase::SpatialModeler::RendererInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,Phase::SpatialModeler::RendererInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,Phase::SpatialModeler::RendererInfo>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<Phase::SpatialCategory>::destroy(*a1, *(a1 + 16));
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

    std::__tree<Phase::SpatialCategory>::destroy(*a1, v2);
  }

  return a1;
}

uint64_t std::pair<unsigned long long const,Phase::SpatialModeler::SourceListenerResult>::~pair(uint64_t a1)
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

  return a1;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

void std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRClusterResult>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRClusterResult>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRClusterResult>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRClusterResult>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRClusterResult>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRClusterResult>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRClusterResult>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::SpatialModeler::SingleLRClusterResult>>>::__deallocate_node(a1, *(a1 + 16));
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

void *std::__tree<std::__value_type<unsigned long long,Phase::SpatialModeler::SourceListenerResult>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,Phase::SpatialModeler::SourceListenerResult>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,Phase::SpatialModeler::SourceListenerResult>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<unsigned long long,Phase::SpatialModeler::SourceListenerResult>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned long long,Phase::SpatialModeler::SourceListenerResult>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<unsigned long long const,Phase::SpatialModeler::SourceListenerResult>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_23A4CAFFC(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<Phase::SpatialModeler::EarlyReflectionDetector>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284D37000;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

uint64_t std::__shared_ptr_emplace<Phase::SpatialModeler::EarlyReflectionDetector>::__on_zero_shared(void *a1)
{
  v2 = a1[17];
  if (v2)
  {
    a1[18] = v2;
    operator delete(v2);
  }

  v3 = a1[14];
  if (v3)
  {
    a1[15] = v3;
    operator delete(v3);
  }

  v4 = a1[11];
  if (v4)
  {
    a1[12] = v4;
    operator delete(v4);
  }

  v5 = a1[8];
  if (v5)
  {
    a1[9] = v5;
    operator delete(v5);
  }

  return std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table((a1 + 3));
}

void std::__shared_ptr_emplace<Phase::SpatialModeler::DirectivityHistogram>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284D37038;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

unint64_t Phase::SpatialModeler::GetSoundSourceHash(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 && *(a3 + 48) == 3)
  {
    v3 = 0xC6A4A7935BD1E995 * *(a3 + 56);
  }

  else
  {
    v3 = 0;
  }

  return 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * (v3 ^ (v3 >> 47))) ^ (0xC6A4A7935BD1E995 * ((0x35A98F4D286A90B9 * ((0xC6A4A7935BD1E995 * a1) ^ ((0xC6A4A7935BD1E995 * a1) >> 47)) + 3864292196u) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a2) ^ ((0xC6A4A7935BD1E995 * a2) >> 47)))) + 3864292196u)) + 3864292196u;
}

unint64_t Phase::SpatialModeler::GetClusterHash(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      v5 = *v2++;
      v4 = 3864292196u - 0x395B586CA42E166BLL * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v5) ^ ((0xC6A4A7935BD1E995 * v5) >> 47))) ^ v4);
    }

    while (v2 != v3);
  }

  return 3864292196u - 0x395B586CA42E166BLL * (v4 ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a2) ^ ((0xC6A4A7935BD1E995 * a2) >> 47))));
}

void Phase::SpatialModeler::scatterVectorOnPlane(float *a1, float *a2, float a3, float a4)
{
  v7 = sqrtf(1.0 - a3);
  v8 = a4 * 6.28318531;
  v9 = cosf(v8);
  v11.i32[0] = 1.0;
  v12 = (v7 * v7) * (1.0 - (v9 * v9));
  if (v12 < 0.0)
  {
    __assert_rtn("scatterVectorOnPlane", "RayTracingMath.cpp", 197, "tmp >= 0");
  }

  v13 = sqrtf(a3);
  v15 = a2[1];
  v14 = a2[2];
  v16 = sqrtf((v14 * v14) + ((*a2 * *a2) + (v15 * v15)));
  v17 = v14 / v16;
  *v10.i32 = *a2 / v16;
  v18 = v15 / v16;
  v19 = ((a1[1] * v18) + (*a1 * *v10.i32)) + (a1[2] * v17);
  v20.i64[0] = 0x8000000080000000;
  v20.i64[1] = 0x8000000080000000;
  v20.i32[0] = vbslq_s8(v20, v11, v10).i32[0];
  v21 = 1.0 / (*v10.i32 + *v20.i32);
  v22 = -(*v20.i32 - (v17 * (v17 * v21)));
  v23 = v18 * v21;
  v24 = -(*v20.i32 - (v18 * v23));
  v25 = v17 * v23;
  v26 = v7 * v9;
  v27 = sqrtf(v12);
  if (v8 > 3.14159265)
  {
    v27 = -v27;
  }

  v28 = (v13 * *v10.i32) + (v26 * v18);
  v29 = (v13 * v18) + (v26 * v24);
  v30 = (v13 * v17) + (v26 * v25);
  v31 = v27 * v22;
  v32 = (v27 * v17) + v28;
  v33 = (v27 * v25) + v29;
  v34 = v31 + v30;
  *a1 = v32;
  a1[1] = v33;
  a1[2] = v34;
  if (v19 >= 0.0)
  {
    *a1 = -v32;
    a1[1] = -v33;
    a1[2] = -v34;
  }
}

void Phase::SpatialModeler::ApplyDirectivitySubbandGains(Phase::Logger *a1, int *a2, float32x2_t *a3, float32x2_t *a4)
{
  v4 = a1;
  v160 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 31);
  if (v5 > 5)
  {
    if (v5 != 6)
    {
      if (v5 == 10)
      {
        __asm { FMOV            V0.4S, #1.0 }

        v147 = _Q0;
        v148 = _Q0;
        __asm { FMOV            V0.2S, #1.0 }

        *&v149 = _Q0;
        if (a2)
        {
          v45 = *a2;
          if (*a2 == 3)
          {
            v100 = **(a2 + 5);
            if (!v100)
            {
              goto LABEL_145;
            }

            Phase::TransformPositionByInverse<float>(a3, a4, buf);
            v101 = *buf;
            v102 = *&buf[8];
            v103 = acosf(*&buf[4] / sqrtf(((v101 * v101) + (*&buf[4] * *&buf[4])) + (v102 * v102)));
            v104 = atan2f(v101, v102) + 3.1416;
            v105 = v104 - (floorf(v104 / 6.2832) * 6.2832);
            if (v105 >= 6.2832)
            {
              v106 = nextafterf(6.2832, 0.0);
            }

            else
            {
              v106 = v105 + 0.0;
            }

            v131 = **(v100 + 40);
            v132 = cosf(v106);
            v133 = cosf(v103 + -1.5708);
            v134 = acosf(v133 * v132);
            ValuesForAllDimensionsAt = Phase::Zeppelin::SphereSampling::NDimEquiangularHalfCircleData<float,double>::GetValuesForAllDimensionsAt(v131, 0, v134);
            v136 = 0;
            v137 = buf;
            do
            {
              v138 = *(ValuesForAllDimensionsAt + v136);
              *v137++ = v138;
              v136 += 8;
            }

            while (v136 != 80);
            v147 = *buf;
            v148 = *&buf[16];
            *&v149 = v155;
          }

          else if (v45 == 2)
          {
            v91 = *(*(a2 + 5) + 80);
            if (!v91)
            {
              goto LABEL_145;
            }

            Phase::TransformPositionByInverse<float>(a3, a4, buf);
            v92 = acosf(-*&buf[8] / sqrtf(vaddv_f32(vmul_f32(*buf, *buf)) + (*&buf[8] * *&buf[8])));
            Phase::Geometry::ConeDirectivity::CalculateSubbandGains<10ul>(&v147, v91, v92 + v92);
          }

          else if (v45 == 1)
          {
            v46 = *(*(a2 + 5) + 80);
            if (!v46)
            {
              goto LABEL_145;
            }

            Phase::TransformPositionByInverse<float>(a3, a4, buf);
            v47 = *buf;
            v48 = *&buf[8];
            v49 = acosf(*&buf[4] / sqrtf(((v47 * v47) + (*&buf[4] * *&buf[4])) + (v48 * v48)));
            v50 = atan2f(v47, v48) + 3.1416;
            v51 = v50 - (floorf(v50 / 6.2832) * 6.2832);
            if (v51 >= 6.2832)
            {
              v52 = nextafterf(6.2832, 0.0);
            }

            else
            {
              v52 = v51 + 0.0;
            }

            Phase::Geometry::CardioidDirectivity::CalculateSubbandGains<10ul>(&v147, v46, v49, v52);
          }
        }

        v143 = *(v4 + 31);
        if (v143 >= 0xA)
        {
          v144 = 10;
        }

        else
        {
          v144 = v143;
        }

        if (v143)
        {
          v145 = &v147;
          do
          {
            v146 = *v145++;
            *v4 = *v4 * (v146 * v146);
            v4 = (v4 + 4);
            --v144;
          }

          while (v144);
        }

        return;
      }

      if (v5 == 31)
      {
        __asm { FMOV            V0.4S, #1.0 }

        v147 = _Q0;
        v148 = _Q0;
        v149 = _Q0;
        v150 = _Q0;
        v151 = _Q0;
        v152 = _Q0;
        *v153 = _Q0;
        __asm { FMOV            V0.2S, #1.0 }

        *&v153[16] = _Q0;
        *&v153[24] = 1065353216;
        if (a2)
        {
          v14 = *a2;
          if (*a2 == 3)
          {
            v93 = **(a2 + 5);
            if (!v93)
            {
              goto LABEL_145;
            }

            Phase::TransformPositionByInverse<float>(a3, a4, buf);
            v94 = *buf;
            v95 = *&buf[8];
            v96 = acosf(*&buf[4] / sqrtf(((v94 * v94) + (*&buf[4] * *&buf[4])) + (v95 * v95)));
            v97 = atan2f(v94, v95) + 3.1416;
            v98 = v97 - (floorf(v97 / 6.2832) * 6.2832);
            if (v98 >= 6.2832)
            {
              v99 = nextafterf(6.2832, 0.0);
            }

            else
            {
              v99 = v98 + 0.0;
            }

            v123 = **(v93 + 32);
            v124 = cosf(v99);
            v125 = cosf(v96 + -1.5708);
            v126 = acosf(v125 * v124);
            v127 = Phase::Zeppelin::SphereSampling::NDimEquiangularHalfCircleData<float,double>::GetValuesForAllDimensionsAt(v123, 0, v126);
            v128 = 0;
            v129 = buf;
            do
            {
              v130 = *(v127 + v128);
              *v129++ = v130;
              v128 += 8;
            }

            while (v128 != 248);
            v151 = v157;
            v152 = v158;
            *v153 = v159[0];
            *&v153[12] = *(v159 + 12);
            v147 = *buf;
            v148 = *&buf[16];
            v149 = v155;
            v150 = v156;
          }

          else if (v14 == 2)
          {
            v89 = *(*(a2 + 5) + 120);
            if (!v89)
            {
              goto LABEL_145;
            }

            Phase::TransformPositionByInverse<float>(a3, a4, buf);
            v90 = acosf(-*&buf[8] / sqrtf(vaddv_f32(vmul_f32(*buf, *buf)) + (*&buf[8] * *&buf[8])));
            Phase::Geometry::ConeDirectivity::CalculateSubbandGains<31ul>(&v147, v89, v90 + v90);
          }

          else if (v14 == 1)
          {
            v15 = *(*(a2 + 5) + 120);
            if (!v15)
            {
              goto LABEL_145;
            }

            Phase::TransformPositionByInverse<float>(a3, a4, buf);
            v16 = *buf;
            v17 = *&buf[8];
            v18 = acosf(*&buf[4] / sqrtf(((v16 * v16) + (*&buf[4] * *&buf[4])) + (v17 * v17)));
            v19 = atan2f(v16, v17) + 3.1416;
            v20 = v19 - (floorf(v19 / 6.2832) * 6.2832);
            if (v20 >= 6.2832)
            {
              v21 = nextafterf(6.2832, 0.0);
            }

            else
            {
              v21 = v20 + 0.0;
            }

            Phase::Geometry::CardioidDirectivity::CalculateSubbandGains<31ul>(&v147, v15, v18, v21);
          }
        }

        v139 = *(v4 + 31);
        if (v139 >= 0x1F)
        {
          v140 = 31;
        }

        else
        {
          v140 = v139;
        }

        if (v139)
        {
          v141 = &v147;
          do
          {
            v142 = *v141++;
            *v4 = *v4 * (v142 * v142);
            v4 = (v4 + 4);
            --v140;
          }

          while (v140);
        }

        return;
      }

LABEL_34:
      v36 = **(Phase::Logger::GetInstance(a1) + 1264);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = *(v4 + 31);
        *buf = 136315650;
        *&buf[4] = "RayTracingMath.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 286;
        *&buf[18] = 1024;
        *&buf[20] = v37;
        _os_log_impl(&dword_23A302000, v36, OS_LOG_TYPE_ERROR, "%25s:%-5d Unsupported subband count: %ui\n", buf, 0x18u);
      }

      return;
    }

    __asm { FMOV            V0.4S, #1.0 }

    *buf = _Q0;
    __asm { FMOV            V0.2S, #1.0 }

    *&buf[16] = _Q0;
    if (a2)
    {
      v34 = *a2;
      if (*a2 == 1)
      {
        v55 = **(a2 + 5);
        if (!v55)
        {
          goto LABEL_145;
        }

        Phase::TransformPositionByInverse<float>(a3, a4, &v147);
        v56 = *&v147;
        v57 = *(&v147 + 2);
        v58 = acosf(*(&v147 + 1) / sqrtf(((v56 * v56) + (*(&v147 + 1) * *(&v147 + 1))) + (v57 * v57)));
        v59 = atan2f(v56, v57) + 3.1416;
        v60 = v59 - (floorf(v59 / 6.2832) * 6.2832);
        if (v60 >= 6.2832)
        {
          v61 = nextafterf(6.2832, 0.0);
        }

        else
        {
          v61 = v60 + 0.0;
        }

        Phase::Geometry::CardioidDirectivity::CalculateSubbandGains<6ul>(buf, v55, v58, v61);
      }

      else if (v34 == 2)
      {
        v53 = **(a2 + 5);
        if (!v53)
        {
          goto LABEL_145;
        }

        Phase::TransformPositionByInverse<float>(a3, a4, &v147);
        v54 = acosf(-*(&v147 + 2) / sqrtf(vaddv_f32(vmul_f32(*&v147, *&v147)) + (*(&v147 + 2) * *(&v147 + 2))));
        Phase::Geometry::ConeDirectivity::CalculateSubbandGains<6ul>(buf, v53, v54 + v54);
      }

      else if (v34 == 3)
      {
        if (**(a2 + 5))
        {
          Phase::TransformPositionByInverse<float>(a3, a4, &v147);
          Phase::Geometry::SphericalCapDirectivity::GetSubbandGainsFromDatabase<6ul>(v35);
        }

LABEL_145:
        std::terminate();
      }
    }

    v107 = *(v4 + 31);
    if (v107 >= 6)
    {
      v108 = 6;
    }

    else
    {
      v108 = v107;
    }

    if (v107)
    {
      v109 = buf;
      do
      {
        v110 = *v109++;
        *v4 = *v4 * (v110 * v110);
        v4 = (v4 + 4);
        --v108;
      }

      while (v108);
    }

    return;
  }

  if (v5 == 3)
  {
    v22 = 1.0;
    if (a2)
    {
      v23 = *a2;
      if (*a2 == 3)
      {
        v82 = **(a2 + 5);
        if (!v82)
        {
          goto LABEL_145;
        }

        Phase::TransformPositionByInverse<float>(a3, a4, buf);
        v83 = *buf;
        v84 = *&buf[8];
        v85 = acosf(*&buf[4] / sqrtf(((v83 * v83) + (*&buf[4] * *&buf[4])) + (v84 * v84)));
        v86 = atan2f(v83, v84) + 3.1416;
        v87 = v86 - (floorf(v86 / 6.2832) * 6.2832);
        if (v87 >= 6.2832)
        {
          v88 = nextafterf(6.2832, 0.0);
        }

        else
        {
          v88 = v87 + 0.0;
        }

        SubbandGainsFrom = Phase::Geometry::SphericalCapDirectivity::GetSubbandGainsFromDatabase<3ul>(v82, v85, v88);
      }

      else if (v23 == 2)
      {
        v80 = *(*(a2 + 5) + 40);
        if (!v80)
        {
          goto LABEL_145;
        }

        Phase::TransformPositionByInverse<float>(a3, a4, buf);
        v81 = acosf(-*&buf[8] / sqrtf(vaddv_f32(vmul_f32(*buf, *buf)) + (*&buf[8] * *&buf[8])));
        SubbandGainsFrom = Phase::Geometry::ConeDirectivity::CalculateSubbandGains<3ul>(v80, v81 + v81);
      }

      else
      {
        v24 = 1.0;
        SubbandGainsFrom = 1.0;
        if (v23 == 1)
        {
          v26 = *(*(a2 + 5) + 40);
          if (!v26)
          {
            goto LABEL_145;
          }

          Phase::TransformPositionByInverse<float>(a3, a4, buf);
          v27 = *buf;
          v28 = *&buf[8];
          v29 = acosf(*&buf[4] / sqrtf(((v27 * v27) + (*&buf[4] * *&buf[4])) + (v28 * v28)));
          v30 = atan2f(v27, v28) + 3.1416;
          v31 = v30 - (floorf(v30 / 6.2832) * 6.2832);
          if (v31 >= 6.2832)
          {
            v32 = nextafterf(6.2832, 0.0);
          }

          else
          {
            v32 = v31 + 0.0;
          }

          Phase::Geometry::CardioidDirectivity::CalculateSubbandGains<3ul>(v26, v29, v32);
        }
      }
    }

    else
    {
      v24 = 1.0;
      SubbandGainsFrom = 1.0;
    }

    *buf = SubbandGainsFrom;
    *&buf[4] = v24;
    *&buf[8] = v22;
    v119 = *(v4 + 31);
    if (v119 >= 3)
    {
      v120 = 3;
    }

    else
    {
      v120 = v119;
    }

    if (v119)
    {
      v121 = buf;
      do
      {
        v122 = *v121++;
        *v4 = *v4 * (v122 * v122);
        v4 = (v4 + 4);
        --v120;
      }

      while (v120);
    }

    return;
  }

  if (v5 == 4)
  {
    v38 = 1.0;
    if (a2)
    {
      v39 = *a2;
      if (*a2 == 1)
      {
        v73 = **(a2 + 5);
        if (!v73)
        {
          goto LABEL_145;
        }

        Phase::TransformPositionByInverse<float>(a3, a4, buf);
        v74 = *buf;
        v75 = *&buf[8];
        v76 = acosf(*&buf[4] / sqrtf(((v74 * v74) + (*&buf[4] * *&buf[4])) + (v75 * v75)));
        v77 = atan2f(v74, v75) + 3.1416;
        v78 = v77 - (floorf(v77 / 6.2832) * 6.2832);
        if (v78 >= 6.2832)
        {
          v79 = nextafterf(6.2832, 0.0);
        }

        else
        {
          v79 = v78 + 0.0;
        }

        Phase::Geometry::CardioidDirectivity::CalculateSubbandGains<4ul>(v73, v76, v79);
      }

      else if (v39 == 2)
      {
        v64 = **(a2 + 5);
        if (!v64)
        {
          goto LABEL_145;
        }

        Phase::TransformPositionByInverse<float>(a3, a4, buf);
        v65 = acosf(-*&buf[8] / sqrtf(vaddv_f32(vmul_f32(*buf, *buf)) + (*&buf[8] * *&buf[8])));
        v42 = Phase::Geometry::ConeDirectivity::CalculateSubbandGains<4ul>(v64, v65 + v65);
      }

      else
      {
        v40 = 1.0;
        v41 = 1.0;
        v42 = 1.0;
        if (v39 == 3)
        {
          if (**(a2 + 5))
          {
            Phase::TransformPositionByInverse<float>(a3, a4, buf);
            Phase::Geometry::SphericalCapDirectivity::GetSubbandGainsFromDatabase<4ul>(v43);
          }

          goto LABEL_145;
        }
      }
    }

    else
    {
      v40 = 1.0;
      v41 = 1.0;
      v42 = 1.0;
    }

    *buf = v42;
    *&buf[4] = v41;
    *&buf[8] = v40;
    *&buf[12] = v38;
    v115 = *(v4 + 31);
    if (v115 >= 4)
    {
      v116 = 4;
    }

    else
    {
      v116 = v115;
    }

    if (v115)
    {
      v117 = buf;
      do
      {
        v118 = *v117++;
        *v4 = *v4 * (v118 * v118);
        v4 = (v4 + 4);
        --v116;
      }

      while (v116);
    }

    return;
  }

  if (v5 != 5)
  {
    goto LABEL_34;
  }

  __asm { FMOV            V0.4S, #1.0 }

  *buf = _Q0;
  *&buf[16] = 1065353216;
  if (a2)
  {
    v11 = *a2;
    if (*a2 == 1)
    {
      v66 = **(a2 + 5);
      if (!v66)
      {
        goto LABEL_145;
      }

      Phase::TransformPositionByInverse<float>(a3, a4, &v147);
      v67 = *&v147;
      v68 = *(&v147 + 2);
      v69 = acosf(*(&v147 + 1) / sqrtf(((v67 * v67) + (*(&v147 + 1) * *(&v147 + 1))) + (v68 * v68)));
      v70 = atan2f(v67, v68) + 3.1416;
      v71 = v70 - (floorf(v70 / 6.2832) * 6.2832);
      if (v71 >= 6.2832)
      {
        v72 = nextafterf(6.2832, 0.0);
      }

      else
      {
        v72 = v71 + 0.0;
      }

      Phase::Geometry::CardioidDirectivity::CalculateSubbandGains<5ul>(buf, v66, v69, v72);
    }

    else if (v11 == 2)
    {
      v62 = **(a2 + 5);
      if (!v62)
      {
        goto LABEL_145;
      }

      Phase::TransformPositionByInverse<float>(a3, a4, &v147);
      v63 = acosf(-*(&v147 + 2) / sqrtf(vaddv_f32(vmul_f32(*&v147, *&v147)) + (*(&v147 + 2) * *(&v147 + 2))));
      Phase::Geometry::ConeDirectivity::CalculateSubbandGains<5ul>(buf, v62, v63 + v63);
    }

    else if (v11 == 3)
    {
      if (**(a2 + 5))
      {
        Phase::TransformPositionByInverse<float>(a3, a4, &v147);
        Phase::Geometry::SphericalCapDirectivity::GetSubbandGainsFromDatabase<5ul>(v12);
      }

      goto LABEL_145;
    }
  }

  v111 = *(v4 + 31);
  if (v111 >= 5)
  {
    v112 = 5;
  }

  else
  {
    v112 = v111;
  }

  if (v111)
  {
    v113 = buf;
    do
    {
      v114 = *v113++;
      *v4 = *v4 * (v114 * v114);
      v4 = (v4 + 4);
      --v112;
    }

    while (v112);
  }
}

void Phase::SpatialModeler::applySourceDirectivity(_OWORD *a1@<X0>, uint64_t a2@<X1>, float32x2_t *a3@<X2>, uint64_t a4@<X3>, float32x2_t *a5@<X4>, Phase::Logger *a6@<X8>)
{
  v8 = a1[5];
  *(a6 + 4) = a1[4];
  *(a6 + 5) = v8;
  v9 = a1[7];
  *(a6 + 6) = a1[6];
  *(a6 + 7) = v9;
  v10 = a1[1];
  *a6 = *a1;
  *(a6 + 1) = v10;
  v11 = a1[3];
  *(a6 + 2) = a1[2];
  *(a6 + 3) = v11;
  if (*(a2 + 64) > a4 && (v12 = *(a2 + 48) + 24 * a4, *(v12 + 20) == HIDWORD(a4)))
  {
    v13 = *v12;
  }

  else
  {
    v13 = 0;
  }

  Phase::SpatialModeler::ApplyDirectivitySubbandGains(a6, v13, a3, a5);
}

void Phase::SpatialModeler::applyListenerDirectivity(_OWORD *a1@<X0>, uint64_t a2@<X1>, float32x2_t *a3@<X2>, uint64_t a4@<X3>, Phase::Logger *a5@<X8>, float a6@<S0>, float a7@<S1>)
{
  v12 = a6 * 0.017453;
  v13 = __sincosf_stret((90.0 - a7) * 0.017453);
  v14 = __sincosf_stret(v12);
  v15.f32[0] = v14.__sinval * v13.__sinval;
  v16 = (v14.__cosval * v13.__sinval) + a3[9].f32[0];
  v15.i32[1] = LODWORD(v13.__cosval);
  v17 = vadd_f32(v15, a3[8]);
  v18 = v16;
  Phase::SpatialModeler::applySourceDirectivity(a1, a2, a3 + 6, a4, &v17, a5);
}

void Phase::SpatialModeler::CalculateSoundPowerRelativeToOmni(Phase::Logger *a1, int *a2, uint64_t a3)
{
  v4 = a1;
  v351 = *MEMORY[0x277D85DE8];
  if (a3 > 5)
  {
    if (a3 != 6)
    {
      if (a3 == 10)
      {
        v331 = 0;
        v329 = 0u;
        v330 = 0u;
        if (a2)
        {
          v44 = *a2;
          if (*a2 == 3)
          {
            v261 = **(a2 + 5);
            if (!v261)
            {
              goto LABEL_454;
            }

            for (i = 0; i != 30; ++i)
            {
              v263 = (i * 0.10833) - (floorf((i * 0.10833) / 6.2832) * 6.2832);
              if (v263 >= 6.2832)
              {
                v264 = nextafterf(6.2832, 0.0);
              }

              else
              {
                v264 = v263 + 0.0;
              }

              v265 = *(v261 + 40);
              v266 = cosf(v264);
              v267 = acosf(v266);
              ValuesForAllDimensionsAt = Phase::Zeppelin::SphereSampling::NDimEquiangularHalfCircleData<float,double>::GetValuesForAllDimensionsAt(*v265, 0, v267);
              v270 = 0;
              v271 = buf;
              do
              {
                v272 = *(ValuesForAllDimensionsAt + v270);
                *v271++ = v272;
                v270 += 8;
              }

              while (v270 != 80);
              v273 = *buf;
              v274 = *&buf[16];
              v269.i32[0] = 977287680;
              v275 = *v346.f32;
              if (i)
              {
                v269.i32[0] = 977287680;
                if (i != 29)
                {
                  v309 = *buf;
                  v320 = *&buf[16];
                  v276 = cosf(((i - 1) * 0.10833) + 0.054165);
                  *v269.i32 = (v276 - cosf((i * 0.10833) + 0.054165)) * 0.5;
                  v273 = v309;
                  v274 = v320;
                }
              }

              v277 = 0;
              v278 = 0;
              v279 = 0;
              *buf = vmulq_f32(v273, v273);
              *&buf[16] = vmulq_f32(v274, v274);
              *v346.f32 = vmul_f32(v275, v275);
              v332 = 0u;
              v333 = 0u;
              v334 = 0;
              do
              {
                if (v278 <= 9)
                {
                  v277 = v278 + 1;
                  v332.i32[v278++] = *&buf[v279];
                }

                v279 += 4;
              }

              while (v279 != 40);
              if (v277 <= 9)
              {
                v321 = v269;
                bzero(&v332.f32[v277], 40 - 4 * v277);
                v269 = v321;
              }

              v280 = 0;
              v281 = 0;
              v282 = 0;
              *buf = vmulq_n_f32(v332, *v269.i32);
              *&buf[16] = vmulq_n_f32(v333, *v269.i32);
              *v346.f32 = vmul_f32(*&vdupq_lane_s32(v269, 0), v334);
              v335 = 0u;
              v336 = 0u;
              v337 = 0;
              do
              {
                if (v281 <= 9)
                {
                  v280 = v281 + 1;
                  v335.i32[v281++] = *&buf[v282];
                }

                v282 += 4;
              }

              while (v282 != 40);
              if (v280 <= 9)
              {
                bzero(&v335.f32[v280], 40 - 4 * v280);
              }

              v283 = 0;
              v284 = 0;
              v285 = 0;
              *buf = vaddq_f32(v329, v335);
              *&buf[16] = vaddq_f32(v330, v336);
              *v346.f32 = vadd_f32(v331, v337);
              v338 = 0u;
              v339 = 0u;
              v340.i64[0] = 0;
              do
              {
                if (v284 <= 9)
                {
                  v283 = v284 + 1;
                  v338.i32[v284++] = *&buf[v285];
                }

                v285 += 4;
              }

              while (v285 != 40);
              if (v283 <= 9)
              {
                bzero(&v338.f32[v283], 40 - 4 * v283);
              }

              v329 = v338;
              v330 = v339;
              v331 = *v340.f32;
            }
          }

          else if (v44 == 2)
          {
            v228 = **(a2 + 5);
            if (!v228)
            {
              goto LABEL_454;
            }

            for (j = 0; j != 30; ++j)
            {
              v230 = (j * 0.10833) - (floorf((j * 0.10833) / 6.2832) * 6.2832);
              if (v230 >= 6.2832)
              {
                v231 = nextafterf(6.2832, 0.0);
              }

              else
              {
                v231 = v230 + 0.0;
              }

              Phase::Geometry::ConeDirectivity::CalculateSubbandGains<10ul>(&v338, v228, v231);
              v232.i32[0] = 977287680;
              if (j)
              {
                v232.i32[0] = 977287680;
                if (j != 29)
                {
                  v233 = cosf(((j - 1) * 0.10833) + 0.054165);
                  *v232.i32 = (v233 - cosf((j * 0.10833) + 0.054165)) * 0.5;
                }
              }

              v234 = 0;
              v235 = 0;
              v236 = 0;
              *buf = vmulq_f32(v338, v338);
              *&buf[16] = vmulq_f32(v339, v339);
              *v346.f32 = vmul_f32(*v340.f32, *v340.f32);
              v322 = 0u;
              v323 = 0u;
              v324.i64[0] = 0;
              do
              {
                if (v235 <= 9)
                {
                  v234 = v235 + 1;
                  v322.i32[v235++] = *&buf[v236];
                }

                v236 += 4;
              }

              while (v236 != 40);
              if (v234 <= 9)
              {
                v319 = v232;
                bzero(&v322.f32[v234], 40 - 4 * v234);
                v232 = v319;
              }

              v237 = 0;
              v238 = 0;
              v239 = 0;
              *buf = vmulq_n_f32(v322, *v232.i32);
              *&buf[16] = vmulq_n_f32(v323, *v232.i32);
              *v346.f32 = vmul_f32(*&vdupq_lane_s32(v232, 0), *v324.f32);
              v332 = 0u;
              v333 = 0u;
              v334 = 0;
              do
              {
                if (v238 <= 9)
                {
                  v237 = v238 + 1;
                  v332.i32[v238++] = *&buf[v239];
                }

                v239 += 4;
              }

              while (v239 != 40);
              if (v237 <= 9)
              {
                bzero(&v332.f32[v237], 40 - 4 * v237);
              }

              v240 = 0;
              v241 = 0;
              v242 = 0;
              *buf = vaddq_f32(v329, v332);
              *&buf[16] = vaddq_f32(v330, v333);
              *v346.f32 = vadd_f32(v331, v334);
              v335 = 0u;
              v336 = 0u;
              v337 = 0;
              do
              {
                if (v241 <= 9)
                {
                  v240 = v241 + 1;
                  v335.i32[v241++] = *&buf[v242];
                }

                v242 += 4;
              }

              while (v242 != 40);
              if (v240 <= 9)
              {
                bzero(&v335.f32[v240], 40 - 4 * v240);
              }

              v329 = v335;
              v330 = v336;
              v331 = v337;
            }
          }

          else if (v44 == 1)
          {
            v45 = **(a2 + 5);
            if (!v45)
            {
              goto LABEL_454;
            }

            for (k = 0; k != 30; ++k)
            {
              v47 = (k * 0.10833) - (floorf((k * 0.10833) / 6.2832) * 6.2832);
              if (v47 >= 6.2832)
              {
                v48 = nextafterf(6.2832, 0.0);
              }

              else
              {
                v48 = v47 + 0.0;
              }

              Phase::Geometry::CardioidDirectivity::CalculateSubbandGains<10ul>(&v338, v45, 1.5708, v48);
              v49.i32[0] = 977287680;
              if (k)
              {
                v49.i32[0] = 977287680;
                if (k != 29)
                {
                  v50 = cosf(((k - 1) * 0.10833) + 0.054165);
                  *v49.i32 = (v50 - cosf((k * 0.10833) + 0.054165)) * 0.5;
                }
              }

              v51 = 0;
              v52 = 0;
              v53 = 0;
              *buf = vmulq_f32(v338, v338);
              *&buf[16] = vmulq_f32(v339, v339);
              *v346.f32 = vmul_f32(*v340.f32, *v340.f32);
              v322 = 0u;
              v323 = 0u;
              v324.i64[0] = 0;
              do
              {
                if (v52 <= 9)
                {
                  v51 = v52 + 1;
                  v322.i32[v52++] = *&buf[v53];
                }

                v53 += 4;
              }

              while (v53 != 40);
              if (v51 <= 9)
              {
                v311 = v49;
                bzero(&v322.f32[v51], 40 - 4 * v51);
                v49 = v311;
              }

              v54 = 0;
              v55 = 0;
              v56 = 0;
              *buf = vmulq_n_f32(v322, *v49.i32);
              *&buf[16] = vmulq_n_f32(v323, *v49.i32);
              *v346.f32 = vmul_f32(*&vdupq_lane_s32(v49, 0), *v324.f32);
              v332 = 0u;
              v333 = 0u;
              v334 = 0;
              do
              {
                if (v55 <= 9)
                {
                  v54 = v55 + 1;
                  v332.i32[v55++] = *&buf[v56];
                }

                v56 += 4;
              }

              while (v56 != 40);
              if (v54 <= 9)
              {
                bzero(&v332.f32[v54], 40 - 4 * v54);
              }

              v57 = 0;
              v58 = 0;
              v59 = 0;
              *buf = vaddq_f32(v329, v332);
              *&buf[16] = vaddq_f32(v330, v333);
              *v346.f32 = vadd_f32(v331, v334);
              v335 = 0u;
              v336 = 0u;
              v337 = 0;
              do
              {
                if (v58 <= 9)
                {
                  v57 = v58 + 1;
                  v335.i32[v58++] = *&buf[v59];
                }

                v59 += 4;
              }

              while (v59 != 40);
              if (v57 <= 9)
              {
                bzero(&v335.f32[v57], 40 - 4 * v57);
              }

              v329 = v335;
              v330 = v336;
              v331 = v337;
            }
          }
        }

        else
        {
          __asm { FMOV            V0.4S, #1.0 }

          v329 = _Q0;
          v330 = _Q0;
          __asm { FMOV            V0.2S, #1.0 }

          v331 = *_Q0.f32;
        }

        v286 = *(v4 + 31);
        if (v286 >= 0xA)
        {
          v287 = 10;
        }

        else
        {
          v287 = v286;
        }

        if (v286)
        {
          v288 = &v329;
          do
          {
            v289 = v288->f32[0];
            v288 = (v288 + 4);
            *v4 = *v4 * (v289 * v289);
            v4 = (v4 + 4);
            --v287;
          }

          while (v287);
        }

        return;
      }

      if (a3 == 31)
      {
        v327 = 0u;
        memset(v328, 0, 28);
        v325 = 0u;
        v326 = 0u;
        v323 = 0u;
        v324 = 0u;
        v322 = 0u;
        if (a2)
        {
          v6 = *a2;
          if (*a2 == 3)
          {
            v243 = **(a2 + 5);
            if (!v243)
            {
              goto LABEL_454;
            }

            for (m = 0; m != 30; ++m)
            {
              v245 = (m * 0.10833) - (floorf((m * 0.10833) / 6.2832) * 6.2832);
              if (v245 >= 6.2832)
              {
                v246 = nextafterf(6.2832, 0.0);
              }

              else
              {
                v246 = v245 + 0.0;
              }

              v247 = *(v243 + 32);
              v248 = cosf(v246);
              v249 = acosf(v248);
              v250 = Phase::Zeppelin::SphereSampling::NDimEquiangularHalfCircleData<float,double>::GetValuesForAllDimensionsAt(*v247, 0, v249);
              v251 = 0;
              v252 = buf;
              do
              {
                v253 = *(v250 + v251);
                *v252++ = v253;
                v251 += 8;
              }

              while (v251 != 248);
              v342 = v348;
              v343 = v349;
              v344[0] = v350[0];
              *(v344 + 12) = *(v350 + 12);
              v338 = *buf;
              v339 = *&buf[16];
              v340 = v346;
              v341 = v347;
              v254 = 0.00073329;
              if (m)
              {
                v254 = 0.00073329;
                if (m != 29)
                {
                  v255 = cosf(((m - 1) * 0.10833) + 0.054165);
                  v254 = (v255 - cosf((m * 0.10833) + 0.054165)) * 0.5;
                }
              }

              Phase::details::ReturnForEachSubband<float,31ul,Phase::PackedSubbands<float,31ul> Phase::operator*<float,31ul>(Phase::PackedSubbands<float,31ul> const&,Phase::PackedSubbands<float,31ul> const&)::{lambda(float)#1} const&,0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul>(&v332, &v338, &v338);
              *&v256 = v254;
              Phase::details::ReturnForEachSubband<float,31ul,Phase::PackedSubbands<float,31ul> Phase::operator*<float,31ul>(Phase::PackedSubbands<float,31ul> const&,float const&)::{lambda(float)#1} const&,0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul>(&v335, &v332, v256);
              Phase::details::ReturnForEachSubband<float,31ul,Phase::PackedSubbands<float,31ul> Phase::operator+<float,31ul>(Phase::PackedSubbands<float,31ul> const&,Phase::PackedSubbands<float,31ul> const&)::{lambda(float)#1} const&,0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul>(buf, &v322, &v335);
              v326 = v348;
              v327 = v349;
              v328[0] = v350[0];
              *(v328 + 12) = *(v350 + 12);
              v322 = *buf;
              v323 = *&buf[16];
              v324 = v346;
              v325 = v347;
            }
          }

          else if (v6 == 2)
          {
            v221 = **(a2 + 5);
            if (!v221)
            {
              goto LABEL_454;
            }

            for (n = 0; n != 30; ++n)
            {
              v223 = (n * 0.10833) - (floorf((n * 0.10833) / 6.2832) * 6.2832);
              if (v223 >= 6.2832)
              {
                v224 = nextafterf(6.2832, 0.0);
              }

              else
              {
                v224 = v223 + 0.0;
              }

              Phase::Geometry::ConeDirectivity::CalculateSubbandGains<31ul>(buf, v221, v224);
              v225 = 0.00073329;
              if (n)
              {
                v225 = 0.00073329;
                if (n != 29)
                {
                  v226 = cosf(((n - 1) * 0.10833) + 0.054165);
                  v225 = (v226 - cosf((n * 0.10833) + 0.054165)) * 0.5;
                }
              }

              Phase::details::ReturnForEachSubband<float,31ul,Phase::PackedSubbands<float,31ul> Phase::operator*<float,31ul>(Phase::PackedSubbands<float,31ul> const&,Phase::PackedSubbands<float,31ul> const&)::{lambda(float)#1} const&,0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul>(&v332, buf, buf);
              *&v227 = v225;
              Phase::details::ReturnForEachSubband<float,31ul,Phase::PackedSubbands<float,31ul> Phase::operator*<float,31ul>(Phase::PackedSubbands<float,31ul> const&,float const&)::{lambda(float)#1} const&,0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul>(&v335, &v332, v227);
              Phase::details::ReturnForEachSubband<float,31ul,Phase::PackedSubbands<float,31ul> Phase::operator+<float,31ul>(Phase::PackedSubbands<float,31ul> const&,Phase::PackedSubbands<float,31ul> const&)::{lambda(float)#1} const&,0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul>(&v338, &v322, &v335);
              v326 = v342;
              v327 = v343;
              v328[0] = v344[0];
              *(v328 + 12) = *(v344 + 12);
              v322 = v338;
              v323 = v339;
              v324 = v340;
              v325 = v341;
            }
          }

          else if (v6 == 1)
          {
            v7 = **(a2 + 5);
            if (!v7)
            {
              goto LABEL_454;
            }

            for (ii = 0; ii != 30; ++ii)
            {
              v9 = (ii * 0.10833) - (floorf((ii * 0.10833) / 6.2832) * 6.2832);
              if (v9 >= 6.2832)
              {
                v10 = nextafterf(6.2832, 0.0);
              }

              else
              {
                v10 = v9 + 0.0;
              }

              Phase::Geometry::CardioidDirectivity::CalculateSubbandGains<31ul>(buf, v7, 1.5708, v10);
              v11 = 0.00073329;
              if (ii)
              {
                v11 = 0.00073329;
                if (ii != 29)
                {
                  v12 = cosf(((ii - 1) * 0.10833) + 0.054165);
                  v11 = (v12 - cosf((ii * 0.10833) + 0.054165)) * 0.5;
                }
              }

              Phase::details::ReturnForEachSubband<float,31ul,Phase::PackedSubbands<float,31ul> Phase::operator*<float,31ul>(Phase::PackedSubbands<float,31ul> const&,Phase::PackedSubbands<float,31ul> const&)::{lambda(float)#1} const&,0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul>(&v332, buf, buf);
              *&v13 = v11;
              Phase::details::ReturnForEachSubband<float,31ul,Phase::PackedSubbands<float,31ul> Phase::operator*<float,31ul>(Phase::PackedSubbands<float,31ul> const&,float const&)::{lambda(float)#1} const&,0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul>(&v335, &v332, v13);
              Phase::details::ReturnForEachSubband<float,31ul,Phase::PackedSubbands<float,31ul> Phase::operator+<float,31ul>(Phase::PackedSubbands<float,31ul> const&,Phase::PackedSubbands<float,31ul> const&)::{lambda(float)#1} const&,0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul>(&v338, &v322, &v335);
              v326 = v342;
              v327 = v343;
              v328[0] = v344[0];
              *(v328 + 12) = *(v344 + 12);
              v322 = v338;
              v323 = v339;
              v324 = v340;
              v325 = v341;
            }
          }
        }

        else
        {
          __asm { FMOV            V0.4S, #1.0 }

          v322 = _Q0;
          v323 = _Q0;
          v324 = _Q0;
          v325 = _Q0;
          v326 = _Q0;
          v327 = _Q0;
          v328[0] = _Q0;
          __asm { FMOV            V0.2S, #1.0 }

          *&v328[1] = _Q0.i64[0];
          DWORD2(v328[1]) = 1065353216;
        }

        v257 = *(v4 + 31);
        if (v257 >= 0x1F)
        {
          v258 = 31;
        }

        else
        {
          v258 = v257;
        }

        if (v257)
        {
          v259 = &v322;
          do
          {
            v260 = v259->f32[0];
            v259 = (v259 + 4);
            *v4 = *v4 * (v260 * v260);
            v4 = (v4 + 4);
            --v258;
          }

          while (v258);
        }

        return;
      }

LABEL_66:
      v38 = **(Phase::Logger::GetInstance(a1) + 1264);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "RayTracingMath.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 373;
        *&buf[18] = 2048;
        *&buf[20] = a3;
        _os_log_impl(&dword_23A302000, v38, OS_LOG_TYPE_ERROR, "%25s:%-5d Unsupported subband count: %lu\n", buf, 0x1Cu);
      }

      return;
    }

    v329 = 0uLL;
    v330.i64[0] = 0;
    if (a2)
    {
      v37 = *a2;
      if (*a2 == 1)
      {
        v83 = **(a2 + 5);
        if (!v83)
        {
          goto LABEL_454;
        }

        for (jj = 0; jj != 30; ++jj)
        {
          v85 = (jj * 0.10833) - (floorf((jj * 0.10833) / 6.2832) * 6.2832);
          if (v85 >= 6.2832)
          {
            v86 = nextafterf(6.2832, 0.0);
          }

          else
          {
            v86 = v85 + 0.0;
          }

          Phase::Geometry::CardioidDirectivity::CalculateSubbandGains<6ul>(&v338, v83, 1.5708, v86);
          v87.i32[0] = 977287680;
          if (jj)
          {
            v87.i32[0] = 977287680;
            if (jj != 29)
            {
              v88 = cosf(((jj - 1) * 0.10833) + 0.054165);
              *v87.i32 = (v88 - cosf((jj * 0.10833) + 0.054165)) * 0.5;
            }
          }

          v89 = 0;
          v90 = 0;
          v91 = 0;
          *buf = vmulq_f32(v338, v338);
          *&buf[16] = vmul_f32(*v339.f32, *v339.f32);
          v323.i64[0] = 0;
          v322 = 0uLL;
          do
          {
            if (v90 <= 5)
            {
              v89 = v90 + 1;
              v322.i32[v90++] = *&buf[v91];
            }

            v91 += 4;
          }

          while (v91 != 24);
          if (v89 <= 5)
          {
            v313 = v87;
            bzero(&v322.f32[v89], 24 - 4 * v89);
            v87 = v313;
          }

          v92 = 0;
          v93 = 0;
          v94 = 0;
          *buf = vmulq_n_f32(v322, *v87.i32);
          *&buf[16] = vmul_f32(*&vdupq_lane_s32(v87, 0), *v323.f32);
          v333.i64[0] = 0;
          v332 = 0uLL;
          do
          {
            if (v93 <= 5)
            {
              v92 = v93 + 1;
              v332.i32[v93++] = *&buf[v94];
            }

            v94 += 4;
          }

          while (v94 != 24);
          if (v92 <= 5)
          {
            bzero(&v332.f32[v92], 24 - 4 * v92);
          }

          v95 = 0;
          v96 = 0;
          v97 = 0;
          *buf = vaddq_f32(v329, v332);
          *&buf[16] = vadd_f32(*v330.f32, *v333.f32);
          v336.i64[0] = 0;
          v335 = 0uLL;
          do
          {
            if (v96 <= 5)
            {
              v95 = v96 + 1;
              v335.i32[v96++] = *&buf[v97];
            }

            v97 += 4;
          }

          while (v97 != 24);
          if (v95 <= 5)
          {
            bzero(&v335.f32[v95], 24 - 4 * v95);
          }

          v329 = v335;
          v330.i64[0] = v336.i64[0];
        }
      }

      else if (v37 == 2)
      {
        v68 = **(a2 + 5);
        if (!v68)
        {
          goto LABEL_454;
        }

        for (kk = 0; kk != 30; ++kk)
        {
          v70 = (kk * 0.10833) - (floorf((kk * 0.10833) / 6.2832) * 6.2832);
          if (v70 >= 6.2832)
          {
            v71 = nextafterf(6.2832, 0.0);
          }

          else
          {
            v71 = v70 + 0.0;
          }

          Phase::Geometry::ConeDirectivity::CalculateSubbandGains<6ul>(&v338, v68, v71);
          v72.i32[0] = 977287680;
          if (kk)
          {
            v72.i32[0] = 977287680;
            if (kk != 29)
            {
              v73 = cosf(((kk - 1) * 0.10833) + 0.054165);
              *v72.i32 = (v73 - cosf((kk * 0.10833) + 0.054165)) * 0.5;
            }
          }

          v74 = 0;
          v75 = 0;
          v76 = 0;
          *buf = vmulq_f32(v338, v338);
          *&buf[16] = vmul_f32(*v339.f32, *v339.f32);
          v323.i64[0] = 0;
          v322 = 0uLL;
          do
          {
            if (v75 <= 5)
            {
              v74 = v75 + 1;
              v322.i32[v75++] = *&buf[v76];
            }

            v76 += 4;
          }

          while (v76 != 24);
          if (v74 <= 5)
          {
            v312 = v72;
            bzero(&v322.f32[v74], 24 - 4 * v74);
            v72 = v312;
          }

          v77 = 0;
          v78 = 0;
          v79 = 0;
          *buf = vmulq_n_f32(v322, *v72.i32);
          *&buf[16] = vmul_f32(*&vdupq_lane_s32(v72, 0), *v323.f32);
          v333.i64[0] = 0;
          v332 = 0uLL;
          do
          {
            if (v78 <= 5)
            {
              v77 = v78 + 1;
              v332.i32[v78++] = *&buf[v79];
            }

            v79 += 4;
          }

          while (v79 != 24);
          if (v77 <= 5)
          {
            bzero(&v332.f32[v77], 24 - 4 * v77);
          }

          v80 = 0;
          v81 = 0;
          v82 = 0;
          *buf = vaddq_f32(v329, v332);
          *&buf[16] = vadd_f32(*v330.f32, *v333.f32);
          v336.i64[0] = 0;
          v335 = 0uLL;
          do
          {
            if (v81 <= 5)
            {
              v80 = v81 + 1;
              v335.i32[v81++] = *&buf[v82];
            }

            v82 += 4;
          }

          while (v82 != 24);
          if (v80 <= 5)
          {
            bzero(&v335.f32[v80], 24 - 4 * v80);
          }

          v329 = v335;
          v330.i64[0] = v336.i64[0];
        }
      }

      else if (v37 == 3)
      {
        if (**(a2 + 5))
        {
          Phase::Geometry::SphericalCapDirectivity::GetSubbandGainsFromDatabase<6ul>(a1);
        }

LABEL_454:
        std::terminate();
      }
    }

    else
    {
      __asm { FMOV            V0.4S, #1.0 }

      v329 = _Q0;
      __asm { FMOV            V0.2S, #1.0 }

      v330.i64[0] = _Q0.i64[0];
    }

    v98 = *(v4 + 31);
    if (v98 >= 6)
    {
      v99 = 6;
    }

    else
    {
      v99 = v98;
    }

    if (v98)
    {
      v100 = &v329;
      do
      {
        v101 = v100->f32[0];
        v100 = (v100 + 4);
        *v4 = *v4 * (v101 * v101);
        v4 = (v4 + 4);
        --v99;
      }

      while (v99);
    }

    return;
  }

  if (a3 == 3)
  {
    if (a2)
    {
      v14 = *a2;
      if (*a2 == 3)
      {
        v198 = **(a2 + 5);
        if (!v198)
        {
          goto LABEL_454;
        }

        v199 = 0;
        v17 = 0;
        v15 = 0.0;
        do
        {
          v318 = v17;
          v200 = (v199 * 0.10833) - (floorf((v199 * 0.10833) / 6.2832) * 6.2832);
          if (v200 >= 6.2832)
          {
            v201 = nextafterf(6.2832, 0.0);
          }

          else
          {
            v201 = v200 + 0.0;
          }

          v202.f32[0] = Phase::Geometry::SphericalCapDirectivity::GetSubbandGainsFromDatabase<3ul>(v198, 1.5708, v201);
          v205 = v204;
          v206 = 0.00073329;
          if (v199)
          {
            v206 = 0.00073329;
            if (v199 != 29)
            {
              v298 = v203;
              v307 = v202.i32[0];
              v207 = cosf(((v199 - 1) * 0.10833) + 0.054165);
              v206 = (v207 - cosf((v199 * 0.10833) + 0.054165)) * 0.5;
              v203 = v298;
              v202.i32[0] = v307;
            }
          }

          v208 = 0;
          v209 = 0;
          v210 = 0;
          v202.i32[1] = v203;
          *v338.f32 = vmul_f32(v202, v202);
          v338.f32[2] = v205 * v205;
          *buf = 0;
          *&buf[8] = 0;
          do
          {
            if (v209 <= 2)
            {
              v208 = v209 + 1;
              *&buf[4 * v209++] = v338.i32[v210];
            }

            ++v210;
          }

          while (v210 != 3);
          if (v208 <= 2)
          {
            v308 = v206;
            bzero(&buf[4 * v208], 12 - 4 * v208);
            v206 = v308;
          }

          v211 = 0;
          v212 = 0;
          v213 = 0;
          *v338.f32 = vmul_n_f32(*buf, v206);
          v338.f32[2] = v206 * *&buf[8];
          *buf = 0;
          *&buf[8] = 0;
          do
          {
            if (v212 <= 2)
            {
              v211 = v212 + 1;
              *&buf[4 * v212++] = v338.i32[v213];
            }

            ++v213;
          }

          while (v213 != 3);
          if (v211 <= 2)
          {
            bzero(&buf[4 * v211], 12 - 4 * v211);
          }

          v214 = 0;
          v215 = 0;
          v216 = 0;
          *v338.f32 = vadd_f32(v318, *buf);
          v338.f32[2] = v15 + *&buf[8];
          *buf = 0;
          *&buf[8] = 0;
          do
          {
            if (v215 <= 2)
            {
              v214 = v215 + 1;
              *&buf[4 * v215++] = v338.i32[v216];
            }

            ++v216;
          }

          while (v216 != 3);
          if (v214 <= 2)
          {
            bzero(&buf[4 * v214], 12 - 4 * v214);
          }

          v17 = *buf;
          v15 = *&buf[8];
          ++v199;
        }

        while (v199 != 30);
      }

      else if (v14 == 2)
      {
        v179 = **(a2 + 5);
        if (!v179)
        {
          goto LABEL_454;
        }

        v180 = 0;
        v17 = 0;
        v15 = 0.0;
        do
        {
          v317 = v17;
          v181 = (v180 * 0.10833) - (floorf((v180 * 0.10833) / 6.2832) * 6.2832);
          if (v181 >= 6.2832)
          {
            v182 = nextafterf(6.2832, 0.0);
          }

          else
          {
            v182 = v181 + 0.0;
          }

          v183.f32[0] = Phase::Geometry::ConeDirectivity::CalculateSubbandGains<3ul>(v179, v182);
          v186 = v185;
          v187 = 0.00073329;
          if (v180)
          {
            v187 = 0.00073329;
            if (v180 != 29)
            {
              v297 = v184;
              v305 = v183.i32[0];
              v188 = cosf(((v180 - 1) * 0.10833) + 0.054165);
              v187 = (v188 - cosf((v180 * 0.10833) + 0.054165)) * 0.5;
              v184 = v297;
              v183.i32[0] = v305;
            }
          }

          v189 = 0;
          v190 = 0;
          v191 = 0;
          v183.i32[1] = v184;
          *v338.f32 = vmul_f32(v183, v183);
          v338.f32[2] = v186 * v186;
          *buf = 0;
          *&buf[8] = 0;
          do
          {
            if (v190 <= 2)
            {
              v189 = v190 + 1;
              *&buf[4 * v190++] = v338.i32[v191];
            }

            ++v191;
          }

          while (v191 != 3);
          if (v189 <= 2)
          {
            v306 = v187;
            bzero(&buf[4 * v189], 12 - 4 * v189);
            v187 = v306;
          }

          v192 = 0;
          v193 = 0;
          v194 = 0;
          *v338.f32 = vmul_n_f32(*buf, v187);
          v338.f32[2] = v187 * *&buf[8];
          *buf = 0;
          *&buf[8] = 0;
          do
          {
            if (v193 <= 2)
            {
              v192 = v193 + 1;
              *&buf[4 * v193++] = v338.i32[v194];
            }

            ++v194;
          }

          while (v194 != 3);
          if (v192 <= 2)
          {
            bzero(&buf[4 * v192], 12 - 4 * v192);
          }

          v195 = 0;
          v196 = 0;
          v197 = 0;
          *v338.f32 = vadd_f32(v317, *buf);
          v338.f32[2] = v15 + *&buf[8];
          *buf = 0;
          *&buf[8] = 0;
          do
          {
            if (v196 <= 2)
            {
              v195 = v196 + 1;
              *&buf[4 * v196++] = v338.i32[v197];
            }

            ++v197;
          }

          while (v197 != 3);
          if (v195 <= 2)
          {
            bzero(&buf[4 * v195], 12 - 4 * v195);
          }

          v17 = *buf;
          v15 = *&buf[8];
          ++v180;
        }

        while (v180 != 30);
      }

      else
      {
        v15 = 0.0;
        v16 = 0.0;
        v17.i32[0] = 0;
        if (v14 != 1)
        {
          goto LABEL_355;
        }

        v18 = **(a2 + 5);
        if (!v18)
        {
          goto LABEL_454;
        }

        v19 = 0;
        v17 = 0;
        do
        {
          v310 = v17;
          v20 = (v19 * 0.10833) - (floorf((v19 * 0.10833) / 6.2832) * 6.2832);
          if (v20 >= 6.2832)
          {
            v21 = nextafterf(6.2832, 0.0);
          }

          else
          {
            v21 = v20 + 0.0;
          }

          Phase::Geometry::CardioidDirectivity::CalculateSubbandGains<3ul>(v18, 1.5708, v21);
          v25 = v24;
          v26 = 0.00073329;
          if (v19)
          {
            v26 = 0.00073329;
            if (v19 != 29)
            {
              v294 = v23;
              v299 = v22.i32[0];
              v27 = cosf(((v19 - 1) * 0.10833) + 0.054165);
              v26 = (v27 - cosf((v19 * 0.10833) + 0.054165)) * 0.5;
              v23 = v294;
              v22.i32[0] = v299;
            }
          }

          v28 = 0;
          v29 = 0;
          v30 = 0;
          v22.i32[1] = v23;
          *v338.f32 = vmul_f32(v22, v22);
          v338.f32[2] = v25 * v25;
          *buf = 0;
          *&buf[8] = 0;
          do
          {
            if (v29 <= 2)
            {
              v28 = v29 + 1;
              *&buf[4 * v29++] = v338.i32[v30];
            }

            ++v30;
          }

          while (v30 != 3);
          if (v28 <= 2)
          {
            v300 = v26;
            bzero(&buf[4 * v28], 12 - 4 * v28);
            v26 = v300;
          }

          v31 = 0;
          v32 = 0;
          v33 = 0;
          *v338.f32 = vmul_n_f32(*buf, v26);
          v338.f32[2] = v26 * *&buf[8];
          *buf = 0;
          *&buf[8] = 0;
          do
          {
            if (v32 <= 2)
            {
              v31 = v32 + 1;
              *&buf[4 * v32++] = v338.i32[v33];
            }

            ++v33;
          }

          while (v33 != 3);
          if (v31 <= 2)
          {
            bzero(&buf[4 * v31], 12 - 4 * v31);
          }

          v34 = 0;
          v35 = 0;
          v36 = 0;
          *v338.f32 = vadd_f32(v310, *buf);
          v338.f32[2] = v15 + *&buf[8];
          *buf = 0;
          *&buf[8] = 0;
          do
          {
            if (v35 <= 2)
            {
              v34 = v35 + 1;
              *&buf[4 * v35++] = v338.i32[v36];
            }

            ++v36;
          }

          while (v36 != 3);
          if (v34 <= 2)
          {
            bzero(&buf[4 * v34], 12 - 4 * v34);
          }

          v17 = *buf;
          v15 = *&buf[8];
          ++v19;
        }

        while (v19 != 30);
      }

      v16 = v17.f32[1];
    }

    else
    {
      v15 = 1.0;
      v16 = 1.0;
      v17.i32[0] = 1.0;
    }

LABEL_355:
    *buf = v17.i32[0];
    *&buf[4] = v16;
    *&buf[8] = v15;
    v217 = *(v4 + 31);
    if (v217 >= 3)
    {
      v218 = 3;
    }

    else
    {
      v218 = v217;
    }

    if (v217)
    {
      v219 = buf;
      do
      {
        v220 = *v219++;
        *v4 = *v4 * (v220 * v220);
        v4 = (v4 + 4);
        --v218;
      }

      while (v218);
    }

    return;
  }

  if (a3 == 4)
  {
    if (!a2)
    {
      v40 = 1.0;
      v41 = 1.0;
      v42 = 1.0;
      v43 = 1.0;
      goto LABEL_292;
    }

    v39 = *a2;
    if (*a2 == 1)
    {
      v155 = **(a2 + 5);
      if (!v155)
      {
        goto LABEL_454;
      }

      v156 = 0;
      v315 = 0u;
      do
      {
        v157 = (v156 * 0.10833) - (floorf((v156 * 0.10833) / 6.2832) * 6.2832);
        if (v157 >= 6.2832)
        {
          v158 = nextafterf(6.2832, 0.0);
        }

        else
        {
          v158 = v157 + 0.0;
        }

        Phase::Geometry::CardioidDirectivity::CalculateSubbandGains<4ul>(v155, 1.5708, v158);
        v163 = v162;
        v164 = 0.00073329;
        if (v156)
        {
          v164 = 0.00073329;
          if (v156 != 29)
          {
            v296 = v161;
            v303 = v159.i32[0];
            v291 = v163;
            v293 = v160;
            v165 = cosf(((v156 - 1) * 0.10833) + 0.054165);
            v159.f32[0] = cosf((v156 * 0.10833) + 0.054165);
            v163 = v291;
            v160 = v293;
            v164 = (v165 - v159.f32[0]) * 0.5;
            v161 = v296;
            v159.i32[0] = v303;
          }
        }

        v166 = 0;
        v167 = 0;
        v168 = 0;
        v159.i32[1] = v163;
        v159.i64[1] = __PAIR64__(v161, v160);
        v338 = vmulq_f32(v159, v159);
        *&buf[8] = 0;
        *buf = 0;
        do
        {
          if (v167 <= 3)
          {
            v166 = v167 + 1;
            *&buf[4 * v167++] = v338.i32[v168];
          }

          ++v168;
        }

        while (v168 != 4);
        if (v166 <= 3)
        {
          v304 = v164;
          bzero(&buf[4 * v166], 16 - 4 * v166);
          v164 = v304;
        }

        v169 = 0;
        v170 = 0;
        v171 = 0;
        v338 = vmulq_n_f32(*buf, v164);
        *&buf[8] = 0;
        *buf = 0;
        do
        {
          if (v170 <= 3)
          {
            v169 = v170 + 1;
            *&buf[4 * v170++] = v338.i32[v171];
          }

          ++v171;
        }

        while (v171 != 4);
        if (v169 <= 3)
        {
          bzero(&buf[4 * v169], 16 - 4 * v169);
        }

        v172 = 0;
        v173 = 0;
        v174 = 0;
        v338 = vaddq_f32(v315, *buf);
        *&buf[8] = 0;
        *buf = 0;
        do
        {
          if (v173 <= 3)
          {
            v172 = v173 + 1;
            *&buf[4 * v173++] = v338.i32[v174];
          }

          ++v174;
        }

        while (v174 != 4);
        if (v172 <= 3)
        {
          bzero(&buf[4 * v172], 16 - 4 * v172);
        }

        v315 = *buf;
        ++v156;
      }

      while (v156 != 30);
    }

    else
    {
      if (v39 != 2)
      {
        v40 = 0.0;
        v41 = 0.0;
        v42 = 0.0;
        v43 = 0.0;
        if (v39 == 3)
        {
          if (**(a2 + 5))
          {
            Phase::Geometry::SphericalCapDirectivity::GetSubbandGainsFromDatabase<4ul>(a1);
          }

          goto LABEL_454;
        }

LABEL_292:
        *buf = v43;
        *&buf[4] = v42;
        *&buf[8] = v41;
        *&buf[12] = v40;
        v175 = *(v4 + 31);
        if (v175 >= 4)
        {
          v176 = 4;
        }

        else
        {
          v176 = v175;
        }

        if (v175)
        {
          v177 = buf;
          do
          {
            v178 = *v177++;
            *v4 = *v4 * (v178 * v178);
            v4 = (v4 + 4);
            --v176;
          }

          while (v176);
        }

        return;
      }

      v117 = **(a2 + 5);
      if (!v117)
      {
        goto LABEL_454;
      }

      v118 = 0;
      v315 = 0u;
      do
      {
        v119 = (v118 * 0.10833) - (floorf((v118 * 0.10833) / 6.2832) * 6.2832);
        if (v119 >= 6.2832)
        {
          v120 = nextafterf(6.2832, 0.0);
        }

        else
        {
          v120 = v119 + 0.0;
        }

        v121.f32[0] = Phase::Geometry::ConeDirectivity::CalculateSubbandGains<4ul>(v117, v120);
        v125 = 0.00073329;
        if (v118)
        {
          v125 = 0.00073329;
          if (v118 != 29)
          {
            v295 = v124;
            v301 = v121.i32[0];
            v290 = v122;
            v292 = v123;
            v126 = cosf(((v118 - 1) * 0.10833) + 0.054165);
            v121.f32[0] = cosf((v118 * 0.10833) + 0.054165);
            v122 = v290;
            v123 = v292;
            v125 = (v126 - v121.f32[0]) * 0.5;
            v124 = v295;
            v121.i32[0] = v301;
          }
        }

        v127 = 0;
        v128 = 0;
        v129 = 0;
        v121.i32[1] = v122;
        v121.i64[1] = __PAIR64__(v124, v123);
        v338 = vmulq_f32(v121, v121);
        *&buf[8] = 0;
        *buf = 0;
        do
        {
          if (v128 <= 3)
          {
            v127 = v128 + 1;
            *&buf[4 * v128++] = v338.i32[v129];
          }

          ++v129;
        }

        while (v129 != 4);
        if (v127 <= 3)
        {
          v302 = v125;
          bzero(&buf[4 * v127], 16 - 4 * v127);
          v125 = v302;
        }

        v130 = 0;
        v131 = 0;
        v132 = 0;
        v338 = vmulq_n_f32(*buf, v125);
        *&buf[8] = 0;
        *buf = 0;
        do
        {
          if (v131 <= 3)
          {
            v130 = v131 + 1;
            *&buf[4 * v131++] = v338.i32[v132];
          }

          ++v132;
        }

        while (v132 != 4);
        if (v130 <= 3)
        {
          bzero(&buf[4 * v130], 16 - 4 * v130);
        }

        v133 = 0;
        v134 = 0;
        v135 = 0;
        v338 = vaddq_f32(v315, *buf);
        *&buf[8] = 0;
        *buf = 0;
        do
        {
          if (v134 <= 3)
          {
            v133 = v134 + 1;
            *&buf[4 * v134++] = v338.i32[v135];
          }

          ++v135;
        }

        while (v135 != 4);
        if (v133 <= 3)
        {
          bzero(&buf[4 * v133], 16 - 4 * v133);
        }

        v315 = *buf;
        ++v118;
      }

      while (v118 != 30);
    }

    v43 = v315.f32[0];
    v40 = v315.f32[3];
    v41 = v315.f32[2];
    v42 = v315.f32[1];
    goto LABEL_292;
  }

  if (a3 != 5)
  {
    goto LABEL_66;
  }

  v329 = 0uLL;
  v330.i32[0] = 0;
  if (a2)
  {
    v5 = *a2;
    if (*a2 == 1)
    {
      v136 = **(a2 + 5);
      if (!v136)
      {
        goto LABEL_454;
      }

      for (mm = 0; mm != 30; ++mm)
      {
        v138 = (mm * 0.10833) - (floorf((mm * 0.10833) / 6.2832) * 6.2832);
        if (v138 >= 6.2832)
        {
          v139 = nextafterf(6.2832, 0.0);
        }

        else
        {
          v139 = v138 + 0.0;
        }

        Phase::Geometry::CardioidDirectivity::CalculateSubbandGains<5ul>(&v338, v136, 1.5708, v139);
        v140 = 0.00073329;
        if (mm)
        {
          v140 = 0.00073329;
          if (mm != 29)
          {
            v141 = cosf(((mm - 1) * 0.10833) + 0.054165);
            v140 = (v141 - cosf((mm * 0.10833) + 0.054165)) * 0.5;
          }
        }

        v142 = 0;
        v143 = 0;
        v144 = 0;
        *buf = vmulq_f32(v338, v338);
        *&buf[16] = v339.f32[0] * v339.f32[0];
        v322 = 0uLL;
        v323.i32[0] = 0;
        do
        {
          if (v143 <= 4)
          {
            v142 = v143 + 1;
            v322.i32[v143++] = *&buf[v144];
          }

          v144 += 4;
        }

        while (v144 != 20);
        if (v142 <= 4)
        {
          v316 = v140;
          bzero(&v322.f32[v142], 20 - 4 * v142);
          v140 = v316;
        }

        v145 = 0;
        v146 = 0;
        v147 = 0;
        *buf = vmulq_n_f32(v322, v140);
        *&buf[16] = v140 * v323.f32[0];
        v332 = 0uLL;
        v333.i32[0] = 0;
        do
        {
          if (v146 <= 4)
          {
            v145 = v146 + 1;
            v332.i32[v146++] = *&buf[v147];
          }

          v147 += 4;
        }

        while (v147 != 20);
        if (v145 <= 4)
        {
          bzero(&v332.f32[v145], 20 - 4 * v145);
        }

        v148 = 0;
        v149 = 0;
        v150 = 0;
        *buf = vaddq_f32(v329, v332);
        *&buf[16] = v330.f32[0] + v333.f32[0];
        v335 = 0uLL;
        v336.i32[0] = 0;
        do
        {
          if (v149 <= 4)
          {
            v148 = v149 + 1;
            v335.i32[v149++] = *&buf[v150];
          }

          v150 += 4;
        }

        while (v150 != 20);
        if (v148 <= 4)
        {
          bzero(&v335.f32[v148], 20 - 4 * v148);
        }

        v329 = v335;
        v330.i32[0] = v336.i32[0];
      }
    }

    else if (v5 == 2)
    {
      v102 = **(a2 + 5);
      if (!v102)
      {
        goto LABEL_454;
      }

      for (nn = 0; nn != 30; ++nn)
      {
        v104 = (nn * 0.10833) - (floorf((nn * 0.10833) / 6.2832) * 6.2832);
        if (v104 >= 6.2832)
        {
          v105 = nextafterf(6.2832, 0.0);
        }

        else
        {
          v105 = v104 + 0.0;
        }

        Phase::Geometry::ConeDirectivity::CalculateSubbandGains<5ul>(&v338, v102, v105);
        v106 = 0.00073329;
        if (nn)
        {
          v106 = 0.00073329;
          if (nn != 29)
          {
            v107 = cosf(((nn - 1) * 0.10833) + 0.054165);
            v106 = (v107 - cosf((nn * 0.10833) + 0.054165)) * 0.5;
          }
        }

        v108 = 0;
        v109 = 0;
        v110 = 0;
        *buf = vmulq_f32(v338, v338);
        *&buf[16] = v339.f32[0] * v339.f32[0];
        v322 = 0uLL;
        v323.i32[0] = 0;
        do
        {
          if (v109 <= 4)
          {
            v108 = v109 + 1;
            v322.i32[v109++] = *&buf[v110];
          }

          v110 += 4;
        }

        while (v110 != 20);
        if (v108 <= 4)
        {
          v314 = v106;
          bzero(&v322.f32[v108], 20 - 4 * v108);
          v106 = v314;
        }

        v111 = 0;
        v112 = 0;
        v113 = 0;
        *buf = vmulq_n_f32(v322, v106);
        *&buf[16] = v106 * v323.f32[0];
        v332 = 0uLL;
        v333.i32[0] = 0;
        do
        {
          if (v112 <= 4)
          {
            v111 = v112 + 1;
            v332.i32[v112++] = *&buf[v113];
          }

          v113 += 4;
        }

        while (v113 != 20);
        if (v111 <= 4)
        {
          bzero(&v332.f32[v111], 20 - 4 * v111);
        }

        v114 = 0;
        v115 = 0;
        v116 = 0;
        *buf = vaddq_f32(v329, v332);
        *&buf[16] = v330.f32[0] + v333.f32[0];
        v335 = 0uLL;
        v336.i32[0] = 0;
        do
        {
          if (v115 <= 4)
          {
            v114 = v115 + 1;
            v335.i32[v115++] = *&buf[v116];
          }

          v116 += 4;
        }

        while (v116 != 20);
        if (v114 <= 4)
        {
          bzero(&v335.f32[v114], 20 - 4 * v114);
        }

        v329 = v335;
        v330.i32[0] = v336.i32[0];
      }
    }

    else if (v5 == 3)
    {
      if (**(a2 + 5))
      {
        Phase::Geometry::SphericalCapDirectivity::GetSubbandGainsFromDatabase<5ul>(a1);
      }

      goto LABEL_454;
    }
  }

  else
  {
    __asm { FMOV            V0.4S, #1.0 }

    v329 = _Q0;
    v330.i32[0] = 1065353216;
  }

  v151 = *(v4 + 31);
  if (v151 >= 5)
  {
    v152 = 5;
  }

  else
  {
    v152 = v151;
  }

  if (v151)
  {
    v153 = &v329;
    do
    {
      v154 = v153->f32[0];
      v153 = (v153 + 4);
      *v4 = *v4 * (v154 * v154);
      v4 = (v4 + 4);
      --v152;
    }

    while (v152);
  }
}

void Phase::SpatialModeler::getSoundPowerRelativeToOmni(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  *(a4 + 108) = 0u;
  a4[5] = 0u;
  a4[6] = 0u;
  a4[3] = 0u;
  a4[4] = 0u;
  a4[1] = 0u;
  a4[2] = 0u;
  *a4 = 0u;
  *(a4 + 31) = a3;
  if (a3)
  {
    memset_pattern16(a4, &memset_pattern, 4 * a3);
  }

  if (*(a1 + 64) > a2 && (v8 = *(a1 + 48) + 24 * a2, *(v8 + 20) == HIDWORD(a2)))
  {
    v9 = *v8;
  }

  else
  {
    v9 = 0;
  }

  Phase::SpatialModeler::CalculateSoundPowerRelativeToOmni(a4, v9, a3);
}

void Phase::SpatialModeler::applyScatteringFrequencyWeighting(_OWORD *a1@<X0>, float *a2@<X1>, _OWORD *a3@<X8>)
{
  v3 = a2;
  v4 = a3;
  v5 = a1[5];
  a3[4] = a1[4];
  a3[5] = v5;
  v6 = a1[7];
  a3[6] = a1[6];
  a3[7] = v6;
  v7 = a1[1];
  *a3 = *a1;
  a3[1] = v7;
  v8 = a1[3];
  a3[2] = a1[2];
  a3[3] = v8;
  MeanScatteringCoefficient = Phase::SpatialModeler::getMeanScatteringCoefficient(a2);
  if (MeanScatteringCoefficient > 0.0)
  {
    *&v10 = v3[31];
    v11 = *(v4 + 31);
    if (v10 >= v11)
    {
      v10 = v11;
    }

    else
    {
      v10 = v10;
    }

    if (v10)
    {
      do
      {
        v12 = *v3++;
        *v4 = *v4 * (v12 / MeanScatteringCoefficient);
        v4 = (v4 + 4);
        --v10;
      }

      while (v10);
    }
  }
}

float Phase::SpatialModeler::getMeanScatteringCoefficient(float *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 31);
  if (v1)
  {
    v2 = 0.0;
    v3 = *(a1 + 31);
    do
    {
      v4 = *a1++;
      v2 = v2 + v4;
      --v3;
    }

    while (v3);
    if (v1 != 1)
    {
      return v2 / v1;
    }
  }

  else
  {
    v5 = **(Phase::Logger::GetInstance(a1) + 1264);
    v2 = 0.0;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "RayTracingMath.cpp";
      v9 = 1024;
      v10 = 461;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d 0 scattering coefficients detected!", &v7, 0x12u);
    }
  }

  return v2;
}

float Phase::SpatialModeler::getMeanAbsorptionCoefficient(float *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 31);
  if (v1)
  {
    v2 = 0.0;
    v3 = *(a1 + 31);
    do
    {
      v4 = *a1++;
      v2 = v2 + v4;
      --v3;
    }

    while (v3);
    if (v1 != 1)
    {
      return v2 / v1;
    }
  }

  else
  {
    v5 = **(Phase::Logger::GetInstance(a1) + 1264);
    v2 = 0.0;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "RayTracingMath.cpp";
      v9 = 1024;
      v10 = 436;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d 0 absorption coefficients detected!", &v7, 0x12u);
    }
  }

  return v2;
}

void Phase::SpatialModeler::GetFullSceneAABB(Phase::SpatialModeler *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_23A555810;
  *(a2 + 16) = 0x80000000800000;
  v5 = *(this + 21);
  v6 = *(this + 46);
  v7 = &v5[3 * v6];
  if (v6)
  {
    v8 = *v5;
    if (!*v5)
    {
      v9 = v5 + 3;
      while (1)
      {
        v5 = v9;
        if (v9 >= v7)
        {
          break;
        }

        v9 += 3;
        v8 = *v5;
        if (*v5)
        {
          goto LABEL_9;
        }
      }

      v8 = 0;
    }

LABEL_9:
    v10 = v7;
  }

  else
  {
    v8 = 0;
    v10 = *(this + 21);
  }

  if (v5 != v7)
  {
    v11 = 0x80000000800000;
    v12 = vneg_f32(0x80000000800000);
    v13 = 3.4028e38;
    v14 = -3.4028e38;
    v28 = v7;
    do
    {
      if (v8 && v8->i32[0] == 4)
      {
        v15 = v8[16];
        v16 = v8[15];
        if (v15 == v16)
        {
          v24 = v8[9].f32[0];
          v13 = fminf(v13, v24);
          v14 = fmaxf(v14, v24);
          v25 = v8[8];
          v11 = vmaxnm_f32(v11, v25);
          v12 = vminnm_f32(v12, v25);
          *a2 = v12;
          *(a2 + 8) = v13;
          *(a2 + 12) = v11;
          *(a2 + 20) = v14;
        }

        else
        {
          do
          {
            v17 = *v16;
            if (*(this + 40) > *v16)
            {
              v18 = *(this + 18) + 24 * v17;
              if (*(v18 + 20) == HIDWORD(v17))
              {
                v19 = *v18;
                if (*v18)
                {
                  for (i = 0; i != 8; ++i)
                  {
                    Phase::GetVertex<float>((v19 + 24), i, v29);
                    Phase::operator*<float>(&v8[6], v29, &v30);
                    v21 = v8[9].f32[1];
                    v22 = (v21 * v31) + v8[9].f32[0];
                    v23 = vadd_f32(vmul_n_f32(v30, v21), v8[8]);
                    v12 = vminnm_f32(*a2, v23);
                    v13 = fminf(*(a2 + 8), v22);
                    v11 = vmaxnm_f32(*(a2 + 12), v23);
                    v14 = fmaxf(*(a2 + 20), v22);
                    *a2 = v12;
                    *(a2 + 8) = v13;
                    *(a2 + 12) = v11;
                    *(a2 + 20) = v14;
                  }
                }
              }
            }

            ++v16;
          }

          while (v16 != v15);
        }
      }

      if (v5 >= v10)
      {
        v27 = v28;
      }

      else
      {
        v26 = v5 + 3;
        v27 = v28;
        while (1)
        {
          v5 = v26;
          if (v26 >= v10)
          {
            break;
          }

          v26 += 3;
          v8 = *v5;
          if (*v5)
          {
            goto LABEL_30;
          }
        }

        v8 = 0;
      }

LABEL_30:
      ;
    }

    while (v5 != v27);
  }
}

int *Phase::GetVertex<float>@<X0>(int *result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (a2 <= 3)
  {
    if (a2 != 1)
    {
      if (a2 == 2)
      {
        v3 = *result;
        v4 = result[4];
        v5 = result[2];
        goto LABEL_20;
      }

      if (a2 == 3)
      {
        *a3 = *result;
        v6 = *(result + 2);
LABEL_15:
        *(a3 + 4) = v6;
        return result;
      }

      goto LABEL_13;
    }

    v7 = result[5];
    v8 = *result;
LABEL_17:
    *a3 = v8;
    goto LABEL_18;
  }

  if (a2 > 5)
  {
    if (a2 != 6)
    {
      if (a2 == 7)
      {
        *a3 = *(result + 3);
        v7 = result[5];
LABEL_18:
        *(a3 + 8) = v7;
        return result;
      }

LABEL_13:
      *a3 = *result;
      v7 = result[2];
      goto LABEL_18;
    }

    v7 = result[2];
    v8 = *(result + 3);
    goto LABEL_17;
  }

  if (a2 == 4)
  {
    *a3 = result[3];
    v6 = *(result + 1);
    goto LABEL_15;
  }

  v3 = result[3];
  v4 = result[1];
  v5 = result[5];
LABEL_20:
  *a3 = v3;
  *(a3 + 4) = v4;
  *(a3 + 8) = v5;
  return result;
}

void Phase::SpatialModeler::GetHitShapesAABB(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = xmmword_23A555810;
  *(a3 + 16) = 0x80000000800000;
  v5 = *(a1 + 168);
  v6 = *(a1 + 184);
  v7 = &v5[3 * v6];
  if (v6)
  {
    v8 = *v5;
    if (!*v5)
    {
      v9 = v5 + 3;
      while (1)
      {
        v5 = v9;
        if (v9 >= v7)
        {
          break;
        }

        v9 += 3;
        v8 = *v5;
        if (*v5)
        {
          goto LABEL_9;
        }
      }

      v8 = 0;
    }

LABEL_9:
    v10 = v7;
  }

  else
  {
    v8 = 0;
    v10 = *(a1 + 168);
  }

  if (v5 != v7)
  {
    v30 = (a2 + 8);
    do
    {
      if (v8)
      {
        if (v8->i32[0] == 4)
        {
          v11 = v8[16];
          for (i = v8[15]; i != v11; ++i)
          {
            v13 = *i;
            if (*(a1 + 160) > *i)
            {
              v14 = *(a1 + 144) + 24 * v13;
              if (*(v14 + 20) == HIDWORD(v13))
              {
                v15 = *v14;
                if (*v14)
                {
                  v16 = *v30;
                  if (*v30)
                  {
                    v17 = *(v15 + 8);
                    v18 = v30;
                    do
                    {
                      v19 = v16[4];
                      v20 = v19 >= v17;
                      v21 = v19 < v17;
                      if (v20)
                      {
                        v18 = v16;
                      }

                      v16 = v16[v21];
                    }

                    while (v16);
                    if (v18 != v30 && v17 >= v18[4])
                    {
                      for (j = 0; j != 8; ++j)
                      {
                        Phase::GetVertex<float>((v15 + 24), j, v31);
                        Phase::operator*<float>(&v8[6], v31, &v32);
                        v23 = v8[9].f32[1];
                        v24 = (v23 * v33) + v8[9].f32[0];
                        v25 = vadd_f32(vmul_n_f32(v32, v23), v8[8]);
                        v26 = fminf(*(a3 + 8), v24);
                        v27 = vmaxnm_f32(*(a3 + 12), v25);
                        v28 = fmaxf(*(a3 + 20), v24);
                        *a3 = vminnm_f32(*a3, v25);
                        *(a3 + 8) = v26;
                        *(a3 + 12) = v27;
                        *(a3 + 20) = v28;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      if (v5 < v10)
      {
        v29 = v5 + 3;
        while (1)
        {
          v5 = v29;
          if (v29 >= v10)
          {
            break;
          }

          v29 += 3;
          v8 = *v5;
          if (*v5)
          {
            goto LABEL_35;
          }
        }

        v8 = 0;
      }

LABEL_35:
      ;
    }

    while (v5 != v7);
  }
}

void Phase::SpatialModeler::countSurfaceArea(uint64_t a1, void *a2, Phase::SpatialModeler::RayTracerState *a3, uint64_t *a4, float *a5, float *a6, float a7, float a8)
{
  *a5 = 0.0;
  v67 = 0u;
  memset(v68, 0, 28);
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  __b = 0u;
  *&v68[28] = a3;
  if (a3)
  {
    bzero(&__b, 4 * a3);
    v13 = v67;
    *(a6 + 4) = v66;
    *(a6 + 5) = v13;
    v14 = *&v68[16];
    *(a6 + 6) = *v68;
    *(a6 + 7) = v14;
    v15 = v63;
    *a6 = __b;
    *(a6 + 1) = v15;
    v16 = v65;
    *(a6 + 2) = v64;
    *(a6 + 3) = v16;
    v67 = 0u;
    memset(v68, 0, 28);
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    __b = 0u;
    memset_pattern16(&__b, &unk_23A597960, 4 * a3);
  }

  else
  {
    v17 = v67;
    *(a6 + 4) = v66;
    *(a6 + 5) = v17;
    v18 = *&v68[16];
    *(a6 + 6) = *v68;
    *(a6 + 7) = v18;
    v19 = v63;
    *a6 = __b;
    *(a6 + 1) = v19;
    v20 = v65;
    *(a6 + 2) = v64;
    *(a6 + 3) = v20;
    v67 = 0uLL;
    memset(v68, 0, 28);
    v65 = 0uLL;
    v66 = 0uLL;
    v63 = 0uLL;
    v64 = 0uLL;
    __b = 0uLL;
  }

  SubbandIndex = Phase::SpatialModeler::RayTracerState::GetSubbandIndex(a3);
  v24 = *a2;
  v22 = (a2 + 1);
  v23 = v24;
  if (v24 != v22)
  {
    v25 = *(a1 + 160);
    v56 = 40 * SubbandIndex;
    v54 = v22;
    v53 = v25;
    do
    {
      v26 = *(v23 + 4);
      if (v25 > v26)
      {
        v27 = *(a1 + 144) + 24 * v26;
        if (*(v27 + 20) == HIDWORD(v26))
        {
          v28 = *v27;
          if (v28)
          {
            v29 = (fminf(fmaxf(v23[10], 0.1), 0.5) + -0.1) / 0.4;
            v30 = *(v28 + 72);
            v57 = v28;
            v31 = *(v28 + 80) - v30;
            if (v31)
            {
              v32 = 0;
              v33 = v31 >> 2;
              v34 = *(**(v28 + 144) + 16 * *(v28 + 152));
              v60 = *(v34 + 32);
              v61 = *(v34 + 8);
              v59 = *(a1 + 136);
              v35 = *a4;
              v36 = (a4[1] - *a4) >> 2;
              if (v33 <= 1)
              {
                v37 = 1;
              }

              else
              {
                v37 = v33;
              }

              do
              {
                v38 = *(v61 + v32 * v60);
                if (v59 > v38)
                {
                  v39 = *(a1 + 120) + 24 * v38;
                  if (*(v39 + 20) == HIDWORD(v38))
                  {
                    v40 = *v39;
                    if (*v39)
                    {
                      if (*v40 == 1)
                      {
                        v41 = *(*(v40 + 40) + v56);
                        if (v41)
                        {
                          v42 = v41[31];
                          v66 = v41[30];
                          v67 = v42;
                          v43 = v41[33];
                          *v68 = v41[32];
                          *&v68[16] = v43;
                          v44 = v41[27];
                          __b = v41[26];
                          v63 = v44;
                          v45 = v41[29];
                          v64 = v41[28];
                          v65 = v45;
                        }
                      }
                    }
                  }
                }

                if (a3)
                {
                  v46 = 0;
                  do
                  {
                    v47 = *(&__b + v46);
                    if (v46 < v36)
                    {
                      v47 = v47 * *(v35 + 4 * v46);
                    }

                    v48 = *(v30 + 4 * v32);
                    a6[v46] = a6[v46] + (-(v48 * v29) * logf((1.0 - fminf(fmaxf(v47, a7), a8)) + 0.00000011921));
                    ++v46;
                  }

                  while (a3 != v46);
                }

                ++v32;
              }

              while (v32 != v37);
            }

            v22 = v54;
            *a5 = *a5 + (*(v57 + 64) * v29);
            v25 = v53;
          }
        }
      }

      v49 = *(v23 + 1);
      if (v49)
      {
        do
        {
          v50 = v49;
          v49 = *v49;
        }

        while (v49);
      }

      else
      {
        do
        {
          v50 = *(v23 + 2);
          v51 = *v50 == v23;
          v23 = v50;
        }

        while (!v51);
      }

      v23 = v50;
    }

    while (v50 != v22);
  }
}

uint64_t Phase::SpatialModeler::calculateAbsorptionCorrectionToMatchReverbTime(_BOOL8 a1, uint64_t a2, uint64_t a3, float **a4, float a5, float a6, float a7, float a8, float a9)
{
  v43 = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 124);
  if (!v10 || *(a2 + 124) != v10)
  {
    return 0;
  }

  v15 = a1;
  v16 = *a4;
  if (v10 != a4[1] - *a4)
  {
    std::vector<float>::resize(a4, v10);
    v16 = *a4;
    v17 = a4[1] - *a4;
    if (v17 >= 1)
    {
      memset_pattern16(*a4, &memset_pattern, v17);
    }
  }

  if (*(a2 + 124))
  {
    v18 = 0;
    v19 = a5 * 55.262;
    v20 = a6 * a7;
    do
    {
      v21 = *(a2 + 4 * v18);
      if (v21 <= 0.0)
      {
        v31 = **(Phase::Logger::GetInstance(a1) + 1264);
        a1 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
        if (a1)
        {
          v32 = *(a2 + 4 * v18);
          *buf = 136315650;
          v38 = "RayTracingMath.cpp";
          v39 = 1024;
          v40 = 781;
          v41 = 2048;
          v42 = v32;
          v29 = v31;
          v30 = "%25s:%-5d Zero or negative target RT60 requested (%f).";
          goto LABEL_16;
        }
      }

      else
      {
        v22 = *(a3 + 4 * v18) * 4.0;
        v23 = 0.163 / v22;
        if ((0.163 / v22) > 12.0)
        {
          v23 = 12.0;
        }

        v24 = (v22 * a5) / a6;
        v25 = 1.0 - expf(v24 - (v19 / (v20 * fminf(fmaxf(v21, 0.05), v23 * 0.95))));
        v26 = v16[v18] * (a8 + (a9 * (v25 / (1.0 - expf(v24 - (v19 / (v20 * *(v15 + 4 * v18))))))));
        v16[v18] = v26;
        if ((LODWORD(v26) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
        {
          v16[v18] = fminf(fmaxf(v26, 0.001), 1000.0);
          goto LABEL_19;
        }

        v27 = **(Phase::Logger::GetInstance(a1) + 1264);
        a1 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
        if (a1)
        {
          v28 = (*a4)[v18];
          *buf = 136315650;
          v38 = "RayTracingMath.cpp";
          v39 = 1024;
          v40 = 831;
          v41 = 2048;
          v42 = v28;
          v29 = v27;
          v30 = "%25s:%-5d Error while calculating material correction factor (%f).";
LABEL_16:
          _os_log_impl(&dword_23A302000, v29, OS_LOG_TYPE_ERROR, v30, buf, 0x1Cu);
        }
      }

      v16 = *a4;
      (*a4)[v18] = 1.0;
LABEL_19:
      ++v18;
    }

    while (v18 < *(a2 + 124));
  }

  return 1;
}

float *Phase::SpatialModeler::FilterTargetRoomAcousticParameters(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v50 = *MEMORY[0x277D85DE8];
  memset(v47, 0, sizeof(v47));
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  memset(v40, 0, sizeof(v40));
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  switch(a2)
  {
    case 31:
      v11 = *(a1 + 252);
      v41 = *(a1 + 236);
      v42 = v11;
      v12 = *(a1 + 316);
      v45 = *(a1 + 300);
      v46 = v12;
      v47[0] = *(a1 + 332);
      *(v47 + 12) = *(a1 + 344);
      v13 = *(a1 + 284);
      v43 = *(a1 + 268);
      v44 = v13;
      v14 = *(a1 + 608);
      v15 = *(a1 + 624);
      v16 = *(a1 + 656);
      v36 = *(a1 + 640);
      v37 = v16;
      v34 = v14;
      v35 = v15;
      v17 = *(a1 + 672);
      v18 = *(a1 + 688);
      v19 = *(a1 + 704);
      *(v40 + 12) = *(a1 + 716);
      v39 = v18;
      v40[0] = v19;
      v38 = v17;
      HIDWORD(v47[1]) = 31;
      HIDWORD(v40[1]) = 31;
      break;
    case 10:
      v9 = *(a1 + 92);
      buf[0] = *(a1 + 76);
      buf[1] = v9;
      *&buf[2] = *(a1 + 108);
      v10 = *(a1 + 212);
      v48[0] = *(a1 + 196);
      v48[1] = v10;
      *&v48[2] = *(a1 + 228);
      memset(&buf[2] + 8, 0, 84);
      *(v47 + 12) = *(&buf[6] + 12);
      v46 = buf[5];
      v47[0] = buf[6];
      v44 = buf[3];
      v45 = buf[4];
      v42 = buf[1];
      v43 = buf[2];
      v41 = buf[0];
      v8 = 10;
      HIDWORD(v47[1]) = 10;
      memset(&v48[2] + 8, 0, 84);
      goto LABEL_6;
    case 3:
      *&buf[0] = *(a1 + 28);
      DWORD2(buf[0]) = *(a1 + 36);
      *&v48[0] = *(a1 + 64);
      DWORD2(v48[0]) = *(a1 + 72);
      *(buf + 12) = 0uLL;
      *(&buf[1] + 12) = 0uLL;
      *(&buf[2] + 12) = 0uLL;
      *(&buf[3] + 12) = 0uLL;
      *(&buf[5] + 12) = 0uLL;
      *(&buf[4] + 12) = 0uLL;
      *(&buf[6] + 12) = 0uLL;
      v43 = buf[2];
      v44 = buf[3];
      v41 = buf[0];
      v42 = buf[1];
      *(v47 + 12) = 0uLL;
      v46 = buf[5];
      v47[0] = buf[6];
      v45 = buf[4];
      v8 = 3;
      HIDWORD(v47[1]) = 3;
      *(&v48[6] + 12) = 0uLL;
      *(&v48[5] + 12) = 0uLL;
      *(&v48[4] + 12) = 0uLL;
      *(&v48[3] + 12) = 0uLL;
      *(&v48[2] + 12) = 0uLL;
      *(&v48[1] + 12) = 0uLL;
      *(v48 + 12) = 0uLL;
LABEL_6:
      v36 = v48[2];
      v37 = v48[3];
      v34 = v48[0];
      v35 = v48[1];
      *(v40 + 12) = *(&v48[6] + 12);
      v39 = v48[5];
      v40[0] = v48[6];
      v38 = v48[4];
      HIDWORD(v40[1]) = v8;
      break;
    default:
      v20 = **(Phase::Logger::GetInstance(a1) + 1264);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf[0]) = 136315650;
        *(buf + 4) = "RayTracingMath.cpp";
        WORD6(buf[0]) = 1024;
        *(buf + 14) = 876;
        WORD1(buf[1]) = 2048;
        *(&buf[1] + 4) = a2;
        _os_log_impl(&dword_23A302000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d Unsupported sub-band count: %zu\n", buf, 0x1Cu);
      }

      break;
  }

  Phase::SpatialModeler::TRAP::RT60Processor::Process(&v41, &v34, a1, a3);
  if (*(a3 + 194) == 1)
  {
    v21 = 1.0 / a4;
  }

  else
  {
    v22 = *(a3 + 21456);
    if (v22)
    {
      v21 = (std::chrono::steady_clock::now().__d_.__rep_ - v22) / 1000000000.0;
    }

    else
    {
      v21 = 0.0;
    }
  }

  result = Phase::SpatialModeler::TRAP::Sentinel::Process(a1, a3, v21);
  v24 = v46;
  *(a3 + 21664) = v45;
  *(a3 + 21680) = v24;
  v25 = v47[1];
  *(a3 + 21696) = v47[0];
  *(a3 + 21712) = v25;
  v26 = v42;
  *(a3 + 21600) = v41;
  *(a3 + 21616) = v26;
  v27 = v44;
  *(a3 + 21632) = v43;
  *(a3 + 21648) = v27;
  v28 = v34;
  v29 = v35;
  v30 = v36;
  *(a3 + 21776) = v37;
  *(a3 + 21760) = v30;
  *(a3 + 21744) = v29;
  *(a3 + 21728) = v28;
  v31 = v38;
  v32 = v39;
  v33 = v40[0];
  *(a3 + 21840) = v40[1];
  *(a3 + 21824) = v33;
  *(a3 + 21808) = v32;
  *(a3 + 21792) = v31;
  return result;
}

BOOL Phase::SpatialModeler::IsHistogramEnergyLowerThanTheoreticalPrediction(uint64_t a1, uint64_t a2, double a3)
{
  if (*(a1 + 36) == 1)
  {
    v3 = *(a1 + 28);
LABEL_13:
    v17 = 0.0;
    goto LABEL_14;
  }

  v3 = *(a1 + 28);
  v4 = v3 * *(a1 + 24);
  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = (v4 + 3) & 0x1FFFFFFFCLL;
  v6 = vdupq_n_s64(v4 - 1);
  v7 = xmmword_23A554B60;
  v8 = xmmword_23A554B70;
  v9 = xmmword_23A555020;
  v10 = (*(a1 + 8) + 8);
  v11 = vdupq_n_s64(4uLL);
  do
  {
    v12 = v9;
    v13 = vcgeq_u64(v6, v8);
    v14 = vmovn_s64(v13);
    *v9.f32 = vuzp1_s16(v14, *&a3);
    if (v9.i8[0])
    {
      v9.i32[0] = *(v10 - 2);
    }

    if (vuzp1_s16(v14, *&a3).i8[2])
    {
      v9.i32[1] = *(v10 - 1);
    }

    v15 = vcgeq_u64(v6, v7);
    if (vuzp1_s16(*&a3, vmovn_s64(*&v15)).i32[1])
    {
      v9.i64[1] = *v10;
    }

    v9 = vaddq_f32(v12, v9);
    v7 = vaddq_s64(v7, v11);
    v8 = vaddq_s64(v8, v11);
    v10 += 2;
    v5 -= 4;
  }

  while (v5);
  v16 = vbslq_s8(vuzp1q_s32(v13, v15), v9, v12);
  v17 = (vaddv_f32(*v16.i8) + *&v16.i32[2]) + *&v16.i32[3];
LABEL_14:
  v18 = *(a2 + 124);
  if (v18)
  {
    v19 = 0.0;
    v20 = *(a2 + 124);
    do
    {
      v21 = *a2;
      a2 += 4;
      v19 = v19 + v21;
      --v20;
    }

    while (v20);
    if (v18 != 1)
    {
      v19 = v19 / v18;
    }
  }

  else
  {
    v19 = 0.0;
  }

  return (v17 / v3) <= (expf(((fabsf(*&a3) * -10.0) / 10.0) * 0.23026) * v19);
}

float Phase::SpatialModeler::GetMaximumEnergy(Phase::SpatialModeler *this, const Phase::SpatialModeler::RayTracerState *a2, const Handle64 *a3)
{
  v3 = *(this + 2366);
  if (*(this + 2367) == v3)
  {
    return 0.0;
  }

  v5 = 0;
  v6 = 0.0;
  v21 = vdupq_n_s64(4uLL);
  do
  {
    v26 = *(v3 + 56 * v5);
    Phase::SpatialModeler::RayTracerState::GetSourceListenerResult(this, &v26, v22);
    if (v24 && (*(v24 + 36) & 1) == 0)
    {
      v7 = (*(v24 + 28) * *(v24 + 24));
      if (v7)
      {
        v8 = (v7 + 3) & 0x1FFFFFFFCLL;
        v9 = vdupq_n_s64(v7 - 1);
        v10 = (*(v24 + 8) + 8);
        v11 = xmmword_23A554B70;
        v12 = xmmword_23A554B60;
        v13 = xmmword_23A555020;
        do
        {
          v14 = v13;
          v15 = vcgeq_u64(v9, v11);
          v16 = vmovn_s64(v15);
          *v13.f32 = vuzp1_s16(v16, *v9.i8);
          if (v13.i8[0])
          {
            v13.i32[0] = *(v10 - 2);
          }

          if (vuzp1_s16(v16, *&v9).i8[2])
          {
            v13.i32[1] = *(v10 - 1);
          }

          v17 = vcgeq_u64(v9, v12);
          if (vuzp1_s16(*&v9, vmovn_s64(*&v17)).i32[1])
          {
            v13.i64[1] = *v10;
          }

          v13 = vaddq_f32(v14, v13);
          v12 = vaddq_s64(v12, v21);
          v11 = vaddq_s64(v11, v21);
          v10 += 2;
          v8 -= 4;
        }

        while (v8);
        v18 = vbslq_s8(vuzp1q_s32(v15, v17), v13, v14);
        v19 = (vaddv_f32(*v18.i8) + *&v18.i32[2]) + *&v18.i32[3];
      }

      else
      {
        v19 = 0.0;
      }

      if (v19 >= v6)
      {
        v6 = v19;
      }
    }

    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    ++v5;
    v3 = *(this + 2366);
  }

  while (v5 < 0x6DB6DB6DB6DB6DB7 * ((*(this + 2367) - v3) >> 3));
  return v6;
}

uint64_t Phase::SpatialModeler::GetListenerOutsideEstimate(Phase::SpatialModeler *this, const Phase::SpatialModeler::RayTracerState *a2, const Phase::SpatialModeler::RayTracerState *a3)
{
  v5 = (this + 19016);
  v6 = *(this + 4826);
  if (v6)
  {
    v7 = (*(this + 4833) / v6) > 0.85;
  }

  else
  {
    v7 = 0;
  }

  v8 = Phase::Contains<float>(this + 5244, this + 5698);
  v9 = *(this + 16);
  v10 = *v5 - v9;
  if (*v5 != v9)
  {
    v10 = (v5[73] / v10) > 0.75;
  }

  if ((v7 | v10))
  {
    return 1;
  }

  v12 = v5[122];
  v14 = (v12 / *(a2 + 4876)) < 0.15 && v12 > 0.0;
  return !v8 | (v14 && *(v5 + 504) < 4u);
}

BOOL Phase::Contains<float>(float *a1, float *a2)
{
  if (*a1 > *a2 || *a2 > a1[3])
  {
    return 0;
  }

  v3 = a2[1];
  if (a1[1] > v3 || v3 > a1[4])
  {
    return 0;
  }

  v5 = a2[2];
  return a1[2] <= v5 && v5 <= a1[5];
}

void Phase::Geometry::CardioidDirectivity::CalculateSubbandGains<4ul>(uint64_t a1, float a2, float a3)
{
  __asm { FMOV            V1.4S, #1.0 }

  v19 = _Q1;
  v9 = *(a1 + 140);
  if (v9)
  {
    if (v9 >= 4)
    {
      v10 = 4;
    }

    else
    {
      v10 = v9;
    }

    v11 = (a1 + 272);
    v12 = sinf(a2);
    v13 = v12 * cosf(a3);
    v14 = &v19;
    do
    {
      v15 = *(v11 - 32);
      v16 = *v11++;
      v17 = v16;
      v18 = (1.0 - v15) + (v13 * v15);
      if (v18 < 0.0)
      {
        v18 = -v18;
      }

      *v14++ = powf(v18, v17);
      --v10;
    }

    while (v10);
  }
}

float Phase::Geometry::ConeDirectivity::CalculateSubbandGains<4ul>(uint64_t a1, float a2)
{
  __asm { FMOV            V1.4S, #1.0 }

  LODWORD(v7) = *(a1 + 140);
  if (!v7)
  {
    return 1.0;
  }

  if (v7 >= 4)
  {
    v7 = 4;
  }

  else
  {
    v7 = v7;
  }

  v8 = (a1 + 400);
  v9 = &v16;
  do
  {
    v10 = *(v8 - 64);
    v11 = *(v8 - 32);
    v12 = v10 - v11;
    if ((v10 - v11) < 0.0)
    {
      v12 = -(v10 - v11);
    }

    if (v12 <= 0.001745)
    {
      v13 = 0.0;
      if (v10 <= a2)
      {
        if (v10 >= a2)
        {
          v13 = 0.5;
        }

        else
        {
          v13 = 1.0;
        }
      }
    }

    else
    {
      v13 = fminf(fmaxf((a2 - v10) / (v11 - v10), 0.0), 1.0);
    }

    v14 = *v8++;
    *v9++ = (1.0 - v13) + (v14 * v13);
    --v7;
  }

  while (v7);
  return *&v16;
}

void Phase::Geometry::SphericalCapDirectivity::GetSubbandGainsFromDatabase<4ul>(Phase::Logger *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = **(Phase::Logger::GetInstance(a1) + 944);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315394;
    v4 = "GeoSphericalCapDirectivity.hpp";
    v5 = 1024;
    v6 = 216;
    _os_log_impl(&dword_23A302000, v1, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument): SphericalCapDirectivity; unrecognized frequency resolution for GetGainsFromDatabase.", &v3, 0x12u);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::invalid_argument::invalid_argument[abi:ne200100](exception, "SphericalCapDirectivity; unrecognized frequency resolution for GetGainsFromDatabase.");
}

void Phase::Geometry::CardioidDirectivity::CalculateSubbandGains<5ul>(uint64_t a1, uint64_t a2, float a3, float a4)
{
  __asm { FMOV            V1.4S, #1.0 }

  *a1 = _Q1;
  *(a1 + 16) = 1065353216;
  v10 = *(a2 + 140);
  if (v10)
  {
    v11 = a1;
    if (v10 >= 5)
    {
      v12 = 5;
    }

    else
    {
      v12 = v10;
    }

    v13 = (a2 + 272);
    v14 = sinf(a3);
    v15 = v14 * cosf(a4);
    do
    {
      v16 = *(v13 - 32);
      v17 = *v13++;
      v18 = v17;
      v19 = (1.0 - v16) + (v15 * v16);
      if (v19 < 0.0)
      {
        v19 = -v19;
      }

      *v11++ = powf(v19, v18);
      --v12;
    }

    while (v12);
  }
}

uint64_t Phase::Geometry::ConeDirectivity::CalculateSubbandGains<5ul>(uint64_t result, uint64_t a2, float a3)
{
  __asm { FMOV            V1.4S, #1.0 }

  *result = _Q1;
  *(result + 16) = 1065353216;
  LODWORD(v8) = *(a2 + 140);
  if (v8)
  {
    if (v8 >= 5)
    {
      v8 = 5;
    }

    else
    {
      v8 = v8;
    }

    v9 = (a2 + 400);
    do
    {
      v10 = *(v9 - 64);
      v11 = *(v9 - 32);
      v12 = v10 - v11;
      if ((v10 - v11) < 0.0)
      {
        v12 = -(v10 - v11);
      }

      if (v12 <= 0.001745)
      {
        v13 = 0.0;
        if (v10 <= a3)
        {
          if (v10 >= a3)
          {
            v13 = 0.5;
          }

          else
          {
            v13 = 1.0;
          }
        }
      }

      else
      {
        v13 = fminf(fmaxf((a3 - v10) / (v11 - v10), 0.0), 1.0);
      }

      v14 = *v9++;
      *result = (1.0 - v13) + (v14 * v13);
      result += 4;
      --v8;
    }

    while (v8);
  }

  return result;
}

void Phase::Geometry::SphericalCapDirectivity::GetSubbandGainsFromDatabase<5ul>(Phase::Logger *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = **(Phase::Logger::GetInstance(a1) + 944);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315394;
    v4 = "GeoSphericalCapDirectivity.hpp";
    v5 = 1024;
    v6 = 216;
    _os_log_impl(&dword_23A302000, v1, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument): SphericalCapDirectivity; unrecognized frequency resolution for GetGainsFromDatabase.", &v3, 0x12u);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::invalid_argument::invalid_argument[abi:ne200100](exception, "SphericalCapDirectivity; unrecognized frequency resolution for GetGainsFromDatabase.");
}

void Phase::Geometry::CardioidDirectivity::CalculateSubbandGains<6ul>(uint64_t a1, uint64_t a2, float a3, float a4)
{
  __asm { FMOV            V1.4S, #1.0 }

  *a1 = _Q1;
  __asm { FMOV            V1.2S, #1.0 }

  *(a1 + 16) = _Q1;
  v10 = *(a2 + 140);
  if (v10)
  {
    v11 = a1;
    if (v10 >= 6)
    {
      v12 = 6;
    }

    else
    {
      v12 = v10;
    }

    v13 = (a2 + 272);
    v14 = sinf(a3);
    v15 = v14 * cosf(a4);
    do
    {
      v16 = *(v13 - 32);
      v17 = *v13++;
      v18 = v17;
      v19 = (1.0 - v16) + (v15 * v16);
      if (v19 < 0.0)
      {
        v19 = -v19;
      }

      *v11++ = powf(v19, v18);
      --v12;
    }

    while (v12);
  }
}

uint64_t Phase::Geometry::ConeDirectivity::CalculateSubbandGains<6ul>(uint64_t result, uint64_t a2, float a3)
{
  __asm { FMOV            V1.4S, #1.0 }

  *result = _Q1;
  __asm { FMOV            V1.2S, #1.0 }

  *(result + 16) = _Q1;
  LODWORD(v8) = *(a2 + 140);
  if (v8)
  {
    if (v8 >= 6)
    {
      v8 = 6;
    }

    else
    {
      v8 = v8;
    }

    v9 = (a2 + 400);
    do
    {
      v10 = *(v9 - 64);
      v11 = *(v9 - 32);
      v12 = v10 - v11;
      if ((v10 - v11) < 0.0)
      {
        v12 = -(v10 - v11);
      }

      if (v12 <= 0.001745)
      {
        v13 = 0.0;
        if (v10 <= a3)
        {
          if (v10 >= a3)
          {
            v13 = 0.5;
          }

          else
          {
            v13 = 1.0;
          }
        }
      }

      else
      {
        v13 = fminf(fmaxf((a3 - v10) / (v11 - v10), 0.0), 1.0);
      }

      v14 = *v9++;
      *result = (1.0 - v13) + (v14 * v13);
      result += 4;
      --v8;
    }

    while (v8);
  }

  return result;
}

void Phase::Geometry::SphericalCapDirectivity::GetSubbandGainsFromDatabase<6ul>(Phase::Logger *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = **(Phase::Logger::GetInstance(a1) + 944);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315394;
    v4 = "GeoSphericalCapDirectivity.hpp";
    v5 = 1024;
    v6 = 216;
    _os_log_impl(&dword_23A302000, v1, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument): SphericalCapDirectivity; unrecognized frequency resolution for GetGainsFromDatabase.", &v3, 0x12u);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::invalid_argument::invalid_argument[abi:ne200100](exception, "SphericalCapDirectivity; unrecognized frequency resolution for GetGainsFromDatabase.");
}

void Phase::Geometry::CardioidDirectivity::CalculateSubbandGains<10ul>(uint64_t a1, uint64_t a2, float a3, float a4)
{
  __asm { FMOV            V1.4S, #1.0 }

  *a1 = _Q1;
  *(a1 + 16) = _Q1;
  __asm { FMOV            V1.2S, #1.0 }

  *(a1 + 32) = _Q1;
  v10 = *(a2 + 140);
  if (v10)
  {
    v11 = a1;
    if (v10 >= 0xA)
    {
      v12 = 10;
    }

    else
    {
      v12 = v10;
    }

    v13 = (a2 + 272);
    v14 = sinf(a3);
    v15 = v14 * cosf(a4);
    do
    {
      v16 = *(v13 - 32);
      v17 = *v13++;
      v18 = v17;
      v19 = (1.0 - v16) + (v15 * v16);
      if (v19 < 0.0)
      {
        v19 = -v19;
      }

      *v11++ = powf(v19, v18);
      --v12;
    }

    while (v12);
  }
}

uint64_t Phase::Geometry::ConeDirectivity::CalculateSubbandGains<10ul>(uint64_t result, uint64_t a2, float a3)
{
  __asm { FMOV            V1.4S, #1.0 }

  *result = _Q1;
  *(result + 16) = _Q1;
  __asm { FMOV            V1.2S, #1.0 }

  *(result + 32) = _Q1;
  LODWORD(v8) = *(a2 + 140);
  if (v8)
  {
    if (v8 >= 0xA)
    {
      v8 = 10;
    }

    else
    {
      v8 = v8;
    }

    v9 = (a2 + 400);
    do
    {
      v10 = *(v9 - 64);
      v11 = *(v9 - 32);
      v12 = v10 - v11;
      if ((v10 - v11) < 0.0)
      {
        v12 = -(v10 - v11);
      }

      if (v12 <= 0.001745)
      {
        v13 = 0.0;
        if (v10 <= a3)
        {
          if (v10 >= a3)
          {
            v13 = 0.5;
          }

          else
          {
            v13 = 1.0;
          }
        }
      }

      else
      {
        v13 = fminf(fmaxf((a3 - v10) / (v11 - v10), 0.0), 1.0);
      }

      v14 = *v9++;
      *result = (1.0 - v13) + (v14 * v13);
      result += 4;
      --v8;
    }

    while (v8);
  }

  return result;
}

void Phase::Geometry::CardioidDirectivity::CalculateSubbandGains<31ul>(uint64_t a1, uint64_t a2, float a3, float a4)
{
  __asm { FMOV            V1.4S, #1.0 }

  *a1 = _Q1;
  *(a1 + 16) = _Q1;
  *(a1 + 32) = _Q1;
  *(a1 + 48) = _Q1;
  *(a1 + 64) = _Q1;
  *(a1 + 80) = _Q1;
  *(a1 + 96) = _Q1;
  __asm { FMOV            V1.2S, #1.0 }

  *(a1 + 112) = _Q1;
  *(a1 + 120) = 1065353216;
  v10 = *(a2 + 140);
  if (v10)
  {
    v11 = a1;
    if (v10 >= 0x1F)
    {
      v12 = 31;
    }

    else
    {
      v12 = v10;
    }

    v13 = (a2 + 272);
    v14 = sinf(a3);
    v15 = v14 * cosf(a4);
    do
    {
      v16 = *(v13 - 32);
      v17 = *v13++;
      v18 = v17;
      v19 = (1.0 - v16) + (v15 * v16);
      if (v19 < 0.0)
      {
        v19 = -v19;
      }

      *v11++ = powf(v19, v18);
      --v12;
    }

    while (v12);
  }
}

uint64_t Phase::Geometry::ConeDirectivity::CalculateSubbandGains<31ul>(uint64_t result, uint64_t a2, float a3)
{
  __asm { FMOV            V1.4S, #1.0 }

  *result = _Q1;
  *(result + 16) = _Q1;
  *(result + 32) = _Q1;
  *(result + 48) = _Q1;
  *(result + 64) = _Q1;
  *(result + 80) = _Q1;
  *(result + 96) = _Q1;
  __asm { FMOV            V1.2S, #1.0 }

  *(result + 112) = _Q1;
  *(result + 120) = 1065353216;
  LODWORD(v8) = *(a2 + 140);
  if (v8)
  {
    if (v8 >= 0x1F)
    {
      v8 = 31;
    }

    else
    {
      v8 = v8;
    }

    v9 = (a2 + 400);
    do
    {
      v10 = *(v9 - 64);
      v11 = *(v9 - 32);
      v12 = v10 - v11;
      if ((v10 - v11) < 0.0)
      {
        v12 = -(v10 - v11);
      }

      if (v12 <= 0.001745)
      {
        v13 = 0.0;
        if (v10 <= a3)
        {
          if (v10 >= a3)
          {
            v13 = 0.5;
          }

          else
          {
            v13 = 1.0;
          }
        }
      }

      else
      {
        v13 = fminf(fmaxf((a3 - v10) / (v11 - v10), 0.0), 1.0);
      }

      v14 = *v9++;
      *result = (1.0 - v13) + (v14 * v13);
      result += 4;
      --v8;
    }

    while (v8);
  }

  return result;
}

void Phase::details::ReturnForEachSubband<float,31ul,Phase::PackedSubbands<float,31ul> Phase::operator+<float,31ul>(Phase::PackedSubbands<float,31ul> const&,Phase::PackedSubbands<float,31ul> const&)::{lambda(float)#1} const&,0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul>(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v13 = *MEMORY[0x277D85DE8];
  v6 = vaddq_f32(*(a2 + 16), *(a3 + 16));
  v10[0] = vaddq_f32(*a2, *a3);
  v10[1] = v6;
  v7 = vaddq_f32(*(a2 + 48), *(a3 + 48));
  v10[2] = vaddq_f32(*(a2 + 32), *(a3 + 32));
  v10[3] = v7;
  v8 = vaddq_f32(*(a2 + 80), *(a3 + 80));
  v10[4] = vaddq_f32(*(a2 + 64), *(a3 + 64));
  v10[5] = v8;
  v10[6] = vaddq_f32(*(a2 + 96), *(a3 + 96));
  v8.i32[0] = *(a2 + 120);
  v11 = vadd_f32(*(a2 + 112), *(a3 + 112));
  v12 = v8.f32[0] + *(a3 + 120);
  *(a1 + 108) = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  do
  {
    if (v4 <= 0x1E)
    {
      v3 = v4 + 1;
      *(a1 + v4++) = *(v10 + v5);
    }

    v5 += 4;
  }

  while (v5 != 124);
  if (v3 <= 0x1E)
  {
    v9 = a1 + 4 * v3;

    bzero(v9, 124 - 4 * v3);
  }
}

void Phase::details::ReturnForEachSubband<float,31ul,Phase::PackedSubbands<float,31ul> Phase::operator*<float,31ul>(Phase::PackedSubbands<float,31ul> const&,float const&)::{lambda(float)#1} const&,0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul>(_OWORD *a1, uint64_t a2, double a3)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v13 = *MEMORY[0x277D85DE8];
  v6 = vmulq_n_f32(*(a2 + 16), *&a3);
  v10[0] = vmulq_n_f32(*a2, *&a3);
  v10[1] = v6;
  v7 = vmulq_n_f32(*(a2 + 48), *&a3);
  v10[2] = vmulq_n_f32(*(a2 + 32), *&a3);
  v10[3] = v7;
  v8 = vmulq_n_f32(*(a2 + 80), *&a3);
  v10[4] = vmulq_n_f32(*(a2 + 64), *&a3);
  v10[5] = v8;
  v10[6] = vmulq_n_f32(*(a2 + 96), *&a3);
  v11 = vmul_f32(*(a2 + 112), *&vdupq_lane_s32(*&a3, 0));
  v12 = *(a2 + 120) * *&a3;
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  *(a1 + 108) = 0u;
  do
  {
    if (v4 <= 0x1E)
    {
      v3 = v4 + 1;
      *(a1 + v4++) = *(v10 + v5);
    }

    v5 += 4;
  }

  while (v5 != 124);
  if (v3 <= 0x1E)
  {
    v9 = a1 + 4 * v3;

    bzero(v9, 124 - 4 * v3);
  }
}

void Phase::details::ReturnForEachSubband<float,31ul,Phase::PackedSubbands<float,31ul> Phase::operator*<float,31ul>(Phase::PackedSubbands<float,31ul> const&,Phase::PackedSubbands<float,31ul> const&)::{lambda(float)#1} const&,0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul>(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v13 = *MEMORY[0x277D85DE8];
  v6 = vmulq_f32(*(a2 + 16), *(a3 + 16));
  v10[0] = vmulq_f32(*a2, *a3);
  v10[1] = v6;
  v7 = vmulq_f32(*(a2 + 48), *(a3 + 48));
  v10[2] = vmulq_f32(*(a2 + 32), *(a3 + 32));
  v10[3] = v7;
  v8 = vmulq_f32(*(a2 + 80), *(a3 + 80));
  v10[4] = vmulq_f32(*(a2 + 64), *(a3 + 64));
  v10[5] = v8;
  v10[6] = vmulq_f32(*(a2 + 96), *(a3 + 96));
  v8.i32[0] = *(a2 + 120);
  v11 = vmul_f32(*(a2 + 112), *(a3 + 112));
  v12 = v8.f32[0] * *(a3 + 120);
  *(a1 + 108) = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  do
  {
    if (v4 <= 0x1E)
    {
      v3 = v4 + 1;
      *(a1 + v4++) = *(v10 + v5);
    }

    v5 += 4;
  }

  while (v5 != 124);
  if (v3 <= 0x1E)
  {
    v9 = a1 + 4 * v3;

    bzero(v9, 124 - 4 * v3);
  }
}

uint64_t Phase::Controller::DVM23::RendererController::DestroyGraph(Phase::Controller::DVM23::RendererController *this, Phase::Controller::DVM23::DspVoiceManager23 *a2)
{
  Phase::Controller::DVM23::DspVoiceManager23::CancelCallback(a2, *(this + 5));

  return Phase::Controller::DVM23::DspVoiceManager23::RemoveGraph(a2);
}

uint64_t Phase::Controller::DVM23::RendererController::ConfigureGraphWithChannels(uint64_t a1, Phase::Controller::DVM23::VoiceGraph **a2, void *a3, int a4, int a5)
{
  *(a1 + 24) = -1;
  v9 = (a1 + 24);
  *(&v24.__r_.__value_.__s + 23) = 11;
  strcpy(&v24, "RendererId ");
  std::to_string(&__p, *(a1 + 8));
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

  v12 = std::string::append(&v24, p_p, size);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v26 = v12->__r_.__value_.__r.__words[2];
  *v25 = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (v26 >= 0)
  {
    v14 = v25;
  }

  else
  {
    v14 = v25[0];
  }

  Phase::Controller::DVM23::DspVoiceManager23::AddGraph(a2, v9, *(*a2 + 8), a4, a5, v14);
  if (a4 < 1)
  {
LABEL_21:
    v21 = 0;
  }

  else
  {
    v15 = 0;
    v16 = a4;
    v17 = 1;
    while (1)
    {
      v18 = (*a3 + 16 * v15);
      v24.__r_.__value_.__r.__words[0] = v18[1];
      if (Phase::Controller::DVM23::DspVoiceManager23::AddVoice(a2, &v24, *v18))
      {
        break;
      }

      v19 = v24.__r_.__value_.__r.__words[0];
      Phase::Controller::DVM23::DspVoiceManager23::AddConnection(a2, *v9, v15, v24.__r_.__value_.__l.__data_, 0);
      if (a5 >= 1)
      {
        v20 = 0;
        do
        {
          Phase::Controller::DVM23::DspVoiceManager23::AddConnection(a2, v19, v20, *v9, v20);
          v20 = (v20 + 1);
        }

        while (a5 != v20);
      }

      v17 = ++v15 < v16;
      if (v15 == v16)
      {
        goto LABEL_21;
      }
    }

    Phase::Controller::DVM23::DspVoiceManager23::RemoveGraph(a2);
    if (v17)
    {
      v21 = 2;
    }

    else
    {
      v21 = 0;
    }
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

  return v21;
}

void sub_23A4D0BBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Controller::DVM23::RendererController::SetPlaystate(uint64_t a1, Phase::Controller::DVM23::DspVoiceManager23 *this, int a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a1 + 40;
  Phase::Controller::DVM23::DspVoiceManager23::CancelCallback(this, *(a1 + 40));
  std::__function::__value_func<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::__value_func[abi:ne200100](v15, a4);
  v16 = *(v7 - 32);
  if ((a3 - 1) < 2)
  {
    if (Phase::Controller::DVM23::DspVoiceManager23::GetTailDelayMs(this) == 0.0)
    {
      std::__function::__value_func<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::__value_func[abi:ne200100](v10, v15);
      v11 = v16;
      v14 = 0;
      operator new();
    }

    std::__function::__value_func<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::__value_func[abi:ne200100](v9, v15);
    v9[2] = v16;
    v14 = 0;
    operator new();
  }

  if (!a3)
  {
    std::__function::__value_func<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::__value_func[abi:ne200100](v12, v15);
    v13 = v16;
    v14 = 0;
    operator new();
  }

  std::__function::__value_func<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::~__value_func[abi:ne200100](v15);
  return 0;
}