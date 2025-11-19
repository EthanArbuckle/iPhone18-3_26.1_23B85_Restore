void sub_23A417B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

double Phase::Controller::GroupManager::GetGain(Phase::Controller::GroupManager *this, unint64_t a2)
{
  v5 = a2;
  v3 = std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>(this + 5, &v5);
  if (!v3)
  {
    return (*(this + 128) ^ 1u);
  }

  if (*(v3 + 449))
  {
    return v3[10] * v3[37] * v3[29];
  }

  result = 0.0;
  if ((v3[56] & 1) == 0 && (*(this + 128) & 1) == 0)
  {
    return v3[10] * v3[37] * v3[29];
  }

  return result;
}

void *Phase::Controller::GroupManager::SetGain(Phase::Controller::GroupManager *this, unint64_t a2, double a3, double a4, Phase::Logger *a5)
{
  v13[4] = *MEMORY[0x277D85DE8];
  v12 = a2;
  result = std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>(this + 5, &v12);
  v10 = result;
  if (result)
  {
    v11 = *(this + 22);
    Phase::Controller::GetCurveFunctionFromCurveType<double>(a5, v13);
    Phase::Fader<double>::SetInternal((v10 + 5), v13, a3, v11 * a4);
    return std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](v13);
  }

  return result;
}

void sub_23A417CE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *Phase::Controller::GroupManager::SetGainHighFreq(Phase::Controller::GroupManager *this, unint64_t a2, double a3, double a4, Phase::Logger *a5)
{
  v13[4] = *MEMORY[0x277D85DE8];
  v12 = a2;
  result = std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>(this + 5, &v12);
  v10 = result;
  if (result)
  {
    v11 = *(this + 22);
    Phase::Controller::GetCurveFunctionFromCurveType<double>(a5, v13);
    Phase::Fader<double>::SetInternal((v10 + 11), v13, a3, v11 * a4);
    return std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](v13);
  }

  return result;
}

void sub_23A417DBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *Phase::Controller::GroupManager::SetGainLowFreq(Phase::Controller::GroupManager *this, unint64_t a2, double a3, double a4, Phase::Logger *a5)
{
  v13[4] = *MEMORY[0x277D85DE8];
  v12 = a2;
  result = std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>(this + 5, &v12);
  v10 = result;
  if (result)
  {
    v11 = *(this + 22);
    Phase::Controller::GetCurveFunctionFromCurveType<double>(a5, v13);
    Phase::Fader<double>::SetInternal((v10 + 17), v13, a3, v11 * a4);
    return std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](v13);
  }

  return result;
}

void sub_23A417E94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *Phase::Controller::GroupManager::SetRate(Phase::Controller::GroupManager *this, unint64_t a2, double a3, double a4, Phase::Logger *a5)
{
  v13[4] = *MEMORY[0x277D85DE8];
  v12 = a2;
  result = std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>(this + 5, &v12);
  v10 = result;
  if (result)
  {
    v11 = *(this + 22);
    Phase::Controller::GetCurveFunctionFromCurveType<double>(a5, v13);
    Phase::Fader<double>::SetInternal((v10 + 23), v13, a3, v11 * a4);
    return std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](v13);
  }

  return result;
}

void sub_23A417F6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t Phase::Controller::GroupManager::StartDuck(Phase::Controller::GroupManager *this, PHASEDucker *a2)
{
  v3 = a2;
  v4 = [(PHASEDucker *)v3 identifier];
  StringHashId = Phase::GetStringHashId(v4, v5);
  Phase::Controller::Ducker::Ducker(v8, v3, *(this + 22));
  std::__hash_table<std::__hash_value_type<unsigned long long,Phase::Controller::Ducker>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Ducker>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Ducker>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::Controller::Ducker>>>::__emplace_unique_key_args<unsigned long long,unsigned long long,Phase::Controller::Ducker>(this + 10, &StringHashId);
  LOBYTE(this) = v6;
  v14 = &v12;
  std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&v14);
  v14 = &v11;
  std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&v14);
  v14 = &v10;
  std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&v14);
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(&v9);
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(v8);

  return this & 1;
}

void sub_23A418054(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  Phase::Controller::Ducker::~Ducker(va);

  _Unwind_Resume(a1);
}

BOOL Phase::Controller::GroupManager::ReleaseDuck(Phase::Controller::GroupManager *this, PHASEDucker *a2)
{
  v3 = a2;
  v4 = [(PHASEDucker *)v3 identifier];
  StringHashId = Phase::GetStringHashId(v4, v5);
  v6 = std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>(this + 10, &StringHashId);

  if (v6)
  {
    Phase::Controller::Ducker::Release((v6 + 3));
  }

  return v6 != 0;
}

uint64_t Phase::Controller::GroupManager::SetPreset(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = v7;
  if (v7)
  {
    [v7 timeToReset];
    *(a1 + 120) = v9;
    [v8 timeToTarget];
    if (a4)
    {
      v10 = *&a3;
    }

    v11 = v10 * *(a1 + 176);
    for (i = *(a1 + 56); i; i = *i)
    {
      v36 = &unk_284D2F458;
      v37 = Phase::CurveFunction::Linear<double>;
      v38 = &v36;
      Phase::Fader<double>::SetInternal((i + 32), &v36, i[36], v11);
      std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](&v36);
      v36 = &unk_284D2F458;
      v37 = Phase::CurveFunction::Linear<double>;
      v38 = &v36;
      Phase::Fader<double>::SetInternal((i + 44), &v36, i[48], v11);
      std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](&v36);
      v36 = &unk_284D2F458;
      v37 = Phase::CurveFunction::Linear<double>;
      v38 = &v36;
      Phase::Fader<double>::SetInternal((i + 38), &v36, i[42], v11);
      std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](&v36);
      v36 = &unk_284D2F458;
      v37 = Phase::CurveFunction::Linear<double>;
      v38 = &v36;
      Phase::Fader<double>::SetInternal((i + 50), &v36, i[54], v11);
      std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](&v36);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v13 = [v8 settings];
    v15 = [v13 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v15)
    {
      v16 = *v32;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v32 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v31 + 1) + 8 * j);
          StringHashId = Phase::GetStringHashId(v18, v14);
          v19 = std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>((a1 + 40), &StringHashId);
          if (v19)
          {
            v20 = [v8 settings];
            v21 = [v20 objectForKey:v18];

            [v21 gain];
            v36 = &unk_284D2F458;
            v37 = Phase::CurveFunction::Linear<double>;
            v38 = &v36;
            Phase::Fader<double>::SetInternal((v19 + 32), &v36, v22, v11);
            std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](&v36);
            [v21 gainHighFrequency];
            v36 = &unk_284D2F458;
            v37 = Phase::CurveFunction::Linear<double>;
            v38 = &v36;
            Phase::Fader<double>::SetInternal((v19 + 44), &v36, v23, v11);
            std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](&v36);
            [v21 gainLowFrequency];
            v36 = &unk_284D2F458;
            v37 = Phase::CurveFunction::Linear<double>;
            v38 = &v36;
            Phase::Fader<double>::SetInternal((v19 + 38), &v36, v24, v11);
            std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](&v36);
            [v21 rate];
            v36 = &unk_284D2F458;
            v37 = Phase::CurveFunction::Linear<double>;
            v38 = &v36;
            Phase::Fader<double>::SetInternal((v19 + 50), &v36, v25, v11);
            std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](&v36);
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v15);
    }
  }

  else
  {
    if ((a4 & 1) == 0)
    {
      a3 = *(a1 + 120);
    }

    v26 = *(a1 + 176);
    *(a1 + 120) = 0;
    v27 = *(a1 + 56);
    if (v27)
    {
      v28 = *&a3 * v26;
      do
      {
        v36 = &unk_284D2F458;
        v37 = Phase::CurveFunction::Linear<double>;
        v38 = &v36;
        Phase::Fader<double>::SetInternal((v27 + 32), &v36, v27[36], v28);
        std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](&v36);
        v36 = &unk_284D2F458;
        v37 = Phase::CurveFunction::Linear<double>;
        v38 = &v36;
        Phase::Fader<double>::SetInternal((v27 + 44), &v36, v27[48], v28);
        std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](&v36);
        v36 = &unk_284D2F458;
        v37 = Phase::CurveFunction::Linear<double>;
        v38 = &v36;
        Phase::Fader<double>::SetInternal((v27 + 38), &v36, v27[42], v28);
        std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](&v36);
        v36 = &unk_284D2F458;
        v37 = Phase::CurveFunction::Linear<double>;
        v38 = &v36;
        Phase::Fader<double>::SetInternal((v27 + 50), &v36, v27[54], v28);
        std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](&v36);
        v27 = *v27;
      }

      while (v27);
    }
  }

  return 1;
}

double Phase::Controller::GroupManager::SetUnitsPerSecond(Phase::Controller::GroupManager *this, double a2)
{
  v3 = Phase::Controller::sClamp<double>(this, a2, *(this + 17), *(this + 18));
  v4 = *(this + 20);
  if (v3 != v4)
  {
    *(this + 20) = v3;
    *(this + 168) = 1;
    v4 = v3;
  }

  result = 1.0 / v4;
  *(this + 22) = 1.0 / v4;
  return result;
}

void Phase::Controller::GroupManager::~GroupManager(Phase::Controller::GroupManager *this)
{
  *this = &unk_284D353C0;
  v2 = this + 40;
  std::__hash_table<std::__hash_value_type<unsigned long long,Phase::Controller::Ducker>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Ducker>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Ducker>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::Controller::Ducker>>>::~__hash_table(this + 80);
  std::__hash_table<std::__hash_value_type<unsigned long long,Phase::Controller::Group>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Group>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Group>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::Controller::Group>>>::~__hash_table(v2);

  Phase::Commandable<128,Phase::LockFreeQueueMPSC>::~Commandable(this);
}

{
  *this = &unk_284D353C0;
  v2 = this + 40;
  std::__hash_table<std::__hash_value_type<unsigned long long,Phase::Controller::Ducker>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Ducker>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Ducker>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::Controller::Ducker>>>::~__hash_table(this + 80);
  std::__hash_table<std::__hash_value_type<unsigned long long,Phase::Controller::Group>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Group>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Group>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::Controller::Group>>>::~__hash_table(v2);
  Phase::Commandable<128,Phase::LockFreeQueueMPSC>::~Commandable(this);

  JUMPOUT(0x23EE864A0);
}

Phase::Controller::Group *Phase::Controller::Group::Group(Phase::Controller::Group *this, uint64_t a2, PHASEGroup *a3)
{
  v5 = a3;
  *this = a2;
  v6 = v5;
  *(this + 1) = v6;
  Phase::Controller::Group::DiffableState::DiffableState((this + 16));
  *(this + 108) = 0;

  return this;
}

Phase::Controller::Group::DiffableState *Phase::Controller::Group::DiffableState::DiffableState(Phase::Controller::Group::DiffableState *this)
{
  v2 = Phase::Fader<double>::Fader(this, 1.0);
  Phase::Fader<double>::Fader((v2 + 48), 1.0);
  Phase::Fader<double>::Fader((this + 96), 1.0);
  Phase::Fader<double>::Fader((this + 144), 1.0);
  __asm { FMOV            V0.2D, #1.0 }

  *(this + 12) = _Q0;
  *(this + 26) = 0x3FF0000000000000;
  Phase::Fader<double>::Fader((this + 216), 1.0);
  Phase::Fader<double>::Fader((this + 264), 1.0);
  Phase::Fader<double>::Fader((this + 312), 1.0);
  Phase::Fader<double>::Fader((this + 360), 1.0);
  *(this + 204) = 0;
  return this;
}

void sub_23A418998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v11 = v10;
  a10 = v11;
  std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void Phase::Controller::Group::~Group(id *this)
{
  v2 = this + 2;
  v3 = this + 47;
  std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = this + 41;
  std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = this + 35;
  std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = this + 29;
  std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = this + 20;
  std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = this + 14;
  std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = this + 8;
  std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = v2;
  std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void Phase::Controller::Ducker::~Ducker(Phase::Controller::Ducker *this)
{
  v2 = (this + 240);
  std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (this + 192);
  std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (this + 144);
  std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(this + 40);
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(this);
}

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long>(void *result, unint64_t a2)
{
  v2 = result[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*result + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
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
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,Phase::Controller::Group>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Group>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Group>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::Controller::Group>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v6 = v2 + 50;
      std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&v6);
      v6 = v2 + 44;
      std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&v6);
      v6 = v2 + 38;
      std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&v6);
      v6 = v2 + 32;
      std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&v6);
      v6 = v2 + 23;
      std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&v6);
      v6 = v2 + 17;
      std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&v6);
      v6 = v2 + 11;
      std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&v6);
      v6 = v2 + 5;
      std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&v6);

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,Phase::Controller::Ducker>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Ducker>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Ducker>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::Controller::Ducker>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v6 = (v2 + 264);
      std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&v6);
      v6 = (v2 + 216);
      std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&v6);
      v6 = (v2 + 168);
      std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&v6);
      std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table((v2 + 64));
      std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table((v2 + 24));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,Phase::Controller::Group>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Group>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Group>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::Controller::Group>>>::__emplace_unique_key_args<unsigned long long,unsigned long long &,Phase::Controller::Group>(void *a1, unint64_t *a2)
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
  if (!v6 || (result = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = result[1];
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
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (result[2] != v2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_23A419488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id *a10)
{
  if (a10)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,Phase::Controller::Group>,void *>>>::operator()[abi:ne200100](v10 + 8, a10);
  }

  _Unwind_Resume(exception_object);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,Phase::Controller::Group>,void *>>>::operator()[abi:ne200100](uint64_t a1, id *a2)
{
  if (*(a1 + 8) == 1)
  {
    v3 = a2 + 50;
    std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&v3);
    v3 = a2 + 44;
    std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&v3);
    v3 = a2 + 38;
    std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&v3);
    v3 = a2 + 32;
    std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&v3);
    v3 = a2 + 23;
    std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&v3);
    v3 = a2 + 17;
    std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&v3);
    v3 = a2 + 11;
    std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&v3);
    v3 = a2 + 5;
    std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned long long,Phase::Controller::Group>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Group>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Group>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::Controller::Group>>>::__erase_unique<unsigned long long>(void *a1, unint64_t *a2)
{
  result = std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,Phase::Controller::Group>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Group>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Group>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::Controller::Group>>>::erase(a1, result);
    return 1;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,Phase::Controller::Group>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Group>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Group>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::Controller::Group>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>>>::remove(a1, a2, &v5);
  v3 = v5;
  v5 = 0;
  if (v3)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,Phase::Controller::Group>,void *>>>::operator()[abi:ne200100](&v6, v3);
  }

  return v2;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,Phase::Controller::Ducker>,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
    v3 = __p + 33;
    std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&v3);
    v3 = __p + 27;
    std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&v3);
    v3 = __p + 21;
    std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&v3);
    std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table((__p + 8));
    std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table((__p + 3));
  }

  operator delete(__p);
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,Phase::Controller::Ducker>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Ducker>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Ducker>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::Controller::Ducker>>>::__emplace_unique_key_args<unsigned long long,unsigned long long,Phase::Controller::Ducker>(void *a1, unint64_t *a2)
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

void *Phase::HeapAllocator::Destroy(Phase::HeapAllocator *this)
{
  v2 = *(this + 8);
  if ((v2 & 0x10) != 0)
  {
    Phase::SpinLock::Lock(this);
  }

  v3 = *(this + 118);
  if (v3)
  {
    Phase::VirtualAllocator::DecommitPages(v3, *(this + 239));
    Phase::VirtualAllocator::ReleaseAddressSpace(*(this + 118), *(this + 238));
  }

  *(this + 15) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 68) = 0u;
  *(this + 11) = 0;
  *(this + 6) = 0u;
  *(this + 28) = 0;
  *(this + 1) = 0;
  *(this + 1) = 0u;
  *(this + 8) = 0;
  result = memset(this + 132, 255, 0x280uLL);
  *(this + 776) = 0u;
  *(this + 198) = 0;
  *(this + 50) = 0u;
  *(this + 51) = 0u;
  *(this + 52) = 0u;
  *(this + 53) = 0u;
  *(this + 54) = 0u;
  *(this + 55) = 0u;
  *(this + 56) = 0u;
  *(this + 57) = 0u;
  *(this + 58) = 0u;
  *(this + 59) = 0u;
  *(this + 60) = 0u;
  *(this + 122) = 0;
  if ((v2 & 0x10) != 0)
  {
    atomic_store(0, this);
  }

  return result;
}

void sub_23A419C0C(_Unwind_Exception *a1)
{
  if ((v2 & 0x10) != 0)
  {
    atomic_store(0, v1);
  }

  _Unwind_Resume(a1);
}

void Phase::HeapAllocator::InitializeWithBacking(Phase::HeapAllocator *this, unint64_t a2, const char *a3, int a4, uint64_t a5, int a6)
{
  v63 = *MEMORY[0x277D85DE8];
  if (HIDWORD(a2))
  {
    v45 = **(Phase::Logger::GetInstance(this) + 64);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v57 = 136315650;
      v58 = "HeapAllocator.cpp";
      v59 = 1024;
      v60 = 1100;
      v61 = 2048;
      v62 = a2;
      _os_log_impl(&dword_23A302000, v45, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [inMaxSizeInBytes > 0xffffffff is true]: Invalid inMaxSizeInBytes: %zu!\\n", &v57, 0x1Cu);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Invalid inMaxSizeInBytes: %zu!\n");
  }

  if ((a5 ^ (a5 - 1)) <= a5 - 1)
  {
    v47 = **(Phase::Logger::GetInstance(this) + 64);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v57 = 136315650;
      v58 = "HeapAllocator.cpp";
      v59 = 1024;
      v60 = 1107;
      v61 = 2048;
      v62 = a5;
      _os_log_impl(&dword_23A302000, v47, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [!IsPowerOfTwo(inAlignmentInBytes) is true]: Invalid inAlignmentInBytes: %zu!\\n", &v57, 0x1Cu);
    }

    v48 = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](v48, "Invalid inAlignmentInBytes: %zu!\n");
  }

  *(this + 40) = 0u;
  v12 = this + 40;
  *(this + 11) = 0;
  v13 = this + 88;
  *(this + 15) = 0;
  *(this + 32) = 0;
  *(this + 56) = 0u;
  *(this + 68) = 0u;
  *(this + 6) = 0u;
  *(this + 28) = 0;
  v14 = (this + 800);
  *(this + 1) = 0u;
  memset(this + 132, 255, 0x280uLL);
  *(v12 + 46) = 0u;
  *(v12 + 188) = 0;
  *v14 = 0u;
  *(v12 + 776) = 0u;
  *(v12 + 792) = 0u;
  *(v12 + 808) = 0u;
  *(v12 + 824) = 0u;
  *(v12 + 840) = 0u;
  *(v12 + 856) = 0u;
  *(v12 + 872) = 0u;
  *(v12 + 888) = 0u;
  *(v12 + 904) = 0u;
  *(v12 + 920) = 0u;
  *(v12 + 117) = 0;
  *(v12 - 2) = a4;
  *(v12 - 4) = a3;
  v15 = MEMORY[0x277D85F88];
  v16 = MEMORY[0x277D85F90];
  v17 = (*MEMORY[0x277D85F88] + a2) >> *MEMORY[0x277D85F90];
  if (!a2)
  {
    LODWORD(v17) = 0;
  }

  *(v12 + 228) = v17;
  v18 = Phase::VirtualAllocator::ReserveAddressSpace(v17);
  *(v12 + 113) = v18;
  if (!v18)
  {
    v49 = Phase::HeapAllocator::Destroy(this);
    v50 = **(Phase::Logger::GetInstance(v49) + 32);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      v57 = 136315394;
      v58 = "HeapAllocator.cpp";
      v59 = 1024;
      v60 = 195;
      _os_log_impl(&dword_23A302000, v50, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (OutOfMemory): Could not acquire the specified amount of address space from the virtual allocator!", &v57, 0x12u);
    }

    v51 = __cxa_allocate_exception(0x10uLL);
    _ZN5Phase11OutOfMemoryCI1St11logic_errorEPKc(v51, "Could not acquire the specified amount of address space from the virtual allocator!");
  }

  v19 = v18;
  v20 = 8;
  if (a5 > 8)
  {
    v20 = a5;
  }

  v21 = __clz(v20) ^ 0x3F;
  *(this + 6) = v21;
  *(this + 116) = v18;
  if (a6 < 0)
  {
    v52 = **(Phase::Logger::GetInstance(v18) + 64);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      v57 = 136315650;
      v58 = "HeapAllocator.cpp";
      v59 = 1024;
      v60 = 89;
      v61 = 2048;
      v62 = a6;
      _os_log_impl(&dword_23A302000, v52, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [inMaximumAllocationCount < 0 is true]: Invalid inMaximumAllocationCount: %lld!\\n", &v57, 0x1Cu);
    }

    v53 = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](v53, "Invalid inMaximumAllocationCount: %lld!\n");
  }

  v22 = (((2454267027u * (((a6 + 15) & 0xFFFFFFF0) >> 1)) >> 32 << 6) & 0xFFFFFF00) + (((((a6 + 15) & 0xFFFFFFF0) + 34) / 0x1F) << 9) + 688 * ((((a6 + 15) & 0xFFFFFFF0) + 24) / 0x15) + 11008;
  *(this + 235) = v22;
  v23 = (v22 + ~(-1 << v21)) >> v21;
  *(this + 2) = v18 + (v23 << v21);
  if (v23 >= (a2 >> v21))
  {
    v54 = Phase::HeapAllocator::Destroy(this);
    v55 = **(Phase::Logger::GetInstance(v54) + 32);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      v57 = 136315394;
      v58 = "HeapAllocator.cpp";
      v59 = 1024;
      v60 = 211;
      _os_log_impl(&dword_23A302000, v55, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument): InitializeWithBacking failed!", &v57, 0x12u);
    }

    v56 = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](v56, "InitializeWithBacking failed!");
  }

  v24 = *(this + 8);
  if ((v24 & 0x10) != 0 && (Phase::SpinLock::Lock(this), (v19 = *(this + 118)) == 0))
  {
    v26 = 1;
  }

  else
  {
    v25 = *(this + 239);
    if (v25)
    {
      Phase::VirtualAllocator::DecommitPages(v19, v25);
      v19 = *(this + 118);
      v26 = v19 == 0;
    }

    else
    {
      v26 = 0;
    }
  }

  *(this + 234) = 0;
  *(this + 15) = 0;
  *(this + 32) = 0;
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 28) = 0u;
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  *v13 = 0;
  *(v13 + 6) = 0;
  memset(v12 + 92, 255, 0x280uLL);
  *v14 = 0u;
  v14[1] = 0u;
  v14[2] = 0u;
  v14[3] = 0u;
  v14[4] = 0u;
  v14[5] = 0u;
  v14[6] = 0u;
  v14[7] = 0u;
  if (!v26)
  {
    v27 = *(this + 235);
    if (v27)
    {
      v28 = (*v15 + v27) >> *v16;
    }

    else
    {
      v28 = 0;
    }

    Phase::VirtualAllocator::CommitPages(v19, v28);
    *(this + 239) = v28;
    *(this + 7) = (*(this + 236) + *MEMORY[0x277D85FA0] * v28 - *(this + 4)) >> *(this + 6);
  }

  v29 = *(this + 116);
  if (v29)
  {
    v30 = *(this + 234);
    for (i = 132; i != 644; i += 8)
    {
      v32 = Phase::HeapAllocator::AddLookupSet(this, (v29 + v30));
      v30 = *(this + 234) + 128;
      *(this + 234) = v30;
      v29 = *(this + 116);
      *(this + i) = vdup_n_s32(v32 - v29);
    }

    do
    {
      v33 = Phase::HeapAllocator::AddLookupSet(this, (v29 + v30));
      v30 = *(this + 234) + 128;
      *(this + 234) = v30;
      v29 = *(this + 116);
      *(this + i) = vdup_n_s32(v33 - v29);
      i += 8;
    }

    while (i != 772);
    v34 = 6;
    do
    {
      v35 = Phase::HeapAllocator::AddLookupSet(this, (*(this + 116) + v30));
      v30 = *(this + 234) + 128;
      *(this + 234) = v30;
      v36 = *(this + 15);
      if (v36)
      {
        v35[29] = v36 - *(this + 232);
      }

      *(this + 15) = v35;
      ++*(this + 32);
      --v34;
    }

    while (v34);
    Phase::HeapAllocator::AddBlockSet(this, (*(this + 116) + v30));
    v37 = (*(this + 234) + 688);
    *(this + 234) = v37;
    Phase::HeapAllocator::AddGapSet(this, (*(this + 116) + v37));
    *(this + 234) += 512;
    v38 = *(this + 7);
    if (v38 > 0)
    {
      Phase::HeapAllocator::AddGap(this, 0, v38, 0xFFFFFFFF, 0xFFFFFFFF);
    }

    v39 = *(this + 8);
    if (v39)
    {
      Phase::Memset8(*(this + 2), 0xCDCDCDCDCDCDCDCDLL, (*(this + 7) << *(this + 6)));
      v39 = *(this + 8);
    }

    if ((v39 & 0x20) != 0)
    {
      v40 = *(this + 118);
      v41 = v40 ? v40 + *MEMORY[0x277D85FA0] * *(this + 238) - *(this + 2) : (*(this + 7) << *(this + 6));
      v42 = ((0x8000000 - v41) & ((0x8000000 - v41) >> 63)) + v41;
      v43 = ((v42 >> 10) + 63) >> 3;
      Internal = Phase::HeapAllocator::AllocateInternal(this, v43 & 0x1FFFFFFFFFFFFFF8, "Internal Small Allocation Bits", 0, 0);
      *(this + 98) = Internal;
      if (Internal)
      {
        *(this + 97) = (*(this + 2) + 1023) & 0xFFFFFFFFFFFFFC00;
        *(this + 198) = v42 >> 10;
        Phase::Memset8(Internal, 0, v43 & 0x1FFFFFFFFFFFFFF8);
      }
    }
  }

  if ((v24 & 0x10) != 0)
  {
    atomic_store(0, this);
  }
}

