void Phase::Controller::Generator::SetVoiceState(uint64_t a1, unsigned int a2)
{
  v26 = *MEMORY[0x277D85DE8];
  Instance = Phase::Logger::GetInstance(a1);
  if (*(Instance + 1636) == 1)
  {
    v5 = **(Phase::Logger::GetInstance(Instance) + 400);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 452);
      if (v6 > 3)
      {
        v7 = "<not found>";
      }

      else
      {
        v7 = off_278B4EFC8[v6];
      }

      v8 = *(a1 + 488);
      v9 = *(a1 + 472);
      v10 = *(a1 + 296);
      if (a2 > 3)
      {
        v11 = "<not found>";
      }

      else
      {
        v11 = off_278B4EFC8[a2];
      }

      v12 = 136316674;
      v13 = "CvmGenerator.mm";
      v14 = 1024;
      v15 = 1427;
      v16 = 2048;
      v17 = v8;
      v18 = 2048;
      v19 = v9;
      v20 = 2048;
      v21 = v10;
      v22 = 2080;
      v23 = v7;
      v24 = 2080;
      v25 = v11;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d (sound event: %llu, submix: %llu, generator: %llu) - voice state changed from '%s' to '%s'", &v12, 0x44u);
    }
  }

  *(a1 + 452) = a2;
}

void Phase::Controller::Generator::DistanceCull(Phase::Controller::Generator *this)
{
  if (*(this + 112) == 2)
  {
    v1 = *(this + 47);
    if (*(this + 145))
    {
      if (v1 > 0.0 && (*(this + 576) & 1) == 0)
      {
        Phase::Controller::Generator::Wake_Internal(this);
      }
    }

    else if (v1 <= 0.0)
    {
      Phase::Controller::Generator::Sleep_Internal(this);
    }
  }
}

BOOL Phase::Controller::ShouldWaitForTimestamp(uint64_t a1, uint64_t a2, double a3)
{
  v3 = *(a2 + 56);
  if (v3)
  {
    return *a2 >= a3 + 1536.0;
  }

  if ((v3 & 2) == 0)
  {
    return 0;
  }

  v5 = *(a2 + 8);
  return v5 >= [MEMORY[0x277CB8428] hostTimeForSeconds:0.032] + a1;
}

void Phase::Controller::Generator::StartWaitingVoice(Phase::Controller::Generator *this)
{
  Phase::Controller::DVM23::DvmAdapter::AddGenerator(*(this + 4), *(*(this + 23) + 40), *(this + 37), *(this + 38), -1171354717 * ((*(this + 21) - *(this + 20)) >> 3));
  Phase::Controller::Generator::UpdateCombinatorialParameters(this);
  v2 = *(this + 23);
  v4 = *(v2 + 16);
  for (i = *(v2 + 24); i != v4; std::__destroy_at[abi:ne200100]<Phase::Controller::DspNodeVoice,0>(i))
  {
    i -= 56;
  }

  *(v2 + 24) = v4;
  (*(*this + 120))(this, *(this + 54));
  v5 = *(this + 20);
  for (j = *(this + 21); v5 != j; v5 = (v5 + 88))
  {
    *(v5 + 1) = atomic_fetch_add(*(this + 36), 1uLL);
    for (k = *(v5 + 4); k; k = *k)
    {
      *(k + 56) = 1;
    }

    v8 = *(this + 23);
    Phase::Controller::CvmVoiceData::CreateDspNodeVoice(v5, &v14);
    v9 = v8[3];
    if (v9 >= v8[4])
    {
      v10 = std::vector<Phase::Controller::DspNodeVoice>::__emplace_back_slow_path<Phase::Controller::DspNodeVoice>(v8 + 2, &v14);
      v11 = __p[0];
      v8[3] = v10;
      if (v11)
      {
        __p[1] = v11;
        operator delete(v11);
      }
    }

    else
    {
      *v9 = v14;
      v9[1] = 0;
      v9[3] = 0;
      v9[4] = 0;
      v9[2] = 0;
      *(v9 + 1) = v15;
      v9[3] = v16;
      v16 = 0;
      v15 = 0uLL;
      v9[5] = 0;
      v9[6] = 0;
      *(v9 + 2) = *__p;
      v9[6] = v18;
      __p[0] = 0;
      __p[1] = 0;
      v18 = 0;
      v8[3] = (v9 + 7);
    }

    v19 = &v15;
    std::vector<Phase::VoiceBufferParameter>::__destroy_vector::operator()[abi:ne200100](&v19);
    for (m = *(v5 + 4); m; m = *m)
    {
      *(m + 56) = 0;
    }
  }

  (*(*this + 88))(this);
  Phase::Controller::Generator::SetVoiceState(this, 2u);
  v13 = *(this + 456);

  Phase::Controller::Generator::UpdateParameters(this, 0.0, v13);
}

void Phase::Controller::Generator::UpdateParameters(Phase::Controller::DVM23::VoiceGraph ****this, double a2, int a3)
{
  Phase::Controller::Generator::UpdateCombinatorialParameters(this);
  v6 = this[20];
  v7 = this[21];
  if (0x2E8BA2E8BA2E8BA3 * (v7 - v6) != 0x6DB6DB6DB6DB6DB7 * (this[23][3] - this[23][2]))
  {
    std::terminate();
  }

  if (v7 != v6)
  {
    v8 = 0;
    v9 = 0.016666;
    if (a2 <= 0.016666)
    {
      v9 = a2;
    }

    if (a3)
    {
      v10 = 0.0;
    }

    else
    {
      v10 = v9;
    }

    do
    {
      v11 = &v6[11 * v8];
      if (std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>(this + 10, qword_278B4EF48))
      {
        v12 = std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>(this + 10, qword_278B4EF48);
        if (!v12)
        {
          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        Phase::Controller::CvmVoiceData::SetParameter(v11, *(v12 + 6), v10, 0);
      }

      v13 = this[4];
      v14 = *v11;
      v15 = this[23][2][7 * v8];
      Phase::Controller::CvmVoiceData::PackDirtyDspParameters(v11, __p);
      Phase::Controller::DVM23::DvmAdapter::SetParameters(v13, v14, v15, __p);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      for (i = *(v11 + 4); i; i = *i)
      {
        *(i + 56) = 0;
      }

      ++v8;
      v6 = this[20];
    }

    while (0x2E8BA2E8BA2E8BA3 * (this[21] - v6) > v8);
  }
}

void sub_23A347F3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Controller::Generator::SubmitGeneratorStoppedResult(uint64_t result, uint64_t a2, const std::error_category *a3, void *a4)
{
  v8 = *MEMORY[0x277D85DE8];
  *&v6.__val_ = a2;
  v6.__cat_ = a3;
  if (a2 == 1)
  {
    v4 = **(Phase::Logger::GetInstance(result) + 400);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
      *(buf.__r_.__value_.__r.__words + 4) = "CvmGenerator.mm";
      WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = 970;
      _os_log_impl(&dword_23A302000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [inErrorCode.value() == true is true]: inErrorCode.message()", &buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::error_code::message(&buf, &v6);
    MEMORY[0x23EE85EE0](exception, &buf);
  }

  *(result + 464) = 1;
  *(result + 592) = *a4;
  return result;
}

void sub_23A348088(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

void Phase::Controller::Generator::Sleep_Internal(Phase::Controller::Generator *this)
{
  if ((*(this + 112) - 3) >= 2)
  {
    v2 = *(this + 145);
    if (v2 == 2)
    {

      Phase::Controller::Generator::SetSleepState(this, 1u);
    }

    else if (!v2)
    {
      v3 = *(this + 53);
      if ((v3 - 1) >= 3)
      {
        if (!v3)
        {

          Phase::Controller::Generator::Stop(this);
        }
      }

      else
      {
        Phase::Controller::Generator::SetSleepState(this, 1u);
        v4 = *(*this + 112);

        v4(this, 0);
      }
    }
  }
}

void Phase::Controller::Generator::Wake_Internal(Phase::Controller::Generator *this)
{
  if ((*(this + 112) - 3) < 2 || (*(this + 576) & 1) != 0 || *(this + 145) != 1)
  {
    return;
  }

  v2 = *(this + 113);
  if (v2 != 3)
  {
    if (v2)
    {
      v3 = 0;
      goto LABEL_10;
    }

    Phase::Controller::Generator::SetState(this, 1u);
  }

  v3 = 2;
LABEL_10:

  Phase::Controller::Generator::SetSleepState(this, v3);
}

void Phase::Controller::Generator::UpdateCombinatorialParameters(Phase::Controller::Generator *this)
{
  for (i = *(this + 41); i; i = *i)
  {
    v3 = i[2];
    if (v3 > 0x8119B92FBF5002FLL)
    {
      if (v3 == 0x8119B92FBF50030)
      {
        v21 = std::__hash_table<std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>>>::find<unsigned long long>(this + 39, qword_278B4EF18);
        if (!v21)
        {
          goto LABEL_36;
        }

        v22 = v21[6];
        if (v22 != *(this + 51))
        {
          v23 = std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>(this + 10, i + 2);
          if (!v23)
          {
LABEL_36:
            std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
          }

          v25 = *(this + 20);
          v24 = *(this + 21);
          if (v25 != v24)
          {
            v26 = *(v23 + 6);
            do
            {
              Phase::Controller::CvmVoiceData::SetParameter(v25, v26, v22, 0);
              v25 = (v25 + 88);
            }

            while (v25 != v24);
          }

          *(this + 51) = v22;
        }
      }

      else if (v3 == 0x81FBB92FC0173ECLL)
      {
        v9 = std::__hash_table<std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>>>::find<unsigned long long>(this + 39, qword_278B4EEE8);
        if (!v9)
        {
          goto LABEL_36;
        }

        v10 = v9[6];
        if (v10 != *(this + 50))
        {
          v11 = std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>(this + 10, i + 2);
          if (!v11)
          {
            goto LABEL_36;
          }

          v13 = *(this + 20);
          v12 = *(this + 21);
          if (v13 != v12)
          {
            v14 = *(v11 + 6);
            do
            {
              Phase::Controller::CvmVoiceData::SetParameter(v13, v14, v10, 0);
              v13 = (v13 + 88);
            }

            while (v13 != v12);
          }

          *(this + 50) = v10;
        }
      }
    }

    else if (v3 == 0x981F232BD33EC927)
    {
      v15 = std::__hash_table<std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>>>::find<unsigned long long>(this + 39, qword_278B4EE88);
      if (!v15)
      {
        goto LABEL_36;
      }

      v16 = v15[6];
      if (v16 != *(this + 52))
      {
        v17 = std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>(this + 10, i + 2);
        if (!v17)
        {
          goto LABEL_36;
        }

        v19 = *(this + 20);
        v18 = *(this + 21);
        if (v19 != v18)
        {
          v20 = *(v17 + 6);
          do
          {
            Phase::Controller::CvmVoiceData::SetParameter(v19, v20, v16, 0);
            v19 = (v19 + 88);
          }

          while (v19 != v18);
        }

        *(this + 52) = v16;
      }
    }

    else if (v3 == 0xB5767F7E05AD941ELL)
    {
      Gain = Phase::Controller::Generator::GetGain(this);
      if (Gain != *(this + 49))
      {
        v5 = std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>(this + 10, i + 2);
        if (!v5)
        {
          goto LABEL_36;
        }

        v7 = *(this + 20);
        v6 = *(this + 21);
        if (v7 != v6)
        {
          v8 = *(v5 + 6);
          do
          {
            Phase::Controller::CvmVoiceData::SetParameter(v7, v8, Gain, 0);
            v7 = (v7 + 88);
          }

          while (v7 != v6);
        }

        *(this + 49) = Gain;
      }
    }
  }
}

void Phase::Controller::Generator::StopVoices(Phase::Controller::Generator *this)
{
  if ((*(this + 113) - 1) <= 1)
  {
    Phase::Controller::DVM23::DvmAdapter::RemoveGenerator(*(this + 4), *(this + 37), *(this + 38));

    Phase::Controller::Generator::SetVoiceState(this, 3u);
  }
}

void std::vector<Phase::Controller::CvmVoiceData>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<Phase::Controller::CvmVoiceData>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::vector<Phase::Controller::CvmVoiceData>::__base_destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; i -= 88)
  {
    v5 = (i - 32);
    std::vector<Phase::VoiceBufferParameter>::__destroy_vector::operator()[abi:ne200100](&v5);
    result = std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(i - 72);
  }

  *(v3 + 8) = a2;
  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&,Phase::Controller::Parameter<double>>(void *a1, unint64_t *a2)
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

void *std::__hash_table<std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>>>::find<unsigned long long>(void *a1, unint64_t *a2)
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
      if (v3 == v8)
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

void sub_23A348CC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  __cxa_free_exception(v12);
  *v13 = v10;
  v15 = *v11;
  if (*v11)
  {
    v9[19] = v15;
    operator delete(v15);
  }

  std::vector<Phase::Controller::CvmVoiceData>::__destroy_vector::operator()[abi:ne200100](&a9);
  Phase::Commandable<128,Phase::LockFreeQueueMPSC>::~Commandable(v9);
  _Unwind_Resume(a1);
}

BOOL Phase::Controller::MatrixRenderer::ConfigureMatrixMixerVoiceNode(Phase::Controller::MatrixRenderer *this, unsigned int a2)
{
  v68 = *MEMORY[0x277D85DE8];
  if (*(*(**(this + 8) + 184) + 24) < a2)
  {
    v4 = **(Phase::Logger::GetInstance(this) + 512);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(this + 5);
      *buf = 136315906;
      *&buf[4] = "CvmMatrixRenderer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 250;
      *&buf[18] = 2048;
      *&buf[20] = v5;
      *&buf[28] = 1024;
      *&buf[30] = a2;
      v6 = "%25s:%-5d MatrixRenderer: rendererId %llu doesn't support %d output channels! \n";
      v7 = v4;
      v8 = 34;
LABEL_29:
      _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_ERROR, v6, buf, v8);
      return 0;
    }

    return 0;
  }

  v9 = **(Phase::Logger::GetInstance(this) + 512);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(this + 5);
    *buf = 136315906;
    *&buf[4] = "CvmMatrixRenderer.mm";
    *&buf[12] = 1024;
    *&buf[14] = 258;
    *&buf[18] = 2048;
    *&buf[20] = v10;
    *&buf[28] = 1024;
    *&buf[30] = a2;
    _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d MatrixRenderer: rendererId %llu is now using MatrixMixer1x%d! \n", buf, 0x22u);
  }

  v11 = *(this + 9);
  *buf = a2 + 15;
  v12 = std::__hash_table<std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>>>::find<unsigned long long>(v11, buf);
  if (!v12 || (v13 = *(v12 + 3)) == 0)
  {
    v32 = **(Phase::Logger::GetInstance(v12) + 512);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = *(this + 5);
      *buf = 136315650;
      *&buf[4] = "CvmMatrixRenderer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 265;
      *&buf[18] = 2048;
      *&buf[20] = v33;
      v6 = "%25s:%-5d MatrixMixerRenderer: Failed to get voice pool registry entry for rendererId %llu! \n";
      v7 = v32;
      v8 = 28;
      goto LABEL_29;
    }

    return 0;
  }

  v14 = (this + 96);
  std::vector<Phase::Controller::CvmVoiceData>::__base_destruct_at_end[abi:ne200100](this + 96, *(this + 12));
  for (i = 0; ; ++i)
  {
    v16 = *(this + 18);
    if (*v16 == 0x10000)
    {
      v18 = vcnt_s8(v16[1]);
      v18.i16[0] = vaddlv_u8(v18);
      v17 = v18.i32[0];
    }

    else
    {
      v17 = *v16 ? *v16 : v16[2];
    }

    if (i >= v17)
    {
      break;
    }

    add = atomic_fetch_add(*(this + 22), 1uLL);
    v21 = *(this + 13);
    v20 = *(this + 14);
    if (v21 >= v20)
    {
      v23 = 0x2E8BA2E8BA2E8BA3 * ((v21 - *v14) >> 3);
      v24 = v23 + 1;
      if ((v23 + 1) > 0x2E8BA2E8BA2E8BALL)
      {
        std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
      }

      v25 = 0x2E8BA2E8BA2E8BA3 * ((v20 - *v14) >> 3);
      if (2 * v25 > v24)
      {
        v24 = 2 * v25;
      }

      if (v25 >= 0x1745D1745D1745DLL)
      {
        v26 = 0x2E8BA2E8BA2E8BALL;
      }

      else
      {
        v26 = v24;
      }

      *&buf[32] = this + 96;
      if (v26)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Controller::CvmVoiceData>>(this + 96, v26);
      }

      *buf = 0;
      *&buf[8] = 88 * v23;
      *&buf[16] = 88 * v23;
      *&buf[24] = 0;
      Phase::Controller::CvmVoiceData::CvmVoiceData((88 * v23), v13, add);
      *&buf[16] += 88;
      v27 = *(this + 12);
      v28 = *(this + 13);
      v29 = *&buf[8] + v27 - v28;
      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Phase::Controller::CvmVoiceData>,Phase::Controller::CvmVoiceData*>(this + 96, v27, v28, v29);
      v30 = *(this + 12);
      *(this + 12) = v29;
      v31 = *(this + 14);
      v57 = *&buf[16];
      *(this + 104) = *&buf[16];
      *&buf[16] = v30;
      *&buf[24] = v31;
      *buf = v30;
      *&buf[8] = v30;
      std::__split_buffer<Phase::Controller::CvmVoiceData>::~__split_buffer(buf);
      v22 = v57;
    }

    else
    {
      Phase::Controller::CvmVoiceData::CvmVoiceData(*(this + 13), v13, add);
      v22 = v21 + 88;
      *(this + 13) = v21 + 88;
    }

    *(this + 13) = v22;
  }

  v61 = 0uLL;
  v59 = *(v13 + 3);
  v60 = 0;
  v36 = *(this + 12);
  for (j = *(this + 13); v36 != j; v36 = (v36 + 88))
  {
    Phase::Controller::CvmVoiceData::CreateDspNodeVoice(v36, buf);
    v38 = v61;
    if (v61 >= *(&v61 + 1))
    {
      v40 = 0x6DB6DB6DB6DB6DB7 * ((v61 - v60) >> 3) + 1;
      if (v40 > 0x492492492492492)
      {
        std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
      }

      if (0xDB6DB6DB6DB6DB6ELL * ((*(&v61 + 1) - v60) >> 3) > v40)
      {
        v40 = 0xDB6DB6DB6DB6DB6ELL * ((*(&v61 + 1) - v60) >> 3);
      }

      if ((0x6DB6DB6DB6DB6DB7 * ((*(&v61 + 1) - v60) >> 3)) >= 0x249249249249249)
      {
        v41 = 0x492492492492492;
      }

      else
      {
        v41 = v40;
      }

      v65 = &v60;
      if (v41)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Controller::DspNodeVoice>>(&v60, v41);
      }

      v42 = (8 * ((v61 - v60) >> 3));
      v62 = 0;
      v63 = v42;
      v64 = v42;
      *v42 = *buf;
      v42[1] = 0;
      v42[2] = 0;
      v42[3] = 0;
      std::vector<Phase::VoiceBufferParameter>::__init_with_size[abi:ne200100]<Phase::VoiceBufferParameter*,Phase::VoiceBufferParameter*>((v42 + 1), *&buf[8], *&buf[16], (*&buf[16] - *&buf[8]) >> 5);
      v42[4] = 0;
      v42[5] = 0;
      v42 += 4;
      v42[2] = 0;
      std::vector<std::pair<unsigned long long,float>>::__init_with_size[abi:ne200100]<std::pair<unsigned long long,float>*,std::pair<unsigned long long,float>*>(v42, *&buf[32], v67, (v67 - *&buf[32]) >> 4);
      *&v64 = v64 + 56;
      v43 = (v60 + v63 - v61);
      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Phase::Controller::DspNodeVoice>,Phase::Controller::DspNodeVoice*>(&v60, v60, v61, v43);
      v44 = v60;
      v45 = *(&v61 + 1);
      v60 = v43;
      v58 = v64;
      v61 = v64;
      *&v64 = v44;
      *(&v64 + 1) = v45;
      v62 = v44;
      v63 = v44;
      std::__split_buffer<Phase::Controller::DspNodeVoice>::~__split_buffer(&v62);
      v39 = v58;
    }

    else
    {
      *v61 = *buf;
      v38[2] = 0;
      v38[3] = 0;
      std::vector<Phase::VoiceBufferParameter>::__init_with_size[abi:ne200100]<Phase::VoiceBufferParameter*,Phase::VoiceBufferParameter*>((v38 + 1), *&buf[8], *&buf[16], (*&buf[16] - *&buf[8]) >> 5);
      v38[4] = 0;
      v38[5] = 0;
      v38[6] = 0;
      std::vector<std::pair<unsigned long long,float>>::__init_with_size[abi:ne200100]<std::pair<unsigned long long,float>*,std::pair<unsigned long long,float>*>((v38 + 4), *&buf[32], v67, (v67 - *&buf[32]) >> 4);
      v39 = v38 + 7;
    }

    *&v61 = v39;
    if (*&buf[32])
    {
      v67 = *&buf[32];
      operator delete(*&buf[32]);
    }

    v62 = &buf[8];
    std::vector<Phase::VoiceBufferParameter>::__destroy_vector::operator()[abi:ne200100](&v62);
  }

  v46 = *(this + 8);
  v47 = *(this + 5);
  v48 = *(this + 6);
  v49 = *(this + 42);
  memset(buf, 0, 24);
  v50 = Phase::Controller::DVM23::DvmAdapter::ConfigureRenderer(v46, v47, v48, v49, &v59, buf);
  v62 = buf;
  std::vector<Phase::Controller::DspNode>::__destroy_vector::operator()[abi:ne200100](&v62);
  v34 = v50 == 0;
  if (v50)
  {
    v52 = **(Phase::Logger::GetInstance(v51) + 512);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      v53 = *(this + 5);
      *buf = 136315650;
      *&buf[4] = "CvmMatrixRenderer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 291;
      *&buf[18] = 2048;
      *&buf[20] = v53;
      _os_log_impl(&dword_23A302000, v52, OS_LOG_TYPE_ERROR, "%25s:%-5d MatrixMixerRenderer: Failed to configure rendererId %llu! \n", buf, 0x1Cu);
    }
  }

  else
  {
    v54 = **(Phase::Logger::GetInstance(v51) + 512);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v13 + 23) >= 0)
      {
        v55 = v13;
      }

      else
      {
        v55 = *v13;
      }

      v56 = *(this + 5);
      *buf = 136315906;
      *&buf[4] = "CvmMatrixRenderer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 296;
      *&buf[18] = 2080;
      *&buf[20] = v55;
      *&buf[28] = 2048;
      *&buf[30] = v56;
      _os_log_impl(&dword_23A302000, v54, OS_LOG_TYPE_DEFAULT, "%25s:%-5d MatrixMixerRenderer: creating a %s voice pool for rendererId %llu! \n", buf, 0x26u);
    }
  }

  *buf = &v60;
  std::vector<Phase::Controller::DspNodeVoice>::__destroy_vector::operator()[abi:ne200100](buf);
  return v34;
}

void sub_23A349478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::vector<Phase::Controller::DspNodeVoice>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void Phase::Controller::MatrixRenderer::~MatrixRenderer(Phase::Controller::MatrixRenderer *this)
{
  v15 = *MEMORY[0x277D85DE8];
  *this = &unk_284D304B0;
  v2 = Phase::Controller::DVM23::DvmAdapter::RemoveRenderer(*(this + 8), *(this + 5), *(this + 6));
  v3 = *(this + 12);
  v4 = *(this + 13);
  while (v3 != v4)
  {
    std::__hash_table<std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,Phase::Controller::Parameter<double>>>>::clear((v3 + 16));
    std::vector<Phase::VoiceBufferParameter>::clear[abi:ne200100]((v3 + 56));
    v3 += 88;
  }

  v5 = **(Phase::Logger::GetInstance(v2) + 512);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    (*(*this + 144))(__p, this);
    v6 = v9 >= 0 ? __p : __p[0];
    *buf = 136315650;
    *&buf[4] = "CvmMatrixRenderer.mm";
    v11 = 1024;
    v12 = 65;
    v13 = 2080;
    v14 = v6;
    _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: destroyed.", buf, 0x1Cu);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *(this + 16) = &unk_284D300B8;
  v7 = *(this + 18);
  if (v7)
  {
    *(this + 19) = v7;
    operator delete(v7);
  }

  *buf = this + 96;
  std::vector<Phase::Controller::CvmVoiceData>::__destroy_vector::operator()[abi:ne200100](buf);
  Phase::Commandable<128,Phase::LockFreeQueueMPSC>::~Commandable(this);
}

{
  Phase::Controller::MatrixRenderer::~MatrixRenderer(this);

  JUMPOUT(0x23EE864A0);
}

void sub_23A3496F0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void Phase::Controller::MatrixRenderer::AddSubmix(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v30 = *MEMORY[0x277D85DE8];
  if (!(a2 | a3))
  {
    v16 = **(Phase::Logger::GetInstance(a1) + 512);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315394;
      v19 = "CvmMatrixRenderer.mm";
      v20 = 1024;
      v21 = 70;
      _os_log_impl(&dword_23A302000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (InvalidId) [inSubmixId == kInvalidSubmixId is true]: Invalid SubmixId!", &v18, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    _ZN5Phase10Controller9InvalidIdCI1St11logic_errorEPKc(exception, "Invalid SubmixId!");
  }

  if (!*(a1 + 168))
  {
    v12 = **(Phase::Logger::GetInstance(a1) + 512);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v15 = *(a1 + 40);
    v18 = 136315906;
    v19 = "CvmMatrixRenderer.mm";
    v20 = 1024;
    v21 = 206;
    v22 = 2048;
    v23 = a2;
    v24 = 2048;
    v25 = v15;
    v14 = "%25s:%-5d MatrixMixerRenderer: Trying to connect submixId %llu to a stopped rendererId %llu! \n";
    goto LABEL_15;
  }

  v6 = a4;
  if (a4 < 0.0 || a4 > 1.0)
  {
    v9 = **(Phase::Logger::GetInstance(a1) + 512);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 40);
      v18 = 136316418;
      v19 = "CvmMatrixRenderer.mm";
      v20 = 1024;
      v21 = 189;
      v22 = 2048;
      v23 = v10;
      v24 = 2048;
      v25 = v6;
      v26 = 2048;
      v27 = 0;
      v28 = 2048;
      v29 = 0x3FF0000000000000;
      _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d (renderer: %llu) send level %f is out of range [%f, %f]. Clamping...", &v18, 0x3Au);
    }

    v6 = fmin(fmax(v6, 0.0), 1.0);
  }

  v11 = Phase::Controller::DVM23::DvmAdapter::ConnectSubmixToRenderer(*(a1 + 64), a2, a3, *(a1 + 40), *(a1 + 48), v6);
  if (v11)
  {
    v12 = **(Phase::Logger::GetInstance(v11) + 512);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 40);
      v18 = 136315906;
      v19 = "CvmMatrixRenderer.mm";
      v20 = 1024;
      v21 = 198;
      v22 = 2048;
      v23 = a2;
      v24 = 2048;
      v25 = v13;
      v14 = "%25s:%-5d MatrixMixerRenderer: Connecting submixId %llu to rendererId %llu failed! \n";
LABEL_15:
      _os_log_impl(&dword_23A302000, v12, OS_LOG_TYPE_ERROR, v14, &v18, 0x26u);
    }
  }
}

void Phase::Controller::MatrixRenderer::SetSubmixSendLevel(uint64_t a1, unint64_t a2, unint64_t a3, double a4)
{
  v28 = *MEMORY[0x277D85DE8];
  if (!(a2 | a3))
  {
    v11 = **(Phase::Logger::GetInstance(a1) + 512);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      (*(*a1 + 144))(__p, a1);
      v12 = v15 >= 0 ? __p : __p[0];
      *buf = 136315906;
      v17 = "CvmMatrixRenderer.mm";
      v18 = 1024;
      v19 = 82;
      v20 = 2080;
      v21 = v12;
      v22 = 2048;
      v23 = 0.0;
      _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (InvalidId) [inSubmixId == kInvalidSubmixId is true]: %s: Invalid SubmixId %llu!", buf, 0x26u);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    _ZN5Phase10Controller9InvalidIdCI1St11logic_errorEPKc(exception, "%s: Invalid SubmixId %llu!");
  }

  __p[0] = a2;
  __p[1] = a3;
  if (*(a1 + 168))
  {
    v6 = fmin(fmax(a4, 0.0), 1.0);
    if (v6 > 1.0)
    {
      v7 = **(Phase::Logger::GetInstance(a1) + 512);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = *(a1 + 40);
        *buf = 136316418;
        v17 = "CvmMatrixRenderer.mm";
        v18 = 1024;
        v19 = 219;
        v20 = 2048;
        v21 = v8;
        v22 = 2048;
        v23 = v6;
        v24 = 2048;
        v25 = 0;
        v26 = 2048;
        v27 = 0x3FF0000000000000;
        _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d (renderer: %llu) send level %f is out of range [%f, %f]. Clamping...", buf, 0x3Au);
      }

      v6 = fmin(fmax(v6, 0.0), 1.0);
    }

    Phase::Controller::DVM23::DvmAdapter::SetSubmixSendLevel(*(a1 + 64), __p, (a1 + 40), v6, 0.0025);
  }

  else
  {
    v9 = **(Phase::Logger::GetInstance(a1) + 512);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 40);
      *buf = 136315906;
      v17 = "CvmMatrixRenderer.mm";
      v18 = 1024;
      v19 = 230;
      v20 = 2048;
      v21 = a2;
      v22 = 2048;
      v23 = v10;
      _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d MatrixMixerRenderer: Trying to send level from submixId %llu to a stopped rendererId %llu! \n", buf, 0x26u);
    }
  }
}

