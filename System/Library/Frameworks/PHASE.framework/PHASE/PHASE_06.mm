void std::__function::__func<Phase::Controller::SpatialModelerInstance::StopSustainGraph(BOOL)::$_1,std::allocator<Phase::Controller::SpatialModelerInstance::StopSustainGraph(BOOL)::$_1>,void ()(BOOL,std::list<std::shared_ptr<Phase::Job>>)>::operator()(Phase::Logger *a1, unsigned __int8 *a2, uint64_t *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v21[0] = v21;
  v21[1] = v21;
  v22 = 0;
  v5 = a3[2];
  if (v5)
  {
    v7 = *a3;
    v6 = a3[1];
    v8 = *(*a3 + 8);
    v9 = *v6;
    *(v9 + 8) = v8;
    *v8 = v9;
    v10 = v21[0];
    *(v21[0] + 8) = v6;
    *v6 = v10;
    *(v7 + 8) = v21;
    v21[0] = v7;
    v22 = v5;
    a3[2] = 0;
  }

  v11 = *(a1 + 1);
  v12 = **(Phase::Logger::GetInstance(a1) + 240);
  v13 = v12;
  if (v4)
  {
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    Phase::Controller::SpatialModelerInstance::GetDescription(__p, v11);
    if (v24 >= 0)
    {
      v14 = __p;
    }

    else
    {
      v14 = __p[0];
    }

    v15 = *(a1 + 2);
    *buf = 136315906;
    v26 = "CvmSpatialModelerInstance.mm";
    v27 = 1024;
    v28 = 3103;
    v29 = 2080;
    v30 = v14;
    v31 = 2048;
    v32 = v15;
    v16 = "%25s:%-5d %s: succesfully stopped all (%lu) sustain graphs";
    v17 = v13;
    v18 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    Phase::Controller::SpatialModelerInstance::GetDescription(__p, v11);
    if (v24 >= 0)
    {
      v19 = __p;
    }

    else
    {
      v19 = __p[0];
    }

    v20 = *(a1 + 2);
    *buf = 136315906;
    v26 = "CvmSpatialModelerInstance.mm";
    v27 = 1024;
    v28 = 3108;
    v29 = 2080;
    v30 = v19;
    v31 = 2048;
    v32 = v20;
    v16 = "%25s:%-5d %s: failed to stop (%lu) sustain graphs";
    v17 = v13;
    v18 = OS_LOG_TYPE_ERROR;
  }

  _os_log_impl(&dword_23A302000, v17, v18, v16, buf, 0x26u);
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_16:

  atomic_store(0, (v11 + 5643));
  std::mutex::unlock((v11 + 5648));
  std::__list_imp<std::shared_ptr<Phase::Job>>::clear(v21);
}

void *std::__split_buffer<double *>::emplace_back<double *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<double *>>(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<double *>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,Phase::Handle64>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,Phase::Handle64>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,Phase::Handle64>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,Phase::Handle64>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<Phase::UniqueObjectId,Phase::Handle64>,void *> *>>(void *a1, uint64_t *a2, uint64_t *a3)
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
        *(v8 + 1) = *(a2 + 1);
        v8[4] = a2[4];
        v9 = *v8;
        std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,Phase::Handle64>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,Phase::Handle64>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,Phase::Handle64>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,Phase::Handle64>>>::__node_insert_multi(a1, v8);
        a2 = *a2;
        v8 = v9;
        if (!v9)
        {
          goto LABEL_9;
        }
      }

      do
      {
        v10 = *v8;
        operator delete(v8);
        v8 = v10;
      }

      while (v10);
    }
  }

LABEL_9:
  if (a2 != a3)
  {
    operator new();
  }
}

void sub_23A36D810(void *a1)
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

void std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,Phase::Handle64>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,Phase::Handle64>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,Phase::Handle64>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,Phase::Handle64>>>::__node_insert_multi(uint64_t a1, void *a2)
{
  v4 = 0xCBF29CE484222325;
  for (i = 16; i != 32; ++i)
  {
    v4 = 0x100000001B3 * (v4 ^ *(a2 + i));
  }

  a2[1] = v4;
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      prime = v11;
    }

    else
    {
      prime = v10;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v6 = *(a1 + 8);
    }

    if (prime > v6)
    {
LABEL_15:
      if (!(prime >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    if (prime < v6)
    {
      v13 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v6 < 3 || (v14 = vcnt_s8(v6), v14.i16[0] = vaddlv_u8(v14), v14.u32[0] > 1uLL))
      {
        v13 = std::__next_prime(v13);
      }

      else
      {
        v15 = 1 << -__clz(v13 - 1);
        if (v13 >= 2)
        {
          v13 = v15;
        }
      }

      if (prime <= v13)
      {
        prime = v13;
      }

      if (prime >= v6)
      {
        v6 = *(a1 + 8);
      }

      else
      {
        if (prime)
        {
          goto LABEL_15;
        }

        v30 = *a1;
        *a1 = 0;
        if (v30)
        {
          operator delete(v30);
        }

        v6 = 0;
        *(a1 + 8) = 0;
      }
    }
  }

  v16 = vcnt_s8(v6);
  v16.i16[0] = vaddlv_u8(v16);
  if (v16.u32[0] > 1uLL)
  {
    v17 = v4;
    if (v6 <= v4)
    {
      v17 = v4 % v6;
    }
  }

  else
  {
    v17 = (v6 - 1) & v4;
  }

  v18 = *a1;
  v19 = *(*a1 + 8 * v17);
  if (v19)
  {
    v20 = 0;
    do
    {
      v21 = v19;
      v19 = *v19;
      if (!v19)
      {
        break;
      }

      v22 = v19[1];
      if (v16.u32[0] > 1uLL)
      {
        v23 = v19[1];
        if (v22 >= v6)
        {
          v23 = v22 % v6;
        }
      }

      else
      {
        v23 = v22 & (v6 - 1);
      }

      if (v23 != v17)
      {
        break;
      }

      if (v22 == v4)
      {
        v24 = v19[2] == a2[2] && v19[3] == a2[3];
        v25 = v24;
      }

      else
      {
        v25 = 0;
      }

      v26 = v25 != (v20 & 1);
      v27 = v20 & v26;
      v20 |= v26;
    }

    while (v27 != 1);
  }

  else
  {
    v21 = 0;
  }

  v28 = a2[1];
  if (v16.u32[0] > 1uLL)
  {
    if (v28 >= v6)
    {
      v28 %= v6;
    }
  }

  else
  {
    v28 &= v6 - 1;
  }

  if (!v21)
  {
    *a2 = *(a1 + 16);
    *(a1 + 16) = a2;
    v18[v28] = a1 + 16;
    if (!*a2)
    {
      goto LABEL_64;
    }

    v29 = *(*a2 + 8);
    if (v16.u32[0] > 1uLL)
    {
      if (v29 >= v6)
      {
        v29 %= v6;
      }
    }

    else
    {
      v29 &= v6 - 1;
    }

LABEL_63:
    *(*a1 + 8 * v29) = a2;
    goto LABEL_64;
  }

  *a2 = *v21;
  *v21 = a2;
  if (*a2)
  {
    v29 = *(*a2 + 8);
    if (v16.u32[0] > 1uLL)
    {
      if (v29 >= v6)
      {
        v29 %= v6;
      }
    }

    else
    {
      v29 &= v6 - 1;
    }

    if (v29 != v28)
    {
      goto LABEL_63;
    }
  }

LABEL_64:
  ++*(a1 + 24);
}

void _ZN5Phase7details13SharedSlotMapINS_10Controller22SpatialModelerInstance10SubmixInfoENS_8Handle64EE12DeepCopyFromIZNS_13SharedSlotMapIS4_S5_DnE12DeepCopyFromERKS9_EUlRT_E_EEvRKS6_OSC_(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *(a1 + 16) = v4;
  Phase::details::SharedSlotMap<Phase::Controller::SpatialModelerInstance::SubmixInfo,Phase::Handle64>::AllocSlots(&v11, v4);
  v5 = *(a1 + 8);
  *a1 = v11;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = 0;
    for (i = 0; i < v6; ++i)
    {
      if (*(*a2 + v7))
      {
        std::allocate_shared[abi:ne200100]<Phase::Controller::SpatialModelerInstance::SubmixInfo,std::allocator<Phase::Controller::SpatialModelerInstance::SubmixInfo>,Phase::Controller::SpatialModelerInstance::SubmixInfo&,0>();
      }

      *(*a1 + v7 + 16) = *(*a2 + v7 + 16);
      v7 += 24;
    }
  }

  v9 = atomic_load((a2 + 20));
  atomic_store(v9, (a1 + 20));
  v10 = atomic_load((a2 + 24));
  atomic_store(v10, (a1 + 24));
}

void Phase::Controller::SpatialModelerSystem::~SpatialModelerSystem(Phase::Controller::SpatialModelerSystem *this)
{
  Phase::Controller::SpatialModelerSystem::Destroy(this);
  *(this + 12) = 0;
  v2 = (this + 64);
  std::vector<Phase::Controller::GeometryPermutation>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (this + 40);
  std::vector<Phase::SpatialModeler::OptionalPropertyDescription>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,std::unique_ptr<Phase::Controller::SpatialModelerCategory>>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,std::unique_ptr<Phase::Controller::SpatialModelerCategory>>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,std::unique_ptr<Phase::Controller::SpatialModelerCategory>>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,std::unique_ptr<Phase::Controller::SpatialModelerCategory>>>>::~__hash_table(this);
}

void Phase::Controller::SpatialModelerSystem::Destroy(Phase::Controller::SpatialModelerSystem *this)
{
  for (i = *(this + 2); i; i = *i)
  {
    v3 = *(i[3] + 80);
    if (Phase::Controller::SpatialModelerInstance::StopUpdate(v3))
    {
      Phase::Controller::SpatialModelerInstance::Reset(v3);
    }
  }

  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,std::unique_ptr<Phase::Controller::SpatialModelerCategory>>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,std::unique_ptr<Phase::Controller::SpatialModelerCategory>>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,std::unique_ptr<Phase::Controller::SpatialModelerCategory>>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,std::unique_ptr<Phase::Controller::SpatialModelerCategory>>>>::clear(this);
}

void Phase::Controller::SpatialModelerSystem::Initialize(Phase::Controller::SpatialModelerSystem *this, int8x8_t *a2, Phase::Controller::TaskManager *a3, Phase::Controller::RendererSystem *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  *(this + 11) = a3;
  *(this + 12) = *(a3 + 5);
  v6 = **(Phase::Logger::GetInstance(this) + 240);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    buf = 136315394;
    buf_4 = "CvmSpatialModelerSystem.mm";
    buf_12 = 1024;
    buf_14 = 73;
    _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Initializing spatial modeler system with engine (dispatch) JobManager.", &buf, 0x12u);
  }

  v7 = Phase::Controller::TaskManager::GetService<Phase::Controller::SpatialModelerRegistry>(a3, 5);
  SpatialCategories = Phase::Controller::SpatialModelerRegistry::GetSpatialCategories(v7, v23);
  if (!v24)
  {
    Phase::SpatialModeler::GetOptionalPropertyDescriptions(SpatialCategories);
  }

  v10 = (v24 + 16);
  v9 = *(v24 + 16);
  v11 = a2[6];
  if (v11)
  {
    v12 = vcnt_s8(v11);
    v12.i16[0] = vaddlv_u8(v12);
    if (v12.u32[0] > 1uLL)
    {
      v13 = *(v24 + 16);
      if (*&v11 <= v9)
      {
        v13 = v9 % *&v11;
      }
    }

    else
    {
      v13 = (*&v11 - 1) & v9;
    }

    v14 = *(*&a2[5] + 8 * v13);
    if (v14)
    {
      for (i = *v14; i; i = *i)
      {
        v16 = i[1];
        if (v16 == v9)
        {
          if (*(i + 4) == v9)
          {
            operator new();
          }
        }

        else
        {
          if (v12.u32[0] > 1uLL)
          {
            if (v16 >= *&v11)
            {
              v16 %= *&v11;
            }
          }

          else
          {
            v16 &= *&v11 - 1;
          }

          if (v16 != v13)
          {
            break;
          }
        }
      }
    }
  }

  v17 = **(Phase::Logger::GetInstance(SpatialCategories) + 240);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = *v10;
    if (*v10 == 4)
    {
      v19 = "ambient";
    }

    else
    {
      v4 = GetSpatialCategoryString(*v10);
      v21 = v4;
      v19 = [v4 UTF8String];
    }

    buf = 136315650;
    buf_4 = "CvmSpatialModelerSystem.mm";
    buf_12 = 1024;
    buf_14 = 108;
    v29 = 2080;
    v30 = v19;
    _os_log_impl(&dword_23A302000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument): Initial spatial category to modeler map does not contain spatial category: %s.", &buf, 0x1Cu);
    if (v18 != 4)
    {
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "Initial spatial category to modeler map does not contain spatial category: %s.");
  exception->__vftable = (MEMORY[0x277D828F8] + 16);
}

void sub_23A36EBCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(va);
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(va1);
  _Unwind_Resume(a1);
}

unsigned __int8 *Phase::Controller::SpatialModelerSystem::SetParameters(unsigned __int8 *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = result;
    v5 = *a2;
    do
    {
      v6 = *v5;
      v5 += 6;
      SpatialModelerCategory = Phase::Controller::SpatialModelerSystem::GetSpatialModelerCategory(v4, v6);
      result = Phase::Controller::SpatialModelerInstance::SetParameter(*(SpatialModelerCategory + 80), v2);
      v2 = v5;
    }

    while (v5 != v3);
  }

  return result;
}

void Phase::Controller::SpatialModelerSystem::SetComputeTimes(Phase::Logger *a1, uint64_t a2)
{
  for (i = *(a2 + 16); i; i = *i)
  {
    SpatialModelerCategory = Phase::Controller::SpatialModelerSystem::GetSpatialModelerCategory(a1, *(i + 4));
    Phase::Controller::SpatialModelerCategory::SetComputeTime(SpatialModelerCategory, *(i + 3));
  }
}

Phase::Controller::SpatialSubmixRouter *Phase::Controller::SpatialModelerSystem::Stop(Phase::Controller::SpatialSubmixRouter *this)
{
  for (i = *(this + 2); i; i = *i)
  {
    v2 = *(i[3] + 80);
    this = Phase::Controller::SpatialModelerInstance::StopUpdate(v2);
    if (this)
    {
      this = Phase::Controller::SpatialModelerInstance::Reset(v2);
    }
  }

  return this;
}

void Phase::Controller::SpatialModelerSystem::SetModelers(Phase::Logger *a1, uint64_t a2, uint64_t *a3)
{
  v18[0] = 0;
  v18[1] = 0;
  v17 = v18;
  memset(v15, 0, sizeof(v15));
  v16 = 1065353216;
  for (i = (a2 + 16); ; Phase::Controller::SpatialModelerCategory::SetActiveSpatialModeler(SpatialModelerCategory, i[3]))
  {
    i = *i;
    if (!i)
    {
      break;
    }

    SpatialModelerCategory = Phase::Controller::SpatialModelerSystem::GetSpatialModelerCategory(a1, *(i + 4));
    v7 = *(SpatialModelerCategory + 10);
    if (v7)
    {
      v8 = atomic_load((v7 + 5641));
      if (v8)
      {
        std::__tree<Phase::SpatialCategory>::__emplace_unique_key_args<Phase::SpatialCategory,Phase::SpatialCategory const&>(&v17, i + 4);
      }
    }
  }

  Phase::Controller::SpatialModelerSystem::SetParameters(a1, a3);
  v9 = v17;
  if (v17 != v18)
  {
    do
    {
      v10 = (*(Phase::Controller::SpatialModelerSystem::GetSpatialModelerCategory(a1, *(v9 + 7)) + 80) + 5641);
      v11 = atomic_load(v10);
      if ((v11 & 1) == 0)
      {
        atomic_store(1u, v10);
      }

      v12 = v9[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v9[2];
          v14 = *v13 == v9;
          v9 = v13;
        }

        while (!v14);
      }

      v9 = v13;
    }

    while (v13 != v18);
  }

  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(v15);
  std::__tree<Phase::SpatialCategory>::destroy(&v17, v18[0]);
}

void sub_23A36EF70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, void *a15)
{
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(&a9);
  std::__tree<Phase::SpatialCategory>::destroy(&a14, a15);
  _Unwind_Resume(a1);
}

uint64_t Phase::Controller::SpatialModelerSystem::GetSpatialModelerCategory(Phase::Logger *a1, int a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 1);
  if (!v2)
  {
    goto LABEL_17;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_17:
    v9 = **(Phase::Logger::GetInstance(a1) + 240);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315650;
      v13 = "CvmSpatialModelerSystem.mm";
      v14 = 1024;
      v15 = 382;
      v16 = 1024;
      v17 = a2;
      _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (InvalidId) [iterator == mSpatialModelerCategories.end() is true]: Invalid SpatialCategory %d!", &v12, 0x18u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    _ZN5Phase10Controller9InvalidIdCI1St11logic_errorEPKc(exception, "Invalid SpatialCategory %d!");
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_17;
    }

LABEL_16:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_17;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_16;
  }

  return v6[3];
}

uint64_t Phase::Controller::SpatialModelerSystem::GetSceneQueryFilterForSpatialCategory(Phase::Logger *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if ((a1 - 1) >= 4)
  {
    v2 = a1;
    v3 = **(Phase::Logger::GetInstance(a1) + 240);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315650;
      v6 = "CvmSpatialModelerSystem.mm";
      v7 = 1024;
      v8 = 280;
      v9 = 1024;
      v10 = v2;
      _os_log_impl(&dword_23A302000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument): Could not build SceneQueryFilter. Unknown SpatialCategory : %d.", &v5, 0x18u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Could not build SceneQueryFilter. Unknown SpatialCategory : %d.");
  }

  return qword_23A554DC0[a1 - 1];
}

uint64_t Phase::Controller::SpatialModelerSystem::RemoveAllInputs(uint64_t result, uint64_t a2, uint64_t a3)
{
  for (i = *(result + 16); i; i = *i)
  {
    v6 = i[3];
    v7[0] = a2;
    v7[1] = a3;
    result = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>>>::find<Phase::UniqueObjectId>((v6 + 88), v7);
    if (result)
    {
      result = Phase::Controller::SpatialModelerCategory::RemoveInput(i[3], a2, a3);
    }
  }

  return result;
}

BOOL Phase::Controller::SpatialModelerSystem::IsPrepared(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = v3[3];
      v11[0] = a2;
      v11[1] = a3;
      if (std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>>>::find<Phase::UniqueObjectId>((v8 + 88), v11))
      {
        ++v7;
        v6 += Phase::Controller::SpatialModelerInstance::IsPrepared(*(v3[3] + 80), a2, a3);
      }

      v3 = *v3;
    }

    while (v3);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  return v7 > 0 && v7 == v6;
}

uint64_t Phase::Controller::SpatialModelerSystem::IsStopped(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  while (1)
  {
    v6 = v3[3];
    v8[0] = a2;
    v8[1] = a3;
    if (std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>>>::find<Phase::UniqueObjectId>((v6 + 88), v8))
    {
      result = Phase::Controller::SpatialModelerInstance::IsStopped(*(v3[3] + 80), a2, a3);
      if (!result)
      {
        break;
      }
    }

    v3 = *v3;
    if (!v3)
    {
      return 1;
    }
  }

  return result;
}

void std::vector<Phase::Geometry::EntityType>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<Phase::Controller::GeometryPermutation>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void std::vector<Phase::Controller::GeometryPermutation>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 80;
        std::__destroy_at[abi:ne200100]<Phase::Controller::GeometryPermutation,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__destroy_at[abi:ne200100]<Phase::Controller::GeometryPermutation,0>(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  return std::__hash_table<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,std::__unordered_map_hasher<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,true>,std::__unordered_map_equal<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,true>,std::allocator<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>>>::~__hash_table(a1 + 8);
}

uint64_t std::vector<Phase::Controller::GeometryPermutation>::__init_with_size[abi:ne200100]<Phase::Controller::GeometryPermutation*,Phase::Controller::GeometryPermutation*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<Phase::Controller::GeometryPermutation>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23A36F630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<Phase::Controller::GeometryPermutation>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<Phase::Controller::GeometryPermutation>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Controller::GeometryPermutation>>(a1, a2);
  }

  std::vector<Phase::Controller::GeometryPermutation>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Controller::GeometryPermutation>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<Phase::Controller::GeometryPermutation>,Phase::Controller::GeometryPermutation*,Phase::Controller::GeometryPermutation*,Phase::Controller::GeometryPermutation*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a2 + v7;
      v9 = a4 + v7;
      *(a4 + v7) = *(a2 + v7);
      std::unordered_map<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,std::allocator<std::pair<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey const,Phase::OptionsValue>>>::unordered_map(a4 + v7 + 8, a2 + v7 + 8);
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      v10 = a4 + v7 + 48;
      *(v10 + 16) = 0;
      std::vector<Phase::Geometry::EntityType>::__init_with_size[abi:ne200100]<Phase::Geometry::EntityType*,Phase::Geometry::EntityType*>(v10, *(v8 + 48), *(v8 + 56), (*(v8 + 56) - *(v8 + 48)) >> 2);
      *(a4 + v7 + 72) = *(a2 + v7 + 72);
      v7 += 80;
    }

    while (v8 + 80 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_23A36F7AC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 80;
    v5 = -v2;
    do
    {
      std::__destroy_at[abi:ne200100]<Phase::Controller::GeometryPermutation,0>(v4);
      v4 -= 80;
      v5 += 80;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<Phase::Geometry::EntityType>::__init_with_size[abi:ne200100]<Phase::Geometry::EntityType*,Phase::Geometry::EntityType*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<Phase::Geometry::EntityType>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23A36F850(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<Phase::Geometry::EntityType>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, a2);
  }

  std::vector<Phase::Controller::GeometryPermutation>::__throw_length_error[abi:ne200100]();
}

