void sub_23C94955C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  operations_research::sat::LinearExpr::~LinearExpr(&a35);
  v37 = *(v35 - 240);
  if (v37)
  {
    *(v35 - 232) = v37;
    operator delete(v37);
  }

  v38 = STACK[0x340];
  if (STACK[0x340])
  {
    STACK[0x348] = v38;
    operator delete(v38);
  }

  _Unwind_Resume(a1);
}

_BYTE *CpAllocUtils::GetDecisionString@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  if (v4 > 8)
  {
    v5 = &byte_23CE7F131;
  }

  else
  {
    v5 = off_278BC2EA0[v4];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v5);
}

void sub_23C949CEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, operations_research::sat::CpModelProto **a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  std::ofstream::~ofstream(v20, MEMORY[0x277D82810]);
  MEMORY[0x23EED93A0](v19);
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsMemCacheLayerScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsMemCacheLayerScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsMemCacheLayerScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsMemCacheLayerScheduleVariable>>>>::~__hash_table(v18);
  std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<ORToolsTensorMemCacheAllocationVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<ORToolsTensorMemCacheAllocationVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<ORToolsTensorMemCacheAllocationVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<ORToolsTensorMemCacheAllocationVariable>>>>::~__hash_table(v17);
  std::unique_ptr<operations_research::sat::SatParameters>::~unique_ptr[abi:ne200100]((v16 + 40));
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v16);
  std::unique_ptr<operations_research::sat::CpModelBuilder>::~unique_ptr[abi:ne200100](a10);
  _Unwind_Resume(a1);
}

void ORToolsCpMemCacheAllocator::~ORToolsCpMemCacheAllocator(ORToolsCpMemCacheAllocator *this)
{
  v2 = MEMORY[0x277D82810];
  v3 = *MEMORY[0x277D82810];
  *(this + 19) = *MEMORY[0x277D82810];
  *(this + *(v3 - 24) + 152) = *(v2 + 24);
  MEMORY[0x23EED90E0](this + 160);
  std::ostream::~ostream();
  MEMORY[0x23EED93A0](this + 568);
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsMemCacheLayerScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsMemCacheLayerScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsMemCacheLayerScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsMemCacheLayerScheduleVariable>>>>::~__hash_table(this + 104);
  std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<ORToolsTensorMemCacheAllocationVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<ORToolsTensorMemCacheAllocationVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<ORToolsTensorMemCacheAllocationVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<ORToolsTensorMemCacheAllocationVariable>>>>::~__hash_table(this + 64);
  std::unique_ptr<operations_research::sat::SatParameters>::~unique_ptr[abi:ne200100](this + 7);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 16);
  std::unique_ptr<operations_research::sat::CpModelBuilder>::~unique_ptr[abi:ne200100](this + 1);
}

void ORToolsCpMemCacheAllocator::Execute(ORToolsCpMemCacheAllocator *this)
{
  ORToolsCpMemCacheAllocatorUtil::PrintRegion(this + 19, *this, this + 2);
  v22 = operations_research::sat::CpModelBuilder::NewConstant(*(this + 1), *(this + 18));
  LODWORD(v23) = v2;
  v3 = operations_research::sat::IntVar::WithName(&v22, "mem_cache_space_const", 0x15uLL);
  v5 = *(this + 1);
  operations_research::sat::LinearExpr::LinearExpr(v29, v3, v4);
  v32[0] = operations_research::sat::CpModelBuilder::AddCumulative(v5, v29);
  v32[1] = v6;
  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  if (v29[0])
  {
    v29[1] = v29[0];
    operator delete(v29[0]);
  }

  v27 = 0;
  v28 = 0x7FFFFFFFFFFFFFFFLL;
  ORToolsCpMemCacheAllocator::FindMinMaxSchedule(this, &v28, &v27);
  operations_research::Domain::Domain(&v26, v28, v27);
  CpGraph::GetTensors(*this, &v22);
  v7 = v22;
  v8 = v23;
  if (v22 != v23)
  {
    do
    {
      v9 = *v7;
      ORToolsCpMemCacheAllocator::CreateTensorAllocationVariable(this, *v7);
      ORToolsCpMemCacheAllocator::CreateTensorAllocationConstraint(this, v9, v32);
      ++v7;
    }

    while (v7 != v8);
    v7 = v22;
  }

  if (v7)
  {
    v23 = v7;
    operator delete(v7);
  }

  CpGraph::GetLayers(*this, 1, &v22);
  v10 = v22;
  v11 = v23;
  if (v22 != v23)
  {
    do
    {
      v25 = *v10;
      if (CpMemCacheAllocGraph::IsDramAccessingEngineLayer(*this, v25))
      {
        LayerLatencyInfo = CpMemCacheAllocGraph::GetLayerLatencyInfo(*this, v25);
        MaxLatency = MemCacheLayerLatencyInfo::GetMaxLatency(LayerLatencyInfo);
        MinLatency = MemCacheLayerLatencyInfo::GetMinLatency(LayerLatencyInfo);
        operations_research::Domain::Domain(&v24, MinLatency, MaxLatency);
        ORToolsCpMemCacheAllocator::CreateLayerScheduleVariable(this, v25, &v24);
      }

      v24 = &v25;
      v15 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsMemCacheLayerScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsMemCacheLayerScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsMemCacheLayerScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsMemCacheLayerScheduleVariable>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 13, &v25);
      std::unique_ptr<ORToolsMemCacheLayerScheduleVariable>::reset[abi:ne200100](v15 + 3, 0);
      ++v10;
    }

    while (v10 != v11);
    v10 = v22;
  }

  if (v10)
  {
    v23 = v10;
    operator delete(v10);
  }

  ORToolsCpMemCacheAllocator::SetObjectiveFunction(this);
  operations_research::sat::CpModelProto::CpModelProto(&v24, 0, *(this + 1));
  v17 = *this;
  v16 = *(this + 1);
  RegionMaxCycle = ORToolsCpMemCacheAllocator::GetRegionMaxCycle(this);
  ORToolsCpMemCacheAllocatorUtil::PrintConstraintProblem(this + 19, v16, &v24, v17, RegionMaxCycle);
  v19 = *(this + 7);
  *(v19 + 448) = 0x403E000000000000;
  *(v19 + 28) |= 0x20u;
  v20 = *(this + 7);
  *(v20 + 332) = 1;
  *(v20 + 24) |= 0x80u;
  operations_research::sat::SolveWithParameters(&v24, *(this + 7), v21);
}

void sub_23C94A1BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, void *a45)
{
  operations_research::sat::CpSolverResponse::~CpSolverResponse(&__p);
  operations_research::sat::CpModelProto::~CpModelProto(&a44);
  if (*(v45 - 192))
  {
    operator delete(*(v45 - 184));
  }

  _Unwind_Resume(a1);
}

void ORToolsCpMemCacheAllocator::FindMinMaxSchedule(CpGraph **this, uint64_t *a2, uint64_t *a3)
{
  *a2 = 0x7FFFFFFFFFFFFFFFLL;
  *a3 = 0;
  CpGraph::GetLayers(*this, 1, &v12);
  v6 = v12;
  v7 = v13;
  if (v12 != v13)
  {
    do
    {
      v8 = *v6;
      v11 = -1;
      CpGraph::GetLayerSchedule(*this, v8, &v11);
      v9 = v11;
      v10 = *a2;
      if (v11 < *a2)
      {
        v10 = v11;
      }

      *a2 = v10;
      if (*a3 > v9)
      {
        v9 = *a3;
      }

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

void sub_23C94A328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *ORToolsCpMemCacheAllocator::CreateTensorAllocationVariable(ORToolsCpMemCacheAllocator *this, std::locale::__imp *a2)
{
  v12 = a2;
  result = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>(this + 8, &v12);
  if (!result)
  {
    memset(&__p, 0, sizeof(__p));
    CpGraph::GetTensorName(*this, v12, &__p);
    if (*(this + 35))
    {
      v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this + 19, "[ tensor_to_var_map_ ] : tensor id: ", 36);
      v5 = MEMORY[0x23EED91C0](v4, v12);
      v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " --> Name: ", 11);
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

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, p_p, size);
    }

    v9 = *this;
    v13.__locale_ = v12;
    std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::find<unsigned long long>((v9 + 336), &v13);
    v10 = *(this + 1);
    operator new();
  }

  return result;
}

void sub_23C94A560(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  MEMORY[0x23EED9460](v16, 0x1020C403A5D3213);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ORToolsCpMemCacheAllocator::CreateTensorAllocationConstraint(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v34 = a2;
  v33.__r_.__value_.__r.__words[0] = &v34;
  v5 = std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<ORToolsTensorMemCacheAllocationVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<ORToolsTensorMemCacheAllocationVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<ORToolsTensorMemCacheAllocationVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<ORToolsTensorMemCacheAllocationVariable>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((a1 + 64), &v34);
  v7 = v5[3];
  v6 = v5[4];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  memset(&v33, 0, sizeof(v33));
  CpGraph::GetTensorName(*a1, v34, &v33);
  v8 = *(CpMemCacheAllocGraph::GetTensorFootprintInfo(*a1, v34) + 8);
  if (*(a1 + 280))
  {
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a1 + 152), "tensor id: ", 11);
    v10 = MEMORY[0x23EED91C0](v9, v34);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ", Footprint:", 12);
    v12 = MEMORY[0x23EED91A0](v11, v8);
    std::ios_base::getloc((v12 + *(*v12 - 24)));
    v13 = std::locale::use_facet(&v29, MEMORY[0x277D82680]);
    (v13->__vftable[2].~facet_0)(v13, 10);
    std::locale::~locale(&v29);
    std::ostream::put();
    std::ostream::flush();
  }

  v14 = operations_research::sat::CpModelBuilder::NewConstant(*(a1 + 8), v8);
  v16 = v15;
  v32 = 0uLL;
  CpGraph::GetTensorLiverange(*a1, v34, &v32);
  v17 = *(a1 + 8);
  v18 = v32;
  v19 = *v7;
  v20 = v7[1];
  std::operator+<char>();
  v21 = std::string::append(&v29, ":memcache_pressure_interval", 0x1BuLL);
  v22 = *&v21->__r_.__value_.__l.__data_;
  v31 = v21->__r_.__value_.__r.__words[2];
  *__p = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  OptionalClosedInterval = ORToolsCpBasedAllocatorUtil::CreateOptionalClosedInterval(v17, v18, *(&v18 + 1), v19, v20, __p);
  v25 = v24;
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  operations_research::sat::LinearExpr::LinearExpr(v26, v14, v16);
  operations_research::sat::CumulativeConstraint::AddDemand(a3, OptionalClosedInterval, v25, v26);
  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  if (v26[0])
  {
    v26[1] = v26[0];
    operator delete(v26[0]);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_23C94A848(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::locale a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  operations_research::sat::LinearExpr::~LinearExpr(&a9);
  if (*(v28 - 89) < 0)
  {
    operator delete(*(v28 - 112));
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  _Unwind_Resume(a1);
}

void ORToolsCpMemCacheAllocator::CreateLayerScheduleVariable(ORToolsCpMemCacheAllocator *this, unint64_t a2, const operations_research::Domain *a3)
{
  v4 = a2;
  v42 = a2;
  v41[0] = 0;
  v41[16] = 0;
  DramTensor = CpMemCacheAllocGraph::GetDramTensor(*this, a2, 0);
  v40 = v6;
  if (v6)
  {
    v7 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>>>::find<unsigned long long>(this + 8, &DramTensor);
    if (!v7)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    std::optional<std::shared_ptr<ORToolsTensorMemCacheAllocationVariable>>::operator=[abi:ne200100]<std::shared_ptr<ORToolsTensorMemCacheAllocationVariable>&,void>(v41, v7 + 3);
    v4 = v42;
  }

  v38[0] = 0;
  v38[16] = 0;
  v36 = CpMemCacheAllocGraph::GetDramTensor(*this, v4, 1);
  v37 = v8;
  if (v8)
  {
    v9 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>>>::find<unsigned long long>(this + 8, &v36);
    if (!v9)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    std::optional<std::shared_ptr<ORToolsTensorMemCacheAllocationVariable>>::operator=[abi:ne200100]<std::shared_ptr<ORToolsTensorMemCacheAllocationVariable>&,void>(v38, v9 + 3);
  }

  v35[0] = 0;
  v35[16] = 0;
  v33 = CpMemCacheAllocGraph::GetDramTensor(*this, v42, 2);
  v34 = v10;
  if (v10)
  {
    v11 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>>>::find<unsigned long long>(this + 8, &v33);
    if (!v11)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    std::optional<std::shared_ptr<ORToolsTensorMemCacheAllocationVariable>>::operator=[abi:ne200100]<std::shared_ptr<ORToolsTensorMemCacheAllocationVariable>&,void>(v35, v11 + 3);
  }

  v32[0] = 0;
  v32[16] = 0;
  v30 = CpMemCacheAllocGraph::GetDramTensor(*this, v42, 3);
  v31 = v12;
  if (v12)
  {
    v13 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>>>::find<unsigned long long>(this + 8, &v30);
    if (!v13)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    std::optional<std::shared_ptr<ORToolsTensorMemCacheAllocationVariable>>::operator=[abi:ne200100]<std::shared_ptr<ORToolsTensorMemCacheAllocationVariable>&,void>(v32, v13 + 3);
  }

  memset(&__p, 0, sizeof(__p));
  v28 = 0x7FFFFFFFFFFFFFFFLL;
  CpGraph::GetLayerName(*this, v42, &__p);
  CpGraph::GetLayerSchedule(*this, v42, &v28);
  if (*(this + 35))
  {
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(this + 19, "[ layer_to_var_map_ ] : layer id : ", 35);
    v15 = MEMORY[0x23EED91C0](v14, v42);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " --> Name: ", 11);
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

    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, p_p, size);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, ", latency min: ", 15);
    v21 = operations_research::Domain::Min(a3);
    v22 = MEMORY[0x23EED91B0](v20, v21);
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ", latency max: ", 15);
    v24 = operations_research::Domain::Max(a3);
    v25 = MEMORY[0x23EED91B0](v23, v24);
    std::ios_base::getloc((v25 + *(*v25 - 24)));
    v26 = std::locale::use_facet(&v43, MEMORY[0x277D82680]);
    (v26->__vftable[2].~facet_0)(v26, 10);
    std::locale::~locale(&v43);
    std::ostream::put();
    std::ostream::flush();
  }

  v27 = *(this + 1);
  operator new();
}

void sub_23C94AC9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ORToolsMemCacheLayerScheduleVariable *a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27, char a28)
{
  std::unique_ptr<ORToolsMemCacheLayerScheduleVariable>::reset[abi:ne200100](&a11, 0);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a23 == 1 && a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  if (a28 == 1 && a27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a27);
  }

  if (*(v28 - 104) == 1)
  {
    v30 = *(v28 - 112);
    if (v30)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    }
  }

  if (*(v28 - 64) == 1)
  {
    v31 = *(v28 - 72);
    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    }
  }

  _Unwind_Resume(a1);
}

void ORToolsCpMemCacheAllocator::SetObjectiveFunction(CpGraph **this)
{
  v42 = 0;
  v43 = 0;
  v44 = 0;
  __src = 0;
  v40 = 0;
  v41 = 0;
  CpGraph::GetLayers(*this, 1, &v34);
  v2 = v34;
  v3 = __p;
  if (v34 != __p)
  {
    do
    {
      v38 = *v2;
      if (CpMemCacheAllocGraph::IsDramAccessingEngineLayer(*this, v38))
      {
        v31[0] = &v38;
        v4 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsMemCacheLayerScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsMemCacheLayerScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsMemCacheLayerScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsMemCacheLayerScheduleVariable>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 13, &v38)[3];
        v5 = v43;
        if (v43 >= v44)
        {
          v7 = (v43 - v42) >> 4;
          v8 = v7 + 1;
          if ((v7 + 1) >> 60)
          {
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          v9 = v44 - v42;
          if ((v44 - v42) >> 3 > v8)
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
            std::__allocate_at_least[abi:ne200100]<std::allocator<operations_research::sat::BoolVar>>(&v42, v10);
          }

          v11 = (16 * v7);
          *v11 = *v4;
          v6 = 16 * v7 + 16;
          v12 = v11 - (v43 - v42);
          memcpy(v12, v42, v43 - v42);
          v13 = v42;
          v42 = v12;
          v43 = v6;
          v44 = 0;
          if (v13)
          {
            operator delete(v13);
          }
        }

        else
        {
          *v43 = *v4;
          v6 = (v5 + 16);
        }

        v43 = v6;
        v14 = v40;
        if (v40 >= v41)
        {
          v16 = __src;
          v17 = v40 - __src;
          v18 = (v40 - __src) >> 3;
          v19 = v18 + 1;
          if ((v18 + 1) >> 61)
          {
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          v20 = v41 - __src;
          if ((v41 - __src) >> 2 > v19)
          {
            v19 = v20 >> 2;
          }

          v21 = v20 >= 0x7FFFFFFFFFFFFFF8;
          v22 = 0x1FFFFFFFFFFFFFFFLL;
          if (!v21)
          {
            v22 = v19;
          }

          if (v22)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(&__src, v22);
          }

          *(8 * v18) = 1;
          v15 = 8 * v18 + 8;
          memcpy(0, v16, v17);
          v23 = __src;
          __src = 0;
          v40 = v15;
          v41 = 0;
          if (v23)
          {
            operator delete(v23);
          }
        }

        else
        {
          *v40 = 1;
          v15 = (v14 + 8);
        }

        v40 = v15;
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = v34;
  }

  if (v2)
  {
    __p = v2;
    operator delete(v2);
  }

  RegionMaxCycle = ORToolsCpMemCacheAllocator::GetRegionMaxCycle(this);
  v25 = this[1];
  operations_research::Domain::Domain(&v34, 0, RegionMaxCycle);
  v26 = operations_research::sat::CpModelBuilder::NewIntVar(v25, &v34);
  v28 = v27;
  if (v34)
  {
    operator delete(__p);
  }

  v29 = this[1];
  operations_research::sat::LinearExpr::LinearExpr(&v34, v26, v28);
  operations_research::sat::LinearExpr::WeightedSum(v42, (v43 - v42) >> 4, (v40 - __src) >> 3, v31);
  v38 = operations_research::sat::CpModelBuilder::AddEquality(v29, &v34, v31);
  operations_research::sat::Constraint::WithName(&v38, "objective_func", 0xEuLL);
  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  if (v31[0])
  {
    v31[1] = v31[0];
    operator delete(v31[0]);
  }

  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }

  if (v34)
  {
    __p = v34;
    operator delete(v34);
  }

  v30 = this[1];
  operations_research::sat::LinearExpr::LinearExpr(&v34, v26, v28);
  operations_research::sat::CpModelBuilder::Minimize(v30, &v34);
  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }

  if (v34)
  {
    __p = v34;
    operator delete(v34);
  }

  if (__src)
  {
    v40 = __src;
    operator delete(__src);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }
}

void sub_23C94B0F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  operations_research::sat::LinearExpr::~LinearExpr(&a17);
  if (__p)
  {
    a26 = __p;
    operator delete(__p);
  }

  v28 = *(v26 - 120);
  if (v28)
  {
    *(v26 - 112) = v28;
    operator delete(v28);
  }

  _Unwind_Resume(a1);
}

uint64_t ORToolsCpMemCacheAllocator::GetRegionMaxCycle(CpGraph **this)
{
  CpGraph::GetLayers(*this, 1, &__p);
  v2 = __p;
  v3 = v9;
  if (__p == v9)
  {
    v4 = 0;
    if (!__p)
    {
      return v4;
    }

    goto LABEL_7;
  }

  v4 = 0;
  do
  {
    v5 = *v2;
    if (CpMemCacheAllocGraph::IsDramAccessingEngineLayer(*this, *v2))
    {
      LayerLatencyInfo = CpMemCacheAllocGraph::GetLayerLatencyInfo(*this, v5);
      v4 += MemCacheLayerLatencyInfo::GetMaxLatency(LayerLatencyInfo);
    }

    ++v2;
  }

  while (v2 != v3);
  v2 = __p;
  if (__p)
  {
LABEL_7:
    v9 = v2;
    operator delete(v2);
  }

  return v4;
}

void sub_23C94B23C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ORToolsCpMemCacheAllocator::UpdateAllocationDecisionMap(ORToolsCpMemCacheAllocator *this, const operations_research::sat::CpSolverResponse *a2)
{
  v4 = *(a2 + 66);
  if (v4 == 2)
  {
    v5 = (this + 64);
    ORToolsCpMemCacheAllocatorUtil::PrintSolverResult(this + 19, *this, this + 64, this + 13, a2);
  }

  else
  {
    v5 = (this + 64);
    ORToolsCpMemCacheAllocatorUtil::PrintSolverResult(this + 19, *this, this + 64, this + 13, a2);
    if (v4 != 4)
    {
      return 0;
    }
  }

  CpGraph::GetTensors(*this, &__p);
  v6 = __p;
  v7 = v13;
  v8 = 1;
  if (__p != v13)
  {
    while (1)
    {
      v11 = *v6;
      if (CpMemCacheAllocGraph::IsDramTensor(*this, v11))
      {
        if (std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsLayerScheduleVariable>>>>::find<unsigned long long>(this + 2, &v11))
        {
          v8 = 0;
          break;
        }

        v14 = &v11;
        v9 = std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<ORToolsTensorMemCacheAllocationVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<ORToolsTensorMemCacheAllocationVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<ORToolsTensorMemCacheAllocationVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<ORToolsTensorMemCacheAllocationVariable>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v5, &v11);
        if (operations_research::sat::SolutionBooleanValue(a2, *v9[3], *(v9[3] + 8)))
        {
          v14 = &v11;
          *(std::__hash_table<std::__hash_value_type<unsigned long long,CpAllocUtils::MemCacheAllocationType>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::MemCacheAllocationType>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::MemCacheAllocationType>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpAllocUtils::MemCacheAllocationType>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 2, &v11) + 6) = 0;
        }

        else
        {
          v14 = &v11;
          *(std::__hash_table<std::__hash_value_type<unsigned long long,CpAllocUtils::MemCacheAllocationType>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::MemCacheAllocationType>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::MemCacheAllocationType>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpAllocUtils::MemCacheAllocationType>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 2, &v11) + 6) = 1;
        }
      }

      if (++v6 == v7)
      {
        v8 = 1;
        break;
      }
    }
  }

  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  return v8;
}

void sub_23C94B3DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::shared_ptr<ORToolsTensorMemCacheAllocationVariable>::operator=[abi:ne200100]<ORToolsTensorMemCacheAllocationVariable,std::default_delete<ORToolsTensorMemCacheAllocationVariable>,0>(void *a1, uint64_t *a2)
{
  std::shared_ptr<ORToolsTensorMemCacheAllocationVariable>::shared_ptr[abi:ne200100]<ORToolsTensorMemCacheAllocationVariable,std::default_delete<ORToolsTensorMemCacheAllocationVariable>,0>(&v6, a2);
  v3 = a1[1];
  v4 = v6;
  *&v6 = *a1;
  *(&v6 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

ORToolsCpL2AccessVariable **std::unique_ptr<ORToolsTensorMemCacheAllocationVariable>::~unique_ptr[abi:ne200100](ORToolsCpL2AccessVariable **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    ORToolsCpL2AccessVariable::~ORToolsCpL2AccessVariable(v2);
    MEMORY[0x23EED9460]();
  }

  return a1;
}

uint64_t std::optional<std::shared_ptr<ORToolsTensorMemCacheAllocationVariable>>::operator=[abi:ne200100]<std::shared_ptr<ORToolsTensorMemCacheAllocationVariable>&,void>(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (*(a1 + 16) == 1)
  {
    v4 = a2[1];
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    v5 = *(a1 + 8);
    *a1 = v3;
    *(a1 + 8) = v4;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  else
  {
    v6 = a2[1];
    *a1 = v3;
    *(a1 + 8) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 16) = 1;
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<ORToolsTensorMemCacheAllocationVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<ORToolsTensorMemCacheAllocationVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<ORToolsTensorMemCacheAllocationVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<ORToolsTensorMemCacheAllocationVariable>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<ORToolsTensorMemCacheAllocationVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<ORToolsTensorMemCacheAllocationVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<ORToolsTensorMemCacheAllocationVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<ORToolsTensorMemCacheAllocationVariable>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<ORToolsTensorMemCacheAllocationVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<ORToolsTensorMemCacheAllocationVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<ORToolsTensorMemCacheAllocationVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<ORToolsTensorMemCacheAllocationVariable>>>>::__deallocate_node(int a1, void *__p)
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

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsMemCacheLayerScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsMemCacheLayerScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsMemCacheLayerScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsMemCacheLayerScheduleVariable>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsMemCacheLayerScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsMemCacheLayerScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsMemCacheLayerScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsMemCacheLayerScheduleVariable>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsMemCacheLayerScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsMemCacheLayerScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsMemCacheLayerScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsMemCacheLayerScheduleVariable>>>>::__deallocate_node(uint64_t a1, ORToolsMemCacheLayerScheduleVariable **a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::unique_ptr<ORToolsMemCacheLayerScheduleVariable>::reset[abi:ne200100](v2 + 3, 0);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsMemCacheLayerScheduleVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsMemCacheLayerScheduleVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsMemCacheLayerScheduleVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsMemCacheLayerScheduleVariable>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
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

void sub_23C94B860(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsMemCacheLayerScheduleVariable>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsMemCacheLayerScheduleVariable>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsMemCacheLayerScheduleVariable>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::unique_ptr<ORToolsMemCacheLayerScheduleVariable>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::unique_ptr<ORToolsMemCacheLayerScheduleVariable>::reset[abi:ne200100](v2 + 3, 0);
    }

    operator delete(v2);
  }

  return a1;
}

ORToolsMemCacheLayerScheduleVariable *std::unique_ptr<ORToolsMemCacheLayerScheduleVariable>::reset[abi:ne200100](ORToolsMemCacheLayerScheduleVariable **a1, ORToolsMemCacheLayerScheduleVariable *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    ORToolsMemCacheLayerScheduleVariable::~ORToolsMemCacheLayerScheduleVariable(result);

    JUMPOUT(0x23EED9460);
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<ORToolsTensorMemCacheAllocationVariable>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<ORToolsTensorMemCacheAllocationVariable>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<ORToolsTensorMemCacheAllocationVariable>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<ORToolsTensorMemCacheAllocationVariable>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
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

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::shared_ptr<ORToolsTensorMemCacheAllocationVariable>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[4];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t *std::shared_ptr<ORToolsTensorMemCacheAllocationVariable>::shared_ptr[abi:ne200100]<ORToolsTensorMemCacheAllocationVariable,std::default_delete<ORToolsTensorMemCacheAllocationVariable>,0>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2)
  {
    operator new();
  }

  result[1] = 0;
  *a2 = 0;
  return result;
}

void std::__shared_ptr_pointer<ORToolsTensorMemCacheAllocationVariable  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EED9460);
}

ORToolsCpL2AccessVariable *std::__shared_ptr_pointer<ORToolsTensorMemCacheAllocationVariable  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    ORToolsCpL2AccessVariable::~ORToolsCpL2AccessVariable(result);

    JUMPOUT(0x23EED9460);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ORToolsTensorMemCacheAllocationVariable  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,CpAllocUtils::MemCacheAllocationType>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::MemCacheAllocationType>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::MemCacheAllocationType>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpAllocUtils::MemCacheAllocationType>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
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

uint64_t L2CycleEstimator::GetMaxCycle(L2CycleEstimator *this, char a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = *(this + 12);
  v19[0] = *this;
  v19[1] = v4;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v16, v19, &v20, 2uLL);
  if ((a2 & 1) == 0)
  {
    std::vector<long long>::push_back[abi:ne200100](&v16, this + 2);
    std::vector<long long>::push_back[abi:ne200100](&v16, this + 4);
    std::vector<long long>::push_back[abi:ne200100](&v16, this + 6);
    std::vector<long long>::push_back[abi:ne200100](&v16, this + 8);
    std::vector<long long>::push_back[abi:ne200100](&v16, this + 10);
  }

  v5 = v16 + 8;
  v6 = v16 == v17 || v5 == v17;
  v7 = v16;
  if (!v6)
  {
    v8 = *v16;
    v7 = v16;
    v9 = v16 + 8;
    do
    {
      v11 = *v9;
      v9 += 8;
      v10 = v11;
      v12 = v8 >= v11;
      if (v8 <= v11)
      {
        v8 = v10;
      }

      if (!v12)
      {
        v7 = v5;
      }

      v5 = v9;
    }

    while (v9 != v17);
  }

  v13 = *v7;
  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t absl::lts_20240722::base_internal::SpinLock::SpinLoop(absl::lts_20240722::base_internal::SpinLock *this)
{
  if (atomic_load_explicit(&_MergedGlobals_33, memory_order_acquire) != 221)
  {
    v4 = this;
    absl::lts_20240722::base_internal::CallOnceImpl<absl::lts_20240722::base_internal::SpinLock::SpinLoop(void)::$_0>(&_MergedGlobals_33);
    this = v4;
  }

  v1 = dword_2810C1014;
  do
  {
    v2 = __OFSUB__(v1--, 1);
  }

  while ((*this & 1) != 0 && !((v1 < 0) ^ v2 | (v1 == 0)));
  return *this;
}

void absl::lts_20240722::base_internal::CallOnceImpl<absl::lts_20240722::base_internal::SpinLock::SpinLoop(void)::$_0>(atomic_uint *a1)
{
  v1 = a1;
  v2 = 0;
  atomic_compare_exchange_strong_explicit(a1, &v2, 0x65C2937Bu, memory_order_relaxed, memory_order_relaxed);
  if (!v2 || (a1 = absl::lts_20240722::base_internal::SpinLockWait(a1, 3u, &absl::lts_20240722::base_internal::CallOnceImpl<absl::lts_20240722::base_internal::SpinLock::SpinLoop(void)::$_0>(std::atomic<unsigned int> *,absl::lts_20240722::base_internal::SchedulingMode,absl::lts_20240722::base_internal::SpinLock::SpinLoop(void)::$_0 &&)::trans), !a1))
  {
    v3 = absl::lts_20240722::base_internal::NumCPUs(a1) <= 1 ? 1 : 1000;
    dword_2810C1014 = v3;
    if (atomic_exchange_explicit(v1, 0xDDu, memory_order_release) == 94570706)
    {

      ORToolsCpL2AccessVariable::~ORToolsCpL2AccessVariable(v1);
    }
  }
}

uint64_t absl::lts_20240722::base_internal::NumCPUs(absl::lts_20240722::base_internal *this)
{
  if (atomic_load_explicit(&dword_2810C101C, memory_order_acquire) != 221)
  {
    absl::lts_20240722::base_internal::CallOnceImpl<absl::lts_20240722::base_internal::NumCPUs(void)::$_0>(&dword_2810C101C);
  }

  return _MergedGlobals_34;
}