Phase::Logger *Phase::Controller::MatrixRenderer::SetParameters(Phase::Logger *result, _DWORD *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*a2 != 1)
  {
    v2 = **(Phase::Logger::GetInstance(result) + 512);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315394;
      v5 = "CvmMatrixRenderer.mm";
      v6 = 1024;
      v7 = 92;
      _os_log_impl(&dword_23A302000, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [pInRendererParameters->mRendererType != RendererType::Matrix is true]: Renderer parameters mismatch.", &v4, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Renderer parameters mismatch.");
  }

  return result;
}

uint64_t Phase::Controller::MatrixRenderer::SetPlayState(uint64_t a1, unsigned int a2)
{
  result = (*(*a1 + 96))(a1);
  if ((result & 1) == 0)
  {
    result = Phase::Controller::DVM23::DvmAdapter::SetRendererPlayState(*(a1 + 64), *(a1 + 40), *(a1 + 48), a2);
    if (result <= 1)
    {
      *(a1 + 168) = a2;
      *(a1 + 121) = (a2 & 0xFFFFFFFD) == 1;
    }
  }

  return result;
}

Phase::Logger *Phase::Controller::MatrixRenderer::SubmitRendererStoppedResult(Phase::Logger *this, std::error_code a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (a2.__val_ == 1)
  {
    v2 = **(Phase::Logger::GetInstance(this) + 512);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
      *(buf.__r_.__value_.__r.__words + 4) = "CvmMatrixRenderer.mm";
      WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = 123;
      _os_log_impl(&dword_23A302000, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [inErrorCode.value() == true is true]: inErrorCode.message()", &buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::error_code::message(&buf, &v4);
    MEMORY[0x23EE85EE0](exception, &buf);
  }

  if (*(this + 121))
  {
    std::terminate();
  }

  *(this + 122) = 1;
  return this;
}

void sub_23A34A054(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

void Phase::Controller::MatrixRenderer::Update(Phase::Controller::MatrixRenderer *this)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = 1;
  atomic_compare_exchange_strong(this + 80, &v1, 0);
  if (v1 != 1)
  {
    return;
  }

  ActiveSpatializer = Phase::Controller::SpatializerManager::GetActiveSpatializer(*(this + 11));
  v18 = 0;
  v19 = 0;
  v17 = 0;
  std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(&v17, *(ActiveSpatializer + 24), *(ActiveSpatializer + 32), *(ActiveSpatializer + 32) - *(ActiveSpatializer + 24));
  if (*v17 == 0x10000)
  {
    v5 = vcnt_s8(*(v17 + 1));
    v5.i16[0] = vaddlv_u8(v5);
    v4 = v5.i32[0];
  }

  else if (*v17)
  {
    v4 = *v17;
  }

  else
  {
    v4 = *(v17 + 2);
  }

  if (*(this + 46) != v4)
  {
    if (!Phase::Controller::MatrixRenderer::ConfigureMatrixMixerVoiceNode(this, v4))
    {
      (*(*this + 112))(this, 0, 0);
      *(this + 120) = 0;
      goto LABEL_31;
    }

    *(this + 46) = v4;
  }

  Phase::ChannelLayout::GetCrossmixMatrix(this + 18, &v17, v21);
  for (i = 0; ; ++i)
  {
    v7 = *(this + 18);
    if (*v7 == 0x10000)
    {
      v9 = vcnt_s8(v7[1]);
      v9.i16[0] = vaddlv_u8(v9);
      v8 = v9.i32[0];
    }

    else
    {
      v8 = *v7 ? *v7 : v7[2];
    }

    if (i >= v8)
    {
      break;
    }

    v10 = (*(this + 12) + 88 * i);
    if (*(this + 46))
    {
      v11 = 0;
      do
      {
        Phase::Controller::CvmVoiceData::SetParameter(v10, v11, *(*(v21[0] + 24 * i) + 4 * v11), 0);
        ++v11;
      }

      while (v11 < *(this + 46));
    }

    for (j = v10[4]; j; j = *j)
    {
      *(j + 56) = 1;
    }

    Phase::Controller::CvmVoiceData::PackDirtyDspParameters(v10, __p);
    v13 = Phase::Controller::DVM23::DvmAdapter::SetParameters(*(this + 8), *v10, v10[1], __p);
    if (v13)
    {
      v14 = **(Phase::Logger::GetInstance(v13) + 512);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = v10[1];
        v16 = *(this + 5);
        *buf = 136315906;
        *&buf[4] = "CvmMatrixRenderer.mm";
        v23 = 1024;
        v24 = 329;
        v25 = 2048;
        v26 = v16;
        v27 = 2048;
        v28 = v15;
        _os_log_impl(&dword_23A302000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d MatrixMixerRenderer: Failed to set parameters on rendererId %llu, vid %lld! \n", buf, 0x26u);
      }
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  *buf = v21;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](buf);
  *(this + 120) = 1;
LABEL_31:
  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }
}

void sub_23A34A37C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Controller::MatrixRenderer::IsStopped(Phase::Controller::MatrixRenderer *this)
{
  if (*(this + 121))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(this + 122);
  }

  return v1 & 1;
}

uint64_t Phase::Controller::MatrixRenderer::GetDescription@<X0>(Phase::Controller::MatrixRenderer *this@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "Renderer (matrix, ", 18);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "id ", 3);
  MEMORY[0x23EE86170](v4, *(this + 5));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, ", ", 2);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "impl@", 5);
  v6 = MEMORY[0x23EE86100](v5, this);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ")", 1);
  if ((v18 & 0x10) != 0)
  {
    v8 = v17;
    if (v17 < v14)
    {
      v17 = v14;
      v8 = v14;
    }

    locale = v13[4].__locale_;
  }

  else
  {
    if ((v18 & 8) == 0)
    {
      v7 = 0;
      a2[23] = 0;
      goto LABEL_14;
    }

    locale = v13[1].__locale_;
    v8 = v13[3].__locale_;
  }

  v7 = v8 - locale;
  if ((v8 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v7 >= 0x17)
  {
    operator new();
  }

  a2[23] = v7;
  if (v7)
  {
    memmove(a2, locale, v7);
  }

LABEL_14:
  a2[v7] = 0;
  v11 = *MEMORY[0x277D82828];
  *(&v11 + *(v11 - 24)) = *(MEMORY[0x277D82828] + 24);
  v12 = MEMORY[0x277D82878] + 16;
  if (v16 < 0)
  {
    operator delete(__p);
  }

  v12 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v13);
  std::ostream::~ostream();
  return MEMORY[0x23EE863B0](&v19);
}

void sub_23A34A694(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va, MEMORY[0x277D82828]);
  MEMORY[0x23EE863B0](v2 + 112);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Controller::CvmVoiceData>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Phase::Controller::CvmVoiceData>,Phase::Controller::CvmVoiceData*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v7 = a4;
    v8 = a2 + 16;
    do
    {
      *v7 = *(v8 - 16);
      std::__hash_table<std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,Phase::Controller::Parameter<double>>>>::__hash_table(v7 + 16, v8);
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      *(v7 + 72) = 0;
      *(v7 + 56) = *(v8 + 40);
      *(v7 + 72) = *(v8 + 56);
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v7 + 80) = *(v8 + 64);
      v7 = v14 + 88;
      v14 += 88;
      v9 = v8 + 72;
      v8 += 88;
    }

    while (v9 != a3);
  }

  v12 = 1;
  std::__allocator_destroy[abi:ne200100]<std::allocator<Phase::Controller::CvmVoiceData>,Phase::Controller::CvmVoiceData*,Phase::Controller::CvmVoiceData*>(a1, a2, a3);
  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<Phase::Controller::CvmVoiceData>,Phase::Controller::CvmVoiceData*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

uint64_t std::__allocator_destroy[abi:ne200100]<std::allocator<Phase::Controller::CvmVoiceData>,Phase::Controller::CvmVoiceData*,Phase::Controller::CvmVoiceData*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v8[3] = v3;
    v8[4] = v4;
    v6 = a2;
    do
    {
      v8[0] = (v6 + 56);
      std::vector<Phase::VoiceBufferParameter>::__destroy_vector::operator()[abi:ne200100](v8);
      result = std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(v6 + 16);
      v6 += 88;
    }

    while (v6 != a3);
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,Phase::Controller::Parameter<double>>>>::__hash_table(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<Phase::Controller::CvmVoiceData>,Phase::Controller::CvmVoiceData*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<Phase::Controller::CvmVoiceData>,std::reverse_iterator<Phase::Controller::CvmVoiceData*>,std::reverse_iterator<Phase::Controller::CvmVoiceData*>>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

uint64_t std::__allocator_destroy[abi:ne200100]<std::allocator<Phase::Controller::CvmVoiceData>,std::reverse_iterator<Phase::Controller::CvmVoiceData*>,std::reverse_iterator<Phase::Controller::CvmVoiceData*>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v10[5] = v5;
    v10[6] = v6;
    v8 = a3;
    do
    {
      v10[0] = (v8 - 32);
      std::vector<Phase::VoiceBufferParameter>::__destroy_vector::operator()[abi:ne200100](v10);
      result = std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(v8 - 72);
      v8 -= 88;
    }

    while (v8 != a5);
  }

  return result;
}

uint64_t std::__split_buffer<Phase::Controller::CvmVoiceData>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<Phase::Controller::CvmVoiceData>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<Phase::Controller::CvmVoiceData>::__destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      *(v4 + 16) = v2 - 88;
      v5 = (v2 - 32);
      std::vector<Phase::VoiceBufferParameter>::__destroy_vector::operator()[abi:ne200100](&v5);
      result = std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(v2 - 72);
      v2 = *(v4 + 16);
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t std::vector<Phase::VoiceBufferParameter>::__init_with_size[abi:ne200100]<Phase::VoiceBufferParameter*,Phase::VoiceBufferParameter*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<Phase::VoiceBufferParameter>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23A34AA94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<Phase::VoiceBufferParameter>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<Phase::VoiceBufferParameter>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::VoiceBufferParameter>>(a1, a2);
  }

  std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::VoiceBufferParameter>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<Phase::VoiceBufferParameter>,Phase::VoiceBufferParameter*,Phase::VoiceBufferParameter*,Phase::VoiceBufferParameter*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      *v4 = *a2;
      v5 = *(a2 + 16);
      *(v4 + 8) = *(a2 + 8);
      *(v4 + 16) = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      *(v4 + 24) = *(a2 + 24);
      a2 += 32;
      v4 += 32;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<Phase::VoiceBufferParameter>,Phase::VoiceBufferParameter*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<Phase::VoiceBufferParameter>,Phase::VoiceBufferParameter*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<Phase::VoiceBufferParameter>,Phase::VoiceBufferParameter*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<Phase::VoiceBufferParameter>,Phase::VoiceBufferParameter*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 16);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v1 -= 32;
  }
}

uint64_t std::vector<std::pair<unsigned long long,float>>::__init_with_size[abi:ne200100]<std::pair<unsigned long long,float>*,std::pair<unsigned long long,float>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<unsigned long long,float>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23A34ACA4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<unsigned long long,float>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long long,float>>>(a1, a2);
  }

  std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long long,float>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void Phase::Controller::ProcedureBase::ProcedureBase(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v25 = *MEMORY[0x277D85DE8];
  v15 = Phase::Controller::Generator::Generator(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
  *v15 = &unk_284D30558;
  *(v15 + 600) = 0u;
  v16 = (*(*a8 + 24))(a8);
  if (v16)
  {
    if (*(v16 + 64))
    {
      operator new();
    }

    v19 = **(Phase::Logger::GetInstance(v16) + 400);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "CvmProcedureBase.mm";
      v23 = 1024;
      v24 = 40;
      _os_log_impl(&dword_23A302000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [pProcedurePrepareParameters->mProcedureType == ProcedureType::None is true]: Invalid procedure type", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Invalid procedure type");
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
  }

  v17 = **(Phase::Logger::GetInstance(0) + 400);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v22 = "CvmProcedureBase.mm";
    v23 = 1024;
    v24 = 38;
    _os_log_impl(&dword_23A302000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [nullptr == pProcedurePrepareParameters is true]: Invalid GeneratorPrepareParameters for GeneratorType::Procedure!", buf, 0x12u);
  }

  v18 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v18, "Invalid GeneratorPrepareParameters for GeneratorType::Procedure!");
}

void sub_23A34B034(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  Phase::Controller::Generator::~Generator(v1);
  _Unwind_Resume(a1);
}

void Phase::Controller::ProcedureBase::InternalConfigureDspGenerator(Phase::Controller::ProcedureBase *this)
{
  v1 = *(this + 4);
  v2 = *(this + 37);
  v3 = *(this + 38);
  memset(v4, 0, sizeof(v4));
  Phase::Controller::DVM23::DvmAdapter::ConfigureGeneratorWithRenderCallback(v1, v2, v3, 1u);
  v5 = v4;
  std::vector<Phase::Controller::DspNode>::__destroy_vector::operator()[abi:ne200100](&v5);
}

void sub_23A34B0D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<Phase::Controller::DspNode>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void Phase::Controller::DspProcedureNode::~DspProcedureNode(Phase::Controller::DspProcedureNode *this)
{
  v1 = (this + 16);
  std::vector<Phase::Controller::DspNodeVoice>::__destroy_vector::operator()[abi:ne200100](&v1);
}

{
  v2 = (this + 16);
  std::vector<Phase::Controller::DspNodeVoice>::__destroy_vector::operator()[abi:ne200100](&v2);
  MEMORY[0x23EE864A0](this, 0x10A1C4004939F89);
}

uint64_t Phase::Controller::PullStreamSampler::StartVoices(Phase::Controller::PullStreamSampler *this, double a2)
{
  *(this + 55) = a2;
  Phase::Controller::Generator::SetVoiceState(this, 1u);
  v3 = *(**(this + 5) + 56);

  return v3();
}

uint64_t Phase::Controller::PullStreamSampler::StopVoices(Phase::Controller::PullStreamSampler *this)
{
  Phase::Controller::Generator::StopVoices(this);
  v2 = *(**(this + 5) + 56);

  return v2();
}

void Phase::Controller::PullStreamSampler::Pause(Phase::Controller::PullStreamSampler *this)
{
  v2 = *(this + 584);
  Phase::Controller::Generator::Pause(this);
  v3 = *(this + 584);
  v4 = v3 == v2 || v3 == 0;
  if (!v4 && (*(this + 585) & 1) == 0)
  {
    v5 = *(**(this + 5) + 56);

    v5();
  }
}

void Phase::Controller::PullStreamSampler::Resume(Phase::Controller::PullStreamSampler *this, const AudioTimeStamp *a2)
{
  v3 = *(this + 584);
  Phase::Controller::Generator::Resume(this, a2);
  if (v3 && (*(this + 584) & 1) == 0 && (*(this + 585) & 1) == 0)
  {
    v4 = *(**(this + 5) + 56);

    v4();
  }
}

void Phase::Controller::PullStreamSampler::ClientEnginePause(Phase::Controller::PullStreamSampler *this)
{
  v2 = *(this + 585);
  Phase::Controller::Generator::ClientEnginePause(this);
  v3 = *(this + 585);
  v4 = v3 == v2 || v3 == 0;
  if (!v4 && (*(this + 584) & 1) == 0)
  {
    v5 = *(**(this + 5) + 56);

    v5();
  }
}

void Phase::Controller::PullStreamSampler::ClientEngineStart(Phase::Controller::PullStreamSampler *this)
{
  v2 = *(this + 585);
  Phase::Controller::Generator::ClientEngineStart(this);
  if (v2 && (*(this + 585) & 1) == 0 && (*(this + 584) & 1) == 0)
  {
    v3 = *(**(this + 5) + 56);

    v3();
  }
}

void Phase::Controller::PullStreamSampler::~PullStreamSampler(Phase::Controller::PullStreamSampler *this)
{
  Phase::Controller::StreamSamplerBase::~StreamSamplerBase(this);

  JUMPOUT(0x23EE864A0);
}

void Phase::Controller::RendererSystem::RendererSystem(Phase::Logger *a1)
{
  v2 = *MEMORY[0x277D85DE8];
  *a1 = &unk_284D307B0;
  v1 = (a1 + 8);
  Phase::Logger::GetInstance(a1);
  Phase::Commandable<128,Phase::LockFreeQueueMPSC>::Commandable(v1);
}

void sub_23A34B70C(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,std::function<void ()(Phase::UniqueObjectId,std::shared_ptr<Phase::Controller::Renderer>)>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::function<void ()(Phase::UniqueObjectId,std::shared_ptr<Phase::Controller::Renderer>)>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::function<void ()(Phase::UniqueObjectId,std::shared_ptr<Phase::Controller::Renderer>)>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::function<void ()(Phase::UniqueObjectId,std::shared_ptr<Phase::Controller::Renderer>)>>>>::~__hash_table(v5);
  v8 = *(v1 + 168);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(v4);
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(v3);
  Phase::Commandable<128,Phase::LockFreeQueueMPSC>::~Commandable(v2);
  _Unwind_Resume(a1);
}

uint64_t Phase::Controller::TaskManager::GetService<Phase::Controller::SpatializerManager>(Phase::Logger *a1, int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 6);
  if (a2 >= ((*(a1 + 7) - v3) >> 5))
  {
    v7 = **(Phase::Logger::GetInstance(a1) + 464);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "TaskManager.hpp";
      v15 = 1024;
      v16 = 112;
      _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: pId < mServiceRegistry.size() is false.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::domain_error::domain_error[abi:ne200100](exception, "PRECONDITION: pId < mServiceRegistry.size() is false.");
  }

  v4 = (v3 + 32 * a2);
  if (!*v4)
  {
    v9 = **(Phase::Logger::GetInstance(v4) + 464);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      Phase::GetBacktraceFrame<1ul>(&__p);
      v10 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315906;
      v14 = "TaskManager.hpp";
      v15 = 1024;
      v16 = 121;
      v17 = 1024;
      v18 = a2;
      v19 = 2080;
      v20 = v10;
      _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::domain_error) [not lService.has_value() is true]: No service registered for Id %i, in call \\n%s", buf, 0x22u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v11 = __cxa_allocate_exception(0x10uLL);
    std::domain_error::domain_error[abi:ne200100](v11, "No service registered for Id %i, in call \n%s");
  }

  v5 = std::any_cast[abi:ne200100]<Phase::Controller::SpatializerManager * const>(v4);
  if (!v5)
  {
    std::__throw_bad_any_cast[abi:ne200100]();
  }

  return *v5;
}

void sub_23A34BAC8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t Phase::Controller::TaskManager::GetService<Phase::Controller::IR::IRBuilder>(Phase::Logger *a1, Phase::Logger *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a2 == a1)
  {
    v4 = **(Phase::Logger::GetInstance(a1) + 464);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "TaskManager.hpp";
      v12 = 1024;
      v13 = 112;
      _os_log_impl(&dword_23A302000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: pId < mServiceRegistry.size() is false.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::domain_error::domain_error[abi:ne200100](exception, "PRECONDITION: pId < mServiceRegistry.size() is false.");
  }

  if (!*a1)
  {
    v6 = **(Phase::Logger::GetInstance(a1) + 464);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      Phase::GetBacktraceFrame<1ul>(&__p);
      v7 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315906;
      v11 = "TaskManager.hpp";
      v12 = 1024;
      v13 = 121;
      v14 = 1024;
      v15 = 0;
      v16 = 2080;
      v17 = v7;
      _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::domain_error) [not lService.has_value() is true]: No service registered for Id %i, in call \\n%s", buf, 0x22u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v8 = __cxa_allocate_exception(0x10uLL);
    std::domain_error::domain_error[abi:ne200100](v8, "No service registered for Id %i, in call \n%s");
  }

  v2 = (*a1)(3, a1, 0, 0, &std::__any_imp::__unique_typeinfo<Phase::Controller::IR::IRBuilder *>::__id);
  if (!v2)
  {
    std::__throw_bad_any_cast[abi:ne200100]();
  }

  return *v2;
}

void sub_23A34BE3C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void Phase::Controller::RendererSystem::~RendererSystem(Phase::Controller::RendererSystem *this)
{
  v13 = *MEMORY[0x277D85DE8];
  *this = &unk_284D30750;
  v2 = (this + 8);
  *(this + 1) = &unk_284D30780;
  v3 = Phase::Controller::RendererSystem::Reset(this);
  if (*(this + 13))
  {
    v4 = **(Phase::Logger::GetInstance(v3) + 512);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(this + 13);
      v7 = 136315650;
      v8 = "CvmRendererSystem.mm";
      v9 = 1024;
      v10 = 81;
      v11 = 2048;
      v12 = v5;
      _os_log_impl(&dword_23A302000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d %lu dangling RendererPtrs while destroying RendererSystem.", &v7, 0x1Cu);
    }
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,std::function<void ()(Phase::UniqueObjectId,std::shared_ptr<Phase::Controller::Renderer>)>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::function<void ()(Phase::UniqueObjectId,std::shared_ptr<Phase::Controller::Renderer>)>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::function<void ()(Phase::UniqueObjectId,std::shared_ptr<Phase::Controller::Renderer>)>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::function<void ()(Phase::UniqueObjectId,std::shared_ptr<Phase::Controller::Renderer>)>>>>::~__hash_table(this + 176);
  v6 = *(this + 21);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(this + 120);
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(this + 80);
  Phase::Commandable<128,Phase::LockFreeQueueMPSC>::~Commandable(v2);
}

{
  Phase::Controller::RendererSystem::~RendererSystem(this);

  JUMPOUT(0x23EE864A0);
}

void sub_23A34BFAC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t Phase::Controller::RendererSystem::Reset(Phase::Controller::RendererSystem *this)
{
  result = Phase::Commandable<128,Phase::LockFreeQueueMPSC>::ExecuteCommands(this + 8, 1u);
  if (*(this + 6) >= 1)
  {
    v3 = 0;
    do
    {
      result = Phase::CommandQueue<Phase::LockFreeQueueMPSC>::Reset(*(*(this + 2) + 8 * v3++));
    }

    while (v3 < *(this + 6));
  }

  for (i = *(this + 12); i; i = *i)
  {
    result = (*(*i[4] + 96))(i[4]);
    if ((result & 1) == 0)
    {
      result = (*(*i[4] + 112))(i[4], 0, 0);
    }
  }

  v5 = *(this + 17);
  if (v5)
  {
    do
    {
      v6 = v5[2];
      if (v6)
      {
        (*(*v6 + 24))(v6);
      }

      result = std::__hash_table<Phase::Controller::Renderer *,std::hash<Phase::Controller::Renderer *>,std::equal_to<Phase::Controller::Renderer *>,std::allocator<Phase::Controller::Renderer *>>::erase(this + 15, v5);
      v5 = result;
    }

    while (result);
  }

  return result;
}

void non-virtual thunk toPhase::Controller::RendererSystem::~RendererSystem(Phase::Controller::RendererSystem *this)
{
  Phase::Controller::RendererSystem::~RendererSystem((this - 8));
}

{
  Phase::Controller::RendererSystem::~RendererSystem((this - 8));

  JUMPOUT(0x23EE864A0);
}

void Phase::Controller::RendererSystem::CreateRenderer(uint64_t a1@<X0>, uint64_t a2@<X1>, Phase::Logger *a3@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  MEMORY[0x23EE87040](buf);
  Phase::Controller::RendererSystem::CreateRendererInternal(a3, a1, *buf, v7, a2);
}

void sub_23A34C39C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v4);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v3 + 8);
    __cxa_end_catch();
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    JUMPOUT(0x23A34C2B0);
  }

  _Unwind_Resume(exception_object);
}

void Phase::Controller::RendererSystem::CreateRendererInternal(Phase::Logger *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = *(a5 + 8);
  if (v7 != 2)
  {
    if (v7 == 1)
    {
      Phase::Controller::TaskManager::GetService<Phase::Controller::VoicePoolRegistry>(*(a2 + 48), 3);
      Phase::Controller::TaskManager::GetService<Phase::Controller::SpatializerManager>(*(a2 + 48), 9);
      operator new();
    }

    v11 = **(Phase::Logger::GetInstance(a1) + 512);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "CvmRendererSystem.mm";
      LOWORD(v14) = 1024;
      *(&v14 + 2) = 245;
      _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument): Unsupported renderer type", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Unsupported renderer type");
  }

  v9 = *(a2 + 160);
  v8 = *(a2 + 168);
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    v10 = *(a5 + 8);
  }

  else
  {
    v10 = 2;
  }

  *&buf[8] = v10;
  *buf = &unk_284D30200;
  v14 = *(a5 + 12);
  NumNonLFEChannels = *(a5 + 20);
  memset(__p, 0, sizeof(__p));
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(__p, *(a5 + 24), *(a5 + 32), (*(a5 + 32) - *(a5 + 24)) >> 2);
  v17 = *(a5 + 48);
  NumNonLFEChannels = Phase::ChannelLayout::GetNumNonLFEChannels(v9);
  Phase::Controller::TaskManager::GetService<Phase::Controller::IR::IRBuilder>(*(*(a2 + 48) + 48), *(*(a2 + 48) + 56));
  Phase::Controller::TaskManager::GetService<Phase::Controller::VoicePoolRegistry>(*(a2 + 48), 3);
  operator new();
}

void sub_23A34C7A0(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x23A34C7D4);
}

uint64_t Phase::Controller::RendererSystem::DestroyRenderer(uint64_t this, Phase::Controller::Renderer *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = this;
    v4 = *(*(this + 16) + 8);
    v11 = 0;
    v10 = 1;
    v5 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v4, 24, &v11, &v10);
    if (!v5)
    {
      Instance = Phase::Logger::GetInstance(0);
      Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
      v8 = **(v4 + 48);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v13 = "CommandQueue.hpp";
        v14 = 1024;
        v15 = 100;
        _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    }

    if (v10)
    {
      v6 = **(v4 + 48);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315906;
        v13 = "CommandQueue.hpp";
        v14 = 1024;
        v15 = 89;
        v16 = 2048;
        v17 = v11;
        v18 = 2048;
        v19 = 24;
        _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
      }
    }

    *v5 = &unk_284D30840;
    v5[1] = v3;
    v5[2] = a2;
    this = Phase::LockFreeQueueSPSC::CommitBytes(v4, 24);
    atomic_store(0, (v4 + 40));
  }

  return this;
}