uint64_t **Phase::UnorderedStringMap<Phase::OptionsValue>::Find(void *a1, __int128 *a2)
{
  v6 = *a2;
  __p[1] = 0;
  v5 = 0;
  __p[0] = 0;
  v2 = std::__hash_table<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,std::__unordered_map_hasher<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,true>,std::__unordered_map_equal<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,true>,std::allocator<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>>>::find<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey>(a1, __p);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_23A36F8FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **std::__hash_table<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,std::__unordered_map_hasher<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,true>,std::__unordered_map_equal<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,true>,std::allocator<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>>>::find<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey>(void *a1, uint64_t a2)
{
  v4 = std::__string_view_hash<char>::operator()[abi:ne200100](&v17, *(a2 + 24), *(a2 + 32));
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    v14 = a2 + 24;
    v12 = *(a2 + 24);
    v13 = *(v14 + 8);
    do
    {
      v15 = v11[1];
      if (v6 == v15)
      {
        if (v11[6] == v13 && !memcmp(v11[5], v12, v13))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v15 >= *&v5)
          {
            v15 %= *&v5;
          }
        }

        else
        {
          v15 &= *&v5 - 1;
        }

        if (v15 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

uint64_t std::__split_buffer<Phase::Controller::GeometryPermutation>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 80;
    std::__destroy_at[abi:ne200100]<Phase::Controller::GeometryPermutation,0>(i - 80);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void Phase::Controller::GeometryPermutation::~GeometryPermutation(Phase::Controller::GeometryPermutation *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  std::__hash_table<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,std::__unordered_map_hasher<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,true>,std::__unordered_map_equal<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,true>,std::allocator<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>>>::~__hash_table(this + 8);
}

uint64_t std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,std::unique_ptr<Phase::Controller::SpatialModelerCategory>>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,std::unique_ptr<Phase::Controller::SpatialModelerCategory>>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,std::unique_ptr<Phase::Controller::SpatialModelerCategory>>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,std::unique_ptr<Phase::Controller::SpatialModelerCategory>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,std::unique_ptr<Phase::Controller::SpatialModelerCategory>>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,std::unique_ptr<Phase::Controller::SpatialModelerCategory>>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,std::unique_ptr<Phase::Controller::SpatialModelerCategory>>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,std::unique_ptr<Phase::Controller::SpatialModelerCategory>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,std::unique_ptr<Phase::Controller::SpatialModelerCategory>>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,std::unique_ptr<Phase::Controller::SpatialModelerCategory>>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,std::unique_ptr<Phase::Controller::SpatialModelerCategory>>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,std::unique_ptr<Phase::Controller::SpatialModelerCategory>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[3];
      v2[3] = 0;
      if (v4)
      {
        (*(*v4 + 24))(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<Phase::SpatialCategory,std::unique_ptr<Phase::Controller::SpatialModelerCategory>>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[3];
    __p[3] = 0;
    if (v3)
    {
      (*(*v3 + 24))(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t *std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,double>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,double>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,double>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,double>>>::__emplace_unique_key_args<Phase::SpatialCategory,std::piecewise_construct_t const&,std::tuple<Phase::SpatialCategory const&>,std::tuple<>>(void *a1, int *a2)
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
    if (*&v3 <= v2)
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

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,std::unique_ptr<Phase::Controller::SpatialModelerCategory>>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,std::unique_ptr<Phase::Controller::SpatialModelerCategory>>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,std::unique_ptr<Phase::Controller::SpatialModelerCategory>>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,std::unique_ptr<Phase::Controller::SpatialModelerCategory>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,std::unique_ptr<Phase::Controller::SpatialModelerCategory>>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,std::unique_ptr<Phase::Controller::SpatialModelerCategory>>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,std::unique_ptr<Phase::Controller::SpatialModelerCategory>>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,std::unique_ptr<Phase::Controller::SpatialModelerCategory>>>>::__deallocate_node(a1, *(a1 + 16));
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

void std::__tree<Phase::SpatialCategory>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<Phase::SpatialCategory>::destroy(a1, *a2);
    std::__tree<Phase::SpatialCategory>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t *std::__tree<Phase::SpatialCategory>::__emplace_unique_key_args<Phase::SpatialCategory,Phase::SpatialCategory const&>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<Phase::SpatialCategory>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

void Phase::UnorderedStringMap<Phase::OptionsValue>::Set(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = *a2;
  if (v3 >= 0x17)
  {
    operator new();
  }

  v8 = *(a2 + 8);
  if (v3)
  {
    memmove(v7, v6, v3);
  }

  *(v7 + v3) = 0;
  Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey::InternalKey(&__p, v7);
  std::unordered_map<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,std::allocator<std::pair<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey const,Phase::OptionsValue>>>::insert_or_assign[abi:ne200100]<Phase::OptionsValue const&>(a1, &__p, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }
}

void sub_23A3700E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **std::unordered_map<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,std::allocator<std::pair<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey const,Phase::OptionsValue>>>::insert_or_assign[abi:ne200100]<Phase::OptionsValue const&>(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = std::__hash_table<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,std::__unordered_map_hasher<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,true>,std::__unordered_map_equal<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,true>,std::allocator<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>>>::__emplace_unique_key_args<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue const&>(a1, a2);
  v5 = v4;
  if ((v6 & 1) == 0)
  {
    std::__variant_detail::__assignment<std::__variant_detail::__traits<BOOL,int,unsigned int,float,double,Phase::Vector<float,2ul>,Phase::Vector<float,3ul>,Phase::Vector<float,4ul>,std::string,std::vector<unsigned int>,std::vector<unsigned long long>,Phase::UnorderedStringMap<Phase::OptionsValue>>>::__generic_assign[abi:ne200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<BOOL,int,unsigned int,float,double,Phase::Vector<float,2ul>,Phase::Vector<float,3ul>,Phase::Vector<float,4ul>,std::string,std::vector<unsigned int>,std::vector<unsigned long long>,Phase::UnorderedStringMap<Phase::OptionsValue>>,(std::__variant_detail::_Trait)1> const&>((v4 + 7), a3);
  }

  return v5;
}

uint64_t **std::__hash_table<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,std::__unordered_map_hasher<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,true>,std::__unordered_map_equal<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,true>,std::allocator<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>>>::__emplace_unique_key_args<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue const&>(void *a1, uint64_t a2)
{
  v4 = std::__string_view_hash<char>::operator()[abi:ne200100](v17, *(a2 + 24), *(a2 + 32));
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_20;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_20:
    std::__hash_table<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,std::__unordered_map_hasher<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,true>,std::__unordered_map_equal<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,true>,std::allocator<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>>>::__construct_node_hash<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue const&>();
  }

  v14 = a2 + 24;
  v12 = *(a2 + 24);
  v13 = *(v14 + 8);
  while (1)
  {
    v15 = v11[1];
    if (v15 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v15 >= *&v6)
      {
        v15 %= *&v6;
      }
    }

    else
    {
      v15 &= *&v6 - 1;
    }

    if (v15 != v9)
    {
      goto LABEL_20;
    }

LABEL_19:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_20;
    }
  }

  if (v11[6] != v13 || memcmp(v11[5], v12, v13))
  {
    goto LABEL_19;
  }

  return v11;
}

void sub_23A3703E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

std::string *std::pair<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey const,Phase::OptionsValue>::pair[abi:ne200100]<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue const&,0>(std::string *a1, __int128 *a2, uint64_t a3)
{
  v5 = Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey::InternalKey(a1, a2);
  std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<BOOL,int,unsigned int,float,double,Phase::Vector<float,2ul>,Phase::Vector<float,3ul>,Phase::Vector<float,4ul>,std::string,std::vector<unsigned int>,std::vector<unsigned long long>,Phase::UnorderedStringMap<Phase::OptionsValue>>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](&v5[1].__r_.__value_.__r.__words[2], a3);
  return a1;
}

void sub_23A3704B8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void Phase::Controller::SpatialQueryInstance::~SpatialQueryInstance(std::__shared_weak_count **this)
{
  Phase::Controller::SpatialQueryInstance::Destroy(this);
  v2 = this[9];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__function::__value_func<void ()(Phase::SpatialModeler::Query &)>::~__value_func[abi:ne200100]((this + 1));
}

void Phase::Controller::SpatialQueryInstance::Destroy(Phase::Controller::SpatialQueryInstance *this)
{
  Phase::SpatialModeler::Query::Clear(this);
  v2 = *(this + 15);
  if (v2)
  {
    v3 = *v2;
    if ((v3 - 4) >= 0xFFFFFFFD)
    {
      __const__ZN5Phase14SpatialModeler14DestroyInPlaceEPvNS0_15QueryOutputTypeE_fTable[v3]();
      v2 = *(this + 15);
    }

    operator delete(v2);
    *(this + 15) = 0;
  }

  v4 = *(this + 14);
  if (v4)
  {
    v5 = *v4;
    if ((v5 - 1) <= 3)
    {
      __const__ZN5Phase14SpatialModeler14DestroyInPlaceEPvNS0_14QueryInputTypeE_fTable[v5]();
      v4 = *(this + 14);
    }

    operator delete(v4);
    *(this + 14) = 0;
  }
}

uint64_t Phase::Controller::SpatialQueryInstance::Initialize(uint64_t a1, uint64_t a2, Phase::SystemAllocator *this, uint64_t a4, uint64_t a5)
{
  v37[3] = *MEMORY[0x277D85DE8];
  *(a1 + 128) = a2;
  *(a1 + 136) = this;
  v10 = *(a2 + 32);
  if (v10 > 4)
  {
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v11 = &__const__ZN5Phase14SpatialModeler14SizeAndAlignOfENS0_14QueryInputTypeE_table + 16 * v10;
    v12 = *v11;
    v13 = *(v11 + 1);
  }

  v14 = Phase::SystemAllocator::Alloc(this, v12, v13);
  *(a1 + 112) = v14;
  v15 = *(a2 + 32);
  if ((v15 - 1) > 3 || (v14 = __const__ZN5Phase14SpatialModeler11InitInPlaceEPvNS0_14QueryInputTypeE_fTable[v15](), (v14 & 1) == 0))
  {
    v28 = **(Phase::Logger::GetInstance(v14) + 400);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "CvmSpatialQueryInstance.mm";
      *&buf[12] = 1024;
      *&buf[14] = 34;
      _os_log_impl(&dword_23A302000, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [!queryInputInited is true]: Failed to initialize query input!", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Failed to initialize query input!");
  }

  v16 = 0;
  v17 = 0;
  *&buf[16] = xmmword_23A554DE0;
  v35 = xmmword_23A554DF0;
  v18 = *(a2 + 36);
  *buf = 0;
  *&buf[8] = 0;
  v36 = xmmword_23A554E00;
  if (v18 <= 3)
  {
    v19 = &buf[16 * v18];
    v16 = *v19;
    v17 = *(v19 + 1);
  }

  v20 = Phase::SystemAllocator::Alloc(this, v16, v17);
  *(a1 + 120) = v20;
  v21 = *(a2 + 36);
  if ((v21 - 4) < 0xFFFFFFFD || (v20 = __const__ZN5Phase14SpatialModeler11InitInPlaceEPvNS0_15QueryOutputTypeE_fTable[v21](), (v20 & 1) == 0))
  {
    v30 = **(Phase::Logger::GetInstance(v20) + 400);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "CvmSpatialQueryInstance.mm";
      *&buf[12] = 1024;
      *&buf[14] = 41;
      _os_log_impl(&dword_23A302000, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [!queryOutputInited is true]: Failed to initialize query output!", buf, 0x12u);
    }

    v31 = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](v31, "Failed to initialize query output!");
  }

  v22 = *(a2 + 24);
  v32 = *(a1 + 112);
  std::__function::__value_func<void ()(Phase::SpatialModeler::Query &)>::__value_func[abi:ne200100](v33, a4);
  atomic_store(0, a1);
  std::__function::__value_func<void ()(Phase::SpatialModeler::Query &)>::__value_func[abi:ne200100](buf, v33);
  v23 = a1 + 8;
  if (buf != (a1 + 8))
  {
    v24 = *&buf[24];
    v25 = *(a1 + 32);
    if (*&buf[24] == buf)
    {
      if (v25 == v23)
      {
        (*(**&buf[24] + 24))();
        (*(**&buf[24] + 32))(*&buf[24]);
        *&buf[24] = 0;
        (*(**(a1 + 32) + 24))(*(a1 + 32), buf);
        (*(**(a1 + 32) + 32))(*(a1 + 32));
        *(a1 + 32) = 0;
        *&buf[24] = buf;
        (*(v37[0] + 24))(v37, a1 + 8);
        (*(v37[0] + 32))(v37);
      }

      else
      {
        (*(**&buf[24] + 24))();
        (*(**&buf[24] + 32))(*&buf[24]);
        *&buf[24] = *(a1 + 32);
      }

      *(a1 + 32) = v23;
    }

    else if (v25 == v23)
    {
      (*(*v25 + 24))(*(a1 + 32), buf);
      (*(**(a1 + 32) + 32))(*(a1 + 32));
      *(a1 + 32) = *&buf[24];
      *&buf[24] = buf;
    }

    else
    {
      *&buf[24] = *(a1 + 32);
      *(a1 + 32) = v24;
    }
  }

  std::__function::__value_func<void ()(Phase::SpatialModeler::Query &)>::~__value_func[abi:ne200100](buf);
  *(a1 + 40) = a5;
  v26 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  *(a1 + 80) = v22;
  atomic_store(0, (a1 + 104));
  *(a1 + 88) = v32;
  return std::__function::__value_func<void ()(Phase::SpatialModeler::Query &)>::~__value_func[abi:ne200100](v33);
}

void sub_23A370B18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void Phase::SpatialModeler::Query::Clear(Phase::SpatialModeler::Query *this)
{
  atomic_store(0, this);
  std::__function::__value_func<void ()(Phase::SpatialModeler::Query &)>::operator=[abi:ne200100](this + 8);
  *(this + 5) = 0;
  v2 = *(this + 9);
  *(this + 8) = 0;
  *(this + 9) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *(this + 10) = -1;
  *(this + 11) = 0;
  atomic_store(0, this + 26);
  *(this + 12) = 0;
}

uint64_t std::__function::__value_func<void ()(Phase::SpatialModeler::Query &)>::operator=[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(Phase::SpatialModeler::Query &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t Phase::Controller::SpatialSubmix::SpatialSubmix(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, Phase::Logger *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v63[4] = *MEMORY[0x277D85DE8];
  v12 = Phase::Controller::Submix::Submix(a1, *(a2 + 8), *(a2 + 16), *(a2 + 568), *(a2 + 576), *(a2 + 584), a3, a4, a5, a6, a7, a9);
  *v12 = &unk_284D314A0;
  v13 = (v12 + 376);
  *(v12 + 360) = 0u;
  *(v12 + 376) = 0u;
  *(v12 + 392) = 0u;
  *(v12 + 102) = 1065353216;
  *(v12 + 26) = 0u;
  *(v12 + 27) = 0u;
  *(v12 + 112) = 1065353216;
  *(v12 + 456) = 0;
  *(v12 + 59) = 0;
  *(v12 + 60) = 0x7FEFFFFFFFFFFFFFLL;
  v14 = (v12 + 488);
  *(v12 + 58) = 0;
  v15 = Phase::Envelope<double>::Envelope((v12 + 488));
  *(a1 + 608) = 0;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 553) = 0u;
  *(a1 + 616) = a8;
  *(a1 + 624) = 0;
  *(a1 + 632) = *(a2 + 552);
  if (!*(a2 + 80))
  {
    v44 = **(Phase::Logger::GetInstance(v15) + 400);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "CvmSpatialSubmix.mm";
      *&buf[12] = 1024;
      *&buf[14] = 65;
      _os_log_impl(&dword_23A302000, v44, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: !inCreateSpatialSubmixParameters.mSpatialCategoryParameters.empty() is false.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "PRECONDITION: !inCreateSpatialSubmixParameters.mSpatialCategoryParameters.empty() is false.");
LABEL_37:
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
  }

  if (!*a2)
  {
    v46 = **(Phase::Logger::GetInstance(v15) + 400);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "CvmSpatialSubmix.mm";
      *&buf[12] = 1024;
      *&buf[14] = 67;
      _os_log_impl(&dword_23A302000, v46, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: inCreateSpatialSubmixParameters.mListenerHandle != Geometry::InvalidEntityHandle is false.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "PRECONDITION: inCreateSpatialSubmixParameters.mListenerHandle != Geometry::InvalidEntityHandle is false.");
    goto LABEL_37;
  }

  if (!*(a2 + 24))
  {
    v47 = **(Phase::Logger::GetInstance(v15) + 400);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "CvmSpatialSubmix.mm";
      *&buf[12] = 1024;
      *&buf[14] = 69;
      _os_log_impl(&dword_23A302000, v47, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: inCreateSpatialSubmixParameters.mSourceHandle != Geometry::InvalidEntityHandle is false.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "PRECONDITION: inCreateSpatialSubmixParameters.mSourceHandle != Geometry::InvalidEntityHandle is false.");
    goto LABEL_37;
  }

  *(a1 + 360) = *a2;
  *(a1 + 368) = *(a2 + 24);
  if (v13 != (a2 + 56))
  {
    *(a1 + 408) = *(a2 + 88);
    v16 = *(a2 + 72);
    v17 = *(a1 + 384);
    if (!v17)
    {
      goto LABEL_11;
    }

    for (i = 0; i != v17; ++i)
    {
      *(*v13 + 8 * i) = 0;
    }

    v19 = *(a1 + 392);
    *(a1 + 392) = 0;
    *(a1 + 400) = 0;
    if (v19)
    {
      while (v16)
      {
        v20 = *(v16 + 4);
        *(v19 + 4) = v20;
        v21 = v16[3];
        *(v19 + 32) = *(v16 + 32);
        v19[3] = v21;
        v22 = *v19;
        v19[1] = v20;
        inserted = std::__hash_table<std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>>>::__node_insert_multi_prepare(v13, v20, v19 + 4);
        std::__hash_table<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,std::__unordered_map_hasher<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,true>,std::__unordered_map_equal<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,true>,std::allocator<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>>>::__node_insert_multi_perform(v13, v19, inserted);
        v16 = *v16;
        v19 = v22;
        if (!v22)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v24 = *v19;
        operator delete(v19);
        v19 = v24;
      }

      while (v24);
    }

    else
    {
LABEL_11:
      if (v16)
      {
        operator new();
      }
    }
  }

  Phase::Controller::SpatialSubmix::CheckSpatialCategoriesActiveState(a1);
  v25 = *(a2 + 96);
  if (v25 != *(a2 + 104))
  {
    v26 = 0;
    v27 = 0;
    do
    {
      Phase::Controller::Submix::AddEffect(a1, v25 + v26, v27++);
      v25 = *(a2 + 96);
      v26 += 32;
    }

    while (v27 < (*(a2 + 104) - v25) >> 5);
    *(a1 + 64) |= 2uLL;
  }

  *(a1 + 464) = 0x3FA47AE147AE147BLL;
  v28 = *(a9 + 328);
  if (v28 <= 0.0)
  {
    std::terminate();
  }

  v29 = v28 * *(a2 + 528);
  v63[0] = &unk_284D2F458;
  v63[1] = Phase::CurveFunction::Linear<double>;
  v63[3] = v63;
  v48[0] = v29 + -1.0;
  v48[1] = 1.0;
  *buf = v29;
  *&buf[8] = 0;
  std::__function::__value_func<double ()(double)>::__value_func[abi:ne200100](&buf[16], v63);
  Phase::Envelope<double>::Envelope(&v49, v48, buf);
  std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__vdeallocate(v14);
  *v14 = v49;
  *(a1 + 504) = v50;
  v50 = 0;
  v49 = 0uLL;
  v51 = &v49;
  std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&v51);
  std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](&buf[16]);
  *(a1 + 512) = *(a2 + 48);
  *(a1 + 520) = *(a2 + 32);
  *(a1 + 528) = *(a2 + 40);
  *(a1 + 536) = 0;
  *(a1 + 544) = xmmword_23A554910;
  *(a1 + 560) = 0x3FF0000000000000;
  *(a1 + 568) = 0;
  __asm { FMOV            V1.2D, #1.0 }

  *(a1 + 576) = xmmword_23A554E10;
  *(a1 + 592) = _Q1;
  *(a1 + 608) = 0;
  Phase::Controller::SpatialSubmix::InternalPrepare(a1);
  Instance = Phase::Logger::GetInstance(v35);
  if (*(Instance + 1636) == 1)
  {
    v37 = **(Phase::Logger::GetInstance(Instance) + 400);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      SubmixStateString = Phase::Controller::Submix::sGetSubmixStateString(*(a1 + 72));
      v39 = *(a1 + 16);
      v40 = *(a1 + 32);
      if (*(a1 + 8))
      {
        v41 = "false";
      }

      else
      {
        v41 = "true";
      }

      v42 = *(a1 + 632);
      *buf = 136316674;
      *&buf[4] = "CvmSpatialSubmix.mm";
      *&buf[12] = 1024;
      *&buf[14] = 126;
      v53 = 2048;
      v54 = v40;
      v55 = 2048;
      v56 = v39;
      v57 = 2080;
      v58 = SubmixStateString;
      v59 = 2080;
      v60 = v41;
      v61 = 2048;
      v62 = v42;
      _os_log_impl(&dword_23A302000, v37, OS_LOG_TYPE_DEFAULT, "%25s:%-5d (sound event: %llu, submix: %llu) - created (type: spatial, state: %s, sleep transitions enabled: %s, parent submix id: %llu)", buf, 0x44u);
    }
  }

  std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](v63);
  return a1;
}

void sub_23A371378(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  __cxa_free_exception(v21);
  std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&a19);
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(v19 + 416);
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(v20);
  Phase::Controller::Submix::~Submix(v19);
  _Unwind_Resume(a1);
}

void sub_23A371398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](v13 - 120);
  std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](va);
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(v11 + 416);
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(v12);
  Phase::Controller::Submix::~Submix(v11);
  _Unwind_Resume(a1);
}

void sub_23A3713F4(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
    __cxa_rethrow();
  }

  JUMPOUT(0x23A371478);
}

void sub_23A371420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  __cxa_end_catch();
  std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](va);
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(v11 + 416);
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(v12);
  Phase::Controller::Submix::~Submix(v11);
  _Unwind_Resume(a1);
}

void sub_23A37142C(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x23A371478);
}

void sub_23A371440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  operator delete(v13);
  std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](va);
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(v11 + 416);
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(v12);
  Phase::Controller::Submix::~Submix(v11);
  _Unwind_Resume(a1);
}

Phase::Logger *Phase::Controller::SpatialSubmix::CheckSpatialCategoriesActiveState(Phase::Logger *this)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = this + 392;
  do
  {
    v1 = *v1;
    if (!v1)
    {
      v2 = this;
      v3 = **(Phase::Logger::GetInstance(this) + 400);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v4 = *(v2 + 2);
        v6 = 136315650;
        v7 = "CvmSpatialSubmix.mm";
        v8 = 1024;
        v9 = 679;
        v10 = 2048;
        v11 = v4;
        _os_log_impl(&dword_23A302000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [not hasActiveSpatialCategory is true]: submixId %llu: must have at least one active spatial category!", &v6, 0x1Cu);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "submixId %llu: must have at least one active spatial category!");
    }
  }

  while ((v1[32] & 1) == 0);
  return this;
}

void Phase::Controller::SpatialSubmix::InternalPrepare(Phase::Logger **this)
{
  Phase::Controller::SpatialSubmix::UpdateDistance(this);
  Phase::Controller::Submix::InternalPrepare(this);
  v2 = this[49];
  if (v2)
  {
    if (*(v2 + 32) == 1)
    {
      v3 = this[2];
      v4 = this[3];
      v5 = *(v2 + 3);
      SpatialModelerCategory = Phase::Controller::SpatialModelerSystem::GetSpatialModelerCategory(this[77], *(v2 + 4));
      Phase::Controller::SpatialModelerCategory::AddInput(SpatialModelerCategory, v3, v4, v5);
    }

    v7 = this[2];
    v8 = this[3];
    v9 = Phase::Controller::SpatialModelerSystem::GetSpatialModelerCategory(this[77], *(v2 + 4));
    Phase::Controller::SpatialModelerCategory::RegisterSubmix(v9, v7, v8);
  }

  if (*(this + 72) != 2)
  {
    std::terminate();
  }
}

double Phase::Controller::SpatialSubmix::Destroy(Phase::Controller::SpatialSubmix *this)
{
  *(this + 7) |= 0x28uLL;
  result = 0.0;
  *(this + 632) = 0u;
  return result;
}

void Phase::Controller::SpatialSubmix::~SpatialSubmix(Phase::Controller::SpatialSubmix *this)
{
  *(this + 7) |= 0x28uLL;
  *(this + 632) = 0u;
  if (*(this + 72))
  {
    for (i = *(this + 49); i; i = *i)
    {
      v3 = *(this + 2);
      v4 = *(this + 3);
      SpatialModelerCategory = Phase::Controller::SpatialModelerSystem::GetSpatialModelerCategory(*(this + 77), *(i + 4));
      Phase::Controller::SpatialModelerCategory::UnregisterSubmix(SpatialModelerCategory, v3, v4);
    }

    Phase::Controller::DVM23::DvmAdapter::RemoveSubmix(*(this + 28), *(this + 2), *(this + 3));
  }

  if (*(this + 50))
  {
    v6 = *(this + 49);
    if (v6)
    {
      do
      {
        v7 = *v6;
        operator delete(v6);
        v6 = v7;
      }

      while (v7);
    }

    *(this + 49) = 0;
    v8 = *(this + 48);
    if (v8)
    {
      for (j = 0; j != v8; ++j)
      {
        *(*(this + 47) + 8 * j) = 0;
      }
    }

    *(this + 50) = 0;
  }

  Phase::Geometry::SystemScheduler::ReleaseDirectivity(*(this + 30) + 2784, *(this + 66));
  Phase::Geometry::SystemScheduler::ReleaseDirectivity(*(this + 30) + 2784, *(this + 65));
  Phase::Geometry::SystemScheduler::ReleaseDistanceModel(*(this + 30) + 2784, *(this + 64));
  v10 = (this + 488);
  std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&v10);
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(this + 416);
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(this + 376);
  Phase::Controller::Submix::~Submix(this);
}

{
  Phase::Controller::SpatialSubmix::~SpatialSubmix(this);

  JUMPOUT(0x23EE864A0);
}

void Phase::Controller::SpatialSubmix::Update(Phase::Controller::SpatialSubmix *this, double *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = *(this + 58);
  v5 = *a2 + *(this + 59);
  *(this + 59) = v5;
  if (v5 >= v4 || (*(this + 456) & 1) == 0)
  {
    *(this + 456) = 1;
    v6 = (v5 / v4);
    if (v6 >= 2)
    {
      *(this + 59) = v5 - v4 * (v6 - 1);
    }

    if (Phase::Controller::SpatialSubmix::HasInputs(this))
    {
      Phase::Controller::SpatialSubmix::UpdateDistance(this);
    }

    *(this + 59) = *(this + 59) - *(this + 58);
  }

  Phase::Controller::Submix::Update(this, a2);
  if (*(this + 72) - 2 <= 2)
  {
    v7 = *(this + 33);
    if (*(this + 34))
    {
      v8 = 0.0;
    }

    else
    {
      v8 = 1.0;
    }

    if (v7)
    {
      do
      {
        v9 = v7[4];
        if (!v9)
        {
          v33 = **(Phase::Logger::GetInstance(0) + 400);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "CvmSpatialSubmix.mm";
            v36 = 1024;
            v37 = 220;
            _os_log_impl(&dword_23A302000, v33, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: pGenerator != nullptr is false.", buf, 0x12u);
          }

          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "PRECONDITION: pGenerator != nullptr is false.");
        }

        v8 = fmax(v8, Phase::Controller::Generator::GetGain(v9));
        v7 = *v7;
      }

      while (v7);
      if (v8 < 0.0)
      {
        v11 = **(Phase::Logger::GetInstance(v10) + 400);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "CvmSpatialSubmix.mm";
          v36 = 1024;
          v37 = 227;
          v38 = 2048;
          v39 = v8;
          _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d maxGeneratorGain %f is out-of-range [0, FLT_MAX]. Clamping...\n", buf, 0x1Cu);
        }

        v8 = fmax(v8, 0.0);
      }
    }

    Gain = Phase::Controller::SpatialSubmix::GetGain(this);
    if (Gain < 0.0 || Gain > 1.0)
    {
      v14 = **(Phase::Logger::GetInstance(v12) + 400);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = *(this + 4);
        v16 = *(this + 2);
        *buf = 136316162;
        *&buf[4] = "CvmSpatialSubmix.mm";
        v36 = 1024;
        v37 = 237;
        v38 = 2048;
        v39 = v15;
        v40 = 2048;
        v41 = v16;
        v42 = 2048;
        v43 = Gain;
        _os_log_impl(&dword_23A302000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d (sound event: %llu, submix: %llu) submix gain %f is out of range [0, 1]. Clamping...", buf, 0x30u);
      }

      Gain = fmin(fmax(Gain, 0.0), 1.0);
    }

    v17 = *(this + 49);
    if (v17)
    {
      v18 = v8 * Gain;
      do
      {
        v19 = (v17 + 2);
        v20 = *(v17 + 3);
        *buf = v17 + 2;
        v21 = v18 * v20;
        if (*(std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,double>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,double>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,double>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,double>>>::__emplace_unique_key_args<Phase::SpatialCategory,std::piecewise_construct_t const&,std::tuple<Phase::SpatialCategory const&>,std::tuple<>>(this + 52, v17 + 4) + 3) != v18 * v20)
        {
          v22 = *(this + 2);
          v23 = *(this + 77);
          v24 = *v19;
          v25 = *(this + 3);
          *&v26 = 1;
          if (v21 > 0.0)
          {
            v26 = v18 * v20;
          }

          v27 = log(v26);
          SpatialModelerCategory = Phase::Controller::SpatialModelerSystem::GetSpatialModelerCategory(v23, v24);
          Phase::Controller::SpatialModelerCategory::SetSimulationGainInDecibels(SpatialModelerCategory, v22, v25, v27 * 8.68588964 / 10.0 * 10.0);
          *buf = v17 + 2;
          *(std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,double>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,double>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,double>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,double>>>::__emplace_unique_key_args<Phase::SpatialCategory,std::piecewise_construct_t const&,std::tuple<Phase::SpatialCategory const&>,std::tuple<>>(this + 52, v17 + 4) + 3) = v21;
          v29 = *v19;
          v30 = *(this + 2);
          v31 = *(this + 3);
          v32 = Phase::Controller::SpatialModelerSystem::GetSpatialModelerCategory(*(this + 77), v29);
          Phase::Controller::SpatialModelerCategory::SetMinimumSimulationGainInDecibels(v32, v30, v31, -106.0);
        }

        v17 = *v17;
      }

      while (v17);
    }
  }
}

BOOL Phase::Controller::SpatialSubmix::HasInputs(Phase::Controller::SpatialSubmix *this)
{
  if (*(this + 632) == 0)
  {
    return *(this + 34) != 0;
  }

  Submix = Phase::Controller::SubmixSystem::GetSubmix(*(this + 29), *(this + 79), *(this + 80));
  return ((*(*Submix + 120))(Submix) & 1) != 0 || *(this + 34) != 0;
}

void Phase::Controller::SpatialSubmix::UpdateDistance(Phase::Controller::SpatialSubmix *this)
{
  v16 = *MEMORY[0x277D85DE8];
  Phase::Geometry::System::GetCurrentState(*(this + 30), &v10);
  v3 = Phase::DistanceBetweenListenerAndSource<double>(v10, *(this + 45), *(this + 46));
  if (v3 >= 0.0 && v3 != *(this + 60))
  {
    *(this + 60) = v3;
    v4 = 1.0;
    if (v3 >= **(this + 61))
    {
      v4 = 0.0;
      if (v3 <= *(*(this + 62) - 48))
      {
        v4 = Phase::Envelope<double>::operator()(this + 61, v3);
      }
    }

    for (i = *(this + 33); i; i = *i)
    {
      v6 = i[4];
      if (!v6)
      {
        v8 = **(Phase::Logger::GetInstance(v2) + 400);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v13 = "CvmSpatialSubmix.mm";
          v14 = 1024;
          v15 = 747;
          _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: pGenerator != nullptr is false.", buf, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "PRECONDITION: pGenerator != nullptr is false.");
      }

      v7 = Phase::Controller::sClamp<double>(v2, v4, *(v6 + 352), *(v6 + 360));
      if (v7 != *(v6 + 376))
      {
        *(v6 + 376) = v7;
        *(v6 + 384) = 1;
      }
    }
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

void sub_23A37209C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

double Phase::Controller::SpatialSubmix::GetGain(Phase::Logger ***this)
{
  Phase::Geometry::System::GetCurrentState(this[30], &v13);
  v2 = this[45];
  v3 = *(v13 + 184);
  v4 = 0.0;
  v5 = 0.0;
  if (v3 > v2)
  {
    v6 = *(v13 + 168) + 24 * v2;
    if (*(v6 + 20) == HIDWORD(v2))
    {
      v7 = *v6;
      if (*v6)
      {
        if (*v7 == 2)
        {
          v5 = *(v7 + 176);
        }
      }
    }
  }

  v8 = this[46];
  if (v3 > v8)
  {
    v9 = *(v13 + 168) + 24 * v8;
    if (*(v9 + 20) == HIDWORD(v8))
    {
      v10 = *v9;
      if (v10)
      {
        if (*v10 == 3)
        {
          v4 = *(v10 + 168);
        }
      }
    }
  }

  Gain = Phase::Controller::Submix::GetGain(this);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  return v5 * v4 * Gain;
}

void sub_23A3721D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Controller::SpatialSubmix::HasActiveInputs(Phase::Controller::SpatialSubmix *this)
{
  if (*(this + 632) != 0)
  {
    Submix = Phase::Controller::SubmixSystem::GetSubmix(*(this + 29), *(this + 79), *(this + 80));
    if ((*(*Submix + 128))(Submix))
    {
      return 1;
    }
  }

  v4 = *(this + 33);
  if (v4)
  {
    while (1)
    {
      v5 = v4[4];
      if (*(v5 + 580) != 1 && *(v5 + 448) != 4)
      {
        break;
      }

      v4 = *v4;
      if (!v4)
      {
        return 0;
      }
    }

    return 1;
  }

  return 0;
}

uint64_t Phase::Controller::SpatialSubmix::AllInputsPaused(Phase::Controller::SpatialSubmix *this)
{
  if (*(this + 632) == 0 || (Submix = Phase::Controller::SubmixSystem::GetSubmix(*(this + 29), *(this + 79), *(this + 80)), result = (*(*Submix + 136))(Submix), result))
  {
    v4 = (this + 264);
    do
    {
      v4 = *v4;
      result = v4 == 0;
    }

    while (v4 && (*(v4[4] + 584) & 1) != 0);
  }

  return result;
}

Phase::Logger *Phase::Controller::SpatialSubmix::SetSpatialCategoryIsActive(uint64_t a1, int a2, int a3)
{
  SpatialCategoryParameters = Phase::Controller::SpatialSubmix::GetSpatialCategoryParameters(a1, a2);
  if (*(SpatialCategoryParameters + 8) != a3)
  {
    *(SpatialCategoryParameters + 8) = a3;
    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
    if (a3)
    {
      v9 = *SpatialCategoryParameters;
      SpatialModelerCategory = Phase::Controller::SpatialModelerSystem::GetSpatialModelerCategory(*(a1 + 616), a2);
      Phase::Controller::SpatialModelerCategory::AddInput(SpatialModelerCategory, v7, v8, v9);
    }

    else
    {
      v11 = Phase::Controller::SpatialModelerSystem::GetSpatialModelerCategory(*(a1 + 616), a2);
      Phase::Controller::SpatialModelerCategory::RemoveInput(v11, v7, v8);
    }
  }

  return Phase::Controller::SpatialSubmix::CheckSpatialCategoriesActiveState(a1);
}

uint64_t *Phase::Controller::SpatialSubmix::GetSpatialCategoryParameters(Phase::Logger *a1, int a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 48);
  if (!v3)
  {
    goto LABEL_17;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (v3 <= a2)
    {
      v5 = a2 % v3;
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
  }

  v6 = *(*(a1 + 47) + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_17:
    v9 = **(Phase::Logger::GetInstance(a1) + 400);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = GetSpatialCategoryString(a2);
      v13 = 136315650;
      v14 = "CvmSpatialSubmix.mm";
      v15 = 1024;
      v16 = 654;
      v17 = 2080;
      v18 = [v10 UTF8String];
      _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (InvalidId) [it == mSpatialCategoryParameters.end() is true]: Invalid SpatialCategory %s", &v13, 0x1Cu);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    _ZN5Phase10Controller9InvalidIdCI1St11logic_errorEPKc(exception, "Invalid SpatialCategory %s");
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= v3)
      {
        v8 %= v3;
      }
    }

    else
    {
      v8 &= v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_17;
    }

LABEL_16:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_17;
    }
  }

  if (*(v7 + 4) != a2)
  {
    goto LABEL_16;
  }

  return v7 + 3;
}