uint64_t absl::lts_20240722::base_internal::GetCachedTID(absl::lts_20240722::base_internal *this)
{
  {
    return *absl::lts_20240722::base_internal::GetCachedTID(void)::thread_id();
  }

  v6 = 0;
  pthread_threadid_np(0, &v6);
  v3 = absl::lts_20240722::base_internal::GetCachedTID(void)::thread_id();
  *v3 = v4;
  return *v5;
}

void absl::lts_20240722::base_internal::CallOnceImpl<absl::lts_20240722::base_internal::NumCPUs(void)::$_0>(atomic_uint *a1)
{
  v2 = 0;
  atomic_compare_exchange_strong_explicit(a1, &v2, 0x65C2937Bu, memory_order_relaxed, memory_order_relaxed);
  if (!v2 || !absl::lts_20240722::base_internal::SpinLockWait(a1, 3u, &absl::lts_20240722::base_internal::CallOnceImpl<absl::lts_20240722::base_internal::NumCPUs(void)::$_0>(std::atomic<unsigned int> *,absl::lts_20240722::base_internal::SchedulingMode,absl::lts_20240722::base_internal::NumCPUs(void)::$_0 &&)::trans))
  {
    _MergedGlobals_34 = std::thread::hardware_concurrency();
    if (atomic_exchange_explicit(a1, 0xDDu, memory_order_release) == 94570706)
    {

      ORToolsCpL2AccessVariable::~ORToolsCpL2AccessVariable(a1);
    }
  }
}

void *absl::lts_20240722::base_internal::SetCurrentThreadIdentity(uint64_t a1)
{
  {
    absl::lts_20240722::base_internal::SetCurrentThreadIdentity();
  }

  result = absl::lts_20240722::base_internal::thread_identity_ptr();
  *result = a1;
  return result;
}

uint64_t *std::unique_ptr<absl::lts_20240722::base_internal::ThreadIdentity,void (*)(void *)>::~unique_ptr[abi:ne200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    (result[1])(v1);
    return v2;
  }

  return result;
}

void *absl::lts_20240722::base_internal::ClearCurrentThreadIdentity(absl::lts_20240722::base_internal *this)
{
  result = absl::lts_20240722::base_internal::thread_identity_ptr();
  *result = 0;
  return result;
}

void absl::lts_20240722::Cord::InlineRep::AppendTree(uint64_t *result, uint64_t a2, unsigned int a3)
{
  if (*result)
  {
    absl::lts_20240722::Cord::InlineRep::AppendTreeToTree(result, a2, a3);
  }

  else
  {
    absl::lts_20240722::Cord::InlineRep::AppendTreeToInlined(result, a2);
  }
}

uint64_t *absl::lts_20240722::Cord::InlineRep::AppendTreeToInlined(uint64_t *result, uint64_t a2)
{
  v3 = result;
  v4 = *result;
  if (*result)
  {
    v5 = v4 >> 1;
    v6 = 4083;
    if (v4 >> 1 < 0xFF3)
    {
      v6 = v4 >> 1;
    }

    v7 = v6 + 13;
    v8 = v4 >= 0x28;
    v9 = 32;
    if (v8)
    {
      v9 = v7;
    }

    v10 = -64;
    if (v9 < 0x201)
    {
      v10 = -8;
    }

    v11 = 64;
    if (v9 < 0x201)
    {
      v11 = 8;
    }

    v12 = (v9 + v11 - 1) & v10;
    v13 = operator new(v12);
    *(v13 + 2) = 2;
    v14 = 6;
    if (v12 < 0x201)
    {
      v14 = 3;
    }

    v15 = 58;
    if (v12 < 0x201)
    {
      v15 = 2;
    }

    v16 = (v12 >> v14) + v15;
    v13[12] = v16;
    *v13 = v5;
    *(v13 + 13) = *(v3 + 1);
    *(v13 + 20) = v3[1];
    if (v16 > 4u || v16 == 1 && *(*(v13 + 3) + 12) >= 5u)
    {
      operator new();
    }

    Slow = absl::lts_20240722::cord_internal::CordRepBtree::CreateSlow(v13);
    v18 = *(a2 + 12);
    if (v18 > 4 || v18 == 1 && *(*(a2 + 24) + 12) >= 5u)
    {
      result = absl::lts_20240722::cord_internal::CordRepBtree::AddCordRep<(absl::lts_20240722::cord_internal::CordRepBtree::EdgeType)1>(Slow, a2);
    }

    else
    {
      result = absl::lts_20240722::cord_internal::CordRepBtree::AppendSlow(Slow, a2);
    }

    a2 = result;
  }

  *v3 = 1;
  v3[1] = a2;
  return result;
}

void absl::lts_20240722::Cord::InlineRep::AppendTreeToTree(void *a1, uint64_t a2, unsigned int a3)
{
  v5 = (*a1 - 1);
  if (*a1 != 1)
  {
    absl::lts_20240722::cord_internal::CordzInfo::Lock(v5, a3);
  }

  v6 = absl::lts_20240722::ForceBtree(a1[1], a2);
  v7 = *(a2 + 12);
  if (v7 > 4 || v7 == 1 && *(*(a2 + 24) + 12) >= 5u)
  {
    appended = absl::lts_20240722::cord_internal::CordRepBtree::AddCordRep<(absl::lts_20240722::cord_internal::CordRepBtree::EdgeType)1>(v6, a2);
  }

  else
  {
    appended = absl::lts_20240722::cord_internal::CordRepBtree::AppendSlow(v6, a2);
  }

  a1[1] = appended;
  if (v5)
  {
    *(v5 + 8) = appended;
    absl::lts_20240722::cord_internal::CordzInfo::Unlock(v5);
  }
}

void sub_23C94C69C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::cord_internal::CordzUpdateScope::~CordzUpdateScope(va);
  _Unwind_Resume(a1);
}

uint64_t absl::lts_20240722::ForceBtree(uint64_t result, absl::lts_20240722::cord_internal::CordRepBtree *a2)
{
  v2 = *(result + 12);
  if (v2 != 3)
  {
    if (v2 == 2)
    {
      v3 = *(result + 16);
      if (atomic_load_explicit((result + 8), memory_order_acquire) == 2)
      {
        v5 = result;
        absl::lts_20240722::crc_internal::CrcCordState::~CrcCordState((result + 24));
        MEMORY[0x23EED9460](v5, 0x1020C40AB73632BLL);
      }

      else
      {
        atomic_fetch_add_explicit((v3 + 8), 2u, memory_order_relaxed);
        if (atomic_fetch_add((result + 8), 0xFFFFFFFE) == 2)
        {
          absl::lts_20240722::cord_internal::CordRep::Destroy(result, a2);
        }
      }
    }

    else
    {
      v3 = result;
    }

    v4 = *(v3 + 12);
    if (v4 > 4 || v4 == 1 && *(*(v3 + 24) + 12) >= 5u)
    {
      operator new();
    }

    return absl::lts_20240722::cord_internal::CordRepBtree::CreateSlow(v3);
  }

  return result;
}

void absl::lts_20240722::cord_internal::CordzUpdateScope::~CordzUpdateScope(absl::lts_20240722::cord_internal::CordzInfo **this)
{
  v1 = *this;
  if (v1)
  {
    absl::lts_20240722::cord_internal::CordzInfo::Unlock(v1);
  }
}

void absl::lts_20240722::Cord::InlineRep::AssignSlow(void *a1, absl::lts_20240722::cord_internal::CordRepBtree *a2)
{
  if (*a1)
  {
    absl::lts_20240722::Cord::InlineRep::AssignSlow(a1, a2);
  }

  else
  {
    v3 = *(a2 + 1);
    atomic_fetch_add_explicit((v3 + 8), 2u, memory_order_relaxed);
    *a1 = 1;
    a1[1] = v3;
    if (*a2 >= 2uLL)
    {

      absl::lts_20240722::cord_internal::CordzInfo::MaybeTrackCordImpl(a1, a2);
    }
  }
}

{
  v4 = a1[1];
  if ((*a2 & 1) != 0 && (v5 = *(a2 + 1)) != 0)
  {
    atomic_fetch_add_explicit((v5 + 8), 2u, memory_order_relaxed);
    a1[1] = v5;
    if ((*a2 | *a1) != 1)
    {
      absl::lts_20240722::cord_internal::CordzInfo::MaybeTrackCordImpl(a1, a2);
    }
  }

  else
  {
    v6 = (*a1 - 1);
    if (*a1 != 1)
    {
      absl::lts_20240722::cord_internal::CordzInfo::Untrack(v6);
    }

    *a1 = *a2;
  }

  if (atomic_fetch_add((v4 + 8), 0xFFFFFFFE) == 2)
  {

    absl::lts_20240722::cord_internal::CordRep::Destroy(v4, a2);
  }
}

void *absl::lts_20240722::NewTree(absl::lts_20240722 *this, const char *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0xFF3)
  {
    v14 = operator new(0x1000uLL);
    *v14 = xmmword_23CE30C20;
    memcpy(v14 + 13, this, 0xFF3uLL);
    operator new();
  }

  v3 = (a2 + 13);
  if (a2 < 0x14)
  {
    v3 = 32;
  }

  v4 = -64;
  if (v3 < 0x201)
  {
    v4 = -8;
  }

  v5 = 64;
  if (v3 < 0x201)
  {
    v5 = 8;
  }

  v6 = (v3 + v5 - 1) & v4;
  v8 = operator new(v6);
  v9 = v8;
  v10 = 6;
  if (v6 < 0x201)
  {
    v10 = 3;
  }

  v11 = v6 >> v10;
  if (v6 >= 0x201)
  {
    v12 = 58;
  }

  else
  {
    v12 = 2;
  }

  *v8 = a2;
  v8[1] = 2;
  *(v8 + 12) = v11 + v12;
  memcpy(v8 + 13, this, a2);
  return v9;
}

uint64_t absl::lts_20240722::Cord::Cord(uint64_t result, absl::lts_20240722 *this, char *a3)
{
  if (a3 > 0xF)
  {
    v6 = result;
    v7 = absl::lts_20240722::NewTree(this, a3);
    result = v6;
    *v6 = 1;
    v6[1] = v7;
  }

  else
  {
    *result = 2 * a3;
    v3 = result + 1;
    if (a3 < 8)
    {
      if (a3 < 4)
      {
        if (a3)
        {
          *(result + 1) = *this;
          *(v3 + (a3 >> 1)) = *(this + (a3 >> 1));
          a3[result] = a3[this - 1];
        }

        *(result + 8) = 0;
        *&a3[v3] = 0;
      }

      else
      {
        v8 = *this;
        v9 = *&a3[this - 4];
        *(result + 5) = 0;
        *(result + 8) = 0;
        *(result + 1) = v8;
        *&a3[v3 - 4] = v9;
      }
    }

    else
    {
      v4 = *this;
      v5 = *&a3[this - 8];
      *(result + 8) = 0;
      *(result + 1) = v4;
      *&a3[v3 - 8] = v5;
    }
  }

  return result;
}

void absl::lts_20240722::Cord::DestroyCordSlow(absl::lts_20240722::Cord *this, absl::lts_20240722::cord_internal::CordRepBtree *a2)
{
  if (*this == 1)
  {
    v2 = *(this + 1);
    if (atomic_fetch_add((v2 + 8), 0xFFFFFFFE) != 2)
    {
      return;
    }
  }

  else
  {
    absl::lts_20240722::cord_internal::CordzInfo::Untrack((*this - 1));
    v2 = *(this + 1);
    if (atomic_fetch_add((v2 + 8), 0xFFFFFFFE) != 2)
    {
      return;
    }
  }

  absl::lts_20240722::cord_internal::CordRep::Destroy(v2, a2);
}

void absl::lts_20240722::Cord::Clear(absl::lts_20240722::Cord *this, absl::lts_20240722::cord_internal::CordRepBtree *a2)
{
  if (*this & 1) != 0 && (*this == 1 || (v3 = this, absl::lts_20240722::cord_internal::CordzInfo::Untrack((*this - 1)), this = v3, (*v3)))
  {
    v2 = *(this + 1);
    *this = 0;
    *(this + 1) = 0;
    if (v2 && atomic_fetch_add((v2 + 8), 0xFFFFFFFE) == 2)
    {

      absl::lts_20240722::cord_internal::CordRep::Destroy(v2, a2);
    }
  }

  else
  {
    *this = 0;
    *(this + 1) = 0;
  }
}

uint64_t absl::lts_20240722::Cord::operator=(uint64_t result, absl::lts_20240722 *this, unint64_t a3)
{
  v3 = result;
  if ((*result & 1) == 0)
  {
    if (a3 >= 0x10)
    {
      goto LABEL_31;
    }

    goto LABEL_10;
  }

  v4 = *(result + 8);
  if (a3 >= 0x10)
  {
    if (!v4)
    {
LABEL_31:
      v21 = absl::lts_20240722::NewTree(this, a3);
      *v3 = 1;
      *(v3 + 8) = v21;
      return v3;
    }

    v12 = *result - 1;
    v32 = (*v3 - 1);
    if (*v3 == 1)
    {
      v13 = *(v4 + 12);
      if (v13 < 6)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v31 = this;
      v27 = a3;
      absl::lts_20240722::cord_internal::CordzInfo::Lock(v12, 6u);
      this = v31;
      a3 = v27;
      v13 = *(v4 + 12);
      if (v13 < 6)
      {
        goto LABEL_46;
      }
    }

    if (v13 >= 0xBB)
    {
      v14 = 12;
    }

    else
    {
      v14 = 6;
    }

    if (v13 >= 0xBB)
    {
      v15 = -753677;
    }

    else
    {
      v15 = -3725;
    }

    v16 = v13 >= 0x43;
    if (v13 < 0x43)
    {
      v14 = 3;
    }

    v17 = v13 << v14;
    if (v16)
    {
      v18 = v15;
    }

    else
    {
      v18 = -29;
    }

    if (a3 <= (v17 + v18) && atomic_load_explicit((v4 + 8), memory_order_acquire) == 2)
    {
      v19 = a3;
      memmove((v4 + 13), this, a3);
      *v4 = v19;
      v20 = v32;
      if (!v32)
      {
        return v3;
      }

LABEL_30:
      absl::lts_20240722::cord_internal::CordzInfo::Unlock(v20);
      return v3;
    }

LABEL_46:
    v28 = absl::lts_20240722::NewTree(this, a3);
    *(v3 + 8) = v28;
    if (v32)
    {
      *(v32 + 8) = v28;
      if (atomic_fetch_add((v4 + 8), 0xFFFFFFFE) != 2)
      {
        goto LABEL_48;
      }
    }

    else if (atomic_fetch_add((v4 + 8), 0xFFFFFFFE) != 2)
    {
      goto LABEL_48;
    }

    absl::lts_20240722::cord_internal::CordRep::Destroy(v4, v29);
LABEL_48:
    v20 = v32;
    if (!v32)
    {
      return v3;
    }

    goto LABEL_30;
  }

  if (v4)
  {
    v5 = (*result - 1);
    if (*v3 == 1)
    {
      *v3 = 2 * a3;
      v6 = v3 + 1;
      if (a3 >= 8)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v30 = a3;
      v24 = this;
      absl::lts_20240722::cord_internal::CordzInfo::Untrack(v5);
      this = v24;
      a3 = v30;
      *v3 = 2 * v30;
      v6 = v3 + 1;
      if (v30 >= 8)
      {
LABEL_8:
        v7 = *this;
        v8 = *(this + a3 - 8);
        *(v3 + 8) = 0;
        *(v3 + 1) = v7;
        *(v6 + a3 - 8) = v8;
        if (atomic_fetch_add((v4 + 8), 0xFFFFFFFE) != 2)
        {
          return v3;
        }

        goto LABEL_44;
      }
    }

    if (a3 < 4)
    {
      if (a3)
      {
        *(v3 + 1) = *this;
        *(v6 + (a3 >> 1)) = *(this + (a3 >> 1));
        *(v3 + a3) = *(this + a3 - 1);
      }

      *(v3 + 8) = 0;
      *(v6 + a3) = 0;
      if (atomic_fetch_add((v4 + 8), 0xFFFFFFFE) != 2)
      {
        return v3;
      }
    }

    else
    {
      v25 = *this;
      v26 = *(this + a3 - 4);
      *(v3 + 5) = 0;
      *(v3 + 8) = 0;
      *(v3 + 1) = v25;
      *(v6 + a3 - 4) = v26;
      if (atomic_fetch_add((v4 + 8), 0xFFFFFFFE) != 2)
      {
        return v3;
      }
    }

LABEL_44:
    absl::lts_20240722::cord_internal::CordRep::Destroy(v4, this);
    return v3;
  }

LABEL_10:
  *result = 2 * a3;
  v9 = result + 1;
  if (a3 >= 8)
  {
    v10 = *this;
    v11 = *(this + a3 - 8);
    *(result + 8) = 0;
    *(result + 1) = v10;
    *(v9 + a3 - 8) = v11;
    return v3;
  }

  if (a3 < 4)
  {
    if (a3)
    {
      *(result + 1) = *this;
      *(v9 + (a3 >> 1)) = *(this + (a3 >> 1));
      *(result + a3) = *(this + a3 - 1);
    }

    *(result + 8) = 0;
    *(v9 + a3) = 0;
  }

  else
  {
    v22 = *this;
    v23 = *(this + a3 - 4);
    *(result + 5) = 0;
    *(result + 8) = 0;
    *(result + 1) = v22;
    *(v9 + a3 - 4) = v23;
  }

  return result;
}

void sub_23C94CF40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::cord_internal::CordzUpdateScope::~CordzUpdateScope(va);
  _Unwind_Resume(a1);
}

void absl::lts_20240722::Cord::InlineRep::AppendArray(void *a1, void *__src, unint64_t a3, unsigned int a4)
{
  if (a3)
  {
    v7 = *a1;
    if (*a1)
    {
      v8 = a1[1];
      if (v8 && !*v8)
      {
        absl::lts_20240722::Cord::InlineRep::AppendArray(a1);
        v7 = 0;
      }

      else
      {
        v9 = a1[1];
        if (v9)
        {
          v10 = *a1 - 1;
          v47 = (*a1 - 1);
          if (*a1 == 1)
          {
            if (*(v9 + 12) != 2)
            {
LABEL_8:
              v11 = v9;
              goto LABEL_9;
            }
          }

          else
          {
            absl::lts_20240722::cord_internal::CordzInfo::Lock(v10, a4);
            if (*(v9 + 12) != 2)
            {
              goto LABEL_8;
            }
          }

          v11 = *(v9 + 16);
          if (atomic_load_explicit((v9 + 8), memory_order_acquire) == 2)
          {
            absl::lts_20240722::crc_internal::CrcCordState::~CrcCordState((v9 + 24));
            MEMORY[0x23EED9460](v9, 0x1020C40AB73632BLL);
          }

          else
          {
            atomic_fetch_add_explicit((v11 + 8), 2u, memory_order_relaxed);
            if (atomic_fetch_add((v9 + 8), 0xFFFFFFFE) == 2)
            {
              absl::lts_20240722::cord_internal::CordRep::Destroy(v9, v8);
            }
          }

LABEL_9:
          v12 = *(v11 + 12);
          if (v12 == 3)
          {
            if (atomic_load_explicit((v11 + 8), memory_order_acquire) == 2)
            {
              AppendBuffer = absl::lts_20240722::cord_internal::CordRepBtree::GetAppendBuffer(v11, a3);
              v14 = v8;
              if (v8)
              {
                goto LABEL_32;
              }
            }

            v12 = *(v11 + 12);
          }

          if (v12 < 6 || atomic_load_explicit((v11 + 8), memory_order_acquire) != 2)
          {
            goto LABEL_27;
          }

          v15 = *v11;
          v16 = *(v11 + 12);
          if (v16 >= 0xBB)
          {
            v17 = 12;
          }

          else
          {
            v17 = 6;
          }

          if (v16 >= 0xBB)
          {
            v18 = -753677;
          }

          else
          {
            v18 = -3725;
          }

          v19 = v16 >= 0x43;
          if (v16 < 0x43)
          {
            v17 = 3;
          }

          v20 = v16 << v17;
          v21 = v19 ? v18 : -29;
          v22 = (v20 + v21) - v15;
          if (!v22)
          {
LABEL_27:
            v23 = 0;
            goto LABEL_67;
          }

          if (v22 >= a3)
          {
            v14 = a3;
          }

          else
          {
            v14 = v22;
          }

          *v11 = v14 + v15;
          AppendBuffer = (v11 + v15 + 13);
LABEL_32:
          memcpy(AppendBuffer, __src, v14);
          if (a3 == v14)
          {
            a1[1] = v11;
            goto LABEL_70;
          }

          v23 = 0;
LABEL_67:
          v45 = *absl::lts_20240722::ForceBtree(v11, v8) / 0xAuLL;
          v11 = absl::lts_20240722::cord_internal::CordRepBtree::Append();
          a1[1] = v11;
          if (v23)
          {
            goto LABEL_73;
          }

LABEL_70:
          v46 = v47;
          if (!v47)
          {
            return;
          }

          *(v47 + 8) = v11;
          goto LABEL_76;
        }
      }
    }

    v47 = 0;
    v24 = v7 >> 1;
    v25 = v24 + a3;
    if (a3 <= 15 - v24)
    {
      *a1 = 2 * v25;
      memcpy(a1 + v24 + 1, __src, a3);
      goto LABEL_74;
    }

    v26 = 4083;
    if (v25 < 0xFF3)
    {
      v26 = v24 + a3;
    }

    v27 = v26 + 13;
    v19 = v25 >= 0x14;
    v28 = 32;
    if (v19)
    {
      v28 = v27;
    }

    v29 = -64;
    if (v28 < 0x201)
    {
      v29 = -8;
    }

    v30 = 64;
    if (v28 < 0x201)
    {
      v30 = 8;
    }

    v31 = (v28 + v30 - 1) & v29;
    v32 = operator new(v31);
    v11 = v32;
    v32[1] = 0;
    v33 = 2;
    *(v32 + 2) = 2;
    if (v31 >= 0x201)
    {
      v34 = 6;
    }

    else
    {
      v34 = 3;
    }

    if (v31 >= 0x201)
    {
      v33 = 58;
    }

    v35 = (v31 >> v34) + v33;
    *(v32 + 12) = v35;
    if (v35 >= 0xBBu)
    {
      v36 = 12;
    }

    else
    {
      v36 = 6;
    }

    if (v35 >= 0xBBu)
    {
      v37 = -753677;
    }

    else
    {
      v37 = -3725;
    }

    v38 = v35 >= 0x43u;
    if (v35 < 0x43u)
    {
      v36 = 3;
    }

    v39 = v35 << v36;
    if (v38)
    {
      v40 = v37;
    }

    else
    {
      v40 = -29;
    }

    v41 = v39 + v40;
    v42 = v41 - v24;
    if (v41 - v24 >= a3)
    {
      v43 = a3;
    }

    else
    {
      v43 = v41 - v24;
    }

    v44 = v32 + 13;
    memcpy(v32 + 13, a1 + 1, v24);
    memcpy(&v44[v24], __src, v43);
    *v11 = v43 + v24;
    if (a3 <= v42)
    {
      a1[1] = v11;
LABEL_73:
      *a1 = 1;
LABEL_74:
      v46 = v47;
      if (!v47)
      {
        return;
      }

LABEL_76:
      absl::lts_20240722::cord_internal::CordzInfo::Unlock(v46);
      return;
    }

    v23 = 1;
    goto LABEL_67;
  }
}

void sub_23C94D300(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::cord_internal::CordzUpdateScope::~CordzUpdateScope(va);
  _Unwind_Resume(a1);
}

void sub_23C94D314(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::cord_internal::CordzUpdateScope::~CordzUpdateScope(va);
  _Unwind_Resume(a1);
}

void sub_23C94D328(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::cord_internal::CordzUpdateScope::~CordzUpdateScope(va);
  _Unwind_Resume(a1);
}

void sub_23C94D33C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::cord_internal::CordzUpdateScope::~CordzUpdateScope(va);
  _Unwind_Resume(a1);
}

void absl::lts_20240722::Cord::GetAppendBufferSlowPath(absl::lts_20240722::Cord *this@<X0>, absl::lts_20240722::cord_internal::CordRepBtree *a2@<X3>, unint64_t a3@<X1>, unint64_t a4@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v13 = *this;
  if ((v13 & 1) == 0 || (v14 = *(this + 1)) == 0)
  {
    v19 = v13 >> 1;
    if (__CFADD__(a4, v13 >> 1))
    {
      v20 = -1;
    }

    else
    {
      v20 = a4 + (v13 >> 1);
    }

    if (a3)
    {
      v21 = 0x10000;
      if (v20 >= 0x10000)
      {
        v22 = 0x10000;
      }

      else
      {
        v22 = v20;
      }

      if (a3 < 0x10000)
      {
        v21 = a3;
      }

      if (v22 + 13 < v21)
      {
        v21 = v22 + 13;
        if (v20 >= 0xFF4)
        {
          v21 = v20;
          if ((v22 & (v22 - 1)) != 0)
          {
            v21 = 1 << -__clz(v22 - 1);
            if (v21 - v22 - 13 >= 0x81)
            {
              v21 = 1 << (__clz(v22) ^ 0x3Fu);
            }
          }
        }
      }

      v23 = 262131;
      if (v21 - 13 < 0x3FFF3)
      {
        v23 = v21 - 13;
      }

      v24 = v23 + 13;
      v25 = 32;
      if (v21 - 13 >= 0x14)
      {
        v25 = v24;
      }

      v26 = 4096;
      if (v25 <= 0x2000)
      {
        v26 = 64;
      }

      if (v25 < 0x201)
      {
        v26 = 8;
      }

      v27 = (v25 + v26 - 1) & -v26;
      v28 = operator new(v27);
      v29 = 2;
      *(v28 + 1) = 2;
      v30 = 12;
      if (v27 <= 0x2000)
      {
        v30 = 6;
      }

      v31 = -72;
      if (v27 <= 0x2000)
      {
        v31 = 58;
      }

      v32 = v27 >= 0x201;
      if (v27 < 0x201)
      {
        v30 = 3;
      }
    }

    else
    {
      if (v20 < 0x10)
      {
        *a9 = 1;
        *(a9 + 1) = 0;
        *(a9 + 8) = 0;
        v37 = (a9 + 1);
        v38 = (this + 1);
        if (v13 < 0x10)
        {
          goto LABEL_59;
        }

        goto LABEL_57;
      }

      v33 = 4083;
      if (v20 < 0xFF3)
      {
        v33 = v20;
      }

      v34 = v33 + 13;
      if (v20 < 0x14)
      {
        v34 = 32;
      }

      v35 = -64;
      if (v34 < 0x201)
      {
        v35 = -8;
      }

      v36 = 64;
      if (v34 < 0x201)
      {
        v36 = 8;
      }

      v27 = (v34 + v36 - 1) & v35;
      v28 = operator new(v27);
      v29 = 2;
      *(v28 + 1) = 2;
      v32 = v27 >= 0x201;
      v30 = 6;
      if (v27 < 0x201)
      {
        v30 = 3;
      }

      v31 = 58;
    }

    if (v32)
    {
      v29 = v31;
    }

    v28[12] = (v27 >> v30) + v29;
    *v28 = 0;
    *a9 = v28;
    if (v28)
    {
      v37 = (a9 + 1);
      v38 = (this + 1);
      if (v13 < 0x10)
      {
        goto LABEL_59;
      }
    }

    else
    {
      v37 = v28 + 13;
      v38 = (this + 1);
      if (v13 < 0x10)
      {
LABEL_59:
        if (v13 < 8)
        {
          if (v13 >= 2)
          {
            *v37 = *(this + 1);
            v37[v13 >> 2] = *(v38 + (v13 >> 2));
            v37[v19 - 1] = *(this + v19);
          }
        }

        else
        {
          v41 = *v38;
          v42 = *(v38 + v19 - 4);
          *v37 = v41;
          *&v37[v19 - 4] = v42;
        }

        goto LABEL_63;
      }
    }

LABEL_57:
    v39 = *v38;
    v40 = *(v38 + v19 - 8);
    *v37 = v39;
    *&v37[v19 - 8] = v40;
LABEL_63:
    if (*a9)
    {
      *a9 = v13 | 1;
    }

    else
    {
      **a9 = v19;
    }

    *this = 0;
    *(this + 1) = 0;
    return;
  }

  v72 = (*this - 1);
  if (*this == 1)
  {
    v15 = *(v14 + 12);
    if (v15 == 3)
    {
      goto LABEL_5;
    }

LABEL_68:
    if (v15 >= 6 && atomic_load_explicit((v14 + 8), memory_order_acquire) == 2)
    {
      v45 = *(v14 + 12);
      if (v45 >= 0xBB)
      {
        v46 = 12;
      }

      else
      {
        v46 = 6;
      }

      if (v45 >= 0xBB)
      {
        v47 = -753677;
      }

      else
      {
        v47 = -3725;
      }

      v48 = v45 >= 0x43;
      if (v45 < 0x43)
      {
        v46 = 3;
      }

      v49 = v45 << v46;
      v50 = v48 ? v47 : -29;
      if ((v49 + v50) - *v14 >= a2)
      {
        goto LABEL_125;
      }
    }

    goto LABEL_82;
  }

  v43 = v14;
  v44 = a2;
  absl::lts_20240722::cord_internal::CordzInfo::Lock(*this - 1, 0xCu);
  a2 = v44;
  v14 = v43;
  v15 = *(v43 + 12);
  if (v15 != 3)
  {
    goto LABEL_68;
  }

LABEL_5:
  AppendBuffer = absl::lts_20240722::cord_internal::CordRepBtree::ExtractAppendBuffer(v14, a2, a4, a2, a5, a6, a7, a8);
  v14 = v17;
  if (v17)
  {
    if (AppendBuffer)
    {
      *(this + 1) = AppendBuffer;
      v18 = v72;
      if (v72)
      {
        goto LABEL_131;
      }

LABEL_126:
      *a9 = v14;
      return;
    }

LABEL_125:
    *this = 0;
    *(this + 1) = 0;
    v18 = v72;
    if (v72)
    {
      AppendBuffer = 0;
LABEL_131:
      *(v18 + 8) = AppendBuffer;
      *a9 = v14;
      v71 = v72;
      goto LABEL_129;
    }

    goto LABEL_126;
  }

LABEL_82:
  if (a3)
  {
    v51 = 0x10000;
    if (a4 >= 0x10000)
    {
      v52 = 0x10000;
    }

    else
    {
      v52 = a4;
    }

    if (a3 < 0x10000)
    {
      v51 = a3;
    }

    if (v52 + 13 < v51)
    {
      v51 = v52 + 13;
      if (a4 >= 0xFF4)
      {
        v51 = a4;
        if ((v52 & (v52 - 1)) != 0)
        {
          v51 = 1 << -__clz(v52 - 1);
          v32 = v51 - v52 - 13 >= 0x81;
          v53 = 1 << (__clz(v52) ^ 0x3Fu);
          if (v32)
          {
            v51 = v53;
          }
        }
      }
    }

    v54 = v51 - 13;
    v55 = 262131;
    if (v54 < 0x3FFF3)
    {
      v55 = v54;
    }

    v56 = v55 + 13;
    v32 = v54 >= 0x14;
    v57 = 32;
    if (v32)
    {
      v57 = v56;
    }

    v58 = 4096;
    if (v57 <= 0x2000)
    {
      v58 = 64;
    }

    if (v57 < 0x201)
    {
      v58 = 8;
    }

    v59 = (v57 + v58 - 1) & -v58;
    v60 = operator new(v59);
    v61 = 12;
    if (v59 > 0x2000)
    {
      v62 = -72;
    }

    else
    {
      v61 = 6;
      v62 = 58;
    }

    v63 = v59 >= 0x201;
    if (v59 < 0x201)
    {
      v61 = 3;
    }

    v64 = v59 >> v61;
    goto LABEL_121;
  }

  if (a4 >= 0x10)
  {
    v65 = 4083;
    if (a4 < 0xFF3)
    {
      v65 = a4;
    }

    v66 = v65 + 13;
    if (a4 < 0x14)
    {
      v66 = 32;
    }

    v67 = -64;
    if (v66 < 0x201)
    {
      v67 = -8;
    }

    v68 = 64;
    if (v66 < 0x201)
    {
      v68 = 8;
    }

    v69 = (v66 + v68 - 1) & v67;
    v60 = operator new(v69);
    v63 = v69 >= 0x201;
    v70 = 6;
    if (v69 < 0x201)
    {
      v70 = 3;
    }

    v64 = v69 >> v70;
    v62 = 58;
LABEL_121:
    if (!v63)
    {
      v62 = 2;
    }

    *v60 = xmmword_23CE30C30;
    v60[12] = v64 + v62;
    *a9 = v60;
    v71 = v72;
    if (v72)
    {
      goto LABEL_129;
    }

    return;
  }

  *a9 = 1;
  *(a9 + 1) = 0;
  *(a9 + 8) = 0;
  v71 = v72;
  if (v72)
  {
LABEL_129:
    absl::lts_20240722::cord_internal::CordzInfo::Unlock(v71);
  }
}