void sub_23A34C9F0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2 + 8);
    __cxa_end_catch();
    JUMPOUT(0x23A34C908);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *Phase::Controller::RendererSystem::Update(Phase::Controller::RendererSystem *this)
{
  result = Phase::Commandable<128,Phase::LockFreeQueueMPSC>::ExecuteCommands(this + 8);
  for (i = *(this + 12); i; i = *i)
  {
    result = (*(*i[4] + 80))(i[4]);
  }

  for (j = *(this + 17); j; j = *j)
  {
    while (1)
    {
      v5 = j[2];
      result = (*(*v5 + 96))(v5);
      if (!result)
      {
        break;
      }

      (*(*v5 + 24))(v5);
      result = std::__hash_table<Phase::Controller::Renderer *,std::hash<Phase::Controller::Renderer *>,std::equal_to<Phase::Controller::Renderer *>,std::allocator<Phase::Controller::Renderer *>>::erase(this + 15, j);
      j = result;
      if (!result)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t Phase::Commandable<128,Phase::LockFreeQueueMPSC>::ExecuteCommands(uint64_t a1, unsigned int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if ((a2 & 0x80000000) != 0 || *(a1 + 16) <= a2)
  {
    v7 = **(a1 + 24);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "Commandable.hpp";
      v11 = 1024;
      v12 = 296;
      _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: pQueueId >= 0 && pQueueId < mQueueCount is false.", &v9, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::domain_error::domain_error[abi:ne200100](exception, "PRECONDITION: pQueueId >= 0 && pQueueId < mQueueCount is false.");
  }

  v3 = Phase::CommandQueue<Phase::LockFreeQueueMPSC>::ExecuteCommands(*(*(a1 + 8) + 8 * a2));
  v4 = 1;
  atomic_compare_exchange_strong((a1 + 32), &v4, 0);
  if (v4 == 1)
  {
    v5 = **(a1 + 24);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v9 = 136315394;
      v10 = "Commandable.hpp";
      v11 = 1024;
      v12 = 303;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_INFO, "%25s:%-5d Commandable: Executing pending commands in overflow queue.", &v9, 0x12u);
    }
  }

  return v3;
}

void Phase::Controller::RendererSystem::ReconfigureRenderers(std::__shared_weak_count **this, uint64_t a2, int a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = **(Phase::Logger::GetInstance(this) + 400);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "CvmRendererSystem.mm";
    *&buf[12] = 1024;
    *&buf[14] = 255;
    _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d RendererSystem: Reconfiguring all renderers", buf, 0x12u);
  }

  memset(buf, 0, sizeof(buf));
  v7 = this[21];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = this[12];
  if (v8)
  {
    do
    {
      shared_owners = v8[1].__shared_owners_;
      if (a3)
      {
        if (shared_owners[14] == 2)
        {
          MEMORY[0x23EE87040](&v17);
          v10 = v17;
          v11 = (*(*shared_owners + 136))(shared_owners);
          Phase::Controller::RendererSystem::CreateRendererInternal(&v16, this, v10, *(&v10 + 1), v11);
        }
      }

      else
      {
        (*(*shared_owners + 128))(v8[1].__shared_owners_, a2);
      }

      v8 = v8->__vftable;
    }

    while (v8);
    v12 = *buf;
  }

  else
  {
    v12 = 0;
  }

  for (i = *&buf[8]; v12 != i; v12 += 2)
  {
    v15 = *v12;
    v14 = v12[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *&v17 = v15 + 40;
    std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,Phase::Controller::Renderer *>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,Phase::Controller::Renderer *>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,Phase::Controller::Renderer *>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,Phase::Controller::Renderer *>>>::__emplace_unique_key_args<Phase::UniqueObjectId,std::piecewise_construct_t const&,std::tuple<Phase::UniqueObjectId const&>,std::tuple<>>(this + 10, (v15 + 40))[4] = v15;
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  *&v17 = buf;
  std::vector<std::shared_ptr<Phase::Controller::Renderer>>::__destroy_vector::operator()[abi:ne200100](&v17);
}

void sub_23A34D0C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  a15 = &a19;
  std::vector<std::shared_ptr<Phase::Controller::Renderer>>::__destroy_vector::operator()[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

void Phase::Controller::RendererSystem::SpatializerParametersChanged(Phase::Controller::RendererSystem *this)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(Phase::Controller::TaskManager::GetService<Phase::Controller::IR::IRBuilder>(*(*(this + 6) + 48), *(*(this + 6) + 56)) + 96);
  IsLayoutSupported = Phase::ChannelLayout::IsLayoutSupported((v2 + 24));
  if (IsLayoutSupported)
  {
    v4 = Phase::ChannelLayout::AreLayoutsEqual((v2 + 24), *(this + 20));
    if (!v4)
    {
      Phase::ChannelLayout::GetNumNonLFEChannels((v2 + 24));
      Phase::ChannelLayout::GetNumNonLFEChannels(*(this + 20));
      std::allocate_shared[abi:ne200100]<CA::ChannelLayout,std::allocator<CA::ChannelLayout>,CA::ChannelLayout const&,0>();
    }

    if (*(this + 6) <= 0)
    {
      v11 = **(this + 4);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "Commandable.hpp";
        *&buf[12] = 1024;
        *&buf[14] = 132;
        _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: pQueueId >= 0 && pQueueId < mQueueCount is false.", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::domain_error::domain_error[abi:ne200100](exception, "PRECONDITION: pQueueId >= 0 && pQueueId < mQueueCount is false.");
    }

    v7 = **(this + 2);
    __p[0] = 0;
    v19 = 1;
    v8 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v7, 40, __p, &v19);
    if (!v8)
    {
      Instance = Phase::Logger::GetInstance(0);
      Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
      v14 = **(v7 + 48);
      v15 = v14;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "CommandQueue.hpp";
        *&buf[12] = 1024;
        *&buf[14] = 100;
        _os_log_impl(&dword_23A302000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
      }

      v16 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v16, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    }

    if (v19)
    {
      v9 = **(v7 + 48);
      v10 = v9;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315906;
        *&buf[4] = "CommandQueue.hpp";
        *&buf[12] = 1024;
        *&buf[14] = 89;
        v21 = 2048;
        v22 = __p[0];
        v23 = 2048;
        v24 = 40;
        _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
      }
    }

    *v8 = &unk_284D308A0;
    *(v8 + 8) = this;
    *(v8 + 16) = Phase::Controller::RendererSystem::ReconfigureRenderers;
    *(v8 + 24) = 0;
    *(v8 + 32) = !v4;
    *(v8 + 33) = 0;
    Phase::LockFreeQueueSPSC::CommitBytes(v7, 40);
    atomic_store(0, (v7 + 40));
  }

  else
  {
    v5 = **(Phase::Logger::GetInstance(IsLayoutSupported) + 512);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      Phase::ChannelLayout::GetStringDescription((v2 + 24), __p);
      v6 = v18 >= 0 ? __p : __p[0];
      *buf = 136315650;
      *&buf[4] = "CvmRendererSystem.mm";
      *&buf[12] = 1024;
      *&buf[14] = 321;
      v21 = 2080;
      v22 = v6;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d RendererSystem: setting invalid output channel layout \n%s", buf, 0x1Cu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void sub_23A34D544(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2 + 8);
    __cxa_end_catch();
    JUMPOUT(0x23A34D3B4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Controller::RendererSystem::ActiveSpatializerChanged(Phase::Controller::RendererSystem *this, const Phase::Controller::Spatializer *a2)
{
  v4 = Phase::Controller::TaskManager::GetService<Phase::Controller::IR::IRBuilder>(*(*(this + 6) + 48), *(*(this + 6) + 56));
  Phase::Controller::IR::IRBuilder::SetSpatializer(v4, a2);
  v5 = *(*this + 16);

  return v5(this);
}

uint64_t Phase::Controller::RendererSystem::SubmitRendererStoppedResult(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = *MEMORY[0x277D85DE8];
  if (!(a2 | a3))
  {
    __assert_rtn("SubmitRendererStoppedResult", "CvmRendererSystem.mm", 348, "inRendererId != kInvalidRendererId");
  }

  v10 = **(a1 + 16);
  v18 = 0;
  v17 = 1;
  v11 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v10, 48, &v18, &v17);
  if (!v11)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v15 = **(v10 + 48);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "CommandQueue.hpp";
      v21 = 1024;
      v22 = 100;
      _os_log_impl(&dword_23A302000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v17)
  {
    v12 = **(v10 + 48);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v20 = "CommandQueue.hpp";
      v21 = 1024;
      v22 = 89;
      v23 = 2048;
      v24 = v18;
      v25 = 2048;
      v26 = 48;
      _os_log_impl(&dword_23A302000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  *v11 = &unk_284D308C8;
  v11[1] = a1;
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = a5;
  result = Phase::LockFreeQueueSPSC::CommitBytes(v10, 48);
  atomic_store(0, (v10 + 40));
  return result;
}

void sub_23A34D878(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2 + 8);
    __cxa_end_catch();
    JUMPOUT(0x23A34D76CLL);
  }

  _Unwind_Resume(exception_object);
}

void *std::function<void ()(Phase::UniqueObjectId,std::shared_ptr<Phase::Controller::Renderer>)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(Phase::UniqueObjectId,std::shared_ptr<Phase::Controller::Renderer>)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<void ()(Phase::UniqueObjectId,std::shared_ptr<Phase::Controller::Renderer>)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<void ()(Phase::UniqueObjectId,std::shared_ptr<Phase::Controller::Renderer>)>::~__value_func[abi:ne200100](v4);
  return a1;
}

uint64_t Phase::Controller::RendererSystem::GetStats@<X0>(Phase::Controller::RendererSystem *this@<X0>, uint64_t a2@<X8>)
{
  v4 = 0;
  v5 = a2 + 16;
  do
  {
    v6 = __const__ZNK5Phase10Controller14RendererSystem8GetStatsEv_rendererPlayStates[v4];
    *(a2 + 4 * v6) = Phase::Controller::RendererSystem::GetRendererCount(this, 2, __const__ZNK5Phase10Controller14RendererSystem8GetStatsEv_rendererPlayStates[v4]);
    result = Phase::Controller::RendererSystem::GetRendererCount(this, 1, v6);
    *(v5 + 4 * v6) = result;
    ++v4;
  }

  while (v4 != 4);
  return result;
}

uint64_t Phase::Controller::RendererSystem::GetRendererCount(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 96);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  do
  {
    v7 = v3[4];
    if (v7[14] == a2)
    {
      if ((*(*v7 + 120))(v7) == a3)
      {
        v6 = (v6 + 1);
      }

      else
      {
        v6 = v6;
      }
    }

    v3 = *v3;
  }

  while (v3);
  return v6;
}

void std::vector<std::shared_ptr<Phase::Controller::Renderer>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 1);
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        v4 -= 16;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t (**std::any_cast[abi:ne200100]<Phase::Controller::SpatializerManager * const>(uint64_t (**result)(uint64_t, void, void, void, void *)))(uint64_t, void, void, void, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, 0, &std::__any_imp::__unique_typeinfo<Phase::Controller::SpatializerManager *>::__id);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_23A34DBA8(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<CA::ChannelLayout>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284D307E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

void std::__shared_ptr_emplace<CA::ChannelLayout>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,std::function<void ()(Phase::UniqueObjectId,std::shared_ptr<Phase::Controller::Renderer>)>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::function<void ()(Phase::UniqueObjectId,std::shared_ptr<Phase::Controller::Renderer>)>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::function<void ()(Phase::UniqueObjectId,std::shared_ptr<Phase::Controller::Renderer>)>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::function<void ()(Phase::UniqueObjectId,std::shared_ptr<Phase::Controller::Renderer>)>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__function::__value_func<void ()(Phase::UniqueObjectId,std::shared_ptr<Phase::Controller::Renderer>)>::~__value_func[abi:ne200100]((v2 + 3));
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

uint64_t std::__function::__value_func<void ()(Phase::UniqueObjectId,std::shared_ptr<Phase::Controller::Renderer>)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,Phase::Controller::Renderer *>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,Phase::Controller::Renderer *>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,Phase::Controller::Renderer *>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,Phase::Controller::Renderer *>>>::__emplace_unique_key_args<Phase::UniqueObjectId,std::piecewise_construct_t const&,std::tuple<Phase::UniqueObjectId const&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = 0;
  v3 = 0xCBF29CE484222325;
  do
  {
    v3 = 0x100000001B3 * (v3 ^ *(a2 + v2++));
  }

  while (v2 != 16);
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_24;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v3;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_24;
    }

LABEL_23:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_24;
    }
  }

  if (v8[2] != *a2 || v8[3] != a2[1])
  {
    goto LABEL_23;
  }

  return v8;
}

void *Phase::LambdaFunction<Phase::Controller::RendererSystem::CreateRenderer(Phase::Controller::RendererConfig const*)::$_0,void>::~LambdaFunction(void *a1)
{
  *a1 = &unk_284D30818;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void Phase::LambdaFunction<Phase::Controller::RendererSystem::CreateRenderer(Phase::Controller::RendererConfig const*)::$_0,void>::~LambdaFunction(void *a1)
{
  *a1 = &unk_284D30818;
  v1 = a1[5];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x23EE864A0);
}

void *Phase::LambdaFunction<Phase::Controller::RendererSystem::CreateRenderer(Phase::Controller::RendererConfig const*)::$_0,void>::operator()(void *a1)
{
  v1 = 0;
  v20 = *MEMORY[0x277D85DE8];
  v2 = a1[1];
  v3 = a1 + 2;
  v4 = 0xCBF29CE484222325;
  do
  {
    v4 = 0x100000001B3 * (v4 ^ *(v3 + v1++));
  }

  while (v1 != 16);
  v5 = v2[11];
  if (v5)
  {
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

    v8 = *(*&v2[10] + 8 * v7);
    if (v8)
    {
      for (i = *v8; i; i = *i)
      {
        v10 = i[1];
        if (v4 == v10)
        {
          if (i[2] == a1[2] && i[3] == a1[3])
          {
            v14 = **(Phase::Logger::GetInstance(a1) + 512);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              *v17 = 136315394;
              *&v17[4] = "CvmRendererSystem.mm";
              v18 = 1024;
              v19 = 96;
              _os_log_impl(&dword_23A302000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [mRenderers.count(rendererId) > 0 is true]: Renderer already registered for this Id!", v17, 0x12u);
            }

            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Renderer already registered for this Id!");
          }
        }

        else
        {
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
            break;
          }
        }
      }
    }
  }

  v12 = a1[4];
  *v17 = a1 + 2;
  result = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,Phase::Controller::Renderer *>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,Phase::Controller::Renderer *>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,Phase::Controller::Renderer *>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,Phase::Controller::Renderer *>>>::__emplace_unique_key_args<Phase::UniqueObjectId,std::piecewise_construct_t const&,std::tuple<Phase::UniqueObjectId const&>,std::tuple<>>(&v2[10], v3);
  result[4] = v12;
  return result;
}

void Phase::LambdaFunction<Phase::Controller::RendererSystem::DestroyRenderer(Phase::Controller::Renderer *)::$_0,void>::operator()(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>(v3 + 10, v2 + 5);
  if (!v4)
  {
    v28 = **(Phase::Logger::GetInstance(0) + 512);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v30 = 136315394;
      v31 = "CvmRendererSystem.mm";
      v32 = 1024;
      v33 = 123;
      _os_log_impl(&dword_23A302000, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [rendererIter == mRenderers.end() is true]: Renderer not found to destroy!", &v30, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Renderer not found to destroy!");
  }

  v5 = v4;
  v6 = (*(*v2 + 96))(v2);
  v7 = *(a1 + 16);
  if ((v6 & 1) == 0)
  {
    (*(*v7 + 112))(v7, 0, 0);
    v8 = *(a1 + 16);
    v9 = 0x9DDFEA08EB382D69 * ((8 * (v8 & 0x1FFFFFFF) + 8) ^ HIDWORD(v8));
    v10 = 0x9DDFEA08EB382D69 * (HIDWORD(v8) ^ (v9 >> 47) ^ v9);
    v11 = 0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47));
    v12 = v3[16];
    if (v12)
    {
      v13 = vcnt_s8(v12);
      v13.i16[0] = vaddlv_u8(v13);
      if (v13.u32[0] > 1uLL)
      {
        v14 = 0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47));
        if (v11 >= *&v12)
        {
          v14 = v11 % *&v12;
        }
      }

      else
      {
        v14 = v11 & (*&v12 - 1);
      }

      v15 = *(v3[15] + 8 * v14);
      if (v15)
      {
        for (i = *v15; i; i = *i)
        {
          v17 = i[1];
          if (v17 == v11)
          {
            if (i[2] == v8)
            {
              goto LABEL_23;
            }
          }

          else
          {
            if (v13.u32[0] > 1uLL)
            {
              if (v17 >= *&v12)
              {
                v17 %= *&v12;
              }
            }

            else
            {
              v17 &= *&v12 - 1;
            }

            if (v17 != v14)
            {
              break;
            }
          }
        }
      }
    }

    operator new();
  }

  if (v7)
  {
    (*(*v7 + 24))(v7);
  }

LABEL_23:
  v18 = v3[11];
  v19 = *v5;
  v20 = v5[1];
  v21 = vcnt_s8(v18);
  v21.i16[0] = vaddlv_u8(v21);
  if (v21.u32[0] > 1uLL)
  {
    if (v20 >= *&v18)
    {
      v20 %= *&v18;
    }
  }

  else
  {
    v20 &= *&v18 - 1;
  }

  v22 = v3[10];
  v23 = *(v22 + 8 * v20);
  do
  {
    v24 = v23;
    v23 = *v23;
  }

  while (v23 != v5);
  if (v24 == v3 + 12)
  {
    goto LABEL_40;
  }

  v25 = v24[1];
  if (v21.u32[0] > 1uLL)
  {
    if (v25 >= *&v18)
    {
      v25 %= *&v18;
    }
  }

  else
  {
    v25 &= *&v18 - 1;
  }

  if (v25 != v20)
  {
LABEL_40:
    if (v19)
    {
      v26 = *(v19 + 8);
      if (v21.u32[0] > 1uLL)
      {
        v27 = *(v19 + 8);
        if (v26 >= *&v18)
        {
          v27 = v26 % *&v18;
        }
      }

      else
      {
        v27 = v26 & (*&v18 - 1);
      }

      if (v27 == v20)
      {
        goto LABEL_44;
      }
    }

    *(v22 + 8 * v20) = 0;
    v19 = *v5;
  }

  if (!v19)
  {
    goto LABEL_50;
  }

  v26 = *(v19 + 8);
LABEL_44:
  if (v21.u32[0] > 1uLL)
  {
    if (v26 >= *&v18)
    {
      v26 %= *&v18;
    }
  }

  else
  {
    v26 &= *&v18 - 1;
  }

  if (v26 != v20)
  {
    *(v3[10] + 8 * v26) = v24;
    v19 = *v5;
  }

LABEL_50:
  *v24 = v19;
  *v5 = 0;
  --v3[13];

  operator delete(v5);
}

uint64_t std::__hash_table<Phase::Controller::Renderer *,std::hash<Phase::Controller::Renderer *>,std::equal_to<Phase::Controller::Renderer *>,std::allocator<Phase::Controller::Renderer *>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::Controller::ClientTapReceiverObject>>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void std::__shared_ptr_pointer<Phase::Controller::Renderer *,Phase::Controller::RendererSystem::CreateRendererInternal(Phase::UniqueObjectId,Phase::Controller::RendererConfig const*)::$_0,std::allocator<Phase::Controller::Renderer>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

uint64_t Phase::LambdaFunction<BOOL Phase::Commandable<128,Phase::LockFreeQueueMPSC>::CallAsync<Phase::Controller::RendererSystem,void,BOOL,BOOL>(int,void (Phase::Controller::RendererSystem::*)(BOOL,BOOL),BOOL,BOOL)::{lambda(void)#1},void>::operator()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  v3 = (*(a1 + 8) + (v2 >> 1));
  if (v2)
  {
    v1 = *(*v3 + v1);
  }

  return v1(v3, *(a1 + 32), *(a1 + 33));
}

uint64_t Phase::LambdaFunction<Phase::Controller::RendererSystem::SubmitRendererStoppedResult(Phase::UniqueObjectId,std::error_code)::$_0,void>::operator()(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = a1[1];
  v3 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>((v2 + 80), a1 + 2);
  if (v3)
  {
    v3 = *(v3 + 4);
    if (!v3)
    {
      v10 = **(Phase::Logger::GetInstance(0) + 512);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12 = 136315394;
        v13 = "CvmRendererSystem.mm";
        v14 = 1024;
        v15 = 367;
        _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d POSTCONDITION: nullptr != pRenderer is false.", &v12, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::invalid_argument::invalid_argument[abi:ne200100](exception, "POSTCONDITION: nullptr != pRenderer is false.");
    }
  }

  else
  {
    v6 = *(v2 + 136);
    if (!v6)
    {
LABEL_10:
      v7 = **(Phase::Logger::GetInstance(v3) + 512);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = a1[2];
        v12 = 136315650;
        v13 = "CvmRendererSystem.mm";
        v14 = 1024;
        v15 = 358;
        v16 = 2048;
        v17 = v8;
        _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (InvalidId) [mRenderersToBeDeleted.end() == deletedRendererIt is true]: Received renderer stop callback for invalid renderer Id %llu", &v12, 0x1Cu);
      }

      v9 = __cxa_allocate_exception(0x10uLL);
      _ZN5Phase10Controller9InvalidIdCI1St11logic_errorEPKc(v9, "Received renderer stop callback for invalid renderer Id %llu");
    }

    while (1)
    {
      v3 = v6[2];
      if (a1[2] == *(v3 + 5) && a1[3] == *(v3 + 6))
      {
        break;
      }

      v6 = *v6;
      if (!v6)
      {
        goto LABEL_10;
      }
    }
  }

  v4 = *(*v3 + 72);

  return v4();
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::function<void ()(Phase::UniqueObjectId,std::shared_ptr<Phase::Controller::Renderer>)>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::function<void ()(Phase::UniqueObjectId,std::shared_ptr<Phase::Controller::Renderer>)>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::function<void ()(Phase::UniqueObjectId,std::shared_ptr<Phase::Controller::Renderer>)>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::function<void ()(Phase::UniqueObjectId,std::shared_ptr<Phase::Controller::Renderer>)>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
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

void sub_23A34F314(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::function<void ()(Phase::UniqueObjectId,std::shared_ptr<Phase::Controller::Renderer>)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::function<void ()(Phase::UniqueObjectId,std::shared_ptr<Phase::Controller::Renderer>)>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::function<void ()(Phase::UniqueObjectId,std::shared_ptr<Phase::Controller::Renderer>)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::function<void ()(Phase::UniqueObjectId,std::shared_ptr<Phase::Controller::Renderer>)>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__function::__value_func<void ()(Phase::UniqueObjectId,std::shared_ptr<Phase::Controller::Renderer>)>::~__value_func[abi:ne200100](v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(Phase::UniqueObjectId,std::shared_ptr<Phase::Controller::Renderer>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__value_func<void ()(Phase::UniqueObjectId,std::shared_ptr<Phase::Controller::Renderer>)>::swap[abi:ne200100](void *result, void *a2)
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

void sub_23A34F664(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void Phase::Controller::SamplerBase::SamplerBase(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v50 = *MEMORY[0x277D85DE8];
  v17 = Phase::Controller::Generator::Generator(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
  *v17 = &unk_284D308F0;
  *(v17 + 600) = 0u;
  *(v17 + 616) = 0u;
  if ((*(*a8 + 16))(a8))
  {
    v18 = Phase::Controller::TaskManager::GetService<Phase::Controller::VoicePoolRegistry>(*(a1 + 24), 3);
    *buf = a15;
    v19 = std::__hash_table<std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>>>::find<unsigned long long>(v18, buf);
    if (v19)
    {
      v20 = *(v19 + 3);
      v44 = v20;
      if (v20)
      {
        if (*(v20 + 144) >= 1)
        {
          v21 = 0;
          v22 = *(v20 + 136);
          do
          {
            v23 = (v22 + 56 * v21);
            v24 = *v23;
            if (*v23)
            {
              v25 = *v24;
              if (*v24)
              {
                v26 = (v24 + 1);
                v24 = 0xCBF29CE484222325;
                do
                {
                  v24 = 0x100000001B3 * (v24 ^ v25);
                  v27 = *v26++;
                  v25 = v27;
                }

                while (v27);
              }

              else
              {
                v24 = 0;
              }
            }

            v43 = v24;
            v28 = std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&,int const&>((a1 + 80), &v43);
            if ((v29 & 1) == 0)
            {
              v36 = **(Phase::Logger::GetInstance(v28) + 400);
              if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
              {
                v37 = *v23;
                *buf = 136315650;
                *&buf[4] = "CvmSamplerBase.mm";
                v46 = 1024;
                v47 = 60;
                v48 = 2080;
                v49 = v37;
                _os_log_impl(&dword_23A302000, v36, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [!pair.second is true]: Failed to insert %s parameter ids", buf, 0x1Cu);
              }

              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Failed to insert %s parameter ids");
            }

            ++v21;
          }

          while (v21 < *(v20 + 144));
        }

        for (i = 0; ; ++i)
        {
          v31 = *(a1 + 48);
          if (*v31 == 0x10000)
          {
            v33 = vcnt_s8(v31[1]);
            v33.i16[0] = vaddlv_u8(v33);
            v32 = v33.i32[0];
          }

          else
          {
            v32 = *v31 ? *v31 : v31[2];
          }

          if (i >= v32)
          {
            break;
          }

          v34 = *(a1 + 168);
          if (v34 >= *(a1 + 176))
          {
            v35 = std::vector<Phase::Controller::CvmVoiceData>::__emplace_back_slow_path<Phase::Controller::VoicePoolEntry const*&>((a1 + 160), &v44);
          }

          else
          {
            Phase::Controller::CvmVoiceData::CvmVoiceData(*(a1 + 168), v44, 0x7FFFFFFFFFFFFFFFLL);
            v35 = v34 + 88;
            *(a1 + 168) = v34 + 88;
          }

          *(a1 + 168) = v35;
        }

        operator new();
      }
    }

    else
    {
      v44 = 0;
    }

    v41 = **(Phase::Logger::GetInstance(v19) + 400);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "CvmSamplerBase.mm";
      v46 = 1024;
      v47 = 49;
      _os_log_impl(&dword_23A302000, v41, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [!pVoicePoolEntry is true]: Couldn't find a Voice Pool!", buf, 0x12u);
    }

    v42 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v42, "Couldn't find a Voice Pool!");
    v42->__vftable = (MEMORY[0x277D828F8] + 16);
  }

  v39 = **(Phase::Logger::GetInstance(0) + 400);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "CvmSamplerBase.mm";
    v46 = 1024;
    v47 = 45;
    _os_log_impl(&dword_23A302000, v39, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [nullptr == pSamplerPrepareParameters is true]: Invalid GeneratorPrepareParameters for GeneratorType::Sampler!", buf, 0x12u);
  }

  v40 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v40, "Invalid GeneratorPrepareParameters for GeneratorType::Sampler!");
}

void sub_23A34FB70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15)
{
  __cxa_free_exception(v16);
  if (v15[623] < 0)
  {
    operator delete(*a15);
  }

  Phase::Controller::Generator::~Generator(v15);
  _Unwind_Resume(a1);
}

void Phase::Controller::SamplerBase::~SamplerBase(void **this)
{
  *this = &unk_284D308F0;
  if (*(this + 623) < 0)
  {
    operator delete(this[75]);
  }

  Phase::Controller::Generator::~Generator(this);
}

void *Phase::Controller::SamplerBase::AssignVoiceBuffers(void *this, const AudioBufferList *a2)
{
  v2 = this[20];
  v3 = this[21];
  if (0x2E8BA2E8BA2E8BA3 * ((v3 - v2) >> 3) > a2->mNumberBuffers)
  {
    goto LABEL_7;
  }

  if (v3 != v2)
  {
    if (((this[9] & 1) == 0) < a2->mNumberBuffers && *(v2 + 64) - *(v2 + 56) == 64)
    {
      operator new();
    }

LABEL_7:
    std::terminate();
  }

  return this;
}

void sub_23A34FDBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<Phase::Controller::CvmVoiceData>::__emplace_back_slow_path<Phase::Controller::VoicePoolEntry const*&>(uint64_t *a1, const Phase::Controller::VoicePoolEntry **a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v6 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Controller::CvmVoiceData>>(a1, v6);
  }

  v13 = 0;
  v14 = 88 * v2;
  v15 = (88 * v2);
  Phase::Controller::CvmVoiceData::CvmVoiceData((88 * v2), *a2, 0x7FFFFFFFFFFFFFFFLL);
  *&v15 = 88 * v2 + 88;
  v7 = a1[1];
  v8 = 88 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Phase::Controller::CvmVoiceData>,Phase::Controller::CvmVoiceData*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<Phase::Controller::CvmVoiceData>::~__split_buffer(&v13);
  return v12;
}

void sub_23A34FF24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<Phase::Controller::CvmVoiceData>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&,int const&>(void *a1, unint64_t *a2)
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

void Phase::Controller::DspSamplerNode::~DspSamplerNode(Phase::Controller::DspSamplerNode *this)
{
  v1 = (this + 16);
  std::vector<Phase::Controller::DspNodeVoice>::__destroy_vector::operator()[abi:ne200100](&v1);
}

{
  v2 = (this + 16);
  std::vector<Phase::Controller::DspNodeVoice>::__destroy_vector::operator()[abi:ne200100](&v2);
  MEMORY[0x23EE864A0](this, 0x10A1C4098D1E1D4);
}

void std::__shared_ptr_emplace<Phase::DspLayer::VoiceBuffer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284D309B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

void Phase::Controller::SpatialModelerCategory::~SpatialModelerCategory(Phase::Controller::SpatialModelerCategory *this)
{
  *this = &unk_284D309E8;
  v2 = *(this + 13);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 11);
  *(this + 11) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(this + 7);
  if (v5)
  {
    do
    {
      v6 = *v5;
      std::unique_ptr<Phase::Controller::SpatialModelerInstance>::~unique_ptr[abi:ne200100](v5 + 3);
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = *(this + 5);
  *(this + 5) = 0;
  if (v7)
  {
    operator delete(v7);
  }

  Phase::Commandable<128,Phase::LockFreeQueueMPSC>::~Commandable(this);
}

{
  Phase::Controller::SpatialModelerCategory::~SpatialModelerCategory(this);

  JUMPOUT(0x23EE864A0);
}

void Phase::Controller::SpatialModelerCategory::Initialize(uint64_t a1, int a2, unint64_t a3, uint64_t a4, Phase::Logger *a5)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a2 == 5 || !a2)
  {
    v10 = **(Phase::Logger::GetInstance(a1) + 256);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      buf = 136315394;
      buf_4 = "CvmSpatialModelerCategory.mm";
      v19 = 1024;
      v20 = 38;
      _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [inSpatialCategory == SpatialCategory::Invalid || inSpatialCategory == SpatialCategory::Count is true]: Invalid Spatial Category!", &buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Invalid Spatial Category!");
  }

  v8 = Phase::Controller::TaskManager::GetService<Phase::Controller::SpatialModelerRegistry>(a5, 5);
  Phase::Controller::SpatialModelerRegistry::GetSpatialModelerIds(v8, a2, &__p);
  v14 = a3;
  if (__p != v16)
  {
    operator new();
  }

  *(a1 + 36) = a2;
  v9 = std::__hash_table<std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::__unordered_map_hasher<PHASETapType,std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::hash<PHASETapType>,std::equal_to<PHASETapType>,true>,std::__unordered_map_equal<PHASETapType,std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::equal_to<PHASETapType>,std::hash<PHASETapType>,true>,std::allocator<std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>>>::find<PHASETapType>((a1 + 40), a3);
  if (!v9)
  {
    v12 = **(Phase::Logger::GetInstance(0) + 256);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      buf = 136315650;
      buf_4 = "CvmSpatialModelerCategory.mm";
      v19 = 1024;
      v20 = 71;
      v21 = 2048;
      v22 = v14;
      _os_log_impl(&dword_23A302000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument): A spatial modeler instance matching %llu cannot be found.", &buf, 0x1Cu);
    }

    v13 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v13, "A spatial modeler instance matching %llu cannot be found.");
    v13->__vftable = (MEMORY[0x277D828F8] + 16);
  }

  *(a1 + 80) = v9[3];
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }
}