void Phase::Controller::SpatialSubmix::SetSpatialCategorySendLevel(Phase::Logger *a1, int a2, double a3)
{
  v33 = *MEMORY[0x277D85DE8];
  SpatialCategoryParameters = Phase::Controller::SpatialSubmix::GetSpatialCategoryParameters(a1, a2);
  if (*(SpatialCategoryParameters + 8) == 1)
  {
    v7 = SpatialCategoryParameters;
    if (a3 < 0.0 || a3 > 1.0)
    {
      v9 = **(Phase::Logger::GetInstance(SpatialCategoryParameters) + 400);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = *(a1 + 4);
        v11 = *(a1 + 2);
        v12 = GetSpatialCategoryString(a2);
        v17 = 136316930;
        v18 = "CvmSpatialSubmix.mm";
        v19 = 1024;
        v20 = 338;
        v21 = 2048;
        v22 = v10;
        v23 = 2048;
        v24 = v11;
        v25 = 2080;
        v26 = [v12 UTF8String];
        v27 = 2048;
        v28 = a3;
        v29 = 2048;
        v30 = 0;
        v31 = 2048;
        v32 = 0x3FF0000000000000;
        _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d (sound event: %llu, submix: %llu) '%s' send level %f is out of range [%f, %f]. Clamping...", &v17, 0x4Eu);
      }

      a3 = fmin(fmax(a3, 0.0), 1.0);
    }

    if (*v7 != a3)
    {
      *v7 = a3;
      v13 = *(a1 + 77);
      v15 = *(a1 + 2);
      v14 = *(a1 + 3);
      SpatialModelerCategory = Phase::Controller::SpatialModelerSystem::GetSpatialModelerCategory(v13, a2);
      Phase::Controller::SpatialModelerCategory::SetInputSendLevel(SpatialModelerCategory, v15, v14, a3);
    }
  }
}

uint64_t Phase::Controller::SpatialSubmix::SetSpatialCategoryProperty(uint64_t a1, int a2, int a3, char a4, _OWORD *a5)
{
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  SpatialModelerCategory = Phase::Controller::SpatialModelerSystem::GetSpatialModelerCategory(*(a1 + 616), a2);

  return Phase::Controller::SpatialModelerCategory::SetProperty(SpatialModelerCategory, v8, v9, a3, a4, a5);
}

double Phase::Controller::SpatialSubmix::GetInputChannelLayout@<D0>(void *a1@<X8>)
{
  v2 = *std::vector<char>::vector[abi:ne200100](a1, 32);
  *&result = 6553601;
  *v2 = 6553601;
  *(v2 + 8) = 0;
  return result;
}

void Phase::Controller::SpatialSubmix::InternalSleep(Phase::Controller::SpatialSubmix *this)
{
  if (*(this + 72) != 7)
  {
    if (Phase::Controller::SpatialSubmix::HasActiveInputs(this) && *(this + 72) != 6)
    {
LABEL_27:
      std::terminate();
    }

    Phase::Controller::Submix::SetState(this, 6u);
    if (!*(this + 624))
    {
      *(this + 624) = 3;
    }

    while (*(this + 72) != 7)
    {
      v2 = *(this + 624);
      if ((v2 - 1) <= 1)
      {
        goto LABEL_27;
      }

      if (*(this + 624) > 3u)
      {
        if (v2 == 4)
        {
          if (!Phase::Controller::SpatialModelerSystem::IsStopped(*(this + 77), *(this + 2), *(this + 3)))
          {
            return;
          }

          Phase::Controller::SpatialModelerSystem::RemoveAllInputs(*(this + 77), *(this + 2), *(this + 3));
          Phase::Controller::DVM23::DvmAdapter::RemoveSubmix(*(this + 28), *(this + 2), *(this + 3));
          *(this + 624) = 5;
          continue;
        }

        if (v2 == 5)
        {
          if (*(this + 288) != 1)
          {
            return;
          }

          *(this + 624) = 6;
          continue;
        }
      }

      else
      {
        if (!*(this + 624))
        {
          *(this + 624) = 3;
          continue;
        }

        if (v2 == 3)
        {
          for (i = *(this + 49); i; i = *i)
          {
            v4 = *(this + 2);
            v5 = *(this + 3);
            SpatialModelerCategory = Phase::Controller::SpatialModelerSystem::GetSpatialModelerCategory(*(this + 77), *(i + 4));
            Phase::Controller::SpatialModelerCategory::UnregisterSubmix(SpatialModelerCategory, v4, v5);
          }

          v7 = *(*(this + 77) + 16);
          if (v7)
          {
            v8 = *(this + 2);
            v9 = *(this + 3);
            do
            {
              Phase::Controller::SpatialModelerCategory::SetPlayState(v7[3], v8, v9, 0);
              v7 = *v7;
            }

            while (v7);
          }

          *(this + 624) = 4;
          continue;
        }
      }

      *(this + 624) = 0;
      Phase::Controller::Submix::SetState(this, 7u);
      Phase::Controller::Submix::SetSessionPlayState(this, 0, 0, 0);
    }
  }
}

void Phase::Controller::SpatialSubmix::InternalStop(Phase::Controller::SpatialSubmix *this)
{
  *(this + 7) &= 0xFFFFFFFFFFFFFFF9;
  if (*(this + 72))
  {
    Phase::Controller::Submix::SetState(this, 1u);
    if (!*(this + 625))
    {
      *(this + 625) = 1;
    }

    for (i = *(this + 72); i; i = *(this + 72))
    {
      v3 = *(this + 625);
      if (v3 > 2)
      {
        if (v3 - 3 >= 3)
        {
          goto LABEL_16;
        }

        Phase::Controller::SpatialSubmix::InternalSleep(this);
        v4 = *(this + 72);
        Phase::Controller::Submix::SetState(this, i);
        if ((v4 & 0xFE) != 6)
        {
          std::terminate();
        }

        if (v4 != 7)
        {
          return;
        }

        *(this + 625) = 6;
      }

      else
      {
        if (*(this + 625))
        {
          if (v3 == 1)
          {
            Phase::Controller::Submix::StopInputs(this);
            *(this + 625) = 2;
            continue;
          }

          if (v3 == 2)
          {
            if (Phase::Controller::SpatialSubmix::HasActiveInputs(this))
            {
              return;
            }

            *(this + 625) = 3;
            continue;
          }

LABEL_16:
          *(this + 625) = 0;
          Phase::Controller::Submix::SetState(this, 0);
          Phase::Controller::Submix::SetSessionPlayState(this, 0, 0, 0);
          *(this + 7) &= ~8uLL;
          continue;
        }

        *(this + 625) = 1;
      }
    }
  }
}

void Phase::Controller::SpatialSubmix::SetPlayState(void *a1, unsigned int a2)
{
  Phase::Controller::Submix::SetPlayState(a1, a2);
  v4 = *(a1[77] + 16);
  if (v4)
  {
    v5 = a1[2];
    v6 = a1[3];
    do
    {
      Phase::Controller::SpatialModelerCategory::SetPlayState(v4[3], v5, v6, a2);
      v4 = *v4;
    }

    while (v4);
  }
}

uint64_t Phase::Controller::SpatialSubmix::GetChannelMask(uint64_t a1, Phase::Logger *a2)
{
  v3 = 0;
  for (i = 0; ; ++i)
  {
    v5 = *a2;
    v6 = **a2;
    if (v6 == 0x10000)
    {
      v8 = vcnt_s8(v5[1]);
      v8.i16[0] = vaddlv_u8(v8);
      v7 = v8.i32[0];
    }

    else
    {
      v7 = v6 ? **a2 : v5[2];
    }

    if (i >= v7)
    {
      break;
    }

    IsChannelLFE = Phase::ChannelLayout::IsChannelLFE(a2, i);
    v10 = 1 << i;
    if (IsChannelLFE)
    {
      v10 = 0;
    }

    v3 |= v10;
  }

  return v3;
}

unint64_t Phase::Controller::CreateDistanceModelHandle(double *a1, uint64_t a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  if (!*a1)
  {
    return v2;
  }

  if (v2 == 2)
  {
    if (!a2)
    {
      goto LABEL_40;
    }

    v8 = Phase::Geometry::DistanceModelFactory::Create(a2 + 888, 2u, 0, &v26);
    if (!v26)
    {
      v13 = **(Phase::Logger::GetInstance(v8) + 400);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "CvmSpatialSubmixHelpers.mm";
        *&buf[12] = 1024;
        *&buf[14] = 145;
        _os_log_impl(&dword_23A302000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to create a geometric spreading distance model.", buf, 0x12u);
      }

      v2 = 0;
LABEL_38:
      v20 = v27;
      if (!v27)
      {
        return v2;
      }

      goto LABEL_32;
    }

    v9 = a1[1];
    if (v9 >= -3.40282347e38)
    {
      v16 = v9;
      v10 = 2139095039;
      if (v16 <= 3.4028e38)
      {
LABEL_22:
        v17 = **(v26 + 40);
        LODWORD(v25) = 0;
        *(&v25 + 1) = v16;
        v18 = *(a1 + 4);
        memset(v24, 0, sizeof(v24));
        *buf = v24;
        buf[8] = 0;
        if (v18)
        {
          operator new();
        }

        memset(v32, 0, sizeof(v32));
        v33 = 0;
        *&buf[8] = &unk_284D31618;
        v31 = &buf[8];
        *buf = v25;
        Phase::Envelope<float>::InitializeFromSingleSegment(v32, &v25, buf);
        std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](&buf[8]);
        std::vector<Phase::Envelope<float>::SegmentInternal,std::allocator<Phase::Envelope<float>::SegmentInternal>>::__vdeallocate((v17 + 16));
        *(v17 + 16) = *v32;
        *(v17 + 32) = v33;
        memset(v32, 0, sizeof(v32));
        v33 = 0;
        *buf = v32;
        std::vector<Phase::Envelope<float>::SegmentInternal,std::allocator<Phase::Envelope<float>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](buf);
        v2 = Phase::Geometry::SystemScheduler::AddToDatabase(a2 + 2784, &v26);
        if (!v2)
        {
          v22 = **(Phase::Logger::GetInstance(0) + 400);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "CvmSpatialSubmixHelpers.mm";
            *&buf[12] = 1024;
            *&buf[14] = 140;
            _os_log_impl(&dword_23A302000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to add distance model to geometry layer database.", buf, 0x12u);
          }
        }

        *buf = v24;
        std::vector<Phase::Envelope<float>::Segment,std::allocator<Phase::Envelope<float>::Segment>>::__destroy_vector::operator()[abi:ne200100](buf);
        goto LABEL_38;
      }
    }

    else
    {
      v10 = -8388609;
    }

    v16 = *&v10;
    goto LABEL_22;
  }

  if (v2 != 1)
  {
    v11 = **(Phase::Logger::GetInstance(a1) + 400);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *a1;
      *buf = 136315650;
      *&buf[4] = "CvmSpatialSubmixHelpers.mm";
      *&buf[12] = 1024;
      *&buf[14] = 154;
      v29 = 1024;
      LODWORD(v30) = v12;
      _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d unhandled distance model type: %hhu", buf, 0x18u);
    }

    return 0;
  }

  if (!a2)
  {
LABEL_40:
    std::terminate();
  }

  v5 = Phase::Geometry::DistanceModelFactory::Create(a2 + 888, 1u, 0, v32);
  if (*v32)
  {
    v6 = a1[1];
    if (v6 >= -3.40282347e38)
    {
      v19 = v6;
      v7 = 2139095039;
      if (v19 <= 3.4028e38)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v7 = -8388609;
    }

    v19 = *&v7;
LABEL_26:
    *(**(*v32 + 40) + 16) = v19;
    v2 = Phase::Geometry::SystemScheduler::AddToDatabase(a2 + 2784, v32);
    if (v2)
    {
      goto LABEL_31;
    }

    v14 = **(Phase::Logger::GetInstance(0) + 400);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "CvmSpatialSubmixHelpers.mm";
      *&buf[12] = 1024;
      *&buf[14] = 95;
      v15 = "%25s:%-5d Failed to add distance model to geometry layer database.";
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  v14 = **(Phase::Logger::GetInstance(v5) + 400);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "CvmSpatialSubmixHelpers.mm";
    *&buf[12] = 1024;
    *&buf[14] = 100;
    v15 = "%25s:%-5d Failed to create a geometric spreading distance model.";
LABEL_29:
    _os_log_impl(&dword_23A302000, v14, OS_LOG_TYPE_ERROR, v15, buf, 0x12u);
  }

LABEL_30:
  v2 = 0;
LABEL_31:
  v20 = *&v32[8];
  if (*&v32[8])
  {
LABEL_32:
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  return v2;
}

void sub_23A3736F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, char *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28)
{
  __cxa_free_exception(v28);
  a21 = &a27;
  std::vector<Phase::Envelope<float>::SegmentInternal,std::allocator<Phase::Envelope<float>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&a21);
  a21 = &a15;
  std::vector<Phase::Envelope<float>::Segment,std::allocator<Phase::Envelope<float>::Segment>>::__destroy_vector::operator()[abi:ne200100](&a21);
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  _Unwind_Resume(a1);
}

Phase::Logger *Phase::Controller::CreateDirectivityModelHandle(unsigned __int8 *a1, uint64_t a2, int a3)
{
  v138 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    std::terminate();
  }

  memset(v119, 0, sizeof(v119));
  v120 = 1065353216;
  v132 = "DirectivityDataMapSize";
  v133 = 22;
  *buf = 4;
  v137 = 1;
  Phase::UnorderedStringMap<Phase::OptionsValue>::Set(v119, &v132, buf);
  v6 = std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,int,unsigned int,float,double,Phase::Vector<float,2ul>,Phase::Vector<float,3ul>,Phase::Vector<float,4ul>,std::string,std::vector<unsigned int>,std::vector<unsigned long long>,Phase::UnorderedStringMap<Phase::OptionsValue>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](buf);
  v7 = *a1;
  if (*a1 > 1u)
  {
    if (v7 != 2)
    {
      if (v7 != 3)
      {
LABEL_67:
        v49 = **(Phase::Logger::GetInstance(v6) + 400);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          v50 = *a1;
          *buf = 136315650;
          *&buf[4] = "CvmSpatialSubmixHelpers.mm";
          *&buf[12] = 1024;
          *&buf[14] = 448;
          v135 = 1024;
          LODWORD(v136) = v50;
          _os_log_impl(&dword_23A302000, v49, OS_LOG_TYPE_ERROR, "%25s:%-5d unhandled distance model type: %hhu", buf, 0x18u);
        }

        v7 = 0;
        goto LABEL_148;
      }

      v47 = Phase::Geometry::DirectivityFactory::Create(a2 + 640, 3u, 0, &v132);
      if (v132)
      {
        v48 = **(v132 + 5);
        *(v48 + 1) = *(a1 + 8);
        Phase::Geometry::SphericalCapDirectivity::InitializeSubbandGainsDatabase(v48);
      }

      v104 = **(Phase::Logger::GetInstance(v47) + 400);
      if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "CvmSpatialSubmixHelpers.mm";
        *&buf[12] = 1024;
        *&buf[14] = 439;
        _os_log_impl(&dword_23A302000, v104, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to create a spherical cap directivity model.", buf, 0x12u);
      }

      v7 = 0;
      v105 = v133;
      if (!v133)
      {
        goto LABEL_148;
      }

LABEL_147:
      std::__shared_weak_count::__release_shared[abi:ne200100](v105);
      goto LABEL_148;
    }

    v51 = Phase::Geometry::DirectivityFactory::Create(a2 + 640, 2u, v119, &v117);
    if (!v117)
    {
      v107 = **(Phase::Logger::GetInstance(v51) + 400);
      if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "CvmSpatialSubmixHelpers.mm";
        *&buf[12] = 1024;
        *&buf[14] = 396;
        v108 = "%25s:%-5d Failed to create a cardioid directivity model.";
        v109 = v107;
        v110 = 18;
        goto LABEL_163;
      }

LABEL_164:
      v7 = 0;
LABEL_165:
      v105 = v118;
      if (!v118)
      {
        goto LABEL_148;
      }

      goto LABEL_147;
    }

    v116 = a2;
    v52 = **(v117 + 40);
    v53 = *(a1 + 2);
    *(v52 + 124) = 0u;
    *(v52 + 96) = 0u;
    *(v52 + 112) = 0u;
    *(v52 + 64) = 0u;
    *(v52 + 80) = 0u;
    *(v52 + 32) = 0u;
    *(v52 + 48) = 0u;
    *(v52 + 16) = 0u;
    *(v52 + 140) = v53;
    *(v52 + 144) = 0u;
    *(v52 + 160) = 0u;
    *(v52 + 176) = 0u;
    *(v52 + 192) = 0u;
    *(v52 + 208) = 0u;
    *(v52 + 224) = 0u;
    *(v52 + 240) = 0u;
    *(v52 + 252) = 0u;
    *(v52 + 268) = v53;
    v54 = (v52 + 272);
    *(v52 + 380) = 0u;
    *(v52 + 352) = 0u;
    *(v52 + 368) = 0u;
    *(v52 + 320) = 0u;
    *(v52 + 336) = 0u;
    *(v52 + 288) = 0u;
    *(v52 + 304) = 0u;
    *(v52 + 272) = 0u;
    *(v52 + 396) = v53;
    *(v52 + 508) = 0u;
    *(v52 + 480) = 0u;
    *(v52 + 496) = 0u;
    *(v52 + 448) = 0u;
    *(v52 + 464) = 0u;
    *(v52 + 416) = 0u;
    *(v52 + 432) = 0u;
    *(v52 + 400) = 0u;
    *(v52 + 524) = v53;
    if (v53)
    {
      v55 = (a1 + 40);
      do
      {
        v56 = *(v55 - 3);
        v57 = v56;
        if (v57 > 3.4028e38)
        {
          v57 = 3.4028e38;
        }

        if (v56 >= -3.40282347e38)
        {
          v58 = v57;
        }

        else
        {
          v58 = -3.4028e38;
        }

        *(v54 - 64) = v58;
        v59 = *(v55 - 2) * 0.0174532925;
        if (v59 >= -3.40282347e38)
        {
          v61 = v59;
          if (v61 <= 3.4028e38)
          {
            goto LABEL_83;
          }

          v60 = 2139095039;
        }

        else
        {
          v60 = -8388609;
        }

        v61 = *&v60;
LABEL_83:
        *(v54 - 32) = v61;
        v62 = *(v55 - 1) * 0.0174532925;
        if (v62 >= -3.40282347e38)
        {
          v64 = v62;
          if (v64 <= 3.4028e38)
          {
            goto LABEL_88;
          }

          v63 = 2139095039;
        }

        else
        {
          v63 = -8388609;
        }

        v64 = *&v63;
LABEL_88:
        *v54 = v64;
        if (*v55 < -3.40282347e38)
        {
          v65 = -8388609;
LABEL_92:
          v66 = *&v65;
          goto LABEL_93;
        }

        v66 = *v55;
        if (v66 > 3.4028e38)
        {
          v65 = 2139095039;
          goto LABEL_92;
        }

LABEL_93:
        v54[32] = v66;
        v55 += 4;
        ++v54;
        --v53;
      }

      while (v53);
    }

    v67 = 1;
    while (1)
    {
      v68 = *(*(v117 + 40) + 40 * v67);
      v69 = qword_23A554E90[v67 - 1];
      sGetFrequencies(&v132, v69);
      v70 = *(a1 + 2);
      std::vector<float>::vector[abi:ne200100](buf, v70);
      std::vector<float>::vector[abi:ne200100](&v130, v70);
      std::vector<float>::vector[abi:ne200100](&v128, v70);
      std::vector<float>::vector[abi:ne200100](&v126, v70);
      if (v70)
      {
        v71 = *buf;
        v72 = v130;
        v73 = v128;
        v74 = (a1 + 24);
        v75 = v126;
        do
        {
          v76 = *(v74 - 1);
          v77 = v76;
          if (v77 > 3.4028e38)
          {
            v77 = 3.4028e38;
          }

          if (v76 >= -3.40282347e38)
          {
            v78 = v77;
          }

          else
          {
            v78 = -3.4028e38;
          }

          *v71 = v78;
          v79 = *v74 * 0.0174532925;
          if (v79 >= -3.40282347e38)
          {
            v81 = v79;
            if (v81 <= 3.4028e38)
            {
              goto LABEL_107;
            }

            v80 = 2139095039;
          }

          else
          {
            v80 = -8388609;
          }

          v81 = *&v80;
LABEL_107:
          *v72 = v81;
          v82 = v74[1] * 0.0174532925;
          if (v82 >= -3.40282347e38)
          {
            v84 = v82;
            if (v84 <= 3.4028e38)
            {
              goto LABEL_112;
            }

            v83 = 2139095039;
          }

          else
          {
            v83 = -8388609;
          }

          v84 = *&v83;
LABEL_112:
          *v73 = v84;
          v85 = v74[2];
          if (v85 < -3.40282347e38)
          {
            v86 = -8388609;
LABEL_116:
            v87 = *&v86;
            goto LABEL_117;
          }

          v87 = v85;
          if (v87 > 3.4028e38)
          {
            v86 = 2139095039;
            goto LABEL_116;
          }

LABEL_117:
          *v75++ = v87;
          ++v73;
          ++v72;
          ++v71;
          v74 += 4;
          --v70;
        }

        while (v70);
      }

      std::vector<float>::vector[abi:ne200100](&__p, v69);
      std::vector<float>::vector[abi:ne200100](&v122, v69);
      std::vector<float>::vector[abi:ne200100](v121, v69);
      Phase::GetValuesFromFrequencyResponse<std::__wrap_iter<float *>,std::__wrap_iter<float *>,std::__wrap_iter<float const*>,std::__wrap_iter<float *>,&float Phase::Identity<float>,&float Phase::Identity<float>>(*buf, *&buf[8], v130, v131, v132, v133, __p);
      Phase::GetValuesFromFrequencyResponse<std::__wrap_iter<float *>,std::__wrap_iter<float *>,std::__wrap_iter<float const*>,std::__wrap_iter<float *>,&float Phase::Identity<float>,&float Phase::Identity<float>>(*buf, *&buf[8], v128, v129, v132, v133, v122);
      Phase::GetValuesFromFrequencyResponse<std::__wrap_iter<float *>,std::__wrap_iter<float *>,std::__wrap_iter<float const*>,std::__wrap_iter<float *>,&float Phase::Square<float>,&float Phase::SquareRoot<float>>(*buf, *&buf[8], v126, v127, v132, v133, v121[0]);
      *(v68 + 124) = 0u;
      *(v68 + 96) = 0u;
      *(v68 + 112) = 0u;
      *(v68 + 64) = 0u;
      *(v68 + 80) = 0u;
      *(v68 + 32) = 0u;
      *(v68 + 48) = 0u;
      *(v68 + 16) = 0u;
      *(v68 + 140) = v69;
      *(v68 + 144) = 0u;
      *(v68 + 160) = 0u;
      *(v68 + 176) = 0u;
      *(v68 + 192) = 0u;
      *(v68 + 208) = 0u;
      *(v68 + 224) = 0u;
      *(v68 + 240) = 0u;
      *(v68 + 252) = 0u;
      *(v68 + 268) = v69;
      v88 = (v68 + 272);
      *(v68 + 380) = 0u;
      *(v68 + 352) = 0u;
      *(v68 + 368) = 0u;
      *(v68 + 320) = 0u;
      *(v68 + 336) = 0u;
      *(v68 + 288) = 0u;
      *(v68 + 304) = 0u;
      *(v68 + 272) = 0u;
      *(v68 + 396) = v69;
      *(v68 + 508) = 0u;
      *(v68 + 480) = 0u;
      *(v68 + 496) = 0u;
      *(v68 + 448) = 0u;
      *(v68 + 464) = 0u;
      *(v68 + 416) = 0u;
      *(v68 + 432) = 0u;
      *(v68 + 400) = 0u;
      *(v68 + 524) = v69;
      v89 = v121[0];
      if (v69)
      {
        break;
      }

      if (v121[0])
      {
        goto LABEL_123;
      }

LABEL_124:
      if (v122)
      {
        v123 = v122;
        operator delete(v122);
      }

      if (__p)
      {
        v125 = __p;
        operator delete(__p);
      }

      if (v126)
      {
        v127 = v126;
        operator delete(v126);
      }

      if (v128)
      {
        v129 = v128;
        operator delete(v128);
      }

      if (v130)
      {
        v131 = v130;
        operator delete(v130);
      }

      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }

      if (v132)
      {
        v133 = v132;
        operator delete(v132);
      }

      if (++v67 == 4)
      {
        v98 = Phase::Geometry::SystemScheduler::AddToDatabase(v116 + 2784, &v117);
        v7 = v98;
        if (v98)
        {
          v99 = **(Phase::Logger::GetInstance(v98) + 400);
          if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            *&buf[4] = "CvmSpatialSubmixHelpers.mm";
            *&buf[12] = 1024;
            *&buf[14] = 385;
            v135 = 2048;
            v136 = v7;
            _os_log_impl(&dword_23A302000, v99, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Creating geometry Directivity: 0x%llx", buf, 0x1Cu);
          }

          goto LABEL_165;
        }

        v113 = **(Phase::Logger::GetInstance(0) + 400);
        if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
        {
          v114 = "source";
          *&buf[4] = "CvmSpatialSubmixHelpers.mm";
          *buf = 136315650;
          if (a3)
          {
            v114 = "listener";
          }

          *&buf[12] = 1024;
          *&buf[14] = 391;
          v135 = 2080;
          v136 = v114;
          v108 = "%25s:%-5d Failed to add %s directivity model to geometry layer database.";
          v109 = v113;
          v110 = 28;
LABEL_163:
          _os_log_impl(&dword_23A302000, v109, OS_LOG_TYPE_ERROR, v108, buf, v110);
        }

        goto LABEL_164;
      }
    }

    v90 = v132;
    v91 = __p;
    v92 = v121[0];
    v93 = v122;
    do
    {
      v94 = *v90;
      v90 += 4;
      *(v88 - 64) = v94;
      v95 = *v91++;
      *(v88 - 32) = v95;
      v96 = *v93++;
      *v88 = v96;
      v97 = *v92++;
      v88[32] = v97;
      ++v88;
      --v69;
    }

    while (v69);
LABEL_123:
    v121[1] = v89;
    operator delete(v89);
    goto LABEL_124;
  }

  if (!*a1)
  {
    goto LABEL_148;
  }

  if (v7 != 1)
  {
    goto LABEL_67;
  }

  v8 = Phase::Geometry::DirectivityFactory::Create(a2 + 640, 1u, v119, &v122);
  if (!v122)
  {
    v100 = **(Phase::Logger::GetInstance(v8) + 400);
    if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "CvmSpatialSubmixHelpers.mm";
      *&buf[12] = 1024;
      *&buf[14] = 348;
      v101 = "%25s:%-5d Failed to create a cardioid directivity model.";
      v102 = v100;
      v103 = 18;
LABEL_155:
      _os_log_impl(&dword_23A302000, v102, OS_LOG_TYPE_ERROR, v101, buf, v103);
    }