void sub_23A41A4A8(_Unwind_Exception *exception_object)
{
  if ((v2 & 0x10) != 0)
  {
    atomic_store(0, v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::HeapAllocator::Free(Phase::HeapAllocator *this, Phase *a2)
{
  v4 = *(this + 8);
  if ((v4 & 0x10) != 0)
  {
    Phase::SpinLock::Lock(this);
  }

  result = Phase::HeapAllocator::FreeInternal(this, a2);
  if ((v4 & 0x10) != 0)
  {
    atomic_store(0, this);
  }

  return result;
}

void sub_23A41A53C(_Unwind_Exception *a1)
{
  if ((v2 & 0x10) != 0)
  {
    atomic_store(0, v1);
  }

  _Unwind_Resume(a1);
}

unsigned int *Phase::HeapAllocator::AddLookupSet(Phase::HeapAllocator *this, unsigned int *a2)
{
  if (a2)
  {
LABEL_7:
    *&v4 = -1;
    *(&v4 + 1) = -1;
    *(a2 + 5) = v4;
    *(a2 + 6) = v4;
    *(a2 + 3) = v4;
    *(a2 + 4) = v4;
    *(a2 + 1) = v4;
    *(a2 + 2) = v4;
    *a2 = v4;
    *(a2 + 14) = 0xFFFFFFFF00000000;
    a2[30] = -1;
    return a2;
  }

  a2 = *(this + 15);
  if (a2)
  {
    v2 = a2[29];
    if (v2 == -1)
    {
      v3 = 0;
    }

    else
    {
      v3 = *(this + 116) + v2;
    }

    *(this + 15) = v3;
    --*(this + 32);
    goto LABEL_7;
  }

  return a2;
}

void Phase::HeapAllocator::AddBlockSet(Phase::HeapAllocator *this, char *a2)
{
  bzero(a2, 0x2B0uLL);
  v4 = 0;
  v5 = *(this + 116);
  do
  {
    v6 = &a2[v4];
    *v6 = -1;
    *(v6 + 2) = -1;
    *(v6 + 3) = a2 - v5 + 32 + v4;
    v4 += 32;
  }

  while (v4 != 672);
  v7 = *(this + 9);
  v8 = v7 - v5;
  if (!v7)
  {
    v8 = -1;
  }

  *(a2 + 163) = v8;
  *(this + 9) = a2;
  *(this + 20) += 21;
  if (*(this + 7))
  {
    *(a2 + 84) = 0;
    v10 = *(this + 8);
    v9 = (this + 64);
    *(a2 + 85) = v10;
    *(v10 + 672) = a2;
  }

  else
  {
    *(a2 + 84) = 0;
    *(a2 + 85) = 0;
    *(this + 7) = a2;
    v9 = (this + 64);
  }

  *v9 = a2;
}

void *Phase::HeapAllocator::AddGapSet(Phase::HeapAllocator *this, _OWORD *a2)
{
  v2 = 0;
  a2[30] = 0u;
  a2[31] = 0u;
  a2[28] = 0u;
  a2[29] = 0u;
  a2[26] = 0u;
  a2[27] = 0u;
  a2[24] = 0u;
  a2[25] = 0u;
  a2[22] = 0u;
  a2[23] = 0u;
  a2[20] = 0u;
  a2[21] = 0u;
  a2[18] = 0u;
  a2[19] = 0u;
  a2[16] = 0u;
  a2[17] = 0u;
  a2[14] = 0u;
  a2[15] = 0u;
  a2[12] = 0u;
  a2[13] = 0u;
  a2[10] = 0u;
  a2[11] = 0u;
  a2[8] = 0u;
  a2[9] = 0u;
  a2[6] = 0u;
  a2[7] = 0u;
  a2[4] = 0u;
  a2[5] = 0u;
  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  v3 = *(this + 116);
  do
  {
    v4 = &a2[v2];
    *v4 = -1;
    v4[2] = -1;
    v4[3] = a2 - v3 + 16 + v2 * 16;
    ++v2;
  }

  while (v2 != 31);
  v5 = *(this + 13);
  v6 = v5 - v3;
  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = -1;
  }

  *(a2 + 123) = v7;
  *(this + 13) = a2;
  *(this + 28) += 31;
  if (*(this + 11))
  {
    v9 = *(this + 12);
    result = (this + 96);
    *(a2 + 62) = 0;
    *(a2 + 63) = v9;
    *(v9 + 496) = a2;
  }

  else
  {
    *(a2 + 62) = 0;
    *(a2 + 63) = 0;
    *(this + 11) = a2;
    result = (this + 96);
  }

  *result = a2;
  return result;
}

_DWORD *Phase::HeapAllocator::AddGap(Phase::HeapAllocator *this, int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v24 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    __assert_rtn("AddGap", "HeapAllocator.cpp", 1847, "inPageSize != 0");
  }

  if (!*(this + 28))
  {
    return 0;
  }

  v10 = *(this + 13);
  v11 = __clz(a3);
  v12 = Phase::HeapAllocator::AddLookup(this, this + 2 * (((15 - (v11 ^ 0x1F)) & ((15 - (v11 ^ 0x1F)) >> 31)) + (v11 ^ 0x1F)) + 161, a3, v10 - *(this + 232));
  if (!v12)
  {
    return 0;
  }

  --*(this + 28);
  v13 = v10[3];
  if (v13 == -1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(this + 116) + v13;
  }

  *(this + 13) = v14;
  *v10 = a2;
  v10[1] = -a3;
  v10[2] = a4;
  v10[3] = a5;
  if (a4 != -1 && *(*(this + 116) + a4 + 4) <= 0)
  {
    v16 = **(Phase::Logger::GetInstance(v12) + 64);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v20 = 136315394;
      v21 = "HeapAllocator.cpp";
      v22 = 1024;
      v23 = 1889;
      _os_log_impl(&dword_23A302000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [ToAllocElem(inNeighborLow)->mSize <= 0 is true]: FindGapLookup() failed!\\n", &v20, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "FindGapLookup() failed!\n");
  }

  if (a5 != -1 && *(*(this + 116) + a5 + 4) <= 0)
  {
    v18 = **(Phase::Logger::GetInstance(v12) + 64);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v20 = 136315394;
      v21 = "HeapAllocator.cpp";
      v22 = 1024;
      v23 = 1895;
      _os_log_impl(&dword_23A302000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [ToAllocElem(inNeighborHigh)->mSize <= 0 is true]: FindGapLookup() failed!\\n", &v20, 0x12u);
    }

    v19 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v19, "FindGapLookup() failed!\n");
  }

  if (a4 == -1)
  {
    *(this + 5) = v10;
  }

  else
  {
    *(*(this + 116) + a4 + 12) = v10 - *(this + 116);
  }

  if (a5 == -1)
  {
    *(this + 6) = v10;
  }

  else
  {
    *(*(this + 116) + a5 + 8) = v10 - *(this + 116);
  }

  return v10;
}

Phase *Phase::HeapAllocator::AllocateInternal(Phase::HeapAllocator *this, unint64_t a2, const char *a3, int a4, unint64_t a5)
{
  v9 = this;
  v118 = *MEMORY[0x277D85DE8];
  if (!a3 && (*(this + 8) & 8) != 0)
  {
    v87 = **(Phase::Logger::GetInstance(this) + 64);
    if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
    {
      v88 = *(v9 + 1);
      if (!v88)
      {
        v88 = "<Unnamed>";
      }

      *buf = 136315650;
      v113 = "HeapAllocator.cpp";
      v114 = 1024;
      v115 = 1124;
      v116 = 2080;
      v117 = v88;
      _os_log_impl(&dword_23A302000, v87, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [(mFlags & kHeapFlagRequireOwnerName) && (pInOwnerName == nullptr) is true]: Heap '%s' requires owner name!\\n", buf, 0x1Cu);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Heap '%s' requires owner name!\n");
  }

  v10 = a2 - 1;
  v11 = ((1 << *(this + 6)) + a2 - 1) >> *(this + 6);
  if (!v11)
  {
    return 0;
  }

  if (a3 == "Internal Bookkeeping")
  {
    goto LABEL_13;
  }

  Phase::HeapAllocator::AllocateBookkeeping(this);
  if (a4 || a2 > 0xC0 || !*(v9 + 98))
  {
    goto LABEL_13;
  }

  v12 = 0;
  v13 = 31 - __clz(v10);
  if (a2 <= 1)
  {
    v13 = 0;
  }

  if (v13 >= 4)
  {
    v12 = ((v10 >> (v13 - 1)) & 1 | (2 * v13)) - 7;
  }

  v14 = 8 * (v12 & 1);
  v15 = v12 >> 1;
  if ((16 - v14) << (v12 >> 1) < a5)
  {
LABEL_13:
    v16 = *(v9 + 6);
    if (1 << v16 >= a5)
    {
      LODWORD(v17) = 0;
      a5 = 0;
    }

    else
    {
      if ((a5 & (a5 - 1)) != 0)
      {
        v94 = **(Phase::Logger::GetInstance(this) + 64);
        if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v113 = "HeapAllocator.cpp";
          v114 = 1024;
          v115 = 1165;
          v116 = 2048;
          v117 = a5;
          _os_log_impl(&dword_23A302000, v94, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [!IsPowerOfTwo(alignment) is true]: invalid alignment: %zu!\\n", buf, 0x1Cu);
        }

        v95 = __cxa_allocate_exception(0x10uLL);
        std::invalid_argument::invalid_argument[abi:ne200100](v95, "invalid alignment: %zu!\n");
      }

      v17 = a5 >> v16;
    }

    v18 = ((*(v9 + 8) >> 2) & 1) + v11;
    v111 = 0;
    v110 = 0;
    GapBySize = Phase::HeapAllocator::FindGapBySize(v9, &v111, &v110, v18, v17);
    if (GapBySize)
    {
LABEL_48:
      v57 = GapBySize;
      v58 = *GapBySize;
      if (a5 && (v59 = *(v9 + 6), v60 = (v58 << v59) + *(v9 + 2), a5 = (((a5 + v60 - 1) & -a5) - v60) >> v59, a5))
      {
        if (!*(v9 + 28) || *(v9 + 32) <= 1u)
        {
          v90 = **(Phase::Logger::GetInstance(GapBySize) + 64);
          if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v113 = "HeapAllocator.cpp";
            v114 = 1024;
            v115 = 1226;
            _os_log_impl(&dword_23A302000, v90, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [(mGapFreeCount < 1) || (mLookupSetFreeCount < 2) is true]: not enough memory in additional bookkeeping data to create a new gap!", buf, 0x12u);
          }

          v91 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v91, "not enough memory in additional bookkeeping data to create a new gap!");
        }

        v61 = a4;
        v109 = 0;
      }

      else
      {
        v61 = a4;
        v109 = 1;
      }

      if (!*(v9 + 20))
      {
        goto LABEL_91;
      }

      v62 = a5 + v58;
      v63 = GapBySize[2];
      v64 = *(v9 + 116);
      v65 = GapBySize - v64;
      v66 = *(v9 + 9);
      v67 = -306674912;
      v68 = 4;
      v69 = v62;
      do
      {
        v67 = Phase::sCRC32LookupTable[(v69 ^ v67)] ^ (v67 >> 8);
        v69 >>= 8;
        --v68;
      }

      while (v68);
      GapBySize = Phase::HeapAllocator::AddLookup(v9, v9 + 2 * (v67 & 0x3F) + 33, v62, v66 - v64);
      if (!GapBySize)
      {
LABEL_91:
        v85 = **(Phase::Logger::GetInstance(GapBySize) + 64);
        if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v113 = "HeapAllocator.cpp";
          v114 = 1024;
          v115 = 1234;
          _os_log_impl(&dword_23A302000, v85, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (OutOfMemory) [pBlock == nullptr is true]: we ran out of bookkeeping data to make allocations!", buf, 0x12u);
        }

        v86 = __cxa_allocate_exception(0x10uLL);
        _ZN5Phase11OutOfMemoryCI1St11logic_errorEPKc(v86, "we ran out of bookkeeping data to make allocations!");
      }

      --*(v9 + 20);
      v70 = *(v66 + 12);
      if (v70 == -1)
      {
        v71 = 0;
      }

      else
      {
        v71 = *(v9 + 116) + v70;
      }

      *(v9 + 9) = v71;
      *v66 = v62;
      *(v66 + 4) = v18;
      *(v66 + 8) = v63;
      *(v66 + 12) = v65;
      *(v66 + 24) = 0;
      *(v66 + 16) = 0;
      if (v63 == -1)
      {
        *(v9 + 5) = v66;
      }

      else
      {
        *(*(v9 + 116) + v63 + 12) = v66 - *(v9 + 116);
      }

      if (v65 == -1)
      {
        *(v9 + 6) = v66;
      }

      else
      {
        *(*(v9 + 116) + v65 + 8) = v66 - *(v9 + 116);
      }

      *(v66 + 24) = v61;
      *(v66 + 16) = a3;
      v72 = v57[1];
      if (v72 >= 0)
      {
        v73 = v57[1];
      }

      else
      {
        v73 = -v72;
      }

      if (v73 <= (a5 + v18))
      {
        Phase::HeapAllocator::RemoveGap(v9, v57, v111, v110);
      }

      else
      {
        *v57 += a5 + v18;
        Phase::HeapAllocator::ResizeGap(v9, v57, v111, v110, v73 - (a5 + v18));
      }

      if ((v109 & 1) == 0 && !Phase::HeapAllocator::AddGap(v9, *v66 - a5, a5, *(v66 + 8), v66 - *(v9 + 232)))
      {
        v96 = **(Phase::Logger::GetInstance(0) + 64);
        if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v113 = "HeapAllocator.cpp";
          v114 = 1024;
          v115 = 1259;
          v116 = 2048;
          v117 = 0;
          _os_log_impl(&dword_23A302000, v96, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (OutOfMemory) [pFrontGap == nullptr is true]: pFrontGap %p should be nullptr!\\n", buf, 0x1Cu);
        }

        v97 = __cxa_allocate_exception(0x10uLL);
        _ZN5Phase11OutOfMemoryCI1St11logic_errorEPKc(v97, "pFrontGap %p should be nullptr!\n");
      }

      v74 = *(v9 + 6);
      v75 = (*v66 << v74);
      v44 = (*(v9 + 2) + v75);
      v76 = *(v9 + 8);
      if (v76)
      {
        v77 = Phase::MemCompare8((*(v9 + 2) + v75), 0xCDCDCDCDCDCDCDCDLL, v18 << v74);
        if (!v77)
        {
          v98 = **(Phase::Logger::GetInstance(v77) + 64);
          if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v113 = "HeapAllocator.cpp";
            v114 = 1024;
            v115 = 1269;
            _os_log_impl(&dword_23A302000, v98, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (OutOfMemory) [!success is true]: MemCompare8 failed!\\n", buf, 0x12u);
          }

          v99 = __cxa_allocate_exception(0x10uLL);
          _ZN5Phase11OutOfMemoryCI1St11logic_errorEPKc(v99, "MemCompare8 failed!\n");
        }

        v76 = *(v9 + 8);
      }

      if ((v76 & 2) != 0)
      {
        Phase::Memset8(v44, 0, v18 << *(v9 + 6));
        v76 = *(v9 + 8);
      }

      if ((v76 & 4) != 0)
      {
        v78 = *(v9 + 6);
        v79 = 1 << v78;
        v80 = (v44 + ((v18 - 1) << v78));
        v81 = 0xEFEFEFEFEFEFEFEFLL;
LABEL_82:
        Phase::Memset8(v80, v81, v79);
        return v44;
      }

      return v44;
    }

    v20 = *(v9 + 118);
    if (!v20)
    {
LABEL_102:
      v92 = **(Phase::Logger::GetInstance(GapBySize) + 64);
      if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v113 = "HeapAllocator.cpp";
        v114 = 1024;
        v115 = 1210;
        _os_log_impl(&dword_23A302000, v92, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [pGap == nullptr is true]: no gap could be found to fit this allocation (and we weren't able to get additional memory from the backing allocator)!", buf, 0x12u);
      }

      v93 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v93, "no gap could be found to fit this allocation (and we weren't able to get additional memory from the backing allocator)!");
    }

    v21 = *(v9 + 6);
    if (v21)
    {
      LODWORD(v21) = -*(v21 + 4) & (*(v21 + 4) >> 31);
    }

    v22 = v17 + v18 >= v21;
    v23 = v17 + v18 - v21;
    if (v23 == 0 || !v22)
    {
      v100 = **(Phase::Logger::GetInstance(0) + 32);
      if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v113 = "HeapAllocator.cpp";
        v114 = 1024;
        v115 = 1200;
        _os_log_impl(&dword_23A302000, v100, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): InitializeWithoutBacking failed!", buf, 0x12u);
      }

      v102 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v102, "InitializeWithoutBacking failed!");
    }

    v24 = *MEMORY[0x277D85FA0];
    v25 = ((v23 << v16) + *MEMORY[0x277D85FA0] - 1) / *MEMORY[0x277D85FA0];
    v26 = *(v9 + 239);
    v27 = (*(v9 + 238) - v26) - v25;
    v28 = v27 & (v27 >> 63);
    v29 = v28 + v25;
    if (v28 + v25)
    {
      Phase::VirtualAllocator::CommitPages((v20 + v24 * v26), (v28 + v25));
      LODWORD(v26) = *(v9 + 239) + v29;
      *(v9 + 239) = v26;
      v20 = *(v9 + 118);
      v16 = *(v9 + 6);
    }

    v30 = v20 + v24 * v26;
    v31 = *(v9 + 2);
    v32 = (v30 - v31) >> v16;
    v33 = *(v9 + 7);
    v34 = v32 - v33;
    if (v32 <= v33)
    {
LABEL_47:
      GapBySize = Phase::HeapAllocator::FindGapBySize(v9, &v111, &v110, v18, v17);
      if (GapBySize)
      {
        goto LABEL_48;
      }

      goto LABEL_102;
    }

    if (*(v9 + 32))
    {
      Phase::Memset8((v31 + (v33 << v16)), 0xCDCDCDCDCDCDCDCDLL, (v34 << v16));
    }

    v35 = *(v9 + 6);
    if (v35)
    {
      v36 = *(v35 + 4);
      if (v36 < 0)
      {
        Phase::HeapAllocator::ResizeGap(v9, v35, 0, 0, v34 - v36);
        goto LABEL_46;
      }

      v37 = v35 - *(v9 + 232);
    }

    else
    {
      v37 = -1;
    }

    Phase::HeapAllocator::AddGap(v9, *(v9 + 7), v34, v37, 0xFFFFFFFF);
LABEL_46:
    *(v9 + 7) = v32;
    goto LABEL_47;
  }

  v38 = v9 + 800;
  v39 = *(v9 + v12 + 100);
  v40 = v12;
  if (!v39)
  {
    this = Phase::HeapAllocator::AllocateInternal(v9, 0x400uLL, "Internal Small Allocation Bundle", 0, 0x400uLL);
    if (this)
    {
      v50 = this - *(v9 + 97);
      v51 = v50 >> 10;
      v52 = *(v9 + 98);
      v53 = v50 >> 16;
      v54 = *(v52 + 8 * v53);
      v55 = 1 << v51;
      if ((v55 & v54) != 0)
      {
        v107 = **(Phase::Logger::GetInstance(this) + 64);
        if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v113 = "HeapAllocator.cpp";
          v114 = 1024;
          v115 = 2254;
          _os_log_impl(&dword_23A302000, v107, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [(mSmallBundleAllocBits[bundleIndex >> 6] & (0x1ULL << (bundleIndex & 0x3f))) != 0 is true]: FindGapLookup() failed!\\n", buf, 0x12u);
        }

        v108 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v108, "FindGapLookup() failed!\n");
      }

      *(v52 + 8 * v53) = v55 | v54;
      v39 = this + 992;
      v56 = (v14 | 0x10u) << v15;
      *(this + 496) = v56;
      *(this + 994) = 0x3E0u / v56;
      *(this + 995) = 0x3E0u / v56;
      *(this + 125) = 0;
      *(this + 127) = 0;
      *(this + 126) = 0;
      *&v38[8 * v40] = this + 992;
      *(v9 + v40 + 108) = this + 992;
      if (*(v9 + 32))
      {
        Phase::Memset8(this, 0xCDCDCDCDCDCDCDCDLL, (v56 & 0xFFF8) * (0x3E0u / v56));
        v39 = *&v38[8 * v40];
      }

      goto LABEL_32;
    }

    return 0;
  }

LABEL_32:
  v41 = *(v39 + 8);
  v42 = __clz(~v41);
  if (v42 >= *(v39 + 2))
  {
    v103 = **(Phase::Logger::GetInstance(this) + 64);
    if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v113 = "HeapAllocator.cpp";
      v114 = 1024;
      v115 = 2283;
      _os_log_impl(&dword_23A302000, v103, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [freeIndex >= pBundle->mBlockTotalCount is true]: FindGapLookup() failed!\\n", buf, 0x12u);
    }

    v104 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v104, "FindGapLookup() failed!\n");
  }

  v43 = *v39;
  v44 = ((v39 & 0xFFFFFFFFFFFFFC00) + v42 * v43);
  v45 = 0x8000000000000000 >> v42;
  if (v41 == -1)
  {
    v45 = 0;
  }

  *(v39 + 8) = v45 | v41;
  v46 = *(v39 + 3) - 1;
  *(v39 + 3) = v46;
  if (!v46)
  {
    v47 = v9 + 8 * v40;
    if (v39 == *(v47 + 108))
    {
      v48 = 0;
      v49 = v47 + 864;
    }

    else
    {
      v48 = *(v39 + 16);
      v49 = (v48 + 24);
    }

    *&v38[8 * v40] = v48;
    *v49 = 0;
    *(v39 + 16) = 0;
    *(v39 + 24) = 0;
  }

  v83 = *(v9 + 8);
  if (v83)
  {
    v84 = Phase::MemCompare8(v44, 0xCDCDCDCDCDCDCDCDLL, v43);
    if (!v84)
    {
      v105 = **(Phase::Logger::GetInstance(v84) + 64);
      if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v113 = "HeapAllocator.cpp";
        v114 = 1024;
        v115 = 2314;
        _os_log_impl(&dword_23A302000, v105, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [!success is true]: MemCompare8 failed!\\n", buf, 0x12u);
      }

      v106 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v106, "MemCompare8 failed!\n");
    }

    v83 = *(v9 + 8);
  }

  if ((v83 & 2) != 0)
  {
    v79 = *v39;
    v80 = v44;
    v81 = 0;
    goto LABEL_82;
  }

  return v44;
}

Phase *Phase::HeapAllocator::Allocate(Phase::HeapAllocator *this, unint64_t a2, const char *a3, int a4, unint64_t a5)
{
  v10 = *(this + 8);
  if ((v10 & 0x10) != 0)
  {
    Phase::SpinLock::Lock(this);
  }

  result = Phase::HeapAllocator::AllocateInternal(this, a2, a3, a4, a5);
  if ((v10 & 0x10) != 0)
  {
    atomic_store(0, this);
  }

  return result;
}

void sub_23A41B8A0(_Unwind_Exception *a1)
{
  if ((v2 & 0x10) != 0)
  {
    atomic_store(0, v1);
  }

  _Unwind_Resume(a1);
}

uint64_t Phase::HeapAllocator::FreeInternal(Phase::HeapAllocator *this, Phase *a2)
{
  v95 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 0;
  }

  v2 = this;
  v3 = 0;
  v4 = *(this + 6);
  v5 = this + 800;
  v6 = this + 864;
  while (1)
  {
    v7 = (a2 - *(v2 + 2)) >> v4;
    if (v7 < 0 || v7 >= *(v2 + 7))
    {
      v62 = **(Phase::Logger::GetInstance(this) + 32);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        v63 = *(v2 + 1);
        if (!v63)
        {
          v63 = "<Unnamed>";
        }

        *buf = 136315650;
        v90 = "HeapAllocator.cpp";
        v91 = 1024;
        v92 = 1303;
        v93 = 2080;
        v94 = v63;
        _os_log_impl(&dword_23A302000, v62, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument): Something tried to free an allocation from heap '%s' that was outside of its memory range.\\n", buf, 0x1Cu);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::invalid_argument::invalid_argument[abi:ne200100](exception, "Something tried to free an allocation from heap '%s' that was outside of its memory range.\n");
    }

    v8 = *(v2 + 98);
    if (!v8)
    {
      break;
    }

    v9 = *(v2 + 97);
    v10 = a2 - v9;
    if (*(v2 + 198) <= (a2 - v9) >> 10)
    {
      break;
    }

    v11 = v10 >> 10;
    if (((*(v8 + 8 * (v10 >> 16)) >> (v10 >> 10)) & 1) == 0)
    {
      break;
    }

    v12 = v9 + (v11 << 10);
    v13 = *(v12 + 992);
    if ((v13 - 193) <= 0xFFFFFF4E)
    {
      v65 = **(Phase::Logger::GetInstance(this) + 32);
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        v66 = *(v2 + 1);
        if (!v66)
        {
          v66 = "<Unnamed>";
        }

        *buf = 136315650;
        v90 = "HeapAllocator.cpp";
        v91 = 1024;
        v92 = 2340;
        v93 = 2080;
        v94 = v66;
        _os_log_impl(&dword_23A302000, v65, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Tried to free a bundled small allocation from heap %s, but the bundle is malformed.\\n", buf, 0x1Cu);
      }

      v67 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v67, "Tried to free a bundled small allocation from heap %s, but the bundle is malformed.\n");
    }

    v14 = (a2 - v12) / v13;
    if (a2 != (v12 + v14 * v13))
    {
      v68 = **(Phase::Logger::GetInstance(this) + 32);
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        v69 = *(v2 + 1);
        if (!v69)
        {
          v69 = "<Unnamed>";
        }

        *buf = 136315650;
        v90 = "HeapAllocator.cpp";
        v91 = 1024;
        v92 = 2353;
        v93 = 2080;
        v94 = v69;
        _os_log_impl(&dword_23A302000, v68, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Tried to free a bundled small allocation from heap %s, but the address is misaligned.\\n", buf, 0x1Cu);
      }

      v70 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v70, "Tried to free a bundled small allocation from heap %s, but the address is misaligned.\n");
    }

    v15 = v12 + 992;
    v16 = 0x8000000000000000 >> v14;
    v17 = *(v12 + 1000);
    if ((v17 & v16) == 0)
    {
      v71 = **(Phase::Logger::GetInstance(this) + 64);
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v90 = "HeapAllocator.cpp";
        v91 = 1024;
        v92 = 2361;
        _os_log_impl(&dword_23A302000, v71, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [!(pBundle->mBlockAllocBits & blockMask) is true]: MemCompare8 failed!\\n", buf, 0x12u);
      }

      v72 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v72, "MemCompare8 failed!\n");
    }

    *(v12 + 1000) = v17 & ~v16;
    v18 = *(v12 + 995);
    *(v12 + 995) = v18 + 1;
    v19 = __clz(v13 - 1);
    if ((v13 - 1) >= 0x10)
    {
      v20 = (((2 * v19) ^ 0x3E) & 0xFFFFFFFE | ((v13 - 1) >> (30 - v19)) & 1) - 7;
    }

    else
    {
      v20 = 0;
    }

    if (*(v12 + 994) != (v18 + 1) || *&v5[8 * v20] == v15)
    {
      if (!v18)
      {
        v40 = *&v6[8 * v20];
        if (v40)
        {
          *(v12 + 1016) = v40;
          v41 = (*&v6[8 * v20] + 16);
        }

        else
        {
          v41 = &v5[8 * v20];
        }

        *v41 = v15;
        *&v6[8 * v20] = v15;
      }

      if (*(v2 + 32))
      {
        Phase::Memset8(a2, 0xCDCDCDCDCDCDCDCDLL, v13);
        return 0;
      }

      goto LABEL_61;
    }

    v21 = *(v12 + 1008);
    this = *(v12 + 1016);
    *(this + 2) = v21;
    v22 = &v6[8 * v20];
    v23 = (v21 + 24);
    if (*v22 == v15)
    {
      v24 = v22;
    }

    else
    {
      v24 = v23;
    }

    *v24 = this;
    v3 = 1;
    *(*(v2 + 98) + 8 * (v11 >> 6)) &= ~(1 << v11);
    a2 = v12;
    if (!v12)
    {
      return 0;
    }
  }

  v25 = -306674912;
  v26 = 4;
  v27 = -306674912;
  v28 = (a2 - *(v2 + 2)) >> v4;
  do
  {
    v27 = Phase::sCRC32LookupTable[(v28 ^ v27)] ^ (v27 >> 8);
    LODWORD(v28) = v28 >> 8;
    --v26;
  }

  while (v26);
  v29 = *(v2 + 2 * (v27 & 0x3F) + 33);
  if (v29 == -1)
  {
    goto LABEL_107;
  }

  v30 = *(v2 + 116);
  while (1)
  {
    v31 = v29 + v30;
    v32 = *(v29 + v30 + 112);
    v29 = *(v29 + v30 + 116);
    if (v32)
    {
      break;
    }

LABEL_29:
    if (v29 == 0xFFFFFFFFLL)
    {
      goto LABEL_107;
    }
  }

  v33 = 0;
  v34 = (v31 + 4);
  while (*(v34 - 1) != v7)
  {
    ++v33;
    v34 += 2;
    if (v32 == v33)
    {
      goto LABEL_29;
    }
  }

  v35 = (*v34 + v30);
  if (!v35)
  {
LABEL_107:
    v73 = **(Phase::Logger::GetInstance(this) + 32);
    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      v74 = *(v2 + 1);
      if (!v74)
      {
        v74 = "<Unnamed>";
      }

      *buf = 136315650;
      v90 = "HeapAllocator.cpp";
      v91 = 1024;
      v92 = 1328;
      v93 = 2080;
      v94 = v74;
      _os_log_impl(&dword_23A302000, v73, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument): Something tried to free an allocation from heap '%s' that did not exist in the heap.\\n", buf, 0x1Cu);
    }

    v75 = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](v75, "Something tried to free an allocation from heap '%s' that did not exist in the heap.\n");
  }

  Phase::HeapAllocator::AllocateBookkeeping(v2);
  if ((*(v2 + 32) & 4) != 0)
  {
    v36 = Phase::MemCompare8((*(v2 + 2) + ((*v35 + v35[1] - 1) << *(v2 + 6))), 0xEFEFEFEFEFEFEFEFLL, 1 << *(v2 + 6));
    if (!v36)
    {
      v78 = **(Phase::Logger::GetInstance(v36) + 64);
      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v90 = "HeapAllocator.cpp";
        v91 = 1024;
        v92 = 1340;
        _os_log_impl(&dword_23A302000, v78, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [!success is true]: MemCompare8 failed!\\n", buf, 0x12u);
      }

      v79 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v79, "MemCompare8 failed!\n");
    }
  }

  v37 = v35[2];
  v38 = v35[3];
  if (v37 == -1)
  {
    v39 = 0;
  }

  else
  {
    v39 = *(v2 + 116) + v37;
  }

  if (v38 == -1)
  {
    v42 = 0;
  }

  else
  {
    v42 = (*(v2 + 116) + v38);
  }

  v43 = v35[6];
  v44 = *v35;
  v86 = v35[1];
  if ((!v39 || *(v39 + 4) >= 1) && (!v42 || v42[1] >= 1) && (!*(v2 + 28) || *(v2 + 32) < 2u))
  {
LABEL_61:
    v43 = 0;
    goto LABEL_86;
  }

  v45 = *(v2 + 116);
  if (*v34 != v35 - v45)
  {
    v76 = **(Phase::Logger::GetInstance(v36) + 64);
    if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v90 = "HeapAllocator.cpp";
      v91 = 1024;
      v92 = 1763;
      _os_log_impl(&dword_23A302000, v76, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [pInLookupSet->mLookups[inLookupIndex].mValue != ToOffset(pInBlock) is true]: FindGapLookup() failed!\\n", buf, 0x12u);
    }

    v77 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v77, "FindGapLookup() failed!\n");
  }

  if (v37 == -1)
  {
    v47 = v45 + v38;
    if (v38 == -1)
    {
      v48 = 0;
    }

    else
    {
      v48 = v45 + v38;
    }

    *(v2 + 5) = v48;
    if (v38 != -1)
    {
      goto LABEL_57;
    }

    v46 = 0;
  }

  else
  {
    v46 = v45 + v37;
    *(v45 + v37 + 12) = v38;
    if (v38 != -1)
    {
      v47 = v45 + v38;
LABEL_57:
      *(v47 + 8) = v37;
      goto LABEL_65;
    }
  }

  *(v2 + 6) = v46;
LABEL_65:
  v85 = v44;
  v82 = v37;
  v83 = v42;
  v84 = v39;
  *v35 = 0;
  v35[2] = -1;
  v49 = *(v2 + 9);
  v50 = v49 - v45;
  if (!v49)
  {
    v50 = -1;
  }

  v35[3] = v50;
  *(v2 + 9) = v35;
  ++*(v2 + 20);
  v51 = *(v34 - 1);
  v52 = 4;
  do
  {
    v25 = Phase::sCRC32LookupTable[(v51 ^ v25)] ^ (v25 >> 8);
    v51 >>= 8;
    --v52;
  }

  while (v52);
  Phase::HeapAllocator::RemoveLookup(v2, v2 + 2 * (v25 & 0x3F) + 33, v31, v33);
  if (*(v2 + 32))
  {
    Phase::Memset8((*(v2 + 2) + (v85 << *(v2 + 6))), 0xCDCDCDCDCDCDCDCDLL, v86 << *(v2 + 6));
  }

  v53 = v84;
  if (!v84 || (v54 = *(v84 + 4), (v54 & 0x80000000) == 0))
  {
    v53 = v83;
    if (!v83 || (v55 = v83[1], (v55 & 0x80000000) == 0))
    {
      Phase::HeapAllocator::AddGap(v2, v85, v86, v82, v38);
      goto LABEL_86;
    }

    *v83 -= v86;
    v60 = v86 - v55;
    v59 = v2;
    goto LABEL_85;
  }

  v56 = v86 - v54;
  if (v83)
  {
    v57 = v83[1];
    if (v57 < 0)
    {
      v88 = 0;
      v87 = 0;
      GapLookup = Phase::HeapAllocator::FindGapLookup(v2, &v88, &v87, v83);
      if ((GapLookup & 1) == 0)
      {
        v80 = **(Phase::Logger::GetInstance(GapLookup) + 64);
        if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v90 = "HeapAllocator.cpp";
          v91 = 1024;
          v92 = 1389;
          _os_log_impl(&dword_23A302000, v80, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [!result is true]: FindGapLookup() failed!\\n", buf, 0x12u);
        }

        v81 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v81, "FindGapLookup() failed!\n");
      }

      v56 -= v57;
      Phase::HeapAllocator::RemoveGap(v2, v83, v88, v87);
      v53 = v84;
      v54 = *(v84 + 4);
    }
  }

  if (v54 < 0)
  {
    v54 = -v54;
  }

  if (v54 != v56)
  {
    v59 = v2;
    v60 = v56;
LABEL_85:
    Phase::HeapAllocator::ResizeGap(v59, v53, 0, 0, v60);
  }