void sub_23A350B7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, void *__p, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Controller::TaskManager::GetService<Phase::Controller::SpatialModelerRegistry>(Phase::Logger *a1, int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 6);
  if (a2 >= ((*(a1 + 7) - v3) >> 5))
  {
    v7 = **(Phase::Logger::GetInstance(a1) + 464);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "TaskManager.hpp";
      v15 = 1024;
      v16 = 112;
      _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: pId < mServiceRegistry.size() is false.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::domain_error::domain_error[abi:ne200100](exception, "PRECONDITION: pId < mServiceRegistry.size() is false.");
  }

  v4 = (v3 + 32 * a2);
  if (!*v4)
  {
    v9 = **(Phase::Logger::GetInstance(v4) + 464);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      Phase::GetBacktraceFrame<1ul>(&__p);
      v10 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315906;
      v14 = "TaskManager.hpp";
      v15 = 1024;
      v16 = 121;
      v17 = 1024;
      v18 = a2;
      v19 = 2080;
      v20 = v10;
      _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::domain_error) [not lService.has_value() is true]: No service registered for Id %i, in call \\n%s", buf, 0x22u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v11 = __cxa_allocate_exception(0x10uLL);
    std::domain_error::domain_error[abi:ne200100](v11, "No service registered for Id %i, in call \n%s");
  }

  v5 = std::any_cast[abi:ne200100]<Phase::Controller::SpatialModelerRegistry * const>(v4);
  if (!v5)
  {
    std::__throw_bad_any_cast[abi:ne200100]();
  }

  return *v5;
}

void sub_23A350F74(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

Phase::Controller::SpatialModelerInstance **std::unique_ptr<Phase::Controller::SpatialModelerInstance>::~unique_ptr[abi:ne200100](Phase::Controller::SpatialModelerInstance **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    Phase::Controller::SpatialModelerInstance::~SpatialModelerInstance(v2);
    MEMORY[0x23EE864A0]();
  }

  return a1;
}

void *Phase::Controller::SpatialModelerCategory::SetActiveSpatialModeler(Phase::Controller::SpatialModelerCategory *this, unint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  result = std::__hash_table<std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::__unordered_map_hasher<PHASETapType,std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::hash<PHASETapType>,std::equal_to<PHASETapType>,true>,std::__unordered_map_equal<PHASETapType,std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>,std::equal_to<PHASETapType>,std::hash<PHASETapType>,true>,std::allocator<std::__hash_value_type<PHASETapType,std::unique_ptr<Phase::TapSourceRegistry::TapSourceInfo>>>>::find<PHASETapType>(this + 5, a2);
  if (!result)
  {
    v7 = **(Phase::Logger::GetInstance(0) + 400);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315650;
      v10 = "CvmSpatialModelerCategory.mm";
      v11 = 1024;
      v12 = 111;
      v13 = 2048;
      v14 = a2;
      _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (InvalidId) [iterator == mSpatialModelerInstances.end() is true]: Invalid SpatialModelerId %llu!", &v9, 0x1Cu);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    _ZN5Phase10Controller9InvalidIdCI1St11logic_errorEPKc(exception, "Invalid SpatialModelerId %llu!");
  }

  v5 = result[3];
  if (v5 != *(this + 10))
  {
    v6 = atomic_load((v5 + 5641));
    if ((v6 & 1) == 0)
    {
      Phase::Controller::SpatialModelerInstance::StopUpdate(*(this + 10));
      Phase::Controller::SpatialModelerInstance::Reset(v5);
      Phase::Controller::SpatialModelerInstance::CopyRuntimeSettingsFrom(v5, *(this + 10));
      Phase::Controller::SpatialModelerInstance::UnregisterAllSubmixes(*(this + 10));
      Phase::Controller::SpatialModelerInstance::Reset(*(this + 10));
      *(this + 10) = v5;

      Phase::Controller::SpatialModelerCategory::Update(this, 0.0);
    }

    std::terminate();
  }

  return result;
}

void Phase::Controller::SpatialModelerCategory::Update(Phase::Controller::SpatialModelerInstance **this, double a2)
{
  Instance = Phase::Logger::GetInstance(this);
  v5 = os_signpost_id_generate(**(Instance + 912));
  v6 = Phase::Logger::GetInstance(v5);
  if (*(v6 + 920) == 1)
  {
    v7 = **(Phase::Logger::GetInstance(v6) + 912);
    v8 = v7;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23A302000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v5, "Phase_SpatialModelerSystem_Update", "Spatial Modeler Category Update", buf, 2u);
    }
  }

  v9 = *(this[10] + 809);
  Phase::Controller::RenderGroupMgr::LoadFreshData(*(v9 + 408));
  Phase::Controller::RouterCommandList::ExecuteCommands(v9, v9);
  Phase::Commandable<128,Phase::LockFreeQueueMPSC>::ExecuteCommands(this);
  Phase::Controller::SpatialModelerInstance::Update(this[10], a2);
}

void Phase::Controller::SpatialModelerCategory::RegisterSubmix(Phase::Logger *a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v18[0] = a2;
  v18[1] = a3;
  if (!(a2 | a3))
  {
    v16 = **(Phase::Logger::GetInstance(a1) + 256);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v19 = 136315394;
      *&v19[4] = "CvmSpatialModelerCategory.mm";
      *&v19[12] = 1024;
      *&v19[14] = 156;
      _os_log_impl(&dword_23A302000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (InvalidId) [inSubmixId == kInvalidSubmixId is true]: Invalid SubmixId!", v19, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    _ZN5Phase10Controller9InvalidIdCI1St11logic_errorEPKc(exception, "Invalid SubmixId!");
  }

  v4 = 0;
  v5 = 0xCBF29CE484222325;
  do
  {
    v5 = 0x100000001B3 * (v5 ^ *(v18 + v4++));
  }

  while (v4 != 16);
  v6 = *(a1 + 96);
  if (v6)
  {
    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = v5;
      if (v5 >= *&v6)
      {
        v8 = v5 % *&v6;
      }
    }

    else
    {
      v8 = (*&v6 - 1) & v5;
    }

    v9 = *(*(a1 + 11) + 8 * v8);
    if (v9)
    {
      for (i = *v9; i; i = *i)
      {
        v11 = i[1];
        if (v11 == v5)
        {
          if (i[2] == a2 && i[3] == a3)
          {
            v13 = **(Phase::Logger::GetInstance(a1) + 256);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              *v19 = 136315650;
              *&v19[4] = "CvmSpatialModelerCategory.mm";
              *&v19[12] = 1024;
              *&v19[14] = 163;
              v20 = 2048;
              v21 = a2;
              _os_log_impl(&dword_23A302000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (IdAlreadyExists) [!mRegisteredSubmixes.insert(inSubmixId).second is true]: SubmixId %llu is already registered!", v19, 0x1Cu);
            }

            v15 = __cxa_allocate_exception(0x10uLL);
            _ZN5Phase10Controller15IdAlreadyExistsCI1St11logic_errorEPKc(v15, "SubmixId %llu is already registered!");
          }
        }

        else
        {
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
            break;
          }
        }
      }
    }
  }

  operator new();
}

void sub_23A351B10(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A351878);
  }

  _Unwind_Resume(exception_object);
}

void sub_23A351B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  std::vector<Phase::SpatialModeler::OptionalPropertyDescription>::__destroy_vector::operator()[abi:ne200100](va);
  JUMPOUT(0x23A351B4CLL);
}

void sub_23A351B94(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x23A351B4CLL);
}

void *Phase::Controller::SpatialModelerCategory::UnregisterSubmix(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = 0;
  v37 = *MEMORY[0x277D85DE8];
  *&v26 = a2;
  *(&v26 + 1) = a3;
  v5 = 0xCBF29CE484222325;
  do
  {
    v5 = 0x100000001B3 * (v5 ^ *(&v26 + v4++));
  }

  while (v4 != 16);
  v6 = result[12];
  if (!*&v6)
  {
    return result;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v5;
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v5;
  }

  v9 = result[11];
  v10 = *(v9 + 8 * v8);
  if (!v10)
  {
    return result;
  }

  result = *v10;
  if (!*v10)
  {
    return result;
  }

  v11 = *&v6 - 1;
  while (1)
  {
    v12 = result[1];
    if (v12 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= v11;
    }

    if (v12 != v8)
    {
      return result;
    }

LABEL_23:
    result = *result;
    if (!result)
    {
      return result;
    }
  }

  if (result[2] != a2 || result[3] != a3)
  {
    goto LABEL_23;
  }

  v14 = *result;
  if (v7.u32[0] > 1uLL)
  {
    if (v5 >= *&v6)
    {
      v5 %= *&v6;
    }
  }

  else
  {
    v5 &= v11;
  }

  v15 = *(v9 + 8 * v5);
  do
  {
    v16 = v15;
    v15 = *v15;
  }

  while (v15 != result);
  if (v16 == v3 + 13)
  {
    goto LABEL_42;
  }

  v17 = v16[1];
  if (v7.u32[0] > 1uLL)
  {
    if (v17 >= *&v6)
    {
      v17 %= *&v6;
    }
  }

  else
  {
    v17 &= v11;
  }

  if (v17 == v5)
  {
LABEL_44:
    if (v14)
    {
      v18 = v14[1];
      goto LABEL_46;
    }
  }

  else
  {
LABEL_42:
    if (!v14)
    {
      goto LABEL_43;
    }

    v18 = v14[1];
    if (v7.u32[0] > 1uLL)
    {
      v19 = v14[1];
      if (v18 >= *&v6)
      {
        v19 = v18 % *&v6;
      }
    }

    else
    {
      v19 = v18 & v11;
    }

    if (v19 != v5)
    {
LABEL_43:
      *(v9 + 8 * v5) = 0;
      v14 = *result;
      goto LABEL_44;
    }

LABEL_46:
    if (v7.u32[0] > 1uLL)
    {
      if (v18 >= *&v6)
      {
        v18 %= *&v6;
      }
    }

    else
    {
      v18 &= v11;
    }

    if (v18 != v5)
    {
      *(v3[11] + 8 * v18) = v16;
      v14 = *result;
    }
  }

  *v16 = v14;
  *result = 0;
  --v3[14];
  operator delete(result);
  v20 = *v3[1];
  v28 = 0;
  v27 = 1;
  v21 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v20, 32, &v28, &v27);
  if (!v21)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v24 = **(v20 + 48);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v30 = "CommandQueue.hpp";
      v31 = 1024;
      v32 = 100;
      _os_log_impl(&dword_23A302000, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v27)
  {
    v22 = **(v20 + 48);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v30 = "CommandQueue.hpp";
      v31 = 1024;
      v32 = 89;
      v33 = 2048;
      v34 = v28;
      v35 = 2048;
      v36 = 32;
      _os_log_impl(&dword_23A302000, v22, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  *v21 = &unk_284D30B60;
  *(v21 + 8) = v3;
  *(v21 + 16) = v26;
  result = Phase::LockFreeQueueSPSC::CommitBytes(v20, 32);
  atomic_store(0, (v20 + 40));
  return result;
}

void sub_23A351F94(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A351EB0);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Controller::SpatialModelerCategory::AddInput(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = **(a1 + 8);
  v16 = 0;
  v15 = 1;
  v9 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v8, 40, &v16, &v15);
  if (!v9)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v13 = **(v8 + 48);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "CommandQueue.hpp";
      v19 = 1024;
      v20 = 100;
      _os_log_impl(&dword_23A302000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v15)
  {
    v10 = **(v8 + 48);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v18 = "CommandQueue.hpp";
      v19 = 1024;
      v20 = 89;
      v21 = 2048;
      v22 = v16;
      v23 = 2048;
      v24 = 40;
      _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  *v9 = &unk_284D30B88;
  *(v9 + 8) = a1;
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  *(v9 + 32) = a4;
  result = Phase::LockFreeQueueSPSC::CommitBytes(v8, 40);
  atomic_store(0, (v8 + 40));
  return result;
}

void sub_23A352218(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A35212CLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Controller::SpatialModelerCategory::SetInputSendLevel(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = **(a1 + 8);
  v16 = 0;
  v15 = 1;
  v9 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v8, 40, &v16, &v15);
  if (!v9)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v13 = **(v8 + 48);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "CommandQueue.hpp";
      v19 = 1024;
      v20 = 100;
      _os_log_impl(&dword_23A302000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v15)
  {
    v10 = **(v8 + 48);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v18 = "CommandQueue.hpp";
      v19 = 1024;
      v20 = 89;
      v21 = 2048;
      v22 = v16;
      v23 = 2048;
      v24 = 40;
      _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  *v9 = &unk_284D30BB0;
  *(v9 + 8) = a1;
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  *(v9 + 32) = a4;
  result = Phase::LockFreeQueueSPSC::CommitBytes(v8, 40);
  atomic_store(0, (v8 + 40));
  return result;
}

void sub_23A35249C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A3523B0);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Controller::SpatialModelerCategory::RemoveInput(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = **(a1 + 8);
  v14 = 0;
  v13 = 1;
  v7 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v6, 32, &v14, &v13);
  if (!v7)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v11 = **(v6 + 48);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "CommandQueue.hpp";
      v17 = 1024;
      v18 = 100;
      _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v13)
  {
    v8 = **(v6 + 48);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v16 = "CommandQueue.hpp";
      v17 = 1024;
      v18 = 89;
      v19 = 2048;
      v20 = v14;
      v21 = 2048;
      v22 = 32;
      _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  *v7 = &unk_284D30BD8;
  v7[1] = a1;
  v7[2] = a2;
  v7[3] = a3;
  result = Phase::LockFreeQueueSPSC::CommitBytes(v6, 32);
  atomic_store(0, (v6 + 40));
  return result;
}

void sub_23A352710(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A352628);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Controller::SpatialModelerCategory::SetPlayState(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = **(a1 + 8);
  v16 = 0;
  v15 = 1;
  v9 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v8, 40, &v16, &v15);
  if (!v9)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v13 = **(v8 + 48);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "CommandQueue.hpp";
      v19 = 1024;
      v20 = 100;
      _os_log_impl(&dword_23A302000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v15)
  {
    v10 = **(v8 + 48);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v18 = "CommandQueue.hpp";
      v19 = 1024;
      v20 = 89;
      v21 = 2048;
      v22 = v16;
      v23 = 2048;
      v24 = 40;
      _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  *v9 = &unk_284D30C00;
  *(v9 + 8) = a1;
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  *(v9 + 32) = a4;
  result = Phase::LockFreeQueueSPSC::CommitBytes(v8, 40);
  atomic_store(0, (v8 + 40));
  return result;
}

void sub_23A352994(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A3528A8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Controller::SpatialModelerCategory::SetMinimumSimulationGainInDecibels(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = **(a1 + 8);
  v16 = 0;
  v15 = 1;
  v9 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v8, 40, &v16, &v15);
  if (!v9)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v13 = **(v8 + 48);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "CommandQueue.hpp";
      v19 = 1024;
      v20 = 100;
      _os_log_impl(&dword_23A302000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v15)
  {
    v10 = **(v8 + 48);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v18 = "CommandQueue.hpp";
      v19 = 1024;
      v20 = 89;
      v21 = 2048;
      v22 = v16;
      v23 = 2048;
      v24 = 40;
      _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  *v9 = &unk_284D30C28;
  *(v9 + 8) = a1;
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  *(v9 + 32) = a4;
  result = Phase::LockFreeQueueSPSC::CommitBytes(v8, 40);
  atomic_store(0, (v8 + 40));
  return result;
}

void sub_23A352C18(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A352B2CLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Controller::SpatialModelerCategory::SetSimulationGainInDecibels(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = **(a1 + 8);
  v16 = 0;
  v15 = 1;
  v9 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v8, 40, &v16, &v15);
  if (!v9)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v13 = **(v8 + 48);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "CommandQueue.hpp";
      v19 = 1024;
      v20 = 100;
      _os_log_impl(&dword_23A302000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v15)
  {
    v10 = **(v8 + 48);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v18 = "CommandQueue.hpp";
      v19 = 1024;
      v20 = 89;
      v21 = 2048;
      v22 = v16;
      v23 = 2048;
      v24 = 40;
      _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  *v9 = &unk_284D30C50;
  *(v9 + 8) = a1;
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  *(v9 + 32) = a4;
  result = Phase::LockFreeQueueSPSC::CommitBytes(v8, 40);
  atomic_store(0, (v8 + 40));
  return result;
}

void sub_23A352E9C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A352DB0);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::Controller::SpatialModelerCategory::SetProperty(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5, _OWORD *a6)
{
  v31 = *MEMORY[0x277D85DE8];
  v11 = a6[1];
  *&v22[3] = *a6;
  *&v22[19] = v11;
  *&v22[35] = a6[2];
  v12 = **(a1 + 8);
  v21 = 0;
  v20 = 1;
  v13 = Phase::LockFreeQueueMPSC::GetWriteBuffer(v12, 88, &v21, &v20);
  if (!v13)
  {
    Instance = Phase::Logger::GetInstance(0);
    Phase::Logger::DumpTailspinWithThrottleAsync(Instance, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
    v18 = **(v12 + 48);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "CommandQueue.hpp";
      v25 = 1024;
      v26 = 100;
      _os_log_impl(&dword_23A302000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [true is true]: CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "CommandQueue unable to retrieve write buffer; buffer is full, unable to grow.");
  }

  if (v20)
  {
    v14 = **(v12 + 48);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v24 = "CommandQueue.hpp";
      v25 = 1024;
      v26 = 89;
      v27 = 2048;
      v28 = v21;
      v29 = 2048;
      v30 = 88;
      _os_log_impl(&dword_23A302000, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d Warning: CommandQueue grew buffer to %zu bytes to accommodate extra %zu bytes - this usually means the system is under load or the command queue is too small.", buf, 0x26u);
    }
  }

  v15 = *&v22[16];
  *(v13 + 37) = *v22;
  *v13 = &unk_284D30C78;
  *(v13 + 8) = a1;
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  *(v13 + 32) = a4;
  *(v13 + 36) = a5;
  *(v13 + 53) = v15;
  *(v13 + 69) = *&v22[32];
  *(v13 + 84) = *&v22[47];
  result = Phase::LockFreeQueueSPSC::CommitBytes(v12, 88);
  atomic_store(0, (v12 + 40));
  return result;
}

void sub_23A35315C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v3);
    __cxa_begin_catch(exception_object);
    Phase::Commandable<128,Phase::LockFreeQueueMPSC>::LogOverflow(v2);
    __cxa_end_catch();
    JUMPOUT(0x23A353070);
  }

  _Unwind_Resume(exception_object);
}

void Phase::Controller::SpatialModelerCategory::SetComputeTime(Phase::Controller::SpatialModelerCategory *this, double a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a2 <= 0.0)
  {
    v2 = **(Phase::Logger::GetInstance(this) + 240);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315394;
      v5 = "CvmSpatialModelerCategory.mm";
      v6 = 1024;
      v7 = 267;
      _os_log_impl(&dword_23A302000, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: inComputeTime > 0 is false.", &v4, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "PRECONDITION: inComputeTime > 0 is false.");
  }

  *(this + 16) = a2;
  atomic_store(*&a2, (*(this + 10) + 312));
}

void Phase::Controller::SpatialModelerCategory::GetEntityShapeTemplates(Phase::Controller::SpatialModelerCategory *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  for (i = *(this + 7); i; i = *i)
  {
    v4 = *(i[3] + 5864);
    v6 = 0;
    v7 = 0;
    v5 = 0;
    std::vector<Phase::SpatialModeler::EntityShapeTemplate>::__init_with_size[abi:ne200100]<Phase::SpatialModeler::EntityShapeTemplate*,Phase::SpatialModeler::EntityShapeTemplate*>(&v5, *(v4 + 248), *(v4 + 256), 0x6DB6DB6DB6DB6DB7 * ((*(v4 + 256) - *(v4 + 248)) >> 3));
    std::vector<Phase::SpatialModeler::EntityShapeTemplate>::__insert_with_size[abi:ne200100]<std::__wrap_iter<Phase::SpatialModeler::EntityShapeTemplate const*>,std::__wrap_iter<Phase::SpatialModeler::EntityShapeTemplate const*>>(a2, *(a2 + 8), v5, v6, 0x6DB6DB6DB6DB6DB7 * ((v6 - v5) >> 3));
    v8 = &v5;
    std::vector<Phase::SpatialModeler::EntityShapeTemplate>::__destroy_vector::operator()[abi:ne200100](&v8);
  }
}

uint64_t Phase::Controller::SpatialModelerCategory::Reset(Phase::Controller::SpatialModelerCategory *this)
{
  result = Phase::Commandable<128,Phase::LockFreeQueueMPSC>::ExecuteCommands(this);
  for (i = *(this + 7); i; i = *i)
  {
    result = Phase::Controller::SpatialModelerInstance::Reset(i[3]);
  }

  return result;
}

uint64_t std::vector<Phase::SpatialModeler::OptionalPropertyDescription>::__init_with_size[abi:ne200100]<Phase::SpatialModeler::OptionalPropertyDescription*,Phase::SpatialModeler::OptionalPropertyDescription*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<Phase::SpatialModeler::OptionalPropertyDescription>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void std::vector<Phase::SpatialModeler::OptionalPropertyDescription>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::SpatialModeler::OptionalPropertyDescription>>(a1, a2);
  }

  std::vector<Phase::SpatialModeler::OptionalPropertyDescription>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::SpatialModeler::OptionalPropertyDescription>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<Phase::SpatialModeler::OptionalPropertyDescription>,Phase::SpatialModeler::OptionalPropertyDescription*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<Phase::SpatialModeler::OptionalPropertyDescription>,Phase::SpatialModeler::OptionalPropertyDescription*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<Phase::SpatialModeler::OptionalPropertyDescription>,Phase::SpatialModeler::OptionalPropertyDescription*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 33);
    v1 -= 7;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void std::vector<Phase::SpatialModeler::OptionalPropertyDescription>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<Phase::SpatialModeler::OptionalPropertyDescription>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<Phase::SpatialModeler::OptionalPropertyDescription>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 33);
    v3 -= 7;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

char *std::vector<Phase::SpatialModeler::EntityShapeTemplate>::__insert_with_size[abi:ne200100]<std::__wrap_iter<Phase::SpatialModeler::EntityShapeTemplate const*>,std::__wrap_iter<Phase::SpatialModeler::EntityShapeTemplate const*>>(uint64_t *a1, char *a2, _DWORD *a3, _DWORD *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = a3;
  v10 = a1[1];
  v9 = a1[2];
  if (0x6DB6DB6DB6DB6DB7 * ((v9 - v10) >> 3) < a5)
  {
    v11 = *a1;
    v12 = a5 + 0x6DB6DB6DB6DB6DB7 * ((v10 - *a1) >> 3);
    if (v12 > 0x492492492492492)
    {
      std::vector<Phase::SpatialModeler::OptionalPropertyDescription>::__throw_length_error[abi:ne200100]();
    }

    v13 = &a2[-v11];
    v14 = 0x6DB6DB6DB6DB6DB7 * ((v9 - v11) >> 3);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x249249249249249)
    {
      v15 = 0x492492492492492;
    }

    else
    {
      v15 = v12;
    }

    v39 = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::SpatialModeler::EntityShapeTemplate>>(a1, v15);
    }

    v24 = (8 * (v13 >> 3));
    v36 = 0;
    v37 = v24;
    v38 = v24;
    v25 = 56 * a5;
    v26 = &v24[14 * a5];
    v27 = (a3 + 2);
    do
    {
      *v24 = *(v27 - 8);
      std::unordered_map<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,std::allocator<std::pair<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey const,Phase::OptionsValue>>>::unordered_map((v24 + 2), v27);
      v24[12] = *(v27 + 40);
      v24 += 14;
      v27 += 56;
      v25 -= 56;
    }

    while (v25);
    *&v38 = v26;
    v28 = v37;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Phase::SpatialModeler::EntityShapeTemplate>,Phase::SpatialModeler::EntityShapeTemplate*>(a1, v5, a1[1], v26);
    v29 = *a1;
    v30 = v37;
    *&v38 = v26 + a1[1] - v5;
    a1[1] = v5;
    v31 = v30 + v29 - v5;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Phase::SpatialModeler::EntityShapeTemplate>,Phase::SpatialModeler::EntityShapeTemplate*>(a1, v29, v5, v31);
    v32 = *a1;
    *a1 = v31;
    v33 = a1[2];
    *(a1 + 1) = v38;
    *&v38 = v32;
    *(&v38 + 1) = v33;
    v36 = v32;
    v37 = v32;
    std::__split_buffer<Phase::SpatialModeler::EntityShapeTemplate>::~__split_buffer(&v36);
    return v28;
  }

  v16 = v10 - a2;
  if (0x6DB6DB6DB6DB6DB7 * ((v10 - a2) >> 3) >= a5)
  {
    std::vector<Phase::SpatialModeler::EntityShapeTemplate>::__move_range(a1, a2, a1[1], &a2[56 * a5]);
    v23 = &v7[14 * a5];
    v22 = v7;
    goto LABEL_19;
  }

  v18 = (a3 + v16);
  v19 = a1[1];
  if ((a3 + v16) != a4)
  {
    v20 = 0;
    do
    {
      v21 = &v18[v20];
      *(v10 + v20 * 4) = v18[v20];
      std::unordered_map<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,std::allocator<std::pair<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey const,Phase::OptionsValue>>>::unordered_map(v10 + v20 * 4 + 8, &v18[v20 + 2]);
      *(v10 + v20 * 4 + 48) = v18[v20 + 12];
      v20 += 14;
    }

    while (v21 + 14 != a4);
    v19 = v10 + v20 * 4;
    v7 = a3;
  }

  a1[1] = v19;
  if (v16 >= 1)
  {
    std::vector<Phase::SpatialModeler::EntityShapeTemplate>::__move_range(a1, v5, v10, &v5[56 * a5]);
    v22 = v7;
    v23 = v18;
LABEL_19:
    std::__copy_impl::operator()[abi:ne200100]<Phase::SpatialModeler::EntityShapeTemplate const*,Phase::SpatialModeler::EntityShapeTemplate const*,Phase::SpatialModeler::EntityShapeTemplate*>(v22, v23, v5);
  }

  return v5;
}

void sub_23A353998(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<Phase::SpatialModeler::EntityShapeTemplate>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<Phase::SpatialModeler::EntityShapeTemplate>::__move_range(uint64_t a1, char *a2, unint64_t a3, char *a4)
{
  v7 = *(a1 + 8);
  v8 = &a2[v7 - a4];
  v9 = v7;
  if (v8 < a3)
  {
    v11 = &a2[v7 - a4 + 8];
    v9 = *(a1 + 8);
    do
    {
      *v9 = *(v11 - 8);
      std::__hash_table<std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,Phase::Controller::Parameter<double>>>>::__hash_table((v9 + 8), v11);
      *(v9 + 12) = *(v11 + 40);
      v9 += 56;
      v12 = v11 + 48;
      v11 += 56;
    }

    while (v12 < a3);
  }

  *(a1 + 8) = v9;
  if (v7 != a4)
  {
    v13 = v8;
    v14 = v7;
    do
    {
      v15 = *(v13 - 14);
      v13 -= 56;
      *(v14 - 14) = v15;
      v14 -= 56;
      if (*(v14 + 4))
      {
        std::__hash_table<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,std::__unordered_map_hasher<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,true>,std::__unordered_map_equal<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,true>,std::allocator<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>>>::__deallocate_node((v14 + 8), *(v7 - 4));
        *(v7 - 4) = 0;
        v16 = *(v7 - 5);
        if (v16)
        {
          for (i = 0; i != v16; ++i)
          {
            *(*(v14 + 1) + 8 * i) = 0;
          }
        }

        *(v7 - 3) = 0;
      }

      v18 = *(v8 - 6);
      *(v8 - 6) = 0;
      v19 = *(v14 + 1);
      *(v14 + 1) = v18;
      if (v19)
      {
        operator delete(v19);
      }

      v20 = *(v8 - 4);
      v21 = *(v8 - 5);
      *(v7 - 4) = v20;
      v22 = v7 - 32;
      *(v7 - 5) = v21;
      *(v8 - 5) = 0;
      v23 = *(v8 - 3);
      *(v22 + 1) = v23;
      *(v22 + 4) = *(v8 - 4);
      if (v23)
      {
        v24 = *(v20 + 8);
        v25 = *(v7 - 5);
        if ((v25 & (v25 - 1)) != 0)
        {
          if (v24 >= v25)
          {
            v24 %= v25;
          }
        }

        else
        {
          v24 &= v25 - 1;
        }

        *(*(v14 + 1) + 8 * v24) = v22;
        *(v8 - 4) = 0;
        *(v8 - 3) = 0;
      }

      *(v7 - 2) = *(v8 - 2);
      v7 = v14;
      v8 = v13;
    }

    while (v13 != a2);
  }
}

uint64_t std::unordered_map<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,std::allocator<std::pair<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey const,Phase::OptionsValue>>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,std::__unordered_map_hasher<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,true>,std::__unordered_map_equal<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,true>,std::allocator<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>>>::__emplace_unique_key_args<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::pair<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey const,Phase::OptionsValue> const&>(a1, (i + 2));
  }

  return a1;
}