LABEL_156:
    v7 = 0;
    goto LABEL_157;
  }

  v115 = a2;
  v9 = **(v122 + 5);
  v10 = *(a1 + 2);
  *(v9 + 144) = 0u;
  v11 = v9 + 144;
  *(v11 - 20) = 0u;
  *(v11 - 48) = 0u;
  *(v11 - 32) = 0u;
  *(v11 - 80) = 0u;
  *(v11 - 64) = 0u;
  *(v11 - 112) = 0u;
  *(v11 - 96) = 0u;
  *(v11 - 128) = 0u;
  *(v11 - 4) = v10;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0u;
  *(v11 + 48) = 0u;
  *(v11 + 64) = 0u;
  *(v11 + 80) = 0u;
  *(v11 + 96) = 0u;
  *(v11 + 108) = 0u;
  *(v11 + 124) = v10;
  *(v11 + 236) = 0u;
  *(v11 + 208) = 0u;
  *(v11 + 224) = 0u;
  *(v11 + 176) = 0u;
  *(v11 + 192) = 0u;
  *(v11 + 144) = 0u;
  *(v11 + 160) = 0u;
  *(v11 + 128) = 0u;
  *(v11 + 252) = v10;
  if (v10)
  {
    v12 = (a1 + 32);
    while (1)
    {
      v13 = *(v12 - 2);
      v14 = v13;
      if (v14 > 3.4028e38)
      {
        v14 = 3.4028e38;
      }

      if (v13 >= -3.40282347e38)
      {
        v15 = v14;
      }

      else
      {
        v15 = -3.4028e38;
      }

      *(v11 - 128) = v15;
      v16 = *(v12 - 1);
      v17 = v16;
      if (v17 > 3.4028e38)
      {
        v17 = 3.4028e38;
      }

      v18 = v16 >= -3.40282347e38 ? v17 : -3.4028e38;
      *v11 = v18;
      if (*v12 < -3.40282347e38)
      {
        break;
      }

      v20 = *v12;
      if (v20 > 3.4028e38)
      {
        v19 = 2139095039;
        goto LABEL_22;
      }

LABEL_23:
      *(v11 + 128) = v20;
      v12 += 3;
      v11 += 4;
      if (!--v10)
      {
        goto LABEL_24;
      }
    }

    v19 = -8388609;
LABEL_22:
    v20 = *&v19;
    goto LABEL_23;
  }

LABEL_24:
  for (i = 1; i != 4; ++i)
  {
    v22 = *(*(v122 + 5) + 40 * i);
    v23 = qword_23A554E90[i - 1];
    sGetFrequencies(&v132, v23);
    v24 = *(a1 + 2);
    std::vector<float>::vector[abi:ne200100](buf, v24);
    std::vector<float>::vector[abi:ne200100](&v130, v24);
    std::vector<float>::vector[abi:ne200100](&v128, v24);
    if (v24)
    {
      v25 = *buf;
      v26 = v130;
      v27 = (a1 + 32);
      v28 = v128;
      while (1)
      {
        v29 = *(v27 - 2);
        v30 = v29;
        if (v30 > 3.4028e38)
        {
          v30 = 3.4028e38;
        }

        if (v29 >= -3.40282347e38)
        {
          v31 = v30;
        }

        else
        {
          v31 = -3.4028e38;
        }

        *v25 = v31;
        v32 = *(v27 - 1);
        v33 = v32;
        if (v33 > 3.4028e38)
        {
          v33 = 3.4028e38;
        }

        v34 = v32 >= -3.40282347e38 ? v33 : -3.4028e38;
        *v26 = v34;
        if (*v27 < -3.40282347e38)
        {
          break;
        }

        v36 = *v27;
        if (v36 > 3.4028e38)
        {
          v35 = 2139095039;
          goto LABEL_41;
        }

LABEL_42:
        *v28++ = v36;
        ++v26;
        ++v25;
        v27 += 3;
        if (!--v24)
        {
          goto LABEL_43;
        }
      }

      v35 = -8388609;
LABEL_41:
      v36 = *&v35;
      goto LABEL_42;
    }

LABEL_43:
    std::vector<float>::vector[abi:ne200100](&v126, v23);
    std::vector<float>::vector[abi:ne200100](&__p, v23);
    Phase::GetValuesFromFrequencyResponse<std::__wrap_iter<float *>,std::__wrap_iter<float *>,std::__wrap_iter<float const*>,std::__wrap_iter<float *>,&float Phase::Identity<float>,&float Phase::Identity<float>>(*buf, *&buf[8], v130, v131, v132, v133, v126);
    Phase::GetValuesFromFrequencyResponse<std::__wrap_iter<float *>,std::__wrap_iter<float *>,std::__wrap_iter<float const*>,std::__wrap_iter<float *>,&float Phase::Identity<float>,&float Phase::Identity<float>>(*buf, *&buf[8], v128, v129, v132, v133, __p);
    *(v22 + 144) = 0u;
    v37 = v22 + 144;
    *(v37 - 20) = 0u;
    *(v37 - 48) = 0u;
    *(v37 - 32) = 0u;
    *(v37 - 80) = 0u;
    *(v37 - 64) = 0u;
    *(v37 - 112) = 0u;
    *(v37 - 96) = 0u;
    *(v37 - 128) = 0u;
    *(v37 - 4) = v23;
    *(v37 + 16) = 0u;
    *(v37 + 32) = 0u;
    *(v37 + 48) = 0u;
    *(v37 + 64) = 0u;
    *(v37 + 80) = 0u;
    *(v37 + 96) = 0u;
    *(v37 + 108) = 0u;
    *(v37 + 124) = v23;
    *(v37 + 236) = 0u;
    *(v37 + 208) = 0u;
    *(v37 + 224) = 0u;
    *(v37 + 176) = 0u;
    *(v37 + 192) = 0u;
    *(v37 + 144) = 0u;
    *(v37 + 160) = 0u;
    *(v37 + 128) = 0u;
    *(v37 + 252) = v23;
    v38 = __p;
    if (v23)
    {
      v39 = v132;
      v40 = v126;
      v41 = __p;
      do
      {
        v42 = *v39;
        v39 += 4;
        *(v37 - 128) = v42;
        v43 = *v40++;
        *v37 = v43;
        v44 = *v41++;
        *(v37 + 128) = v44;
        v37 += 4;
        --v23;
      }

      while (v23);
    }

    else if (!__p)
    {
      goto LABEL_49;
    }

    v125 = v38;
    operator delete(v38);
LABEL_49:
    if (v126)
    {
      v127 = v126;
      operator delete(v126);
    }

    if (v128)
    {
      v129 = v128;
      operator delete(v128);
    }

    if (v130)
    {
      v131 = v130;
      operator delete(v130);
    }

    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }

    if (v132)
    {
      v133 = v132;
      operator delete(v132);
    }
  }

  v45 = Phase::Geometry::SystemScheduler::AddToDatabase(v115 + 2784, &v122);
  v7 = v45;
  if (!v45)
  {
    v111 = **(Phase::Logger::GetInstance(0) + 400);
    if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
    {
      v112 = "source";
      *&buf[4] = "CvmSpatialSubmixHelpers.mm";
      *buf = 136315650;
      if (a3)
      {
        v112 = "listener";
      }

      *&buf[12] = 1024;
      *&buf[14] = 343;
      v135 = 2080;
      v136 = v112;
      v101 = "%25s:%-5d Failed to add %s directivity model to geometry layer database.";
      v102 = v111;
      v103 = 28;
      goto LABEL_155;
    }

    goto LABEL_156;
  }

  v46 = **(Phase::Logger::GetInstance(v45) + 400);
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "CvmSpatialSubmixHelpers.mm";
    *&buf[12] = 1024;
    *&buf[14] = 337;
    v135 = 2048;
    v136 = v7;
    _os_log_impl(&dword_23A302000, v46, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Creating geometry Directivity: 0x%llx", buf, 0x1Cu);
  }

LABEL_157:
  v105 = v123;
  if (v123)
  {
    goto LABEL_147;
  }

LABEL_148:
  std::__hash_table<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,std::__unordered_map_hasher<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,true>,std::__unordered_map_equal<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,true>,std::allocator<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>>>::~__hash_table(v119);
  return v7;
}

void sub_23A3745C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  v7 = *(v5 - 192);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  std::__hash_table<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,std::__unordered_map_hasher<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,true>,std::__unordered_map_equal<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,true>,std::allocator<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void sub_23A374660(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x23A374240);
  }

  JUMPOUT(0x23A374658);
}

void Phase::Geometry::SphericalCapDirectivity::InitializeSubbandGainsDatabase(Phase::Geometry::SphericalCapDirectivity *this)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(this + 3);
  v7 = xmmword_23A554E50;
  v8 = 12;
  v6 = 0x3F99999A43AB8000;
  Phase::Zeppelin::HorizontalSliceDatabaseContext::HorizontalSliceDatabaseContext(&v3);
  Phase::Zeppelin::ScsRadiationContext::ScsRadiationContext(v9, 0xCu, 1, *(this + 2), v2 * 0.0174532925 * 0.5);
  v7 = *v9;
  v8 = *&v9[16];
  Phase::Zeppelin::PropagationMediumContext::PropagationMediumContext(v9, 343.0, 1.2);
  v6 = *v9;
  Phase::Zeppelin::HorizontalSliceDatabaseContext::HorizontalSliceDatabaseContext(v9, 61, Phase::sThirdOctaveBandFrequencies, 0x1FuLL);
  v3 = *v9;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  *__p = *&v9[8];
  v5 = v10;
  operator new();
}

void std::vector<Phase::Envelope<float>::Segment,std::allocator<Phase::Envelope<float>::Segment>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 40;
        std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100]((v4 - 32));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<Phase::Envelope<float>::SegmentInternal,std::allocator<Phase::Envelope<float>::SegmentInternal>>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v5 = v3 - 48;
        std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100]((v3 - 32));
        v3 = v5;
      }

      while (v5 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<Phase::Envelope<float>::SegmentInternal,std::allocator<Phase::Envelope<float>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 48;
        std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100]((v4 - 32));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

double sGetFrequencies(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  switch(a2)
  {
    case 0x1FuLL:
      v4 = Phase::sThirdOctaveBandFrequencies;
      v5 = "St18bad_variant_access";
      goto LABEL_7;
    case 0xAuLL:
      v4 = &Phase::sOctaveBandFrequencies;
      v5 = Phase::sThirdOctaveBandFrequencies;
      goto LABEL_7;
    case 3uLL:
      v4 = &Phase::sThreeBandFrequencies;
      v5 = &Phase::sOctaveBandFrequencies;
LABEL_7:
      std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(a1, v4, v5, a2);
      v7 = *a1;
      v8 = *(a1 + 1);
      goto LABEL_9;
  }

  Phase::GenerateLogarithmicSeries<float>(a2, &v9, 20.0, 20000.0);
  v7 = v9;
  *a1 = v9;
  result = *&v10;
  *(a1 + 1) = v10;
  v8 = result;
LABEL_9:
  if (v7 == *&v8)
  {
    std::terminate();
  }

  return result;
}

{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  switch(a2)
  {
    case 0x1FuLL:
      v4 = &Phase::sThirdOctaveBandFrequencies;
      v5 = &std::__any_imp::__unique_typeinfo<Phase::Controller::ListenerManager *>::__id;
      goto LABEL_7;
    case 0xAuLL:
      v4 = &Phase::sOctaveBandFrequencies;
      v5 = &Phase::sThirdOctaveBandFrequencies;
      goto LABEL_7;
    case 3uLL:
      v4 = &Phase::sThreeBandFrequencies;
      v5 = &Phase::sOctaveBandFrequencies;
LABEL_7:
      std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(a1, v4, v5, a2);
      v7 = *a1;
      v8 = *(a1 + 1);
      goto LABEL_9;
  }

  Phase::GenerateLogarithmicSeries<float>(a2, &v9, 20.0, 20000.0);
  v7 = v9;
  *a1 = v9;
  result = *&v10;
  *(a1 + 1) = v10;
  v8 = result;
LABEL_9:
  if (v7 == *&v8)
  {
    std::terminate();
  }

  return result;
}

{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  switch(a2)
  {
    case 0x1FuLL:
      v4 = &Phase::sThirdOctaveBandFrequencies;
      v5 = &qword_23A597510;
      goto LABEL_7;
    case 0xAuLL:
      v4 = &Phase::sOctaveBandFrequencies;
      v5 = &Phase::sThirdOctaveBandFrequencies;
      goto LABEL_7;
    case 3uLL:
      v4 = &Phase::sThreeBandFrequencies;
      v5 = &Phase::sOctaveBandFrequencies;
LABEL_7:
      std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(a1, v4, v5, a2);
      v7 = *a1;
      v8 = *(a1 + 1);
      goto LABEL_9;
  }

  Phase::GenerateLogarithmicSeries<float>(a2, &v9, 20.0, 20000.0);
  v7 = v9;
  *a1 = v9;
  result = *&v10;
  *(a1 + 1) = v10;
  v8 = result;
LABEL_9:
  if (v7 == *&v8)
  {
    std::terminate();
  }

  return result;
}

void sub_23A37507C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void Phase::GetValuesFromFrequencyResponse<std::__wrap_iter<float *>,std::__wrap_iter<float *>,std::__wrap_iter<float const*>,std::__wrap_iter<float *>,&float Phase::Identity<float>,&float Phase::Identity<float>>(float *a1, float *a2, uint64_t a3, uint64_t a4, float *a5, float *a6, uint64_t a7)
{
  v11 = a2 - a1;
  if (a2 != a1)
  {
    v12 = a1 + 1;
    while (v12 != a2)
    {
      v14 = *(v12 - 1);
      v13 = *v12++;
      if (v13 < v14)
      {
        v15 = v12 - 1;
        goto LABEL_7;
      }
    }

    v15 = a2;
LABEL_7:
    if (v15 != a2)
    {
      __assert_rtn("GetValuesFromFrequencyResponse", "FrequencyResponse.hpp", 262, "std::is_sorted(inFrequenciesFirst, inFrequenciesLast)");
    }
  }

  if (a6 != a5)
  {
    v16 = a5 + 1;
    while (v16 != a6)
    {
      v18 = *(v16 - 1);
      v17 = *v16++;
      if (v17 < v18)
      {
        v19 = v16 - 1;
        goto LABEL_14;
      }
    }

    v19 = a6;
LABEL_14:
    if (v19 != a6)
    {
      __assert_rtn("GetValuesFromFrequencyResponse", "FrequencyResponse.hpp", 263, "std::is_sorted(inOutputFrequenciesFirst, inOutputFrequenciesLast)");
    }
  }

  Phase::GetBandsFromCenterFrequencies<std::__wrap_iter<float *>,float>(a1, a2, v53, 22000.0);
  Phase::GetBandsFromCenterFrequencies<std::__wrap_iter<float const*>,float>(a5, a6, v52, 22000.0);
  v51 = 0.0;
  v20 = a6 - a5;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  __p = 0;
  v46 = 0;
  v47 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  if (v20 > 0)
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = v11 >> 2;
    do
    {
      v26 = (v52[0] + 8 * v24);
      v27 = *v26;
      v28 = v26[1];
      v49 = v48;
      v46 = v22;
      v43 = v21;
      v41 = v23;
      if (v23 < v25)
      {
        v29 = v23;
        while (1)
        {
          v30.i32[0] = *(v53[0] + v29);
          v30.i32[1] = HIDWORD(*(v52[0] + v24));
          v31.i32[0] = *(v52[0] + v24);
          v31.i32[1] = HIDWORD(*(v53[0] + v29));
          v32 = vbsl_s8(vcgt_f32(v31, v30), *(v52[0] + 8 * v24), *(v53[0] + 8 * v29));
          v51 = fmaxf(vsub_f32(vdup_lane_s32(v32, 1), v32).f32[0], 0.0);
          if (v51 == 0.0)
          {
            break;
          }

          std::vector<float>::push_back[abi:ne200100](&v48, &v51);
          std::vector<long>::push_back[abi:ne200100](&__p, &v41);
          if (v41 == v25 - 1)
          {
            v23 = v41;
          }

          v29 = v41 + 1;
          v41 = v29;
          if (v29 >= v25)
          {
            goto LABEL_25;
          }
        }

        v23 = v29 - (*(v53[0] + 2 * v29) != *(v52[0] + 2 * v24 + 1));
      }

LABEL_25:
      v22 = __p;
      v33 = 0.0;
      if (v46 == __p)
      {
        v36 = 0.0;
      }

      else
      {
        v34 = 0;
        v35 = v28 - v27;
        v36 = 0.0;
        do
        {
          v37 = *(v48 + v34) / v35;
          *&v41 = v37 * *(a3 + 4 * *&v22[8 * v34]);
          std::vector<float>::push_back[abi:ne200100](&v42, &v41);
          v36 = v36 + v37;
          ++v34;
          v22 = __p;
        }

        while (v34 < (v46 - __p) >> 3);
      }

      v21 = v42;
      if (v42 != v43)
      {
        v38 = 0.0;
        v39 = v42;
        do
        {
          v40 = *v39++;
          v38 = v38 + v40;
        }

        while (v39 != v43);
        v33 = v38;
      }

      *(a7 + 4 * v24++) = v33 / v36;
    }

    while (v24 != v20);
    if (v21)
    {
      v43 = v21;
      operator delete(v21);
      v22 = __p;
    }

    if (v22)
    {
      v46 = v22;
      operator delete(v22);
    }
  }

  if (v48)
  {
    v49 = v48;
    operator delete(v48);
  }

  if (v52[0])
  {
    v52[1] = v52[0];
    operator delete(v52[0]);
  }

  if (v53[0])
  {
    v53[1] = v53[0];
    operator delete(v53[0]);
  }
}

void sub_23A3753D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *Phase::GenerateLogarithmicSeries<float>@<X0>(unint64_t a1@<X0>, float **a2@<X8>, float a3@<S0>, float a4@<S1>)
{
  v4 = a1;
  v5 = a3;
  v7 = 1.0 / (a1 + -1.0);
  v8 = log10f(a4 / a3);
  v9 = expf((v8 * v7) * 2.3026);
  result = std::vector<float>::vector[abi:ne200100](a2, v4);
  if (v4)
  {
    v11 = *a2;
    do
    {
      *v11++ = v5;
      v5 = v9 * v5;
      --v4;
    }

    while (v4);
  }

  return result;
}

void *std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
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

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<float>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 4;
        *v15 = v16;
        v15 += 4;
        v14 += 4;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

Phase::Logger *Phase::GetBandsFromCenterFrequencies<std::__wrap_iter<float *>,float>@<X0>(float *a1@<X0>, float *a2@<X1>, float **a3@<X8>, float a4@<S0>)
{
  v6 = a1;
  v44 = *MEMORY[0x277D85DE8];
  v8 = a2 - a1;
  *v37 = 0;
  result = std::vector<Phase::FrequencyBand<float>>::vector[abi:ne200100](a3, v8);
  v10 = *a3;
  **a3 = 10.0;
  if (v8 == 31)
  {
    if (a2 == v6)
    {
      v12 = 0;
      v11 = 1;
      goto LABEL_23;
    }

    v17 = v6 + 1;
    v18 = &Phase::sThirdOctaveBandFrequencies;
    do
    {
      v19 = *v18++;
      v11 = *(v17 - 1) == v19;
      v20 = *(v17 - 1) != v19 || v17 == a2;
      ++v17;
    }

    while (!v20);
    goto LABEL_21;
  }

  if (v8 != 10)
  {
    v11 = 0;
LABEL_21:
    v12 = 0;
    goto LABEL_22;
  }

  if (a2 == v6)
  {
    v11 = 0;
    v12 = 1;
LABEL_23:
    v21 = 0;
    v22 = v10 + 2;
    v23 = v8 - 1;
    while (1)
    {
      v24 = *v6;
      if (v12)
      {
        v25 = v24 + ((v24 / 1.4142) * 0.5);
        if (v25 >= a4)
        {
          v25 = a4;
        }

        v26 = 20.363;
      }

      else if (v11)
      {
        v25 = v24 + ((v24 / 4.2426) * 0.5);
        if (v25 >= a4)
        {
          v25 = a4;
        }

        v26 = 17.643;
      }

      else
      {
        if ((LODWORD(v24) & 0x7FFFFFFFu) >= 0x7F800000)
        {
          v32 = **(Phase::Logger::GetInstance(result) + 1152);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            v33 = *v6;
            *v37 = 136315650;
            *&v37[4] = "FrequencyResponse.hpp";
            v38 = 1024;
            v39 = 99;
            v40 = 2048;
            v41 = v33;
            _os_log_impl(&dword_23A302000, v32, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [!std::isfinite(inFrequenciesFirst[i]) is true]: GetBandsFromCenterFrequencies: bad center frequency: %fHz", v37, 0x1Cu);
          }

          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "GetBandsFromCenterFrequencies: bad center frequency: %fHz");
LABEL_56:
          exception->__vftable = (MEMORY[0x277D828F8] + 16);
        }

        if (v24 < 10.0)
        {
          v30 = **(Phase::Logger::GetInstance(result) + 1152);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v31 = *v6;
            *v37 = 136315906;
            *&v37[4] = "FrequencyResponse.hpp";
            v38 = 1024;
            v39 = 103;
            v40 = 2048;
            v41 = v31;
            v42 = 2048;
            v43 = 10.0;
            _os_log_impl(&dword_23A302000, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [inFrequenciesFirst[i] < lowestSupportedFreqInHz is true]: GetBandsFromCenterFrequencies: center frequency: %fHz cannot be below lowest supported frequency: %fHz", v37, 0x26u);
          }

          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "GetBandsFromCenterFrequencies: center frequency: %fHz cannot be below lowest supported frequency: %fHz");
          goto LABEL_56;
        }

        if (v24 > a4)
        {
          v27 = **(Phase::Logger::GetInstance(result) + 1152);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            v28 = *v6;
            *v37 = 136315906;
            *&v37[4] = "FrequencyResponse.hpp";
            v38 = 1024;
            v39 = 107;
            v40 = 2048;
            v41 = v28;
            v42 = 2048;
            v43 = a4;
            _os_log_impl(&dword_23A302000, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [inFrequenciesFirst[i] > highestSupportedFreqInHz is true]: GetBandsFromCenterFrequencies: center frequency: %fHz cannot be above highest supported frequency: %fHz", v37, 0x26u);
          }

          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "GetBandsFromCenterFrequencies: center frequency: %fHz cannot be above highest supported frequency: %fHz");
          goto LABEL_56;
        }

        if (v21 && *(v6 - 1) >= v24)
        {
          v34 = **(Phase::Logger::GetInstance(result) + 1152);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            v35 = *(v6 - 1);
            v36 = *v6;
            *v37 = 136315906;
            *&v37[4] = "FrequencyResponse.hpp";
            v38 = 1024;
            v39 = 111;
            v40 = 2048;
            v41 = v35;
            v42 = 2048;
            v43 = v36;
            _os_log_impl(&dword_23A302000, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [i > 0 && inFrequenciesFirst[i - 1] >= inFrequenciesFirst[i] is true]: GetBandsFromCenterFrequencies: center frequencies are not in ascending order. %fHz is before %fHz", v37, 0x26u);
          }

          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "GetBandsFromCenterFrequencies: center frequencies are not in ascending order. %fHz is before %fHz");
          goto LABEL_56;
        }

        v26 = 10.0;
        if (v23 <= v21)
        {
          v25 = a4;
        }

        else
        {
          v25 = v24 * sqrtf(v6[1] / v24);
        }
      }

      *(v22 - 1) = v25;
      *v10 = v26;
      if (v23 > v21)
      {
        *v22 = v25;
      }

      ++v21;
      ++v6;
      v22 += 2;
      if (v8 == v21)
      {
        return result;
      }
    }
  }

  v13 = v6 + 1;
  v14 = &Phase::sOctaveBandFrequencies;
  do
  {
    v15 = *v14++;
    v12 = *(v13 - 1) == v15;
    v16 = *(v13 - 1) != v15 || v13 == a2;
    ++v13;
  }

  while (!v16);
  v11 = 0;
LABEL_22:
  if (v8 >= 1)
  {
    goto LABEL_23;
  }

  return result;
}

void sub_23A375B00(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

Phase::Logger *Phase::GetBandsFromCenterFrequencies<std::__wrap_iter<float const*>,float>@<X0>(float *a1@<X0>, float *a2@<X1>, float **a3@<X8>, float a4@<S0>)
{
  v6 = a1;
  v44 = *MEMORY[0x277D85DE8];
  v8 = a2 - a1;
  *v37 = 0;
  result = std::vector<Phase::FrequencyBand<float>>::vector[abi:ne200100](a3, v8);
  v10 = *a3;
  **a3 = 10.0;
  if (v8 == 31)
  {
    if (a2 == v6)
    {
      v12 = 0;
      v11 = 1;
      goto LABEL_23;
    }

    v17 = v6 + 1;
    v18 = &Phase::sThirdOctaveBandFrequencies;
    do
    {
      v19 = *v18++;
      v11 = *(v17 - 1) == v19;
      v20 = *(v17 - 1) != v19 || v17 == a2;
      ++v17;
    }

    while (!v20);
    goto LABEL_21;
  }

  if (v8 != 10)
  {
    v11 = 0;
LABEL_21:
    v12 = 0;
    goto LABEL_22;
  }

  if (a2 == v6)
  {
    v11 = 0;
    v12 = 1;
LABEL_23:
    v21 = 0;
    v22 = v10 + 2;
    v23 = v8 - 1;
    while (1)
    {
      v24 = *v6;
      if (v12)
      {
        v25 = v24 + ((v24 / 1.4142) * 0.5);
        if (v25 >= a4)
        {
          v25 = a4;
        }

        v26 = 20.363;
      }

      else if (v11)
      {
        v25 = v24 + ((v24 / 4.2426) * 0.5);
        if (v25 >= a4)
        {
          v25 = a4;
        }

        v26 = 17.643;
      }

      else
      {
        if ((LODWORD(v24) & 0x7FFFFFFFu) >= 0x7F800000)
        {
          v32 = **(Phase::Logger::GetInstance(result) + 1152);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            v33 = *v6;
            *v37 = 136315650;
            *&v37[4] = "FrequencyResponse.hpp";
            v38 = 1024;
            v39 = 99;
            v40 = 2048;
            v41 = v33;
            _os_log_impl(&dword_23A302000, v32, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [!std::isfinite(inFrequenciesFirst[i]) is true]: GetBandsFromCenterFrequencies: bad center frequency: %fHz", v37, 0x1Cu);
          }

          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "GetBandsFromCenterFrequencies: bad center frequency: %fHz");
LABEL_56:
          exception->__vftable = (MEMORY[0x277D828F8] + 16);
        }

        if (v24 < 10.0)
        {
          v30 = **(Phase::Logger::GetInstance(result) + 1152);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v31 = *v6;
            *v37 = 136315906;
            *&v37[4] = "FrequencyResponse.hpp";
            v38 = 1024;
            v39 = 103;
            v40 = 2048;
            v41 = v31;
            v42 = 2048;
            v43 = 10.0;
            _os_log_impl(&dword_23A302000, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [inFrequenciesFirst[i] < lowestSupportedFreqInHz is true]: GetBandsFromCenterFrequencies: center frequency: %fHz cannot be below lowest supported frequency: %fHz", v37, 0x26u);
          }

          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "GetBandsFromCenterFrequencies: center frequency: %fHz cannot be below lowest supported frequency: %fHz");
          goto LABEL_56;
        }

        if (v24 > a4)
        {
          v27 = **(Phase::Logger::GetInstance(result) + 1152);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            v28 = *v6;
            *v37 = 136315906;
            *&v37[4] = "FrequencyResponse.hpp";
            v38 = 1024;
            v39 = 107;
            v40 = 2048;
            v41 = v28;
            v42 = 2048;
            v43 = a4;
            _os_log_impl(&dword_23A302000, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [inFrequenciesFirst[i] > highestSupportedFreqInHz is true]: GetBandsFromCenterFrequencies: center frequency: %fHz cannot be above highest supported frequency: %fHz", v37, 0x26u);
          }

          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "GetBandsFromCenterFrequencies: center frequency: %fHz cannot be above highest supported frequency: %fHz");
          goto LABEL_56;
        }

        if (v21 && *(v6 - 1) >= v24)
        {
          v34 = **(Phase::Logger::GetInstance(result) + 1152);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            v35 = *(v6 - 1);
            v36 = *v6;
            *v37 = 136315906;
            *&v37[4] = "FrequencyResponse.hpp";
            v38 = 1024;
            v39 = 111;
            v40 = 2048;
            v41 = v35;
            v42 = 2048;
            v43 = v36;
            _os_log_impl(&dword_23A302000, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [i > 0 && inFrequenciesFirst[i - 1] >= inFrequenciesFirst[i] is true]: GetBandsFromCenterFrequencies: center frequencies are not in ascending order. %fHz is before %fHz", v37, 0x26u);
          }

          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "GetBandsFromCenterFrequencies: center frequencies are not in ascending order. %fHz is before %fHz");
          goto LABEL_56;
        }

        v26 = 10.0;
        if (v23 <= v21)
        {
          v25 = a4;
        }

        else
        {
          v25 = v24 * sqrtf(v6[1] / v24);
        }
      }

      *(v22 - 1) = v25;
      *v10 = v26;
      if (v23 > v21)
      {
        *v22 = v25;
      }

      ++v21;
      ++v6;
      v22 += 2;
      if (v8 == v21)
      {
        return result;
      }
    }
  }

  v13 = v6 + 1;
  v14 = &Phase::sOctaveBandFrequencies;
  do
  {
    v15 = *v14++;
    v12 = *(v13 - 1) == v15;
    v16 = *(v13 - 1) != v15 || v13 == a2;
    ++v13;
  }

  while (!v16);
  v11 = 0;