void sub_23C94D8D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  absl::lts_20240722::cord_internal::CordzUpdateScope::~CordzUpdateScope(va);
  _Unwind_Resume(a1);
}

void absl::lts_20240722::Cord::AppendImpl<absl::lts_20240722::Cord>(absl::lts_20240722::cord_internal::CordRepBtree *a1, absl::lts_20240722::cord_internal::CordRepBtree *a2)
{
  v2 = a2;
  v49[12] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  if ((*a1 & 1) != 0 && (a2 = *(a1 + 1)) != 0 && !*a2)
  {
    absl::lts_20240722::Cord::InlineRep::AppendArray(a1);
    v4 = 0;
    v5 = *v2;
    if ((v5 & 1) == 0)
    {
LABEL_5:
      if (!(v5 >> 1))
      {
        goto LABEL_27;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v5 = *v2;
    if ((v5 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  if (!**(v2 + 1))
  {
    goto LABEL_27;
  }

LABEL_9:
  if ((v4 & 1) == 0)
  {
    if (v4 >> 1)
    {
      goto LABEL_11;
    }

LABEL_15:
    if ((v5 & 1) == 0)
    {
      *a1 = *v2;
      goto LABEL_27;
    }

    v14 = *(v2 + 1);
    if (*v2 == 1)
    {
      *v2 = 0;
      *(v2 + 1) = 0;
      if (*(v14 + 12) != 2)
      {
LABEL_25:
        v15 = v14;
LABEL_26:
        *a1 = 1;
        *(a1 + 1) = v15;
        goto LABEL_27;
      }
    }

    else
    {
      absl::lts_20240722::cord_internal::CordzInfo::Untrack((*v2 - 1));
      *v2 = 0;
      *(v2 + 1) = 0;
      if (*(v14 + 12) != 2)
      {
        goto LABEL_25;
      }
    }

    v15 = *(v14 + 16);
    if (atomic_load_explicit((v14 + 8), memory_order_acquire) == 2)
    {
      absl::lts_20240722::crc_internal::CrcCordState::~CrcCordState((v14 + 24));
      MEMORY[0x23EED9460](v14, 0x1020C40AB73632BLL);
    }

    else
    {
      atomic_fetch_add_explicit((v15 + 8), 2u, memory_order_relaxed);
      if (atomic_fetch_add((v14 + 8), 0xFFFFFFFE) == 2)
      {
        absl::lts_20240722::cord_internal::CordRep::Destroy(v14, a2);
      }
    }

    goto LABEL_26;
  }

  if (!**(a1 + 1))
  {
    goto LABEL_15;
  }

LABEL_11:
  if (v5)
  {
    v10 = *(v2 + 1);
    v11 = *v10;
    if (*v10 >= 0x200uLL)
    {
      if (*v2 != 1)
      {
        absl::lts_20240722::cord_internal::CordzInfo::Untrack((*v2 - 1));
      }

      goto LABEL_31;
    }

    v12 = *(v10 + 12);
    if (v12 >= 6)
    {
      v13 = *MEMORY[0x277D85DE8];
      v8 = (v10 + 13);
      v9 = a1;
      v7 = *v10;
      goto LABEL_20;
    }

    if (v2 == a1)
    {
      absl::lts_20240722::Cord::Cord(&v43, v2);
      absl::lts_20240722::Cord::AppendImpl<absl::lts_20240722::Cord>(a1, &v43);
      absl::lts_20240722::Cord::~Cord(&v43, v29);
    }

    else
    {
      v43 = 0u;
      v44 = 0;
      v47 = -1;
      v45 = v11;
      v46 = 0;
      if (v11)
      {
        switch(v12)
        {
          case 2u:
            v10 = *(v10 + 16);
            v12 = *(v10 + 12);
            if (v12 == 3)
            {
LABEL_40:
              v19 = *(v10 + 13);
              v47 = *(v10 + 13);
              v20 = *(v10 + 14);
              v49[v19] = v10;
              v48[v19] = v20;
              if (v19)
              {
                v21 = v10;
                do
                {
                  v21 = *(v21 + 8 * v20 + 16);
                  *&v48[8 * v19 + 4] = v21;
                  v20 = *(v21 + 14);
                  v48[v19 - 1] = v20;
                  v22 = v19-- > 1;
                }

                while (v22);
              }

              v23 = *(v49[0] + 8 * v20 + 16);
              v24 = *v10;
              v25 = *v23;
              v26 = v24 - *v23;
              v46 = v26;
              v27 = *(v23 + 12);
              if (v27 == 1)
              {
                v28 = *(v23 + 16);
                v23 = *(v23 + 24);
                v27 = *(v23 + 12);
              }

              else
              {
                v28 = 0;
              }

              if (v27 < 6)
              {
                v30 = *(v23 + 16);
              }

              else
              {
                v30 = v23 + 13;
              }

              v11 = v45;
              if (!v45)
              {
                goto LABEL_27;
              }

              goto LABEL_73;
            }

            break;
          case 3u:
            goto LABEL_40;
          case 1u:
            v28 = *(v10 + 16);
            v33 = *(v10 + 24);
            v12 = *(v33 + 12);
            break;
          default:
            v28 = 0;
            v33 = v10;
            break;
        }

        v25 = *v10;
        if (v12 < 6)
        {
          v30 = *(v33 + 16);
        }

        else
        {
          v30 = v33 + 13;
        }

        v26 = 0;
LABEL_73:
        v34 = (v30 + v28);
        while (1)
        {
          absl::lts_20240722::Cord::InlineRep::AppendArray(a1, v34, v25, 4u);
          v11 -= v25;
          v45 = v11;
          if (!v11)
          {
            goto LABEL_75;
          }

          if (v47 < 0 || !v49[v47])
          {
            v25 = 0;
            v34 = 0;
            v43 = 0uLL;
LABEL_75:
            if (!v11)
            {
              break;
            }
          }

          else if (v26)
          {
            v35 = v49[0];
            if (*(v49[0] + 15) - 1 == v48[0])
            {
              v36 = 0;
              while (v47 != v36)
              {
                v37 = v36 + 1;
                v35 = v49[v36 + 1];
                v38 = v48[++v36] + 1;
                if (v38 != *(v35 + 15))
                {
                  v48[v37] = v38;
                  v39 = v37;
                  do
                  {
                    v35 = *(v35 + 8 * v38 + 16);
                    v22 = v39-- <= 1;
                    v49[v39] = v35;
                    v38 = *(v35 + 14);
                    v48[v39] = v38;
                  }

                  while (!v22);
                  v26 = v46;
                  goto LABEL_90;
                }
              }

              v40 = 0;
              v25 = MEMORY[0];
              v26 -= MEMORY[0];
              v46 = v26;
              v41 = MEMORY[0xC];
              if (MEMORY[0xC] == 1)
              {
                goto LABEL_91;
              }

              goto LABEL_95;
            }

            v38 = ++v48[0];
LABEL_90:
            v40 = *(v35 + 8 * v38 + 16);
            v25 = *v40;
            v26 -= *v40;
            v46 = v26;
            v41 = *(v40 + 12);
            if (v41 == 1)
            {
LABEL_91:
              v42 = *(v40 + 16);
              v40 = *(v40 + 24);
              if (*(v40 + 12) < 6u)
              {
                goto LABEL_92;
              }

LABEL_96:
              v34 = (v40 + 13 + v42);
              v11 = v45;
              if (!v45)
              {
                break;
              }
            }

            else
            {
LABEL_95:
              v42 = 0;
              if (v41 >= 6)
              {
                goto LABEL_96;
              }

LABEL_92:
              v34 = (*(v40 + 16) + v42);
              v11 = v45;
              if (!v45)
              {
                break;
              }
            }
          }

          else
          {
            v25 = 0;
            v34 = 0;
          }
        }
      }
    }

LABEL_27:
    v16 = *MEMORY[0x277D85DE8];
    return;
  }

  if ((v5 & 0x80000000) == 0)
  {
    v6 = *MEMORY[0x277D85DE8];
    v7 = v5 >> 1;
    v8 = v2 + 1;
    v9 = a1;
LABEL_20:

    absl::lts_20240722::Cord::InlineRep::AppendArray(v9, v8, v7, 1u);
    return;
  }

  v10 = 0;
LABEL_31:
  *v2 = 0;
  *(v2 + 1) = 0;
  if (*(v10 + 12) == 2)
  {
    v31 = *(v10 + 16);
    if (atomic_load_explicit((v10 + 8), memory_order_acquire) == 2)
    {
      absl::lts_20240722::crc_internal::CrcCordState::~CrcCordState((v10 + 24));
      MEMORY[0x23EED9460](v10, 0x1020C40AB73632BLL);
      v17 = v31;
      if ((*a1 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      atomic_fetch_add_explicit((v31 + 8), 2u, memory_order_relaxed);
      if (atomic_fetch_add((v10 + 8), 0xFFFFFFFE) == 2)
      {
        absl::lts_20240722::cord_internal::CordRep::Destroy(v10, a2);
        v17 = v31;
        if ((*a1 & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v17 = v31;
        if ((*a1 & 1) == 0)
        {
          goto LABEL_33;
        }
      }
    }
  }

  else
  {
    v17 = v10;
    if ((*a1 & 1) == 0)
    {
LABEL_33:
      v18 = *MEMORY[0x277D85DE8];

      absl::lts_20240722::Cord::InlineRep::AppendTreeToInlined(a1, v17);
      return;
    }
  }

  v32 = *MEMORY[0x277D85DE8];

  absl::lts_20240722::Cord::InlineRep::AppendTreeToTree(a1, v17, 1u);
}

void absl::lts_20240722::Cord::AppendPrecise(uint64_t *a1, const void *a2, size_t a3, unsigned int a4)
{
  v4 = *a1;
  v5 = v4 >> 1;
  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = 15 - (v4 >> 1);
  }

  if (v6 >= a3)
  {
    *a1 = 2 * (v5 + a3);
    v21 = a1 + v5 + 1;

    memcpy(v21, a2, a3);
  }

  else
  {
    v8 = 4083;
    if (a3 < 0xFF3)
    {
      v8 = a3;
    }

    v9 = v8 + 13;
    if (a3 < 0x14)
    {
      v9 = 32;
    }

    v10 = -64;
    if (v9 < 0x201)
    {
      v10 = -8;
    }

    v11 = 64;
    if (v9 < 0x201)
    {
      v11 = 8;
    }

    v12 = (v9 + v11 - 1) & v10;
    v16 = operator new(v12);
    v17 = v16;
    v16[1] = 2;
    v18 = 6;
    if (v12 < 0x201)
    {
      v18 = 3;
    }

    v19 = v12 >> v18;
    if (v12 >= 0x201)
    {
      v20 = 58;
    }

    else
    {
      v20 = 2;
    }

    *(v16 + 12) = v19 + v20;
    memcpy(v16 + 13, a2, a3);
    *v17 = a3;
    if (*a1)
    {

      absl::lts_20240722::Cord::InlineRep::AppendTreeToTree(a1, v17, a4);
    }

    else
    {

      absl::lts_20240722::Cord::InlineRep::AppendTreeToInlined(a1, v17);
    }
  }
}

void *absl::lts_20240722::Cord::Cord(void *this, const absl::lts_20240722::Cord *a2)
{
  if ((*a2 & 1) != 0 && (v2 = *(a2 + 1)) != 0)
  {
    atomic_fetch_add_explicit((v2 + 8), 2u, memory_order_relaxed);
    *this = 1;
    this[1] = v2;
    if (*a2 >= 2uLL)
    {
      v3 = this;
      absl::lts_20240722::cord_internal::CordzInfo::MaybeTrackCordImpl(this, a2);
      return v3;
    }
  }

  else
  {
    *this = *a2;
  }

  return this;
}

void absl::lts_20240722::Cord::operator std::string(absl::lts_20240722::Cord *a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  absl::lts_20240722::CopyCordToString(a1, a2);
}

void sub_23C94E138(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void absl::lts_20240722::CopyCordToString(absl::lts_20240722::Cord *a1, std::string *this)
{
  if (*a1)
  {
    v3 = **(a1 + 1);
    v4 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((v4 & 0x8000000000000000) != 0)
    {
      size = this->__r_.__value_.__l.__size_;
      v5 = v3 - size;
      if (v3 <= size)
      {
        v11 = this->__r_.__value_.__r.__words[0];
        this->__r_.__value_.__l.__size_ = v3;
        *(v11 + v3) = 0;
        if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_22;
        }

        goto LABEL_18;
      }

      v10 = this->__r_.__value_.__r.__words[2];
      v6 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      v4 = HIBYTE(v10);
      if (v6 - size >= v5)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v5 = v3 - v4;
      if (v3 <= v4)
      {
        *(&this->__r_.__value_.__s + 23) = v3;
        goto LABEL_15;
      }

      v6 = 22;
      size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
      if (22 - v4 >= v5)
      {
LABEL_9:
        if ((v4 & 0x80) != 0)
        {
          v12 = this->__r_.__value_.__r.__words[0];
          this->__r_.__value_.__l.__size_ = size + v5;
          *(v12 + size + v5) = 0;
          if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_22;
          }

          goto LABEL_18;
        }

        v3 = size + v5;
        *(&this->__r_.__value_.__s + 23) = (size + v5) & 0x7F;
LABEL_15:
        this->__r_.__value_.__s.__data_[v3] = 0;
        if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_22:
          this = this->__r_.__value_.__r.__words[0];

LABEL_20:
          absl::lts_20240722::Cord::CopyToArraySlowPath(a1, this);
          return;
        }

LABEL_18:

        goto LABEL_20;
      }
    }

    v8 = a1;
    v9 = this;
    std::string::__grow_by(this, v6, v5 - v6 + size, size, size, 0, 0);
    a1 = v8;
    this = v9;
    v9->__r_.__value_.__l.__size_ = size;
    LOBYTE(v4) = *(&v9->__r_.__value_.__s + 23);
    goto LABEL_9;
  }

  absl::lts_20240722::Cord::InlineRep::CopyTo(a1, this);
}

std::string *absl::lts_20240722::Cord::InlineRep::CopyTo(char *a1, std::string *this)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) == 0)
  {
    LOBYTE(v4) = *(&this->__r_.__value_.__s + 23);
    if (v4 >= 0xFu)
    {
      goto LABEL_6;
    }

    v5 = 22;
    v6 = 15 - size;
    if (22 - size >= 15 - size)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  size = this->__r_.__value_.__l.__size_;
  if (size >= 0xF)
  {
    goto LABEL_14;
  }

  v12 = this->__r_.__value_.__r.__words[2];
  v5 = (v12 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  v4 = HIBYTE(v12);
  v6 = 15 - size;
  if (v5 - size < 15 - size)
  {
LABEL_4:
    v7 = a1;
    std::string::__grow_by(this, v5, size - v5 + v6, size, size, 0, 0);
    a1 = v7;
    this->__r_.__value_.__l.__size_ = size;
    LOBYTE(v4) = *(&this->__r_.__value_.__s + 23);
  }

LABEL_5:
  if ((v4 & 0x80) == 0)
  {
LABEL_6:
    *(&this->__r_.__value_.__s + 23) = 15;
    v8 = this;
    this->__r_.__value_.__s.__data_[15] = 0;
    if ((SHIBYTE(this->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_14:
  v13 = this->__r_.__value_.__r.__words[0];
  this->__r_.__value_.__l.__size_ = 15;
  *(v13 + 15) = 0;
  v8 = this;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_7:
    v8 = this->__r_.__value_.__r.__words[0];
  }

LABEL_8:
  v9 = *(a1 + 1);
  *(v8->__r_.__value_.__r.__words + 7) = *(a1 + 1);
  v8->__r_.__value_.__r.__words[0] = v9;
  v10 = *a1 >> 1;

  return std::string::erase(this, v10, 0xFFFFFFFFFFFFFFFFLL);
}

void absl::lts_20240722::Cord::CopyToArraySlowPath(absl::lts_20240722::Cord *this, char *a2)
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  if (*this)
  {
    v4 = *(this + 1);
  }

  if (absl::lts_20240722::Cord::GetFlatAux(v4, &v5))
  {
    memcpy(a2, v5, v6);
  }

  else
  {
    absl::lts_20240722::Cord::CopyToArraySlowPath(this, a2);
  }
}

uint64_t absl::lts_20240722::Cord::GetFlatAux(uint64_t a1, char **a2)
{
  if (!*a1)
  {
    *a2 = 0;
    a2[1] = 0;
    return 1;
  }

  v2 = *(a1 + 12);
  if (v2 == 2)
  {
    a1 = *(a1 + 16);
    v2 = *(a1 + 12);
    if (v2 >= 6)
    {
      goto LABEL_4;
    }
  }

  else if (v2 >= 6)
  {
LABEL_4:
    v3 = *a1;
    *a2 = (a1 + 13);
    a2[1] = v3;
    return 1;
  }

  if (v2 != 1)
  {
    if (v2 == 3)
    {
      return absl::lts_20240722::cord_internal::CordRepBtree::IsFlat(a1, a2);
    }

    if (v2 == 5)
    {
      v5 = *a1;
      *a2 = *(a1 + 16);
      a2[1] = v5;
      return 1;
    }

    return 0;
  }

  v6 = *(a1 + 24);
  v7 = *(v6 + 12);
  if (v7 >= 6)
  {
    v8 = *a1;
    *a2 = (v6 + *(a1 + 16) + 13);
    a2[1] = v8;
    return 1;
  }

  if (v7 != 3)
  {
    if (v7 == 5)
    {
      v9 = *a1;
      *a2 = (*(v6 + 16) + *(a1 + 16));
      a2[1] = v9;
      return 1;
    }

    return 0;
  }

  return absl::lts_20240722::cord_internal::CordRepBtree::IsFlat(*(a1 + 24), *(a1 + 16), *a1, a2);
}

uint64_t absl::lts_20240722::cord_internal::CordRepBtree::GetAppendBuffer(absl::lts_20240722::cord_internal::CordRepBtree *this, unint64_t a2)
{
  v2 = *(this + 13);
  v3 = this;
  if (v2 > 1)
  {
    if (v2 != 2)
    {
      if (v2 != 3)
      {
        return absl::lts_20240722::cord_internal::CordRepBtree::GetAppendBufferSlow(this, a2);
      }

      v3 = *(this + *(this + 15) + 1);
      if (atomic_load_explicit(v3 + 2, memory_order_acquire) != 2)
      {
        return 0;
      }
    }

    v4 = *(v3 + *(v3 + 15) + 1);
    if (atomic_load_explicit(v4 + 2, memory_order_acquire) != 2)
    {
      return 0;
    }
  }

  else
  {
    v4 = this;
    v5 = this;
    if (!*(this + 13))
    {
      goto LABEL_10;
    }

    v3 = this;
    v4 = this;
    if (v2 != 1)
    {
      return absl::lts_20240722::cord_internal::CordRepBtree::GetAppendBufferSlow(this, a2);
    }
  }

  v5 = *(v4 + *(v4 + 15) + 1);
  if (atomic_load_explicit(v5 + 2, memory_order_acquire) != 2)
  {
    return 0;
  }

LABEL_10:
  v6 = *(v5 + *(v5 + 15) + 1);
  if (atomic_load_explicit(v6 + 2, memory_order_acquire) != 2)
  {
    return 0;
  }

  v7 = *(v6 + 12);
  if (v7 < 6)
  {
    return 0;
  }

  if (v7 >= 0xBB)
  {
    v8 = 12;
  }

  else
  {
    v8 = 6;
  }

  if (v7 >= 0xBB)
  {
    v9 = -753677;
  }

  else
  {
    v9 = -3725;
  }

  v10 = v7 >= 0x43;
  if (v7 < 0x43)
  {
    v8 = 3;
  }

  v11 = v7 << v8;
  v12 = v10 ? v9 : -29;
  v13 = (v11 + v12);
  v14 = *v6;
  v15 = v13 - *v6;
  if (!v15)
  {
    return 0;
  }

  if (v15 < a2)
  {
    a2 = v15;
  }

  *v6 = a2 + v14;
  if (v2 > 1)
  {
    if (v2 != 2)
    {
      *this += a2;
    }

    *v3 += a2;
  }

  else if (!v2)
  {
    goto LABEL_35;
  }

  *v4 += a2;
LABEL_35:
  *v5 += a2;
  return v6 + v14 + 13;
}

uint64_t std::deque<absl::lts_20240722::crc_internal::CrcCordState::PrefixCrc>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 128;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 256;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void OUTLINED_FUNCTION_3(void *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(a9 + 8 * v9 + 16);
  v11 = *a1 - *v10;
  v12 = *(v10 + 12);
}

void OUTLINED_FUNCTION_4(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, char a8, uint64_t a9, uint64_t a10)
{
  v10 = *(a1 + 13);
  a7 = *(a1 + 13);
  v11 = *(a1 + 14);
  *(&a10 + v10) = a1;
  *(&a8 + v10) = v11;
}

void OUTLINED_FUNCTION_5()
{
  v4 = *(v3 + 8 * v1 + 16);
  *(v2 + 8 * v0 + 5) = v4;
  *(v2 + v0) = *(v4 + 14);
}

uint64_t absl::lts_20240722::cord_internal::GetEstimatedMemoryUsage(uint64_t a1)
{
  v1 = a1;
  v6 = 0;
  v2 = *(a1 + 12);
  switch(v2)
  {
    case 2u:
      result = 32;
      v6 = 32;
      v1 = *(v1 + 16);
      if (!v1)
      {
        return result;
      }

      v2 = *(v1 + 12);
      result = 32;
      if (v2 > 4)
      {
LABEL_4:
        if (v2 >= 6)
        {
LABEL_5:
          if (v2 >= 0xBB)
          {
            v4 = 12;
          }

          else
          {
            v4 = 6;
          }

          if (v2 >= 0xBB)
          {
            v5 = -753664;
          }

          else
          {
            v5 = -3712;
          }

          if (v2 < 0x43)
          {
            v4 = 3;
            v5 = -16;
          }

          result += ((v2 << v4) + v5);
          return result;
        }

LABEL_20:
        result += *v1 + 40;
        return result;
      }

      break;
    case 3u:
      return v6;
    case 1u:
      v1 = *(v1 + 24);
      v2 = *(v1 + 12);
      if (v2 >= 5)
      {
        result += 32;
        if (v2 >= 6)
        {
          goto LABEL_5;
        }

        goto LABEL_20;
      }

      break;
    default:
      result = 0;
      if (v2 > 4)
      {
        goto LABEL_4;
      }

      break;
  }

  return result;
}

uint64_t absl::lts_20240722::cord_internal::anonymous namespace::AnalyzeBtree<(absl::lts_20240722::cord_internal::anonymous namespace::Mode)1>(uint64_t result, uint64_t *a2)
{
  v3 = *a2 + 64;
  *a2 = v3;
  v4 = result + 16;
  v5 = *(result + 14);
  v6 = *(result + 15);
  if (*(result + 13))
  {
    if (v5 != v6)
    {
      v7 = (v4 + 8 * v5);
      v8 = 8 * v6 - 8 * v5;
      do
      {
        v9 = *v7++;
        v8 -= 8;
      }

      while (v8);
    }
  }

  else if (v5 != v6)
  {
    v10 = 8 * v5;
    v11 = v4 + v10;
    v12 = 8 * v6 - v10;
    do
    {
      while (1)
      {
        v13 = *v11;
        result = *(*v11 + 12);
        if (result == 1)
        {
          v3 += 32;
          v13 = *(v13 + 24);
          result = *(v13 + 12);
        }

        if (result >= 6)
        {
          break;
        }

        v3 += *v13 + 40;
        v11 += 8;
        v12 -= 8;
        if (!v12)
        {
          goto LABEL_21;
        }
      }

      if (result >= 0xBB)
      {
        v14 = 12;
      }

      else
      {
        v14 = 6;
      }

      if (result >= 0xBB)
      {
        v15 = -753664;
      }

      else
      {
        v15 = -3712;
      }

      if (result < 0x43)
      {
        v14 = 3;
        v15 = -16;
      }

      v3 += (result << v14) + v15;
      v11 += 8;
      v12 -= 8;
    }

    while (v12);
LABEL_21:
    *a2 = v3;
  }

  return result;
}

void absl::lts_20240722::cord_internal::CordRep::Destroy(uint64_t a1, absl::lts_20240722::cord_internal::CordRepBtree *a2)
{
  while (1)
  {
    v2 = *(a1 + 12);
    if (v2 != 1)
    {
      break;
    }

    v3 = *(a1 + 24);
    MEMORY[0x23EED9460]();
    a1 = v3;
    if (atomic_load_explicit((v3 + 8), memory_order_acquire) != 2)
    {
      a1 = v3;
      if (atomic_fetch_add((v3 + 8), 0xFFFFFFFE) != 2)
      {
        return;
      }
    }
  }

  switch(v2)
  {
    case 2:

      absl::lts_20240722::cord_internal::CordRepCrc::Destroy(a1);
      break;
    case 5:
      v4 = *(a1 + 24);

      v4();
      break;
    case 3:

      absl::lts_20240722::cord_internal::CordRepBtree::Destroy(a1, a2);
      break;
    default:

      operator delete(a1);
      break;
  }
}

uint64_t *absl::lts_20240722::cord_internal::anonymous namespace::StackOperations<(absl::lts_20240722::cord_internal::CordRepBtree::EdgeType)0>::Unwind<false>(int *a1, atomic_uint *a2, int a3, uint64_t a4, uint64_t *a5, int a6)
{
  if (a3)
  {
    v8 = a1 + 2;
    v9 = a3;
    v10 = (a3 - 1) - 1;
    v11 = a5;
    while (1)
    {
      v14 = *&v8[2 * v9 - 2];
      v15 = *a1;
      if (a6 == 1)
      {
        v16 = *(v14 + 14);
        if (v9 > v15)
        {
          v17 = *v14;
          operator new();
        }

        v19 = v14[v16 + 2];
        if (atomic_fetch_add((v19 + 8), 0xFFFFFFFE) == 2)
        {
          absl::lts_20240722::cord_internal::CordRep::Destroy(v19, a2);
        }

        a6 = 0;
        v14[v16 + 2] = v11;
        *v14 += a4;
        v12 = v14;
      }

      else if (a6 == 2)
      {
        if (*(v14 + 15) - *(v14 + 14) >= 6)
        {
          operator new();
        }

        if (v9 > v15)
        {
          v18 = *v14;
          operator new();
        }

        a6 = 0;
        v12 = *&v8[2 * v9 - 2];
        v20 = *(v14 + 15);
        if (v20 != 6)
        {
          v21 = 6 - v20 + *(v12 + 14);
          *(v12 + 14) = v21;
          *(v12 + 15) = 6;
          if (v21 <= 5)
          {
            v22 = 8 * v20 + 8;
            v23 = v12;
            for (i = 5; i >= v21; --i)
            {
              v23[7] = *(v23 + v22);
              --v23;
            }
          }
        }

        v25 = *(v12 + 14) - 1;
        *(v12 + 14) = v25;
        v12[v25 + 2] = v11;
        *v12 += a4;
      }

      else
      {
        v12 = v11;
        if (!a6)
        {
          *v14 += a4;
          if (v9 >= 2)
          {
            do
            {
              v14 = *&v8[2 * v10];
              *v14 += a4;
              LODWORD(v9) = v9 - 1;
              --v10;
            }

            while (v9 > 1);
          }

          return v14;
        }
      }

      --v10;
      v11 = v12;
      if (v9-- <= 1)
      {
        goto LABEL_23;
      }
    }
  }

  v12 = a5;
LABEL_23:
  if (!a6)
  {
    return v12;
  }

  if (a6 != 1)
  {
    operator new();
  }

  v14 = v12;
  if (atomic_fetch_add(a2 + 2, 0xFFFFFFFE) == 2)
  {
    absl::lts_20240722::cord_internal::CordRep::Destroy(a2, a2);
  }

  return v14;
}

uint64_t *absl::lts_20240722::cord_internal::CordRepBtree::AddCordRep<(absl::lts_20240722::cord_internal::CordRepBtree::EdgeType)1>(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 13);
  v3 = *a2;
  if (*(a1 + 13))
  {
    v4 = 0;
    v5 = a1;
    while (atomic_load_explicit((v5 + 8), memory_order_acquire) == 2)
    {
      *&v23[2 * v4 + 2] = v5;
      v5 = *(v5 + 8 * *(v5 + 15) + 8);
      if (v2 == ++v4)
      {
        if (atomic_load_explicit((v5 + 8), memory_order_acquire) == 2)
        {
          v6 = v2 + 1;
        }

        else
        {
          v6 = v2;
        }

        v23[0] = v6;
        goto LABEL_16;
      }
    }
  }

  else
  {
    LODWORD(v4) = 0;
    v5 = a1;
  }

  if (atomic_load_explicit((v5 + 8), memory_order_acquire) == 2)
  {
    v6 = v4 + 1;
  }

  else
  {
    v6 = v4;
  }

  v23[0] = v6;
  if (v4 < v2)
  {
    v7 = &v23[2 * v4 + 2];
    v8 = v2 - v4;
    do
    {
      *v7 = v5;
      v7 += 2;
      v5 = *(v5 + 8 * *(v5 + 15) + 8);
      --v8;
    }

    while (v8);
  }

LABEL_16:
  if (*(v5 + 15) - *(v5 + 14) >= 6)
  {
    operator new();
  }

  if (v6 <= v2)
  {
    v9 = *v5;
    operator new();
  }

  v10 = *(v5 + 14);
  v11 = *(v5 + 15);
  if (*(v5 + 14))
  {
    v13 = v11 - v10;
    *(v5 + 14) = 0;
    *(v5 + 15) = v11 - v10;
    if (v11 != v10)
    {
      if (v13 >= 2)
      {
        v15 = (v5 + 16);
        v14 = v13 & 6;
        v16 = v14;
        do
        {
          *v15 = *(v15 + 8 * v10);
          ++v15;
          v16 -= 2;
        }

        while (v16);
        if (v13 == v14)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v14 = 0;
      }

      v17 = v14 + v10;
      v18 = v14 + v10 - v11;
      v19 = (v5 + 8 * v14 + 16);
      v20 = (v5 + 8 * v17 + 16);
      do
      {
        v21 = *v20++;
        *v19++ = v21;
      }

      while (!__CFADD__(v18++, 1));
    }

LABEL_31:
    LOBYTE(v11) = v13;
  }

  *(v5 + 15) = v11 + 1;
  *(v5 + 8 * v11 + 16) = a2;
  *v5 += v3;
}

uint64_t *absl::lts_20240722::cord_internal::anonymous namespace::StackOperations<(absl::lts_20240722::cord_internal::CordRepBtree::EdgeType)1>::Unwind<false>(int *a1, atomic_uint *a2, int a3, uint64_t a4, uint64_t *a5, int a6)
{
  if (a3)
  {
    v8 = a1 + 2;
    v9 = a3;
    v10 = (a3 - 1) - 1;
    v11 = a5;
    while (1)
    {
      v14 = *&v8[2 * v9 - 2];
      v15 = *a1;
      if (a6 == 1)
      {
        v16 = *(v14 + 15) - 1;
        if (v9 > v15)
        {
          v17 = *v14;
          operator new();
        }

        v19 = v14[v16 + 2];
        if (atomic_fetch_add((v19 + 8), 0xFFFFFFFE) == 2)
        {
          absl::lts_20240722::cord_internal::CordRep::Destroy(v19, a2);
        }

        a6 = 0;
        v14[v16 + 2] = v11;
        *v14 += a4;
        v12 = v14;
        goto LABEL_4;
      }

      if (a6 == 2)
      {
        break;
      }

      v12 = v11;
      if (!a6)
      {
        *v14 += a4;
        if (v9 >= 2)
        {
          do
          {
            v14 = *&v8[2 * v10];
            *v14 += a4;
            LODWORD(v9) = v9 - 1;
            --v10;
          }

          while (v9 > 1);
        }

        return v14;
      }

LABEL_4:
      --v10;
      v11 = v12;
      if (v9-- <= 1)
      {
        goto LABEL_30;
      }
    }

    if (*(v14 + 15) - *(v14 + 14) >= 6)
    {
      operator new();
    }

    if (v9 > v15)
    {
      v18 = *v14;
      operator new();
    }

    a6 = 0;
    v12 = *&v8[2 * v9 - 2];
    v20 = *(v12 + 14);
    v21 = *(v12 + 15);
    if (!*(v12 + 14))
    {
LABEL_16:
      *(v12 + 15) = v21 + 1;
      v12[v21 + 2] = v11;
      *v12 += a4;
      goto LABEL_4;
    }

    v22 = v21 - v20;
    *(v12 + 14) = 0;
    *(v12 + 15) = v21 - v20;
    if (v21 != v20)
    {
      v23 = v12 + 2;
      if (v22 >= 2)
      {
        v24 = v22 & 6;
        v25 = v24;
        v26 = v12 + 2;
        do
        {
          *v26 = *(v26 + 8 * v20);
          ++v26;
          v25 -= 2;
        }

        while (v25);
        if (v22 == v24)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v24 = 0;
      }

      v27 = v24 + v20;
      v28 = v24 + v20 - v21;
      v29 = &v23[v24];
      v30 = &v23[v27];
      do
      {
        v31 = *v30++;
        *v29++ = v31;
      }

      while (!__CFADD__(v28++, 1));
    }

LABEL_28:
    LOBYTE(v21) = v22;
    goto LABEL_16;
  }

  v12 = a5;
LABEL_30:
  if (!a6)
  {
    return v12;
  }

  if (a6 != 1)
  {
    operator new();
  }

  v14 = v12;
  if (atomic_fetch_add(a2 + 2, 0xFFFFFFFE) == 2)
  {
    absl::lts_20240722::cord_internal::CordRep::Destroy(a2, a2);
  }

  return v14;
}

uint64_t *absl::lts_20240722::cord_internal::CordRepBtree::AddData<(absl::lts_20240722::cord_internal::CordRepBtree::EdgeType)1>(uint64_t a1, char *a2, size_t a3, uint64_t a4)
{
  v4 = a1;
  if (a3)
  {
    v6 = *(a1 + 13);
    if (*(a1 + 13))
    {
      v7 = 0;
      v8 = a1;
      while (atomic_load_explicit((v8 + 8), memory_order_acquire) == 2)
      {
        *&v18[2 * v7 + 2] = v8;
        v8 = *(v8 + 8 * *(v8 + 15) + 8);
        if (v6 == ++v7)
        {
          if (atomic_load_explicit((v8 + 8), memory_order_acquire) == 2)
          {
            v9 = v6 + 1;
          }

          else
          {
            v9 = v6;
          }

          v18[0] = v9;
          goto LABEL_17;
        }
      }
    }

    else
    {
      LODWORD(v7) = 0;
      v8 = a1;
    }

    if (atomic_load_explicit((v8 + 8), memory_order_acquire) == 2)
    {
      v9 = v7 + 1;
    }

    else
    {
      v9 = v7;
    }

    v18[0] = v9;
    if (v7 < v6)
    {
      v10 = &v18[2 * v7 + 2];
      v11 = v6 - v7;
      do
      {
        *v10 = v8;
        v10 += 2;
        v8 = *(v8 + 8 * *(v8 + 15) + 8);
        --v11;
      }

      while (v11);
    }

LABEL_17:
    if (*(v8 + 15) - *(v8 + 14) > 5)
    {
LABEL_28:
      absl::lts_20240722::cord_internal::CordRepBtree::NewLeaf<(absl::lts_20240722::cord_internal::CordRepBtree::EdgeType)1>();
    }

    if (v9 <= v6)
    {
      v15 = *v8;
      operator new();
    }

    absl::lts_20240722::cord_internal::CordRepBtree::AddData<(absl::lts_20240722::cord_internal::CordRepBtree::EdgeType)1>(v8, a2, a3, a4);
    if (v12)
    {
      v17 = v6;
      v13 = a3 - v12;
      *v8 += a3 - v12;
      if (v6)
      {
        v14 = (v6 - 1) - 1;
        **&v18[2 * v6] += v13;
        if (v6 >= 2)
        {
          do
          {
            **&v18[2 * v14 + 2] += v13;
            LODWORD(v6) = v6 - 1;
            --v14;
          }

          while (v6 > 1);
        }
      }

      v18[0] = v17 + 1;
      goto LABEL_28;
    }

    *v8 += a3;
  }

  return v4;
}

char *absl::lts_20240722::cord_internal::CordRepBtree::AddData<(absl::lts_20240722::cord_internal::CordRepBtree::EdgeType)1>(uint64_t a1, char *a2, size_t a3, uint64_t a4)
{
  if (*(a1 + 14))
  {
    absl::lts_20240722::cord_internal::CordRepBtree::AddData<(absl::lts_20240722::cord_internal::CordRepBtree::EdgeType)1>(a1, *(a1 + 14), (a1 + 14), *(a1 + 14));
  }

  do
  {
    v8 = 4083;
    if (a3 + a4 < 0xFF3)
    {
      v8 = a3 + a4;
    }

    v9 = v8 + 13;
    v10 = 32;
    if (a3 + a4 >= 0x14)
    {
      v10 = v9;
    }

    v11 = -64;
    if (v10 < 0x201)
    {
      v11 = -8;
    }

    v12 = 64;
    if (v10 < 0x201)
    {
      v12 = 8;
    }

    v13 = (v10 + v12 - 1) & v11;
    v14 = operator new(v13);
    if (v13 >= 0x201)
    {
      v15 = 6;
    }

    else
    {
      v15 = 3;
    }

    v16 = 58;
    if (v13 < 0x201)
    {
      v16 = 2;
    }

    v17 = (v13 >> v15) + v16;
    if (v17 >= 0xBBu)
    {
      v18 = 12;
    }

    else
    {
      v18 = 6;
    }

    if (v17 >= 0xBBu)
    {
      v19 = -753677;
    }

    else
    {
      v19 = -3725;
    }

    if (v17 < 0x43u)
    {
      v18 = 3;
    }

    v20 = v17 << v18;
    if (v17 >= 0x43u)
    {
      v21 = v19;
    }

    else
    {
      v21 = -29;
    }

    v22 = v20 + v21;
    if (a3 >= v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = a3;
    }

    *v14 = v23;
    v14[1] = 0;
    *(v14 + 2) = 2;
    *(v14 + 12) = v17;
    v24 = *(a1 + 15);
    v25 = (v24 + 1);
    *(a1 + 15) = v24 + 1;
    *(a1 + 16 + 8 * v24) = v14;
    memcpy(v14 + 13, a2, v23);
    a2 += v23;
    a3 -= v23;
  }

  while (v25 != 6 && a3);
  return a2;
}

void absl::lts_20240722::cord_internal::CordRepBtree::Destroy(_BYTE *a1, absl::lts_20240722::cord_internal::CordRepBtree *a2)
{
  v3 = a1 + 16;
  v4 = a1[14];
  v5 = a1[15];
  v6 = &a1[8 * v5 + 16];
  if (a1[13] == 1)
  {
    if (v4 == v5)
    {
      goto LABEL_57;
    }

    v14 = &v3[8 * v4];
    do
    {
      v15 = *v14;
      v16 = (*v14 + 8);
      if (atomic_load_explicit(v16, memory_order_acquire) == 2 || atomic_fetch_add(v16, 0xFFFFFFFE) == 2)
      {
        v17 = *(v15 + 14);
        v18 = *(v15 + 15);
        if (v17 == v18)
        {
          goto LABEL_22;
        }

        v19 = 8 * v17;
        v20 = 8 * v18 - v19;
        v21 = v19 + 16;
        do
        {
          v22 = *(v15 + v21);
          if (atomic_load_explicit((v22 + 8), memory_order_acquire) == 2 || atomic_fetch_add((v22 + 8), 0xFFFFFFFE) == 2)
          {
            v23 = *(v22 + 12);
            if (v23 >= 6)
            {
              operator delete(v22);
            }

            else
            {
              v24 = *(v22 + 24);
              if (v23 == 5)
              {
                (v24)();
              }

              else
              {
                if (atomic_load_explicit((v24 + 8), memory_order_acquire) == 2 || atomic_fetch_add((v24 + 8), 0xFFFFFFFE) == 2)
                {
                  v25 = v22;
                  if (*(v24 + 12) < 6u)
                  {
                    (*(v24 + 24))(v24);
                  }

                  else
                  {
                    operator delete(v24);
                  }

                  v22 = v25;
                }

                MEMORY[0x23EED9460](v22, 0x1020C40A5B76CDFLL);
              }
            }
          }

          v21 += 8;
          v20 -= 8;
        }

        while (v20);
        if (v15)
        {
LABEL_22:
          MEMORY[0x23EED9460](v15, 0x1020C40CFACAFC6);
        }
      }

      ++v14;
    }

    while (v14 != v6);
  }

  else if (a1[13])
  {
    if (v4 == v5)
    {
      goto LABEL_57;
    }

    v26 = &v3[8 * v4];
    do
    {
      v27 = *v26;
      v28 = (*v26 + 8);
      if (atomic_load_explicit(v28, memory_order_acquire) == 2 || atomic_fetch_add(v28, 0xFFFFFFFE) == 2)
      {
        v29 = *(v27 + 14);
        v30 = *(v27 + 15);
        if (v29 == v30)
        {
          goto LABEL_45;
        }

        v31 = 8 * v29;
        v32 = v31 + 16;
        v33 = 8 * v30 - v31;
        do
        {
          v34 = *(v27 + v32);
          if (atomic_load_explicit(v34 + 2, memory_order_acquire) == 2 || atomic_fetch_add(v34 + 2, 0xFFFFFFFE) == 2)
          {
            absl::lts_20240722::cord_internal::CordRepBtree::Destroy(v34, a2);
          }

          v32 += 8;
          v33 -= 8;
        }

        while (v33);
        if (v27)
        {
LABEL_45:
          MEMORY[0x23EED9460](v27, 0x1020C40CFACAFC6);
        }
      }

      ++v26;
    }

    while (v26 != v6);
  }

  else
  {
    if (v4 == v5)
    {
      goto LABEL_57;
    }

    v7 = 8 * v4;
    v8 = v7 + 16;
    v9 = 8 * v5 - v7;
    do
    {
      v10 = *&a1[v8];
      if (atomic_load_explicit((v10 + 8), memory_order_acquire) == 2 || atomic_fetch_add((v10 + 8), 0xFFFFFFFE) == 2)
      {
        v11 = *(v10 + 12);
        if (v11 >= 6)
        {
          operator delete(v10);
        }

        else
        {
          v12 = *(v10 + 24);
          if (v11 == 5)
          {
            (v12)();
          }

          else
          {
            if (atomic_load_explicit((v12 + 8), memory_order_acquire) == 2 || atomic_fetch_add((v12 + 8), 0xFFFFFFFE) == 2)
            {
              v13 = v10;
              if (*(v12 + 12) < 6u)
              {
                (*(v12 + 24))(v12);
              }

              else
              {
                operator delete(v12);
              }

              v10 = v13;
            }

            MEMORY[0x23EED9460](v10, 0x1020C40A5B76CDFLL);
          }
        }
      }

      v8 += 8;
      v9 -= 8;
    }

    while (v9);
  }

  if (a1)
  {
LABEL_57:

    JUMPOUT(0x23EED9460);
  }
}

uint64_t *absl::lts_20240722::cord_internal::CordRepBtree::Merge<(absl::lts_20240722::cord_internal::CordRepBtree::EdgeType)1>(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a2;
  v5 = *(a1 + 13);
  v6 = *(a2 + 13);
  v7 = (v5 - v6);
  if (v7 < 1)
  {
    LODWORD(v8) = 0;
    v9 = a1;
  }

  else
  {
    v8 = 0;
    v9 = a1;
    while (atomic_load_explicit((v9 + 8), memory_order_acquire) == 2)
    {
      *&v49[2 * v8 + 2] = v9;
      v9 = *(v9 + 8 * *(v9 + 15) + 8);
      if (v7 == ++v8)
      {
        if (atomic_load_explicit((v9 + 8), memory_order_acquire) == 2)
        {
          v10 = v7 + 1;
        }

        else
        {
          v10 = v5 - v6;
        }

        v49[0] = v10;
        goto LABEL_16;
      }
    }
  }

  if (atomic_load_explicit((v9 + 8), memory_order_acquire) == 2)
  {
    v10 = v8 + 1;
  }

  else
  {
    v10 = v8;
  }

  v49[0] = v10;
  if (v8 < v7)
  {
    v11 = &v49[2 * v8 + 2];
    do
    {
      *v11 = v9;
      v11 += 2;
      v9 = *(v9 + 8 * *(v9 + 15) + 8);
      LODWORD(v8) = v8 + 1;
    }

    while (v7 > v8);
  }

LABEL_16:
  if (*(v9 + 15) + *(a2 + 15) - (*(v9 + 14) + *(a2 + 14)) > 6)
  {
    v12 = 2;
    if (v5 == v6)
    {
      goto LABEL_39;
    }
  }

  if (v10 <= v7)
  {
    v13 = *v9;
    operator new();
  }

  v12 = 0;
  v14 = *(a2 + 14);
  v15 = *(a2 + 15);
  v16 = *(v9 + 14);
  v17 = *(v9 + 15);
  LODWORD(v18) = *(v9 + 15);
  if (*(v9 + 14))
  {
    v39 = v17 - v16;
    *(v9 + 14) = 0;
    LODWORD(v18) = (v17 - v16);
    *(v9 + 15) = v17 - v16;
    if (v17 != v16)
    {
      if (v39 < 2)
      {
        v40 = 0;
LABEL_50:
        v43 = v40 + v16;
        v44 = v40 + v16 - v17;
        v45 = (v9 + 8 * v40 + 16);
        v46 = (v9 + 8 * v43 + 16);
        do
        {
          v47 = *v46++;
          *v45++ = v47;
        }

        while (!__CFADD__(v44++, 1));
        goto LABEL_23;
      }

      v41 = (v9 + 16);
      v40 = v39 & 6;
      v42 = v40;
      do
      {
        *v41 = *(v41 + 8 * v16);
        ++v41;
        v42 -= 2;
      }

      while (v42);
      if (v39 != v40)
      {
        goto LABEL_50;
      }
    }
  }

LABEL_23:
  v19 = a2 + 16;
  if (v15 != v14)
  {
    v20 = (v19 + 8 * v14);
    v18 = v18;
    v21 = 8 * v14;
    v22 = 8 * v15 - 8 * v14 - 8;
    if (v22 <= 0x47)
    {
      goto LABEL_29;
    }

    v23 = 8 * v18 + v9;
    if ((v23 - (v21 + a2)) < 0x20)
    {
      goto LABEL_29;
    }

    v24 = (v22 >> 3) + 1;
    v18 = (v24 & 0x3FFFFFFFFFFFFFFCLL) + v18;
    v20 += v24 & 0x3FFFFFFFFFFFFFFCLL;
    v25 = (v23 + 32);
    v26 = (v21 + a2 + 32);
    v27 = v24 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v28 = *v26;
      *(v25 - 1) = *(v26 - 1);
      *v25 = v28;
      v25 += 2;
      v26 += 2;
      v27 -= 4;
    }

    while (v27);
    if (v24 != (v24 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_29:
      v29 = (v19 + 8 * v15);
      v30 = v18;
      do
      {
        v31 = *v20++;
        LOBYTE(v18) = v30 + 1;
        *(v9 + 16 + 8 * v30++) = v31;
      }

      while (v20 != v29);
    }
  }

  *(v9 + 15) = v18;
  *v9 += *a2;
  if (atomic_load_explicit((a2 + 8), memory_order_acquire) == 2)
  {
    MEMORY[0x23EED9460](a2, 0x1020C40CFACAFC6);
    v2 = v9;
    if (v5 == v6)
    {
      goto LABEL_39;
    }
  }

  v32 = *(a2 + 14);
  v33 = *(a2 + 15);
  if (v32 != v33)
  {
    v34 = 8 * v32;
    v35 = (v19 + 8 * v32);
    v36 = 8 * v33 - v34;
    do
    {
      v37 = *v35++;
      atomic_fetch_add_explicit((v37 + 8), 2u, memory_order_relaxed);
      v36 -= 8;
    }

    while (v36);
  }

  if (atomic_fetch_add((a2 + 8), 0xFFFFFFFE) != 2)
  {
    v2 = v9;
    if (v5 == v6)
    {
      goto LABEL_39;
    }
  }

  absl::lts_20240722::cord_internal::CordRep::Destroy(a2, a2);
  v2 = v9;
  if (v5 != v6)
  {
  }

LABEL_39:
  if (v12)
  {
    operator new();
  }

  return v2;
}

uint64_t *absl::lts_20240722::cord_internal::CordRepBtree::Merge<(absl::lts_20240722::cord_internal::CordRepBtree::EdgeType)0>(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a2;
  v5 = *(a1 + 13);
  v6 = *(a2 + 13);
  v7 = (v5 - v6);
  if (v7 < 1)
  {
    LODWORD(v8) = 0;
    v9 = a1;
  }

  else
  {
    v8 = 0;
    v9 = a1;
    while (atomic_load_explicit((v9 + 8), memory_order_acquire) == 2)
    {
      *&v44[2 * v8 + 2] = v9;
      v9 = *(v9 + 8 * *(v9 + 14) + 16);
      if (v7 == ++v8)
      {
        if (atomic_load_explicit((v9 + 8), memory_order_acquire) == 2)
        {
          v10 = v7 + 1;
        }

        else
        {
          v10 = v5 - v6;
        }

        v44[0] = v10;
        goto LABEL_16;
      }
    }
  }

  if (atomic_load_explicit((v9 + 8), memory_order_acquire) == 2)
  {
    v10 = v8 + 1;
  }

  else
  {
    v10 = v8;
  }

  v44[0] = v10;
  if (v8 < v7)
  {
    v11 = &v44[2 * v8 + 2];
    do
    {
      *v11 = v9;
      v11 += 2;
      v9 = *(v9 + 8 * *(v9 + 14) + 16);
      LODWORD(v8) = v8 + 1;
    }

    while (v7 > v8);
  }

LABEL_16:
  if (*(v9 + 15) + *(a2 + 15) - (*(v9 + 14) + *(a2 + 14)) > 6)
  {
    v12 = 2;
    if (v5 == v6)
    {
      goto LABEL_42;
    }
  }

  if (v10 <= v7)
  {
    v17 = *v9;
    operator new();
  }

  v12 = 0;
  v13 = *(a2 + 14);
  v14 = *(a2 + 15);
  v15 = v13 - v14;
  v16 = *(v9 + 15);
  if (v16 != 6)
  {
    v18 = 6 - v16 + *(v9 + 14);
    *(v9 + 14) = v18;
    *(v9 + 15) = 6;
    if (v18 <= 5)
    {
      v19 = 8 * v16 + 8;
      v20 = 5;
      v21 = v9;
      do
      {
        *(v21 + 56) = *(v21 + v19);
        --v20;
        v21 -= 8;
      }

      while (v20 >= v18);
    }
  }

  v22 = a2 + 16;
  v23 = *(v9 + 14);
  v24 = v15 + v23;
  *(v9 + 14) = v15 + v23;
  if (v14 != v13)
  {
    v25 = (v22 + 8 * v13);
    v26 = 8 * v13;
    v27 = 8 * v14 - 8 * v13 - 8;
    if (v27 < 0x48)
    {
      goto LABEL_32;
    }

    if ((v9 + 8 * v23 - (8 * v14 + a2)) < 0x20)
    {
      goto LABEL_32;
    }

    v28 = (v27 >> 3) + 1;
    v29 = v24 + (v28 & 0x3FFFFFFFFFFFFFFCLL);
    v25 += v28 & 0x3FFFFFFFFFFFFFFCLL;
    v30 = (v9 + 8 * v24 + 32);
    v31 = (v26 + a2 + 32);
    v32 = v28 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v33 = *v31;
      *(v30 - 1) = *(v31 - 1);
      *v30 = v33;
      v30 += 2;
      v31 += 2;
      v32 -= 4;
    }

    while (v32);
    v24 = v29;
    if (v28 != (v28 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_32:
      v34 = (v22 + 8 * v14);
      v35 = (v9 + 8 * v24 + 16);
      do
      {
        v36 = *v25++;
        *v35++ = v36;
      }

      while (v25 != v34);
    }
  }

  *v9 += *a2;
  if (atomic_load_explicit((a2 + 8), memory_order_acquire) == 2)
  {
    MEMORY[0x23EED9460](a2, 0x1020C40CFACAFC6);
    v2 = v9;
    if (v5 == v6)
    {
      goto LABEL_42;
    }
  }

  v37 = *(a2 + 14);
  v38 = *(a2 + 15);
  if (v37 != v38)
  {
    v39 = 8 * v37;
    v40 = (v22 + 8 * v37);
    v41 = 8 * v38 - v39;
    do
    {
      v42 = *v40++;
      atomic_fetch_add_explicit((v42 + 8), 2u, memory_order_relaxed);
      v41 -= 8;
    }

    while (v41);
  }

  if (atomic_fetch_add((a2 + 8), 0xFFFFFFFE) != 2)
  {
    v2 = v9;
    if (v5 == v6)
    {
      goto LABEL_42;
    }
  }

  absl::lts_20240722::cord_internal::CordRep::Destroy(a2, a2);
  v2 = v9;
  if (v5 != v6)
  {
  }

LABEL_42:
  if (v12)
  {
    operator new();
  }

  return v2;
}

uint64_t absl::lts_20240722::cord_internal::CordRepBtree::IsFlat(_BYTE *a1, void *a2)
{
  if (a1[13])
  {
    return 0;
  }

  v2 = a1[14];
  if (a1[15] - v2 != 1)
  {
    return 0;
  }

  if (!a2)
  {
    return 1;
  }

  v3 = *&a1[8 * v2 + 16];
  v4 = *(v3 + 12);
  if (v4 == 1)
  {
    v5 = v3[2];
    v6 = v3[3];
    v7 = *v3;
    if (*(v6 + 12) < 6u)
    {
LABEL_6:
      *a2 = v6[2] + v5;
      a2[1] = v7;
      return 1;
    }
  }

  else
  {
    v5 = 0;
    v6 = v3;
    v7 = *v3;
    if (v4 < 6)
    {
      goto LABEL_6;
    }
  }

  *a2 = v6 + v5 + 13;
  a2[1] = v7;
  return 1;
}

uint64_t absl::lts_20240722::cord_internal::CordRepBtree::IsFlat(unint64_t *a1, unint64_t a2, unint64_t a3, char **a4)
{
  if (a3)
  {
    v4 = *(a1 + 13);
    do
    {
      v5 = &a1[*(a1 + 14)];
      a1 = v5[2];
      v6 = *a1;
      if (*a1 <= a2)
      {
        v7 = (v5 + 3);
        do
        {
          a2 -= v6;
          v8 = *v7++;
          a1 = v8;
          v6 = *v8;
        }

        while (a2 >= *v8);
      }

      if (v6 < a2 + a3)
      {
        return 0;
      }
    }

    while (v4-- > 0);
    if (!a4)
    {
      return 1;
    }

    v10 = *(a1 + 12);
    if (v10 == 1)
    {
      v11 = a1[2];
      a1 = a1[3];
      if (*(a1 + 12) < 6u)
      {
LABEL_12:
        v12 = a1[2];
LABEL_16:
        v14 = v6 >= a2;
        v15 = v6 - a2;
        if (!v14)
        {
          std::__throw_out_of_range[abi:ne200100]("string_view::substr");
        }

        v16 = &v12[v11 + a2];
        if (v15 >= a3)
        {
          v15 = a3;
        }

        *a4 = v16;
        a4[1] = v15;
        return 1;
      }
    }

    else
    {
      v11 = 0;
      if (v10 < 6)
      {
        goto LABEL_12;
      }
    }

    v12 = a1 + 13;
    goto LABEL_16;
  }

  return 0;
}

uint64_t absl::lts_20240722::cord_internal::CordRepBtree::GetAppendBufferSlow(absl::lts_20240722::cord_internal::CordRepBtree *this, unint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(this + 13);
  memset(v22, 0, sizeof(v22));
  v3 = this;
  if (v2)
  {
    v4 = v22;
    v5 = v2;
    v3 = this;
    do
    {
      v3 = *(v3 + *(v3 + 15) + 1);
      if (atomic_load_explicit(v3 + 2, memory_order_acquire) != 2)
      {
        goto LABEL_19;
      }

      *v4++ = v3;
    }

    while (--v5);
  }

  v6 = *(v3 + *(v3 + 15) + 1);
  if (atomic_load_explicit(v6 + 2, memory_order_acquire) != 2)
  {
    goto LABEL_19;
  }

  v7 = *(v6 + 12);
  if (v7 < 6)
  {
    goto LABEL_19;
  }

  if (v7 >= 0xBB)
  {
    v8 = 12;
  }

  else
  {
    v8 = 6;
  }

  if (v7 >= 0xBB)
  {
    v9 = -753677;
  }

  else
  {
    v9 = -3725;
  }

  v10 = v7 >= 0x43;
  if (v7 < 0x43)
  {
    v8 = 3;
  }

  v11 = v7 << v8;
  v12 = v10 ? v9 : -29;
  v13 = (v11 + v12);
  v14 = *v6;
  v15 = v13 - *v6;
  if (!v15)
  {
LABEL_19:
    result = 0;
    v17 = *MEMORY[0x277D85DE8];
    return result;
  }

  if (v15 < a2)
  {
    a2 = v15;
  }

  v18 = v6 + v14 + 13;
  *v6 = a2 + v14;
  *this += a2;
  if (v2)
  {
    v19 = v22;
    do
    {
      v20 = *v19++;
      *v20 += a2;
      --v2;
    }

    while (v2);
  }

  result = v18;
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t absl::lts_20240722::cord_internal::CordRepBtree::CreateSlow(uint64_t result)
{
  if (*(result + 12) != 3)
  {
    v4[1] = v1;
    v4[2] = v2;
    v3 = v4;
    v4[0] = 0;
    absl::lts_20240722::cord_internal::Consume(result, &v3, absl::lts_20240722::functional_internal::InvokeObject<absl::lts_20240722::cord_internal::CordRepBtree::CreateSlow(absl::lts_20240722::cord_internal::CordRep *)::$_0,void,absl::lts_20240722::cord_internal::CordRep *,unsigned long,unsigned long>);
    return v4[0];
  }

  return result;
}

uint64_t *absl::lts_20240722::cord_internal::CordRepBtree::AppendSlow(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  if (*(a2 + 12) == 3)
  {
    if (*(a1 + 13) >= *(a2 + 13))
    {

      return absl::lts_20240722::cord_internal::CordRepBtree::Merge<(absl::lts_20240722::cord_internal::CordRepBtree::EdgeType)1>(a1, a2);
    }

    else
    {

      return absl::lts_20240722::cord_internal::CordRepBtree::Merge<(absl::lts_20240722::cord_internal::CordRepBtree::EdgeType)0>(a2, a1);
    }
  }

  else
  {
    v3 = &v4;
    absl::lts_20240722::cord_internal::Consume(a2, &v3, absl::lts_20240722::functional_internal::InvokeObject<absl::lts_20240722::cord_internal::CordRepBtree::AppendSlow(absl::lts_20240722::cord_internal::CordRepBtree*,absl::lts_20240722::cord_internal::CordRep *)::$_0,void,absl::lts_20240722::cord_internal::CordRep *,unsigned long,unsigned long>);
    return v4;
  }
}

void absl::lts_20240722::cord_internal::CordRepBtree::Rebuild(absl::lts_20240722::cord_internal::CordRepBtree *this, atomic_uint *a2, absl::lts_20240722::cord_internal::CordRepBtree *a3, BOOL a4)
{
  v34 = a3;
  if (a3)
  {
    v5 = atomic_load_explicit(a2 + 2, memory_order_acquire) == 2;
  }

  else
  {
    v5 = 0;
  }

  v6 = (a2 + 4);
  v7 = *(a2 + 14);
  v8 = *(a2 + 15);
  if (!*(a2 + 13))
  {
    if (v7 == v8)
    {
      goto LABEL_11;
    }

    v13 = &v6[v8];
    v14 = &v6[v7];
    while (1)
    {
      v15 = *v14;
      if (!v5)
      {
        atomic_fetch_add_explicit(v15 + 2, 2u, memory_order_relaxed);
      }

      v16 = *v15;
      v17 = *this;
      v18 = *(*this + 15);
      v19 = *(*this + 14);
      v20 = v18 - v19;
      if ((v18 - v19) >= 6)
      {
        operator new();
      }

      if (*(*this + 14))
      {
        *(v17 + 14) = 0;
        *(v17 + 15) = v20;
        if (v18 != v19)
        {
          v24 = v17 + 16;
          if (v20 < 2)
          {
            v25 = 0;
            goto LABEL_37;
          }

          v25 = v20 & 6;
          v26 = v25;
          v27 = (v17 + 16);
          do
          {
            *v27 = *(v27 + 8 * v19);
            ++v27;
            v26 -= 2;
          }

          while (v26);
          if (v20 != v25)
          {
LABEL_37:
            v28 = v25 + v19;
            v29 = v25 + v19 - v18;
            v30 = (v24 + 8 * v25);
            v31 = (v24 + 8 * v28);
            do
            {
              v32 = *v31++;
              *v30++ = v32;
            }

            while (!__CFADD__(v29++, 1));
          }

          *(v17 + 15) = v20 + 1;
          *(v24 + 8 * v20) = v15;
          goto LABEL_26;
        }

        LOBYTE(v18) = v18 - v19;
      }

      *(v17 + 15) = v18 + 1;
      *(v17 + 8 * v18 + 16) = v15;
LABEL_26:
      *v17 += v16;
      v21 = *(this + 1);
      if (v21)
      {
        v22 = (this + 16);
        do
        {
          *v21 += v16;
          v23 = *v22++;
          v21 = v23;
        }

        while (v23);
      }

      if (++v14 == v13)
      {
        goto LABEL_11;
      }
    }
  }

  if (v7 != v8)
  {
    v9 = v7;
    v10 = &v6[v9];
    v11 = 8 * v8 - v9 * 8;
    do
    {
      v12 = *v10++;
      absl::lts_20240722::cord_internal::CordRepBtree::Rebuild(this, v12, v5, a4);
      v11 -= 8;
    }

    while (v11);
  }

LABEL_11:
  if (v34)
  {
    if (v5)
    {
      if (a2)
      {

        JUMPOUT(0x23EED9460);
      }
    }

    else if (atomic_fetch_add(a2 + 2, 0xFFFFFFFE) == 2)
    {

      absl::lts_20240722::cord_internal::CordRep::Destroy(a2, a2);
    }
  }
}

uint64_t absl::lts_20240722::cord_internal::CordRepBtree::ExtractAppendBuffer(uint64_t this, absl::lts_20240722::cord_internal::CordRepBtree *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = *MEMORY[0x277D85DE8];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  if (*(this + 13))
  {
    v8 = 0;
    v9 = this;
    while (atomic_load_explicit((v9 + 8), memory_order_acquire) == 2)
    {
      *(&v30 + v8) = v9;
      v10 = v8 + 1;
      v9 = *(v9 + 8 * *(v9 + 15) + 8);
      ++v8;
      if (!*(v9 + 13))
      {
        if (atomic_load_explicit((v9 + 8), memory_order_acquire) != 2)
        {
          break;
        }

        goto LABEL_8;
      }
    }
  }

  else
  {
    v10 = 0;
    v9 = this;
    if (atomic_load_explicit((this + 8), memory_order_acquire) == 2)
    {
LABEL_8:
      v11 = *(v9 + 8 * *(v9 + 15) + 8);
      if (*(v11 + 12) >= 6u && atomic_load_explicit(v11 + 2, memory_order_acquire) == 2)
      {
        v12 = *v11;
        v13 = *(v11 + 12);
        if (v13 >= 0xBB)
        {
          v14 = 12;
        }

        else
        {
          v14 = 6;
        }

        if (v13 >= 0xBB)
        {
          v15 = -753677;
        }

        else
        {
          v15 = -3725;
        }

        v16 = v13 >= 0x43;
        if (v13 < 0x43)
        {
          v14 = 3;
        }

        v17 = v13 << v14;
        v18 = v16 ? v15 : -29;
        if ((v17 + v18) - v12 >= a2)
        {
          v20 = *(v9 + 15);
          if (v20 - *(v9 + 14) == 1)
          {
            v21 = &v30 + v10 - 1;
            while (1)
            {
              MEMORY[0x23EED9460](v9, 0x1020C40CFACAFC6);
              v22 = __OFSUB__(v10--, 1);
              if (v10 < 0 != v22)
              {
                break;
              }

              v23 = *v21--;
              v9 = v23;
              v20 = *(v23 + 15);
              if (v20 - *(v23 + 14) != 1)
              {
                goto LABEL_27;
              }
            }

            this = 0;
          }

          else
          {
LABEL_27:
            *(v9 + 15) = v20 - 1;
            *v9 -= v12;
            if (v10 >= 1)
            {
              v24 = v10 + 1;
              v25 = &v30 + v10 - 1;
              do
              {
                v26 = *v25--;
                v9 = v26;
                *v26 -= v12;
                --v24;
              }

              while (v24 > 1);
            }

            this = v9;
            while (1)
            {
              v27 = *(this + 15);
              if (v27 - *(this + 14) != 1)
              {
                break;
              }

              v28 = *(this + 13);
              v29 = *(this + 8 * v27 + 8);
              MEMORY[0x23EED9460](this, 0x1020C40CFACAFC6, a3, a4, a5, a6, a7, a8, v30, *(&v30 + 1), v31, *(&v31 + 1));
              this = v29;
              if (!v28)
              {
                this = v29;
                break;
              }
            }
          }
        }
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return this;
}

uint64_t *absl::lts_20240722::functional_internal::InvokeObject<absl::lts_20240722::cord_internal::CordRepBtree::CreateSlow(absl::lts_20240722::cord_internal::CordRep *)::$_0,void,absl::lts_20240722::cord_internal::CordRep *,unsigned long,unsigned long>(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*a2 == a4)
  {
    v6 = **a1;
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (a4)
    {
      if (*(a2 + 12) == 1)
      {
        v5 = *(a2 + 16) + a3;
        atomic_fetch_add_explicit((*(a2 + 24) + 8), 2u, memory_order_relaxed);
        if (atomic_fetch_add((a2 + 8), 0xFFFFFFFE) == 2)
        {
          absl::lts_20240722::cord_internal::CordRep::Destroy(a2, a2);
        }
      }

      operator new();
    }

    if (atomic_fetch_add((a2 + 8), 0xFFFFFFFE) == 2)
    {
      absl::lts_20240722::cord_internal::CordRep::Destroy(a2, a2);
      a2 = 0;
      v6 = **a1;
      if (!v6)
      {
        goto LABEL_13;
      }
    }

    else
    {
      a2 = 0;
      v6 = **a1;
      if (!v6)
      {
LABEL_13:
        operator new();
      }
    }
  }

  result = absl::lts_20240722::cord_internal::CordRepBtree::AddCordRep<(absl::lts_20240722::cord_internal::CordRepBtree::EdgeType)1>(v6, a2);
  **a1 = result;
  return result;
}

uint64_t *absl::lts_20240722::functional_internal::InvokeObject<absl::lts_20240722::cord_internal::CordRepBtree::AppendSlow(absl::lts_20240722::cord_internal::CordRepBtree*,absl::lts_20240722::cord_internal::CordRep *)::$_0,void,absl::lts_20240722::cord_internal::CordRep *,unsigned long,unsigned long>(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*a2 != a4)
  {
    if (a4)
    {
      if (*(a2 + 12) == 1)
      {
        v5 = *(a2 + 16) + a3;
        atomic_fetch_add_explicit((*(a2 + 24) + 8), 2u, memory_order_relaxed);
        if (atomic_fetch_add((a2 + 8), 0xFFFFFFFE) == 2)
        {
          absl::lts_20240722::cord_internal::CordRep::Destroy(a2, a2);
        }
      }

      operator new();
    }

    if (atomic_fetch_add((a2 + 8), 0xFFFFFFFE) == 2)
    {
      absl::lts_20240722::cord_internal::CordRep::Destroy(a2, a2);
    }

    a2 = 0;
  }

  result = absl::lts_20240722::cord_internal::CordRepBtree::AddCordRep<(absl::lts_20240722::cord_internal::CordRepBtree::EdgeType)1>(**a1, a2);
  **a1 = result;
  return result;
}

_DWORD *OUTLINED_FUNCTION_9(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{

  return absl::lts_20240722::raw_log_internal::RawLog(3, a2, 280, a4, a5, a6, a7, a8, a9);
}

uint64_t absl::lts_20240722::cord_internal::Consume(uint64_t a1, absl::lts_20240722::cord_internal::CordRepBtree *a2, uint64_t (*a3)(void, void, void, void))
{
  v5 = a1;
  v6 = *a1;
  if (*(a1 + 12) != 1)
  {
    v7 = 0;
    goto LABEL_8;
  }

  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  if (atomic_load_explicit((a1 + 8), memory_order_acquire) == 2)
  {
    v9 = v6;
    v10 = v7;
    v12 = a3;
    MEMORY[0x23EED9460](a1, 0x1020C40A5B76CDFLL);
  }

  else
  {
    atomic_fetch_add_explicit((v8 + 8), 2u, memory_order_relaxed);
    if (atomic_fetch_add((a1 + 8), 0xFFFFFFFE) != 2)
    {
      goto LABEL_7;
    }

    v9 = v6;
    v10 = v7;
    v12 = a3;
    absl::lts_20240722::cord_internal::CordRep::Destroy(a1, a2);
  }

  a3 = v12;
  v7 = v10;
  v6 = v9;
LABEL_7:
  v5 = v8;
LABEL_8:

  return a3(a2, v5, v7, v6);
}

void absl::lts_20240722::cord_internal::CordRepCrc::Destroy(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 && atomic_fetch_add((v2 + 8), 0xFFFFFFFE) == 2)
  {
    absl::lts_20240722::cord_internal::CordRep::Destroy(v2);
  }

  absl::lts_20240722::crc_internal::CrcCordState::~CrcCordState((a1 + 24));

  JUMPOUT(0x23EED9460);
}

absl::lts_20240722::cord_internal::CordzHandle *absl::lts_20240722::cord_internal::CordzHandle::CordzHandle(absl::lts_20240722::cord_internal::CordzHandle *this, int a2)
{
  *this = &unk_284F38C00;
  *(this + 8) = a2;
  *(this + 2) = 0;
  *(this + 3) = 0;
  if (atomic_load_explicit(&_MergedGlobals_35, memory_order_acquire))
  {
    if (!a2)
    {
      return this;
    }
  }

  else
  {
    absl::lts_20240722::cord_internal::CordzHandle::CordzHandle();
    if (!a2)
    {
      return this;
    }
  }

  absl::lts_20240722::Mutex::Lock(&qword_2810C1028);
  explicit = atomic_load_explicit(&qword_2810C1030, memory_order_acquire);
  if (explicit)
  {
    *(this + 2) = explicit;
    *(explicit + 24) = this;
  }

  atomic_store(this, &qword_2810C1030);
  absl::lts_20240722::Mutex::Unlock(&qword_2810C1028);
  return this;
}

void absl::lts_20240722::cord_internal::CordzHandle::~CordzHandle(absl::lts_20240722::cord_internal::CordzHandle *this)
{
  *this = &unk_284F38C00;
  if (atomic_load_explicit(&_MergedGlobals_35, memory_order_acquire))
  {
    if (*(this + 8) == 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    absl::lts_20240722::cord_internal::CordzHandle::CordzHandle();
    if (*(this + 8) == 1)
    {
LABEL_3:
      absl::lts_20240722::Mutex::Lock(&qword_2810C1028);
      v2 = *(this + 2);
      v3 = *(this + 3);
      if (v2)
      {
        *(v2 + 24) = v3;
        if (!v3)
        {
          goto LABEL_10;
        }
      }

      else
      {
        if (!v3)
        {
          v2 = 0;
LABEL_10:
          atomic_store(v2, &qword_2810C1030);
LABEL_13:
          absl::lts_20240722::Mutex::Unlock(&qword_2810C1028);
          return;
        }

        if ((*(v3 + 8) & 1) == 0)
        {
          operator new();
        }

        v2 = *(this + 2);
      }

      *(v3 + 16) = v2;
      goto LABEL_13;
    }
  }
}

{
  absl::lts_20240722::cord_internal::CordzHandle::~CordzHandle(this);

  JUMPOUT(0x23EED9460);
}

BOOL absl::lts_20240722::cord_internal::CordzHandle::SafeToDelete(absl::lts_20240722::cord_internal::CordzHandle *this)
{
  if (*(this + 8))
  {
    return 1;
  }

  if ((atomic_load_explicit(&_MergedGlobals_35, memory_order_acquire) & 1) == 0)
  {
    absl::lts_20240722::cord_internal::CordzHandle::CordzHandle();
  }

  return atomic_load_explicit(&qword_2810C1030, memory_order_acquire) == 0;
}

void absl::lts_20240722::cord_internal::CordzHandle::Delete(absl::lts_20240722::cord_internal::CordzHandle *this, absl::lts_20240722::cord_internal::CordzHandle *a2)
{
  if (!this)
  {
    return;
  }

  if (atomic_load_explicit(&_MergedGlobals_35, memory_order_acquire))
  {
    if (*(this + 8))
    {
      goto LABEL_10;
    }
  }

  else
  {
    absl::lts_20240722::cord_internal::CordzHandle::CordzHandle();
    if (*(this + 8))
    {
      goto LABEL_10;
    }
  }

  if (atomic_load_explicit(&_MergedGlobals_35, memory_order_acquire))
  {
    if (atomic_load_explicit(&qword_2810C1030, memory_order_acquire))
    {
LABEL_6:
      absl::lts_20240722::Mutex::Lock(&qword_2810C1028);
      explicit = atomic_load_explicit(&qword_2810C1030, memory_order_acquire);
      if (explicit)
      {
        *(this + 2) = explicit;
        *(explicit + 24) = this;
        atomic_store(this, &qword_2810C1030);
        absl::lts_20240722::Mutex::Unlock(&qword_2810C1028);
        return;
      }

      absl::lts_20240722::Mutex::Unlock(&qword_2810C1028);
    }
  }

  else
  {
    absl::lts_20240722::cord_internal::CordzHandle::CordzHandle();
    if (atomic_load_explicit(&qword_2810C1030, memory_order_acquire))
    {
      goto LABEL_6;
    }
  }

LABEL_10:
  v4 = *(*this + 8);

  v4(this);
}

uint64_t OUTLINED_FUNCTION_0_0()
{
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  return v0;
}

void absl::lts_20240722::cord_internal::CordzInfo::TrackCord(void *a1)
{
  v1 = (*a1 - 1);
  if (v1)
  {
    absl::lts_20240722::cord_internal::CordzInfo::Untrack(v1);
  }

  operator new();
}

void absl::lts_20240722::cord_internal::CordzInfo::Untrack(absl::lts_20240722::cord_internal::CordzInfo *this)
{
  v2 = *(this + 4);
  if (*v2 & 1) != 0 || (v3 = *v2, atomic_compare_exchange_strong_explicit(v2, &v3, v3 | 1, memory_order_acquire, memory_order_acquire), (v3))
  {
    v10 = v2;
    absl::lts_20240722::base_internal::SpinLock::SlowLock(v2);
    v2 = v10;
  }

  atomic_load_explicit((*(this + 4) + 8), memory_order_acquire);
  explicit = atomic_load_explicit(this + 6, memory_order_acquire);
  v5 = atomic_load_explicit(this + 5, memory_order_acquire);
  if (explicit)
  {
    atomic_store(v5, (explicit + 40));
  }

  if (!v5)
  {
    atomic_store(explicit, (*(this + 4) + 8));
    v6 = atomic_exchange_explicit(v2, *v2 & 2, memory_order_release);
    if (v6 < 8)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  atomic_store(explicit, (v5 + 48));
  v6 = atomic_exchange_explicit(v2, *v2 & 2, memory_order_release);
  if (v6 >= 8)
  {
LABEL_9:
    absl::lts_20240722::base_internal::SpinLock::SlowUnlock(v2, v6);
  }

LABEL_10:
  if (absl::lts_20240722::cord_internal::CordzHandle::SafeToDelete(this))
  {
    *(this + 8) = 0;
    v7 = *(*this + 8);

    v7(this);
  }

  else
  {
    absl::lts_20240722::Mutex::Lock(this + 7);
    v8 = *(this + 8);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 2u, memory_order_relaxed);
    }

    absl::lts_20240722::Mutex::Unlock((this + 56));

    absl::lts_20240722::cord_internal::CordzHandle::Delete(this, v9);
  }
}

void absl::lts_20240722::cord_internal::CordzInfo::MaybeTrackCordImpl(void *a1, void *a2)
{
  if (*a2 != 1)
  {

    absl::lts_20240722::cord_internal::CordzInfo::TrackCord(a1);
  }

  if (*a1 != 1)
  {
    absl::lts_20240722::cord_internal::CordzInfo::Untrack((*a1 - 1));
    *a1 = 1;
  }
}

uint64_t absl::lts_20240722::cord_internal::CordzInfo::CordzInfo(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v10 = absl::lts_20240722::cord_internal::CordzHandle::CordzHandle(a1, 0);
  *v10 = &unk_284F38C30;
  *(v10 + 4) = &absl::lts_20240722::cord_internal::CordzInfo::global_list_;
  *(v10 + 5) = 0;
  *(v10 + 6) = 0;
  *(v10 + 7) = 0;
  *(v10 + 8) = a2;
  StackTrace = absl::lts_20240722::GetStackTrace((v10 + 72), 0x40, 1);
  *(a1 + 1096) = StackTrace;
  if (a3)
  {
    v12 = *(a3 + 1104);
    if (v12)
    {
      v13 = (a3 + 1104);
      v14 = (a3 + 584);
    }

    else
    {
      v14 = (a3 + 72);
      v13 = (a3 + 1096);
      v12 = *(a3 + 1096);
    }

    StackTrace = memcpy((a1 + 584), v14, 8 * v12);
    *(a1 + 1104) = *v13;
    *(a1 + 1112) = a4;
    v15 = *(a3 + 1116);
    if (!v15)
    {
      v15 = *(a3 + 1112);
    }
  }

  else
  {
    v15 = 0;
    *(a1 + 1104) = 0;
    *(a1 + 1112) = a4;
  }

  *(a1 + 1116) = v15;
  *(a1 + 1120) = 0u;
  *(a1 + 1136) = 0u;
  *(a1 + 1152) = 0u;
  *(a1 + 1168) = 0u;
  *(a1 + 1184) = 0u;
  *(a1 + 1200) = 0u;
  *(a1 + 1216) = 0u;
  *(a1 + 1232) = 0u;
  *(a1 + 1248) = 0u;
  *(a1 + 1264) = 0u;
  *(a1 + 1280) = 0u;
  *(a1 + 1296) = 0u;
  *(a1 + 1312) = 0;
  *(a1 + 1320) = absl::lts_20240722::Now(StackTrace);
  *(a1 + 1328) = v16;
  *(a1 + 1336) = a5;
  ++*(a1 + 1120 + 8 * a4);
  if (a3)
  {
    absl::lts_20240722::cord_internal::CordzUpdateTracker::LossyAdd((a1 + 1120), (a3 + 1120));
  }

  return a1;
}

void sub_23C952870(_Unwind_Exception *a1)
{
  absl::lts_20240722::Mutex::~Mutex((v1 + 56));
  absl::lts_20240722::cord_internal::CordzHandle::~CordzHandle(v1);
  _Unwind_Resume(a1);
}

void *absl::lts_20240722::cord_internal::CordzUpdateTracker::LossyAdd(void *result, void *a2)
{
  if (*a2)
  {
    *result += *a2;
  }

  v2 = a2[1];
  if (v2)
  {
    result[1] += v2;
  }

  v3 = a2[2];
  if (v3)
  {
    result[2] += v3;
  }

  v4 = a2[3];
  if (v4)
  {
    result[3] += v4;
  }

  v5 = a2[4];
  if (v5)
  {
    result[4] += v5;
  }

  v6 = a2[5];
  if (v6)
  {
    result[5] += v6;
  }

  v7 = a2[6];
  if (v7)
  {
    result[6] += v7;
  }

  v8 = a2[7];
  if (v8)
  {
    result[7] += v8;
  }

  v9 = a2[8];
  if (v9)
  {
    result[8] += v9;
  }

  v10 = a2[9];
  if (v10)
  {
    result[9] += v10;
  }

  v11 = a2[10];
  if (v11)
  {
    result[10] += v11;
  }

  v12 = a2[11];
  if (v12)
  {
    result[11] += v12;
  }

  v13 = a2[12];
  if (v13)
  {
    result[12] += v13;
  }

  v14 = a2[13];
  if (v14)
  {
    result[13] += v14;
  }

  v15 = a2[14];
  if (v15)
  {
    result[14] += v15;
  }

  v16 = a2[15];
  if (v16)
  {
    result[15] += v16;
  }

  v17 = a2[16];
  if (v17)
  {
    result[16] += v17;
  }

  v18 = a2[17];
  if (v18)
  {
    result[17] += v18;
  }

  v19 = a2[18];
  if (v19)
  {
    result[18] += v19;
  }

  v20 = a2[19];
  if (v20)
  {
    result[19] += v20;
  }

  v21 = a2[20];
  if (v21)
  {
    result[20] += v21;
  }

  v22 = a2[21];
  if (v22)
  {
    result[21] += v22;
  }

  v23 = a2[22];
  if (v23)
  {
    result[22] += v23;
  }

  v24 = a2[23];
  if (v24)
  {
    result[23] += v24;
  }

  v25 = a2[24];
  if (v25)
  {
    result[24] += v25;
  }

  return result;
}

void absl::lts_20240722::cord_internal::CordzInfo::~CordzInfo(absl::lts_20240722::cord_internal::CordzInfo *this, absl::lts_20240722::cord_internal::CordRepBtree *a2)
{
  *this = &unk_284F38C30;
  v3 = *(this + 8);
  if (v3 && atomic_fetch_add((v3 + 8), 0xFFFFFFFE) == 2)
  {
    absl::lts_20240722::cord_internal::CordRep::Destroy(v3, a2);
  }

  absl::lts_20240722::Mutex::~Mutex((this + 56));

  absl::lts_20240722::cord_internal::CordzHandle::~CordzHandle(this);
}

{
  *this = &unk_284F38C30;
  v3 = *(this + 8);
  if (v3 && atomic_fetch_add((v3 + 8), 0xFFFFFFFE) == 2)
  {
    absl::lts_20240722::cord_internal::CordRep::Destroy(v3, a2);
  }

  absl::lts_20240722::Mutex::~Mutex((this + 56));
  absl::lts_20240722::cord_internal::CordzHandle::~CordzHandle(this);

  JUMPOUT(0x23EED9460);
}

atomic_ullong *absl::lts_20240722::cord_internal::CordzInfo::Lock(uint64_t a1, unsigned int a2)
{
  result = absl::lts_20240722::Mutex::Lock((a1 + 56));
  ++*(a1 + 8 * a2 + 1120);
  return result;
}

void absl::lts_20240722::cord_internal::CordzInfo::Unlock(absl::lts_20240722::cord_internal::CordzInfo *this)
{
  v2 = *(this + 8);
  absl::lts_20240722::Mutex::Unlock((this + 56));
  if (!v2)
  {

    absl::lts_20240722::cord_internal::CordzInfo::Untrack(this);
  }
}

void absl::lts_20240722::crc_internal::CrcCordState::~CrcCordState(atomic_uint *volatile *this)
{
  v1 = *this;
  add = atomic_fetch_add(*this, 0xFFFFFFFF);
  if (v1)
  {
    v3 = add == 1;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    std::deque<absl::lts_20240722::crc_internal::CrcCordState::PrefixCrc>::~deque[abi:ne200100]((v1 + 6));
    MEMORY[0x23EED9460](v1, 0x1080C4066DAC9B1);
  }
}

char *absl::lts_20240722::debugging_internal::DecodeRustPunycode(char **a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = v1 - v2;
  if (v1 == v2)
  {
    return 0;
  }

  v4 = *a1;
  v5 = a1[1];
  *v2 = 0;
  if (v5 - v4 < 1)
  {
    goto LABEL_17;
  }

  v6 = 0;
  v7 = -1;
  do
  {
    v8 = v4[v6];
    if (v8 == 95)
    {
      v7 = v6;
    }

    else if ((v8 - 48) >= 0xA && (v8 & 0xFFFFFFDF) - 65 > 0x19)
    {
      return 0;
    }

    ++v6;
  }

  while (v5 - v4 != v6);
  if ((v7 & 0x80000000) != 0)
  {
LABEL_17:
    v7 = 0;
    memset(v63, 0, sizeof(v63));
    if (v4 == v5)
    {
      return &v2[v7];
    }

LABEL_18:
    v12 = 0;
    if (v7 <= 0x100)
    {
      v13 = 256;
    }

    else
    {
      v13 = v7;
    }

    v14 = 128;
    v15 = 72;
    v16 = v7;
    while (v16 != v13)
    {
      v17 = v15 + 1;
      v18 = v15 + 26;
      v19 = 36;
      v20 = 36 - v15;
      v21 = 1;
      LODWORD(v22) = v12;
      v23 = v4;
      while (1)
      {
        v25 = *v23++;
        v24 = v25;
        if ((v25 - 48) > 9)
        {
          v26 = v24 - 97;
          if ((v24 - 97) > 0x19)
          {
            v26 = v24 - 65;
            if ((v24 - 65) > 0x19)
            {
              return 0;
            }
          }
        }

        else
        {
          v26 = v24 - 22;
        }

        if ((v26 & 0x80000000) != 0)
        {
          return 0;
        }

        v22 = v21 * v26 + v22;
        if (v22 > 0x40000000)
        {
          return 0;
        }

        if (v19 >= v18)
        {
          v27 = 26;
        }

        else
        {
          v27 = v20;
        }

        if (v19 <= v17)
        {
          v27 = 1;
        }

        if (v26 < v27)
        {
          break;
        }

        v21 *= 36 - v27;
        v19 += 36;
        v20 += 36;
        v4 = v23;
        if (v23 == v5)
        {
          return 0;
        }
      }

      v60 = v3;
      v28 = v22 - v12;
      if (v12)
      {
        v29 = 2;
      }

      else
      {
        v29 = 700;
      }

      v30 = v28 / v29;
      v31 = v16 + 1;
      v32 = v30 / v31 + v30;
      v59 = v13;
      v33 = 0;
      if (v32 >= 0x1C8)
      {
        v34 = v30 / v31 + v30;
        do
        {
          v32 = v34 / 0x23;
          v33 += 36;
          v35 = v34 >> 3;
          v34 /= 0x23u;
        }

        while (v35 > 0x7CA);
      }

      v36 = v31;
      v37 = v22 / v31;
      v58 = v37 + v14;
      absl::lts_20240722::debugging_internal::Utf8ForCodePoint::Utf8ForCodePoint(__src, v58);
      v38 = v62;
      if (!v62 || v60 < v7 + 1 + v62)
      {
        break;
      }

      v39 = v22 - v37 * v36;
      v16 = v36;
      if (v39 >= 0xFF)
      {
        v40 = 255;
      }

      else
      {
        v40 = v39;
      }

      v41 = v40 >> 5;
      v42 = 2 * (v40 & 0x1F);
      v43 = -1 << v42;
      v44 = *(v63 + (v40 >> 5));
      v45 = v44 & ~(-1 << v42);
      v46 = vcnt_s8(v45);
      v46.i16[0] = vaddlv_u8(v46);
      v47 = v46.i32[0];
      v48 = vcnt_s8((v45 & 0xAAAAAAAAAAAAAAAALL));
      v48.i16[0] = vaddlv_u8(v48);
      v49 = v48.i32[0];
      v50 = v40 >> 5;
      if (v39 >= 0x20)
      {
        do
        {
          v51 = vcnt_s8(*(v63 + 8 * --v50));
          v51.i16[0] = vaddlv_u8(v51);
          v47 += v51.i32[0];
          v52 = vcnt_s8((*(v63 + v50) & 0xAAAAAAAAAAAAAAAALL));
          v52.i16[0] = vaddlv_u8(v52);
          v49 += v52.i32[0];
        }

        while (v50);
      }

      v57 = v39;
      if (v41 != 7)
      {
        *(&v63[3] + 1) = v63[3] >> 62;
        if (v39 <= 0xBF)
        {
          *&v63[3] = *(&v63[2] + 8) >> 62;
          if (v39 <= 0x9F)
          {
            *(&v63[2] + 1) = v63[2] >> 62;
            if (v39 <= 0x7F)
            {
              *&v63[2] = *(&v63[1] + 8) >> 62;
              if (v39 <= 0x5F)
              {
                *(&v63[1] + 1) = v63[1] >> 62;
                if (v39 <= 0x3F)
                {
                  *&v63[1] = *(v63 + 8) >> 62;
                  if (v39 <= 0x1F)
                  {
                    *(&v63[0] + 1) = v63[0] >> 62;
                  }
                }
              }
            }
          }
        }

        v44 = *(v63 + v41);
        v45 = v44 & ~v43;
      }

      ++v4;
      v15 = v33 + 4 * ((9 * v32) & 0x3FFFu) / (v32 + 38);
      v53 = v47 + v40 + v49;
      if (v62 - 5 >= 0xFFFFFFFC)
      {
        v54 = v62 - 1;
      }

      else
      {
        v54 = 0;
      }

      *(v63 + v41) = v45 | (v54 << v42) | (4 * (v44 & v43));
      v55 = &v2[v53];
      v56 = v38;
      memmove(&v2[v53 + v38], &v2[v53], v7 + 1 - v53);
      memcpy(v55, __src, v56);
      v7 += v56;
      v12 = v57 + 1;
      v3 = v60;
      v13 = v59;
      v14 = v58;
      if (v4 == v5)
      {
        return &v2[v7];
      }
    }

    return 0;
  }

  if (!v7)
  {
    return 0;
  }

  v10 = v7 + 1;
  if (v3 < v10)
  {
    return 0;
  }

  memcpy(v2, v4, v7);
  v2[v7] = 0;
  v4 += v10;
  memset(v63, 0, sizeof(v63));
  if (v4 != v5)
  {
    goto LABEL_18;
  }

  return &v2[v7];
}

unint64_t absl::lts_20240722::debugging_internal::Demangle(absl::lts_20240722::debugging_internal *this, char *a2, char *a3)
{
  v5 = *this;
  if (__PAIR64__(*(this + 1), v5) == 0x520000005FLL)
  {

    return absl::lts_20240722::debugging_internal::DemangleRustSymbolEncoding(this, a2, a3);
  }

  v26 = v3;
  v27 = v4;
  v19[0] = this;
  v19[1] = a2;
  v24 = 0;
  v25 = -65536;
  v20 = a3;
  v22 = 3;
  if (v5 != 95)
  {
    return 0;
  }

  if (*(this + 1) != 90)
  {
    return 0;
  }

  v23 = 2;
  v21 = 2;
  result = absl::lts_20240722::debugging_internal::ParseEncoding(v19);
  --v21;
  if (!result)
  {
    return result;
  }

  v7 = (v19[0] + v23);
  if (!*v7)
  {
    return v24 < v20 && v24 > 0;
  }

  v8 = 0;
  v9 = v23 + v19[0] + 2;
  while (v7[v8] == 46)
  {
    v11 = v7[v8 + 1];
    v10 = v11 == 95 || (v11 & 0xFFFFFFDF) - 65 < 0x1A;
    if (!v10)
    {
      goto LABEL_26;
    }

    do
    {
      v13 = *(v9 + v8++);
    }

    while (v13 == 95 || (v13 & 0xFFFFFFDF) - 65 < 0x1A);
    ++v8;
    if (v13 == 46)
    {
LABEL_26:
      if (v7[v8 + 1] - 48 > 9)
      {
        goto LABEL_11;
      }

      do
      {
        v15 = *(v9 + v8++) - 48;
      }

      while (v15 < 0xA);
      ++v8;
    }

    LOBYTE(v10) = 1;
LABEL_11:
    if (!v10)
    {
      goto LABEL_32;
    }
  }

  if (!v7[v8])
  {
    return v24 < v20 && v24 > 0;
  }

LABEL_32:
  if (*v7 != 64)
  {
    return 0;
  }

  if (v25 < 0)
  {
    v16 = 0;
      ;
    }

    absl::lts_20240722::debugging_internal::MaybeAppendWithLength(v19, v7, v16);
  }

  return v24 < v20 && v24 > 0;
}

uint64_t absl::lts_20240722::debugging_internal::MaybeAppend(uint64_t result, char *a2)
{
  if ((*(result + 40) & 0x80000000) != 0)
  {
    if (*a2)
    {
      v2 = 0;
      do
      {
        v3 = v2 + 1;
      }

      while (a2[++v2]);
    }

    else
    {
      v3 = 0;
    }

    return absl::lts_20240722::debugging_internal::MaybeAppendWithLength(result, a2, v3);
  }

  return result;
}

uint64_t absl::lts_20240722::debugging_internal::ParseTwoCharToken(uint64_t a1, unsigned __int8 *a2)
{
  v2 = 0;
  v3 = *(a1 + 20);
  *(a1 + 20) = vadd_s32(v3, 0x100000001);
  if (v3.i32[0] > 255 || v3.i32[1] >= 0x20000)
  {
    goto LABEL_6;
  }

  v4 = *(a1 + 28);
  v5 = (*a1 + v4);
  if (*v5 == *a2 && v5[1] == a2[1])
  {
    *(a1 + 28) = v4 + 2;
    v2 = 1;
LABEL_6:
    *(a1 + 20) = v3.i32[0];
    return v2;
  }

  *(a1 + 20) = v3.i32[0];
  return 0;
}

uint64_t absl::lts_20240722::debugging_internal::ParseEncoding(uint64_t a1)
{
  result = 0;
  v3 = *(a1 + 20);
  v4 = vadd_s32(v3, 0x100000001);
  *(a1 + 20) = v4;
  v5 = v4.i32[0];
  if (v3.i32[0] > 255 || v3.i32[1] >= 0x20000)
  {
    goto LABEL_126;
  }

  result = absl::lts_20240722::debugging_internal::ParseName(a1);
  if (!result)
  {
    v11 = *(a1 + 20);
    v12 = vadd_s32(v11, 0x100000001);
    *(a1 + 20) = v12;
    v5 = v11.i32[0];
    if (v11.i32[0] > 255)
    {
      goto LABEL_125;
    }

    v13 = v11.i32[1];
    if (v11.i32[1] >= 0x20000)
    {
      goto LABEL_125;
    }

    v14 = (a1 + 28);
    v62 = *(a1 + 28);
    v15 = *(a1 + 40);
    v64 = *(a1 + 36);
    v16 = vadd_s32(v11, 0x200000002);
    *(a1 + 20) = v16;
    if (v5 <= 254 && v13 <= 131070)
    {
      v17 = *(a1 + 28);
      v18 = (*a1 + v17);
      if (*v18 == 84 && v18[1] == 87)
      {
        *(a1 + 28) = v17 + 2;
        *(a1 + 20) = v12.i32[0];
        if (v15 < 0)
        {
          absl::lts_20240722::debugging_internal::MaybeAppendWithLength(a1, "thread-local wrapper routine for ", 33);
        }

        goto LABEL_28;
      }
    }

    *(a1 + 20) = v16.i32[0];
    *(a1 + 24) = v13 + 3;
    if (v5 <= 254 && v13 <= 131069)
    {
      v19 = *(a1 + 28);
      v20 = (*a1 + v19);
      if (*v20 == 84 && v20[1] == 72)
      {
        *(a1 + 28) = v19 + 2;
        *(a1 + 20) = v12.i32[0];
        if (v15 < 0)
        {
          absl::lts_20240722::debugging_internal::MaybeAppendWithLength(a1, "thread-local initialization routine for ", 40);
        }

LABEL_28:
        if (absl::lts_20240722::debugging_internal::ParseName(a1))
        {
          goto LABEL_123;
        }

        goto LABEL_119;
      }
    }

    v21 = v13 + 4;
    *(a1 + 20) = v16.i32[0];
    *(a1 + 24) = v13 + 4;
    if (v5 <= 254 && v13 <= 131068 && (v22 = *a1, v23 = *(a1 + 28), *(*a1 + v23) == 84) && (v21 = v13 + 5, *(a1 + 20) = v16.i32[0], *(a1 + 24) = v13 + 5, *(a1 + 28) = v23 + 1, v13 <= 131067) && (v60 = *(v22 + v23 + 1) - 73, v60 <= 0xD) && ((1 << v60) & 0x2C01) != 0)
    {
      *(a1 + 28) = v23 + 2;
      *(a1 + 20) = v12.i32[0];
      if (absl::lts_20240722::debugging_internal::ParseType(a1))
      {
        goto LABEL_123;
      }

      v24 = *(a1 + 20);
      v21 = *(a1 + 24);
    }

    else
    {
      v24 = v12.i32[0];
      *(a1 + 20) = v12.i32[0];
    }

    *v14 = v62;
    *(a1 + 36) = v64;
    *(a1 + 40) = v15;
    *(a1 + 20) = v24 + 1;
    *(a1 + 24) = v21 + 1;
    if (v24 <= 255 && v21 < 0x20000 && (v25 = *(a1 + 28), v26 = (*a1 + v25), *v26 == 84) && v26[1] == 99)
    {
      *(a1 + 28) = v25 + 2;
      *(a1 + 20) = v24;
      if (absl::lts_20240722::debugging_internal::ParseCallOffset(a1) && absl::lts_20240722::debugging_internal::ParseCallOffset(a1) && (absl::lts_20240722::debugging_internal::ParseEncoding(a1) & 1) != 0)
      {
        goto LABEL_123;
      }
    }

    else
    {
      *(a1 + 20) = v24;
    }

    *v14 = v62;
    *(a1 + 36) = v64;
    *(a1 + 40) = v15;
    v27 = *(a1 + 20);
    v28 = *(a1 + 24);
    v29 = v27 + 1;
    v30 = v28 + 1;
    *(a1 + 20) = v27 + 1;
    *(a1 + 24) = v28 + 1;
    if (v27 <= 255 && v28 < 0x20000 && (v31 = *(a1 + 28), v32 = (*a1 + v31), *v32 == 71) && v32[1] == 86)
    {
      *(a1 + 28) = v31 + 2;
      *(a1 + 20) = v27;
      if (absl::lts_20240722::debugging_internal::ParseName(a1))
      {
        goto LABEL_123;
      }

      v27 = *(a1 + 20);
      v30 = *(a1 + 24);
      v29 = v27 + 1;
    }

    else
    {
      *(a1 + 20) = v27;
    }

    *v14 = v62;
    *(a1 + 36) = v64;
    *(a1 + 40) = v15;
    *(a1 + 20) = v29;
    *(a1 + 24) = v30 + 1;
    if (v27 <= 255 && v30 < 0x20000 && (v33 = *(a1 + 28), *(*a1 + v33) == 84))
    {
      *(a1 + 28) = v33 + 1;
      *(a1 + 20) = v27;
      if (absl::lts_20240722::debugging_internal::ParseCallOffset(a1) && (absl::lts_20240722::debugging_internal::ParseEncoding(a1) & 1) != 0)
      {
        goto LABEL_123;
      }
    }

    else
    {
      *(a1 + 20) = v27;
    }

    *v14 = v62;
    *(a1 + 36) = v64;
    *(a1 + 40) = v15;
    v34 = *(a1 + 20);
    *(a1 + 20) = vadd_s32(v34, 0x100000001);
    if (v34.i32[0] <= 255 && v34.i32[1] < 0x20000 && (v35 = *(a1 + 28), v36 = (*a1 + v35), *v36 == 84) && v36[1] == 67)
    {
      *(a1 + 28) = v35 + 2;
      *(a1 + 20) = v34.i32[0];
      if (absl::lts_20240722::debugging_internal::ParseType(a1))
      {
        if (absl::lts_20240722::debugging_internal::ParseNumber(a1, 0))
        {
          if (absl::lts_20240722::debugging_internal::ParseOneCharToken(a1, 0x5Fu))
          {
            *(a1 + 40) &= ~0x80000000;
            if (absl::lts_20240722::debugging_internal::ParseType(a1))
            {
              *(a1 + 40) = v15 & 0x80000000 | *(a1 + 40) & 0x7FFFFFFF;
              goto LABEL_123;
            }
          }
        }
      }
    }

    else
    {
      *(a1 + 20) = v34.i32[0];
    }

    *v14 = v62;
    *(a1 + 36) = v64;
    *(a1 + 40) = v15;
    v37 = *(a1 + 20);
    v38 = *(a1 + 24);
    v39 = v37 + 1;
    v40 = v38 + 1;
    *(a1 + 20) = v37 + 1;
    *(a1 + 24) = v38 + 1;
    if (v37 <= 255 && v38 < 0x20000 && (v41 = *a1, v42 = *(a1 + 28), *(*a1 + v42) == 84) && (v40 = v38 + 2, *(a1 + 20) = v39, *(a1 + 24) = v38 + 2, *(a1 + 28) = v42 + 1, v38 <= 131070) && ((v43 = *(v41 + v42 + 1), v43 == 70) || v43 == 74))
    {
      *(a1 + 28) = v42 + 2;
      *(a1 + 20) = v37;
      if (absl::lts_20240722::debugging_internal::ParseType(a1))
      {
        goto LABEL_123;
      }

      v37 = *(a1 + 20);
      v40 = *(a1 + 24);
      v39 = v37 + 1;
    }

    else
    {
      *(a1 + 20) = v37;
    }

    *v14 = v62;
    *(a1 + 36) = v64;
    *(a1 + 40) = v15;
    *(a1 + 20) = v39;
    *(a1 + 24) = v40 + 1;
    if (v37 <= 255 && v40 < 0x20000)
    {
      v44 = *(a1 + 28);
      v45 = (*a1 + v44);
      if (*v45 == 71 && v45[1] == 82)
      {
        *(a1 + 28) = v44 + 2;
        *(a1 + 20) = v37;
        if (v15 < 0)
        {
          absl::lts_20240722::debugging_internal::MaybeAppendWithLength(a1, "reference temporary for ", 24);
        }

        if (absl::lts_20240722::debugging_internal::ParseName(a1))
        {
          v46 = absl::lts_20240722::debugging_internal::ParseSeqId(a1);
          v47 = absl::lts_20240722::debugging_internal::ParseOneCharToken(a1, 0x5Fu);
          result = 1;
          if ((v47 & 1) != 0 || !v46)
          {
            goto LABEL_124;
          }
        }

        goto LABEL_119;
      }
    }

    v48 = v40 + 2;
    *(a1 + 20) = v39;
    *(a1 + 24) = v40 + 2;
    if (v37 <= 255 && v40 <= 131070 && (v49 = *(a1 + 28), v50 = (*a1 + v49), *v50 == 71) && v50[1] == 65)
    {
      *(a1 + 28) = v49 + 2;
      *(a1 + 20) = v37;
      if (absl::lts_20240722::debugging_internal::ParseEncoding(a1))
      {
        goto LABEL_123;
      }

      v37 = *(a1 + 20);
      v48 = *(a1 + 24);
      v39 = v37 + 1;
    }

    else
    {
      *(a1 + 20) = v37;
    }

    *v14 = v62;
    *(a1 + 36) = v64;
    *(a1 + 40) = v15;
    v51 = v48 + 1;
    *(a1 + 20) = v39;
    *(a1 + 24) = v48 + 1;
    if (v37 <= 255 && v48 < 0x20000 && (v52 = *(a1 + 28), v53 = (*a1 + v52), *v53 == 71) && v53[1] == 84 && v53[2] == 116)
    {
      *(a1 + 28) = v52 + 3;
      *(a1 + 20) = v37;
      absl::lts_20240722::debugging_internal::MaybeAppend(a1, "transaction clone for ");
      if (absl::lts_20240722::debugging_internal::ParseEncoding(a1))
      {
        goto LABEL_123;
      }

      v37 = *(a1 + 20);
      v51 = *(a1 + 24);
    }

    else
    {
      *(a1 + 20) = v37;
    }

    *v14 = v62;
    *(a1 + 36) = v64;
    *(a1 + 40) = v15;
    *(a1 + 20) = v37 + 1;
    *(a1 + 24) = v51 + 1;
    if (v37 <= 255 && v51 < 0x20000 && (v54 = *a1, v55 = *(a1 + 28), *(*a1 + v55) == 84) && (*(a1 + 20) = v37 + 1, *(a1 + 24) = v51 + 2, *(a1 + 28) = v55 + 1, v51 <= 131070) && ((v56 = *(v54 + v55 + 1), v56 == 118) || v56 == 104))
    {
      *(a1 + 28) = v55 + 2;
      *(a1 + 20) = v37;
      if (absl::lts_20240722::debugging_internal::ParseCallOffset(a1) && (absl::lts_20240722::debugging_internal::ParseEncoding(a1) & 1) != 0)
      {
        goto LABEL_123;
      }
    }

    else
    {
      *(a1 + 20) = v37;
    }

    *v14 = v62;
    *(a1 + 36) = v64;
    *(a1 + 40) = v15;
    v57 = *(a1 + 20);
    *(a1 + 20) = vadd_s32(v57, 0x100000001);
    if (v57.i32[0] > 255 || v57.i32[1] >= 0x20000 || (v58 = *(a1 + 28), v59 = (*a1 + v58), *v59 != 84) || v59[1] != 65)
    {
      *(a1 + 20) = v57.i32[0];
      goto LABEL_119;
    }

    *(a1 + 28) = v58 + 2;
    *(a1 + 20) = v57.i32[0];
    *(a1 + 40) = v15 & 0x7FFFFFFF;
    if (!absl::lts_20240722::debugging_internal::ParseTemplateArg(a1))
    {
LABEL_119:
      result = 0;
      *v14 = v62;
      *(a1 + 36) = v64;
      *(a1 + 40) = v15;
LABEL_124:
      v5 = *(a1 + 20) - 1;
LABEL_125:
      *(a1 + 20) = v5;
      goto LABEL_126;
    }

    *(a1 + 40) = v15 & 0x80000000 | *(a1 + 40) & 0x7FFFFFFF;
    absl::lts_20240722::debugging_internal::MaybeAppend(a1, "template parameter object");
LABEL_123:
    result = 1;
    goto LABEL_124;
  }

  v6 = absl::lts_20240722::debugging_internal::ParseBareFunctionType(a1);
  v5 = *(a1 + 20);
  if (v6)
  {
    v7 = v5 + 1;
    v8 = *(a1 + 24);
    *(a1 + 20) = v5 + 1;
    *(a1 + 24) = v8 + 1;
    result = 1;
    if (v5 > 255 || v8 >= 0x20000)
    {
      goto LABEL_125;
    }

    v61 = *(a1 + 28);
    v9 = *(a1 + 40);
    v63 = *(a1 + 36);
    *(a1 + 40) = v9 & 0x7FFFFFFF;
    *(a1 + 20) = v5 + 2;
    *(a1 + 24) = v8 + 2;
    if (v5 <= 254 && v8 <= 131070 && (v10 = *(a1 + 28), *(*a1 + v10) == 81))
    {
      *(a1 + 28) = v10 + 1;
      *(a1 + 20) = v7;
      if (absl::lts_20240722::debugging_internal::ParseExpression(a1))
      {
        v9 = v9 & 0x80000000 | *(a1 + 40) & 0x7FFFFFFF;
LABEL_122:
        *(a1 + 40) = v9;
        goto LABEL_123;
      }
    }

    else
    {
      *(a1 + 20) = v7;
    }

    *(a1 + 28) = v61;
    *(a1 + 36) = v63;
    goto LABEL_122;
  }

  result = 1;
LABEL_126:
  *(a1 + 20) = v5 - 1;
  return result;
}

void sub_23C953C3C(_Unwind_Exception *a1)
{
  v2 = *(v1 + 20) - 1;
  *(v1 + 20) = v2;
  *(v1 + 20) = v2 - 1;
  _Unwind_Resume(a1);
}

void sub_23C953C54(_Unwind_Exception *a1)
{
  v2 = *(v1 + 20) - 1;
  *(v1 + 20) = v2;
  *(v1 + 20) = v2 - 1;
  _Unwind_Resume(a1);
}

void sub_23C953C6C(_Unwind_Exception *a1)
{
  v2 = *(v1 + 20) - 1;
  *(v1 + 20) = v2;
  *(v1 + 20) = v2 - 1;
  _Unwind_Resume(a1);
}

uint64_t absl::lts_20240722::debugging_internal::ParseName(uint64_t a1)
{
  result = 0;
  v3 = *(a1 + 20);
  v4 = vadd_s32(v3, 0x100000001);
  *(a1 + 20) = v4;
  v5 = v4.i32[0];
  if (v3.i32[0] <= 255 && v3.i32[1] < 0x20000)
  {
    v6 = v3.i32[0] + 2;
    v7 = v3.i32[1] + 2;
    *(a1 + 20) = v3.i32[0] + 2;
    *(a1 + 24) = v3.i32[1] + 2;
    if (v3.i32[0] > 254 || v3.i32[1] > 131070)
    {
LABEL_23:
      *(a1 + 24) = v7 + 1;
      if (v6 > 256 || v7 >= 0x20000)
      {
LABEL_36:
        *(a1 + 20) = v6 - 1;
        v25 = *(a1 + 28);
        if (!absl::lts_20240722::debugging_internal::ParseSubstitution(a1, 0) || (absl::lts_20240722::debugging_internal::ParseTemplateArgs(a1) & 1) == 0)
        {
          *(a1 + 28) = v25;
          result = absl::lts_20240722::debugging_internal::ParseUnscopedName(a1);
          if (!result)
          {
LABEL_41:
            v5 = *(a1 + 20);
            goto LABEL_42;
          }

          absl::lts_20240722::debugging_internal::ParseTemplateArgs(a1);
        }

        result = 1;
        goto LABEL_41;
      }

      v24 = *(a1 + 28);
      *(a1 + 20) = v6 + 1;
      *(a1 + 24) = v7 + 2;
      if (v6 <= 255 && v7 <= 131070)
      {
        v18 = *(a1 + 28);
        if (*(*a1 + v18) == 90)
        {
          *(a1 + 28) = v18 + 1;
          *(a1 + 20) = v6;
          v19 = absl::lts_20240722::debugging_internal::ParseEncoding(a1);
          v6 = *(a1 + 20);
          if (!v19)
          {
LABEL_35:
            *(a1 + 28) = v24;
            goto LABEL_36;
          }

          v20 = *(a1 + 24);
          *(a1 + 20) = v6 + 1;
          *(a1 + 24) = v20 + 1;
          if (v6 <= 255 && v20 < 0x20000)
          {
            v21 = *(a1 + 28);
            if (*(*a1 + v21) == 69)
            {
              *(a1 + 28) = v21 + 1;
              *(a1 + 20) = v6;
              v22 = absl::lts_20240722::debugging_internal::ParseLocalNameSuffix(a1);
              v6 = *(a1 + 20);
              if (v22)
              {
                goto LABEL_33;
              }

              goto LABEL_35;
            }
          }
        }
      }

      *(a1 + 20) = v6;
      goto LABEL_35;
    }

    v9 = (a1 + 28);
    v23 = *(a1 + 28);
    v10 = *(a1 + 40);
    v26 = *(a1 + 36);
    v11 = v3.i32[1] + 3;
    *(a1 + 20) = v3.i32[0] + 3;
    *(a1 + 24) = v3.i32[1] + 3;
    if (v3.i32[0] <= 253 && v3.i32[1] <= 131069)
    {
      v12 = *(a1 + 28);
      if (*(*a1 + v12) == 78)
      {
        *(a1 + 28) = v12 + 1;
        *(a1 + 20) = v6;
        *(a1 + 40) = v10 & 0x8000FFFF;
        absl::lts_20240722::debugging_internal::ParseCVQualifiers(a1);
        v13 = *(a1 + 20);
        *(a1 + 20) = vadd_s32(v13, 0x100000001);
        if (v13.i32[0] <= 255 && v13.i32[1] < 0x20000)
        {
          v14 = *(a1 + 28);
          v15 = *(*a1 + v14);
          if (v15 == 82 || v15 == 79)
          {
            *v9 = v14 + 1;
          }
        }

        *(a1 + 20) = v13.i32[0];
        v16 = absl::lts_20240722::debugging_internal::ParsePrefix(a1);
        v6 = *(a1 + 20);
        v7 = *(a1 + 24);
        if (!v16)
        {
          goto LABEL_22;
        }

        *(a1 + 40) = *(a1 + 40) & 0x8000FFFF | ((HIWORD(v10) & 0x7FFF) << 16);
        v11 = v7 + 1;
        *(a1 + 20) = v6 + 1;
        *(a1 + 24) = v7 + 1;
        if (v6 <= 255 && v7 < 0x20000)
        {
          v17 = *(a1 + 28);
          if (*(*a1 + v17) == 69)
          {
            *(a1 + 28) = v17 + 1;
LABEL_33:
            v5 = v6 - 1;
            *(a1 + 20) = v5;
            result = 1;
            goto LABEL_42;
          }
        }
      }
    }

    *(a1 + 20) = v6;
    v7 = v11;
LABEL_22:
    *v9 = v23;
    *(a1 + 36) = v26;
    *(a1 + 40) = v10;
    goto LABEL_23;
  }

LABEL_42:
  *(a1 + 20) = v5 - 1;
  return result;
}

void sub_23C953F74(_Unwind_Exception *a1)
{
  v2 = *(v1 + 20) - 1;
  *(v1 + 20) = v2;
  *(v1 + 20) = v2 - 1;
  _Unwind_Resume(a1);
}

uint64_t absl::lts_20240722::debugging_internal::ParseBareFunctionType(uint64_t a1)
{
  v2 = 0;
  v3 = *(a1 + 20);
  v4 = v3.i32[0];
  v5 = v3.i32[0] + 1;
  v6 = v3.i32[1];
  v7 = v3.i32[1] + 1;
  *(a1 + 20) = v3.i32[0] + 1;
  *(a1 + 24) = v3.i32[1] + 1;
  if (v3.i32[0] <= 255 && v3.i32[1] < 0x20000)
  {
    v8 = (a1 + 28);
    v15 = *(a1 + 28);
    v9 = *(a1 + 40);
    v16 = *(a1 + 36);
    *(a1 + 40) = v9 & 0x7FFFFFFF;
    v10 = vadd_s32(v3, 0x200000002);
    *(a1 + 20) = v10;
    if (v4 <= 254 && v6 <= 131070)
    {
      v11 = v10.i32[0];
      while (1)
      {
        v17 = *v8;
        *(a1 + 20) = v5 + 2;
        *(a1 + 24) = v7 + 2;
        if (v5 > 254 || v7 > 131070 || (v12 = *(a1 + 28), v13 = (*a1 + v12), *v13 != 85) || v13[1] != 97)
        {
          *(a1 + 20) = v11;
          goto LABEL_16;
        }

        *(a1 + 28) = v12 + 2;
        *(a1 + 20) = v11;
        if ((absl::lts_20240722::debugging_internal::ParseName(a1) & 1) == 0)
        {
          break;
        }

        v11 = *(a1 + 20);
        v7 = *(a1 + 24);
        v5 = v11 - 1;
        *(a1 + 24) = v7 + 1;
        if (v11 > 256 || v7 >= 0x20000)
        {
          goto LABEL_17;
        }
      }

      v11 = *(a1 + 20);
LABEL_16:
      *v8 = v17;
      v5 = v11 - 1;
    }

LABEL_17:
    *(a1 + 20) = v5;
    v2 = absl::lts_20240722::debugging_internal::ParseType(a1);
    if (v2)
    {
        ;
      }

      *(a1 + 40) = v9 & 0x80000000 | *(a1 + 40) & 0x7FFFFFFF;
      if (v9 < 0)
      {
        absl::lts_20240722::debugging_internal::MaybeAppendWithLength(a1, "()", 2);
      }
    }

    else
    {
      *v8 = v15;
      *(a1 + 36) = v16;
      *(a1 + 40) = v9;
    }

    v4 = *(a1 + 20) - 1;
  }

  *(a1 + 20) = v4;
  return v2;
}

void sub_23C954158(_Unwind_Exception *a1)
{
  v2 = *(v1 + 20) - 1;
  *(v1 + 20) = v2;
  *(v1 + 20) = v2 - 1;
  _Unwind_Resume(a1);
}

uint64_t absl::lts_20240722::debugging_internal::ParseSubstitution(uint64_t a1, char a2)
{
  v2 = 0;
  v3 = *(a1 + 20);
  v4 = vadd_s32(v3, 0x100000001);
  *(a1 + 20) = v4;
  v5 = v3.i32[0];
  if (v3.i32[0] <= 255)
  {
    v6 = v3.i32[1];
    if (v3.i32[1] < 0x20000)
    {
      v7 = vadd_s32(v3, 0x200000002);
      *(a1 + 20) = v7;
      if (v5 <= 254 && v6 <= 131070)
      {
        v9 = *(a1 + 28);
        v10 = (*a1 + v9);
        if (*v10 == 83 && v10[1] == 95)
        {
          *(a1 + 28) = v9 + 2;
          *(a1 + 20) = v4.i32[0];
          if ((*(a1 + 40) & 0x80000000) != 0)
          {
            v2 = 1;
            v11 = a1;
            absl::lts_20240722::debugging_internal::MaybeAppendWithLength(a1, "?", 1);
            a1 = v11;
            goto LABEL_63;
          }

LABEL_62:
          v2 = 1;
          goto LABEL_63;
        }
      }

      v37 = *(a1 + 28);
      *(a1 + 20) = v7.i32[0];
      v12 = v6 + 3;
      *(a1 + 24) = v6 + 3;
      if (v5 <= 254 && v6 <= 131069)
      {
        v13 = *a1;
        v14 = *(a1 + 28);
        if (*(*a1 + v14) == 83)
        {
          v15 = v14 + 1;
          v12 = v6 + 4;
          *(a1 + 20) = v7.i32[0];
          *(a1 + 24) = v6 + 4;
          *(a1 + 28) = v15;
          if (v6 <= 131068)
          {
            v16 = *(v13 + v15);
            if (*(v13 + v15))
            {
              v17 = 0;
              v18 = v13 + v15;
              while (1)
              {
                v19 = v16 - 48;
                v20 = v16 - 65;
                if (v19 >= 0xA && v20 > 0x19)
                {
                  break;
                }

                v22 = *++v18;
                v16 = v22;
                --v17;
                if (!v22)
                {
                  goto LABEL_25;
                }
              }

              if (!v17)
              {
                goto LABEL_29;
              }

LABEL_25:
              v23 = v18 - v13;
              v12 = v6 + 5;
              *(a1 + 20) = v7.i32[0];
              *(a1 + 24) = v6 + 5;
              *(a1 + 28) = v18 - v13;
              if (v6 != 131068 && *(v13 + v23) == 95)
              {
                *(a1 + 28) = v23 + 1;
                *(a1 + 20) = v4.i32[0];
                if ((*(a1 + 40) & 0x80000000) != 0)
                {
                  v24 = a1;
                  absl::lts_20240722::debugging_internal::MaybeAppendWithLength(a1, "?", 1);
                  a1 = v24;
                  v2 = 1;
                  goto LABEL_63;
                }

                goto LABEL_62;
              }
            }
          }
        }
      }

LABEL_29:
      *(a1 + 28) = v37;
      *(a1 + 20) = v7.i32[0];
      *(a1 + 24) = v12 + 1;
      if (v5 <= 254 && v12 < 0x20000 && (v25 = *a1, v26 = *(a1 + 28), *(*a1 + v26) == 83))
      {
        v27 = v26 + 1;
        *(a1 + 28) = v27;
        *(a1 + 20) = v4.i32[0];
        v28 = *(v25 + v27);
        if (v28 == 116 && (a2 & 1) != 0)
        {
          v29 = &absl::lts_20240722::debugging_internal::kSubstitutionList;
LABEL_35:
          if ((*(a1 + 40) & 0x80000000) != 0)
          {
            v30 = a1;
            absl::lts_20240722::debugging_internal::MaybeAppendWithLength(a1, "std", 3);
            a1 = v30;
          }

          v31 = v29[1];
          if (*v31)
          {
            if ((*(a1 + 40) & 0x80000000) != 0)
            {
              v32 = a1;
              absl::lts_20240722::debugging_internal::MaybeAppendWithLength(a1, "::", 2);
              a1 = v32;
              if ((*(v32 + 40) & 0x80000000) != 0)
              {
                if (*v31)
                {
                  v33 = 0;
                  do
                  {
                    v34 = v33 + 1;
                  }

                  while (v31[++v33]);
                }

                else
                {
                  v34 = 0;
                }

                absl::lts_20240722::debugging_internal::MaybeAppendWithLength(v32, v31, v34);
                a1 = v32;
              }
            }
          }

          ++*(a1 + 28);
          goto LABEL_62;
        }

        if (v28 > 104)
        {
          switch(v28)
          {
            case 'i':
              v29 = off_278BC3740;
              goto LABEL_35;
            case 'o':
              v29 = off_278BC3758;
              goto LABEL_35;
            case 's':
              v29 = off_278BC3728;
              goto LABEL_35;
          }
        }

        else
        {
          switch(v28)
          {
            case 'a':
              v29 = off_278BC36F8;
              goto LABEL_35;
            case 'b':
              v29 = off_278BC3710;
              goto LABEL_35;
            case 'd':
              v29 = off_278BC3770;
              goto LABEL_35;
          }
        }
      }

      else
      {
        *(a1 + 20) = v4.i32[0];
      }

      v2 = 0;
      *(a1 + 28) = v37;
    }
  }

LABEL_63:
  --*(a1 + 20);
  return v2;
}

uint64_t absl::lts_20240722::debugging_internal::ParseTemplateArgs(uint64_t a1)
{
  result = 0;
  v3 = *(a1 + 20);
  v4 = vadd_s32(v3, 0x100000001);
  *(a1 + 20) = v4;
  v5 = v3.i32[0];
  if (v3.i32[0] <= 255 && v3.i32[1] < 0x20000)
  {
    v6 = (a1 + 28);
    v17 = *(a1 + 28);
    v7 = *(a1 + 40);
    v18 = *(a1 + 36);
    *(a1 + 40) = v7 & 0x7FFFFFFF;
    *(a1 + 20) = vadd_s32(v3, 0x200000002);
    v8 = v4.i32[0];
    v9 = v3.i32[0] <= 254 && v3.i32[1] <= 131070;
    if (!v9 || (v10 = *(a1 + 28), *(*a1 + v10) != 73))
    {
LABEL_27:
      *(a1 + 20) = v8;
      goto LABEL_28;
    }

    *(a1 + 28) = v10 + 1;
    *(a1 + 20) = v4.i32[0];
    if (!absl::lts_20240722::debugging_internal::ParseTemplateArg(a1))
    {
LABEL_28:
      result = 0;
      *v6 = v17;
      *(a1 + 36) = v18;
      *(a1 + 40) = v7;
LABEL_29:
      v5 = *(a1 + 20) - 1;
      goto LABEL_30;
    }

      ;
    }

    v11 = *(a1 + 20);
    v8 = v11.i32[0];
    v12 = v11.i32[0] + 1;
    v13 = v11.i32[1] + 1;
    *(a1 + 20) = v11.i32[0] + 1;
    *(a1 + 24) = v11.i32[1] + 1;
    if (v11.i32[0] > 255 || v11.i32[1] >= 0x20000)
    {
LABEL_21:
      *(a1 + 20) = v12;
      *(a1 + 24) = v13 + 1;
      if (v8 <= 255 && v13 < 0x20000)
      {
        v16 = *(a1 + 28);
        if (*(*a1 + v16) == 69)
        {
          *(a1 + 28) = v16 + 1;
          *(a1 + 20) = v8;
          *(a1 + 40) = v7 & 0x80000000 | *(a1 + 40) & 0x7FFFFFFF;
          if (v7 < 0)
          {
            absl::lts_20240722::debugging_internal::MaybeAppendWithLength(a1, "<>", 2);
          }

          result = 1;
          goto LABEL_29;
        }
      }

      goto LABEL_27;
    }

    v19 = *v6;
    v20 = *(a1 + 36);
    v14 = *(a1 + 40);
    *(a1 + 40) = v14 & 0x7FFFFFFF;
    *(a1 + 20) = vadd_s32(v11, 0x200000002);
    if (v11.i32[0] <= 254 && v11.i32[1] <= 131070 && (v15 = *(a1 + 28), *(*a1 + v15) == 81))
    {
      *(a1 + 28) = v15 + 1;
      *(a1 + 20) = v12;
      if (absl::lts_20240722::debugging_internal::ParseExpression(a1))
      {
        v14 = v14 & 0x80000000 | *(a1 + 40) & 0x7FFFFFFF;
LABEL_20:
        *(a1 + 40) = v14;
        v12 = *(a1 + 20);
        v13 = *(a1 + 24);
        v8 = v12 - 1;
        goto LABEL_21;
      }
    }

    else
    {
      *(a1 + 20) = v12;
    }

    *v6 = v19;
    *(a1 + 36) = v20;
    goto LABEL_20;
  }

LABEL_30:
  *(a1 + 20) = v5;
  return result;
}

void sub_23C954704(_Unwind_Exception *a1)
{
  v2 = *(v1 + 20) - 1;
  *(v1 + 20) = v2;
  *(v1 + 20) = v2 - 1;
  _Unwind_Resume(a1);
}

uint64_t absl::lts_20240722::debugging_internal::ParseUnscopedName(uint64_t a1)
{
  result = 0;
  v3 = *(a1 + 20);
  v4 = vadd_s32(v3, 0x100000001);
  *(a1 + 20) = v4;
  v5 = v4.i32[0];
  if (v3.i32[0] > 255 || v3.i32[1] >= 0x20000)
  {
    goto LABEL_5;
  }

  v6 = absl::lts_20240722::debugging_internal::ParseUnqualifiedName(a1);
  v5 = *(a1 + 20);
  if (v6)
  {
    result = 1;
LABEL_5:
    *(a1 + 20) = v5 - 1;
    return result;
  }

  v10 = *(a1 + 28);
  v7 = *(a1 + 24);
  *(a1 + 20) = v5 + 1;
  *(a1 + 24) = v7 + 1;
  if (v5 > 255 || v7 >= 0x20000 || (v8 = *(a1 + 28), v9 = (*a1 + v8), *v9 != 83) || v9[1] != 116)
  {
    *(a1 + 20) = v5;
LABEL_15:
    result = 0;
    *(a1 + 28) = v10;
    goto LABEL_16;
  }

  *(a1 + 28) = v8 + 2;
  *(a1 + 20) = v5;
  if ((*(a1 + 40) & 0x80000000) != 0)
  {
    absl::lts_20240722::debugging_internal::MaybeAppendWithLength(a1, "std::", 5);
  }

  if ((absl::lts_20240722::debugging_internal::ParseUnqualifiedName(a1) & 1) == 0)
  {
    goto LABEL_15;
  }

  result = 1;
LABEL_16:
  --*(a1 + 20);
  return result;
}

uint64_t absl::lts_20240722::debugging_internal::ParseOneCharToken(uint64_t a1, unsigned __int8 a2)
{
  v2 = 0;
  v3 = *(a1 + 20);
  *(a1 + 20) = vadd_s32(v3, 0x100000001);
  if (v3.i32[0] > 255 || v3.i32[1] >= 0x20000)
  {
    goto LABEL_5;
  }

  v4 = *(a1 + 28);
  if (*(*a1 + v4) == a2)
  {
    *(a1 + 28) = v4 + 1;
    v2 = 1;
LABEL_5:
    *(a1 + 20) = v3.i32[0];
    return v2;
  }

  *(a1 + 20) = v3.i32[0];
  return 0;
}

BOOL absl::lts_20240722::debugging_internal::ParseCVQualifiers(uint64_t a1)
{
  result = 0;
  v3 = *(a1 + 20);
  v4 = *(a1 + 24);
  v5 = v3 + 1;
  v6 = v4 + 1;
  *(a1 + 20) = v3 + 1;
  *(a1 + 24) = v4 + 1;
  if (v3 <= 255 && v4 < 0x20000)
  {
    v7 = v3 + 2;
    v8 = v4 + 2;
    *(a1 + 20) = v3 + 2;
    *(a1 + 24) = v4 + 2;
    v9 = 0;
    if (v3 <= 254 && v4 <= 131070)
    {
      while (1)
      {
        v20 = *(a1 + 28);
        v8 = v6 + 2;
        *(a1 + 20) = v5 + 2;
        *(a1 + 24) = v6 + 2;
        if (v5 > 254 || v6 > 131070 || (v11 = *(a1 + 28), *(*a1 + v11) != 85))
        {
          *(a1 + 20) = v7;
          goto LABEL_16;
        }

        *(a1 + 28) = v11 + 1;
        *(a1 + 20) = v7;
        v12 = *(a1 + 40);
        *(a1 + 40) = v12 & 0x7FFFFFFF;
        if ((absl::lts_20240722::debugging_internal::ParseSourceName(a1) & 1) == 0)
        {
          break;
        }

        absl::lts_20240722::debugging_internal::ParseTemplateArgs(a1);
        *(a1 + 40) = v12 & 0x80000000 | *(a1 + 40) & 0x7FFFFFFF;
        ++v9;
        v7 = *(a1 + 20);
        v6 = *(a1 + 24);
        v8 = v6 + 1;
        *(a1 + 24) = v6 + 1;
        if (v7 <= 256)
        {
          v5 = v7 - 1;
          if (v6 < 0x20000)
          {
            continue;
          }
        }

        goto LABEL_16;
      }

      *(a1 + 28) = v20;
      v7 = *(a1 + 20);
      v8 = *(a1 + 24);
      v13 = 0;
      *(a1 + 24) = v8 + 1;
      if (v7 > 256)
      {
LABEL_21:
        v15 = 0;
        *(a1 + 20) = v7;
        *(a1 + 24) = v8 + 2;
        if (v7 <= 256 && v8 <= 131070)
        {
          v16 = *(a1 + 28);
          if (*(*a1 + v16) != 86)
          {
            v15 = 0;
            v17 = 0;
            v18 = v7 - 1;
            *(a1 + 20) = v7;
            *(a1 + 24) = v8 + 3;
            goto LABEL_26;
          }

          *(a1 + 28) = v16 + 1;
          v15 = 1;
        }

        v17 = 0;
        v18 = v7 - 1;
        *(a1 + 20) = v7;
        *(a1 + 24) = v8 + 3;
        if (v7 > 256)
        {
LABEL_31:
          *(a1 + 20) = v18;
          result = (v17 | (v13 + v9 + v15)) != 0;
          v3 = v7 - 2;
          goto LABEL_32;
        }

LABEL_26:
        if (v8 <= 131069)
        {
          v19 = *(a1 + 28);
          if (*(*a1 + v19) == 75)
          {
            *(a1 + 28) = v19 + 1;
            v17 = 1;
          }

          else
          {
            v17 = 0;
          }
        }

        goto LABEL_31;
      }
    }

    else
    {
LABEL_16:
      v13 = 0;
      *(a1 + 24) = v8 + 1;
      if (v7 > 256)
      {
        goto LABEL_21;
      }
    }

    if (v8 < 0x20000)
    {
      v14 = *(a1 + 28);
      if (*(*a1 + v14) == 114)
      {
        *(a1 + 28) = v14 + 1;
        v13 = 1;
      }

      else
      {
        v13 = 0;
      }
    }

    goto LABEL_21;
  }

LABEL_32:
  *(a1 + 20) = v3;
  return result;
}

uint64_t absl::lts_20240722::debugging_internal::ParsePrefix(uint64_t a1)
{
  result = 0;
  v3 = *(a1 + 20);
  *(a1 + 20) = vadd_s32(v3, 0x100000001);
  if (v3.i32[0] > 255 || v3.i32[1] >= 0x20000)
  {
    goto LABEL_54;
  }

  v4 = 0;
  v5 = *(a1 + 40);
  while (1)
  {
    if ((v5 & 0x80000000) != 0 && (2 * v5) >= 0x20000)
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 16);
      if (v6 + 1 >= v7 || (v8 = *(a1 + 8), *(a1 + 32) = v6 + 1, *(v8 + v6) = 58, v9 = *(a1 + 32), v7 = *(a1 + 16), v9 + 1 >= v7))
      {
        *(a1 + 32) = v7 + 1;
      }

      else
      {
        v10 = *(a1 + 8);
        *(a1 + 32) = v9 + 1;
        *(v10 + v9) = 58;
        v11 = *(a1 + 32);
        if (v11 < *(a1 + 16))
        {
          *(*(a1 + 8) + v11) = 0;
        }
      }
    }

    if (absl::lts_20240722::debugging_internal::ParseTemplateParam(a1))
    {
      goto LABEL_42;
    }

    v12 = *(a1 + 20);
    v13 = vadd_s32(v12, 0x100000001);
    *(a1 + 20) = v13;
    v14 = v12.i32[0];
    if (v12.i32[0] <= 255)
    {
      v15 = v12.i32[1];
      if (v12.i32[1] < 0x20000)
      {
        v34 = *(a1 + 28);
        v16 = vadd_s32(v12, 0x200000002);
        *(a1 + 20) = v16;
        v17 = v13.i32[0];
        if (v14 <= 254 && v15 <= 131070)
        {
          v18 = *a1;
          v19 = *(a1 + 28);
          if (*(*a1 + v19) == 68)
          {
            *(a1 + 20) = v16.i32[0];
            *(a1 + 24) = v15 + 3;
            *(a1 + 28) = v19 + 1;
            if (v15 <= 131069 && (*(v18 + v19 + 1) | 0x20) == 0x74)
            {
              *(a1 + 28) = v19 + 2;
              *(a1 + 20) = v13.i32[0];
              v20 = absl::lts_20240722::debugging_internal::ParseExpression(a1);
              v17 = *(a1 + 20);
              if (!v20)
              {
LABEL_25:
                *(a1 + 28) = v34;
                v14 = v17 - 1;
                goto LABEL_26;
              }

              v21 = *(a1 + 24);
              *(a1 + 20) = v17 + 1;
              *(a1 + 24) = v21 + 1;
              if (v17 <= 255 && v21 < 0x20000)
              {
                v22 = *(a1 + 28);
                if (*(*a1 + v22) == 69)
                {
                  *(a1 + 28) = v22 + 1;
LABEL_34:
                  *(a1 + 20) = v17 - 1;
                  goto LABEL_42;
                }
              }
            }
          }
        }

        *(a1 + 20) = v17;
        goto LABEL_25;
      }
    }

LABEL_26:
    *(a1 + 20) = v14;
    if (absl::lts_20240722::debugging_internal::ParseSubstitution(a1, 1))
    {
      goto LABEL_42;
    }

    v23 = *(a1 + 20);
    v24 = vadd_s32(v23, 0x100000001);
    *(a1 + 20) = v24;
    v25 = v23.i32[0];
    if (v23.i32[0] <= 255 && v23.i32[1] < 0x20000)
    {
      v35 = *(a1 + 28);
      *(a1 + 20) = vadd_s32(v23, 0x200000002);
      if (v23.i32[0] <= 254 && v23.i32[1] <= 131070 && (v26 = *(a1 + 28), *(*a1 + v26) == 117))
      {
        *(a1 + 28) = v26 + 1;
        *(a1 + 20) = v24.i32[0];
        if (absl::lts_20240722::debugging_internal::ParseSourceName(a1))
        {
          absl::lts_20240722::debugging_internal::ParseTemplateArgs(a1);
          v17 = *(a1 + 20);
          goto LABEL_34;
        }

        v25 = *(a1 + 20) - 1;
      }

      else
      {
        *(a1 + 20) = v24.i32[0];
      }

      *(a1 + 28) = v35;
    }

    *(a1 + 20) = v25;
    if (absl::lts_20240722::debugging_internal::ParseUnscopedName(a1))
    {
      goto LABEL_42;
    }

    v27 = *(a1 + 20);
    *(a1 + 20) = vadd_s32(v27, 0x100000001);
    if (v27.i32[0] > 255)
    {
      break;
    }

    if (v27.i32[1] >= 0x20000)
    {
      break;
    }

    v28 = *(a1 + 28);
    if (*(*a1 + v28) != 77)
    {
      break;
    }

    *(a1 + 28) = v28 + 1;
    *(a1 + 20) = v27.i32[0];
    if ((absl::lts_20240722::debugging_internal::ParseUnnamedTypeName(a1) & 1) == 0)
    {
      goto LABEL_46;
    }

LABEL_42:
    v5 = *(a1 + 40);
    v29 = (2 * v5) >> 17;
    v4 = 1;
    if ((v29 & 0x80000000) == 0)
    {
      v5 = (v5 & 0x8000FFFF | ((v29 & 0x7FFF) << 16)) + 0x10000;
      *(a1 + 40) = v5;
    }
  }

  *(a1 + 20) = v27.i32[0];
LABEL_46:
  v30 = *(a1 + 40);
  if (v30 < 0 && 2 * v30 >= 0x20000)
  {
    v31 = *(a1 + 32);
    v32 = __OFSUB__(v31, 2);
    v33 = v31 - 2;
    if (v33 < 0 == v32)
    {
      *(a1 + 32) = v33;
      *(*(a1 + 8) + v33) = 0;
    }
  }

  if ((v4 & 1) != 0 && absl::lts_20240722::debugging_internal::ParseTemplateArgs(a1))
  {
    result = absl::lts_20240722::debugging_internal::ParsePrefix(a1);
  }

  else
  {
    result = 1;
  }

LABEL_54:
  --*(a1 + 20);
  return result;
}

void sub_23C954EE4(_Unwind_Exception *a1)
{
  v2 = *(v1 + 20) - 1;
  *(v1 + 20) = v2;
  *(v1 + 20) = v2 - 1;
  _Unwind_Resume(a1);
}

uint64_t absl::lts_20240722::debugging_internal::ParseSourceName(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 20);
  *(a1 + 24) = v2.i32[1] + 1;
  v3 = v2.i32[0];
  if (v2.i32[0] <= 255 && v2.i32[1] < 0x20000)
  {
    v27 = *(a1 + 28);
    *(a1 + 24) = v2.i32[1] + 2;
    if (v2.i32[0] > 254 || v2.i32[1] > 131070)
    {
      goto LABEL_20;
    }

    v5 = 0;
    v6 = v2.i32[0] + 2;
    *(a1 + 20) = vadd_s32(v2, 0x300000003);
    v7 = *a1;
    v8 = *(a1 + 28);
    if (v2.i32[0] <= 253 && v2.i32[1] <= 131069)
    {
      if (*(v7 + v8) == 110)
      {
        *(a1 + 28) = ++v8;
        v5 = 1;
      }

      else
      {
        v5 = 0;
      }
    }

    *(a1 + 20) = v6;
    v9 = *(v7 + v8);
    if ((v9 - 48) > 9)
    {
      goto LABEL_20;
    }

    v10 = 0;
    v11 = (v8 + v7 + 1);
    do
    {
      v10 = v9 + 10 * v10 - 48;
      v12 = *v11++;
      v9 = v12;
      ++v8;
    }

    while ((v12 - 48) < 0xA);
    v13 = v5 ? -v10 : v10;
    *(a1 + 20) = v6;
    *(a1 + 24) = v2.i32[1] + 4;
    *(a1 + 28) = v8;
    if (v2.i32[1] > 131068)
    {
      goto LABEL_20;
    }

    v15 = v13;
    v16 = v8;
    if (!v13)
    {
      goto LABEL_34;
    }

    v17 = *(v7 + v8);
    if (!*(v7 + v8))
    {
LABEL_20:
      v1 = 0;
      *(a1 + 28) = v27;
      goto LABEL_21;
    }

    v18 = 0;
    while (v15 - 1 != v18)
    {
      if (!*(v7 + v8 + 1 + v18++))
      {
        if (v18 < v15)
        {
          goto LABEL_20;
        }

        goto LABEL_28;
      }
    }

    if (v15 < 0xC)
    {
      goto LABEL_34;
    }

LABEL_28:
    v20 = (v7 + v8 + 1);
    v21 = "_GLOBAL__N_";
    while (1)
    {
      v22 = *v21;
      if (v17 != v22)
      {
        break;
      }

      v23 = *v20++;
      v17 = v23;
      ++v21;
      if (!v23)
      {
        v22 = *v21;
        break;
      }
    }

    if (!v22)
    {
      if ((*(a1 + 40) & 0x80000000) == 0)
      {
        goto LABEL_36;
      }

      v24 = "(anonymous namespace)";
      v25 = a1;
      v26 = 21;
    }

    else
    {
LABEL_34:
      v24 = (v7 + v16);
      v25 = a1;
      v26 = v15;
    }

    absl::lts_20240722::debugging_internal::MaybeAppendWithLength(a1, v24, v26);
    a1 = v25;
LABEL_36:
    *(a1 + 28) += v15;
    v3 = *(a1 + 20) - 2;
    v1 = 1;
  }

LABEL_21:
  *(a1 + 20) = v3;
  return v1;
}

uint64_t absl::lts_20240722::debugging_internal::ParseNumber(uint64_t *a1, int *a2)
{
  v2 = 0;
  v3 = *(a1 + 20);
  v4 = v3.i32[0];
  *(a1 + 6) = v3.i32[1] + 1;
  if (v3.i32[0] > 255 || v3.i32[1] >= 0x20000)
  {
LABEL_20:
    *(a1 + 5) = v4;
    return v2;
  }

  *(a1 + 20) = vadd_s32(v3, 0x200000002);
  v5 = *a1;
  v6 = *(a1 + 7);
  v7 = v3.i32[0] <= 254 && v3.i32[1] <= 131070;
  if (v7 && *(v5 + v6) == 110)
  {
    *(a1 + 7) = ++v6;
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 5) = v3.i32[0] + 1;
  v9 = *(v5 + v6);
  if ((v9 - 48) <= 9)
  {
    v10 = 0;
    v11 = (v6 + v5 + 1);
    do
    {
      v10 = v9 + 10 * v10 - 48;
      v12 = *v11++;
      v9 = v12;
      ++v6;
    }

    while ((v12 - 48) < 0xA);
    *(a1 + 7) = v6;
    if (a2)
    {
      if (v8)
      {
        v13 = -v10;
      }

      else
      {
        v13 = v10;
      }

      *a2 = v13;
      v4 = *(a1 + 5) - 1;
    }

    v2 = 1;
    goto LABEL_20;
  }

  *(a1 + 5) = v3.i32[0];
  return 0;
}

uint64_t absl::lts_20240722::debugging_internal::MaybeAppendWithLength(uint64_t result, char *a2, uint64_t a3)
{
  if (a3 && (*(result + 40) & 0x80000000) != 0)
  {
    if (*a2 == 60)
    {
      v3 = *(result + 32);
      if (v3 >= 1)
      {
        v4 = *(result + 16);
        if (v3 < v4)
        {
          v5 = (*(result + 8) + v3);
          if (*(v5 - 1) == 60)
          {
            v6 = v3 + 1;
            if (v6 >= v4)
            {
              *(result + 32) = v4 + 1;
            }

            else
            {
              *(result + 32) = v6;
              *v5 = 32;
              v7 = *(result + 32);
              if (v7 < *(result + 16))
              {
                *(*(result + 8) + v7) = 0;
              }
            }
          }
        }
      }
    }

    v8 = *(result + 32);
    if (v8 < *(result + 16))
    {
      v9 = *a2;
      if (v9 == 95 || (v9 & 0xFFFFFFDF) - 65 <= 0x19)
      {
        *(result + 36) = v8;
        *(result + 40) = a3;
      }
    }

    do
    {
      v10 = *(result + 32);
      v11 = *(result + 16);
      if (v10 + 1 >= v11)
      {
        *(result + 32) = v11 + 1;
        return result;
      }

      v12 = *a2++;
      v13 = *(result + 8);
      *(result + 32) = v10 + 1;
      *(v13 + v10) = v12;
      --a3;
    }

    while (a3);
    v14 = *(result + 32);
    if (v14 < *(result + 16))
    {
      *(*(result + 8) + v14) = 0;
    }
  }

  return result;
}

uint64_t absl::lts_20240722::debugging_internal::ParseCharClass(uint64_t a1, _BYTE *a2)
{
  v2 = *(a1 + 20);
  *(a1 + 20) = vadd_s32(v2, 0x100000001);
  if (v2.i32[0] > 255 || v2.i32[1] >= 0x20000)
  {
LABEL_8:
    *(a1 + 20) = v2.i32[0];
    return 0;
  }

  else
  {
    v3 = *(a1 + 28);
    if (*(*a1 + v3) && (v4 = *a2, *a2))
    {
      v5 = a2 + 1;
      while (*(*a1 + v3) != v4)
      {
        v6 = *v5++;
        v4 = v6;
        if (!v6)
        {
          goto LABEL_8;
        }
      }

      *(a1 + 28) = v3 + 1;
      *(a1 + 20) = v2.i32[0];
      return 1;
    }

    else
    {
      *(a1 + 20) = v2.i32[0];
      return 0;
    }
  }
}

uint64_t absl::lts_20240722::debugging_internal::ParseTemplateParam(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 20);
  v3 = vadd_s32(v2, 0x100000001);
  *(a1 + 20) = v3;
  v4 = v2.i32[0];
  if (v2.i32[0] <= 255)
  {
    v5 = v2.i32[1];
    if (v2.i32[1] < 0x20000)
    {
      v6 = vadd_s32(v2, 0x200000002);
      *(a1 + 20) = v6;
      if (v4 <= 254 && v5 <= 131070)
      {
        v8 = *(a1 + 28);
        v9 = (*a1 + v8);
        if (*v9 == 84 && v9[1] == 95)
        {
          *(a1 + 28) = v8 + 2;
          *(a1 + 20) = v3.i32[0];
          if ((*(a1 + 40) & 0x80000000) != 0)
          {
            v1 = 1;
            v23 = a1;
            absl::lts_20240722::debugging_internal::MaybeAppendWithLength(a1, "?", 1);
            a1 = v23;
            goto LABEL_54;
          }

          goto LABEL_11;
        }
      }

      v29 = *(a1 + 28);
      *(a1 + 20) = v6.i32[0];
      v10 = v5 + 3;
      *(a1 + 24) = v5 + 3;
      if (v4 <= 254 && v5 <= 131069)
      {
        v11 = *a1;
        v12 = *(a1 + 28);
        if (*(*a1 + v12) == 84)
        {
          v13 = v12 + 1;
          *(a1 + 28) = v12 + 1;
          if (v5 <= 131068)
          {
            v10 = v5 + 5;
            *(a1 + 20) = v4 + 3;
            *(a1 + 24) = v5 + 5;
            if (v4 <= 253 && v5 != 131068 && *(v11 + v13) == 110)
            {
              LODWORD(v13) = v12 + 2;
              *(a1 + 28) = v12 + 2;
            }

            *(a1 + 20) = v6.i32[0];
            if (*(v11 + v13) - 48 <= 9)
            {
              v14 = (v13 + v11 + 1);
              do
              {
                v15 = *v14++;
                LODWORD(v13) = v13 + 1;
              }

              while ((v15 - 48) < 0xA);
              v10 = v5 + 6;
              *(a1 + 20) = v6.i32[0];
              *(a1 + 24) = v5 + 6;
              *(a1 + 28) = v13;
              if (v5 <= 131066 && *(v11 + v13) == 95)
              {
                *(a1 + 28) = v13 + 1;
                *(a1 + 20) = v3.i32[0];
                if ((*(a1 + 40) & 0x80000000) != 0)
                {
LABEL_27:
                  v16 = a1;
                  absl::lts_20240722::debugging_internal::MaybeAppendWithLength(a1, "?", 1);
                  a1 = v16;
                  v1 = 1;
                  goto LABEL_54;
                }

LABEL_11:
                v1 = 1;
                goto LABEL_54;
              }
            }
          }

          else
          {
            v10 = 131073;
          }
        }
      }

      *(a1 + 28) = v29;
      *(a1 + 20) = v6.i32[0];
      *(a1 + 24) = v10 + 1;
      if (v4 > 254)
      {
        goto LABEL_52;
      }

      if (v10 >= 0x20000)
      {
        goto LABEL_52;
      }

      v17 = *a1;
      v18 = *(a1 + 28);
      v19 = (*a1 + v18);
      if (*v19 != 84)
      {
        goto LABEL_52;
      }

      if (v19[1] != 76)
      {
        goto LABEL_52;
      }

      v20 = v18 + 2;
      *(a1 + 24) = v10 + 2;
      *(a1 + 28) = v18 + 2;
      if (v10 > 131070)
      {
        goto LABEL_52;
      }

      *(a1 + 20) = v4 + 3;
      *(a1 + 24) = v10 + 3;
      if (v4 <= 253 && v10 != 131070 && *(v17 + v20) == 110)
      {
        LODWORD(v20) = v18 + 3;
        *(a1 + 28) = v18 + 3;
      }

      *(a1 + 20) = v6.i32[0];
      if (*(v17 + v20) - 48 > 9)
      {
        goto LABEL_52;
      }

      v21 = (v20 + v17 + 1);
      do
      {
        v22 = *v21++;
        LODWORD(v20) = v20 + 1;
      }

      while ((v22 - 48) < 0xA);
      *(a1 + 20) = v6.i32[0];
      *(a1 + 24) = v10 + 4;
      *(a1 + 28) = v20;
      if (v10 >= 131069)
      {
        *(a1 + 24) = v10 + 5;
LABEL_52:
        *(a1 + 20) = v3.i32[0];
LABEL_53:
        v1 = 0;
        *(a1 + 28) = v29;
        goto LABEL_54;
      }

      v24 = (v17 + v20);
      if (*v24 == 95 && v24[1] == 95)
      {
        *(a1 + 28) = v20 + 2;
        *(a1 + 20) = v3.i32[0];
        if ((*(a1 + 40) & 0x80000000) != 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        *(a1 + 24) = v10 + 5;
        if (v10 == 131068 || *v24 != 95)
        {
          goto LABEL_52;
        }

        *(a1 + 28) = v20 + 1;
        *(a1 + 20) = v3.i32[0];
        v25 = a1;
        v26 = absl::lts_20240722::debugging_internal::ParseNumber(a1, 0);
        a1 = v25;
        if (!v26)
        {
          goto LABEL_53;
        }

        v27 = absl::lts_20240722::debugging_internal::ParseOneCharToken(v25, 0x5Fu);
        a1 = v25;
        if (!v27)
        {
          goto LABEL_53;
        }

        absl::lts_20240722::debugging_internal::MaybeAppend(v25, "?");
        a1 = v25;
      }

      goto LABEL_11;
    }
  }

LABEL_54:
  --*(a1 + 20);
  return v1;
}

uint64_t absl::lts_20240722::debugging_internal::ParseDecltype(uint64_t *a1)
{
  v1 = 0;
  v2 = *(a1 + 20);
  v3 = vadd_s32(v2, 0x100000001);
  *(a1 + 20) = v3;
  v4 = v2.i32[0];
  if (v2.i32[0] <= 255)
  {
    v5 = v2.i32[1];
    if (v2.i32[1] < 0x20000)
    {
      v16 = *(a1 + 28);
      v6 = vadd_s32(v2, 0x200000002);
      *(a1 + 20) = v6;
      v7 = v3.i32[0];
      if (v4 <= 254 && v5 <= 131070)
      {
        v9 = *a1;
        v10 = *(a1 + 7);
        if (*(*a1 + v10) == 68)
        {
          *(a1 + 5) = v6.i32[0];
          *(a1 + 6) = v5 + 3;
          *(a1 + 7) = v10 + 1;
          if (v5 <= 131069 && (*(v9 + v10 + 1) | 0x20) == 0x74)
          {
            *(a1 + 7) = v10 + 2;
            *(a1 + 5) = v3.i32[0];
            v11 = a1;
            v12 = absl::lts_20240722::debugging_internal::ParseExpression();
            a1 = v11;
            v7 = *(v11 + 5);
            if (!v12)
            {
LABEL_17:
              v1 = 0;
              *(a1 + 28) = v16;
              goto LABEL_18;
            }

            v13 = *(v11 + 6);
            *(v11 + 5) = v7 + 1;
            *(v11 + 6) = v13 + 1;
            if (v7 <= 255 && v13 < 0x20000)
            {
              v14 = *(v11 + 7);
              if (*(*v11 + v14) == 69)
              {
                *(v11 + 7) = v14 + 1;
                *(v11 + 5) = v7;
                v1 = 1;
LABEL_18:
                v4 = v7 - 1;
                goto LABEL_19;
              }
            }
          }
        }
      }

      *(a1 + 5) = v7;
      goto LABEL_17;
    }
  }

LABEL_19:
  *(a1 + 5) = v4;
  return v1;
}

uint64_t absl::lts_20240722::debugging_internal::ParseUnnamedTypeName(uint64_t a1)
{
  v2 = 0;
  v51 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 20);
  v4 = vadd_s32(v3, 0x100000001);
  *(a1 + 20) = v4;
  v5 = v3.i32[0];
  if (v3.i32[0] <= 255 && v3.i32[1] < 0x20000)
  {
    v6 = (a1 + 28);
    v48 = *(a1 + 28);
    v7 = *(a1 + 40);
    v49 = *(a1 + 36);
    v8 = v3.i32[0] + 2;
    v9 = v3.i32[1] + 2;
    *(a1 + 20) = v3.i32[0] + 2;
    *(a1 + 24) = v3.i32[1] + 2;
    if (v3.i32[0] > 254 || v3.i32[1] > 131070 || (v10 = *a1, v11 = *(a1 + 28), v12 = (*a1 + v11), *v12 != 85) || v12[1] != 116)
    {
LABEL_35:
      *(a1 + 20) = v4.i32[0];
LABEL_36:
      *v6 = v48;
      *(a1 + 36) = v49;
      *(a1 + 20) = v8;
      *(a1 + 24) = v9 + 1;
      v30 = v4.i32[0];
      if (v3.i32[0] > 254)
      {
        goto LABEL_66;
      }

      if (v9 >= 0x20000)
      {
        goto LABEL_66;
      }

      v31 = *(a1 + 28);
      v32 = (*a1 + v31);
      if (*v32 != 85 || v32[1] != 108)
      {
        goto LABEL_66;
      }

      *(a1 + 28) = v31 + 2;
      *(a1 + 20) = v4.i32[0];
      *(a1 + 40) = v7 & 0x7FFFFFFF;
        ;
      }

      if (!absl::lts_20240722::debugging_internal::ParseType(a1))
      {
        goto LABEL_67;
      }

        ;
      }

      *(a1 + 40) = v7 & 0x80000000 | *(a1 + 40) & 0x7FFFFFFF;
      v33 = *(a1 + 20);
      v34 = vadd_s32(v33, 0x100000001);
      *(a1 + 20) = v34;
      v30 = v33.i32[0];
      if (v33.i32[0] > 255)
      {
        goto LABEL_66;
      }

      if (v33.i32[1] >= 0x20000)
      {
        goto LABEL_66;
      }

      v35 = *a1;
      v36 = *(a1 + 28);
      if (*(*a1 + v36) != 69)
      {
        goto LABEL_66;
      }

      v37 = v36 + 1;
      *(a1 + 20) = v33.i32[0];
      *(a1 + 24) = v33.i32[1] + 2;
      *(a1 + 28) = v36 + 1;
      if (v33.i32[1] <= 131070)
      {
        v39 = 0;
        v38 = v33.i32[1] + 3;
        *(a1 + 20) = v33.i32[0] + 2;
        *(a1 + 24) = v33.i32[1] + 3;
        if (v33.i32[0] <= 254 && v33.i32[1] != 131070)
        {
          if (*(v35 + v37) == 110)
          {
            LODWORD(v37) = v36 + 2;
            *v6 = v36 + 2;
            v39 = 1;
          }

          else
          {
            v39 = 0;
          }
        }

        *(a1 + 20) = v34.i32[0];
        v40 = *(v35 + v37);
        if ((v40 - 48) <= 9)
        {
          v41 = 0;
          v42 = (v37 + v35 + 1);
          do
          {
            v41 = v40 + 10 * v41 - 48;
            v43 = *v42++;
            v40 = v43;
            LODWORD(v37) = v37 + 1;
          }

          while ((v43 - 48) < 0xA);
          *(a1 + 28) = v37;
          if (v39)
          {
            v44 = -v41;
          }

          else
          {
            v44 = v41;
          }

          *(a1 + 20) = v33.i32[0];
          if (v44 > 2147483645)
          {
            goto LABEL_67;
          }

          goto LABEL_63;
        }
      }

      else
      {
        v38 = 131073;
      }

      *(a1 + 20) = v33.i32[0];
      v44 = -1;
LABEL_63:
      *(a1 + 20) = v34.i32[0];
      *(a1 + 24) = v38 + 1;
      if (v38 < 0x20000 && *(v35 + v37) == 95)
      {
        *(a1 + 28) = v37 + 1;
        *(a1 + 20) = v33.i32[0];
        absl::lts_20240722::debugging_internal::MaybeAppend(a1, "{lambda()#");
        absl::lts_20240722::debugging_internal::MaybeAppendDecimal(a1, v44 + 2);
        absl::lts_20240722::debugging_internal::MaybeAppend(a1, "}");
        v2 = 1;
LABEL_68:
        v5 = *(a1 + 20) - 1;
        goto LABEL_69;
      }

LABEL_66:
      *(a1 + 20) = v30;
LABEL_67:
      v2 = 0;
      *v6 = v48;
      *(a1 + 36) = v49;
      *(a1 + 40) = v7;
      goto LABEL_68;
    }

    v13 = v11 + 2;
    *(a1 + 20) = v4.i32[0];
    *(a1 + 24) = v3.i32[1] + 3;
    *(a1 + 28) = v11 + 2;
    if (v3.i32[1] <= 131069)
    {
      v14 = 0;
      v9 = v3.i32[1] + 4;
      *(a1 + 20) = v3.i32[0] + 3;
      *(a1 + 24) = v3.i32[1] + 4;
      if (v3.i32[0] <= 253 && v3.i32[1] != 131069)
      {
        if (*(v10 + v13) == 110)
        {
          LODWORD(v13) = v11 + 3;
          *v6 = v11 + 3;
          v14 = 1;
        }

        else
        {
          v14 = 0;
        }
      }

      *(a1 + 20) = v8;
      v15 = *(v10 + v13);
      if ((v15 - 48) <= 9)
      {
        v16 = 0;
        v17 = (v13 + v10 + 1);
        do
        {
          v16 = v15 + 10 * v16 - 48;
          v18 = *v17++;
          v15 = v18;
          LODWORD(v13) = v13 + 1;
        }

        while ((v18 - 48) < 0xA);
        *(a1 + 28) = v13;
        if (v14)
        {
          v19 = -v16;
        }

        else
        {
          v19 = v16;
        }

        *(a1 + 20) = v4.i32[0];
        if (v19 > 2147483645)
        {
          goto LABEL_36;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v9 = 131073;
    }

    *(a1 + 20) = v4.i32[0];
    v19 = -1;
LABEL_23:
    v20 = v9++;
    *(a1 + 20) = v8;
    *(a1 + 24) = v9;
    if (v20 < 0x20000 && *(v10 + v13) == 95)
    {
      *(a1 + 28) = v13 + 1;
      *(a1 + 20) = v4.i32[0];
      if ((v7 & 0x80000000) == 0)
      {
        goto LABEL_74;
      }

      absl::lts_20240722::debugging_internal::MaybeAppendWithLength(a1, "{unnamed type#", 14);
      if ((*(a1 + 40) & 0x80000000) == 0)
      {
        goto LABEL_74;
      }

      v21 = 0;
      v22 = v19 + 2;
      do
      {
        v23 = &v50[v21 + 19];
        *v23 = v22 % 10 + 48;
        --v21;
        if (v23 <= v50)
        {
          break;
        }

        v24 = v22 - 10;
        v22 /= 10;
      }

      while (v24 < 0xFFFFFFED);
      if (v21)
      {
        v25 = v21 + 1;
        while (1)
        {
          v26 = *(a1 + 32);
          v27 = *(a1 + 16);
          if (v26 + 1 >= v27)
          {
            break;
          }

          v28 = *(&v51 + v21);
          v29 = *(a1 + 8);
          *(a1 + 32) = v26 + 1;
          *(v29 + v26) = v28;
          ++v25;
          ++v21;
          if (v25 == 1)
          {
            goto LABEL_71;
          }
        }

        *(a1 + 32) = v27 + 1;
      }

LABEL_71:
      v47 = *(a1 + 32);
      if (v47 < *(a1 + 16))
      {
        *(*(a1 + 8) + v47) = 0;
      }

      if ((*(a1 + 40) & 0x80000000) != 0)
      {
        v2 = 1;
        absl::lts_20240722::debugging_internal::MaybeAppendWithLength(a1, "}", 1);
      }

      else
      {
LABEL_74:
        v2 = 1;
      }

      goto LABEL_68;
    }

    goto LABEL_35;
  }

LABEL_69:
  *(a1 + 20) = v5;
  v45 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t absl::lts_20240722::debugging_internal::ParseExpression(uint64_t a1)
{
  result = 0;
  v3 = *(a1 + 20);
  *(a1 + 20) = vadd_s32(v3, 0x100000001);
  if (v3.i32[0] <= 255 && v3.i32[1] < 0x20000)
  {
    if (absl::lts_20240722::debugging_internal::ParseTemplateParam(a1) & 1) != 0 || (absl::lts_20240722::debugging_internal::ParseExprPrimary(a1))
    {
      goto LABEL_50;
    }

    v88 = *(a1 + 28);
    v4 = *(a1 + 20);
    v5 = *(a1 + 24);
    v6 = v5 + 1;
    *(a1 + 20) = v4 + 1;
    *(a1 + 24) = v5 + 1;
    if (v4 <= 255 && v5 < 0x20000)
    {
      v7 = *(a1 + 28);
      v8 = (*a1 + v7);
      if (*v8 == 99 && v8[1] == 108)
      {
        *(a1 + 28) = v7 + 2;
        *(a1 + 20) = v4;
        if (!absl::lts_20240722::debugging_internal::ParseExpression(a1))
        {
          v4 = *(a1 + 20);
          v6 = *(a1 + 24);
LABEL_16:
          *(a1 + 28) = v88;
          v11 = v4 + 1;
          *(a1 + 20) = v4 + 1;
          *(a1 + 24) = v6 + 1;
          if (v4 <= 255 && v6 < 0x20000 && (v12 = *(a1 + 28), v13 = (*a1 + v12), *v13 == 112) && v13[1] == 112 && v13[2] == 95 || (v14 = v6 + 2, *(a1 + 20) = v11, *(a1 + 24) = v6 + 2, v4 <= 255) && v6 <= 131070 && (v12 = *(a1 + 28), v15 = (*a1 + v12), *v15 == 109) && v15[1] == 109 && v15[2] == 95)
          {
            *(a1 + 28) = v12 + 3;
            *(a1 + 20) = v4;
            if (absl::lts_20240722::debugging_internal::ParseExpression(a1))
            {
              goto LABEL_50;
            }

            v4 = *(a1 + 20);
            v14 = *(a1 + 24);
            v11 = v4 + 1;
          }

          else
          {
            *(a1 + 20) = v4;
          }

          *(a1 + 28) = v88;
          *(a1 + 20) = v11;
          *(a1 + 24) = v14 + 1;
          if (v4 <= 255 && v14 < 0x20000 && (v16 = *(a1 + 28), v17 = (*a1 + v16), *v17 == 99) && v17[1] == 112)
          {
            *(a1 + 28) = v16 + 2;
            *(a1 + 20) = v4;
            if (absl::lts_20240722::debugging_internal::ParseSourceName(a1))
            {
              absl::lts_20240722::debugging_internal::ParseTemplateArgs(a1);
                ;
              }

              if (absl::lts_20240722::debugging_internal::ParseOneCharToken(a1, 0x45u))
              {
                goto LABEL_50;
              }
            }
          }

          else
          {
            *(a1 + 20) = v4;
          }

          *(a1 + 28) = v88;
          v18 = *(a1 + 20);
          *(a1 + 20) = vadd_s32(v18, 0x100000001);
          if (v18.i32[0] <= 255 && v18.i32[1] < 0x20000 && (v19 = *(a1 + 28), v20 = (*a1 + v19), *v20 == 115) && v20[1] == 111)
          {
            *(a1 + 28) = v19 + 2;
            *(a1 + 20) = v18.i32[0];
            if (absl::lts_20240722::debugging_internal::ParseType(a1) && absl::lts_20240722::debugging_internal::ParseExpression(a1))
            {
              absl::lts_20240722::debugging_internal::ParseNumber(a1, 0);
              v21 = *(a1 + 20);
              v22 = vadd_s32(v21, 0x100000001);
              *(a1 + 20) = v22;
              if (v21.i32[0] <= 255)
              {
                v23 = v21.i32[1];
                if (v21.i32[1] < 0x20000)
                {
                  v24 = *a1;
                  LODWORD(v25) = *(a1 + 28);
                  v26 = *a1 + 1;
                  do
                  {
                    v83 = v25;
                    if (*(v24 + v25) != 95)
                    {
                      break;
                    }

                    v25 = v25 + 1;
                    *(a1 + 24) = v23 + 2;
                    *(a1 + 28) = v83 + 1;
                    v84 = v23 + 3;
                    if (v23 >= 0x1FFFF)
                    {
                      *(a1 + 20) = v22.i32[0];
                      *(a1 + 24) = v84;
                      break;
                    }

                    *(a1 + 20) = v21.i32[0] + 2;
                    *(a1 + 24) = v84;
                    if (v21.i32[0] <= 254 && v23 != 131070 && *(v24 + v25) == 110)
                    {
                      LODWORD(v25) = v83 + 2;
                      *(a1 + 28) = v83 + 2;
                    }

                    *(a1 + 20) = v22.i32[0];
                    if (*(v24 + v25) - 48 <= 9)
                    {
                      v85 = (v26 + v25);
                      do
                      {
                        v86 = *v85++;
                        LODWORD(v25) = v25 + 1;
                      }

                      while ((v86 - 48) < 0xA);
                      *(a1 + 28) = v25;
                    }

                    *(a1 + 20) = v22.i32[0];
                    *(a1 + 24) = v23 + 4;
                    v55 = v23 < 131069;
                    v23 += 3;
                  }

                  while (v55);
                }
              }

              *(a1 + 20) = v21.i32[0];
              absl::lts_20240722::debugging_internal::ParseOneCharToken(a1, 0x70u);
              if (absl::lts_20240722::debugging_internal::ParseOneCharToken(a1, 0x45u))
              {
                goto LABEL_50;
              }
            }
          }

          else
          {
            *(a1 + 20) = v18.i32[0];
          }

          *(a1 + 28) = v88;
          if (absl::lts_20240722::debugging_internal::ParseFunctionParam(a1))
          {
LABEL_50:
            result = 1;
            goto LABEL_51;
          }

          *(a1 + 28) = v88;
          v27 = *(a1 + 20);
          *(a1 + 20) = vadd_s32(v27, 0x100000001);
          if (v27.i32[0] <= 255 && v27.i32[1] < 0x20000 && (v28 = *(a1 + 28), v29 = (*a1 + v28), *v29 == 116) && v29[1] == 108)
          {
            *(a1 + 28) = v28 + 2;
            *(a1 + 20) = v27.i32[0];
            if (absl::lts_20240722::debugging_internal::ParseType(a1))
            {
                ;
              }

              if (absl::lts_20240722::debugging_internal::ParseOneCharToken(a1, 0x45u))
              {
                goto LABEL_50;
              }
            }
          }

          else
          {
            *(a1 + 20) = v27.i32[0];
          }

          *(a1 + 28) = v88;
          v30 = *(a1 + 20);
          v31 = *(a1 + 24);
          v32 = v30 + 1;
          v33 = v31 + 1;
          *(a1 + 20) = v30 + 1;
          *(a1 + 24) = v31 + 1;
          if (v30 <= 255 && v31 < 0x20000 && (v34 = *(a1 + 28), v35 = (*a1 + v34), *v35 == 105) && v35[1] == 108)
          {
            *(a1 + 28) = v34 + 2;
            *(a1 + 20) = v30;
              ;
            }

            if (absl::lts_20240722::debugging_internal::ParseOneCharToken(a1, 0x45u))
            {
              goto LABEL_50;
            }

            v30 = *(a1 + 20);
            v33 = *(a1 + 24);
            v32 = v30 + 1;
          }

          else
          {
            *(a1 + 20) = v30;
          }

          *(a1 + 28) = v88;
          *(a1 + 20) = v32;
          *(a1 + 24) = v33 + 1;
          if (v30 <= 255 && v33 < 0x20000)
          {
            v36 = *(a1 + 28);
            v37 = (*a1 + v36);
            if (*v37 == 103 && v37[1] == 115)
            {
              *(a1 + 28) = v36 + 2;
            }
          }

          *(a1 + 20) = v32;
          *(a1 + 24) = v33 + 2;
          if (v30 > 255 || v33 > 131070 || (v38 = *(a1 + 28), v39 = (*a1 + v38), *v39 != 110) || v39[1] != 119)
          {
            *(a1 + 20) = v32;
            *(a1 + 24) = v33 + 3;
            if (v30 > 255)
            {
              goto LABEL_92;
            }

            if (v33 > 131069)
            {
              goto LABEL_92;
            }

            v38 = *(a1 + 28);
            v40 = (*a1 + v38);
            if (*v40 != 110 || v40[1] != 97)
            {
              goto LABEL_92;
            }
          }

          *(a1 + 28) = v38 + 2;
          *(a1 + 20) = v30;
            ;
          }

          v41 = *(a1 + 20);
          *(a1 + 20) = vadd_s32(v41, 0x100000001);
          v30 = v41.i32[0];
          if (v41.i32[0] <= 255 && v41.i32[1] < 0x20000 && (v42 = *(a1 + 28), *(*a1 + v42) == 95))
          {
            *(a1 + 28) = v42 + 1;
            *(a1 + 20) = v41.i32[0];
            if (absl::lts_20240722::debugging_internal::ParseType(a1) && ((absl::lts_20240722::debugging_internal::ParseOneCharToken(a1, 0x45u) & 1) != 0 || (absl::lts_20240722::debugging_internal::ParseInitializer(a1) & 1) != 0))
            {
              goto LABEL_50;
            }
          }

          else
          {
LABEL_92:
            *(a1 + 20) = v30;
          }

          *(a1 + 28) = v88;
          v43 = *(a1 + 20);
          v44 = vadd_s32(v43, 0x100000001);
          *(a1 + 20) = v44;
          v45 = v43.i32[0];
          if (v43.i32[0] <= 255 && v43.i32[1] < 0x20000)
          {
            v46 = *(a1 + 28);
            v47 = (*a1 + v46);
            if (*v47 == 103 && v47[1] == 115)
            {
              *(a1 + 28) = v46 + 2;
            }
          }

          v48 = v44.i32[0];
          *(a1 + 20) = v44.i32[0];
          *(a1 + 24) = v43.i32[1] + 2;
          if (v43.i32[0] <= 255 && v43.i32[1] <= 131070 && (v49 = *(a1 + 28), v50 = (*a1 + v49), *v50 == 100) && v50[1] == 108 || (v51 = v43.i32[1] + 3, *(a1 + 20) = v44.i32[0], *(a1 + 24) = v43.i32[1] + 3, v43.i32[0] <= 255) && v43.i32[1] <= 131069 && (v49 = *(a1 + 28), v52 = (*a1 + v49), *v52 == 100) && v52[1] == 97)
          {
            *(a1 + 28) = v49 + 2;
            *(a1 + 20) = v43.i32[0];
            if (absl::lts_20240722::debugging_internal::ParseExpression(a1))
            {
              goto LABEL_50;
            }

            v45 = *(a1 + 20);
            v51 = *(a1 + 24);
            v48 = v45 + 1;
          }

          else
          {
            *(a1 + 20) = v43.i32[0];
          }

          *(a1 + 28) = v88;
          *(a1 + 20) = v48;
          *(a1 + 24) = v51 + 1;
          if (v45 > 255 || v51 >= 0x20000 || ((v53 = *(a1 + 28), v54 = *(*a1 + v53) - 99, v55 = v54 > 0x10, v56 = (1 << v54) & 0x18003, !v55) ? (v57 = v56 == 0) : (v57 = 1), v57))
          {
            *(a1 + 20) = v45;
          }

          else
          {
            *(a1 + 28) = v53 + 1;
            *(a1 + 20) = v45;
            if (absl::lts_20240722::debugging_internal::ParseOneCharToken(a1, 0x63u) && absl::lts_20240722::debugging_internal::ParseType(a1) && (absl::lts_20240722::debugging_internal::ParseExpression(a1) & 1) != 0)
            {
              goto LABEL_50;
            }
          }

          *(a1 + 28) = v88;
          v58 = *(a1 + 20);
          *(a1 + 20) = vadd_s32(v58, 0x100000001);
          if (v58.i32[0] <= 255 && v58.i32[1] < 0x20000 && (v59 = *(a1 + 28), v60 = (*a1 + v59), *v60 == 99) && v60[1] == 118)
          {
            *(a1 + 28) = v59 + 2;
            *(a1 + 20) = v58.i32[0];
            if (!absl::lts_20240722::debugging_internal::ParseType(a1))
            {
              goto LABEL_142;
            }

            v87 = *(a1 + 28);
            if (absl::lts_20240722::debugging_internal::ParseOneCharToken(a1, 0x5Fu))
            {
                ;
              }

              if (absl::lts_20240722::debugging_internal::ParseOneCharToken(a1, 0x45u))
              {
                goto LABEL_50;
              }
            }

            *(a1 + 28) = v87;
            v61 = absl::lts_20240722::debugging_internal::ParseExpression(a1);
          }

          else
          {
            *(a1 + 20) = v58.i32[0];
            LODWORD(v87) = -1;
            v62 = absl::lts_20240722::debugging_internal::ParseOperatorName(a1, &v87);
            v63 = v87;
            if (v87 > 0)
            {
              v64 = v62;
            }

            else
            {
              v64 = 0;
            }

            if (v64 != 1)
            {
              goto LABEL_142;
            }

            if (v87 >= 3)
            {
              if (!absl::lts_20240722::debugging_internal::ParseExpression(a1))
              {
                goto LABEL_142;
              }

              v63 = v87;
            }

            if (v63 > 1)
            {
              if (!absl::lts_20240722::debugging_internal::ParseExpression(a1))
              {
                goto LABEL_142;
              }

              v63 = v87;
            }

            if (v63 < 1)
            {
              goto LABEL_50;
            }

            v61 = absl::lts_20240722::debugging_internal::ParseExpression(a1);
          }

          if (v61)
          {
            goto LABEL_50;
          }

LABEL_142:
          *(a1 + 28) = v88;
          v65 = *(a1 + 20);
          v66 = *(a1 + 24);
          v67 = v65 + 1;
          v68 = v66 + 1;
          *(a1 + 20) = v65 + 1;
          *(a1 + 24) = v66 + 1;
          if (v65 <= 255 && v66 < 0x20000 && (v69 = *(a1 + 28), v70 = (*a1 + v69), *v70 == 116) && v70[1] == 105)
          {
            *(a1 + 28) = v69 + 2;
            *(a1 + 20) = v65;
            if (absl::lts_20240722::debugging_internal::ParseType(a1))
            {
              goto LABEL_50;
            }

            v65 = *(a1 + 20);
            v68 = *(a1 + 24);
            v67 = v65 + 1;
          }

          else
          {
            *(a1 + 20) = v65;
          }

          *(a1 + 28) = v88;
          v71 = v68 + 1;
          *(a1 + 20) = v67;
          *(a1 + 24) = v68 + 1;
          if (v65 <= 255 && v68 < 0x20000 && (v72 = *(a1 + 28), v73 = (*a1 + v72), *v73 == 116) && v73[1] == 101)
          {
            *(a1 + 28) = v72 + 2;
            *(a1 + 20) = v65;
            if (absl::lts_20240722::debugging_internal::ParseExpression(a1))
            {
              goto LABEL_50;
            }

            v65 = *(a1 + 20);
            v71 = *(a1 + 24);
          }

          else
          {
            *(a1 + 20) = v65;
          }

          *(a1 + 28) = v88;
          v74 = v65 + 1;
          v75 = v71 + 1;
          *(a1 + 20) = v65 + 1;
          *(a1 + 24) = v71 + 1;
          if (v65 <= 255 && v71 < 0x20000 && (v76 = *(a1 + 28), v77 = (*a1 + v76), *v77 == 115) && v77[1] == 116)
          {
            *(a1 + 28) = v76 + 2;
            *(a1 + 20) = v65;
            if (absl::lts_20240722::debugging_internal::ParseType(a1))
            {
              goto LABEL_50;
            }

            v65 = *(a1 + 20);
            v75 = *(a1 + 24);
            v74 = v65 + 1;
          }

          else
          {
            *(a1 + 20) = v65;
          }

          *(a1 + 28) = v88;
          v78 = v75 + 1;
          *(a1 + 20) = v74;
          *(a1 + 24) = v75 + 1;
          if (v65 <= 255 && v75 < 0x20000 && (v79 = *(a1 + 28), v80 = (*a1 + v79), *v80 == 97) && v80[1] == 116)
          {
            *(a1 + 28) = v79 + 2;
            *(a1 + 20) = v65;
            if (absl::lts_20240722::debugging_internal::ParseType(a1))
            {
              goto LABEL_50;
            }

            v65 = *(a1 + 20);
            v78 = *(a1 + 24);
          }

          else
          {
            *(a1 + 20) = v65;
          }

          *(a1 + 28) = v88;
          *(a1 + 20) = v65 + 1;
          *(a1 + 24) = v78 + 1;
          if (v65 <= 255 && v78 < 0x20000 && (v81 = *(a1 + 28), v82 = (*a1 + v81), *v82 == 97) && v82[1] == 122)
          {
            *(a1 + 28) = v81 + 2;
            *(a1 + 20) = v65;
            if (absl::lts_20240722::debugging_internal::ParseExpression(a1))
            {
              goto LABEL_50;
            }
          }

          else
          {
            *(a1 + 20) = v65;
          }

          *(a1 + 28) = v88;
          if (!absl::lts_20240722::debugging_internal::ParseTwoCharToken(a1, "nx") || (absl::lts_20240722::debugging_internal::ParseExpression(a1) & 1) == 0)
          {
            *(a1 + 28) = v88;
            if (!absl::lts_20240722::debugging_internal::ParseTwoCharToken(a1, "sZ") || (absl::lts_20240722::debugging_internal::ParseFunctionParam(a1) & 1) == 0 && (absl::lts_20240722::debugging_internal::ParseTemplateParam(a1) & 1) == 0)
            {
              *(a1 + 28) = v88;
              if (!absl::lts_20240722::debugging_internal::ParseTwoCharToken(a1, "sP"))
              {
                goto LABEL_188;
              }

                ;
              }

              if ((absl::lts_20240722::debugging_internal::ParseOneCharToken(a1, 0x45u) & 1) == 0)
              {
LABEL_188:
                if ((*(a1 + 28) = v88, (absl::lts_20240722::debugging_internal::ParseTwoCharToken(a1, "fl") & 1) == 0) && !absl::lts_20240722::debugging_internal::ParseTwoCharToken(a1, "fr") || !absl::lts_20240722::debugging_internal::ParseOperatorName(a1, 0) || (absl::lts_20240722::debugging_internal::ParseExpression(a1) & 1) == 0)
                {
                  if ((*(a1 + 28) = v88, (absl::lts_20240722::debugging_internal::ParseTwoCharToken(a1, "fL") & 1) == 0) && !absl::lts_20240722::debugging_internal::ParseTwoCharToken(a1, "fR") || !absl::lts_20240722::debugging_internal::ParseOperatorName(a1, 0) || !absl::lts_20240722::debugging_internal::ParseExpression(a1) || (absl::lts_20240722::debugging_internal::ParseExpression(a1) & 1) == 0)
                  {
                    *(a1 + 28) = v88;
                    if (!absl::lts_20240722::debugging_internal::ParseTwoCharToken(a1, "tw") || (absl::lts_20240722::debugging_internal::ParseExpression(a1) & 1) == 0)
                    {
                      *(a1 + 28) = v88;
                      if ((absl::lts_20240722::debugging_internal::ParseTwoCharToken(a1, "tr") & 1) == 0 && ((absl::lts_20240722::debugging_internal::ParseTwoCharToken(a1, "dt") & 1) == 0 && !absl::lts_20240722::debugging_internal::ParseTwoCharToken(a1, "pt") || !absl::lts_20240722::debugging_internal::ParseExpression(a1) || (absl::lts_20240722::debugging_internal::ParseUnresolvedName(a1) & 1) == 0))
                      {
                        *(a1 + 28) = v88;
                        if (!absl::lts_20240722::debugging_internal::ParseTwoCharToken(a1, "ds") || !absl::lts_20240722::debugging_internal::ParseExpression(a1) || (absl::lts_20240722::debugging_internal::ParseExpression(a1) & 1) == 0)
                        {
                          *(a1 + 28) = v88;
                          if (!absl::lts_20240722::debugging_internal::ParseTwoCharToken(a1, "sp") || (absl::lts_20240722::debugging_internal::ParseExpression(a1) & 1) == 0)
                          {
                            *(a1 + 28) = v88;
                            if (!absl::lts_20240722::debugging_internal::ParseOneCharToken(a1, 0x75u) || !absl::lts_20240722::debugging_internal::ParseSourceName(a1))
                            {
                              goto LABEL_239;
                            }

                              ;
                            }

                            if ((absl::lts_20240722::debugging_internal::ParseOneCharToken(a1, 0x45u) & 1) == 0)
                            {
LABEL_239:
                              *(a1 + 28) = v88;
                              if (!absl::lts_20240722::debugging_internal::ParseTwoCharToken(a1, "rq") || !absl::lts_20240722::debugging_internal::ParseRequirement(a1))
                              {
                                goto LABEL_219;
                              }

                                ;
                              }

                              if ((absl::lts_20240722::debugging_internal::ParseOneCharToken(a1, 0x45u) & 1) == 0)
                              {
LABEL_219:
                                *(a1 + 28) = v88;
                                if (!absl::lts_20240722::debugging_internal::ParseTwoCharToken(a1, "rQ") || !absl::lts_20240722::debugging_internal::ParseBareFunctionType(a1) || !absl::lts_20240722::debugging_internal::ParseOneCharToken(a1, 0x5Fu) || !absl::lts_20240722::debugging_internal::ParseRequirement(a1))
                                {
                                  goto LABEL_220;
                                }

                                  ;
                                }

                                if ((absl::lts_20240722::debugging_internal::ParseOneCharToken(a1, 0x45u) & 1) == 0)
                                {
LABEL_220:
                                  *(a1 + 28) = v88;
                                  result = absl::lts_20240722::debugging_internal::ParseUnresolvedName(a1);
                                  goto LABEL_51;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          goto LABEL_50;
        }

          ;
        }

        v4 = *(a1 + 20);
        v9 = *(a1 + 24);
        v6 = v9 + 1;
        *(a1 + 20) = v4 + 1;
        *(a1 + 24) = v9 + 1;
        if (v4 <= 255 && v9 < 0x20000)
        {
          v10 = *(a1 + 28);
          if (*(*a1 + v10) == 69)
          {
            *(a1 + 28) = v10 + 1;
            *(a1 + 20) = v4;
            goto LABEL_50;
          }
        }
      }
    }

    *(a1 + 20) = v4;
    goto LABEL_16;
  }

LABEL_51:
  --*(a1 + 20);
  return result;
}