uint64_t **std::__hash_table<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,std::__unordered_map_hasher<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,true>,std::__unordered_map_equal<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,true>,std::allocator<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>>>::__emplace_unique_key_args<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::pair<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey const,Phase::OptionsValue> const&>(void *a1, uint64_t a2)
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
    std::__hash_table<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,std::__unordered_map_hasher<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,true>,std::__unordered_map_equal<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,true>,std::allocator<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>>>::__construct_node_hash<std::pair<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey const,Phase::OptionsValue> const&>();
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

void sub_23A353E44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey const,Phase::OptionsValue>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v4 + v7 + v13;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v13 + v5 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v6 + v8 + v19;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v31 + v29 + v40 + v30;
        v22 = __ROR8__(v31 + v29 + v40, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * ((v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)) ^ v5);
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

std::string *std::pair<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey const,Phase::OptionsValue>::pair[abi:ne200100](std::string *a1, __int128 *a2)
{
  v4 = Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey::InternalKey(a1, a2);
  std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<BOOL,int,unsigned int,float,double,Phase::Vector<float,2ul>,Phase::Vector<float,3ul>,Phase::Vector<float,4ul>,std::string,std::vector<unsigned int>,std::vector<unsigned long long>,Phase::UnorderedStringMap<Phase::OptionsValue>>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](&v4[1].__r_.__value_.__r.__words[2], a2 + 40);
  return a1;
}

void sub_23A3543EC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey::InternalKey(std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  v5 = *(a2 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 1);
  }

  if (v5)
  {
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      v7 = this->__r_.__value_.__r.__words[0];
      size = this->__r_.__value_.__l.__size_;
    }

    else
    {
      v7 = this;
    }

    this[1].__r_.__value_.__r.__words[0] = v7;
    this[1].__r_.__value_.__l.__size_ = size;
  }

  else
  {
    *&this[1].__r_.__value_.__l.__data_ = *(a2 + 24);
  }

  return this;
}

{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v3;
  }

  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v5 = this->__r_.__value_.__r.__words[0];
    size = this->__r_.__value_.__l.__size_;
  }

  else
  {
    v5 = this;
  }

  this[1].__r_.__value_.__r.__words[0] = v5;
  this[1].__r_.__value_.__l.__size_ = size;
  return this;
}

uint64_t std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<BOOL,int,unsigned int,float,double,Phase::Vector<float,2ul>,Phase::Vector<float,3ul>,Phase::Vector<float,4ul>,std::string,std::vector<unsigned int>,std::vector<unsigned long long>,Phase::UnorderedStringMap<Phase::OptionsValue>>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 40) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<BOOL,int,unsigned int,float,double,Phase::Vector<float,2ul>,Phase::Vector<float,3ul>,Phase::Vector<float,4ul>,std::string,std::vector<unsigned int>,std::vector<unsigned long long>,Phase::UnorderedStringMap<Phase::OptionsValue>>>::__generic_construct[abi:ne200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<BOOL,int,unsigned int,float,double,Phase::Vector<float,2ul>,Phase::Vector<float,3ul>,Phase::Vector<float,4ul>,std::string,std::vector<unsigned int>,std::vector<unsigned long long>,Phase::UnorderedStringMap<Phase::OptionsValue>>,(std::__variant_detail::_Trait)1> const&>(a1, a2);
  return a1;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<BOOL,int,unsigned int,float,double,Phase::Vector<float,2ul>,Phase::Vector<float,3ul>,Phase::Vector<float,4ul>,std::string,std::vector<unsigned int>,std::vector<unsigned long long>,Phase::UnorderedStringMap<Phase::OptionsValue>>>::__generic_construct[abi:ne200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<BOOL,int,unsigned int,float,double,Phase::Vector<float,2ul>,Phase::Vector<float,3ul>,Phase::Vector<float,4ul>,std::string,std::vector<unsigned int>,std::vector<unsigned long long>,Phase::UnorderedStringMap<Phase::OptionsValue>>,(std::__variant_detail::_Trait)1> const&>(uint64_t a1, uint64_t a2)
{
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,int,unsigned int,float,double,Phase::Vector<float,2ul>,Phase::Vector<float,3ul>,Phase::Vector<float,4ul>,std::string,std::vector<unsigned int>,std::vector<unsigned long long>,Phase::UnorderedStringMap<Phase::OptionsValue>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
  v5 = *(a2 + 40);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_284D30A68[v5])(&v6, a2);
    *(a1 + 40) = v5;
  }

  return result;
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,int,unsigned int,float,double,Phase::Vector<float,2ul>,Phase::Vector<float,3ul>,Phase::Vector<float,4ul>,std::string,std::vector<unsigned int>,std::vector<unsigned long long>,Phase::UnorderedStringMap<Phase::OptionsValue>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 40);
  if (v2 != -1)
  {
    result = (off_284D30A08[v2])(&v3, result);
  }

  *(v1 + 40) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm8EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJbijfdN5Phase6VectorIfLm2EEENS9_IfLm3EEENS9_IfLm4EEENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIjNSG_IjEEEENSJ_IyNSG_IyEEEENS8_18UnorderedStringMapINS8_12OptionsValueEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSS_1EJbijfdSA_SB_SC_SI_SL_SN_SQ_EEEEEEDcSU_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm9EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJbijfdN5Phase6VectorIfLm2EEENS9_IfLm3EEENS9_IfLm4EEENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIjNSG_IjEEEENSJ_IyNSG_IyEEEENS8_18UnorderedStringMapINS8_12OptionsValueEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSS_1EJbijfdSA_SB_SC_SI_SL_SN_SQ_EEEEEEDcSU_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm10EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJbijfdN5Phase6VectorIfLm2EEENS9_IfLm3EEENS9_IfLm4EEENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIjNSG_IjEEEENSJ_IyNSG_IyEEEENS8_18UnorderedStringMapINS8_12OptionsValueEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSS_1EJbijfdSA_SB_SC_SI_SL_SN_SQ_EEEEEEDcSU_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

float _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJbijfdN5Phase6VectorIfLm2EEENS9_IfLm3EEENS9_IfLm4EEENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIjNSG_IjEEEENSJ_IyNSG_IyEEEENS8_18UnorderedStringMapINS8_12OptionsValueEEEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISR_LNS0_6_TraitE1EEEEEvRSS_OT_EUlS11_E_JRKNS0_6__baseILSV_1EJbijfdSA_SB_SC_SI_SL_SN_SQ_EEEEEEDcS10_DpT0_(_DWORD **a1, float *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

double _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJbijfdN5Phase6VectorIfLm2EEENS9_IfLm3EEENS9_IfLm4EEENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIjNSG_IjEEEENSJ_IyNSG_IyEEEENS8_18UnorderedStringMapINS8_12OptionsValueEEEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISR_LNS0_6_TraitE1EEEEEvRSS_OT_EUlS11_E_JRKNS0_6__baseILSV_1EJbijfdSA_SB_SC_SI_SL_SN_SQ_EEEEEEDcS10_DpT0_(void **a1, double *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

float _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm5EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJbijfdN5Phase6VectorIfLm2EEENS9_IfLm3EEENS9_IfLm4EEENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIjNSG_IjEEEENSJ_IyNSG_IyEEEENS8_18UnorderedStringMapINS8_12OptionsValueEEEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISR_LNS0_6_TraitE1EEEEEvRSS_OT_EUlS11_E_JRKNS0_6__baseILSV_1EJbijfdSA_SB_SC_SI_SL_SN_SQ_EEEEEEDcS10_DpT0_(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = *a2;
  result = *(a2 + 4);
  *(v2 + 4) = result;
  return result;
}

float _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm6EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJbijfdN5Phase6VectorIfLm2EEENS9_IfLm3EEENS9_IfLm4EEENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIjNSG_IjEEEENSJ_IyNSG_IyEEEENS8_18UnorderedStringMapINS8_12OptionsValueEEEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISR_LNS0_6_TraitE1EEEEEvRSS_OT_EUlS11_E_JRKNS0_6__baseILSV_1EJbijfdSA_SB_SC_SI_SL_SN_SQ_EEEEEEDcS10_DpT0_(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = *a2;
  *(v2 + 4) = *(a2 + 4);
  result = *(a2 + 8);
  *(v2 + 8) = result;
  return result;
}

float _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm7EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJbijfdN5Phase6VectorIfLm2EEENS9_IfLm3EEENS9_IfLm4EEENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIjNSG_IjEEEENSJ_IyNSG_IyEEEENS8_18UnorderedStringMapINS8_12OptionsValueEEEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISR_LNS0_6_TraitE1EEEEEvRSS_OT_EUlS11_E_JRKNS0_6__baseILSV_1EJbijfdSA_SB_SC_SI_SL_SN_SQ_EEEEEEDcS10_DpT0_(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = *a2;
  *(v2 + 4) = *(a2 + 4);
  *(v2 + 8) = *(a2 + 8);
  result = *(a2 + 12);
  *(v2 + 12) = result;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm8EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJbijfdN5Phase6VectorIfLm2EEENS9_IfLm3EEENS9_IfLm4EEENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIjNSG_IjEEEENSJ_IyNSG_IyEEEENS8_18UnorderedStringMapINS8_12OptionsValueEEEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISR_LNS0_6_TraitE1EEEEEvRSS_OT_EUlS11_E_JRKNS0_6__baseILSV_1EJbijfdSA_SB_SC_SI_SL_SN_SQ_EEEEEEDcS10_DpT0_(std::string **a1, __int128 *a2)
{
  v2 = *a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v2, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    v2->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v2->__r_.__value_.__l.__data_ = v3;
  }
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm9EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJbijfdN5Phase6VectorIfLm2EEENS9_IfLm3EEENS9_IfLm4EEENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIjNSG_IjEEEENSJ_IyNSG_IyEEEENS8_18UnorderedStringMapINS8_12OptionsValueEEEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISR_LNS0_6_TraitE1EEEEEvRSS_OT_EUlS11_E_JRKNS0_6__baseILSV_1EJbijfdSA_SB_SC_SI_SL_SN_SQ_EEEEEEDcS10_DpT0_(void **a1, uint64_t *a2)
{
  v2 = *a1;
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v2, *a2, a2[1], (a2[1] - *a2) >> 2);
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm10EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJbijfdN5Phase6VectorIfLm2EEENS9_IfLm3EEENS9_IfLm4EEENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIjNSG_IjEEEENSJ_IyNSG_IyEEEENS8_18UnorderedStringMapINS8_12OptionsValueEEEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISR_LNS0_6_TraitE1EEEEEvRSS_OT_EUlS11_E_JRKNS0_6__baseILSV_1EJbijfdSA_SB_SC_SI_SL_SN_SQ_EEEEEEDcS10_DpT0_(void **a1, uint64_t *a2)
{
  v2 = *a1;
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(v2, *a2, a2[1], (a2[1] - *a2) >> 3);
}

uint64_t std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23A354788(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned long long>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, a2);
  }

  std::vector<Phase::SpatialModeler::OptionalPropertyDescription>::__throw_length_error[abi:ne200100]();
}

void std::__destroy_at[abi:ne200100]<std::pair<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey const,Phase::OptionsValue>,0>(uint64_t a1)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,int,unsigned int,float,double,Phase::Vector<float,2ul>,Phase::Vector<float,3ul>,Phase::Vector<float,4ul>,std::string,std::vector<unsigned int>,std::vector<unsigned long long>,Phase::UnorderedStringMap<Phase::OptionsValue>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1 + 40);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,std::__unordered_map_hasher<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,true>,std::__unordered_map_equal<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,true>,std::allocator<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,std::__unordered_map_hasher<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,true>,std::__unordered_map_equal<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,true>,std::allocator<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,std::__unordered_map_hasher<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,true>,std::__unordered_map_equal<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,true>,std::allocator<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey const,Phase::OptionsValue>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__copy_impl::operator()[abi:ne200100]<Phase::SpatialModeler::EntityShapeTemplate const*,Phase::SpatialModeler::EntityShapeTemplate const*,Phase::SpatialModeler::EntityShapeTemplate*>(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1 + 10;
    do
    {
      v6 = v5 - 10;
      *a3 = *(v5 - 10);
      if (a3 != v5 - 10)
      {
        *(a3 + 40) = *v5;
        std::__hash_table<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,std::__unordered_map_hasher<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,true>,std::__unordered_map_equal<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,true>,std::allocator<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,void *> *>>((a3 + 8), *(v5 - 2), 0);
      }

      *(a3 + 48) = v5[2];
      a3 += 56;
      v5 += 14;
    }

    while (v6 + 14 != a2);
  }
}

void std::__hash_table<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,std::__unordered_map_hasher<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,true>,std::__unordered_map_equal<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,true>,std::allocator<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,void *> *>>(void *a1, void *a2, void *a3)
{
  v4 = a2;
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
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey::operator=(v8 + 2, (v4 + 2));
        std::__variant_detail::__assignment<std::__variant_detail::__traits<BOOL,int,unsigned int,float,double,Phase::Vector<float,2ul>,Phase::Vector<float,3ul>,Phase::Vector<float,4ul>,std::string,std::vector<unsigned int>,std::vector<unsigned long long>,Phase::UnorderedStringMap<Phase::OptionsValue>>>::__generic_assign[abi:ne200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<BOOL,int,unsigned int,float,double,Phase::Vector<float,2ul>,Phase::Vector<float,3ul>,Phase::Vector<float,4ul>,std::string,std::vector<unsigned int>,std::vector<unsigned long long>,Phase::UnorderedStringMap<Phase::OptionsValue>>,(std::__variant_detail::_Trait)1> const&>((v8 + 7), (v4 + 7));
        v10 = *v8;
        std::__hash_table<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,std::__unordered_map_hasher<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,true>,std::__unordered_map_equal<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,true>,std::allocator<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>>>::__node_insert_multi(a1, v8);
        v4 = *v4;
        if (!v10)
        {
          break;
        }

        v8 = v10;
      }

      while (v4 != a3);
    }

    std::__hash_table<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,std::__unordered_map_hasher<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,true>,std::__unordered_map_equal<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,true>,std::allocator<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>>>::__deallocate_node(a1, v10);
  }

  if (v4 != a3)
  {
    std::__hash_table<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,std::__unordered_map_hasher<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,true>,std::__unordered_map_equal<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,true>,std::allocator<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>>>::__emplace_multi<std::pair<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey const,Phase::OptionsValue> const&>();
  }
}

void sub_23A354A0C(void *a1)
{
  __cxa_begin_catch(a1);
  std::__hash_table<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,std::__unordered_map_hasher<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,true>,std::__unordered_map_equal<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,true>,std::allocator<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>>>::__deallocate_node(v1, v2);
  __cxa_rethrow();
}

uint64_t std::__hash_table<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,std::__unordered_map_hasher<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,true>,std::__unordered_map_equal<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,true>,std::allocator<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>>>::__node_insert_multi(void *a1, uint64_t a2)
{
  v4 = std::__string_view_hash<char>::operator()[abi:ne200100](&v7, *(a2 + 40), *(a2 + 48));
  *(a2 + 8) = v4;
  inserted = std::__hash_table<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,std::__unordered_map_hasher<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,true>,std::__unordered_map_equal<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,true>,std::allocator<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>>>::__node_insert_multi_prepare(a1, v4, a2 + 16);
  std::__hash_table<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,std::__unordered_map_hasher<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,true>,std::__unordered_map_equal<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,true>,std::allocator<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>>>::__node_insert_multi_perform(a1, a2, inserted);
  return a2;
}

uint64_t *Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey::operator=(uint64_t *a1, uint64_t a2)
{
  std::string::operator=(a1, a2);
  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if (v4)
  {
    v5 = *(a1 + 23);
    if (v5 < 0)
    {
      v6 = *a1;
      v5 = a1[1];
    }

    else
    {
      v6 = a1;
    }

    a1[3] = v6;
    a1[4] = v5;
  }

  else
  {
    *(a1 + 3) = *(a2 + 24);
  }

  return a1;
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<BOOL,int,unsigned int,float,double,Phase::Vector<float,2ul>,Phase::Vector<float,3ul>,Phase::Vector<float,4ul>,std::string,std::vector<unsigned int>,std::vector<unsigned long long>,Phase::UnorderedStringMap<Phase::OptionsValue>>>::__generic_assign[abi:ne200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<BOOL,int,unsigned int,float,double,Phase::Vector<float,2ul>,Phase::Vector<float,3ul>,Phase::Vector<float,4ul>,std::string,std::vector<unsigned int>,std::vector<unsigned long long>,Phase::UnorderedStringMap<Phase::OptionsValue>>,(std::__variant_detail::_Trait)1> const&>(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (*(result + 40) != -1 || v4 != -1)
  {
    if (v4 == -1)
    {

      return std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,int,unsigned int,float,double,Phase::Vector<float,2ul>,Phase::Vector<float,3ul>,Phase::Vector<float,4ul>,std::string,std::vector<unsigned int>,std::vector<unsigned long long>,Phase::UnorderedStringMap<Phase::OptionsValue>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](result);
    }

    else
    {
      v6[1] = v2;
      v6[2] = v3;
      v6[0] = result;
      return (off_284D30AC8[v4])(v6);
    }
  }

  return result;
}

uint64_t *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJbijfdN5Phase6VectorIfLm2EEENS9_IfLm3EEENS9_IfLm4EEENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIjNSG_IjEEEENSJ_IyNSG_IyEEEENS8_18UnorderedStringMapINS8_12OptionsValueEEEEEEE16__generic_assignB8ne200100IRKNS0_17__copy_assignmentISR_LNS0_6_TraitE1EEEEEvOT_EUlRSZ_OT0_E_JRNS0_6__baseILSV_1EJbijfdSA_SB_SC_SI_SL_SN_SQ_EEERKS17_EEEDcSZ_DpT0_(uint64_t *result, _BYTE *a2, _BYTE *a3)
{
  v4 = *result;
  if (*(*result + 40))
  {
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,int,unsigned int,float,double,Phase::Vector<float,2ul>,Phase::Vector<float,3ul>,Phase::Vector<float,4ul>,std::string,std::vector<unsigned int>,std::vector<unsigned long long>,Phase::UnorderedStringMap<Phase::OptionsValue>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](*result);
    *v4 = *a3;
    *(v4 + 40) = 0;
  }

  else
  {
    *a2 = *a3;
  }

  return result;
}

uint64_t *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1ELm1EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJbijfdN5Phase6VectorIfLm2EEENS9_IfLm3EEENS9_IfLm4EEENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIjNSG_IjEEEENSJ_IyNSG_IyEEEENS8_18UnorderedStringMapINS8_12OptionsValueEEEEEEE16__generic_assignB8ne200100IRKNS0_17__copy_assignmentISR_LNS0_6_TraitE1EEEEEvOT_EUlRSZ_OT0_E_JRNS0_6__baseILSV_1EJbijfdSA_SB_SC_SI_SL_SN_SQ_EEERKS17_EEEDcSZ_DpT0_(uint64_t *result, _DWORD *a2, _DWORD *a3)
{
  v4 = *result;
  if (*(*result + 40) == 1)
  {
    *a2 = *a3;
  }

  else
  {
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,int,unsigned int,float,double,Phase::Vector<float,2ul>,Phase::Vector<float,3ul>,Phase::Vector<float,4ul>,std::string,std::vector<unsigned int>,std::vector<unsigned long long>,Phase::UnorderedStringMap<Phase::OptionsValue>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](*result);
    *v4 = *a3;
    v4[10] = 1;
  }

  return result;
}

uint64_t *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2ELm2EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJbijfdN5Phase6VectorIfLm2EEENS9_IfLm3EEENS9_IfLm4EEENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIjNSG_IjEEEENSJ_IyNSG_IyEEEENS8_18UnorderedStringMapINS8_12OptionsValueEEEEEEE16__generic_assignB8ne200100IRKNS0_17__copy_assignmentISR_LNS0_6_TraitE1EEEEEvOT_EUlRSZ_OT0_E_JRNS0_6__baseILSV_1EJbijfdSA_SB_SC_SI_SL_SN_SQ_EEERKS17_EEEDcSZ_DpT0_(uint64_t *result, _DWORD *a2, _DWORD *a3)
{
  v4 = *result;
  if (*(*result + 40) == 2)
  {
    *a2 = *a3;
  }

  else
  {
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,int,unsigned int,float,double,Phase::Vector<float,2ul>,Phase::Vector<float,3ul>,Phase::Vector<float,4ul>,std::string,std::vector<unsigned int>,std::vector<unsigned long long>,Phase::UnorderedStringMap<Phase::OptionsValue>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](*result);
    *v4 = *a3;
    v4[10] = 2;
  }

  return result;
}

float _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3ELm3EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJbijfdN5Phase6VectorIfLm2EEENS9_IfLm3EEENS9_IfLm4EEENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIjNSG_IjEEEENSJ_IyNSG_IyEEEENS8_18UnorderedStringMapINS8_12OptionsValueEEEEEEE16__generic_assignB8ne200100IRKNS0_17__copy_assignmentISR_LNS0_6_TraitE1EEEEEvOT_EUlRSZ_OT0_E_JRNS0_6__baseILSV_1EJbijfdSA_SB_SC_SI_SL_SN_SQ_EEERKS17_EEEDcSZ_DpT0_(uint64_t *a1, _DWORD *a2, float *a3)
{
  v4 = *a1;
  if (*(*a1 + 40) == 3)
  {
    result = *a3;
    *a2 = *a3;
  }

  else
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,int,unsigned int,float,double,Phase::Vector<float,2ul>,Phase::Vector<float,3ul>,Phase::Vector<float,4ul>,std::string,std::vector<unsigned int>,std::vector<unsigned long long>,Phase::UnorderedStringMap<Phase::OptionsValue>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](*a1);
    result = *a3;
    *v4 = *a3;
    v4[10] = 3;
  }

  return result;
}

double _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4ELm4EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJbijfdN5Phase6VectorIfLm2EEENS9_IfLm3EEENS9_IfLm4EEENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_6vectorIjNSG_IjEEEENSJ_IyNSG_IyEEEENS8_18UnorderedStringMapINS8_12OptionsValueEEEEEEE16__generic_assignB8ne200100IRKNS0_17__copy_assignmentISR_LNS0_6_TraitE1EEEEEvOT_EUlRSZ_OT0_E_JRNS0_6__baseILSV_1EJbijfdSA_SB_SC_SI_SL_SN_SQ_EEERKS17_EEEDcSZ_DpT0_(uint64_t *a1, void *a2, double *a3)
{
  v4 = *a1;
  if (*(*a1 + 40) == 4)
  {
    result = *a3;
    *a2 = *a3;
  }

  else
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,int,unsigned int,float,double,Phase::Vector<float,2ul>,Phase::Vector<float,3ul>,Phase::Vector<float,4ul>,std::string,std::vector<unsigned int>,std::vector<unsigned long long>,Phase::UnorderedStringMap<Phase::OptionsValue>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](*a1);
    result = *a3;
    *v4 = *a3;
    *(v4 + 40) = 4;
  }

  return result;
}

float std::__variant_detail::__assignment<std::__variant_detail::__traits<BOOL,int,unsigned int,float,double,Phase::Vector<float,2ul>,Phase::Vector<float,3ul>,Phase::Vector<float,4ul>,std::string,std::vector<unsigned int>,std::vector<unsigned long long>,Phase::UnorderedStringMap<Phase::OptionsValue>>>::__assign_alt[abi:ne200100]<5ul,Phase::Vector<float,2ul>,Phase::Vector<float,2ul> const&>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 40) == 5)
  {
    *a2 = *a3;
    result = *(a3 + 4);
    *(a2 + 4) = result;
  }

  else
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,int,unsigned int,float,double,Phase::Vector<float,2ul>,Phase::Vector<float,3ul>,Phase::Vector<float,4ul>,std::string,std::vector<unsigned int>,std::vector<unsigned long long>,Phase::UnorderedStringMap<Phase::OptionsValue>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    *a1 = *a3;
    result = *(a3 + 4);
    *(a1 + 4) = result;
    *(a1 + 40) = 5;
  }

  return result;
}

float std::__variant_detail::__assignment<std::__variant_detail::__traits<BOOL,int,unsigned int,float,double,Phase::Vector<float,2ul>,Phase::Vector<float,3ul>,Phase::Vector<float,4ul>,std::string,std::vector<unsigned int>,std::vector<unsigned long long>,Phase::UnorderedStringMap<Phase::OptionsValue>>>::__assign_alt[abi:ne200100]<6ul,Phase::Vector<float,3ul>,Phase::Vector<float,3ul> const&>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 40) == 6)
  {
    *a2 = *a3;
    *(a2 + 4) = *(a3 + 4);
    result = *(a3 + 8);
    *(a2 + 8) = result;
  }

  else
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,int,unsigned int,float,double,Phase::Vector<float,2ul>,Phase::Vector<float,3ul>,Phase::Vector<float,4ul>,std::string,std::vector<unsigned int>,std::vector<unsigned long long>,Phase::UnorderedStringMap<Phase::OptionsValue>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    *a1 = *a3;
    *(a1 + 4) = *(a3 + 4);
    result = *(a3 + 8);
    *(a1 + 8) = result;
    *(a1 + 40) = 6;
  }

  return result;
}

float std::__variant_detail::__assignment<std::__variant_detail::__traits<BOOL,int,unsigned int,float,double,Phase::Vector<float,2ul>,Phase::Vector<float,3ul>,Phase::Vector<float,4ul>,std::string,std::vector<unsigned int>,std::vector<unsigned long long>,Phase::UnorderedStringMap<Phase::OptionsValue>>>::__assign_alt[abi:ne200100]<7ul,Phase::Vector<float,4ul>,Phase::Vector<float,4ul> const&>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 40) == 7)
  {
    *a2 = *a3;
    *(a2 + 4) = *(a3 + 4);
    *(a2 + 8) = *(a3 + 8);
    result = *(a3 + 12);
    *(a2 + 12) = result;
  }

  else
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,int,unsigned int,float,double,Phase::Vector<float,2ul>,Phase::Vector<float,3ul>,Phase::Vector<float,4ul>,std::string,std::vector<unsigned int>,std::vector<unsigned long long>,Phase::UnorderedStringMap<Phase::OptionsValue>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    *a1 = *a3;
    *(a1 + 4) = *(a3 + 4);
    *(a1 + 8) = *(a3 + 8);
    result = *(a3 + 12);
    *(a1 + 12) = result;
    *(a1 + 40) = 7;
  }

  return result;
}

double std::__variant_detail::__assignment<std::__variant_detail::__traits<BOOL,int,unsigned int,float,double,Phase::Vector<float,2ul>,Phase::Vector<float,3ul>,Phase::Vector<float,4ul>,std::string,std::vector<unsigned int>,std::vector<unsigned long long>,Phase::UnorderedStringMap<Phase::OptionsValue>>>::__assign_alt[abi:ne200100]<8ul,std::string,std::string const&>(uint64_t a1, std::string *this, std::string *__str)
{
  if (*(a1 + 40) == 8)
  {

    std::string::operator=(this, __str);
  }

  else
  {
    v6[2] = v3;
    v6[3] = v4;
    v6[0] = a1;
    v6[1] = __str;
    *&result = std::__variant_detail::__assignment<std::__variant_detail::__traits<BOOL,int,unsigned int,float,double,Phase::Vector<float,2ul>,Phase::Vector<float,3ul>,Phase::Vector<float,4ul>,std::string,std::vector<unsigned int>,std::vector<unsigned long long>,Phase::UnorderedStringMap<Phase::OptionsValue>>>::__assign_alt[abi:ne200100]<8ul,std::string,std::string const&>(std::__variant_detail::__alt<8ul,std::string> &,std::string const&)::{unnamed type#1}::operator()(v6).n128_u64[0];
  }

  return result;
}

__n128 std::__variant_detail::__assignment<std::__variant_detail::__traits<BOOL,int,unsigned int,float,double,Phase::Vector<float,2ul>,Phase::Vector<float,3ul>,Phase::Vector<float,4ul>,std::string,std::vector<unsigned int>,std::vector<unsigned long long>,Phase::UnorderedStringMap<Phase::OptionsValue>>>::__assign_alt[abi:ne200100]<8ul,std::string,std::string const&>(std::__variant_detail::__alt<8ul,std::string> &,std::string const&)::{unnamed type#1}::operator()(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  if (*(v1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v5, *v1, *(v1 + 1));
  }

  else
  {
    v3 = *v1;
    v5.__r_.__value_.__r.__words[2] = *(v1 + 2);
    *&v5.__r_.__value_.__l.__data_ = v3;
  }

  std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,int,unsigned int,float,double,Phase::Vector<float,2ul>,Phase::Vector<float,3ul>,Phase::Vector<float,4ul>,std::string,std::vector<unsigned int>,std::vector<unsigned long long>,Phase::UnorderedStringMap<Phase::OptionsValue>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v2);
  result = *&v5.__r_.__value_.__l.__data_;
  v2[1].n128_u64[0] = v5.__r_.__value_.__r.__words[2];
  *v2 = result;
  v2[2].n128_u32[2] = 8;
  return result;
}