LABEL_22:
  if (v8 >= 1)
  {
    goto LABEL_23;
  }

  return result;
}

void sub_23A376054(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void std::vector<float>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void std::vector<long>::push_back[abi:ne200100](const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void *std::vector<Phase::FrequencyBand<float>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_23A3762CC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void Phase::GetValuesFromFrequencyResponse<std::__wrap_iter<float *>,std::__wrap_iter<float *>,std::__wrap_iter<float const*>,std::__wrap_iter<float *>,&float Phase::Square<float>,&float Phase::SquareRoot<float>>(float *a1, float *a2, uint64_t a3, uint64_t a4, float *a5, float *a6, uint64_t a7)
{
  v11 = a2 - a1;
  if (a2 != a1)
  {
    v12 = a1 + 1;
    while (v12 != a2)
    {
      v14 = *(v12 - 1);
      v13 = *v12++;
      if (v13 < v14)
      {
        v15 = v12 - 1;
        goto LABEL_7;
      }
    }

    v15 = a2;
LABEL_7:
    if (v15 != a2)
    {
      __assert_rtn("GetValuesFromFrequencyResponse", "FrequencyResponse.hpp", 262, "std::is_sorted(inFrequenciesFirst, inFrequenciesLast)");
    }
  }

  if (a6 != a5)
  {
    v16 = a5 + 1;
    while (v16 != a6)
    {
      v18 = *(v16 - 1);
      v17 = *v16++;
      if (v17 < v18)
      {
        v19 = v16 - 1;
        goto LABEL_14;
      }
    }

    v19 = a6;
LABEL_14:
    if (v19 != a6)
    {
      __assert_rtn("GetValuesFromFrequencyResponse", "FrequencyResponse.hpp", 263, "std::is_sorted(inOutputFrequenciesFirst, inOutputFrequenciesLast)");
    }
  }

  Phase::GetBandsFromCenterFrequencies<std::__wrap_iter<float *>,float>(a1, a2, v53, 22000.0);
  Phase::GetBandsFromCenterFrequencies<std::__wrap_iter<float const*>,float>(a5, a6, v52, 22000.0);
  v51 = 0.0;
  v20 = a6 - a5;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  __p = 0;
  v46 = 0;
  v47 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  if (v20 > 0)
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = v11 >> 2;
    do
    {
      v26 = (v52[0] + 8 * v24);
      v27 = *v26;
      v28 = v26[1];
      v49 = v48;
      v46 = v22;
      v43 = v21;
      v41 = v23;
      if (v23 < v25)
      {
        v29 = v23;
        while (1)
        {
          v30.i32[0] = *(v53[0] + v29);
          v30.i32[1] = HIDWORD(*(v52[0] + v24));
          v31.i32[0] = *(v52[0] + v24);
          v31.i32[1] = HIDWORD(*(v53[0] + v29));
          v32 = vbsl_s8(vcgt_f32(v31, v30), *(v52[0] + 8 * v24), *(v53[0] + 8 * v29));
          v51 = fmaxf(vsub_f32(vdup_lane_s32(v32, 1), v32).f32[0], 0.0);
          if (v51 == 0.0)
          {
            break;
          }

          std::vector<float>::push_back[abi:ne200100](&v48, &v51);
          std::vector<long>::push_back[abi:ne200100](&__p, &v41);
          if (v41 == v25 - 1)
          {
            v23 = v41;
          }

          v29 = v41 + 1;
          v41 = v29;
          if (v29 >= v25)
          {
            goto LABEL_25;
          }
        }

        v23 = v29 - (*(v53[0] + 2 * v29) != *(v52[0] + 2 * v24 + 1));
      }

LABEL_25:
      v22 = __p;
      v33 = 0.0;
      if (v46 == __p)
      {
        v36 = 0.0;
      }

      else
      {
        v34 = 0;
        v35 = v28 - v27;
        v36 = 0.0;
        do
        {
          v37 = *(v48 + v34) / v35;
          *&v41 = v37 * (*(a3 + 4 * *&v22[8 * v34]) * *(a3 + 4 * *&v22[8 * v34]));
          std::vector<float>::push_back[abi:ne200100](&v42, &v41);
          v36 = v36 + v37;
          ++v34;
          v22 = __p;
        }

        while (v34 < (v46 - __p) >> 3);
      }

      v21 = v42;
      if (v42 != v43)
      {
        v38 = 0.0;
        v39 = v42;
        do
        {
          v40 = *v39++;
          v38 = v38 + v40;
        }

        while (v39 != v43);
        v33 = v38;
      }

      *(a7 + 4 * v24++) = sqrtf(v33 / v36);
    }

    while (v24 != v20);
    if (v21)
    {
      v43 = v21;
      operator delete(v21);
      v22 = __p;
    }

    if (v22)
    {
      v46 = v22;
      operator delete(v22);
    }
  }

  if (v48)
  {
    v49 = v48;
    operator delete(v48);
  }

  if (v52[0])
  {
    v52[1] = v52[0];
    operator delete(v52[0]);
  }

  if (v53[0])
  {
    v53[1] = v53[0];
    operator delete(v53[0]);
  }
}

void sub_23A376630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **std::unique_ptr<Phase::Zeppelin::HorizontalSliceDatabase>::reset[abi:ne200100](uint64_t **result, uint64_t *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *v2;
    *v2 = 0;
    if (v3)
    {
      v4 = Phase::Zeppelin::SphereSampling::NDimEquiangularHalfCircleData<float,double>::~NDimEquiangularHalfCircleData(v3);
      MEMORY[0x23EE864A0](v4, 0x1080C4034BCA2CCLL);
    }

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

uint64_t Phase::Zeppelin::SphereSampling::NDimEquiangularHalfCircleData<float,double>::~NDimEquiangularHalfCircleData(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(a1 + 32) + 8 * i);
      if (v4)
      {
        MEMORY[0x23EE86470](v4, 0x1000C8000313F17);
        v2 = *(a1 + 24);
      }
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    MEMORY[0x23EE86470](v5, 0x80C80B8603338);
  }

  v6 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v6;
    operator delete(v6);
  }

  return a1;
}

uint64_t std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void Phase::CurveFunction::Sigmoid<float>(float a1)
{
  if (a1 >= 0.5)
  {
    sinf(((1.0 - (((a1 + -0.5) * -2.0) + 1.0)) * 3.1416) * 0.5);
  }

  else
  {
    sinf(((1.0 - (a1 + a1)) * -3.1416) * 0.5);
  }
}

void Phase::CurveFunction::InverseSigmoid<float>(float a1)
{
  if (a1 >= 0.5)
  {
    sinf(((1.0 - ((a1 + -0.5) + (a1 + -0.5))) * -3.1416) * 0.5);
  }

  else
  {
    sinf(((1.0 - ((a1 * -2.0) + 1.0)) * 3.1416) * 0.5);
  }
}

uint64_t std::__function::__func<float (*)(float),std::allocator<float (*)(float)>,float ()(float)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D31660;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<float ()(float)>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v4 == a1)
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    if (v5 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v5;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

float Phase::Envelope<float>::InitializeFromSingleSegment(Phase::Logger *a1, float *a2, float *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = *a3;
  if (*a2 > *a3)
  {
    v10 = **(Phase::Logger::GetInstance(a1) + 112);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *a2;
      v12 = *a3;
      *v14 = 136315906;
      *&v14[4] = "Envelope.hpp";
      *v15 = 1024;
      *&v15[2] = 243;
      v16 = 2048;
      v17 = v11;
      v18 = 2048;
      v19 = v12;
      _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (EnvelopeException::InvalidStartPoint) [!(inStartPoint.x <= inSegment.mEndPoint.x) is true]: Invalid start point x value: %f. Must be <= end point x value: %f", v14, 0x26u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    _ZN5Phase17EnvelopeException17InvalidStartPointCI1St11logic_errorEPKc(exception, "Invalid start point x value: %f. Must be <= end point x value: %f");
  }

  *v14 = 0;
  v6 = *(a3 + 1);
  *&v14[8] = v4;
  *v15 = v6;
  std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](&v15[4], (a3 + 2));
  std::vector<Phase::Envelope<float>::SegmentInternal,std::allocator<Phase::Envelope<float>::SegmentInternal>>::assign(a1, 1uLL, v14);
  std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](&v15[4]);
  v7 = *a1;
  *v7 = *a2;
  result = a2[1];
  v7[1] = result;
  return result;
}

uint64_t std::vector<Phase::Envelope<float>::SegmentInternal,std::allocator<Phase::Envelope<float>::SegmentInternal>>::assign(uint64_t result, unint64_t a2, _DWORD *a3)
{
  v5 = result;
  v6 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((*(result + 16) - *result) >> 4) < a2)
  {
    std::vector<Phase::Envelope<float>::SegmentInternal,std::allocator<Phase::Envelope<float>::SegmentInternal>>::__vdeallocate(result);
    if (a2 <= 0x555555555555555)
    {
      v7 = 0x5555555555555556 * ((v5[2] - *v5) >> 4);
      if (v7 <= a2)
      {
        v7 = a2;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v5[2] - *v5) >> 4) >= 0x2AAAAAAAAAAAAAALL)
      {
        v8 = 0x555555555555555;
      }

      else
      {
        v8 = v7;
      }

      std::vector<Phase::Envelope<float>::SegmentInternal,std::allocator<Phase::Envelope<float>::SegmentInternal>>::__vallocate[abi:ne200100](v5, v8);
    }

    std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
  }

  v9 = (*(result + 8) - v6) >> 4;
  v10 = 0xAAAAAAAAAAAAAAABLL * v9;
  if (0xAAAAAAAAAAAAAAABLL * v9 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = 0xAAAAAAAAAAAAAAABLL * v9;
  }

  for (; v11; --v11)
  {
    *v6 = *a3;
    v6[1] = a3[1];
    v6[2] = a3[2];
    v6[3] = a3[3];
    result = std::function<float ()(float)>::operator=(v6 + 2, (a3 + 4));
    v6 += 12;
  }

  if (a2 <= v10)
  {
    v15 = v5[1];
    v16 = *v5 + 48 * a2;
    if (v15 != v16)
    {
      do
      {
        v17 = v15 - 48;
        result = std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v15 - 32);
        v15 = v17;
      }

      while (v17 != v16);
    }

    v5[1] = v16;
  }

  else
  {
    v12 = v5[1];
    v13 = &v12[12 * (a2 - v10)];
    v14 = 48 * a2 - 48 * v10;
    do
    {
      *v12 = *a3;
      v12[1] = a3[1];
      v12[2] = a3[2];
      v12[3] = a3[3];
      result = std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100]((v12 + 4), (a3 + 4));
      v12 += 12;
      v14 -= 48;
    }

    while (v14);
    v5[1] = v13;
  }

  return result;
}

void std::vector<Phase::Envelope<float>::SegmentInternal,std::allocator<Phase::Envelope<float>::SegmentInternal>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Envelope<double>::Segment>>(a1, a2);
  }

  std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
}

void *std::function<float ()(float)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<float ()(float)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v4);
  return a1;
}

uint64_t std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

void *std::__function::__value_func<float ()(float)>::swap[abi:ne200100](void *result, void *a2)
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

void sub_23A377314(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,Phase::Envelope<float>::Envelope<std::__wrap_iter<Phase::Envelope<float>::Segment *>>(Phase::Vector<float,2ul> const&,std::__wrap_iter<Phase::Envelope<float>::Segment *>,std::__wrap_iter<Phase::Envelope<float>::Segment *>)::{lambda(Phase::Envelope<float>::SegmentInternal const&,Phase::Envelope<float>::SegmentInternal const&)#1} &,Phase::Envelope<float>::SegmentInternal*,false>(uint64_t result, unint64_t a2, uint64_t a3, char a4)
{
  v7 = result;
  v111[5] = *MEMORY[0x277D85DE8];
LABEL_2:
  v8 = v7;
  while (1)
  {
    v9 = a2 - v8;
    v10 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v8) >> 4);
    v11 = v10 - 2;
    if (v10 <= 2)
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        if (*(a2 - 40) >= *(v8 + 8))
        {
          return result;
        }

        v61 = (a2 - 48);
        goto LABEL_168;
      }

      goto LABEL_10;
    }

    if (v10 == 3)
    {
      v62 = *(v8 + 56);
      v63 = *(a2 - 40);
      if (v62 < *(v8 + 8))
      {
        if (v63 >= v62)
        {
          result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<float>::SegmentInternal *&,Phase::Envelope<float>::SegmentInternal *&>(v8, (v8 + 48));
          if (*(a2 - 40) >= *(v8 + 56))
          {
            return result;
          }

          v64 = (v8 + 48);
        }

        else
        {
          v64 = v8;
        }

        v61 = (a2 - 48);
        return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<float>::SegmentInternal *&,Phase::Envelope<float>::SegmentInternal *&>(v64, v61);
      }

      if (v63 >= v62)
      {
        return result;
      }

      v59 = (v8 + 48);
      v60 = (a2 - 48);
LABEL_166:
      result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<float>::SegmentInternal *&,Phase::Envelope<float>::SegmentInternal *&>(v59, v60);
      if (*(v8 + 56) >= *(v8 + 8))
      {
        return result;
      }

      v61 = (v8 + 48);
LABEL_168:
      v64 = v8;
      return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<float>::SegmentInternal *&,Phase::Envelope<float>::SegmentInternal *&>(v64, v61);
    }

    if (v10 == 4)
    {
      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Envelope<float>::Envelope<std::__wrap_iter<Phase::Envelope<float>::Segment *>>(Phase::Vector<float,2ul> const&,std::__wrap_iter<Phase::Envelope<float>::Segment *>,std::__wrap_iter<Phase::Envelope<float>::Segment *>)::{lambda(Phase::Envelope<float>::SegmentInternal const&,Phase::Envelope<float>::SegmentInternal const&)#1} &,Phase::Envelope<float>::SegmentInternal*,0>(v8, v8 + 48, v8 + 96, a2 - 48);
    }

    if (v10 == 5)
    {
      break;
    }

LABEL_10:
    if (v9 <= 1151)
    {
      if (a4)
      {
        if (v8 != a2)
        {
          v65 = (v8 + 48);
          if (v8 + 48 != a2)
          {
            v66 = 0;
            v67 = v8;
            do
            {
              v68 = v65;
              v69 = *(v67 + 56);
              if (v69 < *(v67 + 8))
              {
                *&v110 = *v65;
                *(&v110 + 1) = __PAIR64__(*(v67 + 60), LODWORD(v69));
                std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v111, v67 + 64);
                v70 = v66;
                while (1)
                {
                  v71 = v70;
                  v72 = v8 + v70;
                  *(v72 + 48) = *v72;
                  *(v72 + 52) = *(v72 + 4);
                  *(v72 + 60) = *(v72 + 12);
                  std::__function::__value_func<float ()(float)>::operator=[abi:ne200100](v72 + 64, v72 + 16);
                  if (!v71)
                  {
                    break;
                  }

                  v70 = v71 - 48;
                  if (*(&v110 + 2) >= *(v8 + v71 - 40))
                  {
                    v73 = (v8 + v71);
                    goto LABEL_124;
                  }
                }

                v73 = v8;
LABEL_124:
                *v73 = v110;
                std::__function::__value_func<float ()(float)>::operator=[abi:ne200100](v8 + v71 + 16, v111);
                result = std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v111);
              }

              v65 = v68 + 6;
              v66 += 48;
              v67 = v68;
            }

            while (v68 + 6 != a2);
          }
        }
      }

      else if (v8 != a2)
      {
        v99 = (v8 + 48);
        if (v8 + 48 != a2)
        {
          v100 = v8 + 64;
          do
          {
            v101 = v99;
            v102 = *(v8 + 56);
            if (v102 < *(v8 + 8))
            {
              *&v110 = *v99;
              *(&v110 + 1) = __PAIR64__(*(v8 + 60), LODWORD(v102));
              std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v111, v8 + 64);
              v103 = v100;
              do
              {
                *(v103 - 16) = *(v103 - 64);
                *(v103 - 12) = *(v103 - 60);
                *(v103 - 4) = *(v103 - 52);
                v104 = v103 - 48;
                v105 = std::__function::__value_func<float ()(float)>::operator=[abi:ne200100](v103, v103 - 48);
                v106 = DWORD2(v110);
                v107 = *(v105 - 104);
                v103 = v104;
              }

              while (*(&v110 + 2) < v107);
              *(v104 - 16) = v110;
              *(v104 - 8) = v106;
              *(v104 - 4) = HIDWORD(v110);
              std::__function::__value_func<float ()(float)>::operator=[abi:ne200100](v104, v111);
              result = std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v111);
            }

            v99 = v101 + 6;
            v100 += 48;
            v8 = v101;
          }

          while (v101 + 6 != a2);
        }
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v74 = v11 >> 1;
        v75 = v11 >> 1;
        do
        {
          v76 = v75;
          if (v74 >= v75)
          {
            v77 = (2 * v75) | 1;
            v78 = v8 + 48 * v77;
            if (2 * v75 + 2 < v10 && *(v78 + 8) < *(v78 + 56))
            {
              v78 += 48;
              v77 = 2 * v75 + 2;
            }

            v79 = (v8 + 48 * v75);
            v80 = *(v79 + 2);
            if (*(v78 + 8) >= v80)
            {
              *&v110 = *v79;
              *(&v110 + 2) = v80;
              HIDWORD(v110) = *(v79 + 3);
              std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v111, (v79 + 1));
              do
              {
                v81 = v78;
                *v79 = *v78;
                *(v79 + 1) = *(v78 + 4);
                *(v79 + 2) = *(v78 + 8);
                *(v79 + 3) = *(v78 + 12);
                std::__function::__value_func<float ()(float)>::operator=[abi:ne200100]((v79 + 1), v78 + 16);
                if (v74 < v77)
                {
                  break;
                }

                v82 = 2 * v77;
                v77 = (2 * v77) | 1;
                v78 = v8 + 48 * v77;
                v83 = v82 + 2;
                if (v83 < v10 && *(v78 + 8) < *(v78 + 56))
                {
                  v78 += 48;
                  v77 = v83;
                }

                v79 = v81;
              }

              while (*(v78 + 8) >= *(&v110 + 2));
              *v81 = v110;
              std::__function::__value_func<float ()(float)>::operator=[abi:ne200100]((v81 + 1), v111);
              result = std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v111);
            }
          }

          v75 = v76 - 1;
        }

        while (v76);
        v84 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 4);
        do
        {
          if (v84 >= 2)
          {
            v108 = *v8;
            std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v109, v8 + 16);
            v85 = 0;
            v86 = v8;
            do
            {
              v87 = &v86[12 * v85];
              v88 = v87 + 12;
              if (2 * v85 + 2 >= v84)
              {
                v85 = (2 * v85) | 1;
              }

              else
              {
                v89 = v87[14];
                v90 = v87[26];
                v91 = v87 + 24;
                if (v89 >= v90)
                {
                  v85 = (2 * v85) | 1;
                }

                else
                {
                  v88 = v91;
                  v85 = 2 * v85 + 2;
                }
              }

              *v86 = *v88;
              v86[1] = *(v88 + 1);
              v86[2] = *(v88 + 2);
              v86[3] = *(v88 + 3);
              std::__function::__value_func<float ()(float)>::operator=[abi:ne200100]((v86 + 4), (v88 + 4));
              v86 = v88;
            }

            while (v85 <= ((v84 - 2) >> 1));
            if (v88 == (a2 - 48))
            {
              *v88 = v108;
              std::__function::__value_func<float ()(float)>::operator=[abi:ne200100]((v88 + 4), v109);
            }

            else
            {
              *v88 = *(a2 - 48);
              v88[1] = *(a2 - 44);
              v88[2] = *(a2 - 40);
              v88[3] = *(a2 - 36);
              std::__function::__value_func<float ()(float)>::operator=[abi:ne200100]((v88 + 4), a2 - 32);
              *(a2 - 48) = v108;
              std::__function::__value_func<float ()(float)>::operator=[abi:ne200100](a2 - 32, v109);
              v92 = v88 - v8 + 48;
              if (v92 >= 49)
              {
                v93 = (-2 - 0x5555555555555555 * (v92 >> 4)) >> 1;
                v94 = (v8 + 48 * v93);
                v95 = v88[2];
                if (v94[2] < v95)
                {
                  *&v110 = *v88;
                  *(&v110 + 1) = __PAIR64__(*(v88 + 3), LODWORD(v95));
                  std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v111, (v88 + 4));
                  while (1)
                  {
                    v96 = v94;
                    *v88 = *v94;
                    v88[1] = v94[1];
                    v88[2] = v94[2];
                    v88[3] = v94[3];
                    std::__function::__value_func<float ()(float)>::operator=[abi:ne200100]((v88 + 4), (v94 + 4));
                    if (!v93)
                    {
                      break;
                    }

                    v93 = (v93 - 1) >> 1;
                    v94 = (v8 + 48 * v93);
                    v97 = DWORD2(v110);
                    v88 = v96;
                    if (v94[2] >= *(&v110 + 2))
                    {
                      goto LABEL_160;
                    }
                  }

                  v97 = DWORD2(v110);
LABEL_160:
                  *v96 = v110;
                  *(v96 + 2) = v97;
                  v96[3] = *(&v110 + 3);
                  std::__function::__value_func<float ()(float)>::operator=[abi:ne200100]((v96 + 4), v111);
                  std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v111);
                }
              }
            }

            result = std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v109);
          }

          a2 -= 48;
        }

        while (v84-- > 2);
      }

      return result;
    }

    v12 = v10 >> 1;
    v13 = v8 + 48 * (v10 >> 1);
    v14 = *(a2 - 40);
    if (v9 >= 0x1801)
    {
      v15 = *(v13 + 8);
      if (v15 >= *(v8 + 8))
      {
        if (v14 >= v15 || (std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<float>::SegmentInternal *&,Phase::Envelope<float>::SegmentInternal *&>(v13, (a2 - 48)), *(v13 + 8) >= *(v8 + 8)))
        {
LABEL_27:
          v21 = v8 + 48 * v12;
          v22 = v21 - 48;
          v23 = *(v21 - 40);
          v24 = *(a2 - 88);
          if (v23 >= *(v8 + 56))
          {
            if (v24 >= v23 || (std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<float>::SegmentInternal *&,Phase::Envelope<float>::SegmentInternal *&>((v21 - 48), (a2 - 96)), *(v22 + 8) >= *(v8 + 56)))
            {
LABEL_40:
              v27 = v8 + 48 * v12;
              v28 = v27 + 48;
              v29 = *(v27 + 56);
              v30 = *(a2 - 136);
              if (v29 >= *(v8 + 104))
              {
                if (v30 >= v29 || (std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<float>::SegmentInternal *&,Phase::Envelope<float>::SegmentInternal *&>((v27 + 48), (a2 - 144)), *(v28 + 8) >= *(v8 + 104)))
                {
LABEL_49:
                  v33 = *(v13 + 8);
                  v34 = *(v28 + 8);
                  if (v33 >= *(v22 + 8))
                  {
                    if (v34 >= v33)
                    {
                      goto LABEL_58;
                    }

                    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<float>::SegmentInternal *&,Phase::Envelope<float>::SegmentInternal *&>(v13, v28);
                    if (*(v13 + 8) >= *(v22 + 8))
                    {
                      goto LABEL_58;
                    }

                    v35 = v22;
                    v36 = v13;
                  }

                  else
                  {
                    v35 = v22;
                    if (v34 >= v33)
                    {
                      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<float>::SegmentInternal *&,Phase::Envelope<float>::SegmentInternal *&>(v22, v13);
                      if (*(v28 + 8) >= *(v13 + 8))
                      {
LABEL_58:
                        v110 = *v8;
                        std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v111, v8 + 16);
                        *v8 = *v13;
                        std::__function::__value_func<float ()(float)>::operator=[abi:ne200100](v8 + 16, v13 + 16);
                        *v13 = v110;
                        std::__function::__value_func<float ()(float)>::operator=[abi:ne200100](v13 + 16, v111);
                        std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v111);
                        goto LABEL_59;
                      }

                      v35 = v13;
                    }

                    v36 = v28;
                  }

                  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<float>::SegmentInternal *&,Phase::Envelope<float>::SegmentInternal *&>(v35, v36);
                  goto LABEL_58;
                }

                v31 = (v8 + 96);
                v32 = v28;
              }

              else
              {
                v31 = (v8 + 96);
                if (v30 >= v29)
                {
                  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<float>::SegmentInternal *&,Phase::Envelope<float>::SegmentInternal *&>(v31, (v27 + 48));
                  if (*(a2 - 136) >= *(v28 + 8))
                  {
                    goto LABEL_49;
                  }

                  v31 = v28;
                }

                v32 = (a2 - 144);
              }

              std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<float>::SegmentInternal *&,Phase::Envelope<float>::SegmentInternal *&>(v31, v32);
              goto LABEL_49;
            }

            v25 = (v8 + 48);
            v26 = v22;
          }

          else
          {
            v25 = (v8 + 48);
            if (v24 >= v23)
            {
              std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<float>::SegmentInternal *&,Phase::Envelope<float>::SegmentInternal *&>(v25, (v21 - 48));
              if (*(a2 - 88) >= *(v22 + 8))
              {
                goto LABEL_40;
              }

              v25 = v22;
            }

            v26 = (a2 - 96);
          }

          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<float>::SegmentInternal *&,Phase::Envelope<float>::SegmentInternal *&>(v25, v26);
          goto LABEL_40;
        }

        v16 = v8;
        v17 = v13;
      }

      else
      {
        v16 = v8;
        if (v14 >= v15)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<float>::SegmentInternal *&,Phase::Envelope<float>::SegmentInternal *&>(v8, v13);
          if (*(a2 - 40) >= *(v13 + 8))
          {
            goto LABEL_27;
          }

          v16 = v13;
        }

        v17 = (a2 - 48);
      }

      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<float>::SegmentInternal *&,Phase::Envelope<float>::SegmentInternal *&>(v16, v17);
      goto LABEL_27;
    }

    v18 = *(v8 + 8);
    if (v18 < *(v13 + 8))
    {
      v19 = v13;
      if (v14 >= v18)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<float>::SegmentInternal *&,Phase::Envelope<float>::SegmentInternal *&>(v13, v8);
        if (*(a2 - 40) >= *(v8 + 8))
        {
          goto LABEL_59;
        }

        v19 = v8;
      }

      v20 = (a2 - 48);
      goto LABEL_35;
    }

    if (v14 < v18)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<float>::SegmentInternal *&,Phase::Envelope<float>::SegmentInternal *&>(v8, (a2 - 48));
      if (*(v8 + 8) < *(v13 + 8))
      {
        v19 = v13;
        v20 = v8;
LABEL_35:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<float>::SegmentInternal *&,Phase::Envelope<float>::SegmentInternal *&>(v19, v20);
      }
    }