LABEL_86:
  if (v3)
  {
    return 0;
  }

  return v43;
}

void Phase::HeapAllocator::AllocateBookkeeping(Phase::HeapAllocator *this)
{
  do
  {
    while (1)
    {
      if (*(this + 20) >= 4u)
      {
        if (*(this + 28) >= 4u)
        {
          if (*(this + 32) >= 6u)
          {
            return;
          }

          v5 = 0;
          goto LABEL_19;
        }

        v5 = 0;
      }

      else
      {
        v2 = *(this + 234);
        if (v2 + 688 <= *(this + 235))
        {
          Internal = (*(this + 116) + v2);
          *(this + 234) = v2 + 688;
          v4 = 1;
        }

        else
        {
          Internal = Phase::HeapAllocator::AllocateInternal(this, 0x560uLL, "Internal Bookkeeping", 0, 8uLL);
          v4 = 2;
        }

        v5 = Internal != 0;
        if (Internal)
        {
          do
          {
            Phase::HeapAllocator::AddBlockSet(this, Internal);
            Internal += 688;
            --v4;
          }

          while (v4);
        }

        if (*(this + 28) > 3u)
        {
          goto LABEL_18;
        }
      }

      v6 = *(this + 234);
      if (v6 + 512 <= *(this + 235))
      {
        v7 = (*(this + 116) + v6);
        *(this + 234) = v6 + 512;
        v8 = 1;
        if (!v7)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v7 = Phase::HeapAllocator::AllocateInternal(this, 0x400uLL, "Internal Bookkeeping", 0, 8uLL);
        v8 = 2;
        if (!v7)
        {
          goto LABEL_18;
        }
      }

      do
      {
        Phase::HeapAllocator::AddGapSet(this, v7);
        v7 += 32;
        --v8;
      }

      while (v8);
      v5 = 1;
LABEL_18:
      if (*(this + 32) > 5u)
      {
        goto LABEL_26;
      }

LABEL_19:
      v9 = *(this + 234);
      if (v9 + 128 <= *(this + 235))
      {
        break;
      }

      v10 = 8;
      v11 = Phase::HeapAllocator::AllocateInternal(this, 0x400uLL, "Internal Bookkeeping", 0, 8uLL);
      if (!v11)
      {
        goto LABEL_26;
      }

      do
      {
LABEL_21:
        v12 = Phase::HeapAllocator::AddLookupSet(this, v11);
        v13 = *(this + 15);
        if (v13)
        {
          v12[29] = v13 - *(this + 232);
        }

        v11 += 32;
        *(this + 15) = v12;
        ++*(this + 32);
        --v10;
      }

      while (v10);
    }

    v11 = (*(this + 116) + v9);
    *(this + 234) = v9 + 128;
    v10 = 1;
    if (v11)
    {
      goto LABEL_21;
    }

LABEL_26:
    ;
  }

  while (v5);
}

uint64_t Phase::HeapAllocator::FindGapLookup(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4)
{
  v4 = *(a4 + 4);
  if (v4 >= 0)
  {
    v5 = *(a4 + 4);
  }

  else
  {
    v5 = -v4;
  }

  v6 = 31 - __clz(v5);
  if (v4)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 8 * (((15 - v7) & ((15 - v7) >> 31)) + v7) + 644);
  if (v8 == -1)
  {
    return 0;
  }

  v10 = *(a1 + 928);
  while (1)
  {
    v11 = v8 + v10;
    v12 = *(v8 + v10 + 112);
    v8 = *(v8 + v10 + 116);
    if (v12)
    {
      break;
    }

LABEL_14:
    if (v8 == 0xFFFFFFFFLL)
    {
      return 0;
    }
  }

  v13 = 0;
  v14 = 4;
  while (*(v11 + v14) != a4 - v10)
  {
    ++v13;
    v14 += 8;
    if (v12 == v13)
    {
      goto LABEL_14;
    }
  }

  *a2 = v11;
  *a3 = v13;
  return 1;
}

Phase::Logger *Phase::HeapAllocator::RemoveGap(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = (a3 + 8 * a4);
  v5 = *(a1 + 928);
  if (v4[1] != a2 - v5)
  {
    v19 = **(Phase::Logger::GetInstance(a1) + 64);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v21 = 136315394;
      v22 = "HeapAllocator.cpp";
      v23 = 1024;
      v24 = 1930;
      _os_log_impl(&dword_23A302000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [pInLookupSet->mLookups[inLookupIndex].mValue != ToOffset(pInGap) is true]: FindGapLookup() failed!\\n", &v21, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "FindGapLookup() failed!\n");
  }

  v6 = *(a2 + 8);
  if (v6 == -1)
  {
    v10 = *(a2 + 12);
    v9 = v10 + v5;
    v11 = v10 == -1;
    if (v10 == -1)
    {
      v12 = 0;
    }

    else
    {
      v12 = v10 + v5;
    }

    *(a1 + 40) = v12;
    if (!v11)
    {
      goto LABEL_9;
    }

    v7 = 0;
  }

  else
  {
    v7 = v6 + v5;
    v8 = *(a2 + 12);
    *(v6 + v5 + 12) = v8;
    if (v8 != -1)
    {
      v9 = v8 + v5;
LABEL_9:
      *(v9 + 8) = v6;
      goto LABEL_12;
    }
  }

  *(a1 + 48) = v7;
LABEL_12:
  *a2 = 0;
  v13 = *(a1 + 104);
  v14 = v13 - v5;
  if (!v13)
  {
    v14 = -1;
  }

  *(a2 + 8) = 0;
  *(a2 + 12) = v14;
  *(a1 + 104) = a2;
  ++*(a1 + 112);
  v15 = *v4;
  v16 = 31 - __clz(v15);
  if (v15)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  return Phase::HeapAllocator::RemoveLookup(a1, (a1 + 8 * (((15 - v17) & ((15 - v17) >> 31)) + v17) + 644), a3, a4);
}

uint64_t Phase::HeapAllocator::ResizeGap(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v7 = result;
  v25 = *MEMORY[0x277D85DE8];
  v20 = a3;
  v19 = a4;
  if (!a3)
  {
    result = Phase::HeapAllocator::FindGapLookup(result, &v20, &v19, a2);
    if (!result)
    {
      v17 = **(Phase::Logger::GetInstance(result) + 32);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v22 = "HeapAllocator.cpp";
        v23 = 1024;
        v24 = 1986;
        _os_log_impl(&dword_23A302000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): FindGapLookup failed!", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "FindGapLookup failed!");
    }

    a3 = v20;
    a4 = v19;
  }

  if (*(a3 + 8 * a4 + 4) != a2 - *(v7 + 232))
  {
    v13 = **(Phase::Logger::GetInstance(result) + 64);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "HeapAllocator.cpp";
      v23 = 1024;
      v24 = 1995;
      _os_log_impl(&dword_23A302000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [pInLookupSet->mLookups[inLookupIndex].mValue != ToOffset(pInGap) is true]: FindGapLookup() failed!\\n", buf, 0x12u);
    }

    v14 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v14, "FindGapLookup() failed!\n");
  }

  v8 = *(a2 + 4);
  if (v8 >= 0)
  {
    v9 = *(a2 + 4);
  }

  else
  {
    v9 = -v8;
  }

  v10 = vbic_s8(vsub_s32(0x1F0000001FLL, vclz_s32(__PAIR64__(a5, v9))), vceqz_s32(__PAIR64__(a5, v8)));
  v11 = vadd_s32(vmin_s32(vsub_s32(0xF0000000FLL, v10), 0), v10);
  v12 = v11.i32[1];
  if (v11.i32[0] == v11.i32[1])
  {
    *(a3 + 8 * a4) = a5;
  }

  else
  {
    Phase::HeapAllocator::RemoveLookup(v7, v7 + 2 * v11.i32[0] + 161, a3, a4);
    result = Phase::HeapAllocator::AddLookup(v7, v7 + 2 * v12 + 161, a5, a2 - *(v7 + 232));
    if ((result & 1) == 0)
    {
      v15 = **(Phase::Logger::GetInstance(result) + 32);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v22 = "HeapAllocator.cpp";
        v23 = 1024;
        v24 = 2013;
        _os_log_impl(&dword_23A302000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): AddLookup failed!", buf, 0x12u);
      }

      v16 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v16, "AddLookup failed!");
    }
  }

  *(a2 + 4) = -a5;
  return result;
}

_DWORD *Phase::HeapAllocator::FindGapBySize(uint64_t a1, unsigned int **a2, unsigned int *a3, unsigned int a4, int a5)
{
  v5 = 31 - __clz(a4);
  if (!a4)
  {
    v5 = 0;
  }

  v6 = ((15 - v5) & ((15 - v5) >> 31)) + v5;
  if (v6 > 0xF)
  {
    return 0;
  }

  v7 = (a1 + 8 * v6 + 644);
  v8 = -1;
  do
  {
    v9 = *v7;
    if (v9 != -1)
    {
      v19 = 0;
      do
      {
        v10 = (*(a1 + 928) + v9);
        v11 = v10[28];
        v9 = v10[29];
        if (v11)
        {
          v12 = 0;
          v13 = v10;
          do
          {
            v14 = *v13;
            if (*v13 >= a4 && v14 < v8)
            {
              v16 = (*(a1 + 928) + v13[1]);
              if (!a5 || v14 >= a5 - 1 + a4 || (v17 = (*(a1 + 16) >> *(a1 + 24)) + *v16, v14 >= ((v17 + a5 - 1) & -a5) - v17 + a4))
              {
                *a2 = v10;
                *a3 = v12;
                v8 = *v13;
                if (*v13 == a4)
                {
                  return v16;
                }

                v11 = v10[28];
                v19 = v16;
              }
            }

            ++v12;
            v13 += 2;
          }

          while (v12 < v11);
        }
      }

      while (v9 != 0xFFFFFFFFLL);
      if (v19)
      {
        return v19;
      }
    }

    ++v6;
    v7 += 2;
  }

  while (v6 != 16);
  return 0;
}

uint64_t Phase::HeapAllocator::AddLookup(uint64_t a1, _DWORD *a2, int a3, int a4)
{
  v4 = a2[1];
  if (v4 == -1)
  {
    v13 = *(a1 + 120);
    if (v13)
    {
      v14 = *(v13 + 116);
      if (v14 == -1)
      {
        v15 = 0;
      }

      else
      {
        v15 = *(a1 + 928) + v14;
      }

      *(a1 + 120) = v15;
      --*(a1 + 128);
      *&v18 = -1;
      *(&v18 + 1) = -1;
      *(v13 + 80) = v18;
      *(v13 + 96) = v18;
      *(v13 + 48) = v18;
      *(v13 + 64) = v18;
      *(v13 + 16) = v18;
      *(v13 + 32) = v18;
      *v13 = v18;
      *(v13 + 120) = -1;
      v19 = v13 - *(a1 + 928);
      *a2 = v19;
      a2[1] = v19;
      *(v13 + 112) = 0xFFFFFFFF00000001;
      *v13 = a3;
      *(v13 + 4) = a4;
      return 1;
    }

    return 0;
  }

  v5 = *(a1 + 928);
  v6 = v5 + v4;
  v7 = *(v6 + 112);
  if (v7 >= 0xE)
  {
    v8 = *(a1 + 120);
    if (v8)
    {
      v9 = *(v8 + 116);
      v10 = v9 + v5;
      if (v9 == -1)
      {
        v10 = 0;
      }

      *(a1 + 120) = v10;
      --*(a1 + 128);
      *&v11 = -1;
      *(&v11 + 1) = -1;
      *(v8 + 32) = v11;
      *(v8 + 48) = v11;
      *(v8 + 64) = v11;
      *(v8 + 80) = v11;
      *(v8 + 96) = v11;
      *v8 = v11;
      *(v8 + 16) = v11;
      v12 = *(a1 + 928);
      *(v8 + 120) = v6 - v12;
      a2[1] = v8 - v12;
      *(v8 + 112) = 0xFFFFFFFF00000001;
      *(v6 + 116) = v8 - v12;
      *v8 = a3;
      *(v8 + 4) = a4;
      return 1;
    }

    return 0;
  }

  v16 = (v6 + 8 * v7);
  *v16 = a3;
  v16[1] = a4;
  *(v6 + 112) = v7 + 1;
  return 1;
}

Phase::Logger *Phase::HeapAllocator::RemoveLookup(Phase::Logger *result, _DWORD *a2, uint64_t a3, unsigned int a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a3 + 112);
  if (v4 == 1)
  {
    if (a4)
    {
      v9 = **(Phase::Logger::GetInstance(result) + 64);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v13 = 136315394;
        v14 = "HeapAllocator.cpp";
        v15 = 1024;
        v16 = 1605;
        _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [inLookupIndex != 0 is true]: FindGapLookup() failed!\\n", &v13, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "FindGapLookup() failed!\n");
    }

    if (a2[1] != a3 - *(result + 232))
    {
      v11 = **(Phase::Logger::GetInstance(result) + 64);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = 136315394;
        v14 = "HeapAllocator.cpp";
        v15 = 1024;
        v16 = 1609;
        _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [pLookupList->mTailOffset != ToOffset(pLookupSet) is true]: FindGapLookup() failed!\\n", &v13, 0x12u);
      }

      v12 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v12, "FindGapLookup() failed!\n");
    }
  }

  else
  {
    if (v4 == a4 + 1 && *(a3 + 116) == -1)
    {
      *(a3 + 8 * a4) = 0;
      *(a3 + 112) = v4 - 1;
      return result;
    }

    v6 = *(result + 116) + a2[1];
    v7 = *(v6 + 112) - 1;
    v8 = (v6 + 8 * v7);
    *(a3 + 8 * a4) = *v8;
    *v8 = 0;
    *(v6 + 112) = v7;
    if (v7)
    {
      return result;
    }
  }

  return Phase::HeapAllocator::RemoveLastLookup(result, a2);
}

uint64_t Phase::HeapAllocator::RemoveLastLookup(uint64_t result, _DWORD *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = a2[1];
  v3 = *(result + 928);
  v4 = v3 + v2;
  v5 = *(v3 + v2 + 120);
  if (v5 == -1)
  {
    if (*a2 != v2)
    {
      v11 = **(Phase::Logger::GetInstance(result) + 64);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = 136315394;
        v14 = "HeapAllocator.cpp";
        v15 = 1024;
        v16 = 1662;
        _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [pInLookupList->mHeadOffset != pInLookupList->mTailOffset is true]: FindGapLookup() failed!\\n", &v13, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "FindGapLookup() failed!\n");
    }

    v6 = *(v4 + 116);
    *a2 = v6;
  }

  else
  {
    v6 = *(v4 + 116);
    *(v5 + v3 + 116) = v6;
  }

  if (v6 != -1)
  {
    v9 = **(Phase::Logger::GetInstance(result) + 64);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "HeapAllocator.cpp";
      v15 = 1024;
      v16 = 1668;
      _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [pLookupSet->mNextOffset != kInvalidOffset is true]: FindGapLookup() failed!\\n", &v13, 0x12u);
    }

    v10 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v10, "FindGapLookup() failed!\n");
  }

  a2[1] = v5;
  *v4 = 0;
  *(v4 + 112) = 0;
  *(v4 + 120) = -1;
  v7 = *(result + 120);
  v8 = v7 - v3;
  if (!v7)
  {
    v8 = -1;
  }

  *(v4 + 116) = v8;
  *(result + 120) = v4;
  ++*(result + 128);
  return result;
}

atomic_uchar *Phase::SpinLock::Lock(atomic_uchar *this)
{
  if (atomic_exchange_explicit(this, 1u, memory_order_acquire))
  {
    v1 = this;
    do
    {
      while ((*v1 & 1) != 0)
      {
        this = sched_yield();
      }
    }

    while ((atomic_exchange_explicit(v1, 1u, memory_order_acquire) & 1) != 0);
  }

  return this;
}

uint64_t *std::unique_ptr<Phase::Controller::HrirAsset::Implementation>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v4 = (v2 + 64);
    std::vector<Phase::Controller::HrirAsset::Implementation::Node>::__destroy_vector::operator()[abi:ne200100](&v4);
    v4 = (v2 + 40);
    std::vector<Phase::Controller::HrirAsset::Implementation::Dimension>::__destroy_vector::operator()[abi:ne200100](&v4);
    if (*(v2 + 39) < 0)
    {
      operator delete(*(v2 + 16));
    }

    MEMORY[0x23EE864A0](v2, 0x1032C40B7D69034);
  }

  return a1;
}

CFTypeID applesauce::CF::make_DictionaryRef@<X0>(CFDataRef *this@<X0>, void *a2@<X8>)
{
  if (!*this)
  {
    goto LABEL_10;
  }

  v4 = CFPropertyListCreateWithData(0, *this, 0, 0, 0);
  if (!v4)
  {
    result = CFDictionaryGetTypeID();
    if (!result)
    {
      *a2 = 0;
      return result;
    }

LABEL_10:
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  v5 = v4;
  v6 = CFGetTypeID(v4);
  if (v6 != CFDictionaryGetTypeID())
  {
    CFRelease(v5);
    goto LABEL_10;
  }

  *a2 = v5;
  v7 = CFGetTypeID(v5);
  result = CFDictionaryGetTypeID();
  if (v7 != result)
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v9, "Could not construct");
  }

  return result;
}

void sub_23A41D448(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

const void **applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void std::vector<Phase::Controller::HrirAsset::Implementation::Node>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<Phase::Controller::HrirAsset::Implementation::Node>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<Phase::Controller::HrirAsset::Implementation::Node>::__base_destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    v5 = v4 - 3;
    do
    {
      v8 = v5;
      std::vector<Phase::Controller::HrirAsset::Implementation::Node>::__destroy_vector::operator()[abi:ne200100](&v8);
      v6 = *(v5 - 3);
      if (v6)
      {
        *(v5 - 2) = v6;
        operator delete(v6);
      }

      v8 = v5 - 6;
      std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v8);
      v7 = v5 - 7;
      v5 -= 10;
    }

    while (v7 != a2);
  }

  *(a1 + 8) = a2;
}

void std::vector<Phase::Controller::HrirAsset::Implementation::Dimension>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<Phase::Controller::HrirAsset::Implementation::Dimension>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<Phase::Controller::HrirAsset::Implementation::Dimension>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 17);
    v3 -= 5;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

vDSP_DFT_Setup Phase::DspLayer::IConvolver::GetFftFwd(Phase::DspLayer::IConvolver *this, int a2)
{
  if (a2 > 2047)
  {
    if (a2 >= 0x2000)
    {
      if (a2 >= 0x4000)
      {
        if (a2 == 0x4000)
        {
          v2 = &Phase::DspLayer::IConvolver::mFFTFwd_16384;
          result = Phase::DspLayer::IConvolver::mFFTFwd_16384;
          if (Phase::DspLayer::IConvolver::mFFTFwd_16384)
          {
            return result;
          }

          v4 = 0x4000;
          goto LABEL_52;
        }

        if (a2 == 30720)
        {
          v2 = &Phase::DspLayer::IConvolver::mFFTFwd_30720;
          result = Phase::DspLayer::IConvolver::mFFTFwd_30720;
          if (Phase::DspLayer::IConvolver::mFFTFwd_30720)
          {
            return result;
          }

          v4 = 30720;
          goto LABEL_52;
        }
      }

      else
      {
        if (a2 == 0x2000)
        {
          v2 = &Phase::DspLayer::IConvolver::mFFTFwd_8192;
          result = Phase::DspLayer::IConvolver::mFFTFwd_8192;
          if (Phase::DspLayer::IConvolver::mFFTFwd_8192)
          {
            return result;
          }

          v4 = 0x2000;
          goto LABEL_52;
        }

        if (a2 == 15360)
        {
          v2 = &Phase::DspLayer::IConvolver::mFFTFwd_15360;
          result = Phase::DspLayer::IConvolver::mFFTFwd_15360;
          if (Phase::DspLayer::IConvolver::mFFTFwd_15360)
          {
            return result;
          }

          v4 = 15360;
          goto LABEL_52;
        }
      }
    }

    else if (a2 > 4095)
    {
      if (a2 == 4096)
      {
        v2 = &Phase::DspLayer::IConvolver::mFFTFwd_4096;
        result = Phase::DspLayer::IConvolver::mFFTFwd_4096;
        if (Phase::DspLayer::IConvolver::mFFTFwd_4096)
        {
          return result;
        }

        v4 = 4096;
        goto LABEL_52;
      }

      if (a2 == 7680)
      {
        v2 = &Phase::DspLayer::IConvolver::mFFTFwd_7680;
        result = Phase::DspLayer::IConvolver::mFFTFwd_7680;
        if (Phase::DspLayer::IConvolver::mFFTFwd_7680)
        {
          return result;
        }

        v4 = 7680;
        goto LABEL_52;
      }
    }

    else
    {
      if (a2 == 2048)
      {
        v2 = &Phase::DspLayer::IConvolver::mFFTFwd_2048;
        result = Phase::DspLayer::IConvolver::mFFTFwd_2048;
        if (Phase::DspLayer::IConvolver::mFFTFwd_2048)
        {
          return result;
        }

        v4 = 2048;
        goto LABEL_52;
      }

      if (a2 == 3840)
      {
        v2 = &Phase::DspLayer::IConvolver::mFFTFwd_3840;
        result = Phase::DspLayer::IConvolver::mFFTFwd_3840;
        if (Phase::DspLayer::IConvolver::mFFTFwd_3840)
        {
          return result;
        }

        v4 = 3840;
        goto LABEL_52;
      }
    }

LABEL_54:
    __assert_rtn("GetFftFwd", "IConvolver.cpp", 96, "false && No global forward vDSP_DFT_Setup is available for requested size.");
  }

  if (a2 > 511)
  {
    if (a2 > 1023)
    {
      if (a2 == 1024)
      {
        v2 = &Phase::DspLayer::IConvolver::mFFTFwd_1024;
        result = Phase::DspLayer::IConvolver::mFFTFwd_1024;
        if (Phase::DspLayer::IConvolver::mFFTFwd_1024)
        {
          return result;
        }

        v4 = 1024;
        goto LABEL_52;
      }

      if (a2 == 1920)
      {
        v2 = &Phase::DspLayer::IConvolver::mFFTFwd_1920;
        result = Phase::DspLayer::IConvolver::mFFTFwd_1920;
        if (Phase::DspLayer::IConvolver::mFFTFwd_1920)
        {
          return result;
        }

        v4 = 1920;
        goto LABEL_52;
      }
    }

    else
    {
      if (a2 == 512)
      {
        v2 = &Phase::DspLayer::IConvolver::mFFTFwd_512;
        result = Phase::DspLayer::IConvolver::mFFTFwd_512;
        if (Phase::DspLayer::IConvolver::mFFTFwd_512)
        {
          return result;
        }

        v4 = 512;
        goto LABEL_52;
      }

      if (a2 == 960)
      {
        v2 = &Phase::DspLayer::IConvolver::mFFTFwd_960;
        result = Phase::DspLayer::IConvolver::mFFTFwd_960;
        if (Phase::DspLayer::IConvolver::mFFTFwd_960)
        {
          return result;
        }

        v4 = 960;
        goto LABEL_52;
      }
    }

    goto LABEL_54;
  }

  if (a2 != 240)
  {
    if (a2 == 256)
    {
      v2 = &Phase::DspLayer::IConvolver::mFFTFwd_256;
      result = Phase::DspLayer::IConvolver::mFFTFwd_256;
      if (Phase::DspLayer::IConvolver::mFFTFwd_256)
      {
        return result;
      }

      v4 = 256;
      goto LABEL_52;
    }

    if (a2 == 480)
    {
      v2 = &Phase::DspLayer::IConvolver::mFFTFwd_480;
      result = Phase::DspLayer::IConvolver::mFFTFwd_480;
      if (Phase::DspLayer::IConvolver::mFFTFwd_480)
      {
        return result;
      }

      v4 = 480;
      goto LABEL_52;
    }

    goto LABEL_54;
  }

  v2 = &Phase::DspLayer::IConvolver::mFFTFwd_240;
  result = Phase::DspLayer::IConvolver::mFFTFwd_240;
  if (Phase::DspLayer::IConvolver::mFFTFwd_240)
  {
    return result;
  }

  v4 = 240;
LABEL_52:
  result = vDSP_DFT_zrop_CreateSetup(0, v4, vDSP_DFT_FORWARD);
  *v2 = result;
  return result;
}

vDSP_DFT_Setup Phase::DspLayer::IConvolver::GetFftInv(Phase::DspLayer::IConvolver *this, int a2)
{
  if (a2 > 2047)
  {
    if (a2 >= 0x2000)
    {
      if (a2 >= 0x4000)
      {
        if (a2 == 0x4000)
        {
          v2 = &Phase::DspLayer::IConvolver::mFFTInv_16384;
          result = Phase::DspLayer::IConvolver::mFFTInv_16384;
          if (Phase::DspLayer::IConvolver::mFFTInv_16384)
          {
            return result;
          }

          v4 = 0x4000;
          goto LABEL_52;
        }

        if (a2 == 30720)
        {
          v2 = &Phase::DspLayer::IConvolver::mFFTInv_30720;
          result = Phase::DspLayer::IConvolver::mFFTInv_30720;
          if (Phase::DspLayer::IConvolver::mFFTInv_30720)
          {
            return result;
          }

          v4 = 30720;
          goto LABEL_52;
        }
      }

      else
      {
        if (a2 == 0x2000)
        {
          v2 = &Phase::DspLayer::IConvolver::mFFTInv_8192;
          result = Phase::DspLayer::IConvolver::mFFTInv_8192;
          if (Phase::DspLayer::IConvolver::mFFTInv_8192)
          {
            return result;
          }

          v4 = 0x2000;
          goto LABEL_52;
        }

        if (a2 == 15360)
        {
          v2 = &Phase::DspLayer::IConvolver::mFFTInv_15360;
          result = Phase::DspLayer::IConvolver::mFFTInv_15360;
          if (Phase::DspLayer::IConvolver::mFFTInv_15360)
          {
            return result;
          }

          v4 = 15360;
          goto LABEL_52;
        }
      }
    }

    else if (a2 > 4095)
    {
      if (a2 == 4096)
      {
        v2 = &Phase::DspLayer::IConvolver::mFFTInv_4096;
        result = Phase::DspLayer::IConvolver::mFFTInv_4096;
        if (Phase::DspLayer::IConvolver::mFFTInv_4096)
        {
          return result;
        }

        v4 = 4096;
        goto LABEL_52;
      }

      if (a2 == 7680)
      {
        v2 = &Phase::DspLayer::IConvolver::mFFTInv_7680;
        result = Phase::DspLayer::IConvolver::mFFTInv_7680;
        if (Phase::DspLayer::IConvolver::mFFTInv_7680)
        {
          return result;
        }

        v4 = 7680;
        goto LABEL_52;
      }
    }

    else
    {
      if (a2 == 2048)
      {
        v2 = &Phase::DspLayer::IConvolver::mFFTInv_2048;
        result = Phase::DspLayer::IConvolver::mFFTInv_2048;
        if (Phase::DspLayer::IConvolver::mFFTInv_2048)
        {
          return result;
        }

        v4 = 2048;
        goto LABEL_52;
      }

      if (a2 == 3840)
      {
        v2 = &Phase::DspLayer::IConvolver::mFFTInv_3840;
        result = Phase::DspLayer::IConvolver::mFFTInv_3840;
        if (Phase::DspLayer::IConvolver::mFFTInv_3840)
        {
          return result;
        }

        v4 = 3840;
        goto LABEL_52;
      }
    }

LABEL_54:
    __assert_rtn("GetFftInv", "IConvolver.cpp", 152, "false && No global inverse vDSP_DFT_Setup is available for requested size.");
  }

  if (a2 > 511)
  {
    if (a2 > 1023)
    {
      if (a2 == 1024)
      {
        v2 = &Phase::DspLayer::IConvolver::mFFTInv_1024;
        result = Phase::DspLayer::IConvolver::mFFTInv_1024;
        if (Phase::DspLayer::IConvolver::mFFTInv_1024)
        {
          return result;
        }

        v4 = 1024;
        goto LABEL_52;
      }

      if (a2 == 1920)
      {
        v2 = &Phase::DspLayer::IConvolver::mFFTInv_1920;
        result = Phase::DspLayer::IConvolver::mFFTInv_1920;
        if (Phase::DspLayer::IConvolver::mFFTInv_1920)
        {
          return result;
        }

        v4 = 1920;
        goto LABEL_52;
      }
    }

    else
    {
      if (a2 == 512)
      {
        v2 = &Phase::DspLayer::IConvolver::mFFTInv_512;
        result = Phase::DspLayer::IConvolver::mFFTInv_512;
        if (Phase::DspLayer::IConvolver::mFFTInv_512)
        {
          return result;
        }

        v4 = 512;
        goto LABEL_52;
      }

      if (a2 == 960)
      {
        v2 = &Phase::DspLayer::IConvolver::mFFTInv_960;
        result = Phase::DspLayer::IConvolver::mFFTInv_960;
        if (Phase::DspLayer::IConvolver::mFFTInv_960)
        {
          return result;
        }

        v4 = 960;
        goto LABEL_52;
      }
    }

    goto LABEL_54;
  }

  if (a2 != 240)
  {
    if (a2 == 256)
    {
      v2 = &Phase::DspLayer::IConvolver::mFFTInv_256;
      result = Phase::DspLayer::IConvolver::mFFTInv_256;
      if (Phase::DspLayer::IConvolver::mFFTInv_256)
      {
        return result;
      }

      v4 = 256;
      goto LABEL_52;
    }

    if (a2 == 480)
    {
      v2 = &Phase::DspLayer::IConvolver::mFFTInv_480;
      result = Phase::DspLayer::IConvolver::mFFTInv_480;
      if (Phase::DspLayer::IConvolver::mFFTInv_480)
      {
        return result;
      }

      v4 = 480;
      goto LABEL_52;
    }

    goto LABEL_54;
  }

  v2 = &Phase::DspLayer::IConvolver::mFFTInv_240;
  result = Phase::DspLayer::IConvolver::mFFTInv_240;
  if (Phase::DspLayer::IConvolver::mFFTInv_240)
  {
    return result;
  }

  v4 = 240;
LABEL_52:
  result = vDSP_DFT_zrop_CreateSetup(0, v4, vDSP_DFT_INVERSE);
  *v2 = result;
  return result;
}

void Phase::SpatialModeler::ImportanceSampling::init(void **this, void *a2, float a3)
{
  Phase::SpatialModeler::ImportanceSampling::alloc(this, a2);
  if (*this)
  {
    bzero(this[2], 4 * *this);
    bzero(this[3], 4 * *this + 4);
  }

  *(this + 2) = a3;
}