double std::__variant_detail::__assignment<std::__variant_detail::__traits<BOOL,int,unsigned int,float,double,Phase::Vector<float,2ul>,Phase::Vector<float,3ul>,Phase::Vector<float,4ul>,std::string,std::vector<unsigned int>,std::vector<unsigned long long>,Phase::UnorderedStringMap<Phase::OptionsValue>>>::__assign_alt[abi:ne200100]<9ul,std::vector<unsigned int>,std::vector<unsigned int> const&>(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a1 + 40) == 9)
  {
    if (a2 != a3)
    {
      v6 = *a3;
      v5 = *(a3 + 8);

      std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a2, v6, v5, (v5 - v6) >> 2);
    }
  }

  else
  {
    v8[2] = v3;
    v8[3] = v4;
    v8[0] = a1;
    v8[1] = a3;
    return std::__variant_detail::__assignment<std::__variant_detail::__traits<BOOL,int,unsigned int,float,double,Phase::Vector<float,2ul>,Phase::Vector<float,3ul>,Phase::Vector<float,4ul>,std::string,std::vector<unsigned int>,std::vector<unsigned long long>,Phase::UnorderedStringMap<Phase::OptionsValue>>>::__assign_alt[abi:ne200100]<9ul,std::vector<unsigned int>,std::vector<unsigned int> const&>(std::__variant_detail::__alt<9ul,std::vector<unsigned int>> &,std::vector<unsigned int> const&)::{unnamed type#1}::operator()(v8);
  }

  return result;
}

double std::__variant_detail::__assignment<std::__variant_detail::__traits<BOOL,int,unsigned int,float,double,Phase::Vector<float,2ul>,Phase::Vector<float,3ul>,Phase::Vector<float,4ul>,std::string,std::vector<unsigned int>,std::vector<unsigned long long>,Phase::UnorderedStringMap<Phase::OptionsValue>>>::__assign_alt[abi:ne200100]<9ul,std::vector<unsigned int>,std::vector<unsigned int> const&>(std::__variant_detail::__alt<9ul,std::vector<unsigned int>> &,std::vector<unsigned int> const&)::{unnamed type#1}::operator()(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v5 = 0;
  v4 = 0uLL;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v4, *v1, v1[1], (v1[1] - *v1) >> 2);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,int,unsigned int,float,double,Phase::Vector<float,2ul>,Phase::Vector<float,3ul>,Phase::Vector<float,4ul>,std::string,std::vector<unsigned int>,std::vector<unsigned long long>,Phase::UnorderedStringMap<Phase::OptionsValue>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v2);
  result = *&v4;
  *v2 = v4;
  *(v2 + 16) = v5;
  *(v2 + 40) = 9;
  return result;
}

void *std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(void *result, char *__src, char *a3, unint64_t a4)
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

      std::vector<unsigned int>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
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

double std::__variant_detail::__assignment<std::__variant_detail::__traits<BOOL,int,unsigned int,float,double,Phase::Vector<float,2ul>,Phase::Vector<float,3ul>,Phase::Vector<float,4ul>,std::string,std::vector<unsigned int>,std::vector<unsigned long long>,Phase::UnorderedStringMap<Phase::OptionsValue>>>::__assign_alt[abi:ne200100]<10ul,std::vector<unsigned long long>,std::vector<unsigned long long> const&>(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a1 + 40) == 10)
  {
    if (a2 != a3)
    {
      v6 = *a3;
      v5 = *(a3 + 8);

      std::vector<unsigned long long>::__assign_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(a2, v6, v5, (v5 - v6) >> 3);
    }
  }

  else
  {
    v8[2] = v3;
    v8[3] = v4;
    v8[0] = a1;
    v8[1] = a3;
    return std::__variant_detail::__assignment<std::__variant_detail::__traits<BOOL,int,unsigned int,float,double,Phase::Vector<float,2ul>,Phase::Vector<float,3ul>,Phase::Vector<float,4ul>,std::string,std::vector<unsigned int>,std::vector<unsigned long long>,Phase::UnorderedStringMap<Phase::OptionsValue>>>::__assign_alt[abi:ne200100]<10ul,std::vector<unsigned long long>,std::vector<unsigned long long> const&>(std::__variant_detail::__alt<10ul,std::vector<unsigned long long>> &,std::vector<unsigned long long> const&)::{unnamed type#1}::operator()(v8);
  }

  return result;
}

double std::__variant_detail::__assignment<std::__variant_detail::__traits<BOOL,int,unsigned int,float,double,Phase::Vector<float,2ul>,Phase::Vector<float,3ul>,Phase::Vector<float,4ul>,std::string,std::vector<unsigned int>,std::vector<unsigned long long>,Phase::UnorderedStringMap<Phase::OptionsValue>>>::__assign_alt[abi:ne200100]<10ul,std::vector<unsigned long long>,std::vector<unsigned long long> const&>(std::__variant_detail::__alt<10ul,std::vector<unsigned long long>> &,std::vector<unsigned long long> const&)::{unnamed type#1}::operator()(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v5 = 0;
  v4 = 0uLL;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v4, *v1, v1[1], (v1[1] - *v1) >> 3);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,int,unsigned int,float,double,Phase::Vector<float,2ul>,Phase::Vector<float,3ul>,Phase::Vector<float,4ul>,std::string,std::vector<unsigned int>,std::vector<unsigned long long>,Phase::UnorderedStringMap<Phase::OptionsValue>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v2);
  result = *&v4;
  *v2 = v4;
  *(v2 + 16) = v5;
  *(v2 + 40) = 10;
  return result;
}

void *std::vector<unsigned long long>::__assign_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(void *result, char *__src, char *a3, unint64_t a4)
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

      std::vector<unsigned long long>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<Phase::SpatialModeler::OptionalPropertyDescription>::__throw_length_error[abi:ne200100]();
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

void std::__variant_detail::__assignment<std::__variant_detail::__traits<BOOL,int,unsigned int,float,double,Phase::Vector<float,2ul>,Phase::Vector<float,3ul>,Phase::Vector<float,4ul>,std::string,std::vector<unsigned int>,std::vector<unsigned long long>,Phase::UnorderedStringMap<Phase::OptionsValue>>>::__assign_alt[abi:ne200100]<11ul,Phase::UnorderedStringMap<Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue> const&>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 40) == 11)
  {
    if (a2 != a3)
    {
      *(a2 + 32) = *(a3 + 32);
      v6 = *(a3 + 16);

      std::__hash_table<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,std::__unordered_map_hasher<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,true>,std::__unordered_map_equal<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,true>,std::allocator<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,void *> *>>(a2, v6, 0);
    }
  }

  else
  {
    v7[2] = v3;
    v7[3] = v4;
    v7[0] = a1;
    v7[1] = a3;
    std::__variant_detail::__assignment<std::__variant_detail::__traits<BOOL,int,unsigned int,float,double,Phase::Vector<float,2ul>,Phase::Vector<float,3ul>,Phase::Vector<float,4ul>,std::string,std::vector<unsigned int>,std::vector<unsigned long long>,Phase::UnorderedStringMap<Phase::OptionsValue>>>::__assign_alt[abi:ne200100]<11ul,Phase::UnorderedStringMap<Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue> const&>(std::__variant_detail::__alt<11ul,Phase::UnorderedStringMap<Phase::OptionsValue>> &,Phase::UnorderedStringMap<Phase::OptionsValue> const&)::{unnamed type#1}::operator()(v7);
  }
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<BOOL,int,unsigned int,float,double,Phase::Vector<float,2ul>,Phase::Vector<float,3ul>,Phase::Vector<float,4ul>,std::string,std::vector<unsigned int>,std::vector<unsigned long long>,Phase::UnorderedStringMap<Phase::OptionsValue>>>::__assign_alt[abi:ne200100]<11ul,Phase::UnorderedStringMap<Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue> const&>(std::__variant_detail::__alt<11ul,Phase::UnorderedStringMap<Phase::OptionsValue>> &,Phase::UnorderedStringMap<Phase::OptionsValue> const&)::{unnamed type#1}::operator()(uint64_t *a1)
{
  v1 = *a1;
  std::unordered_map<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,std::allocator<std::pair<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey const,Phase::OptionsValue>>>::unordered_map(v3, a1[1]);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,int,unsigned int,float,double,Phase::Vector<float,2ul>,Phase::Vector<float,3ul>,Phase::Vector<float,4ul>,std::string,std::vector<unsigned int>,std::vector<unsigned long long>,Phase::UnorderedStringMap<Phase::OptionsValue>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v1);
  std::__hash_table<std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,Phase::Controller::Parameter<double>>>>::__hash_table(v1, v3);
  *(v1 + 40) = 11;
  return std::__hash_table<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,std::__unordered_map_hasher<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,true>,std::__unordered_map_equal<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,true>,std::allocator<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>>>::~__hash_table(v3);
}

uint64_t *std::__hash_table<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,std::__unordered_map_hasher<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,true>,std::__unordered_map_equal<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,true>,std::allocator<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, uint64_t a3)
{
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
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    std::__hash_table<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,std::__unordered_map_hasher<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,true>,std::__unordered_map_equal<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,true>,std::allocator<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>>>::__rehash<false>(a1, v12);
    v6 = *(a1 + 8);
  }

  v13 = vcnt_s8(v6);
  v13.i16[0] = vaddlv_u8(v13);
  v14 = v13.u32[0];
  if (v13.u32[0] > 1uLL)
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
  v19 = *(a3 + 24);
  v18 = *(a3 + 32);
  do
  {
    v20 = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v21 = v16[1];
    if (v14 > 1)
    {
      v22 = v16[1];
      if (v21 >= v6)
      {
        v22 = v21 % v6;
      }
    }

    else
    {
      v22 = v21 & (v6 - 1);
    }

    if (v22 != v15)
    {
      break;
    }

    v23 = v21 == a2 && v16[6] == v18 && memcmp(v16[5], v19, v18) == 0;
    v24 = v23 != (v17 & 1);
    v25 = v17 & v24;
    v17 |= v24;
  }

  while (v25 != 1);
  return v20;
}

void *std::__hash_table<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,std::__unordered_map_hasher<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,true>,std::__unordered_map_equal<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,true>,std::allocator<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>>>::__node_insert_multi_perform(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

void std::__hash_table<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,std::__unordered_map_hasher<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,true>,std::__unordered_map_equal<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,true>,std::allocator<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>>>::__rehash<false>(uint64_t a1, size_t __n)
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

      std::__hash_table<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,std::__unordered_map_hasher<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,true>,std::__unordered_map_equal<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,true>,std::allocator<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>>>::__do_rehash<false>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,std::__unordered_map_hasher<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,true>,std::__unordered_map_equal<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,true>,std::allocator<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>>>::__do_rehash<false>(uint64_t a1, unint64_t a2)
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

void sub_23A355974(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::SpatialModeler::EntityShapeTemplate>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Phase::SpatialModeler::EntityShapeTemplate>,Phase::SpatialModeler::EntityShapeTemplate*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2 + 8;
    v7 = a4 + 8;
    do
    {
      *(v7 - 8) = *(v6 - 8);
      v8 = std::__hash_table<std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,Phase::Controller::Parameter<double>>>>::__hash_table(v7, v6);
      *(v8 + 40) = *(v6 + 40);
      v9 = v6 + 48;
      v6 += 56;
      v7 = v8 + 56;
    }

    while (v9 != a3);
    do
    {
      std::__hash_table<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,std::__unordered_map_hasher<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,true>,std::__unordered_map_equal<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,true>,std::allocator<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>>>::~__hash_table(v5 + 8);
      v5 += 56;
    }

    while (v5 != a3);
  }
}

uint64_t std::__split_buffer<Phase::SpatialModeler::EntityShapeTemplate>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
    std::__hash_table<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,std::__unordered_map_hasher<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,true>,std::__unordered_map_equal<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,true>,std::allocator<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>>>::~__hash_table(i - 48);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<Phase::SpatialModeler::EntityShapeTemplate>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 56;
        std::__hash_table<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,std::__unordered_map_hasher<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,true>,std::__unordered_map_equal<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,true>,std::allocator<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>>>::~__hash_table((v4 - 48));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t (**std::any_cast[abi:ne200100]<Phase::Controller::SpatialModelerRegistry * const>(uint64_t (**result)(uint64_t, void, void, void, void *)))(uint64_t, void, void, void, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, 0, &std::__any_imp::__unique_typeinfo<Phase::Controller::SpatialModelerRegistry *>::__id);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::SpatialModelerInstance>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::SpatialModelerInstance>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::unique_ptr<Phase::Controller::SpatialModelerInstance>::~unique_ptr[abi:ne200100](v2 + 3);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t Phase::LambdaFunction<Phase::Controller::SpatialModelerCategory::RegisterSubmix(Phase::UniqueObjectId,Phase::Handle64,Phase::Handle64,std::vector<Phase::SpatialModeler::OptionalPropertyDescription> const&)::$_0,void>::~LambdaFunction(uint64_t a1)
{
  *a1 = &unk_284D30B38;
  v3 = (a1 + 48);
  std::vector<Phase::SpatialModeler::OptionalPropertyDescription>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

{
  *a1 = &unk_284D30B38;
  v3 = (a1 + 48);
  std::vector<Phase::SpatialModeler::OptionalPropertyDescription>::__destroy_vector::operator()[abi:ne200100](&v3);
  return MEMORY[0x23EE864A0](a1, 0x10A1C4006195FD6);
}

void Phase::LambdaFunction<Phase::Controller::SpatialModelerCategory::RegisterSubmix(Phase::UniqueObjectId,Phase::Handle64,Phase::Handle64,std::vector<Phase::SpatialModeler::OptionalPropertyDescription> const&)::$_0,void>::operator()(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 8) + 80);
  *v11 = *(a1 + 16);
  v3 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>>>::find<Phase::UniqueObjectId>((v2 + 8), v11);
  if (!v3)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);

    Phase::Controller::SpatialModelerInstance::RegisterSubmix(v2, v4, v5, v6, v7, (a1 + 48));
  }

  v8 = **(Phase::Logger::GetInstance(v3) + 256);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = *(a1 + 16);
    *v11 = 136315650;
    *&v11[4] = "CvmSpatialModelerCategory.mm";
    *&v11[12] = 1024;
    *&v11[14] = 172;
    v12 = 2048;
    v13 = v9;
    _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (IdAlreadyExists) [activeModeler->IsRegistered(inSubmixId) is true]: SubmixId %llu is already registered!", v11, 0x1Cu);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  _ZN5Phase10Controller15IdAlreadyExistsCI1St11logic_errorEPKc(exception, "SubmixId %llu is already registered!");
}

void Phase::LambdaFunction<Phase::Controller::SpatialModelerCategory::UnregisterSubmix(Phase::UniqueObjectId)::$_0,void>::operator()(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 8) + 80);
  *v7 = *(a1 + 16);
  if (std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>>>::find<Phase::UniqueObjectId>((v2 + 8), v7))
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);

    Phase::Controller::SpatialModelerInstance::UnregisterSubmix(v2, v3, v4);
  }

  else
  {
    v5 = **(Phase::Logger::GetInstance(0) + 240);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 16);
      *v7 = 136315650;
      *&v7[4] = "CvmSpatialModelerCategory.mm";
      *&v7[12] = 1024;
      *&v7[14] = 195;
      v8 = 2048;
      v9 = v6;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d SubmixId %llu is not registered!", v7, 0x1Cu);
    }
  }
}

Phase::Logger *Phase::LambdaFunction<Phase::Controller::SpatialModelerCategory::SetMinimumSimulationGainInDecibels(Phase::UniqueObjectId,double)::$_0,void>::operator()(void *a1)
{
  v1 = a1[4];
  result = Phase::Controller::SubmixSlotMap<Phase::Controller::SpatialModelerInstance::SubmixInfo>::MutableAt((*(a1[1] + 80) + 8), a1[2], a1[3]);
  *(result + 7) = v1;
  return result;
}

Phase::Logger *Phase::LambdaFunction<Phase::Controller::SpatialModelerCategory::SetSimulationGainInDecibels(Phase::UniqueObjectId,double)::$_0,void>::operator()(void *a1)
{
  v1 = a1[4];
  result = Phase::Controller::SubmixSlotMap<Phase::Controller::SpatialModelerInstance::SubmixInfo>::MutableAt((*(a1[1] + 80) + 8), a1[2], a1[3]);
  *(result + 8) = v1;
  return result;
}

uint64_t Phase::LambdaFunction<Phase::Controller::SpatialModelerCategory::SetProperty(Phase::UniqueObjectId,unsigned int,Phase::Controller::PropertyType,std::variant<Phase::Controller::Parameter<double>,Phase::Handle64> const&)::$_0,void>::operator()(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 36);
  v4 = (Phase::Controller::SubmixSlotMap<Phase::Controller::SpatialModelerInstance::SubmixInfo>::MutableAt((*(*(a1 + 8) + 80) + 8), *(a1 + 16), *(a1 + 24)) + 72);

  return Phase::Controller::OptionalProperties::SetValue(v4, v2, v3, (a1 + 40));
}

void Phase::Controller::SpatialModelerInstance::SpatialModelerInstance(Phase::Controller::SpatialModelerInstance *this)
{
  *(this + 4) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 10) = 1065353216;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 68) = 0xFFFFFFFFLL;
  std::__shared_mutex_base::__shared_mutex_base((this + 80));
  *(this + 248) = 0u;
  *(this + 18) = 0u;
  *(this + 70) = 0;
  *(this + 264) = 0u;
  *(this + 19) = 0u;
  *(this + 40) = 10;
  *(this + 41) = 0x3FC999999999999ALL;
  *(this + 42) = 0;
  *(this + 344) = 0u;
  *(this + 45) = -1;
  *(this + 46) = 0;
  *(this + 94) = 0;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 54) = 0;
  *(this + 55) = -1;
  *(this + 56) = 0;
  *(this + 114) = 0;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 29) = 0u;
  *(this + 64) = 0;
  *(this + 65) = -1;
  *(this + 66) = 0;
  *(this + 134) = 0;
  *(this + 34) = 0u;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  *(this + 37) = 0u;
  *(this + 152) = 1065353216;
  *(this + 154) = 0;
  v2 = std::system_category();
  v3 = v2;
  v4 = 0;
  *(this + 648) = 0u;
  *(this + 680) = 0u;
  *(this + 166) = 0;
  *(this + 84) = v2;
  *(this + 87) = -1;
  *(this + 44) = 0u;
  *(this + 180) = 0;
  *(this + 728) = 0u;
  *(this + 744) = 0u;
  *(this + 760) = 0u;
  *(this + 772) = 0u;
  *(this + 288) = 2;
  v5 = xmmword_284D30C90;
  v6 = *&off_284D30CA0;
  v7 = off_284D30CB0;
  do
  {
    v8 = this + v4;
    *(v8 + 149) = v7;
    v9 = (this + v4 + 1160);
    *v9 = v5;
    v9[1] = v6;
    *(v8 + 75) = 0uLL;
    *(v8 + 76) = 0uLL;
    *(v8 + 308) = 1065353216;
    *(v8 + 159) = 0;
    *(v8 + 163) = 0;
    *(v8 + 167) = 0;
    *(this + v4 + 1368) = 0uLL;
    *(v8 + 173) = v9;
    *(v8 + 174) = v9;
    v4 += 248;
    *(v8 + 175) = 0;
  }

  while (v4 != 744);
  *(this + 244) = 0;
  *(this + 121) = 0u;
  *(this + 120) = 0u;
  *(this + 119) = 0u;
  *(this + 490) = 1065353216;
  *(this + 126) = 0u;
  *(this + 128) = 0u;
  *(this + 129) = 0u;
  *(this + 123) = 0u;
  *(this + 124) = 0u;
  *(this + 125) = 0u;
  *(this + 253) = v2;
  *(this + 127) = 0u;
  *(this + 256) = -1;
  *(this + 257) = 0;
  *(this + 518) = 0;
  *(this + 258) = 0;
  *(this + 270) = 0;
  *(this + 134) = 0u;
  *(this + 133) = 0u;
  *(this + 132) = 0u;
  *(this + 131) = 0u;
  *(this + 130) = 0u;
  *(this + 542) = 1065353216;
  v15 = v6;
  v16 = v5;
  Phase::Controller::RenderGroupMgr::RenderGroupMgr((this + 2176));
  Phase::Controller::RenderGroupMgr::RenderGroupMgr((this + 2752));
  v10 = 0;
  *(this + 832) = 1;
  do
  {
    v11 = this + v10;
    *(v11 + 421) = v7;
    v12 = (this + v10 + 3336);
    *v12 = v16;
    v12[1] = v15;
    *(v11 + 211) = 0uLL;
    *(v11 + 212) = 0uLL;
    *(v11 + 852) = 1065353216;
    *(v11 + 431) = 0;
    *(v11 + 435) = 0;
    *(v11 + 439) = 0;
    *(this + v10 + 3544) = 0uLL;
    *(v11 + 445) = v12;
    *(v11 + 446) = v12;
    v10 += 248;
    *(v11 + 447) = 0;
  }

  while (v10 != 744);
  *(this + 516) = 0;
  *(this + 257) = 0u;
  *(this + 256) = 0u;
  *(this + 255) = 0u;
  *(this + 1034) = 1065353216;
  *(this + 262) = 0u;
  *(this + 264) = 0u;
  *(this + 265) = 0u;
  *(this + 259) = 0u;
  *(this + 260) = 0u;
  *(this + 261) = 0u;
  *(this + 525) = v3;
  *(this + 263) = 0u;
  *(this + 528) = -1;
  *(this + 529) = 0;
  *(this + 1062) = 0;
  *(this + 530) = 0;
  *(this + 542) = 0;
  *(this + 270) = 0u;
  *(this + 269) = 0u;
  *(this + 268) = 0u;
  *(this + 267) = 0u;
  *(this + 266) = 0u;
  *(this + 1086) = 1065353216;
  Phase::Controller::RenderGroupMgr::RenderGroupMgr((this + 4352));
  Phase::Controller::RenderGroupMgr::RenderGroupMgr((this + 4928));
  v13 = -96;
  do
  {
    v14 = this + v13;
    *(v14 + 2812) = 0;
    *(v14 + 702) = 0;
    *(v14 + 350) = 0uLL;
    v13 += 32;
  }

  while (v13);
  *(this + 1400) = 0;
  *(this + 701) = 0;
  *(this + 351) = 0u;
  *(this + 2816) = 0;
  *(this + 1410) = 0;
  *(this + 706) = 850045863;
  *(this + 5720) = 0u;
  *(this + 5736) = 0u;
  *(this + 5752) = 0u;
  *(this + 5656) = 0u;
  *(this + 5672) = 0u;
  *(this + 5688) = 0u;
  *(this + 5697) = 0u;
  *(this + 721) = 10;
  *(this + 5784) = 0u;
  *(this + 5800) = 0u;
  *(this + 1454) = 1065353216;
  *(this + 364) = 0u;
  *(this + 730) = 0;
  *(this + 366) = 0u;
  operator new();
}

void sub_23A3565EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  std::unique_ptr<Phase::Controller::SpatialSubmixRouter>::reset[abi:ne200100]((v14 + v20), 0);
  Phase::Controller::RenderGroupMgr::~RenderGroupMgr((v14 + 5896));
  std::unique_ptr<Phase::SpatialModeler::Scheduler>::reset[abi:ne200100]((v14 + v19));
  v22 = *(v14 + 5832);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  std::__hash_table<std::__hash_value_type<unsigned long,std::shared_ptr<Phase::Job>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<Phase::Job>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<Phase::Job>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::shared_ptr<Phase::Job>>>>::~__hash_table(v17);
  std::deque<double>::~deque[abi:ne200100](v16);
  std::mutex::~mutex((v14 + 5648));
  a14 = (v14 + 5608);
  std::vector<Phase::SpatialModeler::Graph>::__destroy_vector::operator()[abi:ne200100](&a14);
  v23 = (v14 + 5568);
  v24 = -96;
  do
  {
    a14 = v23;
    std::vector<Phase::SpatialModeler::Graph>::__destroy_vector::operator()[abi:ne200100](&a14);
    v23 -= 4;
    v24 += 32;
  }

  while (v24);
  Phase::Controller::SpatialModelerInstance::GraphData::~GraphData((v14 + 3328));
  Phase::Controller::SpatialModelerInstance::GraphData::~GraphData((v18 + 864));
  a14 = (v14 + 760);
  std::vector<std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>::__destroy_vector::operator()[abi:ne200100](&a14);
  Phase::Controller::SpatialQueryInstance::~SpatialQueryInstance((v18 + 328));
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::SpatialQueryInstance>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::SpatialQueryInstance>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::SpatialQueryInstance>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::SpatialQueryInstance>>>>::~__hash_table(v14 + 576);
  Phase::SpatialModeler::QueryDesc::~QueryDesc((v14 + 496));
  Phase::SpatialModeler::QueryDesc::~QueryDesc((v14 + 416));
  Phase::SpatialModeler::QueryDesc::~QueryDesc(v15);
  v25 = *v18;
  if (*v18)
  {
    *(v14 + 296) = v25;
    operator delete(v25);
  }

  v26 = *(v14 + 272);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  v27 = *(v14 + 256);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  Phase::Controller::SubmixSlotMap<Phase::Controller::SpatialModelerInstance::SubmixInfo>::~SubmixSlotMap(v14 + 8);
  Phase::SortedCommandQueue<Phase::SpatialModeler::PriorityQueue,Phase::SpatialModeler::PriorityQueueCommandType,std::variant<std::monostate,Phase::SpatialModeler::PriorityQueueEntry,Phase::UniqueObjectId,Phase::SpatialModeler::PriorityQueueClusterIndexUpdate,Phase::SpatialModeler::PriorityQueueGlobals>>::CommandBatch::Clear(v14);
  _Unwind_Resume(a1);
}

void Phase::Controller::SpatialModelerInstance::GraphData::~GraphData(Phase::Controller::SpatialModelerInstance::GraphData *this)
{
  Phase::Controller::RenderGroupMgr::~RenderGroupMgr(this + 200);
  Phase::Controller::RenderGroupMgr::~RenderGroupMgr(this + 128);
  std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>>>::~__hash_table(this + 984);
  v2 = *(this + 120);
  if (v2)
  {
    *(this + 121) = v2;
    operator delete(v2);
  }

  Phase::Controller::SpatialQueryInstance::~SpatialQueryInstance(this + 102);
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::SpatialQueryInstance>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::SpatialQueryInstance>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::SpatialQueryInstance>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::SpatialQueryInstance>>>>::~__hash_table(this + 776);
  for (i = 504; i != -240; i -= 248)
  {
    Phase::SpatialModeler::PriorityQueue::~PriorityQueue((this + i));
  }
}