LABEL_59:
    --a3;
    if (a4)
    {
      v37 = *(v8 + 8);
    }

    else
    {
      v37 = *(v8 + 8);
      if (*(v8 - 40) >= v37)
      {
        *&v110 = *v8;
        *(&v110 + 1) = __PAIR64__(*(v8 + 12), LODWORD(v37));
        std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v111, v8 + 16);
        if (*(&v110 + 2) >= *(a2 - 40))
        {
          v52 = v8 + 48;
          do
          {
            v7 = v52;
            if (v52 >= a2)
            {
              break;
            }

            v53 = *(v52 + 8);
            v52 += 48;
          }

          while (*(&v110 + 2) >= v53);
        }

        else
        {
          v50 = v8;
          do
          {
            v7 = v50 + 48;
            v51 = *(v50 + 56);
            v50 += 48;
          }

          while (*(&v110 + 2) >= v51);
        }

        v54 = a2;
        if (v7 < a2)
        {
          v55 = a2;
          do
          {
            v54 = (v55 - 48);
            v56 = *(v55 - 40);
            v55 -= 48;
          }

          while (*(&v110 + 2) < v56);
        }

        while (v7 < v54)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<float>::SegmentInternal *&,Phase::Envelope<float>::SegmentInternal *&>(v7, v54);
          do
          {
            v57 = *(v7 + 56);
            v7 += 48;
          }

          while (*(&v110 + 2) >= v57);
          do
          {
            v58 = *(v54 - 10);
            v54 -= 12;
          }

          while (*(&v110 + 2) < v58);
        }

        if (v7 - 48 != v8)
        {
          *v8 = *(v7 - 48);
          *(v8 + 4) = *(v7 - 44);
          *(v8 + 8) = *(v7 - 40);
          *(v8 + 12) = *(v7 - 36);
          std::__function::__value_func<float ()(float)>::operator=[abi:ne200100](v8 + 16, v7 - 32);
        }

        *(v7 - 48) = v110;
        std::__function::__value_func<float ()(float)>::operator=[abi:ne200100](v7 - 32, v111);
        result = std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v111);
        a4 = 0;
        goto LABEL_2;
      }
    }

    *&v110 = *v8;
    *(&v110 + 1) = __PAIR64__(*(v8 + 12), LODWORD(v37));
    std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v111, v8 + 16);
    v38 = 0;
    do
    {
      v39 = *(v8 + v38 + 56);
      v38 += 48;
    }

    while (v39 < *(&v110 + 2));
    v40 = v8 + v38;
    v41 = a2;
    if (v38 == 48)
    {
      v44 = a2;
      while (v40 < v44)
      {
        v42 = (v44 - 48);
        v45 = *(v44 - 40);
        v44 -= 48;
        if (v45 < *(&v110 + 2))
        {
          goto LABEL_72;
        }
      }

      v42 = v44;
    }

    else
    {
      do
      {
        v42 = (v41 - 48);
        v43 = *(v41 - 40);
        v41 -= 48;
      }

      while (v43 >= *(&v110 + 2));
    }

LABEL_72:
    v7 = v40;
    if (v40 < v42)
    {
      v46 = v42;
      do
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<float>::SegmentInternal *&,Phase::Envelope<float>::SegmentInternal *&>(v7, v46);
        do
        {
          v47 = *(v7 + 56);
          v7 += 48;
        }

        while (v47 < *(&v110 + 2));
        do
        {
          v48 = *(v46 - 10);
          v46 -= 12;
        }

        while (v48 >= *(&v110 + 2));
      }

      while (v7 < v46);
    }

    if (v7 - 48 != v8)
    {
      *v8 = *(v7 - 48);
      *(v8 + 4) = *(v7 - 44);
      *(v8 + 8) = *(v7 - 40);
      *(v8 + 12) = *(v7 - 36);
      std::__function::__value_func<float ()(float)>::operator=[abi:ne200100](v8 + 16, v7 - 32);
    }

    *(v7 - 48) = v110;
    std::__function::__value_func<float ()(float)>::operator=[abi:ne200100](v7 - 32, v111);
    std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v111);
    if (v40 < v42)
    {
      goto LABEL_85;
    }

    v49 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Envelope<float>::Envelope<std::__wrap_iter<Phase::Envelope<float>::Segment *>>(Phase::Vector<float,2ul> const&,std::__wrap_iter<Phase::Envelope<float>::Segment *>,std::__wrap_iter<Phase::Envelope<float>::Segment *>)::{lambda(Phase::Envelope<float>::SegmentInternal const&,Phase::Envelope<float>::SegmentInternal const&)#1} &,Phase::Envelope<float>::SegmentInternal*>(v8, v7 - 48);
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Envelope<float>::Envelope<std::__wrap_iter<Phase::Envelope<float>::Segment *>>(Phase::Vector<float,2ul> const&,std::__wrap_iter<Phase::Envelope<float>::Segment *>,std::__wrap_iter<Phase::Envelope<float>::Segment *>)::{lambda(Phase::Envelope<float>::SegmentInternal const&,Phase::Envelope<float>::SegmentInternal const&)#1} &,Phase::Envelope<float>::SegmentInternal*>(v7, a2);
    if (!result)
    {
      if (v49)
      {
        goto LABEL_2;
      }

LABEL_85:
      result = std::__introsort<std::_ClassicAlgPolicy,Phase::Envelope<float>::Envelope<std::__wrap_iter<Phase::Envelope<float>::Segment *>>(Phase::Vector<float,2ul> const&,std::__wrap_iter<Phase::Envelope<float>::Segment *>,std::__wrap_iter<Phase::Envelope<float>::Segment *>)::{lambda(Phase::Envelope<float>::SegmentInternal const&,Phase::Envelope<float>::SegmentInternal const&)#1} &,Phase::Envelope<float>::SegmentInternal*,false>(v8, v7 - 48, a3, a4 & 1);
      a4 = 0;
      goto LABEL_2;
    }

    a2 = v7 - 48;
    if (v49)
    {
      return result;
    }
  }

  result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Envelope<float>::Envelope<std::__wrap_iter<Phase::Envelope<float>::Segment *>>(Phase::Vector<float,2ul> const&,std::__wrap_iter<Phase::Envelope<float>::Segment *>,std::__wrap_iter<Phase::Envelope<float>::Segment *>)::{lambda(Phase::Envelope<float>::SegmentInternal const&,Phase::Envelope<float>::SegmentInternal const&)#1} &,Phase::Envelope<float>::SegmentInternal*,0>(v8, v8 + 48, v8 + 96, v8 + 144);
  if (*(a2 - 40) < *(v8 + 152))
  {
    result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<float>::SegmentInternal *&,Phase::Envelope<float>::SegmentInternal *&>((v8 + 144), (a2 - 48));
    if (*(v8 + 152) < *(v8 + 104))
    {
      result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<float>::SegmentInternal *&,Phase::Envelope<float>::SegmentInternal *&>((v8 + 96), (v8 + 144));
      if (*(v8 + 104) < *(v8 + 56))
      {
        v59 = (v8 + 48);
        v60 = (v8 + 96);
        goto LABEL_166;
      }
    }
  }

  return result;
}

void sub_23A37805C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<float>::SegmentInternal *&,Phase::Envelope<float>::SegmentInternal *&>(__int128 *a1, _DWORD *a2)
{
  v6[5] = *MEMORY[0x277D85DE8];
  v5 = *a1;
  std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v6, (a1 + 1));
  *a1 = *a2;
  *(a1 + 1) = a2[1];
  *(a1 + 2) = a2[2];
  *(a1 + 3) = a2[3];
  std::__function::__value_func<float ()(float)>::operator=[abi:ne200100]((a1 + 1), (a2 + 4));
  *a2 = v5;
  std::__function::__value_func<float ()(float)>::operator=[abi:ne200100]((a2 + 4), v6);
  return std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v6);
}

void sub_23A3781AC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Envelope<float>::Envelope<std::__wrap_iter<Phase::Envelope<float>::Segment *>>(Phase::Vector<float,2ul> const&,std::__wrap_iter<Phase::Envelope<float>::Segment *>,std::__wrap_iter<Phase::Envelope<float>::Segment *>)::{lambda(Phase::Envelope<float>::SegmentInternal const&,Phase::Envelope<float>::SegmentInternal const&)#1} &,Phase::Envelope<float>::SegmentInternal*,0>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  v8 = *(a2 + 8);
  v9 = *(a3 + 8);
  if (v8 >= *(result + 8))
  {
    if (v9 < v8)
    {
      result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<float>::SegmentInternal *&,Phase::Envelope<float>::SegmentInternal *&>(a2, a3);
      if (*(a2 + 8) < *(v7 + 8))
      {
        result = v7;
        v10 = a2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v9 < v8)
    {
LABEL_5:
      v10 = a3;
LABEL_9:
      result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<float>::SegmentInternal *&,Phase::Envelope<float>::SegmentInternal *&>(result, v10);
      goto LABEL_10;
    }

    result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<float>::SegmentInternal *&,Phase::Envelope<float>::SegmentInternal *&>(result, a2);
    if (*(a3 + 8) < *(a2 + 8))
    {
      result = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (*(a4 + 8) < *(a3 + 8))
  {
    result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<float>::SegmentInternal *&,Phase::Envelope<float>::SegmentInternal *&>(a3, a4);
    if (*(a3 + 8) < *(a2 + 8))
    {
      result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<float>::SegmentInternal *&,Phase::Envelope<float>::SegmentInternal *&>(a2, a3);
      if (*(a2 + 8) < *(v7 + 8))
      {

        return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<float>::SegmentInternal *&,Phase::Envelope<float>::SegmentInternal *&>(v7, a2);
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Envelope<float>::Envelope<std::__wrap_iter<Phase::Envelope<float>::Segment *>>(Phase::Vector<float,2ul> const&,std::__wrap_iter<Phase::Envelope<float>::Segment *>,std::__wrap_iter<Phase::Envelope<float>::Segment *>)::{lambda(Phase::Envelope<float>::SegmentInternal const&,Phase::Envelope<float>::SegmentInternal const&)#1} &,Phase::Envelope<float>::SegmentInternal*>(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v25[4] = *MEMORY[0x277D85DE8];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 4);
  if (v4 <= 2)
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      if (*(a2 - 40) < *(a1 + 8))
      {
        v5 = (a2 - 48);
LABEL_24:
        a1 = v3;
LABEL_31:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<float>::SegmentInternal *&,Phase::Envelope<float>::SegmentInternal *&>(a1, v5);
        return 1;
      }

      return 1;
    }

LABEL_16:
    v10 = a1 + 96;
    v11 = *(a1 + 56);
    v12 = *(a1 + 104);
    if (v11 >= *(a1 + 8))
    {
      if (v12 >= v11 || (std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<float>::SegmentInternal *&,Phase::Envelope<float>::SegmentInternal *&>((a1 + 48), (a1 + 96)), *(v3 + 56) >= *(v3 + 8)))
      {
LABEL_36:
        v14 = v3 + 144;
        if (v3 + 144 != a2)
        {
          v15 = 0;
          v16 = 0;
          while (1)
          {
            if (*(v14 + 8) < *(v10 + 8))
            {
              *v23 = *v14;
              *&v23[8] = *(v14 + 8);
              v24 = *(v14 + 12);
              std::__function::__value_func<float ()(float)>::__value_func[abi:ne200100](v25, v14 + 16);
              v17 = v15;
              while (1)
              {
                v18 = v17;
                v19 = v3 + v17;
                *(v19 + 144) = *(v19 + 96);
                *(v19 + 148) = *(v19 + 100);
                *(v19 + 156) = *(v19 + 108);
                std::__function::__value_func<float ()(float)>::operator=[abi:ne200100](v19 + 160, v19 + 112);
                if (v18 == -96)
                {
                  break;
                }

                v17 = v18 - 48;
                if (*&v23[8] >= *(v3 + v18 + 56))
                {
                  v20 = v3 + v17 + 144;
                  goto LABEL_44;
                }
              }

              v20 = v3;
LABEL_44:
              *v20 = *v23;
              *(v20 + 4) = *&v23[4];
              *(v20 + 12) = v24;
              std::__function::__value_func<float ()(float)>::operator=[abi:ne200100](v3 + v18 + 112, v25);
              if (++v16 == 8)
              {
                v21 = v14 + 48 == a2;
                std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v25);
                return v21;
              }

              std::__function::__value_func<float ()(float)>::~__value_func[abi:ne200100](v25);
            }

            v10 = v14;
            v15 += 48;
            v14 += 48;
            if (v14 == a2)
            {
              return 1;
            }
          }
        }

        return 1;
      }

      v13 = (v3 + 48);
      a1 = v3;
    }

    else
    {
      if (v12 >= v11)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<float>::SegmentInternal *&,Phase::Envelope<float>::SegmentInternal *&>(a1, (a1 + 48));
        if (*(v3 + 104) >= *(v3 + 56))
        {
          goto LABEL_36;
        }

        a1 = v3 + 48;
      }

      v13 = (v3 + 96);
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<float>::SegmentInternal *&,Phase::Envelope<float>::SegmentInternal *&>(a1, v13);
    goto LABEL_36;
  }

  if (v4 != 3)
  {
    if (v4 == 4)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Envelope<float>::Envelope<std::__wrap_iter<Phase::Envelope<float>::Segment *>>(Phase::Vector<float,2ul> const&,std::__wrap_iter<Phase::Envelope<float>::Segment *>,std::__wrap_iter<Phase::Envelope<float>::Segment *>)::{lambda(Phase::Envelope<float>::SegmentInternal const&,Phase::Envelope<float>::SegmentInternal const&)#1} &,Phase::Envelope<float>::SegmentInternal*,0>(a1, a1 + 48, a1 + 96, a2 - 48);
      return 1;
    }

    if (v4 != 5)
    {
      goto LABEL_16;
    }

    std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Envelope<float>::Envelope<std::__wrap_iter<Phase::Envelope<float>::Segment *>>(Phase::Vector<float,2ul> const&,std::__wrap_iter<Phase::Envelope<float>::Segment *>,std::__wrap_iter<Phase::Envelope<float>::Segment *>)::{lambda(Phase::Envelope<float>::SegmentInternal const&,Phase::Envelope<float>::SegmentInternal const&)#1} &,Phase::Envelope<float>::SegmentInternal*,0>(a1, a1 + 48, a1 + 96, a1 + 144);
    if (*(a2 - 40) >= *(v3 + 152))
    {
      return 1;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<float>::SegmentInternal *&,Phase::Envelope<float>::SegmentInternal *&>((v3 + 144), (a2 - 48));
    if (*(v3 + 152) >= *(v3 + 104))
    {
      return 1;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<float>::SegmentInternal *&,Phase::Envelope<float>::SegmentInternal *&>((v3 + 96), (v3 + 144));
    if (*(v3 + 104) >= *(v3 + 56))
    {
      return 1;
    }

    v6 = (v3 + 48);
    v7 = (v3 + 96);
    goto LABEL_22;
  }

  v8 = *(a1 + 56);
  v9 = *(a2 - 40);
  if (v8 < *(a1 + 8))
  {
    if (v9 >= v8)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<float>::SegmentInternal *&,Phase::Envelope<float>::SegmentInternal *&>(a1, (a1 + 48));
      if (*(a2 - 40) >= *(v3 + 56))
      {
        return 1;
      }

      a1 = v3 + 48;
    }

    v5 = (a2 - 48);
    goto LABEL_31;
  }

  if (v9 < v8)
  {
    v6 = (a1 + 48);
    v7 = (a2 - 48);
LABEL_22:
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<float>::SegmentInternal *&,Phase::Envelope<float>::SegmentInternal *&>(v6, v7);
    if (*(v3 + 56) < *(v3 + 8))
    {
      v5 = (v3 + 48);
      goto LABEL_24;
    }
  }

  return 1;
}

void sub_23A378638(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void *Phase::Controller::RouterCommandBatch::Clear(void *this)
{
  v1 = this;
  v2 = *this;
  if (*this)
  {
    do
    {
      v3 = *(v2 + 40);
      std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::Controller::RouterCommandBatch,std::pair<Phase::Handle64,Phase::UniqueObjectId>,std::shared_ptr<Phase::Controller::Renderer>,Phase::UniqueObjectId,std::pair<Phase::UniqueObjectId,BOOL>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v2 + 8);
      this = MEMORY[0x23EE864A0](v2, 0x1022C409ACECA51);
      v2 = v3;
    }

    while (v3);
  }

  *v1 = 0;
  return this;
}

Phase::Controller::RouterCommandList *Phase::Controller::RouterCommandList::ExecuteCommands(atomic_ullong *this, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  result = Phase::Controller::RouterCommandList::SortCommandList(this, atomic_exchange(this + 4, 0), v7);
  if (*&v7[0])
  {
LABEL_8:
    std::terminate();
  }

  for (i = 1; i != 4; ++i)
  {
    v6 = this[i];
    if (!v6)
    {
      goto LABEL_8;
    }

    if (*(v7 + i * 8))
    {
      result = v6(a2);
    }
  }

  return result;
}

Phase::Controller::RouterCommandList *Phase::Controller::RouterCommandList::SortCommandList(Phase::Controller::RouterCommandList *this, Phase::Controller::RouterCommand *a2, Phase::Controller::RouterCommand **a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = this;
    do
    {
      v6 = *(v4 + 5);
      v7 = *v4;
      if (v7)
      {
        if (v7 > 3)
        {
          Phase::Controller::RouterCommand::~RouterCommand(v4);
          MEMORY[0x23EE864A0]();
          std::terminate();
        }

        *(v4 + 5) = a3[v7];
        a3[v7] = v4;
      }

      else
      {
        if (*(v4 + 8) != 1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        Phase::Controller::RouterCommandList::SortCommandList(v5, *(v4 + 1), a3);
        *(v4 + 1) = 0;
        std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::Controller::RouterCommandBatch,std::pair<Phase::Handle64,Phase::UniqueObjectId>,std::shared_ptr<Phase::Controller::Renderer>,Phase::UniqueObjectId,std::pair<Phase::UniqueObjectId,BOOL>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v4 + 8);
        this = MEMORY[0x23EE864A0](v4, 0x1022C409ACECA51);
      }

      v4 = v6;
    }

    while (v6);
  }

  return this;
}

uint64_t Phase::Controller::RouterCommandList::Clear(uint64_t this)
{
  v1 = atomic_exchange((this + 32), 0);
  if (v1)
  {
    do
    {
      v2 = *(v1 + 40);
      std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::Controller::RouterCommandBatch,std::pair<Phase::Handle64,Phase::UniqueObjectId>,std::shared_ptr<Phase::Controller::Renderer>,Phase::UniqueObjectId,std::pair<Phase::UniqueObjectId,BOOL>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v1 + 8);
      this = MEMORY[0x23EE864A0](v1, 0x1022C409ACECA51);
      v1 = v2;
    }

    while (v2);
  }

  return this;
}

void Phase::Controller::SpatialSubmixRouter::SpatialSubmixRouter(Phase::Controller::SpatialSubmixRouter *this, const Phase::Controller::SpatialModelerInfo *a2, Phase::Controller::RendererSystem *a3, Phase::Controller::RenderGroupMgr *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = *off_284D316A8;
  *this = xmmword_284D31698;
  *(this + 1) = v7;
  *(this + 2) = 0u;
  *(this + 6) = a2;
  *(this + 7) = this + 56;
  *(this + 8) = this + 56;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 13) = 0;
  *(this + 120) = 0u;
  v8 = this + 120;
  *(this + 28) = 1065353216;
  *(this + 136) = 0u;
  *(this + 38) = 1065353216;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 48) = 1065353216;
  *(this + 54) = 0;
  *(this + 200) = 0u;
  *(this + 220) = 0xFFFFFFFFLL;
  v9 = std::__shared_mutex_base::__shared_mutex_base((this + 232));
  *(this + 50) = a3;
  *(this + 51) = a4;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 28) = 0u;
  *(this + 29) = 0u;
  *(this + 60) = 0;
  v10 = *(*(this + 6) + 240);
  if (v10)
  {
    if (*(v10 + 8))
    {
      std::__hash_table<std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>>>::__rehash<true>(this + 80, vcvtps_u32_f32(128.0 / *(this + 28)));
      std::__hash_table<std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>>>::__rehash<true>(v8, vcvtps_u32_f32(128.0 / *(this + 38)));
      if (*(this + 54) - *(this + 52) <= 0xFFFuLL)
      {
        operator new();
      }

      std::vector<Phase::UniqueObjectId>::reserve(this + 55, 0x80uLL);
      if (*(this + 60) - *(this + 58) <= 0x3FFuLL)
      {
        operator new();
      }

      v18 = 0;
      operator new();
    }

    v14 = **(Phase::Logger::GetInstance(v9) + 240);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      Phase::Controller::SpatialModelerInfo::GetDescription(*(this + 6), __p);
      v15 = v17 >= 0 ? __p : __p[0];
      buf[0] = 136315650;
      *&buf[1] = "CvmSpatialSubmixRouter.mm";
      v20 = 1024;
      v21 = 288;
      v22 = 2080;
      v23 = v15;
      _os_log_impl(&dword_23A302000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [mpSpatialModelerInfo->mpRendererConfig->mRendererType == RendererType::None is true]: %s [SpatialSubmixRouter]: Couldn't find a valid RendererType!", buf, 0x1Cu);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "%s [SpatialSubmixRouter]: Couldn't find a valid RendererType!");
  }

  else
  {
    v11 = **(Phase::Logger::GetInstance(v9) + 240);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      Phase::Controller::SpatialModelerInfo::GetDescription(*(this + 6), __p);
      v12 = v17 >= 0 ? __p : __p[0];
      buf[0] = 136315650;
      *&buf[1] = "CvmSpatialSubmixRouter.mm";
      v20 = 1024;
      v21 = 283;
      v22 = 2080;
      v23 = v12;
      _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [mpSpatialModelerInfo->mpRendererConfig == nullptr is true]: %s [SpatialSubmixRouter]: Couldn't find a valid RendererConfig!", buf, 0x1Cu);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "%s [SpatialSubmixRouter]: Couldn't find a valid RendererConfig!");
  }

  exception->__vftable = (MEMORY[0x277D828F8] + 16);
}

void sub_23A378E18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  __cxa_free_exception(v17);
  v19 = v13[58];
  if (v19)
  {
    v13[59] = v19;
    operator delete(v19);
  }

  v20 = v13[55];
  if (v20)
  {
    v13[56] = v20;
    operator delete(v20);
  }

  v21 = v13[52];
  if (v21)
  {
    v13[53] = v21;
    operator delete(v21);
  }

  Phase::Controller::SubmixSlotMap<Phase::Controller::SpatialModelerInstance::SubmixInfo>::~SubmixSlotMap(v16);
  std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::~__hash_table(v15);
  std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::~__hash_table((v13 + 10));
  std::__list_imp<Phase::Controller::SpatialSubmixRouter::StoppingRenderer>::clear(v14);
  Phase::Controller::RouterCommandBatch::Clear(v13 + 5);
  Phase::Controller::RouterCommandList::Clear(v13);
  _Unwind_Resume(a1);
}

uint64_t Phase::Controller::SpatialSubmixRouter::ExecuteAddRenderer(uint64_t this, void *a2, Phase::Controller::RouterCommand *a3)
{
  if (!a2)
  {
    return this;
  }

  v3 = a2;
  v4 = this;
  do
  {
    v5 = v3;
    v3 = v3[5];
    if (*(v5 + 8) != 3)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v7 = v5[1];
    v6 = v5[2];
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v8 = 40;
    v9 = 0xCBF29CE484222325;
    do
    {
      v9 = 0x100000001B3 * (v9 ^ *(v7 + v8++));
    }

    while (v8 != 56);
    v10 = *(v4 + 88);
    if (!*&v10)
    {
      goto LABEL_28;
    }

    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    if (v11.u32[0] > 1uLL)
    {
      v12 = v9;
      if (v9 >= *&v10)
      {
        v12 = v9 % *&v10;
      }
    }

    else
    {
      v12 = (*&v10 - 1) & v9;
    }

    v13 = *(*(v4 + 80) + 8 * v12);
    if (!v13 || (v14 = *v13) == 0)
    {
LABEL_28:
      operator new();
    }

    while (1)
    {
      v15 = v14[1];
      if (v15 == v9)
      {
        break;
      }

      if (v11.u32[0] > 1uLL)
      {
        if (v15 >= *&v10)
        {
          v15 %= *&v10;
        }
      }

      else
      {
        v15 &= *&v10 - 1;
      }

      if (v15 != v12)
      {
        goto LABEL_28;
      }

LABEL_27:
      v14 = *v14;
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    if (v14[2] != *(v7 + 40) || v14[3] != *(v7 + 48))
    {
      goto LABEL_27;
    }

    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v17 = v14[5];
    v14[4] = v7;
    v14[5] = v6;
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::Controller::RouterCommandBatch,std::pair<Phase::Handle64,Phase::UniqueObjectId>,std::shared_ptr<Phase::Controller::Renderer>,Phase::UniqueObjectId,std::pair<Phase::UniqueObjectId,BOOL>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((v5 + 1));
    this = MEMORY[0x23EE864A0](v5, 0x1022C409ACECA51);
  }

  while (v3);
  return this;
}

uint64_t Phase::Controller::SpatialSubmixRouter::ExecuteRemoveRenderer(uint64_t this, char *a2, Phase::Controller::RouterCommand *a3)
{
  if (a2)
  {
    v3 = a2;
    v4 = this;
    do
    {
      v5 = *(v3 + 5);
      if (*(v3 + 8) != 4)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v6 = *(v3 + 8);
      std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::Controller::Renderer>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::Controller::Renderer>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::Controller::Renderer>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::Controller::Renderer>>>>::__erase_unique<Phase::UniqueObjectId>((v4 + 80), &v6);
      std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::Controller::RouterCommandBatch,std::pair<Phase::Handle64,Phase::UniqueObjectId>,std::shared_ptr<Phase::Controller::Renderer>,Phase::UniqueObjectId,std::pair<Phase::UniqueObjectId,BOOL>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((v3 + 8));
      this = MEMORY[0x23EE864A0](v3, 0x1022C409ACECA51);
      v3 = v5;
    }

    while (v5);
  }

  return this;
}

uint64_t Phase::Controller::SpatialSubmixRouter::ExecuteNotifyCulled(uint64_t this, void *a2, Phase::Controller::RouterCommand *a3)
{
  if (a2)
  {
    v3 = a2;
    v4 = this;
    do
    {
      v5 = v3[5];
      if (*(v3 + 8) != 5)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v6 = *(v3 + 24);
      *(Phase::Controller::SubmixSlotMap<Phase::Controller::SpatialSubmixRouter::SubmixParams>::MutableAt((v4 + 160), v3[1], v3[2]) + 120) = v6 & 1;
      std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::Controller::RouterCommandBatch,std::pair<Phase::Handle64,Phase::UniqueObjectId>,std::shared_ptr<Phase::Controller::Renderer>,Phase::UniqueObjectId,std::pair<Phase::UniqueObjectId,BOOL>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((v3 + 1));
      this = MEMORY[0x23EE864A0](v3, 0x1022C409ACECA51);
      v3 = v5;
    }

    while (v5);
  }

  return this;
}

void *std::vector<Phase::UniqueObjectId>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::UniqueObjectId>>(result, a2);
    }

    std::vector<Phase::MetaParamValue>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

std::__shared_weak_count *Phase::Controller::SpatialSubmixRouter::OnRendererChanged(atomic_ullong *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7[0] = a2;
  v7[1] = a3;
  Phase::Controller::RouterCommandList::ExecuteCommands(a1, a1);
  result = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>(a1 + 10, v7);
  if (result)
  {
    return std::unordered_map<Phase::UniqueObjectId,std::shared_ptr<Phase::Controller::Renderer>>::insert_or_assign[abi:ne200100]<std::shared_ptr<Phase::Controller::Renderer>&>(a1 + 15, v7, a4);
  }

  return result;
}

void Phase::Controller::SpatialSubmixRouter::~SpatialSubmixRouter(Phase::Controller::SpatialSubmixRouter *this)
{
  Phase::Controller::SpatialSubmixRouter::Reset(this);
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
    *(this + 53) = v4;
    operator delete(v4);
  }

  std::condition_variable::~condition_variable((this + 344));
  std::condition_variable::~condition_variable((this + 296));
  std::mutex::~mutex((this + 232));
  v5 = *(this + 26);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(this + 160);
  std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::~__hash_table(this + 120);
  std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::~__hash_table(this + 80);
  std::__list_imp<Phase::Controller::SpatialSubmixRouter::StoppingRenderer>::clear(this + 7);
  Phase::Controller::RouterCommandBatch::Clear(this + 5);
  Phase::Controller::RouterCommandList::Clear(this);
}

void *Phase::Controller::SpatialSubmixRouter::Reset(Phase::Controller::SpatialSubmixRouter *this)
{
  Phase::Controller::SubmixSlotMap<Phase::Controller::SpatialModelerInstance::SubmixInfo>::Clear(this + 160);
  std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::Controller::Renderer>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::Controller::Renderer>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::Controller::Renderer>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::Controller::Renderer>>>>::clear(this + 80);
  std::__list_imp<Phase::Controller::SpatialSubmixRouter::StoppingRenderer>::clear(this + 7);
  Phase::Controller::RouterCommandList::Clear(this);

  return Phase::Controller::RouterCommandBatch::Clear(this + 5);
}

Phase::Logger *Phase::Controller::SpatialSubmixRouter::CopyRuntimeSettingsFrom(Phase::Logger *this, const Phase::Controller::SpatialSubmixRouter *a2)
{
  v3 = *(this + 25);
  v4 = *(this + 54);
  v5 = &v3[3 * v4];
  if (v4)
  {
    v6 = *v3;
    if (!*v3)
    {
      v7 = v3 + 3;
      while (1)
      {
        v3 = v7;
        if (v7 >= v5)
        {
          break;
        }

        v7 += 3;
        v6 = *v3;
        if (*v3)
        {
          goto LABEL_9;
        }
      }

      v6 = 0;
    }

LABEL_9:
    v8 = v5;
  }

  else
  {
    v6 = 0;
    v8 = *(this + 25);
  }

LABEL_16:
  while (v3 != v5)
  {
    this = Phase::Controller::SubmixSlotMap<Phase::Controller::SpatialSubmixRouter::SubmixParams>::At(a2 + 160, *v6, *(v6 + 8));
    *(v6 + 48) = *(this + 3);
    if (v3 < v8)
    {
      v9 = v3 + 3;
      while (1)
      {
        v3 = v9;
        if (v9 >= v8)
        {
          break;
        }

        v9 += 3;
        v6 = *v3;
        if (*v3)
        {
          goto LABEL_16;
        }
      }

      v6 = 0;
    }
  }

  return this;
}