void **Phase::SpatialModeler::ImportanceSampling::operator=(void **this, uint64_t a2)
{
  if (this != a2)
  {
    Phase::SpatialModeler::ImportanceSampling::alloc(this, *a2);
    if (*this)
    {
      memcpy(this[2], *(a2 + 16), 4 * *this);
      memcpy(this[3], *(a2 + 24), 4 * *this + 4);
    }

    *(this + 2) = *(a2 + 8);
  }

  return this;
}

void Phase::SpatialModeler::ImportanceSampling::alloc(void **this, void *a2)
{
  if (*this != a2)
  {
    *this = a2;
    free(this[2]);
    this[2] = 0;
    free(this[3]);
    this[3] = 0;
    if (a2)
    {
      v4 = 4 * a2;
      this[2] = malloc_type_malloc(v4, 0x100004052888210uLL);
      this[3] = malloc_type_malloc(v4 + 4, 0x100004052888210uLL);
    }
  }
}

uint64_t Phase::SpatialModeler::ImportanceSampling::computeProbabilityDistribution(uint64_t result, uint64_t a2, uint64_t a3, void *a4, float *a5)
{
  *a5 = 0.0;
  v5 = *result;
  if (*result)
  {
    v6 = *(result + 16);
    v7 = (*a4 + 28);
    v8 = 1;
    v9 = v6;
    do
    {
      v10 = *a2 - v7[-1].f32[1];
      v11 = vsub_f32(*(a2 + 4), *v7);
      v12 = vmul_f32(v11, v11);
      v13 = sqrtf(((v10 * v10) + v12.f32[0]) + v12.f32[1]);
      v14 = *(result + 8);
      v15 = 1.0;
      if ((v13 * v13) > v14)
      {
        v16 = fminf(fmaxf((v14 / (v13 * v13)) * 0.5, 0.0), 1.0);
        v17 = vmul_f32(v11, *(a3 + 4));
        v18 = fabsf(((v10 * *a3) + v17.f32[0]) + v17.f32[1]);
        v15 = ((v16 * v18) / v13) + ((v16 * v18) / v13);
      }

      *v9++ = v15;
      v19 = v15 + *a5;
      *a5 = v19;
      v7 += 7;
      v20 = v5 > v8++;
    }

    while (v20);
    v21 = v19 / v5;
    if (v19 <= 0.0)
    {
      v21 = 1.0;
    }

    v22 = *(result + 24);
    *v22 = 0;
    v23 = 0.0;
    v24 = 1;
    do
    {
      v25 = *v6++;
      v23 = v23 + ((v25 / v21) / v5);
      *&v22[v24] = v23;
      v20 = v5 > v24++;
    }

    while (v20);
  }

  else
  {
    **(result + 24) = 0;
  }

  return result;
}

uint64_t Phase::SpatialModeler::ImportanceSampling::pickRandomSource(Phase::SpatialModeler::ImportanceSampling *this, float a2)
{
  if (a2 == 1.0)
  {
    a2 = 0.0;
  }

  v2 = *(this + 3);
  if (a2 < *v2)
  {
    return 0;
  }

  v3 = *this;
  v4 = v2[*this];
  if (a2 >= v4)
  {
    return 0;
  }

  result = (((a2 - *v2) / (v4 - *v2)) * v3);
  if (a2 >= v2[result] && a2 < v2[(result + 1)])
  {
    return result;
  }

  if (v3 < 2)
  {
    return 0;
  }

  LODWORD(result) = 0;
  do
  {
    v6 = (result + v3) >> 1;
    v7 = v2[v6];
    if (a2 >= v7)
    {
      result = v6;
    }

    else
    {
      result = result;
    }

    if (a2 < v7)
    {
      LODWORD(v3) = v6;
    }
  }

  while ((v3 - result) > 1);
  return result;
}

uint64_t Phase::Controller::InMemoryAudioFile::Init(uint64_t a1, void *a2, AudioFileTypeID a3, uint64_t a4, void *a5)
{
  v40 = *MEMORY[0x277D85DE8];
  v10 = a2;
  v11 = v10;
  if (!v10)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"inAudioFileData is null!"];
    v23 = **(Phase::Logger::GetInstance(v13) + 832);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v33 = "InMemoryAudioFile.mm";
      v34 = 1024;
      v35 = 31;
      v36 = 2048;
      v37 = a4;
      v38 = 2080;
      v39 = [(Phase::Logger *)v13 UTF8String];
      _os_log_impl(&dword_23A302000, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d SoundAssetError for assetId %llu: %s", buf, 0x26u);
    }

    if (!a5)
    {
      goto LABEL_19;
    }

    v30 = *MEMORY[0x277CCA450];
    v31 = v13;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v22 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346920803 userInfo:v17];
LABEL_17:
    *a5 = v22;
LABEL_18:

LABEL_19:
    v24 = 0;
    goto LABEL_20;
  }

  if (![v10 bytes] || !objc_msgSend(v11, "length"))
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"inAudioFileData.bytes is null! This is either because the NSData bytes property was explicitly set to nil, or because the NSData length property was explicitly set to 0."];
    v21 = **(Phase::Logger::GetInstance(v13) + 832);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v33 = "InMemoryAudioFile.mm";
      v34 = 1024;
      v35 = 40;
      v36 = 2048;
      v37 = a4;
      v38 = 2080;
      v39 = [(Phase::Logger *)v13 UTF8String];
      _os_log_impl(&dword_23A302000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d SoundAssetError for assetId %llu: %s", buf, 0x26u);
    }

    if (!a5)
    {
      goto LABEL_19;
    }

    v28 = *MEMORY[0x277CCA450];
    v29 = v13;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v22 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346920803 userInfo:v17];
    goto LABEL_17;
  }

  objc_storeStrong(a1, a2);
  v12 = AudioFileOpenWithCallbacks(a1, Phase::Controller::InMemoryAudioFile::sReadProc, 0, Phase::Controller::InMemoryAudioFile::sGetSizeProc, 0, a3, (a1 + 8));
  if (v12)
  {
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v12 userInfo:0];
    v14 = MEMORY[0x277CCACA8];
    v15 = [v11 description];
    v16 = [(Phase::Logger *)v13 description];
    v17 = [v14 stringWithFormat:@"AudioFileOpenWithCallbacks() failed to read audio file data from '%@' with error '%@'.", v15, v16];

    v19 = **(Phase::Logger::GetInstance(v18) + 832);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v33 = "InMemoryAudioFile.mm";
      v34 = 1024;
      v35 = 56;
      v36 = 2048;
      v37 = a4;
      v38 = 2080;
      v39 = [v17 UTF8String];
      _os_log_impl(&dword_23A302000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d SoundAssetError for assetId %llu: %s", buf, 0x26u);
    }

    if (a5)
    {
      v26 = *MEMORY[0x277CCA450];
      v27 = v17;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346920801 userInfo:v20];
    }

    goto LABEL_18;
  }

  if (!*(a1 + 8))
  {
    std::terminate();
  }

  v24 = 1;
LABEL_20:

  return v24;
}

uint64_t Phase::Controller::InMemoryAudioFile::sReadProc(id *this, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5, unsigned int *a6)
{
  v28 = *MEMORY[0x277D85DE8];
  if (!this)
  {
    std::terminate();
  }

  v8 = a3;
  v11 = [*this length];
  if (v11 >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = v11;
  }

  if (v11 >= v12 + v8)
  {
    v13 = v12 + v8;
  }

  else
  {
    v13 = v11;
  }

  if (v13 > a2)
  {
    v14 = v13 - v12;
    memcpy(a4, ([*this bytes] + v12), v13 - v12);
    result = 0;
    if (!a5)
    {
      return result;
    }

    goto LABEL_15;
  }

  v16 = **(Phase::Logger::GetInstance(v11) + 400);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = [*this description];
    v18 = 136316162;
    v19 = "InMemoryAudioFile.mm";
    v20 = 1024;
    v21 = 105;
    v22 = 2080;
    v23 = [v17 UTF8String];
    v24 = 2048;
    v25 = v13;
    v26 = 2048;
    v27 = v12;
    _os_log_impl(&dword_23A302000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid read request for audio file data '%s'! The end position %lld is <= the start position %lld,", &v18, 0x30u);
  }

  result = 4294967256;
  if (a5)
  {
    v14 = 0;
LABEL_15:
    *a5 = v14;
  }

  return result;
}

uint64_t Phase::Controller::InMemoryAudioFile::sGetSizeProc(void **this, void *a2)
{
  if (!this)
  {
    std::terminate();
  }

  v3 = *this;

  return [v3 length];
}

void Phase::Controller::InMemoryAudioFile::~InMemoryAudioFile(Phase::Controller::InMemoryAudioFile *this)
{
  Phase::Controller::InMemoryAudioFile::CloseAudioFile(this, 0);
  v2 = *this;
  *this = 0;
}

void Phase::Controller::InMemoryAudioFile::CloseAudioFile(Phase::Controller::InMemoryAudioFile *this, int a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = *(this + 1);
  if (v3)
  {
    v5 = AudioFileClose(v3);
    if (v5)
    {
      v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v5 userInfo:0];
      v7 = v6;
      if (a2)
      {
        v12 = **(Phase::Logger::GetInstance(v6) + 400);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = [*this description];
          v14 = [v13 UTF8String];
          v15 = [(Phase::Logger *)v7 description];
          v17 = 136315906;
          v18 = "InMemoryAudioFile.mm";
          v19 = 1024;
          v20 = 139;
          v21 = 2080;
          v22 = v14;
          v23 = 2080;
          v24 = [v15 UTF8String];
          _os_log_impl(&dword_23A302000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Failed to close audio file referencing audio file data '%s' with error '%s'.", &v17, 0x26u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Failed to close audio file referencing audio file data '%s' with error '%s'.");
      }

      v8 = **(Phase::Logger::GetInstance(v6) + 400);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = [*this description];
        v10 = [v9 UTF8String];
        v11 = [(Phase::Logger *)v7 description];
        v17 = 136315906;
        v18 = "InMemoryAudioFile.mm";
        v19 = 1024;
        v20 = 146;
        v21 = 2080;
        v22 = v10;
        v23 = 2080;
        v24 = [v11 UTF8String];
        _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to close audio file referencing audio file data '%s' with error '%s'.", &v17, 0x26u);
      }
    }

    *(this + 1) = 0;
  }
}

void Phase::Controller::InMemoryAudioFile::Description(id *this@<X0>, _BYTE *a2@<X8>)
{
  v6 = [*this description];
  v3 = [v6 UTF8String];
  v4 = strlen(v3);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    memmove(a2, v3, v4);
  }

  a2[v5] = 0;
}

uint64_t Phase::Controller::IR::IRBuilder::IRBuilder(uint64_t a1, _OWORD *a2, const Phase::Controller::Spatializer *a3)
{
  *a1 = *a2;
  v5 = std::unordered_map<unsigned int,unsigned int>::unordered_map(a1 + 16, (a2 + 1));
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 1065353216;
  *(a1 + 96) = 0;
  Instance = Phase::Logger::GetInstance(v5);
  v7 = os_signpost_id_generate(**(Instance + 288));
  v8 = Phase::Logger::GetInstance(v7);
  if (*(v8 + 296) == 1)
  {
    v9 = **(Phase::Logger::GetInstance(v8) + 288);
    v10 = v9;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23A302000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v7, "Phase_IrBuilder_Construction", "IR builders construction", buf, 2u);
    }
  }

  if ((*(a1 + 12) | 2) == 2)
  {
    *__n = 0u;
    v18 = 0u;
    v19 = 1065353216;
    operator new();
  }

  Phase::Controller::IR::IRBuilder::SetSpatializer(a1, a3);
  v12 = Phase::Logger::GetInstance(v11);
  if (*(v12 + 296) == 1)
  {
    v13 = **(Phase::Logger::GetInstance(v12) + 288);
    v14 = v13;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23A302000, v14, OS_SIGNPOST_INTERVAL_END, v7, "Phase_IrBuilder_Construction", &unk_23A5C28A2, buf, 2u);
    }
  }

  return a1;
}

void sub_23A41FA38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  operator delete(v30);
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(&a29);
  std::__hash_table<std::__hash_value_type<Phase::Controller::IR::IRBuilder::Processor,std::unordered_map<Phase::Controller::IR::IRBuilder::Method,Phase::Controller::IR::IRBuilderBase *>>,std::__unordered_map_hasher<Phase::Controller::IR::IRBuilder::Processor,std::__hash_value_type<Phase::Controller::IR::IRBuilder::Processor,std::unordered_map<Phase::Controller::IR::IRBuilder::Method,Phase::Controller::IR::IRBuilderBase *>>,std::hash<Phase::Controller::IR::IRBuilder::Processor>,std::equal_to<Phase::Controller::IR::IRBuilder::Processor>,true>,std::__unordered_map_equal<Phase::Controller::IR::IRBuilder::Processor,std::__hash_value_type<Phase::Controller::IR::IRBuilder::Processor,std::unordered_map<Phase::Controller::IR::IRBuilder::Method,Phase::Controller::IR::IRBuilderBase *>>,std::equal_to<Phase::Controller::IR::IRBuilder::Processor>,std::hash<Phase::Controller::IR::IRBuilder::Processor>,true>,std::allocator<std::__hash_value_type<Phase::Controller::IR::IRBuilder::Processor,std::unordered_map<Phase::Controller::IR::IRBuilder::Method,Phase::Controller::IR::IRBuilderBase *>>>>::~__hash_table(v29);
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(a12 + 16);
  _Unwind_Resume(a1);
}

void Phase::Controller::IR::IRBuilder::SetSpatializer(Phase::Controller::IR::IRBuilder *this, const Phase::Controller::Spatializer *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  if (*(this + 12) != a2)
  {
    Phase::Controller::Spatializer::AcquireFilters(a2, v9);
    v5 = **(Phase::Logger::GetInstance(v4) + 288);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      (*(*v11 + 40))(__p);
      v6 = v8 >= 0 ? __p : __p[0];
      *buf = 136315650;
      v15 = "IRBuilder.mm";
      v16 = 1024;
      v17 = 77;
      v18 = 2080;
      v19 = v6;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Reinitializing IR builder with new spatializer encoder. Encoder Details: %s", buf, 0x1Cu);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }
    }

    *(this + 12) = a2;
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }
}

void sub_23A41FCF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  Phase::Controller::SpatializerFilterHandle::~SpatializerFilterHandle(va);
  _Unwind_Resume(a1);
}

void Phase::Controller::IR::IRBuilder::~IRBuilder(Phase::Controller::IR::IRBuilder *this)
{
  for (i = *(this + 9); i; i = *i)
  {
    for (j = i[5]; j; j = *j)
    {
      v4 = j[3];
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }
    }
  }

  std::__hash_table<std::__hash_value_type<Phase::Controller::IR::IRBuilder::Processor,std::unordered_map<Phase::Controller::IR::IRBuilder::Method,Phase::Controller::IR::IRBuilderBase *>>,std::__unordered_map_hasher<Phase::Controller::IR::IRBuilder::Processor,std::__hash_value_type<Phase::Controller::IR::IRBuilder::Processor,std::unordered_map<Phase::Controller::IR::IRBuilder::Method,Phase::Controller::IR::IRBuilderBase *>>,std::hash<Phase::Controller::IR::IRBuilder::Processor>,std::equal_to<Phase::Controller::IR::IRBuilder::Processor>,true>,std::__unordered_map_equal<Phase::Controller::IR::IRBuilder::Processor,std::__hash_value_type<Phase::Controller::IR::IRBuilder::Processor,std::unordered_map<Phase::Controller::IR::IRBuilder::Method,Phase::Controller::IR::IRBuilderBase *>>,std::equal_to<Phase::Controller::IR::IRBuilder::Processor>,std::hash<Phase::Controller::IR::IRBuilder::Processor>,true>,std::allocator<std::__hash_value_type<Phase::Controller::IR::IRBuilder::Processor,std::unordered_map<Phase::Controller::IR::IRBuilder::Method,Phase::Controller::IR::IRBuilderBase *>>>>::~__hash_table(this + 56);
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(this + 16);
}

uint64_t Phase::Controller::IR::IRBuilder::GetWorkBufferSizeInBytes(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v6 = std::__hash_table<std::__hash_value_type<Phase::Controller::IR::IRBuilder::Processor,std::unordered_map<Phase::Controller::IR::IRBuilder::Method,Phase::Controller::IR::IRBuilderBase *>>,std::__unordered_map_hasher<Phase::Controller::IR::IRBuilder::Processor,std::__hash_value_type<Phase::Controller::IR::IRBuilder::Processor,std::unordered_map<Phase::Controller::IR::IRBuilder::Method,Phase::Controller::IR::IRBuilderBase *>>,std::hash<Phase::Controller::IR::IRBuilder::Processor>,std::equal_to<Phase::Controller::IR::IRBuilder::Processor>,true>,std::__unordered_map_equal<Phase::Controller::IR::IRBuilder::Processor,std::__hash_value_type<Phase::Controller::IR::IRBuilder::Processor,std::unordered_map<Phase::Controller::IR::IRBuilder::Method,Phase::Controller::IR::IRBuilderBase *>>,std::equal_to<Phase::Controller::IR::IRBuilder::Processor>,std::hash<Phase::Controller::IR::IRBuilder::Processor>,true>,std::allocator<std::__hash_value_type<Phase::Controller::IR::IRBuilder::Processor,std::unordered_map<Phase::Controller::IR::IRBuilder::Method,Phase::Controller::IR::IRBuilderBase *>>>>::find<Phase::Controller::IR::IRBuilder::Processor>((a1 + 56), a3);
  if (!v6)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v7 = std::__hash_table<std::__hash_value_type<Phase::Controller::IR::IRBuilder::Processor,std::unordered_map<Phase::Controller::IR::IRBuilder::Method,Phase::Controller::IR::IRBuilderBase *>>,std::__unordered_map_hasher<Phase::Controller::IR::IRBuilder::Processor,std::__hash_value_type<Phase::Controller::IR::IRBuilder::Processor,std::unordered_map<Phase::Controller::IR::IRBuilder::Method,Phase::Controller::IR::IRBuilderBase *>>,std::hash<Phase::Controller::IR::IRBuilder::Processor>,std::equal_to<Phase::Controller::IR::IRBuilder::Processor>,true>,std::__unordered_map_equal<Phase::Controller::IR::IRBuilder::Processor,std::__hash_value_type<Phase::Controller::IR::IRBuilder::Processor,std::unordered_map<Phase::Controller::IR::IRBuilder::Method,Phase::Controller::IR::IRBuilderBase *>>,std::equal_to<Phase::Controller::IR::IRBuilder::Processor>,std::hash<Phase::Controller::IR::IRBuilder::Processor>,true>,std::allocator<std::__hash_value_type<Phase::Controller::IR::IRBuilder::Processor,std::unordered_map<Phase::Controller::IR::IRBuilder::Method,Phase::Controller::IR::IRBuilderBase *>>>>::find<Phase::Controller::IR::IRBuilder::Processor>(v6 + 3, a4);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  return (*(*v7[3] + 16))(v7[3], a2);
}

void sub_23A41FE64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2 == 1)
  {
    v9 = __cxa_begin_catch(exception_object);
    v10 = **(Phase::Logger::GetInstance(v9) + 288);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LODWORD(a9) = 136315394;
      *(&a9 + 4) = "IRBuilder.mm";
      WORD6(a9) = 1024;
      *(&a9 + 14) = 99;
      _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Requested an IR Build on a builder hasn't been created. Make sure the builder is requested as an initialization parameter.", &a9, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Requested an IR Build on a builder hasn't been created. Make sure the builder is requested as an initialization parameter.");
  }

  _Unwind_Resume(exception_object);
}

void sub_23A41FF44(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x23A41FF4CLL);
  }

  __clang_call_terminate(a1);
}

uint64_t Phase::Controller::IR::IRBuilder::GetOutputBufferSizeInSamples(Phase::Controller::IR::IRBuilder *this, const Phase::Controller::IR::Metadata *a2)
{
  v2 = a2;
  v3 = *(a2 + 4);
  MaxDelayInSamples = Phase::Controller::IR::GetMaxDelayInSamples(a2, a2);
  LODWORD(v2) = (*(*v3 + 64))(v3, v2 + 16) + MaxDelayInSamples;
  return ((*(*v3 + 48))(v3) * v2);
}

void Phase::Controller::IR::IRBuilder::Build(Phase::Logger *a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v26 = *MEMORY[0x277D85DE8];
  Instance = Phase::Logger::GetInstance(a1);
  v13 = os_signpost_id_generate(**(Instance + 288));
  v14 = Phase::Logger::GetInstance(v13);
  if (*(v14 + 296) == 1)
  {
    v15 = **(Phase::Logger::GetInstance(v14) + 288);
    v16 = v15;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      v17 = *(a2 + 8);
      if (v17)
      {
        if (*v17 == 3)
        {
          v17 = v17[13];
          if (v17)
          {
            v17 = *v17;
          }
        }

        else
        {
          v17 = 0;
        }
      }

      v24 = 134217984;
      v25 = v17;
      _os_signpost_emit_with_name_impl(&dword_23A302000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v13, "Phase_IrBuilder_Build", "IR Build: %zu reflections", &v24, 0xCu);
    }
  }

  v18 = std::__hash_table<std::__hash_value_type<Phase::Controller::IR::IRBuilder::Processor,std::unordered_map<Phase::Controller::IR::IRBuilder::Method,Phase::Controller::IR::IRBuilderBase *>>,std::__unordered_map_hasher<Phase::Controller::IR::IRBuilder::Processor,std::__hash_value_type<Phase::Controller::IR::IRBuilder::Processor,std::unordered_map<Phase::Controller::IR::IRBuilder::Method,Phase::Controller::IR::IRBuilderBase *>>,std::hash<Phase::Controller::IR::IRBuilder::Processor>,std::equal_to<Phase::Controller::IR::IRBuilder::Processor>,true>,std::__unordered_map_equal<Phase::Controller::IR::IRBuilder::Processor,std::__hash_value_type<Phase::Controller::IR::IRBuilder::Processor,std::unordered_map<Phase::Controller::IR::IRBuilder::Method,Phase::Controller::IR::IRBuilderBase *>>,std::equal_to<Phase::Controller::IR::IRBuilder::Processor>,std::hash<Phase::Controller::IR::IRBuilder::Processor>,true>,std::allocator<std::__hash_value_type<Phase::Controller::IR::IRBuilder::Processor,std::unordered_map<Phase::Controller::IR::IRBuilder::Method,Phase::Controller::IR::IRBuilderBase *>>>>::find<Phase::Controller::IR::IRBuilder::Processor>(a1 + 7, a3);
  if (!v18)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v19 = std::__hash_table<std::__hash_value_type<Phase::Controller::IR::IRBuilder::Processor,std::unordered_map<Phase::Controller::IR::IRBuilder::Method,Phase::Controller::IR::IRBuilderBase *>>,std::__unordered_map_hasher<Phase::Controller::IR::IRBuilder::Processor,std::__hash_value_type<Phase::Controller::IR::IRBuilder::Processor,std::unordered_map<Phase::Controller::IR::IRBuilder::Method,Phase::Controller::IR::IRBuilderBase *>>,std::hash<Phase::Controller::IR::IRBuilder::Processor>,std::equal_to<Phase::Controller::IR::IRBuilder::Processor>,true>,std::__unordered_map_equal<Phase::Controller::IR::IRBuilder::Processor,std::__hash_value_type<Phase::Controller::IR::IRBuilder::Processor,std::unordered_map<Phase::Controller::IR::IRBuilder::Method,Phase::Controller::IR::IRBuilderBase *>>,std::equal_to<Phase::Controller::IR::IRBuilder::Processor>,std::hash<Phase::Controller::IR::IRBuilder::Processor>,true>,std::allocator<std::__hash_value_type<Phase::Controller::IR::IRBuilder::Processor,std::unordered_map<Phase::Controller::IR::IRBuilder::Method,Phase::Controller::IR::IRBuilderBase *>>>>::find<Phase::Controller::IR::IRBuilder::Processor>(v18 + 3, a4);
  if (!v19)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v20 = (*(*v19[3] + 24))(v19[3], a2, a5, a6);
  v21 = Phase::Logger::GetInstance(v20);
  if (*(v21 + 296))
  {
    v22 = **(Phase::Logger::GetInstance(v21) + 288);
    v23 = v22;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      LOWORD(v24) = 0;
      _os_signpost_emit_with_name_impl(&dword_23A302000, v23, OS_SIGNPOST_INTERVAL_END, v13, "Phase_IrBuilder_Build", &unk_23A5C28A2, &v24, 2u);
    }
  }
}

void sub_23A42021C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, __int128 a10)
{
  if (a2 == 2)
  {
    v10 = __cxa_begin_catch(exception_object);
    v11 = **(Phase::Logger::GetInstance(v10) + 288);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LODWORD(a9) = 136315394;
      *(&a9 + 4) = "IRBuilder.mm";
      WORD6(a9) = 1024;
      *(&a9 + 14) = 129;
      _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Requested an IR Build on a builder hasn't been created. Make sure the builder is requested as an initialization parameter.", &a9, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Requested an IR Build on a builder hasn't been created. Make sure the builder is requested as an initialization parameter.");
  }

  if (a2 == 1)
  {
    v13 = __cxa_begin_catch(exception_object);
    v14 = **(Phase::Logger::GetInstance(v13) + 288);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = (*(*v13 + 16))(v13);
      LODWORD(a9) = 136315650;
      *(&a9 + 4) = "IRBuilder.mm";
      WORD6(a9) = 1024;
      *(&a9 + 14) = 134;
      WORD1(a10) = 2080;
      *(&a10 + 4) = v15;
      _os_log_impl(&dword_23A302000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Exception caught in IRBuilder::Build, an internal error occurred: %s", &a9, 0x1Cu);
    }

    v16 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v16, "Exception caught in IRBuilder::Build, an internal error occurred: %s");
  }

  _Unwind_Resume(exception_object);
}

void sub_23A420414(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

char *Phase::Controller::IR::IRBuilder::GetMethodString(Phase::Controller::IR::IRBuilder *this, const Method *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *this;
  if (v2 >= 4)
  {
    v5 = **(Phase::Logger::GetInstance(this) + 288);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *this;
      v8 = 136315650;
      v9 = "IRBuilder.mm";
      v10 = 1024;
      v11 = 163;
      v12 = 2048;
      v13 = v6;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument): Invalid IR builder method index %lu", &v8, 0x1Cu);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Invalid IR builder method index %lu");
  }

  return off_278B4F580[v2];
}

uint64_t std::unordered_map<unsigned int,unsigned int>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    v5 = *(i + 4);
    v6 = *(a1 + 8);
    if (!*&v6)
    {
      goto LABEL_18;
    }

    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = *(i + 4);
      if (*&v6 <= v5)
      {
        v8 = v5 % v6.i32[0];
      }
    }

    else
    {
      v8 = (v6.i32[0] - 1) & v5;
    }

    v9 = *(*a1 + 8 * v8);
    if (!v9 || (v10 = *v9) == 0)
    {
LABEL_18:
      operator new();
    }

    while (1)
    {
      v11 = v10[1];
      if (v11 == v5)
      {
        break;
      }

      if (v7.u32[0] > 1uLL)
      {
        if (v11 >= *&v6)
        {
          v11 %= *&v6;
        }
      }

      else
      {
        v11 &= *&v6 - 1;
      }

      if (v11 != v8)
      {
        goto LABEL_18;
      }

LABEL_17:
      v10 = *v10;
      if (!v10)
      {
        goto LABEL_18;
      }
    }

    if (*(v10 + 4) != v5)
    {
      goto LABEL_17;
    }
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<Phase::Controller::IR::IRBuilder::Processor,std::unordered_map<Phase::Controller::IR::IRBuilder::Method,Phase::Controller::IR::IRBuilderBase *>>,std::__unordered_map_hasher<Phase::Controller::IR::IRBuilder::Processor,std::__hash_value_type<Phase::Controller::IR::IRBuilder::Processor,std::unordered_map<Phase::Controller::IR::IRBuilder::Method,Phase::Controller::IR::IRBuilderBase *>>,std::hash<Phase::Controller::IR::IRBuilder::Processor>,std::equal_to<Phase::Controller::IR::IRBuilder::Processor>,true>,std::__unordered_map_equal<Phase::Controller::IR::IRBuilder::Processor,std::__hash_value_type<Phase::Controller::IR::IRBuilder::Processor,std::unordered_map<Phase::Controller::IR::IRBuilder::Method,Phase::Controller::IR::IRBuilderBase *>>,std::equal_to<Phase::Controller::IR::IRBuilder::Processor>,std::hash<Phase::Controller::IR::IRBuilder::Processor>,true>,std::allocator<std::__hash_value_type<Phase::Controller::IR::IRBuilder::Processor,std::unordered_map<Phase::Controller::IR::IRBuilder::Method,Phase::Controller::IR::IRBuilderBase *>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<Phase::Controller::IR::IRBuilder::Processor,std::unordered_map<Phase::Controller::IR::IRBuilder::Method,Phase::Controller::IR::IRBuilderBase *>>,std::__unordered_map_hasher<Phase::Controller::IR::IRBuilder::Processor,std::__hash_value_type<Phase::Controller::IR::IRBuilder::Processor,std::unordered_map<Phase::Controller::IR::IRBuilder::Method,Phase::Controller::IR::IRBuilderBase *>>,std::hash<Phase::Controller::IR::IRBuilder::Processor>,std::equal_to<Phase::Controller::IR::IRBuilder::Processor>,true>,std::__unordered_map_equal<Phase::Controller::IR::IRBuilder::Processor,std::__hash_value_type<Phase::Controller::IR::IRBuilder::Processor,std::unordered_map<Phase::Controller::IR::IRBuilder::Method,Phase::Controller::IR::IRBuilderBase *>>,std::equal_to<Phase::Controller::IR::IRBuilder::Processor>,std::hash<Phase::Controller::IR::IRBuilder::Processor>,true>,std::allocator<std::__hash_value_type<Phase::Controller::IR::IRBuilder::Processor,std::unordered_map<Phase::Controller::IR::IRBuilder::Method,Phase::Controller::IR::IRBuilderBase *>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<Phase::Controller::IR::IRBuilder::Processor,std::unordered_map<Phase::Controller::IR::IRBuilder::Method,Phase::Controller::IR::IRBuilderBase *>>,std::__unordered_map_hasher<Phase::Controller::IR::IRBuilder::Processor,std::__hash_value_type<Phase::Controller::IR::IRBuilder::Processor,std::unordered_map<Phase::Controller::IR::IRBuilder::Method,Phase::Controller::IR::IRBuilderBase *>>,std::hash<Phase::Controller::IR::IRBuilder::Processor>,std::equal_to<Phase::Controller::IR::IRBuilder::Processor>,true>,std::__unordered_map_equal<Phase::Controller::IR::IRBuilder::Processor,std::__hash_value_type<Phase::Controller::IR::IRBuilder::Processor,std::unordered_map<Phase::Controller::IR::IRBuilder::Method,Phase::Controller::IR::IRBuilderBase *>>,std::equal_to<Phase::Controller::IR::IRBuilder::Processor>,std::hash<Phase::Controller::IR::IRBuilder::Processor>,true>,std::allocator<std::__hash_value_type<Phase::Controller::IR::IRBuilder::Processor,std::unordered_map<Phase::Controller::IR::IRBuilder::Method,Phase::Controller::IR::IRBuilderBase *>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<Phase::Controller::IR::IRBuilder::Processor,std::unordered_map<Phase::Controller::IR::IRBuilder::Method,Phase::Controller::IR::IRBuilderBase *>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<Phase::Controller::IR::IRBuilder::Processor,std::unordered_map<Phase::Controller::IR::IRBuilder::Method,Phase::Controller::IR::IRBuilderBase *>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<Phase::Controller::IR::IRBuilder::Processor,std::unordered_map<Phase::Controller::IR::IRBuilder::Method,Phase::Controller::IR::IRBuilderBase *>>,std::__unordered_map_hasher<Phase::Controller::IR::IRBuilder::Processor,std::__hash_value_type<Phase::Controller::IR::IRBuilder::Processor,std::unordered_map<Phase::Controller::IR::IRBuilder::Method,Phase::Controller::IR::IRBuilderBase *>>,std::hash<Phase::Controller::IR::IRBuilder::Processor>,std::equal_to<Phase::Controller::IR::IRBuilder::Processor>,true>,std::__unordered_map_equal<Phase::Controller::IR::IRBuilder::Processor,std::__hash_value_type<Phase::Controller::IR::IRBuilder::Processor,std::unordered_map<Phase::Controller::IR::IRBuilder::Method,Phase::Controller::IR::IRBuilderBase *>>,std::equal_to<Phase::Controller::IR::IRBuilder::Processor>,std::hash<Phase::Controller::IR::IRBuilder::Processor>,true>,std::allocator<std::__hash_value_type<Phase::Controller::IR::IRBuilder::Processor,std::unordered_map<Phase::Controller::IR::IRBuilder::Method,Phase::Controller::IR::IRBuilderBase *>>>>::find<Phase::Controller::IR::IRBuilder::Processor>(void *a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
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
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 4) == a2)
      {
        return result;
      }
    }

    else
    {
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
        return 0;
      }
    }
  }

  return result;
}