void Phase::Controller::SpatialModelerInstance::~SpatialModelerInstance(Phase::Controller::SpatialModelerInstance *this)
{
  Phase::Controller::SpatialModelerInstance::Destroy(this);
  std::unique_ptr<Phase::Controller::SpatialSubmixRouter>::reset[abi:ne200100](this + 809, 0);
  Phase::Controller::RenderGroupMgr::~RenderGroupMgr(this + 737);
  std::unique_ptr<Phase::SpatialModeler::Scheduler>::reset[abi:ne200100](this + 734);
  v2 = *(this + 729);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__hash_table<std::__hash_value_type<unsigned long,std::shared_ptr<Phase::Job>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<Phase::Job>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<Phase::Job>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::shared_ptr<Phase::Job>>>>::~__hash_table(this + 5784);
  std::deque<double>::~deque[abi:ne200100](this + 5720);
  std::mutex::~mutex((this + 5648));
  v16 = (this + 5608);
  std::vector<Phase::SpatialModeler::Graph>::__destroy_vector::operator()[abi:ne200100](&v16);
  v3 = (this + 5568);
  v4 = -96;
  do
  {
    v16 = v3;
    std::vector<Phase::SpatialModeler::Graph>::__destroy_vector::operator()[abi:ne200100](&v16);
    v3 -= 4;
    v4 += 32;
  }

  while (v4);
  Phase::Controller::RenderGroupMgr::~RenderGroupMgr(this + 616);
  Phase::Controller::RenderGroupMgr::~RenderGroupMgr(this + 544);
  std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>>>::~__hash_table(this + 4312);
  v5 = *(this + 536);
  if (v5)
  {
    *(this + 537) = v5;
    operator delete(v5);
  }

  Phase::Controller::SpatialQueryInstance::~SpatialQueryInstance(this + 518);
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::SpatialQueryInstance>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::SpatialQueryInstance>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::SpatialQueryInstance>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::SpatialQueryInstance>>>>::~__hash_table(this + 4104);
  for (i = 3832; i != 3088; i -= 248)
  {
    Phase::SpatialModeler::PriorityQueue::~PriorityQueue((this + i));
  }

  Phase::Controller::RenderGroupMgr::~RenderGroupMgr(this + 344);
  Phase::Controller::RenderGroupMgr::~RenderGroupMgr(this + 272);
  std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>>>::~__hash_table(this + 2136);
  v7 = *(this + 264);
  if (v7)
  {
    *(this + 265) = v7;
    operator delete(v7);
  }

  Phase::Controller::SpatialQueryInstance::~SpatialQueryInstance(this + 246);
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::SpatialQueryInstance>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::SpatialQueryInstance>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::SpatialQueryInstance>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::SpatialQueryInstance>>>>::~__hash_table(this + 1928);
  for (j = 1656; j != 912; j -= 248)
  {
    Phase::SpatialModeler::PriorityQueue::~PriorityQueue((this + j));
  }

  v16 = (this + 760);
  std::vector<std::pair<std::unique_ptr<Phase::Controller::SpatialQueryInstance>,std::vector<Phase::Controller::SpatialModelerInstance::SubmixHandleInfo>>>::__destroy_vector::operator()[abi:ne200100](&v16);
  Phase::Controller::SpatialQueryInstance::~SpatialQueryInstance(this + 77);
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::SpatialQueryInstance>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::SpatialQueryInstance>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::SpatialQueryInstance>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<Phase::Controller::SpatialQueryInstance>>>>::~__hash_table(this + 576);
  v9 = *(this + 68);
  if (v9)
  {
    *(this + 69) = v9;
    operator delete(v9);
  }

  if (*(this + 519) < 0)
  {
    operator delete(*(this + 62));
  }

  v10 = *(this + 58);
  if (v10)
  {
    *(this + 59) = v10;
    operator delete(v10);
  }

  if (*(this + 439) < 0)
  {
    operator delete(*(this + 52));
  }

  v11 = *(this + 48);
  if (v11)
  {
    *(this + 49) = v11;
    operator delete(v11);
  }

  if (*(this + 359) < 0)
  {
    operator delete(*(this + 42));
  }

  v12 = *(this + 36);
  if (v12)
  {
    *(this + 37) = v12;
    operator delete(v12);
  }

  v13 = *(this + 34);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v14 = *(this + 32);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  std::condition_variable::~condition_variable(this + 4);
  std::condition_variable::~condition_variable(this + 3);
  std::mutex::~mutex((this + 80));
  v15 = *(this + 7);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(this + 8);
  Phase::SortedCommandQueue<Phase::SpatialModeler::PriorityQueue,Phase::SpatialModeler::PriorityQueueCommandType,std::variant<std::monostate,Phase::SpatialModeler::PriorityQueueEntry,Phase::UniqueObjectId,Phase::SpatialModeler::PriorityQueueClusterIndexUpdate,Phase::SpatialModeler::PriorityQueueGlobals>>::CommandBatch::Clear(this);
}

Phase::Controller::SpatialModelerInstance *Phase::Controller::SpatialModelerInstance::Destroy(Phase::Controller::SpatialModelerInstance *this)
{
  if (*(this + 732))
  {
    v1 = this;
    Phase::Controller::SpatialModelerInstance::StopUpdate(this);
    v2 = Phase::Controller::SpatialModelerInstance::Reset(v1);
    Phase::Controller::SpatialModelerInstance::DestroyAllTempGraphData(v2, v1 + 1152);
    Phase::Controller::SpatialModelerInstance::DestroyAllTempGraphData(v3, v1 + 3328);
    v4 = *(v1 + 272);
    *(v1 + 264) = 0;
    *(v1 + 272) = 0;
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    *(v1 + 280) = 0;
    Phase::Controller::SpatialModelerInstance::ClearRegisteredSubmixState(v1);
    Phase::Controller::SubmixSlotMap<Phase::Controller::SpatialModelerInstance::SubmixInfo>::Clear(v1 + 8);
    *(v1 + 296) = *(v1 + 288);
    v5 = **(v1 + 5872);
    if (v5)
    {
      (*(*v5 + 40))(v5);
    }

    std::unique_ptr<Phase::SpatialModeler::Scheduler>::reset[abi:ne200100]((v1 + 5872));
    this = *(v1 + 5856);
    if (this)
    {
      this = (*(*this + 24))(this);
    }

    *(v1 + 5856) = 0;
  }

  return this;
}

void Phase::Controller::SpatialModelerInstance::Initialize(Phase::Controller::SpatialModelerInstance *this, unint64_t a2, uint64_t a3, Phase::Logger *a4, uint64_t a5, uint64_t a6)
{
  v55 = *MEMORY[0x277D85DE8];
  if (*(this + 732))
  {
    Phase::Controller::SpatialModelerInstance::Destroy(this);
  }

  *(this + 735) = a4;
  *(this + 736) = a6;
  *(this + 143) = 0;
  *(this + 792) = 0u;
  *(this + 808) = 0u;
  *(this + 824) = 0u;
  *(this + 840) = 0u;
  *(this + 856) = 0u;
  *(this + 872) = 0u;
  *(this + 888) = 0u;
  *(this + 904) = 0u;
  *(this + 920) = 0u;
  *(this + 936) = 0u;
  *(this + 952) = 0u;
  *(this + 968) = 0u;
  *(this + 984) = 0u;
  *(this + 1000) = 0u;
  *(this + 1016) = 0u;
  *(this + 1032) = 0u;
  *(this + 1048) = 0u;
  *(this + 1064) = 0u;
  *(this + 1080) = 0u;
  *(this + 1096) = 0u;
  *(this + 1112) = 0u;
  *(this + 1128) = 0u;
  v11 = Phase::Controller::TaskManager::GetService<Phase::Controller::SpatialModelerRegistry>(a4, 5);
  v12 = Phase::Controller::TaskManager::GetService<Phase::Geometry::System>(a4, 2);
  *buf = a2;
  v13 = std::__hash_table<std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,Phase::Controller::Parameter<double>>>>::find<unsigned long long>(v11, buf);
  v44 = v11;
  v45 = a2;
  v43 = a3;
  v14 = v13 + 1;
  if (!v13)
  {
    v14 = 0;
  }

  *(this + 733) = v14;
  if (!v13)
  {
    v37 = **(Phase::Logger::GetInstance(0) + 240);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "CvmSpatialModelerInstance.mm";
      v51 = 1024;
      v52 = 436;
      _os_log_impl(&dword_23A302000, v37, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [!mpSpatialModelerInfo is true]: Couldn't find Spatial Modeler Info!", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "Couldn't find Spatial Modeler Info!");
  }

  v42 = v12;
  data = v13[4].__r_.__value_.__l.__data_;
  if (v13[4].__r_.__value_.__l.__size_ == data)
  {
LABEL_40:
    SpatialModelerInstance = Phase::Controller::SpatialModelerRegistry::CreateSpatialModelerInstance(v44, v45);
    *(this + 732) = SpatialModelerInstance;
    if (SpatialModelerInstance)
    {
      SpatialModelerInstance[3] = Phase::Controller::SpatialModelerSystem::GetSceneQueryFilterForSpatialCategory(*(*(this + 733) + 40));
      Phase::SpatialModeler::Scheduler::Init(*(this + 734), v42, *(this + 732), v43);
      operator new();
    }

    v39 = **(Phase::Logger::GetInstance(0) + 240);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      Phase::Controller::SpatialModelerInfo::GetDescription(*(this + 733), v48);
      v40 = v49 >= 0 ? v48 : v48[0];
      *buf = 136315650;
      *&buf[4] = "CvmSpatialModelerInstance.mm";
      v51 = 1024;
      v52 = 464;
      v53 = 2080;
      v54 = v40;
      _os_log_impl(&dword_23A302000, v39, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [!mpSpatialModeler is true]: Couldn't find a Spatial Modeler: %s!", buf, 0x1Cu);
      if (v49 < 0)
      {
        operator delete(v48[0]);
      }
    }

    v41 = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](v41, "Couldn't find a Spatial Modeler: %s!");
  }

  v16 = 0;
  v17 = 0;
  v47 = (this + 496);
  v46 = (this + 416);
  while (1)
  {
    v18 = &data[v16];
    if (data[v16 + 23] < 0)
    {
      v27 = *(v18 + 1);
      if (v27 != 4)
      {
        if (v27 != 7)
        {
          goto LABEL_42;
        }

        v21 = *v18;
        if (**v18 != 1398099011 || *(*v18 + 3) != 1380275283)
        {
LABEL_15:
          v22 = *v21;
          v23 = *(v21 + 3);
          if (v22 != 1413566547 || v23 != 1279347028)
          {
LABEL_42:
            v35 = **(Phase::Logger::GetInstance(v13) + 240);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "CvmSpatialModelerInstance.mm";
              v51 = 1024;
              v52 = 456;
              _os_log_impl(&dword_23A302000, v35, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Unknown Name", buf, 0x12u);
            }

            v36 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v36, "Unknown Name");
          }

          v13 = std::string::operator=(v47, &data[v16]);
          v25 = &data[v16];
          v26 = *&data[v16 + 40];
          *(this + 520) = *&data[v16 + 24];
          *(this + 134) = v26;
          if (v18 != v47)
          {
            v13 = std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(this + 68, *(v25 + 6), *(v25 + 7), (*(v25 + 7) - *(v25 + 6)) >> 2);
          }

          *(this + 71) = *(v25 + 9);
          if (*(this + 132) != 2)
          {
            std::terminate();
          }

          goto LABEL_39;
        }

LABEL_31:
        std::string::operator=(v46, &data[v16]);
        v29 = *&data[v16 + 40];
        v13 = (this + 464);
        *(this + 440) = *&data[v16 + 24];
        *(this + 114) = v29;
        v30 = this + 488;
        if (v18 == v46)
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }

      v31 = **v18;
    }

    else
    {
      v19 = data[v16 + 23];
      if (v19 != 4)
      {
        if (v19 != 7)
        {
          goto LABEL_42;
        }

        v20 = *v18 == 1398099011 && *(v18 + 3) == 1380275283;
        v21 = &data[v16];
        if (!v20)
        {
          goto LABEL_15;
        }

        goto LABEL_31;
      }

      v31 = *v18;
    }

    if (v31 != 1280070979)
    {
      goto LABEL_42;
    }

    std::string::operator=(this + 14, &data[v16]);
    v32 = *&data[v16 + 40];
    *(this + 360) = *&data[v16 + 24];
    *(this + 94) = v32;
    v30 = this + 408;
    v13 = (this + 384);
    if (v18 == (this + 336))
    {
      goto LABEL_38;
    }

LABEL_37:
    v13 = std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v13, *&data[v16 + 48], *&data[v16 + 56], (*&data[v16 + 56] - *&data[v16 + 48]) >> 2);
LABEL_38:
    *v30 = *&data[v16 + 72];
LABEL_39:
    ++v17;
    v33 = *(this + 733);
    data = *(v33 + 72);
    v16 += 80;
    if (v17 >= 0xCCCCCCCCCCCCCCCDLL * ((*(v33 + 80) - data) >> 4))
    {
      goto LABEL_40;
    }
  }
}

uint64_t Phase::Controller::SpatialModelerInstance::StopUpdate(Phase::Controller::SpatialModelerInstance *this)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = this + 4096;
  if (*(this + 728))
  {
    v3 = atomic_load(this + 5642);
    if (v3)
    {
      v4 = *(this + 736);
      v5 = *(this + 729);
      v13 = *(this + 728);
      v14 = v5;
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v4 + 64))(v4, &v13, 0);
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      atomic_store(0, v2 + 1546);
    }

    v6 = atomic_load(v2 + 1544);
    if (v6)
    {
      v7 = *(this + 736);
      v8 = *(this + 729);
      v11 = *(this + 728);
      v12 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v7 + 96))(v7, &v11, 0.0);
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }
    }
  }

  v2[1616] = 0;
  v9 = *(this + 729);
  *(this + 364) = 0u;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  std::mutex::lock((this + 5648));
  if (*(this + 726))
  {
    atomic_store(1u, v2 + 1547);
    v15[0] = v15;
    v15[1] = v15;
    v15[2] = 0;
    operator new();
  }

  std::mutex::unlock((this + 5648));
  std::mutex::lock((this + 5648));
  std::mutex::unlock((this + 5648));
  Phase::Controller::SpatialModelerInstance::CancelAllQueries(this);
  return atomic_exchange(v2 + 1545, 0) & 1;
}

void sub_23A358024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  std::__list_imp<std::shared_ptr<Phase::Job>>::clear(va);
  _Unwind_Resume(a1);
}

Phase::Controller::SpatialSubmixRouter *Phase::Controller::SpatialModelerInstance::Reset(Phase::Controller::SpatialSubmixRouter **this)
{
  Phase::Controller::SpatialModelerInstance::CancelAllQueries(this);
  Phase::Controller::SpatialModelerInstance::ResetAllGraphData(this, (this + 144));
  Phase::Controller::SpatialModelerInstance::ResetAllGraphData(this, (this + 416));
  Phase::SortedCommandQueue<Phase::SpatialModeler::PriorityQueue,Phase::SpatialModeler::PriorityQueueCommandType,std::variant<std::monostate,Phase::SpatialModeler::PriorityQueueEntry,Phase::UniqueObjectId,Phase::SpatialModeler::PriorityQueueClusterIndexUpdate,Phase::SpatialModeler::PriorityQueueGlobals>>::CommandBatch::Clear(this);
  result = this[809];
  if (result)
  {

    return Phase::Controller::SpatialSubmixRouter::Reset(result);
  }

  return result;
}

void Phase::Controller::SpatialModelerInstance::ClearRegisteredSubmixState(Phase::Controller::SpatialModelerInstance *this)
{
  v1 = 0;
  v2 = 0;
  std::atomic_store[abi:ne200100]<Phase::Controller::SubmixSlotMapState<Phase::Controller::SpatialModelerInstance::SubmixInfo>>(this + 31, &v1);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void sub_23A358138(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void Phase::Controller::SubmixSlotMap<Phase::Controller::SpatialModelerInstance::SubmixInfo>::Clear(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,Phase::Controller::Parameter<double>>>>::clear(a1);
  atomic_store(0, (a1 + 64));
  atomic_store(0xFFFFFFFF, (a1 + 60));
  v2 = *(a1 + 48);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *(a1 + 56) = 0;
}

std::error_category **std::unique_ptr<Phase::SpatialModeler::Scheduler>::reset[abi:ne200100](std::error_category **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    std::error_category::~error_category(v1 + 3);

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

uint64_t Phase::Controller::SpatialModelerInstance::GetDescription(Phase::Controller::SpatialModelerInstance *this, uint64_t a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v12);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, "SpatialModelerInstance impl@", 28);
  MEMORY[0x23EE86100](v4, a2);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v12, " (", 2);
  Phase::Controller::SpatialModelerInfo::GetDescription(*(a2 + 5864), __p);
  if ((v11 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v11 & 0x80u) == 0)
  {
    v7 = v11;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v6, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ")", 1);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str[abi:ne200100](&v13, this);
  v12 = *MEMORY[0x277D82828];
  *(&v12 + *(v12 - 24)) = *(MEMORY[0x277D82828] + 24);
  v13 = MEMORY[0x277D82878] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v14);
  std::ostream::~ostream();
  return MEMORY[0x23EE863B0](&v16);
}

void sub_23A3583C4(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  std::ostringstream::~ostringstream(&a8, MEMORY[0x277D82828]);
  MEMORY[0x23EE863B0](va);
  _Unwind_Resume(a1);
}

void Phase::Controller::SpatialModelerInstance::SetupGraphData(uint64_t a1, uint64_t a2)
{
  v2 = *MEMORY[0x277D85DE8];
  *(a2 + 248) = *(a1 + 360);
  operator new();
}

void sub_23A358790(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(Phase::SpatialModeler::Query &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::vector<std::tuple<Phase::SpatialModeler::GraphDescription &,unsigned long,Phase::SpatialModeler::PriorityQueue &>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<Phase::SpatialModeler::GraphDescription &,unsigned long,Phase::SpatialModeler::PriorityQueue &>>>(a2);
  }

  return result;
}

void Phase::Controller::SpatialModelerInstance::CancelAllQueries(Phase::Controller::SpatialModelerInstance *this)
{
  Phase::SpatialModeler::Scheduler::CancelAllQueries(*(this + 734), this + 5608);
  v2 = this + 5504;
  v3 = 96;
  do
  {
    Phase::SpatialModeler::Scheduler::CancelAllQueries(*(this + 734), v2);
    v2 += 32;
    v3 -= 32;
  }

  while (v3);
}

void Phase::Controller::SpatialModelerInstance::SaveRegisteredSubmixState(Phase::Controller::SpatialModelerInstance *this)
{
  v1 = *(this + 7);
  if (v1)
  {
    atomic_fetch_add_explicit((v1 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_23A358AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

void Phase::Controller::SpatialModelerInstance::CommitFrameUpdateBatch(Phase::Controller::SpatialModelerInstance *this)
{
  v94 = *MEMORY[0x277D85DE8];
  v2 = this + 4096;
  if (*(this + 6480) != 1)
  {
    goto LABEL_24;
  }

  v3 = *(this + 40);
  if (v3 < 1 || (v4 = *(this + 41), v4 <= 0.0))
  {
    *(this + 5712) = 0;
    goto LABEL_11;
  }

  v5 = *this;
  if (*(this + 721) != v3)
  {
    v6 = *(this + 716);
    v7 = *(this + 717);
    *(this + 720) = 0;
    v8 = (v7 - v6) >> 3;
    if (v8 >= 3)
    {
      do
      {
        operator delete(*v6);
        v6 = (*(this + 716) + 8);
        *(this + 716) = v6;
        v8 = (*(this + 717) - v6) >> 3;
      }

      while (v8 > 2);
    }

    if (v8 == 1)
    {
      v9 = 256;
    }

    else
    {
      if (v8 != 2)
      {
LABEL_63:
        *(this + 721) = v3;
        v4 = *(this + 41);
        goto LABEL_64;
      }

      v9 = 512;
    }

    *(this + 719) = v9;
    goto LABEL_63;
  }

LABEL_64:
  if (v5)
  {
    v28.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    v29 = *(this + 717);
    v30 = *(this + 716);
    v31 = v28.__d_.__rep_ / 1000000000.0;
    if (v29 == v30)
    {
      v32 = 0;
    }

    else
    {
      v32 = ((v29 - v30) << 6) - 1;
    }

    if (v31 - *(this + 722) <= 2.0)
    {
      v33 = v31 - *(this + 722);
    }

    else
    {
      v33 = 2.0;
    }

    v34 = *(this + 719);
    v35 = *(this + 720);
    v36 = v35 + v34;
    if (v32 == v35 + v34)
    {
      v37 = v34 >= 0x200;
      v38 = v34 - 512;
      if (!v37)
      {
        v45 = *(this + 718);
        v46 = *(this + 715);
        if (v29 - v30 < (v45 - v46))
        {
          operator new();
        }

        if (v45 == v46)
        {
          v59 = 1;
        }

        else
        {
          v59 = (v45 - v46) >> 2;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<double *>>(v59);
      }

      *(this + 719) = v38;
      *buf = *v30;
      *(this + 716) = v30 + 1;
      std::__split_buffer<double *>::emplace_back<double *&>(this + 715, buf);
      v35 = *(this + 720);
      v30 = *(this + 716);
      v34 = *(this + 719);
      v36 = v34 + v35;
    }

    (*(v30 + ((v36 >> 6) & 0x3FFFFFFFFFFFFF8)))[v36 & 0x1FF] = v33;
    *(this + 720) = v35 + 1;
    if ((v35 + 1) > *(this + 721))
    {
      *(this + 720) = v35;
      *(this + 719) = ++v34;
      if (v34 >= 0x400)
      {
        operator delete(*v30);
        v30 = (*(this + 716) + 8);
        *(this + 716) = v30;
        v34 = *(this + 719) - 512;
        *(this + 719) = v34;
      }
    }

    *(this + 722) = v31;
    if ((v2[1616] & 1) == 0)
    {
      v72 = *(this + 720);
      if (v72 >= 2)
      {
        v73 = &v30[v34 >> 9];
        v74 = *(this + 717);
        if (v74 == v30)
        {
          v75 = 0;
        }

        else
        {
          v75 = (*v73 + 8 * (v34 & 0x1FF));
        }

        v76 = v72 + v34;
        v77 = (v72 + v34) >> 9;
        v78 = v76 & 0x1FF;
        v79 = 0.0;
LABEL_138:
        v80 = v75 - 512;
        while (1)
        {
          v81 = v74 == v30 ? 0 : v30[v77] + 8 * v78;
          if (v75 == v81)
          {
            break;
          }

          v82 = *v75++;
          v79 = v79 + v82;
          if (*v73 == ++v80)
          {
            v83 = v73[1];
            ++v73;
            v75 = v83;
            goto LABEL_138;
          }
        }

        if (v79 / v72 < v4)
        {
          v2[1616] = 1;
        }
      }
    }

    goto LABEL_11;
  }

  if (v2[1616] != 1)
  {
    goto LABEL_11;
  }

  v39.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v40 = *(this + 716);
  v41 = *(this + 719);
  v42 = &v40[v41 >> 9];
  v43 = *(this + 717);
  v44 = v43 == v40 ? 0 : (*v42 + 8 * (*(this + 719) & 0x1FFLL));
  v60 = v39.__d_.__rep_ / 1000000000.0 - *(this + 722);
  v61 = *(this + 720);
  v62 = v61 + v41;
  v63 = (v61 + v41) >> 9;
  v64 = v62 & 0x1FF;
LABEL_114:
  v65 = v44 - 512;
  while (1)
  {
    v66 = v43 - v40;
    v67 = v43 == v40 ? 0 : v40[v63] + 8 * v64;
    if (v44 == v67)
    {
      break;
    }

    v68 = *v44++;
    v60 = v60 + v68;
    if (*v42 == ++v65)
    {
      v69 = v42[1];
      ++v42;
      v44 = v69;
      goto LABEL_114;
    }
  }

  if (v60 / (v61 + 1) <= v4)
  {
    goto LABEL_11;
  }

  v2[1616] = 0;
  *(this + 720) = 0;
  v70 = v66 >> 3;
  if ((v66 >> 3) >= 3)
  {
    do
    {
      operator delete(*v40);
      v40 = (*(this + 716) + 8);
      *(this + 716) = v40;
      v70 = (*(this + 717) - v40) >> 3;
    }

    while (v70 > 2);
  }

  if (v70 == 1)
  {
    v71 = 256;
    goto LABEL_128;
  }

  if (v70 == 2)
  {
    v71 = 512;
LABEL_128:
    *(this + 719) = v71;
  }

LABEL_11:
  v10 = atomic_load(v2 + 1546);
  if ((v10 & 1) != 0 && (v2[1616] & 1) == 0)
  {
    v11 = *(this + 736);
    v12 = *(this + 729);
    v84 = *(this + 728);
    v85 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v11 + 64))(v11, &v84, 0);
    v13 = v85;
    if (v85)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v85);
    }

    atomic_store(0, v2 + 1546);
    v14 = **(Phase::Logger::GetInstance(v13) + 240);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      Phase::Controller::SpatialModelerInstance::GetDescription(&__p, this);
      v15 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315650;
      *&buf[4] = "CvmSpatialModelerInstance.mm";
      *&buf[12] = 1024;
      *&buf[14] = 797;
      *&buf[18] = 2080;
      *&buf[20] = v15;
      _os_log_impl(&dword_23A302000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: stopped overflow graph", buf, 0x1Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

LABEL_24:
  if (*this)
  {
    if (!*(this + 726))
    {
      Phase::Controller::SpatialModelerInstance::StartSustainGraph(this);
    }

    if (v2[2384] != 1)
    {
      Phase::SortedCommandQueue<Phase::SpatialModeler::PriorityQueue,Phase::SpatialModeler::PriorityQueueCommandType,std::variant<std::monostate,Phase::SpatialModeler::PriorityQueueEntry,Phase::UniqueObjectId,Phase::SpatialModeler::PriorityQueueClusterIndexUpdate,Phase::SpatialModeler::PriorityQueueGlobals>>::Commit();
    }

    v16 = atomic_load(v2 + 1544);
    if ((v16 & 1) == 0)
    {
      if (!*(this + 728))
      {
        v17 = *(this + 701);
        v18 = *(this + 702);
        if (v17 == v18)
        {
          v26 = 0;
          v19 = 0;
        }

        else
        {
          v19 = 0;
          v20 = 0;
          do
          {
            v22 = *(v17 + 168);
            v21 = *(v17 + 176);
            if (v22 == v21)
            {
              v26 = v20;
            }

            else
            {
              v23 = *(v17 + 168);
              do
              {
                (*(**(this + 736) + 16))(buf);
                v24 = *buf;
                if (v19)
                {
                  *(*buf + 256) = &unk_284D31370;
                  *(v24 + 264) = v23;
                  *(v24 + 383) = 1;
                  atomic_store(1u, (v24 + 40));
                  v25 = *(this + 736);
                  v91 = v24;
                  v92 = *&buf[8];
                  if (*&buf[8])
                  {
                    atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
                  }

                  v89 = v19;
                  v90 = v20;
                  if (v20)
                  {
                    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  (*(*v25 + 24))(v25, &v91, &v89);
                  if (v90)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v90);
                  }

                  if (v92)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v92);
                  }
                }

                else
                {
                  *(*buf + 256) = &unk_284D31398;
                  *(v24 + 264) = v22;
                  *(v24 + 272) = this;
                  *(v24 + 383) = 1;
                  atomic_store(1u, (v24 + 40));
                }

                v19 = *buf;
                v26 = *&buf[8];
                if (*&buf[8])
                {
                  atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
                }

                if (v20)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v20);
                }

                if (*&buf[8])
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
                }

                v23 += 96;
                v22 += 96;
                v20 = v26;
              }

              while (v23 != v21);
            }

            v17 += 192;
            v20 = v26;
          }

          while (v17 != v18);
        }

        v47 = *(this + 736);
        v48 = *(this + 733);
        std::string::basic_string[abi:ne200100]<0>(&__p, "-Attack-Graph");
        v49 = *(v48 + 23);
        if (v49 >= 0)
        {
          v50 = v48;
        }

        else
        {
          v50 = *v48;
        }

        if (v49 >= 0)
        {
          v51 = *(v48 + 23);
        }

        else
        {
          v51 = *(v48 + 8);
        }

        v52 = std::string::insert(&__p, 0, v50, v51);
        v53 = *&v52->__r_.__value_.__l.__data_;
        *&buf[16] = *(&v52->__r_.__value_.__l + 2);
        *buf = v53;
        v52->__r_.__value_.__l.__size_ = 0;
        v52->__r_.__value_.__r.__words[2] = 0;
        v52->__r_.__value_.__r.__words[0] = 0;
        (*(*v47 + 16))(&v87, v47, buf);
        if (buf[23] < 0)
        {
          operator delete(*buf);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v54 = v87;
        *(v87 + 256) = &unk_284D313C0;
        *(v54 + 264) = this;
        *(v54 + 383) = 1;
        atomic_store(1u, (v54 + 40));
        v55 = *(this + 736);
        *buf = v54;
        *&buf[8] = v88;
        if (v88)
        {
          atomic_fetch_add_explicit(&v88->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        __p.__r_.__value_.__r.__words[0] = v19;
        __p.__r_.__value_.__l.__size_ = v26;
        if (v26)
        {
          atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v55 + 24))(v55, buf, &__p);
        if (__p.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
        }

        if (*&buf[8])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
        }

        v56 = v87;
        v57 = v88;
        if (v88)
        {
          atomic_fetch_add_explicit(&v88->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        *(this + 728) = v56;
        v58 = *(this + 729);
        *(this + 729) = v57;
        if (v58)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v58);
          v56 = *(this + 728);
        }

        *(v56 + 512) = 0;
        *(v56 + 520) = -1;
        *(v56 + 384) = &unk_284D313E8;
        *(v56 + 392) = this;
        *(v56 + 511) = 1;
        atomic_store(1u, (v56 + 40));
        if (v88)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v88);
        }

        if (v26)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v26);
        }
      }

      Phase::SortedCommandQueue<Phase::SpatialModeler::PriorityQueue,Phase::SpatialModeler::PriorityQueueCommandType,std::variant<std::monostate,Phase::SpatialModeler::PriorityQueueEntry,Phase::UniqueObjectId,Phase::SpatialModeler::PriorityQueueClusterIndexUpdate,Phase::SpatialModeler::PriorityQueueGlobals>>::Commit();
    }
  }

  else
  {
    v27 = atomic_load(v2 + 1547);
    if ((v27 & 1) == 0 && *(this + 153) && !*(this + 726))
    {
      Phase::Controller::SpatialModelerInstance::StartSustainGraph(this);
    }
  }
}

void sub_23A359958(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  operator delete(v38);
  if (v37)
  {
    operator delete(v37);
  }

  _Unwind_Resume(a1);
}