Phase::Logger *Phase::Controller::SubmixSlotMap<Phase::Controller::SpatialSubmixRouter::SubmixParams>::At(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  *v10 = a2;
  *&v10[8] = a3;
  result = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>>>::find<Phase::UniqueObjectId>(a1, v10);
  if (result)
  {
    v6 = *(result + 4);
  }

  else
  {
    v6 = 0;
  }

  if (*(a1 + 56) <= v6 || (v7 = *(a1 + 40) + 24 * v6, *(v7 + 20) != HIDWORD(v6)) || (result = *v7) == 0)
  {
    v8 = **(Phase::Logger::GetInstance(result) + 240);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 136315906;
      *&v10[4] = "CvmSubmixSlotMapImpl.hpp";
      *&v10[12] = 1024;
      *&v10[14] = 134;
      v11 = 2048;
      v12 = v6;
      v13 = 2048;
      v14 = a2;
      _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (InvalidId) [nullptr == pObject is true]: SubmixSlotMap::At couldn't find SubmixHandle %llu for SubmixId %llu", v10, 0x26u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    _ZN5Phase10Controller9InvalidIdCI1St11logic_errorEPKc(exception, "SubmixSlotMap::At couldn't find SubmixHandle %llu for SubmixId %llu");
  }

  return result;
}

uint64_t Phase::Controller::SpatialSubmixRouter::AddInput(uint64_t a1, unint64_t a2, unint64_t a3, double a4)
{
  v75 = *MEMORY[0x277D85DE8];
  *buf = a2;
  *&buf[8] = a3;
  v8 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>>>::find<Phase::UniqueObjectId>((a1 + 160), buf);
  if (v8)
  {
    v40 = **(Phase::Logger::GetInstance(v8) + 240);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      Phase::Controller::SpatialModelerInfo::GetDescription(*(a1 + 48), __p);
      v41 = v67 >= 0 ? __p : __p[0];
      *buf = 136315906;
      *&buf[4] = "CvmSpatialSubmixRouter.mm";
      *&buf[12] = 1024;
      *&buf[14] = 337;
      v71 = 2080;
      *v72 = v41;
      *&v72[8] = 2048;
      *&v72[10] = a2;
      _os_log_impl(&dword_23A302000, v40, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (IdAlreadyExists) [HasSubmix(inSubmixId) is true]: %s [SpatialSubmixRouter]: inSubmixId %llu already exists!", buf, 0x26u);
      if (v67 < 0)
      {
        operator delete(__p[0]);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    _ZN5Phase10Controller15IdAlreadyExistsCI1St11logic_errorEPKc(exception, "%s [SpatialSubmixRouter]: inSubmixId %llu already exists!");
  }

  *&v56 = a2;
  *(&v56 + 1) = a3;
  *&v57 = 0;
  DWORD2(v57) = 2;
  *&v58 = a4;
  v59 = 0uLL;
  *(&v58 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  v9 = Phase::Fader<double>::Fader(&v61, 0.0);
  v65 = 0;
  __p[0] = a2;
  __p[1] = a3;
  if (!(a2 | a3))
  {
    v43 = **(Phase::Logger::GetInstance(v9) + 240);
    v44 = v43;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "CvmSubmixSlotMapImpl.hpp";
      *&buf[12] = 1024;
      *&buf[14] = 60;
      _os_log_impl(&dword_23A302000, v43, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [kInvalidSubmixId == inSubmixId is true]: Invalid SubmixId pass to SubmixSlotMap::Insert", buf, 0x12u);
    }

    v45 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v45, "Invalid SubmixId pass to SubmixSlotMap::Insert");
    goto LABEL_67;
  }

  *buf = a2;
  *&buf[8] = a3;
  v10 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>>>::find<Phase::UniqueObjectId>((a1 + 160), buf);
  if (v10)
  {
    v46 = **(Phase::Logger::GetInstance(v10) + 240);
    v47 = v46;
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "CvmSubmixSlotMapImpl.hpp";
      *&buf[12] = 1024;
      *&buf[14] = 63;
      v71 = 2048;
      *v72 = a2;
      _os_log_impl(&dword_23A302000, v46, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [true == Contains(inSubmixId) is true]: SubmixId %llu already exists in SubmixSlotMap::Insert", buf, 0x1Cu);
    }

    v45 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v45, "SubmixId %llu already exists in SubmixSlotMap::Insert");
LABEL_67:
    v48 = MEMORY[0x277D82610];
    v50 = (MEMORY[0x277D828F8] + 16);
    goto LABEL_75;
  }

  v11 = atomic_load((a1 + 220));
  if (v11 == -1)
  {
    goto LABEL_10;
  }

  *buf = a1 + 232;
  buf[8] = 1;
  std::__shared_mutex_base::lock_shared((a1 + 232));
  for (i = v11; i != -1; v11 = i)
  {
    v13 = *(a1 + 200) + 24 * v11;
    atomic_compare_exchange_strong((a1 + 220), &i, *(v13 + 16));
    if (i == v11)
    {
      v14 = Phase::Handle64::Set(&v69, v11, *(v13 + 20));
      if (buf[8] == 1)
      {
        std::__shared_mutex_base::unlock_shared(*buf);
      }

      v68 = v69;
      if (v69)
      {
        goto LABEL_14;
      }

      v53 = **(Phase::Logger::GetInstance(v14) + 240);
      v54 = v53;
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "CvmSubmixSlotMapImpl.hpp";
        *&buf[12] = 1024;
        *&buf[14] = 68;
        v71 = 2048;
        *v72 = a2;
        _os_log_impl(&dword_23A302000, v53, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (InvalidId) [SubmixHandle::kInvalidHandle == submixHandle is true]: SubmixSlotMap::Insert unable to allocate new handle SubmixId %llu", buf, 0x1Cu);
      }

      v45 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v45, "SubmixSlotMap::Insert unable to allocate new handle SubmixId %llu");
      goto LABEL_74;
    }
  }

  if (buf[8] == 1)
  {
    std::__shared_mutex_base::unlock_shared(*buf);
  }

LABEL_10:
  v68 = atomic_fetch_add((a1 + 224), 1u) | 0x100000000;
LABEL_14:
  v15 = atomic_load((a1 + 224));
  v16 = *(a1 + 216);
  if (v16 < v15)
  {
    v17 = v15 >= 0x40 ? v15 + (v15 >> 1) : 64;
    if (v17 > v16)
    {
      Phase::details::SharedSlotMap<Phase::Controller::SpatialSubmixRouter::SubmixParams,Phase::Handle64>::AllocSlots(buf, v17);
      v18 = *buf;
      if (v16)
      {
        v55 = *buf;
        v19 = 0;
        v20 = *buf + 8;
        v21 = v16;
        do
        {
          v22 = *(a1 + 200);
          v24 = *(v22 + v19);
          v23 = *(v22 + v19 + 8);
          if (v23)
          {
            atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
          }

          v25 = *v20;
          *(v20 - 8) = v24;
          *v20 = v23;
          if (v25)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v25);
          }

          *(v20 + 8) = *(v22 + v19 + 16);
          v20 += 24;
          v19 += 24;
          --v21;
        }

        while (v21);
        v26 = v16;
        v18 = v55;
      }

      else
      {
        v26 = 0;
      }

      v27 = v17 - v16;
      v28 = (v18 + 24 * v26 + 16);
      do
      {
        v29 = *(v28 - 1);
        *(v28 - 2) = 0;
        *(v28 - 1) = 0;
        if (v29)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v29);
        }

        *v28 = 0x1FFFFFFFFLL;
        v28 += 3;
        --v27;
      }

      while (v27);
      std::__shared_mutex_base::lock((a1 + 232));
      v30 = *(a1 + 208);
      v31 = *&buf[8];
      *(a1 + 200) = v18;
      *(a1 + 208) = v31;
      std::__shared_mutex_base::unlock((a1 + 232));
      *(a1 + 216) = v17;
      if (v30)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v30);
      }
    }
  }

  v32 = v68;
  if (Phase::details::SharedSlotMap<Phase::Controller::SpatialSubmixRouter::SubmixParams,Phase::Handle64>::GetUniqueSlot((a1 + 200), v68))
  {
    operator new();
  }

  if (!v32)
  {
    v51 = **(Phase::Logger::GetInstance(0) + 240);
    v52 = v51;
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "CvmSubmixSlotMapImpl.hpp";
      *&buf[12] = 1024;
      *&buf[14] = 76;
      v71 = 2048;
      *v72 = 0;
      *&v72[8] = 2048;
      *&v72[10] = __p[0];
      _os_log_impl(&dword_23A302000, v51, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (InvalidId) [SubmixHandle::kInvalidHandle == submixHandle is true]: SubmixSlotMap::Insert couldn't find SubmixHandle %llu for SubmixId %llu", buf, 0x26u);
    }

    v45 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v45, "SubmixSlotMap::Insert couldn't find SubmixHandle %llu for SubmixId %llu");
LABEL_74:
    v48 = Phase::Controller::InvalidId::~InvalidId;
    v50 = &unk_284D30220;
LABEL_75:
    v45->__vftable = v50;
    __cxa_throw(v45, v49, v48);
  }

  MEMORY[0x10] = v57;
  MEMORY[0x20] = v58;
  MEMORY[0] = v56;
  MEMORY[0x30] = v59;
  MEMORY[0x40] = v60;
  if (&v56)
  {
    std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__assign_with_size[abi:ne200100]<Phase::Envelope<double>::SegmentInternal*,Phase::Envelope<double>::SegmentInternal*>(72, v61, v62, (v62 - v61) >> 6);
  }

  MEMORY[0x70] = v64;
  MEMORY[0x60] = v63;
  MEMORY[0x78] = v65;
  std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,Phase::Handle64>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,Phase::Handle64>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,Phase::Handle64>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,Phase::Handle64>>>::__emplace_unique_key_args<Phase::UniqueObjectId,Phase::UniqueObjectId&,Phase::Handle64&>((a1 + 160), __p);
  v33 = v68;
  *buf = &v61;
  std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](buf);
  MEMORY[0x10] = v33;
  MEMORY[0x40] = 0x3FF0000000000000;
  *buf = &unk_284D2F458;
  *&buf[8] = Phase::CurveFunction::Linear<double>;
  *&v72[4] = buf;
  Phase::Fader<double>::SetInternal(72, buf, 1.0, 0.0);
  v34 = std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](buf);
  if (*(a1 + 216) <= v33 || (v35 = *(a1 + 200) + 24 * v33, *(v35 + 20) != HIDWORD(v33)) || (v36 = *v35) == 0 || a2 != *v36 || a3 != *(v36 + 8) || *(v36 + 24) != 2 || *(v36 + 32) != a4)
  {
    std::terminate();
  }

  v37 = **(Phase::Logger::GetInstance(v34) + 240);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    Phase::Controller::SpatialModelerInfo::GetDescription(*(a1 + 48), __p);
    if (v67 >= 0)
    {
      v38 = __p;
    }

    else
    {
      v38 = __p[0];
    }

    *buf = 136316162;
    *&buf[4] = "CvmSpatialSubmixRouter.mm";
    *&buf[12] = 1024;
    *&buf[14] = 354;
    v71 = 2080;
    *v72 = v38;
    *&v72[8] = 2048;
    *&v72[10] = a2;
    v73 = 2048;
    v74 = a4;
    _os_log_impl(&dword_23A302000, v37, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s [SpatialSubmixRouter]: Added submixId %llu, send level %f", buf, 0x30u);
    if (v67 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v33;
}

void sub_23A37A100(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  __cxa_free_exception(v30);
  std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&a30);
  _Unwind_Resume(a1);
}