uint64_t Phase::Controller::IR::IRBuilderCpuFIRCrossover::IRBuilderCpuFIRCrossover(uint64_t a1, uint64_t a2, signed int a3, int a4, double a5)
{
  *a1 = &unk_284D353F0;
  v8 = (a1 + 8);
  Phase::Controller::IR::FIRUtilManager::FIRUtilManager((a1 + 8), a5);
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 1065353216;
  *(a1 + 272) = a3;
  if (*(a2 + 16))
  {
    operator new();
  }

  v9 = 31 - __clz(a3);
  if (a3 <= 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  if (v10 <= a4)
  {
    do
    {
      v11 = ldexpf(1.0, v10);
      Phase::Controller::IR::FIRUtilManager::AddNewFFTSizeSupport(v8, v11);
      ++v10;
    }

    while (a4 + 1 != v10);
  }

  return a1;
}

void sub_23A420AD4(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<int,std::unique_ptr<Phase::LinkwitzRileyFilterBank>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unique_ptr<Phase::LinkwitzRileyFilterBank>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unique_ptr<Phase::LinkwitzRileyFilterBank>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unique_ptr<Phase::LinkwitzRileyFilterBank>>>>::~__hash_table(v2);
  Phase::Controller::IR::FIRUtilManager::~FIRUtilManager(v1);
  _Unwind_Resume(a1);
}

void Phase::Controller::IR::FIRUtilManager::AddNewFFTSizeSupport(Phase::Controller::IR::FIRUtilManager *this, int a2)
{
  v3 = a2;
  if (a2 <= 0)
  {
    std::terminate();
  }

  if ((atomic_fetch_or(this + 27, a2) & v3) == 0)
  {
    std::__shared_mutex_base::lock((this + 48));
    v6 = &v3;
    v4 = this;
    v5 = &v3;
    std::__hash_table<std::__hash_value_type<int,Phase::Controller::IR::FIRUtilManager::FIRUtils>,std::__unordered_map_hasher<int,std::__hash_value_type<int,Phase::Controller::IR::FIRUtilManager::FIRUtils>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,Phase::Controller::IR::FIRUtilManager::FIRUtils>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,Phase::Controller::IR::FIRUtilManager::FIRUtils>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<double const&,int &>>(this + 1, &v3);
    std::__shared_mutex_base::unlock((this + 48));
  }
}

void Phase::Controller::IR::IRBuilderCpuFIRCrossover::~IRBuilderCpuFIRCrossover(Phase::Controller::IR::IRBuilderCpuFIRCrossover *this)
{
  *this = &unk_284D353F0;
  v2 = this + 16;
  std::__hash_table<std::__hash_value_type<int,std::unique_ptr<Phase::LinkwitzRileyFilterBank>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unique_ptr<Phase::LinkwitzRileyFilterBank>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unique_ptr<Phase::LinkwitzRileyFilterBank>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unique_ptr<Phase::LinkwitzRileyFilterBank>>>>::~__hash_table(this + 232);
  std::condition_variable::~condition_variable((this + 168));
  std::condition_variable::~condition_variable((this + 120));
  std::mutex::~mutex((this + 56));
  std::__hash_table<std::__hash_value_type<int,Phase::Controller::IR::FIRUtilManager::FIRUtils>,std::__unordered_map_hasher<int,std::__hash_value_type<int,Phase::Controller::IR::FIRUtilManager::FIRUtils>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,Phase::Controller::IR::FIRUtilManager::FIRUtils>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,Phase::Controller::IR::FIRUtilManager::FIRUtils>>>::~__hash_table(v2);
}

{
  Phase::Controller::IR::IRBuilderCpuFIRCrossover::~IRBuilderCpuFIRCrossover(this);

  JUMPOUT(0x23EE864A0);
}

unint64_t Phase::Controller::IR::IRBuilderCpuFIRCrossover::GetWorkBufferSizeInBytes(Phase::Controller::IR::IRBuilderCpuFIRCrossover *this, const Phase::Controller::IR::Metadata *a2)
{
  v4 = *(a2 + 4);
  v6 = (*(*v4 + 48))(v4);
  v7 = *(a2 + 1);
  if (v7 && *v7 == 3 && (v8 = *(v7 + 104)) != 0)
  {
    v9 = *(v8 + 8);
  }

  else
  {
    LODWORD(v9) = 0;
  }

  SpatializerWorkBufferSizeInBytes = Phase::Controller::IR::GetSpatializerWorkBufferSizeInBytes(a2, v5);
  v11 = Phase::Controller::IR::IRBuilderCpuFIRCrossover::CalculateFilterProperties(this, a2, v4);
  v12 = 8 * v6;
  v13 = ((SpatializerWorkBufferSizeInBytes + 63) & 0xFFFFFFFFFFFFFFF0) + v12;
  if (v6 < 1)
  {
    v19 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
    v16 = (v11 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
    v18 = ((v16 + ((v12 + v19 + 15) & 0xFFFFFFFFFFFFFFF0) + 15) & 0xFFFFFFFFFFFFFFF0) + v12;
  }

  else
  {
    v14 = v6;
    do
    {
      v13 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) + 4 * v11;
      --v14;
    }

    while (v14);
    v15 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) + v12;
    v16 = (v11 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
    v17 = v6;
    do
    {
      v15 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF0) + v16;
      --v17;
    }

    while (v17);
    v18 = ((v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF0) + 15) & 0xFFFFFFFFFFFFFFF0) + v12;
    do
    {
      v18 = ((v18 + 15) & 0xFFFFFFFFFFFFFFF0) + v16;
      --v6;
    }

    while (v6);
  }

  result = ((v18 + 15) & 0xFFFFFFFFFFFFFFF0) + 8 * v9;
  if (v9 >= 1)
  {
    do
    {
      result = ((result + 15) & 0xFFFFFFFFFFFFFFF0) + v16;
      LODWORD(v9) = v9 - 1;
    }

    while (v9);
  }

  return result;
}

unint64_t Phase::Controller::IR::IRBuilderCpuFIRCrossover::CalculateFilterProperties(Phase::Controller::IR::IRBuilderCpuFIRCrossover *this, const Phase::Controller::IR::Metadata *a2, const Phase::Controller::SpatializerEncoder *a3)
{
  MaxDelayInSamples = Phase::Controller::IR::GetMaxDelayInSamples(a2, a2);
  LODWORD(a3) = (*(*a3 + 64))(a3, a2 + 16) + MaxDelayInSamples;
  v7 = *(this + 68);
  v8 = a3 + v7 - 1;
  v9 = a3 + v7 - 2;
  if ((v8 ^ v9) <= v9)
  {
    v10 = log2f(v8);
    v11 = ldexp(1.0, vcvtms_s32_f32(v10));
    v12 = v8 - v11;
    if (v12 >= v7 / 2)
    {
      v13 = 1;
      do
      {
        v9 |= v9 >> v13;
        v14 = v13 >= 0x10;
        v13 *= 2;
      }

      while (!v14);
      v8 = v9 + 1;
    }

    else
    {
      v7 -= v12;
      v8 = v11;
    }
  }

  return v7 | (v8 << 32);
}

void Phase::Controller::IR::IRBuilderCpuFIRCrossover::Build(int8x8_t *this, const Phase::Controller::IR::Metadata *a2, char *a3, float *a4)
{
  v104 = *MEMORY[0x277D85DE8];
  v93 = *(a2 + 4);
  v8 = (*(*v93 + 48))();
  v9 = *(a2 + 1);
  v90 = a4;
  if (v9 && *v9 == 3 && (v10 = *(v9 + 104)) != 0)
  {
    v92 = *(v10 + 8);
  }

  else
  {
    v92 = 0;
  }

  v11 = (*(*v93 + 64))(v93, a2 + 16);
  v12 = Phase::Controller::IR::IRBuilderCpuFIRCrossover::CalculateFilterProperties(this, a2, v93);
  v89 = v13;
  SpatializerWorkBufferSizeInBytes = Phase::Controller::IR::GetSpatializerWorkBufferSizeInBytes(a2, v13);
  v15 = *(a2 + 1);
  if (v15)
  {
    v16 = v92;
    if (*v15 == 3 && (v17 = *(v15 + 104)) != 0)
    {
      v88 = *v17;
    }

    else
    {
      LODWORD(v88) = 0;
    }
  }

  else
  {
    LODWORD(v88) = 0;
    v16 = v92;
  }

  *a3 = 0;
  v18 = a3 + 48;
  if (SpatializerWorkBufferSizeInBytes)
  {
    v19 = (a3 + 63) & 0xFFFFFFFFFFFFFFF0;
    *a3 = v19;
    v18 = (v19 + SpatializerWorkBufferSizeInBytes);
  }

  v20 = (v18 + 15);
  v21 = 8 * v8;
  v20 &= 0xFFFFFFFFFFFFFFF0;
  *(a3 + 1) = v20;
  v22 = v20 + v21;
  v23 = 4 * v12;
  if (v8 <= 0)
  {
    v30 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
    *(a3 + 2) = v30;
    v91 = (a3 + 16);
    v28 = v30 + v21;
  }

  else
  {
    v24 = 0;
    do
    {
      v25 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
      *(*(a3 + 1) + v24) = v25;
      v22 = v25 + v23;
      v24 += 8;
    }

    while (8 * v8 != v24);
    v26 = 0;
    v27 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
    *(a3 + 2) = v27;
    v28 = v27 + v21;
    do
    {
      v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF0;
      *(*(a3 + 2) + v26) = v29;
      v28 = v29 + ((v12 >> 30) & 0xFFFFFFFFFFFFFFFCLL);
      v26 += 8;
    }

    while (8 * v8 != v26);
    v91 = (a3 + 16);
  }

  v31 = (v28 + 15) & 0xFFFFFFFFFFFFFFF0;
  v32 = 4 * (v12 >> 32);
  __N = v12 >> 32;
  v33 = (v31 + v32 + 15) & 0xFFFFFFFFFFFFFFF0;
  *(a3 + 3) = v31;
  *(a3 + 4) = v33;
  v34 = v33 + v21;
  if (v8 >= 1)
  {
    v35 = 0;
    do
    {
      v36 = (v34 + 15) & 0xFFFFFFFFFFFFFFF0;
      *(*(a3 + 4) + v35) = v36;
      v34 = v36 + v32;
      v35 += 8;
    }

    while (8 * v8 != v35);
  }

  v37 = (v34 + 15) & 0xFFFFFFFFFFFFFFF0;
  *(a3 + 5) = v37;
  v38 = v16 << 32;
  v39 = v37 + 8 * v16;
  if (v16 >= 1)
  {
    v40 = 0;
    do
    {
      v41 = (v39 + 15) & 0xFFFFFFFFFFFFFFF0;
      *(*(a3 + 5) + 8 * v40) = v41;
      v39 = v41 + v32;
      ++v40;
    }

    while ((v16 & 0x7FFFFFFF) != v40);
  }

  v42 = (*(*this + 16))(this, a2);
  if (v42 != (v39 - a3))
  {
    v83 = **(Phase::Logger::GetInstance(v42) + 288);
    if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "IRBuilderCpuFIRCrossover.mm";
      LOWORD(v101) = 1024;
      *(&v101 + 2) = 177;
      _os_log_impl(&dword_23A302000, v83, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [GetWorkBufferSizeInBytes(inMetadata) != PointerDiff(pMemory, pInWorkBuffer) is true]: Memory Allocation Error", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Memory Allocation Error");
  }

  __A.realp = 0;
  __A.imagp = 0;
  v98.realp = 0;
  v98.imagp = 0;
  __D.realp = 0;
  __D.imagp = 0;
  Phase::Controller::IR::FIRUtilManager::AddNewFFTSizeSupport(&this[1], SHIDWORD(v12));
  FIRUtils = Phase::Controller::IR::FIRUtilManager::GetFIRUtils(&this[1], SHIDWORD(v12));
  v96 = FIRUtils;
  v44 = this[30];
  if (!*&v44)
  {
    goto LABEL_45;
  }

  v45 = v38 >> 32;
  v46 = vcnt_s8(v44);
  v46.i16[0] = vaddlv_u8(v46);
  if (v46.u32[0] > 1uLL)
  {
    v47 = v38 >> 32;
    if (*&v44 <= v45)
    {
      v47 = v45 % *&v44;
    }
  }

  else
  {
    v47 = (*&v44 - 1) & v45;
  }

  v48 = *(*&this[29] + 8 * v47);
  if (!v48 || (v49 = *v48) == 0)
  {
LABEL_45:
    v51 = **(Phase::Logger::GetInstance(FIRUtils) + 288);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "IRBuilderCpuFIRCrossover.mm";
      LOWORD(v101) = 1024;
      *(&v101 + 2) = 315;
      WORD3(v101) = 2048;
      *(&v101 + 1) = this;
      v102 = 1024;
      v103 = v92;
      _os_log_impl(&dword_23A302000, v51, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): IRBuilderCpuFIRCrossover:%p Filterbank with %d bands is not supported.", buf, 0x22u);
    }

    v52 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v52, "IRBuilderCpuFIRCrossover:%p Filterbank with %d bands is not supported.");
  }

  v94 = SHIDWORD(v12) / 2;
  while (1)
  {
    v50 = v49[1];
    if (v50 == v45)
    {
      break;
    }

    if (v46.u32[0] > 1uLL)
    {
      if (v50 >= *&v44)
      {
        v50 %= *&v44;
      }
    }

    else
    {
      v50 &= *&v44 - 1;
    }

    if (v50 != v47)
    {
      goto LABEL_45;
    }

LABEL_44:
    v49 = *v49;
    if (!v49)
    {
      goto LABEL_45;
    }
  }

  if (*(v49 + 4) != v92)
  {
    goto LABEL_44;
  }

  v87 = v49[3];
  if (!v87)
  {
    v85 = **(Phase::Logger::GetInstance(FIRUtils) + 288);
    if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "IRBuilderCpuFIRCrossover.mm";
      LOWORD(v101) = 1024;
      *(&v101 + 2) = 196;
      WORD3(v101) = 1024;
      DWORD2(v101) = v92;
      _os_log_impl(&dword_23A302000, v85, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [nullptr == pFilterBankInUse is true]: Failed to get filter bank for subband count %d", buf, 0x18u);
    }

    v86 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v86, "Failed to get filter bank for subband count %d");
  }

  if (v8 >= 1)
  {
    v53 = 0;
    do
    {
      vDSP_vclr(*(*(a3 + 4) + v53), 1, __N);
      v53 += 8;
    }

    while (8 * v8 != v53);
  }

  if (v92 >= 1)
  {
    v54 = 0;
    v55 = 8 * v8;
    do
    {
      vDSP_vclr(*(a3 + 3), 1, __N);
      OneBandImpulseResponse = Phase::LinkwitzRileyFilterBank::GetOneBandImpulseResponse(v87, v54);
      memcpy(*(a3 + 3), OneBandImpulseResponse, v23);
      v57 = (*(*(a3 + 5) + 8 * v54) + 4 * v94);
      v98.realp = *(*(a3 + 5) + 8 * v54);
      v98.imagp = v57;
      Phase::DFTUtils::ProcessDFT(*v96, *(a3 + 3), &v98, 0.5);
      if (v8 > 0)
      {
        v58 = 0;
        do
        {
          vDSP_vclr(*(*v91 + v58), 1, __N);
          v58 += 8;
        }

        while (v55 != v58);
      }

      if (v88 >= 1)
      {
        v59 = 0;
        do
        {
          v60 = *(a2 + 1);
          v61 = v60[1] + 12 * v59;
          *buf = *v61;
          *&buf[8] = *(v61 + 8);
          LODWORD(v101) = vcvtas_u32_f32(*(v60[7] + 4 * v59) * *a2);
          *(&v101 + 4) = v60[13] + 4 * *(v60[13] + 8) * v59 + 16;
          if (*(v60[18] + v59))
          {
            v62 = -1.0;
          }

          else
          {
            v62 = 1.0;
          }

          *(&v101 + 3) = v62;
          v63 = (*(*v93 + 88))(v93, a2 + 16, buf, *a3);
          if (v8 > 0)
          {
            v64 = 0;
            v65 = *(*(&v101 + 4) + 4 * v54) * *(&v101 + 3);
            v66 = v101;
            v67 = *v91;
            do
            {
              if (v11 >= 1)
              {
                v68 = (*(v67 + 8 * v64) + 4 * v66);
                v69 = v63;
                v70 = v11;
                do
                {
                  *v68 = *v68 + (*v69 * v65);
                  ++v68;
                  v69 += v8;
                  --v70;
                }

                while (v70);
              }

              ++v64;
              v63 += 4;
            }

            while (v64 != v8);
          }

          ++v59;
        }

        while (v59 != (v88 & 0x7FFFFFFF));
      }

      if (v8 >= 1)
      {
        v71 = 0;
        do
        {
          v72 = *(a3 + 2);
          v73 = (*(a3 + 3) + 4 * v94);
          __A.realp = *(a3 + 3);
          __A.imagp = v73;
          Phase::DFTUtils::ProcessDFT(*v96, *(v72 + v71), &__A, 0.5);
          v74 = *(a3 + 4);
          v75 = (*(*(a3 + 5) + 8 * v54) + 4 * v94);
          v98.realp = *(*(a3 + 5) + 8 * v54);
          v98.imagp = v75;
          __D.realp = *(v74 + v71);
          __D.imagp = &__D.realp[v94];
          Phase::DFTUtils::MultiplyAddComplexPackedSpectrums(*v96, &__A, &v98, &__D, &__D, v94);
          v71 += 8;
        }

        while (v55 != v71);
      }

      ++v54;
    }

    while (v54 != (v92 & 0x7FFFFFFF));
  }

  if (v8 >= 1)
  {
    for (i = 0; i != v8; ++i)
    {
      v77 = *(a3 + 3);
      v78 = (*(*(a3 + 4) + 8 * i) + 4 * v94);
      __D.realp = *(*(a3 + 4) + 8 * i);
      __D.imagp = v78;
      Phase::DFTUtils::ProcessIDFT(*v96, &__D, v77);
      if (v89 > 0)
      {
        v79 = *(a3 + 3);
        v80 = v90;
        v81 = v89 & 0x7FFFFFFF;
        do
        {
          v82 = *v79++;
          *v80 = v82 + *v80;
          v80 += v8;
          --v81;
        }

        while (v81);
      }

      ++v90;
    }
  }
}

uint64_t *Phase::Controller::IR::FIRUtilManager::GetFIRUtils(Phase::Controller::IR::FIRUtilManager *this, int a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v3 = (this + 48);
  std::__shared_mutex_base::lock_shared((this + 48));
  v4 = std::__hash_table<std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::__unordered_map_hasher<Phase::ActionTreeServerCommand,std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::hash<Phase::ActionTreeServerCommand>,std::equal_to<Phase::ActionTreeServerCommand>,true>,std::__unordered_map_equal<Phase::ActionTreeServerCommand,std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>,std::equal_to<Phase::ActionTreeServerCommand>,std::hash<Phase::ActionTreeServerCommand>,true>,std::allocator<std::__hash_value_type<Phase::ActionTreeServerCommand,std::function<void ()(void const*)>>>>::find<Phase::ActionTreeServerCommand>(this + 1, &v8);
  if (!v4)
  {
    v6 = **(Phase::Logger::GetInstance(0) + 288);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v10 = "IRBuilderFIRUtilManager.h";
      v11 = 1024;
      v12 = 77;
      v13 = 1024;
      v14 = v8;
      _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [mFIRUtilsPool.end() == FFTUtilsIt is true]: Failed to get DFT/FIR utils from pool for FFT length %i", buf, 0x18u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Failed to get DFT/FIR utils from pool for FFT length %i");
  }

  std::__shared_mutex_base::unlock_shared(v3);
  return v4 + 3;
}