void *Phase::Controller::SpatialModelerInstance::ResetAllGraphData(atomic_ullong *this, Phase::Controller::SpatialModelerInstance::GraphData *a2)
{
  Phase::Controller::SpatialModelerInstance::DestroyAllTempGraphData(this, a2);
  v4 = (a2 + 224);
  v5 = 744;
  do
  {
    Phase::SortedCommandQueue<Phase::SpatialModeler::PriorityQueue,Phase::SpatialModeler::PriorityQueueCommandType,std::variant<std::monostate,Phase::SpatialModeler::PriorityQueueEntry,Phase::UniqueObjectId,Phase::SpatialModeler::PriorityQueueClusterIndexUpdate,Phase::SpatialModeler::PriorityQueueGlobals>>::ClearCommands(v4);
    std::__hash_table<std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,Phase::Controller::Parameter<double>>>>::clear(v4 - 22);
    v4 += 31;
    v5 -= 248;
  }

  while (v5);
  atomic_store(0, a2 + 94);
  atomic_store(0, a2 + 95);
  atomic_store(0, a2 + 96);
  Phase::Controller::RenderGroupMgr::Reset(this + 737);
  Phase::Controller::RenderGroupMgr::Reset(this + 544);
  Phase::Controller::RenderGroupMgr::Reset(this + 272);
  Phase::Controller::RenderGroupMgr::Reset(this + 616);

  return Phase::Controller::RenderGroupMgr::Reset(this + 344);
}

void *Phase::SortedCommandQueue<Phase::SpatialModeler::PriorityQueue,Phase::SpatialModeler::PriorityQueueCommandType,std::variant<std::monostate,Phase::SpatialModeler::PriorityQueueEntry,Phase::UniqueObjectId,Phase::SpatialModeler::PriorityQueueClusterIndexUpdate,Phase::SpatialModeler::PriorityQueueGlobals>>::CommandBatch::Clear(void *result)
{
  v1 = result;
  v2 = *result;
  if (*result)
  {
    do
    {
      v3 = *(v2 + 88);
      Phase::SortedCommandQueue<Phase::SpatialModeler::PriorityQueue,Phase::SpatialModeler::PriorityQueueCommandType,std::variant<std::monostate,Phase::SpatialModeler::PriorityQueueEntry,Phase::UniqueObjectId,Phase::SpatialModeler::PriorityQueueClusterIndexUpdate,Phase::SpatialModeler::PriorityQueueGlobals>>::CommandBatch::Clear(v2 + 80);
      result = MEMORY[0x23EE864A0](v2, 0x1020C40994B1BD2);
      v2 = v3;
    }

    while (v3);
  }

  *v1 = 0;
  return result;
}

void Phase::Controller::SpatialModelerInstance::GetLatestSubmixState(Phase::Controller::SpatialModelerInstance *this, uint64_t a2)
{
  sp_mut = std::__get_sp_mut((a2 + 248));
  std::__sp_mut::lock(sp_mut);
  v6 = *(a2 + 248);
  v5 = *(a2 + 256);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::__sp_mut::unlock(sp_mut);
  *this = 0;
  *(this + 1) = 0;
  *(this + 4) = 0;
  if (v6)
  {
    v8 = *v6;
    v7 = v6[1];
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    *this = v8;
    *(this + 1) = v7;
    *(this + 4) = *(v6 + 4);
  }

  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void Phase::Controller::SpatialModelerInstance::StartSustainGraph(Phase::Controller::SpatialModelerInstance *this)
{
  v92 = *MEMORY[0x277D85DE8];
  std::mutex::lock((this + 5648));
  if (*(this + 726))
  {
    v68 = **(Phase::Logger::GetInstance(v2) + 240);
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      Phase::Controller::SpatialModelerInstance::GetDescription(v90, this);
      v69 = v90[23] >= 0 ? v90 : *v90;
      *buf = 136315650;
      *&buf[4] = "CvmSpatialModelerInstance.mm";
      *&buf[12] = 1024;
      *&buf[14] = 3025;
      *&buf[18] = 2080;
      *&buf[20] = v69;
      _os_log_impl(&dword_23A302000, v68, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [false == mSustainJobs.empty() is true]: %s: Attempting to start a running Spatial Modeler!", buf, 0x1Cu);
      if ((v90[23] & 0x80000000) != 0)
      {
        operator delete(*v90);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "%s: Attempting to start a running Spatial Modeler!");
  }

  v3 = *(this + 733);
  v4 = *(v3 + 120);
  if (!v4)
  {
    if (*(this + 1400) == 1)
    {
      v45 = *(this + 688);
      v46 = *(this + 689);
      if (v45 == v46)
      {
        v48 = 0;
        v55 = 0;
      }

      else
      {
        v47 = 0;
        v48 = 0;
        do
        {
          v49 = *(v45 + 168);
          v50 = *(v45 + 176);
          if (v49 != v50)
          {
            v51 = *(v45 + 168);
            v52 = v47;
            do
            {
              (*(**(this + 736) + 16))(buf);
              v53 = *buf;
              if (v48)
              {
                *(*buf + 256) = &unk_284D312F8;
                *(v53 + 264) = v51;
                *(v53 + 383) = 1;
                atomic_store(1u, (v53 + 40));
                v54 = *(this + 736);
                v88.__r_.__value_.__r.__words[0] = v53;
                v88.__r_.__value_.__l.__size_ = *&buf[8];
                if (*&buf[8])
                {
                  atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
                }

                v87.__r_.__value_.__r.__words[0] = v48;
                v87.__r_.__value_.__l.__size_ = v52;
                if (v52)
                {
                  atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                (*(*v54 + 24))(v54, &v88, &v87);
                if (v87.__r_.__value_.__l.__size_)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v87.__r_.__value_.__l.__size_);
                }

                if (v88.__r_.__value_.__l.__size_)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v88.__r_.__value_.__l.__size_);
                }
              }

              else
              {
                *(*buf + 256) = &unk_284D31320;
                *(v53 + 264) = v49;
                *(v53 + 272) = this;
                *(v53 + 383) = 1;
                atomic_store(1u, (v53 + 40));
              }

              v48 = *buf;
              v47 = *&buf[8];
              if (*&buf[8])
              {
                atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
              }

              if (v52)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v52);
              }

              if (*&buf[8])
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
              }

              v51 += 96;
              v49 += 96;
              v52 = v47;
            }

            while (v51 != v50);
          }

          v45 += 192;
        }

        while (v45 != v46);
        v3 = *(this + 733);
        v55 = v47;
      }

      v56 = *(this + 736);
      std::string::basic_string[abi:ne200100]<0>(v90, "-Sustain-Graph-Combined");
      v57 = *(v3 + 23);
      if (v57 >= 0)
      {
        v58 = v3;
      }

      else
      {
        v58 = *v3;
      }

      if (v57 >= 0)
      {
        v59 = *(v3 + 23);
      }

      else
      {
        v59 = *(v3 + 8);
      }

      v60 = std::string::insert(v90, 0, v58, v59);
      v61 = *&v60->__r_.__value_.__l.__data_;
      *&buf[16] = *(&v60->__r_.__value_.__l + 2);
      *buf = v61;
      v60->__r_.__value_.__l.__size_ = 0;
      v60->__r_.__value_.__r.__words[2] = 0;
      v60->__r_.__value_.__r.__words[0] = 0;
      (*(*v56 + 16))(&v84, v56, buf);
      if (buf[23] < 0)
      {
        operator delete(*buf);
      }

      if ((v90[23] & 0x80000000) != 0)
      {
        operator delete(*v90);
      }

      v62 = v84;
      *(v84 + 32) = &unk_284D31348;
      *(v62 + 33) = this;
      *(v62 + 383) = 1;
      atomic_store(1u, v62 + 40);
      v63 = *(this + 736);
      *buf = v62;
      *&buf[8] = v85;
      if (v85)
      {
        atomic_fetch_add_explicit((v85 + 8), 1uLL, memory_order_relaxed);
      }

      *v90 = v48;
      *&v90[8] = v55;
      if (v55)
      {
        atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v63 + 24))(v63, buf, v90);
      if (*&v90[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&v90[8]);
      }

      if (*&buf[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
      }

      operator new();
    }

LABEL_170:
    std::terminate();
  }

  if (v4 != 1 || *(this + 1400) != 3)
  {
    goto LABEL_170;
  }

  v5 = 0;
LABEL_6:
  v6 = *(this + 733);
  std::string::basic_string[abi:ne200100]<0>(&v87, "-Sustain-");
  v7 = *(v6 + 23);
  if (v7 >= 0)
  {
    v8 = v6;
  }

  else
  {
    v8 = *v6;
  }

  if (v7 >= 0)
  {
    v9 = *(v6 + 23);
  }

  else
  {
    v9 = *(v6 + 8);
  }

  v10 = std::string::insert(&v87, 0, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v88.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v88.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v84, off_278B4EFE8[v5]);
  if ((v86 & 0x80u) == 0)
  {
    v12 = &v84;
  }

  else
  {
    v12 = v84;
  }

  if ((v86 & 0x80u) == 0)
  {
    v13 = v86;
  }

  else
  {
    v13 = v85;
  }

  v14 = std::string::append(&v88, v12, v13);
  v15 = *&v14->__r_.__value_.__l.__data_;
  *&v90[16] = *(&v14->__r_.__value_.__l + 2);
  *v90 = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "-");
  if ((v83 & 0x80u) == 0)
  {
    v16 = __p;
  }

  else
  {
    v16 = __p[0];
  }

  if ((v83 & 0x80u) == 0)
  {
    v17 = v83;
  }

  else
  {
    v17 = __p[1];
  }

  v18 = std::string::append(v90, v16, v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  *&buf[16] = *(&v18->__r_.__value_.__l + 2);
  *buf = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (v83 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v90[23] & 0x80000000) != 0)
  {
    operator delete(*v90);
  }

  if (v86 < 0)
  {
    operator delete(v84);
  }

  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v88.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v87.__r_.__value_.__l.__data_);
  }

  v71 = v5;
  v20 = (this + 32 * v5 + 5504);
  v21 = *v20;
  v22 = v20[1];
  if (*v20 == v22)
  {
    v23 = 0;
    v31 = 0;
  }

  else
  {
    v23 = 0;
    v24 = 0;
    do
    {
      v26 = *(v21 + 168);
      v25 = *(v21 + 176);
      if (v26 == v25)
      {
        v31 = v24;
      }

      else
      {
        v27 = *(v21 + 168);
        do
        {
          v28 = *(this + 736);
          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, (v27 + 24), v90);
          (*(*v28 + 16))(&v88, v28, v90);
          if ((v90[23] & 0x80000000) != 0)
          {
            operator delete(*v90);
          }

          v29 = v88.__r_.__value_.__r.__words[0];
          if (v23)
          {
            *(v88.__r_.__value_.__r.__words[0] + 256) = &unk_284D31280;
            *(v29 + 264) = v27;
            *(v29 + 383) = 1;
            atomic_store(1u, (v29 + 40));
            v30 = *(this + 736);
            v80 = v29;
            size = v88.__r_.__value_.__l.__size_;
            if (v88.__r_.__value_.__l.__size_)
            {
              atomic_fetch_add_explicit((v88.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
            }

            v78 = v23;
            v79 = v24;
            if (v24)
            {
              atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            (*(*v30 + 24))(v30, &v80, &v78);
            if (v79)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v79);
            }

            if (size)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](size);
            }
          }

          else
          {
            *(v88.__r_.__value_.__r.__words[0] + 256) = &unk_284D312A8;
            *(v29 + 264) = v26;
            *(v29 + 272) = this;
            *(v29 + 383) = 1;
            atomic_store(1u, (v29 + 40));
          }

          v31 = v88.__r_.__value_.__l.__size_;
          v23 = v88.__r_.__value_.__r.__words[0];
          if (v88.__r_.__value_.__l.__size_)
          {
            atomic_fetch_add_explicit((v88.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
          }

          if (v24)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v24);
          }

          if (v88.__r_.__value_.__l.__size_)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v88.__r_.__value_.__l.__size_);
          }

          v27 += 96;
          v26 += 96;
          v24 = v31;
        }

        while (v27 != v25);
      }

      v21 += 192;
      v24 = v31;
    }

    while (v21 != v22);
  }

  if (v71 == 2)
  {
    v32 = *(this + 736);
    if ((buf[23] & 0x80u) == 0)
    {
      v33 = buf[23];
    }

    else
    {
      v33 = *&buf[8];
    }

    std::string::basic_string[abi:ne200100](v90, v33 + 39);
    if (v90[23] >= 0)
    {
      v34 = v90;
    }

    else
    {
      v34 = *v90;
    }

    if (v33)
    {
      if ((buf[23] & 0x80u) == 0)
      {
        v35 = buf;
      }

      else
      {
        v35 = *buf;
      }

      memmove(v34, v35, v33);
    }

    strcpy(&v34[v33], "spatial+build-IRs+prepare-filter-frames");
    (*(*v32 + 16))(&v88, v32, v90);
    if ((v90[23] & 0x80000000) != 0)
    {
      operator delete(*v90);
    }

    v36 = v88.__r_.__value_.__r.__words[0];
    *(v88.__r_.__value_.__r.__words[0] + 256) = &unk_284D312D0;
    *(v36 + 264) = this;
    *(v36 + 383) = 1;
    atomic_store(1u, (v36 + 40));
    v37 = *(this + 736);
    v77 = __PAIR128__(v88.__r_.__value_.__l.__size_, v36);
    if (v88.__r_.__value_.__l.__size_)
    {
      atomic_fetch_add_explicit((v88.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
    }

    v75 = v23;
    v76 = v31;
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v37 + 24))(v37, &v77, &v75);
    if (v76)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v76);
    }

    if (*(&v77 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v77 + 1));
    }

    v38 = v88.__r_.__value_.__l.__size_;
    if (v88.__r_.__value_.__l.__size_)
    {
      atomic_fetch_add_explicit((v88.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
    }

    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    }

    if (v88.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v88.__r_.__value_.__l.__size_);
    }

    v31 = v38;
  }

  v39 = *(this + 5792);
  if (!*&v39)
  {
    goto LABEL_107;
  }

  v40 = vcnt_s8(v39);
  v40.i16[0] = vaddlv_u8(v40);
  if (v40.u32[0] > 1uLL)
  {
    v41 = v71;
    if (*&v39 <= v71)
    {
      v41 = v71 % *&v39;
    }
  }

  else
  {
    v41 = (*&v39 + 0x7FFFFFFFFFFFFFFFLL) & v71;
  }

  v42 = *(*(this + 723) + 8 * v41);
  if (!v42 || (v43 = *v42) == 0)
  {
LABEL_107:
    operator new();
  }

  while (1)
  {
    v44 = v43[1];
    if (v44 == v71)
    {
      if (v43[2] == v71)
      {
        if (buf[23] < 0)
        {
          operator delete(*buf);
          if (v31)
          {
LABEL_110:
            std::__shared_weak_count::__release_shared[abi:ne200100](v31);
          }
        }

        else if (v31)
        {
          goto LABEL_110;
        }

        v5 = v71 + 1;
        if (v71 == 2)
        {
          if (*(this + 726))
          {
            v88.__r_.__value_.__r.__words[0] = &v88;
            *&v88.__r_.__value_.__r.__words[1] = &v88;
            v87.__r_.__value_.__r.__words[0] = &v87;
            *&v87.__r_.__value_.__r.__words[1] = &v87;
            std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](buf);
            v64 = *(this + 725);
            if (v64)
            {
              Params = Phase::Controller::SpatialModelerInstance::GetParams(this, 2, *(v64 + 16));
              if (Params[2] == 0.0)
              {
                v66 = **(Phase::Logger::GetInstance(Params) + 240);
                if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
                {
                  Phase::Controller::SpatialModelerInstance::GetDescription(&v84, this);
                  v67 = &v84;
                  if ((v86 & 0x80u) != 0)
                  {
                    v67 = v84;
                  }

                  *v90 = 136315650;
                  *&v90[4] = "CvmSpatialModelerInstance.mm";
                  *&v90[12] = 1024;
                  *&v90[14] = 3047;
                  *&v90[18] = 2080;
                  *&v90[20] = v67;
                  _os_log_impl(&dword_23A302000, v66, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Load Balancer parameters were not set.  Using default update rate 25Hz", v90, 0x1Cu);
                  if (v86 < 0)
                  {
                    operator delete(v84);
                  }
                }
              }

              std::list<std::shared_ptr<Phase::Job>>::push_back();
            }

            std::list<std::shared_ptr<Phase::Job>>::list(v74, &v88);
            std::list<double>::list(v73, &v87);
            std::stringbuf::str[abi:ne200100](&buf[24], &v72);
            v89 = 0;
            operator new();
          }

          goto LABEL_170;
        }

        goto LABEL_6;
      }
    }

    else
    {
      if (v40.u32[0] > 1uLL)
      {
        if (v44 >= *&v39)
        {
          v44 %= *&v39;
        }
      }

      else
      {
        v44 &= *&v39 - 1;
      }

      if (v44 != v41)
      {
        goto LABEL_107;
      }
    }

    v43 = *v43;
    if (!v43)
    {
      goto LABEL_107;
    }
  }
}

void Phase::Controller::SpatialModelerInstance::RegisterSubmix(uint64_t a1, std::__shared_mutex_base *a2, std::__shared_mutex_base *a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  buf[9] = *MEMORY[0x277D85DE8];
  if (!(a2 | a3))
  {
    v44 = **(Phase::Logger::GetInstance(a1) + 240);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      Phase::Controller::SpatialModelerInstance::GetDescription(__p, a1);
      v45 = v72 >= 0 ? __p : __p[0];
      LODWORD(buf[0]) = 136315650;
      *(buf + 4) = "CvmSpatialModelerInstance.mm";
      WORD2(buf[1]) = 1024;
      *(&buf[1] + 6) = 905;
      WORD1(buf[2]) = 2080;
      *(&buf[2] + 4) = v45;
      _os_log_impl(&dword_23A302000, v44, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (InvalidId) [inSubmixId == kInvalidSubmixId is true]: %s: Invalid SubmixId!", buf, 0x1Cu);
      if (v72 < 0)
      {
        operator delete(__p[0]);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    _ZN5Phase10Controller9InvalidIdCI1St11logic_errorEPKc(exception, "%s: Invalid SubmixId!");
  }

  buf[0] = a2;
  buf[1] = a3;
  v9 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>>>::find<Phase::UniqueObjectId>((a1 + 8), buf);
  if (v9)
  {
    v47 = **(Phase::Logger::GetInstance(v9) + 240);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      Phase::Controller::SpatialModelerInstance::GetDescription(__p, a1);
      v48 = v72 >= 0 ? __p : __p[0];
      v49 = *(*(a1 + 5864) + 24);
      LODWORD(buf[0]) = 136316162;
      *(buf + 4) = "CvmSpatialModelerInstance.mm";
      WORD2(buf[1]) = 1024;
      *(&buf[1] + 6) = 912;
      WORD1(buf[2]) = 2080;
      *(&buf[2] + 4) = v48;
      WORD2(buf[3]) = 2048;
      *(&buf[3] + 6) = a2;
      HIWORD(buf[4]) = 2048;
      buf[5] = v49;
      _os_log_impl(&dword_23A302000, v47, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (IdAlreadyExists) [IsRegistered(inSubmixId) is true]: %s: SubmixId %llu is already registered for spatial modeler %llu !", buf, 0x30u);
      if (v72 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v50 = __cxa_allocate_exception(0x10uLL);
    _ZN5Phase10Controller15IdAlreadyExistsCI1St11logic_errorEPKc(v50, "%s: SubmixId %llu is already registered for spatial modeler %llu !");
  }

  v10 = *(a1 + 6472);
  buf[0] = a2;
  buf[1] = a3;
  v11 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>>>::find<Phase::UniqueObjectId>((v10 + 160), buf);
  if (v11)
  {
    v12 = v11[4];
  }

  else
  {
    v12 = 0;
  }

  *&v64 = a2;
  *(&v64 + 1) = a3;
  *&v65 = 0;
  BYTE8(v65) = 0;
  *&v66 = v12;
  *(&v66 + 1) = a4;
  *v67 = a5;
  __p[0] = a2;
  *&v67[8] = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 1065353216;
  __p[1] = a3;
  buf[0] = a2;
  buf[1] = a3;
  v13 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::unique_ptr<Phase::ActionTreeIOManager::BufferInfo>>>>::find<Phase::UniqueObjectId>((a1 + 8), buf);
  if (v13)
  {
    v51 = **(Phase::Logger::GetInstance(v13) + 240);
    v52 = v51;
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf[0]) = 136315650;
      *(buf + 4) = "CvmSubmixSlotMapImpl.hpp";
      WORD2(buf[1]) = 1024;
      *(&buf[1] + 6) = 63;
      WORD1(buf[2]) = 2048;
      *(&buf[2] + 4) = a2;
      _os_log_impl(&dword_23A302000, v51, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [true == Contains(inSubmixId) is true]: SubmixId %llu already exists in SubmixSlotMap::Insert", buf, 0x1Cu);
    }

    v53 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v53, "SubmixId %llu already exists in SubmixSlotMap::Insert");
    v54 = MEMORY[0x277D82610];
    v56 = (MEMORY[0x277D828F8] + 16);
  }

  else
  {
    v14 = atomic_load((a1 + 68));
    if (v14 == -1)
    {
      goto LABEL_13;
    }

    buf[0] = (a1 + 80);
    LOBYTE(buf[1]) = 1;
    std::__shared_mutex_base::lock_shared((a1 + 80));
    v15 = v14;
    while (1)
    {
      v16 = *(a1 + 48) + 24 * v14;
      atomic_compare_exchange_strong((a1 + 68), &v15, *(v16 + 16));
      if (v15 == v14)
      {
        break;
      }

      v14 = v15;
      if (v15 == -1)
      {
        if (LOBYTE(buf[1]) == 1)
        {
          std::__shared_mutex_base::unlock_shared(buf[0]);
        }

LABEL_13:
        v73 = atomic_fetch_add((a1 + 72), 1u) | 0x100000000;
LABEL_17:
        v18 = atomic_load((a1 + 72));
        if (*(a1 + 64) < v18)
        {
          if (v18 >= 0x40)
          {
            v19 = v18 + (v18 >> 1);
          }

          else
          {
            v19 = 64;
          }

          Phase::details::SharedSlotMap<Phase::Controller::SpatialModelerInstance::SubmixInfo,Phase::Handle64>::Resize((a1 + 48), v19);
        }

        if (Phase::details::SharedSlotMap<Phase::Controller::SpatialModelerInstance::SubmixInfo,Phase::Handle64>::GetUniqueSlot(a1 + 48, v73))
        {
          operator new();
        }

        if (v73)
        {
          MEMORY[0] = v64;
          MEMORY[0x40] = *&v67[16];
          MEMORY[0x20] = v66;
          MEMORY[0x30] = *v67;
          MEMORY[0x10] = v65;
          if (&v64)
          {
            MEMORY[0x68] = v70;
            v20 = v69;
            v21 = MEMORY[0x50];
            if (!MEMORY[0x50])
            {
              goto LABEL_32;
            }

            v22 = 0;
            do
            {
              *(MEMORY[0x48] + 8 * v22++) = 0;
            }

            while (v21 != v22);
            v23 = MEMORY[0x58];
            MEMORY[0x58] = 0;
            MEMORY[0x60] = 0;
            if (v23)
            {
              while (v20)
              {
                v24 = *(v20 + 4);
                *(v23 + 4) = v24;
                v25 = *(v20 + 3);
                v26 = *(v20 + 5);
                v27 = *(v20 + 7);
                v23[9] = v20[9];
                *(v23 + 7) = v27;
                *(v23 + 5) = v26;
                *(v23 + 3) = v25;
                v28 = *v23;
                v23[1] = v24;
                inserted = std::__hash_table<std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,Phase::Controller::OptionalProperties::Property>>>::__node_insert_multi_prepare(72, v24, v23 + 4);
                std::__hash_table<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,std::__unordered_map_hasher<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,true>,std::__unordered_map_equal<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,true>,std::allocator<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>>>::__node_insert_multi_perform(0x48, v23, inserted);
                v20 = *v20;
                v23 = v28;
                if (!v28)
                {
                  goto LABEL_32;
                }
              }

              do
              {
                v30 = *v23;
                operator delete(v23);
                v23 = v30;
              }

              while (v30);
            }

            else
            {
LABEL_32:
              if (v20)
              {
                operator new();
              }
            }
          }

          std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,Phase::Handle64>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,Phase::Handle64>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,Phase::Handle64>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,Phase::Handle64>>>::__emplace_unique_key_args<Phase::UniqueObjectId,Phase::UniqueObjectId&,Phase::Handle64&>((a1 + 8), __p);
          v31 = v73;
          v32 = std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(&v68);
          MEMORY[0x10] = v31;
          v33 = *a6;
          v34 = a6[1];
          if (*a6 == v34)
          {
            goto LABEL_57;
          }

LABEL_36:
          v35 = *(v33 + 24);
          memset(buf + 4, 0, 48);
          *(&buf[6] + 4) = 0;
          if (!MEMORY[0x50])
          {
            goto LABEL_52;
          }

          v36 = vcnt_s8(MEMORY[0x50]);
          v36.i16[0] = vaddlv_u8(v36);
          if (v36.u32[0] > 1uLL)
          {
            v37 = v35;
            if (MEMORY[0x50] <= v35)
            {
              v37 = v35 % MEMORY[0x50];
            }
          }

          else
          {
            v37 = (MEMORY[0x50] - 1) & v35;
          }

          v38 = *(MEMORY[0x48] + 8 * v37);
          if (!v38 || (v39 = *v38) == 0)
          {
LABEL_52:
            operator new();
          }

          while (1)
          {
            v40 = v39[1];
            if (v40 == v35)
            {
              if (*(v39 + 4) == v35)
              {
                v41 = **(Phase::Logger::GetInstance(v32) + 240);
                v42 = v41;
                v32 = os_log_type_enabled(v41, OS_LOG_TYPE_ERROR);
                if (v32)
                {
                  v43 = *(v33 + 24);
                  LODWORD(buf[0]) = 136315650;
                  *(buf + 4) = "CvmSpatialModelerOptionalProperties.hpp";
                  WORD2(buf[1]) = 1024;
                  *(&buf[1] + 6) = 65;
                  WORD1(buf[2]) = 1024;
                  HIDWORD(buf[2]) = v43;
                  _os_log_impl(&dword_23A302000, v41, OS_LOG_TYPE_ERROR, "%25s:%-5d Unexpected duplicate OptionalPropertyDescription entry for UID %d", buf, 0x18u);
                }

                v33 += 56;
                if (v33 == v34)
                {
LABEL_57:
                  operator new();
                }

                goto LABEL_36;
              }
            }

            else
            {
              if (v36.u32[0] > 1uLL)
              {
                if (v40 >= MEMORY[0x50])
                {
                  v40 %= MEMORY[0x50];
                }
              }

              else
              {
                v40 &= MEMORY[0x50] - 1;
              }

              if (v40 != v37)
              {
                goto LABEL_52;
              }
            }

            v39 = *v39;
            if (!v39)
            {
              goto LABEL_52;
            }
          }
        }

        v57 = **(Phase::Logger::GetInstance(0) + 240);
        v58 = v57;
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf[0]) = 136315906;
          *(buf + 4) = "CvmSubmixSlotMapImpl.hpp";
          WORD2(buf[1]) = 1024;
          *(&buf[1] + 6) = 76;
          WORD1(buf[2]) = 2048;
          *(&buf[2] + 4) = 0;
          WORD2(buf[3]) = 2048;
          *(&buf[3] + 6) = __p[0];
          _os_log_impl(&dword_23A302000, v57, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (InvalidId) [SubmixHandle::kInvalidHandle == submixHandle is true]: SubmixSlotMap::Insert couldn't find SubmixHandle %llu for SubmixId %llu", buf, 0x26u);
        }

        v53 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v53, "SubmixSlotMap::Insert couldn't find SubmixHandle %llu for SubmixId %llu");
        goto LABEL_81;
      }
    }

    v17 = Phase::Handle64::Set(&v74, v14, *(v16 + 20));
    if (LOBYTE(buf[1]) == 1)
    {
      std::__shared_mutex_base::unlock_shared(buf[0]);
    }

    v73 = v74;
    if (v74)
    {
      goto LABEL_17;
    }

    v59 = **(Phase::Logger::GetInstance(v17) + 240);
    v60 = v59;
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf[0]) = 136315650;
      *(buf + 4) = "CvmSubmixSlotMapImpl.hpp";
      WORD2(buf[1]) = 1024;
      *(&buf[1] + 6) = 68;
      WORD1(buf[2]) = 2048;
      *(&buf[2] + 4) = a2;
      _os_log_impl(&dword_23A302000, v59, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (InvalidId) [SubmixHandle::kInvalidHandle == submixHandle is true]: SubmixSlotMap::Insert unable to allocate new handle SubmixId %llu", buf, 0x1Cu);
    }

    v53 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v53, "SubmixSlotMap::Insert unable to allocate new handle SubmixId %llu");
LABEL_81:
    v54 = Phase::Controller::InvalidId::~InvalidId;
    v56 = &unk_284D30220;
  }

  v53->__vftable = v56;
  __cxa_throw(v53, v55, v54);
}