void Phase::Controller::SpatialSubmixRouter::RemoveInput(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  *buf = a2;
  *&buf[8] = a3;
  if (!std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>>>::find<Phase::UniqueObjectId>((a1 + 160), buf))
  {
    v19 = **(Phase::Logger::GetInstance(0) + 240);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      Phase::Controller::SpatialModelerInfo::GetDescription(*(a1 + 48), __p);
      v20 = v26 >= 0 ? __p : __p[0];
      *buf = 136315906;
      *&buf[4] = "CvmSpatialSubmixRouter.mm";
      *&buf[12] = 1024;
      *&buf[14] = 381;
      v28 = 2080;
      v29 = v20;
      v30 = 2048;
      v31 = a2;
      _os_log_impl(&dword_23A302000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (InvalidId) [not HasSubmix(inSubmixId) is true]: %s [SpatialSubmixRouter]: Non-existent submixId %llu", buf, 0x26u);
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    _ZN5Phase10Controller9InvalidIdCI1St11logic_errorEPKc(exception, "%s [SpatialSubmixRouter]: Non-existent submixId %llu");
  }

  Phase::Controller::SpatialSubmixRouter::SetPlayState(a1, a2, a3, 0);
  __p[0] = a2;
  __p[1] = a3;
  v6 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>((a1 + 160), __p);
  v7 = v6;
  if (!v6)
  {
    v22 = **(Phase::Logger::GetInstance(0) + 240);
    v23 = v22;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "CvmSubmixSlotMapImpl.hpp";
      *&buf[12] = 1024;
      *&buf[14] = 91;
      v28 = 2048;
      v29 = __p[0];
      _os_log_impl(&dword_23A302000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (InvalidId) [iter == mSubmixHandleMap.end() is true]: SubmixSlotMap::Erase couldn't find SubmixId %llu", buf, 0x1Cu);
    }

    v24 = __cxa_allocate_exception(0x10uLL);
    _ZN5Phase10Controller9InvalidIdCI1St11logic_errorEPKc(v24, "SubmixSlotMap::Erase couldn't find SubmixId %llu");
  }

  v8 = v6[4];
  UniqueSlot = Phase::details::SharedSlotMap<Phase::Controller::SpatialSubmixRouter::SubmixParams,Phase::Handle64>::GetUniqueSlot((a1 + 200), v8);
  v10 = UniqueSlot;
  if (UniqueSlot)
  {
    ++*(UniqueSlot + 20);
    v11 = *(UniqueSlot + 8);
    *v10 = 0;
    *(v10 + 8) = 0;
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    v12 = atomic_load((a1 + 220));
    *(v10 + 16) = v12;
    v13 = v12;
    atomic_compare_exchange_strong((a1 + 220), &v13, v8);
    if (v13 != v12)
    {
      v14 = v13;
      do
      {
        *(v10 + 16) = v13;
        atomic_compare_exchange_strong((a1 + 220), &v14, v8);
        v15 = v14 == v13;
        v13 = v14;
      }

      while (!v15);
    }
  }

  v16 = std::__hash_table<Phase::Controller::Renderer *,std::hash<Phase::Controller::Renderer *>,std::equal_to<Phase::Controller::Renderer *>,std::allocator<Phase::Controller::Renderer *>>::erase((a1 + 160), v7);
  v17 = **(Phase::Logger::GetInstance(v16) + 240);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    Phase::Controller::SpatialModelerInfo::GetDescription(*(a1 + 48), __p);
    if (v26 >= 0)
    {
      v18 = __p;
    }

    else
    {
      v18 = __p[0];
    }

    *buf = 136315906;
    *&buf[4] = "CvmSpatialSubmixRouter.mm";
    *&buf[12] = 1024;
    *&buf[14] = 390;
    v28 = 2080;
    v29 = v18;
    v30 = 2048;
    v31 = a2;
    _os_log_impl(&dword_23A302000, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s [SpatialSubmixRouter]: Removed submixId %llu", buf, 0x26u);
    if (v26 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void Phase::Controller::SpatialSubmixRouter::SetPlayState(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v38 = *MEMORY[0x277D85DE8];
  *buf = a2;
  *&buf[8] = a3;
  v7 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>>>::find<Phase::UniqueObjectId>((a1 + 160), buf);
  if (!v7 || (v8 = *(v7 + 4)) == 0)
  {
    v23 = **(Phase::Logger::GetInstance(v7) + 240);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      Phase::Controller::SpatialModelerInfo::GetDescription(*(a1 + 48), __p);
      v24 = v30 >= 0 ? __p : __p[0];
      *buf = 136315906;
      *&buf[4] = "CvmSpatialSubmixRouter.mm";
      *&buf[12] = 1024;
      *&buf[14] = 534;
      v34 = 2080;
      v35 = v24;
      v36 = 2048;
      v37 = a2;
      _os_log_impl(&dword_23A302000, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (InvalidId) [SubmixHandle::kInvalidHandle == submixHandle is true]: %s [SpatialSubmixRouter]: Non-existent submixId %llu!", buf, 0x26u);
      if (v30 < 0)
      {
        operator delete(__p[0]);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    _ZN5Phase10Controller9InvalidIdCI1St11logic_errorEPKc(exception, "%s [SpatialSubmixRouter]: Non-existent submixId %llu!");
  }

  if (a4 || !Phase::Controller::SpatialSubmixRouter::IsStopped(a1, v8))
  {
    v9 = Phase::Controller::RouterCommandList::ExecuteCommands(a1, a1);
    if (*(a1 + 216) <= v8 || (v9 = (a1 + 200), v10 = *(a1 + 200) + 24 * v8, *(v10 + 20) != HIDWORD(v8)) || (v11 = *v10) == 0)
    {
      v20 = **(Phase::Logger::GetInstance(v9) + 240);
      v21 = v20;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "CvmSubmixSlotMapImpl.hpp";
        *&buf[12] = 1024;
        *&buf[14] = 145;
        v34 = 2048;
        v35 = v8;
        _os_log_impl(&dword_23A302000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (InvalidId) [nullptr == pObject is true]: SubmixSlotMap::At couldn't find SubmixHandle %llu", buf, 0x1Cu);
      }

      v22 = __cxa_allocate_exception(0x10uLL);
      _ZN5Phase10Controller9InvalidIdCI1St11logic_errorEPKc(v22, "SubmixSlotMap::At couldn't find SubmixHandle %llu");
    }

    if (*(v11 + 6) != a4)
    {
      UniqueES5_EUlRT_E_EEPNS_18SharedSlotMapStateIS4_S5_E4SlotES5_OSA = _ZN5Phase7details13SharedSlotMapINS_10Controller19SpatialSubmixRouter12SubmixParamsENS_8Handle64EE13GetSlotToEditIRZNS_13SharedSlotMapIS4_S5_DnE9GetUniqueES5_EUlRT_E_EEPNS_18SharedSlotMapStateIS4_S5_E4SlotES5_OSA_(v9, v8);
      if (!UniqueES5_EUlRT_E_EEPNS_18SharedSlotMapStateIS4_S5_E4SlotES5_OSA || (v13 = *UniqueES5_EUlRT_E_EEPNS_18SharedSlotMapStateIS4_S5_E4SlotES5_OSA) == 0)
      {
        v26 = **(Phase::Logger::GetInstance(UniqueES5_EUlRT_E_EEPNS_18SharedSlotMapStateIS4_S5_E4SlotES5_OSA) + 240);
        v27 = v26;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "CvmSubmixSlotMapImpl.hpp";
          *&buf[12] = 1024;
          *&buf[14] = 182;
          v34 = 2048;
          v35 = v8;
          _os_log_impl(&dword_23A302000, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (InvalidId) [nullptr == pObject is true]: SubmixSlotMap::MutableAt couldn't find SubmixHandle %llu", buf, 0x1Cu);
        }

        v28 = __cxa_allocate_exception(0x10uLL);
        _ZN5Phase10Controller9InvalidIdCI1St11logic_errorEPKc(v28, "SubmixSlotMap::MutableAt couldn't find SubmixHandle %llu");
      }

      if (!a4)
      {
        v14 = *(a1 + 408);
        *buf = *v11;
        v15 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>>>::find<Phase::UniqueObjectId>((v14 + 216), buf);
        if (v15)
        {
          v16 = v15[2];
        }

        else
        {
          v16.mStorage[0] = 0;
          v16.mStorage[1] = 0;
        }

        if (v16.mStorage[0] | v16.mStorage[1])
        {
          Phase::Controller::RenderGroupMgr::GetRenderer(*(a1 + 408), v16, &v31);
          if (v31)
          {
            (*(*v31 + 40))(v31, *v11, v11[1]);
          }

          else
          {
            v17 = **(Phase::Logger::GetInstance(0) + 240);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              Phase::Controller::SpatialModelerInfo::GetDescription(*(a1 + 48), __p);
              if (v30 >= 0)
              {
                v18 = __p;
              }

              else
              {
                v18 = __p[0];
              }

              v19 = *v11;
              *buf = 136315906;
              *&buf[4] = "CvmSpatialSubmixRouter.mm";
              *&buf[12] = 1024;
              *&buf[14] = 573;
              v34 = 2080;
              v35 = v18;
              v36 = 2048;
              v37 = v19;
              _os_log_impl(&dword_23A302000, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s [SpatialSubmixRouter]: submixId %llu: renderer was not available when requested for SetPlayState.", buf, 0x26u);
              if (v30 < 0)
              {
                operator delete(__p[0]);
              }
            }
          }

          if (v32)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v32);
          }
        }
      }

      *(v13 + 24) = a4;
    }
  }
}

void sub_23A37AA40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

Phase::Logger *Phase::Controller::SpatialSubmixRouter::SetInputSendLevel(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  result = Phase::Controller::SubmixSlotMap<Phase::Controller::SpatialSubmixRouter::SubmixParams>::MutableAt((a1 + 160), a2, a3);
  v6 = a4 > 1.0 || a4 < 0.0;
  v7 = fmin(fmax(a4, 0.0), 1.0);
  if (!v6)
  {
    v7 = a4;
  }

  *(result + 4) = v7;
  return result;
}

Phase::Logger *Phase::Controller::SubmixSlotMap<Phase::Controller::SpatialSubmixRouter::SubmixParams>::MutableAt(void *a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  *v10 = a2;
  *&v10[8] = a3;
  v5 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>>>::find<Phase::UniqueObjectId>(a1, v10);
  if (v5)
  {
    v6 = v5[4];
  }

  else
  {
    v6 = 0;
  }

  result = _ZN5Phase7details13SharedSlotMapINS_10Controller19SpatialSubmixRouter12SubmixParamsENS_8Handle64EE13GetSlotToEditIRZNS_13SharedSlotMapIS4_S5_DnE9GetUniqueES5_EUlRT_E_EEPNS_18SharedSlotMapStateIS4_S5_E4SlotES5_OSA_(a1 + 5, v6);
  if (!result || (result = *result) == 0)
  {
    v8 = **(Phase::Logger::GetInstance(result) + 240);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 136315906;
      *&v10[4] = "CvmSubmixSlotMapImpl.hpp";
      *&v10[12] = 1024;
      *&v10[14] = 171;
      v11 = 2048;
      v12 = v6;
      v13 = 2048;
      v14 = a2;
      _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (InvalidId) [nullptr == pObject is true]: SubmixSlotMap::MutableAt couldn't find SubmixHandle %llu for SubmixId %llu", v10, 0x26u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    _ZN5Phase10Controller9InvalidIdCI1St11logic_errorEPKc(exception, "SubmixSlotMap::MutableAt couldn't find SubmixHandle %llu for SubmixId %llu");
  }

  return result;
}

uint64_t Phase::Controller::SpatialSubmixRouter::IsPrepared(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = *MEMORY[0x277D85DE8];
  Phase::Controller::RenderGroupMgr::LoadFreshData(*(a1 + 408));
  Phase::Controller::RouterCommandList::ExecuteCommands(a1, a1);
  v6 = Phase::Controller::SubmixSlotMap<Phase::Controller::SpatialSubmixRouter::SubmixParams>::At(a1 + 160, a2, a3);
  v7 = *v6;
  v8 = *(v6 + 1);
  v9 = *(v6 + 3);
  v24 = *(v6 + 2);
  v25 = v9;
  v22 = v7;
  v23 = v8;
  v26 = *(v6 + 8);
  memset(v27, 0, sizeof(v27));
  std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__init_with_size[abi:ne200100]<Phase::Envelope<double>::SegmentInternal*,Phase::Envelope<double>::SegmentInternal*>(v27, *(v6 + 9), *(v6 + 10), (*(v6 + 10) - *(v6 + 9)) >> 6);
  v10 = *(v6 + 6);
  v29 = *(v6 + 14);
  v28 = v10;
  v30 = *(v6 + 120);
  if (v30)
  {
    v11 = 1;
  }

  else
  {
    v12 = *(a1 + 408);
    *buf = a2;
    *&buf[8] = a3;
    v13 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>>>::find<Phase::UniqueObjectId>((v12 + 216), buf);
    if (v13)
    {
      v14 = v13[2];
    }

    else
    {
      v14.mStorage[0] = 0;
      v14.mStorage[1] = 0;
    }

    if (v14.mStorage[0] | v14.mStorage[1])
    {
      Phase::Controller::RenderGroupMgr::GetRenderer(*(a1 + 408), v14, &v20);
      if (v20)
      {
        v11 = (*(*v20 + 88))(v20);
      }

      else
      {
        v15 = **(Phase::Logger::GetInstance(0) + 240);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          Phase::Controller::SpatialModelerInfo::GetDescription(*(a1 + 48), __p);
          v16 = v19 >= 0 ? __p : __p[0];
          *buf = 136315906;
          *&buf[4] = "CvmSpatialSubmixRouter.mm";
          *&buf[12] = 1024;
          *&buf[14] = 476;
          v32 = 2080;
          v33 = v16;
          v34 = 2048;
          v35 = a2;
          _os_log_impl(&dword_23A302000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s [SpatialSubmixRouter]: submixId %llu: renderer was not available when requested for isPrepared", buf, 0x26u);
          if (v19 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v11 = 0;
      }

      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }
    }

    else
    {
      v11 = 0;
    }
  }

  *buf = v27;
  std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](buf);
  return v11;
}

void sub_23A37AFB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

BOOL Phase::Controller::SpatialSubmixRouter::IsStopped(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[0] = a2;
  v7[1] = a3;
  v4 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>>>::find<Phase::UniqueObjectId>((a1 + 160), v7);
  if (v4)
  {
    v5 = v4[4];
  }

  else
  {
    v5 = 0;
  }

  return Phase::Controller::SpatialSubmixRouter::IsStopped(a1, v5);
}

BOOL Phase::Controller::SpatialSubmixRouter::IsStopped(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*(a1 + 216) <= a2)
  {
    return 1;
  }

  v3 = *(a1 + 200) + 24 * a2;
  if (*(v3 + 20) != HIDWORD(a2))
  {
    return 1;
  }

  v4 = *v3;
  if (!*v3)
  {
    return 1;
  }

  Phase::Controller::RouterCommandList::ExecuteCommands(a1, a1);
  v5 = *(a1 + 408);
  *buf = *v4;
  v6 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>>>::find<Phase::UniqueObjectId>((v5 + 216), buf);
  if (v6)
  {
    v7 = v6[2];
  }

  else
  {
    v7.mStorage[0] = 0;
    v7.mStorage[1] = 0;
  }

  if (!(v7.mStorage[0] | v7.mStorage[1]))
  {
    return *(v4 + 6) == 0;
  }

  Phase::Controller::RenderGroupMgr::GetRenderer(*(a1 + 408), v7, &v15);
  if (v15)
  {
    v8 = (*(*v15 + 96))(v15);
  }

  else
  {
    v10 = **(Phase::Logger::GetInstance(0) + 240);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      Phase::Controller::SpatialModelerInfo::GetDescription(*(a1 + 48), __p);
      v11 = v14 >= 0 ? __p : __p[0];
      v12 = *v4;
      *buf = 136315906;
      *&buf[4] = "CvmSpatialSubmixRouter.mm";
      *&buf[12] = 1024;
      *&buf[14] = 518;
      v18 = 2080;
      v19 = v11;
      v20 = 2048;
      v21 = v12;
      _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s [SpatialSubmixRouter]: submixId %llu: renderer was not available when requested for IsStopped", buf, 0x26u);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v8 = 0;
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  return v8;
}

void sub_23A37B244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

uint64_t Phase::Controller::SpatialSubmixRouter::GetPlayState(Phase::Controller::SpatialSubmixRouter *this, UniqueObjectId a2)
{
  v7 = a2;
  v3 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>>>::find<Phase::UniqueObjectId>(this + 20, &v7);
  if (v3)
  {
    v4 = v3[4];
  }

  else
  {
    v4 = 0;
  }

  if (*(this + 54) > v4 && (v5 = (*(this + 25) + 24 * v4), v5[5] == HIDWORD(v4)) && *v5)
  {
    return *(*v5 + 24);
  }

  else
  {
    return 0;
  }
}

void Phase::Controller::SpatialSubmixRouter::Update(Phase::Controller::SpatialSubmixRouter *this, double a2)
{
  v145 = *MEMORY[0x277D85DE8];
  Phase::Controller::RenderGroupMgr::LoadFreshData(*(this + 51));
  Phase::Controller::RouterCommandList::ExecuteCommands(this, this);
  for (i = *(this + 17); i; i = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::erase(this + 15, i))
  {
    v5 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>(this + 10, i + 2);
    if (v5)
    {
      v6 = v5;
      v7 = **(Phase::Logger::GetInstance(v5) + 240);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        Phase::Controller::SpatialModelerInfo::GetDescription(*(this + 6), __p);
        v8 = v139 >= 0 ? __p : __p[0];
        v9 = i[2];
        *buf = 136315906;
        *&buf[4] = "CvmSpatialSubmixRouter.mm";
        *&buf[12] = 1024;
        *&buf[14] = 628;
        v141 = 2080;
        *v142 = v8;
        *&v142[8] = 2048;
        *&v142[10] = v9;
        _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s [SpatialSubmixRouter]: OnRendererChanged Delting renderer %llu", buf, 0x26u);
        if (v139 < 0)
        {
          operator delete(__p[0]);
        }
      }

      std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::erase(this + 10, v6);
    }

    v10 = *(this + 51);
    v11 = i[2];
    v12 = i[3];
    v13 = i[5];
    v137[0] = i[4];
    v137[1] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    updated = Phase::Controller::RenderGroupMgr::UpdateRenderer(v10, v11, v12, v137);
    if (v13)
    {
      std::__shared_weak_count::__release_weak(v13);
    }

    if (!updated)
    {
      continue;
    }

    v15 = std::unordered_map<Phase::UniqueObjectId,std::shared_ptr<Phase::Controller::Renderer>>::insert_or_assign[abi:ne200100]<std::shared_ptr<Phase::Controller::Renderer>&>(this + 10, (i[4] + 40), i + 4);
    v16 = v15;
    v17 = **(Phase::Logger::GetInstance(v15) + 240);
    v18 = v17;
    if (v16)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        Phase::Controller::SpatialModelerInfo::GetDescription(*(this + 6), __p);
        if (v139 >= 0)
        {
          v19 = __p;
        }

        else
        {
          v19 = __p[0];
        }

        v20 = *(i[4] + 40);
        *buf = 136315906;
        *&buf[4] = "CvmSpatialSubmixRouter.mm";
        *&buf[12] = 1024;
        *&buf[14] = 649;
        v141 = 2080;
        *v142 = v19;
        *&v142[8] = 2048;
        *&v142[10] = v20;
        v21 = v18;
        v22 = OS_LOG_TYPE_DEFAULT;
        v23 = "%25s:%-5d %s [SpatialSubmixRouter]: OnRendererChanged - Added updated renderer %llu";
        goto LABEL_26;
      }
    }

    else if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      Phase::Controller::SpatialModelerInfo::GetDescription(*(this + 6), __p);
      if (v139 >= 0)
      {
        v24 = __p;
      }

      else
      {
        v24 = __p[0];
      }

      v25 = i[2];
      *buf = 136315906;
      *&buf[4] = "CvmSpatialSubmixRouter.mm";
      *&buf[12] = 1024;
      *&buf[14] = 643;
      v141 = 2080;
      *v142 = v24;
      *&v142[8] = 2048;
      *&v142[10] = v25;
      v21 = v18;
      v22 = OS_LOG_TYPE_ERROR;
      v23 = "%25s:%-5d %s [SpatialSubmixRouter]: OnRendererChanged - New rendererId %llu was already present in working renderer map";
LABEL_26:
      _os_log_impl(&dword_23A302000, v21, v22, v23, buf, 0x26u);
      if (v139 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  v26 = *(*(this + 51) + 152);
  if (!v26)
  {
    v132 = 0;
    v126 = 0;
    goto LABEL_174;
  }

  v126 = 0;
  v132 = 0;
  do
  {
    v130 = v26;
    v127 = v26 + 2;
    Phase::Controller::RenderGroupMgr::GetRenderer(*(this + 51), v26[2], &v135);
    v27 = v135;
    if (!v135)
    {
      v32 = *(this + 53);
      v33 = *(this + 54);
      if (v32 >= v33)
      {
        v90 = *(this + 52);
        v91 = (v32 - v90) >> 5;
        v92 = v91 + 1;
        if ((v91 + 1) >> 59)
        {
          std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
        }

        v93 = v33 - v90;
        if (v93 >> 4 > v92)
        {
          v92 = v93 >> 4;
        }

        if (v93 >= 0x7FFFFFFFFFFFFFE0)
        {
          v94 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v94 = v92;
        }

        if (v94)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>(v94);
        }

        v108 = (32 * v91);
        *v108 = v130[3];
        v108[1] = *v127;
        v34 = 32 * v91 + 32;
        v109 = *(this + 52);
        v110 = *(this + 53) - v109;
        v111 = v108 - v110;
        memcpy(v108 - v110, v109, v110);
        v112 = *(this + 52);
        *(this + 52) = v111;
        *(this + 53) = v34;
        *(this + 54) = 0;
        if (v112)
        {
          operator delete(v112);
        }
      }

      else
      {
        *v32 = v130[3];
        v32[1] = *v127;
        v34 = (v32 + 2);
      }

      *(this + 53) = v34;
      v126 = 1;
      goto LABEL_169;
    }

    v28 = (*(*v135 + 104))(v135);
    if (v28)
    {
      v29 = **(Phase::Logger::GetInstance(v28) + 240);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        Phase::Controller::SpatialModelerInfo::GetDescription(*(this + 6), __p);
        v30 = __p;
        if (v139 < 0)
        {
          v30 = __p[0];
        }

        v31 = v27[5];
        *buf = 136315906;
        *&buf[4] = "CvmSpatialSubmixRouter.mm";
        *&buf[12] = 1024;
        *&buf[14] = 682;
        v141 = 2080;
        *v142 = v30;
        *&v142[8] = 2048;
        *&v142[10] = v31;
        _os_log_impl(&dword_23A302000, v29, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s [SpatialSubmixRouter]: Skipping connections to a stopping rendererId %llu!", buf, 0x26u);
        if (v139 < 0)
        {
          operator delete(__p[0]);
        }
      }

      goto LABEL_169;
    }

    for (j = *(*(this + 51) + 232); j; j = *j)
    {
      *buf = *(j + 1);
      v36 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>>>::find<Phase::UniqueObjectId>(this + 20, buf);
      if (v36)
      {
        v37 = v36[4];
      }

      else
      {
        v37 = 0;
      }

      if (*(this + 54) > v37 && (v38 = *(this + 25) + 24 * v37, *(v38 + 20) == HIDWORD(v37)) && (v39 = *v38) != 0)
      {
        if (*(v39 + 120) != 1)
        {
          if (v127->mStorage[0] == j[4] && v130[2].mStorage[1] == j[5] || v127->mStorage[0] == *(v39 + 48) && v130[2].mStorage[1] == *(v39 + 56))
          {
            v41 = *(this + 59);
            v40 = *(this + 60);
            if (v41 >= v40)
            {
              v43 = *(this + 58);
              v44 = v41 - v43;
              v45 = (v41 - v43) >> 3;
              v46 = v45 + 1;
              if ((v45 + 1) >> 61)
              {
                std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
              }

              v47 = v40 - v43;
              if (v47 >> 2 > v46)
              {
                v46 = v47 >> 2;
              }

              if (v47 >= 0x7FFFFFFFFFFFFFF8)
              {
                v48 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v48 = v46;
              }

              if (v48)
              {
                if (!(v48 >> 61))
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v52 = v45;
              v53 = (8 * v45);
              v54 = &v53[-v52];
              *v53 = v39;
              v42 = v53 + 1;
              memcpy(v54, v43, v44);
              *(this + 58) = v54;
              *(this + 59) = v42;
              *(this + 60) = 0;
              if (v43)
              {
                operator delete(v43);
              }
            }

            else
            {
              *v41 = v39;
              v42 = v41 + 8;
            }

            *(this + 59) = v42;
          }

          continue;
        }

        std::vector<Phase::UniqueObjectId>::push_back[abi:ne200100](this + 440, j + 1);
        if (*(v39 + 48) != 0)
        {
          Phase::Controller::RenderGroupMgr::GetRenderer(*(this + 51), *(v39 + 48), &v133);
          if (v133)
          {
            (*(*v133 + 40))(v133, *v39, *(v39 + 8));
          }

          else
          {
            v49 = **(Phase::Logger::GetInstance(0) + 240);
            if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
            {
              Phase::Controller::SpatialModelerInfo::GetDescription(*(this + 6), __p);
              v50 = __p;
              if (v139 < 0)
              {
                v50 = __p[0];
              }

              v51 = *(v39 + 48);
              *buf = 136315906;
              *&buf[4] = "CvmSpatialSubmixRouter.mm";
              *&buf[12] = 1024;
              *&buf[14] = 714;
              v141 = 2080;
              *v142 = v50;
              *&v142[8] = 2048;
              *&v142[10] = v51;
              _os_log_impl(&dword_23A302000, v49, OS_LOG_TYPE_ERROR, "%25s:%-5d %s [SpatialSubmixRouter]: Connected rendererId %llu not found!", buf, 0x26u);
              if (v139 < 0)
              {
                operator delete(__p[0]);
              }
            }
          }

          if (v134)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v134);
          }
        }
      }

      else
      {
        std::vector<Phase::UniqueObjectId>::push_back[abi:ne200100](this + 440, j + 1);
      }

      v132 = 1;
    }

    v55 = *(this + 58);
    v56 = *(this + 59);
    v57 = v56 - v55;
    v125 = v56 - v55;
    v124 = v55;
    if (v56 == v55)
    {
      v88 = 0;
      v89 = 0;
      v66 = v135;
      goto LABEL_139;
    }

    v131 = 0;
    v128 = 0;
    v129 = 0;
    do
    {
      v58 = *v55;
      v59 = *(this + 51);
      *buf = **v55;
      v60 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>>>::find<Phase::UniqueObjectId>((v59 + 216), buf);
      if (v60)
      {
        v61 = v60[6];
      }

      else
      {
        v61 = 1.0;
      }

      v62 = *(this + 51);
      *buf = *v58;
      v63 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>>>::find<Phase::UniqueObjectId>((v62 + 216), buf);
      if (v63)
      {
        v64 = *(v63 + 2) == 0;
      }

      else
      {
        v64 = 1;
      }

      v65 = *(v58 + 6);
      if (v65 > 1)
      {
        if (v65 != 2)
        {
          if (v65 != 3)
          {
            goto LABEL_100;
          }

LABEL_97:
          ++v131;
          goto LABEL_100;
        }

        ++v129;
      }

      else if (v65)
      {
        if (v65 == 1)
        {
          goto LABEL_97;
        }
      }

      else
      {
        ++v128;
      }

LABEL_100:
      v66 = v135;
      v67 = (*(*v135 + 88))(v135);
      if (!v67)
      {
        goto LABEL_128;
      }

      v69 = *(v58 + 6);
      v68 = *(v58 + 7);
      v70 = v58[3] == 0;
      if (v58[3] == 0 || v69 != v66[5] || v68 != v66[6])
      {
        v74 = **(Phase::Logger::GetInstance(v67) + 240);
        if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
        {
          Phase::Controller::SpatialModelerInfo::GetDescription(*(this + 6), __p);
          v75 = __p;
          if (v139 < 0)
          {
            v75 = __p[0];
          }

          v76 = *v58;
          v77 = v66[5];
          *buf = 136316162;
          *&buf[4] = "CvmSpatialSubmixRouter.mm";
          *&buf[12] = 1024;
          *&buf[14] = 783;
          v141 = 2080;
          *v142 = v75;
          *&v142[8] = 2048;
          *&v142[10] = v76;
          v143 = 2048;
          v144 = v77;
          _os_log_impl(&dword_23A302000, v74, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s [SpatialSubmixRouter]: connected submixId %llu to rendererId %llu", buf, 0x30u);
          if (v139 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v78 = v61 * *(v58 + 4);
        (*(*v66 + 32))(v66, *v58, *(v58 + 1), v78);
        if (!v70)
        {
          v146.mStorage[0] = v69;
          v146.mStorage[1] = v68;
          Phase::Controller::RenderGroupMgr::GetRenderer(*(this + 51), v146, &v133);
          if (v133)
          {
            v79 = (*(*v133 + 40))(v133, *v58, *(v58 + 1));
            v80 = **(Phase::Logger::GetInstance(v79) + 240);
            if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
            {
              Phase::Controller::SpatialModelerInfo::GetDescription(*(this + 6), __p);
              v81 = __p;
              if (v139 < 0)
              {
                v81 = __p[0];
              }

              v82 = *v58;
              *buf = 136316162;
              *&buf[4] = "CvmSpatialSubmixRouter.mm";
              *&buf[12] = 1024;
              *&buf[14] = 801;
              v141 = 2080;
              *v142 = v81;
              *&v142[8] = 2048;
              *&v142[10] = v82;
              v143 = 2048;
              v144 = v69;
              v83 = v80;
              v84 = OS_LOG_TYPE_DEFAULT;
              v85 = "%25s:%-5d %s [SpatialSubmixRouter]: disconnected submixId %llu from rendererId %llu";
              v86 = 48;
              goto LABEL_123;
            }
          }

          else
          {
            v80 = **(Phase::Logger::GetInstance(0) + 240);
            if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
            {
              Phase::Controller::SpatialModelerInfo::GetDescription(*(this + 6), __p);
              v87 = __p;
              if (v139 < 0)
              {
                v87 = __p[0];
              }

              *buf = 136315906;
              *&buf[4] = "CvmSpatialSubmixRouter.mm";
              *&buf[12] = 1024;
              *&buf[14] = 807;
              v141 = 2080;
              *v142 = v87;
              *&v142[8] = 2048;
              *&v142[10] = v69;
              v83 = v80;
              v84 = OS_LOG_TYPE_ERROR;
              v85 = "%25s:%-5d %s [SpatialSubmixRouter]: Connected rendererId %llu not found!";
              v86 = 38;
LABEL_123:
              _os_log_impl(&dword_23A302000, v83, v84, v85, buf, v86);
              if (v139 < 0)
              {
                operator delete(__p[0]);
              }
            }
          }

          if (v134)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v134);
          }
        }

        v58[3] = *(v66 + 5);
        *(v58 + 5) = v78;
        *(v58 + 8) = v61;
        *buf = &unk_284D2F458;
        *&buf[8] = Phase::CurveFunction::Linear<double>;
        *&v142[4] = buf;
        Phase::Fader<double>::SetInternal(v58 + 72, buf, v61, 0.0);
        std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](buf);
        goto LABEL_128;
      }

      if (*(v58 + 8) != v61)
      {
        *(v58 + 8) = v61;
        *buf = &unk_284D2F458;
        *&buf[8] = Phase::CurveFunction::Linear<double>;
        *&v142[4] = buf;
        Phase::Fader<double>::SetInternal(v58 + 72, buf, v61, 0.2);
        std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](buf);
      }

      Phase::Fader<double>::Update(v58 + 72, a2);
      v71 = *(v58 + 14);
      v72 = *(v58 + 4);
      v73 = v72 * v71;
      if (v72 * v71 != *(v58 + 5) && !v64)
      {
        (*(*v66 + 48))(v66, *v58, *(v58 + 1), v72 * v71);
        *(v58 + 5) = v73;
      }

LABEL_128:
      v55 += 8;
    }

    while (v55 != v56);
    v57 = v128;
    v88 = v129;
    v89 = v131 > 0;
LABEL_139:
    v95 = v125 >> 3;
    v96 = LOBYTE(v130[23].mStorage[0]);
    v97 = *v66;
    if (LOBYTE(v130[23].mStorage[0]) || v95 != v57)
    {
      if ((*(v97 + 88))(v66))
      {
        if (v124 == v56)
        {
          v101 = v96;
        }

        else
        {
          v101 = 0;
        }

        if (v95 == v88)
        {
          v101 = 1;
        }

        if ((v101 | v89))
        {
          if (v101)
          {
            v102 = 2;
          }

          else
          {
            v102 = 3;
          }

          (*(*v66 + 112))(v66, v102, 0);
        }
      }
    }

    else
    {
      (*(v97 + 112))(v66, 0, 0);
      v98 = *(this + 53);
      v99 = *(this + 54);
      if (v98 >= v99)
      {
        v103 = *(this + 52);
        v104 = (v98 - v103) >> 5;
        v105 = v104 + 1;
        if ((v104 + 1) >> 59)
        {
          std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
        }

        v106 = v99 - v103;
        if (v106 >> 4 > v105)
        {
          v105 = v106 >> 4;
        }

        if (v106 >= 0x7FFFFFFFFFFFFFE0)
        {
          v107 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v107 = v105;
        }

        if (v107)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>(v107);
        }

        v113 = (32 * v104);
        *v113 = v130[3];
        v113[1] = *v127;
        v100 = 32 * v104 + 32;
        v114 = *(this + 52);
        v115 = *(this + 53) - v114;
        v116 = v113 - v115;
        memcpy(v113 - v115, v114, v115);
        v117 = *(this + 52);
        *(this + 52) = v116;
        *(this + 53) = v100;
        *(this + 54) = 0;
        if (v117)
        {
          operator delete(v117);
        }
      }

      else
      {
        *v98 = v130[3];
        v98[1] = *v127;
        v100 = (v98 + 2);
      }

      *(this + 53) = v100;
      v126 = 1;
    }

    *(this + 59) = *(this + 58);
LABEL_169:
    if (v136)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v136);
    }

    v26 = v130->mStorage[0];
  }

  while (v130->mStorage[0]);
LABEL_174:
  v118 = *(this + 52);
  if (*(this + 53) != v118)
  {
    v119 = 0;
    v120 = 0;
    do
    {
      std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::Controller::Renderer>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::Controller::Renderer>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::Controller::Renderer>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::Controller::Renderer>>>>::__erase_unique<Phase::UniqueObjectId>(this + 10, (v118 + v119 + 16));
      Phase::Controller::RenderGroupMgr::RemoveRenderGroup(*(this + 51), *(*(this + 52) + v119), *(*(this + 52) + v119 + 8));
      ++v120;
      v118 = *(this + 52);
      v119 += 32;
    }

    while (v120 < (*(this + 53) - v118) >> 5);
  }

  v121 = *(this + 55);
  if (*(this + 56) != v121)
  {
    v122 = 0;
    v123 = 0;
    do
    {
      Phase::Controller::RenderGroupMgr::RemoveSubmix(*(this + 51), *(v121 + v122), *(v121 + v122 + 8));
      ++v123;
      v121 = *(this + 55);
      v122 += 16;
    }

    while (v123 < (*(this + 56) - v121) >> 4);
  }

  if (v126)
  {
    *(this + 53) = *(this + 52);
  }

  if (v132)
  {
    *(this + 56) = v121;
  }

  Phase::Controller::RenderGroupMgr::SendChanges(*(this + 51));
}

void sub_23A37C2D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27, uint64_t a28, std::__shared_weak_count *a29)
{
  if (a27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a27);
  }

  if (a29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a29);
  }

  _Unwind_Resume(a1);
}

std::__shared_weak_count *std::unordered_map<Phase::UniqueObjectId,std::shared_ptr<Phase::Controller::Renderer>>::insert_or_assign[abi:ne200100]<std::shared_ptr<Phase::Controller::Renderer>&>(void *a1, void *a2, uint64_t *a3)
{
  v3 = 0;
  v4 = 0xCBF29CE484222325;
  do
  {
    v4 = 0x100000001B3 * (v4 ^ *(a2 + v3++));
  }

  while (v3 != 16);
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_24;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v4;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_24;
    }

LABEL_23:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_24;
    }
  }

  if (v9[2] != *a2 || v9[3] != a2[1])
  {
    goto LABEL_23;
  }

  v13 = *a3;
  v12 = a3[1];
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  result = v9[5];
  v9[4] = v13;
  v9[5] = v12;
  if (result)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](result);
    return 0;
  }

  return result;
}

void std::vector<Phase::UniqueObjectId>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<Phase::MetaParamValue>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
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

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void Phase::Fader<double>::Update(uint64_t a1, double a2)
{
  if (a2 > 0.0)
  {
    v2 = *(a1 + 24) + a2;
    *(a1 + 24) = v2;
    v3 = *(*(a1 + 8) - 48);
    if (v2 > v3)
    {
      *(a1 + 24) = v3;
      v2 = v3;
    }

    *(a1 + 40) = Phase::Envelope<double>::operator()(a1, v2);
  }
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::Controller::RouterCommandBatch,std::pair<Phase::Handle64,Phase::UniqueObjectId>,std::shared_ptr<Phase::Controller::Renderer>,Phase::UniqueObjectId,std::pair<Phase::UniqueObjectId,BOOL>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 != -1)
  {
    result = (*(&__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne200100IZNS0_6__dtorINS0_8__traitsIJNS_9monostateEN5Phase10Controller18RouterCommandBatchENS_4pairINS7_8Handle64ENS7_14UniqueObjectIdEEENS_10shared_ptrINS8_8RendererEEESC_NSA_ISC_bEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRSK_EEEDcOSL_DpOT0____fmatrix + v2))(&v3, result);
  }

  *(v1 + 24) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_9monostateEN5Phase10Controller18RouterCommandBatchENS_4pairINS9_8Handle64ENS9_14UniqueObjectIdEEENS_10shared_ptrINSA_8RendererEEESE_NSC_ISE_bEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJS8_SB_SF_SI_SE_SJ_EEEEEEDcSN_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,Phase::Controller::RouterCommandBatch,std::pair<Phase::Handle64,Phase::UniqueObjectId>,std::shared_ptr<Phase::Controller::Renderer>,Phase::UniqueObjectId,std::pair<Phase::UniqueObjectId,BOOL>>>::__assign_alt[abi:ne200100]<3ul,std::shared_ptr<Phase::Controller::Renderer>,std::shared_ptr<Phase::Controller::Renderer>&>(uint64_t a1, void *a2, uint64_t *a3)
{
  if (*(a1 + 24) == 3)
  {
    v5 = *a3;
    v4 = a3[1];
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = a2[1];
    *a2 = v5;
    a2[1] = v4;
    if (v6)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  else
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,Phase::Controller::RouterCommandBatch,std::pair<Phase::Handle64,Phase::UniqueObjectId>,std::shared_ptr<Phase::Controller::Renderer>,Phase::UniqueObjectId,std::pair<Phase::UniqueObjectId,BOOL>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    v8 = a3[1];
    *a1 = *a3;
    *(a1 + 8) = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 24) = 3;
  }
}

void std::__throw_bad_variant_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82900] + 16;
}

void std::__list_imp<Phase::Controller::SpatialSubmixRouter::StoppingRenderer>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        std::__destroy_at[abi:ne200100]<Phase::Controller::SpatialSubmixRouter::StoppingRenderer,0>(v2 + 2);
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void std::__destroy_at[abi:ne200100]<Phase::Controller::SpatialSubmixRouter::StoppingRenderer,0>(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__init_with_size[abi:ne200100]<Phase::Envelope<double>::SegmentInternal*,Phase::Envelope<double>::SegmentInternal*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23A37CA50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<std::__bind<void (Phase::Controller::SpatialSubmixRouter::*)(Phase::UniqueObjectId,std::shared_ptr<Phase::Controller::Renderer>),Phase::Controller::SpatialSubmixRouter*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>,std::allocator<std::__bind<void (Phase::Controller::SpatialSubmixRouter::*)(Phase::UniqueObjectId,std::shared_ptr<Phase::Controller::Renderer>),Phase::Controller::SpatialSubmixRouter*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>>,void ()(Phase::UniqueObjectId,std::shared_ptr<Phase::Controller::Renderer>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284D316F8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<std::__bind<void (Phase::Controller::SpatialSubmixRouter::*)(Phase::UniqueObjectId,std::shared_ptr<Phase::Controller::Renderer>),Phase::Controller::SpatialSubmixRouter*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>,std::allocator<std::__bind<void (Phase::Controller::SpatialSubmixRouter::*)(Phase::UniqueObjectId,std::shared_ptr<Phase::Controller::Renderer>),Phase::Controller::SpatialSubmixRouter*,std::placeholders::__ph<1> const&,std::placeholders::__ph<2> const&>>,void ()(Phase::UniqueObjectId,std::shared_ptr<Phase::Controller::Renderer>)>::operator()(void *a1, uint64_t *a2, __int128 *a3)
{
  v3 = a1[2];
  v4 = a1[1];
  v5 = (a1[3] + (v3 >> 1));
  if (v3)
  {
    v4 = *(*v5 + v4);
  }

  v6 = *a2;
  v7 = a2[1];
  v8 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  v4(v5, v6, v7, &v8);
  if (*(&v8 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v8 + 1));
  }
}

void sub_23A37CB98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::Controller::Renderer>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::Controller::Renderer>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::Controller::Renderer>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::Controller::Renderer>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::__deallocate_node(a1, *(a1 + 16));
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

void *Phase::details::SharedSlotMap<Phase::Controller::SpatialSubmixRouter::SubmixParams,Phase::Handle64>::AllocSlots(void *result, uint64_t a2)
{
  if (a2)
  {
    operator new[]();
  }

  *result = 0;
  result[1] = 0;
  return result;
}

void std::__shared_ptr_pointer<Phase::SharedSlotMapState<Phase::Controller::SpatialSubmixRouter::SubmixParams,Phase::Handle64>::Slot *,std::shared_ptr<Phase::SharedSlotMapState<Phase::Controller::SpatialSubmixRouter::SubmixParams,Phase::Handle64>::Slot[]>::__shared_ptr_default_delete<Phase::SharedSlotMapState<Phase::Controller::SpatialSubmixRouter::SubmixParams,Phase::Handle64>::Slot[],Phase::SharedSlotMapState<Phase::Controller::SpatialSubmixRouter::SubmixParams,Phase::Handle64>::Slot>,std::allocator<Phase::SharedSlotMapState<Phase::Controller::SpatialSubmixRouter::SubmixParams,Phase::Handle64>::Slot>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

uint64_t std::__shared_ptr_pointer<Phase::SharedSlotMapState<Phase::Controller::SpatialSubmixRouter::SubmixParams,Phase::Handle64>::Slot *,std::shared_ptr<Phase::SharedSlotMapState<Phase::Controller::SpatialSubmixRouter::SubmixParams,Phase::Handle64>::Slot[]>::__shared_ptr_default_delete<Phase::SharedSlotMapState<Phase::Controller::SpatialSubmixRouter::SubmixParams,Phase::Handle64>::Slot[],Phase::SharedSlotMapState<Phase::Controller::SpatialSubmixRouter::SubmixParams,Phase::Handle64>::Slot>,std::allocator<Phase::SharedSlotMapState<Phase::Controller::SpatialSubmixRouter::SubmixParams,Phase::Handle64>::Slot>>::__on_zero_shared(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = v1 - 16;
    v3 = *(v1 - 8);
    if (v3)
    {
      v4 = 24 * v3;
      do
      {
        v5 = *(v2 + v4);
        if (v5)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v5);
        }

        v4 -= 24;
      }

      while (v4);
    }

    JUMPOUT(0x23EE86470);
  }

  return result;
}

uint64_t Phase::details::SharedSlotMap<Phase::Controller::SpatialSubmixRouter::SubmixParams,Phase::Handle64>::GetUniqueSlot(uint64_t *a1, uint64_t a2)
{
  v3 = *(a1 + 4);
  if (v3 <= a2)
  {
    return 0;
  }

  v5 = a2;
  result = *a1 + 24 * a2;
  if (*(result + 20) != HIDWORD(a2))
  {
    return 0;
  }

  v7 = a1[1];
  if (v7 && *(v7 + 8) >= 1)
  {
    Phase::details::SharedSlotMap<Phase::Controller::SpatialSubmixRouter::SubmixParams,Phase::Handle64>::AllocSlots(&v17, v3);
    if (*(a1 + 4))
    {
      v8 = 0;
      v9 = 0;
      v10 = v17 + 8;
      do
      {
        v11 = *a1;
        v12 = (*a1 + v8);
        v14 = *v12;
        v13 = v12[1];
        if (v13)
        {
          atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
        }

        v15 = *v10;
        *(v10 - 8) = v14;
        *v10 = v13;
        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }

        *(v10 + 8) = *(v11 + v8 + 16);
        ++v9;
        v10 += 24;
        v8 += 24;
      }

      while (v9 < *(a1 + 4));
    }

    std::__shared_mutex_base::lock((a1 + 4));
    v16 = a1[1];
    *a1 = v17;
    std::__shared_mutex_base::unlock((a1 + 4));
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    return *a1 + 24 * v5;
  }

  return result;
}