void sub_23A421A0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  __cxa_free_exception(v10);
  std::shared_lock<std::shared_mutex>::~shared_lock[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

Phase::Controller::IR::FIRUtilManager *Phase::Controller::IR::FIRUtilManager::FIRUtilManager(Phase::Controller::IR::FIRUtilManager *this, double a2)
{
  *this = a2;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 1065353216;
  std::__shared_mutex_base::__shared_mutex_base((this + 48));
  *(this + 27) = 0;
  return this;
}

uint64_t std::__hash_table<std::__hash_value_type<int,Phase::Controller::IR::FIRUtilManager::FIRUtils>,std::__unordered_map_hasher<int,std::__hash_value_type<int,Phase::Controller::IR::FIRUtilManager::FIRUtils>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,Phase::Controller::IR::FIRUtilManager::FIRUtils>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,Phase::Controller::IR::FIRUtilManager::FIRUtils>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<int,Phase::Controller::IR::FIRUtilManager::FIRUtils>,std::__unordered_map_hasher<int,std::__hash_value_type<int,Phase::Controller::IR::FIRUtilManager::FIRUtils>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,Phase::Controller::IR::FIRUtilManager::FIRUtils>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,Phase::Controller::IR::FIRUtilManager::FIRUtils>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<int,Phase::Controller::IR::FIRUtilManager::FIRUtils>,std::__unordered_map_hasher<int,std::__hash_value_type<int,Phase::Controller::IR::FIRUtilManager::FIRUtils>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,Phase::Controller::IR::FIRUtilManager::FIRUtils>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,Phase::Controller::IR::FIRUtilManager::FIRUtils>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      v4 = *(v2 + 5);
      if (v4)
      {
        *(v2 + 6) = v4;
        operator delete(v4);
      }

      std::unique_ptr<Phase::FIRFilterUtils>::reset[abi:ne200100](v2 + 4, 0);
      std::unique_ptr<Phase::DFTUtils>::reset[abi:ne200100](v2 + 3, 0);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

Phase::FIRFilterUtils *std::unique_ptr<Phase::FIRFilterUtils>::reset[abi:ne200100](Phase::FIRFilterUtils **a1, Phase::FIRFilterUtils *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    Phase::FIRFilterUtils::~FIRFilterUtils(result);

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

void Phase::FIRFilterUtils::~FIRFilterUtils(Phase::FIRFilterUtils *this)
{
  v2 = 384;
  do
  {
    v3 = this + v2;
    v9 = (this + v2 + 96);
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
    v9 = (this + v2 + 72);
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
    v4 = *(this + v2 + 48);
    if (v4)
    {
      *(v3 + 7) = v4;
      operator delete(v4);
    }

    v5 = *(v3 + 1);
    if (v5)
    {
      *(this + v2 + 16) = v5;
      operator delete(v5);
    }

    v2 -= 128;
  }

  while (v2);
  v6 = *(this + 6);
  if (v6)
  {
    *(this + 7) = v6;
    operator delete(v6);
  }

  v7 = *(this + 3);
  if (v7)
  {
    *(this + 4) = v7;
    operator delete(v7);
  }

  v8 = *this;
  if (*this)
  {
    *(this + 1) = v8;
    operator delete(v8);
  }
}

vDSP_DFT_Setup *std::unique_ptr<Phase::DFTUtils>::reset[abi:ne200100](vDSP_DFT_Setup **a1, vDSP_DFT_Setup *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    Phase::DFTUtils::~DFTUtils(result);

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,Phase::Controller::IR::FIRUtilManager::FIRUtils>,std::__unordered_map_hasher<int,std::__hash_value_type<int,Phase::Controller::IR::FIRUtilManager::FIRUtils>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,Phase::Controller::IR::FIRUtilManager::FIRUtils>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,Phase::Controller::IR::FIRUtilManager::FIRUtils>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<double const&,int &>>(void *a1, int *a2)
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
  if (!v6 || (result = *v6) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<int,Phase::Controller::IR::FIRUtilManager::FIRUtils>,std::__unordered_map_hasher<int,std::__hash_value_type<int,Phase::Controller::IR::FIRUtilManager::FIRUtils>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,Phase::Controller::IR::FIRUtilManager::FIRUtils>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,Phase::Controller::IR::FIRUtilManager::FIRUtils>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<double const&,int &>>();
  }

  while (1)
  {
    v8 = result[1];
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
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (*(result + 4) != v2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_23A421E9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a10)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,Phase::Controller::IR::FIRUtilManager::FIRUtils>,void *>>>::operator()[abi:ne200100](&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_23A421F60(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,Phase::Controller::IR::FIRUtilManager::FIRUtils>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void Phase::Controller::IR::FIRUtilManager::FIRUtils::FIRUtils(Phase::Controller::IR::FIRUtilManager::FIRUtils *this, double a2)
{
  *(this + 1) = 0u;
  *(this + 4) = 0;
  *this = 0u;
  operator new();
}

void sub_23A422050(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  std::unique_ptr<Phase::FIRFilterUtils>::reset[abi:ne200100]((v1 + 8), 0);
  std::unique_ptr<Phase::DFTUtils>::reset[abi:ne200100](v1, 0);
  _Unwind_Resume(a1);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,Phase::Controller::IR::FIRUtilManager::FIRUtils>,void *>>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    v3 = *(a2 + 40);
    if (v3)
    {
      *(a2 + 48) = v3;
      operator delete(v3);
    }

    std::unique_ptr<Phase::FIRFilterUtils>::reset[abi:ne200100]((a2 + 32), 0);
    std::unique_ptr<Phase::DFTUtils>::reset[abi:ne200100]((a2 + 24), 0);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void Phase::Controller::IR::FIRUtilManager::~FIRUtilManager(Phase::Controller::IR::FIRUtilManager *this)
{
  std::condition_variable::~condition_variable((this + 160));
  std::condition_variable::~condition_variable((this + 112));
  std::mutex::~mutex((this + 48));
  std::__hash_table<std::__hash_value_type<int,Phase::Controller::IR::FIRUtilManager::FIRUtils>,std::__unordered_map_hasher<int,std::__hash_value_type<int,Phase::Controller::IR::FIRUtilManager::FIRUtils>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,Phase::Controller::IR::FIRUtilManager::FIRUtils>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,Phase::Controller::IR::FIRUtilManager::FIRUtils>>>::~__hash_table(this + 8);
}

uint64_t std::__hash_table<std::__hash_value_type<int,std::unique_ptr<Phase::LinkwitzRileyFilterBank>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unique_ptr<Phase::LinkwitzRileyFilterBank>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unique_ptr<Phase::LinkwitzRileyFilterBank>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unique_ptr<Phase::LinkwitzRileyFilterBank>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<int,std::unique_ptr<Phase::LinkwitzRileyFilterBank>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unique_ptr<Phase::LinkwitzRileyFilterBank>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unique_ptr<Phase::LinkwitzRileyFilterBank>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unique_ptr<Phase::LinkwitzRileyFilterBank>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<int,std::unique_ptr<Phase::LinkwitzRileyFilterBank>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unique_ptr<Phase::LinkwitzRileyFilterBank>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unique_ptr<Phase::LinkwitzRileyFilterBank>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unique_ptr<Phase::LinkwitzRileyFilterBank>>>>::__deallocate_node(uint64_t a1, Phase::LinkwitzRileyFilterBank **a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::unique_ptr<Phase::LinkwitzRileyFilterBank>::reset[abi:ne200100](v2 + 3, 0);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::unique_ptr<Phase::LinkwitzRileyFilterBank>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unique_ptr<Phase::LinkwitzRileyFilterBank>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unique_ptr<Phase::LinkwitzRileyFilterBank>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unique_ptr<Phase::LinkwitzRileyFilterBank>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(void *a1, int *a2)
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

void sub_23A422454(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<int,std::unique_ptr<Phase::LinkwitzRileyFilterBank>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::unique_ptr<Phase::LinkwitzRileyFilterBank>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<int,std::unique_ptr<Phase::LinkwitzRileyFilterBank>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::unique_ptr<Phase::LinkwitzRileyFilterBank>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::unique_ptr<Phase::LinkwitzRileyFilterBank>::reset[abi:ne200100](v2 + 3, 0);
    }

    operator delete(v2);
  }

  return a1;
}

Phase::LinkwitzRileyFilterBank *std::unique_ptr<Phase::LinkwitzRileyFilterBank>::reset[abi:ne200100](Phase::LinkwitzRileyFilterBank **a1, Phase::LinkwitzRileyFilterBank *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    Phase::LinkwitzRileyFilterBank::~LinkwitzRileyFilterBank(result);

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

void Phase::Controller::IR::IRBuilderCpuFIREq::~IRBuilderCpuFIREq(Phase::Controller::IR::IRBuilderCpuFIREq *this)
{
  *this = &unk_284D35420;
  v2 = this + 16;
  std::condition_variable::~condition_variable((this + 168));
  std::condition_variable::~condition_variable((this + 120));
  std::mutex::~mutex((this + 56));
  std::__hash_table<std::__hash_value_type<int,Phase::Controller::IR::FIRUtilManager::FIRUtils>,std::__unordered_map_hasher<int,std::__hash_value_type<int,Phase::Controller::IR::FIRUtilManager::FIRUtils>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,Phase::Controller::IR::FIRUtilManager::FIRUtils>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,Phase::Controller::IR::FIRUtilManager::FIRUtils>>>::~__hash_table(v2);
}

{
  Phase::Controller::IR::IRBuilderCpuFIREq::~IRBuilderCpuFIREq(this);

  JUMPOUT(0x23EE864A0);
}

unint64_t Phase::Controller::IR::IRBuilderCpuFIREq::GetWorkBufferSizeInBytes(Phase::Controller::IR::IRBuilderCpuFIREq *this, const Phase::Controller::IR::Metadata *a2)
{
  v3 = *(a2 + 4);
  v4 = (*(*v3 + 48))(v3);
  v5 = *(a2 + 1);
  if (v5 && *v5 == 3 && (v6 = *(v5 + 104)) != 0)
  {
    v7 = ((*(v6 + 8) << 32) >> 30) + 15;
  }

  else
  {
    v7 = 15;
  }

  v8 = (*(*v3 + 64))(v3, a2 + 16);
  v10 = ((((Phase::Controller::IR::GetSpatializerWorkBufferSizeInBytes(a2, v9) + 95) & 0xFFFFFFFFFFFFFFF0) + v7) & 0xFFFFFFFFFFFFFFF0) + 8 * v4;
  v11 = 4 * v8;
  if (v4 >= 1)
  {
    do
    {
      v10 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + v11;
      --v4;
    }

    while (v4);
  }

  v12 = v8 / 2 + 1;
  return ((((((((((((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 4 * v12 + 15) & 0xFFFFFFFFFFFFFFF0) + 4 * v12 + 15) & 0xFFFFFFFFFFFFFFF0) + 4 * v12 + 15) & 0xFFFFFFFFFFFFFFF0) + 4 * v12 + 15) & 0xFFFFFFFFFFFFFFF0) + 8 * v12 + 15) & 0xFFFFFFFFFFFFFFF0) + v11;
}

void Phase::Controller::IR::IRBuilderCpuFIREq::Build(Phase::Controller::IR::IRBuilderCpuFIREq *this, const Phase::Controller::IR::Metadata *a2, char *a3, float *a4)
{
  v68 = *MEMORY[0x277D85DE8];
  v56 = *(a2 + 4);
  v8 = (*(*v56 + 48))();
  v57 = a2;
  v9 = *(a2 + 1);
  if (v9 && *v9 == 3 && (v10 = *(v9 + 104)) != 0)
  {
    v58 = *(v10 + 8) << 32;
  }

  else
  {
    v58 = 0;
  }

  v11 = (*(*v56 + 64))(v56, a2 + 16);
  SpatializerWorkBufferSizeInBytes = Phase::Controller::IR::GetSpatializerWorkBufferSizeInBytes(a2, v12);
  v14 = (*(*v56 + 64))(v56, a2 + 16);
  v15 = *(a2 + 1);
  if (v15 && *v15 == 3 && (v16 = *(v15 + 104)) != 0)
  {
    v17 = *v16;
  }

  else
  {
    LODWORD(v17) = 0;
  }

  v18 = v11 / 2;
  *a3 = 0;
  v19 = a3 + 72;
  if (SpatializerWorkBufferSizeInBytes)
  {
    v20 = (a3 + 87) & 0xFFFFFFFFFFFFFFF0;
    *a3 = v20;
    v19 = (v20 + SpatializerWorkBufferSizeInBytes);
  }

  v21 = v18 + 1;
  v22 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v23 = (v22 + (v58 >> 30) + 15) & 0xFFFFFFFFFFFFFFF0;
  *(a3 + 1) = v22;
  *(a3 + 2) = v23;
  v24 = v23 + 8 * v8;
  v25 = 4 * v11;
  if (v8 >= 1)
  {
    v26 = 0;
    do
    {
      v27 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
      *(*(a3 + 2) + v26) = v27;
      v24 = v27 + v25;
      v26 += 8;
    }

    while (8 * v8 != v26);
  }

  v28 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  v29 = (v28 + 4 * v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  *(a3 + 3) = v28;
  *(a3 + 4) = v29;
  v30 = (v29 + 4 * v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v31 = (v30 + 4 * v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  *(a3 + 5) = v30;
  *(a3 + 6) = v31;
  v32 = (v31 + 4 * v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v33 = (v32 + 8 * v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  *(a3 + 7) = v32;
  *(a3 + 8) = v33;
  v34 = v33 + v25;
  v35 = (*(*this + 16))(this, v57);
  if (v35 != (v34 - a3))
  {
    v52 = **(Phase::Logger::GetInstance(v35) + 288);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "IRBuilderCpuFIREq.mm";
      *v66 = 1024;
      *&v66[2] = 149;
      _os_log_impl(&dword_23A302000, v52, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [GetWorkBufferSizeInBytes(inMetadata) != PointerDiff(pMemory, pInWorkBuffer) is true]: Memory Allocation Error", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Memory Allocation Error");
  }

  Phase::Controller::IR::FIRUtilManager::AddNewFFTSizeSupport((this + 8), v11);
  FIRUtils = Phase::Controller::IR::FIRUtilManager::GetFIRUtils((this + 8), v11);
  v37 = *(a3 + 40);
  __C = *(a3 + 24);
  v64 = v37;
  if (v17 >= 1)
  {
    v38 = FIRUtils;
    v39 = 0;
    __n = v58 >> 30;
    v54 = v58 >> 32;
    do
    {
      v40 = *(v57 + 1);
      v41 = v40[1] + 12 * v39;
      *buf = *v41;
      *&buf[8] = *(v41 + 8);
      *v66 = vcvtas_u32_f32(*(v40[7] + 4 * v39) * *v57);
      *&v66[4] = v40[13] + 4 * *(v40[13] + 8) * v39 + 16;
      v59 = v39;
      if (*(v40[18] + v39))
      {
        v42 = -1.0;
      }

      else
      {
        v42 = 1.0;
      }

      v67 = v42;
      v43 = (*(*v56 + 88))(v56, v57 + 16, buf, *a3);
      memcpy(*(a3 + 1), *&v66[4], __n);
      Phase::ArrayFunction::Deinterleave(v43, *(a3 + 2), v14, v8);
      v44 = *(a3 + 1);
      v61 = 0;
      v62 = 0;
      __p = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, v44, v44 + 4 * v54, v54);
      Phase::FIRFilterUtils::ConstructFIREqFilter(v38[1], 1, &__p, v38 + 16, v64.realp, v64.imagp, *(a3 + 7));
      if (v8 >= 1)
      {
        v45 = 0;
        v46 = v8 * *v66;
        do
        {
          Phase::DFTUtils::ProcessDFT(*v38, *(*(a3 + 2) + 8 * v45), &__C, 0.5);
          Phase::DFTUtils::MultiplyComplexPackedSpectrums(*v38, &__C, &v64, &__C, v18);
          Phase::DFTUtils::ProcessIDFT(*v38, &__C, *(a3 + 8));
          if (v14 >= 1)
          {
            v47 = v67;
            v48 = *(a3 + 8);
            v49 = v46;
            v50 = v14;
            do
            {
              v51 = *v48++;
              a4[v49] = a4[v49] + (v47 * v51);
              v49 += v8;
              --v50;
            }

            while (v50);
          }

          ++v45;
          ++v46;
        }

        while (v45 != v8);
      }

      if (__p)
      {
        v61 = __p;
        operator delete(__p);
      }

      v39 = v59 + 1;
    }

    while (v59 + 1 != (v17 & 0x7FFFFFFF));
  }
}

uint64_t Phase::Controller::IR::IRBuilderCpuIIRCrossover::IRBuilderCpuIIRCrossover(uint64_t result, uint64_t a2)
{
  *result = &unk_284D35450;
  *(result + 8) = 0u;
  *(result + 24) = 0u;
  *(result + 40) = 1065353216;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 80) = 1065353216;
  *(result + 88) = 0u;
  *(result + 104) = 0u;
  *(result + 120) = 1065353216;
  if (*(a2 + 16))
  {
    operator new();
  }

  return result;
}

void sub_23A4235E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  operator delete(v20);
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(v19);
  std::__hash_table<std::__hash_value_type<int,std::unique_ptr<Phase::LinkwitzRileyFilterBank>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unique_ptr<Phase::LinkwitzRileyFilterBank>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unique_ptr<Phase::LinkwitzRileyFilterBank>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unique_ptr<Phase::LinkwitzRileyFilterBank>>>>::~__hash_table(a12);
  std::__hash_table<std::__hash_value_type<int,std::vector<vDSP_biquad_SetupStruct *>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<vDSP_biquad_SetupStruct *>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<vDSP_biquad_SetupStruct *>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<vDSP_biquad_SetupStruct *>>>>::~__hash_table(v18);
  _Unwind_Resume(a1);
}

void Phase::Controller::IR::IRBuilderCpuIIRCrossover::~IRBuilderCpuIIRCrossover(Phase::Controller::IR::IRBuilderCpuIIRCrossover *this)
{
  *this = &unk_284D35450;
  for (i = *(this + 3); i; i = *i)
  {
    v3 = i[3];
    v4 = i[4];
    while (v3 != v4)
    {
      vDSP_biquad_DestroySetup(*v3++);
    }
  }

  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(this + 88);
  std::__hash_table<std::__hash_value_type<int,std::unique_ptr<Phase::LinkwitzRileyFilterBank>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unique_ptr<Phase::LinkwitzRileyFilterBank>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unique_ptr<Phase::LinkwitzRileyFilterBank>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unique_ptr<Phase::LinkwitzRileyFilterBank>>>>::~__hash_table(this + 48);
  std::__hash_table<std::__hash_value_type<int,std::vector<vDSP_biquad_SetupStruct *>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<vDSP_biquad_SetupStruct *>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<vDSP_biquad_SetupStruct *>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<vDSP_biquad_SetupStruct *>>>>::~__hash_table(this + 8);
}

{
  Phase::Controller::IR::IRBuilderCpuIIRCrossover::~IRBuilderCpuIIRCrossover(this);

  JUMPOUT(0x23EE864A0);
}

unint64_t Phase::Controller::IR::IRBuilderCpuIIRCrossover::GetWorkBufferSizeInBytes(Phase::Controller::IR::IRBuilderCpuIIRCrossover *this, const Phase::Controller::IR::Metadata *a2)
{
  v4 = *(a2 + 4);
  MaxDelayInSamples = Phase::Controller::IR::GetMaxDelayInSamples(a2, a2);
  v6 = (*(*v4 + 64))(v4, a2 + 16);
  v7 = (*(*v4 + 48))(v4);
  v8 = *(a2 + 1);
  if (v8 && *v8 == 3 && (v9 = *(v8 + 104)) != 0)
  {
    v10 = *(v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  v11 = std::__hash_table<std::__hash_value_type<Phase::Controller::IR::IRBuilder::Processor,std::unordered_map<Phase::Controller::IR::IRBuilder::Method,Phase::Controller::IR::IRBuilderBase *>>,std::__unordered_map_hasher<Phase::Controller::IR::IRBuilder::Processor,std::__hash_value_type<Phase::Controller::IR::IRBuilder::Processor,std::unordered_map<Phase::Controller::IR::IRBuilder::Method,Phase::Controller::IR::IRBuilderBase *>>,std::hash<Phase::Controller::IR::IRBuilder::Processor>,std::equal_to<Phase::Controller::IR::IRBuilder::Processor>,true>,std::__unordered_map_equal<Phase::Controller::IR::IRBuilder::Processor,std::__hash_value_type<Phase::Controller::IR::IRBuilder::Processor,std::unordered_map<Phase::Controller::IR::IRBuilder::Method,Phase::Controller::IR::IRBuilderBase *>>,std::equal_to<Phase::Controller::IR::IRBuilder::Processor>,std::hash<Phase::Controller::IR::IRBuilder::Processor>,true>,std::allocator<std::__hash_value_type<Phase::Controller::IR::IRBuilder::Processor,std::unordered_map<Phase::Controller::IR::IRBuilder::Method,Phase::Controller::IR::IRBuilderBase *>>>>::find<Phase::Controller::IR::IRBuilder::Processor>(this + 11, v10);
  if (!v11)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v13 = v6 + MaxDelayInSamples;
  v14 = *(v11 + 5);
  SpatializerWorkBufferSizeInBytes = Phase::Controller::IR::GetSpatializerWorkBufferSizeInBytes(a2, v12);
  v16 = 8 * v7;
  v17 = ((((((SpatializerWorkBufferSizeInBytes + 63) | 8) + 8 * v14 + 8) & 0xFFFFFFFFFFFFFFF0) + 4 * v13 + 15) & 0xFFFFFFFFFFFFFFF0) + v16;
  if (v7 < 1)
  {
    return ((v17 + 15) & 0xFFFFFFFFFFFFFFF0) + v16;
  }

  v18 = 4 * v13;
  v19 = v7;
  do
  {
    v17 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF0) + v18;
    --v19;
  }

  while (v19);
  result = ((v17 + 15) & 0xFFFFFFFFFFFFFFF0) + v16;
  do
  {
    result = ((result + 15) & 0xFFFFFFFFFFFFFFF0) + v18;
    --v7;
  }

  while (v7);
  return result;
}

void Phase::Controller::IR::IRBuilderCpuIIRCrossover::Build(Phase::Controller::IR::IRBuilderCpuIIRCrossover *this, const Phase::Controller::IR::Metadata *a2, char *a3, float *a4)
{
  v92 = *MEMORY[0x277D85DE8];
  v7 = *(a2 + 4);
  MaxDelayInSamples = Phase::Controller::IR::GetMaxDelayInSamples(a2, a2);
  v9 = (*(*v7 + 64))(v7, a2 + 16);
  v83 = v7;
  v10 = (*(*v7 + 48))(v7);
  v84 = a2;
  v11 = *(a2 + 1);
  if (v11 && *v11 == 3 && (v12 = *(v11 + 104)) != 0)
  {
    v13 = *(v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  v80 = v13;
  v14 = std::__hash_table<std::__hash_value_type<Phase::Controller::IR::IRBuilder::Processor,std::unordered_map<Phase::Controller::IR::IRBuilder::Method,Phase::Controller::IR::IRBuilderBase *>>,std::__unordered_map_hasher<Phase::Controller::IR::IRBuilder::Processor,std::__hash_value_type<Phase::Controller::IR::IRBuilder::Processor,std::unordered_map<Phase::Controller::IR::IRBuilder::Method,Phase::Controller::IR::IRBuilderBase *>>,std::hash<Phase::Controller::IR::IRBuilder::Processor>,std::equal_to<Phase::Controller::IR::IRBuilder::Processor>,true>,std::__unordered_map_equal<Phase::Controller::IR::IRBuilder::Processor,std::__hash_value_type<Phase::Controller::IR::IRBuilder::Processor,std::unordered_map<Phase::Controller::IR::IRBuilder::Method,Phase::Controller::IR::IRBuilderBase *>>,std::equal_to<Phase::Controller::IR::IRBuilder::Processor>,std::hash<Phase::Controller::IR::IRBuilder::Processor>,true>,std::allocator<std::__hash_value_type<Phase::Controller::IR::IRBuilder::Processor,std::unordered_map<Phase::Controller::IR::IRBuilder::Method,Phase::Controller::IR::IRBuilderBase *>>>>::find<Phase::Controller::IR::IRBuilder::Processor>(this + 11, v13);
  if (!v14)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v16 = 2 * *(v14 + 5);
  SpatializerWorkBufferSizeInBytes = Phase::Controller::IR::GetSpatializerWorkBufferSizeInBytes(v84, v15);
  v18 = *(v84 + 1);
  if (v18 && *v18 == 3 && (v19 = *(v18 + 104)) != 0)
  {
    v79 = *v19;
  }

  else
  {
    LODWORD(v79) = 0;
  }

  v20 = v9 + MaxDelayInSamples;
  __N = v16 + 2;
  *a3 = 0;
  v21 = a3 + 40;
  if (SpatializerWorkBufferSizeInBytes)
  {
    v22 = (a3 + 55) & 0xFFFFFFFFFFFFFFF0;
    *a3 = v22;
    v21 = (v22 + SpatializerWorkBufferSizeInBytes);
  }

  v23 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v24 = (v23 + 4 * __N + 15) & 0xFFFFFFFFFFFFFFF0;
  *(a3 + 1) = v23;
  *(a3 + 2) = v24;
  v25 = v24 + 4 * v20 + 15;
  v26 = 8 * v10;
  v25 &= 0xFFFFFFFFFFFFFFF0;
  *(a3 + 3) = v25;
  v27 = v25 + v26;
  v28 = v10;
  if (v10 <= 0)
  {
    v37 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
    *(a3 + 4) = v37;
    v34 = (a3 + 32);
    v35 = v37 + v26;
  }

  else
  {
    v29 = 0;
    v30 = 4 * v20;
    do
    {
      v31 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
      *(*(a3 + 3) + v29) = v31;
      v27 = v31 + v30;
      v29 += 8;
    }

    while (8 * v10 != v29);
    v32 = 0;
    v33 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
    *(a3 + 4) = v33;
    v34 = (a3 + 32);
    v35 = v33 + v26;
    do
    {
      v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF0;
      *(*v34 + v32) = v36;
      v35 = v36 + v30;
      v32 += 8;
    }

    while (8 * v10 != v32);
  }

  v38 = (*(*this + 16))(this, v84);
  Instance = Phase::Logger::GetInstance(v38);
  if (v38 != (v35 - a3))
  {
    v74 = **(Instance + 288);
    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "IRBuilderCpuIIRCrossover.mm";
      LOWORD(v89) = 1024;
      *(&v89 + 2) = 202;
      _os_log_impl(&dword_23A302000, v74, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [GetWorkBufferSizeInBytes(inMetadata) != PointerDiff(pMemory, pInWorkBuffer) is true]: Memory Allocation Error", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Memory Allocation Error");
  }

  v78 = a4;
  switch(v80)
  {
    case 0x1Fu:
      v40 = &Phase::Controller::IR::sGetCompensationGains(unsigned long)::sThirdOctaveBandCompensationGains;
      break;
    case 0xAu:
      v40 = &Phase::Controller::IR::sGetCompensationGains(unsigned long)::sOctaveBandCompensationGains;
      break;
    case 3u:
      v82 = &qword_27DF97B10;
      if ((atomic_load_explicit(&_MergedGlobals_15, memory_order_acquire) & 1) == 0)
      {
        Instance = __cxa_guard_acquire(&_MergedGlobals_15);
        if (Instance)
        {
          qword_27DF97B10 = 0x3F8000003F9820D7;
          v82 = &qword_27DF97B10;
          dword_27DF97B18 = 1065353216;
          __cxa_guard_release(&_MergedGlobals_15);
        }
      }

      goto LABEL_31;
    default:
      v76 = **(Phase::Logger::GetInstance(Instance) + 288);
      if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "IRBuilderCpuIIRCrossover.mm";
        LOWORD(v89) = 1024;
        *(&v89 + 2) = 212;
        WORD3(v89) = 1024;
        DWORD2(v89) = v80;
        _os_log_impl(&dword_23A302000, v76, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [nullptr == pSubbandCompensationGains is true]: Failed to get compensation gains for subband count %d", buf, 0x18u);
      }

      v77 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v77, "Failed to get compensation gains for subband count %d");
  }

  v82 = v40;
LABEL_31:
  v41 = v20;
  v87 = 8 * v10;
  if (v10 >= 1)
  {
    v42 = 0;
    do
    {
      vDSP_vclr(*(*v34 + v42), 1, v20);
      v42 += 8;
    }

    while (v87 != v42);
  }

  v43 = 0;
  v44 = 4 * v10;
  v85 = v10;
  do
  {
    if (v10 >= 1)
    {
      v45 = 0;
      do
      {
        vDSP_vclr(*(*(a3 + 3) + v45), 1, v41);
        v45 += 8;
      }

      while (v87 != v45);
    }

    if (v79 >= 1)
    {
      v46 = 0;
      do
      {
        v47 = *(v84 + 1);
        v48 = v47[1] + 12 * v46;
        *buf = *v48;
        *&buf[8] = *(v48 + 8);
        LODWORD(v89) = vcvtas_u32_f32(*(v47[7] + 4 * v46) * *v84);
        *(&v89 + 4) = v47[13] + 4 * *(v47[13] + 8) * v46 + 16;
        if (*(v47[18] + v46))
        {
          v49 = -1.0;
        }

        else
        {
          v49 = 1.0;
        }

        *(&v89 + 3) = v49;
        Instance = (*(*v83 + 88))(v83, v84 + 16, buf, *a3);
        if (v85 > 0)
        {
          v50 = 0;
          v51 = (*(*(&v89 + 4) + 4 * v43) * *(v82 + v43)) * *(&v89 + 3);
          v52 = *(a3 + 3);
          v53 = v89;
          do
          {
            if (v9 >= 1)
            {
              v54 = *(v52 + 8 * v50);
              v55 = v53;
              v56 = Instance;
              v57 = v9;
              do
              {
                *(v54 + 4 * v55) = *(v54 + 4 * v55) + (*v56 * v51);
                v56 = (v56 + v44);
                ++v55;
                --v57;
              }

              while (v57);
            }

            ++v50;
            Instance += 4;
          }

          while (v50 != v28);
        }

        ++v46;
      }

      while (v46 != (v79 & 0x7FFFFFFF));
    }

    v58 = *(this + 2);
    if (!v58)
    {
      goto LABEL_78;
    }

    v59 = vcnt_s8(v58);
    v59.i16[0] = vaddlv_u8(v59);
    if (v59.u32[0] > 1uLL)
    {
      v60 = v80;
      if (v58 <= v80)
      {
        v60 = v80 % v58;
      }
    }

    else
    {
      v60 = (v58 + 0x7FFFFFFF) & v80;
    }

    v61 = *(*(this + 1) + 8 * v60);
    if (!v61 || (v62 = *v61) == 0)
    {
LABEL_78:
      v71 = **(Phase::Logger::GetInstance(Instance) + 288);
      v72 = v71;
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        *&buf[4] = "IRBuilderCpuIIRCrossover.mm";
        LOWORD(v89) = 1024;
        *(&v89 + 2) = 327;
        WORD3(v89) = 2048;
        *(&v89 + 1) = this;
        v90 = 1024;
        v91 = v80;
        _os_log_impl(&dword_23A302000, v71, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): IRBuilderCpuIIRCrossover:%p Filterbank with %d bands is not supported.", buf, 0x22u);
      }

      v73 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v73, "IRBuilderCpuIIRCrossover:%p Filterbank with %d bands is not supported.");
    }

    while (1)
    {
      v63 = v62[1];
      if (v63 == v80)
      {
        break;
      }

      if (v59.u32[0] > 1uLL)
      {
        if (v63 >= v58)
        {
          v63 %= v58;
        }
      }

      else
      {
        v63 &= v58 - 1;
      }

      if (v63 != v60)
      {
        goto LABEL_78;
      }

LABEL_65:
      v62 = *v62;
      if (!v62)
      {
        goto LABEL_78;
      }
    }

    if (*(v62 + 4) != v80)
    {
      goto LABEL_65;
    }

    if (v85 >= 1)
    {
      v64 = 0;
      do
      {
        vDSP_vclr(*(a3 + 1), 1, __N);
        vDSP_biquad(*(v62[3] + 8 * v43), *(a3 + 1), *(*(a3 + 3) + v64), 1, *(a3 + 2), 1, v41);
        vDSP_vclr(*(a3 + 1), 1, __N);
        vDSP_biquad(*(v62[3] + 8 * v43), *(a3 + 1), *(a3 + 2), 1, *(a3 + 2), 1, v41);
        Instance = MEMORY[0x23EE871C0](*(a3 + 2), 1, *(*(a3 + 4) + v64), 1, *(*(a3 + 4) + v64), 1, v41);
        v64 += 8;
      }

      while (v87 != v64);
    }

    ++v43;
    v10 = v85;
  }

  while (v43 != v80);
  if (v85 >= 1)
  {
    v65 = 0;
    v66 = *v34;
    do
    {
      if (v9 + MaxDelayInSamples)
      {
        v67 = *(v66 + 8 * v65);
        v68 = v65;
        v69 = v9 + MaxDelayInSamples;
        do
        {
          v70 = *v67++;
          v78[v68] = v70 + v78[v68];
          v68 += v85;
          --v69;
        }

        while (v69);
      }

      ++v65;
    }

    while (v65 != v28);
  }
}

void sub_23A4241E0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __int128 buf, __int128 a24)
{
  __cxa_free_exception(v25);
  if (a2 == 2)
  {
    v28 = __cxa_begin_catch(a1);
    v29 = **(Phase::Logger::GetInstance(v28) + 288);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315906;
      *(&buf + 4) = "IRBuilderCpuIIRCrossover.mm";
      WORD6(buf) = 1024;
      *(&buf + 14) = 296;
      WORD1(a24) = 2048;
      *(&a24 + 4) = a15;
      WORD6(a24) = 1024;
      *(&a24 + 14) = v24;
      _os_log_impl(&dword_23A302000, v29, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): IRBuilderCpuIIRCrossover: %p Failed to filter subband %u", &buf, 0x22u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "IRBuilderCpuIIRCrossover: %p Failed to filter subband %u");
  }

  _Unwind_Resume(a1);
}

void sub_23A424304(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x23A42430CLL);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<int,std::vector<vDSP_biquad_SetupStruct *>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<vDSP_biquad_SetupStruct *>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<vDSP_biquad_SetupStruct *>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<vDSP_biquad_SetupStruct *>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        v2[4] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::vector<vDSP_biquad_SetupStruct *>>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[3];
    if (v3)
    {
      __p[4] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

unint64_t Phase::Controller::IR::IRBuilderCpuSimple::GetWorkBufferSizeInBytes(Phase::Controller::IR::IRBuilderCpuSimple *this, const Phase::Controller::IR::Metadata *a2)
{
  SpatializerWorkBufferSizeInBytes = Phase::Controller::IR::GetSpatializerWorkBufferSizeInBytes(a2, a2);
  if (SpatializerWorkBufferSizeInBytes)
  {
    return SpatializerWorkBufferSizeInBytes + 16;
  }

  else
  {
    return 8;
  }
}

void Phase::Controller::IR::IRBuilderCpuSimple::Build(Phase::Controller::IR::IRBuilderCpuSimple *this, const Phase::Controller::IR::Metadata *a2, char *a3, float *a4)
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 4);
  MaxDelayInSamples = Phase::Controller::IR::GetMaxDelayInSamples(a2, a2);
  v31 = (*(*v8 + 64))(v8, a2 + 16);
  v11 = (*(*v8 + 48))(v8);
  v12 = *(a2 + 1);
  if (v12 && *v12 == 3 && (v13 = *(v12 + 104)) != 0)
  {
    v14 = *(v13 + 2);
    v15 = *v13;
  }

  else
  {
    v14 = 0;
    LODWORD(v15) = 0;
  }

  SpatializerWorkBufferSizeInBytes = Phase::Controller::IR::GetSpatializerWorkBufferSizeInBytes(a2, v10);
  *a3 = 0;
  v17 = a3 + 8;
  if (SpatializerWorkBufferSizeInBytes)
  {
    v18 = (a3 + 23) & 0xFFFFFFFFFFFFFFF0;
    *a3 = v18;
    v17 = (v18 + SpatializerWorkBufferSizeInBytes);
  }

  v19 = (*(*this + 16))(this, a2);
  if (v19 != (v17 - a3))
  {
    v29 = **(Phase::Logger::GetInstance(v19) + 288);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "IRBuilderCpuSimple.mm";
      LOWORD(v34) = 1024;
      *(&v34 + 2) = 75;
      _os_log_impl(&dword_23A302000, v29, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [GetWorkBufferSizeInBytes(inMetadata) != PointerDiff(pMemory, pInWorkBuffer) is true]: Memory Allocation Error", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Memory Allocation Error");
  }

  vDSP_vclr(a4, 1, (v11 * (v31 + MaxDelayInSamples)));
  if (v14)
  {
    if (v14 > 1)
    {
      v21 = **(Phase::Logger::GetInstance(v20) + 288);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        *&buf[4] = "IRBuilderCpuSimple.mm";
        LOWORD(v34) = 1024;
        *(&v34 + 2) = 90;
        WORD3(v34) = 2048;
        *(&v34 + 1) = this;
        v35 = 1024;
        v36 = v14;
        _os_log_impl(&dword_23A302000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d IRBuilderCpuSimple@%p: Metadata has %d subbands. Falling back on first subband.", buf, 0x22u);
      }
    }

    if (v15 >= 1)
    {
      v22 = 0;
      v23 = 0;
      do
      {
        v24 = *(a2 + 1);
        v25 = v24[1] + v22;
        *buf = *v25;
        *&buf[8] = *(v25 + 8);
        LODWORD(v34) = vcvtas_u32_f32(*(v24[7] + 4 * v23) * *a2);
        *(&v34 + 4) = v24[13] + 4 * *(v24[13] + 8) * v23 + 16;
        if (*(v24[18] + v23))
        {
          v26 = -1.0;
        }

        else
        {
          v26 = 1.0;
        }

        *(&v34 + 3) = v26;
        v27 = (*(*v8 + 88))(v8, a2 + 16, buf, *a3);
        v32 = **(&v34 + 4) * *(&v34 + 3);
        MEMORY[0x23EE87280](v27, 1, &v32, &a4[v34 * v11], 1, &a4[v34 * v11], 1, v11 * v31);
        ++v23;
        v22 += 12;
      }

      while ((v15 & 0x7FFFFFFF) != v23);
    }
  }

  else
  {
    v28 = **(Phase::Logger::GetInstance(v20) + 288);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "IRBuilderCpuSimple.mm";
      LOWORD(v34) = 1024;
      *(&v34 + 2) = 82;
      WORD3(v34) = 2048;
      *(&v34 + 1) = this;
      v35 = 1024;
      v36 = 0;
      _os_log_impl(&dword_23A302000, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d IRBuilderCpuSimple@%p: Metadata has %d subbands. Clearing the output.", buf, 0x22u);
    }
  }
}

uint64_t Phase::Controller::IR::Metadata::Metadata(uint64_t a1, uint64_t a2, Phase::Controller::Spatializer *this, float a4)
{
  *a1 = a4;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  Phase::Controller::Spatializer::AcquireFilters(this, &v15);
  v6 = v15;
  v5 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 24);
  *(a1 + 16) = v6;
  *(a1 + 24) = v5;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v9 = v17;
  v8 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *(a1 + 40);
  *(a1 + 32) = v9;
  *(a1 + 40) = v8;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v12 = v19;
  v11 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = *(a1 + 56);
  *(a1 + 48) = v12;
  *(a1 + 56) = v11;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  return a1;
}

void Phase::Controller::IR::Metadata::~Metadata(Phase::Controller::IR::Metadata *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 5);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

unsigned int Phase::Controller::IR::GetMaxDelayInSamples(Phase::Controller::IR *this, const Phase::Controller::IR::Metadata *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = *(this + 1);
  if (!v2)
  {
    return 0;
  }

  if (*v2 != 3)
  {
    return 0;
  }

  v3 = *(v2 + 56);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v2 + 104);
  if (!v4)
  {
    return 0;
  }

  v5 = *v4;
  if (!v5)
  {
    return 0;
  }

  if (*(v2 + 201) == 1)
  {
    v7 = v3[v5 - 1] * *this;
    Instance = Phase::Logger::GetInstance(this);
    if (*(*(Instance + 36) + 8))
    {
      v9 = *(v2 + 56);
      v10 = *(v2 + 96);
      if (v10 >= 2)
      {
        v11 = v9 + 1;
        v12 = *v9;
        v13 = 4 * v10 - 4;
        v14 = v9 + 1;
        do
        {
          v15 = *v14++;
          v16 = v15;
          if (v12 < v15)
          {
            v12 = v16;
            v9 = v11;
          }

          v11 = v14;
          v13 -= 4;
        }

        while (v13);
      }

      v17 = *v9 * *this;
      if (v17 != v7)
      {
        v18 = **(Phase::Logger::GetInstance(Instance) + 288);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v27 = 136315906;
          v28 = "IRBuilderMetadata.mm";
          v29 = 1024;
          v30 = 80;
          v31 = 2048;
          v32 = v7;
          v33 = 2048;
          v34 = v17;
          _os_log_impl(&dword_23A302000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid metadata sorting flag. Read max delay %f, actual value %f.", &v27, 0x26u);
        }
      }
    }

    return vcvtas_u32_f32(v7);
  }

  else
  {
    v20 = *(v2 + 96);
    if (v20 >= 2)
    {
      v21 = v3 + 1;
      v22 = *v3;
      v23 = 4 * v20 - 4;
      v24 = v3 + 1;
      do
      {
        v25 = *v24++;
        v26 = v25;
        if (v22 < v25)
        {
          v22 = v26;
          v3 = v21;
        }

        v21 = v24;
        v23 -= 4;
      }

      while (v23);
    }

    return vcvtas_u32_f32(*v3 * *this);
  }
}

unint64_t Phase::Controller::IR::GetSpatializerWorkBufferSizeInBytes(Phase::Controller::IR *this, const Phase::Controller::IR::Metadata *a2)
{
  v2 = *(this + 1);
  if (!v2)
  {
    return 0;
  }

  if (*v2 != 3)
  {
    return 0;
  }

  v3 = *(v2 + 104);
  if (!v3)
  {
    return 0;
  }

  v4 = *v3;
  if (!*v3)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = *(this + 4);
  do
  {
    v10 = *(this + 1);
    v11 = (v10[1] + v6);
    v12 = *(v10[7] + 4 * v7);
    v17 = *v11;
    v13 = v12 * *this;
    v18 = *(v11 + 2);
    v19 = vcvtas_u32_f32(v13);
    v20 = v10[13] + 4 * *(v10[13] + 8) * v7 + 16;
    if (*(v10[18] + v7))
    {
      v14 = -1.0;
    }

    else
    {
      v14 = 1.0;
    }

    v21 = v14;
    v15 = (*(*v9 + 80))(v9, this + 16, &v17);
    if (v8 <= v15)
    {
      v8 = v15;
    }

    ++v7;
    v6 += 12;
  }

  while (v4 != v7);
  return v8;
}

uint64_t Phase::Job::Job(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *a1 = &unk_284D354B0;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    *(a1 + 24) = *(a3 + 2);
    *(a1 + 8) = v5;
  }

  *(a1 + 80) = 0;
  *(a1 + 72) = a1 + 80;
  *(a1 + 32) = a2;
  *(a1 + 40) = 1;
  *(a1 + 48) = a1 + 48;
  *(a1 + 56) = a1 + 48;
  *(a1 + 64) = 0;
  *(a1 + 88) = 0;
  MEMORY[0x23EE861D0](a1 + 96);
  *(a1 + 383) = 0;
  *(a1 + 511) = 0;
  *(a1 + 512) = 0;
  *(a1 + 520) = 0x1FFFFFFFFLL;
  *(a1 + 568) = 0;
  *(a1 + 528) = 0u;
  return a1;
}

void sub_23A424DE8(_Unwind_Exception *a1)
{
  std::__tree<std::weak_ptr<Phase::Job>,std::owner_less<std::weak_ptr<Phase::Job>>,std::allocator<std::weak_ptr<Phase::Job>>>::destroy(v4, *(v1 + 80));
  std::__list_imp<std::shared_ptr<Phase::Job>>::clear(v3);
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

void Phase::Job::~Job(Phase::Job *this)
{
  *this = &unk_284D354B0;
  std::unique_ptr<void,std::function<void ()(void *)>>::reset[abi:ne200100](this + 67, 0);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](this + 544);
  if (*(this + 511) == 1)
  {
    (**(this + 48))();
  }

  if (*(this + 383) == 1)
  {
    (**(this + 32))();
  }

  std::recursive_mutex::~recursive_mutex((this + 96));
  std::__tree<std::weak_ptr<Phase::Job>,std::owner_less<std::weak_ptr<Phase::Job>>,std::allocator<std::weak_ptr<Phase::Job>>>::destroy(this + 72, *(this + 10));
  std::__list_imp<std::shared_ptr<Phase::Job>>::clear(this + 6);
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

{
  Phase::Job::~Job(this);

  JUMPOUT(0x23EE86490);
}

void Phase::Job::Run(Phase::Job *this)
{
  v26 = *MEMORY[0x277D85DE8];
  std::__shared_mutex_base::lock_shared((*(this + 4) + 32));
  v2 = *(this + 4);
  v3 = *(v2 + 24);
  v14 = 0;
  v15 = 0;
  __p = 0;
  if (v3)
  {
    std::vector<void *>::__vallocate[abi:ne200100](&__p, v3);
  }

  v4 = v2 + 8;
  v5 = *(v2 + 16);
  if (v5 != v2 + 8)
  {
    do
    {
      (*(**(v5 + 16) + 16))(*(v5 + 16), this, v3);
      v3 += 8;
      v5 = *(v5 + 8);
    }

    while (v5 != v4);
    v3 = __p;
    v5 = *(v2 + 16);
  }

  if (*(this + 383) == 1)
  {
    if (v5 == v4)
    {
      goto LABEL_10;
    }

    do
    {
      (*(**(v5 + 16) + 24))(*(v5 + 16), this, v3);
      v3 += 8;
      v5 = *(v5 + 8);
    }

    while (v5 != v4);
    if (*(this + 383))
    {
LABEL_10:
      (*(*(this + 32) + 16))();
    }

    v3 = __p;
    v5 = *(v2 + 16);
    if (v5 != v4)
    {
      do
      {
        (*(**(v5 + 16) + 32))(*(v5 + 16), this, v3);
        v3 += 8;
        v5 = *(v5 + 8);
      }

      while (v5 != v4);
      v3 = __p;
      v5 = *(v2 + 16);
    }
  }

  if (*(this + 511) == 1)
  {
    while (v5 != v4)
    {
      (*(**(v5 + 16) + 40))(*(v5 + 16), this, v3);
      v3 += 8;
      v5 = *(v5 + 8);
    }

    v6 = *(this + 64);
    if (v6)
    {
      v7 = **(v6 + 8);
      v17 = 0;
      v16 = 1;
      v8 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v7, 16, &v17, &v16);
      if (!v8)
      {
        Instance = Phase::Logger::GetInstance(0);
        Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
        v11 = **(v7 + 48);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v19 = "CommandQueue.hpp";
          v20 = 1024;
          v21 = 100;
          _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
      }

      if (v16)
      {
        v9 = **(v7 + 48);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          v19 = "CommandQueue.hpp";
          v20 = 1024;
          v21 = 89;
          v22 = 2048;
          v23 = v17;
          v24 = 2048;
          v25 = 16;
          _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
        }
      }

      *v8 = &unk_284D354D0;
      v8[1] = this;
      Phase::LockFreeQueueSPSC::CommitBytes(v7, 16);
      atomic_store(0, (v7 + 40));
    }

    else if (*(this + 511) == 1)
    {
      (*(*(this + 48) + 16))();
    }

    v3 = __p;
    v5 = *(v2 + 16);
    if (v5 != v4)
    {
      do
      {
        (*(**(v5 + 16) + 48))(*(v5 + 16), this, v3);
        v3 += 8;
        v5 = *(v5 + 8);
      }

      while (v5 != v4);
      v3 = __p;
      v5 = *(v2 + 16);
    }
  }

  while (v5 != v4)
  {
    (*(**(v5 + 16) + 56))(*(v5 + 16), this, v3);
    v3 += 8;
    v5 = *(v5 + 8);
  }

  std::__shared_mutex_base::unlock_shared((*(this + 4) + 32));
  if (__p)
  {
    v14 = __p;
    operator delete(__p);
  }
}

void sub_23A4253F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (a2)
  {
    __cxa_free_exception(v12);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v11);
    __cxa_end_catch();
    JUMPOUT(0x23A425258);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree<std::weak_ptr<Phase::Job>,std::owner_less<std::weak_ptr<Phase::Job>>,std::allocator<std::weak_ptr<Phase::Job>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::weak_ptr<Phase::Job>,std::owner_less<std::weak_ptr<Phase::Job>>,std::allocator<std::weak_ptr<Phase::Job>>>::destroy(a1, *a2);
    std::__tree<std::weak_ptr<Phase::Job>,std::owner_less<std::weak_ptr<Phase::Job>>,std::allocator<std::weak_ptr<Phase::Job>>>::destroy(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(a2);
  }
}

uint64_t *std::unique_ptr<void,std::function<void ()(void *)>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return std::function<void ()(void *)>::operator()((result + 1), v3);
  }

  return result;
}

uint64_t Phase::LambdaFunction<Phase::Job::Run(void)::$_0,void>::operator()(uint64_t result)
{
  v1 = *(result + 8);
  if (*(v1 + 511) == 1)
  {
    return (*(*(v1 + 384) + 16))();
  }

  return result;
}

_OWORD *Phase::JobManager::TreeLock::TreeLock(_OWORD *a1, Phase::JobManager *a2, uint64_t *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3[1];
  v6 = *a3;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  Phase::JobManager::GetRootJob(a2, &v6, a1);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  std::recursive_mutex::lock((*a1 + 96));
  return a1;
}

__n128 Phase::JobManager::GetRootJob@<Q0>(Phase::JobManager *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = *a2;
  Dependents = Phase::JobManager::GetDependents(a1, *a2);
  if (!*(Dependents + 2))
  {
    goto LABEL_11;
  }

  v8 = Phase::JobManager::GetDependents(Dependents, v6);
  v9 = *v8;
  v10 = *(*v8 + 40);
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = std::__shared_weak_count::lock(v10);
  if (!v11)
  {
    goto LABEL_11;
  }

  v12 = v11;
  if (!*(v9 + 32))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
LABEL_11:
    result = *a2;
    *a3 = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
    return result;
  }

  v14 = *(v9 + 32);
  v15 = v11;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  Phase::JobManager::GetRootJob(a1, &v14);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  return result;
}

void sub_23A425838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

void Phase::JobManager::TreeLock::~TreeLock(std::__shared_weak_count **this)
{
  std::recursive_mutex::unlock(&(*this)[4]);
  v2 = this[1];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

Phase::JobManager *Phase::JobManager::JobManager(Phase::JobManager *this)
{
  *this = &unk_284D354F8;
  *(this + 1) = this + 8;
  *(this + 2) = this + 8;
  *(this + 3) = 0;
  v2 = std::__shared_mutex_base::__shared_mutex_base((this + 32));
  *(this + 26) = 0;
  if (*(Phase::Logger::GetInstance(v2) + 488) == 1)
  {
    operator new();
  }

  return this;
}

void Phase::JobManager::~JobManager(Phase::JobManager *this)
{
  *this = &unk_284D354F8;
  v2 = *(this + 26);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::condition_variable::~condition_variable(this + 3);
  std::condition_variable::~condition_variable(this + 2);
  std::mutex::~mutex((this + 32));
  std::__list_imp<Phase::Controller::AssetUnloader::ObjectUnloadRequest>::clear(this + 1);
}

void Phase::JobManager::Create(Phase::Logger *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a1 != 1)
  {
    if (!a1)
    {
      operator new();
    }

    v1 = **(Phase::Logger::GetInstance(a1) + 480);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      v3 = 136315394;
      v4 = "JobManager.mm";
      v5 = 1024;
      v6 = 93;
      _os_log_impl(&dword_23A302000, v1, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument): Invalid Backend to create JobManager instance.", &v3, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Invalid Backend to create JobManager instance.");
  }

  operator new();
}

uint64_t Phase::JobManager::DestroyJob(Phase::JobManager *this, Phase::Job *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*(a2 + 11))
  {
    v2 = *(*(a2 + 9) + 40);
    if (v2)
    {
      if (*(v2 + 8) != -1)
      {
        v5 = **(Phase::Logger::GetInstance(this) + 480);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          v7 = 136315394;
          v8 = "JobManager.mm";
          v9 = 1024;
          v10 = 123;
          _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: pInJob->mDependentJobs.begin()->expired() is false.", &v7, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::invalid_argument::invalid_argument[abi:ne200100](exception, "PRECONDITION: pInJob->mDependentJobs.begin()->expired() is false.");
      }
    }
  }

  v3 = *(*a2 + 8);

  return v3(a2);
}

uint64_t Phase::JobManager::GetDependencies(Phase::JobManager *this, Phase::Job *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v3 = **(Phase::Logger::GetInstance(this) + 480);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "JobManager.mm";
      v7 = 1024;
      v8 = 131;
      _os_log_impl(&dword_23A302000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: nullptr != pInJob is false.", &v5, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "PRECONDITION: nullptr != pInJob is false.");
  }

  return a2 + 48;
}

uint64_t Phase::JobManager::GetDependents(Phase::JobManager *this, Phase::Job *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v3 = **(Phase::Logger::GetInstance(this) + 480);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "JobManager.mm";
      v7 = 1024;
      v8 = 145;
      _os_log_impl(&dword_23A302000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: nullptr != pInJob is false.", &v5, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "PRECONDITION: nullptr != pInJob is false.");
  }

  return a2 + 72;
}

uint64_t Phase::JobManager::GetExecutionState(Phase::JobManager *this, Phase::Job *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v3 = **(Phase::Logger::GetInstance(this) + 480);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "JobManager.mm";
      v7 = 1024;
      v8 = 181;
      _os_log_impl(&dword_23A302000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: nullptr != pInJob is false.", &v5, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "PRECONDITION: nullptr != pInJob is false.");
  }

  return a2 + 532;
}

unint64_t Phase::JobManager::RunJob(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  v12[0] = *a2;
  v12[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = Phase::JobManager::RunJobAsync(a1, v12);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (HIDWORD(v5) || !v5)
  {
    v7 = a2[1];
    v10 = *a2;
    v11 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v8 = (*(*a1 + 96))(a1, &v10, 0.0);
    LODWORD(v5) = v8;
    v6 = HIDWORD(v8);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  return v5 | (v6 << 32);
}

void sub_23A426244(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

unint64_t Phase::JobManager::RunJobAsync(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  v13 = *a2;
  v14 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = (*(*a1 + 144))(a1, &v13);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (HIDWORD(v5))
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 == 0;
  }

  if (v6)
  {
    v7 = a2[1];
    v11 = *a2;
    v12 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v8 = (*(*a1 + 120))(a1, &v11, 0.0);
    LODWORD(v5) = v8;
    v9 = HIDWORD(v8);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }

  else
  {
    LODWORD(v9) = 0;
  }

  return v5 | (v9 << 32);
}

void sub_23A426374(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void Phase::JobManager::ScheduleJobWithPeriod(uint64_t a1, uint64_t *a2, uint64_t a3, double a4)
{
  v44 = *MEMORY[0x277D85DE8];
  HasManualJobs = Phase::JobManager::HasManualJobs(*a2);
  if (HasManualJobs)
  {
    v9 = *(a3 + 24);
    v10 = **(Phase::Logger::GetInstance(HasManualJobs) + 480);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (!v9)
    {
      if (v11)
      {
        *buf = 136315394;
        *&buf[4] = "JobManager.mm";
        *&buf[12] = 1024;
        *&buf[14] = 262;
        _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument): \\Job graph containing at least one manual job can't be scheduled.\\"", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::invalid_argument::invalid_argument[abi:ne200100](exception, "Job graph containing at least one manual job can't be scheduled.");
    }

    if (v11)
    {
      *buf = 136315394;
      *&buf[4] = "JobManager.mm";
      *&buf[12] = 1024;
      *&buf[14] = 262;
      _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Job graph containing at least one manual job can't be scheduled.", buf, 0x12u);
    }

    v12 = a2[1];
    *buf = *a2;
    *&buf[8] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    std::list<std::shared_ptr<Phase::Job>>::list(v39, buf, 1);
    v40 = 0;
    v13 = *(a3 + 24);
    if (!v13)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v13 + 48))(v13, &v40, v39);
    v14 = v39;
  }

  else if (a4 <= 0.0)
  {
    v20 = *(a3 + 24);
    v21 = **(Phase::Logger::GetInstance(HasManualJobs) + 480);
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (!v20)
    {
      if (v22)
      {
        *buf = 136315650;
        *&buf[4] = "JobManager.mm";
        *&buf[12] = 1024;
        *&buf[14] = 268;
        v42 = 2048;
        v43 = a4;
        _os_log_impl(&dword_23A302000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument): \\Job graph job can't be scheduled with invalid period %f\\"", buf, 0x1Cu);
      }

      v31 = __cxa_allocate_exception(0x10uLL);
      std::invalid_argument::invalid_argument[abi:ne200100](v31, "Job graph job can't be scheduled with invalid period %f");
    }

    if (v22)
    {
      *buf = 136315650;
      *&buf[4] = "JobManager.mm";
      *&buf[12] = 1024;
      *&buf[14] = 268;
      v42 = 2048;
      v43 = a4;
      _os_log_impl(&dword_23A302000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d Job graph job can't be scheduled with invalid period %f", buf, 0x1Cu);
    }

    v23 = a2[1];
    *buf = *a2;
    *&buf[8] = v23;
    if (v23)
    {
      atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
    }

    std::list<std::shared_ptr<Phase::Job>>::list(v38, buf, 1);
    v40 = 0;
    v24 = *(a3 + 24);
    if (!v24)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v24 + 48))(v24, &v40, v38);
    v14 = v38;
  }

  else
  {
    v15 = a2[1];
    v36 = *a2;
    v37 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v16 = (*(*a1 + 144))(a1, &v36);
    v17 = v37;
    if (v37)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v37);
    }

    if (HIDWORD(v16))
    {
      v18 = 1;
    }

    else
    {
      v18 = v16 == 0;
    }

    if (v18)
    {
      v19 = a2[1];
      *buf = *a2;
      *&buf[8] = v19;
      if (v19)
      {
        atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
      }

      std::list<std::shared_ptr<Phase::Job>>::list(v35, buf, 1);
      v34[0] = v34;
      v34[1] = v34;
      v34[2] = 0;
      operator new();
    }

    v25 = *(a3 + 24) == 0;
    v26 = **(Phase::Logger::GetInstance(v17) + 480);
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (v25)
    {
      if (v27)
      {
        *buf = 136315650;
        *&buf[4] = "JobManager.mm";
        *&buf[12] = 1024;
        *&buf[14] = 280;
        v42 = 1024;
        LODWORD(v43) = v16;
        _os_log_impl(&dword_23A302000, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument): \\Job graph prepare error %i\\"", buf, 0x18u);
      }

      v32 = __cxa_allocate_exception(0x10uLL);
      std::invalid_argument::invalid_argument[abi:ne200100](v32, "Job graph prepare error %i");
    }

    if (v27)
    {
      *buf = 136315650;
      *&buf[4] = "JobManager.mm";
      *&buf[12] = 1024;
      *&buf[14] = 280;
      v42 = 1024;
      LODWORD(v43) = v16;
      _os_log_impl(&dword_23A302000, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d Job graph prepare error %i", buf, 0x18u);
    }

    v28 = a2[1];
    *buf = *a2;
    *&buf[8] = v28;
    if (v28)
    {
      atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
    }

    std::list<std::shared_ptr<Phase::Job>>::list(v33, buf, 1);
    v40 = 0;
    v29 = *(a3 + 24);
    if (!v29)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v29 + 48))(v29, &v40, v33);
    v14 = v33;
  }

  std::__list_imp<std::shared_ptr<Phase::Job>>::clear(v14);
  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }
}

uint64_t Phase::JobManager::HasManualJobs(uint64_t a1)
{
  if (*(a1 + 528) == 1)
  {
    return 1;
  }

  v2 = (a1 + 48);
  v3 = (a1 + 48);
  do
  {
    v3 = v3[1];
    v1 = v3 != v2;
    if (v3 == v2)
    {
      break;
    }

    v4 = v3[2];
    v5 = v3[3];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    HasManualJobs = Phase::JobManager::HasManualJobs(v4);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  while (!HasManualJobs);
  return v1;
}

void sub_23A426B14(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void Phase::JobManager::ScheduleJobsWithPeriods(Phase::Logger *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16) != *(a3 + 16))
  {
    v15 = *(a4 + 24);
    v16 = **(Phase::Logger::GetInstance(a1) + 480);
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (!v15)
    {
      if (v17)
      {
        v24 = *(a2 + 16);
        v25 = *(a3 + 16);
        *buf = 136315906;
        v34 = "JobManager.mm";
        v35 = 1024;
        v36 = 303;
        v37 = 2048;
        v38 = v24;
        v39 = 2048;
        v40 = v25;
        _os_log_impl(&dword_23A302000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument): \\Argument list size mismatch %lu jobs / %lu periods\\"", buf, 0x26u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::invalid_argument::invalid_argument[abi:ne200100](exception, "Argument list size mismatch %lu jobs / %lu periods");
    }

    if (v17)
    {
      v18 = *(a2 + 16);
      v19 = *(a3 + 16);
      *buf = 136315906;
      v34 = "JobManager.mm";
      v35 = 1024;
      v36 = 303;
      v37 = 2048;
      v38 = v18;
      v39 = 2048;
      v40 = v19;
      _os_log_impl(&dword_23A302000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d Argument list size mismatch %lu jobs / %lu periods", buf, 0x26u);
    }

    std::list<std::shared_ptr<Phase::Job>>::list(v31, a2);
    buf[0] = 0;
    v20 = *(a4 + 24);
    if (!v20)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v20 + 48))(v20, buf, v31);
    v14 = v31;
    goto LABEL_22;
  }

  v8 = *(a2 + 8);
  if (v8 == a2)
  {
LABEL_16:
    std::list<std::shared_ptr<Phase::Job>>::list(v28, a2);
    std::list<double>::list(v27, a3);
    std::__function::__value_func<void ()(BOOL,std::list<std::shared_ptr<Phase::Job>>)>::__value_func[abi:ne200100](v32, a4);
    (*(*a1 + 128))(a1, v28, v27, v32);
    std::__function::__value_func<void ()(BOOL,std::list<std::shared_ptr<Phase::Job>>)>::~__value_func[abi:ne200100](v32);
    std::__list_imp<Phase::Controller::AssetUnloader::ObjectUnloadRequest>::clear(v27);
    v14 = v28;
LABEL_22:
    std::__list_imp<std::shared_ptr<Phase::Job>>::clear(v14);
    return;
  }

  v9 = a3;
  do
  {
    v9 = *(v9 + 8);
    HasManualJobs = Phase::JobManager::HasManualJobs(v8[2]);
    if (HasManualJobs)
    {
      v21 = **(Phase::Logger::GetInstance(HasManualJobs) + 480);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v34 = "JobManager.mm";
        v35 = 1024;
        v36 = 316;
        _os_log_impl(&dword_23A302000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: not HasManualJobs(jobIt->get()) is false.", buf, 0x12u);
      }

      v22 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v22, "PRECONDITION: not HasManualJobs(jobIt->get()) is false.");
LABEL_30:
      v22->__vftable = (MEMORY[0x277D828F8] + 16);
    }

    if (*(v9 + 16) <= 0.0)
    {
      v23 = **(Phase::Logger::GetInstance(HasManualJobs) + 480);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v34 = "JobManager.mm";
        v35 = 1024;
        v36 = 319;
        _os_log_impl(&dword_23A302000, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: *periodIt > 0. is false.", buf, 0x12u);
      }

      v22 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v22, "PRECONDITION: *periodIt > 0. is false.");
      goto LABEL_30;
    }

    v11 = v8[3];
    v29 = v8[2];
    v30 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = (*(*a1 + 144))(a1, &v29);
    if (v30)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    }

    v8 = v8[1];
  }

  while (v8 != a2);
  if (HIDWORD(v12))
  {
    v13 = 1;
  }

  else
  {
    v13 = v12 == 0;
  }

  if (v13)
  {
    goto LABEL_16;
  }
}

void sub_23A426FB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  std::__function::__value_func<void ()(BOOL,std::list<std::shared_ptr<Phase::Job>>)>::~__value_func[abi:ne200100](&a23);
  std::__list_imp<Phase::Controller::AssetUnloader::ObjectUnloadRequest>::clear(&a9);
  std::__list_imp<std::shared_ptr<Phase::Job>>::clear(&a12);
  _Unwind_Resume(a1);
}

void sub_23A426FF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  __cxa_free_exception(v21);
  if (a2 == 1)
  {
    v26 = __cxa_begin_catch(a1);
    v27 = v26;
    if (*(v19 + 24))
    {
      v28 = **(Phase::Logger::GetInstance(v26) + 480);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = (*(*v27 + 16))(v27);
        *(v23 - 128) = 136315650;
        *(v22 + 4) = "JobManager.mm";
        *(v23 - 116) = 1024;
        *(v22 + 14) = 333;
        *(v23 - 110) = 2080;
        *(v22 + 20) = v29;
        _os_log_impl(&dword_23A302000, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d Job graph prepare error %s", (v23 - 128), 0x1Cu);
      }

      std::list<std::shared_ptr<Phase::Job>>::list(&a15, v20);
      *(v23 - 128) = 0;
      v30 = *(v19 + 24);
      if (v30)
      {
        (*(*v30 + 48))(v30, v23 - 128, &a15);
        std::__list_imp<std::shared_ptr<Phase::Job>>::clear(&a15);
        __cxa_end_catch();
        JUMPOUT(0x23A426D70);
      }

      std::__throw_bad_function_call[abi:ne200100]();
    }

    v31 = **(Phase::Logger::GetInstance(v26) + 480);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = (*(*v27 + 16))(v27);
      *(v23 - 128) = 136315650;
      *(v22 + 4) = "JobManager.mm";
      *(v23 - 116) = 1024;
      *(v22 + 14) = 333;
      *(v23 - 110) = 2080;
      *(v22 + 20) = v32;
      _os_log_impl(&dword_23A302000, v31, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument): \\Job graph prepare error %s\\"", (v23 - 128), 0x1Cu);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Job graph prepare error %s");
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
  }

  _Unwind_Resume(a1);
}

void sub_23A427258(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  __cxa_free_exception(v15);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void sub_23A42728C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void Phase::JobManager::StopScheduledJob(Phase::Logger *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = **(Phase::Logger::GetInstance(a1) + 480);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315394;
    v4 = "JobManager.mm";
    v5 = 1024;
    v6 = 346;
    _os_log_impl(&dword_23A302000, v1, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument): Attempting to stop a job that was not scheduled!", &v3, 0x12u);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::invalid_argument::invalid_argument[abi:ne200100](exception, "Attempting to stop a job that was not scheduled!");
}

void Phase::JobManager::StopScheduledJobs(Phase::Logger *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = **(Phase::Logger::GetInstance(a1) + 480);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315394;
    v4 = "JobManager.mm";
    v5 = 1024;
    v6 = 351;
    _os_log_impl(&dword_23A302000, v1, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument): Attempting to stop a list of jobs that were not scheduled!", &v3, 0x12u);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::invalid_argument::invalid_argument[abi:ne200100](exception, "Attempting to stop a list of jobs that were not scheduled!");
}

void Phase::JobManager::StopScheduledJobAsync(Phase::Logger *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = **(Phase::Logger::GetInstance(a1) + 480);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315394;
    v4 = "JobManager.mm";
    v5 = 1024;
    v6 = 356;
    _os_log_impl(&dword_23A302000, v1, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument): Attempting to stop a job that was not scheduled!", &v3, 0x12u);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::invalid_argument::invalid_argument[abi:ne200100](exception, "Attempting to stop a job that was not scheduled!");
}

void Phase::JobManager::StopScheduledJobsAsync(Phase::Logger *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = **(Phase::Logger::GetInstance(a1) + 480);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315394;
    v4 = "JobManager.mm";
    v5 = 1024;
    v6 = 361;
    _os_log_impl(&dword_23A302000, v1, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument): Attempting to stop a list of jobs that were not scheduled!", &v3, 0x12u);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::invalid_argument::invalid_argument[abi:ne200100](exception, "Attempting to stop a list of jobs that were not scheduled!");
}

void Phase::JobObserverSignpost::ExecuteBegin(Phase::JobObserverSignpost *this, const Phase::Job *a2, os_signpost_id_t **a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = *a3;
  Instance = Phase::Logger::GetInstance(this);
  if (*(Instance + 488) == 1)
  {
    v6 = **(Phase::Logger::GetInstance(Instance) + 480);
    v7 = v6;
    v8 = *v4;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      v9 = (a2 + 8);
      if (*(a2 + 31) < 0)
      {
        v9 = *v9;
      }

      v10 = 136315138;
      v11 = v9;
      _os_signpost_emit_with_name_impl(&dword_23A302000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v8, "Phase_Job_Run", "%s", &v10, 0xCu);
    }
  }
}

void Phase::JobObserverSignpost::ExecuteEnd(Phase::JobObserverSignpost *this, const Phase::Job *a2, os_signpost_id_t **a3)
{
  v3 = *a3;
  Instance = Phase::Logger::GetInstance(this);
  if (*(Instance + 488) == 1)
  {
    v5 = **(Phase::Logger::GetInstance(Instance) + 480);
    v6 = v5;
    v7 = *v3;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      *v8 = 0;
      _os_signpost_emit_with_name_impl(&dword_23A302000, v6, OS_SIGNPOST_INTERVAL_END, v7, "Phase_Job_Run", &unk_23A5C28A2, v8, 2u);
    }
  }
}

uint64_t Phase::JobObserverSignpost::Finalize(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = *a3;
  if (*a3)
  {
    JUMPOUT(0x23EE864A0);
  }

  return result;
}

void *std::list<std::shared_ptr<Phase::Job>>::list(void *result, uint64_t a2, uint64_t a3)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (a3)
  {
    std::list<std::shared_ptr<Phase::Job>>::push_back();
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(BOOL,std::list<std::shared_ptr<Phase::Job>>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void Phase::JobDispatch::~JobDispatch(Phase::JobDispatch *this)
{
  *this = &unk_284D355F0;
  std::mutex::~mutex((this + 632));
  std::unique_ptr<Phase::JobDispatch::Schedule>::reset[abi:ne200100](this + 78, 0);
  v2 = *(this + 77);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 73);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(this + 72);
  if (v4)
  {
    _Block_release(v4);
  }

  Phase::Job::~Job(this);
}

{
  Phase::JobDispatch::~JobDispatch(this);

  JUMPOUT(0x23EE86490);
}

void Phase::JobManagerDispatch::~JobManagerDispatch(Phase::JobManagerDispatch *this)
{
  *this = &unk_284D35610;
  atomic_store(1u, this + 220);
  v2 = atomic_load(this + 54);
  if (v2 >= 1)
  {
    do
    {
      __ns.__rep_ = 10000000;
      std::this_thread::sleep_for (&__ns);
      v3 = atomic_load(this + 54);
    }

    while (v3 > 0);
  }

  std::__tree<std::__value_type<Phase::Job::Priority,applesauce::dispatch::v1::queue>,std::__map_value_compare<Phase::Job::Priority,std::__value_type<Phase::Job::Priority,applesauce::dispatch::v1::queue>,std::less<Phase::Job::Priority>,true>,std::allocator<std::__value_type<Phase::Job::Priority,applesauce::dispatch::v1::queue>>>::destroy(*(this + 29));
  Phase::JobManager::~JobManager(this);
}

{
  Phase::JobManagerDispatch::~JobManagerDispatch(this);

  JUMPOUT(0x23EE864A0);
}

void Phase::JobManagerDispatch::CreateJob(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x300uLL, 0x80uLL);
  Phase::Job::Job(v6, a1, a2);
  *v6 = &unk_284D355F0;
  v6[72] = 0;
  v6[73] = dispatch_group_create();
  v6[74] = 0;
  *(v6 + 300) = 0;
  v6[76] = 0;
  v6[78] = 0;
  v6[77] = 0;
  v6[79] = 850045863;
  *(v6 + 40) = 0u;
  *(v6 + 41) = 0u;
  *(v6 + 42) = 0u;
  v6[86] = 0;
  *a3 = v6;
  operator new();
}

void sub_23A427C38(void *a1)
{
  __cxa_begin_catch(a1);
  (*(*v1 + 112))(v1, v2);
  __cxa_rethrow();
}

uint64_t Phase::JobManagerDispatch::AddDependency(Phase::Logger *a1, Phase::Job **a2, Phase::Job **a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (!*a2)
  {
    v17 = **(Phase::Logger::GetInstance(a1) + 480);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "JobManagerDispatch.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 107;
      _os_log_impl(&dword_23A302000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: nullptr != pInDependent is false.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "PRECONDITION: nullptr != pInDependent is false.");
  }

  v5 = *a3;
  if (!*a3)
  {
    v19 = **(Phase::Logger::GetInstance(a1) + 480);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "JobManagerDispatch.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 108;
      _os_log_impl(&dword_23A302000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: nullptr != pInDependency is false.", buf, 0x12u);
    }

    v20 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v20, "PRECONDITION: nullptr != pInDependency is false.");
  }

  v8 = a2[1];
  v23[0] = *a2;
  v23[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  Phase::JobManager::TreeLock::TreeLock(buf, a1, v23);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if ((*(v3 + 592) & 2) != 0 || (*(v5 + 592) & 2) != 0)
  {
    v15 = 3;
  }

  else
  {
    Dependents = Phase::JobManager::GetDependents(a1, v5);
    v10 = a2[1];
    v21 = *a2;
    v22 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    std::__tree<std::weak_ptr<Phase::Job>,std::owner_less<std::weak_ptr<Phase::Job>>,std::allocator<std::weak_ptr<Phase::Job>>>::__emplace_unique_key_args<std::weak_ptr<Phase::Job>,std::weak_ptr<Phase::Job>>(Dependents, &v21);
    v12 = v11;
    if (v22)
    {
      std::__shared_weak_count::__release_weak(v22);
    }

    if (v12)
    {
      v13 = *a3;
      v14 = *(*a3 + 131);
      if (v14 <= *(*a2 + 131))
      {
        v14 = *(*a2 + 131);
      }

      *(v13 + 131) = v14;
      atomic_store(1u, v13 + 40);
      Phase::JobManager::GetDependencies(a1, v3);
      std::list<std::shared_ptr<Phase::Job>>::push_back();
    }

    v15 = 2;
  }

  std::recursive_mutex::unlock((*buf + 96));
  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  return v15;
}

uint64_t Phase::JobManagerDispatch::AddEnqueuedDependency(Phase::Logger *a1, Phase::Job **a2, uint64_t *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (!*a2)
  {
    v16 = **(Phase::Logger::GetInstance(a1) + 480);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "JobManagerDispatch.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 131;
      _os_log_impl(&dword_23A302000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: nullptr != pInDependent is false.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "PRECONDITION: nullptr != pInDependent is false.");
  }

  v4 = *a3;
  if (!*a3)
  {
    v18 = **(Phase::Logger::GetInstance(a1) + 480);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "JobManagerDispatch.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 132;
      _os_log_impl(&dword_23A302000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: nullptr != pInDependency is false.", buf, 0x12u);
    }

    v19 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v19, "PRECONDITION: nullptr != pInDependency is false.");
  }

  v7 = a2[1];
  v22[0] = *a2;
  v22[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  Phase::JobManager::TreeLock::TreeLock(buf, a1, v22);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = atomic_load(Phase::JobManager::GetExecutionState(a1, v3));
  if (v8 == 3)
  {
    v9 = 3;
  }

  else
  {
    Dependents = Phase::JobManager::GetDependents(a1, v4);
    v11 = a2[1];
    v20 = *a2;
    v21 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    std::__tree<std::weak_ptr<Phase::Job>,std::owner_less<std::weak_ptr<Phase::Job>>,std::allocator<std::weak_ptr<Phase::Job>>>::__emplace_unique_key_args<std::weak_ptr<Phase::Job>,std::weak_ptr<Phase::Job>>(Dependents, &v20);
    v13 = v12;
    if (v21)
    {
      std::__shared_weak_count::__release_weak(v21);
    }

    if (v13)
    {
      v14 = *(v4 + 524);
      if (v14 <= *(*a2 + 131))
      {
        v14 = *(*a2 + 131);
      }

      *(v4 + 524) = v14;
      atomic_store(1u, (v4 + 40));
      Phase::JobManager::GetDependencies(a1, v3);
      std::list<std::shared_ptr<Phase::Job>>::push_back();
    }

    v9 = 2;
  }

  std::recursive_mutex::unlock((*buf + 96));
  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  return v9;
}

void sub_23A4282D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  Phase::JobManager::TreeLock::~TreeLock(&a15);
  _Unwind_Resume(a1);
}

uint64_t Phase::JobManagerDispatch::doRunJob(Phase::JobManager *a1, uint64_t *a2, double a3)
{
  v6 = *a2;
  v7 = a2[1];
  v32[0] = *a2;
  v32[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  Phase::JobManager::TreeLock::TreeLock(&v33, a1, v32);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = a2[1];
  v31[0] = *a2;
  v31[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = Phase::JobManagerDispatch::PrepareJobForExecution(a1, v31);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (!v9)
  {
    goto LABEL_32;
  }

  if (*(v6 + 624))
  {
    v10 = *(v6 + 576);
    ConcurrentQueue = Phase::JobManagerDispatch::GetConcurrentQueue(a1, *(*a2 + 524));
    notification_block[0] = MEMORY[0x277D85DD0];
    notification_block[1] = 1174405120;
    notification_block[2] = ___ZN5Phase18JobManagerDispatch8doRunJobENSt3__110shared_ptrINS_3JobEEEd_block_invoke;
    notification_block[3] = &__block_descriptor_tmp_8;
    v13 = *a2;
    v12 = a2[1];
    notification_block[4] = a1;
    notification_block[5] = v13;
    v30 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    dispatch_block_notify(v10, ConcurrentQueue, notification_block);
    if (v30)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    }
  }

  if (!*(Phase::JobManager::GetDependencies(a1, v6) + 16))
  {
    v20 = *a2;
    if (!*(*a2 + 528))
    {
      *(v6 + 592) |= 4uLL;
      if (a3 == 0.0)
      {
        v21 = Phase::JobManagerDispatch::GetConcurrentQueue(a1, *(v20 + 524));
        dispatch_async(v21, *(v6 + 576));
      }

      else
      {
        v25 = dispatch_time(0, (a3 * 1000000000.0));
        v26 = Phase::JobManagerDispatch::GetConcurrentQueue(a1, *(*a2 + 524));
        dispatch_after(v25, v26, *(v6 + 576));
      }
    }

LABEL_32:
    v16 = 1;
    goto LABEL_33;
  }

  Dependencies = Phase::JobManager::GetDependencies(a1, v6);
  v15 = *(Dependencies + 8);
  if (v15 == Dependencies)
  {
    v16 = 1;
  }

  else
  {
    LODWORD(v16) = 1;
    do
    {
      v18 = v15[2];
      v17 = v15[3];
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        dispatch_group_enter(*(v6 + 584));
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        dispatch_group_enter(*(v6 + 584));
      }

      v28[0] = v18;
      v28[1] = v17;
      v19 = Phase::JobManagerDispatch::doRunJob(a1, v28, a3);
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }

      v16 = (v19 + v16);
      v15 = v15[1];
    }

    while (v15 != Dependencies);
  }

  v22 = *a2;
  if (!*(*a2 + 528))
  {
    *(v6 + 592) |= 4uLL;
    v23 = *(v6 + 584);
    v24 = Phase::JobManagerDispatch::GetConcurrentQueue(a1, *(v22 + 524));
    dispatch_group_notify(v23, v24, *(v6 + 576));
  }

LABEL_33:
  std::recursive_mutex::unlock((v33 + 96));
  if (*(&v33 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v33 + 1));
  }

  return v16;
}

void sub_23A428614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  Phase::JobManager::TreeLock::~TreeLock(va);
  _Unwind_Resume(a1);
}

uint64_t Phase::JobManagerDispatch::InsertDependency(Phase::Logger *a1, uint64_t *a2, uint64_t a3, Phase::Job **a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (!*a2)
  {
    v26 = **(Phase::Logger::GetInstance(a1) + 480);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "JobManagerDispatch.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 162;
      _os_log_impl(&dword_23A302000, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: nullptr != pInInsertor is false.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "PRECONDITION: nullptr != pInInsertor is false.");
  }

  v6 = *a3;
  if (!*a3)
  {
    v28 = **(Phase::Logger::GetInstance(a1) + 480);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "JobManagerDispatch.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 163;
      _os_log_impl(&dword_23A302000, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: nullptr != pInDependent is false.", buf, 0x12u);
    }

    v29 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v29, "PRECONDITION: nullptr != pInDependent is false.");
  }

  v8 = *a4;
  if (!*a4)
  {
    v30 = **(Phase::Logger::GetInstance(a1) + 480);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "JobManagerDispatch.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 164;
      _os_log_impl(&dword_23A302000, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: nullptr != pInDependency is false.", buf, 0x12u);
    }

    v31 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v31, "PRECONDITION: nullptr != pInDependency is false.");
  }

  v11 = *(a3 + 8);
  v36[0] = *a3;
  v36[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  Phase::JobManager::TreeLock::TreeLock(buf, a1, v36);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v12 = atomic_load(Phase::JobManager::GetExecutionState(a1, v6));
  if (v12 == 3 || (v13 = atomic_load(Phase::JobManager::GetExecutionState(a1, v8)), v13 == 3))
  {
    v14 = 3;
  }

  else
  {
    v16 = *(Phase::JobManager::GetDependencies(a1, v6) + 8);
    Dependencies = Phase::JobManager::GetDependencies(a1, v6);
    if (v16 != Dependencies)
    {
      while (*(v16 + 16) != *a4)
      {
        v16 = *(v16 + 8);
        if (v16 == Dependencies)
        {
          v16 = Dependencies;
          break;
        }
      }
    }

    if (v16 != Phase::JobManager::GetDependencies(a1, v6))
    {
      Dependents = Phase::JobManager::GetDependents(a1, v8);
      v19 = a2[1];
      v34 = *a2;
      v35 = v19;
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      std::__tree<std::weak_ptr<Phase::Job>,std::owner_less<std::weak_ptr<Phase::Job>>,std::allocator<std::weak_ptr<Phase::Job>>>::__emplace_unique_key_args<std::weak_ptr<Phase::Job>,std::weak_ptr<Phase::Job>>(Dependents, &v34);
      if (v20)
      {
        v21 = Phase::JobManager::GetDependents(a1, v4);
        v22 = *(a3 + 8);
        v32 = *a3;
        v33 = v22;
        if (v22)
        {
          atomic_fetch_add_explicit(&v22->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        std::__tree<std::weak_ptr<Phase::Job>,std::owner_less<std::weak_ptr<Phase::Job>>,std::allocator<std::weak_ptr<Phase::Job>>>::__emplace_unique_key_args<std::weak_ptr<Phase::Job>,std::weak_ptr<Phase::Job>>(v21, &v32);
        v24 = v23;
        if (v33)
        {
          std::__shared_weak_count::__release_weak(v33);
        }
      }

      else
      {
        v24 = 0;
      }

      if (v35)
      {
        std::__shared_weak_count::__release_weak(v35);
      }

      if (v24)
      {
        v25 = *(v4 + 524);
        if (v25 <= *(v6 + 131))
        {
          v25 = *(v6 + 131);
        }

        *(v4 + 524) = v25;
        atomic_store(1u, (v4 + 40));
        Phase::JobManager::GetDependencies(a1, v6);
        std::list<std::shared_ptr<Phase::Job>>::push_back();
      }
    }

    v14 = 2;
  }

  std::recursive_mutex::unlock((*buf + 96));
  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  return v14;
}

BOOL Phase::JobManagerDispatch::PrepareJobForExecution(Phase::JobManager *this, uint64_t a2)
{
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3802000000;
  v15[3] = __Block_byref_object_copy_;
  v5 = *a2;
  v4 = *(a2 + 8);
  v15[4] = __Block_byref_object_dispose_;
  v15[5] = v5;
  v16 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v5 = *a2;
  }

  v6 = atomic_load(Phase::JobManager::GetExecutionState(this, v5));
  if (v6 != 3)
  {
    v8 = *a2;
    v7 = *(a2 + 8);
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    *(v5 + 76) = v8;
    v9 = *(v5 + 77);
    *(v5 + 77) = v7;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    *(v5 + 74) |= 2uLL;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___ZN5Phase18JobManagerDispatch22PrepareJobForExecutionENSt3__110shared_ptrINS_3JobEEE_block_invoke;
    block[3] = &unk_278B4F5A8;
    block[4] = v15;
    block[5] = this;
    v10 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS|DISPATCH_BLOCK_DETACHED, block);
    v11 = v10;
    if (v10)
    {
      v10 = _Block_copy(v10);
    }

    v12 = *(v5 + 72);
    *(v5 + 72) = v10;
    if (v12)
    {
      _Block_release(v12);
    }

    _Block_release(v11);
  }

  _Block_object_dispose(v15, 8);
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  return v6 != 3;
}

void sub_23A428DAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  _Block_object_dispose(&a16, 8);
  if (a22)
  {
    std::__shared_weak_count::__release_weak(a22);
  }

  _Unwind_Resume(a1);
}

uint64_t Phase::JobManagerDispatch::GetConcurrentQueue(uint64_t a1, int a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = (a1 + 232);
  v4 = *(a1 + 232);
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = (a1 + 232);
  do
  {
    if (*(v4 + 8) >= a2)
    {
      v6 = v4;
    }

    v4 = v4[*(v4 + 8) < a2];
  }

  while (v4);
  if (v6 == v5 || *(v6 + 8) > a2)
  {
LABEL_8:
    std::string::basic_string[abi:ne200100]<0>(&v36, "PHASE JobManager concurrent queue ");
    std::to_string(&v33, a2);
    if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v33;
    }

    else
    {
      v7 = v33.__r_.__value_.__r.__words[0];
    }

    if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v33.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v33.__r_.__value_.__l.__size_;
    }

    v9 = std::string::append(&v36, v7, size);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v35 = v9->__r_.__value_.__r.__words[2];
    *__p = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36.__r_.__value_.__l.__data_);
    }

    if (a2 >= 3)
    {
      v31 = **(Phase::Logger::GetInstance(v9) + 480);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v36.__r_.__value_.__l.__data_) = 136315394;
        *(v36.__r_.__value_.__r.__words + 4) = "JobManagerDispatch.cpp";
        WORD2(v36.__r_.__value_.__r.__words[1]) = 1024;
        *(&v36.__r_.__value_.__r.__words[1] + 6) = 50;
        _os_log_impl(&dword_23A302000, v31, OS_LOG_TYPE_ERROR, "%25s:%-5d INVARIANT: false is false.", &v36, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "INVARIANT: false is false.");
    }

    v11 = *(a1 + 224);
    v12 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x277D85CD8], dword_23A555ED8[a2], 0);
    if (v35 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    v14 = dispatch_queue_create(v13, v12);
    if (v5 == v11 || (v15 = *(v11 + 8), v15 > a2))
    {
      v16 = *v11;
      if (*(a1 + 224) == v11)
      {
        v18 = v11;
        goto LABEL_37;
      }

      if (v16)
      {
        v17 = *v11;
        do
        {
          v18 = v17;
          v17 = v17[1];
        }

        while (v17);
      }

      else
      {
        v22 = v11;
        do
        {
          v18 = v22[2];
          v23 = *v18 == v22;
          v22 = v18;
        }

        while (v23);
      }

      if (*(v18 + 8) < a2)
      {
LABEL_37:
        if (v16)
        {
          v24 = v18 + 1;
        }

        else
        {
          v24 = v11;
        }

        v6 = *v24;
        if (!*v24)
        {
          goto LABEL_59;
        }

        goto LABEL_61;
      }

      v25 = *v5;
      if (!*v5)
      {
        goto LABEL_59;
      }

      while (1)
      {
        while (1)
        {
          v11 = v25;
          v26 = *(v25 + 8);
          if (v26 <= a2)
          {
            break;
          }

          v25 = *v11;
          if (!*v11)
          {
            goto LABEL_59;
          }
        }

        if (v26 >= a2)
        {
          break;
        }

        v25 = v11[1];
        if (!v25)
        {
          goto LABEL_59;
        }
      }
    }

    else if (v15 < a2)
    {
      v19 = v11[1];
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
          v21 = v20;
        }

        while (v19);
      }

      else
      {
        v21 = v11;
        do
        {
          v27 = v21;
          v21 = v21[2];
        }

        while (*v21 != v27);
      }

      if (v21 == v5 || *(v21 + 8) > a2 || (v28 = *v5) == 0)
      {
LABEL_59:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v11 = v28;
          v29 = *(v28 + 8);
          if (v29 <= a2)
          {
            break;
          }

          v28 = *v11;
          if (!*v11)
          {
            goto LABEL_59;
          }
        }

        if (v29 >= a2)
        {
          break;
        }

        v28 = v11[1];
        if (!v28)
        {
          goto LABEL_59;
        }
      }
    }

    v6 = v11;
LABEL_61:
    if (v14)
    {
      dispatch_release(v14);
    }

    if (SHIBYTE(v35) < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v6[5];
}

void sub_23A4291C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  __cxa_free_exception(v28);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t Phase::JobManagerDispatch::ReplaceDependency(Phase::Logger *a1, uint64_t *a2, uint64_t a3, Phase::Job **a4)
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (!*a2)
  {
    v35 = **(Phase::Logger::GetInstance(a1) + 480);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "JobManagerDispatch.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 221;
      _os_log_impl(&dword_23A302000, v35, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: nullptr != pInReplacement is false.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "PRECONDITION: nullptr != pInReplacement is false.");
  }

  v6 = *a3;
  if (!*a3)
  {
    v37 = **(Phase::Logger::GetInstance(a1) + 480);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "JobManagerDispatch.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 222;
      _os_log_impl(&dword_23A302000, v37, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: nullptr != pInDependent is false.", buf, 0x12u);
    }

    v38 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v38, "PRECONDITION: nullptr != pInDependent is false.");
  }

  v8 = *a4;
  if (!*a4)
  {
    v39 = **(Phase::Logger::GetInstance(a1) + 480);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "JobManagerDispatch.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 223;
      _os_log_impl(&dword_23A302000, v39, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: nullptr != pInDependency is false.", buf, 0x12u);
    }

    v40 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v40, "PRECONDITION: nullptr != pInDependency is false.");
  }

  v11 = *(a3 + 8);
  v45[0] = *a3;
  v45[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  Phase::JobManager::TreeLock::TreeLock(buf, a1, v45);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v12 = *(Phase::JobManager::GetDependencies(a1, v6) + 8);
  Dependencies = Phase::JobManager::GetDependencies(a1, v6);
  v14 = Dependencies;
  if (v12 != Dependencies)
  {
    while (*(v12 + 16) != *a4)
    {
      v12 = *(v12 + 8);
      if (v12 == Dependencies)
      {
        goto LABEL_13;
      }
    }

    v14 = v12;
  }

LABEL_13:
  if (Phase::JobManager::GetDependencies(a1, v6) == v14)
  {
    v33 = 2;
  }

  else
  {
    v15 = *(v4 + 524);
    if (v15 <= *(v8 + 131))
    {
      v15 = *(v8 + 131);
    }

    *(v4 + 524) = v15;
    atomic_store(1u, (v4 + 40));
    v17 = *a2;
    v16 = a2[1];
    if (v16)
    {
      atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
    }

    v18 = *(v14 + 24);
    *(v14 + 16) = v17;
    *(v14 + 24) = v16;
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    Dependents = Phase::JobManager::GetDependents(a1, v8);
    v20 = *(a3 + 8);
    v43 = *a3;
    v44 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    std::__tree<std::weak_ptr<Phase::Job>,std::owner_less<std::weak_ptr<Phase::Job>>,std::allocator<std::weak_ptr<Phase::Job>>>::__erase_unique<std::weak_ptr<Phase::Job>>(Dependents, &v43);
    if (v44)
    {
      std::__shared_weak_count::__release_weak(v44);
    }

    v21 = Phase::JobManager::GetDependents(a1, v4);
    v22 = *(a3 + 8);
    v43 = *a3;
    v44 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    std::__tree<std::weak_ptr<Phase::Job>,std::owner_less<std::weak_ptr<Phase::Job>>,std::allocator<std::weak_ptr<Phase::Job>>>::__emplace_unique_key_args<std::weak_ptr<Phase::Job>,std::weak_ptr<Phase::Job>>(v21, &v43);
    if (v44)
    {
      std::__shared_weak_count::__release_weak(v44);
    }

    v23 = atomic_load(Phase::JobManager::GetExecutionState(a1, v8));
    if (v23 == 1)
    {
      v24 = *a2;
      v25 = a2[1];
      v42[0] = v24;
      v42[1] = v25;
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v26 = Phase::JobManagerDispatch::PrepareJobForExecution(a1, v42);
      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      if (v26)
      {
        v27 = Phase::JobManager::GetDependencies(a1, v4);
        for (i = *(v27 + 8); i != v27; i = i[1])
        {
          v30 = i[2];
          v29 = i[3];
          if (v29)
          {
            atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
            dispatch_group_enter(*(v4 + 584));
            atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          else
          {
            dispatch_group_enter(*(v4 + 584));
          }

          v41[0] = v30;
          v41[1] = v29;
          Phase::JobManagerDispatch::doRunJob(a1, v41, 0.0);
          if (v29)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v29);
            std::__shared_weak_count::__release_shared[abi:ne200100](v29);
          }
        }

        if (!*(v4 + 528))
        {
          *(v4 + 592) |= 4uLL;
          v31 = *(v4 + 584);
          ConcurrentQueue = Phase::JobManagerDispatch::GetConcurrentQueue(a1, *(v4 + 524));
          dispatch_group_notify(v31, ConcurrentQueue, *(v4 + 576));
        }
      }
    }

    v33 = 0;
  }

  std::recursive_mutex::unlock((*buf + 96));
  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  return v33;
}

__n128 __Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

void __Block_byref_object_dispose_(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN5Phase18JobManagerDispatch22PrepareJobForExecutionENSt3__110shared_ptrINS_3JobEEE_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 48);
  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(v2 + 40);
      if (v7)
      {
        ExecutionState = Phase::JobManager::GetExecutionState(v4, v7);
        v9 = 0;
        atomic_compare_exchange_strong(ExecutionState, &v9, 1u);
        if (!v9)
        {
          Phase::Job::Run(v7);
          atomic_store(2u, Phase::JobManager::GetExecutionState(v4, v7));
          *(v7 + 592) |= 8uLL;
          atomic_store(1u, (v7 + 600));
          v10 = *(v7 + 616);
          *(v7 + 608) = 0u;
          if (v10)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v10);
          }

          Dependents = Phase::JobManager::GetDependents(v4, v7);
          v12 = Dependents + 1;
          v13 = *Dependents;
          if (*Dependents != Dependents + 1)
          {
            do
            {
              v14 = v13[5];
              if (v14)
              {
                v15 = v13[4];
                atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                v16 = std::__shared_weak_count::lock(v14);
                if (v16)
                {
                  v17 = v16;
                  if (v15)
                  {
                    dispatch_group_leave(*(v15 + 584));
                  }

                  std::__shared_weak_count::__release_shared[abi:ne200100](v17);
                }

                std::__shared_weak_count::__release_weak(v14);
              }

              v18 = v13[1];
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
                  v19 = v13[2];
                  v20 = *v19 == v13;
                  v13 = v19;
                }

                while (!v20);
              }

              v13 = v19;
            }

            while (v19 != v12);
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

uint64_t Phase::JobManagerDispatch::RunManualJob(Phase::JobManager *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v12[0] = *a2;
  v12[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  Phase::JobManager::TreeLock::TreeLock(&v13, a1, v12);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = atomic_load(Phase::JobManager::GetExecutionState(a1, v4));
  if (v6 == 3 || (*(v4 + 592) & 0x16) != 2)
  {
    v9 = 3;
  }

  else
  {
    *(v4 + 592) |= 4uLL;
    if (*(Phase::JobManager::GetDependencies(a1, v4) + 16))
    {
      v7 = *(v4 + 584);
      ConcurrentQueue = Phase::JobManagerDispatch::GetConcurrentQueue(a1, *(*a2 + 524));
      dispatch_group_notify(v7, ConcurrentQueue, *(v4 + 576));
    }

    else
    {
      v10 = Phase::JobManagerDispatch::GetConcurrentQueue(a1, *(*a2 + 524));
      dispatch_async(v10, *(v4 + 576));
    }

    v9 = 0;
  }

  std::recursive_mutex::unlock((v13 + 96));
  if (*(&v13 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v13 + 1));
  }

  return v9;
}

void sub_23A429AA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::JobManagerDispatch::RunJob(Phase::JobManager *a1, uint64_t a2, double a3)
{
  v18 = *MEMORY[0x277D85DE8];
  Dependents = Phase::JobManager::GetDependents(a1, *a2);
  if (*(Dependents + 2))
  {
    v11 = **(Phase::Logger::GetInstance(Dependents) + 480);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "JobManagerDispatch.cpp";
      v16 = 1024;
      v17 = 389;
      _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: GetDependents(static_cast<JobDispatch*>(pInJob.get())).empty() is false.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "PRECONDITION: GetDependents(static_cast<JobDispatch*>(pInJob.get())).empty() is false.");
  }

  v7 = *a2;
  v8 = *(a2 + 8);
  v13[0] = v7;
  v13[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = Phase::JobManagerDispatch::doRunJob(a1, v13, a3);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return 2 * (v9 == 0);
}

void ___ZN5Phase18JobManagerDispatch8doRunJobENSt3__110shared_ptrINS_3JobEEEd_block_invoke(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::mutex::lock((v2 + 632));
  v5 = *(v2 + 624);
  if (v5)
  {
    v6 = atomic_load((v5 + 25));
    if (v6 & 1) != 0 || (v7 = atomic_load(v1 + 220), (v7))
    {
      atomic_store(0, (v5 + 24));
      std::condition_variable::notify_all((v5 + 32));
    }

    else
    {
      v10 = std::chrono::steady_clock::now().__d_.__rep_ / 1000000000.0;
      v11 = *v5;
      v12 = v10 - (*(v5 + 8) + *(v5 + 16));
      *(v5 + 8) = v10;
      *(v5 + 16) = v11 - fmod(v12, v11);
      *buf = v2;
      *&buf[8] = v3;
      if (v3)
      {
        atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      Phase::JobManagerDispatch::ResetJob(v1, buf);
      if (v3)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
        v14 = v3;
        atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v14 = 0;
      }

      v13 = v2;
      (*(*v1 + 120))(v1, &v13, *(v5 + 16));
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }
    }
  }

  else if ((*(v2 + 592) & 0x10) == 0)
  {
    v8 = **(Phase::Logger::GetInstance(v4) + 480);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "JobManagerDispatch.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 638;
      _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [!pJob->mRunState[JobDispatch::kRunStateCancelled] is true]: Unexpected periodic job state on iteration.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Unexpected periodic job state on iteration.");
  }

  std::mutex::unlock((v2 + 632));
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}